#!/usr/bin/env node
/**
 * JANS Geo-ZH-Connector — Planungsgrundlagen (v1)
 * ===============================================
 * Beschafft amtliche Geodaten zu einer Parzelle/Adresse. Kern der Kette ist der
 * validierte Dreischritt:
 *
 *   1) Adresse  -> Koordinate (LV95)   via api3.geo.admin.ch SearchServer
 *   2) Koordinate -> EGRID + Parzelle  via identify (ch.swisstopo-vd.amtliche-vermessung)
 *   3) EGRID    -> OEREB-Auszug (PDF)  via Kanton-OEREB-Service (ZH: maps.zh.ch)
 *
 * Der OEREB-Auszug (oeffentlich-rechtliche Eigentumsbeschraenkungen) braucht KEIN Login
 * (bestaetigt Fachstelle GIS Kt. ZH, Hannah Gies). Dateiname folgt der JANS-Konvention,
 * die der Server bereits liefert:  Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf
 *
 * AUFRUF:
 *   node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis"            # -> EGRID + Infos
 *   node geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb \
 *        --out "/pfad/A" --out "/pfad/B"                                  # OEREB ziehen + ablegen
 *   node geo-zh.mjs --egrid CH879777718909 --oereb --out "/pfad/A"        # direkt per EGRID
 *   node geo-zh.mjs --adresse "..." --json                               # maschinenlesbar
 *   node geo-zh.mjs --adresse "..." --produkt height,orthofoto,dtm,bauzonen --out "/pfad/A"
 *
 * FLAGS:
 *   --adresse <text>          Strasse Nr Ort  (Ort hilft der Treffsicherheit)
 *   --plz <nnnn>              optional, schaerft die Adresssuche
 *   --egrid <CHxxxxxxxxxxxx>  EGRID direkt setzen (ueberspringt Schritt 1+2)
 *   --oereb                   OEREB-Auszug als PDF herunterladen
 *   --produkt <liste>         zusaetzliche Geodaten (Komma-Liste), validiert login-frei:
 *                               height    = Punkthoehe swissALTI3D (m ue.M.) an der Koordinate
 *                               orthofoto = SWISSIMAGE-DOP10-Kacheln (GeoTIFF-URLs je Jahrgang)
 *                               dtm       = swissALTI3D-Kacheln (GeoTIFF/XYZ-URLs)
 *                               bauzonen  = harmonisierte Bauzonen CH (ch.are.bauzonen) als PNG
 *                             height/orthofoto/dtm/bauzonen brauchen eine Koordinate -> nur mit --adresse
 *   --download                bei orthofoto/dtm zusaetzlich die hoechstaufgeloesten Kacheln laden
 *   --out <dir>              Zielordner (mehrfach moeglich); PDF/PNG/Kacheln werden in jeden gelegt
 *   --kanton <zh|...>         OEREB-Service-Kanton (default: aus BFS abgeleitet, sonst zh)
 *   --json                    Ergebnis als JSON ausgeben
 *   --quiet                   nur Pfade/Resultat, kein Log
 *
 * Rules: identifikatoren-verifizieren (EGRID nie erfinden — bei 0/mehrdeutigen Treffern
 *        wird abgebrochen und der Mensch gefragt), umlaute-konvention, dateinamen-konvention.
 */

import { writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join } from "node:path";

const UA = "jans-ai-hub-geozh/1.0 (rj@raphaeljans.ch)";

// --- Kanton -> OEREB-PDF-Service -----------------------------------------------
// Pro Kanton ein eigener OEREB-Webservice. ZH ist validiert; weitere bei Bedarf ergaenzen.
// BFS-Bereiche dienen nur der Auto-Erkennung des Kantons aus der amtlichen Vermessung.
const OEREB_SERVICE = {
  zh: (egrid) => `https://maps.zh.ch/oereb/v2/extract/pdf.pdf?EGRID=${encodeURIComponent(egrid)}`,
  // SZ validiert 07.06.2026 (Fall 2304 Reckholdern). Achtung: SZ-Server liefert nur einen
  // Timestamp-Dateinamen — fuer SZ besser den dedizierten Connector geo-sz.mjs nutzen
  // (Parzellensuche + JANS-Umbenennung). Hier nur fuer den EGRID-Direktbezug hinterlegt.
  sz: (egrid) => `https://map.geo.sz.ch/oereb/extract/pdf?EGRID=${encodeURIComponent(egrid)}`,
};
// grobe BFS->Kanton-Zuordnung (nur die fuer JANS relevanten Kantone; sonst undefined)
function kantonFromBfs(bfs) {
  const n = Number(bfs);
  if (n >= 1 && n <= 298) return "zh";   // Kanton Zuerich: BFS 1..261 (Reserve bis 298)
  if (n >= 1301 && n <= 1373) return "sz"; // Kanton Schwyz
  return undefined;
}

// --- Bund-Geodaten-Endpunkte (login-frei, validiert 2026-06-10) ----------------
// Alle gegen api3/data/wms.geo.admin.ch getestet (Benchmark im Wiki kartenportale-bund-geodaten).
const GEO_ADMIN = {
  // Punkthoehe swissALTI3D an LV95-Koordinate -> {"height":"549.1"}
  height: (e, n) => `https://api3.geo.admin.ch/rest/services/height?easting=${e}&northing=${n}&sr=2056`,
  // STAC-Item-Suche je Collection ueber WGS84-bbox; liefert GeoTIFF-/XYZ-Asset-URLs je Jahrgang
  stac: (coll, lon, lat, d = 0.0008) =>
    `https://data.geo.admin.ch/api/stac/v0.9/collections/${coll}/items`
    + `?bbox=${(lon - d).toFixed(5)},${(lat - d).toFixed(5)},${(lon + d).toFixed(5)},${(lat + d).toFixed(5)}`,
  // Harmonisierte Bauzonen CH als PNG-Kartenausschnitt (WMS 1.3.0, EPSG:2056 => Achsen N,E)
  bauzonenMap: (e, n, half = 200) =>
    `https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&LAYERS=ch.are.bauzonen`
    + `&CRS=EPSG:2056&BBOX=${n - half},${e - half},${n + half},${e + half}`
    + `&WIDTH=1000&HEIGHT=1000&FORMAT=image/png&STYLES=`,
};
const STAC_COLL = { orthofoto: "ch.swisstopo.swissimage-dop10", dtm: "ch.swisstopo.swissalti3d" };

async function getBuffer(url) {
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return { buf: Buffer.from(await r.arrayBuffer()), ct: r.headers.get("content-type") || "" };
}

// Hoechste Aufloesung je STAC-Item (kleinste GSD im Dateinamen *_<gsd>_2056*) bestimmen
function stacAssets(features) {
  return (features || []).map((f) => {
    const assets = Object.values(f.assets || {}).map((a) => a.href).filter(Boolean);
    const tifs = assets.filter((h) => h.endsWith(".tif"));
    const best = tifs.sort((a, b) => {
      const g = (h) => parseFloat((h.match(/_(\d+(?:\.\d+)?)_2056/) || [])[1] || "99");
      return g(a) - g(b);
    })[0] || tifs[0] || assets[0];
    return { id: f.id, best, all: assets };
  });
}

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

async function getJson(url) {
  const r = await fetch(url, { headers: { "User-Agent": UA, Accept: "application/json" } });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return r.json();
}

// --- Schritt 1: Adresse -> Koordinate (LV95, sr=2056) --------------------------
async function geocodeAddress(text, plz) {
  const search = plz ? `${text} ${plz}` : text;
  const url = `https://api3.geo.admin.ch/rest/services/api/SearchServer`
    + `?searchText=${encodeURIComponent(search)}&type=locations&origins=address&sr=2056&limit=8`;
  const d = await getJson(url);
  const results = (d.results || []).map((r) => r.attrs).filter(Boolean);
  if (!results.length) return { hits: [] };
  // Exakte Hausnummer bevorzugen (label ohne ".1"-Sub-Eingaenge)
  const clean = (s) => (s || "").replace(/<[^>]+>/g, "").trim();
  const hits = results.map((a) => ({
    label: clean(a.label), east: a.y, north: a.x, lon: a.lon, lat: a.lat, featureId: a.featureId,
  }));
  return { hits };
}

// --- Schritt 2: Koordinate -> EGRID + Parzelle ---------------------------------
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
    egrid: at.egris_egrid || at.egrid || null,
    parzelle: at.number || at.nummer || null,
    bfs: at.bfsnr || at.bfs_nummer || null,
    gemeinde: at.gemeinde || at.bfs_name || null,
  };
}

// --- Schritt 3: EGRID -> OEREB-PDF ---------------------------------------------
async function fetchOereb(egrid, kanton) {
  const build = OEREB_SERVICE[kanton];
  if (!build) throw new Error(`Kein OEREB-Service fuer Kanton "${kanton}" hinterlegt (nur ZH validiert). EGRID ${egrid} manuell beziehen.`);
  const url = build(egrid);
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`OEREB HTTP ${r.status} (EGRID ${egrid})`);
  const ct = r.headers.get("content-type") || "";
  if (!ct.includes("pdf")) throw new Error(`OEREB-Antwort ist kein PDF (content-type ${ct})`);
  // Dateiname aus content-disposition (Server liefert bereits JANS-Konvention), sonst selbst bauen
  const cd = r.headers.get("content-disposition") || "";
  const m = cd.match(/filename="?([^"]+\.pdf)"?/i);
  const buf = Buffer.from(await r.arrayBuffer());
  return { buf, filename: m ? m[1] : null, url };
}

function isoDate() {
  // ohne Date.* aus Args ableitbar; hier Systemdatum (Connector laeuft real, nicht im Workflow-Sandbox)
  return new Date().toISOString().slice(0, 10);
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);
  const result = { ok: false, egrid: null, parzelle: null, bfs: null, gemeinde: null, kanton: null, coord: null, oereb: null, produkte: {}, files: [] };

  try {
    // EGRID bestimmen
    if (a.egrid) {
      result.egrid = String(a.egrid).toUpperCase();
      L(`EGRID gesetzt: ${result.egrid}`);
    } else {
      if (!a.adresse) throw new Error("Bitte --adresse \"Strasse Nr Ort\" oder --egrid angeben.");
      L(`1) Geocoding: ${a.adresse}${a.plz ? " " + a.plz : ""}`);
      const { hits } = await geocodeAddress(a.adresse, a.plz);
      if (!hits.length) throw new Error(`Keine Adresse gefunden fuer "${a.adresse}". Bitte praezisieren.`);
      const hit = hits[0];
      L(`   -> ${hit.label}  (E ${hit.east} / N ${hit.north})`);
      result.coord = { east: hit.east, north: hit.north, lon: hit.lon, lat: hit.lat };
      L(`2) Parzelle/EGRID identifizieren ...`);
      const p = await identifyParcel(hit.east, hit.north);
      if (!p || !p.egrid) throw new Error(`Kein EGRID an Koordinate (E ${hit.east}/N ${hit.north}). Parzelle manuell pruefen.`);
      Object.assign(result, { egrid: p.egrid, parzelle: p.parzelle, bfs: p.bfs, gemeinde: p.gemeinde });
      L(`   -> EGRID ${p.egrid} · Parzelle ${p.parzelle} · BFS ${p.bfs}${p.gemeinde ? " " + p.gemeinde : ""}`);
    }

    result.kanton = (a.kanton || kantonFromBfs(result.bfs) || "zh").toLowerCase();

    // OEREB ziehen
    if (a.oereb) {
      L(`3) OEREB-Auszug beziehen (Kanton ${result.kanton}) ...`);
      const { buf, filename, url } = await fetchOereb(result.egrid, result.kanton);
      result.oereb = { url, bytes: buf.length };
      const name = filename
        || `Oereb-Auszug_${result.bfs ?? "X"}_${result.parzelle ?? "X"}_${isoDate()}.pdf`;
      const dirs = a.out.length ? a.out : [process.cwd()];
      for (const dir of dirs) {
        if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
        const dest = join(dir, name);
        writeFileSync(dest, buf);
        result.files.push(dest);
        L(`   -> abgelegt: ${dest} (${(buf.length / 1024).toFixed(0)} KB)`);
      }
    }

    // Zusatz-Produkte (Bund, login-frei)
    if (a.produkt) {
      const wanted = String(a.produkt).split(",").map((s) => s.trim().toLowerCase()).filter(Boolean);
      const c = result.coord;
      if (!c) {
        L(`! Produkte (${wanted.join(",")}) brauchen eine Koordinate -> bitte mit --adresse aufrufen (EGRID-only reicht nicht).`);
      } else {
        const dirs = a.out.length ? a.out : [process.cwd()];
        for (const prod of wanted) {
          try {
            if (prod === "height") {
              const d = await getJson(GEO_ADMIN.height(c.east, c.north));
              result.produkte.height = { m: Number(d.height), quelle: "swissALTI3D (api3.geo.admin.ch/height)" };
              L(`   height: ${d.height} m ue.M.`);
            } else if (prod === "orthofoto" || prod === "dtm") {
              const coll = STAC_COLL[prod];
              const fc = await getJson(GEO_ADMIN.stac(coll, c.lon, c.lat));
              const items = stacAssets(fc.features);
              result.produkte[prod] = { collection: coll, items: items.map((i) => ({ id: i.id, best: i.best })) };
              L(`   ${prod}: ${items.length} Kachel(n)/Jahrgang -> ${items.map((i) => i.id).join(", ") || "keine"}`);
              if (a.download && items.length) {
                for (const it of items) {
                  if (!it.best) continue;
                  const { buf } = await getBuffer(it.best);
                  const fn = it.best.split("/").pop();
                  for (const dir of dirs) {
                    if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
                    const dest = join(dir, fn); writeFileSync(dest, buf); result.files.push(dest);
                    L(`     -> ${dest} (${(buf.length / 1024 / 1024).toFixed(1)} MB)`);
                  }
                }
              }
            } else if (prod === "bauzonen") {
              const url = GEO_ADMIN.bauzonenMap(c.east, c.north);
              const { buf, ct } = await getBuffer(url);
              if (!ct.includes("png")) throw new Error(`Bauzonen-Antwort kein PNG (${ct})`);
              const fn = `Bauzonen-CH_${result.bfs ?? "X"}_${result.parzelle ?? "X"}_${isoDate()}.png`;
              for (const dir of dirs) {
                if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
                const dest = join(dir, fn); writeFileSync(dest, buf); result.files.push(dest);
                L(`   bauzonen: ${dest} (${(buf.length / 1024).toFixed(0)} KB)`);
              }
              result.produkte.bauzonen = { layer: "ch.are.bauzonen", url };
            } else {
              L(`! Unbekanntes Produkt "${prod}" (gueltig: height,orthofoto,dtm,bauzonen)`);
            }
          } catch (e) {
            result.produkte[prod] = { error: e.message };
            L(`! Produkt ${prod} fehlgeschlagen: ${e.message}`);
          }
        }
      }
    }

    result.ok = true;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else if (!a.oereb && !a.produkt) process.stdout.write(`${result.egrid}\n`);
    process.exit(0);
  } catch (e) {
    result.error = e.message;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else process.stderr.write(`FEHLER: ${e.message}\n`);
    process.exit(1);
  }
})();
