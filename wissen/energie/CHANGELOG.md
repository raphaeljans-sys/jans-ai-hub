# CHANGELOG — KB Energie

Neueste zuoberst.

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
