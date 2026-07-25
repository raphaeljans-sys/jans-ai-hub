#!/usr/bin/env node
// circuit.mjs — Tagesroute in Circuit for Teams erstellen (Plan → Stops → Optimieren → Verteilen)
// Teil des Skills `versandplanung`. Braucht Circuit FOR TEAMS (die Einzel-App hat keine API).
// API-Doku (validiert 2026-07-04): https://developer.team.getcircuit.com/api
// Hinweis: Endpunkt-Pfade beim ersten Lauf gegen die aktuelle API-Referenz validieren
// (Spec-Scope S5) — die API ist als v0.2b («beta») versioniert.
//
//   node circuit.mjs --test
//   node circuit.mjs --plan-heute --aus bestellungen.json               # Plan + Stops + Optimierung
//   node circuit.mjs --plan-heute --aus bestellungen.json --verteilen   # zusätzlich an Fahrer senden

import { readFileSync } from 'node:fs';
import { homedir } from 'node:os';
import { join } from 'node:path';

function ladeEnv() {
  const env = {};
  try {
    for (const zeile of readFileSync(join(homedir(), '.versand.env'), 'utf8').split('\n')) {
      const m = zeile.match(/^\s*([A-Z_]+)\s*=\s*(.*?)\s*$/);
      if (m && !zeile.trim().startsWith('#')) env[m[1]] = m[2];
    }
  } catch { fehler('~/.versand.env fehlt — Vorlage siehe connectors/versand/README.md'); }
  return env;
}
function fehler(msg) { console.error(`FEHLER: ${msg}`); process.exit(1); }

const ENV = ladeEnv();
if (!ENV.CIRCUIT_API_KEY) fehler('CIRCUIT_API_KEY fehlt in ~/.versand.env (Circuit for Teams → Einstellungen → API)');

const BASE = 'https://api.getcircuit.com/public/v0.2b';

async function api(pfad, methode = 'GET', body = null) {
  const res = await fetch(`${BASE}/${pfad}`, {
    method: methode,
    headers: { Authorization: `Bearer ${ENV.CIRCUIT_API_KEY}`, 'Content-Type': 'application/json' },
    body: body ? JSON.stringify(body) : undefined,
  });
  if (!res.ok) fehler(`Circuit ${methode} ${pfad}: HTTP ${res.status} ${await res.text()}`);
  return res.json();
}

// Bestellung → Circuit-Stop (nur Adresse ist Pflicht; mehr Felder = besseres Geocoding)
function stop(b) {
  return {
    address: {
      addressLineOne: b.adresse.strasse,
      addressLineTwo: `${b.adresse.plz} ${b.adresse.ort}`,
      country: 'CH',
    },
    recipient: { name: b.pickup_punkt || b.name, phone: b.telefon || undefined, email: b.mail || undefined },
    orderInfo: { sellerOrderId: b.nr },
    packageCount: 1,
    notes: [b.pickup_punkt ? `Pickup Point: ${b.pickup_punkt}` : '', b.notiz].filter(Boolean).join(' — ') || undefined,
  };
}

const args = process.argv.slice(2);

if (args.includes('--test')) {
  const plaene = await api('plans?maxPageSize=1');
  console.log(`OK — Circuit-for-Teams-API erreichbar (${(plaene.plans || []).length} Plan im Abruf)`);
  process.exit(0);
}

if (!args.includes('--plan-heute')) {
  console.log('Verwendung: circuit.mjs --test | --plan-heute --aus <bestellungen.json> [--verteilen]');
  process.exit(0);
}

const datei = args[args.indexOf('--aus') + 1];
if (!datei) fehler('--aus <bestellungen.json> fehlt');
const { datum, bestellungen } = JSON.parse(readFileSync(datei, 'utf8'));
const pickup = bestellungen.filter(b => b.versandart === 'pickup');
if (pickup.length === 0) { console.log('Keine Pickup-Bestellungen heute — kein Plan nötig.'); process.exit(0); }

// Pro Pickup Point genügt EIN Stop; alle Bestellungen des Punkts in die Notiz
const jePunkt = new Map();
for (const b of pickup) {
  const key = b.pickup_punkt || `${b.adresse.plz} ${b.adresse.ort}`;
  if (!jePunkt.has(key)) jePunkt.set(key, []);
  jePunkt.get(key).push(b);
}

const [jahr, monat, tag] = datum.split('-').map(Number);
console.error(`Erstelle Plan «Auslieferung ${datum}» mit ${jePunkt.size} Stop(s) für ${pickup.length} Bestellung(en) …`);

const plan = await api('plans', 'POST', {
  title: `Auslieferung ${datum}`,
  starts: { day: tag, month: monat, year: jahr },
  ...(ENV.CIRCUIT_FAHRER_ID ? { drivers: [ENV.CIRCUIT_FAHRER_ID] } : {}),
});

const stops = [...jePunkt.entries()].map(([punkt, liste]) => {
  const s = stop(liste[0]);
  s.packageCount = liste.length;
  s.notes = `${punkt}: ${liste.length} Bestellung(en) — ${liste.map(b => b.nr).join(', ')}`;
  return s;
});
await api(`${plan.id}/stops:import`, 'POST', stops);
console.error(`${stops.length} Stop(s) importiert — optimiere …`);

await api(`${plan.id}:optimize`, 'POST');

if (args.includes('--verteilen')) {
  await api(`${plan.id}:distribute`, 'POST');
  console.error('Plan an Fahrer verteilt — in der Fahrer-App nur noch «Start» drücken.');
}

console.log(JSON.stringify({ datum, planId: plan.id, titel: plan.title, stops: stops.length, bestellungen: pickup.length, verteilt: args.includes('--verteilen') }, null, 2));
