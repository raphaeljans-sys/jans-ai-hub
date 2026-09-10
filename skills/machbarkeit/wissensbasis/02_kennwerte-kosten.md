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
  > ⚠ **needs-decision — Wissens-Chef Run 15 (25.07.2026), adversarial BESTÄTIGT.** Für dasselbe
  > Projekt Ebmatingen führt die KB `wissen/immobilienbewertung/wiki/realwert-sachwert` **~855
  > CHF/m³ GV (BKP 1–5, LB 3932)** — Faktor 2.8 Unterschied, durch keine Bezugsgrössen-Differenz
  > erklärbar (Baumasse↔GV ergäbe laut führender KB nur 1.25–1.45). Die 855 sind dreifach gestützt
  > (grobkosten-Band 850–1'050, Wüest-Indexreihe, Healthcare-8-Objekt-Vergleich), die 2'400 hier
  > quellenlos. **Vermutung, nicht verifiziert:** die 2'400 könnten CHF/m² GF sein (Einheitenfehler)
  > — deshalb wird hier NICHT eigenmächtig ersetzt. Bis zum Abgleich mit der Original-Grobkosten-
  > schätzung (`2412 Ebmatingen/09_Dokumente/Im Grossacher 2/Grobkostenberechnung/…Stand241125.xlsx`)
  > für Grobschätzungen den Wert der führenden KB `wissen/grobkosten/wiki/kennwerte` verwenden.
  > Vorlage: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

  > **Solange dieses Flag steht: den Wert 2'400 NICHT verwenden.** Für CHF/m³ GV Wohnen den Band
  > **850–1'050** (Anker ~1'020) aus der führenden KB `wissen/grobkosten/wiki/kennwerte` einsetzen.
  > Gegengeprüft und unverändert am **26.08.2026 (Wissens-Chef Run 44)**: der Faktor 2.8 lässt sich
  > auch über die Bezugsgrössen nicht erklären — BKP 2 ist Teilmenge von BKP 1–5 und müsste
  > *tiefer* liegen, nicht höher; die Etikett-Differenz vergrössert den Widerspruch, statt ihn
  > aufzulösen. **Kein Entscheid Raphaels nötig** — offen ist allein der Abgleich mit der
  > Original-xlsx im Projektordner. Seit dem 25.07.2026 stand der Punkt nur im Laufbericht und im
  > CHANGELOG und war damit nicht wiedervorlagefähig; er ist jetzt in
  > `wissen/koordination/QUERBEZUEGE.md` registriert (Run-15-Abschnitt, Nachtrag 26.08.2026).
- Healthcare/Pflege höher; Steinhof rechnete **CHF 1'700/m³** (älterer Stand) bzw.
  WALD **CHF 4'000/m² GF** (Pflegeheim). → Kennwert immer mit Nutzung + Jahr belegen.

  > ⚠ **Für Healthcare führt `immobilienbewertung`, nicht diese Datei — Zeiger gesetzt vom
  > Wissens-Chef Lauf 56, 09.09.2026.** Die Führungsmatrix
  > (`wissen/koordination/QUERBEZUEGE.md`) weist «Healthcare-Kostenkennwerte CHF/m³ GV + CHF je
  > Pflegeplatz» ausdrücklich `wissen/immobilienbewertung/wiki/realwert-sachwert.md` zu und nennt
  > `machbarkeit` dort als **Konsumenten**; `grobkosten` führt Healthcare ausdrücklich **nicht**.
  > Der belegte Realwert-Bestand dort lautet **CHF/m³ GV 826–1'420 (Median ~1'100)** und
  > **CHF/m² GF 2'623–4'250**, je aus benannten Referenzobjekten mit Baujahr.
  > **Kein Zahlenwiderspruch behauptet:** die Zeile darüber nennt für «Steinhof 1'700» weder
  > BKP-Tiefe noch Jahr, das Band ist auf **BKP 2 Gebäude** bezogen — ein BKP-1–5-Wert läge
  > zulässigerweise höher. Genau das ist der Punkt: die Zeile verlangt selbst «Kennwert immer mit
  > Nutzung + Jahr belegen» und erfüllt es nicht. Vor Gebrauch dort gegenlesen, insbesondere den
  > **Aussenflächen-Vorbehalt** (GV nach SIA 416 hat kein Pendant für Balkone/Laubengänge — bei
  > Pflegebauten mit Zimmerloggien zusätzlich über CHF/m² GF prüfen).
  > Die «Quellen-Hierarchie Kosten» am Ende dieser Datei nennt `immobilienbewertung` bislang nicht.

## Wüest-Partner-Benchmarks Wohnen (Vollausbau)
- CHF/m² GF: Median **2'800** (Spanne 2'500–3'500 EFH/MFH).
- CHF/m² HNF: Median **~4'400** (bis 2021); inkl. Teuerung Mitte 2023 mind. **4'800**;
  selektive MFH-Auswahl 5'310–6'110/m² HNF inkl. 15 % Teuerung.
- Faustregeln: GF→HNF über Effizienz **0.70**; +20 % Kostensteigerung seit ~2014;
  Wohnbaupreise 2023 rund **+30 %** ggü. 2014; **Baupreisindex Hochbau Okt. 2023 = 114.8**
  (BFS, Hochbau Schweiz, **Basis Okt. 2020 = 100**; Basisangabe nachgetragen 10.09.2026,
  Wissens-Chef Lauf 57, Beleg `wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-C-bfs-werkmaterial.md`.
  Seit der Rebasierung gilt Basis Okt. 2025 = 100; die Werte sind ohne Verkettung **nicht**
  direkt vergleichbar, sonst entsteht eine scheinbare Deflation von rund 12 %).

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
3. BFS-Baupreisindex Hochbau (Teuerungskorrektur auf den Kennwert-Stand). Aktuelle Teilindizes je
   Bauwerksart (Stand April 2026, Basis Okt. 2025 = 100: Hochbau 100.5, Neubau MFH 100.7) führt
   `wissen/immobilienbewertung/wiki/realwert-sachwert.md`; die fertigen Teuerungsfaktoren Region
   Zürich (ZIW) führt `wissen/grobkosten/wiki/kennwerte.md`, Abschnitt «Baupreisindex ZH». Immer
   mit der passenden Bauwerksart indexieren, nie mit dem Totalwert (Nutzungsregel 7 in
   `wissen/immobilienbewertung/wiki/datenquellen-registry.md`). Zeiger gesetzt 10.09.2026,
   Wissens-Chef Lauf 57.
4. Eigene JANS-Kennwerte oben (mit Stand-Datum, vor Gebrauch teuern).
