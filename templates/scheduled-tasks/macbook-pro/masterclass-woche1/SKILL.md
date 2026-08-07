---
name: masterclass-woche1
description: Masterclass Woche 1: Heartbeat-Skill und Cron-System recherchieren und bauen
---

Du arbeitest am JANS AI Hub Masterclass Woche 1: Cron Jobs & Heartbeat.

Arbeitsverzeichnis: ~/Developer/jans-ai-hub
NAS-Pfad: /Volumes/daten/jans-ai-hub/

## Deine Aufgaben (in dieser Reihenfolge):

### 1. Recherche: Claude Code Automation-Tools
Recherchiere im Web die aktuellste Dokumentation zu:
- Claude Code CronCreate/CronList/CronDelete API
- Claude Code Scheduled Tasks (Desktop App)
- Claude Code Hooks (SessionStart, Stop, etc.)
- Unterschiede: Cron (session-only, max 3 Tage) vs Scheduled Tasks (persistent, Desktop App)
- Best Practices fuer proaktive Agenten

Speichere die Recherche-Ergebnisse als:
/Volumes/daten/jans-ai-hub/skills/masterclass/woche1-recherche.md

### 2. Baue einen Heartbeat-Skill
Erstelle einen Heartbeat-Skill der folgendes prüft:
- NAS-Mount (/Volumes/daten) erreichbar?
- Git-Status sauber?
- M365-Connector funktionsfähig? (npx m365 status im Repo ~/Developer/jans-ai-hub)
- Disk Space OK? (> 10GB frei)
- Letzte Sync-Tasks pending?
- Symlinks .claude/skills, .claude/agents, .claude/commands intakt?

Speichere als: /Volumes/daten/jans-ai-hub/skills/heartbeat/SKILL.md

### 3. Baue ein Heartbeat-Script
Erstelle ein Bash-Script das die Health-Checks ausfuehrt und JSON-Output liefert.
Speichere als: /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh (chmod +x)

### 4. Erstelle einen Morning-Report
Fasse zusammen was du gemacht hast und was Raphael morgen frueh wissen muss.
Speichere als: /Volumes/daten/jans-ai-hub/skills/masterclass/woche1-report.md

### 5. Fortschritt aktualisieren
Aktualisiere /Volumes/daten/jans-ai-hub/skills/masterclass/FORTSCHRITT.md:
- Woche 1 Status auf "✅ erledigt" setzen
- Datum eintragen
- Notizen ergaenzen

### Regeln
- Arbeite leise und selbststaendig
- Keine Fragen stellen — entscheide selbst
- Schreibe alle Dateien auf das NAS
- Wenn das NAS nicht gemountet ist, versuche: open smb://192.168.1.10/daten und warte 10 Sekunden
- Verwende Deutsch fuer Dokumentation
- Kein Git-Commit noetig — Raphael macht das morgen
