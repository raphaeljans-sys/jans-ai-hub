---
title: "Inventar Sektion 01_Tragwerk (Korpus archiv-fachwissen)"
korpus: archiv-fachwissen
sektion: /Volumes/daten/02_Architektur_Archiv/01_Tragwerk
last_updated: 2026-08-23
status: established
dateien_gesichtet: 1098
---

# Inventar 01_Tragwerk

## Kurzbefund

Die Sektion `/Volumes/daten/02_Architektur_Archiv/01_Tragwerk` enthält **1098 Dateien**
(ohne `.DS_Store`). Sie liegen **vollständig** im Unterordner `04_Bauingenieure`. Die
übrigen vier Themenordner der Sektion sind **leere Hüllen**: `01_Tragwerkselemente`
(Unterordner «3b Biegebalken» und «6 Freiformen», beide ohne Datei),
`02_Tragwerkmaterialien/Stahl` (leer), `03_KMF_Wissenschaft` (nur ein leeres
GarageBand-Paket «130218_Kraft_Material_Form_Einfuerungsvorlesung.band», 80 kB, ohne
Aufnahme) und `06_Literatur/ZURICH.BAHNHOEFFE/stadelhofen.neu` (leer). Auch in
`04_Bauingenieure` sind **21 der 24 Ingenieur-Ordner leer** (Ballmond, Block, Conzett,
Dischinger, Eifel, Finsterwalder, Freyssinet, Hennebique, Hossdorf, Isler, Jenny, Khan,
Menn, Mueter, Musmeci, Nervi, Polony, Price, Rice, Roth, Williams sowie das
Ordnungs-Muster `00_ORT_FUNKTION_NAME_DATUM`). Die Sektion ist damit im Kern ein
**angelegtes, aber nie befülltes Ordnungsgerüst** mit drei tatsächlich belegten Beständen.

Belegt sind:

1. **Schwartz_Joseph / 02_Lehre / 110225_Prof_Schwartz** — 951 Dateien. Der Arbeitsbestand
   aus einer Assistenzzeit an der Professur für Tragwerksentwurf (D-ARCH ETH Zürich,
   Prof. Dr. Joseph Schwartz), Jahrgang **2008 bis 2011**. Vorlesungen, Seminarwochen,
   Reader, Quelltexte, Studienarbeiten zur Tragwerksgeschichte.
2. **«Grubmann Gebrüder» / 02_Kirche_Waedenswil** — 145 Dateien. Diese sind eine
   **bitidentische Dublette** des Ordners
   `Schwartz_Joseph/…/02_Tragwerk_Geschichte/03_Kirche_Waedenswil` (MD5-Stichproben auf
   PDF und PLN geprüft, identisch). Nur eine der beiden Kopien wird gewertet.
3. **Maillard_Robert / Rhein-Brücke bei Tavanasa** — 2 JPG, sonst nichts.

Formate: 396 JPG, 378 PDF, 100 PNG, 90 TIF, 50 TIFF, 11 PLN (ArchiCAD 2011), 8 INDD,
dazu einzelne DOC/DOCX/XLS/PPT/PPTX/DXF/EPS/ZIP. Der Bestand ist stark bildlastig; der
verwertbare Kern sind rund drei Dutzend Textdokumente.

**Zwei Arbeitshinweise zur Sektion:** Erstens liefert `find` über den SMB-Mount
unzuverlässige Ergebnisse — ein erster Durchlauf brach still bei 183 Dateien ab, der
zweite lieferte 1098. Jede Zählung auf diesem Volume gegenprüfen. Zweitens riss der
NAS-Mount während der Sichtung dreimal ab und musste über
`scripts/ensure-nas-mounted.sh` neu gesetzt werden.

## Triage

Gewertet werden 1098 Dateien: **P1 4 · P2 31 · P3 181 · X 882**. Der hohe X-Anteil geht
fast vollständig auf die 145er-Dublette, auf Bildserien ohne Text (Modell- und
Situationsfotos, Bildreihen der Vorlesung), auf InDesign-Verpackungsordner mit
mitkopierten Schriften und Links sowie auf Zwischenstände desselben Readers zurück.

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `…/02_Tragwerk_Geschichte/03_Kirche_Waedenswil/01_Grundlagen/Dissertation/eth-20590-02.pdf` | **P1** | Vollständige ETH-Dissertation Joseph Killer, «Die Werke der Baumeister Grubenmann. Eine baugeschichtliche und bautechnische Forschungsarbeit», Zürich 1942, 191 Seiten, mit Textlayer. Detaillierte Beschreibung und Bemassung historischer Holzdachstühle und Holzbrücken der Ostschweiz und des Kantons Zürich, inklusive Knotenpunkt-Details (Binderfuss, Hängesäule, Streckbalken-Auflager). Direkt verwertbar bei Bestandsaufnahme, Umbau und Denkmalpflege an Holztragwerken. Öffentlich zugänglich über die ETH-E-Collection. |
| `…/03_Kirche_Waedenswil/01_Grundlagen/Tec21/Grubenmann_Kirchen_Tragwerk.pdf` | **P1** | Fachartikel Reto Gadola, «Tragwerk und Raumform in Grubenmanns Kirchen», TEC21 42-43/2009, mit Textlayer und vollständigem Anmerkungsapparat. Verdichtete, zitierfähige Darstellung von drei Dachstuhl-Dispositiven und der Wechselwirkung Tragwerk/Raumform. |
| `…/00_Administration/02_Daten/Antrittsvorlesung/Schwartz_Einfuehrungsvortrag_20081030_DrT.pdf` | **P1** | Einführungsvorlesung «Der Ingenieur im Entwurfsprozess», ETH Zürich, 30.10.2008, durchgehender Fliesstext. Belegte Herleitung, warum Elastizitätstheorie das konzeptionelle Denken verdrängt hat und Plastizitätstheorie/Spannungsfelder das Tragwerk entwurfsfähig machen. Argumentationsgrundlage für Erläuterungsberichte und Ingenieur-Koordination. |
| `…/10_Projekte/110928_Reader_Seminarwoche/Texte/eleganz.pdf` | **P1** | Josef Schwartz und Toni Kotnik, «Transparenz, Stringenz und Leichtigkeit. Eleganz im Brückenbau», werk, bauen + wohnen 5/2010, S. 20 ff., mit Textlayer. Liefert eine belegte Argumentationsfigur gegen die rein numerische Begründung von Gestalt. |
| Killer-Dissertation, Einzelseiten S. 138 bis 144 (7 PDF) | P2 | Herausgelöste Seiten zur Kirche Wädenswil: Querbinder, Zwischenbinder, Längsbinder, Binderfuss-Detail, Schnittpunkt Längs-/Querbinder, Hängesäule. Auszug aus der P1-Quelle, als Schnellzugriff nützlich. |
| `…/Dissertation/eth-20590-01_abstract.pdf`, `…/Tec21/Einzelseite/Empore_aus_Grubenmann_Kirchen_Tragwerk.pdf` | P2 | Titelblatt/Abstract der Dissertation und die herausgelöste Emporen-Seite des TEC21-Artikels. |
| `…/00_Administration/02_Daten/holzbau.pdf` + `holzbau.xls` | P2 | Sieben Seiten Literaturregister Holzbau, rund 200 Titel von Gladbach 1876 bis in die 2000er-Jahre, je mit Autor, Titel, Jahr, Verlag und laufender Nummer. Fertiges Rechercheraster für Fragen zu historischen Holzkonstruktionen; die XLS ist die Datenfassung. |
| `…/03_Vorlesungen/110316_Experimenteller_Tragwerksentwurf/110327_Experimenteller_Tragwerksentwurf.pdf` + `.docx` | P2 | Eigenes Skript zum experimentellen Tragwerksentwurf nach Frei Otto: Selbstbildungsprozesse, Methodik in vier Schritten (Material wählen, Eigenschaften kennen, Konstruktion vorschlagen, Form finden), Experimentkatalog nach IL 25 und das durchgerechnete Fallbeispiel Hauptbahnhof Stuttgart (Seifenhaut-Minimalfläche, Hängemodell, Umkehrung Zug zu Druck, Rechenmodell «Tensyl»). |
| `…/00_Administration/02_Daten/Counterpoise.doc` | P2 | Projektbeschrieb eines Tisches, dessen Tragwerk aus vorgespannten, sich verjüngenden Stahlprofilen und vier Seilen besteht. Vorbildlicher Erläuterungstext: Konzept, Materialwahl, Kraftfluss und Wirkung in einem Zug argumentiert. Als Textmuster für JANS-Erläuterungsberichte brauchbar. |
| `…/03_Vorlesungen/110513_Abschlussvorlesung/TWE IV_Vorlesung_20110513_Abschluss.pptx` | P2 | 135 Folien, davon 25 mit Bildunterschrift. Werkschau von rund 20 Bauten und Wettbewerben 1992 bis 2011, jeweils mit Nennung von Architekt und Ingenieur (Instandsetzungen, Brücken, Schulhäuser, Museen, Kongresszentrum, Wettbewerbe). Referenzregister für tragwerksgeprägte Schweizer Bauten. |
| `…/110928_Reader_Seminarwoche/PDF/111002_Reader_alle_Seiten.pdf` | P2 | Reader «Bridging the Gap», Seminarwoche HS 2011, 109 Seiten: Einführung, Zeitplan, Aufgabenstellung, Situationsplan, Modell-Belastungstest, dazu 13 zitierte Quelltexte (Lévi-Strauss, Sennett, Pallasmaa, Gerstner, Gershenfeld, Vrachliotis in werk 5/2011, Weisshaar in anthos 1/11, Antonelli in Domus 948/2011 u. a.). **Sperrvermerk: Seite 4 ist eine Teilnehmerliste mit Namen, Mailadressen und Telefonnummern — diese Seite nicht destillieren.** |
| `…/Weiteres Material/Bridging the Gap.pdf`, `Aufgabe2.docx`, `Final_Lageplan_100.pdf`, `Final_Schnitt_100.pdf` | P2 | Ausschreibungsblatt und Aufgabenstellung derselben Seminarwoche, dazu Lageplan und Schnitt 1:100. Die Aufgabenstellung formuliert Naturschutzauflagen als harte Randbedingungen (Uferbereiche nicht betreten, Abstützung über Wasserspiegel, Teichgrund unberührt) — ein sauberes Muster für Randbedingungen in einer Aufgabenstellung. |
| `…/Weiteres Material/Skalierung_Modelle/` (4 JPG, u. a. `Galileo_Discorsi_1636.jpg`) | P2 | Bildmaterial zum Ähnlichkeitsgesetz im Modellversuch, mit Rückgriff auf Galileis «Discorsi» 1636. Gehört zum Reader-Blatt «Belastungstest Modelle» mit der Annahme «Struktur und Modell im gleichen Material» und dem Ziel «gleiche Spannung in den Bauteilen von Struktur und Modell». |
| `…/02_Tragwerk_Geschichte/02_Bruecke/Grundlageplaene/Seiten aus Mechel_Drey merkwuerdigsten Bruecken in der Schweiz_1803.pdf` | P2 | Auszug aus der Quellenschrift von 1803 zu den drei bemerkenswertesten Schweizer Brücken. Primärquelle zum historischen Holzbrückenbau. |
| `…/02_Bruecke/PDF/110915_*_linienkraefte.pdf`, `*_druck_zugkraefte_liniien.pdf`, `*_druck_zugkraefte_schraffur.pdf` | P2 | Drei Darstellungsvarianten desselben Brückenlängsschnitts mit eingetragenem Kraftverlauf (Linienkräfte, Druck- und Zugkräfte als Linie bzw. als Schraffur). Direkt übertragbare Darstellungsmuster, um einen Kraftfluss in einem Erläuterungsplan lesbar zu machen. |
| `…/00_Scans/08_Archplus_Mit_oder_gegen_Holz`, `10_Archithese_Taeler_mit_Holz_ueberspannen`, `11_Christian_Menn_Reden_und_Aufsaetze` (4 PDF) | P2 | Zeitschriften- und Buchscans zu Holzbau und Brückenbau, 4 bis 5 Seiten je Titel. **Ohne Textlayer** (reine Bildscans) — vor einer Destillation ist OCR nötig. |
| Grubenmann Kirche Wädenswil, Planserien `02_Plaene/PDF/` (119 PDF in acht datierten Bearbeitungsständen 110907 bis 110929) | P3 | Studienarbeit zur Rekonstruktion des Dachstuhls und der Emporen: Übersicht, Primärtragwerk, Quer-, Längs- und Zwischenbinder, Sattelholz, Verzapfung, Emporen-Querschnitt und -Axonometrie, dazu eine Brückenserie. Alle geprüften Blätter sind **ohne Textlayer** (reine Vektorgrafik aus ArchiCAD). Archivwert als Konstruktionsreferenz historischer Zimmermannsverbindungen. |
| `…/03_Kirche_Waedenswil/02_Plaene/PLN/` (4) und `…/02_Bruecke/PLN/` (2) | P3 | ArchiCAD-Dateien von 2011 (je 25 bis 27 MB), 3D-Rekonstruktion des Dachstuhls und der Rheinbrücke. Öffnen setzt eine Migration aus der 2011er-Version voraus. |
| `…/03_Kirche_Waedenswil/03_Skizzen/Scans/110919_Sattelholz.tiff`, `110919_Verzapfung.tiff` | P3 | Handskizzen der beiden massgebenden Holzverbindungen, gescannt. |
| `…/00_Administration/02_Daten/Starke_Strukturen.pdf` | P3 | 8 Seiten, reiner Bildscan ohne Textlayer, Inhalt nur aus dem Dateinamen erschliessbar. Ohne OCR nicht auswertbar. |
| `…/110606_Studienwoche/110420_Programm_Studienwoche_TE.pdf`, `110602_Vorlesung_Phaenomen_Eingang.pdf`, Plakate und Präsentation | P3 | Didaktisches Material einer Studienwoche für Gymnasiastinnen und Gymnasiasten zum «Phänomen Eingang» (Schwelle, Türöffnung, Stufe, Passage, Vordach). Für JANS nur mittelbar von Wert. |
| `…/00_Scans/01` bis `07`, `12`, `13`, `20` (Lévi-Strauss, Sennett, Pallasmaa, Gerstner, Gershenfeld, Werk, anthos, Landschaftsgärtnerei, Domus) | P3 | Entwurfstheoretische Quelltexte des Readers, überwiegend Bildscans ohne Textlayer. Archivwert. |
| `…/03_Vorlesungen/110513_Abschlussvorlesung/Evaluationsfragen_FS2011.pdf`, `2011-05-13_2Jk.ppt` | P3 | Evaluationsbogen der Lehrveranstaltung und ein 82-MB-Bilddeck ohne Textinhalt. |
| `Maillard_Robert/Rhein-Bruecke bei Tavanasa/` (2 JPG) | P3 | Zwei Fotos, kein Begleittext. Der einzige Inhalt des gesamten Maillart-Ordners. |
| `«Grubmann Gebrüder»/02_Kirche_Waedenswil/` (145 Dateien) | **X** | Bitidentische Dublette von `Schwartz_Joseph/…/02_Tragwerk_Geschichte/03_Kirche_Waedenswil` (MD5 auf PDF und PLN geprüft). Nur eine Kopie destillieren. |
| Bildserien: `110525_Studienwoche` (355), `110316ExperimentellerTragwerksentwurf` (122 TIF/PNG), `Bilder` der Abschlussvorlesung (83 PNG), `Modellfotos` (40), `Situationsfotos` (35), `Renderings` (6), `panoramas` (5) | **X** | Reines Bildmaterial ohne Textlayer und ohne Bildlegenden. Kein destillierbarer Inhalt. |
| `Verpackt_Indesign/` (36), alle `.indd` (8), `.zip` (3), Schriftordner, `Instructions.txt`, Logos | **X** | Layout-Quelldateien und InDesign-Verpackungen mit mitkopierten Schriften und verlinkten Bildern. Enthalten nur Dubletten bereits gewerteter PDF. |
| Reader-Zwischenstände `PDF/110928_…_Test.pdf`, `alle.pdf`, `51_109.pdf`, `70-71.pdf`, `71.pdf`, `S44.pdf`, `111002_1530/*`, Ordner `ungueltig`, `test`, `Sammelmappen`, `00_ungueltig` | **X** | Zwischen- und Teilstände derselben Erzeugnisse; die Endfassung ist als P2 bzw. P3 gewertet. |
| `10_Projekte/110726_Isler_Modelle_Burgdorf/110726_Zugverbindung.pdf` | **X** | Trotz des Dateinamens keine Holzverbindung, sondern ein ausgedruckter SBB-Online-Fahrplan vom 26.07.2011. |
| `Texte/DesignThinkering.txt` | **X** | Enthält eine einzige URL, keinen Inhalt. |
| `00_Administration/01_Arbeitszeit/` (8), `00_Administration/03_passfoto…` (1), `01_Schriftverkehr/` (6), Einsatz- und Teilnehmerlisten (5) | **X** | Personenbezogenes Material, siehe Abschnitt Datenschutz. Nicht gelesen, nicht inventarisiert. |

## Was hier für JANS drinsteckt

**1. Eine belastbare Primärquelle zu historischen Holzdachstühlen.** Die vollständige
ETH-Dissertation von 1942 (191 Seiten, mit Textlayer, öffentlich zugänglich) beschreibt
Dachstuhl- und Brückenkonstruktionen der Gebrüder Grubenmann bis auf die Knotenpunkte
hinunter: Binderfuss, Verbindung Hängesäule zu Untergurt zu Längsbinder, Auflager des
Streckbalkens. Der Text nennt zum Beispiel als Massnahme gegen die grosse zu übertragende
Kraft am Streckbalken-Auflager, das Schwellenholz tiefer zu setzen und den Streckbalken
über zwei Streben darauf abzustützen. Wer im Bestand auf einen liegenden Dachstuhl oder
ein Sprengwerk des 18. Jahrhunderts trifft, hat hier eine zitierfähige Grundlage statt
einer Vermutung.

**2. Drei benannte Dachstuhl-Dispositive, mit Bauten und Jahreszahlen belegt.** Der
TEC21-Artikel ordnet die Grubenmann-Kirchen in drei konstruktive Familien: liegende
Dachstühle mit Strebebindern und Hängesäulen, an denen die Decke aufgehängt ist (Gossau SG
1732, St. Gallenkappel 1751, Eschenbach 1753, Hombrechtikon 1758, Mollis 1761, Trogen
1780); längs laufende Firstträger nach Brückenprinzip (Grub AR 1752, Brunnadern SG 1763);
und diagonal verschränkte Binder in Querrichtung, die die beiden Dachflächen im First
biegesteif verbinden und so den Dachschub aufnehmen (Neukirch TG 1727, Häggenschwil SG
1728, Eggersriet SG 1738, Steinach SG 1742, Stein AR 1749, Sulgen TG 1751, Oberrieden ZH
1761, Ebnat SG 1762). Für die Kirche Wädenswil (1764 bis 1767) nennt der Artikel die
Kennzahlen: stützenfreier Raum von 18 m Breite und 35 m Länge, 12 m hohe Wände, zwei sich
kreuzende Hauptbinder von 6.50 m Höhe als Stabpolygon. Das ist eine Typologie, die eine
Bestandsaufnahme in wenigen Minuten einordnen lässt.

**3. Eine ausformulierte Begründung, warum das Tragwerk in den Entwurf gehört.** Die
Antrittsvorlesung von 2008 führt in einem Zug von Vitruv über Galilei, die
Elastizitätstheorie des 19. Jahrhunderts und die Zürcher Schule der Plastizitätstheorie
(Thürlimann, dann Muttoni, Schwartz, Thürlimann, «Bemessung von Betontragwerken mit
Spannungsfeldern», 1997) zur These, dass die analytische Statik vielen Ingenieuren einen
Schutzwall bietet, hinter dem konzeptionelles Denken unterbleibt. Der Text enthält die
zitierbaren Belege dafür, unter anderem Menn 1996 zu Stararchitekten und Technokraten
sowie Polónyi zur Elastizitätstheorie, die exakt nur auf Porzellan zutreffe. Für ein
Wettbewerbs- oder Erläuterungsdossier ist das eine fertige, belegte Argumentationslinie
zur Zusammenarbeit mit dem Bauingenieur.

**4. Der Gegenbeleg zur Zahl als Gestaltungsargument.** Der Aufsatz zur Eleganz im
Brückenbau zeigt an zwei Bogenbrücken von Christian Menn (Letziwaldbrücke Avers Cresta,
Crestawaldbrücke Sufers), dass identische statische Prinzipien zu deutlich verschiedener
Formensprache führen. Die Kernaussage — die Mathematik der Naturgesetze beschreibe nur ein
Geflecht kausaler Beziehungen und beantworte das Wie der Gestaltung nicht — ist genau das
Argument, das eine Bauherrschaft braucht, wenn Spannweite und Schlankheitsgrad als
Qualitätsnachweis vorgetragen werden.

**5. Ein Methodenblatt zur Formfindung, das ohne Rechenprogramm auskommt.** Das Skript zum
experimentellen Tragwerksentwurf gliedert das Vorgehen in Material wählen, physikalische
Eigenschaften kennen, Konstruktion vorschlagen, Form finden — und belegt es am
Hauptbahnhof Stuttgart: Seifenhautversuche zeigten, dass eine Punktlast ohne
Spannungsspitze in eine Membran eingeleitet werden kann, es bildet sich ein Auge; aus dem
zunächst geplanten vorgespannten Seilnetz wurde nach Analyse eine druckbeanspruchte
Betonschale, deren Form über belastete und umgedrehte Hängemodelle ermittelt und erst
danach im Rechner nachgebildet wurde. Ergänzend liefert das Reader-Blatt zum
Modell-Belastungstest die Ähnlichkeitsbedingung: Struktur und Modell im gleichen Material,
Ziel gleiche Spannung in den Bauteilen. Das ist für frühe Volumen- und Machbarkeitsphasen
brauchbar, in denen noch kein Ingenieur am Tisch sitzt.

**6. Drei Darstellungsmuster für den Kraftfluss im Plan.** Die Brückenserie zeigt denselben
Längsschnitt dreimal: als Linienkräfte, als Druck- und Zugkräfte in Linien, als Druck- und
Zugkräfte in Schraffur. Wer in einem Erläuterungsplan zeigen will, wo Druck und wo Zug
läuft, findet hier drei erprobte Varianten nebeneinander.

**7. Ein fertiges Recherche-Register Holzbau.** Rund 200 Titel von 1876 bis in die
2000er-Jahre, sortiert nach Jahr, je mit Autor, Titel und Verlag, darunter EMPA-Berichte
zu Festigkeit und Verformbarkeit von Schweizer Fichte und Tanne, Normeinführungen zur SIA
164 (1981), Bemessungstabellen für hölzerne Dachkonstruktionen und mehrere Auflagen des
Holzbau-Taschenbuchs. Für Bestandsfragen an Holztragwerken ersetzt das den Einstieg über
eine Suchmaschine.

**8. Ein Referenzregister tragwerksgeprägter Schweizer Bauten.** Die Werkschau der
Abschlussvorlesung nennt zu jedem Projekt Architekt und Ingenieur und deckt 1992 bis 2011
ab, von Brückeninstandsetzungen über Schulhäuser und Museen bis zu Wettbewerben. Als
Fundus für Referenzbeispiele in Wettbewerbsdossiers brauchbar.

**9. Ein Muster, wie Randbedingungen in einer Aufgabenstellung formuliert werden.** Die
Seminarwochen-Aufgabe trennt sauber zwischen Entwurfsauftrag, verfügbarem Material
(30 mm Sperrholzplatten und Seile), Fertigungstechnik der Werkstatt, geforderter
Nachweisführung (Modellversuch 1:10) und nicht verhandelbaren Auflagen (Naturschutz am
Ufer, keine Abstützung im Teichgrund). Diese Gliederung ist eins zu eins auf eine
JANS-Aufgabenstellung oder ein Wettbewerbsprogramm übertragbar.

**Was hier nicht drinsteckt:** keine Kosten- oder Kennwertdaten, keine Ausschreibungs- oder
Devis-Unterlagen, keine baurechtlichen Grundlagen, keine Normtexte (SIA, VKF) und keine
JANS-Projektdaten. Die Sektion ist ein akademischer Lehr- und Forschungsbestand von 2008
bis 2011, kein Bürobestand.

**Empfehlung für die Destillation:** Nur die vier P1-Dokumente und die 31 P2-Dateien in die
Wissensbasis ziehen; sinnvolle Zielartikel sind «Historische Holzdachstühle Ostschweiz und
Zürich», «Formfindung und Modellstatik im frühen Entwurf», «Kraftfluss darstellen» sowie
ein Literaturregister Holzbau. Die 145er-Dublette vorher ausschliessen und die vier
Bildscans ohne Textlayer (ArchPlus, Archithese, Menn, Starke Strukturen) vor der
Destillation durch eine OCR schicken.

## Datenschutz-Befund

Beim Sichten sind **personenbezogene Unterlagen** aufgefallen, die nach der
Datenschutz-Schranke weder gelesen noch inventarisiert wurden:

- ein Ordner mit Arbeitszeit-Unterlagen und Stundenzetteln (8 Dateien),
- ein Ordner mit persönlichem Schriftverkehr zu zwei namentlich benannten Personen
  (6 Dateien),
- Einsatz- und Teilnehmerlisten zu Lehrveranstaltungen, teils mit Mailadressen und
  Telefonnummern (5 Dateien, davon zwei als CSV und XLSX),
- eine Porträtaufnahme.

Diese Dateien sind in der Triage als X geführt. **Zusätzlich gilt ein Sperrvermerk für
Seite 4 des Readers `111002_Reader_alle_Seiten.pdf`** (P2): die Seite ist eine
Teilnehmerliste mit Namen, Mailadressen und Telefonnummern. Sie wurde beim Sichten
festgestellt, aber nicht ausgewertet, und darf bei der Destillation nicht mitgenommen
werden. Ebenfalls nicht ausgewertet wurde das Ablaufdrehbuch einer Veranstaltung, das
mutmasslich Personennamen enthält.

Alle übrigen beschriebenen Inhalte sind veröffentlichte oder für die Lehre bestimmte
Fachtexte; Projektdaten Dritter (Bauten mit Architekt- und Ingenieurnennung in der
Werkschau) sind nur methodisch als Referenzregister benannt und nirgends wörtlich
wiedergegeben.

## Destillat-Fortschritt

**29.08.2026 (Lane FACHWISSEN, zwölfter Destillat-Lauf Korpus `archiv-fachwissen`).** Alle
vier P1-Dateien gelesen und zu zwei Sach-Artikeln destilliert:

- `…/Tec21/Grubenmann_Kirchen_Tragwerk.pdf` (vollständig) + `…/Dissertation/eth-20590-02.pdf`
  (nur Einzelseiten S. 140-141, Fig. 94/96-98; die übrigen 189 Seiten nicht gelesen) →
  destilliert zu `wiki/grubenmann-kirchen-holzdachstuhl-typologie.md`.
- `…/00_Administration/02_Daten/Antrittsvorlesung/Schwartz_Einführungsvortrag_20081030_DrT.pdf`
  + `…/10_Projekte/110928_Reader_Seminarwoche/Texte/eleganz.pdf` → gemeinsam destilliert zu
  `wiki/tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau.md`.

**Damit ist P1 dieser Sektion vollständig destilliert.** P2 (31 Positionen, siehe Triage
oben) bleibt offen für einen künftigen P2-Lauf; darunter insbesondere die restlichen
Knotenpunkt-Seiten der Killer-Dissertation (Verbindung Hängesäule-Untergurt-Längsbinder,
Streckbalken-Auflager) und das Literaturregister Holzbau. Kein neuer Datenschutz- oder
Sperrlisten-Fund über den bereits dokumentierten Stand hinaus.

## Destillat-Fortschritt

**30.08.2026 (Lane FACHWISSEN, erster P2-Lauf dieser Sektion).** Zwei P2-Positionen
gelesen und destilliert:

- `…/03_Vorlesungen/110316_Experimenteller_Tragwerksentwurf/110327_Experimenteller_Tragwerksentwurf.pdf`
  (vollständig, 3 Seiten) → destilliert zu
  `wiki/formfindung-experimenteller-tragwerksentwurf-frei-otto-stuttgart21.md` (Methode
  Selbstbildungsprozess nach Frei Otto, Fallbeispiel Stuttgarter Bahnhof/Stuttgart 21).
- `…/00_Administration/02_Daten/holzbau.pdf` (vollständig, 7 Seiten; `.xls` nicht separat
  gelesen, gleicher Inhalt in Tabellenform) → destilliert zu
  `wiki/literaturregister-holzbau-1876-1993.md`.

29 P2-Positionen dieser Sektion bleiben offen, darunter weiterhin vorrangig die restlichen
Knotenpunkt-Einzelseiten der Killer-Dissertation (S. 138-144, sieben PDF), das
Werkschau-Register der Abschlussvorlesung (`TWE IV_Vorlesung_20110513_Abschluss.pptx`,
135 Folien), die drei Kraftfluss-Darstellungsvarianten desselben Brückenlängsschnitts, das
Randbedingungs-Muster der Seminarwochen-Aufgabenstellung («Bridging the Gap») und der
Counterpoise-Erläuterungstext. Kein neuer Datenschutz- oder Sperrlisten-Fund; der
Sperrvermerk auf Seite 4 des Readers `111002_Reader_alle_Seiten.pdf` wurde erneut beachtet
(Reader in diesem Lauf nicht angefasst).

## Destillat-Fortschritt

**30.08.2026 (Lane FACHWISSEN, zweiter P2-Lauf dieser Sektion).** Vier P2-Positionen
gelesen und destilliert:

- Killer-Dissertation, Einzelseiten S. 138-144 (7 PDF, Ordner
  `.../Dissertation/Einzelseiten/S138_144/` plus `Einzelseiten/eth-20590-02 139.pdf`) —
  vollständig gelesen (Fig. 95, 99-102; Fig. 94/96-98 waren bereits über die Volltext-Fassung
  für P1 gelesen). Knotenpunkt-Massangaben (Hauptbinder-Stabpolygon 35.5 m/6.50 m,
  Querbinder 21.5 m, Hängesäulen-/Streckbalken-Verbindung, Auflagerung Schwellenholz) und der
  Finanzierungs-Nebenbefund (Verkauf der «Kirchenörter», 62'993 Gulden Erlös) als neue
  Abschnitte in das bestehende `wiki/grubenmann-kirchen-holzdachstuhl-typologie.md`
  eingefügt, kein neuer Artikel (gleiches Gebäude, gleiche Quelle).
- `.../03_Vorlesungen/110513_Abschlussvorlesung/TWE IV_Vorlesung_20110513_Abschluss.pptx`
  (Bildunterschriften aller 135 Folien ausgewertet, nicht die Bilder selbst) → destilliert zu
  `wiki/werkregister-tragwerksentwurf-schwartz-architekten-1992-2011.md` (15 Bauten/
  Wettbewerbe 1992-2011 mit Architekt/Ingenieur/Jahr).
- `.../00_Administration/02_Daten/Counterpoise.doc` (vollständig) → destilliert zu
  `wiki/counterpoise-tischtragwerk-erlaeuterungstext-massstabstransfer.md`
  (Erläuterungstext-Muster Tragwerk als Ausdrucksmittel).
- `.../Weiteres Material/Bridging the Gap.pdf` + `Aufgabe2.docx` (beide vollständig) →
  destilliert zu `wiki/aufgabenstellung-randbedingungen-muster-bridging-the-gap.md`
  (Aufgabenstellungs-Gliederung mit Randbedingungen als eigenem Block).

25 P2-Positionen dieser Sektion bleiben offen: die drei Kraftfluss-Darstellungsvarianten
desselben Brückenlängsschnitts (reine Bilddiagramme ohne Text, methodisch bereits im
Kurzbefund oben beschrieben, ein eigenständiger Artikel dazu wäre dünn), die Planserien und
PLN-Dateien (P3, nicht P2), sowie die 4 Bildscans ohne Textlayer (ArchPlus, Archithese,
Menn, Starke Strukturen — OCR nötig, siehe Empfehlung oben). Kein neuer Datenschutz- oder
Sperrlisten-Fund; Sperrvermerk Seite 4 des Readers `111002_Reader_alle_Seiten.pdf` erneut
beachtet (Reader nicht angefasst).

## Destillat-Fortschritt

**30.08.2026 (Lane FACHWISSEN, dritter P2-Lauf dieser Sektion).** Drei P2-Positionen
gelesen, zwei destilliert:

- `.../Dissertation/eth-20590-01_abstract.pdf` — Dateiname irreführend: enthält nicht den
  Abstract, sondern das Schlusskapitel «D. Schluss» der Dissertation (S. 186-190) samt dem
  vollständigen Werkverzeichnis der Grubenmann-Brücken (ausgeführte Brücken und
  Brückenprojekte, je mit Jahr und ausführendem Bruder). Vollständig gelesen und zu einem
  neuen Artikel destilliert: `wiki/grubenmann-brueder-werkverzeichnis-bruecken-schaffhausen.md`
  (Arbeitsteilung der drei Brüder, Werkverzeichnis-Tabelle, Ende der Dynastie, biografische
  Kurznotizen).
- `.../02_Bruecke/Grundlageplaene/Seiten aus Mechel_Drey merkwürdigsten Brücken in der
  Schweiz_1803.pdf` (vollständig, eine Tafel) → in denselben neuen Artikel eingearbeitet:
  zeitgenössische Bilddokumentation (Plan/Schnitt/Aufriss) der Schaffhauser Rheinbrücke,
  Zerstörung 1799 im Krieg dokumentiert, Datierungsdifferenz zwischen französischer und
  deutscher Bildunterschrift derselben Tafel als offener Punkt vermerkt.
- `.../Tec21/Einzelseite/Empore_aus_Grubenmann_Kirchen_Tragwerk.pdf` gelesen, aber **nicht**
  gesondert destilliert: reine Bildunterschriften-Seite (Fig. 11-15) zu bereits im
  bestehenden Artikel `wiki/grubenmann-kirchen-holzdachstuhl-typologie.md` beschriebenen
  Knotenpunkten (Hängesäule-Untergurt-Längsbinder, Auflager Querbinder); liefert nur einen
  zusätzlichen Quellenverweis (SBZ 23/1959, S. 361 zur Emporenkonstruktion) ohne neuen
  Sachinhalt, deshalb kein Duplikat-Zusatz.

Versuch, den 109-seitigen Reader `111002_Reader_alle_Seiten.pdf` selektiv zu lesen (Seiten
1-3 und 5-15, unter Auslassung der gesperrten Teilnehmerliste auf Seite 4), scheiterte an
einer Werkzeuglücke: die Stationswerkzeuge rendern PDF-Seitenbereiche nur über `pdftoppm`
(Paket `poppler`), das auf dieser Station nicht installiert ist; ohne Seitenbereich ist die
52-MB-Datei zu gross für einen Einzelaufruf. Neue Formatlücke, siehe `QUESTIONS.md`. Die
Fundstelle «Modell-Belastungstest» (Ähnlichkeitsgesetz, Bezug Galileo «Discorsi» 1636, vier
JPG in `Weiteres Material/Skalierung_Modelle/`) bleibt deshalb ungelesen und offen.

22 P2-Positionen dieser Sektion bleiben offen (die drei Kraftfluss-Darstellungsvarianten,
die 4 textlosen Bildscans, der 109-seitige Reader mit seinen 13 zitierten Quelltexten, das
Modell-Belastungstest-Blatt, `Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf` sowie die
Skalierungsmodell-Bilder). Kein neuer Datenschutz-Fund; die CSV/XLSX-Teilnehmerliste in
`Weiteres Material/` wurde erneut nicht geöffnet (Sperrliste), Sperrvermerk Seite 4 des
Readers erneut beachtet.

**30.08.2026 (Lane FACHWISSEN, vierter P2-Lauf dieser Sektion).** Werkzeuglücke bei den
4 als «ohne Textlayer» eingestuften Bildscans revidiert: das Read-Tool dieser Station
extrahiert Text und Bildinhalt auch aus Scans ohne Textlayer direkt (eigene Rendering-
Pipeline, unabhängig vom fehlenden System-`pdftoppm`) — funktioniert bei allen vier
Dateien unter rund 2,5 MB. Alle vier destilliert:

- `08_Archplus_Mit_oder_gegen_Holz.pdf` (ArchPlus 193, 9/2009, Kraft/Schindler) →
  `wiki/digitale-schreinerei-formfindungstaxonomie-eierschneider-falt-flecht.md`
  (Vier-Prinzipien-Taxonomie digitaler Holzformfindung, 14 Werkbeispiele).
- `10_Archithese_Taeler_mit_Holz_ueberspannen.pdf` (Archithese 6.02, Walter Bieler) →
  `wiki/bieler-holzbruecken-werkregister-graubuenden-ostschweiz.md` (neun Werke,
  Prinzip Tragwerk-unter-Fahrbahn).
- `11_Christian_Menn_Reden_und_Aufsaetze.pdf` + `20110930125418873.pdf` (beide vollständig,
  ETH-Ehrenpromotions-Broschüre: Schlaich-Laudatio, unbezeichneter Fachaufsatz, Menns
  Verdankung) → `wiki/christian-menn-werkregister-stabbogen-hohlkasten-brueckenbaukultur.md`
  (Werkregister neun Bauten/Projekte, Stabbogen-vs-Hohlkasten-Argumentation) — gegen den
  bestehenden Artikel `wiki/tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau.md`
  geprüft (dort bereits Menn-Eleganzzitat und Letziwaldbrücke über andere Quelle
  beschrieben), kein Duplikat, da hier Werkregister/Technik statt Eleganzdebatte im
  Fokus steht.
- `Weiteres Material/Skalierung_Modelle/` (4 JPG) → nach Sichtung aller vier Bilder
  vollständig destilliert zu
  `wiki/modellstatik-aehnlichkeitsgesetz-struktur-modell-skalierung.md`
  (Ähnlichkeitsgesetz-Tabelle Struktur-1:1-vs-Modell-1:x, Galileo-Bezug 1636, zwei
  unbeschriftete Belastungsversuch-Fotos).

Erneuter Versuch, den 109-seitigen `111002_Reader_alle_Seiten.pdf` selektiv mit
Seitenbereich zu lesen: schlägt weiterhin fehl, diesmal mit expliziter Fehlermeldung
`pdftoppm is not installed` — bestätigt, dass die native Rendering-Pipeline des Read-Tools
nur bei kleinen Einzeldateien ohne Seitenbereichs-Parameter greift, bei grossen Dateien mit
Seitenbereich aber auf das fehlende System-`poppler` zurückfällt. Bleibt offen
(`QUESTIONS.md` #72 unverändert gültig).

18 P2-Positionen dieser Sektion bleiben offen: die drei Kraftfluss-Darstellungsvarianten
(weiterhin als eigenständiger Artikel zu dünn, Methode bereits im Kurzbefund beschrieben),
der 109-seitige Reader mit seinen 13 zitierten Quelltexten (Werkzeuglücke), sowie
`Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf` (P3, nicht P2). Kein neuer
Datenschutz-Fund.
