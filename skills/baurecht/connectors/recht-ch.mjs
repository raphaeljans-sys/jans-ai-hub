#!/usr/bin/env node
/**
 * JANS Recht-CH-Connector — Baurecht (v1)
 * =======================================
 * Beschafft AMTLICHE, gemeinfreie Gesetzestexte (Art. 5 URG — amtliche Erlasse sind
 * urheberrechtsfrei) und legt sie als lesbares Markdown mit Provenienz-Frontmatter in
 * die Wissensbasis `wissen/baurecht/raw/` ab. Damit fundiert der Baurecht-Harness seine
 * Antworten auf dem aktuellen, konsolidierten Wortlaut — nicht auf urheberrechtlich
 * geschuetzter Kommentarliteratur.
 *
 * Zwei verifizierte Bezugsketten:
 *
 *   KANTON ZH (ZH-Lex):
 *     1) https://www.zhlex.zh.ch/Erlass.html?Open&Ordnr=<LS-Nr>   (loest auf aktuelle Fassung)
 *     2) -> kanonische zh.ch-Erlassseite -> Link OpenAttachment?Open&docid=<ID>&file=<F>.pdf
 *     3) -> https://www.notes.zh.ch/appl/zhlex_r.nsf/WebView/<ID>/$File/<F>.pdf  (das PDF)
 *     4) pdftotext -> Markdown
 *
 *   BUND (Fedlex):
 *     ELI-Permalink /de  ->  HTML  ->  Text  ->  Markdown
 *
 * Die ZH-Kette holt IMMER die aktuell publizierte Fassung (kein hartcodierter docid/Stand),
 * weil Schritt 1 stets auf die geltende Version umleitet.
 *
 * AUFRUF:
 *   node recht-ch.mjs --list                       # Register anzeigen
 *   node recht-ch.mjs --seed                        # Kern-Set ziehen (Default-Ablage raw/)
 *   node recht-ch.mjs --erlass PBG --erlass ABV     # gezielt einzelne Erlasse
 *   node recht-ch.mjs --all                         # alles im Register
 *   node recht-ch.mjs --erlass PBG --out /pfad      # Ablageordner ueberschreiben
 *   node recht-ch.mjs --erlass PBG --keep-pdf       # PDF zusaetzlich behalten
 *   node recht-ch.mjs --seed --json                 # maschinenlesbares Ergebnis
 *
 * FLAGS:
 *   --erlass <KEY>   Erlass aus dem Register (mehrfach moeglich), z.B. PBG ABV BVV
 *   --seed           Kern-Set ziehen (PBG ABV BVV BBV1 BBV2 RPG)
 *   --all            alle Register-Eintraege ziehen
 *   --out <dir>      Zielordner (default: wissen/baurecht/raw/)
 *   --keep-pdf       Original-PDF (ZH) neben dem Markdown behalten
 *   --list           Register ausgeben und beenden
 *   --json           Ergebnis als JSON
 *   --quiet          nur Resultatpfade
 *
 * Rules: identifikatoren-verifizieren (nur verifizierte Quellen im Register; bei 0 Treffern
 *        Abbruch statt Raten), umlaute-konvention, dateinamen-konvention (JJMMTT-Praefix).
 */

import { writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { execFileSync } from "node:child_process";
import { tmpdir } from "node:os";

const UA = "jans-ai-hub-baurecht/1.0 (rj@raphaeljans.ch)";
const __dirname = dirname(fileURLToPath(import.meta.url));
// Default-Ablage: wissen/baurecht/raw/ (relativ zum Repo-Root, abgeleitet aus Connector-Pfad)
const DEFAULT_OUT = join(__dirname, "..", "..", "..", "wissen", "baurecht", "raw");

// --- Register: NUR verifizierte amtliche Quellen -------------------------------
// ZH-Eintraege brauchen nur die LS-Ordnungsnummer; die Fassung wird live aufgeloest.
// Bund-Eintraege tragen den verifizierten ELI-Permalink.
const REGISTER = [
  // Kanton Zuerich (ZH-Lex)
  { key: "PBG",   ls: "700.1",  titel: "Planungs- und Baugesetz",                 ebene: "Kanton Zürich", seed: true },
  { key: "ABV",   ls: "700.2",  titel: "Allgemeine Bauverordnung",                ebene: "Kanton Zürich", seed: true },
  { key: "BVV",   ls: "700.6",  titel: "Bauverfahrensverordnung",                 ebene: "Kanton Zürich", seed: true },
  { key: "BBV1",  ls: "700.21", titel: "Besondere Bauverordnung I",               ebene: "Kanton Zürich", seed: true },
  { key: "BBV2",  ls: "700.22", titel: "Besondere Bauverordnung II",              ebene: "Kanton Zürich", seed: true },
  { key: "VErV",  ls: "700.4",  titel: "Verkehrserschliessungsverordnung",        ebene: "Kanton Zürich", seed: false },
  { key: "SGV",   ls: "700.3",  titel: "Sondergebrauchsverordnung",               ebene: "Kanton Zürich", seed: false },
  { key: "VKaB",  ls: "700.11", titel: "Verordnung über Kleinsiedlungen ausserhalb der Bauzonen", ebene: "Kanton Zürich", seed: false },
  // Bund (Fedlex) — ELI verifiziert
  { key: "RPG",   eli: "https://www.fedlex.admin.ch/eli/cc/1979/1573_1573_1573/de", titel: "Raumplanungsgesetz", sr: "SR 700", ebene: "Bund", seed: true },
];

// --- Util ----------------------------------------------------------------------
function parseArgs(argv) {
  const a = { erlass: [], out: [] };
  for (let i = 2; i < argv.length; i++) {
    const k = argv[i];
    if (!k.startsWith("--")) continue;
    const key = k.slice(2), next = argv[i + 1];
    if (key === "erlass") { a.erlass.push(next); i++; }
    else if (key === "out") { a.out.push(next); i++; }
    else if (next === undefined || next.startsWith("--")) { a[key] = true; }
    else { a[key] = next; i++; }
  }
  return a;
}
const log = (q) => (msg) => { if (!q) process.stderr.write(msg + "\n"); };
const isoDate = () => new Date().toISOString().slice(0, 10);
const yymmdd = () => isoDate().slice(2).replace(/-/g, "");

async function fetchText(url, referer) {
  const headers = { "User-Agent": UA };
  if (referer) headers.Referer = referer;
  const r = await fetch(url, { headers, redirect: "follow" });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return { text: await r.text(), finalUrl: r.url };
}
async function fetchBuffer(url, referer) {
  const headers = { "User-Agent": UA };
  if (referer) headers.Referer = referer;
  const r = await fetch(url, { headers, redirect: "follow" });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return Buffer.from(await r.arrayBuffer());
}

// HTML grob zu lesbarem Text (fuer Fedlex). Keine Abhaengigkeit, bewusst simpel.
function htmlToText(html) {
  let s = html;
  s = s.replace(/<script\b[\s\S]*?<\/script>/gi, " ");
  s = s.replace(/<style\b[\s\S]*?<\/style>/gi, " ");
  s = s.replace(/<\/(p|div|li|tr|h[1-6]|article|section)>/gi, "\n");
  s = s.replace(/<br\s*\/?>/gi, "\n");
  s = s.replace(/<[^>]+>/g, " ");
  s = s.replace(/&nbsp;/g, " ").replace(/&amp;/g, "&").replace(/&lt;/g, "<")
       .replace(/&gt;/g, ">").replace(/&#160;/g, " ").replace(/&#xa0;/gi, " ");
  s = s.replace(/[ \t]+\n/g, "\n").replace(/\n{3,}/g, "\n\n").replace(/[ \t]{2,}/g, " ");
  return s.trim();
}

function pdfBufferToText(buf) {
  const tmp = join(tmpdir(), `rechtch-${process.pid}-${Math.round(buf.length)}.pdf`);
  writeFileSync(tmp, buf);
  // -nopgbrk: keine Seitenumbruch-Steuerzeichen; default-Layout (gute Lesereihenfolge)
  const out = execFileSync("pdftotext", ["-enc", "UTF-8", "-nopgbrk", tmp, "-"]);
  return out.toString("utf8");
}

// --- ZH-Kette: LS-Nr -> PDF ----------------------------------------------------
async function resolveZh(ls) {
  const entry = `https://www.zhlex.zh.ch/Erlass.html?Open&Ordnr=${ls}`;
  const { text: html, finalUrl } = await fetchText(entry);
  const m = html.match(/OpenAttachment\?Open&docid=([0-9A-Fa-f]+)&file=([^"'&]+\.pdf)/);
  if (!m) throw new Error(`Kein PDF-Anhang auf der Erlassseite LS ${ls} gefunden (${finalUrl}).`);
  const docid = m[1], file = m[2];
  const pdfUrl = `https://www.notes.zh.ch/appl/zhlex_r.nsf/WebView/${docid}/$File/${file}`;
  return { entry, canonical: finalUrl, pdfUrl, file };
}

function frontmatter(obj) {
  const lines = Object.entries(obj).map(([k, v]) => `${k}: ${v}`);
  return `---\n${lines.join("\n")}\n---\n`;
}

async function holeErlass(e, L) {
  if (e.ebene === "Bund") {
    L(`· ${e.key} (${e.sr}) — Fedlex ...`);
    const { text: html, finalUrl } = await fetchText(e.eli);
    const body = htmlToText(html);
    const fm = frontmatter({
      quelle: "amtlich",
      ebene: e.ebene,
      erlass: `${e.titel} (${e.key})`,
      kuerzel: e.key,
      ordnungsnummer: e.sr,
      quelle_url: e.eli,
      abgerufen: isoDate(),
      lizenz: "Amtlicher Text — gemeinfrei (Art. 5 URG)",
    });
    return { md: fm + `\n# ${e.titel} (${e.key}) — ${e.sr}\n\nAmtlicher Volltext (Bund), abgerufen ${isoDate()} via Fedlex.\nQuelle: ${finalUrl}\n\n${body}\n`, pdf: null };
  }
  // Kanton ZH
  L(`· ${e.key} (LS ${e.ls}) — ZH-Lex aufloesen ...`);
  const { entry, canonical, pdfUrl, file } = await resolveZh(e.ls);
  L(`  PDF: ${file}`);
  const pdf = await fetchBuffer(pdfUrl, canonical);
  if (!pdf.slice(0, 5).toString().startsWith("%PDF")) {
    throw new Error(`Antwort fuer ${e.key} ist kein PDF (LS ${e.ls}).`);
  }
  const body = pdfBufferToText(pdf);
  const fm = frontmatter({
    quelle: "amtlich",
    ebene: e.ebene,
    erlass: `${e.titel} (${e.key})`,
    kuerzel: e.key,
    ordnungsnummer: `LS ${e.ls}`,
    fassung_datei: file,
    quelle_url: entry,
    pdf_url: pdfUrl,
    abgerufen: isoDate(),
    lizenz: "Amtlicher Text — gemeinfrei (Art. 5 URG)",
  });
  const md = fm + `\n# ${e.titel} (${e.key}) — LS ${e.ls}\n\nAmtlicher konsolidierter Volltext (Kanton Zürich), abgerufen ${isoDate()}.\nFassung: ${file} · Quelle: ${entry}\n\n${body}\n`;
  return { md, pdf, file };
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);

  if (a.list) {
    process.stdout.write("KEY    Ebene           Ordnung    Titel\n");
    for (const e of REGISTER) {
      process.stdout.write(
        `${e.key.padEnd(6)} ${e.ebene.padEnd(15)} ${(e.ls ? "LS " + e.ls : e.sr).padEnd(10)} ${e.titel}${e.seed ? "  [seed]" : ""}\n`
      );
    }
    process.exit(0);
  }

  let wahl;
  if (a.all) wahl = REGISTER;
  else if (a.erlass.length) {
    wahl = a.erlass.map((k) => {
      const e = REGISTER.find((x) => x.key.toLowerCase() === String(k).toLowerCase());
      if (!e) throw new Error(`Unbekannter Erlass "${k}". --list zeigt das Register.`);
      return e;
    });
  } else if (a.seed) wahl = REGISTER.filter((e) => e.seed);
  else { process.stderr.write("Nichts gewaehlt. --seed, --all oder --erlass <KEY> (siehe --list).\n"); process.exit(1); }

  const outDir = a.out.length ? a.out[0] : DEFAULT_OUT;
  if (!existsSync(outDir)) mkdirSync(outDir, { recursive: true });

  const result = { ok: false, out: outDir, files: [], fehler: [] };
  for (const e of wahl) {
    try {
      const { md, pdf, file } = await holeErlass(e, L);
      const base = `${yymmdd()}_amtlich_${e.ebene === "Bund" ? "bund" : "zh"}_${e.key.toLowerCase()}`;
      const mdPath = join(outDir, `${base}.md`);
      writeFileSync(mdPath, md);
      result.files.push(mdPath);
      L(`  -> ${mdPath} (${(md.length / 1024).toFixed(0)} KB Text)`);
      if (a["keep-pdf"] && pdf) {
        const pdfPath = join(outDir, file || `${base}.pdf`);
        writeFileSync(pdfPath, pdf);
        result.files.push(pdfPath);
        L(`  -> ${pdfPath} (PDF behalten)`);
      }
    } catch (err) {
      result.fehler.push({ key: e.key, error: err.message });
      L(`  ! ${e.key}: ${err.message}`);
    }
  }

  result.ok = result.fehler.length === 0;
  if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
  else process.stdout.write(result.files.map((f) => f).join("\n") + "\n");
  process.exit(result.ok ? 0 : 1);
})();
