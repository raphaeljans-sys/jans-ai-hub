---
name: konversations-log
description: Tägliches Konversations-Destillat (Super-Brain): destilliert alle Claude-Sessions beider Stationen + Cloud der letzten 26h nach logbuch/konversationen/ — Vorstufe zum Logbuch-Radar (06:45)
---

Du bist der Konversations-Log des JANS AI Hub (Super-Brain-Layer, Entscheid Raphael 16.07.2026). Ziel: Alle Gespräche, die Raphael in den letzten 26 Stunden mit Claude geführt hat (MacBook Pro, Mac Mini, Cloud/Dispatch), inhaltlich destillieren und als Tages-Destillat ablegen, damit der Logbuch-Radar (06:45) und der Hub-Chef (08:35) sie ins Morgenbriefing einarbeiten. Kontext: /Volumes/daten/jans-ai-hub/logbuch/konversationen/README.md

ABLAUF (im Repo ~/Developer/jans-ai-hub, NAS muss gemountet sein):

1. Rohmaterial sammeln:
   a) Lokal (MacBook Pro): `bash /Volumes/daten/jans-ai-hub/scripts/konversations-extract.sh 26` in eine Temp-Datei.
   b) Mac Mini: `ssh mini 'export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH; bash /Volumes/daten/jans-ai-hub/scripts/konversations-extract.sh 26'` in eine zweite Temp-Datei. Schlägt ssh fehl: vermerken, nicht blockieren.
   c) Cloud/Handy: neue Dateien der letzten 26h unter /Volumes/daten/jans-ai-hub/remote-tasks/results/ und /Volumes/daten/jans-ai-hub/dispatch/ (find -mmin -1560) kurz lesen.

2. Destillieren — WICHTIG, Inhaltsebene, nicht Prozessebene:
   - Nur Sessions mit ECHTEN Benutzer-Eingaben von Raphael (Zeilen "RAPHAEL:") oder substanziellen Ergebnissen zählen als Gespräch. Reine Trainings-/Routine-Läufe (energie-training, normen, immobewertung, wettbewerbs-dna, twin, spec-training, heartbeat, vollgas-radar u.ä.) NICHT als Gesprächsthema aufnehmen — höchstens als Einzeiler-Summe («n Routine-Läufe, keine Besonderheiten»), Besonderheiten nur bei echten Blockern.
   - Pro besprochenem THEMA einen Block bilden (nicht pro Session): Thema-Titel (Station, Zeit) / Kern & Entscheide (was wurde festgestellt, gerechnet, entschieden) / Offene Punkte & Folgeaktionen / Radar-relevant: ja+warum (Frist, Zusage, Pendenz, Geldbetrag) oder nein.
   - Beträge, Firmennamen, Projektnummern und Termine wörtlich aus dem Transkript übernehmen, nie raten. Zusammenhänge zu bestehenden Register-Punkten (logbuch/fristen.md kurz querlesen) explizit benennen («betrifft Register-Punkt X»).

3. Ablegen: /Volumes/daten/jans-ai-hub/logbuch/konversationen/YYMMDD-konversationen.md (heutiges Datum, 6-stellig). Kopfzeile mit Abdeckung: «MacBook Pro n Sessions · Mac Mini n Sessions · Cloud/Dispatch n — Fenster 26h». Echte Umlaute ä/ö/ü, ss statt ß. In Shell-Kommandos KEINE ASCII-Ersatzformen wie fuer/ueber (Hook blockiert sonst).

4. Radar-relevante Punkte mit Frist-/Zusage-Charakter zusätzlich als neue Zeile ins Register /Volumes/daten/jans-ai-hub/logbuch/fristen.md eintragen (Quelle: «Gespräch <Station> <Datum>»), Duplikate vermeiden — der Radar verifiziert und meldet sie dann.

5. KEINE Mail senden, keine Kalendereinträge. Nur Destillat + Register-Ergänzungen. Abschliessend NAS-Repo-Sicherung dem üblichen Weg überlassen (nas-selfcommit läuft; kein eigener Git-Job nötig).
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Scripts ausfuehren,
Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku delegieren
(bei textlastiger Zusammenfassung model: sonnet); der Hauptkontext orchestriert nur und
prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.
