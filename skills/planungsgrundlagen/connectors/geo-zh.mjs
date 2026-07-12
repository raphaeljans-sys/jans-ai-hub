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
 *   node geo-zh.mjs --adresse "..." --produkt height,orthofoto,dtm,gebaeude,punktwolke,bauzonen --out "/pfad/A"
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
 *                               zonenplan = rechtskraeftige kommunale Grundnutzung Kt. ZH (Zone,
 *                                           BMZ/Gebaeude-/Firsthoehe, Empfindlichkeitsstufe) als
 *                                           Vektor via ZH-OGD-WFS (0156/0154); GeoJSON-Ablage mit --out.
 *                                           Meldet zusaetzlich eine LAUFENDE REVISION (proj-Layer 0156)
 *                                           samt geplanter Zone + Auflage/Festsetzung/Dokument (A6).
 *                               baulinien = OEREB-Baulinien + Abstandslinien Kt. ZH (Verkehrsbaulinie
 *                                           0158, Wald-/Gewaesserabstand 0152/0153, Waldgrenze 0150,
 *                                           Gewaesserraum 0185) im Umkreis (default ±150 m, --radius)
 *                             height/orthofoto/dtm/bauzonen/zonenplan/baulinien brauchen eine Koordinate -> nur mit --adresse
 *   --download                bei orthofoto/dtm zusaetzlich die hoechstaufgeloesten Kacheln laden
 *   --radius <n>              Suchradius: Meter fuer baulinien (default 150) bzw. STAC-bbox-Grad
 *                             fuer orthofoto/dtm (default 0.0008, sonst adaptiv verdoppelt)
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
const STAC_COLL = {
  orthofoto:  "ch.swisstopo.swissimage-dop10",
  dtm:        "ch.swisstopo.swissalti3d",          // Gelaendemodell (Terrain ohne Bewuchs/Bauten)
  gebaeude:   "ch.swisstopo.swissbuildings3d_2",   // Gebaeudekuben (Kachel-DXF bevorzugt)
  punktwolke: "ch.swisstopo.swisssurface3d",       // Oberflaechen-Punktwolke (LAZ, bei Bedarf)
};

// --- ZH-OGD-WFS: rechtskraeftige kommunale Nutzungsplanung (login-frei) ---------
// maps.zh.ch/wfs/OGDZHWFS liefert die rechtsverbindliche Grundnutzung (Zonenplan/BZO) als
// Vektor mit allen planungsrelevanten Attributen (Zone, BMZ, Gebaeude-/Firsthoehe,
// Gewerbeanteil, Rechtsstatus, Festsetzungs-/Genehmigungsdatum) — MEHR als der OEREB-PDF.
// Loest die alte Luecke A2/E2 (wms.zh.ch = HTTP 401): der OGD-WFS ist login-/Referer-frei.
// Validiert 2026-06-16 an Kat. 3338 Langnau a.A. (W/1.5 -> W1, BMZ 1.5, ES_II, inKraft).
// Punktabfrage via Mini-BBOX (±2 m): groessere Fenster fangen Nachbarzonen mit.
// Es gibt je Layer ein Pendant `..._proj_f` (projektierte/in Revision befindliche Planung).
const OGDZH_WFS = "https://maps.zh.ch/wfs/OGDZHWFS";
const NP_LAYER = {
  grundnutzung:      "ms:ogd-0156_arv_basis_np_gn_zonenflaeche_f",      // rechtskraeftige Grundnutzung (Zone)
  grundnutzung_proj: "ms:ogd-0156_arv_basis_np_gn_zonenflaeche_proj_f", // projektierte/in Revision befindliche Grundnutzung (A6)
  es_laerm:          "ms:ogd-0154_arv_basis_np_ls_festlegung_f",        // Empfindlichkeitsstufe LSV (ES_I..IV)
};
// OEREB-Linien/-Flaechen je Parzelle (Baulinien + Abstandslinien), validiert 2026-06-24.
// Linien liegen NEBEN der Parzelle -> Punktabfrage braucht ein groesseres Fenster (default ±150 m).
// Je Layer existiert ein `..._proj_l/_f`-Pendant (in Revision); hier die rechtskraeftigen.
const BAULINIE_LAYER = {
  baulinie:        "ms:ogd-0158_arv_basis_abstandslinie_baulinie_l",   // kommunale Verkehrsbaulinien (158.1)
  wald:            "ms:ogd-0152_arv_basis_abstandslinie_wald_l",       // Waldabstandslinien (152.1)
  gewaesser:       "ms:ogd-0153_arv_basis_abstandslinie_gewaesser_l",  // Gewaesserabstandslinien (153.1)
  waldgrenze:      "ms:ogd-0150_arv_basis_abstandslinie_waldgrenze_l", // statische Waldgrenze (150.1)
  gewaesserraum:   "ms:ogd-0185_arv_basis_gewaesserraum_f",            // Gewaesserraum-Flaeche (185.1)
};
// Projektierte/in Revision befindliche Abstandslinien (K5-Rest/Run 19, analog A6 bei zonenplan).
// Existenz+Namensschema per GetCapabilities verifiziert 2026-07-13 — ACHTUNG, kein einheitliches
// Muster (Falle beim Nachpflegen): waldgrenze traegt "_prj_l" (nicht "_proj_l"), gewaesser-Linie
// wechselt sogar den Namensraum "giszhpub" statt "arv_basis". Live-Benchmarks (Kanton-weite Probe,
// je 1 Fund ausserhalb ±150 m der bisherigen Testparzellen): baulinie Kloten (Rechtsmittelverfahren),
// wald Wila/Boppelsen (Festsetzung), waldgrenze Winterthur (oeffentliche Auflage), gewaesser
// Niederglatt (Aufhebung), gewaesserraum Bachs (oeffentliche Auflage) — Bachs bewusst OHNE Vorwirkung.
const BAULINIE_PROJ_LAYER = {
  baulinie:      "ms:ogd-0158_arv_basis_abstandslinie_baulinie_proj_l",
  wald:          "ms:ogd-0152_arv_basis_abstandslinie_wald_proj_l",
  gewaesser:     "ms:ogd-0153_giszhpub_abstandslinie_gewaesser_proj_l", // Namensraum weicht ab!
  waldgrenze:    "ms:ogd-0150_arv_basis_abstandslinie_waldgrenze_prj_l", // "_prj_l" statt "_proj_l"!
  gewaesserraum: "ms:ogd-0185_arv_basis_gewaesserraum_proj_f",
};
function ogdWfsUrl(layer, e, n, half = 2) {
  const bbox = `${e - half},${n - half},${e + half},${n + half},urn:ogc:def:crs:EPSG::2056`;
  return `${OGDZH_WFS}?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&TYPENAMES=${layer}`
    + `&SRSNAME=urn:ogc:def:crs:EPSG::2056&BBOX=${encodeURIComponent(bbox)}&COUNT=10&OUTPUTFORMAT=geojson`;
}
// Holt Grundnutzung + Empfindlichkeitsstufe an einem LV95-Punkt (nur Kt. ZH).
async function fetchZonenplan(e, n) {
  const gn = await getJson(ogdWfsUrl(NP_LAYER.grundnutzung, e, n));
  const grundnutzung = (gn.features || []).map((f) => {
    const p = f.properties || {};
    return {
      gemeinde: p.typ_gemeindename, bfs: p.typ_bfsnr,
      zone_gde: p.typ_gde_abkuerzung, zone_gde_txt: p.typ_gde_bezeichnung,
      zone_zh: p.typ_zh_abkuerzung, zone_zh_txt: p.typ_zh_bezeichnung,
      // Dichtemass je Gemeindesystem: BMZ-Gemeinden (z.B. Langnau) tragen baumassenziffer_max
      // + Gebaeude-/Firsthoehe; AZ-Gemeinden (z.B. Stadt ZH) tragen ausnuetzungsziffer_max +
      // vollgeschosse_max. Das jeweils andere Feld fehlt (undefined) -> beide mitnehmen.
      ausnuetzungsziffer_max: p.ausnuetzungsziffer_max, vollgeschosse_max: p.vollgeschosse_max,
      baumassenziffer_max: p.baumassenziffer_max, gebaeudehoehe_max: p.gebaeudehoehe_max,
      firsthoehe_max: p.firsthoehe_max, gewerbeanteil_max: p.gewerbeanteil_max,
      rechtsstatus: p.rechtsstatus, festgesetzt: p.festsetzungsdatum,
      genehmigt: p.genehmigungsdatum, publiziert_ab: p.publiziertab,
    };
  });
  let es_laerm = [];
  try {
    const es = await getJson(ogdWfsUrl(NP_LAYER.es_laerm, e, n));
    es_laerm = (es.features || []).map((f) => ({
      es: f.properties?.typ_abkuerzung, es_txt: f.properties?.typ_bezeichnung,
      rechtsstatus: f.properties?.rechtsstatus,
    }));
  } catch { /* ES optional — Grundnutzung ist das Pflichtprodukt */ }
  // A6: laeuft an dieser Parzelle eine BZO-/Nutzungsplan-Revision? Projektierten Layer mitabfragen.
  // Liefert die geplante Zone + die Revisions-Metadaten (Stand/Auflage/Festsetzung/Genehmigung +
  // Verweis auf die OEREB-Dokumente) -> Vorher/Nachher fuer machbarkeit Typ A.
  let grundnutzung_proj = [];
  try {
    const gp = await getJson(ogdWfsUrl(NP_LAYER.grundnutzung_proj, e, n));
    grundnutzung_proj = (gp.features || []).map((f) => {
      const p = f.properties || {};
      return {
        zone_gde: p.typ_gde_abkuerzung, zone_gde_txt: p.typ_gde_bezeichnung,
        zone_zh: p.typ_zh_abkuerzung, zone_zh_txt: p.typ_zh_bezeichnung,
        ausnuetzungsziffer_max: p.ausnuetzungsziffer_max, vollgeschosse_max: p.vollgeschosse_max,
        baumassenziffer_max: p.baumassenziffer_max, gebaeudehoehe_max: p.gebaeudehoehe_max,
        firsthoehe_max: p.firsthoehe_max, gewerbeanteil_max: p.gewerbeanteil_max,
        rechtsstatus: p.rechtsstatus, revisionsart: p.revisionsart_txt,
        auflage: p.auflagedatum, festsetzung: p.festsetzung, genehmigung: p.genehmigung,
        inkraftsetzung: p.inkraftsetzung, publiziert_ab: p.publiziertab,
        projektzustand: p.projektzustand, dokument: p.dokument,
      };
    });
  } catch { /* proj optional — die meisten Parzellen haben keine laufende Revision */ }
  return { grundnutzung, grundnutzung_proj, revision_laeuft: grundnutzung_proj.length > 0, es_laerm, layer: NP_LAYER };
}

// --- Geometrie: senkrechter Abstand Linie<->Parzellengrenze (K5-Rest, planar EPSG:2056) ---------
// Distanz Punkt->Segment (Fusspunkt geklemmt auf [0,1]).
function distPointSeg(px, py, ax, ay, bx, by) {
  const dx = bx - ax, dy = by - ay, l2 = dx * dx + dy * dy;
  let t = l2 ? ((px - ax) * dx + (py - ay) * dy) / l2 : 0;
  t = t < 0 ? 0 : t > 1 ? 1 : t;
  return Math.hypot(px - (ax + t * dx), py - (ay + t * dy));
}
function segsIntersect(a, b, c, d) {
  const o = (p, q, r) => Math.sign((q[0] - p[0]) * (r[1] - p[1]) - (q[1] - p[1]) * (r[0] - p[0]));
  return o(a, b, c) !== o(a, b, d) && o(c, d, a) !== o(c, d, b);
}
function distSegSeg(s1, s2) {
  const [a, b] = s1, [c, d] = s2;
  if (segsIntersect(a, b, c, d)) return 0;
  return Math.min(
    distPointSeg(a[0], a[1], c[0], c[1], d[0], d[1]),
    distPointSeg(b[0], b[1], c[0], c[1], d[0], d[1]),
    distPointSeg(c[0], c[1], a[0], a[1], b[0], b[1]),
    distPointSeg(d[0], d[1], a[0], a[1], b[0], b[1]),
  );
}
// Segmentliste aus Esri-rings (Parzelle) bzw. GeoJSON-Geometrie (Linien/Flaechen).
function ringsToSegs(rings) {
  const segs = [];
  for (const r of rings || []) for (let i = 0; i < r.length - 1; i++) segs.push([r[i], r[i + 1]]);
  return segs;
}
function geomToSegs(g) {
  const segs = [], addLine = (co) => { for (let i = 0; i < co.length - 1; i++) segs.push([co[i], co[i + 1]]); };
  if (!g) return segs;
  const t = g.type, c = g.coordinates;
  if (t === "LineString") addLine(c);
  else if (t === "MultiLineString") c.forEach(addLine);
  else if (t === "Polygon") c.forEach(addLine);
  else if (t === "MultiPolygon") c.forEach((p) => p.forEach(addLine));
  return segs;
}
// Kleinster Abstand zweier Segmentmengen (0 = beruehrt/schneidet); null wenn eine leer.
function segsDist(A, B) {
  if (!A.length || !B.length) return null;
  let min = Infinity;
  for (const sa of A) for (const sb of B) { const dd = distSegSeg(sa, sb); if (dd < min) min = dd; if (min === 0) return 0; }
  return min;
}

// K5: Baulinien + Abstandslinien (Wald/Gewaesser) + Gewaesserraum an einem LV95-Punkt (nur Kt. ZH).
// Linien liegen typischerweise NEBEN der Parzelle -> default ±150 m. Liefert je Layer die Treffer
// mit Typ/Zweck/Rechtsstatus. Belegt: Baulinie 0158 (typ_txt/zweck_txt), Abstand 0152/0153
// (typ_txt + Distanz in typ_bemerkungen), Waldgrenze 0150, Gewaesserraum 0185.
// Ist `parcelRings` (Esri-rings der Parzelle) gesetzt, wird je Treffer der senkrechte Abstand
// Linie<->Parzellengrenze in Metern gerechnet (`dist_m`, 0 = beruehrt) + je Layer `dist_min_m`.
async function fetchBaulinien(e, n, half = 150, parcelRings = null) {
  const parcelSegs = parcelRings ? ringsToSegs(parcelRings) : [];
  const out = {};
  for (const [key, layer] of Object.entries(BAULINIE_LAYER)) {
    try {
      const d = await getJson(ogdWfsUrl(layer, e, n, half));
      const rows = (d.features || []).map((f) => {
        const p = f.properties || {};
        const dist = parcelSegs.length ? segsDist(parcelSegs, geomToSegs(f.geometry)) : null;
        return {
          typ: p.typ_txt || p.typ || p.gewaesserraumfestlegung_txt || null,
          zweck: p.zweck_txt || p.zweck || p.art_txt || null,
          bemerkung: p.typ_bemerkungen || p.bemerkungen || null,
          rechtsstatus: p.rechtsstatus || p.rechtsstatus_txt || p.inkraftsetzung_txt || null,
          gemeinde: p.gemeindename || null,
          dist_m: dist == null ? null : Math.round(dist * 10) / 10,
        };
      });
      // je Layer nach Abstand aufsteigend (naechste Linie zuerst), wenn Distanz vorhanden
      if (parcelSegs.length) rows.sort((x, y) => (x.dist_m ?? Infinity) - (y.dist_m ?? Infinity));
      out[key] = rows;
    } catch { out[key] = []; }
  }
  const total = Object.values(out).reduce((s, a) => s + a.length, 0);
  const res = { ...out, treffer: total, radius_m: half, gemessen: parcelSegs.length > 0 };
  if (parcelSegs.length) {
    for (const key of Object.keys(BAULINIE_LAYER)) {
      const ds = out[key].map((r) => r.dist_m).filter((v) => v != null);
      res[`${key}_dist_min_m`] = ds.length ? Math.min(...ds) : null;
    }
  }
  // K5-Rest/Run 19: projektierte/in Revision befindliche Abstandslinien im selben Fenster mitpruefen
  // (analog A6 bei zonenplan) — meldet, ob im Umkreis eine Aenderung laeuft, BEVOR die rechtskraeftige
  // Linie ueberholt ist. Gleicher Radius wie die rechtskraeftige Abfrage (±half m).
  const proj = {};
  for (const [key, layer] of Object.entries(BAULINIE_PROJ_LAYER)) {
    try {
      const d = await getJson(ogdWfsUrl(layer, e, n, half));
      proj[key] = (d.features || []).map((f) => {
        const p = f.properties || {};
        const dist = parcelSegs.length ? segsDist(parcelSegs, geomToSegs(f.geometry)) : null;
        return {
          typ: p.typ_txt || p.typ || p.gewaesserraumfestlegung_txt || null,
          rechtsstatus: p.rechtsstatus || p.rechtsstatus_txt || null,
          projektzustand: p.projektzustand || null,
          gemeinde: p.gemeindename || null,
          auflage: p.auflagedatum || null,
          dokument: p.dokument || null,
          dist_m: dist == null ? null : Math.round(dist * 10) / 10,
        };
      });
    } catch { proj[key] = []; }
  }
  const projTotal = Object.values(proj).reduce((s, a) => s + a.length, 0);
  res.proj = proj;
  res.proj_treffer = projTotal;
  res.revision_laeuft = projTotal > 0;
  return res;
}
// bevorzugte Datei-Endung je Produkt (stacAssets-Fallback: .tif, sonst erstes Asset)
const STAC_PREF = { gebaeude: ".dxf.zip", punktwolke: ".laz" };

async function getBuffer(url) {
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  return { buf: Buffer.from(await r.arrayBuffer()), ct: r.headers.get("content-type") || "" };
}

// Hoechste Aufloesung je STAC-Item (kleinste GSD im Dateinamen *_<gsd>_2056*) bestimmen
function stacAssets(features, prefExt) {
  return (features || []).map((f) => {
    const assets = Object.values(f.assets || {}).map((a) => a.href).filter(Boolean);
    if (prefExt) {
      // Produkt mit fester Format-Praeferenz (z.B. Gebaeude-Kachel-DXF, Punktwolke-LAZ);
      // Items ohne dieses Format (z.B. Gesamt-CH-Geodatabases, GB-gross) -> best=null
      const hit = assets.filter((h) => h.endsWith(prefExt))[0] || null;
      return { id: f.id, best: hit, all: assets };
    }
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
  // returnGeometry=true -> Parzellenpolygon (Esri rings, EPSG:2056) fuer die
  // senkrechte Abstandsmessung Linie<->Grenze (K5-Rest, --produkt baulinien).
  const url = `https://api3.geo.admin.ch/rest/services/all/MapServer/identify`
    + `?geometry=${east},${north}&geometryType=esriGeometryPoint&sr=2056`
    + `&tolerance=1&imageDisplay=100,100,96&mapExtent=${ext}`
    + `&layers=all:ch.swisstopo-vd.amtliche-vermessung&returnGeometry=true`;
  const d = await getJson(url);
  const f = (d.results || [])[0];
  if (!f) return null;
  const at = f.attributes || {};
  return {
    egrid: at.egris_egrid || at.egrid || null,
    parzelle: at.number || at.nummer || null,
    bfs: at.bfsnr || at.bfs_nummer || null,
    gemeinde: at.gemeinde || at.bfs_name || null,
    rings: (f.geometry && f.geometry.rings) || null,
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
      result.parzelle_rings = p.rings || null;
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
            } else if (prod === "orthofoto" || prod === "dtm" || prod === "gebaeude" || prod === "punktwolke") {
              const coll = STAC_COLL[prod];
              // E3: bbox-Radius adaptiv. Start am Punktfenster (~0.0008 Grad); bringt das 0 Kacheln
              // (grosse Parzelle, Punkt zwischen Kacheln, Kachelraster-Luecke), Fenster verdoppeln
              // bis Treffer oder Max (~0.0064 Grad ~ 0.5-1 km). Verhindert leere Antworten ohne
              // unnoetig viele Nachbarkacheln bei normalen Parzellen einzusammeln.
              let fc, d = a.radius ? Number(a.radius) : 0.0008;
              const dMax = 0.0064;
              for (;;) {
                fc = await getJson(GEO_ADMIN.stac(coll, c.lon, c.lat, d));
                if ((fc.features || []).length || d >= dMax) break;
                d *= 2;
                L(`     ${prod}: 0 Kacheln bei d=${(d / 2).toFixed(4)} -> Fenster auf d=${d.toFixed(4)} erweitert`);
              }
              const items = stacAssets(fc.features, STAC_PREF[prod]).filter((i) => i.best);
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
            } else if (prod === "zonenplan") {
              if (result.kanton !== "zh") throw new Error(`zonenplan ist nur fuer Kt. ZH hinterlegt (Kanton ${result.kanton})`);
              const z = await fetchZonenplan(c.east, c.north);
              result.produkte.zonenplan = z;
              const zg = z.grundnutzung[0];
              const mehr = z.grundnutzung.length > 1 ? ` [${z.grundnutzung.length} Zonen im Fenster — Punkt praezisieren]` : "";
              const dichte = zg
                ? (zg.ausnuetzungsziffer_max != null ? `AZ ${zg.ausnuetzungsziffer_max}${zg.vollgeschosse_max != null ? `/${zg.vollgeschosse_max}VG` : ""}`
                   : zg.baumassenziffer_max != null ? `BMZ ${zg.baumassenziffer_max} · GH ${zg.gebaeudehoehe_max ?? "–"}` : "Dichte –")
                : "";
              L(zg
                ? `   zonenplan: ${zg.zone_gde} (${zg.zone_zh}) · ${dichte} · ${z.es_laerm[0]?.es ?? "ES?"} · ${zg.rechtsstatus}${mehr}`
                : `   zonenplan: keine Grundnutzung an der Koordinate getroffen`);
              // A6: laufende Revision an dieser Parzelle melden (Vorher/Nachher fuer machbarkeit Typ A)
              if (z.revision_laeuft) {
                const zp = z.grundnutzung_proj[0];
                L(`   ⚠ LAUFENDE REVISION: projektiert ${zp.zone_gde ?? "–"} (${zp.zone_gde_txt ?? ""}) · ${zp.rechtsstatus}${zp.revisionsart ? " · " + zp.revisionsart : ""}${zp.auflage ? " · Auflage " + String(zp.auflage).slice(0, 10) : ""}${zp.dokument ? " · Dok: " + zp.dokument : ""}`);
              }
              // GeoJSON-Zusammenfassung nur bei explizitem --out ablegen (kein cwd-Muell)
              if (a.out.length) {
                const fn = `Zonenplan-ZH_${result.bfs ?? "X"}_${result.parzelle ?? "X"}_${isoDate()}.json`;
                for (const dir of a.out) {
                  if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
                  const dest = join(dir, fn); writeFileSync(dest, JSON.stringify(z, null, 2)); result.files.push(dest);
                  L(`     -> ${dest}`);
                }
              }
            } else if (prod === "baulinien") {
              if (result.kanton !== "zh") throw new Error(`baulinien ist nur fuer Kt. ZH hinterlegt (Kanton ${result.kanton})`);
              const half = a.radius ? Number(a.radius) : 150;
              const b = await fetchBaulinien(c.east, c.north, half, result.parzelle_rings);
              result.produkte.baulinien = b;
              const dtxt = (k) => (b.gemessen && b[`${k}_dist_min_m`] != null) ? ` (naechste ${b[`${k}_dist_min_m`]} m)` : "";
              const teile = [
                b.baulinie.length && `${b.baulinie.length} Baulinie${dtxt("baulinie")}`,
                b.wald.length && `${b.wald.length} Waldabstand${dtxt("wald")}`,
                b.gewaesser.length && `${b.gewaesser.length} Gewaesserabstand${dtxt("gewaesser")}`,
                b.waldgrenze.length && `${b.waldgrenze.length} Waldgrenze${dtxt("waldgrenze")}`,
                b.gewaesserraum.length && `${b.gewaesserraum.length} Gewaesserraum${dtxt("gewaesserraum")}`,
              ].filter(Boolean);
              L(`   baulinien (±${half}m${b.gemessen ? ", Abstand gemessen" : ""}): ${teile.length ? teile.join(" · ") : "keine Linien/Abstaende im Fenster"}`);
              if (b.revision_laeuft) {
                const projTeile = Object.entries(b.proj).filter(([, v]) => v.length)
                  .map(([k, v]) => `${v.length} ${k}`).join(" · ");
                L(`   ⚠ LAUFENDE REVISION im Fenster (±${half}m): ${projTeile}`);
              }
              if (a.out.length) {
                const fn = `Baulinien-ZH_${result.bfs ?? "X"}_${result.parzelle ?? "X"}_${isoDate()}.json`;
                for (const dir of a.out) {
                  if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
                  const dest = join(dir, fn); writeFileSync(dest, JSON.stringify(b, null, 2)); result.files.push(dest);
                  L(`     -> ${dest}`);
                }
              }
            } else {
              L(`! Unbekanntes Produkt "${prod}" (gueltig: height,orthofoto,dtm,gebaeude,punktwolke,bauzonen,zonenplan,baulinien)`);
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
