---
title: "INDEX architektur-fachwissen"
status: established
last_updated: 2026-08-30
sources:
  - "raw/inventar/ (43 Sektionsinventare: 23 buero-referenzen, 20 archiv-fachwissen, Stand 29.08.2026)"
  - "wissen/architektur-fachwissen/CLAUDE.md (Korpus-Zuschnitt)"
  - "skills/wissens-destillat/KORPUS-QUEUE.md (Korpus 3 und 4)"
links:
  - "[[QUESTIONS]]"
---

# INDEX architektur-fachwissen

Diese Wissensbasis erschliesst zwei Korpora des NAS-Archivs: die **Referenzenbibliothek des
Büros** (`buero-referenzen`, `/Volumes/daten/04_Buero/10_Referenzenbibliothek`) und das
**Architektur-Archiv** (`archiv-fachwissen`, `/Volumes/daten/02_Architektur_Archiv`). Beide
standen in `skills/wissens-destillat/KORPUS-QUEUE.md` seit dem 28.07.2026 auf «wartet».

**Stand 29.08.2026: Phase 0 (Inventar) abgeschlossen für 23 von 32 `buero-referenzen`-Sektionen
und 20 von 23 `archiv-fachwissen`-Sektionen.** Für `buero-referenzen` sind mittlerweile alle
P1-Positionen destilliert (P2 offen), für `archiv-fachwissen` läuft die Destillation seit
29.08.2026 (Sperren s. u.). Die Belegbasis liegt vollständig unter `raw/inventar/`, je Sektion
eine Datei.

## Kennzahlen

| Korpus | Sektionen inventarisiert | Dateien gesichtet | P1 | P2 | P3 | X |
|---|---|---|---|---|---|---|
| `buero-referenzen` | 23 (Zeile veraltet, s. Fussnote) | 581 | 44 | 124 | 234 | 179 |
| `archiv-fachwissen` | 20 | ≈59'545 | ≈400 | ≈4'884 | ≈15'965 | ≈30'035 |
| **Total** | **43** | **≈60'126** | **≈444** | **≈5'008** | **≈16'199** | **≈30'214** |

Triage-Stufen nach `CLAUDE.md`: `P1` unmittelbar büroverwertbar, `P2` nützlich und später
destillierbar, `P3` Archivwert, `X` verwerfen (veraltet, privat, Dublette).

**Fussnote zur `buero-referenzen`-Zeile:** Die Sektionenzahl ist auf den in `KORPUS-QUEUE.md`
belegten Stand 23 korrigiert (29.08.2026), die Spalten Dateien/P1/P2/P3/X stammen aber
unverändert noch vom 23.08.2026-Teilstand der ursprünglich 12 registrierten Sektionen — für die
elf seither hinzugekommenen Sektionen (u. a. `20_Rendering`, `22_Terminplanung`,
`26_Zeichendateien_Vorlagen`) fehlt die zusammenfassende Kennzahl. Nachtrag in
`wiki/QUESTIONS.md`.

**Fussnote zur `archiv-fachwissen`-Zeile:** Werte mit ≈ sind Summen aus Sektionen, deren
Inventar teils Datei- und teils Positionszahlen ausweist (z. B. zählt `01_Entwerfen` 47
Triage-Positionen für 1'246 Dateien); die Summenspalte «Dateien gesichtet» und die
P1–X-Spalten sind deshalb nicht in jeder Zeile deckungsgleich. Herkunft je Sektion: Tabelle
«Sektionen nach Ertrag» unten.

**Abdeckung:** Die beiden Korpora umfassen laut `CLAUDE.md` 32 beziehungsweise 23 Sektionen,
zusammen 55. Inventarisiert sind davon 43 (23 + 20). Drei archiv-fachwissen-Sektionen und neun
buero-referenzen-Sektionen sind noch offen; welche, ist in `QUESTIONS.md` (260823 #1, dort
nachzuführen) festgehalten.

## Sektionen nach Ertrag

Geordnet nach der Zahl der P1-Positionen, also nach unmittelbar büroverwertbarer Substanz.
Die Zahl in Klammern ist P1 von gesichteten Dateien. **Nachgeführt 29.08.2026 (Lane
FACHWISSEN):** alle 20 vorhandenen `archiv-fachwissen`-Inventardateien neu erfasst (zuvor
waren nur vier archiv-Sektionen registriert). `P1` zählt hier durchgehend **Dateien**, nicht
Triage-Zeilen — bei mehreren archiv-Sektionen (z. B. `02_Gestalt_Kulturverstaendnis`,
`01_Konstruktion`) fasst eine einzelne Triage-Zeile eine ganze Dateigruppe zusammen; die
tatsächliche Zahl der Destillations-*Positionen* ist entsprechend kleiner und steht im
jeweiligen Inventar unter «Triage».

### Trägerschicht (P1 zweistellig)

| # | Sektion | Korpus | P1 / gesichtet | Was drinsteckt | Inventar |
|---|---|---|---|---|---|
| 01 | `02_Gestalt_Kulturverstaendnis` | archiv | 146 / 5'664 | Raphael Jans' persönliche Denk- und Darstellungswerkstatt (2007–2015): ein eigenes datiertes Typografie-Regelwerk, ein Wettbewerbs-Referenzkorpus mit 22 Juryberichten und 19 Projektbeschrieben, ein Betonforum-Fachaussagenkonvolut zu Schwinden/Rissbildung/Sichtbetonqualität, Modellfoto-Methodik und ein 305 Begriffsordner grosser Begriffsapparat. Nur 10 Triage-Positionen für die 146 Dateien; **P1 rund, keine Einzelfile-Zählung** laut Inventar. | `raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md` |
| 02 | `01_Konstruktion` | archiv | 101 / 8'791 | Konstruktions- und Bauphysik-Studienarchiv HTA/ETH (2002–2014): Fassadensysteme-Typologie, Uw-Wert-Berechnungsgrundlagen, AHB-Planungsrichtlinie der Stadt Zürich, funktionale Ausschreibung als Fachtext — nur 4 Triage-Positionen für die 101 Dateien. Jede Kennzahl trägt Normstand 1991–2010, Destillate zwingend `status: speculative`. | `raw/inventar/archiv-fachwissen__01_Konstruktion.md` |
| 03 | `03_Bauprozesse_I_II` | archiv | 58 / 524 | Das ETH-Studien- und Arbeitsarchiv zu «Bauprozesse I & II» trägt vollständige Originalnormen (SIA 112:2001, 102:2003, 416:2003, 142:2009, 500:2009, VKF 2015, VSS 640 291a), die geschlossene Kostenplanungskette am Objekt Leutschenbach, das eBKP-H 2012 samt CRB-Musterbeispiel und den eigenen Grobkosten-Fachtext von Raphael Jans. | `raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` |
| 04 | `02_Architekturtheorie` | archiv | 21 / 1'603 — **P1 vollständig, P2-Gruppen «31 Syllabi» + 2 versteckte Fragen-Kataloge + VL2-VL11 (Koolhaas/Eisenman/Venturi/Kahn/Rossi/Loos/Wright/Zumthor) + Shinohara Kazuo + Lefebvre + Schmarsow destilliert 30.08.2026** | Vorlesungsreihe Architekturtheorie ETH (Moravánszky/Hildebrand) mit rund 20 eigenen, durchformulierten Frage-Antwort-Katalogen zu Stil, Tektonik, Typus und Ornament, dazu eine Literaturlandkarte über 16 Begriffe aus den Semestersyllabi, Rossis Theorie der Permanenz, ein Fallbeispiel-Register (Loos/Wright/Kahn/Rossi), zwei Koolhaas-Artikel (Delirious New York/PK-Methode, Bigness/Generic City/Junkspace), ein Eisenman-Artikel (House VI, Autonomie der Architektur, New York Five, Dom-ino als Zeichen), ein Venturi-Artikel (Dekorierter Schuppen/Ente, Komplexität und Widerspruch, Postmoderne als Sprachtheorie), ein Kahn-Artikel (Monumentalitäts-Essay, «Form evokes Function», Post-Miesismus), ein zweiter Rossi-Artikel (Analoge Architektur, Typus-Beispiel Split, malerische Bezüge Hopper/de Chirico/Piranesi, ETH-Lehrzeit 1973-75, Kerez/Oligiati-Synthese), zwei Loos-Artikel (Ornament-und-Verbrechen-Argumentationsgang, Werkregister Michaelerplatz/Chicago-Tribune/Café Museum/American Bar), ein Wright-Artikel (organische Architektur, «Zerstörung der Kiste»/fliessender Raum, Abgrenzung International Style, Broadacre City), drei Zumthor-Artikel (Kritischer Regionalismus/Frampton/Ricoeur-Genealogie/Haus Truog; Authentizitäts-/Atmosphäre-Begriff mit Raumkonzeptions-Vergleich Loos/Wright/Zumthor «negiert/kreiert/interpretiert»; Pavillon-Vergleich Zumthor/MVRDV Expo 2000 Hannover aus der Resümee-Vorlesung VL11), zwei Shinohara-Artikel (vier Schaffensphasen/symbolischer Raum/Vergleich Loos-Wright-Zumthor; Schweizer Rezeption Oligiati/Kerez/Deplazes), ein Lefebvre-Artikel (Raumtrias percu/concu/vécu, Budapest-Vier-Plätze-Analysemethode, nur erster Platz inhaltlich belegt) sowie ein Schmarsow-Artikel (Raumsystem statt Form, Tiefenachse gegen Semper/Wölfflin/Hildebrand), ein Foucault-Artikel (Heterotopie-Typologie/Beispielkatalog, löst den bisher offenen Foucault-Punkt in `genius-loci-ort-raum-nichtorte.md`) sowie ein Bachelard-Artikel (Poetik des Raumes, Haus als Seelen-Analyse-Instrument, Existenzminimum/unheimliches Haus/mobiles Haus, Abgrenzung zur Urhütten-Debatte Semper) und ein Natur-Artikel (Erhabenes/Schönes/Malerisches nach Kant/Burke, Olmsted-Parksysteme New York/Boston, organische Architektur Viollet-le-Duc/Gaudí/Rudolf Schwarz/Ábalos & Herreros, Land-Art-Bezug Smithson/Noguchi/High-Line) sowie ein Technik-Artikel (Maschinenästhetik/Ruskin, Fordismus/Taylorismus, russischer Konstruktivismus/Leonidov, Archigram/Superstudio, Diagramm-vs-Plan-Debatte Neufert/Eisenman/MVRDV) und ein Kunst-Artikel (Loos' Trennungsthese Kunst/Architektur, Gesamtkunstwerk-Idee Wagner/Schwitters/Gropius-Taut-Behne, Fallbeispiel Residence Gehry Santa Monica, Anarchitekturen Matta-Clark/SITE-Gruppe/Cabrita Reis, Criticality-vs-Projectivity mit Dan Graham/Herzog & de Meuron/Bilbao-Effekt) sowie ein Bauen-Artikel (Begriffsklärung Volksarchitektur/anonymes Bauen/vernakuläre Architektur, Strukturalismus/Partizipation bei Kroll/Hertzberger/van Eyck, Rudofsky und anonyme Architektur bei Eldem/Konstantinidis/Gellner/Pikionis, Christopher Alexander vom Baumdiagramm zur Pattern Language, Kernzitate Abrahams «Elementare Architektur») sowie ein Visualitäts-Artikel (mittelalterliche hierarchische Bildlogik vs. Zentralperspektive, Brunelleschis Spiegelexperiment/Panofskys «Perspektive als symbolische Form», Axonometrie-Wiederentdeckung der Moderne um 1920, Eisenmans «Houses of Cards» axonometrisch als Anti-Humanismus-Statement, Otto Neuraths Isotype, Anamorphosen/Panorama/Panoptikon) sowie ein zweiter Visualitäts-Artikel (Transparenz/Opazität-Kritik des Okularzentrismus nach Rowe/Slutzky, Otto Wagners Phantasie-Training und Grossstadt-Ästhetik mit Werkliste, Townscape-Bewegung Pevsner/Cullen/de Wolfe, Black Mountain College/Buckminster Fuller Dymaxion, ohne Live-Mitschrift, nur Syllabus); Abschlussvorlesung (Prüfungsrückblick, überwiegend bereits destillierter Stoff, ohne Syllabus, Tonmitschnitt als GarageBand-Paket nicht extrahierbar) ergänzt zwei bestehende Artikel statt eines neuen (Böhmes formloser Raum/Blur Building im Zumthor-Atmosphäre-Artikel; Stalinallee-vs-Modena-Übungsbeispiel im Rossi-Permanenz-Artikel) — **damit sind alle 22 in der aktuellen NAS-Ordnerliste vorhandenen nummerierten Vorlesungsordner gesichtet** (Zähldifferenz zur historischen Angabe „23" `QUESTIONS.md` #71). P2 offen: rund 100 der 190 Vorlesungsmitschriften (`QUESTIONS.md` #68 beantwortet, keine weiteren versteckten P1-Funde), Vorlesungsfolien-Sammel-PDF, sämtliche Tonmitschnitte/Foliensätze der Einzelvorlesungen. | `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` |
| 05 | `18_Projektkostenplanung` | buero | 16 / 28 | Ein einziger Grossbau (Schulanlage Leutschenbach) liegt hier über alle Kostenermittlungsstufen von der Kostenschätzung 2003 bis zum Finanzrapport 2006 vor, dazu die Genauigkeitsbänder je Projektphase, die Anrechenbarkeitssätze der honorarberechtigten Bausumme und zwei SIA-102-Rechenwerke. | `raw/inventar/buero-referenzen__18_Projektkostenplanung.md` |
| 06 | `10_Protomodern` | archiv | 13 / 519 | Raphael Jans' nie abgeschlossenes Buch-/Manifestprojekt «Protomodern» (2013/14): dichte Schicht eigener Theorietexte, teils nur als Ordnerstruktur/Fragenregister vorhanden. | `raw/inventar/archiv-fachwissen__10_Protomodern.md` |
| 07 | `10_Modellbauen` | buero | 12 / 235 — **P1 und P2 vollständig destilliert 30.08.2026 (drei P2-Läufe)** | Eine über vier Jahre gewachsene Betonmodell-Rezeptur- und Verfahrenssammlung aus dem Umfeld Christian Kerez (zwölf Mischungsversuche mit Schlussformel, Fehlerkatalog A bis G) plus ein zitierfähiges Betontechnologie-Merkblatt von Heinz Richner, das bis zum Sichtbeton 1:1 trägt. P2: eine dritte, unsichere Quelle bestätigt/ergänzt den Fehlerkatalog, ein Bestellvorlagen-Feldschema destilliert. **P2 gilt als abgearbeitet:** die restlichen Positionen sind dauerhaft blockiert (zwei CAD-Dateien ohne ArchiCAD/Vectorworks-Werkzeug, eine Fremdvorlage mit Kundendaten Dritter, zwei reine Fotoserien) oder geprüft ohne Ertrag (Materialien-Fragment, Profilit-Vektorvorlagen). | `raw/inventar/buero-referenzen__10_Modellbauen.md` |
| 08 | `02_Architekturgeschichte` | archiv | 11 / 3'826 | Kunst-/Architekturgeschichte-Studienarchiv ETH/HTA mit Analyseraster für Gebäudeanalysen, Fachglossar historischer Bauteile und einer geprüften Referenz-Objektliste. | `raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md` |
| 09 | `02_Kunst_Geschichte` | archiv | 11 / 27'649 — **P1 zu 5/6 destilliert 29.08.2026** | Mit 27'649 Dateien die grösste Einzelsektion des ganzen Korpus (zu 54 % Website-Spiegel); büroverwertbar waren ein Analyseraster (semiotisch), der Bildanalyse-Dreischritt, eine Betrachtungsweisen-Typologie, Bestandes-/Umbau-Argumentation und eine systemische Analysemethode — sehr dünner Ertrag im Verhältnis zum Volumen. Der Architekturfotografie-Kanon (P2) ist nicht Teil dieser fünf; eine sechste P1-Position (eigener Stimm-Text) bewusst nicht in dieser KB destilliert, s. `QUESTIONS.md`. | `raw/inventar/archiv-fachwissen__02_Kunst_Geschichte.md` |

### Mittelschicht (P1 einstellig, hohe Dichte)

| # | Sektion | Korpus | P1 / gesichtet | Was drinsteckt | Inventar |
|---|---|---|---|---|---|
| 10 | `02_Denkmalpflege` | archiv | 8 / 156 | Der ETH-Studienapparat zur Vorlesung Hassler liefert mit dem SIA-Merkblatt 2017 «Erhaltungswert von Bauwerken», der SVTSM-Trockenmauer-Richtlinie samt Devisierungskapitel, den Kalk- und Pigmentrezepturen von Glaser und der Begriffssystematik Petzet/Mader vier sofort einsetzbare Bausteine für die Bestandsarbeit. | `raw/inventar/archiv-fachwissen__02_Denkmalpflege.md` |
| 11 | `01_Staedtebau` | archiv | 8 / 57 (von ~8'800 Gesamtbestand, nur 57 einzeln geöffnet) — **P1 vollständig destilliert 29.08.2026; P2-Positionen 1, 2, 8, 13, 14 vollständig, 3 zu zwei Fünfteln, 4 fünfundzwanzig von 33, Sonne-Dossier vollständig inkl. Hauptartikel «Dwelling in the Metropolis» (30.08.2026, achtzehn Läufe)** | Städtebau-Studienarchiv ETH (Lampugnani/Christiaanse); eigenes Städtebau-Glossar, Ortsanalyse- und Siedlungsstrukturraster, Projektstart-Checkliste, Stadttypen-Systematik, Blockrand-/Aufenthaltsqualitäts-Argumentation aus dem Manifest «Die Athmosphärische Stadt» 2014. P2: Gartenstadtbewegung, utopische Stadtentwurfs-Typologie/Garnier, Wettbewerb Gross-Berlin, Berlage/Amsterdamer Schule, monumentale Stadtachsen Haussmann/City Beautiful (Position 8, ergänzt um Primärzitate Bellamy und Hegemann/Peets); DTV-Atlas-Konkordanz (Position 14); Manifest-Ergänzung (Position 13); barocke Stadtplanung/Platztypologie, Berlin Schinkel-Lenné-Hobrecht, Determinanten-Ergänzung (Position 1, Jans-Reader); Antike Stadtgründungstypen, Plantypen-Glossar, Begriffstrias Stadtgründung/-erweiterung/-umbau, Bruno-Taut-Stadtkrone/Migge-Volkspark (Position 2, Übungsheft, **abgeschlossen** — Block 17 «Städtisches Wohnen Frankfurt» fehlt als Datei im Bestand); Sitte/Stübben/Curdes-Platztheorie (Position 3, Krier/Nolli über 20 MB dauerhaft blockiert); Jacobs-Park-/Nachbarschaftstheorie, Lynch-Bild-der-Stadt, Corboz-Planer-Architekten-Metropole-Schweiz, Octavia-Hill-Freiraumtypen, Hirschfeld-Bern-Lauben, Stuart-Londoner-Platzkritik, Von-Moos-Lampugnani-Debatte, Pawley-Stealth-Architektur, Eitelberger-Städtebau-Historiographie, Adolf-Behne-Zweckbau-Dreistufenmodell (Position 4, achtzehn von 33 Autorendossiers plus drei leere Ordner identifiziert, HSLU-Modul «Gebautes Umfeld» 2007 sowie eigenständige Primärquellenfunde 1769-2011). Ausserhalb der Autorendossiers, aus der unzugeordneten Datei `kapitel01_dk_vorindustrielle_120dpi.pdf` (Wiese/Zils «Deutsche Kulturgeographie» 1987, jetzt **vollständig destilliert, drei Artikel**): Ostkolonisation/mittelalterliche Stadtgründung/Hanse (Unterkapitel 3), römische Grundlagen/Völkerwanderung/fränkische Expansion (Unterkapitel 1/2) sowie neu Wüstungsperiode/Bergstädte/Fugger/Absolutismus/Residenzstädte/Aufstieg Brandenburg-Preussens (Unterkapitel 4/5, 30.08.2026, zwanzigster P2-Lauf); aus `Waldenheim/`: Landscape-Urbanism-Reader (Waldheim/Shane/Shannon/Berger, erster Fund dieser Sektion zur zeitgenössischen Bewegung). Rest-P2 offen: Position 4 (15 Autorendossiers, davon Rossi vor Destillation gegen bestehende Artikel zu prüfen), 5 (Platz-Materialbestand), 3 (Krier/Nolli blockiert). Separat, aus dem als eigene ETH-Quellenanthologie erkannten `Quellentextband-1.pdf` (Lampugnani-Professur 1996): **30. Lauf fand das vollständige Inhaltsverzeichnis (54 benannte Positionen Homer bis Max Weber, S. 7-8 der Anthologie) und ersetzt damit die bisherige Schätzung «ca. 50/rund 28 offen»**. Stand nach dem 34. Lauf: 29 Positionen destilliert oder begründet ohne Artikel abgeschlossen (Max Weber, Manuel da Maia, Vitruv, Frontinus, Filarete, Alberti, Dürer, Vauban, Palladio, Descartes, Ludwig XIV., Campanella, Dézallier d'Argenville, Aristoteles, Digesta, Al-Farabi, Ibn Abdun, Ibn Dschubair, Al-Ghazali ohne Artikel, Ibn Chaldun x2, Francesco di Giorgio Martini, Bern Handfeste/Satzungenbuch, Siena Baupflege-Dokumente, Lex Iulia Municipalis, Regensburg/Vita Meinwerci, Vita Nicolai V, Hippokrates, Koran-Auszüge ohne Artikel, Enea Silvio Piccolomini/Wien-Deutschland-Tivoli, neu Campano/Pienza, Pero Tafur ohne Artikel), **25 vollständig offen** — vollständige Positionsliste mit gedruckten Seitenzahlen im 30.-Lauf-Abschnitt der Inventardatei. Betriebsbefund: Seitenangaben in der Inventardatei sind **gedruckte Buchseiten**, PDF-Seitenindex = gedruckte Seite + 4; der `pages`-Parameter des Read-Tools scheitert an fehlendem `pdftoppm` im PATH dieser Lane-Session, funktioniert aber über den vollen Pfad `/opt/homebrew/bin/pdftoppm` (30. Lauf). **Nachtrag 40. Lauf:** seither zusätzlich destilliert Pacioli, Serlio, Castiglione, Münster, Specklin, Vasari il Giovane, Leonardo da Vinci, Herodot (Babylon/Ägypten/Samos); ohne Artikel geschlossen Aventinus, Olivier de Serres, Homer. **Nachtrag 41. Lauf:** zusätzlich destilliert Thukydides (Mauerbau/Peiraieus/Synoikismos). **Nachtrag 42. Lauf:** zusätzlich destilliert Cicero, Vom Staatswesen (Stadtdefinition/drei Staatsformen, Romulus' Binnenlage-Entscheid am Tiber statt Küste). Die bisherige Einzelzahl-Zählung "X von 54" ist über die Läufe abgedriftet (Detail und korrigierte Namensliste offener Positionen: `wiki/QUESTIONS.md` #74, 41.-Lauf-Abschnitt der Inventardatei) — künftige Stände dort, nicht hier, nachführen. | `raw/inventar/archiv-fachwissen__01_Staedtebau.md` |
| 12 | `17_Projektbeschriebe` | buero | 7 / 18 | Die Sektion enthält genau ein Projekt, dafür das vollständige Set der Projektbeschriebe aller Fachplaner der Schulanlage Leutschenbach, verdichtet zum revidierten Gesamtdossier vom 09.12.2009, mit belegten Fassaden-, Minergie-, Tragwerks- und Lüftungswerten. | `raw/inventar/buero-referenzen__17_Projektbeschriebe.md` |
| 13 | `01_Entwerfen` | archiv | 6 / 1'246 — **P1 vollständig destilliert 29.08.2026, fünf Artikel** | Entwurfs-/Farb-/Ornamenttheorie-Archiv HTA/ETH 2000–2021; büroverwertbarer Kern sind Flächenerfassungs-Richtlinien, Baubeschriebe und Wohnungsschlüssel-Kennwerte. Datenschutz-Funde vermerkt (s. u.). P2 (elf Positionen: Ausbau-Variantenvergleich, Raumtypologie-Vorlesung, SEALS-Aussenraum-Aufsatz, Wohnweisen-Vorlesungsreihe, Fachglossare Farbe/Pigmente, Farbenlehre-Website, Ornamentik-Literaturliste, eigene Ideentexte, Class-A-Problem-Vokabular, Ikonographie-Raster u. a.) offen. | `raw/inventar/archiv-fachwissen__01_Entwerfen.md` |
| 14 | `25_Wettbewerb` | buero | 5 / 17 | Zwei vollständige Ausschreibungspakete öffentlicher Bauherrschaften von 2009 (selektiver Studienauftrag Zeughaus Ebnet, offener Projektwettbewerb Naturmuseum St.Gallen) zeigen Programmaufbau, Raumprogramm im SIA-416-Raster, Zeittarif-Mechanik und die Kritik der SIA-Kommission 142 im Genehmigungsvermerk. | `raw/inventar/buero-referenzen__25_Wettbewerb.md` |
| 15 | `01_Landschaftsarchitektur` | archiv | 4 / 826 — **P1 vollständig destilliert 29.08.2026, vier Artikel** | ETH-Studienarchiv Landschaftsarchitektur; büroverwertbar sind Belagsaufbauten, Naturstein-Materialkunde, Baumpflanzung/Kletterpflanzen und eine Pflanzenliste (Vogt-Broschüren). Dachbegrünung als Cross-KB-Duplikat zu `bauprodukte/dachbegruenung-systeme.md` erkannt, nicht erneut destilliert. Datenschutz-Fund: Lieferantenliste mit **Zugangspasswort im Klartext**, nicht erfasst (s. u.). P2 (24 Positionen, u. a. Gartenanalyse-Raster, Stadtbaum-Merkblatt Luzern, Vogt-Projektbroschüren) offen. | `raw/inventar/archiv-fachwissen__01_Landschaftsarchitektur.md` |
| 16 | `01_Tragwerk` | archiv | 4 / 1'098 P1, 13/31 P2 — **P1 vollständig destilliert 29.08.2026 (zwei Artikel), P2 in vier Läufen 30.08.2026 (zwölf weitere Artikel/Ergänzungen)** | Grösstenteils leeres Ordnungsgerüst; belegter Kern ist der Arbeitsbestand aus einer Assistenz bei Prof. Schwartz (ETH) zu historischen Holzdachstühlen (Grubenmann-Kirchen, inkl. Knotenpunkt-Details), Werkverzeichnis der Grubenmann-Brücken (Schaffhauser Rheinbrücke), Tragwerksentwurf-Philosophie (Plastizitätstheorie, Eleganz im Brückenbau), Formfindungsmethode nach Frei Otto (Fallbeispiel Stuttgart 21), einem Literaturregister Holzbau, einem Werkregister Schwartz'scher Bauten 1992-2011, einem Erläuterungstext-Muster (Counterpoise), einer Aufgabenstellungs-Gliederung mit Randbedingungen (Bridging the Gap), einer Formfindungstaxonomie digitaler Holzkonstruktion (Eierschneider/Falt/Kassetten/Flecht), einem Werkregister Bieler-Holzbrücken, einem Werkregister Christian Menn (Stabbogen-vs-Hohlkasten) und dem Ähnlichkeitsgesetz Struktur-Modell (Galileo-Bezug). Mehrere Datenschutz-Funde (Stundenzettel, privater Schriftverkehr), nicht erfasst (s. u.). P2 (18 Positionen offen, u. a. drei Kraftfluss-Darstellungsvarianten und ein 109-seitiger Reader ohne lesbaren Seitenbereich — fehlendes `poppler`). | `raw/inventar/archiv-fachwissen__01_Tragwerk.md` |
| 17 | `00_Allgemein` | archiv | 3 / 19 | Meta-Ebene des Archivs: Ordnungslogik (24 Hauptordner) und ein eigenes 14-teiliges Fachsystematik-Konzeptpapier von 2011, kein Fachinhalt im engeren Sinn. | `raw/inventar/archiv-fachwissen__00_Allgemein.md` |
| 18 | `02_Architektur_Vermitteln` | archiv | 16 / 85 | Lehrmaterial zur Vermittlung: Rhetorik, Moderation, Protokoll, Geschäftskorrespondenz, wissenschaftliches Arbeiten — direkt anschlussfähig an mehrere JANS-Skills. **P1 und P2 vollständig destilliert 30.08.2026** (7 Artikel für 13 P2-Positionen, 3 für P1). Datenschutz-Fund: private Kontaktdaten Dritter auf Studienarbeits-Titelblättern, nicht erfasst (s. u.). | `raw/inventar/archiv-fachwissen__02_Architektur_Vermitteln.md` |
| 19 | `12_Masse` | buero | 2 / 11 | Acht gescannte Seiten einer Konstruktionslehre Hochbau tragen die Achs- und Wandabstände von Sanitärapparaten in den drei Stufen Minimum, Durchschnitt und Komfort über sieben Nasszellen-Grundrisstypen, dazu Montagehöhen und hindernisfreie WC-Masse; die übrigen neun Dateien sind Dubletten oder unbelegt. | `raw/inventar/buero-referenzen__12_Masse.md` |
| 20 | `21_Rhino` | buero | 2 / 180 | Ein geschlossenes McNeel-Lernpaket zu Rhinoceros 4.0 ohne jeden Architekturbezug, dessen schmaler büroverwertbarer Kern die Planausgabe-Kette (Make2D, Page Layout, Massstab, Print Width) und die Exportregeln samt Meshing-Toleranzfalle sind. | `raw/inventar/buero-referenzen__21_Rhino.md` |
| 21 | `02_Bibliothek` | archiv | 2 / 6'947 | Mit 6'947 Dateien die grösste, aber dünnste Sektion: sie verwaltet eine Bibliothek statt sie zu sein, und trägt drei Nester (Grundrisskompendium Wohnhochhaus ETH HS14, Neufert-Scan, INSA-Inventar Zürich 1850 bis 1920) sowie 287 kuratierte Seminarreise-Reader. | `raw/inventar/archiv-fachwissen__02_Bibliothek.md` |
| 22 | `01_Innenarchitektur` | archiv | 1 / 396 | Eine Studien- und Interessensammlung ohne LV-, BKP-, Norm- oder Konstruktionsmaterial, deren Substanz in drei Konvoluten liegt (44 Seiten «Encyclopedia of Interior Design», Auktionskatalog «Important Nordic Design» mit voller Textebene, quellenannotiertes Bildarchiv von 136 Innenraumaufnahmen). | `raw/inventar/archiv-fachwissen__01_Innenarchitektur.md` |

### Ohne P1, aber mit destillierbarem Rest

| # | Sektion | Korpus | P1 / gesichtet | Was drinsteckt | Inventar |
|---|---|---|---|---|---|
| 23 | `15_Oberflaechenbehandlung` | buero | 0 / 1 | Eine einzige, fachlich dichte Aktennotiz einer Betontechnologin von 2007 trennt die Nachfixierung trockener Sichtbetonflächen mit Kaliwasserglas von der oliophoben und hydrophoben Imprägnierung spritzwasserexponierter Flächen und ist nur wegen Preisstand 2007 und fehlendem Preisanhang P2 statt P1. | `raw/inventar/buero-referenzen__15_Oberflaechenbehandlung.md` |
| 24 | `19_Puplikationen` | buero | 0 / 4 | Ein abgeschlossenes Altbestands-Nest ohne JANS-Eigenbezug, dessen Layout-Andruck sechs Schweizer Einfamilienhäuser 2005 bis 2007 mit Flächen, Terminen und vollständigen Planerteams belegt, während die drei El-Croquis-Scans mangels Titel und Textebene nicht zitierfähig sind. | `raw/inventar/buero-referenzen__19_Puplikationen.md` |
| 25 | `11_Landschaftsarchitektur` (buero) | buero | 0 / 1 | Die Sektion besteht aus einem einzigen Fremd-Projektblatt von Vogt Landschaftsarchitekten zum Bahnhofplatz Landquart, verwertbar allein wegen des belegten Beschriebs des roten Terraton-Belags mit Ziegelbruch und des sauberen Projektdatenblatt-Layouts. **Achtung Namenskollision:** nicht zu verwechseln mit `01_Landschaftsarchitektur` (archiv, Zeile 15), anderer Korpus. | `raw/inventar/buero-referenzen__11_Landschaftsarchitektur.md` |
| 26 | `31_Klimadaten` | buero | 0 / 2 | Zwei Einzelgrafiken ohne ein einziges Textdokument, von denen nur das Sonnenpfad-Diagramm Zürich mit den zeitinvarianten Kulminationshöhen (rund 66 Grad, 43 Grad, 20 Grad) brauchbar ist, und dies ohne Quellenangabe und damit nicht als Beleg. | `raw/inventar/buero-referenzen__31_Klimadaten.md` |
| 27 | `06_Reisen` | archiv | 0 / 132 (P2 9, P3 24, X 99) | Arbeitsordner zweier privater Studienreisen 2013 (USA, Toskana) plus Veneto-Planung; methodisch verwertbar ist höchstens die Reise-/Exkursionsplanung (Factsheet, Stundenraster). **Starker Privatunterlagen-Befund** (Pass-/ESTA-/Buchungsdaten, s. u.) — vor jeder Destillation die Kurator-Prüfung nach Spec Punkt 8 durchführen; im Zweifel auch die P2-Reste nicht destillieren. | `raw/inventar/archiv-fachwissen__06_Reisen.md` |

### Ohne Ertrag

| # | Sektion | Korpus | P1 / gesichtet | Befund | Inventar |
|---|---|---|---|---|---|
| 28 | `16_Portfolios` | buero | 0 / 83 | Keine Fachbibliothek, sondern eine Ablage eingegangener Bewerbungsmappen 2007 bis 2010 mit Personendaten Dritter; der einzige Fachfund ist die falsch benannte Datei `Oligati_Valerio_CB770.pdf`, ein Casabella-Ausschnitt zu Valerio Olgiati. | `raw/inventar/buero-referenzen__16_Portfolios.md` |
| 29 | `14_Modellfotos` | buero | 0 / 1 | Faktisch leer: eine einzige TIFF-Innenraumperspektive ohne Text, Masse und Kennwerte, aus der sich nichts destillieren lässt und deren Projektzuordnung ungeklärt ist. | `raw/inventar/buero-referenzen__14_Modellfotos.md` |
| 30 | `04_Politik` | archiv | 0 / 4 | Reine Restablage 2012/13: ein Wikipedia-Ausdruck zu Pariser Grands Projets, zwei private Meinungsnotizen (eine davon religions-/gesellschaftspolitisch), ein Pressebild. Kein Drittpersonen-Bezug, aber die Datei selbst sperrt den Inhalt als privat. | `raw/inventar/archiv-fachwissen__04_Politik.md` |
| 31 | `05_Kultur_Gesellschaft_Stil` | archiv | 0 / 7 | Kleinste Sektion, kein Architekturbezug: private Lese-/Seh-Ablage (Religionsphilosophie-Zeitschrift 1952, TV-Sendungshinweis, Screenshots). | `raw/inventar/archiv-fachwissen__05_Kultur_Gesellschaft_Stil.md` |
| 32 | `07_Religion` | archiv | 0 / 2 | Genau zwei Dateien, eine private Bonhoeffer-Zitatsammlung ohne jeden Architekturbezug; laut Datenschutz-Vermerk deutet die Herauslösung eines Trauer-Abschnitts auf einen privaten Anlass hin. Kein Destillationskandidat. | `raw/inventar/archiv-fachwissen__07_Religion.md` |

**Noch nicht in dieser Tabelle:** die 9 offenen `buero-referenzen`-Sektionen (Phase 0 fehlt) und
die 3 offenen `archiv-fachwissen`-Sektionen (Phase 0 fehlt) — Auflistung in `QUESTIONS.md`.

## Querbefunde über die Sektionsgrenzen

**01 Das Objekt Leutschenbach trägt drei Sektionen zugleich.** Die Schulanlage Leutschenbach
(Christian Kerez, BGS Architekten, Amt für Hochbauten der Stadt Zürich) erscheint in
`17_Projektbeschriebe` (Beschriebe aller Fachplaner), `18_Projektkostenplanung` (Kostenkette)
und `03_Bauprozesse_I_II` (beides erneut). Mehrere P1-Dateien sind dabei namensgleich in zwei
Sektionen inventarisiert, unter anderem `KV_Zusammenstellung_Leutschenbach.pdf`,
`Finanzrapport_Leutschenbach.pdf`, `Anlagekosten_Leutschenbach.pdf`, das Kennzahlenblatt,
`050420_H-Bausumme.pdf`, `KS SA Leutschenbach Architekt 1.xls`, `Offerte_Terrazzo_Belaege.pdf`
und `100218_Baubeschrieb_Waltenschwil.pdf`. **Die Zahl 113 zählt P1-Positionen, nicht
verschiedene Dokumente**; die Zahl der eigenständigen P1-Quellen liegt darunter.

**02 Christian Kerez ist der rote Faden des Büro-Korpus.** Sein Umfeld belegt sechs der zwölf
inventarisierten Sektionen: Betonmodellbau (`10_Modellbauen`), Sichtbeton-Oberflächen
(`15_Oberflaechenbehandlung`), Projektbeschriebe und Kostenplanung Leutschenbach (`17`, `18`),
das Zweifamilienhaus Zürich-Witikon im Publikations-Andruck (`19_Puplikationen`) und die
Honorarberechnung (`03_Bauprozesse_I_II`).

**03 Zwei Bestände sind doppelt abgelegt.** `Oligati_Valerio_CB770.pdf` und die drei
Bewerbungsportfolios (Boroch, de la Harpe, Kosdruy) liegen sowohl in `16_Portfolios` des
Büro-Korpus als auch in `02_Bibliothek/06_Portfolios/` des Archivs. Ebenso die veralteten
BKP-Scans `BKP_CRB_SN.pdf` (Ausgabe 1989) und `BKP_ETH_Meyer.pdf` (Ausgabe 97).

**04 Der TERRATON-Belag taucht zweimal unabhängig auf**, in `11_Landschaftsarchitektur` als
Vogt-Projektblatt Bahnhofplatz Landquart und in `17_Projektbeschriebe` als Herstellerbeschrieb
Martin Rauch zur Umgebung Leutschenbach, dort mit Trasskalk und Festigkeitsverhältnis.

**05 Kostenkennwerte gibt es, Indexierung nicht.** Beide Korpora liefern belegte Kennwerte
(Schulbau Zürich 2003/04, Grobkosten-Bandbreiten 1985 bis 2004, Ausstattung BKP 900), aber in
keiner einzigen Sektion einen belegten Indexpfad auf heute. Jede Uebernahme in ein Erzeugnis
setzt eine Indexierung voraus, die ausserhalb dieser KB beschafft werden muss.

## Sperren und Vorbehalte, die vor jeder Destillation gelten

- **BKP:** Die Korpora enthalten die BKP-Ausgaben 1989, 97 und 2001. Verbindlich ist
  ausschliesslich BKP 2017 nach Rule `bkp-2017-referenz`. Keiner dieser Scans darf je als
  Codequelle dienen.
- **Normen:** Alle Norm-Ausgaben sind Stand 2001 bis 2015. Jede Norm-Aussage läuft nach Rule
  `normen-referenz` über den Skill `normen` und die KB `wissen/normen`, nie über dieses
  Inventar. Insbesondere `SIA 500` schlägt die Lehrmittelseite in `12_Masse`.
- **Urheberrecht:** Die McNeel-Handbücher, die SIA- und VKF-Normen, die CRB-Publikationen, die
  Casabella- und El-Croquis-Auszüge, die Banham-Enzyklopädie und die SEALS/INSA-Scans sind
  geschützt. Sinngemäss destillieren mit Fundstelle, nie im Wortlaut übernehmen. Die
  SEALS-Bestände gehören als Verweis mit DOI in die KB, nicht als Kopie.
- **Personendaten:** `16_Portfolios` und `02_Bibliothek/06_Portfolios/` enthalten
  Bewerbungsdossiers Dritter mit Geburtsdaten, Privatadressen, Passfotos und Zeugniskopien;
  `10_Modellbauen/Kartonliste.pdf` eine namentliche Studierendenabrechnung;
  `18_Projektkostenplanung` einen Mailwechsel mit Gesundheitsangaben zu einer dritten Person.
  Nichts davon gehört in die Wissensbasis.
- **Zugangsdaten:** `02_Bibliothek/03_Zeitschriften/Hochparterre/Passwort.docx` wurde bewusst
  nicht geöffnet und darf nie in eine KB, einen Index oder ein Destillat gelangen.
- **Zweckbindung:** Die beiden DXF im Wettbewerbspaket St.Gallen unterliegen laut
  Datenbegleitdokument einer Löschpflicht nach Projektabschluss und dürfen weder verwendet
  noch weitergegeben werden.

**Nachtrag 29.08.2026 (Lane FACHWISSEN, Sichtung der 17 zuvor unregistrierten
archiv-fachwissen-Inventardateien) — weitere Personendaten-/Zugangsdaten-Funde, alle bereits
von der jeweiligen Inventardatei selbst korrekt als `X` eingestuft bzw. bewusst nicht geöffnet,
hier zusätzlich zentral vermerkt (Meldepflicht statt Eigenmächtigkeit, Rule
`auto-verbesserungen` 260823):**

- **`01_Konstruktion/00_Baustoffkonzept/Baustoffadressen`** — Lieferanten-Adresssammlung,
  bewusst nicht geöffnet und nicht inventarisiert.
- **`01_Landschaftsarchitektur/00_Administration/`** — Bezugsquellen-/Lieferantenliste mit
  Firmenadressen, Ansprechpartnern, Direktwahl-/Mobilnummern, Kundennummern **und einem
  Zugangspasswort im Klartext**; zusätzlich eine archivierte E-Mail mit privaten
  Hochschul-Absender-/Empfängeradressen. Nicht erfasst. Dasselbe Muster wie bereits bei
  `02_Bibliothek/03_Zeitschriften/Hochparterre/Passwort.docx` — ein zweiter Klartext-Zugangsdaten-
  Fund in diesem Korpus.
- **`01_Entwerfen`** — vier Fundstellen mit Personen-/Firmendaten Dritter (Prüfungs-
  Einschreibelisten, eine Betriebs-Referenzliste mit Bauherrennamen und Ortsangaben
  2006/2007, ein Wohngrössen-Blatt mit Bauherren-/Kontaktdaten), keine gelesen/ausgewertet.
- **`01_Staedtebau/20_Die_Athmosphaerische_Stadt/FactShets_Staedte.docx`** — Gruppeneinteilung
  mit Namen und Hochschul-Mailadressen von Mitstudierenden, als `X` eingestuft.
- **`01_Tragwerk`** — mehrere Funde: Arbeitszeit-/Stundenzettel (8 Dateien), persönlicher
  Schriftverkehr mit zwei namentlich benannten Personen (6 Dateien), Einsatz-/Teilnehmerlisten
  mit Mailadressen/Telefonnummern (5 Dateien), eine Porträtaufnahme, sowie eine Teilnehmerliste
  auf Seite 4 eines Readers.
- **`02_Architektur_Vermitteln`** — Titelblätter mehrerer studentischer Beispielarbeiten und
  eine Dispositionsvorlage mit privaten Wohnadressen, Telefonnummern und Mailadressen Dritter.
- **`02_Kunst_Geschichte`** — eine Teilnehmerliste und zwei Gruppeneinteilungs-Dokumente eines
  Hochschulmoduls (Namenslisten Studierender), sowie ein Reader-Deckblatt mit Privatadressen
  und Hochschul-Mailadressen dreier Verfasser.
- **`06_Reisen`** — erheblicher Umfang privater Reisedokumente: Ausweis-/Einreisedaten (ESTA),
  Bordkarten, Flug-/Hotel-/Mietwagenbuchungen mit Personendaten und Beträgen, ein privater
  Mailausdruck, eine private Wunschliste. Ganze Sektion unter verschärftem
  Privatunterlagen-Vorbehalt (s. Tabelle oben, Zeile 27).
- **Grenzfälle ohne Drittpersonen-Bezug, aber als privat gesperrt:** `04_Politik` (zwei private,
  teils polemische Meinungsnotizen) und `07_Religion` (Trauer-Abschnitt, privater Anlass
  erkennbar).

Keiner dieser Funde wurde eigenmächtig aus dem Inventar entfernt; alle sind bereits in der
jeweiligen Sektionsdatei als `X`/nicht geöffnet dokumentiert. Diese Zusammenfassung dient nur
der zentralen Sichtbarkeit für künftige Läufe und für Raphael.

## Artikelbestand

**Stand 29.08.2026 (Lane FACHWISSEN, erster Destillat-Lauf Korpus `buero-referenzen`):**
sieben Artikel aus dem P1-Cluster `18_Projektkostenplanung` (Schulanlage Leutschenbach),
alle `status: emerging`, gemäss `specs/buero-referenzen-spec.md`:

- [[kostenermittlungskreislauf-genauigkeit-je-phase]] — Verfahren und Genauigkeitsband je
  Projektphase (Ruosch/Brandenberger)
- [[sia-102-2003-phasenanteile-zwei-rechenwerke]] — SIA-102:2003-Phasenanteile aus zwei
  unabhängigen Rechenwerken, Praxisregeln 2010
- [[kostenkennwerte-schulanlage-leutschenbach]] — Kostenkennwerte Schulbau Zürich,
  Preisstand 2003/04
- [[honorarberechtigte-bausumme-anrechenbarkeit]] — Anrechenbarkeitslogik je Kostengruppe,
  mit BKP-Phantomcode-Warnung
- [[kostenkontrolle-spaltenmodell-oeffentliche-bauherrschaft]] — Neunspalten-Modell
  Finanzrapport + internes Vergabe-Controlling
- [[baubeschrieb-als-kostentraeger]] — BKP-gegliederter Baubeschrieb, Grossbau und EFH
- [[bemusterungsentscheid-kostenueberschreitung-praxisfall]] — anonymisierter Praxisfall
  Bodenbeläge
- [[kv-detailausdruck-gliederungsstufen]] — KV-Detailausdruck: Gliederungsstufen und
  Objektaufteilung
- [[kostenschaetzung-vorprojekt-schaetzgrundlage-ausweisen]] — Kostenschätzung Vorprojekt:
  Schätzgrundlage je Kostengruppe ausweisen

**Sektion `18_Projektkostenplanung` (Zeile 02 oben) ist damit vollständig destilliert:
alle 16 P1-Positionen, neun Wiki-Artikel.** Fortschritt und Begründung je Position in
`raw/inventar/buero-referenzen__18_Projektkostenplanung.md` Abschnitt
«Destillat-Fortschritt». Alle Beleg- und Anonymisierungsprüfungen (Unternehmernamen,
BKP-2017-Abgleich) sind in den Artikeln selbst dokumentiert.

**Zweiter Destillat-Lauf 29.08.2026 (Lane FACHWISSEN): Sektion `10_Modellbauen` (Zeile 03
oben) vollständig destilliert — alle 12 P1-Positionen (6 Fundstellen-Gruppen), vier
Wiki-Artikel nach Sache statt Datei, alle `status: emerging`:

- [[modellbeton-rezeptur-mischungsverhaeltnisse]] — zwei unabhängige Mischungsrezepte
  Keraflott-Modellbeton (Volumenteile und Gewichte)
- [[modellbeton-fehlerkatalog-schalung]] — sieben Schalungsvarianten A–G gegen ihr
  Fehlerbild, plus Vibrier- und Trocknungsverfahren
- [[betonschalung-grundlagen-richner]] — Betontechnologie-Merkblatt Heinz Richner
  (D-BAUG ETH 2011), übertragbar auf Sichtbeton 1:1
- [[werkstoffliste-modellbau-vorlage]] — Zuschnittlisten-Schema, Konventionen,
  Massstabs-Stolperstein (Materialdicke skaliert nicht mit)

Fortschritt und Begründung je Position in
`raw/inventar/buero-referenzen__10_Modellbauen.md` Abschnitt «Destillat-Fortschritt».
P2 dieser Sektion bleibt offen.

**Dritter Destillat-Lauf 29.08.2026 (Lane FACHWISSEN, selber Tag, Fortsetzung):**
Sektion `17_Projektbeschriebe` (Zeile 05 oben) vollständig destilliert — alle 7
P1-Positionen, fünf Wiki-Artikel nach Sache statt Datei, alle `status: emerging`,
Quelle durchgehend Schulanlage Leutschenbach (abgeschlossenes, öffentlich
ausgeschriebenes Bauvorhaben, daher Firmen-/Planernennung nach Spec zulässig):

- [[projektbeschrieb-gattungsvorlage-fachdisziplinen]] — Gattungsvorlage
  Projektbeschrieb, Kapitel je Fachdisziplin, zwei widersprüchliche Beteiligtenlisten
- [[tragwerksbeschrieb-leutschenbach-kennwerte]] — Pfahlfundation/Stahlbau-Kennwerte,
  Praxisregel «Preis der einen Steigzone»
- [[lueftungsvariantenentscheid-praxisfall-leutschenbach]] — Variantenentscheid
  natürliche/mechanische Lüftung, Kostendelta CHF 300'000, gekippt durch externen
  Faktor (Anflugschneise)
- [[fassadenkennwerte-leutschenbach-glasfassade-2004]] — U-/g-Werte Ganzglasfassade,
  Formmuster Fassadenbeschrieb
- [[sanitaer-kurzbeschrieb-vorlage-fettabscheider-schwelle]] — Gliederungsmuster
  Sanitär-Kurzbeschrieb, Fettabscheider-Schwelle 300 Mahlzeiten/Tag,
  BKP-Altnummerierungs-Sperrvermerk

Fortschritt und Begründung je Position in
`raw/inventar/buero-referenzen__17_Projektbeschriebe.md` Abschnitt
«Destillat-Fortschritt». P2 dieser Sektion bleibt offen (u.a. TERRATON-Belag-
Herstellerbeschrieb).

**Vierter Destillat-Lauf 29.08.2026 (Lane FACHWISSEN, selber Tag, Fortsetzung):**
Sektion `25_Wettbewerb` (Zeile 06 oben) vollständig destilliert — alle 5
P1-Positionen (zwei Veranstalterprogramme plus drei Beilagen), sechs Wiki-Artikel
nach Sache statt Datei, alle `status: emerging`. Anonymisierungs-Zusatzprüfung
durchgeführt: keine Unternehmer-/Bieter-Betrag-Zuordnung vorhanden (reine
Veranstalterprogramme, keine eingegangenen Offerten), daher keine Schwärzung nötig:

- [[wettbewerbsverfahren-programmstruktur-vorpruefung-zuschlagskriterien]] —
  Programmgrundstruktur, formelle/materielle Vorprüfung, gegenläufige
  Kriterien-Gewichtung zweier Bauherrschaften
- [[wettbewerbs-teilnahmebedingungen-ausstand-abgabe-urheberrecht]] —
  Ausstandsregeln über SIA 142 hinaus, Abgabemodalitäten, Urheberrechts-Differenz,
  SIA-Kommission-142-Kritikpunkte
- [[honorarmechanik-wettbewerb-oeffentliche-bauherrschaft]] — Honorarofferte als
  Zuschlagskriterium, SIA-102-Rechnungsbasis, Ansatz-Sprung Fr. 110 vs. CHF 128
- [[zeittarif-mechanik-tarifblatt-stgallen-2009]] — Mittelansatz, Kategorien A–G,
  Anforderungsfaktor a, Rechenprobe
- [[raumprogramm-spaltenlogik-sia416-naturmuseum]] — Raumprogramm-Formatmuster
  NF/VF/FF mit acht technischen Anforderungsspalten
- [[planervertrag-klauseln-oeffentliche-bauherrschaft]] — neun bauherrenseitige
  Zusatzklauseln mit Honorarwirkung

Fortschritt und Begründung je Position in
`raw/inventar/buero-referenzen__25_Wettbewerb.md` Abschnitt «Destillat-Fortschritt».
P2 dieser Sektion bleibt offen.

**Fünfter Destillat-Lauf 29.08.2026 (Lane FACHWISSEN, selber Tag, Fortsetzung):**
Sektion `20_Rendering` (Zeile 03 «Trägerschicht» oben — trotz Namens keine
Rendering-, sondern eine ETH-Theoriesektion) — **vollständig destilliert**, sieben
Wiki-Artikel, alle `status: emerging`:

- [[entwurfsbegriffe-struktur-huelle-architektur3-eberle]] — Struktur- und
  Hülle-Begriffe (Architektur III, Professur Eberle)
- [[strategisches-entwerfen-systematik-etappenprojekte]] — Strategie-Systematik,
  fixe/flexible Parameter, Hypothese/Prognose/Szenario
- [[standortanalyse-methodik-turbinenplatz]] — Stadtanalyse-Methodik in drei Ebenen,
  Fragebogen-Vorgehen
- [[erlaeuterungsbericht-gattungsvorlage-vier-kapitel-diplom2010]] —
  Erläuterungsbericht-Gattungsvorlage, anonymisiert (Diplomarbeit ETH HS 2010)
- [[lebensdauer-hierarchie-nachhaltigkeit-architektur3]] — fünfstufige
  Lebensdauer-Hierarchie Ort/Primärstruktur/Hülle/Funktion/Oberfläche als
  Nachhaltigkeits-Entscheidungsinstrument
- [[typus-und-charakter-begriffsapparat-architektur3]] — Typus als Abstraktion,
  Materialisierungs-Vokabular (Farbigkeit/Fugenbild/Oberfläche/Öffnungsanteil/
  Plastizität) als Charakterträger
- [[programmflexibilitaet-nachhaltigkeit-raumprogramm-architektur3]] —
  Funktionsbegriff-Kritik, drei Flexibilitätsstrategien, «Raumprogramm keine
  Nachhaltigkeitsstrategie»

Von den neun Architektur-III-Handouts wurden alle neun einzeln direkt im Archiv
gelesen (nicht nur über die Inventar-Zusammenfassung): sechs tragen
ausformulierten Fliesstext und sind destilliert (vl1, vl3, vl5, vl6 bereits im
ersten Teillauf, vl7 in diesem Nachtrag — macht mit den zwei bereits destillierten
insgesamt fünf Artikel aus Architektur-III-Handouts), drei (vl2, vl4, vl8, vl9 —
vier Dateien) sind reine Bildlegenden-Arbeitsblätter ohne extrahierbaren Fliesstext
und bewusst nicht destilliert (im Inventar-Nachtrag begründet). Fortschritt in
`raw/inventar/buero-referenzen__20_Rendering.md` Abschnitt «Destillat-Fortschritt».
P2 dieser Sektion bleibt vollständig offen. Urheberrechts-/Datenschutzvorbehalte
eingehalten: keine Wortlaut-Übernahme aus geschütztem Lehrmaterial, keine
Studierendennamen.

**Sechster bis neunter Destillat-Lauf 29.08.2026 (Lane FACHWISSEN, selber Tag,
Fortsetzung):** nach der geplanten Sektionsfolge wurde `wiki/INDEX.md`
«Sektionen nach Ertrag» gegen `raw/inventar/` abgeglichen (dieses Register war
seit 23.08.2026 veraltet — Phase 0 war seither auf alle 23 Sektionen des Korpus
gewachsen). Ergebnis: fünf weitere Sektionen trugen noch unbearbeitete
P1-Positionen, die nicht im ursprünglichen Register standen. Alle fünf wurden in
diesem Lauf destilliert:

- `12_Masse` (2 P1): [[sanitaerapparate-masstabellen-montagehoehen]],
  [[nasszellen-achsabstaende-komfortstufen-bedarfszahlen]]
- `21_Rhino` (2 P1): [[rhino-planausgabe-kette-make2d-layout-druck]],
  [[rhino-freiform-stetigkeit-flowalongsrf]]
- `08_Karten_Plaene_Weltweit` + `08_Karten_Plaene_Zuerich` (je 1 P1, dieselbe
  Dokumentfamilie, ein Artikel für beide):
  [[orthofoto-nutzungsbestimmungen-stadt-zuerich-zwei-fassungen]]
- `09_Konstruktion` (4 P1): [[flachdachaufbauten-vier-typen-textbausteine]],
  [[werkplan-textapparat-abkuerzungen-schalungsplan]]
- `22_Terminplanung` (3 P1): [[terminplan-phasenkette-oeffentliche-bauherrschaft-leutschenbach]],
  [[grobterminplan-gewerkefolge-elementbau-leutschenbach]],
  [[feinterminplan-excel-vorlage-endspurt-baueingabe]]
- `26_Zeichendateien_Vorlagen` (1 P1):
  [[sanitaerapparate-vectorworks-montagehoehen-referenzblatt]]

Alle `status: emerging`, Fortschritt je Sektion im jeweiligen
`raw/inventar/buero-referenzen__*.md` Abschnitt «Destillat-Fortschritt».

**Geprüft: die übrigen Sektionen ohne Fortschritts-Abschnitt tragen alle P1 = 0**
(`07_Internet_Links`, `10_Konzep_Texte`, `11_Landschaftsarchitektur`,
`14_Modellfotos`, `15_Oberflaechenbehandlung`, `19_Puplikationen`,
`27_KV_Deffisierung`, `29_Kostenplanung`, `30_Lichtplanung`, `31_Klimadaten`,
`32_Checklisten`) — nichts offen dort.

**Damit sind alle P1-Positionen des Korpus `buero-referenzen` über sämtliche 23
inventarisierten Sektionen destilliert.** P2 bleibt in jeder Sektion offen (kein
Anspruch auf Vollständigkeit dort). Gemäss `KORPUS-QUEUE.md` gilt der Korpus erst
bei P1 **und** P2 als «erledigt» — dieser Zustand ist noch nicht erreicht, aber
der ertragreichere und dringlichere Teil ist es. Nächster Schritt gemäss Auftrag:
Korpus 4 `archiv-fachwissen` (eigene Spec fällig). Offene Fragen zu diesen
Artikeln in `wiki/QUESTIONS.md`.

**Erster Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Denkmalpflege` (Zeile 04
oben) — Lane FACHWISSEN, selber Tag, Fortsetzung nach Spec-Lauf.** Sektion vollständig
destilliert: alle 8 P1-Positionen, sieben Wiki-Artikel nach Sache statt Datei, alle
`status: emerging`, primär gegen die Originalquellen gelesen (nicht nur gegen die
Inventar-Zusammenfassung):

- [[erhaltungswert-bewertung-sia-merkblatt-2017]] — zwölf Bewertungskriterien +
  Werte-Matrix, Geltungsstand ungeklärt (nicht in `wissen/normen/` erfasst)
- [[denkmalpflege-begriffssystematik-charta-von-venedig]] — Begriffskette
  Instandhaltung bis Rekonstruktion, Charta-von-Venedig-Artikel (sekundäre Quelle,
  Wortlaut vor Verwendung zu verifizieren)
- [[trockenmauer-devisierung-svtsm-richtlinie]] — Devisierungslogik, zwei
  Mauerverband-Typen, fünf Mauerwerksarten
- [[naturstein-oberflaechenbearbeitung-portmann-merkblatt]] — acht
  Oberflächenbearbeitungen als Datierungshilfe (BABS, amtlich)
- [[kalk-oelanstriche-rezepturen-glaser]] — Kalk-/Kalkkasein-, Leimfarb- und
  Ölanstrich-Rezepturen, Bleiweiss-Datierungshilfe
- [[denkmalpflegerische-baudokumentation-gliederung-haus-jans]] — siebenteilige
  Dokumentationsgliederung, eigene Studienarbeit Raphael Jans 2007
- [[umbau-statt-neubau-kriterienkatalog-hassler]] — Sieben-Kriterien-Katalog,
  «Vergiftung durch Sanierung», Politik der Werterhaltung

Fortschritt in `raw/inventar/archiv-fachwissen__02_Denkmalpflege.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `-0`). Kein Fund
aus der Sperrliste (Sektion enthält keine Verträge/Bewerbungen/Adressen/Lohndaten).
P2 bleibt offen (u.a. Werkstoff-/Steinkonvolut-Scans, zweite Volltext-Zusammenfassung,
Prüfungsfragen mit den fünf Grundsätzen der Reparatur). Nächster Lauf gemäss Spec-Plan:
`03_Bauprozesse_I_II`, davor zwingend die Leutschenbach-Duplikatsprüfung gegen die
Artikelliste oben (Zeile 02, `18_Projektkostenplanung`).

**Zweiter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II` (Zeile
01 oben, grösster P1-Einzelfund) — Lane FACHWISSEN, selber Tag, Fortsetzung.**
Leutschenbach-Duplikatsprüfung vorab durchgeführt (mehrere P1-Positionen sind identische
Dateien oder dasselbe Objekt wie bereits in Korpus 3 destillierte Artikel — nicht erneut
destilliert, siehe `raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt
«Destillat-Fortschritt» für die vollständige Zuordnung). Vier echte Neuzugänge destilliert,
alle Primärquellen volltextlich gelesen:

- [[sia-102-2003-phasenanteile-zwei-rechenwerke]] — bestehender Artikel erweitert um ein
  drittes unabhängiges Rechenwerk (Objekt Eberle, Büro Christian Kerez, Kantonales
  Hochbauamt 26.01.2010), vollständiger Teilphasen-Stunden-/Honorarapparat
- [[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]] — CRB-
  Musterbeispiel auf drei Genauigkeitsstufen (eBKP-H 2012)
- [[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]] — vollständige Bezugsgrössen-Kürzelliste
- [[terminplan-dauern-kennwerte-wohnungsbau-tabelle8-plus-benchmark-eberle]] —
  Dauern-Kennwerttabelle Wohnungsbau plus realer EFH-Grobterminplan-Benchmark
- [[akutspital-pflegezentrum-umnutzung-referenzfall-oberdiessbach-2009]] — Referenzfall
  Umnutzung Akutspital→Pflegezentrum, Zweierzimmer-Problem, Kostenrahmen, Verfahren

Norm-Originale (SIA 112/102/416/142/500, VKF, VSS) gemäss Abgrenzung nicht destilliert.
Ein Cross-KB-Fund (Grobkostenmethodik-Fachtext Raphael Jans → `wissen/grobkosten`) und ein
Entwickler-Testfixture (SIA-451) sind nicht als Wiki-Artikel, sondern in
`wiki/QUESTIONS.md` #33–#36 vermerkt. **Damit ist Sektion `03_Bauprozesse_I_II` ohne
weiteren eigenständigen offenen P1-Artikel; P2 bleibt vollständig offen.**

**Register-Nachführung 29.08.2026 (Lane FACHWISSEN, selber Tag, Fortsetzung):**
`wiki/INDEX.md` «Sektionen nach Ertrag» für alle 20 archiv-fachwissen-Inventardateien
neu aufgebaut (siehe oben — zuvor waren nur vier archiv-Sektionen erfasst). Ergebnis:
die beiden grössten bisher unbekannten Funde, `02_Gestalt_Kulturverstaendnis` (146 P1)
und `01_Konstruktion` (101 P1), überholen `03_Bauprozesse_I_II` (58) als Träger der
Rangfolge. Beide wurden im selben Lauf destilliert (Details in den zwei folgenden
Absätzen).

**Dritter und vierter Destillat-Lauf Korpus `archiv-fachwissen` 29.08.2026 (Lane
FACHWISSEN, selber Tag, parallel durch zwei Unterläufe bearbeitet):**

*Sektion `01_Konstruktion`* — vier P1-Positionen (101 Dateien) auf neun Wiki-Artikel
verteilt, alle `status: speculative` (Normstand 1991–2010, vor Verwendung gegen
aktuelle Norm zu prüfen):

- [[fassadensysteme-typologie-sechs-systeme-hta-luzern]] — sechs Fassadensysteme mit
  Konstruktionsprinzip und sieben Systemanbietern
- [[anforderungskatalog-fenster-fassade-sechs-interessengruppen-gkp]] —
  Anforderungsraster Architekt/Bauherr/Nutzer/Bauphysik/Sicherheit/Bauablauf
- [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] — EnFK-Merkblatt
  Fenster (Juni 2009) plus Zeitkonstanten-/Speichermassen-Schichtdaten
- [[funktionale-ausschreibung-verfahrensmethodik]] — Zeitpunkt-Argument und Ablauf für
  Skill `ausschreibung`
- [[ahb-planungsgrundlagen-richtlinie-sieben-oekologische-zielvorgaben]] — sieben
  ökologische Zielvorgaben AHB Stadt Zürich (Datum im Dokument verifiziert: 12.10.2005)
- [[fassaden-feuchteschutz-sia-180-unterkonstruktion-dehnung-toleranz]] —
  Feuchteschutz nach SIA 180:1999 plus Unterkonstruktion/Dehnungsformel
- [[beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1]] —
  Geländekategorien I–IV, deutsche Richtlinie klar gekennzeichnet
- [[materialwahl-argumentationsraster-vier-referenzbaustoffe]] — Holz/Stein/Stahl/Glas
  mit Referenzbauten
- [[lignatur-hohlkasten-holzelemente-dach-deckenkonstruktion]] — Herstellerhandbuch
  Hohlkasten-Holzelemente

Der Flachdachaufbau aus `Oblicht.pdf` wurde **nicht** erneut destilliert — MD5-Vergleich
bestätigt Dateiidentität mit der bereits in `buero-referenzen/09_Konstruktion`
destillierten Quelle von [[flachdachaufbauten-vier-typen-textbausteine]]. Die
Detail-CD `01 2D Details` (P2, Rudolf-Müller-Lizenz) bleibt für einen späteren
P2-Lauf zurückgestellt. Offene Punkte in `wiki/QUESTIONS.md` #37–#40. Fortschritt in
`raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt «Destillat-Fortschritt».

*Sektion `02_Gestalt_Kulturverstaendnis`* — zehn P1-Positionen (146 Dateien) auf sieben
Wiki-Artikel verteilt, alle `status: emerging`:

- [[typografie-regelwerk-lernskript-jans-2007]] — Makro-/Mikro-Typografie-Regelsatz,
  eigenes Lernskript 2007, belegte Plakat-Schriftgrössen
- [[layout-vorgehensmodell-fragestunde-satzspiegel-produktion]] — vierstufiger
  Layout-Ablauf; Herkunft beim Gegenlesen als geschichtet erkannt (siehe
  `wiki/QUESTIONS.md` #42)
- [[wettbewerbsjury-kapitelfolge-gestaltungsplan-zollstrasse-ost-sbb]] — Jurybericht
  Zollstrasse Ost (SBB, zweistufig, 2014), § 85 PBG-Gestaltungsplan
- [[wettbewerbsbeschrieb-gliederung-staedtebau-struktur-funktion-material-kuessnacht]] —
  Gliederungsmuster Städtebau→Freiraum→Struktur→Funktion→Material
- [[betontechnologie-schwinden-sichtbeton-betonkernaktivierung-betonforum]] —
  Schwindarten, Sichtbeton-Qualitätsfaktoren, Betonkernaktivierung
- [[modellfoto-bildregie-perspektive-licht-tiefenschaerfe]] — Perspektive-/
  Lichtquellen-Entscheidungsfragen, Optikregeln
- [[begriffsapparat-kant-sprachstil-pruefraster-jans]] — Kant-Prüfraster, Eigentext-
  Beispiele, zwei geprüfte Architektenzitate

Das Raumprogramm Naturmuseum St.Gallen wurde **nicht** erneut destilliert — dieselbe
Datei wie die bereits bestehende Quelle von
[[raumprogramm-spaltenlogik-sia416-naturmuseum]], nur verlinkt. Offene Punkte in
`wiki/QUESTIONS.md` #41–#44 (u. a. eine korrigierte Begriffsordner-Zahl 598 statt der
im Phase-0-Inventar genannten 305). Fortschritt in
`raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md` Abschnitt
«Destillat-Fortschritt». Sperrlisten-Prüfung beider Sektionen: kein neuer Fund über die
bereits im Abschnitt «Sperren und Vorbehalte» oben zentral vermerkten Positionen hinaus.

**Damit sind die beiden ertragsstärksten `archiv-fachwissen`-Sektionen destilliert.**
Nächster Lauf gemäss Ertrag-Tabelle: `03_Bauprozesse_I_II` ist bereits abgeschlossen,
`02_Architekturtheorie` (21 P1) ist die nächste offene Position in der Trägerschicht,
danach `10_Protomodern` (13), `02_Architekturgeschichte` (11) und `02_Kunst_Geschichte`
(11, sehr dünn im Verhältnis zu 27'649 gesichteten Dateien). Vorsicht weiterhin bei
`04_Politik`/`05_Kultur_Gesellschaft_Stil`/`06_Reisen`/`07_Religion`
(Privatunterlagen-Vorbehalt, `06_Reisen` mit starkem Befund).

**Fünfter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie` (Zeile 04
oben) — Lane FACHWISSEN, selber Tag, Fortsetzung.** Sektion vollständig destilliert: alle 10
P1-Positionen, acht Wiki-Artikel nach Sache statt Datei, alle `status: emerging`, Quelle die
eigenen Fragen-Antworten aus Architekturtheorie III/IV (ETH gta, Moravánszky/Hildebrand,
2011–2014), primär gegen die Originalquellen gelesen (docx via `textutil`, PDF via PyMuPDF):

- [[tektonik-bekleidungstheorie-boetticher-semper-loos-frampton]] — Kernform/Kunstform,
  Bekleidungstheorie, Bekleidungsgesetz, Framptons Tektonik-Begriff, Deplazes-Begriffskonkordanz
- [[materialwahrheit-stoffwechseltheorie-semper-urtechniken]] — vier Elemente/Urtechniken Sempers,
  Ehrlichkeits-Einwand Therme Vals
- [[typus-modell-prototyp-trennschaerfe-architekturtheorie]] — Trennschärfe Typus/Modell/Prototyp
- [[funktionsbegriff-fassadendreiteilung-sullivan-haering-semper]] — fünf Funktionsbegriffs-Lesarten,
  Fassadendreiteilung als städtebauliches Argument
- [[ornament-decorum-angemessenheit-loos-semper-riegl]] — Decorum als Angemessenheitsbegriff
- [[stilbegriff-geschichte-styling-signatur-brand]] — Stilbegriff-Geschichte,
  Stil/Styling/Signatur/Brand
- [[genius-loci-ort-raum-nichtorte]] — Genius Loci, Nicht-Orte
- [[materialitaet-haptisch-optisch-riegl-bandmann]] — haptisch/optisch, Bandmanns
  Hemmungswiderstand
- [[textanalyseraster-19-punkte-architekturtheorie]] — eigenes Methodenraster
- [[begriffskonkordanz-theoretiker-literaturregister-architekturtheorie]] — Begriffs-Konkordanz +
  Literaturlandkarte, Sammelmappe1.pdf als Kompilat ohne Eigenwert erkannt

Fortschritt in `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt
«Destillat-Fortschritt». Kein Sperrlisten-Fund. P2 bleibt vollständig offen (rund 190
Vorlesungsmitschriften, 31 Syllabi, Vorlesungsfolien-Sammel-PDF). Nächster Lauf gemäss
Ertrag-Tabelle: `10_Protomodern` (13 P1).

**Sechster Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern` (Zeile 06
oben) — Lane FACHWISSEN, selber Tag, Fortsetzung.** Sektion vollständig destilliert: alle 13
P1-Positionen, elf Wiki-Artikel nach Sache statt Datei, alle `status: emerging`. Die Sektion
ist kein Kursarchiv, sondern das private, nie abgeschlossene Manifestprojekt «Protomodern»
von Raphael Jans (2013/14):

- [[protomodern-projektrahmen-professurenlandkarte]] — Projektidee, Professuren-Landkarte
  Modern/Proto Modern
- [[protofunktional-begriff-abgrenzung-funktionalismus]] — Leitbegriff der Sektion
- [[fuenf-punkte-gegenmanifest-corbusier-jans]] — Gegenmanifest zu Le Corbusier
- [[atmosphaeren-methode-ortsanalyse-hardware-software-erlebnis]] — Hardware-/Software-
  Erlebnis als Ortsanalyseraster
- [[backstein-materialargumentation-zwei-ausdrucksarten]] — Materialargumentation Backstein
- [[fassadenbeschreibung-methode-laon-rossi-analogie]] — Fassadenbeschreibungsmethode am
  Beispiel Laon
- [[kerez-forsterstrasse-einkleidung-gegen-semper-stoffwechseltheorie]] — Einkleidung statt
  Bekleidung
- [[bauen-im-bestand-haltungstext-die-stadt-war-vor-uns-da]] — Gast-Gleichnis Bauen im Bestand
- [[rohbauaesthetik-fassadenverteidigung-fussballstadion-zuerich-adi-meyer]] — Rohbauästhetik-
  Verteidigung, Fussballstadion Zürich
- [[entwurfs-phasenmodell-leitidee-iterativ]] — Entwurfs-Phasenmodell
- [[regel-und-ausnahme-stadtentwicklung-schett-jahreskurs]] — Mechanik des Stadtwachstums
  (Fremdtext Schett)

Fortschritt in `raw/inventar/archiv-fachwissen__10_Protomodern.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `47 0`). Kein
Sperrlisten-Fund (Sektion enthält laut Kurzbefund keine Verträge/Bewerbungen/Personaldossiers/
Adress-/Honorardaten; vorkommende Personennamen sind öffentliche Fachpersonen oder
Seminarteilnehmende mit Pseudonym, Letztere bewusst nicht in einen Artikel übernommen).
Urheberrecht beachtet: der Fremdtext Schett und die Vortragsmitschrift Adi Meyer sinngemäss
mit Fundstelle wiedergegeben, nur kurze gekennzeichnete Kernformulierungen direkt zitiert.
P2 (33 Positionen) bleibt vollständig offen. **Damit ist Sektion `10_Protomodern` für P1
vollständig destilliert.**

**Siebter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`
(Zeile 08 oben) — Lane FACHWISSEN, selber Tag, Fortsetzung.** Sektion vollständig
destilliert: alle 11 P1-Dateien, vier Wiki-Artikel nach Sache statt Datei:

- [[gebaeudeanalyse-raster-situation-volumetrie-grundriss-fassade]] — `status: emerging`,
  offizielle ETH-Prüfungsaufgabe + Musteranalyse Semper/ETH-Hauptgebäude + Übungsanalyse
  Haus Steiger, Vier-plus-eins-Raster Situation/Volumetrie/Grundriss/Fassade/Einordnung
- [[fachglossar-historische-bauteile-kirchenbau-gotik]] — `status: speculative`
  (Einzelquelle ohne Fachlektorat), 14 Kirchenbau-/Gotik-Begriffe mit Definition
- [[tessiner-tendenza-schweizer-architektur-seit-1970-argumentationsfundus]] —
  `status: emerging`, Autonomie-These der Tessiner Tendenza und die spätere Verschiebung
  zum Atmosphäre-Begriff (Šik, Zumthor, H&dM-Naturgeschichte)
- [[objektliste-architekturgeschichte-datierungen-eth]] — `status: emerging`, geprüfte
  Architekten-Objektliste (Tönnesmann/Hildebrand), bestätigt den im Phase-0-Inventar
  vermerkten Datierungsfehler im Semper-Portrait (1687-1753 falsch, korrekt 1803-1879)

**Technische Werkzeuglücke auf Station MacBook Pro festgestellt und umgangen:** weder
`pdftotext`/`poppler` noch Homebrew sind installiert; Read-Tool-Rendering von
textlayer-losen Scans scheitert deshalb ebenfalls (`pdftoppm` fehlt). Behelf in diesem Lauf:
`pip install --user pypdf` (kein Homebrew nötig) für Textlayer-PDFs. Ein 26-seitiger echter
Scan (`architekturgeschichte_begriffe_notizen.pdf`, 0 extrahierbare Zeichen) bleibt trotzdem
ungelesen — offen in `wiki/QUESTIONS.md`. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `45 0`). Kein
Sperrlisten-Fund. P2 (rund 160 Dateien) bleibt vollständig offen. **Damit ist Sektion
`02_Architekturgeschichte` für P1 vollständig destilliert — und damit ist die gesamte
Trägerschicht-Tabelle (Zeilen 01-09) für P1 abgearbeitet.** Nächste Position gemäss
Ertrag-Tabelle: `02_Kunst_Geschichte` (11 P1, sehr dünn im Verhältnis zu 27'649 gesichteten
Dateien) — einzige verbliebene Trägerschicht-Zeile, danach folgt die Mittelschicht
(P1 einstellig, angeführt von `02_Denkmalpflege`, bereits abgeschlossen, und
`01_Staedtebau`, 8 P1, offen).

**Achter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Kunst_Geschichte` (Zeile 09
oben) — Lane FACHWISSEN, selber Tag, Fortsetzung.** Fünf der sechs P1-Positionen destilliert,
vier Wiki-Artikel nach Sache statt Datei, alle `status: emerging` ausser dem ersten
(`speculative`, Einzelquelle ohne gesicherte Autorschaft):

- [[syntaktik-analyse-raster-design-kunst-architektur-sechs-ebenen]] — `speculative`,
  sechsstufiges Analyseraster Syntaktik/Syntax/Sigmatik/Ausdrucksqualitäten/Semantik/
  Pragmatik nach Kerner/Duroy, Wilkens, Ching, Fischer
- [[bildanalyse-dreischritt-bestand-komposition-interpretation]] — Dreischritt Bestand/
  Komposition/Interpretation plus Ittigs Fünf-Schritt-Kurzform «Über Bilder sprechen»
- [[betrachtungsweisen-typologie-quellenmethodik-kunstgeschichte]] — `speculative`
  (Wikipedia-Kompilat), vier Betrachtungsweisen phänomenologisch/hermeneutisch/
  strukturalistisch/ikonografisch
- [[bestand-umbau-argumentationsvorrat-altbau-als-ressource]] — sieben belegte
  Literaturfundstellen zur These «Umbau statt Neubau», vier Fallbeispiele ohne Kultstatus
- [[systemische-bauobjektanalyse-wirkungsmatrix-vernetztes-denken]] — fünf Analyseschritte
  Einflussgrössen/Wirkungsmatrix/Aktivitäts-Vernetzungs-Diagramm, HTA Luzern 2005

**Eine sechste P1-Position bewusst nicht destilliert:** `140706_Protomoderne_Maler.docx`
(eigener Entwurfshaltungstext von Raphael Jans, 2014) ist laut Inventar-Kurzbefund
Stimm-Material für den Stilkorpus/Twin-Harness, keine Fachdestillation — Routing-Frage in
`wiki/QUESTIONS.md` vorgelegt statt stillschweigend übersprungen oder falsch einsortiert.

Fortschritt in `raw/inventar/archiv-fachwissen__02_Kunst_Geschichte.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `33 0`). Kein
Sperrlisten-Fund über die bereits im Kurzbefund vermerkten drei Personendaten-Fundstellen
hinaus. P2 (1'876 Dateien) bleibt vollständig offen. **Damit ist Sektion `02_Kunst_Geschichte`
für P1 vollständig bearbeitet — und damit ist auch die Trägerschicht-Zeile 09
abgeschlossen.** Nächste Position gemäss Ertrag-Tabelle: Mittelschicht, angeführt von
`01_Staedtebau` (8 P1, `02_Denkmalpflege` mit ebenfalls 8 P1 ist bereits abgeschlossen).

**Zehnter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Entwerfen` (Zeile 13 oben)
— Lane FACHWISSEN, 29.08.2026, Fortsetzung.** Alle sechs P1-Positionen destilliert, fünf
Wiki-Artikel nach Sache statt Datei (zwei P1-Quellen zu einer Sache zusammengefasst, siehe
unten), alle `status: emerging`, Fundstellen mit Seitenzahl direkt aus den PDF-Textlayern
extrahiert (`pypdf`, Behelf mangels `pdftotext` auf dieser Station):

- [[flaechenerfassungsrichtlinie-rfb-stadt-zuerich-bewirtschaftungsplaene]] — verbindliches
  Planlieferungs-Handbuch der Stadt Zürich (IMMO/AHB), Version 16.0/2013: Liefertermine
  nach SIA-102-Phasen, Flucht-/Rettungssymbol-Layer, GF/NGF-Systematik methodisch (nicht
  normativ) referenziert
- [[bauherren-anforderungsprofil-preisguenstiger-wohnungsbau-stiftung-pwg-2016]] —
  Leitfaden Stiftung PWG Zürich: drei Hebel der Preisgünstigkeit, Grössen-/
  Belegungstabelle 2.5- bis 5.5-Zimmerwohnungen, Kritik an fliessenden Grossraumgrundrissen
- [[guenstiger-mietwohnungsbau-flaechenreduktion-hebel-bwo-halter-pensimo-2012]] —
  BWO/Halter/Pensimo-Studie: kompensatorisches Grundriss-Prinzip, quantifizierte
  Kosten-/Mietwirkung (−17 % Erstellungskosten, −37 % Miete pro Einheit), umgekehrte
  Kalkulationslogik Landwert→Miete
- [[wohnungsschluessel-flaechenkennwert-pruefraster-studienauftrag-freilager-albisrieden]]
  — fasst zwei P1-Quellen zusammen (Wohnungsschlüssel-Übersicht + Kennwerte-
  Verknüpfungsblatt, Studienauftrag Teilgebiet C 2010, plus Realisierungs-Flächenblatt
  Mühlethaler 2017): Vierergliederung Anteile-Mix/Ertragsfläche/Verkleinerungsregel/
  Überschreitungsausweis, Je-Wohnung-Prüfung statt Durchschnitt
- [[baubeschrieb-checkliste-vollstaendigkeit-steckdosenliste-seesicht-meggen]] —
  Vollständigkeits-Checkliste bis zur raumweisen Steckdosenliste, Ergänzung zu
  [[baubeschrieb-als-kostentraeger]] (dort BKP-Kostenträger-Fokus, hier
  Vollständigkeits-Fokus)

Fortschritt in `raw/inventar/archiv-fachwissen__01_Entwerfen.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Kein neuer Sperrlisten-Fund über die im
Phase-0-Inventar bereits dokumentierten vier Personendaten-Fundstellen hinaus (nicht
destilliert). Der Hinweis auf `00_Ideen`/`00_Entwurfshaltungen` als Twin-Harness-Material
(eigene Texte Raphael Jans, 2013/14) bleibt unbearbeitet liegen — Routing-Frage, kein
Fachartikel dieser KB. **Damit ist Sektion `01_Entwerfen` für P1 vollständig destilliert.**
Nächste Position gemäss Ertrag-Tabelle: weiterhin Mittelschicht, jetzt angeführt von den
verbliebenen unbearbeiteten Zeilen `01_Landschaftsarchitektur` (4 P1, Datenschutz-Vorbehalt
Klartext-Zugangspasswort in einer anderen Datei derselben Sektion, nicht in den P1-Dateien),
`01_Tragwerk` (4 P1, Datenschutz-Vorbehalt), `00_Allgemein` (3 P1),
`02_Architektur_Vermitteln` (3 P1, Datenschutz-Vorbehalt), `02_Bibliothek` (2 P1) und
`01_Innenarchitektur` (1 P1).

**Elfter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Landschaftsarchitektur`
(Zeile 15 oben) — Lane FACHWISSEN, 29.08.2026, Fortsetzung.** Alle vier P1-Dateien
gelesen (`pypdf`, Seitenzahlen extrahiert), drei davon zu vier Wiki-Artikeln destilliert;
die vierte (Dachbegrünung, `Unterlagen Kolloquium.pdf` S. 3-8) als **Cross-KB-Duplikat**
zu `wissen/bauprodukte/wiki/dachbegruenung-systeme.md` erkannt und **nicht** erneut
destilliert (dieser Artikel liegt ausserhalb der Schreib-Lane dieses Laufs; ein
Zusatzfund — Pflegeaufwand-Kennwert 1-2 Kontrollgänge/Jahr bei Extensivbegrünung — ist als
Routing-Hinweis in `wiki/QUESTIONS.md` vermerkt, nicht selbst eingepflegt):

- [[aussenbelaege-regelaufbauten-vogt-2012]] — Regelaufbauten Kiesweg/Asphalt/Rasen/Wiese/
  Schotterrasen/Rasenpflaster, Vogt-Broschüre 2012, inkl. Schweiz-Deutschland-Unterschied
  bei Saatgutmischungen (RSM vs. Herstellermischung UFA/OH)
- [[naturstein-materialkunde-bollinger-sandstein]] — Bollinger Sandstein: Mineralbestand,
  Vorkommen oberer Zürichsee, Schachtabbau in Naturschutzgebieten; ergänzt (nicht dupliziert)
  [[naturstein-oberflaechenbearbeitung-portmann-merkblatt]] (dort Bearbeitungstechnik-
  Datierung, hier Gesteins-/Vorkommenskunde eines konkreten Steins)
- [[baumpflanzung-pflanzgrube-kletterpflanzen-typologie]] — Pflanzgrubendimensionierung
  (6 m²/1,5 m grosskroniger Strassenbaum), Pflanzdichte als Gestaltungsfrage,
  Kletterpflanzen-Typologie (Selbstklimmer/Rankpflanzen); ZH-Grenzabstände bewusst **nicht**
  wiederholt, Verweis auf die dort massgebliche [[umgebungsgestaltung-und-einfriedungen]]
  in `wissen/baurecht`
- [[immergruene-sicht-heckenpflanzen-artenliste]] — 13 immergrüne Sicht-/Heckenarten,
  1,5-7 m Endhöhe, mit Neobiota-Warnhinweis zu *Prunus laurocerasus* (Kirschlorbeer)

Fortschritt in `raw/inventar/archiv-fachwissen__01_Landschaftsarchitektur.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Datenschutz-Befund der Sektion (Lieferantenliste
mit Klartext-Zugangspasswort, archivierte Hochschul-E-Mail mit Privatadressen) bereits im
Phase-0-Inventar korrekt als nicht erfasst dokumentiert, kein neuer Fund. **Damit ist
Sektion `01_Landschaftsarchitektur` für P1 vollständig destilliert** (P2, 24 Positionen,
bleibt offen).

**29.08.2026 (Lane FACHWISSEN, zwölfter Destillat-Lauf).** `01_Tragwerk` (4 P1)
vollständig destilliert, zwei Wiki-Artikel:

- [[grubenmann-kirchen-holzdachstuhl-typologie]] — drei Grubenmann-Dachstuhl-Dispositive
  mit datierten Referenzbauten Ostschweiz/ZH, Kennwerte Kirche Wädenswil (1764-1767),
  Killer-Konstruktionsschnitte mit Vollholz-Querschnitten, Bauabrechnung 1767 als
  historische Kostenkuriosität (54'873 Gulden)
- [[tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau]] — Schwartz' Argumentation
  Plastizitätstheorie vs. Elastizitätstheorie-«Schutzwall» (Zitate Menn, Polónyi, Torroja),
  Dreiklang Transparenz/Stringenz/Leichtigkeit im Brückenbau anhand Menn-Brückenpaar
  Letziwaldbrücke/Crestawaldbrücke

Fortschritt in `raw/inventar/archiv-fachwissen__01_Tragwerk.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Von der 191-seitigen Killer-Dissertation nur die
bereits als Einzelseiten vorliegenden S. 140-141 gelesen; die übrigen Seiten (u. a. die
Knotenpunkt-Details Hängesäule-Untergurt-Längsbinder, Streckbalken-Auflager) bleiben P2.
Kein neuer Datenschutz-Fund über den bereits im Phase-0-Inventar dokumentierten Stand
hinaus. **Damit ist Sektion `01_Tragwerk` für P1 vollständig destilliert** (P2,
31 Positionen, bleibt offen). Nächste Position gemäss Ertrag-Tabelle: `00_Allgemein`
(3 P1), danach `02_Architektur_Vermitteln` (3 P1, Datenschutz-Vorbehalt), `02_Bibliothek`
(2 P1), `01_Innenarchitektur` (1 P1) — danach ist die gesamte Mittelschicht (Zeilen 10-22)
für P1 abgearbeitet.

**29.08.2026 (Lane FACHWISSEN, dreizehnter Destillat-Lauf, Fortsetzung).** `00_Allgemein`
(3 P1) vollständig destilliert, zwei Wiki-Artikel:

- [[fachsystematik-14-kapitel-gliederungsraster-jans]] — eigenes 14-Kapitel-Gliederungsraster
  von Raphael Jans (2011), Kapitel 1 (Entwerfen) und 14 (Normen/Gesetze) am weitesten
  ausgearbeitet, Vorwegnahme von `wissen/architekten-synobsis` unter Kapitel 6.4
- [[archiv-ordnerschluessel-24-hauptordner-strukturfotos]] — die 24 Hauptordner (00-26,
  Lücken 05/08/12) als Landkarte für die weitere Inventarisierung dieses Korpus, mit
  belegtem Nummerierungsfehler-Fund bei den Unterordnern 07-09 von
  `15_Architekturvisualisierung`

Fortschritt in `raw/inventar/archiv-fachwissen__00_Allgemein.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Kein Sperrlisten-Fund (Sektion bereits im
Phase-0-Inventar als unbedenklich geprüft). Der Auftrag dieses Laufs beschrieb fälschlich
einen Stand ohne Spec/Destillat (Dispatch-Loop-Muster, s. `wiki/QUESTIONS.md` #54) — der
Lauf hat sich stattdessen an dieser Tabelle orientiert. **Damit ist Sektion `00_Allgemein`
für P1 vollständig destilliert** (P2, eine Position, bleibt offen). Nächste Position gemäss
Ertrag-Tabelle: `02_Architektur_Vermitteln` (3 P1, Datenschutz-Vorbehalt), danach
`02_Bibliothek` (2 P1), `01_Innenarchitektur` (1 P1) — danach ist die gesamte Mittelschicht
(Zeilen 10-22) für P1 abgearbeitet.

**29.08.2026 (Lane FACHWISSEN, vierzehnter Destillat-Lauf, Fortsetzung).**
`02_Architektur_Vermitteln` (3 P1) vollständig destilliert, drei Wiki-Artikel:

- [[protokoll-methodik-sechs-protokollarten-sprachregeln]] — sechs Protokollarten,
  Protokollrahmen, Sprachregeln (Konjunktiv I/II)
- [[interne-externe-kommunikation-musterbriefe-mit-funktionsglossen]] — Mängelrüge-Dramaturgie,
  Offerten-Pflichtfelder, vier E-Mail-Regeln
- [[sitzungsmoderation-organonmodell-harvard-methode]] — Prozessschema Sachgespräche,
  Diskussionsleitung, Harvard-Methode

Fortschritt in `raw/inventar/archiv-fachwissen__02_Architektur_Vermitteln.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Der im Phase-0-Inventar angekündigte
Datenschutz-Vorbehalt betrifft nur die P3-Titelblätter studentischer Musterarbeiten (weiterhin
gesperrt), nicht die drei P1-Positionen selbst. **Damit ist Sektion `02_Architektur_Vermitteln`
für P1 vollständig destilliert** (P2, 13 Positionen, bleibt offen). Nächste Position gemäss
Ertrag-Tabelle: `02_Bibliothek` (2 P1), danach `01_Innenarchitektur` (1 P1) — danach ist die
gesamte Mittelschicht (Zeilen 10-22) für P1 abgearbeitet.

**29.08.2026 (Lane FACHWISSEN, fünfzehnter Destillat-Lauf, Fortsetzung).** `02_Bibliothek`
(2 P1) vollständig destilliert, drei Wiki-Artikel:

- [[grundrisskompendium-wohnhochhaeuser-eth-hs14]] — 24 Referenzobjekte Wohnhochhaus-Typologie,
  drei vertiefte Fälle (Mies, MVRDV, Zölly Zürich)
- [[zuercher-hochhaus-staedtebau-gespraech-gmuer-meili-peter]] — Gespräch Gmür/Meili/Peter,
  mit Warnung zur didaktisch fiktiven Baurechtslockerung der Semesteraufgabe
- [[neufert-architects-data-fundstelle-bibliothek]] — Fundstellen-Verweis, kein
  Inhalts-Digest (Urheberrecht)

Fortschritt in `raw/inventar/archiv-fachwissen__02_Bibliothek.md` Abschnitt
«Destillat-Fortschritt», reiner Append. Kein neuer Sperrlisten-Fund; `Passwort.docx` bleibt
ungeöffnet und gesperrt. **Damit ist Sektion `02_Bibliothek` für P1 vollständig destilliert**
(P2, 320 Positionen, bleibt offen). Nächste und letzte Position der Mittelschicht-Tabelle:
`01_Innenarchitektur` (1 P1) — danach ist die gesamte Mittelschicht (Zeilen 10-22) für P1
abgearbeitet.

**29.08.2026 (Lane FACHWISSEN, sechzehnter Destillat-Lauf) — MEILENSTEIN.**
`01_Innenarchitektur` (1 P1) destilliert:
[[gastronomieausbau-kostendatenpunkt-vorderer-sternen-zuerich]]. Fortschritt in
`raw/inventar/archiv-fachwissen__01_Innenarchitektur.md`, reiner Append. **Damit ist P1 über
sämtliche inventarisierten Sektionen beider Korpora dieser KB (`buero-referenzen` und
`archiv-fachwissen`) vollständig destilliert.** Alle Zeilen 01-22 dieser Tabelle sind
abgearbeitet; die verbleibenden Sektionen in «Ohne P1, aber mit destillierbarem Rest» und «Ohne
Ertrag» unten haben laut Inventar P1=0 und werden nicht destilliert — vier davon
(`04_Politik`, `05_Kultur_Gesellschaft_Stil`, `06_Reisen`, `07_Religion`) ausdrücklich wegen
Privatunterlagen-Vorbehalt. Offen bleiben: P2 in praktisch jeder destillierten Sektion (über
700 Positionen kumuliert), sowie Phase 0 für 9 `buero-referenzen`- und 3
`archiv-fachwissen`-Sektionen (Liste in `QUESTIONS.md`). Nächster Schritt ist ein Entscheid,
keine Fortsetzung nach Ertrag: P2-Destillation beginnen oder erst die fehlende
Phase-0-Inventarisierung nachholen.

**29.08.2026 (Lane FACHWISSEN, siebzehnter Lauf — erster P2-Lauf).** Dispatch-Text dieses
Laufs beschrieb erneut fälschlich «kein Destillat, keine Spec» für die gesamte KB (fünftes
Beispiel desselben veralteten Dispatch-Musters, siehe Memory-Eintrag). Da die
Phase-0-Nachholung ein Entscheid Raphaels ist (`QUESTIONS.md` #1), hat dieser Lauf
stattdessen mit der P2-Destillation begonnen, an der ertragsstärksten Sektion
`02_Gestalt_Kulturverstaendnis` (Zeile 01): zwei der fünf P2-Positionen bearbeitet —
Bauwelt-36/2012-Dichteheft → [[dichte-typologien-vergleich-muenchen-bauwelt-2012]],
Allreal-Gestaltungsplan-Präsentation Richti-Areal Wallisellen (aus der Position
`Stadtwanderung`) → [[gestaltungsplan-verfahren-kennzahlen-richti-areal-wallisellen-allreal-2009]].
Zwei Positionen (Booklet-/Plakatdarstellungs-Beispiele) bleiben laut Triage bewusst
undestilliert (reine Anschauung). Fortschritt in
`raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md`, reiner Append
(`git diff --numstat` 38/0 geprüft). P2 dieser Sektion bleibt zu drei Positionen offen
(Begriffs-DOCX teilweise erledigt im ersten Lauf, Stadtwanderung teilweise, Booklet-/
Plakatdarstellungs-Beispiele bewusst nicht). Nächster Lauf nach P2-Ertrag: Sektion
`01_Konstruktion` (101 P1/8'791, P2-Bestand dort noch nicht gesichtet) oder Fortsetzung
in derselben Sektion mit den übrigen P2-Resten — Entscheid beim nächsten Lauf.

**29.08.2026 (Lane FACHWISSEN, achtzehnter Lauf).** Dispatch-Text dieses Laufs beschrieb
erneut fälschlich «kein Destillat, keine Spec» für die gesamte KB (sechstes Beispiel
desselben veralteten Dispatch-Musters, siehe Memory-Eintrag Lane FACHWISSEN). Lauf hat
sich am realen Stand orientiert und die drei laut siebzehntem Lauf noch offenen
P2-Positionen der Sektion `02_Gestalt_Kulturverstaendnis` abgeschlossen: die restlichen
39 eigenen Begriffe-DOCX-Texte vollständig gelesen (`textutil`-Extraktion), neun
destilliert (drei Ergänzungen + drei Zitate im bestehenden
[[begriffsapparat-kant-sprachstil-pruefraster-jans]], drei neue Artikel
[[raumplan-adolf-loos-oekonomische-begruendung]],
[[praesenz-begriff-olgiati-lyotard]], [[manhattanismus-koolhaas-monumentalitaet]], ein
Glossar [[architekturbegriffe-glossar-serliana-architecture-parlante-stadtbegreifen]]),
rund 25 Texte als zu dünn/fachfremd bewusst nicht destilliert (Details im
Begriffsapparat-Artikel «Offene Punkte»), ein Fund als Wikipedia-Übernahme identifiziert
und wie die bestehenden X-Ausdrucke behandelt. Zusatzfund aus derselben Quelldatei-Gruppe
(Moravánszky-Exposé) als Rezeptionsgeschichte-Abschnitt in
`materialwahrheit-stoffwechseltheorie-semper-urtechniken.md` (Sektion
`02_Architekturtheorie`) ergänzt. Die beiden übrigen Positionen (Booklet-/
Plakatdarstellungs-Beispiele) bestätigt als keine Destillationskandidaten. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md`, reiner Append
(`git diff --numstat` 45/0 geprüft). **Damit ist Sektion `02_Gestalt_Kulturverstaendnis`
für P1 und P2 vollständig destilliert.** Nächster Lauf nach P2-Ertrag: Sektion
`01_Konstruktion` (101 P1/8'791, P2-Bestand dort noch nicht gesichtet) — der
Entscheidungspunkt Raphaels (P2 systematisch fortsetzen vs. Phase-0-Nachholung für die
12 offenen Sektionen, `QUESTIONS.md` #1) bleibt weiterhin offen und unverändert.

## 260830 — Neunzehnter Destillat-Lauf (Korpus 4, Sektion `01_Konstruktion`, zweiter P2-Lauf)

Erster gezielter P2-Lauf der Sektion `01_Konstruktion` (nach dem P1-Vollabschluss der dritten/
vierten Läufe vom 29.08.2026). Zwei der vier im Inventar gelisteten P2-Positionen bearbeitet,
gemäss Auftrags-Reihenfolge:

- **`02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/ResearchDeckenstruktur.pdf`
  (Deckenaufbauten-Vergleichsstudie) — destilliert.**
  [[deckenaufbauten-vergleichsstudie-lichte-raumhoehe-konstruktionsraster]]: lichte Raumhöhe
  und Konstruktionsraster-Profilmasse von neun realisierten Bauten (R. Schwarz, SANAA, Von
  Ballmoos Krucker, Mendes da Rocha × 3, Caruso St John, Herzog & de Meuron, Maja Lalić), am
  Original per PyMuPDF-Rendering visuell verifiziert (reine `pypdf`-Text-Extraktion ordnete die
  Zahlen nicht eindeutig den Massachsen zu). Zwei h-Werte (Mendes da Rocha, Haus Milan und
  Kindertagesstätte São Bernardo) im Original ohne Dezimaltrennzeichen beschriftet und deshalb
  als unsicher gekennzeichnet, nicht stillschweigend geglättet.
- **`01_Technische_Inst_I_II/` Lüftungsvorlesung — destilliert.** Zwei Artikel:
  [[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]] (Aufgaben der
  Lüftung, CO2-Physiologie, pAR-/fAR-Tabellen) und
  [[lueftungssystematik-zuluftfuehrung-waermerueckgewinnung-eth-leibundgut]] (Zu-/Abluftführung,
  Quell-/Verdrängungs-/Mischlüftung, vier WRG-Bauarten mit Rückwärmezahlen). Quelle:
  `02_Vorlesungsfolien/110916_Webseite/03_Luftung.pdf` (Prof. H.-J. Leibundgut, ETH Zürich,
  August 2008, 41 Seiten, vollständig gelesen) — die im Inventar behauptete Textebene wurde am
  Original selbst verifiziert (nicht blind aus der Inventar-Zusammenfassung übernommen), Befund
  bestätigt sich. **Norm-Diskrepanz entdeckt und nicht stillschweigend geglättet:** die Folie
  zitiert die fAR-Tabelle «nach SIA 384/1», der heutige Registerstand in `wissen/normen` weist
  SIA 384/1:2022 jedoch als Heizungsanlagen-Norm aus, die Lüftungsauslegung läuft heute über SIA
  382/1:2014 — als offener Punkt im Artikel und in `wiki/QUESTIONS.md` vermerkt.

**Nicht destilliert in diesem Lauf, aus Zeit-/Budgetgründen zurückgestellt (P2, für den
nächsten Lauf dieser Sektion):** `04_Bauphysik_Energie/02_Skripte`, `01_Vorlesungsfolien`,
`03_Uebungen` (153 Dateien, Bauphysik I–III ETH Zürich) und der systematische Teil von
`02_Bauelemente/` (209 Dateien, Bauteil-Typologien Decke/Boden, Dach, Öffnung/Fenster, Treppen).
Beide inhaltlich intakt und laut Inventar für einen P2-Lauf geeignet.

**Sperrliste-Prüfung:** keine neuen Funde, keine der sechs gesperrten Positionen berührt
(`00_Baustoffkonzept/Baustoffadressen`, `09_Konstruktion/28_Konstruktionaufbauten` ausserhalb
Lignatur, `01 2D Details`, `01_Baustoff_Materialitaet/` Materialordner, `.band`/`.aif`,
`06_Construction_Caruso/`). `06_Construction_Caruso/` in diesem Lauf nicht erneut geprüft
(Inventar-Befund «keine Textebene» aus dem Erst-Sweep übernommen, nicht neu verifiziert).
Fortschritt in `raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` geprüft).

## 2026-08-30 — P2-Lauf Korpus `buero-referenzen`, Sektion `18_Projektkostenplanung` (Lane FACHWISSEN, Station MacBook Pro)

**Sektion `18_Projektkostenplanung` (Zeile 05 der Trägerschicht-Tabelle) ist jetzt auch für
P2 abgeschlossen** — vier der fünf P2-Positionen destilliert, eine begründet
übersprungen (siehe `raw/inventar/buero-referenzen__18_Projektkostenplanung.md` Abschnitt
«Destillat-Fortschritt (P2, ...)» und `QUESTIONS.md` #65). Drei neue Wiki-Artikel:

- [[personaleinsatzplanung-rollen-projektphase-honorarkalkulation-efh-allgaier]] —
  Rollen-Prozentsatz-Matrix über Projektphasen mit Personenmonat-Hochrechnung, plus
  Honorar-Faustformel Lohnansatz × Unkostenfaktor; vierte unabhängige Bestätigung der
  SIA-102:2003-Phasenanteile (nachgetragen in
  [[sia-102-2003-phasenanteile-zwei-rechenwerke]]).
- [[baunebenkosten-anlagewert-anlagekosten-definitionen]] — kurze Begriffsdefinitionen,
  `status: speculative` (Quelle unbelegt).
- [[oeffentliche-kreditabrechnung-nachtragskredit-mechanik-balzers-fl]] —
  Kreditgenehmigungs-/Nachtragskredit-Mechanik, Fremdrecht (FL) ausdrücklich gekennzeichnet,
  Personendaten Dritter aus demselben Protokoll bewusst nicht destilliert.

**Hinweis zur Lauf-Koordination:** Dieser Lauf hat bewusst den Korpus `buero-referenzen`
statt `archiv-fachwissen` bearbeitet, weil zeitgleich ein zweiter Lauf auf Station Macmini
am Korpus `archiv-fachwissen` (Sektion `01_Konstruktion`) aktiv war (siehe CHANGELOG
2026-08-30 und `QUESTIONS.md` #64). Damit ist der Korpus `buero-referenzen` jetzt insgesamt
weiter fortgeschritten als zuvor angenommen — Register unten in den Kennzahlen und der
Fussnote noch nicht neu gezählt, da die übrigen 22 Sektionen dieses Korpus bislang keinen
systematischen P2-Durchgang hatten.

## 260830 — Zwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Konstruktion`, dritter P2-Lauf)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», elftes Beispiel
desselben Musters, siehe Memory-Eintrag Lane FACHWISSEN); Lauf orientierte sich am realen
Stand (`KORPUS-QUEUE.md`, dieses Register). Vor Arbeitsbeginn `ps aux` auf Parallel-Instanzen
geprüft: kein Duplikat dieser Lane (der einzige `claude -p`-FACHWISSEN-Prozess war der Lauf
selbst), lediglich NORMEN-PRUEFSTAND und BAURECHT-THALWIL liefen parallel auf unabhängigen KBs.

Von den zwei laut neunzehntem Lauf offenen P2-Positionen bearbeitet: `02_Bauelemente/`
systematischer Teil (209 Dateien). Alle 17 Unterordner auf Nicht-Bild-Dateien durchsucht;
Ergebnis überwiegend Fotos/CAD/Bildscans ohne Textebene. Zwei Artikel destilliert:

- [[phaenomen-eingang-typologie-schwellenraum-eth-schwartz]] — fünfteilige
  Schwellen-Typologie (lineare Schwelle → Schwellenraum → Antizipation → Verzögerung →
  Übergänglichkeit) und Massstabskette Stadt-/Quartiers-/Gebäude-Eingang, aus derselben
  ETH-Lehrveranstaltung («Tragwerksentwurf», Prof. Schwartz) wie
  [[tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau]], aber eigenständige
  Vorlesungseinheit ohne Duplikatsrisiko.
- [[pilzdecken-fruehgeschichte-schweiz-maillart-giesshuebel]] — Einzelfund aus einem
  urheberrechtlich geschützten Essay-Heft (René Furer, ISBN 978-3-9523262-6-8): zwei
  Datierungspunkte für frühen Zürcher Stahlbetonbau (Maillart Stauffacherbrücke 1899,
  erste Pilzdecke Lagerhaus Giesshübel 1910), nur dieser eine Fakt sinngemäss übernommen,
  der Rest des Essays bewusst nicht destilliert (kein klar abgrenzbarer Fachbaustein).

Bewusst nicht destilliert: eine eigene Studienarbeit Raphael Jans (HTA 2007), eine private
E-Mail-Korrespondenz Raphael Jans mit einem Studienkollegen (2009, kein Sperrlisten-Fund im
engeren Sinn, aber private Korrespondenz), ein deutsches Dachdecker-Fachmagazin (68 Seiten,
überwiegend Hersteller-Marketing), eine Literaturlisten-Scanseite, drei isolierte
Sheddach-Einzelfolien ohne vollständigen Foliensatz, diverse reine Bildscans. Details je
Position in `raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30», reiner Append (`git diff --numstat` 54/0
geprüft).

**Weiterhin offen (P2, für den nächsten Lauf dieser Sektion):** `04_Bauphysik_Energie/
02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien, Bauphysik I–III ETH Zürich)
— in diesem Lauf aus Zeit-/Budgetgründen nicht begonnen. Danach ist Sektion `01_Konstruktion`
für P1 und P2 vollständig. Der Entscheidungspunkt Raphaels (P2 systematisch für die übrigen
Sektionen vs. Phase-0-Nachholung, `QUESTIONS.md` #1/#58/#60/#63) bleibt unverändert offen und
wurde in diesem Lauf bewusst kein weiteres Mal wiederholt.

## 260830 — Einundzwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Konstruktion`, vierter P2-Lauf, ABSCHLUSS)

Dispatch-Text erneut veraltet (zwölftes Beispiel, Memory `project_fachwissen-dispatch-loop`);
Lauf orientierte sich am realen Stand. `ps aux` vor Arbeitsbeginn geprüft: kein
FACHWISSEN-Duplikat.

Die letzte laut zwanzigstem Lauf offene P2-Position bearbeitet: `04_Bauphysik_Energie/
02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien). Kernquelle: Skript
«Bauphysik III, FS 2009» (Dr. H. Manz, ETH Zürich), Kapitel 3–7 plus Anhang vollständig per
`pypdf` gelesen (Kapitel 1–2 bereits in früheren Läufen destilliert). Drei Wiki-Artikel:
[[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]] (Kap. 3:
Eindringtiefe, dynamische Wärmekapazität, Zeitkonstante τ=d²/a, Aussen- vs. Innendämmung),
[[luftdichtheitsphysik-winddruck-thermischer-auftrieb-blower-door-eth-bauphysik-iii-manz]]
(Kap. 5: Winddruck-Cp, Kamineffekt, Blower-Door n50/va,4), und
[[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]]
(Kap. 6: Zeitkonstante τ=C/H, Gewinn/Verlust-Verhältnis γ=G/H, Gebäudesimulationsbeispiel).

Kapitel 4 (Transparente Bauteile) und Kapitel 7 (Energie und Nachhaltigkeit) sowie die
Anhang-Baustofftabellen bewusst nicht destilliert: Registerprüfung ergab vollständige
inhaltliche Abdeckung durch die aktuellere, `established`-geführte KB `wissen/energie`
(g-Wert/Uw, sommerlicher Wärmeschutz, graue Energie, Minergie, U-Werte, Dämmstoff-λ) —
Routing-Hinweis `wiki/QUESTIONS.md` #66, Details CHANGELOG 2026-08-30.

**Damit ist Sektion `01_Konstruktion` (Korpus `archiv-fachwissen`) für P1 UND P2 vollständig
abgeschlossen.** Fortschritt in `raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30», reiner Append (`git diff --numstat` 36/0
geprüft). Sperrliste-Prüfung: keine neuen Funde. Nächster Schritt gemäss Queue-Regel: die
nächste Sektion des Korpus `archiv-fachwissen` nach Ertrag (siehe «Sektionen nach Ertrag»
oben), oder der weiterhin offene Entscheidungspunkt Raphaels (`QUESTIONS.md`
#1/#58/#60/#63) zwischen weiterer P2-Priorisierung und Phase-0-Nachholung der 12 noch
offenen Sektionen.

## 260830 — Zweiundzwanzigster Destillat-Lauf (Korpus 4, Sektion `03_Bauprozesse_I_II`, erster P2-Lauf)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station
fälschlich als «MacBook Pro» bezeichnet — `scutil --get LocalHostName` zeigt **Macmini**,
dreizehntes Beispiel desselben Musters, Memory `project_fachwissen-dispatch-loop`). Lauf
orientierte sich am realen Stand (`KORPUS-QUEUE.md`, dieses Register). `ps aux` vor
Arbeitsbeginn geprüft: kein FACHWISSEN-Duplikat, nur der eigene Prozess.

Mit `01_Konstruktion` (P1+P2 vollständig) folgt gemäss Queue-Regel «nächstgrösste Sektion
nach Ertrag» die drittgrösste Sektion `03_Bauprozesse_I_II` (58 P1, P1 bereits im zweiten
Lauf dieses Korpus abgeschlossen; P2 mit 96 Positionen bislang vollständig offen). Drei
neue Wiki-Artikel:

- [[kostenvoranschlag-merkblatt-oeffentliche-bauherrschaft-reserven-verwaltungskosten]] —
  GSZ-Kostenvoranschlag-Merkblatt 2013: Reserven-Prozentsätze BKP 61/62,
  Verwaltungskostenzuschlag 7,5 %, Kostenumfang im Verpflichtungskredit
- [[ebkp-h-2012-gliederungslogik-elementarten-oak-eak-kataloge]] — eBKP-H-Gliederungslogik
  (Hauptgruppe/Elementgruppe/Element), Elementarten, Verweis auf CRB-Kataloge OAK/EAK
  (Kennwerte selbst nicht reproduziert, Copyright); rückverlinkt mit den beiden bereits
  bestehenden eBKP-H-Artikeln dieser Sektion
- [[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]] — drei ETH-Checklisten
  (Kontext-/Tektonik-Analyseraster, Bauelement-Glossar, Abgabe-Deliverable-Liste), `status:
  speculative`

**Wichtiger Cross-KB-Befund:** `schaetzungsanleitung_kap5.pdf` (P2-Hauptkandidat laut
Inventar) ist bei Volltextprüfung bereits **vollständig** in
`wissen/immobilienbewertung/wiki/realwert-sachwert.md` destilliert (Tab. 2/3/9/10/11,
Lebensdauer/wirtschaftliches Alter/Wertminderung mit Berechnungsbeispiel) — kein
Doppelartikel geschrieben, nur in der Inventardatei vermerkt. Ausserdem mehrere
Norm-/Urheberrechts-Positionen bewusst nicht hier destilliert (VKF-Fluchtwegelängen,
VSS-Sichtzonen, SIA-500-Sekundärliteratur — gehören zu `wissen/normen`; KBOB-Honorarempfehlung
2002 eher zu `honorarberechnung-sia102`, Cross-KB-Hinweis in `QUESTIONS.md`).

**P2 dieser Sektion bleibt zu rund 15–20 Positionen offen** (Bauprozess-Systematik Menz,
Ausschreibungsbeispiele mit Anonymisierungsprüfung, Baubeschrieb-Musterbeispiel) — Details
`raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt «Destillat-Fortschritt —
Ergänzung 2026-08-30», reiner Append (`git diff --numstat` 73/0 geprüft). Der
Entscheidungspunkt Raphaels (`QUESTIONS.md` #1/#58/#60/#63) bleibt unverändert offen und
wurde in diesem Lauf bewusst kein weiteres Mal wiederholt.
uninventarisierten Sektionen.

## 260830 — Vierundzwanzigster Destillat-Lauf (Korpus 4, Sektion `03_Bauprozesse_I_II`, vierter P2-Lauf)

Dispatch-Text erneut veraltet (46. Beispiel, Memory `project_fachwissen-dispatch-loop`), am
realen Stand weitergearbeitet. **Prozessfehler in diesem Lauf:** vor Arbeitsbeginn nur den
letzten `## Destillat-Fortschritt`-Abschnitt der Inventardatei geprüft (`tail`), nicht die
beiden vorherigen — dadurch zwei Positionen erneut begonnen, die im ersten P2-Lauf dieser
Sektion bereits verarbeitet waren (`06_Checklisten/*.doc`, bereits als
[[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]] destilliert). Noch im
selben Lauf korrigiert: eigener Duplikat-Artikel-Entwurf gelöscht, bevor er gesichert wurde.

Zwei frühere Voreinschätzungen bei genauerer Prüfung korrigiert, zwei neue Artikel:

- [[schaetzungsanleitung-lageklassenschluessel-landwertanteil]] — die
  Lageklassenschlüssel-Methode (Tab. 6-8 derselben `schaetzungsanleitung_kap5.pdf`, die im
  ersten P2-Lauf als «kein Mehrwert» eingestuft worden war) ist eine eigenständige,
  wiederverwendbare Bewertungslogik (vier gewichtete Lagekriterien → Landwertanteil-Kurve),
  die in `wissen/immobilienbewertung` fehlt. Die zugehörige
  Kapitalisierungssatz-Zuschlagssystematik derselben Quelle bleibt zu Recht unangetastet
  (bereits in `wissen/immobilienbewertung/wiki/ertragswert-dcf.md` destilliert).
- [[kbob-2002-gleitpreisklausel-teuerungsabrechnung-honorargrundprozentsatz]] — die
  KBOB-2002-Honorarempfehlung war als reiner Cross-KB-Kandidat zurückgestellt worden
  (`QUESTIONS.md` #67), obwohl diese KB bereits zwei Honorarmechanik-Artikel aus Korpus 3
  führt. Gleitpreisklausel-Formel und Honorargrundprozentsatz-Kurve (subventionierte Bauten)
  jetzt destilliert, Zeittarif-Kategorien-Teil bewusst nicht erneut (Duplikat zu
  [[zeittarif-mechanik-tarifblatt-stgallen-2009]]). `QUESTIONS.md` #67 mit Auflösungsnotiz
  ergänzt.

Fortschritt in `raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, vierter Lauf dieser Sektion)», reiner
Append (`git diff --numstat` 51/0 geprüft). **Lehre, im Append festgehalten:** vor
Bearbeitung einer Sektion IMMER alle bisherigen `## Destillat-Fortschritt`-Abschnitte lesen,
nicht nur den letzten. Kein schnell erschliessbarer P2-Rest mehr in dieser Sektion; nächster
Lauf sollte gemäss Queue-Regel zur nächstgrössten Sektion mit offenem P2 übergehen
(`01_Tragwerk`, `02_Architektur_Vermitteln` oder `01_Landschaftsarchitektur`, je 12
P2-Zeilen, bisher unbearbeitet).

## 260830 — Fünfundzwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Tragwerk`, erster P2-Lauf)

Vor Arbeitsbeginn `ps aux`/Prozessabstammung geprüft: zwei `claude-run.sh`-Wrapper-Prozesse
für dieselbe Lane gefunden (PID 1452/1459), aber per Elternschaftskette als verschachtelte
Wrapper derselben Instanz identifiziert (`1452 → 1459 → 1460`), keine echte Doppel-Instanz.
`KORPUS-QUEUE.md`/`CHANGELOG.md` statt Dispatch-Text konsultiert (Dispatch behauptet erneut
fälschlich «noch kein Destillat und keine Spec», real: beide Specs stehen, P1 in beiden
Korpora vollständig, mehrere P2-Läufe abgeschlossen).

`01_Tragwerk` (Sektion mit 31 offenen P2-Positionen, nächstgrösste gemäss Queue-Empfehlung)
bearbeitet: zwei Quellen vollständig gelesen, zwei neue Artikel:

- [[formfindung-experimenteller-tragwerksentwurf-frei-otto-stuttgart21]] — Methode
  Selbstbildungsprozess nach Frei Otto (Formfindung über physische Analogmodelle statt
  Berechnung), Fallbeispiel Stuttgarter Bahnhof/Stuttgart 21 (Seifenhaut-Minimalflächen,
  Umkehr Hängemodell zu Druckschale, Formfindungsprogramm «Tensyl»)
- [[literaturregister-holzbau-1876-1993]] — rund 100 Titel Holzbau-Fachliteratur 1876-1995
  nach Epochen geordnet, mit Anschluss an [[grubenmann-kirchen-holzdachstuhl-typologie]]
  (Dubas/Gehri 1983)

Fortschritt in `raw/inventar/archiv-fachwissen__01_Tragwerk.md` Abschnitt
«Destillat-Fortschritt» (zweiter Abschnitt dieses Namens in der Datei, reiner Append,
`git diff --numstat` 22/0 geprüft) — vor Arbeitsbeginn beide vorhandenen
`## Destillat-Fortschritt`-Abschnitte gelesen (Lehre aus dem 24. Lauf befolgt), keine
Doppelbearbeitung. Kein neuer Datenschutz- oder Sperrlisten-Fund; Sperrvermerk Seite 4 des
Readers `111002_Reader_alle_Seiten.pdf` weiterhin nicht angetastet. 29 P2-Positionen bleiben
offen (u. a. Killer-Knotenpunktdetails S. 138-144, Werkschau-Register der
Abschlussvorlesung, drei Kraftfluss-Darstellungsvarianten, Randbedingungs-Muster
«Bridging the Gap», Counterpoise-Erläuterungstext). Nächster Lauf: entweder weiter in
`01_Tragwerk` oder gemäss Queue-Regel zu `02_Architektur_Vermitteln`/
`01_Landschaftsarchitektur` wechseln.

## 260830 — Sechsundzwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Tragwerk`, zweiter P2-Lauf)

Dispatch-Text wie in den letzten gut 20 Läufen veraltet (behauptet «noch kein Destillat und
keine Spec», reale Station laut `scutil --get ComputerName` Macmini statt der im Dispatch
genannten «MacBook Pro») — Auftrag stattdessen am realen Stand aus `KORPUS-QUEUE.md` und
dieser Datei ausgerichtet, siehe Memory `project_fachwissen-dispatch-loop` (48. Beispiel).
`ps aux` zeigte nur den eigenen `claude`-Prozess, keine Doppel-Instanz.

Vier der fünf im Vorlauf namentlich offenen P2-Positionen in `01_Tragwerk` bearbeitet:

- Killer-Dissertation-Knotenpunkte (Einzelseiten S. 138-144, Fig. 95/99-102) vollständig
  gelesen und als neue Abschnitte «Knotenpunkt-Details des Hauptdachstuhls» und
  «Baufinanzierung durch Platzverkauf» in
  [[grubenmann-kirchen-holzdachstuhl-typologie]] eingefügt (kein neuer Artikel, gleiche
  Quelle/gleiches Gebäude wie der bestehende P1-Artikel; damit ist dessen «Offen»-Punkt zu
  den Knotenpunkten aufgelöst).
- Werkschau-Register der Abschlussvorlesung (`TWE IV_Vorlesung_20110513_Abschluss.pptx`,
  135 Folien, nur Bildunterschriften ausgewertet) → neuer Artikel
  [[werkregister-tragwerksentwurf-schwartz-architekten-1992-2011]] (15 Bauten/Wettbewerbe
  1992-2011 mit Architekt/Ingenieur/Jahr; auffällige wiederkehrende Achse Kerez/Schwartz,
  cross-referenziert zu [[tragwerksbeschrieb-leutschenbach-kennwerte]] und
  [[kahn-monumentalitaet-form-evokes-function-post-miesismus]]).
- Counterpoise-Erläuterungstext (`Counterpoise.doc`, vollständig) → neuer Artikel
  [[counterpoise-tischtragwerk-erlaeuterungstext-massstabstransfer]] (Argumentationsmuster
  Tragwerk als Ausdrucksmittel, Massstabstransfer Hochbau zu Möbeldesign).
- Randbedingungs-Muster «Bridging the Gap» (`Bridging the Gap.pdf` + `Aufgabe2.docx`,
  beide vollständig) → neuer Artikel
  [[aufgabenstellung-randbedingungen-muster-bridging-the-gap]] (Sechsteilung einer
  Aufgabenstellung, harte Randbedingungen als disjunkter Einzelsatz-Block).

Gegen bestehende Wiki-Artikel geprüft: keine Duplikate (Grep auf «Counterpoise», «Bridging
the Gap», «Kongresshaus Davos», «Leutschenbach», «MFH Forsterstrasse», «Ponte Polmengo» über
alle KBs, nur die bereits bekannten Leutschenbach-Kostenartikel als Cross-Referenz
verlinkt, nicht dupliziert). `git diff --numstat` auf die Inventardatei zeigt 32/0 (reiner
Append). Kein neuer Datenschutz- oder Sperrlisten-Fund; Sperrvermerk Seite 4 des Readers
`111002_Reader_alle_Seiten.pdf` weiterhin nicht angetastet (Reader in diesem Lauf nicht
angefasst).

25 P2-Positionen bleiben offen: die drei Kraftfluss-Darstellungsvarianten desselben
Brückenlängsschnitts (reine Bilddiagramme ohne Text — ein eigener Artikel dazu wäre dünn,
methodisch bereits in der Inventardatei unter «Was hier für JANS drinsteckt» Punkt 6
beschrieben), die restlichen Planserien/PLN-Dateien (P3, nicht P2) sowie vier Bildscans ohne
Textlayer (ArchPlus, Archithese, Menn, Starke Strukturen — OCR nötig). Nächster Lauf: entweder
die Kraftfluss-Bilder/Bildscans klären (OCR-Weg prüfen, `connectors/WEGE.md`), oder gemäss
Queue-Regel «nächstgrösste Sektion nach Ertrag» zu `02_Architektur_Vermitteln` oder
`01_Landschaftsarchitektur` (je rund 12 P2-Positionen) wechseln.

## 260830 — Siebenundzwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Tragwerk`, dritter P2-Lauf, 49. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet (behauptet «noch kein Destillat und keine Spec ... 2
Wiki-Artikel», Station fälschlich «MacBook Pro») — `scutil` bestätigt Macmini, `ps aux` keine
Doppel-Instanz, am realen Stand aus `KORPUS-QUEUE.md`/`CHANGELOG.md` weitergearbeitet.

Zwei P2-Positionen destilliert, eine gelesen ohne eigenen Sachinhalt:

- `Dissertation/eth-20590-01_abstract.pdf` (Dateiname irreführend, tatsächlich das
  Schlusskapitel «D. Schluss» S. 186-190 samt Werkverzeichnis) + die Mechel-Tafel von 1803
  zur Schaffhauser Rheinbrücke (vollständig) → neuer Artikel
  [[grubenmann-brueder-werkverzeichnis-bruecken-schaffhausen]] (Arbeitsteilung Jakob/
  Johannes/Hans Ulrich, Werkverzeichnis-Tabelle Brücken, Ende der Dynastie, Schaffhauser
  Brücke: Anspruch stützenfrei über 119 m, Kriegszerstörung 1799).
- `Tec21/Einzelseite/Empore_aus_Grubenmann_Kirchen_Tragwerk.pdf` gelesen: reine
  Bildunterschriften zu bereits destillierten Knotenpunkten, kein neuer Sachinhalt, deshalb
  nicht separat destilliert.

`git diff --numstat` auf Inventardatei und CHANGELOG zeigt beide Male `0` Löschungen (reiner
Append). Neue Werkzeuglücke: `pdftoppm`/`poppler` fehlt auf dieser Station, deshalb der
109-seitige Reader `111002_Reader_alle_Seiten.pdf` weiterhin ungelesen (`QUESTIONS.md` #72).
Kein neuer Datenschutz-Fund; Sperrvermerk Seite 4 des Readers und die Teilnehmerlisten-CSV/
XLSX erneut nicht geöffnet.

22 P2-Positionen bleiben offen: die drei Kraftfluss-Darstellungsvarianten, vier textlose
Bildscans, der 109-seitige Reader mit seinen 13 zitierten Quelltexten, das
Modell-Belastungstest-Blatt (Skalierungsmodell-Bilder, Galileo-Bezug), sowie
`Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf`. Nächster Lauf: `poppler`-Installation
abwarten/anfragen, oder gemäss Queue-Regel zu `02_Architektur_Vermitteln`/
`01_Landschaftsarchitektur` wechseln.

## 260830 — Sechsundzwanzigster Destillat-Lauf (Korpus 4, Sektion `01_Tragwerk`, vierter P2-Lauf)

Werkzeuglücke revidiert: die als «ohne Textlayer» eingestuften vier Bildscans lassen sich
mit dem Read-Tool dieser Station direkt lesen (eigene PDF-Rendering-Pipeline, unabhängig
vom fehlenden System-`pdftoppm` — funktioniert bei Einzeldateien unter rund 2,5 MB ohne
Seitenbereichs-Parameter). Vier P2-Positionen destilliert:

- ArchPlus 193 (9/2009, Kraft/Schindler, «Mit oder gegen Holz») → neuer Artikel
  [[digitale-schreinerei-formfindungstaxonomie-eierschneider-falt-flecht]]
  (Vier-Prinzipien-Taxonomie: Eierschneider einfach/zweifach, Faltstrukturen,
  Kassettenelemente, Flechtstrukturen, 14 Werkbeispiele 2005-2009).
- Archithese 6.02 (Walter Bieler, «Täler mit Holz überspannen») → neuer Artikel
  [[bieler-holzbruecken-werkregister-graubuenden-ostschweiz]] (neun Werke, Prinzip
  Tragwerk-unter-Fahrbahn statt Dach).
- ETH-Ehrenpromotions-Broschüre Christian Menn (Schlaich-Laudatio, unbezeichneter
  Fachaufsatz, Menns Verdankung, zwei Dateien vollständig) → neuer Artikel
  [[christian-menn-werkregister-stabbogen-hohlkasten-brueckenbaukultur]] (Werkregister
  neun Bauten/Projekte, Stabbogen-vs-Hohlkasten-Argumentation) — gegen
  [[tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau]] geprüft, kein Duplikat
  (dort Eleganzdebatte, hier Werkregister/Technik).
- Skalierung_Modelle (4 JPG, vollständig) → neuer Artikel
  [[modellstatik-aehnlichkeitsgesetz-struktur-modell-skalierung]] (Ähnlichkeitsgesetz-
  Tabelle Struktur-1:1-vs-Modell-1:x, Galileo-Bezug 1636).

`git diff --numstat` auf Inventardatei zeigt `39 0` (reiner Append). Erneuter Versuch am
109-seitigen Reader mit Seitenbereichs-Parameter bestätigt die Werkzeuglücke unverändert
(`pdftoppm is not installed`) — die native Rendering-Pipeline greift nur ohne
Seitenbereich bei kleinen Einzeldateien, nicht bei grossen Dateien mit Seitenbereich.

18 P2-Positionen bleiben offen: die drei Kraftfluss-Darstellungsvarianten (weiterhin als
eigenständiger Artikel zu dünn), der 109-seitige Reader (`QUESTIONS.md` #72), sowie
`Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf` (P3). Nächster Lauf: `poppler`-Installation
abwarten/anfragen, oder gemäss Queue-Regel zu `02_Architektur_Vermitteln`/
`01_Landschaftsarchitektur` wechseln (je rund 12 P2-Positionen).

## 260830 — Sektion `01_Staedtebau` (Korpus 4), zweiter und dritter P2-Lauf (Lane FACHWISSEN, 54. Beispiel Memory `project_fachwissen-dispatch-loop`)

Fortsetzung des ersten P2-Laufs dieser Sektion vom selben Tag. Vor Arbeitsbeginn wie üblich
Prozesskette geprüft (keine Doppel-Instanz), `KORPUS-QUEUE.md`/`CHANGELOG.md` gegengeprüft
statt dem strukturell veralteten Dispatch-Text zu folgen.

**Zweiter P2-Lauf, Abschluss Position 8** (fünf zuvor offene Restdateien der
Geschichte-Zusammenfassungen):

- `Alternativen zur Grossstadt.docx` (ILIAS-Übungsdokument mit Erläuterungen: Engels' «Zur
  Wohnungsfrage», Owen/Fourier-Siedlungsmodelle, Company Towns Saltaire/Akroydon/Bournville/
  Port Sunlight) → neuer Artikel [[engels-wohnungsfrage-owen-fourier-company-towns]],
  `status: speculative`.
- `VL Architektur der USA.doc` (TU Dresden, Prof. Lippert, Sommer 2007, elfteilige
  Vorlesungsreihe, nur Vorlesung 2 gelesen: Jefferson-Raster/Land Ordinance 1785/Northwest
  Ordinance 1787/Commissioner's Plan New York 1811) → neuer Artikel
  [[us-rastersystem-jefferson-land-ordinance-commissioners-plan]], `status: speculative`.
  Vorlesung 5 (Ursprung City-Beautiful-Bewegung: Weltausstellung Chicago 1893,
  Senate-Park-Commission-Zeitleiste 1902–1943) als Ergänzung in den bestehenden Artikel
  [[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]] eingefügt statt
  Duplikat. Die übrigen rund neun Vorlesungen dieser Datei (Klassizismus, Neogotik, Chicago
  School, Wright, Mies, Las Vegas) bleiben ungelesen, Fundstelle für einen künftigen Lauf
  im Inventar vermerkt.
- `Alternative zur Grossstadt.docx`, `Test/test.docx`, `Lead.doc`: kein Artikel (reine
  Aufgabenstellung bzw. Duplikate zu bereits destillierten Artikeln).

**Position 8 gilt damit als abgeschlossen.**

**Dritter P2-Lauf, Positionen 13 und 14:**

- Position 14 (DTV-Atlas-Konkordanz, 25 Kapitel mit Seitenzahlen) → neuer Artikel
  [[dtv-atlas-baukunst-konkordanz-staedtebau-kapitel]], `status: emerging` (reine
  Wegweiser-Tabelle, keine Textübernahme aus dem Atlas selbst).
- Position 13 (das Manifest «Die Athmosphärische Stadt» selbst) gelesen: zu roh für einen
  eigenen Artikel (Delta-Ehrlichkeit), zwei Fundpunkte als Ergänzung in den bestehenden
  Artikel [[blockrand-aufenthaltsqualitaet-argumentation-verdichtung-jans]] eingefügt
  (Attribution der Kernformulierung an Schmid Schärer Architekten statt rein eigener
  Prägung; Maler-Stichwortliste als Bildreferenz-Fundus).

`git diff --numstat` auf die Inventardatei zeigt über beide Teilläufe reinen Append
(`58 0`). **Von den acht P2-Positionen dieser Sektion sind jetzt 8, 13 und 14
abgeschlossen; Positionen 1–7 (Jans-Reader, Übungsheft, fünf Grundlagenwerke Manualistik,
33 Autorendossiers, Platz-Materialbestand) bleiben vollständig offen.** Nächster Lauf:
Position 1 (Jans-Reader, eigenes Ordnungsgerüst der Vorlesungsreihe Lampugnani, gibt laut
Kurzbefund die spätere Wiki-Struktur «Geschichte des Städtebaus» vor).

Keine der harten Sperren berührt (Verträge, Bewerbungen, Personaldossiers, Adress-/
Kontaktdaten, Lohn-/Honorardaten, Privatunterlagen); die bekannte Datenschutz-Sperre
(`FactShets_Staedte.docx`, Stufe X) wurde nicht angerührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 1 (Lane FACHWISSEN, 55. Beispiel Memory `project_fachwissen-dispatch-loop`)

Vor Arbeitsbeginn wie üblich `scutil` (Macmini bestätigt), `ps aux` (keine Doppel-Instanz,
nur der eigene Prozess) und `KORPUS-QUEUE.md`/diese Datei gegengeprüft: der Dispatch-Text
war erneut identisch veraltet («kein Destillat, keine Spec», Station fälschlich «MacBook
Pro»), der reale Stand entsprach dem oben dokumentierten Ende des dritten P2-Laufs.

Position 1 (`00_Allgemein/02_Vorlesungen/Lampugnani_Vittorio/01_Jans_Reader/PDF/00_Alles/
110806_Alles.pdf`, 47 S., eigener Reader zur Vorlesungsreihe) vollständig gelesen. Die
Quelle ist grösstenteils eine stichwortartige Live-Mitschrift, die bereits an anderer
Stelle destillierte Themen wiederholt (Antike Athen/Rom, Mittelalter/Renaissance-Überblick,
England Landschaftspark/Squares, vor-Haussmannsches Paris-Embellissement) — dort kein
neuer Artikel (Delta-Ehrlichkeit). Vier Fundstellen mit echtem Mehrwert identifiziert und
gegen bestehende Artikel geprüft, um Duplikate zu vermeiden:

- S. 8–9 (Determinanten der Stadtform: Venedig/Topographie, Siena+Bath/Material,
  Vitruv-Hygiene, London-Baurecht, Barcelona-Cerdà als weiche Determinante) als Ergänzung
  in den bestehenden Artikel
  [[staedtebau-begriffe-einflussgroessen-bausteine-stadtstruktur-jans]] eingefügt (dieselbe
  Kategorienlogik wie im Glossar, dort aber mit anderen Beispielen belegt — kein Duplikat).
- S. 24–26 und 38–40 (Systemwechsel Renaissance→Barock, Rom/Sixtus V., Versailles,
  St. Petersburg, Platztypologie dreiseitig/ausstrahlend/allseitig-geschlossen,
  Place-Royal-Typus Place Dauphine/Place des Vosges) → neuer Artikel
  [[barocke-stadtplanung-offene-achsensysteme-platztypologie-place-royal]],
  `status: speculative`.
- S. 42–43 (Haussmanns drei Bauphasen: Premier/Second/Troisième réseau 1853–1869 mit
  benannten Einzelprojekten) als Ergänzung in den bestehenden Artikel
  [[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]] eingefügt statt
  Duplikat (der bestehende Artikel deckte Motivation/Zeitleiste ab, nicht die konkreten
  Bauphasen).
- S. 46 (dreistufige Berlin-Strategie Schinkel/Individualmonument → Lenné/gescheiterter
  Gesamtplan → Hobrecht/privatwirtschaftlicher Grossblock, nur ein kurzer Einleitungsabsatz,
  die Quelle bricht danach ab) → neuer Artikel
  [[berlin-stadterweiterung-schinkel-lenne-hobrecht]], `status: speculative`.
- S. 7 (parallele Zwölfer-Stadttypen-Liste, praktisch deckungsgleich mit dem bereits
  destillierten Typologieblatt «Die A4») als reiner Cross-Check-Verweis in
  [[stadttypen-strassennetz-systematik-jans]] vermerkt, kein neuer Artikel.

`git diff --numstat` auf die Inventardatei zeigt reinen Append. **Position 1 gilt damit als
abgeschlossen** (die übrigen, bereits andernorts abgedeckten Kapitel des Readers wurden
geprüft, aber bewusst nicht erneut destilliert). Von den acht P2-Positionen dieser Sektion
sind jetzt 1, 8, 13 und 14 abgeschlossen; **Positionen 2–7 (Übungsheft Lampugnani, fünf
Grundlagenwerke Manualistik, 33 Autorendossiers, Platz-Materialbestand) bleiben offen.**
Nächster Lauf: Position 2 (Übungsheft, 61 S., 214 kB Text, Kompetenz-/Methodenraster über
17 Themenblöcke) oder eine der übrigen vier Positionen.

Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 2, Teil 1 (Lane FACHWISSEN, 56. Beispiel Memory `project_fachwissen-dispatch-loop`)

Wie üblich vor Arbeitsbeginn `scutil` (Macmini bestätigt), `ps aux` (keine Doppel-Instanz)
und `KORPUS-QUEUE.md`/`CHANGELOG.md`/diese Datei gegengeprüft: Dispatch-Text erneut
identisch veraltet («kein Destillat, keine Spec», Station fälschlich «MacBook Pro»), realer
Stand entsprach dem Ende des vierten P2-Laufs (Position 1 abgeschlossen).

Position 2 (`.../02_Uebungsheft/PDF/110805_Alles.pdf`, 61 S. ILIAS-Übungsheft) zu rund 82 %
gelesen (Themenblöcke 1-14 von 17). Textextraktion: `textutil` scheiterte an dieser PDF
(gab Rohbytes statt Text zurück), `python3`/`pypdf` extrahierte erfolgreich 214'561 Zeichen
— deckt sich mit dem im Kurzbefund vermerkten Textumfang. **Delta-Ehrlichkeit:** der
Grossteil der Übung ist Multiple-Choice-Lernkontrolle zu historischen Stadtplänen, die
bereits destillierte Inhalte wiederholt (u. a. Sixtus V./Versailles, Haussmann, Berlage/
Amsterdamer Schule inklusive der Baublock-Definition **wortidentisch** zum bestehenden
Artikel, Howard/Owen/Fourier, City-Beautiful/L'Enfant) — dort kein neuer Artikel. Drei neue
Artikel destilliert:

- [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]]
  (`status: emerging`): Streifenstadt, Hippodamisches System, Cardo/Decumanus, Centuriatio,
  Castrum, Insulae, Forum/Agora — Definitionen aus Modul 1.
- [[plantypen-glossar-katasterplan-schwarzplan-strassenplan-enteignungsplan]]
  (`status: emerging`): Katasterplan, Schwarzplan, Strassenplan, Quartierplan,
  Strassenquerschnitt, Gestaltungsplan (Schweizer Bezug), Enteignungsplan (Schweizer
  Raumplanungsgesetz-Bezug), Nolliplan-Sonderfall.
- [[stadtgruendung-stadterweiterung-stadtumbau-begriffstrias]] (`status: emerging`):
  präzise Dreiteilung mit wörtlichem ARL-2005-Zitat zu Stadtumbau.

Zusätzlich Ergänzung im bestehenden Artikel
[[berlin-stadterweiterung-schinkel-lenne-hobrecht]]: Hobrecht-Fluchtlinienplan-Kennzahlen
1862 (Mietskaserne-Kritikpunkte, Tempelhofer/Schöneberger Feldmark 1861/1870/1891) — füllt
die dort selbst vermerkte Lücke.

**Drei Themenblöcke bleiben ungelesen** (15 Stadtmodernisierung Berlin, 16 Städtisches
Grün, 17 Städtisches Wohnen Frankfurt). Details/Fundstellen in
`raw/inventar/archiv-fachwissen__01_Staedtebau.md` Abschnitt Destillat-Fortschritt.
**Nächster Lauf:** die drei Restblöcke abschliessen, dann Position 2 schliessen und mit
Position 3 (fünf Grundlagenwerke Manualistik) fortfahren. Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 2, Teil 2/Abschluss (Lane FACHWISSEN, 57. Beispiel Memory `project_fachwissen-dispatch-loop`)

Wie üblich vor Arbeitsbeginn `scutil` (Macmini bestätigt), `ps aux` (nur der eigene Prozess)
und `KORPUS-QUEUE.md`/`CHANGELOG.md`/diese Datei gegengeprüft: Dispatch-Text erneut
identisch veraltet («kein Destillat, keine Spec», Station fälschlich «MacBook Pro»), realer
Stand entsprach dem Ende des fünften Laufs.

Die drei Restblöcke (15-17) geprüft. Das Read-Tool lieferte bei den beiden grossen
Einzelmodul-PDF (`15_Stadtmodernisierung.pdf`, 11.6 MB, `16_Staedtisches_gruen.pdf`,
12.9 MB) nur `[media removed: request limit]` — via `python3`/`pypdf` sauber als Text
extrahiert (13'925 bzw. 16'849 Zeichen).

- **Block 15** erwies sich als praktisch deckungsgleich mit dem bereits destillierten
  [[wettbewerb-gross-berlin-1908-hochhausstadt-debatte-wohnblock-reform]] (dieselben vier
  Wohnblock-Reformbeispiele, dieselben vier Hochhausstadt-Theoretiker) — kein neuer
  Artikel, nur eine Fünf-Kategorien-Klassifikation der Wettbewerbs-Rahmenbedingungen
  (planungspolitisch/wirtschaftlich/demografisch/sozial/politisch) dort ergänzt.
- **Block 16** war ein echter Neufund (gegen den Wiki-Bestand geprüft, keine Überschneidung):
  neuer Artikel [[bruno-taut-stadtkrone-migge-selbstversorger-volkspark]] — Bruno Tauts
  Stadtkrone-Konzept (konzentrische Stadt, Kristallhaus, Hufeisensiedlung Berlin-Britz als
  gebautes Beispiel) und Leberecht Migges Kleingarten-/Volkspark-Theorie (Volkspark
  Rehberge als gebautes Beispiel). Schliesst die im vierten Lauf offen gelassene Lücke
  derselben Quelldatei (damals nur Werktitel ohne Zusammenfassung notiert).
- **Block 17** (Städtisches Wohnen Frankfurt) **fehlt als Datei vollständig** — weder
  eigener Unterordner noch in der kombinierten `110805_Alles.pdf` enthalten (diese endet
  nachweislich nach Modul 16). Laut Inhaltsverzeichnis sollte er «Das Neue Frankfurt und
  das Rote Wien» behandeln. Reale Bestandslücke, kein Werkzeug- oder Lesefehler; im neuen
  Artikel als offener Punkt vermerkt.

`git diff --numstat` auf die Inventardatei zeigt reinen Append (43 0). **Position 2 gilt
damit als abgeschlossen** (alle 17 Themenblöcke geprüft, Block 17 als dokumentierte
Quelllücke geschlossen). Von den acht P2-Positionen der Sektion sind jetzt 1, 2, 8, 13 und
14 erledigt; Positionen 3-7 (fünf Grundlagenwerke Manualistik, 33 Autorendossiers,
Platz-Materialbestand) bleiben offen. **Nächster Lauf:** Position 3 (Grundlagenwerke der
Städtebau-Manualistik: Sitte mit Textebene, Stübben/Krier/Curdes/Nolli als Scans — Fremdwerke,
nur methodisch mit Fundstelle zitierbar). Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 3 teilweise (Lane FACHWISSEN,
58. Beispiel Memory `project_fachwissen-dispatch-loop`)

Textlayer-Probe per `pypdf` über alle fünf Grundlagenwerke der Manualistik: nur
`Sitte.pdf` liefert echten Text (93 S., 115'781 Zeichen), `Stuebben.pdf`/`Krier.pdf`/
`Curdes.pdf` 0 Zeichen, `Nolli.pdf` nur 105 Zeichen — vier der fünf Werke bleiben reine
Bildscans. `Sitte.pdf` vollständig gelesen, neuer Artikel
[[camillo-sitte-staedtebau-kuenstlerische-grundsaetze-platzgestaltung]] (vier Grundregeln
alter Platzgestaltung: Freihalten der Mitte, Geschlossenheit der Plätze, Grösse/Form im
Verhältnis zum Hauptgebäude, Unregelmässigkeit als Qualität; Platzgruppen und Übergang zur
barocken Theaterperspektive). **Neuer Befund:** der Scan selbst ist unvollständig — laut
Inhaltsverzeichnis 12 Kapitel plus Schluss bis Seite 175, tatsächlich endet der Scan nach
Kapitel VII (S. 87) mit Städte-Register und Druckvermerk; die praktischen Kapitel VIII-XII
(Sittes eigenes Reformprogramm) fehlen vollständig im digitalisierten Bestand — reale
Bestandslücke, keine Fehlextraktion. Von den acht P2-Positionen der Sektion sind jetzt 1, 2,
8, 13, 14 erledigt sowie 3 teilweise (Sitte-Anteil); Positionen 4-7 (33 Autorendossiers,
Platz-Materialbestand) bleiben offen, Position 3 bleibt für die vier Bildscans offen.
**Nächster Lauf:** Read-Tool direkt auf Stübben/Krier/Curdes/Nolli probieren, sonst Position
4 (33 Autorendossiers) beginnen. Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 3 fortgesetzt (Lane FACHWISSEN,
achter P2-Lauf dieser Sektion, direkt im Anschluss)

Read-Tool trotz negativer `pypdf`-Probe auf Stübben/Krier/Curdes/Nolli probiert:
`Stuebben.pdf` (5,2 MB) und `Curdes.pdf` (11,2 MB) vollständig lesbar, `Krier.pdf` (21,6 MB)
scheitert an einer harten 20-MB-Obergrenze des Tools, `Nolli.pdf` (51,6 MB) danach nicht
mehr getestet. **Neuer Befund:** die Read-Tool-Fähigkeit ist nicht auf Dateien unter rund
2,5 MB beschränkt (wie im 50. Beispiel vermutet), sondern funktioniert bis mindestens
11,2 MB — die reale Grenze ist ein hartes 20-MB-Dateigrössenlimit. Aus `Stuebben.pdf`
(Josef Stübben, «Der Städtebau», Handbuch der Architektur 1907, Abschnitt 2 Kap. 6-7)
neuer Artikel [[stuebben-staedtebau-platzarten-systematik-oeffentliche-plaetze]]
(Vier-Typen-Systematik Verkehrs-/Nutz-/Garten-/Architekturplätze, Maertens'sche
Sehwinkel-Theorie zur Platzdimensionierung als quantifizierte Ergänzung zu Sitte,
Grössenvergleichstabelle, Platzgruppen, Nivellement). Aus `Curdes.pdf` (Gerhard Curdes,
«Stadtstruktur und Stadtgestaltung», Kapitel 15 «Plätze», moderner Lehrbuchtext) neuer
Artikel [[curdes-plaetze-funktionstypologie-entwurfsanforderungen-krier-formtypologie]]
(Epochentypologie der Platzrolle, Acht-Punkte-Anforderungskatalog, funktionsabhängige
Proportionsregeln, klimatische Cafés-Platzierungsregel, Rob Kriers Formtypologie 1975 in
Sekundärdarstellung, da `Krier.pdf` selbst wegen Dateigrösse nicht zugänglich ist). Von den
acht P2-Positionen der Sektion sind jetzt 1, 2, 8, 13, 14 vollständig sowie 3 zu zwei
Fünfteln (Sitte, Stübben, Curdes) erledigt; Position 3 bleibt nur für Krier/Nolli offen
(beide über 20 MB, dauerhaft blockiert). Positionen 4-7 bleiben vollständig offen.
**Nächster Lauf:** Position 4 (33 Autorendossiers) beginnen. Keine der harten Sperren
berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 4, elfter P2-Lauf (Lane FACHWISSEN, 61. Beispiel Memory `project_fachwissen-dispatch-loop`)

Sieben weitere der 33 Autorendossiers bearbeitet. Drei neue Artikel aus bisher unberührten
Quellen:

- [[christiaanse-urban-breeding-grounds-gentrifizierungszyklus-steuerungspolitik]] — Kees
  Christiaanse (ETH Zürich), Gentrifizierungszyklus als «urban breeding grounds»,
  Jane-Jacobs-Zitat «self-destruction of diversity», Steuerungsinstrumente
  Parzellenschutz/Wohnanteil-Vorgabe/Bonus-Malus.
- [[tessenow-strassen-plaetze-geschlechtermetapher-dorf-stadt-grossstadt-analogie]] —
  Heinrich Tessenow, Strasse/Platz als Geschlechtermetapher, Dorf-Stadt-Grossstadt als
  Lebenslauf-Analogie (studentische Textanalyse).
- [[deutsches-institut-stadtbaukunst-konferenz-traditionalisten-modernisten-2012]] —
  Hochparterre-Bericht zur Stadtbaukunst-Konferenz Düsseldorf 2012, Traditionalisten
  (Mäckler/Sonne/Kollhoff) gegen Modernisten (Ingenhoven/de Vries), mit
  Lampugnani-Zitat «Lasst Architekten die Strassen zeichnen!».

Vier weitere Dossiers (Howard, Taut, Migge, Engels) erwiesen sich als Primärquellen zu
bereits destillierten Sekundärtexten und wurden als Ergänzung statt Duplikat eingefügt:
Howards Drei-Magnete-Schema im Originalwortlaut in
[[gartenstadtbewegung-genealogie-pugin-ruskin-morris-howard-europa]]; Tauts
Stadtkrone-Masszahlen (7 km Durchmesser, 800x500 m Areal, 38,5 km² Gesamtfläche,
300'000-500'000 Einwohner) und Migges Gartengrössen-Norm (80-100 m²/Person) in
[[bruno-taut-stadtkrone-migge-selbstversorger-volkspark]]; Engels' «Haussmann» als
Gattungsbegriff für Slum-Verlagerung (nicht -beseitigung) samt Guise als einziges gebautes
Fourier-Beispiel in [[engels-wohnungsfrage-owen-fourier-company-towns]]. Zwei Dossiers ohne
Ertrag (Delta-Ehrlichkeit): Mumford (reine Aufgabenstellung ohne eigene Bearbeitung), Gracq
(literarischer Wikipedia-Stub ohne städtebauliche Fachaussage).

Von den 33 Autorendossiers der Position 4 sind jetzt 15 mit Ertrag bearbeitet, drei Ordner
leer (Leveillé, Siedler, Sutcliffe); 16 bleiben offen: Behne, Giedion, Hilberseimer,
Jefferson, Lampugnani, Muratori, Rossi (gegen bestehende Rossi-Artikel aus
`archiv-fachwissen__02_Architekturtheorie` prüfen), Sievers, Sonne, Waldenheim, sowie die
unzugeordnete `kapitel01_dk_vorindustrielle_120dpi.pdf`. **Nächster Lauf:** kleine
Restdateien zuerst (Behne, Waldenheim, `kapitel01_dk...`), grosse Dateien
(Sonne/Lampugnani/Sievers, teils über 20-MB-Grenze) zuletzt. Keine der harten Sperren
berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 4, zwölfter und dreizehnter P2-Lauf (Lane FACHWISSEN)

Zwölfter Lauf: Behne (Dreistufenmodell Fassade/Haus/Raum), Waldenheim (Landscape Urbanism
Reader) und `kapitel01_dk...` Unterkapitel 3 (Ostkolonisation/Hanse) abgeschlossen — Details
CHANGELOG 30.08.2026.

Dreizehnter Lauf: Jefferson und Muratori abgeschlossen, drei neue Artikel:

- [[thomas-jefferson-checkerboard-plan-staedtekritik-agrarideal-widerspruch]] — Dissertation
  Felix Aeppli (Uni Zürich 1975), Jeffersons eigene Federal-City-Entwürfe 1790/91,
  Checkerboard-Plan gegen Gelbfieber (gebaut in Jeffersonville IN und Jackson MS,
  wirtschaftlich beide gescheitert), Gesundheits-/Moralkritik an der Stadt, Wandel
  Agrarideal→Manufaktur über Embargo 1807/Krieg 1812, biografischer Widerspruch (Nagelfabrik
  Monticello, Pariser Bibliothekskäufe, Universität Charlottesville).
- [[saverio-muratori-typologische-methode-biografie-rezeption-bologna-kritik]] — arch+ Heft
  85 (Giorgio Conti), Biografie, Wettbewerb Mestre-San Giuliano 1959 (drei Positionen
  Muratori/Piccinato-Samonà/Quaroni), Tafuris Kritik am «undialektischen Übergang von
  Analyse zu Entwerfen», kritische Relativierung der Bologna-Sanierung Cervellati 1973.
- [[saverio-muratori-caniggia-stadtmorphologie-glossar-typ-standard-mutation]] — arch+ Heft
  85 (Sylvain Malfroy), Typ-vs-Standard-Unterscheidung, vier Massstabsebenen, strukturelle
  Permanenzen, Kapillarmutationen vs. konzentrierte Planung.

Von den 33 Autorendossiers der Position 4 sind jetzt 20 mit Ertrag bearbeitet; 13 bleiben
offen: Giedion, Hilberseimer, Lampugnani, Rossi (gegen bestehende Rossi-Artikel aus
`archiv-fachwissen__02_Architekturtheorie` prüfen), Sievers, Sonne, plus drei leere Ordner
und zwei ohne Ertrag geprüft aus Vorläufen. **Nächster Lauf:** Rossi mit Duplikat-Check
zuerst, dann Sievers, Giedion/Hilberseimer/Lampugnani/Sonne zuletzt (teils über
20-MB-Grenze). Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 4, vierzehnter bis sechzehnter P2-Lauf (Lane FACHWISSEN)

Vierzehnter Lauf: Rossi (`Rossi_Aldo/`, zwei studentische Buchzusammenfassungen von
«L'architettura della città») → neuer Artikel
[[rossi-architektur-der-stadt-funktionalismuskritik-typologie-eigentumsstruktur-monument]],
nach Duplikat-Check gegen die bestehenden Rossi-Artikel aus
`archiv-fachwissen__02_Architekturtheorie` als eigenständig destilliert (Funktionalismuskritik,
Typus-vs-Modell, Eigentumsstruktur/Enteignung, Monument-Begriff).

Fünfzehnter Lauf: Sievers (`Siewerts_Thomas/`, zwei Dateien, eine davon ohne Textebene aber
vom Read-Tool dennoch vollständig gelesen) → neuer Artikel
[[sieverts-zwischenstadt-drei-voraussetzungen-aesthetik-anaesthetik-iba-emscher-park]]
(Begriff Zwischenstadt, Ästhetik/Anästhetik nach Welsch, IBA Emscher Park).

Sechzehnter Lauf: drei weitere Autorendossiers abgeschlossen:

- [[giedion-raum-zeit-architektur-haussmann-paris-transformation-1853-1868]] — Sigfried
  Giedion, «Raum, Zeit, Architektur», Kapitel zur Haussmann-Transformation von Paris
  (réseaux als Finanzierungsbegriff, «théorie des dépenses productives», Miethaus-Analyse
  1860, Thiers-Kritik, Echo im Wiener Ring) — eigenständige, reichhaltigere Ergänzung zum
  bestehenden [[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]].
- [[hilberseimer-hochhausstadt-dezentralisiertes-wohngebiet-mischbebauung]] — Hochhausstadt
  1924, wörtliche Selbstkritik 1963, dezentralisiertes Wohngebiet/Mischbebauung.
- [[lampugnani-historisches-stadtzentrum-kulturgut-lehrstueck-dichte]] — NZZ-Essay 2012,
  historischer Bogen Voltaire bis Koolhaas, vier Argumente für die Aktualität der Altstadt.

Von den 33 Autorendossiers der Position 4 sind jetzt 24 mit Ertrag bearbeitet; drei Ordner
leer (Leveillé, Siedler, Sutcliffe), zwei ohne Ertrag geprüft (Mumford, Gracq). **Nur noch
Sonne (grösstenteils über 20-MB-Grenze) und der Lampugnani-Quellentextband (358 Scan-Seiten
ohne Textebene, Seitenbereichs-Lesung am fehlenden `poppler` gescheitert, Vollzugriff für
einen einzelnen Lauf zu umfangreich) bleiben offen**, dazu `kapitel01_dk...` Unterkapitel
1/2/4/5 als eigene Restaufgabe. Keine der harten Sperren berührt.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), Position 4 abgeschlossen, `Quellentextband-1.pdf` als vollständig lesbar erwiesen (Lane FACHWISSEN, 21. und 22. P2-Lauf)

Nach Abschluss der 33 Autorendossiers (Sonne/Kultur der Urbanität als letztes Dossier,
siehe [[sonne-kultur-der-urbanitaet-dichte-stadt-kontinuitaetsthese]]) und den fünf
Unterkapiteln von `kapitel01_dk_vorindustrielle_120dpi.pdf` (siehe
[[deutsche-ostkolonisation-mittelalterliche-stadtgruendung-hanse-wiese-zils]] und die
beiden weiteren Wiese/Zils-Artikel) blieb als letzte grosse Einzelquelle der Sektion
`Quellentextband-1.pdf` (10,3 MB, 358 Seiten Bildscan) offen. Entgegen früherer
Einschätzung («zu lang für einen Volldurchlauf») liest das Read-Tool die Datei ohne
`pages`-Parameter vollständig in einem Aufruf. Sie erwies sich als Band I einer
vierbändigen ETH-Quellenanthologie «Texte zur Geschichte des Städtebaus»
(Lampugnani-Professur 1996) mit ca. 50 Primärtext-Auszügen von Homer bis Max Weber.

21. Lauf: Max Webers Marktansiedlungs-Definition
([[max-weber-stadtbegriff-marktansiedlung-fuerstenstadt-konsumentenstadt-produzentenstadt]])
und Manuel da Maias Fünf-Modi-Variantenvergleich für den Lissabon-Wiederaufbau 1755
([[manuel-da-maia-lissabon-wiederaufbau-fuenf-modi-1755]]).

22. Lauf, vier weitere Auszüge:

- [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]] — Buch I:
  Standortwahl/Vier-Elemente-Lehre, Sumpfgebiets-Fallbeispiele, Windrosen-Strassenraster,
  Götter-Standortlogik.
- [[frontinus-vitruv-wasserversorgung-rom-kaliber-konzessionsrecht]] — Vitruv Buch VIII,6
  plus Frontinus «Wasser für Rom»: neun Aquädukte, Mengenbilanz, Kalibersystem,
  Senatsbeschluss 11 v. Chr.
- [[renaissance-idealstadt-typologie-filarete-alberti-duerer]] — Dreiervergleich
  Filarete/Sforzinda, Alberti (Standort-/Formregeln, Perugia-Beispiel), Dürer
  (Quadratstadt-Idealstadtbeschreibung 1527), mit Vergleichstabelle.
- [[kalabrien-wiederaufbau-erdbeben-1783-vergleich-lissabon]] — Bauvorschriften Reggio,
  Neugründung Filadelfia, Bagnara-Konflikt, Palestinos Vollzugschronik; Vergleichsfall zu
  Manuel da Maia, dort zurückverlinkt.

**Von den ca. 50 Quellentextband-Auszügen sind jetzt sechs destilliert, rund 40 bleiben
offen** (u. a. Vauban im Original noch nicht eigenständig behandelt, nur im
Renaissance-Vergleichsartikel referenziert; Palladio, Descartes, Campanella, Ludwig XIV.,
Dézallier d'Argenville ungelesen). Die 33 Autorendossiers der Position 4 gelten mit Sonne
als abgeschlossen. **Nächster Lauf:** Vauban («Abhandlung von der Vertheidigung der
Festungen») eigenständig, danach Palladio. Keine der harten Sperren berührt.

23. Lauf, zwei weitere Auszüge (Vauban, Palladio):

- [[vauban-festungsbau-bastionstheorie-graenzfestung-1704]] — Gränzfestung-Definition,
  Klassifikation regelmässig/unregelmässig/zugänglich, Wallmasse, Bastionstheorie
  (Facen/Courtinen/Flanquen-Verteidigungslogik, Bastions ohne Cavalier).
- [[palladio-strassen-bruecken-plaetze-vier-buecher-1570]] — Buch III: vier
  Strassenanforderungen, Windregel nach Vitruv, Palladios eigener Brückenentwurf mit
  Läden/Loggien, Platzproportionsregel nach Alberti (1/3-1/6 Gebäudehöhe zu
  Platzbreite), ergänzt Sitte/Stübben/Curdes-Platzdebatte. Offener Punkt zur
  Alberti-Fundstelle in `wiki/QUESTIONS.md` #73.

**Von den ca. 50 Quellentextband-Auszügen sind jetzt acht destilliert, rund 38 bleiben
offen** (Descartes, Campanella, Ludwig XIV., Dézallier d'Argenville weiterhin ungelesen,
dazu zahlreiche kürzere antike/mittelalterliche Einzelauszüge). Keine der harten Sperren
berührt. **Nächster Lauf:** Descartes (Methodenlehre, Stadtplanungs-Analogie) oder
Ludwig XIV. (Versailles-Gartenführung) — beide kurz und eigenständig, danach
Campanella/Dézallier d'Argenville.

24. Lauf, zwei weitere Auszüge (Descartes, Ludwig XIV.):

- [[descartes-methode-architektonische-einheitsplanung-organisches-wachstum]] —
  Ein-Baumeister-Argument gegen gewachsene Stadtstruktur, Analogie
  Gebäude/Gesetzgebung, Beispiel Sparta.
- [[ludwig-xiv-versailles-gartenfuehrung-choreographierte-besichtigungsroute]] —
  eigenhändiges Regieskript für die Versailles-Gartenbesichtigung in 25
  nummerierten Schritten, verlinkt mit dem Achsensystem-Artikel.

25. Lauf, zwei weitere Auszüge (Campanella, Dézallier d'Argenville):

- [[campanella-citta-del-sole-konzentrische-ringstadt-verteidigung-lehrinstrument]] —
  konzentrische Sieben-Ring-Stadt mit gestaffelter, torversetzter
  Verteidigungstiefe und enzyklopädischem Wandmalprogramm je Ring.
- [[dezallier-dargenville-gartentheorie-vier-maximen-standortkriterien]] — fünf
  Standortkriterien nach Vitruv, vier Grundmaximen der Gartendisposition
  (Natur vor Kunst, keine Überladung, gestaffelte statt totale Ansicht, grösser
  wirken als tatsächlich), verlinkt mit Ludwig-XIV.-Artikel.

**Von den ca. 50 Quellentextband-Auszügen sind jetzt zwölf destilliert, rund 34
bleiben offen** (zahlreiche kürzere antike/mittelalterliche Einzelauszüge). Keine
der harten Sperren berührt. **Nächster Lauf:** Aristoteles «Politik» (Buch II,8
Hippodamus-Stadtplan; Buch VII,5-6/10-11 optimale Stadtlage) oder Digesta Buch
43,7-11 (römisches öffentliches Wege-/Baurecht) — beide kurz und eigenständig.

26. Lauf, zwei weitere Auszüge (Aristoteles, Digesta):

- [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]] —
  Hippodamus von Milet (10'000-Bürger-Staat, Dreiteilung von Bevölkerung und
  Land), vierfache Rücksicht bei der Stadtlage, Zielkonflikt hippodamische
  Rasterbauart versus Kriegssicherheit.
- [[digesta-43-oeffentliches-wegerecht-baurecht-interdikte-roemisch]] —
  prätorisches Interdikt-Recht zu öffentlichen Plätzen/Wegen,
  Reparatur-Interdikt-Formel mit Verschlechterungsverbot, Nachbarhaftung für
  abgeleitetes Wasser.

**Von den ca. 50 Quellentextband-Auszügen sind jetzt vierzehn destilliert, rund
32 bleiben offen.** Keine der harten Sperren berührt. **Nächster Lauf:**
nächstes kurzes, eigenständiges Autorendossier oder weitere
Quellentextband-Einzelauszüge nach Bürorelevanz auswählen.

27. Lauf, bislang unbemerkter islamischer Textblock (S. 173-190) gefunden und
zwei Positionen destilliert (Al-Farabi, Ibn Abdun):

- [[al-farabi-musterstaat-gesellschaftshierarchie-koerper-metapher]] —
  zweistufige Gesellschaftshierarchie (vollkommene Gesellschaft dreistufig bis
  zur Stadt, unvollkommene Gesellschaften Dorf/Quartier/Haus), Musterstadt als
  ethisches statt bauliches Kriterium, Stadt-Körper-Organhierarchie-Metapher.
- [[ibn-abdun-sevilla-baupolizei-hisba-marktordnung-1100]] —
  Hisba-Baupolizeiverordnung Sevilla (Mindest-Mauerstärke, normierte
  Baustoff-Musterexemplare, feste Standplätze für Brennholz-/Kalkhändler, fest
  besoldeter Moschee-Maurermeister), Eigentumsrecht-durch-Dauernutzung am
  Moscheevorplatz (Parallele zur Digesta, dort zurückverlinkt).

28. Lauf, drei weitere Positionen des islamischen Textblocks destilliert
(Ibn Dschubair, Ibn Chaldun zweimal):

- [[ibn-dschubair-damaskus-wasserinfrastruktur-stiftungswesen-1184]] —
  Reisebeschreibung Damaskus (ca. 1184): Brandrisiko dichter
  Lehm-/Holzbauweise, Wasserinfrastruktur (Bäche durch jede Strasse, vier
  Reservoirs an der Grossen Moschee), Waqf-Stiftungswesen für Hospitäler
  (15 Dinar Tageszuwendung, Patientenregister) und Medresen.
- [[ibn-chaldun-standortkriterien-verfallslogik-staedtischer-kultur]] —
  Muqaddima-Auszug: Städte als Folgeerscheinung der Königsherrschaft,
  ökonomisch-zyklische Verfallslogik städtischer Kultur (Prachtentfaltung →
  Warensteuer → Verarmung), sechs Standortkriterien für Stadtgründung
  (Sicherheit, Luft, Wasser, Weiden, Felder, Wald), Negativbeispiel
  Kairouan/Kufa/Basra.
- [[ibn-chaldun-bauhandwerk-tabija-geometrie-nachbarrecht]] — Bautypen nach
  Klimazone, systematische Nachbarrecht-Konflikte (Licht, gemeinsame Mauer,
  Wegerecht, Wasserabfluss), Tabija-Stampflehmbau-Technik im Detail,
  Geometrie als Voraussetzung des Baumeisters.

Al-Ghazali (S. 181-182) mitgelesen, aber ohne eigenen Artikel — reiner
theologischer Text ohne städtebaulichen Bezug (Delta-Ehrlichkeit).

**Von den ca. 50 Quellentextband-Auszügen sind jetzt 17 destilliert, rund 29
bleiben offen — der gesamte islamische Block (sechs Positionen) ist damit
vollständig gesichtet, fünf davon destilliert.** Nächster Lauf: Francesco di
Giorgio Martini (anthropometrische Stadtproportionen, S. 251-254) oder
weitere kurze Quellentextband-Einzelauszüge nach Bürorelevanz.

**Von den ca. 50 Quellentextband-Auszügen sind jetzt 16 destilliert, rund 30
bleiben offen — darunter der gesamte restliche islamische Block (Ibn
Dschubair/Damaskus, Al-Ghazali, Ibn Chaldun zweimal) und Francesco di Giorgio
Martinis anthropometrische Stadtproportionen (S. 251-254), die im
Al-Farabi-Artikel bereits als offene Anschlussposition vermerkt sind.**
Zusätzlich Stichprobenbefund: die seit dem 18. Lauf wiederholte Zahl «acht
Autorendossiers bleiben unangetastet» liess sich bei sieben stichprobenartig
geprüften Positionen nicht bestätigen (alle sieben bereits erledigt) — Zahl
gilt als nicht mehr belastbar, aber nicht abschliessend widerlegt. **Nächster
Lauf:** Ibn Dschubair (Damaskus-Reisebeschreibung, S. 177-180) oder Ibn
Chaldun (Stadtplanung/Bauhandwerk, S. 183-190), danach Francesco di Giorgio
Martini.

29. Lauf, Francesco di Giorgio Martini destilliert:

- [[francesco-di-giorgio-martini-stadtkoerper-proportionslehre-anthropometrie]]
  — Zitadelle als Kopf-Analogie des Stadtkörpers, Dinocrates-Anekdote,
  konkrete Konstruktionsvorschrift (Kreis um den Körpernabel, alternativ
  Quadrat), Organ-Funktions-Analogie für Platzverteilung, praktische Regeln
  für Hügel-, Ebenen- und Flussstädte. Verlinkt mit dem Al-Farabi-Artikel
  (dort veraltete Notiz korrigiert).

Betriebsbefund: Seitenangaben in dieser Anthologie sind gedruckte
Buchseiten, nicht PDF-Seitenindex — Offset PDF-Seite = gedruckte Seite + 4
(verifiziert über Fusszeile vor dem Al-Farabi-Text). Diese Session hatte
`poppler`/`tesseract`/`tesseract-lang` (Sprachpaket `deu`) zwar installiert,
aber nicht im PATH — nachgerüstet statt neu installiert; `/tmp` liess sich
von `tesseract` nicht öffnen, Workaround `~/fdgm-test/`. **Von den ca. 50
Quellentextband-Auszügen sind jetzt 18 destilliert, rund 28 bleiben offen.**
**Nächster Lauf:** nächsten kurzen, bürorelevanten Quellentextband-Auszug
wählen, Auswahl gegen diesen INDEX-Eintrag statt gegen `KORPUS-QUEUE.md`
prüfen (dort oft einen Lauf veraltet).

## 260830 — Sektion `01_Staedtebau` (Korpus 4), 32. P2-Lauf: Vita Nicolai V, Hippokrates destilliert, Koran-Auszüge ohne Artikel (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text trägt bewusst keine
Zahlen mehr): `KORPUS-QUEUE.md`, dieses INDEX, CHANGELOG und die
Inventardatei gegengeprüft — deckungsgleich mit dem 31.-Lauf-Ende. Working
tree bei Laufbeginn sauber, kein `MERGE_HEAD`, nur die eigene Prozessinstanz
(`ps aux`).

Aus der 54-Positionen-Liste des 30. Laufs die drei vom 31. Lauf empfohlenen
Kandidaten per `/opt/homebrew/bin/pdftoppm` gerendert und gelesen:

- **Koran-Auszüge** (S. 169-171, drei Suren-Sammlungen zu Paradiesgärten:
  Sure 3/4/18/37/47/56/88) — reine Jenseits-/Paradiesbeschreibung
  (Gärten, Bäche, Polster, Trauben), kein städtebaulicher oder
  architektonischer Bezug über die religiöse Gartenmetapher hinaus. Analog
  zum Al-Ghazali-Befund des 27. Laufs **ohne Artikel geschlossen**
  (Delta-Ehrlichkeit).
- **Vita Nicolai V** (S. 201, einseitiger Auszug, Folgeseite 202 im
  Quellenband leer) → neuer Artikel
  [[vita-nicolai-v-stadt-als-bibel-der-armen-monumentalbau-legitimation]]
  (monumentale Architektur als Legitimations-/Kommunikationsmittel der
  Kirche gegenüber einer schriftunkundigen Mehrheit, „Stadt als Bibel der
  Armen"), verlinkt mit der bestehenden Renaissance-Idealstadt-Sektion.
- **Hippokrates, «Von der Luft, den Wässern und den Gegenden»** (S. 35-39,
  Erstes und Zweites Hauptstück) → neuer Artikel
  [[hippokrates-von-der-luft-waessern-gegenden-staedtestandort-windrichtung]]
  (medizinisches Vier-Kriterien-Prüfraster für Stadtstandorte, Wind-Wasser-
  Konstitutions-Kausalkette, Ost- vs. Westlage-Gesundheitsrangfolge) —
  strukturelle Vorstufe zu Vitruvs Standortregel, verlinkt mit
  [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]].

Gegen Wiki-Bestand geprüft (`grep -rli` nach «hippokrat»/«nicolai»/«manetti»
über `wiki/*.md`): keine Treffer, keine Duplikate. `git diff --numstat` auf
die Inventardatei zeigt reinen Append.

**Von den 54 benannten Positionen der Anthologie sind jetzt 27 destilliert
oder begründet ohne Artikel abgeschlossen, 27 vollständig offen.**
**Nächster Lauf:** aus der 54-Positionen-Liste im 30.-Lauf-Abschnitt weiter
auswählen — kurze, bürorelevante Einzelauszüge zuerst.

## 260830 — Sektion `01_Staedtebau` (Korpus 4), 33. P2-Lauf: Enea Silvio Piccolomini destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text trägt bewusst keine
Zahlen): `KORPUS-QUEUE.md`, dieses INDEX, CHANGELOG und die Inventardatei
gegengeprüft — deckungsgleich mit dem 32.-Lauf-Ende. Working tree bei
Laufbeginn sauber.

Nächste Position aus der 54-Positionen-Liste des 30. Laufs gewählt: **Enea
Silvio Piccolomini** (S. 233/240/241, drei Sub-Exzerpte), per
`/opt/homebrew/bin/pdftoppm` gerendert und gelesen:

- **Deutschland** (Buch II, S. 233-234): politische Apologie gegen die
  Curia-These der deutschen Verarmung, Stadtpracht (Beispiel Köln) als
  Wohlstandsbeweis, Kontrastfolie antikes Germanien nach Caesar.
- **Wien-Brief** (Brief 9, an einen Freund in Basel, April 1438, S. 240-241):
  quantifizierte Stadtbeschreibung — Befestigung, Haustypologie
  («Stuben»-Heizraum), Rechtssonderstatus Adel/Klerus, Strassenpflaster,
  schlanke Verwaltungsstruktur (18 Stadtväter, Stadtrichter, Bürgermeister,
  einziges Fiskalamt Weinsteuer), quantifizierte Versorgungslogistik.
- **Tivoli/Commentarii rerum memorabilium** (S. 241-242) gelesen, nur
  fundstellenhalber vermerkt — reine Ruinenbeschreibung ohne Verfahrens-
  oder Kennwertbezug (Delta-Ehrlichkeit).

→ neuer Artikel
[[enea-silvio-piccolomini-wien-1438-deutschland-tivoli-stadtbeschreibungen]],
verlinkt mit [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]],
[[siena-baupflege-dokumente-campo-fensterordnung-ballatoi-ufficio-bellezza]]
und [[bern-handfeste-1218-satzungenbuch-1405-baulinien-nachbarrecht]].

Gegen Wiki-Bestand geprüft (`grep -rli` nach «piccolomini»/«Enea Silvio»/
«Pius II» über `wiki/*.md`): keine Treffer, keine Duplikate. `git diff
--numstat` auf die Inventardatei zeigt reinen Append (45/0).

**Von den 54 benannten Positionen der Anthologie sind jetzt 28 destilliert
oder begründet ohne Artikel abgeschlossen, 26 vollständig offen.**
**Nächster Lauf:** Campano (243) oder Pero Tafur (245) als nächste kurze
Positionen, sonst Serlio (267) oder Pacioli (255) als bürorelevante
Renaissance-Traktat-Kandidaten.

**30.08.2026 (Lane FACHWISSEN, 34. und 35. P2-Lauf):** Campano/Pienza
destilliert ([[campano-pienza-pius-ii-architekt-kostenueberschreitung-1462]],
Pero Tafur ohne Ertrag), danach Pacioli
([[pacioli-divina-proportione-koerperproportion-simulacro-architektur]]) und
Serlio ([[serlio-buehnenbau-scena-comica-tragica-satirica-1545]]). Von den
54 benannten Positionen der Anthologie sind jetzt 31 destilliert oder
begründet ohne Artikel abgeschlossen, 23 vollständig offen. Details je Lauf
in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 36. P2-Lauf):** vor Laufbeginn systematisch
geprüft, ob in irgendeiner Sektion beider Korpora noch offene P1-Positionen
bestehen (alle 43 Inventardateien gegen ihren Destillat-Fortschritt
geprüft) — **P1 ist über `buero-referenzen` UND `archiv-fachwissen`
vollständig abgeschlossen**, kein offener Rest gefunden; nur P2 bleibt
offen. Aventinus, Bayerische Chronik (S. 271-274) gelesen, aber ohne
Artikel geschlossen (religiös-moralisierende Verfallsklage, ein einzelner
Absatz zu bescheidenem Kirchenbau ohne Verfahren/Kennwert, zu dünn für
einen eigenständigen Artikel). Castiglione/Raffael-Brief an Leo X. (1519,
S. 275-279) destilliert →
[[castiglione-raffael-brief-leo-x-1519-stilkritik-spolien]] (Spolien-/
Kalkbrennerei-Kritik am antiken Rom, Raffaels Vermessungsmethode,
stilkritische Dreiperioden-Klassifikation, Konstantinsbogen-Beispiel).
Von den 54 benannten Positionen der Anthologie sind jetzt 32 destilliert
oder begründet ohne Artikel abgeschlossen, 22 vollständig offen. Details
in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 37. P2-Lauf):** Münster/Cosmographei (S.
281-282, Berner Gründungssage, Flussschlaufe als Determinante der drei
Längsgassen) destilliert →
[[muenster-cosmographei-bern-gruendungssage-flussschlaufe-stadtform-1550]].
Specklin, Architectura von Vestungen (S. 289-292, vierfache
Standortprüfung Boden/Klima/Wasser/Kriegssicherheit, Begriff der
«Topographia» als Bestandsaufmass vor Erweiterung) destilliert →
[[specklin-architectura-vestungen-standortkriterien-topographia-1589]].
Dazwischen liegender Palladio-Auszug (S. 283-288) als bereits im 23. Lauf
destilliert bestätigt ([[palladio-strassen-bruecken-plaetze-vier-buecher-1570]]),
kein Doppelfund. Von den 54 benannten Positionen der Anthologie sind jetzt
34 destilliert oder begründet ohne Artikel abgeschlossen, 20 vollständig
offen. Details in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 38. P2-Lauf):** Olivier de Serres, Théâtre
d'Agriculture (S. 293-297, Buch VI «Des Jardinages») vollständig geprüft und
**ohne Artikel geschlossen** — reine Zier-/Nutzgarten-Anleitung
(Bordürenpflanzen, Parterre-Farbkiesmuster, Blickachsen-Perspektive), kein
städtebaulicher Gehalt (Delta-Ehrlichkeit, analog Aventinus/Al-Ghazali).
Giorgio Vasari il Giovane, La Città ideale (1598, S. 299-302) destilliert →
[[vasari-il-giovane-citta-ideale-1598-gebaeudetypologie-marktzonierung]]
(Standortwahl Ebene statt Hügel wegen fester Regelbarkeit, Fluss nahe aber
nicht durch die Stadt, Strassenraster-Debatte gerade vs. krumm mit
Siena-Verkettung als Kompromiss, fünfeckige Zitadelle als erster Bauplan,
65-teiliges Typenverzeichnis mit Markt-Warenzonierung, Palast-Geschosshierarchie
und Bibliotheks-Begründung). Von den 54 benannten Positionen der Anthologie
sind jetzt 36 destilliert oder begründet ohne Artikel abgeschlossen, 18
vollständig offen. Nächster Lauf: Leonardo da Vinci (S. 257, bisher nie
geprüft) oder der noch ungeprüfte antike Block Homer bis Cicero (S. 9-81).
Details in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 39. P2-Lauf):** vor Laufbeginn erneut
geprüft, dass P1 über beide Korpora vollständig abgeschlossen bleibt
(Stichprobe unverändert). Leonardo da Vinci, Ausgewählte Texte (S. 257,
zwei Manuskript-Notizen 1490/1493) vollständig gelesen und destilliert →
[[leonardo-da-vinci-mailand-verstaedterungspolitik-zweistufiges-strassensystem]]
(Verstädterungspolitik durch Anreiz-Hausbau der Standesoberen, Zielgrösse
5'000 Häuser/30'000 Wohnungen, Finanzierung über Gemeinde Lodi gegen
Herzogspreis; zweistufiges Strassensystem mit getrennten Ebenen für
Fussverkehr der Herren, Warenverkehr und unterirdische Entsorgung, Verbindung
alle 300 Braccia über Wendeltreppen). Von den 54 benannten Positionen der
Anthologie sind jetzt 37 destilliert oder begründet ohne Artikel
abgeschlossen, 17 vollständig offen. Nächster Lauf: der noch ungeprüfte
antike Block Homer bis Cicero (S. 9-81). Details in
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 40. P2-Lauf):** Homer, Ilias (S. 9-12,
Schiffskatalog/Zeus-Hera-Dialog) geprüft, **ohne Artikel geschlossen**
(reine Städte-Epitheta ohne Verfahren/Kennwert, Delta-Ehrlichkeit). Herodot,
Historien (S. 13-24, Babylon-Doppelmauer/Nitokris-Flussumleitung,
Memphis-Gründung/Sesostris-Kanalnetz, Eupalinos-Tunnel Samos) destilliert →
[[herodot-historien-babylon-memphis-eupalinos-tunnel-samos]]. Bei dieser
Gelegenheit Zähl-Drift der laufenden "X von 54"-Zählung entdeckt und durch
konkrete Namensliste ersetzt (Detail: `wiki/QUESTIONS.md` #74). Details in
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 41. P2-Lauf):** Thukydides, Geschichte des
Peloponnesischen Krieges (S. 27-34, Landflucht-/Küstenbesiedlungstheorie,
Themistokles' eiliger Mauerbau/Peiraieus-Ausbau mit Baukennwerten,
Mauerlängen-Kennwerttabelle der «Langen Mauern» 431 v. Chr.,
Theseus-Synoikismos als Verwaltungsreform) destilliert →
[[thukydides-peloponnesischer-krieg-athen-mauerbau-peiraieus-synoikismos]].
Details in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`.

**30.08.2026 (Lane FACHWISSEN, 42. P2-Lauf):** Cicero, Vom Staatswesen (S.
75-81, Buch I,26 Stadtdefinition und drei Staatsformen nach Sitz der
Beschlusskompetenz; Buch II,1-6 Roms Verfassung als Werk vieler Generationen
statt eines Gesetzgebers, Romulus' bewusste Binnenlage-Entscheidung am Tiber
gegen die Küstenlage mit ausführlicher Vor-/Nachteilsabwägung, Beispiele
Karthago/Korinth) destilliert →
[[cicero-vom-staatswesen-romulus-binnenlage-drei-staatsformen]]. Gegen
Wiki-Bestand geprüft (`grep -rli` Cicero/Romulus): keine bestehenden
Treffer, kein Duplikat. Nächster Lauf: Aristophanes/Die Vögel (41),
Xenophon/Cyropädie (43) oder Platon/Die Gesetze (45) als nächste
Kandidaten aus der Namensliste (Details/Reihenfolge:
`wiki/QUESTIONS.md` #74, 41.-Lauf-Abschnitt der Inventardatei). Details in
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`.
