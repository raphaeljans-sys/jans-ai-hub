#!/usr/bin/env node
/**
 * JANS Behoerden-Dokumenten-Connector — Planungsgrundlagen (v1)
 * =============================================================
 * Spiegelt die amtlichen Bau-Formulare/Merkblaetter der Stadt + des Kantons Zuerich
 * lokal, damit JANS jederzeit Zugriff auf den aktuellen Bestand hat und Aenderungen/
 * tote Links proaktiv erkennt.
 *
 * KERNIDEE (validiert 2026-06-13):
 *   Die Such-/Uebersichtsseiten der Behoerden (.../formulare-merkblaetter.html) haben
 *   eine Consent/JS-Wall und lassen sich NICHT zuverlaessig automatisch ernten. Die
 *   Dokumente SELBST liegen aber als statische Assets im AEM-DAM und kommen ohne Login,
 *   ohne Consent direkt per HTTP:
 *     Kanton ZH : https://www.zh.ch/content/dam/zhweb/...           (.pdf/.xlsx/.docx)
 *     Stadt  ZH : https://www.stadt-zuerich.ch/content/dam/web/...  (.pdf/...)
 *   Darum kein Scraper, sondern eine KURATIERTE Registry der Direkt-URLs
 *   (behoerden-zh.registry.json) + dieser Downloader/Pruefer.
 *
 * AUFRUF:
 *   node behoerden-zh.mjs --list                              # Registry anzeigen
 *   node behoerden-zh.mjs --list --ebene stadt-zh             # nur Stadt ZH
 *   node behoerden-zh.mjs --check                             # Verfuegbarkeit/Aenderung pruefen (read-only)
 *   node behoerden-zh.mjs --sync                              # alle Dokumente herunterladen/aktualisieren
 *   node behoerden-zh.mjs --sync --ebene kanton-zh --out /pfad
 *   node behoerden-zh.mjs --sync --id kt-baugesuch-ordentlich # nur ein Dokument
 *
 * FLAGS:
 *   --list              Registry-Eintraege auflisten (mit Filtern)
 *   --check             jeden Eintrag live pruefen, NICHTS schreiben (Frueh-Warnung,
 *                       ideal als Scheduled Task) — meldet: aktuell / geaendert / neu / TOT
 *   --sync              Dokumente herunterladen, ablegen, Manifest fortschreiben
 *   --ebene <e>         Filter: stadt-zh | kanton-zh
 *   --amt <text>        Filter: Teilstring im Amt (z.B. "AWEL", "AfB")
 *   --kategorie <text>  Filter: baugesuch | boden | wasser | energie | laerm | ...
 *   --id <id>           nur dieser eine Registry-Eintrag
 *   --out <dir>         Ablage-Wurzel (default: ../behoerden-dokumente neben dem Skript);
 *                       Struktur darunter: <ebene>/<amt-slug>/<dateiname>
 *   --registry <pfad>   alternative Registry-Datei
 *   --json              Ergebnis als JSON ausgeben
 *   --quiet             nur Resultat, kein Log
 *
 * Rules: identifikatoren-verifizieren (URLs werden nie erfunden — die Registry enthaelt
 *        nur verifizierte Direkt-URLs; --check belegt den Live-Stand), dateinamen-konvention,
 *        umlaute-konvention.
 */

import { writeFileSync, readFileSync, mkdirSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { createHash } from "node:crypto";

const HERE = dirname(fileURLToPath(import.meta.url));
const UA = "jans-ai-hub-behoerdenzh/1.0 (rj@raphaeljans.ch)";
const DEFAULT_REGISTRY = join(HERE, "behoerden-zh.registry.json");
const DEFAULT_OUT = join(HERE, "..", "behoerden-dokumente");

// --- Util ----------------------------------------------------------------------
function parseArgs(argv) {
  const a = {};
  for (let i = 2; i < argv.length; i++) {
    const k = argv[i];
    if (!k.startsWith("--")) continue;
    const key = k.slice(2), next = argv[i + 1];
    if (next === undefined || next.startsWith("--")) a[key] = true;
    else { a[key] = next; i++; }
  }
  return a;
}
const log = (q) => (msg) => { if (!q) process.stderr.write(msg + "\n"); };
const slug = (s) => (s || "")
  .toLowerCase()
  .replace(/[äàâ]/g, "a").replace(/[öô]/g, "o").replace(/[üû]/g, "u").replace(/ß/g, "ss")
  .replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, "");

function isoDate() { return new Date().toISOString().slice(0, 10); }

function loadRegistry(pfad) {
  if (!existsSync(pfad)) throw new Error(`Registry nicht gefunden: ${pfad}`);
  const j = JSON.parse(readFileSync(pfad, "utf8"));
  if (!Array.isArray(j.dokumente)) throw new Error("Registry hat kein 'dokumente'-Array.");
  return j;
}

function filterDocs(docs, a) {
  return docs.filter((d) => {
    if (a.ebene && d.ebene !== String(a.ebene)) return false;
    if (a.id && d.id !== String(a.id)) return false;
    if (a.amt && !(d.amt || "").toLowerCase().includes(String(a.amt).toLowerCase())) return false;
    if (a.kategorie && (d.kategorie || "") !== String(a.kategorie)) return false;
    return true;
  });
}

function manifestPath(outRoot) { return join(outRoot, "_manifest.json"); }
function loadManifest(outRoot) {
  const p = manifestPath(outRoot);
  if (!existsSync(p)) return { stand: null, eintraege: {} };
  try { return JSON.parse(readFileSync(p, "utf8")); }
  catch { return { stand: null, eintraege: {} }; }
}

// Holt ein Dokument und liefert {buf, ct, etag, lastMod, sha}. Wirft bei HTTP-Fehler.
async function fetchDoc(url) {
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  const ct = r.headers.get("content-type") || "";
  const buf = Buffer.from(await r.arrayBuffer());
  const sha = createHash("sha256").update(buf).digest("hex");
  return {
    buf, ct, sha,
    etag: r.headers.get("etag") || null,
    lastMod: r.headers.get("last-modified") || null,
    bytes: buf.length,
  };
}

function destFor(outRoot, d, url) {
  const fname = decodeURIComponent(url.split("/").pop().split("?")[0]);
  const dir = join(outRoot, d.ebene, slug(d.amt));
  return { dir, fname, path: join(dir, fname) };
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);
  const mode = a.sync ? "sync" : a.check ? "check" : a.list ? "list" : null;

  try {
    if (!mode) {
      L("Bitte einen Modus angeben: --list | --check | --sync   (--help-aehnlich im Datei-Header)");
      process.exit(2);
    }
    const reg = loadRegistry(a.registry ? String(a.registry) : DEFAULT_REGISTRY);
    const docs = filterDocs(reg.dokumente, a);
    const outRoot = a.out ? String(a.out) : DEFAULT_OUT;

    // --- LIST -----------------------------------------------------------------
    if (mode === "list") {
      const out = docs.map((d) => ({ id: d.id, ebene: d.ebene, amt: d.amt, kategorie: d.kategorie, titel: d.titel, url: d.url }));
      if (a.json) { process.stdout.write(JSON.stringify({ anzahl: out.length, dokumente: out }, null, 2) + "\n"); process.exit(0); }
      L(`Registry: ${reg.dokumente.length} Dokument(e) total, ${docs.length} nach Filter (Stand ${reg.meta?.stand || "?"}).\n`);
      let cur = null;
      for (const d of docs) {
        if (d.ebene !== cur) { cur = d.ebene; process.stdout.write(`\n[${cur}]\n`); }
        process.stdout.write(`  ${d.id.padEnd(34)} ${(d.amt || "").padEnd(26)} ${d.titel}\n`);
      }
      process.exit(0);
    }

    // --- CHECK / SYNC ---------------------------------------------------------
    const manifest = loadManifest(outRoot);
    const res = { mode, stand: isoDate(), out: outRoot, total: docs.length, aktuell: 0, geaendert: 0, neu: 0, tot: 0, eintraege: [] };

    for (const d of docs) {
      const prev = manifest.eintraege[d.id];
      let e;
      try {
        const got = await fetchDoc(d.url);
        let status;
        if (!prev || !prev.sha) status = "neu";
        else if (prev.sha !== got.sha) status = "geaendert";
        else status = "aktuell";

        const { dir, fname, path } = destFor(outRoot, d, d.url);
        // bei --sync schreiben (neu/geaendert immer; aktuell nur wenn Datei lokal fehlt)
        let written = false;
        if (mode === "sync" && (status !== "aktuell" || !existsSync(path))) {
          if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
          writeFileSync(path, got.buf);
          written = true;
          manifest.eintraege[d.id] = {
            url: d.url, sha: got.sha, bytes: got.bytes, etag: got.etag,
            lastMod: got.lastMod, datei: join(d.ebene, slug(d.amt), fname),
            stand: res.stand, titel: d.titel,
          };
        }
        res[status]++;
        e = { id: d.id, status, bytes: got.bytes, ct: got.ct, written, datei: join(d.ebene, slug(d.amt), fname) };
        const tag = status === "aktuell" ? "·" : status === "geaendert" ? "~" : "+";
        L(`  ${tag} ${status.padEnd(9)} ${d.id.padEnd(34)} ${(got.bytes / 1024).toFixed(0).padStart(5)} KB  ${written ? "[gespeichert] " : ""}${d.titel}`);
      } catch (err) {
        res.tot++;
        e = { id: d.id, status: "TOT", error: err.message, url: d.url };
        L(`  ! TOT       ${d.id.padEnd(34)} ${err.message}  -> ${d.url}`);
      }
      res.eintraege.push(e);
    }

    if (mode === "sync") {
      manifest.stand = res.stand;
      if (!existsSync(outRoot)) mkdirSync(outRoot, { recursive: true });
      writeFileSync(manifestPath(outRoot), JSON.stringify(manifest, null, 2) + "\n");
    }

    L(`\n${mode === "sync" ? "Sync" : "Check"} fertig: ${res.aktuell} aktuell · ${res.geaendert} geaendert · ${res.neu} neu · ${res.tot} TOT  (von ${res.total}).`);
    if (res.tot > 0) L(`! ${res.tot} toter/tote Link(s) — Registry pruefen/aktualisieren (CMS-Relaunch?).`);
    if (a.json) process.stdout.write(JSON.stringify(res, null, 2) + "\n");
    // Exit-Code: 0 ok, 1 wenn tote Links (fuer Scheduled-Task-Alarm)
    process.exit(res.tot > 0 ? 1 : 0);
  } catch (e) {
    if (a.json) process.stdout.write(JSON.stringify({ ok: false, error: e.message }, null, 2) + "\n");
    else process.stderr.write(`FEHLER: ${e.message}\n`);
    process.exit(2);
  }
})();
