#!/usr/bin/env node
/**
 * JANS Connector — bexio (Buchhaltung / Debitoren, api.bexio.com)
 * ===============================================================
 * Zugriff auf das bexio-Konto von Raphael Jans Architekten ETH.
 * Liest offene Debitoren-Rechnungen, laedt Rechnungs-PDF, zeigt die
 * Mahnstufe und kann eine Rechnung auf die NAECHSTE Mahnstufe stellen
 * (Mahnung erzeugen, optional versenden).
 *
 * SCHREIB-SCHUTZ (hart im Code):
 *   - GET-Anfragen (Lesen) sind immer erlaubt.
 *   - Schreibende Aktionen (Mahnung erzeugen/versenden) laufen NUR mit
 *     dem expliziten Flag  --ja . Ohne --ja wird ein Trockenlauf gezeigt.
 *   - Es gibt KEINEN Code zum Loeschen oder Stornieren von Belegen.
 *
 * Zugangsdaten (nie in Git):
 *   ~/.bexio.env   mit Zeile:
 *     BEXIO_API_TOKEN=...        (Personal Access Token, Bearer)
 *   (chmod 600). Alternativ als Umgebungsvariable BEXIO_API_TOKEN.
 *
 *   Token erzeugen:  developer.bexio.com  >  "My tokens" / Personal Access
 *   Token  ->  Scopes mindestens  kb_invoice_show  +  kb_invoice_edit .
 *   (bexio hat die alten einfachen API-Schluessel abgeloest; ein PAT ist
 *   fuer eine interne Server-zu-Server-Anbindung der richtige Weg.)
 *
 * Verwendung:
 *   node bexio.mjs --test
 *   node bexio.mjs --offen                         # offene/ueberfaellige Rechnungen
 *   node bexio.mjs --suche "10234"                 # Rechnung per Nummer/Titel finden
 *   node bexio.mjs --rechnung 1234                 # Detail inkl. Mahnstufe
 *   node bexio.mjs --pdf 1234 --ziel "./Downloads" # Rechnungs-PDF holen
 *   node bexio.mjs --mahnstufe 1234                # aktuelle Mahnstufe anzeigen
 *   node bexio.mjs --mahnen 1234                   # TROCKENLAUF: zeigt was passiert
 *   node bexio.mjs --mahnen 1234 --ja              # naechste Mahnstufe ERZEUGEN
 *   node bexio.mjs --mahnen 1234 --ja --senden     # erzeugen UND per bexio versenden
 *
 * Stand: 13.06.2026 — Kern-Endpunkte aus der bexio-API-Doku (api.bexio.com,
 * /2.0/kb_invoice, /pdf). Der Reminder-Pfad (kb_invoice_reminder) ist nach
 * bexio-Schema gesetzt und beim ersten echten Lauf zu bestaetigen; bei
 * abweichendem Pfad nur die Konstante REMINDER_PFAD anpassen.
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';

const BASE = 'https://api.bexio.com';
const ENV_FILE = join(homedir(), '.bexio.env');
// Reminder-Unterressource je Rechnung — am 13.06.2026 live gegen die bexio-API
// verifiziert (GET/POST .../kb_reminder, .../{rid}/send, .../{rid}/pdf, mark_as_sent).
const REMINDER_PFAD = (id) => `/2.0/kb_invoice/${id}/kb_reminder`;

// ---------------------------------------------------------------- Hilfen
function fail(msg) { console.error('FEHLER: ' + msg); process.exit(1); }
function chf(n) {
  const z = Number(n || 0);
  return "CHF " + z.toLocaleString('de-CH', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
}

function ladeToken() {
  let token = process.env.BEXIO_API_TOKEN || '';
  if (!token && existsSync(ENV_FILE)) {
    for (const zeile of readFileSync(ENV_FILE, 'utf8').split('\n')) {
      const m = zeile.match(/^\s*BEXIO_API_TOKEN\s*=\s*(.+?)\s*$/);
      if (m) token = m[1].replace(/^["']|["']$/g, '');
    }
  }
  if (!token) {
    fail(`Kein API-Token. Bitte ${ENV_FILE} anlegen:\n` +
      `  echo 'BEXIO_API_TOKEN=DEIN_TOKEN' > ~/.bexio.env && chmod 600 ~/.bexio.env\n` +
      `  Token: developer.bexio.com > Personal Access Token (Scopes kb_invoice_show + kb_invoice_edit).`);
  }
  return token;
}

/** Einzige HTTP-Funktion. Schreibende Methoden nur ueber bewusste Aufrufe. */
async function api(pfad, { methode = 'GET', body = null, roh = false } = {}) {
  const url = pfad.startsWith('http') ? pfad : BASE + pfad;
  const headers = {
    'Authorization': 'Bearer ' + ladeToken(),
    'Accept': roh ? 'application/pdf' : 'application/json',
  };
  if (body) headers['Content-Type'] = 'application/json';
  const res = await fetch(url, { method: methode, headers, body: body ? JSON.stringify(body) : undefined });
  if (res.status === 401) fail('401 — Token ungueltig/abgelaufen oder fehlende Scopes. Token in ~/.bexio.env pruefen.');
  if (res.status === 404) fail(`404 — Endpunkt/Beleg nicht gefunden: ${methode} ${pfad}`);
  if (!res.ok) {
    let txt = '';
    try { txt = await res.text(); } catch {}
    fail(`HTTP ${res.status} bei ${methode} ${pfad}\n${txt.slice(0, 500)}`);
  }
  if (roh) return Buffer.from(await res.arrayBuffer());
  const t = await res.text();
  return t ? JSON.parse(t) : null;
}

// ---------------------------------------------------------------- Rechnungen
/** Offene/ueberfaellige Rechnungen. bexio kb_item_status_id: 7=offen, 16=ueberfaellig (bezahlt=9). */
async function offene() {
  // breit ziehen und lokal filtern/sortieren (bexio mag order_by hier nicht)
  const liste = await api('/2.0/kb_invoice?limit=2000');
  return liste
    .filter(r => Number(r.total_remaining_payments ?? r.total) > 0)
    .sort((a, b) => String(b.is_valid_from || '').localeCompare(String(a.is_valid_from || '')));
}

async function suche(begriff) {
  // Suche ueber Dokumentnummer und Titel
  const felder = [
    { field: 'document_nr', value: String(begriff), criteria: 'like' },
    { field: 'title', value: String(begriff), criteria: 'like' },
  ];
  // bexio /search ist UND-verknuepft; daher zwei Einzelsuchen und zusammenfuehren
  const out = new Map();
  for (const f of felder) {
    try {
      const r = await api('/2.0/kb_invoice/search?limit=100', { methode: 'POST', body: [f] });
      for (const inv of (r || [])) out.set(inv.id, inv);
    } catch { /* Feld evtl. nicht suchbar — ueberspringen */ }
  }
  return [...out.values()];
}

async function rechnung(id) {
  return api(`/2.0/kb_invoice/${id}`);
}

function zeigeRechnung(r) {
  const stufe = mahnstufeAus(r);
  console.log(`Rechnung  ${r.document_nr || r.id}   (interne ID ${r.id})`);
  if (r.title) console.log(`  Titel:        ${r.title}`);
  console.log(`  Datum:        ${r.is_valid_from || '?'}   faellig: ${r.is_valid_to || '?'}`);
  console.log(`  Betrag:       ${chf(r.total)}   offen: ${chf(r.total_remaining_payments ?? r.total)}`);
  console.log(`  Status:       ${r.kb_item_status_id ?? '?'}`);
  console.log(`  Mahnstufe:    ${stufe} (${stufe + 1}. Mahnung waere die naechste)`);
}

/** Mahnstufe = Anzahl bereits erzeugter Mahnungen. */
async function mahnstufe(id) {
  try {
    const rem = await api(REMINDER_PFAD(id));
    return Array.isArray(rem) ? rem.length : 0;
  } catch {
    return null; // Pfad noch nicht bestaetigt
  }
}
function mahnstufeAus(r) {
  return Number(r.kb_item_status_id === 16 ? 1 : 0) || 0; // grobe Anzeige; genau via mahnstufe()
}

/** Erzeugt die naechste Mahnung. Ohne --ja nur Trockenlauf. */
async function mahnen(id, { ja, senden }) {
  const r = await rechnung(id);
  const stufeVorher = await mahnstufe(id);
  console.log('— Mahnung —');
  zeigeRechnung(r);
  const ziel = (stufeVorher ?? 0) + 1;
  if (!ja) {
    console.log(`\nTROCKENLAUF: wuerde die ${ziel}. Mahnung erzeugen` + (senden ? ' und versenden' : '') + '.');
    console.log('Zum Ausfuehren erneut mit  --ja  (und ggf. --senden) aufrufen.');
    return;
  }
  // Mahnung erzeugen
  const neu = await api(REMINDER_PFAD(id), { methode: 'POST', body: {} });
  const remId = neu && (neu.id || (Array.isArray(neu) && neu[0]?.id));
  console.log(`OK — ${ziel}. Mahnung erzeugt (Reminder-ID ${remId ?? '?'}).`);
  if (senden && remId) {
    await api(`${REMINDER_PFAD(id)}/${remId}/send`, { methode: 'POST', body: {} });
    console.log('OK — Mahnung ueber bexio versendet.');
  } else if (senden) {
    console.log('Hinweis: Versand uebersprungen (keine Reminder-ID erhalten) — bitte Pfad bestaetigen.');
  }
}

async function holePdf(id, zielDir) {
  mkdirSync(zielDir, { recursive: true });
  // bexio liefert PDF als JSON {name, content(base64)} ODER binaer je nach Accept
  let buf, name;
  const j = await api(`/2.0/kb_invoice/${id}/pdf`);
  if (j && j.content) {
    buf = Buffer.from(j.content, 'base64');
    name = j.name || `Rechnung-${id}.pdf`;
  } else {
    buf = await api(`/2.0/kb_invoice/${id}/pdf`, { roh: true });
    name = `Rechnung-${id}.pdf`;
  }
  const datei = join(zielDir, name.replace(/[\/\\]/g, '_'));
  writeFileSync(datei, buf);
  console.log('Gespeichert: ' + datei);
  return datei;
}

// ----------------------------------------------------------------- Main
const argv = process.argv.slice(2);
function arg(name, def = null) {
  const i = argv.indexOf(name);
  return i >= 0 ? (argv[i + 1] && !argv[i + 1].startsWith('--') ? argv[i + 1] : true) : def;
}

const main = async () => {
  if (arg('--test')) {
    const me = await api('/2.0/company_profile').catch(() => null);
    if (me) {
      const c = Array.isArray(me) ? me[0] : me;
      console.log('Login OK — bexio erreichbar.');
      console.log('Firma: ' + (c?.name || c?.name_1 || '(unbekannt)'));
    } else {
      await api('/2.0/kb_invoice?limit=1');
      console.log('Login OK — Lesezugriff auf kb_invoice funktioniert.');
    }
    return;
  }
  if (arg('--offen')) {
    const liste = await offene();
    console.log(`${liste.length} offene Rechnung(en):`);
    for (const r of liste) {
      console.log(`  ${r.document_nr || r.id}  ${chf(r.total_remaining_payments ?? r.total)}  faellig ${r.is_valid_to || '?'}  [ID ${r.id}]`);
    }
    return;
  }
  if (arg('--suche')) {
    const liste = await suche(arg('--suche'));
    if (!liste.length) { console.log('Keine Treffer.'); return; }
    for (const r of liste) console.log(`  ${r.document_nr || r.id}  ${r.title || ''}  ${chf(r.total)}  [ID ${r.id}]`);
    return;
  }
  if (arg('--rechnung')) { zeigeRechnung(await rechnung(arg('--rechnung'))); return; }
  if (arg('--mahnstufe')) {
    const id = arg('--mahnstufe');
    const s = await mahnstufe(id);
    console.log(s === null ? 'Mahnstufe unbekannt (Reminder-Pfad noch nicht bestaetigt).' : `Aktuelle Mahnstufe: ${s}`);
    return;
  }
  if (arg('--mahnen')) {
    await mahnen(arg('--mahnen'), { ja: !!arg('--ja'), senden: !!arg('--senden') });
    return;
  }
  if (arg('--pdf')) {
    await holePdf(arg('--pdf'), String(arg('--ziel', '.')));
    return;
  }
  console.log('Verwendung: --test | --offen | --suche "Nr/Titel" | --rechnung <ID> | --mahnstufe <ID> | --mahnen <ID> [--ja] [--senden] | --pdf <ID> --ziel DIR');
};

main().catch(e => fail(e.message));
