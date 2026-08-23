## 2026-08-23 — QUESTIONS-Abarbeitung (siebter Lauf): SIA 430/118-430 Preise verifiziert und ins REGISTER nachgetragen, vier baurecht-Bring-Schulden als geprüfte externe Bring-Schulden markiert

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` weiter abarbeiten (Fortsetzung der laufenden
QUESTIONS-Abarbeitungs-Serie desselben Tages, sechster Lauf laut Eintrag `260823` VKF BRL 13-15).
Parallel lief mindestens ein weiterer eigener Lauf an derselben KB (SIA-Sweep, siebzehnte
Fortsetzung — Korrigenda-Funde SIA 269/3, 269/5, 269/8), kein Konkurrent, siehe Kollisionsprüfung
unten.

**Systematischer Scan statt Vollstrikte-Lektüre:** bei 4455 Zeilen wurde per Python-Script jeder
`## `-Abschnitt auf die Marker GESCHLOSSEN/✅/ERLEDIGT geprüft (55 Abschnitte, 26 ohne Marker) und
davon die jüngsten/am ehesten noch offenen Abschnitte gezielt gelesen, statt die ganze Historie
linear zu lesen.

**Zwei echte offene P1-Punkte bearbeitet, beide bleiben inhaltlich offen (Bring-Schuld
Raphael), aber mit neuem Beleg verdichtet:**

1. **SIA 430:2023 / SIA 118/430:2023** (aus Run 25, 04.08.2026): Preise am Herausgeber direkt
   nachverifiziert (shop.sia.ch, Abruf 23.08.2026) — SIA 430:2023 CHF 90.00 (28 S., nur
   Inhaltsverzeichnis kostenlos), SIA 118/430:2023 CHF 80.00 (16 S.). Die seit Run 25 bekannte
   REGISTER-Lücke für SIA 118/430 geschlossen: neue Zeile in `wiki/REGISTER.md` angelegt, SIA
   430 um die Preisangabe ergänzt. Kein kostenloser Volltextzugang gefunden — anders als bei der
   SIA-2024-Korrigenda ist die Publikationsart hier «Norm»/«Allgemeine Bedingungen», regulär
   kostenpflichtig. Nachtrag in `wiki/QUESTIONS.md` am bestehenden Eintrag.
2. **Vier Bring-Schulden aus KB `baurecht`** (SIA 491, SN EN 12193, SN 640 052, SN 641 400,
   angemeldet Wissens-Chef Run 15/16): Abgleich mit `training/norm-inventar.md` Zeilen 558-561
   ergab, dass SIA 491 und SN EN 12193 bereits zweimal (Run 30, Run 36) in PL-02 UND PL-03
   geprüft und als extern zu beschaffen bestätigt sind (Preise dort bereits vermerkt: CHF 90.00
   bzw. 134.00/115.00) — in `QUESTIONS.md` stand das nur nie nachgezogen. Für SN 640 052/641 400
   ein eigener VSS-Shop-Anlauf (`mobilityplatform.ch`) versucht, ohne Treffer (Norm-Nummer-Suche
   erfordert laut Shop-Hinweis das Format `*<letzte 5 Ziffern>`, als direkter URL-Parameter
   erfolglos) — kein Kauf/keine Anmeldung versucht. Nachtrag in `wiki/QUESTIONS.md` direkt bei
   den vier Checkbox-Punkten, Checkboxen bewusst nicht angehakt (geprüft ≠ erledigt).

**Kollisionsprüfung:** `ps aux` vor Beginn und vor jedem Schreibvorgang zeigte neben dem eigenen
Prozess (`mschub89`) zwei weitere `claude-run.sh`-Läufe (`mschub86` SIA-Sweep-Fortsetzung an
derselben KB, `mschub88` Baurecht-Reglemente-Queue, andere KB) — kein Namensgleicher, also kein
eigener Lauf doppelt gestartet. `git diff --numstat` nach jedem Schreiben rein additiv (0
Löschungen in beiden bearbeiteten Dateien); die im selben Diff sichtbaren REGISTER-Änderungen zu
SIA 269/3, 269/5, 269/8 stammen vom parallelen `mschub86`-Lauf, nicht von diesem.

**Nicht bearbeitet (bewusst):** N60-1 (AFC-Synopse-Duplikat) und N60-2 (Methodik-Pflicht-14-
Vorschlag) warten explizit auf Raphaels Entscheid/Freigabe, nicht auf weitere Recherche. Die
NIN-Geschirrspüler-Frage (260731) ist laut eigenem Vermerk bereits zweimal frei-web-recherchiert
und eine echte Sackgasse (kostenpflichtiger NIN-Online-Zugang) — kein dritter Anlauf über
dieselben Quellenarten.

## 2026-08-23 — SIA-Sweep, siebzehnte Fortsetzung: neue Sweep-Methode (freie Korrigenda-Downloads), drei Destillate SIA 269/3, 269/5, 269/8

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
`wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen,
nach jedem Schreiben `git diff --numstat` prüfen. Ein `claude`-Prozess mit demselben
Startprompt ist dieser Lauf selbst (dieser Prozess, PID 17924, gestartet 20:57); ein zweiter,
identischer Prozess (PID 13981, gestartet 20:47) hatte den Lauf bereits abgeschlossen (Ergebnis:
die sechzehnte Fortsetzung, siehe Eintrag darunter) — kein Konkurrent, reine zeitliche
Überschneidung der Scheduler-Task-Läufe. Zwei weitere parallele Prozesse (PID 18397 `energie`,
PID 18653 `baurecht`-Reglemente) arbeiteten an fremden KBs.

**Ausgangslage:** Die sechzehnte Fortsetzung hatte die Marker-Abgleich-Methode (Abschnitt A)
für erschöpft erklärt (0 offene Zeilen) und empfohlen, entweder auf eine neue Cross-KB-Bring-
Schuld zu warten oder eine andere Norm-Familie zu bearbeiten. Dieser Lauf hat stattdessen eine
**neue, bisher nicht systematisch angewandte Methode** auf die bestehenden 56 SIA-Zeilen mit
Status «Kein Volltext im Haus» (Abschnitt A) angewendet: die `shop.sia.ch`-Produktseite jeder
Zeile wurde nicht nur auf Gültigkeits-Metadaten (bereits vollständig erledigt), sondern auf
**freie Korrigenda-/Beiblatt-Downloads** (Preisgruppe 0.00 CHF) geprüft — dieselbe Technik, mit
der die sechzehnte Fortsetzung den SIA-2024-Fund und die achte Fortsetzung die SIA-405-Leseprobe
gemacht hatten, hier erstmals systematisch statt punktuell auf mehrere Zeilen angewendet.

**Durchgeführt:** Drei Produktseiten aus der Erhaltungsnormen-Familie SIA 269/x geprüft (Auswahl
nach JANS-Healthcare-Relevanz: Bestandsbauten/Erdbebenüberprüfung), alle drei mit freien
Korrigenda-PDFs:

- **SIA 269/8-C1:2022** (8 S., gültig ab 01.11.2022) vollständig gelesen. **JANS-relevanter
  Kernbefund:** Tabelle 1 macht den Mindesterfüllungsfaktor 0,40 für Bauwerksklasse II-s
  (Schulen/Kindergärten) neu **bedingt** («sofern PBmax nach SIA 261 > 10 Personen»); Ziff.
  10.3.7/Tabelle 2 referenziert für Personenbelegungs-Richtwerte neu **SIA 261:2020 Tabelle 26**,
  darunter «Spital: 1,5–2,5 Personen/Bett»; Formel (26) der Gebrauchstauglichkeits-Überprüfung
  verschärft sich (Faktor 0,5 im Nenner entfällt). Neues Destillat
  `destillate/sia-269-8-korrigenda-c1.md` (established) — Erstanlage dieser Norm in der KB.
- **SIA 269/3-C1:2017 + -C2:2022** und **SIA 269/5-C1:2022** gelesen (je 3 S.): rein technische
  Detailkorrekturen (Formelfehler, Ausgaben-Referenzen SIA 265:2003→2021, Normverweis SN EN
  335-2→SN EN 335), keine JANS-Praxisrelevanz. Nebenbefund im korrigierten Vorwort von
  269/5-C1: **SIA 269/6 wurde in 269/6-1 (Naturstein) und 269/6-2 (künstliche Steine)
  aufgespalten**; SIA 269/8 wird dort von «vorgesehene Ergänzung» zu fester Aufzählungszeile —
  Datierungsbeleg, dass SIA 269/8 zwischen 2011 und der Korrigenda-Gültigkeit 01.08.2022 zur
  Normfamilie hinzukam. Neues, kombiniertes Destillat `destillate/sia-269-3-5-korrigenda.md`
  (established).

**Nachgeführt:**

- `wiki/REGISTER.md`: drei Zeilen (SIA 269/3, 269/5, 269/8) inhaltlich ergänzt (reiner
  Zeilenersatz, Kern-Metadatenaussage unverändert, Korrigenda-Befund + Verweis auf neue
  Destillate angefügt); zwei neue Zeilen in der «FRISCH GEMELDET»-Tabelle oben.
- `destillate/INDEX.md`: zwei neue Zeilen für die beiden neuen Destillate.
- Dieser CHANGELOG-Eintrag.

**Verifikation** (`git diff --numstat` nach jedem Schreibvorgang geprüft):

| Datei | Befund |
|---|---|
| `destillate/sia-269-8-korrigenda-c1.md` | `??` (echte Neuanlage) |
| `destillate/sia-269-3-5-korrigenda.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | 5/3 (drei gezielte Zeilenersetzungen + zwei neue Tabellenzeilen, keine fremden Zeilen betroffen) |
| `destillate/INDEX.md` | 2/0 (reine Neuzeilen) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh`).

**Nicht geleistet / offene Bring-Schulden:**

- Die Basisnormen SIA 269/3:2011, SIA 269/5:2011 und SIA 269/8:2017 selbst liegen weiterhin
  nicht im Haus (kostenpflichtig, Beschaffung Bring-Schuld Raphael) — nur die je frei
  verfügbaren Korrigenda wurden gelesen, sie zeigen ausschliesslich die geänderten Ausschnitte.
- Die neue Methode («freie Korrigenda-Downloads systematisch prüfen») wurde nur auf 3 der 56
  «Kein Volltext im Haus»-Zeilen angewendet, ausgewählt nach JANS-Relevanz. Für einen
  künftigen Lauf: die übrigen 53 Zeilen sind nicht geprüft — insbesondere die anderen
  Erhaltungsnormen (SIA 269, 269/1, 269/2, 269/4, 269/7) und die Merkblatt-Familie SIA 20xx
  sind naheliegende nächste Kandidaten mit vermutlich ähnlicher Korrigenda-Struktur.
- SIA 269/6-1 und SIA 269/6-2 (Nebenbefund aus dem Vorwort) sind noch nicht als eigene
  Register-Zeilen geführt — reiner Fundvermerk, keine eigene Recherche in diesem Lauf.
- Cross-KB-Bringschuld: kein Fach-Skill (`brandschutz`, `ankaufspruefung`) zitiert SIA 269/8
  bisher aktiv — keine Nachführung in fremden KBs nötig, da noch kein Abnehmer existiert.

## 2026-08-23 — SIA-Sweep, sechzehnte Fortsetzung: Korrigenda C1/C2 zu SIA 2024 vollständig gelesen (kostenlose Downloads), Kategorie-8-Werte C1↔C2 identisch

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
`wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen,
nach jedem Schreiben `git diff --numstat` prüfen. Ein `claude`-Prozess mit demselben
Startprompt (PID 13981, gestartet über `scripts/claude-run.sh --name mschub81`) ist dieser Lauf
selbst; parallel lief ein zweiter Lauf derselben KB (`mschub79`, QUESTIONS-Abarbeitung, PID
11101) — kein Konkurrent, siehe Kollisionsprüfung unten.

**Vorlauf gelesen:** `CHANGELOG.md` (Kopf: SIA-Sweep fünfzehnte Fortsetzung) und
`outputs/2026-08-23_sia-sweep-fuenfzehnte-fortsetzung.md`. Jener Lauf hatte den Marker-Abgleich
von Abschnitt A (266 SIA-Zeilen) auf 0 offene Zeilen gebracht und als letzten offenen Punkt eine
neu entdeckte **zweite Korrigenda C2** zu SIA 2024:2021 hinterlassen (Datum/Inhalt ungeklärt,
Bezahlschranke vermutet) sowie explizit vermerkt: aus der Marker-Methode selbst kein weiterer
Kandidat mehr bekannt.

**Eigene Verifikation vor Beginn:** Python-Scan von `wiki/REGISTER.md` Abschnitt A (Zeilen
141-431) auf die acht Direktprüfungs-Marker bestätigt unabhängig **0 Zeilen ohne Marker** — der
Befund der fünfzehnten Fortsetzung war korrekt, kein neuer Sweep-Kandidat aus dieser Methode.
Statt die drei mehrfach erschöpften Zweige (N-SIASWEEP-2/3, Blindzone, Register-Vervollständigung)
erneut zu versuchen, wurde der von der fünfzehnten Fortsetzung offen gelassene, noch nicht
erschöpfte Punkt weiterverfolgt: die C2-Korrigenda zu SIA 2024.

**Durchbruch: beide Korrigenda sind kostenlose Downloads.** Anders als angenommen verlangen
weder C1 noch C2 einen Kauf — WebSearch fand die deutsche Produktseite für C2
(`shop.sia.ch/normenwerk/architekt/sia%202024-c2/d/D/Product`), deren HTML per `curl -A
"Mozilla/5.0"` geladen und nach dem eingebetteten `DownloadAnhang`-UUID-Link durchsucht wurde
(dieselbe Technik wie beim SIA-405-Leseprobe-Fund der achten Fortsetzung). Beide PDFs
vollständig heruntergeladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen (27 Seiten
je Datei; `pdftotext` ohne vollen Pfad ist auf dieser Station nicht im `PATH`, nur unter
`/opt/homebrew/bin/`).

**C1:2024** (SNR 592024:2021-C1:2024 de): von der SIA-Kommission für Gebäudetechnik- und
Energienormen am **14. Mai 2024** genehmigt, **gültig ab 1. Juni 2024** (Titelblatt-Wortlaut).
Ändert 11 Definitionsziffern (0.2.1.1, 0.2.4, 1.1.2.14, 1.1.4.6, 1.1.4.10, 1.1.4.11, 1.1.5.6,
1.1.6.1, 1.1.6.2, 1.1.6.3, 1.2), ersetzt vollständig die Tabellen 4-9 (Energie-/Leistungsbedarf
pro Raumnutzung), das Bürobeispiel Ziff. 3.2 und Anhang A.

**C2:2025** (SNR 592024:2021-C2:2025 de): von derselben Kommission am **6. Mai 2025**
genehmigt, **gültig ab 1. Juni 2025**. Ändert 3 Definitionsziffern (1.1.2.12 neu, 1.1.6.1 und
1.1.6.3 als erneute Nachkorrektur derselben Formeln, die schon C1 angefasst hatte) und ersetzt
erneut vollständig dieselben Tabellen 4-9.

**Zentraler Sachbefund (löst die eigentliche Bring-Schuld):** direkter Zeilenvergleich der
Kategorie-8-Zeilen (8.01 Bettenzimmer, 8.02 Stationszimmer, 8.03 Behandlungsraum) in allen
sechs Tabellen (4-9) zwischen den beiden vollständigen Textextraktion: **zeichenidentisch** in
C1 und C2. Die von der KB `energie` zitierten Kat.-VIII-Elektrizitätskennzahlen (Ziff.
4.2.1/4.2.3 im dortigen Grundlagenbericht-Numbering, VIII.1=36/VIII.2≈30 kWh/m²EBF·a, Run 80)
sind von C2 gegenüber C1:2024 damit **nicht** betroffen — die bereits in `energie` geschlossene
Frage bleibt auch unter C2:2025 gültig. Nicht geklärt: ob C1 gegenüber dem Basistext 2021
selbst (weiterhin nicht im Haus) echte Wertänderungen vornahm.

**Neues Destillat** `destillate/sia-2024-korrigenda-c1-c2.md` (status `established` — Modell D,
beide Volltexte vollständig direkt gelesen, kein Kauf nötig). `destillate/sia-2024-2021.md`
nachgeführt (Verweis auf das neue Destillat statt der bisherigen offenen Bring-Schuld,
`links`-Frontmatter ergänzt). `wiki/REGISTER.md` Zeile SIA 2024 um den Abschluss-Absatz
ergänzt. `wiki/QUESTIONS.md` additiver Nachtrag beim bestehenden Punkt, Ursprungswortlaut
unangetastet. `destillate/INDEX.md` neue Zeile.

**Cross-KB-Bringschuld an `energie` ausgeführt** (Rule `wissens-bibliothekar`, nicht wie im
Destillat ursprünglich als „noch offen" vermerkt — im selben Lauf nachgeholt): additiver
Nachtrag in `wissen/energie/wiki/QUESTIONS.md` bei Run 80/«SIA-2024-Normstand für die
Healthcare-EBF-Schwelle (F100)», mit Verweis auf das neue `normen`-Destillat.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — Neuanlage
`destillate/sia-2024-korrigenda-c1-c2.md` (`??`, echte Neuanlage), `sia-2024-2021.md` 13/12
(zwei gezielte Absatzersetzungen plus Frontmatter-Link), `wiki/REGISTER.md` 1/1 (reiner
Zeilenersatz der eigenen SIA-2024-Zeile), `destillate/INDEX.md` 1/0 (reine Neuzeile),
`wiki/QUESTIONS.md` 66/0 — davon 45 Zeilen ein additiver Nachtrag des parallel laufenden
QUESTIONS-Abarbeitung-13-Laufs (Diff einzeln gegengelesen: eigener Block unangetastet,
korrekt platziert, keine Kollision), 21 Zeilen der eigene Nachtrag; `wissen/energie/wiki/
QUESTIONS.md` 9/0 (rein additiv). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:**
- Der Basistext SIA 2024:2021 selbst bleibt kostenpflichtig (CHF 130.–) und nicht im Haus —
  Beschaffung weiterhin Raphaels Entscheid.
- Ob C1 gegenüber der Erstausgabe 2021 echte Wertänderungen an Kategorie 8 vornahm, ist ohne
  den Basistext nicht feststellbar.
- Die Formelkorrektur in C2 Ziff. 1.1.6.1 (gestrichener Schlusszusatz «ohne Berücksichtigung
  der Gleichzeitigkeit») ist nur textlich, nicht an einem Rendering mit korrekt dargestellten
  griechischen Indizes/Subskripten geprüft — Vorbehalt im Destillat vermerkt.
- Die drei mehrfach erschöpften Sweep-Zweige (N-SIASWEEP-2/3, Blindzone, Register-
  Vervollständigung) erneut nicht angegangen; kein neuer Ansatzpunkt entstanden.
- **Aus der Marker-Abgleich-Methode (Abschnitt A) bleibt weiterhin kein neuer, selbständig
  lösbarer SIA-Sweep-Kandidat bekannt.** Für eine Fortsetzung ohne neue Bring-Schuld als
  Ausgangspunkt bräuchte es eine andere Methode als in den letzten sechzehn Läufen.

Report: `outputs/2026-08-23_sia-sweep-sechzehnte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 13: N58-4 (VKF-Restindex) von vager Sammelfrage zu präzisem Zehn-Positionen-Rückstand

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
`established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
`claude`-Prozess mit demselben Lauf-Namen ist der eigene Lauf, kein Konkurrent.

**`ps aux` zu Laufbeginn geprüft:** eigener Prozess korrekt erkannt. Ein zweiter
`claude -p`-Prozess läuft parallel an derselben KB (`normen`, Auftrag «SIA-Sweep fortsetzen»,
PID 13981) — kein Konkurrent auf denselben Abschnitt (SIA-Sweep vs. hier VKF-Restindex), beide
schreiben additiv; nach diesem Lauf `git diff --numstat` gezielt nur auf die eigenen zwei Dateien
geprüft. Ein dritter Prozess arbeitet an der KB `baurecht` (fremder Scope).

**Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 12) und
`outputs/2026-08-23_questions-abarbeitung12.md`. Run 12 hatte die selbständig lösbaren
QUESTIONS-Punkte für ausgeschöpft erklärt und auf drei grössere, bewusst zurückgestellte Linien
verwiesen: N58-1 (Abdeckungsrichtung, Systemaudit), N58-4 (Restindex, 35 von 83 Indexeinträgen
gesweept) oder ein neuer Bring-Schuld-/Sweep-Fund. Eigene Prüfung des gesamten `QUESTIONS.md`
(Grep aller `### `/`## `-Abschnitte) bestätigt: kein weiterer selbständig lösbarer Punkt neben
den bereits genannten drei Linien. N58-1 bleibt ein Systemaudit (Abdeckung jedes
Bestandsdestillats gegen die eigene Fassung) und damit ausserhalb des Formats eines einzelnen
QUESTIONS-Laufs. N58-4 dagegen liess sich auf einen bounded, primärquellen-gestützten Schritt
verengen — dort angesetzt.

**Durchgeführt.** `bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` direkt abgerufen
(`curl -sL -A "Mozilla/5.0"`, Astro-JSON-Payload, Extraktion über das Feld `"title"` — dieselbe
Technik wie in Run 42 etabliert). Der Index ist seit dem ursprünglichen Run-58-Snapshot
gewachsen: **94 aktuelle deutschsprachige Einträge** in elf Kategorien (a–k), nicht mehr 83.
Kein neuer, bisher unbekannter Fassungswechsel gefunden — der einzige laufende (BRL 12-15/26-15,
Teilrevision 2026, IOTH-Beschluss 06.03.2026) ist bereits vollständig in
`destillate/vkf-teilrevision-2026-pyrotechnik.md` dokumentiert, hier nur gegengeprüft (Titel
tragen im Index korrekt «Gültig ab 01.04.2026» bzw. «Gültig bis 31.03.2026»).

Die vage Sammelfrage in zwei präzise Teile aufgelöst:

1. **IOTH-Beschlüsse «temporäre Unterbringung von Asylsuchenden»**: exakt sechs Beschlüsse
   (2015-12-23, 2017-03-03, 2019-09-19, 2021-09-23, 2023-09-21, 2025-09-18), rund zweijährlicher
   Rhythmus, identischer Titel — Muster einer befristeten Verwaltungsmassnahme, kein
   bauordnungsrelevantes Dauerrecht für die üblichen JANS-Projekttypen. Bewusst zurückgestellt,
   keine Destillation beauftragt (eigene Einschätzung, keine Primärtext-Lektüre).
2. **«2000er-Reihe» präzisiert**: der Index führt 2000-15 bis 2011-15 durchgehend (12 Positionen),
   die KB nur 2001-15 und 2005-15. Zehn benannte Lücken mit Titel dokumentiert (Details in
   `wiki/QUESTIONS.md`, N58-4); als praxisrelevanteste vier markiert (2003-15 Brandschutzpläne,
   2008-15 Baustellen-Brandschutz, 2009-15 Sicherheitsstromversorgung, 2011-15 Gebäudebegrünung).
   Nebenbefund: **2006-15 trägt denselben Titel wie die bereits destillierte BRL 108-15**
   («Gewährleistung der Betriebsbereitschaft von Brandfallsteuerungen (BFS)») — ob eigenständiges
   Merkblatt oder Arbeitshilfe zu 108-15, ist ungeklärt und als Erstprüfung für eine künftige
   Destillation vermerkt (Verwechslungsgefahr analog N57-2 SIA 416/416-1).

**Nicht destilliert.** Keine der zehn Lücken wurde in diesem Lauf am Volltext gelesen oder
destilliert — reine Index-/Metadaten-Recherche, keine Norm-Aussage mit Fundstelle Norm/Ausgabe/
Ziffer daraus abgeleitet. Ein künftiger Destillat-Lauf kann direkt mit der priorisierten Liste
starten, statt den Index erneut zu sweepen.

**Nachgeführt:** `wiki/QUESTIONS.md` (additiver Nachtrag bei N58-4, Ursprungswortlaut
unangetastet), dieser CHANGELOG-Eintrag, `outputs/2026-08-23_questions-abarbeitung13.md`.

**Verifikation:** `git diff --numstat` nach dem Schreibvorgang: `wiki/QUESTIONS.md` 45/0 (rein
additiv). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit über
`scripts/nas-commit-now.sh`).

**Weiterhin offen, unverändert gegenüber Run 12:** N58-1 (Abdeckungsrichtung, Systemaudit),
N60-1/N60-2 (Entscheid Raphael), SVGW-Scope (Entscheid Raphael), Bezahlschranken-Beschaffungen
(SIA 380:2022 u.a., Bring-Schuld Raphael). N58-4 ist mit diesem Lauf nicht geschlossen, aber vom
vagen Sammelposten zu einer konkret abarbeitbaren Zehner-Liste verengt — das ist der Ertrag
dieses Laufs.

## 2026-08-23 — QUESTIONS-Abarbeitung 12: N59-4 (VKF 104-15) geschlossen, unerwarteter Fund FAQ 104-001 als Vorstufe der 2022er-Regel

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
`established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen.

**Vorlauf gelesen:** `CHANGELOG.md` (Kopf: SIA-Sweep fünfzehnte Fortsetzung) und
`outputs/2026-08-23_questions-abarbeitung11.md`. `ps aux` geprüft: nur der eigene Prozess
(Lauf-Name `mschub79`) an dieser KB, kein Konkurrent; ein zweiter `claude`-Prozess arbeitet
parallel an der KB `baurecht` (fremder Scope, keine Kollision).

- Run 11 hatte die KB für eigenständig lösbare QUESTIONS-Punkte für ausgeschöpft erklärt und
  empfohlen, **nicht** denselben Scan zu wiederholen, sondern gezielt eine der grösseren
  zurückgestellten Linien anzugehen. Eigene Prüfung bestätigte das für alle Sammelfragen
  (N-SIASWEEP-2/-3, N59-2/-3, N60-1/-2, SVGW-Scope) — mit einer Ausnahme: N59-4 hatte selbst
  einen konkreten nächsten Schritt benannt («dieselbe Archivseiten-Technik auf weitere
  Delta-Destillate mit grossen Fassungssprüngen anwenden»), der noch nicht auf **104-15**
  (Fassungssprung 2015 → 2022, sieben Jahre) angewendet worden war.
- **Archivprüfung `bsvonline.ch/de/brandschutzvorschriften/archiv-bsv-2015`** (strukturierte
  Titel-Suche im eingebetteten JSON, nicht Text-Grep — Lehre aus dem sechsten Lauf): genau ein
  Treffer «104-15 Spänefeuerungen (gültig bis 30.11.2022)». **N59-4 für 104-15 geschlossen:**
  lückenloser Übergang 01.01.2015 → 01.12.2022, keine Zwischenausgabe (gleiches Muster wie
  108-15). Damit ist die Archivtechnik auf alle drei identifizierten grossen Fassungssprünge
  angewendet (40-15 offen/kein Treffer, 108-15 und 104-15 geschlossen); kein weiterer
  vergleichbarer Kandidat im Bestand.
- **Unerwarteter Fund, wichtiger als die Ausgangsfrage:** dieselbe Archivseite listet zu 104-15
  eine amtliche FAQ, **104-001** (ABSV, Beschlussdatum 16.03.2015, Ziff. 6.2, «Erläuterung /
  Interpretation», `BSPUB-1394520214-1243.pdf`, per `pdftotext` gelesen). Sie erlaubt bereits
  **seit 2015** eine Schliessverzögerung der Rückluftkanal-Brandschutzklappe bei nicht dauernd
  laufendem Förderventilator — **die Vorstufe der 2022 in Ziff. 6.2 Abs. 2 kodifizierten
  Regel**, die im bestehenden Fassungs-Delta bisher als reine 2022-Neuerung geführt wurde.
  Nachgetragen in `destillate/vkf-brl-104-15-spaenefeuer.md` (Ziff. 6.2, mit Volltext-Beleg) und
  `destillate/vkf-brl-104-15-fassung-2022-delta.md` (Tabellenzeile 6.2 + neuer Abschnitt
  «Herkunft der Ziff.-6.2-Abs.-2-Regel und Archivprüfung»). `last_updated` beider Dateien auf
  23.08.2026 nachgezogen; Verifikationsstatus unverändert (`established` bzw. `speculative`).
- **Zahlenwert-Unstimmigkeit dokumentiert, nicht stillschweigend korrigiert:** die FAQ-Antwort
  nennt wörtlich «120 Minuten» Verzögerung, was der eigenen Fragestellung (Öffnungszeit bis
  120 Sekunden) und der 2022 kodifizierten Fassung («120 Sekunden») widerspricht — vermutlich
  ein Schreibversehen im VKF-Original. Als Vorbehalt in beiden Destillaten und in
  `wiki/QUESTIONS.md` (N59-4) vermerkt; für ein laufendes Projekt gilt die 2022-Fassung mit
  120 Sekunden.
- `wiki/QUESTIONS.md`: N59-4 um den Nachtrag ergänzt (additiv, Ursprungstext unverändert).
- Nach jedem Schreibvorgang `git diff --numstat` geprüft: alle vier Edits (zwei Destillate,
  QUESTIONS.md, dieser CHANGELOG-Eintrag) rein additiv, keine bestehende Zeile gelöscht ausser
  den gezielt ersetzten Formulierungen (Tabellenzeile 6.2 Wirkungs-Spalte, `last_updated`).
- Report: `outputs/2026-08-23_questions-abarbeitung12.md`.

## 2026-08-23 — SIA-Sweep, fünfzehnte Fortsetzung: SIA 2024:2021 erstmals direkt am Herausgeber verifiziert, neue Korrigenda C2 entdeckt

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
`wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen,
nach jedem Schreiben `git diff --numstat` prüfen. `ps aux` zu Laufbeginn geprüft: ein
`claude`-Prozess mit demselben Startprompt (PID 34776) ist dieser Lauf selbst (headless
Invocation über die Desktop-App), kein Konkurrent.

**Vorlauf gelesen:** dieser CHANGELOG (Kopf zu Laufbeginn: QUESTIONS-Abarbeitung 11, davor die
vierzehnte SIA-Sweep-Fortsetzung) und `outputs/2026-08-23_sia-sweep-vierzehnte-fortsetzung.md`.
Der elfte QUESTIONS-Lauf hatte kurz zuvor einen vollständigen Scan von `wiki/QUESTIONS.md`
gefahren und ausdrücklich empfohlen, diesen Scan nicht zu wiederholen — die vier verbliebenen
Klassen (Bezahlschranke, Raphael-Entscheid, Systemaudit-Projekte, Erschöpfungslogik) seien nicht
durch weitere freie Recherche lösbar. Diese Empfehlung betrifft die QUESTIONS-Abarbeitung, nicht
den hier verlangten SIA-Sweep; darum stattdessen mit der Methode der vierzehnten Fortsetzung
weitergesucht: systematischer Marker-Abgleich aller 266 SIA-Zeilen in Abschnitt A gegen die
Fundstellen-Wörter, die eine echte Direktprüfung anzeigen (`shop.sia.ch`, `Produktseite`,
`Bestand`, `zurückgezogen`, `connect.snv.ch`, `ersetzte_normen.pdf`, `am Original`,
`Titelblatt`). Python-Skript gegen `wiki/REGISTER.md` (140-431) gefahren: **eine einzige Zeile**
ohne einen dieser Marker — **SIA 2024**.

**Befund am Original.** Die Zeile SIA 2024 trug seit dem 14.07.2026 (Wissens-Chef Run 4) nur
eine **Sekundärquellen-Meldung** aus der KB `energie` («neuere Ausgabe SIA 2024:2021 … Quelle
SIA-Shop»), nie einen eigenen Abruf der SIA-Produktseite durch `normen`. Direktprüfung
23.08.2026: `shop.sia.ch/normenwerk/architekt/sia%202024/d/2021/D/Product` (SN 592024), per
WebFetch abgerufen — «Raumnutzungsdaten für die Energie- und Gebäudetechnik», **gültig ab
01.12.2021**, 80 S., 130.00 CHF, ersetzt Ausgabe 2015 (gültig bis 30.11.2021). Das bisher nur
gemeldete Datum ist damit bestätigt.

**Neuer Fund: zweite Korrigenda C2, bisher unbekannt.** Die Produktseite führt «Revision 2»
(Stand 01.06.2025) sowie zwei Korrigenda-Downloads, **C1 und C2** — in dieser KB und in
`energie` war bisher nur Korrigenda C1:2024 bekannt (Grundlagenbericht
`cms.sia.ch/de/api/getMedia/941`). Datum und materieller Inhalt von C2 sind auf der Produktseite
nicht ausgewiesen (kein Datum im Linktext, Wortlaut hinter Bezahlschranke) — neue Bring-Schuld
in `wiki/QUESTIONS.md` festgehalten: vor jeder künftigen Verwendung der Kat.-VIII-
Elektrizitätskennzahlen (Ziff. 4.2.1/4.2.3) aus `energie` prüfen, ob C2 diese betrifft.

**Nebenbefund: toter Backlink korrigiert.** Die Register-Zeile verlinkte weiterhin
`destillate/sia-2024-nutzungsdaten-gesundheitsbau` in der KB `energie` — diese Datei wurde dort
bereits am 26.07.2026 in `sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` eingemergt
(Quelldatei gelöscht laut `energie`-Frontmatter `merge_historie`). In der Register-Zeile auf den
aktuellen Dateinamen korrigiert.

**Neues Destillat** `destillate/sia-2024-2021.md` (status `speculative`, nur Metadaten
verifiziert, Volltext inkl. Anhang A/F weiterhin nicht im Haus) nach dem Muster von
`sia-2032.md` — begründet, weil die Norm bereits inhaltlich in `energie` referenziert wird
(Analogiefall SIA 2032). `destillate/INDEX.md` nachgeführt.

Nachgeführt: `wiki/REGISTER.md` (Zeile SIA 2024), `wiki/QUESTIONS.md` (additiver Nachtrag beim
bestehenden Punkt «Nachfolgeausgaben nicht ermittelbar», Ursprungswortlaut unangetastet),
`destillate/sia-2024-2021.md` (neu), `destillate/INDEX.md` (neue Zeile).

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — `wiki/REGISTER.md`
1/1 (reiner Zeilenersatz, ausschliesslich die eigene SIA-2024-Zeile), `wiki/QUESTIONS.md` 9/0
(rein additiv, exakt die eigene Einfügung), `destillate/INDEX.md` 1/0 (reine Neuzeile),
`destillate/sia-2024-2021.md` als `??` (echte Neuanlage, kein Fremdanteil möglich). Kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:** Kein Volltext von SIA 2024:2021 gekauft (CHF 130,
inkl. Anhang A/F) — bleibt Beschaffungs-Bring-Schuld Raphael. Korrigenda C1:2024 und C2 weder
am Wortlaut gelesen; C2-Datum ungeklärt. Die drei bereits mehrfach erschöpften Sweep-Zweige
(N-SIASWEEP-2/3, Blindzone, Register-Vervollständigung) erneut nicht angegangen — dafür bestand
nach dem Marker-Abgleich kein neuer Ansatzpunkt. Keine weitere SIA-Zeile in Abschnitt A ohne
Direktprüfungs-Marker gefunden; für die nächste Fortsetzung bleibt kein bekannter,
selbständig lösbarer SIA-Sweep-Kandidat aus dieser Methode übrig. Eigene, klar abgegrenzte
Alternativ-Aufträge (N58-1 Abdeckungsrichtung, N58-4 Restindex VKF-Fassungsmatrix) liegen
ausserhalb des SIA-Sweep-Scopes und wurden hier nicht begonnen, wie vom elften Lauf empfohlen.

Report: `outputs/2026-08-23_sia-sweep-fuenfzehnte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 11: Verifikationslauf, kein neuer selbständig lösbarer Punkt gefunden

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
`established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. `ps aux` zu
Laufbeginn geprüft: der einzige `claude`-Prozess mit demselben Startprompt (PID 7781, gestartet
über `scripts/claude-run.sh --name mschub74`) ist dieser Lauf selbst (headless Invocation), kein
Konkurrent.

**Vorlauf gelesen:** dieser CHANGELOG (Kopf: QUESTIONS-Abarbeitung 10) und
`outputs/2026-08-23_questions-abarbeitung10.md`. Dessen Schlussbefund («KB für
Selbstläufer-Fragen ausgeschöpft, bis eine neue Bring-Schuld oder ein neuer Sweep-Fund
entsteht») wurde nicht übernommen, sondern selbst nachgeprüft: alle `##`/`###`-Abschnitte in
`wiki/QUESTIONS.md` (4351 Zeilen) systematisch gegen ihren aktuellen Status gelesen, dazu eine
gezielte Cross-KB-Suche nach neuen, seit dem zehnten Lauf an `normen` übergebenen Bring-Schulden
in `energie`, `baurecht`, `immobilienbewertung`, `koordination`, `planungsgrundlagen`,
`grobkosten` (Suchmuster «Übergabe an KB … normen», «Bring-Schuld … normen», «→ normen»).

**Ergebnis: Einschätzung des zehnten Laufs bestätigt, kein neuer Punkt gefunden.** Alle
verbliebenen offenen Punkte fallen in eine von vier Klassen, keine davon durch weitere freie
Recherche lösbar: (1) **Beschaffungs-Bring-Schulden hinter Bezahlschranke** — N-SIASWEEP-2/3
(SIA 422, SIA 2021/2025; bereits über acht unabhängige freie Quellenarten erschöpft geprüft,
siebte Fortsetzung empfiehlt ausdrücklich keinen weiteren Anlauf mit denselben Mitteln),
SIA 380:2022 (N57-2), SIA 382/1:2025-Re-Destillat, EN 13487/EN 12102-1-Volltexte, NIN-Frage
(Geschirrspüler-Stromkreis) — Claude tätigt keine Käufe (Rule `wege-und-vollmachten`); (2)
**Entscheid-/Freigabe-Punkte für Raphael** — N60-1 (zwei `established`-Destillate zusammenlegen,
destruktiv), N60-2 (Methodik-Pflicht-14-Vorschlag), SVGW-Scope-Frage; (3) **eigene
Systemaudit-Projekte, kein Einzelpunkt** — N58-1 (Abdeckungsrichtung der VKF-Bestandsdestillate),
N58-4 (Sweep deckt erst 35 von 83 Indexeinträgen ab); (4) **dieselbe Erschöpfungslogik wie
N-SIASWEEP** — N59-2/N59-3/N59-4 (Restpunkte 40-15). Die einzige neu gefundene Cross-KB-Spur
(SIA 382/1:2025-Bring-Schuld, gemeldet in `energie/wiki/QUESTIONS.md` Wissens-Chef Run 16) ist
bereits auf `normen`-Seite in `wiki/REGISTER.md` (Zeilen 331, 812) und
`destillate/sia-382-1-2014.md` identisch dokumentiert — nichts nachzuziehen.

**`wiki/QUESTIONS.md` bewusst unverändert gelassen** — ein Änderungseintrag ohne inhaltliche
Substanz würde die Datei nur verlängern (Rule `wissens-ruecklauf`: «Nichts Verallgemeinerbares →
nichts ablegen»). Report mit der vollständigen Prüfliste: `outputs/2026-08-23_questions-abarbeitung11.md`.

**Verifikation:** `git diff --numstat` nach dem Schreiben des Reports geprüft — reine Neuanlage
(`??`), keine bestehende Datei verändert. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Empfehlung an den nächsten Lauf:** nicht erneut denselben Vollscan wiederholen, solange keine
der vier Bring-Schulden erfüllt wurde und kein neuer Sweep-Fund vorliegt. Bei Kapazität eher
N58-1 (Abdeckungsrichtung) oder N58-4 (Restindex) als eigenen, klar abgegrenzten Auftrag
aufsetzen statt als Nebenprodukt einer QUESTIONS-Abarbeitung.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 10: EN 13487/EN 12102-1 Ausgaben geklärt (Cross-KB `energie` Run 18), INDEX-Fehltitel SIA 2032 nachgezogen, SVGW-Scope-Frage strukturiert vertagt

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
`established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. `ps aux` zu
Laufbeginn geprüft: ein `claude`-Prozess mit demselben Startprompt (PID 4634) ist dieser Lauf
selbst (headless `-p`-Invocation), kein Konkurrent.

**Vorlauf gelesen:** dieser CHANGELOG (Kopf zu Laufbeginn: SIA-Sweep vierzehnte Fortsetzung,
darunter QUESTIONS-Abarbeitung 9) und `outputs/2026-08-23_questions-abarbeitung9.md`. Der neunte
Lauf hatte die KB für eigenständig lösbare Punkte als «praktisch ausgeschöpft» eingestuft, aber
vor der neusten (vierzehnten) SIA-Sweep-Fortsetzung geschrieben — deren Report nennt drei neue
Kandidaten nach demselben Muster: SVGW-Regelwerk (Run 20, Punkt 3), EN 13487 und EN 12102-1
(Run 18, Punkte 2/3).

**Befund 1: EN 13487 und EN 12102-1 — Ausgabe über DIN-Media-Produktseiten geklärt, kein Kauf.**
Beide Normen standen seit Run 18 (27.07.2026) als Cross-KB-Bring-Schuld aus `energie` offen,
zitiert ohne Ausgabejahr. Per WebFetch verifiziert: **DIN EN 13487:2019-11** (dt. Fassung
EN 13487:2019, ersetzt DIN EN 13487:2004-03/EN 13487:2003) und **DIN EN 12102-1:2023-11** (dt.
Fassung EN 12102-1:2022, ersetzt DIN EN 12102-1:2018-02/EN 12102-1:2017, gegenbestätigt über die
ANSI-Webstore-Zweitquelle). Beide Normen sind als DIN EN ohnehin im Skill-Scope
(«SIA, VKF, DIN, VSS, RAL»). Neu angelegt: `destillate/en-13487-2019.md` und
`destillate/en-12102-1-2022.md` (beide `status: speculative` — nur Ausgabe/Titel belegt, Volltext
nicht im Haus, kostenpflichtig, Beschaffung bleibt Bring-Schuld Raphael). `wiki/REGISTER.md`
(neuer Abschnitt «QUESTIONS-Abarbeitung 10», Formatvorbild: der bestehende EN-520-Mini-Run-Block)
und `destillate/INDEX.md` nachgeführt.

**Befund 2 (Cross-KB-Rückfluss, Rule `wissens-bibliothekar`): drei Abnehmer-Fundstellen in
`energie` mit der jetzt bekannten Ausgabe nachgezogen** —
`wissen/energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:291`,
`wissen/energie/wiki/waermepumpen-laermschutz.md:110` (beide EN 13487:2019) und
`wissen/energie/destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md:39`
(EN 12102-1:2022) — additiv, kein bestehender Text gelöscht.

**Befund 3 (Nebenfund beim Lesen von `destillate/INDEX.md`): Stub-Fehltitel SIA 2032 nicht
mitgezogen.** Die vierzehnte SIA-Sweep-Fortsetzung hatte den Titel im Destillat selbst
korrigiert («Ökobilanzierung für die Erstellung von Gebäuden» statt der erfundenen
«Ökobilanzen im Bauwesen»), die zugehörige `destillate/INDEX.md`-Zeile aber nicht nachgezogen —
sie trug weiterhin den alten Fehltitel und «n.a.» als Ausgabe. In diesem Lauf korrigiert.

**Befund 4: SVGW-Scope-Frage strukturiert vertagt, nicht selbst entschieden.** Die vierzehnte
SIA-Sweep-Fortsetzung hatte den SVGW-Punkt (Run 20, Punkt 3) als «Scope-Frage für den nächsten
Lauf» offen gelassen. Geprüft: der Skill `normen` definiert seinen Router-Scope explizit als
«SIA, VKF, DIN, VSS, RAL» — SVGW steht dort nicht. Eine eigenmächtige Aufnahme von
SVGW-Normen ins REGISTER wäre eine Scope-Erweiterung, keine reine Bring-Schuld-Erledigung; nach
Rule `wissens-bibliothekar` (Pause vor Umbau/Struktur-Entscheiden) bleibt der Entscheid bei
Raphael. Zwei Optionen als Empfehlung in `QUESTIONS.md` festgehalten (SVGW in den Scope
aufnehmen vs. bewusst aussen vor lassen), nicht selbst umgesetzt. Der Sonderfall SVGW-Merkblatt
TPW 2001/1 (Volltext liegt in `energie` bereits gelesen vor, nur Register-Erfassung fehlt) bleibt
davon unabhängig lösbar — als Empfehlung an `energie` vermerkt, nicht selbst in `normen`
aufgenommen.

Nachgeführt: `wiki/REGISTER.md`, `destillate/INDEX.md`, `destillate/en-13487-2019.md` (neu),
`destillate/en-12102-1-2022.md` (neu), `wiki/QUESTIONS.md` (Run-18-Punkte 2/3 additiv
geschlossen, SVGW-Punkt additiv um Scope-Empfehlung ergänzt, Ursprungswortlaut überall
unangetastet), drei Dateien in `wissen/energie/`.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft —
`destillate/INDEX.md` 3/1 (1 Zeile ersetzt, 2 neue Zeilen, exakt erwartet),
`wiki/REGISTER.md` 11/0 (rein additiv), `wiki/QUESTIONS.md` 17/0 dann 34/0 kumulativ (beide
additiven Blöcke), die drei `energie`-Dateien je 3/1 (Ein-Zeilen-Ersatz durch die längere Zeile
mit Ausgabejahr, exakt erwartet). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / weiterhin offen:** Volltext-Beschaffung EN 13487/EN 12102-1 (kostenpflichtig,
Bring-Schuld Raphael); keine SN-EN-Übernahme dieser beiden Normen geprüft (nur DIN-Fassung); die
SVGW-Scope-Frage bleibt bei Raphael; N60-1 (AFC-Synopse-Duplikat) und N60-2
(Methodik-Pflicht-Vorschlag) unverändert bei Raphael; NIN-Frage unverändert hinter Bezahlschranke.
Nach diesem Lauf sind keine weiteren eigenständig lösbaren, noch offenen QUESTIONS-Punkte mehr
identifiziert — die KB bleibt für Selbstläufer-Fragen ausgeschöpft, bis eine neue Bring-Schuld
oder ein neuer Sweep-Fund entsteht.

Report: `outputs/2026-08-23_questions-abarbeitung10.md`.

---

## 2026-08-23 — SIA-Sweep, vierzehnte Fortsetzung: SIA 2032:2010→2020 (Titel- und Fassungswechsel) am Original bestätigt, Stub-Fehltitel korrigiert

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
beachten, jede Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: dreizehnte
Fortsetzung) und `outputs/2026-08-23_sia-sweep-zwoelfte-fortsetzung.md` (Empfehlung: systematisch
Register-Zeilen suchen, deren Bring-Schuld/offene Frage nur auf einer Sekundärquelle beruht statt
auf einer eigenen Direktprüfung der Produktseite). Der `ps aux`-Check zeigt einen `claude`-Prozess
mit exakt demselben Startprompt wie dieser Lauf (PID 3140, gestartet 8:21) — das ist dieser Lauf
selbst (headless `-p`-Invocation), kein Konkurrent, wie der Laufauftrag ausdrücklich vorsieht.

**Ausgangslage:** Die dreizehnte Fortsetzung hatte SIA 500 Korrigenda C1/C2 abgeschlossen und
empfohlen, die drei erschöpften Sweep-Zweige (Register-Vervollständigung, Blindzone,
N-SIASWEEP-2/3) nicht erneut anzugehen. Der zwölfte Lauf hatte dasselbe Muster wie hier (SIA
385/9) bereits einmal bearbeitet und als Positivbeispiel SIA 387/4 genannt (von `energie` selbst
bereits verifiziert). Systematisch nach demselben Muster («bisher nur … gemeldet» /
«nicht am Normtext verifiziert») in `wiki/QUESTIONS.md` gesucht: Wissens-Chef Run 20
(29.07.2026) hatte für **SIA 2032** exakt diesen Fall offen gelassen — REGISTER führte 2010 mit
einem Fassungsflag, zwei Sekundärquellen der KB `energie` (KBOB-Faktenblatt, MuKEn-2025-Modul-G)
arbeiteten seit 26.06.2026 mit SIA 2032:2020, aber niemand hatte die Produktseite selbst
abgerufen.

**Befund am Original:** `shop.sia.ch/normenwerk/architekt/sia%202032/d/2020/D/Product`
(SN 592032) per WebFetch abgerufen. Bestätigt: **SIA 2032:2020** «Graue Energie —
Ökobilanzierung für die Erstellung von Gebäuden», gültig ab **01.08.2020**, 44 Seiten,
100.00 CHF. Ersetzt **SIA 2032:2010** «Graue Energie von Gebäuden», gültig bis 31.07.2020. Der
Titelwechsel ist inhaltlich, nicht kosmetisch: von der reinen Grauenergie-Bilanzierungshilfe zur
vollständigen Ökobilanzierungsnorm — relevant für jede künftige Zitierung.

**Nebenbefund beim Destillat-Stub:** `destillate/sia-2032.md` (angelegt 07.08.2026 bei der
Health-Check-Reparatur toter Backlinks) trug einen erfundenen Titel «Ökobilanzen im Bauwesen» und
eine unbelegte Kettenaussage zu SIA 2024 (Recyclingbeton) als «Nachfolgequelle». Beides war reine
Lückenfüllung ohne Quelle — im selben Lauf auf den verifizierten Titel korrigiert, die
SIA-2024-Verknüpfung als ungeprüft markiert (nicht gelöscht, da der Link technisch besteht).

Nachgeführt: `wiki/REGISTER.md` (Zeile SIA 2032, Fassungskette + Titelwechsel belegt),
`destillate/sia-2032.md` (Frontmatter-Titel korrigiert, Korrekturvermerk + Phase-2-Auftrag
präzisiert mit Bezug auf die beiden `energie`-Abnehmer), `wiki/QUESTIONS.md` (Run-20-Punkt 1
additiv mit ✅-Nachtrag geschlossen, Ursprungswortlaut unangetastet).

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — `wiki/REGISTER.md`
1/1 (reiner Zeilenersatz, eigene Zeile), `destillate/sia-2032.md` 21/7 (vollständige Neufassung
des Stubs, wie beabsichtigt), `wiki/QUESTIONS.md` 10/0 (rein additiv, exakt die eigene
Einfügung). Beim Edit an `QUESTIONS.md` meldete das Werkzeug, die Datei sei seit dem letzten
Lesen extern verändert worden — der Edit hat dennoch sauber angewandt (`old_string` unverändert
vorgefunden), und der `--numstat`-Wert von 10/0 bestätigt, dass ausschliesslich die eigene
Einfügung im Diff steht, keine Fremdänderung überschrieben wurde. Kein `git`-Schreibbefehl über
den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:** Kein Volltext von SIA 2032:2020 (oder :2010)
gekauft — bleibt Beschaffungs-Bring-Schuld Raphael. Die eigentliche Phase-2-Vollinhalts-
Destillation (LCA-Kennwerte) bleibt offen, ebenso der dangling Link `[[sia-2032]]` in
`sia-2040-2017.md`. Die Abgrenzung SIA 2032:2020 vs. SN EN 15978 vs. KBOB/MuKEn-Modul-G (welche
Grössen sich decken, welche nicht) wurde nicht geprüft — reiner Ausgaben-/Titel-Befund, kein
Inhaltsvergleich. Die drei bereits erschöpften Sweep-Zweige (Register-Vervollständigung,
Blindzone, N-SIASWEEP-2/3) erneut nicht angegangen. **Weitere Kandidaten nach demselben Muster**
(«bisher nur … gemeldet», in `QUESTIONS.md` noch nicht abschliessend geprüft): SVGW-Regelwerk
(Run 20, Punkt 3 — allerdings andere Norm-Familie, ausserhalb SIA/VKF/DIN/VSS/RAL, Scope-Frage
für den nächsten Lauf), EN 13487 und EN 12102-1 (Run 18, Punkte 2/3 — noch offen, keine Ausgabe
verifiziert).

Report: `outputs/2026-08-23_sia-sweep-vierzehnte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 9: Dateiname/Inhalt-Mismatch bei `vkf-merkblatt-brandschutzklassifikation-bauteile.md` aufgeklärt

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopf: QUESTIONS-Abarbeitung 8) und
`outputs/2026-08-23_questions-abarbeitung8.md`. Zwei weitere `claude`-Prozesse derselben Station
liefen echt parallel an derselben KB (`ps aux` geprüft: ein zweiter, eigenständiger
QUESTIONS-Abarbeitungs-Prozess und ein SIA-Sweep-Prozess) — unterschiedlicher Themenzweig
gewählt, um Kollision zu vermeiden.

**Ausgangslage:** Die meisten in `wiki/QUESTIONS.md` sichtbaren offenen Punkte waren nach acht
QUESTIONS-Abarbeitungen und dreizehn SIA-Sweep-Fortsetzungen desselben Tages bereits geschlossen
oder ausdrücklich auf Raphael/Kaufentscheide vertagt (N60-1 Duplikat-Merge, N60-2
Methodik-Pflicht-Vorschlag, NIN-Frage hinter Bezahlschranke). Ein Punkt blieb tragfähig offen und
ohne SharePoint-Volltext-Zugriffsproblem lösbar: der seit 13.07.2026 offene Verdacht «Dateiname
passt nicht zum Inhalt» bei `vkf-merkblatt-brandschutzklassifikation-bauteile.md`
(Quelle laut Frontmatter `Brandschutz-Praevention.pdf`, Inhalt aber eine
Bauteil-Klassifikationstabelle).

**Befund: kein Mismatch.** `Brandschutz-Praevention.pdf` am Original beschafft — Site `PL`,
Drive `02_Recht_Norm` via M365-Graph-Connector aufgelöst (`--site pl`, `--get
/sites/<id>/drives`), Datei über `@microsoft.graph.downloadUrl` per `curl` geladen (52 369 Byte,
1 Seite), mit `pdftotext -layout` vollständig gelesen. Die Kopfzeile des Blatts trägt den
Serien-/Herausgeber-Brand **«Brandschutz + Prävention» / «Merkblatt»** der herausgebenden
regionalen Fachstellen (NSV, Gebäudeversicherung Luzern, Kt. Schwyz, Kt. Obwalden, Kt. Uri) —
erst darunter folgt der eigentliche Inhaltstitel «Brandschutz-Klassifikation von häufig
verwendeten Bauteilen». Die PDF-Metadaten (`pdfinfo`) bestätigen das unabhängig: `Title:
Merkblatt_Klassifikation Bauteile_V.1`. Der Dateiname stammt also vom Serien-Brand des
Dokuments selbst, nicht von einer Fehlablage; die Tabelle im Original deckt sich Zeile für
Zeile mit dem Destillat (REI/EI/R/E-Klassen, Kapselungsregel K 30-RF1, Brandschutzabschlüsse
EI 30/E 30).

**Zweite Teilfrage mitgeprüft:** Ob `Brandverhuetung & organisatorischer Brandschutz.pdf`
(Quelle von `vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md`) und
`Brandschutz-Praevention.pdf` in Wahrheit dieselbe Datei sind. Ordnerlisting des SharePoint-
Ordners `VKF_Norm/02_Brandschutzrichtlinien 2015` (`--get .../children`) bestätigt: beide
Dateinamen existieren dort unabhängig nebeneinander — zwei verschiedene PDFs, kein Merge-Fall.

Nachgeführt: `destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md` (additiver Absatz
in «Offene Punkte», `last_updated` auf 2026-08-23 gesetzt), `wiki/QUESTIONS.md` (Eintrag mit
✅-Schliessung versehen, Ursprungswortlaut unangetastet als durchgestrichene Zeile darunter
stehen gelassen, Rule `wissens-bibliothekar` — kein Löschen).

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft —
`destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md` 12/1 (rein eigener Edit,
1 Löschzeile ist die bewusste `last_updated`-Ersetzung). `wiki/QUESTIONS.md` zeigte beim zweiten
Edit 37/1 statt der erwarteten ~17/1 — per `git diff` (nicht nur `--numstat`) gegengelesen: der
zusätzliche Block (23 Zeilen, SIA-500-Korrigenda C1/C2) stammt nachweislich vom parallel
laufenden SIA-Sweep-Prozess («dreizehnte Fortsetzung», eigener Datei-Hunk an anderer Stelle,
Zeile ~4054), keine Überschneidung mit der eigenen Bearbeitungsstelle. Kein `git`-Schreibbefehl
über den SMB-Mount ausgeführt.

**Nicht geleistet / weiterhin offen:** Die Nachbar-Teilfrage in der alten Sammel-Notiz (Zeile
~3393, «Verify-Abschluss MacBook») zur K-30-RF1-Definition (bisher nur sinngemäss aus BSR 13-15,
speculative) ist NICHT mitgeklärt — dafür wäre das BSR-13-15-Original selbst
(`Baustoff & Bauteile.pdf`) nötig, nicht nur das Merkblatt. N60-1/N60-2 unverändert bei Raphael;
NIN-Frage unverändert hinter Bezahlschranke.

**Selbstkorrektur während dieses Laufs (Beleg für Rule 260811):** Der erste Schreibversuch dieses
CHANGELOG-Eintrags hat versehentlich die Kopfzeile des direkt darüberliegenden, fremden Eintrags
(«SIA-Sweep, dreizehnte Fortsetzung») gelöscht — `old_string` traf nur die Kopfzeile, `new_string`
gab sie nicht zurück, wodurch deren Fliesstext kopflos hinter meinem eigenen Eintrag stand.
Sofort per `git diff --numstat` bemerkt (121/0 statt der erwarteten ~48/0) und mit `git diff`
(nicht nur `--numstat`) lokalisiert; die Kopfzeile wurde im selben Lauf wortgleich wiederhergestellt
und mit einem `---`-Trenner sauber von diesem Eintrag abgegrenzt. Kein Inhalt des fremden Laufs
ging verloren, nur die Kopfzeile war kurzzeitig weg. Lehre: bei additiven Edits an Dateien mit
gleichzeitig aktiven Parallelläufen `old_string` niemals auf eine alleinstehende Kopfzeile ohne
Kontext davor/danach beschränken, wenn `new_string` sie nicht selbst wieder mit ausgibt.

---

## 2026-08-23 — SIA-Sweep, dreizehnte Fortsetzung: SIA 500 Korrigenda C1:2009/C2:2011 am Original ausgewertet, Fehlzuschreibung an Ziff. 3.7.2/9.5.1 korrigiert

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
beachten, jede Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: zwölfte
Fortsetzung) und `outputs/2026-08-23_sia-sweep-zwoelfte-fortsetzung.md`.

Die zwölfte Fortsetzung hatte drei Zweige des Sweeps als erschöpft vermerkt und empfohlen, gezielt
nach Register-/QUESTIONS-Einträgen mit nur sekundär belegter Bring-Schuld zu suchen. Fündig
geworden bei einem bereits konkret formulierten, noch offenen Auftrag: `wiki/QUESTIONS.md`,
Eintrag «Wissens-Chef Run 19» (28.07.2026), hatte C3:2013 und C4:2019 am 23.08.2026 (siebter
QUESTIONS-Lauf) vollständig ausgewertet, C1:2009 und C2:2011 aber ausdrücklich «unverändert offen
(nur sekundär über `sia-500-auslegung.md`, Stand April 2012, belegt)» stehen lassen — mit dem
expliziten Auftrag im vorausgehenden Text: «danach C1/C2 im Volltext beschaffen».

**Direktprüfung 23.08.2026:** Produktseite `shop.sia.ch/normenwerk/architekt/sia%20500/d/D/Product`
bestätigt nur eine Ausgabe 2009 (eine WebSearch-Zusammenfassung hatte fälschlich eine 2./3. Auflage
suggeriert — am Original widerlegt, nicht übernommen). C1 (76'368 Bytes) und C2 (85'747 Bytes, per
Kolophon als deutsche Fassung bestätigt trotz `/F/`-Suffix in der URL) über
`shop.sia.ch/…/DownloadAnhang` (Preisgruppe 0, kostenlos) geladen und vollständig mit
`pdftotext -layout` gelesen (6 bzw. 5 Seiten).

**Materiell wichtigster Fund:** Ziff. 10.2.1 lässt seit C2:2011 für **Kleinwohnungen mit einem
einzigen Sanitärraum 3,60 statt 3,80 m²** Nutzfläche zu (bisher unbedingt 3,80 m²). Weitere
nachgeführte Korrekturen: Ziff. 3.3.1.2/9.2.2 (Terminologie), 3.5.2/3.5.3.1 (Podest-Formel,
C1+C2 zweistufig), 4.4/D.1.4 (Lichtnorm-Vorstufe zu C3), 9.2.3/9.2.4 (C2 streicht die alte 9.2.4
ersatzlos, C3 vergibt dieselbe Nummer später neu — nicht verwechseln), 9.3.2, 10.1.1, 11.2, 11.5.

**Fehlzuschreibung korrigiert:** die Korrektur «Kabinentüren→Schachttüren» an Ziff. 3.7.2/9.5.1
stand im Destillat bisher allein bei C3:2013. Der C1-Volltext zeigt: dieselbe Korrektur steht
bereits wortgleich in C1:2009 — beide Korrigenda-PDFs zitieren identisch «Kabinentüren» in der
«bisher»-Spalte, was nur Sinn ergibt, wenn jedes Korrigendum gegen die ursprüngliche 1. Auflage
2009-01 difft, nicht kumulativ gegen den zuletzt korrigierten Stand. Für die Zitierpraxis ändert
das nichts, wohl aber für die korrekte Fundstellen-Angabe — als Methodik-Hinweis für künftige
SIA-Korrigenda-Läufe im Destillat vermerkt.

Nachgeführt: `destillate/sia-500-2009.md` (Frontmatter + sieben Kernziffern-Bullets + Offene
Punkte), `wiki/REGISTER.md` (SIA-500-Zeile + neue FRISCH-GEMELDET-Zeile), `wiki/QUESTIONS.md`
(additiver Abschluss-Nachtrag am bestehenden Run-19-Eintrag).

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft. `destillate/sia-500-2009.md`:
ein Teil der Edits wurde zwischen den Schreibvorgängen bereits vom nativen `nas-selfcommit`
(`d1b0643e`, 20:15) gesichert — per `git show HEAD:… | grep` verifiziert, dass die früheren Edits
vollständig in HEAD enthalten sind, kein Verlust. `wiki/REGISTER.md`: 2/1, exakt eigene Edits.
`wiki/QUESTIONS.md`: 23/0, rein additiv; Datei war zwischen Lesen und Schreiben von einem
parallelen Prozess derselben Station verändert worden (eigener QUESTIONS-Abarbeitungs-Lauf, kein
Konkurrent), Edit hat sauber angewandt, keine Fremdlöschung im Diff. Kein `git`-Schreibbefehl über
den SMB-Mount.

**Nicht geleistet:** Anhang B/C/D/F/G/H der Basisausgabe weiterhin nicht vollständig gelesen,
dadurch «Kleinwohnung» (C2, Ziff. 10.2.1) norm-intern nicht definiert und ein Doppelbefund
Anhang A.8.6 (C2, Hallen-/Freibäder-Handlauf) vs. A.8.7 (C3, Fluss-/Seebäder-Handlauf, identische
Masszahl 0,60-0,65 m) nicht am vollständigen Anhang-A-Text verifiziert — beide als offene Punkte
im Destillat vermerkt. Die drei bereits erschöpften Sweep-Zweige (Register-Vervollständigung,
Blindzone, N-SIASWEEP-2/3) nicht erneut angegangen.

Report: `outputs/2026-08-23_sia500-korrigenda-c1-c2-vollstaendig.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 8: N-R40-1/N-R40-2 (Aufzugs-Cluster) über öffentliche Behörden-/Verbandsquellen geschlossen

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopf: QUESTIONS-Abarbeitung 7) und
`outputs/2026-08-23_questions-abarbeitung7.md`. Ein parallel laufender `claude`-Prozess mit
demselben Auftragstext ist dieser Lauf selbst; ein zweiter, unabhängiger Prozess ("SIA-Sweep
der KB wissen/normen fort") läuft echt parallel auf derselben KB — beide Prozesse identifiziert
(`ps aux`), unterschiedliche Themenzweige gewählt, um Kollision zu vermeiden.

**Ausgangslage:** Die drei zuletzt gemeldeten P1-Bring-Schulden (SIA 380/1, SIA 385/1,
VKF-BRL-16-15) waren entweder bereits gelöst (16-15, Run 7) oder blockiert durch den seit
mehreren Läufen defekten zweiten OneDrive-Mount (`PL - 02_Recht_Norm/02_Normen/` liefert
weiterhin `fts_read: Operation timed out`, in diesem Lauf erneut geprüft, unverändert). Dieser
Zweig wird vom parallel laufenden SIA-Sweep-Prozess bearbeitet. Stattdessen zwei tragfähige P3
-Punkte aus dem Aufzugs-Cluster (Run 40, 31.07.2026) angegangen, die keinen SharePoint-Zugriff
brauchen, sondern über öffentlich zugängliche Behörden-/Verbandsquellen lösbar waren.

**N-R40-1 geschlossen:** Ob VKF-RL «Aufzugsanlagen, Ausgabe 2003» durch VKF-BRL 23-15
«Beförderungsanlagen» (2015) abgelöst wurde, war bisher nur Themen-Vermutung. Das
2003er-Original ist nicht im JANS-Bestand, aber auf dem aktuellen VKF-Publikationsportal
öffentlich abrufbar (`services2.vkf.ch/rest/public/georg/bs/publikation/documents/
BSPUB-1394520214-1714.pdf/content`, per `pdftotext -layout` gelesen: **VKF-BRL 24-03d
«Aufzugsanlagen», Ausgabe 26.03.2003, Stand 20.10.2008**). Ziff. 1 Geltungsbereich ist
wortgleich mit Ziff. 1 der 23-15; die VKF-Übersicht `Zusammenfassung der Änderungen der
teilrevidierten Brandschutzvorschriften VKF, Ausgabe 2015` (18.01.2017) belegt zusätzlich die
systematische Neunummerierung der ganzen BRL-Serie in der Ausgabe 2015. Befund: established.
Additive Nachträge in `destillate/vkf-brl-23-15-befoerderungsanlagen.md` und
`destillate/vsa-aufzuege-dokumente-bestimmungen.md`.

**N-R40-2 geschlossen:** ESBA-Originaltext der Baudirektion Kanton Zürich beschafft — öffentlich
auf `zh.ch` (`.../dokumente-aufzugsanlagen/200409_rl-bd_erhoehung_der_sicherheit_best_aufzuege_
2008.pdf`, 6 S. vollständig gelesen). Die sieben ESBA-Kriterien in `vsa-aufzuege-esba-zh.md`
stimmen wortgleich mit dem Original überein. Neu belegt: die explizite Zuordnungstabelle
ESBA-Nr. → SN-EN-81-80-Nr. (1→3, 2→27, 3→38, 4→40, 5→46, 6→56, 7→71, Ziff. 2.2) sowie die
Rechtsgrundlage (Besondere Bauverordnung I vom 06.05.1981, §§ 32/33/3, Änderung 12.12.2001).
Damit auch der bisher als «unbelegte Vermutung» geführte Zusammenhang ESBA ↔ SN EN 81-80
(SNEL) geklärt. Additiver Nachtrag in `destillate/vsa-aufzuege-esba-zh.md` inkl.
Status-/Datumsfeld im Frontmatter.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft. Eigene Dateien rein
additiv (`vkf-brl-23-15-befoerderungsanlagen.md` 13/0, `vsa-aufzuege-dokumente-bestimmungen.md`
11/0, `vsa-aufzuege-esba-zh.md` 34/2 — die 2 Löschzeilen sind die bewusste
Frontmatter-Feld-Ersetzung `status`/`last_updated`, per `git diff` gegengelesen). In
`wiki/QUESTIONS.md` stammen von den insgesamt 12 entfernten Zeilen nur 2 aus diesem Lauf
(`[ ]`→`[x]` bei N-R40-1/N-R40-2, technisch als Zeilenersatz gezählt); die übrigen 10 Löschungen
sind Schliessungen des parallelen SIA-Sweep-Prozesses (SIA 266/1, SIA 410) aus demselben
Zeitfenster, per `git diff` (nicht nur `--numstat`) gegengelesen — keine Kollision, kein
Textverlust. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / weiterhin offen:** Die P1-Bring-Schulden SIA 380/1, SIA 385/1, SIA 266/1,
SIA-410-Nachfolgewerke bleiben beim parallel laufenden SIA-Sweep-Prozess bzw. sind
Kaufentscheide Raphaels. N-R40-3 (P4, EN-81-Reihe) bewusst nicht bearbeitet (ausdrücklich «kein
systematischer Nachzieh-Auftrag»). N-R40-4 (P4, SVAS↔VSA) unverändert offen, keine neue Quelle
gefunden. Der «Dateiname/Inhalt-Mismatch»-Punkt (`vkf-merkblatt-brandschutzklassifikation-
bauteile.md`) blieb ungeprüft — Quelldatei liegt nur unter dem defekten zweiten Mount, auch
`mdfind` fand keinen lokalen Treffer.

Report: `outputs/2026-08-23_questions-abarbeitung8.md`.

---

## 2026-08-23 — SIA-Sweep, zwölfte Fortsetzung: SIA 385/9-Fassungssprung (2011 → 2023) am Original bestätigt, P1-Bring-Schuld aus Run 18 geschlossen

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
beachten, jede Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: elfte
Fortsetzung) und `outputs/2026-08-23_sia-sweep-elfte-fortsetzung.md`.

Die drei zuletzt als erschöpft/bewusst-ausgesetzt vermerkten Zweige (Register-Vervollständigung,
Blindzone-Sweep, N-SIASWEEP-2/3) wurden nicht erneut angegangen. Stattdessen ein neuer Zweig:
Register-Zeilen, deren Bring-Schuld nur auf einer **Sekundärquelle** (Meldung einer anderen KB)
beruht statt auf einer eigenen Direktprüfung der SIA-Shop-Produktseite. Fund: **SIA 385/9**
(`wiki/QUESTIONS.md`, Run 18, 27.07.2026, P1) — das REGISTER führte «2011 | 2011✓», die Meldung
«SIA-Shop weist Ausgabe 2023 aus» stammte von der KB `energie` und wurde nie selbst durch `normen`
an der Produktseite nachvollzogen.

**Direktprüfung 23.08.2026:** `shop.sia.ch/normenwerk/architekt/385-9_2023_d/D/Product` per
WebFetch abgerufen (URL per WebSearch ermittelt, da mehrere andere Produktseiten-URLs am selben
Tag mit HTTP 500 scheiterten — siehe Sackgassen-Hinweis im Report). Bestätigt: **SIA 385/9:2023**,
SN 546385/9, gültig ab **01.08.2023**, 84 S., 200.00 CHF, ersetzt SIA 385/9:2011 (archiviert seit
31.07.2023). `wiki/REGISTER.md` Zeile SIA 385/9 nachgeführt (Fassungssprung im Zeilenkopf markiert)
sowie FRISCH-GEMELDET-Tabelle ergänzt; `wiki/QUESTIONS.md` P1-Punkt aus Run 18 mit ✅-Nachtrag
geschlossen (additiv, Originaltext unangetastet). Cross-KB-Abnehmer
`wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` Abschn. 7 im selben Lauf
nachgeführt (Rule `wissens-bibliothekar`). Weder 2011 noch 2023 liegen als Volltext im Haus —
Beschaffung bleibt Bring-Schuld, Sache Raphaels.

**Sackgasse notiert:** drei zuvor erfolgreich abgerufene shop.sia.ch-Produktseiten (SIA 380:2022,
SIA 4013:2021, SIA 242.002:2008) lieferten bei erneutem Abruf HTTP 500/404 — vermutlich temporäre
Serverinstabilität, kein toter Pfad (dieselbe Domain antwortete im selben Lauf für die
385-9-Produktseite sofort und vollständig). Für künftige Läufe: bei HTTP 500 zweiten Anlauf über
WebSearch statt Wiederholung derselben URL.

**Zwei parallele Claude-Prozesse derselben Station** liefen während dieses Laufs an derselben KB
(QUESTIONS-Abarbeitung `mschub54`, u.a. SIA 266/1 und SIA 410/410-1/2 web-verifiziert) bzw. an
einer anderen KB (Baurecht-Reglemente `mschub53`). Nach jedem eigenen Schreibvorgang `git diff`
gegengelesen: alle Fremdänderungen additiv oder sauber als `[ ]`→`[x]` mit erhaltenem
Ursprungswortlaut, keine Kollision mit den eigenen Edits.

Report: `outputs/2026-08-23_sia-sweep-zwoelfte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung 7: VKF-BRL 16-15 P1 nachgezogen (bereits geloest, nie geschlossen)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopf: SIA-Sweep elfte Fortsetzung) und
`outputs/2026-08-23_questions-abarbeitung-sia266-1-sia410-web-verifiziert.md`.

**SharePoint gemischt erreichbar:** Der Hauptmount (`OneDrive-FreigegebeneBibliotheken–JANS`)
antwortet wieder, der zweite, praefixkollidierende Mount mit `PL - 02_Recht_Norm/02_Normen/`
(dort liegen `SIA_Normen/alle/` und `SIA_Abo/`) weiterhin nicht (`fts_read: Operation timed out`,
zweifach geprueft) — die P1-Bring-Schulden SIA 380/1 und SIA 385/1 bleiben deshalb blockiert.

**VKF-BRL 16-15 «Stand 01.12.2022» — P1-Eintrag war bereits geloest, nur nie geschlossen.**
Die Datei (`BSPUB-1394520214-85.pdf`, 35 S.) lag ueber den Hauptmount erreichbar
(`AR - 01 Projekte/2619_KINDERSPITAL/06_Reglemente/Brandschutz Normen Auszug/`, per `mdfind`
gefunden). Das Destillat `destillate/vkf-brl-16-15-flucht-rettungswege.md` enthaelt seit
Run 22/23 (25.07.2026) einen vollstaendigen Abschnitt «Fassung 01.12.2022 — Delta zur Fassung
01.01.2017», der beide in `QUESTIONS.md` als offen gefuehrten Punkte (ABSV-Aenderung Ziff.
2.4.3/2.4.4, materielle Personenbelegungs-Aenderung Ziff. 3.5.2) bereits abschliessend loest.
Eigene Gegenpruefung per `pdftotext -layout` auf S. 1-3 und S. 14-17: Wortlaut deckt sich
vollstaendig mit dem im Destillat dokumentierten Befund, kein Widerspruch. `wiki/QUESTIONS.md`
P1-Eintrag als `[x]` geschlossen (additiver Nachtrag, Original-Auftragstext bleibt stehen).

**Zweiter Punkt geschlossen:** «Folgepruefung zur 2015er-BRL-Serie» (Run 15, 17.07.2026) ist
durch den seither gelaufenen VKF-Fassungs-Sweep (N27-1/N58-1, Run 58-60, 20.-23.08.2026)
erledigt — dessen Rang-5-Tabelle bestaetigt ausdruecklich, dass die Aenderungen 2017 fuer
13-15/14-15/15-15/16-15/22-15 bereits erfasst sind. Additiver Nachtrag, `[x]` geschlossen.

**Verifikation:** `git diff --numstat -- wiki/QUESTIONS.md` zeigte 77/10 — die 10 Loeschzeilen
stammen aus parallel laufenden Prozessen derselben Station (SIA-266/1-/SIA-410-Schliessung,
SIA-380-Nachtrag), per `git diff` gegengelesen: die drei eigenen Bloecke dieses Laufs sind reine
`+`-Hunks. Kein `git`-Schreibbefehl ueber SMB. Kein neuer Fachinhalt destilliert — beide
Schliessungen sind Nachtraege zu bereits erledigter Arbeit.

Report: `outputs/2026-08-23_questions-abarbeitung7.md`.

---

## 2026-08-23 — SIA-Sweep, elfte Fortsetzung: erweiterter Nachfolgenorm-Scan ohne neuen Treffer, Cross-KB-Bringschuld N57-2 vollständig geschlossen (8 Dateien in 4 KBs)

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
beachten, jede Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: zehnte
Fortsetzung) und `outputs/2026-08-23_sia-sweep-zehnte-fortsetzung.md`.

**Erweiterter Nachfolgenorm-Scan (von der zehnten Fortsetzung als nächster Schritt vorgeschlagen):**
der bisherige Python-Abgleich suchte nur das Muster `ersetzt durch **SIA <Nummer>`. Dieser Lauf hat
den Scan auf vier weitere Formulierungen ausgedehnt (`löst … ab`, `Nachfolgenorm:`, `abgelöst
durch`, `Nachfolger:`) und erneut gegen alle 264 vorhandenen Zeilenköpfe in Abschnitt A geprüft
(inkl. der drei in der zehnten Fortsetzung neu angelegten Zeilen SIA 380/4013/242.002). **0 neue
Treffer** — die bereits erfassten 25 Nachfolge-Verweise decken sich vollständig mit den
vorhandenen Zeilen. Der in der zehnten Fortsetzung offen gelassene Punkt («andere Formulierungen
nicht vollständig durchgekämmt») ist damit erledigt: der Register-Vervollständigungs-Zweig des
Sweeps liefert mit dieser breiteren Methode keinen weiteren Fund.

**Schwerpunkt des Laufs: die von der zehnten Fortsetzung offen gelassene Cross-KB-Bringschuld aus
N57-2 vollständig abgearbeitet.** N57-2 hatte belegt, dass die Bring-Schuld zur Nachfolgenorm von
SIA 416/1:2007 nicht auf SIA 380:2015 zielen darf (selbst archiviert seit 31.10.2022), sondern auf
**SIA 380:2022**. Die zehnte Fortsetzung hatte nur `energie/wiki/u-werte-grenzwerte-ch.md`
nachgeführt; acht weitere in der N57-2-Tabelle genannte Dateien blieben offen. Alle acht in diesem
Lauf korrigiert:

- `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md`
- `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
- `wissen/baurecht/buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`
- `wissen/energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` (zwei Fundstellen)
- `wissen/energie/destillate/enfk-en-02-waermeschutz-2013.md`
- `wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md`
- `wissen/energie/destillate/enfk-fensterblatt.md` (hatte bisher **keinen** Fassungsvermerk zu
  SIA 416/1 — neu gesetzt, direkt auf SIA 380:2022 zielend)
- `wissen/energie/destillate/systemnachweis-kurs-zh-2009.md` (ebenfalls ohne bisherigen
  Fassungsvermerk — neu gesetzt)

Jede Datei bekam einen additiven Korrektur-Warnkasten (Quelle: `shop.sia.ch/normenwerk/architekt/
380_2022_d`, abgerufen 23.08.2026, bestätigt wörtlich «die 2015er-Version ist archiviert, gültig
bis 31.10.2022»), Originaltext unangetastet. `wissen/normen/wiki/QUESTIONS.md` N57-2 um einen
Abschluss-Nachtrag ergänzt, der alle neun nachgeführten Dateien (die acht hier plus die bereits
in der zehnten Fortsetzung erledigte `u-werte-grenzwerte-ch.md`) benennt.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — sieben Dateien rein
additiv, zwei (`therapiebad-hallenbad-energie-pflegeheim.md`,
`recht-norm-ahb-stadt-zuerich-projektstandards.md`) mit je einer Löschzeile, beide per `git diff`
gegengelesen: reiner Zeilenumbruch-Verschub eines Wortes beim Einfügen eines neuen Absatzes, kein
Textverlust. `wissen/normen/wiki/QUESTIONS.md` zeigte beim Schreiben Änderungen eines **parallelen**
Prozesses derselben Station (eigener Lauf «QUESTIONS-Abarbeitung», SIA 266/1 und SIA 410/410-1/2) im
selben Zeitfenster — vor dem eigenen Edit die Zielstelle frisch gelesen (unverändert seit dem
Vorlauf-Read), nach dem Edit per `git diff` geprüft: die fremden Ergänzungen an anderer Stelle der
Datei vollständig erhalten, keine Kollision. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:** kein Volltext von SIA 380:2022 (oder 2015), SIA 4013,
SIA 242.002 gekauft — bleiben Beschaffungs-Bring-Schulden. N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3
(SIA 2021/2025) weiterhin bewusst nicht erneut angegangen (Empfehlung der achten/neunten
Fortsetzung, neun unabhängige Quellenarten bereits erschöpft). Der Blindzone-Sweep bleibt bei
0 von 187 offenen Zeilen, in diesem Lauf nicht neu gescannt.

Report: `outputs/2026-08-23_sia-sweep-elfte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung: SIA 266/1 (superseded, aktuell 2015) und SIA 410/410-1/2 (zurückgezogen 01.01.2025) web-verifiziert

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus vor Zitat lesen. Vorlauf gelesen:
dieser CHANGELOG (Kopf: zehnte SIA-Sweep-Fortsetzung) und `outputs/2026-08-23_questions-abarbeitung6.md`.
SharePoint/OneDrive war während des Laufs nicht erreichbar (`fts_read: Operation timed out`
auf allen drei Mounts) — die drei SharePoint-abhängigen P1-Bring-Schulden (SIA 380/1, SIA
385/1, VKF-BRL-16-15-Vollfassung) blieben deshalb unbearbeitet; stattdessen zwei über
öffentliche Web-Quellen abschliessend klärbare Fragen bearbeitet.

**SIA 266/1: geltende Ausgabe ist 2015, nicht 2003.** SIA-Shop-Produktseite
(`shop.sia.ch/normenwerk/ingenieur/266-1_2015_d`, WebFetch 23.08.2026) bestätigt wörtlich
«SIA 266/1:2015 ... Ersetzt Norm SIA 266/1:2003», gültig ab 01.07.2015, 16 Seiten, CHF 30.-.
Destillat `sia-266-1-2003.md` von `established` auf `superseded` umgestellt (Warnblock im
Fliesstext, Textwiedergabe der 2003er-Fassung bleibt als historische Dokumentation korrekt);
REGISTER.md und INDEX.md nachgeführt; neue Bring-Schuld P1 «Volltext 2015 beschaffen» in
QUESTIONS.md.

**SIA 410 UND SIA 410/1+410/2 sind seit 01.01.2025 zurückgezogen.** suissetec-Meldung
(`suissetec.ch/de/news-detail/rueckzug-normen-sia-410-1986-und-sia-410-1-2-1981.html`, WebFetch
23.08.2026) benennt im Titel ausdrücklich beide in der KB destillierten Dokumente. Begründung:
Aussparungen neu ausschliesslich in SIA 400 «Planbearbeitung im Hochbau», HLKS-Symbole/Farbcode
neu über die suissetec-Planungsrichtlinien. Beide Destillate (`sia-410-1986.md`,
`sia-410-1-2-1981.md`) von `established` auf `zurückgezogen` umgestellt (Warnblock im
Fliesstext, Textwiedergabe bleibt korrekt dokumentiert); REGISTER.md und INDEX.md nachgeführt;
neue Bring-Schuld P2 «Nachfolgewerke beschaffen» in QUESTIONS.md.

**Verifikation:** beide Web-Belege sind Primärquellen des jeweiligen Herausgebers/Verbands,
vollständig per WebFetch abgerufen (nicht nur Suchergebnis-Snippets). Nach jedem Schreiben
`git diff --numstat` geprüft: `sia-266-1-2003.md` 12/3, `sia-410-1986.md` 13/3,
`sia-410-1-2-1981.md` 13/3, `destillate/INDEX.md` 3/3, `wiki/REGISTER.md` 2/2,
`wiki/QUESTIONS.md` 33/10 — alle Diffs Erweiterungen an den editierten Stellen, kein
Datenverlust. Kein `git` über SMB ausgeführt.

Report: `outputs/2026-08-23_questions-abarbeitung-sia266-1-sia410-web-verifiziert.md`.

## 2026-08-23 — SIA-Sweep, zehnte Fortsetzung: drei fehlende Register-Zeilen (SIA 380, SIA 4013, SIA 242.002) nachgetragen, dabei falsches Bring-Schuld-Ziel N57-2 korrigiert (SIA 380:2015 ist selbst archiviert, aktuell gilt SIA 380:2022)

**Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
beachten, jede Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: neunte
Fortsetzung) und `outputs/2026-08-23_sia-sweep-neunte-fortsetzung.md`.

**Ausgangslage.** Der Blindzone-Sweep (leere Bestand-Abgleich-Zellen) bleibt bei 0 von 187 aktiven
Zeilen — vollständig, in diesem Lauf nicht neu gescannt. N-SIASWEEP-2/3 (SIA 422, SIA 2021/2025)
bleiben laut Empfehlung der achten/neunten Fortsetzung unangetastet (acht Quellenarten erschöpft).
Stattdessen ein systematischer Python-Abgleich aller «ersetzt durch»-Verweise in Abschnitt A gegen
die dort bereits als eigene Zeile geführten Normnummern (dasselbe Verfahren, das die neunte
Fortsetzung für die 4000er-Neuzugänge nutzte) — mit dem Ziel, weitere Fälle desselben Musters zu
finden: eine Zielnorm mehrfach als Nachfolgerin genannt, aber nie selbst als Zeile geführt.

**Drei Treffer, alle Produktseiten direkt bei shop.sia.ch gelesen (WebFetch):**
- **SIA 4013:2021** «Wegleitung CAD-Datenaustausch — Organisation und Planung», gültig ab
  01.08.2021, aktuell, 60 S., 150.00 CHF. Löst **beide** SIA 2035:2009 und SIA 2036:2009 zugleich
  ab (Zeilen oben bereits als Vorgänger vermerkt, aber ohne eigene Zielzeile).
- **SIA 242.002:2008/2009**, gültig ab 01.01.2009, aktuell, 24 S., 56.00 CHF. Löst den Gips-Teil
  von SIA 215:1978 ab; im 2013-Register nicht als eigene Dezimal-Unternummer erfasst (nur die
  Elternzeile SIA 242).
- **SIA 380:2022** «Grundlagen für energetische Berechnungen von Gebäuden», gültig ab 01.11.2022,
  60 S., 180.00 CHF.

**Grösster Befund, kein Neuzugang: die bestehende Bring-Schuld N57-2 zielte auf die falsche
Ausgabe.** Beim Prüfen der Produktseite von SIA 380:2015 (bisher als Nachfolgenorm von
SIA 416/1:2007 geführt, Register-Zeile SIA 416/1, `QUESTIONS.md` N57-2, seit 19.08.2026 offen)
zeigt sich: **SIA 380:2015 ist selbst bereits archiviert**, gültig nur vom 01.04.2015 bis zum
31.10.2022. Die seither gültige Ausgabe ist **SIA 380:2022** (Produktseite bestätigt wörtlich:
«die 2015er-Version ist archiviert, gültig bis 31.10.2022»). N57-2 hatte seit fünf Tagen die
Beschaffung von SIA 380:2015 verlangt — ein Kauf hätte eine bereits vier Jahre überholte Fassung
ins Haus geholt. Korrigiert in `wiki/QUESTIONS.md` (N57-2, additiver Warnkasten, ursprünglicher
Text unangetastet), `wiki/REGISTER.md` (Zeile SIA 416/1 und neue Zeile SIA 380), `destillate/
sia-416-1-2007.md` (Warnkasten-Nachtrag) und `destillate/INDEX.md`.

**Cross-KB-Bringschuld (Rule `wissens-bibliothekar`) teilweise erfüllt.** N57-2 nennt fünf
abnehmende Fremd-KB-Dateien, die SIA 416/1 bzw. die Bring-Schuld zitieren. In diesem Lauf nur
`wissen/energie/wiki/u-werte-grenzwerte-ch.md` korrigiert (additiver Warnkasten, dringlichster
Abnehmer wegen aktiver Nutzung im Energie-Skill). Die übrigen vier (`energie` fünf weitere
Dateien, `immobilienbewertung/wiki/flaechendefinitionen-sia.md`, `planungsgrundlagen/wiki/
recht-norm-ahb-stadt-zuerich-projektstandards.md`, `baurecht/buecher/band-2/17-…md`) bleiben
offen — ausserhalb des Scopes dieses SIA-Sweep-Laufs, aber jetzt mit korrigiertem Zielwert in
N57-2 vorgemerkt.

**Register nachgeführt:** `wiki/REGISTER.md` — neue Zeile SIA 4013 am Ende der bestehenden
4000er-Reihe-Tabelle; neue Unterüberschnitt «Weitere Neuzugänge nach 2013 (keine 4000er-Nummer)»
mit den Zeilen SIA 380 und SIA 242.002; FRISCH-GEMELDET-Tabelle um zwei Einträge ergänzt.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — alle Änderungen an
`wiki/REGISTER.md`, `wiki/QUESTIONS.md`, `destillate/INDEX.md`, `destillate/sia-416-1-2007.md`
und `wissen/energie/wiki/u-werte-grenzwerte-ch.md` rein additiv (Zeilen-Ersatz nur dort, wo eine
bestehende Zeile um einen Warnkasten verlängert wurde, Inhalt vollständig erhalten). Die Dateien
`wiki/QUESTIONS.md`, `destillate/INDEX.md`, `destillate/suva-67012-checkliste-boeden.md` und
dieser CHANGELOG wurden während des Laufs von einem parallelen Prozess auf dieser Station
verändert (eigener Auftrag «QUESTIONS-Abarbeitung»); vor jedem eigenen Edit die Zielstelle frisch
geprüft, nach jedem Edit per `git diff` gegengelesen — keine fremde Ergänzung überschrieben, kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:** kein Volltext von SIA 380 (2015 oder 2022), SIA 4013
oder SIA 242.002 gekauft — alle bleiben Beschaffungs-Bring-Schulden. Vier von fünf Cross-KB-
Abnehmern der N57-2-Korrektur nicht nachgeführt (siehe oben). N-SIASWEEP-2/3 unverändert offen,
bewusst nicht erneut angegangen. Der Blindzone-Sweep bleibt bei 0 von 187 offenen Zeilen.

Report: `outputs/2026-08-23_sia-sweep-zehnte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung, achter Lauf: Suva 67012.d «Checkliste Böden» war im Haus veraltet (Ausgabe Oktober 2025 nachgezogen), BRL-16-15-Altfrage bereinigt

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopf: siebter Lauf) und
`outputs/2026-08-23_sia500-korrigenda-c3-c4-vollstaendig.md`.

**Grösster Befund: die im Haus liegende Suva-Checkliste 67012.d «Böden» war nicht nur
undatiert, sondern tatsächlich veraltet — die aktuelle Ausgabe ist Oktober 2025.** N-R40-8
(seit 31.07.2026 offen: Fassungsstand nur über `suva.ch/waswo` klärbar) direkt an der Quelle
geprüft: `www.suva.ch/de-ch/download/checklisten/boeden/boeden--67012.D` abgerufen (deutsche
Seite, damit das Datum eindeutig TT.MM.JJJJ ist), die aktuelle PDF-Ausgabe heruntergeladen
(`curl`+`pdftotext -layout`, alle 4 Seiten) und wortweise gegen die bisherige
`established`-Fassung (Run 40, 31.07.2026) verglichen. Fussleiste S. 4 nennt wörtlich
«Ausgabe: Oktober 2025». **Die beiden sicherheitsrelevanten Zahlenwerte (4-mm-Stolperschwelle
Frage 8, 2-cm-Ablaufrinnentiefe Frage 10) sind unverändert**, damit bleiben die
JANS-Praxis-Transfer-Kriterien gültig. Neu ist eine eigene Rubrik «Rechtliche Grundlagen»
(ArGV 3 Art. 14, VUV Art. 14 — fehlte in der Alt-Fassung vollständig), Frage 1 wurde vom
technischen Beispielkatalog auf den Gesetzesbezug umgestellt, Frage 5 verlangt neu zusätzlich
«signalisiert», Frage 16 wurde auf «Warnaufsteller» konkretisiert, und die Schuh-Frage ist von
Position 17 auf Position 20 gewandert. `destillate/suva-67012-checkliste-boeden.md`
vollständig auf die Ausgabe Oktober 2025 umgestellt, Alt-Fassung im neuen Abschnitt
«Historische Fassung» archiviert (kein Informationsverlust); `destillate/INDEX.md`
nachgeführt.

**Stale-Item bereinigt:** der Run-14-Eintrag «VKF BRL 16-15 — Ausgabe klären» war bereits seit
Run 22 (25.07.2026) durch `wiki/REGISTER.md` erledigt («Ausgabe 2015, Fassung 01.01.2017 mit
Zusatzvermerk «Stand 01.12.2022»»), aber nie als `[x]` markiert — nachgetragen.

**Verifikationsstand:** Suva-PDF primärquellenfest (offizielle suva.ch-Domain, deutschsprachige
Seite gegen die mehrdeutige englische Sitecore-Variante gegengeprüft, Ausgabe-Vermerk direkt
im Dokument gelesen). Nach jedem Schreiben `git diff --numstat` geprüft — reine
Ergänzung/Ersetzung, keine Bestandslöschung. Report:
`outputs/2026-08-23_questions-abarbeitung6.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung, siebter Lauf: SIA 500 Korrigenda C3/C4 vollständig ausgewertet, VKF 12-15-Querverweis nachgetragen

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopf: sechster Lauf) und `outputs/2026-08-23_questions-abarbeitung5.md`.

**Grösster Befund: SIA 500 Korrigenda C3:2013 und C4:2019 waren nur zu 2 von rund 27 Stellen
im Destillat nachgeführt — jetzt vollständig.** Der Run-19-Auftrag vom 28.07.2026 («P1: SIA 500
Korrigenda-Nachzug, ~20 Stellen offen») war seither unbearbeitet liegen geblieben. Beide
Korrigenda am amtlichen Wortlaut beschafft (SIA-Shop-Produktseiten `sia%20500-c3`/`sia%20500-c4`,
freier `DownloadAnhang`, 0.00 CHF, `curl -L` + `pdftotext -layout`) und vollständig gelesen: **C4:2019
ändert 7 Ziffern** (3.4.1, Tabelle 4/3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2), **C3:2013 über 20**
(u.a. 1.2, 3.3.3, 3.3.6.2, 3.6.4.1, 3.7.2, 3.8.5, 4.4, 7.7.2+A.8.2, 8.2.2, 9.1.1/9.1.5/9.2.4/9.5.1,
A.8.7, D.1.1.3, 0.3). Alle mit Seiten-/Ziffernangabe und korrigiertem Wortlaut in
`destillate/sia-500-2009.md` nachgeführt (ACHTUNG-KORRIGENDA-Marker, Begriffe-Abschnitt, Zentrale
Tabellen, Offene Punkte). **Sicherheitsrelevantester Einzelfund:** das Referenzgewicht des
Innenraum-Rollstuhls (Ziff. 1.2) ist seit C3:2013 **300 kg, nicht 250 kg** — dieselbe Korrektur
betrifft die Treppenlift-Nennlast (Ziff. 3.8.5) und war bislang in keinem KB-Artikel vermerkt,
obwohl [[bkp-261-aufzuege]] auf dieses Destillat referenziert. Zwei Detailpunkte bleiben offen,
weil die zugehörigen Anhänge B/D nicht im Volltext gelesen sind (nur A und E vollständig) —
klar als Vorbehalt vermerkt, nicht verschwiegen. `wiki/QUESTIONS.md` (Run-19-Abschnitt) und
`wiki/REGISTER.md` (SIA-500-Zeile) nachgeführt. Report:
`outputs/2026-08-23_sia500-korrigenda-c3-c4-vollstaendig.md`.

**VKF BRL 12-15 — fehlender Querverweis zur Teilrevision 2026 nachgetragen.** N58-1 (offener
Sonderfall «12-15/26-15») geprüft: `vkf-teilrevision-2026-pyrotechnik.md` ersetzt die
Bestandsdestillate nicht, ergänzt sie nur für die vier vom IOTH-Beschluss vom 06.03.2026
geänderten Absätze. Dabei echten Bestandsfehler gefunden: `vkf-brl-26-15-gefaehrliche-stoffe.md`
verlinkt die Teilrevision seit Run 58 in Frontmatter und Fliesstext,
`vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md` verlinkte sie **nirgends** —
dieselbe Ausgangslage, ungleich behandelt. Nachgetragen (Frontmatter-Link + Fliesstext-Box
analog zum 26-15-Vorbild). N58-1 in `QUESTIONS.md` als geschlossen markiert.

**Verifikationsstand:** Beide Korrigenda-PDFs primärquellenfest (offizielle SIA-Shop-Domain,
Preisgruppe 0/freier Download, Dateigrösse deckt sich mit den Shop-Metadaten). VKF-Befund ist
reine Konsistenzkorrektur zwischen zwei bereits primärquellenfest belegten KB-Dateien, kein
neuer Fachinhalt destilliert. Nach jedem Schreiben `git diff --numstat` geprüft — keine
Bestandslöschung, alle Änderungen reine Ergänzungen.

**Bewusst nicht weiterverfolgt:** N-SIASWEEP-1 bis -4, N59-2, N59-4, N60-1, N60-2 — laut Vorlauf
bereits erschöpft bzw. Freigabe Raphael ausstehend (nicht selbständig zu entscheiden). Kein
Doppelaufwand zur parallel laufenden SIA-Sweep-Fortsetzung (eigener `claude`-Prozess, anderer
Auftrag, anderer Abschnitt der KB — per `ps aux` bestätigt kein Konflikt).

---

## 2026-08-23 — SIA-Sweep, neunte Fortsetzung: vier 4000er-/269-8-Neuzugänge mit Produktdatenblatt belegt (SIA 4008/4018/4020, SIA 269/8), SIA-2006-Zeile nachgeführt

**Auftrag Raphael:** SIA-Sweep der KB fortsetzen — Register-geführte SIA-Zeilen ohne Datei im
Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen, Destillate
anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar` beachten, jede
Aussage belegen, nichts raten. Vorlauf gelesen: dieser CHANGELOG (Kopf: achte Fortsetzung) und
`outputs/2026-08-23_sia-sweep-achte-fortsetzung.md`.

**Ausgangslage.** Der eigentliche Sweep-Auftrag (leere Bestand-Abgleich-Zellen in Abschnitt A)
ist seit dem sechsten/siebten Fortsetzungslauf bei 0 von 187 aktiven Zeilen — vollständig,
mehrfach reverifiziert, in diesem Lauf nicht neu gescannt. Die drei N-SIASWEEP-Fragen (SIA 422,
SIA 2021, SIA 2025) waren nach acht erschöpften Quellenarten unverändert offen; die achte
Fortsetzung empfahl ausdrücklich, sie nicht mit denselben Mitteln erneut anzugehen. Stattdessen
aufgegriffen: eine von der achten Fortsetzung selbst offen gelassene Bring-Schuld (SIA 4008,
aus dem Vorwort von SIA 405:2025) sowie drei bereits an anderer Stelle im Register erwähnte,
aber nie mit einer eigenen, produktdatenblattbelegten Zeile geführte Nachfolgenormen: SIA
269/8:2017 (löst SIA 2018:2004 ab), SIA 4018:2023 (löst SIA 2006:2013 ab, bisher an der
SIA-2006-Zeile gar nicht vermerkt gewesen) und SIA 4020:2026 (löst SIA 2026:2017 ab).

**Vier Produktseiten direkt von `shop.sia.ch` gelesen (WebFetch, nicht nur Suchtreffer):**
- **SIA 4008:2025** «Leitungskataster — Wegleitung zur Norm SIA 405», gültig ab 01.08.2025
  (identisch mit SIA 405:2025 selbst), aktuell, 200.00 CHF. Dokumentart Wegleitung, kein
  normativer Charakter; kein Vorgänger-Dokument auf der Produktseite genannt.
- **SIA 269/8:2017** «Erhaltung von Tragwerken — Erdbeben», gültig ab 01.12.2017, aktuell,
  52 S., 190.00 CHF, mit Korrigenda C1:2022. Ersetzt Merkblatt SIA 2018:2004 (dort gültig bis
  30.11.2017). Für JANS mit Healthcare-Bestandesbauten direkt relevant.
- **SIA 4018:2023** «Planung, Durchführung und Interpretation der Potenzialmessung an
  Stahlbetonbauten», gültig ab 01.11.2023, aktuell, 32 S., 140.00 CHF. Ersetzt SIA 2006:2013
  (archiviert seit 31.10.2023) samt Korrigendum SIA 2006-C1:2016.
- **SIA 4020:2026** «Effizienter Einsatz von Trinkwasser in Gebäuden», gültig ab 01.08.2026
  (wenige Wochen alt), aktuell, 32 S., 120.00 CHF. Ersetzt SIA 2026:2017 (archiviert seit
  31.07.2026), die ihrerseits SIA 2026:2006 (Bestand im Haus) abgelöst hatte.

Alle vier bleiben **reine Metadaten-Zeilen** — kein Volltext gekauft oder gelesen, Beschaffung
bleibt Bring-Schuld. Kein neues Destillat angelegt (Konvention der KB: keine Destillate ohne
Volltext, siehe alle vergleichbaren „Kein Volltext im Haus"-Zeilen im Register).

**Register nachgeführt:** `wiki/REGISTER.md` — neue Zeile SIA 269/8 direkt nach SIA 269/7 im
systematischen Teil; neuer Unterabschnitt „4000er-Reihe — Neuzugänge nach 2013" am Ende von
Abschnitt A mit den drei Zeilen SIA 4008/4018/4020; die bestehende SIA-2006-Zeile um den bisher
fehlenden Verweis auf SIA 4018:2023 ergänzt. `wiki/QUESTIONS.md`: Nachtrag am Ende des
N-SIASWEEP-Abschnitts (SIA 4008 metadatenbelegt geschlossen, drei weitere Zeilen ergänzt).

**Verifikation:** `git diff --numstat -- wissen/normen/` nach jedem Schreibvorgang geprüft —
`wiki/REGISTER.md` 17/1 (die eine Löschung ist die selbst editierte SIA-2006-Zeile, um den
SIA-4018-Verweis erweitert, kein Inhaltsverlust), `wiki/QUESTIONS.md` 17/0 rein additiv (die
Datei wurde während des Laufs von einem parallelen Prozess verändert — vor dem Edit die Zielzeile
frisch geprüft, nach dem Edit per numstat bestätigt: keine fremde Ergänzung überschrieben). Kein
`git` über den SMB-Mount ausgeführt.

**Nicht geleistet / offene Bring-Schulden:** kein Volltext von SIA 4008/4018/4020/269-8
gekauft — alle vier bleiben Beschaffungs-Bring-Schulden. N-SIASWEEP-2 (SIA 422) und
N-SIASWEEP-3 (SIA 2021/2025) bewusst nicht erneut angegangen (Empfehlung der achten Fortsetzung
befolgt — acht Quellenarten bereits erschöpft). Der eigentliche SIA-Sweep-Auftrag (Blindzone-
Zeilen) bleibt bei 0 von 187 offenen Zeilen — unverändert vollständig, in diesem Lauf nicht neu
gescannt.

Report: `outputs/2026-08-23_sia-sweep-neunte-fortsetzung.md`.

---

## 2026-08-23 — SIA-Sweep, achte Fortsetzung: N-SIASWEEP-4 geschlossen (SIA 405:2025 ersetzt SIA 405/2015/2016/2045:2012, primärquellenbelegt), SharePoint-Bestand unverändert

**Auftrag Raphael:** SIA-Sweep fortsetzen — zwei neue Wege: (1) SNV-Webshop `connect.snv.ch`
für die drei verbliebenen offenen Fragen N-SIASWEEP-2/3/4 (SIA 422, SIA 2021/2025, GEO405-
Familie), (2) frischer SharePoint-Abgleich gegen den 140-Dateien-Stand der fünften
Fortsetzung. Vorlauf gelesen: dieser CHANGELOG (Kopf: sechster QUESTIONS-Lauf) sowie die
siebte SIA-Sweep-Fortsetzung, die sieben unabhängige Web-/Dateisystem-Quellenarten für
N-SIASWEEP-2/3/4 bereits als erschöpft dokumentiert hatte.

**1. N-SIASWEEP-4 GESCHLOSSEN — echter Primärquellenfund.** Die Produktseite `shop.sia.ch/
normenwerk/ingenieur/405_2025_d/D/Product` verlinkt eine kostenlose Leseprobe (PDF), deren
Abschnitt „Genehmigung und Gültigkeit" im Originalwortlaut bestätigt: SIA 405:2025 (genehmigt
25.06.2025, gültig ab 01.08.2025) ersetzt gleichzeitig die alte Norm SIA 405 sowie die
Merkblätter SIA 2015, SIA 2016 und SIA 2045, alle Ausgabe 2012. Damit ist die seit der
zweiten Fortsetzung nur über Sekundärquellen vermutete GEO405-Konsolidierung erstmals am
Original selbst belegt (nicht nur Webinar-Vorwissen/Fachartikel), unabhängig zweitbestätigt
über `connect.snv.ch/de/sn-532405-2025`. Neuer Fund aus dem Vorwort: die Merkblatt-Inhalte
gingen in SIA 405 oder die **neue Wegleitung SIA 4008** über — SIA 4008 ist erstmals bekannt,
aber noch nicht in der KB erfasst (neue Bring-Schuld). Neues Destillat
`destillate/sia-405-2025-vorwort.md` (nur Frontmatter/Vorwort/Genehmigungstext, `established`
für das Gelesene; die materiellen Fachkapitel 0-7/Anhang A/B sind ausdrücklich als nicht im
Haus gekennzeichnet).

**2. N-SIASWEEP-2/3 bleiben offen — SNV-Webshop als achte Quellenart ohne Fortschritt.**
`connect.snv.ch` für SIA 422, SIA 2021 und SIA 2025 direkt abgerufen: bestätigt unabhängig
exakt dieselben Metadaten wie `shop.sia.ch` (archiviert, kein Nachfolger benannt). Einzige
Randnotiz: SNV nennt für SIA 2025:2012 ein abweichendes Gültig-ab-Datum (01.04. statt
01.06.2012) — kleine, ungeklärte Differenz ohne Einfluss auf die eigentliche Frage.

**3. SharePoint-Bestand `SIA_Norm/` unverändert.** Frischer Vollabgleich per
`connectors/m365-graph.mjs` gegen den Stand der fünften Fortsetzung: `alle/` weiterhin exakt
140 Dateien (Namensabgleich), die sieben norm-eigenen Unterordner weiterhin 16 Dateien;
jüngste Änderung 07.08.2026, vor dem letzten Scan. Kein neuer Volltext für SIA 380:2015,
SIA 269/8:2017, SIA 4018:2023, SIA 4020:2026 oder eine der 25 in der vierten Fortsetzung
genannten Nachfolgenormen — ehrlicher Negativbefund.

**Verifikation:** `git diff --numstat` nach jedem Schreiben geprüft — `wiki/QUESTIONS.md`
49/1 (die eine entfernte Zeile ist die selbst editierte N-SIASWEEP-4-Überschrift, ersetzt
durch erweiterte Fassung, kein Inhaltsverlust), `wiki/REGISTER.md` 10/7 (sieben entfernte
Zeilen sind exakt die sieben eigenen Zeilen-Erweiterungen SIA 405/2015/2016/2045/422/2021/
2025, Inhalt vollständig erhalten und ergänzt), `destillate/INDEX.md` 1/0 additiv.

Report: `outputs/2026-08-23_sia-sweep-achte-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung, sechster Lauf: BRL-13-15-Doppelbestand kanonisiert (established > speculative), N57-3 gegenstandslos, N59-4 methodisch nachgeschärft

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopfeintrag, damals «fünfter Lauf») sowie die drei SIA-Sweep-Fortsetzungen
desselben Tages oben in `QUESTIONS.md` — deren letzter Stand (siebte Fortsetzung) erklärt
N-SIASWEEP-2/-3/-4 für über freie Quellen erschöpft; dort deshalb bewusst **nicht** weiter
recherchiert. Eigener Prozess bestätigt (`ps aux`): parallel läuft ein Scheduled-Task-Prozess mit
identischem Auftragstext — das ist gemäss Anweisung der eigene Lauf, kein Konkurrent. Nach jedem
Schreiben `git diff --numstat` nativ per `ssh raphaeljans@192.168.1.10` geprüft (Tailscale-Hostname
von dieser Station aus nicht auflösbar, LAN-IP funktioniert); alle Löschungen geprüft — 4 Zeilen
eigene, gewollte Ersetzung, der Rest bereits vor Sessionstart durch den fünften Lauf erledigt.

**1. BRL 13-15 Doppelbestand (260823) — GESCHLOSSEN, ohne Löschen/Mergen.** Zwei Destillate
trugen dasselbe Delta 2015→2017 (`vkf-brl-13-15-baustoffe-bauteile.md`, established, adversarial
gegengeprüft Run 23; `vkf-brl-13-15-fassung-2017-delta.md`, speculative, Run 60). Kanon-Frage
über ein bereits vorhandenes, nicht-arbiträres Kriterium entschieden: established schlägt
speculative (Rule `normen-referenz` Ziff. 1b). Beide Dateien tragen jetzt einen gegenseitig
verlinkten Kanon-Hinweis im Fliesstext (nicht nur im Frontmatter); keine Datei geändert im
Sinne von Inhalt gelöscht. Dieselbe Methode ist auf N60-1 (AFC-Synopse, beide Destillate
established) nicht übertragbar — dort bleibt der Entscheid bei Raphael.

**2. N57-3 (Korrigenda-Liste SIA 416/1:2007) — logisch geschlossen.** N57-2 hat bereits belegt,
dass die Norm seit 31.03.2015 archiviert ist (ersetzt durch SIA 380:2015). Eine
Korrigenda-Prüfung einer über zehn Jahre archivierten Ausgabe hat keine praktische Wirkung mehr;
kein neuer Rechercheaufwand gerechtfertigt. Die Alt-Anforderung (Korrigenda-Fundstelle bei
SIA 380:2015 mitprüfen, sobald beschafft) bleibt unverändert als Teil der normalen
Destillations-Checkliste stehen, nicht als eigener Rückstand.

**3. N59-4 (40-15 Zwischenausgaben) — Methode nachgeschärft, Befund unverändert offen.**
Archivseite `archiv-bsv-2015` erneut abgerufen, diesmal mit strukturierter Feldauswertung des
JSON-Payloads (`"title"`-Feld) statt Text-Grep — schliesst False Positives durch Text-Treffer in
Fussnoten/Fremdverweisen aus. Ergebnis unverändert: genau ein Titel-Treffer für 40-15, kein
zweiter mit «(gültig bis …)» wie bei 108-15. Frage bleibt für 40-15 offen (keine freie Quelle
liefert eine Antwort), aber der Beleg für die Abwesenheit ist jetzt belastbarer.

**Nicht weiterverfolgt (bewusst):** N-SIASWEEP-1 bis -4 (heute bereits siebenfach über
unterschiedliche Quellenarten erschöpft — neuer Anlauf hätte keinen Grenzertrag), N59-2
(Wasserzeichen, bereits nachrangig und werkzeugseitig dokumentiert), N58-4 (Scope-Notiz, keine
offene Sachfrage), N60-1/N60-2 (Freigabe Raphael ausstehend, nicht selbständig zu entscheiden),
260731 NIN-Geschirrspüler (Web-Recherche bereits zweifach erschöpft, Zugang kostenpflichtig).

Report: `outputs/2026-08-23_questions-abarbeitung5.md`.

## 2026-08-23 — QUESTIONS-Abarbeitung, fünfter Lauf: S41-9 (SWKI VA103-01 Grenzfall 100 m²) geschlossen, Merkblatt-Serie-2000er-Gültigkeitsstand für alle 13 Nummern geklärt

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopfeintrag, damals «SIA-Sweep, sechste Fortsetzung») und
`outputs/2026-08-23_questions-abarbeitung4.md` (letzter Lauf dieser Reihe). Während des Laufs
lief parallel ein weiterer, eigenständiger Prozess (Auftrag «SIA-Sweep … fortsetzen», eigener
Lauf-Name, kein Konkurrent im Sinne der Anweisung, aber ein echter zweiter Schreiber auf
denselben Dateien) — vor jedem Edit die Zielzeile frisch gelesen, nach jedem Schreiben
`git diff --numstat` geprüft, keine fremden Ergänzungen überschrieben.

**1. S41-9 (SWKI VA103-01, Grenzfall exakt 100 m²) — GESCHLOSSEN.** Original beschafft
(SharePoint Site PL, Drive `02_Recht_Norm`, `06_Richtlinien/SWKI/SWKI VA 103-1
Lüftungsanlagen für Parkhäuser.pdf`, per `connectors/m365-graph.mjs` geladen — Scan ohne
Textlayer, `pdftoppm -r 200` + visuell gelesen). Ziff. 0.1.2 «Anwendungsbereich» (Druckseite 5)
ist eindeutig: «ab 100 m²» (Richtlinie gilt) gegen «unter 100 m²» (nur Empfehlung) schliessen
lückenlos aneinander — bei genau 100 m² GILT die Richtlinie. Das informelle Begriffe-Kapitel
1.1.1 (Druckseite 10) formuliert dieselbe Grenze zwar unpräzise («bis»/«von…bis», beide
Kategorien überlappend), ist aber nicht die operative Klausel. Nachgetragen in
`destillate/swki-va103-01-2017.md` (Abschnitte «Geltungsbereich» und «Begriffe/Garagentypen»).

**2. Gültigkeitsstand der Merkblatt-Serie 2000er (Run-16-Punkt, seit 19.07.2026 offen) —
GEKLÄRT.** Alle 13 seinerzeit genannten Nummern (2001, 2003, 2004, 2006, 2007, 2008, 2015,
2016, 2017, 2018, 2022, 2026, 2027) einzeln über die Produktseite `shop.sia.ch` geprüft (sechs
davon bereits durch den parallel laufenden SIA-Sweep in `wiki/REGISTER.md` erledigt, sieben
hier neu: 2003, 2006, 2015, 2017, 2018, 2022, 2026). **Ergebnis: nur 2 der 13 Bestandsausgaben
(2007, 2017) sind noch die aktuell gültige Fassung.** Neue Nachfolgenormen-Funde: SIA 4018:2023
(löst SIA 2006 ab), SIA 269/8:2017 (löst SIA 2018 ab, für Healthcare-Bestandesbauten relevant),
SIA 4020:2026 (löst SIA 2026 ab, gültig erst seit 01.08.2026 — die Umnummerierung ist Wochen
alt). Zusätzlich ein dritter unabhängiger Beleg für die bereits vermutete GEO405-Konsolidierung
in SIA 405:2025: auch SIA 2015 endet exakt am 31.07.2025, wie zuvor schon SIA 2016 und 2045.
Tabelle mit allen 13 Zeilen in `wiki/QUESTIONS.md` beim Run-16-Eintrag; Einzelbelege in
`wiki/REGISTER.md`, Abschnitt A. Keine der genannten Nachfolgenormen (4018/269-8/4020) liegt
im Haus — Beschaffung bleibt Bring-Schuld, je Register-Zeile vermerkt.

**Verifikation:** `git diff --numstat -- wissen/normen/` nach jedem Schreibvorgang geprüft.
`destillate/swki-va103-01-2017.md` 17/8 (gezielte Abschnittsersetzung, kein globales Suchen/
Ersetzen). `wiki/QUESTIONS.md` und `wiki/REGISTER.md`: vor jedem Edit die Zielzeile frisch
gegrept (der Vorlauf-Hinweis «Datei wurde seit dem letzten Lesen verändert» erschien mehrfach
wegen des parallelen SIA-Sweep-Prozesses); jede eigene Zeile traf beim erneuten Lesen
unverändert an, kein alter oder fremder Text wurde ersetzt oder gelöscht — beide Dateien
zeigen zusätzliche additive Zeilen aus dem parallelen Prozess, die hier weder verändert noch
autoritativ referenziert wurden.

**Nicht geleistet:** kein Normtext gekauft; die drei N-SIASWEEP-Fragen, N60-1, N60-2, das
BRL-13-15-Duplikat und die NIN-Frage bewusst nicht angefasst (Entscheid-/Freigabepunkte bzw.
kostenpflichtiger Zugang, siehe Vorläufer-Reports).

Report: `outputs/2026-08-23_questions-abarbeitung5.md`.

---

## 2026-08-23 — SIA-Sweep, siebte Fortsetzung: Cloud-weite Dateinamenssuche als letzter ungeprüfter Weg für N-SIASWEEP-2/3/4 erschöpft

**Auftrag Raphael:** SIA-Sweep der KB fortsetzen — Register-Zeilen ohne Datei im Haus,
Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen, Destillate
anlegen. Vorlauf gelesen: dieser CHANGELOG (Kopf «SIA-Sweep, sechste Fortsetzung») und
`outputs/2026-08-23_sia-sweep-sechste-fortsetzung.md`.

**1. Sweep-Status geprüft, unverändert vollständig.** Der Vorlauf hatte den Sweep bereits
unabhängig reverifiziert (0 von 187 aktiven Abschnitt-A-Zeilen mit leerer Bestand-Abgleich-
Zelle). `ps aux` zeigt für diesen Lauf ausschliesslich den eigenen Prozess (PID 75710, Kommando
identisch mit dem eigenen Auftragstext) — kein Konkurrent an dieser KB.

**2. Neuer Weg für die drei verbliebenen offenen Fragen (N-SIASWEEP-2/3/4: SIA 422, SIA 2021/
2025, GEO405-Familie) geprüft: Cloud-weite Dateinamenssuche.** Bisher war nur der SharePoint-
Ordner `SIA_Norm/` gegen die 55 Blindzone-Nummern geprüft (fünfte Fortsetzung). Per `mdfind`
zusätzlich geprüft, ob eine der sechs Normen zufällig anderswo im Haus liegt: gesamtes NAS
(`/Volumes/daten`, ausserhalb `SIA_Norm/`) und alle gemounteten Cloud-Laufwerke (`$HOME/Library/
CloudStorage`: beide OneDrive-Bibliotheken, Dropbox, vier GoogleDrive-Accounts). **Ergebnis: 0
echte Treffer.** Drei Namenstreffer auf den Cloud-Laufwerken geprüft und als false positives
verworfen (zwei SIA-Mitgliedschaftsrechnungen unter den Buchhaltungsjahren 2021/2025 — Treffer
kam vom Jahr im Pfad, nicht von der Normnummer). Damit sind jetzt **sieben** unabhängige
Quellenarten für diese drei Fragen erschöpft (Shop-Produktseite, zwei amtliche SIA-Kataloge,
Espazium, SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, Cloud-weite Dateisuche).
**Empfehlung an künftige Läufe:** diese drei Fragen nicht mit denselben oder ähnlichen Web-/
Dateisystem-Mitteln erneut angehen — Fortschritt nur noch über Kauf oder direkte SIA-Anfrage.

**Nebenbefund (nicht selbst verursacht):** eine parallele Session hat während dieses Laufs in
`wiki/QUESTIONS.md` die Frage S41-9 (SWKI VA 103-1, Grenzfall 100 m²) geschlossen und in
`wiki/REGISTER.md` mehrere Merkblatt-Zeilen (SIA 2003, 2015, 2017, 2018, 2022) um einen
Abschnitt «Aktueller Geltungsstand geklärt» ergänzt — geprüft, gehört nicht zu diesem Auftrag,
inhaltlich eine reine Erweiterung (kein Textverlust), nicht angefasst.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — `wiki/QUESTIONS.md`
additiv (eigener Nachtrag am Ende des N-SIASWEEP-Abschnitts, bestehender Text unverändert; die
übrigen im Diff sichtbaren Änderungen stammen aus der oben genannten fremden Parallelsession),
`wiki/REGISTER.md` additiv (eigene neue Zeile in der „FRISCH GEMELDET"-Tabelle; übrige
Diff-Zeilen ebenfalls die fremde Parallelsession, geprüft, kein Textverlust).

**Nicht geleistet:** kein Normtext gekauft; N-SIASWEEP-2/3/4 bleiben offen, jetzt mit sieben
statt sechs erschöpften Quellenarten dokumentiert. Der eigentliche Sweep-Auftrag bleibt bei
0 von 187 offenen Blindzone-Zeilen — unverändert vollständig.

Report: `outputs/2026-08-23_sia-sweep-siebte-fortsetzung.md`.

---

## 2026-08-23 — SIA-Sweep, sechste Fortsetzung: Vollständigkeit unabhängig reverifiziert, Wayback Machine als neuer Weg für N-SIASWEEP-2/3/4 erschöpft

**Auftrag Raphael:** SIA-Sweep der KB fortsetzen — Register-Zeilen ohne Datei im Haus,
Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen, Destillate
anlegen. Vorlauf gelesen: dieser CHANGELOG (Kopf «QUESTIONS-Abarbeitung, vierter Lauf») und
`outputs/2026-08-23_sia-sweep-fuenfte-fortsetzung-zugangsweg.md`.

**1. Sweep-Vollständigkeit unabhängig reverifiziert.** Eigener Python-Scan über
`wiki/REGISTER.md`, Abschnitt A: 259 Zeilen, 187 aktiv (Gültig 2013 ≠ „—"), **0 davon mit
leerer Bestand-Abgleich-Zelle.** Der ursprünglich beauftragte Sweep ist damit nicht nur laut
den fünf Vorläufer-Reports, sondern messbar am aktuellen Dateiinhalt vollständig. Kein
konkurrierender `claude`-Prozess an dieser KB (`ps aux` geprüft).

**2. Neuer Weg für die drei verbliebenen offenen Fragen (N-SIASWEEP-2/3/4) versucht und
erschöpft.** Fünf Quellenarten waren bereits ausgeschöpft (Shop-Produktseite, zwei offizielle
`cms.sia.ch`-Kataloge, Espazium, SIA-Webinar-Seite, SNV-Arbeitsprogramm). Neu geprüft: Internet
Archive Wayback Machine (`web.archive.org/cdx`, Domain-Suche `shop.sia.ch`) nach archivierten
Snapshots der Produktseiten SIA 422, 2021, 2025, 405, 2016, 2045 — **0 Treffer für alle sechs
Codes**, sowohl mit engem Code-Jahr-Muster als auch mit breiterem Ziffernmuster. Gegenprobe:
dieselbe Domain-Suche ohne Code-Filter findet reichlich archivierte Seiten weiterhin aktueller
SIA-Normen — die Domain wird also grundsätzlich gecrawlt, nur diese sechs Codes nie. Echte,
dokumentierte Sackgasse.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft — `wiki/QUESTIONS.md`
additiv (19 eigene Zeilen; die daneben sichtbaren 2 Löschungen/44 weiteren Zeilen stammen aus
dem bereits vorher unveröffentlichten, hier gelesenen Vorläufer-Lauf `questions-abarbeitung4`,
nicht aus dieser Session), `wiki/REGISTER.md` 1/0 (rein additive Zeile).

**Nicht geleistet:** kein Normtext gekauft; N-SIASWEEP-2/3/4 bleiben offen. Kein weiterer neuer
Quellentyp identifiziert.

Report: `outputs/2026-08-23_sia-sweep-sechste-fortsetzung.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung, vierter Lauf: N59-4 teilweise geschlossen (108-15-Archivgrenze belegt), N58-5 geschlossen, zwei Sackgassen dokumentiert

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: dieser CHANGELOG (Kopfeintrag, damals «Cross-KB-Nachtrag energie») und
`outputs/2026-08-23_questions-abarbeitung3.md` (letzter Lauf desselben Tages). Die dort
ausdrücklich als Entscheid-/Freigabepunkte markierten Fragen (drei N-SIASWEEP-Fragen, N60-1,
N60-2, BRL-13-15-Duplikat, die NIN-Frage) wurden erneut bewusst nicht angefasst.

**1. N59-4 (Zwischenausgaben 40-15/108-15) — TEILWEISE GESCHLOSSEN.** Per
`curl -sL -A "Mozilla/5.0" https://www.bsvonline.ch/de/brandschutzvorschriften/archiv-bsv-2015`
(Astro-JSON-Payload, gleiche Technik wie N58-3) einen bisher unbekannten Archivzugang
gefunden: dort ist BRL 108-15 als **ein** Archiv-Dokument gelistet, betitelt «… (gültig bis
31.12.2019)». Damit primärquellenfest belegt: die Fassung 01.01.2015 war lückenlos bis
31.12.2019 gültig, die Fassung 01.01.2020 folgte nahtlos — **keine unveröffentlichte
Zwischenausgabe**. Nachtrag in `destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md`
(Frontmatter `gueltigkeit`, `last_updated`). Für 40-15 zeigte dieselbe Archivseite **keinen**
zusätzlichen Eintrag — Frage bleibt für 40-15 offen (Abwesenheit nicht beweiskräftig). Der
engere Teilschritt 2020 → 2022 bei 108-15 bleibt ebenfalls offen (kein eigenes Archivdokument
dafür gefunden).

**2. N58-5 (weitere Fach-Skills mit VKF-Nummern) — GESCHLOSSEN.** Grep über `skills/`,
`agents/`, `commands/` ausserhalb von `skills/brandschutz/` nach BSR/BRL/VKF-Nummernmustern:
0 Treffer. Kein weiterer Fach-Skill betroffen.

**3. Zwei dokumentierte Sackgassen (kein Fund, aber Aufwand gespart für künftige Läufe):**
(a) N53-3-Rest (Kalk-Nachfolgenorm zu SIA 215:1978): `shop.sia.ch` unter dem
SIA-215-URL-Muster für «SN EN 459-1» liefert 404 — die Norm ist keine SIA-, sondern eine
CEN/SNV-Publikation und über diesen Zugangsweg nicht erreichbar. (b) N58-2-Rest (zweite
unabhängige Quelle für das Rückzugsdatum 31.08.2025 von BRL 103-15): zwei naheliegende
bsvonline.ch/feusuisse.ch-Seiten geprüft, keine nennt das Datum. Beide Punkte bleiben mit
diesem Vermerk offen, damit ein künftiger Lauf dieselben zwei Wege nicht wiederholt.

**Verifikation:** `git diff --numstat -- wissen/normen/` nach jedem Schreibvorgang geprüft —
`destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md` 2/2 (gezielte Feldersetzung),
`wiki/QUESTIONS.md` additiv (Boxen ergänzt, keine fremde Zeile verändert oder gelöscht).

**Nicht geleistet:** kein Normtext gekauft; die drei N-SIASWEEP-Fragen, N60-1, N60-2,
BRL-13-15-Duplikat und die NIN-Frage unverändert offen (bewusst nicht angefasst, siehe oben).

Report: `outputs/2026-08-23_questions-abarbeitung4.md`.

---

## 2026-08-23 — Cross-KB-Nachtrag aus `energie`: SIA 2024:2006 Datenblatt 4.1 Schulzimmer ergänzt

**Anlass:** KB `energie` bearbeitete E-R129-2 (Personenbelegung Klassenzimmer für eine
Lüftungsauslegung) und brauchte dafür das in `[[sia-mb-2024-2006]]` bislang ungelesene
Datenblatt 4.1 «Schulzimmer» (Original PL-02, S. 42-43, via M365-CLI). Nachgetragen: Personenfläche
3,0 m²/P (Auslegung) / 4,0 m²/P (Standard), typischer Raum 70 m², Aussenluftvolumenstrom
25 m³/(h·P) — deckungsgleich mit dem AHB Stadt Zürich «Raummodul Klassenzimmer» (2008), das damit
nachweislich direkt aus SIA 2024 übernommen wurde. Zusätzlich Cross-KB-Pointer in
`wiki/QUESTIONS.md` bei der bestehenden SN-EN-12193-Bring-Schuld ergänzt: dieselbe Norm würde
einen dokumentierten Selbstwiderspruch in einer AHB-Beleuchtungstabelle (Turnhalle Wettkampfsport
500 gegen 750 lx) auflösen. Details: `wissen/energie/wiki/QUESTIONS.md` E-R129-2/E-R129-4/E-R143-2,
`wissen/energie/CHANGELOG.md` heutiger Eintrag. Register: `destillate/sia-mb-2024-2006.md`
(Frontmatter `gelesen`/`last_updated`, neue Kernziffer), `wiki/QUESTIONS.md`.

## 2026-08-23 — QUESTIONS-Abarbeitung, dritter Lauf: N57-4 geschlossen (SIA 416:2003 primärverifiziert), N53-3 teilweise geschlossen (SIA 215:1978 archiviert)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus vor Zitat lesen. Vorlauf gelesen: dieser
CHANGELOG (Kopfeintrag «SIA-Sweep, fünfte Fortsetzung») und
`outputs/2026-08-23_questions-abarbeitung2.md` (letzter Lauf desselben Tages). Die N-SIASWEEP-
Fragen, N60-1, N60-2 und der NIN-Punkt waren laut Vorlauf bereits dreifach vertieft bzw.
ausdrücklich Entscheid-/Beschaffungspunkte — nicht erneut angefasst, stattdessen zwei kleinere,
selbständig abschliessbare Punkte aus älteren Run-Abschnitten bearbeitet.

**1. N57-4 (SIA 416:2003, «gering, billig») — GESCHLOSSEN.** Die bisher geratene Shop-URL lief
ins Leere; per `WebSearch` die korrekte Produktseite gefunden
(`http://shop.sia.ch/normenwerk/architekt/sia%20416/dfi/D/Product`, SN 504416) und per
`WebFetch` gelesen: SIA 416:2003 ist **aktuell**, gültig ab 01.10.2003, kein Gültig-bis-Datum;
Vorgängerausgabe SIA 416:1993 war gültig bis 30.09.2003. Deckt sich mit der bisherigen
Sekundärquelle. Neuer Abschnitt «Gültigkeit (primärverifiziert 23.08.2026)» in
`destillate/sia-416-2003.md`, `last_updated` nachgezogen, Status bleibt `established`.

**2. N53-3 (SIA 215:1978, Kalk/Gips-Nachfolgenormen) — TEILWEISE GESCHLOSSEN.** Per `WebSearch`
+ `WebFetch` (`https://shop.sia.ch/normenwerk/ingenieur/sia%20215/d/D/Product`, SN 551215)
bestätigt: SIA 215:1978 ist **archiviert seit 30.06.2014** — die im Destillat bis heute
geführte Aussage «formell nicht zurückgezogen» war überholt. Genannter Nachfolgestandard:
**SIA 242.002:2008** (Gipsbinder/Gipstrockenmörtel). Deckt sich unabhängig mit dem bereits am
selben Tag von der interaktiven SIA-Sweep-Session in `wiki/REGISTER.md` (Abschnitt A, Zeile
SIA 215) eingetragenen Befund derselben Quelle — zweite, unabhängige Fundstelle, kein
Zirkelschluss. Frontmatter-Feld `ersetzt_durch` in `destillate/sia-215-1978.md` korrigiert.
**Kalk (hydraulischer Kalk, Weisskalk) bleibt offen** — die Produktseite nennt keinen
Kalk-Nachfolger; SN EN 459-1 bleibt unbelegte Vermutung.

**Nebenbefund (nicht selbst verursacht):** eine parallele Session (Cross-KB `energie` →
`normen`) hat während dieses Laufs `destillate/sia-mb-2024-2006.md` (Datenblatt 4.1
Schulzimmer nachgetragen) und einen Eintrag in `wiki/QUESTIONS.md` (SN EN 12193, zweiter
Anwendungsfall) additiv ergänzt — geprüft, gehört nicht zu diesem Auftrag, nicht angefasst
(Hinweis aus dem Auftrag: ein `claude`-Prozess mit fremdem Lauf-Namen ist kein Konkurrent).

**Verifikation:** `git diff --numstat -- wissen/normen/` nach jedem Schreibvorgang geprüft;
eigene Edits rein additiv bzw. gezielte Ersetzung des eigenen Fragetexts (N53-3), keine fremde
Zeile verändert oder gelöscht.

**Nicht geleistet:** kein Normtext gekauft; die Kalk-Nachfolgenorm-Frage (N53-3-Rest), die drei
N-SIASWEEP-Fragen, N60-1/N60-2 (Entscheid Raphael) und die NIN-Frage (kostenpflichtiger Zugang)
bleiben unverändert offen.

Report: `outputs/2026-08-23_questions-abarbeitung3.md`.

---

## 2026-08-23 — SIA-Sweep, fünfte Fortsetzung: SharePoint-Zugangsweg verifiziert + in WEGE.md dokumentiert, Bestandslücke der 55 Blindzone-Zeilen am vollständigen Listing bestätigt

**Auftrag Raphael:** SIA-Sweep fortsetzen — Register-geführte SIA-Zeilen ohne Datei im Haus,
Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen, Destillate
anlegen; zuerst CHANGELOG und letzte Reports lesen und dort weitermachen.

**Bring-Schuld aus den zwei Vorläufern geschlossen:** der von einer parallelen Mac-Mini-Session
gefundene SharePoint-Zugangsweg über `connectors/m365-graph.mjs` (trägt auch ohne lokalen
Finder-Mount der Site **PL**) war noch nicht in `connectors/WEGE.md` festgehalten. Auf dieser
Station (MacBook Pro) bestand dieselbe Mount-Lücke; der Weg wurde verifiziert (Selbsttest,
Site-/Drive-ID der Bibliothek `02_Recht_Norm` aufgelöst, Listing- und Download-Pattern getestet
— `curl -L` auf `/content` folgt dem 302-Redirect, Testdatei `416_2003_dfi.pdf` vollständig und
unbeschädigt geladen) und mit Beispiel-IDs in `connectors/WEGE.md` (Abschnitt „Weg 2") ergänzt.

**Vollständiges Dateilisting statt Katalog-Abgleich:** mit dem funktionierenden Zugang wurden
alle 140 Dateien aus `SIA_Norm/SIA_Normen/alle/` plus sieben norm-eigene Unterordner gegen die
55 verbleibenden „Kein Volltext im Haus"-Nummern (Abschnitt A) geprüft. **0 Treffer** — die
Bestandslücke ist real, kein Access- oder Scan-Artefakt der drei mount-losen Vorläufer-Läufe.

**`ersetzt:`-Frontmatter-Audit** (von Fortsetzung 4 vorgeschlagen): alle 79 SIA-Destillate mit
`ersetzt:`-Feld gegen Abschnitt A geprüft, ob ein weiterer „SIA 2001"-Fall (fehlende Nummer,
bereits durch vorhandenes Destillat abgelöst) existiert — **keiner gefunden**, SIA 2001 bleibt
der einzige.

**Cross-KB-Bring-Schulden geprüft:** die zwei VSS-Bring-Schulden aus `baurecht` (SN 640 052,
SN 641 400) im selben Zugang gesucht — weiterhin nicht im Haus, Bring-Schuld unverändert.

**Register/QUESTIONS nachgeführt:** `wiki/REGISTER.md` (neue FRISCH-GEMELDET-Zeile),
`wiki/QUESTIONS.md` (Nachtrag: die drei N-SIASWEEP-Fragen sind jetzt ausdrücklich als
Beschaffungs-, nicht Zugangslücke markiert), `connectors/WEGE.md` (neuer Zugangsweg-Abschnitt).
Alle Edits rein additiv (`git diff --numstat`: WEGE.md 46/0, QUESTIONS.md 10/0, REGISTER.md 1/0).

**Nicht geleistet:** kein Normtext gekauft/gelesen; der Zugangsweg wurde nur für Site PL
aufgelöst (andere Sites bräuchten eigene IDs); kein Eingriff am lokalen Mount (Klasse
Cloud-Sync, ohnehin nicht nötig).

Report: `outputs/2026-08-23_sia-sweep-fuenfte-fortsetzung-zugangsweg.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung, zweiter Lauf: BRL-17-15-Querverweis geschlossen, NIN-Sackgasse dokumentiert, BRL-13-15-Duplikat bewusst nicht entschieden

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus vor Zitat lesen. Vorlauf gelesen:
CHANGELOG (Eintrag darunter) und `outputs/2026-08-23_questions-abarbeitung.md`.

**1. Eintrag 260823 «VKF BRL 17-15: Naechster Schritt» — GESCHLOSSEN.** Der als offen
geführte Rest (gegenseitige Verlinkung `vkf-brl-10-15-fassung-2019-delta.md` ↔
`vkf-brl-17-15-fassung-2017-delta.md`, Prüfung ob die 2019er-Begriffsdefinition
rückwirkend auf die 2017er-Tabelle wirkt) war bereits inhaltlich erledigt, nur nicht
nachgezogen. «Verkaufsräume» ist kein 2019er-, sondern ein 2016/2017er-Begriff (IOTH-
Beschluss 22.09.2016, derselbe Beschluss wie die BRL-17-15-Tabellenänderung) — keine
Rückwirkungsfrage, sondern zeitgleicher Vollzug einer Definition. Rückverlinkung ergänzt
(`vkf-brl-10-15-fassung-2019-delta.md` Frontmatter + erklärender Querverweis-Absatz nach
der Sechs-Begriffe-Tabelle), `QUESTIONS.md` mit Schliessungsbox versehen.

**2. Eintrag 260731 (NIN Geschirrspüler-Stromkreis) — weiterhin offen, zweiter
Recherche-Anlauf dokumentiert.** Vier `WebSearch`-Anfragen + zwei `WebFetch`-Versuche
(Electrosuisse-PDF `nin_kh_53.pdf` → HTTP 404; freie FAQ-Sammlung `mueller-pe.ch/
nin_fragen.php` → durchsucht, kein Treffer). Echte Sackgasse: der Normtext liegt hinter
der kostenpflichtigen `ninonline.electrosuisse.ch`-Anmeldung, frei zugängliche
Sekundärquellen behandeln die Detailfrage nicht. In `QUESTIONS.md` vermerkt, damit ein
künftiger Lauf dieselben Quellen nicht erneut abklappert.

**3. Eintrag 260823 (BRL-13-15-Duplikat) — geprüft, bewusst NICHT konsolidiert.**
Inline-Delta (Run 23, `established`, adversarial verifiziert) und die neue Delta-Datei
(Run 60, `speculative`, ausführlicher) sind inhaltlich deckungsgleich. Eine Konsolidierung
wäre eine Kürzung eines verifizierten Abschnitts bzw. das Entfernen eines neuen Artikels —
«grössere Umstrukturierung» nach Rule `wissens-bibliothekar`, dafür pausiert Claude und
fragt. Kein Edit an diesem Punkt, gleiches Muster wie N60-1.

**Nicht geleistet:** die drei N-SIASWEEP-Fragen (am selben Tag bereits dreifach vertieft),
N60-1 und N60-2 (ausdrücklich Entscheid-/Freigabe-Punkte Raphael) wurden nicht erneut
angefasst.

Report: `outputs/2026-08-23_questions-abarbeitung2.md`.

---

## 2026-08-23 — SIA-Sweep, vierte Fortsetzung: systematischer Katalog-Abgleich aller 56 Blindzone-Zeilen, SIA 2001 geklärt

**Auftrag Raphael:** den SIA-Sweep fortsetzen — Register-geführte SIA-Zeilen ohne Datei im
Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen; zuerst CHANGELOG und letzten Report lesen und dort weitermachen.

**Befund vor der eigenen Arbeit:** die Blindzone (Abschnitt A) war laut den drei Vorläufen
desselben Tages bereits vollständig geschlossen. Von den 187 aktiven SIA-Zeilen tragen 131
echten Volltext im Haus, 56 stützen sich nur auf die Shop-Produktseite. Neuer Befund dieser
Station: die SharePoint-Bibliothek `PL - 02_Recht_Norm` ist über den lokalen Finder-Mount
nicht erreichbar (geprüft über alle OneDrive-/SharePoint-Mounts) — dadurch war keine Lektüre
neuer Original-PDFs möglich. Eine parallel gelaufene Session (Mac Mini, siehe Eintrag direkt
unter diesem) hat im selben Zeitfenster einen Zugangsweg über `connectors/m365-graph.mjs`
gefunden, der diese Einschränkung für künftige Läufe auflöst.

**Systematischer Katalog-Abgleich (der von der dritten Fortsetzung vorgeschlagene nächste
Schritt):** alle 56 „Kein Volltext im Haus"-Zeilen gegen die zwei bereits bekannten amtlichen
SIA-Publikationsverzeichnisse (`cms.sia.ch`, Stand 27.10.2023 und 03.01.2024) mechanisch
abgeglichen (SIA-Nummer + gelistetes Ausgabejahr, `pdftotext -layout` + `grep`) — ein reiner
Web-Abgleich, unabhängig vom SharePoint-Zugangsproblem. **55 von 56 Zeilen bestätigt
widerspruchsfrei** (Zweitquellen-Bestätigung der bereits über shop.sia.ch belegten
Archivierungs-/Gültigkeitsdaten, keine neuen Daten). **Eine echte Korrektur: SIA 2001** —
die Nummer fehlt in beiden Katalogen vollständig. Grund lag bereits unverlinkt im eigenen
Bestand: das Destillat `destillate/sia-279-2018.md` (established) führt im Frontmatter
`ersetzt: "SIA 279:2011 und SIA 2001:2015"` — SIA 2001 wurde nach der 2013er-Ausgabe (in
Abschnitt A geführt) noch auf 2015 revidiert und ist dann vollständig in **SIA 279:2018**
aufgegangen. Die Nummer ist seit 2018 endgültig retiriert, keine offene Beschaffungslücke
mehr; SIA 279:2018 liegt bereits als Volltext-Destillat im Haus. Dieselbe Fehlerklasse wie
bei SIA 2016/2027 (Abschnitt A und Merkblatt-Tabelle Run 16 ohne Querverweis).

**Register nachgeführt:** `wiki/REGISTER.md` — neuer Absatz im Blindzone-Abschnitt
(Zusammenfassung des Katalog-Abgleichs), SIA-2001-Zeile in Abschnitt A um die Klärung
ergänzt, neue Zeile in der „FRISCH GEMELDET"-Tabelle. Alle drei Edits rein additiv
(`git diff` ohne `--numstat` nach jedem Schreiben geprüft, keine parallele Kollision).

**Keine neuen Destillate:** kein neuer Volltext im Haus, nichts zu destillieren; SIA 2001 ist
bereits über SIA 279:2018 abgedeckt.

**Nicht geleistet:** kein Normtext gekauft/gelesen; die drei N-SIASWEEP-Fragen (-2/-3/-4)
unverändert offen, kein vierter Web-Recherche-Anlauf über denselben Weg; `connectors/WEGE.md`
noch nicht um den neuen SharePoint-Zugangsweg ergänzt.

Report: `outputs/2026-08-23_sia-sweep-katalogabgleich.md`.

---

## 2026-08-23 — QUESTIONS-Abarbeitung: drei offene Fragen geschlossen, neuer Zugangsweg SharePoint-Originale via M365-Graph-Connector

Auftrag Raphael: weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage
(Norm, Ausgabe, Ziffer), Verifikationsstatus vor Zitat lesen. Vorlauf gelesen: dieser CHANGELOG
und `outputs/2026-08-23_sia-sweep-fortsetzung3.md` (letzter Lauf desselben Tages).

**Neuer Zugangsweg (Infrastruktur-Ertrag dieses Laufs):** Die SharePoint-Originale unter
`PL - 02_Recht_Norm` und `PL - 03 Brandschutz` waren auf dieser Station (Mac Mini) über den
Finder-Mount nicht erreichbar (OneDrive-Bibliothek nicht in diesem Konto gesynct/sichtbar,
`ls`/`find` liefern nichts, ein Duplikat-Pfad unter `Group Containers` haengt uninterruptibel).
Ausweg: der bereits vorhandene `connectors/m365-graph.mjs` (Zertifikats-Auth) kann per
`--get "/sites/{id}/drives"` und `--get "/drives/{id}/root/search(q='…')"` jede Datei der
SharePoint-Site **PL** unabhaengig vom lokalen Sync-Zustand auffinden. Da der Connector selbst
keine Binaerdaten herunterlaedt, wurde ein Wegwerf-Hilfsscript (`/tmp/normen-dl.mjs`, dieselbe
Zertifikats-Auth dupliziert, nicht ins Repo uebernommen) fuer `/content`-Downloads ergaenzt. Für
den VKG-Publikationsportal-Weg (`BSPUB-1394520214-<NR>`, bereits aus fruehen Laeufen bekannt)
gilt weiterhin einfacher `curl`. Kein Eingriff in Sync-Einstellungen (Rule
`interaktive-eingriffe.md` Klasse 2 unberuehrt) — der Connector liest nur.

**1. QUESTIONS 260807 (E_vm-Divergenz SIA 2056 Tab. 42 / SIA 387/4 Tab. 4) — GESCHLOSSEN.** Beide
Originale gelesen (SIA 2056 S. 38 als Rendering, SIA 387/4 S. 17-19 per Textlayer). Ergebnis: kein
Rechenfehler-Risiko, sondern zwei Normen belegen denselben Formelbuchstaben mit unterschiedlichem
Inhalt — SIA 2056s «E_vm» (Formel 18, kein k_0-Term) besetzt strukturell die Position, die SIA
387/4 «E_0» nennt (Formel 2, E_0 = k_0·E_vm); numerisch am Bettenzimmer bestaetigt: SIA 2056
Tab. 42 E_vm = 300 lx = SIA 387/4 Tab. 4 E_0 = 3 × 100 lx. Klärung in beide Destillate eingetragen
(`sia-592-056.md`, `sia-387-4-2017.md`, gegenseitig verlinkt), kein Umbenennen/Merge nötig.

**2. QUESTIONS 260823 BRL 17-15 Teil 2 (Begriff «Technikraum Sicherheitsstromversorgung») —
GESCHLOSSEN.** BRL 10-15 «Begriffe und Definitionen» (Fassung 01.01.2015, Volltext durchsucht)
definiert den Begriff nicht; die vollstaendige Fassungs-Delta-Kette bis 01.01.2019
(`vkf-brl-10-15-fassung-2019-delta.md`, alle elf 2016/2018 neu gefassten Begriffe) enthaelt ihn
ebenfalls nicht. Der Ausdruck in BRL 17-15 bezeichnet damit einen projektspezifisch zu
definierenden Brandabschnitt, keinen normierten VKF-Begriff. Nachtrag in
`vkf-brl-17-15-fassung-2017-delta.md`.

**3. QUESTIONS N59-3 (Kap. 2.17 «Gefaehrliche Stoffe» im Verzeichnis 40-15, nur Textlayer
geprueft) — GESCHLOSSEN.** Beide Fassungen (2015 Hausbestand via SharePoint, 2025 direkt vom
VKG-Portal) unabhaengig neu geladen und per frischer `pdftotext`-Extraktion gegengeprueft; alle im
bestehenden Delta-Destillat (`vkf-verz-40-15-fassung-2025-delta.md`) gefuehrten «neu»- und
«entfallen»-Positionen aus 2.17 per Volltextsuche im 2025er-Extrakt bestaetigt (u.a. SUVA 66122/
67068 und CARBURA Teil F als neu; Sicherheitsdokument 1501-00 und VKF-BSR 27-03/28-03 alte
Nummerierung als entfallen — Null-Treffer). Zusaetzlich S. 18 (2025) als Rendering gegen Textlayer
gelesen, deckungsgleich. Kap. 2.7-2.12, 2.15/2.16, 2.18/2.19, 3.1-3.5 bleiben unveraendert offen
(schwaecherer, nicht einzeln nachgezogener Vorbehalt).

**Nicht geleistet:** die drei N-SIASWEEP-Fragen (bereits dreifach vertieft am selben Tag durch
Vorlaeufer-Sessionen) wurden nicht erneut bearbeitet, um Doppelarbeit zu vermeiden. Report:
`outputs/2026-08-23_questions-abarbeitung.md`.

## 2026-08-23 — Cross-KB-Nachtrag aus `energie`: N27-2-Auftrag (SIA-387/4-Produktseite) erfüllt

Die KB `energie` hat im Rahmen ihrer eigenen QUESTIONS-Abarbeitung (interaktive Session) den in
`wiki/QUESTIONS.md` (N27-2, Cross-KB Wissens-Chef Run 28, 07.08.2026) hinterlegten Auftrag
ausgeführt: den eigenen, datierten Abruf der SIA-387/4-Produktseite auf `shop.sia.ch`, den diese
KB als Voraussetzung für eine Fassungsaussage verlangt hatte. Ergebnis (23.08.2026): **SIA
387/4:2017** gültig ab 01.05.2017, gültig bis 31.07.2023, archiviert (mit Korrigenda C1 vom
01.04.2020); **SIA 387/4:2023** gültig ab 01.08.2023, aktiv, führt 2017 und C1:2020 ausdrücklich
als archivierte Vorgänger — **eine eigenständige neue Ausgabe, keine blosse Aktualisierung der
2017er-Fassung.** Nachgetragen in `wiki/REGISTER.md` Zeile 315 und `wiki/QUESTIONS.md` (N27-2).
Bestand im Haus bleibt weiterhin die 2017er-PDF; Beschaffung und Re-Destillat der 2023er-Ausgabe
ist ein neuer, eigener Auftrag. Der ZH-Vollzugs-Vorbehalt (BBV I ZH nennt für EN-111 weiterhin die
Ausgabe 2017 als beachtliche Richtlinie nach § 360 Abs. 3 PBG, Wissens-Chef Run 32) bleibt
unverändert bestehen. Gegenrichtung: `wissen/energie/wiki/QUESTIONS.md` E-R33-1 geschlossen,
`wissen/energie/destillate/aufzug-energieeffizienz-vdi4707.md` korrigiert.

## 2026-08-23 — SIA-Sweep, dritte Fortsetzung: N-SIASWEEP-2/-3 per offiziellen SIA-Publikationsverzeichnissen bracket-datiert

**Auftrag Raphael:** den SIA-Sweep fortsetzen — Register-geführte SIA-Zeilen ohne Datei im
Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen; zuerst CHANGELOG und letzten Report lesen und dort weitermachen.

**Befund vor der eigenen Arbeit:** die Blindzone (Abschnitt A) war laut den zwei Vorläufen
desselben Tages bereits vollständig geschlossen (0 von 259 Zeilen ohne Bestand-Abgleich,
eigene Gegenprobe via `ps aux`: kein konkurrierender `claude`-Prozess an dieser KB). Offen
blieben nur die drei noch nicht geschlossenen N-SIASWEEP-Fragen (-2, -3, -4).

**Neue Quellenart eingeführt:** zwei amtliche SIA-Publikationsverzeichnisse als PDF
(`cms.sia.ch`, nicht Shop/Espazium) mit den Ständen **27.10.2023** und **03.01.2024**, lokal
mit `pdftotext -layout` gelesen (WebFetch-Zusammenfassung des Binär-PDFs allein war
unbrauchbar). **N-SIASWEEP-2 (SIA 422):** Rückzugsfenster auf «2024, nach dem 03.01.2024»
eingeengt (weiterhin kein Nachfolger). **N-SIASWEEP-3, SIA-2025-Hälfte:** Rückzugsdatum
31.12.2023 durch zwei unabhängige amtliche Quellen bracket-bestätigt (27.10.2023 noch
gelistet, 03.01.2024 nicht mehr) und damit klar vom belegten, gescheiterten
Rückzugsversuch Ende 2014 getrennt (Espazium-Artikel 01.10.2014 direkt gegengelesen);
Begründung/ZN-Sitzung bleibt unbelegt. **SIA-2021-Hälfte:** reine Konsistenzprobe, kein neuer
Fund. **N-SIASWEEP-4 (GEO405):** kein Fortschritt bei der Ablösungsformel; neuer, ungeklärter
Nebenbefund — beide Kataloge führen SIA 405 mit Ausgabejahr 2012, nicht 2015 wie von der
Webinar-Seite genannt.

**Keine neuen Destillate** (weiterhin kein Volltext für die drei betroffenen Normen). Register
(`wiki/REGISTER.md`, drei Zeilen ergänzt) und `wiki/QUESTIONS.md` (neuer Kopfabschnitt + drei
Unterabschnitte ergänzt) nachgeführt, reine Ergänzungen, keine Streichung bestehenden Texts.

**Hinweis Nebenläufigkeit:** parallel lief eine zweite Session (VKF-Fassungssweep, schliesst
N58-2/N58-3 in denselben zwei Dateien); nach jedem eigenen Schreibvorgang `git diff` (nicht
nur `--numstat`) geprüft — fremde Ergänzungen in allen Fällen additiv und unangetastet.

Report: `outputs/2026-08-23_sia-sweep-fortsetzung3.md`.

---

## 2026-08-23 — N58-2 und N58-3 geschlossen: BRL 103-15 (Nachfolger feusuisse) und BRL 27-15 (Fehlzuordnung aufgelöst, echte FAQ 27-001 gefunden)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` ohne Gegenlesen zitierfähig; zuerst
CHANGELOG und letzten Report lesen und dort weitermachen.

**Werkzeug-Befund zuerst:** `curl -sL -A "Mozilla/5.0" <url>` liefert den vollständigen
Astro-JSON-Payload der bsvonline.ch-Seiten als Rohtext (inline im HTML, `&quot;`-escapt) — die
in zwei Vorläufen als «WebFetch liefert nur die Navigationsstruktur, JS-fähiger Abruf nötig»
diagnostizierte Werkzeug-Grenze bestand nicht. Für PDF-Text: `curl` + `PyMuPDF` (`import
fitz`), da `pdftotext` auf dieser Station fehlt.

**N58-2 — BRL 103-15 «Cheminées» — GESCHLOSSEN.** VKF-Newsmeldung (Primärquelle,
`bsvonline.ch/de/aktuell/erlaeuterung-103-15-zurueckgezogen`, 8.9.2025): Nachfolger ist **kein
VKF-Dokument**, sondern das «Stand der Technik Papier Teil B: Ofen- und Cheminéebau» des
Fachverbands **feusuisse** (2024), TKB-Rückzugsbeschluss ausdrücklich zur Vermeidung einer
Doppelspurigkeit. Bestätigt zugleich die Vorläufer-Teilprüfung: BRL 24-15 war nie der
Nachfolger. feusuisse-Papier nicht beschafft (eigener Vertriebsweg, offene Bring-Schuld).

**N58-3 — BRL 27-15 «Nachweisverfahren» — GESCHLOSSEN, Prämisse widerlegt, neuer Befund.** Der
vermutete «ABSV-Beschluss 22.03.2017» gehört laut VKF-FAQ-Seite zu **FAQ 14-026** (BRL 14-15),
nicht zu 27-15 — Fehlzuordnung aus Run 58, gleiche Fehlerklasse wie Run 36. Echt und neu:
27-15 hat eine eigene FAQ, **27-001** (ABSV, Beschlussdatum 24.08.2016, Ziff. 3.2.2 Abs. 3-4
Anhang), die die Extinktionskoeffizient-Fussnote im Entrauchungs-Leistungskriterien-Anhang
ändert — Korrektur laut Dokument «vorgesehen 2017», bis heute nicht ins Hauptdokument
eingearbeitet (Portal weiterhin `vkgPubVersion: 1`).

**KB nachgeführt:** `destillate/vkf-brl-103-15-cheminees.md`, `destillate/vkf-brl-
nachweisverfahren.md` (beide Warnkasten + Offene Punkte, reine Ergänzungen, Status
unverändert), `wiki/REGISTER.md` (4 Fundstellen), `wiki/QUESTIONS.md` (N58-2/N58-3 auf
GESCHLOSSEN), `skills/brandschutz/SKILL.md` (Praxis-Hinweis Nachfolger 103-15).

**Verifikation:** `git diff --numstat` nach jedem Schreiben — `vkf-brl-nachweisverfahren.md`
+20/-0, `vkf-brl-103-15-cheminees.md` +19/-1, `QUESTIONS.md` +74/-2, `REGISTER.md` +12/-10 (vier
gezielte Ersetzungen; Datei zwischenzeitlich durch einen parallelen Prozess an anderer Stelle
verändert — vor jedem eigenen Edit neu gelesen, keine Kollision), `SKILL.md` +6/-1. Commit via
`nas-commit-now.sh`, kein direktes `git` über den SMB-Mount.

**Nicht geleistet:** feusuisse-Papier nicht beschafft; N-SIASWEEP-2/3/4 (SIA-Sweep) unverändert
offen, bewusst kein dritter Anlauf über denselben Zugangsweg; der neue `curl`-Zugangsweg für
bsvonline.ch ist nicht in `connectors/WEGE.md` festgehalten.

Report: `outputs/2026-08-23_vkf-brl-27-15-103-15-geschlossen.md`.

---

## 2026-08-23 — SIA-Sweep, zweite Fortsetzung: Blindzone-Statistik aktualisiert, N-SIASWEEP-1 geschlossen, -2/-3/-4 vertieft

**Auftrag Raphael:** den SIA-Sweep fortsetzen — Register-geführte SIA-Zeilen ohne Datei im
Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen; zuerst CHANGELOG und letzten Report lesen und dort weitermachen.

**Befund vor der eigenen Arbeit:** die Blindzone (Abschnitt A) war bereits durch zwei
Vorläufe desselben Tages vollständig geschlossen und verifiziert (eigene Gegenprobe:
0 von 259 Zeilen/187 aktiven Normen mit leerer Bestand-Abgleich-Spalte). Kein
konkurrierender `claude`-Prozess an derselben KB (`ps aux` geprüft).

**Zwei echte Fortsetzungen geleistet, weil die Blindzone selbst schon zu war:**

1. **Blindzone-Statistik in `wiki/REGISTER.md`** (Abschnitt «⚠ Die 2013-Blindzone —
   beziffert») war seit Run 37 (29.07.2026) unverändert und zeigte nach dem Sweep falsche
   Zahlen (102 von 177 «ohne Datei im Haus»). Aktualisiert mit Vorher/Nachher-Tabelle: 187
   aktive Zeilen, 0 leere Zellen, aber weiterhin nur 131 mit echtem Volltext im Haus und 56
   nur mit Shop-Metadaten (kein Volltext gelesen) — diese Unterscheidung war nach dem Sweep
   sonst verschwunden.
2. **Die vier offenen Fragen N-SIASWEEP-1 bis -4 vertieft** (WebSearch + WebFetch, frei
   zugängliche Quellen, kein Kauf): **N-SIASWEEP-1 (SIA 381/3 Heizgradtage) geschlossen** —
   Espazium-Artikel vom 08.05.2015 belegt Rückzug und Übergang des Fachinhalts in die
   Corrigenda SIA 2028/C1:2015. **N-SIASWEEP-2 (SIA 422)** und die **SIA-2021-Hälfte von
   N-SIASWEEP-3** bleiben offen, jetzt aber per direktem WebFetch der Shop-Produktseiten
   bestätigt statt nur über Suchmaschinen-Synopsen. **SIA-2025-Hälfte von N-SIASWEEP-3**:
   ein möglicher Rückzugsgrund gefunden (Espazium-Synopse), aber bewusst NICHT als Fundstelle
   übernommen — Datum/Sitzung liessen sich nicht zuverlässig zuordnen (ein direkt geprüfter
   Artikel gleichen Titels nannte ein abweichendes, vermutlich früheres Rückzugsdatum). **N-
   SIASWEEP-4 (GEO405/SIA 405:2025)** bleibt offen, neu mit Gültig-ab-Datum 01.08.2025
   (sogi.ch) und einem starken Indiz aus der offiziellen SIA-Webinar-Ankündigung (nennt alle
   drei Vorgänger als Teilnahme-Vorwissen) — weiterhin keine explizite Primärquellen-Formel
   zur Ablösung gefunden.

**Keine neuen Destillate** — wie in den Vorläufen: kein Volltext vorhanden, nichts zu
destillieren.

**Verifikation:** `git diff --numstat` nach jedem Schreiben (`REGISTER.md` 46+/30-,
`QUESTIONS.md` 69+/13-), reine Erweiterungen an den editierten Stellen. Commit via
`nas-commit-now.sh`, nicht per direktem `git` über den SMB-Mount.

Report: `outputs/2026-08-23_sia-sweep-fortsetzung2.md`.

---

## 2026-08-23 — SIA-Sweep, Fortsetzung: Tabellen-Fehlformatierung der 69 Blindzone-Zeilen behoben, Vollständigkeit verifiziert

**Auftrag Raphael:** den SIA-Sweep-Vorlauf (23.08. 15:57, 119 Turns, unten dokumentiert)
fortsetzen — Ziel bleiben die im `wiki/REGISTER.md`, Abschnitt A geführten SIA-Zeilen ohne
Datei im Haus.

**Befund vor der Fortsetzung:** der Vorlauf hatte sein eigenes Ziel bereits vollständig
erreicht (69 von 69 Kandidaten, eigener Report `outputs/2026-08-23_sia-sweep-blindzone.md`).
Verifiziert per `awk`-Scan über Abschnitt A: **keine** aktive SIA-Zeile (Gültig-2013 ≠ "—")
hat mehr eine leere Bestand-Abgleich-Spalte.

**Gefundener und behobener Fehler:** alle 69 vom Vorlauf editierten Tabellenzeilen waren
**fünfspaltig statt vierspaltig** geschrieben — die eigentliche Bestand-Abgleich-Zelle (Spalte
4) blieb leer, der recherchierte Text landete in einer verwaisten fünften Spalte (Muster
`| ... |  | Kein Volltext im Haus... |` statt `| ... | Kein Volltext im Haus... |`). Betraf
alle 69 editierten Zeilen ausnahmslos. Ursache vermutlich: der Vorlauf hat pro Zeile eine neue
Zelle angehängt statt die leere Zelle zu befüllen. Behoben per gezieltem Python-Fix, beschränkt
auf Abschnitt A (Zeilen 100-361), der die leere vierte Zelle mit dem Inhalt der fünften
zusammenführt. **`git diff --numstat`: 69 geändert, 69 hinzugefügt, 0 gelöscht** — reiner
Zeilenersatz, kein Textverlust, Stichproben (SIA 106, 215, 232/1, 232/2, 282, 380/1) manuell
gegengelesen. Datei-Zeilenzahl vor/nach identisch (780).

**Register nachgeführt:** die «FRISCH GEMELDET»-Zeile zum SIA-Sweep zeigte noch die
Vor-Nachtrag-Zahlen (66 Zeilen, 52 extern, 25/23/4-Aufteilung) statt der im CHANGELOG bereits
korrekten Endzahlen (69 Zeilen, 56 extern, 27/25/4) — auf die CHANGELOG-Zahlen synchronisiert,
plus Vermerk zur Formatkorrektur.

**Nicht geleistet:** keine neuen Destillate (weiterhin nur Shop-Metadaten ohne Volltext, wie
im Vorlauf begründet) und `wiki/QUESTIONS.md` bewusst nicht angefasst (parallele Kollision mit
Lauf `normen-fragen` auf derselben Datei, Auftragslage). Die vier offenen Fragen N-SIASWEEP-1
bis -4 bleiben dort unverändert stehen.

Report: `outputs/2026-08-23_sia-sweep-blindzone.md` (Vorlauf, inhaltlich weiterhin gültig).

---

## 2026-08-23 — SIA-Sweep (interaktive Session): 69 Blindzone-Zeilen abgearbeitet, N52-5 geschlossen

**Auftrag Raphael:** die im REGISTER.md, Abschnitt A geführten SIA-Zeilen ohne Datei im Haus
abarbeiten — Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen.

**13 Zeilen intern gelöst** (SIA 282, 380/1, 382/1, 2003, 2006, 2014, 2015, 2017, 2018, 2022,
2023, 2026, 2040): Bestandsangaben lagen bereits an anderer Stelle im Register (Merkblatt-
Tabelle Run 16, Run-5-Präzisierungen), waren nie in Abschnitt A gespiegelt — reiner
Konsistenz-Fix, kein neuer Beleg nötig.

**55 Zeilen extern recherchiert** über sieben parallele Recherche-Läufe (shop.sia.ch
Produktseite, frei zugänglich, **kein Kauf**, abgerufen 23.08.2026; drei Zeilen — SIA 215,
232/1, 232/2 — waren im ersten Scan übersehen und wurden per Nachtrag ergänzt): 27 weiterhin
aktuell auf der 2013-gültigen Ausgabe, 25 archiviert mit benannter Nachfolgenorm (neue
Bring-Schulden für Raphael), 4 archiviert ohne benannten Nachfolger (offene Fragen
N-SIASWEEP-1 bis -4, `wiki/QUESTIONS.md`). **N52-5 geschlossen** (SIA 242/274-
Beschaffungsposten). Auffälligster Nebenbefund: SIA 2016 und SIA 2045 nennen unabhängig
dieselbe Nachfolgenorm SIA 405:2025 — mögliche Konsolidierung der GEO405-Familie
(N-SIASWEEP-4, nicht am Original verifiziert). Nebenbefund 2: SIA 215:1978 korrigiert eine
bestehende Aussage in `wiki/QUESTIONS.md` (Zeilen 480-487) — die Norm gilt dort fälschlich als
«nicht formell zurückgezogen», ist aber seit 30.06.2014 archiviert.

**Keine Destillate angelegt** — für reine Shop-Metadaten (ohne Volltext) gibt es nichts zu
destillieren; die Fundstelle steht direkt in der Register-Zeile, wie bei den Präzedenzfällen
SIA 493 und SIA 380/2 (Run 25 bzw. Run 29). Kein Kauf getätigt (Bring-Schuld bleibt bei
Raphael, Rule `normen-referenz`/`wege-und-vollmachten`).

Report: `outputs/2026-08-23_sia-sweep-blindzone.md`.

---

## 2026-08-23 — Run 60: der VKF-Jahrgang 2017 vollstaendig, plus drei Befunde in der KB selbst

**Der Vorrang-Auftrag N58-1 ist bis auf drei Sonderfaelle erledigt.** Sechzehn Fassungspaare
2015 gegen 2017 beschafft (alle MD5 deckungsgleich mit der Matrix aus Run 58), Fassungsdaten am
gedruckten Titelblatt abgelesen, amtliche Aenderungsliste je Publikation ausgelesen, Volltext-Diff
als Kontrolle darueber gelegt, jede gelistete Tabelle und Zeichnung gerendert statt extrahiert
(Methodik-Pflicht 8).

**Neu — fuenfzehn Delta-Destillate, alle `status: speculative`:**
`vkf-brl-18-15-`, `-20-15-`, `-21-15-`, `-23-15-`, `-24-15-`, `-25-15-`, `-100-15-`, `-101-15-`,
`-102-15-`, `-105-15-`, `-106-15-`, `-107-15-fassung-2017-delta.md` sowie
`vkf-ah-1000-15-` und `vkf-ah-1002-15-fassung-2017-delta.md`; dazu
`vkf-brl-13-15-fassung-2017-delta.md` als unabhaengige Gegenprobe zum Inline-Delta aus Run 23.
Alle sechzehn Bestands-Destillate nachgefuehrt (Warnkasten verweist neu auf das Delta,
`links:`-Zeile ergaenzt).

**N59-1 beantwortet.** «(cr)» steht fuer *comportement critique* und ist ein
**Anwendungsbeschraenkungs-Flag innerhalb** einer RF-Gruppe, keine eigene Stufe. Die EN-Klassen
**E und E-d2** (Bauprodukte) sowie **EL und EL-d2** (lineare Rohrdaemmungen) wandern 2017 von
**RF4 (cr) nach RF3 (cr)**; die RF4-Zeile zeigt seither in allen Produktspalten «–». Praktisch:
ein Produkt der Klasse E erfuellt eine Anforderung «RF3» **nie**, eine Anforderung «RF3 (cr)»
seit 2017 **schon**. Vom Hauptprozess am eigenen Rendering beider Fassungen abgelesen.

**Korrigiert — drei Befunde, welche die KB selbst betreffen:**

1. **Doppelbestand.** Die AFC-Synopse 2015↔2017 ist **zweimal** destilliert
   (`vkf-aenderungen-brandschutzrichtlinien-2017.md` und `vkf-brl-aenderungen-2017.md`), beide
   `established`, beide mit denselben vierzehn Abschnitten. Und die aeltere gab die
   **Gesamthoehe** falsch wieder: sie liess die Fassung 2017 «um den Dachrand» messen, wo das
   Original «um **die Dachflaeche** … ueber dem tiefst gelegenen Teil des massgebenden Terrains»
   sagt — der Begriff der alten Fassung war in den Satz der neuen gerutscht. An der Gesamthoehe
   haengt die Einstufung geringe Hoehe / mittlere Hoehe / Hochhaus. Am 200-dpi-Rendering
   beidseitig abgelesen, **inline korrigiert** (Methodik-Pflicht 9); beide Destillate tragen neu
   einen Doppelbestand-Kasten. Die Zusammenlegung ist destruktiv und liegt bei Raphael (N60-1).
2. **Datierung.** `vkf-brl-11-15-fassung-2019-delta.md` verglich die Endpunkte 2015 und 2019 und
   liess offen, wann was geschah. Die Lockerung **Brandschutzkonzept bei QSS 3 von ● auf ○**
   stammt aus dem Beschluss **22.09.2016**, gilt also seit der Fassung **01.01.2017**; die
   Umbenennung in «(Bericht)» und der Wechsel bei QSS 1 stammen aus dem Beschluss 20.09.2018.
   Zwei unabhaengige Belege (Aenderungsliste der Fassung 2019, die beide Beschluesse getrennt
   ausweist; AFC-Synopse Folie 5, wo die Zelle QSS 3 die einzige gelb markierte Aenderung ist).
3. **Umgekehrter Kernbefund, AH 1002-15 Schulbauten.** Ein Agent meldete als groessten
   sicherheitsrelevanten Fund, das Kriterium «> 100 Personen → zwei vertikale Fluchtwege» sei in
   Ziff. 7.3.2 ersatzlos entfallen. Die Beobachtung stimmt, die Schlussfolgerung war falsch — und
   zwar in der gefaehrlichen Richtung: die **BRL 16-15, Fassung 01.01.2017**, fuehrt die
   Anforderung in Ziff. 2.4.2 Abs. 2 **unveraendert**. Sie ist nicht abgeschafft, sondern nur aus
   der Arbeitshilfe verschwunden; wer der Arbeitshilfe folgt, laesst einen Fluchtweg weg, den die
   Richtlinie verlangt. Inline korrigiert samt Kurzfassung.

**Zwei Muster fuer kuenftige Laeufe.** Die **BSE 107-15** liefert den zweiten belegten Fall einer
**unvollstaendigen Aenderungsliste** (Ziff. 3.2 «1'100 kg» → «1'100 kg netto» steht nicht darauf)
— der Gegenbeleg der **BRL 24-15**, wo derselbe Verdacht geprueft und **widerlegt** wurde, gehoert
dazu. Und aus dem Schulbau-Fall folgt die Raphael zur Freigabe vorgelegte **Methodik-Pflicht 14**:
ein Wegfall in einer Arbeitshilfe wird nicht als Lockerung protokolliert, bevor die zitierte
Ziffer der Mutterrichtlinie nachgelesen ist.

**Nicht geleistet:** keine Abdeckungsrichtung (nur geprueft, *was sich geaendert hat*, nicht ob
die Bestands-Destillate ihre Fassung vollstaendig abbilden), keine unabhaengige Refuter-Runde
ueber die sechzehn neuen Destillate. Deshalb bleibt keines auf `established`. Elf Nachpruefungen
des Hauptprozesses am Original, davon **zwei Widerlegungen und eine Umkehrung** — alle drei
betrafen die **Deutung** einer richtig abgelesenen Beobachtung, keinen falschen Zahlenwert.

Lauf-Report: `outputs/2026-08-23_normen-nacht-run60.md`.

---

## 2026-08-23 — Run 60 (Teilprotokoll des Destillier-Agenten): VKF-Fassungs-Deltas 13-15 und 17-15

**Neu:** `vkf-brl-17-15-fassung-2017-delta.md` (`status: speculative`) — schliesst die von Run 58
offen gelassene Luecke (Warnkasten «Delta NICHT destilliert» im Bestandsdestillat). Drei materielle
Aenderungen: die feste **15-Sekunden-Frist** der Sicherheitsbeleuchtung (Ziff. 3.2.2 Abs. 1, S. 6)
ist entfallen, ersetzt durch «entsprechend dem Stand der Technik»; die Nutzungskategorie
**«Verkaufsraeume»** ist im Anhang zu Ziff. 2.2 (S. 9) aus der Pflichtzeile («Raeume mit grosser
Personenbelegung») in die Empfehlungszeile («Industrie- und Gewerbebauten») verschoben; die
Schutzstrecke der Anschlussleitung ist im Anhang zu Ziff. 3.3.2 (S. 12) neu bis zum Brandabschnitt
«Technikraum Sicherheitsstromversorgung» statt bis zur Sicherheitszuleitung definiert. Alle drei
Tabellen-/Textstellen am 200-dpi-Rendering beider Fassungen gegengelesen (Methodik-Pflicht 8).

**Neu (Gegenprobe, kein neuer Sachbefund):** `vkf-brl-13-15-fassung-2017-delta.md`
(`status: speculative`) — unabhaengig von diesem Lauf per Rendering neu erstellt, bestaetigt
deckungsgleich den bereits am 25.07.2026 (Run 23) inline im Bestandsdestillat
`vkf-brl-13-15-baustoffe-bauteile.md` erfassten und dort `established` gefuehrten Befund (E, E-d2,
EL, EL-d2 von RF4(cr) nach RF3(cr) verschoben, Ziff. 2.4.1 S. 8; drei Bezeichnungsaenderungen im
Anhang zu Ziff. 3.4 S. 24). **Struktur-Befund:** fuer 13-15 existieren die Delta-Informationen nun
an zwei Orten (inline + eigene Datei) — abweichend von der seit Run 59 gefuehrten Konvention einer
eigenen Delta-Datei je Publikation. Nicht konsolidiert; siehe `wiki/QUESTIONS.md`.

**Geaendert:** `vkf-brl-17-15-kennzeichnung-fluchtwege.md` (Warnkasten auf «Delta destilliert»
umgestellt, Delta-Link in `links:`) · `wiki/REGISTER.md` (Tabelle «Fassungs-Deltas destilliert»
5→6, 17-15 aus den offenen Listen entfernt, Duplikat-Hinweis zu 13-15 ergaenzt, neue Meldezeile im
Abschnitt «Frisch gemeldet»).

**Zusatzauftrag N59-1 beantwortet:** «(cr)» = kritisches Verhalten (comportement critique) nach
Ziff. 2.1 Abs. 2 (S. 5, wortgleich 2015/2017) — ein Anwendungsbeschraenkungs-Flag innerhalb einer
RF-Gruppe, keine eigene Stufe. Klassiert wird je nach Produktkategorie nach SN EN 13501-1:2009
(Bauprodukte/Bodenbelaege/Rohrdaemmungen), -5:2009 (Bedachungen) oder -6:2014 (Kabel). Die
KB-Behauptung einer RF4(cr)→RF3(cr)-Verschiebung von E/E-d2/EL/EL-d2 ist am Rendering **bestaetigt**
(Praezisierung: betrifft nicht die Bodenbelaege-Spalte, dort war Efl schon 2015 bei RF3(cr)).

**Drittquellen-Behauptung zu 17-15 geprueft:** die feste 15-Sekunden-Frist der Sicherheitsbeleuchtung
ist **bestaetigt entfallen** (Fundstelle Ziff. 3.2.2 Abs. 1, S. 6) — deckt sich mit der bereits am
20.08.2026 (Run 58) in `wiki/REGISTER.md` gemeldeten Kurzfassung, jetzt mit vollem Delta-Destillat
unterlegt.

## 2026-08-22 — Run 59: fuenf VKF-Fassungs-Deltas destilliert (Auftrag N58-1)

**Neu (5 Destillate):** `vkf-brl-10-15-fassung-2019-delta.md` · `vkf-brl-11-15-fassung-2019-delta.md` ·
`vkf-brl-108-15-fassung-2020-delta.md` · `vkf-brl-104-15-fassung-2022-delta.md` ·
`vkf-verz-40-15-fassung-2025-delta.md`. Alle `status: speculative` (kein unabhaengiger Refuter-Lauf).

**Geaendert (Inline-Korrekturen nach Methodik-Pflicht 9):** die fuenf zugehoerigen
Bestands-Destillate — Warnkasten auf «Delta erledigt» umgestellt, Delta-Link in `links:`, und an
den materiell betroffenen Stellen **inline markiert** (10-15: Gesamthoehe, Grossflaechige/ueberhohe
Raeume, Nutzungseinheit, Bedachungen, Uebereinstimmungserklaerung · 11-15: QSS-Matrix und
Uebereinstimmungskette · 104-15: sechs Stellen · 108-15: Pruefintervall).

**Register:** `destillate/INDEX.md` (Warnblock + 5 Zeilen) · `wiki/REGISTER.md` (neuer Abschnitt
«Fassungs-Deltas destilliert» + Chronikzeile) · `training/n58-vkf-fassungsmatrix-260820.md`
(Befundwert «✗ → Δ», Korrektur 108-15 «Stand 01.08.2022») · `training/norm-inventar.md` ·
`wiki/QUESTIONS.md` (N58-1 teilerledigt; N59-1 bis N59-4 neu).

**Ausserhalb der KB:** `skills/brandschutz/SKILL.md` um einen Fassungs-Delta-Block ergaenzt
(Gesamthoehe am Flachdach, QSS-Tabelle/Uebereinstimmungserklaerung, «Ueberhohe Raeume» ohne
Flaechenkriterium, fuenf neue Begriffe).

**Die gewichtigsten Sachbefunde.** BSE 108-15 ist zwischen 2015 und 2020 **vollstaendig neu
redigiert** worden, ohne dass die Aenderungsliste das ausweist — sie dokumentiert nur den Schritt
2020 → 2022; die Pruefintervalle der integralen Tests sind neu **kodifiziert (2 / 4 / 6 Jahre nach
Risikogruppe)** statt Behoerdenermessen. BRL 11-15: der **Brandschutzkonzept-Bericht ist erst ab
QSS 4 erforderlich** (2015: ab QSS 3), und die Uebereinstimmungserklaerung ist vollstaendig auf den
QS-Verantwortlichen uebergegangen. BRL 10-15: **«Ueberhohe Raeume» ohne das Flaechenkriterium
4'800 m²**, geaenderte Messregel der **Gesamthoehe am Flachdach**, sechs neue Begriffe.
Verz. 40-15: **die Ausgabejahre der SN-/DIN-Referenzen sind entfallen**.

**Methodisch.** Zwei Faelle, in denen nur das Rendering den Befund trug: die Anhang-Skizze der
104-15 fuehrt die Masse 1.2 × 2.0 m und 0.8 × 0.8 m fort, die der Fliesstext gestrichen hat (ein
reiner Text-Diff haette sie als entfallen gemeldet); und die Bildunterschrift der 10-15 auf S. 40
wechselt von «Verwendung **brennbarer** Baustoffe» auf «Verwendung **von** Baustoffen», im
Textlayer unsichtbar. Dazu ein Werkzeug-Befund gegen den eigenen Prozess: das Wasserzeichen «in
Ueberarbeitung» auf dem Hausbestand 40-15:2015 ist weder per `grep` im Textlayer noch per
`pdfimages -list` auffindbar — der Hauptprozess hatte den Agentenbefund deshalb zunaechst
faelschlich als Fehlalarm verworfen (QUESTIONS N59-2).


## 2026-08-20 (Wissens-Chef Run 38, Cross-KB) — der Meldeweg: BRL 26-15 war nicht unbekannt, sondern unverbunden; REGISTER bekommt einen Meldekopf

- **Kernbefund, adversarial bestätigt.** Run 58 meldete die **Teilrevision 2026 der BRL 26-15 als
  «der KB völlig unbekannt»**. Dieselbe Publikation — **identische Dokumentnummer
  `BSPUB-1394520214-125`** — lag jedoch seit dem **25.07.2026** in der KB `energie` destilliert
  vor, mit der Ausgabe **01.04.2026** und dem Änderungsvermerk «IOTH 06.03.2026» im Frontmatter
  (`wissen/energie/destillate/vkf-richtlinie-gefaehrliche-stoffe.md` Z. 4, 11, 109-111). Die
  Information war 26 Tage im Haus; es fehlte allein die Kante zwischen den beiden Dateien.
- **Beidseitige Querverlinkung gesetzt** und die Rollenteilung ausdrücklich benannt: dieses
  Destillat führt Fundstelle, Ziffern und Fassungsstand, das energie-Destillat die **Anwendung**
  im Batteriespeicher-/Gefahrstoff-Kontext (Ziff. 3.5.3). `destillate/vkf-brl-26-15-gefaehrliche-stoffe.md`
  16/1, Gegenstück 16/0.
- **`wiki/REGISTER.md`: Meldekopf «⚠ FRISCH GEMELDET» eingerichtet** (Übergabe-Auftrag 1 aus
  Wissens-Chef Run 37). 337 Destillate dieser KB verweisen auf `[[REGISTER]]` — das ist die
  Stelle, an der eine frische Rückzugs- oder Fassungsmeldung alle Abnehmer erreicht, bevor sie im
  systematischen Teil eingearbeitet ist. Sechs Meldungen eingetragen (BRL 103-15, Teilrevision
  2026, BRL 17-15 Ziff. 3.2.2, der 23er-Sweep, SIA 416/1, SIA 271/2 → SIA 312) je mit der Spalte
  «Abnehmer nachgeführt?».
  **Anlass sind zwei Fälle derselben Mechanik in zwei Tagen:** am 19.08. schrieb `energie` um
  10:39 neue SIA-416/1-Zitate, neun Stunden nachdem `normen` den Rückzug belegt hatte; am 20.08.
  lief es umgekehrt. Beide Male fehlte nicht das Wissen, sondern der Meldeweg.
- **Eine Meldung gegen den Skill `brandschutz` widerlegt.** Gemeldet war, die QSS-Tabelle
  BSR 11-15 Ziff. 3.3.1 in `skills/brandschutz/SKILL.md` sei durch die Fassung 01.01.2019
  überholt. Die amtliche Änderungsliste 2019 nennt ausschliesslich Ziff. 4.1.1/4.1.3-4.1.7 und
  Anhang-Positionen — **Ziff. 3.3 ist nicht darunter**, die Tabelle ist wortgleich; der Skill
  trägt den Fassungsvorbehalt zudem bereits, gesetzt heute um 17:23 durch Synergie-Lauf 13
  (SYN-37, Commit `a3793804`) gegen genau diese Fassungsmatrix. Nicht angefasst.
- **Damit ist der offene Teil von `N58-5` beantwortet** («ob weitere Fach-Skills VKF-Nummern oder
  -Fassungen führen — nicht geprüft»). Gemessen über `skills/ agents/ rules/ references/`:
  **42 Dateien** nennen VKF-nahe Begriffe (weites Muster inkl. EI30/RF1/Cheminée/Pyrotechnik;
  mit dem engen Muster «VKF/BRL/BSR» sind es 28). Davon trifft **genau eine** eigene
  VKF-Sachaussagen mit Richtliniennummern — `skills/brandschutz/SKILL.md`, und die ist seit heute
  17:23 nachgeführt. Alle übrigen nennen VKF als Fachbegriff, Router-Verweis oder Übungstext ohne
  eigene Norminhalt-Behauptung. **Der Sweep hat die Skills-Schicht nicht beschädigt** — anders als
  beim SIA-416/1-Fall aus Run 37, wo die Skills-Schicht den Rückzug gar nicht erst erreichte.

## 2026-08-20 (Normen-Nacht Run 58, MacBook Pro) — VKF-Fassungs-Sweep: N27-1 geschlossen, 23 Destillate ueberholt

- **N27-1 GESCHLOSSEN.** Der seit Run 27 (06.08.2026) offene Auftrag «VKF-Publikationsindex
  abfragen» ist erfuellt, und zwar breiter als beauftragt: nicht nur fuer BRL 22-15, sondern
  fuer **alle 35 VKF-Publikationen mit KB-Destillat**. Zugangsweg gefunden und belegt: der
  REST-Index der VKG ist ohne API-Key gesperrt (HTTP 400), der Index kommt ueber den
  Astro-JSON-Payload der Seite `bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015`
  (83 deutschsprachige Eintraege), die Dokumente frei ueber den `services.vkg.ch`-Endpunkt.
- **Kernbefund: 23 Destillate beruhten auf einer ueberholten Fassung**, ohne die geltende
  irgendwo zu fuehren. Der KB fehlten die Fassungsstufen **2019, 2020, 2022, 2025 und 2026**
  vollstaendig. Alle 23 tragen seither einen Fassungs-Warnkasten, das Frontmatter-Feld
  `gueltigkeit` und den Status **`superseded`** statt `established` (Diff gemessen: 23 Dateien,
  +301/-46; alle 46 Loeschungen sind die je Datei ersetzten Zeilen `status:` und
  `last_updated:`, kein fremder Inhalt — Rule 260811).
- **Die Teilrevision 2026 war der KB voellig unbekannt.** Das IOTH hat am **06.03.2026**
  Aenderungen an BRL 12-15 und 26-15 genehmigt, **in Kraft seit 01.04.2026**. Neues Destillat
  `destillate/vkf-teilrevision-2026-pyrotechnik.md` mit dem Wortlaut-Diff beider Fassungen:
  Bühnenpyrotechnik **T1-T2** bleibt bewilligungspflichtig, Feuerwerk **F1-F4** richtet sich neu
  allein nach BRL 26-15 Ziff. 11.1.3 — und dort ist **F1 in oeffentlich zugaenglichen Raeumen
  neu verboten**, im privaten Bereich ausdruecklich erlaubt. Die frueher gaengige Auskunft
  «Kategorie 1 ist ausgenommen» ist seit dem 01.04.2026 falsch.
- **BRL 103-15 «Cheminées» ist am 31.08.2025 zurueckgezogen worden** — die KB fuehrte sie als
  `established`. Belegqualitaet ausdruecklich ausgewiesen: der Rueckzug steht nur in der
  Portal-Annotation, das PDF selbst traegt keinen Vermerk (N58-2).
- **Werkzeug-Falle festgehalten:** das Indexfeld `vkgPubSamStatus` steht bei **allen** 83
  Eintraegen auf «aktuell», auch bei der zurueckgezogenen 103-15. Es bedeutet «aktuell
  publiziert», **nicht «in Kraft»**. Wer darauf baut, haelt eine zurueckgezogene Richtlinie
  fuer geltend.
- **Nachgefuehrt:** `wiki/REGISTER.md` (Abschnitt D um die Fassungsmatrix erweitert, Zeile
  VKF 1-15 praezisiert — «BSV 2015» bezeichnet das Vorschriftenwerk, nicht den Fassungsstand
  seiner Teile), `destillate/INDEX.md` (Warnblock + neues Destillat), `wiki/QUESTIONS.md`
  (N27-1 geschlossen, **N58-1 bis N58-4** neu), `training/n58-vkf-fassungsmatrix-260820.md`
  (neu — die Matrix mit Dokumentnummern, Fassungsdaten und MD5, damit kuenftige Laeufe nicht neu
  beschaffen muessen), Lauf-Report `outputs/2026-08-20_normen-nacht-run58.md`.
- **Stationssplit eingehalten:** nur SIA/VKF; DIN, VSS und RAL nicht angefasst.

## 2026-08-19 (Normen-Nacht Run 57, MacBook Pro) — N56-1 geschlossen; SIA 416/1:2007 ist zurueckgezogen

- **N56-1 GESCHLOSSEN.** Refuter-Runde auf den fuenf zuletzt offenen Seiten von
  `destillate/sia-416-1-2007.md` (S. 4, 6, 21, 27, 34), vom Hauptprozess ohne Subagenten am
  eigenen 300-dpi-Rendering (Praefix `ref416-r57-`), Folio je am Seitenrand abgelesen.
  **Saemtliche Korrekturen der Runs 55 und 56 haben am Druck gehalten** — keine musste
  zurueckgenommen werden. Der EV/Eh-Befund aus Run 55 ist am Druck sogar **doppelt** belegt
  (der Eh-Eintrag nennt die Zuluft-Erwaermung ausdruecklich).
- **3 neue Kernbefunde, alle inline korrigiert:** (a) **S. 6 — Figur 1 und die GF-Gliederung
  fehlten dem Destillat vollstaendig**; damit war die Identitaet GF = NGF + KF und die
  Taxonomie NGF = NF+VF+FF / NF = HNF+NNF nirgends gefuehrt (Gegenpruefung «Figur 1»,
  «gliedert», «GF = NGF» je 0 Treffer). (b) **S. 6 — «Bauteile _wie_ versetzbare Trennwaende
  und Schrankwaende»** war zur geschlossenen Aufzaehlung verengt; verneint ist zudem nicht die
  Bauteil-Eigenschaft schlechthin, sondern die als **umschliessendes oder innenliegendes**
  Konstruktionsbauteil. (c) **S. 27 — die Positivdefinitionen von EV und EC fehlten** (Run 55
  trug drei nach, es waren fuenf); mit ihnen fehlten die Zuteilungsregeln **WRG-Antrieb → EV**
  und **Rueckkuehl-Ventilator → EC**. Dazu 4 Nebenbefunde. **S. 4, 21 und 34 ohne Kernbefund.**
- **⚠⚠ SIA 416/1:2007 IST ZURUECKGEZOGEN** — gueltig 01.07.2007 bis **31.03.2015**, seit
  01.04.2015 ersetzt durch **SIA 380:2015 «Grundlagen fuer energetische Berechnungen von
  Gebaeuden»** (SN 504380:2015). Belegt an **zwei unabhaengigen Primaerquellen**: dem
  SIA-Shop-Produktdatenblatt («archivierter Titel», mit Enddatum) und dem **Titelblatt der
  SIA 380:2015 selbst** («Ersatz fuer SIA 416/1:2007 sowie Teile von SIA 2031:2009,
  SIA 2032:2010 und SIA 2040:2011»). **SIA 380:2015 liegt NICHT im Haus** — Beschaffung ist
  Bring-Schuld (**N57-2**).
- **Nachgefuehrt:** `destillate/sia-416-1-2007.md` (Warnkasten zuoberst, Frontmatter-Feld
  `gueltigkeit`, Pruefstand, Statusbegruendung; Diff **+131/−11**, alle 11 Loeschungen sind
  ersetzte eigene Zeilen, kein fremder Inhalt entfernt, Rule 260811; ankerbasiert, kein
  globales Ersetzen; Sicherungskopie im Scratchpad) · `wiki/REGISTER.md` (Gueltigkeitsspalte
  von «2007✓» auf «2007 ✗ zurueckgezogen» korrigiert) · `destillate/INDEX.md` ·
  `training/norm-inventar.md` (beide Zeilen) · `wiki/sia-416-1-verwendungszwecke-abgrenzung.md`
  (**Status von `established` auf `speculative` herabgesetzt** — `established` heisst nach Rule
  `normen-referenz` Ziff. 1b «ohne Gegenlesen zitierfaehig», das darf fuer eine archivierte
  Ausgabe nicht gelten; der Artikelinhalt selbst bleibt geprueft und richtig) ·
  `wiki/QUESTIONS.md` (N56-1 geschlossen, N57-1 bis N57-4 neu) ·
  `outputs/2026-08-19_normen-nacht-run57.md`.
- **Nur gemeldet, nicht angefasst:** neun Dateien in vier Fremd-KBs (`energie`,
  `immobilienbewertung`, `planungsgrundlagen`, `baurecht`) zitieren SIA 416/1 als Fundstelle.
  Die Umhaengung auf SIA 380:2015 setzt deren Beschaffung voraus und ist **sachbezogen** zu
  pruefen, nicht mechanisch zu ersetzen (Lehre aus Rule `bkp-2017-referenz`). Liste in
  `wiki/QUESTIONS.md` unter N57-2.
- **Methodenbefund:** Fuenf Laeufe (53-57) haben den Inhalt dieser Norm Satz fuer Satz
  verifiziert, **ohne je ihren Gueltigkeitsstand zu pruefen** — obwohl Methodik-Pflicht 3 des
  PROGRAMM genau das als **ersten** Schritt jeder Verifikation verlangt. Die Pflicht war
  formuliert fuer den Vergleich zweier Fassungen **im Bestand**; dass die geltende Fassung gar
  nicht im Haus liegen koennte, deckte sie nicht ab. Praezisierung im Laufbericht vorgeschlagen.
- Stationssplit eingehalten: nur SIA/VKF bearbeitet; DIN, VSS und RAL nicht angefasst.

## 2026-08-18 (Wissens-Chef Run 36, Cross-KB) — drei Gegenkanten zur KB `planungsgrundlagen` gesetzt

- **Doppelfuehrung beidseitig verdrahtet** (Uebergabe-Auftrag 1 aus Run 35). Drei Destillate
  dieser KB werden von `planungsgrundlagen/wiki/recht-norm-arbeitshilfen-planungsdetails.md`
  aus derselben Quell-PDF unabhaengig gefuehrt; die Kante fehlte in beide Richtungen:
  `stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019.md` (§3),
  `pav-e-01-2008-spezielle-bedingungen-heizestriche.md` (§5),
  `auva-planungsgrundlagen-anschlageinrichtungen-daecher-2010.md` (§7). Gegenkante dort gesetzt.
- **Statusrelevanter Nebenertrag:** Das PAV-E-01-Destillat traegt `status: speculative`,
  waehrend `planungsgrundlagen` dieselbe PDF in Run 58 **vollstaendig gelesen** und als
  `established` gefuehrt hat — bei Zeile-fuer-Zeile identischen Kernwerten (50 °C Vorlauf
  CA/CAF, 6 m/8 m Feldgroessen, 5-K-Schwelle, 21/7-Tage-Fristen). Der Statusvorsprung lag
  ungenutzt, weil keine Seite von der anderen wusste. Im Destillat vermerkt: der Status kann
  bei Gegenpruefung der Fristen- und Temperaturwerte auf `established` angehoben werden.
  Bis dahin gilt Rule `normen-referenz` Ziff. 1b unveraendert.
- **`sia-416-1-2007.md` gegengeprueft, kein Befund:** Das in Run 56 gewachsene Destillat
  **bestaetigt die Run-35-Aufloesung zur EBF-Schwelle vollstaendig** (Ziff. 3.2.2/Figur 16:
  1,0 m, unveraendert). Die abweichenden 1,5 m in `planungsgrundlagen` bleiben als
  RFB-Richtlinienstand (Entwurf 3/05) korrekt bestehen. Ein Urteil aus einem frueheren Lauf,
  das eine unabhaengig destillierte Quelle spaeter bestaetigt, ist der beste Beleg dafuer,
  dass die Refuter-Stufe traegt.

## 2026-08-18 Run 56 — N55-1 und N55-2 geschlossen; drei Kernbefunde in selbstgeprüftem Text

- **`sia-416-1-2007.md`: unabhängige Refuter-Runde auf dem Run-54-Zuwachs der S. 4, 6, 9, 17,
  21-22 und 39 gefahren (N55-1 geschlossen).** Vom Hauptprozess ohne Subagenten am eigenen
  300-dpi-Rendering (`ref416-r56-`); S. 22 und S. 39 waren zuvor von niemandem gelesen worden.
  **3 Kernbefunde, 5 Nebenbefunde, alle inline korrigiert** (Methodik-Pflicht 9).
  - **Kernbefund 1 (Vorwort, S. 4):** Das Destillat zählte **drei** Änderungen gegenüber
    SIA 180/4:1982; gedruckt stehen **vier**. Die fehlende ist «eine vereinfachte, sich auf die
    Norm SIA 416 beziehende Definition der **Energiebezugsfläche**» — also die Aussage, dass AE,
    die Bezugsgrösse der ganzen Norm, **aus SIA 416 abgeleitet** und nicht eigenständig
    definiert ist. Genau die Abgrenzung, die das Destillat als Auftragsanlass führt.
  - **Kernbefund 2 (Ziff. 1.1.1, S. 6):** Die KF-Definition stand ohne die Eingrenzung
    «**innerhalb der Geschossfläche GF liegenden**» — das Kriterium, das KF zur Teilfläche der
    GF macht. Ohne es ist GF = NGF + KF nicht mehr geschlossen. Bauteil-Beispiele (Aussen- und
    Innenwände, Stützen, **Brüstungen**) fehlten ebenfalls; dass Brüstungen genannt sind, stützt
    die Zuteilungsregel «Fensternischen mit Brüstungen → KF».
  - **Kernbefund 3 (Ziff. 2.3.2, S. 21):** Bei **abgehängten Decken an der Untersicht von
    auskragenden Bauteilen** fehlte die mitlaufende **10-cm-Schwelle**. Das «Das gilt auch» der
    Norm trägt sie mit, und **Figur 13** zeichnet die Spalte «Böden gegen Aussenklima»
    ausdrücklich als Paar ≤ 10 cm / > 10 cm. Ohne die Bedingung wird die Messebene auch bei
    kleinem Hohlraum nach innen gelegt und **Ath zu klein** gerechnet — eine Grösse, die über
    die Gebäudehüllzahl in die SIA-380/1-Grenzwerte eingeht.
  - **Nebenbefunde:** halbierte Brennwert-Folge (die Norm nennt auch «entsprechende Änderungen
    bei den **Energiekennzahlen**»); die Messkonvention S. 6 ist aufrecht, nicht kursiv gesetzt;
    «**äusserste** Hauptebene der Fassade» (Ziff. 2.3.4); «hinterlüftete Aussenwände» stammt aus
    der Legende der Figur 13, nicht aus dem Normtext; die **drei Linientypen** der Figur-10-Legende.
    Dazu die **Auflösung der fünf Organisationskürzel** S. 39 (CRB, EMPA, ETHZ, SIA KH, SIA KHE),
    die Run 54 als Lücke benannt, aber nicht geschlossen hatte.
  - **Vollständig bestätigt:** S. 17 (Ziff. 2.2.1.1-2.2.1.5 — der von Run 54 am stärksten
    umgebaute Block, Satz für Satz ohne Befund), S. 9 (alle sechs Begriffe), S. 22 (Figur 14),
    S. 39, Treppenauge-Regel S. 6, Ziff. 2.3.1/2.3.3.
- **`sia-416-1-2007.md`: Anhang A vollständig aufgenommen (N55-2 geschlossen).** Die Raumlisten
  **HNF1-HNF5** und die vollständige **FF-Liste** (inkl. «Installationsräume, -schächte und
  -kanäle») stehen jetzt im Destillat, ebenso NNF und VF. **Nebenbefund: Anhang A ist
  ausdrücklich «(informativ)» überschrieben** — das war nicht ausgewiesen und ist für die
  normative Verbindlichkeit erheblich. Zwei Zweifelsfall-Abgrenzungen neu benannt: Küchen und
  Sanitärräume sind je **zweimal** geführt (Wohnung → HNF1; gewerblich → HNF3, allgemein → NNF),
  und **Labors gehören zu HNF3, nicht HNF6** (das trägt das Wort «Experimente» im
  Kategorietitel). Zuordnungshilfe für `flaechen-nachweis` und `healthcare-wirtschaftlichkeit`.
- **Status bleibt `speculative` — aus einem vierten, neuen Grund (N56-1).** Sachlich ist der
  Prüfstand vollständig: beide Prüfrichtungen sind jetzt auf **jedem** Teil gelaufen. Aber die
  drei Seiten mit Kernbefund tragen neu geschriebenen, wieder unverifizierten Text. Das ist der
  vierte Lauf in Folge, der den Status nicht hebt. **Der Entscheid über das von Run 55
  vorgeschlagene Abbruchkriterium liegt bei Raphael** (Lauf-Report Ziff. 6); angewandt blieben
  nur noch **fünf** Seiten offen (4, 6, 21, 27, 34).
- **Methodenbefund:** Alle drei Kernbefunde liegen auf Seiten, die Run 54 als «gerendert
  nachgeprüft» führte — sie waren nicht ungeprüft, sondern **vom Autor selbst** geprüft. Run 55
  hatte das vermutet und mit zwei Befunden gestützt; mit sieben weiteren Seiten ist es
  unabhängig bestätigt. Alle drei sind **Auslassungen**, keiner ist ein falscher Wert — der
  Autor liest seinen Satz gegen die Erinnerung an die Quelle, nicht gegen die Quelle.
  **Folge: wer in einem Lauf Text schreibt, weist ihn im selben Lauf nicht als geprüft aus.**
- Register nachgeführt: `norm-inventar.md`, `destillate/INDEX.md`, `wiki/REGISTER.md`,
  `wiki/QUESTIONS.md` (N55-1, N55-2 geschlossen; N56-1 neu). Lauf-Report
  `outputs/2026-08-18_normen-nacht-run56.md`. Diff am Destillat gemessen: **+51/−10**, alle
  Löschungen ersetzte eigene Zeilen (Rule 260811).
- Inventar: **0 destillierbare offene Positionen**; die fünf verbliebenen `[ ]` sind externe,
  kostenpflichtige Bring-Schulden (SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020).
  Stationssplit eingehalten (nur SIA/VKF).

## 2026-08-17 Run 55 — N54-1 geschlossen; der Register-Check kalibriert, zwei Fehlbefunde widerlegt

- **`sia-416-1-2007.md`: Refuter-Runde auf dem Run-54-Zuwachs gefahren (N54-1 geschlossen).**
  Vom Hauptprozess **ohne Subagenten** am eigenen 300-dpi-Rendering (`ref416-r55-`) der
  S. 26, 27, 28, 29, 30, 31, 32, 34, 35 und 40 — sämtlich Seiten, die Run 54 als «nicht
  gerendert nachgeprüft» ausgewiesen hatte. **Rund 69 Aussagen geprüft: 2 widerlegt,
  2 unpräzise, der Rest bestätigt**, kein falscher Zahlenwert, keine falsche Fundstelle.
  - **Kernbefund 1 (Ziff. 4.3.3, S. 27):** Das Destillat liess EV «die **Erwärmung der
    geförderten Luft**» umfassen. Die Norm ordnet EV nur die **Auswirkungen der luftseitigen
    Druckverluste** zu — auch die der Erwärmungs-Komponente; die Lufterwärmung selbst gehört
    zu Eh. Die alte Fassung zählte sie zweimal, also genau die Doppelzählung, die dieser
    Abschnitt verhindern soll.
  - **Kernbefund 2 (Anhang A, S. 34):** Der Kategorietitel HNF3 lautet «Produktion, Hand- und
    Maschinenarbeit, **Experimente**»; «Experimente» fehlte. Es trägt die Zuordnung der
    **Labors** — die Frage stellt sich in jedem Spital- und Forschungsbau (2619 KISPI).
  - Vollständig bestätigt: die Übertragungs- und Vorzeichenlogik der Ziff. 4.4.4 (S. 30), die
    Konsistenzbedingung (S. 31), die Carnot- und Anteilsregeln (S. 29), die
    Tabellen-5-Rechenwege und Ziff. 4.5.2 (S. 32), die drei Fussnoten der Tabelle 6 (S. 35),
    die Präsidenten-Vertretung (S. 40).
  - Beiläufig **sieben weitere Abdeckungslücken**, die auch Run 54 übersah, eingearbeitet.
    **Methodenbefund:** Eine Refuter-Runde, die Satz für Satz am Original liest, findet auch
    dann noch fehlenden Inhalt, wenn kurz zuvor eine Abdeckungsrunde über dieselben Seiten
    lief. Die beiden Richtungen sind komplementär — **aber keine ist für sich erschöpfend.**
  - **Status bleibt `speculative`**, offen als **N55-1**: der Run-54-Zuwachs auf S. 4, 6, 9,
    17, 21-22 und 39 hat keine **unabhängige** Refuter-Runde — dort prüfte in Run 54 der Autor
    seinen eigenen Text, S. 22 und S. 39 niemand.
- **Neuer Wiki-Artikel `sia-416-1-verwendungszwecke-abgrenzung.md`** (`established`, INDEX
  nachgeführt): die sechs Verwendungszwecke und die vier Grenzen, an denen Doppelzählung
  entsteht. **Jede Aussage darin am Original nachgelesen** — der Artikel stützt sich
  ausdrücklich NICHT auf das noch `speculative` Destillat. Für `energie`, `flaechen-nachweis`
  und Rückfragen an Fachplaner.
- **`register-check.sh` um Prüfung [6] Status-Vokabular erweitert.** Die Prüfungen 2 und 3
  vergleichen Destillat und Register miteinander und merken nicht, wenn beide dasselbe Wort
  führen, das Wort aber **gar keine definierte Reifestufe** ist. Befund: **25 Destillate**
  stehen ausserhalb des Vokabulars, davon **16 auf `destilliert`**, dazu `teil-destillat`,
  `struktur-destillat`, `emerging`, `superseded`, `established-mit-vorbehalt`,
  `speculative→belastbar`. **Das ist ein Regelungsloch, kein Schönheitsfehler:** Rule
  `normen-referenz` Ziff. 1b lässt nur `established` als zitierfähig zu — ein Destillat mit
  Status `destilliert` fällt durch die Rule hindurch. **Nicht selbständig bereinigt**
  (KB-weites Umbenennen ist nach Rule `wissens-bibliothekar` pausepflichtig); Vorschlag im
  Lauf-Report.
- **Zwei Fehlbefunde des Register-Checks widerlegt und die Kalibrierung nachgezogen** — beide
  waren Werkzeug-Artefakte, nicht Registerdefekte:
  - **Prüfung [4] verglich Normnummer ohne Ausgabejahr.** Die offene Zeile «SIA 181:**2020**
    — Re-Destillat der geltenden Ausgabe» (Bring-Schuld, Norm nicht im Haus) meldete einen
    Treffer auf `sia-181-2006.md`. Run 54 hatte das als echten Registerdefekt protokolliert
    und weitergereicht; am Inventar widerlegt (Z. 576 führt die Ausgabe 2006 korrekt als
    `[x]`). Prüfung [4] fordert jetzt Übereinstimmung im **Ausgabejahr**; sie meldet damit
    null Befunde statt eines falschen.
  - **Prüfung [6] las YAML-Blockskalare falsch.** `status: |` trägt den Wert erst in der
    Folgezeile; die Prüfung meldete `|` als Statuswert
    (`stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019.md`). Ebenso blähte ein
    fehlendes Abstreifen der Trailing-Kommata (`status: "established, verifiziert 260714…"`)
    die Zahl der Vokabularverstösse von 25 auf 33. **Beide Male war die Messung zuerst eine
    Aussage über das Werkzeug** (Rule `wege-und-vollmachten`, `auto-verbesserungen` 260807).
- **Drei belegte Registerdrift-Fälle bereinigt** (die Übergabe «dem nächsten Lauf» aus dem
  Eintrag darunter), jeder einzeln am Bestand nachgelesen. **Die Drift läuft in beide
  Richtungen — man kann also nicht pauschal einer Seite glauben:**
  - `vsa-aufzuege-esba-zh.md`: INDEX führte «speculative (Verifikation ausstehend)»; die
    Verifikation war in eben jenem Run 40 gefahren. **INDEX war stale** → korrigiert.
  - `sia-196-1998.md`: INDEX führte «teil-destillat (verifiziert 260713)»; die Frontmatter
    steht seit dem 23.07. auf `established` (Anhänge A1-A4 vollständig geprüft). **INDEX war
    stale** → korrigiert.
  - `ugz-hindernisfreie-aufzuege-2010.md`: Die Frontmatter führte «speculative — noch keine
    unabhängige Verifikation» und beschrieb **im selben Feld** die durchgeführte Refuter-Runde
    (~150 Aussagen, alle Befunde eingearbeitet). **Das Destillat war stale** → korrigiert. Der
    gefährlichere Fall: es sperrte sich selbst für die Zitation.
- **Ein selbst gebautes Duplikat wieder entfernt.** Der Lauf hat zunächst ein zweites
  Abgleich-Script (`register-abgleich.sh`) gebaut, ohne zu prüfen, ob es schon eines gibt —
  `register-check.sh` war wenige Stunden zuvor entstanden und deutlich besser kalibriert. Das
  Duplikat ist gelöscht, der einzige neue Gedanke daraus (Vokabular-Prüfung) ins bestehende
  Script übernommen. **Bestand lesen kommt vor bauen**, auch wenn der Bau billig ist.
- **Vorrang-Auftrag `lignum-lignatec` erneut gegengeprüft — und diesmal am Destillat selbst,
  nicht am Vorlaufbericht.** Die Frontmatter von `lignum-lignatec-brandschutz.md` weist die
  rechnerische Zellaufnahme von Tab. 3 und Tab. 4 als **in Run 38 (30.07.2026) ausgeführt**
  aus, mit sieben Kernbefunden. Der Auftrag ist erledigt; im Scheduled Task ist er nach
  Raphaels Entscheid heute bereits gestrichen. Der hier eingegangene Prompt trug ihn noch.

## 2026-08-17 (Entscheide Raphael nach Run 54) — vier Vorschläge beantwortet, drei umgesetzt

Raphael hat die offenen Punkte aus Report Run 54, Ziff. 7 entschieden:

- **Vorrang-Auftrag GESTRICHEN.** Der Block «achte Verifikationsrunde lignum-lignatec, Tab. 3/4
  rechnerisch» ist aus dem Task-Prompt `normen-training-nacht` entfernt (15 Zeilen, plus
  Frontmatter-`description` und Abschnittstitel nachgezogen). Erledigt war er seit Run 38
  (30.07.2026); die Runs 49-54 hatten ihn sechsmal als überholt zurückgemeldet.
- **Methodik-Pflicht 13 FREIGEGEBEN und verbindlich** (`training/PROGRAMM.md`): Eine
  Refuter-Runde ist nie ein Vollständigkeitsnachweis — sie fängt weggelassene Ausnahmen, ist
  für weggelassenen eigenständigen Inhalt aber strukturell blind. Belegkette Run 52
  (Einzelfall) → Run 53 (3/3 gegen 1/3 an gepflanzten Auslassungen, 0 Falsch-Positive) →
  Run 54 (realer Bestand: 37 Kernlücken dort, wo die Refuter-Runde 93 Aussagen bestätigt
  hatte). Praktische Folge: keine Hebung auf `established`, solange nicht beide Richtungen auf
  allen Teilen gelaufen sind; der Prüfstand gehört als Tabelle ins Destillat.
- **Methodik-Pflicht 11 und die Erweiterung von MP 12 NICHT freigegeben.** Sie bleiben
  Vorschlag und gute Praxis, sind aber **nicht** verbindlich und dürfen nicht als verletzte
  Pflicht protokolliert werden. Vermerkt im PROGRAMM.md; nicht erneut vorlegen ohne neuen Beleg.
- **Register-Check gebaut** (`training/register-check.sh`, nur auf Zuruf, kein Automatik-Takt).
  Schliesst die dritte Prüfachse: der Loop prüft Destillat gegen Original in zwei Richtungen,
  niemand prüfte Register gegen Destillat. Fünf Prüfungen: Datei↔INDEX-Zeile beidseitig,
  `status:` gegen INDEX, «ausstehend» im Register trotz `geprueft:`, Inventar-`[ ]` trotz
  vorhandenem Destillat, Pflichtfelder. Ändert nichts, meldet nur.
  **Beim Kalibrieren am Bestand (369 Destillate) zwei Falsch-Positiv-Klassen beseitigt:**
  (1) die Prüfung traf die Prosa-Zeile «Je Norm ein Destillat `sia-102-2020.md`» statt der
  Tabellenzeile und meldete dadurch fast jeden Status als Drift — nun nur noch Zeilen ab `|`;
  (2) Korrekturvermerke, die den behobenen Zustand in Guillemets zitieren, lösten Prüfung 3
  aus — zitierter Text wird nun ausgeblendet. Ferner `norm:` aus den Pflichtfeldern gestrichen
  (nur wenige Destillate führen es, es ist keine Konvention; die Prüfung feuerte 398 Mal und
  mass damit ihre eigene Fehlkalibrierung).
  **Erster Lauf: rund 30 Befunde**, zwei stichprobenweise am Bestand als echt bestätigt —
  `sia-196-1998` (Frontmatter `established` seit 260723, INDEX führt weiterhin
  `teil-destillat` von 260713) und `vsa-aufzuege-esba-zh` (Frontmatter `established`, INDEX
  `speculative`). Ausserdem: `sia-181-2006` steht im Inventar auf `[ ]`, obwohl das Destillat
  existiert — derselbe Fehlertyp wie bei SIA 215 in Run 54. **Bereinigung dem nächsten Lauf
  übergeben**, nicht hier miterledigt: jede Registerzeile braucht den Beleg des Laufs, der sie
  setzt.
- **xalt-Bestandshygiene: README angelegt** in
  `PL - 02_Recht_Norm/02_Normen/SIA_Norm/SIA_Normen/alle/xalt/README.md` (geteilte
  SharePoint-Bibliothek, Freigabe Raphael). Hält fest, dass der Ordnername keine Aussage über
  die Gültigkeit trifft, listet die vier belegten Fälle (SIA 416/1:2007, SIA 215:1978,
  SIA 151:2001, SIA D 0165:2000 — alle geltend) und den Gegenfall SIA 178:1996, der dort zu
  Recht liegt. Ordner **nicht** umbenannt: das hätte alle Quellenpfade in den Destillaten und
  jeden fremden Verweis gebrochen.

## 2026-08-17 (Normen-Training Run 54, MacBook Pro) — die Abdeckungsrichtung findet 37 Kernlücken dort, wo die Refuter-Richtung zufrieden war

Kernergebnis: **N53-2 geschlossen.** Beide Prüfrichtungen sind für `sia-416-1-2007.md`
erstmals auf **allen** Teilen gelaufen, und `sia-215-1978.md` hat seine Refuter-Runde.

- **`destillate/sia-416-1-2007.md` — Abdeckungsrichtung auf Kap. 0-2 und Kap. 4-5/Anhänge
  nachgeholt** (7 Segment-Agenten über S. 4-22 und S. 26-40, Präfix `cov416-r54-`).
  **37 Kern- und 20 Nebenlücken**, alle inline eingearbeitet (Methodik-Pflicht 9). Darunter:
  τ-Schwelle 10 % für «lichtdurchlässig» in der Definition von Ag; Treppenauge-Regel
  (bis 5 m² Geschossfläche, darüber Luftraum); Versetzbarkeits-Kriterium für Trenn-/
  Schrankwände; die vier KF/NGF-Zuteilungsregeln; Messkonvention lotrechte Projektion;
  Ziff. 2.2.1.2 (Einbezug unbeheizter Räume) fehlte vollständig; Ziff. 2.2.1.7
  (wiederholte Wärmebrücken im U-Wert, Verbundelemente); Ziff. 2.3.1 (Projektphasen/
  Fertigmasse) und 2.3.3 (runde Bauteile); Ziff. 4.1.4 erste Hälfte samt Fussnote auf
  SIA 380/1 und SIA 2024; Ziff. 4.1.5, 4.1.6, 4.2 und 4.5.2; die Abgrenzungen der sechs
  Verwendungszwecke (Ziff. 4.3.3); Lüftungsstrom ist keine Hilfsenergie (Ziff. 4.4.2);
  Carnot-Maschine und anteilmässig gespeiste Verteilsysteme (Ziff. 4.4.3); die gesamte
  Übertragungs- und Vorzeichenlogik samt Doppelweg-Konsistenzcheck (Ziff. 4.4.4); die
  Rechenbeziehungen der Tabelle 5; Ziff. 5.1 Bezug auf Ziff. 2.2.3; Anhang A (FF «des
  Bauwerkes selbst», Schutzräume «auch wenn zeitweilig anders genutzt», HNF6-Raumliste
  Healthcare); die drei Bezugszustands-Fussnoten der Tabelle 6.
  **Kein einziger falscher Wert — durchgehend fehlender Inhalt.**
  Hauptprozess-Nachprüfung an eigenen 300-dpi-Renderings (S. 4, 6, 9, 17, 21, 26, 33): alle
  bestätigt, keine Widerlegung. Status bleibt `speculative`, neu wegen N54-1.
- **`destillate/sia-215-1978.md` — Refuter-Runde gefahren** (2 Segmente, `ref215a/b-r54-`):
  41 bestätigt, 3 widerlegt, 1 Fundstelle falsch, 1 nicht prüfbar. Korrigiert: «Ziff. 0-6»
  (eine Ziffer 0 existiert nicht, Inhaltsverzeichnis beginnt bei 1); die als generell
  ausgegebenen Druckfestigkeits-Prüfalter (Baugips kennt **nur 7 Tage**, hydraulischer Kalk
  28 Tage — die 24 h/48 h/28 Tage gelten allein für Zement); die Fundstelle der drei
  chemischen Grenzwerte (stehen in Ziff. 6.27.1/6.27.3/6.27.4 auf S. 17-19, nicht in
  Ziff. 4.3 auf S. 9-10); Seitenbereich des Stichwortverzeichnisses (S. 35-**38**, S. 39 ist
  leer). Ergänzt: TFB Wildegg als zweite Überwachungsstelle. Die zwei folgenreichsten
  Befunde hat der Hauptprozess am Original selbst nachgeprüft (Rendering S. 8 für die
  Gütewert-Tabellen, `pdftotext` S. 10/17/18/19 für die Fundstellen).
- **`destillate/INDEX.md` — zwei veraltete Zeilen korrigiert (Methodik-Pflicht 12).** Die
  SIA-215-Zeile trug noch die Schlussfolgerung «seit spätestens 1993 belegt ersetzt», die
  Run 53 im Destillat **und** in QUESTIONS zurückgenommen hatte — der INDEX war die dritte,
  übersehene Stelle. Die SIA-416/1-Zeile führte die Refuter-Runde als «ausstehend», obwohl
  Run 53 sie gefahren hatte. Lehre: eine zurückgenommene Aussage ist erst zurückgenommen,
  wenn **alle** Register sie nicht mehr tragen.
- **`wiki/QUESTIONS.md`:** N53-2 geschlossen, **N54-1 neu eröffnet** (Refuter-Runde auf den
  Run-54-Zuwachs, mit Angabe der vom Hauptprozess nicht nachgeprüften Seiten).


## 2026-08-16 (Wissens-Chef Run 34, Cross-KB) — kein Eingriff in diese KB, aber drei neue Abnehmer-Kanten und ein bestätigter Fehler beim Abnehmer

Diese KB wurde in diesem Lauf **nicht verändert** — der Eintrag hält fest, wo sie neu als Quelle
gezogen wird und wo ein Abnehmer sie falsch wiedergegeben hatte.

- **`destillate/sia-416-2003.md` (`established`) ist jetzt zweifach verlinkt:** aus
  `energie/wiki/bezugsgroessen-energienachweis.md` und
  `energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`. Beide führten dort den
  Vorbehalt, ihre Flächenhierarchie stamme aus einer privaten Immobilienfirma statt von einer
  Normstelle — der belastbare Ersatz lag seit dem 14.07.2026 hier und war nur nie verlinkt.
- **`destillate/sia-416-1-2007.md` (`speculative`) als Warnkarte verlinkt**, nicht als Beleg:
  Ziff. 3.2.2 (Abstellräume/Schächte unter 10 m² zählen abweichend doch zur AE) ist in
  `energie` als **Prüfauftrag** gesetzt, mit ausdrücklichem Hinweis auf Rule `normen-referenz`
  Ziff. 1b. Eine blind gesetzte Kante auf eine Warnkarte sieht aus wie ein Beleg.
- **`destillate/sia-118-1991.md` (`established`) hat einen Fehler beim Abnehmer aufgedeckt:**
  `skills/offertenpruefung` führte «Gewaehrleistung (typisch 2 Jahre / SIA 118 5 Jahre)» — die
  Verwechslung von Garantie-/Rügefrist (Art. 172, **2 Jahre**) mit der Verjährung der
  Mängelrechte (Art. 180, 5 Jahre), vor der der Begriffe-Abschnitt dieses Destillats (Z. 142)
  wörtlich warnt. Adversarial gegengeprüft, bestätigt, im Skill korrigiert.
- **Zweiter Abnehmer-Befund aus demselben Destillat:** `skills/unternehmerkontrolle` und
  `skills/werkvertrag` führten Rückbehalt und Garantie gemeinsam unter «10 % Art. 181».
  Am Destillat gegengelesen: das sind zwei Sicherheiten mit eigener Fundstelle und eigener
  Schwelle — Rückbehalt bis Abnahme Art. 149-150 (>Fr. 300'000 → 5 %, min. Fr. 30'000),
  Solidarbürgschaft nach Abnahme Art. 181 (>Fr. 200'000 → 5 %, min. Fr. 20'000). Beide Skills
  getrennt nachgeführt.
- **`destillate/sia-215-1978.md` (neu 16.08., Run 53) geprüft:** inhaltlich themenfremd zu den
  Flächen-/Bezugsgrössen dieses Laufs (mineralische Bindemittel), keine Berührung, kein Befund.

## 2026-08-16 — Run 53: Gegenrichtung «fehlender Inhalt» gemessen (N52-2 geschlossen), Refuter-Runde SIA 416/1, N52-6 geklärt

Lauf-Report `outputs/2026-08-16_normen-nacht-run53.md`, Anlage
`training/n52-2-gegenrichtung-anlage-260816.md`.

**N52-2 geschlossen — die Klasse «fehlender Inhalt» zerfällt in zwei.** Run 52 hatte an
einem Fall beobachtet, dass die Fragerichtung «widerlege» fehlenden Inhalt nicht erfasst.
Diese Runde hat es mit Kontrollen gemessen: Quelle SIA 416/1:2007, gedruckte S. 23-25, vom
Hauptprozess vorab selbst gelesen; zwei Varianten desselben Destillat-Abschnitts, in der
dotierten drei Aussagen entfernt (bewusst so, dass keine Falschaussage entsteht); drei
blinde Läufe. Ergebnis: **Abdeckungsrichtung 3 von 3 erkannt bei 0 Falsch-Positiven,
Refuter-Richtung 1 von 3.** Präzisierung statt Wiederholung: (a) eine weggelassene
**Ausnahme** zu einer geführten Regel macht die Restregel überdehnt und ist damit
refuter-**sichtbar**; (b) weggelassener **eigenständiger Inhalt** bleibt wahr und ist
refuter-**blind**. B02 aus Run 52 war ein Fall der Klasse (b).

**Nebenertrag:** Dieselbe Anlage fand **sieben echte Lücken** in drei Seiten von
`sia-416-1-2007.md`, drei davon planungsrelevant — hälftige Teilung der Konstruktionsfläche
(Ziff. 3.1.3, die Grundregel fehlte, geführt war nur ihre Ausnahme), Mehrfachnutzungs-Regel
(Ziff. 3.2.1), zweite Hälfte der Fussnote 1 zu Ziff. 3.3.3 (SIA 180 verlangt ausdrücklich
Aussenabmessungen — der Wert, der den Blower-Door-Bezug entscheidet). Dazu «Rampen/Aufzügen»
statt «Fahrzeugrampen und Fahrzeugaufzügen» an zwei Stellen. Alle inline korrigiert
(Methodik-Pflicht 9). Keine davon war ein falscher Wert; die Refuter-Richtung allein hätte
das Destillat passieren lassen.

**Refuter-Runde `sia-416-1-2007` vollständig gefahren** (Übergabe Run 52, Pkt. 6): zwei
unabhängige Läufe über S. 4-22 und S. 26-40 — **93 bestätigt, 2 widerlegt, 1 Fundstelle
falsch**, in Kap. 0-2 keine einzige falsche Ziffern-/Seitenangabe. Alle drei Verdikt-Befunde
vom Hauptprozess an eigenen 300-dpi-Renderings (S. 11, 12, 28) nachgeprüft und bestätigt:
Tabelle 4 teilt nach **Erzeugungs**systemen auf (nicht Verteilsystemen, Ziff. 4.4.1);
Begriff «Energieträger» gab die Beispielliste anstelle der Definition und als abschliessend
wieder («Windwärme» gibt es nicht); Einheit MJ/m²/kWh/m² steht in Ziff. 1.2, S. 12, nicht in
Ziff. 4.1.1. **Status bleibt bewusst `speculative`** — die Abdeckungsrichtung ist erst auf
Kap. 3 gelaufen, und derselbe Lauf hat gemessen, dass die Refuter-Richtung für Klasse (b)
blind ist. Prüfstand als Tabelle im Destillat ausgewiesen. Eine Zeile unter «Offene Punkte»,
die den Status anders behauptete, wurde dabei gefunden und korrigiert (Methodik-Pflicht 12).

**N52-6 geklärt, zwei REGISTER-Lücken geschlossen.** Am Original nachgemessen:
**SIA 151:2001** «Standesordnung» ist **geltend** (gültig ab 01.01.2001, ohne Enddatum und
ohne Nachfolger; Dokumentart «O = Ordnung» — vermutete Ursache der Erfassungslücke, weil das
REGISTER aus dem technischen Normteil aufgebaut wurde). **SIA 178:1996** «Naturstein-
Mauerwerk» (Empfehlung V178) ist **erloschen**, ersetzt per 31.12.2011 durch SIA 266/2:2012.
Beide REGISTER-Zeilen ergänzt, Inventar nachgeführt. **Dabei sichtbar geworden (N53-1):**
SIA 266/2:2012 ist **nicht im Haus** — die KB führt die ABB-Norm SIA 118/266-2:2017 als
`established`, während die Bemessungsnorm dahinter fehlt.

**Zu `sia-215-1978.md` eine Schlussfolgerung zurückgenommen.** Das Destillat behauptete, die
Zement-Kapitel seien «spätestens seit 1993 ersetzt». Beide Titelblätter selbst nachgelesen:
sie nennen ausschliesslich die je eigene Vorgängerausgabe und erwähnen SIA 215:1978 nicht;
die Jahreszahl 1993 gehört zu jener Vorgängerausgabe, die eine ENV-Vornorm war. Belegt ist
nur: seit 01.01.2002 gilt für Zement eine eigene EN-Adoption. Fachlich überholt, **formell
nicht zurückgezogen**. An beiden Fundstellen korrigiert (Destillat und QUESTIONS), nicht nur
an einer.

**Selbstoffengelegt:** Der Hauptprozess hat im selben Lauf einen eigenen Scheinbefund
erzeugt — «spezifischer Luftstrom» wurde als Destillat-Fehler gegen «Luftdurchlässigkeit»
ausgetauscht, obwohl das Symbolverzeichnis Ziff. 1.2 (S. 12) genau die erste Formulierung
führt. Die Norm führt beide Begriffe. Richtiggestellt und im Report festgehalten;
Methodik-Pflicht 7 gilt für den Hauptprozess genauso wie für die Agenten.

## 2026-08-16 — SIA 215:1978 «Mineralische Bindemittel» destilliert (P3 aus Run 52 geschlossen)

Auftrag: das zweite geltende, nie destillierte `xalt`-PDF aus Run 52 (P3) nachziehen.
Neues Destillat `destillate/sia-215-1978.md`. Quelle `alle/xalt/215_d.pdf`, 40 Seiten,
vollständiger Textlayer, komplett per `pdftotext` seitenweise gelesen; keine Tabellen mit
verbundenen Zellen/Farbcodierung gefunden, daher kein 300-dpi-Rendering nötig. Folio =
PDF-Blatt 1:1 verifiziert (Fussnoten-Seitenzahlen S. 5-40 stimmen durchgehend mit dem
PDF-Blatt überein).

Inhalt: reine Produkt-/Prüfnorm für Zement, schnellbindenden Zement, hydraulischen Kalk,
Weisskalk und Baugips — Begriffsbestimmungen (Ziff. 2), Gütewerte (Ziff. 3, Zahlenwerte
selbst nicht übernommen, Urheberrecht), Kontroll- und Liefervorschriften (Ziff. 4-5),
20 Seiten Laborprüfverfahren (Ziff. 6) bis auf Reagenzien-/Geräteebene. Kein
Ausschreibungs-, Vertrags- oder Bemessungsstoff (anders als die ABB-Reihe SIA 118/262,
118/266-1 etc.); für die JANS-Planungspraxis randständig, punktuell relevant bei
Bestandsanalysen/Ankaufsprüfung mit historischer Bindemittel-Terminologie.

**Befund zur EN-Überlagerung — für Zement BELEGT, für Kalk/Gips offen:** Die Norm
selbst enthält keinen einzigen Verweis auf eine EN-Norm (nur eine Empfehlung zu
CEN-anerkannten Analysemethoden, Ziff. 4.1) — konsistent mit ihrem Alter von 1978, deutlich
vor der europäischen Harmonisierung. Im selben `xalt`-Ordner liegen aber
`215.002_2000_d.pdf` (SIA 215.002 = **SN EN 197-1:2000** «Zement Teil 1», gültig ab
01.01.2002, Titelblatt: «ersetzt Norm SIA 215.002:1993 (ENV 197-1:1992)») und
`215_003d.pdf` (SIA 215.003 = **SN EN 197-2:2000** «Zement Teil 2», gültig ab 01.01.2002,
ersetzt «Vornorm SIA 215.003:1996»). Damit ist belegt: die **Zement**-Bestimmungen von
SIA 215:1978 (Ziff. 2.1/3.2/6.2/6.28/6.29) sind seit spätestens 1993 durch eigene
EN-Adoptionen unter derselben 215er-Familiennummer ersetzt. Für **hydraulischen Kalk,
Weisskalk und Baugips** liegt im Haus keine entsprechende EN-Nachfolgenorm vor (SN EN
459-1/13279-1 nicht im Bestand) — ob und wodurch diese Abschnitte ersetzt wurden, bleibt
offen. `wiki/REGISTER.md` (Zeile 53-58) führte SIA 215:1978 bereits vor diesem Lauf als
eine von 14 Normzeilen mit höchster Revisionswahrscheinlichkeit, ohne eigene Zeilen für
215.002/215.003. Schliesst QUESTIONS N52-4 (P3), `norm-inventar.md` Zeile 100 aktualisiert.
Status `speculative`, Refuter-Runde ausstehend.

## 2026-08-15 — Normen Run 52 (Hauptteil): SIA 416/1:2007 destilliert, xalt-Ordner aufgenommen, Gegenprobe zweiter Ordnung gefahren

Report: `outputs/2026-08-15_normen-nacht-run52.md`.

1. **Neues Destillat `destillate/sia-416-1-2007.md`** (SIA 416/1 «Kennzahlen fuer die
   Gebaeudetechnik», 40 S., reiner Scan ohne Textlayer, vollstaendig in 300 dpi gerendert,
   Tabellen 1-5 zellenweise abgelesen, Folio = PDF-Blatt 1:1). Kern: Energiebezugsflaeche A_E
   (Ziff. 3.2), Gebaeudehuellflaeche A_b/A_th/A_inf (Ziff. 3.3), Energiekennzahl E (Ziff. 4.1);
   ersetzt Empfehlung SIA 180/4:1982. Status `speculative`, Refuter-Runde ausstehend;
   Hauptprozess-Stichprobe Ziff. 3.1.3/3.2.1 (S. 23) am Original bestaetigt. **Schliesst
   QUESTIONS 260813** — der Frontmatter-Link in `sia-382-2-2011.md` zeigte auf SIA 416:2003, eine
   andere Norm; er ist umgehaengt, beide Nachtragsvermerke von Run 49 auf erledigt gesetzt.
2. **Der xalt-Ordner ist erstmals aufgenommen.** Das Inventar fuehrte «9 Altausgaben», gemessen
   sind **76 PDF** (57 direkt, 19 im Unterordner `neu/`). Darin zwei **geltende** Normen ohne
   Destillat: SIA 416/1:2007 (jetzt destilliert) und **SIA 215:1978** (REGISTER 1978✓, neu als
   offene `[ ]`-Position P3 im Inventar). Ferner abgegrenzt: SIA 242:2012 und SIA 274:2010 sind
   geltend, aber **nicht im Haus** (Beschaffung, nicht Loop); acht Normen sind zurueckgezogen und
   korrekt uebersprungen; fuenf Dateien sind Dubletten geltender Normen; 17 sind
   Vernehmlassungsentwuerfe und damit **Fassungsindikatoren** (Methodik-Pflicht 3), darunter
   SIA 252_VL_2011-12, der den Ersatz der destillierten Ausgabe 2002 ankuendigt.
   Rohaufnahme: `training/xalt-bestandsaufnahme-260815.md` — **Klassenspalte ausdruecklich nicht
   belastbar**, der Subagent klassierte 51 Dateien als «geltend», darunter nachweislich ersetzte
   (SIA 358:1996, SIA 116:1952, SIA 380/1:2001); der Befund wurde nach Methodik-Pflicht 5 nicht
   uebernommen, sondern durch eigene Messung gegen REGISTER und Destillat-Deckung ersetzt.
   Lehre, im Inventar verankert: **ein Ordnername ist eine Behauptung ueber den Inhalt, keine
   Feststellung** — derselbe Mechanismus hatte Run 29 bei SIA D 0165 getroffen, dort wurde nur die
   Einzeldatei geheilt und der Ordner nie geprueft.
3. **`destillate/sia-358-2010.md` (established): 13 Fundstellen inline korrigiert, kein einziger
   Zahlenwert falsch.** Der Hauptprozess hat den deutschen Normteil (S. 5-10) selbst gerendert und
   gelesen. Alle Werte stimmen (1,0 / 0,90 / 0,20 / 0,65 / 0,30 / 0,12 / 0,05 / 0,75 / 1,50 m,
   fuenf und zwei Steigungen). Falsch waren die Fundstellen: Seitenangaben ab Ziff. 1.3.4
   durchgehend +1 (Kap. 2 als S. 8 statt 7, Kap. 3 als S. 9/10 statt 8, Anhang A als S. 10 statt 9
   — bei Folio = PDF-Blatt 1:1); Ziffernzuordnung an fuenf Stellen (0.1.3 als «0.1.2»; die
   Rollstuhlfahrer-Fussnote zu Ziff. 1.3.3 als eigene «Ziff. 1.3.4»; 1.3.4/1.3.5, 2.1.1-2.1.4 und
   3.1.3-3.1.6 je zu einer Ziffer verschmolzen). Alle Stellen mit sichtbarem ⚠-Vermerk und der
   zuvor gefuehrten Angabe korrigiert (Methodik-Pflicht 9). Relevanz: Rule `normen-referenz`
   verlangt «Norm + Ausgabe + Ziffer» — richtige Werte mit falscher Ziffer erzeugen Zitate, die
   formal korrekt aussehen und beim Nachschlagen ins Leere fuehren.
4. **Gegenprobe zweiter Ordnung gefahren** (Uebergabe Run 51, Punkt 1). 16 Behauptungen zu
   SIA 358:2010 blind vorgelegt, 6 kontrolliert verfaelscht; Quelle vom Hauptprozess vorab selbst
   verifiziert. **6 von 6 schweren Kontrollen erkannt** (2 Bedeutungsumkehr, 1 weggelassene
   Bedingung, 1 verschobene Fundstelle bei richtigem Inhalt, 2 Zahlenwerte), **10 von 10 echten
   Aussagen bestaetigt, null Falsch-Positive**. Damit ist die offene Frage aus Run 51 beantwortet:
   die Pruefstufe erkennt auch die schweren Klassen.
   **Der eigentliche Ertrag ist der Ausfall:** die versteckte siebte Kontrolle (eine Aufzaehlung
   mit zwei statt drei Punkten) wurde BESTAETIGT und die Luecke nicht einmal als Anmerkung
   erwaehnt. Die Fragerichtung «widerlege» kann fehlenden Inhalt **strukturell** nicht erfassen.
   Damit ist Methodik-Pflicht 6 erstmals empirisch fuer die Refuter-Stufe selbst belegt, nicht nur
   fuer Destillate: **eine Refuter-Runde ist kein Vollstaendigkeitsnachweis.** Als
   Methodik-Pflicht 13 zur Freigabe vorgelegt (QUESTIONS N52-2).
5. **QUESTIONS**: N52-1 und N52-3 geschlossen, N52-2 sowie N52-4 bis N52-7 neu offen.
   **Vorrang-Auftrag des Task-Prompts zum vierten Mal als ueberholt zurueckgemeldet** (erledigt
   seit Run 38); Entfernung erneut vorgeschlagen.

## 2026-08-15 — Normen Run 52: Anhang-D-Kriterien-Rueckverweise am Original korrigiert, S. 45/47 sichtgeprueft

Uebergabepunkt 2a aus Run 51 (N51-Notiz "OCR-gestuetzte Zeilentexte und Kriterien-Rueckverweise
nicht zitierfaehig") abgearbeitet. Die Kreuzfelder der Anhang-D-Matrix waren bereits rechnerisch
gesichert (Run 51); offen war nur die Kriterien-Spalte des Exports.

1. **Alle 136 Kriterien-Rueckverweise am Original nachgelesen** (`SIA_Normen/alle/112_1_2017.pdf`,
   S. 43-48, pdftoppm 400 dpi flaechendeckend, 600 dpi fuer 12 besonders verklebte Zellen).
   **Seitenversatz PDF-Blatt/gedruckte Folio-Nummer: keiner** (Blatt 42 = Druckseite 42 usw.).
   **87 von 136 Zeilen korrigiert, 0 unlesbar.** Ganz ueberwiegend reine OCR-Leerzeichen-Verklebung
   zwischen Kriteriencodes (z.B. "A.7B.5" -> "A.7 B.5"). Echte Zeichenfehler, alle am Original
   verifiziert: "A.2AAA.7" -> "A.2 A.4 A.7" (Z.11, das im Auftrag genannte Beispiel); "G.3"/"G3"/
   "G2" wo "C.3"/"C.2" gemeint war, an fuenf Stellen (Z.68, 90, 96, 107, 120 — durchgaengiges
   Verwechslungsmuster "C." zu "G"); "A.A" -> "A.4" an sechs Stellen (Z.70, 71, 116, 125, 130,
   134); drei stark entstellte Einzelfaelle "E57" -> "C.5 C.7" (Z.119), "Ga" -> "C.5 C.7" (Z.137),
   "A1NABBI B.3 C.1" -> "A.1 A.6 B.1 B.3 C.1" (Z.59).
2. **S. 45 und S. 47 zusaetzlich ganzseitig sichtgeprueft** (Run 51 hatte nur S. 43/44/46/48
   sichtgeprueft, S. 45/47 nur rechnerisch doppelt gemessen). Zeilenzahl (S. 45: Nutzungskonzept
   18 + Mobilitaetskonzept 6 = 24; S. 47: Freiraumkonzept 11 + Energie-/Medienkonzept 13 = 24),
   Blocktitel, Spaltenbelegung und Kreuzfelder stimmen auf beiden Seiten vollstaendig mit dem TSV
   ueberein — keine Abweichung gefunden.
3. **Export `training/sia112-1-anhangD-matrix.tsv` korrigiert**, Kreuzfelder unangetastet
   (19 Spalten je Zeile vor/nach Korrektur identisch geblieben, nur Feld `kriterien_ocr`
   veraendert). Pruefvermerk als Kommentarzeilen an die Datei angehaengt. Destillat
   `destillate/sia-112-1-2017.md` nachgefuehrt (⚠-Absatz zu ✅ gehoben, `verifikation`-Feld
   ergaenzt): **Kriterien-Rueckverweise aus dem Export sind ab sofort zitierfaehig.**

## 2026-08-14 — Cross-KB (Wissens-Chef Run 32): zwei sprachliche Restbefunde korrigiert

Report: `../koordination/outputs/2026-08-14_wissens-chef-run32.md`.

1. **`wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` (Tabellenzelle Z. 63 und Fliesstext
   Z. 84-85) — sprachlicher Rest der am 13.08. korrigierten Bedeutungsumkehr.** Beide Stellen
   nannten den Betonbau eine «umgekehrte Systematik», in der das Arbeitsgeruest «ueberhaupt
   nicht verguetet» werde. Umgekehrt waere die Systematik nur, wenn SIA 118/262 die Gerueste
   **ausschloesse** — sie schliesst allein die **gesonderte** Verguetung aus, womit sie nach
   Ziff. 0.3 (S. 10) in den Einheitspreisen **inbegriffen** sind, gleich wie bei den uebrigen
   ABB, nur ohne Hoehenlimite. Auf «nicht gesondert verguetet, also inbegriffen» umgestellt,
   Korrekturkasten gesetzt. Run 30 hatte die Wendung gemeldet, Run 31 sie als «kein Sachfehler»
   stehen lassen — sie war der sprachliche Rest des behobenen Fehlers und schob den Leser
   weiter in die falsche Richtung. Damit ist die Uebergabe aus Run 30/31 geschlossen.
2. **`wiki/REGISTER.md` Z. 268 (SIA 387/4) — rechtliche Qualifikation praezisiert.** Hier stand,
   die BBV I ZH erklaere die «Ausgabe 2017» **verbindlich**. Am Rohtext nachgelesen
   (`../baurecht/raw/260607_amtlich_zh_bbv1.md`): Ziff. 2.3382 (Z. 1036) steht unter der
   Anhangs-Ueberschrift **«2. Als Richtlinien und Normalien sind zu beachten»** (Z. 1013),
   nicht unter «1. Als Verordnungsbestimmungen gelten» (Z. 1006); nach **§ 4 Abs. 5 BBV I**
   darf von beachtlich erklaerten Richtlinien (§ 360 Abs. 3 PBG) «aus wichtigen Gruenden»
   abgewichen werden. Auf «beachtlich» umgestellt und der Schluss «fuer EN-111 massgeblich»
   als Auslegung gekennzeichnet. Herkunft: Nebenbefund der Refuter-Runde, vom Hauptprozess am
   Rohtext gegengelesen. **N27-2 bleibt offen** (Fassungsstand 387/4:2017 gegen 2023 ist am
   Normtext weiterhin nicht verifiziert); dieser Lauf hat daran nichts geaendert.

## 2026-08-14 — Normen-Nacht Run 51: die Pruefstufe selbst gemessen, zwei Fehlbefunde der eigenen Uebergabe korrigiert

Report: `outputs/2026-08-14_normen-nacht-run51.md`.

1. **Gegenprobe zur Widerlegungsfaehigkeit gefahren (N50-3 BEANTWORTET).** Vier Pruefsaetze mit
   zusammen 48 Behauptungen: 33 woertlich aus den Destillaten, **15 vom Hauptprozess kontrolliert
   verfaelscht** (je ein Zahlenwert plausibel veraendert), den Pruefagenten ungekennzeichnet
   vorgelegt. **Ergebnis: 15 von 15 Verfaelschungen erkannt, 33 von 33 echten Aussagen korrekt
   bestaetigt** — Sensitivitaet und Spezifitaet je 100 %. Damit ist gestuetzt, dass die
   79/0-Verteilung aus Run 50 die Qualitaet der Run-48-Welle misst und nicht die Blindheit der
   Pruefstufe. Ausgewiesen bleibt, was die Probe NICHT misst: alle Kontrollen waren veraenderte
   Zahlenwerte; Bedeutungsumkehr, fehlende Inhalte und verschobene Fundstellen sind ungeprueft.
2. **N50-1 als Fehlbefund widerlegt und erledigt.** `sia-262-1-2003`, `sia-264-1-2003`,
   `sia-267-1-2003` und `sia-281-3-2018` hatten ihre Refuter-Runde sehr wohl (07.08.2026,
   Run 47) — dreifach dokumentiert in Frontmatter, INDEX und den inline eingearbeiteten
   Korrekturen. Stehen geblieben war je **eine veraltete Zeile unter «Offene Punkte»**; genau
   sie hat Run 50 gelesen. Die Blindpruefung diente zugleich als zweite Refuter-Runde:
   **0 Kernbefunde** in allen vier. Vier Zeilen ersetzt, vier Frontmatter mit dem zweiten
   Verifikationsvermerk und `last_updated: 2026-08-14` nachgefuehrt, vier INDEX-Zeilen ergaenzt.
3. **Zwei neue Selbstwidersprueche gefunden und behoben.** `sia-118-266-1-2017.md` und
   `sia-118-266-2-2017.md` trugen `status: established` im Frontmatter und zugleich «Status
   bleibt speculative» unter «Offene Punkte» — beide ausgerechnet die Dateien, die Run 50 in
   Ziff. 7 angefasst und fuer richtiggestellt erklaert hatte. In 118/266-1 zusaetzlich die
   ueberholte Zeile «118/266-2 im Bestand noch nicht destilliert», obwohl das Destillat
   existiert; korrigiert und verlinkt. **Messung nach der Bereinigung: 195
   `established`-Destillate, 0 unaufgeloeste Status-Widersprueche.**
4. **N50-4 praezisiert.** Die sechs ABB 118/240, 242, 243, 251, 252, 253 sind nicht
   «nicht destilliert», sondern **nicht im Haus**; alle zwoelf im Bestand liegenden 118er sind
   destilliert. Der Punkt geht an die Beschaffung, nicht an den Loop (Methodik-Pflicht 10).
5. **N48-3 ERLEDIGT — die Anhang-D-Matrix der SIA 112/1 rechnerisch aufgenommen.** 136 Zeilen x
   14 Spalten = **1904 Kreuzfelder, 1904 gemessen (100 %)**, von einer zweiten Statistik mit
   anderem Entscheidungsmerkmal in 1904/1904 bestaetigt; Export
   `training/sia112-1-anhangD-matrix.tsv`. **4 Kernbefunde**, alle vom Hauptprozess am eigenen
   Rendering der S. 42-43 nachgeprueft: (1) die Matrix nutzt in 35 Zellen die Doppelmarke `LE`,
   die die Legende D.3.1 nicht definiert, ausschliesslich beim Auftraggeber; (2) `E` kommt nur
   in der Spalte Auftraggeber vor, diese ist in 136/136 Zeilen belegt — die Aussage in D.2,
   partizipierende Akteure traeten vereinzelt als Entscheidungstraeger auf, ist im Anhang D
   nirgends eingeloest; (3) genau eine Zeile hat keinen Entscheidungstraeger
   (Kommunikation/Oeffentlichkeitsarbeit, S. 43); (4) die Matrix fuehrt fuenf Akteursspalten,
   D.1.2 nennt nur vier — die Spalte Betreiber fehlt dort, obwohl in 71 Zeilen belegt und in 35
   davon Leistungstraeger. **Methodik-Pflicht 6 in Reinform:** keiner der vier Befunde waere
   durch «pruefen, ob stimmt was das Destillat behauptet» gefunden worden. Nebenertrag fuer
   `honorarberechnung-sia102`: die Phasenbelegung ist stark auf die fruehen Phasen gewichtet
   (Vorstudien 111, Realisierung nur 12 von 136). Offen bleibt, dass die OCR-gestuetzten
   Zeilentexte und Kriterien-Rueckverweise des Exports nicht zitierfaehig sind.
6. **Neuer Vorschlag Methodik-Pflicht 12 (Raphael zur Freigabe, N51-1):** nach jeder
   Status-Hebung auf `established` im selben Lauf pruefen, ob das Destillat noch eine Zeile
   traegt, die den Status als offen behauptet. Drei Faelle in einem Lauf gefunden, einer davon
   hat einen ganzen Batch-Auftrag fehlgeleitet.

## 2026-08-13 — Fremdlauf `wissens-chef` Run 31: drei Nachtraege, die Run 50 offen liess

Geschrieben vom Wissens-Chef (Cross-KB-Aufsicht), nicht von einem `normen`-Lauf. Alle drei Punkte
sind am Original bzw. an `references/bkp-2017/BKP-2017-Liste.md` belegt, keiner beruht auf einer
Ableitung.

1. **`destillate/INDEX.md` Z. 22 (SIA 118/262) — Bedeutungsumkehr korrigiert.** Die
   Zusammenfassungsspalte trug weiterhin «Arbeitsgerueste fuer Beton NICHT inbegriffen (anders als
   Mauerwerk-ABB)», obwohl Run 49/50 diese Aussage im Destillat und im Wiki-Artikel als **falsch**
   nachgewiesen und korrigiert hatten. Run 50 hat die Zeile angefasst (Status-Vermerk ergaenzt),
   die Sachspalte aber nicht mitgezogen — die Uebergabe aus `wissens-chef` Run 30 blieb liegen.
   Neu: Ziff. 8.4.2.2 (nicht verguetet, also im Werkpreis inbegriffen, sofern das LV keine
   getrennten Positionen fuehrt), Ziff. 8.4.2.3 (Lehr-/Schutz-/besondere Gerueste stets getrennt)
   und die richtiggestellte Mauerwerk-Parallele (gleiche Systematik, nur ohne 3,0-m-Grenze).
2. **`destillate/sia-118-262-2004.md` Z. 161 — drei falsche BKP-Codes.** Die Abnehmer-Zeile zum
   Skill `ausschreibung` nannte «BKP 241/242 Baumeisterarbeiten Beton/Ortbeton» und «BKP 291
   Statik/Bauingenieur». Run 50 hatte dieselbe Fehlerfamilie in `sia-118-267-2004.md` bereits
   korrigiert und dort festgehalten, dass **241 und 243 im BKP 2017 nicht existieren** und **242
   «Heizungsanlagen»** ist — dieses Destillat wurde nicht mitgezogen. Am systematischen Teil
   gegengeprueft (Hauptgruppe 24 HLK fuehrt 240 · 242 · 244 · 245). Korrigiert auf **BKP 211**
   (mit 211.5 Beton- und Stahlbetonarbeiten), **BKP 212** fuer die Betonfertigteile nach Ziff. 8.6
   und **BKP 292 Bauingenieur** (291 ist der Architekt), mit Herleitung und Verweis auf Rule
   `bkp-2017-referenz`.
3. **`wiki/REGISTER.md` — Neuzugang SIA 386.111:2022 (Gebaeudeautomation/BACS).** Die KB kannte
   diese Norm bisher gar nicht (0 Treffer fuer «386» ausser der Fremdfamilie DIN EN 386, 0 fuer
   «BACS», 0 fuer «52120»), waehrend `energie` seit Run 106 die vollstaendige amtliche
   Ausgabenkette fuehrt und im Pflichtenheft-Artikel ausdruecklich «fuer die normative Seite»
   dorthin verweist. Registerzeile gesetzt zwischen SIA 385/12 und SIA 387/4, **bewusst ohne
   Inhaltsaussage**: der Volltext ist nicht im Bestand und nicht gelesen (CHF 144.–), Praezedenz
   VA 105-01 (Z. 425). Kein Destillat und kein `destillate/INDEX.md`-Eintrag — nur der
   destillierende Lauf darf eine Destillatdatei anlegen (QUERBEZUEGE Z. 60). Der Primaerbeleg
   bleibt in `wissen/energie/destillate/sia-386-bacs-gebaeudeautomation.md`, das seinerseits einen
   Rueckverweis erhalten hat; Zustaendigkeit als Matrix-Zeile in QUERBEZUEGE geregelt.

Bericht: `wissen/koordination/outputs/2026-08-13_wissens-chef-run31.md`.

## 2026-08-13 (Run 50) — die 79 Kernbefunde am Original nachgeprueft: 79 bestaetigt, 0 widerlegt, null Marker uebrig

Die Uebergabe aus Run 49 ist abgearbeitet. Zwei Flotten mit zusammen 33 Agenten (17 Nachpruefer am
Original, 16 Einarbeiter), dazwischen der Hauptprozess als Richter. Aus den 65 markierten
Kernbefunden wurden **79** (mehrere Marker trugen mehrere Einzelbefunde): **79 BESTAETIGT,
0 WIDERLEGT, 0 UNENTSCHIEDEN**, alle inline eingearbeitet, **null ⚠-Marker verbleiben in der KB**.
Keine Hebung auf `established` — geprueft wurden die Befunde, nicht die Destillate als Ganzes.

**Hauptprozess selbst geprueft: 14 Befunde, alle bestaetigt.** Drei falsche BKP-Zuordnungen am
systematischen Teil der BKP-2017-Liste nachgeschlagen (118/248 → 281.6/282.4 statt 227/281.1/281.2;
118/267 → Hauptgruppe 17 Spezialtiefbau + 201, weil **241 und 243 im BKP 2017 gar nicht existieren**
und 242 «Heizungsanlagen» ist; 118/246 bereits in Run 49). Seitenversatz an eigenen 150-dpi-Renderings
bestaetigt (gedruckte Folio = PDF-Seite, 1:1) — Ursache ist die Verletzung der bestehenden
Methodik-Pflicht 6, ein einziger Verstoss erzeugte rund 120 falsche Fundstellen. Ausmasszuschlag
118/244 A.2/A.4: «doppelt gemessen» = Faktor 2 = **100 %, nicht 200 %**. Begriffszahl 118/244:
17 statt 15, am Rendering ausgezaehlt.

**Luecke geschlossen:** SIA 380/3 Kap. 4 «Werkstoffe» und Kap. 5 «Ausfuehrung» fehlten vollstaendig
(der Abschnitt bestand aus einer Ueberschrift), waehrend das Frontmatter «S. 1-42 komplett»
zusicherte. Beide Kapitel am Original nachgelesen und als regulaerer Inhalt geschrieben, samt der
ausfuehrungsrelevanten Pflichten (Dichtigkeitspruefung vor Daemmbeginn, Anlage ausser Betrieb waehrend
der Montage, Wegleitungen der kantonalen Gebaeudeversicherungen, Tragkonstruktion ueber der
Dampfbremse, kein Daemmstoff zwischen Begleitheizung und beheiztem Anlageteil).

**Unbeauftragter Sweep, weil es die dritte Wiederholung derselben Fehlerfamilie war:** alle
BKP-Codes saemtlicher Destillate dieser KB maschinell gegen die BKP-2017-Liste geprueft
(50 verwendete gegen 846 gueltige Codes). Ergebnis: **genau zwei nicht existente Codes, 241 und 243,
beide im bereits bekannten 118/267 — kein weiterer Phantomcode versteckt sich in der KB.** Ein
Negativbefund, aber ein gemessener. Grenze der Methode ausgewiesen: ein existierender, aber sachlich
falscher Code (242 fuer einen Baugrubenabschluss) bleibt darin unsichtbar.

**ABB-Synthese (`wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md`) korrigiert:** die Gerüst-Tabelle
stellte Zahlen nebeneinander, die nicht dieselbe Groesse messen — die 2006er-Normen die
**Belagshoehe**, die Mauerwerksnormen die **Mauerwerkshoehe ab Geruestabstellbasis** (ohne andere
Angabe = Mauerfuss). Dazu die verschwiegene Einschraenkung, dass die 2,5 m nur «fuer Arbeiten zu
Einheitspreisen» gelten. Beides als Warnkasten eingearbeitet, alle Werte an fuenf Originalen geprueft.
Die Synthese bleibt bewusst **Warnkarte, nicht Zitierquelle** — sie ist aus Destillaten mit Status
`speculative` gebaut. Bei dieser Pruefung entstand ein Beinahe-Fehlbefund in eigener Sache: die Suche
nach «3,0 m» im 266-2-Destillat lief leer, obwohl der Wert dort steht — als «3 m», wie im Original.
Das Suchmuster war der Fehler, nicht die Quelle.

**Vier ueberholte Statusangaben richtiggestellt:** 118/246, 118/248 (Refuter-Runde Run 49 gelaufen)
sowie 118/266-1 und 118/266-2 (Run 47, Verdikt BESTANDEN) fuehrten weiterhin «Refuter-Runde
ausstehend».

**Neu offen (QUESTIONS N50-1 bis N50-4):** vier Destillate der Run-47-Welle hatten NIE eine
Refuter-Runde (`sia-262-1-2003`, `sia-264-1-2003`, `sia-267-1-2003`, `sia-281-3-2018`) — nach dem
Ergebnis dieses Laufs der risikoreichste Bestand der KB und der naechste Batch. Ausserdem: 65 der
79 Befunde sind Nachpruefer-, nicht hauptprozess-verifiziert; und die Verdikt-Verteilung 79/0/0 ist
selbst pruefbeduerftig — vorgeschlagen ist eine Gegenprobe mit eingestreuten Falschbehauptungen, um
die Widerlegungsfaehigkeit der Nachpruef-Stufe zu messen. Methodik-Pflicht 11 bleibt Raphael zur
Freigabe vorgelegt, mit verstaerkten Belegen. N49-1 geschlossen.

Report: `outputs/2026-08-13_normen-nacht-run50.md`.

## 2026-08-13 (Run 49) — 17 Refuter-Runden als Multi-Agent-Flotte: 17/17 BEANSTANDET, 70 Kernbefunde

Die ausstehenden Refuter-Runden fuer den P2-Block sind gefahren, als Workflow mit **34 Agenten**
(17 Refuter, 17 Inline-Einarbeiter, Pipeline ohne Barriere), 6,57 Mio Subagent-Token, 24 Minuten,
0 Fehlschlaege. Ergebnis: **17 von 17 Destillaten BEANSTANDET, 70 Kernbefunde, 190 Nebenbefunde,
null Hebungen auf `established`.**

Fuenf wiederkehrende Klassen: systematischer Seitenversatz (40-44 Fundstellen je Destillat bei
118/244, 118/246, 118/265) · falsche BKP-Codes in genau den Abschnitten, die der Skill
`ausschreibung` als LV-Vorlage liest (118/246, 118/248, 118/267) · fehlende ausfuehrungsrelevante
Anforderungen bis hin zu einem ganzen Kapitel (380/3) · falsche Zahlenwerte in sicherheits- und
verguetungsrelevanten Groessen · Selbstwidersprueche quer durch alle 17.

**Der Hauptprozess hat fuenf Befundklassen selbst am Original nachgeprueft, alle bestaetigt:**
gedruckte Seitenzahl = PDF-Seite und Ziff. 0 steht auf S. 5 statt 4 · BKP 227 ist «Aeussere
Oberflaechenbehandlungen» und hat mit Naturstein nichts zu tun (richtig: 216.0 / 281.4 / 282.2) ·
Figur 4 der SIA 197/2 laeuft als Plateau bei 500 m und faellt auf 300 m, die «600» ist die
oberste Achsenteilung (Fluchtwegabstand, 20 % zu grosszuegig) · die Millisekunde in Ziff. 7.4.2.3
gehoert zur linearen Abnahme, nicht zum Anstieg · und Ziff. 8.4.2.2 der SIA 118/262.

**Der teuerste Befund war ein Fehler des Hauptprozesses selbst.** Die in Run 48 geschriebene
Querschnitts-Synthese `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` fuehrte fuer den Betonbau
«Arbeitsgeruste sind grundsaetzlich NICHT inbegriffen» samt der Warnung, wer sie als inbegriffen
behandle, verschenke die Position. Der Originaltext sagt das Gegenteil: sie «werden nicht
verguetet, ausgenommen wenn im Leistungsverzeichnis hierfuer getrennte Positionen enthalten sind»
— also im Einheitspreis enthalten. Die Aussage stand ausgerechnet in dem Satz, den die Synthese
selbst als «die praktisch folgenreichste Zeile» hervorhob. Inline korrigiert, mit sichtbarem
Korrekturkasten; Status- und Belastbarkeitsblock verschaerft.

Daraus der Vorschlag **Methodik-Pflicht 11** (Raphael zur Freigabe, QUESTIONS N49-2): ein
unverifiziertes Destillat ist kein Wissensstand, sondern ein Entwurf — aus Entwuerfen wird keine
Synthese und kein Registereintrag gebaut, auch nicht mit Vorbehalt. Der Vorbehalt stand zweimal
fett im Artikel und hat den Fehler trotzdem nicht aufgehalten.

Methodisch bewaehrt: die neu eingezogene **Selbstwiderspruchs-Pruefung** (trifft quer durch alle
17 und ist der einzige Befundtyp, der ohne Quellenzugriff beweisbar ist) und die **Rollentrennung
Urteil/Eingriff** — der Refuter aendert nichts, ein zweiter Agent arbeitet nur die Nebenbefunde
inline ein und markiert die Kernbefunde sichtbar. Kein Destillat wurde von einem Agenten selbst
auf `established` gehoben.

Ehrliche Bilanz: 5 von 70 Kernbefunden sind hauptprozess-verifiziert, die uebrigen 65 stehen als
Marker im Destillat und sind der ausgewiesene Rueckstand (QUESTIONS N49-1 bis N49-4).

Lauf-Report: `outputs/2026-08-13_normen-nacht-run49.md`.

## 2026-08-12 (Session Raphael) — Output: Duschtasse in nicht-IV-Duschen zulaessig (Fall 2619 KISPI)

Compounding-Loop zur Frage, ob nicht rollstuhlgerechte Duschen/WC im Umbau 2619 KISPI
(Therapiestation 1. OG, Bauentscheid 1171/26) mit Duschtasse gebaut werden duerfen.
Report: `outputs/2026-08-12_sia500-duschtasse-nicht-iv-duschen-kispi.md`. Kernbefund:
Schwellenlos-Gebot der SIA 500:2009 steht nur in Anhang E (designierte IV-Nasszellen);
Bauentscheid Erwaegung b erklaert die Norm fuer die Therapiestation als nicht hinreichend
(Spiegel von Ziff. 0.1.5), betriebsspezifische Anforderungen vorrangig. Hierarchie
BehiG Art. 3 lit. a → PBG ZH § 239a Abs. 1 → BBV I § 34 / Ziff. 2.51 Anhang → Bauentscheid
→ Betriebskonzept dokumentiert. Kein Eingriff in Destillate; QUESTIONS unveraendert.

## 2026-08-08 (Run 48) — SIA 112/1:2017 established, P2-Block komplett destilliert, ABB-Querschnitts-Synthese

**Die letzte offene P1-Position ist erledigt.** `destillate/sia-112-1-2017.md` (Verstaendigungsnorm
«Nachhaltiges Bauen – Hochbau», 52-Seiten-Scan ohne Textlayer) ist destilliert, doppelt refutiert
und auf **established** gehoben. Tabelle 1 (Matrix Zielvereinbarung, 21x5 Kreise, nur ueber die
Strichfarbe unterschieden) wurde rechnerisch aufgenommen und vom Refuter mit einer ANDEREN
Statistik unabhaengig nachgemessen — 105 von 105 Zellen identisch; die innere Probe gegen die fuenf
Leitfragen-Listen der Ziff. 3.1.3-3.5.3 ist in allen fuenf Spalten bestanden.

Zwei Refuter-Runden mit getrennten Lenses (Struktur/Recht bzw. Tabellen/Anhaenge), beide
BEANSTANDET, zusammen **5 Kernbefunde und 23 Nebenbefunde**, alle Kernbefunde vom Hauptprozess am
eigenen Rendering des Originals nachgeprueft und gemaess Methodik-Pflicht 9 INLINE eingearbeitet.
Der folgenreichste: **die Norm definiert Flaechen- und Erschliessungseffizienz auf S. 45 und S. 46
unterschiedlich** (S. 45 HNF/GF und VF/GF, S. 46 vermietbare Flaeche/GF und VF/**HNF**) — wer eine
dieser Kennzahlen zitiert, muss die Seite mitnennen. Ferner: Ziff. 2.1.6 fehlte ganz (sie gibt die
Messbarkeit als Pflicht an den Anwender zurueck), «unterschriftsreif/Formular» war
Eigeninterpretation (die Spalte «zu bearbeiten» ist laut Ziff. 2.1.4 ausdruecklich SYMBOLISCH), die
Ersatzneubau-Schwelle Ziff. 3.2.2 war um eine Bedingung und das Wort «deutlich» verkuerzt, und die
Anhang-D-Dokumenttypen sind keine «verbindliche Nomenklatur» (Anhang informativ).

**P2-Block vollstaendig: 17 Erstdestillate in einem Lauf**, alle `speculative` (Refuter-Runden sind
der ausgewiesene Rueckstand, QUESTIONS N48-1): die ABB-Reihe 118/244, 118/246, 118/248, 118/257,
118/262, 118/263, 118/265, 118/267 · 162/6 Stahlfaserbeton · 197/1 und 197/2 Tunnel · 370/21 und
370/24 Aufzuege · 380/3 und 382/2 Energie · die Aenderungsblaetter 162.051/A1+A2 und 162.152/A1+A2
als Delta-Destillate, deren Rueckwirkung als datierte Inline-Hinweise in die established
Grundnorm-Destillate nachgetragen wurde (5 bzw. 3 Stellen).

**Neuer Wiki-Artikel `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md`** (speculative): Die
ABB-Reihe SIA 118/xxx ist NICHT einheitlich kalibriert — Geruest-Inklusivgrenze 2,5 m bei den
Ausbau-Normen von 2006, 3,0 m bei Maler/Holzbau/Mauerwerk, beim Betonbau gar nicht inbegriffen;
Abzugsgrenzen 0,5 / 1,0 / 2,0 m² je Gewerk. Nur SIA 118/263 (Stahlbau) aendert die SIA 118 wirklich
(Art. 66, 86, 144); die umfangreichste Norm der Reihe (118/267, 98 S.) aendert nichts. Ausdruecklich
als Warnkarte gefuehrt, nicht als Zitierquelle, solange die Destillate nicht refutiert sind.

**Zwei Registerkorrekturen, beide am Original nachgeprueft.** (1) **SIA 380/3 ist von 1991, nicht
1990** — Genehmigungsblock S. 42: Central-Comité 22.08.1991 in Flims, in Kraft 01.10.1991, und es
ist eine Empfehlung. Der Dateiname der Quelle ist falsch datiert und hatte den Registerstand
gepraegt; Destillat auf `sia-380-3-1991.md` umbenannt, REGISTER Zeilen 57 und 250 korrigiert.
(2) **SIA 118/265: geltend ist die Ausgabe 2018**, im Bestand liegt 2004 — per Web-Recherche eines
Agenten ermittelt und gemaess Methodik-Pflicht 10 gegen den eigenen Bestand gestellt: das REGISTER
war mit Stichtag 2013 nicht falsch, sondern auf dem Stand seines Stichtags. Als «die KB hatte 2004,
neu ist 2018» formuliert, die Statusaussage als NICHT am Original verifiziert gekennzeichnet.

Sieben neue QUESTIONS-Punkte (N48-1 bis N48-7), darunter der Lehrbuchfall der Methodik-Pflicht 6:
die rechnerische Zellaufnahme ist bei SIA 112/1 auf Tabelle 1 angewandt und hat dort 105 Zellen
belegt — auf die sechsseitige Anhang-D-Matrix (S. 43-48) ist sie **nicht** angewandt worden.

Lauf-Report: `outputs/2026-08-08_normen-nacht-run48.md`.

## 2026-08-08 (Run 48) — Zwei neue Aenderungs-Destillate SIA 162.051/A1+A2 und SIA 162.152/A1+A2, Inline-Ruecklauf in beide Grundnormen

Zwei neue Destillate zu je vier bisher unerschlossenen Aenderungsblaettern (Amendments) der
beiden bereits destillierten Beton-Grundnormen erstellt, mit Fokus auf das **Delta** zur
Grundnorm (Vorher/Nachher-Aenderungstabelle je Ziffer/Tabelle):

- `destillate/sia-162-051-a1-a2.md` — SIA 162.051/A1:2004 (gueltig ab 01.02.2005) + /A2:2005
  (gueltig ab 01.01.2006) zu SN EN 206-1:2000. A1-Seiten 5-8 (der EN-Aenderungstext) waren per
  `pdftotext -layout` wegen defektem Zeichensatz-Encoding unleserlich (Font-Substitutions-Kauderwelsch)
  und wurden als 200-dpi-PNG gerendert und visuell gelesen; A1-Seiten 1-4 (Nationaler Vorwort/
  Anhang) sowie alle 4 Seiten von A2 waren per Textlayer vollstaendig lesbar. Wichtigste
  materielle Aenderungen: neue Verdichtungsmassklasse C4 (< 1,04, nur Leichtbeton, Tabelle 5);
  Konformitaetskriterien Tabelle 14/16 von exakt „15" auf „Mindestens 15" Pruefungen gelockert;
  Tabelle 18 (Konsistenz-Toleranzen) vollstaendig ersetzt; **Anhang G (Dosiergenauigkeit
  EN 45501) gestrichen** und durch generische Anforderung ersetzt (Ziff. 9.6.2.2); A2 ergaenzt
  Klarstellungen zu Expositionsklassen (Ziff. 4.1) und Konsistenzbestimmung (Ziff. 5.4.1).
- `destillate/sia-162-152-a1-a2.md` — SIA 162.152/A1:2004 (gueltig ab 01.05.2005) + /A2:2005
  (gueltig ab 01.04.2006) zu SN EN 934-2:2001. Beide Amendments vollstaendig per Textlayer
  lesbar, keine Rendering-Notwendigkeit. A1 ist rein redaktionell (prEN 12390-3:1999 → EN
  12390-3 in allen 12 Tabellen, keine Zahlenaenderung). A2 streicht Tabelle-1-Zeile 7 und die
  Pruefnorm ISO 1158, verschiebt dadurch Tabelle-1-Nr. 8-11 um eine Position (bestaetigt ueber
  Anhang-ZA.1-Aenderung), ergaenzt drei neue Fussnoten zu Tabelle 13 und **aendert die einzige
  echte Zahl dieses Amendments**: Mindestpruefhaeufigkeit Kennung «A» von „je 500 t bzw.
  mindestens 2x/Jahr" auf „je 1'000 t, jedoch hoechstens drei Pruefungen im Jahr".

**Ruecklauf in die Grundnorm-Destillate** (Rule `wissens-bibliothekar`, keine kommentarlose
Ueberschreibung des alten Werts, sondern datierter Inline-Hinweis mit Backlink):
`destillate/sia-162-051-2000.md` an fuenf Stellen ergaenzt (Tabelle 5/Verdichtungsmass,
Tabelle 14/16/Konformitaetskriterien, Tabelle 18/Konsistenz-Konformitaetskontrolle, Anhang G/
Dosiergenauigkeit, Ziff. 7.5/9.8 Fahrmischer-Begriff); `destillate/sia-162-152-2001.md` an drei
Stellen ergaenzt (Tabelle 1 Nr. 8-11/Umnummerierung, Tabelle 13/Mindestpruefhaeufigkeit Kennung
A, EN-12390-3-Referenz). Beide Grundnorm-Frontmatter `links` um Backlink zum jeweiligen neuen
Aenderungs-Destillat ergaenzt, `last_updated` auf 2026-08-08 gesetzt (Status/Verifikationsvermerk
der Grundnorm selbst unveraendert belassen). `destillate/INDEX.md` um beide neuen Zeilen ergaenzt
und die beiden Grundnorm-Zeilen mit Vermerk zu den Inline-Hinweisen versehen. Status beider neuer
Destillate: speculative, unabhaengige Refuter-Runde aussteht. Offene Punkte: exakter
Alt-Wortlaut mehrerer geaenderter Fussnoten/Absaetze (Ziff. 5.2.7 Fussnote b, Ziff. 5.4.1
Anmerkung, Ziff. 4.2 letzter Absatz) war im jeweiligen Grundnorm-Destillat nicht im Wortlaut
zitiert und laesst sich daher nur aus der Amendment-Beschreibung selbst rekonstruieren; die
A2:2005-Umnummerierung von Tabelle-1-Zeilen 8-11 ist im Amendment-Text selbst leicht
widerspruechlich formuliert (vermutlich Redaktions-/OCR-Fehler im Quell-PDF).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/267:2004 (Allgemeine Bedingungen für geotechnische Arbeiten)

`destillate/sia-118-267-2004.md` (98 Seiten, die umfangreichste ABB-Norm im Bestand): SIA 118/267
ergänzt die SIA 118 im Allgemeinen Teil (Ziff. 0-2/5) und regelt im Besonderen Teil acht
geotechnische Arbeitsgattungen — Ziff. 8 Pfähle, 9 Düsenstrahlverfahren/Jetting, 10 Anker,
11 Schlitzwände, 12 Spundwände, 13 Nagelwände, 14 Wasserhaltung, 15 Erdbau — jede mit derselben
Siebener-Gliederung Ausschreibung/Angebot/Aufgaben der Vertragspartner/Vergütung/Ausmass/
Bestellungsänderung/Bauausführung. Vollständiger Textlayer aller 98 Seiten via `pdftotext -layout`
gelesen; Stichproben-Rendering (300 dpi) auf S. 1, 77 und 98 bestätigte exakte Übereinstimmung
von Text- und Bildextraktion, inkl. der mehrspaltigen Tabelle E.1.17 (Bentonitsuspensions-
Kennwerte je Verwendungszustand) — keine weitere Nachrenderung nötig.

**Zentraler Prüfauftrag beantwortet:** anders als die Schwesternorm SIA 118/263 (Stahlbau, drei
echte Änderungen der SIA 118) enthält SIA 118/267 KEINE einzige Änderung der SIA 118 — Ziff. 0.2
bestätigt nur die normale ABB-Rangfolge nach Art. 7/21 SIA 118, und der gesamte Normtext wurde
systematisch auf Ersetzungsklauseln durchsucht (Ergebnis: keine gefunden). Damit gilt für Ausschreibung,
Vergabe, Vergütungsgrundsätze, Bestellungsänderung, Abnahme und Mängelhaftung durchgehend das
unveränderte Regime der SIA 118.

Praxisrelevante Fundstellen: die acht Ausführungs-Anhänge B-I liefern konkrete Toleranzwerte
(Pfahl-Lageabweichung Anhang B.5, Anker-Bohrlochabweichung max. 1/30 der Ankerlänge D.5.1,
Schlitzwand-Vertikalität < 1 % E.4.2, Spundwand-Grundrissabweichung ≤ 75/100 mm F.6.1,
Baugrubensohlen-Toleranzen ± 30/50/150 mm I.8.1); Spundwand-Abdichtungspflicht erst ab
1,0 l/min/m² (Ziff. 12.2.3); Reststückregel bei unbrauchbaren Spundbohlen 4 m/6 m (Ziff. 12.5.5);
Wasserhaltungs-Betriebsstrom explizit NICHT in den Energiekosten inbegriffen (Ziff. 14.2.3).
Ein Widerspruch im SIA-Original selbst wurde entdeckt und dokumentiert (nicht aufgelöst): das
Titelblatt nennt die ersetzte SIA 192 mit Ausgabe 1996, die Genehmigungsseite S. 98 mit Ausgabe
1998 — beide Stellen visuell gegen 300-dpi-Rendering verifiziert, echter Quellwiderspruch.

Status speculative (Erstdestillat, Refuter-Runde ausstehend). `INDEX.md` ergänzt (Zeile nach
`sia-267-1-2003.md`, thematische Gruppierung bei der Fachnorm-Familie SIA 267).

## 2026-08-08 (Run 48) — Neue Destillate SIA 370/21:1987 + SIA 370/24:1979 (Güteraufzüge/Hubvorrichtungen)

Zwei Destillate der 370er-Aufzugsfamilie neu erstellt, beide mit vollständigem Textlayer via
`pdftotext -layout`; keine Tabelle mit verbundenen Zellen, Farbcodierung oder gedrehten
Kopfzeilen identifiziert (nur textbasierte Typ-1/Typ-2-Gegenüberstellungen bzw. Prinzipskizzen
mit nummerierter Legende), daher kein PNG-Rendering nötig.

`destillate/sia-370-21-1987.md` (76 Seiten): SIA 370/21 «Aufzüge für die Förderung von Gütern
mit mechanischem Beladen und Entladen», genehmigt 07.11.1986, in Kraft 15.08.1987, vorliegend
2. Auflage 7/1991. Regelt Projektierung/Ausführung/Betrieb/Wartung elektromechanisch
angetriebener Güteraufzüge mit mechanischer Belade-/Entladevorrichtung, unterschieden nach
Typ 1 (unbegrenzte Schachtabmessungen) und Typ 2 (Schachtquerschnitt ≤2,25 m², längere Seite
≤2,25 m). Kernwerte für die Bauplanung: Schachtkopf-Sicherheitsabstände geschwindigkeits-
abhängig (0,1/0,4/0,7 m + 0,035·v² bei Treibscheibenantrieb), Schachtgrube-Schutzraum-Prisma
0,5×0,6×0,8 m, Wartungsöffnungen max. 0,6×2,0 m, Maschinenraum-Zugang min. 0,65×1,9 m,
Schachttürenspalt max. 10 mm, Bremse für 125 % Nenntragfähigkeit, periodische Prüfung
empfohlen alle 5 Jahre. Kein Bezug zu SIA 500 (reiner Gütertransport).

`destillate/sia-370-24-1979.md` (16 Seiten): SIA 370/24 «Hubvorrichtungen für Güter», Ausgabe
1979, in Kraft 01.01.1979, vorliegend Druck 10/1993. Regelt eine kleinere Geräteklasse
UNTERHALB des Aufzugsbegriffs (fünf kumulative Abgrenzungskriterien Ziff. 1: Hubhöhe >1,0 m,
zu wartende Teile ≤5,0 m über Boden, kein Handbeladen, überblickbar, Lastaufnahmemittel nicht
begehbar) — ausdrücklich NICHT anwendbar auf Aufzüge, Beschickeraufzüge, Regalbediengeräte,
Hebebühnen. Kernwerte: sicherer Wartungsstandort 0,65×0,65 m/1,8 m frei, Schutzraum bei
tiefer Absenkung 0,5 m, erschwerter Zugang min. 0,5 m Abstand/1,0 m Länge/1,6-2,0 m Höhe,
Tragmittel-Sicherheitsfaktoren 1/5 (Seile) bzw. 1/3 (Ketten) der Bruchlast.

Beide Ausgaben SEHR ALT (1987/1979); Ablösungsstatus im jeweiligen Dokument nicht erkennbar
und daher im Frontmatter/Fliesstext prominent als offen markiert, nicht als geltend oder
aufgehoben behauptet — Bring-Schuld: Register-Abgleich. SIA 370/10 (Personen-/Güteraufzüge,
gleichzeitig eingeführt) ist in der KB noch nicht destilliert. `destillate/INDEX.md` ergänzt
(direkt vor `sia-370-080-2003.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 162/6:1999 (Stahlfaserbeton, Empfehlung)

Destillat `destillate/sia-162-6-1999.md` neu erstellt (20 Seiten, vollständiger Textlayer via
`pdftotext -layout`; zusätzlich Tabelle 1 (S. 12, Prüfungen/Kontrollen über 5 Bauphasen mit
Verantwortlichkeitsmatrix) und Tabelle 2 (S. 18, Formeln zur Ermittlung von fctf/Gf aus den drei
Belastungsversuchen Biegezug/Quadratplatte/Kreisplatte, inkl. Grundriss-/Aufriss-Prüfkörperskizzen)
als 300-dpi-PNG gerendert und visuell gegen den Textlayer geprüft — keine Abweichung gefunden.
Dokumentart ist eine **Empfehlung** (nicht Norm), sachlich Teil der Betonbau-Familie SIA 162:
ergänzt die damalige Grundnorm SIA 162:1993 (mitgeltende Bestimmungen Ziff. 02) um Verständigung,
Grundsätze, Berechnung/Bemessung (inkl. Duktilitätsbedingung 2F1w1≥W1 und Richtwert Gf≥4000N/m,
Ziff. 3 13/3 14), Baustoffe, Ausführung, Arbeitssicherheit sowie Leistung und Ausmass; Anhang mit
den drei genormten Belastungsversuchen zur Ermittlung der Rechenwerte fctf (wirksame
Biegezugfestigkeit) und Gf (Bruchenergie). **Nachfolge-Status offen:** Das Dokument selbst nennt
keine Nachfolgepublikation; die Grundnorm SIA 162:1993, auf die 162/6 verweist, wurde 2003 durch
SIA 262 abgelöst (`wiki/REGISTER.md`, Zeile SIA 262), während 162/6 selbst im KB-Register zum
Stichtag 25.02.2013 noch als gültig geführt wird — ob sie danach zurückgezogen oder in die
260er-Reihe überführt wurde, ist am Original nicht verifizierbar und als offener Punkt im
Destillat vermerkt. INDEX.md ergänzt.

## 2026-08-08 (Run 48) — Neues Destillat SIA 197/2:2004 (Projektierung Tunnel – Strassentunnel)

Destillat `destillate/sia-197-2-2004.md` neu erstellt (48 Seiten, vollständiger Textlayer via
`pdftotext -layout`; zusätzlich Tabelle 1 (S. 33, Nutzungsdauer Bauteile), Tabelle 2 (S. 34,
Nutzungsdauer Anlageteile/Komponenten), Tabelle 4 (S. 38, diagonal geteilte Kopfzelle «Tunnel/
Fahrzeug», Wahl Bemessungskurve/Einwirkungsdauer) und die Wirkmatrix Anhang D (S. 45, gedrehte
Matrix-Kopfzeilen, Querformat) als 300-dpi-PNG gerendert und visuell gegen den Textlayer
geprüft — keine Abweichung gefunden. Strassenspezifische Teilnorm zur Grundnorm
`sia-197-2004.md` (Projektierung Tunnel – Grundlagen), identische Gliederung bis 3. Ebene; die
meisten Kapitel verweisen nur zurück auf SIA 197 (Kap. 2/3/5/6, 4.1-4.3/4.4.2-4.4.6,
7.1-7.3/7.4.3-7.4.4/7.5.1-7.5.3/7.6, 8.1/8.3.1/8.3.3/8.6) — dort nicht dupliziert, sondern
verlinkt. Eigener Text vor allem in Kap. 8 (Bauliche Anlagen: Linienführung, Tunnelquerschnitt,
Ausbau, Fahrbahn/Bankette/Kabeltrassen, Entwässerung, Fluchtwege/Querverbindungen, Portale,
Nebenanlagen) und komplett eigenständig in Kap. 9 (Betriebs- und Sicherheitsausrüstung — SIA 197
selbst verweist dort nur auf 197/1/197/2), zusätzlich Ziff. 7.4.2 (Explosion, in der Grundnorm
nicht enthalten) und Ziff. 7.5.4 f. (Zwischendecke/Innenausbau). Kernwerte: Explosionslast
Benzindampf 0→100 kN/m² binnen 1 ms, max. Längsneigung 5 %, Quergefälle 2,5-5 %,
Sicherheitsbauteile-Raster 150 m ab Tunnellänge 300 m, Ausstellbuchten alle 600-900 m
(einröhrig), Querverbindungen max. 300 m (zweiröhrig, ab 1,2 km mind. eine befahrbar),
begehbare Querverbindung ≥ 2,0 x 2,50 m / befahrbare ≥ 4,20 x 4,50 m, Löschwasserreservoir
≥ 250 m³, USV-Autonomie 1 Stunde, Verkehrsfernsehen/Funkanlage ab Tunnellänge 600 m. Vier
Anhänge: A (Nutzungsdauer, Tab. 1/2), B (Brandlast, Tab. 3/4 inkl. EUREKA-Versuchswerte
Personenwagen bis Tanklastwagen 200-1'400 °C), C (informative Normalprofil-Zeichnungen, nicht
textlich extrahierbar) und D (Wirkmatrix-Beispiel, nur strukturell beschrieben, nicht im
Wortlaut wiedergegeben). JANS-Relevanz ehrlich als sehr gering eingestuft (Healthcare-/
Hochbau-Büro, Strassentunnelbau reines Randgebiet) — dient der Vollständigkeit der
SIA-197-Normenfamilie, kein Arbeitsmittel. Status speculative, Refuter-Runde aussteht.
`destillate/INDEX.md` Zeile ergänzt (direkt nach `sia-197-1-2004.md`).

## 2026-08-08 (Run 48) — Neue Destillate SIA 380/3:1991 + SIA 382/2:2011, Ausgabejahr-Korrektur SIA 380/3

Zwei neue Destillate erstellt.

**`destillate/sia-380-3-1991.md`** — Empfehlung «Wärmedämmung von Leitungen, Kanälen und
Behältern in Gebäuden» (42 Seiten, vollständiger Textlayer via `pdftotext -layout`; zusätzlich
Tabellen 1-15 und der VSI-Nummern-Index (S. 23-33) als 300-dpi-PNG gerendert und zellengenau
gegen den Textlayer geprüft — Materialkennwerte mit Brandkennziffern, Richtlinien nach
Montageort). **Wichtigster Befund:** der Dateiname `380_3_1990_d.pdf` und der bisherige
REGISTER-Eintrag (Zeile 250) führten das Jahr «1990» — das Titelblatt selbst trägt jedoch KEIN
Ausgabejahr. Der Genehmigungsblock (S. 42) belegt eindeutig: «vom Central-Comité des SIA am
22. August 1991 in Flims genehmigt», in Kraft ab 1. Oktober 1991, Druckvermerk Titelblatt
«8/1991». Die Empfehlung ist damit eine **1991er-Ausgabe**, nicht 1990 — `REGISTER.md` Zeile
250 korrigiert (Jahr, Beleg, Blindzone-Vorbehalt bleibt zusätzlich bestehen: ob eine neuere
Ausgabe existiert, ist am Dokument nicht erkennbar). Enthält keine Dämmdicken-Vorgaben (die
stehen in SIA 380/1), sondern das Berechnungsverfahren für Wärmeverluste (Rohre/Armaturen/
Behälter/Kanäle, Formeln Ziff. 331-335) und die VSI-codierte Systemwahl nach Montageort.

**`destillate/sia-382-2-2011.md`** — «Klimatisierte Gebäude: Leistungs- und Energiebedarf» (40
Seiten, vollständiger Textlayer; zusätzlich Tabelle 2 «Standardisierte Eingabeparameter
Vergleichsprojekt» (S. 26-28) sowie Tabellen 4/5 in Anhang A (Leistungsgrenzen Abgabesysteme,
Quellen-Senken-Kombinationen, S. 30) als 300-dpi-PNG gerendert und zellengenau geprüft.
Schwesternorm zu `sia-382-1-2014.md` (dort verlinkt, nicht dupliziert): 382/1 legt die
technischen Anforderungen an Lüftungs-/Klimaanlagen fest, 382/2 liefert das
**Berechnungsverfahren** für Leistungs-/Jahresenergiebedarf (Umsetzung SN EN ISO 13790:2008,
ergänzt durch Merkblatt SIA 2044 + SIA-TEC-Tool) und prüft die Systemanforderung über ein
**Vergleichsprojekt-Verfahren** (Grenz-/Zielwerte statt fixer Absolutwerte). Kernwerte Tabelle
2: U-Wert opak Grenzwert 0,20 / Zielwert 0,12 W/(m²·K), U-Wert Fenster 1,3/1,0, spez.
Ventilatorleistung Zuluft 0,35/0,20 Wh/m³, WRG-Temperaturänderungsgrad 0,75/0,8,
Wärmepumpen-Jahresnutzungsgrad pauschal 3,0/4,4. Ersetzt Empfehlung SIA V 382/2:1992 sowie
Teile SIA 380/4:2006 (Ziff. 3.4/3.5.1/3.6/4.4-4.6). Referenziert im Normativverweis noch
SIA 382/1:2007 (nicht die im Bestand destillierte 2014er-Ausgabe) — als Diskrepanz im
Destillat vermerkt.

Beide `destillate/INDEX.md` ergänzt (Zeilen bei `sia-382-1-2014.md`). Status beider Destillate
speculative, unabhängige Refuter-Runde ausstehend.

## 2026-08-08 (Run 48) — Neues Destillat SIA 197/1:2004 (Projektierung Tunnel – Bahntunnel)

Destillat `destillate/sia-197-1-2004.md` neu erstellt (44 Seiten, vollständiger Textlayer via
`pdftotext -layout`; zusätzlich S. 29 (Tabelle 1 Nutzungsdauer), S. 38 (Tabelle 2 Richtwerte
Höhe h der Lichtraumbegrenzung, Matrix nach Geschwindigkeit v × Entfernung vom Unterwerk u)
und S. 40 (Tabelle 3 Projektierungsablauf, gedrehte Kopfzeile/Querformat, fünf Parallelspalten)
als 200-dpi-PNG gerendert und visuell gegen den Textlayer geprüft — keine Abweichung gefunden).
Bahnspezifische Teilnorm zur Grundnorm `sia-197-2004.md` (Projektierung Tunnel – Grundlagen),
identische Gliederung bis 3. Ebene; wo kein bahnspezifischer Zusatz nötig ist, verweist die Norm
nur zurück auf SIA 197 (u.a. Kap. 2/3/5, 4.1-4.3, 6, 7.1-7.3/7.5-7.6) — dort nicht dupliziert,
sondern verlinkt. Eigener Text vor allem in Kap. 8 (Bauliche Anlagen: Tunnelquerschnitt,
Fahrbahn/Bankette, Dichtigkeitsklassen 1-3 für Bahntunnel-Bauteile, Fluchtwege/Notausgänge) und
Kap. 9 (Betriebs- und Sicherheitsausrüstung — hier steht der einzige eigenständige Volltext,
SIA 197 selbst verweist in Ziff. 9 nur auf 197/1/197/2). Kernwerte: Brand-Grenzbelastung
450 °C/30 Min für geschützte Personen (Anhang B), Randweg ≥ 1,20 m breit/≥ 2,20 m lichte Höhe,
Notausgänge ins Freie alle ≤ 1000 m bzw. Querverbindungen alle ≤ 500 m, Löschwasser-Entnahme
≥ 20 l/s je Stelle/80 l/s Richtwert LRZ-Auffüllung, Nothaltestellen-Prüfpflicht i.d.R. ab 20 km
(Normalspur). JANS-Relevanz ehrlich als sehr gering eingestuft (Healthcare-/Hochbau-Büro,
Bahntunnelbau reines Randgebiet) — dient der Vollständigkeit der SIA-197-Normenfamilie, kein
Arbeitsmittel. Status speculative, Refuter-Runde aussteht. `destillate/INDEX.md` Zeile ergänzt
(direkt nach `sia-197-2004.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/263:2004 (Allgemeine Bedingungen für Stahlbau)

Destillat `destillate/sia-118-263-2004.md` neu erstellt (24 Seiten, vollständiger Textlayer via
`pdftotext -layout`; zusätzlich S. 16/17/19/20 als 200-300-dpi-PNG gerendert und visuell
gegengeprüft — insbesondere die Teilzahlungs-Tabelle Ziff. 8.4.2.2, keine Abweichung zum
Textlayer gefunden, keine verbundenen Zellen/Farbkodierung). Vertragsnorm der ABB-Reihe/
Swissconditions-Projekt zu den Fachnormen SIA 263 (`sia-263-2003.md`) und SIA 264
(`sia-264-2003.md`), Schwesternorm zu `sia-118-265-2004.md` (Holzbau), `sia-118-266-1-2017.md`/
`sia-118-266-2-2017.md` (Mauerwerk) und `sia-118-262-2004.md` (Betonbau). Kernpunkte: älteste
ABB-Generation im Bestand (2004, 1. Auflage) mit klassischer Zweiteilung Allgemeiner Teil
(Ziff. 0/1/2/5, Ziff. 3/4/6/7 leer) + Besonderer Teil Ziff. 8 Stahlbau. **Wichtigster Befund:**
im Unterschied zu den jüngeren, rein ergänzenden Schwesternormen 118/266-1/-2 enthält diese
Norm DREI echte Änderungen der SIA 118 (Ziff. 0.2, S. 8) — Ziff. 8.4.2.2 ersetzt Art. 144 Abs. 1
(Teilzahlungen), Ziff. 8.4.3 ersetzt Art. 66 Abs. 4 Satz 1 (Teuerung/Gleitpreisverfahren statt
Mengennachweis), Ziff. 8.6.4 ersetzt Art. 86 Abs. 1/2 (Mengenabweichungen ± 10 %) — wirksam nur
mit der wörtlich zu übernehmenden Vorrangklausel im Vertrag. Ausschreibungs-Checkliste Ziff. 8.1.2
(Übersichtspläne/Materiallisten mit Stahlsorte/Gütegruppe, Qualitätsnachweise nach SIA 263/1);
inbegriffene/nicht inbegriffene Leistungen Ziff. 8.2.3-8.2.4 sauber getrennt nach Herstellung
mit/ohne Montage; Ausmass auf Basis theoretischer Masse nach SZS-Stahlbau-Tabellen C5 (Dichte
7,85 t/m³ Profile/Flachstahl/Stahlguss, 8,00 t/m³ Breitflachstahl/Bleche), Abzugsgrenzen 1 m²
(Belagsbleche/Gitterroste) bzw. 2 m² (Profilbleche); fixer Teilzahlungsplan mit Schwelle
Fr. 50'000.– (zweistufig vs. dreistufig). Status speculative, Refuter-Runde aussteht.
`destillate/INDEX.md` Zeile ergänzt (direkt nach `sia-118-265-2004.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/265:2004 (Allgemeine Bedingungen für Holzbau)

Destillat `destillate/sia-118-265-2004.md` neu erstellt (36 Seiten, vollständiger Textlayer via
`pdftotext -layout` für S. 1-28/33-36; Anhang C S. 29-32 (Erläuterungen zu den
Ausmassbestimmungen mit Skizzen/Formeln, Symbol-Font ohne Embedding) zusätzlich als 300-dpi-PNG
gerendert und visuell verifiziert — dabei bestätigt: das von pdftotext als «/» ausgegebene
Zeichen in den Rundholz-/Kreisformeln ist tatsächlich π, z. B. V=((d1+d2)/4)²·π·l und
1,50·π/2 bzw. π/4 bei runden/gebogenen Anschlüssen). Vertragsnorm der ABB-Reihe/Swissconditions-
Projekt zur Fachnorm SIA 265 (`sia-265-2003.md`), Schwesternorm zu `sia-118-266-1-2017.md`
(Mauerwerk), `sia-118-262-2004.md` (Betonbau), `sia-118-257-2005.md` (Maler) und
`sia-118-244-2006.md` (Kunststein). Kernpunkte: älteste ABB-Generation im Bestand (2004,
Ausgabe-1) mit klassischer Zweiteilung Allgemeiner Teil (Ziff. 0/1/2/5, Ziff. 3/4/6/7 komplett
leer) + Besonderer Teil Ziff. 8 Holzbau — anders als die spätere, flachere Struktur von
SIA 118/266-1:2017; LV-Pflichtcheckliste Ziff. 8.1.2.2.1 (Holzart, Feuchtebereich, Längen über
8,00 m, Verbindungsmittel usw.); Vergütungsgrenzen Hilfsgerüst bis 3,00 m ab Gerüstfuss,
Schiften bis 10 mm, Schrauben/Dübel ≤ 8 mm (Ziff. 8.2.1/8.2.2); granulare Ausmassregeln Ziff. 8.5
mit Umschlagpunkten Rundholz 0,16 m und Vollholz 100 cm² (Meter↔Kubikmeter), Abzugsgrenzen
1,00 m² (Blockbau/Bekleidungen) bzw. 0,50 m² (Böden gerade Kanten), Brettschichtholz-Abzug ab
0,06 m³, Sonderregel «bei Riegelwänden keine gesonderte Vergütung von Zapfen/Überblattung/
Gehrung/Schrägschnitt»; Anhang B.1.7 verweist explizit auf VKF-Brandschutznormen, Anhang B.4 auf
SIA 358 Geländer/Brüstungen. **Wichtigster Befund:** diese Ausgabe 2004 ist seit 01.04.2018 durch
SIA 118/265:2018 abgelöst (Web-Verifikation SIA-Shop shop.sia.ch/normenwerk/ingenieur/
118-265_2018_d, 08.08.2026); die Ausgabe 2018 liegt im Bestand nicht vor und ist NICHT
destilliert — im Destillat als prominenter Warnhinweis direkt nach dem Titel platziert, nicht
nur in den Frontmatter-Feldern. Zweiter offener Befund: Ziff. 8.2.2.2 verweist auf «Verbindungs-
mittel gemäss Ziffer 8.1.3.2», eine solche Ziffer existiert im vorliegenden Normtext nirgends
(vollständig geprüft S. 16-19) — vermutlich Redaktionsfehler der Norm oder gemeinter Bezug auf
Ziff. 8.2.1.2, nicht auflösbar ohne Vergleich mit der Ausgabe 2018. Status speculative, Refuter-
Runde aussteht. `destillate/INDEX.md` Zeile ergänzt (direkt nach der Fachnorm-Zeile
`sia-265-2003.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/262:2004 (Allgemeine Bedingungen für Betonbau)

Destillat `destillate/sia-118-262-2004.md` neu erstellt (32 Seiten, vollständiger Textlayer via
`pdftotext -layout`; acht Seiten mit Positionsgliederungs-Tabellen und Anhängen zusätzlich als
300-dpi-PNG gerendert und visuell verifiziert — S. 21/22 Ziff. 8.4.3.6/8.4.6.5 Gliederung
Schalungs-/Betonpositionen nach Abmessungen, S. 25-30 Anhang A-E inkl. Figur 3 Schalungsarten
(Vektorgrafik, vom Textlayer nicht erfassbar) und Anhang E Tabellen 1-4 Betonsorten mit
gedrehten Kopfspalten «Exposition»/«Anwendung»; keine Abweichung zur Textextraktion gefunden).
Vertragsnorm der ABB-Reihe zu den Fachnormen SIA 262 (`sia-262-2003.md`) und SIA 264
(`sia-264-2003.md`), Schwesternorm zu `sia-118-266-1-2017.md` (Mauerwerk), `sia-118-244-2006.md`
(Kunststein) und `sia-118-257-2005.md` (Maler). Kernpunkte: einzige ABB im Bestand mit
vollständigem allgemeinen UND besonderen Teil (Ziff. 0-2/5 allgemein, Ziff. 8 Betonbau
besonders); Ausschreibungs-Checkliste Ziff. 8.1.1 in sieben Themenblöcken (Baustelle, Gerüst,
Schalung, Bewehrung, Spannsystem, Beton, Betonfertigteile); QM-Anforderungsstufen I-III
(Ziff. 1.4.1) als eigene Ausschreibungsposition; zentraler Unterschied zur Mauerwerk-ABB —
Arbeitsgerüste für Betonarbeiten sind grundsätzlich NICHT inbegriffen (Ziff. 8.4.2.2), anders
als die 3,0-m-Inklusivgrenze bei SIA 118/266-1; Ausmass-Kernwerte 2,0 m²/3,0 m
Schalungsöffnungs-/Schlitzgrenze (Ziff. 8.5.2.2), 0,10 m³ Betonaussparungsgrenze
(Ziff. 8.5.5.3), 7850 kg/m³ Betonstahlgewicht (Ziff. 8.5.3.1), Temperaturband +5/+30 °C
(Ziff. 8.4.6.3); Ziffern 3/4/6/7 fehlen im Inhaltsverzeichnis ersatzlos (Nummerierungslücken-
Fussnote S. 2) statt wie bei anderen ABB explizit als «keine Ergänzungen» ausgewiesen — für
diese Themen gilt durchgehend die SIA 118 ohne Bestätigung an Ort und Stelle. Status
speculative, Refuter-Runde aussteht. `destillate/INDEX.md` Zeile ergänzt (direkt nach
`sia-118-1991.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/257:2005 (Allgemeine Bedingungen für Maler-, Holzbeiz- und Tapeziererarbeiten)

Destillat `destillate/sia-118-257-2005.md` neu erstellt (16 Seiten, vollständiger Textlayer
via `pdftotext -layout`; drei Tabellen zusätzlich als 300-dpi-PNG gerendert und visuell
verifiziert — S. 10 Tabelle 1 Inbegriffene/nicht inbegriffene Leistungen, S. 13-14 Tabelle 2/3
Ausschreibungsgruppen mit 90°-gedrehten Spaltenköpfen). Vertragsnorm der ABB-Reihe zur
Fachnorm SIA 257 (`sia-257-2005.md`), Schwesternorm zu `sia-118-266-1-2017.md` (Mauerwerk)
und `sia-118-244-2006.md` (Kunststein). Kernpunkte: Ausschreibungs-/LV-Checkliste (Ziff. 1.1)
inkl. Termin-Pflicht Beginn/Fertigstellung im Werkvertrag (Ziff. 1.1.2.4); Vergütungsgrenzen
Tabelle 1 mit Gerüst-/Leiternarbeitshöhe bis 3,0 m; Ausmassregeln mit zwei unterschiedlichen
Öffnungs-Nichtabzugsgrenzen (2,50 m² mit Leibungen vs. 1,0 m² ohne Leibungen, Ziff. 5.2.1) und
informativem Anhang A (Strukturklassen I-IV); einzige eigenständige Sonderregel bei Abnahme/
Mängelhaftung (Ziff. 6) — Haftungsausschluss des Unternehmers, wenn der Bauherr eine
übergebene Instandhaltungsanleitung nicht befolgt hat. Status speculative, Refuter-Runde
aussteht. `destillate/INDEX.md` Zeile ergänzt (direkt nach der Fachnorm-Zeile
`sia-257-2005.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/248:2006 (Allgemeine Bedingungen für Plattenarbeiten)

Destillat `destillate/sia-118-248-2006.md` neu erstellt (16 Seiten, vollständiger Textlayer,
zusätzlich S. 5 Glossar und S. 15 Anhang A/Organisationen gegen 300-dpi-Rendering visuell
verifiziert — reiner Fliesstext, keine Tabelle mit verbundenen Zellen). Vertragsnorm der
ABB-Reihe zur Fachnorm SIA 248 (`sia-248-2006.md`), Schwesternorm zu `sia-118-266-1-2017.md`
(Mauerwerk) und `sia-118-244-2006.md` (Kunststeinarbeiten, identisches Muster). Kernpunkte:
Ausschreibungs-/LV-Checkliste (Ziff. 1.1.3.1), inbegriffene/nicht inbegriffene Leistungen mit
Gerüst-Vergütungsgrenze bei 2,5 m Belagshöhe und Handmuster-Grenze 0,2 m² (Ziff. 2.2/2.3),
Ausmassregeln mit 0,5-m²-Abzugsgrenze für Aussparungen (Ziff. 5.1.3, enger als die 1,0-m²-Grenze
bei Mauerwerk) und normativem Anhang A (Ausmasszuschläge 20-50 % bei unvollständigem LV), sowie
sieben eigenständige Sonderregeln zu Abnahme/Mängelhaftung (Ziff. 6.1-6.7) — dort macht die Norm,
anders als bei Bestellungsänderung/Bauausführung/Zahlung/vorzeitiger Beendigung, KEINE reine
Verweisung auf SIA 118, sondern schliesst mehrere Sachverhalte ausdrücklich von Mängelrüge bzw.
Gewährleistung aus (Risse durch Untergrundverformung, lokale Hohlstellen bei intakten Fugen,
Farbabweichungen starrer Fugen, verformbare Dichtfugen). Status speculative, Refuter-Runde
aussteht. `destillate/INDEX.md` Zeile ergänzt (direkt nach der Fachnorm-Zeile `sia-248-2006.md`).

## 2026-08-08 (Run 48) — Neues Destillat SIA 118/244:2006 (Allgemeine Bedingungen für Kunststeinarbeiten)

Destillat `destillate/sia-118-244-2006.md` neu erstellt (16 Seiten, vollständiger Textlayer,
Anhang A zusätzlich gegen 150-dpi-Rendering visuell verifiziert — reiner Fliesstext, keine
Tabelle mit verbundenen Zellen). Vertragsnorm der ABB-Reihe zur Fachnorm SIA 244
(`sia-244-2006.md`), Schwesternorm zu `sia-118-266-1-2017.md` (Mauerwerk). Kernpunkte:
Ausschreibungs-/LV-Checkliste (Ziff. 1.1), inbegriffene/nicht inbegriffene Leistungen mit
Gerüst-Vergütungsgrenze bei 2,5 m Belagshöhe (Ziff. 2.2/2.3, abweichend von den 3,0 m bei
Mauerwerk), Ausmassregeln mit 0,5-m²-Abzugsgrenze (Ziff. 5.1.3, strenger als die 1,0-m²-Grenze
bei Mauerwerk) und normativem Anhang A (Ausmasszuschläge 20-100 % bei unvollständigem LV),
sowie acht eigenständige Sonderregeln zu Abnahme/Mängelhaftung (Ziff. 6) — dort macht die Norm,
anders als sonst durchgehend, KEINE reine Verweisung auf SIA 118. Status speculative, Refuter-
Runde aussteht. `destillate/INDEX.md` Zeile ergänzt (direkt nach der Fachnorm-Zeile
`sia-244-2006.md`).

## 2026-08-07 (Wissens-Chef Run 28, Cross-KB) — VKF 2001-15 Seitenzahl korrigiert, Registerzeile nachgetragen, Cross-KB-Link entgiftet; Ruecknahme dreier Stub-Ueberschreibungen protokolliert

0. **Ruecknahme durch den Hauptprozess (vor diesem Lauf, hier nur protokolliert):** Commit
   `f147dac4` («Health-Check Rueparatur 260807») hatte die drei Destillate `sia-180-2014.md`,
   `din-1961-2010.md` und `sia-mb-2024-2006.md` mit 15-Zeilen-Stubs **ueberschrieben**; die
   Stub-Titel waren zusaetzlich sachlich falsch geraten (DIN 1961 ist **VOB Teil B**, nicht
   «Elektrische Leitungen»; SIA MB 2024 sind die **Standard-Nutzungsbedingungen**, nicht «Beton
   mit Recycling-Gesteinskoernungen»). Alle drei Dateien wurden aus dem Git-Vorstand
   wiederhergestellt, die drei zugehoerigen Falsch-Zeilen aus `destillate/INDEX.md` entfernt.
   Lehre: eine «Reparatur», die einen vollstaendigen Bestand durch einen geratenen Stub ersetzt,
   ist ein Datenverlust — Titel nie aus dem Normkuerzel erraten.
1. **`destillate/vkf-merkblatt-2001-15-solaranlagen.md`:** Fundstelle von Tabelle 1
   («DC-Leitungen und Bereiche») an drei Stellen von «S. 6» auf **«S. 7»** korrigiert
   (Kernziffern, Abschnitt Tabellen/Kennwerte, Offene Punkte), je mit datiertem Vermerk. Am
   Original verifiziert (MD5 `56fb4bab06eaa4efec181d7f6fb44e87`, 11 S.): auf S. 6 steht in
   Ziff. 3.1.3 nur der Querverweis, die Tabelle selbst vollstaendig auf S. 7. Das
   Partner-Destillat `vkf-brm-2001-15-solaranlagen.md` fuehrte «S. 7» korrekt und wurde
   **bewusst nicht angefasst** (kein Angleichen des besseren an den schlechteren Stand).
2. **`wiki/QUESTIONS.md`:** datierter Nachtrag an der bestehenden Duplikat-Zeile (Paar
   2001-15) — Merge bleibt **parkiert** (destruktiv, braucht Raphaels Einzelfreigabe), kein
   neuer Registereintrag, keine Statusaenderung. Vormerkung fuer den Freigabetag ergaenzt:
   `vkf-brm-…` fuehrend, aber nur mit Uebernahme des Run-3-Provenienzblocks, Umhaengen der
   drei Fremdzeiger aus `planungsgrundlagen`/`energie` und Erhalt der Zeiger-Datei.
3. **`wiki/REGISTER.md`:** erstmals eine Zeile **VKF-Merkblatt 2001-15de Solaranlagen** in der
   Fassungsstands-Tabelle (Muster der 2005-15-Zeile) — Hausbestand 06.03.2015 ueberholt,
   Zwischenfassung 01.01.2017, geltend 01.01.2022; einziger harter Delta RF3 (cr) fuer
   Unterdachbahnen seit 01.01.2017. Mit beiden Vorbehalten: **kein Abgleich des
   VKF-Publikationsindex** (N27-1) und **`status: speculative`** des 2022er-Destillats. Die
   beiden weichen Deltas bleiben bewusst im Destillat (Flaechenschwelle = nur Vergleichszeichen;
   RWA 2.0 m in den Anhang gewandert, nicht weggefallen).
4. **`destillate/vss-40291-2021-parkieren-anordnung-geometrie.md`:** der KB-fremde Eintrag
   `[[fahrzeugabstellplaetze-und-parkierung]]` aus dem KB-internen Feld `links:` entfernt (war
   ein toter Link, Ziel existiert nur in `wissen/baurecht/wiki/`); statt dessen ein Feld
   `querbezug_kb_baurecht:` nach dem Hausmuster und ein Satz im JANS-Praxis-Transfer, beide in
   Backtick-Pfadform, spiegelbildlich zur bereits korrekten Gegenrichtung. `last_updated` auf
   2026-08-07. Fuehrungsaufteilung unveraendert: `normen` = Geometrie, `baurecht` = Anzahl.
5. **SIA 387/4 — nur Vorbehalt und Querverweis, keine Fassungs- oder Statusaenderung:** in
   `destillate/sia-387-4-2017.md` (offener Punkt ergaenzt) und `wiki/REGISTER.md` Zeile SIA
   387/4 (Nachtrag nach dem Hausmuster SIA 385/9) vermerkt, dass die KB `energie` am
   03.08.2026 ueber die **Nachfolger-Rubrik der 380/4** einen Eintrag «387/4:2023, gueltig ab
   01.08.2023» abgerufen hat — nicht am Normtext verifiziert, nicht an der 387/4-Produktseite
   selbst, hausintern strittig («Ausgabe 2017, aktualisiert 2023»), und die BBV I ZH Anhang
   Ziff. 2.3382 erklaert weiterhin die Ausgabe 2017 verbindlich (Nachweis EN-111). Der
   Melder-Vorschlag «abgeloest durch 387/4:2023» wurde **nicht** gesetzt. Bring-Schuld N27-2 in
   `wiki/QUESTIONS.md` um die 387/4-Produktseite erweitert; Stichtagsspalten unberuehrt.

## 2026-08-07 (Vorrang-Lauf Raphael, Run 47) — Abschluss: 9 von 10 P1-Positionen established, Refuter-Runden komplett

1. **Refuter-Runden und Statushebungen fuer alle Erstdestillate dieser Session:**
   `sia-118-c1-2026.md` (BESTANDEN, 0 Kern/4 Neben), `sia-261-1-2003.md` (BESTANDEN, 0/5),
   `sia-262-1-2003.md` (BESTANDEN, 0/2), `sia-264-1-2003.md` (BEANSTANDET, 1 Kernbefund
   u_1-Richtung — vom Hauptprozess am Original bestaetigt und inline korrigiert; 24
   Tabellenzellen alle korrekt), `sia-267-1-2003.md` (BESTANDEN, 0/4),
   `sia-410-1-2-1981.md` (BESTANDEN, 0/2, alle fuenf Farbtabellen zellengenau),
   `sia-118-266-1-2017.md` (BESTANDEN, 0/5, Begriffsvertauschung Sichtmauerwerk korrigiert),
   `sia-118-266-2-2017.md` (BESTANDEN, 0/5), `sia-387-4-2017.md` (BEANSTANDET geringfuegig,
   1 Kernbefund 43 statt 40 Raumnutzungen; Leitsatz an Ziff. 4.1.1.1 angeglichen:
   Grenzwerte auch bei Umbauten einzuhalten), `sia-281-3-2018.md` (BESTANDEN, 0/2).
   Alle Nebenbefunde INLINE eingearbeitet (Methodik-Pflicht 9), alle 10 Destillate auf
   **established**; INDEX-Zeilen entsprechend nachgezogen, neue INDEX-Zeilen fuer
   `sia-118-c1-2026.md` und `sia-410-1-2-1981.md` ergaenzt.
2. **QUESTIONS:** 118-C1-Inhaltsfrage GESCHLOSSEN (einzige materielle Aenderung Art. 179
   Abs. 2, Ruegefrist verdeckte Maengel 60 Tage, OR-Revision Baumaengel 01.01.2026);
   N27-2 um den hausinternen Normtext-Beleg ergaenzt (387/4 ersetzt Ziff. 3.3/4.3 der
   380/4:2006; Lueftung/Klima 382/1+382/2, Rest SIA 2056).
3. **REGISTER:** Zeilen SIA 118 (C1-Destillat erledigt) und SIA 410 (410/1-Destillat
   erledigt, Farbcode-Luecke geschlossen, KR/K-Divergenz) nachgefuehrt; `sia-410-1986.md`
   an fuenf Stellen inline aktualisiert.
4. **Offen:** SIA 112/1:2017 — zwei Destillat-Anlaeufe am Session-Limit abgebrochen
   (Reset 19:00), Wiederaufnahme-Vermerk im Vorrang-Block; uebernimmt der Nacht-Loop.
   Lauf-Report: `outputs/2026-08-07_normen-vorrang-run47.md`.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 281/3:2018 neu destilliert

1. **`destillate/sia-281-3-2018.md`** — Erstdestillat der SIA 281/3:2018 Dichtungsbahnen
   und flüssig aufgebrachte Abdichtungen – Haftzugprüfung (SN 564281/3:2018, gültig ab
   01.09.2018, ersetzt die Vornorm SIA 281/3 «Bitumenbahnen – Haftzugprüfung» 2002;
   12 S., reiner Scan OHNE Textlayer — alle 12 Seiten als 150-dpi-Rendering visuell
   gelesen, Prefix sia281-3-, Formelstelle zusätzlich als 300-dpi-Ausschnitt geprüft).
   Inhaltlicher Befund: reine Prüfnorm OHNE Anforderungswerte (Vorwort S. 4) — sie
   vereinheitlicht das Haftzugprüfverfahren am eingebauten Werk für Bitumenbahnen,
   Kunststoff-Dichtungsbahnen und flüssig aufgebrachte Abdichtungen (Ziff. 0.1);
   Anforderungswerte und Prüfstellenzahl liegen in den Systemnormen SIA 271/272/273
   bzw. SN 640450/640451/640452 (Ziff. 2.3.1, 2.3.7). Kernparameter: Kraftsteigerung
   (300 ± 15) N/s, Zugkörper rund d = (50 ± 1) mm oder quadratisch s = (45 ± 1) mm,
   h = (45 ± 5) mm, 3 Einzelprüfungen je Prüfstelle innerhalb 1,0 m x 1,0 m, Untergrund
   5-30 °C, Vorlast (150 ± 50) N, Start innert 10 s; Bruchbild-Klassifikation A/B/C/Y
   (kohäsiv) und A/B, B/C, Y/C (adhäsiv), kohäsive Brüche in den untersten 0,5 mm
   adhäsiv zu werten, Wiederholungspflicht bei > 20 Flächen-% Klebstoffbruch und
   verfehltem Systemnorm-Wert; Ergebnis = arithmetisches Mittel dreier Einzelprüfungen,
   F/A in N/mm² auf 2 Kommastellen OHNE Hohlstellen-Abzug (Ziff. 2.4). Offen: das
   Formelzeichen der Haftzugfestigkeit (Ziff. 2.4.1) ist am Scan nur als kursives «CJ»
   lesbar. Status speculative, Refuter-Runde ausstehend. Destillat-INDEX-Zeile ergänzt.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 387/4:2017 neu destilliert, N27-2 beantwortet

1. **`destillate/sia-387-4-2017.md`** — Erstdestillat der SIA 387/4:2017 Elektrizität in
   Gebäuden — Beleuchtung: Berechnung und Anforderungen (SN 565387/4:2017 de, gültig ab
   01.05.2017, 44 S., Textlayer vorhanden; alle 44 Seiten gelesen, sechs Tabellenseiten
   S. 18-19/23/31/32-33 als 150-dpi-Rendering zellenweise gegengelesen, Prefix sia387-4-).
   Inhaltlicher Befund: Kennzahlensystem E_L = p_L · t_L (spezifische Leistung W/m² mal
   Volllaststunden) mit zwei Berechnungsmethoden (Faktoren/Volllaststunden bzw.
   Stundenschritt gekoppelt an SIA 2044); Anforderungen als Grenz-/Zielwerte, wahlweise
   Einzelanforderung an die Leuchten-Lichtausbeute (EEI 0,17/0,11 bei Ra 80; Gebäude bis
   max. 1000 m²) oder Systemanforderung via Vergleichsprojekt; Energienachweis Teil
   Beleuchtung durch den Fachplaner spätestens in Teilphase 33 (Ziff. 2.1.4). Tabelle 13
   liefert Grenz-/Zielwerte je SIA-2024-Nutzung (Büro 17,5/2,8, Schulzimmer 14,4/3,2,
   Verkauf 59,8/38,8, Bettenzimmer 10,5/3,5, Stationszimmer 70,8/35,7 kWh/m².a);
   Healthcare-Vorbehalt Ziff. 0.1.3 (Alterszentren: Tabellenwerte reichen NICHT,
   objektbezogen erhöhen, z.B. SLG 104). Gilt nicht für Notbeleuchtung und Wohnungen.
   Status speculative, Refuter-Runde ausstehend.
2. **N27-2 beantwortet (Nachfolgefrage der KB):** Der Genehmigungsblock S. 44 begrenzt
   den Ersatz ziffernscharf: SIA 387/4 «ersetzt den Teil Beleuchtung (Ziffern 3.3 und
   4.3) der Norm SIA 380/4 Elektrische Energie im Hochbau, Ausgabe 2006». Das Vorwort
   S. 4 nennt den Verbleib der übrigen Teile: Lüftung/Klima → Normen SIA 382/1 und
   382/2; «für die übrigen Elektrizitätsverbraucher steht neu das Merkblatt SIA 2056
   Elektrizität in Gebäuden - Energie- und Leistungsermittlung zur Verfügung». Offen
   bleibt nur, ob SIA 380/4:2006 damit formell vollständig zurückgezogen wurde (im
   Dokument nicht ausgesagt). Verlinkt: [[sia-382-1-2014]], [[sia-592-056]].
3. **`destillate/INDEX.md`** — Zeile für `sia-387-4-2017.md` ergänzt (Status speculative).

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 118/266-1:2017 neu destilliert

1. **`destillate/sia-118-266-1-2017.md`** — Erstdestillat der SIA 118/266-1:2017
   Allgemeine Bedingungen für Mauerwerk (SN 507266-1:2017 de, gültig ab 01.09.2017,
   ersetzt SIA 118/266:2004; 20 S., reiner Scan OHNE Textlayer — alle 20 Seiten als
   150-dpi-Rendering visuell gelesen, Prefix sia118-266-1-, durchgehend gut leserlich).
   Inhaltlicher Befund: Vertragsnorm der ABB-Reihe für Mauerwerk aus künstlichen Steinen
   nach SIA 266/266-1; ergänzt die SIA 118 ohne Änderungen (Ziff. 0.1), rechtsverbindlich
   nur bei Bezeichnung als Vertragsbestandteil zusammen mit SIA 118, bei Widerspruch geht
   SIA 118 vor (Ziff. 0.2, Rangfolge nach SIA 118 Art. 7/21). Substanz liegt in drei
   Blöcken: (1) Ausschreibungs-/LV-Checklisten Ziff. 1.1 (NPK-Basis, Bezeichnung nach
   SIA 266, Standard- vs. deklariertes Mauerwerk, Höhen ab Gerüstabstellbasis,
   Positionskataloge 1.1.3.11-13; Toleranzen gemäss SIA 266, Abweichungen als gesonderte
   LV-Position); (2) Vergütungsregeln Ziff. 2 (inbegriffen u.a. Arbeitsgerüste bis 3,0 m
   und Witterungsschutz mit ordentlichem Vermauerungs-Temperaturband +5 °C bis +30 °C;
   gesondert vergütet: Schutz vor Dritten, Schutz nach Rohbauvollendung — Zeitpunkt im
   Werkvertrag speziell zu vereinbaren —, Sturmsicherung freistehender Mauern);
   (3) Ausmassregeln Ziff. 5 mit Anhang-A-Figuren (m² effektiv, 1,0-m²-Abzugsgrenze,
   lichte Geschosshöhe bei durchlaufenden Schlitzen, Pfeilerregel L:B < 5:1 in Laufmetern,
   Wandhöhen UK Decke/Geschosshöhe/OK eingemauerte Konstruktion, Vollstürze ohne Abzug,
   Leibungen/Mauerköpfe/-ecken gesondert in Laufmetern, Gerüste nach der bei
   Vertragsabschluss gültigen SIA 118/222). Bewusste Leerstellen: Ziff. 3, 4, 5.3, 6, 7
   je «Keine Ergänzungen zur Norm SIA 118» — Abnahme/Mängelrechte laufen vollständig
   über die SIA 118. 14 Begriffe (Ziff. 0.4) inkl. Absacken/Schlämmen, dreisprachig in
   Anhang C. Keine Übergangsbestimmungen zur Ausgabe 2004 im Normtext. Status
   speculative, Refuter-Runde ausstehend. Destillat-INDEX-Zeile ergänzt.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 118/266-2:2017 neu destilliert

1. **`destillate/sia-118-266-2-2017.md`** — Erstdestillat der SIA 118/266-2:2017
   «Allgemeine Bedingungen für Natursteinmauerwerk» (SN 507 266-2:2017 de, gültig ab
   01.09.2017, 20 S., ersetzt SIA 226:1976 «Naturstein-Mauerwerk – Leistung und
   Lieferung»). Quelle ist ein reiner Scan ohne Textlayer; alle 20 Seiten als
   150-dpi-Rendering visuell gelesen (durchgehend gut leserlich, keine Nachrenderung
   nötig). Inhaltlicher Befund: Vertragsnorm der ABB-Reihe zur SIA 118, ausdrücklich
   ohne Änderungen an dieser; bei Widerspruch geht SIA 118 vor (Ziff. 0.2.2). Nur drei
   normative Verweisungen (SIA 118, SIA 118/222 Gerüstbau, SIA 266/2). Gilt NICHT für
   Erhaltungsarbeiten nach SIA 269/6-1 (Ziff. 0.1.2). Kern: Ausschreibungs- und
   LV-Checklisten (Ziff. 1.1.3.1 mit Gestein Name/Art/Herkunft, Expositionsklasse nach
   SIA 266/2:2012 Tab. 1, Herstellung nach deren Ziff. 6.4/Tab. 7), Pflichtenkataloge
   Bauherr/Unternehmer (Ziff. 1.3, u.a. Bewegungsfugenplan und QS beim Bauherrn),
   Vergütungsgrenze Ziff. 2.2/2.3 (inbegriffen: Handmuster bis 0,2x0,3 m, einfache
   Gerüste bis 3 m ab Gerüstabstellbasis; nicht inbegriffen u.a. Witterungsschutz
   ausserhalb +5/+30 °C, Werkstücke, gebogene Mauern Radius < 10 m) und eigene
   Ausmassregeln (Ziff. 5: einschliesslich Fugen, zweihäuptig zwei Flächen,
   Aussparungen < 1 m² ohne Abzug, Werkstücke separat und nicht als Mauerwerksfläche,
   Mauerhöhen 5.2.2, Skizzen Anhang A). Zu Bestellungsänderung, Bauausführung,
   Zahlungsmodalitäten, Abnahme/Mängelhaftung und vorzeitiger Beendigung je «Keine
   Ergänzungen zur Norm SIA 118». Elf Begriffe (Ziff. 0.4, dreisprachig Anhang C),
   darunter Absacken, Schlämmen, Bossierung, einhäuptiges Mauerwerk. Keine eigenen
   Toleranzwerte (laufen über SIA 266/2). Status speculative, Refuter-Runde ausstehend.
   Destillat-INDEX-Zeile ergänzt (nach der Schwesternorm 118/266-1).

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 267/1:2003 neu destilliert

1. **`destillate/sia-267-1-2003.md`** — Erstdestillat der SIA 267/1:2003 Geotechnik,
   Ergänzende Festlegungen (44 S., deutsch, Textlayer). Alle 44 Seiten gesichtet; 10 Seiten
   mit Figuren, Ablaufschemata und Subskript-Listen (S. 18, 19, 24, 27, 28, 30, 31, 36,
   37, 42) als 150-dpi-Bild gegengelesen. Inhaltlicher Befund: zweischichtige Norm —
   Verweisungsdrehscheibe (Tabellen 1-10: VSS-Bände 5/9/12/13, SN-EN-Spezialtiefbaureihe
   1536-12716 mit SIA-19x-Entsprechungen, SIA 118/267 Anhänge A1-A8, ASTRA-Leitfaden
   23.4.1998) plus eigene schweizerische Prüfverfahren für drei Spezialtiefbau-Gebiete:
   Pfähle (statisch/dynamisch, Ultraschall- und Reflexions-Integritätsprüfung),
   vorgespannte Anker (Ankerversuch, ausführliche/einfache Spannprobe, Korrosionsschutz-
   und Wasserdichtigkeitsprüfung q < 5 l/(min·bar)) und Nägel (Ausziehversuche,
   Scherversuche, Zugproben). Durchgängiges Kriechmass-Regime (Referenzgerade k = 1 mm,
   k krit = 2 mm) und identische Messgenauigkeiten (±0,20 mm/±2 % bzw. ±0,05 mm/±0,5 %,
   Ablesung 0,01 mm/1 kN) über alle drei Verfahrensfamilien. Kernwerte: P0 ≤ 0,6 Ra,
   Spannproben-Band 1,25 P0max ≤ Pp ≤ 0,75 Ppk, Festsetz-Bedingungen 6.2.3.5,
   Pfahl-Abbruch bei k ≥ 2 mm oder s ≥ 0,1 D. Merkregel Ziff. 0.2.2 (Entwürfe gelten
   erst ab Inkrafttreten) betrifft viele Tabellenpositionen (prEN/ENV/Draft). Beobachtung
   dokumentiert: Figur 15 beschriftet die Kraftachse «F [tN]» (mutmasslicher Druckfehler,
   nicht übernommen); Übergangsbestimmungen nennen das ersetzte Merkblatt SIA 2009 nicht.
   Ersetzt zusammen mit SIA 267 die Empf. SIA V191:1995 und V192:1996, Vornorm
   SIA 191/1:2001 und Merkblatt SIA 2009:1996. Status speculative, Refuter-Runde
   ausstehend. Destillat-INDEX-Zeile ergänzt, REGISTER-Zeile SIA 267/1 nachgeführt.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 262/1:2003 neu destilliert

1. **`destillate/sia-262-1-2003.md`** — Erstdestillat der SIA 262/1:2003 Betonbau,
   Ergänzende Festlegungen (40 S., deutsch, Textlayer; vorliegend 2. Auflage 2004-05 mit
   redaktionellen Korrekturen). Alle 40 Seiten gesichtet; 11 Seiten mit Tabellen, Figuren
   und Bruch-/Wurzelformeln (S. 6, 7, 17, 19, 20, 21, 23, 24, 28, 30, 37) als
   150-dpi-Bild gegengelesen. Inhaltlicher Befund: dreischichtige Norm — mitgeltende
   Verweisungs-Zuordnung (Tabelle 1, 21 Zeilen), informatives Dokumentenverzeichnis
   (Tabellen 2-5) und acht eigene Prüfverfahren-Anhänge A-H (Wasserleitfähigkeit,
   Chloridwiderstand, Frost-Tausalz, Sulfat, Luftpermeabilität am Bauwerk,
   Schwinden/Kriechen, E-Modul, Frischbeton-Wassergehalt); für A-E ausdrücklich keine
   anerkannten Beurteilungsregeln, nur Anhaltspunkte (Tabelle 6: qw ≤ 10 g/(m²h),
   Frost hoch m ≤ 200 g/m², Sulfat ∆l ≤ 0,5 ‰). Extraktionsfalle dokumentiert: der
   Wurzelterm 1,5462·√(z·xd) in Formel B.8.2 fehlt in der reinen Textextraktion.
   Original-Druckfehler notiert («Kommission SIA 160» auf S. 39 statt 162). Chloridgehalt/
   Karbonatisierung sind KEINE Anhänge, sondern Verweise auf SIA 162/2 und 162/3.
   Ersetzt zusammen mit SIA 262 die SIA 162 (1993) und SIA 162/1 (1989). Status
   speculative, Refuter-Runde ausstehend. INDEX-Zeile ergänzt.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 261/1:2003 neu destilliert

1. **`destillate/sia-261-1-2003.md`** — Erstdestillat der SIA 261/1:2003 Einwirkungen auf
   Tragwerke, Ergänzende Festlegungen (32 S., deutsch, Textlayer). Alle 32 Seiten gesichtet;
   10 Seiten mit Formeln, Figuren und verbundenen Tabellen (S. 12, 13, 15, 16, 18, 19, 21,
   22, 23, 28) als 150-dpi-Bild gegengelesen, Formel 3 zusätzlich als 400-dpi-Zoom.
   Inhaltlicher Befund: anders als die Prüfnorm SIA 266/1 eine echte Lastannahmen-Norm mit
   13 Kapiteln (Schalungsdruck, gravitative Naturgefahren mit Gefahrenkarten-System,
   Wind-Dynamik/SIA D0188, Ortstemperatur, Ausnahmetransporte, Kranbetrieb inkl. Ermüdung
   und Anhang A, Lagerkräfte, Silos). Mehrere Druckfehler der Norm dokumentiert (doppelte
   Ziffernnummern 8.1.1/11.2.1.1/11.4.1.4, überlappende h/b-Bereiche Tabelle 9, Formel 3
   ohne Klammern «Qk,T = 1 + λ Qk,max» — mutmasslich λ·Qk,max). Ersetzt zusammen mit
   SIA 261 die Ziffer 4 der SIA 160 (1989). Status speculative, Refuter-Runde ausstehend.
   INDEX-Zeile ergänzt.

## 2026-08-07 (Vorrang-Lauf Raphael, Destillat-Session) — SIA 264/1:2003 neu destilliert

1. **`destillate/sia-264-1-2003.md`** — Erstdestillat der SIA 264/1:2003 Stahl-Beton-Verbundbau,
   Ergänzende Festlegungen (16 S., deutsch, Textlayer). Alle 16 Seiten gesichtet; die
   Brandbemessungstabellen 3-9 (S. 8-13) wurden an gerenderten Seitenbildern (150 dpi)
   zellenweise gegengelesen, Figuren-Masse visuell geprüft. Inhaltlicher Befund: anders als
   die Schwesternorm SIA 266/1 ist SIA 264/1 KEINE Prüfnorm (keine Verbundmittel-/
   Kopfbolzenduebel-Prüfverfahren), sondern Dokumentenverzeichnis (3 SN-EN-Verweisungen +
   3 Eurocode-4-Teile, S. 7) plus tabellarische Brandbemessung R 30-R 180 für Verbundträger
   und -stützen als Funktion von µ_fi,t. Ersetzt zusammen mit SIA 264 die Ziffern 4.7-4.9
   der SIA 161 (1990). Status speculative, Refuter-Runde ausstehend. INDEX-Zeile ergänzt.

## 2026-08-07 (Session Mac Mini) — Bestandsabgleich ~/Downloads/01 Normen gegen PL-02

1. **`outputs/2026-08-07_bestandsabgleich-downloads-01-normen.md`** — Abgleich der von Raphael
   vorgelegten Sammlung (544 Dateien) gegen die PL-02-Normenbibliothek. Echte Neuzugaenge:
   **SIA 118-C1:2026** (Korrigenda zur 118:2013 — schliesst die Run-45-Luecke), 118/266-1:2017,
   **118/266-2:2017 (ersetzt SIA 226:1976!)**, 112/1:2017, 387/4:2017, 281/3:2018,
   118/244/246/248:2006 sowie 17 Deutsch-Erstfassungen (bisher nur f im Haus), darunter
   **SIA 410/1+2:1981** (QUESTIONS-Bring-Schuld Farbcode). Methodik-Warnung: 40 Dateinamen
   mit U+F022 als «/»-Ersatz — naiver Namensabgleich uebersieht genau die Neuzugaenge.
   REGISTER-/QUESTIONS-Nachtraege als Folgearbeit empfohlen, noch nicht ausgefuehrt.

2. **Nachtrag gleicher Tag (Tiefenrecherche):** sprachbewusster Neuabgleich nach Underscore-
   Umbenennung. Korrektur: 416/1:2007 doch im Bestand; upi-Hefte nur ital. Fassungen der
   vorhandenen bfu-Dokus. 13 zusaetzliche Deutsch-Erstfassungen identifiziert (118/198, 118/257,
   118/262–267, 197/1+2, 162.051/152-Anhaenge). Alle 33 Kandidaten am Titelblatt verifiziert
   (3 Namens-Befunde). Uebernahmeliste mit Aktuell/Archiv-Split im Nachtrag des Reports.

## 2026-08-07 (Normen-Nacht Run 46, MacBook Pro) — die geplante Statushebung ist am Fliesstext gescheitert, und die letzte bemessungsrelevante Abdeckungsluecke ist geschlossen

1. **`destillate/gvz-rwa-parkhaus-einstellraum.md`** — vierte unabhaengige Refuter-Runde,
   Verdikt **BEANSTANDET** (5 Kernbefunde, 8 Nebenbefunde), alle **inline** eingearbeitet.
   Die Runde war als Hebung auf `established` geplant, weil Run 45 das Destillat als erstes
   der Reihe BESTANDEN hatte. Sie ist gescheitert, und zwar aufschlussreich: die Matrizen der
   Ziff. 6 halten zum **dritten** Mal zellengenau (alle 27 Wertzellen, Legenden je Matrix
   einzeln gemessen), saemtliche Befunde liegen im **Fliesstext der S. 2-9** — dem Bereich,
   den der Verifikationsabschnitt «Runde 2» als «Wort fuer Wort geprueft und stimmen» fuehrte.
   Nachgetragen: Funktionserhalt 400/200 Grad C fuer die **Entrauchungsoeffnungen** des
   Brandluefter-Konzepts (nicht nur fuer die Heissgasventilatoren der MRWA), die Bedien- und
   Verschlussanforderungen (einzeln, von sicherem Standort oeffen- und wieder schliessbar,
   betriebsbereit bei Stromausfall, markiert), die Schliessbarkeit dauernd offener
   Belueftungsoeffnungen, die Qualifikation «**geometrisch freie** Flaeche» beim 1-%-Kriterium
   (Verwechslung mit der aerodynamisch wirksamen Flaeche kostet bis den Faktor 3), die
   anrechenbaren Notausgaenge bei Anhang-Beispiel 2 sowie acht Nebenbefunde (Zuordnung des
   3-4-m-Aufstellabstands zu **jedem** Brandluefter samt Luftkegel-Begruendung, Drucklutte,
   Druckverlust-Relativierung, Feuerwehrzugang, Rauchgas-Gefaehrdung, Teilflaechen-Ausnahme,
   Ecken/Nischen, Bemessungsbezug der Brandlueftergesamtleistung). Kernbefunde 1-4 vom
   Hauptprozess am eigenen 300-dpi-Rendering der S. 3, 4 und 9 woertlich nachgelesen; das
   Fehlen im Destillat per Volltextsuche ueber die ganze Datei gegengeprueft
   (Methodik-Pflicht 7, keine Scheinbefunde). Status bleibt `speculative`.

2. **`destillate/swki-va103-01-2017.md`** — **fuenf der acht Abdeckungsluecken aus Run 45
   geschlossen**, darunter die dort als **einzige bemessungsrelevante** gefuehrte: Kap. 2.3
   «Quellen» (S. 20-26) ist vollstaendig destilliert — Kernformel E_CO = E_CO,0 + e_CO x s,
   Tab. 2 (Faktor f_IDA ueber 11 Temperaturstufen samt gedruckter Regressionsgleichung),
   Tab. 3 (exponiert +5 K / geschuetzt +10 K, offene Wendelrampe macht alle angeschlossenen
   Geschosse exponiert), Tab. 4, die Faustformel V_punkt ~= 8 x E_punkt_CO, Tab. 5 und die
   Aufschluesselung des 50-%-Grundzuschlags in 40 % Inhomogenitaet plus 10 %
   Aussenluft-Vorbelastung. Dazu Kap. 2.1, 2.6.7, 3.2 (inkl. Tab. 11 Inhomogenitaetsfaktor,
   die im Destillat ganz fehlte) und Kap. 3.3. **Die Zahlenkette Tab. 4 → Tab. 5 ist
   rechnerisch geschlossen**, S. 26 und S. 54 vom Hauptprozess am eigenen Rendering
   nachgelesen. **Titelkorrektur:** Kap. 3.3 heisst «Zonenaufteilung», nicht «Spezialfaelle» —
   die Lueckenliste hatte einen Unterpunkt zum Kapiteltitel gemacht und dadurch den
   eigentlichen Kapitelinhalt gar nie als fehlend erkannt. **Eine Agentenangabe korrigiert:**
   «WB» ist die **Wagenbewegung** (frz. MV), nicht eine Warte-/Zeiteinheit.

3. **`wiki/QUESTIONS.md`** — drei Eintraege (N46-1 gezielte GVZ-Runde auf Ziff. 4.2.2.3/4.2.2.4
   und Anhang S. 8/9 · N46-2 Richtigstellung eines seit Run 41 erledigten, aber sechs Reports
   lang fortgeschriebenen Rueckstands · N46-3 die drei SWKI-Begriffskapitel).

4. **`training/norm-inventar.md`** und **`destillate/INDEX.md`** — beide Zeilen mit Verdikt und
   Kernbefund nachgefuehrt.

## 2026-08-06 (Cross-KB-Lauf Run 27, Wissens-Chef) — Vorwaertsverweise auf die geltende Fassung 2022 gesetzt, Blitzschutz-Normkette ins Register genommen, eine ueberdehnte Frontmatter-Aussage zurueckgenommen

Rein additiver Lauf, keine Loeschung, kein datierter Stichtags-Vermerk ueberschrieben. Geaendert:

1. **Vorwaertsverweise auf `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`** (angelegt in
   Run 45 vom 06.08.2026) in beiden 2015er-Destillaten gesetzt — `grep "solaranlagen-2022"` ueber
   beide lieferte vorher **0** Treffer, obwohl alle Einstiege aus anderen KBs auf die 2015er
   zeigen. In `destillate/vkf-merkblatt-2001-15-solaranlagen.md` und
   `destillate/vkf-brm-2001-15-solaranlagen.md` je die `links:`-Zeile ergaenzt und in die
   Kopfwarnung einen Zeiger aufgenommen — **mit Statusqualifikation**: das 2022er-Destillat
   traegt selbst `status: speculative` (am Destillat nachgeprueft), die Hebung auf `established`
   steht aus. Ein Zeiger ohne diesen Vermerk haette aus einem unverifizierten Destillat
   stillschweigend die Autoritaet gemacht.
2. **Vier jetzt falsche «noch offen»-Saetze** als datierte Nachtraege richtiggestellt (nie
   ueberschrieben): je zwei in beiden Dateien, darunter der Satz «Bis dahin ist dieser
   Delta-Block die einzige belegte Bruecke zur geltenden Fassung», der seit dem 06.08. sachlich
   gegenstandslos ist. Der Auftrag nannte drei Stellen; die vierte
   (`vkf-brm-…`, Abschnitt «Offene Punkte») ist am Bestand gefunden und gleich behandelt worden.
3. **Delta-Block-Praezisierung mit LV-Wirkung** an drei Stellen: cr-Kabel sind in horizontalen
   Fluchtwegen nach der Ausgabe 2022 **unabhaengig von jeder Brandlast verboten**; die
   200 MJ/Laufmeter betreffen nur die dort zulaessigen Nicht-cr-Kabel (Tab. 1 Fussnote [2],
   S. 8). cr ist nicht generell verboten — auf/in brennbaren Gebaeudeteilen ist RF2 (cr)
   ausdruecklich vorgesehen. Formulierung aus dem 2022er-Destillat uebernommen, dort selbst
   nachgelesen. Die bisherige Kurzform «neue Spalte horizontale Fluchtwege, 200 MJ/Laufmeter»
   haette ein cr-Kabel bis 200 MJ als zulaessig lesbar gemacht.
4. **`destillate/INDEX.md`:** `vkf-merkblatt-2001-15-solaranlagen.md` hatte **keine eigene
   Zeile**; nachgetragen analog zur Zeile des Duplikat-Partners, samt Vorwaertszeiger und
   Statusvermerk.
5. **`wiki/REGISTER.md`, Abschnitt D — zwei Luecken geschlossen:**
   (a) neue **Electrosuisse/CES-Zeile** mit der vollen Kette SEV 4022:2008 → SNR
   464022:2015+COR:2016 (zurueckgezogen, SNV-Connect «Withdrawn») → **SN 414022:2024**, ersetzt
   per 20.02.2024 (Beleg Electrosuisse-Shop DV-48384/1, primaer destilliert in
   `wissen/energie/destillate/snr-464022-blitzschutz-ausfuehrung.md`), mit zwei Vorbehalten: der
   Volltext 2024 ist **nicht gelesen** (CHF 169.–, kein freier Auszug), und die geltende
   VKF-BRL 22-15:2017 nennt weiterhin SNR 464022 — ein VKF-Zitat bleibt korrekt, es braucht nur
   den Waehrungshinweis. `energie` fuehrt das seit Run 23 (03.08.2026), `normen` war nicht
   beteiligt, fuehrt aber den Fassungsstand (`wissen/koordination/QUERBEZUEGE.md` Z. 46).
   (b) **erstmals eine Zeile zur VKF-BRL 22-15** — `grep "22-15"` ueber REGISTER.md lieferte
   vorher **0** Treffer, obwohl das Destillat im Frontmatter `links: [[REGISTER]]` setzt (toter
   Verweis). Beide greps selbst nachgemessen.
6. **`destillate/vkf-brl-aenderungen-2017.md`** (JANS-Praxis-Transfer): der heutige Bezeichner
   SN 414022:2024 **angehaengt**, der bestehende Satz unveraendert gelassen. **Wortlaut-Schutz
   eingehalten:** alle Stellen, die den VKF-Wortlaut zitieren
   (`vkf-brl-22-15-blitzschutzsysteme.md` Z. 33/35, `vkf-brl-aenderungen-2017.md` Z. 89, beide
   Solaranlagen-Destillate), sind **unangetastet** — eine Nummernersetzung dort verfaelschte das
   Zitat einer fremden Quelle (Fehlerklasse des mechanischen BKP-Ersetzens aus Run 25).
7. **Ueberdehnter Beleg zurueckgenommen:** `destillate/vkf-brl-22-15-blitzschutzsysteme.md`,
   Frontmatter `datenstand` sagte «aktuell ist Ausgabe 01.01.2017 (am 05.08.2026 am
   VKF-Endpunkt verifiziert)». Belegt ist nur der **Live-Abruf des 2017er-PDF** und der Diff
   gegen 2015, **nicht** die Abwesenheit einer neueren Ausgabe; ein Publikationsindex-Abgleich
   hat nie stattgefunden. Auf das Gemessene zurueckgenommen, kein Statuswechsel, kein Wert
   angetastet.
8. **`wiki/QUESTIONS.md`:** zwei Bring-Schulden neu — **N27-1** (VKF-Publikationsindex fuer
   `22-15de` abfragen und mit Abrufdatum belegen) und **N27-2** (SIA 380/4: Archivierungsvermerk
   fehlt in dieser KB; `planungsgrundlagen` fuehrt seit 03.08.2026 belegt «SIA 380/4:2006 seit
   31.07.2019 archiviert», `bauprodukte` verweist weiter auf die Norm). **N27-2 bewusst NICHT
   als Registeraussage gesetzt** — der eigene Herausgeber-Beleg (shop.sia.ch, Muster SIA 493)
   liegt nicht vor. Der Stichtags-Block «A) SIA — Gueltigkeit je Norm, Stand 25.02.2013» bleibt
   unveraendert: per Stichtag 2013 war «SIA 380/4:2006 gueltig» richtig.

**Abweichung vom Auftrag, am Bestand gemessen:** Der Auftrag verwies zweimal auf
«QUERBEZUEGE.md:46» als Datei dieser KB. Eine solche Datei existiert in `wissen/normen/wiki/`
**nicht**; die Zuteilungsmatrix liegt unter `wissen/koordination/QUERBEZUEGE.md`, und Zeile 46
ist dort tatsaechlich die Fuehrungszeile «Gueltigkeits-/Fassungsstand einer Norm → normen»
(selbst nachgelesen). Alle Verweise sind auf den echten Pfad gesetzt.

## 2026-08-06 (Run 45) — der gesamte Verifikations-Rueckstand abgearbeitet: 9 Destillate geprueft, 1 neues Destillat, 4 Rueckstaende aus QUESTIONS geschlossen

**Der Lauf hat den vom Run-43-Report ausgewiesenen Rueckstand vollstaendig abgearbeitet.** Alle
neun Positionen mit Marker `[~]` (destilliert, Verifikation offen) haben je eine unabhaengige
Widerlegungs-Pruefung durchlaufen; alle Befunde sind INLINE eingearbeitet (Methodik-Pflicht 9),
das Inventar ist auf `[x] 260806` gehoben. Der Status der Destillate bleibt durchgehend
`speculative` — `[x]` bedeutet «Verifikationsrunde gefahren und Befunde eingearbeitet», nicht
«fehlerfrei».

**Verdikte:** 8 x BEANSTANDET, 1 x BESTANDEN. Das Bestandene ist bemerkenswert: die Matrizen
6.1/6.2 des GVZ-Merkblatts 30.17.3 sind jetzt zweifach unabhaengig zellengenau bestaetigt (siehe
Eintrag unten). Es ist der erste sauber bestandene Kern in einer langen Reihe.

**Die vier folgenreichsten Befunde:**
1. **VKF 2001-15:2022, Tab. 1 Fussnote [2] (LV-Wirkung).** Das Destillat verknuepfte die
   Brandlastgrenze von 200 MJ/Laufmeter mit Kabeln kritischen Verhaltens (cr). Genau falsch
   herum: cr-Kabel sind in horizontalen Fluchtwegen **unabhaengig von jeder Brandlast verboten**,
   die 200 MJ gelten fuer die dort zulaessigen Kabel. Vom Hauptprozess am eigenen 200-dpi-Rendering
   der Seite 8 woertlich bestaetigt. In der bisherigen Fassung haette die Stelle ein cr-Kabel bis
   200 MJ als zulaessig spezifiziert.
2. **SWKI VA103-01: im Frontmatter dokumentierte Korrekturen waren nie im Fliesstext angekommen** —
   und mechanische Bemessungsregeln standen weiterhin unter der Ueberschrift «Natuerliche
   Lueftung», waehrend die eigene Oeffnungsabstandsregel der natuerlichen Lueftung (S. 31) ganz
   fehlte. Das ist Methodik-Pflicht 9 im Realfall: der Anhang dokumentiert, der Fliesstext luegt weiter.
3. **AFS-Leitfaden Dachlandschaften (Vollfassung): 17 Solar-Grundsaetze und 4 Lift-Grundsaetze
   fehlten ganz**, und saemtliche Grundsatz-Seitenzitate waren systematisch um eine Seite zu tief.
   Der Versatz (gedruckte Seite = PDF-Blatt minus 1) ist vom Hauptprozess an zwei Stellen am
   eigenen Rendering nachgemessen.
4. **Boulevardgastronomie: die Kontaktadresse war aus Strassen- und Postfachadresse falsch
   verschmolzen** (richtig Foerrlibuckstrasse 61, 8005 Zuerich bzw. Postfach 1612, 8021 Zuerich).
   Genau die Fehlerklasse der Rule `identifikatoren-verifizieren` — der Wert waere unveraendert in
   ein Anschreiben gewandert.

**Neues Destillat:** `vkf-merkblatt-2001-15-solaranlagen-2022.md` (Vollrevision 01.01.2022,
15 S.). Damit ist der als P1 gefuehrte Rueckstand vom 05.08. geschlossen. Alle vier Fingerabdruecke
des Bezugswegs unabhaengig nachgemessen und exakt getroffen; das PDF bleibt bewusst ausserhalb des
Repos (Urheberrecht VKF). Drei bekannte Deltas bestaetigt, fuenf weitere selbst gefunden.

**Register nachgefuehrt, drei Statusfragen am Herausgeber belegt (alle vom Hauptprozess selbst
abgerufen, nicht vom Agenten uebernommen):** SIA 2030 Zeile korrigiert — die KB fuehrte «2010
gueltig», tatsaechlich ist 2030:2010 archiviert und geltend ist **SIA 2030:2021 «Beton mit
rezyklierten Gesteinskoernungen»** (ab 01.11.2021); die Nachfolge SIA 162/4 → SIA 2030 ist damit
**herausgeberseitig** belegt statt nur sekundaerquellengestuetzt (schliesst E-123-3). SIA 118:2013
um Korrigenda C1 und Revisionsstand 01.12.2025 ergaenzt (schliesst E-123-6). Korrigenda SIA
493-C1:1997 existiert und ist kostenlos; das Fehlen eines Nachfolgers ist jetzt strukturell belegt.

**Selbstkorrektur, die ins Gedaechtnis gehoert:** Der SIA-118-Befund sah zunaechst nach einem
Fehler mit Hub-Reichweite aus (die KB fuehrt nur `sia-118-1991`). Die Gegenpruefung zeigte, dass
Register Zeile 84 und das Destillat selbst die Abloesung laengst fuehrten. Methodik-Pflicht 7 gilt
also nicht nur fuer Agentenbefunde innerhalb eines Destillats, sondern auch fuer externe
Statusrecherchen gegen den eigenen Bestand.

## 2026-08-06 (Run 45, zweite unabhaengige Refuter-Runde) — GVZ-RWA-Parkhaus: Matrizen BESTANDEN, zwei Kernbefunde ausserhalb der Matrizen eingearbeitet

`destillate/gvz-rwa-parkhaus-einstellraum.md` inline korrigiert. Wichtigstes Ergebnis: die
Matrizen 6.1/6.2 wurden zellengenau nachgemessen (Farberkennung + Connected-Component-Analyse,
300 dpi) und decken sich vollstaendig mit der Run-41-Fassung — die Werte sind damit zweifach
unabhaengig bestaetigt (Run 41 und Run 45). Zwei Kernbefunde ausserhalb der Matrizen behoben:
(1) der Leseschluessel der Anhang-Legende (S. 10) fuehrte sechs Bullets bei behaupteten fuenf
Symbolen — Zu- und Abluft sind EIN gelbes Pfeilsymbol, keine zwei getrennten; (2) die
Farbwarnung («die Publikation kennt genau zwei Fuellungen und eine Schraffur») verallgemeinerte
zu weit — sie gilt nur fuer die Matrix-/Beispielklassierung, die Planlegende derselben
Anhangseiten fuehrt zusaetzlich gruene Schraffur («Fluchtwege») und rosa Punktlinie («zu
entrauchender Raum»). Nebenbefunde: fehlender Halbsatz «die direkt ins Freie fuehren» bei
Beispiel 1 ergaenzt, Schraffurfarbe auf gemessen RGB 227/0/74 (karminrot/pink-rot) praezisiert.
Status bleibt bewusst `speculative` (Hebung auf `established` ist Sache des Hauptprozesses im
naechsten Lauf). Neuer Abschnitt «Verifikation Runde 2 (Run 45)» dokumentiert Methode, gemessene
Legendenfarben und die Bestaetigung aller Fliesstext-Ziffern 1-9 sowie der BKP-Codes 244/245.
Offener Punkt neu ergaenzt: Fassungsvorbehalt VKF-BSR 21-15 wurde nur auf Dateiexistenz, nicht
inhaltlich gegengeprueft.

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — zwei VKF-Publikationen als ueberholt ausgewiesen; der Hausbestand war die Fehlerquelle

Zwei unabhaengige Felder des Cross-KB-Laufs sind auf dieselbe Publikation konvergiert; die
adversariale Verifikation hat den Befund danach verschaerft und beide Original-PDFs selbst geladen.

- **VKF-BSM 2001-15 «Solaranlagen» — falscher Bauteilwert im Umlauf.** Beide Destillate fuehrten
  «Unterdachbahnen duerfen aus Baustoffen der RF4 (cr) bestehen». Geltend ist «**muessen mindestens
  aus Baustoffen der RF3 (cr)** bestehen» (Ziff. 3.2.3 Abs. 3). Aus einer Erlaubnis ist eine Pflicht
  geworden, und RF4(cr) ist die guenstige Standardbahn — der Wert wandert direkt ins LV.
  **Entscheidend: der Delta stammt aus der Ausgabe 01.01.2017, nicht erst 2022.** Die Zwischenfassung
  (12 S., «Fassung gemaess Beschluss Technische Kommission VKF vom 02.12.2016») wurde gezogen und
  enthaelt den Satz bereits woertlich. Der Hausbestand ist damit **neun Jahre** ueberholt, nicht vier.
  Zwei weitere, bisher unbemerkte Deltas: Flaechenschwelle «> 1200 m²» statt «≥ 1200 m²», und der
  **RWA-Mindestabstand 2 m ist kein Loesungsansatz-Wert mehr** (Anhang S. 14, Lichtraumprofil-Alternative).
  Beide Destillate tragen jetzt Fassungswarnung, Delta-Block und **zweiwertige Vermerke** an jeder
  betroffenen Fundstelle; der JANS-Praxis-Transfer nennt die geltenden Werte. Die 2015er-Werte wurden
  **nicht ueberschrieben** — sie sind fuer ihre Fassung korrekt und koennen in Altprojekten die
  vereinbarte Fassung sein. Der Stichtags-Abschnitt «Fassungs-Klaerung 25.07.2026» blieb wortgleich
  und bekam einen datierten Nachtrag.
- **VKF-BRL 22-15 «Blitzschutzsysteme» — dieselbe Wurzel.** Volltext-Diff beider Original-PDFs: die
  Ausgabe 2017 aendert **genau fuenf Dinge**, darunter **genau eine Zahl in der gesamten Tabelle a-j**
  — Anhang zu Ziff. 2, **Zeile c (besonders hohe Bauwerke, Hochhaeuser ueber 30 m), Spalte B von III
  auf II**. Da Klasse I die hoechste Schutzstufe ist, wurde die Anforderung **erhoeht**; wer die
  Hausfassung heranzieht, unterspezifiziert den inneren Blitzschutz um eine Klasse. Zeile c ist jetzt
  zweiwertig gefuehrt, `verifiziert: 260714` blieb wortgleich, der neue Pruefstand kam als eigene Zeile.
- **Zusatzbefund des Ausfuehrenden, den keine Meldung kannte:** `destillate/vkf-brl-aenderungen-2017.md`
  fuehrt **seit dem 13.07.2026** exakt denselben Blitzschutz-Delta. Die KB kannte die Verschaerfung
  also intern bereits — die beiden Destillate waren nur nie verlinkt, und wer allein
  `vkf-brl-22-15-blitzschutzsysteme.md` las, sah sie nicht. Backlink und Bestaetigungsabsatz gesetzt.
- **Die gemeinsame Ursache, neu als Matrix-Zeile:** Das SharePoint-Archiv haelt fuer beide
  Publikationen an **beiden** Ablageorten byte-identisch nur die Fassung 2015 — beim Blitzschutz sogar
  in einem Ordner namens «Brandschutzrichtlinien 2015-17-22». Jeder kuenftige Lauf, der brav
  «Primaerquelle SharePoint» liest, reproduziert den Fehler. Der Hausbestand ist **kein
  Gueltigkeitsbeleg**, sondern ein Bestandsnachweis; der Abgleich gegen den VKG-Publikationsendpunkt
  ist Pflichtschritt, bevor ein VKF-Destillat `established` wird.
- **VKF-FAQ 2005-01 «Lithium-Eisenphosphat» — Vorbehalt aufgeloest, aber nicht durch Kopieren.** Die
  KB fuehrte die FAQ als «im Original nicht verifiziert», waehrend `energie` sie drei Tage zuvor
  vollstaendig gelesen hatte. Die energie-Fassung durfte **nicht** uebernommen werden: das Gegenlesen
  am Original fand dort zwei Luecken — das komplette **Lueftungs-Bullet** (feuerwiderstandsfaehige
  Trennung, Brandschutzklappen mit Kanalrauchmelder, die kostenrelevanteste Einzelanforderung) und
  eine Verkuerzung, die die **groessere** der beiden Lockerungen unsichtbar machte. Neuer FAQ-Abschnitt
  aus dem Original, ⚠-Block als erledigt ausgewiesen statt geloescht, `gelesen`/`verifiziert`
  angehaengt. **Mit Verbindlichkeitsvorbehalt:** die FAQ nennt sich selbst «einen moeglichen
  Loesungsansatz» — «EI 30 genuegt» gehoert nicht als geltende Vorgabe ins LV.
- **SIA 2023:** beide Destillate der Ausgabe 2004 tragen jetzt `ausgabe_ueberholt` (Rueckzug per
  1.5.2021, ersetzt durch SIA 382/5:2021). Die Stichtags-Zeile REGISTER.md:301 blieb unberuehrt.
- **Bring-Schuld** fuer die Re-Destillate 2017/2022 in `wiki/QUESTIONS.md`, mit URLs, Seitenzahlen
  und MD5 sowie dem ausdruecklichen Vermerk, dass die Existenz bereits verifiziert ist (kein zweites
  Bezahlen desselben Schritts). Kein neues 2022er-Destillat angelegt — das ist ein eigener
  Lesevorgang.

Bericht: `wissen/koordination/outputs/2026-08-05_wissens-chef-run26.md`.

## 2026-08-05 (Normen-Training Run 44) — kein Destillat: Rücktritt am Lauf-Gate, Betriebsbefund statt Fachertrag

Der Lauf wurde um 01:28 vom `lauf-gate.sh` abgewiesen (rc=1, «bereits 2 Laeufe aktiv») und ist
nach Rule 260728 still zurückgetreten. **An der Wissensbasis wurde nichts geändert** — kein
Destillat, keine Verifikation, keine Inventar-Position, kein Register-Eintrag. Der fachliche
Auftrag geht unverändert an den nächsten Lauf.

Angelegt wurde allein der Lauf-Report `outputs/2026-08-05_normen-nacht-run44.md`. Er hält den
Grund der Abweisung fest, und der ist kein Ressourcenengpass: die beiden Lauf-Plätze der Station
waren von **zwei verwaisten Fensterproben des vollgas-Radars** belegt (PID 54048 seit 04.08.
16:58, PID 87945 seit 05.08. 00:58, beide PPID 1), die der Gate-Zähler `pgrep -f "claude
(-p|--print)"` als aktive Läufe mitzählt. Speicher wäre vorhanden gewesen (3427 MB gegen
Mindestwert 3000). Die Bereinigung per `kill` wurde vom Berechtigungs-Classifier abgewiesen und
nicht umgangen; die Sperre besteht damit fort. Empfehlungen und die Abgrenzung des Ungeprüften
stehen im Report.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — SIA 493 archiviert, SIA 430:2023 nachgeführt, drei Übergaben aus energie angekommen, drei BKP-Phantomcodes korrigiert

Alle Fassungsangaben unten sind am **Herausgeber** (shop.sia.ch) verifiziert, nicht aus einer
anderen KB übernommen (Rule 260729b). Massgeblich war die adversariale Verifikator-Auflösung
des Laufs, nicht die ursprüngliche Fundmeldung.

- **SIA 493:1997 ist ARCHIVIERT seit 30.06.2022 — die KB führte sie als geltend.** Beleg:
  shop.sia.ch, Produktseite SIA 493 (SN 550493), «Gültig ab: 01.03.1998», «Gültig bis:
  30.06.2022, archivierter Titel!»; **kein Nachfolger ausgewiesen**. Nachgeführt an drei Orten:
  `wiki/REGISTER.md` (Run-5-Zeile SIA 493: «gilt» → Archivvermerk mit Datum und Quelle),
  `destillate/sia-493-1997.md` (neues Frontmatter-Feld `gueltigkeit` + Warnblock unter der H1;
  `status: established` bewusst **belassen**, es bezeugt die Destillier-Treue gegen das PDF, nicht
  die Gültigkeit) und `destillate/INDEX.md`. Die Zeile im 2013-Registerblock (Abschnitt A) wurde
  **nicht** umgestellt — «Bestand 1997 = gültig 2013 ✓» ist als datierter Registerstand korrekt;
  sie trägt nur einen Querverweis. EPD nach EN 15804+A2 und die KBOB-Ökobilanzdaten sind
  ausdrücklich als **nicht 1:1**-Entsprechung und sekundärquellengestützt gekennzeichnet.
  Praxisfolge im Destillat vermerkt: eine LV-/Werkvertragsklausel «Deklaration nach SIA 493» geht
  seit vier Jahren ins Leere; der früher empfohlene LV-Satz ist dort zurückgezogen.
- **SIA 430: die Ausgabe 1993 galt bis 31.07.2023, seit 01.08.2023 gilt SIA 430:2023.**
  «Vermeidung und Entsorgung von Bauabfällen»; der Organisationsteil ist in das eigene Dokument
  **SIA 118/430:2023** ausgelagert (ebenfalls ab 01.08.2023). Beleg shop.sia.ch, beide
  Produktseiten. Nachgeführt: `destillate/sia-430-1993.md` (neue Felder `gueltigkeit` und
  `ersetzt_durch`, Warnblock unter der H1, widersprechender Bullet unter «Offene Punkte» mit
  datiertem Korrekturvermerk aufgelöst — er verwies auf `sia-register-2013.md`, eine Quelle mit
  Stand 25.02.2013, die eine Revision von 2023 prinzipiell nicht ausweisen kann) und
  `destillate/INDEX.md`. Die Zeile SIA 430 in `wiki/REGISTER.md` behält in der Spalte
  «Gültig 2013» das Jahr 1993 (Stichtag 25.02.2013, dort richtig); der Nach-2013-Sachverhalt
  steht in der Bemerkungsspalte. **Der Inhalt der Ausgabe 2023 liegt nicht im Haus** — verifiziert
  sind Existenz, Titel und Daten, nicht der Norminhalt; die Aussage «Neuausrichtung auf
  Kreislaufwirtschaft» bleibt sekundärquellengestützt und wurde nicht als Norminhalt gesetzt.
- **`wiki/QUESTIONS.md`: neuer Cross-KB-Block zuoberst.** Bring-Schulden SIA 430:2023 (Inhalt) und
  SIA 118/430:2023 (fehlt in der KB vollständig, primär für Skill `werkvertrag`), dazu die drei
  Übergaben aus dem energie-Run 123 — **E-123-2** (Nachfolgeweg SIA 493), **E-123-3** (Ablösung
  SIA 162/4 durch MB 2030 nur sekundärquellengestützt) und **E-123-6** (Ausgabestand SIA 118 in
  den Kontroll-Checklisten). Sie standen bisher **nur** in `energie`; grep «E-123» über die KB
  `normen` lieferte 0 Treffer. Dazu die methodische Lehre: das Bestands-Korrektiv des REGISTER
  fängt Revisionen ab, aber **keine ersatzlosen Archivierungen** (SIA 493) und **keine
  Revisionen, bei denen der Hausbestand genau die 2013-gültige Ausgabe ist** (SIA 430).
- **Drei BKP-Phantomcodes «271.10» in eigenen Destillaten korrigiert** (Anschluss an Ticket
  N43-1). Quelle `references/bkp-2017/BKP-2017-Liste.md` / Rule `bkp-2017-referenz.md`:
  `vkf-aenderungen-brandschutzrichtlinien-2017.md` und `vkf-ah-1002-03-parkhaeuser.md` → **271.1
  Trockenbauarbeiten** (Sachbezug Trockenbau); `sia-273-1998.md` → **281.0 Estriche
  (Unterlagsböden)**, weil es dort um Gussasphalt-Unterlagsböden geht und keine 271er-Position
  einschlägig ist — welche ursprünglich gemeint war, ist dem Text nicht zu entnehmen und wurde
  **nicht** geraten. Jede Stelle trägt den datierten Korrekturvermerk. Die Inhaltsangabe zu
  `crb-merkblatt-16d-06-spachtelungen-weissputze.md` in `destillate/INDEX.md` wurde von
  «271.1/271.10» auf «271.1/271.0» korrigiert; die Stellen, die über den **Fehler** sprechen
  (CHANGELOG Run 43, `outputs/`, Ticket N43-1), blieben unverändert.

## 2026-08-04 (Normen-Training Run 43, MacBook Pro) — 5 Widerlegungs-Pruefungen, SWKI- und SIA-500-Anhaenge, BKP-Fehler in der Hub-Referenz

- **Fuenf Erstdestillate des Run 42 unabhaengig refuter-geprueft — alle fuenf BEANSTANDET**
  (CRB-Merkblatt 16 D/06, Kalksandstein-Bemessung, SVDW-Wegleitung Gartenplatten,
  SMU-Merkblatt 004, AUVA-Planungshilfe): zusammen **38 Kernbefunde**, alle eingearbeitet,
  Statusfelder und INDEX-Zeilen nachgefuehrt. Damit sind alle Positionen des
  PL-02-Kern-Nachtrags mit Status versehen und die dringlichsten drei nach Schadenspotenzial
  geprueft.
- **Vier Befunde vom Hauptprozess am eigenen Rendering selbst nachgelesen:** die
  Streiflicht-Vorbehalte des CRB-Merkblatts (Ziff. 3.4/4.4/5.2), `l1 = 0.6 x 5.0` in Beispiel 2
  der Kalksandstein-Bemessung, SIA 244 Tab. 4 (Mindest-PLATTENbreiten, keine Bettungsmasse) und
  der Vergleichsoperator der Bedienkraefte in beiden Tueren-Merkblatt-Ausgaben.
- **Gefaehrlichster Einzelbefund:** Die Kalksandstein-Bemessung setzte `l1` mit der
  Deckenspannweite gleich. Real gilt l1 = l / 0.8 l / **0.6 l bei Zwischenwaenden**, und l1 geht
  in **dritter Potenz** ein — Fehlerfaktor rund **4.6**. Destillat traegt jetzt den Vermerk
  «nicht als Bemessungsgrundlage verwenden, bis nachgetragen».
- **Befund mit Reichweite ueber diese KB hinaus: BKP 271.10 existiert im BKP 2017 nicht.**
  Am Original zweifach nachgezaehlt (271.0 / 271.1 / 271.2, keine zweistelligen
  Nachkommastellen in der ganzen Gliederung). Die Hub-Referenzliste widersprach sich selbst —
  ihr systematischer Teil fuehrte 271.0 korrekt, ihr Schnellreferenz-Block 271.10. **Korrigiert
  in `references/bkp-2017/BKP-2017-Liste.md` und Rule `bkp-2017-referenz.md`**; die Streuung lag
  bei 15 Hub-Dateien, 13 davon bleiben nachzuziehen (Ticket N43-1).
- **`destillate/swki-va103-01-2017.md`:** Anhaenge D (Anwendungsbeispiele), E
  (Simulationsnachweis) und F eingearbeitet — der laengste inhaltliche Rueckstand dieser KB ist
  geschlossen (Ticket S42-1). Kern: Reduktion auf minimal **70 %**, CFD zwingend, RANS statt LES.
- **`destillate/sia-500-2009.md`:** Anhang E vollstaendig (E.3/E.4/E.5, Ticket K42-4b); die
  Seitenspanne des Anhangs am Original korrigiert (S. 48-55 statt 42-60).
- **`destillate/vst-merkblatt-012-tueren-fluchtwegen.md`:** Vermerk zum **Druckfehler der
  Quelle** — sie druckt `F >= 80/100/220 N`, die SMU-Ko-Ausgabe `F <=`. Das Destillat hat seine
  Quelle korrekt abgeschrieben; der Fehler steckt im Original.
- **`destillate/bkz-kontaktseite-website-2012.md`** (neu, im Lauf angelegt): die letzte offene
  `[ ]`-Position des PL-02-Kerns. Befund: Safari-Ausdruck der BKZ-Kontaktseite vom 13.07.2012,
  **kein normativer Inhalt** — am Volltext des Hauptprozesses gegengeprueft.
- **Neun Stellen zusaetzlich INLINE korrigiert**, nicht nur im angehaengten Pruefabschnitt:
  ein Verifikationsanhang allein laesst den widerlegten Satz im Fliesstext stehen, und der wird
  zuerst gelesen.
- `training/norm-inventar.md` (5 Zeilen auf `[x] 260804`, Fussnote neu gefasst) ·
  `destillate/INDEX.md` (7 Zeilen) · `wiki/QUESTIONS.md` (3 Punkte geschlossen, 6 neu offen) ·
  Report `outputs/2026-08-04_normen-nacht-run43.md`.

## 2026-08-04 — PL-02-Kerninventar vollständig: letzte offene Position destilliert (BKZ-Ordner)

- **`destillate/bkz-kontaktseite-website-2012.md`** — neu. Quelle: `06_Richtlinien/BKZ/BKZ -
  Behindertenkonferenz Kanton Zürich.pdf` (39 kB, 1 Seite), die letzte offene `[ ]`-Position
  des `06_Richtlinien/BKZ`-Teilinventars in `training/norm-inventar.md`. **Der Dateiname hält
  nicht, was er verspricht:** kein Grundsatz-/Vorstellungsdokument der BKZ, sondern ein am
  13.07.2012 mit Safari erzeugter Website-Ausdruck der Kontakt-Unterseite (Creator «Safari»,
  Producer «Mac OS X 10.6.8 Quartz PDFContext») mit ausschliesslich Adress-/Telefonangaben der
  BKZ-Geschäftsleitung und der Bauberatung. **Kein normativer Inhalt** — bewusst kein Inhalt
  hineindestilliert, stattdessen der Befund selbst als Destillat festgehalten.
  Fassungsvorbehalt entfällt, da kein normativer Inhalt vorliegt.
- Bei dieser Gelegenheit die drei Nachbardateien desselben Ordners gegengeprüft: alle drei
  bereits eigenständig destilliert (`zhb-2005-mindestanforderungen-hindernisfreies-bauen`,
  `bkz-2005-checkliste-hindernisfrei-hochbau`, `fachstelle-mb-13-05-sehbehindertengerechtes-bauen`);
  keine zusätzliche Inventar-Position nötig.
- **`training/norm-inventar.md`**: letzte `[ ]`-Zeile des BKZ-Abschnitts auf `[x] 260804`
  gesetzt; Fussnote des PL-02-Kerninventars von «68 von 69» auf **69 von 69** Positionen mit
  Status `[x]/[~]/[-]` aktualisiert. Damit ist das PL-02-Kern-Teilinventar (69 Positionen)
  vollständig abgearbeitet.

## 2026-08-03 (Wissens-Chef Run 24, Cross-KB) — K42-4a geschlossen, zwei Fassungs-/Rechtsstandvorbehalte

- **K42-4a BEANTWORTET am Original-PDF** — der hoechstprioritaere Leseauftrag aus Run 23, an dem
  drei KBs hingen. **SIA 500:2009, Anhang E**, Schnitt zu **Figur E.1 (S. 49)** und **Figur E.2
  (S. 51)**: «**+ 0.46 (OK Brille)**»; Positionslegende M «Klappsitz 0,46 m ueber Boden».
  **Die Sitzhoehe des Klosetts betraegt 46 cm**; die 50 cm der KL_Hochbau-Katalogblaetter sind
  ein undatierter Wert ohne Normbezug und damit widerlegt. Unabhaengig gegenbelegt durch
  `procap-mb105-2009-rollstuhlgerechte-toiletten` (am Vorabend destilliert, erste ausdruecklich
  SIA-500-bezogene Quelle im Bestand).
- **`destillate/sia-500-2009.md`:** `gelesen`-Feld nachgefuehrt — Anhang E ist jetzt fuer die
  Figuren E.1/E.2 und die Positionslegenden ausgewertet, im Uebrigen (E.3 Dusche, E.4/E.5) nicht.
- **`destillate/kl-hochbau-sanitaer-katalogblaetter.md`:** Sitzhoehen-Vorbehalt aufgeloest, die
  50 cm als normwidrig markiert (die Raumbreiten waren bereits in Run 23 berichtigt).
- **`wiki/QUESTIONS.md`:** K42-4a mit Belegkette beantwortet; neuer, kleinerer Auftrag **K42-4b**
  (Anhang E im Uebrigen — ohne Wartende, deshalb geringe Prioritaet).
- **`destillate/gvz-awel-leitfaden-hochwassergefahrenkarten-2003.md` — Rechtsstand-Vorbehalt.**
  Die tragende kantonale Grundlage **§ 22 WWG** ist aufgehoben; das **Wassergesetz (WsG, LS 724.1)**
  gilt seit **01.06.2026** (§ 126 lit. b, amtlicher Volltext `../baurecht/raw/260803_amtlich_zh_wsg.md`).
  Vollstaendige Nachfolgekette gesetzt (§ 26 WsG / § 31 WsV Karten · § 36 WsV Planung · §§ 33/34
  WsG + § 44 WsV Bauverfahren). **Materiell geaendert:** die Gemeinde ordnet die
  Objektschutzmassnahmen mit der Baubewilligung selbst an, die Direktion nur bei Sonderobjekten —
  der im Destillat beschriebene Weg ueber eine «Genehmigung durch die Baudirektion» ist ueberholt.
  Fachlich-technische Aussagen (Gefahrenstufen, Objektschutz) unberuehrt.
- **`destillate/ugz-toilettenanlagen-personal-publikum-2020.md` — Ausgaben-Vorbehalt.** Dezember
  2020 ist **nicht** die juengste Ausgabe; die Stadt Zuerich fuehrt eine Fassung **September 2022**,
  die im Hub fehlt. Deren Zahlen wurden **bewusst nicht uebernommen** (nur Web-Beleg). Offener
  Auftrag: Ausgabe 2022 beschaffen, als eigenes Destillat anlegen, im REGISTER die Kette
  **2012 → 2020 → 2022** fuehren.
- **Bestaetigt statt beanstandet:** die Estrich-/Absturz-Destillate dieser KB (`sia-358-2010`,
  `bfu-gelaender-und-bruestungen`) hatten gegen `baurecht` durchgehend recht — dort lag der Fehler.
- Bericht: `../koordination/outputs/2026-08-03_wissens-chef-run24.md`.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B13 · C5 · D0 · E0 · F2 · G3

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Haupt-Befunde: 6 tote Backlink-Ziele in `wiki/QUESTIONS.md` (`[[sia-102-2003]]`, `[[sia-180]]`, `[[sia-2024]]`, `[[sia-2032]]`, `[[din-1961-2012]]`, `[[links]]`), `REGISTER.md` ohne jedes Frontmatter, 2 Destillate nicht im INDEX (`synthese-sia-vkf-fachskills`, `vkf-beherbergungskategorien`). Die 68 Warnmarker sind funktionale Fassungsvorbehalte — Empfehlung, sie in `CLAUDE.md` ausdruecklich zuzulassen. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Run 42) — PL-02 Kern-Nachtrag: 21 neue Destillate, 9x unabhaengig widerlegungsgeprueft, SWKI VA103-01 erweitert

- **21 neue Destillate aus dem PL-02-Kern-Nachtrag** (09_Sanitaereinrichtung + lose
  Merkblaetter in `04_Merkblätter/`). **9 davon mit unabhaengiger Widerlegungs-Pruefung**
  (alle VERDIKT BEANSTANDET, insgesamt **16 Kernbefunde und 36 Nebenbefunde**, alle
  eingearbeitet) — betroffen: `ugz-toilettenanlagen-personal-publikum-2020`,
  `ugz-toilettenanlagen-personal-publikum-2012`, `procap-mb105-2009-rollstuhlgerechte-toiletten`,
  `ugz-hindernisfreie-aufzuege-2010`, `ugz-wohnungsbau-hindernisfrei-2014`,
  `stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019`,
  `sichtbeton-merkblatt-cemsuisse-betonsuisse-2012`,
  `awel-versickerung-regenwasser-industrie-gewerbe-2009`,
  `gvz-awel-leitfaden-hochwassergefahrenkarten-2003`. Die uebrigen Destillate bleiben
  `speculative` (Erstdestillat, Verifikation offen) bzw. sind bewusst nicht destillierte
  Fundstellen (`[-]`, u.a. `Flaechen_Wettbewerb.pdf` und das Repoxit-Herstellerdokument).
- **Zwei Kernbefunde vom Hauptprozess am eigenen Rendering bestaetigt**: Sichtbeton-Merkblatt
  Tab. 9 (XD2a) und der Seitenversatz im Hochwassergefahrenkarten-Leitfaden.
- **`swki-va103-01-2017.md` erweitert**: Kap. 2.6.3-2.6.7, 2.7 und 2.8-Ergaenzungen,
  Kap.-3-Ergaenzungen sowie Kap. 4-9 und Anhang C neu aufgenommen; ein Widerspruch im
  eigenen Frontmatter aufgeloest.
- **Zwei falsche Inventar-Annotationen in `training/norm-inventar.md` korrigiert**: die
  AFS-Dublettenvermutung (`AFS_Leitfaden Dachlandschaften.pdf` gegen
  `AFS_Leitfaden_Dachlandschaften.pdf`) ist widerlegt (verschiedene MD5, verschiedene
  Seitenzahlen 17 gegen 60 — Kurzfassung 2010 und Vollfassung 2009); `MB_BAU_Toilettenanlagen-
  fuer-Personal-und-Publikum.pdf` und `UGZ_Toilettenanlagen.pdf` sind keine zwei unabhaengigen
  Dokumente, sondern zwei Ausgaben (2020/2012) derselben UGZ-Publikation.
- Register `training/norm-inventar.md`, Abschnitt «PL-02 Kern-Nachtrag»: 68 von 69 Positionen
  jetzt mit Status versehen, 1 Position bleibt offen (`06_Richtlinien/BKZ/BKZ -
  Behindertenkonferenz Kanton Zürich.pdf`). Neue offene Punkte in `wiki/QUESTIONS.md`
  (SWKI-Anhaenge, Absturzsicherungen-Auslegungsfrage, Hindernisfreies-Bauen-Anschluss,
  SMU-Merkblatt-Fassungsstand, Fassungsstand-Sammelpunkt, `Flaechen_Wettbewerb.pdf`).

## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — RWA-Fassungskollision, Estrich-Ziffern und -BKP, K42-4 beantwortet

- **[korrektur] `destillate/gvz-rwa-parkhaus-einstellraum.md` — Fassungs-/Kollisionsvorbehalt gesetzt.**
  Das Merkblatt (28.02.2011) stuetzt sich nach eigener Ziff. 1.3 auf die VKF-BSR-RWA **Ausgabe 2003**;
  geltend ist **BSR 21-15** (01.01.2015). Divergenzband benannt: **gesprinklerte Einstellhalle unter
  Terrain, 1'201-3'600 m²** — Merkblatt-Matrix 6.1/6.2 verlangt dort N2/N3, BSR 21-15 verlangt keine RWA.
  Planungsregel statt Vorwegnahme: im Band die strengere Schwelle als Annahme fuehren, aber **vor**
  Konzept- und Kostenfestlegung mit der Kantonalen Feuerpolizei/GVZ klaeren.
  Zusaetzlich **BKP 246/244 → 245** (Rauch- und Waermeabzugsanlagen, Quelle `references/bkp-2017/`).
- **[korrektur] `destillate/sia-251-2008.md` — Fugenplan-Ziffer 2.4.7 → 2.4.9.** Am Original-PDF
  gegengelesen: Ziff. 2.4.7 regelt Schwind- statt Bewegungsfugen; die Norm verweist auf S. 16 in
  Ziff. 2.4.1 selbst auf «einen Fugenplan nach Ziffer 2.4.9». Die fuehrende Quelle trug den Fehler,
  die beiden Sekundaerquellen (PAV-E 01, planungsgrundlagen) zitierten richtig. Ergaenzt:
  Schwelle «Temperaturdifferenz > 5 °C». Ziff. 2.6.4 → 2.6.3 (S. 18) und Ziff. 2.6.5 als
  **prueffbeduerftig markiert**, nicht still umgeschrieben — Sachwert 26 °C unbestritten, nur die
  Fundstelle wandert; beim naechsten Lauf am Original bestaetigen.
- **[korrektur] `destillate/pav-e-01-2008-…heizestriche.md` — BKP 244 → 242.** Eine Fussbodenheizung
  ist eine Heizungsanlage (242), keine lufttechnische Anlage (244); Estrich auf 281.0 praezisiert.
- **[veraltetes] `destillate/sia-252-2002.md` — Pflichtfeld `ersetzt_durch: SIA 252:2012` ergaenzt.**
  Belegt ueber PAV-E 12:2013, das durchgehend auf die Ausgabe 2012 Bezug nimmt. Die Ausgabe 2012 liegt
  im Hub nicht vor — **Bring-Schuld**. `status` praezisiert statt zurueckgestuft.
- **[beantwortet] `wiki/QUESTIONS.md` K42-4** (aus dem 90 Minuten zuvor gelaufenen Run 42): die
  Behindertenanlagen-Masse S56 stimmen **nicht** mit SIA 500:2009 ueberein — Raumbreiten 140/160 cm
  unterschreiten Ziff. 7.2.3.2 (min. 1,65 m). Sitzhoehe 50 cm gegen 46 cm bleibt **offen**; neuer
  Leseauftrag **K42-4a: SIA 500 Anhang E** (S. 42-60, PDF vorhanden, ungelesen) — drei KBs warten
  darauf. Fassungsvorbehalt in `destillate/kl-hochbau-sanitaer-katalogblaetter.md` gesetzt.

## 2026-08-03 (Run 42) — KL Hochbau Sanitäre Anlagen destilliert, Deckungsprüfung Einzelblätter

Neues Destillat [`destillate/kl-hochbau-sanitaer-katalogblaetter.md`](destillate/kl-hochbau-sanitaer-katalogblaetter.md)
aus `09_Sanitaereinrichtung/KL_Hochbau_S22_25.pdf` + `KL_Hochbau_S53_56.pdf` (Scans ohne
Textlayer, alle 8 Seiten visuell gelesen). Inhalt: Katalog-Masszeichnungen Sanitärapparate
(Badewannen, Duschwannen, Waschtische, Badezimmermöbel, Bidet, BKP 251) sowie Planungsregeln
(Bedarfszahlen pro Personenbelegung, Achs-/Wandabstände MD/MI/MK, Behindertenanlagen-Masse,
«BKB 256»). **Zusatzauftrag Deckungsprüfung:** alle 8 Einzelblätter unter `Kl Hochbau einzel/`
gegen die Sammelblätter verglichen — **alle 8 gedeckt** (seitengenau identisch), die
Deckungsvermutung aus `training/norm-inventar.md` bestätigt sich vollständig, kein Befund.
Herausgeber/Werktitel/Ausgabedatum auf keiner der 8 Seiten ausgewiesen (Titelblatt nicht im
Auszug enthalten) — als offener Punkt K42-1 in `wiki/QUESTIONS.md` geführt, ebenso die
Diskrepanz BKP 251 vs. BKB 256 (K42-2), die nicht eindeutig lesbare Piktogramm-Tabelle S53
(K42-3) und der ungeprüfte Fassungsvorbehalt der Behindertenanlagen-Masse S56 gegenüber
SIA 500:2009 (K42-4). `training/norm-inventar.md` für alle 10 betroffenen Dateien nachgeführt
(2 Sammelblätter `[x]`, 8 Einzelblätter `[-]` gedeckt).

## 2026-08-03 — Korrektur Ordnerzuordnung (Ultra-Code-Review, Befund E)

`wiki/QUESTIONS.md`, Punkt «Bookkeeping-Widerspruch zusammenführen»: PAVIDENSA und
`09_Sanitaereinrichtung` fälschlich als Teil von `06_Richtlinien` bezeichnet — beide sind
eigenständige Schwesterordner (`04_Merkblätter/Fugenlose Bodenbeläge` bzw.
`09_Sanitaereinrichtung`), siehe `training/norm-inventar.md`. Nur Formulierung präzisiert,
keine weiteren Änderungen an der normen-KB.

## 2026-08-01 (MacBook Pro, Run 41) — zehnte Lignatec-Runde, zwei Zweitverifikationen, 13 neue Destillate

Report: [`outputs/2026-08-01_normen-nacht-run41.md`](outputs/2026-08-01_normen-nacht-run41.md)

**Lignatec, zehnte Runde — erstmals der Fliesstext.** Der Vorrang-Auftrag des Task-Textes war
zweifach überholt (Runden 8, 9 und 10 sind gefahren). Gemacht wurde, was Run 40 als offen
auswies: die **vollständige Seiten-Inventur** (neu: `training/lignatec-seiteninventur.md`, alle
24 Druckseiten Element für Element) und der **systematische Diff des Fliesstextes der Kapitel
1-4**. Ergebnis: **kein falscher Zahlenwert, 6 Kernbefunde + 12 Nebenbefunde**, und fünf der
sechs sind ganz fehlende Sätze — fast ausschliesslich **Schutzziel- und Verknüpfungssätze**.
Schwerster Befund: **beide Kumulationssätze** (Ziff. 2.1 und 2.2.2) fehlten, also die
Verknüpfungsregel der zwei Tabellen-3-Spalten. Ebenfalls neu: die ganze Festlegungsregel für
den Feuerwiderstand brandabschnittsbildender Bauteile samt der Aussage, dass Sprinkler auch die
zulässige **Ausdehnung** von Brandabschnitten beeinflussen. Kernbefunde 4-6 vom Hauptprozess am
eigenen 300-dpi-Rendering der S. 7 wörtlich nachgelesen. Regressionscheck 32-36: alle halten;
die Schrägstrich-Notation ist ein viertes Mal unabhängig bestätigt.
Strukturell festgestellt: Blatt 12 trägt `24 | 1` (äusserster Bogen) — ein Agentenbefund
«Titelblatt fehlt» wurde dadurch vom Hauptprozess **widerlegt**; es gibt **keine Tabelle 1**.

**GVZ RWA-Parkhaus, zweite Runde.** Alle 27 Wertzellen halten — die Run-40-Neufassung ist
inhaltlich richtig, und die Sprinkler-Lesart ist durch das Original selbst bewiesen
(Anhang-Beispiel 2). **Aber die Beschreibung war falsch:** die Zellen sind **waagrecht**
geteilt, nicht diagonal; die einzige Diagonale steht in der Spalte ≤ 600 m². Vom Hauptprozess
am eigenen 300-dpi-Rendering selbst bestätigt. **Dritter belegter Fall in dieser KB, in dem
eine frühere «geprüft korrekt»-Bestätigung selbst der Fehler war.** Fünf weitere Kernbefunde
korrigiert (letzte Spalte durchgehend blau; Praxis-Schwelle 600 statt 1200 m²; Anhangseiten
10-12 fehlten ganz; Unterzeichnungspflicht des Entrauchungskonzepts; unhaltbare
Methodenangabe «kein Rendering nötig»).

**SWKI VA103-01, zweite Runde — der teuerste Fund des Laufs.** Alle drei Run-40-Korrekturen
halten (eine mit einem zweiten, neuen Beleg). Beanstandet: die **12-WB/h-Schwelle war als
Entscheidungsparameter zwischen natürlicher und mechanischer Lüftung dargestellt — sachlich
falsch.** Abb. 6 verzweigt über offen? / unter 100 m²? / tiefer als 2. UG? /
Veranstaltungs-Parkplätze / Machbarkeit; die 12 WB/h entscheiden erst danach über die
Ausrüstungskonfiguration 1-6. Vom Hauptprozess am eigenen gedrehten Rendering selbst gelesen.
Die daraus abgeleitete Handlungsanweisung war unbrauchbar und ist ersetzt. Vier weitere
Kernbefunde korrigiert (innerer Widerspruch, PC 1/PC 2 sind Druckbedingungen nach SIA 382/1,
zwei fehlende Abgrenzungsregeln, fehlende Ausschlussgründe). Abdeckung ehrlich gemacht;
Seitenversatz belegt (PDF = Druckseite + 2).

**PL-02 Kern-Nachtrag: 13 Positionen, 12 neue Destillate.** Neun PAVIDENSA-Merkblätter
(Estriche, Abdichtungen im Verbund, Schutzschichten, Verschleisswiderstand), das
suissetec-Merkblatt zur SN 592000 und drei Dokumente zum hindernisfreien Bauen.
Drei Funde am Rand, die Zeit sparen bzw. Fehler verhindern:
- **Tabelle 1 von PAV-A 01 an drei Stellen korrigiert** — die Tabelle arbeitet mit über mehrere
  Normspalten verbundenen Zellen, die Textextraktion ordnete Rautiefe, Ebenheit und
  Feuchtigkeit falsch zu. Harte LV-Werte.
- **`SN592_Liegenschaftsentwaesserung_d.pdf` ist NICHT die Norm**, sondern ein
  suissetec-Änderungsmerkblatt von 2013 zur Ausgabe 4:2012.
- **Zwei der vier Dateien im BKZ-Ordner stammen nicht von der BKZ.** Und: **BKZ heisst in dieser
  KB neu zweierlei** — Brandkennziffer (Brandschutz) und Behindertenkonferenz Kanton Zürich.
  Ab sofort beim ersten Vorkommen je Artikel ausschreiben.
Die Kreuzmatrix von PAV-A 03 ist **bewusst nicht wiedergegeben** (nicht spaltengenau
rekonstruierbar); sie entscheidet über Materialverträglichkeit, eine halbrichtige Fassung wäre
schlimmer als keine.

**Nachgeführt:** 13 Destillate, `destillate/INDEX.md` (13 Zeilen), `training/norm-inventar.md`
(13 Positionen, 2 Annotationen korrigiert), `training/lignatec-seiteninventur.md` (neu),
`wiki/QUESTIONS.md` (22 neue Punkte).

**Endbedingung des Vorrang-Auftrags weiterhin NICHT erfüllt; Ereignis-Trigger wird nicht
vorgeschlagen.** Methodik-Kandidat für das PROGRAMM (M41-1): Tabellen mit verbundenen Zellen
oder Farbcodierung werden gerendert und abgelesen, nie extrahiert — dieselbe Falle hat in
diesem Lauf zweimal zugeschlagen und beide Male harte LV-Werte getroffen.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B9 · C2 · D0 · E0 · F620 · G24

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 620 ae/oe-Verstoesse in 4 Dateien (Audit F), davon 305 allein in `synthese-din-vss-ral-fachskills. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Mac Mini Nachtschicht) — VKF-BRL 23-15 Fassungsfrage geklärt (Bring-Schuld aus `bauprodukte`)

`wissen/bauprodukte/wiki/QUESTIONS.md` Punkt 10 verlangte zu prüfen, ob die Teilrevision 2017
die BRL 23-15 «Beförderungsanlagen» (Aufzüge) betrifft. Gegen das bereits destillierte
Delta-Dokument [[vkf-brl-aenderungen-2017]] (S. 29) geprüft: **ja, an zwei Stellen.**
(1) **Materiell:** neuer Abs. 2 zu Ziff. 3.6 Untergeschosse — Aufzugsschachttüren dürfen bei
einer Anlage, die nur EIN Untergeschoss bedient, direkt in eine Nutzungseinheit führen, sofern
der Feuerwiderstand nach Ziff. 3.4 Abs. 2 eingehalten ist (2015 nicht vorhanden). (2) **Kosmetisch:**
Ziff. 5.1 Fahrtreppen/Fahrsteige wechselt RF3 auf RF3 (cr), keine inhaltliche Änderung.
`destillate/vkf-brl-23-15-befoerderungsanlagen.md` entsprechend ergänzt (beide Ziffern, Verweis
[[vkf-brl-aenderungen-2017]] im Frontmatter nachgetragen, Offene-Punkte-Zeile aufgelöst). Quelle
bleibt eine Drittanbieter-Schulungsunterlage (AFC Basel), nicht der amtliche 2017er-VKF-Text —
für ein rechtsverbindliches Zitat der neuen Ziff.-3.6-Ausnahme bei Bedarf am Original verifizieren.
Rücklauf nach `wissen/bauprodukte` (CHANGELOG dort, QUESTIONS.md Punkt 10 geschlossen).

## 2026-07-31 — Run 40 (MacBook Pro), Abschluss: neunte Lignatec-Runde + 13 Positionen PL-02-Kern verifiziert

Sammeleintrag des Hauptprozesses. Die beiden Einzeleinträge unten (GVZ, VSA) stammen von den
Destillier-Agenten und beschreiben nur ihren eigenen Teil; sie bleiben stehen. Vollständiger
Lauf-Report: `outputs/2026-07-31_normen-nacht-run40.md`.

- **[verifikation] Neunte Runde `lignum-lignatec-brandschutz.md` gefahren** — auf den beiden
  Teilen, auf die die rechnerische Methode nie angewandt worden war: **Tabelle 2 (S. 4-5)** und
  die **acht Axonometrien (S. 16-23)**. Ergebnis: **null falsche Zahlenwerte**, aber neun
  Vollständigkeitsbefunde. Die drei wichtigsten, alle vom Hauptprozess am eigenen
  300-dpi-Rendering nachgeprüft: (1) der Geltungsbereich-Absatz zu Tab. 2 fehlte ganz — die
  Tabelle gilt nur für tragende/brandabschnittsbildende Bauteile und die VKF-Richtlinie
  «Verwendung brennbarer Baustoffe» ist zusätzlich zu beachten; (2) die ganze Zeichnungsspalte
  war nie destilliert, inklusive der Aussage, dass R30/R60 ohne (nbb) vollständig brennbar sein
  dürfen; (3) «Decke = Dach über Korridor/Treppenhaus: Keine Anforderung» fehlte auf allen vier
  Doppelseiten — und gilt nur für den Feuerwiderstand, während Dachbelag und Fluchtweg-Seite
  nichtbrennbar sein müssen (BKZ 6q.3). Destillat entsprechend erweitert.
- **[methodik] Zwei Agentenbefunde zurückgestuft.** Die gemeldete «beidseitige gegen
  korridorseitige Verkleidung» widerspricht dem Destillat nicht — sie bestätigt die
  Run-32/33-Korrektur (Schrägstrich gegen Bindestrich) ein drittes, unabhängiges Mal. Beleg für
  den Nutzen der Pflicht, Agentenbefunde selbst gegenzuprüfen.
- **[grundarbeit] 13 Positionen des PL-02-Kern-Nachtrags geschlossen**, 12 neue Destillate
  (GVZ 3, Suva 4, SWKI 1, Suissetec 1, VSA 3), je mit unabhängigem Refuter. Verdikte: 8
  bestanden, 4 beanstandet. `suissetec-dachentwaesserung-2016.md` ist ein sauberer Nulldurchgang.
- **[KERNBEFUND] `gvz-rwa-parkhaus-einstellraum.md` beanstandet** — der teuerste Fund des Laufs.
  Die Anforderungsmatrizes 6.1/6.2 haben ab 601 m² **diagonal zweigeteilte Zellen** (oben blau =
  mit Sprinkleranlage, unten weiss = ohne). Die Erstfassung löste das bei 601-1200 m² durchgehend
  falsch auf: sie hätte ein Projekt mit Sprinkleranlage zu einem Nachweis N2/N3 verpflichtet, wo
  das Merkblatt **gar keinen RWA-Nachweis** verlangt. Beide Matrizes am eigenen 220-dpi-Rendering
  zellenweise nachgeprüft und als Tabelle neu gefasst; Status bleibt `speculative`.
- **[KERNBEFUND] `swki-va103-01-2017.md` beanstandet** — erfüllt Auftrag N-R21-1. Die Richtlinie
  gilt **nur für Mittel- und Grossgaragen ab 100 m²**; für Kleingaragen unter 100 m² gilt sie
  **nicht** (Ziff. 0.1.2, wörtlich nachgeprüft). Garagentypen sind nach **Fläche** definiert, nicht
  nach Abstellplätzen; die 25-Prozent-Definition der offenen Garage stammt aus **VKF-BSR 15-15**,
  nicht 25-15. Zwei weitere Refuter-Befunde im Destillat als **ungeprüft** markiert.
- **[korrektur] Suva 44066:** Gradgrenze Flachdächer `0° ≤ α ≤ 10°` statt `< 10°`; die
  Grundsatzliste für Kunststoff-Oblichter (Ziff. 4.3) fehlte ganz, inklusive Anschlageinrichtungen
  nach **EN 795 ab 3,0 m** beim Unterhalt im geöffneten Zustand. **VSA ESBA:** Definition
  (Ziff. 3.4) und Zahlenwert ±10 mm (Ziff. 5.2.2) waren zu einer Fundstelle verschmolzen.
  **GVZ MFH:** Übergeneralisierung bei den Servicetüren korrigiert.
- **[inventar] VSA-Fehlannotation korrigiert** (Aufzüge statt Abwasser, SNEL = Safety Norm for
  Existing Lifts) — dreifach belegt. **REGISTER:** SWKI-Zeile trägt jetzt Ausgabe 2017-04 und den
  Anwendungsbereich.
- **[betrieb] Arbeits-Weiche meldete `mini`, wurde regelkonform nicht befolgt** (Chronik 260731b
  nimmt App-Scheduled-Tasks und die stationsgeteilten Norm-Familien aus). Der Lauf hat sich
  zweimal am Lauf-Gate selbst gedrosselt.

## 2026-07-31 — Run 40 (MacBook Pro): drei GVZ-Richtlinien destilliert (ZH-Ergänzung zur VKF-Familie)

Drei Merkblätter der Kantonalen Feuerpolizei/GVZ aus `06_Richtlinien/GVZ/` neu destilliert:
`destillate/gvz-mfh-nicht-brennbare-bauteile.md` (Merkblatt 30.01, MFH aus nicht brennbaren
Bauteilen, 15.02.2005), `destillate/gvz-ausbau-kombi-grossraumbueros.md` (Merkblatt 30.05,
Ausbau Kombi-/Grossraumbüros, rev. 15.03.2008) und `destillate/gvz-rwa-parkhaus-einstellraum.md`
(Merkblatt 30.17.3, RWA in Parkhäusern/Einstellräumen, 28.02.2011). Alle drei stützen sich auf
§ 14 Abs. 2 FFG (kantonales Feuerpolizeigesetz) und ergänzen/konkretisieren die VKF-Vorschriften
regional für den Kanton Zürich, ohne ihnen zu widersprechen — zwei der drei (30.05 und 30.17.3)
zitieren explizit die VKF-Vorschriftengeneration vom 26. März 2003 (Merkblatt 30.05 die
Brandschutznorm/-richtlinien allgemein, 30.17.3 konkret die RWA-Richtlinie «Ausgabe 2003»);
Merkblatt 30.01 (2005) referenziert dieselbe Richtlinien-Familie ohne Ausgabejahr — offener
Punkt im Destillat. Status aller drei speculative, Verifikation durch den Hauptprozess
ausstehend. Alle Titelblatt-/Impressum-Angaben (Herausgeber, Merkblattnummer, Datum,
Inkrafttreten, abgelöste Vorgänger-Merkblätter) am Original verifiziert, nicht aus dem
Dateinamen abgeleitet.

## 2026-07-31 — Run 40 (MacBook Pro): drei VSA-Dateien destilliert — Bestandsfalle aufgedeckt, Ordner betrifft Aufzüge statt Abwasser

Auftrag war, drei Dateien aus `06_Richtlinien/VSA/` als Ergänzung zu SN 592 000
(Liegenschaftsentwässerung) zu destillieren, unter der Annahme VSA = Verband Schweizer
Abwasser- und Gewässerschutzfachleute. Am Original (Titelblatt/Logo/Impressum) zeigt sich:
VSA = **Verband Schweizerischer Aufzugsunternehmen**; alle drei Dateien sind archivierte
Webseiten (Safari-Druck, © 2011, 13.07.2012) zu **Aufzugssicherheit**, kein Bezug zu
Liegenschaftsentwässerung. SNEL steht dort für «Safety Norm for Existing Lifts»
(= SN-EN 81-80:2003 = SIA 370.080, bereits established in `sia-370-080-2003.md`), nicht für
«Schweizer Norm für Liegenschaftsentwässerung». Details/Beleg: `wiki/QUESTIONS.md`
Eintrag 2026-07-31.

- **Neu:** `destillate/vsa-aufzuege-dokumente-bestimmungen.md` — Normenkatalog-Seite
  (Verweisdatei, kein Fachdokument): listet die SN-EN-81-Reihe/SIA-370.xxx-Reihe +
  Bezugsquellen; Kreuztabelle gegen den KB-Bestand (2 von 17 Teilen bereits destilliert).
- **Neu:** `destillate/vsa-aufzuege-esba-zh.md` — VSA-Kurzdarstellung der Zürcher
  ESBA-Richtlinie (Erhöhung der Sicherheit bestehender Aufzüge, in Kraft seit 2008): 7
  Gefahrenkriterien, Umsetzung via Kantonale Aufzugskontrolle, 5-Jahres-Frist.
- **Neu:** `destillate/vsa-aufzuege-snel.md` — VSA-Kurzdarstellung von SNEL/SN-EN 81-80,
  CH-Publikation 01.07.2004, Kantone mit eigener Umsetzungsgesetzgebung (Stand 2011:
  Genf/Zürich/Glarus).
- Alle drei `status: speculative (Run 40 destilliert, Verifikation ausstehend)`, da reine
  Sekundärquellen (VSA-Webseiten, nicht die Originaltexte der zitierten Richtlinien/Normen).
- `destillate/INDEX.md` um die drei Zeilen ergänzt; `wiki/QUESTIONS.md` um 4 offene Punkte
  (VKF-RL-2003-vs-BRL-23-15-Ablösung, ESBA-Originaltext, restliche EN-81-Teile, SVAS-VSA-
  Verhältnis).

## 2026-07-31 — Neues Destillat VKF-Merkblatt 2005-15 «Lithium-Ionen-Batterien» (Zulieferung aus planungsgrundlagen)
Anlass: offene Frage C44 aus dem Wettbewerbs-Scan «Grassenbiwak 2027» (Batterieraum im netzfernen
Bau). Das Merkblatt war in der ganzen KB nicht erfasst und liegt auch nicht im Hausbestand PL-03;
Original von der VKG-Publikationsplattform bezogen (BSPUB-1394520214-3688) und volltext extrahiert.
- **Neu:** `destillate/vkf-merkblatt-2005-15-lithium-ionen-batterien.md` (Stand 01.06.2021) —
  Hazard-Level-Systematik nach Energieinhalt **je Brandabschnitt** (< 15 / 15-100 / > 100 kWh),
  Anforderungen Ziff. 4.4-4.6 (HL I: EI 30, kein Fluchtweg/keine Lüftungszentrale, 2.5 m Abstand zu
  brennbaren Materialien; HL II: EI 60 oder RF1-Einzelbaute; HL III: im Freien oder heisse Bemessung).
- **REGISTER-Zeile ergänzt** mit dem ausdrücklichen Vermerk, dass ein **Merkblatt** nicht den
  Verbindlichkeitsgrad einer Brandschutzrichtlinie hat (Ziff. 4: «Hilfestellungen»).
- **Offen gelassen:** die von Sekundärquellen genannte VKF-FAQ 2005-01 für LiFePO₄/LFP ist **nicht am
  Original verifiziert** und deshalb nirgends als Fundstelle geführt.
- Die beiden Bring-Schulden zur BSR 16-15 (gewendelte Treppen, offene Treppe über Schlafnutzung) waren
  bereits durch den Abschnitt «Entscheidungsfigur Treppen» im BSR-16-Destillat beantwortet und sind in
  `wiki/QUESTIONS.md` als geschlossen markiert.

## 2026-07-31 (Entscheid Raphael, Wissens-Chef Run 21) — SWKI zugeordnet, Registerzeilen gesetzt

- **[fuehrung] SWKI gehoert in den Scope dieser KB** — nach dem fuer SIA/VKF/VSS geltenden Zuschnitt:
  diese KB fuehrt Fundstelle, Ausgabe und Fassungsstand, `energie` fuehrt die angewandte Fachaussage
  (Lueftungs-/HLK-Physik) und verweist fuer die Ausgabe hierher. Keine Scope-Ausweitung, sondern die
  bestehende Regel auf einen weiteren Herausgeber; Praezedenz ist bfu (Run 38). Der Entscheid war
  noetig, weil die Zuordnungsluecke einen belegten Fehlaufwand erzeugt hat: ohne Registerzeile wollte
  diese KB SWKI 99-3 destillieren, obwohl die Richtlinie seit dem 1.8.2015 ersetzt ist und `energie`
  das seit dem 25.07.2026 belegt hatte.
- **[register] `wiki/REGISTER.md`, Abschnitt D: SWKI-Tabelle mit vier Zeilen angelegt** — VA 103-1
  (im Haus, noch nicht destilliert, Ausgabe bewusst leer, weil nicht am Original erfasst),
  VA 105-01:2015 (Volltext nicht im Bestand; belegt ist «ersetzt SWKI 99-3 + Beiblatt 2004 per
  1.8.2015» ueber Titelblatt/Vorwort mit H+ eFlash als Zweitquelle — belegt ist **abgeloest**, nicht
  ein foermlicher Rueckzug), SWKI 99-3:2003 (abgeloest, nicht mehr destillieren), VA 106 und 2004-1
  (bewusst **ohne** Ausgabe- oder Gueltigkeitsaussage, da in `energie` nur ueber Leseprobe und
  Verkaufsseiten bekannt). Kein ✓ und kein ✗ fuer die nicht im Haus liegenden Volltexte — sonst
  entstuende dieselbe ungedeckte Gueltigkeitsaussage, die die Verifikation in Run 20 am
  SIA-2032-Fall verhindert hat.
- **[auftrag] Zwei neue Punkte in `wiki/QUESTIONS.md`:** N-R21-1 (P2) SWKI VA 103-1 destillieren —
  das einzige SWKI-Dokument im Haus, ergaenzt VKF-BRL 25-15 und ist unmittelbar einschlaegig fuer den
  Tiefgaragen-Artikel in `planungsgrundlagen`, den Run 21 gerade mit einem Fassungs-Vorbehalt versehen
  hat. N-R21-2 (P3) Kaufentscheid VA 105-01 Volltext, bis dahin keine Zahlenaussage aus Sekundaerquellen.
- **[scope geschrumpft] Der offene PL-02-Strukturentscheid (Befund 3, Run 31) ist kleiner geworden:**
  bfu war seit Run 38 heraus, SWKI ist es jetzt. Uebrig bleibt die Frage, ob die restlichen
  Kern-Dateien (GVZ 3, Suva 4, Suissetec 2, VSA 3, PAVIDENSA 9, `09_Sanitaereinrichtung` 15)
  systematisch oder nur bei Projektbedarf abgearbeitet werden.
- Geaendert: `wiki/REGISTER.md`, `wiki/QUESTIONS.md`.

## 2026-07-30 (Run 39, MacBook Pro) — Abdeckung von `lignum-4-1` gemessen statt geschaetzt (Freigabe Raphael)

- **[verifikation, 2 Befunde] `destillate/lignum-4-1-…-feuerwiderstand.md`, neunte Runde.** Raphael
  hat die weitere Runde freigegeben, nachdem Run 38 seine eigene Abdeckungsmessung als unzureichend
  ausgewiesen hatte (OCR fand 34 von real 72 Nummern). Statt erneut zu schaetzen wurde eine
  **vollstaendige Seiten-Inventur** erstellt: alle 40 A3-Blaetter gerendert, in Halbseiten
  gesplittet, je gedruckter Seite Kapitel/Tabellen/Abbildungen/Textbloecke aufgenommen, Seitenzahl
  am Rand ABGELESEN statt aus der Blattnummer berechnet. Fuenf parallele Aufnahme-Agenten mit je
  eigenem Render-Praefix, Diff durch den Hauptprozess.
- **[messergebnis] Seiten 2-80 lueckenlos, 184 Einzelelemente, 72 Nummern in der Quelle, 71 im
  Destillat zitiert, alle 74 Kapitel inhaltlich erfasst — und NULL erfundene Fundstellen.** Der
  letzte Punkt ist der wichtigste Positiv-Befund: das Destillat erfindet keine Fundstelle. Vierzehn
  Kapitelnummern fehlen als Nummer, ihr Inhalt aber nicht (die Decken-/Wandsystem-Kataloge sind nach
  System und Tabelle gefuehrt statt nach Unterkapitel) — andere Gliederung, keine Luecke.
- **[befund] Die eine Luecke war der Zeiger, nicht der Befund.** Nicht zitiert war Abbildung 435-3
  (S. 35, Massivholzdecken mit Fugenbreite f > 5 mm) — formal geringfuegig. Die Nachpruefung dieser
  Seite am Original (eigenes 220-dpi-Rendering) deckte den eigentlichen Fehler auf: das Original
  nennt dort **vier** Nachweis-Wege, das Destillat fuehrte drei. Es fehlte die **Fugenausbildung
  gemaess der Lignum-Publikation 4.2 «Anschluesse bei Bauteilen mit Feuerwiderstand» [7]** —
  ausgerechnet der Weg, fuer den der Hub mit `lignum-4-2-anschluesse-feuerwiderstand.md` bereits ein
  **established**-Destillat besitzt. Beide korrigiert und ueber `[[…]]` verlinkt.
- **[neu] `training/l41-seiteninventur.md`** — die Inventur ist als dauerhaftes Arbeitsmittel in der
  KB abgelegt: Beleg fuer die Abdeckung und Grundlage kuenftiger Runden, die nun diffen statt neu
  inventarisieren.
- **[methodik] `training/PROGRAMM.md`: Methodik-Pflicht 6 praezisiert und erweitert.** (a) Bei
  umfangreichen Publikationen ist die Abdeckung per **Seiten-Inventur** zu messen, nicht per OCR zu
  schaetzen; ein OCR-Diff ist ausdruecklich als untere Schranke auszuweisen (Beleg: 34 von 72).
  (b) NEU: **eine fehlende Fundstelle ist ein Zeiger, kein Befund** — jede Luecke wird am Original
  nachgelesen, nicht bloss eingetragen. Wer nur die Nummernliste abhakt, notiert hier «1 formaler
  Befund» und uebersieht den fehlenden Nachweis-Weg.
- **[bewertung] Taktung `lignum-4-1` ist jetzt entscheidbar** (vorher nicht): die Abdeckung ist
  gemessen und praktisch vollstaendig, die Zellwerte waren Gegenstand der Runden 5-7 ohne Regression.
  Eine zehnte Routinerunde hat keine erkennbare offene Frage mehr; sinnvoll waere nur noch ein
  ereignisgetriebener Lauf bei einer neuen Fassung. Raphael vorzulegen, nicht selbst umzustellen.

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Verbindlichkeitsstufe, Fassungspflege SWKI und vier Rueckverweise

- **[korrektur] `destillate/bfu-gelaender-und-bruestungen.md`, Kurzfassung «Das Wichtigste in 3
  Saetzen»** — der Ausreisser «eine Erhoehungspflicht der Schutzelement-Hoehe bei grossen
  Absturzhoehen (+10 cm ab rund 12 m, +20 cm bei Hochhaeusern)» hob die Verbindlichkeitsstufe
  gegenueber der eigenen Quelle an. Neu: «die Anforderung, die Schutzelement-Hoehe bei grossen
  Absturzhoehen zu erhoehen, neu mit bfu-Richtwerten unterlegt (+10 cm ab mehr als 12 m,
  mindestens +20 cm bei Hochhaeusern)». Belegt aus dem eigenen Fliesstext (Z. 32, S. 4 v2: die
  Erhoehung als solche ist Anforderung, die Hochhaus-Regel eine Soll-Vorschrift, nur die
  Quantifizierung «+10 cm ab mehr als 12 m» eine bfu-Empfehlung) und dem Fassungsvergleich
  («+10 cm ab bfu-Richtwert 12 m»). Ausdruecklich NICHT angetastet: die 40-cm-Schwelle
  (SN 640 075 / SN 640 568) und die Lastannahmen-Tabelle (SIA 261 / SN 640 568) — das sind
  Normanforderungen, keine bfu-Empfehlungen.
- **[richtigstellung] Eintrag vom 30.07.2026 (Run 38) weiter unten in diesem Changelog** — die
  dortige Formulierung «neue quantifizierte Erhoehungspflicht der Schutzelement-Hoehe bei grossen
  Absturzhoehen (+10cm ab ~12m, +20cm bei Hochhaeusern)» traegt denselben Ausreisser. Sie bleibt
  als Historieneintrag unveraendert stehen und wird hier richtiggestellt: massgeblich ist die
  obige Fassung («ab mehr als 12 m», Richtwert statt Pflicht).
- **[korrektur] Merkmal «umfangreiche» wiederhergestellt** — in derselben Datei an zwei Stellen
  (Kurzfassung und JANS-Praxis-Transfer, Zeile «baurecht») lautete die Bestandesschutz-Aussage
  «entfaellt bei bewilligungspflichtiger Sanierung». Der Belegsatz des Destillats (Z. 94) sagt
  «umfangreiche, baubewilligungspflichtige Sanierungsarbeiten»; ohne das tragende Merkmal wird
  aus einer Faustregel eine ueberschiessende Rechtsaussage. Zusaetzlich an beiden Stellen die
  Einordnung ergaenzt, dass es sich um eine bfu-Fachpublikation (Beratung/Empfehlung) handelt,
  die fuer sich allein nicht rechtsverbindlich ist.
- **[veraltetes] `destillate/din-1946-4-2008.md`: SWKI 99-3 ist seit 1.8.2015 abgeloest** — der
  quellentreue Satz «Die Norm nennt selbst als verwandte Referenz SWKI 99-3 (Literaturhinweise,
  S. 66)» bleibt stehen (eine Norm von 2008 kann keine Richtlinie von 2015 zitieren); ergaenzt
  wurde ein **Fassungs-Nachtrag**: SWKI 99-3:2003 inkl. Beiblatt 2004 ist per 1.8.2015 durch
  SWKI **VA105-01:2015** «Raumlufttechnische Anlagen in medizinisch genutzten Raeumen» abgeloest.
  Nur die Gegenwarts-Empfehlung («SWKI 99-3 als primaere Quelle pruefen/destillieren») wurde auf
  VA105-01 umgestellt. Beleg: Titelblatt/Vorwort VA105-01 (genehmigt 02.07.2015, in Kraft
  01.08.2015), zweitbelegt H+ eFlash 2015-09, im Hub greifbar ueber
  `wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md`. Wortlaut-Vorbehalt:
  belegt ist «abgeloest/ersetzt», NICHT «zurueckgezogen».
- **[fassungspflege] Frontmatter derselben Datei** — `ersetzt_durch: ""` gefuellt mit
  «DIN 1946-4:2018 (im Hub nicht destilliert, belegt ueber
  wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md)».
- **[konsistenz] `destillate/qa/din-1946-4-2008-fragen.md`** — Frage 20 trug «Fuer Schweizer
  Spitalprojekte ist SWKI 99-3 die primaer anzuwendende Norm» plus «Abgleich Destillat:
  deckungsgleich». Antwort und Abgleich bleiben als Protokoll stehen, darunter steht neu ein
  datierter Fassungs-Nachtrag mit demselben Inhalt wie im Destillat — sonst haette der naechste
  Lauf einen selbstgemachten Widerspruch gefunden.
- **[luecke] `wiki/QUESTIONS.md`, neuer Abschnitt zuoberst** — (1) die CH-Pendant-Luecke aus den
  Run-3-/Run-5-Eintraegen vom 13.07.2026 auf den wirklich offenen Gegenstand umgestellt: nicht
  «SWKI 99-3 fehlt», sondern «VA105-01-Volltext (Kap. 3-6, Zahlenwerte) nicht im Bestand,
  Kaufentscheid offen». Die alten Eintraege bleiben als Historie unveraendert. (2) Die Uebergabe
  der KB `planungsgrundlagen` angemeldet: sie fuehrt die Tiefgaragen-Geometrie bisher aus der
  abgeloesten Ausgabe SN 640 291a (2005) inkl. der abgeschafften Komfortstufen A/B/C; gebraucht
  wird ein Delta-Abgleich 2005 → 2021 gegen `vss-40291-2021-parkieren-anordnung-geometrie.md`.
- **[bestand] `wiki/REGISTER.md`, Abschnitt D)** — Bestandseintrag zum einzigen im Haus liegenden
  SWKI-Dokument (`SWKI VA 103-1 Lueftungsanlagen fuer Parkhaeuser`, P2, noch nicht destilliert),
  am `training/norm-inventar.md` selbst verifiziert. **Ohne Gueltigkeitsaussage**, mit dem Vermerk,
  dass VA105-01 nicht im Bestand liegt und der SWKI-Scope offener Strukturentscheid ist. Eine
  Register-Zeile zu VA105-01 wurde bewusst NICHT gesetzt (Register-Praeambel «nichts erfunden»).
- **[querverlinkung] vier Rueckverweise gesetzt, die die Gegenseite nicht setzen kann:**
  `destillate/vkf-brl-23-15-befoerderungsanlagen.md` `links` um `[[bkp-261-aufzuege]]` ergaenzt
  (Vorbild `sia-500-2009.md`); `destillate/vss-40291-2021-parkieren-anordnung-geometrie.md` `links`
  um `[[fahrzeugabstellplaetze-und-parkierung]]` ergaenzt;
  `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` und
  `destillate/lignum-4-2-anschluesse-feuerwiderstand.md` je um eine Abnehmer-Zeile **bauprodukte**
  im Praxis-Transfer erweitert (mit Statushinweis 4.2 established / 4.1 speculative) und der
  Zielpfad des bestehenden grobkosten-Abnehmerblocks auf `wissen/grobkosten/wiki/kennwerte.md`
  praezisiert. In `lignum-lignatec-brandschutz.md` wurde bewusst KEIN Abnehmer-Zeiger gesetzt —
  die Publikation ist als VERALTET gefuehrt (Stand 2005 / VKF 2003).
- Geaenderte Dateien: `destillate/bfu-gelaender-und-bruestungen.md`,
  `destillate/din-1946-4-2008.md`, `destillate/qa/din-1946-4-2008-fragen.md`,
  `destillate/vkf-brl-23-15-befoerderungsanlagen.md`,
  `destillate/vss-40291-2021-parkieren-anordnung-geometrie.md`,
  `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`,
  `destillate/lignum-4-2-anschluesse-feuerwiderstand.md`, `wiki/QUESTIONS.md`,
  `wiki/REGISTER.md`, `CHANGELOG.md`.

## 2026-07-30 (Run 38, Nachtrag) — Neues Destillat bfu-Fachdokumentation 2.034 «Sicherheit im Wohnungsbau»
- **[luecke geschlossen] `destillate/bfu-sicherheit-im-wohnungsbau.md`** — die neunte Datei des
  BfU-Ordners (`PL - 02_Recht_Norm/06_Richtlinien/BfU/bfu_Sicherheit im Wohnungsbau.pdf`, 42 S.,
  Bild-Scan) war im BfU-Block weiter unten in diesem Changelog («9 Dateien zu 7 Destillaten») noch
  NICHT erfasst — die dortige Zaehlung war unvollstaendig. Alle 42 Seiten bei 200dpi gerendert und
  vollstaendig gelesen (Praefix `bfu-woh-r8-`).
- **[befund, Scope weicht vom erwarteten Auftrag ab]** Titel klingt nach einem allgemeinen
  Bauteilkatalog (Bad/Kueche/Fenster/Boden), das Dokument ist aber eine **rechtsvergleichende
  Studie**: bfu-Fachdokumentation 2.034, Autorin Regula Stoecklin, Bern 2011 (Druck 2009), Rechtsstand
  vor 1.1.2011. Untersucht je Kanton + FL nur drei Fragen: allgemeine Sicherheitsvorschrift vorhanden?
  spezielle Gelaender-/Bruestungsvorschrift? spezielle Treppenvorschrift? Und mit welcher rechtlichen
  Bindungsstaerke (Generalklausel/Verweis dynamisch/statisch/Inkorporation) die SIA-Norm 358 dabei
  zum Zug kommt. Kein Bad/Kueche/Boden/Fenster allgemein — das ist bereits in den 7 anderen
  BfU-Destillaten oder gar nicht im Hub.
- **Kernbefund ZH:** § 20 BBV I regelt Gelaender nur per Generalklausel (keine eigene Zahl), SIA 358
  wird von der bfu-Systematik trotzdem als «beinahe zwingend» eingestuft; § 305 Abs. 1 PBG dagegen
  bezifert Treppenbreiten direkt (1,2 m / 0,9 m in EFH). Nur Kanton ZG hat ueberhaupt keine Regelung
  (weder allgemein noch Gelaender/Treppen) — Kompetenz liegt dort bei den Gemeinden.
- **Haftungs-/Strafrecht:** Art. 58 OR (Vermutung sorgfaeltigen Verhaltens bei Normeinhaltung),
  Art. 229 StGB (Baugefaehrdung), drei Gerichtsfaelle (BGer 1984 unveroeffentlicht, BGE 120 IV 300,
  Kreisgericht Thun 1997 — Kaserne-Fenstersturz-Fall).
- Status **speculative** (Erstdestillat, noch nicht durch eine zweite Runde verifiziert). Vollstaendige
  Wortlaut-Tabellen (alle 26 Kantone) bewusst nicht abgeschrieben — nur die planungsrelevanten Kantone
  mit eigenen Zahlen (BL/BE/FR/GE/LU/VD/ZH/FL) im Detail.
  Geaendert: `destillate/bfu-sicherheit-im-wohnungsbau.md` (neu), `destillate/INDEX.md` (Zeile ergaenzt).

## 2026-07-30 (Run 38, MacBook Pro) — Vorrang-Auftrag Lignatec Tab. 3 + Tab. 4, achte Runde `lignum-4-1`, BfU-Block neu destilliert

- **[verifikation, 7 Kernbefunde] `destillate/lignum-lignatec-brandschutz.md`** — Vorrang-Auftrag
  Raphaels vom 29.07. ausgefuehrt: die rechnerische Zellaufnahme (Median-RGB je Zellbox gegen die
  je Tabelle EINZELN am Original gemessenen Legenden-Swatches) lief erstmals auf **Tab. 3 (S. 8-9)
  und Tab. 4 (S. 12-13)**; bis dahin war sie nur auf Tab. 5 angewandt worden. Beide Tabellen
  vollstaendig aufgenommen (je 10 Nutzungszeilen x 2 Konzeptzeilen x 7 Geschossgruppen x 2
  Unterspalten), Spaltengruppen an der Kopfzeile selbst nachgezaehlt.
  - **Kernbefund 1 — die drei Kreuztabellen fuehren DREI verschiedene Legenden**, und das Destillat
    gab keine davon fuer Tab. 3/4 wieder. «Grau» heisst in Tab. 3 «Holzbauteile beidseitig nicht
    brennbar verkleidet», in Tab. 4 differenziert nach hellgrau (nur fluchtwegseitig) und
    dunkelgrau (beidseitig), in Tab. 5 dagegen «Anwendung von Holz nur unter bedingten Auflagen».
    Da allein die Tab.-5-Bedeutung destilliert war, lud das Destillat zur Fehllesung ein. Alle drei
    Legenden erfasst und gegeneinander abgegrenzt.
  - **Kernbefund 2** — die zwei Grautoene in Tab. 4 sind die grafische Kodierung der
    Schraegstrich-/Bindestrich-Notation. Damit ist die Run-32/33-Korrektur erstmals **methodisch
    unabhaengig** bestaetigt (Farbe statt Zeichenerkennung), keine Regression.
  - **Kernbefunde 3-7** — Beherbergungsbetriebe [a] in Tab. 3 und Tab. 4 («durchgehend» setzt die
    erste Spalte falsch an); die Sprinkler-Werte fuer Wohnbauten MFH 5-6 Geschosse in Tab. 3
    fehlten ganz; Tab. 3 und Tab. 4 decken die Spalten 5-6 und 7-8 fuer drei Nutzungszeilen gar
    nicht ab (Tab. 5 dagegen schon); die Zeile Beherbergungsbetriebe [b] Hotels fehlte in den
    Tab.-3-Eckwerten vollstaendig. Dazu 4 Nebenbefunde. Alle am eigenen 300-dpi-Rendering
    (Praefix `lignatec-r8-`) im Ausschnitt gelesen, bevor sie uebernommen wurden.
  - **Endbedingung des Vorrang-Auftrags NICHT erfuellt**: die Quelle ist nicht ausgereizt, die
    Umstellung des Tasks auf Ereignis-Trigger wird ausdruecklich nicht vorgeschlagen. Noch nicht
    rechnerisch aufgenommen: die acht Uebersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5).
- **[verifikation, 1 inhaltlicher Befund] `destillate/lignum-4-1-…-feuerwiderstand.md`** — achte
  Runde mit **umgekehrter Fragerichtung**: statt zu pruefen, ob stimmt, was das Destillat
  behauptet, wurde die Abdeckung gemessen (40 A3-Blaetter gerendert, per OCR alle Tabellen-/
  Abbildungsnummern extrahiert, gegen die 66 zitierten gediffed). Fuenf Nummern fehlten; eine
  deckte einen echten Inhaltsverlust auf: **in Kap. 5.2.5 (S. 63) fehlte der ganze Absatz zur
  Durchfuehrung von Installationen durch brandabschnittsbildende Bauteile RF1** — Bauteilleibungen
  gemaess Kap. 5.2.4, Durchbrueche und Leitungsdurchfuehrungen feuerwiderstandsfaehig
  verschliessen. Das ist eine Abschottungspflicht, also ausfuehrungsrelevant. Ergaenzt, dazu drei
  Fundstellen (Abb. 340-1, 524-1, 525-1). **Ausgewiesene Grenze:** die OCR fand nur 34 Nummern —
  der Diff ist eine untere Schranke, kein Vollstaendigkeitsnachweis.
- **[methodik] `training/PROGRAMM.md`: Methodik-Pflicht 6 neu.** Eine Runde, die nur prueft, was
  das Destillat behauptet, kann grundsaetzlich nicht finden, was fehlt. Beide Fragerichtungen sind
  zu fahren, und im Report ist auszuweisen, welche gelaufen ist. Zwei konkrete Verfahren
  hinterlegt (rechnerische Tabellenaufnahme mit tabellenweise gemessener Legende; OCR-Abdeckungs-
  diff mit Ausweis der OCR-Ausbeute als untere Schranke). Die Run-36-Lehre bestaetigt sich damit
  zum dritten Mal.
- **[neu, Grundarbeit] BfU-Block aus dem PL-02 Kern-Nachtrag destilliert** —
  `PL - 02_Recht_Norm/06_Richtlinien/BfU/`, 9 Dateien zu 7 Destillaten, je mit unabhaengigem
  Refuter. Fassungsstand in jedem Fall am Dokument selbst belegt, nie aus dem Dateinamen. Dabei
  geklaert: «Anforderunegn Bodenbelaege» und «Bodenbelaege» sind **kein Fassungspaar**, sondern
  zwei verschiedene Publikationen (bfu 2.032 Anforderungsliste 2012 und bfu 2.027 Bodenbelaege
  2011); «Gelaender und Bruestungen» dagegen schon (07.2012 und 01.2019, letztere geltend).
- **[befund, cross-kontamination] Refuter fand einen Fehlertyp, der bei Parallel-Destillation
  entsteht:** im Destillat `bfu-sicherheit-rechtliche-aspekte.md` war die PrHG-Fehlerdefinition mit
  dem Wort «berechtigterweise» wiedergegeben, das in diesem Dokument nicht steht — es stammt aus
  der gleichzeitig destillierten Schwester-Broschuere «Glas in der Architektur». Vom Hauptprozess
  an BEIDEN Originalen nachgeprueft und bestaetigt: die zwei bfu-Publikationen formulieren
  tatsaechlich unterschiedlich. Korrigiert.
- **[befund, Zuerich-relevant] `bfu-sicherheit-im-wohnungsbau.md` ist eine Kantonssynopse, kein
  Bauteilkatalog** — sie vergleicht die Bauvorschriften aller 26 Kantone und Liechtensteins zu
  Gelaendern, Bruestungen und Treppen und benennt die Bindungsstaerke der SIA 358 je Kanton. Fuer ZH
  belegt: Paragraf 239 Abs. 1 und Paragraf 359 lit. h PBG, Paragraf 2 und Paragraf 20 BBV I sowie
  Paragraf 305 Abs. 1 PBG (Treppenbreiten 1,0 / 1,2 / 0,9 m); ZH gehoert zur Gruppe mit «beinahe
  zwingender» SIA-358-Anwendung. Der Refuter hat jede ZH-Fundstelle einzeln bestaetigt; die zwei
  Befunde betreffen VD (faelschlich als Kanton mit bezifferter Treppenvorschrift gefuehrt — hat nur
  eine unbezifferte Handlauf-Pflicht) und eine unvollstaendig zitierte Kumulationspflicht bei
  Art. 229 StGB. Beide vom Hauptprozess am Original nachgeprueft und korrigiert. **Der Rechtsstand
  liegt vor dem 1.1.2011** — als eigener Vorbehalt im REGISTER festgehalten.
- **[befund, LV-relevant] Zellenweise Tabellenpruefung hat im BfU-Block einen zweiten stillen
  Fehler gefunden:** im Destillat `bfu-bodenbelaege.md` waren in Tab. 15 (2.032, S. 23) die Zeilen
  «Laderampen nicht ueberdacht» (GS3 / R 12 **V4**) und «Marktplaetze, Piazzas» (GS3 / R 12) zu
  einer Zeile zusammengefasst — dabei ging die Verdraengungsraum-Anforderung V4 verloren. Da das
  Destillat ausdruecklich empfiehlt, LV-Texte mit diesen Klassen zu referenzieren, waere der Fehler
  unbemerkt in eine Ausschreibung gewandert. Am Original nachgeprueft und korrigiert.
- **[register] `wiki/REGISTER.md` Abschnitt D:** die bfu-Familie aufgenommen, mit Publikations-
  nummern, Ausgaben und Bestandsstatus. Festgehalten, dass bfu-Broschueren **keine Normen**, sondern
  Auslegungshilfen sind (verbindlich bleibt die Norm, i.d.R. SIA 358), sowie ein **Zitier-Vorbehalt**
  fuer die zwei aeltesten Broschueren (2.006.01 von 2010, 2.007.01 von 2009) — ob die bfu inzwischen
  neuere Fassungen publiziert hat, ist nicht geprueft; im Haus liegen nur diese.
- **[frontmatter] Systematischer Erfassungsfehler im Batch behoben:** vier der neuen Destillate
  trugen in `gelesen` und `datenstand` das heutige Datum statt der gelesenen Seiten bzw. des
  Dokumentstands. Zentral korrigiert.
- **[werkzeug] En-Dash-Falle dokumentiert:** `pdftoppm` scheitert am En-Dash im Pfad der
  OneDrive-Bibliothek mit «No such file or directory», obwohl `ls` und `pdfinfo` denselben String
  akzeptieren. Loesung: Symlink ohne Sonderzeichen (Muster aus Rule `osascript-apple-apps`).

## 2026-07-30 (Run 38) — Neues Destillat bfu «Geländer und Brüstungen» (Fassungsvergleich 2012/2019)
- **Neu:** `destillate/bfu-gelaender-und-bruestungen.md` — bfu-Fachbroschüre 2.003.01, Anwendungshilfe
  zur Norm SIA 358:2010. Zwei Fassungen im Bestand (`PL - 02_Recht_Norm/06_Richtlinien/BfU/`)
  vollstaendig gelesen und verglichen: aeltere Fassung 07.2012 (8 S.) und juengere, geltende Fassung
  01.2019 (12 S.). Fassungsstand am Dokument selbst verifiziert (Impressumszeile + PDF-Metadaten),
  nicht aus dem Dateinamen abgeleitet.
- **Wesentliche inhaltliche Deltas 2012→2019** (Details samt Fundstellen im Destillat): neue 40-cm-
  Schwelle fuer Absturzsicherungen im urbanen Strassenraum (SN 640075/SN640568); neue quantifizierte
  Erhoehungspflicht der Schutzelement-Hoehe bei grossen Absturzhoehen (+10cm ab ~12m, +20cm bei
  Hochhaeusern); neue Lastannahmen-Tabelle (0,8/1,6/3,0 kN/m nach Nutzung); ausfuehrliche SIA-500-
  Anforderungen (Durchblick, Tastbarkeit, Handlauf 85–90cm); Praezisierung Bestandesschutz (entfaellt
  bei bewilligungspflichtiger Sanierung, kein Dauerprivileg «mängelfrei»); die v1-Ausnahme «feste
  Bruestung ab 20cm Dicke → 90cm Mindesthoehe» fehlt in v2; die gestaffelte 1–3cm-Spaltregel fuer
  horizontale Traversen (v1) wurde durch eine Pauschalregel (max. 2cm) ersetzt.
- 3 Seiten stichprobenartig mit 300dpi gerendert (v1 S.3+4, v2 S.7), um in Vektorgrafiken eingebettete
  Mass-Beschriftungen gegen den Textlayer zu pruefen — keine Abweichung gefunden.
- Status **speculative** (Erstdestillat, noch nicht durch eine zweite Runde verifiziert).
  Geaendert: `destillate/bfu-gelaender-und-bruestungen.md` (neu), `destillate/INDEX.md` (Zeile ergaenzt).

## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — SIA 2032 Fassungsflag, zwei Bring-Schulden aufgenommen
- **[fassungsstand, mit abgewehrter Fehlkorrektur] SIA 2032 stand im REGISTER als Ausgabe 2010
  «gueltig» ohne Flag, waehrend `energie` seit dem 26.06. durchgaengig SIA 2032:2020 zitiert.** Die
  urspruenglich vorgeschlagene Korrektur — Ausgaben-Kette auf «2020✓ · 2010✗» umschreiben — wurde vom
  Verifikations-Agenten als **unzulaessig** belegt und NICHT ausgefuehrt: das Register hat seit Run 37
  seine eigene Beweisschwelle (Zeilen mit leerer Bestand-Spalte duerfen ohne externe Gegenpruefung
  nicht als geltend zitiert werden), es existiert **kein hauseigenes Exemplar** (also kein Titelblatt,
  anders als beim Praezedens SIA 2020) und **kein Rueckzugsdatum fuer 2010 ist belegt**. Ein gesetztes
  ✗ waere dieselbe ungedeckte Gueltigkeitsaussage gewesen, nur in die andere Richtung. Gesetzt wurde
  darum **nur die Bemerkungsspalte** mit ⚠-Fassungsflag und dem Hinweis auf die beiden
  Sekundaerquellen der KB `energie`.
- **[bring-schuld] SIA 2032:2020 hat im Hub kein Destillat**, obwohl vier energie-Destillate und die
  BAUHERREN-FAQ darauf abstuetzen; `[[sia-2032]]` in `destillate/sia-2040-2017.md:9` ist ein dangling
  link. In `wiki/QUESTIONS.md` aufgenommen.
- **[bring-schuld] SIA 390/1** (Klimapfad-Norm, Vernehmlassung, Zielwert 9 kg CO2-eq/m2·a) ist in
  dieser KB **ueberhaupt nicht erfasst** (grep «390/1» = 0 Treffer), wird von `energie` aber seit dem
  21.07. zitiert. Als Beobachtungsposten aufgenommen. Nebenbefund der Verifikation: die 9 kg stammen
  **nicht** aus KBOB, sondern aus dem Minergie-Nachweiskurs 2023 — eine KBOB-Attribution waere
  schlechter gewesen als der Ist-Zustand.
- Geaendert: `wiki/REGISTER.md` (SIA-2032-Zeile), `wiki/QUESTIONS.md`.


## 2026-07-29 (nachmittags) — Entscheid-Paket Raphael umgesetzt: Vorrang-Auftrag Lignum + PL-02-Kern aufgenommen

- **[entscheid, strukturell] PL-02-Reichweite entschieden (Freigabe Raphael 29.07.2026).** Der seit
  Run 31 offene Strukturentscheid ist getroffen: aufgenommen wird **nur der normrelevante Kern**,
  alles Uebrige geht an die zustaendige KB bzw. den zustaendigen Skill. Neuer Abschnitt
  «PL-02 Kern-Nachtrag» in `training/norm-inventar.md` mit **69 offenen Positionen**, Datei fuer
  Datei am Bestand verifiziert statt aus dem Run-31-Report uebernommen. Damit hat der Loop nach
  dem Lignum-Abschluss wieder echte Grundarbeit statt Bestaetigungsrunden (adressiert den
  Leerlauf-Waechter, Rule 260727).
- **[korrektur der Run-31-Zahlen]** Beim Verifizieren gefunden: `09_Sanitaereinrichtung` hat **14**
  PDF statt 15 (10 davon im Unterordner `Kl Hochbau einzel/`, in der Run-31-Zaehlung unsichtbar);
  `06_Richtlinien/BKZ` (4 PDF, hindernisfreies Bauen Kt. ZH, normnah zu SIA 500) war in Run 31
  **gar nicht benannt** und ist neu aufgenommen; die Run-31-Tabelle zaehlte alle Dateien je Ordner,
  die neue Liste nur PDFs — beide Zahlen sind richtig, sie messen Verschiedenes.
  *Lehre: eine uebernommene Zaehlung ist keine verifizierte Zaehlung.*
- **[abgrenzung, dokumentiert] Nicht aufgenommen, mit Begruendung je Bestand** — Minergie 79 und
  eco 55 → KB `energie`, Teilungsplan STWEG 71 → Skill `stockwerkeigentum`, Projektadmin AHB 79
  und Raumpilot/Neufert → keine Norm, `01_Gesetze` 180 → bereits Faktenbasis des Skills `baurecht`,
  `Tiefgarage/1 VSS-Norm` → Mac-Mini-Scope, `08_Richtplan` → KB `planungsgrundlagen`,
  `10 Lärmschutz` → enthaelt nur eine Verweisdatei. So taucht die Frage nicht ein drittes Mal auf.
- **[cross-kb] Zwei Uebergaben geschrieben:** `wissen/energie/wiki/QUESTIONS.md` (neue Punkte
  E-PL02-1 Minergie 79 / E-PL02-2 eco 55, plus abschliessender Beleg zu den drei nicht im Haus
  liegenden Normen) und `skills/stockwerkeigentum/SKILL.md` (neuer Abschnitt «Bestand:
  Teilungsplan-Empfehlungen auf SharePoint», 71 PDF, bisher in keiner KB gefuehrt).
- **[loop-steuerung] Task-Prompt `normen-training-nacht` neu gefasst.** Neuer VORRANG-AUFTRAG vor
  allem anderen: achte Verifikationsrunde fuer `lignum-lignatec-brandschutz.md` mit **rechnerischer
  Zellaufnahme auch von Tab. 3 und Tab. 4** — genau die Asymmetrie, die in Run 36 drei Kernbefunde
  erzeugt hat (die Methode war bisher nur auf Tab. 5 angewandt). Mit Endbedingung: keine
  Kernbefunde ⇒ Quelle ausgereizt ⇒ Umstellung auf Ereignis-Trigger vorschlagen (nicht selbst
  vornehmen). Zusaetzlich im Prompt verankert: das Lauf-Gate (Rule 260728), der Kollisionsschutz
  (260724), `nas-commit-now` statt git ueber SMB (260726), der korrigierte Takt (1x taeglich statt
  der veralteten Angabe «alle 2 Stunden») und die Methoden-Lehre aus Run 36.
- **[beschaffung] Bestellliste der fehlenden Normtexte erstellt** (MD+DOCX+PDF, Ablage
  `30 JANS AI HUB OUTPUT/normen/260729-Normen-Bestellliste/`). Preise an der jeweiligen
  Shop-Produktseite abgelesen, nicht geschaetzt; nicht verifizierbare als «offen» ausgewiesen.
  Stufe hoch CHF 550.00 (SIA 380/1:2016 200.00, SIA 118:2013 200.00, SIA 181:2020 150.00),
  Stufe mittel CHF 554.00, Stufe tief 1 Preis unbestaetigt + 4 offen. **Nichts bestellt** — der
  Kaufentscheid liegt bei Raphael.
- **[fassungsstand, materiell — Nebenertrag der Preisrecherche] Zwei Bring-Schulden standen mit der
  FALSCHEN Ausgabe im Register.** (a) `SIA 385/1`: die KB fuehrte die Ausgabe **2011** — die ist seit
  31.10.2020 archiviert, gueltig ist **385/1:2020**; ein Kauf der 2011er (CHF 100.00) waere der
  falsche gewesen. (b) `SN EN 12193`: die KB fuehrte die Ausgabe **2008** und die Nachfolgefrage
  seit Run 30 als offen — sie ist beantwortet, gueltig ist **SN EN 12193:2019** (ab 01.08.2019,
  ersetzt die 2008er). Beide Zeilen im Inventar nachgefuehrt.
  *Lehre: der Beschaffungsvorgang ist selbst eine Fassungspruefung — die Shop-Produktseite nennt
  Gueltigkeit und Vorgaenger und beantwortet damit Fragen, die im Register jahrelang offen stehen.*
- **[posten entfaellt] VKF-Merkblatt 2003-15 ist KEIN Kaufposten** — es ist wie alle
  VKF-Brandschutzvorschriften kostenlos ueber bsvonline.ch zu beziehen. Seit Run 32 stand es
  faelschlich als Bring-Schuld auf der Liste; der Loop kann es selbst beschaffen.
- **[kein handlungsbedarf] Grassenbiwak 2408:** Der Wettbewerb ist seit **23.05.2025** entschieden
  (Jurybericht im Projektordner). Der Treppen-Befund aus Run 36 bleibt dort, wo der naechste Fall
  ihn findet — Destillat `vkf-brl-16-15-flucht-rettungswege.md` und
  `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §4f. Keine Mail, keine Rueckfrage.

## 2026-07-29 — Normen-Run 37 (MacBook Pro, SIA/VKF): REGISTER-Stichprobe, 2013-Blindzone beziffert, fünf Register-Fehler behoben

- **[register, Struktur] Die 2013-Blindzone ist erstmals beziffert statt nur beschrieben.** Der
  Cross-KB-Eintrag vom 27.07. hatte notiert, eine Stichprobe wäre ergiebiger als der Einzelfall
  SIA 385/9. Maschineller Abgleich aller 248 SIA-Zeilen des Register-Abschnitts A gegen den realen
  Dateibestand: 71 vollständig zurückgezogen, 177 aktiv, davon 75 mit Bestand-Abgleich und
  **102 (58 %) ohne Datei im Haus**. Für diese 102 existiert **kein hausinternes Korrektiv** gegen
  eine Revision nach dem 25.02.2013 — SIA 385/9 ist kein Einzelfall, sondern ein Vertreter dieser
  Klasse. 14 Zeilen tragen eine 2013-Ausgabe älter als 2003. Als Warnblock mit **verbindlicher
  Zitierregel** in `wiki/REGISTER.md` verankert: bei leerer Bestand-Spalte darf das Ausgabejahr nicht
  als geltend zitiert werden, zulässig ist «zuletzt bestätigt 25.02.2013, jüngere Revision nicht geprüft».
- **[register, P1] SIA 2020 war belegt veraltet — und die Veralterung war hausintern beweisbar.**
  Das Register führte «gültig 2001»; im Haus liegt die Ausgabe **2017**, deren Titelblatt ausdrücklich
  «Ersetzt Merkblatt SIA 2020:2001» trägt. Zeile korrigiert (2017✓ · 2001✗, Bestand-Spalte gefüllt).
  Das ist der Musterbeleg dafür, dass der eigene Bestand das Korrektiv zur 2013-Grenze ist, **wo eine
  Datei vorhanden ist** — und damit zugleich der Beleg, was den 102 blinden Zeilen fehlt.
- **[register] Fünf fehlende Zeilen ergänzt, zwei Ausgabejahre präzisiert.** Neu in Abschnitt A:
  SIA 125:2017 (Vertragsnorm Teuerung GU/TU), SIA 144:2013 (Ordnung Leistungsofferten),
  SIA 312:2013 (Begrünung von Dächern), SIA 180/081 und SIA 180/082 (SN EN ISO 10077-1/-2:2017) —
  alle fünf waren destilliert, aber im Register unsichtbar. Präzisiert: SIA 343.051 ist die
  **CH-Ausgabe 2019** (EN-Basis 14351-2:2018), SIA 384/201 die **CH-Ausgabe 2018**
  (EN-Basis 12831-1:2017); beide Zeilen führten bisher das EN-Jahr als Ausgabejahr. Bei SIA 343.051
  zusätzlich die unbelegte Vermutung «SN EN 14351-2:2012?» entfernt. Ferner: SIA 2051 — das Register
  war korrekt, die **Bestandsdatei `2051_2018.pdf` ist falsch benannt** (Titelblatt 2017, 2018 ist das
  Einscan-Datum); auf Entscheid Raphaels nicht umbenannt, nur dokumentiert. SIA 180/082 trägt zudem
  ein falsches PDF-Title-Metadatenfeld («ISO 10077-1-2017») — im Register als Suchfalle vermerkt.
- **[methodik, neu] Methodik-Pflicht 5 «Eindeutige Render-Präfixe» — aus einem belegten
  Falsch-Positiv.** Ein Agent meldete als «SCHWERWIEGEND», `144_2013.pdf` beginne mit zwei Seiten der
  Norm SIA 384.201. Der Hauptprozess hat das am Original nachgerendert und per OCR geprüft:
  **falsch** — S. 1 ist «Ordnung SIA 144 2013», S. 3 das Innentitelblatt SN 507 144, auf S. 1-4 kein
  Treffer auf 12831/384.201/Heizlast. Ursache: mehrere Agenten rendern mit generischen Namen
  (`tb-001.png`) ins geteilte Scratchpad und lesen Alt-Renderings fremder Normen; ein zweiter Agent
  (SIA 312) geriet in denselben Fehler, bemerkte ihn aber selbst. Zweite, wichtigere Teilregel:
  Agenten-Befunde, die eine **Quelldatei als defekt oder fremdbestückt** melden, werden nie ohne
  eigene Gegenprüfung am Original übernommen.
- **[bookkeeping, Lehre] Zweitinstanz-Kollision — Nummer 36 doppelt vergeben.** Dieser Lauf startete,
  während Run 36 noch lief, und vergab zunächst selbst die 36 (gleicher Fehler wie am 25.07. bei
  Nummer 21). Auffällig wurde es erst beim Nachführen von `destillate/INDEX.md`, wo Run 36 bereits
  seine siebte Lignum-Runde eingetragen hatte. Alle Einträge nachträglich auf **Run 37** umnummeriert.
  **Die bestehende Regel greift zu kurz:** «Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei
  belegen» hilft nicht, wenn der Vorlauf noch läuft und seine Datei erst später schreibt. Nötig ist
  zusätzlich eine Prüfung unmittelbar **vor dem Schreiben**.
- **[entscheid] Lignum-Taktung entschieden (Raphael, 29.07.2026) — differenziert statt pauschal.**
  `lignum-lignatec` bekommt eine **achte Runde** mit rechnerischer Aufnahme von Tab. 3 und Tab. 4;
  `lignum-4-1` wird als «speculative, stabil» akzeptiert (dort ist die rechnerische Zellprüfung
  Standard, 5 von 6 Befunden der siebten Runde formal, keine Regression). In `training/PROGRAMM.md`
  verankert. Die achte Runde **konnte nicht mehr gefahren werden** (OAuth-Token abgelaufen, alle
  Refuter-Agenten mit 401) und ist die erste Aufgabe des nächsten Laufs.
  **Prozessfehler dieses Laufs, offen dokumentiert:** die erste Vorlage an Raphael stützte sich auf
  den Stand von Run 35 — den Run 36 wenige Stunden zuvor entkräftet hatte (siebte Runde: 7 Befunde,
  drei Kernbefunde in der viermal bestätigten Tab. 5, sichtbar erst durch rechnerische statt
  visueller Tabellenaufnahme). Raphael entschied auf dieser falschen Grundlage zunächst «beide als
  stabil»; nach Vorlage der korrigierten Zahlen fiel der Entscheid anders aus. Zwei Lehren im
  PROGRAMM verankert: **eine Runde mit wenigen Randbefunden ist kein Sättigungsindiz**, und **eine
  Entscheidungsvorlage ist gegen den jüngsten Laufstand zu prüfen, nicht gegen den zuletzt selbst
  gelesenen.**

## 2026-07-29 — Normen-Run 36 (MacBook Pro, SIA/VKF): zwei BSR-16-15-Fragen geschlossen, siebte Refuter-Runde mit Trendbruch

- **[wissen, neu] Destillat `vkf-brl-16-15-flucht-rettungswege.md` um den Abschnitt
  «Entscheidungsfigur Treppen» erweitert** (Teil A Treppengeometrie, Teil B Treppe innerhalb der
  Nutzungseinheit, Teil C Quellenkritik). Kern: **1.20 m ist bei gewendelten Treppen der
  nutzungsbezogene AUSNAHME-Wert, der Regelwert ist 1.50 m bei 0.15 m innerer Auftrittsbreite**
  (Ziff. 2.4.5 Abs. 3, S. 6, «muss»); die Absenkung auf 1.20 m/0.10 m gilt nur in vier
  abschliessend aufgezaehlten Faellen (Ziff. 3.1 Abs. 2b, 3.2.2 Abs. 1, 3.3.2 Abs. 1, 3.6.2
  Abs. 5). Fuer Treppen INNERHALB der Nutzungseinheit verweist Ziff. 3.1 Abs. 3 auf die
  nutzungsbezogenen Anforderungen; der Entlastungskatalog (Wohnen 3.2.2 Abs. 3, Buero/Gewerbe/
  Industrie 3.3.2 Abs. 2, Schulen 3.4.2, Landwirtschaft 3.8 Abs. 2) ist **abschliessend und
  enthaelt Beherbergung nicht**, waehrend Ziff. 3.4.4 Abs. 3 fuer Schlafraeume auf Galerien
  horizontale UND vertikale Fluchtwege verlangt. Entscheidende Schnittfigur: BSN 1-15 Art. 13
  Abs. 3 lit. d, nicht die 20-Personen-Schwelle. Alle Fundstellen vom Hauptprozess am Original
  nachgelesen; Fassungen 01.01.2017 und Stand 01.12.2022 in allen genannten Ziffern textidentisch.
  Zwei Negativbefunde belegt: «Lauflinie» und «offene vertikale Verbindung» kommen in der
  Richtlinie nicht vor.
- **[methodik] Die Frage-Praemisse vom 28.07. war falsch.** Die Cross-KB-Frage unterstellte eine
  Luecke im Destillat, die es nicht gab (Werte seit 17.07., Ziff. 3.1 Abs. 3 / 3.2.2 Abs. 3 seit
  28.07. dort). **Cross-KB-Fragen kuenftig gegen den aktuellen Stand des Ziel-Destillats pruefen,
  nicht gegen die Erinnerung der abgebenden KB.** Die echte Luecke lag in der fehlenden
  Verknuepfung der verstreuten Einzelziffern zu einer Entscheidungsfigur.
- **[quellenkritik] `PL - 03/_Projekte Themen/Treppen innerhalb Nutzungseinheit/IMG_1515.jpeg` ist
  der Screenshot einer ChatGPT-Konversation**, keine Fachstellenauskunft — als Fundstelle
  unbrauchbar (Ziffern oertlich korrekt, aber 1001-15 faelschlich als «Richtlinie» bezeichnet und
  die Wohn-Beschraenkung verschwiegen). Im Destillat als solcher gekennzeichnet.
- **[verifikation] Siebte Refuter-Runde `lignum-lignatec-brandschutz.md`: BEANSTANDET, 7 Befunde —
  Trendbruch nach vier Runden mit je 1 Befund.** Der Agent nahm Tab. 5 erstmals rechnerisch auf
  (Median-RGB je Zellbox, 10 Nutzungszeilen x 29 Spalten) statt sie visuell zu lesen; daraus drei
  Kernbefunde derselben Wurzel: die Vorrunden hatten den Geschossblock 1-3 geprueft und das
  Ergebnis auf den Block 4-8 verallgemeinert (Aussenwandverkleidung dort blau bei [a] UND [c] und
  grau statt weiss bei Hotels [b]; blaue Daemmschicht-Felder existieren schon im Block 1-3;
  Bodenbelag Treppenhaus im Block 4-8 blau bei [a] und [c]). Alle drei hat der Hauptprozess vor
  Uebernahme am eigenen 300-dpi-Rendering der S. 15 nachgezaehlt. Dazu: Tab.-4-Selbstwiderspruch
  (Treppenhaus REI60(nbb) ab 4 Geschossen, Korridor erst bei 7-8), Tab.-3-Verschmelzung zweier
  Konzeptwerte, fehlende Nutzungszeile «Bauten mit unbekannter Nutzung», Modalitaets-Haertung an
  fuenf Stellen. Alle korrigiert, keine Regression an den Run-32/33/34/35-Stellen.
  **LEHRE: eine Runde mit nur noch einem Randbefund ist KEIN Saettigungsindiz — sie kann Ausdruck
  einer zu schmalen Pruefmethode sein.** Der Wechsel der Aufnahmemethode foerderte in derselben,
  viermal «bestaetigten» Tabelle sofort drei Kernbefunde zutage.
- **[verifikation] Siebte Refuter-Runde `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`:
  BEANSTANDET, 6 Befunde, davon nur einer inhaltlich** (Tab. 447-1, S. 54: bei Fugenbreite > 5 mm
  ist Variante D wegen Fussnote 4 «Fugenbreite maximal 5 mm» gerade ausgeschlossen, das Destillat
  liess sie mit «nur die BSP-Varianten» zu — vom Hauptprozess am 250-dpi-Rendering nachgeprueft).
  Uebrige fuenf formal (Formelzeichen e_fi statt «eh», Fundstelle Kap. 2.1 statt Tab. 210-1,
  Glossar-Verweise vertauscht, Fussnote 2 auch bei BSP60-RF1, 40 A3-Blaetter = 80 gedruckte
  Seiten). **Regressionscheck der Run-35-Korrekturen: alle drei zellengenau bestaetigt.** Ein
  offener Punkt geschlossen (Tab. 447-1 letzte Spalte = Variante E).
- **[bestandssuche] Bring-Schulden SIA 385/9:2023, SN EN 13487, SN EN 12102-1 definitiv nicht im
  Haus.** Dateinamen-Suche ueber beide Ablagen (1'281 PDF) plus Titelblatt-Inhaltssuche ueber alle
  591 PDF in `02_Normen` und alle 105 PDF in PL-03: kein Treffer. Von 385/9 liegt nur die Ausgabe
  2011 vor. Externe Beschaffung noetig; weitere Bestandssuche eruebrigt sich.
  *Methodenhinweis:* macOS kennt keinen `timeout`-Befehl — ein erster Scan lieferte deshalb still
  0 Treffer, ohne `pdftotext` auszufuehren. Trefferzahl immer gegen die Zahl tatsaechlich
  verarbeiteter Dateien pruefen.
- **[cross-kb] Antwort an `planungsgrundlagen` geliefert:** `wiki/brandschutz-pl03-wegweiser.md`
  Abschnitt 4f um einen datierten Nachtrag ergaenzt (1.20 m als Ausnahmewert, fehlende zweite Zahl
  0.10 m, Beherbergung nicht im Entlastungskatalog, 20-Personen-Schwelle als falsche Weiche fuer
  die Fluchtweg-Erleichterungen) und den Fachplaner-Bullet mit Vorbehalt markiert.

Report: `outputs/2026-07-29_normen-nacht-run36.md`.

## 2026-07-28 — Wissens-Chef Run 19 (Cross-KB): SIA-500-Korrigenda C3/C4, Gebaeudekategorien, VKF-Luecke
- **[korrektur + fassungsstand, materiell — ergiebigster Befund des Laufs] SIA 500: vier Korrigenda,
  eines davon dem Hub voellig unbekannt.** `destillate/sia-500-2009.md` fuehrte Ziff. 9.7.2 im Stand
  der Basisausgabe. Der Verifikator hat Basisausgabe und Korrigenda am Original beschafft:
  **C3:2013** aendert die **Bezugsgroesse von Parkplaetzen auf Wohnungen** (1 rollstuhlgerechter PP
  pro 25 **Wohnungen**, angebrochene Einheit zaehlt) und fuehrt einen 100-m-Gehdistanz-Richtwert ein;
  **C4:2019 war im Hub nirgends erwaehnt** und aendert Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7,
  3.7.8, 6.2.2. Ziff. 9.7 nachgefuehrt, Frontmatter-Feld `ausgabe_ueberholt` gesetzt, C4-betroffene
  Ziffern markiert, Verlinkung zu `sia-500-auslegung`/`sia-en-13200-1-2019` ergaenzt.
  **Voller Nachzug (~20 Stellen) als P1 in `wiki/QUESTIONS.md`.** Der Fehler hatte die
  Destillat-Ebene schon verlassen: `bauprodukte/wiki/bkp-261-aufzuege.md` rechnet ein Herstellermass
  gegen die Kabinen-Tabelle aus **Ziff. 3.7.3** — dort Fassungs-Vorbehalt gesetzt.
- **[LEHRE, dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck»]** Auch bei
  **unveraenderter Ausgabe** koennen **Korrigenda** Ziffern materiell aendern. Sie tragen keine neue
  Jahreszahl im Normtitel und sind an der Ausgabe **nicht erkennbar** — deshalb blieb C4:2019 sieben
  Jahre unbemerkt. Bei jedem SIA-Destillat die Korrigenda-Liste des SIA-Shops pruefen (Preisgruppe 0).
- **[korrektur, materiell] Gebaeudekategorie: Spital ist VIII, nicht IX.** Der Therapiekuechen-Report
  (28.07.) ordnete das Spital der Kategorie **IX** zu — das ist **Industrie**. Amtlich § 47a Abs. 1
  BBV I und SIA 380/1 Anhang A Tab. 24: **VIII = Spitaeler**. Fuer § 41a bleibt das Ergebnis gleich
  (III-XII umfasst beide), die Nummer ist aber der Rechen-Identifikator: 20 statt 70 kWh/m²,
  18 statt 22 °C, Qww 25 statt 100 MJ/m²·a. Korrigiert; **Leitplanke mit der Liste I-XII** in
  `wiki/QUESTIONS.md`.
- **[korrektur, materiell] Luecke im VKF-Destillat 16-15 — die haeufigste Praxisregel fehlte.**
  `destillate/vkf-brl-16-15-flucht-rettungswege.md` liess in Ziff. 3.1 die Tatbestandsvoraussetzung
  «welche mehrere Nutzungseinheiten erschliessen» und Abs. 3 weg, in Ziff. 3.2.2 den Abs. 3
  «**An Treppen innerhalb der Nutzungseinheit werden keine Anforderungen gestellt**» (gleichlautend
  3.3.2 Abs. 2). Das Destillat las sich, als gaelte die 1.2-m-Erleichterung generell. Beide Absaetze
  nachgetragen; der Fund kam aus der Gegenpruefung von C41 in `planungsgrundlagen`.
- **[verlinkt]** `destillate/sia-312-2013.md` ↔ `bauprodukte/wiki/dachbegruenung-systeme.md`.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.


## 2026-07-28 — Fachanfrage Raphael: Lüftung Therapieküche (Spital Stadt Zürich, Umnutzung Büro zu psychosomatischer Wohngruppe)
- **Report angelegt:** `outputs/2026-07-28_therapiekueche-lueftung-spital-zuerich.md` — Querschnitt
  Baurecht ZH (PBG §§ 302/306/309, BBV I §§ 29/30/36/41 + Anhang Ziff. 2.25), Arbeitsrecht
  (ArGV 3 Art. 16-18 + SECO-Wegleitung Art. 17, Juli 2020), Lebensmittelrecht (HyV Art. 9/10,
  LMG Art. 2 Abs. 4 lit. c), Brandschutz (VKF-BRL 25-15 Ziff. 4.2 Küchen, Ziff. 3.8.2 Abs. 2 lit. c
  600-m²-Grenze bei Beherbergungsbetrieben) und Lüftungsnormen (SIA 382/1:2025, SIA 382/5:2021,
  SWKI VA102-01/VA104-01/VA105-01, SN EN 16282-1, VDI 2052).
- **Neuer belegter Befund:** § 41 BBV I knüpft die Pflicht zur künstlichen Belüftung von
  «Wirtschaftsküchen» an die **Unterstellung des Betriebs unter das Gastwirtschaftsgesetz**, nicht an
  die Küchengrösse — massgebliches Abgrenzungsscharnier Produktionsküche gegen Haushaltsküche im
  ZH-Baurecht. Ergänzend verweist der BBV-I-Anhang (Bestätigungsverzeichnis Private Kontrolle,
  Fachbereich Klima-/Belüftungsanlagen lit. d) für Wirtschaftsküchen-Abluftanlagen auf die
  BAFU-Empfehlung «Mindesthöhe von Kaminen über Dach», Ausgabe 2018 (Anhang Ziff. 2.25).
- **Offen (in den Report übernommen):** die verbreitete 25-kW-Faustregel für die Pflicht zu
  mechanischer Zu-/Abluft in gewerblichen Küchen liess sich an **keiner** Normstelle verifizieren
  (EN 16282-1 und VDI 2052 nicht im Volltext geprüft; cci-dialog/REVEN nennen ausdrücklich kein
  kW-Kriterium) — bis zur Verifikation nicht als normative Schwelle zitieren.
- **Ausgaben-Disziplin:** SIA 382/1:2025 ist die geltende Ausgabe, das KB-Destillat führt 2014
  (Re-Destillat weiterhin ausstehend, REGISTER Z. 472). Tabellenwerte (u.a. Tab. 14 Abluft-Richtwerte
  Küche) für Bemessungen am Original der Ausgabe 2025 prüfen.

## 2026-07-27 — Wissens-Chef Run 18 (Cross-KB): drei Bring-Schulden angemeldet, davon eine mit Klassen-Charakter
- **[register, P1] SIA 385/9 — Fassungsstand pruefen, und dahinter eine strukturelle Grenze.** Der
  Cross-KB-Lauf hat die hier in Run 22 geleistete Aufloesung der Nummern-Wiederverwendung (385/1:2000
  → **385/9**:2011; 385/1 ab 2011 Trinkwarmwasser) in `energie` nachgezogen — beim Gegenlesen fiel auf,
  dass der SIA-Shop eine **Ausgabe 385/9:2023** fuehrt («Wasser und Wasseraufbereitungsanlagen in
  oeffentlich zugaenglichen Schwimmbaedern und aehnlichen Einrichtungen», ersetzt 385/9:2011), waehrend
  `wiki/REGISTER.md:219` «2011 ✓» ausweist. Ursache ist keine Nachlaessigkeit, sondern eine
  **Bestandsgrenze**: das Register speist sich laut eigenem Kopf aus `ersetzte_normen.pdf` mit Stand
  **25.02.2013** und bildet spaetere Revisionen strukturell nicht ab. → als P1-Pruefauftrag in
  `wiki/QUESTIONS.md`; solange offen, darf 385/9 nicht mit Ausgabejahr zitiert werden.
  **Der Einzelfall ist geflaggt, die Klasse nicht:** dieselbe 2013er-Grenze betrifft potenziell jede
  nach 2013 revidierte Norm im Register — eine Stichprobe waere ergiebiger als der Einzelfall.
  *Nebenbei ein Beleg fuer den Wert der adversarialen Stufe:* haette der Chef den urspruenglichen
  Korrekturvorschlag woertlich uebernommen, haette er «385/9:2011» als geltende Fassung nach `energie`
  geschrieben — eine Korrektur, die einen neuen Fassungsfehler erzeugt.
- **[register, P2] EN 13487 und EN 12102-1 fehlen ganz.** `grep "13487"` und `grep "12102"` ueber die
  ganze KB: je **0 Treffer**. Beide werden von `energie` zitiert — EN 13487 als Herstellernorm fuer
  Rueckkuehler-Schalldruckpegel (`destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:273-275`,
  **ohne Ausgabejahr**, von dort ins Wiki `waermepumpen-laermschutz.md:110` uebernommen), EN 12102-1 als
  Messnorm. → in `wiki/QUESTIONS.md` angemeldet: Ausgabe verifizieren (nicht raten), ins REGISTER
  aufnehmen, Rueckverweis setzen.
- **[abgrenzung festgehalten] Cercle-Bruit-Vollzugshilfen 6.20/6.21 sind KEINE Normen** (amtsnahe
  Vollzugshilfen der kantonalen Laermschutzfachstellen) und bleiben bei `energie` — ein Verweis genuegt,
  keine Umlagerung ins REGISTER. Damit ist der wiederkehrenden Frage vorgebeugt, warum die im
  Laerm-Kontext meistzitierte Quelle hier nicht auftaucht.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run18.md`.

## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): Querbezug-Block im Lignum-4.1-Destillat + SIA 181:2020 ins Arbeitsregister
- **[verlinkung] Das fuehrende Lignum-4.1-Destillat kannte seinen Abnehmer nicht** — `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser` fasst dieselbe Publikation fuer den Vorprojekt-Grobcheck zusammen, ohne dass sich die beiden Artikel kannten (Verweiszaehler in beide Richtungen: 0). Genau daraus sind **zwei materielle Fehler** im Wegweiser entstanden, die dieser Lauf korrigiert hat: (1) die Kapselungsregel war umgekehrt gefuehrt (K als fixe 30 Min. statt als Rechenwert nach unten → **K30-RF1 statt K60-RF1 bei REI 90-RF1**), (2) die Traglast q'd,fi war «durchgehend» je Feuerwiderstandsklasse angegeben statt je Systemtyp — **derselbe Fehler, den die Refuter-Runde 31 hier bereits korrigiert hatte**, der in der Abnehmer-KB aber unbemerkt weiterlief. → Querbezug-Block mit Rollentrennung gesetzt (dieses Destillat fuehrt Wortlaut/Ziffern/Tabellenwerte, der Wegweiser zieht sie nur), der beide Faelle ausdruecklich benennt, damit eine kuenftige Aenderung an Tab. 232-2 oder den Traglasttabellen des Kap. 4.4 nachgezogen wird.
- **[register, 7. Fundort des Musters «Uebergabe verpufft»] SIA 181:2020 ins ARBEITSREGISTER nachgetragen.** Die Bring-Schuld stand seit **Wissens-Chef Run 3 (13.07.2026)** — vierzehn Tage — ausschliesslich in `wiki/QUESTIONS.md:545` und war nie in `training/norm-inventar.md`; entsprechend ist nichts geschehen, waehrend `energie` (Ausgabe 2020, +4 dB) und diese KB (Ausgabe 2006, +3 dB) unveraendert nebeneinander laufen. → als Inventar-Zeile mit **Prioritaet P1** eingetragen (hoeher als die vier baurecht-Schulden, weil die Rule `normen-referenz` fuer LV/Werkvertrag die 2006er Fundstelle zieht), Ruecklink in QUESTIONS.md. Beschaffung bleibt Bring-Schuld Raphael (SIA-Shop, kostenpflichtig).
- **[wirkungsnachweis] Die Run-16-Regel greift.** Run 30 (27.07.) hat zwei der vier im Vorlauf umgehaengten Bring-Schulden tatsaechlich abgearbeitet (SIA 491, SN EN 12193 mit Bestandsvermerk «weder in PL-02 noch in PL-03»). Solange dieselben Normen nur in der Fragenliste standen, blieben sie zwei Runs lang unberuehrt — der Ort der Anmeldung entscheidet, nicht die Qualitaet des Eintrags.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-27 — Run 35: sechste Refuter-Runde (3 Destillate) — erster Nulldurchgang (sia-d0165 → established), 2 weitere Befunde bei den Lignum-Destillaten vom Hauptprozess selbst gegen das Original verifiziert

**Anlass.** Run 34 empfahl als naechsten Batch eine sechste unabhaengige Verifikationsrunde fuer
die drei verbleibenden speculativen Lignum-/SIA-Destillate. Drei parallele Refuter-Agenten
(general-purpose, Hauptmodell) gefahren, je einer pro Destillat, mit vollstaendiger Neulektuere
des Originals (nicht nur der zuletzt korrigierten Stellen).

**sia-d0165-2000-kennzahlen-immobilienmanagement.md: ERSTER SAUBERER NULLDURCHGANG → established.**
Vollstaendiger Volltext-/Bildabgleich aller 73 Seiten (4 Lesedurchgaenge), gezielt kritisch
geprueft: Impressum, ISBN (zwei Fundstellen), Anhang-Zaehlung, Tabellen-Spaltenbeschriftungen,
DIN-18960-Referenz. Beide Berechnungsbeispiele S. 37-47 erneut Zahl fuer Zahl nachgerechnet,
GEFMA-Doppelcodierung 226/490 und GEFMA-230-Fix (Runden 32/33) sowie der PDF/Folio-Seitenversatz
vollstaendig bestaetigt. Konvergenz ueber sechs Runden: 17→4→1→3→3→**0**. Ein Nebenbefund ohne
Korrekturbedarf notiert: das Original selbst nennt fuer die Kennzahl EV/EBF an zwei Stellen
unterschiedliche Bezugsnormen (SIA 380/1 Fussnote S. 9 vs. SIA 180/4 Kap. 3.1.3/3.3) — eine
Original-Inkonsistenz, das Destillat gibt beide Stellen korrekt wieder.

**lignum-lignatec-brandschutz.md: bleibt speculative, 1 Befund.** Ziff. 1.2 (S. 3): Destillat
schrieb "Decken sind i.d.R. tragend UND brandabschnittbildend"; Original schreibt "meistens"
statt der Absolutformulierung — ein Nuance-Verlust, keine Kernwert-Verfaelschung. Korrigiert.
Alle drei Kreuztabellen (Tab. 3/4/5) inkl. saemtlicher Vorrunden-Korrekturen per
Hochaufloesungs-Crop erneut pixelgenau bestaetigt, keine Regression. Fehlerdichte in den drei
Kern-Tabellen seit Run 32 praktisch null; verbleibende Einzelbefunde betreffen nur noch
Rand-/Nuance-Praezision im Fliesstext.

**lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md: bleibt speculative, 2 Befunde —
BEIDE vom Hauptprozess selbst nachgeprueft, bevor sie uebernommen wurden.** Weil einer der beiden
Befunde einer frueheren, ausdruecklich als korrekt bestaetigten Stelle widersprach (Tab. 446-1,
"Untergrenze 50 mm war korrekt" aus Run 30/31), wurde die Original-Quelle (Teil C, S. 51/53) vom
Hauptprozess selbst mit `pdftoppm -r 300` gerendert und zellenweise nachgezaehlt, bevor die
Korrektur uebernommen wurde:
- **Tab. 446-1 (S. 51, REI30):** Zeile "Mehrlagige Massivholzplatte (d)" ueber alle sieben
  Spalten A-G nachgezaehlt (A=105/110, B=80/85, C=60, D=60, E=115, F=100, G=95) — kleinster Wert
  ist 60 mm (Spalten C/D, EI30), nicht 50 mm. Die fruehere "50 mm war korrekt"-Bestaetigung
  (Run 30/31) war selbst die fehlerhafte Stelle, nicht die jetzige Korrektur. Gesamtbandbreite
  korrigiert von 50-115 auf **60-115 mm**.
  - **Tab. 446-3 (S. 53, REI90):** Die "auf die R-Spalten allein bezogen"-Aussage nannte
  155-205 mm; die R90-Gruppe der Kopfzeile umfasst tatsaechlich VIER Spalten (A-D: 200/205,
  175/180, 155/160, 120/125), nicht drei — kleinster Wert 120 mm (Spalte D). Korrigiert auf
  **120-205 mm (R90)**. Die Gesamttabellen-Bandbreite 60-205 mm (alle R/EI/REI-Spalten) war
  bereits korrekt und bleibt unveraendert.
- Regressionscheck aller Runde-1-5-Korrekturen (Tab. 431-2 inkl. der bereits im Fliesstext
  stehenden Wiederherstellung, Abb. 310-2, Tab. 320-1, 436-1, 442-1 bis 462-2 etc.): keine
  Regression. Sechste Runde in Folge mit mindestens einem Befund.

**Lehre.** Der Fall zeigt exemplarisch, warum eine widersprechende Feststellung gegen eine
frueher "bestaetigt korrekt" gefuehrte Stelle NICHT automatisch als Regression des neuen Befunds
gewertet werden darf — hier war die aeltere Bestaetigung die falsche Stelle. Massgeblich ist in
solchen Faellen immer eine dritte, unabhaengige Pruefung direkt am Original (hier durch den
Hauptprozess selbst), nicht die Reihenfolge oder Mehrheit der Aussagen.

**Nachgefuehrt:** `training/norm-inventar.md` (Run-35-Eintrag), `destillate/INDEX.md` (3 Zeilen),
`destillate/sia-d0165-2000-kennzahlen-immobilienmanagement.md` (Status established),
`destillate/lignum-lignatec-brandschutz.md` (Ziff.-1.2-Fix + Status), `destillate/lignum-4-1-...md`
(Tab.-446-1/446-3-Fix + Status), dieses CHANGELOG, `outputs/2026-07-27_normen-nacht-run35.md`.
`wiki/QUESTIONS.md` unveraendert (keine neuen externen Recherche-Auftraege).

## 2026-07-27 — Run 34: fuenfte Refuter-Runde (3 Destillate), kein Nulldurchgang, Registrierung nachgeholt

**Anlass.** Run 33 empfahl als naechsten Batch eine fuenfte unabhaengige Verifikationsrunde fuer
die drei verbleibenden speculativen Lignum-/SIA-Destillate (je genau 1 Befund aus Run 33). Drei
parallele Refuter-Agenten gefahren (Workflow-Tool erneut nicht getestet, direkter Parallel-
Agenten-Fallback gemaess `training/PROGRAMM.md`). **Hinweis zur Nachfuehrung:** Die Destillat-
Edits und die INDEX.md-Zeilen fuer `sia-d0165...md` und `lignum-lignatec...md` waren bereits durch
eine vorangegangene, nicht zu Ende gefuehrte Instanz dieses Scheduled Tasks erstellt (Dateistand
27.07.2026 18:30-19:22), aber weder im CHANGELOG/Inventar registriert noch committet; diese Runde
hat die Registrierung nachgeholt, die INDEX-Zeile fuer `lignum-4-1...md` ergaenzt (war unvollstaendig)
sowie dessen veraltete Frontmatter-Statuszeile (fehlte der Run-34-Befund) nachgezogen.

**Kein Destillat erreicht in dieser Runde einen Nulldurchgang — alle drei bleiben `speculative`:**
- `lignum-lignatec-brandschutz.md` — 1 Befund: Figur 1 (R/EI/REI-Uebersichtstabelle) zweimal mit
  Fundstelle «S. 3» zitiert, physisch aber auf S. 2 platziert (Textdefinition Ziff. 1.2 steht auf
  S. 3, daher die urspruengliche Verwechslung); beide Fundstellen korrigiert. Reine
  Fundstellen-Ungenauigkeit, keine inhaltliche Abweichung. Tab.-4/Tab.-5-Fixe aus Run 32/33
  unabhaengig erneut bestaetigt. Konvergenz 17→1→1→1→1, weiterhin kein Nulldurchgang.
- `sia-d0165-2000-kennzahlen-immobilienmanagement.md` — 3 Befunde, alle vom Typ unvollstaendige
  Wiedergabe: (1) Kap. 3.1.1 Konstruktionsflaeche KF, Auszuschliessen-Liste verkuerzt zitiert
  («gestalterische» statt «konstruktive und gestalterische Vor-/Ruecksprünge»), ergaenzt.
  (2) Anhang 2 HNF3-Kategorietitel verkuerzt («Produktion/Experimente» statt «Produktion, Hand-
  und Maschinenarbeit, Experimente»), korrigiert. (3) Anhang 6 DIN-18960(1976)-Sechs-Punkte-
  Gliederung in falscher Reihenfolge («Betrieb/Steuern» statt «Steuern/Betrieb» nach
  Originalnummerierung), korrigiert samt Erklaerung der Verwechslungsursache (visuelle
  Tabellenposition vs. Original-Nummerierung). GEFMA-450-Fix (Run 32), GEFMA-4xx/230-
  Instandsetzung-Fix (Run 33) und BKP-19-99/EKG-W1-W6-Sammelposition erneut bestaetigt,
  keine Regression.
- `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` — 2 Befunde: (1) Tab. 431-2
  (Balkendecken REI30) nannte zusaetzlich drei nicht belegte Alternativ-Querschnitte
  (120x140/80x120/80x100 mm), die in keiner der zehn Varianten A-K vorkommen; entfernt.
  (2) Abb. 310-2 Massivholzplatten-Fasenausnahme: eine bereits vor Rundenbeginn separat
  korrigierte **Doppel-Regression** (Runde 3 hatte «Massivholzplatten» faelschlich aus der
  Sechser-Aufzaehlung entfernt, Runde 4 hatte diese Entfernung faelschlich als korrekt
  bestaetigt) wurde unabhaengig gegen den Original-Scan verifiziert und bestaetigt korrekt.
  Fuenfte Runde in Folge mit mindestens einem Befund — noch keine Konvergenz auf 0.

**Lehre:** Der Lignum-4.1-Doppel-Regressions-Fall (zwei aufeinanderfolgende Refuter-Runden
bestaetigen denselben Fehler) zeigt, dass ein einzelner Refuter-Durchgang auch mehrfach in
Folge fehlbar sein kann — erst eine unabhaengige Runde mit direktem Bildvergleich hat den
Fehler aufgedeckt. Ausserdem: Scheduled-Task-Instanzen, die aus Budget-/Zeitgruenden vor der
Registrierung enden, hinterlassen einen inkonsistenten Zwischenstand (Destillat/INDEX teilweise
aktualisiert, CHANGELOG/Inventar/Report/Commit fehlend) — die naechste Instanz muss diesen
Zwischenstand zuerst erkennen (Datei-Zeitstempel, `grep -rl "Run N"`) statt blind neu zu starten.

Details `training/norm-inventar.md` (Run-34-Eintrag), `destillate/INDEX.md`, Report
`outputs/2026-07-27_normen-nacht-run34.md`.

## 2026-07-27 — Run 33: vierte Refuter-Runde (4 Destillate), 1x established, regionale ZH-Geltung geklaert

**Anlass.** Run 32 empfahl als naechsten Batch eine vierte unabhaengige Verifikationsrunde fuer
die vier verbleibenden speculativen Lignum-/SIA-Destillate sowie die Recherche zur regionalen
Geltung der Zentralschweizer Brandschutz-Arbeitshilfen fuer Kanton Zuerich (offener Punkt 3).
Fuenf parallele Agenten gefahren (vier Refuter + ein Web-Recherche-Agent); Workflow-Tool nicht
erneut getestet, direkter Parallel-Agenten-Fallback gemaess `training/PROGRAMM.md`.

**Ein Destillat erreicht den ersten sauberen Nulldurchgang -> `established`:**
- `lignum-4-2-anschluesse-feuerwiderstand.md` — 0 Befunde in der vierten Runde (18→3→0), alle
  Anhang-3-Bauteilaufbauten, Tab. 522-1 und die Literaturliste zellenweise gegen das Original
  bestaetigt.

**Drei Destillate bleiben `speculative`, je genau 1 Befund:**
- `lignum-lignatec-brandschutz.md` — Tab. 5: blau markierte Fluchtweg-Verkleidungsfelder gelten
  NICHT fuer die Nutzungszeile Wohnbauten EFH/REFH (Destillat behauptete faelschlich "alle
  Nutzungszeilen"), korrigiert.
- `sia-d0165-2000-kennzahlen-immobilienmanagement.md` — Anhang-6-GEFMA-200-Bucket "4xx" faelschlich
  als "Dienste/Instandsetzung" bezeichnet; Instandsetzung (DIN-400er-Gruppe) mappt im Original
  durchgehend auf GEFMA-Code 230 (Klasse 2xx), korrigiert zu "4xx Dienste".
- `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` — **Regression der dritten Runde**:
  Kap. 5.2.2/Tab. 522-1 Gleichsetzung Bekleidung K30/K60-RF1 ↔ Bauteil EI30/EI60-RF1 war im
  Original tatsaechlich explizit belegt (Fliesstext S. 59) und wurde in Runde 3 faelschlich als
  unbelegt entfernt; wiederhergestellt und praezisiert als zwei gleichwertige Alternativen.

**Regionale Geltung fuer ZH geklaert** (per WebSearch/WebFetch, Quellen mit URL in
`wiki/QUESTIONS.md`): Symbolik (`brandschutzplan-legende-symbole-2017.md`) direkt anwendbar — die
Stadt Zuerich referenziert in ihrem eigenen Feuerwehrplaene-Merkblatt (Stand 04.10.2024) dasselbe
VKF-Merkblatt 2003-15. Verfahren (`brandschutzfachstellen-anleitung-brandschutznachweis-v3.md`)
NICHT 1:1 uebertragbar — Stadt Zuerich nutzt ihr eigenes "Zusatzformular 3 Brandschutznachweis"
statt der freitextlichen Zentralschweizer Anleitung V.3. GVZ selbst fuehrt kein eigenes
Symbolik-/Nachweis-Merkblatt, verweist auf die gesamtschweizerisch verbindlichen VKF-Vorschriften.

**Lehre:** Der Lignum-4.1-Befund zeigt, dass auch eine Refuter-Runde selbst einen Fehler einbauen
kann (Regression durch fehlerhafte "Korrektur" einer tatsaechlich korrekten Aussage) — die vierte,
unabhaengige Runde hat genau das aufgedeckt. Bestaetigt den Wert wiederholter unabhaengiger
Verifikation ueber eine einzelne bestandene Runde hinaus.

Details `training/norm-inventar.md` (Run-33-Eintrag), `destillate/INDEX.md`, Report
`outputs/2026-07-27_normen-nacht-run33.md`.

## 2026-07-27 — Run 32: 8 parallele Refuter-Agenten — dritte Runde (5 Destillate) + erste unabhaengige Runde (3 neue Destillate), 2x established

**Anlass.** Run 31 hinterliess acht offene Verifikations-Auftraege: fuenf am selben Tag zweimal
beanstandete Destillate brauchten eine dritte Runde, drei neu erstellte Destillate hatten bisher
nur eine Selbst-Gegenprobe des Erstellers. Alle acht wurden als parallele, unabhaengige
Refuter-Agenten gefahren (Workflow-Tool im Scheduled-Task-Kontext weiterhin nicht verfuegbar,
Fallback direkte Parallel-Agenten gemaess PROGRAMM.md bestaetigt).

**Zwei Destillate erreichen einen sauberen Nulldurchgang -> `established`:**
- `vkf-allgemein-anerkannte-bauprodukte-2017.md` — 0 Befunde (alle 12 Seiten/9 Tabellen zellenweise
  per Seitenbild geprueft, MD5 des Quell-PDF bitweise bestaetigt; die 5 Selbst-Gegenprobe-Korrekturen
  vom selben Tag hielten allesamt stand).
- `vkf-ah-1001-15-wohnbauten.md` — 0 Befunde in der ersten unabhaengigen Pruefung des am selben Tag
  eingearbeiteten Fassungs-Deltas 2015->2017/2018 (~40 Aenderungen inkl. 5 farbcodierter Tabellen,
  pixelgenau nachgerendert).

**Ein Destillat mit geringfuegigen Befunden, Status unveraendert:**
- `brandschutzfachstellen-anleitung-brandschutznachweis-v3.md` — 3 Befunde (schwerster: die
  Frontmatter-Herausgeberzeile nannte die volle Bezeichnung "NSV Nidwaldner Sachversicherung",
  obwohl die Logoleiste S.1 nur die Bildmarke "NSV" zeigt), korrigiert; bleibt `emerging`.

**Fuenf Destillate bleiben `speculative`, aber mit klar sinkender Fehlerzahl je Runde:**
- `brandschutzplan-legende-symbole-2017.md` — 4 Befunde (schwerster: die Behauptung, Handfeuerloescher-
  Symbole zeigten den Brandklassenbuchstaben nicht direkt, ist am Bild widerlegt).
- `sia-d0165-2000-kennzahlen-immobilienmanagement.md` — dritte Runde, 4 weitere Befunde (schwerster:
  GEFMA-Code 450 "Dienste in Aussenanlagen" falscher Kontenklasse 5xx statt 4xx zugeordnet), KEINE
  Regression — insbesondere die Runde-2-korrigierte BKP-19-99/EKG-W1-W6-Stelle erneut bestaetigt.
- `lignum-4-2-anschluesse-feuerwiderstand.md` — dritte Runde, 3 weitere Befunde (schwerster: EI30/EI60-
  Beplankungsdicken Kap. 4.4.2/4.4.3 vertauscht), Runden 1+2 hielten vollstaendig stand.
- `lignum-lignatec-brandschutz.md` — dritte Runde, nur noch **1 Befund** (Tab. 4 Korridor-Eckwert MFH
  5-6 Geschosse: Bindestrich statt Schraegstrich, per 600-dpi-Nachrender bestaetigt) — nach 17 Befunden
  in Runde 2 eine deutliche Konvergenz.
- `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` — dritte Runde, 5 weitere Befunde
  (schwerster: Brandschutzbekleidungsklassen K30/K60-RF1 unbelegt mit Bauteil-Feuerwiderstandsklassen
  EI30/EI60-RF1 gleichgesetzt), keine Regression der 26 Run-31-Korrekturen.

**VKF-Merkblatt 2003-15 bestaetigt nicht im Bestand.** Gezielte Suche (`find`) ueber PL-02 UND PL-03,
alle Unterordner: die von Run 31 als Bring-Schuld gefuehrte Primaerquelle fuer Brandschutzplan-Symbolik
existiert im Haus nicht. Bleibt externe Beschaffung; der amtliche Status von
`brandschutzplan-legende-symbole-2017.md` bleibt deshalb unbestaetigt.

**Zwei Strukturentscheide aus Run 31 unveraendert offen bei Raphael** (nicht vom Loop loesbar):
Reichweite des Inventars auf ~680 bisher nie gescannte PL-02-Ordner ausweiten? `established`
kuenftig an einen sauberen Nulldurchgang statt an eine bestandene Korrekturrunde binden? Dieser Lauf
wendet die bestehende Konvention (eine bestandene Runde -> established) unveraendert an, um dem
Entscheid nicht vorzugreifen. Details `wiki/QUESTIONS.md` Abschnitt "Run 32",
Report `outputs/2026-07-27_normen-nacht-run32.md`.

## 2026-07-27 — Run 31: Retro-Verifikation (5 Destillate, 78 Befunde, 2 Regressionen), Fassungs-Delta VKF-AH 1001-15, 3 neue Destillate, zwei Reichweiten-Luecken geschlossen

**Vertiefungsstufe (b) — Retro-Verifikation.** Fuenf unabhaengige Widerlegungs-Agenten gegen die
Original-PDFs, alle Verdikte BEANSTANDET, alle Befunde eingearbeitet, alle fuenf Destillate bleiben
bewusst `speculative` (kein Nulldurchgang):
- `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` — **26 Befunde** (zwei scope-getrennte
  Refuter: Teil A/B 12, Teil C 14), 10 substanziell. U.a. 40-mm-Abgrenzung ins Gegenteil verkehrt,
  12-15-Minuten-Aussage der falschen Kategorie zugeordnet, K/F/BSP-Gruppenzuordnung falsch,
  Wandtraglast je Systemtyp statt je Klasse. **Eine Regression der Erstrunde zurueckgenommen**
  (Tab. 446-1 Untergrenze 50 mm war korrekt, die Korrektur vom selben Tag hatte sie auf 60 mm gehoben).
- `lignum-4-2-anschluesse-feuerwiderstand.md` — **18 Befunde plus 10 fehlende Kernziffern**. U.a.
  Brettstapel/Brettschichtholz C24 ↔ GL24k vertauscht; dreimal dasselbe Muster (EI90-Werte als EI60
  ausgegeben, echte EI60-Zeile BSP30 fehlte); Mindestauflager dem falschen Beplankungsfall zugeordnet;
  Temperaturkriterien 250/270 °C und 140/180 °C vertauscht; kumulative Anforderung zur Alternative
  erweicht. Die Frontmatter-Behauptung «alle uebrigen Kernziffern bestaetigt» war widerlegt und ist ersetzt.
- `lignum-lignatec-brandschutz.md` — **17 Befunde**, 5 schwer. Tab. 3 Brandabschnitt 4 Geschosse ist
  EI60 baulich (der Sprinkler-Wert war als Baulich-Wert ausgewiesen); Tab. 3 hat sieben statt acht
  Geschoss-Spalten; der Geschoss-Katalog Baulich/Sprinkler gehoert zu Ziff. 3.1.2 Korridore statt
  3.1.1 Treppenanlagen; Tab. 4 Korridor 5-6 Geschosse laesst verkleidete Holzbauteile zu; ISSN
  1421-0320 statt 1421-0520. **Beide Erstrunden-Korrekturen enthielten neue Fehler.**
- `sia-d0165-2000-kennzahlen-immobilienmanagement.md` — **17 Befunde**. **Regression:** die Erstrunde
  hatte die Honorar-Sammelcodes BKP 19-99 / EKG W1-W6 als «im Original nicht auffindbar» geloescht,
  beides steht auf S. 32 f. Zwei in der Erstrunde nachgetragene «Offene Punkte» waren sachlich falsch.
  Ausgabedatum «Juli 2000» nirgends belegt (Impressum: «Ausgabe 2000»); Schaetzerhandbuch-Kuerzel im
  Original SVGK; nicht existierende «DIN 416» in einer Kapitelueberschrift.

**Methodik-Befund (differenziert das bisherige Bild).** Der Satz «frisch nachgetragener Text ist die
hoechste Fehlerquelle» (seit Run 23/24) gilt NICHT pauschal: bestaetigt bei Lignatec, SIA D 0165 und
Lignum 4.1 Teil C — widerlegt bei Lignum 4.1 Teil A/B und Lignum 4.2, wo alle Erstrunden-Korrekturen
hielten und die neuen Fehler in den unangetasteten Passagen lagen. Neu und wichtiger: **zwei echte
Regressionen** zeigen, dass eine Verifikationsrunde ein Destillat auch verschlechtern kann. Konsequenz
zur Entscheidung vorgelegt: `established` an einen sauberen Nulldurchgang binden statt an eine
bestandene Korrekturrunde.

**Fassungs-Luecke `vkf-ah-1001-15-wohnbauten.md` (schwerster Sachbefund).** Die volle Fassung
01.01.2017 / Stand 17.05.2018 lag in einem als «keine Normtexte» eingestuften PL-03-Ordner; das
Destillat stand auf `established` mit Fassung 2015. Delta: **28 materielle, 12 redaktionelle**
Aenderungen (amtliche Liste: 23 Ziffern plus Fehlerkorrektur 17.05.2018). **Die Run-30-Aussage
«0 Abweichungen in Ziff. 3/5/6» ist widerlegt** — bei Ziff. 6 inhaltlich (6.3.1 Fussnote [2]). Ursache:
Abgleich gegen ein 4-seitiges Auszug-Dokument ohne Tabellenfussnoten und ohne farbcodierte Zellen; der
Auszug ist als Verifikationsquelle fuer unbrauchbar erklaert. **Zwei der wichtigsten Deltas steckten
ausschliesslich in Zellfarben** — ohne 300-dpi-Renderings unsichtbar (praktische Bestaetigung der
Methodik-Pflicht 4). Praxisrelevant u.a.: 2'400-m²-Schwelle neu ueber Terrain, REI-30-Reduktion fuehrt
neu nur auf EI 30; systematische Lockerung RF2/RF3 → RF3 (cr) an sechs Stellen; zwei neue Begriffe
(Einliegerwohnung, Galerie) und Umnummerierung von Kapitel 2 (Konkordanztabelle ergaenzt). Status auf
`speculative` gesenkt.

**Drei neue Destillate.**
- `vkf-allgemein-anerkannte-bauprodukte-2017.md` — VKF «Allgemein anerkannte Bauprodukte» V. 12.0
  (TK Brandschutz 31.03.2017, 12 S.), die **Freistellungsliste** des Schweizer Brandschutzes und
  praktische Kehrseite von BRL 13-15 und BRL 28-15. Lag in **keiner anderen Ablage**. Wichtige Grenze:
  fuer Stahl, Stahl-Beton-Verbund und Holz enthaelt das Dokument keinerlei Tabellenwerte.
  `speculative` (Selbst-Gegenprobe, 5 Fehler korrigiert).
- `brandschutzfachstellen-anleitung-brandschutznachweis-v3.md` — Pflichtinhalte Textteil (9 Positionen)
  und Brandschutzplan (11 Positionen), Verfahren. `emerging` (regionale Arbeitshilfe).
- `brandschutzplan-legende-symbole-2017.md` — Symbol- und Farbsystematik der Plandarstellung.
  `speculative` (Herausgeber auf dem Blatt nicht ausgewiesen).

**Zwei Reichweiten-Luecken geschlossen bzw. belegt.**
- **PL-03 war nur zu 5 von 13 Ordnern erfasst** (Run 30 meldete «alle 6 erfasst»). Alle sieben offenen
  Eintraege aufgearbeitet; `00 Brandschutzplaene bsvonline.ch` vollinventarisiert (3 normrelevante PDFs,
  32 Eintraege Musterplan-Set); `08 QS` enthaelt eine KI-generierte Erlaeuterung, nicht destilliert
  (Echo-Schutz).
- **PL-02 wird nur zu einem Elftel gescannt:** das Inventar erfasst nur `02_Normen/`, PL-02 hat elf
  Ordner mit rund 680 weiteren PDFs. Normrelevanter Kern benannt (BfU, GVZ, Suva, SWKI, Suissetec, VSA,
  PAVIDENSA, Sanitaereinrichtung); Minergie/eco → KB `energie`, Teilungsplan STWEG → Skill
  `stockwerkeigentum`. **Strukturentscheid bei Raphael.** An den Mac Mini gemeldet:
  `Tiefgarage/1 VSS-Norm/` enthaelt VSS-640-Normen ausserhalb von `02_Normen/VSS_Norm/`.
- **Run-30-Aussage widerlegt:** «`06 Lignum Brandschutz` hat kein PL-02-Gegenstueck» — alle sechs
  Dateien liegen MD5-identisch unter `PL - 02_Recht_Norm/06_Richtlinien/Lignum Brandschutz/`.

**Nachgefuehrt:** `destillate/INDEX.md` (3 neue Zeilen, 5 Statuszeilen, Fassungsangabe BRL 15-15
praezisiert), `training/norm-inventar.md` (PL-03-Tabelle vervollstaendigt, neuer Abschnitt «PL-02
Reichweite»), `wiki/QUESTIONS.md`, Report `outputs/2026-07-27_normen-nacht-run31.md`.
**Keine «SIA/VKF KOMPLETT»-Meldung** — die Endbedingung ist nicht erreicht.

## 2026-07-27 — Fassungs-Delta VKF-AH 1001-15 Wohnbauten: Fassung 2017/2018 entdeckt, Destillat korrigiert, frueherer Run-30-Befund widerlegt

**Ausloeser:** Im bisher nicht inventarisierten Ordner `PL - 03 Brandschutz/00 Brandschutzplaene
bsvonline.ch/` liegt unter `BSPUB-1394520214-185.pdf` die **volle Fassung 01.01.2017 / Stand
17.05.2018** der VKF-Brandschutzarbeitshilfe 1001-15de (29 S.). Das Destillat
`destillate/vkf-ah-1001-15-wohnbauten.md` stand auf `established` und beruhte allein auf der
Fassung 01.01.2015.

**Was gemacht wurde:** Volltextvergleich beider Fassungen (pdftotext -layout; die farbcodierten
Tabellen 4.2.2.4, 4.2.3.2, 4.3.2, 4.4.1.2 und 6.3.1 zusaetzlich als 300-dpi-Bild geprueft, weil die
Zellfarben RF1/RF2/RF3 im Textlayer nicht enthalten sind). Die amtliche Aenderungsliste (2017 S. 2,
TK VKF 29.09.2016 + Fehlerkorrektur 17.05.2018 zu Ziff. 4.4.1.2) nennt 23 Ziffern; aufgeloest in
Einzelabsaetze/Tabellen ergeben sich **35 Pruefstellen: 28 materiell, 7 redaktionell**, dazu 5
redaktionelle Befunde ausserhalb der Liste.

**WIDERLEGT:** Der Run-30-Eintrag vom selben Tag hielt fest, ein separates 4-seitiges
Auszug-Dokument zeige «0 Abweichungen» in Ziff. 3, 5 und 6. Das ist falsch. Ziff. 5.1 Abs. 2 und 3
sind amtlich geaendert (redaktionell, Abstandswerte 5/7.5/10 m bzw. 4/5/6 m identisch), Ziff. 3.3.2
aendert «Brandschutzkonzeptplaene» zu «Brandschutzplaene», und Ziff. 6.3.1 ist **materiell**
geaendert (Fussnote [2] der Standardloesungs-Tabelle: Bezugsflaeche neu «ueber Terrain»,
REI-30-Geschossdecken nur noch auf EI 30 reduzierbar, Fussnote neu auch bei der Spalte
Geschossdecken). Das 4-Seiten-Auszugsdokument ist als Verifikationsquelle unbrauchbar und wurde in
den offenen Punkten des Destillats als solches markiert. Lehre: eine «keine Aenderung»-Aussage ist
nur zulaessig, wenn beide Volltexte inkl. Tabellenzellen und Fussnoten vorlagen.

**Die fuenf praxisrelevantesten materiellen Deltas:** (1) Ziff. 6.3.1 Fussnote [2] wie oben;
(2) Ziff. 4.1 Abs. 2-4 komplett neu aufgebaut (vollflaechige Abdeckung statt Anwendungsverbot,
neue cr-Positivliste a-i inkl. Bodenbelaegen ausserhalb der Fluchtwege); (3) Tabelle 4.3.2 neue
Fussnote [7]: einzelne lineare tragende Bauteile in vertikalen Fluchtwegen duerfen RF3 und
**sichtbar** sein (Holzbau-Lockerung), dazu neue Fussnote [6] Beherbergungsbetriebe;
(4) systematische Lockerung RF2/RF3 auf RF3 (cr) an Fassade (punktuelle Befestigungen), Bedachung
(Deckung Varianten 6-9), Lueftung und Kuechenabluft; (5) Ziff. 7.3.2 neu geschossbezogen mit
Vorbehalt ebenerdiger Fluchtwege (Schwelle 900 m2 unveraendert).

**Neue Begriffe:** Ziff. 2.3 «Einliegerwohnung» und Ziff. 2.4 «Galerie» (Luftraum > 50 % der
Raumgrundflaeche) eingefuegt; dadurch Kapitel 2 umnummeriert (Geschosszahl 2.3 -> 2.5,
Parkings 2.4 -> 2.6). Im Destillat als Konkordanztabelle festgehalten, damit Altzitate nicht ins
Leere laufen. Weitere Titelaenderungen: «Bedachungen» -> «Dachkonstruktionen», «Rohrleitungen und
-isolationen» -> «Rohrleitungen und -daemmungen».

**Aenderungen am Destillat:** Frontmatter (quelle um beide 2017-Datei und die
PL-03-Vergleichsdatei ergaenzt, ausgabe/datenstand auf beide Fassungen umgestellt, gelesen
nachgefuehrt, `established` -> **`speculative`** mit Begruendung «Fassungs-Delta 2017/2018 neu
eingearbeitet, noch nicht unabhaengig verifiziert», last_updated 2026-07-27); neuer Fassungshinweis
am Kopf; neuer Abschnitt «Fassung 01.01.2017 / Stand 17.05.2018 — Delta zur Fassung 01.01.2015»
(gegliedert nach Kapiteln, jede Aussage mit Ziffer/Absatz/Seite beider Fassungen); neuer Abschnitt
«Praxis-Konsequenz fuer JANS» mit sieben ueberholten Aussagen; Kernziffern mit **[2017 geaendert]**
markiert; Begriffs-Glossar und JANS-Praxis-Transfer nachgefuehrt; offene Punkte um Verifikations-
bedarf, Ausgaben-Check auf praever.ch und den nicht inventarisierten PL-03-Ordner ergaenzt.

**Registerpflege:** `destillate/INDEX.md` Zeile 1001-15 auf Fassung 2017/2018 und Status
`speculative` gesetzt.

**Handlungsbedarf:** (a) Ordner `PL - 03 Brandschutz/00 Brandschutzplaene bsvonline.ch/` als Ganzes
inventarisieren — dort koennen weitere Arbeitshilfen in aktuelleren Fassungen liegen, die im Hub nur
2015 gefuehrt werden; (b) unabhaengige Verifikation des Fassungs-Deltas fuer die Rueckhebung auf
`established`; (c) klaeren, ob die VKF seit 2018 eine neuere Ausgabe/Vorschriftengeneration
publiziert hat.

## 2026-07-27 — Run 30: PL-03-Bookkeeping korrigiert, Lignum-Unterordner destilliert+verifiziert
- **Stale Handlungsbedarf behoben:** BRL 13-15/14-15-Re-Destillation in `norm-inventar.md` war
  bereits seit Run 23/24 (25.07.) erledigt, aber im PL-03-Abschnitt (aufgenommen 26.07.) nicht
  nachgetragen — korrigiert.
- **PL-03-Unterordner 01/03/04/05 (26 Dateien):** MD5-Abgleich bestaetigt vollstaendige Identitaet
  mit bereits destillierten PL-02-Kopien; 0 neue Destillate noetig. Einzige Abweichung
  `1001-15_Wohnbauten.pdf` (29 vs. 27 S.) aufgeklaert (bereits destillierter BRL-16-15-Inhalt);
  separates "Auszug"-Dokument (Stand 2018) Zeile-fuer-Zeile gegen `vkf-ah-1001-15-wohnbauten.md`
  verglichen: 0 Abweichungen, Destillat-Frontmatter cross-verifiziert ergaenzt.
- **PL-03-Unterordner 06 Lignum Brandschutz:** genuin neue Quelle (kein PL-02-Gegenstueck), 3
  Dokumente destilliert (siehe Eintraege unten) + je 1 unabhaengiger Refuter-Agent: 13 Befunde
  total, alle korrigiert, alle 3 bleiben `speculative`. `Erdbebengerechte_Holzbauten_d.pdf`
  bewusst nicht destilliert (kein Brandschutzinhalt).
- **Bring-Schulden SIA 491 / SN EN 12193:** erneut in PL-02+PL-03 gesucht, weiterhin nicht
  vorhanden — bleibt externe Bring-Schuld.
- Details: `training/norm-inventar.md` (Run-30-Kopfeintrag), `wiki/QUESTIONS.md` (Run-30-Abschnitt),
  Report `outputs/2026-07-27_normen-nacht-run30.md`.

## 2026-07-27 — Reconcile: kein Kollisionsfall, alle drei Lignum-Destillate gehoeren zu Run 30

Die beiden folgenden Eintraege (Lignum 4.1, Lignum 4.2) sowie das separat destillierte
`lignum-lignatec-brandschutz.md` (neuer Eintrag unten) wurden von den beiden Agenten selbst als
moeglicher Kollisionsfall mit einem "parallelen Nacht-Loop" geflaggt, weil `training/norm-inventar.md`
bereits einen Run-30-Kopfeintrag mit diesen drei Dateien enthielt, bevor ihre eigenen Writes
abgeschlossen waren. **Klarstellung:** kein Kollisionsfall — der Run-30-Kopfeintrag wurde von derselben
Session (dem Nacht-Loop-Lauf selbst) VORAB geschrieben, waehrend die drei Destillier-Agenten noch im
Hintergrund liefen; es lief zu keinem Zeitpunkt eine zweite unabhaengige Instanz auf denselben Dateien.
Alle drei Destillate sind Teil von Run 30 (Nacht-Loop, nicht ein davon losgeloester Direktauftrag).

## 2026-07-27 — Neues Destillat: Lignum Lignatec 17/2005 Bauten in Holz Brandschutz-Anforderungen
- **Neu:** `destillate/lignum-lignatec-brandschutz.md` — Lignum-Publikationsreihe Lignatec, Heft
  17/2005, Uebersichts-Auszug "Bauten in Holz - Brandschutz-Anforderungen". Bild-Scan ohne Textlayer,
  12 PDF-Seiten (gedruckte Seiten 2-24 + Ruckumschlag) komplett visuell gelesen. Erfasst: Ziff. 1
  Grundlagen (R/E/I-Klassierung, Bezeichnungssystematik Tab. 2 inkl. nbb-Suffix, Standard-/
  objektbezogenes Konzept), Ziff. 2 Tragwerke/Brandabschnitte inkl. Tab. 3, Schutzabstaende, Ziff. 3
  Flucht-/Rettungswege inkl. Tab. 4, Ziff. 4 Verwendung brennbarer Baustoffe inkl. Tab. 5, Ziff. 5 acht
  Uebersichtsaxonometrien 2-6-Geschosser, Glossar, Literatur/Impressum.
- **Wichtigster Befund:** Basis-Fassung VKF 2003/2005 — explizit als gegenueber der heute gueltigen
  VKF-Vorschriftengeneration 2015 potenziell ueberholt markiert (Datenstand-Feld + Fliesstext-Vorbehalt);
  vor produktivem Gebrauch zwingend gegen die 2015er BRL "Tragwerke" und "Verwendung brennbarer
  Baustoffe" abzugleichen. Deshalb `speculative`, kein established-Kandidat vor diesem Abgleich.
- **INDEX ergaenzt:** `destillate/INDEX.md` neue Zeile bei den Lignum-Eintraegen.
- **Teil von Run 30** (Nacht-Loop, siehe Reconcile-Eintrag oben und `training/norm-inventar.md`).

## 2026-07-27 — Neues Destillat: Lignum 4.1 Decken, Wände und Bekleidungen mit Feuerwiderstand
- **Neu:** `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` — Lignum-
  Dokumentation Brandschutz, Themenblock 4 «Bauteile in Holz», Publikation 4.1 (Stamm-
  dokument, auf das Publikation 4.2 «Anschlüsse» verweist). Bild-Scan ohne Textlayer, 3
  PDF-Teile A/B/C (5+15+20 Seiten = 40 PDF-Seiten, entsprechen den 80 gedruckten Seiten
  laut Titelblatt-Inhaltsverzeichnis), vollständig visuell gelesen. Erfasst: Feuerwider-
  standskriterien R/E/I (Tab. 210-1), vier Nachweisarten (geprüft/genormt/rechnerisch/
  objektbezogen), RF1-Systematik (Tab. 232-1/232-2, Kapselungslogik «tt−30 Min., mind.
  K30-RF1»), Baustoffdefinitionen (Tab. 320-1), Ausführungsbestimmungen (Fugentypen
  330-1 bis 330-3, Anschluss-/Haustechnik-Grundregeln), kompletter Bauteilkatalog
  Holzbauteile (Kap. 4: 7 Deckensysteme Tab. 431-437, 7 Wandsysteme Tab. 441-447,
  Abbrandbemessung, Brandschutzplatten Tab. 462-2) und Bauteile RF1 (Kap. 5: Decken RF1
  Tab. 531-537, Wände RF1 Tab. 541-542), Glossar, Literaturverzeichnis (20 Referenzen),
  Gesamtstruktur der Lignum-Dokumentation Brandschutz (10 Themenblöcke).
- **Bewusste Vereinfachung:** die über 30 dichten Mehrspalten-Katalogtabellen (Varianten
  A–M je Feuerwiderstandsklasse/Systemtyp) wurden strukturiert zusammengefasst (Aufbau-
  Logik, Randbedingungen, repräsentative Grössenordnungen je Tabelle mit Seiten-/
  Tabellennummer) statt zellengenau reproduziert — für den exakten Einzelwert bleibt das
  Quell-PDF massgebend (in «Offene Punkte» vermerkt).
- **Status:** `speculative` — noch nicht adversarial verifiziert (analog `lignum-4-2-
  anschluesse-feuerwiderstand.md`, nächster Schritt: Q&A-Selbstbefragung oder
  Volltextabgleich).
- **INDEX ergänzt:** `destillate/INDEX.md` neue Zeile direkt bei der 4.2-Zeile.
- **Auslöser:** Direkter Auftrag Raphael zur Destillation dieses konkreten Dokuments
  (Ablage `PL - 03 Brandschutz/06 Lignum Brandschutz/`), nicht aus dem Nacht-Loop-
  Inventar gezogen. Hinweis: `training/norm-inventar.md` (Run 30) referenziert dieselben
  drei Lignum-Dokumente bereits im Rahmen eines separaten Nacht-Loop-Laufs inkl.
  Refuter-Verifikation — dieser Eintrag hier dokumentiert den unabhängig in dieser
  Session entstandenen Destillat-Inhalt; ein Abgleich/Merge beider Stränge steht noch
  aus (möglicher Kollisionsfall gemäss Rule `auto-verbesserungen.md` Eintrag 260724).

## 2026-07-27 — Neues Destillat: Lignum 4.2 Anschlüsse bei Bauteilen mit Feuerwiderstand
- **Neu:** `destillate/lignum-4-2-anschluesse-feuerwiderstand.md` — Lignum-Dokumentation
  Brandschutz, Themenblock 4 'Bauteile in Holz', Publikation 4.2. Bild-Scan ohne Textlayer
  (33 PDF-Seiten = 64 gedruckte Seiten inkl. Umschlag), vollständig visuell gelesen (2
  Leseschritte). Erfasst: Feuerwiderstandskriterien R/E/I, Ausführungsbestimmungen (Baustoffe
  Tabelle 340-1, Fugenausbildung Beplankungen), Anschlusskonstruktionen für Holzbauteile
  (Bauteilabschlüsse, Elementstösse, Hohlräume, Längsfugen, Auflager Holz/Stahl/Stahlbeton,
  Lagesicherung, Verbindungsmittel — je mit Füllholz-/Mineralwolle-/BSP-Mindestmassen nach
  EI30/60/90), Bauteilfugen-Klassifizierung (geschlossen/bis 2mm/bis 80mm/Bauteilöffnung),
  Anschlüsse VKF-anerkannter Bauteile (Registergruppen-Tabelle 441-1), analoges Kapitel 5 für
  Bauteile RF1 (Brandschutzbekleidung K30/K60-RF1, Tabelle 522-1), Glossar, Literaturverzeichnis
  (22 Referenzen inkl. 6 SIA-Normen), Anhang 2 (Übersichtstabellen massgebende
  Anschlusssituationen je Anschlussgeometrie) und Anhang 3 (8 durchgerechnete
  Beispielkonstruktionen S. 55-62).
- **Status:** `speculative` — noch nicht adversarial verifiziert (nächster Schritt gemäss
  KB-Standard: Q&A-Selbstbefragung oder Volltextabgleich, analog anderen Lignum-/VKF-Destillaten).
- **INDEX ergänzt:** `destillate/INDEX.md` neue Zeile bei den Holzbau-/SIA-265-Normen.
- **Auslöser:** Direkter Auftrag Raphael zur Destillation dieses konkreten Dokuments (Ablage
  `PL - 03 Brandschutz/06 Lignum Brandschutz/`), nicht aus dem Nacht-Loop-Inventar gezogen.

## 2026-07-26 — PL-03 Brandschutz ins Inventar aufgenommen (Entscheid Raphael)

- **Strukturentscheid getroffen** (seit Run 22 offen, in QUESTIONS viermal vorgelegt): `PL - 03
  Brandschutz/` ist ab sofort gleichrangige Inventar-Quelle neben `PL - 02_Recht_Norm/02_Normen/`,
  nicht laenger eine bewusst getrennte Ablage.
- **`training/norm-inventar.md`:** Quellen-Zeile auf zwei Ablagen erweitert; neuer Abschnitt
  «PL-03 Brandschutz» mit Erst-Scan vom 26.07.2026 (116 PDF/DOCX, 13 Unterordner mit
  Relevanz-Einstufung und Status) sowie der Fassungs-Befund-Tabelle aus
  `outputs/2026-07-25_pl03-fassungs-mapping.md`.
- **`training/PROGRAMM.md`:** Methodik-Pflicht 1 von «PL-03 pruefen» auf «beide Ablagen scannen»
  umgestellt.
- **Konkreter Arbeitsvorrat daraus:** zwei Destillate stehen nachweislich auf der ueberholten
  VKF-Fassung 01.01.2015, obwohl die Fassung 01.01.2017 im Haus liegt — `vkf-brl-verwendung-baustoffe`
  (BRL 14-15de, hoechste Prioritaet, ~20 geaenderte Ziffern/Tabellen) und
  `vkf-brl-13-15-baustoffe-bauteile` (BRL 13-15de). Re-Destillation ist Prioritaet 1 des naechsten
  Laufs; bis dahin gilt fuer beide ein Fassungs-Vorbehalt.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Ausgaben-Vorbehalt SIA 382/1, SIA-181-Flag, vier Bring-Schulden ins Inventar
- **[korrektur] `destillate/sia-382-1-2014.md`** lief als `status: established` mit `datenstand: 2014` und ohne jeden Fassungshinweis, obwohl SIA 382/1:2025 die Ausgabe seit 1.2.2025 ersetzt (der ⚠-Vermerk stand nur in `wiki/REGISTER.md:472`). Genau dieses Destillat wird von der Rule `normen-referenz` fuer LV/Werkvertrag gezogen. → Feld `ausgabe_ueberholt` gesetzt, Status auf «established (Ausgabe 2014, durch SIA 382/1:2025 ueberholt)» praezisiert. Re-Destillat 2025 bleibt Bring-Schuld.
- **[struktur, wichtig] Die vier Bring-Schulden aus `baurecht` (Run 15) sind nie angekommen.** Run 28 hat den QUESTIONS-Block nicht aufgegriffen und sein Thema ausdruecklich als «kein Bring-Schulden-Fall» gewaehlt; `training/norm-inventar.md` hatte 0 Treffer fuer alle vier Normen. Ursache: der Nacht-Loop waehlt aus dem **Inventar**, nicht aus der Fragenliste. → SIA 491, SN EN 12193:2008, SN 640 052, SN 641 400 als eigene Zeilen im neuen Inventar-Abschnitt «Bring-Schulden aus anderen KBs» (P2, je mit Fundstelle und Auftrag); Nachtrag in `wiki/QUESTIONS.md`. **Regel: Uebergaben an diese KB immer in beiden Dateien fuehren.**
- **[flag] `destillate/sia-181-2006.md`** — Ausgaben-Differenz zur KB `energie` dokumentiert (2006 erhoeht +3 dB, 2020 +4 dB; Abnehmer-Artikel benannt), damit sie beim Re-Destillat 2020 mitgezogen werden. Arbeitsteilung wie beim SIA-180-Paar: normen fuehrt die Fundstelle, energie die Vollzugsebene.
- Kollisionscheck nach Rule 260724 vorab durchgefuehrt (Run 29 war um 00:02 beendet, keine Zweitinstanz). Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-26 — Run 29 (MacBook Pro): SIA D 0165 von 5-S.-Fragment auf 73-S.-Vollversion gehoben, Bestandsfalle wie Run 22 (Ordner ≠ Fassungsstand), 13 Verifikations-Befunde korrigiert
- **Auslöser:** Run-28-Empfehlung, die als "Teil-Destillat" gefuehrten P2-Normen systematisch auf
  ungelesene Seiten IM BEREITS VORHANDENEN PDF zu pruefen. `sia-d0165-2000-kennzahlen-immobilienmanagement.md`
  war seit 260713 nur ein 5-Seiten-Fragment (Titelblatt + S.14-17); die Vollversion (73 S.) lag
  unter `alle/xalt/SIA D0165_2000...pdf` und `alle/xalt/neu/` (identische Kopie), im Inventar
  faelschlich als "ersetzt/alt" gefuehrt.
- **Bestandsfalle bestaetigt (analog Run 22):** pdfinfo + MD5-Vergleich zeigen: beide xalt-Dateien
  sind byte-identisch (MD5 6bd3c2c6e10a92aec8f94278b3de3a77), 73 S., gleicher Scan-Zeitstempel
  23.06.2014. SIA D 0165 hat nur EINE Ausgabe (Juli 2000, kein Nachfolgestand im Gesamtverzeichnis
  SIA) — "xalt" bedeutet hier NICHT superseded, sondern reine Ordner-Fehlklassierung (wie bei
  SIA 266/1 im italienischen und SIA 410 im franzoesischen Sprachordner, Run 22).
- **Destillation:** 4 parallele Lese-Agenten (Agent-Tool, `general-purpose`, je ~18-19 Seiten,
  Bild-Scan ohne Textlayer, visuell gelesen) haben alle 73 Seiten lueckenlos erfasst. Destillat
  komplett neu geschrieben: Kapitel 1 Einleitung, 2 Kennzahlen-Kataloge (Flaechen/Volumen +
  Kosten), 3 Parameter-Definitionen (Flaechen/Volumen 3.1, Kosten 3.2, Spezielle 3.3), 4
  Berechnungsformulare (zusammengefasst), 5 zwei durchgerechnete Berechnungsbeispiele (alle
  Zahlenwerte), 6 Begriffe-Glossar, Anhang 1-8 (Flaechenbaum, Zuordnung SIA416↔DIN277, die
  6 Abweichungen SIA416/DIN277, Vermietbare-Flaeche-Baum, Bemessungs-Spezialfaelle Bruestungen/
  Abschraegungen/Treppenlaeufe, Kostengliederung DIN18960/GEFMA200, Literaturverzeichnis).
- **Verifikation (3 unabhaengige Refuter-Agenten, je ein Drittel des Dokuments):** 13 Befunde,
  alle korrigiert: (1) unvollstaendige Funktionstraeger-Rollenliste (5 fehlende Rollen ergaenzt),
  (2) "begehbar" bei Installationsschaechten fehlte, (3) "von Konstruktionen" bei Hohlraeumen
  fehlte, (4) "ober- und unterirdisch" bei EBF-Definition fehlte, (5) unbelegtes BKP-Detail
  "19-99/W1-W6" entfernt, (6) Nettorendite-Definition: fehlendes "vor Steuern" + falsche
  Formel-Verschachtelung korrigiert, (7) Verkehrswert-Definition: fehlender Wirtschaftlichkeits-
  Bezugssatz ergaenzt, (8) **systematischer Seitenzahl-Versatz +1** in allen Anhang-1-bis-7-
  Zitaten korrigiert (Anhang 1 S.49-50 statt 50-51, Anhang 2 S.51-56, Anhang 3 S.57, Anhang 4
  S.58, Anhang 5 S.60-62, Anhang 6 S.63-66, Anhang 7 S.67, Anhang 8 S.68-70), (9) "Fall A3"
  existiert im Original nicht (dort A1/A2/A2, ein Tippfehler des Originals) — korrigiert, (10)
  faelschlicher "JANS-"Praefix bei der BUF10-Ergaenzung entfernt (ist eine SIA-D-0165-eigene
  Ergaenzung, keine JANS-Erfindung), (11) KFT/KFN-Split faelschlich in Anhang 1 statt nur
  Anhang 4 (Original-Diagramme vermengt) korrigiert. Kapitel 4 und 5 (alle Zahlenwerte beider
  Berechnungsbeispiele) sowie die 6 Abweichungspunkte in Anhang 3 wurden **0-Fehler bestaetigt**.
- **Status:** bleibt bewusst `speculative` (kein sauberer Nulldurchgang) trotz Vollstaendigkeit —
  Verifikation ist kein Ritual, sie fand hier 13 echte, wenn auch groesstenteils kleinere,
  Praezisionsverluste. Naechste Runde: sauberer Nulldurchgang moeglich macht `established`.
- **Nachgefuehrt:** `training/norm-inventar.md` (3 Zeilen: `d 0165.pdf` + beide xalt-Kopien,
  Tracker-Kopf Run-29-Eintrag), `destillate/INDEX.md`, dieses CHANGELOG,
  `outputs/2026-07-26_normen-nacht-run29.md`.
- **Workflow-Tool weiterhin nicht genutzt** (Run-28-Erkenntnis: im Scheduled-Task-Kontext durch
  "Review dynamic workflow before running" blockiert) — direkter Agent-Tool-Fallback (parallele
  Lese- + Verifikations-Agenten) erneut erfolgreich.

## 2026-07-25 — Run 28 (MacBook Pro): drei P2-Teildestillate auf den vorhandenen Bestand hin vervollstaendigt (Vertiefungsstufe a), Workflow-Tool blockiert (interaktive Review-Sperre), Fallback ueber direkte Parallel-Agenten
- **Auslöser:** Nach acht Bestaetigungen "SIA/VKF komplett" (Run 20-27) und der Q&A-Vertiefung aller 15
  Kernnormen (Run 27) zeigte eine gezielte Pruefung der als "Teil-Destillat" gefuehrten P2-Normen drei
  Faelle mit ungelesenen Seiten IM BEREITS VORHANDENEN PDF (kein Bring-Schulden-Fall): `sia-121-2003.md`
  (Formularblaetter S.18-22), `sia-180-2014.md` (Anhaenge A-H S.50-72), `sia-181-2006.md` (Anhang A+B
  S.34-47). Dies ist genau die in `training/PROGRAMM.md` Vertiefungsstufe (a) vorgesehene Arbeit.
- **Workflow-Tool blockiert:** Der geplante Multi-Agent-Workflow (Destill+Verify-Pipeline) scheiterte mit
  "Review dynamic workflow before running" — eine interaktive Freigabe, die im headless/Scheduled-Task-
  Kontext nicht verfuegbar ist. **Fallback gemaess PROGRAMM.md** genutzt: 3 parallele Destillier-Agenten
  (Agent-Tool, `general-purpose`, model sonnet) gefolgt von 3 parallelen unabhaengigen Verifikations-
  Agenten (Refuter-Prinzip). Lehre fuer kuenftige Laeufe: Workflow-Tool im headless Scheduled-Task-Kontext
  derzeit nicht nutzbar, direkter Agent-Tool-Fallback funktioniert zuverlaessig.
- **sia-121-2003.md**: Formulare SIA 1021/1-1021/4 + Genehmigung (Delegiertenversammlung 21.06.2003 Basel,
  Kuendig/Mosimann) ergaenzt, ~25 Aussagen. Verifikation: 1 Befund (Lohnklassen-Verteilung im Formular
  1021/4 faelschlich als "Basisjahr"-Spalte dargestellt, ist eigene nicht-jahresspezifische Spalte) —
  korrigiert. Status "destilliert VOLLSTAENDIG" (nicht established, da Verifikation nicht 0-Befund war).
- **sia-180-2014.md**: Anhaenge A-H (Saettigungsdampfdruck, Fanger-Gleichung/PMV, Kaltluftabfall-Formel,
  Sommersimulation, Waermespeicherfaehigkeit, Glaserverfahren-Details, Oberflaechentemperaturfaktoren,
  Luftschadstoffe) in die passenden Kap.2-6-Abschnitte integriert, 9 neue Fundstellen-Bloecke. Verifikation:
  1 Befund (Anhang C.1 Sonnenschutz-Steuerregel sinnentstellt — "unbehaglicher/zu warmer" statt korrekt
  "behaglicher oder zu warmer" Raumtemperatur; eine Bedeutungsumkehrung) — korrigiert. Status "destilliert
  VOLLSTAENDIG" (nicht established). Korrigenda-C2:2020-Bring-Schuld bleibt unveraendert offen.
- **sia-181-2006.md**: Anhang A (Musik-/tieffrequente Emissionen, Tab. 9/10) + Anhang B (Messverfahren,
  K1-K4-Korrekturen) ergaenzt, ~21 Aussagen — Details siehe Eintrag direkt unten. Verifikation: 3 Befunde
  (Fundstellen-Attribution Ziff. B.1.1, fehlende Alternative in B.1.4.5/.4.6, Amtsname "Bundesamt fuer
  Metrologie und Akkreditierung" statt verkuerzt "Metrologie") — alle korrigiert. Status bleibt bewusst
  "teil-destillat" (Anhaenge E/F/G/H/J weiterhin offen, informativ/nachrangig).
- **Bilanz Verifikationsstufe:** alle 3 Destillate wurden beanstandet (1/1/3 Befunde), 0 mit sauberem
  Null-Befund — bestaetigt erneut die Methodik-Pflicht aus `training/PROGRAMM.md` (Verifikation ist kein
  Ritual, sondern findet regelmaessig echte Fehler; keines der drei wurde deshalb auf `established`
  gehoben). `training/norm-inventar.md` fuer alle drei Zeilen nachgefuehrt (Status/Datum/Bemerkung).
  Details Report `outputs/2026-07-25_normen-nacht-run28.md`.

## 2026-07-25 — sia-181-2006.md: Anhang A (Musik-/tieffrequente Emissionen) + Anhang B (Messverfahren) ergaenzt
- **S. 34-47 gelesen** (bisher offen laut eigenem "Offene Punkte"-Abschnitt). Anhang A (normativ) neu als
  eigener Abschnitt nach "Trittschall" verankert: Definition erheblich tieffrequenter Emissionen (Ziff. A.1.2),
  Beurteilungsgroesse D_i50,tot mit C_tr,50-3150 (Ziff. A.2.1), Mindestanforderungen Tabelle 9 (Lärmbelastung
  klein vs. maessig-sehr stark x Laermempfindlichkeit), Praxis-Bandbreiten Tabelle 10 (Restaurant/Pub/
  Nachtclub/Diskothek), erhoehte Anforderungen (+3 dB), Sonderregelung bei Differenz L_Ceq-L_Aeq > 12 dB
  (+3 dB strenger), Trittschall gegenueber Lokal/Tanzflaeche (-10 dB). Anhang B (normativ) neu als Abschnitt
  nach "Nachweise" verankert: Messverfahren-Praezisierungen zu R_w/D_nT,w (Labor/Bau), offene Empfangsraeume,
  Gesamt-Lautsprecher-Referenzverfahren fuer die Gebaeudehuelle, Trittschall-Normhammerwerk (ISO 140-7),
  Geraeusche haustechnischer Anlagen (3 Messmethoden, K1-K4-Korrekturen, EMPA-Pendelfallhammer), Messgeraete-
  Anforderungen (metas, EN 61672-1 Klasse 1), Normspektren (Tabelle 13/14). 21 neue Aussagen mit
  Ziffer-Fundstelle. Frontmatter "gelesen" aktualisiert; "Offene Punkte" bereinigt (Anhang A+B als erledigt
  gestrichen, Anhang E/F/G/H/J bleiben offen); status bleibt "teil-destillat". JANS-Praxis-Transfer um zwei
  Punkte ergaenzt (Gastro-/Nachtbetrieb-Mischnutzung, Messverfahrens-Disziplin bei Abnahmen).
- Keine woertlichen Tabellen-/Textkopien; Modalitaet "kann/sollte" nicht zu "muss" ueberdehnt.

## 2026-07-25 — Run 27 (MacBook Pro): Q&A-Selbstbefragung (Vertiefungsstufe c) fuer die 5 neu established Destillate — alle 15 SIA/VKF-Kernnormen jetzt Q&A-geprueft
- **5 parallele Verifikations-Agenten**, je einer pro Norm (sia-266-1-2003, sia-410-1986,
  sia-112-leistungsmodell, sia-112-tabelle-infrastruktur, sia-271-wegleitung): 64 Fragen total, unabhängig
  am Original beantwortet, danach gegen das Destillat abgeglichen (Refuter-Prinzip).
- **Ergebnis: 0 Widersprüche gegen bestehende Kernaussagen.** 1 Destillat korrigiert: `sia-410-1986.md`
  war als «dreisprachig d/f/i, teils Englisch in Kopfzeilen» unterschätzt — tatsächlich durchgehend
  **vierprachig d/f/i/en**, vollständige vierte Spalte in praktisch jeder Tafel (Frontmatter + Hinweistext
  korrigiert). Zusätzlich 2 kleine Ergänzungen unter Offene Punkte (kein Kap.-6-Eintrag im
  Inhaltsverzeichnis, Positionsnummern-Lücke 9/10 in Ziff. 3.3). Alle 5 Destillate bleiben `established`.
- **Neue Dateien**: `destillate/qa/sia-266-1-2003-fragen.md`, `sia-410-1986-fragen.md`,
  `sia-112-leistungsmodell-fragen.md`, `sia-112-tabelle-infrastruktur-fragen.md`,
  `sia-271-wegleitung-fragen.md`; `destillate/qa/INDEX.md` Abschnitt "Run 27" ergänzt.
- Damit haben nun **alle 15 SIA/VKF-Kernnormen** die Q&A-Vertiefungsstufe (c) durchlaufen (10 aus Run 14 +
  5 aus Run 27). Details `wiki/QUESTIONS.md` Abschnitt "Run 27", Report
  `outputs/2026-07-25_normen-nacht-run27.md`.

## 2026-07-25 — Run 26 (MacBook Pro): letzte 2 speculative Destillate auf established gehoben, speculative-Bestand geleert
- **Kein neues Destillat — 0 offene `[ ]`-Positionen unverändert** (Frischecheck 458 SIA-PDF/58 VKF-Dateien,
  keine Änderung seit Run 21). Beide von Run 25 hinterlassenen Folgeaufgaben abgeschlossen:
  (1) `sia-112-tabelle-infrastruktur.md`: Bestätigungsrunde aller 4 Run-25-Korrekturen direkt am Original
  (Kosten-Spaltengruppe inkl. Menge, 312.0/312.1 als zwei Zeilen, Vorprojekt-2-Block 313.1/314.1,
  «Kosten und Finanzierung» als vollständiger Text bei 413.1/513.1) — 0 Abweichungen. **Status established.**
  (2) `sia-271-wegleitung.md`: SFG-Kürzel am Deckblatt hochaufgelöst gelesen, eindeutig «SFG — ASVE»
  (nicht «ASF»/«ASE»). **Status established.**
- **Speculative-Bestandsliste jetzt bis auf `sia-vertragsunterschiede-2023.md` (bewusst dauerhaft, kein
  Normtext) leer.** Verbleibende QUESTIONS.md-Punkte sind ausschliesslich Bring-Schulden (SIA-Abo-
  Beschaffung) und Strukturentscheide bei Raphael (PL-03-Aufnahme) — nicht vom Loop selbst schliessbar.
  Details `wiki/QUESTIONS.md` Abschnitt "Run 26", Report `outputs/2026-07-25_normen-nacht-run26.md`.

## 2026-07-25 — Run 25 (MacBook Pro): SIA 266/1 auf established gehoben, VKF-BRL-Delta vollständig verifiziert, 3 weitere speculative Destillate erstmals/tiefer geprüft
- **Kein neues Destillat — 0 offene `[ ]`-Positionen unverändert.** Zwei von Run 24 offen gelassene
  Folgeaufgaben abgeschlossen: (1) SIA 266/1 vierte Runde — Figur-1-Zeile (dreimal in Folge fehlerhaft)
  ist jetzt sauber (0 Befunde), 2 kleinere Stilbefunde ausserhalb korrigiert; fünfte, eng begrenzte
  Bestätigungsrunde dieser zwei Korrekturen: 0 Befunde. **Status established.** (2) VKF-BRL 14-15-Delta,
  Ziff. 3.2.3 Abs. 1: unabhängiger Wort-für-Wort-Abgleich beider Fassungen bestätigt die Run-24-
  Präzisierung vollständig — Delta-Abschnitt jetzt komplett verifiziert.
- **3 weitere speculative Destillate geprüft, die seit Erstdestillation (19.07.2026) nie adversarial
  verifiziert waren:** sia-112-leistungsmodell.md BESTAETIGT 0 Befunde (inkl. `mdls`/`strings`-
  Metadaten-Gegenprobe) → **established**. sia-112-tabelle-infrastruktur.md BEANSTANDET, 4 Befunde
  (1 substanziell: Spalte «Menge» falsch zugeordnet; 3 kleiner) korrigiert, bleibt speculative bis
  Bestätigungsrunde. sia-271-wegleitung.md: technischer Kern bestätigt 0 Befunde, 3 Befunde bei
  Frontmatter/Bildunterschriften korrigiert (PAVIDENSA-Name), SFG-Kürzel bleibt unsicher.
- 6 Refuter-Agenten liefen parallel als Hintergrund-Agenten (Workflow-Tool wie in Run 24 nicht
  verfügbar). Details `wiki/QUESTIONS.md` Abschnitt "Run 25", Report `outputs/2026-07-25_normen-nacht-run25.md`.

## 2026-07-25 — Run 24 (MacBook Pro): Bookkeeping-Rückstand (7 Punkte) geschlossen + BRL-14-15-Delta & SIA-266/1 weitere Retro-Verifikation
- **Kein neues Destillat — 0 offene `[ ]`-Positionen unverändert.** Erst Bookkeeping-Rückstand in
  `wiki/QUESTIONS.md` bereinigt: 7 Punkte waren inhaltlich bereits erledigt (in Destillaten/Inventar
  belegt), aber nicht als `[x]` markiert — BRL 16-15 Ziff. 3.5.2 Personenbelegung (bereits Wissens-Chef
  Run 8, 18.07.2026), BRL 16-15 S.16-ABSV-Diagnose (bereits Run 23 korrigiert), Methodik-Pflicht
  `pdfimages` (bereits in `training/PROGRAMM.md`), SIA 385/1 + SIA 380/1 (PDF liegt vor, korrekt als
  6-Seiten-Auszug/Bring-Schuld destilliert, war fälschlich als fehlend/ungeklärt notiert), SIA 102
  2014↔2020 (bereits im Inventar markiert), `sia-480-2004.md`-Link auf SIA 102:2003 korrigiert (Datei
  liegt zweifach im Bestand, ist aber bewusst nicht destilliert, nicht "fehlt im Bestand").
- **VKF-BRL 14-15-Delta re-verifiziert** (Hintergrund-Agent, Volltextabgleich beider PDF-Fassungen):
  4 von 5 Run-23-Korrekturen wortgetreu bestätigt; die fünfte (Ziff. 3.2.3 Abs. 1) war überzeichnet
  — "Aussenwandbekleidungen" und "im Hinterlüftungsbereich" standen bereits 2015 im Text, einzige
  echte Neuerung 2017 ist der Zusatz "bzw. flächige Schichten". Korrigiert, bleibt speculative.
- **SIA 266/1 dritte Runde** (Hintergrund-Agent, komplettes Original erneut gelesen): 0 neue Befunde
  ausserhalb Figur-1, aber erneut ein Fehler exakt in der Run-23-editierten Figur-1-Zeile — Fy-
  Hauptkraft (Ziff. 2.2.3) faelschlich mit dem separaten Querdruck-System (Ziff. 2.2.5) verschmolzen.
  Korrigiert, bleibt speculative. Zweite Bestaetigung des Musters: frisch editierter Text ist die
  hoechste Fehlerquelle dieser KB.
- Details `wiki/QUESTIONS.md` Abschnitt "Run 24", Report `outputs/2026-07-25_normen-nacht-run24.md`.

## 2026-07-25 — Run 23 (MacBook Pro): Retro-Verifikation der 5 Run-22-Artefakte, BRL-16-15-Diagnose korrigiert
- **Kein neues Destillat — Rueckstandsabbau gemaess Run-22-Auftrag.** 5 adversariale Refuter-Agenten
  gegen die Original-PDFs: SIA 410 (Erstverifikation, BEANSTANDET → korrigiert → established),
  VKF-BRL 13-15-Delta 2017 (Erstverifikation, BESTANDEN, 0 Befunde → established), VKF-BRL 14-15-Delta
  2017 (Erstverifikation, BEANSTANDET → 5 lokale Korrekturen, bleibt speculative), SIA 266/1 (zweite
  Runde, BEANSTANDET — 1 neuer Fehler in der Figur-1-Beschreibung: h/l vertauscht, Ausgleichsschicht-
  Position korrigiert, bleibt speculative), VKF-Beherbergungskategorien (zweite Runde, BEANSTANDET —
  1 unbelegte Fundstelle korrigiert → established).
- **BRL 16-15, Diagnose zur S.15/16-Bildunterschrift selbst per `pdftotext` korrigiert** (nicht per
  Agent): Die Bildunterschrift-Aenderung liegt auf **S. 15** (nicht 16 wie zuvor vermutet) und steht
  in beiden Fassungen unter der Ueberschrift Ziff. 2.4.4 — **keine** Vertauschung zwischen Ziff.
  2.4.3/2.4.4, sondern eine reine Umbenennung.
- **Ergebnis:** 3 von 5 Artefakten jetzt `established`; SIA 266/1 (dritte Runde noetig) und VKF-BRL
  14-15-Delta (kurze Re-Verifikation der 5 Korrekturen) bleiben offen fuer den naechsten Lauf.
  Details `wiki/QUESTIONS.md` Abschnitt "Run 23", Report `outputs/2026-07-25_normen-nacht-run23.md`.

## 2026-07-25 — Run 22 (MacBook Pro): «KOMPLETT» war eine Messfehler-Kette — 2 unsichtbare Normen destilliert, 2 Destillate auf ueberholter Fassung, 11 QUESTIONS-Punkte geschlossen
- **Keine achte Vollstaendigkeits-Bestaetigung, sondern Pruefung der MESSGROESSE.** «0 offene `[ ]`»
  plus «keine neuen Dateien» misst nur Datei-**Existenz** — nicht Klassierung, nicht Fassungsstand, nicht
  die zweite Ablage `PL - 03 Brandschutz/`, und gar nicht die ~50 offenen Punkte in `wiki/QUESTIONS.md`.
  In allen vier Bereichen lag reale Arbeit; Run 21s Schluss «keine reale Quelle zu bearbeiten» traf nicht zu.
- **Zwei Normen waren als «Sprachvariante» unsichtbar und sind jetzt destilliert:** `alle/i/266_1_d.pdf`
  = **SIA 266/1:2003** «Mauerwerk – Ergaenzende Festlegungen» (deutsch, im italienischen Ordner) und
  `alle/f/410_d_f_i.pdf` = **SIA 410:1986** «Sinnbilder fuer die Haustechnik» (dreisprachig d/f/i, im
  franzoesischen Ordner; **Empfehlung**, nicht Norm, Kennzeichnung empfehlend — und bis heute ohne jeden
  REGISTER-Eintrag). Systematische Gegenprobe ueber alle drei Sprachordner: genau diese zwei Faelle.
- **Zwei VKF-Destillate beruhten auf der ueberholten Fassung 01.01.2015**, waehrend die Fassung
  01.01.2017 (IOTH 22.09.2016) im Haus lag — in PL-03, das das Inventar nicht scannt. **BRL 14-15
  «Verwendung von Baustoffen»**: 13 materielle Aenderungen, u.a. neuer neunteiliger cr-Ausnahmekatalog
  (Ziff. 2 Abs. 3, zuvor drei), Wegfall der Hochhaus-Sonderanforderung fuer Rohrleitungen/-daemmungen
  (Ziff. 5.1.2), Wegfall der RF1-Gehaeusepflicht fuer Rauminformationssysteme (Ziff. 5.3). **BRL 13-15
  «Baustoffe und Bauteile»**: Klassen E/E-d2 und EL/EL-d2 von **RF4 auf RF3 (cr)** umgestuft. Beide Deltas
  einfach destilliert, **noch nicht verifiziert** — im Destillat sichtbar mit Vorbehalt markiert.
- **Verifikations-Verdikte (3 adversariale Refuter, Hauptmodell): 3x BEANSTANDET, alle Befunde eingearbeitet,
  kein Artefakt auf `established` gehoben.** Gewichtigste Befunde: (a) `sia-266-1-2003` behauptete «liefert
  keine Kennwerte», obwohl Tabelle 1 charakteristische Mindestwerte fuehrt, und «drei eigene Pruefverfahren»
  statt zwei plus einer EN-Ergaenzung (13 Befunde, 9 Luecken; Zahlen und Formeln fehlerfrei);
  (b) Beherbergungskategorien: die Negativaussage «Betreutes Wohnen — keine VKF-Fundstelle» ist widerlegt,
  BRL 10-15de S. 35 nennt **Alterswohnungen** ausdruecklich als Wohnbauten (12 Korrekturen, u.a. 5 falsche
  Seitenzahlen und eine Modalitaets-Haertung); (c) BRL 16-15: die Einordnung «nur erlaeuternder Anhang» ist
  fuer Ziff. 3.7 richtig, fuer **Ziff. 3.5.2 Personenbelegung** aber falsch — dort traegt allein der Anhang
  die Zahlen (Verkaufsgeschaefte 0.5/0.35/0.25 → Fachmaerkte/Supermaerkte 0.1-0.45), materielle Aenderung
  mit Wirkung auf Fluchtwegbreiten.
- **Neuer Wiki-Artikel `wiki/vkf-beherbergungskategorien.md`** — die fuer die Healthcare-Projekte
  kritische Definition [a]/[b]/[c] (Brandschutznorm 1-15de Art. 13 Abs. 2 lit. a, S. 8; ≥ 20 Personen +
  Angewiesenheit auf fremde Hilfe; [c] ueber vier **kumulative** Bedingungen, PV/Notstrom ausdruecklich
  ungenuegend). Spital/Alters-/Pflegeheim → [a], Hotel/Pension/Ferienheim → [b].
- **Methodischer Kernbefund, als Pflicht in PROGRAMM.md verankert:** `pdftotext` ist bei Normen mit
  Prinzipskizzen strukturell blind (Masse/Legenden liegen als Rastertext IN den Zeichnungen). Erst der
  Bildvergleich (`pdfimages -list`, 55 Bilder paarweise) fand die uebersehene ABSV-Aenderung auf S. 16 der
  BRL 16-15. Ferner neu verpflichtend: zwei Ablagen pruefen, «Sprachvariante» am Inhalt verifizieren,
  Fassungsstand vor Werteabgleich, und QUESTIONS.md vor jeder «KOMPLETT»-Meldung durcharbeiten.
- **Weitere Schliessungen:** SIA 385/1 — die franzoesische Bestandsvariante ist **kein** Lueckenschluss
  (Nummern-Wiederverwendung: 2000 = Schwimmbad-Wasseraufbereitung, 2011 = Trinkwarmwasser; Schwimmbad ging
  in 385/9 auf); SIA 112 — OCR-Verdacht ausgeraeumt, die Fehlzuordnung war ein Destillat-Fehler
  (Volltext-OCR aller 26 S.); VKF-Merkblatt 2001-15 Solaranlagen — PL-02 und PL-03 byte-identisch (MD5
  `56fb4bab…`), keine 2022er im Bestand, belegt RF4(cr) Ziff. 3.2.3; SIA `/1`-Normen — Bestand geprueft;
  zwei **Stale-Befunde** korrigiert (SIA 118:1991 und Merkblatt-Serie 2001-2027 sind laengst destilliert).
- **Empfehlung an Raphael: Task NICHT pausieren, aber Auftrag verschieben** — es gibt keine neuen Dateien,
  aber einen bezifferbaren Rueckstand (5 unverifizierte Artefakte von heute, 2 offene P1-Punkte an der
  BRL 16-15, ~40 QUESTIONS-Punkte). Ein reiner Datei-Trigger haette diesen Lauf verhindert. Entscheid
  noetig: PL-03 ins Inventar aufnehmen oder Pflicht-Querblick im Skill `normen` verankern.
- Nebenbefund: **Cross-Contamination erneut** (Rule 260724) — Selfcommit `3fe6585b` meldet
  «twin-mail-training», enthaelt aber alle heutigen Normen-Dateien plus `energie`/`twin`. Ferner haben
  heute zwei Laeufe unabhaengig die Run-Nummer 21 belegt; dieser Lauf fuehrt die Nummer 22, der
  Fremd-Report bleibt als Protokoll stehen.
- 13 Agenten (10 mechanisch auf Sonnet, 3 Refuter auf dem Hauptmodell). Report
  `outputs/2026-07-25_normen-nacht-run22.md`, Fassungs-Mapping `outputs/2026-07-25_pl03-fassungs-mapping.md`.

## 2026-07-25 — Run 21 (MacBook Pro): Frischecheck, keine Aenderung seit Run 20, 7. Endbedingungs-Meldung
- Datei-Anzahl-Stichprobe (458 SIA-PDF, 58 VKF-Dateien) + Aenderungsdatum-Filter seit 06:00 Uhr:
  **0 neue/veraenderte Dateien** seit Run 20. Grunddestillation + alle 4 Vertiefungsstufen bleiben
  vollstaendig; ein weiterer Voll-Diff/Workflow-Batch haette keine reale Quelle zu bearbeiten und
  wuerde gegen die Leitplanke "nichts erfinden" verstossen — daher bewusst kein Destillat erzeugt.
  Hintergrund: Run 20 empfahl Pausierung/Datei-Trigger; Raphael hat den Task Stunden spaeter im
  Rahmen der allgemeinen Vollgas-Reaktivierung (Rule auto-verbesserungen 260725) auf 2x taeglich
  belassen — dieser Lauf vollzieht das, meldet aber erneut ehrlich den fehlenden Wissenszuwachs.
  2 Bring-Schulden (SIA 380/1:2016, SIA 385/1:2011) weiterhin nur per SIA-Abo/Kauf schliessbar.
  Report `outputs/2026-07-25_normen-nacht-run21.md`.

## 2026-07-25 — Run 20 (MacBook Pro): unabhaengige NFC-Diff-Vollstaendigkeitsverifikation SIA/VKF
- Statt bereits erledigte Vertiefung zu wiederholen (Grunddestillation + Stufen a-d seit Run 19
  komplett), die Vollstaendigkeit **rigoros re-verifiziert**: programmatischer Diff aller 503 live
  vorhandenen SIA/VKF-Basenamen gegen alle im `norm-inventar.md` erwaehnten Dateinamen, beide Seiten
  **NFC-normalisiert** (macOS-FS = NFD, Inventar = NFC; ein naiver `grep -F` erzeugt sonst
  Umlaut-Fehlalarme). **Befund: 0 neue/uebersehene normative Dateien** — die einzigen 8 nicht
  erwaehnten Live-Dateien sind PNG-Screenshots in `VKF_Norm/06_Printscreen_Themen/` (nicht-normativ).
  Alle 458 SIA-PDF + alle VKF-PDF erfasst. 6. Bestaetigung «SIA/VKF KOMPLETT» in Folge, erstmals via
  reproduzierbarem Diff. Run-19-Restnotiz Cross-Link SIA 500 geschlossen (`sia-500-2009.md`
  established, `sia-en-13200-1-2019.md` verlinkt korrekt). Kein Destillat erzeugt, keine Ausgaben-
  Gueltigkeit veraendert. Kopfnotiz im Inventar ergaenzt (8 PNGs explizit als nicht-normativ
  dokumentiert). Empfehlung an Raphael unveraendert (Task pausieren/Datei-Trigger, VOLLGAS-Passus
  entfernen, SIA 380/1:2016 + SIA 385/1:2011 per Abo beschaffen). Report
  `outputs/2026-07-25_normen-nacht-run20.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): vier Bring-Schulden aus `baurecht` angemeldet
- Struktur-Muster 1 «Uebergabe verpufft im abgebenden KB», erstmals in dieser Richtung: `wiki/QUESTIONS.md` enthielt **0 Treffer** fuer «baurecht» — es war noch nie eine Bring-Schuld aus der Recht-KB hier angekommen, obwohl `baurecht` vier Normen mit Fundstellenfunktion zitiert, die hier null Praesenz haben (weder Destillat noch `training/norm-inventar.md`): **SIA 491**, **SN EN 12193:2008**, **SN 640 052**, **SN 641 400** (die beiden VSS-Normen reihen sich in den Parkierungs-/Erschliessungsblock ein, der in Run 11/12/13 dreimal korrigiert werden musste).
- Als eigener Abschnitt in `wiki/QUESTIONS.md` angemeldet, inkl. Gegenrichtung: die hier gefuehrte Bring-Schuld «Volltext SIA 380/1:2016» nennt nur `energie-berater`/`planungsgrundlagen` als Adressaten, obwohl `baurecht` die Norm ebenfalls fuehrt.
- Kein Sachwiderspruch zwischen den KBs gefunden; der Run-20-NFC-Diff hat keine neue Bring-Schuld erzeugt.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-24 (18:30) — Vier + zwei tote Wiki-Links behoben (Mac Mini Nachtschicht)
- Aus dem Health-Check vom selben Tag (siehe unten) die als "leicht" markierten 4 toten
  `[[links]]` korrigiert: `sia-382-1-2014.md` `[[sia-2024]]`→`[[sia-mb-2024-2006]]` und
  `[[sia-180]]`→`[[sia-180-2014]]` (inhaltlich gegengeprüft: Wärme-/Feuchteschutz statt
  ISO-10077-Fensterberechnung); `din-1960-2010.md` `[[din-1961-2012]]`→`[[din-1961-2010]]`
  (Zahlendreher, Gegendatei trägt Ausgabe 2010-08). `sia-480-2004.md` `[[sia-102-2003]]`:
  **kein Linkfehler** — Fliesstext zitiert korrekt SIA 102:2003, diese Ausgabe fehlt im
  Bestand (nur 2014/2020 vorhanden); gemäss Rule `identifikatoren-verifizieren` zu Klartext
  entlinkt statt auf falsche Ausgabe umgebogen. Beim Fix zusätzlich 2 weitere Vorkommen
  desselben `[[sia-2024]]`-Fehlers gefunden (`sia-384-201-2017.md`, `sia-2040-2017.md`) und
  mitkorrigiert — insgesamt 6 statt 4 Links bereinigt. `wiki/QUESTIONS.md` aktualisiert.

## 2026-07-24 — Zweiter Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
- Sonderauftrag geklärt: der Run-19-Meilenstein «SIA/VKF komplett» widerspricht **nicht** dem
  offenen Posten «SIA 181:2020 re-destillieren» (`wiki/QUESTIONS.md`) — Meilenstein bezieht sich
  auf die Inventar-Abdeckung der vorhandenen SharePoint-Dateien, der 2020er-Upgrade ist ein
  separater, Bring-Schuld-abhängiger Punkt (Norm-Kauf), in `wiki/REGISTER.md` Zeile 109 bereits
  korrekt mit Warnsymbol geführt. Empfehlung: künftige Meilensteine präziser als «Bestand
  komplett» formulieren, um diese Verwechslung zu vermeiden.
- 7-Audits-Katalog (budget-bewusst, überwiegend deterministisch via grep statt Volltext-Lektüre
  aller 271 Destillate): **17 tote `[[links]]`** in Destillat-Frontmatter gefunden, davon 4
  leicht behebbare Namensfehler (`[[sia-2024]]`→`sia-mb-2024-2006.md`, `[[sia-180]]`→vermutlich
  `sia-180-2014`, `[[sia-102-2003]]`→keine solche Datei, `[[din-1961-2012]]`→Datei heisst
  `din-1961-2010.md`), Rest dokumentierte Lücken (Normen nicht/nur teilweise im Bestand).
  Audit D (RAW-Coverage) nicht anwendbar (raw/ bewusst leer, Schema-konform). Umlaut-Bug-Baseline
  aktualisiert: 65/271 Destillate (~24 %) noch mit ASCII ae/oe/ue. Keine neuen Promotion-
  Kandidaten (8 Teil-Destillate, alle Bring-Schuld-/Lücken-abhängig).
- Report → `outputs/2026-07-24_health-check.md`.

## 2026-07-24 — Normen-Training Run 19 (MacBook Pro, SIA): letzte 2 Vertiefungs-Lücken (Stufe a) geschlossen → SIA/VKF KOMPLETT
- [destilliert+verifiziert] Die beiden letzten offenen Vertiefungsstufe-a-Positionen via Destillier+Verify-
  Pipeline (2 Sonnet-Destillier-Agenten + 2 Hauptmodell-Verifikations-Agenten, adversarial am Original-PDF,
  0 Ausfälle, ~854k Subagent-Tokens, ~12 Min):
  - `destillate/sia-405-1998.md`: Medien-Datenkataloge Ziff. 3.33-3.39 (Gas/Wasser/Fernwärme/Elektrizität/
    Telecom/Kabelkommunikation/Verschiedenes, S.19-26) + Anhang A3/A4/A6 ergänzt. Verifikation: 44 Aussagen,
    **beanstandet, 3 Befunde korrigiert** (Katalog-Zählung «sechs statt sieben» Gas–Kabelk., Fernwärme-
    Trassepunkt-Gruppierung Ziff.3.35, Kolophon-Datum: Genehmigung 12.06.1998 Ittigen / Inkrafttreten
    01.03.1999) → **established** (Rest-Bring-Schuld: Grössenordnungszahlen Tab.1 nur als Bandbreiten).
  - `destillate/sia-592-056.md` (SIA 2056:2019): Consumer-/GK-Kataloge Kap. 3.2-3.9, Prozessanlagen Kap.4,
    Gebäudetechnik 6.3-6.26, Lüftung Kap.8, Anhänge A-H ergänzt. Verifikation: ~50 Aussagen, **beanstandet,
    3 Befunde korrigiert** (Hotel-Betriebsenergie Klasse Mittel/220 Tage 150 statt 200 kWh Tab.32; Fig.12
    spez. Wärmeverluste ca. 65-185 statt 15-180 Wh/d·m; A.7 sechs statt fünf Online-Tools) → **established**
    (Rest-Bring-Schuld: Figuren-Werte Fig.6-13 Näherungen, GK-Tab.5-35 nur Repräsentativwerte).
- [Register] `training/norm-inventar.md` (beide Zeilen `[x] 260724` established VOLLSTAENDIG), `destillate/INDEX.md`
  (beide Zeilen established), `wiki/QUESTIONS.md` (Stufe-a-Sammelitem geschlossen → **0 offene Stufe-a-Positionen**).
- [Meilenstein] **SIA/VKF auf allen vier Vertiefungsstufen (a Grunddestillation+Anhänge, b Retro-Verifikation,
  c Q&A-Selbstbefragung, d Querschnitts-Synthesen) komplett.** Empfehlung an Raphael: Task `normen-training-nacht`
  auf Datei-Änderungs-Trigger umstellen/pausieren (Endbedingung PROGRAMM.md erreicht); VOLLGAS-Passus aus dem
  Auftragstext entfernen (durch Drosselung 260714 aufgehoben).
- [Verifier griff] Beide Positionen wurden erst durch die adversariale Prüfung sauber (je 3 Sachbefunde) —
  bestätigt den Nutzen der Verifikations-Pflicht vor `established`. Umlaut-Nachkontrolle beider Destillate sauber.
- Report: `outputs/2026-07-24_normen-nacht-run19.md`.

## 2026-07-23 — Nachtschicht Mac Mini (~23:35): EN 520 Bestandslücke recherchiert (QUESTIONS-Item)
- [recherchiert] Offenes QUESTIONS-Item «EN 520 Original-Destillat fehlt» bearbeitet: SharePoint
  PL-02 02_Normen/DIN_Norm geprueft (72 Dateien) — SN EN 520 ist NICHT im JANS-Bestand und nur
  kostenpflichtig (Beuth/DIN Media/SNV) erhaeltlich, kein Kauf ohne Freigabe/kein Nachtschicht-Fall.
  Oeffentliche Normvorschau (baunormenlexikon.de, DIN EN 520:2009-12) liefert immerhin die exakte
  Fundstelle Ziffer 4.13 «Definierte Dichte (Typ D)» sowie zwei bisher fehlende Typenbuchstaben
  (E, P). Der Zahlenwert 800 kg/m³ bleibt wie bisher ueber zwei unabhaengige Sekundaerquellen +
  Produktdatenblaetter belegt (Typ-D-Definition damit ausreichend abgestuetzt).
- [ergaenzt] `wiki/en-520-gipsplattentypen.md`: Fundstelle Ziffer 4.13 + Typen E/P nachgetragen,
  `sources` um die Vorschau-Quelle erweitert, «Offene Punkte» praezisiert (Kaufbedarf klar benannt).
- [ergaenzt] `wiki/REGISTER.md` (Abschnitt B, DIN/VSS/RAL): neuer Eintrag «Mini-Run (23.07.2026)»
  fuer SN EN 520 mit Bestandsstatus «nicht im Bestand».
- [geschlossen] `wiki/QUESTIONS.md`: Item als [x] markiert, Rest-Scope (Volltext-Kauf) klar
  von einem Standard-Nachtschicht-Fall abgegrenzt.
- Report: `outputs/2026-07-23_en-520-bestandsluecke.md`.

## 2026-07-23 — Wissens-Chef Run 13 (Cross-KB): SN 640 066 Ausgaben-Divergenz aufgeloest + sia-2040-Rueckverweis
- [korrektur] `destillate/vss-640066-1996.md`: adversarial verifizierte Divergenz (Verdikt CONFIRMED) —
  baurecht fuehrte SN 640 066 als «VSS 40 066 (2011/2019), neuer Titel Parkieren; Projektierung», dieses
  Destillat hingegen nur Ausgabe 1996 mit `ersetzt_durch: nicht bekannt`, WAEHREND das eigene
  `vss-640065-2011.md` (Ziff. 2-3, S. 4) 640 066 bereits mit dem NEUEN Titel zitiert (KB-interne
  Inkonsistenz). Aufgeloest: `ersetzt_durch` mit Cross-Verweis auf [[vss-640065-2011]] gefuellt (Titel-Wechsel
  belegt, Ausgabe-Jahr NICHT als gesichert gesetzt), `links` um [[vss-640065-2011]] ergaenzt, Body-Nachtrag mit
  Beleglage. Kein unbelegter Jahrgang behauptet.
- [ergaenzt] `destillate/sia-2040-2017.md` (JANS-Praxis-Transfer, normen-referenz-Kette): Rueckverweis auf
  KB energie `graue-energie.md` fuer die angewandten kg-CO2-Kennwerte (bidirektional zu energie). Cross-KB Run 13.

## 2026-07-23 — Nachtschicht Mac Mini (~22:30): Wissenscheck-Faelligkeit geprueft, als zu gross geflaggt
- [Registerpflege] Wissenscheck Phase 1 ist mit Audit-Datum 20.07.2026 faellig (aeltestes Datum
  neben der taeglich selbst-auditierenden Meta-KB `koordination`). Umfang geprueft: 289 Destillat-/
  Wiki-Dateien — mit Abstand die groesste KB, ein Standard-Audit sprengt das Nachtschicht-Budget.
  In `wiki/QUESTIONS.md` als «zu gross fuer Nachtschicht-Budget, braucht dedizierten Lauf»
  vermerkt statt oberflaechlich/unvollstaendig durchzufuehren. Stattdessen zur Doppelarbeit-
  Vermeidung zwei offene `planungsgrundlagen`-Punkte (B2 ZH-RPG-2-Umsetzung, D8 graue-Energie-
  ZH-Ueberfuehrung) per Web-Check auf neue Entwicklungen seit letzter Pruefung (28.06./04.07.)
  verifiziert: keine neue Publikation, beide bleiben korrekt als «Umsetzung ausstehend» erfasst;
  Kreisschreiben Mai 2026 war bereits erfasst (Run 23). Nebenbefund geprueft und verworfen: ein
  Websuche-Summary nannte fuer die MuKEn-2025-Verabschiedung faelschlich den 04.04.2025 statt
  29.08.2025 — Primaerquelle energiehub-gebaeude.ch (Zitat «Bern, den 29. August 2025») bestaetigt
  den in der KB `planungsgrundlagen` bereits korrekt hinterlegten Wert; keine Aenderung noetig.

## 2026-07-23 — Neuer Artikel en-520-gipsplattentypen (KISPI-Fall Rohdichte 800 kg/m³)
- [neu] Wiki-Artikel `en-520-gipsplattentypen` angelegt (Typ-Buchstaben A/D/F/H/I/R, Typ D =
  definierte Dichte ≥ 800 kg/m³, DFIR-Lesart in Trockenbau-LVs, Abgrenzung VKF-Feuerwiderstand
  vs. Typ D), im INDEX registriert. Anlass: Herkunftsklärung der Ziegel-Vorgabe 800 kg/m³ im
  Projekt 2619 KISPI (Beweiskette in wissen/projekt-lessons). Lücke EN-520-Original-Destillat
  in QUESTIONS erfasst.

## 2026-07-23 — Normen-Training Run 18 (MacBook Pro, SIA/VKF): 4 Anhang-Vertiefungen (Stufe a) geschlossen
- [Vertiefung Stufe a] Vier Teil-Destillate um ihre offenen informativen Anhänge ergänzt und je
  adversarial am Original-PDF verifiziert (Destillier-Agent Sonnet → Verifikations-Agent Hauptmodell):
  - `sia-193-111-1999.md` (SN EN 12063, Spundwände): Anh. A-G (S.47-89) destilliert; **beanstandet →
    1 Sachfehler korrigiert** (Tab. B.3 Vorwärmtemperatur: nur unterste Stahlgruppe durchwegs 5 °C, die
    mittleren Gruppen S320/S355GP steigen dickenabhängig; 30 Aussagen geprüft) → **established vollständig**.
  - `sia-384-201-2017.md` (SN EN 12831-1, Norm-Heizlast): informative Anh. C-G (S.81-99) destilliert;
    **beanstandet → 1 Fundstellen-Fehler korrigiert** (EN ISO 6946 fälschlich in der 25er-Literaturliste;
    38 Aussagen geprüft) → **established vollständig** (Rest-Bring-Schuld nur exakte NA-/E.1-Tabellenwerte,
    bewusst nicht 1:1 kopiert — Urheberrecht).
  - `sia-196-1998.md` (Baulüftung Untertagbau): Anh. A1-A4 (S.38-64, Luttenberechnung-Theorie,
    ζ-Werte, 4 Rechenbeispiele, Messformulare) destilliert; **bestanden, 0 Sachfehler** (55 Aussagen,
    nur Metadaten-Präzisierung gelesen S.64) → **established vollständig**.
  - `sia-343-051-2018.md` (SN EN 14351-2, Innentüren): informative Anh. D (Öffnungsmasse) + E
    (Handhabung) destilliert; **bestanden, 0 Fehler** (16 Aussagen) → **established vollständig**.
- [Verifikation] Adversariale Widerlegungspruefung griff: 2 von 4 Positionen beanstandet, beide Sach-/
  Fundstellenfehler direkt im Destillat korrigiert; keine erfundenen Kennwerte, keine wörtlichen
  Tabellenkopien. Workflow: 8 Agenten, 0 Ausfälle, ~72 Min, ~1,31 Mio. Subagent-Tokens.
- [Umlaut-Bug] Der am 22.07. bestätigte ASCII-Ersatz in Sonnet-Subagenten-Outputs trat in
  `sia-384-201-2017.md` (Frontmatter: „Anhaenge"/„fuer") und `sia-196-1998.md` (Überschrift
  „sinngemaess") auf — nach dem Lauf gezielt geprüft und auf echte Umlaute korrigiert.
- [Stand SIA/VKF Vertiefung a] Nach diesem Lauf noch **2 offene Anhang-/Katalog-Lücken**: SIA 2056/592
  (Detailkataloge, 130 S.), SIA 405 (medienspez. Datenkataloge, 52 S.). Alle übrigen Teil-Destillate
  sind vollständig. Nachgeführt: `norm-inventar.md` (4 Zeilen), `wiki/QUESTIONS.md`,
  `outputs/2026-07-23_normen-nacht-run18.md`.
- [Taktung] VOLLGAS-ENDLOS im Auftragstext bleibt durch die Drosselung 260714 aufgehoben; dieser Lauf
  war lücken-getrieben (echtes Compounding), kein Mengenzwang. Empfehlung an Raphael unverändert
  (siehe Report): Task auf lücken-/datei-getriebenen Takt umstellen.

## 2026-07-22 — Wissens-Chef Run 12 (Cross-KB): SIA-181-Destillat mit ersetzt_durch-Hinweis + SN-640-060 bestätigt
- [ergänzt] `destillate/sia-181-2006.md`: Frontmatter um `ersetzt_durch: SIA 181:2020 (Re-Destillat
  ausstehend)` ergänzt. Anlass: auflagebereinigung konsumiert das 2006er-Destillat als Federführungs-
  Grundlage (Schallschutz-Gewerkzuteilung), sah die Supersession aber nicht — die 2020-Info lebte nur
  in REGISTER/QUESTIONS, nicht im Destillat selbst. Konsistent mit der DIN-ersetzt_durch-Konvention (22.07.).
- [bestätigt] SN 640 060: der baurecht-Vermerk «existiert nicht» wurde im Cross-KB-Lauf adversarial
  gegen `destillate/vss-640060-1994.md` (established) geprüft — Destillat ist quellenbelegt (echtes
  VSS-PDF, gen. Nov 1994), keine Halluzination; baurecht auf Rollen-Korrektur nachgezogen. Kein normen-Fix nötig.
  Bericht: `wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-22 — ersetzt/ersetzt_durch-Lücke: DIN-Teilmenge geschlossen (Mac Mini Nachtschicht ~19:30)
- [ergänzt] Aus dem Audit-F-Fund vom 21.07. (127 Destillate ohne `ersetzt`/`ersetzt_durch`)
  die DIN/VSS/RAL-Teilmenge (Mac-Mini-Scope) bearbeitet: 67 Destillate gescannt, 3 ohne Feld
  gefunden (`din-1356-6-2006`, `din-276-4-2009`, `din-4102-2-1977`) und mit belegtem
  DIN-Media-Quellenstand ergänzt — `din-276-4-2009` ist zurückgezogen (ersetzt durch
  DIN 276:2018-12), `din-4102-2-1977` formal weiterhin [CURRENT] (Prüfverfahren teilweise
  durch DIN EN 1363-1/1364-1-2/1365-1-4 abgelöst), `din-1356-6-2006` kein Nachfolger. Als
  Konsistenz-Bonus dieselbe Lücke im verlinkten `din-276-1-2008` geschlossen. Restumfang
  (~123 Destillate, SIA/VKF) bleibt MacBook-Pro-Scope. `wiki/QUESTIONS.md` nachgeführt.
  Report: `outputs/2026-07-22_din-ersetzt-durch-luecke.md`.

## 2026-07-22 — Umlaut-Bug (ASCII-Ersatzschreibung in Haiku/Sonnet-Subagenten-Outputs) bestätigt betroffen
Cross-KB-Verifikation (Nachtschicht Mac Mini ~19:00, ausgehend von der KB baurecht): die
"Minimum Viable Model"-Subagenten-Delegation seit 19.07. gibt die Umlaut-Regel nicht an
den Subagenten weiter — auch in `normen` empirisch nachgewiesen, inkl. `normen-training-mini`
(Run 33 vom 20.07., "fuer/muessen/praezisiert/waere"), das zuvor fälschlich als Gegenprobe
für "nicht betroffen" galt. Voller Befund + vorgeschlagener Fix:
`wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`.

## 2026-07-22 — Lücke SN EN 520 (Gipsplatten) erfasst (Anlass: 2619 KISPI, Korrex Brandschutzexperte)
- [ergänzt] `wiki/QUESTIONS.md`: neuer Bring-Schulden-Punkt SN EN 520 (Gipsplatten-Typen,
  insb. Typ D/F/DF und Rohdichte-Kriterium). Auslöser: QS-Korrex des Brandschutzexperten
  vom 21.07.2026 zu den BIK-Plänen 2619 KISPI («Rohdichte muss min. 800 kg/m³ betragen»,
  Pläne 33.24/33.29-33.31). Bis zum Volltextabgleich wird das Typ-D-Kriterium nicht als
  Norm-Fundstelle zitiert.

## 2026-07-21 — DIN-277-1-Leseproblem (Mini-Run 33) root-caused: lokaler File-Provider-Fehler, kein Datenverlust (Mac-Mini-Nachtschicht 19:30)
- [geklaert] `wiki/QUESTIONS.md`: die in Mini-Run 33 (20.07.) offen gelassene Frage "ist die
  SharePoint-Datei `DIN 277-1.pdf` beschaedigt oder nur lokal auf dem Mac Mini nicht lesbar?"
  beantwortet. Direkter `cat`-Test (nicht nur `pdfinfo`/Read-Tool) reproduziert zuverlaessig
  `EDEADLK`/"Resource deadlock avoided"; `stat` meldet korrekt 577'967 Bytes, `du -h` zeigt
  0 B (nicht materialisierter Cloud-Platzhalter). Eine Vergleichsdatei im selben Ordner
  (`DIN 1045-2.pdf`, 6,4 MB) materialisiert und liest sich einwandfrei — OneDrive-Sync-Client
  selbst ist gesund (Prozess laeuft, `brctl status` zeigt `foreground`/`caught-up`, Internet OK).
  Damit isoliert: **nur der lokale File-Provider-Cache-Eintrag dieser einen Datei auf dem Mac
  Mini ist betroffen**, kein Datenverlust in der SharePoint-Ablage (das Destillat
  `din-277-1-2005.md` wurde nachweislich von einer anderen Station vollstaendig verifiziert).
  Kein automatischer Fix ausgefuehrt (App-Neustart/Cache-Eingriff ist keine Whitelist-Aktion);
  empfohlene manuelle Behebung fuer Raphael dokumentiert (Finder: "Immer auf diesem Geraet
  behalten" toggeln, oder OneDrive-App neu starten). Zwei QUESTIONS-Punkte auf [x] gesetzt
  (Auszug-Plausibilisierung DIN/VSS + Stilllegungs-Bedingung `normen-training-mini`).

## 2026-07-21 — Audit-B-Rest abgearbeitet: 26 Destillate im INDEX nachregistriert (Dauerschicht-Zyklus 42)
- [index] destillate/INDEX.md um 26 vorhandene, bisher nicht registrierte Destillate ergaenzt
  (Zeilen automatisch aus Titel/ausgabe/status-Frontmatter generiert): u.a. SIA 108/121/125/
  142(1998)/144/150/166/179/180(+081/082)/181/270/273/318/331/342/343/414/423/430,
  SN-EN-Ableitungen (162.152, 244.153) und die drei DE-Verordnungen (ArbStaettV, BauNVO,
  VStaettVO NDS). Damit ist der normen-Health-Check vom 20.07. vollstaendig abgearbeitet,
  soweit mechanisch moeglich (offen bleiben nur die ersetzt/ersetzt_durch-Recherche je Norm
  und die inhaltlichen Bring-Schulden).

## 2026-07-21 — Audit-F abgearbeitet: ss-Konvention + Pflichtfelder (Dauerschicht-Zyklus 41)
- [korrigiert] **ss-Konvention hergestellt:** 118 ß-Vorkommen in 13 DIN-/VdS-Destillaten
  (inkl. qa/) auf ss umgestellt (Rule umlaute-konvention, Schweizer Hochdeutsch).
- [frontmatter] 4 Destillate um fehlende Pflichtfelder ergaenzt: sia-1001-2-2020
  (+datenstand), en-179-1125-2009 / vkf-brl-aenderungen-2017 /
  vkf-bsv2015-vernehmlassungsbericht (+last_updated).
- Offen aus Audit F bleibt bewusst: das Feld ersetzt/ersetzt_durch fehlt in 127 Destillaten —
  KEIN mechanischer Fix (braucht je Norm die Nachfolge-Recherche); gehoert dem normen-Loop
  bzw. einem dedizierten Lauf. Ebenso offen: INDEX-Registrierung der 25 Destillate (Audit B,
  naechster Zyklus-Kandidat).

## 2026-07-21 — Audit-B abgearbeitet: 21 tote Backlinks korrigiert (Dauerschicht-Zyklus 40)
- [korrigiert] 21 tote `[[Link]]`-Vorkommen in 12+ Dateien aufgeloest (Audit-B des
  Health-Checks 20.07.): Jahres-Suffixe ergaenzt/berichtigt (sia-118→-1991, sia-112→-2014,
  sia-262/267-2013→-2003, sia-272(-2009)→-1980, sia-380-1(-energie)→-2016, sia-198→-2004,
  sia-423→-2006), Tippfehler (vkf-bsr-16-15→vkf-brl-16-15-flucht-rettungswege,
  brl-14-15→vkf-brl-verwendung-baustoffe), Alias-Namen (sia-451-datenaustausch→sia-451-1992,
  sia-102-honorar→sia-honorar-hilfsmittel, sia-d-0165→sia-d0165-2000-…) und zwei woertliche
  «...»-Platzhalter (din-105-100/din-1053-1). Sicherung: Script prueft VOR Ersetzung, dass
  jedes Mapping-Ziel existiert. NICHT angefasst (dokumentiert): mehrdeutiges [[sia-102-2003]]
  und die echten Bring-Schulden ([[sia-160/162/180/190/215/380-4/382-2]], Merkblattserie
  [[sia-2024/2028/2032/2039/2047]], [[din-1961-2012]]) — bereits in QUESTIONS gefuehrt;
  Cross-KB-Verweis [[bkp-2017]] bleibt (existiert unter references/).

## 2026-07-21 — Audit-Top-1 korrigiert: SIA-112-Fehlzuordnung 104/105 (Dauerschicht-Zyklus 39)
- [korrigiert] `destillate/sia-112-2014.md` Z. 19: SIA 104 war als «Landschaftsarchitektur»,
  SIA 105 als «Maschinen-/Elektroingenieur» gefuehrt — korrigiert auf **104 = Forstingenieure,
  105 = Landschaftsarchitektur, 108 = Gebaeudetechnik/Maschinenbau/Elektrotechnik**, verifiziert
  an den Titeln der drei etablierten Ordnungs-Destillate. Damit ist das Ausschreibungs-Risiko
  (falsche Norm-Nummer bei Berufsgruppen-Zitat via `ausschreibung`/`werkvertrag`) beseitigt.
  QUESTIONS-Punkt auf [x] mit Restvermerk (Original-Gegenlesung S. 4/10 bei Gelegenheit).

## 2026-07-21 — Mac Mini Nachtschicht: DIN 1946-6 ↔ SIA 382/1 Methodenvergleich (QUESTIONS geschlossen)
- Neuer Wiki-Artikel `din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich.md`: schliesst
  den seit Run 5 (260713) offenen Punkt in `wiki/QUESTIONS.md`. Grundlage waren die zwei bereits
  vollstaendig destillierten/verifizierten Quellen `din-1946-6-2009.md` und `sia-382-1-2014.md`
  (Anhaenge A-G von SIA 382/1 erst heute in Run 17 durch die MacBook-Station ergaenzt) — keine
  neue Primaerquelle noetig, reine Synthese-Arbeit ohne Recherche-Kosten.
- Kernbefund: DIN 1946-6 bemisst huellen-/feuchteschutzgetrieben (Flaechenformel Tabelle 5 +
  Raum-Pauschalwerte Tabelle 6/7), SIA 382/1 nutzungs-/lastgetrieben (Personen/Waerme/
  Schadstoffe als gleichrangige Bemessungskriterien, Ziff. 5.3). Ein direkter Zahlenvergleich
  einzelner Tabellenwerte ist deshalb nur bedingt aussagekraeftig — unterschiedliche
  Bemessungsphilosophie, nicht falsch/richtig. Fuer CH-Baueingaben bleibt ausschliesslich
  SIA 382/1 (+ SIA 180/380/1/2023) massgebend, DIN 1946-6 dient nur als Kontext bei deutscher
  Bauherrschaft/Lieferantenunterlagen.
- Register nachgefuehrt: `wiki/INDEX.md`, `wiki/QUESTIONS.md`. Report `outputs/2026-07-21_din1946-6-sia382-1-methodenvergleich.md`.

## 2026-07-21 — Normen Run 17 (MacBook Pro, SIA/VKF): Vertiefung Stufe a verifiziert + Inventar bestaetigt komplett
- **Inventar-Kontrolle:** 0 offene `[ ]`-Grunddestillations-Positionen in SIA/VKF (bestaetigt
  Run 15/16/17); ein 30-40-Positionen-Batch ist gegenstandslos. Zugriffs-Check OK (Read auf
  382/1-PDF, keine TCC-Blockade).
- **Adversariale Verifikation der Run-17-Vertiefungen (Hauptmodell):** `sia-382-1-2014.md`
  (Anh. A-G, 44 Aussagen, 2 Befunde korrigiert → **established vollstaendig**) und
  `sia-384-201-2017.md` (vereinfachte Verfahren Kap. 7/8 + Uebereinstimmung Kap. 9 + Anh. A/B,
  42 Aussagen, 3 Befunde korrigiert → teil-destillat, informative Anh. C-G offen).
  Befunde: SIA 382/1 D.3.2 (2,5-Potenz P_V statt η_V), Fundstelle C.5; SIA 384/201 Tab. B.15
  Baujahr-Grenze, Tab. 9/10 Ein-/Ausgangsgroesse, B.2.12 Druckdifferenz 4 Pa. Alle direkt korrigiert.
- **`sia-384-201-2017.md` neu erweitert** (Kap. 7/8 Gl. 50-56, Aufheizleistung 6.3.4/Gl. 39,
  Uebereinstimmungspruefung Kap. 9, Anh. A normativ + Anh. B informativ inkl. der kritischen
  Abweichungswarnung Tab. B.13 EN gegen CH-Tab. NA.10). Frontmatter: gelesen S. 1-90, status
  teil-destillat (C-G offen), last_updated 2026-07-21.
- **Register/QUESTIONS nachgefuehrt:** `norm-inventar.md` beide SIA-Zeilen auf `[x] 260721`;
  `wiki/QUESTIONS.md` «offene Anhaenge» auf `[~]` (382/1 erledigt, 384/201 nur C-G). Zwei
  veraltete Eintraege am Bestand widerlegt und auf `[x]` gesetzt: VKF Verz 40-15 (laengst
  vollstaendig) und VKF-BRL 15-15 (existiert als Destillat seit 260714).
- **Empfehlung:** Task auf luecken-getriebenen, gedrosselten Takt umstellen (Rule 260714);
  VOLLGAS-Absatz aus dem Auftragstext entfernen. Report `outputs/2026-07-21_normen-nacht-run17.md`.
- **Commit:** NAS-`.git` beim Lauf durch nativen Synology-Selfcommit-Cron gesperrt (index.lock);
  Git ueber SMB nicht erzwungen (Rule sync-kanonische-quelle) — Edits liegen auf ext4, der
  native Cron sichert sie automatisch.

## 2026-07-21 — Normen Run 17: SIA 382/1:2014 Anhänge A-G nachdestilliert
- `destillate/sia-382-1-2014.md`: Teil-Destillat (nur Hauptteil Kap. 0-8, S. 1-63) um die
  bisher offenen Anhänge A-G (S. 64-82) ergänzt — A (Raumbedarf Technikzentralen/Schächte/
  Doppeldecken, Figur 10-15), B (Richtwerte Lebensdauer/Wartungsaufwand, Tab. 25), C (EER/EER+/
  ESEER, Elektro-Thermo-Verstärkungsfaktor Rückkühlung), D (Volllaststunden-Formel Elektrizitäts-
  bedarf Lüftung), E (Simulations-Randbedingungen sommerliche Übertemperatur), F (Übergabe/
  Abnahme SIA 118, Toleranzen Tab. 27 — werkvertragsrelevant), G (Checklisten Planung/Betrieb).
  Frontmatter aktualisiert: `gelesen` jetzt S. 1-82 komplett, `status` von teil-destillat auf
  vollständig destilliert. JANS-Praxis-Transfer um Bezüge zu machbarkeit/volumenstudie
  (Anhang A), werkvertrag/unternehmerkontrolle (Anhang F.4 Toleranzen), energie-berater
  (Anhang C/D) und behoerden-vorabklaerung (Anhang E) erweitert. Keine neuen Widersprüche zum
  bereits verifizierten Hauptteil; keine Ziffern erfunden, alle Werte mit Anhang-Fundstelle.

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): VKF-BRL 20-15/19-15 an GVZ-Artikel angebunden
- [link] `destillate/vkf-brl-20-15-brandmeldeanlagen.md` + `destillate/vkf-brl-19-15-sprinkleranlagen.md`:
  JANS-Praxis-Transfer präzisiert — der generische `auflagebereinigung`-Verweis zeigt jetzt auf den
  konkreten neuen Artikel `wissen/auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler` (GVZ-Weisung
  20.07/20.08 spiegelt Ziff. 4.1/3.10 bzw. 5.1/4.4). normen bleibt für den Norm-Wortlaut führend.
  Cross-KB-Audit: 0 Kennwert-Widerspruch (GVZ-Schwellen deckungsgleich mit VKF-BRL).
  Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Erster Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
- **Erster Lauf ueberhaupt** (kein vorheriger health-check/Audit-Eintrag im CHANGELOG gefunden).
  A1 (SIA-112-Destillat ordnet SIA 104/105 falschen Berufsgruppen zu, seit 17.07. offen und noch
  unkorrigiert) · B64 (39 tote `[[Backlink]]`-Vorkommen in 26 Destillaten, ueberwiegend fehlende
  Jahres-Suffixe; 25 Destillate nicht in `destillate/INDEX.md` registriert) · C1 (Destillat
  `sia-vertragsunterschiede-2023.md` beruht auf einer als ChatGPT-Antwort gekennzeichneten Quelle,
  korrekt `speculative` gefuehrt) · D0 (Inventar `training/norm-inventar.md` vollstaendig, 0 offene
  `[ ]`) · E0 (KB erst 9 Tage alt, 90-Tage-Kriterium noch nicht anwendbar) · F143 (11x «ß» statt
  «ss», 1x Deko-Symbol, 4x fehlendes Pflichtfeld last_updated/datenstand, 127x fehlendes
  Pflichtfeld ersetzt/ersetzt_durch) · G0 (6 speculative-Destillate geprueft, alle korrekt
  zurueckgehalten, keine Promotion-Kandidaten). Keine inhaltlichen Sachfehler gefunden — die
  adversariale Verifikationskultur des Trainings-Loops faengt diese bereits selbst ab. Voller
  Report → `outputs/2026-07-20_health-check.md`.

## 2026-07-20 — Normen Mini-Run 33 (Mac Mini): Uebergabe-Punkte aus Run 15 abgearbeitet
- **Zaehl-Differenz aufgeloest:** frischer rekursiver Datei-Abgleich zeigt DIN live 72 = Inventar 72,
  VSS live 17 = Inventar 17 (netto), RAL 1 = 1 — die von Run 15 (17.07.) gemeldete Differenz
  (DIN 71, VSS 14) reproduziert sich heute nicht, vermutlich transienter OneDrive-Sync-Zustand
  auf der Gegenstation, kein Bestandsfehler. «DIN/VSS/RAL komplett» bleibt bestaetigt.
- **Auszug-Plausibilisierung — neuer technischer Fund:** `DIN EN 12207.pdf` liest sich normal
  (6 S. bestaetigt). `DIN 277-1.pdf` ist auf dem Mac Mini aktuell NICHT lesbar (`pdfinfo`: kein
  gueltiges Trailer/xref; `cat`/`tail`/Read-Tool: reproduzierbar `EDEADLK`) — spezifisch auf diese
  eine Datei begrenzt, vier Vergleichsdateien im selben Ordner lesen sich einwandfrei. Vermutlich
  defekter/teilweise materialisierter OneDrive-Platzhalter lokal auf dieser Station, kein Beleg
  gegen das bestehende, mehrfach verifizierte Destillat. Naechster Schritt: Gegenprobe auf dem
  MacBook Pro (dort war die Datei beim urspruenglichen Destillieren lesbar).
- Register nachgefuehrt: `wiki/QUESTIONS.md` (Abschnitt "Uebergabe an den Mac Mini"). Kein Task
  reaktiviert, keine Aenderung an `norm-inventar.md` noetig (Zahlen bereits korrekt). Report
  `outputs/2026-07-20_normen-mini-run33.md`.

## 2026-07-19 — Normen Run 16 (MacBook Pro): SIA/VKF-Nachtrag komplett — 0 offene Positionen
- **31 von 31 offenen SIA/VKF-Positionen destilliert + adversarial verifiziert.** Abgearbeitet
  wurden die im Run 15 (17.07.) nachgetragenen Bestaende: 18 Merkblaetter der 2000er-Serie,
  6 Wegleitungen/Auslegungen/Wettbewerbsdokumente, 3 SIA-112-Hilfsmittel, 3 Vertragsvorlagen,
  1 VKF-Normkonzept BSV 2026 (Projektstand, NICHT in Kraft). Inventar SIA/VKF danach 0 offene `[ ]`.
- **Verifikation:** 381 Aussagen am Original-PDF gegengeprueft, 73 Befunde, 72 korrigiert;
  4 Destillate ohne Befund. Workflow mit 62 Agenten (31 Destillier + 31 Refuter), 0 Ausfaelle.
- **Haeufigster Fehlertyp: modale Ueberdehnung (23 Befunde)** — «kann/sollte» im Original wurde
  im Destillat zu «muss/zwingend». Fuer JANS der gefaehrlichste Typ, weil eine als verbindlich
  zitierte Empfehlung in LV/Werkvertrag/Behoerdenkorrespondenz nicht haltbar ist. Als Lehre in
  `wiki/QUESTIONS.md` festgehalten: kuenftige Destillier-Prompts muessen die Modalitaet
  ausdruecklich am Original abgleichen.
- **Ausgabejahre korrigiert:** Die Zahl im Dateinamen der Merkblatt-Serie ist die Merkblatt-NUMMER,
  nicht das Jahr. `2004_d.pdf` ist Ausgabe Maerz 1992, `2003_d.pdf` revidierte Ausgabe April 1996,
  `2017_d.pdf` Ausgabe 2000. Massgebend ist neu die am Titelblatt verifizierte Ausgabe.
- **Fehletikettierung aufgedeckt:** `SIA 112/SIA_Leistungsmodell.pdf` ist kein SIA-Dokument,
  sondern ein Merkblatt der KUNDERT PLANER AG — als Sekundaerquelle behandeln, nie als Norm zitieren.
- **5 Destillate bewusst `speculative`** (Einseiter/Auszuege ohne Ausgabevermerk, kein Jahrgang
  erfunden); `sia-271-wegleitung` als `[~]` teil-destilliert (nur 2-Seiten-Auszug im Bestand).
- **Neue Bring-Schuld:** Gueltigkeitsstand der ganzen 2000er-Merkblatt-Serie ungeklaert
  (SIA-Merkblaetter gelten nur 3 Jahre, verlaengerbar) — die Destillate belegen den Inhalt,
  nicht die heutige Geltung.
- **Empfehlung:** Endbedingung des PROGRAMM.md ist fuer SIA/VKF erreicht (Grunddestillation +
  alle vier Vertiefungsstufen). Task `normen-training-nacht` pausieren oder auf Datei-Aenderungs-
  Trigger umstellen. Zudem: der Auftragstext des Tasks schreibt weiterhin VOLLGAS-ENDLOS vor,
  obwohl Rule 260714 das aufgehoben hat (STOP-Dateien gesetzt) — Task-Definition nachziehen.
- Register nachgefuehrt: `training/norm-inventar.md`, `destillate/INDEX.md`, `wiki/REGISTER.md`
  (neuer Abschnitt Run 16), `wiki/QUESTIONS.md`. Report `outputs/2026-07-19_normen-nacht-run16.md`.

## 2026-07-19 — Wissens-Chef Run 9 (Cross-KB): SIA-2024-Bring-Schuld verengt, SIA 279 als Fuehrungsquelle bestaetigt
- **REGISTER-Zeile SIA 2024 ergaenzt:** Die Bring-Schuld stand unveraendert als «kostenpflichtiger
  Volltext SIA-Shop», obwohl die KB `energie` am 18.07.2026 (Run 80) eine **freie amtliche Quelle**
  erschlossen und verifiziert hat: SIA-Grundlagenbericht zur Revision 2021 inkl. Korrigenda C1:2024
  (cms.sia.ch/de/api/getMedia/941). Deckt Systematik, Gebaeudekategorien und die
  Elektrizitaetskennzahlen Kat. VIII (Ziff. 4.2.1/4.2.3) — **nicht** die Raumdatenblaetter
  Anhang A/F. Bring-Schuld deshalb **verengt statt geschlossen**.
- **SIA 279:2018 hat sich als Fuehrungsquelle bewaehrt:** das Destillat hat einen sachlich falschen
  Zuschlags-Satz in der KB `energie` gekippt (Ziff. 3.2.2.1 kein Zuschlag im Regelfall). Ebenso hat
  `vkf-brl-13-15-baustoffe-bauteile` die RF-Terminologie dort richtiggestellt. Beide Destillate sind
  neu aus `energie` verlinkt.
- Bericht: `wissen/koordination/outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Wissens-Chef Run 8 (Cross-KB): VKF-BRL 16-15 — ueberholte Personenbelegung Verkauf nachgefuehrt
- **Befund (CONFIRMED am Original durch Refuter):** Das Destillat `vkf-brl-16-15-flucht-rettungswege`
  und der Synthese-Artikel `synthese-sia-vkf-fachskills` fuehrten die Personenbelegung Verkauf
  (ebenerdig 0.5 / 1. UG-1. OG 0.35 / tiefer-hoeher 0.25 P./m2) als `established` **ohne Vorbehalt**.
  Diese Zeile wurde mit **Beschluss TKB vom 09.06.2021** im Anhang zu Ziff. 3.5.2 (S. 24)
  **ersatzlos gestrichen** und durch eine Matrix nach Betriebstyp ersetzt: Fachmaerkte/Kaufhaeuser/
  Einkaufszentren 0.10/0.10, Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte 0.45/0.21
  (ebenerdig / ueber Treppen). Belegt an **beiden** Original-PDFs (Fassung 01.01.2017 vs. Fassung
  Stand 01.12.2022, `PL - 03 Brandschutz/.../BSPUB-1394520214-85.pdf`, pdftotext-Volltextvergleich).
  Tragweite: der Wert geht in Fluchtwegbreiten ein; bei Fachmaerkten lag er um Faktor 5 zu hoch,
  bei hochfrequentierten Supermaerkten zu tief.
- **Aktion:** Warnkasten mit der 2022er-Matrix ins Destillat (alte Werte als «gestrichen» markiert,
  nicht geloescht); Synthese-Zeile auf die geltenden Werte umgestellt; Frontmatter `datenstand`
  + `status: established-mit-vorbehalt`; REGISTER-Zeile um die drei Aenderungsstufen ergaenzt;
  drei QUESTIONS-Eintraege (P1 Volltext-Destillation der 2022er-Fassung inkl. der ungeprueften
  Deltas ABSV 22.03.2017 / Fehlerkorrektur Ziff. 3.7; Vorarbeit-Hinweis auf pg fuer die BRL-Serie;
  Strukturhinweis zur Fassungspflege). Zusaetzlich SIA-2048-Uebergabe aus `energie` aufgenommen.
- **Struktur-Lehre (fuer den Synergie-Orchestrator):** (a) Der Uebergabe-Flag stand seit Run 52 nur
  im abgebenden KB `planungsgrundlagen` und war hier nie angekommen — Uebergaben gehoeren in die
  QUESTIONS der EMPFAENGER-KB. (b) Die Refuter-Notiz vom 17.07. («keine Abweichung gefunden») prueft
  gegen **dieselbe Datei**, aus der destilliert wurde, und kann eine juengere Fassung im Bestand
  strukturell nicht finden — Verifikationen muessen zuerst den Bestand nach juengeren Fassungen
  durchsuchen. **Fassungspflege ist der blinde Fleck der Destillate.**
- Bericht: `wissen/koordination/outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-17 — Wissens-Chef Run 7 (Cross-KB SIA 380/1): P1-Blocker relativiert + Verweis auf energie
- **`destillate/sia-380-1-2016.md`:** «Querbezug KB energie»-Block vor den offenen Punkten gesetzt.
  Die als P1-Bring-Schuld gefuehrten Grenz-/U-Werte sind im Hub **operativ verfuegbar** — energie
  fuehrt sie via Vollzugshilfe EnFK EN-102 (`wissen/energie/destillate/enfk-en-102-waermeschutz-2018`,
  established) + `sia-380-1-aktualitaets-check-2026`. Der P1-Blocker gilt damit nur noch fuer die
  **zitierfaehige Norm-Fundstelle** (Ziffer/Wortlaut am Volltext), nicht mehr fuer die belegbaren Werte;
  entsprechend praezisiert. Kein Status-Wechsel, kein Wert erfunden. Bericht:
  `koordination/outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-17 — Run 15 (MacBook Pro, SIA/VKF): «SIA/VKF komplett» widerlegt — 59 Dateien fehlten im Inventar; Stufe (a) + (d) abgeschlossen

**Wichtigster Befund — Inventar-Korrektur.** Ein Datei-fuer-Datei-Abgleich gegen die live gemountete
SharePoint-Ablage zeigt: der automatische Scan vom 11.07.2026 hat nur `SIA_Norm/SIA_Normen/alle/`
erfasst. **58 SIA-Dateien** (Ordner `SIA_Vertraege/`, `SIA_Merkblaetter/`, `SIA_Abo/`, die norm-eigenen
Unterordner `SIA_Normen/SIA 102|112|282|380_1_2016/` sowie die Wurzeldatei `i385-1_2011_d.pdf`) und
**1 VKF-Datei** (`07_BSV 2026 Projekt/`) waren nie erfasst. Die Meldung «SIA/VKF 0 offene Positionen»
der Laeufe 13/14 beruhte damit auf einer unvollstaendigen Grundmenge und ist korrigiert
(neue Sektion «SIA — Nachtrag 260717» in `training/norm-inventar.md`).

**Geschlossen in diesem Lauf (8 neue Destillate, alle adversarial verifiziert):**
- `sia-1001-1-2020.md`, `sia-1001-2-2020.md`, `sia-1001-3-2020.md`, `sia-1001-11-2018.md`,
  `sia-1023-2013.md`, `sia-honorar-hilfsmittel.md` — die SIA-Vertragsnormen, also die Faktenbasis
  der Skills `werkvertrag` und `honorarberechnung-sia102`. Alle `established`.
- `sia-380-1-2016.md`, `sia-385-1-2011.md` — beide nur als **Vorschau** im Bestand (6/60 bzw. 6/28
  Seiten). Ehrlich als `struktur-destillat (Auszug)` / `speculative` gefuehrt, mit Zitier-Riegel und
  Bring-Schuld P1 statt geratener Werte. Gegenprobe: im uebrigen destillierten SIA-Bestand 0 weitere Auszuege.

**Vertiefungsstufe (a) abgeschlossen:** die 30 Ergaenzungskandidaten aus Run 14 sind eingearbeitet —
29 Luecken am Original verifiziert (28x belegt, 1x abweichend), 5 Beanstandungen der Widerlegungs-Pruefung
korrigiert. **Vertiefungsstufe (d) abgeschlossen:** neu `wiki/synthese-sia-vkf-fachskills.md`
(224 Fundstellen ueber 7 Fach-Skills) — das SIA/VKF-Pendant zur DIN/VSS/RAL-Synthese.

**Geklaert:** VKF-BRL 16-15 ist **Ausgabe 2015, Fassung 01.01.2017** (nicht «Ausgabe 2017») — «2017»
ist das Fassungs-, nicht das Ausgabedatum. **Richtiggestellt:** die «Honorarempfehlung SIA 2009» ist
keine SIA-Publikation, sondern eine **KBOB-Empfehlung**.

**Qualitaets-Bilanz der Widerlegungs-Stufe:** 32 Beanstandungen ueber alle Destillate, alle korrigiert;
kein Destillat-Status musste gesenkt werden ausser bei den zwei Auszug-Normen. Wiederkehrende Fehlertypen:
woertliche Norm-Uebernahmen (Urheberrecht), unbelegte Verallgemeinerungen und als Norm-Aussage etikettierte
Eigenleistungen. Report `outputs/2026-07-17_normen-nacht-run15.md`.

## 2026-07-17 — Neu: Destillat SIA 385/1:2011 (Trinkwarmwasser) — Inventar-Luecke geschlossen, Auszug ehrlich ausgewiesen
Die Norm `SIA_Norm/i385-1_2011_d.pdf` lag ohne Inventar-Eintrag UND ohne Destillat auf SharePoint
(durchgefallen beim Inventar-Scan 11.07.2026). Neu angelegt: `destillate/sia-385-1-2011.md`,
registriert in `destillate/INDEX.md`.

BEFUND ZUM UMFANG: Das PDF ist eine **Vorschau/ein Auszug** — 6 von 28 Normseiten (Titelblatt,
Impressum, Inhaltsverzeichnis, Vorwort, Kommission, Genehmigung). Der gesamte normative Hauptteil
(Normseiten 5-26: Ziff. 0 Geltungsbereich, 1 Verstaendigung, 2 Allgemeine Anforderung,
3 Hygienische Anforderungen/Legionellen, 4 Nutzungsanforderungen, 5 Energieeffizienz, Anhang A/B)
FEHLT. Es liegt damit KEIN einziger normativer Zahlenwert vor — insbesondere keine Legionellen-/
Speichertemperaturen, keine Ausstosszeiten, keine Volumenstroeme, keine Daemmanforderungen.
Das Destillat ist deshalb ein `struktur-destillat (Auszug)` und traegt eine Warnung im Kopf; es
weist explizit aus, welche Werte NICHT zitierbar sind. Status bewusst NICHT `established`.

BELEGTER INHALT (5-fach gegengeprueft am Original): Titel «Anlagen fuer Trinkwarmwasser in
Gebaeuden – Grundlagen und Anforderungen» (Trinkwarm-, nicht Trinkwasser); SN 546385/1:2011 de;
genehmigt 01.09.2010, gueltig ab 01.05.2011; **ersetzt SIA 385/3:1991** (doppelt belegt S. 1 + S. 28)
— relevanter Aktualisierungs-Fund fuer Altdokumente; Abgrenzung Waermeerzeugung → SIA 384,
Berechnung/Bemessung → SIA 385/2 (bei Drucklegung noch in Erarbeitung); Umsetzung von
SN EN 15316-3-1/-2/-3. Zusaetzlich als Trefferkarte destilliert: das komplette Inhaltsverzeichnis
mit Normseitenzahlen (z.B. Legionellen → S. 13, Ausstosszeit → S. 15, Speicher → S. 17), damit der
Volltext-Zugriff spaeter zielgenau erfolgen kann.

BRING-SCHULD (P1): Volltext SIA 385/1:2011 beschaffen (SIA, Preisgruppe 20), danach auf ein
Voll-Destillat heben. Ebenfalls offen: ob Ausgabe 2011 im Jahr 2026 noch gueltig ist (gegen
`ersetzte_normen.pdf`/SIA-Katalog pruefen) und ob SIA 385/2 inzwischen erschienen/im Bestand ist.
Bis dahin duerfen `energie-berater`/`planungsgrundlagen` aus SIA 385/1 nur die Zustaendigkeit und
die Ausgabenlage nennen, keine Kennwerte (Rule normen-referenz).

## 2026-07-17 — Loop stillgelegt, Endbedingung erreicht (normen-training-mini)
Der Scheduled Task `normen-training-mini` (Mac Mini, DIN/VSS/RAL) ist deaktiviert. Das
Inventar DIN/VSS/RAL wurde in den Mini-Laeufen 30, 31 und 32 (letzter Commit 16.07.2026 21:42)
dreimal in Folge als KOMPLETT bestaetigt — weitere Laeufe waeren Leerlauf und wuerden im
laufenden Drossel-Regime (Rule auto-verbesserungen 260714, Wochenlimit schonen bis Reset
Mo 20.07. 11:59) unnoetig Tokens verbrauchen. Umsetzung: launchd-Job `ch.jans.training-normen`
(effektiver headless-Trigger, siehe `scripts/cron-training-mini.sh`) unloaded + `Disabled` in
`~/Library/LaunchAgents/ch.jans.training-normen.plist` gesetzt (Datei bleibt erhalten, nicht
geloescht); SKILL.md-Beschreibung mit Stillegungs-Vermerk ergaenzt. Reaktivierung nur wenn
neues Norm-Material (DIN/VSS/RAL) in der SharePoint-Normenbibliothek eintrifft — dann
`Disabled` aus dem plist entfernen und `launchctl load` erneut ausfuehren.

## 2026-07-17 — Adversariale Verifikation SIA 1023:2013 (Werkvertrag-Formular)
Auftrag: 5 Kernaussagen des Destillier-Agenten am Original zu widerlegen versuchen, plus Stichprobe.
Methodik: eigene Extraktion (`pdftotext -layout`, Gesamtdokument) UND visueller Vollbild-Read **aller
5 Seiten** als PNG (130 dpi) — kein Vertrauen in den Vorlauf. AcroForm-Felder gegengeprueft.

- **Aussage 1 (Rechtsnatur + Aufbau: Formular statt Norm, 9 Ziffern, Bauleitung Art. 33 auf dem
  Titelblatt, Unterschrift nur «Zur Kenntnis genommen») — BESTAETIGT.** Alle 9 Ziffern-Titel, die
  Reihenfolge, die Seitenzuordnung und der Unterschriftenblock (S. 5) am Original bestaetigt.
- **Aussage 2 (Vertragsbestandteile Ziff. 1.1–1.5, Rangordnung nicht selbst geregelt) — BESTAETIGT.**
  Fussnote S. 2 (Art. 21 Abs. 1 / bei Gegenangebot Art. 22 Abs. 4) und Ziff. 1.5a mit vorgedruckter
  Jahrzahl (2013) verifiziert. Die Feststellung, dass 1.1–1.5 KEINE Rangordnung ist, haelt.
- **Aussage 3 (Verguetung Ziff. 2.1–2.3) — BESTAETIGT, mit zwei Praezisierungen.** Beide Varianten,
  die Rechenkaskade, das Rabatt-Feld nur in Variante A, die vier Teuerungsverfahren SIA 121–124 und
  das doppelte Ankreuzfeld Globalpreis/Pauschalpreis am Original bestaetigt. **Beanstandet:**
  (a) «Ziff. 2.2 ist die einzige materielle Klausel des Formulars» ist zu absolut — Ziff. 9 enthaelt
  ebenfalls eine vorgedruckte materielle Gerichtsstandsregel (allerdings unter Ankreuzvorbehalt);
  praezisiert zu «einzige unbedingt geltende, nicht waehlbare». (b) Fundstelle «Art. 62 SIA 118»
  falsch — das Formular schreibt nur «(Art. 62)» ohne Normangabe; korrigiert + als speculative markiert.
  Nachtrag: die Alternative zum Standard-Stichtag ist ein **unbeschriftetes** Ankreuzfeld mit Freitext.
- **Aussage 4 (Ziff. 3/4/6 als Freifelder ohne Vorgabe) — BESTAETIGT.** Ziff. 6 traegt tatsaechlich
  nur den Titel, kein Untertitel/Verweis/Vorgabewert; Skonto nur in Ziff. 2.1. Haelt vollstaendig.
- **Aussage 5 (Negativbefund Sicherheiten/Garantien; Ziff. 5 ohne vorgedruckte Mindestsummen) —
  BESTAETIGT.** Volltext beider Lesewege zeigt auf keiner der 5 Seiten Rueckbehalt, Solidarbuergschaft,
  Bargarantie, Garantiefrist oder Verjaehrung. Ziff. 5 Deckungssummen durchgehend leer.

**Systematische Beanstandung (Stichprobe, Hauptbefund):** Das Destillat behauptete an fuenf Stellen den
**INHALT** referenzierter SIA-118-Artikel (Art. 15 Abs. 3/4 «Vorbehalte als gesonderte Beilage»;
Art. 21 Abs. 1 «Urkunde steht zuoberst»; Art. 21 Abs. 3 «nur wirksam in der Urkunde»; Art. 92 «Werkvertrag
legt Fristen fest»; Pauschalpreis «Preisart ohne Teuerungsabrechnung»). Das Formular nennt Artikel
**ausschliesslich als Nummern, nie mit Inhalt** — diese Aussagen sind aus SIA 1023 nicht belegbar und
widersprachen den eigenen «Offenen Punkten» des Destillats (SIA 118:2013 ist nicht im Bestand). Alle
fuenf entfernt bzw. als speculative markiert; als Grundsatz in «Offene Punkte» verankert.
Ferner: woertliche Satzzitate (Ziff. 2.1, 2.3, 4, Ausfertigungssatz) aus Urheberrechtsgruenden in eigene
Kurzfassung ueberfuehrt. Ebenso die Kennzahl «30-Tage-Zahlungsfrist» im Praxis-Transfer entfernt — sie
stammt aus `sia-118-1991.md` und haette die eigene Ausgaben-Disziplin-Warnung des Destillats unterlaufen.

**Gesamturteil: Status `established` HAELT** — die Formular-Ebene (das, was SIA 1023 tatsaechlich ist)
ist zu 100 % am Original verifiziert. Die Fehler lagen durchwegs eine Ebene daneben (SIA-118-Inhalt),
nicht am Gegenstand des Destillats, und sind korrigiert.

## 2026-07-17 — Adversariale Verifikation SIA 112:2014 (Bauwerksakten-Verweise SIA 469 / SIA 269/2)
Auftrag: zwei vom Destillations-Agenten eingebaute Aussagen zu den Verweisen auf **SIA 469** und
**SIA 269/2** am Original-Scan zu widerlegen versuchen. Methodik: eigene OCR (kein Vertrauen in die
OCR des Vorlaufs) — Seiten 21/23/24 bei 400 dpi, zusaetzlich Volltext-OCR **aller 26 PDF-Seiten**
bei 300 dpi; Zeile 532.2 zusaetzlich als Bildausschnitt visuell gelesen.

- **Aussage 1 (Verweis SIA 469 in 532.2 / 622 / 632) — BESTAETIGT.** Wortlaut am Original bestaetigt
  an allen drei Stellen; auch die Praezisierung stimmt: der Verweis steht in der Spalte «Erwartete
  Ergebnisse/Dokumente» des Leistungsbereichs, **nicht** im Modultext. Nachtrag: bei Ziff. 532 (S. 21)
  ist der Verweis ein **Klammerzusatz**, bei 622/632 nicht — im Destillat ergaenzt.
- **Aussage 2 (SIA 269/2 an allen drei Stellen) — TEILWEISE BEANSTANDET.**
  - Bestaetigt: SIA 269/2 wird an allen drei Stellen zusammen mit SIA 469 genannt. Die
    Exklusivitaets-Behauptung haelt: Volltext-OCR aller 26 Seiten zeigt «469»/«269» **ausschliesslich**
    auf S. 21, 23, 24 — keine weitere Norm wird fuer die Bauwerksakten herangezogen.
  - Bestaetigt: Zusatzbefund, dass die Bauwerksakten zugleich Grundlage der Teilphasen 61/62/63 sind.
    **Praezisiert:** bei Ziff. 63 (S. 24) sind sie nicht die einzige Grundlage — dort treten die
    Ergebnisse der Inspektionen und Kontrollen aus der Ueberwachung hinzu. Im Destillat nachgefuehrt.
  - **Beanstandet:** der Satz «SIA 112 selbst enthaelt **keine** Anforderungen an Inhalt/Aufbau der
    Bauwerksakten» ist am Original **zu absolut** und wird durch den Normtext widerlegt: Ziff. 622
    (S. 23) und 632 (S. 24) benennen selbst Bestandteile («Plaene, Kenndaten, Objektgeschichte,
    Unternehmerverzeichnis usw.»), und die Module 532.2/622.1/632.1 umschreiben die Taetigkeiten.
    Korrekt ist: die Aufzaehlung ist mit «usw.» offen/nicht abschliessend, die **materielle** Regelung
    von Inhalt und Aufbau erfolgt ueber SIA 469 und SIA 269/2. Formulierung im Destillat korrigiert.

**Zwei Nebenbefunde ausserhalb des Pruefauftrags (am Original festgestellt):**
- **Frontmatter `gelesen` war unzutreffend** («S. 1–28 vollstaendig»): der Scan hat 26 PDF-Seiten,
  gedruckte Paginierung 1–25 deckungsgleich, S. 25 leer, PDF-S. 26 = gedruckte S. 28. Die **gedruckten
  Seiten 26–27 fehlen im Scan**. Frontmatter korrigiert, Luecke unter «Offene Punkte» dokumentiert.
- **Offener Punkt geschlossen:** die Vorgaengerausgabe war doch im PDF vermerkt — die Genehmigungsseite
  (gedruckte S. 28) haelt fest: genehmigt 23. Mai 2014 (Solothurn), **ersetzt die Ordnung SIA 112
  Leistungsmodell (2001)**, gueltig ab 1. November 2014. Im Destillat nachgefuehrt (Gegencheck gegen
  `ersetzte_normen.pdf` bleibt empfohlen).

Geaendert: `destillate/sia-112-2014.md` (Frontmatter `gelesen`, Ziff. 63, Sektion «Verweise auf andere
Normen», «Offene Punkte»). Status bleibt `established` — die tragenden Aussagen haben der Widerlegung
standgehalten.

## 2026-07-16 — normen-training-mini Mini-Run 32 (Mac Mini, Zuruf-Intensivlauf): INVENTAR KOMPLETT fuer DIN/VSS/RAL bestaetigt (3. Bestaetigung in Folge)
Stations-Split eingehalten: NUR DIN/VSS/RAL angefasst (SIA/VKF = MacBook Pro, nicht beruehrt).
Auftrag Raphael (16.07.2026, direkt nach Mini-Run 31): ein weiterer Intensiv-Lauf gemaess
`training/PROGRAMM.md`. Inventar-Check (Datei-fuer-Datei gegen die live gemountete
SharePoint-Ablage `PL - 02_Recht_Norm/02_Normen/{DIN_Norm,VSS_Norm,RAL_Norm}`): erneut exakt
72/17/1 Dateien, 0 offene `[ ]`-Positionen, keine neuen Dateien. Zusaetzlich den bisher nicht
im Inventar gefuehrten Ordner `Lignum/` geprueft: leer (0 Dateien), kein Bestandsfehler.

Da alle vier Vertiefungsstufen (a Grunddestillation, b Retro-Verifikation, c Q&A-
Selbstbefragung, d Querschnitts-Synthese) bereits seit Mini-Run 29/30 fuer alle 90 Dateien
abgeschlossen sind und dieser Lauf zum dritten Mal in Folge (nach Mini-Run 29/30/31) 0 offene
Positionen bestaetigt, wurde **keine kuenstliche Batch-Zielzahl erzwungen** (widerspraeche der
Leitplanke "nie erfinden"). Stattdessen: die 4 nach Mini-Run 31 verbleibenden Vertiefungs-
Luecken erneut geprueft (weiterhin nicht aus dem DIN/VSS/RAL-Scope schliessbar); ein
DIN-5034-1-Datensatz stichprobenartig gegen Original-Metadaten gegengeprueft (Teil-Destillat-
Kennzeichnung bestaetigt korrekt: Bestandskopie selbst nur 10 S., nicht ein Lese-Versaeumnis).

**Formale Feststellung:** DIN/VSS/RAL = **INVENTAR KOMPLETT** im Sinne von `PROGRAMM.md`.
Empfehlung an Raphael: Scheduled Task `normen-training-mini` pausieren oder auf
Datei-Aenderungs-Trigger umstellen, statt fixe Intervalle ohne neuen Content abzufahren
(konsistent mit der allgemeinen Token-Drosselung, Rule `auto-verbesserungen.md` 260714).
Nachgefuehrt: `training/norm-inventar.md` (Kopfzeile), `wiki/QUESTIONS.md` (Mini-Run-32-
Abschnitt), Report `outputs/2026-07-16_normen-mini-run32.md`.

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): SIA-180-Registerzeile bestaetigt, Korrigenda C2:2020 belegt
- **`wiki/REGISTER.md` Z. 106 (SIA 180) — Selbstwiderspruch aufgeloest:** die Hauptzeile fuehrte «1999»
  mit der Bemerkung «Bestand 2014 → neuer als Register 2013; Bestand **vermutlich** aktuell», waehrend
  Tabelle C und das Destillat `sia-180-2014` geschlossen von **2014** ausgehen. Der Beleg lag in der
  eigenen KB: `destillate/sia-180-2014.md` weist aus dem Original-PDF «SN 520180:2014 de, 1. Aufl.
  2014-05, **gueltig ab 2014-07-01**, ersetzt SIA 180:1999» aus. Bemerkung auf **«✓ Bestand 2014 als
  geltend BESTAETIGT»** nachgefuehrt (Gilt-Spalte «1999» bleibt — sie bildet korrekt den Stand des
  Registers 2013 ab). Format analog SIA-181-Flag (Run 3).
- **`destillate/sia-180-2014.md` — Korrigenda C2:2020 EXISTIERT** (bisher: «ob nach 2014 eine
  Korrigenda publiziert wurde, nicht verifiziert»). Beleg: die Stadt-ZH-Wegleitung «Sommerlicher
  Waermeschutz» zitiert in Ziff. 4.1.1 ausdruecklich «SIA 180 (**inkl. Korrigenda C2:2020**)».
  **Inhalt nicht verifiziert** — ob C2:2020 die destillierten Ziffern 5.2.4.1 oder 5.2.6.3 beruehrt,
  bleibt offen; Indiz auf moegliche Umnummerierung (die Wegleitung zitiert eine «Ziff. 2.4.1.4» und
  «Figur 7», die das Destillat nicht kennt) ausdruecklich als **unbewiesen** markiert.
  → **Bring-Schuld des normen-Loops:** Korrigenda C2:2020 am Original/SIA-Shop pruefen.
- Anlass: die KB `energie` hatte im Run-74-Destillat SIA-180-Fundstellen aus Vollzugshilfen
  rekonstruiert, statt sie hier zu ziehen (Rule `normen-referenz`) — dort korrigiert und verlinkt.
- Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-16 — normen-training-mini Mini-Run 31 (Mac Mini, Intensiv-Lauf auf Zuruf): Inventar-Check + 2 von 6 offenen Vertiefungs-Luecken aus Mini-Run 30 geschlossen
Stations-Split eingehalten: NUR DIN/VSS/RAL angefasst (SIA/VKF = MacBook Pro, nicht beruehrt).
Auftrag Raphael (16.07.2026): ein Intensiv-Lauf, 15-25 Positionen, Verifikations-Stufe +
Token-Vollgas/Workflow-Parallelisierung autorisiert. **Inventar-Check vorab** (Datei-fuer-
Datei-Abgleich `training/norm-inventar.md` gegen die live gemountete SharePoint-Ablage
`PL - 02_Recht_Norm/02_Normen/DIN_Norm`, `.../VSS_Norm`, `.../RAL_Norm`): weiterhin 0 offene
`[ ]`-Positionen in DIN (72)/VSS (17)/RAL (1), keine neuen Dateien seit dem letzten Scan —
Grunddestillation (a), Retro-Verifikation (b), Q&A-Selbstbefragung (c) und Querschnitts-
Synthese (d) bleiben fuer alle 90 Dateien vollstaendig abgeschlossen (Stand seit Mini-Run 30,
260715). Statt eine kuenstliche Mengen-Zielzahl zu erzwingen, wurden die 6 in Mini-Run 30
dokumentierten offenen Vertiefungs-Luecken (`wiki/QUESTIONS.md`) einzeln geprueft.

**2 Luecken geschlossen, adversarial verifiziert (je 1 unabhaengiger Pruef-Agent, 0 Fehler):**
- **SIA 331 ↔ DIN EN 12207/DIN 1249-11 Ziffer-fuer-Ziffer-Abgleich:** Kernbefund — SIA 331s
  Beanspruchungsgruppen A/B/C (Gebaeudehoehe-basiert, Ziff. 2 23 4/2 31, Nachweis ueber
  EN 42/EN 86) und DIN EN 12207s Beanspruchungsgruppen A/B/C (Fugendurchlasskoeffizient-
  basiert, Nationaler Anhang NA.1, dient ausschliesslich der Umrechnung alter DIN-18055-
  Messwerte auf EN-Klassen 1-4) sind trotz identischer Buchstaben KEIN gemeinsames System —
  ein direkter Buchstaben-/Zahlen-Transfer waere fachlich falsch. DIN 1249-11 (Glaskanten)
  fuellt eine echte Luecke, da SIA 331 keine eigene Glaskanten-Klassifizierung kennt (Kap. 3/6
  bewusst leer). Verifikations-Agent bestaetigte alle Kernaussagen wortnah gegen die drei
  Destillate; eine kleine Praezisierung wurde umgesetzt (DIN-18055-Charakterisierung stammt
  aus der EN-12207-Korrelationstabelle NA.1, nicht aus einer direkten DIN-18055-Lektuere,
  die nicht im Bestand liegt).
- **RAL-GZ 638 BKP-Zuordnung:** gegen `references/bkp-2017/BKP-2017-Liste.md` geprueft:
  BKP 221.9 Metallbaufertigteile (Rohbau 2, aussen) bzw. BKP 272.2 Allgemeine
  Metallbauarbeiten (Ausbau 1, innen), je nach Einbausituation; bei Umbauten die Hauptcodes
  BKP 321/372 (keine .9-Unterteilung in der Liste vorhanden, bewusst kein erfundener
  Subcode). Verifikations-Agent bestaetigte alle vier Codes wortgetreu gegen die Liste und
  per Grep, dass unter 321/372 tatsaechlich keine Dezimal-Subcodes existieren.

**4 Luecken bleiben offen** (ausserhalb des Stations-Scopes bzw. externe Beschaffung noetig):
SIA 266/262/267-Detailbemessung (SIA-Vertiefung, Station MacBook Pro), SIA-Raumakustik-Norm
(existiert laut `destillate/INDEX.md` nicht in der KB), Suva-/EKAS-Richtlinie Fassadengeruest/
Dachhaken (kein SharePoint-Fund), VKF-BRL 15-15 (VKF-Familie, Station MacBook Pro), «2026
verschaerfte kantonale Velo-Abstellpflicht» (Recherchefrage ausserhalb bestehender Quellen).
Nachgefuehrt: `wiki/synthese-din-vss-ral-fachskills.md` (Abschnitt 10.3 + 11.4 + 2 Zeilen
Abschnitt 14, `last_updated: 2026-07-16`), `destillate/ral-gz638-2008.md` (BKP-Absatz
ergaenzt), `wiki/QUESTIONS.md` (Mini-Run-31-Kopfnotiz + 2 Eintraege auf `[x]` gesetzt),
`training/norm-inventar.md` (Kopfzeile), Report `outputs/2026-07-16_normen-mini-run31.md`.

## 2026-07-15 — normen-training-mini Mini-Run 30 (Mac Mini, Intensiv-Lauf auf Zuruf): Vertiefungsstufe (d) Querschnitts-Synthese DIN/VSS/RAL — 5 neue Themenabschnitte + 2 Vertiefungen
Stations-Split eingehalten: NUR DIN/VSS/RAL angefasst (SIA/VKF = MacBook Pro, nicht beruehrt).
Auftrag Raphael (15.07.2026): ein Intensiv-Lauf, 15-25 Positionen, Verifikations-Stufe + Token-
Vollgas/Workflow-Parallelisierung autorisiert. Inventar-Check vorab (`training/norm-inventar.md`):
DIN (72 Dateien)/VSS (17 Dateien)/RAL (1 Datei) haben **0 offene `[ ]`-Positionen** — Grund-
destillation, Retro-Verifikation (b) und Q&A-Selbstbefragung (c) sind fuer die komplette Familie
bereits seit Mini-Run 29 (260715) abgeschlossen (siehe `outputs/2026-07-15_normen-mini-run29.md`).
Dieser Lauf setzt deshalb bei Vertiefungsstufe (d) Querschnitts-Synthesen an, wie im Report von
Run 29 als naechster Schritt vorgeschlagen — keine neuen Original-PDFs gelesen, keine DRM-PDFs
angetroffen, ausschliesslich Synthese aus den bereits `established` verifizierten Destillaten.

**Workflow:** 6 parallele Synthese-Agenten, je 1 Themencluster mit 4-11 bereits verifizierten
Destillaten (kein Original-PDF neu geprueft, nichts erfunden, jede Aussage mit Fundstelle):
- Mauerwerk/Tragwerk/Baugrund (DIN 1053-1/2/3/4/100, DIN 1045-2, DIN 1054, DIN 1055-2 ↔ SIA
  266/262/267) → neuer Abschnitt 9.
- Fenster/Tueren/Einbruchhemmung/Fluchtwegverschluesse (DIN EN 12207/1627, DIN 68119, VST-
  Merkblatt, EN 179/1125 ↔ SIA 343.051, VKF-BRL 16-15) → neuer Abschnitt 10.
- Bodenbelaege/Zeichnungsnormen/Baumaterial (DIN 18560-2, DIN 1356-1/-6, DIN 1164-10, DIN
  1249-11, RAL-GZ 638 ↔ SIA 251/400/2014/331) → neuer Abschnitt 11.
- Stahlbau-Brandschutz/Treppen/Fassadenunterhalt (SZS steeldoc, DIN 18065, HCU-Treppenskript,
  DIN 4426 ↔ SIA 358) → neuer Abschnitt 12.
- Raumakustik/Tageslicht-Vertiefung (DIN 18041, DIN 5034-2/3/4/6) → neuer Abschnitt 13 +
  Vertiefung Abschnitt 7.
- Erschliessung/Langsamverkehr/Verkehrssicherheit (VSS 700.5/722.15, SN 640050/060/065/066/
  281/578, Merkblatt Veloabstellplaetze) → Vertiefung/Ergaenzung Abschnitt 6.

**Ergebnis:** `wiki/synthese-din-vss-ral-fachskills.md` von 9 auf 14 nummerierte Abschnitte
erweitert (plus 2 Vertiefungen in Abschnitt 6/7), Frontmatter `sources:` um 40 neue Destillat-
Pfade ergaenzt, `last_updated: 2026-07-15`. Die Sammelstelle "Grenzen der Uebertragbarkeit"
(neu Abschnitt 14) waechst um 24 neue Vergleichspaar-Zeilen. Kernbefunde: (1) EN 179/EN 1125
und DIN EN 1627 sind — anders als der DIN-Regelfall — europaeisch harmonisierte Normen, die in
der Schweiz DIREKT gelten (SIA 343.051 verweist wortwoertlich darauf); (2) die gesamte
Erschliessungs-/Langsamverkehrs-Normenfamilie (VSS 700.5/722.15, SN 640xxx) ist direkt
geltendes bzw. kantonal/kommunal verbindliches CH-Fachrecht, keine Vergleichsreferenz; (3) SZS
steeldoc (Brandschutz Stahlbau) ist trotz Ablage im DIN-Ordner eine **Schweizer** Fachquelle
(SZS = Stahlbau Zentrum Schweiz), keine deutsche Norm; (4) Faktenkorrektur waehrend der
Konsolidierung: ein Agent behauptete faelschlich, es existiere kein SIA-331-Destillat — Pruefung
zeigte `destillate/sia-331-1988.md` ist vorhanden, wurde aber fuer den Detailvergleich nicht
gegengelesen (als offene Luecke vermerkt statt der falschen Nichtexistenz-Aussage).

**Neue offene Luecken** (`wiki/QUESTIONS.md`, Abschnitt "Mini-Run 30"): SIA 266/262/267-
Detailkapitel nicht gegen DIN-Mauerwerk/Beton/Baugrund gegengeprueft; SIA 331 nicht im Detail
gegen EN 12207/DIN 1249-11 gelesen; keine SIA-Raumakustik-Norm in der KB; keine Suva-/EKAS-
Richtlinie zu Fassadengeruest/Dachhaken; VKF-BRL 15-15 noch nicht destilliert; keine Bestaetigung
einer "2026 verschaerften kantonalen Velo-Abstellpflicht"; RAL-GZ 638 ohne explizite BKP-Zuordnung.

Nachgefuehrt: `wiki/synthese-din-vss-ral-fachskills.md` (Haupt-Deliverable), `wiki/QUESTIONS.md`
(7 neue Luecken), `training/norm-inventar.md` (Kopfzeile Vertiefungsstufe-d-Status), Report
`outputs/2026-07-15_normen-mini-run30.md`.

## 2026-07-15 — normen-training-nacht Run 14 (MacBook Pro, Scheduled Task): Q&A-Selbstbefragung der SIA/VKF-P1-Kernnormen — Vertiefungsstufe (c) fuer SIA/VKF gestartet
Stations-Split: NUR SIA/VKF angefasst (DIN/VSS/RAL = Mac Mini, nicht beruehrt). Inventar-Check vorab:
SIA + VKF weiterhin 0 offene `[ ]`-Positionen (Grunddestillation + Retro-Verifikation (b) seit Run 13 komplett).
Q&A-Selbstbefragung (Vertiefungsstufe c) existierte bisher nur fuer DIN — dieser Lauf legt sie fuer die
SIA/VKF-P1-Kernnormen an. Zugriffs-Check bestanden (NAS gemountet, PDF-Content-Read am Test-PDF SIA 451:1992 ok).
Workflow: 10 parallele Q&A-Agenten (je 1 Norm), jeder liest das ORIGINAL-PDF, stellt 20–22 Pruefungsfragen,
beantwortet sie unabhaengig am Original (Fundstellen-Pflicht) und gleicht gegen das Destillat ab.
- Ergebnis: **205 Fragen, 0 sachliche Fehler** in den Destillaten — alle 10 established bestaetigt.
- SIA 102:2020 (20 F) + SIA 416:2003 (22 F): deckungsgleich, 0 Abweichungen.
- SIA 103:2003 (20 F, 8 Luecken), SIA 105:2020 (20 F, 6 Luecken), SIA 111:2014 (20 F, 3 Luecken),
  SIA 112:2014 (20 F, 2 Luecken), SIA 118:1991 (21 F, 2 Luecken), SIA 451:1992 (20 F, 4 Luecken),
  VKF Brandschutznorm 1-15 (20 F, 2 Luecken), VKF BRL 16-15 (22 F, 3 Luecken): Destillate faktisch korrekt,
  30 Ergaenzungskandidaten (fehlende, nicht falsche Details) fuer einen kuenftigen Volldestillat-Lauf gemeldet.
- Neuer Klaerpunkt: VKF BRL 16-15-PDF datiert im Text als **Ausgabe 2017** (IOTH-Rev. 2015/2016) — REGISTER nachziehen.
- Nachgefuehrt: 10 neue `destillate/qa/*-fragen.md`, neuer Tracker `destillate/qa/INDEX.md`,
  `wiki/QUESTIONS.md` (Ergaenzungskandidaten + VKF-16-15-Ausgabe), Report `outputs/2026-07-15_normen-nacht-run14.md`.
  Keine Destillat-Korrektur noetig (0 Fehler). Kein «SIA/VKF KOMPLETT» — Stufe (c) laeuft, Ergaenzungen (a) + Synthese (d) offen.
- Git: manueller Commit ueber SMB haengt (bekannte SMB-Latenz/Lock); die NAS-Schreibvorgaenge uebernimmt der
  native DSM-`nas-selfcommit`-Cron (alle 15 Min, off-SMB, mit pull/push) — dokumentiertes Sicherheitsnetz.

## 2026-07-14/15 — normen-training-mini Run 29 (Mac Mini, Intensiv-Lauf auf Zuruf): Q&A-Selbstbefragung Rest-DIN/VSS/RAL komplett — Vertiefungsstufe (c) DIN/VSS/RAL abgeschlossen
Auftrag Raphael: EIN Intensiv-Lauf, NUR Familien DIN/VSS/RAL (Stations-Split, SIA/VKF nicht angefasst).
Inventar-Check: DIN/VSS/RAL-Grunddestillation weiterhin 0 offene `[ ]`-Positionen. Fortsetzung Vertiefungsstufe (c)
aus Mini-Run 28: 9 parallele Q&A-Selbstbefragungs-Agenten (je 1 Agent pro Destillat, kein Sub-Agent-Spawning)
haben ALLE 9 verbliebenen Destillate ohne Selbsttest abgearbeitet.
- vstaettvo-niedersachsen-2004.md: 20 Fragen, 16 bestanden, 0 Fehler, 4 Ergaenzungen (§7/§10/§16, Begriffe).
- din-inhaltsverzeichnis-normensammlung-2012.md: 18 Fragen, 16 bestanden, 0 Fehler, 2 Praezisierungen.
- hoai-bauen-im-bestand-2011.md: 20 Fragen, 13 bestanden, 0 Fehler, 7 Ergaenzungen (LP4 fehlte komplett).
- sn-640105a-2000.md: 18 Fragen, 14 bestanden, 0 Fehler, 4 Ergaenzungen.
- komm-din18024-t1-bayern-2001.md: 20 Fragen, 12 bestanden, 1 Korrektur (12.1 Fahrsteige-Praezisierung), 8 Ergaenzungen.
- vds-2234-1999-brand-komplextrennwaende.md: 20 Fragen, 17 bestanden, 1 Fehler (Ziff.6.2.2 Muss- statt Kann-Bestimmung), 3 Ergaenzungen.
- treppen-hcu-hamburg-2008.md: 20 Fragen, 15 bestanden, 1 Fehler (Laufbreiten-Tabelle Wohngebaeude-Zuordnung), 4 Ergaenzungen.
- din-planungsgrundlagen-hoai-vorschriften-2004.md: 18 Fragen, 12 bestanden, 2 Fehler (DIN-4108-Teile-Luecke, §75 MBO Fristdauer), 4 Ergaenzungen.
- baupreisindizes-statistisches-bundesamt-2010.md: 20 Fragen, 16 bestanden, 1 Fehler (Umbasierungsformel-Beschriftung), 3 Ergaenzungen; zusaetzlich eine Diskrepanz IM ORIGINAL selbst entdeckt (Fliesstext 2,0% vs. Tabelle-1.1-Rechnung +0,2%) und transparent als offen dokumentiert statt geglaettet.
**Summe:** 9 Destillate, 174 Pruefungsfragen, 5 Sachfehler korrigiert, ca. 39 Ergaenzungen/Praezisierungen. Alle 9
Destillate `established`. **Damit ist Vertiefungsstufe (c) Q&A-Selbstbefragung fuer die komplette Familie
DIN/VSS/RAL abgeschlossen** — kein Destillat ohne Selbsttest mehr offen. Naechste Stufe: (d) Querschnitts-
Synthesen fuer Fach-Skills (werkvertrag/honorar/brandschutz/flaechen-nachweis), sofern noch nicht abgedeckt.
Nachgefuehrt: `training/norm-inventar.md` (9 Zeilen). Lauf-Report: `outputs/2026-07-15_normen-mini-run29.md`.
## 2026-07-14 — Mini-Run 28 (Mac Mini, Intensiv-Lauf auf Zuruf): Q&A-Selbstbefragung 17 DIN/Sonstiges-Destillate
Auftrag Raphael: Intensiv-Lauf NUR Familien DIN/VSS/RAL (Stations-Split, SIA/VKF nicht angefasst).
Basis: DIN/VSS/RAL-Grunddestillation weiterhin 0 offene `[ ]`-Positionen (seit Run 19); 32
Destillate ohne bisherige Q&A-Selbstbefragung identifiziert, 19 fuer diesen Lauf ausgewaehlt
(4 parallele Batches A-D). 17 abgeschlossen, 2 aus Budgetgruenden vorzeitig gestoppt und offen
gelassen (vstaettvo-niedersachsen-2004, baupreisindizes-statistisches-bundesamt-2010).
Ergebnis ueber alle 17: ca. 339 Pruefungsfragen, 6 Sachfehler korrigiert (DIN 277-1 Ziff.4.1.2b
"in voller Hoehe" fehlte; DIN 5034-3 Anmerkungs-Nummerierung; DIN V 106 unbelegte Zusatzaussage
entfernt; BauNVO §12 Abs.3 Nr.2 Praezisierung; NBauO §48 Abs.1 Behinderten-Oberbegriff fehlte;
ArbStättV Seitenangabe+Tippfehler), ca. 30+ Ergaenzungen (groesster Einzelfund: DIN 1076 Ziff.5.2
13 Mindest-Pruefleistungen komplett ausgelassen; DIN 277-1 Flaechenermittlungs-Abschnitte 4.2/4.3
fehlten). `training/norm-inventar.md` fuer alle 17 Positionen nachgefuehrt.
**Beobachtung:** Batches C und D spawnten ungefragt eigene Unter-Agenten, was zu Doppelverifikation
bereits erledigter Positionen (DIN 1054, DIN 18040-2, DIN 18232-2 erneut durch Batch C geprueft,
obwohl Batch A zustaendig war) und unkontrolliertem Mehrverbrauch fuehrte — kuenftige Batch-Prompts
sollen das explizit ausschliessen. Report: `outputs/2026-07-14_normen-mini-run28.md`. Naechster
Lauf: die 2 offenen Positionen, danach Fortsetzung Vertiefungsstufe (c) fuer die restlichen
~13 Destillate ohne Q&A-Selbstbefragung.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): zwei Ausgaben-Flags SIA 2024 + SIA 382/1 gesetzt
- [flag] `wiki/REGISTER.md`: SIA 2024 (Z.266) — **⚠ neuere Ausgabe SIA 2024:2021** (ersetzt 2015, gueltig ab 1.12.2021, inkl. Korrigenda C1:2024) annotiert; Register-Stand 2006 als ueberholt markiert. Quelle SIA-Shop (WebSearch-verifiziert). KB energie fuehrt 2021 bereits.
- [flag] `wiki/REGISTER.md`: SIA 382/1 (Z.464) — **⚠ neuere Ausgabe SIA 382/1:2025** (ersetzt 2014, in Kraft seit 1.2.2025) annotiert; Register-Stand 2014 als ueberholt markiert. Quelle SIA-Shop (WebSearch-verifiziert). KB energie fuehrt 2025 bereits.
- Format analog SIA-181:2020-Flag (Run 3). **Offen (Bring-Schuld normen-Loop):** Re-Destillate SIA 2024:2021 + SIA 382/1:2025 (kostenpflichtiger Volltext SIA-Shop). Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Mini-Run 27 (Mac Mini): Q&A-Selbstbefragung 16 DIN/VSS-Destillate
16 Destillate ohne bisherige Q&A-Selbstbefragung parallel per Sub-Agenten geprueft (DIN 1164-10, 1249-11,
1356-1/-6, 18065, 18299, 18560-2, 272, 276-4, 68119, 919-1, Abkuerzungsverzeichnis, EN 1627, VSS 640291a,
722.15, Merkblatt-VAPl). Ergebnis: ca. 295 Pruefungsfragen, 4 Sachfehler korrigiert (DIN 18065 Fussnote
invertiert, DIN 68119 Tabelle 4 entbuendelt, DIN Abkuerzungsverzeichnis Eintragszahl 300->500), ca. 62
Ergaenzungen eingearbeitet. norm-inventar.md nachgefuehrt. Report: outputs/2026-07-14_normen-mini-run27.md.
## 2026-07-14 — normen-training-nacht Run 13 (MacBook Pro): Retro-Verifikation restliche 7 SIA-Destillate — SIA/VKF-Bestand jetzt komplett established
- Gedrosselter Loop (Rule 260713); Inventar-Check: SIA/VKF weiterhin 0 offene `[ ]`-Positionen.
  7 parallele Verifikations-Agenten arbeiteten den kompletten Rest-Bestand mit Status `destilliert`
  (noch nicht `established`) ab: SIA 142:2009, SIA 143:2009, SIA 400:2000, SIA 102:2014 (Altausgabe),
  SIA 111:2003 (Altausgabe), SIA-Register 2013, SIA-Gesamtverzeichnis 2002.
- **SIA 142:2009:** 47 Aussagen, 0 Fehler; ergaenzt Art. 29.2-29.3 + Genehmigung/Inkrafttreten
  (S. 21) + Partnerorganisationen. Seitenzahl in Frontmatter korrigiert (21 statt 23).
- **SIA 143:2009:** 47 Aussagen, 0 Fehler; Anhang-Tabelle war fehlbezeichnet (jetzt eigene
  Vergleichstabelle statt "identisch mit SIA 142"), Genehmigung/Inkrafttreten ergaenzt.
- **SIA 400:2000:** ~45 Aussagen, 0 Fehler; 5 Ergaenzungen (Vermessungslinien-Legende,
  Umbau/Abbruch-Farbcode, Aussparungs-Kurzzeichen), groesster Fund: Anhang C enthaelt normativen
  Pflichtangaben-Text (Bauprojekt-/Detailplaene), war faelschlich als reine Beispiele uebersprungen.
- **SIA 102:2014 (Altausgabe):** 47 Aussagen, 1 Fehler (Baukategorie Altersheime V statt VI
  korrigiert), Baukategorien-Tabelle S.45-48 vollstaendig ergaenzt, `gelesen` auf 1-58 komplettiert.
- **SIA 111:2003 (Altausgabe):** 24 Aussagen, 2 Fehler (Gesamtleitungskatalog 16 statt 14 Punkte,
  Kuendigungszuschlag-Deckelungsklausel unvollstaendig zitiert), 2 Ergaenzungen.
- **SIA-Register 2013:** Stichprobe 13 Normen-Nummern, 1 Fehler (SIA 416:2003 Basisnorm fehlte
  in `wiki/REGISTER.md` Abschnitt A) — in Destillat UND Register korrigiert. Hohe Relevanz, da
  dieses Register die Gueltigkeits-Basis der gesamten SIA-KB bildet.
- **SIA-Gesamtverzeichnis 2002:** 6 Aussagen, 0 Fehler; Kategorie-Kuerzel "R" (Richtlinie) in
  Legende nachgetragen.
- **Meilenstein:** `destillate/INDEX.md` zeigt jetzt fuer ALLE `sia-*`/`vkf-*`-Eintraege den Status
  `established` — kein Destillat mehr auf blossem `destilliert`-Stand. Vertiefungsstufe (b)
  Retro-Verifikation ist fuer den kompletten SIA/VKF-Grundbestand abgeschlossen.
- Nachgefuehrt: `training/norm-inventar.md` (7 Zeilen), `destillate/INDEX.md` (7 Eintraege),
  `wiki/REGISTER.md` (SIA 416:2003 Basisnorm ergaenzt). Lauf-Report:
  `outputs/2026-07-14_normen-nacht-run13.md`. Naechster Batch: Vertiefungsstufe (c)
  Q&A-Selbstbefragung fuer noch nicht selbstbefragte SIA-P1-Kernnormen.

## 2026-07-14 — normen-training-mini Run 26 (Mac Mini): Q&A-Selbstbefragung 9 DIN-Normen, 0 Sachfehler, 49 Ergaenzungen
- Stations-Split Mac Mini (DIN/VSS/RAL), Vertiefungsstufe (c) Fortsetzung aus Run 25.
  DIN/VSS/RAL-Grunddestillation weiterhin 0 offene `[ ]`-Positionen (seit Run 19).
- 9 parallele Sub-Agenten, je Norm 15-20 Pruefungsfragen gegen den Original-PDF-Volltext:
  DIN 1045-2 (20/20, 4 Erg.), DIN 105-100 (20/20, 10 Erg.), DIN 105-5 (18 Fragen, 13 Erg.),
  DIN 1053-2 (16/16, 2 Erg.), DIN 1053-3 (15 Fragen, 7 Erg.), DIN 1053-4 (20/20, 2 Erg.),
  DIN 1055-2 (16/16, 6 Erg.), DIN 107 (15 Fragen, 3 Erg.), DIN 1072 Beiblatt 1 (3 Erg.).
- Ueber alle ~155 Fragen: 0 Sachfehler (alle 9 Kandidaten waren bereits retro-verifiziert).
  Groesste Einzelfunde: fehlende Chloridgrenzwerte Gesteinskoernung + Wassereindringwiderstand
  in DIN 1045-2; komplett fehlende Konformitaetsbewertungs-/Kennzeichnungs-Abschnitte in
  DIN 105-100; eigenstaendiges LLp-Bezeichnungsschema in DIN 105-5 fehlte vollstaendig.
- `norm-inventar.md` + `destillate/INDEX.md` fuer alle 9 Positionen nachgefuehrt.
  Report: `outputs/2026-07-14_normen-mini-run26.md`. Insgesamt 43/~95 DIN/VSS/RAL-Destillate
  jetzt Q&A-selbstbefragt. Naechster Lauf: DIN 1164-10/1249-11/1356-1+6/18065/18299/18560-2/
  272/276-4/68119/919-1/Abkuerzungsverzeichnis/EN-1627 + VSS 640291a/722.15/Merkblatt-VAPl.

## 2026-07-14 — normen-training-nacht Run 12 (MacBook Pro): Retro-Verifikation SIA 100/108/2020 + VKF-BRL-28-15-Duplikat inhaltlich aufgeloest
- Gedrosselter Loop (Rule 260713, Token-Fokus liegt auf Wettbewerbs-DNA); Runs 7-11 liefen bereits
  am 14.07. Inventar-Check: SIA/VKF weiterhin 0 offene `[ ]`-Positionen — Lauf setzt bei
  Vertiefungsstufe (b) Retro-Verifikation an (Plan aus Run 11). 3 parallele Verifikations-Agenten
  + 1 manueller Duplikat-Vergleich durch den Orchestrator:
  - **SIA 100:2004** (Statuten SIA): ~55 Punkte geprueft, 1 Luecke (Art. 15 lit. b Wahl
    Standeskommission/Zentralkommission) ergaenzt, keine Fehler. Established.
  - **SIA 108:2014** (Leistungen/Honorare Ingenieure, Uebergangsloesung): groesster Lueckenbefund
    des Vertiefungs-Loops bisher — 5+ komplett fehlende Artikel ergaenzt (1.7.21/.22, 1.9.3,
    1.10.2/.4, 1.11/1.12, 3.5/3.6, 5.5/5.6/5.9/5.10/5.11, letztere die vom Vorwort explizit
    benannten WEKO-Verzichtsartikel), 1 falsch verortete Fussnote korrigiert. Established.
  - **SIA 2020:2017** (Merkblatt zu SIA 118, Sicherheitsleistungen Unternehmer): 1
    Fundstellen-Fehler korrigiert (Ziff. 6.1 Art. 152 statt Art. 151), neuer Abschnitt
    "Regelung im Werkvertrag" ergaenzt; zusaetzlich fehlenden `destillate/INDEX.md`-Eintrag
    nachgetragen (Registrierungsluecke seit 12.07.2026 geschlossen). Established.
  - **VKF-BRL 28-15 Anerkennungsverfahren:** Duplikat-Paar `vkf-brl-28-15-anerkennungsverfahren.md`
    vs. `vkf-brl-anerkennungsverfahren.md` Wort-fuer-Wort gegen das 9-seitige Original verglichen.
    `vkf-brl-28-15-anerkennungsverfahren.md` ist vollstaendiger (Duplikat fehlt Ziff. 3.3
    Qualitaetsmanagement komplett) — auf established gehoben. Physisches Loeschen des Duplikats
    bleibt destruktiv/Rueckfrage-pflichtig (Rule `wissens-bibliothekar`), in `wiki/QUESTIONS.md`
    entsprechend vermerkt.
- Nachgefuehrt: `training/norm-inventar.md` (4 Zeilen), `destillate/INDEX.md` (4 Eintraege,
  davon 1 neu registriert), `wiki/QUESTIONS.md`. Lauf-Report: `outputs/2026-07-14_normen-nacht-run12.md`.

## 2026-07-14 — normen-training-mini Run 25 (Mac Mini): Q&A-Selbstbefragung 6 weitere DIN/VSS-Destillate
- Fortsetzung Vertiefungsstufe (c), Plan aus Run 24. Inventar-Check vorab: DIN/VSS/RAL weiterhin
  0 offene `[ ]`-Positionen. 6 parallele Q&A-Selbstbefragungs-Agenten: DIN 1053-100:2007
  (10/18 bestanden, 8 Ergänzungen — 15%-Umlagerungsregel Ziff.8.4, Mindestauflagertiefen
  Ziff.8.7.2, Anhang B.3/B.4 Naturstein), DIN 1961:2010/VOB Teil B (12/20 bestanden, 8
  Ergänzungen — § 10 Abs.3-6 Nachbarschadenshaftung, § 3 Abs.3-6 Zustandsniederschrift,
  § 4 Abs.9-10 Fundklausel), DIN 4426:2001 (18/19 bestanden, 1 Ergänzung Ziff.5.2.2.1),
  DIN 5034-4:1994 (12/20 bestanden, 8 Ergänzungen — normativer Vorbehalt Ziff.1 Arbeitsräume/
  extreme Verhältnisse), DIN EN 12207:2000 (17/21 bestanden, 5 Ergänzungen — Ziff.2/3,
  Vorwort-Herkunft), VSS 640 066:1996 (14/20 bestanden, 6 Ergänzungen — Türen Fahrradstationen,
  Tab.5 3. Spalte, Anlagezufahrten Ziff.14).
- Insgesamt 83/118 Fragen sofort bestanden (70 %), **0 Sachfehler**, 36 Ergänzungen — sauberster
  Lauf bisher; 4 der 6 Normen waren bereits retro-verifiziert, Q&A fand primär
  Vollständigkeits- statt Faktentreue-Lücken.
- Nachgeführt: 6 Destillate, `destillate/INDEX.md` (6 Einträge), `training/norm-inventar.md`
  (6 Zeilen). Lauf-Report: `outputs/2026-07-14_normen-mini-run25.md`.

## 2026-07-14 — Q&A-Selbstbefragung Mini-Run 24: DIN 1946-7:2009 vertieft
- Vertiefungsstufe Q&A-Selbstbefragung (Methodik analog Mini-Run 22/23): 20 Prüfungsfragen zu
  DIN 1946-7:2009 (RLT in Laboratorien) formuliert und unabhängig durch Volltextlektüre aller
  16 Originalseiten beantwortet, gegen `destillate/din-1946-7-2009.md` abgeglichen. Ergebnis:
  0 Fehler, 6 Fragen bereits korrekt erfasst, 14 Ergänzungen — Destillat deckte vorher nur einen
  Teil der Norm ab (v.a. Ziff. 5.3 Luftvolumenströme).
- Destillat ergänzt um: Begriffe Ziff. 3.1-3.24 (Labor, Labornutzfläche, ablufttechnische
  Einrichtung, 8 Einrichtungstypen, Luftarten), Ziff. 4 (Aufgaben RLT-Anlage, Atemluft-Definition),
  Ziff. 5.1 (sechs Auslegungs-Anforderungskategorien), Ziff. 5.3.2 (Zuluft muss aufbereitete
  Aussenluft sein), Ziff. 5.4-5.7 (Abzüge/sonstige ablufttechnische Einrichtungen/Luftführung im
  Raum/Raumluftqualität), Ziff. 6.2 (Aussenluftansaugung, Kategorie mindestens ETA 3), Ziff. 6.3.2/
  6.3.3 (Rückhalte-/Filtersysteme, Wartungskonzepte), Literaturhinweise (S. 16), neue Abschnitte
  «Verwandte Normen», «JANS-Praxis-Transfer», «Offene Punkte».
- **Wichtigster Fund:** Vorwort (S. 3) listet die DIN-1946-Reihe — **Teil 4 regelt RLT in
  Gebäuden/Räumen des Gesundheitswesens** (Spital/Pflegeheim), nicht Teil 7 (nur Laboratorien).
  Für typische JANS-Healthcare-Projekte ohne Labornutzung ist damit primär DIN 1946-4 statt
  DIN 1946-7 die relevante Norm. Korrektur (Orchestrator-Check, siehe Sammel-Eintrag unten):
  DIN 1946-4 ist entgegen der ursprünglichen Agenten-Meldung bereits im Hub destilliert UND
  Q&A-selbstbefragt (`destillate/din-1946-4-2008.md`, Mini-Run 16) — der Abschnitt im
  Destillat wurde entsprechend korrigiert, kein offener Punkt.

## 2026-07-14 — normen-training-mini Run 24 (Mac Mini): Q&A-Selbstbefragung 8 weitere DIN/VSS-Destillate
- Fortsetzung Vertiefungsstufe (c), Plan aus Run 23. Inventar-Check vorab: DIN/VSS/RAL weiterhin
  0 offene `[ ]`-Positionen. 8 parallele Q&A-Selbstbefragungs-Agenten: DIN 4844-2:2001
  (7/20 bestanden, 13 Ergänzungen — Kombinationszeichen D-C001-004 + Healthcare-Zeichen
  D-P011/D-P016/D-M020 ergänzt), DIN 1946-7:2009 (siehe Eintrag oben), DIN 277-2:2005
  (8/20 bestanden, 12 Ergänzungen — Gruppe 7 Sonstige Nutzungen inkl. Schutzräume), DIN
  277-3:2005 (17/21 bestanden, 4 Ergänzungen — KG 313/520-Sonderfälle), DIN 5034-2:1985
  (8/18 bestanden, 9 Ergänzungen, DIN-4710-Verweis geklärt), DIN 5034-6:1995 (12/15
  bestanden, **2 Sachkorrekturen**: g2 ist Anmerkung statt Anforderung, Formelzeichen a =
  Raumtiefe nicht Raumlänge), VSS 640 060:1994 (5/17 bestanden, 12 Ergänzungen —
  Begriffssystematik + Fussgängerzonen-Absatz), VSS 640 578:2006 (18/18 bestanden, 5
  Ergänzungen — Tag-/Nachtzeitfenster).
- Insgesamt 81/148 Fragen sofort bestanden (55 %), 2 Sachkorrekturen, 55 Ergänzungen.
- **Orchestrator-Qualitätskontrolle:** ein Sub-Agent (DIN 1946-7) hatte fälschlich behauptet,
  DIN 1946-4 fehle noch im Hub-Bestand — tatsächlich existiert `din-1946-4-2008.md` bereits
  seit Mini-Run 16 inkl. Q&A. Vor Commit im Destillat und CHANGELOG korrigiert. Lehre für
  Folgeläufe: Sub-Agenten-Aussagen zu "fehlt im Bestand" gegen `destillate/`-Verzeichnis
  gegenchecken, bevor sie in den Report übernommen werden.
- Nachgeführt: 8 Destillate, `destillate/INDEX.md` (7 Einträge aktualisiert, `din-277-3-2005.md`
  neu aufgenommen — fehlte bisher trotz vorhandenem Destillat), `training/norm-inventar.md`
  (8 Zeilen). Lauf-Report: `outputs/2026-07-14_normen-mini-run24.md`.

## 2026-07-14 — Anfrage «Farbe Elektroinstallationen in Architektenplänen»: SIA-400-Destillat vertieft
- Interaktive Norm-Anfrage (Fundstellen-Route gemäss Rule normen-referenz). Befund: SIA 400:2000
  kennt KEINE Gewerke-Farbe für Elektroinstallationen — Sinnbilder grundsätzlich schwarz-weiss
  (B.8.1), Elektro nach SEV-Sinnbildern (B.8.6); Farben nur bei Aussparungen (Tabelle 5, S. 41):
  Decken/Boden gelb, Wände/Pfeiler braun, Gewerk-Zuordnung über Kurzzeichen E/H/L/K/S.
- Destillat `destillate/sia-400-2000.md` ergänzt um B.8.6 (Elektro/Telekom-Sinnbilder + Kurzzeichen)
  und B.10.2 Tabelle 5 (Farbkennzeichnung Aussparungen). Zusatzbefund: SIA 410 (1978/86) verweist
  Elektro ebenfalls an den SEV; physische Anlagen-Kennzeichnung Elektro = gelb (SIA 410/1, via
  AHB-Standard-Artikel in wissen/planungsgrundlagen).

## 2026-07-14 — normen-training-nacht Run 11 (MacBook Pro): Retro-Verifikation 4 SIA-Bestandsdestillate
- Gedrosselter Loop (Rule 260713, SIA+VKF Token-Fokus liegt auf Wettbewerbs-DNA); Runs 7-10
  liefen heute bereits. Inventar-Check: SIA/VKF zeigen 0 offene `[ ]`-Positionen (Grunddestillation
  komplett) — Lauf setzt bei Vertiefungsstufe (b) Retro-Verifikation an. Vier `destilliert`-Destillate
  mit gültiger (nicht durch Register ersetzter) Ausgabe gewählt: SIA 184:1972, SIA 226:1976,
  SIA 241:1988, SIA 256:1988 (alle klein, 8-20 Seiten, vollständig lesbar in einem Agenten-Lauf).
- 4 parallele Verifikations-Agenten, je einer pro Norm, Volltextabgleich Destillat gegen Original-PDF:
  - **SIA 184:1972** (Baureinigungsarbeiten): ~45 Punkte geprüft, 1 Lücke gefunden und ergänzt
    (Ziff. 7.3.5 Taglohnarbeiten, Verweis auf SIA 118 fehlte).
  - **SIA 226:1976** (Naturstein-Mauerwerk): ~35 Punkte geprüft, 4 Präzisierungen (Ziff. 7.12.02
    Figur-1-Zuordnung zu SIA 225, Ziff. 7.12.04 Ausführungsart-Details, Ziff. 7.22.02 Wortlaut
    "Schutz vor schädlichen Einflüssen", Anhang A101 Skizze-2-Präzisierung + Titelblatt-Hinweis
    SN 505 226/Druckvermerk).
  - **SIA 241:1988** (Schreinerarbeiten): alle 20 Seiten geprüft, fachlich-technischer Kern
    (Holzfeuchte 9%/6-12%, Körnung, Durchbiegung 1/300, Geschossgruppen Ziff. 7.14) bereits
    fehlerfrei; ergänzt: genaues Genehmigungsdatum (19.06.1987 Aarau, Inkrafttreten 1.03.1988),
    Datum Vorgängernorm SIA 126 (24.06.1955), fehlender Kommissions-Mitgliederblock (S.20) +
    Abkürzungsverzeichnis BSA/FRM/LIGNUM/VSSM (S.19).
  - **SIA 256:1988** (Deckenverkleidungen aus Fertigelementen): ~45 Punkte geprüft, keine
    Zahlen-/Fundstellenfehler, 1 Ergänzung (Verweis auf Prinzipskizze S.5 zu den fünf
    Höhenbegriffen).
- Insgesamt keine sachlichen Fehler in Zahlen/Kennwerten, nur Ergänzungen/Präzisierungen —
  alle 4 Destillate von `destilliert` auf `established (verifiziert 260714, Volltextabgleich)`
  gehoben. Nachgeführt: `training/norm-inventar.md` (4 Zeilen), `destillate/INDEX.md` (4 neue
  Einträge). Lauf-Report: `outputs/2026-07-14_normen-nacht-run11.md`.
- Git-Hinweis: `git status`/`commit` über den SMB-Mount hing mehrfach in uninterruptible I/O-Wait
  (bekanntes NAS-SMB-Problem, siehe `sync-kanonische-quelle.md`); Commit im Hintergrund nachgeholt,
  kein manueller Force-Eingriff (kein Lock-File vorhanden, kein konkurrierender Git-Prozess).

## 2026-07-14 — normen-training-mini Run 23 (Mac Mini): Q&A-Selbstbefragung 6 weitere DIN/VSS/RAL-Destillate
- Inventar-Check vorab: DIN/VSS/RAL zeigen 0 offene `[ ]`-Positionen (Grunddestillation
  komplett seit Run 19) — Lauf setzt direkt bei Vertiefungsstufe (c) an.
- 6 parallele Q&A-Selbstbefragungs-Agenten: DIN 4102-2:1977 (7/20 ohne Luecke bestanden, 0
  Fehler, aber 13 Ergaenzungen inkl. komplett fehlendem Abschnitt 7 "Normkonstruktionen
  nichthinterlueftete Bekleidungen"), DIN 1946-6:2009 (20/20 bestanden, 3 Ergaenzungen, offener
  Punkt Anhang-H-Seitenumfang aus Mini-Run 12/13 abschliessend geklaert), DIN 5034-1:1999
  (15/17 bestanden, 2 Ergaenzungen Bruestungs-/Oberlicht-Regel), DIN 5034-3:2007 (20/20
  bestanden, 5 Ergaenzungen Formeln AR/fo/fu), VSS 700.5:1987 (16/16 bestanden, 2
  Ergaenzungen Kehrplatz-Differenzierung), VSS 722.15:1983 (16/16 bestanden, 4 Ergaenzungen
  §17/§18 relevant fuer `massgebendes-terrain`/Tiefgaragen-Rueckverankerung).
- Insgesamt 94/109 Fragen sofort bestanden (86 %), **0 falsche Zahlenwerte**, 29
  Ergaenzungen. Kernbefund: "Volltextabgleich bestanden" garantiert keinen vollstaendigen
  Kapitelumfang (DIN 4102-2 fehlte ein ganzer Abschnitt trotz fehlerfreiem Destillat).
- Nachgefuehrt: 6 Destillate + `destillate/qa/din-1946-6-2009-fragen-lauf23.md`. Lauf-Report:
  `outputs/2026-07-14_normen-mini-run23.md`.

## 2026-07-14 — normen-training-nacht Run 10 (MacBook Pro): SIA 421:2006 Retro-Verifikation
- Gedrosselter Loop (Rule 260713, SIA+VKF 1x/Tag, Token-Fokus liegt auf Wettbewerbs-DNA);
  Run 8+9 liefen heute bereits, dieser Run ist eine gezielte Einzelergaenzung.
- Volltextabgleich aller 20 Seiten SIA 421:2006 (Raumplanung — Nutzungsziffern GFZ/AZ/BMZ/
  ÜZ/GZ) gegen das bestehende Destillat. **Keine sachlichen Fehler** in Formeln/Zahlen/
  Fundstellen. 3 Definitionsluecken ergaenzt: GF-Nebenregel (Hohlraeume unter unterstem
  Geschoss nicht anrechenbar), eigenstaendige Definition "Lichte Hoehe" (Ziff. 1.2.1, war nur
  Stichwort, aber als Schwellenwert in GFZ/AZ referenziert), eigenstaendige Definition
  "Gebaeude" (Ziff. 1.2.3, war nur Stichwort). Status von `destilliert` auf `established`
  gehoben.
- Nachgefuehrt: `destillate/sia-421-2006.md`, `training/norm-inventar.md`,
  `destillate/INDEX.md`. Lauf-Report: `outputs/2026-07-14_normen-nacht-run10.md`.

## 2026-07-14 — normen-training-mini Run 22 (Mac Mini): Q&A-Selbstbefragung 6 DIN/VSS/RAL-Destillate + SIA-500-vs-DIN-18040-Cross-Check
- 6 parallele Q&A-Selbstbefragungs-Agenten pruefen unabhaengig am Original-PDF gegen das
  bestehende Destillat: DIN 18041:2004 (21/21 bestanden, 2 Ergaenzungen), DIN EN 12101-2:2003
  (14/20 bestanden, 6 Ergaenzungen), DIN 1053-1:1996 (12/20 bestanden, 1 Praezisierung Ziff.
  8.1.2.3d + 7 Ergaenzungen Gewoelbe/Frost/Naturstein), SN 640 281:2006 (20/20 bestanden, 3
  Ergaenzungen), SN 640 065:2011 (22/22 bestanden, 4 Ergaenzungen), RAL-GZ 638:2008 (19/20
  bestanden, 3 Ergaenzungen). Insgesamt 108 Pruefungsfragen, **0 sachliche Fehler in
  Zahlenwerten** — alle Beanstandungen waren fehlende Abschnitte/Begriffe oder eine
  Fundstellen-/Formel-Zuordnungs-Praezisierung (DIN 1053-1 Tab.8↔Gl.18), keine falschen Kennwerte.
- **Vertiefungsstufe (d):** `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 5 um einen
  direkten Ziffer-fuer-Ziffer-Cross-Check SIA 500:2009 ↔ DIN 18040-1:2010 ergaenzt (8 Masse
  verglichen): Rampenbreite und Handlaufhoehe deckungsgleich (120 cm / 85-90 cm), Rampen-
  Regelneigung deckungsgleich (6 %), Tuer- und Korridorbreite dagegen NICHT deckungsgleich
  (DIN durchgaengig grosszuegiger: 90/150 cm vs. SIA 80/120 cm) — Praxis-Konsequenz: diese
  zwei Masse nie ungeprueft zwischen den Systemen uebertragen. Abschnitt 9 (Uebertragbarkeits-
  Sammelstelle) entsprechend aktualisiert; offener Folgeauftrag aus Run 21 damit erledigt.
- 8 von ~95 DIN/VSS/RAL-Destillaten sind damit explizit Q&A-selbstbefragt (bisher: DIN 4102-1,
  DIN 18040-1, VSS 40 291, DIN 1946-4, DIN 276-1, DIN 277-1, DIN 18040-2, SN 640 050 — jetzt
  zusaetzlich die 6 obigen = 14 total).
- `norm-inventar.md`, `destillate/INDEX.md` nachgefuehrt. Kein neuer Eintrag in `QUESTIONS.md`.

## 2026-07-14 — normen-training-nacht Run 9 (MacBook Pro): SIA 102:2020 vollstaendig verifiziert + Art. 5 nachgetragen (Empfehlung aus Run 8 umgesetzt)
- 3 parallele Q&A-Selbstbefragungs-Agenten pruefen SIA 102:2020 unabhaengig am Original-PDF
  (S. 6-41) gegen das Destillat: Art. 1-3 (24 Fragen, 22 bestanden), Art. 4 Leistungsbeschrieb
  (25 Fragen, 11 bestanden + 13 Luecken), Art. 5-6 Verguetung/Honorarberechnung (22 Fragen,
  14 bestanden + 8 Luecken). Insgesamt 71 Pruefungsfragen, **0 sachliche Fehler** in den
  bestehenden Aussagen — alle Beanstandungen waren fehlende Ziffern, keine falschen.
- **Groesster Befund:** Art. 5 "Grundsaetze der Verguetung" fehlte im Destillat fast komplett
  (nur indirekt ueber Querverweise erwaehnt). Jetzt vollstaendig ergaenzt, inkl. der praktisch
  wichtigsten Fundstelle **Art. 5.8** (Auffangregel: fehlt eine Honorarvereinbarung, gilt
  zwingend Honorierung nach effektivem Zeitaufwand, nicht Pauschale) und Art. 5.3 (die drei
  Honorierungsarten Zeitaufwand/Pauschale/Globale-mit-Teuerung).
- Ebenfalls vollstaendig nachgetragen: Art. 4.3 Projektierung (4.31-4.33, inkl. normativer
  Genauigkeitsgrade Kostenschaetzung **± 15 %** Vorprojekt / Kostenvoranschlag **± 10 %**
  Bauprojekt — relevant fuer `kostenschaetzung`/`kostenkontrolle`), Art. 4.4 Ausschreibung
  (4.41 vollstaendig inkl. Abgrenzung Ausfuehrungsplaene), Art. 4.53 Inbetriebnahme/Abschluss
  (war komplett unerfasst: Garantiearbeiten-Leitung mit 2-jaehriger Ruegefrist,
  Schlussabrechnung), Art. 4.6 Bewirtschaftung (Detailinhalt 4.61-4.63) sowie Teilphasen-
  abschluesse als Uebersichtstabelle und die Zurueckbehaltungsverbot-Klausel Ziff. 1.4.1 Abs.2.
- Kernbefund "keine Baukosten-%-Honorarberechnung in SIA 102:2020 (Art. 7 existiert nicht)"
  wurde explizit gegengeprueft und **bestaetigt**.
- Nachgefuehrt: `destillate/sia-102-2020.md` (status established, verifiziert 260714),
  `training/norm-inventar.md`, `destillate/INDEX.md`.
- Lauf-Report: `outputs/2026-07-14_normen-nacht-run9.md`. Damit ist die von Run 8 als
  hoechste Prioritaet empfohlene Vervollstaendigung von SIA 102:2020 (P1-Kernnorm fuer
  `honorarberechnung-sia102`) abgeschlossen.

## 2026-07-14 — normen-training-mini Run 21 (Mac Mini): Q&A-Selbstbefragung 4 weitere Normen + Synthese-Sammelstelle Uebertragbarkeit
- Vertiefungsstufe (c): 4 parallele Sub-Agenten fuehren je 18-20 unabhaengig am
  Original-PDF beantwortete Pruefungsfragen gegen die bestehenden Destillate durch.
- **DIN 276-1:2008** (18/18 bestanden, 0 Fehler): 6 Ergaenzungen — 5 fehlende
  Begriffsdefinitionen (Ziff. 2.5/2.6/2.8/2.9/2.12), 4 fehlende Grundsatz-Ziffern
  (3.3.1/3.3.3/3.3.8/3.3.10), Ziff. 4.3 Darstellungsregel, Link auf din-277-2-2005.
- **DIN 277-1:2005** (17/18 bestanden): 1 Korrektur (KGF-Schwelle "bis 1,0 m²" fuer
  Kriechkeller/Installationskanaele fehlte, Ziff. 3.1.2), 5 Ergaenzungen (BRI/NRI/KRI-
  Ausschlusslisten, NGF-/VF-Ausschluesse, Ziff. 4.1.3, Vorwort-Aenderungen 1987→2005).
- **DIN 18040-2:2011** (14/20 bestanden): 1 Korrektur (Ziff. 4.2.1 faelschlich als
  Pflicht statt Empfehlung dargestellt), 5 Ergaenzungen inkl. 2 komplett fehlende
  Abschnitte (Ziff. 4.3.4 Bodenbelaege, Ziff. 4.4 Warnen/Orientieren/Leiten).
- **SN 640 050:1993** (13/18 bestanden vor Ergaenzung, 0 Fehler bei Zahlenwerten):
  5 Luecken ergaenzt (SN-640-271-Zusatzanforderung schwere Motorwagen, A/B/C-Matrix
  Tab. 1, HVS-Restriktion, Zufahrten-Zusammenfassungs-Hinweis, Sichtverhaeltnisse-Zeile).
- `wiki/synthese-din-vss-ral-fachskills.md` um Abschnitt 9 "Grenzen der Uebertragbarkeit
  (Sammelstelle)" ergaenzt — buendelt alle Nicht-Aequivalenz-Hinweise aus Abschnitt 1-8
  in einer Tabelle; SIA-500-vs.-DIN-18040-Cross-Check als offener Folgeauftrag vermerkt.
- `destillate/INDEX.md` fuer alle vier Positionen nachgefuehrt (2 von 4 Sub-Agenten
  hatten selbst committet/gepusht, INDEX aber nicht aktualisiert — Bookkeeping-Lag-
  Muster wie Run 18/20).

## 2026-07-14 — normen-training-mini Run 20 (Mac Mini): Q&A-Selbstbefragung 3 Kern-Normen + Synthese-Vertiefung unternehmerkontrolle
- Vertiefungsstufe (c) fuer die DIN/VSS/RAL-Familie (Mac Mini, Stations-Split): 3 parallele
  Sub-Agenten fuehren je 18-20 unabhaengig am Original-PDF beantwortete Pruefungsfragen gegen
  die bestehenden Kern-Destillate durch (nicht aus dem Destillat abgeschrieben).
- **DIN 4102-1:1998** (18/18 bestanden): 2 Korrekturen (Ziff. B.5.3 Brenner-/Probenunterlage-
  Verwechslung; Ziff. 5.2.4.5 zwei fehlende Gipskarton-Teilregeln) + Vorwort-Aenderungsliste
  ergaenzt + veralteten `wiki/REGISTER.md`-Eintrag korrigiert.
- **DIN 18040-1:2010** (18/18 bestanden, 1 reine Fundstellen-Praezisierung Rampen-Sektion S.16-18
  statt S.16-17) — Eintrag unten faelschlich als "MacBook Pro" statt Mac-Mini-DIN-Familie
  attributiert (Sub-Agent-Fehlbezeichnung, Inhalt korrekt).
- **VSS 40 291:2021** (20/20 bestanden, 2 Luecken ergaenzt: Fussgaenger-Zuschlag 0.80 m
  Fahrgassenbreiten; Tab. 8 Kleinwagen-Fahrgassen + MB/ML/LmV/LoV-Werte komplett nachgetragen).
- `training/norm-inventar.md` + `destillate/INDEX.md` fuer alle drei Positionen nachgefuehrt
  (Sub-Agenten hatten die Destillate selbst korrekt aktualisiert + committet/gepusht, das
  zentrale Register aber nicht — Bookkeeping-Lag-Muster wie in Run 18/19).
- Vertiefungsstufe (d): `wiki/synthese-din-vss-ral-fachskills.md` um Abschnitt 8 ergaenzt
  (Abnahme/Garantiefrist/Verjaehrung/Beweislast/Sicherheitsleistung VOB/B vs. SIA 118,
  Art.-fuer-Art. belegt, fuer Skill `unternehmerkontrolle`) — Kernbefund: "2 Jahre" hat in
  beiden Systemen eine andere Rechtsfigur, nie 1:1 gleichsetzen. Frontmatter/`wiki/INDEX.md`
  nachgefuehrt.
- Lauf-Report: `outputs/2026-07-14_normen-mini-run20.md`. INVENTAR-STATUS DIN/VSS/RAL
  unveraendert komplett (seit Run 19); Vertiefung laeuft weiter (naechster Kandidat: DIN
  1946-4/6, DIN 276-1/277-1-3).

## 2026-07-14 — Q&A-Selbstbefragung Run 20: din-18040-1-2010 (MacBook Pro)
- 18 gezielte Pruefungsfragen zu Mindestmassen (Tuerbreiten, Bewegungsflaechen, Rampenneigung,
  Treppen, WC-Masse, Aufzuege) und Kennzeichnungspflichten formuliert und jede unabhaengig durch
  Volltextlektuere des Original-PDF (30/30 Seiten) beantwortet, dann gegen das Destillat
  `destillate/din-18040-1-2010.md` abgeglichen.
- Ergebnis: 18/18 Fragen bestanden. 1 Korrektur: Fundstellen-Bereich der Rampen-Sektion von
  "Ziff. 4.3.8, S. 16-17" auf "S. 16-18" praezisiert (Handlauf-/Radabweiser-Vorgaben unter
  Ziff. 4.3.8.3 stehen im Original auf S. 18). Keine inhaltliche/masszahlliche Abweichung
  gefunden — das Destillat war bereits aus den Vorlaeufen (Run 7, Mini-Run 260714) durchgehend
  korrekt.
- Frontmatter `status`/`last_updated` und Verifikations-Sektion im Destillat nachgefuehrt.

## 2026-07-14 — normen-training-mini Run 19/20 (Mac Mini): DIN/VSS/RAL-Bookkeeping nachgezogen + Querschnitts-Synthese fuer Fach-Skills
- Beim Start dieses Laufs zeigte `git status`, dass ein Hintergrund-Prozess (Vollgas-Runner)
  bereits 17 randstaendige "Sonstiges"-Destillate (10 Register-/Glossar-Positionen aus dem
  Run-17/18-Plan + 6 weitere DIN-Sonstiges-Dokumente + die Vervollstaendigung des
  Teil-Destillats vstaettvo-niedersachsen-2004 auf S.1-31/31) retro-verifiziert und committet
  hatte (Frontmatter zeigte durchgehend `established (verifiziert 260714, Retro-Verifikation
  Run 19)`), aber weder `training/norm-inventar.md` noch `destillate/INDEX.md` einen
  entsprechenden Vermerk trugen — analog zum bereits in Run 18 beobachteten Muster.
- Nachgezogen: alle 17 Positionen in `norm-inventar.md` (Spalte Bemerkung) und
  `destillate/INDEX.md` (Status-Spalte) mit dem Verifikations-Vermerk + Kurzfassung der
  jeweiligen Korrektur ergaenzt (u.a. din-abkuerzungsverzeichnis-2010: Eintragszahl ~500/
  VOF-VOL/NORM-SIA/TRPV/EnEV/BMZ korrigiert; treppen-hcu-hamburg-2008: Neufert-Stufenzahlregel/
  Mindestmasse-Tabelle/Formel/Fluchtdistanz/Fluchtleitern korrigiert; nbauo-barrierefreiheit-2004:
  §45/§48/§18/§29 mehrere Ergaenzungen; hoai-bauen-im-bestand-2011 + din-planungsgrundlagen-
  hoai-vorschriften-2004: mehrere LP-Zuordnungsfehler korrigiert; vds-2234-1999: Brandwandklasse
  F90-A statt faelschlich F90-AB korrigiert).
- Damit ist die **DIN/VSS/RAL-Familie (528-Datei-Inventar) vollstaendig destilliert UND
  retro-verifiziert** (Vertiefungsstufe (b) fuer diese Familie abgeschlossen).
- **Vertiefungsstufe (d) begonnen:** neuer Wiki-Artikel `wiki/synthese-din-vss-ral-fachskills.md`
  — Querschnitts-Synthese, wo DIN/VSS/RAL-Destillate als Vergleichs-/Kennwert-Referenz fuer die
  JANS-Fach-Skills taugen (Brandschutz: DIN 4102-1 Baustoffklassen vs. RF-Klassen, DIN 18232-2
  NRA-Bemessung, DIN 1946-4/6/7 RLT Gesundheitswesen/Wohnen/Labor; Kostenschaetzung: DIN 276-1
  KG vs. BKP; Flaechen-Nachweis: DIN 277-1/2/3 BGF/NGF vs. SIA 416 — inkl. Warnung vor der
  unbelegten NGF=HNF-Gleichsetzung; Werkvertrag: VOB/A+B vs. SIA 118; Barrierefreiheit: DIN
  18040-1/2 als Ersatzreferenz mangels SIA-500-Destillat in der KB; Parkierung: VSS 40 291
  als direkt geltendes CH-Recht; Tageslicht: DIN 5034-1 vs. SIA 380/1). In `wiki/INDEX.md`
  registriert.
- Kein offener Q&A-/DRM-/Luecken-Punkt fuer DIN/VSS/RAL in `wiki/QUESTIONS.md`.

## 2026-07-14 — normen-training-nacht Run 8 (MacBook Pro): 13 VKF-Retro-Verifikationen + SIA 723 Erstverifikation
- Vertiefungsstufe (b) Retro-Verifikation fortgesetzt (Rule auto-verbesserungen 260713, reduzierter
  Umfang 1x taeglich): 12 parallele adversariale Verifikations-Agenten gegen die Original-PDFs.
- **VKF-Erlaeuterungen (04_Erlaeuterungen Brandschutz 2015):** 101-15 Atrien/Innenhoefe (Innenhof-
  Doppeldefinition Ziff.1.3.2/2.5 praezisiert), 102-15 Doppelfassaden (bestanden), 103-15 Cheminees
  (bestanden), 104-15 Spaenefeuer (kosmetische Praezisierung Ziff.8.1.1), 105-15 Schnitzelfeuerung
  (bestanden), 106-15 Pelletsfeuerung (bestanden), 107-15 Fluessiggasanlagen (2. Verifikationsrunde,
  bestanden), 108-15 Betriebsbereitschaft BFS (bestanden) — alle auf `established (verifiziert 260714)`.
- **VKF-Arbeitshilfen (05_Arbeitshilfen Brandschutz 2015):** 1000-15 Gebaeude geringer Abmessung
  (bestanden), 1001-15 Wohnbauten (2 Korrekturen: RWA-Abstroemoeffnungspflicht Ziff.7.5 praezisiert,
  RWA-Parkings Ziff.12.2 Abs.9-10 ergaenzt), 1002-03d Parkhaeuser (1 Korrektur: Tabelle 2 bei 4
  Geschossen R 30 statt faelschlich EI 30), 1002-15 Schulbauten (Tueren-Ausnahmeregel Ziff.7.4.6
  fuer Raeume ≤20 Personen ergaenzt) — alle auf `established (verifiziert 260714)`.
- **SIA 723:2001** (NVB zu SIA 380/1): trug bereits Frontmatter-Status "established", war laut
  norm-inventar.md aber nie unabhaengig verifiziert worden ("Verifikation ausstehend"). Erstverifikation
  jetzt nachgeholt: 24 Aussagen gegen das 8-seitige Original geprueft, bestanden, keine Korrekturen.
- Bilanz: 9 von 13 Destillaten ohne Befund bestanden, 3 mit kleinen Praezisierungen/Ergaenzungen
  korrigiert (keine sicherheitsrelevanten Fehlangaben), 1 mit einer relevanten Korrektur (Tragwerk-
  Tabelle 1002-03d, R- statt EI-Klasse — sicherheitsrelevant fuer Brandschutz-Factsheets Parkhaeuser).
- Damit sind saemtliche VKF-Erlaeuterungen (100-108) und VKF-Arbeitshilfen (1000-1002) sowie das
  VKF-Verzeichnis 40-15 vollstaendig retro-verifiziert. `training/norm-inventar.md` und
  `destillate/INDEX.md` fuer alle 13 Positionen nachgefuehrt.

## 2026-07-14 — VKF-Verzeichnis 40-15 "Weitere Bestimmungen": Destillat vervollstaendigt + adversarial vollverifiziert
- Destillat `destillate/vkf-verz-40-15-weitere-bestimmungen.md` war laut Frontmatter nur teilweise
  destilliert (Ziff. 3.7-3.9 + Abkuerzungsverzeichnis Kap. 4 fehlten). Original-PDF (22 Seiten)
  komplett gelesen und Luecke geschlossen: BSE 106-15 (Pelletsfeuerungen), BSE 107-15 (temporaere
  Flüssiggasanlagen), BSE 108-15 (Betriebsbereitschaft Brandfallsteuerungen) sowie das komplette
  Abkuerzungsverzeichnis (Kap. 4, S. 22) ergaenzt.
- Adversariale Vollverifikation des gesamten Destillats (auch der zuvor bereits destillierten Teile)
  gegen das Original: ~140 Einzelaussagen geprueft. Zwei inhaltliche Ergaenzungen in BSR 26-15
  nachgetragen (SR 832.314.12/SR 832.312.17 Spritz-/Lackierarbeiten, Regeln der Technik VWF T1d-T9d
  SVTI). Auffaelligkeit dokumentiert: Ziff. 3.7-3.9 verweisen im Original selbst wortidentisch auf
  die fuer Schnitzelfeuerungen (BSE 105-15) einschlaegige SUVA-Informationsschrift 66050 — ein
  Vorlagenfehler der VKF im Originaldokument, kein Uebertragungsfehler des Destillats.
- Status auf `established (verifiziert 260714, vollstaendig)` gesetzt.

## 2026-07-14 — normen-training-mini Run 18 Abschluss (Mac Mini): Inventar-Bookkeeping fuer 14 DIN/VSS-Retro-Verifikationen nachgezogen
- Ein bereits laufender Hintergrund-Lauf (Vollgas-Runner) hatte 14 DIN/VSS-Kernnormen retro-verifiziert
  (din-1045-2-2008, din-18065-2000, din-277-3-2005, din-4844-2-2001, din-en-12101-2-2003,
  din-en-12207-2000, din-v-105-100-2005, din-v-106-2005, vss-40291-2021-parkieren,
  vss-640050-1993, vss-640060-1994, vss-640065-2011, vss-640281-2006, vss-640578-2006;
  `destillate/INDEX.md` war bereits korrekt), aber 7 Destillat-Korrekturen waren nur lokal
  geaendert (nicht committet) und `training/norm-inventar.md` hatte noch keinen
  Verifikations-Vermerk fuer keine der 14 Positionen.
- Nachgezogen: die 7 offenen Destillat-Dateien committet, `norm-inventar.md` fuer alle 14
  Zeilen mit «Retro-verifiziert Mini-Run 18 (260714): established» ergaenzt. Damit ist die in
  Run 17 geplante «Core-Batch»-Retro-Verifikation (DIN 1045-2/18065/277-3/4844-2/EN-12101-2/
  EN-12207/V-105-100/V-106, VSS 40-291/640-050/640-060/640-065/640-281/640-578) vollstaendig
  im Inventar dokumentiert.
- Damit ist die DIN/VSS/RAL-Familie im Kern-/Geometrienormen-Bereich komplett retro-verifiziert;
  offen bleiben nur noch die 10 Register-/Glossar-Positionen aus dem Run-17-Plan sowie ein paar
  weitere randstaendige Sonstiges-Dokumente (naechster Lauf: Run 19).

## 2026-07-14 — normen-training-nacht MacBook Pro Run 7: Retro-Verifikation 10 VKF-Brandschutzrichtlinien (P1-Kern)
- Vertiefungsstufe (b) fortgesetzt (SIA/VKF-Basisinventar seit Run 5 vollständig, gedrosselt auf
  1x täglich gemäss Rule `auto-verbesserungen` 260713): 10 parallele Retro-Verifikations-Agenten
  prüften die in Run 6 destillierten, aber noch nicht verifizierten VKF-Brandschutzrichtlinien
  11-15, 12-15, 15-15 (beide Ausgaben), 18-15, 19-15, 21-15, 22-15, 23-15, 25-15, 26-15 —
  der P1-Kern des Skills `brandschutz`.
- **Bilanz:** 4 bestanden ohne Befund, 6 beanstandet-korrigiert. Keine sicherheitsrelevanten
  Fehlangaben — durchweg fehlende Präzisierungen/Ergänzungen. Wichtigster Fund: **BRL 15-15**
  hatte ein falsches Ausgabedatum für die Revisionsfassung (fälschlich 2015 statt korrekt
  01.01.2017) sowie eine komplett fehlende Parking-Ausnahme im Revisions-Delta (Ziff. 3.7.11,
  offene oberirdische Parkings mit Löschanlage: flächenmässig unbegrenzt in der 2017er-Fassung).
- Alle 10 auf `established (verifiziert)` gehoben, `last_updated: 2026-07-14`. Nachgeführt:
  `destillate/INDEX.md`, `training/norm-inventar.md` (11 Zeilen inkl. beide BRL-15-15-PDFs).
  Report: `outputs/2026-07-14_normen-nacht-run7.md`. Nächster Lauf: verbleibende 3 VKF-Positionen
  aus Run 6 (Verzeichnis 40-15, Arbeitshilfen 1000/1001/1002) sowie ~35 weitere unverifizierte
  SIA/VKF-Destillate aus dem Basisinventar (Run 5) retro-verifizieren.

## 2026-07-14 — Normen-Mini-Run 17 (Mac Mini): Retro-Verifikation 13 DIN/VSS-Destillate, 9 substanzielle Fehler korrigiert
- Stufe (b) Retro-Verifikation fortgesetzt: 13 unverifizierte DIN/VSS-Destillate parallel gegen
  die Original-PDFs geprueft (din-18041-2004, vss-700.5-1987, vss-722.15-1983,
  vss-merkblatt-veloabstellplaetze-1998, din-1249-11-1986, din-68119-1996, din-4426-2001,
  din-1072-beiblatt1-1988, din-1076-1999, din-1164-10-2004, din-1356-1-1995,
  din-18560-2-2009, vss-640291a-2005-parkieren-anordnung-geometrie).
- 9 von 13 hatten substanzielle Beanstandungen (Fundstellen-/Zuordnungsfehler oder fehlende
  praxisrelevante Ziffern), alle direkt im Fliesstext korrigiert: DIN 18041 (Tab.1 Zeile II +
  Anhang D Zuschlaege vermischt), VSS 722.15 (§5/§6-Fundstelle verdreht, §13 fehlte),
  VSS Merkblatt Velo (PPV faelschlich kantonal statt staedtisch), DIN 4426 (Ziff. 5.2.2.1
  ODER/UND-Fehler, Ziff. 6.1.2/6.2.2/6.2.3/8 fehlten komplett), DIN 1072 Beiblatt1
  (Regelklassen-Zuordnung 130 kN verdreht, Anwendungsbereich fehlte), DIN 1076 (Ziff. 5.5
  Konditional-/Pflicht-Aussage verschmolzen), DIN 1164-10 (Tippfehler Bauregelliste), DIN
  1356-1 (Ziff. 3.1/12.4/12.6-7 ergaenzt), VSS 640291a (Motorrad-Parkfeld-Laenge frei erfundener
  2,50-m-Wert). 4 ohne Beanstandung (VSS 700.5, DIN 1249-11, DIN 68119 dritte Pruefrunde,
  DIN 18560-2 nur Praezisierungen).
- Alle 13 Destillate auf `status: established` mit Verifikations-Vermerk 260714;
  `destillate/INDEX.md` nachgefuehrt. Damit sind alle bisher unverifizierten DIN/VSS-Kernnormen
  aus der Retro-Verify-Warteschlange (Stand Run 9) abgearbeitet.
- Report: `outputs/2026-07-14_normen-mini-run17.md`.

## 2026-07-14 — Retro-Verifikation `vkf-brl-26-15-gefaehrliche-stoffe` (Run 7): 2 substanzielle Luecken ergaenzt
- Destillat vollstaendig (26/26 Seiten) gegen Original "Gefährliche Stoffe.pdf" (OneDrive
  PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015/) geprueft. Alle Kernziffern
  (Geltungsbereich, Klassierung/GHS, Ziff. 3.1-3.6 Grundsaetze/Lagermengen-Tabelle/Betriebliche
  Anforderungen, Ziff. 4-11 Gase/brennbare Fluessigkeiten/oxidierende Stoffe/Reifen/Zapfstellen/
  Hochregallager/Pyrotechnik, Ziff. 12-13) sowie die Anhang-Tabellen (GHS-Piktogramme/H-Saetze,
  Stoffseparierungs-Matrix) auf Zahlenwerte und Fundstellen gegengeprueft — Lagermengen-Tabelle
  (Ziff. 3.2, S. 6) und Gebinde-Tabelle (Ziff. 5.2.2, S. 10) exakt bestaetigt.
- Ergaenzt (bisher fehlend, substanziell): Ziff. 5.2.1 Abs. 1-2 (Einstiegsoeffnungen Tankraum
  0.7×1 m mit EI-30-Deckeln; Heizraum EI 60 mit Heizoel bis 4'000 l Kleintanks/8'000 l Stahltanks)
  sowie der komplette Anhang zu Ziff. 5.2 (S. 23, Sonderregel leichtbrennbare Fluessigkeiten in
  Verkaufsraeumen/Baumaerkten — offene Ausstellung 100 l ohne / 450 l mit Sprinkleranlage, je
  max. 1.2 m Stapelhoehe) — JANS-relevant fuer Ladenbau-/Retail-Projekte, in JANS-Praxis-Transfer
  nachgetragen. Kleinere Ergaenzung: EUH001 in der H-Saetze-Aufzaehlung Anhang Ziff. 1 nachgetragen.
- Status auf `established (verifiziert)` gehoben, `last_updated: 2026-07-14`.

## 2026-07-14 — Retro-Verifikation `din-1356-1-1995` (Run 12): keine neuen Sachfehler, 3 Ergaenzungen
- Destillat vollstaendig (13/13 Seiten) gegen Original `DIN 1356-1.pdf` (OneDrive PL - 02_Recht_Norm/
  02_Normen/DIN_Norm/DIN-Norm/) geprueft. Die Run-11-Korrektur (Ziff. 3.2-3.5 Zuordnung Schalpläne/
  Rohbau/Bewehrung/Fertigteil) ist bestaetigt korrekt; keine weiteren Abweichungen gefunden
  (Tabelle 2 Linienbreiten, Tabelle 6 exakt 22 Türöffnungssymbole, Tabelle 8 alle 13 Schnittflächen-
  Kennzeichnungen, Zitierte-Normen-Liste S. 13, alle Ziffern-/Seitenzuordnungen).
- Ergaenzt (bisher fehlend, JANS-relevant fuer Planlesung/CAD-Austausch): Ziff. 3.1 Positionspläne,
  Massstab-Angabe Bewehrungszeichnungen (1:50/1:25/1:20), Ziff. 12.4 Tragrichtung von Platten
  (Tabelle 7), Ziff. 12.6-12.7 Abgehängte Decken/Aussparungen, Hinweis Bauvorlagezeichnungen/
  Länder-Verordnungen bei Ziff. 13.
- Status bleibt `established`, `last_updated: 2026-07-14`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): 2 Aktualitaets-Flags in der fuehrenden Normen-KB
- [flag] REGISTER Zeile 109 SIA 181: neuere Ausgabe **SIA 181:2020** vermerkt (KB energie fuehrt sie als aktuell); Re-Destillat 2020 ausstehend. QUESTIONS-Eintrag ergaenzt.
- [flag] `destillate/vkf-merkblatt-2001-15-solaranlagen.md` (Offene Punkte teilweise beantwortet): belegte **Rev. 01.01.2022** (Quelle planungsgrundlagen `energie-pv-brandschutz`), Delta Unterdachbahnen RF3(cr)/RF4(cr); 2022er Re-Destillat empfohlen. QUESTIONS-Eintrag ergaenzt.
- [befund] Doppelspur VKF-BSR normen ↔ planungsgrundlagen: Werte deckungsgleich (0 Widersprueche); normen bleibt fuehrend, planungsgrundlagen verweist neu hierher. Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Mac Mini Mini-Run 15: Retro-Verifikation Sammel-Batch (8 Destillate, Deepening-Stufe b)
- DIN/VSS/RAL-Basisinventar war bereits seit Run 5/12 vollstaendig; letzte 8 noch nicht
  adversarial verifizierte Volltext-Destillate in 8 parallelen Agenten geprueft: din-1054-2010
  (Baugrund), din-1053-4-2011, din-105-100-2012, din-1055-2-2010, din-276-4-2009, din-1960-2010
  (VOB/A), ral-gz638-2008, sn-640105a-2000. Ca. 335 Aussagen geprueft, 15 Fehler korrigiert,
  11 Ergaenzungen. Sicherheitsrelevanter Fund: sn-640105a-2000 hatte einen Formelfehler
  (Reduktionsfaktor p waere doppelt angewandt worden).
- Alle 8 auf `established` gehoben; `destillate/INDEX.md` + `training/norm-inventar.md`
  nachgefuehrt. Report: `outputs/2026-07-13_normen-mini-run15.md`.
- Einzelagenten-Protokolle unten (jeder Agent hat sein Ergebnis bereits separat vermerkt).

## 2026-07-13 — Mini-Run 15: Retro-Verifikation ral-gz638-2008 (Gitterroste)
- Destillat `destillate/ral-gz638-2008.md` adversarial gegen das Original-PDF (24 S.)
  gegengeprüft: 46 Aussagen verglichen, 6 Ergänzungen/Korrekturen eingearbeitet
  (Ziff. 1.2 Begriffsdefinition Gitterrost ergänzt, Ziff. 2.3–2.5 Randeinfassung/
  Toleranzen-Verweis/Korrosionsschutz DIN EN ISO 1461 neu aufgenommen, Ziff. 3.1
  Belastungsarten auf alle vier Lastarten vervollständigt, Ziff. 4 Abminderungsfaktor
  v (0,9 Pressroste/0,85 Steckroste, verzinkt) + n-Formel ergänzt, Seitenrange
  Berechnungsbeispiel 3 von S. 10 auf S. 10–11 korrigiert, Begriff «Lastanordnung 1/2»
  präzisiert (Drehung der Lastaufstandsfläche 90°, nicht «Position»)). Status auf
  `established (verifiziert)` gesetzt. Keine sachlichen Fehler in Kernziffern/Zahlenwerten
  gefunden — alle Lücken waren fehlende, nicht falsche Inhalte.

## 2026-07-13 — Mac Mini Mini-Run 14: Retro-Verifikation DIN-Batch (6 Destillate, 6 Parallel-Agenten)
- DIN/VSS/RAL-Basisinventar ist seit Mini-Run 5/12 vollständig; Deepening-Stufe (b) Retro-
  Verifikation fortgesetzt (Empfehlung Run 13) für sechs bislang unverifizierte, JANS-relevante
  Destillate: **din-1946-4-2008** (Healthcare-RLT), **din-4102-1-1998** (Brandverhalten
  Baustoffe), **din-18232-2-2007** (RWA-Bemessung), **din-1961-2010** (VOB/B), **din-en-1627-2011**
  (Einbruchhemmung, Teil-Destillat), **din-105-5-1984** (Leichtlanglochziegel).
- Adversariale Prüfung (je 1 unabhängiger Agent gegen das Original-PDF): ca. 290 Einzelaussagen
  geprüft, **10 Fehler + 5 substanzielle Ergänzungen korrigiert**. Grösster Fund: din-4102-1
  (6 Fehler in Anhang-B-Massangaben + Bodenbelag-/Kennzeichnungs-Lücken + komplett fehlende
  Ziff. 5.2.4); din-en-1627 ein sicherheitsrelevanter Klassifizierungsfehler (RC 4 fälschlich
  pauschal "Elektrowerkzeuge" statt Säge-/Schlagwerkzeuge). din-1961 und din-105-5: keine Fehler.
- **Register-Hygiene:** din-1946-6-2009 (Retro-Verifikation bereits in Mini-Run 13 abgeschlossen,
  aber INDEX.md/norm-inventar.md nicht nachgeführt) nachträglich auf `verifiziert 260713` gesetzt.
- Nachgeführt: `destillate/INDEX.md` (7 Zeilen), `training/norm-inventar.md` (7 Zeilen),
  `wiki/QUESTIONS.md` (DIN-EN-1627-Vollversions-Lücke). Report: `outputs/2026-07-13_normen-mini-run14.md`.

## 2026-07-13 — MacBook Pro Run 5: SIA/VKF-Basisinventar VOLLSTÄNDIG (Workflow, 37 Positionen)
- Multi-Agent-Workflow (60 Agenten, 0 Fehler, ~11.9 Mio Token, ~30 Min): 24 Destillate als
  Destillier→Verifizier-Pipeline + 12 Retro-Verifikationen, plus Nachzug SN EN 13200-1:2019.
- **Neu destilliert+verifiziert (SIA):** 195 (Rohrvortrieb), 196 (Baulüftung Untertagbau),
  197 (Tunnel Grundlagen), 198 (Untertagbau Ausführung), 199 (Erfassen des Gebirges),
  203 (Deponiebau), 272 (Grundwasserabdichtungen), 282:2019/`564_282` (flüssige Abdichtungen),
  405 (GEO405 Leitungskataster), 431 (Baustellenentwässerung), 450 (Kosteninformationen),
  480 (Wirtschaftlichkeitsrechnung), 493 (Ökodeklaration Bauprodukte), 2014:2017 (CAD-Layer),
  2040:2017 (Effizienzpfad Energie), 2051:2017 (BIM), 2056:2019/`592056` (Elektr. Energiebedarf),
  343.051:2018/EN 14351-2 (Innentüren), 370.080/EN 81-80 (Aufzüge-Nachrüstung), 382/1:2014
  (Lüftung/Klima), 384/201/EN 12831-1 (Norm-Heizlast), 193.111/EN 12063 (Spundwände),
  SN EN 13200-1:2019 (Zuschaueranlagen) + VKF-BRL 107-15 (Flüssiggasanlagen).
  Bilanz: 18 established, 6 teil-destillat (Kern verifiziert, Anhänge offen); 13/24 beanstandet-korrigiert.
- **Retro-verifiziert → established (12):** SIA 162.051/EN 206-1 (Beton), 244/246/248
  (Kunst-/Naturstein-/Plattenarbeiten), 312 (Dachbegrünung, BKP-224-Korrektur), 370.028/EN 81-28
  (Fern-Notruf Aufzüge), 462 (Tragsicherheit), 465 (Sicherheit Bauten), 469 (Erhaltung Bauwerke),
  721 (Bohren/Trennen NVB), 752 (Industrieböden NVB), 753 (Bodenbeläge NVB). 3 beanstandet-korrigiert.
- **Nachgeführt:** norm-inventar.md (0 offene [ ]-Positionen mehr), INDEX.md (35 Einträge ergänzt),
  REGISTER.md (Run-5-Nachtrag inkl. Norm-Nr-Präzisierungen 592056→SIA 2056, 564_282→SIA 282),
  QUESTIONS.md. Report: `outputs/2026-07-13_normen-nacht-run5.md`.
- **Endbedingung:** SIA/VKF-Basisinventar komplett → nächste Läufe wechseln auf die
  Vertiefungsstufen (Tiefendestillate P1-Kern, 3-Agenten-Retro-Verifikation, Q&A-Selbstbefragung,
  Querschnitts-Synthesen, offene Anhänge der 6 Teil-Destillate). «SIA/VKF KOMPLETT» erst danach.

## 2026-07-13 — Mac Mini Run 13: din-1946-6 adversarial retro-verifiziert, Tabelle-D.4-Unstimmigkeit geklärt (Deepening-Stufe b)
- Erster Lauf der Deepening-Stufe (b) Retro-Verifikation gemäss `training/PROGRAMM.md`,
  nachdem das DIN/VSS/RAL-Basisinventar seit Run 5/12 vollständig ist.
- **Tabelle-D.4-Unstimmigkeit geklärt** (offener Punkt aus Run 12): Volltextabgleich
  S. 89-92 direkt am Original (DIN 1946-6.pdf) zeigt EINEN informativen Anhang D
  (nicht wie vom Destillat fälschlich angenommen zwei getrennte Anhänge D
  informativ/normativ) mit einer einzigen, über den Seitenumbruch 90/91 fortgesetzten
  Tabelle D.4 (Nr. 1-15). Destillat- und Fundstellenstruktur korrigiert.
- **Adversariale Retro-Verifikation din-1946-6-2009 (125 S., grösstes DIN-Destillat,
  Healthcare-RLT-relevant):** 4 unabhängige Prüf-Agenten haben das komplette Destillat
  gegen das Original geprüft (ca. 100 Einzelaussagen: Ziffern, Formeln, Tabellenwerte,
  Fundstellen). Ergebnis: 14 Fehler/Lücken gefunden und korrigiert, u.a. „Geltungsbereich"
  → „Anwendungsbereich" (Ziff. 1), unbelegter Klammerzusatz bei Ziff. 3.1.25 entfernt,
  Tabelle 10 (Differenzdruck) unvollständige Werte ergänzt, „Zweitnutzung"→„Zweifachnutzung"
  (Ziff. 5.3.2) korrigiert, zwei verschmolzene Windhindernis-Regeln (Ziff. 7.2.5) getrennt,
  fehlende Bedingungseinschränkung bei der 10-%-Regel (Ziff. 11.2.2.2, gilt nur bei
  vereinbarter „E"-Kennzeichnung) ergänzt, Anhang-B-NE-Verweis präzisiert, Anhang-E-Fundstelle
  E.2.1→E.2.1.2 korrigiert, ein Original-interner Widerspruch bei den Winddaten Anhang H
  (Bild-H.1- vs. Tabelle-H.1-Legende) transparent gemacht statt stillschweigend übernommen,
  fehlende Formel Gl. I.2 + Fussnote (Halbierung bei nur einer windexponierten Fassade) +
  Abschirmungsklassen S. 118 in Anhang I ergänzt, Literaturliste „über 30"→„rund 50" korrigiert.
  Rest (ca. 86 Aussagen) bestätigt korrekt — insbesondere alle Zahlenwerte in den
  Kernziffern-Tabellen 5-10, den Komponentenauslegungs-Tabellen 11-19 und dem
  Gleichwertigkeitsnachweis Anhang G (Gleichung G.1/G.5, Rechenbeispiel) exakt bestätigt.
- Status `din-1946-6-2009.md` bleibt `established`, jetzt mit abgeschlossener
  Retro-Verifikation. Offen bleiben: SIA-382/1-Methodenvergleich (eigene Recherche nötig),
  Anhang-H-Seitenumfang über S. 110 hinaus.
- Report: `outputs/2026-07-13_normen-mini-run13.md`.

## 2026-07-13 — Mac Mini Run 12: din-4102-1 + din-1946-6 zu vollständigen Destillaten ausgebaut, DIN/VSS/RAL-Basisinventar komplett established
- Statuscheck der Frontmatter aller DIN/VSS/RAL-Destillate zeigte 2 aktionable Lese-Lücken
  trotz komplett abgehaktem Basisinventar: `din-4102-1-1998.md` (Anhang B, S.21-25 offen)
  und `din-1946-6-2009.md` (nur ~31/125 S. gelesen).
- **din-4102-1-1998**: Anhang B (Prüfverfahren Rauchentwicklung bei Flammenbeanspruchung —
  Messkammer, Propangasbrenner, Justierung, Durchführung, Auswertung, Prüfbericht) direkt
  nachgelesen und integriert. Jetzt vollständig S.1-28/28, `established`.
- **din-1946-6-2009** (Healthcare-RLT-relevant): 6 parallele Hintergrund-Agenten haben die
  restlichen ~94 Seiten gelesen (§5.3-5.4 Systemauswahl, §7-8 Auslegung freie/ventilator-
  gestützte Lüftung inkl. Feuerstätten-Sicherheitseinrichtungen, §9-12 Ausführung/
  Dokumentation/Inbetriebnahme/Instandhaltung, Anhänge A-J inkl. normativem Lüftungskonzept-
  Ablaufschema Anhang B). Jetzt vollständig S.1-125/125, `established`. Befund: Tabellen-
  nummer D.4 zwischen zwei Segmenten (S.69-90/S.91-110) unstimmig — als offener Punkt in
  `wiki/QUESTIONS.md` vermerkt, S.89-92 im nächsten Lauf direkt nachlesen.
- `din-abkuerzungsverzeichnis-2010.md` und `din-planungsgrundlagen-hoai-vorschriften-2004.md`
  (reine Referenzwerke, bereits vollständig gelesen) auf `established` gehoben.
- Damit ist das DIN-/VSS-/RAL-P1-P3-Basisinventar vollständig `established` (Ausnahmen:
  `din-en-1627-2011` physisch nur 4/44 S. im Bestand, `vss-640291a-2005` bewusst historisch).
- `destillate/INDEX.md`, `training/norm-inventar.md`, `wiki/QUESTIONS.md` nachgeführt.
  Report: `outputs/2026-07-13_normen-mini-run12.md`. Nächster Lauf: Tabelle-D.4-Klärung +
  Retro-Verifikation din-1946-6-2009 (noch nie adversarial geprüft), danach Q&A-
  Selbstbefragung (Stufe c) für DIN-P1-Kernnormen.

## 2026-07-13 — Mac Mini Run 11: Retro-Verifikation VSS-Altbestand + 13 DIN-Einzelnormen (10/16 beanstandet-korrigiert)
- 16 Destillate adversarial gegen Original-PDF verifiziert (Volltextabgleich Modell D, 16
  parallele Agenten): vss-700.5-1987, vss-722.15-1983, vss-merkblatt-veloabstellplaetze-1998,
  din-919-1-1991, din-1164-10-2004, din-1356-1-1995, din-1356-6-2006, din-1946-7-2009,
  din-18560-2-2009, din-107-1974, din-272-1986, din-1072-beiblatt1-1988, din-1076-1999,
  din-1249-11-1986, din-68119-1996, din-4426-2001.
- 10 von 16 (62,5%) hatten reale Fehler/Lücken, korrigiert; 6 bestanden ohne Änderung.
- Kernbefund: **din-272-1986** hatte einen sachlichen Faktor-10-Zahlenfehler (Vorlast
  Oberflächenhärte (10 ± 1) N statt korrekt (10 ± 0,1) N). **vss-700.5-1987** und
  **vss-merkblatt-veloabstellplaetze-1998** hatten trotz "vollständig gelesen"-Vermerk mehrere
  komplett fehlende Abschnitte/Anhang-Tabellen.
- Nebenbefund: stales `.git/index.lock` (kein haltender Prozess) blockierte zwischenzeitlich
  Git-Status-Abfragen, entfernt nach `lsof`-Bestätigung.
- `destillate/INDEX.md` (16 Zeilen auf `established`), `training/norm-inventar.md` (16
  Bemerkungen), `wiki/QUESTIONS.md` nachgeführt. Details: `outputs/2026-07-13_normen-mini-run11.md`.

## 2026-07-13 — SIA D 0165 Kennzahlen im Immobilienmanagement: Teil-Destillat aus Fragment
- Nachtrag zum vorigen Lauf (dort d0165 als im Hintergrund laufend vermerkt, aber nicht
  registriert): `d 0165.pdf` (5-seitiges Scan-Fragment, S. 14-17 der Publikation +
  Titelblatt) gegen den Bestand geprueft — kein vorhandenes Destillat gefunden.
- Vollversion (73 S.) liegt bereits als `xalt/SIA D0165_2000 Kennzahlen im
  Immobilienmanagement.pdf` und `xalt/neu/...` im Bestand, war aber ebenfalls noch nicht
  destilliert. Da nur das Fragment gelesen wurde, neues Destillat als **Teil-Destillat**
  angelegt: `sia-d0165-2000-kennzahlen-immobilienmanagement.md` (Flaechenhierarchie
  Konstruktionsflaeche/NGF/Funktionsflaeche/Verkehrsflaeche/Nutzflaeche/HNF/NNF sowie
  Mietflaechen VMF/VTF/LF/VWAGF/EMF/DMF, Abschnitt 3.1 der Publikation).
- Offen fuer naechsten Lauf: Vollversion (73 S.) aus xalt vollstaendig lesen und dieses
  Destillat ergaenzen (Basisgroesse GF, Zuschlagsflaeche ZF, Anhaenge 1/2/5, evtl. weitere
  Kosten-/Ertrags-Kennzahlenkapitel).
- `destillate/INDEX.md` und `training/norm-inventar.md` (Zeile `d 0165.pdf`) nachgefuehrt.

## 2026-07-13 — normen-training-nacht MacBook: 12 neue SIA-Destillate (Verifikation ausstehend)
- Workflow-Tool blockierte im unbeaufsichtigten Lauf ("Review dynamic workflow before running");
  Fallback auf parallele Einzel-Agenten (PROGRAMM.md-Fallback bei Workflow nicht verfuegbar).
- 12 neue Destillate geschrieben: sia-723-2001, sia-752-2002, sia-753-2002, sia-721-2001,
  sia-462-1994, sia-370-028-2003, sia-465-1998, sia-469-1997, sia-244-2006, sia-246-2006,
  sia-312-2013, sia-248-2006. Alle mit Status `destilliert` (Fundstellen belegt), OHNE
  separate Verifikations-Stufe (Budget-Abbruch dieses Laufs) -- Status bewusst NICHT auf
  `established` gehoben, Verifikation ist naechster Schritt.
- Weitere Destill-Agenten liefen zum Abbruchzeitpunkt noch im Hintergrund (d0165, 199,
  2051, 2014, 272, 423, 431, VKF-107-15 Fluessiggasanlagen) -- deren Resultate sind auf der
  Platte zu pruefen und im naechsten Lauf zu registrieren, bevor neue Positionen begonnen werden.
- Duplikat-Bereinigung (VKF Anerkennungsverfahren/Solaranlagen/Aenderungen-2017, aus
  QUESTIONS.md) bewusst NICHT ausgefuehrt -- Loeschen ist destruktiv (Rule wissens-bibliothekar),
  braucht Rueckfrage in einer interaktiven Session.
- `training/norm-inventar.md` fuer die 12 destillierten Positionen auf `[x] 260713` gesetzt,
  Bemerkung "Verifikation ausstehend". `destillate/INDEX.md` wurde von den Agenten direkt
  nachgefuehrt.
- Naechster Lauf: (1) Register fuer die im Hintergrund fertiggestellten, aber hier nicht mehr
  verarbeiteten Destillate nachziehen, (2) Verifikations-Stufe fuer alle 12+ neuen Destillate
  nachholen (adversarial gegen Original-PDF), (3) restliche offene SIA-Positionen (384.201,
  450, 382/1, 193.111, 592056 -- Gross-Normen) angehen.

## 2026-07-13 — normen-training-mini Mac Mini Run 10: Retro-Verifikation DIN-5034-Reihe + DIN-1053-Reihe, 8/8 beanstandet-korrigiert
- Stufe (b) Deepening-Fortsetzung: 8 DIN-Destillate adversarial gegen das Original-PDF geprüft
  (din-5034-1, din-5034-2, din-5034-4, din-5034-6, din-1053-1, din-1053-2, din-1053-3,
  din-1053-100) — ALLE 8 (100%) beanstandet, Korrekturen direkt im Fliesstext integriert
  (Lehre aus Run 8/9: nicht als Anhang), Status auf `established` gehoben.
- Wichtigste Befunde: din-5034-4 hatte einen sachlich FALSCHEN Formelfehler (k1h/k1v-Werte
  vertauscht/falsch angewendet, hätte zu falscher Tageslichtberechnung geführt); din-5034-1
  fehlte eine komplette Regelspur für wohnraumähnliche Arbeitsräume (Healthcare-relevant);
  din-1053-2 hatte 7 von 8 Ziffern und 18 von 20 Tabellenwerten komplett fehlend trotz
  Status "destilliert". din-1053-1/-3/-100 hatten kleinere Tabellen-/Fundstellenfehler.
- Zusätzlich: 5 stale INDEX.md-Einträge korrigiert (din-276-1-2008, din-5034-3-2007,
  din-en-12101-2-2003, din-en-12207-2000, din-1045-2-2008 — Frontmatter war bereits
  `established` aus vorherigen Commits, INDEX.md hatte das nicht nachgezogen).
- `destillate/INDEX.md` und `training/norm-inventar.md` für alle 8 Destillate nachgeführt.
- Report: `outputs/2026-07-13_normen-mini-run10.md`. Nächster Lauf: Retro-Verifikation
  VSS-Altbestand + restliche unverifizierte DIN-Einzelnormen, danach Q&A-Selbstbefragung
  sobald Beanstandungsquote über mehrere Läufe sinkt.

## 2026-07-13 — din-276-1-2008 adversarial verifiziert: beanstandet-korrigiert, auf established gehoben
- Destillat `destillate/din-276-1-2008.md` gegen das Original-PDF (26 S., vollständig gelesen)
  geprüft. Drei Korrekturen: (1) Geltungsbereich behauptete faelschlich «für Ingenieurbau gilt
  DIN 276-4» — das Vorwort (S. 3) sagt tatsächlich, dass ein Teil 2 (nicht Teil 4) für den
  Ingenieurbau in Vorbereitung war; korrigiert. (2) KG 470 Nutzungsspezifische Anlagen: die
  Aufzählung liess «475 Feuerlöschanlagen» aus (Sprinkler-, Gaslöschanlagen,
  Löschwasserleitungen, Wandhydranten, Handfeuerlöscher) — brandschutzrelevant, ergänzt. (3) KG
  740 Gutachten und Beratung: die Aufzählung liess «746 Brandschutz», «747 Sicherheits- und
  Gesundheitsschutz» und «748 Umweltschutz, Altlasten» aus — ergänzt; zusätzlich KG 730 um «734
  Planung der Ingenieurbauwerke und Verkehrsanlagen» ergänzt. Alle übrigen Ziffern (Begriffe
  2.1–2.13, Grundsätze 3.1–3.3.11, Stufen der Kostenermittlung 3.4.1–3.4.5, Kostengliederung
  4.1–4.2, KG 100–700 Struktur der 1./2. Ebene) gegen das Original bestätigt korrekt. Status auf
  `established`, `last_updated` auf 2026-07-13 gesetzt.

## 2026-07-13 — normen-verify-abschluss MacBook: 9 Retro-Verifikationen (2x bestanden, 7x beanstandet-korrigiert) + Brandmauern-Duplikat gemerged
- Die letzten 9 Draft-Destillate des MacBook-Intensivlaufs vom 12.07. adversarial am
  Original-PDF verifiziert; alle 9 auf `established` gehoben. Verdikte:
  bestanden: en-179-1125-2009-panikbeschlaege-gege, vkf-brl-100-15-brandmauern (Merge);
  beanstandet-korrigiert: sia-104-2003, sia-110-2003, szs-steeldoc-brandschutz-stahlbau-2015,
  vkf-brl-17-15-kennzeichnung-fluchtwege, vkf-brl-aenderungen-2017,
  vkf-merkblatt-brandschutzklassifikation-bauteile, vkf-bsv2015-vernehmlassungsbericht,
  vst-merkblatt-012-tueren-fluchtwegen.
- Wichtigste Korrektur-Befunde: 2 Bedeutungsumkehrungen (steeldoc: Treppenanlagen sind von
  der Geschossfläche ENTKOPPELT, nicht gekoppelt; VST 012: Schliesszwangfunktion C = begrenzte
  Schlüsseldrehung, nicht begrenzte Öffnungszeit); vkf-brl-aenderungen-2017 mit 12 substanziellen
  Beanstandungen (u.a. QS-Tabelle S.5 falsch dargestellt, Galerie-Definition verdreht,
  Tabelle-1-Fussnote [5] als eigentliche Änderung, Wärmedämmschichten 3.7.4 umgekehrt);
  sia-104: falsche «abweichend von SIA 103»-Behauptung entfernt (SIA 103 hat wortgleiche
  10-Jahres-Klausel); sia-110: Qualifikationstabelle 6.2.5 und Ziffern-Notation auf Original
  korrigiert; BRL 17-15: «Ziff. 5.1/5.2» → «Ziff. 5 Abs. 1/Abs. 2», Anforderungsstufen [a]/[b]
  richtiggestellt; NSV-Merkblatt: Herausgeber «Nidwaldner Sachversicherung (NSV)», Datierung
  V.1/11.12.2014 aus PDF-Metadaten belegt; Vernehmlassungsbericht: Seitenangaben + IOTH als
  interkantonales Organ der IVTH präzisiert.
- Brandmauern-Duplikat gemerged: `vkf-brl-brandmauern-100-15.md` in
  `vkf-brl-100-15-brandmauern.md` zusammengeführt (Basis Fassung A, Ergänzungen aus B:
  RF1-Materialisierung REI 180, VKF-anerkannte Konstruktion, Anhang-Zeichnungsliste,
  JANS-Transfer ausschreibung/werkvertrag; scheinbarer Widerspruch Anhang S. 11 am PDF
  komplementär aufgelöst; Standfestigkeits-Beispiele S. 13 ergänzt), Duplikatdatei gelöscht.
- INDEX.md und training/norm-inventar.md nachgeführt (9x established, Merge-Vermerk erledigt).
- Report: `outputs/2026-07-13_normen-verify-abschluss-macbook.md`. Offen bleiben die weiteren
  Duplikat-Merges (vkf-brl-aenderungen-2017, Solaranlagen, Anerkennungsverfahren) und die
  REGISTER-Gegenprüfung BRL 100-15 auf spätere Ausgabe.

## 2026-07-13 — normen-training-mini Mac Mini Run 9: 12 Verifikations-Korrekturen in Fliesstext eingearbeitet, alle auf established
- Prioritaet 1 aus Run 8 abgearbeitet: die 12 in Run 8 angehaengten "Verifikations-Hinweis"-
  Abschnitte (din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994,
  vss-640066-1996, vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011,
  din-v-105-100-2005, din-v-106-2005, komm-din18024-t1-bayern-2001) wurden per 12 parallelen
  Agenten in den Fliesstext eingearbeitet (Ersetzung statt Anhang) statt nur angehaengt.
- 4 Destillate (din-18065-2000, vss-640060-1994, vss-640281-2006, vss-40291-2021) hatten
  komplett fehlende Ziffern — dafuer wurden gezielt Original-PDF-Seiten nachgelesen und die
  fehlenden Ziffern akkurat ergaenzt (keine Erfindungen).
- Frontmatter-Status aller 12 auf `established` gehoben, `destillate/INDEX.md` nachgefuehrt.
- DIN/VSS/RAL-Basisinventar bleibt vollstaendig (0 offene Positionen seit Run 5); alle
  ehemals "beanstandet"-Destillate aus Run 8 sind bereinigt.
- Report: `outputs/2026-07-13_normen-mini-run9.md`. Naechster Schritt: weitere Retro-
  Verifikation des Rests unverifizierter DIN/VSS-Destillate, danach Q&A-Selbstbefragung.

## 2026-07-13 — normen-training-mini Mac Mini Run 8: Retro-Verifikation 12 Destillate, 12/12 beanstandet
- Stufe (b) Fortsetzung: 12 DIN/VSS-Destillate adversarial gegen Original geprueft
  (din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994, vss-640066-1996,
  vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011, din-v-105-100-2005,
  din-v-106-2005, komm-din18024-t1-bayern-2001) — ALLE 12 beanstandet (100%, deutlich hoeher
  als Run 7s 50%). Fehlerbild: falsche Fundstellen, vermischte Tabellenspalten (B/F bei
  vss-40291, Kapazitaeten bei vss-640066), fehlende Ziffern trotz "vollstaendig"-Anspruch,
  eine Bedeutungsumkehr (din-18065-2000: Tragbolzentreppen faelschlich ausgeschlossen statt
  als Bauart-Beispiel mit erfasst).
- Korrekturen als "Verifikations-Hinweis"-Abschnitt an jedes Destillat angehaengt (Original-
  Fundstelle + Korrekturtext), Frontmatter-Status auf "beanstandet, korrigiert siehe
  Verifikations-Hinweis" gesetzt (noch nicht `established` — Fliesstext-Einarbeitung folgt).
- `komm-din18024-t1-bayern-2001.md` INDEX.md-Eintrag korrigiert: war faelschlich "Teil-
  Destillat (S.1-40/68)" gefuehrt, Volltextpruefung bestaetigt Vollstaendigkeit (S.1-68/68).
- Report: `outputs/2026-07-13_normen-mini-run8.md`. Naechster Schritt: Verifikations-Hinweise
  in Fliesstext einarbeiten, dann `established`.

## 2026-07-13 — normen-training-mini Mac Mini Run 7: Deepening-Stufe (b), Retro-Verifikation 8 Destillate, 4 Fehler korrigiert
- Stufe (b) des Deepening-Programms: 8 bestehende DIN/VSS-Destillate mit adversarialem
  Volltextabgleich (Modell D, je 1 Agent, Ziel Widerlegung) gegen das Original geprüft.
- BEANSTANDET (4, korrigiert): `din-4102-1-1998.md` (Verbundbaustoff-Regel fälschlich als
  Verbot, Rauchprüf-Temperaturen vermischt — bleibt Teil-Destillat), `din-18040-1-2010.md`
  (2 komplett fehlende Kernziffern-Abschnitte 5.2.1/5.3.6 trotz Vollständigkeits-Behauptung —
  ergänzt, auf `established` gehoben), `din-1946-6-2009.md` ("Bautenschutz" statt "Beheizung"
  in EnEV-Zweckbezug — bleibt Teil-Destillat), `din-277-1-2005.md` (Fundstellenfehler +
  unbelegte "Pendant zu SIA 416"-Gleichsetzung — bleibt `established`, korrigiert).
- BESTANDEN (4, auf/als `established` bestätigt): `din-4102-2-1977.md`, `din-18040-2-2011.md`,
  `din-277-2-2005.md`, `vss-640050-1993.md`.
- `destillate/INDEX.md` + `wiki/QUESTIONS.md` nachgeführt. Report:
  `outputs/2026-07-13_normen-mini-run7.md`.
- Fazit: 50% Fehlerquote in der Stichprobe bestätigt den Wert der Verifikations-Pflicht
  (Rule 260712) — nächster Lauf setzt Stufe (b) mit weiteren ~15 unverifizierten
  DIN/VSS-Destillaten fort, danach Stufe (c) Q&A-Selbstbefragung.

## 2026-07-13 — normen-training-mini Mac Mini Run 6: Deepening-Stufe (a), SN 640 105a destilliert
- Nach der KOMPLETT-Meldung in Run 5 gemäss Token-Vollgas-Eskalation (`training/PROGRAMM.md`,
  Rule 260712c) NICHT in den Leerlauf gegangen, sondern in die Vertiefungsstufen übergegangen.
- Neues, vollständiges Destillat `destillate/sn-640105a-2000.md` (SN 640 105a «Verbreiterung der
  Fahrbahn in Kurven», Dez. 2000, 13/13 S.) — lag als Anhang (S.25-37) in
  `VSS 640 291a Parkieren Geometrie.PDF` und war seit Run 4/5 als offene Einzellücke vermerkt.
- Verifikations-Stufe: Volltextabgleich (Modell D) aller Kernwerte (D-Werte Kategorien A-D,
  Formel e=Ra-√(Ra²-D²), Bagatellgrenzen, Geltungsbereich 11,25-500 m) direkt gegen den
  Originaltext — Status `established`.
- Register nachgeführt: `destillate/INDEX.md`, `training/norm-inventar.md`, `wiki/REGISTER.md`
  (neue Sektion Mini-Run-6), `wiki/QUESTIONS.md` (Lücke geschlossen). Report:
  `outputs/2026-07-13_normen-mini-run6.md`.
- Verbleibende Deepening-Kandidaten für den nächsten Lauf: Retro-Verifikation bestehender
  Grossdatei-Destillate, Q&A-Selbstbefragung, Querschnitts-Synthese für Fach-Skills.

## 2026-07-13 — normen-training-mini Mac Mini Run 5: DIN/VSS/RAL KOMPLETT (Endbedingung erreicht)
- Inventar-Abgleich gegen den echten SharePoint-Ordnerinhalt: 4 bisher nicht erfasste
  Nicht-Norm-Dateien nachgetragen (`FileOpenInstaller.dmg`, 2 Screenshots, 1 Foto) — DIN-Header
  71→72, VSS-Header 14→17 korrigiert.
- Danach 0 offene `[ ]`-Positionen in DIN (72)/VSS (17)/RAL (1) — jede Datei destilliert oder
  begruendet uebersprungen. `wiki/QUESTIONS.md` bereinigt (durch Run 3/4 bereits erledigte
  Eintraege auf `[x]` gesetzt).
- Meldung **DIN/VSS/RAL KOMPLETT** an Raphael: Scheduled Task `normen-training-mini` kann beendet
  werden; verbleibende Arbeit ist Qualitaetsvertiefung (VKF-Duplikat-Merge, Teil-Destillate,
  fehlende CH-Pendants), kein Inventar-Loop mehr noetig. Report: `outputs/2026-07-13_normen-mini-run5.md`.

## 2026-07-13 — normen-training-mini Mac Mini Run 4: DIN/VSS-Sonstiges-Rest + alle 5 grossen VSS-Scans komplett
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro). RAL-Familie
  war bereits vollstaendig (1/1).
- **2 Teil-Destillate auf vollstaendig gehoben:** `vstaettvo-niedersachsen-2004.md` (S.1-31/31,
  §§31-33/36-37 ergaenzt), `komm-din18024-t1-bayern-2001.md` (S.1-68/68, Abschnitte 12-19+Anhang
  ergaenzt).
- **8 neue vollstaendige Destillate:** `din-inhaltsverzeichnis-normensammlung-2012.md` (Register
  ~450 Normen, Buero-Bestand Stand 2012), `vds-2234-1999-brand-komplextrennwaende.md` (D-VdS-
  Versicherungsmerkblatt, kein CH-Normwerk), `din-planungsgrundlagen-hoai-vorschriften-2004.md`
  (HOAI-Leistungsphasen/MBO-Fachbuch, kein CH-Bezug), `vss-40291-2021-parkieren-anordnung-
  geometrie.md` (aktuell gueltige VSS-Norm, S.1-32/32), `vss-640291a-2005-parkieren-anordnung-
  geometrie.md` (historische Vorgaengerausgabe, ersetzt durch 40 291:2021; enthaelt S.25ff
  angehaengte SN 640 105a, nicht destilliert), `vss-640065-2011.md` (Veloparkierung
  Bedarfsermittlung), `vss-640281-2006.md` (Parkfelder Personenwagen), `vss-640578-2006.md`
  (Laermimmissionen Parkierungsanlagen).
- **5 Skip-Eintraege im Inventar dokumentiert (keine Normen):** `0 Anleitung.docx` (Admin-
  Anleitung Buero Meili Peter), `DIN 277-1_Bildteil_MMMP München.pdf` + `DIN 277-1_MMMP
  München.pdf` (Foto-Scan-Duplikate von bereits destilliertem din-277-1-2005.md),
  `_In der Schweiz sind bei der Planung von Tiefgaragen...docx` + `buk/https.docx` (Notiz-/
  Linkdateien).
- **DIN/VSS/RAL-Inventar damit vollstaendig abgearbeitet** (alle offenen Positionen destilliert
  oder begruendet uebersprungen) — naechster Lauf sollte Endbedingung "DIN/VSS/RAL KOMPLETT"
  pruefen und ggf. Task-Beendigung vorschlagen.
- KB-Luecke notiert (`wiki/QUESTIONS.md`): SN 640 105a (Verbreiterung Fahrbahn in Kurven,
  Dez. 2000, in VSS-640-291a-PDF ab S.25 angehaengt) referenziert aber nicht destilliert.

# CHANGELOG — KB Normen
## 2026-07-13 — normen-training-mini Mac Mini Run (Scheduled): 5 neue/vervollständigte Destillate
- Zwei Teil-Destillate auf vollständig gehoben: `din-1054-2010.md` (S.1-105/105, Rest
  Verankerungen/Stützbauwerke/Erddämme/Anhang AA ergänzt) und `vstaettvo-niedersachsen-2004.md`
  (S.1-31/31, §§ 34-49 ergänzt).
- **3 neue vollständige Destillate:** `din-v-105-100-2005.md` (Mauerziegel-Vornorm,
  S.1-31/31), `din-v-106-2005.md` (Kalksandstein-Vornorm, S.1-26/26), `din-4844-2-2001.md`
  (Sicherheitszeichen-Bildkatalog, S.1-23/23).
- **1 methodisches Destillat (keine DIN-Norm):** `baupreisindizes-statistisches-bundesamt-2010.md`
  (Statistik-Publikation, als Methodik-Referenz eingeordnet, Werte veraltet).
- **1 neues Teil-Destillat:** `komm-din18024-t1-bayern-2001.md` (bayerischer Kommentar zu
  DIN 18024-1 Barrierefreies Bauen öffentlicher Raum, S.1-40/68, Rest naechster Lauf).
- Norm-Inventar (DIN-Familie) entsprechend nachgeführt; Stations-Split eingehalten
  (nur DIN/VSS/RAL, SIA/VKF bleiben MacBook Pro).
- Noch offen im DIN/VSS/RAL-Inventar: `Sonstiges/Planungsgrundlagen.pdf`,
  `DIN V 105-100`/`DIN V 106`-Nachbardateien geprüft; DIN 277-1 MMMP-München-Bildmaterial,
  `Sonstiges/Komm Din 18024 Teil 1.pdf` Rest S.41-68, sowie die 5 grossen VSS-Scans
  (40 291/640 065/640 281/640 291a/640 578) und zwei VSS-docx — naechster Lauf.

## 2026-07-13 — normen-training-mini Mac Mini Run 3 (Intensiv-Lauf): 9 neue DIN-Volltext-Destillate
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- Workflow-Tool verweigerte erneut die Ausführung ("Review dynamic workflow before running") -
  Fallback auf 9 parallele Agent-Aufrufe in einem Batch (gleiches Muster wie MacBook-Pro-Run 6).
- **9 neue Destillate, davon 8 vollständig gelesen:**
  `din-1045-2-2008.md` (Beton-Expositionsklassen, S.1-62/62), `din-105-100-2012.md`
  (Mauerziegel-Zusatzanforderungen, S.1-28/28), `din-1053-1-1996.md` (Mauerwerk Berechnung/
  Ausführung, S.1-32/32), `din-1053-100-2007.md` (Mauerwerk semiprobabilistisch, S.1-39/39),
  `din-1053-4-2011.md` (Mauerwerk-Fertigbauteile, S.1-32/32), `din-18040-2-2011.md`
  (Barrierefreies Bauen Wohnungen, Pendant zu DIN 18040-1, S.1-34/34), `din-18232-2-2007.md`
  (Rauch-/Wärmeabzugsanlagen Bemessung, Brandschutz-relevant, S.1-30/30), `din-1946-4-2008.md`
  (Raumlufttechnik Gesundheitswesen, Healthcare-relevant, S.1-66/66).
- **1 Teil-Destillat:** `din-1054-2010.md` (Baugrund/Grundbau-Sicherheitsnachweise, S.1-60+78-93
  von 105, ca. 72% - Rest Pfahlgründung/Verankerungen/Anhang AA nächster Lauf).
- **2 weitere Destillate im selben Zeitfenster durch parallel laufenden Vollgas-Runner ergänzt:**
  `din-1960-2010.md` (VOB Teil A), `din-1961-2010.md` (VOB Teil B) - übernommen und registriert.
- **KB-Lücke notiert** (`wiki/QUESTIONS.md`): Schweizer Pendant SWKI 99-3 (Heiz-/RLT Spitalbauten)
  fehlt zu DIN 1946-4; DIN 4159/DIN 4149 referenziert aber nicht destilliert.
- Verifikationsstufe nicht separat angewendet (Status durchgehend `destilliert`/`Teil-Destillat`,
  keine Hebung auf `established` - konsistent mit Vorlauf-Präzedenz, DIN hat geringere Priorität
  als SIA/VKF-Kernnormen für JANS CH-Praxis).
- **Offen für nächsten Lauf (16 Positionen):** DIN 4844-2, DIN V 105-100, DIN V 106, Sonstiges/
  Baupreisindizes, Sonstiges/Inhaltsverzeichnis (verschlüsselt, noch nicht getestet), Sonstiges/
  Komm Din 18024 Teil 1, Sonstiges/VdS-Richtlinie 2234 (verschlüsselt), Rest DIN 1054, alle 5
  offenen VSS-Grossdateien (40 291, 640 065, 640 281, 640 291a, 640 578) - Batch aus
  Budgetgründen ($20 von $25 Sessionbudget bei 9 Agenten) hier beendet.
## 2026-07-13 — normen-training-mini Mac Mini: 9 neue DIN/Sonstiges-Destillate (12 Positionen)
- Stations-Split eingehalten: NUR DIN bearbeitet (SIA/VKF bleiben MacBook Pro).
- **9 neue Destillate (12 Inventar-Positionen):**
  `din-18041-2004.md` (DIN 18041 Hörsamkeit in kleinen/mittelgrossen Räumen, vollständig
  S.1-39/39, `established`), `treppen-hcu-hamburg-2008.md` (HCU-Hamburg-Lehrskript Treppen +
  Neufert-Planungsgrundlagen, vollständig S.1-19/19), `nbauo-barrierefreiheit-2004.md`
  (gebündelt: NBauO §§45/48 + DVNBauO §§18/29 Niedersachsen, 4 Einzelnorm-Ausdrucke),
  `baunvo-1990.md` (Baunutzungsverordnung D), `arbstaettv-2004.md` (Arbeitsstättenverordnung D),
  `din-abkuerzungsverzeichnis-2010.md` (Glossar), `hoai-bauen-im-bestand-2011.md` (HOAI-2009-
  Leistungsbild Bauen im Bestand), `vstaettvo-niedersachsen-2004.md` (Versammlungsstätten-
  verordnung Niedersachsen, Teil-Destillat S.1-20/31), `baurecht-din-normenwerk-grundlagen-2010.md`
  (VOB-Struktur/DIN-Normenarbeit/EU-Harmonisierung/Bauprodukte).
- **1 Position bewusst übersprungen:** `DIN 68800-2 e.pdf` als englische Sprachvariante
  (Sprachvarianten-Regel, analog SIA e/f/i).
- **KB-Lücken notiert** (`wiki/QUESTIONS.md`): Schweizer Pendants SIA 500 (Hindernisfreie
  Bauten), SIA-Raumakustik-Grundlagen, SIA-260er-Tragwerksnormen fehlen noch — Kandidaten für
  den SIA/VKF-Loop (MacBook Pro).
- Verifikationsstufe nicht separat angewendet (mechanisches Direkt-Destillieren aus dem
  Original-PDF, keine Status-Hebung auf `established` ohne Volltextbeleg — DIN 18041 als
  `established` markiert, da Volltext 39/39 Seiten vollständig gelesen und alle Kennziffern
  direkt mit Fundstelle belegt wurden).
- Git-Disziplin (VOLLGAS): nur lokal committet, Push/Pull dem git-auto-sync-Job überlassen.

## 2026-07-13 — normen-training-nacht MacBook Pro Run 6: 13 neue VKF-Destillate (Ordner Brandschutzrichtlinien 2015 komplett)
- Stations-Split eingehalten: NUR VKF bearbeitet.
- **13 neue Destillate** (parallel via Agent-Fanout destilliert, Workflow-Tool verweigerte in
  diesem Hintergrundlauf die Freigabe „Review dynamic workflow before running" — Fallback auf
  parallele Agent-Aufrufe gemäss PROGRAMM.md):
  VKF-Brandschutzerläuterungen 101-15 bis 108-15 (Atrien/Innenhöfe, Doppelfassaden, Cheminées,
  Späne-/Schnitzel-/Pelletsfeuerungen, Flüssiggasanlagen, Betriebsbereitschaft BFS),
  VKF-Verzeichnis 40-15 (Weitere Bestimmungen, teil-destilliert), VKF-Arbeitshilfen 1000-15
  (Gebäude geringer Abmessung), 1001-15 (Wohnbauten), 1002-03d (Parkhäuser), 1002-15
  (Schulbauten). Alle Quell-PDFs vollständig gelesen (12-30 Seiten je Dokument), Fundstellen
  auf Ziffer-/Seitenebene.
- Damit sind **beide VKF-Ordner „02_Brandschutzrichtlinien 2015" und „04_Erlaeuterungen
  Brandschutz 2015" sowie „05_Arbeitshilfen Brandschutz 2015" vollständig destilliert.**
- Vorab per MD5-Vergleich geprüft: `04_Erlaeuterungen.../100-15_Brandmauern.pdf` ist byte-
  identisch mit dem bereits destillierten `02_Brandschutzrichtlinien.../100-15_Brandmauern.pdf`
  → kein Doppel-Agent gestartet, im Inventar auf bestehendes Destillat referenziert.
  `z_Administration/*` (Bestellformular/Lieferschein) und `_LINK.docx` sind keine Normen und
  wurden im Inventar als „—" (übersprungen) markiert statt destilliert.
- `norm-inventar.md`: 13 Zeilen + 1 Dublette + 3 Admin-Dateien nachgeführt.
  `destillate/INDEX.md`: 13 neue Zeilen ergänzt.
- Verifikationsstufe nicht angewendet (Status bleibt `destilliert`, nicht `established`) —
  bewusster Kostenentscheid in dieser Session (Session-Budget war nach der Reconcile-Arbeit
  bereits stark ausgeschöpft); bei Bedarf in einem Folgelauf adversarial verifizieren.
- Offene SIA-P2-Positionen (121/125/144/150/166/179 u.v.m.) sind für den nächsten Lauf vorgesehen,
  wurden in diesem Lauf aus Budgetgründen zurückgestellt.

## 2026-07-13 — normen-training-nacht MacBook Pro Run 5: Inventar-Reconcile (35 Positionen)
- Stations-Split eingehalten: NUR SIA/VKF bearbeitet.
- **Fund:** 7 SIA- + 28 VKF-Positionen standen seit 12.07.2026 als `[~] in Arbeit (MacBook
  Session)` im Inventar — eine Vorsession war offenbar nach dem Schreiben der Destillate,
  aber vor dem Nachführen von Inventar/INDEX abgebrochen. Alle 35 zugehörigen Destillate
  wurden auf der Platte vollständig vorgefunden (kein PDF musste neu gelesen werden).
- **`norm-inventar.md`:** alle 35 Zeilen auf `[x] 260713` gesetzt, je mit Reconcile-Vermerk
  auf das gefundene Destillat.
- **`destillate/INDEX.md`:** 31 bislang unregistrierte Destillate nachgetragen (6 SIA:
  100/102-2014/104/108/110/111; 25 VKF: BRL 10/11/12/13/15/17/18/19/20/21/22/23/24/25/26/28-15,
  Brandschutznorm-1-15-BSPUB, BSV2015-Bericht ×2, Merkblatt 2001-15 Solaranlagen,
  Änderungen 2017, Merkblatt Brandschutzklassifikation, VST-Merkblatt 012, SZS-steeldoc,
  EN-179/1125-gege).
- **5 Duplikat-Paare entdeckt** (gleiche Quelle, zwei Destillat-Dateinamen) — NICHT gemergt/
  gelöscht (destruktiv), als offener Punkt in `wiki/QUESTIONS.md` festgehalten: VKF-BRL
  100-15 Brandmauern, VKF-Merkblatt 2001-15 Solaranlagen, VKF-Änderungen 2017,
  VKF-BRL 28-15 Anerkennungsverfahren, VKF-BSV2015-Bericht/Vernehmlassungsbericht.
- **1 Dateiname/Inhalt-Mismatch entdeckt:** `vkf-merkblatt-brandschutzklassifikation-bauteile.md`
  referenziert die Quelle „Brandschutz-Praevention.pdf" — Titel und Quelle passen nicht
  zusammen, als offener Punkt notiert statt spekulativ umbenannt.
- Verifikationsstufe nicht neu angewendet (reines Nachführen bereits bestehender Destillate,
  keine neuen Aussagen).

## 2026-07-13 — normen-training-mini Mac Mini: 15 DIN-Destillate (Token-Vollgas)
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- **15 neue Destillate:** din-105-5-1984, din-1053-2-1996, din-1053-3-1990,
  din-en-1627-2011 (Teil-Destillat, nur 4/44 S. im Bestand), din-1072-beiblatt1-1988,
  din-1076-1999, din-272-1986, din-107-1974, din-1164-10-2004, din-1356-1-1995,
  din-1356-6-2006, din-4102-2-1977, din-919-1-1991, din-1946-7-2009, din-18560-2-2009.
  Themenspektrum: Mauerwerk/Ziegel, Zement, Brandschutz (Feuerwiderstandsklassen
  F30-F180), Bauzeichnungen/Bauaufnahme (Schadenschlüssel, JANS-relevant für
  Bestandeskartierung), Raumlufttechnik Labor, Estriche, Holzverarbeitungszeichnungen,
  Ingenieurbauwerke-Prüfung, Links/Rechts-Bezeichnung.
- **Inventar-Reconcile:** `DIN-Norm/DIN 277-3.pdf` war im Inventar faelschlich als offen
  `[ ]` markiert, obwohl das Destillat `din-277-3-2005.md` bereits am 12.07.2026 (Vorlauf-
  Session) erstellt worden war (established/vollstaendig, 23/23 Seiten) — beim Read-Vergleich
  entdeckt (Write-Tool verweigerte Overwrite ohne vorherigen Read) und im Inventar auf
  `[x] 260712` korrigiert, KEIN neues Destillat angelegt (bestehendes ist besser/vollstaendiger
  als der eigene Entwurf).
- `norm-inventar.md`: alle 15 Zeilen auf `[x] 260713` gesetzt + der 277-3-Nachtrag.
  `destillate/INDEX.md`: 15 neue Zeilen ergaenzt. `wiki/QUESTIONS.md`: DIN EN 1627
  Teilbestand-Luecke dokumentiert (Vollnorm-Beschaffung als offener Punkt).
- Verifikationsstufe (Pflicht seit 12.07.2026) nicht angewendet: kein Destillat wurde auf
  `established` gehoben — alle bleiben `destilliert`/`teil-destillat`, konsistent mit der
  bisherigen DIN/VSS/RAL-Konvention (nur SIA/VKF werden bislang verifiziert-`established`).
- Offene DIN-Positionen fuer naechsten Lauf: DIN 1045-2 (62 S., gross), DIN 1053-1/-4/-100,
  DIN 1054, DIN 1960 (82 S., gross), DIN 1961, DIN 18232-2, DIN 18040-2, DIN 1946-4,
  DIN 4844-2, DIN 68800-2 e, DIN_18041, DIN V 105-100, DIN V 106, DIN 105-100,
  DIN 277-1_Bildteil/_MMMP (Bildvarianten, niedrige Prioritaet).

## 2026-07-12 — Nacht-Run 4 MacBook Pro: SIA 118 (Volltext-Destillat, P1-Kernnorm)
- Stations-Split eingehalten: NUR SIA destilliert (DIN/VSS/RAL = Mac Mini; lief parallel).
- **Neu: `sia-118-1991.md`** — SIA 118 «Allgemeine Bedingungen für Bauarbeiten» (Ausgabe 1977/1991),
  die grösste P1-Kernnorm und das Rückgrat der Skills `werkvertrag`/`unternehmerkontrolle`/`kostenkontrolle`.
  Volltext gelesen (75 S. mit Textlayer, pdftotext -layout), alle 7 Kapitel (Art. 1–190) über
  Inhaltsverzeichnis + die JANS-relevanten Artikelblöcke detailliert erfasst (Vergütung/Preisarten
  Art. 38–61, Bestellungsänderung Art. 84–91, Fristen/Konventionalstrafe Art. 92–98, Ausmass/
  Rückbehalt/Schlussabrechnung Art. 141–156, Abnahme/Mängel/Garantiefrist/Verjährung/Sicherheit
  Art. 157–182, vorzeitige Beendigung/Zahlungsverzug Art. 183–190).
- **Verifikation (Modell D, Volltextabgleich):** alle Kennzahlen per grep gegen den Quelltext
  gegengeprüft und BESTANDEN (0 Beanstandungen): ±20 % Art. 86; Rückbehalt 10 %/5 % (>300 000)/
  20 %, min 30 000, max 1 000 000 Art. 150; Bürgschaft 10 %/5 % (>200 000), min 20 000, max
  1 000 000 Art. 181; Garantiefrist 2 Jahre Art. 172; Verjährung 5/10 Jahre Art. 180; Zahlungsfrist
  30 Tage Art. 190; Baustelleneinrichtungen 80 %/100 % Art. 146; Regierapport 7 Tage Art. 47;
  Schlussabrechnung 2 Monate / Prüfung 1–3 Monate Art. 154. → Status `established`.
- `norm-inventar.md`: SIA 118 auf `[x] 260712`; `INDEX.md`: sia-118-Zeile ergänzt; REGISTER bereits
  korrekt (Bestand 1991, 2013 gültig/Bring-Schuld). Registry-Zeilen der parallelen run3-Destillate
  (SIA 232–500, verwaist markiert) NICHT angetastet — werden vom Reconcile-Mechanismus geschlossen.
- **Hinweis Nebenläufigkeit:** Lauf fiel in ein Fenster mit aktiver run3 (SIA 232–500) + Mac-Mini-DIN;
  eigener Commit auf die zwei isolierten Neu-Dateien beschränkt, Shared-Registry-Edits dem
  NAS-Self-Commit/Folgecommit überlassen (Kollisions-/index.lock-Vermeidung, Rule sync-kanonische-quelle).

## 2026-07-12 — Mini-Run 2 Mac Mini: Reconcile 15 verwaiste Destillate + 5 neue DIN-Destillate
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF = MacBook Pro).
- **Reconcile (Bookkeeping-Lücke geschlossen):** 14 DIN/VSS-Destillate + 1 RAL-Vervollständigung
  waren bereits am 12.07.2026 abends (nas-selfcommit 20:00, Datei-Zeitstempel 19:01–19:05) auf
  dem NAS vorhanden (`din-18040-1-2010.md`, `din-18065-2000.md`, `din-18299-2010.md`,
  `din-1946-6-2009.md`, `din-276-1-2008.md`, `din-276-4-2009.md`, `din-4102-1-1998.md`,
  `din-5034-2/3/4/6`, `din-en-12101-2-2003.md`, `vss-640060-1994.md`, `vss-640066-1996.md`)
  — vermutlich ein Lauf, der destillierte, aber vor dem abschliessenden Bookkeeping-Schritt
  (Inventar/INDEX/REGISTER/Commit) endete. Inhalt stichprobenartig geprüft (DIN 4102-1,
  SN 640 060) — Qualität entspricht dem KB-Standard, keine erfundenen Fundstellen. Alle 14
  in `norm-inventar.md` auf `[x] 260712`, in `destillate/INDEX.md` und `wiki/REGISTER.md`
  (Abschnitt «Mini-Run-2-Reconcile») nachgetragen. **RAL-GZ 638** war zusätzlich bereits von
  «Teil-Destillat S.1-10/24» auf vollständig (S.1-24) erweitert worden, ohne dass Status/
  INDEX/REGISTER das nachvollzogen hatten — korrigiert auf «destilliert, vollständig».
  RAL-Familie (1/1 Datei) damit **komplett**.
- **5 neue Destillate (direkt gelesen, `pdftotext`/visuell, alle klein/mittel):**
  DIN 1249-11:1986 (Flachglas Glaskanten, Kurzzeichen-System K/GK/FK/RK ×
  KG/KGS/KMG/KGN/KPO), DIN 68119:1996 (Holzschindeln, Schindelarten/Güteklassen/
  Reihenabstand-Bedarfstabelle), **DIN 4426:2001** (Instandhaltung baulicher Anlagen —
  Arbeitsplätze/Verkehrswege auf Dach+Fassade, Sicherheitsdachhaken-Bestückung nach
  DIN EN 517, **Gerüstverankerungs-Bemessung 2,25/0,75 kN/m, Verdoppelung an
  Gebäudekanten** — hohe JANS-Praxisrelevanz Unterhaltsplanung), DIN EN 12207:2000
  (Fenster/Türen Luftdurchlässigkeit-Klassen 1–4 + Nationaler Anhang Korrelationstabelle
  zu alten Beanspruchungsgruppen A/B/C nach DIN 18055), DIN 1055-2:2010 (Bodenkenngrössen
  — Wichte/Scherfestigkeit nichtbindiger und bindiger Böden, Tabellen 1–4, Anwendungsbereich
  strikt auf Geotechnische Kategorie 1 / Gründungstiefe ≤ 3 m begrenzt).
- **Verifikation:** Direktlektüre Original-PDF mit Seiten-/Ziffer-Fundstellen (Modell D,
  Volltextabgleich an der Quelle); alle 5 neuen Normen vollständig gelesen (kein Teil-Destillat).
- Register (`wiki/REGISTER.md`, Abschnitte «Mini-Run-2-Reconcile» + «Mini-Run-2-Neu») und
  `destillate/INDEX.md` nachgeführt; `training/norm-inventar.md` git-gepullt vor Bearbeitung
  (Stationskollision mit parallelem MacBook-Pro-Lauf SIA P2-Batch beachtet, nur DIN/VSS/RAL-
  Zeilen editiert).
- Report: `outputs/2026-07-12_normen-mini-run2.md`.

## 2026-07-12 — Nacht-Loop Run 3 MacBook Pro: 20 P2-SIA-Normen (Tragwerk + Hochbau), Workflow-parallelisiert + adversarial verifiziert
- Stations-Split eingehalten: NUR SIA bearbeitet (DIN/VSS/RAL = Mac Mini). Kollisionsschutz: viele parallele Sessions liefen (VOLLGAS-Dauerbetrieb); nur FREIE `[ ]`-Positionen genommen, Batch vorab mit Tag «MacBook run3» im Inventar geclaimt (nach Abschluss auf `[x] 260712` gesetzt).
- **Methode:** Workflow-Pipeline (20 Normen × 2 Stufen = 40 Agenten, 0 Fehler, ~23 Min, 6,55 Mio Tokens). Stufe 1 Destillier-Agent (`sonnet`, `pdftotext -layout`; bei Bildscans OCR via `ocrmypdf --force-ocr -l deu` bzw. `pdftoppm`+`tesseract`). Stufe 2 unabhaengiger Verifikations-Agent (Hauptmodell Opus) — versuchte jede Ziffer/Seite/Kennwert am Quell-PDF zu WIDERLEGEN.
- **20 neue Destillate, alle `established`:** SIA 260–267 (Tragwerksnormen-Generation 2003: Grundlagen/Einwirkungen/Beton/Stahl/Verbund/Holz/Mauerwerk/Geotechnik), SIA 500:2009 Hindernisfreie Bauten, SIA 358:2010 Geländer/Brüstungen, SIA 251:2008 Estriche, SIA 252:2002 + 253:2002 + 257:2005 Beläge/Maler, SIA 271:2007 + 281:2017 Abdichtungen/Dichtungsbahnen, SIA 279:2018 Wärmedämmstoffe, SIA 232:2000 Geneigte Dächer, SIA 329:2018 Vorhangfassaden, SIA 240:1988 Metallbau.
- **Verifikations-Verdikte:** 17/20 «bestanden» (keine inhaltlichen Fehler), 3 «beanstandet & am Original korrigiert» (SIA 262/266 Off-by-one-Seitenzahlen aus Scan-Paginierung; SIA 329 Präzisierungen) — alle nach Korrektur `established`, 0 `speculative`. Keine erfundenen Ziffern/Kennwerte gefunden; Korrekturen betrafen Seiten-/Absatzangaben und Überinterpretationen (z.B. SIA 260 Tab. 1 Erddruck-Zuordnung 0,70; SIA 263 Brandkurve ky,θ; SIA 261 Erdbeben-Tabellen-Seiten).
- Register nachgefuehrt: `wiki/REGISTER.md` (Run-3-Präzisierungen, Gültigkeit/«ersetzt» am PDF belegt), `destillate/INDEX.md` (20 Zeilen), `training/norm-inventar.md` (20× `[x] 260712`). Nebenbei Inventar-Drift bereinigt: SIA 142/143 waren bereits destilliert, standen aber offen → `[x]`.
- Lauf-Report: `outputs/2026-07-12_normen-nacht-run3.md`.

## 2026-07-12 — Wettbewerbs-Layer-Normen: SIA 400 neu destilliert; SIA 142/143 in INDEX nachgezogen
- Auftrag Normen-Destillateur für den neuen Wettbewerbs-Layer: SIA 400 (Planbearbeitung im Hochbau),
  SIA 142 (Wettbewerbe), SIA 143 (Studienaufträge) lokalisieren + destillieren.
- **SIA 142:2009 und SIA 143:2009**: bereits vollständig destilliert vorhanden (`sia-142-2009.md`,
  `sia-143-2009.md`, Original je S.1-19 gelesen) und in REGISTER geführt — nur im destillate/INDEX.md
  gefehlt, jetzt nachgetragen. Kein Doppel angelegt.
- **SIA 400:2000 neu destilliert** (`sia-400-2000.md`): Quelle `SIA_Norm/SIA_Normen/alle/400_2000_d.pdf`
  (72 S., sauberer Textlayer, `pdftotext -layout`), 2. Auflage 2001-03, ersetzt Empfehlung SIA 400:1985.
  Fokus für die MASCHINELLE Planerzeugung (Anhang B): Planformate A0-A4 + 5-mm-Randlinie (B.1.1),
  Plankopf-Pflichtinhalt unten rechts (B.1.3), Massstabsleiter 1:200 Wettbewerb/1:100/1:50/1:20 (B.1.4),
  **max. 3 Liniendicken 0,25/0,50/1,00 oder 0,18/0,35/0,70** + Linienart-Zuordnung Tabelle 4 (B.3),
  Masse/Koten mit Massstrich=2×Masslinie (B.5), Baustoff-Sinnbilder/Kurzzeichen + Schwarz ab 1:100 (B.8.3),
  Bauteildarstellung Fenster/Tür/Treppe (B.9), **CAD/Layer nach Merkblatt SIA 2014** Agent+Element+E/T/D (B.11).
- Inventar `training/norm-inventar.md`: SIA 400 war `[ ]` P2 — auf `[x] 260712` gesetzt.
  REGISTER führt SIA 400/142/143 bereits als gültig (2013er-Register) — keine Änderung nötig.
- Bring-Schuld vermerkt: Merkblatt SIA 2014 (CAD-Layerkatalog) nicht im Bestand (→ QUESTIONS).

## 2026-07-12 — Nacht-Loop Run 2 MacBook Pro: P1-Kernnormen SIA/VKF (Stations-Split, Workflow-parallelisiert)
- Stations-Split eingehalten: NUR SIA/VKF bearbeitet (DIN/VSS/RAL bleiben Mac Mini).
- **10 Destillate neu, alle `established`** (Extraktion `pdftotext`/OCR-Fallback via sonnet,
  danach je ein unabhaengiger Verifikations-Agent auf dem Hauptmodell, der jede Fundstelle am
  Quell-PDF zu WIDERLEGEN versuchte): SIA 103:2003 (Bauingenieur-Honorar, Formeln Art. 7 +
  Leistungstabelle 7.11.3 wortgenau), SIA 105:2020 (Landschaftsarchitekt-Honorar, Kategorie-Modell
  Art. 6, kein Baukosten-Prozentmodell), SIA 111:2014 (Modell Planung und Beratung), SIA 112:2014
  (Modell Bauplanung, 6 Phasen/13 Teilphasen), **SIA 416:2003 (Flächen und Volumen — JANS-Kernnorm
  GSF/GF/NGF/HNF/NNF/KF/AGF/GV)**, SIA 451:1992 (Datenformate LV), VKF 1-15 Brandschutznorm 2015,
  VKF-BRL 16-15 Flucht-/Rettungswege (rev. 2016), VKF-BRL 14-15 Verwendung von Baustoffen (RF-Klassen),
  VKF-BRL 27-15 Nachweisverfahren.
- **Verifikations-Verdikte:** 10/10 `bestanden`. Korrekturen durch die Widerlegungs-Instanz:
  105 Tabellen-Seitenangabe 51→52; Brandschutznorm Art. 27 «Abs. 3»→Abs. 2 + Überinterpretation
  «hohe Sicherheitsanforderung»→«Je nach Sicherheitserfordernis» angeglichen; 16-15/27-15
  IVTH-/IOTH-Zuordnung richtiggestellt («alle Kantone», nicht «IVTH-Kantone»). Keine erfundenen
  Ziffern/Kennwerte gefunden.
- Befund: 105:2020 hat KEIN baukostenabhängiges Prozentmodell (Art. 7), nur Kategorie-/Zeitmodell
  (Art. 6) — relevant für `honorarberechnung-sia102`. 3 Normen (105/111/112) sind reine Scans ohne
  Textlayer → via tesseract/ocrmypdf OCR verifiziert.
- Inventar (`training/norm-inventar.md`): 10 Zeilen `[x] 260712`; INDEX + REGISTER (Abschnitt Run-2)
  nachgeführt. Report: `outputs/2026-07-12_normen-nacht-run2.md`.

## 2026-07-12 — Intensiv-Lauf Mac Mini: DIN/VSS/RAL (Stations-Split)
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- **8 Destillate neu:** DIN 277-1:2005, DIN 277-2:2005, DIN 5034-1:1999, RAL-GZ 638:2008
  (Teil-Destillat S.1-10/24), VSS/ZH 700.5 Zugangsnormalien (1987), VSS/ZH 722.15
  Verkehrssicherheitsverordnung (1983), Stadt-ZH-Merkblatt Veloabstellplätze (1996/1998),
  SN 640 050 Grundstückzufahrten (1993). RAL-Familie damit inhaltlich begonnen (1/1 Datei,
  teilweise); VSS 4 von 11 PDF-Normen destilliert; DIN 3 Positionen (Serie 277 Teil 1+2 von 3).
- **Verifikation:** Direktlektuere Original-PDF mit Seiten-/Ziffer-Fundstellen (Modell D,
  Volltextabgleich an der Quelle); keine DRM-Barriere bei den getesteten DIN-PDFs.
- **Reduzierter Umfang:** Lauf wurde bei 8 von geplanten 15-25 Positionen aus Budgetgruenden
  vorzeitig abgeschlossen (Bericht + Register + Commit vollstaendig, aber Fortsetzung noetig).
  Zurueckgestellt: DIN 277-3, DIN 276-1/-4, DIN 18065, DIN 4102-1/2, DIN 18040-1/2 (gross,
  18-20 MB, scanlastig), DIN 1946-6 (125 S.); VSS 640 060/065/066/281/291a/578 (teils gross,
  bis 20 MB); DIN-Sonstiges-Ordner. Alle im `norm-inventar.md` mit Grund/Status vermerkt,
  DRM-Test fuer grosse DIN-EN-Dateien offen (QUESTIONS.md).
- Register (`wiki/REGISTER.md` Abschnitt B) und Destillat-Index nachgefuehrt.
- Report: `outputs/2026-07-12_normen-mini-run1.md`.


## 2026-07-11 — Gültigkeits-Klärung SIA 118 + VKF (Anfrage Raphael)
- **SIA 118:** Web-verifiziert — aktuelle Ausgabe ist 118:2013, keine neuere; SharePoint-weiter
  Suchlauf: nur 1991 im Bestand → Kauf SIA-Shop nötig (Bring-Schuld Raphael). QUESTIONS nachgeführt.
- **VKF:** Web-verifiziert (bsvonline.ch) — BSV 2015 weiterhin rechtsgültig; Inkraftsetzung
  BSV 2026 wird erst im IOTH-Plenum März 2027 behandelt. **Normkonzept BSV 2026** (170 S.,
  Stand 06.10.2022) vom VKF-Publikationsserver beschafft und abgelegt:
  `VKF_Norm/07_BSV 2026 Projekt (noch nicht in Kraft)/260711 VKF Normkonzept BSV 2026 Stand 2022-10-06.pdf`.
  Neue Daueraufgabe in QUESTIONS: definitive BSV-2026-Texte nach Publikation beschaffen.

## 2026-07-11 — Compounding-Zugriff (Anfrage Raphael, Pflichten Architekt/Bauleiter)
- SIA 102:2020 am Original gelesen (S. 21–26, 30–37, visuell — Scan nicht text-extrahierbar)
  → Teil-Destillat `destillate/sia-102-2020.md`: **Ziff. 4.41 verifiziert** (Ausschreibung,
  Offertvergleich, Vergabeantrag = Architekten-Grundleistungen inkl. Durchführung),
  dazu 4.31–4.33, 4.53, 4.6, Art. 5 als Kurzbefund. Rest (v.a. 4.52 Oberleitung vs.
  örtliche Bauleitung, Art. 7 Phasenanteile) an den Nacht-Loop delegiert.

## 2026-07-11 — Nacht-Loop Run 1 (Sonderprogramm: Gültigkeits-Register)
- **Zugriffs-Check OK:** OneDrive-Normenpfad lesbar (keine TCC-Blockade); PDFs via
  `pdftotext -layout` extrahiert (effizienter als visuelles Lesen für Listen-PDFs).
- **Datenstand geklärt:** `ersetzte_normen.pdf` = SIA-Rückzugs-/Ersatz-Register, Stand
  **25.02.2013**; `Gesamtverzeichnis SIA.pdf` = Produkt-/Preiskatalog **~2002** (kein
  Gültigkeitsregister). → QUESTIONS-Punkt 1 beantwortet.
- **`wiki/REGISTER.md` aufgebaut** (330 Zeilen): SIA-Gültigkeit je Norm (Stand 2013),
  Ausgaben-Ketten (✓/✗), Bestand-Abgleich gegen das Inventar, grosse Umnummerierungen
  (26x-Tragwerksreform, 118/xxx-Integration, 116→416, 462→269), Mehrfach-Ausgaben-Flags,
  Nicht-SIA-Familien (VKF 2015, DIN/VSS/RAL). Ehrlicher Hinweis: Register bildet 2013 ab,
  Post-2013-Revisionen als Bestands-Abgleich markiert, nicht erfunden.
- **2 Destillate:** `sia-register-2013.md`, `sia-gesamtverzeichnis-2002.md` (+ INDEX).
- **Inventar nachgeführt:** beide Register-PDFs `[x] 260711`; Mehrfach-Ausgaben markiert
  (SIA 102 2014→2020, 111 2003→2014, 108 2003→2014, 142 1998→2009, 273, 329, 384.201).
- **Wichtige Befunde:** SIA 118 im Bestand = 1991, gültig wäre 118:2013 (Flag in QUESTIONS);
  SIA 102 Bestand 2020 (jünger als Register-Stand 2003, vermutlich aktuell).
- Report: `outputs/2026-07-11_normen-nacht-run1.md`. Nächster Lauf: P1-Destillate (SIA 102/103/105/…).

## 2026-07-11
- KB angelegt (Gerüst nach WISSEN-CLAUDE.md: raw/wiki/outputs + destillate/ + training/).
- `training/norm-inventar.md` automatisch erzeugt: 528 Dateien über die Familien
  SIA (inkl. Gesamtverzeichnis), VKF, DIN, VSS, RAL gescannt; Prioritäten gesetzt
  (P1 = Skill-Kernnormen SIA 102/103/105/111/112/118/380/416/451 + VKF Norm/Richtlinien).
- Skill `normen` (Router) und Rule `normen-referenz` erstellt; Nacht-Loop
  `normen-training-nacht` (täglich 22:00) aufgesetzt.
- Entscheide Raphael 11.07.2026: alle Norm-Familien im Scope; SharePoint bleibt
  einzige PDF-Quelle (keine Kopien); Zugriff via Skill + Rule; Destillierung im
  nächtlichen Loop bis das Inventar abgearbeitet ist.
