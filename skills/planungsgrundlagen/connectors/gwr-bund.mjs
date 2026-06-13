#!/usr/bin/env node
/**
 * JANS GWR-Bund-Connector — Planungsgrundlagen (v1)
 * =================================================
 * Beschafft zu einem Gebaeude die amtlichen Daten aus dem eidgenoessischen
 * Gebaeude- und Wohnungsregister (GWR) ueber den login-freien Geodienst
 * api3.geo.admin.ch (Layer ch.bfs.gebaeude_wohnungs_register) und dekodiert die
 * wichtigsten GWR-Merkmalscodes (Status, Kategorie, Klasse, Bauperiode,
 * Waermeerzeuger + Energietraeger Heizung/Warmwasser) in Klartext.
 *
 * Validiert 2026-06-13 am Fall B26-00705.01 (Universitaets-Kinderspital Zuerich,
 * Lenggstrasse 30, EGID 302064023): Geodienst liefert Volumen, Energiebezugs-
 * flaeche, Waermeerzeuger usw. — exakt die Basis fuer den Energienachweis (EVEN),
 * Kostenschaetzung und Machbarkeit.
 *
 * ──────────────────────────────────────────────────────────────────────────────
 * WICHTIG — EPROID ist NICHT mit diesem Connector beziehbar:
 *   Die EPROID (eidg. Bauprojektidentifikator, gehoert zur GWR-Entitaet
 *   "constructionWork") ist im oeffentlichen Geodienst NICHT enthalten und ueber
 *   keine login-freie Schnittstelle abrufbar (madd.bfs.admin.ch / eCH-0206
 *   "GWR-Daten an Dritte" verlangen Autorisierung). Belegt 2026-06-13.
 *   Fuer Gemeinden mit EIGENEM GWR (u.a. Stadt Zuerich) wird die EPROID NUR vom
 *   fuehrenden Amt vergeben/herausgegeben. Bezugsweg Stadt Zuerich:
 *     - Amt fuer Baubewilligungen (AfB), fuer laufende Baugesuche
 *     - Statistik Stadt Zuerich, GWR / amtliche Wohnungsnummern
 *   Dieser Connector gibt die EPROID daher NICHT aus, sondern weist den
 *   korrekten Behoerdenweg + den Bauprojekt-Kontext (gstat/gbaup) aus.
 *   (Rule: identifikatoren-verifizieren — keine erfundene EPROID.)
 * ──────────────────────────────────────────────────────────────────────────────
 *
 * AUFRUF:
 *   node gwr-bund.mjs --egid 302064023                 # direkt per EGID (eindeutig)
 *   node gwr-bund.mjs --adresse "Lenggstrasse 30 8008 Zürich"   # Adresse -> Gebaeude
 *   node gwr-bund.mjs --egrid CH267999915472           # alle Gebaeude der Parzelle listen
 *   node gwr-bund.mjs --egid 302064023 --json          # maschinenlesbar
 *   node gwr-bund.mjs --egid 302064023 --out "/pfad/Projekt"    # Datensteckbrief (MD) ablegen
 *
 * FLAGS:
 *   --egid <n>               EGID direkt (eindeutigster Weg)
 *   --adresse <text>         "Strasse Nr PLZ Ort" -> Geocoding -> identify GWR
 *   --plz <nnnn>             schaerft die Adresssuche
 *   --egrid <CHxxxxxxxxxxxx> EGRID -> listet ALLE Gebaeude der Parzelle (mehrdeutig!)
 *   --out <dir>             Zielordner fuer den Datensteckbrief (mehrfach moeglich)
 *   --json                   Ergebnis als JSON
 *   --quiet                  nur Resultat, kein Log
 *
 * Rules: identifikatoren-verifizieren, umlaute-konvention, dateinamen-konvention.
 */

import { writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join } from "node:path";

const UA = "jans-ai-hub-gwr/1.0 (rj@raphaeljans.ch)";
const LAYER = "ch.bfs.gebaeude_wohnungs_register";
const BASE = "https://api3.geo.admin.ch/rest/services";

// --- GWR-Merkmalscodes (Merkmalskatalog 4.2; nur belastbar dekodierte Felder) ---
const CODES = {
  gstat: { // Gebaeudestatus
    1001: "projektiert", 1002: "bewilligt", 1003: "im Bau", 1004: "bestehend",
    1005: "nicht nutzbar", 1007: "abgebrochen", 1008: "nicht realisiert",
  },
  gkat: { // Gebaeudekategorie
    1010: "Provisorische Unterkunft",
    1020: "Gebaeude mit ausschliesslicher Wohnnutzung",
    1030: "Wohngebaeude mit Nebennutzung",
    1040: "Gebaeude mit teilweiser Wohnnutzung",
    1060: "Gebaeude ohne Wohnnutzung",
    1080: "Sonderbau",
  },
  gklas: { // Gebaeudeklasse (EUROSTAT)
    1110: "Gebaeude mit einer Wohnung",
    1121: "Gebaeude mit zwei Wohnungen",
    1122: "Gebaeude mit drei oder mehr Wohnungen",
    1130: "Wohngebaeude fuer Gemeinschaften",
    1211: "Hotelgebaeude", 1212: "Andere Gebaeude fuer kurzfristige Beherbergung",
    1220: "Buerogebaeude", 1230: "Gross- und Einzelhandelsgebaeude",
    1231: "Restaurants und Bars (eigenstaendig)",
    1241: "Gebaeude des Verkehrs-/Nachrichtenwesens",
    1242: "Garagengebaeude", 1251: "Industriegebaeude",
    1252: "Behaelter, Silos und Lagergebaeude",
    1261: "Gebaeude fuer Kultur-/Freizeitzwecke",
    1262: "Museen und Bibliotheken",
    1263: "Schul-/Hochschulgebaeude, Forschungseinrichtungen",
    1264: "Krankenhaeuser / Facheinrichtungen des Gesundheitswesens",
    1265: "Sporthallen", 1271: "Landwirtschaftliche Betriebsgebaeude",
    1272: "Kirchen und sonstige Sakralbauten",
    1273: "Denkmaeler / unter Denkmalschutz",
    1274: "Sonstige Hochbauten, anderweitig nicht genannt",
    1275: "Andere Gebaeude fuer die kollektive Unterkunft",
    1276: "Gebaeude fuer die Tierhaltung",
    1277: "Gebaeude fuer den Pflanzenbau",
    1278: "Andere landwirtschaftliche Gebaeude",
  },
  gbaup: { // Bauperiode
    8011: "vor 1919", 8012: "1919-1945", 8013: "1946-1960", 8014: "1961-1970",
    8015: "1971-1980", 8016: "1981-1985", 8017: "1986-1990", 8018: "1991-1995",
    8019: "1996-2000", 8020: "2001-2005", 8021: "2006-2010", 8022: "2011-2015",
    8023: "2016-2020", 8024: "2021-2025",
  },
  waermeerzeuger: { // gwaerzh1/2 — Waermeerzeuger Heizung
    7400: "keine", 7410: "Waermepumpe", 7411: "Waermepumpe (fuer ein Gebaeude)",
    7420: "Thermische Solaranlage", 7430: "Heizkessel (generisch)",
    7431: "Heizkessel (nicht kondensierend)", 7432: "Heizkessel (kondensierend)",
    7440: "Ofen", 7450: "Waermekraftkopplungsanlage (WKK)",
    7460: "Elektrospeicher-Zentralheizung", 7461: "Elektro direkt",
    7470: "Waermetauscher (Fernwaerme)", 7480: "andere", 7499: "unbestimmt",
  },
  waermeerzeuger_ww: { // gwaerzw1/2 — Waermeerzeuger Warmwasser (eigene Codeliste)
    7600: "keine", 7610: "Waermepumpe", 7620: "Thermische Solaranlage",
    7630: "Zentraler Wassererwaermer (mit Heizung gekoppelt)",
    7634: "Zentraler Wassererwaermer (getrennt von Heizung)",
    7640: "Elektroboiler / dezentraler elektr. Wassererwaermer",
    7650: "Waermekraftkopplungsanlage (WKK)",
    7660: "Waermetauscher (Fernwaerme)", 7680: "andere", 7699: "unbestimmt",
  },
  energietraeger: { // genh1/2, genw1/2 — Energie-/Waermequelle
    7500: "keine", 7501: "Luft", 7510: "Erdwaerme (generisch)",
    7511: "Erdwaermesonde", 7512: "Erdregister",
    7513: "Wasser (Grund-/Oberflaechen-/Abwasser)", 7520: "Gas", 7530: "Heizoel",
    7540: "Holz (generisch)", 7541: "Holz (Stueckholz)", 7542: "Holz (Pellets)",
    7543: "Holz (Schnitzel)", 7550: "Abwaerme (innerhalb Gebaeude)",
    7560: "Elektrizitaet", 7570: "Sonne (thermisch)",
    7580: "Fernwaerme (generisch)", 7581: "Fernwaerme (Hochtemperatur)",
    7582: "Fernwaerme (Niedertemperatur)", 7598: "unbestimmt", 7599: "keine",
  },
};
function dec(map, code) {
  if (code === null || code === undefined || code === "") return null;
  const n = Number(code);
  return map[n] ? `${map[n]} (${n})` : `Code ${n}`;
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
function isoDate() { return new Date().toISOString().slice(0, 10); }
const num = (v) => (v === null || v === undefined || v === "" ? null : Number(v));
const fmt = (v) => (v === null ? "—" : Number(v).toLocaleString("de-CH"));

// --- Bezugswege ----------------------------------------------------------------
async function byEgid(egid) {
  const url = `${BASE}/all/MapServer/find?layer=${LAYER}`
    + `&searchField=egid&searchText=${encodeURIComponent(egid)}&returnGeometry=false&sr=2056`;
  const d = await getJson(url);
  const f = (d.results || []).find((r) => String(r.attributes?.egid) === String(egid)) || (d.results || [])[0];
  return f ? f.attributes : null;
}
async function byEgrid(egrid) {
  const url = `${BASE}/all/MapServer/find?layer=${LAYER}`
    + `&searchField=egrid&searchText=${encodeURIComponent(egrid)}&returnGeometry=false&sr=2056`;
  const d = await getJson(url);
  return (d.results || []).map((r) => r.attributes);
}
async function byAdresse(text, plz) {
  const search = plz ? `${text} ${plz}` : text;
  const g = await getJson(`${BASE}/api/SearchServer`
    + `?searchText=${encodeURIComponent(search)}&type=locations&origins=address&sr=2056&limit=1`);
  const a = (g.results || [])[0]?.attrs;
  if (!a) throw new Error(`Keine Adresse gefunden fuer "${search}".`);
  const e = a.y, n = a.x;
  const ext = `${e - 50},${n - 50},${e + 50},${n + 50}`;
  const id = await getJson(`${BASE}/all/MapServer/identify`
    + `?geometry=${e},${n}&geometryType=esriGeometryPoint&sr=2056`
    + `&tolerance=5&imageDisplay=100,100,96&mapExtent=${ext}`
    + `&layers=all:${LAYER}&returnGeometry=false`);
  const hits = (id.results || []).map((r) => r.attributes);
  return { coord: { east: e, north: n, label: (a.label || "").replace(/<[^>]+>/g, "").trim() }, hits };
}

// --- Aufbereitung ---------------------------------------------------------------
function shape(at) {
  return {
    identifikation: {
      egid: at.egid ?? null,
      egrid: at.egrid ?? null,
      parzelle: at.lparz ?? null,
      grundbuchkreis: at.lgbkr ?? null,
      gebaeudenummer: at.gebnr ?? null,
      bezeichnung: at.gbez ?? null,
    },
    lage: {
      adresse: at.strname_deinr ?? null,
      plz: at.dplz4 ?? null,
      ort: at.ggdename ?? at.dplzname ?? null,
      gemeinde_bfs: at.ggdenr ?? null,
      kanton: at.gdekt ?? null,
      koordinaten_lv95: at.gkode && at.gkodn ? { e: at.gkode, n: at.gkodn } : null,
    },
    gebaeude: {
      status: dec(CODES.gstat, at.gstat),
      kategorie: dec(CODES.gkat, at.gkat),
      klasse: dec(CODES.gklas, at.gklas),
      bauperiode: dec(CODES.gbaup, at.gbaup),
      baujahr: num(at.gbauj),
      baumonat: num(at.gbaum),
      abbruchjahr: num(at.gabbj),
      geschosse_oberirdisch: num(at.gastw),
      anzahl_wohnungen: num(at.ganzwhg),
      gebaeudeflaeche_m2: num(at.garea),
      gebaeudevolumen_m3: num(at.gvol),
      gebaeudevolumen_norm: at.gvolnorm ?? null,
    },
    energie: {
      energiebezugsflaeche_m2: num(at.gebf),
      heizung1: { erzeuger: dec(CODES.waermeerzeuger, at.gwaerzh1), traeger: dec(CODES.energietraeger, at.genh1), aktualisiert: at.gwaerdath1 ?? null },
      heizung2: { erzeuger: dec(CODES.waermeerzeuger, at.gwaerzh2), traeger: dec(CODES.energietraeger, at.genh2), aktualisiert: at.gwaerdath2 ?? null },
      warmwasser1: { erzeuger: dec(CODES.waermeerzeuger_ww, at.gwaerzw1), traeger: dec(CODES.energietraeger, at.genw1), aktualisiert: at.gwaerdatw1 ?? null },
      warmwasser2: { erzeuger: dec(CODES.waermeerzeuger_ww, at.gwaerzw2), traeger: dec(CODES.energietraeger, at.genw2), aktualisiert: at.gwaerdatw2 ?? null },
    },
    bauprojekt_eproid: {
      eproid: null,
      hinweis: "EPROID nicht im oeffentlichen GWR enthalten — nur vom fuehrenden Amt beziehbar.",
      bezugsweg: at.gdekt === "ZH" && Number(at.ggdenr) === 261
        ? "Stadt Zuerich (eigenes GWR): Amt fuer Baubewilligungen (AfB) fuer laufende Baugesuche; bzw. Statistik Stadt Zuerich (GWR / amtliche Wohnungsnummern)."
        : "Fuehrende Gemeinde-/Kantonsstelle (GWR-Nachfuehrung) anfragen.",
      gebaeudestatus: dec(CODES.gstat, at.gstat),
    },
    _raw: at,
  };
}

function steckbrief(s) {
  const i = s.identifikation, l = s.lage, g = s.gebaeude, e = s.energie, b = s.bauprojekt_eproid;
  return [
    `# GWR-Datensteckbrief — EGID ${i.egid}`,
    ``,
    `Quelle: Eidg. Gebaeude- und Wohnungsregister (GWR), Geodienst api3.geo.admin.ch`,
    `Layer ch.bfs.gebaeude_wohnungs_register · Stand ${isoDate()}`,
    ``,
    `## Identifikation`,
    `- EGID: ${i.egid ?? "—"}`,
    `- EGRID: ${i.egrid ?? "—"}`,
    `- Parzelle: ${i.parzelle ?? "—"} (Grundbuchkreis ${i.grundbuchkreis ?? "—"})`,
    `- Bezeichnung: ${i.bezeichnung ?? "—"}`,
    ``,
    `## Lage`,
    `- Adresse: ${l.adresse ?? "—"}, ${l.plz ?? ""} ${l.ort ?? ""}`,
    `- Gemeinde (BFS): ${l.ort ?? "—"} (${l.gemeinde_bfs ?? "—"}), Kanton ${l.kanton ?? "—"}`,
    `- Koordinaten LV95: ${l.koordinaten_lv95 ? `${l.koordinaten_lv95.e} / ${l.koordinaten_lv95.n}` : "—"}`,
    ``,
    `## Gebaeude`,
    `- Status: ${g.status ?? "—"}`,
    `- Kategorie: ${g.kategorie ?? "—"}`,
    `- Klasse: ${g.klasse ?? "—"}`,
    `- Bauperiode / Baujahr: ${g.bauperiode ?? "—"} / ${g.baujahr ?? "—"}${g.baumonat ? "-" + String(g.baumonat).padStart(2, "0") : ""}`,
    `- Geschosse oberirdisch: ${g.geschosse_oberirdisch ?? "—"}`,
    `- Anzahl Wohnungen: ${g.anzahl_wohnungen ?? "—"}`,
    `- Gebaeudeflaeche: ${fmt(g.gebaeudeflaeche_m2)} m2`,
    `- Gebaeudevolumen: ${fmt(g.gebaeudevolumen_m3)} m3${g.gebaeudevolumen_norm ? ` (Norm ${g.gebaeudevolumen_norm})` : ""}`,
    ``,
    `## Energie (Basis Energienachweis / EVEN)`,
    `- Energiebezugsflaeche (EBF): ${fmt(e.energiebezugsflaeche_m2)} m2`,
    `- Heizung 1: ${e.heizung1.erzeuger ?? "—"} · ${e.heizung1.traeger ?? "—"}${e.heizung1.aktualisiert ? ` (Stand ${e.heizung1.aktualisiert})` : ""}`,
    `- Heizung 2: ${e.heizung2.erzeuger ?? "—"} · ${e.heizung2.traeger ?? "—"}`,
    `- Warmwasser 1: ${e.warmwasser1.erzeuger ?? "—"} · ${e.warmwasser1.traeger ?? "—"}`,
    `- Warmwasser 2: ${e.warmwasser2.erzeuger ?? "—"} · ${e.warmwasser2.traeger ?? "—"}`,
    ``,
    `## Bauprojekt / EPROID`,
    `- EPROID: nicht maschinell beziehbar`,
    `- ${b.hinweis}`,
    `- Bezugsweg: ${b.bezugsweg}`,
    `- Gebaeudestatus (Kontext): ${b.gebaeudestatus ?? "—"}`,
    ``,
  ].join("\n");
}

// --- Main ----------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);
  try {
    let attrs = null, parzellenListe = null, coord = null;

    if (a.egid) {
      L(`GWR-Abfrage per EGID ${a.egid} ...`);
      attrs = await byEgid(a.egid);
      if (!attrs) throw new Error(`Kein GWR-Gebaeude zu EGID ${a.egid}.`);
    } else if (a.adresse) {
      L(`GWR-Abfrage per Adresse "${a.adresse}" ...`);
      const r = await byAdresse(a.adresse, a.plz);
      coord = r.coord;
      L(`   -> ${coord.label} (E ${coord.east} / N ${coord.north})`);
      if (!r.hits.length) throw new Error(`Kein GWR-Gebaeude an Adresse "${a.adresse}".`);
      if (r.hits.length > 1) {
        // mehrere Gebaeude am Punkt -> auflisten, nicht raten
        parzellenListe = r.hits;
        L(`   ! ${r.hits.length} Gebaeude getroffen — bitte EGID waehlen (siehe Liste).`);
      } else {
        attrs = r.hits[0];
      }
    } else if (a.egrid) {
      L(`GWR-Abfrage per EGRID ${a.egrid} (alle Gebaeude der Parzelle) ...`);
      parzellenListe = await byEgrid(a.egrid);
      if (!parzellenListe.length) throw new Error(`Kein GWR-Gebaeude zu EGRID ${a.egrid}.`);
    } else {
      throw new Error("Bitte --egid <n>, --adresse \"...\" oder --egrid <CH...> angeben.");
    }

    // Mehrdeutig: Liste ausgeben, keine Einzelauswahl erzwingen
    if (parzellenListe && !attrs) {
      const liste = parzellenListe.map((at) => ({
        egid: at.egid, adresse: at.strname_deinr, bezeichnung: at.gbez,
        status: dec(CODES.gstat, at.gstat), klasse: dec(CODES.gklas, at.gklas),
      }));
      if (a.json) { process.stdout.write(JSON.stringify({ ok: true, mehrdeutig: true, anzahl: liste.length, gebaeude: liste }, null, 2) + "\n"); }
      else {
        process.stdout.write(`\n${liste.length} Gebaeude — bitte mit --egid praezisieren:\n`);
        for (const g of liste) process.stdout.write(`  EGID ${g.egid}  ${g.adresse ?? ""}  ${g.bezeichnung ? "· " + g.bezeichnung : ""}  [${g.status ?? ""}]\n`);
        process.stdout.write(`\n`);
      }
      process.exit(0);
    }

    const s = shape(attrs);
    const files = [];
    if (a.out.length) {
      const md = steckbrief(s);
      const name = `GWR-Datensteckbrief_${s.identifikation.egid}_${isoDate()}.md`;
      for (const dir of a.out) {
        if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
        const dest = join(dir, name);
        writeFileSync(dest, md);
        files.push(dest);
        L(`   -> abgelegt: ${dest}`);
      }
    }

    if (a.json) {
      process.stdout.write(JSON.stringify({ ok: true, coord, ...s, files }, null, 2) + "\n");
    } else {
      process.stdout.write("\n" + steckbrief(s));
      if (files.length) process.stdout.write(`Abgelegt:\n${files.map((f) => "  " + f).join("\n")}\n`);
    }
    process.exit(0);
  } catch (e) {
    if (a.json) process.stdout.write(JSON.stringify({ ok: false, error: e.message }, null, 2) + "\n");
    else process.stderr.write(`FEHLER: ${e.message}\n`);
    process.exit(1);
  }
})();
