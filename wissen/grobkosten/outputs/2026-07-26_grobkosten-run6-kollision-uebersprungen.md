# grobkosten-training — Lauf uebersprungen (Kollision)

Datum: 26.07.2026, 00:32 Uhr
Station: Mac Mini

## Befund

Beim Start dieses Laufs lief bereits eine zweite Instanz desselben Loops auf
diesem Host (PID 18527, gestartet 00:32:xx Uhr, identischer grobkosten-training-Prompt,
`claude -p --permission-mode acceptEdits --max-budget-usd 50 --fallback-model sonnet`).

Gemaess Kollisionsschutz (Rule `auto-verbesserungen.md`, Eintrag 260724 "Trainings-/
Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen") bin ich zurueckgetreten:

- Keine Register-Edits (`training/quellen-inventar.md`, `wiki/kennwerte.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `CHANGELOG.md`)
- Kein `git commit`
- Nur dieser eindeutig benannte Report

## Naechster Schritt

Der naechste regulaere grobkosten-training-Lauf (oder die laufende Instanz PID 18527,
sofern sie den nachfolgenden Run selbst produziert) setzt beim Stand nach
`2026-07-25_grobkosten-run4-kollision-uebersprungen.md` / `2026-07-26_grobkosten-run5-
kollision-uebersprungen.md` bzw. dem letzten inhaltlichen Lauf `2026-07-25_grobkosten-
run3.md` fort. Keine weitere Aktion durch diesen Lauf noetig.

## Beobachtung

Dies ist der dritte Kollisionsfall in Folge innerhalb weniger Stunden (run4 25.07. 23:42,
run5 26.07. 00:08, run6 26.07. 00:32). Die Taktung des Loops (Runner-Zyklus + separater
Scheduled-Task-Trigger, beide offenbar im ~20-30-Minuten-Abstand feuernd) ueberlappt
staerker mit der Laufzeit einer Instanz, als der Kollisionsschutz abfedern kann: drei
aufeinanderfolgende Laeufe haben ausser diesem Report nichts beigetragen. Empfehlung
(nicht selbst umgesetzt, da ausserhalb des Read-only-/Register-Mandats dieses Laufs):
Taktung von grobkosten-training pruefen und entzerren, z.B. Mindestabstand zwischen
Runner-Aufruf und naechstem Scheduled-Trigger vergroessern, oder den Loop analog zu
`immobewertung-training`/`baurecht-buch-training` auf einen ereignis-/wochenbasierten
Takt zuruecknehmen, bis die Kollisionsrate sinkt.
