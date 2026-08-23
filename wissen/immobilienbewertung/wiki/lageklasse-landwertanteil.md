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
