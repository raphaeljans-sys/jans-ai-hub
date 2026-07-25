#!/usr/bin/env node
/**
 * JANS Geoshop-ZH-Connector — Datenbezug Geodatenshop Kt. Zuerich (v1)
 * ====================================================================
 * Bezieht Vektor-/Rasterprodukte des kantonalen Geodatenshops ueber die
 * offizielle, login-freie REST-API ("OGAPI", INSER/ARE Geoinformation):
 *
 *   GET  https://geoservices.zh.ch/geoshopapi/v1/products            Produkte+Formate+Gemeinden
 *   POST https://geoservices.zh.ch/geoshopapi/v1/orders              Bestellung (asynchron)
 *   GET  https://geoservices.zh.ch/geoshopapi/v1/orders/<id>         Status (QUEUED/WORKING/SUCCESS)
 *   GET  https://geoservices.zh.ch/geoshopapi/v1/orders/<id>/download  Liefer-Zip
 *
 * Doku: zh.ch "rest_schnittstelle_ogd_interface.pdf" (REST API v1.2.0, 2018).
 * Validiert 11.06.2026: Produkt 10016 "Amtliche Vermessung - Datenmodell ZH (Standard) (OGD)"
 * mit Format 25 = DXF (.dxf) — das ist der JANS-Standardbezug "Grundstueckkataster"
 * (Lieferung: <bfs>-<gemeinde>-gds.dxf + Lieferschein.pdf, wie die manuellen Bezuege
 * Regensdorf/Wald/Niederhasli auf SharePoint PL - 01 Kartenportale/Grundstueckkataster).
 * Hinweis: DWG bietet der Shop NICHT an — DXF ist das offizielle CAD-Austauschformat.
 *
 * AUFRUF:
 *   node geoshop-zh.mjs --list                                        # Produkte/Formate
 *   node geoshop-zh.mjs --list --filter vermessung                    # gefiltert
 *   node geoshop-zh.mjs --gemeinde "Langnau am Albis" --out "/pfad"   # AV-DXF ganze Gemeinde
 *   node geoshop-zh.mjs --bfs 136 --out "/pfad"                       # dito per BFS-Nr
 *   node geoshop-zh.mjs --egrid CH879777718909 --out "/pfad"          # AV-DXF einzelne Parzelle
 *   node geoshop-zh.mjs --gemeinde Maur --produkt 10016 --format shp --out "/pfad"
 *
 * FLAGS:
 *   --gemeinde <name>       Bezug ganze Gemeinde (INDIRECT/COMMUNE); Name wird gegen die
 *                           amtliche Gemeindeliste aufgeloest — mehrdeutig/0 Treffer = Abbruch
 *   --bfs <nnn>             Gemeinde per BFS-Nr (umgeht die Namensaufloesung)
 *   --egrid <CH...>         Bezug einzelne Parzelle (INDIRECT/PARCEL); mehrfach: Komma-Liste
 *   --produkt <id>          Produkt-ID (default 10016 = Amtliche Vermessung Datenmodell ZH)
 *   --format <name|id>      dxf (default) | shp | gpkg | ili/interlis | tif | ... oder Format-ID
 *   --email <adr>           Liefer-Mail der Bestellung (default rj@raphaeljans.ch)
 *   --out <dir>             Zielordner (mehrfach moeglich); Zip wird entpackt UND behalten
 *   --no-unzip              Liefer-Zip nicht entpacken
 *   --timeout <s>           max. Wartezeit auf SUCCESS (default 1800 s)
 *   --order <id>            bestehende Bestellung weiterverfolgen/laden (statt neu bestellen)
 *   --json / --quiet        Ausgabesteuerung
 *
 * Rules: identifikatoren-verifizieren (Gemeinde/EGRID nie raten), dateinamen-konvention,
 *        umlaute-konvention. Bestellungen sind serverseitig ~1 Woche abrufbar.
 */

import { writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join } from "node:path";
import { execFileSync } from "node:child_process";

const API = "https://geoservices.zh.ch/geoshopapi/v1";
const UA = "jans-ai-hub-geoshopzh/1.0 (rj@raphaeljans.ch)";
const DEFAULT_PRODUKT = 10016;            // Amtliche Vermessung - Datenmodell ZH (Standard) (OGD)
const DEFAULT_EMAIL = "rj@raphaeljans.ch";
// Format-Kurznamen -> Geoshop-Format-Namensfragment (IDs werden live aus /products aufgeloest)
const FORMAT_ALIAS = {
  dxf: "dxf", dwg: "dxf",                 // DWG gibt es nicht; DXF ist das CAD-Format
  shp: "shapefile", gpkg: "geopackage", ili: "interlis", interlis: "interlis",
  tif: "geotiff", gdb: "geodatabase", csv: "csv",
};

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
const norm = (s) => String(s).toLowerCase()
  .replace(/ä/g, "ae").replace(/ö/g, "oe").replace(/ü/g, "ue")
  .replace(/[^a-z0-9]+/g, " ").trim();

async function api(path, init = {}) {
  const r = await fetch(`${API}/${path}`, {
    ...init,
    headers: { "User-Agent": UA, Accept: "application/json; charset=UTF-8", ...(init.headers || {}) },
  });
  return r;
}
async function apiJson(path, init) {
  const r = await api(path, init);
  if (!r.ok) {
    let detail = ""; try { detail = (await r.text()).slice(0, 400); } catch {}
    throw new Error(`HTTP ${r.status} bei ${path}${detail ? " — " + detail : ""}`);
  }
  return r.json();
}

// --- Produktliste: Produkt/Format/Gemeinde aufloesen -----------------------------
async function loadCatalog() { return apiJson("products"); }

function resolveFormat(catalog, produktId, wanted) {
  const prod = (catalog.products || []).find((p) => Number(p.id) === Number(produktId));
  if (!prod) throw new Error(`Produkt ${produktId} nicht im Geoshop-Katalog.`);
  const fmts = (catalog.formats || []).filter((f) => (prod.formats || []).includes(f.id));
  if (wanted === undefined) wanted = "dxf";
  // numerische ID direkt
  if (/^\d+$/.test(String(wanted))) {
    const f = fmts.find((f) => f.id === Number(wanted));
    if (!f) throw new Error(`Format-ID ${wanted} nicht verfuegbar fuer Produkt ${produktId} (${prod.name}). Verfuegbar: ${fmts.map((f) => `${f.id}=${f.name}`).join(", ")}`);
    return { prod, fmt: f };
  }
  const frag = FORMAT_ALIAS[String(wanted).toLowerCase()] || String(wanted).toLowerCase();
  const f = fmts.find((f) => f.name.toLowerCase().includes(frag));
  if (!f) throw new Error(`Kein Format "${wanted}" fuer Produkt ${produktId} (${prod.name}). Verfuegbar: ${fmts.map((f) => `${f.id}=${f.name}`).join(", ")}`);
  return { prod, fmt: f };
}

function resolveGemeinde(catalog, name) {
  const communes = catalog.communes || [];
  const n = norm(name);
  const exact = communes.filter((c) => norm(c.name) === n);
  const part = communes.filter((c) => norm(c.name).includes(n));
  const hits = exact.length ? exact : part;
  if (hits.length === 1) return hits[0];
  if (!hits.length) throw new Error(`Gemeinde "${name}" nicht in der Geoshop-Gemeindeliste (Kt. ZH). Schreibweise pruefen.`);
  throw new Error(`Gemeinde "${name}" mehrdeutig: ${hits.map((h) => `${h.id} ${h.name}`).join(" | ")} — bitte per --bfs praezisieren.`);
}

// --- Bestellung ------------------------------------------------------------------
async function submitOrder(body) {
  const r = await api("orders", {
    method: "POST",
    headers: { "Content-Type": "application/json; charset=UTF-8" },
    body: JSON.stringify(body),
  });
  if (!r.ok && r.status !== 202) {
    let detail = ""; try { detail = (await r.text()).slice(0, 400); } catch {}
    throw new Error(`Bestellung abgelehnt (HTTP ${r.status})${detail ? " — " + detail : ""}`);
  }
  return r.json();
}

async function pollOrder(orderId, timeoutS, L) {
  const t0 = Date.now();
  let wait = 10;
  for (;;) {
    const st = await apiJson(`orders/${orderId}`);
    const status = String(st.status || "").split(":")[0].trim().toUpperCase();
    L(`   Status: ${st.status}`);
    if (status === "SUCCESS") return st;
    if (status === "FAILURE") throw new Error(`Bestellung fehlgeschlagen: ${st.status}`);
    if ((Date.now() - t0) / 1000 > timeoutS) {
      throw new Error(`Timeout nach ${timeoutS}s — Bestellung ${orderId} laeuft serverseitig weiter. Spaeter: node geoshop-zh.mjs --order ${orderId} --out <dir>`);
    }
    await new Promise((res) => setTimeout(res, wait * 1000));
    wait = Math.min(wait * 1.5, 60);
  }
}

async function downloadOrder(orderId) {
  const r = await api(`orders/${orderId}/download`);
  if (!r.ok) throw new Error(`Download HTTP ${r.status} (Bestellung ${orderId} noch nicht bereit oder geloescht).`);
  const buf = Buffer.from(await r.arrayBuffer());
  const cd = r.headers.get("content-disposition") || "";
  const m = cd.match(/filename="?([^"]+)"?/i);
  return { buf, filename: m ? m[1] : `${orderId}.zip` };
}

// --- Main ------------------------------------------------------------------------
(async () => {
  const a = parseArgs(process.argv);
  const L = log(a.quiet);
  const result = { ok: false, orderId: null, produkt: null, format: null, perimeter: null, files: [] };

  try {
    // --list: Katalog anzeigen
    if (a.list) {
      const c = await loadCatalog();
      const filter = a.filter ? norm(a.filter) : null;
      for (const p of c.products || []) {
        if (filter && !norm(p.name).includes(filter)) continue;
        const fmts = (c.formats || []).filter((f) => (p.formats || []).includes(f.id));
        process.stdout.write(`${p.id}\t${p.name}\t[${fmts.map((f) => `${f.id}=${f.name}`).join(", ")}]\n`);
      }
      process.exit(0);
    }

    const produktId = Number(a.produkt || DEFAULT_PRODUKT);
    let orderId = a.order || null;

    if (!orderId) {
      const catalog = await loadCatalog();
      const { prod, fmt } = resolveFormat(catalog, produktId, a.format);
      result.produkt = { id: prod.id, name: prod.name };
      result.format = { id: fmt.id, name: fmt.name };
      if (String(a.format || "").toLowerCase() === "dwg") L(`! DWG bietet der Geoshop nicht an — es wird das offizielle CAD-Format DXF bezogen.`);

      // Perimeter bestimmen (Gemeinde ODER Parzelle(n))
      let order;
      if (a.egrid) {
        const egrids = String(a.egrid).toUpperCase().split(",").map((s) => s.trim()).filter(Boolean);
        for (const e of egrids) if (!/^CH\d{12}$/.test(e)) throw new Error(`EGRID "${e}" hat kein gueltiges Format (CH + 12 Ziffern).`);
        result.perimeter = { typ: "PARCEL", ident: egrids };
        order = { email: a.email || DEFAULT_EMAIL, perimeter_type: "INDIRECT", pindir_layer_name: "PARCEL", pindir_ident: egrids, products: [{ product_id: prod.id, format_id: fmt.id }] };
      } else if (a.gemeinde || a.bfs) {
        let communeId, communeName;
        if (a.bfs) {
          communeId = String(a.bfs).padStart(4, "0");
          const c = (catalog.communes || []).find((c) => c.id === communeId);
          if (!c) throw new Error(`BFS ${a.bfs} nicht in der Geoshop-Gemeindeliste (Kt. ZH).`);
          communeName = c.name;
        } else {
          const c = resolveGemeinde(catalog, a.gemeinde);
          communeId = c.id; communeName = c.name;
        }
        result.perimeter = { typ: "COMMUNE", ident: [communeId], name: communeName };
        order = { email: a.email || DEFAULT_EMAIL, perimeter_type: "INDIRECT", pindir_layer_name: "COMMUNE", pindir_ident: [communeId], products: [{ product_id: prod.id, format_id: fmt.id }] };
      } else {
        throw new Error(`Bitte Perimeter angeben: --gemeinde "<Name>" | --bfs <nnn> | --egrid CH... (oder --order <id> zum Weiterverfolgen).`);
      }

      L(`1) Bestellung: ${prod.name} als ${fmt.name} fuer ${result.perimeter.typ} ${result.perimeter.name || result.perimeter.ident.join(",")}`);
      const resp = await submitOrder(order);
      orderId = resp.order_id;
      L(`   -> Bestellung ${orderId} angenommen.`);
    }
    result.orderId = orderId;

    L(`2) Warten auf Aufbereitung (Polling, max ${a.timeout || 1800}s) ...`);
    await pollOrder(orderId, Number(a.timeout || 1800), L);

    L(`3) Liefer-Zip laden ...`);
    const { buf, filename } = await downloadOrder(orderId);
    const dirs = a.out.length ? a.out : [process.cwd()];
    for (const dir of dirs) {
      if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
      const dest = join(dir, filename);
      writeFileSync(dest, buf);
      result.files.push(dest);
      L(`   -> abgelegt: ${dest} (${(buf.length / 1024 / 1024).toFixed(1)} MB)`);
      if (!a["no-unzip"]) {
        try {
          execFileSync("/usr/bin/unzip", ["-o", "-q", dest, "-d", dir]);
          L(`   -> entpackt nach: ${dir}`);
        } catch (e) { L(`! Entpacken fehlgeschlagen (${e.message}) — Zip liegt bereit.`); }
      }
    }

    result.ok = true;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else process.stdout.write(result.files.join("\n") + "\n");
    process.exit(0);
  } catch (e) {
    result.error = e.message;
    if (a.json) process.stdout.write(JSON.stringify(result, null, 2) + "\n");
    else process.stderr.write(`FEHLER: ${e.message}\n`);
    process.exit(1);
  }
})();
