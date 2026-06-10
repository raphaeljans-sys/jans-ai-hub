---
title: Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert
status: emerging
last_updated: 2026-06-10
sources: [IMMO-03 Schaetzungen (schaetzungsanleitung_kap5.pdf, Tab. 2 Neuwert-Richtwerte, Tab. 3 BKP-Anteile, Tab. 9 Lebensdauer, Tab. 10 wirtschaftliches Alter, Tab. 11 Wertminderung), IMMO-06 Kennwerte, IMMO-01 LB Liegenschaftsbewertung-Projekte, Wuest-Kurs "Immobilien entwickeln" 06.2023 (Erstellungskosten-Benchmarks S. 31-38)]
links: [[bewertungsverfahren-ueberblick]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[datenquellen-registry]], [[residualwertmethode]]
---

# Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert

Der Realwert (Sachwert) bildet ab, was die **Substanz** heute wert ist:

```
Realwert  =  Bodenwert (Landwert)
           + Gebaeude-Zeitwert  (= Neuwert − Alterswertminderung)
           + Aussenanlagen / Baunebenkosten
           (± Umweltfaktoren / Marktanpassung)
```

## Bausteine

### Bodenwert (Landwert)
Aus Vergleichswert (Bodenpreise, [[datenquellen-registry]]) oder ueber den
**Landwertanteil am Neuwert** nach Lageklasse: [[lageklasse-landwertanteil]].

### Neuwert (Gebaeude)
Was es kosten wuerde, das Gebaeude heute neu zu erstellen — flaechen- bzw. volumenbasiert
(aGF/BGF/m3, [[flaechendefinitionen-sia]]) mal Kostenkennwert je Nutzung und Standard
(BKP). Kennwerte: Skill `kostenschaetzung` und `IMMO - 06 Kennwerte` (Wohnen/Healthcare/
Buero). Zeitindexierung ueber Baupreisindex (BFS / Zuercher Wohnbaukosten-Index).

#### Neuwert-Richtwerte CHF/m3 umbauter Raum (Schaetzungsanleitung Kap. 5, Tab. 2)

Belegte volumenbasierte Richtwerte nach **Bauklasse** (SIA-Ordnung 102/116), **Stand 2003**
(Quelle: Zuercher Index der Wohnbaukosten). Werte = Baukosten je m3 umbauter Raum (SIA 116);
zwei Zeilen je Klasse = EFH / MFH.

| Bauklasse (Wohnbauten) | EFH CHF/m3 | MFH CHF/m3 |
|---|---|---|
| I einfachste laendliche Bauweise | 425-500 | 350-425 |
| II einfache Konstruktion, bescheidene Ansprueche | 475-550 | 400-475 |
| III durchschnittliche Qualitaet, einfacher Innenausbau | 525-600 | 450-525 |
| IV einwandfreie Qualitaet, besserer Ausbau | 575-700 | 500-575 |
| V ueberdurchschnittlich, komfortabler Ausbau | 675-800 | 550-675 |
| VI vornehm, beste Qualitaet, hoher Komfort | 750-950 | 625-750 |

Grossgewerbe/Industrie (je m3, eingeschossig bis ausgebaut): Werkhallen ungeheizt 100-200,
Lagerhaeuser massiv 150-250, Werkstattgebaeude beheizt 200-325, Werkstatt mit umfangreicher
Technik 275-375. Bezugsgroessen: EFH = 800 m3, MFH = 5'000 m3 (8 Whg., 8 EH-Plaetze);
Zuschlag Aufzug Fr. 15-20/m3.

⚠ **Stand 2003** — fuer eine aktuelle Bewertung ueber den Zuercher Index der Wohnbaukosten
(Tab. 4 der Quelle, Basis 01.06.1939 = 100) bzw. BFS-Baupreisindex **aufindexieren**; fuer
HNF-basierte Schaetzungen die aktuellen CHF/m2-HNF-Benchmarks (oben, Wuest 2021-2023) nutzen.
Die m3-Klassen dienen primaer der **Sachwert-Plausibilisierung** und der Einordnung der
Bauqualitaet (Klasse I-VI).

#### BKP-Anteile am Gebaeude (Tab. 3, MFH mittlerer Standard, Baujahr 1985)

Anteile an den Gebaeudekosten (BKP 2 = 100 %): Baugrube 2.73 %, Rohbau 1 **35.95 %**,
Rohbau 2 9.42 % (Total Rohbau **48.10 %**); Elektro 4.63 %, Heizung/Lueftung 4.10 %, Sanitaer
8.16 %, Transport 0.56 % (Total HLKS/E **17.45 %**); Ausbau 1 12.60 %, Ausbau 2 9.30 %
(Total Ausbau **21.90 %**); Honorare 12.55 %. Diese Anteile speisen die Alterswertminderung
(unterschiedliche Lebensdauer je Bauteilgruppe, siehe unten).

### Erstellungskosten-Benchmarks Wuest Partner (Kurs 06.2023, S. 31-38)

Referenzrahmen **BKP 1-5, CHF/m2 HNF, inkl. MwSt und Parkplaetze** (S. 37):

| Nutzung/Standard | CHF/m2 HNF |
|---|---|
| Wohnen minimal | 4'700 |
| Wohnen normale Lage | 5'300 |
| Wohnen gute Lage | 5'800 |
| Wohnen ueberdurchschnittlich/gehoben | 7'000 |
| Wohnen STWE Luxus | 11'000 |
| Villa Luxus | 16'000 |
| Buero einfach (Bereich in Fabrik) | 3'200 |
| Buero gute Lage | 4'500 |
| Buero ausgebaut | 5'500 |
| Gewerbe industriell | 2'900 |
| Gewerbehalle einfach | 2'500 |
| Lagerhalle roh, minimal | 1'800 |
| Verkauf Ladenflaeche | 4'500 |

Spezial-Zuschlaege (grobe Annahme, S. 37): Hochhaus **+25 %/m2**, Anbau/Erweiterung
**+20 %/m2**, Aufstockung **+35 %/m2**, Gestaltungsplan mit Wettbewerb **+0.4-1.2 Mio CHF**.
Ertrag von Geschaeftsflaechen grob mit **5.5 % Bruttorendite** rechenbar (S. 37).

Quervergleiche/Herleitung (alle Werte Datenstand 2021-2023, ⚠ Teuerung seither pruefen):
- WP-Baukostenanalyse (Daten bis 2021): Median Wohnen Vollausbau **BKP 1-5 ~4'360 CHF/m2
  HNF** (Quantile 1.0-5.0: 3'460-7'250), BKP 2 ~3'580; pro m2 GF: BKP 1-5 Median 2'840,
  BKP 2 Median 2'330. Inkl. Teuerung 2023: **mind. 4'800 CHF/m2 HNF** (S. 33).
- SIA-Kurs «Baukosten- und Terminschaetzung» (Stand 2020): MFH Median BKP 2 = 2'800 CHF/m2
  GF → /0.70 HNF-Effizienz = 4'000 CHF/m2 HNF → +20 % Teuerung = 4'800 (S. 34).
- Studie Kostenklarheit Stadt Zuerich (2012, grosse kostenguenstige Ueberbauungen):
  Median 4'004 CHF/m2 HNF → +20 % = 4'800 (S. 35).
- Selektive WP-Analyse 2021, kleinere MFH mit ueberdurchschnittlichem Standard (Bausummen
  bis 20 Mio, indexiert): Median 25 Objekte 5'110 → **5'880 inkl. 15 % Teuerung**;
  Auswahl 5 Objekte 5'310 → 6'110 (S. 36).
- Baukosten-Dynamik (S. 32): seit 2021 ungewoehnlicher Anstieg — aeltere Benchmarks
  **mind. +10 %** anheben; dazu +10-15 % wegen gestiegener Standards/Beduerfnisse vs.
  vor 10 Jahren; Zuercher Index der Wohnbaupreise Neubauten **+8.3 %** Okt. 21-Okt. 22;
  Wohnbauprojekte 2023 rund **+30 % teurer als vor 10 Jahren**.
- Weitere Benchmark-Quellen (S. 38): Zuercher Index der Wohnbaupreise (Gewichtung:
  BKP 2 = 84.7 %, BKP 1 = 7.0 %, BKP 4 = 5.0 %, BKP 5 = 3.3 %), werk-material.online
  (CRB), kennwerte.ch.
- Erstellungskosten je Wohnungstyp (Kleinwohnungen teurer): siehe
  [[residualwertmethode]] (Excel-Tool-Defaults 5'300-6'100 CHF/m2 HNF).

### Alterswertminderung (Schaetzungsanleitung Kap. 5, Tab. 9-11)

Abzug fuer Alter/Abnutzung des Gebaeudes ueber die **Restnutzungsdauer**. Belegtes
dreistufiges Vorgehen aus der Schaetzungsanleitung:

**1. Lebensdauer der Bauteile (Tab. 9)** — Auswahl (Jahre):
- Rohbau 1: Baumeisterarbeiten/massive Tragkonstruktion **100+**, Fassadenbekleidungen 30-50.
- Rohbau 2: Fenster Holz 20-40, Fenster Kunststoff/Metall 30-50, Steildaecher (Ziegel) 40-60,
  Flachdaecher 20-60, Fassadenputze 15-25.
- Haustechnik: Elektro 30-50, Heizinstallation 15-30, Heizkessel (Oelbrenner) 15-25,
  Lueftung 15-30, Sanitaer-Leitungen 20-40, Sanitaer-Apparate 20-50, Aufzuege 20-40.
- Ausbau: Gipser 20-40, Schreiner/Schliessanlagen 20-40/40-60; Bodenbelaege Parkett 25-50,
  Linoleum 20-30, PVC 15-25, textil 10-15, keramisch 30-50; innere Malerarbeiten 10-15.
  Bei gewerblicher Nutzung Lebensdauer entsprechend der Beanspruchung reduzieren.

**2. Wirtschaftliches Alter (Tab. 10)** — gewichtetes Mittel der Bauteilgruppen-Alter.
Gewichtung uebliches Wohngebaeude: Rohbau 1 = 1, Rohbau 2 = 2, Ausbau = 3, Installationen = 4
(Total Gewicht 10). Beispiel: (1·30 + 2·25 + 3·20 + 4·15) / 10 = 200 / 10 = **20 Jahre**
wirtschaftliches Alter. Annahme: ordentliche Instandhaltung, Instandsetzungszyklen alle
25-30 Jahre; maximale Restnutzungsdauer auf 80 Jahre begrenzt.

**3. Wertminderung in % des Neuwerts (Tab. 11)** — Funktion von wirtschaftlichem Alter
(nach Objektgruppe 1-6, d.h. theoretischer Gesamtlebensdauer GLD) und Unterhaltszustand
(schlecht/mittel/gut). Objektgruppen-GLD: Gr. 1 bis 40 J. (Holz/Kunststoff Gewerbe), Gr. 3
60-80 J. (Wohnhaeuser Holz/Fachwerk, Industrie Beton/Stahl), Gr. 4 80-100 J. (massive
Wohn-/Gewerbebauten), Gr. 5 100-120 J. (ueberdurchschnittliche Wohn-/Geschaeftshaeuser),
Gr. 6 120-150+ J. (monumental). Richtwert: bei **Renovationen 10-20 % Zuschlag** auf die
Wertminderung fuer erschwerte Abbruch-/Demontagebedingungen.

Bei aufgeschobenem Unterhalt zusaetzlicher **Sanierungsabschlag** — dieser kommt aus der TDD
(Skill `ankaufspruefung`); die Wertminderung muss die am Stichtag faelligen
Instandsetzungskosten decken koennen.

## Wann Realwert fuehrt

- Selbstgenutzte EFH (Sachwertanteil), Spezialimmobilien ohne Mietmarkt, Versicherungswert.
- Bei Renditeobjekten dient er als **Plausibilisierung** des Ertragswerts, fuehrt selten.

## Offen / zu vertiefen

- ✓ 2026-06-09: Neuwert-/Erstellungskosten-Kennwerte je Nutzung/Standard (CHF/m2 HNF,
  BKP 1-5) aus dem Wuest-Kurs als belegte Tabelle eingearbeitet (T6 teilerfuellt).
- ✓ 2026-06-10: CHF/m3-Neuwert-Richtwerte (Tab. 2, Bauklasse I-VI), BKP-Anteile (Tab. 3)
  sowie Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) aus der Schaetzungsanleitung belegt eingearbeitet (T6 vollstaendig,
  T12 erfuellt). ⚠ m3-Werte Stand 2003 → aufzuindexieren.
- Verknuepfung Sanierungsstau (TDD) → Abschlag formalisieren.
- Teuerungs-Update der WP-Benchmarks auf Stand 2026 (Werte oben sind 2021-2023).
