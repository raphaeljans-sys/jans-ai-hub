# QUESTIONS-Abarbeitung 14 — N58-4-Nebenbefund geklärt, neues Destillat VKF-Merkblatt 2006-15

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit dem eigenen Lauf-Namen ist der eigene, kein Konkurrent.
- **Eigener Prozess:** PID 23048 (Lauf `mschub94`) über `$PPID`/`ps` bestätigt. Parallel liefen
  `mschub91` (SIA-Sweep, andere Register-Zeilen) und `mschub93` (Baurecht-Reglemente-Queue,
  fremde KB) — kein Konkurrent.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf (zu Beginn: «QUESTIONS-Abarbeitung, siebter Lauf»).
  Da die Datei-Nummerierung der `outputs/`-Reports nicht mit den «Lauf»-Ordinalzahlen im
  CHANGELOG übereinstimmt (verschiedene, konkurrierende Zählweisen mehrerer Prozesse), zusätzlich
  per `ls -t outputs/*.md` den nach Mtime tatsächlich jüngsten QUESTIONS-Report ermittelt:
  `2026-08-23_questions-abarbeitung13.md` (20:56 Uhr, neuer als Report 9, dessen Inhalt der
  CHANGELOG-Kopf zu Sessionbeginn zeigte). Dort weitergemacht.

## Ausgangslage

Run 13 hatte die vage Sammelfrage in N58-4 auf zwei präzise Teile verengt (IOTH-Asylsuchende,
bewusst zurückgestellt; zehn 2000er-Merkblätter, priorisiert nach JANS-Relevanz) und einen
konkreten nächsten Schritt benannt: zuerst prüfen, ob VKF-Merkblatt 2006-15 ein eigenständiges
Dokument oder nur ein Alias/Duplikat der bereits destillierten Erläuterung BSE 108-15 ist,
danach die vier praxisrelevantesten Lücken (2003-15, 2008-15, 2009-15, 2011-15) destillieren.

## Durchgeführt

Die Download-URLs aller fünf betroffenen Merkblätter aus dem in Run 13 bereits erzeugten
Astro-JSON-Cache (`/tmp/normsweep-vorschriften2015.html`) extrahiert (Feld `dokumentUrl`,
Muster `services2.vkf.ch/rest/public/georg/bs/publikation/documents/BSPUB-…pdf/content`) und
alle fünf PDFs bezogen: 2006-15 (54 S.), 2003-15 (73 S., 44 MB — hochauflösende Musterpläne),
2008-15 (35 S.), 2009-15 (21 S.), 2011-15 (18 S.).

**2006-15 vollständig gelesen** (S. 1-33 Volltext, Anhang S. 34-54 nur Struktur). Ergebnis:
**kein Duplikat**. 2006-15 ist ein eigenständiges Brandschutzmerkblatt («Ergänzung zur
gleichnamigen Brandschutzerläuterung 108-15», Titelblatt/Einleitung S. 5), gültig ab
01.03.2022, das die Erläuterung 108-15 in der Fassung 01.01.2020 ziffernweise präzisiert. Mit
eigenem Stoff, der in der Erläuterung fehlt: SIA-Phasen-Zuordnung mit RACI-Verantwortungsmatrix,
dreistufige Test-Kaskade (Einzeltest Pflicht → Linientest optional → integraler Test Pflicht),
Funktionserhalt E30 für manuelle-Aktivierung-Übertragungswege, Meldepflicht bei
BMA-Ausschaltung > 24 h. Details siehe neues Destillat.

**Die übrigen vier PDFs (2003-15, 2008-15, 2009-15, 2011-15) wurden bezogen, aber in diesem
Lauf nicht gelesen oder destilliert** — Budget-/Zeitentscheid, siehe unten.

## Nachgeführt

- `destillate/vkf-merkblatt-2006-15-bfs.md` (neu, `established`): Einordnung/Duplikat-Klärung,
  Kernziffern mit Fundstelle (Grundlagen Ziff. 1, SIA-Phasen-Zuordnung Ziff. 3, Betrieb/Wartung
  Ziff. 4, Gültigkeit Ziff. 5), JANS-Praxis-Transfer für die Skills `brandschutz`,
  `ausschreibung`/`werkvertrag`, `unternehmerkontrolle`/`kostenkontrolle`, `auflagebereinigung`.
- `wiki/REGISTER.md`: neue Zeile in der VKF-Tabelle, direkt nach der bestehenden
  2005-15-Zeile.
- `destillate/INDEX.md`: neue Zeile, direkt nach `vkf-brl-108-15-betriebsbereitschaft-bfs.md`.
- `wiki/QUESTIONS.md`: additiver ✅-Nachtrag am N58-4-Nebenbefund, Ursprungswortlaut
  unangetastet (Rule `wissens-bibliothekar` — kein Löschen).
- `CHANGELOG.md`: eigener Eintrag oben.

## Kollisionsprüfung und Verifikation

`git diff --numstat`/`git diff` nach jedem Schreibvorgang geprüft. Die KB stand während dieses
Laufs unter aktivem Parallelschreiben (`mschub91`, SIA-Sweep):

| Datei | Befund |
|---|---|
| `destillate/vkf-merkblatt-2006-15-bfs.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | erster Check 3/2 additiv — eigene Zeile plus zwei fremde Zeilenersetzungen (SIA 381/3, SIA 2028), per `git diff` einzeln gegengelesen, keine Überschneidung; nach dem `nas-selfcommit`-Fenster 21:15 Uhr verbleibender Diff 1/1, eigene Zeile unverändert vorhanden |
| `destillate/INDEX.md` | 2/0, rein additiv, vom `nas-selfcommit` bereits mitgenommen |
| `wiki/QUESTIONS.md` | ein Edit schlug mit «Datei wurde seit dem Lesen geändert» fehl (paralleler Edit von `mschub91` im selben Fenster), Neuversuch nach `git diff` bestätigte keine Überschneidung mit der eigenen Einfügestelle bei N58-4; nach dem Commit `fd4ef28d` verifiziert: eigener Text unverändert unter der N58-4-Sektion vorhanden |
| `CHANGELOG.md` | derselbe Fehlschlag-und-Neuversuch-Fall wie bei `QUESTIONS.md` (Kopfzeile war zwischen Lesen und Schreiben von `mschub91` umbenannt worden); nach Neuversuch: eigener Eintrag vollständig und unbeschädigt oben, der zuvor an Position 1 stehende fremde Eintrag («SIA-Sweep achtzehnte Fortsetzung») unverändert eine Position tiefer erhalten |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

**Lehre für künftige Läufe (gleiche Familie wie Run 9's Selbstkorrektur):** bei aktivem
Parallelschreiben auf `CHANGELOG.md`/`QUESTIONS.md` schlägt ein `Edit` mit exaktem
`old_string`-Match gegen die zuvor gelesene Kopfzeile regelmässig fehl, sobald der andere
Prozess dieselbe Zeile zwischenzeitlich verändert hat. Der Fehler ist in diesem Fall harmlos
(das Tool verweigert den Edit, statt ihn fehlerhaft anzuwenden) — einfach neu lesen und den
`old_string` an den aktuellen Wortlaut anpassen, nicht auf einen älteren Stand zurückschreiben.

## Nicht geleistet / weiterhin offen

- **2003-15 (Brandschutzpläne), 2008-15 (Baustellen-Brandverhütung), 2009-15
  (Sicherheitsstromversorgung), 2011-15 (Gebäudebegrünung)** sind als PDF bereits lokal bezogen
  (`/tmp/vkf-2003-15.pdf`, `/tmp/vkf-2008-15.pdf`, `/tmp/vkf-2009-15.pdf`,
  `/tmp/vkf-2011-15.pdf`, nur lokaler Lauf-Cache, nicht Teil des Repos) — **das ist der
  nächstliegende Ertrag für eine Fortsetzung**, keine erneute Recherche nötig, direkt mit
  `pdftotext -layout` lesen und destillieren. 2003-15 ist mit 73 Seiten und 44 MB (viele
  Rastergrafiken der Musterpläne/Symbole) das aufwändigste der vier.
- Anhang A1-A9 von 2006-15 (S. 34-54) nicht inhaltlich ausgewertet.
- Kein Abgleich gegen den VKF-Publikationsindex, ob 01.03.2022 die aktuell gültige Fassung von
  2006-15 ist (gleiche offene Bring-Schuld N27-1 wie bei den übrigen 2000er-Merkblättern).
- Unverändert offen: N58-1 (Systemaudit, ausserhalb des Einzelfrage-Formats), N60-1/N60-2
  (Entscheid Raphael), SVGW-Scope (Entscheid Raphael), Bezahlschranken-Beschaffungen
  (Bring-Schuld Raphael), IOTH-Asylsuchende-Reihe (bewusst zurückgestellt laut Run 13).
