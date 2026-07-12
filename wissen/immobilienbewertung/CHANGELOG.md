# CHANGELOG — KB Immobilienbewertung

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-07-12 — Training-Run 17: Auffrischungslauf Marktpuls (keine offene Luecke)

- **Reiner Aktualisierungslauf** — alle auto-schliessbaren Luecken sind seit Run 16 zu; verbleibend
  nur D5 (Bring-Schuld Raphael). Keine neue Quelle ingestiert.
- **Bewertungsordner geprueft** (`IMMO-01/01 BEWERTUNG PROJEKTE`): **kein neuer JANS-Bewertungsfall**
  seit Run 6 (juengster Ordner Wangen 8855, 09.06.2026) → keine neue reale Fallauswertung.
- **Marktpuls-Web-Check (12.07.2026):** alle Zins-/Preis-Anker **unveraendert** — SNB-Leitzins 0.00 %
  (Entscheid 19.06.2026; Inflation 0.1 % Feb → 0.6 % Mai, erdoelgetrieben; BIP ~1 % 2026 / ~1.5 % 2027),
  Referenzzins 1.25 % (BWO, naechste Publ. 01.09.2026), SMG/Homegate-Mietindex Mai-2026 133.7 (+2.5 % YoY),
  BFS-Baupreisindex April-2026 100.6 (+1.0 % YoY), UBS SREBI Q1-2026 0.69 «moderat» (Q2 noch nicht publ.),
  WP-Sommerprognose 2026 Wohneigentum ~+3 % (EFH +3.1 % / ETW +2.8 %).
- **Einziger neuer Detailwert:** massgebender **Durchschnittszinssatz per 31.03.2026 = 1.31 %** (von
  1.32 % per 31.12.2025) → driftet weiter weg von der Erhoehungsschwelle 1.37 %; Risiko einer
  Referenzzins-Erhoehung auf 1.50 % sinkt weiter.
- **`wiki/investorenmarkt-makro.md`** (07-12, established): Durchschnittszinssatz-Update in der
  Referenzzins-Marktpuls-Sektion + Run-17-Logeintrag + Frontmatter-Quelle/last_updated 07-10→07-12.
- Register gepflegt: `raw/_INGESTED.md` (Run-17-Stand-Block), `training/curriculum.md` (E7 ✓ 07-12),
  `wiki/wissensluecken.md` (Run-17-Erledigt-Zeile), `outputs/2026-07-12_training-run17.md`.

## 2026-07-10 — Training-Run 16: D8 geschlossen — JANS-Kennwerte-DOCX + Healthcare-Umbaukosten

- **D8 geschlossen** (die letzte auto-schliessbare Daten-Luecke): Wie schon bei den `.xlsx`-Tools
  (Run 15) sind auch die als freigabegebunden angenommenen Kennwerte-**DOCX** TCC-lesbar
  (unzip + XML-Parser). Drei bisher ungelesene JANS-DOCX aus `IMMO-06 Kennwerte` ingestiert.
  10 Themen dieses Laufs: (1) aGF/GF-Umrechnungsfaktor, (2) JANS-Wohn-Erstellungskosten-Kennwert
  EFH/ZFH indexiert, (3) BKP2→BKP1-5-Herleitung + TG-Ansatz, (4) Thalwil-Bohlweg-Rechenbeispiel +
  HNF-Faktor, (5) Healthcare-Spitalumbau-Kostenband CHF/m2 NF, (6) realer Fall Psychiatrie-Teilumbau,
  (7) realer Fall Kispi ZH Paediatrie, (8) `_Kennwerte_Links.docx` Quellenverzeichnis, (9) Emilienheim-
  Gap-Bestaetigung, (10) Marktpuls-Web-Check.
- **`wiki/flaechendefinitionen-sia.md`** (07-10, established): neuer **JANS-Umrechnungsfaktor aGF ↔ GF**
  (Altbau **0.8** / Neubau **0.9**) in der aGF/BGF-Abgrenzungssektion — Faustwert, um aus der
  baurechtlich anrechenbaren Flaeche die geometrische GF fuer Volumen-/Kostenrechnung abzuleiten.
  Frontmatter last_updated 07-06→07-10, Quelle `_Kennwerte Jans.docx` ergaenzt.
- **`wiki/realwert-sachwert.md`** (07-10, established): zwei neue Sektionen. (a) **«JANS-Erstellungskosten-
  Kennwert Wohnen (EFH/ZFH)»** — belegte indexierte Herleitung Median 2020 2'900 → 2025 **3'365 CHF/m2
  GF BKP 2** (Index 116) → BKP2=75 % → **4'485 CHF/m2 GF BKP 1-5**; TG **42'000 CHF/SP**; Worked example
  Thalwil Bohlweg 1 (950 m2 GF → 4.6 Mio inkl. TG; **HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5**). Aktueller
  datierter JANS-Ansatzwert, ergaenzt die WP-Benchmarks (Stand 2021-2023). (b) **«Healthcare-Umbau-
  Kostenband (JANS Spektrumskosten, CHF/m2 NF)»** — 6-stufiges Spitalumbau-Band (Buero→Praxis 2'000-3'000
  bis OP-Station ab 10'000) + 2 reale JANS-Einordnungsfaelle (Psychiatrie-Teilumbau ~1'100/m2 HNF →
  Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412/m2 NF). Trennt Umbau (NF) sauber vom Neubau (GF).
  Frontmatter + Offen-Log aktualisiert.
- **`wiki/datenquellen-registry.md`** (07-10, established): `_Kennwerte Jans.docx` + Healthcare-Umbaukosten
  von «offen/DOCX» auf **eingearbeitet**; neue Zeile **`_Kennwerte_Links.docx`** (JANS-Quellen-Linkliste,
  in die Nutzungsregel gespiegelt). Healthcare-Zeile auf «Neubau- UND Umbaukennwerte belegt».
- **`wiki/investorenmarkt-makro.md`** (07-10, established): **Marktpuls-Web-Check Run 16** — alle Anker
  unveraendert (SNB-Leitzins 0.00 %, Referenzzins 1.25 %, SARON 0.78 %, Festhypothek 5 J ab 1.11 %/10 J
  ab 1.41 %, Mietindex Mai-2026 133.7 +2.5 % YoY, Baupreisindex April-2026 100.6). Kein neuer
  Publikationstermin seit Run 15.
- **Register:** `raw/_INGESTED.md` (3 DOCX-Zeilen + Stand-Run-16-Block), `wiki/wissensluecken.md`
  (D8 durchgestrichen/erledigt + Emilienheim-Gap bestaetigt nicht verfuegbar; nur noch D5 offen),
  `training/curriculum.md` (E5 ✓ vollstaendig), `wiki/INDEX.md` (realwert-sachwert + flaechendefinitionen-sia).
  Lern-Report `outputs/2026-07-10_training-run16.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen, **D4 und D8** eingearbeitet.
  Offen nur noch **D5** (buerospezifische Margen-/Finanzierungspraxis — echte Bring-Schuld Raphael,
  nicht durch den Loop schliessbar) + laufender Marktpuls (naechste Publikationen 01.09.2026).

## 2026-07-08 — Training-Run 15: D4 geschlossen — Excel-Residualwert-Tools reverse-engineered

- **D4 geschlossen** (die letzte hoch-priorisierte Daten-/Formel-Luecke): Die vier Residualwert-
  Excel-Tools (`05 Residualwert/Exel Tabelle/{wp,jans}/`, je Pre-Check + «Residualwert Berechnung»)
  wurden per **unzip + XML-Zellparser** auf Zellebene ausgelesen. Der SharePoint-Pfad ist entgegen
  der Freigabe-Annahme TCC-lesbar (keine Freigabe noetig). 10 Themen dieses Laufs: (1-2) WP
  Pre-Check-Engine + Residualwert-Kette, (3) HNF-Herleitung ohne Grundrisse, (4) Betriebskosten-
  Parameterset, (5) Diskont-Empfehlungen, (6) Gewerbe-5.5-%-Regel, (7) JANS-Kalibrierungs-Delta,
  (8) Sensitivitaets-Formel = CS-Break-Even-Generator, (9) JANS- vs WP-Vergleich, (10) Marktpuls.
- **`wiki/residualwertmethode.md`** (07-08, established): neue Sektion **«Excel-Tool Formel-Logik
  (D4 — reverse-engineered aus den Zellen)»** — zwei Tool-Familien dokumentiert. Einblatt-Tool
  «Residualwert Berechnung»: JANS = **formel- und default-identisch mit WP** (nur Kopfzelle). Belegte
  Rechenkette Soll-Ertrag→Nettoertrag→Ertragswert(=Nettoertrag/Diskont)→Residualwert−Abzuege→Wert
  n. Fertigstellung/Brutto-/Nettorendite; Defaults Diskont 2.5 %/Risiko 7 %/Betriebsk. 5 %/Leerstand
  1 %/IH 13/IS 21 CHF-m2HNF/Zeitwert 2 %×3 J; **Gewerbe-Miete = 5.5 % der Erstellungskosten**.
  Pre-Check-Tool: **«AZ-HNF Tool»-Engine leitet HNF ohne Grundrisse aus einer Planungsziffer ab**
  (HNF = GF − VF − KF − FF − NNF; Effizienz-Ampel KF/GF 0.18/0.23/0.30; Kompaktheit 1-5; Skalen-/
  Kostenniveau-Faktoren 0.9-2.1; Hochhausfaktor 1.1). **JANS-Kalibrierung = genau 2 Zellen** (Risiko
  7 %→12 %, Diskont 2.4 %→2.45 %). Sensitivitaets-Zellformel bestaetigt den T18-Break-Even-Generator.
  Frontmatter last_updated 06-10→07-08; «Offen»/Tool-Bullet aktualisiert (D4 ✓).
- **`wiki/ertragswert-dcf.md`** (07-08, established): neue Diskont-/Risiko-Kalibrierungs-Notiz (D4
  vollstaendig geschlossen) — JANS-Pre-Check-Defaults 12 %/2.45 % vs WP 7 %/2.4 % vs gelebte Praxis
  8 %/2.70 %; Ertragswert = Nettoertrag/Diskontierung aus Zellen bestaetigt. last_updated 07-06→07-08.
- **`wiki/investorenmarkt-makro.md`** (07-08, established): **Marktpuls-Web-Check Run 15** —
  SNB-Leitzins 0.00 % + Referenzzins 1.25 % unveraendert (BWO-Bestaetigung 02.03.2026, erwartet bis
  Ende 2026 / keine Aenderung vor Mitte 2027). **Neu: BFS-Baupreisindex auf Basis Okt-2025 = 100
  umgestellt, erster Stand April 2026 = 100.6 (+1.0 % YoY)** → Bauteuerung moderat. last_updated
  07-04→07-08; Baupreisindex-Zeile + Marktpuls-Log + Quellen ergaenzt.
- **Register:** `raw/_INGESTED.md` (4 XLSX offen→eingearbeitet + Stand-Run-15-Block), `wiki/
  wissensluecken.md` (D4 durchgestrichen/erledigt + Erledigt-Eintrag), `training/curriculum.md`
  (E2 ✓), `wiki/INDEX.md` (residualwertmethode-Zeile). Lern-Report `outputs/2026-07-08_training-run15.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen **und D4** eingearbeitet.
  Offen nur noch: D5 (buerospezifische Margen-/Finanzierungspraxis, Bring-Schuld Raphael), D8
  (JANS-Kennwerte-DOCX, Freigabe), Emilienheim-Flaechenkennwerte, laufender Marktpuls.

## 2026-07-06 — Training-Run 14: T19 geschlossen — JANS-Healthcare-Kennwert-Raster befuellt

- **T19 geschlossen** (die letzte offene T-Aufgabe). Drei bisher ungelesene Quellen aus der
  Healthcare-/WALD-Bibliothek ingestiert und synthetisiert: JANS' eigenes gefuelltes **8-Objekt-
  Referenzblatt** «Kennwerte Altersheime Gesundheitszentren» (8 reale CH-Heime 2011-2025), die
  **WALD-Tertianum-Baumassenberechnung** (Richtprojekt, V1-V7) und die **SECO/USI-Effizienzstudie
  Crivelli/Filippini/Lunati 2001** (835 CH-Pflegeheime).
- **`wiki/projektstruktur-deliverables.md`** (07-06, established): T19-Raster-Bullet von
  «Arbeitsstand/leer» auf **befuellt** — Wirtschaftlichkeitsfaktoren-Tabelle (Bettzahl 28-123,
  **GF/Bett 90-135 m2** sinkend mit Groesse, **NF/Bett 51-71 m2**, **Bauvolumen/HNF 4.3-9.7**), die
  3 Fragestellungen belegt beantwortet (**optimale Betriebsgroesse 70-80 Betten**, SE = 1 bei 79;
  Schwelle ~50; normale Groesse Median 52/Ø 62), Referenzobjekte identifiziert (Wald = Averecura
  28 PZ; Szenarios = Baumassen V1-V7).
- **`wiki/realwert-sachwert.md`** (07-06, established): Healthcare-Kostenband von 1 (Herosé) auf
  **8 reale Objekte** verbreitert — neue Tabelle mit **BKP 2 = 2'623-4'250 CHF/m2 GF (indexiert
  3'042-4'485), 826-1'420 CHF/m3 GV, 273'000-780'000 CHF/PZ**; Healthcare-Neubauansatz auf
  **~3'850-4'500 CHF/m2 GF** praezisiert.
- **`wiki/flaechendefinitionen-sia.md`** (07-06, established): neue Sektion **JANS-Flaechenfaktoren
  Healthcare** — HNF/GF **~0.43-0.61 (Ø ~0.55)**, GF/Baumasse ~0.29-0.33, Bauvolumen/HNF 4.3-9.7;
  belegt aus dem 8-Objekt-Set, kontrastiert mit Wohnen (0.60-0.75).
- **`wiki/ertragswert-dcf.md`** (07-06, established): Betriebsgroessen-/Skaleneffizienz-Befund
  (Crivelli 2001) in die Healthcare-Ertragsseite eingewoben (Optimum 70-80 Betten, ~50 % zu klein →
  Tragfaehigkeitsrisiko bei knappen Margen).
- **Register:** `_INGESTED.md` (3 neue Quellen + Stand Run 14), `wissensluecken.md` (T19 → Erledigt,
  **keine offenen T-Aufgaben mehr**), `curriculum.md` (E10 ✓ + E7-Marktpuls 07-06), `INDEX.md`
  (4 Artikelbeschreibungen). Marktpuls-Web-Check: SNB 0.00 % / Referenzzins 1.25 % **unveraendert**
  (naechste Publikationstermine erst 09.2026).
- **Ausblick:** Loop weiter im Aktualisierungs-/Vertiefungs-Modus. Naechste Kandidaten bei Freigabe:
  D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), Emilienheim-Flaechenkennwerte; sonst Marktpuls.

## 2026-07-04 — Training-Run 13: Healthcare-Vertiefung — T17 vollstaendig geschlossen (Investoren-Markt-Seite)

- **T17 vollstaendig geschlossen** (Kosten- UND Investoren-Markt-Seite). Grosser Healthcare-
  Vertiefungslauf: sieben bisher ungelesene oeffentliche/Dritt-Quellen aus der Healthcare-Bibliothek
  + CRB-Marktpreise + Web, parallel via vier Lese-Agenten distilliert, zentral synthetisiert.
- **`wiki/ertragswert-dcf.md`** (07-04, established): (1) neue Sektion **Healthcare-Investoren-Markt-
  Diskont** aus **SenioResidenz AG GB 2017** (reiner Healthcare-Immobilien-Investor, WP-DCF): Marktwert
  21.75 Mio / Soll-Miete 1.145 Mio → **impliziter Brutto-Yield ~5.3 %** (Healthcare ~2 Pp ueber Wohnbau),
  Belehnung 40-60 %; angewandter Diskontsatz im Bericht nicht beziffert (unsicher). (2) Neue Sektion
  **Pflegeplatzkosten-Struktur** (BFS «Indikatoren Pflegeheime 2019-2021»: 10'035 CHF/Mt, Ertrag
  Pension 55 %/Pflege 43 %, Belegung 90 %, 60 % defizitaer; NZZ/Curaviva: Pension 4'124/KVG-Pflege
  4'401/Betreuung 1'529 CHF/Mt — nur Hotellerie speist die Liegenschaft). (3) **D3-Healthcare-Zeile**
  von *emerging* auf **belegt** gehoben. (4) **Gewerbe-Feinabstufung** je Mietersegment (Segment-
  Reihenfolge belegt aus WP-2026-Prognose Buero +0.5 %/Detailhandel −1.5 %) — D3-Rest praezisiert.
- **`wiki/investorenmarkt-makro.md`** (07-04, established): neue Sektion **Healthcare-Immobiliennachfrage
  (Obsan 03/2022)** — Pflegebett-Bedarf +69.2 %/**+54'335 Betten bis 2040** (~+921 Heime), 80+ +88 %,
  strukturelle Angebotsluecke (+600 Ist vs. +2'587 Soll Betten/J), Kosten-BIP-Anteil verdoppelt
  (3.4-4.8 % bis 2045/50). Marktpuls-Web-Check 07.2026: **alle Zins-Anker unveraendert**; neu WP-2026-
  Segment-Prognose Geschaeftsflaechen.
- **`wiki/realwert-sachwert.md`** (07-04, established): neue Sektion **Healthcare-Kostenband erweitert
  auf Spital** — CRB werk-material (Frauenklinik KSL 3'426 / USZ-Mehrzweckbau 3'767 CHF/m2 GF +
  BKP-Aufgliederung USZ, Preisstand 2020.04 Ostschweiz). Healthcare-Neubau-Kostenband **~3'400-3'850+
  CHF/m2 GF** (Pflegeheim unten, Spital oben).
- **`wiki/projektstruktur-deliverables.md`** (07-04): Healthcare-Bruecke auf **T17 geschlossen**
  erweitert (Investoren-Marktwert SenioResidenz, Operating-Benchmarks BFS, **JANS-Kennwert-Raster 2411**
  als Arbeitsstand + realer ZH-Fall Emilienheim Kilchberg).
- **Register:** `raw/_INGESTED.md` (7 neue Quellen-Zeilen + Stand Run 13), `curriculum.md` (E9
  Healthcare vollstaendig, E7 Marktpuls), `wissensluecken.md` (T17 → Erledigt; neue Aufgabe **T19**
  JANS-Kennwert-Raster befuellen), `INDEX.md` (4 Deskriptoren). Output `outputs/2026-07-04_training-run13.md`.

## 2026-07-02 — Training-Run 12: Healthcare-Bewertungsbruecke (T17 belegt) + Health-Check-Cleanup

- **T17 (Healthcare-Bewertungsfall) auf der Kosten-/Annuitaetsseite geschlossen** ueber die bisher
  ungelesene, oeffentliche Healthcare-Bibliothek (`IMMO-06/Healthcare/HEIM`; nicht D8-freigabe-
  gebunden, da Dritt-/oeffentliche Dokumente): der **Baukredit-Bericht Neubau Pflegeheim Herosé
  Aarau** (Stadtrat Aarau, Botschaft GV 2018-2021/285, 13.12.2021, 116 Zimmer, 55.8 Mio).
- **`wiki/realwert-sachwert.md`** (07-02, established): neue Sektion **Healthcare-Neubau-
  Erstellungskosten-Benchmark** — BKP-Zusammenstellung (55.8 Mio), Kennwerte BKP 2 = **1'105 CHF/m3
  GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer**, **Vier-Heim-Vergleich** (Herosé/Suhrhard/Blumenrain
  Zollikon/Obere Muehle Lenzburg: 337-418k CHF/Zimmer, Taxe 150-180). Bestaetigt Healthcare-Zuschlag
  +20-25 % (~3'850-4'000 CHF/m2 GF).
- **`wiki/ertragswert-dcf.md`** (07-02, established): neue Sektion **Healthcare-Ertragsmodell — realer
  CH-Fall Herosé** — kostenbasiertes Taxensystem, **Annuitaets-Finanzierung** (lineare Abschreibung
  **33 J** nach CURAVIVA Handbuch Anlagebuchhaltung V2019, kalk. Zins = **BWO-Referenzzins 1.25 %**),
  KVG-Abzug 6.812 Mio, Annuitaet/Bett/Tag 43.75+6.08, **Hotellerie-Taxe 120→153 CHF/Tag**,
  Spezialfinanzierung ueber Investitionsfonds, KoRe-Kostentraeger (ARTISET). Healthcare-Diskontzeile
  der D3-Tabelle: Kosten-/Annuitaetsseite **belegt** (statt *emerging*/Annahme), Investoren-Markt-
  Diskont bleibt offen.
- **`wiki/projektstruktur-deliverables.md`** (07-02): neue Sektion **Healthcare-Bewertung — Bruecke
  zum Skill `healthcare-wirtschaftlichkeit`** (drei durable Regeln: Erstellungskosten +20-25 %,
  kostenbasierter Ertragswert via Annuitaet, Deliverable ueber Schwester-Skill).
- **Run-11-Prozessleck nachgetragen** (Health-Check-Finding E): `ertragswert-dcf.md` `last_updated`
  30.06.→07-02, Run-11-Eintrag (10-j Eidgenoss 0.24-0.40 %) in der Offen-Sektion protokolliert,
  Output `outputs/2026-06-30_training-run11.md` angelegt.
- **Health-Check-Findings B/F bereinigt:** 2 falsche `[[Backlinks]]` → Klartext
  (`[[healthcare-wirtschaftlichkeit]]`→Skill in `zh-wald-8636`; `[[outputs/…]]`→Report in
  `sz-wangen-8854`); Frontmatter vereinheitlicht (`zh-thalwil` `plz: 8136`→**8800**; `kanton:`
  Zuerich→**Zürich** in langnau/zollikon); INDEX `nutzungskonzepte` *emerging*→**established**.
- **Marktpuls (Web, 02.07.):** alle Anker unveraendert — SNB 0.00 %, Referenzzins 1.25 % (naechste
  Publ. 01.09.2026), Mietindex Mai-2026 133.7 (+2.5 % YoY), 10-j Eidgenoss ~0.35 %. → [[investorenmarkt-makro]].
- Register: `raw/_INGESTED.md` (2 neue Quellen + Stand Run 12), `curriculum.md` (E9 Healthcare ✓,
  E7 Marktpuls), `wissensluecken.md` (T17 reframed + Erledigt), `datenquellen-registry.md` (Healthcare-
  Zeile), `INDEX.md` (Deskriptoren). Output `outputs/2026-07-02_training-run12.md`.

## 2026-06-30 — Training-Run 11: Marktpuls 10-j Eidgenoss (nachtraeglich protokolliert)

- **`wiki/ertragswert-dcf.md`**: risikofreies Basisniveau der JANS-Diskontsatz-Tabelle (D3) auf
  **10-j Eidgenoss 0.24-0.40 % (Juni 2026, Ende Juni sinkend auf 0.24 %)** aktualisiert (Web,
  tradingeconomics/SNB-Datenportal). **Prozessleck:** Run 11 fuehrte `last_updated`/CHANGELOG/Output
  nicht nach (vom Health-Check 01.07. gemeldet, Finding E) — **nachtraeglich mit Run 12 protokolliert**
  (dieser Eintrag + `outputs/2026-06-30_training-run11.md`). Kein weiterer inhaltlicher Edit.

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)

- Audit A-G ueber 26 Wiki-Artikel + Outputs + `_INGESTED`/`training`. Befund: gesunde, sehr gut
  belegte KB (kein ß, keine Deko-Symbole, Quellenpflicht + Stand durchgaengig, keine Orphans,
  INDEX vollstaendig). 3 echte Findings: (1) **Run 11 vom 30.06. hat `ertragswert-dcf.md`
  editiert, aber `last_updated`/CHANGELOG/Output nicht nachgefuehrt** (Prozessleck wie Run 7);
  (2) **2 formal falsche `[[Backlinks]]`** — `[[healthcare-wirtschaftlichkeit]]` (Skill, in
  `zh-wald-8636`) + `[[outputs/2026-06-09_...]]` (in `sz-wangen-8854`); (3) minor Frontmatter-
  Inkonsistenzen (`kanton:` Zuerich/Zürich, Thalwil `plz: 8136` statt 8800; `nutzungskonzepte`
  INDEX *emerging* vs. Frontmatter *established*). Keine Aktionen ausgefuehrt (Phase 2 offen).
  Report: `outputs/2026-07-01_health-check.md`.

## 2026-06-28 — Training-Run 10: drei ungelesene Quellen ingestiert (D3-Wohnbau-Faustregel belegt + SIA 416 normverankert)

- **`wiki/ertragswert-dcf.md`** (06-28, established): zwei neue belegte Sektionen aus Raphaels
  datierter Notiz `231231_Residualwert und Diskontierung.docx` (31.12.2023) — **JANS-Diskontsatz-
  Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (schliesst die Wohnbau-Faustregel
  von D3), **Betriebskosten-Pauschale 2.5 %=5x0.5 %** (Verwaltung/Versicherung/Versorgung,
  Instandhaltung, Instandsetzung, Leerstand, Liegenschaftssteuer), belegte **Rechenkaskade**
  Residualwert←Ertragswert←Nettoertrag←Mietertrag (worked example Einsiedeln 287 CHF/m2 × 300 m2)
  + **Abzinsungsformel** W0=Wn/(1+i)^N. Aus `Disskontierung.docx` neue Sektion **Healthcare-
  Diskontsatz-Anker** (Pflege 4-8 %, JANS-Arbeitsnotiz, sauber als nominal/europaeisch eingeordnet)
  → Healthcare-Zeile der konsolidierten Tabelle von *speculative* auf *emerging*.
- **`wiki/flaechendefinitionen-sia.md`** (06-28, established): **vollstaendig auf die kanonische
  SIA-416:2003-Norm verankert** (Quelle: Norm-PDF S. 6-15) — Hierarchie GSF/GF/NGF/NF/HNF/NNF/VF/FF/
  KF/AGF mit Codier-Ziffern + normgetreue Definitionen, Wohnungsbau-Beispiele NNF/VF/FF, Volumen
  GV/NGV/KV/AKV (GV ohne Zu-/Abzuege, Bezug CHF/m3-Kennwerte), Miet-/STWE-Flaechen FSN/FGN (Bruecke
  `stockwerkeigentum`) und die wichtige **Abgrenzung Norm 0.1**: aGF/BGF (Ausnuetzung), Baumassen-
  Volumen und Energiebezugsflaeche sind **keine** SIA-416-Begriffe, sondern baurechtlich/energetisch.
- Kursnotizen IMG_7064-67 ausgewertet (Anfangsrendite=Mietertrag/Kaufpreis, 30 % Landanteil /
  8 % Risikomarge, WP-Pre-Check-Tool-Layout als D4-Teilbeleg ohne Zahlen).
- Register: `raw/_INGESTED.md` (drei Quellen → eingearbeitet, Stand Run 10), `curriculum.md`
  (neu E8 ✓), `wissensluecken.md` (D3 → «niedrig», Erledigt-Eintrag), `INDEX.md` (Deskriptoren),
  Output `outputs/2026-06-28_training-run10.md`. Marktpuls unveraendert seit Run 9 (06-26).

## 2026-06-26 — Training-Run 9: JANS-Diskontsatz-Tabelle konsolidiert (D3 T-Teil) + Marktpuls

- **`wiki/ertragswert-dcf.md`** (06-26, → established): neue Sektion **JANS-Diskontsatz-Tabelle (D3
  konsolidiert)** — alle bisher verstreuten Diskontsatz-Anker (WP S. 52/55, Risikozuschlagsmodell
  S. 54, JANS-Konvention 2.50/2.70 %) zu **einer** additiven Bottom-up-Herleitung zusammengefuehrt:
  risikofreier Basiszins **10-j Eidgenoss ~0.35 % (Juni 2026, Web)** + Illiquiditaets-/Lage-/
  Objektzuschlag, gegen den WP-top-down-Satz plausibilisiert (beide Wege → gleiche Bandbreite).
  Konsolidierte Tabelle je Nutzung/Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %, Healthcare
  ~3.0-4.0 % *Annahme*) + **Real-vs-nominal-Bruecke (Fisher**, Langfrist-Teuerung ~1.0 % → nominal
  ~3.1-4.3 % Wohnen) + Sensitivitaets-Leitplanke −20 Bps → +16 %. Belegte Zeilen abschliessend; die
  JANS-Faustregeln (Illiquiditaets-/Objektzuschlag, Gewerbe-Feinabstufung, Healthcare-Zuschlag)
  bleiben als *Annahme* markierte Bring-Schuld (Healthcare → T17).
- **`wiki/investorenmarkt-makro.md`** (06-26): Marktpuls-Refresh — **Rendite 10-j Bundesobligation
  ~0.32-0.40 % (Juni 2026)** neu als risikofreies Basisniveau erfasst; Web-Check bestaetigt
  **SNB-Leitzins 0.00 % (19.06) + Referenzzins 1.25 %** unveraendert gegenueber Run 8.
- Register: `wissensluecken.md` (D3 T-Teil ✓, D3 von «D/T hoch» auf «D mittel» zurueckgestuft),
  `curriculum.md` (E7 laufend Run 9), `raw/_INGESTED.md` (Stand Run 9), Output
  `outputs/2026-06-26_training-run9.md`.

## 2026-06-22 — Training-Run 8: CS-Sensitivitaets-Generator formalisiert (T18) + Mietpuls 05.2026

- **`wiki/projektstruktur-deliverables.md`** (06-22, → established): neue Sektion **CS-Sensitivitaets-
  Generator (T18)** — die Niederhasli-Zwei-Modell-Tabelle als **ein verallgemeinertes Rechen-Schema**
  formalisiert: `Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]` mit Ertrags-/Kosten-Elastizitaet α/β und
  **geschlossener Break-Even-Formel `δ* = (K0−E0)/(E0·α−K0·β)`**. Uebertragen auf vier Werttreiber
  (Ausnuetzung/Mietzins α1β0 → δ\*=−M0; Leerstand; Baukosten α0β1 → γ\*=+M0/(1−M0)). Aus den
  Niederhasli-Ist-Zahlen rechnerisch validiert: **BE_A = −8.1 % (= −M0) bestaetigt; BE_B auf −11.6 %
  praezisiert** (frueher per Auge ~−13 %); **effektive Kosten-Elastizitaet β ≈ 0.33** (nicht 0.30,
  «70/30» ist gerundet). Tornado-Sensitivitaet `dM/dδ=(1−M0)(α−β)`, Modellwahl-Regel A/B =
  RW-`tief`/`hoch`, 3-Zeilen-Rezept fuer neues CS. CS-Glossar um die Generator-Formel ergaenzt.
- **`wiki/investorenmarkt-makro.md`** (06-22): Mietpuls-Refresh — **SMG/Homegate-Mietindex Mai 2026
  133.7 (+2.5 % YoY)**, realisierte Mieten ueber der +0.7-%-Prognose; Gesamtjahr 2025 +2.3 %; Hotspot
  Stadt Luzern +7.2 %. Web-Check bestaetigt Referenzzins 1.25 % stabil + SREBI Q1-2026 0.69 als
  aktuellen Anker (gegenueber Run 7 unveraendert).
- Register: `wissensluecken.md` (T18 ✓), `curriculum.md` (E7 laufend Run 8; Run 7 nachgetragen),
  `_INGESTED.md` (T18-Formalisierung vermerkt). Report: `outputs/2026-06-22_training-run8.md`.

## 2026-06-20 — Training-Run 7: Marktpuls 06.2026 + Diskontsatz-Methodik (T10/D3) [Report nachgetragen]

Run 7 lief am 20.06.2026, editierte zwei Artikel und wurde per `nas-selfcommit` gesichert, hinterliess
aber **keinen Output-Report und keinen CHANGELOG-Eintrag** — hier nachgetragen (Run 8):

- **`wiki/investorenmarkt-makro.md`** (06-20): Marktpuls 06.2026 — **SNB-Lagebeurteilung 18.06.2026
  Leitzins 0.00 % gehalten** (Inflation 0.6 % Mai, erdoelgetrieben/Kerninflation verhalten, BIP
  ~1 %/~1.5 %); **Referenzzins per 01.06.2026 bei 1.25 % bestaetigt** — der befuerchtete Sprung auf
  1.50 % ist NICHT eingetreten (Durchschnittssatz unter Schwelle 1.37 %); **WP-Prognose 2026**
  (Transaktionspreise EW +2.8 % / EFH +3.1 %, Bauinvestitionen +5.3 %); SREBI Q2-2026 noch nicht publiziert.
- **`wiki/ertragswert-dcf.md`** (06-20, D3-Teilantwort): **Diskontsatz-Methodik der Bewertungshaeuser**
  (gemeindespezifisch aus Transaktionen + Plausibilisierung ueber 10-j Bundesobligation, IAZI/WP) +
  **Marktkontext 2026** (SNB 0 % / Referenzzins 1.25 % → WP-2023-Diskontanker bleiben plausibel, eher
  unteres Band). Offen bleibt die vollstaendige JANS-Tabelle je Nutzung/Lage/Risiko (Bring-Schuld D3).

## 2026-06-18 — Training-Run 6: CS- und LB-Deliverable-Methodik aus realen Faellen (T15/T16/T10)

- **`wiki/projektstruktur-deliverables.md`** (06-18): drei neue Methodik-Sektionen aus realen
  Deliverables — **CS Controlling & Sensitivitaet** (Niederhasli, 250811): Controlling-Factsheet-
  Felderschema (Plausibilitaets-Check einer Fremdstudie) + **Sensitivitaetsanalyse mit Zwei-
  Kostenmodell-Logik** (A fix / B 70/30, Δ Ausnuetzung 0/−10/−20 % → Marge + Break-Even ~−8 %/−13 %)
  + Fazit/Empfehlung; **«Bestand halten vs. Abbruch+Neubau»** (Langnau 3338): Vergleichswert-Bestand
  ↔ Residual-Landwert, BMZ-Deckelung; **«Renditeobjekt-Kaufpreispruefung»** (Wangen): Ertragswert-
  Band + impl. Bruttorendite-Pruefung. CS-Kuerzel-Glossar geschaerft.
- **`wiki/ertragswert-dcf.md`** (06-18): **Ertragswert-Band ueber 3 Kapitalisierungssaetze**
  (4.75/5.00/5.25 %) + **Kaufpreispruefung** (Angebot → impl. Bruttorendite vs. 4.5-%-Schwelle →
  Verhandlungsrichtung) + **Ausbau-/Umnutzungs-Rendite-Impact** (Mietuplift kapitalisiert vs.
  Investition; STWE-Einzelverkauf als Hebel; Grob-KV Umbau = Neubau-Median × Umbau-Anteil + SIA-102-
  Honorar-Grobansatz) — alles aus LB Wangen Bahnhofstr. 27.
- **`wiki/vergleichswert-hedonisch.md`** (06-18): **Entscheidlogik Bestand halten vs. Abbruch**
  (A Bestandeswert hedonisch ↔ B Entwicklungs-Landwert residual; volumengedeckelte BMZ-Zone),
  belegt aus LB Langnau; Datenquelle Popety.io bei fehlendem UBS-FS.
- **`wiki/investorenmarkt-makro.md`** (06-18): **Marktpuls-Update** — UBS SREBI **Q1-2026 0.69**
  «moderat» (Hotspots GR/Einsiedeln/Stadt ZH/Nidwalden, loest Q4-25-Anker 0.48 ab); Referenzzins-
  **Durchschnittssatz 1.31 % nahe Erhoehungsschwelle 1.37 %** → moegliche Trendwende auf 1.50 %.
- Register gepflegt: `_INGESTED.md` (6 Faelle ausgewertet, E6 vollstaendig), `curriculum.md`
  (E6 ✓ vollstaendig, E7 laufend), `wissensluecken.md` (T15 ✓, T16 teilweise ✓; neu T17 Healthcare-
  Bruecke, T18 CS-Generator). Befund: kein Healthcare-Bewertungsfall im Bewertungsordner.
- Report: `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training-Run 5: reale JANS-Faelle quantitativ ausgewertet (T9b/T7b/T10/D4)

- **`wiki/projektstruktur-deliverables.md`** (→ established, 06-16): **Quantitative Kennwert-
  Benchmark-Tabelle** aus 3 ausgewerteten Faellen (Thalwil 9568 LB+MA, Ebmatingen 3932 LB,
  Wangen 2622) — HNF-Faktor (57-80 %), ME/STWE-Kaufpreis-Quantil je Lage, Erstellungskosten
  (CHF/HNF, CHF/m3), Residualer Landwert, ROE-Befund; dazu **MA-Wertanker-Synthese** (4 Boden-
  wert-Anker Residualwert/UBS-FS-Mittel/UBS-FS-Top → Marktwert + Entwicklergewinn-Gegenrechnung).
- **`wiki/ertragswert-dcf.md`** (06-16): **JANS-Bewertungskonvention** belegt — Kapitalisierung
  Mietobjekt 2.50 %/40 J, Diskontierung Residualwert 2.70 %, Risiko/Gewinn 8 %, Baukosten-
  abschlag −5 %, Bruttoanfangsrendite-Schwelle 4.5 % (Geschaeft 5.5 %), ROE-Ampel; **Residual-
  wert-Tool-Struktur** reverse-engineered aus MA Thalwil S. 9 (adressiert D4 teilweise).
- **`wiki/vergleichswert-hedonisch.md`** (06-16): **T7b** Zu-/Abschlagslogik Median → Objekt
  als 6-Schritt-Checkliste + JANS-Quantil-Praxisanker (Premium Q90 / Schnitt Q50-60, Bauland
  nach Lageklasse Schlecht/Mittel/Top).
- **`wiki/investorenmarkt-makro.md`** (06-16): **Marktpuls 06.2026** — Angebotsmieten 2026
  +0.7 % (nach +6 % 2024), Bestandesmieten −0.8 %, UBS SREBI Q4-2025 0.48 «moderat» (staerkster
  Quartalsanstieg seit 1989), EFH +4.1 % YoY, BFS Baupreisindex Okt-2025 116.2.
- **`wiki/realwert-sachwert.md`** (→ established, 06-16): Baupreisindex-2025-Update + JANS-
  Praxisbeleg (WP-S.37-Kennwerttabelle = gelebter JANS-Kostenkennwert, MA Thalwil 6'000/HNF).
- Register gepflegt: `_INGESTED.md` (3 Faelle ausgewertet), `curriculum.md` (E6 weitgehend,
  E7 fortgeschritten), `wissensluecken.md` (T9b/T7b ✓, T10/D4 teilweise; neu T15/T16).
- Report: `outputs/2026-06-16_training-run5.md`.

## 2026-06-15 — UBS-FS Langnau am Albis 8135 (12/2025) kompiliert

- **Neu `wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md`** — UBS Real Estate Local
  Fact Sheet Langnau am Albis (ZH), 12/2025, Daten 2025-Q3. EFH-Median 12'549 CHF/m²
  (~1.27x Kt. ZH), EW-Median 11'358, Mietmedian 279 CHF/m²/Jahr, Bauland Top 4'451 CHF/m².
  MS Zimmerberg — Faktenbasis fuer **Fall 2621 Giebelweg 12** (FS liegt auch im Studienordner).
- README + INDEX ergaenzt; Zaehler auf **11 kompilierte UBS-FS**.
- Quelldatei in `IMMO - 02 UBSFS/` von doppelter Endung `.pdf.pdf` auf `.pdf` korrigiert.

## 2026-06-15 — Gutachten-Produkt «besser als WP» (Phase 1): Standard + Qualitaetsprofil + Aufnahmeblatt

- **Entscheid Raphael (2 Frage-Runden):** signiertes Experten-Gutachten mit Besichtigung, methodisch
  SVS/SVKG-konform, Datenbasis UBS-FS/Wüest-Benchmarks (aktiv) + Inserate-Proxy, alle 4 Objekttypen
  (Start EFH/EWG am Fall Bahnhofstrasse 27 Wangen), als ausgebauter Skill → DOCX/PDF. Benchmark:
  WP-Hedonic-Beispielbericht Langenthal (9 Seiten, vollständig analysiert).
- **Neu `wiki/svs-svkg-standard.md`** — Gutachten-Aufbau (11 Pflichtteile), Marktwert-Definition,
  Marktwertbereinigungen, Disclaimer/Haftung. **Wording-Regel verankert** (Methode statt SVKG-Titel;
  Dauerregel `rules/auto-verbesserungen.md` 260615).
- **Neu `wiki/qualitaetsprofil-raster.md`** — Standard/Zustand/Mikrolage-Skalen 1–5 aus dem WP-Bericht
  übernommen, aber durch Augenschein gefüllt; Sanierungsstau je Bauteil = Realwert-Abschlag.
- **Neu (Skill) `tools/aufnahmeblatt.md`** — iPhone-taugliches Besichtigungs-Aufnahmeblatt + Foto-Konvention.
- **Neu (Skill) `KONZEPT-WP-UEBERLEGEN.md`** — Pflichtenheft + Gap-Analyse WP vs. JANS + 4-Phasen-Bauplan.
- **SKILL.md** um Sektion «Gutachten-Standard & Besichtigung» ergänzt; INDEX neue Rubrik «Gutachten-Produkt».
- **Phase 2 Generator erledigt (15.06.2026):** `tools/build_gutachten.py` (JSON → DOCX, Titelblatt
  mit grosser Marktwert-Kennzahl, Qualitätsprofil-Balken 1–5, Tabellen, Glossar; venv
  `~/.venvs/jansdocx`, Baukasten `jans_docx.py`). **Pilot Wangen** durchgespielt: aktenbasierter
  Gutachten-Entwurf (4 S., Marktwert Halten 2.6–2.8 Mio) + Aufnahmeblatt-Formular (2 S.) gebaut,
  gerendert, im Projektordner 2622 + AI-Hub-Output abgelegt. Offen: Karten-Block via `geo-zh.mjs`;
  Finalisierung nach Besichtigung 19.06. (Ist-Mieten/GVA/KV) durch `korrektur`.

## 2026-06-14 — Training-Run 4: alle 10 UBS-FS + SREBI + Hedonik-Modellfamilie + JANS-Flächenfaktoren (10 Themen)

- **Alle 10 UBS Fact Sheets kompiliert** (E4/T7 abgeschlossen): 4 neue Gemeinde-Artikel
  `zh-thalwil-8800`, `ag-muri-5630`, `zh-regensdorf-8105`, `lu-luzern-6000` (Quantile EFH/EW/
  Miete/Bauland/Geschäft + Preis-Miet-Verhältnis, alle ⚠ > 18 Mt.) → `marktdaten-gemeinden/`;
  README + INDEX nachgeführt. Befund: Premium-Seelage ZH (Thalwil EFH-Median 15'384) ↔ ländlich
  (Muri AG 7'978) = Faktor ~2 allein über die Lage.
- **Hedonik-Modellfamilie belegt** (T7): Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  (Regression, ~70 Kriterien, >20'000 Handänderungen/Jahr, UBS-Modell 1999 mit WP), Einsatz-
  grenze nur EFH/EW → `vergleichswert-hedonisch.md`.
- **UBS SREBI Bubble Index Q2-2024** (T14): Index 0.74 «moderat», 4 Perspektiven (Fundament
  1.73/Dynamik 0.17/Kosten 0.47/Umfeld -0.81), Methodik, regionale Ungleichgewichte (ZH/Genf/
  Lausanne/Zug) → `investorenmarkt-makro.md`.
- **Marktpuls 06.2026** (T10 teilweise): Referenzzinssatz 1.25 % (seit 09.2025), SNB-Leitzins
  0 % → `investorenmarkt-makro.md`. **Büromarkt ZH** (hbre/Savills 2024): Tertiär 500'000→580'000
  bis 2050, Serviced Offices → ebd.
- **JANS-Flächenfaktoren Wohnen** (T8): HNF/Baumasse 0.20, GF/Baumasse 0.33, HNF/GF 0.60 (ganzes
  Gebäude) / 0.75 (Regelgeschoss) + Wohnungsmix-Benchmark, aus Flächenkonzeption Wohnen
  (R. Jans 20.10.2024) → `flaechendefinitionen-sia.md` (Platzhalter «zu verifizieren» ersetzt).
- **Reale JANS-Bewertungsfälle** (T9): Referenz-Benchmark-Register (Thalwil 9568 LB+RW+MA,
  Ebmatingen 3932 LB+RW tief/hoch, Langnau/Wangen/Niederhasli) → `projektstruktur-deliverables.md`.
- Register: `_INGESTED.md`, `curriculum.md` (E4 ✓, E5/E6/E7 teilweise), `wissensluecken.md`
  (T7/T8/T9/T14 ✓, T10 teilweise), `INDEX.md`. Report `outputs/2026-06-14_training-run4.md`.

## 2026-06-12 — Training-Run 3: Mietwert-Korrektur + Gastgewerbe + Hedonik + 4 Marktblätter (10 Themen)

- **Schätzungsanleitung Kap. 5 vollständig erschlossen** (E3 abgeschlossen): Tab. 12
  Nutzflächen + Tab. 13 Raumeinheiten → `flaechendefinitionen-sia.md`; Tab. 14 (Punktesystem
  Wohnlage + Bauweise/Alter/Heizung) + Tab. 15 (Kriterienraster ±9 %) Mietwertberechnung sowie
  Tab. 25-28 Gastgewerbe-Umsatzmiete → `ertragswert-dcf.md` (T13 erledigt).
- **Hedonik-Methodik belegt** (E4/T7 teilweise): WP-Standortreport-Aufbau (Beispiel Langenthal
  21.06.2023 — Quantil-Preisspektren Wohnen/Geschäft, residualmodellierte Baulandpreise,
  Datengrundlagen-Anhang) + UBS-FS-Glossar-Methodik (Quantil-Definition, 11-Kriterien-
  Standort-Rating, BFS-Gemeindetypen, MS-Region, Datenquellen) → `vergleichswert-hedonisch.md`
  (emerging → **established**) + `marktdaten-gemeinden/README.md`.
- **4 neue Gemeinde-Marktblätter** (von 2 auf 6 Gemeinden): `zh-maur-8124` (7/2024),
  `zh-wald-8636` (12/2023, **Healthcare-Standort** 29.7 % Gesundheits-Beschäftigung →
  Projekt 2410), `zh-waedenswil-8820` (12/2023), `sz-einsiedeln-8840` (12/2023) — je
  vollständige Quantil-Tabellen EFH/EW/Miete/Bauland/Geschäft + Preis-Miet-Verhältnis. Alle
  mit ⚠ (Stand > 18 Mt.).
- `ertragswert-dcf.md` status established (Mietwert/Gastro); `INDEX` Statusbumps
  (ertragswert-dcf + vergleichswert-hedonisch → established) + 4 Gemeinden ergänzt.
- Register gepflegt: curriculum (E3 vollständig, E4 teilweise), _INGESTED (Schätzungsanleitung
  vollständig, Hedonik-Report + 6 UBS-FS eingearbeitet), wissensluecken (T13 ✓, T7 teilweise,
  neu T14 SREBI). Report `outputs/2026-06-12_training-run3.md`.

## 2026-06-10 — Training-Run 2: DXMA-Erfolgsfaktoren + Schaetzungsanleitung (10 Themen)

- Quellen vollstaendig eingearbeitet: **DXMA-Erfolgsfaktoren-Folien** (37 S., 06.2023) und
  **Schaetzungsanleitung Kap. 5** (Tabellen-Anhang). Damit ist Modul 4 des Wuest-Curriculums
  geschlossen (E1) und die zentrale Schaetzungs-Tabellenquelle erschlossen (E3).
- `erfolgsfaktoren-wettbewerb.md` neu aufgebaut (emerging → **established**): sechs DXMA-
  Faktoren (Baurecht/Nutzung/Baukosten/Mikrolage/Vermarktung/Bewertung), Aufwertungsgewinn-
  Prinzip («Gewinn liegt im Einkauf», Wissensasymmetrie) + 10 belegte Referenzfaelle,
  **AZ-Optimierungsformel** (UG/DG-Anrechnung, Split-Zone; Breitenstein/Stampfenbach/
  Fabrikstrasse), Baukosten-Effizienz (Pfaeffikon), Verweis A4-Bewertungsblatt.
- `lageklasse-landwertanteil.md` (speculative → **established**): Lageklassenschluessel
  Wohnen/Gewerbe (Tab. 6/7) + vollstaendige Landwertanteil-Tabelle LK→% (Tab. 8) — T5 erfuellt.
- `realwert-sachwert.md`: CHF/m3-Neuwert-Richtwerte Bauklasse I-VI (Tab. 2), BKP-Anteile
  (Tab. 3), Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) — T6 vollstaendig + T12 erfuellt.
- `residualwertmethode.md`: **DXMA-Marktwertschaetzung auf einem A4-Blatt** (5 Bloecke,
  belegtes Rechenbeispiel) als schlanke Operationalisierung eingearbeitet.
- `nutzungskonzepte.md`: DXMA-Fallbeispiele (MinMax, Ueber-Gaerten/volumenbasiert, Tiny
  Houses, RRR+RRR, performativ, Gotthardstrasse).
- `bewertungsverfahren-ueberblick.md`: Realwert-/Ertragswert-Gewichtung je Objektart
  (Tab. 22, Mittelwertmethode) — T11; `ertragswert-dcf.md`: Kapitalisierungssatz-Aufbau
  B/U/V/A/R (Tab. 21/23).
- Register gepflegt: INDEX, _INGESTED, curriculum (E1 ✓, E3 ✓), wissensluecken (T4/T5/T6/
  T11/T12 erledigt, neue Luecke T13 Mietkorrektur/Gastgewerbe). Report
  `outputs/2026-06-10_training-run2.md`.

## 2026-06-09 — Referenzfall Bahnhofstrasse 27 Wangen SZ bewertet (Compounding)

- Erster vollstaendig bewerteter JANS-Fall in der KB: gemischtes MFH Wangen SZ, Kaufpreispruefung
  3.1 Mio vs. Bankschaetzung 2.8 Mio → Marktwert JANS 2.6–2.8 Mio (3.1 als Renditekauf ~10 % zu hoch).
- Report `outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md` mit uebertragbaren Benchmarks:
  Brutto-Kapitalisierungssatz gemischtes MFH periphere SZ-Gemeinde ~5.0 %; Umbaukennwerte
  ~1'800 (leicht) / ~3'200 (mit Baueingabe) CHF/m² HNF; Honoraransaetze klein-Umbau ~10/15 %;
  Mietansaetze Wangen (Wohnen Altbau ~235–255, Gewerbe ~200 CHF/m²/J).
- `wiki/marktdaten-gemeinden/sz-wangen-8854.md`: "Anwendungshinweis (offen)" → "Referenzfall
  (bewertet)" mit verlinkten Kennwerten.
- Deliverable (A4 PDF im JANS-LB-Stil) im Projektordner AR-03 Studien/2622 + AI-Hub-Output.
- **Nachtrag:** Lageklasse-Befund (ÖREB Parz. 25): Objekt = **«Mittel»** (Bauland 2'702 CHF/m²,
  Bahnhof/zentral + ÖV vs. Laerm/ES III/kein Aussichtsbonus). In Report + Wangen-Marktblatt
  festgehalten; als Infopoint ins A4-Deliverable aufgenommen (Landwert 751×2'702 ≈ 2.03 Mio).

## 2026-06-09 — UBS Fact Sheets Wangen (SZ) + Zollikon (ZH) eingearbeitet

- Zwei neue UBS Real Estate Local Fact Sheets (12/2025, Daten 2025-Q3) aus
  `IMMO - 02 UBSFS` kompiliert und als maschinenlesbare Marktdaten-Blaetter abgelegt:
  - `wiki/marktdaten-gemeinden/sz-wangen-8854.md` (Wangen SZ, BFS 1349) — EFH-Median
    10'690, EW-Median 9'616, Miete-Median 265 CHF/m²/Jahr.
  - `wiki/marktdaten-gemeinden/zh-zollikon-8125.md` (Zollikon ZH, BFS 0161) — EFH-Median
    19'514, EW-Median 20'000, Miete-Median 388 CHF/m²/Jahr.
- Neuer Sammel-Index `wiki/marktdaten-gemeinden/README.md` (Lesehilfe UBS-FS-Spaltenlogik).
- `wiki/INDEX.md` um Sektion "Marktdaten Gemeinden" erweitert.
- `datenquellen-registry.md`: UBS-FS-Zeile auf 10 Gemeinden / Stand 2212-2512 aktualisiert,
  Verweis auf kompilierte Blaetter; **UBS Swiss Real Estate Bubble Index Q2-2024**
  (`srebi-q2-2024-de.pdf`) als Makro-Quelle neu registriert (Status offen).
- `raw/_INGESTED.md`: UBS-FS-Zeile auf "teilweise — Wangen/Zollikon eingearbeitet" gesetzt.
- Im Wangen-Blatt **Anwendungshinweis** zum erwarteten Folgefall *Bahnhofstrasse 27, Wangen
  SZ* (Plausibilisierung Verkaufspreis 3.1 Mio. vs. Bankschaetzung 2.8 Mio.) hinterlegt —
  Bewertung noch nicht durchgefuehrt.

## 2026-06-03 — KB angelegt (Seed aus IMMO-Sammlung)

- KB `immobilienbewertung` erstellt nach Meta-Schema (`wissen/WISSEN-CLAUDE.md`).
- `CLAUDE.md` (KB-Schema, Fokus-Bereiche, Quellen-Hierarchie) geschrieben.
- Struktur `raw/ wiki/ outputs/ training/` angelegt.
- **Seed-Artikel** im `wiki/` aus der ersten Sichtung der Ordner `IMMO - 01` bis
  `IMMO - 06` und der Wuest-Partner-Praesentation "Immobilien entwickeln" (21.06.2023,
  236 Seiten):
  - `bewertungsverfahren-ueberblick` (established)
  - `residualwertmethode` (established)
  - `ertragswert-dcf` (emerging)
  - `vergleichswert-hedonisch` (emerging)
  - `realwert-sachwert` (emerging)
  - `flaechendefinitionen-sia` (established)
  - `lageklasse-landwertanteil` (emerging)
  - `nutzungskonzepte` (emerging)
  - `investorenmarkt-makro` (emerging)
  - `erfolgsfaktoren-wettbewerb` (emerging)
  - `datenquellen-registry` (established)
  - `projektstruktur-deliverables` (established)
- `wiki/INDEX.md` und `wiki/wissensluecken.md` angelegt; 20+ Wissensluecken aus der
  Datenquellen-Pruefung erfasst (veraltete UBS-FS, CRB-OAK 2011, Bodenpreise nur als
  Screenshots, Ausnuetzungsziffer-Ordner leer, Diskontsatz-Herleitung undokumentiert,
  Excel-Residualwert-Logik nicht reverse-engineered).
- `training/PROGRAMM.md` (Lern-Loop alle 2 Tage, 10 Themen/Lauf) und
  `training/curriculum.md` (Lektionsplan aus dem 236-seitigen Wuest-Kurs) angelegt.
- `raw/_INGESTED.md` als Quellen-Register angelegt.

## 2026-06-10
- Referenzfall Bahnhofstrasse 27 Wangen SZ: Bankschaetzung von 2.8 auf **2.9 Mio** korrigiert
  (Quelle: Mail David Chaled 09.06.2026, PS im Thread «Bahnhofstrasse 27»). Kaufpreisempfehlung
  JANS 3.0 Mio ergaenzt. Datei: outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md
- Sitzungspraesentation 11.06.2026 (6 Folien, JANS-CI monochrom) erstellt; Ablage Studie 2622
  (02_Korrespondenz/260611_Sitzung Chaled) + AI Hub Output immobilienbewertung/2622-bahnhofstrasse-27
