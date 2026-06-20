---
quelle: sonnendach.ch / uvek-gis.admin.ch — Auszug «Wie viel Strom oder Wärme kann mein Dach produzieren?» (Beispiel Selbezen 23a, 3753 Oey, Gem. Diemtigen)
herausgeber: Bundesamt fuer Energie BFE / MeteoSchweiz / swisstopo (UVEK-GIS, sonnendach.ch)
ausgabe: Auszug abgerufen 02.07.2023 (Strahlungs-Referenzjahre 2004–2014)
gelesen: 2026-06-20 (vollst., 3 S.)
datenstand: 2023 (Modul-Wirkungsgrad-Annahme 20 % seit Sept 2022; Referenzjahre 2004–2014); ⚠ Verguetungs-/Strompreise marktabhaengig
status: established
last_updated: 2026-06-20
---

# Sonnendach.ch — amtliche Solarpotenzial-Abschaetzung je Dachflaeche (BFE)

**Das Wichtigste in 1 Satz:** Auf **sonnendach.ch** (BFE) sieht jeder Bauherr fuer sein eigenes Dach
gratis die **Eignung** (5-stufige Klasse nach jaehrlicher Einstrahlung), den **moeglichen Stromertrag**,
**Flaeche/Neigung/Ausrichtung** und die monatliche Produktionskurve — als belastbare **Erst-Abschaetzung**,
die aber keine Fachberatung und keine Aussage zur Baubewilligung ersetzt.

## Eignungs-Klassen (nach jaehrlicher Einstrahlung auf die Dachflaeche)
| Klasse | Einstrahlung [kWh/m²·a] |
|---|---|
| Gering | < 800 |
| Mittel | ≥ 800 und < 1'000 |
| Gut | ≥ 1'000 und < 1'200 |
| Sehr gut | ≥ 1'200 und < 1'400 |
| Hervorragend | ≥ 1'400 |

(Massgeblich ist die Globalstrahlung auf die geneigte Dachflaeche **inkl. Verschattung**.)

## Rechen-Annahmen des Tools (belegt aus dem Auszug)
- **Modul-Wirkungsgrad: 20 %** (seit September 2022; vorher 17 %).
- **Performance Ratio: 80 %**.
- Berechnung auf **maximaler Modulflaeche** der ganzen Dachflaeche — Dachfenster, Lukarnen, Kamine,
  Balkone sind **nicht** abgezogen → reale nutzbare Flaeche oft kleiner.
- Wert-Annahme **10 Rp/kWh** als Mischwert: Eigenverbrauch spart bis **20 Rp/kWh**, der groessere,
  eingespeiste Teil wird zu **unter 10 Rp/kWh** verguetet (Einspeise-/Strompreise stark variabel).
- Solarwaerme (thermisch): Heizwaerme-/Warmwasserbedarf aus dem **GWR** geschaetzt; Speichervolumen/
  Kollektorflaeche nur zur Nachvollziehbarkeit, **nicht** als Dimensionierungs-Empfehlung.

## Beispiel-Datensatz (Selbezen 23a, 3753 Oey)
| Kennzahl | Wert |
|---|---|
| Eignung | **Sehr gut** |
| Dachflaeche | 36 m² |
| Dachneigung | 26° |
| Ausrichtung | 156° Suedost |
| Mittlere Einstrahlung (inkl. Verschattung) | **1'398 kWh/m²·a** |
| Gesamte Einstrahlung | 49'702 kWh/a |
| Stromertrag (Dach voll belegt) | **bis 8'000 kWh/a** (≈ Wert CHF 800/a) |
| → 3/4 belegt / halb belegt | 6'000 / 4'000 kWh/a |
| Einspeise-Verguetung (Bsp. BKW, 10 kVA) | 14.14 Rp/kWh (inkl. HKN; Quelle pvtarif.ch/VESE) |

Vergleich: typischer Verbrauch 4-Personen-Haushalt = 3'500 kWh/a.

**Reale Monatsproduktion einer Anlage am Ort (Bsp., letzte 12 Mt.):** Jun 941 · Jul 1'123 · Aug 1'010 ·
Sep 649 · Okt 537 · Nov 236 · Dez 149 · Jan 201 · Feb 425 · Mrz 529 · Apr 644 · Mai 801 kWh →
**Sommer-Hochpunkt (Jul 1'123) ≈ 7,5× Winter-Tief (Dez 149)** — deckt die Saisonalitaet aus
`[[pv-ertrag-eigenverbrauch-praxis]]` mit Messwerten.

**Solarpotenzial der Gemeinde** (Beispiel Diemtigen): Daecher + Fassaden nur Strom **62,47 GWh**;
Kombination Strom + Waerme: 49,6 GWh Strom + 10,4 GWh Waerme. → Zeigt, dass das Tool auch eine
Gemeinde-Gesamtbilanz liefert (Faktenblatt).

## Bauherren-Transfer (eigene Einordnung markiert)
- **Erste Frage beim PV-Wunsch immer:** Adresse auf **sonnendach.ch** eingeben → Eignung + Ertrag in
  30 Sekunden, gratis, amtlich. Das ist der schnellste serioese Einstieg vor jeder Offerte.
- **Eignung lesen:** «Gut» (≥ 1'000) reicht fast immer fuer einen wirtschaftlichen Betrieb; «Sehr gut»/
  «Hervorragend» (≥ 1'200) sind ideale Suedlagen. Selbst «Mittel» (800–1'000) kann sich lohnen, weil
  der gesparte Eigenverbrauch (20 Rp) mehr wert ist als die Einspeisung.
- **Zwei systematische Fallen des Tools dem Bauherrn erklaeren** (sonst Enttaeuschung):
  1. Es rechnet die **ganze Dachflaeche** — Kamine/Lukarnen/Abstaende noch abziehen, real oft 60–80 %.
  2. Der Modul-Wirkungsgrad **20 %** und PR **80 %** sind Annahmen; gute reale Module liegen heute hoeher,
     Verschattung/Verschmutzung tiefer → die Tool-Zahl ist eine **Bandbreite, kein Garantiewert**.
- **Verguetung ist nur die halbe Wirtschaftlichkeit:** Einspeisung (hier 14 Rp) liegt unter dem
  Eigenverbrauchswert (20 Rp gespart). Darum zahlt sich PV ueber **hohen Eigenverbrauch** aus, nicht
  ueber Volleinspeisung → Anlage aufs Lastprofil dimensionieren (vgl. `[[pv-ertrag-eigenverbrauch-praxis]]`).
- **Solarthermie statt PV** rechnet das Tool separat; in der Praxis ist heute fast immer **PV + WP**
  wirtschaftlicher/flexibler als thermische Kollektoren (→ `[[waermepumpe-systemvergleich]]`).
- **⚠ Denkmal/Kernzone:** Tool sagt nichts zur Bewilligung; Anlagen auf Kultur-/Naturdenkmaelern von
  kantonaler/nationaler Bedeutung sind stets bewilligungspflichtig (Art. 18a RPG) → Skill `baurecht`.

## Offene Punkte
- Tool-Annahmen (20 % / PR 80 % / Strahlung 2004–2014) sind **konservativ-pauschal**; gemessene
  Jahresertraege koennen ±15 % abweichen.
- Verguetungstarife/Einmalverguetung aendern jaehrlich → vor Wirtschaftlichkeitsaussage gegen
  `[[foerderprogramm-energie-zh-2026]]` + pvtarif.ch pruefen.
- Systematische Ertrags-Tabelle je Ausrichtung × Neigung weiter offen (vgl. E5).
