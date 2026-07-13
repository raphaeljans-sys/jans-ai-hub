---
title: GEAK — Gebäudeenergieausweis der Kantone
status: established
last_updated: 2026-07-13
sources: [destillate/geak-gebaeudeenergieausweis-kantone.md, destillate/geak-klassengrenzen-relative-klassierung.md, destillate/geak-kosten-efh-mfh.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[minergie-standards]], [[foerderung-energie-zh]], [[foerderung-energie-sz]], [[gebaeudeprogramm-bund-hfm-2015]], [[fenster-energieetikette-fea-bfe]]
---

# GEAK — der Gebäudeenergieausweis der Kantone

Der **GEAK** ist der **amtliche, schweizweit einheitliche Gebäudeenergieausweis der Kantone** (Verein GEAK
im Auftrag der EnDK). Er ist die **Energieetikette für bestehende Gebäude** und die **Eintrittskarte in
die Förderung** — für JANS das erste Instrument, wenn ein Bauherr «wie effizient ist mein Gebäude, was
bringt eine Sanierung, welche Förderung gibt es?» fragt. Bauherren-Kurzantwort: `[[BAUHERREN-FAQ]]` **F36**.

## Die drei Klassierungen (A–G)
Das **Basisprodukt GEAK** zeigt drei grafisch klassierte Achsen (A = beste … G = schlechteste):
1. **Gebäudehülle** — baulicher Wärmeschutz (Dämmung, Fenster, Wärmebrücken).
2. **Gesamtenergieeffizienz / Gebäudetechnik** — gesamter Energiebedarf inkl. Heizung, Warmwasser, Strom,
   **unter Anrechnung der Eigenstromerzeugung**.
3. **Direkte CO₂-Emissionen** — Treibhausgase aus Raumwärme + Warmwasser; **Klasse A = null CO₂**,
   Klassenwechsel in Stufen von **5 kg/(m²·a)**.

## GEAK vs. GEAK Plus
- **GEAK (Basis):** die reine Etikette (drei Klassen A–G).
- **GEAK Plus:** zusätzlich **bis zu fünf massgeschneiderte Modernisierungsvarianten** + **Beratungsbericht**
  → die Entscheidungsgrundlage für die Sanierungsplanung (Massnahme, Reihenfolge, Klassen-Effekt).

## Formales
- **Gültigkeit: bis 10 Jahre**, erfasst in einer **zentralen Datenbank**.
- Ausstellung **nur durch zertifizierte GEAK-Expert:innen**, über **Gebäudebegehung** + Datenaufnahme
  (geak.ch: neunstufiger Weg vom Handlungsbedarf bis zur Umsetzung).
- **Kosten: kein amtlicher Fixpreis** — projektabhängig, mehrere Offerten einholen. **Marktrichtwerte**
  (Sekundärquelle, nicht amtlich): GEAK EFH CHF 450–650, GEAK MFH CHF 500–800, **GEAK Plus EFH
  CHF 1'400–2'100** (MFH grössenabhängig, keine feste Spanne publiziert); dazu amtliche
  Zertifizierungsgebühren CHF 80 (GEAK) / CHF 190 (GEAK Plus) → `[[geak-kosten-efh-mfh]]`.

## Bezug zur Förderung
- **GEAK Plus obligatorisch ab CHF 10'000 Förderbeitrag** aus dem Gebäudeprogramm
  (→ `[[gebaeudeprogramm-bund-hfm-2015]]`).
- **Erstellung selbst wird gefördert:** ZH und SZ zahlen **CHF 1'000 (GEAK) / 1'500 (GEAK Plus)**
  (→ `[[foerderung-energie-zh]]`, `[[foerderung-energie-sz]]`). Gesuch **immer vor Baubeginn**.
- **In einigen Kantonen** ist der GEAK bei **Handänderungen** und für Fördergelder obligatorisch —
  welche genau, ist kantonsweise (Energiegesetz) zu prüfen → Skill `baurecht`.

## Abgrenzung
- **GEAK ≠ Minergie:** GEAK bewertet den **Ist-Zustand des Bestands** (Etikette), Minergie ist ein
  **freiwilliges Ziellabel** mit Nachweis (→ `[[minergie-standards]]`). GEAK = Bestandsaufnahme, Minergie = Ziel.
- **Gebäude vs. Bauteil:** GEAK klassiert das **ganze Gebäude**, die **Fenster-Energieetikette** nur das
  Bauteil Fenster (→ `[[fenster-energieetikette-fea-bfe]]`) — dieselbe A–G-Logik, andere Bezugsebene.

## Klassierungsprinzip: RELATIV, nicht fix (geklärt 2026-07-12, Run 35, adversarial verifiziert)
Die Klassen A–G sind **keine festen kWh/m²·a-Werte**, sondern ein **prozentualer Abstand zu
einem individuell berechneten Referenzgebäude** (R = Projektwert/Referenzwert × 100): A = 0–50 %,
B = 50–100 %, C = 100–150 %, D = 150–200 %, E = 200–250 %, F = 250–300 %, G = über 300 % — gilt
identisch für Gebäudehülle (Referenz: SIA-380/1-Neubau-Grenzwert) und Gesamteffizienz (Referenz-
gebäude mit 80 % des Neubau-Grenzwerts Heizwärme, Standard-Strombedarf MFH 28 / EFH 22 kWh/m²a).
Eine im Web kursierende feste Zahlen-Tabelle («A bis 25 kWh/m²a…») ist **widerlegt/falsch**. Nur
die **dritte, separate CO₂-Etikette** ist absolut in 5-kg/(m²a)-Schritten klassiert — nicht mit
den relativen Achsen verwechseln. Quelle: «Normierung des GEAK» v2.1.0, EnDK, 30.3.2023, Tab.
40/41 → `[[geak-klassengrenzen-relative-klassierung]]`; adversarial am Original-PDF bestätigt.

## Offen
- **MFH-GEAK-Plus-Preisspanne konkret** (Marktquelle nennt nur «grössenabhängig», keine Zahl); zweite
  unabhängige Quelle zur Triangulierung der EFH-Richtwerte.
- Liste der Kantone mit **GEAK-Pflicht bei Handänderung**.

**Quelle:** `[[geak-gebaeudeenergieausweis-kantone]]` (geak.ch / EnDK, Stand 2026, Reglemente 01.01.2026),
`[[geak-klassengrenzen-relative-klassierung]]` (EnDK-Normierungsdokument, 30.3.2023),
`[[geak-kosten-efh-mfh]]` (immoverkauf24.ch, Marktrichtwerte, emerging).
