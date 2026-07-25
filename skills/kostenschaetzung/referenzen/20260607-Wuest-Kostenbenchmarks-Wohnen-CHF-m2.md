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

## 3. Bauweise Massivbau vs. Holzbau (2023, CHF/m² HNF, BKP 1–5; aus Spread abgelesen)

| Bauweise | unterer | Median | oberer |
|---|---|---|---|
| Massivbau 2023 | ≈ 3'500 | **≈ 4'500** | ≈ 7'000 |
| Holzbau 2023 | ≈ 4'700 | **≈ 5'400** | ≈ 6'700 |
| Holzbau unteres Preissegment | ≈ 4'600 | ≈ 5'000 | ≈ 5'400 |
| Holzbau oberes Preissegment | ≈ 5'200 | ≈ 6'200 | ≈ 6'700 |

Holzbau liegt rund 10–20 % ueber Massivbau.

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
