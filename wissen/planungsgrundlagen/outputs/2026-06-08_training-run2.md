# Trainings-Lauf 2 — KB Planungsgrundlagen

- **Datum:** 2026-06-08
- **Schwerpunkt-Domaene:** Recht/Norm (PL-02) — Rotation: nach Energie (Run1, 2026-06-06)
- **Connector-Schritt:** keiner (nur bei Schwerpunkt Kartenportale)

## Ausgangslage
Der PL-02-Wegweiser deckte erst 2 von 10 Top-Ordnern ab (nur `01_Gesetze` + `02_Normen`) und
hatte keinen Datenstand. Ziel dieses Laufs: Quellenlandkarte komplettieren (R1), den fedlex-
Bezugsweg fuer aktuelle Erlass-Fassungen belegen (B1) und die realen JANS-Faelle in `08_` als
Benchmark erschliessen (R4). Leitplanke: Recht verlinken statt abschreiben → Tiefe bleibt bei
Skill `baurecht`.

## Bearbeitete Fragen (curriculum/QUESTIONS)
- **R1 Quellenlandkarte vervollstaendigen** — komplette 10-Ordner-Karte (01_Gesetze … Tiefgarage)
  inkl. ZH-Untergliederung (Planung/Energie/Submission/Wasser/Zivilschutz) belegt erfasst.
- **B1 Datenstand Bundeserlasse vs. fedlex** — **fedlex-Bezugsschema belegt + getestet**:
  stabile ELI-HTML `…/eli/cc/<jahr>/<id>/de` und **zitierfaehige datierte PDF-A**
  `…/filestore/…/eli/cc/<jahr>/<id>/<JJJJMMTT>/de/pdf-a/…`. Bestaetigte ELI: RPG `cc/1979/1573_1573_1573`,
  EnG `cc/2017/762`, EnV `cc/2017/763`. **Kritischer Datenstand: RPG 2 in Kraft 01.01. + 01.07.2026,
  RPV-Aenderung 15.10.2025 seit 01.01.2026** → Ordner-PDF 700/700.1 veraltet. EnG SR 730.0 "Stand
  01.01.2026".
- **R4 Baurechtsanalysen als Benchmark** — `08_` als Fall-Bibliothek erschlossen; **Maur 231024**
  (Burgstrasse 7/9/11) gelesen → Struktur-Goldstandard fuer Machbarkeitsstudie Typ A. 11 Faelle
  (2010–2023) als Benchmark-Tabelle.
- **R2/R3 (leicht)** — ZH=IVHB vs. SZ=PBG-Massartikel verortet (Tiefe → `baurecht`); Dispens-BRKE
  in `05_Dispensrecht` als Muster vermerkt.

## Geaendert
- `wiki/recht-norm-quellenlandkarte.md` — Status **emerging → established**; 10-Ordner-Karte,
  SR→fedlex-Tabelle + Bezugsschema, ⚠-Datenstand RPG 2 2026 / EnG 2026, SZ↔ZH-Messweisen-Kurz,
  Dispens-Verweis.
- **NEU** `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (emerging) — Maur-Struktur-Goldstandard
  + Fall-Index 11 Faelle.
- `wiki/INDEX.md` (2 PL-02-Artikel, Status), `training/curriculum.md` (R1/R4 [x], R2/R3 [~]),
  `wiki/QUESTIONS.md` (B1 ~, neu B2/B3), `raw/_INGESTED.md` (PL-02 teilweise + 4 Quellen).

## Belegte Fakten/Endpunkte (neu in KB)
- fedlex datierte PDF-A: `…/eli/cc/<jahr>/<id>/<JJJJMMTT>/de/pdf-a/…` (ladbar bestaetigt, RPG 20260101).
- RPG 2 gestaffelt in Kraft **01.01.2026 / 01.07.2026**; RPV-Aenderung 15.10.2025 in Kraft 01.01.2026.
- EnG SR 730.0 `cc/2017/762`, EnV SR 730.01 `cc/2017/763`, Stand 01.01.2026.
- Maur-Studie: Dramaturgie Status quo→OPR→Gewaesserraum→oeffentl.-rechtl.→Baufeld→Variante→Kennwerte.

## Naechster Lauf
Rotation → **Brandschutz (PL-03)** (B1: Verhaeltnis zu Skill `brandschutz` festlegen — Verweis vs.
PL-03-Spezifika wie Brandschutznachweis-Vorlagen; B3 VKF-Struktur 2015 als Wegweiser). Danach
wieder **Kartenportale** (K2 Zonenplan-Endpunkt + Connector `geo-zh.mjs` erweitern — die echte
Tooling-Luecke). Offene PL-02-Punkte: B1-Rest (uebrige Bund-SR datieren), B2 ZH-Umsetzung RPG 2,
B3 `06_Richtlinien`-Wegweiser.
