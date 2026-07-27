# Trainings-Run 24 (27.07.2026) — Dreizehnter Sättigungsbeleg in Folge, Lauf minimal gehalten

Kollisionscheck (`ps`): einziger `claude -p`-Treffer mit `grobkosten-training` im Prompt ist
die eigene Prozessinstanz (PID 15943, Parent-Runner 15942, dessen Parent wiederum der seit
25.07.2026 18:52:59 laufende stale Runner PID 68866, `etime` inzwischen ~43 h) — identische
Prozesskette wie in Run 22/23 dokumentiert, nur mit neuen PIDs.

## Kein neuer Sweep

Freshness-Check auf dem kanonischen Quellpfad (`find -iname "*kosten*" -newermt "2026-07-27
13:00"` unter `/Volumes/daten/04_Buero/02_Projekte`) liefert null Treffer. Runs 12–23 haben
den Bibliotheks-/Formel-/Ereignis-Trigger-Sweep bereits zwölffach in Folge mit Nullbefund
gefahren; eine weitere Vollprüfung liefert nachweislich denselben Nullbefund und ist reiner
Token-Verbrauch (`Kein Leerlauf-Zwang` gilt auch gegen Blindwiederholung, nicht nur gegen
Füllwerte). Register (`kennwerte.md`, `QUESTIONS.md`, `quellen-inventar.md`) bleiben
unverändert — keine weitere Duplikat-Eintragung.

## Root Cause unverändert offen

PID 68866 läuft weiterhin unverändert seit Sa 25.07.2026 18:53 Uhr. Der Fix (`grobkosten` in
`EXCLUDE_RE`) ist laut Run 22 korrekt auf der Platte, greift aber erst nach einem Neustart
dieses Prozesses — der Prozess selbst hält die alte Variable im Speicher. Ein Neustart bleibt
ausserhalb des Mandats dieses KB-eigenen Loops (würde alle unter PID 68866 laufenden
Trainings-Loops gleichzeitig unterbrechen) und ist Sache von Raphael oder eines
übergeordneten Laufs (`hub-chef`, `vollgas-chef-radar`).

## Ergebnis

Kein neuer Kennwert, keine Register-Duplikation. Dieser Report ist die einzige neue Datei
dieses Laufs. Empfehlung unverändert (Run 12–23): Prozess-Neustart, danach Rücktaktung auf
Ereignis-Trigger (neuer Kostenstand aus `kostenkontrolle` ODER Raphaels Entscheid zu
Frage 1/2 in `wiki/QUESTIONS.md`).
