# Trainings-Lauf 6 — KB Planungsgrundlagen

- **Datum:** 2026-06-18
- **Schwerpunkt-Domaene:** **Energie (PL-04)** — per Rotation (Run 5 war Kartenportale) und
  Prioritaet. Bearbeitet wurden die beiden echten Energie-Restluecken **E6 Brandschutz-Solar**
  und **D5 PV-Benchmarks**, plus EN-104-Dimensionierung und MuKEn-2025-Datenstand.
- **Connector-Schritt:** nein (gilt nur fuer Kartenportale).

## Ausgangslage
Die Energie-Domaene war bei PV-Typenwahl, Eignung/Ertrag-Werkzeugen und der EN-ZH-Fachformular-
Liste schon `established`. Offen blieben: (1) **E6** Brandschutz/Naturgefahren von Solaranlagen
(bisher nur «→ Skill brandschutz»), (2) **D5** belegte Ertrags-/Kosten-Bandbreite je PV-Typ
(bisher nur ewzWHH 2019), (3) die konkrete **EN-104-Dimensionierung** (Eigenstrom-Pflicht), (4)
der **MuKEn-2025-Stand** in ZH.

## Bearbeitete Selbstfragen (curriculum/QUESTIONS)
1. **E6 — Welche Brandschutz-Schnittstellen muss der Architekt bei PV planen?** → **GELOEST.**
   Eigener Artikel `[[energie-pv-brandschutz]]` aus dem **Swissolar Stand-der-Technik-Papier
   V4.00** (12/2022, red. 11/2023) zu **VKF-BSM 2001-15** (Rev. 01.01.2022). Solar-spezifisch,
   kein Doppel zum Skill `brandschutz` (dort Bauteil-Klassen).
2. **Wie loest man den Brandmauer-Uebergang bei aufgesetzter PV?** → Module auf **1.0 m** Breite
   unterbrechen **oder** Brandmauer **0.3 m** ueberhoehen; **REFH-Ausnahme** bei RF1-Bedachung
   (bis Mittelachse Brandmauer/Parzellengrenze). Integriert: hohlraumfrei RF1 bzw. Abstand ≤20 mm.
3. **Wann oberste Schicht «nicht brennbar»?** → Glas/Glas- oder Glas/Folien-Modul als Bedachung,
   wenn bewitterte Schicht **RF1** und **Folienschichtdicke ≤ 1.5 mm**. Integriert >1200 m²:
   Verlegeunterlage RF1, Feld-Unterteilung ≥0.5 m.
4. **Ab wann Feuerwehreinsatzplan / Kennzeichnung?** → Bauherr informiert Feuerwehr; Kennzeichnung
   nach NIN 7.12.5.1; **ab ≥30 kW** (oder relevanter Gefaehrdung) Aufnahme in Brandschutz-/
   Feuerwehreinsatzplaene (VKF-BSM 2003-15). ⚠ **DC-Seite bleibt bei Tageslicht unter Spannung.**
5. **Welcher Naturgefahren-Nachweis?** → Bemessung **SIA 261:2020 + 261/1:2020**; Hagel
   **HWx** (schutz-vor-naturgefahren.ch / hagelregister.ch), Schneedruck nach SIA 261; Module
   **SN EN 61215 / SN EN IEC 61730**.
6. **D5 — Realistische kWh/kWp und CHF/kWp je Typ?** → **teil-geloest.** Benchmark-Tabelle in
   `[[energie-pv-eignung-typenwahl]]` §3 aus zwei aktuellen SolarApp-Vorprojekten:
   - **Typ A Indach-Tile** Reckholdern 20, Einsiedeln SZ (2024): 7.90 kWp, 252 Module à 32 Wp,
     **981 kWh/kWp**, CHF 58'198 → **~7'370 CHF/kWp**.
   - **Typ E Aufdach** MFH Basel (2022): 59.93 kWp, 162 Module, **852 kWh/kWp**, CHF 135'257 →
     **~2'255 CHF/kWp**.
   - Plus Flachdach ewzWHH 2019. → Ertragsband **~850–980 kWh/kWp**; CHF/kWp **stark typabhaengig
     (~2'000–7'400)** — kleinteilige Solarziegel um Faktor 3 teurer als Standardmodule.
7. **EN-104 — Wie gross muss die Pflicht-PV sein?** → **Notwendige Leistung = EBF × 10 W/m²,
   max 30 kW**; Flaechenbedarf **8 m²/kW** (mono/poly) bzw. **16 m²/kW** (Duennschicht);
   Alternativen EN-133 / Ersatzabgabe; Befreiung bei Erweiterung. → `[[energie-energienachweis-zh-formulare]]`.
8. **E5 — MuKEn-2025-Stand in ZH?** → MuKEn 2025 **EnDK 08/2025** verabschiedet (Umsetzung
   2025–2030); Neubau neu: **graue-Energie-Grenzwerte, rein erneuerbare Waermeerzeugung, mehr
   Eigenstrom**. **ZH-Ueberfuehrung Stand 18.06.2026 ausstehend** — Datenstand gesetzt.

## Geaendert
- **NEU** `wiki/energie-pv-brandschutz.md` (**established**) — Verbindlichkeit/Normenkette,
  zwei Einbauarten, 7 Kernregeln (oberste Schicht / Brandmauer-Uebergang / RWA / Feuerwehr /
  Naturgefahren / Dauerwaerme SW / Unterhalt), JANS-Praxis-Merkposten.
- `wiki/energie-pv-eignung-typenwahl.md` — §3 von Einzel-Benchmark zu **Benchmark-Tabelle je Typ**
  (D5) umgebaut; EN-104-Dimensionierungs-Anker; Querlinks Brandschutz/EN-104; Datenstand.
- `wiki/energie-energienachweis-zh-formulare.md` — neuer Abschnitt **EN-104 Dimensionierung**
  (Formel, m²/kW, Befreiung, Alternativen, realer Einsiedeln-Beleg); MuKEn-2025-Datenstand;
  D5-Verweis; Brandschutz-Link.
- `wiki/energie-uebersicht.md` — Brandschutz-Artikel verlinkt, MuKEn-2025-Inhalte/Stand,
  Offen-Liste aktualisiert (E6 ✓, D5 ~).
- Register: `INDEX.md` (neuer Artikel), `QUESTIONS.md` (C2/E6 ✓, D5 ~, D1/MuKEn-Update),
  `curriculum.md` (E6 ✓, E7 ✓ neu, E5 Update), `raw/_INGESTED.md` (4 neue PL-04-Quellen).

## Belegte Kernfakten (neu)
- **Eigenstrom-Pflicht Neubau:** PV ≥ **EBF × 10 W/m²**, gedeckelt **30 kW** (EN-104, EnDK 2019).
- **Brandmauer aufgesetzte PV:** 1.0 m frei **oder** Brandmauer +0.3 m; REFH-Ausnahme bei RF1.
- **Oberste Schicht nicht brennbar:** Glas/Folie ≤ 1.5 mm + RF1 (VKF-BSR 14-15).
- **Feuerwehreinsatzplan ab ≥ 30 kW** PV (VKF-BSM 2003-15); DC bleibt bei Tageslicht spannungsfuehrend.
- **PV-Ertrag ZH/SZ:** ~850–980 kWh/kWp; **CHF/kWp** Standardmodul ~2'000–2'500, Solarziegel ~7'000+.

## Naechster Lauf
Rotation → **Recht/Norm (PL-02)** oder **Brandschutz (PL-03)**. PL-02 hat offene Punkte:
**B2** (ZH-Umsetzung RPG 2, PBG-/BZO-Folgen) und **B1-Rest** (restliche Bundeserlasse-Datenstaende
NHG/GSchG/LSV/BehiG). PL-03 (Skill-Verhaeltnis C1) ist mager — koennte mit dem neuen
`[[energie-pv-brandschutz]]` als Muster zu einem schlanken PL-03-Wegweiser ausgebaut werden.
Energie-Resteluecken fuer spaeter: **D5 Typ B/C/D** Benchmark, **D6** EVEN-Bedienung am KISPI-Fall.
Kartenportale-Prioritaet bleibt **A5** (ObjektwesenZH) / **A6** (projektierter Zonen-Layer).
