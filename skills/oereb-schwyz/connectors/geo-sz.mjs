#!/usr/bin/env node
/**
 * JANS Geo-SZ-Connector — OEREB-Auszug Kanton Schwyz (v1)
 * ======================================================
 * Beschafft den OEREB-Auszug (oeffentlich-rechtliche Eigentumsbeschraenkungen) zu einer
 * Parzelle/Adresse im Kanton Schwyz. Validiert am Fall 2304 Reckholdern (Bahnhofstrasse 27,
 * Wangen SZ, Parzelle 25 / EGRID CH379377805305) am 07.06.2026.
 *
 * WARUM EIN EIGENER SZ-CONNECTOR:
 * Der Kanton Schwyz betreibt EINEN amtlichen OEREB-Service hinter dem WebGIS map.geo.sz.ch.
 * Der direkte, login-freie PDF-Endpunkt ist:
 *     https://map.geo.sz.ch/oereb/extract/pdf?EGRID=<EGRID>
 * (Anders als ZH liefert der SZ-Server NUR einen Timestamp-Dateinamen
 *  "JJJJMMTThhmmss_extract.pdf" — dieser Connector benennt deshalb selbst auf die
 *  JANS-Konvention um:  Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf.)
 *
 * KERN-LEKTION (Fall Reckholdern): Die Adress-Geokodierung kann die Hausnummer verfehlen
 * und auf die NACHBARPARZELLE fallen (Bahnhofstrasse 27 -> faelschlich Parzelle 193 statt 25).
 * Deshalb ist hier die PARZELLENSUCHE der bevorzugte Weg (--parzelle), die den EGRID direkt
 * und eindeutig liefert. Bei --adresse warnt der Connector, wenn die Hausnummer nicht exakt
 * aufgeloest wurde (Label endet auf "#") — dann zwingend per Parzelle gegenpruefen.
 *
 * AUFRUF:
 *   node geo-sz.mjs --parzelle "Wangen 25"                          # -> EGRID + Infos (empfohlen)
 *   node geo-sz.mjs --gemeinde Wangen --nr 25 --json
 *   node geo-sz.mjs --parzelle "Wangen 25" --oereb --out "/pfad/A" --out "/pfad/B"
 *   node geo-sz.mjs --egrid CH379377805305 --oereb --out "/pfad/Ziel"
 *   node geo-sz.mjs --adresse "Bahnhofstrasse 27 Wangen" --plz 8855  # Fallback, mit HNr-Warnung
 *
 * FLAGS:
 *   --parzelle "<Gemeinde> <Nr>"  Parzellensuche (EMPFOHLEN, eindeutig); SZ-BFS-Filter aktiv
 *   --gemeinde <name> --nr <n>    Alternative Schreibweise der Parzellensuche
 *   --adresse "<Strasse Nr Ort>"  Fallback ueber Geokodierung (Hausnummer kann verfehlen!)
 *   --plz <nnnn>                  schaerft die Adresssuche
 *   --egrid <CHxxxxxxxxxxxx>      EGRID direkt setzen (ueberspringt Suche)
 *   --oereb                       OEREB-Auszug als PDF herunterladen
 *   --out <dir>                   Zielordner (mehrfach moeglich); PDF in jeden ablegen
 *   --json / --quiet              Ausgabesteuerung
 *
 * Rules: identifikatoren-verifizieren (EGRID/Parzelle NIE erfinden — bei 0/mehrdeutigen
 *        Treffern Abbruch + Mensch fragen), umlaute-konvention, dateinamen-konvention.
 */

import { writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join } from "node:path";

const UA = "jans-ai-hub-geosz/1.0 (rj@raphaeljans.ch)";

// SZ-OEREB-PDF-Service (login-frei, amtlich; validiert 07.06.2026)
const OEREB_SZ = (egrid) =>
  `https://map.geo.sz.ch/oereb/extract/pdf?EGRID=${encodeURIComponent(egrid)}`;

// BFS-Bereich Kanton Schwyz (Gemeinden 1301..1373) — Filter fuer die Parzellensuche
const SZ_BFS_MIN = 1301, SZ_BFS_MAX = 1373;
const inSz = (bfs) => { const n = Number(bfs); return n >= SZ_BFS_MIN && n <= SZ_BFS_MAX; };

// --- Util ----------------------------------------------------------------------
function parseArgs(argv) {
  const a = { out: [] };
  for (let i = 2; i < argv.length; i++) {
    const k = argv[i];
    if (!k.startsWith("--")) continue;
    const key = k.slice(2), next = argv[i + 1];
    if (next === undefined || next.startsWith("--")) { a[key] = true; }
    else if (key === "out") { a.out.push(next); i++; }
    else { a[key] = next; i++; }
  }
  return a;
}
const log = (q) => (msg) => { if (!q) process.stderr.write(msg + "\n"); };
function isoDate() { return new Date().toISOString().slice(0, 10); }

async function getJson(url) {
  const r = await fetch(url, { headers: { "User-Agent": UA, Accept: "application/json" } });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return r.json();
}

// --- Parzellensuche (empfohlen): liefert EGRID direkt -------------------------
// geo.admin SearchServer (origins=parcel) -> detail "<nr> <gemeinde> <bfs> <egrid>"
async function searchParcel(gemeinde, nr) {
  const text = `${gemeinde} ${nr}`;
  const url = `https://api3.geo.admin.ch/rest/services/api/SearchServer`
    + `?searchText=${encodeURIComponent(text)}&type=locations&origins=parcel&sr=2056&limit=20`;
  const d = await getJson(url);
  const out = [];
  for (const r of (d.results || [])) {
    const at = r.attrs || {};
    if (String(at.num) !== String(nr)) continue;          // exakte Parzellennummer
    const det = (at.detail || "").trim();                  // "25 wangen _sz_ 1349 ch379...."
    const toks = det.split(/\s+/);
    const egrid = (toks[toks.length - 1] || "").toUpperCase(); // letztes Token = EGRID
    const bfs = toks[toks.length - 2] || null;              // vorletztes = BFS
    if (!/^CH[0-9]{12}$/.test(egrid)) continue;
    out.push({
      egrid, bfs, parzelle: String(at.num),
      label: (at.label || "").replace(/<[^>]+>/g, "").trim(),
      east: at.y, north: at.x,
    });
  }
  return out;
}

// --- Adress-Fallback: Geokodierung + identify (Hausnummer kann verfehlen!) -----
async function geocodeAddress(text, plz) {
  const search = plz ? `${text} ${plz}` : text;
  const url = `https://api3.geo.admin.ch/rest/services/api/SearchServer`
    + `?searchText=${encodeURIComponent(search)}&type=locations&origins=address&sr=2056&limit=8`;
  const d = await getJson(url);
  const clean = (s) => (s || "").replace(/<[^>]+>/g, "").trim();
  return (d.results || []).map((r) => r.attrs).filter(Boolean)
    .map((a) => ({ label: clean(a.label), east: a.y, north: a.x }));
}
async function identifyParcel(east, north) {
  const ext = `${east - 50},${north - 50},${east + 50},${north + 50}`;
  const url = `https://api3.geo.admin.ch/rest/services/all/MapServer/identify`
    + `?geometry=${east},${north}&geometryType=esriGeometryPoint&sr=2056`
    + `&tolerance=1&imageDisplay=100,100,96&mapExtent=${ext}`
    + `&layers=all:ch.swisstopo-vd.amtliche-vermessung&returnGeometry=false`;
  const d = await getJson(url);
  const f = (d.results || [])[0];
  if (!f) return null;
  const at = f.attributes || {};
  return {
    egrid: (at.egris_egrid || at.egrid || "").toUpperCase() || null,
    parzelle: at.number || at.nummer || null,
    bfs: at.bfsnr || at.bfs_nummer || null,
    gemeinde: at.gemeinde || at.bfs_name || null,
  };
}

// --- OEREB-PDF ziehen + auf JANS-Konvention umbenennen -------------------------
async function fetchOereb(egrid) {
  const url = OEREB_SZ(egrid);
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`OEREB HTTP ${r.status} (EGRID ${egrid})`);
  const ct = r.headers.get("content-type") || "";
  if (!ct.includes("pdf")) throw new Error(`OEREB-Antwort ist kein PDF (content-type ${ct})`);
  const buf = Buffer.from(await r.arrayBuffer());
  return { buf, url };
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);
  const result = { ok: false, kanton: "sz", egrid: null, parzelle: null, bfs: null,
                   gemeinde: null, source: null, oereb: null, files: [] };

  try {
    // ---- EGRID bestimmen ----
    if (a.egrid) {
      result.egrid = String(a.egrid).toUpperCase();
      result.source = "egrid";
      if (!/^CH[0-9]{12}$/.test(result.egrid)) throw new Error(`EGRID-Format ungueltig: ${result.egrid}`);
      L(`EGRID gesetzt: ${result.egrid}`);
    } else if (a.parzelle || (a.gemeinde && a.nr)) {
      let gem, nr;
      if (a.gemeinde && a.nr) { gem = a.gemeinde; nr = a.nr; }
      else { const m = String(a.parzelle).trim().match(/^(.*?)[\s,]+(\d+)$/);
             if (!m) throw new Error(`--parzelle erwartet "<Gemeinde> <Nr>", z.B. "Wangen 25"`);
             gem = m[1]; nr = m[2]; }
      L(`1) Parzellensuche: ${gem} ${nr} (Kanton SZ)`);
      let hits = await searchParcel(gem, nr);
      const szHits = hits.filter((h) => inSz(h.bfs));
      if (!szHits.length && hits.length)
        L(`   ! Treffer ausserhalb SZ gefunden (${hits.map((h)=>h.label).join("; ")}). Mit --kanton pruefen.`);
      hits = szHits;
      if (!hits.length) throw new Error(`Keine SZ-Parzelle "${gem} ${nr}" gefunden. Schreibweise/Gemeinde pruefen.`);
      if (hits.length > 1) throw new Error(`Mehrdeutig (${hits.length} Treffer): ${hits.map((h)=>`${h.label} [${h.egrid}]`).join(" | ")}. EGRID manuell waehlen (--egrid).`);
      const h = hits[0];
      Object.assign(result, { egrid: h.egrid, parzelle: h.parzelle, bfs: h.bfs, gemeinde: h.label, source: "parzelle" });
      L(`   -> EGRID ${h.egrid} · Parzelle ${h.parzelle} · BFS ${h.bfs} · ${h.label}`);
    } else if (a.adresse) {
      L(`1) Geocoding (Fallback): ${a.adresse}${a.plz ? " " + a.plz : ""}`);
      const hits = await geocodeAddress(a.adresse, a.plz);
      if (!hits.length) throw new Error(`Keine Adresse gefunden fuer "${a.adresse}".`);
      const hit = hits[0];
      const hnrUnscharf = /#\s*$|#\s+\d{4}/.test(hit.label) || /#/.test(hit.label);
      L(`   -> ${hit.label}  (E ${hit.east} / N ${hit.north})`);
      if (hnrUnscharf)
        L(`   !! WARNUNG: Hausnummer nicht exakt aufgeloest ("#"). Gefahr Nachbarparzelle! Per --parzelle gegenpruefen.`);
      const p = await identifyParcel(hit.east, hit.north);
      if (!p || !p.egrid) throw new Error(`Kein EGRID an Koordinate. Per --parzelle suchen.`);
      Object.assign(result, { egrid: p.egrid, parzelle: p.parzelle, bfs: p.bfs, gemeinde: p.gemeinde, source: "adresse" });
      if (hnrUnscharf) result.warnung = "Hausnummer unscharf — Parzelle ggf. falsch, per --parzelle verifizieren.";
      L(`   -> EGRID ${p.egrid} · Parzelle ${p.parzelle} · BFS ${p.bfs}${p.gemeinde ? " " + p.gemeinde : ""}`);
    } else {
      throw new Error('Bitte --parzelle "Gemeinde Nr", --gemeinde+--nr, --adresse oder --egrid angeben.');
    }

    if (result.bfs && !inSz(result.bfs))
      L(`   ! Hinweis: BFS ${result.bfs} liegt ausserhalb Kanton SZ (1301..1373).`);

    // ---- OEREB ziehen ----
    if (a.oereb) {
      L(`2) OEREB-Auszug SZ beziehen (map.geo.sz.ch) ...`);
      const { buf, url } = await fetchOereb(result.egrid);
      result.oereb = { url, bytes: buf.length };
      const name = `Oereb-Auszug_${result.bfs ?? "SZ"}_${result.parzelle ?? "X"}_${isoDate()}.pdf`;
      const dirs = a.out.length ? a.out : [process.cwd()];
      for (const dir of dirs) {
        if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
        const dest = join(dir, name);
        writeFileSync(dest, buf);
        result.files.push(dest);
        L(`   -> abgelegt: ${dest} (${(buf.length / 1024).toFixed(0)} KB)`);
      }
    }

    result.ok = true;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else if (!a.oereb) process.stdout.write(`${result.egrid}\n`);
    process.exit(0);
  } catch (e) {
    result.error = e.message;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else process.stderr.write(`FEHLER: ${e.message}\n`);
    process.exit(1);
  }
})();
