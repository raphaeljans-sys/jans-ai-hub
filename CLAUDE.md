# JANS AI Hub - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub)
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Konzept

Der JANS AI Hub ist ein **Git-Repository als zentrale Quelle der Wahrheit**.
Jede Workstation arbeitet lokal und synchronisiert über Git.

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   MacBook   │     │  Mac Mini   │     │  Externer   │
│   Pro       │     │  (Büro)     │     │  Mitarbeiter│
│             │     │             │     │             │
│ ~/Developer/│     │ ~/Developer/│     │ ~/Developer/│
│ claude-code │     │ claude-code │     │ claude-code │
│   (lokal)   │     │   (lokal)   │     │   (lokal)   │
└──────┬──────┘     └──────┬──────┘     └──────┬──────┘
       │                   │                   │
       └───────────┬───────┴───────────────────┘
                   │
          ┌────────▼────────┐
          │     GitHub      │
          │  (Private Repo) │
          │  jans-ai-hub    │
          └─────────────────┘
```

## Multi-Workstation Setup

Jede Workstation hat eine **lokale Kopie** des Repos. Synchronisation über Git.

### Alltags-Workflow
```
git pull                    # Vor dem Arbeiten
git add -A && git commit    # Nach Änderungen
git push                    # Synchronisieren
```

### Neue Station einrichten
1. GitHub-Account erstellen / zum Repo eingeladen werden
2. SSH-Key erstellen und bei GitHub hinterlegen
3. `~/.ssh/config` mit Port 443 für github.com (falls Firewall Port 22 blockt)
4. `git clone git@github.com:raphaeljans-sys/jans-ai-hub.git ~/Developer/claude-code`
5. `cp .env.example .env` → Credentials eintragen
6. `npm install`
7. Claude Code installieren und starten → `~/.claude/` wird automatisch angelegt

### Was wird synchronisiert?
| Datei | Im Repo | Grund |
|---|---|---|
| `CLAUDE.md` | Ja | Projektanweisungen, gleich für alle |
| `docs/` | Ja | Dokumentation |
| `package.json` | Ja | Dependencies |
| `.gitignore` | Ja | Regeln für alle gleich |
| `.env.example` | Ja | Template für Credentials (ohne echte Werte) |
| `.env` | Nein | Credentials, nie committen |
| `.mcp.json` | Nein | Enthält Azure/Tenant IDs |
| `node_modules/` | Nein | Wird per `npm install` erzeugt |
| `~/.claude/` | Nein | Globale Config, pro Maschine |

## Connectoren pro Station

| Connector | Verfügbarkeit | Hinweis |
|---|---|---|
| Gmail, Calendar, Drive | Automatisch auf jeder Station | Cloud-basiert, keine lokale Config nötig |
| M365 (SharePoint, Outlook) | Manuell pro Station | `.mcp.json` + Credentials aus `.env` einrichten |

Auf neuen Stationen: `.mcp.json` vom bestehenden Setup kopieren oder manuell erstellen (gleiche Credentials wie in `.env`).

## Netzwerk
- **Firewall**: OPNsense (rjgate.localdomain) @ 192.168.1.1
- **NAS**: Synology DiskStation918 @ 192.168.1.10, SMB-Mount: /Volumes/daten
- **Drucker**: Konica Minolta bizhub c300i (im LAN, IP wird konfiguriert)
- **Mac Mini**: 192.168.1.210
- **VPN**: WireGuard via OPNsense für externen Zugriff
- **GitHub SSH**: Port 443 via ssh.github.com (Port 22 durch Firewall blockiert)

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Bürodaten)
- **Microsoft 365**: OneDrive + SharePoint (~/Library/CloudStorage/OneDrive-*)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/claude-code (dieses Projekt)

## Wichtige Regeln
- Projekt IMMER lokal auf SSD (`~/Developer/claude-code`), NIEMALS über SMB-Mount bearbeiten
- `~/.claude/` Config ist pro Maschine, wird NICHT synchronisiert
- NAS-Zugriff über SMB-Mount /Volumes/daten
- Passwörter und Credentials NIEMALS committen
- Für sensible Daten: `.env` (in .gitignore) oder macOS Keychain
