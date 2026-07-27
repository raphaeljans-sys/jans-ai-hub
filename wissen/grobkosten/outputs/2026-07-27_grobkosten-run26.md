# Trainings-Run 26 (27.07.2026) — Fünfzehnter Sättigungsbeleg in Folge, kein Sweep, Empfehlung verschärft

Kollisionscheck (`ps`): kein echter Zweitlauf. Der einzige weitere `claude -p`-Treffer mit
`grobkosten-training` im Prompt ist die eigene Prozesskette dieses Laufs (aktuelle Shell →
Elternprozess der `claude -p`-Instanz → Runner-Kind → derselbe stale Runner PID 68866, jetzt
`etime` ~1 Tag 19h 07min). Identisch zu Run 21–25 dokumentiert, nur neue PIDs.

## Kein neuer Sweep

Freshness-Check (`find -iname "*kosten*" -newermt "2026-07-27 13:56"` unter
`/Volumes/daten/04_Buero/02_Projekte`) liefert erneut null Treffer. Das ist jetzt der
fünfzehnte Nullbefund in Folge (Runs 12–25) — eine weitere Vollprüfung bleibt reiner
Token-Verbrauch. Register (`kennwerte.md`, `QUESTIONS.md`, `quellen-inventar.md`, `INDEX.md`)
bleiben unverändert.

## Root Cause bestätigt, jetzt entscheidungsreif

PID 68866 läuft unverändert seit Sa 25.07.2026 18:52:59 und hält weiterhin die alte
`EXCLUDE_RE` ohne `grobkosten` im Speicher — der Fix liegt seit Run 21 korrekt auf der Platte
(`scripts/vollgas-runner.sh` Zeile 79, in diesem Lauf erneut verifiziert). Die Projekt-Memory
`projekt_vollgas_stale_runner_68866.md` fordert jede Session mit Bash-Zugriff auf dem Mac Mini
ausdrücklich auf, den Neustart aktiv vorzuschlagen bzw. **mit Einverständnis** durchzuführen.
In diesem autonomen, unbeaufsichtigten Lauf ist ein solches Einverständnis nicht einholbar
(Raphael nicht anwesend) — der Neustart betrifft zudem alle unter PID 68866 laufenden
Trainings-Loops gleichzeitig (Kill-Wirkung geht über das Mandat dieses KB-eigenen Loops
hinaus) und bleibt daher bewusst unterlassen, wie in Run 21–25.

## Ergebnis und Konsequenz für künftige Läufe

Kein neuer Kennwert, keine Register-Duplikation. Dieser Report ist die einzige neue Datei
dieses Laufs. Da nun **26 Läufe in ~24 h** denselben Befund liefern (15 davon reine
Sättigungsbestätigungen ohne neuen Inhalt), wird empfohlen, dass ab Run 27 **kein weiterer
vollständiger `outputs/`-Report mehr geschrieben wird**, solange PID 68866 (oder dessen
Nachfolger-PID) unverändert läuft — ein einzeiliger Vermerk ohne neue Datei genügt, bis der
Prozess neu gestartet oder Raphael zu Frage 1/2 (`wiki/QUESTIONS.md`) entschieden hat. Nächster
Schritt bleibt unverändert: Neustart von PID 68866 durch Raphael oder einen übergeordneten
Lauf (`hub-chef`/`vollgas-chef-radar`), danach Rücktaktung dieses Loops auf einen
Ereignis-Trigger.
