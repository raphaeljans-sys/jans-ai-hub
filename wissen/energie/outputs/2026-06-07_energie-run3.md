# Energie-Trainingslauf — Run 3 (2026-06-07)

Taeglicher strategischer Energie-Loop. NAS + SharePoint PL-04 erreichbar; Voraussetzungen erfuellt.
(Ziel-PDFs waren OneDrive-Platzhalter → via `brctl`/Byte-Read materialisiert, dann gelesen.)

## BLOCK 1 — TRANSFER (3 PDFs destilliert)
1. **TEC21/TRACÉS-Dossier «Solares Bauen» 5/2012** (espazium / EPFL-LESO), S. 1-13 →
   `destillate/tec21-solares-bauen-pv-typen-2012.md` (**established**). Kerngewinn: **PV-Typen-
   Vergleich** (kristallin bis ~20 % / Duennschicht bis ~12 % / Graetzel-transluzent / Hybrid-PVT)
   + Bedarf→Technologie-Matrix (Abb. 7) + Integrationsarten (Indach/Aufdach/Fassade/Laermschutz).
   ⚠ Wirkungsgrade Stand 2012.
2. **EN-ZH «Nachweis der energetischen und schalltechnischen Massnahmen»** (Baudir. ZH/AWEL,
   EN-ZH-005, Juli 2022), vollst. 5 S. → `destillate/en-zh-nachweis-uebersicht.md` (**established**).
   Kerngewinn: vollstaendige **Nachweis-Uebersicht** (EN-101…EN-141 + S/LN), welcher Nachweis bei
   welcher Bauaufgabe. **Datenstand-Fund:** Formular galt nur bis 31.12.2025.
3. **SIA Merkblatt 2001 «Waermedaemmstoffe»** (Ausgabe 2005), S. 1-14 →
   `destillate/sia-2001-waermedaemmstoffe-lambda.md` (**emerging**). Kerngewinn: **λ_D-Bandbreiten
   nach Materialklasse** (Steinwolle/Glaswolle/Schaumglas/EPS/XPS/PUR-PIR/Phenolharz) + Definitionen
   λ/ρ/μ/c/BKZ. ⚠ veraltet (2005) — Klassenbandbreiten als Orientierung.

Swissolar-Brandschutz (`stp_solaranlagen_swissolar_v_4.0`, 55 S.) bewusst **nicht** destilliert —
gehoert zum Skill `brandschutz` (kein Doppel), nur als Verweis gesetzt.

## BLOCK 2 — VERDICHTUNG (Bauherren-Wert)
- **BAUHERREN-FAQ**: 2 neue belegte Antworten — **F4** (welcher PV-Typ) und **F12** (welche
  Energienachweise im Kt. ZH). F10 (PV-Pflicht) um EVEN-Datenstand ergaenzt. FAQ jetzt **7 belegte
  Antworten** (F1-F5, F10, F12).
- **3 neue Themenartikel**: `wiki/pv-solar-technologien.md` (established),
  `wiki/energienachweis-zh.md` (established), `wiki/daemmstoffe-lambda.md` (emerging).
- **Web-Aktualisierung (Datenstand 2026-06-07):** Kt. ZH fuehrt den Energienachweis seit
  **1.1.2026 elektronisch ueber EVEN (energievollzug.ch)** — die PDF-Formulare (EN-101…EN-141)
  sind abgeloest. In Destillat, FAQ F12 und Artikel `energienachweis-zh` mit ⚠ markiert.
  Foerderprogramm Energie ZH laeuft 2026 unveraendert weiter (zh.ch).

## Register nachgefuehrt
`destillate/INDEX.md` (+3), `wiki/INDEX.md` (+3 Artikel), `wiki/QUESTIONS.md` (E1/E5/E-D6 ✓,
neu E-D8 SIA 380/1 2009↔2016), `training/pdf-inventar.md` (3× [x] + Dublette), `training/curriculum.md`
(B1/C1 ✓, A1/A3 ~), `raw/_INGESTED.md` (9 Destillate), `CHANGELOG.md`.

## Offen / Prioritaet morgen (Run 4)
1. **Waermeerzeuger (FAQ F6)**: Waermepumpe vs. Fernwaerme vs. Pellets — `_2781-Ermittlung_der_
   Wärmeerzeugerleistung.pdf` + WTA-Formular (`endk.ch/.../2024_01_08_WTA_Formular`).
2. **Foerderung Bund/ZH (FAQ F7, E-D7)** — nur mit Datenstand (Web; Gebaeudeprogramm/ZH 2026).
3. **Naturdaemmstoffe + VIP** (SIA 2001 S. 15-17) → `daemmstoffe-lambda` vervollstaendigen.
4. **SIA 380/1 2009↔2016 abgleichen** (E-D8) — Formular referenziert 2016, EN-102-Destillat 2009.
5. **Fenster/g-Wert** eigener Artikel (A5/E3); **Heizwaermebedarf-Beispielrechnung** (A2).

## Qualitaet
Keine erfundenen Werte; PV-Wirkungsgrade, λ-Bandbreiten und Nachweis-Struktur direkt aus den
Quellen. Alle rechts-/datumssensiblen Aussagen (EVEN/EN-ZH, SIA 2001:2005, Wirkungsgrade 2012)
mit Datenstand + ⚠ ausgewiesen. Brandschutz→`brandschutz`, Energierecht→`baurecht` verwiesen
statt gedoppelt. Echte Umlaute, Schweizer Hochdeutsch. Kompoundiert (PV-Destillat ↔ EN-104/Minergie;
λ-Destillat ↔ U-Wert-Grenzwerte; EN-ZH ↔ EN-102/EN-104).
