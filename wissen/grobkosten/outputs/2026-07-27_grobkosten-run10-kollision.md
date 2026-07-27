# grobkosten-training — Lauf 10 (Kollisionsfall, 2026-07-27 13:31)

Beim Start dieses Laufs lief bereits eine zweite Instanz desselben Loops auf diesem Host
(PID 12589, gestartet 13:30 Uhr, identischer `grobkosten-training`-Prompt via
`claude -p --permission-mode acceptEdits --max-budget-usd 50 --fallback-model sonnet`).

Gemaess Kollisionsschutz-Regel (Rule `auto-verbesserungen.md`, Eintrag 260724 "Trainings-/
Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen") bin ich zurueckgetreten:

- Keine Edits an `training/quellen-inventar.md`, `wiki/kennwerte.md`, `wiki/INDEX.md`,
  `wiki/QUESTIONS.md`, `raw/_INGESTED.md` oder `CHANGELOG.md`.
- Kein `git commit`.
- Nur dieser eindeutig benannte Report wurde geschrieben (kein Register-Zugriff der
  parallelen Instanz beeintraechtigt).

Naechster Lauf sollte den Stand pruefen, den die parallele Instanz (PID 12589) inzwischen
hinterlassen hat (vermutlich Run 10 unter anderem Dateinamen oder bereits fortgeschrieben),
bevor er selbst eine neue Run-Nummer belegt.
