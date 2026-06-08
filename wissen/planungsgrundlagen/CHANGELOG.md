# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-06-08 — Trainings-Lauf 2: Recht/Norm (PL-02) vertieft
- `wiki/recht-norm-quellenlandkarte.md`: Status emerging→**established**. Vollstaendige 10-Ordner-
  Karte (01_Gesetze … 10 Laermschutz, Tiefgarage) inkl. ZH-Untergliederung. **SR→fedlex-Tabelle**
  + Bezugsschema: stabile ELI `…/eli/cc/<jahr>/<id>/de` und zitierfaehige datierte PDF-A
  `…/filestore/…/<JJJJMMTT>/de/pdf-a/…` (getestet RPG 20260101). Bestaetigte ELI: RPG
  `cc/1979/1573_1573_1573`, EnG `cc/2017/762`, EnV `cc/2017/763`.
- ⚠ **Datenstand:** RPG 2 in Kraft **01.01. + 01.07.2026** (RPV-Aenderung 15.10.2025 seit 01.01.2026)
  → Ordner-PDF 700/700.1 veraltet; EnG SR 730.0 "Stand 01.01.2026". Quelle: fedlex.admin.ch.
- **NEU** `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (emerging): `08_`-Fallbibliothek als
  Benchmark; **Maur 231024** gelesen → Struktur-Goldstandard Machbarkeitsstudie; 11 Faelle 2010–2023.
- SZ↔ZH-Messweisen (ZH=IVHB / SZ=PBG-Massartikel) + Dispens-BRKE verortet (Tiefe → `baurecht`).
- Register: INDEX (2 PL-02-Artikel), curriculum (R1/R4 [x], R2/R3 [~]), QUESTIONS (B1 ~, neu B2/B3),
  `_INGESTED.md` (PL-02 teilweise + 4 Quellen). Output: `outputs/2026-06-08_training-run2.md`.

## 2026-06-06 — Trainings-Lauf 1: Energie (PL-04) vertieft
- **NEU** `wiki/energie-pv-eignung-typenwahl.md` (**established**): PV-Typenwahl-Entscheidungsbaum
  (A–E), Eignungs-/Ertragswerkzeuge (sonnendach.ch, EnergieSchweiz-Solarrechner Okt 2022,
  uvek-gis, sonnenverlauf, PVSOL), JANS-Benchmark ewzWHH PS 19.36 (2019): ~850 kWh/kWp,
  ~CHF 1'600–2'460/kWp, Lebensdauer 25–30 J, V-Anordnung + Kiesstreifen-Detail.
- `wiki/energie-uebersicht.md`: Status emerging→**established**; **EN-ZH Hauptformular** (ZH-
  Energienachweis) belegt beschrieben (Einreichung DLZ vor Baubeginn, Inhalt/QS-Stufen, Quelle
  endk.ch/zh.ch); U-Wert/Q_H → Verweis auf KB `wissen/energie` (kein Doppel).
- Datenstand MuKEn gesetzt: EnerG ZH seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025,
  ZH-Umsetzung 06/2026 offen.
- Register: INDEX, curriculum (E1–E4 [x]), QUESTIONS (D2 ✓, neu D4/D5), `_INGESTED.md` (3 Quellen).
- Output: `outputs/2026-06-06_training-run1.md`. Naechster Lauf: Recht/Norm (PL-02).

## 2026-06-05 — KB angelegt (Seed aus den vier PL-Ordnern)
- KB-Geruest erstellt: `CLAUDE.md`, `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `training/PROGRAMM.md`, `training/curriculum.md`, `outputs/`.
- Vier Seed-Artikel angelegt (je Domaene einer):
  - `wiki/kartenportale-oereb-egrid-bezug.md` — **established**: validierte Kette
    Adresse→Koordinate→EGRID→OEREB-PDF (Kt. ZH), inkl. realem Beleg Giebelweg 12
    (EGRID CH879777718909, Parz. 3338, BFS 136).
  - `wiki/kartenportale-geoportale-uebersicht.md` — emerging: welches Portal liefert was.
  - `wiki/recht-norm-quellenlandkarte.md` — emerging: Wegweiser in PL-02, verlinkt `[[baurecht]]`.
  - `wiki/energie-uebersicht.md` — emerging: PV-Typen, U-Wert/SIA 380-1, Energienachweis ZH.
- Quelle des OEREB-Bezugswegs: Fachstelle GIS Kt. ZH (Hannah Gies), kein Login noetig.
