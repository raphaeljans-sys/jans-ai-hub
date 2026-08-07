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

### In Scheduled Task SKILL.md

Füge in die erste Zeile (nach `<scheduled-task>`) ein:

```
model: haiku-4-5
```

Beispiel:
```markdown
---
name: vollgas-chef-radar
description: Chef-Radar TAKTGEBER…
model: haiku-4-5
enabled: true
cron_expression: "50 */8 * * *"
---
```

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

Measured am 07.08.2026:
- **Sechs Routine-Läufe** (Radar, Heartbeat, Konversations-Log, Radar-Vorlauf, Frühwarnung, AG-Gründung) zusammen ca. **2.9 Mio Token** («teuer») bei Opus
- Haiku kostet rund **30–40 % davon**, je Lauf
- **Einsparung pro Tag bei 6 Routinen: ~1.8–2.3 Mio Token** («teuer»), rund **6 % des heutigen Wochenbudgets**
- Über eine Woche: **12–16 Mio Token**, genug für zwei zusätzliche Vorrang-Aufträge wie `normen` Run 47

Die Einsparung ist nicht radikal, aber messbar — und ohne Qualitätsverlust, weil Haiku für Routine ausreicht.
