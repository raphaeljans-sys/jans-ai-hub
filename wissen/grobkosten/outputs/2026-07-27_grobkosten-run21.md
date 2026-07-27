# Trainings-Run 21 (27.07.2026) — Root-Cause zum Taktungsfehler gefunden: Run-20-Fix noch nicht wirksam (stale Runner-Prozess)

Kollisionscheck (`ps`): einziger Treffer die eigene Prozessinstanz (PID 14385, Parent-Runner
14384). Kein Zweitlauf desselben Loops auf diesem Host.

**Befund:** Dieser Lauf startete nur ~1 Minute nach dem Run-20-Commit (13:39:00 Uhr, `27f7a17d`),
obwohl Run 20 `grobkosten` bereits zu `EXCLUDE_RE` in `scripts/vollgas-runner.sh` ergänzt hatte.
Die Datei auf dem NAS trägt den Fix nachweislich (`grep EXCLUDE_RE` bestätigt `grobkosten` in der
Liste, Dateistand 13:38 Uhr). Der Fix ist also korrekt geschrieben, aber **noch nicht wirksam**.

**Ursache identifiziert:** `ps` zeigt zwei Runner-Prozesse auf dieser Station — einen alten,
seit Samstag 25.07.2026 18:52:59 durchlaufenden Prozess (PID 68866, PPID 1, launchd-gestartet)
und einen jüngeren Kindprozess (PID 14384, PPID 68866, gestartet 13:40:37, hat diesen Lauf
gespawnt). Der `EXCLUDE_RE`-Wert wird im Runner-Skript **einmalig als Variable beim
Prozessstart** gesetzt (`EXCLUDE_RE='...'` steht vor der `while :; do ... done`-Schleife) und
danach nie erneut von der Datei nachgeladen — die Schleife liest bei jedem Zyklus nur die
`SKILL.md`-Dateiliste neu ein ("Task-Liste jedes Mal frisch"), nicht aber die Skript-Konstanten
selbst. Ein seit dem 25.07. laufender Prozess führt also weiterhin mit dem **damaligen**
`EXCLUDE_RE` (ohne `grobkosten`), unabhängig davon, was seither im Skript auf der Platte
geändert wurde. Der Fix aus Run 20 greift erst, sobald der laufende Runner-Prozess beendet und
neu gestartet wird (manuell oder über den launchd-Supervisor `ch.jans.vollgas-supervisor`,
sofern der Prozess tatsächlich beendet ist).

**Bewusst NICHT selbst behoben:** Ein Neustart des Runner-Prozesses (`kill` von PID 68866)
würde nicht nur den `grobkosten`-Loop, sondern sämtliche anderen aktuell darüber laufenden
Trainings-Loops (baurecht/twin/energie/planungsgrundlagen/normen u.a.) unterbrechen — das
liegt ausserhalb des Mandats und der Beobachtungsreichweite dieses KB-eigenen Loops und wird
hier nur dokumentiert, nicht ausgeführt. Empfehlung an Raphael bzw. den nächsten
`hub-chef`/`vollgas-chef-radar`-Lauf: den Runner-Prozess auf dieser Station einmal gezielt
neu starten (z.B. `kill <PID>` + Supervisor-Restart abwarten, oder manueller Neustart gemäss
`rules/auto-verbesserungen.md` Eintrag 260725), damit der bereits committete `EXCLUDE_RE`-Fix
für `grobkosten` (und etwaige künftige Ergänzungen) tatsächlich greift.

**Kein neuer Kennwert, keine Registerduplikation:** `wiki/QUESTIONS.md`, `wiki/kennwerte.md`,
`CHANGELOG.md` und `training/quellen-inventar.md` bleiben unverändert — Frage 1/2 sind
unverändert offen und nur durch Raphael lösbar (siehe Run 12-20), ein erneuter identischer
Bibliotheks-/Formel-/Ereignis-Trigger-Sweep wurde bewusst nicht wiederholt (zuletzt Run 17
kanonisch geprüft, Nullbefund). Dies ist der zehnte Lauf in Folge (12-21) ohne neuen
Kennwert — aber der erste, der die technische Ursache der fortgesetzten Taktung über den
reinen Skript-Inhalt hinaus (Prozess- statt Datei-Ebene) klärt.
