# Energie-Training — Zurückgetreten (Kollisionsschutz), 2026-07-24 22:38

**Ergebnis: kein Trainings-Lauf durchgeführt — bewusst zurückgetreten.** Kein Register-Edit,
kein Commit, keine Recherche-Fan-out. Dieser Report ist nur der Nachweis, warum dieser
Scheduled-Task-Lauf keine Änderungen hinterlässt.

## Auslöser

Der Scheduled Task `energie-training` feuerte um 22:38. Eine Host-interne Kontrolle (`ps`)
zeigte einen bereits **seit 22:30 laufenden zweiten Energie-Trainingslauf**:

- **PID 83595** — `claude -p "Fuehre EINEN Intensiv-Lauf des Energie-Trainings aus …"`
  (Verweis auf dasselbe `wissen/energie/training/PROGRAMM.md`, Token-Vollgas 6–10 PDFs,
  Workflow-Parallelisierung, `--max-budget-usd 25`). Laufzeit bei Prüfung 8:19 Min, Status
  aktiv (CPU akkumulierend). Gestartet aus dem Mac-Mini-Cron/Dispatch
  (`scripts/cron-training-mini.sh energie`, dispatch/log `20260724-223003-83608`).
- Zusätzlich lief der **Nachtschicht-Zyklus** (PID 83619), der als Priorität 4 ebenfalls die
  nächste fällige Trainingslektion greifen kann.

Das ist exakt der in **Rule auto-verbesserungen 260724** («Trainings-/Lern-Loops: VOR Beginn
auf laufende Zweitinstanz prüfen — Kollisionsschutz») beschriebene Fall: der scheduled Task
UND ein paralleler `claude -p`-Dispatch-Run feuern gleichzeitig auf demselben Host.

## Entscheidung (regelkonform)

Zurückgetreten gemäss Rule 260724:

- **Keine** Edits an geteilten Registern (destillate/INDEX.md, wiki/INDEX.md,
  wiki/BAUHERREN-FAQ.md, wiki/QUESTIONS.md, training/curriculum.md, training/pdf-inventar.md,
  raw/_INGESTED.md, CHANGELOG.md).
- **Kein** `git commit` / `git push` (index.lock-/Merge-Race mit dem aktiven Lauf und dem
  nativen nas-selfcommit vermieden).
- **Kein** Recherche-Fan-out — wäre reine Duplikation der Arbeit des aktiven Intensiv-Laufs.
- Dieser eindeutig benannte Report (`…_scheduled-standdown-2238.md`) belegt die Zurücknahme;
  der native DSM-nas-selfcommit übernimmt ihn additiv, ohne Kollision.

## Lagebild der KB (Stand vor diesem Lauf, unverändert gelassen)

- PDF-Inventar seit Run 65 erschöpft; Arbeit läuft über `training/curriculum.md` (Web-/
  Volltext-Pfad).
- FAQ-Stand lückenlos **F1–F110** (letzte Läufe Run 84/85/86 am 2026-07-23).
- Der aktive Intensiv-Lauf (PID 83595) besitzt die Register-/CHANGELOG-/FAQ-Edits und den
  Run-87-Output samt Commit.

## Für den nächsten regulären Lauf

Nichts nachzuholen aus diesem Lauf. Beim nächsten Takt zuerst prüfen, ob der Intensiv-Lauf
von 22:30 seine Register-Nachführung (Meta-Lehre M5: jedes neue Destillat in INDEX? FAQ?
QUESTIONS geschlossen?) sauber abgeschlossen hat, sonst dort ansetzen.
