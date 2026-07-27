# Trainings-Run 25 (27.07.2026) — Vierzehnter Sättigungsbeleg in Folge, Lauf minimal gehalten

Kollisionscheck (`ps`): einziger `claude -p`-Treffer mit `grobkosten-training` im Prompt ist
die eigene Prozessinstanz (PID 16383, Parent-Runner 16382, dessen Parent wiederum der seit
25.07.2026 18:52:59 laufende stale Runner PID 68866, `etime` inzwischen ~45 h) — identische
Prozesskette wie in Run 22–24 dokumentiert, nur mit neuen PIDs.

## Kein neuer Sweep

Freshness-Check auf dem kanonischen Quellpfad (`find -iname "*kosten*" -newermt "2026-07-27
13:00"` unter `/Volumes/daten/04_Buero/02_Projekte`) liefert null Treffer. Zwölf vorherige
Läufe (12–24) haben denselben Sweep bereits mit Nullbefund gefahren; eine weitere Vollprüfung
ist reiner Token-Verbrauch. Register (`kennwerte.md`, `QUESTIONS.md`, `quellen-inventar.md`,
`INDEX.md`) bleiben unverändert — keine weitere Duplikat-Eintragung.

## Root Cause unverändert offen, jetzt ~45 h alt

PID 68866 läuft weiterhin unverändert seit Sa 25.07.2026 18:53 Uhr und hält die alte
`EXCLUDE_RE` (ohne `grobkosten`) im Speicher, obwohl der Fix auf der Platte
(`scripts/vollgas-runner.sh` Zeile 79, verifiziert in diesem Lauf) korrekt ist. Ein Neustart
bleibt ausserhalb des Mandats dieses KB-eigenen Loops (würde alle unter PID 68866 laufenden
Trainings-Loops gleichzeitig unterbrechen). Da dieser Zustand jetzt 14 identische Läufe und
~45 Stunden andauert, wurde die Beobachtung zusätzlich als Projekt-Memory persistiert, damit
sie auch ausserhalb dieses CHANGELOGs sichtbar bleibt (Session-übergreifend, z.B. für
`hub-chef`).

## Ergebnis

Kein neuer Kennwert, keine Register-Duplikation. Dieser Report ist die einzige neue Datei
dieses Laufs. Empfehlung unverändert (Run 12–24): Prozess-Neustart (Kill PID 68866, Neustart
via Supervisor `ch.jans.vollgas-supervisor`), danach Rücktaktung auf Ereignis-Trigger (neuer
Kostenstand aus `kostenkontrolle` ODER Raphaels Entscheid zu Frage 1/2 in `wiki/QUESTIONS.md`).
