# CHANGELOG architektur-fachwissen

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
