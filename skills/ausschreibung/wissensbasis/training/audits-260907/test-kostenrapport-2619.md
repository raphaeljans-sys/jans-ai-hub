# Baubuchhaltung / Kostenrapport

Testlauf Skill `kostenkontrolle` (Reifegrad R2), erzeugt 07.09.2026 im Scratchpad. Kein Versand, keine Ablage im Projektordner.

## Kopf

```
Projekt      2619 Umnutzung 1. OG Kinderspital Zürich, Lenggstrasse 30, 8008 Zürich
Bauherr      Universitäts-Kinderspital Zürich, Eleonorenstiftung
Bauleitung   Technischer Dienst KISPI (Konto 690.10); Architektur und Kostenprognose JANS
Stand per    01.06.2026                          Rapport Nr. 01 (Testlauf)
KV-Basis     «2619 KISPI BAUKOSTEN», Prognose Kosten Hauptgruppen, Stand 01.06.26,
             Total «Annahme Budget Projektpflichtenheft» (Quelle: PDF 04_KostenTermine/1_Kosten/4_Baukosten)
Genauigkeit  +/- 5 % (gemäss Quelle)
MwSt         alle Beträge exkl. MwSt (gemäss Quelle); Satz 8.1 %
Preisstand   [PLATZHALTER: Index, Datum und Punkte fehlen in der Quelle]
Reserve      [PLATZHALTER: keine Position Unvorhergesehenes im KV, siehe Bemerkungen]
Intern       Stundensatz Technischer Dienst KISPI 80 CHF/h (Eigenleistung Bauherr)
Zahlungen    n.b. (Bauherr zahlt direkt; keine Akonto-/SR-Freigaben bei JANS)
```

## Kostenstand je Konto

Konto = Nummer der Quelltabelle (bürointerne Los-Nummer, kein BKP-2017-Code, sofern zweistellige Nachkommastelle). BKP 2017 = verifizierter Code gemäss `references/bkp-2017/BKP-2017-Liste.md`, als Vorschlag. Verpflichtung nur bei belegter Vergabe; Vergabestatus in der Quelle durchgehend «pendent» oder leer, deshalb überall 0. Prognose = Verpflichtung + offene NT-Erwartung gemäss Skill; da keine Verpflichtung besteht, ersatzweise Angebot UN (falls vorhanden) sonst KV (Improvisation, siehe Testprotokoll). Ampel: grün Prognose kleiner oder gleich KV, gelb bis KV plus 5 %, rot darüber oder ohne KV.

| Konto (Los) | BKP 2017 | Bezeichnung | Unternehmer | KV intern CHF | KV extern CHF | Budget KV CHF | Verpflichtung CHF | Zahlung CHF | Angebot UN CHF | Prognose CHF | Abweichung CHF | Prozent | Ampel | Bemerkung |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 100.00 | 100 (Übergangsposition) | Vorbereitung: Baustelleneinrichtung, Rückbau GT, Abdeckung | intern | 12'500 | 12'500 | 25'000 | 0 | n.b. | | 25'000 | 0 | 100 % | grün | offen. 156 h intern. BKP 100 ist Übergangsposition; Baustelleneinrichtung wäre 211.0, Rückbau 112 |
| 211.00 | 211 | Baumeisterarbeiten, Anpassungen Unterlagsboden | offen | | 15'000 | 15'000 | 0 | n.b. | | 15'000 | 0 | 100 % | grün | offen, pendent |
| 225.00 | 225 | Spezielle Dichtungen und Dämmungen, Ertüchtigung Brandschutz | offen | | 10'000 | 10'000 | 0 | n.b. | | 10'000 | 0 | 100 % | grün | offen, pendent |
| 225.40 | 225.4 | Brandabschottungen | offen (Los AGI AG angelegt) | | 20'000 | 20'000 | 0 | n.b. | | 20'000 | 0 | 100 % | grün | offen, pendent; im Losordner nur Grundlagen und Kontakt |
| 230.00 | 230 (Übergangsposition) | Elektroanlagen ELE, BMA, GA | intern | 50'000 | 76'000 | 126'000 | 0 | n.b. | | 126'000 | 0 | 100 % | grün | offen. 625 h intern. Ohne Aufteilung auf 231 bis 236 |
| 235.80 | 235.8 | Elektroanlagen BMA Umbau | Siemens | | 0 | 0 | 0 | n.b. | 15'823 | 15'823 | +15'823 | n.a. | rot | offen, pendent. Kein KV-Betrag in der Quelle. Angebot F26-VWL-HUM-7066 V1 R1 vom 02.06.2026 (nach Stichtag) bestätigt 15'823.00 exkl. MwSt |
| 240.00 | 240 (Übergangsposition) | Heizungsanlage: Anpassungen, Schutz, Reparatur Bodenheizung | offen | | 15'000 | 15'000 | 0 | n.b. | | 15'000 | 0 | 100 % | grün | offen |
| 244.00 | 244 | Lüftungsanlagen | intern | 60'000 | 40'000 | 100'000 | 0 | n.b. | | 100'000 | 0 | 100 % | grün | offen. 750 h intern |
| 250.00 | 250 (Übergangsposition) | Sanitäranlagen | intern (Los Karl Wächter AG angelegt) | 60'000 | 75'000 | 135'000 | 0 | n.b. | | 135'000 | 0 | 100 % | grün | offen. 750 h intern |
| 259.21 | 257.1 | Löschanlage: Anpassung Sprinkleranlage, Sprinklerköpfe Therapieküche | JOMOS | | 15'000 | 15'000 | 0 | n.b. | 38'000 | 38'000 | +23'000 | 253 % | rot | offen, pendent. Angebot JOMOS vom 12.06.2026 (nach Stichtag) weist 24'412.00 exkl. MwSt aus (Vorabklärung 4'500, Ausführung 19'912); 38'000 in der Quelle nicht belegbar. Losordner führt intern zusätzlich «257.10» |
| 271.13 | 271.1 | Gipserarbeiten: Rückbau und Neubau Leichtbauwände und Stürze | Estermann | | 120'000 | 120'000 | 0 | n.b. | 75'600 | 75'600 | -44'400 | 63 % | grün | offen, pendent. Quelle nennt 80'089.15; das ist der Betrag inkl. MwSt 8.1 % nach Skonto 2 % (Estermann KV 324s08-1 vom 01.06.2026). Exkl. MwSt: 75'600.00 brutto, 74'088.00 nach Skonto. Losordner «271.10», Offerte «BKP 271.1», Quelle «271.13» |
| 272.10 | 272.1 | Metallbauarbeiten: Decke und Abzugshaube Anpassungen Therapieküche | intern | 15'000 | | 15'000 | 0 | n.b. | | 15'000 | 0 | 100 % | grün | offen, pendent. 187.5 h intern |
| 273.00 | 273.3 | Schreinerarbeiten: spezielle Rückbauten und Anpassungen | intern | 20'000 | | 20'000 | 0 | n.b. | | 20'000 | 0 | 100 % | grün | offen, pendent. 250 h intern |
| 273.04 | 273.0 | Stahlzargentüren | RWD Schlatter | | 25'000 | 25'000 | 0 | n.b. | 13'492 | 13'492 | -11'508 | 54 % | grün | offen, pendent. Angebot KD18611 vom 28.05.2026 liegt als Bild-PDF vor, Betrag nicht maschinell verifizierbar |
| 273.35 | 273.3 (oder 258) | Therapieküche | offen (Los Röthlisberger angelegt) | | 70'000 | 70'000 | 0 | n.b. | | 70'000 | 0 | 100 % | grün | offen, pendent. Kücheneinrichtungen wären nach BKP 2017 258 |
| 273.50 | 277.2 | WC-Trennwände: Anpassungsarbeiten | offen | | 10'000 | 10'000 | 0 | n.b. | | 10'000 | 0 | 100 % | grün | offen, pendent. Losordner führt dasselbe Gewerk als «LOS_277.20 Feststehende Trennwände Sani» |
| 274.01 | 274 | Innere Verglasungen | JEGEN | | 318'000 | 318'000 | 0 | n.b. | 318'000 | 318'000 | 0 | 100 % | grün | offen, pendent. Angebot gleich KV. Im Ordner «05 Vergabe» liegt ein Scan vom 25.06.2026 (nach Stichtag, nicht lesbar); WV-Ordner leer |
| 281.00 | 281.6 | Bodenbeläge: Keramikplatten, Anpassungen, Ertüchtigung Brandschutz | offen | | 25'000 | 25'000 | 0 | n.b. | | 25'000 | 0 | 100 % | grün | offen, pendent. 281.0 wäre Estriche; Platten sind 281.6 |
| 282.00 | 282.4 | Wandbeläge: Keramikplatten, Anpassungen, Ertüchtigung Brandschutz | offen | | 25'000 | 25'000 | 0 | n.b. | | 25'000 | 0 | 100 % | grün | offen, pendent. 282.0 wäre fugenlos; Platten sind 282.4 |
| 283.00 | 283.2 | Deckenverkleidung Fluchtkorridore EI30 | offen | | 45'000 | 45'000 | 0 | n.b. | | 45'000 | 0 | 100 % | grün | offen, pendent. 283.0 wäre Gerüste |
| 283.01 | 283.3 | Deckenverkleidung: Anpassung Akustikdeckenelemente | intern | 10'000 | | 10'000 | 0 | n.b. | | 10'000 | 0 | 100 % | grün | offen, pendent. 125 h intern |
| 285.00 | 285.1 | Oberflächenbehandlung: Maler Schlussanstriche, Ausbesserung | intern | 30'000 | | 30'000 | 0 | n.b. | | 30'000 | 0 | 100 % | grün | offen, pendent. 375 h intern. 285.0 wäre Gerüste |
| 690.10 | [kein BKP 2017; Vorschlag 291 oder 299] | Planungskosten: Bauleitung KISPI | intern | 60'000 | | 60'000 | 0 | n.b. | | 60'000 | 0 | 100 % | grün | 750 h intern. Hauptgruppe 6 ist in BKP 2017 Reserve |
| 690.20 | 298.5 | Planungskosten: Brandschutz Gruner | Gruner AG | | 60'000 | 60'000 | 0 | n.b. | | 60'000 | 0 | 100 % | grün | Vergabe nicht belegt; Losordner «LOS_298.5» |
| 690.30 | 294 | Planungskosten: HLKS Gruner | Gruner AG | | 60'000 | 60'000 | 0 | n.b. | | 60'000 | 0 | 100 % | grün | Vergabe nicht belegt; Losordner «LOS_294.5» |
| 690.40 | 291 | Planungskosten: Architektur JANS | JANS | | 80'000 | 80'000 | 0 | n.b. | | 80'000 | 0 | 100 % | grün | Vergabe nicht belegt; Losordner «LOS_291.00» |
| **Total** | | | | **317'500** | **1'116'500** | **1'434'000** | **0** | **n.b.** | **[nur belegte]** | **1'416'915** | **-17'085** | **98.8 %** | | Stundentotal Quelle 4'968.5 h, Zeilensumme 3'968.5 h (Differenz 1'000 h, Quelle falsch); 317'500 / 80 = 3'968.75 h |

## Summierung nach BKP (Quellstruktur)

### BKP dreistellig

| BKP | Bezeichnung | Budget KV CHF | Verpflichtung CHF | Prognose CHF | Abweichung CHF | Prozent |
|---|---|---|---|---|---|---|
| 100 | Vorbereitung | 25'000 | 0 | 25'000 | 0 | 100 % |
| 211 | Baumeisterarbeiten | 15'000 | 0 | 15'000 | 0 | 100 % |
| 225 | Spezielle Dichtungen und Dämmungen | 30'000 | 0 | 30'000 | 0 | 100 % |
| 230 | Elektroanlagen | 126'000 | 0 | 126'000 | 0 | 100 % |
| 235 | Schwachstromanlagen | 0 | 0 | 15'823 | +15'823 | n.a. |
| 240 | Heizungsanlagen | 15'000 | 0 | 15'000 | 0 | 100 % |
| 244 | Lufttechnische Anlagen | 100'000 | 0 | 100'000 | 0 | 100 % |
| 250 | Sanitäranlagen | 135'000 | 0 | 135'000 | 0 | 100 % |
| 259 | Übriges (Sprinkler, richtig 257) | 15'000 | 0 | 38'000 | +23'000 | 253 % |
| 271 | Gipserarbeiten | 120'000 | 0 | 75'600 | -44'400 | 63 % |
| 272 | Metallbauarbeiten | 15'000 | 0 | 15'000 | 0 | 100 % |
| 273 | Schreinerarbeiten | 125'000 | 0 | 113'492 | -11'508 | 91 % |
| 274 | Innere Spezialverglasungen | 318'000 | 0 | 318'000 | 0 | 100 % |
| 281 | Bodenbeläge | 25'000 | 0 | 25'000 | 0 | 100 % |
| 282 | Wandbeläge | 25'000 | 0 | 25'000 | 0 | 100 % |
| 283 | Deckenbekleidungen | 55'000 | 0 | 55'000 | 0 | 100 % |
| 285 | Innere Oberflächenbehandlungen | 30'000 | 0 | 30'000 | 0 | 100 % |
| 690 | Planungskosten (kein BKP 2017) | 260'000 | 0 | 260'000 | 0 | 100 % |
| **Total** | | **1'434'000** | **0** | **1'416'915** | **-17'085** | **98.8 %** |

### BKP zweistellig

| BKP | Bezeichnung | Budget KV CHF | Prognose CHF | Abweichung CHF | Prozent |
|---|---|---|---|---|---|
| 10 | Vorbereitung | 25'000 | 25'000 | 0 | 100 % |
| 21 | Rohbau 1 | 15'000 | 15'000 | 0 | 100 % |
| 22 | Rohbau 2 | 30'000 | 30'000 | 0 | 100 % |
| 23 | Elektroanlagen | 126'000 | 141'823 | +15'823 | 113 % |
| 24 | Heizung, Lüftung | 115'000 | 115'000 | 0 | 100 % |
| 25 | Sanitäranlagen | 150'000 | 173'000 | +23'000 | 115 % |
| 27 | Ausbau 1 | 578'000 | 522'092 | -55'908 | 90 % |
| 28 | Ausbau 2 | 135'000 | 135'000 | 0 | 100 % |
| 69 | Planungskosten (kein BKP 2017, richtig 29) | 260'000 | 260'000 | 0 | 100 % |
| **Total** | | **1'434'000** | **1'416'915** | **-17'085** | **98.8 %** |

### BKP einstellig

| BKP | Bezeichnung | Budget KV CHF | Prognose CHF | Abweichung CHF | Prozent |
|---|---|---|---|---|---|
| 1 | Vorbereitungsarbeiten | 25'000 | 25'000 | 0 | 100 % |
| 2 | Gebäude | 1'149'000 | 1'131'915 | -17'085 | 98.5 % |
| 6 | (in BKP 2017 Reserve; Honorare gehören zu 29) | 260'000 | 260'000 | 0 | 100 % |
| **Total** | | **1'434'000** | **1'416'915** | **-17'085** | **98.8 %** |

Reserve, Unvorhergesehenes: im KV keine Position (BKP 583). Bei +/- 5 % Genauigkeit entspräche das rechnerisch 71'700 CHF; nicht eingesetzt, weil in der Quelle nicht ausgewiesen [PLATZHALTER, Entscheid Bauherr].

## Abweichungs-Kommentar (Bauherr)

```
Wesentliche Abweichungen (> 10'000 CHF oder > 10 %):
- 235.80 BMA Umbau: Angebot Siemens 15'823 ohne KV-Position. Ursache: Position im KV nicht
  budgetiert. Massnahme: KV-Mutation, Deckung aus Minderkosten 271.13. Auswirkung +15'823.
- 259.21 Sprinkler: Prognose 38'000 gegen KV 15'000 (+23'000). Ursache: Anpassungsumfang
  Therapieküche grösser als angenommen. Hinweis: das Angebot JOMOS vom 12.06.2026 nennt
  24'412 exkl. MwSt; die 38'000 der Quelltabelle sind zu belegen oder zu korrigieren.
- 271.13 Gipser: Angebot Estermann 75'600 exkl. MwSt gegen KV 120'000 (-44'400). Vorbehalt:
  Angebot basiert auf angepassten Plänen; Regie, Teuerung und Ausmassreserve nicht enthalten.
- 273.04 Stahlzargentüren: Angebot 13'492 gegen KV 25'000 (-11'508); Beleg nicht maschinell
  lesbar, Betrag aus der Quelltabelle übernommen.
Vergabestand: keine belegte Vergabe per 01.06.2026, Verpflichtungen 0; 5 Angebote pendent,
21 Positionen ohne Angebot. Die Prognose stützt sich zu 88 % auf KV-Werte.
Gesamtprognose vs. KV: -17'085 CHF, -1.2 % (innerhalb der Genauigkeit +/- 5 %).
Einzelausreisser: 259.21 (+153 %), 235.80 (ohne KV), 271.13 (-37 %).
```

## Vergabevergleich je Angebot (vergleichbare KV-Summe)

Rückstellungen für Regie, Teuerung und Ausmassreserve sind im KV nicht separat ausgewiesen; die vergleichbare KV-Summe entspricht deshalb dem KV [PLATZHALTER: Anteile Regie, Teuerung, Ausmassreserve je Konto].

| Konto | Unternehmer | Angebot exkl. MwSt CHF | KV CHF | Vergleichbare KV-Summe CHF | Differenz CHF | Status |
|---|---|---|---|---|---|---|
| 235.80 | Siemens | 15'823 | 0 | 0 | +15'823 | pendent |
| 259.21 | JOMOS | 38'000 (Beleg 24'412) | 15'000 | 15'000 | +23'000 | pendent |
| 271.13 | Estermann | 75'600 | 120'000 | 120'000 | -44'400 | pendent |
| 273.04 | RWD Schlatter | 13'492 | 25'000 | 25'000 | -11'508 | pendent |
| 274.01 | JEGEN | 318'000 | 318'000 | 318'000 | 0 | pendent |

## Schlussabrechnungs-Prüfung (je Gewerk)

Per Stichtag keine Abnahme, kein Werkvertrag, keine Schlussrechnung. Block leer.

```
Gewerk BKP [XXX] [Gewerk]
Werkvertrag CHF [n.b.]  + genehmigte NT CHF [n.b.]  = Soll CHF [n.b.]
SR Unternehmer CHF [n.b.]   Differenz CHF [n.b.]
[ ] Ausmass geprüft   [ ] Skonto/Rabatt korrekt   [ ] Rückbehalt/Garantie beurteilt
[ ] Regie/NT belegt   Freigabe Schlusszahlung: [ ] ja  Betrag CHF [n.b.]
```

## Kennwerte

```
Bezugsflächen nach SIA 416: GF [PLATZHALTER m2] / NGF [PLATZHALTER m2] / GV [PLATZHALTER m3]
Erstellungskosten BKP 1 bis 2 (Quelle, exkl. Honorare 690): CHF 1'174'000 KV, Prognose 1'156'915
Erstellungskosten inkl. Planungskosten: CHF 1'434'000 KV, Prognose 1'416'915
CHF/m2 und CHF/m3: nicht berechenbar, Bezugsmenge fehlt in der Quelle.
```

## Garantieverfalldaten-Liste

| Gewerk | Unternehmer | Abnahme | Garantie bis | Verjährung bis | Sicherheit (Form) |
|---|---|---|---|---|---|
| keine Abnahmen per 01.06.2026 | | | | | |

## Quellen

Quelltabelle: «2619 KISPI BAUKOSTEN.pdf», Stand 01.06.26, Ordner 04_KostenTermine/1_Kosten/4_Baukosten. Losordner: 03_BKP (22 Losordner). Belege: Estermann KV 324s08-1 vom 01.06.2026 (271.10 04 Offerte UN/angepasst.pdf); Siemens Angebot F26-VWL-HUM-7066 V1 R1 vom 02.06.2026; JOMOS Angebot Planung und Kostenschätzung vom 12.06.2026; JEGEN Scan 25.06.2026 (nicht lesbar); RWD Schlatter KD18611 vom 28.05.2026 (nicht lesbar). BKP-Codes verifiziert gegen `references/bkp-2017/BKP-2017-Liste.md`.
