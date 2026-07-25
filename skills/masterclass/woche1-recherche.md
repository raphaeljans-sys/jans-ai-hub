# Claude Code Automation: Recherche Woche 1

> Erstellt: 24.03.2026 | Masterclass Woche 1: Cron Jobs & Heartbeat

## Inhaltsverzeichnis
1. [CronCreate / CronList / CronDelete API](#1-cron-api)
2. [Desktop Scheduled Tasks (Persistent)](#2-desktop-scheduled-tasks)
3. [Claude Code Hooks](#3-hooks)
4. [Best Practices für Proaktive Agents](#4-proaktive-agents)
5. [Vergleich: Cron vs. Desktop Tasks](#5-vergleich)

---

## 1. CronCreate / CronList / CronDelete API

> **Mindestversion**: Claude Code v2.1.72 oder neuer

### Übersicht

Die drei Cron-Tools bilden das Fundament des `/loop`-Befehls und ermöglichen **sitzungsgebundene** wiederkehrende Aufgaben.

| Tool | Funktion |
|---|---|
| `CronCreate` | Neuen Task anlegen (5-Feld-Cron-Ausdruck + Prompt) |
| `CronList` | Alle aktiven Tasks auflisten |
| `CronDelete` | Task anhand der 8-stelligen ID löschen |

### Verwendung via `/loop`

```text
/loop 5m prüfe ob das Deployment abgeschlossen ist
/loop 20m /review-pr 1234
/loop check den Build-Status alle 2 Stunden
```

### Cron-Ausdrucks-Referenz

Standard 5-Feld-Syntax: `Minute Stunde Tag-des-Monats Monat Wochentag`

| Beispiel | Bedeutung |
|---|---|
| `*/5 * * * *` | Alle 5 Minuten |
| `0 * * * *` | Jede Stunde |
| `0 9 * * 1-5` | Werktags um 9 Uhr |

**Alle Zeiten werden in lokaler Zeitzone interpretiert (nicht UTC).**

### Einschränkungen

- **Sitzungsgebunden**: Tasks verschwinden beim Terminal-Beenden
- **Max. Laufzeit**: 3 Tage (automatisches Ablaufen)
- **Max. Tasks**: 50 gleichzeitig pro Session
- **Kein Catch-up** bei verpassten Ausführungen
- Deaktivieren: `export CLAUDE_CODE_DISABLE_CRON=1`

---

## 2. Desktop Scheduled Tasks (Persistent)

**Voraussetzungen**: Claude Desktop App offen, Computer wach, bezahltes Abo (Pro/Max/Team/Enterprise)

### Typen

| Typ | Läuft auf | Lokale Dateien | Persistenz |
|---|---|---|---|
| **Lokal** | Eigener Rechner | Ja | Ja, App muss offen sein |
| **Remote** | Anthropic Cloud | Nein | Ja, auch ohne Rechner |

### Frequenz-Optionen

- Manual, Hourly, Daily, Weekdays, Weekly

### Verhalten

- Desktop prüft Zeitplan **jede Minute**
- Jeder Task startet eine **frische, unabhängige Sitzung**
- Bei verpassten Ausführungen: **1 Catch-up** für letzten verpassten Zeitpunkt (max. 7 Tage zurück)

### Task-Dateien auf Disk

```
~/.claude/scheduled-tasks/<task-name>/SKILL.md
```

### Schlaf verhindern

Settings → Desktop app → General → **Keep computer awake**

---

## 3. Claude Code Hooks

### Konfigurationsorte

```
~/.claude/settings.json              # Global
.claude/settings.json                # Projekt (versionierbar)
.claude/settings.local.json          # Lokale Overrides
```

### Grundstruktur

```json
{
  "hooks": {
    "EventName": [
      {
        "matcher": "Regex-Pattern",
        "hooks": [
          {
            "type": "command",
            "command": "pfad/zu/script.sh",
            "timeout": 60
          }
        ]
      }
    ]
  }
}
```

### Hook-Typen

| Typ | Beschreibung |
|---|---|
| `command` | Shell-Befehl ausführen |
| `http` | POST-Request senden |
| `prompt` | LLM-Prompt auswerten |
| `agent` | Subagent starten |

### Exit-Codes

| Exit-Code | Bedeutung |
|---|---|
| `0` | Erfolg |
| `2` | Blockierender Fehler (stoppt Ausführung) |
| Sonstiger | Nicht-blockierender Fehler |

### Wichtige Hook-Events

| Event | Wann |
|---|---|
| `SessionStart` | Session-Start / Resume / nach `/clear` |
| `SessionEnd` | Session-Beendigung |
| `PreToolUse` | Vor Tool-Ausführung |
| `PostToolUse` | Nach erfolgreicher Tool-Ausführung |
| `Stop` | Wenn Claude fertig antwortet |
| `UserPromptSubmit` | Bevor Benutzer-Prompt verarbeitet wird |
| `ConfigChange` | Wenn Konfig-Datei ändert sich |

### SessionStart für Station-Sync (JANS-relevant)

```bash
#!/bin/bash
# NAS-Mount und Sync-Tasks prüfen
if [ -d "/Volumes/daten/jans-ai-hub/sync-tasks" ]; then
  TASKS=$(ls /Volumes/daten/jans-ai-hub/sync-tasks/macbook-pro/ 2>/dev/null | grep -v done)
  if [ -n "$TASKS" ]; then
    echo "ACHTUNG: Offene Sync-Tasks von anderer Station gefunden:"
    echo "$TASKS"
    echo "Bitte /station-sync ausführen."
  fi
fi
```

---

## 4. Best Practices für Proaktive Agents

### Subagent-Definition (Markdown + YAML)

```markdown
---
name: heartbeat-checker
description: >
  Prüft System-Health des JANS AI Hub. Proaktiv bei Session-Start verwenden.
tools: Bash, Read, Glob
model: haiku
---

Führe System-Health-Checks durch und berichte kompakt.
```

### Empfohlene Felder

| Feld | Beschreibung |
|---|---|
| `name` | Eindeutig, lowercase, Bindestriche |
| `description` | **Entscheidend** — bestimmt automatische Delegation |
| `tools` | Nur notwendige Tools (Allowlist) |
| `model` | `haiku` für schnelle Checks, `opus` für komplexe Aufgaben |
| `memory` | `project` für projektweites Gedächtnis |
| `background` | `true` für Hintergrundausführung |

### Best Practices

1. **Fokussierte Agents** — eine Aufgabe, exzellent ausgeführt
2. **Klare Descriptions** — Claude delegiert automatisch basierend darauf
3. **Minimale Tool-Rechte** — nur notwendige Tools
4. **Memory aktivieren** — für Cross-Session-Wissen
5. **Hooks für Validierung** — `PreToolUse` für bedingte Kontrolle

---

## 5. Vergleich: Cron vs. Desktop Tasks vs. Cloud Tasks

| Merkmal | Cloud Tasks | Desktop Tasks | `/loop` (Cron) |
|---|---|---|---|
| Computer muss an sein | Nein | **Ja** | **Ja** |
| Session muss offen sein | Nein | Nein | **Ja** |
| Persistent bei Restart | Ja | Ja | **Nein** |
| Lokale Dateien | Nein | **Ja** | **Ja** |
| Max. Ablauf | Unbegrenzt | Unbegrenzt | **3 Tage** |
| Max. Tasks | Unbegrenzt | Unbegrenzt | **50/Session** |
| Einrichtung | Via CLI | Desktop UI | Via `/loop` |

### Entscheidungshilfe für JANS

- **`/loop`**: Kurzfristiges Polling während aktiver Arbeit (Build-Status, PR-Reviews)
- **Desktop Tasks**: Regelmässige Routinen mit lokalem Dateizugriff (Morning Briefing, NAS-Checks, Station-Sync)
- **Cloud Tasks**: Tasks die auch ohne Computer laufen müssen

---

## Quellen

- [Claude Code Docs: Scheduled Tasks](https://code.claude.com/docs/en/scheduled-tasks)
- [Claude Code Docs: Hooks Reference](https://code.claude.com/docs/en/hooks)
- [Claude Code Docs: Custom Subagents](https://code.claude.com/docs/en/sub-agents)
- [Anthropic Blog: How to Configure Hooks](https://claude.com/blog/how-to-configure-hooks)
- [BetterStack: Recurring Tasks in Claude Code](https://betterstack.com/community/guides/ai/claude-code-loop/)
