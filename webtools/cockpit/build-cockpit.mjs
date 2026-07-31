#!/usr/bin/env node
// ============================================================================
// JANS Hub Cockpit — Generator
// ============================================================================
// Liest den Hub-Zustand (Fristen-Register, Stations-Status, Vollgas, Queues,
// Wissens-Layer, Journal) und erzeugt EINE selbsttragende HTML-Seite: die
// Kommandobruecke des AI Hub. Keine Abhaengigkeiten, nur Node-Bordmittel.
//
//   node webtools/cockpit/build-cockpit.mjs [--hub <pfad>] [--out <datei>] [--open]
//
//   --hub   Hub-Wurzel (Default: $JANS_HUB, sonst /Volumes/daten/jans-ai-hub,
//           sonst die Repo-Wurzel zwei Ebenen ueber diesem Script)
//   --out   Ziel-HTML (Default: ~/.jans-cockpit/cockpit.html)
//   --open  Ergebnis nach dem Bau im Browser oeffnen (macOS `open`)
//
// Die Seite laedt sich alle 5 Minuten selbst neu; ein launchd-Job (siehe
// README.md) baut sie im gleichen Takt frisch. Read-only: das Script schreibt
// ausschliesslich die Ziel-HTML, nie in Hub-Daten.
// ============================================================================

import { readFileSync, readdirSync, existsSync, statSync, mkdirSync, writeFileSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { homedir } from 'node:os';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import { zeilenHash, istErledigt } from './cockpit-lib.mjs';

// ---------------------------------------------------------------------------
// Argumente + Pfade
// ---------------------------------------------------------------------------
const argv = process.argv.slice(2);
function arg(name) {
  const i = argv.indexOf(name);
  return i >= 0 && argv[i + 1] ? argv[i + 1] : null;
}
const scriptDir = dirname(fileURLToPath(import.meta.url));
const HUB = resolve(
  arg('--hub') ||
  process.env.JANS_HUB ||
  (existsSync('/Volumes/daten/jans-ai-hub') ? '/Volumes/daten/jans-ai-hub' : join(scriptDir, '..', '..'))
);
const OUT = resolve(arg('--out') || join(homedir(), '.jans-cockpit', 'cockpit.html'));
const OPEN = argv.includes('--open');
// Nur der lokale cockpit-server.mjs setzt --interaktiv: dann (und nur dann)
// zeigt die Seite die ✓-Buttons. Der statische Mini-Webserver (Port 8377)
// liefert dieselbe HTML ohne Flag — dort bleiben die Buttons versteckt,
// weil sein /api/erledigt ins Leere ginge.
const INTERAKTIV = argv.includes('--interaktiv');

const NOW = new Date();
const TZ = 'Europe/Zurich';
const deCH = (d, opt) => d.toLocaleString('de-CH', { timeZone: TZ, ...opt });

// Heutiges Datum in Zuerich als y/m/d
function heute() {
  const p = new Intl.DateTimeFormat('de-CH', { timeZone: TZ, year: 'numeric', month: '2-digit', day: '2-digit' })
    .formatToParts(NOW);
  const g = t => Number(p.find(x => x.type === t).value);
  return { y: g('year'), m: g('month'), d: g('day') };
}
const H = heute();
const heuteUTC = Date.UTC(H.y, H.m - 1, H.d);
const tageBis = (y, m, d) => Math.round((Date.UTC(y, m - 1, d) - heuteUTC) / 86400000);

// ---------------------------------------------------------------------------
// Helfer
// ---------------------------------------------------------------------------
const lies = p => { try { return readFileSync(p, 'utf8'); } catch { return null; } };
const esc = s => String(s ?? '')
  .replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;').replaceAll('"', '&quot;');

// Markdown-Reste fuer die Anzeige entfernen (fett/backticks/links)
function entmd(s) {
  return String(s ?? '')
    .replace(/\*\*(.+?)\*\*/g, '$1')
    .replace(/`([^`]*)`/g, '$1')
    .replace(/\[([^\]]+)\]\([^)]*\)/g, '$1')
    .trim();
}
function kuerze(s, n) {
  s = s.trim();
  if (s.length <= n) return s;
  const cut = s.slice(0, n);
  return cut.slice(0, Math.max(cut.lastIndexOf(' '), n - 30)) + ' …';
}

// ---------------------------------------------------------------------------
// 1) Fristen- & Pendenzen-Register (logbuch/fristen.md)
// ---------------------------------------------------------------------------
function parseFristen() {
  const txt = lies(join(HUB, 'logbuch', 'fristen.md'));
  if (!txt) return { rows: [], fehlt: true };
  const lines = txt.split('\n');
  const kopf = lines.findIndex(l => /^\|\s*Frist\s*\|/i.test(l));
  if (kopf < 0) return { rows: [], fehlt: false };

  const rows = [];
  for (let i = kopf + 2; i < lines.length; i++) {
    const l = lines[i];
    if (!l.startsWith('|')) break;
    const p = l.split('|').slice(1, -1).map(c => c.trim());
    if (p.length < 6) continue;
    // Ueberzaehlige Pipes landen in der Was-Spalte
    const frist = p[0];
    const status = p[p.length - 1];
    const prio = entmd(p[p.length - 2]).toLowerCase();
    const projekt = entmd(p[p.length - 3]);
    const quelle = entmd(p[p.length - 4]);
    const was = p.slice(1, p.length - 4).join('|');

    // Titel nur, wenn die Fett-Passage die Zeile eroeffnet — sonst ist es
    // Hervorhebung mitten im Text und taugt nicht als Ueberschrift.
    const titelM = was.trim().startsWith('**') ? was.match(/\*\*(.+?)\*\*/) : null;
    const titel = titelM ? entmd(titelM[1]) : '';
    const text = entmd(titelM ? was.replace(titelM[0], '') : was).replace(/^[\s.,;:—–-]+/, '');

    const erledigt = istErledigt(status, frist);
    const hash = zeilenHash(frist, was);
    const sofort = /sofort/i.test(frist);
    const dM = frist.match(/(\d{1,2})\.(\d{1,2})\.(\d{4})/);
    const zeitM = frist.match(/(\d{1,2}):(\d{2})/);
    let delta = null, datumTxt = null;
    if (dM) {
      delta = tageBis(Number(dM[3]), Number(dM[2]), Number(dM[1]));
      datumTxt = `${dM[1].padStart(2, '0')}.${dM[2].padStart(2, '0')}.${dM[3]}` + (zeitM ? ` ${zeitM[0]}` : '');
    }
    rows.push({ frist: entmd(frist), datumTxt, delta, sofort, titel, text, quelle, projekt, prio, status: entmd(status), erledigt, hash });
  }
  return { rows, fehlt: false };
}

// ---------------------------------------------------------------------------
// 2) Stations-Status (station-status/*.md)
// ---------------------------------------------------------------------------
function parseStationen() {
  const dir = join(HUB, 'station-status');
  if (!existsSync(dir)) return [];
  return readdirSync(dir).filter(f => f.endsWith('.md')).map(f => {
    const txt = lies(join(dir, f)) || '';
    const stand = (txt.match(/^Stand:\s*(.+)$/m) || [])[1] || '';
    // Frische: Stand-Zeitstempel dd.mm.yyyy hh:mm[:ss] parsen
    let frisch = null;
    const m = stand.match(/(\d{1,2})\.(\d{1,2})\.(\d{4})\s+(\d{1,2}):(\d{2})/);
    if (m) {
      const alterMin = Math.round((NOW - new Date(`${m[3]}-${m[2].padStart(2, '0')}-${m[1].padStart(2, '0')}T${m[4].padStart(2, '0')}:${m[5]}:00+02:00`)) / 60000);
      frisch = alterMin;
    }
    const abschnitte = [];
    let akt = null;
    for (const l of txt.split('\n')) {
      const h = l.match(/^##\s+(.+)$/);
      if (h) { akt = { titel: h[1], zeilen: [] }; abschnitte.push(akt); continue; }
      if (akt && l.trim().startsWith('- ')) akt.zeilen.push(entmd(l.trim().slice(2)));
    }
    return { name: f.replace(/\.md$/, ''), stand, frisch, abschnitte };
  });
}

// ---------------------------------------------------------------------------
// 3) Betrieb: Vollgas, Journal, Queues
// ---------------------------------------------------------------------------
function parseBetrieb() {
  const vg = join(HUB, 'logbuch', 'vollgas');
  const betrieb = { fruehwarnung: null, stops: [], journalTage: [], queues: [] };

  // FRUEHWARNUNG.md ist ein Log, neuester Lauf zuoberst: "## 2026-07-29 07:15 — STILL (keine Mail)"
  const fw = lies(join(vg, 'FRUEHWARNUNG.md'));
  if (fw) {
    const kopf = fw.split('\n').find(l => /^##\s+\d{4}-\d{2}-\d{2}/.test(l));
    if (kopf) {
      const zeile = entmd(kopf.replace(/^##\s+/, ''));
      betrieb.fruehwarnung = { zeile: kuerze(zeile, 200), still: /STILL/i.test(zeile) };
    }
  }
  if (existsSync(vg)) {
    betrieb.stops = readdirSync(vg).filter(f => f.startsWith('STOP')).map(f => f.replace(/^STOP-?/, '') || 'alle');
  }

  const lb = lies(join(HUB, 'logbuch', 'LOGBUCH.md'));
  if (lb) {
    const lines = lb.split('\n');
    const idx = lines.map((l, i) => (/^##\s+\d{4}-\d{2}-\d{2}/.test(l) ? i : -1)).filter(i => i >= 0);
    for (const [n, start] of idx.slice(0, 2).entries()) {
      const ende = idx[n + 1] ?? lines.length;
      const tag = lines[start].replace(/^##\s+/, '');
      // Eintraege sind Absaetze, die mit einer Fett-Passage beginnen
      // ("**Hub-Chef-Lauf (08:39) — ...**"); daneben klassische Bullets.
      const eintraege = lines.slice(start + 1, ende)
        .map(l => l.trim())
        .filter(l => /^\*\*/.test(l) || /^[-*]\s|^###\s/.test(l))
        .map(l => {
          const fett = l.match(/^\*\*(.+?)\*\*/);
          // Fett-Passagen koennen ueber den Zeilenumbruch laufen — dann nur das
          // oeffnende ** abstreifen und die Zeile als Text nehmen.
          const roh = fett ? fett[1] : l.replace(/^\*\*/, '').replace(/^[-*]\s|^###\s/, '');
          return kuerze(entmd(roh), 170);
        })
        .slice(0, 6);
      betrieb.journalTage.push({ tag, eintraege });
    }
  }

  const queue = (name, pfad) => {
    const d = join(HUB, pfad);
    if (!existsSync(d)) return;
    const n = readdirSync(d).filter(f => !f.startsWith('.') && f !== 'README.md');
    betrieb.queues.push({ name, anzahl: n.length, eintraege: n.slice(0, 6) });
  };
  queue('Remote-Tasks pending', 'remote-tasks/pending');
  queue('Remote-Tasks results', 'remote-tasks/results');
  queue('Sync-Tasks mac-mini', 'sync-tasks/mac-mini');
  queue('Sync-Tasks macbook-pro', 'sync-tasks/macbook-pro');
  return betrieb;
}

// ---------------------------------------------------------------------------
// 4) Wissens-Layer: KB-Frische aus CHANGELOG/CLAUDE.md
// ---------------------------------------------------------------------------
function parseWissen() {
  const dir = join(HUB, 'wissen');
  if (!existsSync(dir)) return [];
  const kbs = [];
  for (const kb of readdirSync(dir)) {
    const kbDir = join(dir, kb);
    try { if (!statSync(kbDir).isDirectory()) continue; } catch { continue; }
    let neuestes = null;
    for (const f of ['CHANGELOG.md', 'CLAUDE.md']) {
      const txt = lies(join(kbDir, f));
      if (!txt) continue;
      for (const m of txt.slice(0, 8000).matchAll(/(\d{1,2})\.(\d{1,2})\.(\d{4})|(\d{4})-(\d{2})-(\d{2})/g)) {
        const [y, mo, d] = m[3] ? [m[3], m[2], m[1]] : [m[4], m[5], m[6]];
        const t = Date.UTC(Number(y), Number(mo) - 1, Number(d));
        if (Number(y) >= 2020 && Number(y) <= H.y + 1 && t <= heuteUTC + 86400000 && (!neuestes || t > neuestes)) neuestes = t;
      }
      if (neuestes) break;
    }
    const alter = neuestes === null ? null : Math.round((heuteUTC - neuestes) / 86400000);

    // Bestand fuers Second-Brain-Bild: Wiki-Artikel (ohne INDEX/QUESTIONS),
    // Reports in outputs/, Rohmaterial-Eintraege in raw/ (nur oberste Ebene).
    const zaehle = (unter, filter) => {
      try {
        return readdirSync(join(kbDir, unter))
          .filter(f => !f.startsWith('.') && f !== '@eaDir' && (!filter || filter(f))).length;
      } catch { return 0; }
    };
    const artikel = zaehle('wiki', f => f.endsWith('.md') && !/^(INDEX|QUESTIONS)\.md$/i.test(f));
    const outputs = zaehle('outputs');
    const raw = zaehle('raw', f => f !== 'README.md');
    kbs.push({ name: kb, alter, artikel, outputs, raw });
  }
  return kbs.sort((a, b) => (a.alter ?? 9e9) - (b.alter ?? 9e9));
}

// ---------------------------------------------------------------------------
// Daten einsammeln
// ---------------------------------------------------------------------------
const fristen = parseFristen();
const stationen = parseStationen();
const betrieb = parseBetrieb();
const wissen = parseWissen();
const aufNAS = HUB.startsWith('/Volumes/');

const offen = fristen.rows.filter(r => !r.erledigt);
const grpSofort = offen.filter(r => r.sofort || (r.delta !== null && r.delta < 0));
const grpHeute = offen.filter(r => r.delta === 0);
const grpBald = offen.filter(r => r.delta !== null && r.delta >= 1 && r.delta <= 7);
const grpSpaeter = offen.filter(r => r.delta !== null && r.delta > 7);
const grpOhne = offen.filter(r => r.delta === null && !r.sofort);
const erledigt = fristen.rows.filter(r => r.erledigt);

// ---------------------------------------------------------------------------
// HTML
// ---------------------------------------------------------------------------
const prioKl = p => /hoch/.test(p) ? 'p-hoch' : /mittel/.test(p) ? 'p-mittel' : 'p-tief';
const deltaChip = r => {
  if (r.sofort) return '<span class="chip c-rot">SOFORT</span>';
  if (r.delta === null) return `<span class="chip c-grau">${esc(r.frist || 'offen')}</span>`;
  if (r.delta < 0) return `<span class="chip c-rot">${esc(r.datumTxt)} · ${-r.delta} Tg. überfällig</span>`;
  if (r.delta === 0) return `<span class="chip c-orange">HEUTE${r.datumTxt.includes(':') ? ' ' + esc(r.datumTxt.split(' ')[1]) : ''}</span>`;
  return `<span class="chip ${r.delta <= 7 ? 'c-gelb' : 'c-grau'}">${esc(r.datumTxt)} · in ${r.delta} Tg.</span>`;
};

const karte = r => `
  <article class="karte ${prioKl(r.prio)}" data-hash="${esc(r.hash)}">
    <header>${deltaChip(r)}<span class="chip c-projekt">${esc(r.projekt)}</span><span class="chip c-prio">${esc(r.prio)}</span>${r.erledigt ? '' : '<button class="done" title="Als erledigt ins Fristen-Register schreiben">✓ erledigt</button>'}</header>
    ${r.titel ? `<h3>${esc(r.titel)}</h3>` : ''}
    <p>${esc(kuerze(r.text, 300))}</p>
    <footer><span>${esc(kuerze(r.quelle, 60))}</span><span class="status">${esc(r.status)}</span></footer>
  </article>`;

// Stichwort je Punkt fuer die zugeklappte Reiter-Vorschau: der Titelkopf vor
// dem ersten Gedankenstrich/Punkt, sonst der Textanfang.
const stichwort = r => {
  const roh = (r.titel || r.text || '').split(/\s+—\s+|\s+–\s+/)[0].split('. ')[0];
  return kuerze(entmd(roh), 38);
};
const themenChips = (rows, max = 14) =>
  rows.slice(0, max).map(r => `<span class="thema">${esc(stichwort(r))}</span>`).join('') +
  (rows.length > max ? `<span class="thema mehr">+${rows.length - max} weitere</span>` : '');

// Aufklappbarer Reiter: zugeklappt Titel + Anzahl + Themen-Stichworte,
// aufgeklappt die Karten. Klappzustand merkt sich der Browser (localStorage).
const gruppe = (id, titel, rows, kl = '') => rows.length ? `
  <details class="gruppe ${kl}" data-merk="${id}">
    <summary><span class="g-titel">${titel}</span><span class="anzahl">${rows.length}</span>
      <span class="themen">${themenChips(rows)}</span></summary>
    <div class="karten">${rows.map(karte).join('')}</div>
  </details>` : '';

// Reiter mit freiem Inhalt (Stationen, Betrieb, Second Brain)
const reiter = (id, titel, chips, inhalt, kl = '') => `
  <details class="gruppe ${kl}" data-merk="${id}">
    <summary><span class="g-titel">${titel}</span>
      <span class="themen">${chips}</span></summary>
    <div class="inhalt">${inhalt}</div>
  </details>`;

const stationHtml = s => `
  <article class="station ${s.frisch !== null && s.frisch <= 30 ? 'live' : ''}">
    <header><h3>${esc(s.name)}</h3>
      <span class="chip ${s.frisch !== null && s.frisch <= 30 ? 'c-gruen' : 'c-grau'}">
        ${s.frisch !== null ? (s.frisch <= 30 ? `live · vor ${s.frisch} Min` : `Stand ${esc(s.stand)}`) : 'kein Zeitstempel'}
      </span></header>
    ${s.abschnitte.map(a => `
      <h4>${esc(a.titel)}</h4>
      ${a.zeilen.length ? `<ul>${a.zeilen.slice(0, 5).map(z => `<li>${esc(kuerze(z, 110))}</li>`).join('')}</ul>` : '<p class="leer">—</p>'}`).join('')}
  </article>`;

const kbFarbe = a => a === null ? 'c-grau' : a <= 3 ? 'c-gruen' : a <= 14 ? 'c-gelb' : 'c-grau';

// Second Brain: eine Blase je KB — Flaeche ~ Wiki-Artikelbestand, Farbe = Frische.
const brainMax = Math.max(1, ...wissen.map(k => k.artikel));
const blase = k => {
  const d = Math.round(62 + 88 * Math.sqrt(k.artikel / brainMax));
  const frische = k.alter === null ? 'ohne Datum' : k.alter === 0 ? 'heute gepflegt' : `vor ${k.alter} Tg. gepflegt`;
  return `<div class="blase ${kbFarbe(k.alter)}" style="width:${d}px;height:${d}px"
    title="${esc(k.name)} — ${k.artikel} Wiki-Artikel · ${k.outputs} Reports · ${k.raw} raw · ${esc(frische)}">
    <b>${k.artikel}</b><span>${esc(k.name)}</span></div>`;
};
const brainTotal = {
  artikel: wissen.reduce((s, k) => s + k.artikel, 0),
  outputs: wissen.reduce((s, k) => s + k.outputs, 0),
  raw: wissen.reduce((s, k) => s + k.raw, 0),
  frisch: wissen.filter(k => k.alter !== null && k.alter <= 3).length,
};

const warnungen = []; // rot: braucht Aufmerksamkeit
const hinweise = [];  // gelb: Zustand, kein Alarm
if (betrieb.fruehwarnung && !betrieb.fruehwarnung.still)
  warnungen.push(`<strong>Vollgas-Frühwarnung:</strong> ${esc(betrieb.fruehwarnung.zeile)}`);
if (fristen.fehlt) warnungen.push('<strong>Fristen-Register nicht gefunden</strong> — Hub-Pfad prüfen.');
if (betrieb.stops.length) hinweise.push(`<strong>Runner gedrosselt (STOP):</strong> ${betrieb.stops.map(esc).join(', ')}`);
if (betrieb.fruehwarnung && betrieb.fruehwarnung.still)
  hinweise.push(`<strong>Vollgas:</strong> ${esc(betrieb.fruehwarnung.zeile)}`);
if (!aufNAS) hinweise.push('Datenquelle ist das <strong>Git-Backup</strong>, nicht das NAS — Stand ggf. nicht aktuell.');

const html = `<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="300">
<title>JANS Hub Cockpit</title>
<style>
:root{
  --bg:#0e1116;--flaeche:#161b23;--flaeche2:#1c2330;--linie:#2a3342;
  --text:#e8ecf2;--dim:#8b96a8;--akzent:#e0a83c;
  --rot:#e05c5c;--orange:#e08a3c;--gelb:#d8c04a;--gruen:#5cb87a;
}
@media (prefers-color-scheme: light){
  :root{--bg:#f4f2ee;--flaeche:#ffffff;--flaeche2:#faf8f4;--linie:#dcd6cc;
    --text:#1d2430;--dim:#6b7484;--akzent:#a87818;
    --rot:#c03535;--orange:#c06a1a;--gelb:#9a7d10;--gruen:#2e8752;}
}
*{box-sizing:border-box;margin:0;padding:0}
body{background:var(--bg);color:var(--text);
  font:15px/1.5 "Helvetica Neue",Helvetica,Arial,sans-serif;padding:28px 32px 60px}
a{color:var(--akzent)}
.kopf{display:flex;flex-wrap:wrap;align-items:baseline;gap:14px;margin-bottom:6px}
.kopf h1{font-size:22px;font-weight:700;letter-spacing:.14em;text-transform:uppercase}
.kopf h1 b{color:var(--akzent)}
.kopf .stand{color:var(--dim);font-size:13px}
.pfad{color:var(--dim);font-size:12px;font-family:ui-monospace,Menlo,monospace;margin-bottom:18px}
.warn{background:color-mix(in srgb,var(--rot) 14%,var(--flaeche));border:1px solid var(--rot);
  border-radius:10px;padding:10px 14px;margin:0 0 10px;font-size:14px}
.warn.hinweis{background:color-mix(in srgb,var(--gelb) 10%,var(--flaeche));border-color:var(--gelb)}
.kpis{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:10px;margin:16px 0 26px}
.kpi{background:var(--flaeche);border:1px solid var(--linie);border-radius:12px;padding:12px 14px}
.kpi[data-ziel]{cursor:pointer}
.kpi[data-ziel]:hover{border-color:var(--akzent)}
.kpi b{display:block;font-size:26px;line-height:1.1}
.kpi span{color:var(--dim);font-size:12px;text-transform:uppercase;letter-spacing:.06em}
.kpi.rot b{color:var(--rot)} .kpi.orange b{color:var(--orange)}
.kpi.gelb b{color:var(--gelb)} .kpi.gruen b{color:var(--gruen)}
details.gruppe{background:var(--flaeche);border:1px solid var(--linie);border-left:3px solid var(--linie);
  border-radius:12px;margin-bottom:10px;overflow:hidden}
details.gruppe.g-rot{border-left-color:var(--rot)}
details.gruppe.g-orange{border-left-color:var(--orange)}
details.gruppe.g-gelb{border-left-color:var(--gelb)}
details.gruppe.g-fertig{border-left-color:var(--gruen);opacity:.8}
details.gruppe summary{display:flex;flex-wrap:wrap;align-items:center;gap:8px 10px;
  padding:12px 16px;cursor:pointer;list-style:none;user-select:none}
details.gruppe summary::-webkit-details-marker{display:none}
details.gruppe summary::before{content:"▸";color:var(--dim);font-size:12px;transition:transform .15s}
details.gruppe[open] summary::before{transform:rotate(90deg)}
details.gruppe summary:hover{background:var(--flaeche2)}
.g-titel{font-size:13px;font-weight:700;text-transform:uppercase;letter-spacing:.12em}
.anzahl{color:var(--akzent);font-weight:700;font-size:13px;font-family:ui-monospace,Menlo,monospace}
.themen{display:flex;flex-wrap:wrap;gap:5px;flex:1;min-width:0}
.thema{font-size:11px;border:1px solid var(--linie);color:var(--dim);border-radius:999px;
  padding:1px 9px;font-family:ui-monospace,Menlo,monospace;white-space:nowrap;
  overflow:hidden;text-overflow:ellipsis;max-width:340px}
.thema.mehr{color:var(--akzent);border-color:color-mix(in srgb,var(--akzent) 50%,transparent)}
.thema.t-gruen{color:var(--gruen);border-color:var(--gruen)}
.thema.t-gelb{color:var(--gelb);border-color:var(--gelb)}
details.gruppe[open] .themen{display:none}
.karten{display:grid;gap:10px;padding:2px 14px 14px;
  grid-template-columns:repeat(auto-fill,minmax(360px,1fr))}
.inhalt{padding:2px 16px 14px}
.stationen-raster{display:grid;gap:12px;grid-template-columns:repeat(auto-fill,minmax(340px,1fr))}
.karte{background:var(--flaeche2);border:1px solid var(--linie);border-left:3px solid var(--linie);
  border-radius:10px;padding:12px 14px}
.karte.p-hoch{border-left-color:var(--rot)}
.karte.p-mittel{border-left-color:var(--gelb)}
.karte.p-tief{border-left-color:var(--linie)}
.karte header{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:6px}
.karte h3{font-size:14.5px;margin:2px 0 4px}
.karte p{color:var(--dim);font-size:13px}
.karte footer{display:flex;justify-content:space-between;gap:10px;margin-top:8px;
  color:var(--dim);font-size:11.5px;font-family:ui-monospace,Menlo,monospace}
.chip{display:inline-block;border-radius:999px;padding:1px 9px;font-size:11.5px;
  font-family:ui-monospace,Menlo,monospace;border:1px solid var(--linie);color:var(--dim)}
.c-rot{color:#fff;background:var(--rot);border-color:var(--rot);font-weight:700}
.c-orange{color:#fff;background:var(--orange);border-color:var(--orange);font-weight:700}
.c-gelb{color:var(--gelb);border-color:var(--gelb)}
.c-gruen{color:var(--gruen);border-color:var(--gruen)}
.c-grau{color:var(--dim)}
.c-projekt{color:var(--akzent);border-color:color-mix(in srgb,var(--akzent) 50%,transparent)}
.station{background:var(--flaeche);border:1px solid var(--linie);border-radius:12px;
  padding:14px 16px;margin-bottom:12px}
.station.live{border-color:color-mix(in srgb,var(--gruen) 60%,var(--linie))}
.station header{display:flex;justify-content:space-between;align-items:center;gap:8px;margin-bottom:6px}
.station h3{font-size:15px}
.station h4{font-size:11.5px;text-transform:uppercase;letter-spacing:.08em;color:var(--dim);margin:10px 0 3px}
.station ul{list-style:none}
.station li{font-size:13px;color:var(--text);padding-left:14px;position:relative}
.station li::before{content:"·";position:absolute;left:2px;color:var(--akzent)}
.leer{color:var(--dim);font-size:13px}
button.done{margin-left:auto;cursor:pointer;border:1px solid var(--gruen);color:var(--gruen);
  background:transparent;border-radius:999px;padding:1px 10px;font-size:11.5px;
  font-family:ui-monospace,Menlo,monospace;opacity:.45;transition:opacity .15s}
.karte:hover button.done{opacity:1}
button.done:hover{background:var(--gruen);color:#fff}
button.done:disabled{opacity:.5;cursor:wait}
body.statisch button.done{display:none}
.karte.weg{opacity:.15;transition:opacity .4s}
.brain{display:flex;flex-wrap:wrap;gap:10px;align-items:center;justify-content:flex-start}
.blase{border-radius:50%;display:flex;flex-direction:column;align-items:center;justify-content:center;
  text-align:center;overflow:hidden;padding:6px;border:2px solid var(--linie);background:var(--flaeche);cursor:default}
.blase b{font-size:17px;line-height:1.1}
.blase span{font-size:9.5px;color:var(--dim);line-height:1.15;word-break:break-word;
  font-family:ui-monospace,Menlo,monospace;max-width:100%;max-height:2.4em;overflow:hidden}
.blase.c-gruen{border-color:var(--gruen);background:color-mix(in srgb,var(--gruen) 13%,var(--flaeche))}
.blase.c-gelb{border-color:var(--gelb);background:color-mix(in srgb,var(--gelb) 10%,var(--flaeche))}
.brain-total{font-size:13px;color:var(--dim);margin-bottom:12px}
.brain-total b{color:var(--text)} .brain-total b.gruen{color:var(--gruen)}
.legende{font-size:11px;color:var(--dim);margin-top:10px}
.journal{background:var(--flaeche);border:1px solid var(--linie);border-radius:12px;padding:14px 16px;margin-bottom:12px}
.journal h3{font-size:13px;color:var(--akzent);font-family:ui-monospace,Menlo,monospace;margin-bottom:6px}
.journal li{font-size:13px;color:var(--dim);margin-left:16px;margin-bottom:3px}
.queues{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin-bottom:12px}
.queue{background:var(--flaeche);border:1px solid var(--linie);border-radius:10px;padding:10px 12px;font-size:13px}
.queue b{font-size:20px;display:block}
.queue span{color:var(--dim);font-size:11.5px}
.fuss{margin-top:36px;color:var(--dim);font-size:12px;border-top:1px solid var(--linie);padding-top:12px;
  font-family:ui-monospace,Menlo,monospace}
</style>
</head>
<body${INTERAKTIV ? ' data-interaktiv="1"' : ''}>
<div class="kopf">
  <h1>JANS <b>Hub Cockpit</b></h1>
  <span class="stand">Stand ${esc(deCH(NOW, { dateStyle: 'full', timeStyle: 'short' }))} · Auto-Refresh 5 Min</span>
</div>
<div class="pfad">Quelle: ${esc(HUB)} ${aufNAS ? '(NAS)' : '(lokales Repo)'}</div>

${warnungen.map(w => `<div class="warn">${w}</div>`).join('')}
${hinweise.map(w => `<div class="warn hinweis">${w}</div>`).join('')}

<div class="kpis">
  <div class="kpi rot" data-ziel="sofort"><b>${grpSofort.length}</b><span>sofort / überfällig</span></div>
  <div class="kpi orange" data-ziel="heute"><b>${grpHeute.length}</b><span>heute</span></div>
  <div class="kpi gelb" data-ziel="bald"><b>${grpBald.length}</b><span>nächste 7 Tage</span></div>
  <div class="kpi"><b>${offen.length}</b><span>offen gesamt</span></div>
  <div class="kpi ${betrieb.queues.reduce((s, q) => s + q.anzahl, 0) ? 'gelb' : 'gruen'}" data-ziel="betrieb">
    <b>${betrieb.queues.filter(q => /pending|Sync/.test(q.name)).reduce((s, q) => s + q.anzahl, 0)}</b><span>Task-Queues</span></div>
  <div class="kpi" data-ziel="brain"><b>${wissen.length}</b><span>Wissens-KBs</span></div>
</div>

${gruppe('sofort', 'Sofort &amp; überfällig', grpSofort.sort((a, b) => (b.delta ?? 1) - (a.delta ?? 1)), 'g-rot')}
${gruppe('heute', 'Heute', grpHeute, 'g-orange')}
${gruppe('bald', 'Nächste 7 Tage', grpBald.sort((a, b) => a.delta - b.delta), 'g-gelb')}
${gruppe('spaeter', 'Später terminiert', grpSpaeter.sort((a, b) => a.delta - b.delta))}
${gruppe('ohne', 'Ohne Datum (offen / beobachten / zu prüfen)', grpOhne)}
${gruppe('erledigt', 'Erledigt / hinfällig', erledigt, 'g-fertig')}
${reiter('stationen', 'Stationen',
  stationen.map(s => `<span class="thema ${s.frisch !== null && s.frisch <= 30 ? 't-gruen' : ''}">${esc(s.name)}${s.frisch !== null && s.frisch <= 30 ? ' · live' : s.stand ? ' · ' + esc(kuerze(s.stand, 20)) : ''}</span>`).join('') || '<span class="thema">kein station-status/ gefunden</span>',
  `<div class="stationen-raster">${stationen.map(stationHtml).join('') || '<p class="leer">kein station-status/ gefunden</p>'}</div>`)}
${reiter('betrieb', 'Betrieb &amp; Queues',
  betrieb.queues.map(q => `<span class="thema ${q.anzahl ? 't-gelb' : ''}">${esc(q.name)} ${q.anzahl}</span>`).join('') +
    (betrieb.journalTage.length ? `<span class="thema">Journal ${betrieb.journalTage.map(t => esc(t.tag.split(' ')[0])).join(' · ')}</span>` : ''),
  `<div class="queues">
      ${betrieb.queues.map(q => `<div class="queue"><b>${q.anzahl}</b>${esc(q.name)}<br>
        <span>${q.eintraege.map(esc).join(' · ') || '—'}</span></div>`).join('') || '<p class="leer">keine Queues gefunden</p>'}
    </div>
    ${betrieb.journalTage.map(t => `<div class="journal"><h3>Journal ${esc(t.tag)}</h3>
      <ul>${t.eintraege.map(e => `<li>${esc(e)}</li>`).join('') || '<li>—</li>'}</ul></div>`).join('')}`)}
${reiter('brain', 'Second Brain · Wissens-Layer',
  `<span class="thema">${wissen.length} KBs</span><span class="thema">${brainTotal.artikel} Wiki-Artikel</span>
   <span class="thema">${brainTotal.outputs} Reports</span><span class="thema">${brainTotal.raw} Roh-Quellen</span>
   <span class="thema t-gruen">${brainTotal.frisch} frisch (≤ 3 Tg.)</span>` +
    [...wissen].sort((a, b) => b.artikel - a.artikel).slice(0, 3).map(k => `<span class="thema">${esc(k.name)} ${k.artikel}</span>`).join(''),
  `<div class="brain">${[...wissen].sort((a, b) => b.artikel - a.artikel).map(blase).join('')}</div>
   <p class="legende">Blasengrösse = Wiki-Artikelbestand · Farbe = Frische (grün ≤ 3 Tg., gelb ≤ 14 Tg.) · Details beim Überfahren</p>`)}

<div class="fuss">
  Erzeugt von webtools/cockpit/build-cockpit.mjs ·
  <span class="nur-statisch">statische Ansicht — interaktiv (Fristen abhaken) via cockpit-server: http://127.0.0.1:8737</span><span class="nur-interaktiv">interaktiv · ✓ schreibt «erledigt» direkt ins Fristen-Register (logbuch/fristen.md)</span>
</div>
<script>
(function () {
  // Klappzustand der Reiter merken (ueberlebt Auto-Refresh und Reload)
  var reiter = document.querySelectorAll('details.gruppe[data-merk]');
  for (var i = 0; i < reiter.length; i++) (function (d) {
    var k = 'cockpit-auf-' + d.getAttribute('data-merk');
    try { if (localStorage.getItem(k) === '1') d.open = true; } catch (e) {}
    d.addEventListener('toggle', function () {
      try { localStorage.setItem(k, d.open ? '1' : '0'); } catch (e) {}
    });
  })(reiter[i]);
  // KPI-Kachel klickt zur passenden Gruppe und klappt sie auf
  document.addEventListener('click', function (ev) {
    var kpi = ev.target.closest ? ev.target.closest('.kpi[data-ziel]') : null;
    if (!kpi) return;
    var ziel = document.querySelector('details.gruppe[data-merk="' + kpi.getAttribute('data-ziel') + '"]');
    if (!ziel) return;
    ziel.open = true;
    ziel.scrollIntoView({ behavior: 'smooth', block: 'start' });
  });

  var interaktiv = location.protocol.indexOf('http') === 0 &&
    document.body.getAttribute('data-interaktiv') === '1';
  document.body.classList.add(interaktiv ? 'interaktiv' : 'statisch');
  var st = document.createElement('style');
  st.textContent = interaktiv ? '.nur-statisch{display:none}' : '.nur-interaktiv{display:none}';
  document.head.appendChild(st);
  if (!interaktiv) return;
  document.addEventListener('click', function (ev) {
    var btn = ev.target.closest ? ev.target.closest('button.done') : null;
    if (!btn) return;
    var karte = btn.closest('.karte');
    var titel = karte.querySelector('h3');
    if (!confirm('Im Register als erledigt markieren?\\n\\n' + (titel ? titel.textContent : ''))) return;
    btn.disabled = true; btn.textContent = '…';
    fetch('/api/erledigt', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ hash: karte.getAttribute('data-hash') })
    }).then(function (r) { return r.json(); }).then(function (a) {
      if (a.ok) { karte.classList.add('weg'); setTimeout(function () { location.reload(); }, 500); }
      else { alert('Nicht markiert: ' + (a.meldung || 'unbekannter Fehler')); btn.disabled = false; btn.textContent = '✓ erledigt'; }
    }).catch(function (e) { alert('Cockpit-Server nicht erreichbar: ' + e); btn.disabled = false; btn.textContent = '✓ erledigt'; });
  });
})();
</script>
</body>
</html>
`;

// ---------------------------------------------------------------------------
// Schreiben + optional oeffnen
// ---------------------------------------------------------------------------
mkdirSync(dirname(OUT), { recursive: true });
writeFileSync(OUT, html);
console.log(`Cockpit gebaut: ${OUT}`);
console.log(`  Fristen: ${offen.length} offen (${grpSofort.length} sofort/überfällig, ${grpHeute.length} heute, ${grpBald.length} in 7 Tg.) · Stationen: ${stationen.length} · KBs: ${wissen.length}`);
if (OPEN) {
  try { execFileSync('open', [OUT]); } catch { console.log('  (Hinweis: konnte den Browser nicht oeffnen — Datei manuell oeffnen)'); }
}
