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
 *   --egrid <CHxxxxxxxxxxxx>      EGRID direkt setzen (ueberspringt Suche; ohne Koordinate ->
 *                                 --produkt naturgefahren nicht moeglich, dafuer --parzelle/--adresse nutzen)
 *   --oereb                       OEREB-Auszug als PDF herunterladen
 *   --produkt naturgefahren       Gefahrenkarte SZ (Run 55) — braucht Koordinate, also nur
 *                                 mit --parzelle/--adresse (nicht mit --egrid allein)
 *   --produkt grundwasser         Grundwasserschutz SZ (Run 55, 2026-07-22) — S1/S2/S3-Zonen +
 *                                 Gewaesserschutzbereich Au + Schutzareal; entscheidet ueber das
 *                                 Untergeschoss (Weisse Wanne/Aushub/Erdsonde); braucht Koordinate
 *   --radius <m>                  Suchradius Naturgefahren-/Grundwasser-Layer (Default 5 m, Punktlage entscheidet)
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

// --- Naturgefahren SZ (Run 55, 2026-07-21) -------------------------------------
// Endpunkt gefunden ueber opendata.swiss (CKAN-API package_show?id=gefahrenkarte1) -> Ressource
// "ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert" (WMS) verweist auf
// map.geo.sz.ch/mapserv_proxy. GetCapabilities dort existiert auch fuer WFS (Redirect von
// wfs.geo.sz.ch) und fuehrt exakt die Layer-Namen, die bisher nur als manueller WebGIS-Link
// bekannt waren (ch.sz.a012b.naturgefahrenkarte.*). WICHTIG: WFS 2.0.0 + TYPENAMES/OUTPUTFORMAT=
// geojson liefert HTTP 400 ("outputformat 'geojson' is not permitted") — der Dienst spricht nur
// WFS 1.1.0 + GML 3.1.1 (TYPENAME Singular, SRSNAME als urn:ogc:def:crs:EPSG::2056). Deshalb hier
// ein simpler GML-Attribut-Parser statt JSON. Live verifiziert am Benchmark Reckholdernstrasse 20
// Willerzell (E=2703371/N=1222906): 11 Gefahrenflaechen mit gemischten Rutsch-Gefaehrdungsstufen
// auf derselben Parzelle (deckt sich mit dem Objektschutzkonzept 26.09.2023, s. Wiki-Artikel);
// Negativkontrolle Wangen SZ Seeufer (E=2710588/N=1226218, flach) -> 0 Treffer, schema-valide.
const NATURGEFAHR_LAYER_SZ = {
  gefahrenflaechen: "ms:ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert", // Perimeter A, parzellenscharf
  hinweisflaechen: "ms:ch.sz.a012b.naturgefahrenkarte.hinweisflaechen.ueberlagert",   // Perimeter B, ausserhalb Siedlung
  erhebungsgebiet: "ms:ch.sz.a012b.naturgefahrenkarte.erhebungsgebiet",               // Kartierungsstand (analog ZH Layer 44.1)
};
const MAPSERV_PROXY_SZ = "https://map.geo.sz.ch/mapserv_proxy";
const RANG_HOCH = new Set(["mittlere Gefährdung", "erhebliche Gefährdung"]);

async function fetchGmlFeatures(typename, e, n, half) {
  const bbox = `${e - half},${n - half},${e + half},${n + half}`;
  const url = `${MAPSERV_PROXY_SZ}?SERVICE=WFS&VERSION=1.1.0&REQUEST=GetFeature`
    + `&TYPENAME=${encodeURIComponent(typename)}`
    + `&SRSNAME=${encodeURIComponent("urn:ogc:def:crs:EPSG::2056")}`
    + `&BBOX=${bbox},${encodeURIComponent("urn:ogc:def:crs:EPSG::2056")}`;
  const r = await fetch(url, { headers: { "User-Agent": UA } });
  if (!r.ok) throw new Error(`HTTP ${r.status} bei ${url}`);
  const xml = await r.text();
  if (xml.includes("ExceptionReport")) throw new Error(`WFS-Fehler (${typename}): ${xml.slice(0, 200)}`);
  // Ein <ms:LAYERNAME ...>...</ms:LAYERNAME>-Block je Feature; simple Attribute (kein Nested-GML
  // ausser <ms:geom>) via Regex herausziehen — kein XML-Parser-Package im Hub-Node vorausgesetzt.
  const localName = typename.replace(/^ms:/, "");
  const blockRe = new RegExp(`<ms:${localName}[^>]*>([\\s\\S]*?)</ms:${localName}>`, "g");
  const attrRe = /<ms:(?!geom\b)([a-zA-Z0-9_]+)>([^<]*)<\/ms:\1>/g;
  const out = [];
  let bm;
  while ((bm = blockRe.exec(xml))) {
    const attrs = {};
    let am;
    attrRe.lastIndex = 0;
    while ((am = attrRe.exec(bm[1]))) attrs[am[1]] = am[2];
    out.push(attrs);
  }
  return out;
}

// Radius klein (Default 5 m) — die Flaechen liegen direkt auf der Parzelle, Punktlage entscheidet
// (analog ZH-Naturgefahren/-Grundwasser; anders als Baulinien mit grossem Suchfenster).
async function fetchNaturgefahrenSz(e, n, half = 5) {
  const out = {};
  for (const [key, typ] of Object.entries(NATURGEFAHR_LAYER_SZ)) {
    try { out[key] = await fetchGmlFeatures(typ, e, n, half); }
    catch (err) { out[key] = { fehler: err.message }; }
  }
  const PROZESSE = ["lawine", "rutsch", "wasser", "steinschlag"];
  const stufen = new Set();
  const gf = Array.isArray(out.gefahrenflaechen) ? out.gefahrenflaechen : [];
  for (const f of gf) for (const p of PROZESSE) {
    const v = f[`${p}_gefahrenstufe_tx`];
    if (v && v !== "keine Gefährdung") stufen.add(v);
  }
  const RANG = { "erhebliche Gefährdung": 4, "mittlere Gefährdung": 3, "geringe Gefährdung": 2, "Restgefährdung": 1 };
  let massgebend = null;
  for (const s of stufen) if (!massgebend || (RANG[s] ?? 0) > (RANG[massgebend] ?? 0)) massgebend = s;
  return { ...out, treffer_gefahrenflaechen: gf.length, stufe_massgebend: massgebend, radius_m: half, layer: NATURGEFAHR_LAYER_SZ };
}

// --- Grundwasserschutz SZ (Run 55, 2026-07-22) ---------------------------------
// Zweites Grundlagen-Paar zur Naturgefahr (analog ZH-Run-54): entscheidet ueber das
// Untergeschoss (Weisse Wanne / Aushub / Erdwaermesonden) VOR dem ersten Strich. Endpunkt
// derselbe WFS wie Naturgefahren (map.geo.sz.ch/mapserv_proxy, WFS 1.1.0 + GML). Layer ueber
// den Volltext-Scan des GetCapabilities (1'016 FeatureTypes) unter dem AMT-Themencode a013a
// «planerischer Gewaesserschutz» gefunden — NICHT unter einem "grundwasser"-Layernamen (gleiche
// ZH-Lehre: nach Inhalt scannen, nicht nach dem Fachwort). Schema per DescribeFeatureType belegt:
// gwszone traegt typ (S1/S2/S3) + bezeichnung + wasserversorger + rechtskraftdatum; der Bereich Au
// ist ein reines Praesenz-Polygon (nur identifikator). Live verifiziert 2026-07-22:
//   - S3-Treffer Galgenen 439 (BFS 1342): «Altstofel Ruchweid», Skiklub Galgenen, rk 2011-10-18
//   - Bereich-Au-Treffer Wangen 25 (Talboden Obersee), aber KEINE S-Zone
//   - Willerzell 3301: weder S-Zone noch Bereich Au (Negativbefund)
const GRUNDWASSER_LAYER_SZ = {
  schutzzone: "ms:ch.sz.a013a.planerischergewaesserschutz.gwszonen.gwszone.inkraft",       // rechtskraeftige S1/S2/S3
  schutzzone_prov: "ms:ch.sz.a013a.planerischergewaesserschutz.gwszonen.gwszone.provisorisch", // provisorische Zonen
  schutzareal: "ms:ch.sz.a013a.planerischergewaesserschutz.gwszonen.gwsareal",             // Schutzareal (Vorsorge)
  bereich_au: "ms:ch.sz.a013a.planerischergewaesserschutz.gsbereiche.bereich.au",          // Gewaesserschutzbereich Au
};

async function fetchGrundwasserSz(e, n, half = 5) {
  const out = {};
  for (const [key, typ] of Object.entries(GRUNDWASSER_LAYER_SZ)) {
    try { out[key] = await fetchGmlFeatures(typ, e, n, half); }
    catch (err) { out[key] = { fehler: err.message }; }
  }
  const zonen = [];
  for (const f of (Array.isArray(out.schutzzone) ? out.schutzzone : []))
    zonen.push({ typ: f.typ || null, bezeichnung: f.bezeichnung || null,
                 wasserversorger: f.wasserversorger || null, rechtskraftdatum: f.rechtskraftdatum || null, status: "inkraft" });
  for (const f of (Array.isArray(out.schutzzone_prov) ? out.schutzzone_prov : []))
    zonen.push({ typ: f.typ || null, bezeichnung: f.bezeichnung || null,
                 wasserversorger: f.wasserversorger || null, rechtskraftdatum: f.rechtskraftdatum || null, status: "provisorisch" });
  const areal = (Array.isArray(out.schutzareal) ? out.schutzareal : []).length > 0;
  const bereichAu = (Array.isArray(out.bereich_au) ? out.bereich_au : []).length > 0;
  const RANG = { S1: 4, S2: 3, S3: 2 }; // S1 am strengsten
  let zone_massgebend = null;
  for (const z of zonen) if (z.typ && (!zone_massgebend || (RANG[z.typ] ?? 0) > (RANG[zone_massgebend] ?? 0))) zone_massgebend = z.typ;
  return { ...out, zonen, zone_massgebend, schutzareal: areal, bereich_au: bereichAu, radius_m: half, layer: GRUNDWASSER_LAYER_SZ };
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
                   gemeinde: null, source: null, east: null, north: null, oereb: null,
                   produkte: {}, files: [] };

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
      Object.assign(result, { egrid: h.egrid, parzelle: h.parzelle, bfs: h.bfs, gemeinde: h.label, source: "parzelle", east: h.east, north: h.north });
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
      Object.assign(result, { egrid: p.egrid, parzelle: p.parzelle, bfs: p.bfs, gemeinde: p.gemeinde, source: "adresse", east: hit.east, north: hit.north });
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

    // ---- Produkte (bisher nur naturgefahren) ----
    if (a.produkt) {
      const prods = String(a.produkt).split(",").map((s) => s.trim());
      for (const prod of prods) {
        if (prod === "naturgefahren") {
          if (result.east == null || result.north == null)
            throw new Error(`--produkt naturgefahren braucht eine Koordinate — mit --parzelle oder --adresse suchen (nicht --egrid allein).`);
          L(`3) Naturgefahren SZ (map.geo.sz.ch/mapserv_proxy, ±${a.radius || 5} m) ...`);
          const ng = await fetchNaturgefahrenSz(result.east, result.north, Number(a.radius) || 5);
          result.produkte.naturgefahren = ng;
          if (ng.stufe_massgebend) {
            L(`   naturgefahren: massgebende Stufe — ${ng.stufe_massgebend} (${ng.treffer_gefahrenflaechen} Flaechen im Suchfenster, mehrere Prozesse/Stufen moeglich)`);
            if (RANG_HOCH.has(ng.stufe_massgebend))
              L(`   ⚠ Objektschutz pruefen: § 20/17 PBG SZ, SIA 261/261-1-Schutzziele, sensible Nutzungen (Alters-/Pflegeheim) besonders kritisch in blauer/roter Zone.`);
          } else {
            L(`   naturgefahren (±${a.radius || 5}m): keine kartierte Gefahrenflaeche (Negativbefund — Erhebungsgebiet-Layer zeigt den Kartierungsstand, nicht mit "nicht kartiert" verwechseln)`);
          }
        } else if (prod === "grundwasser") {
          if (result.east == null || result.north == null)
            throw new Error(`--produkt grundwasser braucht eine Koordinate — mit --parzelle oder --adresse suchen (nicht --egrid allein).`);
          L(`3) Grundwasserschutz SZ (map.geo.sz.ch/mapserv_proxy, ±${a.radius || 5} m) ...`);
          const gw = await fetchGrundwasserSz(result.east, result.north, Number(a.radius) || 5);
          result.produkte.grundwasser = gw;
          if (gw.zone_massgebend) {
            for (const z of gw.zonen)
              L(`   grundwasser: Schutzzone ${z.typ ?? "?"} «${z.bezeichnung ?? "?"}» (${z.status}${z.wasserversorger ? ", " + z.wasserversorger : ""}${z.rechtskraftdatum ? ", rk " + z.rechtskraftdatum : ""})`);
            if (gw.zone_massgebend === "S1")
              L(`   ⚠ S1 (Fassungsbereich): faktisches Bauverbot — nur der Wasserfassung dienende Bauten (GSchG Art. 20, GSchV Anh. 4).`);
            else if (gw.zone_massgebend === "S2")
              L(`   ⚠ S2 (engere Schutzzone): Bauten stark eingeschraenkt, UG/Aushub ins Grundwasser + Erdwaermesonden i.d.R. unzulaessig — AWN/AfU-Vorabklaerung noetig.`);
            else if (gw.zone_massgebend === "S3")
              L(`   S3 (weitere Schutzzone): Bauen moeglich, aber Auflagen (Aushubtiefe/Grundwasserabstand, Erdwaermesonden meist verboten, Tank-/Lageranlagen eingeschraenkt; GSchG/GSchV, AWN/AfU SZ).`);
          } else if (gw.bereich_au) {
            L(`   grundwasser: Gewaesserschutzbereich Au (nutzbares Grundwasservorkommen) — keine S-Schutzzone, aber Anlagen/Aushub/Versickerung im Bereich Au bewilligungspflichtig (GSchG Art. 19, GSchV Anh. 4 Ziff. 21).`);
          } else if (gw.schutzareal) {
            L(`   grundwasser: ⚠ Grundwasserschutzareal (Vorsorge fuer kuenftige Fassung) — Nutzungsbeschraenkungen moeglich, AWN/AfU pruefen.`);
          } else {
            L(`   grundwasser (±${a.radius || 5}m): keine Schutzzone / kein Bereich Au / kein Areal — Parzelle ausserhalb (Negativbefund, Endpunkt positiv-verifiziert Run 55).`);
          }
          if (a.out && a.out.length) {
            const fn = `Grundwasserschutz-SZ_${result.bfs ?? "SZ"}_${result.parzelle ?? "X"}_${isoDate()}.json`;
            for (const dir of a.out) {
              if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
              const dest = join(dir, fn);
              writeFileSync(dest, JSON.stringify(gw, null, 2));
              result.files.push(dest);
              L(`   -> abgelegt: ${dest}`);
            }
          }
        } else {
          L(`   ! Unbekanntes Produkt fuer Kt. SZ: "${prod}" (hinterlegt: "naturgefahren", "grundwasser")`);
        }
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
