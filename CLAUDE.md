# JANS AI Hub - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub) — nur Backup/Versionierung
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Konzept

Der JANS AI Hub läuft **zentral auf dem Mac Mini** im Büro.
Alle Workstations verbinden sich per **SSH** auf den Mac Mini — keine lokale Synchronisation nötig.

```
┌──────────────────┐     ┌──────────────────┐
│   MacBook Pro    │     │   Externer MA    │
│   (zuhause)      │     │   (remote)       │
│                  │     │                  │
│ Claude Code      │     │ Claude Code      │
│ SSH-Verbindung   │     │ SSH-Verbindung   │
└────────┬─────────┘     └────────┬─────────┘
         │ Tailscale              │ Tailscale
         └────────────┬───────────┘
                      │
              ┌───────▼───────┐
              │   Mac Mini    │
              │  (Büro-Server)│
              │               │
              │ Claude Code   │  ← Einzige Instanz
              │ jans-ai-hub/  │  ← Einziges Repo
              │ ~/.claude/    │  ← Einzige Config
              │ Skills/Agents │  ← Einzige Bibliothek
              │ Connectoren   │  ← Einmal eingerichtet
              └───────┬───────┘
                 LAN  │  Graph API
            ┌─────────┴─────────┐
      ┌─────▼─────┐     ┌──────▼──────┐
      │ NAS DS918+ │     │ Microsoft   │
      │ /daten     │     │ 365         │
      │ Archiv     │     │ SharePoint  │
      └────────────┘     └─────────────┘
```

## Warum SSH statt Git-Sync?

| Kriterium | Alt (Git-Sync) | Neu (SSH) |
|---|---|---|
| Merge-Konflikte | Ja, bei paralleler Arbeit | Keine — eine Kopie |
| Skills-Bibliothek | Pro Station separat | Einmal, zentral |
| Connectoren | Pro Station einrichten | Einmal, zentral |
| Config/Memory | Pro Station separat | Einmal, zentral |
| Offline-Arbeit | Möglich | Nur mit Netzwerk |

### Git-Sync (Backup)

Auto-Sync ist aktiv auf dem Mac Mini (alle 5 Min via launchd). Nur fuer GitHub-Backup.
```
bash scripts/install-auto-sync.sh    # Einmalig einrichten
```
Log: `.git/auto-sync.log` | Stoppen: `launchctl unload ~/Library/LaunchAgents/com.jans.git-auto-sync.plist`

GitHub wird nur noch für **Backup und Versionierung** genutzt, nicht mehr zur Synchronisation.

## Verbindung zum Mac Mini

### Vom MacBook Pro (oder externer Station)
```bash
# Im Büro (LAN)
ssh raphaeljans@192.168.1.210

# Extern (Tailscale VPN)
ssh raphaeljans@100.120.219.12
```

### In Claude Code
1. Claude Code öffnen
2. Unten rechts auf **"Local"** klicken
3. **"SSH-Verbindung hinzufügen"** wählen
4. Host: `192.168.1.210` (LAN) oder `100.120.219.12` (Tailscale)
5. User: `raphaeljans`

### SSH-Config (empfohlen auf jeder Workstation)
```
# ~/.ssh/config
Host macmini
  Hostname 100.120.219.12
  User raphaeljans
  IdentityFile ~/.ssh/id_ed25519

Host macmini-lan
  Hostname 192.168.1.210
  User raphaeljans
  IdentityFile ~/.ssh/id_ed25519
```

### Neue Workstation einrichten
1. Claude Code installieren
2. SSH-Key erstellen: `ssh-keygen -t ed25519`
3. Public Key auf den Mac Mini kopieren: `ssh-copy-id raphaeljans@192.168.1.210`
4. In Claude Code: SSH-Verbindung zum Mac Mini hinzufügen
5. Fertig — alles andere liegt bereits auf dem Mac Mini

## Mac Mini Server-Setup

### Hardware
- **Modell**: Mac Mini M2 Pro, 32 GB RAM
- **Rolle**: Zentraler Claude Code Server (Always-On)
- **LAN IP**: 192.168.1.210
- **Tailscale IP**: 100.120.219.12

### Dienste
| Dienst | Status | Details |
|---|---|---|
| SSH | Aktiv | Entfernte Anmeldung aktiviert |
| Tailscale | Aktiv | VPN für externen Zugriff |
| FileVault | Aktiv | Festplattenverschlüsselung |
| Sleep | Deaktiviert | 24/7 Betrieb |
| Auto-Restart | Aktiv | Nach Stromausfall |
| Sudo | Passwortlos | Für Claude Code Systembefehle |

### Permissions
Alle Tools und Bash-Befehle sind ohne Nachfrage erlaubt (`Bash(*)`, `Read(*)`, `Edit(*)`, etc.).
Konfiguriert in `~/.claude/settings.json` auf dem Mac Mini.

## Netzwerk

| Gerät | LAN IP | Tailscale IP | Funktion |
|---|---|---|---|
| Mac Mini | 192.168.1.210 | 100.120.219.12 | Claude Code Server |
| MacBook Pro | DHCP | 100.117.99.62 | Remote Workstation |
| NAS DS918+ | 192.168.1.10 | 100.92.246.28 | Datei-Server |
| OPNsense | 192.168.1.1 | — | Firewall/Router |
| Drucker | Im LAN | — | Konica Minolta bizhub c300i |

- **VPN**: Tailscale für externen Zugriff
- **GitHub SSH**: Port 443 via ssh.github.com (Port 22 durch Firewall blockiert)

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Bürodaten) — direkt am Mac Mini via LAN
- **Microsoft 365**: SharePoint + OneDrive via M365-Connector (Graph API)
- **Google**: Gmail, Calendar, Drive via Google-Connectoren
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/jans-ai-hub (auf dem Mac Mini)

## Output-Ablage

Alle Export-Dokumente (PDFs, Reports, Agent-Outputs) werden auf SharePoint abgelegt:

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/
  AD - 01 Geschaeftsfuerung/
    JANS AI/
      30 JANS AI HUB OUTPUT/
```

- Wird über OneDrive automatisch synchronisiert
- Unterordner pro Agent/Thema nach Bedarf erstellen

## Skills, Agents & Commands

### Skills
| Skill | Pfad | Beschreibung |
|---|---|---|
| `baurecht` | `.claude/skills/baurecht/SKILL.md` | Schweizer Baurechts-Berater, Fokus Kt. ZH + SZ |

### Agents (Sub-Agents)
| Agent | Pfad | Beschreibung |
|---|---|---|
| `recherche` | `.claude/agents/recherche.md` | Systematische Recherche über alle Quellen |
| `dokument` | `.claude/agents/dokument.md` | Professionelle Dokumente erstellen (Word/PDF) |
| `email` | `.claude/agents/email.md` | E-Mails im JANS-Stil verfassen |

### Custom Commands (Slash-Commands)
| Command | Beschreibung |
|---|---|
| `/status` | Kompletter Systemcheck (Hardware, Netzwerk, Dienste) |
| `/sync` | Git-Sync mit GitHub (Backup) |
| `/nas` | NAS-Mount prüfen und reparieren |
| `/m365` | Microsoft 365 Connector testen |
| `/morgen` | Morgen-Briefing (Kalender, E-Mails, System) |

### Baurecht-Wissensbasis
- `docs/baurecht/begriffe.md` — Glossar baurechtliche Begriffe
- `docs/baurecht/pbg_zh.md` — Planungs- und Baugesetz ZH (Kernpunkte)
- `docs/baurecht/bzo_zh.md` — Bau- und Zonenordnung Systematik
- `docs/baurecht/verfahren.md` — Baubewilligungsverfahren Ablauf
- `docs/baurecht/praxisfaelle.md` — Praxisfälle (wird laufend ergänzt)

## Projektstruktur

```
jans-ai-hub/
├── .claude/
│   ├── agents/              ← Sub-Agents
│   │   ├── recherche.md
│   │   ├── dokument.md
│   │   └── email.md
│   ├── commands/            ← Slash-Commands
│   │   ├── status.md
│   │   ├── sync.md
│   │   ├── nas.md
│   │   ├── m365.md
│   │   └── morgen.md
│   ├── skills/
│   │   └── baurecht/SKILL.md
│   ├── settings.json        ← Projekt-Permissions
│   └── settings.local.json  ← Lokale Overrides
├── docs/
│   └── baurecht/            ← Wissensbasis
├── CLAUDE.md                ← Diese Datei
├── package.json
├── .env                     ← Credentials (NICHT committen)
├── .env.example             ← Credential-Template
├── .mcp.json                ← M365-Connector Config (NICHT committen)
└── .gitignore
```

## Wichtige Regeln
- **Alle Arbeit findet auf dem Mac Mini statt** — Workstations verbinden sich per SSH
- Repo auf SSD (`~/Developer/jans-ai-hub`), NIEMALS über SMB-Mount bearbeiten
- NAS-Zugriff über SMB-Mount /Volumes/daten (direkt am Mac Mini im LAN)
- Passwörter und Credentials NIEMALS committen
- GitHub nur für Backup/Versionierung, NICHT für Station-zu-Station-Sync
- Für sensible Daten: `.env` (in .gitignore) oder macOS Keychain
