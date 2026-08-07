---
name: zahlungsabgleich
description: >-
  Zahlungsabgleich-/Bankverifikations-Agent fuer JANS — prueft taeglich, ob der gebuchte
  Zahlungsstand in bexio durch ECHTE UBS-Bankeingaenge gedeckt ist, deckt Doppelimporte und
  Phantom-Zahlungen auf und liefert dem Skill `mahnwesen` einen verifizierten Offen-/Bezahlt-
  Status. Diesen Skill verwenden wenn der Benutzer fragt: "Zahlungsabgleich", "Bankabgleich",
  "stimmen die Zahlungen", "Zahlungseingaenge pruefen", "ist die Rechnung wirklich bezahlt",
  "Bankeingang abgleichen", "offene Posten verifizieren", "Debitoren abstimmen". Liest den
  UBS-Feed ueber connectors/bexio.mjs (`--abgleich`). WICHTIG: Dieser Agent VERIFIZIERT und
  MELDET, er bucht und reconciled NICHT automatisch (Doppelbuchungs-Gefahr). Vorgeschaltet zu
  `mahnwesen`: erst wenn der Zahlungsstand verifiziert ist, mahnt der Mahn-Agent korrekt.
---

# JANS Zahlungsabgleich-Agent

Sorgt dafuer, dass der Skill `mahnwesen` auf WAHREN Zahlungsdaten arbeitet: Eine Rechnung
gilt erst dann als bezahlt, wenn ihrem gebuchten Zahlungseingang ein ECHTER UBS-Bankeingang
gegenuebersteht.

## Contract

- **Trigger:** taeglich (Scheduled Task `zahlungsabgleich-check`) und auf Zuruf, vor jedem Mahnlauf.
- **Einstieg (seit 07.08.2026):** `scripts/bexio-vorfilter.mjs --voll` — EIN Aufruf statt drei.
  Setzt `--abgleich`, `--duplikate` und `--verzug` selbst ab, trennt Einzel-Duplikate von
  Pruefgruppen, vergleicht mit dem Snapshot des Vortages und gibt nur das Delta plus die
  Fristenlage aus. Exit 0 = keine Aenderung · 10 = Delta · 2 = Fehler.
- **Connector (Detailabfragen):** `connectors/bexio.mjs` (Bank-Feed `/3.0/banking/transactions`,
  Rechnungen `/2.0/kb_invoice`, Zahlungen `/2.0/kb_invoice/{id}/payment`); `--rechnung <ID>` und
  `--mahnstufe <ID>` gezielt bei Delta oder offenem Registerpunkt.
- **Zustand:** `skills/zahlungsabgleich/state/zustand-letzter-lauf.json` (Snapshot, vom Script
  fortgeschrieben) und `state/vorbehalte.json` (Tx, die NICHT als Duplikat ignoriert werden
  duerfen — von Hand gepflegt, nie automatisch).
- **Output:** Diskrepanz-Report nach `30 JANS AI HUB OUTPUT/zahlungsabgleich/<jahr>/`; bei
  Befund Benachrichtigung an Raphael. Verifizierter Status speist `mahnwesen`.
- **Verwandt/Nachgelagert:** `mahnwesen` (mahnt auf dem verifizierten Stand).

## Der Vorfilter (Kontext-Diaet, 07.08.2026)

Bis zum 06.08.2026 las der taegliche Lauf rund 18 kB Roh-JSON und den 14 kB grossen Vorbericht
und diffte von Hand. Der Vorfilter macht das Sammeln, Gruppieren und Diffen deterministisch;
gemessen am 07.08.2026: **1.3 kB am ruhigen Tag** (nur Kennzahlen, «keine Aenderung», Fristen,
Vorbehalte) statt rund 32 kB, **8.8 kB mit `--voll`**, wenn der Bericht die vollen
Arbeitslisten neu aufbaut.

Was das Script NICHT tut: es urteilt nicht. Ob ein Delta operativ ist, ob gemahnt oder gemeldet
wird und was mit einer verschwundenen Vorbehalts-Tx geschieht, entscheidet der Hauptkontext.
Die Trennung ist Absicht — sie folgt Rule `modellwahl-routine`, Punkt 2.

## HARTE REGEL — niemals blind abgleichen (Lektion 13.06.2026)

Der UBS-Feed im bexio-Konto ist **doppelt importiert**: praktisch jeder Eingang existiert
zweimal — einmal echt (`reconciled`/`auto_reconciled`) und einmal als `unreconciled`-Phantom.

> **Echter Geldeingang = NUR Banktransaktionen mit Status `reconciled` oder `auto_reconciled`.**
> Status `unreconciled` ist beim Geldeingang (CREDIT) fast immer ein Duplikat eines bereits
> abgeglichenen Eingangs. Diese «unreconciled» blind abzugleichen wuerde jede Zahlung ein
> ZWEITES Mal verbuchen und die Buchhaltung zerstoeren.

Darum gilt: Dieser Agent **bucht, reconciled und loescht NICHTS** automatisch. Er liest,
verifiziert, meldet. Das eigentliche Reconcilen/Deduplizieren ist eine bexio-Oberflaechen-
bzw. Treuhand-Aufgabe (kann interaktiv begleitet werden, nie als Massen-Schreibautomatik).

## bexio-Datenmodell Banking (validiert 13.06.2026)

- `GET /3.0/banking/transactions?limit=&offset=` — alle Banktransaktionen. Felder: `type`
  (CREDIT=Eingang/DEBIT=Ausgang), `amount`, `status` (reconciled / auto_reconciled /
  unreconciled / ignored), `value_date`, `description`, `bank_account_id`.
- Die Verknuepfung Banktransaktion ↔ Rechnung gibt die API NICHT her (nur in der UI sichtbar).
- Zahlung je Rechnung: `GET /2.0/kb_invoice/{id}/payment` (date, value, bank_account_id).

## Pruef-Logik (`--abgleich`)

1. Echte Eingaenge = CREDIT mit Status reconciled/auto_reconciled.
2. Je als bezahlt gebuchte Rechnung: gibt es einen echten Eingang mit passendem Betrag?
3. Meldet:
   - **«bezahlt ohne Bankbeleg»** — Rechnung steht auf bezahlt, aber kein echter Eingang deckt sie
     (Phantom-Zahlung). Diese Rechnung ist in Wahrheit OFFEN und gehoert in den Mahnlauf.
   - **«Bankeingang ohne Verbuchung»** — echter Eingang ohne zugeordnete Rechnungs-Zahlung.
   - Anzahl `unreconciled` CREDIT (Duplikat-Verdacht).

**Wichtige Einschraenkung:** Das Matching laeuft ueber den Betrag (greedy), weil die API die
Referenz-Verknuepfung nicht liefert. Der Report ist damit ein **Kandidaten-Melder fuer die
Pruefung**, keine endgueltige Zuordnung — bei mehreren gleich hohen Rechnungen muss die genaue
Zuordnung in der bexio-UI (QR-Referenz) verifiziert werden. Erst saubere Daten (Doppelimport
bereinigt) machen den Report eindeutig.

## Zusammenspiel mit mahnwesen

`mahnwesen` darf eine Rechnung nur dann als «nicht im Verzug» behandeln, wenn ihr Bezahlt-Status
durch diesen Agenten verifiziert ist. Eine «bezahlt ohne Bankbeleg»-Rechnung ist faktisch offen
und faellt in den Verzug, sobald die Frist verstrichen ist.

## Empfohlener Ablauf bei Diskrepanzen (interaktiv, nicht automatisch)

1. Root cause zuerst: den **Doppelimport** des UBS-Feeds an der Quelle abstellen und die
   Phantom-Duplikate in bexio bereinigen (UI/Treuhand).
2. Phantom-Zahlung korrigieren: die ungedeckte «bezahlt»-Buchung in bexio stornieren, damit die
   Rechnung wieder offen ist.
3. Danach laeuft der taegliche Check als sauberes Fruehwarnsystem fuer `mahnwesen`.
