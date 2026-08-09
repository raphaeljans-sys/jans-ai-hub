#!/usr/bin/env node
/**
 * ============================================================================
 * JANS AI Hub — M365-Graph-Connector (zweiter Weg, unabhaengig von der CLI)
 * ============================================================================
 * Angelegt 09.08.2026 nach dem KISPI-Vorfall.
 *
 * WARUM ES DIESEN CONNECTOR GIBT:
 * Bis heute fuehrte JEDER programmatische Zugriff auf Microsoft 365 ueber die
 * CLI for Microsoft 365, und die haengt an `node_modules` im SSD-Klon. Faellt
 * eines von beidem aus, ist der Hub blind gegenueber SharePoint, Entra und
 * Outlook. Dieser Connector holt sich den Token selbst aus dem vorhandenen
 * Zertifikat und braucht dafuer nichts ausser Node.
 *
 * AUTHENTIFIZIERUNG:
 * App-only (client_credentials) mit Zertifikats-Assertion. Zertifikat:
 * ~/.cli-m365-cert-combined.pem (enthaelt Zertifikat und privaten Schluessel),
 * dieselbe App-Registrierung wie die CLI. Der private Schluessel verlaesst den
 * Prozess nie und wird nie ausgegeben.
 *
 * VERWENDUNG:
 *   node connectors/m365-graph.mjs --hilfe
 *   node connectors/m365-graph.mjs --selbsttest
 *   node connectors/m365-graph.mjs --get "/sites/root"
 *   node connectors/m365-graph.mjs --site kispi
 *   node connectors/m365-graph.mjs --gaeste kispi
 *   node connectors/m365-graph.mjs --gruppe-mitglieder <gruppen-id>
 *   node connectors/m365-graph.mjs --spo "/sites/kispi/_api/web/siteusers"
 * ============================================================================
 */

import crypto from "node:crypto";
import fs from "node:fs";
import os from "node:os";
import path from "node:path";

const APP_ID = "80c24101-4597-48db-8388-c6e8bdc75f5f";
const TENANT_ID = "d3ea8e1a-8ecc-479d-b831-6c0784ee0b51";
const TENANT_HOST = "raphaeljans.sharepoint.com";
const CERT_PFAD = path.join(os.homedir(), ".cli-m365-cert-combined.pem");

const GRAPH = "https://graph.microsoft.com";

// --- Zertifikat und Schluessel lesen ----------------------------------------

function zertifikatLesen() {
  if (!fs.existsSync(CERT_PFAD)) {
    throw new Error(
      `Zertifikat fehlt: ${CERT_PFAD}\n` +
        `Anleitung: docs/referenz/m365-zertifikat-erneuern.md`
    );
  }
  const roh = fs.readFileSync(CERT_PFAD, "utf8");
  const cert = roh.match(
    /-----BEGIN CERTIFICATE-----[\s\S]*?-----END CERTIFICATE-----/
  );
  const key = roh.match(
    /-----BEGIN (?:RSA )?PRIVATE KEY-----[\s\S]*?-----END (?:RSA )?PRIVATE KEY-----/
  );
  if (!cert) throw new Error("Kein CERTIFICATE-Block in der PEM gefunden.");
  if (!key) throw new Error("Kein PRIVATE-KEY-Block in der PEM gefunden.");
  return { cert: cert[0], key: key[0] };
}

function base64url(buf) {
  return Buffer.from(buf)
    .toString("base64")
    .replace(/\+/g, "-")
    .replace(/\//g, "_")
    .replace(/=+$/, "");
}

/** SHA-1-Fingerabdruck des Zertifikats, base64url — von Entra als `x5t` erwartet. */
function fingerabdruck(certPem) {
  const der = Buffer.from(
    certPem
      .replace(/-----(BEGIN|END) CERTIFICATE-----/g, "")
      .replace(/\s+/g, ""),
    "base64"
  );
  return base64url(crypto.createHash("sha1").update(der).digest());
}

// --- Token holen -------------------------------------------------------------

const tokenCache = new Map();

async function tokenHolen(scope = `${GRAPH}/.default`) {
  const cached = tokenCache.get(scope);
  if (cached && cached.gueltigBis > Date.now() + 60_000) return cached.token;

  const { cert, key } = zertifikatLesen();
  const jetzt = Math.floor(Date.now() / 1000);
  const aud = `https://login.microsoftonline.com/${TENANT_ID}/oauth2/v2.0/token`;

  const header = { alg: "RS256", typ: "JWT", x5t: fingerabdruck(cert) };
  const payload = {
    aud,
    iss: APP_ID,
    sub: APP_ID,
    jti: crypto.randomUUID(),
    nbf: jetzt - 60,
    exp: jetzt + 600,
  };

  const zuSignieren =
    `${base64url(JSON.stringify(header))}.${base64url(JSON.stringify(payload))}`;
  const signatur = crypto.createSign("RSA-SHA256").update(zuSignieren).sign(key);
  const assertion = `${zuSignieren}.${base64url(signatur)}`;

  const body = new URLSearchParams({
    client_id: APP_ID,
    scope,
    grant_type: "client_credentials",
    client_assertion_type:
      "urn:ietf:params:oauth:client-assertion-type:jwt-bearer",
    client_assertion: assertion,
  });

  const antwort = await fetch(aud, {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body,
  });
  const daten = await antwort.json();

  if (!antwort.ok) {
    throw new Error(
      `Token-Anforderung fehlgeschlagen (${antwort.status}): ` +
        `${daten.error ?? "?"} — ${daten.error_description ?? ""}`
    );
  }

  tokenCache.set(scope, {
    token: daten.access_token,
    gueltigBis: Date.now() + (daten.expires_in ?? 3600) * 1000,
  });
  return daten.access_token;
}

// --- Anfragen ----------------------------------------------------------------

async function graphAnfrage(pfad, optionen = {}) {
  const token = await tokenHolen();
  const url = pfad.startsWith("http") ? pfad : `${GRAPH}/v1.0${pfad}`;
  const antwort = await fetch(url, {
    ...optionen,
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
      ...(optionen.headers ?? {}),
    },
  });
  const text = await antwort.text();
  const daten = text ? JSON.parse(text) : null;
  if (!antwort.ok) {
    throw new Error(
      `Graph ${antwort.status}: ${daten?.error?.message ?? text.slice(0, 300)}`
    );
  }
  return daten;
}

/** SharePoint-REST braucht einen eigenen Scope, Graph deckt nicht alles ab. */
async function spoAnfrage(pfad, optionen = {}) {
  const token = await tokenHolen(`https://${TENANT_HOST}/.default`);
  const url = pfad.startsWith("http") ? pfad : `https://${TENANT_HOST}${pfad}`;
  const antwort = await fetch(url, {
    ...optionen,
    headers: {
      Authorization: `Bearer ${token}`,
      Accept: "application/json;odata=nometadata",
      ...(optionen.headers ?? {}),
    },
  });
  const text = await antwort.text();
  const daten = text ? JSON.parse(text) : null;
  if (!antwort.ok) {
    throw new Error(
      `SPO ${antwort.status}: ${daten?.error?.message?.value ?? text.slice(0, 300)}`
    );
  }
  return daten;
}

// --- Fachfunktionen ----------------------------------------------------------

async function siteAufloesen(name) {
  const kurz = name.replace(/^\/+|\/+$/g, "").replace(/^sites\//, "");
  return graphAnfrage(`/sites/${TENANT_HOST}:/sites/${kurz}`);
}

/**
 * Gaeste einer Site samt Ablaufdatum.
 * Das belastbare Feld heisst `Expiration` und steht nur in der SPO-REST-API,
 * nicht in Graph — belegt am 09.08.2026 beim KISPI-Vorfall.
 */
async function gaesteMitAblauf(siteName) {
  const kurz = siteName.replace(/^\/+|\/+$/g, "").replace(/^sites\//, "");
  const pfad =
    `/sites/${kurz}/_api/web/siteusers` +
    `?$filter=IsShareByEmailGuestUser%20eq%20true` +
    `&$select=Title,Email,Expiration&$top=200`;
  const daten = await spoAnfrage(pfad);
  return (daten.value ?? []).map((u) => ({
    name: u.Title,
    mail: u.Email,
    ablauf: u.Expiration || null,
  }));
}

// --- Kommandozeile -----------------------------------------------------------

const HILFE = `
M365-Graph-Connector — zweiter Weg zu Microsoft 365 (App-only, Zertifikat)

  --hilfe                      Diese Hilfe
  --selbsttest                 Token holen und eine Leseanfrage fahren (Exit 0 = Weg traegt)
  --get <graph-pfad>           Beliebige Graph-Anfrage, z.B. --get "/sites/root"
  --spo <spo-pfad>             Beliebige SharePoint-REST-Anfrage
  --site <name>                Site aufloesen, z.B. --site kispi
  --gaeste <name>              Gaeste einer Site mit Ablaufdatum
  --gruppe-mitglieder <id>     Mitglieder einer M365-Gruppe

Beispiele:
  node connectors/m365-graph.mjs --selbsttest
  node connectors/m365-graph.mjs --gaeste kispi
  node connectors/m365-graph.mjs --get "/users?\\$filter=userType eq 'Guest'"
`;

async function main() {
  const [befehl, ...rest] = process.argv.slice(2);
  const wert = rest.join(" ");

  switch (befehl) {
    case undefined:
    case "--hilfe":
    case "-h":
      console.log(HILFE.trim());
      return 0;

    case "--selbsttest": {
      await tokenHolen();
      const ich = await graphAnfrage("/sites/root");
      console.log(`ok — Token gueltig, erreichbar: ${ich.webUrl ?? ich.id}`);
      return 0;
    }

    case "--get":
      console.log(JSON.stringify(await graphAnfrage(wert), null, 2));
      return 0;

    case "--spo":
      console.log(JSON.stringify(await spoAnfrage(wert), null, 2));
      return 0;

    case "--site":
      console.log(JSON.stringify(await siteAufloesen(wert), null, 2));
      return 0;

    case "--gaeste": {
      const gaeste = await gaesteMitAblauf(wert);
      for (const g of gaeste.sort((a, b) => a.name.localeCompare(b.name))) {
        const a = g.ablauf ? g.ablauf.slice(0, 10) : "(kein Ablauf)";
        console.log(`${a.padEnd(16)} ${(g.name ?? "").padEnd(30)} ${g.mail ?? ""}`);
      }
      console.log(`\n${gaeste.length} Gaeste`);
      return 0;
    }

    case "--gruppe-mitglieder": {
      const daten = await graphAnfrage(
        `/groups/${wert}/members?$select=displayName,mail,userType`
      );
      for (const m of daten.value ?? []) {
        console.log(
          `${(m.userType ?? "-").padEnd(7)} ${(m.displayName ?? "").padEnd(30)} ${m.mail ?? ""}`
        );
      }
      return 0;
    }

    default:
      console.error(`Unbekannter Befehl: ${befehl}\n`);
      console.log(HILFE.trim());
      return 2;
  }
}

main()
  .then((code) => process.exit(code ?? 0))
  .catch((fehler) => {
    console.error(`FEHLER: ${fehler.message}`);
    process.exit(1);
  });
