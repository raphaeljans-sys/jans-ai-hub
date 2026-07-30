#!/usr/bin/env node
// ============================================================================
// JANS Hub Cockpit — lokaler Server (macht das Cockpit interaktiv)
// ============================================================================
// Bindet AUSSCHLIESSLICH an 127.0.0.1 — kein Zugriff aus dem Netz.
//
//   node webtools/cockpit/cockpit-server.mjs [--hub <pfad>] [--port 8737]
//                                            [--out <datei>] [--open]
//                                            [--erlaube-lokal]
//
//   GET  /              baut das Cockpit frisch und liefert es aus
//   POST /api/erledigt  {hash} → setzt die Registerzeile in logbuch/fristen.md
//                       auf «erledigt (Cockpit TT.MM.JJJJ)»
//   GET  /gesund        Lebenszeichen fuer launchd/Monitoring
//
// Schreiben ist nur erlaubt, wenn der Hub auf dem NAS liegt (/Volumes/daten…)
// — sonst wuerde der SSD-Spiegel editiert (Rule sync-kanonische-quelle).
// --erlaube-lokal hebt diesen Guard NUR fuer Tests an einem Fixture auf.
// Der Commit passiert nativ auf der Synology (15-Min-Selfcommit), nie hier.
// ============================================================================

import http from 'node:http';
import { execFileSync } from 'node:child_process';
import { readFileSync, existsSync, mkdirSync } from 'node:fs';
import { homedir } from 'node:os';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import { markiereErledigt } from './cockpit-lib.mjs';

const argv = process.argv.slice(2);
const arg = n => { const i = argv.indexOf(n); return i >= 0 && argv[i + 1] ? argv[i + 1] : null; };
const scriptDir = dirname(fileURLToPath(import.meta.url));

const HUB = resolve(
  arg('--hub') ||
  process.env.JANS_HUB ||
  (existsSync('/Volumes/daten/jans-ai-hub') ? '/Volumes/daten/jans-ai-hub' : join(scriptDir, '..', '..'))
);
// Eigene Zieldatei, NICHT cockpit.html: die schreibt der statische 5-Min-Job
// (com.jans.cockpit) und liest der Mini-Webserver (serve-cockpit.mjs, 8377) —
// dort darf nie eine Fassung mit aktiven Buttons landen.
const OUT = resolve(arg('--out') || join(homedir(), '.jans-cockpit', 'cockpit-interaktiv.html'));
const PORT = Number(arg('--port') || 8737);
const OPEN = argv.includes('--open');
const ERLAUBE_LOKAL = argv.includes('--erlaube-lokal');
const BUILD = join(scriptDir, 'build-cockpit.mjs');

const log = (...a) => console.log(new Date().toLocaleString('sv-SE', { timeZone: 'Europe/Zurich' }), ...a);
const json = (res, code, obj) => {
  res.writeHead(code, { 'Content-Type': 'application/json; charset=utf-8' });
  res.end(JSON.stringify(obj));
};

function baueUndLiefere(res) {
  // Lief der Start im SSD-Fallback und das NAS ist inzwischen gemountet:
  // nach dieser Antwort beenden — launchd (KeepAlive) startet neu mit NAS-Hub.
  const nasJetztDa = !arg('--hub') && !HUB.startsWith('/Volumes/') && existsSync('/Volumes/daten/jans-ai-hub');
  if (nasJetztDa) { log('NAS wieder da — Neustart nach dieser Antwort'); res.on('finish', () => process.exit(0)); }
  mkdirSync(dirname(OUT), { recursive: true });
  try {
    execFileSync(process.execPath, [BUILD, '--hub', HUB, '--out', OUT, '--interaktiv'], { stdio: 'pipe', timeout: 120000 });
  } catch (e) {
    res.writeHead(500, { 'Content-Type': 'text/plain; charset=utf-8' });
    res.end('Cockpit-Build fehlgeschlagen:\n' + (e.stderr?.toString() || e.message));
    return;
  }
  res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8', 'Cache-Control': 'no-store' });
  res.end(readFileSync(OUT));
}

function erledige(req, res) {
  let body = '';
  req.on('data', c => { body += c; if (body.length > 10000) req.destroy(); });
  req.on('end', () => {
    let hash;
    try { hash = String(JSON.parse(body).hash || ''); } catch { /* unten abgewiesen */ }
    if (!hash || !/^[0-9a-f]{16}$/.test(hash))
      return json(res, 400, { ok: false, meldung: 'kein gueltiger Zeilen-Hash' });
    if (!ERLAUBE_LOKAL && !HUB.startsWith('/Volumes/'))
      return json(res, 409, { ok: false, meldung: 'NAS nicht gemountet — das Register wird nur auf dem NAS beschrieben (Rule sync-kanonische-quelle)' });
    const fristen = join(HUB, 'logbuch', 'fristen.md');
    if (!existsSync(fristen))
      return json(res, 409, { ok: false, meldung: 'Fristen-Register nicht gefunden: ' + fristen });
    try {
      const r = markiereErledigt(fristen, hash);
      if (r.ok) { log(`erledigt: ${r.titel}`); return json(res, 200, { ok: true, titel: r.titel }); }
      const meldung = {
        'nicht-gefunden': 'Zeile nicht gefunden — das Register hat sich geaendert, Seite neu laden',
        'schon-erledigt': 'Zeile ist bereits als erledigt markiert',
        'verifikation-fehlgeschlagen': 'Schreiben liess sich nicht verifizieren — Register von Hand pruefen',
      }[r.grund] || r.grund;
      log(`abgewiesen (${r.grund})`);
      return json(res, r.grund === 'nicht-gefunden' ? 404 : 409, { ok: false, meldung });
    } catch (e) {
      log('FEHLER', e.message);
      return json(res, 500, { ok: false, meldung: e.message });
    }
  });
}

const server = http.createServer((req, res) => {
  const pfad = new URL(req.url, 'http://127.0.0.1').pathname;
  if (req.method === 'GET' && (pfad === '/' || pfad === '/cockpit')) return baueUndLiefere(res);
  if (req.method === 'POST' && pfad === '/api/erledigt') return erledige(req, res);
  if (req.method === 'GET' && pfad === '/gesund') { res.writeHead(200); return res.end('ok'); }
  res.writeHead(404, { 'Content-Type': 'text/plain; charset=utf-8' });
  res.end('unbekannter Pfad');
});

server.on('error', e => {
  if (e.code === 'EADDRINUSE') {
    console.error(`Port ${PORT} ist belegt — laeuft der Cockpit-Server schon? (http://127.0.0.1:${PORT})`);
    if (OPEN) { try { execFileSync('open', [`http://127.0.0.1:${PORT}/`]); } catch { /* egal */ } }
    process.exit(OPEN ? 0 : 1);
  }
  throw e;
});

server.listen(PORT, '127.0.0.1', () => {
  log(`Cockpit-Server laeuft: http://127.0.0.1:${PORT}  (Hub: ${HUB}${HUB.startsWith('/Volumes/') ? ', NAS' : ERLAUBE_LOKAL ? ', LOKAL-TESTMODUS' : ', read-only'})`);
  if (OPEN) { try { execFileSync('open', [`http://127.0.0.1:${PORT}/`]); } catch { /* Browser manuell oeffnen */ } }
});
