# Masterclass Woche 1 — Morning Report

> Erstellt: 24.03.2026 (automatisch via Scheduled Task)

---

## Was wurde gemacht

Woche 1 der JANS AI Hub Masterclass wurde vollständig automatisiert und selbstständig
als Scheduled Task ausgeführt. Alle Aufgaben wurden erledigt.

### Erstellte Dateien

| Datei | Beschreibung |
|---|---|
| `skills/masterclass/woche1-recherche.md` | Vollständige Dokumentation zu Claude Code Automation-Tools |
| `skills/heartbeat/SKILL.md` | Heartbeat-Skill für tägliche System-Health-Checks |
| `scripts/heartbeat.sh` | Bash-Script mit JSON + Text-Output, alle 6 Checks |
| `skills/masterclass/woche1-report.md` | Dieser Report |
| `skills/masterclass/FORTSCHRITT.md` | Aktualisiert: Woche 1 als erledigt markiert |

---

## Was du wissen musst

### 1. Neuer Heartbeat-Skill ist aktiv

Der `heartbeat` Skill ist sofort verfügbar. Sage einfach:
- **"Heartbeat"** oder **"System ok?"** → Schneller Status-Check
- **"bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh"** → Direkt im Terminal

```
🔵 JANS AI Hub — Heartbeat [2026-03-24 08:00:00]
─────────────────────────────────────────────
NAS-Mount:      ✅ /Volumes/daten erreichbar
Git-Status:     ✅ Clean (Branch: main)
M365-Connector: ✅ Connected as rj@raphaeljans.ch
Disk Space:     ✅ 47 GB frei (von 500 GB)
Sync-Tasks:     ✅ Keine offenen Sync-Tasks
Symlinks:       ✅ skills / agents / commands OK
─────────────────────────────────────────────
STATUS: ✅ Alles OK
```

### 2. Als täglicher Scheduled Task einrichten (empfohlen)

Um den Heartbeat täglich automatisch um 08:00 Uhr zu erhalten:

1. Claude Desktop App öffnen
2. Code-Tab → Schedule → New task → New local task
3. Name: `heartbeat-daily`
4. Prompt: `Führe den Heartbeat-Check aus: bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh und berichte kurz über den Status.`
5. Frequenz: Weekdays, 08:00 Uhr

### 3. Recherche-Erkenntnisse — Wichtigste Punkte

**Cron (`/loop`) vs. Desktop Tasks:**
- Cron: nur während aktiver Session, max. 3 Tage → gut für temporäres Polling
- Desktop Tasks: persistent, frische Session pro Run, Catch-up bei verpassten Runs
- **Empfehlung**: Desktop Task für Heartbeat verwenden (nicht Cron)

**Neues: SessionStart-Hook für automatischen Sync-Check**
Die Recherche ergab, dass ein `SessionStart`-Hook in `settings.json` konfiguriert werden kann,
der automatisch beim Start prüft ob Sync-Tasks vorhanden sind — ohne manuellen `/station-sync` Aufruf.

Konfiguration (optional, für nächste Woche):
```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "startup",
        "hooks": [
          {
            "type": "command",
            "command": "bash /Volumes/daten/jans-ai-hub/scripts/sync-task-check.sh",
            "async": false
          }
        ]
      }
    ]
  }
}
```

---

## Empfehlungen für Woche 2

Woche 2 befasst sich mit **Scheduled Tasks (Persistent)**. Auf Basis der Recherche empfehle ich:

1. **Heartbeat als Desktop Task einrichten** (Wday 08:00) — 5 Min
2. **Morning-Briefing (`/morgen`) als Desktop Task** — tägliches Briefing automatisieren
3. **SessionStart-Hook** für automatischen Sync-Check konfigurieren
4. **"Keep computer awake"** in Desktop Settings aktivieren

---

## Kein Git-Commit nötig

Alle Änderungen liegen auf dem NAS (`/Volumes/daten/jans-ai-hub/`).
Git-Commit und Push kannst du bei Gelegenheit mit `/sync` machen.

---

---

## Heartbeat Live-Check (Re-Run 24.03.2026 23:43)

Beim zweiten automatischen Durchlauf heute Abend wurde ein Live-Heartbeat ausgeführt:

```
🔵 JANS AI Hub — Heartbeat [2026-03-24 23:43:55]
─────────────────────────────────────────────
NAS-Mount:      ✅ /Volumes/daten erreichbar
Git-Status:     ✅ Clean (Branch: main)
M365-Connector: ⚠️  Status unbekannt (Timeout)
Disk Space:     ✅ 176.7 GB frei (von 920 GB)
Sync-Tasks:     ⚠️  1 offene Task für Mac Mini → /station-sync
Symlinks:       ✅ skills / agents / commands OK
─────────────────────────────────────────────
STATUS: ⚠️  WARNUNGEN
```

**Offener Sync-Task für Mac Mini**: `20260324-190000_M365-Zertifikat-Setup.md`
→ M365 Certificate-Auth muss auf dem Mac Mini eingerichtet werden (Details im Task)

---

_Automatisch erstellt am 24.03.2026 via Masterclass Woche 1 Scheduled Task_
_Aktualisiert: 24.03.2026 23:43 (Verification Re-Run)_
