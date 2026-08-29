---
title: "INDEX architektur-fachwissen"
status: established
last_updated: 2026-08-29
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
| 04 | `02_Architekturtheorie` | archiv | 21 / 1'603 | Vorlesungsreihe Architekturtheorie ETH (Moravánszky/Hildebrand) mit rund 20 eigenen, durchformulierten Frage-Antwort-Katalogen zu Stil, Tektonik, Typus und Ornament. | `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` |
| 05 | `18_Projektkostenplanung` | buero | 16 / 28 | Ein einziger Grossbau (Schulanlage Leutschenbach) liegt hier über alle Kostenermittlungsstufen von der Kostenschätzung 2003 bis zum Finanzrapport 2006 vor, dazu die Genauigkeitsbänder je Projektphase, die Anrechenbarkeitssätze der honorarberechtigten Bausumme und zwei SIA-102-Rechenwerke. | `raw/inventar/buero-referenzen__18_Projektkostenplanung.md` |
| 06 | `10_Protomodern` | archiv | 13 / 519 | Raphael Jans' nie abgeschlossenes Buch-/Manifestprojekt «Protomodern» (2013/14): dichte Schicht eigener Theorietexte, teils nur als Ordnerstruktur/Fragenregister vorhanden. | `raw/inventar/archiv-fachwissen__10_Protomodern.md` |
| 07 | `10_Modellbauen` | buero | 12 / 235 | Eine über vier Jahre gewachsene Betonmodell-Rezeptur- und Verfahrenssammlung aus dem Umfeld Christian Kerez (zwölf Mischungsversuche mit Schlussformel, Fehlerkatalog A bis G) plus ein zitierfähiges Betontechnologie-Merkblatt von Heinz Richner, das bis zum Sichtbeton 1:1 trägt. | `raw/inventar/buero-referenzen__10_Modellbauen.md` |
| 08 | `02_Architekturgeschichte` | archiv | 11 / 3'826 | Kunst-/Architekturgeschichte-Studienarchiv ETH/HTA mit Analyseraster für Gebäudeanalysen, Fachglossar historischer Bauteile und einer geprüften Referenz-Objektliste. | `raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md` |
| 09 | `02_Kunst_Geschichte` | archiv | 11 / 27'649 | Mit 27'649 Dateien die grösste Einzelsektion des ganzen Korpus (zu 54 % Website-Spiegel); büroverwertbar sind Analyseraster, ein Architekturfotografie-Kanon und Bestandes-/Umbau-Argumentation — sehr dünner Ertrag im Verhältnis zum Volumen. | `raw/inventar/archiv-fachwissen__02_Kunst_Geschichte.md` |

### Mittelschicht (P1 einstellig, hohe Dichte)

| # | Sektion | Korpus | P1 / gesichtet | Was drinsteckt | Inventar |
|---|---|---|---|---|---|
| 10 | `02_Denkmalpflege` | archiv | 8 / 156 | Der ETH-Studienapparat zur Vorlesung Hassler liefert mit dem SIA-Merkblatt 2017 «Erhaltungswert von Bauwerken», der SVTSM-Trockenmauer-Richtlinie samt Devisierungskapitel, den Kalk- und Pigmentrezepturen von Glaser und der Begriffssystematik Petzet/Mader vier sofort einsetzbare Bausteine für die Bestandsarbeit. | `raw/inventar/archiv-fachwissen__02_Denkmalpflege.md` |
| 11 | `01_Staedtebau` | archiv | 8 / 51 (von ~8'800 Gesamtbestand, nur 51 einzeln geöffnet) | Städtebau-Studienarchiv ETH (Lampugnani/Christiaanse); eigenes Städtebau-Glossar, Analyseraster, ein städtebauliches Manifest von 2014. | `raw/inventar/archiv-fachwissen__01_Staedtebau.md` |
| 12 | `17_Projektbeschriebe` | buero | 7 / 18 | Die Sektion enthält genau ein Projekt, dafür das vollständige Set der Projektbeschriebe aller Fachplaner der Schulanlage Leutschenbach, verdichtet zum revidierten Gesamtdossier vom 09.12.2009, mit belegten Fassaden-, Minergie-, Tragwerks- und Lüftungswerten. | `raw/inventar/buero-referenzen__17_Projektbeschriebe.md` |
| 13 | `01_Entwerfen` | archiv | 6 / 1'246 | Entwurfs-/Farb-/Ornamenttheorie-Archiv HTA/ETH 2000–2021; büroverwertbarer Kern sind Flächenerfassungs-Richtlinien, Baubeschriebe und Wohnungsschlüssel-Kennwerte. Datenschutz-Funde vermerkt (s. u.). | `raw/inventar/archiv-fachwissen__01_Entwerfen.md` |
| 14 | `25_Wettbewerb` | buero | 5 / 17 | Zwei vollständige Ausschreibungspakete öffentlicher Bauherrschaften von 2009 (selektiver Studienauftrag Zeughaus Ebnet, offener Projektwettbewerb Naturmuseum St.Gallen) zeigen Programmaufbau, Raumprogramm im SIA-416-Raster, Zeittarif-Mechanik und die Kritik der SIA-Kommission 142 im Genehmigungsvermerk. | `raw/inventar/buero-referenzen__25_Wettbewerb.md` |
| 15 | `01_Landschaftsarchitektur` | archiv | 4 / 826 | ETH-Studienarchiv Landschaftsarchitektur; büroverwertbar sind Belagsaufbauten, Dachbegrünung, Pflanzenlisten und ein Gartenanalyse-Raster (Vogt-Broschüren). Datenschutz-Fund: Lieferantenliste mit **Zugangspasswort im Klartext**, nicht erfasst (s. u.). | `raw/inventar/archiv-fachwissen__01_Landschaftsarchitektur.md` |
| 16 | `01_Tragwerk` | archiv | 4 / 1'098 | Grösstenteils leeres Ordnungsgerüst; belegter Kern ist der Arbeitsbestand aus einer Assistenz bei Prof. Schwartz (ETH) zu historischen Holzdachstühlen und Formfindung. Mehrere Datenschutz-Funde (Stundenzettel, privater Schriftverkehr), nicht erfasst (s. u.). | `raw/inventar/archiv-fachwissen__01_Tragwerk.md` |
| 17 | `00_Allgemein` | archiv | 3 / 19 | Meta-Ebene des Archivs: Ordnungslogik (24 Hauptordner) und ein eigenes 14-teiliges Fachsystematik-Konzeptpapier von 2011, kein Fachinhalt im engeren Sinn. | `raw/inventar/archiv-fachwissen__00_Allgemein.md` |
| 18 | `02_Architektur_Vermitteln` | archiv | 3 / 85 | Lehrmaterial zur Vermittlung: Rhetorik, Moderation, Protokoll, Geschäftskorrespondenz, wissenschaftliches Arbeiten — direkt anschlussfähig an mehrere JANS-Skills. Datenschutz-Fund: private Kontaktdaten Dritter auf Studienarbeits-Titelblättern, nicht erfasst (s. u.). | `raw/inventar/archiv-fachwissen__02_Architektur_Vermitteln.md` |
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
weiteren eigenständigen offenen P1-Artikel; P2 bleibt vollständig offen.** Nächster Lauf
gemäss Spec-Plan: `wiki/INDEX.md` «Sektionen nach Ertrag» für alle 20 archiv-fachwissen-
Inventardateien neu aufbauen (aktuell nur zwei erfasst), danach die übrigen Sektionen nach
Ertrag ordnen und abarbeiten — Vorsicht bei `04_Politik`/`05_Kultur_Gesellschaft_Stil`/
`06_Reisen`/`07_Religion` (Privatunterlagen-Vorbehalt).
