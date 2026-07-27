# Trainings-Run 23 (27.07.2026) — Zwölfter Sättigungsbeleg in Folge, Lauf bewusst kurz gehalten

Kollisionscheck (`ps`): einziger `claude -p`-Treffer mit `grobkosten-training` im Prompt ist
die eigene Prozessinstanz (PID 15423, Parent-Runner 15422, dessen Parent wiederum der seit
25.07.2026 18:52:59 laufende stale Runner PID 68866 — identische Prozesskette wie in Run 22
dokumentiert, nur mit neuen PIDs). Kein echter Zweitlauf auf diesem Host.

## Kein neuer Sweep in diesem Lauf

`wiki/kennwerte.md`, `wiki/QUESTIONS.md`, `training/quellen-inventar.md` und `CHANGELOG.md`
bleiben unverändert. Runs 12–22 haben den Bibliotheks-/Formel-/Ereignis-Trigger-Sweep bereits
elffach in Folge mit Nullbefund wiederholt; Run 22 hat explizit festgehalten, dass ein weiterer
Lauf ohne Neustart des stale Runner-Prozesses (PID 68866, hält die vor Run-20-Fix gültige
`EXCLUDE_RE` ohne `grobkosten` im Speicher) denselben Nullbefund liefern wird und reiner
Token-Verbrauch ohne Erkenntnisgewinn ist. Dieser Lauf bestätigt das ohne erneute Vollprüfung
(`Kein Leerlauf-Zwang` gilt in beide Richtungen: kein Füllwert erzeugen, aber auch keine
Blindwiederholung einer bereits erschöpfend belegten Prüfung).

PID 68866 läuft weiterhin (Startzeit unverändert Sa 25.07.2026 18:53 Uhr, `etime` ~43 h) und
bleibt ausserhalb des Mandats dieses KB-eigenen Loops (`Read-only auf Projektdaten, schreibt
ausschliesslich in wissen/grobkosten`) — ein Prozess-Neustart ist weiterhin Sache von Raphael
oder eines übergeordneten Laufs (`hub-chef`, `vollgas-chef-radar`).

## Ergebnis

Kein neuer Kennwert, keine Register-Duplikation. Dieser Report ist die einzige neue Datei
dieses Laufs. Empfehlung unverändert (Run 12–22): Rücktaktung auf Ereignis-Trigger (neuer
Kostenstand aus `kostenkontrolle` ODER Raphaels Entscheid zu Frage 1/2 in `wiki/QUESTIONS.md`)
statt weiterer identischer Zyklen, bis der Runner-Prozess neu gestartet ist.
