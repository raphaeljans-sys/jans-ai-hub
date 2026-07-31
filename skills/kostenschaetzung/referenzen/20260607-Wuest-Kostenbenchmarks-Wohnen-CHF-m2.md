# Wüest-Kostenbenchmarks Wohnbau Neubau (CHF/m², BKP 1–5 / BKP 2)

Belegte Erstellungskosten-Benchmarks fuer **Wohnbau** (Ergaenzung zu den Healthcare-Kennwerten
des Skills `kostenschaetzung`). Quelle: Wüest Academy / Immo-Monitoring P23D, S. 32–34
(Wüest Dimensions 2022, Daten bis 2021) + SIA 2020 «Baukosten- und Terminschaetzung» + BfS.
Aufbereitung 070626. Anhang/Visualisierung: `IMMO - 04 Marktpreise/wuest partner/Kostenbenchmarks/`
(Original-PDF S. 32–34, Massiv/Holz-Spread-Grafik, JANS-Zusammenfassung mit Chart).

Bezug: HNF = Hauptnutzflaeche, GF = Geschossflaeche (SIA 416). Exkl. Land (BKP 0) und
Reserven/Finanzierung (BKP 6–9).

## 1. Wüest Dimensions 2022 — Wohnen Vollausbau, Quantile (CHF/m²)

| Bezug | Q1.0 | Q1.5 | Q2.0 | Q2.5 | Q3.0 Median | Q3.5 | Q4.0 | Q4.5 | Q5.0 |
|---|---|---|---|---|---|---|---|---|---|
| BKP 1–5 / HNF | 3'460 | 3'660 | 3'880 | 4'120 | **4'360** | 4'750 | 5'140 | 6'190 | 7'250 |
| BKP 2 / HNF | 2'840 | 3'010 | 3'170 | 3'380 | **3'580** | 3'890 | 4'210 | 5'080 | 5'950 |
| BKP 1–5 / GF | 2'420 | 2'520 | 2'610 | 2'730 | **2'840** | 3'030 | 3'210 | 3'790 | 4'340 |
| BKP 2 / GF | 1'980 | 2'080 | 2'140 | 2'240 | **2'330** | 2'480 | 2'630 | 3'110 | 3'560 |

→ Median BKP 1–5 ≈ **CHF 4'360/m² HNF**; inkl. aktueller Teuerung mind. **CHF 4'800/m² HNF**.

## 2. SIA 2020 «Baukosten- und Terminschaetzung» — CHF/m² GF (BKP 2)

| Objektart (Wohnen) | unterer | Median | oberer |
|---|---|---|---|
| Ein-/Zweifamilienhaeuser | 2'500 | 2'900 | 3'500 |
| Standardisierte Reihenhaeuser | 2'300 | 2'600 | 3'000 |
| Wohnsiedlungen | 2'400 | 2'700 | 3'500 |
| Mehrfamilien-/Wohn-Geschaeftsbauten | 2'500 | 2'800 | 3'400 |

Median MFH 2'800/m² GF → auf HNF (HNF ≈ 0.70 × GF) ≈ 4'000/m² HNF; +20 % Teuerung ≈ 4'800/m² HNF.
BfS Schweizer Mittel MFH: 3'000–4'000 CHF/m² (BKP 1–5).

## 3. Bauweise Massivbau vs. Holzbau (CHF/m² HNF, BKP 1–5, exakte Quantile, Preisstand April 2023)

**Quelle:** Wüest Partner / Lignum Holzwirtschaft Schweiz / BAFU, «Holzbaukennzahlen für
Investoren — Wohnbauten», Teil 1/2 Kostenkennzahlen, Abschlussbericht 26.04.2024, S. 18 und
S. 36 (identische Tabelle). Stichprobe 17 Holzbau-Neubauten gegen knapp 50 Massivbau-
Referenzobjekte, unpaarige Gruppenauswertung; alle Werte auf Indexstand April 2023 indexiert,
inkl. MWST, ohne Förderungen, exkl. Tiefgarage; HNF definitionsgemäss nur oberirdisch.
Vor jeder Verwendung Teuerung nach Abschnitt 5 aufrechnen.

| Datensatz | 10 % | 30 % | 50 % Median | 70 % | 90 % |
|---|---|---|---|---|---|
| Massivbau 2023 | 3'100 | 3'894 | **4'492** | 5'002 | 6'900 |
| Holzbau 2023 gesamt | 4'749 | 5'094 | **5'466** | 6'070 | 6'587 |
| Holzbau unteres Preissegment | 4'687 | 4'800 | 4'980 | 5'144 | 5'499 |
| Holzbau oberes Preissegment | 5'561 | 6'021 | 6'506 | 6'566 | 6'653 |

Aufpreis gegenüber dem Massivbau-Median 4'492: Holzbau gesamt **+21.7 %**, unteres Preissegment
**+10.9 %**, oberes Preissegment **+44.8 %**.

*Exakte Quantile eingesetzt 31.07.2026 (Wissens-Chef Run 22). Die früheren, aus dem Spread
abgelesenen Näherungswerte und die daraus gerechneten Deltas (+11 % / +38 %, Run 21) sind
damit überholt; die Ablesung lag im oberen Segment rund 7 Prozentpunkte zu tief. Die
Primärtabelle liegt seit dem 31.07.2026 im Hub —
`wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-B-wuest-partner.md`.*

## 3b. Dieselbe Studie auf GV-Basis: unteres Preissegment ohne Aufpreis

**Richtiggestellt 31.07.2026 (Wissens-Chef Run 22): es ist KEINE zweite, unabhängige Studie.**
Die GV-Reihe steht in demselben Wüest-Bericht wie Abschnitt 3, auf S. 34, und ruht auf derselben
Stichprobe (17 Holzbauten / knapp 50 Massivbau-Referenzen) und demselben Indexstand April 2023.
Die frühere Einordnung als «zweite, unabhängige Quelle» mit «verschiedenen Stichproben» war
falsch. Exakte Quantile (CHF/m³ GV, BKP 1–5):

| Datensatz | 10 % | 30 % | 50 % Median | 70 % | 90 % |
|---|---|---|---|---|---|
| Massivbau 2023 | 701 | 846 | **974** | 1'137 | 1'548 |
| Holzbau 2023 gesamt | 863 | 956 | 1'066 | 1'133 | 1'278 |
| Holzbau unteres Preissegment | 772 | 912 | 958 | 1'053 | 1'139 |
| Holzbau oberes Preissegment | 1'015 | 1'066 | **1'100** | 1'194 | 1'799 |

Aufpreis gegenüber dem Massivbau-Median 974: unteres Preissegment **−1.6 %** (Parität), oberes
Preissegment **+12.9 %**, gesamt +9.4 %.

**Die Spreizung zwischen den beiden Bezugsgrössen ist real und bleibt bestehen** (oberes Segment
+44.8 % auf HNF gegen +12.9 % auf GV), sie hat aber **nicht** die bisher vermutete Ursache: da
Stichprobe, Studie und Preisstand identisch sind, bleibt allein die **Bezugsgrösse** als Erklärung
— HNF zählt definitionsgemäss nur oberirdische Nutzfläche, GV das ganze Volumen. Ein gemeinsamer
Zuschlag wird daraus weiterhin NICHT gebildet. Der GV-Zuschlag gilt ausschliesslich für die
CHF/m³-GV-Kennwerte der KB `wissen/grobkosten`, der HNF-Zuschlag ausschliesslich für Abschnitt 3.
Warum dieselbe Stichprobe je nach Bezugsgrösse so weit auseinanderläuft, ist als offene Frage in
`wissen/grobkosten/wiki/QUESTIONS.md` angemeldet.

## 4. JANS-Richtwerte (Synthese, Stand 2023, inkl. Teuerung)

| Anwendung | Richtwert | Bemerkung |
|---|---|---|
| Wohnen MFH Neubau, Massivbau | ≈ 4'800 CHF/m² HNF | BKP 1–5; Band 3'500–6'000 |
| Wohnen MFH Neubau, Holzbau | ≈ 5'400 CHF/m² HNF | Massivbau + 10–15 % |
| Bezug Geschossflaeche | ≈ 3'100 CHF/m² GF | BKP 1–5; Median + Teuerung |
| Umrechnung | HNF ≈ 0.70 × GF | HNF-Effizienz Wohnbau |

## 5. Teuerung — Pflichthinweis beim Uebernehmen aelterer Benchmarks

- Aeltere Benchmarks (Wüest bis 2021, SIA 2020) **mind. +10 %** (Baukostensteigerung seit 2021).
- Zusaetzlich **+10–15 %** fuer anspruchsvollere Standards/Beduerfnisse ggue. vor 10 Jahren.
- ZH-Index Wohnbaupreise Neubau **+8.3 %** (Okt. 2021–Okt. 2022).
- Wohnbauprojekte 2023 rund **+30 %** teurer als vor 10 Jahren.

## Verwendung

Fuer Wohnbau-Grobschaetzungen diese m²-Werte verwenden (Healthcare → Wüest-Healthcare-PDF in
`referenzen/`). Schnelle m³-GV-Variante: Skill `grobkosten-onepager` + KB `wissen/grobkosten`
(m³-Kennwerte sind an diese m²-Benchmarks anzukoppeln). Immer Objektart, Standard, Bauweise und
Region nennen und ±25 % deklarieren.
