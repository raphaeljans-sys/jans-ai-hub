---
quelle: Minergie/eco-bau «Berechnung der Grauen Energie und der Treibhausgasemissionen beim
  Zusatz ECO», Version 2023.3 vom 26.11.2024 —
  https://www.minergie.ch/media/241126_zus_eco_berechnung_graue_energie-thge_v2023-3_de.pdf
  (Vorgaengerfassung zum Vergleich: Version 1.3 vom 31.03.2021 —
  https://www.minergie.ch/media/210331_berechnung_graue_energie_2021_v1-3.pdf)
herausgeber: Minergie Schweiz (Baeumleingasse 22, 4051 Basel), in Zusammenarbeit mit ecobau
ausgabe: Version 2023.3, 26. November 2024 (18 Seiten); Vergleichsbasis Version 1.3, 31.03.2021
  (17 Seiten)
gelesen: beide Fassungen vollstaendig per curl geladen und mit pdftotext -layout Seite fuer
  Seite gegengelesen (03.09.2026)
datenstand: aktuell — dies ist die von Minergie selbst als gueltig gefuehrte Fassung
  (Stand Abruf 03.09.2026, keine neuere Version auf der Quellseite gelistet)
status: established
last_updated: 2026-09-03
links: [[kbob-graue-treibhausgasemissionen-2025]], [[minergie-eco-gebaeudelabel]],
  [[minergie-nachweiskurs-2023-mkz-thge]], [[minergie-produktreglement-2026-1-muken-vergleich]]
---

# Destillat — Minergie-ECO-Anleitung Graue Energie: Fassung V2023.3 im Vollvergleich zu V1.3

## Auftrag und Abgrenzung

Run 167 (29.08.2026) hatte nur die drei Haustechnik-Basisgrenzwerte (PV, Solarkollektoren,
Erdsonden) zwischen V1.3 und V2023.3 verglichen und den Rest der Fassung als offen markiert
(`wiki/QUESTIONS.md` E-R167-1). Dieses Destillat schliesst die Luecke: beide Fassungen wurden
vollstaendig Seite fuer Seite gegengelesen. **Ergebnis vorweg: der bisher gefuehrte Befund war
zu eng.** Nicht nur die Haustechnik-Grenzwerte haben sich geaendert, sondern auch die primaere
Neubau-Grenzwerttabelle (GWPEAE, kWh/m²a) je Nutzungskategorie — und das war in der KB bisher
nirgends vermerkt.

## Das Wichtigste in einem Satz

V2023.3 ist keine reine Aktualisierung der Zahlen, sondern eine Strukturreform: ECO wird vom
eigenstaendigen Label («Minergie-ECO») zum «Zusatz ECO» zu jedem Minergie-Standard, die
Neubau-Basisgrenzwerte fuer Graue Energie sind neu kalibriert, und mindestens eine
Vergünstigung (0,6-Faktor fuer Erdsonden/Waermeerzeugung bei -P/-A) ist ersatzlos verschwunden.

## 1) Terminologie- und Strukturwechsel (durchgehend)

- **«Minergie-ECO / Minergie-P-ECO / Minergie-A-ECO» (V1.3) → «Zusatz ECO» (V2023.3).** ECO ist
  nicht mehr ein eigenes Label pro Basisstandard, sondern ein einheitlicher Zusatz zu jedem
  Minergie-Standard. Rein terminologisch, aber wichtig fuer die Suche in aelteren Unterlagen.
- **«Modernisierung» (V1.3) → «Erneuerung» (V2023.3)**, durchgehend in der ganzen Anleitung.
- Die Fragenliste heisst neu **«Fragenkatalog Erneuerung Graue Energie/THGE»** (vorher «Graue
  Energie Modernisierung», als Excel-Tool gefuehrt) und liegt unter
  `https://www.minergie.ch/de/zertifizieren/eco/` zum Download (V1.3 nannte nur `www.minergie.ch`).

## 2) Zugelassene Software (Abschnitt 3.1) — von der Positivliste zum Verweis

V1.3 nennt vier konkrete Tools im Fliesstext: Lesosai (ab 7.1 mit vollstaendigem ECO-Nachweis),
GREG, Enerweb 380/1, Thermo. **V2023.3 nennt keine Tools mehr im Text**, sondern verweist auf
eine gesondert gefuehrte «akkreditierte Ökobilanz-Software fuer den Zusatz ECO» (Link, nicht im
PDF ausformuliert). Wer die zugelassene Software-Liste braucht, muss sie separat auf der
Minergie-Seite abrufen — sie steht nicht mehr in der Anleitung selbst.

## 3) Neu in V2023.3: vereinfachter Nachweis fuer kleine Neubauten

**Komplett neuer Absatz, keine Entsprechung in V1.3:** Fuer kleine Wohn- und Schulneubauten bis
1'000 m² Energiebezugsfläche (AE/EBF) darf die im Minergie-Nachweis bereits integrierte
Berechnung «THGE Erstellung» als ECO-Nachweis **über alle Planungsphasen** verwendet werden
(provisorische UND definitive Zertifizierung). Für alle übrigen Neubauten gilt das nur für die
**Projektierungsphase** (provisorische Zertifizierung) — dort braucht es fuer die definitive
Zertifizierung weiterhin die volle Berechnung. Praktische Folge fuer kleine Wohnbauten/Schulen:
ein separates Ökobilanz-Tool kann entfallen, wenn ohnehin ein Minergie-Nachweis erstellt wird.

## 4) Aushub-Ausnahme in V1.3 entfernt

V1.3 kennzeichnet **B06.04 Baugrubenabschluss** und **B07.02 Pfählung** mit einem Sternchen und
haelt fest: «Die oben mit einem * bezeichneten Elementgruppen müssen bei Minergie-Eco in
Abweichung zum SIA-Merkblatt 2032:2020 nicht berücksichtigt werden.» **In V2023.3 ist dieser
Satz komplett gestrichen**, die beiden Elementgruppen stehen ohne Sternchen und ohne Ausnahme
in der Aushub-Liste. Lesart: die frühere Erleichterung (Baugrubenabschluss/Pfählung nicht
bilanzieren) gilt nicht mehr — beide Elemente sind neu wie im SIA-Merkblatt 2032 selbst
vorgesehen zu erfassen. **Nicht am Nachweistool verifiziert, nur am Anleitungstext** — siehe
offene Punkte unten.

## 5) Neu in V2023.3: PV-Flächenanrechnung nach Eigenverbrauch

**Komplett neue Regel, keine Entsprechung in V1.3:** Die anzurechnende Fläche einer
PV-Anlage wird nicht mehr voll gezählt, sondern gewichtet nach Eigenverbrauchsrate und
Netzeinspeise-Anteil — **Eigenverbrauch zu 100 %, Netzeinspeisung nur zu 40 %** angerechnet.
Beispiel aus der Quelle: eine 100 m²-PV-Anlage mit 50 % Eigenverbrauch wird nur mit 70 m²
eingerechnet (50 m² × 100 % + 50 m² × 40 % = 70 m²). Das gilt fuer die **Berechnung** der
Grauen Energie (Abschnitt 3.3); in der vereinfachten Erfassung ist die entsprechende Zeile in
V2023.3 konsequent auf «Photovoltaik-Anlage (Fläche, anteilig gemäss Eigenverbrauchsrate)»
umformuliert — V1.3 kannte dort nur «(Fläche)» ohne Gewichtung. Fachliche Einordnung: die Regel
soll verhindern, dass eine grossflächige PV-Anlage die ECO-Bilanz unverhältnismässig belastet,
wenn ein grosser Teil des Stroms ohnehin ins Netz eingespeist wird und die Anlage damit primär
dem Netz, nicht dem Gebäude dient.

## 6) Neubau-Basisgrenzwerttabelle (GWPEAE) — bisher nicht dokumentierte Änderung

Dies ist der materiell wichtigste Fund. Tabelle Abschnitt 4.2 (Grenzwerte Graue Energie
kWh/m²a, bezogen auf die Energiebezugsfläche AE):

| Nutzung (V1.3) | GW1 → GW2 (V1.3) | Nutzung (V2023.3) | GW1 → GW2 (V2023.3) |
|---|---|---|---|
| Wohnen MFH | 25.0 → 36.1 | Wohnen MFH | **28 → 35** |
| Kleine Wohnbauten | 27.8 → 40.3 | Wohnen EFH | **28 → 37** |
| Verwaltung | 30.6 → 41.7 | Verwaltung | **28 → 39** |
| Schule | 25.0 → 36.1 | Schule | **28 → 39** |
| Verkauf | 47.2 → 58.3 | Verkauf | **39 → 57** |
| Restaurant | 33.3 → 44.4 | Restaurant | **28 → 44** |
| Museen | 38.9 → 50.0 | Versammlungslokal | **39 → 50** |
| Spital | 44.4 → 55.6 | Spital | **39 → 56** |
| Industrie | 38.9 → 50.0 | Industrie | **39 → 50** |
| Kleine Schulbauten | 27.8 → 40.3 | *(entfallen, siehe unten)* | — |
| Sportbauten | 38.9 → 50.0 | Sportbauten | **39 → 50** |
| GF-AE (unbeheizt, alle Nutzungen, Zeile bei Verkauf/Restaurant) | 8.3 → 13.9 | GF-AE (unbeheizt) | **8.3 → 13.3** |

**Kategorien-Konsolidierung:** «Kleine Wohnbauten» wird zu «Wohnen EFH» (eigene, plausiblere
Bezeichnung); «Museen» wird zu «Versammlungslokal» (breiterer Begriff); **«Kleine Schulbauten»
entfällt ersatzlos** — nur noch «Schule» bleibt als Kategorie, ohne Grössenstaffelung.

**Bewertung der Bewegung:** kein einheitlicher Trend. GW1 (unterer, strengerer Grenzwert) steigt
bei den meisten Nutzungen leicht (z. B. Wohnen MFH 25.0→28, Schule 25.0→28) — das erleichtert
GW1 tendenziell. GW2 (oberer Grenzwert) sinkt dagegen bei mehreren Nutzungen spürbar (Wohnen MFH
36.1→35, Restaurant 44.4→44 nahezu gleich, **Verkauf 58.3→57**, GF-AE 13.9→13.3) — das
verschärft die Grenze zwischen «befriedigend» und «unbefriedigend». Die Verschiebung ist je
Nutzung unterschiedlich stark und lässt sich nicht mit einem einzigen Faktor umrechnen — für ein
konkretes Projekt ist immer die aktuelle Tabelle (V2023.3, oben rechts) massgebend, nie eine
Umrechnung von einem älteren Nachweis.

**Gegenprobe THGE-Tabelle (kg CO₂eq/m²a, gleicher Abschnitt):** hier sind die Werte je
Nutzungskategorie **fast unverändert** — Wohnen MFH 8.0/10.0 in beiden Fassungen identisch,
Verwaltung/Schule 8.0/11.0 identisch, Spital/Industrie/Sportbauten 11.0/14.0 identisch. Einzige
Bewegung: die GF-AE-Zeile (Verkauf/Restaurant, unbeheizt) sinkt von 4.7 auf **4.5**
kg CO₂eq/m²a. Das heisst: **die Energie-Grenzwerte (kWh) wurden neu kalibriert, die
Emissions-Grenzwerte (kg CO₂eq) blieben grösstenteils gleich** — zwei unabhängige Anpassungen,
keine gemeinsame Neuskalierung.

## 7) Haustechnik-Basisgrenzwerte — vollständige Zahlen (Run 167 hatte nur die CO₂-Werte)

| Element | V1.3 (kWh/m²·a) | V1.3 (kg CO₂/m²·a) | V2023.3 (kWh/m²·a) | V2023.3 (kg CO₂/m²·a) |
|---|---|---|---|---|
| PV-Anlage (bzgl. Bauteilfläche) | 47.2 | 13.3 | **25.5** | **7.1** |
| Therm. Solarkollektoren | 23.2 | 5.2 | **22.2** | **5.6** |
| Erdsonden (bzgl. EBF) | 1.4 | 0.3 | 1.4 | 0.3 |

**Neu: auch der kWh-Wert der PV-Anlage hat sich mehr als halbiert** (47.2 → 25.5, Faktor
~0.54) — bisher fuehrte die KB nur die CO₂-Halbierung (13.3→7.1). Datengrundlage laut Fussnote:
V1.3 stützt sich auf KBOB-Datensatz 34.024 „Solarstromanlage" (KBOB-Liste **2016**), Annahme
320-Watt-Paneel mit 1.67 m² Fläche (≈192 Wp/m²); V2023.3 stützt sich auf denselben Datensatz,
aber KBOB-**Ökobilanzdaten 2022, Version 3**, Annahme neu **200 Wp/m²**. Die Reduktion ist also
Folge sowohl der neueren Ökobilanzdaten als auch einer geänderten Leistungsannahme — nicht
weiter aufgeschlüsselt, welcher Anteil auf welchen Faktor entfällt.

## 8) Verschwundener 0,6-Faktor für Minergie-P/-A (offener Punkt, nicht abschliessend geklärt)

V1.3 nennt an **zwei** Stellen einen Herabsetzungsfaktor 0,6 für Minergie-P/-A-Bauten:
- Fussnote zu Erdsonden («Für Minergie-P und Minergie-A-Bauten sind die Werte mit 0.6 zu
  multiplizieren»), unmittelbar im Anschluss an die Erdsonden-Basisgrenzwerte;
- bei der Erneuerung/Modernisierung der Haustechnik («Achtung: Für Minergie-P und Minergie-A-
  Bauten sind die Werte für die Wärmeerzeugung mit 0.6 zu multiplizieren»), zweimal (nach der
  kWh- und nach der CO₂-Tabelle).

**In V2023.3 ist an keiner der drei Stellen ein 0,6-Faktor mehr zu finden** — weder in der
Erdsonden-Fussnote (Fussnote 3, umformuliert, ohne Faktor) noch bei den beiden
Erneuerungs-Tabellen. Der einzige verbleibende Multiplikator in V2023.3 ist der **Faktor 1.2**
für die Aussenbauteile bei Minergie-P/-A (unverändert in beiden Fassungen vorhanden, Abschnitt
4.2/4.3). Zwei Lesarten sind offen und **nicht aus dem Anleitungstext allein zu entscheiden**:
(a) der Faktor wurde bewusst gestrichen (Systemvereinfachung, Erleichterung für P/A-Bauten
entfällt), oder (b) er ist implizit in die neu kalibrierten Basiswerte eingerechnet worden.
Da beide Anleitungen reine Text-/Tabellendokumente ohne Berechnungsformel sind, lässt sich das
nicht rückrechnen. **Bleibt offen, siehe QUESTIONS.md E-R176-1.**

## 9) Was unverändert blieb

- Sämtliche Basisgrenzwerte für **Erneuerung/Modernisierung der Gebäudehülle** (Aussenwände,
  Dächer, Bodenplatte, Fenster/Aussentüren, Innenbauteile, je GW1/GW2, sowohl kWh- als auch
  CO₂-Tabelle) sind **zahlenmässig identisch** zwischen V1.3 und V2023.3 — nur die
  Nutzungskategorien wurden analog zu Abschnitt 6 konsolidiert (Kleine Wohnbauten→Wohnen EFH,
  Museen→Versammlungslokal, Kleine Schulbauten entfällt), bei gleichbleibenden Werten der
  übernommenen Kategorie.
- Ebenso identisch: die Haustechnik-Erneuerungstabelle (Lüftung/Sanitär/Elektro/Wärmeerzeugung/
  -verteilung/-abgabe) — Werte unverändert, nur Kategorien konsolidiert.
- Grundsätze der Bauteilerfassung (Aussenwände mit Aussenmass, Innenwände ohne Abzüge,
  nicht zu bilanzierende Leistungen wie Gütertransporte/Verpackungen/Materialverschnitt,
  ausgeschlossene Elementgruppen A/D02/D03/D04/D05-Kälte/D12/H/I/J/V/W/Y/Z) — wortgleich in
  beiden Fassungen, mit der einen Ausnahme der Aushub-Sternchen-Regel (Punkt 4 oben).
  **⚠ Nicht identisch — Nachtrag 03.09.2026:** die Ausschlussliste erwähnt in **beiden**
  Fassungen `D02 Gebäudeautomation` und separat ein nicht mit Elementcode versehenes
  „D05 Kältetechnische Anlage" (Tippfehler/Doppelverwendung von D05 neben D05 Wärmetechnik in
  der Bilanzliste selbst) — das ist ein Fehler in der **Quelle selbst**, in beiden Fassungen
  identisch übernommen, keine Korrektur zwischen V1.3 und V2023.3.
- SIA-Merkblatt-2032-Bezug, 60 Jahre Nutzungsdauer, Bilanzperimeter gesamtes Gebäude — unverändert.
- Faktor 1.2 für Aussenbauteile bei Minergie-P/-A — unverändert vorhanden.

## Redundanzhinweis (Schritt 0)

`[[minergie-eco-gebaeudelabel]]` behandelt das Grundprinzip/die Geschichte von ECO (Merkblatt
2007, 19 Jahre alt), nicht die aktuelle Berechnungsmethodik. `[[kbob-graue-treibhausgasemissionen-2025]]`
trägt seit Run 167 einen Kurz-Nachtrag zu den PV/Solar-Haustechnikwerten — dieses Destillat ist
die vollständige Primärquelle dazu und sollte dort verlinkt, nicht dupliziert werden.
