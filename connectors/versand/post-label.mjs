#!/usr/bin/env node
// post-label.mjs — Versandetiketten über die Post CH Digital Commerce API «Barcode»
// Teil des Skills `versandplanung`. KOSTENRELEVANT (Frankierlizenz) → produktiv nur mit --ja.
//
// Voraussetzung: Rechnungsbeziehung + Frankierlizenz bei der Post; Client-Credentials
// vom Entwicklerportal developer.post.ch (API «Digital Commerce API», Service Barcode).
// Endpunkt (validiert 2026-07-04): https://dcapi.apis.post.ch/barcode/v1/generateAddressLabel
// Hinweis: exakte Feldnamen des Request-Bodys beim ersten Lauf gegen die aktuelle
// OpenAPI-Spec im Portal validieren (Spec-Scope S4) — Struktur unten entspricht der DCAPI-Doku.
//
//   node post-label.mjs --test
//   node post-label.mjs --aus bestellungen.json           # Trockenlauf
//   node post-label.mjs --aus bestellungen.json --ja      # Etiketten erzeugen (PDF je Sendung)

import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { homedir } from 'node:os';
import { join, dirname } from 'node:path';

function ladeEnv() {
  const env = {};
  try {
    for (const zeile of readFileSync(join(homedir(), '.versand.env'), 'utf8').split('\n')) {
      const m = zeile.match(/^\s*([A-Z_]+)\s*=\s*(.*?)\s*$/);
      if (m && !zeile.trim().startsWith('#')) env[m[1]] = m[2];
    }
  } catch { fehler('~/.versand.env fehlt — Vorlage siehe connectors/versand/README.md'); }
  return env;
}
function fehler(msg) { console.error(`FEHLER: ${msg}`); process.exit(1); }

const ENV = ladeEnv();
for (const k of ['POST_CLIENT_ID', 'POST_CLIENT_SECRET', 'POST_FRANKING_LICENSE']) {
  if (!ENV[k]) fehler(`${k} fehlt in ~/.versand.env (Post-Zugangsdaten, Spec E2)`);
}

const TOKEN_URL = 'https://api.post.ch/OAuth/token';
const LABEL_URL = 'https://dcapi.apis.post.ch/barcode/v1/generateAddressLabel';

async function token() {
  const res = await fetch(TOKEN_URL, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: new URLSearchParams({
      grant_type: 'client_credentials',
      client_id: ENV.POST_CLIENT_ID,
      client_secret: ENV.POST_CLIENT_SECRET,
      scope: 'DCAPI_BARCODE_READ',
    }),
  });
  if (!res.ok) fehler(`OAuth-Token: HTTP ${res.status} ${await res.text()}`);
  return (await res.json()).access_token;
}

function labelRequest(b) {
  // Eine Sendung je Bestellung; Produkt Default PostPac Economy («ECO»)
  return {
    language: 'DE',
    frankingLicense: ENV.POST_FRANKING_LICENSE,
    ppFranking: false,
    customer: {
      name1: ENV.POST_ABSENDER_NAME,
      street: ENV.POST_ABSENDER_STRASSE,
      zip: ENV.POST_ABSENDER_PLZ,
      city: ENV.POST_ABSENDER_ORT,
      country: 'CH',
    },
    labelDefinition: {
      labelLayout: 'A6',
      printAddresses: 'RECIPIENT_AND_CUSTOMER',
      imageFileType: 'PDF',
      imageResolution: 300,
      printPreview: false,
    },
    item: {
      itemID: b.nr,
      recipient: {
        name1: b.name,
        street: b.adresse.strasse,
        zip: b.adresse.plz,
        city: b.adresse.ort,
        country: 'CH',
      },
      attributes: { przl: [ENV.POST_PRODUKT || 'ECO'] },
    },
  };
}

const args = process.argv.slice(2);

if (args.includes('--test')) {
  await token();
  console.log('OK — OAuth-Token für DCAPI Barcode erhalten');
  process.exit(0);
}

const ausIdx = args.indexOf('--aus');
if (ausIdx === -1) {
  console.log('Verwendung: post-label.mjs --test | --aus <bestellungen.json> [--ja]');
  process.exit(0);
}

const datei = args[ausIdx + 1];
const { datum, bestellungen } = JSON.parse(readFileSync(datei, 'utf8'));
const postBestellungen = bestellungen.filter(b => b.versandart === 'post');
const outDir = join(dirname(datei), 'etiketten');

if (!args.includes('--ja')) {
  console.log(`TROCKENLAUF — ${postBestellungen.length} Etikette(n) würden erzeugt (${datum}):`);
  for (const b of postBestellungen) console.log(`  ${b.nr}  ${b.name}, ${b.adresse.plz} ${b.adresse.ort}`);
  console.log('Erzeugen mit: --ja  (kostenrelevant, Frankierlizenz)');
  process.exit(0);
}

mkdirSync(outDir, { recursive: true });
const tok = await token();
const sendungen = [];
for (const b of postBestellungen) {
  const res = await fetch(LABEL_URL, {
    method: 'POST',
    headers: { Authorization: `Bearer ${tok}`, 'Content-Type': 'application/json' },
    body: JSON.stringify(labelRequest(b)),
  });
  if (!res.ok) fehler(`Etikett Bestellung ${b.nr}: HTTP ${res.status} ${await res.text()}`);
  const antwort = await res.json();
  // Antwort enthält Sendungsnummer (identCode) + Label als Base64 (Pfad je nach Spec-Version)
  const labelB64 = antwort?.item?.label?.[0] ?? antwort?.label;
  const identCode = antwort?.item?.identCode ?? antwort?.identCode ?? '';
  if (!labelB64) fehler(`Bestellung ${b.nr}: kein Label in der Antwort — Response-Struktur gegen OpenAPI-Spec prüfen:\n${JSON.stringify(antwort).slice(0, 500)}`);
  const pdf = join(outDir, `etikett-${b.nr}.pdf`);
  writeFileSync(pdf, Buffer.from(labelB64, 'base64'));
  sendungen.push({ nr: b.nr, name: b.name, sendungsnummer: identCode, pdf });
  console.error(`Etikett erzeugt: Bestellung ${b.nr} → ${identCode} → ${pdf}`);
}
writeFileSync(join(outDir, 'sendungen.json'), JSON.stringify({ datum, sendungen }, null, 2));
console.log(`${sendungen.length} Etikette(n) erzeugt → ${outDir}`);
