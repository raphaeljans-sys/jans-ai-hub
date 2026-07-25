# Trainingslauf 36 — Spec-Methode (Verifikationslauf)

Datum: 2026-07-26 (Sonntag). Erster Lauf am neuen Kalendertag; die Läufe 28–35 lagen
alle am 25.07.2026 (achter bis neunter Verifikationslauf in Folge, VOLLGAS-Feuerdichte).

## 1. Stand gelesen
- `wiki/QUESTIONS.md`, `outputs/` (letzte neue reale Spec: SYN-02, bestätigt 20.07.2026,
  ausgewertet in Lauf 24), `CHANGELOG.md` (Läufe 28–35).
- Keine neue reale Spec-Anwendung seit Lauf 24. Zehnter Verifikationslauf in Folge.

## 2. Environment-Zählstand (Stichprobe, kein voller Sweep)
Skills 49, Rule-Dateien 22 (19 @-importiert in CLAUDE.md), KBs 16 — identisch zu Lauf 26
und allen Folgeläufen. Kein Drift, kein voller Environment-Audit fällig.

## 3. P1 (mail@-Blindfleck `ag-gruendung-monitor`) — hält weiter
`~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` unverändert mtime
**21.07.2026 07:49**; Schritt 1 nennt mail@ weiter «IMMER via Apple Mail … PRIMÄRKANAL».
`logbuch/fristen.md` bestätigt den jüngsten Monitor-Eintrag vom 24.07.2026 (UBS-Strang
seit 27.06. **29 Tage** ohne Antwort, Einzahlungstermin Mitte August als gefährdet
eingestuft). Für Samstag 25.07. und Sonntag 26.07. liegt planmässig kein neuer Eintrag vor
(Mo-Fr-Cron des Monitors) — dieselbe Wochenend-Lücke, die Lauf 29/30/32 bereits als
planmässig (nicht Regression) verifiziert haben. Kein weiterer Sweep nötig, solange der
Monitor am nächsten Werktag (Mo 27.07.) wieder schreibt.

## 4. Taktreduktions-/Scheduling-Diskrepanz (dritter Beleg, jetzt gehärtet)
Lauf 34 und 35 meldeten bereits: die in Rule `auto-verbesserungen.md` (Eintrag 260725,
«Vollgas wieder aktiv») behauptete Umstellung von `spec-training` auf 2x täglich
(04:10/16:10) via `update_scheduled_task` zeigt sich am lokalen Artefakt nicht. Heute
erneut geprüft: `~/.claude/scheduled-tasks/spec-training/SKILL.md` trägt weiterhin
**mtime 25.07.2026 13:18** und den wörtlichen Text «Spec-Methode-Training 1x taeglich
(04:10, …)». Die tatsächliche Feuerfrequenz am 25.07. (Läufe 28–35, stündlich zwischen
13:35 und 22:53) widerspricht sowohl der lokalen 1x/Tag-Beschreibung als auch der
behaupteten 2x/Tag-Umstellung — keines von beidem erklärt neun Läufe an einem Tag.
`RemoteTrigger action: list` liefert in dieser Session weiterhin HTTP 401 (kein
claude.ai-Login), die serverseitige Registrierungswahrheit bleibt von hier aus nicht
prüfbar. Dies ist jetzt der **dritte Lauf in Folge**, der dieselbe Diskrepanz meldet, ohne
dass sie sich auflöst — analog zur Lauf-19-Lehre «eine als behoben gemeldete Reparatur ist
selbst ein Verifier-Signal»: die Rule behauptet einen Zustand, den das Artefakt nicht zeigt.
Kein Eingriff in die Task-Registry oder die lokale `spec-training/SKILL.md` selbst (Betrieb
ausserhalb KB-Mandat, analog zur Nicht-Reparatur des `ag-gruendung-monitor` durch diesen
Loop) — weiterhin an Raphael zur Klärung vorgelegt, mit der Präzisierung, dass der Befund
jetzt dreifach unabhängig bestätigt ist.

## 5. Bewusst nicht getan
- Kein erfundenes F1-Überdehnungsbeispiel (weiterhin kein genervter Mittelfall in `outputs/`).
- Keine Rule-/Skill-/Wiki-Methodik-Änderung ohne neuen Beleg.
- Kein Eingriff in Runner-Konfiguration, Task-Registry, `spec-training/SKILL.md` oder
  `ag-gruendung-monitor/SKILL.md`.
- Kein Mailversand (Prompt verlangt es nicht ausdrücklich).

## 6. Offen
- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text bleibt letzte offene Domänenzeile in der Verifier-Tabelle.
- SYN-02-MVP-Bau Block 1 (`typologie_zu_variante.py`) weiterhin ungebaut, Faktenbasis seit
  Lauf 28 um `RAUMTYPOLOGIEN.md`/`typology-map.json` gewachsen (SYN-15, unverändert offen).
- UBS-Strecke AG-Gründung 29 Tage überfällig, Einzahlungstermin Mitte August zunehmend
  gefährdet (ausserhalb KB-Mandat, `logbuch`-Betrieb).
- Scheduling-Diskrepanz `spec-training` 1x- vs. 2x-täglich-Text vs. tatsächliche stündliche
  Feuerfrequenz — jetzt dreifach belegt, Klärung bei Raphael.
