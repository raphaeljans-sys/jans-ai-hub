# QUESTIONS-Abarbeitung 16 — letzte drei VKF-Merkblätter der Vierergruppe, Legendenblatt-Herausgeberfrage entschärft

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit dem eigenen Lauf-Namen ist der eigene, kein Konkurrent.
- **Kollisionsprüfung:** `ps aux` zu Sessionbeginn geprüft — ein eigenständiger, parallel
  laufender SIA-Sweep-Prozess (`mschub126`, andere Aufgabe: Register-Zeilen ohne Datei im Haus)
  arbeitete gleichzeitig an derselben KB. Zwei der eigenen Edit-Aufrufe meldeten «Datei seit
  dem letzten Lesen verändert» — beide Male per `git diff` verifiziert, dass es sich um
  additive Änderungen des SIA-Sweep-Laufs handelte, keine Kollision mit den eigenen Edits.
- **Vorlauf gelesen:** `outputs/2026-08-23_questions-abarbeitung15.md` (jüngster
  QUESTIONS-Report nach Mtime). Dessen konkrete Empfehlung: drei VKF-Merkblatt-PDFs
  (2003-15, 2008-15, 2011-15) sind bereits lokal unter `/tmp/` bezogen — direkter nächster
  Schritt ohne erneute Recherche.

## Durchgeführt

**1. VKF-Merkblatt 2008-15 «Brandverhütung auf Baustellen» destilliert.** Original per `curl`
bezogen (`services2.vkf.ch/.../BSPUB-1394520214-3785.pdf`, URL aus dem in einem früheren Lauf
erzeugten Astro-JSON-Cache `/tmp/normsweep-vorschriften2015.html` über den Titel-Treffer
rekonstruiert), 35 Seiten inkl. Anhang vollständig per `pdftotext -layout` gelesen. Kernstoff:
sechs Brandursachen-Gruppen (allgemeine Faktoren, Brandstiftung, elektrische Arbeitsmittel,
provisorische Elektroinstallationen, Heisskleben/Verschweissen/Trocknen offene Flamme,
Schweissen/Schneiden/Funkenflug, Selbstentzündung) mit je eigenem Risiko-/Massnahmenkatalog,
tabellierte Sicherheitsabstände 0.5-5.0 m für Feuerarbeiten, Funkenflug-Gefahrenbereich 10 m
und ein Zwei-Stunden-Limit für Feuerarbeiten vor Arbeitsende, IP44 + Sicherheitsnachweis (SiNa)
für provisorische Elektroinstallationen.

**2. VKF-Merkblatt 2011-15 «Gebäudebegrünung» nachgetragen.** Beim Prüfen der Zieldatei stellte
sich heraus, dass das Destillat `destillate/vkf-merkblatt-2011-15-gebaeudebeguenung.md` bereits
existierte — vollständig, `established`, Stand 23.08.2026 — aber **ohne jede Spur** in
`outputs/`, `CHANGELOG.md` oder `wiki/REGISTER.md`. Ein vorangegangener Lauf muss den
Destillier-Schritt abgeschlossen, aber die anschliessende Nachführung nicht mehr erreicht
haben (nur `git log` zeigte einen `nas-selfcommit` vom 23.08.2026 21:30). Register- und
INDEX-Zeile in diesem Lauf ergänzt, Inhalt selbst nicht neu verifiziert (nur inhaltlich
quergelesen). Nebenbefund: Der Dateiname trägt einen Tippfehler («gebaeudebeguenung» statt
«gebaeudebegruenung», fehlendes r) — nicht selbständig umbenannt, weil Umbenennen nach Rule
`wissens-bibliothekar` destruktiv ist; in QUESTIONS als Vorschlag vermerkt.

**3. VKF-Merkblatt 2003-15 «Brandschutzpläne, Flucht- und Rettungswegpläne, Feuerwehrpläne»
destilliert.** Mit Abstand grösstes der vier PDFs (73 Seiten, 44 MB); `pdftotext -layout`
extrahierte trotz mehrerer Syntaxfehler zu eingebetteten CAD-Schriftarten den vollständigen
Text (5679 Zeilen). Vollständig gelesen: Haupttext Ziff. 1-6, Anhang A1 (Brandschutzkonzept-
Checkliste), Anhang A2 als Strukturübersicht (Symbol-Legende), Anhang C (Weitere Bestimmungen)
und Anhang D (Weitere Hinweise). Bewusst nicht gelesen: Anhang A3-A5 (Musterpläne einfach/
detailliert) und Anhang B (Feuerwehrpläne komplett, S. 35-69) — überwiegend Mustervorlagen mit
wenig destillierbarem Fliesstext. Kernstoff: vier Dokumenttypen (Brandschutzkonzept/
Brandschutzpläne/Flucht-Rettungswegpläne/Feuerwehrpläne) mit QSS-gestufter Notwendigkeit,
Planniveau-Zuordnungstabelle einfach/detailliert nach Nutzung × Gebäudehöhe, ISO 23601:2009 als
verbindliche Norm für Flucht-/Rettungswegpläne, durchgehende Verantwortung der Eigentümer-/
Nutzerschaft für Erstellung UND Nachführung mit zehn benannten Auslösern.

**4. Cross-Check-Ertrag (ungeplant, aus Anhang A2 von 2003-15):** Die dort abgedruckte
Symbol-Legende trägt exakt dasselbe Blattdatum (16.12.2016), dieselbe Gruppengliederung,
denselben Wortlaut und dieselben Kennwerte wie das separat seit 27.07.2026 als `speculative`
geführte Legendenblatt `brandschutzplan-legende-symbole-2017.md` — dessen damaliger
Hauptoffenpunkt («Herausgeber nicht am Dokument belegt») ist damit strukturell entschärft. Der
Status bleibt bewusst `speculative`, weil ein eigener Extraktionsversuch der Poller-RGB-Werte
aus der komplexen Anhang-A2-Tabelle einem dort bereits pixelgenau verifizierten Wert
widersprach — die unzuverlässigere Textextraktion wurde NICHT übernommen, nur als offener
Punkt vermerkt (keine Korrektur ohne verlässliche Quelle, Rule `wissens-bibliothekar`).

## Nachgeführt

- `destillate/vkf-merkblatt-2008-15-brandverhuetung-baustellen.md` (neu, established)
- `destillate/vkf-merkblatt-2003-15-brandschutzplaene.md` (neu, established für gelesenen Teil)
- `destillate/brandschutzplan-legende-symbole-2017.md` (Offene-Punkte-Abschnitt erweitert,
  `links:`/`last_updated` nachgeführt, Status unverändert `speculative`)
- `wiki/REGISTER.md`: drei neue Zeilen (2003-15, 2008-15, 2011-15-nachgetragen)
- `destillate/INDEX.md`: drei neue Zeilen
- `wiki/QUESTIONS.md`: additive ✅-Nachträge unter N58-4, Gesamtstand «5 von 10
  Klasse-2-Lücken destilliert» vermerkt
- `CHANGELOG.md`: eigener Eintrag oben (vor dem zuletzt erschienenen SIA-Sweep-Eintrag), dieser
  unverändert gelassen

## Kollisionsprüfung und Verifikation

`git diff --numstat` nach Abschluss aller Schreibvorgänge:

| Datei | Befund |
|---|---|
| `destillate/vkf-merkblatt-2008-15-brandverhuetung-baustellen.md` | `??` (echte Neuanlage) |
| `destillate/vkf-merkblatt-2003-15-brandschutzplaene.md` | `??` (echte Neuanlage) |
| `destillate/brandschutzplan-legende-symbole-2017.md` | additiv, kein Text gelöscht |
| `wiki/REGISTER.md` | 20/5 im Gesamtdiff — die 5 Deletions geprüft: es sind Zeilen, die der parallele SIA-Sweep-Lauf zwischen Lesen und Schreiben bereits in-place erweitert hatte (Textersatz durch den fremden Lauf, kein eigener Verlust) |
| `destillate/INDEX.md` | additiv, 3/0 |
| `wiki/QUESTIONS.md` | additiv, reiner Nachtrag unter N58-4 |
| `CHANGELOG.md` | eigener Eintrag oben eingefügt, bestehender SIA-Sweep-Eintrag unverändert |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / weiterhin offen

- **2000-15, 2002-15, 2004-15, 2007-15, 2010-15** — die restlichen fünf der zehn in N58-4
  benannten Klasse-2-Lücken (2000er-Merkblätter), unpriorisierte Bring-Schuld, keine PDFs
  lokal bezogen.
- **Anhang A3-A5 und B von 2003-15** (Feuerwehrpläne-Mustervorlagen inkl. eigenem
  Symbolkatalog B12 «Übersicht Feuerwehr-Symbole») nicht destilliert — Kandidat für einen
  künftigen Lauf bei konkretem Feuerwehrplan-Bedarf.
- Pixelgenaue RGB-Gegenprobe von Anhang A2 (2003-15) gegen das Legendenblatt weiterhin offen;
  dazu müsste die Anhang-A2-Seite als Bild (nicht Text) gerendert und gezoomt werden.
- Dateiname-Tippfehler bei `vkf-merkblatt-2011-15-gebaeudebeguenung.md` nicht behoben
  (Entscheid Raphael via QUESTIONS-Vorschlag).
- Unverändert offen: N58-1 (Systemaudit, ausserhalb des Einzelfrage-Formats), N60-1/N60-2
  (Entscheid Raphael), SVGW-Scope (Entscheid Raphael), Bezahlschranken-Beschaffungen
  (Bring-Schuld Raphael), IOTH-Asylsuchende-Reihe (bewusst zurückgestellt).
