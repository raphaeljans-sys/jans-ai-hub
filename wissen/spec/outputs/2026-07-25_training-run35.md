# Trainingslauf 35 (Verifikationslauf) — 25.07.2026 22:5x

## Ausgewertet
- `wiki/QUESTIONS.md`, `CHANGELOG.md` (Läufe 28–34), `logbuch/fristen.md`, Task-Registry-
  Artefakt `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` und `~/.claude/scheduled-
  tasks/spec-training/SKILL.md`.
- Keine neue reale Spec-Anwendung seit Lauf 24 (SYN-02, bestätigt 20.07.). Neunter
  Verifikationslauf in Folge (Läufe 28–35, alle 25.07.2026).

## P1 (mail@-Blindfleck `ag-gruendung-monitor`) — hält weiter
Keine neue Prüfung nötig über den bereits achtfach bestätigten Befund hinaus; kein neuer
`fristen.md`-Eintrag seit Lauf 34 (Samstagabend, Mo-Fr-Cron plangemäss still).

## Neuer Befund: Taktreduktions-Fix aus Rule 260725 ist AM ARTEFAKT NICHT vollzogen
Lauf 34 hatte das stündliche Feuern von `spec-training` trotz gemeldeter 2x/Tag-Umstellung
nur am Symptom (Zeitstempel-Diff) verifiziert, die Ursache aber offengelassen. Dieser Lauf
hat die Ursache einen Schritt weiter geprüft, direkt am verhaltenssteuernden Artefakt statt
am Meldetext:

- `~/.claude/scheduled-tasks/spec-training/SKILL.md` (lokale Task-Definition, mtime **25.07.2026
  13:18** — also NACH dem in `rules/auto-verbesserungen.md` behaupteten Umstellungszeitpunkt
  12:45) trägt im Frontmatter weiterhin wörtlich: **„Spec-Methode-Training 1x taeglich (04:10,
  fokussiert 25.07.2026: Durchsatz an reale Spec-Nutzung gebunden)"** — nicht „2x täglich
  (04:10/16:10)", wie die Rule behauptet.
- `RemoteTrigger action: list` (die einzige Quelle für den tatsächlichen serverseitigen Cron
  auf claude.ai) liefert in dieser Session **HTTP 401** — kein aktives claude.ai-Login
  verfügbar, identisch zum bereits in einem früheren Lauf dokumentierten Befund. Die
  Registrierungswahrheit bleibt aus dieser Instanz heraus nicht einsehbar.
- Es läuft nur **eine** `spec-training`-Instanz gleichzeitig (PID-Check, keine Zweitinstanz-
  Kollision, Rule 260724 beachtet).

**Einordnung:** Dies ist ein weiterer, jetzt am Artefakt selbst (nicht nur an der Zeitstempel-
Kadenz) belegter Fall der wiederholt in dieser KB dokumentierten Lehre „eine gemeldete
Reparatur ist keine verifizierte Reparatur" (Läufe 12/19/23/25 zum `ag-gruendung-monitor`,
jetzt zusätzlich am eigenen Trainings-Task demonstriert). Die lokale Task-Definition wurde
entweder nie auf 2x/Tag umgeschrieben, oder die tatsächliche Steuerung läuft über einen
anderen Mechanismus (VOLLGAS-Runner-Dispatch trotz `EXCLUDE_RE`, oder eine serverseitige
Routine, die von dieser lokalen Datei unabhängig ist) — beides ausserhalb des KB-Mandats zu
klären.

## Environment
Zählstand (49 Skills, 22 Rules, 16 KBs) unverändert seit Lauf 26 — kein voller Sweep fällig.

## Bewusst nicht getan
- Kein erfundenes F1-Überdehnungsbeispiel.
- Keine Rule-/Skill-/Wiki-Methodik-Änderung ohne neuen Beleg.
- Kein Eingriff in Runner-Konfiguration, Task-Registry oder die lokale `spec-training/SKILL.md`
  selbst (ausserhalb KB-Mandat, Verhaltensänderung an laufendem Scheduled Task) — nur der
  Befund am Artefakt verifiziert und dokumentiert.
- Kein Mailversand (Prompt verlangt es nicht ausdrücklich, VOLLGAS-Leitplanke).

## Offen
- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text als letzte offene Verifier-Domänenzeile.
- UBS-Strecke weiterhin überfällig, Einzahlungstermin Mitte August gefährdet.
- **Verschärft gegenüber Lauf 34:** die lokale Task-Definition selbst zeigt keine 2x/Tag-
  Umstellung — Raphael sollte prüfen, ob `update_scheduled_task` tatsächlich gegen die
  richtige Task-ID lief, oder ob eine zweite Steuerungsquelle (Runner/serverseitige Routine)
  das stündliche Feuern verursacht. Neunter redundanter Lauf desselben Tages, realer
  Kostenimpact.
