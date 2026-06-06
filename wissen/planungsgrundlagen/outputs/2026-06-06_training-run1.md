# Trainings-Lauf 1 — KB Planungsgrundlagen

- **Datum:** 2026-06-06
- **Schwerpunkt-Domaene:** Energie (PL-04) — Rotation: nach Kartenportale (K1, Seed 2026-06-05)
- **Connector-Schritt:** keiner (nur bei Schwerpunkt Kartenportale; nicht dieser Lauf)

## Ausgangslage
Erster formaler Trainings-Lauf (zuvor nur Seed K1). Energie ist Prioritaetsluecke, hat aber
parallel eine **eigene KB `wissen/energie/`** mit taeglichem Loop (U-Werte/Minergie/Q_H/MuKEn
bereits `established`). Daraus die **Arbeitsteilung dieses Laufs:** nicht duplizieren, sondern die
**beschaffungs-/entscheidungsspezifischen** Energie-Themen vertiefen und fuer Physik/Kennwerte auf
`wissen/energie` verlinken.

## Bearbeitete Fragen (curriculum/QUESTIONS)
- **E1 PV-Typenwahl-Entscheidungsbaum** — belegt aus PL-04/Solaranlage (Ordner A–E + SI-Saphir-
  Datenblatt). Neuer Artikel `[[energie-pv-eignung-typenwahl]]`.
- **E2 PV-Eignung/Ertrag** — Werkzeugkette belegt: sonnendach.ch, EnergieSchweiz-Solarrechner
  (Usermanual Okt 2022: 4 Systemvarianten ~90 %, ~5.8 m²/kWp, Renditerechner), uvek-gis,
  sonnenverlauf.de, PVSOL. Plus realer **JANS-Benchmark ewzWHH PS 19.36 (02/2019)**: spez. Ertrag
  bis ~850 kWh/kWp, Kosten ~CHF 1'600–2'460/kWp (⚠ 2019), Lebensdauer 25–30 J, V-Anordnung +
  Kiesstreifen-Detail.
- **E3/D2 U-Wert-Grenzwerte** — als belegt erledigt durch **Verweis** auf
  `wissen/energie/wiki/u-werte-grenzwerte-ch.md` (kein Doppel).
- **E4 Energienachweis ZH** — **EN-ZH Hauptformular** belegt beschrieben (Quelle PL-04 Formulare +
  Buero-Notiz mit endk.ch/zh.ch-Quellen): Einreichung vor Baubeginn beim DLZ, Inhalt/Checkliste,
  QS-Stufen, geringfuegige-Umbauten-Deklaration, Adobe-Reader-Hinweis.
- **D1 MuKEn/ZH-Stand** — Datenstand gesetzt: EnerG seit 1.9.2022 (MuKEn 2014); MuKEn 2025
  EnDK 08/2025, ZH-Umsetzung Stand 06/2026 offen → ⚠ vor Zitat verifizieren.

## Geaendert
- **NEU** `wiki/energie-pv-eignung-typenwahl.md` (established) — PV-Typen, Eignungswerkzeuge,
  ewzWHH-Benchmark.
- `wiki/energie-uebersicht.md` — Status emerging→**established**; PV→Verweis neuer Artikel;
  U-Wert→Verweis KB energie; Energienachweis-ZH/EN-ZH belegt ausgebaut.
- `wiki/INDEX.md`, `training/curriculum.md` (E1–E4 [x], E5/D1 [~]), `wiki/QUESTIONS.md`
  (D2 ✓, D1 ~, neu D4/D5), `raw/_INGESTED.md` (PL-04 teilweise + 3 Quellen).

## Belegte Kennwerte (neu in KB)
- Modulflaeche ≈ **5.8–6 m²/kWp** (Solarrechner Okt 2022).
- Flachdach aufgestaendert: spez. Ertrag **bis ~850 kWh/kWp** (ewz, 2019).
- PV-Erstellung **~CHF 1'600/kWp** (ewz-Referenz Greencity) bis **2'460/kWp** (GP-Schaetzung), ⚠2019.
- Technische Lebensdauer PV **25–30 J**.

## Naechster Lauf
Rotation → **Recht/Norm (PL-02)** (R1 Quellenlandkarte/fedlex-Datenstand). Danach Brandschutz (PL-03),
dann wieder Kartenportale (K2 Zonenplan-Endpunkt + Connector). Offene Energie-Punkte D4 (EN-ZH
Fachformulare) und E6 (Brandschutz-Solar) beim uebernaechsten Energie-Lauf.
