---
quelle: «SCOP versus COP und JAZ — Grundlagen fuer die Wirtschaftlichkeitsrechnung» (Fachvortrag)
herausgeber: Harry Gruenenwald, Gruenenwald AG (Otelfingen ZH); Bezug Norm EN 14825:2013
ausgabe: Foliensatz (undatiert; Bezug FWS-Tagungskontext) — Bezug auf EN 14825:2013
gelesen: 2026-06-27 (Foliensatz vollst., S. 1-12)
datenstand: ⚠ Vortragsfolien, Datierung unklar; Norm-Bezug EN 14825:2013 (Pruefnorm SCOP weiterhin gueltig)
status: established
last_updated: 2026-06-27
---

# Destillat — COP vs. SCOP vs. JAZ bei Waermepumpen (EN 14825)

> Klaert die drei haeufig verwechselten WP-Kennzahlen — die begriffliche Grundlage fuer FAQ F6 und
> `[[waermepumpe-systemvergleich]]`. Schweizer Fachquelle, treu wiedergegeben; eigene Einordnung markiert.

## Das Wichtigste in 1 Satz
**COP** ist ein einzelner Labor-Pruefpunkt (kein Systemvergleich moeglich), **SCOP** ist ein saisonaler
Labor-Wert nach EN 14825 — aber mit dem **zu milden Klima Strassburg** gerechnet, weshalb er fuer die
Schweiz **~5-7 % zu hoch** liegt — und nur die **JAZ** ist die im realen Betrieb ueber das Jahr **gemessene**
Effizienz, auf die es fuer die Wirtschaftlichkeit ankommt.

## Die drei Kennzahlen
| Kennzahl | Was | Charakter |
|---|---|---|
| **COP** (Coefficient of Performance) | Wirkungsgrad im **Labor**, **einem** Betriebspunkt | Momentanwert, Pruefpunkt «willkuerlich» gewaehlt, **kein Systemvergleich**, on/off-Betrieb |
| **SCOP** (Seasonal COP, EN 14825) | jahreszeitlich gewichteter Wert aus mehreren Pruefpunkten (Teillast) | Labor/Norm, **Klimazone fix** → fuer CH zu guenstig |
| **JAZ** (Jahresarbeitszahl) | **gelieferte Waerme / Stromverbrauch ueber ein ganzes Jahr**, im Feld gemessen | praxisrelevant, enthaelt Peripherie/Warmwasser/Hilfsenergie/Abtauen |

### COP — Pruefpunkte (Waermesenke W35)
- **LW-WP** (Luft): **L2 / W35** · **SW-WP** (Sole): **B0 / W35** · **WW-WP** (Wasser): **W10 / W35**.
- Wichtig (Vortrag): Peripherie nicht abgebildet, Messpunkte willkuerlich, COP laesst **keine
  Systemvergleiche** zu, on/off-Betrieb.

### SCOP — EN 14825:2013
- **3 Heizzonen:** C (colder, Helsinki, −22 °C) · **A (average, Strassburg, −10 °C)** · W (warmer, Athen, +2 °C);
  Heizgrenze in allen Zonen **+16 °C**.
- **2 Wassertemperaturen:** Niedertemperatur **35 °C** / Hochtemperatur **55 °C**.
- Messpunkte Zone A: **12 / 7 / 2 / −7 / −10 °C** (Teillast, mit Bivalenz-/Einsatzgrenze).
- Rechenbeispiel im Vortrag: **SCOP_on = 3,61** (mit el. Zusatzheizung) fuer eine Beispielmaschine.
- **Schwaeche fuer die CH:** Referenzklima **Strassburg** ist waermer als das Schweizer Mittelland —
  nicht gewichtete Schnitte (9 Mt. / 3 Mt.): Strassburg 7,5 / 1,8 °C · **Zuerich 6,7 / 0,2 °C** ·
  Bern 6,1 / 0 °C (St. Moritz/Lugano Extreme). **1 K** tiefere Verdampfungstemperatur kostet **~3-4 %**
  Effizienz → der SCOP liegt fuer CH-Temperaturen **~5-7 % zu hoch** (ohne St. Moritz/Lugano).

## Bauherren-Transfer
- **Beim Offertvergleich nicht den COP gegen den SCOP einer anderen Maschine stellen** — es sind
  verschiedene Dinge. Der **COP** ist eine Momentaufnahme; vergleichbar sind Maschinen nur ueber den
  **SCOP** (gleiche Norm) — und auch der ist mit Strassburg-Klima gerechnet, also fuer die Schweiz
  **leicht geschoent**.
- **Was am Schluss zaehlt, ist die JAZ** — die ueber ein Jahr **real gemessene** Effizienz (siehe Feld-
  werte in `[[fawa-jaz-feldanalyse-waermepumpen]]`). Sie haengt nicht nur an der Maschine, sondern an
  **Vorlauftemperatur, Auslegung, Regler und Warmwassereinbindung**.
- **Faustregel fuer den Bauherrn:** Datenblatt-COP/SCOP sind die Eintrittskarte, aber die gute Planung
  (tiefe Vorlauftemperatur, knappe Auslegung) entscheidet, ob die Maschine ihren Prospektwert im Betrieb
  auch erreicht.

## Offene Punkte / Folgelaeufe
- WPesti/SIA 384/3 als **verbindliches CH-Rechenverfahren** (vgl. `[[minergie-zertifizierung-workflow]]`)
  gegen SCOP/JAZ einordnen — eigener Folgelauf.
- Datierung des Foliensatzes unklar; Norm-Bezug EN 14825:2013 (SCOP-Pruefverfahren weiter gueltig).
