#!/usr/bin/env node
// bexio-vorfilter.mjs — deterministischer Zustands-Snapshot + Delta fuer zahlungsabgleich-check
//
// Kontext-Diaet (grep-Prinzip, Rule auto-verbesserungen 260719): statt dass Claude in jedem
// taeglichen Lauf rund 25 kB JSON und den 14 kB grossen Vorbericht liest und von Hand diffed,
// setzt dieses Script die drei Connector-Aufrufe ab, normalisiert das Ergebnis zu einem
// kompakten Zustand und vergleicht ihn mit dem Snapshot des Vortages. Ausgegeben wird nur,
// was sich BEWEGT hat, plus die Fristenlage.
//
// Das Script urteilt NICHT. Es bucht, loescht und reconciled nichts (rein lesend, der
// Connector hat auf Banktransaktionen ohnehin keinen Schreibzugriff). Sendeentscheid,
// Fristenschaerfe und die Bewertung eines Delta bleiben im Hauptkontext (Rule
// modellwahl-routine, Punkt 2).
//
// Aufruf:
//   node scripts/bexio-vorfilter.mjs             Delta ausgeben UND Snapshot fortschreiben
//   node scripts/bexio-vorfilter.mjs --trocken   Delta ausgeben, Snapshot NICHT fortschreiben
//   node scripts/bexio-vorfilter.mjs --voll      zusaetzlich den vollen Zustand als JSON
//
// Exit: 0 = keine Aenderung · 10 = Delta vorhanden · 2 = Fehler (Token, NAS, Connector)

import { execFileSync } from "node:child_process";
import { readFileSync, writeFileSync, existsSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const HIER = dirname(fileURLToPath(import.meta.url));
const ROOT = process.env.BEXIO_VORFILTER_ROOT || dirname(HIER);
const CONNECTOR = join(ROOT, "connectors", "bexio.mjs");

// Der Snapshot liegt bewusst auf dem NAS: beide Stationen sollen denselben Vergleichsstand
// sehen, sonst meldet die zweite Station am selben Tag ein Phantom-Delta.
const STATE_DIR =
  process.env.BEXIO_VORFILTER_STATE ||
  "/Volumes/daten/jans-ai-hub/skills/zahlungsabgleich/state";
const SNAPSHOT = join(STATE_DIR, "zustand-letzter-lauf.json");
const VORBEHALTE = join(STATE_DIR, "vorbehalte.json");

const TROCKEN = process.argv.includes("--trocken");
const VOLL = process.argv.includes("--voll");

// ---------------------------------------------------------------- Hilfsfunktionen

const chf = (n) =>
  n.toLocaleString("de-CH", { minimumFractionDigits: 2, maximumFractionDigits: 2 })
    .replace(/’| | /g, "'");

// Lokales Datum, NIE toISOString (Rule dateinamen-konvention: UTC datiert Nachtlaeufe zurueck).
const heuteISO = () => new Date().toLocaleDateString("sv-SE");
const jetzt = () =>
  `${heuteISO()} ${new Date().toLocaleTimeString("sv-SE", {
    hour: "2-digit",
    minute: "2-digit",
  })}`;

const deDatum = (iso) => {
  if (!iso) return "-";
  const [j, m, t] = iso.split("-");
  return `${t}.${m}.${j}`;
};

const tageBis = (iso) => {
  if (!iso) return null;
  const ziel = new Date(iso + "T00:00:00");
  const heute = new Date(heuteISO() + "T00:00:00");
  return Math.round((ziel - heute) / 86400000);
};

function ruf(flag) {
  try {
    const out = execFileSync("node", [CONNECTOR, flag, "--json"], {
      encoding: "utf8",
      maxBuffer: 32 * 1024 * 1024,
      timeout: 120000,
    });
    const start = out.search(/[[{]/);
    if (start < 0) throw new Error("keine JSON-Struktur in der Ausgabe");
    return JSON.parse(out.slice(start));
  } catch (e) {
    console.error(`FEHLER  ${flag}: ${e.message.split("\n")[0]}`);
    process.exit(2);
  }
}

// ---------------------------------------------------------------- Zustand erheben

if (!existsSync(CONNECTOR)) {
  console.error(`FEHLER  Connector nicht gefunden: ${CONNECTOR}`);
  process.exit(2);
}
if (!existsSync(STATE_DIR)) {
  try {
    mkdirSync(STATE_DIR, { recursive: true });
  } catch (e) {
    console.error(`FEHLER  State-Verzeichnis nicht anlegbar (NAS gemountet?): ${STATE_DIR}`);
    process.exit(2);
  }
}

const abgleich = ruf("--abgleich");
const duplikate = ruf("--duplikate");
const verzugRoh = ruf("--verzug");

// Verzug: flach, ohne tageUeberfaellig — die Tageszahl aendert sich per Konstruktion taeglich
// und wuerde jeden Lauf faelschlich als Delta melden. Sie wird beim Ausgeben neu gerechnet.
const verzug = (verzugRoh.debitoren || [])
  .flat()
  .map((r) => ({
    nr: r.nr,
    kunde: r.kunde,
    offen: r.offen,
    faellig: r.faellig,
    letzteFrist: r.letzteFrist || null,
    level: r.level,
    stufe: r.stufe,
  }))
  .sort((a, b) => a.nr.localeCompare(b.nr));

const phantome = (abgleich.ohneBeleg || [])
  .map((r) => ({ nr: r.nr, betrag: r.betrag, datum: r.datum, kunde: r.kunde }))
  .sort((a, b) => a.nr.localeCompare(b.nr));

const eingaenge = (abgleich.eingangOhneBuchung || []).map((t) => ({
  id: t.id,
  date: t.date,
  amount: t.amount,
}));

// Duplikate in Einzelfaelle und Pruefgruppen trennen: mehrere gleich hohe Betraege am selben
// Tag duerfen NICHT pauschal als Duplikat gelten (koennen echte gleich hohe Zahlungen sein).
const nachSchluessel = {};
for (const t of duplikate) {
  const k = `${t.date}|${t.amount}|${t.type}`;
  (nachSchluessel[k] = nachSchluessel[k] || []).push(t);
}
const einzel = [];
const gruppen = [];
for (const [k, txs] of Object.entries(nachSchluessel)) {
  const [datum, betrag, typ] = k.split("|");
  if (txs.length === 1) einzel.push({ ...txs[0] });
  else
    gruppen.push({
      datum,
      typ,
      betrag: Number(betrag),
      anzahl: txs.length,
      ids: txs.map((t) => t.id).sort((a, b) => a - b),
    });
}
einzel.sort((a, b) => a.id - b.id);
gruppen.sort((a, b) => b.betrag - a.betrag);

const zustand = {
  stand: heuteISO(),
  kennzahlen: {
    echteEingaenge: abgleich.realCount ?? null,
    unreconciledCredit: abgleich.credUnrecCount ?? null,
    duplikatKandidaten: duplikate.length,
    duplikatEinzel: einzel.length,
    duplikatGruppen: gruppen.length,
    phantome: phantome.length,
    phantomSumme: Number(phantome.reduce((s, r) => s + r.betrag, 0).toFixed(2)),
    verzugFaelle: verzug.length,
    verzugSumme: Number(verzug.reduce((s, r) => s + r.offen, 0).toFixed(2)),
    eingangOhneBuchung: eingaenge.length,
  },
  verzug,
  phantome,
  // duplikatIds traegt den Vergleich (Titel-Aenderungen sind irrelevant), `einzel` und
  // `gruppen` tragen die Arbeitsliste fuer den Bericht — damit muss der Lauf das rohe
  // Connector-JSON nicht mehr anfassen.
  duplikatIds: duplikate.map((t) => t.id).sort((a, b) => a - b),
  einzel: einzel.map((t) => ({
    id: t.id,
    datum: t.date,
    typ: t.type,
    betrag: t.amount,
    titel: t.title,
  })),
  gruppen,
  eingaenge,
};

// ---------------------------------------------------------------- Vergleich

const alt = existsSync(SNAPSHOT) ? JSON.parse(readFileSync(SNAPSHOT, "utf8")) : null;
const delta = [];

if (!alt) {
  delta.push("ERSTLAUF  kein Vergleichs-Snapshot vorhanden, voller Zustand unten");
} else {
  // Verzug
  const altV = new Map(alt.verzug.map((r) => [r.nr, r]));
  const neuV = new Map(verzug.map((r) => [r.nr, r]));
  for (const [nr, r] of neuV)
    if (!altV.has(nr))
      delta.push(`VERZUG NEU    ${nr} ${r.kunde} CHF ${chf(r.offen)} faellig ${deDatum(r.faellig)}`);
  for (const [nr, r] of altV)
    if (!neuV.has(nr))
      delta.push(
        `VERZUG WEG    ${nr} ${r.kunde} CHF ${chf(r.offen)} — bezahlt oder storniert, am Beleg pruefen`
      );
  for (const [nr, r] of neuV) {
    const a = altV.get(nr);
    if (!a) continue;
    if (a.offen !== r.offen)
      delta.push(`VERZUG BETRAG ${nr} CHF ${chf(a.offen)} -> CHF ${chf(r.offen)} — Teilzahlung?`);
    if (a.level !== r.level)
      delta.push(`VERZUG STUFE  ${nr} Level ${a.level} (${a.stufe}) -> ${r.level} (${r.stufe})`);
    if (a.faellig !== r.faellig)
      delta.push(`VERZUG FAELLIG ${nr} ${deDatum(a.faellig)} -> ${deDatum(r.faellig)}`);
    if (a.letzteFrist !== r.letzteFrist)
      delta.push(
        `VERZUG FRIST  ${nr} ${deDatum(a.letzteFrist)} -> ${deDatum(r.letzteFrist)}`
      );
  }

  // Phantome
  const altP = new Set(alt.phantome.map((r) => r.nr));
  const neuP = new Set(phantome.map((r) => r.nr));
  for (const r of phantome)
    if (!altP.has(r.nr))
      delta.push(
        `PHANTOM NEU   ${r.nr} ${r.kunde} CHF ${chf(r.betrag)} vom ${deDatum(r.datum)} — E-Banking gegenpruefen`
      );
  for (const r of alt.phantome)
    if (!neuP.has(r.nr)) delta.push(`PHANTOM WEG   ${r.nr} CHF ${chf(r.betrag)} — Deckung gefunden`);

  // Duplikate
  const altD = new Set(alt.duplikatIds);
  const neuD = new Set(zustand.duplikatIds);
  const dNeu = zustand.duplikatIds.filter((id) => !altD.has(id));
  const dWeg = alt.duplikatIds.filter((id) => !neuD.has(id));
  if (dNeu.length) delta.push(`DUPLIKAT NEU  ${dNeu.length} Tx: ${dNeu.join(", ")}`);
  if (dWeg.length)
    delta.push(`DUPLIKAT WEG  ${dWeg.length} Tx: ${dWeg.join(", ")} — in bexio bereinigt`);

  // Bankeingaenge ohne Buchung
  const altE = new Set(alt.eingaenge.map((t) => t.id));
  const neuE = new Set(eingaenge.map((t) => t.id));
  for (const t of eingaenge)
    if (!altE.has(t.id))
      delta.push(
        `EINGANG NEU   Tx ${t.id} ${deDatum(t.date)} CHF ${chf(t.amount)} ohne Verbuchung — zuordnen`
      );
  for (const t of alt.eingaenge)
    if (!neuE.has(t.id)) delta.push(`EINGANG WEG   Tx ${t.id} CHF ${chf(t.amount)} — zugeordnet`);
}

// ---------------------------------------------------------------- Vorbehalte

let vorbehalte = [];
if (existsSync(VORBEHALTE)) {
  try {
    vorbehalte = JSON.parse(readFileSync(VORBEHALTE, "utf8")).vorbehalte || [];
  } catch {
    console.error("WARNUNG vorbehalte.json nicht lesbar, wird uebersprungen");
  }
}
const gesperrt = [];
for (const v of vorbehalte) {
  const nochDa = zustand.duplikatIds.includes(v.tx);
  gesperrt.push(
    `${nochDa ? "AKTIV " : "WEG!! "} Tx ${v.tx} CHF ${chf(v.betrag)} ${deDatum(v.datum)} — ${v.grund}` +
      (nochDa ? "" : "  <== war gesperrt und ist aus der Liste verschwunden, sofort klaeren")
  );
}

// ---------------------------------------------------------------- Ausgabe

const k = zustand.kennzahlen;
console.log(`BEXIO-VORFILTER ${jetzt()}   (rein lesend, nichts gebucht)`);
console.log(
  `KENNZAHLEN  echt=${k.echteEingaenge} unrecCredit=${k.unreconciledCredit} ` +
    `duplikate=${k.duplikatKandidaten} (einzel ${k.duplikatEinzel} / ${k.duplikatGruppen} Gruppen) ` +
    `phantome=${k.phantome} CHF ${chf(k.phantomSumme)} ` +
    `verzug=${k.verzugFaelle} CHF ${chf(k.verzugSumme)} eingangOhneBuchung=${k.eingangOhneBuchung}`
);
console.log(`VERGLEICH   ${alt ? `Snapshot vom ${deDatum(alt.stand)}` : "kein Snapshot (Erstlauf)"}`);

if (delta.length === 0) {
  console.log("DELTA       keine Aenderung gegenueber dem Vergleichsstand");
} else {
  console.log(`DELTA       ${delta.length} Aenderung(en):`);
  for (const d of delta) console.log(`  ${d}`);
}

// Fristenlage: der terminkritische Teil, den der Hauptkontext immer sehen muss.
const fristen = verzug
  .filter((r) => r.letzteFrist)
  .map((r) => ({ ...r, in: tageBis(r.letzteFrist) }))
  .sort((a, b) => a.in - b.in);
const offen = fristen.filter((f) => f.in >= 0);
const abgelaufen = fristen.filter((f) => f.in < 0);

if (offen.length) {
  console.log("FRISTEN     naechste Mahnfristen:");
  for (const f of offen)
    console.log(
      `  ${deDatum(f.letzteFrist)}  ${f.nr}  ${f.stufe}  CHF ${chf(f.offen)}  in ${f.in} Tag(en)`
    );
}
if (abgelaufen.length) {
  console.log("ABGELAUFEN  Frist verstrichen, Entscheid Raphael:");
  for (const f of abgelaufen)
    console.log(
      `  ${deDatum(f.letzteFrist)}  ${f.nr}  ${f.stufe}  CHF ${chf(f.offen)}  seit ${-f.in} Tag(en)`
    );
}
const ohneFrist = verzug.filter((r) => !r.letzteFrist);
for (const r of ohneFrist)
  console.log(
    `OHNE FRIST  ${r.nr} ${r.kunde} CHF ${chf(r.offen)} faellig seit ${deDatum(r.faellig)} (${r.stufe})`
  );

if (gesperrt.length) {
  console.log("VORBEHALTE  Tx, die NICHT als Duplikat ignoriert werden duerfen:");
  for (const g of gesperrt) console.log(`  ${g}`);
}

// Kompakt, nicht pretty: dieser Block wandert in den Kontext des Laufs, der daraus die
// Berichtstabellen baut. Der Snapshot auf der Platte bleibt eingerueckt und lesbar.
if (VOLL || !alt) {
  console.log("---VOLLER ZUSTAND (kompakt)---");
  console.log(JSON.stringify(zustand));
}

// ---------------------------------------------------------------- Snapshot fortschreiben

if (!TROCKEN) {
  writeFileSync(SNAPSHOT, JSON.stringify(zustand, null, 2) + "\n", "utf8");
  console.log(`SNAPSHOT    fortgeschrieben auf ${deDatum(zustand.stand)}`);
} else {
  console.log("SNAPSHOT    nicht fortgeschrieben (--trocken)");
}

process.exit(delta.length ? 10 : 0);
