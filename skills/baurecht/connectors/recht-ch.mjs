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
  // Bund (Fedlex) — ELI verifiziert, aber Volltext nur JS-gerendert (manuell/v2, kein Auto-Fetch)
  { key: "RPG",   eli: "https://www.fedlex.admin.ch/eli/cc/1979/1573_1573_1573/de", titel: "Raumplanungsgesetz", sr: "SR 700", ebene: "Bund", seed: false, manuell: true },
];

// --- Kommunale BZO (Kanton ZH) -------------------------------------------------
// Der Kanton ZH haelt die amtlichen kommunalen Bau- und Zonenordnungen zentral im
// OEREB-Dokumentdienst: https://oerebdocs.zh.ch/getDoc?docid=<n>  (amtlich, gemeinfrei).
// Die docid je Gemeinde steht im OEREB-Auszug; mit `--resolve-bzo --egrid <E>` ermittelbar.
// Hier nur VERIFIZIERTE docids (Rule identifikatoren-verifizieren — nie raten).
const BZO_ZH = [
  { key: "zuerich",          gemeinde: "Zürich (Stadt)",        docid: 6,     titel: "Bau- und Zonenordnung (BZO 2016)" },
  { key: "langnau-am-albis", gemeinde: "Langnau am Albis",      docid: 5501,  titel: "Bauordnung Langnau a. A." },
  // Zürichsee-Ufer (Kt. ZH)
  { key: "zollikon",         gemeinde: "Zollikon",              docid: 1611,  titel: "Bauordnung Zollikon" },
  { key: "kuesnacht",        gemeinde: "Küsnacht (ZH)",         docid: 1468,  titel: "Bauordnung Küsnacht" },
  { key: "erlenbach",        gemeinde: "Erlenbach (ZH)",        docid: 7864,  titel: "Bauordnung Erlenbach" },
  { key: "herrliberg",       gemeinde: "Herrliberg",            docid: 6112,  titel: "Bauordnung Herrliberg" },
  { key: "meilen",           gemeinde: "Meilen",                docid: 5986,  titel: "Bauordnung Meilen" },
  { key: "uetikon-am-see",   gemeinde: "Uetikon am See",        docid: 5991,  titel: "Bauordnung Uetikon am See" },
  { key: "maennedorf",       gemeinde: "Männedorf",             docid: 5391,  titel: "Bauordnung Männedorf" },
  { key: "staefa",           gemeinde: "Stäfa",                 docid: 6111,  titel: "Bauordnung Stäfa" },
  { key: "hombrechtikon",    gemeinde: "Hombrechtikon",         docid: 6856,  titel: "Bauordnung Hombrechtikon" },
  { key: "kilchberg",        gemeinde: "Kilchberg (ZH)",        docid: 1184,  titel: "Bauordnung Kilchberg" },
  { key: "rueschlikon",      gemeinde: "Rüschlikon",            docid: 5483,  titel: "Bauordnung Rüschlikon" },
  { key: "thalwil",          gemeinde: "Thalwil",               docid: 1296,  titel: "Bauordnung Thalwil" },
  { key: "oberrieden",       gemeinde: "Oberrieden",            docid: 1253,  titel: "Bauordnung Oberrieden" },
  { key: "horgen",           gemeinde: "Horgen",                docid: 1101,  titel: "Bauordnung Horgen" },
  { key: "waedenswil",       gemeinde: "Wädenswil",             docid: 1405,  titel: "Bauordnung Stadt Wädenswil" },
  { key: "richterswil",      gemeinde: "Richterswil",           docid: 5515,  titel: "Bauordnung Richterswil" },
  // Engerer Agglo-Ring (Kt. ZH)
  { key: "adliswil",         gemeinde: "Adliswil",              docid: 7535,  titel: "Bauordnung Stadt Adliswil" },
  { key: "zumikon",          gemeinde: "Zumikon",               docid: 4798,  titel: "Bauordnung Zumikon" },
  { key: "maur",             gemeinde: "Maur",                  docid: 7860,  titel: "Bauordnung Maur" },
  { key: "egg",              gemeinde: "Egg",                   docid: 8223,  titel: "Bauordnung Egg" },
  { key: "faellanden",       gemeinde: "Fällanden",             docid: 1964,  titel: "Bauordnung Fällanden" },
  { key: "greifensee",       gemeinde: "Greifensee",            docid: 4793,  titel: "Bauordnung Greifensee" },
  { key: "schwerzenbach",    gemeinde: "Schwerzenbach",         docid: 5048,  titel: "Bauordnung Schwerzenbach" },
  { key: "volketswil",       gemeinde: "Volketswil",            docid: 2045,  titel: "Bauordnung Volketswil" },
  { key: "duebendorf",       gemeinde: "Dübendorf",             docid: 99,    titel: "Bauordnung Stadt Dübendorf" },
  { key: "wallisellen",      gemeinde: "Wallisellen",           docid: 757,   titel: "Bauordnung Wallisellen" },
  { key: "opfikon",          gemeinde: "Opfikon",               docid: 4026,  titel: "Bauordnung Opfikon" },
  { key: "kloten",           gemeinde: "Kloten",                docid: 5484,  titel: "Bauordnung Stadt Kloten" },
  { key: "wangen-bruettisellen", gemeinde: "Wangen-Brüttisellen", docid: 2147, titel: "Bauordnung Wangen-Brüttisellen" },
  { key: "bassersdorf",      gemeinde: "Bassersdorf",           docid: 5390,  titel: "Bauordnung Bassersdorf" },
  { key: "dietikon",         gemeinde: "Dietikon",              docid: 5054,  titel: "Bauordnung Stadt Dietikon" },
  { key: "schlieren",        gemeinde: "Schlieren",             docid: 5053,  titel: "Bauordnung Stadt Schlieren" },
  { key: "urdorf",           gemeinde: "Urdorf",                docid: 4025,  titel: "Bauordnung Urdorf" },
  { key: "uitikon",          gemeinde: "Uitikon",               docid: 11881, titel: "Bauordnung Uitikon" },
  { key: "birmensdorf",      gemeinde: "Birmensdorf (ZH)",      docid: 11617, titel: "Bauordnung Birmensdorf" },
  { key: "bonstetten",       gemeinde: "Bonstetten",            docid: 9362,  titel: "Bauordnung Bonstetten" },
  { key: "stallikon",        gemeinde: "Stallikon",             docid: 9946,  titel: "Bauordnung Stallikon" },
  { key: "regensdorf",       gemeinde: "Regensdorf",            docid: 950,   titel: "Bauordnung Regensdorf" },
  { key: "ruemlang",         gemeinde: "Rümlang",               docid: 120,   titel: "Bauordnung Rümlang" },
  { key: "oberengstringen",  gemeinde: "Oberengstringen",       docid: 12152, titel: "Bauordnung Oberengstringen" },
  { key: "unterengstringen", gemeinde: "Unterengstringen",      docid: 5059,  titel: "Bauordnung Unterengstringen" },
  { key: "weiningen",        gemeinde: "Weiningen (ZH)",        docid: 5050,  titel: "Bauordnung Weiningen" },
];
const OEREBDOC = (docid) => `https://oerebdocs.zh.ch/getDoc?docid=${docid}`;
const OEREB_JSON = (egrid) => `https://maps.zh.ch/oereb/v2/extract/json?EGRID=${encodeURIComponent(egrid)}`;
const slug = (s) => s.toLowerCase().normalize("NFD").replace(/[̀-ͯ]/g, "")
  .replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");

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
    // Fedlex liefert den Volltext nur JS-gerendert; ein reiner fetch() bekommt nur die Huelle.
    // Bis die Fedlex-Manifestations-Aufloesung (SPARQL/Filestore) steht, kein Auto-Fetch.
    throw new Error(`Bund-Volltext (${e.sr}) aktuell nur manuell beziehbar — Fedlex ist JS-gerendert. Quelle: ${e.eli} (v2-Aufgabe).`);
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

// --- Kommunale BZO: aus OEREB-JSON die BZO-docid ermitteln ---------------------
async function resolveBzoCandidates(egrid) {
  const r = await fetch(OEREB_JSON(egrid), { headers: { "User-Agent": UA, Accept: "application/json" } });
  if (!r.ok) throw new Error(`OEREB-JSON HTTP ${r.status} (EGRID ${egrid})`);
  const d = await r.json();
  const seen = new Map();
  const walk = (o) => {
    if (Array.isArray(o)) return o.forEach(walk);
    if (o && typeof o === "object") {
      const t = o.Title || o.OfficialTitle;
      const title = typeof t === "string" ? t
        : Array.isArray(t) ? t.map((x) => x && x.Text).filter(Boolean).join(" ") : "";
      const web = o.TextAtWeb;
      const url = typeof web === "string" ? web
        : Array.isArray(web) ? (web.find((x) => x && x.Text) || {}).Text || "" : "";
      const m = String(url).match(/getDoc\?docid=(\d+)/);
      // BZO/Bauordnung-Textdokumente, keine Plaene
      if (m && /Bauordnung|Bau-?\s*und\s*Zonenordnung|BZO/i.test(title) && !/plan\b/i.test(title)) {
        seen.set(m[1], { docid: Number(m[1]), titel: title.trim(), url: String(url) });
      }
      Object.values(o).forEach(walk);
    }
  };
  walk(d);
  return [...seen.values()];
}

async function holeBzo(e, L) {
  L(`· BZO ${e.gemeinde} (docid ${e.docid}) — oerebdocs.zh.ch ...`);
  const url = OEREBDOC(e.docid);
  const pdf = await fetchBuffer(url);
  if (!pdf.slice(0, 5).toString().startsWith("%PDF")) {
    throw new Error(`BZO ${e.gemeinde}: Antwort ist kein PDF (docid ${e.docid}).`);
  }
  const body = pdfBufferToText(pdf);
  const fm = frontmatter({
    quelle: "amtlich",
    ebene: "Gemeinde (Kanton Zürich)",
    erlass: `Bau- und Zonenordnung — ${e.gemeinde}`,
    kuerzel: "BZO",
    gemeinde: e.gemeinde,
    docid: e.docid,
    titel: e.titel || "",
    quelle_url: url,
    abgerufen: isoDate(),
    lizenz: "Amtlicher Text — gemeinfrei (Art. 5 URG)",
  });
  const md = fm + `\n# Bau- und Zonenordnung — ${e.gemeinde}\n\n${e.titel || ""}\nAmtlicher Volltext (OEREB-Dokumentdienst Kt. ZH), abgerufen ${isoDate()}.\nQuelle: ${url}\n\n${body}\n`;
  return { md, pdf };
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);

  if (a.list) {
    process.stdout.write("ERLASSE (kantonal/Bund)\nKEY    Ebene           Ordnung    Titel\n");
    for (const e of REGISTER) {
      process.stdout.write(
        `${e.key.padEnd(6)} ${e.ebene.padEnd(15)} ${(e.ls ? "LS " + e.ls : e.sr).padEnd(10)} ${e.titel}${e.seed ? "  [seed]" : ""}\n`
      );
    }
    process.stdout.write("\nKOMMUNALE BZO (Kt. ZH, via oerebdocs.zh.ch)\nKEY                  docid   Gemeinde\n");
    for (const e of BZO_ZH) {
      process.stdout.write(`${e.key.padEnd(20)} ${String(e.docid).padEnd(7)} ${e.gemeinde}\n`);
    }
    process.exit(0);
  }

  // BZO-Auflösung: aus einem EGRID die kommunale BZO-docid ermitteln (Hilfsmodus).
  if (a["resolve-bzo"]) {
    if (!a.egrid) { process.stderr.write("FEHLER: --resolve-bzo braucht --egrid <CHxx…>. EGRID per geo-zh.mjs aus einer Adresse holen.\n"); process.exit(1); }
    try {
      const cands = await resolveBzoCandidates(String(a.egrid).toUpperCase());
      if (a.json) process.stdout.write(JSON.stringify(cands, null, 2) + "\n");
      else if (!cands.length) process.stdout.write("Keine BZO-/Bauordnungs-Dokumente im OEREB-Auszug gefunden.\n");
      else cands.forEach((c) => process.stdout.write(`docid ${c.docid}  ${c.titel}\n  ${c.url}\n`));
      process.exit(0);
    } catch (e) { process.stderr.write(`FEHLER: ${e.message}\n`); process.exit(1); }
  }

  // Auswahl der Erlasse (kantonal/Bund)
  let wahl = [];
  if (a.all) wahl = REGISTER.slice();
  else if (a.erlass.length) {
    for (const k of a.erlass) {
      const e = REGISTER.find((x) => x.key.toLowerCase() === String(k).toLowerCase());
      if (!e) { process.stderr.write(`FEHLER: Unbekannter Erlass "${k}". --list zeigt das Register.\n`); process.exit(1); }
      wahl.push(e);
    }
  } else if (a.seed) wahl = REGISTER.filter((e) => e.seed);

  // Auswahl der kommunalen BZO
  let bzoWahl = [];
  if (a["all-bzo"]) bzoWahl = BZO_ZH.slice();
  else if (a.bzo) {
    const keys = a.bzo === true ? [] : String(a.bzo).split(",");
    for (const k of keys) {
      const e = BZO_ZH.find((x) => x.key.toLowerCase() === k.toLowerCase());
      if (!e) { process.stderr.write(`FEHLER: Unbekannte BZO "${k}". --list zeigt das Register.\n`); process.exit(1); }
      bzoWahl.push(e);
    }
  }

  if (!wahl.length && !bzoWahl.length) {
    process.stderr.write("Nichts gewaehlt. --seed, --all, --erlass <KEY>, --bzo <key[,key]> oder --all-bzo (siehe --list).\n");
    process.exit(1);
  }

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
  for (const e of bzoWahl) {
    try {
      const { md, pdf } = await holeBzo(e, L);
      const base = `${yymmdd()}_amtlich_zh_bzo-${slug(e.gemeinde)}`;
      const mdPath = join(outDir, `${base}.md`);
      writeFileSync(mdPath, md);
      result.files.push(mdPath);
      L(`  -> ${mdPath} (${(md.length / 1024).toFixed(0)} KB Text)`);
      if (a["keep-pdf"] && pdf) {
        const pdfPath = join(outDir, `${base}.pdf`);
        writeFileSync(pdfPath, pdf);
        result.files.push(pdfPath);
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
