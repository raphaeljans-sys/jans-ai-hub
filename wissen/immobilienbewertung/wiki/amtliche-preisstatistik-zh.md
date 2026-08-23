---
title: Amtliche Preisstatistik Kanton Zürich — Handänderungsstatistik als WP-unabhängige Quelle
status: established
last_updated: 2026-08-23
sources: [Amt für Statistik und Daten Kanton Zürich, Datensatz «Immobilienpreise im Kanton Zürich» (opendata.swiss `immobilienpreise-im-kanton-zurich`, Metadaten-Stand 23.08.2026) — Ressourcen `KTZH_00003158_00006780.csv` (Bodenpreise nach Immobilienmarktregion, 5-Jahres-Pooling, Stand 2025/Q4), `…_00006785.json` (Wohnbaulandpreise Gemeindeebene), `…_00006788.json` (Einfamilienhauspreise Gemeindeebene), `…_00006789.json` (Eigentumswohnungspreise Gemeindeebene), `…_00006783.xlsx` (Zuteilung Gemeinden zu Immobilienmarktregionen, aktualisiert 07.04.2026); alle heruntergeladen und ausgewertet 23.08.2026]
links: [[datenquellen-registry]], [[vergleichswert-hedonisch]], [[lageklasse-landwertanteil]], [[realwert-sachwert]], [[residualwertmethode]], [[wissensluecken]]
---

# Amtliche Preisstatistik Kanton Zürich

## Warum diese Quelle wichtig ist

Diese Wissensbasis hatte bis zum 23.08.2026 ein strukturelles Problem, das in
[[wissensluecken]] als **D14** geführt wird: **alle bisherigen Preisquellen stammen aus derselben
Familie.** Die UBS Real Estate Local Fact Sheets sind ein Wüest-Partner-Derivat, die
Wüest-Reports ebenso — zwei übereinstimmende Zahlen daraus sind keine gegenseitige Bestätigung,
sondern zweimal dieselbe Messung (Nutzungsregel 6 in [[datenquellen-registry]], Befund
Wissens-Chef 07.08.2026).

Die **Handänderungsstatistik des Kantons Zürich** ist genau die fehlende zweite Familie:

- **Grundlage sind Handänderungsanzeigen der Grundbuchämter und Notariate** — jeder
  Eigentumswechsel wird im Grundbuch festgehalten. Das sind **effektiv bezahlte Preise aus
  vollzogenen Transaktionen**, keine Inserate und kein hedonisches Modell.
- Erhoben vom **Statistischen Amt des Kantons Zürich**, publiziert als **Open Government Data**
  über opendata.swiss und `daten.statistik.zh.ch` — kein Abo, kein Zugangsgesuch, maschinenlesbar
  als CSV und JSON.
- Methodisch damit **vollständig unabhängig** von der Wüest-/UBS-Familie.

## Was die Quelle liefert

| Produkt | Gliederung | Zeitraum | Format |
|---|---|---|---|
| Bodenpreise nach **Immobilienmarktregion**, 5 Jahre gepoolt, **effektive** Preise | 6 Regionen | 1974-1978 bis **2021-2025** | CSV |
| Wohnbaulandpreise **Gemeindeebene** | 160 Gebiete | 1974 bis 2025 | JSON |
| Einfamilienhauspreise **Gemeindeebene** | 160 Gebiete | 2007 bis **2025-2023** (3 Jahre gepoolt) | JSON |
| Eigentumswohnungspreise **Gemeindeebene** | 160 Gebiete | 2007 bis **2025-2023** (3 Jahre gepoolt) | JSON |
| Zuteilung Gemeinden → Immobilienmarktregion | 160 Gemeinden | Stand 07.04.2026 | XLSX |

Wichtig: Bodenpreise sind **CHF je m² Grundstücksfläche**, EFH- und EW-Preise sind
**Verkaufspreise in CHF total** — nicht CHF/m² Wohnfläche. Das ist der entscheidende Unterschied
zu den UBS-Fact-Sheets, die CHF/m² führen; siehe den Gegencheck unten.

## 1 · Bodenpreise nach Immobilienmarktregion — der belastbare Teil

**Effektive Preise, über fünf Jahre gepoolt, Zeitraum 2021-2025, Stand 2025/Q4.**
CHF je m² Grundstücksfläche:

| Immobilienmarktregion | Fälle | Q10 | Q25 | **Median** | Q75 | Q90 | Durchschnitt |
|---|---|---|---|---|---|---|---|
| Stadt Zürich | 114 | 2'238 | 5'153 | **6'747** | 10'062 | 13'293 | 8'282 |
| Seegemeinden | 240 | 539 | 1'685 | **3'115** | 4'441 | 6'111 | 3'290 |
| Stadt Winterthur | 51 | 800 | 1'442 | **2'087** | 2'984 | 4'274 | 2'323 |
| Agglomerationsgemeinden | 406 | 602 | 1'291 | **2'065** | 2'719 | 3'731 | 2'225 |
| Landgemeinden | 551 | 319 | 559 | **1'039** | 1'593 | 2'113 | 1'178 |
| **Kanton Zürich** | **1'362** | 435 | 900 | **1'742** | 2'896 | 5'570 | 2'500 |

Das ist der Teil, den man **ohne Vorbehalt zitieren kann**: effektiv gemessene Transaktionen,
ordentliche Fallzahlen, quartilsaufgelöst. Die Bandbreite Q25-Q75 ist in jeder Region breit
(Seegemeinden 1'685 bis 4'441) — ein Punktwert ohne Quartil ist auch hier keine Aussage.

**Zuteilung der JANS-Bezugsgemeinden** (Kriterium laut Quelle: Reisezeit in die Stadt Zürich nach
dem nationalen Personenverkehrsmodell 2017):

| Region | JANS-Gemeinden |
|---|---|
| **See** | Kilchberg (135) · Oberrieden (137) · Richterswil (138) · Thalwil (141) · Küsnacht (154) · Meilen (156) · Zollikon (161) · Wädenswil (293) · Horgen (295) |
| **Agglomeration** | Niederhasli (90) · Regensdorf (96) · Adliswil (131) · Langnau a.A. (136) · Maur (195) |
| **Land** | Wald (120) |

Für die JANS-Kernmärkte am linken und rechten Seeufer ist damit **«Seegemeinden»** die
einschlägige Region: Bodenpreis-Median **3'115 CHF/m²**, Q25-Q75 **1'685-4'441**.

## 2 · ⚠ Bodenpreise auf Gemeindeebene sind überwiegend MODELLIERT, nicht gemessen

Der Gemeinde-Datensatz führt zwei Wertepaare nebeneinander: `medianEffektiv` (mit
`q25Effektiv`/`q75Effektiv`) und `medianModel` (mit `x25Model`/`x75Model`) sowie die Fallzahl
`faelle`. **Bei den JANS-Gemeinden ist der effektive Median 2025 fast durchgehend leer**, weil
pro Gemeinde und Jahr nur 0 bis 6 Baulandhandänderungen anfallen:

| Gemeinde | Fälle 2025 | Median **effektiv** | Median **Modell** |
|---|---|---|---|
| Zollikon | 1 | — | 5'133 |
| Kilchberg | 0 | — | 5'077 |
| Küsnacht | 1 | — | 4'522 |
| Oberrieden | 1 | — | 3'293 |
| Thalwil | 0 | — | 3'259 |
| Meilen | 2 | — | 2'998 |
| Regensdorf | 0 | — | 2'439 |
| Adliswil | 0 | — | 2'338 |
| Langnau a.A. | 2 | — | 2'201 |
| Maur | 2 | — | 2'140 |
| Richterswil | 1 | — | 2'028 |
| Horgen | 2 | — | 1'957 |
| Niederhasli | 0 | — | 1'889 |
| Wald | 2 | — | 753 |
| **Wädenswil** | **4** | **735** | **1'558** |
| **Zürich** | **6** | **11'169** | **7'836** |

> ⚠ **Die beiden letzten Zeilen sind die Warnung.** Wo ein effektiver Median existiert, weicht er
> massiv vom Modellwert ab — Wädenswil **735 gegen 1'558** (Faktor 0.47), Stadt Zürich
> **11'169 gegen 7'836** (Faktor 1.43). Beides ist kein Widerspruch der Quelle, sondern die
> unvermeidliche Streuung eines Medians aus vier bzw. sechs Grundstücken: eine einzige
> Restparzelle oder ein einziges Filetstück verschiebt ihn. **Praxisregel: auf Gemeindeebene
> keinen Bodenpreis-Einzeljahreswert verwenden — weder den effektiven (zu wenige Fälle) noch den
> modellierten (nicht gemessen).** Für eine Bewertung ist die **regionale 5-Jahres-Reihe**
> oben der belastbare Weg, ergänzt um die parzellenscharfe Evidenz aus [[lageklasse-landwertanteil]]
> und dem ÖREB-Auszug.

## 3 · Preisniveaus EFH und Eigentumswohnung, Gemeindeebene

**Verkaufspreise in CHF total, Median und Quartile, über drei Jahre gepoolt (2025-2023).** Hier
sind die Fallzahlen tragfähig (18 bis 294 Verkäufe je Gemeinde):

| Gemeinde | Region | **EFH-Median** | n | **EW-Median** | n |
|---|---|---|---|---|---|
| Küsnacht | See | 4'350'000 | 65 | 2'675'000 | 134 |
| Kilchberg | See | 3'800'000 | 30 | 2'920'000 | 73 |
| Oberrieden | See | 3'687'500 | 18 | 1'840'000 | 49 |
| Zollikon | See | 3'185'000 | 45 | 2'480'000 | 127 |
| Meilen | See | 2'800'000 | 55 | 2'210'000 | 159 |
| Zürich | Stadt | 2'525'000 | 264 | 1'659'000 | 1'818 |
| Thalwil | See | 2'443'750 | 48 | 1'865'500 | 174 |
| Adliswil | Agglo | 2'250'000 | 47 | 1'420'000 | 109 |
| Wädenswil | See | 2'150'000 | 87 | 1'476'500 | 258 |
| Maur | Agglo | 2'105'000 | 95 | 1'400'000 | 141 |
| Horgen | See | 2'070'500 | 102 | 1'505'000 | 294 |
| Langnau a.A. | Agglo | 1'895'000 | 60 | 905'000 | 44 |
| Richterswil | See | 1'772'500 | 74 | 1'350'000 | 133 |
| Regensdorf | Agglo | 1'430'000 | 54 | 910'000 | 119 |
| Niederhasli | Agglo | 1'300'000 | 91 | 865'000 | 60 |
| Wald | Land | 1'097'500 | 68 | 776'500 | 104 |

Q25 und Q75 liegen im Datensatz je Zeile vor und sind bei jeder Verwendung mitzugeben.

## 4 · Der Gegencheck gegen die UBS-Fact-Sheets (D14 beantwortet)

Die beiden Quellen messen **verschiedene Grössen**: der Kanton Verkaufspreise total, die
UBS-Fact-Sheets CHF je m². Ein direkter Zahlenvergleich ist deshalb nicht möglich — wohl aber ein
**Plausibilitäts-Gegencheck über die implizite Fläche**:

```
implizite Fläche  =  kantonaler Median-Verkaufspreis  /  UBS-Median CHF je m²
```

Ergibt das eine Fläche im plausiblen Bereich, stützen sich die beiden unabhängigen Quellen
gegenseitig; liegt sie ausserhalb, hat mindestens eine ein Niveauproblem.

| Gemeinde | UBS-Stand | kant. EFH-Median | UBS EFH CHF/m² | **implizite Fläche** | kant. EW-Median | UBS EW CHF/m² | **implizite Fläche** |
|---|---|---|---|---|---|---|---|
| Zollikon | 12/2025 | 3'185'000 | 19'514 | **163 m²** | 2'480'000 | 20'000 | **124 m²** |
| Langnau a.A. | 12/2025 | 1'895'000 | 12'549 | **151 m²** | 905'000 | 11'358 | **80 m²** |
| Thalwil | 2025 | 2'443'750 | 15'384 | **159 m²** | 1'865'500 | 15'852 | **118 m²** |
| Wädenswil | 7/2024 | 2'150'000 | 12'359 | **174 m²** | 1'476'500 | 12'846 | **115 m²** |
| Maur | 2024-Q1 | 2'105'000 | 11'129 | **189 m²** | 1'400'000 | 10'903 | **128 m²** |
| Regensdorf | 12/2023 | 1'430'000 | 10'811 | **132 m²** | 910'000 | 9'098 | **100 m²** |
| Wald | 12/2023 | 1'097'500 | 7'937 | **138 m²** | 776'500 | 7'083 | **110 m²** |

**Ergebnis: die beiden Quellenfamilien sind miteinander vereinbar.** Die impliziten Flächen liegen
beim EFH zwischen **132 und 189 m²** (Median 159 m²) und bei der Eigentumswohnung zwischen
**80 und 128 m²** (Median 115 m²) — beides sind für Schweizer Verhältnisse durchgehend plausible
Grössen. Über sieben Gemeinden mit einem Preisniveau-Spektrum von Faktor 2.5 (Wald bis Zollikon)
ergibt sich kein einziger unmöglicher Wert. Das ist der **erste von Wüest Partner unabhängige
Gegencheck der Preis-NIVEAUS** in dieser KB.

**Ein auffälliger Punkt, nicht wegerklärt:** **Langnau a.A. EW = 80 m²** liegt deutlich unter dem
Feld (nächster Wert 100 m², Regensdorf). Mögliche Ursachen: die kleinste Fallzahl des Vergleichs
(n = 44) oder ein tatsächlich kleinteiligerer Eigentumswohnungsbestand. **Nicht entschieden** —
als offener Einzelpunkt vermerkt; wer in Langnau eine Eigentumswohnung bewertet, sollte die
Flächenannahme explizit prüfen statt den Gemeindeschnitt zu übernehmen.

**Was dieser Check leistet und was nicht.** Er ist ein **Plausibilitäts-, kein
Identitätsnachweis**: er prüft, ob Totalpreis und CHF-je-m² zusammen eine sinnvolle Fläche
ergeben. Einen gleichgerichteten Fehler beider Quellen könnte er nicht entdecken — aber die
Methoden sind grundverschieden (Grundbuch-Ist gegen hedonisches Modell), ein gleichgerichteter
Fehler ist damit unwahrscheinlich. Die implizite Fläche ist ausserdem **keine SIA-416-Grösse**:
sie folgt der Flächendefinition der UBS-Fact-Sheets, nicht [[flaechendefinitionen-sia]].

**Nebenbefund zu D1 (veraltete Fact Sheets):** bei **Regensdorf und Wald** ist der UBS-Stand
12/2023 **älter** als der kantonale Poolingzeitraum 2023-2025. Wäre der UBS-Preis aktueller, fiele
die implizite Fläche dort kleiner aus. Die beiden niedrigsten EFH-Werte der Tabelle (132 und
138 m²) sind deshalb wahrscheinlich ein Altersartefakt der UBS-Seite, kein Flächenbefund — ein
weiteres Argument für die Neubestellung dieser Fact Sheets.

## 4b · Wie veraltet sind die Fact Sheets wirklich? (D1 beziffert, 23.08.2026)

[[wissensluecken]] **D1** führt vier Fact Sheets mit ⚠ «veraltet», ohne zu sagen, **wie weit** sie
danebenliegen. Mit den kantonalen Reihen lässt sich das beziffern: für jede Gemeinde der
3-Jahres-Pool, der auf dem Jahr des Fact-Sheet-Stands endet, gegen den aktuellen Pool 2025–2023.

| Gemeinde | UBS-Stand | Vergleichspool | EFH damals → heute | Δ | EW damals → heute | Δ |
|---|---|---|---|---|---|---|
| Wädenswil | 7/2024 | 2024–2022 | 2'105'000 → 2'150'000 | **+2.1 %** | 1'468'000 → 1'476'500 | **+0.6 %** |
| Maur | 2024-Q1 | 2024–2022 | 2'020'000 → 2'105'000 | **+4.2 %** | 1'305'000 → 1'400'000 | **+7.3 %** |
| Regensdorf | 12/2023 | 2023–2021 | 1'532'500 → 1'430'000 | **−6.7 %** | 965'000 → 910'000 | **−5.7 %** |
| Wald | 12/2023 | 2023–2021 | 1'075'000 → 1'097'500 | **+2.1 %** | 740'000 → 776'500 | **+4.9 %** |

Fallzahlen je Pool: EFH 38–95, EW 99–258 — tragfähig.

> **Der wichtigste Befund kehrt die Intuition um: «veraltet» heisst nicht «zu tief».** In
> **Regensdorf** liegen die kantonalen Mediane heute **rund 6 % unter** dem Stand, auf dem das
> Fact Sheet vom 12/2023 beruht — wer dort mit dem alten Blatt bewertet, bewertet **zu hoch**, nicht
> zu tief. In Wädenswil und Wald ist die Bewegung dagegen mit rund 2 % kleiner als die übliche
> Bandbreite einer Bewertung, in Maur beim EW mit +7.3 % am grössten.
>
> **Priorisierung der Neubestellung** ergibt sich daraus direkt: **Regensdorf zuerst** (falsche
> Richtung, materiell), dann **Maur** (grösste Bewegung), **Wädenswil und Wald** sind trotz
> ⚠-Flag praktisch noch brauchbar.

⚠ **Drei Vorbehalte zu dieser Rechnung.**
1. **Die Pools überlappen.** «2023–2021» und «2025–2023» teilen sich das Jahr 2023; die ausgewiesenen
   Deltas sind deshalb **gedämpft** — die tatsächliche Bewegung zwischen den Randjahren ist grösser.
2. **Es sind Totalpreis-Mediane, nicht CHF/m².** Verschiebt sich die Grösse der gehandelten Objekte,
   wandert der Median mit, ohne dass sich das Preisniveau je m² geändert hätte. Für einen
   Niveauvergleich mit den Fact Sheets ist das die bekannte Grenze (Abschnitt 4).
3. **Einzeljahre taugen nicht.** Die ungepoolten Reihen schwanken wild: Wädenswil EFH liegt bei
   2'060 (2021) · 2'120 (2022) · 1'640 (2023) · 2'500 (2024) · 2'195 (2025) Tausend CHF bei
   n = 26–33 pro Jahr. In Regensdorf sind 2021–2023 gar nicht publiziert (n = 12–13, unter der
   Publikationsschwelle). **Immer den 3-Jahres-Pool verwenden**, nie ein Einzeljahr.

## 4c · Acht JANS-Gemeinden hatten bisher gar keine Preisdaten in dieser KB (neu 23.08.2026)

Die KB führt Marktdatenblätter für sieben ZH-Gemeinden (Zollikon, Langnau a.A., Thalwil,
Wädenswil, Maur, Regensdorf, Wald). Für acht weitere JANS-Bezugsgemeinden gab es **keinerlei
Preisdaten** — obwohl sie in [[az-gfz-kennwerte]] mit Dichtekennwerten geführt werden und damit
als Arbeitsgebiet belegt sind. Diese Lücke ist geschlossen.

**Verkaufspreise in CHF total, 3 Jahre gepoolt (2025–2023), Median mit Q25 und Q75:**

| Gemeinde | Region | EFH Q25 | **EFH Median** | EFH Q75 | n | EW Q25 | **EW Median** | EW Q75 | n |
|---|---|---|---|---|---|---|---|---|---|
| Küsnacht | See | 2'800'000 | **4'350'000** | 7'000'000 | 65 | 1'721'250 | **2'675'000** | 3'387'500 | 134 |
| Kilchberg | See | 2'537'500 | **3'800'000** | 6'662'500 | 30 | 2'350'000 | **2'920'000** | 4'190'000 | 73 |
| Oberrieden | See | 2'550'000 | **3'687'500** | 4'560'000 | **18** | 1'285'000 | **1'840'000** | 2'500'000 | 49 |
| Meilen | See | 2'117'500 | **2'800'000** | 3'505'000 | 55 | 1'585'000 | **2'210'000** | 2'910'000 | 159 |
| Adliswil | Agglo | 1'875'000 | **2'250'000** | 2'750'000 | 47 | 867'000 | **1'420'000** | 2'000'000 | 109 |
| Horgen | See | 1'689'550 | **2'070'500** | 2'650'000 | 102 | 1'099'475 | **1'505'000** | 2'028'000 | 294 |
| Richterswil | See | 1'530'000 | **1'772'500** | 2'634'500 | 74 | 967'000 | **1'350'000** | 1'750'000 | 133 |
| Niederhasli | Agglo | 1'085'000 | **1'300'000** | 1'550'000 | 91 | 698'750 | **865'000** | 1'020'000 | 60 |

**Wie das zu lesen ist — und wie nicht.**

- **Immer mit Quartilen zitieren.** Die Spannweiten sind gewaltig: in **Kilchberg** reicht das
  EFH-Quartilsband von 2.54 bis 6.66 Mio. (Faktor 2.6), in **Küsnacht** von 2.80 bis 7.00 Mio.
  (Faktor 2.5). Ein Median allein sagt an einem Seeufer-Standort fast nichts — dort entscheidet die
  Mikrolage (Seeanstoss, Hangkante, Aussicht) über den Faktor 2, und genau diese Streuung bildet
  das Quartilsband ab.
- ⚠ **Oberrieden EFH: n = 18** über drei Jahre, die dünnste Zeile der Tabelle. Der Median 3'687'500
  ist als Grössenordnung brauchbar, für eine Bewertung aber zu dünn — dort die Nachbargemeinden
  (Horgen, Thalwil) mitlesen.
- **Es sind Totalpreise, keine CHF/m².** Ohne Flächenangabe ist kein Vergleich mit den
  UBS-Fact-Sheet-Quantilen möglich; der Umweg über die implizite Fläche (Abschnitt 4) funktioniert
  nur dort, wo ein Fact Sheet existiert.
- **Die Bodenpreise dieser Gemeinden stehen in Abschnitt 2** — und sind dort **modellierte** Werte;
  für einen Landwert gilt die regionale 5-Jahres-Reihe aus Abschnitt 1.
- Der Poolingzeitraum **2023–2025 liegt vollständig im provisorischen Bereich** der Quelle
  (Abschnitt 5).

**Praktische Folge:** für ein Objekt in Horgen, Kilchberg, Küsnacht, Meilen, Adliswil, Richterswil,
Oberrieden oder Niederhasli musste bisher auf die Nachbargemeinde oder auf einen Kantonswert
ausgewichen werden. Das ist nicht mehr nötig — es gibt jetzt eine amtliche, gemeindescharfe
Preisbasis mit Fallzahlen. Sie **ersetzt kein Fact Sheet** (dort stehen CHF/m²-Quantile,
Mietniveau und Angebotsdaten), aber sie schliesst die Lücke für den Niveau-Anker.

## 5 · Vorbehalte der Quelle selbst

1. **Die letzten drei Jahre und das laufende Jahr sind provisorisch.** Die Quelle nennt den Grund:
   rückwirkende Neuklassifizierung. Wird nach einem Verkauf ein Gebäude abgebrochen, gilt der
   Erwerb nachträglich als Baulandkauf und die Handänderung wird umgebucht. **Der gesamte
   Poolingzeitraum 2023-2025 der EFH-/EW-Tabellen fällt in diesen provisorischen Bereich.**
2. **Die Datengrundlage wird gerade modernisiert.** Die Quelle kündigt an, das Datenangebot im
   nächsten Jahr neu zu strukturieren, und stellt ausdrücklich in Frage, ob alle OGD-Ressourcen in
   derselben Form bestehen bleiben. **Die hier zitierten Ressourcen-IDs können sich ändern** —
   vor der nächsten Verwendung den Datensatz-Eintrag auf opendata.swiss neu auflösen, nicht die
   Direktlinks blind wiederverwenden.
3. **Nur Kanton Zürich.** Für den Kanton Schwyz (Wangen, Einsiedeln) bleibt die Lücke offen.
4. **Bodenpreise auf Gemeindeebene: siehe die Modellwert-Warnung in Abschnitt 2.**

## Abgrenzung zu den anderen Bodenpreis-Quellen dieser KB

| Quelle | Gebiet | Charakter | Wofür |
|---|---|---|---|
| **Handänderungsstatistik Kt. ZH** (dieser Artikel) | Kanton ZH, 160 Gemeinden + 6 Regionen | amtlich, effektive Transaktionen, Grundbuch | Preisniveau-Gegencheck, regionale Bodenpreisbänder |
| **LIMA Stadt Zürich** ([[lageklasse-landwertanteil]]) | nur Stadt Zürich, 47 Quartiere | amtlich, Bodenpreis-**Näherung** (Kaufpreis minus Versicherungswert) | quartierscharfe Landwert-Kalibrierung |
| **UBS Fact Sheets** ([[datenquellen-registry]]) | einzelne Gemeinden, CHF/m² | Wüest-Derivat, hedonisch | Quantile je Gemeinde, Mietniveau |
| **ÖREB / Parzellenwert** | Einzelparzelle | amtlicher Einzelfall | konkrete Bewertung |

**Nutzungsreihenfolge für einen Landwert:** parzellenscharfe Evidenz zuerst, dann die regionale
5-Jahres-Reihe als Einordnung, dann die Lageklassenmethode zur Plausibilisierung — nie einen
Gemeinde-Bodenpreis-Einzeljahreswert als Anker.

## Offen

- **Kanton Schwyz** hat keine vergleichbare offene Preisstatistik erschlossen (D2-Rest).
- **Langnau a.A. EW, implizite Fläche 80 m²** — auffällig, Ursache nicht entschieden.
- Der Gegencheck ist an **sieben** Gemeinden geführt (jene mit UBS-Blatt in dieser KB). Er liesse
  sich auf alle 160 Gemeinden ausdehnen, sobald weitere Fact Sheets vorliegen.
