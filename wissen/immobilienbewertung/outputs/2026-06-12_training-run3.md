# Training-Run 3 — Immobilienbewertung (2026-06-12)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Der 236-seitige Wüest-Kurs
ist seit Run 1/2 vollständig eingearbeitet; dieser Lauf zog die nächsten offenen E-Lektionen
(E3 Rest, E4) und die T-Aufgaben T7/T13 — alle aus belegten PDF-Quellen, kein Web nötig.

## Die 10 Themen dieses Laufs

| # | Thema | Quelle (+ Seite) | Ziel-Artikel |
|---|---|---|---|
| 1 | Mietwert-Korrekturfaktoren Tab. 14 (Punktesystem Wohnlage + Bauweise/Alter/Heizung) | Schätzungsanleitung Kap. 5, S. 16-18 | ertragswert-dcf |
| 2 | Mietwert-Korrekturraster Tab. 15 (8 Kriterien ±9 %) | Schätzungsanleitung Kap. 5, S. 19 | ertragswert-dcf |
| 3 | Gastgewerbe-Umsatzmiete Tab. 25-28 (Restauration 7-16 %, Logement 8-50 %, Sitzplatz-/Umsatz-Richtwerte) | Schätzungsanleitung Kap. 5, S. 35-38 | ertragswert-dcf |
| 4 | Nutzflächen-Anrechnung Tab. 12 + Raumeinheiten RE Tab. 13 | Schätzungsanleitung Kap. 5, S. 13-15 | flaechendefinitionen-sia |
| 5 | Hedonik-Methodik: WP-Standortreport-Aufbau | WP Standortinformation Langenthal, 21.06.2023 (13 S.) | vergleichswert-hedonisch |
| 6 | UBS-FS-Methodik (Quantil-Definition, 11-Kriterien-Standort-Rating, BFS-Typen, MS-Region, Datenquellen) | UBS-FS Glossar S. 13 | marktdaten-gemeinden/README, vergleichswert-hedonisch |
| 7 | Marktblatt Wald (ZH) — UBS-FS 12/2023 | UBS-FS Wald (15 S.) | marktdaten-gemeinden/zh-wald-8636 (neu) |
| 8 | Marktblatt Maur (ZH) — UBS-FS 7/2024 | UBS-FS Maur S. 1-4 | marktdaten-gemeinden/zh-maur-8124 (neu) |
| 9 | Marktblatt Einsiedeln (SZ) — UBS-FS 12/2023 | UBS-FS Einsiedeln S. 1-4 | marktdaten-gemeinden/sz-einsiedeln-8840 (neu) |
| 10 | Marktblatt Wädenswil (ZH) — UBS-FS 12/2023 | UBS-FS Wädenswil S. 1-4 | marktdaten-gemeinden/zh-waedenswil-8820 (neu) |

## Was gelernt / eingearbeitet

- **Mietwertberechnung sauber belegt** (Lücke T13): Wie aus einem örtlichen Basis-Mietniveau
  ein objektscharfer Mietwert wird — über das Punktesystem (Tab. 14, Notenskala 1-10, 30 P =
  neutral) und das ±9 %-Kriterienraster (Tab. 15, 8 Kriterien). Das schliesst methodisch die
  Brücke zwischen dem hedonischen Median ([[vergleichswert-hedonisch]]) und dem
  Ertragswert-Cashflow ([[ertragswert-dcf]]).
- **Gastgewerbe als Umsatzmiete** (Tab. 25-28): Mietwert = % vom Umsatz statt CHF/m²
  (Restauration 7-16 %, Hotellerie 8-50 %), inkl. Sitzplatz-Schätzung und Gross-/Klein-
  inventar-Abgrenzung. Relevant für gemischte MFH mit Gastro-EG.
- **Nutzflächen-/RE-Logik** (Tab. 12/13): amtliche Anrechnung (voll/½/¼/nicht) liegt näher an
  der bewertungsrelevanten HNF/Wohnfläche als die geometrische SIA-416-GF — wichtige
  Präzisierung in [[flaechendefinitionen-sia]].
- **Hedonik-Methodik** (T7): Der WP-Standortreport (Beispiel Langenthal) und das UBS-FS-Glossar
  zeigen das gemeinsame Quantil-Prinzip; Baulandpreise im WP-Report sind selbst
  residualmodelliert → direkter Link zur [[residualwertmethode]]. UBS-FS-Methodik
  (11 Standort-Kriterien, BFS-Typen, MS-Region, Datenquellen je Block) in der README dokumentiert.
- **4 neue Gemeinde-Marktblätter** (von 2 auf 6): Maur, Wald, Wädenswil (ZH) + Einsiedeln (SZ),
  je mit vollständigen Quantil-Tabellen EFH/EW/Miete/Bauland/Geschäft + Preis-Miet-Verhältnis.
  Befund: **Wald = Healthcare-Standort** (29.7 % Gesundheits-Beschäftigung vs. CH 13.2 %) →
  Bezug zum Projekt 2410 WALD; Wald/Einsiedeln preislich tief bzw. mit starkem Wachstum,
  Maur/Wädenswil über Kantonsschnitt (See-/Pfannenstiel-Nähe).

## Was geändert (Artikel + Register)

- **Neu**: 4 Marktblätter unter `wiki/marktdaten-gemeinden/`.
- **ertragswert-dcf.md**: Mietwertberechnung (Tab. 14/15) + Gastgewerbe (Tab. 25-28); status
  established (Mietwert/Gastro ergänzt).
- **flaechendefinitionen-sia.md**: Nutzflächen-Anrechnung (Tab. 12) + Raumeinheiten (Tab. 13).
- **vergleichswert-hedonisch.md**: WP-Standortreport-Aufbau + UBS-FS-vs-WP; status emerging →
  **established**.
- **marktdaten-gemeinden/README.md**: 6-Gemeinden-Tabelle + UBS-FS-Methodik-Sektion + Hinweis
  auf zwei FS-Generationen.
- Register: INDEX (Statusbumps + 4 Gemeinden), curriculum (E3 vollständig, E4 teilweise),
  _INGESTED (Schätzungsanleitung vollständig, Hedonik-Report eingearbeitet, UBS-FS 6 Gemeinden),
  wissensluecken (T13 erledigt, T7 teilweise, neu T14 SREBI), CHANGELOG.

## Datenstand-Warnungen (⚠)

Alle vier neuen Marktblätter tragen ⚠: Wald/Wädenswil/Einsiedeln Stand 2023-Q3, Maur 2024-Q1
— älter als 18 Monate. Vor Anwendung Marktpuls (T10) / neue Fact Sheets prüfen.

## Was als nächstes (Run 4)

1. **T10 Marktpuls 2026** (Web): SNB-Leitzins, hypothekarischer Referenzzinssatz, Mietzins-/
   Baupreisentwicklung — die Kurszahlen in [[investorenmarkt-makro]] sind Stand 2022/23.
2. **T14 UBS SREBI Bubble Index Q2-2024** (`srebi-q2-2024-de.pdf`) — Blasenrisiko-Karte.
3. Restliche UBS-FS kompilieren (Thalwil, Regensdorf, Luzern, Muri).
4. T9 reale JANS-Projektfälle (IMMO-01 LB/RW/MA) als Referenz-Benchmarks.
5. Bei Freigabe: E2/D4 Excel-Tool-Logik, E5/D8 Kennwerte-DOCX.
