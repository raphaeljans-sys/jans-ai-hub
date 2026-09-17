#!/usr/bin/env node
/**
 * JANS Connector — bexio-Zugang ueber OpenID Connect (Dauerloesung statt 60-Tage-PAT)
 * ==================================================================================
 * Haelt den bexio-Zugang ueber einen Refresh-Token am Leben. Geheimnisse liegen
 * AUSSCHLIESSLICH im macOS-Login-Schluesselbund (Service `jans-bexio-oidc`), nie in einer
 * Datei, nie in Git, nie in der Ausgabe. Spec:
 * `wissen/spec/outputs/2026-09-17_bexio-oidc-dauerzugang_spec.md`.
 *
 * Einmalig je Station (im EIGENEN Terminal, nicht durch Claude):
 *   1. developer.bexio.com > My Apps > Create new app
 *      Redirect-URL exakt:  http://localhost:8917/callback
 *   2. node connectors/bexio-auth.mjs --einrichten
 *      (fragt Client-ID und Client-Secret ab, Secret verdeckt; oeffnet den Browser zum Login)
 *
 * Danach:
 *   node connectors/bexio-auth.mjs --status      # Zugangsart, Scopes, letzte Erneuerung
 *   node connectors/bexio-auth.mjs --erneuern    # Refresh erzwingen (Wechseltest zwischen Stationen)
 *   node connectors/bexio-auth.mjs --entfernen --ja
 *
 * `bexio.mjs` importiert `holeOidcToken()`; ist OIDC nicht eingerichtet, liefert die
 * Funktion null und der Connector faellt auf den PAT in ~/.bexio.env zurueck.
 *
 * Fakten (docs.bexio.com, gelesen 17.09.2026): Refresh-Token gilt unbegrenzt, die
 * Offline-Session schliesst nach 1 Jahr ohne Erneuerung; der bei der Erneuerung gelieferte
 * Refresh-Token ERSETZT den alten. Parameter an /token nur im Body.
 */

import { spawnSync } from 'node:child_process';
import { createServer } from 'node:http';
import { createHash, randomBytes } from 'node:crypto';
import { mkdirSync, rmdirSync, statSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';
import { createInterface } from 'node:readline';
import { fileURLToPath } from 'node:url';

const REALM = 'https://auth.bexio.com/realms/bexio/protocol/openid-connect';
const SERVICE = 'jans-bexio-oidc';
const PORT = 8917;
const REDIRECT = `http://localhost:${PORT}/callback`;
// Eng gehalten (Entscheid Raphael 17.09.2026): keine Bankzahlungen AUSLOESEN, kein Lohn.
// bank_payment_show (nur lesen) ergaenzt 17.09.2026: `--kontieren` liest /3.0/banking/transactions,
// das mit bank_account_show allein 403 liefert (gemessen). Scope-Aenderung braucht ein neues --einrichten.
export const SCOPES = 'openid offline_access company_profile kb_invoice_edit accounting contact_show bank_account_show bank_payment_show';
const LOCK = join(homedir(), '.cache', 'jans-bexio-oidc.lock');

// --- Schluesselbund ---------------------------------------------------------------------

function kcGet(account) {
  const r = spawnSync('/usr/bin/security', ['find-generic-password', '-s', SERVICE, '-a', account, '-w'], { encoding: 'utf8' });
  if (r.status === 0) return r.stdout.replace(/\n$/, '');
  // 44 = Eintrag fehlt. Alles andere (gesperrter Schluesselbund, keine GUI-Session) ist ein
  // Betriebsfehler und darf nicht wie «nicht eingerichtet» aussehen.
  if (r.status === 44) return null;
  // 36 = Interaktion nicht erlaubt: typisch fuer ssh-Sessions und launchd ohne GUI-Anmeldung.
  throw new Error(`Schluesselbund nicht lesbar (security rc=${r.status}${r.status === 36 ? ', gesperrt oder ssh-Session ohne GUI' : ''}) ` +
    '— in einer ssh-Session zuerst: security unlock-keychain');
}

function kcSet(account, wert) {
  // Ueber stdin von `security -i`, damit der Wert nie in der Prozessliste steht.
  const q = String(wert).replace(/\\/g, '\\\\').replace(/"/g, '\\"');
  const r = spawnSync('/usr/bin/security', ['-i'], {
    input: `add-generic-password -U -s ${SERVICE} -a ${account} -w "${q}"\n`, encoding: 'utf8',
  });
  if (r.status !== 0) throw new Error(`Schluesselbund nicht schreibbar (${account}): ${String(r.stderr).trim()}`);
}

function kcDel(account) {
  spawnSync('/usr/bin/security', ['delete-generic-password', '-s', SERVICE, '-a', account], { encoding: 'utf8' });
}

// --- Token-Logik ------------------------------------------------------------------------

function jwtFelder(token) {
  try {
    const t = String(token).split('.')[1].replace(/-/g, '+').replace(/_/g, '/');
    return JSON.parse(Buffer.from(t, 'base64').toString('utf8'));
  } catch { return {}; }
}

async function tokenEndpunkt(params) {
  const res = await fetch(`${REALM}/token`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded', 'Accept': 'application/json' },
    body: new URLSearchParams(params).toString(),
  });
  const txt = await res.text();
  let j = {};
  try { j = JSON.parse(txt); } catch {}
  if (!res.ok || !j.access_token) {
    throw new Error(`bexio /token HTTP ${res.status}: ${j.error || ''} ${j.error_description || txt.slice(0, 200)}`.trim());
  }
  return j;
}

function speichere(j) {
  // Reihenfolge mit Absicht: zuerst der neue Refresh-Token. Er ersetzt den alten; geht er
  // verloren, ist die Station ausgesperrt und braucht ein neues --einrichten.
  if (j.refresh_token) kcSet('refresh_token', j.refresh_token);
  kcSet('access_token', j.access_token);
  kcSet('erneuert', new Date().toISOString());
}

async function mitLock(fn) {
  mkdirSync(join(homedir(), '.cache'), { recursive: true });
  for (let i = 0; i < 100; i++) {
    try { mkdirSync(LOCK); break; } catch {
      try { if (Date.now() - statSync(LOCK).mtimeMs > 30000) rmdirSync(LOCK); } catch {}
      await new Promise(r => setTimeout(r, 200));
      if (i === 99) throw new Error('bexio-OIDC-Lock haengt: ' + LOCK);
    }
  }
  try { return await fn(); } finally { try { rmdirSync(LOCK); } catch {} }
}

const frisch = t => t && (jwtFelder(t).exp || 0) * 1000 - Date.now() > 60000;

/**
 * Liefert einen gueltigen Access-Token oder null, wenn OIDC auf dieser Station nicht
 * eingerichtet ist. Wirft, wenn es eingerichtet ist, aber scheitert.
 */
export async function holeOidcToken({ erzwingen = false } = {}) {
  const refresh = kcGet('refresh_token');
  if (!refresh) return null;
  const vorhanden = kcGet('access_token');
  if (!erzwingen && frisch(vorhanden)) return vorhanden;
  return mitLock(async () => {
    // Ein paralleler Lauf kann inzwischen erneuert haben: nach dem Lock neu lesen.
    const jetzt = kcGet('access_token');
    if (!erzwingen && frisch(jetzt)) return jetzt;
    const j = await tokenEndpunkt({
      grant_type: 'refresh_token',
      refresh_token: kcGet('refresh_token'),
      client_id: kcGet('client_id') || '',
      client_secret: kcGet('client_secret') || '',
    });
    speichere(j);
    return j.access_token;
  });
}

// --- Einrichtung (interaktiv) -----------------------------------------------------------

function frage(text, verdeckt = false) {
  return new Promise(resolve => {
    const rl = createInterface({ input: process.stdin, output: process.stdout, terminal: true });
    if (verdeckt) rl._writeToOutput = s => { if (s.includes(text)) rl.output.write(text); };
    rl.question(text, a => { rl.close(); if (verdeckt) process.stdout.write('\n'); resolve(a.trim()); });
  });
}

async function einrichten() {
  if (!process.stdin.isTTY) {
    console.error('FEHLER: --einrichten braucht ein echtes Terminal (Secret-Eingabe, Browser-Login).');
    process.exit(2);
  }
  console.log(`Voraussetzung: App unter developer.bexio.com > My Apps, Redirect-URL exakt ${REDIRECT}\n`);
  const clientId = await frage('Client-ID: ');
  const clientSecret = await frage('Client-Secret (Eingabe verdeckt): ', true);
  if (!clientId || !clientSecret) { console.error('FEHLER: Client-ID und Client-Secret sind noetig.'); process.exit(2); }

  const state = randomBytes(16).toString('hex');
  const verifier = randomBytes(48).toString('base64url');
  const challenge = createHash('sha256').update(verifier).digest('base64url');

  const code = await new Promise((resolve, reject) => {
    const srv = createServer((req, res) => {
      const u = new URL(req.url, REDIRECT);
      if (u.pathname !== '/callback') { res.writeHead(404).end(); return; }
      const ok = u.searchParams.get('state') === state && u.searchParams.get('code');
      res.writeHead(ok ? 200 : 400, { 'Content-Type': 'text/plain; charset=utf-8' });
      res.end(ok ? 'bexio-Zugang autorisiert. Dieses Fenster kann geschlossen werden.'
                 : 'Autorisierung fehlgeschlagen: ' + (u.searchParams.get('error_description') || 'state/code fehlt'));
      srv.close();
      ok ? resolve(u.searchParams.get('code')) : reject(new Error(u.searchParams.get('error') || 'state/code fehlt'));
    });
    srv.on('error', reject);
    srv.listen(PORT, '127.0.0.1', () => {
      const url = `${REALM}/auth?` + new URLSearchParams({
        client_id: clientId, redirect_uri: REDIRECT, response_type: 'code', scope: SCOPES,
        state, code_challenge: challenge, code_challenge_method: 'S256',
      });
      console.log('\nBrowser oeffnet sich; bei bexio anmelden und den Zugriff bestaetigen …');
      spawnSync('/usr/bin/open', [url]);
    });
    setTimeout(() => { srv.close(); reject(new Error('Zeitueberschreitung (5 Min) beim Browser-Login')); }, 300000).unref();
  });

  const j = await tokenEndpunkt({
    grant_type: 'authorization_code', code, redirect_uri: REDIRECT,
    client_id: clientId, client_secret: clientSecret, code_verifier: verifier,
  });
  if (!j.refresh_token) throw new Error('bexio lieferte keinen Refresh-Token (Scope offline_access abgelehnt?)');
  kcSet('client_id', clientId);
  kcSet('client_secret', clientSecret);
  speichere(j);
  console.log('\nEingerichtet. Geheimnisse liegen im Schluesselbund (Service ' + SERVICE + ').');
  status();
}

export function oidcStatus() {
  const refresh = kcGet('refresh_token');
  if (!refresh) return null;
  const a = jwtFelder(kcGet('access_token') || '');
  return {
    scopes: (a.scope || '').split(' ').filter(s => !['openid', 'profile', 'email'].includes(s)).join(' '),
    accessBis: a.exp ? new Date(a.exp * 1000).toLocaleString('de-CH') : '(unbekannt)',
    erneuert: kcGet('erneuert') ? new Date(kcGet('erneuert')).toLocaleString('de-CH') : '(nie)',
  };
}

function status() {
  const s = oidcStatus();
  if (!s) { console.log('OIDC auf dieser Station NICHT eingerichtet (Rueckfall: PAT in ~/.bexio.env).'); return; }
  console.log('OIDC eingerichtet.');
  console.log('Scopes: ' + s.scopes);
  console.log('Access-Token gueltig bis: ' + s.accessBis);
  console.log('Zuletzt erneuert: ' + s.erneuert);
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const a = process.argv.slice(2);
  try {
    if (a.includes('--einrichten')) await einrichten();
    else if (a.includes('--status')) status();
    else if (a.includes('--erneuern')) { await holeOidcToken({ erzwingen: true }); console.log('Erneuert.'); status(); }
    else if (a.includes('--entfernen')) {
      if (!a.includes('--ja')) console.log('TROCKENLAUF: wuerde die vier Schluesselbund-Eintraege von ' + SERVICE + ' loeschen. Mit --ja ausfuehren.');
      else { ['refresh_token', 'access_token', 'client_id', 'client_secret', 'erneuert'].forEach(kcDel); console.log('Entfernt.'); }
    } else console.log('Verwendung: --einrichten | --status | --erneuern | --entfernen [--ja]');
  } catch (e) { console.error('FEHLER: ' + e.message); process.exit(1); }
}
