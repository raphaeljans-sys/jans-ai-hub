---
title: "Inventar buero-referenzen / 18_Projektkostenplanung"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/18_Projektkostenplanung
last_updated: 2026-08-23
status: established
---

# Inventar: 18_Projektkostenplanung

## Kurzbefund

28 Dateien in sieben Themenordnern, Jahrgang 2003 bis 2010, Dateisystem-Daten von Juni 2004
bis August 2010. Die Sektion ist klein, aber ungewöhnlich dicht: Sie enthält **einen einzigen
Grossbau vollständig über alle Kostenermittlungsstufen hinweg** — die Neubau-Schulanlage
Leutschenbach in Zürich (Architekt Christian Kerez, Bauleitung BGS Architekten Rapperswil,
Bauherrschaft Amt für Hochbauten der Stadt Zürich). Vom Baubeschrieb über die
Kostenschätzung Vorprojekt (01.12.2003), den Kostenvoranschlag (08.06.2004), die
honorarberechtigte Bausumme (20.04.2005), das interne Vergabe-Controlling (03.06.2005) und
eine Offerten-Abweichungsanalyse (03./17.11.2005) bis zum Finanzrapport des AHB
(01.03.2006) und den Schluss-Kennzahlen liegt jede Stufe des Kostenermittlungskreislaufs
als reales Dokument vor. Dazu drei funktionierende SIA-102-Honorartabellen, ein
Bürokalkulations-Werkzeug und eine Lehrbuchseite mit den Genauigkeitsbändern je Phase.

Gelesen wurden alle textextrahierbaren PDFs, beide DOCX/XLS-Gruppen (via LibreOffice nach
CSV) und die beiden Bildquellen (JPG sowie die zwei bildbasierten BKP-Scans, seitenweise
gerendert und gelesen). Nicht auswertbar sind eine InDesign-Satzdatei und die
Bildinhalte der beiden BKP-Scans über die gelesene Titelseite hinaus.

**Zwei Warnungen vorweg.** Erstens: Die beiden BKP-Grundlagenscans in dieser Sektion sind
**veraltete Ausgaben** (CRB SN 506 500, Ausgabe **1989**, und ein ETHZ-Handout zu Ausgabe
**97** von 1998). Für JANS gilt ausschliesslich BKP 2017 gemäss Rule `bkp-2017-referenz`;
diese Scans dürfen nie als Codequelle dienen. Zweitens: Die Honorartabellen rechnen nach
**SIA 102 Ausgabe 2003** beziehungsweise mit Tarifwerten 2005 und 2010. Die Rechenlogik ist
übertragbar, die Koeffizienten Z1/Z2 sind es nicht.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `06_Phasen_Kostenaufstellungen/02_Kostenvoranschlag/KV_Zusammenstellung_Leutschenbach.pdf` | P1 | Vollständiger Kostenvoranschlag 08.06.2004, 34 Seiten, gegliedert bis auf die 4-stellige BKP-Position, mit Objektaufteilung Schulhaus/Kindergarten/Gesamtprojekt und den fünf Summenspalten (KV Orig. · 3-stellig · 2-stellig · 1-stellig · 1,2-stellig). Der beste vorhandene Formvorbild für einen KV-Detailausdruck. |
| `06_Phasen_Kostenaufstellungen/04_Ausfuehrung_Kostenkontrolle/Finanzrapport_Leutschenbach.pdf` | P1 | Finanzrapport des Amts für Hochbauten der Stadt Zürich per 01.03.2006, 9 Seiten. Enthält das vollständige Spaltenmodell der öffentlichen Baukostenkontrolle: KV original / KV revidiert ohne Teuerung / KV revidiert mit Teuerung / Vertrag / Nachtrag / Vergabe / Zahlungen / Prognose / Abweichung Prognose-KV. Direkt als Vorlage für den Skill `kostenkontrolle` verwertbar. |
| `10_Kostenkennzahlen/Kennzahlen_Leutschenbach.pdf` | P1 | Kennzahlenblatt mit GF/HNF/GV/RI nach SIA 416 und SIA 116, Gebäude- und Anlagekosten je Bezugsgrösse, plus indexierter Kostenvergleich von fünf Zürcher Schulanlagen. Belegte Kennwerte, unmittelbar für `kostenschaetzung` und `grobkosten-onepager`. |
| `06_Phasen_Kostenaufstellungen/01_Kostenschaetzung/Anlagekosten_Leutschenbach.pdf` | P1 | Anlagekosten BKP 0–9 mit der Zuschlagslogik zum Objektkredit: Zuschlag Unvorhergesehenes/Reserve 5 % und Zuschlag Ungenauigkeit der Berechnungsgrundlagen 5 %. Zeigt, wie aus einer Kostenschätzung ein bewilligungsfähiger Kredit wird. |
| `06_Phasen_Kostenaufstellungen/01_Kostenschaetzung/55927 KVnov KS SH.pdf` · `55927 KVnov KS KIGA.pdf` | P1 | Kostenschätzung Vorprojekt (Detail) vom 01.12.2003, getrennt nach Schule (10 S.) und Kindergarten. Nennt je Kostengruppe ausdrücklich die **Grundlage** der Schätzung (Spezialisten HLKS/E, Bauingenieur, Architekt, Fassadenplaner-KS). Vorbild für eine belegte, nachvollziehbare KS. |
| `06_Phasen_Kostenaufstellungen/01_Kostenschaetzung/KS SA Leutschenbach Architekt 1.xls` | P1 | Kostenschätzung Mobiliar BKP 900, Preisstand August 2003, mit Ansätzen je Raumtyp (Klassenzimmer, Gruppenraum, Werkraum, Kindergarten, Mensa, Bibliothek). Echte Ausstattungskennwerte je Einheit, in dieser Form im Hub bisher nicht vorhanden. |
| `06_Phasen_Kostenaufstellungen/00_Uebersicht_Zusammenfassungen/050603 Kostenübersicht INTERN.pdf` | P1 | Internes Vergabe-Controlling vom 03.06.2005: je Gewerk Vertrag, reservierte Vergabe, Vergabe, KV und Reserve, mit ausformuliertem Fazit zur Reservenlage. Zeigt die Sprache und Logik, in der ein Bauleiter der Bauherrschaft eine Kostenlage ehrlich meldet. |
| `06_Phasen_Kostenaufstellungen/03_Ausschreibung/Offerte_Terrazzo_Belaege.pdf` | P1 | 12 Seiten, bildbasiert, seitenweise gelesen. Vergleich Kostenvoranschlag gegen Unternehmerofferte für BKP 281 Bodenbeläge samt Fazit zur Überschreitung, dazu die vollständigen Angebotsbedingungen des Unternehmers (bauseitige Leistungen, Raumbedingungen, nicht inbegriffene Leistungen). Musterfall für `offertenpruefung`. |
| `04_Honorarberechnung/BGS/050420_H-Bausumme.pdf` + `.xls` | P1 | Ermittlung der honorarberechtigten Bausumme vom 20.04.2005 mit den angesetzten Anrechenbarkeitsprozenten je Kostengruppe. Die konkreteste Grundlage der Sektion für den Skill `honorarberechnung-sia102`. |
| `04_Honorarberechnung/Bischoff/Honorarberechnung_SIA_102_2003_Tabelle.xls` | P1 | Vollständig gerechnete Honorartabelle nach SIA 102 (2003), mit den Teilphasen-Prozenten, Zeitaufwand Tm/Tp, Stundenansatz und Aufteilung Stufe I/II. Funktionierendes Rechenwerk, nur die Koeffizienten sind zeitgebunden. |
| `04_Honorarberechnung/Thalhofer/100201_Honorarberechnung/Arch-Hon-Tab-SIA-2005.xls` | P1 | Zweite, unabhängige Honorartabelle (Tarif 2005) mit identischer Phasengliederung, aber anderen Koeffizienten. Der Vergleich der beiden Tabellen macht sichtbar, welche Grössen fix und welche tarifgebunden sind. |
| `00_Organisation/100817_PM_Ruosch_Brandenberger_S148.jpg` | P1 | Buchseite 148 aus Ruosch/Brandenberger, Projektmanagement im Bauwesen, Abb. 8.4 «Kostenermittlungskreislauf». Ordnet jeder Projektphase das Kostenermittlungsverfahren und die **erreichbare Genauigkeit** zu. Genau die Bandbreiten-Belegstelle, die JANS bei jeder Grobkostenaussage braucht. |
| `02_Baubeschriebe/091204_Baubeschrieb_Leutschenbach.pdf` | P1 | 20 Seiten BKP-gegliederter Baubeschrieb eines Grossbaus, durchnummeriert bis auf die 4-stellige Position und inhaltlich parallel zum KV geführt. Vorbild für einen Baubeschrieb, der als Kostenträger lesbar ist. |
| `02_Baubeschriebe/100218_Baubeschrieb_Waltenschwil.pdf` | P1 | 7 Seiten Baubeschrieb EFH Waltenschwil, BKP-gegliedert, mit ausformulierten Konstruktionsbeschrieben (Wandstärken, Dachaufbau, Dämmstärken). Das kleine Gegenstück zum Grossbau, direkt als Textvorlage brauchbar. |
| `03_Buero_Projektkostenplanung/Allgaier/XLS/Allgaier.xls` + `PDF/100326_Allgaier.pdf` | P2 | Büro-Projektkostenplanung eines Zweifamilienhauses: Terminband je BKP über 3 Jahre, darunter der Personaleinsatz in Prozent je Monat und Rolle, hochgerechnet auf Personenmonate, dazu eine Honorarkalkulation mit Lohnansatz, Unkostenfaktor und Aufwandziel. Methodisch wertvoll, aber der Rechenteil ist im vorliegenden Stand teils leer beziehungsweise fehlerhaft (`#DIV/0!`) — destillieren, nicht kopieren. |
| `01_Baukostenplan/Fachbegriffe/100122_Fachbegriffe_Baunebenkosten.pdf` | P2 | Kurze, saubere Definition von Baunebenkosten, Anlagewert und Anlagekosten (Bodenwert + Bauwert + Baunebenkosten). Zwei Absätze, aber begrifflich präzise; passt in die Bewertungs- und Kostenterminologie. Quelle im Dokument nicht genannt — offene Frage. |
| `01_Baukostenplan/BKP/PDF/100223_Zusammenf_BKP_A6.pdf` | P2 | Einseitige BKP-Kurzübersicht im A6-Format, Hauptgruppen 0–9 mit Untergruppen. Als Merkblatt-Idee brauchbar, inhaltlich aber mit Tippfehlern behaftet («Elektroanlaen», «saniärinstallationselemente») und ohne Ausgabevermerk. Nur als Formvorbild, nie als Codequelle. |
| `04_Honorarberechnung/Thalhofer/100201_Honorarberechnung.pdf` | P2 | E-Mail-Wechsel Januar 2010 zwischen Raphael Jans und einem Kollegen zu vier konkreten SIA-102-Fragen (aufwandbestimmende Baukosten, Schwierigkeitsgrad n, Korrekturfaktor r, Stundenansatz). Fachlich substanziell. **Auflage: nur die vier Fachaussagen destillieren.** Die Mails enthalten daneben Gesundheitsangaben zu einer dritten Person und private Passagen, die nicht in die Wissensbasis gehören. |
| `06_Phasen_Kostenaufstellungen/00_Uebersicht_Zusammenfassungen/hw_GRPR_20_2007.pdf` | P2 | Gemeinderatsprotokoll Balzers (FL) vom 19.12.2007, 12 Seiten. Fremdkörper in der Sektion, aber ein echtes Beispiel öffentlicher Kredit- und Baukostenabrechnungspraxis: Kreditgenehmigung, Nachtragskredit, Begründungspflicht bei Über- und Unterschreitung, Abrechnung gegen bewilligten Kredit. Fürstentum Liechtenstein, nicht Schweizer Gemeinderecht — beim Destillieren kennzeichnen. |
| `01_Baukostenplan/BKP/PDF/BKP_CRB_SN.pdf` | P3 | CRB SN 506 500, Baukostenplan **Ausgabe 1989**, 21 Seiten reiner Bildscan ohne Textebene (100 dpi Graustufen). Historischer Beleg für die Herkunft der BKP-Systematik. **Nie als Codequelle verwenden** — verbindlich ist BKP 2017 gemäss Rule `bkp-2017-referenz`. |
| `01_Baukostenplan/BKP/PDF/BKP_ETH_Meyer.pdf` | P3 | Lehrunterlage Prof. Paul Meyer-Meierling, ETH Zürich, «Architektur und Baurealisation», Blatt GL 3 Seite 18 vom 23.07.1998, mit dem Baukostenplan **Ausgabe 97** auf drei Seiten. Bildscan ohne Textebene. Gleiche Warnung wie oben: veraltete Ausgabe. |
| `01_Baukostenplan/BKP/PDF/100218_GibbecoBKP_Liste.pdf` | P3 | Zweiseitige BKP-Liste aus einem Öko-Branchenverzeichnis (Ausgabe 2007/08), die die BKP-Systematik um baubiologische Untergruppen erweitert (Bauteilbörse, Lehmbau, Elektrobiologie, Minergie/Passivhaus). Als Ideengeber für ökologische Leistungsgliederung interessant, aber keine normative Quelle. |
| `01_Baukostenplan/Fachbegriffe/100122_Fachbegriffe_Baunebenkosten.docx` | X | Wortgleiche Quelldatei zur PDF derselben Ablage; Text zeichenweise verglichen. Dublette. |
| `01_Baukostenplan/BKP/Indd/100218_Zusammenf_BKP_A6.indd` | X | InDesign-Satzdatei. Der Inhalt liegt als `100223_Zusammenf_BKP_A6.pdf` vor; die Satzdatei trägt keinen zusätzlichen Wissensgehalt. |
| `04_Honorarberechnung/Allgaier/Allgaier.xls` | X | Funktionale Dublette zu `03_Buero_Projektkostenplanung/Allgaier/XLS/Allgaier.xls`. Die MD5-Summen unterscheiden sich, der ausgelesene Tabelleninhalt ist Zeile für Zeile identisch — der Unterschied liegt ausserhalb der Daten. |

Summe: 16 × P1 · 6 × P2 · 3 × P3 · 3 × X = 28 Dateien.

## Was hier für JANS drinsteckt

### 1. Ein vollständiger Kostenermittlungskreislauf an einem einzigen Objekt

Die Sektion erlaubt etwas, das im Hub bisher fehlt: dieselbe Kostenaussage über sechs Stufen
hinweg zu verfolgen und die Abweichungen zu messen. Für die Schulanlage Leutschenbach liegen
vor:

- **Kostenschätzung Vorprojekt, 01.12.2003** — Schule BKP 2 Gebäude CHF 28'620'000,
  Kindergarten BKP 2 CHF 1'378'000, je Kostengruppe mit Angabe der Schätzgrundlage.
- **Kostenvoranschlag, 08.06.2004** — Objektkredit CHF 60'750'000, BKP 2 Gebäude gesamt
  CHF 30'930'000 (Schulhaus 29'506'000, Kindergarten 1'424'000), aufgelöst bis auf die
  4-stellige Position.
- **Honorarberechtigte Bausumme, 20.04.2005** — CHF 31'533'250 inkl. MWST beziehungsweise
  CHF 29'306'000 exkl. MWST bei einer Gesamtsumme von CHF 60'750'000.
- **Vergabe-Controlling, 03.06.2005** — 14 Gewerke mit Vertrag, reservierter Vergabe,
  Vergabe, KV und resultierender Reserve; Zwischensumme Vergaben CHF 22'120'000 gegen KV
  CHF 21'385'000, also eine Überschreitung von CHF 735'000.
- **Finanzrapport AHB, 01.03.2006** — dieselben Positionen im neunspaltigen
  Kostenkontroll-Raster der Stadt Zürich, inklusive Teuerungsrevision.
- **Kennzahlenblatt** — Gebäudekosten und Anlagekosten je m² GF, m² HNF, m³ GV und m³ RI.

**Der belegte Einzelfall daraus:** Die Bodenbeläge BKP 281 waren im KV vom 10.06.2004 mit
CHF 1'510'000 eingestellt. Die überarbeitete Offerte der Walo Bertschinger AG vom 17.11.2005
lautete auf CHF 2'948'315.30 für 8'750 m², also CHF 336.95/m² im Schnitt. Die Überschreitung
von CHF 1'438'315.30 ist im Dokument ausdrücklich benannt, ebenso die Ursache: Der bei der
Bemusterung vom 29.11.2005 gewählte Feinschliff kostet CHF 50.00/m², das sind CHF 390'000
allein für diesen Entscheid. Das ist ein sauber dokumentierter Fall dafür, wie ein
Bemusterungsentscheid eine Kostengruppe sprengt — verwertbar in `offertenpruefung` und als
Argumentationsmuster gegenüber Bauherrschaften.

### 2. Belegte Kostenkennwerte Schulbau Zürich (Preisstand 2003/04)

Aus dem Kennzahlenblatt, Bezugsgrössen nach SIA 416 beziehungsweise SIA 116:

| Grösse | Wert |
|---|---|
| Geschossfläche GF (SIA 416) | 9'995 m² |
| Hauptnutzfläche HNF (SIA 416) | 8'259 m² |
| Gebäudevolumen GV (SIA 416) | 47'156 m³ |
| Rauminhalt RI (SIA 116) | 54'930 m³ |
| Gebäudekosten BKP 2 | CHF 30'930'000 |
| Gebäudekosten je m² GF | CHF 3'095 |
| Gebäudekosten je m² HNF | CHF 3'745 |
| Gebäudekosten je m³ GV | CHF 656 |
| Gebäudekosten je m³ RI | CHF 563 |
| Anlagekosten BKP 1–9 | CHF 46'540'000 |
| Anlagekosten je m² GF | CHF 4'656 |
| Anlagekosten je m² HNF | CHF 5'635 |
| Anlagekosten je m³ GV | CHF 987 |
| Anlagekosten je m³ RI | CHF 847 |

Dazu der indexierte Vergleich von fünf Zürcher Schulanlagen auf Ebene BKP 2 (Im Birch,
Apfelbaum, Im Gut, Falletsche, Leutschenbach) mit CHF 2'750 bis 3'384 je m² GF und CHF 547
bis 623 je m³ SIA 116 — eine Bandbreite von rund 23 % beim Flächenkennwert gegenüber nur
rund 14 % beim Volumenkennwert. **Das ist ein belegtes Argument dafür, in der Frühphase über
das Volumen und nicht über die Fläche zu rechnen** und stützt die Methodik des Skills
`grobkosten-onepager`.

Ergänzend die Ausstattungskennwerte BKP 900, Preisstand August 2003, je Einheit: Klassenzimmer
CHF 30'000, Handarbeitszimmer CHF 30'000, Kindergarten CHF 27'000, Werkraum CHF 12'000,
Gruppenraum CHF 10'000, Naturkundezimmer CHF 7'000, Bibliothek CHF 60'000, Hortbereich
CHF 80'000, Mensa für 180 Personen CHF 45'000, Singsaal für 240 Personen CHF 50'000.
Gesamttotal Ausstattung CHF 1'368'500 exkl. MWST, Umzüge BKP 588 geschätzt CHF 60'000.

**Alle Zahlen sind Preisstand 2003/04 und müssen vor jeder Verwendung indexiert werden.**

### 3. Die Anrechenbarkeitslogik der honorarberechtigten Bausumme

Das Blatt der BGS Architekten vom 20.04.2005 zeigt, welcher Anteil je Kostengruppe in die
honorarberechtigte Summe des Architekten fliesst. Der Aufbau ist unmittelbar in den Skill
`honorarberechnung-sia102` übertragbar:

- BKP 019 Abbruch: 100 %
- BKP 071 Sanierung Altlast / Rodung / Hügelabtrag: 50 %, ausdrücklich begründet mit dem
  Beizug eines Landschaftsarchitekten
- BKP 102.2 Rammsondierung und BKP 11–16 Vorbereitungsarbeiten: 100 %
- BKP 23 Elektro, BKP 24 Heizung/Lüftung/Klima, BKP 25 Sanitär: je 70 %
- BKP 26–28 Gebäude: 100 %
- BKP 33/34/35 Betriebseinrichtungen Elektro/Heizung/Sanitär: je 70 %
- BKP 37–38 Normbetriebseinrichtung: 50 %
- BKP 42–47 Umgebung: 50 %, ebenfalls wegen Beizug des Landschaftsarchitekten
- BKP 5 Baunebenkosten und BKP 7 Reserve: **0 %**
- BKP 80–81 Norminventar und BKP 90–98 Normmobiliar: je 50 %

Das durchgängige Prinzip: Wo ein Fachplaner die Leistung selbst erbringt, sinkt der Anteil des
Architekten (70 % bei Gebäudetechnik, 50 % bei Umgebung und Ausstattung); wo keine
Planungsleistung anfällt, ist der Anteil null (Baunebenkosten, Reserve).

### 4. Zwei unabhängige SIA-102-Rechenwerke im Vergleich

Beide Tabellen führen dieselbe Phasengliederung mit identischen Prozentanteilen:

| Phase | Anteil |
|---|---|
| Vorprojekt (Studium Lösungsmöglichkeiten 3 %, Vorprojekt 6 %) | 9 % |
| Bauprojekt (Bauprojekt 13 %, Detailstudien 4 %, Kostenvoranschlag 4 %) | 21 % |
| Bewilligungsverfahren | 2.5 % |
| Ausschreibung, Offertvergleich, Vergabeantrag (Ausschreibungspläne 10 %, Ausschreibung und Vergabe 8 %) | 18 % |
| Ausführungsplanung (Ausführungspläne 15 %, Werkverträge 1 %) | 16 % |
| Ausführung (Gestalterische Leitung 6 %, Bauleitung und Kostenkontrolle 23 %) | 29 % |
| Inbetriebnahme und Abschluss (Inbetriebnahme 1 %, Dokumentation 1 %, Garantiearbeiten 1.5 %, Schlussabrechnung 1 %) | 4.5 % |

Unterschiedlich sind allein die tarifgebundenen Koeffizienten: Tabelle «Arch-Hon-Tab-SIA-2005»
rechnet mit Z1 = 0.057 und Z2 = 9.69 (Tarif 2005), Schwierigkeitsgrad n = 1 (Baukategorie IV),
Stundenansatz CHF 135. Die Tabelle «Honorarberechnung SIA 102 (2003)» rechnet mit Z1 = 0.062
und Z2 = 10.58, Stundenansatz CHF 130, und teilt zusätzlich in Stufe I (35 %) und Stufe II
(65 %). **Die Phasenanteile sind stabil, die Koeffizienten nicht.** Ob die Anteile in
SIA 102:2014 unverändert gelten, ist aus dieser Sektion nicht belegbar und gehört vor jeder
Verwendung am Original geprüft (Rule `normen-referenz`).

Der zugehörige Mailwechsel vom Januar 2010 liefert vier Faustregeln aus der Praxis, die
ausdrücklich als Einschätzung eines Kollegen und nicht als Normaussage zu führen sind: die
aufwandbestimmenden Baukosten B verstehen sich abzüglich Architektenhonorar; für ein
anspruchsvolles Einfamilienhaus wurde Baukategorie V oder VI mit n = 1.1 bis 1.2 angesetzt;
der Korrekturfaktor r sollte unter Verweis auf SIA 102 Ziff. 7.10 nicht über 1.0 gehen; ein
Stundenansatz von CHF 130 bis 135 galt 2010 als normal.

### 5. Das Genauigkeitsband je Projektphase — die fehlende Belegstelle

Die Buchseite aus Ruosch/Brandenberger (Abb. 8.4, Kostenermittlungskreislauf) ordnet jeder
Phase Verfahren und erreichbare Genauigkeit zu:

| Phase | Verfahren | Genauigkeit |
|---|---|---|
| Definition | Bauherrenberatung, Zielkostenvorgabe | ±10 % bis ±25 % |
| Vorstudien | Grobkostenschätzung nach Makroelementen/Elementen (EKG), funktionalen Einheiten, SIA 416/116, Brutto/Netto m² | ±10 % bis ±15 % |
| Vorprojekt | Kostenschätzung nach Elementen (EKG) und Erfahrungswerten | ±5 % bis ±10 % |
| Bauprojekt | Kostenberechnung nach Berechnungselementen und Erfahrungswerten | ±5 % bis ±7 % |
| Bauprojekt | Kostenvoranschlag mit aktuellen Einheitspreisen auf Positionsebene | ±5 % |
| Ausschreibung | nach NPK / Standard Devis | keine Angabe |
| Ausführung | Werkverträge mit NPK-Leistungsbeschrieben und Marktpreisen | ±0 % |
| Abschluss | Bauabrechnung, effektive Kosten | ±0 % |

Bisher nennt JANS Bandbreiten in Grobkostenaussagen ohne zitierfähige Quelle. Diese Tabelle
schliesst die Lücke und passt direkt in `kostenschaetzung` und `grobkosten-onepager`. Sie
bestätigt auch die Praxis aus dem Anlagekostenblatt Leutschenbach: dort wurden auf die
Kostenschätzung 5 % für Unvorhergesehenes **und zusätzlich** 5 % für Ungenauigkeit der
Berechnungsgrundlagen aufgeschlagen — zwei getrennte Zuschläge mit unterschiedlicher
Begründung, nicht ein pauschaler Reservezuschlag.

### 6. Baunebenkosten und Honorare als messbare Anteile

Der KV Leutschenbach löst BKP 5 so weit auf, dass Baunebenkosten erstmals als Kennwert
greifbar werden. Bei einem Objektkredit von CHF 60'750'000 stehen unter BKP 5 insgesamt
CHF 2'780'000, darunter Wettbewerbskosten CHF 447'000, Bewilligungen und Gebühren
CHF 574'500 (davon Anschlussgebühren CHF 388'500, aufgeteilt auf Elektrizität, Übermittlung,
Wasser, Fernheizung und Medien), Muster/Modelle/Vervielfältigungen mit allein CHF 350'000 für
Plankopien, Versicherungen CHF 77'600, Bauherrenleistungen CHF 550'000 und übrige
Baunebenkosten CHF 634'300, worin eine Ersatzabgabe Parkplätze von CHF 540'000 den grössten
Einzelposten bildet.

Die Honorare erscheinen im KV nicht in BKP 5, sondern als 9er-Position **innerhalb jeder
Hauptgruppe**: BKP 19 CHF 276'000, BKP 29 CHF 4'642'800, BKP 39 CHF 332'600, BKP 49
CHF 689'400, BKP 89 CHF 10'000, BKP 99 CHF 100'000, dazu BKP 079 Honorar Altlastensanierung
CHF 106'500. Innerhalb BKP 29 entfallen auf den Architekten CHF 2'680'000, den Bauingenieur
CHF 856'000, den HLKK-Ingenieur CHF 381'000, den Elektroingenieur CHF 173'800, den
Sanitäringenieur CHF 116'900, Spezialisten CHF 300'100 (Fassadenplaner CHF 109'000, Akustiker
CHF 28'500, Bauphysiker CHF 21'000, Geometer CHF 11'000), den
Gebäudeautomationsingenieur CHF 25'000 und eine Umplanung wegen Perimeterveränderung
CHF 110'000. Aufsummiert ergibt das CHF 6'157'300 an Planerhonoraren bei einem Objektkredit
von CHF 60'750'000, also rund 10 % (eigene Addition der gelesenen Einzelwerte, im Dokument
nicht als Summe ausgewiesen).

### 7. Bürokalkulation: vom Honorar zum Aufwandziel

Das Allgaier-Blatt verbindet Terminplan und Bürokalkulation auf einem A3-Bogen: oben das
Terminband je BKP-Arbeitsgattung über die Jahre 2004 bis 2007, darunter je Rolle
(Büroinhaber, Projektleiter, Praktikant) der Einsatz in Prozent je Monat, aufsummiert zu
Personenmonaten und mit einem Rollenfaktor gewichtet — im Beispiel 23.318 Personenmonate
gesamt. Die Kalkulation daneben rechnet mit Lohnansatz CHF 5'000 je Monat und Unkostenfaktor
2, also CHF 10'000 je Personenmonat, und definiert das **Aufwandziel als Gesamthonorar minus
20 %**, mit der Rechnung im Anmerkungsfeld ausdrücklich vorgeführt. Die Phasenanteile aus
SIA 102 dienen dort als Sollverteilung, gegen die der effektive Aufwand laufend gemessen
wird.

Diese Verknüpfung — SIA-102-Phasenanteile als Sollkurve für die Bürokapazität — ist im Hub
bisher nirgends abgebildet und wäre der eigenständigste Beitrag dieser Sektion zu einem
künftigen Baustein Bürokalkulation.

### 8. Baubeschriebe als Kostenträger

Beide Baubeschriebe sind streng nach BKP gegliedert und laufen positionsgleich zum
Kostenvoranschlag. Leutschenbach führt den Beschrieb bis auf die 4-stellige Position
(071.0 Baustelleneinrichtung, 071.1 Sanierung Altlasten, 071.2 Transporte in Deponien und so
weiter) und beschreibt dabei den Leistungsumfang, nicht das Produkt. Waltenschwil ist der
Gegenpol: ein siebenseitiger Verkaufsbeschrieb für vier Einfamilienhäuser mit konkreten
Konstruktionsangaben (Bodenplatte 20 cm armierter Beton, Innenwände Keller 12 cm
Kalksandstein, Fassadenwände 15 cm Backstein mit 16 cm Aussenwärmedämmung, Dachdämmung
160 mm zwischen Sparren, Estrichboden 22 mm Spanplatten, Schalungstyp 2). Zusammen decken
sie beide Register ab, die JANS braucht: den kostenorientierten Beschrieb für die
Bauherrschaft und den ausführungsorientierten für den Käufer.

## Offene Fragen

1. **Genauigkeitstabelle:** Aus dem JPG ist die Buchseite 148 mit Abb. 8.4 belegt und der
   Kurzbeleg «PM Ruosch Brandenberger» steht im Dateinamen. Die genaue Ausgabe und das
   Erscheinungsjahr des Werks sind aus der Sektion **nicht** belegbar. Vor jeder Zitierung in
   einem ausgehenden Dokument ist die Fundstelle zu vervollständigen.
2. **Phasenanteile SIA 102:** Ob die Anteile 9 / 21 / 2.5 / 18 / 16 / 29 / 4.5 in
   SIA 102:2014 unverändert gelten, sagt keine Datei dieser Sektion. Am Original prüfen,
   bevor sie in eine Honorarofferte fliessen.
3. **Fachbegriffe Baunebenkosten:** Die Definition ist präzise, nennt aber keine Quelle.
   Vermutlich ein Bewertungsglossar; die Herkunft ist nachzutragen, bevor die Definition
   zitiert wird.
4. **BKP-Ausgaben:** Die A6-Kurzliste trägt keinen Ausgabevermerk. Ihre Untergruppen sind
   gegen BKP 2017 zu prüfen, falls sie je als Merkblatt-Vorlage dienen soll.
5. **Indexierung:** Sämtliche Kennwerte dieser Sektion haben Preisstand 2003 bis 2005. Ein
   belegter Indexpfad auf heute fehlt in der Sektion vollständig.
