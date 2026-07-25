#!/usr/bin/env node
/**
 * JANS Geo-Connector — Unternehmerfindung (v2)
 * ============================================
 * Setzt einen "Anker" am Bauplatz (Geocoding) und liefert die treffsichersten
 * Unternehmer je Gewerk — nach Vertrauens-Tier (Bewaehrung/Beziehung) UND Naehe.
 *
 * ZWEI MODI:
 *   1) DB-Modus (DEFAULT, der Treffsicherheits-Hebel)
 *      Liest die JANS-Stammdaten-DB (378 bewaehrte Firmen) + verifizierte
 *      Projektkontakte (R2) fuer das Gewerk, geocodiert jede Firma und rankt:
 *      Tier 1 verifiziert/empfohlen → Tier 2 stammliste/beworben → Tier 3 vorschlag,
 *      innerhalb jedes Tiers nach Luftlinie zum Bauplatz. `warnung` = ausgeschlossen.
 *   2) POI-Modus (--poi)
 *      Discovery fremder Firmen via Karten-Backend (OSM/Google) — fuer Luecken,
 *      wenn die DB fuer ein Gewerk in der Region zu duenn ist.
 *   --fill : DB-Modus + POI-Discovery anhaengen, bis --limit erreicht ist.
 *
 * BACKENDS (auto-detect): Google Places sobald GOOGLE_MAPS_API_KEY auffindbar
 * (env → ~/Developer/jans-ai-hub/.env → /Volumes/daten/jans-ai-hub/secrets/
 * google-maps.env), sonst OpenStreetMap (Nominatim + Overpass, gratis).
 *
 * AUFRUF:
 *   node geo-maps.mjs --gewerk sanitaer --adresse "Ankerstrasse 7, Zuerich" --plz 8004
 *   node geo-maps.mjs --gewerk elektro  --adresse "..." --plz 8001 --fill --limit 8 --json
 *   node geo-maps.mjs --gewerk gipser   --poi --lat 47.3747 --lon 8.5255
 *
 * FLAGS: --gewerk <slug> | --bkp <nr> | --query <text> (--query nur Google/POI)
 *        --adresse <text> | --lat/--lon | --plz <nnnn>
 *        --poi  --fill  --radius <km>  --limit <n>  --json  --no-cache
 *
 * Rules: identifikatoren-verifizieren (nichts erfinden — fehlende Kontakte bleiben
 *        "zu verifizieren"), umlaute-konvention. Distanz = Luftlinie (Haversine).
 */

import { readFileSync, writeFileSync, existsSync, readdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const UA = "jans-ai-hub-geo/2.0 (rj@raphaeljans.ch)";
const NAS = "/Volumes/daten/jans-ai-hub";
const STAMMDATEN = `${NAS}/skills/ausschreibung/anbieter/stammdaten`;
const OVERLAY_VERIFIZIERT = `${NAS}/skills/ausschreibung/anbieter/verifiziert-projektkontakte.md`;
const CACHE_FILE = join(__dirname, ".geocache.json");

// --- Gewerk → BKP (+ bevorzugte Stammdatei) -------------------------------
const GEWERKE = {
  sanitaer:     { bkp: "250", pick: "sanitaer", label: "Sanitaer",            osm: [["craft","plumber"],["craft","hvac"]], kw: "Sanitaer Installateur" },
  heizung:      { bkp: "240", label: "Heizung",                                osm: [["craft","hvac"],["craft","heating_engineer"],["craft","plumber"]], kw: "Heizung Installateur" },
  lueftung:     { bkp: "244", label: "Lueftung/Klima",                         osm: [["craft","hvac"],["craft","ventilation"]], kw: "Lueftung Klima" },
  elektro:      { bkp: "230", label: "Elektro",                                osm: [["craft","electrician"]], kw: "Elektriker Elektroinstallation" },
  gipser:       { bkp: "271", label: "Gipser/Trockenbau",                      osm: [["craft","plasterer"],["craft","drywall"]], kw: "Gipser Trockenbau" },
  maler:        { bkp: "285", label: "Maler",                                  osm: [["craft","painter"]], kw: "Malergeschaeft" },
  schreiner:    { bkp: "273", pick: "schreiner", label: "Schreiner",           osm: [["craft","carpenter"],["craft","joiner"]], kw: "Schreinerei" },
  zimmermann:   { bkp: "214", label: "Zimmermann/Holzbau",                     osm: [["craft","carpenter"]], kw: "Zimmerei Holzbau" },
  bodenleger:   { bkp: "281", pick: "bodenbelaege", label: "Bodenleger",       osm: [["craft","floorer"],["shop","flooring"]], kw: "Bodenleger Parkett" },
  plattenleger: { bkp: "281", pick: "wandbelaege", label: "Plattenleger",      osm: [["craft","tiler"]], kw: "Plattenleger Fliesenleger" },
  maurer:       { bkp: "211", label: "Maurer/Baumeister",                      osm: [["craft","builder"],["craft","stonemason"]], kw: "Baumeister Maurer" },
  dachdecker:   { bkp: "224", label: "Dachdecker/Spengler",                    osm: [["craft","roofer"]], kw: "Dachdecker Bedachung" },
  spengler:     { bkp: "224", label: "Spengler",                               osm: [["craft","tinsmith"],["craft","plumber"]], kw: "Spengler" },
  metallbau:    { bkp: "272", label: "Metallbau",                              osm: [["craft","metal_construction"],["craft","blacksmith"]], kw: "Metallbau Schlosserei" },
  fenster:      { bkp: "221", pick: "fenster", label: "Fensterbau",            osm: [["craft","window_construction"],["shop","window_blind"]], kw: "Fensterbau" },
  kueche:       { bkp: "273", pick: "kuechen", label: "Kuechenbau",            osm: [["shop","kitchen"]], kw: "Kuechenbau" },
  gartenbau:    { bkp: "411", label: "Gartenbau",                              osm: [["craft","gardener"],["landuse","plant_nursery"]], kw: "Gartenbau Landschaftsbau" },
};

// Status → Vertrauens-Tier (1 = hoechste Bewaehrung). warnung = ausschliessen.
const STATUS_TIER = { verifiziert: 1, empfohlen: 1, stammliste: 2, beworben: 2, vorschlag_dritter: 3, unverifiziert: 3 };
const TIER_LABEL = { 1: "bewaehrt/verifiziert", 2: "stammliste", 3: "vorschlag/neu" };

// --- Util ------------------------------------------------------------------
const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

function parseArgs(argv) {
  const a = {};
  for (let i = 2; i < argv.length; i++) {
    const k = argv[i];
    if (k.startsWith("--")) {
      const key = k.slice(2), next = argv[i + 1];
      if (next === undefined || next.startsWith("--")) a[key] = true;
      else { a[key] = next; i++; }
    }
  }
  return a;
}

function haversineKm(la1, lo1, la2, lo2) {
  const R = 6371, rad = (d) => (d * Math.PI) / 180;
  const dLa = rad(la2 - la1), dLo = rad(lo2 - lo1);
  const x = Math.sin(dLa / 2) ** 2 + Math.cos(rad(la1)) * Math.cos(rad(la2)) * Math.sin(dLo / 2) ** 2;
  return R * 2 * Math.asin(Math.sqrt(x));
}

function loadGoogleKey() {
  if (process.env.GOOGLE_MAPS_API_KEY) return process.env.GOOGLE_MAPS_API_KEY.trim();
  for (const f of [`${process.env.HOME}/Developer/jans-ai-hub/.env`, `${NAS}/secrets/google-maps.env`]) {
    if (existsSync(f)) {
      const m = readFileSync(f, "utf8").match(/^GOOGLE_MAPS_API_KEY=(.+)$/m);
      if (m && m[1].trim()) return m[1].trim();
    }
  }
  return "";
}

// --- Geocoding-Cache (auf NAS, alle Stationen profitieren) -----------------
let CACHE = {};
function loadCache() { try { CACHE = JSON.parse(readFileSync(CACHE_FILE, "utf8")); } catch { CACHE = {}; } }
function saveCache() { try { writeFileSync(CACHE_FILE, JSON.stringify(CACHE, null, 0)); } catch {} }

// --- Stammdaten-DB parsen --------------------------------------------------
function dbFilesForGewerk(g) {
  const files = readdirSync(STAMMDATEN).filter((f) => f.startsWith(`${g.bkp}-`) && f.endsWith(".md"));
  if (g.pick) {
    const picked = files.filter((f) => f.includes(g.pick));
    if (picked.length) return picked;
  }
  return files;
}

function parseStammdaten(g) {
  const out = [];
  for (const file of dbFilesForGewerk(g)) {
    const txt = readFileSync(join(STAMMDATEN, file), "utf8");
    for (const line of txt.split("\n")) {
      if (!line.trim().startsWith("|")) continue;
      const cells = line.split("|").map((c) => c.trim());
      // erwartet: ['', Firma, Ort/PLZ, Status, Bemerkung, '']
      if (cells.length < 5) continue;
      const [, firma, ort, status, bemerkung] = cells;
      if (!firma || firma === "Firma" || /^-+$/.test(firma)) continue; // Header/Separator
      out.push({ firma, ort: ort || "", status: (status || "stammliste").toLowerCase(), bemerkung: bemerkung || "", quelldatei: file });
    }
  }
  return out;
}

// Verifizierte Projektkontakte (R2) fuer diesen BKP — Kontakt-Anreicherung + Tier 1
function parseVerifiziert(bkp) {
  if (!existsSync(OVERLAY_VERIFIZIERT)) return [];
  const txt = readFileSync(OVERLAY_VERIFIZIERT, "utf8");
  const sections = txt.split(/^##\s+/m);
  const out = [];
  for (const sec of sections) {
    const head = sec.split("\n")[0] || "";
    if (!/BKP/.test(head)) continue;
    if (!head.replace(/\./g, " ").includes(bkp)) continue; // BKP-Match (auch "250.x")
    for (const line of sec.split("\n")) {
      if (!line.trim().startsWith("|")) continue;
      const c = line.split("|").map((x) => x.trim());
      if (c.length < 7) continue;
      const [, firma, ap, mail, tel, adr] = c;
      if (!firma || firma === "Firma" || /^-+$/.test(firma)) continue;
      out.push({ firma, ansprechpartner: ap, mail, telefon: tel, adresse: adr, status: "verifiziert", quelldatei: "verifiziert-projektkontakte.md" });
    }
  }
  return out;
}

function normFirma(s) { return s.toLowerCase().replace(/\b(ag|gmbh|sa| ?\+ ?co\.?|partner)\b/g, "").replace(/[^a-z0-9]/g, ""); }

// --- Geocoding eines Firmen-Eintrags --------------------------------------
async function geocodeFirma(firma, ort, backend, key, useCache) {
  const ck = `${backend}:${normFirma(firma)}|${(ort || "").toLowerCase()}`;
  if (useCache && CACHE[ck]) return CACHE[ck];
  let res = null;
  try {
    if (backend === "google") {
      const q = `${firma} ${ort} Schweiz`.trim();
      const url = `https://maps.googleapis.com/maps/api/place/textsearch/json?query=${encodeURIComponent(q)}&region=ch&language=de&key=${key}`;
      const d = await (await fetch(url)).json();
      const p = (d.results || [])[0];
      if (p) res = { lat: p.geometry.location.lat, lon: p.geometry.location.lng, formatted: p.formatted_address || "", rating: p.rating ? `${p.rating}★(${p.user_ratings_total || 0})` : "", place_id: p.place_id, precision: "firma" };
    } else {
      // OSM: erst Firma+Ort, dann Ort allein (grob)
      let d = await nominatim(`q=${encodeURIComponent(firma + ", " + ort)}&limit=1`);
      if (d.length) res = { lat: +d[0].lat, lon: +d[0].lon, formatted: d[0].display_name, precision: "firma" };
      else if (ort) {
        await sleep(1100);
        d = await nominatim(`q=${encodeURIComponent(ort)}&limit=1`);
        if (d.length) res = { lat: +d[0].lat, lon: +d[0].lon, formatted: d[0].display_name, precision: "ort" };
      }
      await sleep(1100); // Nominatim: max ~1 req/s
    }
  } catch { res = null; }
  if (useCache) { CACHE[ck] = res; }
  return res;
}

// --- Nominatim / Overpass --------------------------------------------------
async function nominatim(params) {
  const url = `https://nominatim.openstreetmap.org/search?${params}&countrycodes=ch&format=json&addressdetails=1`;
  return (await fetch(url, { headers: { "User-Agent": UA, Accept: "application/json" } })).json();
}

async function geocodeAnchorGoogle(adresse, key) {
  const d = await (await fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${encodeURIComponent(adresse)}&region=ch&key=${key}`)).json();
  if (d.status !== "OK" || !d.results?.length) throw new Error(`Google Geocode: ${d.status}`);
  const g = d.results[0];
  return { lat: g.geometry.location.lat, lon: g.geometry.location.lng, label: g.formatted_address };
}

async function geocodeAnchorOSM(adresse, expectPlz) {
  if (expectPlz) {
    const zone = await nominatim(`postalcode=${encodeURIComponent(expectPlz)}&limit=1`);
    if (zone.length && zone[0].boundingbox) {
      const [latMin, latMax, lonMin, lonMax] = zone[0].boundingbox.map(Number);
      const viewbox = `${lonMin},${latMax},${lonMax},${latMin}`;
      const strasse = adresse.split(",")[0].trim();
      const inBox = await nominatim(`q=${encodeURIComponent(strasse)}&limit=5&viewbox=${viewbox}&bounded=1`);
      const hit = inBox.find((x) => x.address?.postcode === String(expectPlz)) || inBox[0];
      if (hit) return { lat: +hit.lat, lon: +hit.lon, label: hit.display_name };
      return { lat: +zone[0].lat, lon: +zone[0].lon, label: zone[0].display_name + " (Strasse nicht gefunden — PLZ-Zentrum)", _ambiguous: true };
    }
  }
  const d = await nominatim(`q=${encodeURIComponent(adresse)}&limit=8`);
  if (expectPlz) { const m = d.find((x) => x.address?.postcode === String(expectPlz)); if (m) return { lat: +m.lat, lon: +m.lon, label: m.display_name }; }
  if (d.length) { const r = d.find((x) => x.address?.road) || d[0]; return { lat: +r.lat, lon: +r.lon, label: r.display_name, _ambiguous: d.length > 1 }; }
  throw new Error("Nominatim: keine Treffer");
}

async function searchOverpass(lat, lon, osmTags, radiusKm) {
  const r = Math.round(radiusKm * 1000);
  const clauses = osmTags.map(([k, v]) => `nwr(around:${r},${lat},${lon})["${k}"="${v}"];`).join("");
  const query = `[out:json][timeout:30];(${clauses});out center tags;`;
  const res = await fetch("https://overpass-api.de/api/interpreter", { method: "POST", headers: { "User-Agent": UA, Accept: "application/json", "Content-Type": "application/x-www-form-urlencoded" }, body: "data=" + encodeURIComponent(query) });
  if (!res.ok) throw new Error(`Overpass HTTP ${res.status}`);
  const d = await res.json();
  const out = [];
  for (const e of d.elements || []) {
    const t = e.tags || {}; const la = e.lat ?? e.center?.lat, lo = e.lon ?? e.center?.lon;
    if (la == null) continue;
    out.push({ firma: t.name || "(ohne Name)", ort: [t["addr:postcode"], t["addr:city"]].filter(Boolean).join(" "), telefon: t.phone || t["contact:phone"] || "", website: t.website || t["contact:website"] || "", distanz_km: +haversineKm(lat, lon, la, lo).toFixed(2), tier: 3, tierLabel: "POI (unverifiziert)", status: "unverifiziert", quelle: "OpenStreetMap (Overpass)" });
  }
  return out;
}

async function searchGooglePOI(lat, lon, kw, radiusKm, key) {
  const url = `https://maps.googleapis.com/maps/api/place/textsearch/json?query=${encodeURIComponent(kw)}&location=${lat},${lon}&radius=${Math.round(radiusKm * 1000)}&region=ch&language=de&key=${key}`;
  const d = await (await fetch(url)).json();
  if (!["OK", "ZERO_RESULTS"].includes(d.status)) throw new Error(`Google Places: ${d.status}`);
  const out = [];
  for (const p of d.results || []) {
    const la = p.geometry?.location?.lat, lo = p.geometry?.location?.lng;
    out.push({ firma: p.name, ort: p.formatted_address || "", telefon: "", website: "", rating: p.rating ? `${p.rating}★(${p.user_ratings_total || 0})` : "", distanz_km: la != null ? +haversineKm(lat, lon, la, lo).toFixed(2) : null, tier: 3, tierLabel: "POI (unverifiziert)", status: "unverifiziert", quelle: "Google Places" });
  }
  return out;
}

// --- DB-Modus: bewaehrte Firmen ranken ------------------------------------
async function runDbMode(g, anchor, backend, key, useCache, limit) {
  // 1) Stammdaten + verifizierte Kontakte sammeln, mergen (verifiziert hat Vorrang)
  const stamm = parseStammdaten(g);
  const verif = parseVerifiziert(g.bkp);
  const byName = new Map();
  for (const e of stamm) byName.set(normFirma(e.firma), { ...e });
  for (const v of verif) { // Anreicherung + Hochstufung auf Tier 1
    const k = normFirma(v.firma);
    const base = byName.get(k) || { firma: v.firma, ort: "", bemerkung: "" };
    byName.set(k, { ...base, ...v, status: "verifiziert", ort: v.adresse || base.ort });
  }
  let firms = [...byName.values()].filter((f) => f.status !== "warnung" && f.firma && f.firma.length > 1);
  const ausgeschlossen = stamm.filter((f) => f.status === "warnung");

  // 2) Geocoden + Distanz
  for (const f of firms) {
    const geo = await geocodeFirma(f.firma, f.ort, backend, key, useCache);
    if (geo) { f.distanz_km = +haversineKm(anchor.lat, anchor.lon, geo.lat, geo.lon).toFixed(2); f.precision = geo.precision; f.rating = geo.rating || ""; if (!f.telefon) f.telefon = ""; if (geo.formatted && !f.adresse) f.adresse = geo.formatted; }
    else { f.distanz_km = null; f.precision = "?"; }
  }
  saveCache();

  // 3) Ranking: Tier (Bewaehrung) primaer, Naehe sekundaer
  firms.forEach((f) => { f.tier = STATUS_TIER[f.status] || 3; f.tierLabel = TIER_LABEL[f.tier]; });
  firms.sort((a, b) => (a.tier - b.tier) || ((a.distanz_km ?? 1e9) - (b.distanz_km ?? 1e9)));
  return { firms, ausgeschlossen };
}

// --- POI-Modus -------------------------------------------------------------
async function runPoiMode(g, anchor, backend, key, startRadius, limit) {
  let radius = startRadius, results = [];
  while (radius <= 25) {
    results = backend === "google"
      ? await searchGooglePOI(anchor.lat, anchor.lon, g.kw || g.label, radius, key)
      : await searchOverpass(anchor.lat, anchor.lon, g.osm, radius);
    if (results.length >= Math.min(3, limit)) break;
    radius += 5;
  }
  results.sort((a, b) => (a.distanz_km ?? 1e9) - (b.distanz_km ?? 1e9));
  return { results, radius };
}

// --- Hauptlauf -------------------------------------------------------------
async function main() {
  const a = parseArgs(process.argv);
  const key = loadGoogleKey();
  const backend = key ? "google" : "osm";
  const useCache = !a["no-cache"];
  const limit = +(a.limit || 10);
  loadCache();

  // Gewerk aufloesen
  let g;
  if (a.gewerk && GEWERKE[a.gewerk]) g = GEWERKE[a.gewerk];
  else if (a.bkp) { g = Object.values(GEWERKE).find((x) => x.bkp === String(a.bkp)) || { bkp: String(a.bkp), label: `BKP ${a.bkp}`, osm: null, kw: null }; }
  else if (a.query) g = { label: a.query, kw: a.query, osm: null, bkp: null };
  else { console.error("Fehler: --gewerk <slug> | --bkp <nr> | --query <text> noetig.\nSlugs: " + Object.keys(GEWERKE).join(", ")); process.exit(1); }

  // Anker setzen
  let anchor;
  if (a.lat && a.lon) anchor = { lat: +a.lat, lon: +a.lon, label: `${a.lat}, ${a.lon}` };
  else if (a.adresse) anchor = backend === "google" ? await geocodeAnchorGoogle(a.adresse, key) : await geocodeAnchorOSM(a.adresse, a.plz);
  else { console.error("Fehler: --adresse <text> oder --lat/--lon noetig (Anker am Bauplatz)."); process.exit(1); }

  const wantPoi = a.poi || (!g.bkp && a.query);
  const report = { gewerk: g.label, bkp: g.bkp || null, anker: { adresse: anchor.label, lat: anchor.lat, lon: anchor.lon, mehrdeutig: anchor._ambiguous || false }, backend, modus: wantPoi ? "poi" : "db", kandidaten: [], ausgeschlossen: [] };

  if (wantPoi) {
    if (backend === "osm" && !g.osm) { console.error("Freitext (--query) braucht Google-Backend. Ohne Key: --gewerk verwenden."); process.exit(1); }
    const { results, radius } = await runPoiMode(g, anchor, backend, key, +(a.radius || 5), limit);
    report.radius_km = radius; report.kandidaten = results.slice(0, limit);
  } else {
    const { firms, ausgeschlossen } = await runDbMode(g, anchor, backend, key, useCache, limit);
    report.kandidaten = firms.slice(0, limit);
    report.ausgeschlossen = ausgeschlossen.map((f) => ({ firma: f.firma, ort: f.ort, grund: f.bemerkung }));
    // --fill: POI-Discovery anhaengen, wenn DB zu duenn
    if (a.fill && report.kandidaten.length < limit && (g.osm || backend === "google")) {
      const { results } = await runPoiMode(g, anchor, backend, key, +(a.radius || 5), limit);
      const have = new Set(report.kandidaten.map((f) => normFirma(f.firma)));
      for (const r of results) { if (report.kandidaten.length >= limit) break; if (!have.has(normFirma(r.firma))) { report.kandidaten.push(r); have.add(normFirma(r.firma)); } }
    }
  }

  if (a.json) { console.log(JSON.stringify(report, null, 2)); return; }

  // Lesbarer Bericht
  console.log(`\n  ANKER:  ${anchor.label}`);
  console.log(`          ${anchor.lat}, ${anchor.lon}` + (anchor._ambiguous ? "  ⚠ Adresse mehrdeutig — verifizieren" : ""));
  console.log(`  GEWERK: ${g.label}${g.bkp ? ` (BKP ${g.bkp})` : ""}  ·  Modus: ${report.modus.toUpperCase()}  ·  Backend: ${backend.toUpperCase()}  ·  Treffer: ${report.kandidaten.length}\n`);
  report.kandidaten.forEach((c, i) => {
    const dist = c.distanz_km != null ? `${c.distanz_km} km` : "Distanz ?";
    const prec = c.precision === "ort" ? " (ca., Ort-genau)" : "";
    console.log(`  ${String(i + 1).padStart(2)}. [${c.tierLabel || c.status}] ${c.firma}  —  ${dist}${prec}`);
    if (c.ort || c.adresse) console.log(`      ${c.adresse || c.ort}`);
    if (c.ansprechpartner) console.log(`      Ansprechpartner: ${c.ansprechpartner}`);
    if (c.mail || c.telefon) console.log(`      ${[c.mail, c.telefon].filter(Boolean).join("  ·  ")}`);
    if (c.website) console.log(`      ${c.website}`);
    if (c.rating) console.log(`      Google: ${c.rating}`);
    if (c.bemerkung) console.log(`      Notiz: ${c.bemerkung}`);
    console.log(`      Quelle: ${c.quelle || c.quelldatei || "Stammdaten"}`);
  });
  if (report.ausgeschlossen.length) {
    console.log(`\n  AUSGESCHLOSSEN (Status warnung — nicht einladen):`);
    report.ausgeschlossen.forEach((f) => console.log(`   ✗ ${f.firma}${f.ort ? `, ${f.ort}` : ""}  —  ${f.grund || ""}`));
  }
  console.log(`\n  Hinweis: Kontaktdaten ohne R2-Beleg vor Versand verifizieren (nichts erfinden).`);
  if (backend === "osm" && report.modus === "db") console.log(`  Tipp: Mit Google-Key werden Firmen praezise verortet (statt Ort-genau). set-google-key.sh.`);
  console.log("");
}

main().catch((e) => { console.error("Geo-Connector Fehler:", e.message); process.exit(1); });
