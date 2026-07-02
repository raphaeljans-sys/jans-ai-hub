#!/usr/bin/env node
/**
 * JANS Connector — eBaugesucheZH (Kanton Zuerich, portal.ebaugesuche.zh.ch)
 * ========================================================================
 * Liest den Verfahrensstand von Baugesuchen auf der kantonalen Plattform
 * eBaugesucheZH und erzeugt daraus einen Statusbericht: aktueller Schritt,
 * bisheriger Verlauf, offene Aktivitaeten/Pendenzen, fehlende Unterlagen und
 * daraus abgeleitet was bis zur Baufreigabe noch fehlt.
 *
 * LOGIN-MOTOR — headless Browser (Playwright) + persistente Session:
 *   Der ZHlogin laeuft ueber idp.zh.ch (Siemens/DXA) mit Mobile ID als
 *   zweitem Faktor. Mobile ID wird ZWINGEND am Handy von Raphael freigegeben
 *   (Push + PIN) — das ist nicht automatisierbar und auch nicht gewuenscht.
 *   Ablauf:
 *     1. --login  : Chromium faehrt die echte Login-Seite ab (Profilwahl,
 *                   Benutzer/Passwort), loest Mobile ID aus und WARTET auf die
 *                   Handy-Freigabe. Danach wird die Session gespeichert.
 *     2. --refresh: Versucht STILL (ohne Handy) eine neue SP-Sitzung ueber die
 *                   noch gueltige idp.zh.ch-SSO-Sitzung zu holen. Klappt das
 *                   nicht mehr (SSO abgelaufen), meldet er, dass ein --login
 *                   mit Handy noetig ist. Fuer proaktiven Refresh per Task.
 *     3. Lese-Abfragen (--liste/--status/--bericht) nutzen die gespeicherte
 *        Session direkt per fetch (kein Browser noetig, schnell).
 *
 * SCHREIB-SCHUTZ (hart im Code):
 *   Dieser Connector ist NUR-LESE. Es gibt keinen Code, der auf der Plattform
 *   etwas einreicht, aendert, hochlaedt oder loescht. Ausschliesslich GET.
 *
 * Zugangsdaten (nie in Git):
 *   ~/.ebaugesuche-zh.env  (chmod 600) mit:
 *     EBAU_USER=Raphael_Jans
 *     EBAU_PASSWORD=...
 *     EBAU_LOGIN_PROFILE=Login Private und Unternehmen
 *   Session-Cache:  ~/.ebaugesuche-zh.session.json  (chmod 600, gitignored)
 *
 * Verwendung:
 *   node ebaugesuche-zh.mjs --login [--sichtbar]     # Erstlogin (Handy noetig)
 *   node ebaugesuche-zh.mjs --refresh [--sichtbar]   # stille SSO-Auffrischung
 *   node ebaugesuche-zh.mjs --session                # Session-Zustand/Alter
 *   node ebaugesuche-zh.mjs --liste                  # alle Baugesuche/Dossiers
 *   node ebaugesuche-zh.mjs --status <Nr|ID>         # Kurzstatus eines Dossiers
 *   node ebaugesuche-zh.mjs --bericht <Nr|ID>        # formatierter Statusbericht
 *   node ebaugesuche-zh.mjs --raw api/construction/v1  # Debug: GET beliebiger API-Pfad
 *   node ebaugesuche-zh.mjs --entdecke               # nach --login: echte API-XHR mitschneiden
 *
 * Stand: 02.07.2026 — Login-Flow (idp.zh.ch DXA + Mobile ID) live kartiert.
 * Die konkreten Dossier-/Status-Endpunkte (ENDPUNKTE unten) werden beim ersten
 * echten Lauf gegen die API verifiziert; bei abweichendem Pfad nur dort anpassen.
 */

import { readFileSync, writeFileSync, existsSync, statSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';

const BASE = 'https://portal.ebaugesuche.zh.ch';
const LOGIN_URL = BASE + '/saml/login';
const ENV_FILE = join(homedir(), '.ebaugesuche-zh.env');
const SESSION_FILE = join(homedir(), '.ebaugesuche-zh.session.json');

// API-Endpunkte aus main-Bundle extrahiert (02.07.2026). Die mit (?) markierten
// werden beim ersten echten Lauf verifiziert; Konstante hier anpassen falls anders.
const ENDPUNKTE = {
  user:            'api/user/v1',                          // eingeloggter Benutzer (Auth-Probe)
  dossierListe:    'api/construction/v1',                  // (?) Liste der Baugesuche
  dossierInfo:     'api/construction/v1/constructionInfo', // (?) Stammdaten/Status eines Dossiers
  timeline:        'api/timeline/v1',                      // (?) chronologischer Verlauf
  aktivitaeten:    'api/activity/v1',                      // (?) offene Aktivitaeten/Pendenzen
  dokumente:       'api/internal/file/v2',                 // (?) Dokumentenliste
};

// ---------------------------------------------------------------- Hilfen
function fail(msg) { console.error('FEHLER: ' + msg); process.exit(1); }
function info(msg) { console.error(msg); }

function ladeEnv() {
  const env = {};
  if (existsSync(ENV_FILE)) {
    for (const zeile of readFileSync(ENV_FILE, 'utf8').split('\n')) {
      const m = zeile.match(/^\s*([A-Z_]+)\s*=\s*(.*?)\s*$/);
      if (m && !zeile.trim().startsWith('#')) env[m[1]] = m[2].replace(/^["']|["']$/g, '');
    }
  }
  for (const k of Object.keys(process.env)) if (k.startsWith('EBAU_')) env[k] = process.env[k];
  if (!env.EBAU_USER || !env.EBAU_PASSWORD) {
    fail(`Kein Zugang. Bitte ${ENV_FILE} anlegen (chmod 600):\n` +
      `  EBAU_USER=Raphael_Jans\n  EBAU_PASSWORD=...\n  EBAU_LOGIN_PROFILE=Login Private und Unternehmen`);
  }
  return env;
}

async function ladePlaywright() {
  try {
    const mod = await import('playwright');
    return mod.chromium;
  } catch {
    fail('Playwright fehlt. Einmalig installieren:\n' +
      '  cd ~/Developer/jans-ai-hub && npm install playwright && npx playwright install chromium');
  }
}

// ---------------------------------------------------------------- Session
function speichereSession(storageState) {
  writeFileSync(SESSION_FILE, JSON.stringify(storageState, null, 2), { mode: 0o600 });
}

function ladeSession() {
  if (!existsSync(SESSION_FILE)) {
    fail(`Keine Session. Zuerst einloggen:\n  node ebaugesuche-zh.mjs --login`);
  }
  const st = JSON.parse(readFileSync(SESSION_FILE, 'utf8'));
  // Bearer-Token aus localStorage der Portal-Origin
  let token = '';
  for (const o of st.origins || []) {
    if (o.origin && o.origin.includes('portal.ebaugesuche.zh.ch')) {
      for (const kv of o.localStorage || []) if (kv.name === 'token') token = kv.value;
    }
  }
  // Cookies fuer die Portal-Domain -> Cookie-Header + XSRF
  let xsrf = '';
  const cookiePaare = [];
  for (const c of st.cookies || []) {
    if (c.domain && c.domain.includes('ebaugesuche.zh.ch')) {
      cookiePaare.push(`${c.name}=${c.value}`);
      if (c.name === 'XSRF-TOKEN') xsrf = c.value;
    }
  }
  return { token, xsrf, cookieHeader: cookiePaare.join('; '), gespeichert: statSync(SESSION_FILE).mtime };
}

// ---------------------------------------------------------------- API (nur GET)
async function api(pfad, { roh = false } = {}) {
  const s = ladeSession();
  const url = pfad.startsWith('http') ? pfad : `${BASE}/${pfad.replace(/^\//, '')}`;
  const headers = { 'Accept': roh ? '*/*' : 'application/json' };
  if (s.token) headers['Authorization'] = 'Bearer ' + s.token;
  if (s.cookieHeader) headers['Cookie'] = s.cookieHeader;
  if (s.xsrf) headers['X-XSRF-TOKEN'] = s.xsrf;
  const res = await fetch(url, { method: 'GET', headers, redirect: 'manual' });
  if (res.status === 401 || res.status === 403 || (res.status >= 300 && res.status < 400)) {
    fail(`Nicht (mehr) angemeldet (HTTP ${res.status} bei ${pfad}).\n` +
      `  Session auffrischen:  node ebaugesuche-zh.mjs --refresh\n` +
      `  oder neu einloggen:    node ebaugesuche-zh.mjs --login`);
  }
  if (res.status === 404) fail(`404 — Endpunkt/Dossier nicht gefunden: ${pfad}`);
  if (!res.ok) {
    let t = ''; try { t = await res.text(); } catch {}
    fail(`HTTP ${res.status} bei ${pfad}\n${t.slice(0, 400)}`);
  }
  if (roh) return Buffer.from(await res.arrayBuffer());
  const t = await res.text();
  try { return t ? JSON.parse(t) : null; }
  catch { fail(`Antwort ist kein JSON (vermutlich Login-Seite) bei ${pfad}. Session erneuern.`); }
}

// ---------------------------------------------------------------- Login-Flow
async function fuehreLoginAus({ sichtbar = false, still = false, timeoutSek = 180 } = {}) {
  const env = ladeEnv();
  const chromium = await ladePlaywright();
  const browser = await chromium.launch({ headless: !sichtbar });
  const ctxOpt = { locale: 'de-CH' };
  // Bei --refresh die alte Session laden -> nutzt gueltige idp.zh.ch-SSO-Cookies
  if (still && existsSync(SESSION_FILE)) ctxOpt.storageState = SESSION_FILE;
  const context = await browser.newContext(ctxOpt);
  const page = await context.newPage();
  page.setDefaultTimeout(30000);

  try {
    info('→ Rufe Login-Seite auf …');
    await page.goto(LOGIN_URL, { waitUntil: 'domcontentloaded' });

    // DXA-Zwischenseiten senden sich per JS selbst ab; wir warten auf Ruhe.
    await page.waitForLoadState('networkidle').catch(() => {});

    const zurueckImPortal = () =>
      page.url().startsWith(BASE) && !page.url().includes('/saml/');

    // Falls die stille SSO-Auffrischung sofort durchlaeuft, sind wir schon zurueck.
    if (still && zurueckImPortal()) {
      info('✓ Stille Auffrischung: idp.zh.ch-SSO noch gueltig, keine Handy-Freigabe noetig.');
    } else {
      // 1) Profilauswahl: pro Profil eine Kachel mit Button id="submit<Profilname>"
      //    "Login Private und Unternehmen" -> weiter zum ZHservices-Login.
      const profil = env.EBAU_LOGIN_PROFILE || 'Login Private und Unternehmen';
      const profilBtn = page.locator(`[id="submit${profil}"]`).first();
      if (await profilBtn.count().catch(() => 0)) {
        info(`→ Waehle Login-Profil: ${profil} (weiter zu ZHservices)`);
        await profilBtn.click().catch(() => {});
        await page.waitForLoadState('domcontentloaded').catch(() => {});
        await page.waitForLoadState('networkidle').catch(() => {});
      }

      // Aufklaerungsmodus: nur bis zur ZHservices-Maske, HTML/Screenshot ablegen, dann Stopp.
      if (process.env.EBAU_RECON === '1') {
        await page.waitForTimeout(2500);
        try { await page.screenshot({ path: '/tmp/ebau-zhservices.png', fullPage: true }); } catch {}
        try { writeFileSync('/tmp/ebau-zhservices.html', await page.content()); } catch {}
        info(`RECON: ZHservices-Maske abgelegt (URL ${page.url()}).`);
        await browser.close();
        process.exit(0);
      }

      // 2) Benutzername + Passwort — ZHservices-Maske (services.zh.ch, AngularJS)
      const userFeld = page.locator(
        '#username, input[name="username"], input[name*="user" i], input[type="text"]'
      ).first();
      const passFeld = page.locator('#password, input[name="password"], input[type="password"]').first();

      if (still && !(await passFeld.count().catch(() => 0))) {
        // Kein Passwortfeld trotz --refresh -> SSO hat es schon erledigt
        info('✓ Keine Anmeldung noetig (SSO aktiv).');
      } else {
        info('→ Trage Benutzername und Passwort ein …');
        await userFeld.waitFor({ state: 'visible' });
        // AngularJS (ng-model) braucht echte Tastatur-Events, sonst bleibt das Modell leer.
        await userFeld.click();
        await userFeld.fill('');
        await userFeld.pressSequentially(env.EBAU_USER, { delay: 30 });
        await passFeld.click();
        await passFeld.fill('');
        await passFeld.pressSequentially(env.EBAU_PASSWORD, { delay: 30 });
        await passFeld.evaluate((el) => el.blur());

        // Recon: direkt nach dem Absenden den ZHservices-Zustand festhalten (kein 180s-Warten)
        if (process.env.EBAU_RECON2 === '1') {
          const submit = page.locator('input[type="submit"][value="Anmelden"], input[type="submit"]').first();
          await submit.click().catch(() => passFeld.press('Enter'));
          await page.waitForTimeout(9000);
          try { await page.screenshot({ path: '/tmp/ebau-postsubmit.png', fullPage: true }); } catch {}
          try { writeFileSync('/tmp/ebau-postsubmit.html', await page.content()); } catch {}
          info(`RECON2: Nach Absenden URL = ${page.url()}`);
          await browser.close();
          process.exit(0);
        }

        // Submit: Button oder Enter
        const btn = page.locator(
          'input[type="submit"][value="Anmelden"], input[type="submit"], button[type="submit"], button:has-text("Anmelden"), button:has-text("Login"), button:has-text("Weiter")'
        ).first();
        if (await btn.count().catch(() => 0)) await btn.click().catch(() => passFeld.press('Enter'));
        else await passFeld.press('Enter');

        // 3) Mobile ID — auf Handy-Freigabe warten
        info('');
        info('  ============================================================');
        info('  📲  MOBILE ID: Bitte JETZT die Anmeldung auf dem Handy');
        info('      bestaetigen (PIN eingeben). Ich warte bis zu ' + timeoutSek + ' s …');
        info('  ============================================================');
        info('');
      }
    }

    // 4) Warten bis wir wieder im Portal sind und ein Token vorliegt.
    //    Unterwegs: Zwischenseiten (Weiterleitung/Geraet-merken/Bestaetigen) autoklicken
    //    und die URL-Wechsel protokollieren, damit man sieht wo es haengt.
    const bis = Date.now() + timeoutSek * 1000;
    let ok = false, letzteUrl = '';
    while (Date.now() < bis) {
      const u = page.url();
      if (u !== letzteUrl) { info(`   … ${u.slice(0, 90)}`); letzteUrl = u; }
      if (zurueckImPortal()) {
        const tok = await page.evaluate(() => window.localStorage.getItem('token')).catch(() => null);
        if (tok) { ok = true; break; }
      }
      // Etwaige Interstitials nach Mobile ID automatisch weiterklicken
      const weiter = page.locator(
        'button:has-text("Weiter"), input[type="submit"], button:has-text("Bestätigen"), ' +
        'button:has-text("Fortfahren"), button:has-text("Ja"), a:has-text("Weiter")'
      ).first();
      if (await weiter.count().catch(() => 0)) await weiter.click({ timeout: 1500 }).catch(() => {});
      await page.waitForTimeout(2000);
    }
    if (!ok) {
      // Endzustand fuer die Diagnose sichern (der Timeout-Pfad hatte das bisher verpasst)
      try { await page.screenshot({ path: '/tmp/ebau-login-timeout.png', fullPage: true }); } catch {}
      try { writeFileSync('/tmp/ebau-login-timeout.html', await page.content()); } catch {}
      info(`✗ Kein Token. Endstand-URL: ${page.url()}`);
      info('  Diagnose: /tmp/ebau-login-timeout.png / .html');
      if (still) throw new Error('Stille Auffrischung nicht moeglich (SSO abgelaufen) — bitte --login mit Handy.');
      throw new Error('Login nicht abgeschlossen (kein Token / Mobile ID nicht im Zeitfenster bestaetigt).');
    }

    // 5) Session sichern
    const storage = await context.storageState();
    speichereSession(storage);
    info('✓ Angemeldet. Session gespeichert: ' + SESSION_FILE);
  } catch (e) {
    // Diagnose bei unerwartetem Formular: Screenshot + HTML ablegen
    const stamp = '/tmp/ebau-login-fehler';
    try { await page.screenshot({ path: stamp + '.png', fullPage: true }); } catch {}
    try { writeFileSync(stamp + '.html', await page.content()); } catch {}
    info(`✗ Login-Flow gestoppt bei URL: ${page.url()}`);
    info(`  Diagnose abgelegt: ${stamp}.png / ${stamp}.html`);
    throw e;
  } finally {
    await browser.close();
  }
}

// ---------------------------------------------------------------- Entdecken
/** Nach dem Login die echten API-Aufrufe der SPA mitschneiden, um Endpunkte zu verifizieren. */
async function entdeckeEndpunkte({ sichtbar = false } = {}) {
  const chromium = await ladePlaywright();
  if (!existsSync(SESSION_FILE)) fail('Erst einloggen (--login), dann --entdecke.');
  const browser = await chromium.launch({ headless: !sichtbar });
  const context = await browser.newContext({ storageState: SESSION_FILE, locale: 'de-CH' });
  const page = await context.newPage();
  const treffer = new Set();
  page.on('request', (r) => {
    const u = r.url();
    if (u.includes('/api/') && !u.includes('/api/public/')) treffer.add(`${r.method()} ${u.replace(BASE, '')}`);
  });
  info('→ Lade Portal-Startseite und beobachte API-Aufrufe (10 s) …');
  await page.goto(BASE + '/', { waitUntil: 'networkidle' }).catch(() => {});
  await page.waitForTimeout(10000);
  await browser.close();
  info('\nBeobachtete API-Aufrufe (Endpunkte fuer den Connector):');
  for (const t of [...treffer].sort()) console.log('  ' + t);
  if (!treffer.size) info('  (keine — evtl. Session abgelaufen, dann --login)');
}

// ---------------------------------------------------------------- Berichte
function d(s) { // sechsstelliges Datum TT.MM.JJ aus ISO
  if (!s) return '';
  const m = String(s).match(/(\d{4})-(\d{2})-(\d{2})/);
  return m ? `${m[3]}.${m[2]}.${m[1].slice(2)}` : String(s);
}

async function zeigeListe() {
  const daten = await api(ENDPUNKTE.dossierListe);
  const arr = Array.isArray(daten) ? daten : (daten?.content || daten?.items || []);
  if (!arr.length) { info('Keine Baugesuche gefunden (oder Endpunkt abweichend — siehe --entdecke).'); return; }
  console.log(`\nBaugesuche (${arr.length}):\n`);
  for (const g of arr) {
    const nr = g.publicIdent || g.identifier || g.dossierNr || g.id;
    const ort = g.commune || g.gemeinde || g.municipality || '';
    const titel = g.projectTitle || g.title || g.bezeichnung || '';
    const status = g.status || g.state || g.currentActivity || '';
    console.log(`  ${String(nr).padEnd(16)} ${String(ort).padEnd(16)} ${status}`);
    if (titel) console.log(`  ${' '.repeat(16)} ${titel}`);
  }
  console.log('');
}

async function zeigeBericht(ident, kurz = false) {
  // Dossier-Info holen (Endpunkt nimmt i.d.R. ?publicIdent= oder /{id})
  let d0;
  try { d0 = await api(`${ENDPUNKTE.dossierInfo}?publicIdent=${encodeURIComponent(ident)}`); }
  catch { d0 = await api(`${ENDPUNKTE.dossierInfo}/${encodeURIComponent(ident)}`); }
  const dossier = Array.isArray(d0) ? d0[0] : (d0?.content?.[0] || d0);
  if (!dossier) fail(`Dossier ${ident} nicht gefunden.`);

  const nr = dossier.publicIdent || dossier.identifier || ident;
  const ort = dossier.commune || dossier.gemeinde || dossier.municipality || '—';
  const titel = dossier.projectTitle || dossier.title || dossier.bezeichnung || '—';
  const status = dossier.status || dossier.state || dossier.currentActivity || '—';

  const L = [];
  L.push('════════════════════════════════════════════════════════════');
  L.push(`  STATUSBERICHT BAUGESUCH — ${nr}`);
  L.push('════════════════════════════════════════════════════════════');
  L.push(`  Gemeinde:   ${ort}`);
  L.push(`  Vorhaben:   ${titel}`);
  L.push(`  Stand:      ${status}`);
  L.push(`  Abgefragt:  ${d(new Date().toISOString())}`);
  L.push('');

  // Verlauf / Timeline
  try {
    const tl = await api(`${ENDPUNKTE.timeline}?publicIdent=${encodeURIComponent(ident)}`);
    const eintraege = Array.isArray(tl) ? tl : (tl?.content || tl?.items || []);
    if (eintraege.length) {
      L.push('  BISHERIGER VERLAUF');
      L.push('  ──────────────────');
      for (const e of eintraege.slice(-15)) {
        const dt = d(e.date || e.timestamp || e.createdAt);
        const tx = e.title || e.name || e.activity || e.description || '';
        L.push(`  ${dt.padEnd(10)} ${tx}`);
      }
      L.push('');
    }
  } catch { /* Endpunkt ggf. anders; via --entdecke verifizieren */ }

  // Offene Aktivitaeten / Pendenzen -> "wo hakt es / was fehlt"
  try {
    const ak = await api(`${ENDPUNKTE.aktivitaeten}?publicIdent=${encodeURIComponent(ident)}`);
    const offen = (Array.isArray(ak) ? ak : (ak?.content || ak?.items || []))
      .filter(a => !(a.done || a.completed || a.status === 'DONE'));
    L.push('  OFFEN / ZU ERLEDIGEN BIS BAUFREIGABE');
    L.push('  ────────────────────────────────────');
    if (offen.length) {
      for (const a of offen) {
        const wer = a.assignee || a.role || a.responsible || '';
        const was = a.title || a.name || a.description || '';
        const frist = d(a.dueDate || a.deadline);
        L.push(`  • ${was}${wer ? `  [${wer}]` : ''}${frist ? `  Frist ${frist}` : ''}`);
      }
    } else {
      L.push('  (keine offenen Aktivitaeten in der Plattform hinterlegt)');
    }
    L.push('');
  } catch { /* via --entdecke verifizieren */ }

  L.push('════════════════════════════════════════════════════════════');
  console.log(L.join('\n'));
}

async function zeigeSession() {
  if (!existsSync(SESSION_FILE)) { info('Keine Session vorhanden. → node ebaugesuche-zh.mjs --login'); return; }
  const s = ladeSession();
  const alterMin = Math.round((Date.now() - s.gespeichert.getTime()) / 60000);
  info(`Session-Datei: ${SESSION_FILE}`);
  info(`Gespeichert:   ${s.gespeichert.toLocaleString('de-CH')} (vor ${alterMin} min)`);
  info(`Token:         ${s.token ? s.token.slice(0, 12) + '… (' + s.token.length + ' Zeichen)' : '— keiner'}`);
  info(`Auth-Probe (${ENDPUNKTE.user}) …`);
  try { await api(ENDPUNKTE.user); info('✓ Session gueltig.'); }
  catch (e) { info('✗ Session nicht mehr gueltig — --refresh oder --login.'); }
}

// ---------------------------------------------------------------- CLI
const argv = process.argv.slice(2);
const has = (f) => argv.includes(f);
const valOf = (f) => { const i = argv.indexOf(f); return i >= 0 ? argv[i + 1] : null; };
const sichtbar = has('--sichtbar');

(async () => {
  if (has('--login'))        return void await fuehreLoginAus({ sichtbar });
  if (has('--refresh'))      return void await fuehreLoginAus({ sichtbar, still: true, timeoutSek: 60 });
  if (has('--entdecke'))     return void await entdeckeEndpunkte({ sichtbar });
  if (has('--session'))      return void await zeigeSession();
  if (has('--liste'))        return void await zeigeListe();
  if (has('--status'))       return void await zeigeBericht(valOf('--status'), true);
  if (has('--bericht'))      return void await zeigeBericht(valOf('--bericht'));
  if (has('--raw')) {
    const p = valOf('--raw'); if (!p) fail('--raw braucht einen API-Pfad.');
    console.log(JSON.stringify(await api(p), null, 2)); return;
  }
  info('eBaugesucheZH-Connector — Befehle:');
  info('  --login [--sichtbar]     Erstlogin (Mobile ID am Handy bestaetigen)');
  info('  --refresh [--sichtbar]   stille SSO-Auffrischung (ohne Handy, wenn moeglich)');
  info('  --session                Session-Zustand pruefen');
  info('  --liste                  alle Baugesuche auflisten');
  info('  --status  <Nr|ID>        Kurzstatus eines Dossiers');
  info('  --bericht <Nr|ID>        formatierter Statusbericht');
  info('  --entdecke               echte API-Endpunkte nach Login mitschneiden');
  info('  --raw <api/pfad>         Debug: beliebigen API-Pfad GETen');
})().catch((e) => fail(e?.stack || String(e)));
