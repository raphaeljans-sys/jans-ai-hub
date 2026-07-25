# grobkosten-training — Lauf uebersprungen (Kollision)

Datum: 26.07.2026, 00:36 Uhr
Station: Mac Mini

## Befund

Beim Start dieses Laufs lief bereits eine zweite Instanz desselben Loops auf
diesem Host (PID 20454, gestartet 00:36 Uhr, identischer grobkosten-training-Prompt,
`claude -p --permission-mode acceptEdits --max-budget-usd 50 --fallback-model sonnet`).

Gemaess Kollisionsschutz (Rule `auto-verbesserungen.md`, Eintrag 260724 "Trainings-/
Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen") bin ich zurueckgetreten:

- Keine Register-Edits (`training/quellen-inventar.md`, `wiki/kennwerte.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `CHANGELOG.md`)
- Kein `git commit`
- Nur dieser eindeutig benannte Report

## Naechster Schritt

Der naechste regulaere grobkosten-training-Lauf (oder die laufende Instanz PID 20454,
sofern sie den nachfolgenden Run selbst produziert) setzt beim Stand nach dem letzten
inhaltlichen Lauf `2026-07-25_grobkosten-run3.md` fort.

## Beobachtung — vierter Kollisionsfall in Folge, Taktung dringend zu entzerren

Dies ist bereits der VIERTE Kollisionsfall in Folge innerhalb von rund 55 Minuten
(run4 25.07. 23:42, run5 26.07. 00:08, run6 26.07. 00:32, run7 26.07. 00:36). Vier
aufeinanderfolgende Laeufe haben ausser Kollisions-Reports nichts inhaltlich beigetragen
— der letzte inhaltliche Fortschritt liegt bei run3 (25.07. 22:50), seither reine
Leerlauf-Iteration. Das bestaetigt und verschaerft die Beobachtung aus run6.

Empfehlung (nicht selbst umgesetzt, ausserhalb des Read-only-/Register-Mandats dieses
Laufs): Die Taktung von `grobkosten-training` uebersteigt aktuell klar die typische
Laufzeit einer Instanz (Runner-Zyklus und/oder Scheduled-Task-Trigger feuern im
Abstand von teils unter 30 Minuten, zuletzt sogar 4 Minuten). Sinnvolle Massnahmen:
Mindestabstand zwischen zwei grobkosten-training-Ausloesern deutlich vergroessern,
oder den Loop analog zu `immobewertung-training`/`baurecht-buch-training` auf einen
ereignis-/wochenbasierten Takt zuruecknehmen, bis eine Instanz zuverlaessig durchlaufen
kann, bevor die naechste startet.
