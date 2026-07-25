# grobkosten-training — Lauf uebersprungen (Kollision)

Datum: 26.07.2026, 00:08 Uhr
Station: Mac Mini

## Befund

Beim Start dieses Laufs lief bereits eine zweite Instanz desselben Loops auf
diesem Host (PID 15467, gestartet 00:07:xx Uhr, identischer grobkosten-training-Prompt,
`claude -p --max-budget-usd 50 --fallback-model sonnet`).

Gemaess Kollisionsschutz (Rule `auto-verbesserungen.md`, Eintrag 260724 "Trainings-/
Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen") bin ich zurueckgetreten:

- Keine Register-Edits (`training/quellen-inventar.md`, `wiki/kennwerte.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `CHANGELOG.md`)
- Kein `git commit`
- Nur dieser eindeutig benannte Report

## Naechster Schritt

Der naechste regulaere grobkosten-training-Lauf (oder die laufende Instanz PID 15467,
sofern sie den nachfolgenden Run selbst produziert) setzt beim Stand nach
`2026-07-25_grobkosten-run4-kollision-uebersprungen.md` bzw. dem letzten inhaltlichen
Lauf `2026-07-25_grobkosten-run3.md` fort. Keine weitere Aktion durch diesen Lauf noetig.

## Beobachtung

Dies ist der zweite Kollisionsfall in Folge innerhalb weniger Stunden (run4 um 23:42,
run5 um 00:08). Moeglicher Hinweis auf eine zu dichte Taktung des Loops relativ zur
Laufzeit einer Instanz (Runner + separater Scheduled-Task-Trigger ueberlappen). Wird
hier nur vermerkt, keine Taktungsaenderung durch diesen Lauf vorgenommen.
