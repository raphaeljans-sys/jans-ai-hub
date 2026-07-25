#!/usr/bin/env node
/**
 * JANS Zefix-Connector — Zentraler Firmenindex (Handelsregister CH) (v1)
 * =====================================================================
 * Fragt den schweizweiten Handelsregister-Index (Zefix) ueber die OFFIZIELLE
 * Zefix Public REST API ab. Zweck im JANS-Hub: das "externe Signal" des Verifiers
 * (Spec-Methode, Layer 2) fuer firmenbezogene Fakten — v.a.
 *   1. Firmenname-VERFUEGBARKEIT vor einer Gruendung (AG/GmbH geniessen schweizweiten
 *      Ausschliesslichkeitsschutz, OR 951 Abs. 2), und
 *   2. Firmen-Stammdaten (UID, Sitz, Rechtsform, Status) zu einem Namen/einer UID.
 *
 * OFFIZIELLE API (kein Scraping):
 *   Basis (Prod):   https://www.zefix.admin.ch/ZefixPublicREST/api/v1
 *   Auth:           HTTP Basic (Benutzer/Passwort) — KOSTENLOS, einmalige Registrierung
 *                   per Mail an zefix@bj.admin.ch.
 *   Swagger:        https://www.zefix.admin.ch/ZefixPublicREST/swagger-ui/index.html
 *   Endpunkte:      POST /firm/search   (Suche nach Name/Kanton/activeOnly)
 *                   GET  /firm/{uidOderChid}  (Stammdaten)
 *
 * ZUGANGSDATEN (pro Station, NIE in Git):
 *   ~/.zefix.env    # chmod 600
 *   ZEFIX_USER=...
 *   ZEFIX_PASS=...
 *
 * AUFRUF:
 *   node zefix.mjs --test                          # Login/API pruefen
 *   node zefix.mjs --available "JANS AG"           # Namens-Check (Verfuegbarkeit)
 *   node zefix.mjs --search "Jans" --canton ZH     # Treffer auflisten
 *   node zefix.mjs --firm CHE-123.456.789          # Stammdaten zu UID/CHID
 *   node zefix.mjs --available "JANS AG" --json
 *
 * FLAGS:
 *   --available "<firma>"   Verfuegbarkeits-Check: identische/aktive Eintraege schweizweit
 *   --search "<begriff>"    Freie Suche (Liste der Treffer)
 *   --firm <UID|CHID>       Stammdaten einer Firma
 *   --canton <XX>           Kantons-Filter (z.B. ZH) fuer --search/--available
 *   --active <true|false>   nur aktive Eintraege (Default true)
 *   --json                  Rohausgabe als JSON
 *   --quiet                 nur das Wesentliche
 *
 * Rules: identifikatoren-verifizieren (UID/Firmennamen NIE erfinden — nur ausweisen, was
 *   die amtliche API liefert); read-only (der Connector kennt ausser dem Auth-Header keine
 *   schreibende Anfrage; es existiert KEIN Code fuer Upload/Aenderung/Loeschung).
 *
 * WICHTIG zur Aussagekraft des Namens-Checks: Der Check ist ein belastbares INDIZ, kein
 * amtlicher Entscheid. Das Handelsregisteramt verlangt "deutliche Unterscheidbarkeit" — ein
 * identischer aktiver Eintrag ist ein klarer Blocker; das endgueltige Wort hat HRA/Notar.
 */

import { readFileSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';

const BASE = 'https://www.zefix.admin.ch/ZefixPublicREST/api/v1';
const ENV_FILE = join(homedir(), '.zefix.env');

function fail(msg) { console.error('FEHLER: ' + msg); process.exit(1); }

function ladeCreds() {
  let user = process.env.ZEFIX_USER || '';
  let pass = process.env.ZEFIX_PASS || '';
  try {
    for (const zeile of readFileSync(ENV_FILE, 'utf8').split('\n')) {
      const m = zeile.match(/^\s*(ZEFIX_USER|ZEFIX_PASS)\s*=\s*(.+?)\s*$/);
      if (m) { if (m[1] === 'ZEFIX_USER') user = m[2]; else pass = m[2]; }
    }
  } catch { /* env-Datei optional, wenn Variablen gesetzt sind */ }
  if (!user || !pass) {
    fail('Keine Zugangsdaten. Zefix Public REST verlangt Basic-Auth.\n' +
      '  1. Kostenlos anfordern: Mail an zefix@bj.admin.ch (Benutzer/Passwort).\n' +
      '  2. Ablegen:  printf \'ZEFIX_USER=...\\nZEFIX_PASS=...\\n\' > ~/.zefix.env && chmod 600 ~/.zefix.env');
  }
  return 'Basic ' + Buffer.from(user + ':' + pass).toString('base64');
}

async function api(method, pfad, body) {
  if (typeof fetch !== 'function') fail('Node 18+ noetig (globales fetch fehlt).');
  const res = await fetch(BASE + pfad, {
    method,
    headers: {
      'Authorization': ladeCreds(),
      'Accept': 'application/json',
      ...(body ? { 'Content-Type': 'application/json' } : {}),
    },
    ...(body ? { body: JSON.stringify(body) } : {}),
  }).catch(e => fail('Netzwerk: ' + e.message));
  if (res.status === 401) fail('401 — Zugangsdaten ungueltig. ~/.zefix.env pruefen oder bei zefix@bj.admin.ch neu anfordern.');
  if (res.status === 403) fail('403 — Zugang gesperrt/kein Recht fuer diesen Endpunkt.');
  if (!res.ok) fail('HTTP ' + res.status + ' bei ' + method + ' ' + pfad);
  const txt = await res.text();
  return txt ? JSON.parse(txt) : null;
}

async function suche({ name, canton, active }) {
  const body = { name, languageKey: 'de', activeOnly: active !== 'false' };
  if (canton) body.canton = canton.toUpperCase();
  const r = await api('POST', '/firm/search', body);
  // API liefert i.d.R. ein Array von Kurz-Objekten (name, uid/chid, legalSeat, legalForm, ...)
  return Array.isArray(r) ? r : (r && Array.isArray(r.list) ? r.list : (r ? [r] : []));
}

function zeile(f) {
  const sitz = f.legalSeat || f.address?.town || '?';
  const form = f.legalForm?.name?.de || f.legalForm?.shortName?.de || f.legalFormId || '';
  const uid = f.uid || f.chid || '';
  const status = f.status || (f.deleteDate ? 'GELOESCHT' : 'aktiv');
  return `${f.name}  —  ${sitz}${form ? ' · ' + form : ''}${uid ? ' · ' + uid : ''} · ${status}`;
}

function norm(s) { return (s || '').toLowerCase().replace(/\b(ag|sa|gmbh|sarl|sagl)\b/g, '').replace(/[^a-z0-9]/g, '').trim(); }

const args = process.argv.slice(2);
function opt(flag) { const i = args.indexOf(flag); return i >= 0 ? args[i + 1] : undefined; }
const has = (flag) => args.includes(flag);
const JSONOUT = has('--json'), QUIET = has('--quiet');
const canton = opt('--canton'), active = opt('--active');

const run = async () => {
  if (has('--test')) {
    const r = await suche({ name: 'Zefix-Selbsttest-ohne-Treffer-xyz', active });
    console.log('OK — Zefix-API erreichbar, Auth gueltig. (Testsuche lieferte ' + r.length + ' Treffer.)');
    return;
  }

  const verfuegbar = opt('--available');
  if (verfuegbar) {
    const treffer = await suche({ name: verfuegbar, canton, active });
    if (JSONOUT) { console.log(JSON.stringify({ query: verfuegbar, count: treffer.length, treffer }, null, 2)); return; }
    const zielN = norm(verfuegbar);
    const exakt = treffer.filter(f => norm(f.name) === zielN);
    if (exakt.length) {
      console.log(`KOLLISION — "${verfuegbar}" hat ${exakt.length} identische(n) aktive(n) Eintrag/Eintraege schweizweit:`);
      exakt.forEach(f => console.log('  • ' + zeile(f)));
      console.log('AG/GmbH geniessen schweizweiten Schutz (OR 951 II) — Name so vsl. NICHT eintragbar. Alternative/Zusatz waehlen.');
    } else if (treffer.length) {
      console.log(`PRUEFEN — kein identischer aktiver Eintrag, aber ${treffer.length} aehnliche(r):`);
      treffer.slice(0, 15).forEach(f => console.log('  • ' + zeile(f)));
      console.log('Kein exakter Treffer = gutes Zeichen. "Deutliche Unterscheidbarkeit" beurteilt HRA/Notar.');
    } else {
      console.log(`FREI (Indiz) — kein aktiver Zefix-Eintrag fuer "${verfuegbar}" gefunden. Letztes Wort: HRA/Notar.`);
    }
    return;
  }

  const begriff = opt('--search');
  if (begriff) {
    const treffer = await suche({ name: begriff, canton, active });
    if (JSONOUT) { console.log(JSON.stringify(treffer, null, 2)); return; }
    console.log(`${treffer.length} Treffer fuer "${begriff}"${canton ? ' (Kt. ' + canton.toUpperCase() + ')' : ''}:`);
    treffer.slice(0, 50).forEach(f => console.log('  • ' + zeile(f)));
    return;
  }

  const id = opt('--firm');
  if (id) {
    const r = await api('GET', '/firm/' + encodeURIComponent(id));
    if (JSONOUT) { console.log(JSON.stringify(r, null, 2)); return; }
    if (!r) { console.log('Kein Eintrag zu ' + id); return; }
    console.log(zeile(r));
    if (!QUIET && r.purpose) console.log('Zweck: ' + r.purpose);
    return;
  }

  console.log('JANS Zefix-Connector. Beispiele:\n' +
    '  node zefix.mjs --test\n' +
    '  node zefix.mjs --available "JANS AG"\n' +
    '  node zefix.mjs --search "Jans" --canton ZH\n' +
    '  node zefix.mjs --firm CHE-123.456.789');
};

run();
