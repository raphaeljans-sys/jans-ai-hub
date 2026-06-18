# Training-Run 6 — Immobilienbewertung (2026-06-18)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Der Wuest-Kurs ist seit Run 1
vollstaendig eingearbeitet; nach Run 5 (3 Wohn-/MFH-Faelle quantitativ) zieht dieser Lauf die
letzten offenen E6-Faelle und schliesst T15 (Niederhasli CS) sowie T16 (Langnau/Wangen-LB) plus
laufenden Marktpuls (T10/E7). Damit ist E6 (reale JANS-Bewertungsfaelle) **vollstaendig**.

## Schwerpunkt: Deliverable-Methodik aus drei realen Faellen

Statt nur Kennwerte (Run 5) wurden in Run 6 die **methodischen Bauplaene** der Deliverables
gelesen und dokumentiert — das «wie ein JANS-CS/LB aufgebaut ist und rechnet»:

1. **CS Niederhasli, Seestrasse 64** (11.08.2025, 5 S.) — das Controlling-&-Sensitivitaets-
   Deliverable; bisher methodisch voellig unbelegt.
2. **LB Langnau, Giebelweg 12** (03.06.2026, 2 S.) — Bestand-halten-vs-Abbruch-Entscheid.
3. **LB Wangen, Bahnhofstrasse 27** (09.06.2026, 1 S.) — reifes Renditeobjekt-LB mit
   Kaufpreispruefung.

## Die 10 Themen dieses Laufs

| # | Thema | Aufgabe | Ziel-Artikel |
|---|---|---|---|
| 1 | CS-Deliverable-Aufbau (5 Seiten: Factsheet → Sensitivitaet → Fazit) | T15 | projektstruktur-deliverables |
| 2 | Controlling-Factsheet-Felderschema (Plausibilitaets-Check einer Fremdstudie, 5 Risiko-Ampeln) | T15 | projektstruktur-deliverables |
| 3 | Sensitivitaetsanalyse: Werttreiber Ausnuetzung × Δ 0/−10/−20 % × Kostenmodell A fix / B 70/30 | T15 | projektstruktur-deliverables |
| 4 | Break-Even-Mechanik (Modell A kippt ~−8 %, Modell B ~−13 %) + Niederhasli-Ist-Zahlen | T15 | projektstruktur-deliverables |
| 5 | Bestand-halten-vs-Abbruch-Entscheidlogik (Vergleichswert-Bestand ↔ Residual-Landwert) | T16 | vergleichswert-hedonisch, projektstruktur-deliverables |
| 6 | BMZ-/volumengedeckelte Zone kippt Entscheid auf Halten; Popety.io als Datenquelle | T16 | vergleichswert-hedonisch, datenquellen-registry |
| 7 | Ertragswert-Band ueber 3 Kapitalisierungssaetze (4.75/5.00/5.25 %) | T16 | ertragswert-dcf |
| 8 | Kaufpreispruefung: Angebot → impl. Bruttorendite vs. 4.5-%-Schwelle → Verhandlungsrichtung | T16 | ertragswert-dcf |
| 9 | Ausbau-/Umnutzungs-Rendite-Impact (Mietuplift kapitalisiert vs. Investition; STWE-Hebel; Grob-KV Umbau) | T16 | ertragswert-dcf |
| 10 | Marktpuls 06.2026: SREBI Q1-2026 0.69; Referenzzins-Durchschnittssatz 1.31 % nahe Schwelle | T10/E7 | investorenmarkt-makro |

## Was gelernt wurde (Kerngehalt)

- **Das CS ist ein Stress-Test, keine Neuberechnung.** Das Controlling-Factsheet plausibilisiert
  eine **fremde Studie** (Niederhasli: HVA-MBS + WKB-Kostenbasis) feldweise und vergibt fuenf
  Risiko-Ampeln (Baurecht / Ortsbildschutz / Kostensteigerung / Marktrisiko / Genehmigungsdauer).
  Die **Sensitivitaetsanalyse** stresst dann die verletzlichste Annahme — hier die **Ausnuetzung**,
  weil der behoerdliche Ortsbildschutz-Eingriff das reale Risiko ist.
- **Zwei-Kostenmodell-Logik ist das uebertragbare Herzstueck:** dieselbe Δ-Reduktion wird gegen
  **Modell A (Kosten fix)** und **Modell B (70 % fix / 30 % variabel)** gerechnet. Niederhasli:
  Basis-Marge 8.09 %; bei −10 % faellt sie auf −2.12 % (A) bzw. +1.27 % (B), bei −20 % auf
  −14.88 % (A) bzw. −7.27 % (B). Break-Even A ~−8 %, B ~−13 %. Das zeigt quantitativ, dass schon
  eine moderate behoerdliche Ausnuetzungsreduktion das knappe Polster aufzehrt.
- **Bei Bestand ist die Schluesselfrage Halten vs. Entwickeln** und entscheidet sich am Verhaeltnis
  **Vergleichswert-Bestand ↔ Residual-Entwicklungs-Landwert.** Langnau: Bestand 1.9–2.3 Mio >
  Entwicklungs-Landwert 0.8–1.2 Mio → Halten. Treiber ist die **BMZ-/m3-Deckelung** mit kleiner
  Reserve (+248 m3) — Abbruch wuerde Wert vernichten. Datenquelle bei fehlendem UBS-FS: Popety.io.
- **Renditeobjekt ⇒ Ertragswert fuehrt, als Band ueber 3 Kapitalisierungssaetze.** Wangen:
  4.75 % = 2.72 / 5.00 % = 2.58 / 5.25 % = 2.46 Mio → Band 2.45–2.70. Die Bewertung endet in einer
  **Kaufpreispruefung**: Angebot 3.10 Mio = impl. Bruttorendite 4.2 % = ~10 % zu hoch
  (< 4.5-%-Schwelle) → «Richtung 2.8 Mio verhandeln».
- **Ausbau lohnt als reine Mietrendite nur, wenn kapitalisierter Uplift > Investition.** Wangen-
  Maisonette: Uplift +10'000/J @ 5 % = +0.20 Mio Wertzuwachs < 0.72 Mio Investition → nicht
  selbsttragend; Hebel ist der **STWE-Einzelverkauf** oder die ohnehin faellige Sanierung.
- **Marktpuls:** SREBI **Q1-2026 0.69** (zweiter starker Anstieg in Folge, weiterhin «moderat»),
  Hotspots GR/Einsiedeln/Stadt ZH/Nidwalden. Referenzzins 1.25 %, aber **Durchschnittssatz 1.31 %
  nahe der Erhoehungsschwelle 1.37 %** → moegliche erste Erhoehung seit 2023 auf 1.50 % in Sicht
  (dann Mietzins-Erhoehungsanspruch).

## Geaenderte Artikel

- `wiki/projektstruktur-deliverables.md` → 3 neue Sektionen (CS-Methodik, Bestand-vs-Abbruch-LB,
  Renditeobjekt-Kaufpreispruefung-LB) + CS-Glossar geschaerft.
- `wiki/ertragswert-dcf.md` → Ertragswert-Band + Kaufpreispruefung + Ausbau-Rendite-Impact.
- `wiki/vergleichswert-hedonisch.md` → Entscheidlogik Bestand halten vs. Abbruch.
- `wiki/investorenmarkt-makro.md` → Marktpuls Q1-2026 (SREBI 0.69, Referenzzins-Trendwende).
- Register: `_INGESTED.md`, `training/curriculum.md`, `wiki/wissensluecken.md`, `CHANGELOG.md`.

## Befund T16 Healthcare

Im Bewertungsordner `IMMO-01/01 BEWERTUNG PROJEKTE` existiert **kein dedizierter Healthcare-
Bewertungsfall** (alle 6 Faelle sind Wohnen/MFH/STWE; «8636 Wald» ist eine Volumen-/Desktopstudie,
keine Pflegeheim-Bewertung). Die Healthcare-Bewertung liegt im eigenen Skill
`healthcare-wirtschaftlichkeit` (2410 WALD/Averecura, Nova Property Fund). → als **T17** erfasst:
Bruecke bauen, sobald ein reales Healthcare-Bewertungs-Deliverable vorliegt (Bring-Schuld Raphael).

## Was als naechstes (Run 7)

- **T18** CS-Sensitivitaets-Logik (Kosten fix vs. 70/30) als wiederverwendbares Rechen-/Tool-Schema
  formalisieren, uebertragbar auf Mietzins/Baukosten/Leerstand (nicht nur Ausnuetzung).
- **T17** Healthcare-Bewertungs-Bruecke zu `healthcare-wirtschaftlichkeit` (sobald Fall vorhanden).
- **T10 laufend:** naechster SREBI (Q2-2026) + ob der Referenzzins auf 1.50 % springt (1.31 % nahe
  Schwelle); Bodenpreis-Strukturdaten (D2).
- Offene Freigaben (Raphael): D4 `.xlsx`-Formeln (Residualwert/Pre-Check-Tool), D8 `_Kennwerte
  Jans.docx`/Healthcare-DOCX. Der Wuest-Kurs und alle lesbaren E-Quellen sind nun eingearbeitet —
  der Loop geht in den **Aktualisierungs-/Vertiefungs-Modus** (Marktpuls, Tool-Freigaben, neue Faelle).

## Datenstand / Vorbehalte

- CS/LB-Kennzahlen sind Stand 2025/2026 (Niederhasli 08.2025, Langnau/Wangen 06.2026) — als
  Methodik-Benchmark belastbar, nicht als aktuelle Marktwerte.
- Marktpuls aus Web (UBS CIO/swissinfo SREBI Q1-2026, BWO Referenzzinssatz), Stand 06.2026.
- Nichts erfunden; alle Saetze/Kennwerte mit Quelle (CS/LB-Seite bzw. Web) hinterlegt.

## Quellen (Web, Marktpuls)

- BWO Referenzzinssatz: https://www.bwo.admin.ch/de/referenzzinssatz (Durchschnittszins 1.31 %, Stand 06.2026)
- UBS Swiss Real Estate Bubble Index Q1-2026 (0.69, «moderat»): UBS CIO / https://www.swissinfo.ch
