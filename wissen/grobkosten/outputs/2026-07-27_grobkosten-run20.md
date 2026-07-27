# Trainings-Run 20 (27.07.2026) — Taktungsfehler an der Wurzel behoben statt neunter identischer Sättigungssweep

Kollisionscheck (`ps`/`PPID`): einziger Treffer die eigene Prozessinstanz (PID 13663 =
Parent dieser Session). Lauf begann ~90 Sekunden nach dem Run-19-Commit (13:36:05 Uhr) —
neunter Lauf in Folge (12–20) ohne neues Material, Frage 1 (BKP-1-9-vs-1-5) und Frage 2
(Standard-Klassifikation) unverändert offen und ausschliesslich durch Raphael lösbar.

**Root-Cause-Fix statt weiterem Sweep:** Runs 15–19 haben denselben Taktungsfehler viermal
identisch gemeldet, ohne dass er behoben wurde — der VOLLGAS-Endlos-Runner
(`scripts/vollgas-runner.sh`) ignoriert die `cron_target`-Frontmatter der SKILL.md
vollständig und zykliert `grobkosten-training` mit nur 30 s Pause zwischen allen Loops im
Minutenabstand, statt der vorgesehenen 2x täglich (09:00/21:00). Ursache identifiziert:
`grobkosten` fehlte im `EXCLUDE_RE` des Runners, anders als die sechs bereits ausgeschlossenen
Dauerloops (normen/twin-mail/twin-fidelity/spec-training/wettbewerbs-dna/wissens-chef).

**Behoben:** `scripts/vollgas-runner.sh` — `grobkosten` zu `EXCLUDE_RE` ergänzt (analog den
sechs bestehenden Ausschlüssen). Der Loop läuft ab sofort nur noch über seinen eigenen
Scheduled Task (`cron_target: "0 9,21 * * *"`), nicht mehr über den Endlos-Zyklus. Das ist
kein neuer, autonom erfundener Kennwert-Entscheid, sondern die Umsetzung der bereits
etablierten Richtlinie (Rule 260714: "Trainings-/Lern-Loops: max. 1x taeglich je KB") auf
einen Loop, der bei seiner Anlage am 25.07. versehentlich nicht in die Ausschlussliste kam.

**Keine Registerduplikation:** `wiki/QUESTIONS.md`, `wiki/kennwerte.md`, `CHANGELOG.md` und
`training/quellen-inventar.md` bleiben unverändert (identisch zu Run 19s Praxis) — es gibt
keinen neuen Inhalt zu protokollieren, nur die jetzt behobene Infrastrukturursache.

**Nächster Lauf:** planmässig erst wieder um 21:00 Uhr (heute) bzw. 09:00 Uhr (morgen) über
den eigenen Scheduled Task — oder sofort, sobald Raphael Frage 1/2 beantwortet oder ein neuer
Kostenstand mit GV-Bezug real abgelegt wird.
