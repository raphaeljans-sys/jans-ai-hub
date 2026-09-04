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
last_updated: 2026-09-04
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
Sonderregel (0,6-Faktor fuer Erdsonden/Waermeerzeugung bei -P/-A) ist ersatzlos gestrichen und
durch die ausdrueckliche Anweisung ersetzt, fuer alle Minergie-Standards denselben Wert zu
verwenden — was den ECO-Nachweis fuer P/-A-Bauten **erleichtert**, nicht erschwert (Abschnitt 8).

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

## 8) Der 0,6-Faktor für Minergie-P/-A — geklärt (Run 177, 04.09.2026)

**Der Punkt galt seit dem 03.09.2026 als «nicht aus dem Anleitungstext entscheidbar». Das war
falsch: die Antwort steht wörtlich in der Fussnote, deren Wegfall den Punkt ausgelöst hat.**

### Der Befund in einem Satz

Der 0,6-Faktor ist **bewusst gestrichen und ausdrücklich ersetzt** worden, nicht implizit in die
Basiswerte eingerechnet — V2023.3 sagt in derselben Erdsonden-Fussnote positiv, was neu gilt.

### Der Beleg (wörtlich)

**V1.3, Fussnote 3 (Neubau) und Fussnote 4 (Kapitel «Modernisierung»), beide am Spaltenkopf
«Erdsonden» der Haustechnik-Basisgrenzwerte:**

> «Für Minergie-P und Minergie-A-Bauten sind die Werte mit 0.6 zu multiplizieren.»

**V2023.3, Fussnote 3 zum Erdsonden-Basisgrenzwert der Neubau-Tabelle:**

> «Basis stellt der Datensatz 31.016 „Erdsonden, für Sole-Wasser-Wärmepumpe" der
> KBOB-Ökobilanzdaten 2022, Version 3 dar. Es wird von einer Entnahmeleistung von 36 W/m, einem
> Wärmeleistungsbedarf von 20 W/m² EBF und einer Arbeitszahl der Wärmepumpe von 4 ausgegangen.
> **Für alle Minergie-Standards ist derselbe Wert zu verwenden.**»

Das ist keine Auslassung, sondern eine **Ersetzungsklausel**: an der Stelle, an der V1.3 den
Faktor anordnete, ordnet V2023.3 ausdrücklich dessen Gegenteil an.

⚠ **Reichweite des Zitats, präzisiert nach Refuter-Prüfung:** der Satz steht in V2023.3 **genau
einmal**, nämlich in der **Neubau**-Fussnote. Die Haustechnik-Tabelle im Erneuerungskapitel führt
«Erdsonden» dort **ohne Fussnotenzeichen** — für die Erneuerung gilt der Satz also nur mittelbar
(gleiche Werte, gleiche Tabellenstruktur, ausdrücklich «analog zu den Neubauten definiert»), nicht
durch eigenes Zitat. In V1.3 dagegen trug **jede** der beiden Tabellen ihre eigene 0,6-Fussnote. Damit ist die im Vorlauf
offengelassene Lesart (b) — «der Faktor ist implizit in die neu kalibrierten Basiswerte
eingerechnet» — **ausgeschlossen**: ein Wert, der für alle Standards derselbe ist, kann keinen
standardabhängigen Faktor enthalten. Zwei unabhängige Gegenproben stützen das:

**Gegenprobe 1 — die Zahlen sind unverändert.** Erdsonden-Basisgrenzwert 1.4 kWh/m²·a bzw.
0.3 kg CO₂/m²·a in **beiden** Fassungen; Wärmeerzeugung bei Erneuerung 0.2 kWh/m²·a bzw.
0.04 kg CO₂/m²·a, ebenfalls in beiden identisch und über **alle** Nutzungskategorien gleich. Wäre
der Faktor eingerechnet worden, hätten diese Werte sich ändern oder nach Standard aufspalten
müssen.

**Gegenprobe 2 — dasselbe Zahlenwerk in einem zweiten Regelwerk, ebenfalls ohne Faktor.** Das
Minergie-Produktreglement 2026.1 (Anhang G) führt für die THGE-Grenzwerte die zahlengleichen
Haustechnik-Zuschläge Erdsonde **+0,3**, PV **+7,1**, Solarthermie **+5,6** kg CO₂-eq/m²·a — und
kennt dort ebenfalls keinen P/A-Faktor (`[[minergie-standards]]`, `[[graue-energie]]`). Zwei
unabhängig geführte Regelwerke Minergies behandeln die Haustechnik-Zuschläge heute
standardunabhängig.

### Die zweite Stelle: Wärmeerzeugung bei Erneuerung

Hier ist der Befund schwächer und wird als solcher ausgewiesen. V1.3 trägt die Klausel «Achtung:
Für Minergie-P und Minergie-A-Bauten sind die Werte für die Wärmeerzeugung mit 0.6 zu
multiplizieren» **zweimal** — je einmal unter der kWh- und unter der CO₂-Tabelle der
Haustechnik-Modernisierung — und zwar als **«Achtung»-Absatz im Fliesstext**, nicht als Fussnote.
**In V2023.3 fehlt sie ersatzlos**, ohne dass an dieser Stelle eine Ersetzungsklausel
nachgeschoben würde. Der Faktor 0.6 kommt in V2023.3 an **keiner** Stelle des Dokuments mehr vor
(Suche über den Volltext beider Extraktionen). Der einzige verbliebene
«Achtung»-Satz in V2023.3 ist der für die Aussenbauteile (Faktor 1.2), wortgleich zu V1.3.
Für die Wärmeerzeugung stützt sich der Schluss also auf die **Analogie zur Erdsonden-Klausel plus
die unveränderten Werte**, nicht auf einen eigenen Satz der Quelle.

### ⚠ Richtungskorrektur: der Faktor war keine «Vergünstigung»

**Bis zum 04.09.2026 führte dieses Destillat den 0,6-Faktor als «Vergünstigung» für
Minergie-P/-A. Das ist die falsche Wirkrichtung.** Die Tabellenwerte sind **Basisgrenzwerte**:
aus ihnen und den zugehörigen Flächen errechnen sich die objektspezifischen Grenzwerte GW1 und
GW2, gegen welche die berechnete Graue Energie gemessen wird. V2023.3 definiert sie ausdrücklich:

> «Der Grenzwert 1 (GW1) bezeichnet den Übergang zwischen gut (grün) und befriedigend (orange),
> der Grenzwert 2 (GW2) den Übergang zwischen befriedigend (orange) und unbefriedigend (rot).»

Ein **höherer** Grenzwert ist also leichter zu erfüllen, ein **tieferer** schwerer. Daraus folgt:

| Faktor in V1.3 | Wirkung auf den Grenzwert-Beitrag | Wirkung auf den Nachweis |
|---|---|---|
| **0,6** auf Erdsonden / Wärmeerzeugung | senkt ihn auf 60 % | schwerer zu erfüllen |
| **1,2** auf Aussenbauteile | erhöht ihn auf 120 % | leichter zu erfüllen |

**Drei Vorbehalte zu dieser Tabelle, alle aus der Refuter-Prüfung, alle einzuhalten:**

**01 «Verschärfung» und «Erleichterung» sind nicht die Sprache der Quelle.** Beide Fassungen
werten nirgends. Belegt ist die *Wirkung* (tieferer Grenzwert = schwerer zu erfüllen), nicht eine
Absicht des Herausgebers. Wer die Wertung der Quelle zuschreibt, geht über sie hinaus.

**02 Die Aggregationsformel ist nirgends abgedruckt.** Weder V1.3 noch V2023.3 zeigen, wie die
Basisgrenzwerte der Einzelelemente zu GW1/GW2 verrechnet werden; beide sagen nur «errechnet
sich». Dass ein Faktor auf einen Baustein den Gesamtgrenzwert in dieselbe Richtung bewegt, ist
ein **Schluss** aus der Passage, ein vorhandenes Element solle «nicht bestraft» werden — ein
starker Schluss, aber ein Schluss.

**03 Der Faktor wirkte nur bedingt.** Er griff ausschliesslich, wenn überhaupt eine Erdsonde
vorhanden war («Erdsonde (Auswahl)» als Eingabeparameter). Ein P/A-Bau ohne Erdsonde war davon
nie betroffen.

In der Quelle begründet ist nur der 1,2er («um den höheren Materialeinsatz für den besseren
Wärmeschutz zu berücksichtigen»). Für den 0,6er nennt V1.3 **keinen** Grund. Naheliegend ist eine
Mengenkorrektur: die Fussnote leitet den Erdsonden-Wert aus einem **Wärmeleistungsbedarf von
20 W/m² EBF** her, und ein Minergie-P/-A-Bau braucht weniger, also eine kürzere Sonde mit weniger
grauer Energie. Dann wäre der 0,6er sachlich eine Mengenanpassung, die sich lediglich **in der
Wirkung** wie eine Verschärfung äussert. *(Beide Deutungen sind eigene Einordnung; die Quelle
schweigt zum Motiv. Für die Praxis ist die Wirkung entscheidend, nicht das Motiv.)*

**Konsequenz:** Der Wegfall des 0,6-Faktors ist für Minergie-P/-A-Bauten eine **Erleichterung**,
kein Verlust. Sie dürfen den Erdsonden- und Wärmeerzeugungs-Zuschlag heute in voller Höhe
ansetzen wie jeder Minergie-Basisbau, behalten aber den Hüllen-Bonus von 1,2. Netto ist der
ECO-Nachweis für P/A-Bauten seit V2023.3 **milder** geworden.

### Was daran die Methodenlehre ist

Der Vorlauf hat die Fussnote als «umformuliert, ohne Faktor» korrekt als **verändert** erkannt und
den Satz, der die Veränderung erklärt, in derselben Fussnote nicht gelesen. **Eine festgestellte
Auslassung ist erst dann untersucht, wenn der Text an genau dieser Stelle vollständig gelesen
wurde** — ein Diff sagt, dass etwas fehlt, nicht, was an seine Stelle getreten ist. Gleiche
Familie wie die «Geltungsbereich mitlesen»-Lehre der sechsten Prüfung (`training/PROGRAMM.md`).

### Beiläufiger Quellenfehler (beide Fassungen, unbereinigt)

Die Grenzwert-Grafik trägt die Einheit **MJ/m²AE·a**, während der Fliesstext unmittelbar daneben
festlegt: «Die Grenzwerte haben die Einheit kWh/m²a». Der Widerspruch steht **identisch in V1.3
und V2023.3** und ist ein Fehler der Quelle selbst, keine Änderung zwischen den Fassungen.
Beim Zitieren die Fliesstext-Einheit (kWh/m²a) verwenden, nicht die Grafik-Achse.

**Status:** geklärt für die Erdsonden-Stelle (wörtlicher Beleg), begründet geschlossen für die
Wärmeerzeugungs-Stelle (Analogie + unveränderte Werte, keine eigene Ersetzungsklausel).
Ursprünglich QUESTIONS.md E-R176-1 (Minergie-Strang, siehe dort zur ID-Doppelvergabe).

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
- Faktor 1.2 für Aussenbauteile bei Minergie-P/-A — unverändert vorhanden (und, anders als der
  gestrichene 0,6-Faktor, eine **Erleichterung**: er hebt den Grenzwert; siehe Abschnitt 8).

## Redundanzhinweis (Schritt 0)

`[[minergie-eco-gebaeudelabel]]` behandelt das Grundprinzip/die Geschichte von ECO (Merkblatt
2007, 19 Jahre alt), nicht die aktuelle Berechnungsmethodik. `[[kbob-graue-treibhausgasemissionen-2025]]`
trägt seit Run 167 einen Kurz-Nachtrag zu den PV/Solar-Haustechnikwerten — dieses Destillat ist
die vollständige Primärquelle dazu und sollte dort verlinkt, nicht dupliziert werden.
