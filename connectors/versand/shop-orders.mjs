#!/usr/bin/env node
// shop-orders.mjs — Bestellungen aus dem Onlineshop ziehen und klassifizieren
// Teil des Skills `versandplanung`. Adapter: woocommerce | shopify | csv (SHOP_TYP).
//
// Ausgabeformat (Pipeline-Vertrag, shopunabhängig):
// {
//   datum: "YYYY-MM-DD",
//   bestellungen: [{
//     nr, name, mail, telefon,
//     adresse: { strasse, plz, ort },
//     versandart: "post" | "pickup",
//     pickup_punkt: "…" | null,
//     positionen: [{ menge, artikel, sku }],
//     notiz
//   }]
// }
//
//   node shop-orders.mjs --test
//   node shop-orders.mjs --heute --json
//   node shop-orders.mjs --markieren <bestellungen.json>   # jans_versandtag setzen

import { readFileSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';

// --- Konfiguration -----------------------------------------------------------
function ladeEnv() {
  const pfad = join(homedir(), '.versand.env');
  const env = {};
  try {
    for (const zeile of readFileSync(pfad, 'utf8').split('\n')) {
      const m = zeile.match(/^\s*([A-Z_]+)\s*=\s*(.*?)\s*$/);
      if (m && !zeile.trim().startsWith('#')) env[m[1]] = m[2];
    }
  } catch {
    fehler(`~/.versand.env fehlt — Vorlage siehe connectors/versand/README.md`);
  }
  return env;
}

function fehler(msg) { console.error(`FEHLER: ${msg}`); process.exit(1); }

const ENV = ladeEnv();
const HEUTE = new Date().toISOString().slice(0, 10);
const PICKUP_MARKER = (ENV.PICKUP_MARKER || 'pickup,abhol')
  .split(',').map(s => s.trim().toLowerCase()).filter(Boolean);

// --- Klassifizierung: Versandart der Bestellung → post | pickup ---------------
function klassifiziere(versandTitel) {
  const t = (versandTitel || '').toLowerCase();
  const istPickup = PICKUP_MARKER.some(m => t.includes(m));
  return {
    versandart: istPickup ? 'pickup' : 'post',
    // Konvention (Spec E6): Versandart im Shop heisst z.B. "Pickup: Bahnhof Wädenswil"
    pickup_punkt: istPickup ? (versandTitel.split(':')[1]?.trim() || versandTitel) : null,
  };
}

// --- Adapter: WooCommerce ------------------------------------------------------
async function wooRequest(pfadRel, methode = 'GET', body = null) {
  const auth = Buffer.from(`${ENV.WC_KEY}:${ENV.WC_SECRET}`).toString('base64');
  const res = await fetch(`${ENV.SHOP_URL}/wp-json/wc/v3/${pfadRel}`, {
    method: methode,
    headers: { Authorization: `Basic ${auth}`, 'Content-Type': 'application/json' },
    body: body ? JSON.stringify(body) : undefined,
  });
  if (!res.ok) fehler(`WooCommerce ${methode} ${pfadRel}: HTTP ${res.status} ${await res.text()}`);
  return res.json();
}

async function wooBestellungen() {
  // "processing" = bezahlt, noch nicht versendet; bereits markierte Tage überspringen
  const roh = await wooRequest('orders?status=processing&per_page=100');
  return roh
    .filter(o => !(o.meta_data || []).some(m => m.key === 'jans_versandtag'))
    .map(o => {
      const versandTitel = o.shipping_lines?.[0]?.method_title || '';
      const a = o.shipping?.address_1 ? o.shipping : o.billing;
      return {
        id: o.id,
        nr: String(o.number),
        name: `${a.first_name} ${a.last_name}`.trim(),
        mail: o.billing?.email || '',
        telefon: o.billing?.phone || '',
        adresse: { strasse: [a.address_1, a.address_2].filter(Boolean).join(', '), plz: a.postcode, ort: a.city },
        ...klassifiziere(versandTitel),
        positionen: (o.line_items || []).map(p => ({ menge: p.quantity, artikel: p.name, sku: p.sku || '' })),
        notiz: o.customer_note || '',
      };
    });
}

async function wooMarkieren(bestellungen) {
  for (const b of bestellungen) {
    await wooRequest(`orders/${b.id}`, 'PUT', { meta_data: [{ key: 'jans_versandtag', value: HEUTE }] });
    console.error(`markiert: Bestellung ${b.nr} → jans_versandtag=${HEUTE}`);
  }
}

// --- Adapter: Shopify ----------------------------------------------------------
async function shopifyRequest(pfadRel, methode = 'GET', body = null) {
  const res = await fetch(`https://${ENV.SHOPIFY_SHOP}.myshopify.com/admin/api/2025-01/${pfadRel}`, {
    method: methode,
    headers: { 'X-Shopify-Access-Token': ENV.SHOPIFY_TOKEN, 'Content-Type': 'application/json' },
    body: body ? JSON.stringify(body) : undefined,
  });
  if (!res.ok) fehler(`Shopify ${methode} ${pfadRel}: HTTP ${res.status} ${await res.text()}`);
  return res.json();
}

async function shopifyBestellungen() {
  const { orders } = await shopifyRequest('orders.json?status=open&fulfillment_status=unfulfilled&limit=100');
  return orders
    .filter(o => !(o.note_attributes || []).some(m => m.name === 'jans_versandtag'))
    .map(o => {
      const versandTitel = o.shipping_lines?.[0]?.title || '';
      const a = o.shipping_address || o.billing_address || {};
      return {
        id: o.id,
        nr: String(o.order_number ?? o.name),
        name: a.name || '',
        mail: o.email || '',
        telefon: a.phone || o.phone || '',
        adresse: { strasse: [a.address1, a.address2].filter(Boolean).join(', '), plz: a.zip, ort: a.city },
        ...klassifiziere(versandTitel),
        positionen: (o.line_items || []).map(p => ({ menge: p.quantity, artikel: p.title, sku: p.sku || '' })),
        notiz: o.note || '',
      };
    });
}

async function shopifyMarkieren(bestellungen) {
  for (const b of bestellungen) {
    await shopifyRequest(`orders/${b.id}.json`, 'PUT', {
      order: { id: b.id, note_attributes: [{ name: 'jans_versandtag', value: HEUTE }] },
    });
    console.error(`markiert: Bestellung ${b.nr} → jans_versandtag=${HEUTE}`);
  }
}

// --- Adapter: CSV (Notnagel — funktioniert mit jedem Shop-Export) ---------------
// Erwartete Spalten: nr;name;mail;telefon;strasse;plz;ort;versandart;positionen;notiz
// positionen als "2x Brot Hell|1x Zopf" (Menge x Artikel, | getrennt)
function csvBestellungen() {
  const pfad = (ENV.CSV_PFAD || '').replace('~', homedir());
  const zeilen = readFileSync(pfad, 'utf8').trim().split('\n');
  const koepfe = zeilen[0].split(';').map(s => s.trim().toLowerCase());
  return zeilen.slice(1).map(z => {
    const f = Object.fromEntries(z.split(';').map((v, i) => [koepfe[i], v.trim()]));
    return {
      id: f.nr, nr: f.nr, name: f.name, mail: f.mail || '', telefon: f.telefon || '',
      adresse: { strasse: f.strasse, plz: f.plz, ort: f.ort },
      ...klassifiziere(f.versandart),
      positionen: (f.positionen || '').split('|').filter(Boolean).map(p => {
        const m = p.trim().match(/^(\d+)\s*x\s*(.+)$/i);
        return m ? { menge: Number(m[1]), artikel: m[2], sku: '' } : { menge: 1, artikel: p.trim(), sku: '' };
      }),
      notiz: f.notiz || '',
    };
  });
}

// --- Dispatch --------------------------------------------------------------------
const ADAPTER = {
  woocommerce: { holen: wooBestellungen, markieren: wooMarkieren },
  shopify: { holen: shopifyBestellungen, markieren: shopifyMarkieren },
  csv: { holen: csvBestellungen, markieren: async () => console.error('CSV: Markierung manuell im Shop nachführen') },
};

const adapter = ADAPTER[ENV.SHOP_TYP];
if (!adapter) fehler(`SHOP_TYP=${ENV.SHOP_TYP} unbekannt (woocommerce|shopify|csv)`);

const args = process.argv.slice(2);

if (args.includes('--test')) {
  const bestellungen = await adapter.holen();
  console.log(`OK — ${ENV.SHOP_TYP}: ${bestellungen.length} offene, unmarkierte Bestellung(en)`);
} else if (args.includes('--heute')) {
  const bestellungen = await adapter.holen();
  const post = bestellungen.filter(b => b.versandart === 'post').length;
  console.error(`${bestellungen.length} Bestellung(en): ${post} Post, ${bestellungen.length - post} Pickup`);
  console.log(JSON.stringify({ datum: HEUTE, bestellungen }, null, 2));
} else if (args.includes('--markieren')) {
  const datei = args[args.indexOf('--markieren') + 1];
  if (!datei) fehler('--markieren braucht den Pfad zu bestellungen.json');
  const { bestellungen } = JSON.parse(readFileSync(datei, 'utf8'));
  await adapter.markieren(bestellungen);
} else {
  console.log('Verwendung: shop-orders.mjs --test | --heute [--json] | --markieren <bestellungen.json>');
}
