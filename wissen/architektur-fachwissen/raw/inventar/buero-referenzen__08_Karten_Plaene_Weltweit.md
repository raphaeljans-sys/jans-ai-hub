---
title: "Inventar buero-referenzen — 08_Karten_Plaene_Weltweit"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/08_Karten_Plaene_Weltweit
last_updated: 2026-08-23
status: established
---

# Inventar: 08_Karten_Plaene_Weltweit

## Kurzbefund

Die Sektion umfasst **445 Dateien / 660 MB** und ist trotz des Namens «Weltweit» faktisch
**eine einzige Sache plus Beiwerk**: 437 der 445 Dateien (658 MB) sind der vollstaendige
Inhalt einer amtlichen deutschen Geodaten-CD/DVD, abgelegt unter
`02_Staedte/Berlin/Geo_TFH_Berlin`. Herausgeberin ist gemaess `Liesmich.txt` die
Senatsverwaltung fuer Stadtentwicklung Berlin, Abteilung III (Geoinformation, Vermessung,
Wertermittlung); der Datenstand der Karten ist **Januar 2006**, der beiliegende
Produktkatalog traegt das Datum **14.11.2005**. Es handelt sich um eine
Informations-/Musterdisc der Reihe «Digitale Karten und Luftbilder» samt Viewer-Software
YADE ZOOM 5.2 und dem kompletten Blattsatz der «Karte von Berlin 1:5.000» (K5) als
154 TIF-Blaetter.

Ausserhalb dieses Berlin-Blocks liegen **acht** Dateien: ein PDF mit den
Nutzungsbestimmungen fuer Orthophotos der **Stadt Zuerich** (`00_Allgemein/`), ein
Wikipedia-Ausdruck zur Geschichte Boehmens (563 Textzeilen, gedruckt 30.09.2012) und
sechs reine Rasterkarten (Boehmen, Sudeten, Europa, Mittlerer Osten) ohne Textgehalt.

Der Ordner ist damit **kein Fachwissensbestand, sondern ein Werkzeug- und Materialarchiv
aus der Studien-/Vor-JANS-Zeit** (Ordnerdatum Oktober 2018, Dateidaten 2002 bis 2012).
Der fachliche Ertrag liegt nicht in den Karten selbst, sondern in drei Textschichten, die
ich gelesen habe: (1) den **Nutzungs- und Lizenzbedingungen** amtlicher Geodaten,
(2) der **Methodik der Georeferenzierung und Blattschnitt-Verwaltung** von Rasterkarten und
(3) dem **Themenkatalog des Umweltatlas Berlin**, der im Produktkatalog vollstaendig
aufgelistet ist und als Checkliste einer stadtweiten Standort- und Umweltanalyse taugt.

**Nichts Heikles gefunden.** `Registrierung.doc` und `antrag_lizenz.pdf` sind
unausgefuellte Blankoformulare (alle Formularfelder leer); die HTML-Seiten unter
`ansprechp/` enthalten Behoerden-Kontaktdaten von 2006, die ich bewusst nicht
inventarisiere und nicht wiedergebe.

## Triage

| Datei / Gruppe | Stufe | Begruendung |
|---|---|---|
| `00_Allgemein/071128_Nutzung_Orthophoto.pdf` (Stadt Zuerich, Geomatik + Vermessung) | **P1** | Einzige Datei der Sektion mit direktem Schweizer Bezug und unmittelbarer Bueroverwertbarkeit: sechs nummerierte Nutzungsbestimmungen fuer Orthophotos der Stadt Zuerich (Befugnis, Eigentum, Weitergabe, Nutzung/Erzeugnisse, Haftung, Schlussbestimmungen). Gelesen. Achtung Datierung: Dateiname legt 28.11.2007 nahe, die Fusszeile des Dokuments nennt **28.11.01**; die Fassung ist in jedem Fall alt und vor Verwendung gegen die heutige GeoZ-/OGD-Fassung zu pruefen |
| `.../weiteres/GeoDatenService_Preisverzeichnis.pdf` («Produktkatalog 2005», 58 S.) | **P2** | Ergiebigste Textdatei der Sektion. Enthaelt den **vollstaendigen Themenkatalog des Umweltatlas Berlin** (8 Themengruppen, rund 80 Themen, ueber 400 Karten) mit Ausgabejahrgaengen, dazu Bezugsbedingungen, Lizenzanhang und Bestellschein. Als Systematik uebertragbar, als Preisangabe wertlos (2005) |
| `.../deutsch/weiteres/lizenz.html` | **P2** | Vollstaendiges Lizenzmodell fuer amtliche Rasterdaten: Kategorie A (eigener Gebrauch) vs. Kategorie B (Vervielfaeltigung ohne direkte Einnahmen, z.B. als Kartengrundlage in Gutachten oder Exposé), Preis-Multiplikatoren nach Zahl der Arbeitsplatzrechner, Quellenangabepflicht, Bussgeldvorbehalt nach § 7 / § 27 Abs. 3 VermGBln. Als Denkraster fuer Kartenrechte in JANS-Dossiers brauchbar, rechtlich deutsches Landesrecht |
| `.../deutsch/luftbild/*.html` (26 Seiten: `luftbild_dig`, `dop`, `dop_matrix`, `bildflugverz`, `lb_zeitreise` + 15 Jahres-Kommentare 1939–2005) | **P2** | Substanzieller Block. Beschreibt ein Landesluftbildarchiv mit rund 65'000 Luftbildern (Aufnahmen ab 1938/39, alliierte Kriegsaufnahmen, regelmaessige Befliegungen seit 1954), das Bildflug-Verzeichnis mit Massstab, Art (s/w · Farbe · CIR), Aufloesung und Auftragnehmer je Bildflug, sowie die Produktlogik digitaler Orthophotomosaike. `lb_zeitreise` ist eine ausformulierte, luftbildgestuetzte Transformationsanalyse eines rund 70 ha grossen Stadtgebiets ueber sechs Jahrzehnte |
| `.../deutsch/karten/*.html` (17 Sachtexte: `dig_karten`, `tx_k5`, `tx_k10`, `tx_uek50`, `tx_brw`, `tx_brw10jahre`, `tx_top50`, `tx_ueb200`, `georef`, `yaderaster`, `kb_schnitt`, `kb_schn_*`, `weitere_k*`, `einzel_k`) | **P2** | Produkt- und Methodenbeschreibungen der Kartenwerke K5 / K10 / UEK50 / UEB200 / Bodenrichtwertatlas: Herleitung aus der Automatisierten Liegenschaftskarte, Farbtiefe, Aufloesung (400 bzw. 600 dpi), Kompression, Blattschnitt, Fuenffarben-Signatur. Fuer die Frage, was eine Rasterkarte technisch tragen muss, brauchbar |
| `.../tool/GeoRef_K5.txt`, `GeoRef_K10.txt`, `GeoRef_Uek50.txt`, `GeoRef_UeB200.txt`, `Info/GeoRef_K5.txt`, `K5/KO_K5.TXT` | **P2** | Vorbildlich einfache Georeferenzierungstabellen: je Blatt Dateiname und die vier Eckkoordinaten (y/x links unten, y/x rechts oben) im Landeskoordinatensystem, semikolongetrennt. `KO_K5.TXT` ergaenzt Blattnummer, Ausgabejahr, Herausgeber-Bezirk und Blattgroesse in cm. Direkt als Muster fuer eigene Rasterplan-Register lesbar |
| `.../weiteres/abk.html`, `abk_lzw.html`, `vorw.html` | **P2** | Abkuerzungsverzeichnis der amtlichen deutschen Geodatenwelt (ALK, ALB, ATKIS, DOP, BRW, CIR, ECW, LZW) und Vorwort mit der Uebersicht ueber die Datenbestaende neben den konfektionierten Karten |
| `K5/*.tif` (154 Blaetter, 546 MB) + `Info/Blattschnitt_K5.pdf` + `Info/Legende_K5.pdf` | **P3** | Der Kartenbestand selbst. Reines Bildmaterial ohne extrahierbaren Text (`Legende_K5.pdf` liefert bei `pdftotext` null Zeichen, also gescannt/vektorgrafisch). Archivwert als Berlin-Grundlage, fuer JANS ohne Projektbezug |
| `dig_k_lb/muster/karte/*.tif` (8) und `muster/luftbild/*.tif` (13, benannt nach Jahr, Art und Massstab, 1939 bis 2005) | **P3** | Original-Qualitaetsmuster in Originalformat. Als Anschauung fuer Aufloesungs-/Formatentscheide bei Rasterplanabgaben nuetzlich, sonst Archiv |
| `01_Laender/**` (Boehmen, Europa, Mittlerer Osten: 6 Rasterkarten GIF/JPG/PNG) | **P3** | Uebersichts- und Geschichtskarten, vermutlich Praesentationsmaterial. Kein Textgehalt, keine Quellenangabe, keine Datierung |
| `01_Laender/Boehmen/Geschichte Böhmens – Wikipedia.pdf` | **P3** | Wikipedia-Ausdruck vom 30.09.2012, 563 Textzeilen. Allgemeinhistorisch, kein Fachwissen; als Quelle nicht zitierfaehig |
| YADE-ZOOM-Installation: 35 Dateien (`*.exe`, `*.dll`, `*.cab`, `*.ins`, `*.ini`, `*.lid`, `*.pkg`, `*.bin`, `*.id`, `*.ex_`, `*.hdr`, `*.dat`, `*.lib`, `*.par`, `*.tag`, Sequenznummern) im Hauptverzeichnis und in `Bde32/` | **X** | Windows-Installer eines Rasterkarten-Viewers von 2006 (Systemvoraussetzung laut `system_v2.html`: Pentium II, Windows 98/NT/XP, 64 MB RAM). Auf keiner JANS-Station lauffaehig, damit ist auch der K5-Blattsatz nur noch ausserhalb dieses Viewers nutzbar |
| `dig_k_lb/deutsch/ansprechp/*.html` (11 Seiten) | **X** | Reine Kontakt- und Vertriebsseiten einer Berliner Behoerde, Stand 2006. **Bewusst nicht inventarisiert und nicht wiedergegeben** (Kontaktdaten Dritter, ohne Nutzen und ohne Aktualitaet) |
| `Info/Registrierung.doc`, `weiteres/antrag_lizenz.pdf` (2 Fundstellen) | **X** | Unausgefuellte Blankoformulare (Verteiler-Registrierung, Endbenutzer-Lizenzvertrag). Alle Formularfelder leer, kein personenbezogener Inhalt. Ohne Wert |
| `karten/system_v0–v4.html`, `karten/muster_*.html`, `karten/kartenmuster.html`, `k10/*.html`, `deutsch/*.html` (Titel/Auswahl/Ende/Inhaltsrahmen), `weiteres/impr.html`, `internet.html`, `links.html`, `preisverz.html`, `fp*_.html`, `wue_5_foto.html` | **X** | Navigations-, Rahmen-, Bildbeschriftungs- und Systemanforderungsseiten der Info-Disc. Kein eigener Sachgehalt; die Links (`www.atkis.de`, `www.geobasis-bb.de`, Senatsseiten) sind Stand 2006 |
| 116 GIF/JPG/BMP/PNG unter `dig_k_lb/image/**` und `deutsch/**` | **X** | Vorschaubilder, Buttons, Layoutgrafiken der HTML-Praesentation, ausdruecklich in geringer Aufloesung («um einen ersten visuellen Eindruck zu vermitteln», `vorw.html`). Reines Bildmaterial ohne Text |
| `Liesmich.txt`, `SETUP.INI`, `K5/K5RD.YML` | **X** | Installationshinweis mit Editor-Zeilenumbruchtipps, Setup-Konfiguration, Viewer-Index. Betriebsdateien |

Summen: **P1 1 · P2 54 · P3 184 · X 206** (zusammen 445 Dateien; `.DS_Store` und
`.AppleDouble` nicht mitgezaehlt).

## Was hier fuer JANS drinsteckt

**1. Eine fertige Klausel-Systematik fuer Geodaten-Nutzungsrechte, mit Schweizer Beleg.**
Das Zuercher PDF gliedert die Abgabe von Orthophotos in genau sechs Punkte: keine
Ausschliesslichkeit fuer den Datenbezueger; Urheber- und Eigentumsrecht verbleibt bei
Geomatik + Vermessung Stadt Zuerich, mit **Pflichtvermerk auf jedem graphischen und
digitalen Auszug**; **Weitergabe an Dritte nicht gestattet**; aus den Daten darf **keine
Moeglichkeit eines Internetzugriffs** geschaffen werden, wobei Downloads von JPG-Dateien
bis Groesse A5 gestattet sind; **keine Haftung fuer Folgeschaeden aus fehlerhaften Daten
oder ungenuegendem Nachfuehrungsstand**; strafrechtliche Verfolgung vorbehalten. Das sind
genau die fuenf Fragen, die sich stellen, sobald ein Orthofoto in eine Machbarkeitsstudie,
einen Wettbewerbsplan oder eine Website wandert: Quellenvermerk, Weitergabe an die
Bauherrschaft, Publikation im Netz, Aufloesungsgrenze, Haftung fuer den Nachfuehrungsstand.
**Der Nachfuehrungsstand-Punkt ist der praktisch wichtigste** und deckt sich mit der
JANS-Praxis, Kennwerte und Grundlagen mit Datum zu belegen. Vorbehalt: die Fassung ist von
2001 bzw. 2007 und muss vor Verwendung gegen die heute geltende Fassung gestellt werden.

**2. Die Zweiteilung der Lizenzkategorien ist ein brauchbares Denkraster fuer die eigene
Grundlagenbeschaffung.** Berlin trennt sauber zwischen Kategorie A (Nutzung fuer den
eigenen Gebrauch, «die digitalen Karten und Luftbilder einschliesslich analoger Ausdrucke
duerfen den eigenen Bereich nicht verlassen») und Kategorie B, die ausdruecklich die
**Vervielfaeltigung ohne direkte Einnahmen erlaubt, «z.B. als Anlage zu Gutachten oder als
Kartengrundlage im Exposé, Buch oder Flyer»**, mit Preisaufschlag nach Zahl der
Arbeitsplaetze. Genau dieser Fall ist der JANS-Normalfall: eine Kartengrundlage wandert als
Beilage in ein Gutachten oder eine Studie. Die Lehre ist nicht die deutsche Preistabelle,
sondern die Frage, die vor jeder Grundlagenbestellung zu stellen ist: **deckt die Lizenz
die Beilage zum Erzeugnis ab, oder nur den internen Gebrauch?**

**3. Georeferenzierung von Rasterplaenen als Vier-Zahlen-Problem.** Die Dateien
`GeoRef_*.txt` zeigen die minimal noetige Buchfuehrung: pro Rasterblatt Dateiname und die
Koordinaten von linker unterer und rechter oberer Blattecke, mehr nicht, semikolongetrennt.
`KO_K5.TXT` ergaenzt Blattnummer, Ausgabejahr, herausgebenden Bezirk und Blattgroesse in
Zentimetern. Fuer JANS ist das die Vorlage, wie ein eigener Bestand gescannter oder
exportierter Planunterlagen registerfaehig gemacht wird, ohne GIS: eine Tabelle mit
Dateiname, zwei Eckkoordinaten, Ausgabestand und Herkunft. Der Massstabsbezug wird dadurch
pruefbar, statt im Dateinamen zu verschwinden. Die Kartenbeschreibung ergaenzt die
technischen Groessen, die dabei mitzufuehren sind: Aufloesung (600 dpi fuer 1:5.000,
400 dpi fuer 1:10.000), Farbtiefe (K5 einbittig, LZW-komprimiert) und das Zielformat.

**4. Der Umweltatlas-Themenkatalog ist eine fertige Checkliste fuer eine
Standort-Umweltanalyse.** Der Produktkatalog listet acht Themengruppen: **01 Boden ·
02 Wasser · 03 Luft · 04 Klima · 05 Biotope · 06 Flaechennutzung · 07 Verkehr/Laerm ·
08 Energie**, aufgeschluesselt in rund 80 Themen und ueber 400 Karten, mit Raumaufloesung
bis zur Block- bzw. Blockteilflaeche (bis zu 26'000 Flaechen). Mehrere Positionen treffen
Fragen, die JANS heute in Machbarkeits- und Ankaufspruefungen stellt: Versiegelung,
bodenkundliche Kennwerte, Gelaendehoehen, **Flurabstand des Grundwassers** (in drei
Ausgaben 1992/1998/2003 gefuehrt), Verschmutzungsempfindlichkeit des Grundwassers,
Wasserschutzgebiete, Entsorgung von Regen- und Abwasser, **Stadtklimatische Zonen**,
Oberflaechentemperaturen bei Tag und Nacht, Klimafunktionen, bodennahe Windgeschwindigkeiten,
Bioklima, **Strassen- und Schienenverkehrslaerm an der Strassenrandbebauung**, Stadtstruktur,
Einwohnerdichte, Versorgung mit wohnungsnahen oeffentlichen Gruenanlagen sowie
**Versorgungsbereiche Gebaeudewaerme** und **ueberwiegende Heizungsarten**. Die letzten
beiden sind die inhaltliche Vorstufe dessen, was in der Schweiz heute als Energieplanung
und Waermeversorgungsgebiet gefuehrt wird. Der Katalog beantwortet damit die Frage
«welche Umweltkarte muesste es fuer diesen Standort geben?» besser als jede eigene
Aufzaehlung, unabhaengig davon, dass die Daten Berlin betreffen.

**5. Luftbildreihen als Methode der Bestandes- und Veraenderungsanalyse.** Das Bildflug-
Verzeichnis zeigt, wie ein Archiv gefuehrt wird, das Aussagen ueber Zeitschnitte
belastbar macht: je Bildflug Jahr, Massstab (1:5.000 bis 1:80.000), Bildgroesse
(durchgehend 23 x 23 cm Senkrechtaufnahme), Aufnahmeart (s/w, Farbe, CIR-Falschfarben),
Aufloesung in dpi und der ausfuehrende Betrieb. `lb_zeitreise` fuehrt vor, was daraus
entsteht: eine Jahr-fuer-Jahr-Lesung eines rund 70 ha grossen Stadtgebiets von 1939 bis in
die 1990er-Jahre, in der Kriegszerstoerung, Abbruch, Brachfallen, Wiederbebauung und
Infrastrukturwandel je am konkreten Luftbild belegt werden. Fuer JANS ist das die
uebertragbare Methode fuer Bestandes-, Beweissicherungs- und Arealentwicklungsfragen:
**Zeitschnitte aus Orthofotos statt Erzaehlung**, mit Datum und Bildflug als Quelle. Die
Produktbeschreibung nennt Beweissicherung ausdruecklich als Nutzungszweck digitaler
Orthophotomosaike, neben Ergaenzung und Aktualisierung von Kartenwerken.

**6. Was die Sektion nicht ist.** Sie enthaelt kein Schweizer Kartenmaterial ausser dem
einen Zuercher Nutzungsblatt, keine Projektgrundlagen, keine Konstruktions- oder
Kostendaten. Der 546-MB-Blattsatz K5 ist an einen Windows-Viewer von 2006 gebunden und
betrifft ein Stadtgebiet ohne JANS-Bezug. **Empfehlung: die Sektion nicht destillieren,
sondern die vier Textschichten (Zuercher Nutzungsbestimmungen, Lizenzkategorien,
Georeferenzierungs-Muster, Umweltatlas-Themenkatalog) herausziehen und den Rest als
Archiv stehen lassen.** Der Ordnername «Karten_Plaene_Weltweit» beschreibt den Inhalt
irrefuehrend; faktisch ist es ein Berlin-Ordner mit drei Beilagen.

## Methodische Vermerke

- Gesichtet: alle 445 Dateien nach Pfad, Format, Groesse und Datum. **Wirklich gelesen**
  wurden: `071128_Nutzung_Orthophoto.pdf` (vollstaendig, via `pdftotext -layout`),
  `GeoDatenService_Preisverzeichnis.pdf` (Inhaltsverzeichnis und Umweltatlas-Kapitel
  vollstaendig), `Liesmich.txt`, `GeoRef_K5.txt`, `KO_K5.TXT` sowie 16 HTML-Seiten
  (`vorw`, `lizenz`, `abk`, `links`, `preisverz`, `dig_karten`, `tx_k5`, `tx_k10`,
  `tx_brw`, `tx_brw10jahre`, `georef`, `yaderaster`, `system_v2`, `luftbild_dig`, `dop`,
  `lb_zeitreise`, `bildflugverz`) via `textutil -convert txt`, sowie der Kopf von
  `Registrierung.doc` zur Pruefung auf personenbezogenen Inhalt.
- `Legende_K5.pdf` liefert bei `pdftotext` keinen Text; der Legendeninhalt ist daher
  **nicht gelesen** und wird hier nicht behauptet.
- Behoerden-Kontaktdaten und Namen einzelner Sachbearbeiter aus den Seiten von 2006 sind
  bewusst nicht uebernommen.
- Quellordner nur lesend geoeffnet, nichts geaendert, verschoben oder geloescht.
