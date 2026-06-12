#!/usr/bin/env node
/**
 * JANS Connector — Truninger-Plattform (DS3 Data-Share, ds3.data-share.ch)
 * ========================================================================
 * Projektraum-Zugriff NUR LESEND. Findet Dokumente im DS3-Projektraum
 * (z.B. KISPI Hauptsammlung > Projektraum > 33 Bewilligungsverfahren)
 * und laedt sie lokal herunter. Aendert NIE etwas an der Struktur.
 *
 * READ-ONLY-GARANTIE (hart im Code):
 *   - Einzige erlaubte POST-Anfrage: /login_handler (Anmeldung).
 *   - Alles andere ausschliesslich GET. Jede andere Methode wirft einen Fehler.
 *   - Es existiert KEIN Code fuer Upload, Umbenennen, Loeschen, Verschieben.
 *
 * Zugangsdaten (nie in Git):
 *   ~/.truninger-ds3.env   mit Zeilen:
 *     TRUNINGER_DS3_USER=...
 *     TRUNINGER_DS3_PASS=...
 *   (chmod 600). Alternativ als Umgebungsvariablen.
 *
 * Verwendung:
 *   node truninger-ds3.mjs --test
 *   node truninger-ds3.mjs --ls /                          # Einstieg/Sammlungen
 *   node truninger-ds3.mjs --ls Collection-13304935        # Ordner auflisten
 *   node truninger-ds3.mjs --ls Collection-13304935 --tiefe 2   # rekursiv
 *   node truninger-ds3.mjs --suche "Energienachweis" --in Collection-13304935 --tiefe 4
 *   node truninger-ds3.mjs --holen Document-12345 --ziel "./Downloads"
 *   node truninger-ds3.mjs --roh /ds/Collection-13304935/view   # HTML-Dump (Debug)
 *
 * Stand: 12.06.2026 — Login-Flow am Original verifiziert (Formularfelder
 * user_name/password, Session-Cookie ds3app). Die HTML-Parser unten sind
 * generisch (Link-Muster /ds/Collection-… und /ds/Document-…) und werden
 * nach dem ersten echten Login bei Bedarf nachgeschaerft.
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { homedir } from 'node:os';
import { join, basename } from 'node:path';

const BASE = 'https://ds3.data-share.ch';
const LOGIN_PATH = '/login_handler'; // EINZIGER erlaubter POST
const ENV_FILE = join(homedir(), '.truninger-ds3.env');

// ---------------------------------------------------------------- Hilfen
function fail(msg) { console.error('FEHLER: ' + msg); process.exit(1); }

function ladeZugang() {
  let user = process.env.TRUNINGER_DS3_USER || '';
  let pass = process.env.TRUNINGER_DS3_PASS || '';
  if ((!user || !pass) && existsSync(ENV_FILE)) {
    for (const zeile of readFileSync(ENV_FILE, 'utf8').split('\n')) {
      const m = zeile.match(/^\s*(TRUNINGER_DS3_USER|TRUNINGER_DS3_PASS)\s*=\s*(.+)\s*$/);
      if (m) { if (m[1].endsWith('USER')) user = m[2]; else pass = m[2]; }
    }
  }
  if (!user || !pass) {
    fail(`Keine Zugangsdaten. Bitte ${ENV_FILE} anlegen (TRUNINGER_DS3_USER=… / TRUNINGER_DS3_PASS=…, chmod 600).`);
  }
  return { user, pass };
}

// Cookie-Jar (einfach): Name=Wert, letzte Setzung gewinnt
const jar = new Map();
function merkeCookies(res) {
  const set = res.headers.getSetCookie ? res.headers.getSetCookie() : [];
  for (const c of set) {
    const [pair] = c.split(';');
    const i = pair.indexOf('=');
    if (i > 0) jar.set(pair.slice(0, i).trim(), pair.slice(i + 1).trim());
  }
}
function cookieHeader() {
  return [...jar.entries()].map(([k, v]) => `${k}=${v}`).join('; ');
}

/** Einzige HTTP-Funktion. Erzwingt die Read-only-Politik. */
async function anfrage(pfad, { methode = 'GET', body = null, redirect = 'manual' } = {}) {
  if (methode !== 'GET' && !(methode === 'POST' && pfad.startsWith(LOGIN_PATH))) {
    throw new Error(`READ-ONLY-Verletzung verhindert: ${methode} ${pfad} ist nicht erlaubt.`);
  }
  const url = pfad.startsWith('http') ? pfad : BASE + pfad;
  const headers = { 'User-Agent': 'JANS-truninger-ds3-readonly/1.0' };
  if (jar.size) headers['Cookie'] = cookieHeader();
  if (body) headers['Content-Type'] = 'application/x-www-form-urlencoded';
  const res = await fetch(url, { method: methode, headers, body, redirect });
  merkeCookies(res);
  return res;
}

async function login() {
  const { user, pass } = ladeZugang();
  await anfrage('/login'); // Session-Cookie holen
  const body = new URLSearchParams({ user_name: user, password: pass, login: 'Login' }).toString();
  let res = await anfrage(`${LOGIN_PATH}?__logins=0&came_from=${encodeURIComponent(BASE + '/ds')}`,
    { methode: 'POST', body });
  // Redirect-Kette von Hand folgen (nur GET), Cookies mitnehmen
  let ziel = res.headers.get('location');
  for (let i = 0; ziel && i < 5; i++) {
    res = await anfrage(ziel);
    ziel = res.status >= 300 && res.status < 400 ? res.headers.get('location') : null;
  }
  const html = await res.text();
  if (/login_form|Zugriff nur f/i.test(html) && !/logout/i.test(html)) {
    fail('Login fehlgeschlagen — Benutzername/Kennwort pruefen.');
  }
  return html;
}

// ------------------------------------------------------------ HTML-Parser
function entitäten(s) {
  return s.replace(/&amp;/g, '&').replace(/&lt;/g, '<').replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"').replace(/&#39;/g, "'").replace(/\s+/g, ' ').trim();
}

/** Findet Sammlungen (Ordner) und Dokumente in einer DS3-Seite.
 *  Primaer: Listenzeilen (<a class="list_item_title" data-handle="Typ-Id">Name</a>).
 *  Fallback: generische /ds/Typ-Id/view-Links (z.B. Einstiegsseite). */
function parseEintraege(html) {
  const eintraege = [];
  const gesehen = new Set();
  if (/Keine Objekte vorhanden/.test(html)) return eintraege; // leerer Ordner
  const typName = t => (t === 'Document' || t === 'File' ? 'Dokument' : 'Ordner');
  const push = (typ, id, name, href) => {
    const eid = `${typ}-${id}`;
    if (gesehen.has(eid) || !name) return;
    gesehen.add(eid);
    eintraege.push({ id: eid, typ: typName(typ), name, href });
  };
  // 1) Listenzeilen mit Titel (Ordner: …/view · Dateien: …/get/head/raw/<name>)
  const reTitel = /<a[^>]*class="[^"]*list_item_title[^"]*"[^>]*href="([^"]*\/((?:Root|Job)?Collection|Document|File)-(\d+)\/[^"]*)"[^>]*>([\s\S]*?)<\/a>/g;
  let m;
  while ((m = reTitel.exec(html))) push(m[2], m[3], entitäten(m[4]), m[1]);
  // 2) Fallback nur fuer Navigationsseiten ohne Listenzeilen (z.B. Einstiegsseite);
  //    Breadcrumb-Links ausschliessen, sonst laeuft die Rekursion rueckwaerts.
  if (!eintraege.length) {
    const reGen = /<a(?![^>]*breadcrumb)[^>]*href="([^"]*\/((?:Root|Job)?Collection|Document|Project)-(\d+)\/(?:view|project_index)[^"]*)"[^>]*>([\s\S]*?)<\/a>/g;
    while ((m = reGen.exec(html))) {
      const text = entitäten(m[4].replace(/<[^>]*>/g, ''));
      push(m[2], m[3], text || `${m[2]}-${m[3]}`, m[1]);
    }
  }
  return eintraege;
}

async function holeSeite(idOderPfad) {
  let pfad;
  if (idOderPfad === '/' || !idOderPfad) pfad = '/ds';
  else if (/^((?:Root|Job)?Collection|Document)-\d+$/.test(idOderPfad)) pfad = `/ds/${idOderPfad}/view`;
  else if (/^Project-\d+$/.test(idOderPfad)) pfad = `/ds/${idOderPfad}/project_index`;
  else pfad = idOderPfad.startsWith('/') ? idOderPfad : '/' + idOderPfad;
  let res = await anfrage(pfad, { redirect: 'manual' });
  let ziel = res.headers.get('location');
  for (let i = 0; ziel && i < 5; i++) {
    if (/\/login/.test(ziel)) fail('Session abgelaufen/kein Zugriff auf ' + pfad);
    res = await anfrage(ziel);
    ziel = res.status >= 300 && res.status < 400 ? res.headers.get('location') : null;
  }
  return await res.text();
}

async function listieren(start, tiefe, filter = null, pfadname = '') {
  const html = await holeSeite(start);
  const eintraege = parseEintraege(html);
  const resultate = [];
  for (const e of eintraege) {
    const voll = pfadname ? `${pfadname} / ${e.name}` : e.name;
    const treffer = !filter || voll.toLowerCase().includes(filter.toLowerCase());
    if (treffer) resultate.push({ ...e, pfad: voll });
    if (e.typ === 'Ordner' && tiefe > 1) {
      try {
        resultate.push(...await listieren(e.id, tiefe - 1, filter, voll));
      } catch { /* Ordner ohne Leserecht ueberspringen */ }
    }
  }
  return resultate;
}

async function herunterladen(docId, zielDir) {
  if (!/^(File|Document)-\d+$/.test(docId)) fail('--holen erwartet eine File-/Document-ID (z.B. File-18400478).');
  mkdirSync(zielDir, { recursive: true });
  // 1) DS3-Files: Eigenschaften-Seite nennt den raw-Link mit echtem Dateinamen
  if (docId.startsWith('File-')) {
    const props = await (await anfrage(`/ds/${docId}/properties/props_view`, { redirect: 'follow' })).text();
    const mRaw = props.match(new RegExp(`href="(/ds/${docId}/get/[^"]+)"`));
    const rawPfad = mRaw ? entitäten(mRaw[1]) : `/ds/${docId}/get/head/raw/datei`;
    const res = await anfrage(rawPfad, { redirect: 'follow' });
    if (!res.ok) fail(`Download fehlgeschlagen (HTTP ${res.status}) fuer ${docId}.`);
    const cd = res.headers.get('content-disposition') || '';
    const mName = cd.match(/filename\*?=(?:UTF-8'')?"?([^";]+)/i);
    const name = mName ? decodeURIComponent(mName[1]) : decodeURIComponent(basename(rawPfad));
    const datei = join(zielDir, basename(name));
    writeFileSync(datei, Buffer.from(await res.arrayBuffer()));
    console.log(`Gespeichert: ${datei}`);
    return;
  }
  // 2) Aeltere Document-Objekte: uebliche Downloadpfade durchprobieren (alles GET)
  const kandidaten = [`/ds/${docId}/download`, `/ds/${docId}/file`, `/ds/${docId}/view`];
  for (const pfad of kandidaten) {
    const res = await anfrage(pfad, { redirect: 'follow' });
    const typ = res.headers.get('content-type') || '';
    if (res.ok && !typ.includes('text/html')) {
      const cd = res.headers.get('content-disposition') || '';
      const mName = cd.match(/filename\*?=(?:UTF-8'')?"?([^";]+)/i);
      const name = mName ? decodeURIComponent(mName[1]) : `${docId}.bin`;
      const datei = join(zielDir, basename(name));
      writeFileSync(datei, Buffer.from(await res.arrayBuffer()));
      console.log(`Gespeichert: ${datei}`);
      return;
    }
    if (res.ok && typ.includes('text/html')) {
      // Download-Link aus der Dokumentseite ziehen
      const html = await res.text();
      const m = html.match(/href="([^"]*(download|get_file|attachment)[^"]*)"/i);
      if (m) {
        const res2 = await anfrage(entitäten(m[1]), { redirect: 'follow' });
        if (res2.ok) {
          const cd = res2.headers.get('content-disposition') || '';
          const mName = cd.match(/filename\*?=(?:UTF-8'')?"?([^";]+)/i);
          const name = mName ? decodeURIComponent(mName[1]) : `${docId}.bin`;
          const datei = join(zielDir, basename(name));
          writeFileSync(datei, Buffer.from(await res2.arrayBuffer()));
          console.log(`Gespeichert: ${datei}`);
          return;
        }
      }
    }
  }
  fail(`Kein Download-Endpunkt fuer ${docId} gefunden — bitte mit --roh /ds/${docId}/view die Seite pruefen.`);
}

// ----------------------------------------------------------------- Main
const argv = process.argv.slice(2);
function arg(name, def = null) {
  const i = argv.indexOf(name);
  return i >= 0 ? (argv[i + 1] && !argv[i + 1].startsWith('--') ? argv[i + 1] : true) : def;
}

const main = async () => {
  if (arg('--test')) {
    await login();
    console.log('Login OK — Lesezugriff auf ds3.data-share.ch funktioniert.');
    const eintraege = parseEintraege(await holeSeite('/'));
    console.log(`Einstiegsseite: ${eintraege.length} Eintraege sichtbar.`);
    for (const e of eintraege.slice(0, 20)) console.log(`  [${e.typ}] ${e.id}  ${e.name}`);
    return;
  }
  if (arg('--roh')) {
    await login();
    const html = await holeSeite(arg('--roh'));
    console.log(html);
    return;
  }
  if (arg('--ls')) {
    await login();
    const tiefe = parseInt(arg('--tiefe', '1'), 10);
    const res = await listieren(arg('--ls'), tiefe);
    for (const e of res) console.log(`[${e.typ}] ${e.id}  ${e.pfad}`);
    if (!res.length) console.log('(leer oder Parser muss nachgeschaerft werden — mit --roh pruefen)');
    return;
  }
  if (arg('--suche')) {
    await login();
    const start = arg('--in', '/');
    const tiefe = parseInt(arg('--tiefe', '3'), 10);
    const res = await listieren(start, tiefe, String(arg('--suche')));
    for (const e of res) console.log(`[${e.typ}] ${e.id}  ${e.pfad}`);
    if (!res.length) console.log('Keine Treffer.');
    return;
  }
  if (arg('--holen')) {
    await login();
    await herunterladen(String(arg('--holen')), String(arg('--ziel', '.')));
    return;
  }
  console.log('Verwendung: --test | --ls <Collection-ID|/> [--tiefe N] | --suche "Begriff" [--in <ID>] [--tiefe N] | --holen <Document-ID> [--ziel DIR] | --roh <Pfad>');
};

main().catch(e => fail(e.message));
