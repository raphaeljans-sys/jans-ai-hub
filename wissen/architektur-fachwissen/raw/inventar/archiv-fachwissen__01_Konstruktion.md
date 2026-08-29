---
title: "Inventar Sektion 01_Konstruktion (Korpus archiv-fachwissen)"
korpus: archiv-fachwissen
sektion: /Volumes/daten/02_Architektur_Archiv/01_Konstruktion
last_updated: 2026-08-23
status: established
dateien_gesichtet: 8791
---

# Inventar 01_Konstruktion

## Kurzbefund

Die Sektion enthält **8791 Dateien** (ohne `.DS_Store`), rund **9.7 GB**, verteilt auf
14 Themenordner plus acht lose Dateien im Wurzelverzeichnis. Dateidatum-Schwerpunkt
**2002–2014** (Spitzen 2010 mit 2205, 2002 mit 1917 und 2009 mit 1052 Dateien); nach 2014
praktisch nur noch Umsortierungen (2018: 153 Dateien, reine Ordner-Reorganisation).

Formatverteilung: 2206 jpg · 1266 pdf · 1140 htm/html/xhtml · 577 dwg/dxf · 434 class +
86 jar (Java) · 355 swf + 25 fla (Flash) · 316 png · 89 tif · 36 indd · 34 docx · 29 xls ·
22 doc.

Inhaltlich ist die Sektion das **Konstruktions- und Bauphysik-Studienarchiv von Raphael
Jans** aus der Zeit HTA Luzern und ETH Zürich, angereichert um zugekaufte Fachwerkzeuge.
Sie zerfällt in fünf klar unterscheidbare Bestände:

1. **Fachlich verwertbare Schweizer Lehr- und Merkblatt-Bestände** — Gebäudehülle
   (Fassadensysteme, Unterkonstruktionen, Feuchteschutz, Bemessung), Bauphysik
   (Formelsammlung, U-Wert-Tabellen, Fensterblatt der kantonalen Energiefachstellen),
   Gebäudetechnik/HLKKS (inklusive einer Richtlinie des Amts für Hochbauten der Stadt
   Zürich und eines Fachtextes zur funktionalen Ausschreibung). Das ist der Kern, der JANS
   heute noch etwas bringt.
2. **Eine lizenzierte kommerzielle Detailbibliothek** (`01 2D Details`, 1776 Dateien) —
   die CD-ROM «Standard-Detail-Sammlung», Version 3.0 zur 3. Auflage 2010, Verlags-
   gesellschaft Rudolf Müller. 305 katalogisierte Details in je vier Formaten
   (PDF/JPG/DWG/DXF, AutoCAD 2004).
3. **Ein Material-/Referenzarchiv** (`01_Baustoff_Materialitaet`, 5111 Dateien, 3.97 GB) —
   überwiegend Vorlesungsvorbereitung zu Materialität: Bildsammlungen und Zeitschriften-
   und Buchscans zu Stahl, Holz, Backstein, Beton, Naturstein, Putz.
4. **Ein obsoletes Lernprogramm** (`bautop`, 3128 Dateien innerhalb von
   `01_Baustoff_Materialitaet/00_Allgemein/00_Baustoffkonzept`) — eine Bauphysik-/
   Baustoffkunde-CD auf Basis von Flash, Java-Applets und Shockwave, thematisch auf die
   **deutsche EnEV** ausgerichtet. Technisch nicht mehr lauffähig, fachlich für die
   Schweiz nicht anwendbar.
5. **Architekturtheoretisches Begleitmaterial** (`00_Tektonik`, Wurzel-PDFs) — Vorlesungs-
   mitschriften und Foliensätze zur Tektonik, dazu rund 1.4 GB GarageBand-Aufnahmen
   (`.band`/`.aif`) einzelner Vorlesungen.

**Zwei technische Befunde für die spätere Destillation.** Erstens: ein erheblicher Teil
der ergiebig klingenden PDFs ist **reiner Bildscan ohne Textebene** — geprüft und bestätigt
bei den Zusammenfassungen zu Technische Installationen, bei «Treppe.pdf», bei den
ETH-Konstruktionsseminar-Detailtafeln und bei den Tabellenanhängen der Bauphysik-Skripte
(dort liefert `pdftotext` nur die Bildunterschriften, nicht die Tabellenwerte). Diese
Bestände brauchen OCR oder Vision, nicht `pdftotext`. Zweitens: der SMB-Mount auf
`/Volumes/daten` **fiel während der Sichtung dreimal aus**; rekursive Läufe über
`01_Baustoff_Materialitaet` liefen mehrfach in Timeouts. Wer hier destilliert, arbeitet
besser auf lokalen Kopien und misst nach jedem Schritt, ob der Mount noch steht.

**Nichts Heikles gefunden.** Ein Schlüsselwort-Scan über alle 8791 Pfade auf Vertrag,
Bewerbung, Lebenslauf, Lohn, Honorar, Rechnung, Personal, Privat, Steuer lieferte acht
Treffer, alle falsch positiv (U-Wert-«Berechnung», CO2-«Gehalt», «Messen Steuern Regeln»,
historische Tragwerksberechnungen von 1903). Zwei Punkte sind trotzdem zu benennen: der
Ordner `00_Baustoffkonzept/Baustoffadressen` ist eine **Lieferanten-Adresssammlung** und
wurde bewusst nicht geöffnet und nicht inventarisiert. Und
`09_Konstruktion/28_Konstruktionaufbauten` enthält die **vollständige Diplomarbeit einer
Drittperson** (Bericht, Pläne, Plakat, InDesign-Quellen); sie wird hier methodisch als
Bestand genannt, aber inhaltlich nicht ausgewertet und nicht zitiert.

**Urheberrechtlicher Vorbehalt, der für die ganze Sektion gilt.** Ein grosser Teil des
Bestandes sind Verlagsscans (Tec21, werk, Detail, Fachbücher) und lizenzpflichtige
Produkte. Die Lizenz der Detail-CD untersagt ausdrücklich den «Betrieb in einem Netzwerk
mit mehreren Arbeitsplätzen» sowie jede Vervielfältigung ausserhalb der Schranken des
Urheberrechts. Für die Wissensbasis heisst das: **Methoden, Systematiken und Kennwerte
destillieren, keine Seiten und keine Zeichnungen kopieren**, und die Detail-CD nicht in
den geteilten Hub-Namensraum spiegeln.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/` (38 Dateien) | **P1** | Der dichteste Nutzblock der ganzen Sektion. Eigene Formelsammlung Bauphysik (Klima · Wärme · Energie · Feuchte, gelesen), Merkblatt Fenster der kantonalen Energiefachstellen (Juni 2009, gelesen), bauphysikalische Kennwerte Fensterrahmen, Materialstärken Boden/Wand/Dach, Mollier- und h,x-Diagramm, Wasserdampfsättigungsdruck, Zeitkonstante Baumaterialien, SIA-181-Akustiktabelle, SUVA-Absorptionskoeffizienten. |
| `07_Gebäudehülle/01_Lernmaterial/` (26 Dateien) | **P1** | Systematische Fassadenbau-Skripte HTA Luzern (2006/2007) plus Unterlagen eines Fassadentechnik-Unternehmens (2008): Fassadensysteme, Unterkonstruktionen, Feuchteschutz nach SIA 180, Bemessung/Einwirkungen, Leitfunktionen, Einsatzempfehlung, Fugendurchlässigkeit, Rohbausituationen. Vier davon gelesen. |
| `05_Infrastruktur_Gebaudetechnik/` (31 Dateien) | **P1** | HLKKS-Überblick, Heizung, Lüftung, Klima, Kälte, Sanitär, Fassadensanierung, Pflichtenhefte, Gebäudeanalysen. Enthält den Fachtext «Funktionale Ausschreibung» und die Richtlinie GT Planungsgrundlagen des Amts für Hochbauten der Stadt Zürich (beide gelesen). |
| `09_Konstruktion/` Wurzel-PDFs + `Lignatur/` (6 Dateien) | **P1** | `Oblicht.pdf` ist ein echtes Ausführungsdetail mit ausgeschriebenem Flachdachaufbau und Anschlussdetail (gelesen). Dazu das Herstellerhandbuch für Hohlkasten-Holzelemente mit Dach- und Deckenaufbauten (gelesen). |
| `01 2D Details/` (1776 Dateien) | **P2** | 305 Standarddetails in PDF/JPG/DWG/DXF, sauber katalogisiert und benannt. Fachlich brauchbar als Denkraster, aber **deutsche Normlage** und **lizenzrechtlich gebunden** — nicht spiegeln, nur als Nachschlagewerk am Ort belassen. |
| `04_Bauphysik_Energie/02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien) | **P2** | Bauphysik I–III der ETH Zürich (Wärme, Feuchte, Energie, Licht, Akustik, Brandschutz, Simulation) samt Übungen mit Lösungen und konkreten Schichtaufbauten. Tabellenanhänge sind Bildscans, Textteile lesbar. |
| `01_Technische_Inst_I_II/` (120 Dateien, ohne Audio) | **P2** | Vorlesungsreihe Technische Installationen ETH: Wasser/Abwasser, Elektro, MSR, Wärme, Lüftung, Risiken, Licht, Zero-Emission. Zwei Foliensätze gelesen, mit Textebene. Die `.band`-Ordner (1.9 GB Audio) fallen unter X. |
| `02_Bauelemente/` systematischer Teil (209 Dateien) | **P2** | Bauteil-Typologien Decke/Boden, Dach, Öffnung/Fenster, Treppen. Enthält eine Vergleichsstudie zu Deckenstrukturen mit Konstruktionshöhen und Schichtstärken realisierter Bauten (gelesen). Rest ist Bildmaterial. |
| `06_Construction_Caruso/` (9 Dateien, 77 MB) | **P2** | Detailtafeln eines ETH-Konstruktionsseminars zu Mauerwerk, Fenster und Kunststein. Geprüft: **keine Textebene**, reine Scans — nur mit OCR/Vision erschliessbar. |
| `00_Baustoffkonzept/materialkunde.docx`, `baumaterialien*.pdf`, `10_Stofflichkeit_Oberflaechen`, `Palladio_Material` (4 Dateien) | **P2** | Kompakte Materialtypologie Holz/Stein/Stahl/Glas mit je vier Referenzbauten (gelesen) — brauchbar als Argumentationsraster für Materialkapitel in Studien und Wettbewerbsbeiträgen. |
| `01_Baustoff_Materialitaet/` Materialordner (1974 Dateien: Stahl 991, Holz 286, Backstein 232, Beton 194, Naturstein 129, Putz 91, übrige 51) | **P3** | Referenz- und Bildarchiv zur Materialität, überwiegend Zeitschriften- und Buchscans sowie Projektbilder Dritter. Archivwert für die eigene Bildsprache; als Wissensquelle urheberrechtlich blockiert. Enthält vereinzelt Produktkataloge (u.a. ein deutscher Bewehrungs-/Schalungskatalog von 2011 mit Preisteil, gelesen) — veraltet, kein Kostenwert. |
| `07_Gebäudehülle/02_Übungen`, `03_Exkursionen`, `04_MEP` (162 Dateien) | **P3** | Studienübungen und Exkursionsdokumentation, mehrheitlich eigene Fotos und Gruppenarbeiten. Persönlicher Archivwert. |
| `00_Tektonik/` ohne Audio (54 Dateien) | **P3** | Vorlesungsreihe Tektonik (FS 2012, gta ETH) mit Handouts und Textreadern. Architekturtheorie, für die Bürearbeit ohne direkten Nutzen. |
| Wurzel-PDFs (`Konstruktion-VVI`, `Technik-und-Industrialisierung`, `Farbgänge-und-Assoziationen`, `notcom`, `Blockbau…`, `F_DekorativeOberflaechengestaltungFassaden`) (8 Dateien) | **P3** | Eigene Vorlesungsmitschriften zu Tektonik, Technikphilosophie und Farbenlehre (drei gelesen). Gut geschrieben, aber Theorie ohne Anwendungsbezug. |
| `06_Gebaudetechnologie/` (39), `03_Bauweisen/` (8), `05_Gebaeudetechniker/` (2), `30_Lichtplanung/` (1), `02_Bauelemente/` Restbilder (52) | **P3** | Analysen zur Integration von Gebäudetechnik in Referenzbauten, Lektüreprotokolle, Bauweisen-Bildmaterial. Interessant, aber nicht operativ. |
| `00_Baustoffkonzept/bautop/` (3128 Dateien) | **X** | Lernprogramm-CD auf Flash/Java/Shockwave, nicht mehr lauffähig; Rechenteile («Energiesparnachweis Alt-/Neubau», «Erläuterung EnEV») folgen **deutschem** Recht. Fachlich durch die Schweizer Bauphysik-Bestände derselben Sektion vollständig ersetzt. |
| `04_Bauphysik_Energie/00_Allgemein_Info/01_Softweare/` (923 Dateien) | **X** | Eclipse-basierte Simulationssoftware «Energie Design Guide II» von 2009 (`.class`, `.jar`, Plist, Plugin-Gerüst). Programmbinärdateien, kein Wissen. |
| `.band`-Pakete und `.aif`-Spuren in `00_Tektonik` und `01_Technische_Inst_I_II` (26 Dateien, rund 3.3 GB) | **X** | GarageBand-Aufnahmen einzelner Vorlesungen. Grösster Speicherposten der Sektion, kein maschinell erschliessbarer Inhalt. |
| `Baustoffadressen/` | **X** | Lieferanten-Adresssammlung. Bewusst nicht geöffnet, nicht inventarisiert. |
| Rest (Thumbs.db, `desktop.ini`, `Recycled/`, `.exe`, Fonts, Streubilder; rund 51 Dateien) | **X** | Systemmüll und Programmreste. |

Summe: **P1 101 · P2 2262 · P3 2300 · X 4128**.

## Was hier für JANS drinsteckt

**1. Fassadensysteme sind hier sauber typisiert — sechs Systeme, mit Abgrenzung und
Anbieterzuordnung.** Das Skript `07_Gebäudehülle/01_Lernmaterial/Skripte/00_Fassadensysteme/Fassadensysteme_1.pdf`
(HTA Luzern, 21 Seiten) unterscheidet Pfosten-Riegel, Warmfassade, Kaltluftfassade
(hinterlüftet), SSG, Elementfassade und Zweite-Haut-Fassade und benennt je System das
Konstruktionsprinzip. Zwei Unterscheidungen daraus sind unmittelbar diskussionstauglich
gegenüber Bauherrschaft und Fassadenbauer: die **Kaltfassade wird nochmals in
«hinterlüftet» und «mit Druckausgleich» geteilt** (mit einem eigenen Kapitel zur Frage,
wann welche), und die **Elementfassade wird über den Vorfertigungsgrad begründet** —
geschosshohe, eine Fensterachse breite Elemente, Sonnen- und Blendschutz bereits im Werk
eingebaut, Befestigung am Rohbau über justierbare Verankerungen. Das Skript listet
zusätzlich sieben Systemanbieter mit dem jeweils abgedeckten Systemtyp (Pfosten-Riegel,
SSG, Element). Für den Skill `ausschreibung` ist das ein fertiges Raster, um bei
BKP-215/228-Losen die Systemwahl vorzustrukturieren.

**2. Es liegt ein vollständiger Anforderungskatalog an Fenster und Fassaden vor, nach
Interessengruppen getrennt.** `Gloor/Anforderung_Fassade_Fenster.pdf` (gkp fassadentechnik
ag, 22.04.2008) gliedert die Anforderungen nach **Architekt** (Tageslicht bei
Witterungsschutz, ästhetisches Gestaltungselement, freie Formen und Grössen), **Bauherr**
(Wirtschaftlichkeit, flexible Nutzflächenunterteilung, unterhaltsarm, lange Nutzungsdauer),
**Nutzer** (Bedienung ohne Gebrauchsanweisung, für jede Person aufbringbare Bedienkräfte,
kein Verletzungsrisiko bei Fehlbedienung), **Bauphysik** (Wärme-, Schallschutz,
Tageslicht, passive Gewinne, Luft- und Wasserdichtigkeit bei Öffenbarkeit, sommerlicher
Überhitzungsschutz durch variablen und windstabilen Sonnenschutz), **Sicherheit** (Statik
inklusive Erdbeben, Brandverhalten, Absturz, Einbruch) und **Bauablauf** (Montagekonzept
von innen oder aussen, mit oder ohne Gerüst, Montagereihenfolge). Diese Gliederung ist
direkt als Kapitelraster für ein Fassaden-Devis oder eine Nutzerbedarfsaufnahme
verwendbar.

**3. Die Uw-Wert-Berechnung ist mit dem offiziellen Schweizer Merkblatt hinterlegt.**
`04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/01_Berechnung_U_Fenster/`
enthält das Merkblatt «Das Fenster im Energienachweis» der kantonalen Energiefachstellen
(Ausgabe Juni 2009, 16 Seiten). Es führt Grundlagen des Fenster-U-Werts, Einzelbauteil-
nachweis, Systemnachweis, den Fenstereinbau und eine Tabelle mit Uw-Rechenwerten. Der
Kerngedanke ist dort explizit ausformuliert: Rahmen- und Glas-U-Wert gehen
**flächengewichtet** ein, die Wärmebrückenwirkung des **Glasrandverbunds** über einen
linearen Wärmedurchgangskoeffizienten. **Vorbehalt: Ausgabe 2009.** Für aktuelle
Nachweise gilt die heutige EnFK-/MuKEn-Fassung; das Blatt taugt als Verständnis- und
Plausibilisierungsgrundlage, nicht als Nachweisquelle.

**4. Für Zeitkonstante und Speicherfähigkeit liegen belegte Stoffwerte typischer
Schweizer Wandaufbauten bereit.** `Zeitkonstante_Baumaterialien.pdf` rechnet die
Zeitkonstante mehrschichtiger Fassaden vor und gibt je Schicht Dicke, Wärmeleitfähigkeit,
spezifische Wärmekapazität und Rohdichte an — für den Aufbau «Backstein aussengedämmt»
etwa Innenputz 0.01 m, Backstein 0.15 m, Polystyrol 0.12 m, Aussenputz 0.02 m mit den
zugehörigen Lambda-Werten 0.6 / 0.44 / 0.04 / 0.87 W/mK. Damit lassen sich
Speichermassen-Argumente in einer Machbarkeits- oder Sanierungsdiskussion belegen statt
behaupten. Ergänzend liefert `Dicke_Materialstarken_Boden_Wand_Dachaufbauten.pdf` einen
kompletten Bestandsaufbau eines Bürogebäudes (Boden und Dach schichtweise mit Dicken) samt
der Zielvorgabe, mit baulichen Massnahmen die Leerlauftemperatur möglichst oft im
Komfortbereich 20–26 °C zu halten und die Heizleistung unter 10 W/m² zu drücken. Das ist
ein brauchbares Rechenbeispiel für Sanierungsberatung ohne Kühlung.

**5. Ein ausgeschriebener Flachdachaufbau in Ausführungsnotation liegt vor.**
`09_Konstruktion/Oblicht.pdf` nennt den Aufbau von aussen nach innen: Platten in
Weisszement 40/40 cm vollkantig und gestrahlt im Gefälle · Distanzhalter · Schutzvlies
PE 3 mm · Polymerbitumendichtungsbahn zweilagig · Wärmedämmung im Gefälle 160–60 mm ·
Wärmedämmung PU oder PIR 100 mm · Dampfsperre · Betondecke. Bemerkenswert ist der
mitgeschriebene Vorbehalt **«Der Dachaufbau ist vom Unternehmer als Gesamtes System zu
prüfen»** — genau die Formulierung, die in einem JANS-Devis die Systemverantwortung beim
Unternehmer belässt. Das Blatt zeigt zusätzlich ein Oblicht-Detail mit Stufenglas,
Kunststoffklotz, doppelter wasserdichter Abdichtung, Triplexplatte 16 mm mit
cremeweiss gestrichener Untersicht (RAL 9001), Kupfer-Randabschluss und 3 % Gefälle.

**6. Die funktionale Ausschreibung ist hier als Schweizer Fachtext dokumentiert — mit
dem entscheidenden Zeitpunkt-Argument.** `05_Infrastruktur_Gebaudetechnik/05_Ausschreibung/15 Funktionale Ausschreibung.pdf`
beschreibt, dass die geforderte Leistung in einem **Leistungsprogramm** umschrieben wird,
dem die Anbieter die technischen, wirtschaftlichen, gestalterischen und funktions-
bedingten Eckwerte entnehmen. Der für JANS wertvolle Punkt ist die Phasenabhängigkeit:
schreibt der Bauherr **unmittelbar nach der Grundlagenermittlung** aus, kann der
Unternehmer sein Wissen voll einbringen; wird erst in der **Ausführungsplanung**
ausgeschrieben, sind die funktionsrelevanten Entscheide durch den Vorentwurf bereits
gefallen und die Risiken reduzieren sich auf Verfahren und Kalkulation. Der Text
beschreibt zudem den typischen Ablauf mit Präqualifikation und mehreren
Verhandlungsrunden, bei denen der Preis erst dann abschliessend vereinbart werden kann,
wenn keine preisbildenden Änderungen mehr zu erwarten sind. Der Text ist zugleich eine
scharfe Beobachtung zum Schweizer Markt: die Tradition der übergenauen
Detailausschreibung sei «unausrottbar». **Datierungsvorbehalt:** der Text verweist auf
eine Publikation von 1997; die Marktzahlen sind historisch, die Methodik nicht.

**7. Die Bauherren-Richtlinie einer öffentlichen Bauherrschaft liegt im Volltext vor.**
`05_Infrastruktur_Gebaudetechnik/08_Pflichtenhefte/RL_GT_1_Planungsgrundlagen.pdf` (Amt
für Hochbauten der Stadt Zürich) beschreibt zuerst die Rollenteilung Bestellerin ↔ AHB ↔
Betrieb und listet dann sieben ökologische Zielvorgaben, darunter: Neubauten erreichen den
Minergie-Standard; bei Instandsetzungen in erster Priorität Minergie, in zweiter ein über
das baurechtlich vorgeschriebene Mass hinausgehender Standard; erneuerbare Energien decken
25 % des Wärmebedarfs von Neubauten; ökologische Nachhaltigkeit ist Entscheidungskriterium
in Architekturwettbewerben und Studienaufträgen. Für Arbeiten mit öffentlichen
Bauherrschaften in Zürich zeigt das Dokument die **Denkstruktur** einer solchen Bestellung.
**Vorbehalt: das Dokument ist an der Telefonnummern-Schreibweise als Stand vor 2002
erkennbar**; die heute gültigen AHB-Vorgaben sind zwingend aktuell zu beziehen.

**8. Die Detailbibliothek ist katalogisiert und maschinell adressierbar.** `01 2D Details`
führt 305 Details in 21 Gruppen, jedes mit sprechendem Titel und in vier Formaten
(PDF, JPG, DWG und DXF in AutoCAD 2004). Grösste Gruppen sind WF (Fenster, 38 Details),
DG (Dach, 34), MD und DF (je 24), IM (21), WT (20), GR (18). Beispieltitel aus den
gelesenen HTML-Karten: «BE1.01 Aussenwand Beton mit WDVS», «WF1.01 Fenster mit Anschlag
in monolithischer Aussenwand, Vertikalschnitt», «DG1.01 Traufe ohne Dachüberstand,
Dachraum, ungedämmt, Anschluss an Mauerwerk». Weil DXF vorliegt, ist die Sammlung über
den Skill `pdf2dwg` beziehungsweise direkt in ArchiCAD anschlussfähig. **Zwei Vorbehalte,
beide hart:** die Details folgen **deutscher** Normlage und sind für Schweizer Ausführung
nur als Denkraster tauglich; und die Lizenz untersagt Mehrplatz-Netzwerkbetrieb sowie
Vervielfältigung — die Sammlung bleibt, wo sie ist.

**9. Der Fassaden-Feuchteschutz ist normbezogen aufbereitet — allerdings auf altem
Normenstand.** `07_Gebäudehülle/01_Lernmaterial/Skripte/01_Wärme_Feuchteschutz/Feuchteschutz_Fassadenbau.pdf`
(HTA Luzern, März 2007) ist ausdrücklich «nach SIA 180» aufgebaut und gliedert in Ziele
des Feuchteschutzes, kritische Oberflächenfeuchte, vereinfachten Nachweis und
rechnerischen Nachweis über die Wärmeübergangswiderstände. Parallel dazu behandelt
`Unterkonstruktionen.pdf` die Unterkonstruktion als punkt- oder linienförmige Verbindung
zwischen Fassadenelement und Baukörper, die Eigengewicht, Windlasten sowie allfällige
Schnee- und Personenlasten überträgt und Temperaturausdehnungen wie Bauwerk- und
Elementtoleranzen aufnimmt — mit der Dehnungsformel und dem Kapitel Toleranzaufnahme.
**Vorbehalt:** die Skripte beziehen sich auf SIA 180 in der damaligen Ausgabe; nach Rule
`normen-referenz` ist jede Norm-Aussage vor Verwendung gegen die geltende Ausgabe zu
prüfen. Dasselbe gilt für die Klimadatentabellen im Bauphysik-Anhang, die explizit auf
**SIA 180 (1999)** und **SIA 381/2 (1991)** zurückgehen.

**10. Für Fenster- und Aussentür-Klassifizierung liegt die Beanspruchungssystematik
vor.** `07_Gebäudehülle/01_Lernmaterial/Skripte/04_Einsatzempfehlung/Einsatzempfehlung Fassaden.pdf`
ist die ift-Richtlinie FE-05/1 (Mai 2002) zur Ermittlung der Mindestklassifizierungen für
Windwiderstandsfähigkeit (EN 12210), Schlagregendichtheit (EN 12208) und
Luftdurchlässigkeit. Verwertbar ist vor allem die Geländekategorien-Logik I bis IV
(offene See und glattes flaches Land · landwirtschaftliches Gelände mit Hecken und
Einzelgehöften · Vororte, Industrie- und Gewerbeflächen sowie Wälder · Stadtgebiete mit
mindestens 15 % Bebauungsanteil über 15 m mittlerer Höhe) und die Regel, dass bei
zusammengesetzten Elementen mit Einzelprüfung **das Gesamtelement in die ungünstigste
Klassifizierung der geprüften Einzelelemente einzustufen ist**. **Vorbehalt:** deutsche
Richtlinie, Stand 2002; die EN-Prüfnormen selbst sind seither revidiert.

**11. Es existiert eine belegte Argumentationsbasis für Materialwahl mit Referenzbauten.**
`00_Baustoffkonzept/materialkunde.docx` ordnet je Baustoff eine kurze Einsatzcharakteristik
und vier Referenzbauten zu — Holz heute vorwiegend im Leichtbau, Innenausbau und
Fassadenbau, durch Holzwerkstoffe aber auch für grosse Tragwerke und höhere Gebäude;
Naturstein heute vorwiegend Fassade und Oberfläche, während Backstein und Beton die
tragenden Bauteile übernehmen; Stahl vor allem in Industriebauten und Hochhäusern; Glas
hauptsächlich in Fassaden wegen Lichtdurchlässigkeit und Transparenz. Für Materialkapitel
in Studien und Wettbewerbsbeiträgen ist das ein schnell einsetzbares Gerüst.

**12. Zu Deckenaufbauten liegt eine Vergleichsstudie mit realen Konstruktionshöhen vor.**
`02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/ResearchDeckenstruktur.pdf`
stellt Decken- und Dachstrukturen realisierter Bauten nebeneinander und beziffert je
Beispiel Schichtdicken in Zentimetern und die lichte Raumhöhe. Für frühe
Machbarkeitsüberlegungen — «welche Geschosshöhe brauche ich bei welcher Deckenlösung» —
ist das eine belegte Referenz statt einer Faustregel. **Einschränkung:** die Werte sind
aus Grafiken abzulesen, das PDF gibt nur Fragmente als Text her.

**13. Gebäudetechnik-Grundlagen für Bauherrengespräche sind in lesbarer Form vorhanden.**
Die Foliensätze in `01_Technische_Inst_I_II` tragen eine Textebene und liefern die
Aufgaben der Lüftung in vier Punkten: Ersatzluftlieferung, Raumluftreinigung,
Druckkonstanthaltung (Über- oder Unterdruck bei Reinräumen, Küchen, WC) und Sicherheit
(gezielte Entlüftung prozess- oder nutzungsbedingter Schadstoffquellen). Ergänzend die
personenbezogene Aussenluftwechselrate mit den zugehörigen CO2-Kennzahlen (rund 4 Vol.-%
CO2 in ausgeatmeter Luft gegenüber 0.04 Vol.-% in eingeatmeter Luft, CO2-Produktion
0.012–0.016 m³/h pro Person). Diese Zahlen sind für Healthcare-Projekte, bei denen die
Lüftungsauslegung früh zum Thema wird, das Minimum, um mit dem HLK-Planer auf Augenhöhe zu
sprechen.

## Empfehlung für die Destillation

Zuerst die vier P1-Gruppen (101 Dateien) — sie sind textlesbar, Schweizer Kontext und
decken Gebäudehülle, Bauphysik, Gebäudetechnik und Ausschreibungsmethodik ab. Das
Destillat gehört fachlich verteilt: Fassaden- und Bauphysik-Inhalte in die KB
`wissen/energie` beziehungsweise `wissen/bauprodukte`, die Ausschreibungsmethodik zum
Skill `ausschreibung`, die AHB-Richtlinie zu `wissen/baurecht` als Beleg für die
Bestellhaltung öffentlicher Bauherrschaften. **Jede Norm- und Kennwertangabe aus dieser
Sektion trägt einen Datumsstempel zwischen 1991 und 2010 und ist vor Verwendung gegen die
geltende Ausgabe zu prüfen** (Rule `normen-referenz`); die Destillate sind entsprechend
mit `status: speculative` anzulegen, bis die Werte gegengelesen sind.

## Destillat-Fortschritt

Lauf 29.08.2026 (Lane FACHWISSEN), gemäss `specs/archiv-fachwissen-spec.md`: alle vier
P1-Gruppen dieser Sektion bearbeitet, jede Primärquelle im Original auf dem NAS gelesen
(nicht nur diese Inventar-Zusammenfassung übernommen).

- **`04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/` (38 Dateien) — destilliert.**
  Zwei Artikel: [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] (EnFK-
  Merkblatt Fenster Juni 2009 plus Zeitkonstante/Speichermasse-Schichtdaten). Korrektur zum
  Inventar-Kurzbefund: `Zeitkonstante_Baumaterialien.pdf` ist eine reine Übungsaufgabe ohne
  vorgerechnete Lösung, nicht ein vorgerechnetes Beispiel — die Schichtdaten selbst stimmen.
  `Dicke_Materialstarken_Boden_Wand_Dachaufbauten.pdf` ist datiert und verifiziert: ETH Zürich,
  Übung Bauphysik 3, Prof. Dr. Jan Carmeliet, 02.05.2011. Übrige Dateien der Gruppe (SIA-181-
  Akustiktabelle, SUVA-Absorptionskoeffizienten, Mollier-/hx-Diagramm, Wasserdampfsättigungsdruck,
  Bauphysikalische Kennwerte Fensterrahmen) nicht einzeln in einen eigenen Artikel gefasst,
  da inhaltlich bereits im Uw-Wert-Artikel oder im Feuchteschutz-Artikel aufgegangen bzw. reine
  Diagramm-/Tabellenreferenzen ohne destillierbaren Fliesstext.
- **`07_Gebäudehülle/01_Lernmaterial/` (26 Dateien) — destilliert.** Vier Artikel:
  [[fassadensysteme-typologie-sechs-systeme-hta-luzern]] (Fassadensysteme_1.pdf, HTA Luzern),
  [[anforderungskatalog-fenster-fassade-sechs-interessengruppen-gkp]] (Gloor/Anforderung_
  Fassade_Fenster.pdf, gkp fassadentechnik ag, 22.04.2008),
  [[fassaden-feuchteschutz-sia-180-unterkonstruktion-dehnung-toleranz]] (Feuchteschutz_
  Fassadenbau.pdf, HTA Luzern, März 2007, plus Unterkonstruktionen.pdf),
  [[beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1]] (Einsatzempfehlung
  Fassaden.pdf, ift-Richtlinie FE-05/1, Mai 2002, deutsche Richtlinie, klar gekennzeichnet).
  `Fassadensysteme_2.pdf` und `Wetterschutz_Klimafassade.pdf` sowie die übrigen Gloor-Dateien
  (Binder, Fassadenbekleidungen, Rohbausituationen, Ursprüngliche Ansprüche) nicht einzeln
  destilliert — Ersteinschätzung beim Gegenlesen: überwiegend Bildmaterial/Projektfotos ohne
  über die vier geschriebenen Artikel hinausgehenden destillierbaren Neuwert; für einen P2-Lauf
  vorzumerken, falls dort textlicher Zusatzwert steckt.
- **`09_Konstruktion/` Wurzel-PDFs + `Lignatur/` (6 Dateien) — teilweise destilliert, teilweise
  Duplikat.** `Oblicht.pdf` per MD5-Vergleich **identisch** mit
  `/Volumes/daten/04_Buero/10_Referenzenbibliothek/09_Konstruktion/Oblicht.pdf` (beide
  9fcf428e5afe8335de9b4221754b754b, 389'746 Bytes, Änderungsdatum 21.05.2009) — Flachdachaufbau-
  Inhalt bereits destilliert, siehe [[flachdachaufbauten-vier-typen-textbausteine]], hier nicht
  erneut destilliert. Die beiden übrigen Wurzel-PDFs (`SKMBT_C35310080207410.pdf`,
  `SKMBT_C35310080207450.pdf`) nicht einzeln geprüft, da namensgleich mit bereits in
  [[flachdachaufbauten-vier-typen-textbausteine]] verarbeiteten Buero-Referenzenbibliothek-
  Dateien (`SKMBT_C35310080207410.pdf`, `SKMBT_C35310080207460.pdf`) — auf P2 vorgemerkt für
  einen eigenständigen MD5-Abgleich, falls sich diese als abweichend erweisen sollten. Das
  Lignatur-Herstellerhandbuch (`28_Konstruktionaufbauten/Konstruktionsdetails/Lignatur/`,
  zwei Dateien) eigenständig destilliert: [[lignatur-hohlkasten-holzelemente-dach-deckenkonstruktion]].
  **Wichtiger Fundort-Hinweis:** dieser Lignatur-Unterordner liegt innerhalb von
  `28_Konstruktionaufbauten`, das laut Kurzbefund die vollständige Diplomarbeit einer
  Drittperson (Markus Abegg) enthält — die Lignatur-Dateien selbst sind unabhängiges
  Herstellermaterial und wurden destilliert, die Diplomarbeits-Dateien (Plakat, Projektbeschrieb,
  Endabgabe, `Mek_Beschreibung/`) wurden weiterhin nicht geöffnet.
- **`05_Infrastruktur_Gebaudetechnik/` (31 Dateien) — destilliert.** Zwei Artikel:
  [[funktionale-ausschreibung-verfahrensmethodik]] (15 Funktionale Ausschreibung.pdf) und
  [[ahb-planungsgrundlagen-richtlinie-sieben-oekologische-zielvorgaben]] (RL_GT_1_
  Planungsgrundlagen.pdf, Amt für Hochbauten Stadt Zürich). **Datierungskorrektur zum
  Kurzbefund:** die AHB-Richtlinie trägt explizit das Dokumentdatum 12.10.2005 (Version 2.0,
  Redaktion Thomas Kessler) — die im Kurzbefund vermutete Datierung «vor 2002 anhand der
  Telefonnummern-Schreibweise» ist nicht haltbar, die alte Zürcher Vorwahl «01» war bis zur
  Vorwahlreform 2005 gültige Schreibweise und daher kein verlässlicher Datierungsindikator.
  Übrige Dateien der Gruppe (`Bregenz_Pflichtenheft.pdf`, `Pflichtenheft_Landesgeb_2003_Kurz.pdf`,
  `Lenkungsplan_l-1.doc`) nicht destilliert — Fremdprojekte ausserhalb Schweizer Kontext bzw.
  ohne erkennbaren Sofortnutzen, für P2 vorgemerkt.

Zusätzlich sinngemäss ergänzt destilliert (nicht Teil der vier P1-Kerngruppen, aber im
Kurzbefund unter Punkt 11 gelistet und im selben Lauf mitgeprüft):
`00_Baustoffkonzept/materialkunde.docx` →
[[materialwahl-argumentationsraster-vier-referenzbaustoffe]].

**Nicht destilliert in diesem Lauf, bewusst zurückgestellt (P2):** Deckenaufbauten-
Vergleichsstudie (`02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/
ResearchDeckenstruktur.pdf`, Kurzbefund-Punkt 12) und Lüftungsgrundlagen/CO2-Kennzahlen
(`01_Technische_Inst_I_II/`, Kurzbefund-Punkt 13) — beide inhaltlich intakt und für einen
späteren P2-Lauf geeignet, in diesem Lauf aus Zeit-/Umfanggründen nicht mehr aufgenommen,
siehe `wiki/QUESTIONS.md`.

**Sperrliste-Prüfung:** keine neuen Funde. `00_Baustoffkonzept/Baustoffadressen` und
`09_Konstruktion/28_Konstruktionaufbauten` (Diplomarbeit Markus Abegg, ausser dem
unabhängigen Lignatur-Unterordner) weiterhin nicht geöffnet.

## Destillat-Fortschritt — Ergänzung 2026-08-30 (Lane FACHWISSEN, erster P2-Lauf dieser Sektion)

Auftrag: die im Abschnitt oben als P2 zurückgestellten Positionen «Deckenaufbauten-
Vergleichsstudie» und «Lüftungsgrundlagen/CO2-Kennzahlen» destillieren, danach so weit Budget
trägt weitere P2-Positionen. NAS-Mount während des gesamten Laufs stabil (keine Ausfälle).

- **`02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/
  ResearchDeckenstruktur.pdf` — destilliert.** [[deckenaufbauten-vergleichsstudie-lichte-raumhoehe-konstruktionsraster]].
  Da `pypdf`-Text-Extraktion die bemassten Zahlen nicht eindeutig den Massachsen zuordnete
  (nur lose Zahlenfragmente pro Seite), wurden alle neun Seiten zusätzlich mit PyMuPDF (`fitz`)
  bei 200 dpi als PNG gerendert und visuell gelesen — damit ist die Zuordnung Bauwerk/h-Wert/
  Profilmass belegt, nicht geraten. Zwei h-Werte (Haus Milan, Kindertagesstätte São Bernardo,
  beide Mendes da Rocha) sind im Original ohne Dezimaltrennzeichen beschriftet («h=600»,
  «h=650») und deshalb im Artikel ausdrücklich als unsicher markiert, nicht stillschweigend
  als 6,00 m/6,50 m behauptet. Ein Beispiel (Caruso St John, New Art Gallery Walsall) hat keinen
  h-Wert im Blatt; nicht ergänzt.
- **`01_Technische_Inst_I_II/` — Lüftungs-Foliensatz destilliert, Rest der 120 Dateien nicht
  einzeln gesichtet.** Verifikation der Inventar-Behauptung «zwei Foliensätze mit Textebene
  gelesen»: bestätigt am Original — `02_Vorlesungsfolien/110916_Webseite/03_Luftung.pdf`
  (41 Seiten, 30'192 Zeichen laut `pypdf`) und die inhaltsgleiche 4-pro-Seite-Druckversion
  `02_Vorlesungsfolien/04 Lüftung 4er.pdf` (17'219 Zeichen) tragen beide echten Text; Autor und
  Datum (© Prof. H.-J. Leibundgut, Professur für Gebäudetechnik ETH Zürich, August 2008) stehen
  auf der letzten Folienseite und wurden vorher nicht im Inventar vermerkt. Zwei Artikel:
  [[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]] und
  [[lueftungssystematik-zuluftfuehrung-waermerueckgewinnung-eth-leibundgut]]. Übrige Dateien der
  Gruppe (Prüfungsvorbereitung, Formelsammlungen, Vorlesungsnotizen zu anderen Themen als
  Lüftung, Lüftungsschema-Bildersammlung) nicht einzeln geprüft — für einen künftigen P2-Lauf
  vorgemerkt, falls dort über die beiden destillierten Artikel hinausgehender Neuwert steckt.
  **Norm-Diskrepanz-Fund:** die fAR-Tabelle der Vorlesung zitiert «nach SIA 384/1»; der
  Registerstand in `wissen/normen` weist SIA 384/1:2022 als Heizungsanlagen-Norm aus, nicht als
  Lüftungsnorm (dafür gilt heute SIA 382/1:2014) — als offener Punkt im Artikel und in
  `wiki/QUESTIONS.md` vermerkt, nicht stillschweigend gleichgesetzt.

**Nicht destilliert in diesem Lauf, aus Zeit-/Budgetgründen zurückgestellt (weiterhin P2):**
`04_Bauphysik_Energie/02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien, Bauphysik
I–III ETH Zürich, Auftrags-Position 3) und der systematische Teil von `02_Bauelemente/`
(209 Dateien, Auftrags-Position 4) — beide nicht begonnen, für den nächsten P2-Lauf dieser
Sektion vorgesehen.

**Sperrliste-Prüfung:** keine neuen Funde, keine der sechs gesperrten Positionen geöffnet
(`00_Baustoffkonzept/Baustoffadressen`, `09_Konstruktion/28_Konstruktionaufbauten` ausserhalb
Lignatur, `01 2D Details`, `01_Baustoff_Materialitaet/` Materialordner, `.band`/`.aif`-Dateien,
`06_Construction_Caruso/`). `06_Construction_Caruso/` in diesem Lauf nicht erneut technisch
geprüft — der Erst-Sweep-Befund «keine Textebene, reine Scans» wurde übernommen, nicht neu
verifiziert; sollte ein künftiger Lauf dort ansetzen wollen, ist eine eigene Prüfung fällig.

## Destillat-Fortschritt — Ergänzung 2026-08-30 (Lane FACHWISSEN, dritter P2-Lauf dieser Sektion)

Auftrag: die beiden im zwanzigsten Lauf zurückgestellten P2-Positionen weiterbearbeiten.
Bearbeitet: `02_Bauelemente/` systematischer Teil (209 Dateien). `04_Bauphysik_Energie/
02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien, Bauphysik I–III ETH) in diesem
Lauf nicht begonnen — bleibt offen für den nächsten Lauf.

- **`02_Bauelemente/` systematischer Teil — vollständig gesichtet, Ertrag gering.** Alle
  Unterordner (`00_Theorie` bis `16_Rolltreppe`) auf Nicht-Bild-Dateien durchsucht (`find`
  ohne jpg/jpeg/png/tif/gif/bmp). Ergebnis: von 209 Dateien sind die allermeisten Fotos, CAD-
  Dateien (`.dxf`/`.pln`/`.bpn`) oder reine Bildscans ohne Textebene (per `pypdf`
  seitenweise geprüft, nicht nur Stichprobe). Textlesbare Funde:
  - `03_Oeffnung_Fenster/02_Fensteröffnung/Die_Oeffnung.pdf` — eigene Studienarbeit
    Raphael Jans (HTA Bachelor, Sommersemester 2007, «Rafael Jans» als Autor im Dokument),
    Skizzenpläne zu einer Öffnung in der Theaterhalle Künstlerkolonie Erstfeld. **Nicht
    destilliert** — Studienarbeiten auch von Raphael Jans selbst sind laut
    `specs/archiv-fachwissen-spec.md` kein eigenständiger Artikelstoff.
  - `09_Eingaenge/Vorlesung_Phänomen Eingang.pdf` (Prof. Schwartz, «Tragwerksentwurf», ETH,
    39 Seiten) — **destilliert**:
    [[phaenomen-eingang-typologie-schwellenraum-eth-schwartz]].
  - `09_Eingaenge/renefurer_heft_7.pdf` (René Furer, «Zwei Eingänge», Heft 7, ISBN
    978-3-9523262-6-8, 2008) — als Ganzes ein essayistischer Architekturvergleich ohne
    eigenständig destillierbare Fachmethodik; **ein Einzelfund destilliert**
    (Pilzdecken-Frühgeschichte Maillart): [[pilzdecken-fruehgeschichte-schweiz-maillart-giesshuebel]].
  - `04_Decke_Boden/AW_ Bodenaufbau.pdf` — private E-Mail-Korrespondenz Raphael Jans mit
    einem Studienkollegen (2009, private Adressen beider Absender im Klartext). **Nicht
    destilliert und nicht zitiert** — private Korrespondenz, kein Fachartikel-Stoff. Kein
    Sperrlisten-Fund im engeren Sinn (keine Vertrags-/Lohn-/Gesundheitsdaten), aber bewusst
    nicht in die KB übernommen.
  - `04_Decke_Boden/rapitzdecken/R7U56D~3.PDF` — reine Literaturlisten-Seite einer
    deutschen Fachdatenbank (baufachinformation.de), kein Artikeltext selbst. Nicht
    destillierbar.
  - `05_Dach/00_Konstruktion/emag_gedruckt_A4.pdf` (68 Seiten, deutsches Dachdecker-
    Fachmagazin, Ausgabe 3.2010) — geprüft (Inhaltsverzeichnis plus Stichproben
    Gründach-/Brandschutz-Artikel S. 16-19). Überwiegend Hersteller-Marketing (Zinco,
    Rhepanol, Braas) und deutscher Marktkontext; laut Spec kein Hersteller-Marketing
    destillieren. **Nicht destilliert.**
  - `05_Dach/Sheddachtypologie/` (drei PDFs, u. a. Herrera-y-Obes-Lagerhalle von Eladio
    Dieste) — jeweils nur eine einzelne exportierte Vorlesungsfolie mit Bildlegende,
    nicht der volle Foliensatz. Zu dünn für einen eigenständigen Artikel. **Nicht
    destilliert.**
  - `02_Wand/Brunelleschi...pdf`, `10_Tuer/Tuer.pdf`, `03_Oeffnung_Fenster/Fenster.pdf` —
    reine Bildscans ohne Textebene (0 Zeichen laut `pypdf`).
  - `09_Eingaenge/DETAIL/` (23 JPG-Scans, Zeitschrift *Detail*, Rubriken u. a.
    «Stadteingänge», «Das Werktor», «Servicecenter München») — keine Textebene, nur mit
    Vision/OCR erschliessbar; für einen künftigen Lauf vorgemerkt.
  - `06_Treppen/` in diesem Lauf nicht erneut bearbeitet — bereits im vorherigen Lauf
    (`VL 08 _ 20100506_treppen.pdf`) vollständig destilliert, siehe
    [[treppen-tragwerkstypologie-eth-vorlesung-tragstruktur-kohlhammer-rinke]].

**Sperrliste-Prüfung:** keine neuen Funde in den sechs bekannten gesperrten Positionen.
Zusätzlich vermerkt (kein Sperrlisten-Fund, aber Vorsichtsmassnahme): private
E-Mail-Korrespondenz in `04_Decke_Boden/AW_ Bodenaufbau.pdf` nicht destilliert, siehe oben.
