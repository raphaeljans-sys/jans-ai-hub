# Rule: Modellwahl bei Routinen (Haiku für Messläufe)

## Hintergrund

Routinen-Läufe (Scheduled Tasks, automatische Messungen, Checks) verbrauchen heute durchgehend Opus, obwohl viele davon nur Datensammlung und Ausgabe nach Vorlage sind — keine Analyse, kein Urteil, keine Überraschungsbehandlung. Bei gleichzeitig hohem wöchentlichem Budget-Ceiling kann dieser Aufwand für Routine schnell ein Drittel des Kontingents aufzehren. Diese Rule setzt Haiku für Routinen ein und behält Opus für Operatives, damit das Budget auf echte Entscheidungen trifft.

## Modellwahl

### Haiku 4.5 (default für Routinen)

**Anwenden auf:**
- `vollgas-chef-radar`, `vollgas-fruehwarnung` — Messung, Metriken, vorgegebenes Format
- `heartbeat-daily` — Status abhaken (NAS, Git, M365, Disk, Symlinks)
- `logbuch-radar` — Datensammlung aus Mail/Kalender/Fristen, strukturierter Bericht
- `konversations-log` — Destillation, Sichten danach sortieren (Urteil: Wichtigkeit kommt von den Tags, nicht von Haiku)
- `mahnwesen-verzugscheck`, `zahlungsabgleich-check` — Abfrage, Zustand auflisten, keine Diagnose
- `ag-gruendung-monitor` — Status aus Postfach + Spec prüfen (Prüfpunkt ja/nein, nicht offen)
- `hub-chef-taeglich` — **nur der Konsolidierungs-Teil** (Briefinganschnitte zusammenfassen, Whitelist-Aktionen wie A1/A2 ausführen). Bei echtem P1-Befund oder Entscheidungsvorlage: Operator wechselt zu Opus (siehe unten)
- `behoerden-zh-check`, `tenant-hygiene-weekly` — Verfügbarkeitsprüfung, Read-only
- Alle **Loop-Trainings** — Destillation aus `raw/`, Artikel-Kompilierung, Refuter-Verifizierung (Urteil ist standardisiert, keine Innovationen)

**Nicht anwenden (bleiben Opus):**
- Alle **manuellen Operatoren-Aufträge** — Raphael arbeitet selbst, jede Session ist ein Operator-Auftrag
- **Entscheidungsfindung** — «soll ich den Loop drosseln?», «ist das ein Leerlauf?», «was ist die Ursache des Ausfalls?»
- **Neue Sachverhalte** — erste Auseinandersetzung mit neuem Material, keine Routine-Vorlage
- **P1-Blockierer** — Login, erschöpftes Kontingent, Systemausfälle
- **Abbrechendes System** — wenn etwas unerwartet fehlschlägt, ist Diagnose Opus-Arbeit

## Implementierung

### ⚠ Korrektur 07.08.2026 — das Frontmatter-Feld `model:` wirkt NICHT

Diese Rule schrieb bis zum 07.08.2026 vor, `model: haiku-4-5` ins SKILL.md-Frontmatter zu
setzen. **Das steuert das Modell des Hauptlaufs nicht.** Gemessen am 07.08.2026 über alle
Scheduled-Task-Transkripte der letzten sieben Tage (`"model":`-Feld je Assistant-Message):

- **Jeder** Hauptlauf aller Tasks fuhr `claude-opus-5` — ausnahmslos.
- `ag-gruendung-monitor` trägt das Feld seit dem 03.08.2026 und lief am 05.08. und 06.08.
  trotzdem auf `claude-opus-5`. Das Feld ist damit widerlegt, nicht nur unbelegt.
- `list_scheduled_tasks` und `update_scheduled_task` kennen überhaupt kein Modell-Feld.

Das reiht sich in den bekannten Befund ein, dass `enabled:` und `cron_target:` im Frontmatter
Dokumentation sind und nicht Live-Zustand (Radar-Befund 06.08.2026). **Ein Frontmatter-Feld
zu setzen, um den Verbrauch zu senken, ist Theater** — es ändert die Kosten um null und
erzeugt den Glauben, das Problem sei gelöst.

### Was nachweislich wirkt: Delegation an Subagenten

Der Hauptlauf bleibt Opus, delegiert aber die eigentliche Arbeit. Belegt in denselben
Transkripten: `heartbeat-daily` fährt Haiku-Subagenten, `konversations-log`,
`normen-training-nacht` und `tenant-hygiene-weekly` fahren Sonnet-Subagenten — jeweils
ausgelöst durch einen Prosa-Block im Prompt, nicht durch Frontmatter.

Deshalb gehört in jede Routine-Task dieser Block ans Ende des Prompts:

```markdown
## Modell-Politik (Minimum Viable Model, Rule modellwahl-routine)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Daten sammeln, Scripts
ausfuehren, Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku
delegieren (bei textlastiger Destillation model: sonnet); der Hauptkontext orchestriert nur
und prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.
```

**Wichtig — der Subagent kostet seinerseits:** er lädt den Grundkontext neu. Ein Heartbeat-
Subagent kam am 07.08.2026 auf 78'000 Token für einen einzigen Bash-Aufruf. Delegation lohnt
sich für Läufe mit echtem Arbeitsvolumen; für einen Zweizeiler ist sie teurer als die direkte
Ausführung. Im Zweifel: nicht delegieren, sondern den Lauf schlank halten.

### Der grössere Hebel liegt im Grundkontext

Rund 89 kB (CLAUDE.md plus 21 importierte Rules, Stand 07.08.2026) fallen in **jede** Session
aller ~40 Tasks beider Stationen, bevor irgendetwas passiert. Das ist der Dauerverbraucher,
den keine Modellwahl heilt. Siehe Rule `auto-verbesserungen`, Eintrag 260719 (Kontext-Diät).

### Für CLI/oneshot Läufe

Operatoren-Aufträge nutzen das Default-Modell (Opus). Nur bei gewolltem Haiku-Einsatz (z.B. eine Routine vom Operator manuell getestet) explizit `--model haiku` in den Aufruf.

## Eckfälle

### Hub-Chef: Hybrid-Fall

Der `hub-chef-taeglich` ist Routine + Operator gemischt:
- **Haiku-Part:** Konsolidierung der vier Loop-Briefinganschnitte (Radar, AG-Gründung, Frühwarnung, Verzugscheck), Whitelist-Aktionen A1–A5 ausführen
- **Opus-Part:** sobald ein echter P1-Befund vorhanden ist oder eine Entscheidung getroffen werden muss (z.B. «ist das ein neuer Befund oder Wiederholung?»), switcht der Lauf zu Opus

Praktisch: der Lauf läuft in Haiku, und wenn der initiale Durchlauf «P1 erkannt» meldet, wird ein Opus-Dispatcher aktiv (kein zweiter Lauf, sondern ein Entscheidungs-Operator innerhalb desselben Laufs — das ist eine Designentscheidung für Raphael).

### Loop-Trainer: trotz Refuter Haiku

Die Loop-Trainings (normen-training, energie-training, baurecht-buch-training, etc.) nutzen Refuter-Runden, aber das Urteil ist standardisiert: Refuter hat ja/nein/korrigiert-das, der Trainer schreibt inline nach. Das ist handwerkliche Routine, kein Urteil, daher **Haiku**.

Ausnahmen: Wenn ein Lauf einen neuen Lernkanal oder ein neues Material-Format erstmals bearbeitet, ist das Opus-Arbeit («Wie destilliere ich dieses Material?»), nicht Routine-Training.

## Geltungsbereich

Alle Scheduled Tasks, alle Stationen. Gilt ab sofort für Neueinstellungen; bestehende Tasks migrieren beim nächsten Redeploy oder Überarbeitungsschritt.

## Kosteneffekt

### ⚠ Nachtrag 07.08.2026 (abends) — die Schätzung unten gilt so nicht

Die Zahlen darunter wurden am 07.08.2026 beim Anlegen der Rule geschätzt, unter der Annahme,
das Frontmatter-Feld schalte den Hauptlauf auf Haiku. Diese Annahme ist am selben Abend
widerlegt worden (siehe Korrektur im Abschnitt Implementierung). Die Einsparung tritt **nicht
automatisch** ein, sondern nur so weit, wie ein Lauf seine Arbeit tatsächlich an einen
Subagenten abgibt — und abzüglich des Grundkontexts, den dieser Subagent neu lädt.

Die Schätzung bleibt als Grössenordnung stehen, ist aber **nicht gemessen** und darf nicht
als Beleg zitiert werden. Eine echte Messung braucht einen Vorher/Nachher-Vergleich derselben
Task über mehrere Läufe.

### Ursprüngliche Schätzung (07.08.2026, unverifiziert):
- **Sechs Routine-Läufe** (Radar, Heartbeat, Konversations-Log, Radar-Vorlauf, Frühwarnung, AG-Gründung) zusammen ca. **2.9 Mio Token** («teuer») bei Opus
- Haiku kostet rund **30–40 % davon**, je Lauf
- **Einsparung pro Tag bei 6 Routinen: ~1.8–2.3 Mio Token** («teuer»), rund **6 % des heutigen Wochenbudgets**
- Über eine Woche: **12–16 Mio Token**, genug für zwei zusätzliche Vorrang-Aufträge wie `normen` Run 47

Die Einsparung ist nicht radikal, aber messbar — und ohne Qualitätsverlust, weil Haiku für Routine ausreicht.
