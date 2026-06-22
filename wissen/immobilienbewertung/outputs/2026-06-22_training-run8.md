# Training-Run 8 — Immobilienbewertung (2026-06-22)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Der Wuest-Kurs und alle lesbaren
E-Quellen sind seit Run 6 eingearbeitet; der Loop laeuft im **Aktualisierungs-/Vertiefungs-Modus**.
Schwerpunkt dieses Laufs: die in Run 6 als Naechstes empfohlene Aufgabe **T18 — CS-Sensitivitaets-
Generator** (in Run 7 uebersprungen), plus Mietpuls-Refresh und Register-Abgleich.

## Vorbefund: Run 7 war unvollstaendig

Ein **Run 7 lief am 20.06.2026**, editierte `investorenmarkt-makro.md` (Marktpuls 06.2026: SNB
18.06 Leitzins 0.00 %, Referenzzins per 01.06 bei 1.25 % bestaetigt, WP-Prognose 2026) und
`ertragswert-dcf.md` (D3-Diskontsatz-Methodik + Marktkontext 2026) und wurde per `nas-selfcommit`
gesichert — hinterliess aber **keinen Output-Report, keinen CHANGELOG-Eintrag und keine Register-
pflege**. Run 8 hat diese Luecke geschlossen (CHANGELOG-Eintrag Run 7 nachgetragen, curriculum E7
aktualisiert). Inhaltlich war der Run-7-Marktpuls korrekt und ist mit dem heutigen Web-Check
weiterhin aktuell.

## Die 10 Themen dieses Laufs

| # | Thema | Aufgabe | Ziel-Artikel |
|---|---|---|---|
| 1 | CS-Sensitivitaet als **eine** geschlossene Formel: `Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]` | T18 | projektstruktur-deliverables |
| 2 | **Break-Even in geschlossener Form** `δ* = (K0−E0)/(E0·α−K0·β)` + Validierung an Niederhasli | T18 | projektstruktur-deliverables |
| 3 | Werttreiber-Transfer **Mietzins/Marktmiete** (α1/β0 → δ\*=−M0) | T18 | projektstruktur-deliverables |
| 4 | Werttreiber-Transfer **Baukosten** (α0/β1 → γ\*=+M0/(1−M0), umgekehrte/asymmetrische Sensitivitaet) | T18 | projektstruktur-deliverables |
| 5 | Werttreiber-Transfer **Leerstand/Vermarktungsdauer** (+Finanzierungs-Carry) | T18 | projektstruktur-deliverables |
| 6 | **Tornado-Priorisierung** `dM/dδ=(1−M0)(α−β)` + Modellwahl-Regel A/B = RW-`tief`/`hoch` + 3-Zeilen-Rezept | T18 | projektstruktur-deliverables |
| 7 | **Praezisierung** Break-Even Modell B: frueher per Auge ~−13 % → rechnerisch **−11.6 %** (Compounding) | T18 | projektstruktur-deliverables |
| 8 | **Befund effektive Kosten-Elastizitaet β ≈ 0.33** (nicht 0.30 — «70/30» ist gerundet) | T18 | projektstruktur-deliverables |
| 9 | Mietpuls-Refresh: **SMG/Homegate-Mietindex Mai 2026 133.7 (+2.5 % YoY)** > Prognose +0.7 % | T10/E7 | investorenmarkt-makro |
| 10 | Web-Bestaetigung Referenzzins 1.25 % stabil + SREBI Q1-2026 0.69 weiterhin Anker (vs. Run 7 unveraendert) | T10/E7 | investorenmarkt-makro |

## Was gelernt wurde (Kerngehalt)

- **Die ganze CS-Sensitivitaet ist ein Zweizeiler.** Aus den Niederhasli-Ist-Zahlen (E0 = 6'103'450,
  K0 = 5'609'411, Basismarge **M0 = 1 − K0/E0 = 8.09 %**) faellt die komplette Tabelle aus einer
  Formel: `Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]`, mit α = Ertrags-Elastizitaet, β = Kosten-Elastizitaet
  (Anteil variabel). Modell A (fix) = β 0, Modell B = β > 0.
- **Break-Even geschlossen:** `δ* = (K0−E0)/(E0·α−K0·β)`. Bei fixen Kosten (β 0, α 1) reduziert sich
  das zum eleganten **δ\* = −M0** — eine duenne 8-%-Marge vertraegt genau 8 % Gegenwind, dann ist der
  Gewinn weg. Das ist der quantitative Kern der CS-Warnung «wirtschaftlich ambitioniert».
- **Rechnerisch validiert** (Python, gegen die publizierte Tabelle): BE_A = **−8.09 %** bestaetigt;
  BE_B = **−11.64 %** — das **praezisiert** den in Run 6 per Augenmass notierten Wert «~−13 %». Und:
  die effektive Kosten-Elastizitaet ist **β ≈ 0.33** (β = 0.3313 reproduziert die Tabellenwerte
  5'423'588 / 5'237'764 exakt), nicht 0.30 — das «70/30»-Label ist gerundet.
- **Ein Schema, vier Werttreiber.** Ausnuetzung und Mietzins verhalten sich gleich (Ertrag elastisch,
  Kosten fix → BE = −M0). **Baukosten sind der Spiegelfall** (Treiber = Kosten, Ertrag fix → BE =
  +M0/(1−M0) = **+8.8 %**). Weil die Marge **auf den Ertrag** bezogen ist, ist die Sensitivitaet
  **asymmetrisch**: −8.1 % Ertragsrueckgang vs. +8.8 % Baukosten-Anstieg toleriert das gleiche Projekt.
- **Hebelwirkung quantifiziert:** `dMarge/dδ|0 = (1−M0)(α−β)` ≈ **0.92 Prozentpunkte Marge je 1 %
  Treiber** (fixe Kosten), konvex zunehmend — bei duenner Marge kippt schon ein einstelliger
  Treiber-Rueckgang das Vorzeichen.
- **Modellwahl-Regel:** A (Kosten fix) = Worst Case / Kosten schon vergeben; B (teilvariabel) =
  Erwartungswert, solange die Reduktion in der Planung steckt. Das ist genau die `tief`/`hoch`-
  Spannweite, die JANS im RW-Tool ohnehin lebt → der Generator **vereinheitlicht RW-Szenarien und
  CS-Sensitivitaet** zu einem Schema.
- **Mietpuls:** Der SMG/Homegate-Mietindex steht per **Mai 2026 bei 133.7 (+2.5 % YoY)** — die
  realisierte Mietentwicklung **uebertrifft die +0.7-%-Prognose** vom Jahresanfang klar (Gesamtjahr
  2025 +2.3 %; Stadt Luzern +7.2 %). Treiber bleibt die Wohnungsknappheit, gedaempft durch
  schwaechere Zuwanderung. Referenzzins **1.25 % stabil**, SREBI **Q1-2026 0.69** weiter aktuell
  (Q2 noch nicht publiziert) — gegenueber Run 7 unveraendert.

## Geaenderte Artikel

- `wiki/projektstruktur-deliverables.md` → neue Sektion **CS-Sensitivitaets-Generator (T18)**
  (Formel, geschlossene Break-Even-Herleitung, Vier-Treiber-Tabelle, Tornado/Modellwahl, 3-Zeilen-
  Rezept); CS-Glossar um die Generator-Formel ergaenzt; last_updated 2026-06-22.
- `wiki/investorenmarkt-makro.md` → Mietpuls-Update Mai 2026 (Homegate-Index 133.7 / +2.5 % YoY) +
  Web-Bestaetigung Zins/SREBI; last_updated 2026-06-22.
- Register: `wissensluecken.md` (T18 ✓), `curriculum.md` (E7 laufend Run 8 + Run 7 nachgetragen),
  `raw/_INGESTED.md` (T18-Formalisierung + Vertiefungs-Modus-Stand), `CHANGELOG.md` (Run 8 + Run 7
  nachgetragen).

## Methodische Validierung

Die Generator-Formeln wurden mit Python gegen die publizierte Niederhasli-Tabelle gerechnet (M0,
alle sechs Margenfelder, BE_A/BE_B/Baukosten-BE). Alle Felder stimmen ueberein; nichts erfunden —
der Generator ist reine Formalisierung bereits belegter Ist-Zahlen.

## Was als naechstes (Run 9)

- **T17** Healthcare-Bewertungs-Bruecke zu `healthcare-wirtschaftlichkeit` (sobald ein reales
  Pflegeheim-/Klinik-Bewertungs-Deliverable vorliegt — Bring-Schuld Raphael).
- **D4** XLSX-Formeln (Wuest-Pre-Check + JANS-Residualwert-Tool) reverse-engineeren → den
  CS-Sensitivitaets-Generator als wiederverwendbares Tool-Blatt hinterlegen (Freigabe noetig).
- **D8** `_Kennwerte Jans.docx` + Healthcare-DOCX (Freigabe noetig).
- **T10 laufend:** naechste Referenzzins-Publikation **01.09.2026** (ob Durchschnittssatz ueber
  1.37 % steigt), SREBI Q2-2026 (~09.2026), Baupreisindex BFS (Publikation 18.06.2026 erschienen,
  Detailwerte Apr-2026 noch nicht maschinenlesbar greifbar — beim naechsten Lauf nachziehen).
- **D3** vollstaendige JANS-Diskontsatz-Tabelle je Nutzung/Lage/Risiko (real vs. nominal).

## Datenstand / Vorbehalte

- T18-Generator: hergeleitet/validiert aus CS Niederhasli (Stand 08.2025) — als **Methodik**
  belastbar, die Ist-Zahlen sind ein Methodik-Benchmark, kein aktueller Marktwert.
- Mietpuls aus Web (SMG/Homegate-Mietindex 05/2026; BWO Referenzzins; UBS SREBI Q1-2026), Stand
  22.06.2026. Referenzzins/SREBI gegenueber Run 7 (06-20) unveraendert.
- Nichts erfunden; jede Zahl mit Quelle (CS-Seite, Web bzw. eigene Nachrechnung) hinterlegt.

## Quellen (Web, Marktpuls)

- SMG Swiss Marketplace Group — Mietindex 05/2026: https://swissmarketplace.group/de/media-release/mietindex-05-2026-de
- BWO Hypothekarischer Referenzzinssatz (1.25 %, Stand 01.06.2026): https://www.bwo.admin.ch/de/referenzzinssatz
- UBS Swiss Real Estate Bubble Index (Q1-2026 0.69 «moderat»): UBS CIO / https://www.ubs.com
