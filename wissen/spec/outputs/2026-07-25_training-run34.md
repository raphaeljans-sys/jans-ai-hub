# Trainingslauf 34 (Verifikationslauf) — 25.07.2026 20:58

## Ausgewertet
- `wiki/QUESTIONS.md`, `CHANGELOG.md` (Läufe 28–33), `logbuch/fristen.md`, Task-Registry
  (`~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md`).
- Keine neue reale Spec-Anwendung seit Lauf 24 (SYN-02, bestätigt 20.07.). Achter
  Verifikationslauf in Folge (Läufe 28–34, alle 25.07.2026).

## P1 (mail@-Blindfleck `ag-gruendung-monitor`) — hält weiter
`SKILL.md`-mtime unverändert 21.07.2026 07:49. `fristen.md` (Radar-Stand 25.07., Samstag)
bestätigt denselben Inhalt: UBS 29 Tage ohne Antwort, Einzahlungstermin Mitte August
zunehmend gefährdet. Kein neuer Sweep nötig.

## Neuer Befund: Taktreduktions-Fix aus Rule 260725 wirkt nicht wie beschrieben
Lauf 33 (19:52) hatte vorgeschlagen, `spec-training` an ein Ereignis statt an reinen
Zeittakt zu binden, weil sechs Verifikationsläufe (28–33) allein am 25.07. ohne neuen
Beleg liefen. Zwischenzeitlich wurde in `rules/auto-verbesserungen.md` (Eintrag 260725
«Vollgas wieder aktiv») dokumentiert, `spec-training` sei per `update_scheduled_task` auf
**2x täglich (04:10/16:10)** gesetzt und bleibe bewusst in der `EXCLUDE_RE` des VOLLGAS-
Runners, um Doppelläufe Runner↔Task zu vermeiden — mit Wirksamkeit ab 12:45 (verifizierter
Nachtrag).

Die Läufe 28–34 selbst widerlegen das für den Nachmittag: Zeitstempel 13:35 / 14:11 / 15:25
/ 16:15 / 17:55 / 19:52 / **20:58** — sieben Läufe zwischen 13:35 und 20:58, im Schnitt
knapp **stündlich**, nicht 2x/Tag. Der 04:10/16:10-Cron allein erklärt das nicht; entweder
feuert eine zweite Quelle (VOLLGAS-Runner trotz `EXCLUDE_RE`, ein Dispatch-Pfad, oder die
`update_scheduled_task`-Änderung ist am Cron selbst nicht angekommen — analog zur wiederholt
in dieser KB belegten Lehre «eine gemeldete Reparatur ist keine verifizierte Reparatur»,
Läufe 19/23/25). Dieser Lauf verifiziert nur das Symptom (Zeitstempel-Diff), nicht die
Ursache — eine Ursachenklärung am Runner/Task-Registry-Artefakt liegt ausserhalb des
KB-Mandats.

## Environment
Zählstand (49 Skills, 22 Rules, 16 KBs) unverändert seit Lauf 26 — kein voller Sweep fällig.

## Bewusst nicht getan
- Kein erfundenes F1-Überdehnungsbeispiel.
- Keine Rule-/Skill-/Wiki-Methodik-Änderung ohne neuen Beleg.
- Kein Eingriff in Runner-Konfiguration oder Task-Registry (ausserhalb KB-Mandat) — nur
  Befund verschärft dokumentiert, Ursachenklärung bleibt bei Raphael/Betriebsebene.
- Kein Mailversand.

## Offen
- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text als letzte offene Verifier-Domänenzeile.
- UBS-Strecke 29 Tage überfällig, Einzahlungstermin Mitte August gefährdet.
- **Neu, an Raphael zu klären:** warum `spec-training` trotz dokumentierter 2x/Tag-
  Umstellung weiterhin stündlich feuert — Ursache vermutlich ausserhalb des KB-Mandats
  (Runner-Dispatch oder Cron-Registrierung), aber mit realem Kostenimpact (achter
  redundanter Lauf desselben Tages).
