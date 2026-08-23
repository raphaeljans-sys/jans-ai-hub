# Vertiefungslauf 3 — die kantonale Handänderungsstatistik schliesst D14 und D2 für den Kanton Zürich

**Datum:** 23.08.2026 · **Station:** Revendo · **Auftrag:** Raphael — Wissens-Bibliothekar im
Dauerbetrieb, zweite Runde durch die vier Wissensbasen, beginnend bei `immobilienbewertung`.

**Ausgangslage:** Nach der ersten Runde (Vertiefungsläufe 1 und 2) war der wertvollste noch offene
Punkt dieser KB **D14** — «kein von Wüest Partner unabhängiger Gegencheck der Preis-NIVEAUS».
D14 hatte den Lösungsweg selbst benannt («IAZI/CIFI oder die kantonale Handänderungsstatistik
ZH/SZ») und ihn zugleich als Bring-Schuld abgeschrieben: **«beides kostenpflichtig bzw.
zugangsgebunden».** Genau diese Annahme ist geprüft worden.

---

## Kernergebnis

**Die Annahme war falsch.** Das Amt für Statistik und Daten des Kantons Zürich publiziert die
Handänderungsstatistik als **Open Government Data** — über opendata.swiss und
`daten.statistik.zh.ch`, als CSV und JSON, **ohne Abo und ohne Zugangsgesuch**. Grundlage sind die
**Handänderungsanzeigen der Grundbuchämter und Notariate**: effektiv bezahlte Preise aus
vollzogenen Transaktionen, kein hedonisches Modell und keine Inserate.

Damit hat diese KB erstmals eine **zweite, methodisch unabhängige Preisquellenfamilie**. Bisher
stammte alles aus der Wüest-Familie (UBS-Fact-Sheets sind laut eigenem Quellenverzeichnis ein
WP-Derivat, die WP-Reports ohnehin) — zwei übereinstimmende Zahlen daraus waren nie eine
Bestätigung.

Neuer Artikel: **`wiki/amtliche-preisstatistik-zh.md`** (217 Zeilen, `established`).

## 1 · Bodenpreise nach Immobilienmarktregion — der belastbare Teil (schliesst D2 für Kt. ZH)

Effektive Preise, über fünf Jahre gepoolt, **Zeitraum 2021–2025, Stand 2025/Q4**, CHF je m²
Grundstücksfläche:

| Region | Fälle | Q10 | Q25 | **Median** | Q75 | Q90 |
|---|---|---|---|---|---|---|
| Stadt Zürich | 114 | 2'238 | 5'153 | **6'747** | 10'062 | 13'293 |
| Seegemeinden | 240 | 539 | 1'685 | **3'115** | 4'441 | 6'111 |
| Stadt Winterthur | 51 | 800 | 1'442 | **2'087** | 2'984 | 4'274 |
| Agglomerationsgemeinden | 406 | 602 | 1'291 | **2'065** | 2'719 | 3'731 |
| Landgemeinden | 551 | 319 | 559 | **1'039** | 1'593 | 2'113 |
| **Kanton Zürich** | **1'362** | 435 | 900 | **1'742** | 2'896 | 5'570 |

Die Zuteilung der 15 JANS-Bezugsgemeinden ist aus der amtlichen Gemeindeliste (Stand 07.04.2026)
übernommen: **See** — Kilchberg, Oberrieden, Richterswil, Thalwil, Küsnacht, Meilen, Zollikon,
Wädenswil, Horgen · **Agglomeration** — Niederhasli, Regensdorf, Adliswil, Langnau a.A., Maur ·
**Land** — Wald. Für die Kernmärkte am linken und rechten Seeufer gilt damit der
Seegemeinden-Median **3'115 CHF/m²**, Q25–Q75 **1'685–4'441**.

**D2** («Bodenpreise nur Screenshots») ist damit für den ganzen Kanton Zürich geschlossen — nach
der Stadt Zürich aus Vertiefungslauf 2 nun auch das Umland. Offen bleibt nur noch der **Kanton
Schwyz**; Priorität von hoch auf mittel zurückgestuft.

## 2 · Der wichtigste Warnbefund: Gemeinde-Bodenpreise sind modelliert, nicht gemessen

Der Gemeinde-Datensatz führt zwei Wertepaare nebeneinander — `medianEffektiv` und `medianModel` —
plus die Fallzahl. **Bei den JANS-Gemeinden ist der effektive Median 2025 fast durchgehend leer**,
weil pro Gemeinde und Jahr nur **0 bis 6** Baulandhandänderungen anfallen. Wo doch einer existiert,
weicht er massiv vom Modellwert ab:

| Gemeinde | Fälle 2025 | effektiv | Modell | Verhältnis |
|---|---|---|---|---|
| Wädenswil | 4 | **735** | 1'558 | 0.47 |
| Stadt Zürich | 6 | **11'169** | 7'836 | 1.43 |

Das ist kein Widerspruch der Quelle, sondern die unvermeidliche Streuung eines Medians aus vier
bzw. sechs Grundstücken — eine Restparzelle oder ein Filetstück verschiebt ihn. **Praxisregel, im
Artikel verankert: auf Gemeindeebene keinen Bodenpreis-Einzeljahreswert verwenden**, weder den
effektiven (zu wenige Fälle) noch den modellierten (nicht gemessen). Belastbar ist die regionale
5-Jahres-Reihe.

Ohne diesen Befund hätte die KB einen «amtlichen Gemeinde-Bodenpreis» zitiert, der ein Modellwert
ist — genau die Art stiller Fehler, die später niemand mehr findet.

## 3 · Der Gegencheck gegen die UBS-Fact-Sheets (D14)

Die beiden Quellen messen verschiedene Grössen — der Kanton Verkaufspreise **total**, die
Fact-Sheets **CHF je m²**. Ein direkter Zahlenvergleich ist unmöglich, ein Plausibilitäts-Check
über die implizite Fläche dagegen aussagekräftig:

```
implizite Fläche = kantonaler Median-Verkaufspreis / UBS-Median CHF je m²
```

| Gemeinde | UBS-Stand | EFH: implizite Fläche | EW: implizite Fläche |
|---|---|---|---|
| Zollikon | 12/2025 | 163 m² | 124 m² |
| Langnau a.A. | 12/2025 | 151 m² | **80 m²** |
| Thalwil | 2025 | 159 m² | 118 m² |
| Wädenswil | 7/2024 | 174 m² | 115 m² |
| Maur | 2024-Q1 | 189 m² | 128 m² |
| Regensdorf | 12/2023 | 132 m² | 100 m² |
| Wald | 12/2023 | 138 m² | 110 m² |

**Ergebnis: die beiden Quellenfamilien sind miteinander vereinbar.** EFH **132–189 m²** (Median
159), EW **80–128 m²** (Median 115) — über ein Preisniveau-Spektrum von Faktor 2.5 (Wald bis
Zollikon) kein einziger unmöglicher Wert.

**Was der Check leistet und was nicht.** Er ist ein **Plausibilitäts-, kein Identitätsnachweis**;
einen gleichgerichteten Fehler beider Quellen könnte er nicht entdecken. Da die Methoden
grundverschieden sind (Grundbuch-Ist gegen hedonisches Modell), ist ein solcher Fehler aber
unwahrscheinlich. Die implizite Fläche ist zudem **keine SIA-416-Grösse** — sie folgt der
Flächendefinition der Fact-Sheets.

**Ein Ausreisser, bewusst nicht wegerklärt:** **Langnau a.A. EW = 80 m²** liegt deutlich unter dem
Feld. Ursache nicht entschieden — kleinste Fallzahl des Vergleichs (n = 44) oder tatsächlich
kleinteiligerer Bestand. Als offener Einzelpunkt vermerkt.

**Nebenbefund zu D1 (veraltete Fact Sheets):** bei **Regensdorf und Wald** ist der UBS-Stand
12/2023 **älter** als der kantonale Poolingzeitraum 2023–2025. Wäre der UBS-Preis aktueller, fiele
die implizite Fläche kleiner aus — die beiden tiefsten EFH-Werte (132 und 138 m²) sind deshalb
wahrscheinlich ein Altersartefakt der UBS-Seite, kein Flächenbefund. Ein weiteres Argument für die
Neubestellung dieser beiden Fact Sheets.

## 4 · Vorbehalte der Quelle, die mitzuführen sind

1. **Die letzten drei Jahre und das laufende Jahr sind provisorisch** — rückwirkende
   Neuklassifizierung, wenn nach einem Verkauf ein Gebäude abgebrochen wird. **Der gesamte
   Poolingzeitraum 2023–2025 der EFH-/EW-Tabellen fällt in diesen Bereich.**
2. **Die Statistik wird gerade modernisiert.** Die Quelle kündigt eine Neustrukturierung des
   Datenangebots für das nächste Jahr an und stellt in Frage, ob alle OGD-Ressourcen in derselben
   Form bestehen bleiben — **Ressourcen-IDs vor der nächsten Verwendung neu auflösen**, nicht die
   Direktlinks blind wiederverwenden.
3. **Nur Kanton Zürich.**
4. Gemeinde-Bodenpreise: siehe Abschnitt 2.

## 5 · Selbstkorrektur aus Vertiefungslauf 2

Der verkettete ZIW-Stand zum 01.04.2026 stand in `realwert-sachwert.md` mit **1'220.8**
(Weg über den Zwischenstand 01.10.2025 ≈ 1'213.5 × 1.006), während `grobkosten` seine
Faktorentabelle auf **1'221.3** rechnet (01.04.2025 = 1'210.4 × publizierte Jahresteuerung 1.009).
Beide Wege sind zulässig, der Unterschied beträgt 0.04 % und ändert den gerundeten Faktor
**1.358 nicht** — aber zwei Zahlen für denselben Stichtag in zwei KBs sind genau die Divergenz,
vor der der Doppelführungs-Befund derselben Seite warnt. **Vereinheitlicht auf 1'221.3**, weil
dieser Weg nur einen einzigen Kettenschritt enthält; der andere Weg bleibt als Gegenprobe
dokumentiert.

## Geänderte Dateien

- **NEU** `wiki/amtliche-preisstatistik-zh.md` — voller Artikel mit allen Tabellen und Vorbehalten.
- `wiki/INDEX.md` — Artikel eingetragen.
- `wiki/datenquellen-registry.md` — Handänderungsstatistik als Quelle registriert.
- `wiki/wissensluecken.md` — **D14 beantwortet** (Originaltext erhalten, Antwort angehängt,
  Priorität mittel → niedrig), **D2** für den ganzen Kanton ZH geschlossen (hoch → mittel),
  Run-Eintrag.
- `wiki/realwert-sachwert.md` — Selbstkorrektur 1'220.8 → 1'221.3.
- `CHANGELOG.md` — Eintrag.

## Quellen

Amt für Statistik und Daten Kanton Zürich, Datensatz **«Immobilienpreise im Kanton Zürich»**
(opendata.swiss `immobilienpreise-im-kanton-zurich`, Metadaten-Stand 23.08.2026). Verwendete
Ressourcen, alle am 23.08.2026 heruntergeladen und ausgewertet:
`KTZH_00003158_00006780.csv` (Bodenpreise nach Immobilienmarktregion, 288 Zeilen) ·
`…_00006785.json` (Wohnbauland Gemeindeebene, 24'000 Zeilen) ·
`…_00006788.json` (EFH Gemeindeebene, 8'160 Zeilen) ·
`…_00006789.json` (EW Gemeindeebene, 8'160 Zeilen) ·
`…_00006783.xlsx` (Zuteilung Gemeinden zu Immobilienmarktregionen, Stand 07.04.2026).
UBS-Vergleichswerte aus den in dieser KB kompilierten Fact-Sheet-Blättern
(`wiki/marktdaten-gemeinden/`).
