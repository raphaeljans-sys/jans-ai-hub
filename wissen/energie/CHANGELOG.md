# CHANGELOG — KB Energie

Neueste zuoberst.

## 2026-06-08 — Run 4: Heizleistung/Waermeerzeuger + SIA-380/1-Standardnutzung + Foerderung ZH 2026
- **4 PDFs + 1 Web-Quelle destilliert**: BFE «Ermittlung der Waermeerzeugerleistung» (Nr. 2781,
  12.2015, vollst., established), SIA 380/1 Standardnutzungswerte Tab. 24/25 (Warmwasser Qww,
  established), Rechenbeispiel Monatsbilanz Heizwaermebedarf (Buero ZH, established), Grundsaetze
  energieeffizientes Bauen (emerging), **Foerderprogramm Energie Kt. ZH 2026** (Web zh.ch,
  Version 01.01.2026, S. 1-29, established).
- **FAQ +2 belegte Antworten**: **F7** (Foerderbeitraege Kt. ZH 2026 mit CHF-Tabelle + Datenstand),
  **F13** (Wie gross muss meine Heizung sein? — spez. Heizleistung). FAQ nun **9 belegt** (F1-F5, F7,
  F10, F12, F13).
- **2 neue Themenartikel**: `wiki/foerderung-energie-zh.md`, `wiki/heizleistung-und-waermeerzeuger.md`.
- **Datenstand-Web (2026-06-08):** Foerdersaetze ZH 2026 verifiziert aus amtlichem PDF —
  Luft-Wasser-WP CHF 2'900, Erdsonden-/Grundwasser-WP CHF 6'800, Fernwaerme CHF 5'200 (je ≤15 kWth),
  Daemmung CHF 40/m² (+Bonus 60/m²), GEAK Plus CHF 1'000/1'500; ⚠ Rahmenkredit 2026-29.
- Register: INDEX (destillate +5 / wiki +2), QUESTIONS (E-D7/E-H1/E-H2 ✓), pdf-inventar (4× [x]
  + Web-Sektion), curriculum (A2 vollst., B5/D3 ✓), _INGESTED (14 Destillate). Output: `outputs/2026-06-08_energie-run4.md`.

## 2026-06-07 — Run 3: PV-Typen + EN-ZH-Nachweis (EVEN) + λ-Werte Daemmstoffe
- **3 PDFs destilliert**: TEC21-Dossier «Solares Bauen» 5/2012 (PV-Typen kristallin/Duennschicht/
  Graetzel/Hybrid + Integration, established), EN-ZH-Nachweis-Deckblatt (Baudir. ZH Juli 2022,
  established), SIA 2001 Waermedaemmstoffe (λ-Bandbreiten je Materialklasse, emerging).
- **FAQ +2 belegte Antworten**: F4 (welcher PV-Typ), F12 (welche Energienachweise im Kt. ZH);
  F10 um EVEN-Datenstand ergaenzt. FAQ nun **7 belegt** (F1-F5, F10, F12).
- **3 neue Themenartikel**: `wiki/pv-solar-technologien.md`, `wiki/energienachweis-zh.md`,
  `wiki/daemmstoffe-lambda.md`.
- **Datenstand-Web (2026-06-07):** Kt. ZH Energienachweis seit **1.1.2026 elektronisch ueber EVEN
  (energievollzug.ch)** — PDF-Formulare abgeloest; ⚠-Markierung gesetzt. Foerderprogramm ZH 2026 unveraendert.
- Register: INDEX (destillate +3 / wiki +3), QUESTIONS (E1/E5/E-D6 ✓, neu E-D8), pdf-inventar
  (3× [x] + Dublette), curriculum (B1/C1 ✓), _INGESTED (9 Destillate).
- Output: `outputs/2026-06-07_energie-run3.md`.

## 2026-06-06 — Run 2: U-Wert-/Qh-Grenzwerte + Minergie + PV-Pflicht belegt
- **4 PDFs destilliert** (3 established, 1 emerging): EN-102 Waermeschutz (EnFK Dez 2018, vollst.),
  EN-104 Eigenstromerzeugung (10 W/m²-Regel), Minergie-Wissen «Besser planen», Bauphysik
  Heizwaermebedarf-Kennwerte (Gebaeudehuellzahl).
- **FAQ +3 belegte Antworten**: F3 (U-Wert Pflicht/empfohlen), F5 (Minergie vs. Gesetz),
  F10 (PV-Pflicht/Groesse). FAQ nun 5 belegt.
- **2 neue Themenartikel**: `wiki/u-werte-grenzwerte-ch.md`, `wiki/minergie-standards.md`.
- Bestehendes SIA-380/1-Destillat auf established gehoben + querverlinkt.
- Datenstand-Web: Kt. ZH EnerG seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025, ZH-Umsetzung
  ausstehend — ⚠-Markierung gesetzt.
- Register: INDEX (destillate/wiki), QUESTIONS, pdf-inventar (4× [x]), curriculum, _INGESTED.
- Output: `outputs/2026-06-06_energie-run2.md`.

## 2026-06-05 — KB Energie angelegt (strategischer taeglicher Loop)
- Eigene KB `wissen/energie/` mit **Destillate-Layer** (PDF→MD) erstellt.
- Seed-Inventar `training/pdf-inventar.md`: 30 Prioritaets-Quellen aus PL-04 erfasst.
- **2 echte Destillate** aus real gelesenen PDFs:
  - `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` (BFE 2002, S. 1-10).
  - `destillate/sia-380-1-heizwaermebedarf-berechnung.md` (Qh-Formel + 11 Schritte).
- `wiki/BAUHERREN-FAQ.md` mit 2 belegten Antworten (F1 Daemmung-Nutzen, F2 Effizienz-Prioritaet)
  + Backlog F3-F9.
- Schema/Register: `CLAUDE.md`, `training/PROGRAMM.md` (taeglich), `training/curriculum.md`,
  `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `outputs/`.
- Scheduled Task `energie-training` (taeglich) angelegt; Agent `energie-berater` auf diese KB
  ausgerichtet; Bruecke aus `wissen/planungsgrundlagen/wiki/energie-uebersicht`.
