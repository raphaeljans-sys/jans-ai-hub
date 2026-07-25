# Spec-Training Lauf 29 (2026-07-25)

## Lauf-Typ
**Verifikationslauf** — keine neue reale Spec-Anwendung seit Lauf 24 (SYN-02, 20.07.); seit
Lauf 28 (heute Vormittag, 13:35) ist nichts Neues in `outputs/` hinzugekommen. Legitimer
Beitrag: Reue-Prüfung von Lauf 28s eigener P1-Aussage gegen die Primärquelle.

## Stand gelesen
- `wiki/QUESTIONS.md`, `outputs/` (kein neuer Eintrag seit Lauf 28), `CHANGELOG.md`.

## Präzisierung zu Lauf 28: «Monitor schreibt täglich bis 25.07.» war zum Prüfzeitpunkt nicht belegt
Lauf 28 (13:35 Uhr) schrieb: *„`logbuch/fristen.md` zeigt durchgehende tägliche Monitor-Einträge
22.–25.07."* Am Artefakt nachgeprüft: `grep -o "Monitor [0-9]{2}\.[0-9]{2}\.2026" fristen.md`
liefert nur **22.07., 23.07., 24.07.** — kein 25.07.-Eintrag, weder morgens noch am Nachmittag.
`~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` (mtime unverändert 21.07.2026 07:49)
läuft laut eigener Historie **Mo–Fr**; der 25.07.2026 ist ein **Samstag** (verifiziert via
`date`/Python). Der fehlende Eintrag ist also **planmässig**, kein Rückfall in die
Schweige-Regression der Läufe 11–13 — exakt der «vor jeder Schweige-Diagnose den Fahrplan
prüfen»-Fall aus Lauf 23 (Fehlalarm 18./19.07.), diesmal in umgekehrter Richtung: nicht die KB
hat fälschlich Alarm geschlagen, sondern **Lauf 28 hat fälschlich Kontinuität behauptet**, die zum
Prüfzeitpunkt nicht vorlag (der Freitag-24.07.-Eintrag ist der aktuellste; ein Samstag-Eintrag war
nie zu erwarten).

**Einordnung:** kein neuer Fehlermodus des Monitors, sondern ein **eigener Präzisionsfehler des
KB-Loops** — «hält»/«läuft weiter» wurde aus dem Kalenderdatum des Prüftags abgeleitet statt aus
dem tatsächlich jüngsten Artefakt-Eintrag. Verschärft die bestehende Lehre «Abnahme muss am
verhaltenssteuernden Artefakt erfolgen, nicht am Meldetext» ([[verifier]]) um die Kehrseite:
das gilt auch für den **eigenen** Meldetext des Loops, nicht nur für fremde «behoben»-Meldungen.

## Umgesetzt
- `wiki/QUESTIONS.md` F2: Reue-Check-Datenpunkt (P1, 25.07., Samstag) — der fehlende
  25.07.-Eintrag ist plankonform, zusammen mit der Präzisierung zur eigenen Meldegenauigkeit.
- `wiki/verifier.md`: ein Satz an der bestehenden Fahrplan-Sektion ergänzt, dass die
  Fahrplan-Prüfung auch für die eigenen Abschluss-Formulierungen des Trainings-Loops gilt.

## Bewusst nicht getan
- Kein Environment-Sweep (Zählstände unverändert seit Lauf 26, 23.07.).
- Kein Eingriff bei SYN-02/`SYNERGIE-REGISTER.md` — unverändert seit dem heutigen
  Synergie-Orchestrator-Lauf 02 (bereits in Lauf 28 verarbeitet).
- Kein erfundenes F1-Überdehnungsbeispiel; Rule `spec-methode.md` unverändert.
- Kein Mailversand.

## Offen
- SYN-02-MVP-Bau Block 1 weiterhin ungebaut (Faktenbasis-Refresh-Hinweis aus Lauf 28 steht).
- F1-Überdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- F3: Marketing/Text als letzte offene Verifier-Domänenzeile.
- `syn02-spec-anstoss`-Task-Duplikat: Löschung liegt weiterhin bei Raphael.
- Nächster echter P1-Check sinnvoll erst nach dem nächsten Mo-Fr-Werktag (Mo 27.07.), mit
  Erwartung eines neuen Montag-Eintrags.
