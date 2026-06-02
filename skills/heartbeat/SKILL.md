---
description: "System-Health-Check für den JANS AI Hub. Prüft NAS-Mount, Git-Status, M365-Connector, Disk Space, Sync-Tasks und Symlinks. Verwenden wenn: 'Heartbeat', 'System-Health', 'System ok?', 'alles funktioniert?', 'Hub-Status', 'NAS erreichbar?', oder bei Session-Start zur Schnellprüfung."
---

# JANS AI Hub — Heartbeat Skill

## Contract

- **Trigger:** Greift bei einem schnellen System-Health-Check des Hub — NAS-Mount, Git-Status, M365-Connector, Disk Space, Sync-Tasks, Symlinks — auf Anfrage ("Heartbeat", "System ok?", "Hub-Status") oder zur Schnellpruefung bei Session-Start. Infrastruktur-Skill.
- **Inputs:** keine — liest Systemzustand selbst (gemountetes NAS, lokales Repo, Connector-Status).
- **Output-Ablage:** kein Datei-Output (nur Antwort/Status-Report, ggf. JSON).
- **Abhaengige Rules:** antwort-formatierung.
- **Vorgelagert:** —
- **Nachgelagert:** —

## Zweck

Schneller System-Health-Check des JANS AI Hub. Prüft alle kritischen Komponenten
und liefert einen kompakten Status-Report.

## Checks (in dieser Reihenfolge)

### 1. NAS-Mount
```bash
ls /Volumes/daten/jans-ai-hub/ > /dev/null 2>&1
```
- ✅ Erreichbar: `/Volumes/daten` gemountet
- ❌ Nicht erreichbar → Mount versuchen: `open smb://192.168.1.10/daten`

### 2. Git-Status
```bash
cd ~/Developer/jans-ai-hub && git status --short
```
- ✅ Clean: Keine uncommitted Changes
- ⚠️ Dirty: Uncommitted Changes vorhanden (kein Fehler, nur Info)
- ❌ Fehler: Git-Repo nicht vorhanden oder beschädigt

### 3. M365-Connector
```bash
cd ~/Developer/jans-ai-hub && npx m365 status
```
- ✅ Connected: M365 angemeldet
- ❌ Disconnected: `npx m365 login --authType certificate --certificateFile ~/.cli-m365-cert-combined.pem --appId 80c24101-4597-48db-8388-c6e8bdc75f5f --tenant d3ea8e1a-8ecc-479d-b831-6c0784ee0b51`

### 4. Disk Space
```bash
df -h ~ | tail -1 | awk '{print $4}'
```
- ✅ > 10 GB frei
- ⚠️ 5–10 GB frei
- ❌ < 5 GB frei → Aufräumen nötig

### 5. Sync-Tasks (offene Tasks von anderer Station)
```bash
ls /Volumes/daten/jans-ai-hub/sync-tasks/macbook-pro/ 2>/dev/null
ls /Volumes/daten/jans-ai-hub/sync-tasks/mac-mini/ 2>/dev/null
```
- ✅ Keine offenen Tasks
- ⚠️ Tasks vorhanden → `/station-sync` ausführen

### 6. Symlinks
```bash
ls -la ~/Developer/jans-ai-hub/.claude/skills 2>/dev/null
ls -la ~/Developer/jans-ai-hub/.claude/agents 2>/dev/null
ls -la ~/Developer/jans-ai-hub/.claude/commands 2>/dev/null
```
- ✅ Alle Symlinks intakt und zeigen auf NAS
- ❌ Symlink fehlt oder broken → `bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh`

## Output-Format

Gib einen kompakten Report aus:

```
🔵 JANS AI Hub — Heartbeat [DATUM UHRZEIT]

NAS-Mount:      ✅ /Volumes/daten erreichbar
Git-Status:     ✅ Clean (oder ⚠️ 3 uncommitted files)
M365-Connector: ✅ Connected as rj@raphaeljans.ch
Disk Space:     ✅ 47 GB frei (von 500 GB)
Sync-Tasks:     ✅ Keine offenen Tasks
Symlinks:       ✅ skills / agents / commands OK

STATUS: ✅ Alles OK
```

Bei Problemen: Kurze Anleitung zur Behebung ausgeben.

## Schnell-Ausführung

Das Heartbeat-Script kann direkt ausgeführt werden:
```bash
bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh
```

## Als Scheduled Task

Für automatischen täglichen Check als Desktop Scheduled Task einrichten:
- Name: `heartbeat-daily`
- Prompt: `Führe den Heartbeat-Check aus und berichte kurz.`
- Frequenz: Daily, 08:00 Uhr
- Skill: heartbeat

## Verwandte Befehle

- `/status` — Vollständiger System-Report (detaillierter)
- `/nas` — NAS-Mount prüfen und reparieren
- `/m365` — M365 Connector testen
- `/station-sync` — Sync-Tasks der anderen Station ausführen
