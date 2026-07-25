# grobkosten-training — Lauf uebersprungen (Kollision)

Datum: 25.07.2026, 23:42 Uhr
Station: Mac Mini

## Befund

Beim Start dieses Laufs lief bereits eine zweite Instanz desselben Loops auf
diesem Host (PID 12440, gestartet 23:41:51 Uhr, identischer grobkosten-training-Prompt,
`claude -p --max-budget-usd 50 --fallback-model sonnet`).

Gemaess Kollisionsschutz (Rule `auto-verbesserungen.md`, Eintrag 260724 "Trainings-/
Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen") bin ich zurueckgetreten:

- Keine Register-Edits (`training/quellen-inventar.md`, `wiki/kennwerte.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `CHANGELOG.md`)
- Kein `git commit`
- Nur dieser eindeutig benannte Report

## Naechster Schritt

Der naechste regulaere grobkosten-training-Lauf (oder die laufende Instanz PID 12440,
sofern sie den nachfolgenden run4 selbst produziert) setzt beim Stand nach
`2026-07-25_grobkosten-run3.md` fort. Keine weitere Aktion durch diesen Lauf noetig.
