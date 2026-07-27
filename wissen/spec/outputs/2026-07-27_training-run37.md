# Trainingslauf 37 — Spec-Methode (Verifikationslauf, mit Auflösung)

Datum: 2026-07-27 (Montag), 21:38. Elfter Verifikationslauf in Folge — aber der erste,
der eine seit Lauf 34 offene Frage **abschliessend auflöst**, weil in dieser Session der
Zugriff auf die Task-Registry funktionierte (frühere Läufe scheiterten an HTTP 401).

## 1. Stand gelesen
- `wiki/QUESTIONS.md`, `outputs/`, `CHANGELOG.md` (Läufe 28–36).
- **Keine neue reale Spec-Anwendung** seit Lauf 24 (SYN-02, 20.07.2026). Jüngste
  Nicht-Trainings-Outputs unverändert: `2026-07-23_health-check.md`,
  `2026-07-20_syn-02-...-spec.md`, `2026-06-21_ag-gruendung_spec.md`.
- Damit weiterhin Lauftyp **Verifikation** gemäss PROGRAMM (keine erfundenen Refinements).

## 2. Aufgelöst: die Scheduling-Diskrepanz der Läufe 34/35/36

Die Läufe 34–36 meldeten dreimal denselben unaufgelösten Widerspruch zwischen (a) Rule
`auto-verbesserungen.md` 260725 («spec-training auf 2x täglich 04:10/16:10»), (b) der
lokalen Task-Beschreibung («1x taeglich 04:10») und (c) der tatsächlichen Feuerfrequenz
(neun Läufe am 25.07.). Alle drei Bilder sind jetzt erklärt:

| Quelle | Aussage | Befund heute |
|---|---|---|
| Task-Registry (`list_scheduled_tasks`) | `spec-training`, cron `10 4 * * *`, **enabled: true**, lastRunAt **2026-07-27 04:17** (Jitter 413 s) | **1x täglich** ist die Registry-Wahrheit |
| Rule `auto-verbesserungen.md` 260725 | «2x täglich 04:10/16:10» | **falsch** — die Registry kennt nur `10 4 * * *` |
| Runner-Log `logbuch/vollgas/Macbookpro.log` | «START spec-training» 25.07. 22:50 und 26.07. 00:10 | die Häufung am 25.07. kam vom **Vollgas-Endlos-Runner**, nicht vom Cron |

Der Runner hatte spec-training bei der Vollgas-Reaktivierung am 25.07. wieder in den
Endlos-Zyklus genommen (die Drossel-Ausschlüsse 260713/260714 waren entfernt worden).
Inzwischen steht `spec-training` wieder in `EXCLUDE_RE` (`scripts/vollgas-runner.sh:79`),
und seit dem 26.07. 00:10 hat der Runner den Loop nicht mehr gestartet — Zyklus 409 (heute
21:32) listet ihn korrekt nicht mehr. **Kein Rätsel mehr, kein weiterer Beleg nötig.**

## 3. Neu und schärfer: der Ereignis-Trigger-Entscheid ist nicht scharf geschaltet

Am **26.07.2026** hat Raphael entschieden, diese KB vom Zeittakt auf einen Ereignis-Trigger
umzustellen. Der Entscheid steht wörtlich in der Frontmatter von
`~/.claude/scheduled-tasks/spec-training/SKILL.md` (mtime 26.07. 00:33):

> `enabled: false` — «EREIGNIS-TRIGGER statt Zeittakt (Entscheid Raphael 26.07.2026). Diese
> KB hat Saettigung gemeldet und laeuft nicht mehr im Vollgas-Runner/Cron mit. Einziger
> Startweg: scripts/wissens-trigger.sh»

**Der Entscheid ist nur zur Hälfte wirksam.** Zwei belegte Lücken:

- **(a) Die Registry ignoriert das `enabled: false` der Datei.** Sie führt `spec-training`
  weiter als `enabled: true` mit `nextRunAt 2026-07-28 04:16` — und der Cron **hat heute um
  04:17 gefeuert**. Das Frontmatter-Feld wird nur vom Vollgas-Runner ausgewertet
  (`scripts/vollgas-runner.sh:131`), nicht vom Scheduler. **Exakter Fix:**
  `update_scheduled_task` mit `taskId: spec-training`, `enabled: false` (oder
  `delete_scheduled_task`) — erst dann deckt sich die Registry mit dem 26.07.-Entscheid.
- **(b) Der Ersatzweg selbst läuft nicht.** `launchctl list` zeigt für
  `ch.jans.wissens-trigger` **Exit-Status 78**; `logbuch/wissens-trigger/trigger.log`
  enthält nur die Interaktiv-Zeilen vom 26.07. 00:32/00:33, die für 26.07. und 27.07. je
  06:30 geplanten Läufe fehlen, und die in der plist gesetzte `launchd.log` existiert gar
  nicht. Das ist das bekannte Muster **launchd-bash ohne Zugriff auf `/Volumes/daten`**
  (Memory `project_launchd_tcc_smb`): die plist ruft `/bin/bash` auf ein Script auf dem
  SMB-Mount und schreibt ihre Logs ebenfalls dorthin. **Exakter Fix:** `/bin/bash`
  Festplattenvollzugriff geben (Systemeinstellungen → Datenschutz → Festplattenvollzugriff),
  danach `launchctl kickstart -k gui/$UID/ch.jans.wissens-trigger` und den Exit-Status
  gegenprüfen.
- Randnotiz: Für die Spec-KB wäre der Trigger ohnehin wirkungslos —
  `scripts/wissens-trigger.sh:70` nimmt sie ausdrücklich aus («spec laeuft nur auf Zuruf»),
  `TRIGGERS` enthält nur `energie` und `planungsgrundlagen`. Der Ereignis-Trigger ersetzt
  für diese KB also keinen Takt, er **schaltet sie ab** — genau das ist die Absicht, aber
  eben nur, wenn (a) umgesetzt wird.

Dies ist derselbe Fehlertyp wie die Lauf-19-Lehre («eine als behoben gemeldete Reparatur
ist selbst ein Verifier-Signal»), diesmal in der Variante: **eine Entscheidung, die nur ins
Dokument geschrieben wurde, ist keine umgesetzte Entscheidung.** Der Beleg ist erstmals
hart (Registry-Auslesung statt 401), deshalb wird der Punkt hier geschlossen und als
Betriebs-Aktion an Raphael übergeben, nicht ein viertes Mal als offener Widerspruch
weitergetragen.

## 4. P1 (mail@-Blindfleck `ag-gruendung-monitor`) — Vorhersage aus Lauf 36 bestätigt

Lauf 36 hatte die fehlenden Sa/So-Einträge als planmässig (Mo-Fr-Cron) statt als Regression
gedeutet und die Prüfung falsifizierbar gemacht: der Monitor müsse am Montag 27.07. wieder
laufen. **Bestätigt** — Registry `lastRunAt 2026-07-27 07:46`. Die Task-Definition ist
unverändert (mtime 21.07.2026 07:49, mail@ primär via Apple Mail), der P1-Fix hält also
weiter. In `logbuch/fristen.md` steht kein neuer Monitor-Eintrag vom 27.07.; das deckt sich
mit dem Task-Auftrag «meldet nur bei Neuem» und ist keine Regression. Der UBS-Strang selbst
bleibt offen (letzter Registerstand 25.07.: seit 27.06. ohne Antwort, Einzahlungstermin
Mitte August gefährdet) — ausserhalb des KB-Mandats, Sache `logbuch`.

## 5. Environment-Audit (Delta statt Vollsweep)

Zählstand unverändert seit Lauf 26: **49 Skills, 22 Rule-Dateien (19 @-importiert), 16 KBs**
— kein Drift, kein Vollsweep fällig. Neu im Hub seit dem letzten Lauf (Git-Log seit 25.07.):

1. `scripts/wissens-trigger.sh` + `templates/launchd/ch.jans.wissens-trigger.plist` +
   `logbuch/wissens-trigger/` — die neue Guardrail-Schicht «Lauf nur bei geändertem
   Quellmaterial». Befund oben, Ziffer 3(b): geladen, aber nicht lauffähig.
2. `scripts/nas-commit-now.sh` / `nas-selfcommit.sh` — nativer Committer; die Rules
   `git-auto-push` und `sync-kanonische-quelle` sind am 26.07. entsprechend umgeschrieben
   (kein `git` über SMB). Für diesen Loop verhaltensrelevant und hier befolgt.
3. `rules/auto-verbesserungen.md` Eintrag 260726 dazu vorhanden und konsistent — einzige
   Rule-Inkonsistenz bleibt die 2x-täglich-Behauptung im Eintrag 260725 (Ziffer 2).

Riskante Aktionen mit Hook-Bedarf: unverändert keine neuen gegenüber Lauf 26. Der
`umlaut-guard.sh`-Stop-Hook greift weiterhin.

## 6. Bewusst nicht getan
- **Kein Eingriff in die Task-Registry** (`update_scheduled_task`/`delete`) und keine
  Änderung an `spec-training/SKILL.md` — Betriebssteuerung, ausserhalb des KB-Mandats, und
  der Task-Auftrag verlangt keine Schreibaktion. Als exakter Fix vorgelegt.
- **Keine Korrektur der Rule `auto-verbesserungen.md`** (2x-täglich-Behauptung): Rules
  steuern alle Stationen; der Punkt ist durch den 26.07.-Entscheid ohnehin überholt.
  Raphael vorgelegt.
- Kein erfundenes F1-Überdehnungsbeispiel (weiterhin kein genervter Mittelfall in `outputs/`).
- Keine Methodik-Änderung an Wiki/Skill/Gate ohne neuen Beleg; keine Status-Hebung.
- Kein Mailversand.

## 7. Offen
- **Betrieb (Aktion Raphael):** `spec-training` in der Registry auf `enabled: false` setzen,
  sonst feuert der Cron morgen 04:16 erneut gegen den eigenen 26.07.-Entscheid.
- **Betrieb (Aktion Raphael):** `/bin/bash` Festplattenvollzugriff, damit
  `ch.jans.wissens-trigger` nicht weiter mit Exit 78 stirbt (betrifft `energie` und
  `planungsgrundlagen`, nicht diese KB).
- F1-Überdehnungs-Gegentest weiterhin unbelegt (braucht einen realen Fall, in dem das Gate
  genervt hat).
- F3 Marketing/Text bleibt die letzte offene Domänenzeile in der Verifier-Tabelle.
- SYN-02-MVP-Bau Block 1 (`typologie_zu_variante.py`) unverändert ungebaut (SYN-15).
- Sättigungsbefund der KB steht: elf Verifikationsläufe ohne neue reale Spec. Der
  Ereignis-/Zuruf-Betrieb ist die richtige Antwort darauf — er muss nur scharf geschaltet
  werden.
