# Kosten-Kennwerte (Grobkostenschätzung Studien-Stufe)

Aus den realen Marktwert-/Grobkostendateien (Ebmatingen Marktwertanalyse 2024, WALD,
Steinhof). **Richtwerte mit Stand-Datum** — vor Verwendung Teuerung/Baupreisindex prüfen.
BKP-Tiefe auf Studien-Stufe: **BKP 1–5 Hauptgruppen**, nicht Detail-BKP. Bei jeder BKP-Nummer
gilt die Rule `bkp-2017-referenz`.

## Erstellungskosten Wohnen — CHF/m² HNF, BKP 1–5, inkl. MwSt + PP (Stand 2024, Ebmatingen)
| Nutzung / Standard | CHF/m² HNF |
|---|---|
| Wohnen normale Lage | 5'300 |
| Wohnen gute Lage | 5'800 |
| Wohnen minimal | 4'700 |
| Wohnen überdurchschnittlich/gehoben | 7'000 |
| STWE Luxus | 11'000 |
| Villa Luxus | 16'000 |
| Büro gute Lage | 4'500 |
| Büro ausgebaut | 5'500 |
| Gewerbe industriell | 2'900 |
| Gewerbehalle einfach | 2'500 |
| Lagerhalle roh | 1'800 |
| Verkauf/Ladenfläche | 4'500 |

## Spezial-Zuschläge (auf den Basiskennwert)
Hochhaus **+25 %** · Anbau/Erweiterung **+20 %** · Aufstockung **+35 %** ·
Alterswohnen **+10 %** · Pflege **+20–25 %** · Gestaltungsplan mit Wettbewerb **+0.4–1.2 Mio**.
Geschäftsflächen-Ertrag grob mit **5.5 % Bruttorendite** kapitalisieren.

## Kubaturmethode — CHF/m³ GV (alternative Grobschätzung)
- Wohnen Vollausbau ~**CHF 2'400/m³ GV** (Ebmatingen-Grobkosten, BKP-2-Kennwert).
- Healthcare/Pflege höher; Steinhof rechnete **CHF 1'700/m³** (älterer Stand) bzw.
  WALD **CHF 4'000/m² GF** (Pflegeheim). → Kennwert immer mit Nutzung + Jahr belegen.

## Wüest-Partner-Benchmarks Wohnen (Vollausbau)
- CHF/m² GF: Median **2'800** (Spanne 2'500–3'500 EFH/MFH).
- CHF/m² HNF: Median **~4'400** (bis 2021); inkl. Teuerung Mitte 2023 mind. **4'800**;
  selektive MFH-Auswahl 5'310–6'110/m² HNF inkl. 15 % Teuerung.
- Faustregeln: GF→HNF über Effizienz **0.70**; +20 % Kostensteigerung seit ~2014;
  Wohnbaupreise 2023 rund **+30 %** ggü. 2014; **Baupreisindex Hochbau Okt. 2023 = 114.8**.

## Marktdaten (Verkauf/Miete) — UBS Real Estate Local Fact Sheet (Q3 2023, Beleg Ebmatingen/Steinhof)
- Verkaufspreis EW CHF/m²: CH 7'031 · Kt. ZH 9'063 · Thalwil 16'106 · Wädenswil 12'846 ·
  Kt. SZ 8'753 · Einsiedeln 9'148.
- Mietzins Thalwil Median 324 CHF/m²/Jahr. Baulandpreis Zimmerberg mittlere Lage MFH ~4'200/m².
Das UBS-Fact-Sheet der **konkreten Gemeinde** ist die JANS-Standard-Marktquelle (je Lageklasse
schlecht/mittel/top: Verkaufspreis, Mietzins, Baulandpreis pro m²). Ergänzend Makleranalyse.

## Healthcare-Wirtschaftlichkeit (Pflegeheim, Beleg WALD)
Pflegeplatzkosten/Monat, Hotellerie-Taxe; Abschreibung **33 Jahre linear** (CURAVIVA);
BWO-Referenzzinssatz **1.75 %**; Unterhalt + Verwaltung je 0.5 %; Bruttorendite (Mietertrag/
Investition) ~6.8 %, Nettorendite via Annuität ~1.1 % (Sensitivität 2 % Amortisation → 3.3 %).

## Quellen-Hierarchie Kosten
1. Skill `kostenschaetzung` (Wüest-Partner-Kennwerte, Healthcare) — Primärquelle.
2. UBS Real Estate Local Fact Sheet der Gemeinde (Markt/Verkauf/Miete/Bauland).
3. BFS-Baupreisindex Hochbau (Teuerungskorrektur auf den Kennwert-Stand).
4. Eigene JANS-Kennwerte oben (mit Stand-Datum, vor Gebrauch teuern).
