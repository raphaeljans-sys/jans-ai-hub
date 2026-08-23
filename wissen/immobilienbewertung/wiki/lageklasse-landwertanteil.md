---
title: Lageklasse und Landwertanteil
status: established
last_updated: 2026-08-23
sources: [Schaetzungsanleitung Teil III Kap. 5 (schaetzungsanleitung_kap5.pdf, Tab. 6/7 Lageklassenschluessel, Tab. 8 Landwertanteil; Methode Naegeli), IMMO-05 Bodenpreise, Statistik Stadt Zuerich / Open Data Zuerich «Liegenschaften-Markt Stadt Zuerich: Preisreihen und Anzahl Handaenderungen nach Bebauungsart» (od5144, CSV-Stand 05.02.2026, Daten 2008-2025, CC0 — ausgewertet 23.08.2026, Vertiefungslauf 2)]
links: [[realwert-sachwert]], [[residualwertmethode]], [[vergleichswert-hedonisch]], [[datenquellen-registry]], [[erfolgsfaktoren-wettbewerb]]
---

# Lageklasse und Landwertanteil

Die **Lageklasse (LK)** ist eine Einstufung der Standortqualitaet (Skala 0-10: peripher bis
zentral/Top). Sie steuert den **Landwertanteil am Neuwert**: je besser die Lage, desto hoeher
der Anteil, den der Boden am Gesamtwert ausmacht. Klassisches Verfahren: **Lageklassenmethode
nach Naegeli**.

## Prinzip

```
Bodenwert (Landwert)  ≈  Landwertanteil(LK) [%]  ×  Neuwert (BKP 2, 4 + 5)
```

- Periphere Lage: kleiner Landwertanteil (Substanz dominiert).
- Zentrale/Top-Lage: grosser Landwertanteil — der Boden kann den Gebaeudewert uebersteigen.

Die LK selbst ist der **Mittelwert mehrerer Lagekriterien**, einzeln auf der Skala 1-10
benotet (Schaetzungsanleitung Kap. 5, Tab. 6/7).

## Lageklassenschluessel Wohnbauten (Tab. 6)

Vier Kriterien, je auf 1-10 eingestuft, dann Mittelwert:

| Kriterium | LK 1-2 (tief) | LK 3-4 (mittel) | LK 7-8 (hoch) | LK 9-10 (top) |
|---|---|---|---|---|
| **A Allgemeine Lage** | laendliche Gegend, Randgebiet, kein Tourismus | Wirtschaftsregion/Dorfzentrum, gute Infrastruktur | Wirtschaftszentrum, Top-Ferienort | Mittel-/Grossstadt, Citylage |
| **B Individuelle Lage** | nachteilige Umgebung, starke Immissionen, keine Aussicht | angenehmes Quartier, mittlere Weitsicht | sehr gute Fernsicht, exklusive Umgebung | See-/Flussanstoss |
| **C Verkehrserschliessung** | grosse Distanzen, kein oeffentl. VM, Naturweg | kurze Distanzen, normales Kursangebot | zentrale Lage in jeder Beziehung | grosse Auswahl an Verkehrsmitteln |
| **D Marktverhaeltnisse** | kein Markt feststellbar | normale Nachfrage, genuegend Angebot | grosse Nachfrage, sehr geringes Angebot | sehr grosse Nachfrage, Angebote selten |

**Berechnungsbeispiel (Tab. 6):** A 4.0 + B 3.0 + C 3.5 + D 3.5 = 14.0 / 4 = **LK 3.5**
→ Landwert **28 % des Neuwerts** (Tab. 8).

## Lageklassenschluessel Gewerbe ohne Industrie (Tab. 7)

Drei Kriterien (A Allgemeine Lage / B Individuelle Lage-Standort, unterteilt nach Verkauf-
Dienstleistung vs. Produktion-Verteilung / C Marktverhaeltnisse), Mittelwert aus 3.
**Beispiel:** A 4.0 + B 3.0 + C 2.0 = 9.0 / 3 = **LK 3.0** → Landwert **23.08 %** (Tab. 8).

## Landwertanteil-Tabelle (Tab. 8) — LK → % vom Neuwert (BKP 2, 4 + 5)

Vollstaendig belegt aus Schaetzungsanleitung Kap. 5, S. 9:

| LK | % | LK | % | LK | % | LK | % | LK | % |
|---|---|---|---|---|---|---|---|---|---|
| 1.0 | 6.67 | 3.0 | 23.08 | 5.0 | 45.45 | 7.0 | 77.78 | 9.0 | 128.57 |
| 1.5 | 10.34 | 3.5 | 28.00 | 5.5 | 52.38 | 7.5 | 88.24 | 9.5 | 146.15 |
| 2.0 | 14.29 | 4.0 | 33.33 | 6.0 | 60.00 | 8.0 | 100.00 | 10.0 | 166.67 |
| 2.5 | 18.52 | 4.5 | 39.13 | 6.5 | 68.42 | 8.5 | 113.33 | | |

Feinabstufung in 0.1-Schritten in der Quelle (z.B. LK 3.1 = 24.03 %, 3.4 = 26.98 %,
4.1 = 34.45 %, 6.4 = 66.67 %, 8.4 = 110.53 %). Charakteristik: **bei LK 8.0 erreicht der
Landwert 100 % des Neuwerts**, darueber uebersteigt der Boden den Gebaeudewert — typisch fuer
zentrale Stadtlagen mit Ausnuetzungsreserven.

⚠ **Datenstand/Anwendung:** Die Tabelle ist methodisch stabil (Naegeli), bildet aber den
Landwert als **Anteil am Neuwert** ab; sie ersetzt **keine** aktuelle Bodenpreis-Evidenz.
Bei zentralen/knappen Lagen liefert der **Vergleichswert** (Bodenpreise,
[[vergleichswert-hedonisch]]) bzw. der **Residualwert** ([[residualwertmethode]]) den
besseren Landwert; die LK-Methode dient dann der **Plausibilisierung**.

## Bodenpreis-Daten bei JANS

`IMMO - 05 Bodenpreise` enthaelt heute v.a. Screenshots je Gemeinde (ZH Waedenswil, Thalwil,
Niederhasli, Maur) — nicht maschinenlesbar, fragmentarisch. Strukturierte kantonale/
gemeindescharfe Bodenpreis-Statistiken fehlen (Luecke D2). Empfehlung: Bodenpreise live aus
amtlichen Quellen (Handaenderungsstatistik Kt. ZH/SZ) und Wuest/IAZI beziehen.
→ [[datenquellen-registry]] und `wiki/wissensluecken.md`.

### Neu 23.08.2026: maschinenlesbare Bodenpreis-Naeherung fuer die Stadt Zuerich (D2 teilweise geschlossen)

Fuer das Gebiet der **Stadt Zuerich** ist die Luecke geschlossen. Statistik Stadt Zuerich
publiziert die Handaenderungsstatistik (LIMA) als **offenen CSV-Datensatz unter CC0** —
maschinenlesbar, ohne Abo, ohne Zugangsgesuch:

- **Datensatz:** «Liegenschaften-Markt Stadt Zuerich: Preisreihen (Medianpreise) und Anzahl
  Handaenderungen in Freihandverkaeufen nach Bebauungsart», ID
  `bau_hae_lima_preise_anzahl_hae_art_bebauung_jahr_od5144`, CSV `BAU514OD5144.csv`
  (1.4 MB, 9'908 Zeilen), Aktualisierung **jaehrlich**, Stand **05.02.2026**, Daten **2008-2025**.
  Heruntergeladen und ausgewertet am 23.08.2026.
- **Zwei Preisreihen:** «Preis pro m2 Grundstuecksflaeche» und — fuer die Bewertung
  entscheidend — **«Preis pro m2 Grundstuecksflaeche, abzueglich Versicherungswert»**. Die
  zweite ist eine **Bodenpreis-Naeherung**: vom Kaufpreis wird der Gebaeude-Versicherungswert
  abgezogen, der Rest auf die Grundstuecksflaeche umgelegt. Das ist methodisch genau die
  Umkehrung der Realwert-Formel oben und damit direkt anschlussfaehig.
- **Gliederung:** 47 Gebiete (ganze Stadt, Kreise, **Quartiere**) × Jahr × Bebauungsart
  (EFH, MFH, Wohnungen, uebrige Wohn-, Nichtwohn-, Industrie/Gewerbe, unbebaut) ×
  drei Abgrenzungen (Ganze Liegenschaft / nur Stockwerkeigentum / alle Handaenderungen).
  Zu jedem Preis wird die **Fallzahl** mitgeliefert.

**Ganze Stadt, Ganze Liegenschaft, Bodenpreis-Naeherung (CHF/m2 Grundstuecksflaeche, Median):**

| Jahr | EFH | MFH | Fallzahl EFH / MFH |
|---|---|---|---|
| 2025 | 4'879 | 6'627 | 110 / 165 |
| 2024 | 5'662 | 6'764 | 99 / 93 |
| 2023 | 5'238 | 6'312 | 89 / 96 |
| 2022 | 5'402 | 6'768 | 94 / 106 |
| 2021 | 3'992 | 5'854 | 106 / 96 |

**Lage-Spreizung innerhalb der Stadt (2025, Ganze Liegenschaft, CHF/m2):** Fluntern EFH 7'726 /
MFH 8'286 · Enge MFH 9'942 · Altstetten EFH 4'565 / MFH 4'961 · Affoltern EFH 2'483 /
MFH 5'517 · Hirzenbach EFH 2'606 / MFH 4'269. Der Faktor **rund 3** zwischen Affoltern und
Fluntern ist die empirische Entsprechung der Lageklassen-Spreizung von Tab. 8 und damit das
Material fuer die unten offene Kalibrierung.

⚠ **Vorbehalte, die bei jeder Verwendung mitzugeben sind.**
1. **Mediane ueber wenige Handaenderungen.** Stadtweit tragen die Reihen ~90-165 Faelle pro
   Jahr und Bebauungsart — belastbar; **auf Quartiersebene** sinkt das auf einstellige
   Fallzahlen, die Datei anonymisiert dort zu Baendern («1-3», «2-4»). Quartierswerte einzelner
   Jahre sind deshalb **Indikation, kein Kennwert**; ueber mehrere Jahre mitteln.
2. **Naeherung, nicht Landwert.** Der abgezogene Versicherungswert ist ein Neuwert-naher
   Gebaeudewert **ohne Alterswertminderung**; die Reihe unterschaetzt den Bodenanteil bei
   Altbauten tendenziell und kann bei abbruchreifen Objekten negativ verzerren.
3. **Nur Stadt Zuerich.** Fuer die JANS-Kerngemeinden am linken/rechten Seeufer, im Bezirk
   Horgen und in SZ bleibt D2 offen — dort ist weiterhin die kantonale Handaenderungs-/
   Bodenpreisstatistik oder ein Wuest-/IAZI-Bezug noetig.
4. **Freihandverkaeufe.** Erbgaenge, Zwangsverwertungen und Transaktionen unter Nahestehenden
   sind ausgeschlossen — richtig fuer Marktwert-Zwecke, aber der Bestand ist nicht vollstaendig.

*Quelle: Statistik Stadt Zuerich / Open Data Zuerich, Datensatz `…od5144`, CSV-Stand
05.02.2026, Lizenz CC0; heruntergeladen und ausgewertet 23.08.2026.*

## Erste Spiegelung der Methode gegen amtliche Bodenpreise (23.08.2026)

Der unten seit dem 10.06.2026 offene Punkt lautet: «LK-Beispielrechnung an einem realen JANS-Objekt
gegen Bodenpreis-Vergleichswert spiegeln, um die Methode zu kalibrieren.» Mit den amtlichen
Bodenpreis-Medianen aus [[amtliche-preisstatistik-zh]] geht das jetzt — nicht an einem Objekt,
sondern **regional über den ganzen Kanton**, was als Plausibilitätsprüfung der Skala sogar mehr
aussagt als ein Einzelfall.

### Rechenweg

Die Formel oben, nach dem Landwertanteil aufgelöst und auf einen Quadratmeter **Grundstück**
bezogen:

```
Landwert je m² Grundstück  =  Anteil(LK) × Neuwert je m² GF × AZ
→  Anteil(LK)  =  Bodenpreis je m² Grundstück  /  (Neuwert je m² GF × AZ)
```

**Neuwert-Ansatz:** Tab. 8 bezieht sich auf **BKP 2, 4 + 5**. Der JANS-Kennwert lautet auf
**BKP 2 = 3'365 CHF/m² GF** (Preisstand 2025); umgerechnet über die BKP-Anteilsstruktur der
ZIW-Revision 2025 (BKP 2 = 89.374 %, BKP 4 = 2.808 %, BKP 5 = 1.894 % des Totals) ergibt das
**BKP 2, 4 + 5 = 3'542 CHF/m² GF** (Faktor 1.053).

### Ergebnis — was der amtliche Bodenpreis für den Landwertanteil bedeutet

Bodenpreis-Mediane Kanton ZH 2021–2025 (effektiv, 5-Jahres-Pool). In Klammern die zugehörige
Lageklasse nach Tab. 8:

| Region | Bodenpreis-Median | AZ 0.4 | AZ 0.6 | AZ 0.8 | AZ 1.0 |
|---|---|---|---|---|---|
| Stadt Zürich | 6'747 | **476 %** (>10) | **317 %** (>10) | **238 %** (>10) | **190 %** (>10) |
| Seegemeinden | 3'115 | **220 %** (>10) | 147 % (9.5) | 110 % (8.5) | 88 % (7.0) |
| Stadt Winterthur | 2'087 | 147 % (9.5) | 98 % (8.0) | 74 % (7.0) | 59 % (6.0) |
| Agglomerationsgemeinden | 2'065 | 146 % (9.5) | 97 % (8.0) | 73 % (7.0) | 58 % (6.0) |
| Landgemeinden | 1'039 | 73 % (7.0) | 49 % (5.0) | 37 % (4.0) | 29 % (4.0) |
| **Kanton Zürich** | 1'742 | 123 % (9.0) | 82 % (7.0) | 61 % (6.0) | 49 % (5.0) |

**Tab.-8-Obergrenze: LK 10.0 = 166.67 %.**

### Zwei Befunde

**1 · Für die Stadt Zürich sprengt der amtliche Bodenpreis die Skala — bei jeder Ausnützung.**
Selbst bei AZ 1.0 verlangt der Median einen Landwertanteil von **190 %**, während Tab. 8 bei
**166.67 %** (LK 10) endet. Bei einer für Wohnzonen realistischen AZ von 0.6 sind es **317 %** —
das Doppelte des Skalenmaximums. **Die Lageklassenmethode nach Naegeli kann Stadtzürcher
Bodenpreise nicht abbilden.** Das deckt sich mit dem Vorbehalt, der oben schon steht («bei
zentralen/knappen Lagen liefert der Vergleichs- bzw. Residualwert den besseren Landwert»), gibt ihm
aber erstmals eine Zahl: es ist **kein Genauigkeitsproblem, sondern ein Skalen-Anschlag**.

**2 · Die Verschiebung reicht weiter hinunter als erwartet.** Bei AZ 0.6 landen **gewöhnliche
Agglomerationsgemeinden bei LK 8.0** — genau dem Punkt, den dieser Artikel oben als «typisch für
zentrale Stadtlagen mit Ausnützungsreserven» beschreibt, weil dort der Landwert 100 % des Neuwerts
erreicht. Eine durchschnittliche Zürcher Vorortsgemeinde ist keine zentrale Stadtlage. Wer die LK
nach den Kriterien von Tab. 6 vergibt (allgemeine Lage, individuelle Lage, Verkehr, Markt) und für
eine solche Gemeinde etwa **LK 5 bis 6** einstuft, kommt auf einen Landwert von **918 bis 1'211
CHF/m²** — gegen einen amtlichen Median von **2'065**. **Faktor rund zwei.**

### ⚠ Was diese Rechnung ist und was nicht

Sie ist eine **Sensitivitätsrechnung, kein Kalibrierungsergebnis.** Vier Annahmen tragen sie, und
alle vier sind zu nennen, wenn man sie zitiert:

1. **Die AZ treibt das Ergebnis linear.** Deshalb ist sie als Band von 0.4 bis 1.0 geführt und
   nicht als ein Wert. Nur der Stadt-Zürich-Befund ist über das **ganze** Band robust.
2. **Der Neuwert-Kennwert 3'365 ist ein EFH/ZFH-Wert** (JANS-Kalkulationsblatt) und trägt selbst
   den offenen Punkt **D16** (der BKP-2-Anteil von 75 % darin weicht von zwei Strukturquellen ab).
   Für ein MFH läge er anders.
3. **Median gegen Median.** Der Bodenpreis-Median läuft über alle Zonen einer Region, die AZ
   variiert damit mit. Es ist kein objektscharfer Vergleich.
4. **«Anrechenbare» Geschossfläche ≠ ganze GF.** Die AZ bezieht sich auf die anrechenbare
   Geschossfläche; Untergeschosse und nicht anrechenbare Flächen verschieben das Verhältnis.

**Was daraus folgt — und was nicht.** Es folgt **nicht**, dass Tab. 8 falsch ist: die Tabelle ist
methodisch stabil und bildet ein Verhältnis ab, das für ihre Entstehungszeit stimmig war. Es folgt
aber, dass sie **im heutigen Zürcher Markt als eigenständige Landwertermittlung nicht taugt** — sie
bleibt ein **Plausibilisierungsinstrument**, und die Plausibilisierung muss in der richtigen
Richtung gelesen werden: liegt der aus Tab. 8 hergeleitete Landwert deutlich **unter** dem
regionalen Bodenpreis-Median, ist das der Normalfall und kein Warnsignal.

**Offen und an Raphael:** ob für JANS-Bewertungen ein **eigener, kalibrierter Anteilsschlüssel**
sinnvoll wäre (Tab. 8 nach oben verlängert oder mit einem Regionalfaktor versehen) — oder ob die
Methode konsequent nur noch als Plausibilisierung geführt und der Landwert grundsätzlich über
Vergleichs- oder Residualwert bestimmt wird. Das ist ein Methodenentscheid, keine Recherche.

## Offen / zu vertiefen

- ✓ 2026-06-10: LK→%-Tabelle (Tab. 8) und Lageklassenschluessel Wohnen/Gewerbe (Tab. 6/7)
  sauber extrahiert und belegt; Status speculative → established (T5 erfuellt).
- LK-Beispielrechnung an einem realen JANS-Objekt gegen Bodenpreis-Vergleichswert spiegeln,
  um die Methode zu kalibrieren. **Seit 23.08.2026 durchfuehrbar** fuer Objekte in der Stadt
  Zuerich: die LIMA-Reihe oben liefert die quartierscharfe Bodenpreis-Evidenz, gegen die sich
  der aus Tab. 8 hergeleitete Landwertanteil spiegeln laesst. Nicht selbst ausgefuehrt — es
  fehlt ein JANS-Bewertungsfall in der Stadt Zuerich (juengster Fall ist Wangen SZ, 06.2026);
  am naechsten Stadtzuercher Objekt einloesen.
- Neuwert-Bezugsgroesse (BKP 2, 4 + 5) mit [[realwert-sachwert]] konsistent halten.
