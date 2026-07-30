#!/usr/bin/env node
// ============================================================================
// JANS Hub Cockpit — Mini-Webserver
// ============================================================================
// Liefert die vom launchd-Job com.jans.cockpit gebaute Datei
// ~/.jans-cockpit/cockpit.html als Webseite aus, damit MacBook und Handy sie
// ohne lokalen Build oeffnen koennen (LAN + Tailscale, nichts Oeffentliches).
//
//   node webtools/cockpit/serve-cockpit.mjs        # Port 8377
//
// Erreichbar: Buero  http://192.168.1.210:8377
//             ueberall (Tailscale) http://100.120.219.12:8377
// Keine Abhaengigkeiten; liefert IMMER nur diese eine Datei aus (kein
// Verzeichnis-Listing, kein Pfadzugriff). Env: COCKPIT_PORT, COCKPIT_HTML.
// ============================================================================

import { createServer } from 'node:http';
import { readFile } from 'node:fs/promises';
import { homedir } from 'node:os';
import { join } from 'node:path';

const PORT = Number(process.env.COCKPIT_PORT || 8377);
const DATEI = process.env.COCKPIT_HTML || join(homedir(), '.jans-cockpit', 'cockpit.html');

createServer(async (req, res) => {
  try {
    const html = await readFile(DATEI);
    res.writeHead(200, { 'content-type': 'text/html; charset=utf-8', 'cache-control': 'no-store' });
    res.end(html);
  } catch {
    res.writeHead(503, { 'content-type': 'text/plain; charset=utf-8', 'retry-after': '300' });
    res.end('Cockpit noch nicht gebaut — der launchd-Job com.jans.cockpit erzeugt es alle 5 Minuten.');
  }
}).listen(PORT, '0.0.0.0', () => {
  console.log(`Cockpit-Server laeuft auf Port ${PORT} (${DATEI})`);
});
