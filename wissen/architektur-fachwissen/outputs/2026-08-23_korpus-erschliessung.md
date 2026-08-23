---
title: "Korpus-Erschliessung buero-referenzen und archiv-fachwissen, Phase 0"
kb: architektur-fachwissen
datum: 2026-08-23
status: established
sources:
  - "raw/inventar/ (16 Sektionsinventare, alle gelesen)"
  - "skills/wissens-destillat/KORPUS-QUEUE.md"
  - "wissen/architektur-fachwissen/CLAUDE.md"
---

# Korpus-Erschliessung, Phase 0

Report des Laufs vom 23.08.2026. Erschlossen wurden 16 Sektionen aus den Korpora 3
(`buero-referenzen`, `/Volumes/daten/04_Buero/10_Referenzenbibliothek`) und 4
(`archiv-fachwissen`, `/Volumes/daten/02_Architektur_Archiv`) der Queue in
`skills/wissens-destillat/KORPUS-QUEUE.md`. Ergebnis ist ein Inventar, kein Destillat: es gibt
nach diesem Lauf noch keinen Wiki-Artikel, aber eine belegte Landkarte davon, wo im Archiv
Substanz liegt und wo nicht.

## 01 Methode

**01.1 Ein Agent je Sektion, eine Datei je Agent.** 16 Agenten arbeiteten parallel, jeder auf
genau einer Sektion, und schrieb ausschliesslich seine eigene Datei unter
`raw/inventar/<korpus>__<sektion>.md`. Das ist die in `CLAUDE.md` festgelegte kollisionsfreie
Aufteilung; keine zwei Agenten schrieben in dieselbe Datei.

**01.2 Gelesen statt aus dem Dateinamen gedeutet.** Die Inventare weisen aus, welche Dateien
wirklich geöffnet wurden. Bei kleinen Sektionen wurde vollständig erhoben (`12_Masse`,
`15_Oberflaechenbehandlung`, `11_Landschaftsarchitektur`, `19_Puplikationen`, `31_Klimadaten`),
bei grossen nach dem Kriterium «trägt eine belegbare Zahl, eine Methode oder eine
wiederverwendbare Struktur» ausgewählt: 45 Volltexte in `03_Bauprozesse_I_II`, rund 25 in
`02_Bibliothek`, 15 in `10_Modellbauen`, 13 von 18 in `17_Projektbeschriebe`. Bildmaterial wurde
gerendert und angesehen, nicht übersprungen; in `14_Modellfotos` etwa über eine Kopie im
Scratchpad samt Auslesen der eingebetteten Metadaten.

**01.3 Vier maschinelle Prüfungen stützen die Triage.** Erstens Prüfsummen gegen Dubletten:
`03_Bauprozesse_I_II` fand so 46 redundante Kopien in 32 Dublettengruppen,
`01_Innenarchitektur` acht exakte Paare, `02_Denkmalpflege` zwei, `17_Projektbeschriebe` eine
textidentische Dublette über den MD5 des extrahierten Texts. Zweitens Textlayer-Prüfung mit
`pdftotext`: in `02_Denkmalpflege` sind rund 60 der 118 PDF reine Bildscans und ohne OCR nicht
destillierbar, ebenso der 638-seitige Neufert in `02_Bibliothek`. Drittens Metadaten-Auswertung
(Erzeugerprogramm, Aufnahmegerät, Seitenformat), die in `19_Puplikationen` den Layout-Andruck
als unfertige Fahne und in `31_Klimadaten` die Nachbearbeitung des Sonnenpfad-Diagramms belegte.
Viertens seitenweises Rendern bildbasierter PDF, wo der Textlayer fehlte, etwa bei der
Terrazzo-Offerte und den BKP-Scans in `18_Projektkostenplanung`.

**01.4 Bekannte Grenzen des Verfahrens, aus den Inventaren selbst.** Die `.xls`-Dateien wurden
über LibreOffice konvertiert, wobei nur das erste Tabellenblatt exportiert wird; von
`Honorarberechnung_SIA_102_2003_Tabelle.xls` und `8_1 Vorlage_Nachweis_Kennzahlen.xls` ist
darum nur die Kopfstruktur belegt, nicht der Formelapparat. CAD- und Satzdateien (`.pln`,
`.vwx`, `.indd`) wurden nicht geöffnet. 29 SWF-Dateien in `16_Portfolios` sind mangels
Flash-Player nicht prüfbar; die Annahme, sie seien inhaltsgleich mit den danebenliegenden PDF,
stützt sich auf die parallele Benennung und ist nicht verifiziert. Die 36 Word-Vorlagen von
1994 in `03_Bauprozesse_I_II` sind technisch nicht mehr zu öffnen.

**01.5 Quellordner nur lesend.** Auf dem NAS wurde nichts verschoben, umbenannt oder gelöscht.
`X` heisst «nicht in die Wissensbasis übernehmen», nicht «entfernen».

## 02 Kennzahlen

| Korpus | Sektionen | Dateien | P1 | P2 | P3 | X |
|---|---|---|---|---|---|---|
| `buero-referenzen` | 12 | 581 | 44 | 124 | 234 | 179 |
| `archiv-fachwissen` | 4 | 8'023 | 69 | 507 | 4'194 | 3'253 |
| **Total** | **16** | **8'604** | **113** | **631** | **4'428** | **3'432** |

Drei Lesarten dieser Zahlen, die der reine Blick auf die Summe verfehlt.

**02.1 Vierzig Prozent des Gesichteten ist Ballast.** 3'432 von 8'604 Dateien sind verworfen,
und der Ballast ist nicht gleichmässig verteilt: allein `02_Bibliothek` stellt 2'930 davon
(2'106 Einzelseiten-Splits derselben Reader, 383 Cover-Screenshots einer privaten Wunschliste,
127 Beschaffungsvorgänge, 111 Reise-Administrationsdateien mit Personendaten). In
`03_Bauprozesse_I_II` sind es 234, darunter 91 SPLIT-Fragmente von vier Rechtsskripten und 38
Binärdateien eines Acrobat-Katalog-Index von 1996.

**02.2 Die Menge sagt nichts über den Ertrag.** `02_Bibliothek` ist mit 6'947 Dateien die
grösste Sektion und liefert zwei P1-Positionen. `18_Projektkostenplanung` hat 28 Dateien und
liefert sechzehn. Das Verhältnis P1 zu gesichtet reicht von 57 Prozent
(`18_Projektkostenplanung`) bis 0,03 Prozent (`02_Bibliothek`).

**02.3 113 P1 sind nicht 113 Dokumente.** Mehrere P1-Positionen sind in zwei Sektionen zugleich
inventarisiert, weil dieselben Leutschenbach-Unterlagen sowohl in der Referenzenbibliothek als
auch im Archiv liegen. Namentlich betrifft das mindestens acht Dateien, unter anderem
`KV_Zusammenstellung_Leutschenbach.pdf`, `Finanzrapport_Leutschenbach.pdf`,
`Anlagekosten_Leutschenbach.pdf`, das Kennzahlenblatt, `050420_H-Bausumme.pdf`,
`KS SA Leutschenbach Architekt 1.xls`, `Offerte_Terrazzo_Belaege.pdf` und
`100218_Baubeschrieb_Waltenschwil.pdf`, dazu der gesamte Satz Projektbeschriebe. Die Zahl der
eigenständigen P1-Quellen liegt entsprechend tiefer. Für die Destillation ist das ein Vorteil
und kein Mangel: was zweifach abgelegt ist, muss nur einmal destilliert werden.

**02.4 Die Abdeckung ist ein Ausschnitt.** Die beiden Korpora umfassen laut `CLAUDE.md` 32 und
23 Sektionen, zusammen 55. Inventarisiert sind 16. Alle Aussagen dieses Reports gelten für
diesen Ausschnitt, nicht für das Archiv als Ganzes.

## 03 Die zehn ertragreichsten Sektionen

Geordnet nach P1-Ertrag. Die Begründung nennt jeweils, warum die Sektion oben steht, nicht nur
was sie enthält.

**03.1 `03_Bauprozesse_I_II` (archiv, 58 P1 von 524).** Die mit Abstand ertragreichste Sektion,
und zwar aus drei Gründen zugleich. Sie enthält **Originalnormen im Volltext** (SIA 112:2001,
102:2003, 416:2003, 142:2009, 500:2009 samt Auslegungen 10/2013, VKF-Brandschutzvorschriften
2015, VSS SN 640 291a), also die Faktenbasis, auf die sich sonst nur verwiesen wird. Sie
enthält **dieselbe Kostenaussage über vier Phasenstände** desselben Objekts, was Abweichungen
messbar macht statt behauptbar. Und sie enthält mit
`Grobkostenberechnung_SIA116_SIA416.docx` einen **eigenen Fachtext von Raphael Jans**, also
Material, das kein Modell und keine fremde Quelle liefern kann. Dazu die Terminplanungs-Tabelle
mit Dauern je Gewerk über den Bruttorauminhalt und ein echtes SIA-451-Austauschfile als
Test-Fixture.

**03.2 `18_Projektkostenplanung` (buero, 16 P1 von 28).** Die dichteste Sektion des ganzen
Laufs: 57 Prozent P1-Anteil. Ihr Ertrag ist nicht die Zahl, sondern die **Geschlossenheit der
Kette** von der Kostenschätzung Vorprojekt (01.12.2003) über KV (08.06.2004), honorarberechtigte
Bausumme (20.04.2005), Vergabe-Controlling (03.06.2005) und Offerten-Abweichung bis zum
Finanzrapport (01.03.2006) und den Kennzahlen. Drei Bausteine fehlen dem Hub bisher belegt und
liegen hier: die **Genauigkeitsbänder je Projektphase** aus Ruosch/Brandenberger S. 148, die
**Anrechenbarkeitssätze je Kostengruppe** für die honorarberechtigte Summe und die
**Verknüpfung der SIA-102-Phasenanteile mit der Büroaufwandplanung** (Aufwandziel gleich
Honorar minus 20 Prozent).

**03.3 `10_Modellbauen` (buero, 12 P1 von 235).** Oben, weil hier eine **Methode und ihr
Fehlerkatalog zusammen** dokumentiert sind, was selten ist: sieben Betonierversuche A bis G, in
denen jede verworfene Variante ihr Fehlerbild nennt und genau eine ohne Befund übrig bleibt,
dazu zwölf Mischungsversuche mit ausdrücklicher Schlussformel je 1000 cm3. Der Fund reicht
über den Modellbau hinaus: das Merkblatt von Heinz Richner (D-BAUG ETH, 2011) trägt für
Sichtbeton 1:1 und liefert zitierfähige Sätze zu Schalungsdruck, Aluminiumverbot, Schwinden
bis 5 Promille und Nachbehandlung durch Abdecken statt Austrocknen.

**03.4 `02_Denkmalpflege` (archiv, 8 P1 von 156).** Der Ertrag ist konzentriert und alle acht
P1-Dateien sind gelesen. Wertvollster Einzelfund ist das **SIA-Merkblatt 2017 «Erhaltungswert
von Bauwerken»** mit vollständiger Kriterien- und Bewertungsmatrix, also ein fertiges Raster
für die Frage «erhalten oder ersetzen», das der Büroarbeit bisher fehlt. Daneben zwei
ausschreibungsreife Bausteine: die SVTSM-Trockenmauer-Richtlinie mit eigenem
Devisierungskapitel, die ausdrücklich festhält, dass keine Norm die Qualitäten definiert, und
die Kalk- und Pigmentrezepturen von Glaser mit belegten Ausführungsregeln.

**03.5 `17_Projektbeschriebe` (buero, 7 P1 von 18).** Der Ertrag ist doppelt: als **reale
Gattungsvorlage**, wie ein Projektbeschrieb je Disziplin aufgebaut, gegliedert und beziffert
wird, und als **belegte Zahlenquelle** (Fassade U 0,85 W/m2K Gesamtkonstruktion, g-Wert 36
Prozent, Minergie-Grenzwert 34,8 gegen erreichte 19 kWh/m2, Stahlbau 10'000 kN in S460N,
Grossbohrpfähle 120 cm auf 30 m, Leichtbeton LC 35/38). Ein Beschrieb-Set aus einem realen,
prämierten Bau schlägt jede erfundene Gliederung.

**03.6 `25_Wettbewerb` (buero, 5 P1 von 17).** Zwei vollständige Programmpakete zweier
Verfahrensarten, also ein Vergleichsfall statt eines Einzelbeispiels. Der wertvollste Fund ist
der **Genehmigungsvermerk der SIA-Kommission 142**, der die Konformität bestätigt und
gleichzeitig drei Punkte des Programms kritisiert. Er belegt, dass ein Programm normkonform sein
und trotzdem beanstandete Stellen enthalten kann, und benennt damit für JANS zugleich die
bekannten Fallen beim Verfassen eines eigenen Programms.

**03.7 `12_Masse` (buero, 2 P1 von 11).** Klein, aber der Fragetyp ist im Büro ständig
präsent. Die **MD/MI/MK-Tabelle der Seiten 54 und 55** ist tabellarisch geschlossen und in sich
konsistent: sie beantwortet «geht diese Nasszelle in diesen Grundriss» in drei Qualitätsstufen
und macht damit Verhandlungsspielraum sichtbar. Für Umbauten im Bestand ist die Minimum-Spalte
der eigentliche Hebel.

**03.8 `21_Rhino` (buero, 2 P1 von 180).** Der Ertrag ist schmal, aber präzise und deckt eine
konkrete Lücke: die **Planausgabe-Kette** (Make2D mit verdeckten Kanten auf eigenem Layer, Page
Layout mit Massstab über Distance on page zu Distance in model, gesperrte Details, Print Width
No Print) und die **Meshing-Toleranzfalle** beim Export von NURBS nach STL, 3DS oder DWG sind
genau die Stufen, die der Skill `volumenstudie` für abgabefähige Pläne braucht und die
Gegenrichtung zu `pdf2dwg`.

**03.9 `02_Bibliothek` (archiv, 2 P1 von 6'947).** Steht trotz des schlechtesten Verhältnisses
im Feld, weil die zwei Funde substanziell sind: ein **Grundrisskompendium Wohnhochhaus** auf
rund 40 Seiten mit Objekt, Architekt, Jahr und Massstab und der **Neufert** als 638-seitiger
Scan. Dazu als P2 das INSA-Topographische Inventar Zürich 1850 bis 1920 mit objektweiser
Baugeschichte, das für Zürcher Bestandsobjekte belegbar verwertbar ist, und eine erprobte
Bibliothekssystematik Kunst/Architektur, die als Vorlage für das Themenregister dieser KB
dienen kann.

**03.10 `01_Innenarchitektur` (archiv, 1 P1 von 396).** Der eine P1 ist ein Kostendatenpunkt
ohne Bezugsfläche und damit kein rechenbarer Kennwert. Die Sektion steht hier wegen ihrer drei
P2-Konvolute: der Auktionskatalog «Important Nordic Design» mit voller Textebene erlaubt es,
vorgefundenes Bestandsmobiliar zu identifizieren, zu datieren und im Wert einzuordnen, die 44
Lexikonseiten sind redigierte Fachartikel mit Literaturapparat, und das Bildarchiv der 136
Innenraumaufnahmen trägt Buch und Seitenzahl im Dateinamen, ist also korrekt beschriftbar.

## 04 Sektionen ohne Ertrag

Fünf Sektionen tragen zur Büroarbeit nichts bei. Das ist ein Ergebnis, kein Fehlschlag: es
spart der nächsten Phase die Arbeit.

**04.1 `14_Modellfotos` (1 Datei).** Faktisch leer. Eine TIFF-Innenraumperspektive ohne Text,
ohne Masse, ohne Kennwerte; nichts davon ist destillierbar. Der Ordner wurde 2010 angelegt und
seither nie befüllt.

**04.2 `16_Portfolios` (83 Dateien).** Keine Fachbibliothek, sondern eine Ablage eingegangener
Bewerbungsmappen 2007 bis 2010. Trägt zu Ausschreibung, Kosten, Normen und Brandschutz nichts
bei; der einzige Fachfund ist ein fehlabgelegter Zeitschriften-Ausschnitt. Zusätzlich
problematisch wegen der Personendaten Dritter.

**04.3 `31_Klimadaten` (2 Dateien).** Zwei Einzelgrafiken, kein Textdokument, jüngste Datei von
2011. **Die Lücke ist der Befund:** SIA-2028-Daten, MeteoSchweiz-Normwerte 1991 bis 2020,
Auslegungstemperaturen und Heizgradtage fehlen vollständig. Die Sektion darf in keinem Skill
als Quelle referenziert werden.

**04.4 `11_Landschaftsarchitektur` (1 Datei).** Ein einziges Fremd-Projektblatt. Der
Belagsbeschrieb ist fachlich echt, aber ohne Aufbaustärken, Unterhalt und Kosten; eine
Kostenaussage lässt sich daraus nicht ableiten. Rechtfertigt keinen eigenen Destillat-Lauf.

**04.5 `19_Puplikationen` (4 Dateien).** Für Ausschreibung, Kostenplanung und Baurecht ohne
Beitrag. Der Wert liegt allein im Entwurfs- und Referenzlayer und gehört dorthin, in die
bestehenden KBs `entwurfs-referenzen` und `architekten-synobsis`, nicht hierher.

**Abgrenzung:** `15_Oberflaechenbehandlung` hat null P1 und gehört trotzdem **nicht** in diese
Liste. Die einzige Datei der Sektion ist fachlich dicht und LV-tauglich; sie wurde nur deshalb
als P2 eingestuft, weil der Kostenrahmen Preisstand 2007 hat, die Unternehmerempfehlung 19 Jahre
alt ist und der angekündigte Preisanhang im PDF leer bleibt.

## 05 Empfehlung: welche P1-Bestände als nächstes destilliert werden

Die Reihenfolge folgt drei Kriterien: **wie oft die Frage im Büro auftritt**, **ob das Material
zeitlos oder preisstandgebunden ist**, und **wie gross der Aufwand bis zum fertigen Artikel
ist**. Zeitloses Material mit hoher Fragefrequenz und kleinem Aufwand steht oben.

**05.1 Genauigkeitsbänder je Projektphase (aus `18_Projektkostenplanung`).** Erste Wahl, weil
es eine benannte Lücke schliesst: JANS nennt in Grobkostenaussagen bisher Bandbreiten ohne
zitierfähige Quelle. Die Tabelle ordnet jeder Phase Verfahren und erreichbare Genauigkeit zu
(Vorstudien plus/minus 10 bis 15 Prozent, Vorprojekt 5 bis 10, KV 5, Ausführung 0). Dazu
gehört die belegte Praxis aus demselben Bestand, dass auf die Kostenschätzung **zwei getrennte
Zuschläge** aufgeschlagen wurden, 5 Prozent Unvorhergesehenes und 5 Prozent Ungenauigkeit der
Berechnungsgrundlagen, und nicht ein pauschaler Reservezuschlag. Zeitlos, klein, sofort in
`kostenschaetzung` und `grobkosten-onepager` wirksam. **Auflage:** die bibliografische
Fundstelle des Werks ist unvollständig und vor jeder Zitierung nach aussen zu klären
(QUESTIONS 260823 #3).

**05.2 Anrechenbarkeitssätze der honorarberechtigten Bausumme (aus `18` und `03`).** Zweite
Wahl, weil die Quelle **doppelt und übereinstimmend belegt** ist: beide Sektionen führen
dieselbe Herleitung mit identischen Sätzen (Gebäudetechnik 70 Prozent, Umgebung und Ausstattung
50 Prozent, Baunebenkosten und Reserve 0 Prozent, Gebäude 100 Prozent). Das durchgängige
Prinzip ist der eigentliche Ertrag: wo ein Fachplaner die Leistung selbst erbringt, sinkt der
Anteil des Architekten. Geht direkt in `honorarberechnung-sia102`. **Auflage:** als belegte
Anwendung eines städtischen Bauherrn kennzeichnen, nicht als Regel.

**05.3 Grobkosten-Methodik aus dem eigenen Fachtext (aus `03_Bauprozesse_I_II`).** Dritte Wahl
und der eigenständigste Beitrag beider Korpora, weil es **eigenes Bürowissen** ist:
Kennwertbandbreite 500 bis 1'500 CHF je m3, die Faustregel BKP 2 gleich rund 80 Prozent der
Anlagekosten, und die am Objektpaar Bertoni/Hirschi belegte Erkenntnis, dass Kompaktheit den
Flächenpreis stärker bestimmt als die Bauweise. Dazu der Nebenbefund mit dauerhaftem Wert:
dasselbe Gebäude ergibt 47'156 m3 nach SIA 416 und 54'930 m3 nach SIA 116, Verhältnis 1,165.
Wer alte Kennwerte in CHF je m3 SIA 116 auf ein SIA-416-Volumen anwendet, rechnet ohne diese
Korrektur systematisch zu tief. Ziel-KB ist `wissen/grobkosten`, nicht diese KB. **Auflage:**
Methodik und Verhältniszahl destillieren, die Kennwerte selbst (Preisstände 1985 bis 2004)
nur mit Indexierungsvorbehalt.

**05.4 Erhaltungswert-Bewertung nach SIA-Merkblatt 2017 (aus `02_Denkmalpflege`).** Vierte Wahl,
weil sie ein **fehlendes Werkzeug** liefert und nicht nur ein Wissen: ein Kriterienraster mit
sechs immateriellen und sechs materiellen Kriterien und einer Bewertungsmatrix über die Achsen
Zustand und Entwicklungspotential, gebaut für den Variantenvergleich. Direkt anschlussfähig an
`ankaufspruefung`, `nutzungsstrategie`, `immobilienbewertung` und `machbarkeit`. **Auflage:**
Ausgabe 2000, urheberrechtlich geschützt. Vor produktiver Verwendung ist über den Skill
`normen` zu klären, ob eine neuere Ausgabe existiert oder das Merkblatt zurückgezogen wurde;
die Kriterienliste nur sinngemäss und mit Fundstelle.

**05.5 Nasszellen-Masse in drei Komfortstufen (aus `12_Masse`).** Fünfte Wahl wegen der
Fragefrequenz. Geschlossene Tabelle, kleiner Destillat-Aufwand, täglich brauchbar in
Machbarkeits- und Umbaustudien. **Auflagen, beide hart:** die bibliografische Angabe des
Lehrmittels ist im Scan nicht sichtbar und vor Zitierung nach aussen zu klären, und Seite 56
(hindernisfreie WC- und Duschmasse) darf wegen SIA 500 nicht als Fundstelle dienen, sondern nur
als Plausibilitätscheck.

**05.6 Kennzahlenraster und Kostenkennwerte Schulbau Zürich (aus `18` und `03`).** Sechste
Wahl. Der Ertrag ist zweigeteilt: das **Raster** (GF, HNF, GV nach SIA 416, RI nach SIA 116, je
gegen BKP 2 und BKP 1 bis 9) ist zeitlos und strenger als das heute in `wissen/grobkosten`
verwendete; die **Zahlen** sind Preisstand 2003/04. Mitzunehmen ist der belegte Vergleich von
fünf Zürcher Schulanlagen, der beim Flächenkennwert rund 23 Prozent Bandbreite zeigt und beim
Volumenkennwert nur rund 14, was die Methodik des Skills `grobkosten-onepager` stützt, in der
Frühphase über das Volumen zu rechnen. **Auflage:** ohne Indexpfad kein Kennwert; ob das
Raster das heutige ersetzt, ist ein Entscheid Raphaels (QUESTIONS 260823 #6).

**05.7 Wettbewerbsprogramm-Gerüst und Vorprüfungslogik (aus `25_Wettbewerb`).** Siebte Wahl.
Zu destillieren sind drei Dinge: die Trennung **formelle gegen materielle Vorprüfung**
(Formfehler töten den Beitrag, materielle Mängel kosten den Preis), die Spaltenlogik des
Raumprogramms im SIA-416-Raster mit acht Anforderungsspalten, und die drei Kritikpunkte der
SIA-Kommission 142. Speist `wettbewerb`, `programm-leser` und `flaechen-nachweis`. **Auflage:**
sämtliche Normverweise sind Stand 2009 und nie als geltendes Recht zitierbar; die Honorar- und
Tarifzahlen sind tot, die Mechanik nicht.

**05.8 Sichtbeton: Modellrezeptur, Nachbehandlung, Oberflächenbehandlung (aus `10` und `15`).**
Achte Wahl, und zwar als **ein** Artikel aus zwei Sektionen, weil die beiden Bestände dieselbe
Sache von zwei Seiten fassen: Richners Klarstellung, dass Beton nicht durch Verdunstung
erhärtet, sondern hydratisiert und beim Austrocknen «verbrennt», und die Aktennotiz von 2007,
die Nachfixierung mit Kaliwasserglas von der oliophoben **und** hydrophoben Imprägnierung
spritzwasserexponierter Flächen trennt. Beides ist Bauleitungs- und LV-Substanz.
**Auflagen:** Richner nur sinngemäss mit Quellenangabe; der Kostenrahmen von 2007 ist neu zu
erheben, verwertbar ist die Struktur des Kostenarguments (Flächenpreis, Ausmassabhängigkeit
plus/minus 30 Prozent, Einrichtung und Abdeckung separat); der BKP-Code ist gegen
`references/bkp-2017/` zu bestimmen und nicht zu raten.

**05.9 Rhino-Planausgabe und Exportregeln (aus `21_Rhino`).** Neunte Wahl. Klein, klar
abgegrenzt, mit direktem Empfänger: Skill `volumenstudie`. **Auflage:** die McNeel-Handbücher
erlauben Weiterverbreitung nur mit Zustimmung, also sinngemäss destillieren mit Fundstelle,
keine wörtliche Uebernahme.

**05.10 Denkmalpflege-Begriffssystematik und Ausführungswissen (aus `02_Denkmalpflege`).**
Zehnte Wahl, zwei Artikel: die Kette Instandhaltung bis Rekonstruktion mit den zugehörigen
Artikeln der Charta von Venedig, also **die Sprache, in der Denkmalpflegebehörden
argumentieren**, sowie Trockenmauer und Kalk als Ausführungswissen (Carbonatisation 30 Tage,
bei Mörtel 240 Tage, nie in praller Sonne). **Auflage:** die Begriffssystematik stammt aus
einer studentischen Zusammenfassung, nicht aus der Primärquelle; die Charta-Artikel sind vor
einem ausgehenden Dokument am amtlichen Wortlaut zu verifizieren.

### Was ausdrücklich nicht destilliert wird

Die Theorie-Scans der Denkmalpflege (P3), die 136 McNeel-Uebungsmodelle, die 287
Seminarreise-Reader in ihrer Breite, die Bewerbungsportfolios und die Bildarchive. Bei den
Readern und dem Innenarchitektur-Bildarchiv ist zudem der Adressat ein anderer: sie gehören in
die bestehenden KBs `entwurfs-referenzen` und `architekten-synobsis`, nicht hierher. Der Neufert
und die Banham-Enzyklopädie kämen erst nach einer OCR-Stufe und einer Rechteklärung in
Betracht; beides ist noch nicht entschieden.

### Zwei Beschaffungen, die den Ertrag der nächsten Phase heben würden

**CRB 1026 «Verbindungen vom eBKP-H zum NPK», Ausgabe D/15.** Im Bestand liegt nur der
neunseitige Vorspann, die Mappingtabellen fehlen. Genau diese Tabellen wären die Brücke
zwischen `kostenschaetzung` und `ausschreibung`.

**Ein belegter Indexpfad auf heute.** Kein einziger Kostenkennwert beider Korpora ist ohne
Indexierung verwendbar, und keine Sektion enthält einen Indexpfad. Ohne ihn bleibt jeder
destillierte Kennwert ein historischer Datenpunkt.

## 06 Was dieser Lauf nicht geleistet hat

Es wurde kein Wiki-Artikel geschrieben, keine Datei auf dem NAS bewegt, kein BKP-Code bestimmt
und keine Norm-Ausgabe auf Gültigkeit geprüft. 39 der 55 Sektionen beider Korpora sind nicht
inventarisiert. Die offenen Punkte stehen in `wiki/QUESTIONS.md`, Block 260823.
