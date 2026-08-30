# CHANGELOG architektur-fachwissen

## 2026-08-30 — P2-Lauf, Sauter-Kapitel `05 HEIMATSTIL GARTENSTADTBEWEGUNG` (74. Lauf, Lane FACHWISSEN)

Stand selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, Inventardatei), Dispatch-Text
weiterhin veraltet. Vorangegangene unkommittierte Buchführung des 73. Laufs (Sauter-Kapitel
04 Klassizismus/Historismus/Eklektizismus) zuerst per `nas-commit-now.sh` gesichert (erneuter
NAS-Merge-Konflikt in mehreren fremden KBs, Working Tree lokal sauber, dem 15-Min-Cron
überlassen).

**Duplikatscheck zuerst ausgeführt:** bestehenden Artikel
[[gartenstadtbewegung-genealogie-pugin-ruskin-morris-howard-europa]] gegengelesen — hohe
Kollisionsvermutung laut Vorlauf-Notiz, aber kein Artikel-Duplikat: jener Artikel ist eine
rohe Vorlesungsmitschrift zur ideengeschichtlichen Genealogie Pugin→Howard, dieses Sauter-
Kapitel liefert einen sauberen Vier-Bauten-Kanon mit Architekt/Jahr/Kernmerkmal aus
geordneter Sekundärquelle. Einzige Überschneidung Hellerau, dort per Rückverlinkung ergänzt
(`git diff --numstat` `3 1`).

Kapitel `05 HEIMATSTIL GARTENSTADTBEWEGUNG.pdf` (5 S.) vollständig gelesen und destilliert zu
[[sauter-heimatstil-reformarchitektur-gartenstadtbewegung-vier-bauten-kanon]]: Vier-Bauten-
Kanon 1904-1917 (Villa Heimeli Luzern/Sepp Kaiser, Schoorenkolonie St. Gallen/Paul Robert
Gerber, Gartenstadt Hellerau Dresden/Richard Riemerschmid, Gartenstadt Staaken Berlin/Paul
Schmidthenner), zwei Kurzbiografien, gesellschaftspolitischer Rahmen (Landesausstellungen
1896/1914, Schweizer Heimatschutzbewegung 1905). Kein neuer Glossarbegriff. 7 der 13
Sauter-Dateien bleiben offen (Kapitel 06-11). Sperrlisten-Prüfung: kein Fund. Details
`raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md`. Nächster Lauf: Kapitel
`06 JUGENDSTIL`, davor Duplikatscheck.

## 2026-08-30 — Erster P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte` (68. Lauf, Lane FACHWISSEN)

Dispatch-Prompt nennt bewusst keine Zahlen mehr (Lehre aus über 70 Läufen mit
veraltetem Festwert-Prompt, siehe Memory `project_fachwissen-dispatch-loop`). Stand
selbst ermittelt: `KORPUS-QUEUE.md` (Zeile Korpus 4, 67. Lauf) nennt als Kandidaten für
den nächsten Schritt `02_Architekturgeschichte` (11 P1, P2 «ungesichtet») und
`02_Kunst_Geschichte` (11 P1, P2 «sehr dünner Ertrag laut eigenem Vermerk»); Gegenprobe
gegen die jeweilige Inventardatei bestätigte für `02_Gestalt_Kulturverstaendnis` (dritter
Queue-Kandidat) und `03_Bauprozesse_I_II`, dass beide bereits abgeschlossen bzw. auf vier
dauerhaft blockierte Positionen reduziert sind — die Queue-Zelle war an diesen zwei
Stellen veraltet. `02_Architekturgeschichte` gewählt: einzige echte, unblockierte
P2-Position mit erwartbar besserem Ertrag als die als «sehr dünn» markierte
Alternative.

Der eigenen Empfehlung im Inventar folgend («zuerst Luzerner Skript, dann die vier
Epochen-Zusammenfassungen der obersten Ebene») mit den vier Zusammenfassungen begonnen
(Luzerner Skript Sauter/Marion, 13 Teile, bleibt für einen Folgelauf offen):

- **Tönnesmann-Vorlesungsskript** (43 S., Renaissance/Barock HS 2012, per `pypdf`
  gelesen — kein `pdftotext`/Homebrew auf dieser Station nötig, Textlayer vorhanden) →
  [[toennesmann-machtgeschichte-bauaufgaben-proportionssysteme-renaissance]]. Zwei
  eigenständige Stränge destilliert: die machtgeschichtliche Herleitung von Bauaufgaben
  (Florenz-Beispiel Dom/Or-San-Michele/Palazzo-Vecchio-Konkurrenz, Urbino-Beispiel
  Federico da Montefeltro) sowie die Zahl-Mass-Proportion-Systematik aus dem
  Gastvorlesungsteil von Paul Naredi-Rainer (perfekte Zahlen Abtei Cluny, Grundmass
  Aachener Pfalzkapelle, musikalische Proportionen Alberti an Tempio Malatestiano und
  Palazzo Rucellai). Dazu drei wiederkehrende Entwurfsprinzipien gebündelt: «Ehrlichkeit
  der Fassade», Säulenordnung als Bedeutungsträger, Kirchenbau-Wandel Zentralbau→
  Längsbau nach dem Konzil von Trient. Gegen Wiki-Bestand geprüft (`grep` auf
  Brunelleschi/Alberti/Palladio/Bramante/Serliana u. a.): keine inhaltliche Dopplung.
- **MITTELALTER-ZSMFSG.pdf** (17 S.) →
  [[mittelalter-epochenraster-romanik-gotik-stilmerkmale-datierung]]. Epochenraster
  Vor-/Früh-/Hoch-/Spätromanik und Gotik als Datierungshilfe für Bestandsbauteile, vier
  neue Glossarbegriffe (Atrium, Spolien, Villard de Honnecourt, St. Galler Klosterplan)
  ergänzend zum bestehenden [[fachglossar-historische-bauteile-kirchenbau-gotik]] (dort
  bereits geführte Begriffe Krypta/Apsis/Chor/Triforium bewusst nicht wiederholt), drei
  Referenzbauten mit Argumentationswert (Aachener Dom als zweiter Spolien-Beleg,
  St-Denis als Gotik-Gründungsbau, Kölner Dom als Beleg für plantreue Fertigstellung
  nach Jahrhunderte-Unterbruch).
- **Renaissance-Zusammenfassung.pdf** (51 S.) — nur S. 1-3 destilliert →
  [[renaissance-epochencharakteristik-stilmerkmale-architekturtheorie-vitruv-alberti]]
  (Stilmerkmal-Raster Früh-/Hoch-/Spätrenaissance/Manierismus, Architekturtheorie-
  Genealogie Vitruv-Wiederentdeckung 1416 bis Palladio). Die anschliessende, sehr
  umfangreiche Einzelbau-Dokumentation (S. 4-51, Brunelleschi/Michelozzo/Alberti/
  Rossellino bis auf Fassadenachsen-Detailebene) bewusst **nicht** gelesen — im Artikel
  als offener Punkt vermerkt, da inhaltlich grösstenteils bereits durch die bestehenden
  vier Artikel dieser Sektion abgedeckt oder unterhalb der Verwertungsschwelle.
- **Moderne.pdf** (16 S.) — **nicht destilliert**: Sichtprüfung (Empire-Stil bis Semper/
  ETH-Polytechnikum Zürich) zeigte hohe thematische Nähe zu den bereits bestehenden
  Semper-Artikeln [[tektonik-bekleidungstheorie-boetticher-semper-loos-frampton]] und
  [[materialwahrheit-stoffwechseltheorie-semper-urtechniken]] sowie stellenweise sehr
  rohe, teils nur stichwortartige Mitschrift-Qualität — vor Bearbeitung im Folgelauf
  erst Duplikatsprüfung gegen diese zwei Artikel.

`git diff --numstat` auf die Inventardatei zeigte `61 0` (reiner Append). **Damit bleibt
P2 dieser Sektion überwiegend offen:** Luzerner Skript (13 Teile), 41
Architektenportraits, `Fragen.doc`, Rest von `Renaissance-Zusammenfassung.pdf` und
`Moderne.pdf`, übrige Autorenordner `04_Kunsthistoriker` (889 Dateien). **Nächster
Lauf:** Luzerner Skript Sauter/Marion — laut Inventar der «sauberste, weil
systematischste» Sekundärtext des ganzen Bestandes.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern` abgeschlossen (67. Lauf, Lane FACHWISSEN)

Vor Arbeitsbeginn Stand selbst ermittelt statt aus dem Dispatch-Prompt übernommen (der
nennt bewusst keine Zahlen mehr): `KORPUS-QUEUE.md` zeigte einen unkommittierten Vorlauf
(66. Lauf, Sammelartikel Kurzfragmente), lokal sauber, Hostname per `scutil` als Macmini
bestätigt. `nas-commit-now.sh` zur Sicherung ausgelöst — erneuter, bekannter NAS-Merge-
Konflikt in sechs fremden KBs (`normen`, `architekten-synobsis`, `baurecht`, `grobkosten`,
`KORPUS-QUEUE.md`, diese KB selbst), lokal ohne `MERGE_HEAD`, dem 15-Min-Cron überlassen statt
selbst aufgelöst (fremde KBs ausserhalb des Schreibbereichs dieser Lane).

Danach die letzte offene P2-Position der Sektion bearbeitet: die sieben Wikipedia-/
Wiktionary-Begriffsblätter (Anthropomorphismus, Capriccio, Pasticcio, Epitome, Form follows
function, Shaker-Religion, Protogeometric Art) sowie die Sgraffito-Sammlung `cntmng*.pdf`
vollständig gelesen. Ergebnis differenziert statt pauschal destilliert:

- **Capriccio** (Wikipedia, 2013): kunsttheoretischer Regelverstoss-Begriff, im Quelltext
  selbst mit Piranesis *Carceri* verknüpft — Anschluss an den bereits bestehenden Artikel
  [[rossi-analoge-architektur-typus-piranesi-eth-lehrzeit]] (Rückverlinkung ergänzt).
- **Shaker-Religion** (Wikipedia, 2012): einziges der sieben Blätter mit dokumentiertem
  Architektur-Bezug im Quelltext selbst (Möbelstil, Parallele zu Arts-and-Crafts, Einfluss
  auf die Moderne in Architektur und Design).
- **Sgraffito-Sammlung `cntmng*.pdf`**: kein Wikipedia-Ausdruck, sondern ein digitalisierter
  Zeitschriftenaufsatz (Hermann Weilenmann, «Ein Museum», in: *Das Werk* 7 (1920), Heft 2,
  S. 29-34, e-periodica/SEALS, DOI 10.5169/seals-81585) über ein Heimatmuseum in Klosters,
  bebildert u. a. mit dem Sgraffitohaus Andeer (Haus Pedrun, frühes 16. Jh.) — zitierfähige
  Frühquelle zur These «Ornament ist integraler Bestandteil des Gebrauchsgegenstands», Parallele
  zu Sullivan 1892.
- **Anthropomorphismus, Pasticcio, Epitome, Protogeometric Art**: geprüft, kein Artikel —
  generische bzw. themenfremde Wikipedia-Inhalte ohne Architektur-Bezug im Quelltext;
  Protogeometric Art war vom Klassifikator selbst bereits im Ordner `00_Ungueltig` abgelegt.
- **Form follows function** (Wikipedia, 2013): inhaltlich schwächere Dopplung des bereits
  bestehenden Artikels [[form-follows-function-genealogie-sokrates-vitruv-alberti-greenough-sullivan]]
  (Di Stefano 2012); einzige Ergänzung (Bauhaus-Rezeption, Adolf Loos' Glasfassaden-Einwand)
  dort als Randnotiz vermerkt, kein eigener Artikel.

Zu einem Sammelartikel verdichtet:
[[begriffsapparat-protomodern-capriccio-piranesi-shaker-sgraffito-weilenmann]]
(`status: speculative`, überwiegend tertiäre Quellen). Inventarposition (Zeile 74,
`raw/inventar/archiv-fachwissen__10_Protomodern.md`) als gelesen/destilliert markiert
(`git diff --numstat` auf die Inventardatei: reiner Append, keine Löschung).

**Damit sind für die Sektion `10_Protomodern` sämtliche P1- und P2-Tabellenzeilen des
Inventars als gelesen markiert** — P1 war bereits seit dem 61. Lauf vollständig, P2 ist es
mit diesem Lauf ebenfalls (sieben P2-Zeilen, alle mit «Gelesen»/«destilliert» versehen).
Rest-Substanz der Sektion liegt nur noch in P3 (unlesbare Scans ohne OCR) und X
(Bilddateien/Sicherungskopien), beide gemäss KB-Regel nicht zu destillieren. Nächster
Schritt für den Korpus `archiv-fachwissen`: nächstgrosse Sektion mit offenem P1/P2 wählen
(Kandidaten laut `wiki/INDEX.md` «Sektionen nach Ertrag»: `02_Gestalt_Kulturverstaendnis`,
`01_Konstruktion`, `03_Bauprozesse_I_II`, `02_Architekturgeschichte`, `02_Kunst_Geschichte`).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern`, zweiter P2-Lauf (Lane FACHWISSEN)

Vor Arbeitsbeginn unkommittierte Vorlauf-Änderungen (erster P2-Lauf, Di Stefano/Sullivan)
vorgefunden und per `nas-commit-now.sh` zu sichern versucht — erneuter bekannter
NAS-Merge-Konflikt in sechs fremden KBs (`normen`, `architekten-synobsis`, `baurecht`,
`grobkosten`, `KORPUS-QUEUE.md` sowie in dieser KB selbst), Working Tree lokal unverändert
(kein `MERGE_HEAD`), dem 15-Min-Cron überlassen. `ps aux`/`scutil` vorab geprüft: nur ein
laufender `claude -p`-Prozess für diese Lane, Hostname Macmini, keine Doppel-Instanz.

Danach das laut Vorlauf nächste Element bearbeitet: das Rowe/Koetter-«Collage-City»-Konvolut
(`04_Texte/00_ugueltig/Rowe_Colin_Collage_City/`, 5 PDF) vollständig gelesen (PyMuPDF, kein
Originaltext im Bestand, nur vier eigenständige studentische Lesenotizen — zwei der fünf
Dateien sind ein MD5-Duplikat). Zu einem Artikel verdichtet:
[[rowe-koetter-collage-city-figur-grund-bricolage-fuchs-igel]] (`status: speculative`).
Kerninhalte: Figur-Grund-Umkehrung (Unité d'Habitation als Negativ der Uffizien, Parma gegen
St-Dié, Haussmann-Paris gegen Amsterdam-Süd), Bricolage/Fuchs-Igel nach Isaiah Berlin
(Le Corbusier als Fuchs, der glaubt Igel zu sein), «Stadt als Museum» (München unter
Ludwig I./Klenze als Formenvielfalt-Beispiel), Collage-als-Methode über Picasso (Stierkopf,
Stuhlgeflecht) und zwei konkurrierende Zeitbegriffe. Gegen den Wiki-Bestand geprüft — kein
Duplikat, verlinkt mit [[eisenman-house-vi-autonomie-architektur-new-york-five-dom-ino]]
(Rowe als Vermittler der Wittkower-Methodik an Eisenman) und
[[rossi-analoge-architektur-typus-piranesi-eth-lehrzeit]] (komplementäre
Stadtelement-Theorie). Sperrlisten-Prüfung: kein Fund. Details/Erledigt-Markierung
`raw/inventar/archiv-fachwissen__10_Protomodern.md`.

Damit sind 30 der 33 P2-Positionen dieser Sektion offen. Nächster Lauf: Šik-Interview
(`09_Die_athmospherische_Stadt/Eine Stadt ist mehr als eine Galerie.pdf`, ETH-Life, kurz).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern`, erster P2-Lauf (Lane FACHWISSEN)

Stand selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen): `KORPUS-QUEUE.md`
Zeile 4 nannte als nächsten Schritt „nächstgrösste Sektion mit offenem P2" mit den
Kandidaten `10_Protomodern` (13 P1-Dateien, P2 mit 33 Positionen laut Inventar
vollständig ungesichtet) oder `03_Bauprozesse_I_II`. `10_Protomodern` gewählt, weil dort
kein einziger P2-Lauf existierte (sauberer Einstieg) und die Inventardatei die 33
P2-Positionen bereits klar in sieben Tabellenzeilen gruppiert vorlag.

Zwei der sieben P2-Zeilen im Ornament-Forschungskonvolut (`01_Focabular/
Das_Architektonische_Ornament/`) im Original gelesen: PyMuPDF für die drei PDF (kein
`pdftotext` auf dieser Station), `textutil` für die Kamphans-DOCX.

**`2.3 Di Stefano.pdf`** (Elisabetta di Stefano, «Form follows Function? Misunderstanding
and Value of a Sullivan's Concept», Wolkenkuckucksheim/Cloud-Cuckoo-Land 32, 2012, 7
Seiten) → neuer Artikel
[[form-follows-function-genealogie-sokrates-vitruv-alberti-greenough-sullivan]]: die
Formel «Form follows Function» rückverfolgt über Sokrates (Angemessenheit/*prépon*),
Vitruv (Tempelordnungen nach Götter-Charakter), Alberti (Gebäude als Organismus),
Horatio Greenough (*adaptation of forms to functions*, direkter Vorläufer) und die
amerikanischen Transzendentalisten (Emerson, Thoreau) bis zu Sullivans eigenem
Gesetzsatz 1896 und dem Autorschaftsstreit mit Dankmar Adler/John Wellborn Root; dazu die
ironische Umkehrung im 20. Jahrhundert (Venturi «Less is a bore», Peter Blake «Form
follows Fiasko», Mendini «Family follows Fiction»). Gegen den bestehenden
[[funktionsbegriff-fassadendreiteilung-sullivan-haering-semper]] geprüft — anderer
Fokus (Formel-Genealogie statt Fassaden-Dreiteilungsargument), verlinkt statt dupliziert.

**`Sullivan-Ornament in Architecture.pdf`** (1892, Original) + **`Dissertationsvorhaben
Stefan Kamphans.docx`** + **`V_20100520-Ornament-Handout.pdf`** (Dr. habil. Sonja
Hildebrand, ETH-Vorlesung «Von der Aufklärung zur Moderne», Professur Tönnesmann,
20.05.2010) → neuer Artikel
[[sullivan-ornament-emotionale-ausdruckstheorie-1892-herzog-de-meuron-rueckkehr]]:
Sullivans eigene Begründung, warum Ornament notwendiger emotionaler Ausdruck und nicht
Zusatz zur reinen Form ist («*yet must both spring from the same source of feeling*»),
das Kamphans-Dissertationsexposé zur Ornament-Verdrängung durch Loos/die Moderne und zur
Ornament-Rückkehr seit rund den 1990er-Jahren am Beispiel Herzog & de Meuron (Allianz
Arena, Elbphilharmonie), sowie eine belegte Ornament-Bau-Zeitleiste von Richardson über
Sullivan/Moser bis Herzog & de Meuron aus dem ETH-Handout. Gegen
[[ornament-decorum-angemessenheit-loos-semper-riegl]] und
[[loos-ornament-und-verbrechen-argumentationsgang-kleidungs-analogie]] geprüft — kein
Duplikat, verlinkt.

Beide Artikel `status: emerging`. Sperrlisten-Prüfung: kein Fund (Fachaufsatz,
historisches Originalzitat 1892, fremdes Dissertationsexposé — urheberrechtlich
sinngemäss mit Fundstelle wiedergegeben, keine grossflächigen Wortübernahmen ausser
kurzer gekennzeichneter Kernzitate).

Fortschritt in `raw/inventar/archiv-fachwissen__10_Protomodern.md` Abschnitt
«Destillat-Fortschritt» ergänzt, `git diff --numstat` zeigt reinen Append (`25 0`).
`wiki/INDEX.md` Zeile 06 und Laufprotokoll aktualisiert.

**31 der 33 P2-Positionen dieser Sektion bleiben offen:** das Rowe/Koetter-«Collage-City»-
Konvolut (5 PDF), das Šik-Interview, der Caruso-Reader-Auszug, elf weitere kurze
Eigen-DOCX sowie die Wikipedia-/Wiktionary-Begriffsblätter plus Sgraffito-Sammlung.
**Nächster Lauf:** Rowe/Koetter «Collage City»
(`04_Texte/00_ugueltig/Rowe_Colin_Collage_City/`, 5 PDF mit Textebene laut Inventar).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 55. P2-Lauf (Sueton destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt seit der Korrektur 30.08.2026
bewusst keine Zahlen mehr): `KORPUS-QUEUE.md`, Inventardatei und dieses CHANGELOG
übereinstimmend auf 54 Läufe, working tree sauber, letzter Commit (54./Juvenal) bereits
gepusht — keine eigene Sicherung nötig, direkt mit dem empfohlenen Kandidaten (Sueton,
S. 149) weitergearbeitet.

**Sueton, Kaiserbiographien, Der göttliche Augustus, Kapitel 28-30 und 37** (S. 149-150,
per `/opt/homebrew/bin/pdftoppm -png -f 153 -l 157 -r 150`, PDF-Seite = gedruckte Seite +
4, Bereichsende gegenverifiziert: PDF-Seite 155 = gedruckte Seite 151 = Beginn „Pausanias"
bestätigt Positionsende) → neuer Artikel
[[sueton-augustus-kaiserbiographien-forum-mars-ultor-vigiles-regionen]]: Augustus' eigener
Marmor-Anspruch («Lehmziegelstadt» zu «marmorne»), drei Staatstempel mit Vor-/Baugeschichte
(Forum mit Mars-Ultor-Tempel als drittes Forum gegen Gerichtsüberlastung, mit gesonderter
Staatsverbrechen-/Richterlosung dort; Apollotempel auf dem Palatin mit angebauter
lateinisch-griechischer Bibliothek nach Blitzeinschlag-Weisung der Haruspices;
Jupiter-Tonans-Tempel nach Blitzschlag im Kantabrerfeldzug), ein explizites
Drei-Wege-Finanzierungsmodell öffentlicher Bauten (Staatsbauten im eigenen Namen,
Repräsentationsbauten unter Familiennamen, private Stiftungsbauten führender Bürger nach
eigenem Vermögen — Marcius Philippus, Lucius Cornificius, Asinius Pollio, Munatius Plancus,
Cornelius Balbus, Statilius Taurus, Marcus Agrippa), die Regionen-/Bezirksverwaltung
(Los- und Wahlämter), die nächtliche Feuerwehr ausdrücklich als Augustus' eigene Erfindung,
Tiberbett-Verbreiterung/-Säuberung gegen Bauschutt und Gebäudevorsprünge,
Strassenfinanzierung (Via Flaminia persönlich, übrige Strassen aus
Triumphatoren-Beuteerlös), eine bezifferte Tempelrestaurierungs-Schenkung (16'000 Pfund
Gold, 50 Mio. Sesterzen Edelsteine/Perlen für den Kapitolinischen Jupiter) sowie die
Kapitel-37-Ämterliste (Bauten/Wege/Wasserleitungen/Tiberbett/Getreideverteilung/
Stadtpräfektur/zwei Triumvirate).

Gegen Wiki-Bestand geprüft (`grep -rli`
sueton/augustus/marstempel/apollotempel/feuerwehr/vigiles über `wiki/*.md`): kein
inhaltlicher Duplikat. Verlinkt mit
[[strabo-erdbeschreibung-rom-servianische-mauererweiterung-augustus-bauhoehenlimite]] (dort
per Nachtrag rückverlinkt: Sueton datiert dieselbe Feuerwehr-Massnahme ausführlicher als
Augustus' eigene Erfindung und ordnet sie in ein grösseres Verwaltungsprogramm ein),
[[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]] (Abgrenzung: dort Neros
punktuelle Nachbrand-Bauordnung, hier Augustus' stehende Ämterstruktur) und
[[frontinus-vitruv-wasserversorgung-rom-kaliber-konzessionsrecht]] (Marcus Agrippa als
gemeinsame Person).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (`43 0`). Aus der
Namensliste bleibt nach Sueton offen: Pausanias (151), Achilleus Tatius (155), Ausonius
(157), Salvianus (159), Francesco Colonna/Hypnerotomachia (247) — 5 Positionen.
**Nächster Lauf:** Pausanias (151) als nächster im Seitenverlauf liegender Kandidat, sonst
der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, fünfzigster P2-Lauf (Plutarch/Romulus destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst ermittelt: der 49. Lauf (Seneca, Plinius d. Ä.) war beim
Ermitteln bereits durch `nas-selfcommit` committet (`git status` sauber, `git log` zeigte
Commit `04a15a26a`) — keine eigene Sicherung dafür nötig, direkt mit dem nächsten offenen
Kandidaten weitergearbeitet.

**Plutarch, Romulus, Kap. 3/9-11** (S. 125-129) → neuer Artikel
[[plutarch-romulus-stadtgruendung-rom-ortsstreit-asyl-mundus-ritual]]: Standortstreit
Romulus (Palatin)/Remus (Aventin) entschieden durch Augurien-Wettstreit, Asyl-Tempel als
Bevölkerungswachstumsinstrument, ausführliches etruskisches Gründungsritual (Mundus-Grube
mit Herkunftserde, Pflugfurche, Pomerium, Tor-Ausnahme von der Mauerheiligkeit) — narrative
Parallelfassung zum sprachetymologischen Bericht bei
[[varro-de-lingua-latina-etruskisches-gruendungsritual-stadtetymologie]], dieser Artikel
entsprechend mit Rückverweis ergänzt.

Aus der Namensliste (`wiki/QUESTIONS.md` #74) bleiben nach diesem Lauf 10 Positionen offen:
Tacitus, Plinius d. J., Strabo, Juvenal, Sueton, Pausanias, Achilleus Tatius, Ausonius,
Salvianus, Francesco Colonna/Hypnerotomachia. Nächster Lauf: Tacitus (S. 131-133).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, neunundvierzigster P2-Lauf (Seneca und Plinius d. Ä. destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst ermittelt: `git status`/`git log` zeigten den 48. Lauf
(Livius) als letzten committeten Stand, working tree sauber, kein `MERGE_HEAD`.

**Seneca, Naturales quaestiones, Buch VI, 1** (S. 112) → neuer Artikel
[[seneca-erdbeben-pompeji-62-nchr-naturwissenschaftliche-untersuchungen]]: datierter
Augenzeugenbericht des Erdbebens vom 5. Februar 62 n. Chr. mit regionalem Schadensmuster
über Pompeji, Herculaneum, Nuceria und Neapel.

**Plinius der Ältere, Naturalis historia, Buch V, 11 und Buch XXXVI, 24** (S. 113-116) →
neuer Artikel
[[plinius-der-aeltere-alexandria-dinocrates-rom-wunderwerke-naturgeschichte]]:
Alexandria-Gründungsplan durch Dinocrates, Roms Circus Maximus/Cloaca Maxima/Privatpalast-
Verfall/Fassadenregel für Ehrenhäuser. Löst den offen gelassenen Cross-Check in
[[livius-camillus-rede-standortkriterien-regelloser-wiederaufbau-rom]] zu den dortigen
«Abzugsgräben» ein (dieselbe Cloaca Maxima), dieser Artikel entsprechend ergänzt.

Aus der Namensliste (`wiki/QUESTIONS.md` #74) bleiben nach diesem Lauf 11 Positionen offen:
Plutarch/Romulus, Tacitus, Plinius d. J., Strabo, Juvenal, Sueton, Pausanias, Achilleus
Tatius, Ausonius, Salvianus, Francesco Colonna/Hypnerotomachia. Nächster Lauf: Plutarch/
Romulus (S. 125).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, einundvierzigster P2-Lauf (Thukydides destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst ermittelt: `KORPUS-QUEUE.md`, Specs-Ordner, `wiki/INDEX.md`,
`CHANGELOG.md` und Inventardatei gegengeprüft. Zwei unversionierte Änderungen aus dem
40. Lauf (`CHANGELOG.md`, `wiki/INDEX.md`) vorgefunden, gegen den bereits committeten
40.-Lauf-Abschnitt der Inventardatei geprüft (deckungsgleich) und vor eigener Arbeit per
`nas-commit-now.sh` gesichert.

**Thukydides, Geschichte des Peloponnesischen Krieges** (S. 27-34, `Quellentextband-1.pdf`)
→ neuer Artikel
[[thukydides-peloponnesischer-krieg-athen-mauerbau-peiraieus-synoikismos]]:
Landflucht-/Küstenbesiedlungstheorie, Sparta-vs-Athen-Stadtform-als-Machtsignal-Kontrast,
Themistokles' eiliger Mauerbau und Peiraieus-Ausbau nach den Perserkriegen mit
Baukennwerten, Mauerlängen-Kennwerttabelle der "Langen Mauern" 431 v. Chr., Perikles'
Landflucht-Kriegsstrategie, Theseus-Synoikismos als Verwaltungsreform statt Neugründung.
Gegen Wiki-Bestand geprüft, keine Duplikate.

`git diff --numstat` auf die Inventardatei zeigt reinen Append (41/0). Von den 54 benannten
Positionen der `Quellentextband-1.pdf`-Anthologie sind damit 40 destilliert oder begründet
ohne Artikel abgeschlossen, 21 offen (Liste im 41.-Lauf-Abschnitt der Inventardatei).
**Nächster Lauf:** Cicero/Vom Staatswesen (S. 75), sonst der Rest der Namensliste.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, vierzigster P2-Lauf (Herodot destilliert, Homer ohne Artikel, CHANGELOG-Lücke der Läufe 35-39 dokumentiert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst aus `KORPUS-QUEUE.md`, `wiki/INDEX.md`, CHANGELOG und der
Inventardatei ermittelt (Dispatch-Text trägt bewusst keine Zahlen). Dabei auffällig: dieser
CHANGELOG zeigte als jüngsten Eintrag noch den 34. Lauf (Campano), obwohl Inventardatei und
Wiki-Ordner bereits fünf weitere Läufe (35.-39., Pacioli/Serlio/Aventinus/Castiglione/
Münster/Specklin/Olivier de Serres/Vasari/Leonardo da Vinci) tragen — die CHANGELOG-Einträge
dieser fünf Läufe sind vermutlich im dokumentierten NAS-Merge-Konflikt (mehrere Lane-CHANGELOGs
gleichzeitig) verlorengegangen; die Wiki-Dateien und die append-only Inventardatei selbst sind
davon nicht betroffen. Vollständiger Bestand also intakt, nur dieses CHANGELOG lückenhaft.

Erste Priorität aus dem 39.-Lauf-Hinweis (antiker Block Homer bis Cicero, `Quellentextband-1.pdf`
S. 9-81) begonnen:

- **Homer, Ilias** (S. 9-12, Schiffskatalog und Zeus/Hera-Dialog) gelesen, aber ohne Artikel
  geschlossen — reine Städte-Epitheta im Versmass, kein Verfahren/Kennwert (Delta-Ehrlichkeit,
  analog Aventinus/Olivier de Serres).
- **Herodot, Historien** (S. 13-24, Babylon, ägyptisches Kanalnetz/Landvermessung, Eupalinos-
  Tunnel auf Samos) → neuer Artikel
  [[herodot-historien-babylon-memphis-eupalinos-tunnel-samos]]: Babylons quadratischer
  Stadtgrundriss mit Doppelmauer-Kennwerten, Königin Nitokris' Flussumleitung/Rückhaltesee/Brücke
  als kombinierte Verteidigungs-/Hochwasserschutzanlage, Memphis-Gründung durch Flussverlegung,
  Sesostris-Kanalnetz mit Herodots eigener Ursprungsthese der Geometrie aus der
  Landvermessungspraxis, Eupalinos' Doppelvortrieb-Wassertunnel auf Samos.

Gegen Wiki-Bestand geprüft (`grep -rli` Babylon/Nitokris/Eupalinos/Sesostris/Bubastis): drei
beiläufige Treffer, keine inhaltlichen Duplikate. `git diff --numstat` auf die Inventardatei zeigt
reinen Append (60/0).

**Zählungskorrektur:** die bisherige fortlaufende Einzelzahl "X von 54 destilliert" ist über die
Läufe abgedriftet (mindestens 21 statt der zuletzt geführten 17 offenen Positionen, u. a. Francesco
Colonna/Hypnerotomachia nie erwähnt). Ab diesem Lauf gilt die konkrete Namensliste im
40.-Lauf-Abschnitt der Inventardatei als Referenz, `wiki/QUESTIONS.md` #74 dokumentiert den Befund.
**Nächster Lauf:** Thukydides (27) oder Cicero/Vom Staatswesen (75), sonst der Rest der
Namensliste.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, vierunddreissigster P2-Lauf (Campano/Pienza destilliert, Pero Tafur ohne Artikel, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst aus `KORPUS-QUEUE.md`, `wiki/INDEX.md`, CHANGELOG und der
Inventardatei ermittelt (Dispatch-Text trägt bewusst keine Zahlen). Working tree bei
Laufbeginn zeigte einen unkommittierten `wiki/INDEX.md`-Nachtrag aus dem 33. Lauf;
`nas-commit-now.sh` lief in den bekannten Merge-Konflikt in fremden Lane-CHANGELOGs
(sechs KBs), Skript brach den Merge selbst sauber ab, working tree danach lokal
konfliktfrei, Sicherung dem 15-Min-Cron überlassen.

Beide vom 33. Lauf empfohlenen Kandidaten aus `Quellentextband-1.pdf` gelesen
(`/opt/homebrew/bin/pdftoppm`, PDF-Seite = gedruckte Seite + 4):
- **Giannantonio Campano, «Pii II vita»** (S. 243-244) → neuer Artikel
  [[campano-pienza-pius-ii-architekt-kostenueberschreitung-1462]]: Pienza-Bauprogramm,
  Nutzungsauflagen nach Abnahme, primärquellenbelegte Architekten-
  Kostenüberschreitungs-Anekdote mit Bauherren-Begründung, Tivoli-Zitadelle aus
  Misstrauen, unrealisierte Grossinfrastruktur (Anio, Trajanshafen, Orcia-See). Verlinkt
  mit [[enea-silvio-piccolomini-wien-1438-deutschland-tivoli-stadtbeschreibungen]]
  (derselbe Papst, unabhängige Quelle).
- **Pero Tafur, Reisebeschreibung 1438-39** (S. 245-246, Mainz/Köln/Brügge) gelesen, aber
  ohne Artikel — reines Reisetagebuch mit Städtelob, kein Kennwert/Verfahren über
  allgemeines Lob hinaus (Delta-Ehrlichkeit, analog Al-Ghazali/Koran-Befund).

Gegen Wiki-Bestand geprüft (`grep -ril` «Pienza»/«Campano»/«Pius II»): keine
inhaltlichen Duplikate. `git diff --numstat` auf die Inventardatei zeigt reinen Append
(44/0). `wiki/INDEX.md` (Zeile Sektion 11) nachgeführt.

Von den 54 benannten Positionen der Anthologie sind jetzt 29 destilliert oder begründet
ohne Artikel abgeschlossen, 25 vollständig offen. Nächster Lauf: Serlio (S. 267) oder
Pacioli (S. 255) als bürorelevante Renaissance-Traktat-Kandidaten.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, dreiunddreissigster P2-Lauf (Enea Silvio Piccolomini destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn selbst aus `KORPUS-QUEUE.md`, `wiki/INDEX.md`,
CHANGELOG und der Inventardatei ermittelt (Dispatch-Text trägt bewusst
keine Zahlen) — deckungsgleich mit dem 32. Lauf.

Nächste Position aus der 54-Positionen-Liste (30. Lauf) gewählt: **Enea
Silvio Piccolomini** (S. 233-242, drei Sub-Exzerpte). Per
`/opt/homebrew/bin/pdftoppm` gerendert (Offset PDF-Seite = gedruckte Seite
+ 4, erneut bestätigt):

- **Deutschland** (Buch II, S. 233-234): Apologie gegen die Curia-These der
  deutschen Verarmung, Stadtpracht (Köln) als Wohlstandsbeweis.
- **Wien-Brief** (S. 240-241, April 1438): quantifizierte
  Stadtbeschreibung — Befestigung, Haustypologie («Stuben»), Rechtsstatus
  Adel/Klerus, Strassenpflaster, schlanke Verwaltungsstruktur (18
  Stadtväter, Stadtrichter, Bürgermeister, einziges Fiskalamt
  Weinsteuer), quantifizierte Versorgungslogistik.
- **Tivoli/Commentarii rerum memorabilium** (S. 241-242) gelesen, aber nur
  fundstellenhalber vermerkt — reine Ruinenbeschreibung ohne Verfahrens-
  oder Kennwertbezug (Delta-Ehrlichkeit).

→ neuer Artikel
[[enea-silvio-piccolomini-wien-1438-deutschland-tivoli-stadtbeschreibungen]],
verlinkt mit [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]],
[[siena-baupflege-dokumente-campo-fensterordnung-ballatoi-ufficio-bellezza]]
und [[bern-handfeste-1218-satzungenbuch-1405-baulinien-nachbarrecht]].

Gegen Wiki-Bestand geprüft (`grep -rli` nach «piccolomini»/«Enea Silvio»/
«Pius II»): keine Duplikate. `git diff --numstat` auf die Inventardatei
zeigt reinen Append (45/0). Von den 54 benannten Positionen der Anthologie
sind jetzt **28 destilliert oder begründet ohne Artikel abgeschlossen, 26
vollständig offen**. **Nächster Lauf:** Campano (243) oder Pero Tafur (245)
als nächste kurze Positionen, sonst Serlio (267) oder Pacioli (255) als
bürorelevante Renaissance-Traktat-Kandidaten.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zweiunddreissigster P2-Lauf (Vita Nicolai V und Hippokrates destilliert, Koran-Auszüge ohne Artikel, Lane FACHWISSEN)

Dispatch-Text trägt weiterhin bewusst keine Zahlen — Stand vor Arbeitsbeginn
selbst aus `KORPUS-QUEUE.md`, diesem CHANGELOG, `wiki/INDEX.md` und der
Inventardatei ermittelt (deckungsgleich mit dem 31. Lauf). Working tree bei
Laufbeginn sauber, kein `MERGE_HEAD`, `ps aux` zeigt nur die eigene
Prozessinstanz.

Alle drei vom 31. Lauf empfohlenen Kandidaten aus der 54-Positionen-Liste
des `Quellentextband-1.pdf` per vollem Pfad `/opt/homebrew/bin/pdftoppm`
gerendert und gelesen (Offset PDF-Seite = gedruckte Seite + 4, erneut
bestätigt):

- **Koran, Paradiesgarten-Verse** (S. 169-171, Suren 3/4/18/37/47/56/88)
  vollständig gelesen: reine religiöse Jenseits-/Paradiesbeschreibung
  (Gärten, Bäche, Polster) ohne städtebaulichen oder architektonischen
  Bezug über die Gartenmetapher hinaus — **kein Artikel**, analog zum
  Al-Ghazali-Befund des 27. Laufs (Delta-Ehrlichkeit).
- **Vita Nicolai V** (S. 201, ein Absatz, Folgeseite 202 im Quellenband
  leer) → neuer Artikel
  [[vita-nicolai-v-stadt-als-bibel-der-armen-monumentalbau-legitimation]]
  (monumentale Architektur als Legitimations- und
  Massenkommunikationsmittel der Kirche gegenüber einer schriftunkundigen
  Mehrheit, „Stadt als Bibel der Armen", zeitgenössische Biografie Papst
  Nikolaus' V.), verlinkt mit der bestehenden
  Renaissance-Idealstadt-Sektion.
- **Hippokrates, «Von der Luft, den Wässern und den Gegenden»** (S. 35-39,
  Erstes/Zweites Hauptstück, ca. 400 v. Chr.) → neuer Artikel
  [[hippokrates-von-der-luft-waessern-gegenden-staedtestandort-windrichtung]]
  (medizinisches Vier-Kriterien-Prüfraster für Stadtstandorte — Winde,
  Wasser, Boden, Lebensart —, Wind-Wasser-Konstitutions-Kausalkette,
  Ost- vs. Westlage-Gesundheitsrangfolge), strukturelle Vorstufe zu
  Vitruvs rund 350 Jahre jüngerer Standortregel, verlinkt mit
  [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]].

Gegen Wiki-Bestand geprüft (`grep -rli` nach «hippokrat»/«nicolai»/
«manetti» über `wiki/*.md`): keine Treffer, keine Duplikate. `git diff
--numstat` auf die Inventardatei zeigt reinen Append. Von den 54 benannten
Positionen der Anthologie sind jetzt **27 destilliert oder begründet ohne
Artikel abgeschlossen, 27 vollständig offen**. **Nächster Lauf:** aus der
54-Positionen-Liste im 30.-Lauf-Abschnitt der Inventardatei weiterwählen,
kurze bürorelevante Einzelauszüge zuerst.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, einunddreissigster P2-Lauf (Lex Iulia Municipalis, Regensburg und Vita Meinwerci destilliert, Lane FACHWISSEN)

Dispatch-Text trug diesmal bewusst keine Zahlen/Fortschrittsangaben mehr
(Korrektur nach dem im 30. Lauf dokumentierten Fehlprompt-Befund) — Stand
selbst aus `KORPUS-QUEUE.md`, dieser CHANGELOG-Datei, `wiki/INDEX.md` und
der Inventardatei ermittelt. Working tree trug bei Laufbeginn die
vollständige, unkommittierte Vorarbeit des 30. Laufs (Bern/Siena, neues
Inhaltsverzeichnis); `nas-commit-now.sh` lief in den bekannten
Merge-Konflikt in sechs fremden Lane-CHANGELOGs, working tree danach
lokal sauber, Sicherung dem 15-Min-Cron überlassen (Muster der letzten
zehn Läufe, unverändert).

Aus der im 30. Lauf gefundenen 54-Positionen-Liste des
`Quellentextband-1.pdf` die dort genannten Kandidaten gewählt, per vollem
Pfad `/opt/homebrew/bin/pdftoppm` gerendert und vollständig gelesen
(PDF-Seite = gedruckte Seite + 4, erneut bestätigt):

- **Lex Iulia Municipalis** (45 v. Chr., S. 101-104) → neuer Artikel
  [[lex-iulia-municipalis-strassenunterhalt-edilenrecht-kostenumlage]]
  (Strassenunterhaltspflicht der Anlieger nach Ädilen-Weisung mit
  Kostenumlage-/Ersatzvornahme-Mechanik bei Säumnis, zeitlich
  differenzierte Wagenverkehrslenkung, Aufsicht über öffentliche
  Plätze/Portiken) — die detaillierteste in dieser Sektion belegte antike
  Vollstreckungsmechanik für Strassenunterhalt, strukturell näher an
  einem heutigen Erschliessungsbeitrags-/Ersatzvornahme-Verfahren als die
  knapperen Digesta-Auszüge. Rückverlinkt im bestehenden
  [[digesta-43-oeffentliches-wegerecht-baurecht-interdikte-roemisch]].
- **Regensburg-Quellen 8.-12. Jh.** (S. 191-192, fünf Annalen-/
  Chronikauszüge) und **Vita Meinwerci** (ca. 1160, S. 193, Paderborn) →
  gemeinsamer neuer Artikel
  [[regensburg-vita-meinwerci-mittelalterliche-stadterweiterung-chronikquellen]]
  (Kaiserpfalz-Standortwahl nach Reliquienbindung unter Herzog/Kaiser
  Arnulf, Stadterweiterung durch Einschluss des Emmeramklosters im
  Verteilbauverfahren unter dem Adel, geplante aber unvollendete
  Kirchenkreuz-Anlage Paderborns unter Bischof Meinwerk), `status:
  speculative` (reine Chronik-Rohübersetzung ohne Sekundärliteratur-
  Abgleich).
- Vita Nicolai V (S. 201) weiterhin nicht destilliert, bleibt offene
  Position für einen Folgelauf.

Gegen Wiki-Bestand geprüft (`grep -ril` über `wiki/*.md`): keine
inhaltlichen Duplikate. Von den 54 benannten Positionen der Anthologie
sind jetzt 24 destilliert oder begründet ohne Artikel abgeschlossen, 30
bleiben vollständig offen (`wiki/INDEX.md` und Inventardatei
aktualisiert). `git diff --numstat` auf die Inventardatei zeigt reinen
Append. **Nächster Lauf:** Koran-Auszüge (S. 169, bisher nie geprüft) und
Vita Nicolai V (S. 201, bereits angelesen) zuerst, sonst Hippokrates
(S. 35, Standortkriterien, Parallele zu Vitruv) als kurzer antiker
Kandidat.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, dreissigster P2-Lauf (vollständiges Inhaltsverzeichnis des Quellentextbands gefunden, Bern und Siena destilliert, Lane FACHWISSEN)

Bei Laufbeginn eine unkommittierte, inhaltlich vollständige Vorarbeit des
29. Laufs (Francesco di Giorgio Martini) im Repo vorgefunden — nachträglich
per `nas-commit-now.sh` gesichert (Commit `eda55cc35`, working tree danach
sauber trotz Merge-Konflikten in fremden Lane-CHANGELOGs, die das Skript/
der 15-Min-Cron selbständig auflöste).

Wesentlicher Befund: Die seit dem 21. Lauf mitgeführte Schätzung «ca. 50
Quellentextband-Auszüge, zuletzt rund 28 offen» wurde nie gegen ein
tatsächliches Inhaltsverzeichnis geprüft. Ursache für das wiederholt
gemeldete Scheitern des `pages`-Parameters (`pdftoppm is not installed`)
gefunden: Die Bash-Session dieser Lane führt kein `/opt/homebrew/bin` im
`PATH`, `poppler`/`tesseract` sind dort aber vorhanden — Aufruf über den
vollen Pfad behebt das Problem ohne Neuinstallation. Damit liess sich das
Inhaltsverzeichnis der Anthologie (S. 7-8) gezielt rendern und lesen: **54
benannte Positionen von Homer bis Max Weber**, davon nach diesem Lauf 22
destilliert oder begründet ohne Artikel abgeschlossen, **32 vollständig
offen** — deutlich mehr als zuletzt angenommen, weil rund 20 Positionen
(kompletter antiker Block Homer-Cicero, römischer Kaiserzeit-Block
Plutarch-Salvianus, Koran-Auszug, mehrere mittelalterliche und
Renaissance-Quellen) in keinem der 29 vorangegangenen Läufe je als
Kandidat genannt wurden. Vollständige Liste mit Seitenzahlen und Status in
der Inventardatei, `wiki/INDEX.md` aktualisiert — diese Liste ersetzt ab
sofort die alte Schätzung.

In diesem Lauf destilliert:

- Bern, Handfeste (1218) und Satzungenbuch (1405, Baulinienvorschriften) →
  neuer Artikel
  [[bern-handfeste-1218-satzungenbuch-1405-baulinien-nachbarrecht]]
  (Parzellennorm mit Zinskopplung, Marktrecht im öffentlichen Strassenraum,
  Baulinie mit Höhen-/Dachneigungslimite nach Stadtbrand, jährliche
  Bauaufsicht mit Bussenkatalog, nachbarrechtliche Überhöhungs-Busse mit
  Rückbaupflicht).
- Siena, Dokumente zur kommunalen Baupflege 13.-15. Jh. → neuer Artikel
  [[siena-baupflege-dokumente-campo-fensterordnung-ballatoi-ufficio-bellezza]]
  (verbindliche Fensterordnung am Campo mit Vollzugshaftung des Podestà,
  Ballatoi-Verbot mit Rückbaupflicht, und als neuer Fund ein
  Anreizinstrument: das «Ufficio dell'Ornato» kompensiert freiwilligen
  Fassadenrückbau mit einem öffentlichen Amt statt mit Geld) — rückverlinkt
  im bestehenden
  [[camillo-sitte-staedtebau-kuenstlerische-grundsaetze-platzgestaltung]].

`git diff --numstat` auf die Inventardatei zeigt reinen Append (114/0).
**Nächster Lauf:** aus der neuen 54-Positionen-Liste bürorelevant wählen —
Lex Iulia Municipalis (S. 101), Koran-Auszüge (S. 169, nie geprüft),
Regensburg-Quellen (S. 191) und Vita Meinwerci (S. 193) als nächste
Kandidaten, sonst Vita Nicolai V (S. 201, bereits angelesen) fertigstellen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, neunundzwanzigster P2-Lauf (Francesco di Giorgio Martini destilliert, Seitenzahl-Offset im Quellentextband aufgeklärt, Lane FACHWISSEN)

Vor Arbeitsbeginn `KORPUS-QUEUE.md`/`wiki/INDEX.md`/Inventardatei
gegengeprüft: Stand identisch zum 28. Lauf (islamischer Block vollständig
abgeschlossen), `KORPUS-QUEUE.md` selbst einen Lauf veraltet.

Neuer Artikel
[[francesco-di-giorgio-martini-stadtkoerper-proportionslehre-anthropometrie]]:
Zitadelle als Kopf-Analogie des Stadtkörpers, Dinocrates-Anekdote,
Konstruktionsvorschrift über Körperproportionen (Kreis um den Nabel bzw.
Quadrat), Organ-Funktions-Analogie für Platzverteilung, praktische Regeln
für Hügel-, Ebenen- und Flussstädte — verlinkt mit
[[al-farabi-musterstaat-gesellschaftshierarchie-koerper-metapher]] (dortige
veraltete Notiz «noch nicht destilliert» korrigiert).

Betriebsbefund: Die in der Inventardatei zitierten Seitenzahlen dieses
Quellenbands sind **gedruckte Buchseiten**, nicht der PDF-Seitenindex —
Offset PDF-Seite = gedruckte Seite + 4, verifiziert über eine sichtbare
Fusszeile («172») unmittelbar vor dem mit «S. 173» einsetzenden
Al-Farabi-Text auf PDF-Seite 177. In der Inventardatei für Folgeläufe
vermerkt. Ausserdem musste diese Ausführungsumgebung `poppler` und
`tesseract`/`tesseract-lang` (Sprachpaket `deu`) erst auf den PATH
nachrüsten (waren als Homebrew-Formeln bereits installiert) und einen
`/tmp`-Zugriffsfehler von `tesseract` umgehen (Ablage unter `~/fdgm-test/`
statt `/tmp/`) — beides Umgebungsdetails dieser Session, kein struktureller
Befund.

Von den ca. 50 Quellentextband-Auszügen sind jetzt 18 destilliert, rund 28
bleiben offen. `git diff --numstat` auf die Inventardatei zeigt reinen
Append (47/0).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, siebenundzwanzigster P2-Lauf (Al-Farabi und Ibn Abdun destilliert, bislang unbemerkter islamischer Textblock im Quellentextband gefunden, Lane FACHWISSEN)

Vor Arbeitsbeginn Stand gegen `KORPUS-QUEUE.md`, `git log` gegengeprüft, working
tree sauber. Stichprobenprüfung der seit dem 18. Lauf wiederholten, nie
namentlich belegten Behauptung «acht Autorendossiers bleiben unangetastet»:
sieben stichprobenartig geprüfte Dossiers (Stuart, Pawley, Waldenheim,
Tessenow, Eitelberger, Bellamy, Hegemann/Koolhaas/Engels) erwiesen sich als
bereits erledigt — die Zahl acht ist nicht mehr belastbar, aber auch nicht
abschliessend widerlegt (keine vollständige Einzelprüfung). Empfehlung für
künftige Läufe im Inventar vermerkt: Ordnerliste gegen Wiki-Bestand
abgleichen statt Zahl fortzuschreiben.

Wichtigerer Fund: `grep -i` nach sechs islamischen Autorennamen (Al-Farabi,
Ibn Abdun, Ibn Dschubair, Al-Ghazali, Ibn Chaldun zweimal, S. 173-190 des
Quellentextbands) über alle 26 bisherigen Läufe dieser Inventardatei ergab
null Treffer — der gesamte Block wurde nie als Kandidat genannt, vermutlich
weil die Inhaltsübersicht des 21. Laufs ihn nicht auflistete. Auch Francesco
di Giorgio Martinis anthropometrische Stadt-Körper-Proportionslehre (S.
251-254) ist noch offen.

In diesem Lauf destilliert:

- Al-Farabi, «Der Musterstaat» (870-950 n. Chr., S. 173-174): zweistufige
  Gesellschaftshierarchie (vollkommene Gesellschaft dreistufig bis zur Stadt,
  unvollkommene Gesellschaften Dorf/Quartier/Haus), Musterstadt als ethisches
  statt bauliches Kriterium, Stadt-Körper-Organhierarchie-Metapher → neuer
  Artikel [[al-farabi-musterstaat-gesellschaftshierarchie-koerper-metapher]].
- Ibn Abdun, «Traktat über das städtische Leben» (Sevilla, frühes 12. Jh., S.
  175-176): Hisba-Baupolizeiverordnung mit Mindest-Mauerstärke, normierten
  Baustoff-Musterexemplaren, Herstellungsort-Vorschrift für Ziegel,
  Strassenreinigungspflicht, festen Standplätzen für Brennholz-/Kalkhändler,
  fest besoldetem Moschee-Maurermeister und der bürorelevanten
  Eigentumsrecht-durch-Dauernutzung-Problematik am Moscheevorplatz (Parallele
  zur römischen Digesta 500 Jahre früher) → neuer Artikel
  [[ibn-abdun-sevilla-baupolizei-hisba-marktordnung-1100]], zurückverlinkt im
  bestehenden Digesta-Artikel.

Gegen Wiki-Bestand geprüft, keine Duplikate. `git diff --numstat` auf die
Inventardatei zeigt reinen Append (`68 0`). Von den ca. 50
Quellentextband-Auszügen sind jetzt 16 destilliert, rund 30 bleiben offen —
darunter der gesamte restliche islamische Block (vier Positionen) und
Francesco di Giorgio Martini. **Nächster Lauf:** Ibn Dschubair
(Damaskus-Reisebeschreibung, S. 177-180) oder Ibn Chaldun
(Stadtplanung/Bauhandwerk, S. 183-190), danach Francesco di Giorgio Martini.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, sechsundzwanzigster P2-Lauf (Aristoteles und Digesta aus `Quellentextband-1.pdf` destilliert, Lane FACHWISSEN)

Vor Arbeitsbeginn KORPUS-QUEUE.md/CHANGELOG/wiki/INDEX.md/git log gegengeprüft,
Stand identisch zum 25. Lauf dokumentierten Ende, working tree sauber. Die beiden
vom Vorlauf empfohlenen kurzen, eigenständigen Kandidaten aus
`Quellentextband-1.pdf` vollständig gelesen und destilliert:

- Aristoteles, «Politik», Buch II,8 (Hippodamus von Milet: Person, 10'000-Bürger-
  Staat mit Dreiteilung von Bevölkerung und Land) und Buch VII,5-6/10-11
  (vierfache Rücksicht bei der Stadtlage — Gesundheit, Kriegstauglichkeit,
  Wasser, Befestigungsform nach Staatsform —, Zielkonflikt hippodamische
  Rasterbauart versus Kriegssicherheit, Mauern als Kriegserfordernis) → neuer
  Artikel [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]],
  verlinkt mit den bestehenden Hippodamus-Artikeln, die Aristoteles bisher nur
  über Sekundärliteratur zitierten.
- Digesta Buch 43, Titel 7-11 (530 n. Chr., Justinian): prätorisches
  Interdikt-Recht zu öffentlichen Plätzen/Wegen, zentrale
  Reparatur-Interdikt-Formel mit Verschlechterungsverbot, Nachbarhaftung für
  abgeleitetes Wasser, Unterscheidung öffentlicher/privater/lokaler Wege → neuer
  Artikel
  [[digesta-43-oeffentliches-wegerecht-baurecht-interdikte-roemisch]] (erste
  Rechtsquelle dieser Sektion als Prozessrecht statt Bauwerksbeschreibung).

Gegen Wiki-Bestand geprüft (`grep -ril` nach Aristoteles/Hippodamus/Digesta über
`wiki/*.md`): keine inhaltlichen Duplikate, nur bestehende Sekundärzitate.
`git diff --numstat` auf die Inventardatei zeigt reinen Append (`39 0`). Von den
ca. 50 Quellentextband-Auszügen sind jetzt vierzehn destilliert, rund 32 bleiben
offen. Von den 33 Autorendossiers der Position 4 bleiben weiterhin acht
unangetastet — kein neuer Fund in diesem Lauf. **Nächster Lauf:** nächstes
kurzes, eigenständiges Autorendossier oder weitere Quellentextband-Einzelauszüge
nach Bürorelevanz auswählen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, fünfundzwanzigster P2-Lauf (Campanella und Dézallier d'Argenville aus `Quellentextband-1.pdf` destilliert, Lane FACHWISSEN)

Vor Arbeitsbeginn KORPUS-QUEUE.md/CHANGELOG/git log gegengeprüft, Stand identisch
zum 24. Lauf dokumentierten Ende. Die beiden vom Vorlauf empfohlenen Kandidaten
aus `Quellentextband-1.pdf` destilliert:

- Campanella, «La Città del Sole» (1602, S. 303-306): konzentrische Sieben-Ring-
  Stadt mit gestaffelter, torversetzter Verteidigungstiefe (Gegenmodell zum
  Sternfestungsschema) und enzyklopädischem Wandmalprogramm je Ring als
  begehbares Curriculum → neuer Artikel
  [[campanella-citta-del-sole-konzentrische-ringstadt-verteidigung-lehrinstrument]].
- Dézallier d'Argenville, «La théorie et la pratique du jardinage» (1709,
  S. 317-326): fünf Standortkriterien nach Vitruv und vier Grundmaximen der
  Gartendisposition (Natur vor Kunst, keine Überladung, gestaffelte statt
  totale Ansicht, grösser wirken als tatsächlich), plus Regeln zu
  Bestandsschutz und Grössen-/Budgetverhältnis Garten↔Gebäude → neuer Artikel
  [[dezallier-dargenville-gartentheorie-vier-maximen-standortkriterien]].

Gegen Wiki-Bestand geprüft, keine Duplikate. `git diff --numstat` zeigt reinen
Append auf Inventardatei. Von den ca. 50 Quellentextband-Auszügen sind jetzt
zwölf destilliert, rund 34 bleiben offen. Nächster Lauf: Aristoteles «Politik»
(Hippodamus/Stadtlage, S. 63-68) oder Digesta Buch 43,7-11 (römisches
öffentliches Wege-/Baurecht, S. 163-167).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, vierundzwanzigster P2-Lauf (Descartes und Ludwig XIV. aus `Quellentextband-1.pdf` destilliert, Lane FACHWISSEN)

Vor Arbeitsbeginn geprüft, ob in diesem oder einem der 22 anderen inventarisierten
`architektur-fachwissen`-Sektionen noch offene P1-Positionen bestehen: keine gefunden
(alle P1 abgeschlossen oder aus dokumentiertem Grund blockiert, s. Inventar
`03_Bauprozesse_I_II`). Die beiden vom 23. Lauf empfohlenen kurzen Auszüge aus
`Quellentextband-1.pdf` destilliert:

- Descartes, «Abhandlung über die Methode des richtigen Vernunftgebrauchs» (1637,
  zweites Kapitel, S. 307-308): Ein-Baumeister-Argument gegen gewachsene
  Stadtstruktur (Analogie Gebäude/Gesetzgebung, Beispiel Sparta) → neuer Artikel
  [[descartes-methode-architektonische-einheitsplanung-organisches-wachstum]].
- Ludwig XIV., «Manière de montrer les Jardins de Versailles» (1689, S. 313-316):
  eigenhändiges Regieskript für die Gartenbesichtigung Versailles in 25 nummerierten
  Schritten (Bewegung + exakter Betrachtungspunkt/Blickziel) → neuer Artikel
  [[ludwig-xiv-versailles-gartenfuehrung-choreographierte-besichtigungsroute]],
  verlinkt mit dem bestehenden Achsensystem-Artikel
  [[barocke-stadtplanung-offene-achsensysteme-platztypologie-place-royal]].

Gegen Wiki-Bestand geprüft (`grep -ril`), keine Duplikate. `git diff --numstat` zeigt
reinen Append auf Inventardatei, `wiki/INDEX.md`. Von den ca. 50
Quellentextband-Auszügen sind jetzt zehn destilliert, rund 36 bleiben offen. Nächster
Lauf: Campanella («La Città del Sole») oder Dézallier d'Argenville (Gartentheorie).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, dreiundzwanzigster P2-Lauf (Vauban und Palladio aus `Quellentextband-1.pdf` destilliert, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Vor Arbeitsbeginn KORPUS-QUEUE.md/wiki/INDEX.md gegengeprüft, Stand identisch zum 22.
Lauf dokumentierten Ende. Die beiden vom Vorlauf empfohlenen Prioritäten aus
`Quellentextband-1.pdf` vollständig bearbeitet:

- Vauban, «Abhandlung von der Vertheidigung der Festungen» (1704, S. 309-312):
  Gränzfestung-Definition, Klassifikation regelmässig/unregelmässig/zugänglich, Wall-Masse,
  Bastionstheorie (Facen-/Courtinen-/Flanquen-Verteidigungslogik, Bastions ohne Cavalier
  vorteilhaft für Retranchements) → neuer Artikel
  [[vauban-festungsbau-bastionstheorie-graenzfestung-1704]].
- Palladio, «Die vier Bücher zur Architektur», Buch III, Kap. 1-4/13/16 (1570, S.
  283-288): vier Strassenanforderungen, Windregel nach Vitruv, Palladios eigener
  Brückenentwurf mit Läden/Loggien, Platzproportionsregel nach Alberti (1/3-1/6
  Gebäudehöhe zu Platzbreite) → neuer Artikel
  [[palladio-strassen-bruecken-plaetze-vier-buecher-1570]], zurückverlinkt auf die
  bestehende Sitte/Stübben/Curdes-Platzdebatte.

Gegen Wiki-Bestand geprüft (`grep -ril` nach Vauban/Palladio über `wiki/*.md`): keine
Duplikate. Offener Punkt (Alberti-Originalfundstelle der Palladio-Proportionsregel
ungeprüft) in `wiki/QUESTIONS.md` #73 vermerkt. `git diff --numstat` zeigte reinen
Append auf Inventardatei, `wiki/INDEX.md` und `wiki/QUESTIONS.md`. Von den ca. 50
Quellentextband-Auszügen sind jetzt acht destilliert, rund 38 bleiben offen. Nächster
Lauf: Descartes oder Ludwig XIV. (beide kurz und eigenständig), danach
Campanella/Dézallier d'Argenville, sonst nächstes unbearbeitetes Autorendossier.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zweiundzwanzigster P2-Lauf (vier Auszüge aus `Quellentextband-1.pdf` destilliert: Vitruv, Frontinus, Filarete/Alberti/Dürer, Kalabrien-Wiederaufbau, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», 72. Beispiel Memory `project_fachwissen-dispatch-loop`, Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Vor Arbeitsbeginn KORPUS-QUEUE.md/CHANGELOG gegengeprüft, Stand identisch zum 21. Lauf
dokumentierten Ende; unkommittierte Buchführung des Vorlaufs bereits sauber
(15-Min-Cron hatte sie zuvor selbständig übernommen). Die vier vom Vorlauf empfohlenen
Prioritäten aus `Quellentextband-1.pdf` vollständig bearbeitet:

- Vitruv, Buch I (Vorrede, 4, 6, 7): Standortwahl über die Vier-Elemente-Lehre,
  Sumpfgebiets-Fallbeispiele (Altinum/Ravenna/Aquileja vs. Pomptinische Sümpfe,
  Alt-Salpia-Umsiedlung durch M. Hostilius für einen Sesterz pro Parzelle),
  Windrosen-gestütztes Strassenraster (Turm der Winde des Andronikos von Kyrrhos) und
  Götter-Standortlogik → neuer Artikel
  [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]].
- Vitruv Buch VIII,6 (Drei-Kammer-Wasserschloss, Prioritätenhierarchie öffentlich vor
  gewerblich vor privat) und Frontinus, «Wasser für Rom» (neun Aquädukte,
  Höhenrangfolge, vollständige antike Mengenbilanz 560'720 m³/Tag,
  Kalibersystem quinaria/centenaria, Senatsbeschluss 11 v. Chr. gegen illegales
  Aufbohren) → neuer Artikel
  [[frontinus-vitruv-wasserversorgung-rom-kaliber-konzessionsrecht]].
- Dreiervergleich Filarete («Sforzinda», Sternstadt-Achteck), Alberti (Buch I,3+9 und
  IV,2+3: Klimalogik, Eckendebatte am Beispiel Perugia, etruskische
  Gründungsliturgie) und Dürer («Idealstadtbeschreibung» 1527: windgerecht
  abgeschrägte Quadratstadt, konzentrische Zonierung) → neuer Artikel
  [[renaissance-idealstadt-typologie-filarete-alberti-duerer]].
- Kalabrien-Wiederaufbauquellen nach dem Erdbeben 1783 (königliche Bauvorschriften
  Reggio mit Höhenlimit und Kuppel-/Campanile-Verbot, Serraos Gründungsrede für die
  Neustadt Filadelfia, Grimaldis Bagnara-Konflikt, Palestinos Chronik der
  dreijährigen Bauverzögerung) als Vergleichsfall zu Manuel da Maia/Lissabon 1755 →
  neuer Artikel [[kalabrien-wiederaufbau-erdbeben-1783-vergleich-lissabon]], im
  bestehenden Da-Maia-Artikel zurückverlinkt.

Gegen Wiki-Bestand geprüft (`grep -ril` über `wiki/*.md`), keine Duplikate. `git diff
--numstat` auf die Inventardatei zeigt reinen Append (`41 0`). Von den 33
Autorendossiers der Position 4 bleiben weiterhin acht unangetastet; im Quellentextband
bleiben rund 40 Einzelauszüge offen, darunter Vauban selbst noch nicht eigenständig
destilliert. **Nächster Lauf:** Vauban («Abhandlung von der Vertheidigung der
Festungen») als eigenständiger Festungsbau-Artikel, danach Palladio oder nächstes
unbearbeitetes Autorendossier.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, einundzwanzigster P2-Lauf (`Quellentextband-1.pdf` als vollständig lesbar erwiesen, zwei neue Wiki-Artikel, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», 71. Beispiel Memory `project_fachwissen-dispatch-loop`, Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Werkzeug-Befund, korrigiert Rule 10: Read-Tool ohne `pages`-Parameter liest
`Quellentextband-1.pdf` (10,3 MB, 358 Seiten Bildscan, kein `pdftoppm` nötig) vollständig
in einem Aufruf — die 20-MB-Grenze gilt unabhängig von der Seitenzahl. Die Datei erwies
sich als Band I einer vierbändigen ETH-Quellenanthologie «Texte zur Geschichte des
Städtebaus» (Lampugnani-Professur 1996) mit ca. 50 Primärtext-Auszügen (Homer bis Max
Weber 1921) — die ergiebigste noch offene Einzelquelle dieser Sektion. Zwei Auszüge
destilliert: Max Webers Marktansiedlungs-Definition (Fürsten-/Konsumenten-/Rentner-/
Produzentenstadt) →
[[max-weber-stadtbegriff-marktansiedlung-fuerstenstadt-konsumentenstadt-produzentenstadt]]
und Manuel da Maias Fünf-Modi-Variantenvergleich für den Lissabon-Wiederaufbau nach dem
Erdbeben 1755 → [[manuel-da-maia-lissabon-wiederaufbau-fuenf-modi-1755]]. Gegen
Wiki-Bestand geprüft, kein Duplikat. `git diff --numstat` auf die Inventardatei zeigt
reinen Append (`50 0`). Von den 33 Autorendossiers der Position 4 bleiben weiterhin acht
unangetastet; im Quellentextband bleiben ca. 48 Einzelauszüge offen (Vitruv, Frontinus,
Filarete, Alberti, Dürer, Palladio, Vauban, Kalabrien-Wiederaufbau u. a.). **Nächster
Lauf:** weitere Auszüge aus `Quellentextband-1.pdf` nach Bürorelevanz destillieren, sonst
nächstes unbearbeitetes Autorendossier.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zwanzigster P2-Lauf (`kapitel01_dk_vorindustrielle_120dpi.pdf` Unterkapitel 4/5 destilliert, Datei damit vollständig abgeschlossen, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», 70. Beispiel Memory `project_fachwissen-dispatch-loop`, Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Unkommittierte Buchführung des Vorlaufs (Inventardatei, CHANGELOG, INDEX, KORPUS-QUEUE,
neuer Artikel zu Unterkapitel 1/2) per `nas-commit-now.sh` gesichert, traf den bekannten
Merge-Konflikt (sieben fremde/eigene Dateien), `MERGE_HEAD`/Konfliktmarker-Check sauber, dem
15-Min-Cron überlassen. `/tmp/kapitel01_dk.txt` aus dem Vorlauf noch vorhanden, kein erneuter
`pypdf`-Durchlauf nötig. Unterkapitel 4 (S. 68-84: spätmittelalterliche Wüstungsperiode
1350-1470, Gutsherrschaft östlich der Elbe-Saale-Linie, Oberharzer/erzgebirgische
Bergstädte, die Fugger als Bank-/Produktionskonzern, Dreissigjähriger Krieg als Zäsur für
Reichs-/Hansestädte) und Unterkapitel 5 (S. 85-98: Absolutismus, Merkantilismus,
Hugenotten-/Peuplierungspolitik, Zweite Deutsche Ostsiedlung nach Ungarn/Neurussland,
Manufakturen, Residenzstädte, Aufstieg Brandenburg-Preussens bis zu den
Stein-Hardenberg-Reformen) vollständig gelesen und zu einem neuen Artikel destilliert →
[[wiese-zils-wuestungsperiode-bergstaedte-absolutismus-residenzstaedte]]. Gegen Wiki-Bestand
geprüft, kein Duplikat; alle drei Wiese/Zils-Artikel (Unterkapitel 1/2, 3, 4/5) gegenseitig
verlinkt. **`kapitel01_dk_vorindustrielle_120dpi.pdf` damit vollständig destilliert** (fünf
Unterkapitel, drei Wiki-Artikel). `git diff --numstat` auf die Inventardatei zeigt reinen
Append. Von den 33 Autorendossiers der Position 4 bleiben acht offen, dazu der
Lampugnani-Quellentextband (358 S. Scan, struktureller Grenzfall). Nächster Lauf:
Lampugnani-Quellentextband in Teilabschnitten, sonst nächstes Autorendossier.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, neunzehnter P2-Lauf (`kapitel01_dk_vorindustrielle_120dpi.pdf` Unterkapitel 1/2 destilliert, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», 69. Beispiel Memory `project_fachwissen-dispatch-loop`, Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz, parallel dazu unabhängige Lane SYNOBSIS)

Unkommittierte Sonne-Buchführung des Vorlaufs (`KORPUS-QUEUE.md`/CHANGELOG/INDEX) per
`nas-commit-now.sh` gesichert, diesmal ohne Merge-Konflikt. `kapitel01_dk_vorindustrielle_
120dpi.pdf` (19,1 MB) scheiterte direkt per Read-Tool an `[media removed: request limit]`
(hoher Bildanteil trotz Grösse unter 20 MB); per `pypdf` extrahiert (76 Scan-Seiten,
122'714 Zeichen). **Vor dem Schreiben festgestellt:** Unterkapitel 3 derselben Datei
(Originalseiten 33-68, Ostkolonisation/Hanse) war bereits als
[[deutsche-ostkolonisation-mittelalterliche-stadtgruendung-hanse-wiese-zils]] destilliert —
die Vorlauf-Einschätzung «Datei vollständig unangetastet» war zu pauschal, nur die
Unterkapitel 1/2/4/5 waren tatsächlich offen. Unterkapitel 1 (römerzeitliche Grundlagen,
S. 17-23) und 2 (Völkerwanderung/fränkische Expansion, S. 24-32) vollständig gelesen und zu
einem neuen Artikel destilliert →
[[roemische-grundlagen-voelkerwanderung-fraenkische-expansion-wiese-zils]] (Limes-System,
Fernhandelsachsen, Latifundien-Vorstufe der mittelalterlichen Grundherrschaft,
Reichsteilungen 843/870/880, Villikationsverfassung, Kontinuität-vs-Bruch-Kontrast
Köln/Trier/Regensburg gegen Xanten/Bonn). Gegen Wiki-Bestand geprüft, kein Duplikat, verlinkt
als chronologische Vorstufe zum Ostkolonisations-Artikel. `git diff --numstat` auf die
Inventardatei zeigt reinen Append (43 0). Von den fünf Unterkapiteln der Datei sind jetzt 1,
2, 3 destilliert; 4 (Wüstungsperiode/Gutsherrschaft/Bergstädte/Fugger/30-jähriger Krieg) und
5 (Absolutismus/Residenzstädte) bleiben offen, ebenso der Lampugnani-Quellentextband und acht
unangetastete Autorendossiers. Nächster Lauf: Unterkapitel 4/5 dieser Datei.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, achtzehnter P2-Lauf (Position 4 abgeschlossen, `blockreform_sonnedf.pdf` vollständig gelesen, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», 68. Beispiel Memory `project_fachwissen-dispatch-loop`, Station laut `scutil` Macmini bestätigt, Prozesskette 48039→48040→48082 als verschachtelte Wrapper derselben Instanz erkannt, keine Doppel-Instanz)

Vor Arbeitsbeginn `KORPUS-QUEUE.md`/CHANGELOG gegengeprüft: Stand identisch zum
siebzehnten Lauf dokumentierten Ende. Unkommittierte Sonne-Kultur-Buchführung des
Vorlaufs zuerst per `nas-commit-now.sh` gesichert — Versuch scheiterte am bekannten
NAS-Merge-Konflikt in sechs fremden KBs, Script hat sauber abgebrochen (kein
Konfliktmarker im Arbeitsverzeichnis verblieben), dem 15-Min-Cron überlassen. Entgegen der
Erwartung liess sich `blockreform_sonnedf.pdf` (13,7 MB, 96 S., Wolfgang Sonne, "Dwelling
in the metropolis: Reformed urban blocks 1890-1940 as a model for the sustainable compact
city", Progress in Planning 72, 2009, S. 53-149) **vollständig in einem Zug lesen** —
bestätigt erneut, dass die Werkzeuggrenze beim `pages`-Parameter liegt, nicht bei der
absoluten Dateigrösse. Ein neuer Artikel
[[sonne-dwelling-in-the-metropolis-reformierter-wohnblock-zehn-thesen-praxis]]: sechs
Grundtypen des reformierten Wohnblocks mit Grundrisssystematik, die Fallstudien über neun
Länder (Deutschland, Österreich/Osteuropa, Niederlande, Skandinavien, Frankreich,
Italien/Spanien, Grossbritannien, USA, Russland), Sonnes zehn explizite Entwurfsthesen für
die nachhaltige kompakte Stadt (direkt bürorelevant, z. B. der «Zaun-Test» für falsche
Bautypologie und die 150-200-m-Regel für Blocklängen) sowie der Vorschlag «Urbanität» als
neues historiografisches Paradigma anstelle von Innovation/Stil. Gegen bestehenden
Wiki-Bestand geprüft: kein Duplikat zu
[[sonne-kultur-der-urbanitaet-dichte-stadt-kontinuitaetsthese]] (dort nur die Kurzthese,
hier erstmals die volle empirische Fallbasis und die zehn Praxisthesen). `git diff
--numstat` auf die Inventardatei zeigt reinen Append (44 0). **Sonne-Dossier damit
vollständig abgeschlossen** (nur die 85-MB-Dissertation bleibt dauerhaft blockiert). Von
den 33 Autorendossiers der Position 4 weiterhin 25 mit Ertrag bearbeitet (Zählung
unverändert, da Sonne bereits im Vorlauf mitgezählt wurde). Offen bleiben der
Lampugnani-Quellentextband und `kapitel01_dk...` Unterkapitel 1/2/4/5, dazu acht der 33
Autorendossiers unangetastet. Details `raw/inventar/archiv-fachwissen__01_Staedtebau.md`
Abschnitt Destillat-Fortschritt. Nächster Lauf: Lampugnani-Quellentextband (erste
20-30 Seiten Vollzugriff versuchen) oder nächstes unbearbeitetes Autorendossier.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, siebzehnter P2-Lauf (Position 4 fortgesetzt, Sonne-Dossier abgeschlossen, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, Prozesskette 45847→45850→45856 als verschachtelte Wrapper derselben Instanz erkannt, keine Doppel-Instanz)

Vor Arbeitsbeginn `KORPUS-QUEUE.md`/CHANGELOG gegengeprüft: Stand identisch zum
sechzehnten Lauf dokumentierten Ende. Sonne-Dossier (`Sonne_Wolfgang/`) vollständig
gesichtet: zwei neue Wiki-Artikel aus den beiden Fliesstext-Quellen —
[[sonne-kultur-der-urbanitaet-dichte-stadt-kontinuitaetsthese]] (Sonne, "Kultur der
Urbanität. Die dichte Stadt im 20. Jahrhundert", 2006 — Kontinuitätsthese der dichten
Stadt gegen die zwei "Bruchmythen" der Avantgarde-Historiografie, fünf Epochenkapitel
1890-2000 mit rund 30 internationalen Fallbeispielen von Berlin-Blockreform bis
Barcelona-Bohigas) und
[[sonne-aesthetische-nachhaltigkeit-angemessenheit-neun-punkte]] (Sonne, "Ästhetische
Nachhaltigkeit in der Stadt", 2009, plus das darin abgedruckte Neun-Punkte-Manifest
Sonne/Stalder "Angemessenheit" von 2002 — direkte theoretische Fundierung für den
bestehenden Artikel `blockrand-aufenthaltsqualitaet-argumentation-verdichtung-jans`).
Übrige Dateien des Dossiers ohne Ertrag: zwei Duplikate (H-Soz-Kult-Druckversion desselben
Kultur-der-Urbanität-Artikels; sieben Einzelseiten-Split-Kopien der Ästhetische-
Nachhaltigkeit-Datei), zwei Titel-Stub-DOCX ohne Fliesstext, ein CV/Publikationsliste-PDF
nur zur Einordnung. Bewusst zurückgestellt: `blockreform_sonnedf.pdf` (13,7 MB, englischer
Vollartikel "Dwelling in the Metropolis", Progress in Planning 2009, 96 S. — deutlich
ergiebiger als der bereits destillierte Kapitelabschnitt, aber zu lang für einen
Volldurchlauf); `eth-24111-02.pdf` (85 MB Dissertation) bleibt an der 20-MB-Grenze
dauerhaft blockiert. `git diff --numstat` auf die Inventardatei zeigt reinen Append
(51 0). **Sonne-Dossier abgeschlossen.** Von den 33 Autorendossiers der Position 4 sind
jetzt 25 mit Ertrag bearbeitet; offen bleiben der Lampugnani-Quellentextband (358 S.
Scan) und `kapitel01_dk...` Unterkapitel 1/2/4/5. Details Inventardatei
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`, Abschnitt `## Destillat-Fortschritt`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, sechzehnter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz, Git sauber vor Arbeitsbeginn)

Drei der vier verbliebenen kleineren Autorendossiers abgeschlossen:

- Giedion (`Gideon_Sigfried/`, drei Dateien, zwei vollständig gelesen): Kapitelauszug aus
  Sigfried Giedion, «Raum, Zeit, Architektur» (4. Aufl. 1989) → neuer Artikel
  [[giedion-raum-zeit-architektur-haussmann-paris-transformation-1853-1868]] — deutlich
  reichhaltigere Primärquelle als der bestehende, aus Vorlesungsmitschriften kompilierte
  Haussmann-Artikel (Rambuteau als Vorläufer, Barrikaden-Statistik als Planungsmotiv,
  réseaux als Finanzierungsbegriff, Haussmanns «théorie des dépenses productives»,
  Miethaus-Analyse Boulevard Sébastopol 1860, Thiers-Kritik am «culte de l'axe», Echo im
  Wiener Ring) — bewusst als eigener, gegenseitig verlinkter Artikel angelegt statt
  zusammengeführt, keine Duplikation.
- Hilberseimer (`Hilbersheimer_Ludwig/`, eine Datei, HTA-Luzern-Textanalyse 2007) → neuer
  Artikel [[hilberseimer-hochhausstadt-dezentralisiertes-wohngebiet-mischbebauung]]
  (Hochhausstadt 1924, wörtliche Selbstkritik 1963 «Nekropolis statt Metropolis»,
  dezentralisiertes Wohngebiet/Mischbebauung).
- Lampugnani (`Lampugnani_Vitorio/`, drei Dateien): NZZ-Essay 2012 vollständig gelesen →
  neuer Artikel [[lampugnani-historisches-stadtzentrum-kulturgut-lehrstueck-dichte]]
  (historischer Bogen Voltaire bis Koolhaas, vier Argumente für die funktionale Aktualität
  der Altstadt). Inhaltsverzeichnis des Standardwerks «Die Stadt im 20. Jahrhundert» ohne
  Fliesstext gesichtet, kein eigener Artikel (Delta-Ehrlichkeit), nur Bibliografie-Hinweis.
  `Quellentextband-1.pdf` (10,8 MB, 358 Scan-Seiten ohne Textebene) bleibt offen —
  Seitenbereichs-Lesung scheitert am fehlenden System-`poppler`, ein Vollzugriff auf 358
  Scan-Seiten sprengt den Rahmen eines einzelnen Laufs.

`git diff --numstat` auf die Inventardatei zeigt reinen Append (55 0). Von den 33
Autorendossiers der Position 4 sind jetzt 24 mit Ertrag bearbeitet; nur noch Sonne
(grösstenteils über 20-MB-Grenze) und der Lampugnani-Quellentextband bleiben offen, dazu
`kapitel01_dk...` Unterkapitel 1/2/4/5 als eigene Restaufgabe. Details
`raw/inventar/archiv-fachwissen__01_Staedtebau.md` Abschnitt Destillat-Fortschritt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, fünfzehnter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, Prozessbaum 42877→42880→42886, keine Doppel-Instanz)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/CHANGELOG geprüft: entsprach exakt dem Ende
des vierzehnten Laufs, dessen Buchführung (Inventardatei, CHANGELOG, Rossi-Artikel) noch
uncommittet lokal vorlag und zuerst per `nas-commit-now.sh` gesichert wurde. Sievers-Dossier
(`Siewerts_Thomas/`, zwei Dateien) vollständig gesichtet: `Bosshard_Zwischenstadt.pdf`
(dreiseitige HSLU-Zusammenfassung des gesamten Buches, echte Textebene) und die 6,2-MB-Datei
`Thomas Sieverts - Zwischenstadt.pdf` (Bildscan ohne Textebene laut `pypdf`, aber vom
Read-Tool trotzdem vollständig gelesen — vollständiger Originalwortlaut von Buchkapitel 4
«Die Zwischenstadt als Gestaltungsfeld», S. 102-137). Neuer Artikel
[[sieverts-zwischenstadt-drei-voraussetzungen-aesthetik-anaesthetik-iba-emscher-park]]
(Begriff Zwischenstadt und drei Voraussetzungen, Ästhetik/Anästhetik nach Wolfgang Welsch,
Sieverts' eigene Fachliteraturauswahl, IBA Emscher Park als Anwendungsbeispiel). Gegen den
bestehenden Kevin-Lynch-Artikel geprüft, keine Duplikation. Von den 33 Autorendossiers der
Position 4 sind damit 22 mit Ertrag bearbeitet, 11 bleiben offen (Giedion, Hilberseimer,
Lampugnani, Sonne, plus fünf ohne Ertrag aus Vorläufen). Details Inventardatei
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`, Abschnitt `## Destillat-Fortschritt`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, vierzehnter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, PID 41686, keine Doppel-Instanz)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/CHANGELOG geprüft: entsprach exakt dem Ende
des dreizehnten Laufs. Rossi-Dossier (vier Dateien: zwei unabhängige studentische
Zusammenfassungen von «L'architettura della città»/«Die Architektur der Stadt», das
vollständige Buch-PDF, ein Titelblatt) vollständig gesichtet. Vor Destillation wie vom
Vorlauf verlangt gegen die beiden bestehenden Rossi-Artikel aus
`archiv-fachwissen__02_Architekturtheorie` geprüft (Theorie der Permanenz/Lucca sowie
Analoge Architektur/ETH-Lehrzeit) — keine Überschneidung, da jene Artikel aus separaten
ETH-Vorlesungsmitschriften stammen und diese Quelle eine direkte, inhaltlich
komplementäre Buchzusammenfassung ist. Neuer Artikel
[[rossi-architektur-der-stadt-funktionalismuskritik-typologie-eigentumsstruktur-monument]]
(Kritik am naiven Funktionalismus, Typus-vs-Modell mit Laubenganghaus-Beispiel, drei
Grundfunktionen der Stadt, Untersuchungsbereich/Areal/Distrikt-Begriff, Wohnbautypologie
Rom insulae/domus und Berlin nach Herbert Louis 1936, Forum Romanum als zweites
Monument-Fallbeispiel neben Lucca, Kölner-Dom-Argumentationsfigur Monument vs. Milieu,
Eigentumsstruktur/Enteignung nach Halbwachs mit Haussmann/Paris, Cerda/Barcelona,
napoleonischem Mailand und Bernoullis Bodenkritik, sowie Athen als älteste fassbare
Stadtidee). Von den 33 Autorendossiers der Position 4 sind jetzt 21 mit Ertrag bearbeitet,
12 bleiben offen (Giedion, Hilberseimer, Lampugnani, Sievers, Sonne, plus drei leer/ohne
Ertrag und zwei ohne Ertrag geprüft aus Vorläufen). Details Inventardatei
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`, Abschnitt `## Destillat-Fortschritt`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, dreizehnter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, PID 39085, Prozessbaum 39078→39084→39085 als verschachtelte Wrapper derselben Instanz erkannt, keine Doppel-Instanz; paralleler Prozess ist unabhängige Lane SYNOBSIS)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/CHANGELOG geprüft: entsprach exakt dem Ende
des zwölften Laufs. Jefferson und Muratori (beide vom Vorlauf als nächste Kandidaten
empfohlen) abgeschlossen, drei neue Wiki-Artikel:
[[thomas-jefferson-checkerboard-plan-staedtekritik-agrarideal-widerspruch]] (Dissertation
Felix Aeppli, Uni Zürich 1975, vollständig gelesen — Jeffersons eigene Stadtplanentwürfe für
die Federal City 1790/91, Checkerboard-Plan gegen Gelbfieber mit den gebauten Beispielen
Jeffersonville/Jackson, Gesundheits-/Moralkritik, Wandel Agrarideal→Manufaktur, biografischer
Widerspruch zum eigenen Stadtleben; gegen den bestehenden Artikel
[[us-rastersystem-jefferson-land-ordinance-commissioners-plan]] geprüft, keine
Überschneidung), [[saverio-muratori-typologische-methode-biografie-rezeption-bologna-kritik]]
(arch+ Heft 85, Giorgio Conti — Biografie, Wettbewerb Mestre-San Giuliano 1959, Tafuris
Kritik, kritische Relativierung der Bologna-Sanierung Cervellati 1973) sowie
[[saverio-muratori-caniggia-stadtmorphologie-glossar-typ-standard-mutation]] (arch+ Heft 85,
Sylvain Malfroy — Typ-vs-Standard, Massstabsebenen, strukturelle Permanenzen,
Kapillarmutationen; ergänzt den offenen Punkt im bestehenden Artikel
[[typus-modell-prototyp-trennschaerfe-architekturtheorie]] zur Abgrenzung Muratori/Caniggia
von Aymonino/Rossi). Eine Dublette (`085_040-042_arch_Plus_Artikel.pdf`) und ein
abgebrochenes Textfragment (`120113_Saverio_Muratori.docx`, identischer Wortlaut wie der
vollständige Conti-Artikel) ohne eigenen Ertrag geprüft. Von den 33 Autorendossiers der
Position 4 sind jetzt 20 mit Ertrag bearbeitet, 13 bleiben offen (Giedion, Hilberseimer,
Lampugnani, Rossi, Sievers, Sonne, plus drei leer/ohne Ertrag und zwei ohne Ertrag geprüft
aus Vorläufen). Details Inventardatei
`raw/inventar/archiv-fachwissen__01_Staedtebau.md`, Abschnitt `## Destillat-Fortschritt`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zwölfter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, PID 37162, Prozessbaum 37152→37155→37161→37162 als verschachtelte Wrapper derselben Instanz erkannt, keine Doppel-Instanz)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/CHANGELOG geprüft: entsprach exakt dem Ende
des elften Laufs. Drei kleine/mittlere Restdateien der Position 4 abgeschlossen, drei neue
Wiki-Artikel:
[[adolf-behne-moderner-zweckbau-fassade-haus-geformter-raum-gestaltete-wirklichkeit]]
(zwei unabhängige studentische Zusammenfassungen von Adolf Behnes «Der moderne Zweckbau»
1923, Dreistufenmodell Fassade/Haus/geformter Raum/gestaltete Wirklichkeit, vierte Datei
desselben Ordners bleibt reiner Bildscan ohne Textebene, nicht ausgewertet),
[[landscape-urbanism-reader-waldheim-shane-shannon-berger-drosscape]] (41-seitiger Auszug
aus «The Landscape Urbanism Reader», Hg. Charles Waldheim 2006 — vier Essays Waldheim/
Shane/Shannon/Berger, erster Fund dieser Sektion zur zeitgenössischen
Landscape-Urbanism-Bewegung) sowie
[[deutsche-ostkolonisation-mittelalterliche-stadtgruendung-hanse-wiese-zils]] (Kapitel aus
Wiese/Zils «Deutsche Kulturgeographie» 1987, Unterkapitel 3: Ostkolonisation,
mittelalterliche Stadtgründung, Hanse — Unterkapitel 1/2/4/5 desselben Buchkapitels bleiben
ungelesen). Von den 33 Autorendossiers der Position 4 sind jetzt 18 mit Ertrag bearbeitet,
15 bleiben offen (Giedion, Hilberseimer, Jefferson, Lampugnani, Muratori, Rossi, Sievers,
Sonne, plus drei leer/ohne Ertrag und zwei ohne Ertrag geprüft aus Vorläufen). Details
Inventardatei `raw/inventar/archiv-fachwissen__01_Staedtebau.md`, Abschnitt
`## Destillat-Fortschritt`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, elfter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, 61. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz, PID 31881)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/CHANGELOG geprüft: entsprach exakt dem Ende
des zehnten Laufs. Sieben weitere Dossiers der Position 4 (33 Autorendossiers) bearbeitet.
Drei neue Wiki-Artikel aus bisher unberührten Quellen:
[[christiaanse-urban-breeding-grounds-gentrifizierungszyklus-steuerungspolitik]] (Kees
Christiaanse, Gentrifizierungszyklus, Jane-Jacobs-Zitat, Steuerungsinstrumente),
[[tessenow-strassen-plaetze-geschlechtermetapher-dorf-stadt-grossstadt-analogie]]
(Strasse/Platz-Geschlechtermetapher, Dorf-Stadt-Grossstadt-Lebenslauf-Analogie),
[[deutsches-institut-stadtbaukunst-konferenz-traditionalisten-modernisten-2012]]
(Traditionalisten-vs-Modernisten-Debatte Düsseldorf 2012 mit Originalzitaten
Mäckler/Sonne/Kollhoff/Ingenhoven/Lampugnani/Stimmann/Krier). Vier weitere Dossiers
(Howard, Taut, Migge, Engels) erwiesen sich als Primärquellen zu bereits destillierten
Sekundärtexten und wurden als Ergänzung mit bisher fehlenden Originalzitaten/Kennzahlen in
die bestehenden Artikel eingefügt (Delta-Ehrlichkeit, kein Duplikat):
[[gartenstadtbewegung-genealogie-pugin-ruskin-morris-howard-europa]] (Howards
Drei-Magnete-Schema), [[bruno-taut-stadtkrone-migge-selbstversorger-volkspark]] (Tauts
Stadtkrone-Masszahlen sowie Migges Gartengrössen-Norm 80-100 m²/Person),
[[engels-wohnungsfrage-owen-fourier-company-towns]] (Engels' «Haussmann»-Gattungsbegriff,
Guise als einziges gebautes Fourier-Beispiel). Zwei Dossiers ohne Ertrag (Delta-Ehrlichkeit):
Mumford (`Die_Stadt_Mumford.doc`, reine ILIAS-Aufgabenstellung ohne eigene Bearbeitung),
Gracq (Wikipedia-Stub zu einem literarischen Nantes-Erinnerungsbuch, keine städtebauliche
Fachaussage). `git diff --numstat` auf die Inventardatei zeigt reinen Append (`67 0`). Von
den 33 Autorendossiers der Position 4 sind jetzt 15 mit Ertrag bearbeitet, drei Ordner leer;
16 bleiben offen (Behne, Giedion, Hilberseimer, Jefferson, Lampugnani, Muratori, Rossi
[gegen `archiv-fachwissen__02_Architekturtheorie` prüfen], Sievers, Sonne, Waldenheim,
`kapitel01_dk_vorindustrielle_120dpi.pdf`). Details: `raw/inventar/
archiv-fachwissen__01_Staedtebau.md` Abschnitt Destillat-Fortschritt, `wiki/INDEX.md`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zehnter P2-Lauf (Position 4 fortgesetzt, Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«Station MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Stand vor Arbeitsbeginn gegen `KORPUS-QUEUE.md`/eigenes CHANGELOG geprüft: entsprach exakt
dem Ende des neunten Laufs (Position 4, drei von 33 Autorendossiers). Acht weitere Dossiers
gelesen (alle mit Textebene per `pypdf` extrahierbar, keine OCR nötig), drei Ordner
(Leveille_Alain, Siedler_Wolf_Jobst, Sutcliffe_Anthony) als leer identifiziert. Sechs neue
Wiki-Artikel: [[hill-octavia-1875-freiraum-fuer-arme-vier-raumtypen-london]],
[[hirschfeld-1769-bern-arkaden-lauben-reisebeschreibung]],
[[stuart-james-1771-londoner-platzkritik-rus-in-urbe]],
[[von-moos-lampugnani-kritik-schmierfinken-2011]],
[[pawley-aufloesung-der-stadt-digitaler-urbanismus-1996]],
[[eitelberger-1858-staedtebau-historiographie-hippodamos-rom-wien]]. Zwei Dossiers
(Bellamy, Hegemann Capitol Square + Wikipedia-Biografie) sowie ein weiteres (Koolhaas/
Kohlhaas Generic-City-Sekundärtext) erwiesen sich bei Cross-Check (`grep -ril` über
`wiki/*.md`) als bereits in bestehenden Artikeln behandelt — Delta-Ehrlichkeit: kein neuer
Artikel, stattdessen Primärzitate/Statistik-Ergänzungen in
[[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]] bzw.
[[koolhaas-bigness-zwoelf-thesen-generic-city-junkspace]] eingefügt. Anonymisierungsregel
für HSLU-Textanalysen weiterhin angewendet (Verfassernamen nicht im Artikeltext).
`git diff --numstat` auf die Inventardatei zeigt reinen Append (`77 0`). Von den 33
Autorendossiers der Position 4 sind jetzt elf destilliert, drei Ordner leer, 19 bleiben
offen (Migge/Taut/Rossi vor Destillation gegen bestehende Wiki-Artikel prüfen). Details:
`raw/inventar/archiv-fachwissen__01_Staedtebau.md` Abschnitt Destillat-Fortschritt,
`wiki/INDEX.md`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, neunter P2-Lauf (Position 4 begonnen, Lane FACHWISSEN, 60. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Dispatch-Text unverändert seit dem 29.08.2026 identisch, obwohl beide Korpus-Specs seit
demselben Tag bestehen und diese Sektion allein bereits neun P2-Läufe hinter sich hat. Vor
Arbeitsbeginn wie üblich `scutil`/`ps aux`/`KORPUS-QUEUE.md`/`CHANGELOG.md` gegengeprüft:
Stand entsprach exakt dem Ende des achten Laufs oben (Positionen 1, 2, 8, 13, 14 vollständig,
3 zu zwei Fünfteln, 4-7 offen).

Position 4 (33 Autorendossiers unter `06_Theorie_des_Staedtbaus/`) begonnen. Ordnerliste gegen
bestehende Wiki-Artikel geprüft, insbesondere gegen die bereits umfangreich destillierte
Rossi-Rezeption aus Korpus `archiv-fachwissen__02_Architekturtheorie` — keine Überschneidung,
das dortige Rossi-Dossier dieser Sektion wurde in diesem Lauf nicht angerührt. Drei Dossiers
mit eigenem Fliesstext identifiziert und destilliert (alle drei studentische Textanalysen aus
dem HSLU-Modul «Gebautes Umfeld», Sommersemester 2007 — andere Provenienz als die ETH-
Vorlesungsreihe Lampugnani der Positionen 1/2/8):

- Jane Jacobs, «Tod und Leben grosser amerikanischer Städte» (Kap. 5+6) → neuer Artikel
  [[jane-jacobs-parks-nachbarschaft-selbstverwaltung-drei-ebenen]]: Park-Erfolg hängt von der
  Nutzungsmischung der angrenzenden Bebauung ab (Vier-Parks-Beispiel Philadelphia, Rittenhouse/
  Franklin/Washington Square und eine Verkehrsinsel mit gegensätzlichem Schicksal trotz
  identischer Ausgangsanlage); drei Selbstverwaltungsebenen der Nachbarschaft — Gesamtstadt,
  Strassennachbarschaft, Bezirk (~100'000 EW) — mit der pointierten These, dass sowohl eine zu
  kleinteilige als auch eine zu grosse Organisationsebene scheitert.
- Kevin Lynch, «Das Bild der Stadt» → neuer Artikel
  [[kevin-lynch-bild-der-stadt-fuenf-elemente-visueller-plan]]: fünf Wahrnehmungselemente
  (Wege/Grenzlinien/Bereiche/Brennpunkte/Merkzeichen) mit je eigenen Gestaltungsregeln, zehn
  allgemeine Formeigenschaften für den Entwurf, Konzept des «visuellen Plans» als
  Steuerungsinstrument. Die vier Bilddateien und die 10,8-MB-Präsentation im selben Ordner
  bewusst nicht ausgewertet (reine Bildbelege ohne zusätzlichen Fliesstext).
- André Corboz, Vorlesungsbeitrag «Stadt der Planer — Stadt der Architekten» (ETH 1987/88) und
  ergänzend der Ausstellungstext «Looking for a City in America» (2012) → neuer Artikel
  [[corboz-stadt-planer-architekten-metropole-schweiz-nordamerikanische-stadt]]: die
  Flächenschneider-(Planer)-vs-Raumzüchter-(Architekten)-Unterscheidung, die These, eine
  Metropole entstehe erst durch ihr Konzept (gegen Meili/Rousseau zur «Metropole Schweiz»),
  sowie Corboz' Gegenposition zur europäischen Verurteilung der nordamerikanischen Stadt als
  chaotisch (New York als Ausnahme, nicht Regelfall des amerikanischen Städtebaus).

Alle drei Artikel `status: emerging` (Sekundärquellen ohne seitengenaue Fundstellen zu den
Primärwerken). Anonymisierungsregel wie beim WBP-Berlin-Fund angewendet: die Namen der
HSLU-Studierenden, die die drei Textanalysen verfasst haben, erscheinen in keinem Artikel.
`git diff --numstat` auf die Inventardatei zeigt reinen Append (`49 0`).

Von den 33 Autorendossiers der Position 4 sind damit drei bearbeitet, 30 bleiben offen (u. a.
Behne, Bellamy, Christiansen, Engels, Giedion, Gracq, Hegemann, Hilberseimer, Hill, Howard,
Jefferson, Kohlhaas, Lampugnani, Migge, Leveillé, Mumford, Muratori, Pawley, Rossi — gegen
bestehende Rossi-Artikel aus `02_Architekturtheorie` prüfen —, Siedler, Sievers, Sonne, Stuart,
Sutcliffe, Taut, Tessenow, Von Moos, Waldheim). Von den acht P2-Positionen der Sektion sind
jetzt 1, 2, 8, 13, 14 vollständig, 3 zu zwei Fünfteln (Krier/Nolli dauerhaft blockiert), 4
begonnen; 5-7 (Platz-Materialbestand) vollständig offen. `wiki/INDEX.md` (Sektionszeile)
nachgeführt. Keine der harten Sperren berührt. **Nächster Lauf:** Position 4 fortsetzen, dabei
vorab per `ls`/Dateigrösse prüfen, welche der 30 Restdossiers überhaupt eigenen Fliesstext
statt reiner Bilddateien enthalten.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, achter P2-Lauf (Position 3 fortgesetzt, Lane FACHWISSEN)

Direkt im Anschluss an den siebten Lauf: Read-Tool-Direktversuch auf die vier nach der
`pypdf`-Probe als reine Bildscans eingestuften Grundlagenwerke (Stübben, Krier, Curdes,
Nolli), analog dem 50. Beispiel Memory `project_fachwissen-dispatch-loop` (Read-Tool hat
eine eigene, von System-`poppler` unabhängige PDF-Rendering-Pipeline). **Ergebnis:**
`Stuebben.pdf` (5,2 MB) und `Curdes.pdf` (11,2 MB) liessen sich vollständig lesen,
`Krier.pdf` (21,6 MB) scheiterte an einer harten 20-MB-Obergrenze des Tools
("PDF file exceeds maximum allowed size"), `Nolli.pdf` (51,6 MB) wurde danach nicht mehr
getestet (vermutlich derselbe Fehler). **Neuer, übertragbarer Befund:** die
Read-Tool-Fähigkeit ist nicht wie im 50. Beispiel vermutet auf Dateien unter rund 2,5 MB
beschränkt, sondern funktioniert nachweislich bis mindestens 11,2 MB; die tatsächliche
Grenze ist ein hartes 20-MB-Limit der Gesamtdateigrösse.

Aus `Stuebben.pdf` (Abschnitt 2, Kapitel 6-7, S. 147-225) destilliert → neuer Artikel
[[stuebben-staedtebau-platzarten-systematik-oeffentliche-plaetze]]: Vier-Typen-Systematik
öffentlicher Plätze (Verkehrs-/Nutz-/Garten-/Architekturplätze, letztere in fünf
Untertypen), die Maertens'sche Sehwinkel-Theorie (Augenaufschlagwinkel 45°/27°/18° bei
1×/2×/3× Gebäudehöhe Abstand) als quantifizierte Ergänzung zu Sittes empirischer
Platzgrössen-Regel, eine Grössenvergleichstabelle bekannter Stadtplätze, Platzgruppen und
Nivellement-Regeln. Stübben zitiert Sitte mehrfach explizit als Quelle und Diskussionspartner.

Aus `Curdes.pdf` (vollständiges Kapitel 15 «Plätze», S. 129-143, moderner Lehrbuchtext)
destilliert → neuer Artikel
[[curdes-plaetze-funktionstypologie-entwurfsanforderungen-krier-formtypologie]]:
Epochentypologie der Platzrolle (Mittelalter/Absolutismus/19. Jh./Auflösung im 20. Jh.),
ein Acht-Punkte-Anforderungskatalog für zentrale Plätze, funktionsabhängige
Proportionsregeln (1:1-1,5 intim / 1:3-4 mittel / 1:5-8 Grossveranstaltung), eine
klimatisch begründete Cafés-an-Nord-/Ostseite-Regel, sowie Rob Kriers Formtypologie 1975
in Sekundärdarstellung (Original `Krier.pdf` wegen Dateigrösse nicht direkt zugänglich).
Curdes reproduziert selbst sechs Sitte-Abbildungen und positioniert sich explizit
zwischen Sitte und Krier.

`git diff --numstat` auf die Inventardatei (beide Teilläufe des Tages zusammen) zeigt
reinen Append (`44 0`). Von den acht P2-Positionen dieser Sektion sind jetzt 1, 2, 8, 13,
14 vollständig sowie 3 zu zwei Fünfteln (Sitte, Stübben, Curdes) erledigt; Position 3
bleibt nur noch für Krier und Nolli offen (beide über 20 MB, dauerhaft blockiert ohne
Komprimierung ausserhalb dieser KB). Positionen 4-7 (33 Autorendossiers,
Platz-Materialbestand) bleiben vollständig offen. `wiki/INDEX.md` nachgeführt. Nächster
Lauf: Position 4 (33 Autorendossiers) beginnen. Keine der harten Sperren berührt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, siebter P2-Lauf (Position 3 teilweise, Lane FACHWISSEN, 58. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Textlayer-Probe per `pypdf` über alle fünf Grundlagenwerke der Manualistik
(`06_Theorie_des_Staedtbaus/00_Literatur/0.0 GRUNDLAGENWERKE_Manualistik/`): nur
`Sitte.pdf` liefert echten Text (93 S., 115'781 Zeichen extrahiert), `Stuebben.pdf` und
`Krier.pdf` 0 Zeichen auf den ersten 10 Seiten, `Curdes.pdf` 0 Zeichen, `Nolli.pdf` nur
105 Zeichen (vereinzelte Planbeschriftungen) — vier der fünf Werke bleiben reine Bildscans,
ohne OCR nicht auswertbar. `Sitte.pdf` vollständig extrahiert und gelesen. **Neuer Befund:**
der Scan selbst ist unvollständig — das Inhaltsverzeichnis (S. 2) weist zwölf Kapitel plus
Schluss bis Seite 175 aus, der Scan endet aber nach Kapitel VII (S. 87) mit Städte-Register
und Druckvermerk, gefolgt von leeren Seiten und einem Getty-Center-Library-Stempel. Die
praktischen Kapitel VIII-XII und der Schluss (S. 88-175, u. a. Sittes eigenes Reformprogramm
und sein ausgeführtes Beispiel einer Stadtregulierung) fehlen vollständig im digitalisierten
Bestand — reale Bestandslücke, analog zur Block-17-Lücke im Übungsheft (sechster Lauf), keine
Fehlextraktion. Aus den vorhandenen Kapiteln I-VII destilliert → neuer Artikel
[[camillo-sitte-staedtebau-kuenstlerische-grundsaetze-platzgestaltung]] (die vier
Grundregeln alter Platzgestaltung: Freihalten der Mitte, Geschlossenheit der Plätze,
Grösse/Form im Verhältnis zum Hauptgebäude, Unregelmässigkeit als Qualität; dazu Platzgruppen
und der Übergang zur barocken Theaterperspektive). Gegen bestehende Wiki-Artikel geprüft,
kein Duplikat. `git diff --numstat` auf die Inventardatei zeigt reinen Append (35 0), vom
15-Min-Cron binnen Minuten selbstständig committet (`75ef53d0f`, working tree danach sauber).

**Von Position 3 bleiben Stübben, Krier, Curdes und Nolli offen** (dauerhaft blockiert ohne
OCR-Werkzeug). Von den acht P2-Positionen dieser Sektion sind jetzt 1, 2, 3 (teilweise,
Sitte-Anteil), 8, 13 und 14 erledigt; Positionen 4-7 (33 Autorendossiers,
Platz-Materialbestand) bleiben vollständig offen. Nächster Lauf: Read-Tool direkt auf die
vier Bildscans probieren, sonst Position 4 (33 Autorendossiers) beginnen. `wiki/INDEX.md`
nachgeführt. Keine der harten Sperren berührt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, sechster P2-Lauf (Position 2 Teil 2/Abschluss, Lane FACHWISSEN, 57. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Fortsetzung des fünften Laufs: die drei zuvor ungelesenen Themenblöcke 15-17 des
ETH-Übungshefts geprüft. Block 15 (Stadtmodernisierung/Wettbewerb Gross-Berlin) erwies sich
als praktisch deckungsgleich mit dem bereits bestehenden Artikel
[[wettbewerb-gross-berlin-1908-hochhausstadt-debatte-wohnblock-reform]] — kein neuer Artikel,
nur eine Fünf-Kategorien-Klassifikation der Wettbewerbs-Rahmenbedingungen
(planungspolitisch/wirtschaftlich/demografisch/sozial/politisch) dort ergänzt. Block 16
(Städtisches Grün) war ein echter Neufund: neuer Artikel
[[bruno-taut-stadtkrone-migge-selbstversorger-volkspark]] zu Bruno Tauts Stadtkrone-Konzept
(mit der Hufeisensiedlung Berlin-Britz als gebautem Beispiel) und Leberecht Migges
Kleingarten-/Volkspark-Theorie (mit dem Volkspark Rehberge als gebautem Beispiel) — schliesst
eine im vierten Lauf offen gelassene Lücke derselben Quelldatei. Block 17 (Städtisches
Wohnen Frankfurt) **fehlt als Datei vollständig** im digitalisierten Bestand (weder eigener
Unterordner noch in der kombinierten `110805_Alles.pdf` enthalten, die nachweislich nach
Modul 16 endet) — als offener Punkt im neuen Artikel vermerkt, keine Erfindung von Inhalt.
`git diff --numstat` auf die Inventardatei zeigt reinen Append (43 0). **Position 2 gilt
damit als abgeschlossen.** Von den acht P2-Positionen der Sektion sind jetzt 1, 2, 8, 13 und
14 erledigt; Positionen 3-7 (fünf Grundlagenwerke Manualistik, 33 Autorendossiers,
Platz-Materialbestand) bleiben offen. Nächster Lauf: Position 3 (Grundlagenwerke der
Städtebau-Manualistik). `wiki/INDEX.md` nachgeführt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, fünfter P2-Lauf (Position 2 Teil 1, Lane FACHWISSEN, 56. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Vor Arbeitsbeginn wie üblich `scutil`/`ps aux`/`KORPUS-QUEUE.md`/dieses CHANGELOG
gegengeprüft: beide Specs bestehen, 210 Wiki-Artikel, P1 beider Korpora vollständig,
Sektion `01_Staedtebau` P2 zuletzt mit Position 1 abgeschlossen (vierter P2-Lauf).

Position 2 (ILIAS-Übungsheft «Geschichte des Städtebaus», 61 S., 214 kB Text) zu rund 82 %
gelesen (Themenblöcke 1-14 von 17; `textutil` scheiterte an der PDF, `python3`/`pypdf`
extrahierte erfolgreich). Grösstenteils reine Lernkontrolle, die bereits destillierte
Vorlesungsinhalte wiederholt (Delta-Ehrlichkeit) — u. a. ist die Berlage/Amsterdamer-Schule-
Baublock-Definition wortidentisch bereits im Bestand. Drei neue Artikel mit echtem
Mehrwert destilliert:

- [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]]:
  Streifenstadt, Hippodamisches System, Cardo/Decumanus, Centuriatio, Castrum, Insulae,
  Forum/Agora.
- [[plantypen-glossar-katasterplan-schwarzplan-strassenplan-enteignungsplan]]:
  Katasterplan, Schwarzplan, Strassenplan, Quartierplan, Strassenquerschnitt,
  Gestaltungsplan, Enteignungsplan (beide mit Schweizer Rechtsbezug), Nolliplan.
- [[stadtgruendung-stadterweiterung-stadtumbau-begriffstrias]]: präzise Dreiteilung mit
  wörtlichem Zitat ARL, Handwörterbuch der Raumordnung, 2005.

Zusätzlich Ergänzung im bestehenden Artikel `berlin-stadterweiterung-schinkel-lenne-hobrecht`:
Hobrecht-Fluchtlinienplan-Kennzahlen 1862 (Mietskaserne-Kritikpunkte, Tempelhofer/
Schöneberger Feldmark 1861/1870/1891) — füllt eine dort selbst vermerkte Lücke.

`git diff --numstat` auf die Inventardatei und auf `wiki/INDEX.md` zeigte in beiden Fällen
reinen Append. Drei Themenblöcke bleiben ungelesen (15 Stadtmodernisierung Berlin, 16
Städtisches Grün, 17 Städtisches Wohnen Frankfurt). Nächster Lauf: diese drei Restblöcke
abschliessen, dann Position 2 schliessen und mit Position 3 (fünf Grundlagenwerke
Manualistik) fortfahren. Keine der harten Sperren berührt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, vierter P2-Lauf (Position 1, Lane FACHWISSEN, 55. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt, keine Doppel-Instanz)

Vor Arbeitsbeginn `scutil`/`ps aux`/`KORPUS-QUEUE.md`/dieses CHANGELOG gegengeprüft statt
dem veralteten Dispatch-Text zu folgen: beide Korpus-Specs bestehen, P1 beider Korpora
vollständig, Sektion `01_Staedtebau` P2 bereits mit Positionen 8, 13, 14 abgeschlossen
(dritter P2-Lauf desselben Tages, unmittelbar davor).

Position 1 (Jans-Reader zur Vorlesungsreihe «Geschichte des Städtebaus», 47 S.) vollständig
gelesen. Grossteil der Live-Mitschrift wiederholt bereits andernorts destillierte Themen
(Antike, Mittelalter/Renaissance-Überblick, England Landschaftspark, vor-Haussmannsches
Paris) — dort kein Artikel (Delta-Ehrlichkeit). Vier Fundstellen mit Mehrwert destilliert,
je gegen bestehende Artikel auf Duplikate geprüft:

- Determinanten der Stadtform (Venedig, Siena/Bath, Vitruv-Hygiene, London-Baurecht,
  Barcelona-Cerdà) als Ergänzung in
  [[staedtebau-begriffe-einflussgroessen-bausteine-stadtstruktur-jans]] statt Duplikat zum
  bestehenden Glossar-Artikel.
- Barocke Stadtplanung (offene Achsensysteme Rom/Versailles/St. Petersburg, Platztypologie
  dreiseitig/ausstrahlend/allseitig-geschlossen, Place-Royal-Typus Place Dauphine/Place des
  Vosges) → neuer Artikel
  `wiki/barocke-stadtplanung-offene-achsensysteme-platztypologie-place-royal.md`,
  `status: speculative`.
- Haussmanns drei Réseau-Phasen (Premier/Second/Troisième, 1853–1869, mit benannten
  Einzelprojekten) als Ergänzung in
  `wiki/monumentale-stadtachsen-haussmann-paris-city-beautiful-washington.md` statt
  Duplikat (bestehender Artikel deckte Motivation/Zeitleiste, nicht die Bauphasen).
- Berlin-Strategiewechsel Schinkel (Einzelmonument) → Lenné (gescheiterter Gesamtplan) →
  Hobrecht (privatwirtschaftlicher Grossblock) → neuer Artikel
  `wiki/berlin-stadterweiterung-schinkel-lenne-hobrecht.md`, `status: speculative` (Quelle
  bricht nach kurzem Einleitungsabsatz ab).
- Parallele Stadttypen-Liste (S. 7) als Cross-Check-Verweis in
  `wiki/stadttypen-strassennetz-systematik-jans.md` vermerkt, kein eigener Artikel (keine
  neue Sachaussage).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (`26 0`). **Position 1 gilt
damit als abgeschlossen.** Von den acht P2-Positionen dieser Sektion sind jetzt 1, 8, 13
und 14 erledigt; **Positionen 2–7 (Übungsheft Lampugnani, fünf Grundlagenwerke
Manualistik, 33 Autorendossiers, Platz-Materialbestand) bleiben offen.** Nächster Lauf:
Position 2 (Übungsheft, 61 S., Kompetenz-/Methodenraster über 17 Themenblöcke). Keine der
harten Sperren berührt. Details `wiki/INDEX.md` 30.08.2026.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, zweiter und dritter P2-Lauf (Lane FACHWISSEN, 54. Beispiel Memory `project_fachwissen-dispatch-loop`, Dispatch-Text erneut identisch veraltet «kein Destillat, keine Spec, 2 Wiki-Artikel»/«MacBook Pro», Station laut `scutil` Macmini bestätigt)

Vor Arbeitsbeginn wie in allen Vorläufen dieser Lane geprüft: `scutil` bestätigt Macmini
(nicht «MacBook Pro» laut Dispatch), `ps -o pid,ppid,command` zeigt eine einzige
Prozesskette (15432→15435→15441→15442, verschachtelte Wrapper derselben Instanz, keine
Doppel-Instanz; ein separater `vollgas-schub.sh`-Prozess PPID 1 ist ein für 2026-08-31 11:00
vorgemerkter künftiger Lauf, keine Kollision), `KORPUS-QUEUE.md`/`CHANGELOG.md` bestätigen
den realen Stand (beide Korpus-Specs bestehen, P1 vollständig, erster P2-Lauf dieser Sektion
bereits am 30.08.2026 erfolgt, Position 8 dort zu sieben Neunteln abgeschlossen).

Fortsetzung des ersten P2-Laufs dieser Sektion, zwei Teillaufe:

**Zweiter P2-Lauf — Abschluss Position 8** (die fünf zuvor offen gelassenen Restdateien der
Geschichte-Zusammenfassungen):
- `Alternative zur Grossstadt.docx` und `Test/test.docx`: kein Artikel (reine
  Aufgabenstellung bzw. Duplikat zum bestehenden Gartenstadt-Artikel).
- `Alternativen zur Grossstadt.docx` (Engels' «Zur Wohnungsfrage», Owen/Fourier,
  Company Towns Saltaire/Akroydon/Bournville/Port Sunlight) → neuer Artikel
  [[engels-wohnungsfrage-owen-fourier-company-towns]].
- `VL Architektur der USA.doc` (TU Dresden, Prof. Lippert, Sommer 2007, elfteilige
  Vorlesungsreihe, nur Vorlesung 2 gelesen: Jefferson-Raster, Land Ordinance 1785,
  Northwest Ordinance 1787, Commissioner's Plan New York 1811) → neuer Artikel
  [[us-rastersystem-jefferson-land-ordinance-commissioners-plan]]; Vorlesung 5 (Ursprung
  City-Beautiful-Bewegung Chicago 1893, Senate-Park-Commission-Zeitleiste 1902–1943) als
  Ergänzung in [[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]]
  eingefügt. Übrige rund neun Vorlesungen dieser Datei bleiben ungelesen, Fundstelle für
  einen künftigen Lauf vermerkt.
- `Lead.doc`: kein Artikel (Duplikat, Inhalt bereits im bestehenden Haussmann-Artikel).

**Position 8 gilt damit als abgeschlossen.**

**Dritter P2-Lauf — Positionen 13 und 14:**
- Position 14 (DTV-Atlas-Konkordanz) vollständig destilliert → neuer Artikel
  [[dtv-atlas-baukunst-konkordanz-staedtebau-kapitel]] (25 Kapitel mit Seitenzahlen, reine
  Wegweiser-Tabelle ohne Textübernahme).
- Position 13 (das Manifest «Die Athmosphärische Stadt» selbst, 140129) gelesen: zu roh
  für einen eigenen Artikel, aber zwei Fundpunkte als Ergänzung in den bestehenden Artikel
  [[blockrand-aufenthaltsqualitaet-argumentation-verdichtung-jans]] eingefügt (Attribution
  der Kernformulierung an Schmid Schärer Architekten, Maler-Stichwortliste als
  Bildreferenz).

Beide Positionen gelten als abgeschlossen. `git diff --numstat` auf die Inventardatei
(`raw/inventar/archiv-fachwissen__01_Staedtebau.md`) zeigt über beide Teilläufe reinen
Append (58 0). **Von den acht P2-Positionen dieser Sektion sind jetzt Positionen 8, 13 und
14 abgeschlossen; Positionen 1–7 (Jans-Reader, Übungsheft, fünf Grundlagenwerke
Manualistik, 33 Autorendossiers, Platz-Materialbestand) bleiben offen.** Nächster Lauf:
Position 1 (Jans-Reader, eigenes Ordnungsgerüst der Vorlesungsreihe Lampugnani).

Keine der harten Sperren (Verträge, Bewerbungen, Personaldossiers, Adress-/Kontaktdaten,
Lohn-/Honorardaten, Privatunterlagen) berührt; die bereits bekannte Datenschutz-Sperre
(`FactShets_Staedte.docx`, Stufe X) wurde nicht angerührt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, erster P2-Lauf (Lane FACHWISSEN, Dispatch-Text erneut identisch veraltet, «MacBook Pro» falsch, Station laut `scutil` Macmini bestätigt)

Dispatch-Text wie in allen Vorläufen dieser Lane behauptete «noch kein Destillat und keine
Spec ... 2 Wiki-Artikel», Station fälschlich «MacBook Pro». Vor Arbeitsbeginn `scutil`
(Macmini bestätigt), `ps aux` (nur der eigene `claude -p`-Prozess, keine Doppel-Instanz) und
`KORPUS-QUEUE.md`/`wiki/INDEX.md` gegengeprüft: beide Korpus-Specs bestehen seit
29.08.2026, P1 ist in beiden Korpora vollständig, `buero-referenzen/10_Modellbauen` P2 gilt
als abgearbeitet (52. Beispiel), `archiv-fachwissen/02_Architektur_Vermitteln` P1+P2
vollständig (51. Beispiel). Statt eines weiteren dünnen P2-Laufs in `01_Tragwerk` (18
Positionen offen, drei davon dauerhaft blockiert) gewählt: die kleine, seit dem
29.08.2026 nur für P1 bearbeitete Sektion `01_Staedtebau` (8 P2-Positionen, keine davon
angetastet).

Aus Position 8 (Geschichte-Zusammenfassungen, Ordner `01_Geschichte/`, rund zwölf
DOCX/DOC-Dateien) sieben Dateien via `textutil -convert txt -stdout` gelesen und gegen
bestehende Wiki-Artikel geprüft (keine Duplikate — `02_Architekturtheorie` behandelt
Architekturtheorie, nicht Städtebaugeschichte). Fünf neue Artikel destilliert:

- [[gartenstadtbewegung-genealogie-pugin-ruskin-morris-howard-europa]] — aus der rohen
  Live-Mitschrift `110303_Gartenstadt.docx`: Genealogie Pugin/Contrasts 1836 → Ruskin/
  Präraffaeliten → William Morris/Red House/News from Nowhere → Ebenezer Howard/Garden
  Cities of Tomorrow → Letchworth (Parker & Unwin 1903) → europäische Rezeption (Hellerau,
  Rotterdam-Vreewijk, Moskau-Ostankino, Zürich-Schwamendingen 1948 als beginnende
  Zersiedelung statt echte Gartenstadt, Ciudad Lineal Soria).
- [[utopische-stadtentwuerfe-typologie-garnier-cite-industrielle]] — aus
  `110411_Stadtutopien_und_Stadtideale.docx`: Fünf-Typen-Tabelle utopischer
  Stadtentwürfe (Vauban, Fourier, Ledoux, Howard, Garnier) und Tony Garniers Cité
  Industrielle (1901-04, 35'000 Einwohner, realisierte Fragmente in Lyon inkl. Quartier
  des Etats-Unis 1929).
- [[wettbewerb-gross-berlin-1908-hochhausstadt-debatte-wohnblock-reform]] — aus
  `110421_Zusammenfassung.docx`: Wettbewerb Gross-Berlin 1908, Mächler-Plan 1919 im
  Vergleich zu Nashs Regent Street 1814 (1939 von Albert Speer teilweise übernommen),
  vierstufige Wohnblock-Reformtypologie (Meyers Hof → Messel → Jansen → Superblock),
  Hochhausstadt-Debatte (Sant'Elia, El Lissitzky, Le Corbusier, Hilberseimer).
- [[berlage-impressionistische-baukunst-amsterdamer-schule-block-zu-siedlung]] — aus
  `110404_Zusammenfassung_Stadtebau.docx`: Berlages «impressionistische Baukunst» (1893),
  Erweiterungsplan Amsterdam Süd 1900/1904 vs. 1914, Amsterdamer Schule (de Klerk),
  Rotterdam vom Block zur Siedlung (Oud-Mathenesse), Baublock-Definition.
- [[monumentale-stadtachsen-haussmann-paris-city-beautiful-washington]] — zwei dünnere
  Quellen (`110320_Einleitung_Gruene_Stadtmitte.docx` und Haussmann-`Zusammenfassung.doc`)
  zu einem Artikel zusammengeführt: Haussmanns Pariser Umbau 1853-69 (politische/
  wirtschaftliche Motivation, Zeitleiste 1789-1869) und die City-Beautiful-Bewegung
  (Hegemann/Peets 1922, L'Enfant-Plan Washington D.C. 1791 mit Versailles-Vorbild,
  Bellamys *Looking Backward*).

Eine achte Datei (`Städtisches Grün.docx`) gelesen, aber **kein Artikel** — reiner
Lernziel-Text ohne eigene inhaltliche Zusammenfassung, nur zwei Quellentitel genannt
(Delta-Ehrlichkeit). Alle fünf Artikel `status: speculative` (Live-Mitschriften bzw.
eigene, teils unbestätigte Prüfungsantworten ohne Seitenangaben). Zwei Antworten in den
Quellen sind explizit als unbestätigte Selbsteinschätzung markiert und entsprechend
gekennzeichnet übernommen; eine Jahreszahl (Ledoux Salines de Chaux 1847) widerspricht der
etablierten Datierung und wurde als Diskrepanz vermerkt statt stillschweigend korrigiert.

`git diff --numstat` auf die Inventardatei zeigte `36 0` (reiner Append). Von Position 8
bleiben rund fünf Dateien offen (zwei `Alternative(n) zur Grossstadt.docx`-Duplikate, zwei
`VL Architektur der USA.doc`-Duplikate, ein `Lead.doc`); **Positionen 1-7 dieser Sektion
(Lampugnani-Reader, Übungsheft, fünf Manualistik-Grundlagenwerke, 33 Autorendossiers,
Platz-Materialbestand, DTV-Konkordanz, Manifest) bleiben vollständig unangetastet.**
`wiki/INDEX.md` und `KORPUS-QUEUE.md` nachgeführt. Nächster Lauf: Position 8 abschliessen
oder mit einer der sieben restlichen Positionen dieser Sektion beginnen.

## 2026-08-30 — P2-Lauf Korpus `buero-referenzen`, Sektion `10_Modellbauen`, dritter P2-Lauf (Lane FACHWISSEN, 52. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text weiterhin identisch veraltet (behauptet «kein Destillat, keine Spec, 2
Wiki-Artikel», Station fälschlich «MacBook Pro»). Vor Arbeitsbeginn wie üblich `scutil`
(Macmini bestätigt), `ps -o pid,ppid,command` für die eigene Prozesskette (11832 → 11838 →
11839, keine Doppel-Instanz) und `KORPUS-QUEUE.md`/`CHANGELOG.md` gegengeprüft: beide
Korpus-Specs bestehen seit 29.08.2026, P1 ist in beiden Korpora vollständig, der Vorlauf
(51. Beispiel) hatte `archiv-fachwissen/02_Architektur_Vermitteln` vollständig
abgeschlossen und als nächste Optionen `01_Tragwerk` (18 P2 offen, dünner Ertrag),
`10_Modellbauen` (86 P2 offen) oder eine weitere kleine unberührte Sektion genannt.

Gewählt: `buero-referenzen/10_Modellbauen` fortsetzen. Der Elfte Lauf hatte zwei Positionen
offen gelassen, die grundsätzlich mit dem Read-Tool prüfbar wären (kein Word/InDesign/
Illustrator nötig):

- `03_Modellbaudokumente/01_Werkstoffe/PDF/Materialien.pdf` vollständig gelesen: eine
  einzige Seite, exakt der bereits im bestehenden Artikel und im Inventar-Abschnitt „Was die
  Sektion NICHT hergibt" zitierte Preisvergleich (master wood 8 mm, Herzog-Elmiger 18.50
  CHF/m² gegen Coop Bau+Hobby 32.00 CHF/m²), Rest der Seite leer. Kein neuer Fakt — das
  seit 23.08.2026 als „Fragment, INDD könnte mehr enthalten" geführte Offene ist damit
  geklärt: der PDF-Export trägt die vollständige Textebene, es gibt nichts Zusätzliches zu
  bergen. `stand_herzog_elmiger.gif` (reiner Anfahrtsplan, kein Fachinhalt) ebenfalls
  gegengelesen.
- `02_Modellbauutensilien/Profilitwand_Vorlagen/060215_Profilit_M10.pdf` stellvertretend für
  die Zwölf-PDF/Vier-AI-Gruppe geöffnet: reine Vektorgrafik ohne jede Bemassung, Beschriftung
  oder Massstabsangabe auf der Seite — bestätigt die Inventar-Einschätzung „kein
  extrahierbarer Text", auch visuell kein Fakt gewinnbar.

Beide Positionen **abschliessend als „kein Artikel" geschlossen** (Delta-Ehrlichkeit statt
erzwungenem Artikel ohne Substanz). Damit bestehen von den verbleibenden P2-Positionen
dieser Sektion nur noch dauerhaft blockierte: die beiden CAD-Dateien
`Schmiede_Modell.pln`/`.vwx` (kein ArchiCAD- oder Vectorworks-Werkzeug auf dieser Station),
die S2-Design-Fremdvorlage (Kundendaten Dritter — Provenienz bereits anonymisiert in
`wiki/werkstoffliste-modellbau-vorlage.md` vermerkt, der Inhalt selbst bleibt gesperrt) und
zwei Betondecke-Fotoserien (54 Bilder, reines Bildmaterial ohne Fliesstext, im bestehenden
Artikel `wiki/modellbeton-fehlerkatalog-schalung.md` bereits als Beleg erwähnt).

**P2 der Sektion `10_Modellbauen` gilt damit als abgearbeitet, bis ein CAD-Viewer verfügbar
wird** — kein weiterer Folgelauf für diese Sektion nötig, ausser bei neuem Werkzeug.
`git diff --numstat` auf die Inventardatei zeigte `28 0` (reiner Append); der 15-Min-Cron
hatte den Commit binnen Minuten bereits selbständig ausgeführt (`auto-sync [Macmini]`,
`git log` zeigt ihn bereits als eigenen Commit, Working Tree danach sauber).

`KORPUS-QUEUE.md` nachgeführt. Nächster Lauf: eine weitere Sektion mit vollständigem P1 und
unangetastetem P2 aus `wiki/INDEX.md` wählen (die meisten `buero-referenzen`-Sektionen haben
P2 noch unberührt), oder `archiv-fachwissen/01_Tragwerk` (18 P2 offen, dünner Ertrag).

## 2026-08-30 — P2-Lauf Korpus `buero-referenzen`, Sektion `02_Architektur_Vermitteln` vollständig abgeschlossen (Lane FACHWISSEN, 51. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text weiterhin identisch veraltet (behauptet «kein Destillat, keine Spec, 2
Wiki-Artikel», Station fälschlich «MacBook Pro»). Vor Arbeitsbeginn `scutil` (Macmini
bestätigt), `ps aux` (ein einziger `claude -p`-Prozess für diese Lane) und
`KORPUS-QUEUE.md` geprüft: beide Korpus-Specs bestehen seit 29.08.2026, P1 ist in beiden
Korpora vollständig, P2 lief zuletzt in `archiv-fachwissen/01_Tragwerk` und
`buero-referenzen/10_Modellbauen`. Statt einer dieser laufenden, ertragsschwachen
P2-Sektionen wurde nach Queue-Empfehlung zur kleineren, noch unberührten Sektion
`archiv-fachwissen/02_Architektur_Vermitteln` gewechselt (P1 bereits am 29.08.2026
abgeschlossen, P2 mit 13 Positionen seither unangetastet).

Alle 13 P2-Positionen dieser Sektion destilliert, sieben neue Wiki-Artikel:

- `wiki/rhetorik-praesentationstechnik-redeaufbau-formeln-visualisierung.md` — Redeformen,
  Aufbauvarianten (Fünf-Punkte-, Problemlösungs-, Pro-Contra-Formel), Redemanuskript-Varianten,
  Körpersprache-Tabellen, Visualisierungsregeln (HTA-Skript Rhetorik/Präsentationstechnik) plus
  Referatsgliederung für Referenzobjekt-Beschriebe (Merkblatt Referate, Hochschule Luzern 2008)
- `wiki/medienmitteilung-aufbau-umgekehrte-pyramide.md` — sechsteiliger Aufbau, Prinzip der
  umgekehrten Pyramide
- `wiki/wissenschaftliches-arbeiten-aufbau-zitierregeln-arbeitsphasen.md` — konsolidiert fünf
  Quellen (zwei ETH-Skripte inhaltlich fast identisch, Leitfaden Imhof mit zwei
  Zitierstandards Architektur/Geisteswissenschaft, HTA-Kontextmodul-I-Skript mit
  Erkenntniskreislauf und Harvard-Kurzbeleg, separates Einleitungs-Merkblatt mit den fünf
  Pflichtelementen und der 10-Prozent-Faustregel)
- `wiki/entwurfsmethodik-herzog-de-meuron-programm-vor-form-dialogischer-prozess.md` —
  Studienarbeit auf Basis eines Herzog-Radiointerviews: Programm vor Form, Einschränkungen als
  Qualitätsquelle, dialogischer Prozess mit der Bauherrschaft
- `wiki/dispositionsvorlagen-studienarbeit-skelett-revisionsdaten.md` — zwei reale
  Dispositionsbeispiele mit Kapitelabsicht im Klartext und Revisionsdaten als eingebaute
  Versionskontrolle
- `wiki/fachwoerterbuch-baulaien-baukommissionen-rzu-1995.md` — RZU-Glossar mit PBG-Verweisen
  (Rechtsstand 1995, vor Verwendung gegen geltendes PBG zu prüfen)
- `wiki/projektbeschrieb-eigene-schreibhand-bikerhotel-erstfeld.md` — eigener Studienentwurf,
  Reihenfolge Idee/Nutzung/Innenraum/Aussenraum/Material/Statik, durchgehaltene Kernmetapher

**Zwei Nebenbefunde:** (1) Die beiden `.doc`-Dateien der Sektion (`vorgabe disposition.doc`,
`Vortrag.doc`) liessen sich entgegen früherer Formatlücken-Erwartung vollständig lesen via
`textutil -convert txt -stdout <datei>` (macOS-Bordmittel, kein Word/LibreOffice nötig) —
neue Faustregel für künftige `.doc`-Funde in dieser und anderen Sektionen. (2) Das
Fachwörterbuch `fwb.pdf` war im Phase-0-Inventar fälschlich als «nur 4 Seiten (Fragment A
bis B)» beschrieben; tatsächlich deckt es auf 4 Seiten den vollständigen Alphabet-Bereich A
bis Z ab — Verwechslung Seitenzahl/Buchstabenumfang, im neuen Artikel korrigiert.

**Damit ist Sektion `02_Architektur_Vermitteln` (P1 und P2) vollständig destilliert.**
Nächster Lauf: `archiv-fachwissen/01_Tragwerk` (18 P2-Positionen offen, dünner Ertrag) oder
`buero-referenzen/10_Modellbauen` (86 P2-Positionen offen) fortsetzen, oder eine weitere
kleine unberührte Sektion nach Queue-Empfehlung wählen (`02_Architektur_Vermitteln` war die
letzte dieser Art in `archiv-fachwissen`; als nächstes käme eine Sektion aus
`buero-referenzen` mit vollständigem P1 und unberührtem P2 in Frage, `wiki/INDEX.md`
konsultieren).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Tragwerk`, vierter P2-Lauf (Lane FACHWISSEN, 50. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut identisch veraltet («noch kein Destillat und keine Spec ... 2
Wiki-Artikel», Station fälschlich «MacBook Pro»). Vor Arbeitsbeginn `scutil` (bestätigt
Macmini), `ps aux` (ein einziger `claude -p`-Prozess, keine Doppel-Instanz) und
`KORPUS-QUEUE.md`/`CHANGELOG.md` geprüft. Unkommittierte Grubenmann-Buchführung des
Vorlaufs zuerst per `nas-commit-now.sh` gesichert (bekannter Merge-Konflikt in sieben
fremden Dateien/KBs, lokaler Working Tree sauber ohne `MERGE_HEAD`/Konfliktmarker, dem
15-Min-Cron überlassen — hat binnen Minuten selbständig committet/gepusht).

**Werkzeuglücke revidiert:** die vier zuvor als «ohne Textlayer, OCR nötig» eingestuften
Bildscans lassen sich mit dem Read-Tool dieser Station direkt lesen — das Tool bringt eine
eigene PDF-Rendering-Pipeline mit, die unabhängig vom fehlenden System-`pdftoppm`
funktioniert, allerdings nur bei Einzeldateien ohne Seitenbereichs-Parameter (getestet bis
rund 2,5 MB). Vier P2-Positionen destilliert:

- ArchPlus 193 (9/2009, Sabine Kraft/Christoph Schindler, «Mit oder gegen Holz — Digitale
  Schreinerei», vollständig gelesen) → neuer Artikel
  `wiki/digitale-schreinerei-formfindungstaxonomie-eierschneider-falt-flecht.md`:
  Vier-Prinzipien-Taxonomie digitaler Holzformfindung (Eierschneider einfach/zweifach,
  Faltstrukturen, Kassettenelemente, Flechtstrukturen) mit 14 Werkbeispielen 2005-2009
  (u. a. Metropol Parasol, Serpentine Gallery Pavilion, Centre Pompidou Metz) samt der
  methodischen Kritik der Autoren an rein additiver, nicht materialgerechter Formgebung.
- Archithese 6.02 (Walter Bieler, «Täler mit Holz überspannen», vollständig gelesen) →
  neuer Artikel `wiki/bieler-holzbruecken-werkregister-graubuenden-ostschweiz.md`:
  Werkregister von neun Holzbrücken Graubünden/Ostschweiz mit Baujahr/Länge/Struktur, dazu
  Bielers Grundprinzip Tragwerk-unter-der-Fahrbahn (übernimmt Dachfunktion, keine
  Anprallast aufs Tragwerk).
- ETH-Ehrenpromotions-Broschüre Christian Menn (zwei Dateien, vollständig gelesen: Jörg
  Schlaichs Laudatio, ein unbezeichneter Fachaufsatz, Menns Verdankung) → neuer Artikel
  `wiki/christian-menn-werkregister-stabbogen-hohlkasten-brueckenbaukultur.md`:
  Karriereverlauf, Werkregister von neun Bauten/Projekten (u. a. Ganterbrücke Simplon,
  Chandoline-Brücke Sion, das nicht realisierte Charles-River-Crossing-Projekt Boston) und
  die technische Stabbogen-vs-Hohlkasten-Argumentation — gegen den bestehenden Artikel
  `wiki/tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau.md` geprüft (dort bereits
  Menns Eleganz-Zitat und die Letziwaldbrücke über eine andere Quelle behandelt), kein
  Duplikat, da hier Werkregister und Technik statt Eleganzdebatte im Fokus stehen. Zwei
  Zitatstellen aus dem unbezeichneten Fachaufsatz liessen sich wegen Scanqualität nur
  sinngemäss rekonstruieren, im Artikel unter «Offen» als unsicher gekennzeichnet.
- `Weiteres Material/Skalierung_Modelle/` (4 JPG, vollständig gesichtet) → neuer Artikel
  `wiki/modellstatik-aehnlichkeitsgesetz-struktur-modell-skalierung.md`: handschriftliche
  Ähnlichkeitsgesetz-Tabelle (Struktur 1:1 vs. Modell 1:x, Eigengewicht g/x³, Querschnitte
  A/x², Nutzlast pro m² skalenunabhängig) mit historischem Bezug auf Galileo Galileis
  Quadrat-Kubik-Gesetz (Discorsi 1636) und zwei unbeschrifteten Fotos eines
  Belastungsversuchs.

Erneuter, gezielter Versuch am 109-seitigen `111002_Reader_alle_Seiten.pdf` mit dem
Read-Tool-Parameter für Seitenbereiche (statt Bash/System-`pdftoppm` wie im Vorlauf):
schlägt mit identischer Fehlermeldung `pdftoppm is not installed` fehl — die native
Rendering-Pipeline des Tools greift nur bei kleinen Einzeldateien ohne Seitenbereich, bei
grossen Dateien mit Seitenbereichs-Parameter fällt sie auf das fehlende System-`poppler`
zurück. `QUESTIONS.md` #72 bleibt unverändert offen.

`git diff --numstat` auf Inventardatei zeigt `39 0` (reiner Append, keine Löschung).

**18 P2-Positionen dieser Sektion bleiben offen:** die drei Kraftfluss-Darstellungsvarianten
(weiterhin als eigenständiger Artikel zu dünn beurteilt, Methode bereits im Kurzbefund
beschrieben), der 109-seitige Reader mit seinen 13 zitierten Quelltexten (Werkzeuglücke),
sowie `Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf` (P3, nicht P2). Kein neuer
Datenschutz-Fund; Sperrvermerk Seite 4 des Readers und die Teilnehmerlisten-CSV/XLSX
erneut nicht geöffnet. **Nächster Lauf:** `01_Tragwerk` mit den drei verbliebenen
Diagrammen abschliessen (dünner Ertrag) oder gemäss Queue-Regel zur nächstgrössten Sektion
mit offenem P2 wechseln (`02_Architektur_Vermitteln` oder `01_Landschaftsarchitektur`, je
rund 12 P2-Positionen) — `poppler`-Installation weiterhin empfehlenswert, um den Reader
und künftige grosse Scans nutzbar zu machen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Tragwerk`, dritter P2-Lauf (Lane FACHWISSEN, 49. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet (behauptet «noch kein Destillat und keine Spec ... KB hat erst
2 Wiki-Artikel», Station im Dispatch fälschlich «MacBook Pro»). Vor Arbeitsbeginn `scutil`
(bestätigt Macmini), `ps aux` (keine Doppel-Instanz, nur der eigene `claude`-Prozess) und
`KORPUS-QUEUE.md`/`CHANGELOG.md` geprüft — am realen Stand weitergearbeitet statt an der
veralteten Auftragsbeschreibung.

Drei P2-Positionen der Sektion `01_Tragwerk` gelesen, zwei destilliert:

- `.../Dissertation/eth-20590-01_abstract.pdf` — Dateiname im Archiv irreführend: enthält
  nicht den Abstract, sondern das Schlusskapitel «D. Schluss» der Killer-Dissertation
  (S. 186-190) samt vollständigem Werkverzeichnis der Grubenmann-Brücken. Vollständig
  gelesen und destilliert zu einem neuen Artikel:
  `wiki/grubenmann-brueder-werkverzeichnis-bruecken-schaffhausen.md` (Arbeitsteilung der drei
  Brüder Jakob/Johannes/Hans Ulrich, Werkverzeichnis-Tabelle ausgeführter Brücken und
  Brückenprojekte mit Jahr und Bearbeiter, Ende der Werkstatt-Dynastie nach 1783,
  biografische Kurznotizen inkl. dem Bericht des Reisenden W. Coxe).
- `.../02_Bruecke/Grundlageplaene/Seiten aus Mechel_Drey merkwürdigsten Brücken in der
  Schweiz_1803.pdf` (eine Tafel, vollständig) → in denselben neuen Artikel eingearbeitet:
  zeitgenössische Bilddokumentation (Plan/Schnitt/Aufriss) der Schaffhauser Rheinbrücke,
  dokumentierte Zerstörung 1799 im Krieg, dazu die belegte Einordnung aus der
  Killer-Dissertation, warum nach 1799 aus militärischen Gründen auf mehrfeldrige Brücken
  mit kleineren Öffnungen umgestellt wurde.
- `.../Tec21/Einzelseite/Empore_aus_Grubenmann_Kirchen_Tragwerk.pdf` gelesen, aber bewusst
  **nicht** gesondert destilliert: reine Bildunterschriften-Seite zu bereits im bestehenden
  Artikel [[grubenmann-kirchen-holzdachstuhl-typologie]] beschriebenen Knotenpunkten, liefert
  nur einen zusätzlichen Quellenverweis (SBZ 23/1959) ohne neuen Sachinhalt.

**Neue Werkzeuglücke:** Der Versuch, den 109-seitigen Reader `111002_Reader_alle_Seiten.pdf`
(52 MB) seitenweise zu lesen (Seiten 1-3 und 5-15, unter Auslassung der gesperrten
Teilnehmerliste auf Seite 4), scheiterte, weil das PDF-Seitenrendering der Stationswerkzeuge
`pdftoppm` (Paket `poppler`) voraussetzt, das auf dieser Station nicht installiert ist; ohne
Seitenbereich ist die Datei für einen Einzelaufruf zu gross. Details `QUESTIONS.md` #72.
Damit bleiben das Modell-Belastungstest-Blatt (Ähnlichkeitsgesetz, Bezug Galileo
«Discorsi» 1636) und die 13 im Reader zitierten Quelltexte weiterhin ungelesen.

22 P2-Positionen dieser Sektion bleiben offen (drei Kraftfluss-Darstellungsvarianten, vier
textlose Bildscans, der 109-seitige Reader, das Modell-Belastungstest-Blatt,
`Final_Lageplan_100.pdf`/`Final_Schnitt_100.pdf`, die Skalierungsmodell-Bilder). Kein neuer
Datenschutz-Fund; die CSV/XLSX-Teilnehmerliste wurde erneut nicht geöffnet, Sperrvermerk
Seite 4 des Readers erneut beachtet.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Tragwerk`, zweiter P2-Lauf (Lane FACHWISSEN, 48. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text wie in den letzten gut 20 Läufen veraltet (behauptet «noch kein Destillat und
keine Spec», Station im Dispatch fälschlich «MacBook Pro» statt des per `scutil
--get ComputerName` bestätigten «Macmini») — Auftrag am realen Stand aus `KORPUS-QUEUE.md`
und dieser Datei ausgerichtet. `ps aux` zeigte nur den eigenen `claude`-Prozess, keine
Doppel-Instanz.

Vier der fünf im Vorlauf namentlich offenen P2-Positionen in Sektion `01_Tragwerk`
bearbeitet:

- Killer-Dissertation, Knotenpunkt-Einzelseiten S. 138-144 (7 PDF, Fig. 95/99-102)
  vollständig gelesen und als zwei neue Abschnitte («Knotenpunkt-Details des
  Hauptdachstuhls», «Baufinanzierung durch Platzverkauf») in den bestehenden Artikel
  `wiki/grubenmann-kirchen-holzdachstuhl-typologie.md` eingefügt — kein neuer Artikel,
  gleiche Quelle/gleiches Gebäude wie der P1-Artikel; dessen «Offen»-Punkt zu den
  Knotenpunkten damit aufgelöst. Massangaben: Hauptbinder-Stabpolygon 35.5 m Spannweite/
  6.50 m Höhe, Querbinder 21.5 m, Hängesäulen 20/20 cm, Streckbalken 30/30 cm mit
  verzahnter Holzlasche gestossen, Auflagerung über tiefer gesetztes Schwellenholz plus
  zwei Streben. Nebenbefund: Kirchenfinanzierung über die Versteigerung einzelner
  Sitzplätze («Kirchenörter»), Erlös 62'993 Gulden gegen Baukosten von 54'873 Gulden.
- Werkschau-Register der Abschlussvorlesung (`TWE IV_Vorlesung_20110513_Abschluss.pptx`,
  135 Folien, Bildunterschriften per Zip/XML-Extraktion ausgewertet, keine Bilder
  reproduziert) → neuer Artikel
  `wiki/werkregister-tragwerksentwurf-schwartz-architekten-1992-2011.md`: 15 Bauten/
  Wettbewerbe 1992-2011 mit Architekt, Ingenieur und Jahr; auffällige wiederkehrende Achse
  Kerez/Schwartz, verlinkt zu den bestehenden Leutschenbach-Kostenartikeln.
- `Counterpoise.doc` (vollständig) → neuer Artikel
  `wiki/counterpoise-tischtragwerk-erlaeuterungstext-massstabstransfer.md`: Erläuterungstext-
  Muster «Tragwerk als Ausdrucksmittel» mit explizitem Massstabstransfer Hochbau zu
  Möbeldesign, als Gliederungsvorlage für JANS-Erläuterungsberichte.
- `Bridging the Gap.pdf` + `Aufgabe2.docx` (beide vollständig) → neuer Artikel
  `wiki/aufgabenstellung-randbedingungen-muster-bridging-the-gap.md`: Sechsteilige
  Aufgabenstellungs-Gliederung (Rahmendaten, disziplinäre Einordnung, Situationsanalyse-
  Pflicht, Entwurfsspielraum plus optionale Methode, konkrete Nachweispflicht, harte
  Randbedingungen als eigener disjunkter Block).

Cross-KB- und Cross-Artikel-Duplikatprüfung (Grep auf «Counterpoise», «Bridging the Gap»,
«Kongresshaus Davos», «Leutschenbach», «MFH Forsterstrasse», «Ponte Polmengo» über alle
KBs) ergab keine Duplikate; die Leutschenbach-Nennung im neuen Werkregister verlinkt auf die
bestehenden Kostenartikel statt sie zu wiederholen. `git diff --numstat` auf die
Inventardatei: 32/0 (reiner Append, wie gefordert). Kein neuer Datenschutz- oder
Sperrlisten-Fund; Sperrvermerk Seite 4 des Readers `111002_Reader_alle_Seiten.pdf`
weiterhin nicht angetastet (Reader in diesem Lauf nicht angefasst).

25 P2-Positionen dieser Sektion bleiben offen: die drei Kraftfluss-Darstellungsvarianten
desselben Brückenlängsschnitts (reine Bilddiagramme ohne Text — methodisch bereits in der
Inventardatei beschrieben, ein eigener Artikel wäre dünn), die restlichen Planserien/
PLN-Dateien (P3, nicht P2) sowie vier Bildscans ohne Textlayer (ArchPlus, Archithese, Menn,
Starke Strukturen — OCR nötig, `connectors/WEGE.md` prüfen). Nächster Lauf: entweder diese
Restfunde klären oder gemäss Queue-Regel «nächstgrösste Sektion nach Ertrag» zu
`02_Architektur_Vermitteln` oder `01_Landschaftsarchitektur` (je rund 12 P2-Positionen)
wechseln.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Tragwerk`, erster P2-Lauf (Lane FACHWISSEN, 47. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet (behauptet «noch kein Destillat und keine Spec», real: beide
Korpus-Specs stehen seit 29.08.2026, P1 in beiden Korpora vollständig, mehrere P2-Läufe
abgeschlossen) — am realen `KORPUS-QUEUE.md`/`CHANGELOG.md`-Stand weitergearbeitet statt am
Dispatch-Text. Vor Arbeitsbeginn `ps aux` geprüft: zwei `claude-run.sh`-Wrapper-Prozesse für
dieselbe Lane (PID 1452/1459), per Elternschaftskette (`1452 → 1459 → 1460`, dieser Lauf) als
verschachtelte Wrapper derselben Instanz identifiziert — keine echte Doppel-Instanz, anders
als ein früherer, nicht bestätigter Verdacht (PID 66424/66411, Elfter Lauf Korpus 3).

Sektion `01_Tragwerk` (Korpus `archiv-fachwissen`, nächstgrösste Sektion mit offenem P2 gemäss
Queue-Empfehlung des Vorlaufs) bearbeitet: zwei P2-Quellen vollständig gelesen, zwei neue
Wiki-Artikel:

- `wiki/formfindung-experimenteller-tragwerksentwurf-frei-otto-stuttgart21.md` — Methode des
  experimentellen Tragwerksentwurfs nach Frei Otto (Selbstbildungsprozess, vier
  Experiment-Schwerpunkte: Formerfassung, Kraftermittlung, Form-Kraft-Masse-Zusammenhang,
  Entwurfsmodelle), Fallbeispiel Stuttgarter Bahnhof/Stuttgart 21 (Seifenhaut-
  Minimalflächen, Umkehr Hängemodell zu Druckschale, Formfindungsprogramm «Tensyl»).
  Quelle: eigenes ETH-Vorlesungsskript Prof. Schwartz (2011), Status `emerging` mangels
  unabhängiger Zweitbelegung der darin zitierten Frei-Otto-/Arch+-Sekundärquellen.
- `wiki/literaturregister-holzbau-1876-1993.md` — rund 100 Titel Holzbau-Fachliteratur
  1876-1995 nach Epochen geordnet (Grundlagenwerke, EMPA-Prüfberichte, Ingenieurholzbau/
  Bemessung, Schweizer Holzbrücken, Normen-/Regelwerk-Einführung, LIGNUM-Fachserien), mit
  Anschluss an den bereits bestehenden Artikel
  `wiki/grubenmann-kirchen-holzdachstuhl-typologie.md` (Titel Dubas/Gehri 1983).

Fortschritt in `raw/inventar/archiv-fachwissen__01_Tragwerk.md` als zweiter Abschnitt
`## Destillat-Fortschritt` angehängt (`git diff --numstat` 22/0 geprüft, reiner Append) —
vor Arbeitsbeginn beide vorhandenen Fortschritts-Abschnitte gelesen (nicht nur `tail`), Lehre
aus dem Vierundzwanzigsten Destillat-Lauf befolgt. Kein neuer Datenschutz- oder
Sperrlisten-Fund; Sperrvermerk Seite 4 des Readers `111002_Reader_alle_Seiten.pdf`
weiterhin nicht angetastet. `wiki/INDEX.md` (Tabellenzeile Sektion 16 und Artikelbestand-Log)
nachgeführt.

**29 P2-Positionen dieser Sektion bleiben offen**, darunter vorrangig: die restlichen
Knotenpunkt-Einzelseiten der Killer-Dissertation (S. 138-144, sieben PDF, Verbindung
Hängesäule-Untergurt-Längsbinder, Streckbalken-Auflager), das Werkschau-Register der
Abschlussvorlesung (135 Folien, rund 20 Bauten mit Architekt/Ingenieur-Nennung), die drei
Kraftfluss-Darstellungsvarianten desselben Brückenlängsschnitts, das Randbedingungs-Muster
der Seminarwochen-Aufgabenstellung «Bridging the Gap» und der Counterpoise-Erläuterungstext.
`02_Architektur_Vermitteln` und `01_Landschaftsarchitektur` (je rund 12 P2-Positionen in der
Ertrag-Tabelle, aber noch unbearbeitet) bleiben Alternativen für den nächsten Lauf, falls
dieser nicht in `01_Tragwerk` weiterfährt. Korpus `buero-referenzen` unverändert: P2 seit dem
Elften Lauf weiterhin offen in `10_Modellbauen` (86 Positionen) und den übrigen 22 Sektionen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II`, vierter P2-Lauf (Lane FACHWISSEN, 46. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet, am realen `KORPUS-QUEUE.md`-Stand weitergearbeitet.
Eigener Prozessfehler in diesem Lauf: vor Arbeitsbeginn nur `tail` der Inventardatei
`archiv-fachwissen__03_Bauprozesse_I_II.md` geprüft, nicht deren vollständigen
`## Destillat-Fortschritt`-Verlauf — dadurch zwei Positionen begonnen, die im ersten P2-Lauf
dieser Sektion (30.08.2026) bereits bearbeitet waren. Noch im selben Lauf korrigiert:

- `06_Checklisten/*.doc` (Zeile 108): bereits destilliert
  (`[[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]]`). Eigener
  Duplikat-Artikel-Entwurf gelöscht, bevor er gesichert wurde.
- `11_Kostenkennzahlen/schaetzungsanleitung_kap5.pdf` (Zeile 95): war als «kein Mehrwert»
  eingestuft, die Kapitalisierungssatz-Zuschlagssystematik daraus ist zu Recht bereits in
  `wissen/immobilienbewertung/wiki/ertragswert-dcf.md` destilliert (Cross-KB, korrekt). Die
  bisher übersehene **Lageklassenschlüssel-Methode** (Tab. 6-8, Landwertanteil am Neuwert
  über gewichtete Lagekriterien) ist eigenständig und dort nicht enthalten → neuer Artikel
  [[schaetzungsanleitung-lageklassenschluessel-landwertanteil]], `status: speculative`.
- `05_Vertraege/2_2002_KBBOB Hilfe Arch_verträge.pdf` (Zeile 104): war als reiner
  Cross-KB-Kandidat eingestuft (`wiki/QUESTIONS.md` #67, «Honorarmethodik ist kein
  Ziel-Artikeltyp dieser KB») — diese Einschätzung war zu eng, die Schwester-Sektion führt
  bereits zwei Honorarmechanik-Artikel aus Korpus 3. Gleitpreisklausel-Formel
  (t1 = (0,2+0,8×J1/J0)−1, Fixanteil/Lohnanteil-Split) und Honorargrundprozentsatz-Kurve
  (subventionierte Bauten, SIA 102/103 vs. 108) destilliert → neuer Artikel
  [[kbob-2002-gleitpreisklausel-teuerungsabrechnung-honorargrundprozentsatz]],
  `status: emerging`. Die Zeittarif-Kategorien-Mechanik desselben Dokuments bewusst NICHT
  erneut destilliert (Duplikat zu [[zeittarif-mechanik-tarifblatt-stgallen-2009]]).
  `wiki/QUESTIONS.md` #67 mit Auflösungsnotiz ergänzt.

Fortschritt in `raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, vierter Lauf dieser Sektion)», reiner
Append (`git diff --numstat` zeigt `-0`). **Lehre für Folgeläufe, im Append festgehalten:**
vor Bearbeitung einer Sektion IMMER alle bisherigen `## Destillat-Fortschritt`-Abschnitte der
Inventardatei lesen, nicht nur den letzten per `tail`. Verbleibende offene P2-Positionen
dieser Sektion unverändert (Menz-Bauprozesse-Urheberrechtsfrage, veralteter
AVA-Software-Vergleich, Ausschreibungsplan-Anonymisierungsprüfung) — kein schnell
erschliessbarer Rest mehr, nächster Lauf sollte zur nächstgrössten Sektion mit offenem P2
übergehen (`01_Tragwerk`, `02_Architektur_Vermitteln` oder `01_Landschaftsarchitektur`, je
12 P2-Zeilen, bisher unbearbeitet). `wiki/INDEX.md` und `skills/wissens-destillat/
KORPUS-QUEUE.md` nachgeführt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, zweiundzwanzigster P2-Lauf, `120518_Abschlussvorlesung` (Lane FACHWISSEN, 45. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station fälschlich
«MacBook Pro», real Macmini laut `scutil`) — am realen Stand (`KORPUS-QUEUE.md`) weitergearbeitet,
nicht am Dispatch-Text. Vor Arbeitsbeginn geprüft: `ps aux` zeigte nur einen `claude -p`-Prozess
für Lane FACHWISSEN, keine Doppel-Instanz. Unkommittierte `120511_Vision_Visualitaet_II_Nadas`-
Buchführung des Vorlaufs per `nas-commit-now.sh` zu sichern versucht: erneuter NAS-Merge-Konflikt
in sechs fremden KBs (normen, architekten-synobsis, baurecht, grobkosten plus die eigene KB),
lokaler Working Tree ohne `MERGE_HEAD` und ohne Konfliktmarker, dem 15-Min-Cron überlassen.

`120518_Abschlussvorlesung` (Prüfungsrückblick-/Zusammenfassungsvorlesung, 18.05.2012)
bearbeitet: einzige Quelle die Live-Mitschrift, kein Syllabus im Ordner, Qualität die
schwächste der Sektion (durchgehend entstellte Eigennamen). Der Tonmitschnitt liegt nur als
GarageBand-Projektpaket vor und ist mit den Stationswerkzeugen nicht als Text extrahierbar
(neue Formatlücke `wiki/QUESTIONS.md` #70). Die Vorlesung fasst inhaltlich fast ausschliesslich
bereits destillierten Stoff zusammen (Otto Wagner, Townscape, Fuller, Lefebvre, Bachelard,
Olmsted, Loos) und enthält Prüfungslogistik (Fragenformat, Dauer) ohne Büro-Fachwert — bewusst
nicht destilliert. Zwei eigenständige Funde ergänzen bestehende Artikel (Cross-Duplikat-Prüfung
ergab keinen neuen Artikel nötig):

- Böhmes «formloser Raum» am Beispiel Blur Building (Diller & Scofidio, Expo.02 Yverdon 2002,
  Bezug zu Brunelleschis Spiegelexperiment) ergänzt in
  `wiki/zumthor-authentizitaet-atmosphaere-raumkonzeption-vergleich-loos-wright.md`.
- Die Übungsfrage Stalinallee-vs-Friedhof-Modena (sozialistischer Realismus, Typus/Lesbarkeit,
  «Stadt als Ort des Festes» vs. «Ort der Trauer») ergänzt in
  `wiki/rossi-theorie-der-permanenz-primaere-sekundaere-stadtelemente.md`.

Fortschritt in `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `-0`). **Damit sind
sämtliche 22 in der aktuellen NAS-Ordnerliste vorhandenen nummerierten Vorlesungsordner
gesichtet und destilliert** — die historisch verwendete Zählung «23 Vorlesungsordner» ist
gegen die reale Ordnerliste nicht restlos nachvollziehbar, neu als `wiki/QUESTIONS.md` #71
vermerkt statt eigenmächtig korrigiert. Offen bleibt in dieser Sektion nur noch die
Vorlesungsfolien-Sammel-PDF sowie die generell nicht ausgewerteten Foliensätze/Tonmitschnitte
der Einzelvorlesungen. `wiki/INDEX.md` und `skills/wissens-destillat/KORPUS-QUEUE.md`
nachgeführt. Nächster Lauf: Vorlesungsfolien-Sammel-PDF prüfen, oder gemäss Queue-Regel zur
nächstgrössten Sektion mit offenem P2 in `archiv-fachwissen` übergehen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, einundzwanzigster P2-Lauf, `120511_Vision_Visualitaet_II_Nadas` (Lane FACHWISSEN, 44. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station fälschlich
«MacBook Pro», real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux` zeigte einen
`claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf) und einen unabhängigen für Lane SYNOBSIS —
keine Doppel-Instanz. Unkommittierte `120504_Vision_Visualitaet_I_Gropius`-Buchführung des
Vorlaufs zuerst per `nas-commit-now.sh` gesichert (erneuter NAS-Merge-Konflikt in sechs fremden
KBs — normen, architekten-synobsis, baurecht, grobkosten plus die eigene KB —, lokaler Working
Tree ohne `MERGE_HEAD` und ohne Konfliktmarker, dem 15-Min-Cron überlassen).

`120511_Vision_Visualitaet_II_Nadas` (9. Vorlesung Architekturtheorie II, 11.05.2012)
bearbeitet: **keine Live-Mitschrift vorhanden** — der Ordner `03_Vorlesungsmitschrift` ist leer,
einzige Textquelle ist der zweiseitige Syllabus (`01_Sylabus/Seiten aus
SYL-Ath2-2012-1bis9.pdf`, `pypdf`). Ein Artikel destilliert:
`wiki/vision-visualitaet-ii-transparenz-townscape-otto-wagner-diagramm-nadas.md` (`status:
speculative`): Transparenz/Opazität-Kritik des Okularzentrismus nach Rowe/Slutzky (dasselbe Werk
wie in der Vorvorlesung zur Axonometrie-Frage), Moholy-Nagy, Kepes, Philip Johnsons Glass House;
Otto Wagners Phantasie-Training und die vier Grossstadt-Kriterien Demokratie/Ökonomie/
Utilität/Hygiene mit Werkliste (Entwurf unbegrenzte Grossstadt 1911, Friedenskirche 1917,
Mietshaus Neustiftgasse 40); die britische Townscape-Bewegung (Pevsner, Cullen, de Wolfe,
*Architectural Review*) als Traditionslinie «Sitte bis Koolhaas»; Black Mountain College und
Buckminster Fullers Dymaxion-Projekte/Fuller Projection.

Gegen bestehende Wiki-Artikel geprüft (`grep` auf Wagner/Cullen/Pevsner/Townscape/Transparenz/
MVRDV/Fuller): der Syllabus-Punkt «Diagramm als Form-Generator» (MVRDV, *Metacity Datatown*,
1999) ist eine reine Literaturwiederholung zu
`wiki/technik-maschine-archigram-diagramm-vs-plan-architekturtheorie.md`, wo dieselbe Quelle
bereits ausführlich im Rahmen der Diagramm-vs-Plan-Debatte figuriert — nicht erneut destilliert.
Kein weiterer inhaltlicher Überschneidungsfund. Vorlesungsfolien (rund 100 Einzelseiten) und
Tonmitschnitt nicht ausgewertet. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `-0`). Offen: 3 der 23 Vorlesungsordner. `wiki/INDEX.md`
und `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt. Nächster Lauf:
`120518_Abschlussvorlesung`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, zwanzigster P2-Lauf, `120504_Vision_Visualitaet_I_Gropius` (Lane FACHWISSEN, 43. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station fälschlich
«MacBook Pro», real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux` zeigte genau
einen `claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf selbst), keine Doppel-Instanz.
Unkommittierte `120427_Bauen_Abraham`-Buchführung des Vorlaufs zuerst per `nas-commit-now.sh`
gesichert (erneuter NAS-Merge-Konflikt in sechs fremden KBs — normen, architekten-synobsis,
baurecht, grobkosten plus die eigene KB —, lokaler Working Tree ohne `MERGE_HEAD` und ohne
Konfliktmarker, dem 15-Min-Cron überlassen).

`120504_Vision_Visualitaet_I_Gropius` (8. Vorlesung Architekturtheorie II, 04.05.2012)
bearbeitet: Syllabus (`17_SYL-Ath2-2012-8Visualitaet.pdf`, `pypdf`) sowie die bereits als PDF
vorliegende Live-Mitschrift (`01_Vorlesungsmittschrift/PDF/120504_Visualitaet.pdf`, 31 Seiten,
sehr unregelmässige Transkriptionsqualität) gelesen. Die ersten rund zehn Seiten der Mitschrift
wiederholen inhaltlich die Vorvorlesung zu anonymer/vernakulärer Architektur (Rudofsky,
Loos-Villen, Lévi-Strauss, Shelter/Favelas) und wurden bewusst nicht erneut ausgewertet —
Duplikat-Prüfung gegen `vernakulaere-architektur-anonymes-bauen-strukturalismus-pattern-language.md`
bestätigt. Ein Artikel destilliert:
`wiki/perspektive-axonometrie-visualitaet-symbolische-form-panofsky-eisenman.md` (`status:
speculative`): mittelalterliche hierarchische Bildlogik vs. Zentralperspektive (Bedeutungsgrösse
statt geometrische Distanz, Fra Angelico ohne Fluchtpunkt), Brunelleschis Spiegelexperiment am
Baptisterium von Florenz und Panofskys These der «Perspektive als symbolische Form» (1927),
Kritik der Perspektive als körpergebundene, subjektive Darstellung, Wiederentdeckung der
Axonometrie in der Moderne um 1920 (Bauhaus, De-Stijl), Peter Eisenmans «Houses of Cards»
axonometrisch als Anti-Humanismus-Statement, Kartografie als Ideologie (Velokarte vs.
Einkaufskarte vs. Pilotenkarte), Otto Neuraths Isotype/Wiener Methode samt kritischer Volte
(«die Verständlichkeit ist eine Illusion»), Anamorphosen/Panorama/Panoptikon als
Projektions-Grenzfälle.

Gegen bestehende Wiki-Artikel geprüft: `eisenman-house-vi-autonomie-architektur-new-york-five-dom-ino.md`
enthält bereits einen Kurzsatz zur Axonometrie-vs-Perspektive-Kritik — der neue Artikel liefert
die ausführliche Herleitung dazu und verlinkt zurück, kein Duplikat, sondern Ergänzung. Kein
weiterer inhaltlicher Überschneidungsfund. Vorlesungsfolien (rund 100 Einzelseiten plus
Sammel-PDF) und Tonmitschnitt (Logic-Projektdatei) nicht ausgewertet. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `-0`). Offen: 4 der 23 Vorlesungsordner (rund 130 der
190 Dateien). `wiki/INDEX.md` und `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt.
Nächster Lauf: nächste noch nicht gesichtete Vorlesung nach Ordnernummer.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, neunzehnter P2-Lauf, `120427_Bauen_Abraham` (Lane FACHWISSEN, 42. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station fälschlich
«MacBook Pro», real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux` zeigte genau
einen `claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf selbst) und einen unabhängigen für
Lane SYNOBSIS — keine Doppel-Instanz. `git status` zeigte einen sauberen Working Tree, nichts
aus einem Vorlauf zu sichern. `KORPUS-QUEUE.md`/`CHANGELOG.md` gegengeprüft statt dem
veralteten Dispatch-Text zu folgen (beide Korpus-Specs bestehen bereits, P1 ist für beide
Korpora vollständig, P2 läuft sektionsweise durch `02_Architekturtheorie`).

`120427_Bauen_Abraham` (7. Vorlesung Architekturtheorie II, 27.04.2012) bearbeitet: Syllabus
(`16_SYL-Ath2-2012-7Bauen.pdf`, `pypdf`), die bereits als PDF vorliegende Live-Mitschrift
(`02_Mitschrift/00_PDF/120427_Baune_Venakulaere_Architektur.pdf`, 24 Seiten, stellenweise
fehlerhafte Transkription) sowie eine separate, deutlich klarere Studierenden-Zusammenfassung
(`00_PDF/120816_Zusammenfassung_Bauen.pdf`, 4 Seiten) gelesen. Die Zusammenfassung beantwortet
nur die ersten drei der fünf Syllabus-Fragen systematisch; die restlichen zwei bleiben in der
Quelle selbst offen. Fehlplatzierte Dateien im `10_Ungueltig`-Unterordner (`120401_Technik.pdf`,
`120420_Kunst.pdf`) als bereits verarbeitete Vorvorlesungen erkannt, nicht erneut ausgewertet.
Gegen bestehende Wiki-Artikel geprüft (Rudofsky, vernakuläre Architektur, Pattern Language,
Kroll, Hertzberger, Strukturalismus kamen bisher nur als Literaturhinweis in
`literaturlandkarte-architekturtheorie-eth-syllabi.md` vor, kein inhaltlicher Artikel) — kein
Duplikat. Ein Artikel destilliert:
`wiki/vernakulaere-architektur-anonymes-bauen-strukturalismus-pattern-language.md` (`status:
speculative`, Begriffsklärung Volksarchitektur/anonymes Bauen/vernakuläre Architektur,
gegensätzliche Vorkriegs-/Nachkriegsmotive für das Interesse an Folklore, Strukturalismus und
Partizipation bei Kroll/Hertzberger/van Eyck mit der primär-/sekundär-Struktur-Unterscheidung,
Rudofsky und anonyme Architektur bei Eldem/Konstantinidis/Gellner/Pikionis, Christopher
Alexander vom Baumdiagramm zur Pattern Language inkl. dessen Selbstkritik, Kernzitate aus
Abrahams «Elementare Architektur»). Vorlesungsfolien (rund 190 Einzelseiten, reines
Bildmaterial), Tonaufnahme (Logic-Projektdatei) und die abweichende Syllabus-Fassung 2013 nicht
ausgewertet. Damit ist `120427_Bauen_Abraham` für die gesichteten Textquellen abgeschlossen.
Offen: 5 der 23 Vorlesungsordner (rund 140 der 190 Dateien). Nächster Lauf: nächste noch nicht
gesichtete Vorlesung nach Ordnernummer (`120504_Vision_Visualitaet_I_Gropius`).
`KORPUS-QUEUE.md`/`INDEX.md` nachgeführt; `nas-commit-now.sh` sichert diesen Lauf im Anschluss.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, achtzehnter P2-Lauf, `120420_Kunst_Loos` (Lane FACHWISSEN)

Vor Arbeitsbeginn `scutil --get ComputerName` (Macmini, Dispatch-Text nennt weiterhin fälschlich
«MacBook Pro» — strukturelles, seit 29.08.2026 bekanntes Dispatch-Vorlagen-Problem, siehe Memory
`project_fachwissen-dispatch-loop`), `ps aux` (ein `claude -p`-Prozess fuer FACHWISSEN, ein
unabhängiger für Lane SYNOBSIS, keine Doppel-Instanz) und `KORPUS-QUEUE.md`/`CHANGELOG.md`
gegengeprüft statt dem veralteten Dispatch-Text zu folgen (beide Korpus-Specs bestehen bereits,
P1 ist für beide Korpora vollständig, P2 läuft sektionsweise durch `02_Architekturtheorie`).

`120420_Kunst_Loos` (6. Vorlesung Architekturtheorie II, 20.04.2012) bearbeitet: Syllabus
(`pypdf`) und PDF-Fassung der Live-Mitschrift (`01_Vorlesungsmitschriften/PDF/120420_Kunst.pdf`,
22 Seiten, schwache Transkriptionsqualität) gelesen. Im selben PDF-Ordner lag eine fehlplatzierte
Datei `120401_Technik.pdf` — Mitschrift der Vorvorlesung, bereits in `120401_Technik_Archigram`
verarbeitet, hier nicht erneut ausgewertet. Trotz Ordnername ist Adolf Loos nur Eröffnungsimpuls,
nicht Hauptthema der Vorlesung; gegen die drei bestehenden Loos-Artikel geprüft (Ornament,
Werkregister, Raumplan) — kein Duplikat, eigenständiges Thema Kunst-Architektur-Verhältnis. Ein
Artikel destilliert:
`wiki/kunst-architektur-autonomie-gesamtkunstwerk-anarchitektur-bilbao-effekt.md` (`status:
speculative`, Loos' Trennungsthese, Gesamtkunstwerk-Idee Wagner/Schwitters/Gropius-Taut-Behne,
Fallbeispiel Residence Gehry Santa Monica, Anarchitekturen Matta-Clark/SITE-Gruppe/Cabrita Reis,
Criticality-vs-Projectivity mit Dan Graham/Herzog & de Meuron/Bilbao-Effekt). `.indd`-Fassung
(bekannte Formatlücke `QUESTIONS.md` #69), Folienset (92 Einzelseiten) und Tonmitschnitt nicht
ausgewertet. Damit ist `120420_Kunst_Loos` für die gesichteten Textquellen abgeschlossen. Offen:
6 der 23 Vorlesungsordner (rund 145 der 190 Dateien). Nächster Lauf: nächste noch nicht
gesichtete Vorlesung nach Ordnernummer (`120427_Bauen_Abraham`). `KORPUS-QUEUE.md`/`INDEX.md`
nachgeführt; `nas-commit-now.sh` sichert diesen Lauf im Anschluss.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, siebzehnter P2-Lauf, `120401_Technik_Archigram` (Lane FACHWISSEN, 41. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station fälschlich
«MacBook Pro», real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux` zeigte genau
einen `claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf selbst) und einen unabhängigen für
Lane SYNOBSIS — keine Doppel-Instanz. `git status` zeigte unkommittierte Natur/Schwarz-
Buchführung des Vorlaufs (ein Wiki-Artikel plus Queue/Changelog/Index/Inventar-Nachträge) —
zuerst per `nas-commit-now.sh` gesichert (erneuter NAS-Merge-Konflikt, diesmal auch in der
eigenen `skills/wissens-destillat/KORPUS-QUEUE.md`; kein `MERGE_HEAD`, keine Konfliktmarker im
lokalen Working Tree; dem 15-Min-Cron überlassen).

Danach `120401_Technik_Archigram` (5. Vorlesung Architekturtheorie II, 30.03.2012) bearbeitet:
Syllabus (`14_SYL-Ath2-2012-5Technik.pdf`, `pypdf`) und — anders als bei den letzten Vorlesungen
dieser Sektion — ausnahmsweise eine bereits vorliegende PDF-Fassung der Live-Mitschrift
(`01_Vorlesungsmitschrift/PDF/120401_Technik.pdf`, 17 Seiten, ungewöhnlich fehlerhafte
Transkription) gelesen. Ein Artikel destilliert:
`wiki/technik-maschine-archigram-diagramm-vs-plan-architekturtheorie.md` (`status: speculative`,
Maschinenästhetik als Argumentationsfigur von Ruskin/Firth-of-Forth-Brücke über russischen
Konstruktivismus/Leonidov-Arbeiterklub, Fordismus/Taylorismus mit Frankfurter Küche, Archigram/
Superstudio/Shin Takamatsu, bis zur Diagramm-vs-Plan-Debatte Neufert/Eisenman/MVRDV — ergänzt
den bestehenden Eisenman-Artikel um die dort nur beiläufig erwähnte Diagramm-Frage, kein
Duplikat). Gegen bestehende Wiki-Artikel geprüft (Eisenman, Koolhaas, Neufert), kein Duplikat,
verlinkt. `.indd`-Fassung der Mitschrift und Tonmitschnitt (Logic-Projektdatei) nicht
ausgewertet, ebenso die reinen Foliensammlungen (Bildmaterial ohne Fliesstext) — Details siehe
Artikel «Offene Punkte». Damit ist `120401_Technik_Archigram` für die gesichteten Textquellen
abgeschlossen. Offen: 7 der 23 Vorlesungsordner (rund 150 der 190 Dateien). Nächster Lauf:
nächste noch nicht gesichtete Vorlesung nach Ordnernummer (`120420_Kunst_Loos`).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, sechzehnter P2-Lauf, `120316_Natur_Schwarz` (Lane FACHWISSEN, 40. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»), Station
fälschlich «MacBook Pro» (real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux`
zeigte genau einen `claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf selbst) und einen
unabhängigen für Lane SYNOBSIS (`architekten-synobsis`) — keine Doppel-Instanz. `git status`
zeigte unkommittierte Bachelard-Buchführung des Vorlaufs (ein Wiki-Artikel plus
Queue/Changelog/Index-Nachträge) — zuerst per `nas-commit-now.sh` gesichert (erneuter
NAS-Merge-Konflikt in sechs fremden KBs, kein `MERGE_HEAD`, keine Konfliktmarker im lokalen
Working Tree; dem 15-Min-Cron überlassen).

Danach `120316_Natur_Schwarz` (4. Vorlesung Architekturtheorie II, 16.03.2012) bearbeitet:
Syllabus (`13_SYL-Ath2-2012-4Natur.pdf`, `pypdf`) und die als «Zusammenfassung» abgelegte Datei
(`120316_Natur.docx`, `textutil`) gelesen — Letztere erwies sich als reiner Duplikat-
Fragenkatalog des Syllabus, kein Zusatzinhalt. Die Live-Mitschrift liegt als InDesign-Datei
(`.indd`) vor und war mit den auf dieser Station verfügbaren Werkzeugen nicht extrahierbar
(neuer Formatfall, ungelesen geblieben). Die Vorlesungsfolien-PDF 2012 ist echt
passwortgeschützt (leere Authentifizierung schlägt bei `pypdf` und `PyMuPDF` fehl); ersatzweise
der thematisch deckungsgleiche Bildunterschriften-Auszug der Foliensammlung 2011 verwendet
(`Seiten aus Seiten aus Praes-Ath2-2011-4bis6.pdf`, unverschlüsselt).

Ein Artikel destilliert: `wiki/natur-erhabene-malerische-olmsted-organische-architektur.md`
(`status: speculative`) — Transformation der Natur als kulturelles Konstrukt (amerikanische
Westexpansion), die ästhetische Trias Erhabenes/Schönes/Malerisches nach Kant/Burke,
Frederick Law Olmsteds Parksysteme New York/Boston als städtebauliches Naturkonstrukt,
organische Architektur (Viollet-le-Duc, Gaudí, Rudolf Schwarz, Ábalos & Herreros) und der
Land-Art-Bezug (Smithson, Noguchi, High Line/Diller+Scofidio). Gegen bestehende Wiki-Artikel
geprüft, kein Duplikat. `wiki/INDEX.md` (Zeile `02_Architekturtheorie`) nachgeführt: P2-Rest
162 → 158 der 190 Vorlesungsmitschriften. `KORPUS-QUEUE.md` nachgeführt. Nächster Lauf nach
Ordnernummer: `120401_Technik_Archigram`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, fünfzehnter P2-Lauf, `120309_Das_Erste_Haus_Bachelard` (Lane FACHWISSEN, 39. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»), Station
fälschlich «MacBook Pro» (real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux`
zeigte genau einen `claude -p`-Prozess für Lane FACHWISSEN (dieser Lauf selbst) und einen
unabhängigen für Lane SYNOBSIS (`architekten-synobsis`) — keine Doppel-Instanz. `git status`
zeigte unkommittierte Schmarsow/Foucault-Buchführung des Vorlaufs — zuerst per
`nas-commit-now.sh` gesichert (erneuter NAS-Merge-Konflikt in sechs fremden KBs, kein
`MERGE_HEAD`, keine Konfliktmarker im lokalen Working Tree; der 15-Min-Cron hat den Commit
zwischenzeitlich selbständig nachgeholt, `9d3eece61`).

Danach `120309_Das_Erste_Haus_Bachelard` (3. Vorlesung Architekturtheorie II, 09.03.2012)
bearbeitet: Zusammenfassung (`120816_Bachelard_Das_Erste_Haus_Zusammenfassung.docx`), Syllabus
(`12_SYL-Ath2-2012-3Urhaus.pdf`) und rohe Live-Mitschrift (`100309_Das_Erste_Haus.docx`)
gelesen. Ein Artikel destilliert:

- `wiki/bachelard-poetik-des-raumes-phaenomenologie-des-hauses.md` (`status: speculative`) —
  Bachelards phänomenologischer Hauszugang («Unsere Seele ist eine Wohnung») gegen die
  rationale Architekturanalyse, mit den drei Mitschrift-Themenlinien Existenzminimum
  (Diogenes/CIAM/Kiesler/Corbusier), unheimliches Haus (Vidler/Bergman/Gregor Schneider/Olgiati
  «Das gelbe Haus») und mobiles Haus (Zittel/Wodiczko/Do Ho Suh).

Die im Syllabus enthaltene Urhütten-Debatte (Vitruv/Laugier/Semper) bewusst NICHT erneut
destilliert — bereits vollständig in
`wiki/materialwahrheit-stoffwechseltheorie-semper-urtechniken.md` abgedeckt, im neuen Artikel
nur als Abgrenzung verlinkt, kein Duplikat. Die Prüfungsfrage «Bachelard vs. Vidler» bleibt im
Bestand unbeantwortet (offener Punkt im Artikel).

`wiki/INDEX.md` Zeile 04 und `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md`
nachgeführt. Offen: 9 der 23 Vorlesungsordner (rund 162 der 190 Dateien). Nächster Lauf:
`120316_Natur_Schwarz`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, vierzehnter P2-Lauf, `120302_Raum_Schmarsow` (Lane FACHWISSEN, 27. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»), Station
fälschlich «MacBook Pro» (real Macmini laut `scutil`). Vor Arbeitsbeginn geprüft: `ps aux`
zeigte eine zweite `claude -p`-Instanz (PID 85183), aber deren volle Kommandozeile bestätigte
Lane SYNOBSIS (eigene KB `architekten-synobsis`) — keine FACHWISSEN-Dopplung. `git status`
zeigte unkommittierte, laut `KORPUS-QUEUE.md`/CHANGELOG bereits als 26. Lauf dokumentierte
Lefebvre-Buchführung aus dem unmittelbar vorangegangenen Lauf derselben Prozessinstanz —
zuerst per `nas-commit-now.sh` gesichert (bekannter NAS-Merge-Konflikt in sechs fremden KBs,
kein `MERGE_HEAD`, keine Konfliktmarker im lokalen Working Tree, dem 15-Min-Cron überlassen).

Danach `120302_Raum_Schmarsow` (Sektion `02_Architekturtheorie`, 2. Vorlesung
Architekturtheorie II, 02.03.2012) bearbeitet: Zusammenfassung
(`120730_Raum_Schmarsow_Zusammenfassung.docx`), Syllabus (`11_SYL-Ath2-2012-2Raum.pdf`) und
rohe Live-Mitschrift (`Realisierte Utopie.docx`) gelesen. Zwei Artikel destilliert:

- `wiki/schmarsow-raumtheorie-raumsystem-tiefenachse-gegen-semper-woelfflin.md`
  (`status: speculative`) — Kernthese «Wesen der Architektur ist Raumsystem, nicht Form»
  mit Originalzitaten, Tiefenachse-Erfahrung statt Bildebene, explizite Abgrenzung zu
  Wölfflin/Hildebrand/Semper, durchformulierter Fragen-Antwort-Katalog des Syllabus.
- `wiki/foucault-heterotopie-andersartige-orte-typologie.md` (`status: speculative`) —
  Definition, zwei Unterarten (Krisen-/Abweichungsheterotopien, Isolationsräume) und
  Beispielkatalog aus der Live-Mitschrift. Löst den in `wiki/genius-loci-ort-raum-nichtorte.md`
  offen vermerkten Foucault-Punkt für diese eine Quelle auf; dortiger Offene-Punkte-Abschnitt
  entsprechend nachgeführt (verlinkt statt weiterhin offen).

Gegen bestehende Wiki-Artikel geprüft: kein Duplikat, nur Nachbarschaft zu
`wiki/tektonik-bekleidungstheorie-boetticher-semper-loos-frampton.md` (Semper-Gegenposition)
und `wiki/lefebvre-raumtrias-produktion-des-sozialen-raums-budapest-platzvergleich.md`
(Károly-Kós-Platz/Foucault-Stichwort dort), beide verlinkt statt erneut destilliert.
`05_Sekundaerliteratur` (Wikipedia-Auszug Georges Perec) ohne Eigenwert nicht ausgewertet;
Folien-PDF (diesmal passwortfrei vorliegend) und Tonmitschnitt nicht ausgewertet (kein
erwarteter Mehrwert über die bereits erfasste Zusammenfassung hinaus).

`wiki/INDEX.md` und `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` nachgeführt.
Offen: 10 der 23 Vorlesungsordner (rund 165 der 190 Dateien) in dieser Sektion. Nächster
Lauf: `120309_Das_Erste_Haus_Bachelard`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, dreizehnter P2-Lauf, `120224_Raum_oeffnen_Lefebvre` (Lane FACHWISSEN, 26. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Text erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»), Station
fälschlich «MacBook Pro» (real Macmini laut `scutil`). Vor Arbeitsbeginn `ps aux` geprüft:
keine zweite FACHWISSEN-Instanz (nur unabhängige Lane SYNOBSIS parallel, PID 84369, anderer
KB), zwei `vollgas-schub.sh fachwissen`-Wrapper sichtbar (PID 55122/84253), aber nur ein
laufender `claude -p`-Prozess — kein bestätigter Doppel-Dispatch. `git status` zeigte
unkommittierte, inhaltlich fertige Buchführung aus dem unmittelbar vorangegangenen Lauf
(Shinohara-Artikel plus Registerpflege) — zuerst per `nas-commit-now.sh` gesichert (bekannter
NAS-Merge-Konflikt in fünf fremden KBs, Working Tree lokal sauber geblieben, dem 15-Min-Cron
überlassen).

Danach `120224_Raum_oeffnen_Lefebvre` (Sektion `02_Architekturtheorie`, 1. Vorlesung
Architekturtheorie II, 24.02.2012) bearbeitet: Zusammenfassung (`120730_Raum_oeffnen.docx`),
Syllabus (`10_SYL_Ath2_2012_1Einfg.pdf`) und rohe Live-Mitschrift
(`120223_Einfuerung_Architekturtheorie.docx`) gelesen. Ein Artikel destilliert:
`wiki/lefebvre-raumtrias-produktion-des-sozialen-raums-budapest-platzvergleich.md`
(`status: speculative`) — Lefebvres Raumtrias (wahrgenommener/konzipierter/gelebter Raum)
plus die im Syllabus angelegte Vier-Budapester-Plätze-Analysemethode (je ein Platz einer
raumtheoretischen Position zugeordnet: Oktogon/Sitte, Károly-Kós-Platz/Foucault,
Köztársaság-Platz/Moholy-Nagy-Molnár, Nyugati-Platz/Augé). Nur der erste Platz ist durch die
Live-Mitschrift inhaltlich belegt, die drei übrigen bleiben Syllabus-Stichwort ohne
Destillat. Gegen bestehende Wiki-Artikel geprüft: kein Duplikat, nur begriffliche
Nachbarschaft zum «Junk-Space»-Stichwort in
`wiki/koolhaas-bigness-zwoelf-thesen-generic-city-junkspace.md` (dort bereits eigenständig
destilliert, hier nur verlinkt). Folien-PDF (`Praes-Ath2-2012-1Einfg.pdf`) ist
passwortgeschützt und wurde nicht ausgewertet; Tonmitschnitt (`.m4a`) nicht ausgewertet.

`wiki/INDEX.md` und `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` nachgeführt.
Offen: 11 der 23 Vorlesungsordner (rund 168 der 190 Dateien) in dieser Sektion. Nächster
Lauf: nächste noch nicht gesichtete Vorlesung nach Ordnernummer.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, zwölfter P2-Lauf, `120215_Shinohara_Kazuo` (Lane FACHWISSEN, 25. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel» behauptet,
real zu diesem Zeitpunkt: beide Specs seit 29.08.2026 geschrieben, 170 Wiki-Artikel, 34
Läufe) und nannte die Station explizit als «MacBook Pro» — `scutil --get LocalHostName`
zeigt während dieses Laufs **Macmini**. Vor Arbeitsbeginn `ps aux` geprüft: neben diesem
Prozess lief nur eine unabhängige, wortverschiedene Lane SYNOBSIS (kein Kollisionsrisiko,
keine zweite FACHWISSEN-Instanz), Prozessabstammung (`ps -o pid,ppid`) zeigte den aktuellen
`claude -p`-Prozess als Kind von `vollgas-schub.sh fachwissen`, das bereits seit Stunden
läuft. Working Tree enthielt beim Start unkommittierte, inhaltlich fertige Buchführung des
unmittelbar vorangegangenen VL11-Resume-Laufs (KORPUS-QUEUE.md, CHANGELOG, Inventar, INDEX,
ein Wiki-Artikel) — erst per `nas-commit-now.sh` gesichert (Merge-Konflikt trat auf, `git
status`/`grep` direkt danach bestätigten sauberen lokalen Working Tree ohne `MERGE_HEAD`
oder Konfliktmarker, dem 15-Min-Cron überlassen; der Cron hat den Commit `bb1f38216`
inzwischen erfolgreich gesetzt). Erst danach neue Arbeit begonnen: nächster fälliger
Schritt laut Inventardatei war `120215_Shinohara_Kazuo`, die erste Vorlesung des
Frühjahrssemesters 2012 (danach nicht mehr `VL`-nummeriert).

Ordner enthält drei Fassungen desselben Frage-Antwort-Katalogs (eine vollständigste
`.docx`-Fassung plus zwei ältere PDF-Zwischenstände in einem `PDF`-Unterordner) — Stichprobe
auf versteckte Zusatzinhalte analog dem 16. Beispiel dieser Memory ergab: beide PDFs sind
reine, teils unvollständigere Vorstufen derselben Mitschrift, kein eigenständiger Fund.
Shinohara Kazuo war in dieser KB bisher nur als Stichwort erwähnt
(`wiki/architekturtheorie-grundbegriff-theorie-vs-geschichte-eth-vl1.md`), kein eigener
Artikel. Zwei Artikel destilliert:

- [[shinohara-symbolischer-raum-vier-schaffensphasen]] — `status: speculative`, vier
  emblematische Schaffensphasen (House in White 1966, Uncompleted House 1970, Wohnhaus
  Uehara 1976, Century Hall TIT 1987), Prinzip des symbolischen/dekontextualisierten Raums,
  Abgrenzung zu Sik/Kollhoff, Vergleich mit Loos/Wright/Zumthor aus derselben Mitschrift
- [[shinohara-rezeption-schweizer-architektur-oligiati-kerez-deplazes]] — `status:
  speculative`, Schweizer Rezeption laut Vorlesung (Oligiati: symbolischer Formalismus,
  Hörsaal Lanquart/Gelbes Haus Flims; Kerez: archaischer Minimalismus im Gegensatz zu HdM;
  Deplazes: Shinohara als einer der wichtigsten Architekten) — gegen den bestehenden
  `wiki/kerez-forsterstrasse-einkleidung-gegen-semper-stoffwechseltheorie.md` geprüft, kein
  Duplikat (unabhängige Referenzachse: dort Semper, hier Shinohara)

`01_Sylabus`/`03_Folie` existieren in diesem Ordner nicht. Damit ist
`120215_Shinohara_Kazuo` vollständig bearbeitet. Offen: 12 der 23 Vorlesungsordner (rund
173 der 190 Dateien). Nächster Lauf: `120224_Raum_oeffnen_Lefebvre`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, elfter P2-Lauf, VL11 Resume (Lane FACHWISSEN, 24. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel» behauptet, real
zu diesem Zeitpunkt: beide Specs seit 29.08.2026 geschrieben, 168 Wiki-Artikel, 33 Läufe) und
nannte die Station explizit als «MacBook Pro» — `scutil --get LocalHostName` zeigt während
dieses Laufs **Macmini**. Vor Arbeitsbeginn `ps aux` geprüft: nur ein `claude -p`-Prozess mit
diesem Auftragstext (keine Doppel-Instanz), `git status`/`git log` zeigten einen sauberen
Working Tree ohne unkommittierten Rest. Am realen `KORPUS-QUEUE.md`-Stand weitergearbeitet:
nächster fälliger Schritt war laut Vorlauf `111209_VL11_Resume` in Sektion
`02_Architekturtheorie`.

Einzige Quelle gelesen (`02_Mitschrift/111209_Resume_AT.docx`, kein `01_Sylabus`-Unterordner in
diesem Vorlesungsordner) — eine mündliche Rückschau vor der Prüfung, die VL2-VL10 stichwortartig
wiederholt, plus Prüfungsformat-Hinweise (Studienlogistik, nicht KB-relevant, bewusst nicht
destilliert). Schlechteste Quellenqualität der Sektion bisher (sehr viele Verschreibungen). Fast
der gesamte Inhalt bereits über die Einzelartikel der jeweiligen Vorlesungen abgedeckt (Loos,
Wright, Kahn, Rossi, Eisenman, Venturi, Koolhaas, Zumthor). Ein eigenständiger, vorher nicht
belegter Fall gefunden und destilliert:

- [[zumthor-mvrdv-pavillon-vergleich-expo-2000-hannover]] — `status: speculative`, mündlicher
  Vergleich Zumthor-Pavillon vs. MVRDV-Pavillon (Expo 2000 Hannover): Materialität als Stimmung
  (Zumthor) gegen Materialität als Collage (MVRDV), Erlebnisqualität mystisch gegen
  Sensationsarchitektur — dritter, eigenständiger Zumthor-Fall neben Haus Truog und Therme Vals

Ein zweites Fragment (Jencks «Language of Post-Modern Architecture», «evolution of tree»,
sozialer Eklektizismus) bewusst NICHT destilliert — im Transkript zu stark verstümmelt für eine
beleghaltige Aussage. Inventardatei
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` um einen Append-Eintrag ergänzt
(`git diff --numstat` 18/0, rein additiv). Damit ist `111209_VL11_Resume` vollständig
bearbeitet. Offen: 13 der 23 Vorlesungsordner (rund 175 der 190 Dateien) — davon nicht mehr
`VL`-nummeriert ab hier. Nächster Lauf: `120215_Shinohara_Kazuo`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, zehnter P2-Lauf, VL10 Zumthor (Lane FACHWISSEN, 23. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel» behauptet, real
zu diesem Zeitpunkt: beide Specs seit 29.08.2026 geschrieben, 166 Wiki-Artikel, 22 Läufe) und
nannte die Station explizit als «MacBook Pro» — `scutil --get LocalHostName` zeigt während
dieses Laufs **Macmini**. Vor Arbeitsbeginn `ps aux` geprüft: kein zweiter FACHWISSEN-Prozess
(ein unabhängiger, paralleler Nachtschicht-Prozess auf derselben Maschine ohne Bezug zu dieser
KB), `git status`/`git log` zeigten einen sauberen Working Tree ohne unkommittierten Rest. Am
realen `KORPUS-QUEUE.md`-Stand weitergearbeitet: nächster fälliger Schritt war laut Vorlauf
`111202_VL10_Zumthor` in Sektion `02_Architekturtheorie`.

Beide Quellen dieser Vorlesung gelesen (rohe Live-Mitschrift
`111202_Zunthor_Architekturtheorie_I.docx` sowie die eigene, mit Literaturangaben versehene
Prüfungszusammenfassung `120208_Zumthor.docx`). Vor der Destillation geprüft, ob Zumthor in
dieser KB bereits abgedeckt ist: ein bestehender Artikel
(`wiki/tessiner-tendenza-schweizer-architektur-seit-1970-argumentationsfundus.md`) erwähnt
Zumthors Atmosphäre-Begriff nur als Fussnote einer anderen Sekundärquelle — kein Duplikat, die
Primärquelle dieser Vorlesung liefert deutlich mehr Substanz. Zwei neue Wiki-Artikel:

- [[zumthor-kritischer-regionalismus-haus-truog-frampton-ricoeur]] — `status: emerging`,
  Genealogie Kritischer Regionalismus (Tzonis/Lefaivre → Frampton → Ricoeur-Bezug), Fallbeispiel
  Haus Dr. Truog «Gugalun» (Material/Konstruktion/Topografie), umfangreiche, unverifizierte
  Architektenliste des kritischen Regionalismus laut Vorlesungsnotiz
- [[zumthor-authentizitaet-atmosphaere-raumkonzeption-vergleich-loos-wright]] — `status:
  speculative` (enthält einen explizit als «Eigene Meinung» markierten kritischen
  Studierenden-Abschnitt zur Therme Vals, bewusst als dokumentierte Quellenposition
  gekennzeichnet statt geglättet), Materialitäts-/Authentizitätsbegriff, Atmosphäre-Definition
  nach Böhme/Norbert Schulz, Raumkonzeptions-Vergleich Loos/Wright/Zumthor mit der
  Merkformel «negiert/kreiert/interpretiert» aus der Prüfungsfrage 04

`01_Sylabus` und `03_Folie` bewusst nicht ausgewertet (Konvention wie VL2-VL9). Inventardatei
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` um einen Append-Eintrag ergänzt
(`git diff --numstat` 18/0, rein additiv). Damit ist `111202_VL10_Zumthor` vollständig
bearbeitet. Offen: 14 der 23 Vorlesungsordner (rund 176 der 190 Dateien). Nächster Lauf: VL11
nach Ordnernummer (noch nicht identifiziert).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, neunter P2-Lauf, VL9 Wright (Lane FACHWISSEN, 22. Beispiel Memory `project_fachwissen-dispatch-loop`)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel» behauptet; real
30+ Läufe, beide Specs seit 29.08. geschrieben, 160+ Wiki-Artikel). Vor Arbeitsbeginn geprüft:
`ps aux` zeigte nur einen `claude -p`-Prozess für Lane FACHWISSEN (kein Doppel-Dispatch),
`scutil --get LocalHostName` → Macmini (Dispatch-Text nennt wieder fälschlich «MacBook Pro»),
`git status`/`git diff --numstat` sauber (keine unkommittierte Vorarbeit zu sichern). Am
realen Stand von `KORPUS-QUEUE.md` weitergearbeitet: `111125_VL9_Wright_Frank_Lloyd/` (Sektion
`02_Architekturtheorie`, Korpus `archiv-fachwissen`) bearbeitet, beide Vorlesungsmitschriften
gelesen (rohe Live-Mitschrift + eigene Prüfungszusammenfassung im Frage-Antwort-Format). Die
Werk-/Baufakten zu Fallingwater standen bereits in
`wiki/vier-kanonische-fallbeispiele-architekturtheorie-register.md`; der theoretische
Argumentationsgang der Vorlesung (Sullivan-Herleitung «form follows function» → Wrights
Teil-Ganzes-Prinzip, «Zerstörung der Kiste»/fliessender Raum, systematische Abgrenzung zum
International Style anhand Material/Farbe/Ortsbezug/Patina, Broadacre City 1935 als
städtebauliches «Anti-Stadt»-Pendant zu Fallingwater) fehlte und wurde zu einem neuen Artikel
verdichtet: `wiki/wright-organische-architektur-zerstoerung-der-kiste-broadacre-city.md`
(`status: speculative`, Live-Mitschrift stellenweise fehlerhaft transkribiert). Gegen den
bestehenden Artikel `wiki/funktionsbegriff-fassadendreiteilung-sullivan-haering-semper.md`
geprüft (andere Vorlesung, andere Fragestellung zu Sullivan — kein Duplikat). `111125_VL9`
damit vollständig bearbeitet. Offen: 15 der 23 Vorlesungsordner (rund 179 der 190 Dateien).
Nächster Lauf: `111202_VL10_Zumthor`. Details Inventardatei
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, achter P2-Lauf, VL8 Loos (Lane FACHWISSEN)

Dispatch-Auftrag wieder veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel» behauptet;
real 30+ Läufe, beide Specs, 160+ Wiki-Artikel, P1 in beiden Korpora vollständig). Vor
Arbeitsbeginn geprüft: `scutil --get LocalHostName` → Macmini (Dispatch-Text nennt
fälschlich «MacBook Pro»), `ps aux` zeigte keine zweite FACHWISSEN-Instanz, `git status`/
`git diff --numstat` sauber (keine unkommittierte Vorarbeit zu sichern) — 21. Beispiel des
dokumentierten Dispatch-Bugs, Memory `project_fachwissen-dispatch-loop`. Am realen Stand von
`KORPUS-QUEUE.md` weitergearbeitet: `111118_VL8_Loos_Adolf/` (Sektion `02_Architekturtheorie`,
Korpus `archiv-fachwissen`) bearbeitet, beide Vorlesungsmitschriften gelesen (rohe
Live-Mitschrift Moravánszky + eigene, mit Literaturangaben versehene Prüfungszusammenfassung).
Cross-Check gegen die beiden bereits bestehenden Loos-Artikel dieser KB ergab: Raumplan-
Grundbegriff und die Ornament/Semper/Riegl-Konstellation waren bereits abgedeckt, Loos'
vollständiger Argumentationsgang in «Ornament und Verbrechen» (inkl. Primärzitaten und
Kleidungs-Analogie) sowie ein Werk-/Biografie-Überblick (Michaelerplatz, Chicago-Tribune-
Wettbewerb, Café Museum, American Bar, Baugeschichte Haus Müller) fehlten. Zwei neue Artikel:
`wiki/loos-ornament-und-verbrechen-argumentationsgang-kleidungs-analogie.md` (`emerging`) und
`wiki/loos-werkregister-michaelerplatz-chicago-tribune-cafe-museum-american-bar-haus-mueller-baugeschichte.md`
(`speculative`, primär aus der fehlerhaften Mitschrift, mehrere Eigennamen unklar
transkribiert). `111118_VL8_Loos_Adolf` damit vollständig bearbeitet. Offen: 16 der 23
Vorlesungsordner (rund 180 der 190 Dateien). Nächster Lauf: `111125_VL9_Wright_Frank_Lloyd`.
Details Inventardatei `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md`.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, siebter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet (behauptete «kein Destillat, keine Spec, 2 Wiki-Artikel»,
tatsächlich beide Specs geschrieben, 160+ Wiki-Artikel, 29+ Läufe, Station laut `scutil`
Macmini statt der im Dispatch behaupteten «MacBook Pro») — nicht ausgeführt. `ps -o
pid,ppid,command` zeigte nur eine FACHWISSEN-Instanz (kein Doppel-Dispatch). Working Tree
enthielt beim Start die inhaltlich fertige, aber unkommittierte Buchführung des VL6-Kahn-Laufs
(Wiki-Artikel bereits separat committet). Zuerst per `nas-commit-now.sh` gesichert; Versuch
traf erneut den bekannten NAS-Merge-Konflikt (sechs fremde KBs gleichzeitig betroffen: normen,
synobsis, architekten-synobsis, baurecht, grobkosten), lokaler Working Tree blieb sauber (kein
`MERGE_HEAD`, keine Konfliktmarker) — der 15-Min-Cron committete die gesicherte Arbeit kurz
danach selbständig (Commit `52fba42cd`), bevor dieser Lauf fortsetzte.

Danach `111111_VL7_Rossi_Aldo/` geprüft (laut Buchführung des Vorlaufs der nächste offene
Vorlesungsordner). Fragen-Katalog und Fallbeispiel Cimitero San Cataldo waren wie erwartet
bereits destilliert; `02_Vorlesungsmitschrift/111111_Die_Analoge_Architektur.docx` (rohe
Live-Mitschrift) enthielt aber eigenständigen Stoff: den Begriff der Analogen Architektur/
Analogie-Prozess (Blaues Heft, Wissenschaftliche Selbstbiografie, Bezug Miroslav Sik), ein
zweites Typus-Beispiel (Diokletianspalast Split, zusätzlich zum bereits destillierten
Lucca-Beispiel), malerische Bezüge (Hopper, de Chirico, Piranesi «Campo Marzio») und
institutionsgeschichtlichen Kontext zu Rossis ETH-Lehrzeit 1973-1975 (Hoesli, GTA-Gründung,
Prägung von Meili/Märkli, Fortführung zu Kerez/Oligiati als Neo-Rationalismus-Synthese mit
Cross-Referenz zum bestehenden Kahn-Artikel). Destilliert zu
`wiki/rossi-analoge-architektur-typus-piranesi-eth-lehrzeit.md`, `status: speculative` wegen
ungewöhnlich fehlerhafter Quelle (Tippfehler, lautschriftliche Verschreibungen). `01_Sylabus`
(bereits über die Literaturlandkarte abgedeckt), Vorlesungsfolien und Tonmitschnitt bewusst
nicht ausgewertet. Damit ist `111111_VL7_Rossi_Aldo` vollständig bearbeitet. Offen: 17 der 23
Vorlesungsordner (rund 183 der 190 Dateien). Nächster Lauf: nächste noch nicht gesichtete
Vorlesung nach Ordnernummer (`111118_VL8` o. ä.).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, sechster P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet (behauptete «kein Destillat, keine Spec, 2 Wiki-Artikel»,
tatsächlich beide Specs geschrieben, 150+ Wiki-Artikel, 28+ Läufe, Station laut `scutil`
Macmini statt der im Dispatch behaupteten «MacBook Pro») — nicht ausgeführt. `ps -o
pid,ppid,command` zeigte: der aktuelle Prozess ist Kind desselben `claude -p`-Prozesses wie
der unmittelbar vorangegangene Lauf (Selbst-Redispatch nach Kontext-Kompaktierung, kein
echtes Doppel-Dispatch) — Working Tree enthielt bereits die inhaltlich fertige, aber
unkommittierte Buchführung des Venturi-Laufs (VL5). Zuerst per `nas-commit-now.sh`
gesichert; Versuch traf erneut den bekannten NAS-Merge-Konflikt (sechs fremde KBs
gleichzeitig betroffen: normen, synobsis, baurecht, grobkosten), lokaler Working Tree blieb
sauber (kein `MERGE_HEAD`, keine Konfliktmarker), dem 15-Min-Cron überlassen — Details
[[project_nas-git-merge-konflikt-dispatch-loop-260829]].

Danach nächste offene Position der rund 190 Vorlesungsmitschriften bearbeitet:
`111104_VL6_Kahn_Louis/` — das in dieser Vorlesung behandelte Fallbeispiel Exeter Library
war bereits über `wiki/vier-kanonische-fallbeispiele-architekturtheorie-register.md`
destilliert, daher zweite, eigenständige Position derselben Vorlesung bearbeitet:
`02_Vorlesungsmittschrift/120201_Kahn.docx` (eigene, durchformulierte Frage-Antwort-Analyse
zu Kahns Essay «Monumentalität») als Hauptquelle, rohe Live-Mitschrift als Zweitquelle zum
Abgleich. Destilliert zu
`wiki/kahn-monumentalitaet-form-evokes-function-post-miesismus.md` — ornamentale
Tragstruktur/ornamentaler Raum als explizite Kritik an Mies' Doppel-T-Stahltektonik,
New-Monumentality-Diskurs der 1940er (Zucker-Symposium 1944, Giedions «The Need for a New
Monumentality»), Kahns Magna-Charta-Zitat zur Monumentalität, «Form evokes Function» als
bewusste Umkehr von Sullivans «Form follows Function», Kahns Selbstverortung als
«Post-Miesismus» gegenüber Venturi/Eisenman, Materialhaltung «Was will der Backstein sein?»
im Kontrast zu Aalto, sowie ein Cross-Referenz-Fund (Christian Kerez/Schulhaus
Leutschenbach als Gegenbeispiel offengelegter Konstruktionstektonik, bereits über die
Kostenermittlungsseite in `buero-referenzen__18_Projektkostenplanung` dokumentiert).
`status: speculative`. Nicht ausgewertet: Vorlesungsfolien (`04_Vorlesungsfolie`) und ein
drittes PDF (`00_PDF/120821_Kahn.pdf`) ohne erkennbares docx-Original — Inhalt ungeprüft,
möglicherweise Doppelung. Offen bleiben 18 der 23 Vorlesungsordner (185 der 190 Dateien).
Nächster Lauf: VL7 (`111111_VL7_Rossi_Aldo`) — Achtung, das dortige Fallbeispiel (Cimitero
San Cataldo) und Rossis Theorie der Permanenz sind bereits als eigene Artikel vorhanden,
zuerst auf verbleibende, noch nicht destillierte Inhalte prüfen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, fünfter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet (behauptete «kein Destillat, keine Spec, 2 Wiki-Artikel»,
tatsächlich beide Specs geschrieben, 150+ Wiki-Artikel, 28+ Läufe, Station laut `scutil`
Macmini statt der im Dispatch behaupteten «MacBook Pro») — nicht ausgeführt, stattdessen am
realen `KORPUS-QUEUE.md`-Stand weitergearbeitet. Vor Arbeitsbeginn `ps aux` geprüft: kein
zweiter FACHWISSEN-Prozess (nur eine parallele, andere Lane SYNOBSIS, kein Kollisionsrisiko).
Working Tree enthielt bereits unkommittierte, inhaltlich fertige Buchführung des unmittelbar
vorangegangenen Laufabschnitts (VL4 Eisenman) — zuerst per `nas-commit-now.sh` gesichert;
Versuch traf erneut den bekannten NAS-Merge-Konflikt (sechs fremde KBs gleichzeitig
betroffen: normen, synobsis, baurecht, grobkosten), lokaler Working Tree blieb sauber (kein
MERGE_HEAD, keine Konfliktmarker), dem 15-Min-Cron überlassen — Details
[[project_nas-git-merge-konflikt-dispatch-loop-260829]].

Danach nächste offene Position der rund 190 Vorlesungsmitschriften bearbeitet:
`111021_VL5_Venturi_Robert/` gelesen (Zusammenfassung als Hauptquelle, Live-Mitschrift zum
Abgleich), destilliert zu
`wiki/venturi-dekorierter-schuppen-ente-komplexitaet-widerspruch-postmoderne.md` —
Dekorierter-Schuppen/Ente-Begriffspaar, «Mehr ist nicht weniger» als Umkehr von Mies'
«less is more», Postmoderne als Architektur der Erinnerung, Fallbeispiel Vanna Venturi
House («Haus für meine Mutter»), explizite Abgrenzung zu Eisenmans syntaktischem
Sprachverständnis (verlinkt zu
[[eisenman-house-vi-autonomie-architektur-new-york-five-dom-ino]] und
[[koolhaas-bigness-zwoelf-thesen-generic-city-junkspace]]). `status: speculative`
(Studien-Zusammenfassung, nicht am Original gegengelesen). Die als ungültig markierten
Fragen-Dokumente unter `03_Zusammenfassung/10_ungueltig/` bewusst nicht verwendet;
Vorlesungsfolien nicht ausgewertet. `wiki/INDEX.md` Zeile 04 und
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt «Destillat-Fortschritt»
nachgeführt. Offen bleiben 19 der 23 Vorlesungsordner (186 der 190 Dateien) sowie die
Vorlesungsfolien-Sammel-PDF. Nächster Lauf nach Reihenfolge: VL6
(`111104_VL6_Kahn_Louis`).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, vierter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet (behauptete «kein Destillat, keine Spec, 2 Wiki-Artikel»,
tatsaechlich beide Specs laengst geschrieben, 150+ Wiki-Artikel, 27+ Laeufe) — nicht
ausgefuehrt, stattdessen am realen `KORPUS-QUEUE.md`-Stand weitergearbeitet. Vor Arbeitsbeginn
`ps aux`/`scutil` geprueft: kein zweiter FACHWISSEN-Prozess, Hostname Macmini (nicht «MacBook
Pro» wie im Dispatch behauptet). Im Working Tree lag bereits unkommittierte, inhaltlich fertige
Buchfuehrung eines vorangegangenen Laufabschnitts desselben langlaufenden Prozesses (VL2/VL3
Koolhaas) vor; `nas-commit-now.sh` traf beim Sichern zunaechst den bekannten NAS-Merge-Konflikt
(sechs fremde KBs gleichzeitig betroffen: normen, synobsis, baurecht, grobkosten), der 15-Min-
Cron loeste den Merge kurz danach automatisch auf und pushte alles (Commit `85ff81211`) —
Details [[project_nas-git-merge-konflikt-dispatch-loop-260829]].

Danach naechste offene Position der rund 190 Vorlesungsmitschriften bearbeitet:
`111014_VL4_Peter_Eisenman/` gelesen (Zusammenfassung als Hauptquelle, Live-Mitschrift zum
Abgleich), destilliert zu
`wiki/eisenman-house-vi-autonomie-architektur-new-york-five-dom-ino.md` — Autonomie der
Architektur, Maison Dom-ino als selbstreferentielles Zeichen, New York Five/The Greys,
Wittkower-Methodik, House II-VI, Radikalitaets-Merkmalsliste, verlinkt zu den beiden
Koolhaas-Artikeln und zu `typus-modell-prototyp-trennschaerfe-architekturtheorie`. `status:
speculative` (Studien-Zusammenfassung, nicht am Original gegengelesen). Vorlesungsfolien und
Audiomitschnitt dieser VL nicht ausgewertet. `wiki/INDEX.md` Zeile 04 und
`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt «Destillat-Fortschritt»
nachgefuehrt. Offen bleiben 20 der 23 Vorlesungsordner (187 der 190 Dateien) sowie die
Vorlesungsfolien-Sammel-PDF (`Praes-Ath*.pdf`). Naechster Lauf nach Reihenfolge: VL5
(`111021_VL5_Venturi_Robert`).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, dritter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag wieder veraltet (behauptete «kein Destillat, keine Spec, 2 Wiki-Artikel»,
tatsaechlich beide Specs seit 29.08.2026, P1 in beiden Korpora komplett, 27 Laeufe, 150+
Wiki-Artikel) — Spec-Neuschreibung und P1-Wiederholung nicht ausgefuehrt, stattdessen am
realen `KORPUS-QUEUE.md`-Stand weitergearbeitet. Vor Arbeitsbeginn `ps aux`/`scutil` geprueft:
kein zweiter FACHWISSEN-Prozess, aber Lane SYNOBSIS lief parallel (eigene KB, keine
Ueberschneidung). Ausserdem lag im Working Tree bereits unkommittierte Buchfuehrung eines
frueheren Laufabschnitts desselben langlaufenden Prozesses vor (Antwort auf `#68`); diese
zuerst per `nas-commit-now.sh` gesichert (lokaler Commit/Push `f79b169fb` gelang trotz
erneutem NAS-Merge-Konflikt in fremden KB-Dateien — Details
[[project_nas-git-merge-konflikt-dispatch-loop-260829]]).

Danach erster inhaltlicher Sichtungslauf der laut `#68`-Antwort verbleibenden rund 190
Vorlesungsmitschriften: zwei Koolhaas-Vorlesungen (VL2 «S,M,L,XL», VL3 «S,M,L,XL und die
Folgen») vollstaendig gelesen und destilliert.

- `wiki/delirious-new-york-retroaktives-manifest-culture-of-congestion-pk-methode.md` —
  retroaktives Manifest, Culture of Congestion, Dalís paranoisch-kritische Methode, Exodus
  (1972), Manhattan-Rasterplan als Dichte-Erzeuger.
- `wiki/koolhaas-bigness-zwoelf-thesen-generic-city-junkspace.md` — die zwoelf Bigness-Thesen
  aus «S,M,L,XL» (1995) vollstaendig wiedergegeben, Generic City (eigenschaftslose Stadt),
  Junkspace.

Bestehender Artikel `wiki/manhattanismus-koolhaas-monumentalitaet.md` (anderer Quellordner,
`02_Gestalt_Kulturverstaendnis`, Lincoln-Center-Fallbeispiel) gegengepruft: kein inhaltliches
Duplikat, alle drei Artikel gegenseitig verlinkt. Beide neuen Artikel `status: speculative`
(rohe, teils fehlerhafte Mitschrift-Transkription; Zitate nicht am Originaltext «S,M,L,XL» /
«Delirious New York» gegengelesen, in den Artikeln als offener Punkt vermerkt).

`wiki/INDEX.md` Zeile 04 und `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md`
Abschnitt «Destillat-Fortschritt» nachgefuehrt. Offen bleiben 21 der 23 Vorlesungsordner (188
der 190 Dateien) sowie die Vorlesungsfolien-Sammel-PDF (`Praes-Ath*.pdf`).

## 2026-08-30 — Folgelauf: Buchfuehrung nachgetragen, `#68` beantwortet (Lane FACHWISSEN)

Dispatch-Auftrag erneut massiv veraltet (behauptete «kein Destillat und keine Spec, KB hat
erst 2 Wiki-Artikel» — tatsaechlich bestehen beide Specs seit 29.08.2026, P1 ist in beiden
Korpora komplett destilliert, ueber 25 Laeufe und dutzende Wiki-Artikel liegen bereits vor).
Dieselbe Fehlbeschreibung wie in `project_fachwissen-dispatch-loop` (Memory) dokumentiert.
Spec-Neuschreibung und P1-Wiederholung deshalb **nicht** ausgefuehrt.

Stattdessen: der Arbeitsstand zeigte fuenf unkommittierte, aber inhaltlich fertige Dateien
aus dem unmittelbar vorangegangenen Lauf («zweiter P2-Lauf Sektion `02_Architekturtheorie`»,
Eintrag direkt unten) — die drei zugehoerigen Wiki-Artikel waren bereits committet
(`44a4efd03`), die Buchfuehrung (CHANGELOG/QUESTIONS/INDEX/KORPUS-QUEUE/Inventar) aber noch
nicht. `bash scripts/nas-commit-now.sh` traf zweimal denselben Merge-Konflikt in fremden
KB-CHANGELOGs (`normen`, `baurecht`, `grobkosten`, `architekten-synobsis` — bereits bekannt aus
Memory `project_nas-git-merge-konflikt-dispatch-loop-260829`), lokal wurde aber sauber und ohne
Konfliktmarker committet und nach `origin/main` durchgestellt (`47c694500`).

Danach `wiki/QUESTIONS.md` **#68** beantwortet: vollstaendiger `find`-Scan der Sektion
`02_Architekturtheorie` auf `*Fragen*`-Unterordner statt der bisherigen Stichprobe. Ergebnis:
keine weiteren versteckten P1-Funde ausser den bereits bekannten neun Begriffskatalog-Ordnern
und den zwei bereits destillierten Vorlesungsordnern (VL1, VL7); ein zusaetzlicher Treffer
(`00_Administration/04_Pruefung/01_Fragekatalog`) ist ein leerer Ordner. Kein neuer
Wiki-Artikel in diesem Lauf. Naechster Lauf kann direkt mit der inhaltlichen Sichtung der
rund 190 Vorlesungsmitschriften beginnen, ohne weitere Struktur-Vorpruefung.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, zweiter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station
fälschlich «MacBook Pro» — tatsächlicher Hostname laut `scutil` **Macmini**; sechzehntes
Beispiel desselben Musters, Memory `project_fachwissen-dispatch-loop`). Vor Arbeitsbeginn
`ps aux` geprüft: zwei `claude -p`-Prozesse aktiv, aber der zweite gehört zu Lane SYNOBSIS
(unterschiedlicher Prompt-Text), keine echte FACHWISSEN-Doppelinstanz. Am realen Stand in
`KORPUS-QUEUE.md`/CHANGELOG orientiert, keine Spec neu geschrieben (beide Specs bestehen seit
29.08.2026).

Fortsetzung der Sektion `02_Architekturtheorie` (P1 vollständig, P2-Gruppe «31 Syllabi» aus dem
Vorlauf erledigt). Vor Weiterarbeit an den rund 190 Vorlesungsmitschriften eine Stichprobe der
23 Vorlesungsordner auf versteckte Fragen-Unterordner geprüft (Analogieschluss aus der Machart
der acht P1-Begriffskataloge) — zwei Treffer, die die Erstinventarisierung 23.08.2026 fälschlich
in die pauschale P2-Gruppe einsortiert hatte:

- `VL7_Rossi_Aldo/05_Fragen/120112_VL_7_Aldo_Rossi_Fragen.docx` — vollständiger 19-Punkte-
  Fragenkatalog zu Rossis «Architektur für die Museen». Destilliert zu
  `wiki/rossi-theorie-der-permanenz-primaere-sekundaere-stadtelemente.md`: Theorie der Permanenz
  (primäre/sekundäre Stadtelemente), Beleg am Beispiel Lucca (Blockgrundriss = ehemaliges
  Amphitheater), Rossis Typus-Begriff im Vergleich zu Muratori/Caniggia («Finden statt Erfinden»
  gegen traditionalistische Kontinuität, Fallbeispiel Bologna-Restaurierung 1970er), Rossi gegen
  Venturi (Grundriss/Typus gegen Fassade/Zeichen), Bezug zu Emil Kaufmanns Begriff der
  «autonomen Architektur».
- `VL1_Was_ist_Architekturtheorie/02_Mitschrift/Fragen/120715_Fragen_Architekturtheorie.docx` —
  destilliert zu `wiki/architekturtheorie-grundbegriff-theorie-vs-geschichte-eth-vl1.md`: Theorie
  gegen Geschichte (Annahme gegen Tatsache), Warum ein Architekt Theorie braucht, der «Hang zur
  Anthologie», Caruso-St-John-Methode (Referenzprojekt-Grammatik statt Zitat) als Kohärenz-Regel
  für Erläuterungsberichte.

Zusätzlich vier der eigentlichen Vorlesungsmitschriften (Loos/Haus Müller Prag, Wright/Fallingwater,
Kahn/Exeter Library, Rossi/Modena — dieselben vier Fallbeispiele, die die Syllabi bereits als
Literaturregister führen) zu einem Kernfakten-Register verdichtet:
`wiki/vier-kanonische-fallbeispiele-architekturtheorie-register.md`, bewusst `status: speculative`
wegen roher, tippfehlerreicher Mitschrift-Qualität (Rule dieser KB).

`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` um Abschnitt «Destillat-Fortschritt»
ergänzt (reiner Append, `git diff --numstat` 20/0 geprüft). `wiki/INDEX.md` und
`skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt. Neue Frage `wiki/QUESTIONS.md` #68: nur
2 von 23 Vorlesungsordnern auf weitere versteckte Fragen-Unterordner geprüft, restliche 21 noch
offen. In der Sektion bleiben rund 180 weitere Vorlesungsmitschriften/Zusammenfassungen sowie die
Vorlesungsfolien-Sammel-PDF (`Praes-Ath*.pdf`) offen.

## 2026-08-30 — P2-Lauf Korpus `buero-referenzen`, Sektion `10_Modellbauen`, erster P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag wieder veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»; tatsächlicher
Stand: beide Specs seit 29.08.2026, P1 über beide Korpora vollständig, laufende P2-Destillation).
Vor Arbeitsbeginn geprüft: `ps aux` zeigte zwei Wrapper-Prozesse `claude-run.sh --name
schub-fachwissen` (PID 66424 und 66411), aber nur einen laufenden `claude -p`-Prozess mit dem
FACHWISSEN-Prompt (PID 66427, vermutlich diese Session selbst) — möglicher, aber nicht
bestätigter Doppel-Dispatch, im Bericht vermerkt statt selbst einzugreifen. `scutil` bestätigte
Hostname **Macmini**. Vor Arbeitsbeginn stand bereits ein unquittierter Commit von einem
Vorlauf im Baum (Sektion `02_Architekturtheorie`, siehe Eintrag unten); dieser wurde durch den
laufenden `nas-selfcommit`-Daemon zwischenzeitlich automatisch gesichert, keine eigene
Handlung nötig.

Am realen Stand in `KORPUS-QUEUE.md`/`wiki/INDEX.md` orientiert: für `buero-referenzen` ist nur
`18_Projektkostenplanung` als P1+P2 abgeschlossen vermerkt, alle übrigen 22 Sektionen haben P2
offen. Nach Ertrag (`wiki/INDEX.md` „Sektionen nach Ertrag“) nächstgrösste Sektion mit offenem
P2: `10_Modellbauen` (89 P2-Positionen).

Drei P2-Positionen bearbeitet:

- `020419 Tips Nicolas.doc` (private E-Mail eines Ex-Mitarbeiters, 19.04.2002) gelesen und wie
  in der Inventardatei verlangt gegen die drei P1-Betondokumente abgeglichen: unabhängige
  dritte Bestätigung der «tepafit»-Schalungsauskleidung, zwei neue, aber vom Verfasser selbst
  als unsicher bezeichnete Angaben (Möbelöl-Trennmittel, drittes Mischverhältnis mit
  unidentifiziertem «Keraq») — als eigener, klar als unsicher markierter Abschnitt in
  `wiki/modellbeton-fehlerkatalog-schalung.md` ergänzt, kein neuer Artikel.
- `Bestellung_für_Herzog.doc` (04.12.2007) gelesen. Nur das wiederverwendbare Feldschema
  (Anfragetext, Positionsfelder, getrennter Adressblock, separater Freigabevermerk mit
  Preisobergrenze) destilliert; die Personen- und Kontaktdaten des historischen Lieferanten und
  der internen Ansprechperson bewusst nicht übernommen (Sperrliste-Nähe, keine
  Kontaktdatensammlung im Sinne der KB-Grenzen) → `wiki/bestellvorlage-modellbaumaterial-zuschnitt.md`,
  neu.
- `Rhino_Schnittmuster/100316 model corridor.pdf` vollständig gelesen (`pypdf`, da kein
  `pdftotext` auf dieser Station): reine Bemassungsgrafik ohne Fliesstext, kein über die
  bestehende Triage-Zeile hinausgehender Ertrag — bewusst kein Artikel (Delta-Ehrlichkeit).

`raw/inventar/buero-referenzen__10_Modellbauen.md` um Abschnitt „Ergänzung 2026-08-30" ergänzt
(reiner Append, `git diff --numstat` 21/0 geprüft). `wiki/INDEX.md` nachgeführt. 86 von 89
P2-Positionen dieser Sektion bleiben offen (u. a. Werkstoff-Fragment INDD, Profilit-Vektorvorlagen,
zwei ungeöffnete CAD-Dateien, Fremdvorlage mit Kundendaten, zwei Fotoserien Betondecke).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, erster P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag wieder veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel»; tatsächlicher
Stand: beide Specs seit 29.08.2026, 150+ Wiki-Artikel, P1 über beide Korpora vollständig). Vor
Arbeitsbeginn geprüft: `ps aux` zeigte keine zweite FACHWISSEN-Instanz (nur eine parallele
SYNOBSIS-Lane, kein Kollisionsziel), `scutil --get LocalHostName` bestätigte **Macmini** statt
der im Auftrag genannten Station. Am realen `KORPUS-QUEUE.md`-Stand orientiert: Sektion
`03_Bauprozesse_I_II` hat laut Vorlauf keinen schnell erschliessbaren P2-Rest mehr, also zur
nächstgrössten Sektion nach Ertrag mit unbearbeitetem P2 übergegangen: `02_Architekturtheorie`
(21 P1, P1 bereits vollständig, P2 188 Positionen in drei Gruppen).

Bearbeitet: die P2-Gruppe «31 Syllabi». Zwei vollständige Sammelsyllabi gelesen (Architekturtheorie
III HS2012 mit acht Begriffen: Stil, Material, Materialwahrheit/Stoffwechsel, Konstruktion/
Tektonik, Typus, Funktion, Ornament, Ort; Architekturtheorie IV FS2012 mit acht weiteren Begriffen:
Bedeutung, Zeit/Geschichte, Monumentalität, Sprache/Semiotik, Atmosphären, Identität, Ideologie,
Ethik) plus drei Einzelsyllabi mit Fallbeispiel (Loos/Haus Müller Prag, Wright/Fallingwater,
vernakuläres Bauen/Abraham-Rudofsky). Destilliert zu einem Register-Artikel
`wiki/literaturlandkarte-architekturtheorie-eth-syllabi.md`: je Begriff die
Anthologie-Pflichtlektüre und drei bis fünf Titel weiterführender Literatur mit Autor/Titel/
Verlag/Jahr — Register, nicht Volltext (Urheberrechtssperre `02_Theoretiker_Texte` eingehalten).

Geprüft und im Artikel vermerkt: die acht Ath-IV-Themenordner tragen — anders als die
Ath-III-Reihe — keine eigenen Fragen-Antwort-Kataloge, nur Syllabi; kein nachzuholender P1-Fund
dort. Rund 25 weitere Einzelsyllabi (Wiederholungen anderer Jahrgänge derselben 16 Begriffe)
als Duplikate erkannt, nicht einzeln gegengelesen. P2-Gruppe «31 Syllabi» damit erledigt;
in der Sektion bleiben die rund 190 Vorlesungsmitschriften und die Vorlesungsfolien-Sammel-PDF
offen (`raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt
«Destillat-Fortschritt» nachgeführt, append-only, `git diff --numstat` 12/0 geprüft).
`wiki/INDEX.md` und `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II`, zweiter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station
fälschlich «MacBook Pro» — tatsächlicher Hostname laut `scutil` **Macmini**; vierzehntes
Beispiel desselben Musters, Memory `project_fachwissen-dispatch-loop`). Vor Arbeitsbeginn
`ps aux` geprüft: keine zweite FACHWISSEN-Instanz aktiv. Am realen Stand in
`KORPUS-QUEUE.md`/CHANGELOG orientiert, keine Spec neu geschrieben (beide Specs bestehen
seit 29.08.2026).

Fortsetzung der Sektion `03_Bauprozesse_I_II`: die beiden im vorigen Lauf als „noch nicht
gelesen" markierten P2-Positionen vollständig gelesen und destilliert.

- `02_Projektbeschriebe/Beschriebe.doc` (Dateidatum 27.06.2007, unvollständiges Fragment,
  kein Autor) → [[sia416-sia116-volumenvergleich-kostenkennwert-uebungsbeispiel]], neu,
  `status: speculative`. SIA-416- vs. SIA-116-Volumenberechnung am selben Gebäude (750 m³
  vs. 1'070 m³, ~43 % Differenz durch den SIA-116-Aussengeschossflächen-Zuschlag), aber nur
  ~3,6 % Differenz im daraus abgeleiteten Kostenkennwert (CHF 309'750.- vs. CHF 321'000.-).
- `03_Kostenplanung/Baubeschrieb.pdf` (13 Seiten, Verkaufsbeschrieb 10 Eigentumswohnungen
  Gäbrisstrasse, Rorschach, 4.12.2011) → Seiten 1-11 gelesen, Seite 13 «Adressen» bewusst
  ausgelassen (Sperrliste-Nähe). Zwei Ergebnisse:
  - Technischer Teil (Holzbau-Konstruktion, Budget-Richtpreise pro Wohnungstyp,
    BKP-gegliederte Leistungsbeschreibung) als drittes Beispiel in
    [[baubeschrieb-als-kostentraeger]] ergänzt. **Dritte unabhängige Bestätigung** der
    BKP-Phantom-Code-Warnung (nach Leutschenbach «071»): 051 als Sammelcode statt
    Detailposition verwendet, 213 mit abweichender Bedeutung (Balkongeländer statt
    Stahltragwerk), 466 existiert in der BKP-2017-Hauptgruppe 46 gar nicht.
  - Klauselteil (Prospekt-Haftungsausschluss, Rangfolge Beschrieb vor Plan,
    Mängelhaftungs-Toleranzen 0,5 mm/Garantiefristen 2-5-1 Jahre, Käuferänderungsregelung
    mit 2/3-Rückvergütung bei Verzicht) als eigener Artikel →
    [[verkaufsbeschrieb-stweg-standardklauseln-kaeuferaenderungen-gaebrisstrasse]], neu,
    `status: emerging`.

Inventardatei `raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` um Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, zweiter Lauf)» ergänzt (reiner Append,
`git diff --numstat` 48/0 geprüft). Damit sind alle zu Laufbeginn unblockierten P2-Positionen
dieser Sektion abgearbeitet; vier verbleiben offen (zwei mit ungeklärter Urheberrechtslage,
eine mit Anonymisierungsbedarf, eine ohne Aktualitätswert) — Details Inventardatei. Der
Entscheidungspunkt Raphaels (`QUESTIONS.md` #1/#58/#60/#63, P2 systematisch vs.
Phase-0-Nachholung) bleibt unverändert offen und wurde in diesem Lauf nicht wiederholt.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II`, erster P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec, 2 Wiki-Artikel», Station
fälschlich als «MacBook Pro» bezeichnet — tatsächlicher Hostname laut `scutil` **Macmini**;
dreizehntes Beispiel desselben Musters, Memory `project_fachwissen-dispatch-loop`). Lauf hat
sich am realen Stand in `KORPUS-QUEUE.md` orientiert. `ps aux` vor Arbeitsbeginn geprüft:
kein FACHWISSEN-Duplikat.

Mit Sektion `01_Konstruktion` abgeschlossen (P1+P2, vorheriger Lauf) rückt gemäss Queue-Regel
«nächstgrösste Sektion nach Ertrag» `03_Bauprozesse_I_II` nach (P1 bereits im zweiten Lauf
dieses Korpus abgeschlossen, P2 mit 96 Positionen bislang vollständig offen). Drei neue
Wiki-Artikel, alle Primärquellen vollständig gelesen (`pypdf` für PDF, `textutil` für die
drei alten `.doc`-Dateien):

- [[kostenvoranschlag-merkblatt-oeffentliche-bauherrschaft-reserven-verwaltungskosten]] —
  Kostenvoranschlag-Merkblatt Grün Stadt Zürich (v2013-01): Reserven-Prozentsätze BKP 61/62
  (5 % Ungenauigkeit + 10 % Unvorhergesehenes), Verwaltungskostenzuschlag 7,5 % (BKP 558),
  weiter Kostenumfang-Begriff im Verpflichtungskredit (Wettbewerb, Landerwerb, Provisorien,
  Erstausstattung), MWST-Handhabung ohne separate Position.
- [[ebkp-h-2012-gliederungslogik-elementarten-oak-eak-kataloge]] — die drei
  Gliederungsebenen des eBKP-H 2012 (Hauptgruppe/Elementgruppe/Element) und die
  Elementarten als vierte, nicht genormte Stufe; Verweis auf die CRB-Kataloge OAK
  (Objektarten, reale Kennwerte für neun dokumentierte Wohnbauten) und EAK (Elementarten),
  deren Kennwerte selbst wegen CRB-Copyright nicht reproduziert werden. Rückverlinkt mit
  den beiden bereits bestehenden eBKP-H-Artikeln dieser Sektion (Backlink-Ergänzung im
  Frontmatter, `git diff --numstat` je 1/1 geprüft, kein Inhalt entfernt).
- [[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]] — drei kurze
  ETH-Checklisten (Kontext-/Tektonik-Analyseraster «Arch+TT» WS 07/08,
  Bauelement-Begriffsglossar, Abgabe-Deliverable-Liste für ein Semesterprojekt), `status:
  speculative` mangels belegter Autorenschaft.

**Wichtigster Befund des Laufs: Doppelarbeit vermieden statt neu produziert.**
`schaetzungsanleitung_kap5.pdf`, der laut Inventar grösste verbleibende P2-Einzelfund dieser
Sektion, wurde vollständig gelesen (alle 30 Tabellen, 41 Seiten) — die fachlich wertvollen
Tabellen (Lebensdauer Baumaterialien, wirtschaftliches Alter, Wertminderungstabelle,
Neuwert-Richtwerte, BKP-2-Prozentanteile) sind bereits **vollständig und mit
Berechnungsbeispiel** in `wissen/immobilienbewertung/wiki/realwert-sachwert.md` destilliert
(dortige Quelle IMMO-03). Kein Doppelartikel geschrieben, Cross-KB-Fund in der Inventardatei
vermerkt. Ebenfalls bewusst nicht hier destilliert: mehrere Norm-Originale/Sekundärliteratur
(VKF-Fluchtwegelängen, VSS-Sichtzonen SN 640 273a, SIA-500-Sekundärliteratur — Abgrenzung
`archiv-fachwissen-spec.md`, gehören zu `wissen/normen`) sowie die KBOB-Honorarempfehlung
2002 (Gleitpreisklausel-Mechanik) als Cross-KB-Kandidat für `honorarberechnung-sia102`,
festgehalten in `wiki/QUESTIONS.md` #67.

Fortschritt und vollständige Begründung je Position:
`raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt «Destillat-Fortschritt —
Ergänzung 2026-08-30», reiner Append (`git diff --numstat` 73/0 geprüft). Sperrliste-Prüfung:
keine neuen Funde. **P2 dieser Sektion bleibt zu rund 15–20 Positionen offen**
(Bauprozess-Systematik nach Menz mit Urheberrechtsvorbehalt, Ausschreibungsbeispiele mit
noch ausstehender Anonymisierungsprüfung, Baubeschrieb-Musterbeispiel). Der
Entscheidungspunkt Raphaels (`QUESTIONS.md` #1/#58/#60/#63: P2 systematisch fortsetzen vs.
Phase-0-Nachholung für die 12 offenen Sektionen) bleibt unverändert offen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Konstruktion` ABGESCHLOSSEN (P1+P2), vierter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec», zwölftes Beispiel desselben
Musters, Memory `project_fachwissen-dispatch-loop`). Vor Arbeitsbeginn `ps aux` gegen
Parallel-Instanzen der Lane geprüft: kein FACHWISSEN-Duplikat, unabhängige Lanes
NORMEN-PRUEFSTAND und BAURECHT-THALWIL liefen gleichzeitig auf derselben Station. Lauf hat
sich am realen Stand in `KORPUS-QUEUE.md`/`CHANGELOG.md` orientiert, nicht am Dispatch-Text.

Bearbeitet: die letzte offene P2-Position der Sektion `01_Konstruktion` —
`04_Bauphysik_Energie/02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien,
Bauphysik I–III ETH Zürich). Kernquelle: das deutsche Skript «Bauphysik III, FS 2009»
(Dr. H. Manz), Kapitel 3–7 plus Anhang, identisch dupliziert an zwei Stellen im Ordner
(MD5-verifiziert), vollständig per `pypdf` extrahiert und gelesen. Kapitel 1–2 dieses Skripts
waren bereits in früheren Läufen destilliert.

Drei neue Wiki-Artikel:

- [[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]]
  (Kapitel 3): Temperaturleitfähigkeit, Wärmeeindringkoeffizient, Eindringtiefe σ, dynamische
  Wärmekapazität/speicherwirksame Schichtdicke, Zeitkonstante τ = d²/a einer Materialschicht,
  Amplitudendämpfung/Phasenverschiebung. Belegte Kernzahl: aussengedämmte Massivwände dämpfen
  eine Aussentemperaturschwankung rund 30× stärker als innengedämmte bei identischem U-Wert
  (ν_H 103 vs. 3,6, Fig. 3.13).
- [[luftdichtheitsphysik-winddruck-thermischer-auftrieb-blower-door-eth-bauphysik-iii-manz]]
  (Kapitel 5): Winddruck-Cp-Beiwerte, thermisch induzierter Auftrieb/Kamineffekt
  (neutrale Zone), Spaltströmungsansatz V̇=D·Δp^m, Blower-Door-Methode (n50, SIA-180-Kennwert
  va,4), Radon-Grundlagen, Querbezug passive Nachtlüftung. Ergänzt die bereits destillierten
  Leibundgut-Artikel (Systematik/CO₂-Kennzahlen) um die Druck-/Strömungsphysik, die dort und
  in `wissen/energie/wiki/komfortlueftung.md` nicht behandelt wird.
- [[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]]
  (Kapitel 6): Leistungsbilanz eines Raumes, Zeitkonstante τ = C/H, Gewinn/Verlust-Verhältnis
  γ = G/H, Leerlauftemperatur-Modell, Gebäudesimulationsbeispiel Büroraum Sommer (Zürich,
  Sonnenschutz + Nachtlüftung kombiniert hält die operative Raumtemperatur den ganzen Sommer
  unter 26,5 °C, Fig. 6.13).

**Kapitel 4 (Transparente Bauteile) und Kapitel 7 (Energie und Nachhaltigkeit) sowie die
Anhang-Baustofftabellen (SN EN 12524) bewusst NICHT destilliert:** Registerprüfung gegen
`wissen/energie/wiki/` ergab, dass diese Themen dort bereits mit aktuellem Normstand
(SIA 380/1:2016, SIA 180:2014, Minergie 2026.1, KBOB v9.0/2026) `established` geführt werden
(`fenster-uw-g-wert-zielkonflikt.md`, `sommerlicher-waermeschutz.md`, `graue-energie.md`,
`minergie-standards.md`, `u-werte-grenzwerte-ch.md`, `daemmstoffe-lambda.md`) — das 2009er-
Skript hätte hier nur veraltete Grenzwerte dupliziert. Routing-Hinweis `wiki/QUESTIONS.md` #66.

**Damit ist die Sektion `01_Konstruktion` des Korpus `archiv-fachwissen` für P1 UND P2
vollständig abgeschlossen.** Fortschritt in
`raw/inventar/archiv-fachwissen__01_Konstruktion.md`, reiner Append (`git diff --numstat`
36/0 geprüft). Sperrliste-Prüfung: keine neuen Funde.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Konstruktion`, dritter P2-Lauf (Lane FACHWISSEN)

Dispatch-Auftrag erneut veraltet («kein Destillat, keine Spec», elftes Beispiel desselben
Musters, Memory `project_fachwissen-dispatch-loop`); Lauf orientierte sich an
`KORPUS-QUEUE.md`/`wiki/INDEX.md`. Vor Arbeitsbeginn `ps aux` gegen Parallel-Instanzen
geprüft: kein FACHWISSEN-Duplikat, nur unabhängige Lanes NORMEN-PRUEFSTAND/BAURECHT-THALWIL
liefen gleichzeitig.

`02_Bauelemente/` systematischer Teil (209 Dateien, Sektion `01_Konstruktion`) vollständig
gesichtet. Zwei Wiki-Artikel: [[phaenomen-eingang-typologie-schwellenraum-eth-schwartz]]
(Schwellen-Typologie, ETH-Vorlesung Tragwerksentwurf, Prof. Schwartz) und
[[pilzdecken-fruehgeschichte-schweiz-maillart-giesshuebel]] (Einzelfakt aus urheberrechtlich
geschütztem Essay-Heft, sinngemäss, kein Wortlaut). Bewusst nicht destilliert: eigene
Studienarbeit Raphael Jans (HTA 2007), private E-Mail-Korrespondenz 2009 (kein
Sperrlisten-Fund im engeren Sinn, aber private Korrespondenz — nicht übernommen), ein
deutsches Dachdecker-Fachmagazin (Hersteller-Marketing), diverse Bildscans ohne Textebene.
Details `raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt
«Destillat-Fortschritt — Ergänzung 2026-08-30», reiner Append. Weiterhin offen:
`04_Bauphysik_Energie` (153 Dateien, Bauphysik I–III ETH) — letzte offene P2-Position dieser
Sektion. Register `wiki/INDEX.md` nachgeführt.

## 2026-08-30 — P2-Lauf Korpus `buero-referenzen`, Sektion `18_Projektkostenplanung` abgeschlossen (Lane FACHWISSEN, Station MacBook Pro)

Dispatch-Auftrag dieses Laufs beschrieb erneut fälschlich «kein Destillat, keine Spec,
2 Wiki-Artikel» für die gesamte KB — siebtes belegtes Beispiel desselben veralteten
Dispatch-Musters (Memory `project_fachwissen-dispatch-loop`). Tatsächlicher Stand vor
Laufbeginn: beide Specs bestehen, P1 ist über beide Korpora vollständig destilliert, die KB
führte bereits 139 Wiki-Artikel. **Zusätzlicher Befund:** zeitgleich lief auf Station
Macmini ein weiterer Lauf derselben Lane am Korpus `archiv-fachwissen` (Sektion
`01_Konstruktion`, Commit `647db11ab`, 00:32 Uhr) — um keine Kollision auf demselben Korpus
zu riskieren, hat dieser Lauf stattdessen den **anderen** Korpus (`buero-referenzen`, P2)
bearbeitet. Die Annahme im Dispatch-Text «Du bist die EINZIGE Lane, die hier schreibt» ist
damit widerlegt: mindestens zwei Stationen können gleichzeitig unter Lane FACHWISSEN
laufen. Empfehlung an Raphael: Dispatch-Koordination zwischen Stationen prüfen, bevor die
Lane erneut parallel ausgelöst wird.

Bearbeitet: die fünf verbliebenen P2-Positionen der Sektion `18_Projektkostenplanung`
(Korpus `buero-referenzen`), damit ist diese Sektion für P1 **und** P2 abgeschlossen:

- **Personaleinsatzplanung/Honorarkalkulation EFH Allgaier**
  (`03_Buero_Projektkostenplanung/Allgaier/`, Büro Christian Kerez, Stand 24.05.2005) →
  [[personaleinsatzplanung-rollen-projektphase-honorarkalkulation-efh-allgaier]]. XLS mit
  `xlrd` gelesen (kein `pandas`/`libreoffice` auf dieser Station; `pip install --user xlrd`
  nachinstalliert). Rollen-Prozentsatz-Matrix (Büroinhaber/Projektleiter/Praktikant) über
  die Projektphasen, hochgerechnet auf Personenmonate (Total 23.318), plus eine
  Honorar-Faustformel Lohnansatz × Unkostenfaktor (CHF 5'000 × 2.0 = CHF 10'000/Monat).
  **Vierte unabhängige Bestätigung der SIA-102:2003-Phasenanteile** (9/21/2.5/18/16/29/4.5 %)
  gefunden und in `wiki/sia-102-2003-phasenanteile-zwei-rechenwerke.md` nachgetragen (Titel
  und Rechenwerk-Tabelle aktualisiert, «drei» → «vier» Rechenwerke). Die Datei selbst ist
  intern widersprüchlich (vier nicht zueinander passende Honorarzahlen, `#DIV/0!`-Zellen) —
  im neuen Artikel ausdrücklich als Struktur-Vorbild geführt, nicht als verlässlicher
  Kennwert.
- **Baunebenkosten/Anlagewert/Anlagekosten** (`01_Baukostenplan/Fachbegriffe/
  100122_Fachbegriffe_Baunebenkosten.pdf`) → kurzer Glossar-Artikel
  [[baunebenkosten-anlagewert-anlagekosten-definitionen]], `status: speculative` (Quelle im
  Originaldokument nicht genannt). Cross-Check gegen
  [[honorarberechtigte-bausumme-anrechenbarkeit]] (BKP 5/7 = 0 % honorarberechtigt) bestätigt
  sich gegenseitig, kein Widerspruch.
- **Nachtragskredit-Mechanik öffentlicher Baukostenabrechnungen**
  (`06_Phasen_Kostenaufstellungen/00_Uebersicht_Zusammenfassungen/hw_GRPR_20_2007.pdf`,
  Gemeinderatsprotokoll Balzers FL, 19.12.2007) →
  [[oeffentliche-kreditabrechnung-nachtragskredit-mechanik-balzers-fl]]. Nur die
  Kredit-/Nachtragskredit-Mechanik destilliert (drei durchgerechnete Beispiele:
  zwei Überschreitungen, eine Unterschreitung); die im selben Protokoll enthaltenen
  Personendaten Dritter (Einbürgerung, Ehrennadel-Verleihung mit Privatadressen) sind kein
  Kostenplanungs-Inhalt und wurden **nicht** destilliert, auch nicht ins Inventar erneut
  aufgenommen. Ausdrücklich als Fürstentum-Liechtenstein-Recht gekennzeichnet, nicht als
  Schweizer Submissionsrecht.
- **`04_Honorarberechnung/Thalhofer/100201_Honorarberechnung.pdf`** — Registerabgleich ergab:
  bereits am 29.08.2026 im SIA-102-Artikel destilliert, keine neue Arbeit nötig, nur zur
  Klarstellung im Inventar vermerkt.
- **`01_Baukostenplan/BKP/PDF/100223_Zusammenf_BKP_A6.pdf`** — bewusst nicht destilliert.
  Einseitige BKP-Kurzübersicht ohne Ausgabevermerk, mit zwei Tippfehlern, laut Inventar
  selbst «nur Formvorbild, nie Codequelle»; kein über `references/bkp-2017/` hinausgehender
  Mehrwert.

Fortschritt in `raw/inventar/buero-referenzen__18_Projektkostenplanung.md` Abschnitt
«Destillat-Fortschritt (P2, ...)», reiner Append (`git diff --numstat` 33/0 geprüft).
`wiki/INDEX.md` und `wiki/QUESTIONS.md` nachgeführt, `skills/wissens-destillat/KORPUS-QUEUE.md`
ebenso.

## 2026-08-30 — Neunzehnter Lauf: Sektion `01_Konstruktion`, zweiter P2-Lauf (Lane FACHWISSEN)

Erster gezielter P2-Lauf der Sektion `01_Konstruktion` (nach dem P1-Vollabschluss vom
29.08.2026). NAS-Mount während des gesamten Laufs stabil, keine Ausfälle. Zwei der vier
Auftrags-Positionen destilliert, drei neue Wiki-Artikel:

- **Deckenaufbauten-Vergleichsstudie**
  (`02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/ResearchDeckenstruktur.pdf`)
  → [[deckenaufbauten-vergleichsstudie-lichte-raumhoehe-konstruktionsraster]]. Da reine
  `pypdf`-Text-Extraktion die bemassten Zahlen nicht eindeutig den Massachsen zuordnete, wurden
  alle neun Seiten zusätzlich mit PyMuPDF bei 200 dpi gerendert und visuell gelesen. Lichte
  Raumhöhe und Konstruktionsraster-Profilmasse von neun realisierten Bauten (R. Schwarz, SANAA,
  Von Ballmoos Krucker, Mendes da Rocha × 3, Caruso St John, Herzog & de Meuron, Maja Lalić).
  Zwei h-Werte im Original ohne Dezimaltrennzeichen beschriftet und deshalb im Artikel
  ausdrücklich als unsicher markiert, nicht stillschweigend geglättet.
- **Lüftungsgrundlagen/CO2-Kennzahlen** (`01_Technische_Inst_I_II/02_Vorlesungsfolien/
  110916_Webseite/03_Luftung.pdf`, ETH-Vorlesung Prof. H.-J. Leibundgut, August 2008) → zwei
  Artikel: [[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]] (Aufgaben
  der Lüftung, CO2-Physiologie, pAR-/fAR-Tabellen) und
  [[lueftungssystematik-zuluftfuehrung-waermerueckgewinnung-eth-leibundgut]] (Zu-/Abluftführung,
  Quell-/Verdrängungs-/Mischlüftung, vier WRG-Bauarten mit Rückwärmezahlen). Die im Inventar
  behauptete Textebene wurde am Original selbst verifiziert (nicht blind übernommen), Befund
  bestätigt sich (41 Seiten, 30'192 Zeichen laut `pypdf`). **Norm-Diskrepanz entdeckt:** die
  Folie zitiert die fAR-Tabelle «nach SIA 384/1», der aktuelle Registerstand in `wissen/normen`
  weist SIA 384/1:2022 jedoch als Heizungsanlagen-Norm aus, die Lüftungsauslegung läuft heute
  über SIA 382/1:2014 — als offener Punkt im Artikel und in `wiki/QUESTIONS.md` #61 vermerkt,
  nicht stillschweigend gleichgesetzt.
- **Nicht destilliert, aus Zeit-/Budgetgründen zurückgestellt:** `04_Bauphysik_Energie/
  02_Skripte`, `01_Vorlesungsfolien`, `03_Uebungen` (153 Dateien, Bauphysik I–III ETH Zürich)
  und der systematische Teil von `02_Bauelemente/` (209 Dateien) — beide für den nächsten
  P2-Lauf dieser Sektion vorgesehen.
- **Sperrliste-Prüfung:** keine neuen Funde, keine der sechs gesperrten Positionen berührt.
  `06_Construction_Caruso/` nicht erneut technisch geprüft (Erst-Sweep-Befund «keine
  Textebene» übernommen, nicht neu verifiziert).
- Fortschritt in `raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt
  «Destillat-Fortschritt», reiner Append (`git diff --numstat` 46/0 geprüft). `wiki/INDEX.md`
  (42/0) und `wiki/QUESTIONS.md` nachgeführt.

## 2026-08-29 — Achtzehnter Lauf: Sektion `02_Gestalt_Kulturverstaendnis` P2 abgeschlossen (Lane FACHWISSEN)

Dispatch-Auftrag dieses Laufs beschrieb wiederum fälschlich «kein Destillat, keine Spec,
2 Wiki-Artikel» für die gesamte KB — sechstes belegtes Beispiel desselben veralteten
Dispatch-Musters (Memory-Eintrag `project_fachwissen-dispatch-loop`). Tatsächlicher Stand:
beide Specs bestehen, P1 ist über beide Korpora vollständig destilliert, die KB führt bereits
über 50 Wiki-Artikel. Lauf hat sich am realen Stand orientiert (`KORPUS-QUEUE.md`,
`wiki/INDEX.md` siebzehnter Lauf) und die drei dort als offen vermerkten P2-Positionen der
Sektion `02_Gestalt_Kulturverstaendnis` bearbeitet:

- Alle 45 eigenen Begriffe-DOCX-Texte in `03_Begriffe_der_Architektur` identifiziert, die 39
  seit den ersten beiden Läufen ungelesenen per `textutil -convert txt` volltextlich
  extrahiert und gelesen (NAS gemountet, keine Datei verändert oder verschoben).
- Neun Positionen mit belegbarem Eigenwert destilliert: drei neue Beispiele + drei neue
  Zitate im bestehenden Artikel [[begriffsapparat-kant-sprachstil-pruefraster-jans]] (Heinrich
  von Gent/Kunst und Architektur, Alberti/Mischen, Zürcher Milieus; Rowe/Kepes-Transparenz,
  Dudler, Jans-2013-Eigenreflexion), drei neue eigenständige Artikel
  [[raumplan-adolf-loos-oekonomische-begruendung]], [[praesenz-begriff-olgiati-lyotard]],
  [[manhattanismus-koolhaas-monumentalitaet]], und ein gebündeltes Glossar
  [[architekturbegriffe-glossar-serliana-architecture-parlante-stadtbegreifen]] (Serliana,
  Architecture parlante, Stadtbegreifen — Autorschaft dieses dritten Begriffs ungeklärt,
  `QUESTIONS.md` #59). Ein Zusatzfund (Moravánszky-Forschungsexposé zur Stoffwechsel-
  Ideengeschichte) als neuer Abschnitt in den bestehenden Artikel
  `materialwahrheit-stoffwechseltheorie-semper-urtechniken.md` eingefügt.
- Rund 25 Texte waren zu dünn (Einzelsätze, Wörterbucheinträge, Namenslisten) oder fachfremd
  (allgemeine Philosophie ohne Bauwerksbezug, eine tagespolitische Notiz) und wurden bewusst
  nicht destilliert. Ein Text (`École_des_Beaux_Art_Typologie`) als wörtliche
  Wikipedia-Übernahme identifiziert und wie die bereits als `X` triagierten Ausdrucke
  behandelt, nicht destilliert.
- Die beiden übrigen ursprünglich offenen Positionen (Booklet-/Plakatdarstellungs-Beispiele)
  bestätigt als keine Destillationskandidaten (Triage: «nur Anschauung, nicht Inhalt»).
- **Datenschutz/Sperrliste:** kein Sperrlisten-relevantes Material gefunden (Verträge,
  Bewerbungen, Personaldossiers, Adress-/Kontaktsammlungen, Lohn-/Honorardaten,
  Gesundheits-/Privatunterlagen). Eine Notiz mit tagespolitischem Bezug zu einer deutschen
  Partei ist keine Personendatenverletzung, wurde aber als fachfremd nicht destilliert.
- Fortschritt in `raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md`, reiner
  Append (`git diff --numstat` 45/0 geprüft). `wiki/INDEX.md` und `wiki/QUESTIONS.md`
  nachgeführt.

**Damit ist die Sektion `02_Gestalt_Kulturverstaendnis` — die ertragsstärkste Position der
gesamten Trägerschicht — für P1 UND P2 vollständig destilliert.** Der Entscheidungspunkt
Raphaels (P2 systematisch fortsetzen vs. Phase-0-Nachholung für die 12 offenen Sektionen,
`QUESTIONS.md` #1/#58) bleibt unverändert offen; dieser Lauf hat ihn nicht präjudiziert,
sondern lediglich die bereits begonnene Sektion zu Ende gebracht.

## 2026-08-29 — Siebzehnter Lauf: erster P2-Destillat-Lauf nach P1-Meilenstein (Lane FACHWISSEN)

Dispatch-Auftrag dieses Laufs beschrieb erneut fälschlich «kein Destillat, keine Spec» für
die gesamte KB — tatsächlicher Stand: beide Specs bestehen, P1 ist seit dem sechzehnten
Lauf über beide Korpora vollständig destilliert, offen sind nur P2 (über 700 Positionen)
und die Phase-0-Nachholung für 12 Sektionen (Entscheid Raphael, `QUESTIONS.md` #1). Fünftes
belegtes Beispiel desselben veralteten Dispatch-Musters (Memory-Eintrag
`project_fachwissen-dispatch-loop`).

Da die Phase-0-Frage explizit Entscheid Raphaels ist, hat dieser Lauf stattdessen mit der
P2-Destillation begonnen: Sektion `02_Gestalt_Kulturverstaendnis` (ertragsstärkste Sektion
der gesamten KB), zwei von fünf P2-Positionen bearbeitet:

- Bauwelt-36/2012-Themenheft «Muss München dichter werden?» (18 PDF unter
  `03_Begriffe_der_Architektur/Dichte/`) → [[dichte-typologien-vergleich-muenchen-bauwelt-2012]]:
  vier von sieben Stationen der «Dichte-Rundfahrt der Bauwelt» mit belegten Kennzahlen
  (Geschossflächenzahl, Wohnungsanzahl, Geschossfläche je Station: Borstei, Studentenwohnheim
  Olympisches Dorf, Hofstatt, Welfenhöfe). Drei Stationen (Pasing Arcaden, Ackermannbogen,
  Neuperlach) liessen sich per Text-Extraktion nicht eindeutig ihren Kennzahlen zuordnen und
  wurden bewusst nicht übernommen (offener Punkt `QUESTIONS.md` #57). München ist
  Deutschland-Kontext, `status: speculative`, ausdrücklich kein CH-Ausnützungsbeleg.
- Allreal-Investorenpräsentation «Gestaltungsplan für das Richti-Areal in Wallisellen»
  (26.05.2009, aus der Position `02_Architekturdisskurs/11_Stadtwanderung/`) →
  [[gestaltungsplan-verfahren-kennzahlen-richti-areal-wallisellen-allreal-2009]]: sechsstufiger
  Verfahrensablauf (Testplanung mit vier Büros und Fach-/Sachjury → Richtprojekt →
  Projektstudien je Baufeld mit fünf weiteren Büros → Gestaltungsplan mit UVB →
  Gemeindeversammlung 23.06.2009 → etappierte Realisation), belegte Flächenbilanz
  (43 % bebaut / 30 % Grün / 27 % Erschliessung) und Nutzungsverteilung
  (Wohnen 35 % / Dienstleistung 55 % / Gewerbe 10 %) sowie Kennzahlen je Baufeld. Dritter
  belegter Gestaltungsplan-Fall dieser KB neben Zollstrasse Ost (SBB) und Naturmuseum
  St. Gallen, erstmals mit privatem statt öffentlichem Verfahrensträger. Der 69-seitige
  Situationsplan derselben Position und der Ordner `Zuerich_City_West` lieferten keine
  zuverlässig zuordenbaren bzw. keine eigenständigen Zahlenwerte — nicht destilliert.

Fortschritt in `raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md` als reiner
Append-Abschnitt (`git diff --numstat` 38/0 geprüft, kein Eingriff in bestehende Zeilen).
`wiki/INDEX.md` und `wiki/QUESTIONS.md` (#57, #58) nachgeführt. Kein Sperrlisten-Fund in den
gelesenen Quellen (veröffentlichtes Verlagsheft, Investoren-Präsentation, keine
Personendaten Dritter). P2 dieser Sektion bleibt zu drei Positionen offen; die übrigen
Sektionen der KB sind auf P2 noch nicht gesichtet — Entscheid für den nächsten Lauf bleibt,
wie im sechzehnten Lauf festgehalten, offen (P2 systematisch fortsetzen oder Phase-0-
Nachholung).

## 2026-08-29 — Sechzehnter Destillat-Lauf: MEILENSTEIN P1 beider Korpora vollständig (Lane FACHWISSEN, Fortsetzung)

Letzte P1-Position der Sektion `01_Innenarchitektur` (1 P1 von 396 Dateien) gelesen, verifiziert
und zu einem Wiki-Artikel destilliert, `status: emerging`:

- [[gastronomieausbau-kostendatenpunkt-vorderer-sternen-zuerich]] — Kostendatenpunkt Gebäude
  CHF 10,1 Mio. / Gastronomieausbau CHF 2,8 Mio., «Vorderer Sternen» Zürich 2013, vollständige
  Planerkette; kein rechenbarer m²-Kennwert mangels Bezugsfläche

Fortschritt in `raw/inventar/archiv-fachwissen__01_Innenarchitektur.md` Abschnitt
«Destillat-Fortschritt» (append-only, `git diff --numstat` zeigt `8 0`).

**Damit ist P1 über sämtliche inventarisierten Sektionen BEIDER Korpora (`buero-referenzen` und
`archiv-fachwissen`) destilliert** — die KB zählt aktuell 125 Wiki-Artikel unter `wiki/`
(`ls wissen/architektur-fachwissen/wiki/*.md` ohne `INDEX.md`/`QUESTIONS.md`, verifiziert
29.08.2026). Verbleibende Sektionen ohne P1 (`wiki/INDEX.md` «Ohne P1»/«Ohne Ertrag») werden nicht
destilliert; vier davon (`04_Politik`, `05_Kultur_Gesellschaft_Stil`, `06_Reisen`,
`07_Religion`) bewusst wegen Privatunterlagen-Vorbehalt ausgeklammert. Gemäss Queue-Regel bleibt
der Korpus dennoch nicht «erledigt»: P2 (über 700 Positionen kumuliert) und die Phase-0-Lücke
für 9 `buero-referenzen`- und 3 `archiv-fachwissen`-Sektionen sind offen. `KORPUS-QUEUE.md`
nachgeführt mit einem expliziten Entscheidungspunkt für den nächsten Lauf.

## 2026-08-29 — Fünfzehnter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Bibliothek` (Lane FACHWISSEN, Fortsetzung)

Beide P1-Dateien der Sektion `02_Bibliothek` (6'947 Dateien, davon nur 2 P1 — die Sektion ist
überwiegend Bibliotheksverwaltung, kein Fachwissen) gelesen und zu drei Wiki-Artikeln
destilliert, alle `status: emerging`:

- [[grundrisskompendium-wohnhochhaeuser-eth-hs14]] — 24 Referenzobjekte Wohnhochhaus-Typologie
  (ETH HS14, Prof. Märkli/Peter), drei vertiefte Fälle (Lake Shore Drive Mies, Mirador MVRDV,
  Zölly Zürich) mit Erschliessungs-/Grundrisskennwerten
- [[zuercher-hochhaus-staedtebau-gespraech-gmuer-meili-peter]] — Gespräch Gmür/Meili/Peter 2014
  zu Hochhausleitbild, Verhandlungsurbanismus, Baukollegium und Toni-Areal-Fallbeispiel, **mit
  ausdrücklicher Warnung**, dass die 300-%-Ausnützung/kein-Zweistundenschatten-Vorgabe der
  Semesteraufgabe eine didaktische Fiktion und keine reale Zürcher Rechtslage ist
- [[neufert-architects-data-fundstelle-bibliothek]] — reiner Fundstellen-Verweis auf den
  638-seitigen Neufert-Scan (keine Textebene, Ausgabe nicht bestimmbar), kein
  Inhalts-Digest wegen Urheberrecht

P1 der Sektion damit vollständig, P2 (320 Positionen: 287 Seminarreise-Reader, INSA-Inventar
mit SEALS-Lizenzvorbehalt, Bestandslisten-Kanon Professur Schwartz, Bibliothekssystematik,
Hochparterre-Sanierungsbeilage) bleibt bewusst offen. `raw/inventar/
archiv-fachwissen__02_Bibliothek.md` um Abschnitt `## Destillat-Fortschritt` ergänzt
(append-only, `git diff --numstat` zeigt `13 0`). `Passwort.docx` weiterhin ungeöffnet und
gesperrt, kein neuer Sperrlisten-Fund. `KORPUS-QUEUE.md` nachgeführt.

## 2026-08-29 — Vierzehnter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architektur_Vermitteln` (Lane FACHWISSEN, Fortsetzung)

Alle drei P1-Dateien der Sektion `02_Architektur_Vermitteln` (Hochschulskripte HTA Luzern,
Kontextmodul II, SS 06) vollständig gelesen (je 19 Seiten, Textextraktion `pypdf`) und zu drei
Sach-Artikeln destilliert, alle `status: emerging`:

- [[protokoll-methodik-sechs-protokollarten-sprachregeln]] — sechs Protokollarten mit
  Beweiskraft, Protokollrahmen (Kopf/Schluss), Sprachregeln (Konjunktiv I/II in indirekter
  Rede), Bezug zu `protokoll`/`pendenzenliste`
- [[interne-externe-kommunikation-musterbriefe-mit-funktionsglossen]] — Mängelrüge-Dramaturgie
  mit Erledigungsvorschlag, Offerten-Pflichtfelder, Beschwerdebrief-Muster, vier E-Mail-Regeln;
  Bezug zu `unternehmerkontrolle`, `offertenpruefung`, Agent `email`
- [[sitzungsmoderation-organonmodell-harvard-methode]] — Prozessschema Sachgespräche,
  Diskussionsleitung mit Drei-Verwarnungen-Regel, Moderationsrolle als Dienstleistung,
  Harvard-Methode vier Grundsätze inkl. der beiden im Skript benannten Grenzen

P1 der Sektion damit vollständig, P2 (13 Positionen) bleibt bewusst offen. `raw/inventar/
archiv-fachwissen__02_Architektur_Vermitteln.md` um Abschnitt `## Destillat-Fortschritt`
ergänzt (append-only, `git diff --numstat` zeigt `11 0`). Kein neuer Sperrlisten-Fund — die im
Phase-0-Inventar bereits als Personendaten-Risiko markierten studentischen Titelblätter (P3)
bleiben gesperrt und wurden nicht geöffnet. `KORPUS-QUEUE.md` nachgeführt.

## 2026-08-29 — Dreizehnter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `00_Allgemein` (Lane FACHWISSEN, Fortsetzung)

**Vorbemerkung zum Dispatch:** Der Auftrag dieses Laufs beschrieb einen veralteten
Ausgangszustand (angeblich noch keine Spec, nur 2 Wiki-Artikel, 43 Inventardateien ohne
Destillat) — tatsächlich lagen zu Laufbeginn bereits beide Korpus-Specs, 118 Wiki-Artikel und
zwölf abgeschlossene Destillat-Läufe vor (`KORPUS-QUEUE.md`). Gleiches Dispatch-Loop-Muster wie
bei den Lanes NORMEN-PRUEFSTAND, BAURECHT-THALWIL, GROBKOSTEN und SYNOBSIS (Memory
`project_*-dispatch-loop.md`); hier erstmals für Lane FACHWISSEN dokumentiert. Der Lauf hat
sich am tatsächlichen `KORPUS-QUEUE.md`-Stand orientiert und dort fortgesetzt, wo der zwölfte
Lauf endete: Sektion `00_Allgemein`.

Alle drei P1-Positionen der Sektion `00_Allgemein` (Meta-Ebene des gesamten Archivs: Konzeptpapier
plus Strukturfotos, 2007-2011) gelesen und zu zwei Sach-Artikeln destilliert, beide
`status: emerging`:

- [[fachsystematik-14-kapitel-gliederungsraster-jans]] — eigenes vierzehnteiliges
  Gliederungsraster des architektonischen Fachwissens von Raphael Jans (2011), Kapitel 1
  Entwerfen und Kapitel 14 Normen/Gesetze am weitesten ausgearbeitet; Vorwegnahme von
  `wissen/architekten-synobsis` unter Kapitel 6.4.
- [[archiv-ordnerschluessel-24-hauptordner-strukturfotos]] — die 24 Hauptordner (00-26,
  Lücken bei 05/08/12) als Landkarte für die weitere Inventarisierung dieses Korpus, mit
  belegtem Fund eines Nummerierungsfehlers bei den Unterordnern 07-09 von
  `15_Architekturvisualisierung` (Ordnernummer und Inhalt stimmen dort nicht überein).

P1 der Sektion damit vollständig, P2 (eine Datei) bleibt bewusst offen. `raw/inventar/
archiv-fachwissen__00_Allgemein.md` um Abschnitt `## Destillat-Fortschritt` ergänzt (append-only,
`git diff --numstat` zeigt `9 0`). Keine Sperrlisten-Funde (Vertrag/Bewerbung/Adress-/Lohndaten) —
Sektion war bereits im Inventar als unbedenklich geprüft. `KORPUS-QUEUE.md` nachgeführt.

## 2026-08-29 — Zwölfter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Tragwerk` (Lane FACHWISSEN, Fortsetzung)

Alle vier P1-Dateien der Sektion `01_Tragwerk` (Arbeitsbestand Assistenz bei
Prof. Dr. Joseph Schwartz, ETH Zürich, 2008-2011) gelesen und zu zwei Sach-Artikeln
destilliert, beide `status: emerging`:

- [[grubenmann-kirchen-holzdachstuhl-typologie]] — drei Holzdachstuhl-Dispositive der
  Gebrüder Grubenmann (liegend mit Hängesäulen, Firstträger längs, diagonal verschränkte
  Querbinder) mit datierten Referenzbauten Ostschweiz/ZH 1723-1780, Kennwerte Kirche
  Wädenswil (18 x 35 m, 6.50 m Hauptbinder), Killer-Konstruktionsschnitte mit
  Vollholz-Querschnitten, Bauabrechnung 1767 (54'873 Gulden) als historische Kostenkuriosität
- [[tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau]] — Schwartz' Argumentation
  Plastizitätstheorie («Zürcher Schule», Thürlimann) gegen den Elastizitätstheorie-
  «Schutzwall» (Zitate Menn 1996, Polónyi, Torroja 1961), Dreiklang Transparenz/Stringenz/
  Leichtigkeit im Brückenbau anhand des Menn-Brückenpaars Letziwaldbrücke/Crestawaldbrücke

Von der 191-seitigen Killer-Dissertation (ETH-E-Collection, öffentlich) nur die bereits als
Einzelseiten vorliegenden S. 140-141 gelesen; die Knotenpunkt-Details (Streckbalken-
Auflager, Hängesäule-Untergurt-Verbindung) bleiben P2 für einen künftigen Lauf. Kein neuer
Datenschutz-Fund über den im Phase-0-Inventar dokumentierten Stand (Arbeitszeit-Unterlagen,
persönlicher Schriftverkehr, Teilnehmerlisten mit Kontaktdaten) hinaus — alle bereits
korrekt als `X` bzw. Sperrvermerk geführt.

**Damit ist Sektion `01_Tragwerk` für P1 vollständig destilliert** (P2, 31 Positionen,
bleibt offen). `wiki/INDEX.md` und die Inventardatei nachgeführt. Nächste Position gemäss
Ertrag-Tabelle: `00_Allgemein` (3 P1).

## 2026-08-29 — Elfter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Landschaftsarchitektur` (Lane FACHWISSEN, Fortsetzung)

Alle vier P1-Dateien der Sektion `01_Landschaftsarchitektur` (ETH-Studienarchiv
Landschaftsarchitektur I+II, Vogt-Broschüren 2012) gelesen (`pypdf`, kein
`pdftotext`/Homebrew auf dieser Station) und mit Seitenangabe belegt. Drei der vier
P1-Dateien zu vier Wiki-Artikeln destilliert, alle `status: emerging`:

- [[aussenbelaege-regelaufbauten-vogt-2012]] — Regelaufbauten Kiesweg (Gefälle 2,5-3 %,
  Ebenheit 1,5 cm/4 m), Asphalt (SNV-Verweise), Rasen/Saatgut (RSM Deutschland vs.
  Herstellermischung UFA/OH Schweiz), Wiese, Schotterrasen (FLL-Belastungsklasse 4),
  Rasenpflaster/Natursteinpflästerung
- [[naturstein-materialkunde-bollinger-sandstein]] — Bollinger Sandstein: Mineralbestand
  (30-50 % Quarz, 25-35 % Feldspat), Vorkommen oberer Zürichsee, Schachtabbau in
  Naturschutzgebieten
- [[baumpflanzung-pflanzgrube-kletterpflanzen-typologie]] — Pflanzgrube grosskroniger
  Strassenbaum (6 m²/1,5 m), Pflanzdichte als Gestaltungsfrage, Kletterpflanzen-Typologie
  (Selbstklimmer/Rankpflanzen)
- [[immergruene-sicht-heckenpflanzen-artenliste]] — 13 immergrüne Sicht-/Heckenarten,
  1,5-7 m Endhöhe, Neobiota-Warnhinweis Kirschlorbeer

**Zwei Positionen bewusst nicht als eigener Artikel destilliert:**
- **Dachbegrünung** (`Unterlagen Kolloquium.pdf` S. 3-8) ist ein **Cross-KB-Duplikat** zu
  `wissen/bauprodukte/wiki/dachbegruenung-systeme.md` (dort bereits SIA-312:2013-verifiziert,
  BKP 224/288 zugeordnet). Diese Lane schreibt ausschliesslich in
  `wissen/architektur-fachwissen` und `skills/wissens-destillat/specs/` (Auftrag Raphael
  29.08.2026) und ändert deshalb `bauprodukte` nicht selbst. Ein genuiner Zusatzfakt der
  Quelle (Pflegeaufwand Extensivbegrünung: 1-2 Kontrollgänge/Jahr; Intensivbegrünung
  ausdrücklich «sehr pflegeintensiv») fehlt im bestehenden Artikel und ist als
  Cross-KB-Routing-Hinweis in `wiki/QUESTIONS.md` vermerkt.
- Die im Quelldokument (`Unterlagen Kolloquium.pdf` S. 14) genannten **ZH-Grenzabstände für
  Hecken/Bäume** werden nicht wiederholt: `wissen/baurecht/wiki/umgebungsgestaltung-und-
  einfriedungen.md` führt dieselbe Sache bereits amtlich verifiziert (§§ 169/170/177/178
  EG ZGB) und ist die massgebliche Referenz, nicht diese undatierte Broschüren-Zusammenfassung.

Backlink ergänzt in [[naturstein-oberflaechenbearbeitung-portmann-merkblatt]] (dieselbe
Materialgattung, andere Sache: dort Bearbeitungstechnik-Datierung, hier
Gesteins-/Vorkommenskunde). `wiki/INDEX.md` Zeile 15 und Abschnitt «Artikelbestand»
nachgeführt. Datenschutz-Befund der Sektion (Lieferantenliste mit Klartext-Zugangspasswort,
archivierte Hochschul-E-Mail mit Privatadressen) bereits im Phase-0-Inventar korrekt
dokumentiert, kein neuer Fund, nichts davon erfasst. **Sektion `01_Landschaftsarchitektur`
damit für P1 vollständig destilliert**, P2 (24 Positionen) bleibt offen. Fortschritt in
`raw/inventar/archiv-fachwissen__01_Landschaftsarchitektur.md` Abschnitt
«Destillat-Fortschritt» (reiner Append).

## 2026-08-29 — Zehnter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Entwerfen` (Lane FACHWISSEN, Fortsetzung)

Alle sechs P1-Positionen der Sektion `01_Entwerfen` destilliert (Mittelschicht-Sektion,
Entwurfs-/Farb-/Ornamenttheorie-Archiv HTA/ETH 2000-2021, überwiegend Bildmaterial ohne
Textlayer — der büroverwertbare Kern liegt konzentriert in `22_Grundrisse/Wohngrössen`).
Fünf Wiki-Artikel nach Sache statt Datei, alle `status: emerging`, Quellentexte per `pypdf`
(kein `pdftotext`/Homebrew auf dieser Station) mit vollständigem Textlayer extrahiert und
mit Seitenangabe belegt:

- [[flaechenerfassungsrichtlinie-rfb-stadt-zuerich-bewirtschaftungsplaene]] — Richtlinie für
  Flächenerfassung und Bewirtschaftungspläne der Stadt Zürich (IMMO/AHB), Version 16.0/2013:
  verbindliche Liefertermine nach SIA-102-Phasen, Flucht-/Rettungssymbol-Layer, GF/NGF-
  Systematik nur methodisch referenziert (nicht als eigene Norm-Aussage destilliert)
- [[bauherren-anforderungsprofil-preisguenstiger-wohnungsbau-stiftung-pwg-2016]] — Leitfaden
  der Stiftung PWG Zürich: drei Hebel der Preisgünstigkeit (Fläche/Erstellungskosten/
  Betriebskosten), Grössen-/Belegungstabelle 2.5- bis 5.5-Zimmerwohnungen, Kritik an
  fliessenden Grossraumgrundrissen mit angehängter Küche
- [[guenstiger-mietwohnungsbau-flaechenreduktion-hebel-bwo-halter-pensimo-2012]] —
  BWO/Halter/Pensimo-Studie 2012: kompensatorisches Grundriss-Prinzip, quantifizierte
  Kosten-/Mietwirkung (Erstellungskosten −17,1 %, Miete pro Einheit rund −37 %), umgekehrte
  Kalkulationslogik Landwert→notwendige Miete
- [[wohnungsschluessel-flaechenkennwert-pruefraster-studienauftrag-freilager-albisrieden]] —
  fasst drei Quelldateien zu einer Sache zusammen (Wohnungsschlüssel-Übersicht,
  Kennwerte-Verknüpfungsblatt, Studienauftrag Teilgebiet C Freilager Albisrieden 2010, plus
  Realisierungs-Flächenblatt Mühlethaler 2017): Vierergliederung Anteile-Mix/Ertragsfläche/
  Verkleinerungsregel/Überschreitungsausweis, Prüfung je Einzelwohnung statt nur im
  Durchschnitt
- [[baubeschrieb-checkliste-vollstaendigkeit-steckdosenliste-seesicht-meggen]] —
  Verkaufsbeschrieb Wohnbau Seesicht Meggen (2015) als Vollständigkeits-Checkliste bis zur
  raumweisen Steckdosenliste; Rückverlinkung zu [[baubeschrieb-als-kostentraeger]] ergänzt
  (dort BKP-Kostenträger-Fokus, hier Vollständigkeits-Fokus)

Keine BKP-Codes in den sechs Quellen, daher keine BKP-2017-Prüfung nötig. Kein neuer
Sperrlisten-Fund über die im Phase-0-Inventar bereits dokumentierten vier
Personendaten-Fundstellen hinaus (nicht destilliert, bleiben unbearbeitet). Elf
P2-Positionen bewusst zurückgestellt (Ausbau-Variantenvergleich, Raumtypologie-Vorlesung,
SEALS-Aussenraum-Aufsatz, Wohnweisen-Vorlesungsreihe, zwei Farbe-/Pigment-Glossare,
Farbenlehre-Website, Ornamentik-Literaturliste, eigene Ideentexte, Class-A-Problem-
Vokabular, Ikonographie-Raster). Fortschritt in
`raw/inventar/archiv-fachwissen__01_Entwerfen.md` Abschnitt «Destillat-Fortschritt», reiner
Append (`git diff --numstat` zeigt `38 0`). `wiki/INDEX.md` Tabellenzeile und Artikelbestand
nachgeführt. **Sektion `01_Entwerfen` damit für P1 vollständig destilliert.** Nächste
Position gemäss Ertrag-Tabelle: `01_Landschaftsarchitektur` (4 P1, Datenschutz-Vorbehalt in
einer anderen Datei derselben Sektion).

## 2026-08-29 — Neunter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau` (Lane FACHWISSEN, Fortsetzung)

Alle acht P1-Positionen der Sektion `01_Staedtebau` destilliert (Mittelschicht-Sektion,
Städtebau-Studienarchiv ETH Lampugnani/Christiaanse, 2007-2020). Sechs Wiki-Artikel nach
Sache statt Datei — eine Position (WBP-Berlin-Platzanalyse) als Anwendungsbeispiel in einen
bestehenden Artikelentwurf integriert, zwei Positionen (Blockrand, Aufenthaltsqualität)
thematisch zusammengeführt:

- [[ortsanalyse-raster-plananalyse-platzanalyse-lampugnani]] (`emerging`) — Plananalyse in
  sieben, Platzanalyse in acht Schritten (Professur Geschichte des Städtebaus, Stand 2009),
  plus Anwendungsbeispiel Walter-Benjamin-Platz Berlin
- [[siedlungsstrukturanalyse-terrain-gebaeude-jans]] (`emerging`) — eigene Methode: Terrain
  in sechs Punkten, vier Situierungsmuster, acht Muster der Beziehung Gebäude/Umgebung
- [[projektstart-checkliste-kontext-programm-tektonik]] (`emerging`) — einseitige Checkliste
  Arch+TT WS 07/08, Schlussfrage «Was leistet das Gebäude für die Stadt?»
- [[staedtebau-begriffe-einflussgroessen-bausteine-stadtstruktur-jans]] (`emerging`) —
  Einflussgrössen-Katalog und die Unterscheidung interne/externe Wirkung des Bauvolumens, aus
  dem eigenen «Wörterbuch des Städtebaus» 2011
- [[stadttypen-strassennetz-systematik-jans]] (`speculative`, reines Stichwortblatt ohne
  Fliesstext) — 15 Stadttypen, Strassennetz-Grundmuster
- [[blockrand-aufenthaltsqualitaet-argumentation-verdichtung-jans]] (`emerging`) — zwei eigene
  Haltungstexte (Januar 2014) aus dem Manifest «Die Athmosphärische Stadt»: Blockrand als
  Gemeinschaftsform, «Rechenschaftsbericht der Verzichtsleistungen des Status quo» als
  Verdichtungsargument

Rückverlinkung ergänzt in fünf bestehenden Artikeln (`atmosphaeren-methode-...`,
`standortanalyse-methodik-turbinenplatz`, `gebaeudeanalyse-raster-...`,
`entwurfsbegriffe-struktur-huelle-...`, `bauen-im-bestand-haltungstext-...`). Datenschutz-Sperre
der Sektion (`FactShets_Staedte.docx`, Gruppeneinteilung mit Namen/Mailadressen) nicht
angerührt; der Name des Mitstudierenden aus der WBP-Berlin-Gruppenarbeit erscheint im Artikel
nirgends. Damit ist Sektion `01_Staedtebau` für P1 vollständig bearbeitet, P2 (acht Positionen)
bleibt offen. `wiki/INDEX.md` Zeile 11 und `raw/inventar/archiv-fachwissen__01_Staedtebau.md`
Abschnitt «Destillat-Fortschritt» nachgeführt.

## 2026-08-29 — Achter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Kunst_Geschichte` (Lane FACHWISSEN, Fortsetzung)

Fünf von sechs P1-Positionen der Sektion `02_Kunst_Geschichte` destilliert (die grösste
Einzelsektion des Korpus, 27'649 Dateien, aber mit nur 11 P1-Dateien sehr dünnem Ertrag). Vier
Wiki-Artikel nach Sache statt Datei:

- [[syntaktik-analyse-raster-design-kunst-architektur-sechs-ebenen]] (`speculative`) —
  sechsstufiges semiotisches Analyseraster (Syntaktik/Syntax/Sigmatik/Ausdrucksqualitäten/
  Semantik/Pragmatik) nach Kerner/Duroy, Wilkens, Ching, Fischer
- [[bildanalyse-dreischritt-bestand-komposition-interpretation]] (`emerging`) — Dreischritt
  Bestand/Komposition/Interpretation plus Ittigs Fünf-Schritt-Kurzform «Über Bilder sprechen»
- [[betrachtungsweisen-typologie-quellenmethodik-kunstgeschichte]] (`speculative`,
  Wikipedia-Kompilat) — vier Betrachtungsweisen phänomenologisch/hermeneutisch/
  strukturalistisch/ikonografisch
- [[bestand-umbau-argumentationsvorrat-altbau-als-ressource]] (`emerging`) — sieben belegte
  Literaturfundstellen (Hassler, Sieverts, Herzog & de Meuron u. a.) zur These «Umbau statt
  Neubau», HTA Luzern 2005
- [[systemische-bauobjektanalyse-wirkungsmatrix-vernetztes-denken]] (`emerging`) — fünf
  Analyseschritte Einflussgrössen/Wirkungsmatrix/Aktivitäts-Vernetzungs-Diagramm, HTA Luzern
  2005

**Eine sechste P1-Position bewusst nicht destilliert:** `140706_Protomoderne_Maler.docx`
(eigener Entwurfshaltungstext Raphael Jans, 2014) — Inventar stuft ihn als Stimm-Material für
den Stilkorpus/Twin-Harness ein, nicht als Fachdestillation. Routing-Frage in
`wiki/QUESTIONS.md` #51 vorgelegt, inklusive Inkonsistenz-Hinweis zu einem strukturell
ähnlichen, bereits destillierten Text aus `10_Protomodern`.

Damit ist Sektion `02_Kunst_Geschichte` für P1 vollständig bearbeitet und die gesamte
Trägerschicht-Tabelle (`wiki/INDEX.md`, Zeilen 01-09) abgeschlossen. P2 (1'876 Dateien) bleibt
offen. Kein Sperrlisten-Fund über die bereits im Inventar-Kurzbefund vermerkten drei
Personendaten-Fundstellen hinaus. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Kunst_Geschichte.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `33 0`). Nächste Position gemäss Ertrag-Tabelle:
Mittelschicht, angeführt von `01_Staedtebau` (8 P1).

## 2026-08-29 — Siebter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte` (Lane FACHWISSEN, Fortsetzung)

Alle 11 P1-Dateien der Sektion `02_Architekturgeschichte` destilliert — damit ist die
gesamte Trägerschicht-Tabelle (`wiki/INDEX.md` «Sektionen nach Ertrag», Zeilen 01-09) für
P1 abgearbeitet. Vier Wiki-Artikel nach Sache statt Datei:

- [[gebaeudeanalyse-raster-situation-volumetrie-grundriss-fassade]] (`emerging`) — Vier-
  plus-eins-Analyseraster Situation/Volumetrie/Grundriss/Fassade/geschichtliche Einordnung,
  aus der offiziellen ETH-Prüfungsaufgabe (Kolloquium), der Musteranalyse zu Sempers
  ETH-Hauptgebäude und der Übungsanalyse Haus Steiger
- [[fachglossar-historische-bauteile-kirchenbau-gotik]] (`speculative`, Einzelquelle) — 14
  Kirchenbau-/Gotik-Begriffe mit Definition
- [[tessiner-tendenza-schweizer-architektur-seit-1970-argumentationsfundus]] (`emerging`) —
  Autonomie-These der Tessiner Tendenza und ihre Verschiebung zum Atmosphäre-Begriff
  (Šik, Zumthor, H&dM-Naturgeschichte); nur der Tessin-Teil der Quelldatei, der
  Archigram-Teil (S. 6-8) ist eine andere Sache und bleibt offen
- [[objektliste-architekturgeschichte-datierungen-eth]] (`emerging`) — geprüfte
  Architekten-Objektliste (Tönnesmann/Hildebrand), bestätigt den im Phase-0-Inventar
  vermerkten Datierungsfehler im Semper-Portrait (Titel 1687-1753 falsch, korrekt 1803-1879)

**Technischer Befund:** Auf Station MacBook Pro fehlen `pdftotext`/`poppler` und Homebrew
vollständig. Textlayer-PDFs wurden über `pip install --user pypdf` ausgelesen (keine
Systempakete nötig); ein reiner 26-seitiger Scan ohne Textlayer
(`architekturgeschichte_begriffe_notizen.pdf`) blieb dadurch ungelesen — offen in
`wiki/QUESTIONS.md` #48. Sperrlisten-Prüfung: kein Fund. P2 (rund 160 Dateien) bleibt
vollständig offen. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md` Abschnitt
«Destillat-Fortschritt», reiner Append. `KORPUS-QUEUE.md` nachgeführt. Nächste Position:
`02_Kunst_Geschichte` (11 P1, sehr dünn im Verhältnis zu 27'649 gesichteten Dateien) —
einzige verbliebene Trägerschicht-Zeile.

## 2026-08-29 — Sechster Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern` (Lane FACHWISSEN, Fortsetzung)

Alle 13 P1-Positionen der Sektion `10_Protomodern` destilliert (nächste Position in der
Ertrag-Rangfolge nach `02_Architekturtheorie`, siehe `wiki/INDEX.md` «Sektionen nach
Ertrag»). Die Sektion ist kein Kursarchiv, sondern das private, nie abgeschlossene
Manifest-/Buchprojekt «Protomodern» von Raphael Jans (April 2013 bis Mai 2014); alle 13
Primärquellen im Original gelesen (docx via `textutil`, ein PDF via PyMuPDF, da
`pdftotext` auf dieser Station nicht installiert ist). Elf Wiki-Artikel neu geschrieben
(zwei sachlich zusammengehörige Dateipaare zu je einem Artikel zusammengefasst), alle
`status: emerging`:

- [[protomodern-projektrahmen-professurenlandkarte]] — Projektidee/Zeitrahmen (Biennale
  2012 als Eigensetzung des Projektstarts) und die private Professuren-Landkarte
  «Modern»/«Proto Modern» (rund 40 ETH-Professuren, Stand 2013/14)
- [[protofunktional-begriff-abgrenzung-funktionalismus]] — Leitbegriff der Sektion,
  abgegrenzt vom Funktionalismus des 20. Jahrhunderts
- [[fuenf-punkte-gegenmanifest-corbusier-jans]] — Gegenmanifest zu Le Corbusiers fünf
  Punkten, mit historischen Referenzbauten statt modernistischer Vorbilder
- [[atmosphaeren-methode-ortsanalyse-hardware-software-erlebnis]] — Hardware-/
  Software-Erlebnis-Trennung, Gleichung «Raumatmosphäre minus Sozialsphäre gleich
  autonomer Phänotyp»
- [[backstein-materialargumentation-zwei-ausdrucksarten]] — homogene Wandmasse gegen
  sprechenden Einzelstein
- [[fassadenbeschreibung-methode-laon-rossi-analogie]] — Rossi-Analogie plus
  Fassadenbeschreibungsmuster am Beispiel der Kathedrale von Laon
- [[kerez-forsterstrasse-einkleidung-gegen-semper-stoffwechseltheorie]] — «Einkleidung
  statt Bekleidung» als Umkehrung von Sempers Stoffwechseltheorie
- [[bauen-im-bestand-haltungstext-die-stadt-war-vor-uns-da]] — Gast-Gleichnis als
  Haltungstext zum Bauen im Bestand
- [[rohbauaesthetik-fassadenverteidigung-fussballstadion-zuerich-adi-meyer]] — «andere
  Form von Schatten, nicht andere Form von Form» (Adi Meyer, Vortragsmitschrift 2013)
- [[entwurfs-phasenmodell-leitidee-iterativ]] — Skizze als Absichtserklärung, Leitidee
  als Prüfmassstab
- [[regel-und-ausnahme-stadtentwicklung-schett-jahreskurs]] — Mechanik des
  Stadtwachstums, «die Ausnahme bestätigt die Regel» (Fremdtext Wolfgang Schett,
  Jahreskurs-Anmerkungen 2012)

Fortschritt in `raw/inventar/archiv-fachwissen__10_Protomodern.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt `47 0`).
`wiki/INDEX.md` nachgeführt (reiner Append, `36 0`).

**Kein Fund aus der Sperrliste.** Laut Kurzbefund der Inventardatei enthält die Sektion
keine Verträge, Bewerbungen, Personaldossiers, Adress- oder Honorardaten; vorkommende
Personennamen sind öffentliche Fachpersonen (ETH-Professuren, ein Vortragender, eine
Seminardiskussion) im Rahmen einer Lehr-/Theoriearbeit. In der Laon-Fassadenbeschreibung
auftretende Pseudonyme aus dem Seminarumfeld (nicht identifizierbare Personen) wurden
bewusst nicht in einen Artikel übernommen. Urheberrechtsvorbehalt beachtet: der Fremdtext
Schett und die Vortragsmitschrift Adi Meyer wurden sinngemäss mit Fundstelle
wiedergegeben, nur kurze, gekennzeichnete Kernformulierungen direkt zitiert; eigene
Texte von Raphael Jans durften wörtlich zitiert werden, da kein Drittrecht betroffen ist.

**P2 der Sektion (33 Positionen) bleibt vollständig offen** (u. a. das
Ornament-Forschungskonvolut Sullivan/Di Stefano/Kamphans, das Rowe/Koetter-«Collage
City»-Konvolut, das Šik-Interview, elf weitere kurze Eigen-DOCX). **Damit ist Sektion
`10_Protomodern` für P1 vollständig destilliert.** Nächste Position gemäss
`wiki/INDEX.md` «Sektionen nach Ertrag»: `02_Architekturgeschichte` (11 P1) oder
`02_Kunst_Geschichte` (11 P1, sehr dünn im Verhältnis zu 27'649 gesichteten Dateien).

## 2026-08-29 — Fünfter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie` (Lane FACHWISSEN, Fortsetzung)

Alle 10 P1-Positionen der Sektion `02_Architekturtheorie` destilliert (nächste Position in der
Ertrag-Rangfolge nach `01_Konstruktion` und `02_Gestalt_Kulturverstaendnis`, siehe `wiki/INDEX.md`
«Sektionen nach Ertrag»). Primärquellen durchgehend im Original gelesen (docx via `textutil`,
PDF via PyMuPDF, da `pdftotext` auf dieser Station nicht installiert ist). Acht Wiki-Artikel neu
geschrieben, alle `status: emerging`, Quelle die eigenen, ausformulierten Fragen-Antworten aus der
Vorlesungsreihe Architekturtheorie III/IV (ETH Zürich, Institut gta, Á. Moravánszky / S. Hildebrand,
2011–2014):

- [[tektonik-bekleidungstheorie-boetticher-semper-loos-frampton]] — Kernform/Kunstform (Bötticher),
  Bekleidungstheorie (Semper), Bekleidungsgesetz (Loos), Framptons Tektonik-Begriff gegen die
  Postmoderne, plus die Deplazes-Begriffskonkordanz mit acht Tektonik-Definitionen
- [[materialwahrheit-stoffwechseltheorie-semper-urtechniken]] — Materialwahrheit gegen
  Stoffwechseltheorie, Sempers vier Elemente/vier Urtechniken, Ehrlichkeits-Einwand am Beispiel
  Therme Vals
- [[typus-modell-prototyp-trennschaerfe-architekturtheorie]] — Trennschärfe Typus/Modell/Prototyp,
  typologische Methode nach Durand und Muratori/Caniggia, Herzog & de Meurons Themenfelder
- [[funktionsbegriff-fassadendreiteilung-sullivan-haering-semper]] — fünf Lesarten des
  Funktionsbegriffs, eigene Deutung von Sullivans Fassadendreiteilung als städtebauliches statt
  funktionales Argument
- [[ornament-decorum-angemessenheit-loos-semper-riegl]] — Decorum als Angemessenheitsbegriff,
  Positionen Semper/Riegl/Loos zum Ornament
- [[stilbegriff-geschichte-styling-signatur-brand]] — fünf historische Stilbegriffe
  (Winckelmann/Semper/Riegl/Hübsch/Viollet-le-Duc), Vierteilung Stil/Styling/Signatur/Brand
- [[genius-loci-ort-raum-nichtorte]] — Ort gegen Raum (Lynch), Genius Loci (Norberg-Schulz),
  phänomenologische Methode (Heidegger), Nicht-Orte (Augé)
- [[materialitaet-haptisch-optisch-riegl-bandmann]] — haptisches/optisches Raumverständnis
  (Riegl), Materialität als Bedürfnis-Hemmungswiderstand (Bandmann), Material als Bedeutungsträger
- [[textanalyseraster-19-punkte-architekturtheorie]] — eigenes 19-Punkte-Analyseraster für
  Fachtexte, übertragbar auf Normtexte/Gutachten/Wettbewerbsprogramme
- [[begriffskonkordanz-theoretiker-literaturregister-architekturtheorie]] — Begriffs-Konkordanz
  (Position je Theoretiker), Literaturlandkarte der zehn Vorlesungen; `Sammelmappe1.pdf` als
  Kompilat ohne Eigenwert erkannt und nicht separat destilliert

Fortschritt in `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt
«Destillat-Fortschritt» (reiner Append, `git diff --numstat` zeigt `-0`). Keine Sperrlisten-Funde
(Sektion enthält keine Verträge/Bewerbungen/Adressen/Lohndaten). P2 bleibt vollständig offen (u. a.
rund 190 Vorlesungsmitschriften zu den 23 Einzelvorlesungen, 31 Syllabi, Vorlesungsfolien-Sammel-PDF).
Nächste Position gemäss Ertrag-Rangfolge: `10_Protomodern` (13 P1).

## 2026-08-29 — Vierter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Gestalt_Kulturverstaendnis` (Lane FACHWISSEN, selber Tag, Fortsetzung)

P1-Positionen der Sektion `02_Gestalt_Kulturverstaendnis` bearbeitet, jede Primärquelle im
Original gelesen (nicht nur die Inventar-Zusammenfassung übernommen). Sieben Wiki-Artikel
neu geschrieben, alle `status: emerging`:

- [[typografie-regelwerk-lernskript-jans-2007]] — Makro-/Mikro-Typografie-Regelsatz aus dem
  eigenen «Lernskript Jans Typografie 1» (2007), inkl. belegter Plakat-Schriftgrössen
  (Aufmacher 100 pt, Titel 40-80 pt, nie kleiner 18 pt, max. drei Grössen je Seite), ergänzt
  um Satzspiegel-Konstruktionsprinzipien (Goldener Schnitt, Rasterteilung) aus einem
  Drittmaterial-Merkblatt (HTA Luzern, Müller/Dubs 2008, sinngemäss) und den
  InDesign-Produktionsablauf.
- [[layout-vorgehensmodell-fragestunde-satzspiegel-produktion]] — der vierstufige Ablauf
  Fragestunde → Inhalt → Layout/Satzspiegel → Produktion als übertragbares
  Spec-Erhebungs-Muster; Herkunft beim Gegenlesen als geschichtet erkannt (dieselben fünf
  Fragestunde-Fragen erscheinen bereits wortgleich in einer HTA-Luzern-Unterlage von 2005,
  zwei Jahre vor dem Lernskript-Datum) — deshalb sinngemäss statt wörtlich behandelt, siehe
  `wiki/QUESTIONS.md` #42.
- [[wettbewerbsjury-kapitelfolge-gestaltungsplan-zollstrasse-ost-sbb]] — Jurybericht
  Zollstrasse Ost, Wohnen (SBB, zweistufiger Wettbewerb mit Präqualifikation, Oktober 2014,
  136 S., volltextlich gelesen): kanonische Kapitelfolge sowie der planungsrechtliche Rahmen
  (privater Gestaltungsplan gemäss § 85 PBG auf Basis eines vorgängigen Studienauftrags).
  Gegen den bestehenden Artikel
  [[wettbewerbsverfahren-programmstruktur-vorpruefung-zuschlagskriterien]] geprüft: andere
  Bauherrschaft (SBB statt Kanton/Stadt) und anderer Verfahrenstyp (zweistufig statt
  einstufig) — eigenständiger Befund, kein Duplikat, nur verlinkt.
- [[wettbewerbsbeschrieb-gliederung-staedtebau-struktur-funktion-material-kuessnacht]] —
  Gliederungsmuster Städtebau → Freiraum → Gebäude (Struktur/Funktion/Material) anhand von
  fünf volltextlich gelesenen Küssnacht-Projektbeschrieben (Strandbad Seeburg, 2006).
- [[betontechnologie-schwinden-sichtbeton-betonkernaktivierung-betonforum]] —
  Schwind-/Rissbildungsarten, Sichtbeton-Qualitätsfaktoren und Betonkernaktivierung aus drei
  volltextlich gelesenen Betonforum-Referaten (Leemann/Loser 2007, Leemann/Gartmann 2008,
  Koschenz 2011); Abgrenzung zu den Modellbeton-Artikeln aus `buero-referenzen/10_Modellbauen`
  geprüft und bestätigt (anderer Massstab, keine Überschneidung).
- [[modellfoto-bildregie-perspektive-licht-tiefenschaerfe]] — Entscheidungsfragen
  (Perspektive, Lichtquellen) aus einem Eigentext, ergänzt um Optikregeln aus einer
  gespeicherten, anonymen Internet-Forumsdiskussion (als Drittmaterial unbekannter
  Urheberschaft ausdrücklich gekennzeichnet und nur sinngemäss wiedergegeben).
- [[begriffsapparat-kant-sprachstil-pruefraster-jans]] — Kant-Prüfraster («ein Begriff muss
  auch abgrenzen»), drei belegte Eigentext-Beispiele (Sockel, Ethos, Baukunst/Gestalt) und
  zwei geprüfte Architektenzitate (Märkli, Oswald, beide Novartis-Campus-Kontext,
  Architekturmuseum Basel) als Prüfraster für Vorprojekte. Eigene Nachzählung korrigiert die
  im Phase-0-Inventar genannte Zahl der Begriffsordner (305) auf tatsächlich 598 — Korrektur
  nur im neuen Artikel und in `wiki/QUESTIONS.md` #41 vermerkt, Inventar-Zeilen selbst gemäss
  Spec nicht rückwirkend geändert.

**Bewusst nicht erneut destilliert:** das Raumprogramm Naturmuseum St.Gallen
(`02_Architekturdisskurs/04_Wettbewerbe/Natums/b natmus 09-03-03 raumprogramm(2).pdf`) ist
dieselbe Datei wie die bereits in Korpus `buero-referenzen` destillierte Quelle von
[[raumprogramm-spaltenlogik-sia416-naturmuseum]] — nur verlinkt, nicht neu geschrieben.

**Nicht destilliert, für Folgeläufe offen:** die Schrift-Systematik (9 PDF), die
Plangrafik-Referenzbüro-Auswertung, 21 der 22 Juryberichte/-programme sowie rund 62 der 65
Betonforum-Referate — Details je Position im Abschnitt `## Destillat-Fortschritt` von
`raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md`.

**Datenschutz/Sperrliste:** kein Sperrlisten-relevantes Material beim Lesen der
Primärquellen aufgefallen. `wiki/QUESTIONS.md` um Block 260829 (#41–#44) ergänzt,
`raw/inventar/archiv-fachwissen__02_Gestalt_Kulturverstaendnis.md` um den Abschnitt
`## Destillat-Fortschritt` ergänzt (reine Anfügung, `git diff --numstat` zeigt 0 gelöschte
Zeilen). `wiki/INDEX.md` und `skills/wissens-destillat/KORPUS-QUEUE.md` in diesem Lauf
absichtlich nicht angefasst (zentrale Nachführung durch Raphael wegen parallel laufendem
zweitem Agenten).

## 2026-08-29 — Dritter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `01_Konstruktion` (Lane FACHWISSEN, selber Tag, Fortsetzung)

Alle vier P1-Gruppen der Sektion `01_Konstruktion` bearbeitet, jede Primärquelle im Original
gelesen (nicht nur die Inventar-Zusammenfassung übernommen). Acht Wiki-Artikel neu
geschrieben, alle `status: speculative` (Pflicht für diese Sektion, da sämtliche Norm-/
Kennwertangaben Datumsstände zwischen 1991 und 2010 tragen):

- [[fassadensysteme-typologie-sechs-systeme-hta-luzern]] — sechs Fassadensysteme
  (Pfosten-Riegel, Warmfassade, Kaltfassade hinterlüftet/mit Druckausgleich, SSG,
  Element, Zweite-Haut) mit Konstruktionsprinzip und sieben Systemanbietern.
- [[anforderungskatalog-fenster-fassade-sechs-interessengruppen-gkp]] — sechsteilige
  Gliederung Architekt/Bauherr/Nutzer/Bauphysik/Sicherheit/Bauablauf (gkp fassadentechnik
  ag, 22.04.2008) als Kapitelraster für Devis/Nutzerbedarfsaufnahme.
- [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] — EnFK-Merkblatt
  Fenster (Juni 2009) plus Zeitkonstanten-/Speichermassen-Schichtdaten (Backstein
  aussengedämmt sowie ein datierter ETH-Bestandsaufbau, Prof. Carmeliet, 02.05.2011).
- [[funktionale-ausschreibung-verfahrensmethodik]] — Zeitpunkt-Argument (Ausschreibung
  nach Grundlagenermittlung vs. erst in Ausführungsplanung) für Skill `ausschreibung`.
- [[ahb-planungsgrundlagen-richtlinie-sieben-oekologische-zielvorgaben]] — sieben
  ökologische Zielvorgaben des Amts für Hochbauten Stadt Zürich; Datierungskorrektur zum
  Phase-0-Inventar: Dokument trägt explizit das Datum 12.10.2005, nicht «vor 2002».
- [[fassaden-feuchteschutz-sia-180-unterkonstruktion-dehnung-toleranz]] — Ziele/Nachweise
  des Feuchteschutzes nach SIA 180-1999 plus Unterkonstruktion als Lastübertragung mit
  Dehnungsformel und Toleranzaufnahme.
- [[beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1]] — Geländekategorien
  I–IV und die Regel «zusammengesetztes Element = ungünstigste Einzelklassifizierung»
  (ift-Richtlinie FE-05/1, Mai 2002, **deutsche Richtlinie**, ausdrücklich gekennzeichnet).
- [[materialwahl-argumentationsraster-vier-referenzbaustoffe]] — vier Referenzbaustoffe
  (Holz/Stein/Stahl/Glas) mit Einsatzcharakteristik und Referenzbauten.
- [[lignatur-hohlkasten-holzelemente-dach-deckenkonstruktion]] — Lignatur-Herstellerhandbuch,
  Anwendungstypen Dach und Installationsführung in der Deckenkonstruktion; unabhängig von
  der im selben Unterordner abgelegten Diplomarbeit einer Drittperson destilliert, diese
  selbst weiterhin nicht geöffnet.

**Duplikatsprüfung durchgeführt (Auftrag): `Oblicht.pdf` MD5-identisch in beiden
Korpus-Wurzeln** (`02_Architektur_Archiv/01_Konstruktion/09_Konstruktion/Oblicht.pdf` und
`04_Buero/10_Referenzenbibliothek/09_Konstruktion/Oblicht.pdf`, beide
9fcf428e5afe8335de9b4221754b754b) — Flachdachaufbau-Inhalt daher **nicht** erneut
destilliert, siehe bereits bestehender Artikel [[flachdachaufbauten-vier-typen-textbausteine]].
Das Lignatur-Herstellerhandbuch in derselben P1-Gruppe erwies sich wie vom Auftrag vermutet
als unabhängiger, neuer Inhalt und wurde eigenständig destilliert.

Fortschritt und vollständige Begründung je P1-Position in
`raw/inventar/archiv-fachwissen__01_Konstruktion.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `75 0`). `wiki/QUESTIONS.md` nachgeführt (#37
Sammelvorbehalt Normstand, #38 ift-Richtlinie deutsche Herkunft, #39 P2-Rückstellung
Deckenaufbauten/Lüftungsgrundlagen, #40 ungeprüfte Restdateien der beiden grössten
P1-Gruppen). Kein Fund aus der Sperrliste: `00_Baustoffkonzept/Baustoffadressen` und die
Diplomarbeits-Dateien in `09_Konstruktion/28_Konstruktionaufbauten` (ausser dem
unabhängigen Lignatur-Unterordner) weiterhin nicht geöffnet. `wiki/INDEX.md` und
`skills/wissens-destillat/KORPUS-QUEUE.md` nicht angefasst (zentrale Pflege durch Raphael
laut Auftrag). P2 der Sektion `01_Konstruktion` bleibt vollständig offen.

## 2026-08-29 — Zweiter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II` (Lane FACHWISSEN, selber Tag, Fortsetzung)

Vorab Leutschenbach-Duplikatsprüfung gegen `wiki/INDEX.md` durchgeführt (Pflicht laut
`specs/archiv-fachwissen-spec.md`): mehrere P1-Positionen dieser Sektion sind identische
Dateien oder dasselbe Objekt (Schulanlage Leutschenbach) wie bereits in Korpus 3
destillierte Artikel und wurden nicht erneut destilliert, nur verlinkt.

Vier echte Neuzugänge destilliert, alle Primärquellen im Archiv volltextlich gelesen
(nicht nur die Inventar-Zusammenfassung):

- [[sia-102-2003-phasenanteile-zwei-rechenwerke]] **erweitert** um ein drittes,
  unabhängiges Rechenwerk (Objekt Eberle, Büro Christian Kerez, Honorarberechnung durch
  das Kantonale Hochbauamt vom 26.01.2010) mit vollständigem Teilphasen-Stunden- und
  Honorarapparat (Total CHF 483'600 exkl. MWST). Art.-7.5-Negativliste der Norm selbst
  bewusst nicht reproduziert (SIA-Urheberrecht).
- [[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]] — neu: CRB-
  Musterbeispiel auf drei Genauigkeitsstufen (A/B/C, CHF 1'200'200 / 1'194'800 /
  1'190'700), alle drei Primär-PDF volltextlich verifiziert.
- [[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]] — neu: vollständige eBKP-H-
  Bezugsgrössen-Kürzelliste (rund 70 Einträge), primär gelesen.
- [[terminplan-dauern-kennwerte-wohnungsbau-tabelle8-plus-benchmark-eberle]] — neu:
  Dauern-Kennwerttabelle Wohnungsbau (Institut für Baubetriebslehre Universität
  Stuttgart) plus realer EFH-Grobterminplan (Büro Christian Kerez, Projekt Eberle,
  19.03.2010) als Praxis-Gegenprobe.
- [[akutspital-pflegezentrum-umnutzung-referenzfall-oberdiessbach-2009]] — neu: belegter
  Referenzfall Umnutzung Akutspital→Pflegezentrum (Zweierzimmer-Problem, Kostenrahmen
  rund CHF 19 Mio/93 Pflegeplätze, Verfahrensmechanik ÖBG/ÖBV). Personennamen des
  Preisgerichts und der Experten bewusst nicht destilliert (Sperrliste).

Fortschritt und vollständige Begründung je P1-Position (destilliert / bereits in Korpus 3
vorhanden / Cross-KB-Fund / nicht destillierbar) in
`raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `106 0`). `wiki/INDEX.md` und `wiki/QUESTIONS.md`
nachgeführt (Fragen #33 Cross-KB-Fund Grobkostenmethodik → `wissen/grobkosten`, #34
SIA-451-Testfixture, #35 Chance für `wissen/normen` SIA-102:2003-Volltext, #36 VSS-
Parkierungsgeometrie offen). Kein Fund aus der Sperrliste (Verträge/Bewerbungen/Adressen/
Lohndaten) in den destillierten Positionen; die im Kurzbefund bereits dokumentierte private
E-Mail-Korrespondenz (`SIA102/Thalhofer/100201_Honorarberechnung.pdf`) wurde nicht erneut
angerührt. Norm-Originale (SIA 112/102/416/142/500, VKF, VSS) wurden gemäss Abgrenzung
nicht destilliert, nur als Norm-Original vermerkt. **Sektion `03_Bauprozesse_I_II` (Zeile
01, grösster P1-Einzelfund) damit ohne weiteren offenen eigenständigen P1-Artikel — P2
bleibt vollständig offen.**

## 2026-08-29 — Erster Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Denkmalpflege` (Lane FACHWISSEN, selber Tag, Fortsetzung)

Sieben Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem vollständigen
P1-Cluster der Sektion (8 Positionen, alle acht Quell-PDF direkt gelesen statt nur über
die Inventar-Zusammenfassung):
[[erhaltungswert-bewertung-sia-merkblatt-2017]],
[[denkmalpflege-begriffssystematik-charta-von-venedig]],
[[trockenmauer-devisierung-svtsm-richtlinie]],
[[naturstein-oberflaechenbearbeitung-portmann-merkblatt]],
[[kalk-oelanstriche-rezepturen-glaser]],
[[denkmalpflegerische-baudokumentation-gliederung-haus-jans]],
[[umbau-statt-neubau-kriterienkatalog-hassler]]. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Denkmalpflege.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `-0`). `wiki/INDEX.md` und `wiki/QUESTIONS.md`
nachgeführt (Fragen #31 SIA-2017-Geltungsstand, #32 fünf Grundsätze der Reparatur/P2).

Urheberrechts- und Quellenvorbehalte eingehalten: SIA-2017-Kriterien und Charta-von-
Venedig-Artikel nur sinngemäss mit Fundstelle wiedergegeben, nie im Wortlaut kopiert; die
Charta-Wiedergabe stammt aus einer studentischen Zusammenfassung (Petzet/Mader) und ist vor
Verwendung in einem ausgehenden Dokument am amtlichen ICOMOS-Text zu verifizieren. Zwei
Artikel stützen sich je auf zwei Texte derselben Autorin (Uta Hassler) bzw. auf eine
Parallelfassung derselben Rezeptur (Glaser/rw-Zusammenfassung) — beide Fälle sind im
jeweiligen Artikel als **nicht unabhängige** Zweitquelle ausgewiesen. Keine Preisangabe ohne
Datumsstempel übernommen (undatierte Pigmentpreise in Euro bewusst ausgeschlossen). Kein
Fund aus der Sperrliste (Verträge/Bewerbungen/Adressen/Lohndaten) — Sektion ist ein reiner
ETH-Studienapparat plus eine private Studienarbeit von Raphael Jans.

**Damit ist Sektion `02_Denkmalpflege` (alle 8 P1-Positionen) vollständig destilliert.**
P2 bleibt offen. Nächster Lauf gemäss Spec-Plan: `03_Bauprozesse_I_II` — zwingend zuerst
die Leutschenbach-Duplikatsprüfung gegen `wiki/INDEX.md` Abschnitt «Artikelbestand»
(Korpus 3, `18_Projektkostenplanung`, neun bereits bestehende Artikel).

## 2026-08-29 — Spec-Stufe Korpus `archiv-fachwissen` (Lane FACHWISSEN, selber Tag, Fortsetzung)

`skills/wissens-destillat/specs/archiv-fachwissen-spec.md` neu geschrieben (Vorbild
`buero-referenzen-spec.md`), da Korpus `buero-referenzen` (Korpus 3) in diesem Lauf alle
P1-Positionen fertiggestellt hat und der Auftrag danach zu Korpus 4 übergeht. Kein
Wiki-Artikel in diesem Schritt, kein Inventar verändert — reine Spec-Stufe gemäss
Queue-Regel («kein Destillat ohne Spec»). Kernentscheide der Spec: fünf Ziel-Artikel-Typen
(Denkmalpflege, Kostenermittlungs-/Normmethodik, Entwurfs-/Städtebau-Begriffsapparat,
Tragwerk/Konstruktion, Referenz/Fundstelle); scharfe Norm-Original-Abgrenzung (Korpus
enthält vollständige SIA-/VKF-/VSS-PDFs, die nie destilliert, nur methodisch referenziert
werden); Leutschenbach-Duplikatsprüfung gegen Korpus 3 als Pflichtschritt vor jedem neuen
Artikel aus `03_Bauprozesse_I_II`; Privatunterlagen-Vorbehalt für vier noch nicht
inventarisierte bzw. reisejournalartige Sektionen (`04_Politik`, `05_Kultur_Gesellschaft_Stil`,
`06_Reisen`, `07_Religion`); erster empfohlener Destillat-Lauf `02_Denkmalpflege` (vier
Fachbausteine, kein Duplikatsrisiko). Bei dieser Gelegenheit auffällig gewordene, veraltete
Kennzahl in `KORPUS-QUEUE.md` (Stand 23.08.2026 nannte 4 von 23 Sektionen, tatsächlich
liegen 20 Inventardateien vor) korrigiert und die Zeile entsprechend nachgeführt.

## 2026-08-29 — Sechster bis neunter Destillat-Lauf: alle P1-Positionen des Korpus `buero-referenzen` fertiggestellt (Lane FACHWISSEN, selber Tag, Fortsetzung)

Abgleich von `wiki/INDEX.md` «Sektionen nach Ertrag» gegen `raw/inventar/` (das
Register war seit 23.08.2026 veraltet, Phase 0 war seither auf alle 23 Sektionen
des Korpus gewachsen): fünf weitere Sektionen trugen unbearbeitete P1-Positionen.
Elf Wiki-Artikel neu geschrieben, alle `status: emerging`:

- `12_Masse`: `sanitaerapparate-masstabellen-montagehoehen.md`,
  `nasszellen-achsabstaende-komfortstufen-bedarfszahlen.md` (Apparate-Masstabellen,
  Achs-/Wandabstände MD/MI/MK, hindernisfreie Sanitärräume mit SIA-500-Vorbehalt)
- `21_Rhino`: `rhino-planausgabe-kette-make2d-layout-druck.md`,
  `rhino-freiform-stetigkeit-flowalongsrf.md` (McNeel Training Manuals, Urheberrecht
  beachtet: sinngemäss, nie Wortlaut)
- `08_Karten_Plaene_Weltweit` + `08_Karten_Plaene_Zuerich`:
  `orthofoto-nutzungsbestimmungen-stadt-zuerich-zwei-fassungen.md` — ein Artikel für
  dieselbe Dokumentfamilie in zwei Fassungen (2001/2002), die in beiden Sektionen je
  eine eigene P1-Position war
- `09_Konstruktion`: `flachdachaufbauten-vier-typen-textbausteine.md`,
  `werkplan-textapparat-abkuerzungen-schalungsplan.md` (Drittpläne, Herstellerdaten
  Stand 2007/2008 als Vorbehalt markiert)
- `22_Terminplanung`: `terminplan-phasenkette-oeffentliche-bauherrschaft-leutschenbach.md`,
  `grobterminplan-gewerkefolge-elementbau-leutschenbach.md`,
  `feinterminplan-excel-vorlage-endspurt-baueingabe.md` (Schulanlage Leutschenbach,
  öffentlich ausgeschrieben, sowie eine büroeigene Excel-Vorlage von Raphael Jans)
- `26_Zeichendateien_Vorlagen`: `sanitaerapparate-vectorworks-montagehoehen-referenzblatt.md`

Fortschritt je Sektion im jeweiligen `raw/inventar/buero-referenzen__*.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt durchgehend `-0`,
teils bereits durch den `nas-selfcommit`-Autocommit der Station bestätigt).
`wiki/INDEX.md` nachgeführt.

**Geprüft: alle übrigen Sektionen ohne eigenen Fortschritts-Abschnitt tragen P1 = 0**
(elf Sektionen einzeln per Zählungs-/Summenzeile verifiziert) — nichts offen dort.

**Damit sind alle P1-Positionen des Korpus `buero-referenzen` über sämtliche 23
inventarisierten Sektionen destilliert.** P2 bleibt in jeder Sektion offen; der
Korpus gilt daher gemäss `KORPUS-QUEUE.md` (P1 **und** P2) noch nicht als
«erledigt», aber der dringlichere Teil ist vollständig. `KORPUS-QUEUE.md`
entsprechend nachgeführt. Nächster Schritt gemäss Auftrag Raphael 29.08.2026:
Korpus 4 `archiv-fachwissen`.

## 2026-08-29 — Fünfter Destillat-Lauf Korpus `buero-referenzen`, Sektion `20_Rendering` (Lane FACHWISSEN, selber Tag, mit Nachtrag vollständig erledigt)

Vier Wiki-Artikel neu geschrieben, alle `status: emerging`, aus der ETH-Theoriesektion
(Ordnername irreführend — überwiegend Vorlesungs-/Reader-Material, keine
Rendering-Bibliothek): `entwurfsbegriffe-struktur-huelle-architektur3-eberle.md`,
`strategisches-entwerfen-systematik-etappenprojekte.md`,
`standortanalyse-methodik-turbinenplatz.md`,
`erlaeuterungsbericht-gattungsvorlage-vier-kapitel-diplom2010.md`. Fortschritt in
`raw/inventar/buero-referenzen__20_Rendering.md` Abschnitt «Destillat-Fortschritt»,
reiner Append. `wiki/INDEX.md` nachgeführt.

**Delta-Ehrlichkeit (Zwischenstand dieses Teillaufs, siehe Nachtrag unten für den
Abschluss):** zunächst waren von den neun Architektur-III-Handouts (eine einzelne
P1-Triagezeile) erst zwei Themen (Struktur, Hülle) ausdestilliert; dieser
Zwischenstand wurde bewusst nicht kosmetisch als «erledigt» verbucht. Der
Nachtrag desselben Laufs (unten) schliesst die Sektion vollständig ab.
Urheberrechtsvorbehalt beachtet: universitäres
Lehrmaterial nur sinngemäss mit Fundstelle wiedergegeben, nie im Wortlaut. Bei der
Diplomarbeits-Quelle (Erläuterungsbericht HS 2010) ausschliesslich die Gattungsstruktur
destilliert, keine Autoren-/Studierendennamen übernommen (Spec-Abgrenzung
«Studien-/Diplomarbeiten Dritter sind kein eigenständiger Artikelstoff» eingehalten:
nur das konkrete, verifizierbare Formdetail destilliert, die Arbeit selbst nicht
nacherzählt). Datenschutz-Befund der Inventardatei (Fremdrechnung eines
Render-Dienstleisters, bereits als `X` geführt) nicht angefasst.

**Nachtrag selber Tag, Fortsetzung desselben Laufs:** die restlichen sieben
Architektur-III-Handouts einzeln direkt im Archiv gelesen (nicht nur über die
Inventar-Zusammenfassung). Drei tragen ausformulierten Fliesstext und wurden
destilliert: `lebensdauer-hierarchie-nachhaltigkeit-architektur3.md` (vl1,
fünfstufige Lebensdauer-Hierarchie als Nachhaltigkeits-Entscheidungsinstrument),
`typus-und-charakter-begriffsapparat-architektur3.md` (vl5,
Materialisierungs-Vokabular als Charakterträger),
`programmflexibilitaet-nachhaltigkeit-raumprogramm-architektur3.md` (vl7,
Funktionsbegriff-Kritik und drei Flexibilitätsstrategien). Vier Handouts (vl2, vl4,
vl8, vl9) erwiesen sich als reine Bildlegenden-Arbeitsblätter ohne extrahierbaren
Fliesstext und wurden bewusst nicht destilliert — im Inventar-Nachtrag begründet,
kein weiterer Prüfbedarf. `wiki/INDEX.md` entsprechend korrigiert.

**Damit ist Sektion `20_Rendering` jetzt vollständig destilliert** (7 statt 4
Artikel) und die im Spec-Plan vorgesehene Sektionsfolge vollständig durchlaufen.
Nächster Lauf: `wiki/INDEX.md` neu gegen das Inventar abgleichen — der Korpus
`buero-referenzen` ist noch nicht «erledigt» (P1-einstellige Sektionen und
sämtliches P2 der fünf bearbeiteten Sektionen bleiben offen).

## 2026-08-29 — Vierter Destillat-Lauf Korpus `buero-referenzen`, Sektion `25_Wettbewerb` (Lane FACHWISSEN, selber Tag)

Sechs Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster zweier
öffentlicher Wettbewerbs-/Studienauftragsprogramme 2009 (Zeughaus Ebnet Herisau,
Naturmuseum St.Gallen):
`wettbewerbsverfahren-programmstruktur-vorpruefung-zuschlagskriterien.md`,
`wettbewerbs-teilnahmebedingungen-ausstand-abgabe-urheberrecht.md`,
`honorarmechanik-wettbewerb-oeffentliche-bauherrschaft.md`,
`zeittarif-mechanik-tarifblatt-stgallen-2009.md`,
`raumprogramm-spaltenlogik-sia416-naturmuseum.md`,
`planervertrag-klauseln-oeffentliche-bauherrschaft.md`. Alle 5 P1-Positionen der
Sektion destilliert (Fortschritt in `raw/inventar/buero-referenzen__25_Wettbewerb.md`
Abschnitt «Destillat-Fortschritt», reiner Append). `wiki/INDEX.md` nachgeführt.
**Anonymisierungs-Zusatzprüfung der Spec durchgeführt** (dieser Cluster war laut Spec
zusammen mit `18_Projektkostenplanung` als sensibel markiert): kein Fund einer
Unternehmer-/Bieter-Betrag-Zuordnung, da es sich um Veranstalterprogramme handelt,
nicht um eingegangene Offerten — keine Schwärzung nötig, im Report festgehalten statt
stillschweigend übersprungen. Alle Normverweise (SIA 142:1998, SIA 102:2001/2003,
SIA 112:2003, SIA 416:2003) ausdrücklich als veraltet markiert, nicht als geltendes
Recht referenziert. Kein Fund aus der Sperrliste; die beiden zweckgebundenen DXF
(Löschpflicht nach Projektabschluss laut Datenbegleitdokument) wurden nicht
angefasst. P2 bleibt offen. Nächster Lauf gemäss Spec-Plan: `20_Rendering` — danach
ist die P1-Liste des aktuellen Spec-Plans für `buero-referenzen` vollständig.

## 2026-08-29 — Dritter Destillat-Lauf Korpus `buero-referenzen`, Sektion `17_Projektbeschriebe` (Lane FACHWISSEN, selber Tag)

Fünf Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Schulanlage Leutschenbach: `projektbeschrieb-gattungsvorlage-fachdisziplinen.md`,
`tragwerksbeschrieb-leutschenbach-kennwerte.md`,
`lueftungsvariantenentscheid-praxisfall-leutschenbach.md`,
`fassadenkennwerte-leutschenbach-glasfassade-2004.md`,
`sanitaer-kurzbeschrieb-vorlage-fettabscheider-schwelle.md`. Alle 7 P1-Positionen der
Sektion destilliert (Fortschritt in
`raw/inventar/buero-referenzen__17_Projektbeschriebe.md` Abschnitt
«Destillat-Fortschritt», reiner Append). `wiki/INDEX.md` nachgeführt. P2 bleibt offen.
Firmen-/Planernennung (Joseph Schwartz, Waldhauser Haustechnik, Metall-Bau-Technik u.a.)
zulässig, da abgeschlossenes, öffentlich ausgeschriebenes und publiziertes Bauvorhaben
(SIA-Dokumentation D 0219) — kein Unternehmer-/Bieter-Betrag-Bezug wie im
Projektkostenplanungs-Cluster, daher greift die Anonymisierungs-Zusatzregel der Spec
hier nicht. BKP-Altnummerierung («BKP 250 350» im Sanitärbeschrieb 2003) im Artikel
`sanitaer-kurzbeschrieb-vorlage-fettabscheider-schwelle.md` ausdrücklich als
Sperrvermerk markiert, nicht als BKP-2017-Beleg übernommen. Kein Fund aus der
Sperrliste. Nächster Lauf gemäss Spec-Plan: `25_Wettbewerb`.

## 2026-08-29 — Zweiter Destillat-Lauf Korpus `buero-referenzen`, Sektion `10_Modellbauen` (Lane FACHWISSEN)

Vier Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Betonmodellbau-Rezepturen (Umfeld Christian Kerez) plus Werkstoffliste:
`modellbeton-rezeptur-mischungsverhaeltnisse.md`, `modellbeton-fehlerkatalog-schalung.md`,
`betonschalung-grundlagen-richner.md`, `werkstoffliste-modellbau-vorlage.md`. Alle 12
P1-Positionen der Sektion (6 Fundstellen-Gruppen) destilliert, ein Artikel je Sache statt
je Datei (Fortschritt in `raw/inventar/buero-referenzen__10_Modellbauen.md` Abschnitt
«Destillat-Fortschritt», reiner Append, `git diff --numstat` zeigt `-0`). `wiki/INDEX.md`
Abschnitt «Artikelbestand» nachgeführt. P2 der Sektion bleibt offen. Kein Fund aus der
Sperrliste (Sektion enthält keine Verträge/Bewerbungen/Adressen/Lohndaten); die
personenbezogene Kartonliste 2007 war bereits in Phase 0 korrekt als `X` triagiert und
wurde nicht in ein Erzeugnis übernommen. Nächster Lauf gemäss Spec-Plan:
`17_Projektbeschriebe`.

## 2026-08-29 — Erster Destillat-Lauf Korpus `buero-referenzen`, Sektion `18_Projektkostenplanung` (Lane FACHWISSEN)

Sieben Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Schulanlage Leutschenbach: `kostenermittlungskreislauf-genauigkeit-je-phase.md`,
`sia-102-2003-phasenanteile-zwei-rechenwerke.md`, `kostenkennwerte-schulanlage-leutschenbach.md`,
`honorarberechtigte-bausumme-anrechenbarkeit.md`,
`kostenkontrolle-spaltenmodell-oeffentliche-bauherrschaft.md`, `baubeschrieb-als-kostentraeger.md`,
`bemusterungsentscheid-kostenueberschreitung-praxisfall.md`. 14 von 16 P1-Positionen der
Sektion destilliert (Fortschritt in `raw/inventar/buero-referenzen__18_Projektkostenplanung.md`
Abschnitt «Destillat-Fortschritt», reiner Append). Zwei P1-Positionen bleiben offen
(KV-Detailformvorbild, belegte Kostenschätzung Vorprojekt) — nächster Lauf beginnt dort.

**Nachtrag selber Tag, Fortsetzung desselben Laufs:** die zwei offenen P1-Positionen
nachgeliefert — `kv-detailausdruck-gliederungsstufen.md` (KV-Detailausdruck, fünf parallele
Verdichtungsspalten, Objektteilung Schulhaus/Kindergarten) und
`kostenschaetzung-vorprojekt-schaetzgrundlage-ausweisen.md` (Praxisregel: Schätzgrundlage
je Kostengruppe als eigenes Feld ausweisen). Damit sind **alle 16 P1-Positionen der
Sektion `18_Projektkostenplanung` destilliert, neun Wiki-Artikel insgesamt.** Sektion für
P1 abgeschlossen; P2-Positionen (6) bleiben für einen späteren Lauf. `wiki/INDEX.md`
nachgeführt.

Anonymisierungsregel angewendet: `bemusterungsentscheid-kostenueberschreitung-praxisfall.md`
nennt keine Unternehmerfirma und keine Gegenpartei-Betrag-Zuordnung, nur die
Überschreitungs- und Aufpreisprozente/-kennwerte. BKP-Codes gegen
`references/bkp-2017/BKP-2017-Liste.md` geprüft: `honorarberechtigte-bausumme-anrechenbarkeit.md`
und `baubeschrieb-als-kostentraeger.md` warnen explizit vor den historischen Phantom-Codes
019/071/80–81 (Erweiterung von `wiki/QUESTIONS.md` #3b um den neuen Befund 80–81, keine
Übernahme als aktuelle BKP-2017-Referenz). Cross-KB-Abgleich gegen
`wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` und
`wissen/grobkosten/wiki/kennwerte.md` durchgeführt: kein Widerspruch, die Leutschenbach-
Kennwerte ergänzen beide Bestände, ohne sie zu ersetzen. `wiki/INDEX.md` (Artikelbestand,
Sektion 02) nachgeführt.

## 2026-08-29 — Spec-Lauf Korpus `buero-referenzen` (Lane FACHWISSEN)

`skills/wissens-destillat/specs/buero-referenzen-spec.md` neu geschrieben (Vorbild
`bauprodukte-spec.md`/`buero-projekte-spec.md`), da Phase 0 fuer diesen Korpus abgeschlossen war,
aber noch keine Spec bestand (Queue-Regel: kein Destillat ohne Spec). Kein Wiki-Artikel in diesem
Lauf, kein Inventar veraendert — reine Spec-Stufe, Lauf endet danach gemaess SKILL.md Schritt 2.
Kernentscheide der Spec: fuenf Ziel-Artikel-Typen (Kennwert/Kostenermittlung,
Konstruktionsdetail, Verfahren/Rezeptur, Wettbewerbsmechanik, Honorar/Prozess); Anonymisierungs-
Zusatzregel fuer `18_Projektkostenplanung`/`25_Wettbewerb` (nie Unternehmer-Namen oder
Gegenpartei-Betrag im Artikeltext); Erledigt-Markierung als Append-Abschnitt
`## Destillat-Fortschritt` am Dateiende der Inventardateien (keine In-Place-Aenderung der
Triage-Tabelle, damit `git diff --numstat` `-0` zeigt); Sperrliste `23_Vertraege`/`16_Portfolios`/
`01_Adressen` aus `CLAUDE.md` referenziert, nicht dupliziert. `KORPUS-QUEUE.md` nachgefuehrt.

## 2026-08-24 — Wissens-Chef Run 41 (Cross-KB, Erst-Pruefung dieser KB)

Erste Cross-KB-Pruefung, einen Tag nach dem Anlegen. Drei additive Nachtraege in
`wiki/QUESTIONS.md`, kein Eingriff in `raw/`:
- **#4 (SIA-102-Phasenanteile) zur Haelfte beantwortet** — `wissen/normen/destillate/sia-102-2014.md`
  (`established`, S. 1-58 komplett gelesen 14.07.2026), Ziff. 7.7 fuehrt genau diese sieben
  Anteile. Offen bleibt nur «unveraendert gegenueber 2003» (`sia-102-2003` ist `speculative`).
  Mit drei Vorbehalten: Fassungsstand 2020 kennt die Methode nicht mehr · **nicht** auf
  `sia-102-2020.md` verweisen (belegt die Abwesenheit) · **nicht** auf
  `skills/honorarberechnung-sia102` verweisen (fuehrt eine bueroeigene Konvention mit *anderen* Zahlen).
- **#6 (Kennzahlenraster Leutschenbach) neu geschnitten** — die Schulbau-Kennwert-Achse existiert
  bereits: `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (`established`,
  25 Quellen) und `wissen/entwurfs-referenzen/.../schule-volksschule-ch.json`. Beizusteuern ist
  die **Methode**, nicht der Kennwert; fuer CHF/m³ bleibt `grobkosten` fuehrend.
- **#3b neu — Phantom-BKP-Codes.** Die BGS-Honorarblatt-Tabelle (20.04.2005), in beiden
  Inventaren als «unmittelbar uebertragbar» eingeleitet, nennt «019» fuer Abbruch (im BKP 2017
  «Uebriges» unter 01 Grundstueckserwerb; Abbruch ist **112.1**) und «**071**», das es im
  BKP 2017 gar nicht gibt. Jeder Code ist vor Uebernahme sachbezogen zu mappen.

**Ausserhalb dieser KB:** die KB war in keinem Hub-Register eingetragen — nur in der
`KORPUS-QUEUE.md` des Skills `wissens-destillat`. In `CLAUDE.md` nachgetragen, Fuehrungszeile in
`wissen/koordination/QUERBEZUEGE.md` gesetzt (fuehrt Inventare; **keine** Kennwerte, BKP-Codes
oder Norm-Fundstellen). Bericht: `wissen/koordination/outputs/2026-08-24_wissens-chef-run41.md`.
## 2026-08-23
- KB angelegt (Vollgas-Lauf). Struktur raw/inventar, wiki, outputs.
- Inventar Phase 0 abgeschlossen für 16 Sektionen: 12 aus `buero-referenzen`
  (`/Volumes/daten/04_Buero/10_Referenzenbibliothek`) und 4 aus `archiv-fachwissen`
  (`/Volumes/daten/02_Architektur_Archiv`). 8'604 Dateien gesichtet, Triage P1 113 / P2 631 /
  P3 4'428 / X 3'432. Belegbasis: 16 Dateien unter `raw/inventar/`, je Sektion eine.
- `wiki/INDEX.md` neu geschrieben (war Stub): Gesamtüberblick beider Korpora, Kennzahlen je
  Korpus, 16 Sektionen nach P1-Ertrag geordnet mit je einem Satz und Verweis auf die
  Inventardatei, dazu fünf Querbefunde über die Sektionsgrenzen und die Sperren
  (BKP-Altausgaben, Norm-Ausgabenstand, Urheberrecht, Personendaten, Zugangsdaten,
  Zweckbindung DXF).
- `outputs/2026-08-23_korpus-erschliessung.md` angelegt: Methode des Laufs, Kennzahlen mit drei
  Lesarten, die zehn ertragreichsten Sektionen mit Begründung, die fünf Sektionen ohne Ertrag
  und eine begründete Reihenfolge der nächsten zehn Destillate samt Auflagen je Position.
- `wiki/QUESTIONS.md` um den Block 260823 ergänzt, 26 offene Punkte in vier Gruppen
  (Steuerung/Entscheid Raphael, Beleglücken, Rechte und Personendaten, technisch offen und
  Beschaffung). Kernpunkte: 39 der 55 Sektionen beider Korpora sind nicht inventarisiert; es
  fehlt ein belegter Indexpfad für sämtliche Kostenkennwerte; die Fundstellen zu
  Ruosch/Brandenberger, zur Konstruktionslehre Hochbau und zur Neufert-Ausgabe sind
  unvollständig.
- `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt: Korpus 3 und 4 stehen nicht mehr auf
  «wartet», sondern auf «Inventar Phase 0 abgeschlossen 23.08.2026» mit den Kennzahlen.
- Noch **kein** Wiki-Artikel geschrieben, keine Datei auf dem NAS bewegt, kein BKP-Code
  bestimmt, keine Norm-Ausgabe auf Gültigkeit geprüft. Die Quellordner wurden ausschliesslich
  lesend angefasst.

## 2026-08-30 — 28. P2-Lauf Sektion `01_Staedtebau`: islamischer Textblock abgeschlossen (Lane FACHWISSEN)
- Drei neue Wiki-Artikel aus `Quellentextband-1.pdf` (S. 177-190):
  `ibn-dschubair-damaskus-wasserinfrastruktur-stiftungswesen-1184.md`,
  `ibn-chaldun-standortkriterien-verfallslogik-staedtischer-kultur.md`,
  `ibn-chaldun-bauhandwerk-tabija-geometrie-nachbarrecht.md`.
- Al-Ghazali (S. 181-182) gelesen, aber ohne Artikel — reiner theologischer Text ohne
  städtebaulichen Bezug (Delta-Ehrlichkeit).
- Damit ist der im 27. Lauf gefundene islamische Textblock (S. 173-190, sechs Positionen:
  Al-Farabi, Ibn Abdun, Ibn Dschubair, Al-Ghazali, Ibn Chaldun zweimal) vollständig gesichtet,
  fünf Positionen destilliert.
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft). Von den ca. 50 Quellentextband-Auszügen dieser Sektion
  sind jetzt 17 destilliert, rund 29 bleiben offen.
- Nächster Lauf: Francesco di Giorgio Martini (anthropometrische Stadtproportionen, S. 251-254)
  oder weitere kurze Quellentextband-Einzelauszüge nach Bürorelevanz.

## 2026-08-30 — 35. P2-Lauf Sektion `01_Staedtebau`: Pacioli und Serlio destilliert (Lane FACHWISSEN)
- Zwei neue Wiki-Artikel aus `Quellentextband-1.pdf` (Lampugnani-Anthologie, beide nur im
  italienischen Original ohne Übersetzung in dieser Anthologie):
  `pacioli-divina-proportione-koerperproportion-simulacro-architektur.md` (S. 255-256,
  Kopf-als-Zitadelle-Analogie, Kreis-/Quadrat-Konstruktion aus dem Körper) und
  `serlio-buehnenbau-scena-comica-tragica-satirica-1545.md` (S. 267-270, genre-codierte
  Bautypologie der Bühnenkulisse nach Vitruv).
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft). Von den 54 benannten Positionen der Quellentextband-
  Anthologie sind jetzt 31 destilliert oder begründet ohne Artikel abgeschlossen, 23 bleiben
  offen.
- Nächster Lauf: Aventinus (271) oder Castiglione/Raffael-Brief an Leo X. (275) als nächste
  kurze Positionen, sonst Vasari il Giovane/Città ideale (299) als bürorelevanter Kandidat.

## 2026-08-30 — 36. P2-Lauf Sektion `01_Staedtebau`: P1-Gesamtstand verifiziert, Castiglione/
Raffael-Brief destilliert, Aventinus ohne Artikel (Lane FACHWISSEN)
- Vor Laufbeginn systematisch geprüft, ob in irgendeiner der 43 Inventardateien beider Korpora
  (`buero-referenzen`, `archiv-fachwissen`) noch offene P1-Positionen bestehen (Fortschritt-
  Abschnitte gezählt, Stichproben der grössten P1-Sektionen sowie der sechs bisher unbearbeiteten
  `buero-referenzen`-Klein-Sektionen ohne Fortschritt-Abschnitt gelesen). **Ergebnis: P1 ist über
  beide Korpora vollständig abgeschlossen**, kein offener Rest gefunden. Da die Queue nach Korpus 4
  keinen weiteren Korpus vorsieht, setzt dieser und setzen künftige Läufe die P2-Bearbeitung fort
  (Präzedenz seit dem zweiten P2-Lauf `02_Gestalt_Kulturverstaendnis`, 29.08.2026).
- Johannes Aventinus, Bayerische Chronik (S. 271-274) vollständig gelesen — überwiegend
  religiös-moralisierende Verfallsklage und Eroberungserzählung ohne städtebaulichen Gehalt; der
  einzige fachlich anschlussfähige Absatz (Bescheidenheit des frühen Kirchenbaus) bleibt ohne
  Verfahren/Kennwert zu dünn für einen eigenständigen Artikel. **Bewusst ohne Artikel geschlossen**
  (Delta-Ehrlichkeit, analog Al-Ghazali/Koran-Auszüge).
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 275-279, Baldassare Castiglione/Raffaello
  Santi, Brief an Papst Leo X., 1519):
  `castiglione-raffael-brief-leo-x-1519-stilkritik-spolien.md` — Spolien-/Kalkbrennerei-Kritik am
  antiken Rom mit benannten Einzelverlusten, Raffaels Vermessungs-/Vergleichsrekonstruktions-
  methode im päpstlichen Auftrag, stilkritische Dreiperioden-Klassifikation antiker/gotischer/
  moderner Bauten, Konstantinsbogen-Beispiel für Architektur als letzte verfallende Kunst,
  Spolien-Zerkleinerung am Beispiel Torre delle Milizie.
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft: 65/0 bzw. reiner Zuwachs am Dateiende). Von den 54
  benannten Positionen der Quellentextband-Anthologie sind jetzt 32 destilliert oder begründet
  ohne Artikel abgeschlossen, 22 bleiben offen.
- Nächster Lauf: Münster/Cosmographei (281), Specklin (289) oder Olivier de Serres (293) als
  nächste kurze Positionen, sonst Vasari il Giovane/Città ideale (299) oder Leonardo da Vinci
  (257, bisher nie geprüft).

## 2026-08-30 — 37. P2-Lauf Sektion `01_Staedtebau`: Münster und Specklin destilliert, Palladio
(283) als bereits erledigt bestätigt (Lane FACHWISSEN)
- Vor Laufbeginn Stand gegen `KORPUS-QUEUE.md`, `wiki/INDEX.md` und `git log` geprüft: deckungsgleich
  mit dem 36.-Lauf-Ende (die zwischenzeitlich unkommittierte CHANGELOG-/INDEX-Fassung des 36. Laufs
  war beim Start bereits vom NAS-Autocommit nachgezogen, kein eigener Handlungsbedarf).
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 281-282, Sebastian Münster, Cosmographei,
  1550): `muenster-cosmographei-bern-gruendungssage-flussschlaufe-stadtform-1550.md` —
  Bärenjagd-Gründungssage, Flussschlaufen-Halbinsel als geometrische Determinante der drei Berner
  Längsgassen, Erbfolgestreit der Zähringer.
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 289-292, Daniel Specklin, Architectura von
  Vestungen, 1589): `specklin-architectura-vestungen-standortkriterien-topographia-1589.md` —
  vierfache Standortprüfung Boden/Klima/Wasser/Kriegssicherheit vor Stadt-/Festungsgründung,
  Nord-/Ost-Ausrichtungsempfehlung gegen «böse Lüfte», Begriff der «Topographia» als
  Bestandsaufmass vor jeder Erweiterung, strukturelle Nähe zur aristotelischen Vierteilung.
- Dazwischenliegender Palladio-Auszug (S. 283-288) gegen den 23. Lauf geprüft: bereits destilliert
  ([[palladio-strassen-bruecken-plaetze-vier-buecher-1570]]), keine Lücke.
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft). Von den 54 benannten Positionen der Quellentextband-
  Anthologie sind jetzt 34 destilliert oder begründet ohne Artikel abgeschlossen, 20 bleiben offen.
- Nächster Lauf: Olivier de Serres (293, Théâtre d'Agriculture — Fachlichkeitsprüfung
  städtebaulich vs. rein gartenbaulich noch offen), sonst Vasari il Giovane/Città ideale (299)
  oder Leonardo da Vinci (257, bisher nie geprüft).

## 2026-08-30 — 38. P2-Lauf Sektion `01_Staedtebau`: Olivier de Serres ohne Artikel geschlossen,
Vasari il Giovane destilliert (Lane FACHWISSEN)
- Vor Laufbeginn Stand selbst ermittelt (Dispatch-Text trägt bewusst keine Zahlen mehr):
  `KORPUS-QUEUE.md`, `wiki/INDEX.md` und Inventardatei gegengeprüft, deckungsgleich mit dem
  37.-Lauf-Ende; working tree sauber, kein `MERGE_HEAD`, genau ein laufender `claude -p`-Prozess.
- Olivier de Serres, Théâtre d'Agriculture (S. 293-297, Buch VI «Des Jardinages») vollständig
  gelesen — reine Zier-/Nutzgarten-Anleitung (Bordürenpflanzen, Parterre-Farbkiesmuster,
  Blickachsen-Perspektive), kein städtebaulicher Gehalt. **Bewusst ohne Artikel geschlossen**
  (Delta-Ehrlichkeit, analog Aventinus).
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 299-302, Giorgio Vasari il Giovane, La Città
  ideale, 1598):
  `vasari-il-giovane-citta-ideale-1598-gebaeudetypologie-marktzonierung.md` — Standortwahl Ebene
  statt Hügel wegen fester Regelbarkeit, Fluss nahe aber nicht durch die Stadt gegen
  Überschwemmung, Strassenraster-Debatte gerade vs. krumm mit Siena-Verkettung als Kompromiss,
  fünfeckige Zitadelle als erster von 65 Bauplänen, Markt-Warenzonierung nach Loggien-Seite,
  vierstufige Palast-Geschosshierarchie, Bibliotheks-Begründung über Zugang unabhängig vom
  Vermögen. Verlinkt mit `renaissance-idealstadt-typologie-filarete-alberti-duerer`,
  `specklin-architectura-vestungen-standortkriterien-topographia-1589` und
  `ibn-abdun-sevilla-baupolizei-hisba-marktordnung-1100`.
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft). Von den 54 benannten Positionen der Quellentextband-
  Anthologie sind jetzt 36 destilliert oder begründet ohne Artikel abgeschlossen, 18 bleiben
  offen.
- Nächster Lauf: Leonardo da Vinci (S. 257, bisher nie geprüft) oder der gesamte noch ungeprüfte
  antike Block Homer bis Cicero (S. 9-81).

## 2026-08-30 — 39. P2-Lauf Sektion `01_Staedtebau`: Leonardo da Vinci destilliert (Lane FACHWISSEN)
- Vor Laufbeginn Stand selbst ermittelt (Dispatch-Text trägt bewusst keine Zahlen): `KORPUS-QUEUE.md`,
  `wiki/INDEX.md`, diese Datei und Inventardatei gegengeprüft, deckungsgleich mit dem 38.-Lauf-Ende.
  Zusätzlich erneut verifiziert, dass P1 über beide Korpora (`buero-referenzen`, `archiv-fachwissen`)
  vollständig abgeschlossen bleibt (Stichprobe unverändert, inkl. der vier P1=0-Sektionen
  `04_Politik`/`05_Kultur_Gesellschaft_Stil`/`06_Reisen`/`07_Religion`) — P2-Fortsetzung dieser
  Sektion damit weiterhin die richtige Wahl gemäss Queue-Regel. Working tree sauber, kein
  `MERGE_HEAD`, genau ein laufender `claude -p`-Prozess.
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 257, Leonardo da Vinci, Ausgewählte Texte,
  zwei Manuskript-Notizen 1490 und 1493, beide vollständig gelesen):
  `leonardo-da-vinci-mailand-verstaedterungspolitik-zweistufiges-strassensystem.md` —
  Verstädterungspolitik 1493 (Entzerrung überfüllter Viertel durch Anreiz-Hausbau der Standesoberen,
  Zielgrösse 5'000 Häuser/30'000 Wohnungen aus zehn Städten, Finanzierung über die Gemeinde Lodi
  gegen einen jährlichen Herzogspreis, Bindung ans Grundeigentum) und zweistufiges Strassensystem
  1490 (obere Strasse nur für Fussverkehr der Herren, untere Strasse für Warenverkehr, unterirdische
  Ebene für Latrinen/Ställe, Verbindung alle 300 Braccia über Wendeltreppen). Beide Notizen unter
  einer Sache (Leonardos Mailänder Städtebau-Praxis) zusammengefasst, `status: emerging`. Verlinkt
  mit `renaissance-idealstadt-typologie-filarete-alberti-duerer`,
  `lex-iulia-municipalis-strassenunterhalt-edilenrecht-kostenumlage` und
  `palladio-strassen-bruecken-plaetze-vier-buecher-1570`.
- Gegen Wiki-Bestand geprüft (`grep -ril` nach «leonardo» über `wiki/*.md`): kein bestehender
  Leonardo-da-Vinci-Artikel, einzige Vorerwähnung im Pacioli-Artikel (anderes Thema,
  Proportionslehre, kein Duplikat).
- `raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
  Append, `git diff --numstat` geprüft). Von den 54 benannten Positionen der Quellentextband-
  Anthologie sind jetzt 37 destilliert oder begründet ohne Artikel abgeschlossen, 17 bleiben
  offen.
- Nächster Lauf: der gesamte noch ungeprüfte antike Block Homer bis Cicero (S. 9-81) — nach Ertrag
  voraussichtlich ergiebiger als weitere Einzelpositionen im bereits stark bearbeiteten Bereich
  S. 200-345, aber vor Arbeitsbeginn gegen den tatsächlichen Wiki-Bestand zu verifizieren (mehrere
  Autoren dieses Blocks, z. B. Aristoteles/Hippokrates/Palladio, sind an anderer Stelle der
  Anthologie bereits destilliert).

## 2026-08-30 — 40. P2-Lauf Sektion `01_Staedtebau`: Homer ohne Artikel, Herodot destilliert (Lane FACHWISSEN)

Nachtrag zur Vollständigkeit: dieser Lauf war bereits in `raw/inventar/archiv-fachwissen__01_Staedtebau.md`
und `wiki/INDEX.md` dokumentiert, fehlte hier jedoch (mutmasslich derselbe Cross-Lane-CHANGELOG-Merge-
Konflikt, der auch die Läufe 35-39 zeitweise betraf, siehe deren Fundnotiz oben). Homer, Ilias (S. 9-12,
Schiffskatalog/Zeus-Hera-Dialog) geprüft, **ohne Artikel geschlossen** (reine Städte-Epitheta ohne
Verfahren/Kennwert). Herodot, Historien (S. 13-24, Buch I/II/III) destilliert →
[[herodot-historien-babylon-memphis-eupalinos-tunnel-samos]] (Babylon-Doppelmauer mit Kennwerten,
Nitokris' Flussumleitung, Memphis-Gründung durch Min, Sesostris-Kanalnetz, Eupalinos-Tunnel Samos).
Dabei Zähl-Drift der laufenden "X von 54"-Zählung entdeckt (39.-Lauf-Stand "17 offen" nicht mehr mit der
tatsächlichen Positionsliste vereinbar) und durch konkrete Namensliste ersetzt — Details `wiki/QUESTIONS.md`
#74 und 40.-Lauf-Abschnitt der Inventardatei. **Nächster Lauf:** Thukydides (27) oder Cicero (75).

## 2026-08-30 — 41. P2-Lauf Sektion `01_Staedtebau`: Thukydides destilliert (Lane FACHWISSEN)

Nachtrag zur Vollständigkeit (gleicher Grund wie oben). Thukydides, Geschichte des Peloponnesischen
Krieges (S. 27-34) destilliert →
[[thukydides-peloponnesischer-krieg-athen-mauerbau-peiraieus-synoikismos]] (Landflucht-/
Küstenbesiedlungstheorie, Themistokles' eiliger Mauerbau/Peiraieus-Ausbau mit Baukennwerten,
Mauerlängen-Kennwerttabelle der «Langen Mauern» 431 v. Chr., Theseus-Synoikismos als
Verwaltungsreform statt Neugründung). Vor eigener Arbeit unversionierte CHANGELOG/INDEX-Änderungen
aus dem 40. Lauf via `nas-commit-now.sh` gesichert. **Nächster Lauf:** Cicero/Vom Staatswesen (75).

## 2026-08-30 — 42. P2-Lauf Sektion `01_Staedtebau`: Cicero destilliert (Lane FACHWISSEN)

Vor Laufbeginn Stand selbst ermittelt (Dispatch-Text trägt bewusst keine Zahlen): `KORPUS-QUEUE.md`
(Zeile 4 nur bis 32. Lauf nachgeführt, damit veralteter als CHANGELOG/Inventardatei/INDEX-Tabellenzeile),
`wiki/INDEX.md`, diese Datei und die Inventardatei gegengeprüft. Dabei zwei Lücken gefunden und behoben:
diese Datei fehlten die CHANGELOG-Einträge der Läufe 40-41 (oben nachgetragen), `wiki/INDEX.md` fehlten
im ausführlichen Lauf-Journal-Abschnitt (Dateiende) die Absätze zu Lauf 40/41, obwohl die
Tabellenzeile der Sektion sie bereits als Nachtrag trug (ebenfalls nachgetragen). Kein Datenverlust,
nur unvollständige Fortschreibung. `git status`/`ps aux`: sauberer Working Tree, kein `MERGE_HEAD`,
ein laufender Prozess.

Erste Priorität aus dem 41.-Lauf-Hinweis bearbeitet, per `/opt/homebrew/bin/pdftoppm` gerendert (Pfad
`06_Theorie_des_Staedtbaus/Lampugnani_Vitorio/Quellentextband-1.pdf`, PDF-Seite = gedruckte Seite + 4,
S. 75-81 vollständig gelesen):

- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 75-81, Cicero, Vom Staatswesen/De re publica,
  Buch I,26 und Buch II,1-6, ca. 54-51 v. Chr.):
  [[cicero-vom-staatswesen-romulus-binnenlage-drei-staatsformen]] — Stadtdefinition über das
  Sicherheitsbedürfnis und drei Staatsformen nach Sitz der Beschlusskompetenz (Königtum/
  Optimatenherrschaft/Volksstaat, keine grundsätzlich überlegen); Roms Verfassung als Werk vieler
  Generationen statt eines einzelnen Gesetzgebers (Kontrastfolie Minos/Lykurg/Theseus-Drakon-Solon-
  Kleisthenes/Demetrios von Phaleron); Romulus' ausführlich begründete Entscheidung für eine
  Binnenlage am Tiber statt an der Küste (verdeckte Seegefahr vs. sichtbare Landbedrohung,
  Sittenverfall/Instabilität der Seestädte mit Karthago/Korinth als Belegen, hybride Fluss-Binnenlage
  als Kombination von Handelsvorteil und reduziertem Risiko). Auszug bricht auf S. 81 mitten im
  Argument zur natürlichen Verteidigungslage ab, `status: emerging`. Verlinkt mit
  [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]],
  [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]],
  [[hippokrates-von-der-luft-waessern-gegenden-staedtestandort-windrichtung]],
  [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]] und
  [[herodot-historien-babylon-memphis-eupalinos-tunnel-samos]].
- Gegen Wiki-Bestand geprüft (`grep -rli` nach «cicero»/«romulus» über `wiki/*.md`): keine
  bestehenden Treffer, kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner Append,
`git diff --numstat` geprüft). Von der Namensliste des 40./41. Laufs sind damit Thukydides und Cicero
bearbeitet; 19 Positionen bleiben offen (Aristophanes, Xenophon, Platon/Die Gesetze, Kritias,
Polybios, Varro, Livius, Seneca, Plinius d. Ä., Plutarch/Romulus, Tacitus, Plinius d. J., Strabo,
Juvenal, Sueton, Pausanias, Achilleus Tatius, Ausonius, Salvianus, Francesco Colonna/Hypnerotomachia).
**Nächster Lauf:** Aristophanes/Die Vögel (41) oder Xenophon/Cyropädie (43) als nächste im
Seitenverlauf liegende Kandidaten, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 43. P2-Lauf Sektion `01_Staedtebau`: Aristophanes und Xenophon destilliert (Lane FACHWISSEN)

Beide vom 42. Lauf empfohlenen Kandidaten bearbeitet, per `/opt/homebrew/bin/pdftoppm` gerendert
(Pfad `06_Theorie_des_Staedtbaus/Lampugnani_Vitorio/Quellentextband-1.pdf`, PDF-Seite = gedruckte
Seite + 4, S. 41-44 vollständig gelesen, S. 44 leer):

- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 41-42, Aristophanes, Die Vögel, Vers
  172-199 und Vers 986-1004):
  [[aristophanes-die-voegel-meton-luftstadt-satire-radial-stadtplan]] — Luftstadt-Gründung als
  Kontrollinstrument über die Opferrauch-Transitroute zwischen Menschen und Göttern; Meton-Szene
  mit radial-konzentrischem Stadtplan (Kreis zu Viereck, Markt im Zentrum, Strassen als Strahlen
  «nach allen Winden») als Komödien-Witzfigur, Auszug bricht mitten im Satz ab, `status:
  emerging`. Verlinkt mit
  [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]],
  [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]] und
  [[campanella-citta-del-sole-konzentrische-ringstadt-verteidigung-lehrinstrument]].
- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 43, Xenophon, Cyropädie, Buch VIII,2,5,
  isoliertes Fragment):
  [[xenophon-cyropaedie-arbeitsteilung-stadtgroesse-spezialisierung]] — Arbeitsteilung des
  Handwerks als Funktion der Stadtgrösse: kleine Stadt zwingt zu Generalisten
  (Mehrfachqualifikation aus Not), grosse Stadt ermöglicht und erzwingt Spezialisierung bis auf
  Teilschritte eines Gewerks (z. B. nur Schuh-Zuschnitt vs. nur Zusammensetzen), `status:
  emerging`, ohne Verlinkung (kein inhaltlich überschneidender Bestandsartikel gefunden).
- Gegen Wiki-Bestand geprüft (`grep -rli` Aristophanes/Meton/Xenophon/Cyropädie/Arbeitsteilung):
  keine inhaltlich überschneidenden Treffer, kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft). Von der Namensliste des 40./41./42. Laufs sind damit
Thukydides, Cicero, Aristophanes und Xenophon bearbeitet; 17 Positionen bleiben offen
(Platon/Die Gesetze, Kritias, Polybios, Varro, Livius, Seneca, Plinius d. Ä., Plutarch/Romulus,
Tacitus, Plinius d. J., Strabo, Juvenal, Sueton, Pausanias, Achilleus Tatius, Ausonius,
Salvianus, Francesco Colonna/Hypnerotomachia). **Nächster Lauf:** Platon, Die Gesetze (45) als
nächster im Seitenverlauf liegende und bürorelevante Kandidat, sonst der Rest der Liste der
Reihe nach.

## 2026-08-30 — 44. P2-Lauf Sektion `01_Staedtebau`: Platon destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, diese Datei,
Inventardatei), deckungsgleich mit dem 43.-Lauf-Ende; die vier zugehörigen Wiki-Artikel
(Thukydides, Cicero, Aristophanes, Xenophon) bereits als Dateien vorhanden. Nur ein laufender
Prozess, kein `MERGE_HEAD`.

Die vom 43. Lauf empfohlene erste Priorität aus `Quellentextband-1.pdf` bearbeitet, per
`/opt/homebrew/bin/pdftoppm` gerendert (PDF-Seite = gedruckte Seite + 4, S. 45-53 vollständig
gelesen):

- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 45-53, Platon, Die Gesetze, Buch IV
  Abschn. 1, Buch V Abschn. 14+16, Buch VI Abschn. 20, Buch VIII Abschn. 12, Buch XII Abschn. 5):
  [[platon-die-gesetze-idealstadt-zwoelfteilung-mauerdebatte-arbeitsteilung]] — Standortkriterien
  gegen Küstennähe und Bodenreichtum (moralisch statt klimatisch begründet), radial-religiöse
  Zwölfteilung von Stadt und Land um ein zentrales Heiligtum (5040 Lose, Doppelwohnsitz-Pflicht),
  spartanische Anti-Mauer-Position mit Alternative «Wohnbauten als durchgehender Mauerring»,
  gesetzlich erzwungenes Ein-Handwerk-Prinzip mit Zwölf-Ortschaften-Raster, befristetes
  Metökenrecht, kontrolliertes Reiserecht ab 40 Jahren, `status: emerging`. Fünf separate
  Fragmente aus verschiedenen Büchern zu einem Artikel zusammengefasst (durchgehend dieselbe
  Gründungsstadt Magnesia). Verlinkt mit
  [[hippokrates-von-der-luft-waessern-gegenden-staedtestandort-windrichtung]],
  [[vitruv-standortwahl-windrose-tempelstandorte-antike-stadthygiene]],
  [[vauban-festungsbau-bastionstheorie-graenzfestung-1704]],
  [[thukydides-peloponnesischer-krieg-athen-mauerbau-peiraieus-synoikismos]],
  [[aristophanes-die-voegel-meton-luftstadt-satire-radial-stadtplan]],
  [[xenophon-cyropaedie-arbeitsteilung-stadtgroesse-spezialisierung]] und
  [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]].
- Gegen Wiki-Bestand geprüft (`grep -rli` platon/kleinias): keine bestehenden Artikel-Treffer,
  kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft). Aus der Namensliste bleibt nach Platon offen: Kritias
(54), Polybios (69), Varro (73), Livius (95), Seneca (105), Plinius d. Ä. (113),
Plutarch/Romulus (125), Tacitus (131-133), Plinius d. J. (137), Strabo (141), Juvenal (145),
Sueton (149), Pausanias (151), Achilleus Tatius (155), Ausonius (157), Salvianus (159),
Francesco Colonna/Hypnerotomachia (247) — 17 Positionen. **Nächster Lauf:** Kritias (54,
Atlantis-Beschreibung, unmittelbar im Anschluss), sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 45. P2-Lauf Sektion `01_Staedtebau`: Kritias/Atlantis destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, diese Datei,
Inventardatei), deckungsgleich mit dem 44.-Lauf-Ende, bereits vom Auto-Sync committet. Nur ein
laufender Prozess, kein `MERGE_HEAD`.

Die vom 44. Lauf empfohlene erste Priorität aus `Quellentextband-1.pdf` bearbeitet, per
`/opt/homebrew/bin/pdftoppm` gerendert (PDF-Seite = gedruckte Seite + 4, S. 54-61 vollständig
gelesen; S. 63-68 zusätzlich gegengeprüft, S. 62 Leerseite):

- Neuer Wiki-Artikel aus `Quellentextband-1.pdf` (S. 54-61, Kritias, Platon-Dialog «Kritias»,
  Stephanus-Abschnitt 113-118, keine Datierung im Quellenband vermerkt):
  [[kritias-atlantis-konzentrische-ringstadt-kanalsystem-bewaesserung]] — konzentrische
  Ringstadt-Gründungsfigur (2 Erdringe, 3 Wasserringe um Kleitos Hügel), Zufahrtskanal
  (3 Plethren breit, 100 Fuss tief, 50 Stadien lang) mit unterirdisch überbrückten
  Wall-Durchstichen für Dreiruderer, gestufte Materialverkleidung der Wallringe
  (Bronze/Zinn/Goldkupfererz von aussen nach innen), Doppeltempel- und Palastanlage mit
  warmer/kalter Thermalquelle und funktionalem Wasserkreislauf zum Poseidon-Hain, Hippodrom
  und vertrauensgestaffelter Wachunterbringung, Hafenvorstadt-Ringmauer, sowie rechteckiges
  Bewässerungs- und Erschliessungsraster der Ebene (10'000-Stadien-Umfassungsgraben,
  100-Stadien-Kanalraster, zwei Ernten pro Jahr durch Winterregen plus Sommerbewässerung),
  `status: emerging`. S. 63-68 (Aristoteles, Politik, Buch II,8 und VII) gegengeprüft: bereits
  vollständig als [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]]
  destilliert (Quellenangabe dort deckungsgleich S. 63-68) — keine neue Position, Aristoteles
  stand nie auf der offenen Namensliste. Verlinkt mit
  [[campanella-citta-del-sole-konzentrische-ringstadt-verteidigung-lehrinstrument]],
  [[aristophanes-die-voegel-meton-luftstadt-satire-radial-stadtplan]],
  [[platon-die-gesetze-idealstadt-zwoelfteilung-mauerdebatte-arbeitsteilung]] (löst dessen
  Vorverweis ein) und
  [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]].
- Gegen Wiki-Bestand geprüft (`grep -rli` kritias/atlantis): nur der bereits bekannte
  Vorverweis im Platon-Artikel sowie INDEX/QUESTIONS-Journaleinträge, kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft). Aus der Namensliste bleibt nach Kritias offen: Polybios
(69), Varro (73), Livius (95), Seneca (105), Plinius d. Ä. (113), Plutarch/Romulus (125),
Tacitus (131-133), Plinius d. J. (137), Strabo (141), Juvenal (145), Sueton (149), Pausanias
(151), Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 16 Positionen. **Nächster Lauf:** Polybios (69, über
Militärlager, S. 69 bereits als Kopfzeile gesichtet) als nächster im Seitenverlauf liegender
Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 46. P2-Lauf Sektion `01_Staedtebau`: Polybios/Militärlager destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt: `git status` zeigte nur einen unversionierten Rest
dieser CHANGELOG-Datei aus dem 45. Lauf (Wiki-Artikel/INDEX/Inventar dort bereits committet);
nachgetragen und per `nas-commit-now.sh` gesichert. Der native Selfcommit meldete dabei
Merge-Konflikte in mehreren fremden Lane-Dateien (u. a. `wissen/normen/CHANGELOG.md`,
`skills/wissens-destillat/KORPUS-QUEUE.md`, `wissen/architekten-synobsis/CHANGELOG.md`,
zwei weitere `archiv-fachwissen`-Inventardateien, `wiki/QUESTIONS.md`,
`wiki/protofunktional-...md` als Add/Add) — lokal kein `MERGE_HEAD`, der 15-Min-Cron fängt
das laut Skript-Meldung auf. Betrifft andere Sektionen/KBs, nicht diese Lane; nicht behoben,
nur zur Kenntnis genommen (kollisionsfrei laut Schreibregel dieser KB).

Die vom 45. Lauf empfohlene erste Priorität (Polybios, S. 69) bearbeitet, per
`/opt/homebrew/bin/pdftoppm` gerendert (PDF-Seite = gedruckte Seite + 4, S. 69-72 vollständig
gelesen, S. 73-Kopfzeile «Varro» als Sektionsende gegengeprüft):

- **Polybios, Historien, Buch VI, 26-31** («über Militärlager», S. 69-72) → neuer Artikel
  [[polybios-roemisches-militaerlager-castrum-rasterordnung]]: Feldherrnzelt als
  Nullpunkt-Setzung (100-Fuss-Quadrat, 4 Plethren), Massmodul-Wiederholungslogik
  (100/50-Fuss-Schritte, Fünferstrasse via quintana), sozialräumliche Rangzonierung
  (Extraordinarier nah am Zentrum, Hilfsvölker an der Peripherie), Zentrumszone
  Markt/Prätorium/Quästorium, 200-Fuss-Sicherheitsabstand zum Wall mit expliziter
  Dreifachbegründung (Ausmarsch, Beutelager, Fernwaffen-Reichweite); Quelltext selbst zieht
  die Lager/Stadt-Analogie explizit. Verlinkt mit
  [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]] (dort bisher nur
  Sekundärquelle, hier erstmals die primäre Massregel),
  [[vauban-festungsbau-bastionstheorie-graenzfestung-1704]],
  [[roemische-grundlagen-voelkerwanderung-fraenkische-expansion-wiese-zils]] und
  [[aristoteles-politik-hippodamus-stadtplan-vierfache-lagekriterien]]. Keine expliziten
  Vorverweise in Bestandsartikeln gefunden, daher keine Rückverlinkung nötig.
- Gegen Wiki-Bestand geprüft (`grep -rli` polybios/militärlager/castrum/legion): nur der
  bekannte Castrum-Artikel aus Sekundärquelle, kein inhaltlicher Überschneidungspunkt, kein
  Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft). Aus der Namensliste bleibt nach Polybios offen: Varro
(73), Livius (95), Seneca (105), Plinius d. Ä. (113), Plutarch/Romulus (125), Tacitus
(131-133), Plinius d. J. (137), Strabo (141), Juvenal (145), Sueton (149), Pausanias (151),
Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia
(247) — 15 Positionen. **Nächster Lauf:** Varro (73, De lingua latina, S. 73 bereits als
Kopfzeile gesichtet) als nächster im Seitenverlauf liegender Kandidat, sonst der Rest der
Liste der Reihe nach.

## 2026-08-30 — 47. P2-Lauf Sektion `01_Staedtebau`: Varro/De lingua latina destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text trug wie üblich keinen verlässlichen
Zahlenstand): `git log` auf diese Datei, `wiki/INDEX.md` und die Inventardatei zeigten den
46. Lauf (Polybios, Commit `57ace19bb`) als letzten committeten Stand, working tree sauber,
kein `MERGE_HEAD`. `scutil --get ComputerName` bestätigt Station Macmini; `ps -ax` zeigte
keine zweite laufende `claude -p`-Instanz für diese Lane.

Die vom 46. Lauf empfohlene erste Priorität (Varro, S. 73) bearbeitet. Quelle war nicht
direkt auffindbar (kein Pfad im bisherigen Log vermerkt), per gezieltem `find` unter
`/Volumes/daten/02_Architektur_Archiv/01_Staedtebau/` lokalisiert:
`06_Theorie_des_Staedtbaus/Lampugnani_Vitorio/Quellentextband-1.pdf`. Per
`/opt/homebrew/bin/pdftoppm` gerendert (PDF-Seite = gedruckte Seite + 4, S. 73-74
vollständig gelesen, S. 75-Kopfzeile «Cicero» gegengeprüft als Sektionsende — Cicero war
bereits in einem früheren Lauf eigenständig destilliert, daher zu Recht nicht mehr auf der
aktuellen Namensliste):

- **Varro, De lingua latina, Buch V, §141/143/145** («Über die lateinische Sprache»,
  S. 73-74, keine weitere Datierung im Quellenband ausser Autorenlebensdaten 116-27 v. Chr.)
  → neuer Artikel
  [[varro-de-lingua-latina-etruskisches-gruendungsritual-stadtetymologie]]: lateinische
  Begriffsetymologie Aedificium/Oppidum/Moenia/Aggeres/Moerus als Kette von *opus*
  («Bedarf/Arbeit») über *munire* («befestigen») zu *munus* («Pflicht») — Stadtbefestigung
  sprachlich als Bürgerpflicht verstanden (§141); das etruskische Gründungsritual: Furche
  mit Stier-Kuh-Pflug (Kuh nach innen), Fossa/Murus-Entstehung, Orbis-zu-Urbs-Ableitung
  (Kreis + gebogener Pflug), Pomerium als Auspizien-Grenze «hinter der Mauer» mit
  Steinmarken um Aricia und Rom (§143); Strassentypen Vicus/Fundula/Angiportum/Forum
  (§145). Verlinkt mit
  [[cicero-vom-staatswesen-romulus-binnenlage-drei-staatsformen]] (dort bislang nur die
  Vogelschau als Gründungsritual erwähnt, hier erstmals das Furchenritual selbst),
  [[polybios-roemisches-militaerlager-castrum-rasterordnung]] und
  [[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]]. Keine
  Vorverweise in Bestandsartikeln gefunden (`grep -rli` varro über `wiki/*.md`).
- Gegen Wiki-Bestand geprüft (`grep -rli` urbs/pomerium/etrusk/furche/varro über
  `wiki/*.md`): kein Treffer ausser dem neuen Artikel, kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft). Aus der Namensliste bleibt nach Varro offen: Livius
(95), Seneca (105), Plinius d. Ä. (113), Plutarch/Romulus (125), Tacitus (131-133), Plinius
d. J. (137), Strabo (141), Juvenal (145), Sueton (149), Pausanias (151), Achilleus Tatius
(155), Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia (247) —
14 Positionen. **Nächster Lauf:** Livius (95, ab urbe condita, Romulus-Gründungssage) als
nächster im Seitenverlauf liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 48. P2-Lauf Sektion `01_Staedtebau`: Livius destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text trägt bewusst keine Zahlen): `git log`,
CHANGELOG-Kopf und `wiki/INDEX.md` zeigten den 47. Lauf (Varro) als letzten committeten
Stand, `scutil` bestätigt Macmini, kein `MERGE_HEAD`, kein Doppelprozess.

Die vom 47. Lauf empfohlene Priorität (Livius, S. 95) bearbeitet, per
`/opt/homebrew/bin/pdftoppm` gerendert (PDF-Seite = gedruckte Seite + 4, S. 95-99
vollständig gelesen):

- **Livius, Ab urbe condita, Buch V, Kapitel 42-55** (S. 95-99) → neuer Artikel
  [[livius-camillus-rede-standortkriterien-regelloser-wiederaufbau-rom]]: die Zerstörung
  Roms durch die Gallier 390 v. Chr., die Senatsdebatte Wiederaufbau-vs-Umsiedlung nach
  Veji, Camillus' Standortrede mit vier expliziten Lagekriterien (gesunde Hügel,
  Doppelnutzen des Flusses für Binnen- und Seezufuhr, Sicherheitsabstand zum Meer,
  Zentrallage in Italien) sowie die Schilderung des tatsächlichen Wiederaufbaus ohne
  Strassenplan unter reiner Fristauflage («man fing an regellos an der Stadt zu bauen» —
  Baumaterial frei, Bürgschaft nur auf Fertigstellungstermin, keine Parzellenprüfung),
  mit Livius' eigener Gegenüberstellung «in Besitz genommen» versus «vertheilt» als frühem
  Beleg für organische gegenüber geplanter Stadtentstehung sowie der Folgefeststellung,
  dass alte staatliche Abzugsgräben seither unter Privathäusern liegen. Verlinkt mit
  [[cicero-vom-staatswesen-romulus-binnenlage-drei-staatsformen]] (zweite, ausführlichere
  Standortbegründung derselben Stadt), Varro und Polybios-Castrum.
- Gegen Wiki-Bestand geprüft (`grep -rli` livius/camillus/veji/veii über `wiki/*.md`): kein
  Treffer ausser dem neuen Artikel, kein Duplikat.

`raw/inventar/archiv-fachwissen__01_Staedtebau.md` und `wiki/INDEX.md` nachgeführt (reiner
Append, `git diff --numstat` geprüft: 36 0 auf der Inventardatei). Aus der Namensliste
bleibt nach Livius offen: Seneca (105), Plinius d. Ä. (113), Plutarch/Romulus (125),
Tacitus (131-133), Plinius d. J. (137), Strabo (141), Juvenal (145), Sueton (149),
Pausanias (151), Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 13 Positionen. **Nächster Lauf:** Seneca (105) als
nächster im Seitenverlauf liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 49. P2-Lauf Sektion `01_Staedtebau`: Seneca und Plinius d. Ä. destilliert (Lane FACHWISSEN, nachgetragen im 51. Lauf)

Dieser Eintrag fehlte hier ursprünglich (Artikel und Inventarnachtrag bestanden bereits,
die CHANGELOG-Nachführung wurde übersprungen) und wird im 51. Lauf nachgetragen.

Seneca, Naturales quaestiones VI, 1 (S. 112, Erdbeben in Pompeji 62 n. Chr. mit regionalem
Schadensmuster über Pompeji/Herculaneum/Nuceria/Neapel) und Plinius der Ältere, Naturalis
historia V, 11 sowie XXXVI, 24 (S. 113-116: Alexandria-Gründungsplan durch den Architekten
Dinocrates, Circus Maximus, Cloaca Maxima, dokumentierte antike Fassadenregel für
staatlich zugeteilte Ehrenhäuser) destilliert →
[[seneca-erdbeben-pompeji-62-nchr-naturwissenschaftliche-untersuchungen]],
[[plinius-der-aeltere-alexandria-dinocrates-rom-wunderwerke-naturgeschichte]]. Löst den bei
Livius offen gelassenen Cross-Check zu den «Abzugsgräben» ein (dieselbe Cloaca Maxima).
`git diff --numstat` auf die Inventardatei zeigte reinen Append. Aus der Namensliste
bleibt nach Seneca und Plinius d. Ä. offen: Plutarch/Romulus (125), Tacitus (131-133),
Plinius d. J. (137), Strabo (141), Juvenal (145), Sueton (149), Pausanias (151), Achilleus
Tatius (155), Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia (247) —
11 Positionen.

## 2026-08-30 — 50. P2-Lauf Sektion `01_Staedtebau`: Plutarch/Romulus destilliert (Lane FACHWISSEN, nachgetragen im 51. Lauf)

Ebenfalls nachgetragen (siehe Begründung oben). Plutarch, Romulus Kap. 3/9-11 (S. 125-129:
Cermalus/Ruminalis-Ortsnamen der Aussetzungssage, Standortstreit Romulus/Remus per
Augurien-Wettstreit entschieden, Asyl-Tempel als Bevölkerungswachstumsinstrument,
ausführliches etruskisches Gründungsritual mit Mundus-Grube und Tor-Ausnahme von der
Mauerheiligkeit) destilliert →
[[plutarch-romulus-stadtgruendung-rom-ortsstreit-asyl-mundus-ritual]], komplementär zu
[[varro-de-lingua-latina-etruskisches-gruendungsritual-stadtetymologie]] (dort dasselbe
Ritual nur sprachetymologisch, hier narrativ mit Mundus-Grube). `git diff --numstat` zeigte
reinen Append. Aus der Namensliste bleibt nach Plutarch offen: Tacitus (131-133), Plinius
d. J. (137), Strabo (141), Juvenal (145), Sueton (149), Pausanias (151), Achilleus Tatius
(155), Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia (247) —
10 Positionen. **Nächster Lauf:** Tacitus (131-133) als nächster im Seitenverlauf
liegender Kandidat.

## 2026-08-30 — 51. P2-Lauf Sektion `01_Staedtebau`: Tacitus destilliert, Nachtrags-Lücke 49./50. Lauf geschlossen (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text trägt bewusst keine Zahlen):
`KORPUS-QUEUE.md` zeigte veraltet den 32. Lauf, dieses CHANGELOG und `wiki/INDEX.md`
zeigten veraltet den 48. Lauf (Livius) als letzten Eintrag. Massgeblich war die
Inventardatei `raw/inventar/archiv-fachwissen__01_Staedtebau.md` selbst, dort bereits beim
50. Lauf (Plutarch) — die Wiki-Artikel zu Seneca, Plinius d. Ä. und Plutarch bestanden
bereits, nur die CHANGELOG- und INDEX-Nachführung der Läufe 49 und 50 war übersprungen
worden. Beide oben nachgetragen; für die Zukunft gilt weiterhin: Stand vor jedem Lauf aus
Inventardatei, INDEX und CHANGELOG gemeinsam ermitteln, nicht nur aus einer Quelle.

Die vom 50. Lauf empfohlene Priorität (Tacitus, Namensliste S. 131-133, tatsächlicher
Fundbereich S. 131-136) bearbeitet, per `/opt/homebrew/bin/pdftoppm -r 150` gerendert
(PDF-Seite = gedruckte Seite + 4; S. 137 als Beginn der Folgeposition „Plinius d. J."
bestätigt):

- **Tacitus, Agricola Kap. 13/18/21, Germania Kap. 16, Annalen Buch XV, 37-43** (S.
  131-136) → neuer Artikel
  [[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]]: Agricola-Sentenz zu
  Infrastruktur (Tempel/Markt/Haus/Säulenhalle/Bad) als Befriedungsinstrument statt
  Kultur («ein Stück Knechtschaft»); Germania Kap. 16 unstädtische Streusiedlung ohne
  Mauer-/Ziegelstein, Erdgruben als Frost- und Plünderungsschutz; Bericht zum Brand Roms
  64 n. Chr. (bauliche Ursache: fehlende Brandmauern, enge winklige Strassen) und vor
  allem Neros Wiederaufbau-Massnahmen als zusammenhängender **antiker Bauordnungstext**:
  regelmässiger Grundriss, Höhenlimite, Pflicht-Hofräume, subventionierte Säulengänge,
  nach Vermögen gestaffelte Fristauflage, geregelte Schuttentsorgung über Getreideschiffe,
  Brandschutzmaterial (Sabiner-/Albanerstein) bis Grenzhöhe ohne Gebälk, öffentliche
  Wasseraufsicht gegen private Anzapfung, Pflicht-Feuerlöschgeräte je Hof, Verbot
  gemeinsamer Trennwände zugunsten eigener Brandmauern je Gebäude; Schlussnotiz zur
  Abwägung Brandschutz/Strassenbreite gegen sommerlichen Hitzeschutz durch enge, hohe
  Bebauung.
- Gegen Wiki-Bestand geprüft (`grep -rli` nero/agricola/germania/brandmauer über
  `wiki/*.md`): drei themenfremde Zufallstreffer (Castiglione, Palladio,
  Muratori/Caniggia) ohne inhaltlichen Bezug, kein Duplikat. Verlinkt mit
  [[livius-camillus-rede-standortkriterien-regelloser-wiederaufbau-rom]] (Gegenstück:
  derselbe Fall Rom-Wiederaufbau-nach-Brand, einmal ungeregelt 390 v. Chr., einmal
  reguliert 64 n. Chr.) und
  [[plinius-der-aeltere-alexandria-dinocrates-rom-wunderwerke-naturgeschichte]].

`git diff --numstat` auf die Inventardatei zeigt reinen Append. Aus der Namensliste bleibt
nach Tacitus offen: Plinius d. J. (137), Strabo (141), Juvenal (145), Sueton (149),
Pausanias (151), Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 9 Positionen. **Nächster Lauf:** Plinius d. J. (137) als
nächster im Seitenverlauf liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — 52. P2-Lauf Sektion `01_Staedtebau`: Plinius d. J. destilliert (Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt: der 51. Lauf (Tacitus) hatte einen fertigen, aber
unkommitteten Stand hinterlassen (neuer Wiki-Artikel, Inventar-/INDEX-/CHANGELOG-Nachträge,
`git diff --numstat` zeigte reinen Append über alle vier Dateien). Zuerst per
`bash scripts/nas-commit-now.sh "Fachwissen: Tacitus Agricola/Germania/Annalen (Lampugnani
S.131-136) destilliert"` gesichert — erneuter NAS-Merge-Konflikt beim Push in sechs fremden
KBs (`wissen/normen`, `wissen/architekten-synobsis`, `wissen/baurecht`, `wissen/grobkosten`,
zwei weitere Inventar-/CHANGELOG-Dateien dieser KB), lokaler Commit gelang dennoch
(`96232b648`), Push-Auflösung dem 15-Min-Cron überlassen (working tree danach lokal sauber).

Danach die vom 51. Lauf empfohlene Priorität (Plinius d. J., Namensliste S. 137) bearbeitet,
per `/opt/homebrew/bin/pdftoppm -r 150` gerendert (PDF-Seite = gedruckte Seite + 4, Offset
am Tacitus-Ende gegenverifiziert: PDF-Seite 137 = gedruckte Seite 133; S. 137-139
vollständig gelesen, S. 140 als leere Trennseite vor „Strabo" bestätigt Positionsende):

- **Plinius d. J., Briefe Buch VI, 20 (Brief an Cornelius Tacitus)** (S. 137-139) → neuer
  Artikel [[plinius-der-juengere-erdbeben-misenum-vesuvausbruch-79-nchr]]:
  Augenzeugenbericht des 17-jährigen Plinius aus Misenum während des Vesuvausbruchs 79
  n. Chr. (Tod des Oheims Plinius d. Ä., dessen eigener Sterbebericht nicht in diesem
  Auszug enthalten ist, nur die Fortsetzung an Tacitus). Vorbeben mehrere Tage zuvor als
  ortsüblich unterschätzt; Eskalationsstufen der Evakuierung (Innenhof mit Gebäudeabstand
  → beengter freier Platz → vollständiges Verlassen der Stadt), ausgelöst durch sichtbaren
  Gebäudeschaden in der Nachbarschaft; auf freiem Feld selbst mit untergelegten Steinen
  wandernde Wagen als Beleg der Bodenbewegungsstärke; Meeresrückzug mit gestrandeten
  Meerestieren; Eruptionswolke mit blitzähnlichen Flammenstrahlen; künstliche
  Vollverdunkelung trotz Tageszeit; wiederholtes Abschütteln der Asche gegen
  Erdrückungsgefahr; abschliessende Ascheschneelast-Analogie («hoch mit Asche, wie mit
  Schnee, bedeckt») ohne Kennwert.
- Gegen Wiki-Bestand geprüft (`grep -rli` vesuv/pompeji/erdbeben/misenum über `wiki/*.md`):
  Treffer [[seneca-erdbeben-pompeji-62-nchr-naturwissenschaftliche-untersuchungen]] (selbe
  Region, Erdbeben 62 n. Chr., andere Quelle/Perspektive, kein Duplikat) und der bestehende
  Plinius-der-Ältere-Artikel (anderer Werkausschnitt, Tod des Oheims dort nicht Gegenstand).
  Verlinkt mit beiden sowie mit
  [[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]] (Abgrenzung: dort
  Bauordnungstext, hier reine Verhaltens-/Erlebnisquelle ohne Normcharakter).

`git diff --numstat` auf die Inventardatei zeigt reinen Append. Aus der Namensliste bleibt
nach Plinius d. J. offen: Strabo (141), Juvenal (145), Sueton (149), Pausanias (151),
Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia
(247) — 8 Positionen. **Nächster Lauf:** Strabo (141) als nächster im Seitenverlauf
liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 53. P2-Lauf (Strabo destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn aus Inventardatei, `KORPUS-QUEUE.md` und diesem CHANGELOG
gemeinsam ermittelt (übereinstimmend, working tree sauber, letzter Commit bereits
gepusht) — keine eigene Sicherung nötig, direkt mit dem empfohlenen Kandidaten
weitergearbeitet.

**Strabo, Erdbeschreibung, Buch V, 7-8 «Stadtbeschreibung Rom»** (S. 141-143) → neuer
Artikel
[[strabo-erdbeschreibung-rom-servianische-mauererweiterung-augustus-bauhoehenlimite]]:
die ringweise Servianische Stadterweiterung (Agger-Bau, 1,110 km Erdwall, drei
Ausbaustufen Kapitol/Palatin/Quirinal → Caelius/Aventin → Esquilin/Viminal), Strabos
Werteaussage «Männer statt Mauern» als römisches Sicherheitsprinzip, der Baustoffkreislauf
über Fluss-Logistik (Anio/Nar/Teneas) inkl. der expliziten Beschreibung von
Abbruch-und-Neubau-nach-Belieben als strukturellem Stadtbetriebszustand, Augustus'
Bauhöhenlimite (70 Fuss / 21,581 m an öffentlichen Strassen) und organisierte
Löschtruppe — beide datiert **vor** dem Brand Roms 64 n. Chr. —, der explizite
Griechen-Römer-Vergleich Schönheit/Festigkeit/Hafen/Land gegen
Strassenpflasterung/Wasserleitungen/Kanalisation, sowie Marsfeld-Ensemble und
Mausoleum-Augustus als Bautypus-Beschreibung.

Gegen Wiki-Bestand geprüft (`grep -rli` servian/aggerbau/erdwall/mausoleum/marsfeld/
augustus über `wiki/*.md`): keine inhaltlichen Duplikate, nur themenfremde
Zufallstreffer (Barock-Platztypologie, Sitte, Eitelberger, Wiese/Zils, Rossi — dort nur
beiläufige oder andere Erwähnungen ohne Bezug zu dieser Stelle). Verlinkt mit
[[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]] (dort per Nachtrag
rückverlinkt: Augustus' Höhenlimite/Löschtruppe bestanden bereits vor Neros
Wiederaufbau-Bauordnung, die erweitert ein bestehendes Instrumentarium statt es neu zu
erfinden), [[livius-camillus-rede-standortkriterien-regelloser-wiederaufbau-rom]]
(Gegenbild: reguläre ringweise Stadterweiterung gegen Livius' regellosen
Nachkriegs-Wiederaufbau derselben Stadt),
[[frontinus-vitruv-wasserversorgung-rom-kaliber-konzessionsrecht]] (Agrippas
Wasserbauten, hier nur zeitgenössisch gewürdigt, dort technisch im Detail) und
[[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]]
(dritter Wachstumsmodus: organisch-inkrementell, aber regulär, neben geplanter
Neugründung und Livius' regellosem Wiederaufbau).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (`34 0`). Aus der
Namensliste bleibt nach Strabo offen: Juvenal (145), Sueton (149), Pausanias (151),
Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 7 Positionen. **Nächster Lauf:** Juvenal (145) als
nächster im Seitenverlauf liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 54. P2-Lauf (Juvenal destilliert, Lane FACHWISSEN)

Stand vor Arbeitsbeginn aus Inventardatei, `KORPUS-QUEUE.md` und diesem CHANGELOG
gemeinsam ermittelt (übereinstimmend, working tree sauber, 53. Lauf/Strabo bereits vom
15-Min-Cron committet und gepusht) — keine eigene Sicherung nötig, direkt mit dem
empfohlenen Kandidaten weitergearbeitet. INDEX.md fehlte dabei der 53. Lauf (Strabo) noch
als eigener Eintrag; wird im selben Lauf nachgetragen.

**Juvenal, Satiren, Dritte Satire, V. 180-275** (S. 145-148, per
`/opt/homebrew/bin/pdftoppm -f 149 -l 153 -r 150`, PDF-Seite = gedruckte Seite + 4,
Bereichsende gegenverifiziert: PDF-Seite 153 = gedruckte Seite 149 = Beginn „Sueton"
bestätigt Positionsende) → neuer Artikel
[[juvenal-satiren-dritte-satire-mietshaeuser-baufaelligkeit-brandgefahr-rom]]:
Baufälligkeit römischer Mietshäuser durch unterlassene Instandsetzung (Rissverklebung
statt Sanierung) im Kontrast zu einsturzfreien Kleinstädten, Brandausbreitung im dichten
Baubestand samt Anreizkonflikt durch grosszügige soziale Nachbrand-Wiedergutmachung bei
vermögenden Eigentümern (Fallbeispiel Persicus, Brandstiftungsverdacht), Wohnkosten Rom
gegen Kleinstadt (Sora/Fabrateria/Frusino), nächtlicher Verkehrslärm und
Schlafentzug samt klassenspezifischem Sänften-Kontrast, Transportgefahr durch
Baumaterial (Marmorblöcke, Bauholz) im Strassenraum, sowie nächtliche Gefahr durch aus
Fenstern fallende Gegenstände bei ungesicherter Gebäudehöhe.

Gegen Wiki-Bestand geprüft (`grep -rli` mietshaus/insula/brandgefahr/feuersbrunst/
sänfte/hauseinsturz/mietwohnung/juvenal über `wiki/*.md`): keine inhaltlichen Duplikate,
nur themenfremde Zufallstreffer (moderne Wohnungsbau-Artikel). Verlinkt mit
[[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]] (dort per Nachtrag
rückverlinkt: Bewohnerperspektive auf laufende kleinere Stadtbrände als Ergänzung zur
staatlichen Bauordnung nach dem Grossbrand) und
[[strabo-erdbeschreibung-rom-servianische-mauererweiterung-augustus-bauhoehenlimite]]
(Gegenbild: obrigkeitliche Regulierungsperspektive gegen satirische
Bewohnerperspektive auf dieselbe Stadt).

`git diff --numstat` auf die Inventardatei zeigt reinen Append. Aus der Namensliste
bleibt nach Juvenal offen: Sueton (149), Pausanias (151), Achilleus Tatius (155),
Ausonius (157), Salvianus (159), Francesco Colonna/Hypnerotomachia (247) —
6 Positionen. **Nächster Lauf:** Sueton (149) als nächster im Seitenverlauf liegender
Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 55. P2-Lauf (Sueton destilliert, hier nachgetragen im 56. Lauf — dieser Eintrag fehlte ursprünglich, Lane FACHWISSEN)

Sueton, Kaiserbiographien, Der göttliche Augustus, Kapitel 28-30 und 37 (S. 149-150) →
neuer Artikel
[[sueton-augustus-kaiserbiographien-forum-mars-ultor-vigiles-regionen]]: Marmor-Anspruch
(«Lehmziegelstadt» zu «marmorne»), drei Staatstempel mit Vor-/Baugeschichte
(Forum/Mars-Ultor als drittes Forum gegen Gerichtsüberlastung, Apollotempel/Palatin mit
angegliederter Bibliothek, Jupiter Tonans nach Blitzrettung), Drei-Wege-Finanzierungsmodell
(Staatsbauten/Familiennamen/private Stiftungen führender Bürger), Regionen-/
Bezirksverwaltung, nächtliche Feuerwehr als Augustus' eigene Erfindung, Tiberbett-Verbreiterung
gegen Bauschutt/Gebäudevorsprünge, Strassenfinanzierung aus Triumphatoren-Beuteerlös,
bezifferte Kapitolinischer-Jupiter-Schenkung (16'000 Pfund Gold, 50 Mio. Sesterzen), sowie
Kapitel-37-Ämterliste. Verlinkt mit
[[strabo-erdbeschreibung-rom-servianische-mauererweiterung-augustus-bauhoehenlimite]]
(dort per Nachtrag rückverlinkt), [[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]]
und [[frontinus-vitruv-wasserversorgung-rom-kaliber-konzessionsrecht]]. `git diff --numstat`
auf die Inventardatei zeigt reinen Append. Nach Sueton bleiben 5 Positionen offen:
Pausanias (151), Achilleus Tatius (155), Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247). Nächster Lauf: Pausanias (151). Details Inventardatei
30.08.2026.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 56. P2-Lauf (Pausanias destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen mehr):
`KORPUS-QUEUE.md`, dieses CHANGELOG (fehlte der 55. Lauf/Sueton als eigener Eintrag, im
selben Lauf nachgetragen) und die Inventardatei übereinstimmend auf 55 Läufe, 5 offene
Namenslisten-Positionen, nächster Kandidat Pausanias S. 151, working tree zu Laufbeginn
sauber.

Pausanias, Reisen in Griechenland, Buch IV,27 («Stadtgründung von Messenias und Elis»),
Buch VI,23-24 (Elis) und Buch X,4 (Panopeus), S. 151-154, per
`/opt/homebrew/bin/pdftoppm -png -f 155 -l 158 -r 150` gerendert (PDF-Seite = gedruckte
Seite + 4), alle vier Textseiten vollständig gelesen. Destilliert → neuer Artikel
[[pausanias-reisen-griechenland-messene-gruendung-elis-marktarchitektur-panopeus-polis-minimalkriterium]]:

- **Messene (Buch IV,27):** Epameinondas lässt den Standort vor Baubeginn durch Seher auf
  göttliche Zustimmung prüfen, danach systematischer Bauablauf (Steine/Fachleute für
  Wege/Häuser/Heiligtümer/Mauern), mehrteiliges Opferritual verschiedener beteiligter
  Völker je eigener Gottheit, Rückruf lokaler Heroen (u. a. Messene selbst) als
  «Mitbewohner», Namensgebung nach der zurückgerufenen Heroine.
- **Elis (Buch VI,23-24):** funktional verschränkte Kette Gymnasion – «Strasse des
  Schweigens» (Namensanekdote Oxylos-Kundschafter) – Hellanodikeon (Amtsgebäude über dem
  Grab des Achilleus) – Markt; Markt «nach älterer Art» (nicht ionisch) mit
  Doppelnutzung als Hippodrom/Pferdetraining, dorische Dreiteilungshalle mit
  behelfsmässigen Zeusaltären, zweite «korkyraiische» Halle aus dem Zehnten einer
  Kriegsbeute finanziert, doppelte Bauweise mit Mauer statt Säulen auf der Innenseite.
- **Panopeus (Buch X,4):** Ort ohne Amtsgebäude/Gymnasion/Theater/Markt/fliessendes
  Wasser, dennoch als Polis anerkannt wegen eigener Landesgrenzen und Vertretung in der
  phokischen Bundesversammlung — Grenzhoheit/politische Vertretung statt
  Bauinfrastruktur als Stadtkriterium; Pausanias' eigene Mauerring-Schätzung «nach
  Augenschein» (ca. 7 Stadien); zwei Homer-Zitate als Kontinuitätsbeleg.

Gegen Wiki-Bestand geprüft (`grep -rli` pausanias/hellanodik/panopeus/messene über
`wiki/*.md`): keine inhaltlichen Duplikate, nur der neue Artikel selbst. Verlinkt mit
[[plutarch-romulus-stadtgruendung-rom-ortsstreit-asyl-mundus-ritual]] und
[[varro-de-lingua-latina-etruskisches-gruendungsritual-stadtetymologie]] (beide dort per
Nachtrag rückverlinkt: griechisches Gegenstück zum etruskisch-römischen Gründungsritual,
mit expliziter Baureihenfolge als Ergänzung) sowie
[[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]]
(Kriegsbeute als Baufinanzierungsquelle, Parallelbeleg zum Castrum-Kontext).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (38/0). Aus der
Namensliste bleibt nach Pausanias offen: Achilleus Tatius (155), Ausonius (157),
Salvianus (159), Francesco Colonna/Hypnerotomachia (247) — 4 Positionen. **Nächster
Lauf:** Achilleus Tatius (155) als nächster im Seitenverlauf liegender Kandidat, sonst
der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 57. P2-Lauf (Achilleus Tatius destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen mehr):
`KORPUS-QUEUE.md`, dieses CHANGELOG und die Inventardatei übereinstimmend auf 56 Läufe,
4 offene Namenslisten-Positionen, nächster Kandidat Achilleus Tatius S. 155. Working
tree zu Laufbeginn bereits sauber (Vorlauf-Arbeit vom 15-Min-Cron selbständig committet,
Commit `128b8aaab`).

Achilleus Tatius, «Leukippe und Kleitophon» (2. Jh. n. Chr.), Buch V,1, S. 155-156, per
`/opt/homebrew/bin/pdftoppm -png -f 159 -l 160 -r 150` gerendert (PDF-Seite = gedruckte
Seite + 4), vollständig gelesen — ein kurzer, sechs Absätze langer Auszug. Reisebericht
über die Ankunft des Ich-Erzählers in Alexandria: eine gerade, beidseitig von Kolonnaden
gesäumte Strassenachse verbindet das «Sonnentor» mit dem gegenüberliegenden «Mondtor»
(Torbenennung nach den Schutzgottheiten), dazwischen die Stadtebene mit zahlreichen
Querstrassen; ausserhalb der Stadt beim Alexander-Ort eine zweite, rechtwinklig gekreuzte
Kolonnadenreihe. Abschluss mit reiner Staunensrhetorik (Stadt grösser als ein Kontinent,
Bevölkerung zahlreicher als ein Volk) ohne belegbaren Kennwert. Destilliert → neuer
Artikel
[[achilleus-tatius-alexandria-kolonnadenstrassen-kreuzraster-stadtbeschreibung]],
`status: speculative` (literarischer Roman, keine technische oder amtliche Quelle).

Gegen Wiki-Bestand geprüft (`grep -rli` alexandria/kolonnade/säulenstrasse über
`wiki/*.md`): kein inhaltlicher Duplikat-Fund. Der bestehende Artikel
[[plinius-der-aeltere-alexandria-dinocrates-rom-wunderwerke-naturgeschichte]] behandelt
dieselbe Stadt, aber die Gründungsflächen (chlamys-förmiger Umriss, Flächenreservierung
für die Königsburg) statt der Strassenform — kein Duplikat, sondern Ergänzung; dort per
Nachtrag rückverlinkt. Zusätzlich verlinkt mit
[[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]] (Aussenblick
auf dieselbe hippodamische Rasterlogik, hier als Seherlebnis statt Vermessungsschema).

`git diff --numstat` auf die Inventardatei zeigt reinen Append. Aus der Namensliste
bleibt nach Achilleus Tatius offen: Ausonius (157), Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 3 Positionen. **Nächster Lauf:** Ausonius (157) als
nächster im Seitenverlauf liegender Kandidat, sonst der Rest der Liste der Reihe nach.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 58. P2-Lauf (Ausonius destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen mehr):
`KORPUS-QUEUE.md`, dieses CHANGELOG und die Inventardatei übereinstimmend auf 57 Läufe,
3 offene Namenslisten-Positionen, nächster Kandidat Ausonius S. 157. In der Inventardatei
lag zusätzlich eine bereits fertige, aber noch uncommittete Aktualisierung der
`KORPUS-QUEUE.md`-Zelle vom Vorlauf (57. Lauf) im Working Tree — unverändert übernommen,
nicht überschrieben.

Ausonius, «Opuscula», Buch XI, Narbonne (ca. 385-390 n. Chr.), S. 157, per
`/opt/homebrew/bin/pdftoppm -png -f 161 -l 163 -r 150` gerendert (PDF-Seite = gedruckte
Seite + 4, am Bereichsende gegenverifiziert: PDF-Seite 163 = gedruckte Seite 159 = Beginn
«Salvianus» bestätigt), vollständig gelesen — nur eine Textseite, S. 158 im Quellenwerk
leer. Lobgedicht auf Narbo/Narbonne: Provinz-Namensgeber Gallia Narbonensis mit
Grenzbeschreibung (Allobroger/Grajische Alpen, Pyrenäen/Iberer, Rhone/Genfersee,
Cevennen/Aquitanien, Tectosager/Belcer), erste Stadt Galliens mit römischen
Hoheitszeichen unter italischem Prokonsul, Tempel aus Parischem Marmor über drei Bauherren
(Tarquin als Erst-, Catulus als Zweit-, Caesar als Letztbauherr mit vergoldeter
Dachdeckung), Fernhandelsnetz über Fluss- und Seewege aus östlichem Meer, Spanien, Libyen
und Sizilien. Destilliert →
[[ausonius-narbo-lobgedicht-provinzstadt-tempel-dreiphasenbau]], `status: speculative`
(panegyrische Dichtung, keine amtliche oder technische Quelle; Ortszuordnung des Tempels
im Auszug nicht eindeutig — Catulus/Caesar sind historisch mit dem Kapitolinischen Tempel
in Rom verknüpft, nicht mit Narbonne).

Gegen Wiki-Bestand geprüft (`grep -rli` narbo/gallia/proconsul über `wiki/*.md`): kein
inhaltlicher Duplikat-Fund. Verlinkt mit
[[antike-stadtgruendungstypen-hippodamisches-system-streifenstadt-castrum]] (dort per
Nachtrag rückverlinkt: Rang einer Provinzstadt über Verwaltungsstatus statt Rastergeometrie,
Ergänzung statt Widerspruch zu Castrum/Cardo-Decumanus).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (19/0). Aus der
Namensliste bleibt nach Ausonius offen: Salvianus (159), Francesco
Colonna/Hypnerotomachia (247) — 2 Positionen. **Nächster Lauf:** Salvianus (159) als
nächster im Seitenverlauf liegender Kandidat, sonst Francesco Colonna/Hypnerotomachia
(247).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 59. P2-Lauf (Salvianus destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen): Working
Tree sauber, letzter Commit 21 Sekunden vor Laufbeginn (`auto-sync [Macmini]`) —
`KORPUS-QUEUE.md`, dieses CHANGELOG und die Inventardatei übereinstimmend auf 58 Läufe, 2
offene Namenslisten-Positionen, nächster Kandidat Salvianus S. 159.

Salvianus, «Von der Regierung Gottes» / «De gubernatione Dei», Buch VI, Auszug «Eroberung
römischer Städte von Barbaren» (verfasst ca. 440-450 n. Chr., Autorendaten im Quellenwerk
ca. 400 – ca. 480 n. Chr.), S. 159-161, per `/opt/homebrew/bin/pdftoppm -png -f 163 -l 166
-r 150` gerendert (PDF-Seite = gedruckte Seite + 4, bestätigt: PDF-Seite 163 = gedruckte
Seite 159 = Beginn «Salvianus»), vollständig gelesen — drei Textseiten, S. 162 im
Quellenwerk leer. Fallbeispiel Trier («Stadt der Treverer»): der Auszug nennt an zwei
Stellen widersprüchliche Zerstörungszahlen für dieselbe Stadt («viermal ist schliesslich
die reichste Stadt der Gallier erobert worden», S. 160, versus «dreimal ist in
aufeinanderfolgenden Eroberungen die bedeutendste Stadt der Gallier ausgelöscht worden»,
S. 160) — beide Zahlen unaufgelöst in den Artikel übernommen statt einer den Vorzug zu
geben. Weitere genannte Städte: Mainz («Mogontiacenser», zerstört und vernichtet), Köln
(«Agrippina», voll von Feinden), gallische und spanische Städte allgemein. Detaillierte
Zerstörungsfolgen (Tod durch Kampf/Hunger/Kälte, unbestattete Leichen beider Geschlechter,
Verwesungsgestank als Seuchenquelle, sekundäre Notleiden auch unbeteiligter Städte) und
ein zynisch kommentiertes Detail (überlebende Adlige fordern Zirkusspiele als vermeintliches
Heilmittel für die zerstörte Stadt). Zentrale Deutungsthese: Sittenverfall (Luxus,
Trunksucht, verlorene Selbstbeherrschung selbst unter unmittelbarer Bedrohung) statt
militärisches Versagen als eigentliche Zerstörungsursache — selbst nach der ersten
Zerstörung kein Verhaltenswandel, erst eine vierte Katastrophe trifft die durch drei
vorangegangene ungebesserte Stadt. Destilliert →
[[salvianus-von-der-regierung-gottes-staedtezerstoerung-sittenverfall-trier]], `status:
speculative` (religiös-polemische Streitschrift ohne unabhängige Prüfung der
Zerstörungszahl, zwei widersprüchliche Zahlenangaben im selben Auszug).

Gegen Wiki-Bestand geprüft (`grep -rli` trier/salvianus/treverer über `wiki/*.md`): kein
inhaltlicher Duplikat-Fund. Verlinkt mit
[[tacitus-agricola-germania-annalen-brand-rom-neros-bauordnung]] (beide Quellen verknüpfen
Stadtkatastrophen mit einer moralisch-politischen statt rein bautechnischen Deutungsebene).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (20/0). Aus der Namensliste
bleibt nach Salvianus nur noch offen: Francesco Colonna/Hypnerotomachia (247) — 1
Position. **Nächster Lauf:** Francesco Colonna/Hypnerotomachia (247) — danach ist die
54-Positionen-Liste dieses Quellentextbands vollständig abgearbeitet, zur nächsten
P2-Sektion gemäss Inventar-Prioritäten vorrücken.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `01_Staedtebau`, 60. P2-Lauf (Francesco Colonna/Hypnerotomachia destilliert, ABSCHLUSS der 54-Positionen-Liste, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen):
Working Tree sauber, letzter Commit unmittelbar vor Laufbeginn (`auto-sync [Macmini]`) —
`KORPUS-QUEUE.md`, dieses CHANGELOG und die Inventardatei übereinstimmend auf 59 Läufe, 1
offene Namenslisten-Position, letzter Kandidat Francesco Colonna/Hypnerotomachia (247).

Francesco Colonna, «Hypnerotomachia Poliphili» (Venedig 1499), Auszug «Poliphil erzählt
seinen Traum, er begegnet Bauten und kultivierter Landschaft», S. 247-250, per
`pdftoppm -f 251 -l 254 -r 150` gerendert (PDF-Seite = gedruckte Seite + 4, bestätigt:
PDF-Seite 251 = gedruckte Seite 247 = Kapitelüberschrift «Francesco Colonna»), vollständig
gelesen — vier Textseiten. Text liegt nur im italienisch-lateinischen macaronischen
Original vor, keine deutsche Übersetzung in dieser Anthologie (nur eine zweizeilige deutsche
Inhaltsangabe). Inhalt: monumentales Tor, ein von Kolonnaden gesäumter tetragonaler Platz
(30 Passi Seitenlänge, dorisch-pulvinierte Kapitelle, Deutungsunsicherheit
Hippodrom/Xystos/Peristyl), eine kolossale geflügelte Pferdestatue (Hufe-Boden 5 Fuss,
Hufe-Brust 9 Fuss) sowie ein kreisrunder Venustempel mit konkreter Proportionsgeometrie
(Kreis-im-Quadrat-Teilung in fünf plus einen Mittelteil, zehn Bögen auf Säulen, korinthische
Porphyrsäule neun Durchmesser hoch) und einer monolithisch gegossenen Bronzekuppel
(Ornamentrelief Weinranken/Vögel/Eidechsen, farbige Glaseinlagen). Der Auszug endet mit einer
sachlich-technischen Vier-Punkte-Begründung gegen wandintegrierte Dachentwässerung
(Absturzgefahr, Fundamentschaden durch Feuchte, Mauerwerksfäulnis, Wurzelschäden durch
Pflanzenbewuchs in feuchten Fugen). Destilliert →
[[francesco-colonna-hypnerotomachia-poliphili-rundtempel-proportionsgeometrie-drainage]],
`status: speculative` (allegorisch-fiktionale Traumdichtung ohne empirischen Anspruch, keine
ausführbare Bauanleitung).

Gegen Wiki-Bestand geprüft (`grep -rli` colonna/hypnerotomachia/poliphil über `wiki/*.md`):
kein inhaltlicher Duplikat-Fund. Verlinkt mit
[[francesco-di-giorgio-martini-stadtkoerper-proportionslehre-anthropometrie]],
[[pacioli-divina-proportione-koerperproportion-simulacro-architektur]] und
[[plinius-der-aeltere-alexandria-dinocrates-rom-wunderwerke-naturgeschichte]] (alle drei
per Nachtrag rückverlinkt).

`git diff --numstat` auf die Inventardatei zeigt reinen Append (49/0). **Damit ist die
54-Positionen-Liste des Quellentextbands (`06_Theorie_des_Staedtbaus/Lampugnani_Vitorio/
Quellentextband-1.pdf`) vollständig abgearbeitet** — 53 Positionen destilliert oder
begründet ohne Artikel abgeschlossen, 1 Position (Vita Nicolai V, S. 201, laut 30. Lauf
angelesen, aber bewusst nicht destilliert) bleibt als eigenständiger Restpunkt offen.
**Nächster Lauf:** entweder Vita Nicolai V (S. 201) klären, oder gemäss Queue-Regel zur
nächstgrössten Sektion mit offenem P2 nach `wiki/INDEX.md` „Sektionen nach Ertrag"
übergehen.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturtheorie`, 23. P2-Lauf (Vorlesungsfolien-Sammel-PDF geprüft, Korrektur Vita Nicolai V, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen):
`KORPUS-QUEUE.md` und CHANGELOG zeigten für `01_Staedtebau` einen 60. Lauf mit
uncommittetem Arbeitsstand (CHANGELOG/Inventardatei modifiziert, kein `MERGE_HEAD`) —
zuerst per `nas-commit-now.sh` zu sichern versucht: erneuter bekannter NAS-Merge-Konflikt
in sechs fremden KBs (normen, architekten-synobsis, baurecht, grobkosten,
skills/wissens-destillat/KORPUS-QUEUE.md plus die eigene KB), Working Tree danach ohne
Konfliktmarker, dem 15-Min-Cron überlassen.

**Korrektur-Fund:** der 60. Lauf jener Sektion behauptete, Vita Nicolai V (S. 201) sei die
letzte offene der 54 Namenslisten-Positionen. Das ist falsch — der Artikel
[[vita-nicolai-v-stadt-als-bibel-der-armen-monumentalbau-legitimation]] existiert bereits
seit dem 32. Lauf. Die 54-Positionen-Liste war schon vor dem 60. Lauf vollständig
abgeschlossen. Korrektur in der Inventardatei `02_Architekturtheorie` vermerkt (statt die
fremde `01_Staedtebau`-Inventardatei zu editieren, Kollisionsvermeidung).

**Hauptarbeit:** die für `02_Architekturtheorie` laut 22. Lauf letzte offene Position
(Vorlesungsfolien-Sammel-PDF, `Praes-Ath*.pdf`) geprüft. Von 20 kombinierten Foliensätzen
sind 19 passwortgeschützt (kein Passwort auf dieser Station hinterlegt, dauerhafter
Blocker). Die einzige zugängliche Datei (`Praes-Ath2-2012-2Raum_Passwortfrei.pdf`, VL2
Schmarsow, 71 Seiten) trägt entgegen der bisherigen Einschätzung im bestehenden Artikel
(„kein Fliesstextgewinn erwartet") eine lesbare Textebene mit elf Bildlegenden
(Referenzbauten/-werke mit Urheber und Jahr). Als Nachtrag in
[[schmarsow-raumtheorie-raumsystem-tiefenachse-gegen-semper-woelfflin]] eingefügt.

**Damit gilt Sektion `02_Architekturtheorie` für P1 und P2 als abgearbeitet** (bis auf die
19 gesperrten Foliensätze und die Tonmitschnitte, beides dauerhaft blockiert). Details
CHANGELOG-Eintrag in der Inventardatei `archiv-fachwissen__02_Architekturtheorie.md`,
23. P2-Lauf. `git diff --numstat` auf beide bearbeiteten Dateien zeigt reinen Append bei
der Inventardatei (31/0); der Wiki-Artikel wurde inhaltlich ergänzt (kein Append-Zwang für
`wiki/`). **Nächster Lauf:** gemäss Queue-Regel zur nächstgrössten Sektion mit offenem P2
in `archiv-fachwissen` übergehen (`wiki/INDEX.md` konsultieren, Kandidat `10_Protomodern`
13 P1-Dateien oder `03_Bauprozesse_I_II` mit den historisch rund 15-20 offenen
P2-Positionen).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern`, dritter P2-Lauf (Šik-Interview destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Prompt nennt bewusst keine Zahlen):
`KORPUS-QUEUE.md` zeigte für `10_Protomodern` einen unkommitteten Arbeitsstand des
vorherigen Laufs (Rowe/Koetter «Collage City», zweiter P2-Lauf) mit klarer
Anschlussmarke — zuerst per `nas-commit-now.sh` gesichert (sauberer Commit+Push, kein
Merge-Konflikt diesmal). `ps aux` zeigte nur den eigenen Prozess, keine Doppel-Instanz.

**Hauptarbeit:** `09_Die_athmospherische_Stadt/Eine Stadt ist mehr als eine Galerie.pdf`
(ETH-Life-Interview mit Miroslav Šik, 10.05.2012, 3 Seiten) vollständig gelesen
(PyMuPDF) und destilliert →
[[sik-dialogischer-staedtebau-ensemble-schweizer-pavillon-biennale-2012]]
(`status: emerging`). Kernaussagen: Begriff «dialogischer Städtebau», Ensemble-These
gegen Objektarchitektur («Eine Stadt ist mehr als eine Galerie»), Ausstellungskonzept
Schweizer Pavillon Biennale 2012 (mit Miller & Maranta, Knapkiewicz & Fickert),
biografische Eckdaten. Gegen Wiki-Bestand geprüft (`grep -rli "šik\|sik\b\|ensemble"`):
kein inhaltlicher Duplikat-Fund, verlinkt mit
[[protomodern-projektrahmen-professurenlandkarte]] (dort bereits als «Proto Modern»-Name
gelistet) und [[regel-und-ausnahme-stadtentwicklung-schett-jahreskurs]]. Sperrlisten-
Prüfung: kein Fund (publiziertes Interview, öffentliche Fachperson, keine
Personendaten).

Damit sind **29 der 33 P2-Positionen** der Sektion `10_Protomodern` offen: der
Caruso-Reader-Auszug, elf weitere kurze Eigen-DOCX sowie die Wikipedia-/
Wiktionary-Begriffsblätter plus Sgraffito-Sammlung. `git diff --numstat` auf die
Inventardatei zeigt reinen Append. **Nächster Lauf:** Caruso-Reader-Auszug (`Seiten aus
13_FS_Alles_ist_Umbau_caruso2013FSreaderstudio.pdf`).

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `10_Protomodern`, vierter P2-Lauf (Caruso-Reader-Auszug destilliert, Lane FACHWISSEN)

Stand vor Laufbeginn selbst ermittelt: `KORPUS-QUEUE.md`, `wiki/INDEX.md` und die
Inventardatei zeigten übereinstimmend den dritten P2-Lauf als letzten Stand, Arbeitsstand
bereits committet (kein NAS-Merge-Konflikt vorgefunden). `scutil` bestätigte Hostname
Macmini, `ps -o pid,ppid,command` zeigte nur die eigene Prozesskette, keine Doppel-Instanz.

**Hauptarbeit:** `Seiten aus 13_FS_Alles_ist_Umbau_caruso2013FSreaderstudio.pdf`
(Aufsatz Carsten Ruhl «Hinter dem Schleier der Geschichte», Semester-Reader «Alles ist
Umbau», Caruso-Studio ETH Zürich FS 2013, S. 166-167, 1 Seite) vollständig gelesen
(PyMuPDF) und destilliert →
[[ruhl-rossi-sedlmayr-quaroni-stadt-ready-made-homo-poeticus]] (`status: emerging`).
Kernaussagen: Sedlmayrs Verfallsdiagnose («geometrischer Rationalismus», Verlust des
metaphysischen Sinngehalts) gegen Rossis Gegenlesart (Kritik am
Bauwirtschaftsfunktionalismus, aber Schuldzuweisung an die ausserarchitektonische
Zweckentfremdung statt an die Moderne selbst); Rossis Begriff der Stadt als **«ready
made»** (historische Stadtzentren als bereits verwirklichte Gleichzeitigkeit
ungleichzeitiger Bauten); Ludovico Quaronis Architekt als **«homo poeticus»** und der
revitalisierte disegno-Begriff; Bezug zu Rossis «L'architettura della città» (1966,
Titel als Quaroni-Referenz, vier Kapitel). Auszug bricht bei Fussnote 46 mitten im
Fliesstext ab — Fragment, keine Gesamtargumentation des Ruhl-Aufsatzes. Gegen
Wiki-Bestand geprüft (`grep -rli "quaroni\|sedlmayr\|homo poeticus\|ready made\|ruhl"`):
kein Duplikat-Fund, neuer Artikel verlinkt mit
[[rossi-analoge-architektur-typus-piranesi-eth-lehrzeit]] (dort Rückverlinkung ergänzt)
und [[rowe-koetter-collage-city-figur-grund-bricolage-fuchs-igel]]. Sperrlisten-Prüfung:
kein Fund (publizierter akademischer Aufsatz, keine Personendaten).

Damit sind **28 der 33 P2-Positionen** der Sektion `10_Protomodern` offen: elf weitere
kurze Eigen-DOCX (Religiöses/Politisches in der Architektur, Kulturaustausch, Der
heterogene Ort, Panofsky-Liste, Protorenaissance, Tabubruch, Klassiker für die
Protomoderne, Lampugnani-Grundsätze u. a.) sowie die Wikipedia-/Wiktionary-Begriffsblätter
plus Sgraffito-Sammlung. `git diff --numstat` auf die Inventardatei zeigte `36 0`
(reiner Append). **Nächster Lauf:** die elf kurzen Eigen-DOCX dieser Sektion.

## 2026-08-30 — Fünfter P2-Lauf Sektion `10_Protomodern` (Lane FACHWISSEN)

Vorlauf-Buchführung (65. Lauf, Ruhl/Rossi/Sedlmayr/Quaroni) stand unkommittiert im
Arbeitsverzeichnis (`skills/wissens-destillat/KORPUS-QUEUE.md`,
`wissen/architektur-fachwissen/CHANGELOG.md`, `1 1` bzw. `34 0`), lokal aber sauber ohne
`MERGE_HEAD` — zuerst per `nas-commit-now.sh` gesichert; wie in den Vorläufen erneut
Merge-Konflikte auf dem NAS in sechs fremden KBs (Working Tree lokal sauber, dem
15-Min-Cron überlassen). `scutil` bestätigte Hostname Macmini, `ps -ef` zeigte nur den
eigenen `claude -p`-Prozess, keine Doppel-Instanz.

**Hauptarbeit:** die «elf weiteren kurzen Eigen-DOCX» aus Zeile 73 des Inventars per
`find` im NAS-Ordner lokalisiert. Von den zehn nicht bereits P1/P2-destillierten
DOCX-Kandidaten erwiesen sich zwei bei Volltextvergleich (`textutil` + `diff`) als
inhaltsgleiche Zweitablagen bereits destillierter Quellen — `05_Begriffe/Protofunktional/
00_Text/Protofunktional.docx` (Duplikat von `130426_Protofunktional.docx`, bereits
[[protofunktional-begriff-abgrenzung-funktionalismus]]) und
`Die_Architektur_der_Athmosphaere.docx` im Wurzelverzeichnis (identisch mit der bereits
destillierten Fassung aus `09_Die_athmospherische_Stadt/`, nur um zwei Kopfzeilen
ergänzt) — beide korrekt nicht erneut destilliert. Die verbleibenden acht eigenständigen
Kurztexte (je ein bis drei Sätze oder Stichwortlisten) vollständig gelesen und zu einem
Sammelartikel verdichtet →
[[protomodern-kurzfragmente-religion-politik-klassiker-lampugnani-panofsky]]
(`status: speculative`). Kernaussagen: der Kernsatz «Architektur kann die Probleme einer
Gesellschaft nicht lösen, sie kann sie nur abbilden» (Religion/Politik als
gesellschaftliche Bedingung der Architektur); der zitierfähige ETH-Merksatz Lampugnanis
«Bevor du dein Haus entwirfst, entwirfst du seine Umgebung!» (datiert 130501); die
Panofsky-Kunsthistoriker-Reihe als Lesekanon der Sektion (Wölfflin, Panofsky, Wittkower,
Rowe, Eisenman, Koolhaas, Kollhoff); der reine Pevsner-Quellenverweis zur
Protorenaissance (Pevsner, «Europäische Architektur», Prestel, S. 84); die
Ortscharakter-Reihe «der heterogene Ort, der dialogische Ort, das figurative Haus,
anonym (Šik), die monotone Einheitsgestalt, institutionell (Caruso)»; dazu kurze,
unausgeführte Fragmente zu Kulturaustausch (Venedig/Athen/Rom), Tabubruch im Witz und
den Klassikern Raffael/Michelangelo/Leonardo. Gegen Wiki-Bestand geprüft
(`grep -rli "lampugnani\|heterogen\|hetrogen\|panofsky\|pevsner"`): kein inhaltlicher
Duplikat-Fund, verlinkt mit [[protomodern-projektrahmen-professurenlandkarte]],
[[sik-dialogischer-staedtebau-ensemble-schweizer-pavillon-biennale-2012]],
[[von-moos-lampugnani-kritik-schmierfinken-2011]] und
[[lampugnani-historisches-stadtzentrum-kulturgut-lehrstueck-dichte]]. Sperrlisten-Prüfung:
kein Fund (eigene Kurznotizen und Quellenverweise, keine Personendaten).

Damit sind **27 der 33 P2-Positionen** der Sektion `10_Protomodern` offen: die
Wikipedia-/Wiktionary-Begriffsblätter (Anthropomorphismus, Capriccio, Pasticcio, Epitome,
Form follows function, Shaker-Religion, Protogeometric Art) plus die
Sgraffito-Sammlung `cntmng*.pdf`. `git diff --numstat` auf die Inventardatei zeigte
`27 0` (reiner Append). **Nächster Lauf:** die sieben Begriffsblätter gegen eine
belastbare Quelle prüfen, danach die Sgraffito-Sammlung.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`, zweiter P2-Lauf: Luzerner Skript Sauter/Marion (Lane FACHWISSEN, 69. Lauf)

Stand vor Laufbeginn selbst ermittelt (Dispatch-Text nennt bewusst keinen Fortschritt):
`KORPUS-QUEUE.md`, `wiki/INDEX.md` und die Inventardatei `02_Architekturgeschichte`
gelesen. `scutil` bestätigte Hostname Macmini, `ps -o pid,ppid,command` zeigte nur die
eigene Prozesskette, keine Doppel-Instanz. Empfohlener nächster Schritt aus dem 68. Lauf:
das Luzerner Skript Sauter/Marion (`00_Allgemein/04_Kunsthistoriker/Sauter_Marion/`, 13
PDF, geschlossener Vorlesungszyklus hta Luzern 2005/06, Dr.-Ing. Marion Sauter).

**Hauptarbeit:** zwei der 13 Dateien vollständig gelesen (PyMuPDF) und destilliert:

- `00 EINLEITUNG GLOSSAR.pdf` (6 S.): Bautenverzeichnis (90 Positionen Renaissance bis
  Postmoderne, fortlaufend nummeriert nach Vorlesungskapitel) →
  [[sauter-bautenverzeichnis-architekturgeschichte-kanon-luzerner-beispiele]]; Glossar
  (rund 50 Begriffe, Schwerpunkt Säulenordnung/Gewölbe/Fassade) →
  [[sauter-glossar-architekturbegriffe-saeulenordnung-gewoelbe-fassade]]. Gegen
  Wiki-Bestand geprüft: neun Glossarbegriffe (Apsis, Architrav, Basis, Chor, Kapitell,
  Krypta, Obergaden, Portikus, Vierung) überschneiden sich mit dem bestehenden
  [[fachglossar-historische-bauteile-kirchenbau-gotik]] — dort verlinkt, nicht dupliziert;
  Rückverlinkung im bestehenden Artikel ergänzt. Das Bautenverzeichnis ergänzt statt
  dupliziert die bestehende [[objektliste-architekturgeschichte-datierungen-eth]]
  (architektenzentriert, ETH/Tönnesmann) um eine bautenzentrierte Zweitquelle (hta
  Luzern/Sauter) — beidseitig verlinkt. Literaturverzeichnis derselben Datei bewusst nicht
  destilliert (reine Lesetipp-Liste, kein Handlungswert).
- `13 ARCHITEKTURSPAZIERGANG LUZERN.pdf` (2 S.): 14 Luzerner Lokalbeispiele als
  Regionalanhang in den Bautenverzeichnis-Artikel integriert, nicht als eigener Artikel
  (zu kurz für Eigenständigkeit). Eine private E-Mail-Adresse der Dozentin im Dokument
  (Arbeitsanweisung an Studierende) bewusst nicht übernommen — kein fachlicher Inhalt,
  kein Sperrlisten-Fund (Einzeladresse in einem Lehrmittel, keine Adress-/Kontaktsammlung).

**11 der 13 Dateien bleiben offen** (Kapitel 01-11, je ein Epochenkapitel, 1.1-4.7 MB).
Duplikatscheck gegen bestehende Corbusier/Mies/Bauhaus/Loos-Artikel für diesen Lauf noch
nicht durchgeführt — Pflicht-Vorprüfung für den nächsten Lauf. Details Inventardatei
30.08.2026. Sperrlisten-Prüfung: kein Fund ausser der genannten, bewusst nicht
übernommenen Einzel-E-Mail. `git diff --numstat` auf die Inventardatei zeigte `43 0`
(reiner Append). **Nächster Lauf:** Kapitel `01 RENAISSANCE MANIERISMUS (ITALIEN)` lesen,
davor Duplikatscheck gegen Wiki-Bestand.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`, dritter P2-Lauf: Sauter-Kapitel 01 Renaissance/Manierismus (Lane FACHWISSEN, 70. Lauf)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, `CHANGELOG.md`,
Inventardatei), `ps -eo pid,ppid,command` zeigte nur einen laufenden `claude -p`-Prozess
dieser Lane. Empfohlener nächster Schritt aus dem 69. Lauf: Kapitel
`01 RENAISSANCE MANIERISMUS (ITALIEN).pdf`, davor Duplikatscheck.

**Duplikatscheck zuerst ausgeführt** (Pflicht-Vorgabe des 69. Laufs): `grep -rli` gegen
`wiki/*.md` auf Renaissance/Manierismus sowie die im Kapitel genannten Architekten. Treffer
in [[renaissance-epochencharakteristik-stilmerkmale-architekturtheorie-vitruv-alberti]]
(Stilmerkmal-Raster derselben Epoche, verzichtet aber ausdrücklich auf Bau-für-Bau-
Dokumentation) und [[toennesmann-machtgeschichte-bauaufgaben-proportionssysteme-renaissance]]
(vier der neun Bauten am Rand erwähnt, dort unter Proportions-/Machtgeschichte-Blickwinkel).
Kein inhaltliches Duplikat — beide Artikel um eine Rückverlinkung ergänzt (`git diff
--numstat` zeigte dort je `1 1`, reine Link-Ergänzung in der bestehenden `links:`-Zeile,
kein sonstiger Texteingriff).

**Hauptarbeit:** Kapitel `01 RENAISSANCE MANIERISMUS (ITALIEN).pdf` (10 S.) vollständig
gelesen (PyMuPDF) und destilliert zu
[[sauter-neun-bauten-kanon-renaissance-manierismus-typologie-brunelleschi-bramante-palladio]]:
Neun-Bauten-Kanon mit Ort/Architekt/Jahr/typologischer Kernaussage (Findelhaus, S. Spirito,
Tempietto San Pietro in Montorio, Santa Maria della Consolazione Todi, Palazzo Rucellai,
Palazzo Strozzi, Palazzo del Tè, Villa Rotonda, Biblioteca Laurenziana) sowie zwei im
bestehenden Glossar [[sauter-glossar-architekturbegriffe-saeulenordnung-gewoelbe-fassade]]
noch fehlende Fachbegriffe (Konche, Vestibül) — bereits geführte Begriffe (Vierung, Joch,
Basilika, Kolossalordnung, Tambour, Laterne, Volute) bewusst nicht dupliziert.

**10 der 13 Sauter-Dateien bleiben offen** (Kapitel 02-11, Barock bis Moderne-Postmoderne).
Sperrlisten-Prüfung: kein Fund, ausschliesslich historische, öffentlich bekannte
Architekten/Bauwerke. `git diff --numstat` auf die Inventardatei zeigte `40 0` (reiner
Append). **Nächster Lauf:** Kapitel `02 BAROCK ROKOKO (SAKRALBAUTEN)` lesen, davor
Duplikatscheck gegen Wiki-Bestand.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`, vierter P2-Lauf: Sauter-Kapitel 02 Barock/Rokoko Sakralbauten (Lane FACHWISSEN, 71. Lauf)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, `CHANGELOG.md`,
Inventardatei), `ps -o pid,ppid,command` zeigte keine Doppel-Instanz dieser Lane
(`scutil` bestätigt Macmini). Empfohlener nächster Schritt aus dem 70. Lauf: Kapitel
`02 BAROCK ROKOKO (SAKRALBAUTEN).pdf`, davor Duplikatscheck.

**Duplikatscheck zuerst ausgeführt:** `grep -rli` gegen `wiki/*.md` auf Barock/Rokoko/
Sakralbau. Treffer in
[[barocke-stadtplanung-offene-achsensysteme-platztypologie-place-royal]] (dieselbe Epoche,
aber Stadtebene) und [[grubenmann-kirchen-holzdachstuhl-typologie]] (Schweizer
Barockkirchen derselben Zeit, aber Tragwerk-Fokus statt Raumtypologie). Kein inhaltliches
Duplikat — beide Artikel um eine Rückverlinkung ergänzt (`git diff --numstat` zeigte dort
je `1 1`, reine Link-Ergänzung in der bestehenden `links:`-Zeile).

**Hauptarbeit:** Kapitel `02 BAROCK ROKOKO (SAKRALBAUTEN).pdf` (11 S.) vollständig gelesen
(PyMuPDF) und destilliert zu
[[sauter-neun-bauten-kanon-barock-rokoko-sakralbauten-wandpfeilerkirche-vorarlberger-baumeister]]:
Neun-Bauten-Kanon mit Ort/Architekt/Jahr/typologischer Kernaussage (Il Gesù Rom, St.
Michael München, Jesuitenkirche Solothurn, Stiftskirche St. Gallen, San Carlo alle quattro
fontane Rom, Benediktinerkirche Neresheim, Stiftskirche Einsiedeln, St. Johann Nepomuk
München, Wieskirche Steingaden) sowie drei im bestehenden Glossar
[[sauter-glossar-architekturbegriffe-saeulenordnung-gewoelbe-fassade]] noch fehlende
Fachbegriffe (Fresko, Baldachin, Eckbastion/Eckrisalit) — bereits geführte Begriffe (Joch,
Kolossalordnung, Vierung, konkav/konvex) bewusst nicht dupliziert. Inhaltlicher Schwerpunkt
der Quelle: Entstehung und Verbreitung der Wandpfeilerkirche (München St. Michael als
Ursprungsbau, Solothurn/St. Gallen als Schweizer Weiterentwicklung über Vorarlberger
Baumeister), anschlussfähig an [[grubenmann-kirchen-holzdachstuhl-typologie]] (gleiche
Bauzeit/Region, Tragwerksperspektive).

**9 der 13 Sauter-Dateien bleiben offen** (Kapitel 03-11, Revolutionsarchitektur bis
Moderne-Postmoderne). Sperrlisten-Prüfung: kein Fund, ausschliesslich historische,
öffentlich bekannte Architekten/Bauwerke. `git diff --numstat` auf die Inventardatei
zeigte `39 0` (reiner Append). **Nächster Lauf:** Kapitel `03 REVOLUTIONSARCHITEKTUR`
lesen, davor Duplikatscheck gegen Wiki-Bestand.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`, fünfter P2-Lauf: Sauter-Kapitel 03 Revolutionsarchitektur (Lane FACHWISSEN, 72. Lauf)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, `CHANGELOG.md`,
Inventardatei) — der Dispatch-Text nennt bewusst keine Zahlen mehr. Empfohlener nächster
Schritt aus dem 71. Lauf: Kapitel `03 REVOLUTIONSARCHITEKTUR.pdf`, davor Duplikatscheck.

**Duplikatscheck zuerst ausgeführt:** `grep -rli` gegen `wiki/*.md` auf
Revolutionsarchitektur/Boullée/Ledoux. Treffer in
[[architekturbegriffe-glossar-serliana-architecture-parlante-stadtbegreifen]] (führt
«Architecture parlante» bereits mit denselben zwei Architekten, aber anderen
Entwurfsbeispielen) und [[utopische-stadtentwuerfe-typologie-garnier-cite-industrielle]]
(nennt Ledoux' Salines de Chaux als einen von mehreren Utopie-Stadtentwürfen, dort mit
fehlerhafter Datierung 1847). Kein inhaltliches Duplikat — beide Artikel um eine
Rückverlinkung ergänzt (`git diff --numstat` zeigte dort je `1 1`, reine Link-Ergänzung in
der bestehenden `links:`-Zeile).

**Hauptarbeit:** Kapitel `03 REVOLUTIONSARCHITEKTUR.pdf` (5 S.) vollständig gelesen
(PyMuPDF) und destilliert zu
[[sauter-revolutionsarchitektur-ledoux-boullee-architecture-parlante-idealstadt-chaux]]:
vier Bauten/Projekte 1770-1800 (Salinenstadt Arc-et-Senans, Idealstadt-Chaux-Entwürfe —
beide Ledoux; Newton-Kenotaph Boullée; Kaserne/ehem. Frauengefängnis Würzburg, Speeth) mit
Ort/Architekt/Jahr/Kernmerkmal, drei Kurzbiografien und einer in der Quelle selbst
widersprüchlichen Datierung des Würzburger Baus (S. 1: 1809-1810, S. 5: ab 1811),
unkorrigiert dokumentiert. Kein neuer Glossarbegriff nötig: Portikus bereits im
Sauter-Glossar, Architecture parlante bereits im eigenständigen Begriffs-Glossarartikel
geführt — dort lediglich zwei zusätzliche Ledoux-Beispiele sowie das Boullée-Beispiel im
neuen Artikel ergänzt.

**8 der 13 Sauter-Dateien bleiben offen** (Kapitel 04-11, Klassizismus/Historismus/
Eklektizismus bis Moderne-Postmoderne). Sperrlisten-Prüfung: kein Fund, ausschliesslich
historische, öffentlich bekannte Architekten/Bauwerke. `git diff --numstat` auf die
Inventardatei zeigte `41 0` (reiner Append). **Nächster Lauf:** Kapitel
`04_KLASSIZISMUS HISTORISMUS EKLEKTIZISMUS` lesen, davor Duplikatscheck gegen
Wiki-Bestand.

## 2026-08-30 — P2-Lauf Korpus `archiv-fachwissen`, Sektion `02_Architekturgeschichte`, sechster P2-Lauf: Sauter-Kapitel 04 Klassizismus/Historismus/Eklektizismus (Lane FACHWISSEN, 73. Lauf)

Stand vor Laufbeginn selbst ermittelt (`KORPUS-QUEUE.md`, `wiki/INDEX.md`, `CHANGELOG.md`,
Inventardatei) — der Dispatch-Text nennt bewusst keine Zahlen. Empfohlener nächster Schritt
aus dem 72. Lauf: Kapitel `04_KLASSIZISMUS HISTORISMUS EKLEKTIZISMUS.pdf`, davor
Duplikatscheck.

**Duplikatscheck zuerst ausgeführt:** `grep -il` gegen `wiki/*.md` auf Pilaster/Risalit/
Quadriga (neue Fachbegriffe des Kapitels) sowie Sichtprüfung des bestehenden Sauter-
Glossars. Kein Artikel-Duplikat zu diesem Epochenthema gefunden; Pilaster/Risalit bereits
in [[fachglossar-historische-bauteile-kirchenbau-gotik]] bzw. anderen Sauter-Kapiteln
geführt, Quadriga neu, aber als Einzelerwähnung ohne Definitionskontext zu dünn für einen
eigenen Glossareintrag.

**Hauptarbeit:** Kapitel `04_KLASSIZISMUS HISTORISMUS EKLEKTIZISMUS.pdf` (15 S.) vollständig
gelesen (PyMuPDF) und destilliert zu
[[sauter-klassizismus-historismus-eklektizismus-schinkel-semper-denkmalpflege-genese]]:
Dreizehn-Bauten-Kanon 1803-1898 über drei Epochenbegriffe (Klassizismus: Weinbrenner-
Stadtplanung Karlsruhe, drei Schinkel-Bauten Berlin; Historismus/Neogotik: Schinkels
nicht realisierter Nationaldenkmal-Entwurf, Kölner Dom mit drei internationalen
Vergleichsfällen plus einem Schweizer Beispiel Zürich bereits 18. Jh., Friedrichswerdersche
Kirche, Ferstel-Votivkirche Wien; Historismus/Neorenaissance-Neobarock: Garnier-Opéra
Paris, Semper-Hoftheater Dresden; Eklektizismus: Schinkel-Schloss Babelsberg als fiktiv
gewachsene Burg, Trocadéro Paris und Zürich) mit fünf Kurzbiografien (Schinkel mit fünf
der 13 Bauten mit Abstand am stärksten vertreten; bei Semper Cross-Referenz zu den
bestehenden theoriegeschichtlichen Artikeln
[[materialwahrheit-stoffwechseltheorie-semper-urtechniken]] und
[[tektonik-bekleidungstheorie-boetticher-semper-loos-frampton]], beide um Rückverlinkung
ergänzt) sowie einer Denkmalpflege-Genese-Nebenlinie. Kein neuer Glossarbegriff nötig.

**8 der 13 Sauter-Dateien bleiben offen** (Kapitel 05-11, Heimatstil/Gartenstadtbewegung
bis Moderne-Postmoderne). Sperrlisten-Prüfung: kein Fund, ausschliesslich historische,
öffentlich bekannte Architekten/Bauwerke. `git diff --numstat` auf die Inventardatei
zeigte `37 0` (reiner Append). **Nächster Lauf:** Kapitel
`05 HEIMATSTIL GARTENSTADTBEWEGUNG` lesen — Duplikatsrisiko vermerkt, da diese KB bereits
[[gartenstadtbewegung-genealogie-pugin-ruskin-morris-howard-europa]] führt, davor
Duplikatscheck.
