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

// ------------------------------------------------------------ Bankabgleich-Pruefung
/** Alle Banktransaktionen (paginiert). */
async function alleBankTx() {
  const out = [];
  for (let off = 0; ; off += 500) {
    const page = await api(`/3.0/banking/transactions?limit=500&offset=${off}`);
    if (!page || !page.length) break;
    out.push(...page);
    if (page.length < 500) break;
  }
  return out;
}

/**
 * Prueft die Konsistenz: ist jede als bezahlt gebuchte Rechnung durch einen ECHTEN
 * (reconciled/auto_reconciled) Bankeingang gedeckt? Deckt Phantom-Duplikate auf und
 * findet Rechnungen, die ohne Bankbeleg auf bezahlt stehen.
 * Match per Betrag (greedy) — Buchungsdaten in bexio sind unzuverlaessig geclustert.
 */
async function abgleichCheck({ minBetrag = 1000 } = {}) {
  const tx = await alleBankTx();
  const real = tx
    .filter(t => t.type === 'CREDIT' && ['reconciled', 'auto_reconciled'].includes(t.status))
    .map(t => ({ id: t.id, date: t.value_date, amount: Math.round(Number(t.amount) * 100) / 100, used: false }));
  const credUnrec = tx.filter(t => t.type === 'CREDIT' && t.status === 'unreconciled');
  const inv = await api('/2.0/kb_invoice?limit=2000');
  const bezahlt = inv.filter(i => Number(i.total_received_payments || 0) > 0);
  const ohneBeleg = [];
  for (const i of bezahlt) {
    const pays = await api(`/2.0/kb_invoice/${i.id}/payment`) || [];
    for (const p of pays) {
      const amt = Math.round(Number(p.value) * 100) / 100;
      const m = real.find(r => !r.used && Math.abs(r.amount - amt) < 0.01);
      if (m) m.used = true;
      else ohneBeleg.push({ nr: i.document_nr, id: i.id, betrag: amt, datum: p.date, contact_id: i.contact_id });
    }
  }
  for (const f of ohneBeleg) f.kunde = (await kontakt(f.contact_id)).name;
  const eingangOhneBuchung = real.filter(r => !r.used && r.amount >= minBetrag);
  return { realCount: real.length, credUnrecCount: credUnrec.length, ohneBeleg, eingangOhneBuchung };
}

/**
 * Findet Phantom-Duplikate aus dem Doppelimport: unreconciled Transaktionen, die einen
 * bereits abgeglichenen (reconciled/auto_reconciled) Zwilling mit gleichem Konto/Typ/Datum/
 * Betrag haben. Das ist die sichere Bereinigungs-Arbeitsliste (den Zwilling NICHT anfassen,
 * nur das unreconciled Duplikat in der bexio-UI auf «ignoriert» setzen).
 */
async function duplikate() {
  const tx = await alleBankTx();
  const realKey = new Set();
  for (const t of tx) {
    if (['reconciled', 'auto_reconciled'].includes(t.status)) {
      realKey.add(`${t.bank_account_id}|${t.type}|${t.value_date}|${Math.round(Number(t.amount) * 100)}`);
    }
  }
  const dups = tx.filter(t => t.status === 'unreconciled' &&
    realKey.has(`${t.bank_account_id}|${t.type}|${t.value_date}|${Math.round(Number(t.amount) * 100)}`));
  return dups.map(t => ({ id: t.id, type: t.type, date: t.value_date, amount: Number(t.amount), title: t.title }));
}

/** Laedt das PDF einer bestimmten Mahnstufe (Reminder) einer Rechnung. */
async function holeMahnPdf(invoiceId, { reminderId = null, stufe = null, zielDir = '.' } = {}) {
  const rem = await api(REMINDER_PFAD(invoiceId)) || [];
  if (!rem.length) { console.log(`Keine Mahnstufe zu Rechnung ${invoiceId} vorhanden.`); return null; }
  let r = null;
  if (reminderId) r = rem.find(x => String(x.id) === String(reminderId));
  else if (stufe) r = rem.find(x => Number(x.reminder_level) === Number(stufe));
  else r = rem.reduce((a, b) => (Number(b.reminder_level) >= Number(a.reminder_level) ? b : a)); // hoechste
  if (!r) { console.log(`Mahnstufe nicht gefunden. Vorhanden: ${rem.map(x => `Stufe ${x.reminder_level} (${x.title}, id ${x.id})`).join('; ')}`); return null; }
  mkdirSync(zielDir, { recursive: true });
  let buf;
  const j = await api(`${REMINDER_PFAD(invoiceId)}/${r.id}/pdf`);
  if (j && j.content) buf = Buffer.from(j.content, 'base64');
  else buf = await api(`${REMINDER_PFAD(invoiceId)}/${r.id}/pdf`, { roh: true });
  const name = (j && j.name) ? j.name : `mahnung-stufe${r.reminder_level}-re-${String(invoiceId).padStart(5, '0')}.pdf`;
  const datei = join(zielDir, name.replace(/[\/\\]/g, '_'));
  writeFileSync(datei, buf);
  console.log(`Gespeichert: ${datei}  (Stufe ${r.reminder_level} «${r.title}», offen laut Mahnung: ${chf(r.remaining_price)})`);
  return datei;
}

// ------------------------------------------------------------ Zahlungsverzug
function heute() { return new Date().toISOString().slice(0, 10); }
function tageDiff(vonISO, bisISO) {
  if (!vonISO || !bisISO) return 0;
  const a = new Date(vonISO + 'T00:00:00Z'), b = new Date(bisISO + 'T00:00:00Z');
  return Math.round((b - a) / 86400000);
}
// bexio reminder_level -> menschliche Mahnstufe (Stufe 1 = freundliche Erinnerung)
const STUFE_NAME = { 0: 'noch keine', 1: 'Zahlungserinnerung', 2: 'Mahnung 1', 3: 'Mahnung 2', 4: 'Mahnung 3 / Betreibung' };
function stufeName(level) { return STUFE_NAME[level] || `Stufe ${level}`; }

const _kontaktCache = new Map();
async function kontakt(id) {
  if (!id) return { name: '(ohne Kontakt)', mail: '' };
  if (_kontaktCache.has(id)) return _kontaktCache.get(id);
  let info = { name: `Kontakt ${id}`, mail: '' };
  try {
    const c = await api(`/2.0/contact/${id}`);
    info = { name: [c.name_1, c.name_2].filter(Boolean).join(' ') || info.name, mail: c.mail || '' };
  } catch {}
  _kontaktCache.set(id, info);
  return info;
}

/**
 * Findet je Debitor die Rechnungen im Zahlungsverzug.
 * Verzug = Restbetrag > 0 UND Faelligkeit (is_valid_to) < heute, Status nicht Entwurf(7)/storniert(19,20).
 * "naechste Mahnstufe faellig" = die Frist der letzten Mahnstufe (oder die Rechnungs-Faelligkeit) ist verstrichen.
 */
async function verzugScan({ alle = false } = {}) {
  const today = heute();
  const liste = await api('/2.0/kb_invoice?limit=2000');
  const offen = liste.filter(r =>
    Number(r.total_remaining_payments ?? 0) > 0 &&
    ![7, 19, 20].includes(Number(r.kb_item_status_id)));
  const rows = [];
  for (const r of offen) {
    let rem = [];
    try { rem = await api(REMINDER_PFAD(r.id)) || []; } catch {}
    const level = rem.reduce((m, x) => Math.max(m, Number(x.reminder_level || 0)), 0);
    const letzteFrist = rem.reduce((d, x) => (x.is_valid_to && x.is_valid_to > d ? x.is_valid_to : d), r.is_valid_to || '');
    const faellig = r.is_valid_to || '';
    const inVerzug = !!faellig && faellig < today;
    const naechsteFaellig = letzteFrist ? letzteFrist < today : inVerzug;
    const k = await kontakt(r.contact_id);
    rows.push({
      id: r.id, nr: r.document_nr, contact_id: r.contact_id, kunde: k.name, mail: k.mail,
      offen: Number(r.total_remaining_payments), faellig, letzteFrist,
      level, stufe: stufeName(level), inVerzug, naechsteFaellig,
      tageUeberfaellig: inVerzug ? tageDiff(faellig, today) : 0,
    });
  }
  const gruppen = new Map();
  for (const x of rows) {
    if (!alle && !x.inVerzug) continue;
    if (!gruppen.has(x.contact_id)) gruppen.set(x.contact_id, []);
    gruppen.get(x.contact_id).push(x);
  }
  // je Debitor aelteste zuerst
  for (const items of gruppen.values()) items.sort((a, b) => String(a.faellig).localeCompare(String(b.faellig)));
  return { today, rows, gruppen, totalOffen: offen.length };
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
  if (arg('--verzug')) {
    const alle = !!arg('--alle');
    const { today, rows, gruppen } = await verzugScan({ alle });
    const verzugN = rows.filter(r => r.inVerzug).length;
    if (arg('--json')) {
      console.log(JSON.stringify({ today, verzug: verzugN, debitoren: [...gruppen.values()] }, null, 2));
      return;
    }
    console.log(`Stichtag ${today} — ${rows.length} offene Rechnung(en), davon ${verzugN} im Zahlungsverzug.`);
    if (gruppen.size) {
      for (const items of gruppen.values()) {
        console.log(`\n■ ${items[0].kunde}${items[0].mail ? '  <' + items[0].mail + '>' : ''}`);
        for (const r of items) {
          const vorschlag = r.naechsteFaellig
            ? `→ VORSCHLAG naechste Stufe: ${stufeName(r.level + 1)}`
            : `(Frist laeuft noch bis ${r.letzteFrist})`;
          console.log(`  ${r.nr}  offen ${chf(r.offen)}  faellig ${r.faellig} (${r.tageUeberfaellig} Tg ueberfaellig)  aktuell: ${r.stufe}  ${vorschlag}`);
        }
      }
    } else {
      console.log(alle ? 'Keine offenen Rechnungen.' : 'Aktuell KEINE Rechnung im Zahlungsverzug.');
    }
    if (!alle) {
      const bald = rows.filter(r => !r.inVerzug).sort((a, b) => String(a.faellig).localeCompare(String(b.faellig)));
      if (bald.length) {
        console.log('\nBald faellig (offen, noch kein Verzug):');
        for (const r of bald) console.log(`  ${r.nr}  ${chf(r.offen)}  faellig ${r.faellig}  ${r.kunde}`);
      }
    }
    return;
  }
  if (arg('--pdf')) {
    await holePdf(arg('--pdf'), String(arg('--ziel', '.')));
    return;
  }
  if (arg('--abgleich')) {
    const { realCount, credUnrecCount, ohneBeleg, eingangOhneBuchung } = await abgleichCheck();
    if (arg('--json')) { console.log(JSON.stringify({ realCount, credUnrecCount, ohneBeleg, eingangOhneBuchung }, null, 2)); return; }
    console.log(`Echte Eingaenge (reconciled/auto): ${realCount}  |  unreconciled CREDIT (meist Duplikate): ${credUnrecCount}`);
    console.log(`\n■ Als BEZAHLT gebucht, aber OHNE echten Bankbeleg (${ohneBeleg.length}):`);
    if (ohneBeleg.length) for (const f of ohneBeleg) console.log(`  ⚠ ${f.nr}  ${chf(f.betrag)}  gebucht ${f.datum}  ${f.kunde}`);
    else console.log('  (keine — alle bezahlten Rechnungen sind bankgedeckt)');
    console.log(`\n■ Echter Bankeingang ohne zugeordnete Rechnungs-Zahlung (${eingangOhneBuchung.length}):`);
    for (const r of eingangOhneBuchung) console.log(`  ${r.date}  ${chf(r.amount)}  (Bank-Tx ${r.id})`);
    return;
  }
  if (arg('--duplikate')) {
    const d = await duplikate();
    if (arg('--json')) { console.log(JSON.stringify(d, null, 2)); return; }
    const cred = d.filter(x => x.type === 'CREDIT'), deb = d.filter(x => x.type === 'DEBIT');
    console.log(`${d.length} Phantom-Duplikate (unreconciled mit abgeglichenem Zwilling) — in der bexio-UI auf «ignoriert» setzen:`);
    console.log(`  CREDIT (Eingaenge): ${cred.length}  |  DEBIT (Ausgaenge): ${deb.length}`);
    console.log('\nCREDIT-Duplikate (relevant fuer Debitoren):');
    for (const x of cred) console.log(`  Tx ${x.id}  ${x.date}  ${chf(x.amount)}  ${x.title || ''}`);
    console.log('\nTransaktions-IDs zum Ignorieren (CREDIT): ' + cred.map(x => x.id).join(', '));
    return;
  }
  if (arg('--mahnpdf')) {
    const reminderId = arg('--reminder'); const stufe = arg('--stufe');
    await holeMahnPdf(arg('--mahnpdf'), {
      reminderId: reminderId && reminderId !== true ? reminderId : null,
      stufe: stufe && stufe !== true ? stufe : null,
      zielDir: String(arg('--ziel', '.')),
    });
    return;
  }
  console.log('Verwendung: --test | --offen | --verzug [--alle] [--json] | --suche "Nr/Titel" | --rechnung <ID> | --mahnstufe <ID> | --mahnen <ID> [--ja] [--senden] | --pdf <ID> --ziel DIR | --mahnpdf <ID> [--stufe N|--reminder RID] --ziel DIR');
};

main().catch(e => fail(e.message));
