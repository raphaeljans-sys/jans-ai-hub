# Wüest Partner / Lignum / BAFU — Massiv- vs. Holzbau: Erstellungskosten und ökologische Kennzahlen (25.09.2025)

Quelle: Dr. Julia Selberherr (Wüest Partner AG), Praesentation "Massiv- vs. Holzbau:
Erstellungskosten und ökologische Kennzahlen im Vergleich", 25.09.2025, 12 Folien, im Auftrag
von Lignum/Holzwirtschaft Schweiz und BAFU. PDF nicht im Hub archiviert, selbst gezogen von
`https://www.minergie.ch/media/3_holzbau-investionskosten-julia-selberherr.pdf` (2.28 MB,
Textlayer vorhanden). Ergebnisplattform laut Deck: `bauenmitholz.info` (nicht abgerufen).
Abrufdatum 30.07.2026. Bring-Schuld aus `wissen/energie` (Run 83, 21.07.2026 dort nur
ökologisch ausgewertet), übergeben via `wiki/QUESTIONS.md` (Wissens-Chef Run 20, 29.07.2026).

## Vorbedingung geklärt: Stichprobe der Kostenanalyse ≠ Stichprobe der ökologischen Analyse

Folie 2 behauptet pauschal: "35 Holzbauten (25 MFH, 10 Bürobauten) analysiert und mit dem
jeweiligen mineralischen Zwilling in Bezug auf Kosten und ökologische Kennzahlen verglichen."
Folie 3 (Datengrundlage) widerlegt das für den Kostenteil:

| | Neubauten Holzbauten | Neubauten Referenzobjekte | Sanierung/Aufstockung Fallbeispiel | Modellrechnungen |
|---|---|---|---|---|
| Objekte | 17 | 50 | 1 | 2 |
| Baujahr | 2019–2022 | 2001–2022 | 2021 | 2026 |
| Anzahl Wohnungen | 10+ | 10+ | 15–50 | 15–50 |
| Erstellungskosten BKP1–5 | 5–150 Mio. | 5–120 Mio. | 5–20 Mio. | 5–20 Mio. |

**Damit ist die "35 Objekte gegen digitalen Zwilling"-Paarungsmethodik (Folie 7) ausschliesslich
die ökologische Fallbeispiel-Methode** (1 Holzbau gegen 1 mineralischen Zwilling, gleiche
Dimensionen/U-Wert/Schall). **Die Kostenanalyse (Folien 4–5) ist eine unpaarige Gruppen-
Gegenüberstellung**: 17 Holzbauten (in oberes/unteres Preissegment unterteilt) gegen 50 reale
Massivbau-Referenzobjekte, keine 1:1-Zwillingspaare. Folie 2 vermischt die beiden Methodiken in
einem Satz. Damit ist der in `wissen/energie/wiki/QUESTIONS.md:1580-1583` und hier (Run 20)
offen geführte Methodenwiderspruch aufgelöst, nicht nur vertieft.

## Kennzahlendefinition (Folie 4)

BKP1–5-Erstellungskosten (**teuerungsbereinigt per April 2023**, Kategorie Grossregion/
Wohnbauten) je Geschossflaeche (GF), Gebäudevolumen (GV) und Hauptnutzflaeche (HNF); zusätzlich
BKP2/GV,GF,HNF und BKP214/GVoi,GFoi,HNF. Nur BKP1–5/GV und BKP1–5/GF sind auf Folie 5 als
Diagramm dargestellt (HNF-Variante fehlt in diesem Deck).

## Diagramm-Ablesung Folie 5 (kein Zahlenlabel im Textlayer — Werte visuell abgelesen)

Folie 5 zeigt zwei horizontale Boxplots (Massivbau / Holzbau oberes Preissegment / Holzbau
unteres Preissegment) ohne aufgedruckte Zahlen, nur Achsenskalen. Ablesemethode: PDF-Seite mit
`pdftoppm -r 300` gerastert, Gitterlinien-Pixelpositionen den Achsenbeschriftungen zugeordnet
(lineare Kalibrierung, R²≈1, Achsen-Ticks exakt äquidistant), Balkensegmente per Farbcode
klassifiziert (hell = Min/Max-Whisker, dunkel = unteres Boxsegment bis Median, mittel = oberes
Boxsegment bis Q3). Alle Werte daher **ca.-Werte**, auf 10 CHF gerundet — gleiches Vorgehen wie
`wissen/energie` bei den unlabelten Treibhausgas-Boxplots desselben Studienhauses.

### BKP1–5 pro Gebäudevolumen (GV), CHF/m³ GV, Preisstand April 2023

| Kategorie | Min | Q1 | Median | Q3 | Max |
|---|---|---|---|---|---|
| Massivbau | ≈700 | ≈850 | ≈980 | ≈1'140 | ≈1'550 |
| Holzbau unteres Preissegment | ≈770 | ≈910 | ≈960 | ≈1'060 | ≈1'140 |
| Holzbau oberes Preissegment | ≈1'020 | ≈1'070 | ≈1'100 | ≈1'200 | ≈1'800 |

### BKP1–5 pro Geschossfläche (GF), CHF/m² GF, Preisstand April 2023

| Kategorie | Min | Q1 | Median | Q3 | Max |
|---|---|---|---|---|---|
| Massivbau | ≈2'010 | ≈2'670 | ≈3'050 | ≈3'360 | ≈4'410 |
| Holzbau unteres Preissegment | ≈2'940 | ≈2'980 | ≈3'040 | ≈3'150 | ≈3'390 |
| Holzbau oberes Preissegment | ≈3'130 | ≈3'390 | ≈3'530 | ≈3'660 | ≈4'340 |

## Preisstand-Normalisierung auf 01.04.2025 (Zürcher Index, Faktor +1.6 %)

Gemäss `wiki/kennwerte.md` Abschnitt "Baupreisindex ZH": 01.04.2023 → 01.04.2025 = ×1.016.
Angewendet auf die GV-Mediane:

| Kategorie | Median April 2023 | Median 01.04.2025 (normalisiert) |
|---|---|---|
| Massivbau | ≈980 | ≈**995** |
| Holzbau unteres Preissegment | ≈960 | ≈**975** |
| Holzbau oberes Preissegment | ≈1'100 | ≈**1'120** |

**Delta Holzbau vs. Massivbau (Median, normalisiert):** unteres Preissegment ≈ **−2 %** (praktisch
Parität, kein Aufpreis), oberes Preissegment ≈ **+13 %**. Kein einheitlicher "Holz-Zuschlag".

## Konsistenz-Check gegen bestehende KB-Werte

- **Gegen den eigenen MFH-gehoben-Seed dieser KB** (`kennwerte.md:78`, 850–1'050 CHF/m³ GV,
  impliziter Median ≈1'020): Massivbau-Median hier ≈995 liegt **innerhalb** dieses Bands, oberer
  Rand der Holzbau-Range (≈1'120) leicht darüber — plausibel, kein Widerspruch.
- **Gegen den HNF-basierten Wüest-2023-Spread** (`skills/kostenschaetzung/referenzen/
  20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`, Abschnitt 3: Holzbau ≈10–20 % über
  Massivbau, andere Studie/Bezugsgrösse HNF statt GV): Grössenordnung deckt sich mit dem hier
  gefundenen oberen Preissegment (+13 %), das untere Preissegment (≈Parität) ist in der HNF-
  Quelle nicht abgebildet — neue Differenzierung, kein Widerspruch.

## Verbleibende offene Punkte

- Diagramm-Ablesung bleibt eine Näherung (kein Original-Zahlenwert). **Gegen `bauenmitholz.info`
  verifiziert (30.07.2026, Nachtschicht):** Negativbefund. Die Startseite verweist auf den
  Unterpunkt `bauenmitholz.info/baukostenrechner` — dort betreibt Wüest Partner eine
  **interaktive App**, die 36 anonymisierte Fallbeispiele indexbereinigt in einer Grafik
  vergleicht (keine statische Tabelle). Weder die Studie vom 25.09.2025 noch Zahlenwerte
  (Median/Q1/Q3/Min/Max, CHF/m³ oder CHF/m²) sind auf der Seite selbst publiziert oder
  verlinkt. Die Plattform liefert also **keine** Möglichkeit, die pixel-kalibrierten
  ca.-Werte oben durch Originalzahlen zu ersetzen, ohne die App interaktiv zu bedienen
  (ausserhalb des Scopes eines WebFetch-Abrufs) oder Lignum direkt zu kontaktieren
  (`info@lignum.ch`, im App-Text als Kontaktweg genannt). Die ca.-Werte bleiben damit der
  beste verfügbare Stand dieser KB für die Bauweise-Achse.
- HNF-Bezug fehlt in dieser Quelle (nur GV/GF abgebildet) — keine direkte Ergänzung zur
  bestehenden HNF-Tabelle möglich.
- "Oberes/unteres Preissegment" ist keine Standard-Klassifikation (einfach/mittel/gehoben) im
  Sinne dieser KB — Zuordnung bleibt Näherung.
