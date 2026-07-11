#!/usr/bin/env node
// claude-usage.mjs — JANS AI Hub Connector
//
// Fragt die Auslastung des Claude-Abos (Max 20x) im Hintergrund ab — ohne Browser.
//
// Modi:
//   node claude-usage.mjs                 → offizielle Limit-Auslastung (5h- + Wochen-Limit)
//   node claude-usage.mjs --lokal         → Verbrauch dieser Station aus lokalen Transkripten (ccusage weekly)
//   node claude-usage.mjs --alles         → beides
//
// Token-Quellen fuer den offiziellen Modus (in dieser Reihenfolge):
//   1. ENV CLAUDE_CODE_OAUTH_TOKEN
//   2. macOS Keychain "Claude Code-credentials" (claudeAiOauth der Claude-CLI, entsteht durch /login)
//   3. macOS Keychain "jans-claude-usage" (manuell abgelegtes Token, z.B. aus `claude setup-token`:
//      security add-generic-password -s jans-claude-usage -a claude -w '<token>')
//
// Einmalige Einrichtung, falls kein Token gefunden wird:
//   Im Terminal `claude` starten und `/login` ausfuehren (Browser-Flow) — danach liegt das
//   Token in der Keychain und dieser Connector laeuft unbeaufsichtigt (auch als Scheduled Task).
//
// HARTE REGEL: read-only. Der Connector liest nur Auslastung, aendert nichts am Account.

import { execSync, execFileSync } from 'node:child_process';

const args = process.argv.slice(2);
const modusLokal = args.includes('--lokal');
const modusAlles = args.includes('--alles');
const modusOffiziell = modusAlles || (!modusLokal);

// ---------- Token-Beschaffung ----------

function tokenAusKeychain(service) {
  try {
    return execFileSync('security', ['find-generic-password', '-s', service, '-w'],
      { encoding: 'utf8', stdio: ['ignore', 'pipe', 'ignore'] }).trim();
  } catch { return null; }
}

async function refreshToken(oauth) {
  // Erneuert ein abgelaufenes CLI-Token (nur im Speicher, Keychain bleibt unangetastet)
  const res = await fetch('https://console.anthropic.com/v1/oauth/token', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      grant_type: 'refresh_token',
      refresh_token: oauth.refreshToken,
      client_id: '9d1c250a-e61b-44d9-88ed-5944d1962f5e',
    }),
  });
  if (!res.ok) return null;
  const d = await res.json();
  return d.access_token || null;
}

async function findeToken() {
  if (process.env.CLAUDE_CODE_OAUTH_TOKEN) return { token: process.env.CLAUDE_CODE_OAUTH_TOKEN, quelle: 'ENV' };

  const raw = tokenAusKeychain('Claude Code-credentials');
  if (raw) {
    try {
      const oauth = JSON.parse(raw).claudeAiOauth;
      if (oauth?.accessToken) {
        if (oauth.expiresAt && oauth.expiresAt < Date.now() && oauth.refreshToken) {
          const neu = await refreshToken(oauth);
          if (neu) return { token: neu, quelle: 'Keychain (refreshed)' };
        }
        return { token: oauth.accessToken, quelle: 'Keychain CLI' };
      }
    } catch { /* Eintrag ohne claudeAiOauth — weiter */ }
  }

  const manuell = tokenAusKeychain('jans-claude-usage');
  if (manuell) return { token: manuell, quelle: 'Keychain jans-claude-usage' };

  return null;
}

// ---------- Offizielle Limit-Abfrage ----------

function druckeBlock(name, o) {
  const pct = o.utilization ?? o.used_pct ?? o.usage;
  const reset = o.resets_at ?? o.reset_at ?? o.resetsAt;
  const resetTxt = reset ? new Date(typeof reset === 'number' && reset < 1e12 ? reset * 1000 : reset)
    .toLocaleString('de-CH', { timeZone: 'Europe/Zurich' }) : '?';
  console.log(`  ${name.padEnd(22)} ${String(pct).padStart(5)} %   (Reset: ${resetTxt})`);
}

async function offizielleAuslastung() {
  const t = await findeToken();
  if (!t) {
    console.log('KEIN TOKEN GEFUNDEN.');
    console.log('Einmalige Einrichtung: im Terminal `claude` starten und `/login` ausfuehren.');
    console.log('Danach liefert dieser Connector die offizielle Limit-Auslastung unbeaufsichtigt.');
    return false;
  }

  const res = await fetch('https://api.anthropic.com/api/oauth/usage', {
    headers: {
      Authorization: `Bearer ${t.token}`,
      'anthropic-beta': 'oauth-2025-04-20',
      'Content-Type': 'application/json',
    },
  });

  if (!res.ok) {
    console.log(`Usage-Endpunkt antwortet ${res.status} — versuche Fallback via Rate-Limit-Header...`);
    return await headerFallback(t.token);
  }

  const d = await res.json();
  console.log(`OFFIZIELLE ABO-AUSLASTUNG  (Token-Quelle: ${t.quelle})`);
  let gefunden = false;
  const bekannt = { five_hour: '5-Stunden-Fenster', seven_day: 'Woche (alle Modelle)', seven_day_opus: 'Woche (Opus)', seven_day_oauth_apps: 'Woche (Apps)' };
  for (const [k, v] of Object.entries(d)) {
    if (v && typeof v === 'object' && ('utilization' in v || 'resets_at' in v)) {
      druckeBlock(bekannt[k] || k, v); gefunden = true;
    }
  }
  if (!gefunden) console.log(JSON.stringify(d, null, 2));
  return true;
}

async function headerFallback(token) {
  // Minimaler Messages-Call — die Antwort-Header tragen die unified Rate-Limit-Auslastung
  const res = await fetch('https://api.anthropic.com/v1/messages', {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${token}`,
      'anthropic-beta': 'oauth-2025-04-20',
      'anthropic-version': '2023-06-01',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ model: 'claude-haiku-4-5-20251001', max_tokens: 1, messages: [{ role: 'user', content: 'ok' }] }),
  });
  let gefunden = false;
  for (const [k, v] of res.headers.entries()) {
    if (k.startsWith('anthropic-ratelimit-unified')) { console.log(`  ${k}: ${v}`); gefunden = true; }
  }
  if (!gefunden) console.log(`Keine Rate-Limit-Header erhalten (HTTP ${res.status}).`);
  return gefunden;
}

// ---------- Lokaler Verbrauch (ccusage) ----------

function lokalerVerbrauch() {
  console.log('\nLOKALER VERBRAUCH DIESER STATION (API-Gegenwert, ccusage weekly):');
  let out;
  try {
    out = execSync('npx -y ccusage@latest weekly --json 2>/dev/null', { encoding: 'utf8', timeout: 180000, maxBuffer: 32 * 1024 * 1024 });
  } catch (e) {
    console.log('  ccusage fehlgeschlagen:', e.message.split('\n')[0]);
    return;
  }
  try {
    const d = JSON.parse(out);
    const rows = d.weekly || d.data || (Array.isArray(d) ? d : []);
    for (const r of rows.slice(-4)) {
      const woche = r.period || r.week || r.date || '?';
      const kosten = (r.totalCost ?? r.cost ?? 0).toFixed(2);
      console.log(`  Woche ab ${woche}:  $${kosten}`);
    }
    if (d.totals?.totalCost != null) console.log(`  Total (gesamte Historie): $${d.totals.totalCost.toFixed(2)}`);
  } catch {
    console.log(out.slice(0, 2000));
  }
}

// ---------- Main ----------

if (modusOffiziell) await offizielleAuslastung();
if (modusLokal || modusAlles) lokalerVerbrauch();
