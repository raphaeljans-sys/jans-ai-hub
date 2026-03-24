# JANS AI Hub - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub) — Backup/Versionierung
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Konzept

Der JANS AI Hub nutzt das **NAS als zentrale Skill-Bibliothek**.
Jede Workstation hat Claude Code lokal installiert und greift ueber SMB-Mount auf die gemeinsamen Skills zu.

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  MacBook Pro │     │  Mac Mini   │     │ Weitere MA  │
│  (mobil)     │     │  (Buero)    │     │ (extern)    │
│              │     │             │     │             │
│ Claude Code  │     │ Claude Code │     │ Claude Code │
│   (lokal)    │     │   (lokal)   │     │   (lokal)   │
│              │     │             │     │             │
│ .claude/ ────┼─SMB─┼─────┐      │     │             │
└──────────────┘     └─────┼──────┘     └──────┬──────┘
                           │ SMB               │ SMB
                    ┌──────▼──────┐            │ (Tailscale)
                    │ NAS DS918+  │◄───────────┘
                    │ /daten/     │
                    │ jans-ai-hub/│  ← Gemeinsame Bibliothek
                    │  skills/    │
                    │  agents/    │
                    │  commands/  │
                    │  plugins/   │
                    └──────┬──────┘
                           │
                    ┌──────▼──────┐
                    │   GitHub    │  ← Backup
                    └─────────────┘
```

## Warum NAS statt Git-Sync oder SSH?

| Kriterium | Git-Sync | SSH (Mac Mini) | NAS (aktuell) |
|---|---|---|---|
| Merge-Konflikte | Ja | Keine | Keine |
| Skills-Bibliothek | Pro Station | Zentral | Zentral |
| Offline-Arbeit | Moeglich | Nur mit Netz | Nur mit NAS |
| Claude Code SSH | - | Nur Linux! | Nicht noetig |
| Parallele Arbeit | Konflikte | Nicht moeglich | Funktioniert |

Claude Code SSH unterstuetzt nur Linux-Hosts — macOS (Darwin) wird nicht unterstuetzt.
Das NAS ist die stabile Loesung: Jede Station arbeitet lokal, teilt aber Skills ueber SMB.

## Gemeinsame Skill-Bibliothek (NAS)

### Speicherort auf NAS
```
/Volumes/daten/jans-ai-hub/
  skills/        ← Shared Skills (z.B. baurecht/)
  agents/        ← Shared Agents (recherche, dokument, email)
  commands/      ← Shared Slash-Commands (/status, /morgen, etc.)
  plugins/       ← Shared Plugins
  templates/     ← Dokument-Vorlagen
```

### Symlinks auf jeder Station
```
.claude/skills/   → /Volumes/daten/jans-ai-hub/skills/
.claude/agents/   → /Volumes/daten/jans-ai-hub/agents/
.claude/commands/  → /Volumes/daten/jans-ai-hub/commands/
```

Aenderungen an Skills sind sofort auf allen Stationen sichtbar.

### Neue Station einrichten
```bash
bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh
```

## Netzwerk

| Geraet | LAN IP | Tailscale IP | Funktion |
|---|---|---|---|
| Mac Mini | 192.168.1.210 | 100.120.219.12 | Arbeitsstation (Always-On) |
| MacBook Pro | DHCP | 100.117.99.62 | Mobile Arbeitsstation |
| NAS DS918+ | 192.168.1.10 | 100.92.246.28 | Datei-Server + Skill-Bibliothek |
| OPNsense | 192.168.1.1 | — | Firewall/Router |
| Drucker | Im LAN | — | Konica Minolta bizhub c300i |

- **VPN**: Tailscale fuer externen Zugriff auf NAS und Buero-LAN
- **GitHub SSH**: Port 443 via ssh.github.com (Port 22 durch Firewall blockiert)
- **NAS-Mount**:
  - Im Buero: `open smb://192.168.1.10/daten`
  - Extern: `open smb://diskstation918.tail8265aa.ts.net/daten`

## E-Mail-Konten

Raphael Jans nutzt folgende E-Mail-Konten (NICHT Gmail):

| Konto | Adresse | Typ | Verwendung |
|---|---|---|---|
| Geschaeft (Haupt) | rj@raphaeljans.ch | Microsoft 365 | Geschaeftliche Korrespondenz |
| Geschaeft 2 | mail@raphaeljans.ch | Microsoft 365 | Geschaeftliche Korrespondenz |
| Privat | raphaeljans@me.com | Apple/iCloud | Private Korrespondenz |

- **Gmail wird NICHT verwendet** — der Gmail-Connector ist nur technisch vorhanden
- E-Mails werden ueber **Apple Mail** (via osascript) versendet
- Standard-Absender fuer geschaeftliche Mails: `rj@raphaeljans.ch`

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Buerodaten, Skill-Bibliothek)
- **Microsoft 365**: SharePoint + OneDrive via M365-Connector (Graph API)
- **Google**: Calendar, Drive via Google-Connectoren (Gmail wird NICHT als Haupt-Mail genutzt)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/jans-ai-hub (Projekt-Repo)

## Multi-Station Connector-Architektur

Jede Station hat unterschiedliche Connectoren. Die Unterscheidung erfolgt ueber
lokale vs. geteilte Konfigurationen:

```
┌──────────────────────────────────────────────────────────────────┐
│                    GETEILTE LAYER (via Git + NAS)                │
│                                                                  │
│  .mcp.json              → M365-Connector (beide Stationen)       │
│  .claude/settings.json  → Gemeinsame Permissions                 │
│  NAS: skills/agents/    → Gemeinsame Skills & Agents             │
│  CLAUDE.md              → Projekt-Dokumentation                  │
└──────────────────────────────────────────────────────────────────┘

┌──────────────────────┐     ┌──────────────────────┐
│   MacBook Pro        │     │   Mac Mini            │
│   (mobil)            │     │   (Buero, Always-On)  │
│                      │     │                       │
│ LOKAL (nicht in Git):│     │ LOKAL (nicht in Git): │
│ • settings.local.json│     │ • settings.local.json │
│ • .env (Credentials) │     │ • .env (Credentials)  │
│ • Claude Desktop     │     │ • Claude Desktop      │
│   Config (Cowork)    │     │   Config (Cowork)     │
│                      │     │                       │
│ CONNECTOREN:         │     │ CONNECTOREN:          │
│ • M365 (via .mcp)    │     │ • M365 (via .mcp)     │
│ • Google (Cloudflare)│     │ • Google (Cloudflare)  │
│ • Figma (Cloudflare) │     │ • Figma (Cloudflare)   │
│ • Chrome (Cloudflare)│     │ • Chrome (Cloudflare)  │
│ • Apple Mail (lokal) │     │ • Apple Mail (lokal)   │
└──────────────────────┘     └──────────────────────┘
```

### Regeln fuer Multi-Station
- **Geteilte Config** (`.mcp.json`, `settings.json`, `CLAUDE.md`): Wird via Git synchronisiert, identisch auf beiden Stationen
- **Lokale Config** (`settings.local.json`, `.env`): Stations-spezifisch, NICHT in Git
- **Cloudflare-Connectoren** (Google, Figma, Chrome): Werden pro Station ueber den Browser/Account eingerichtet, nicht ueber Git
- **Claude Desktop Config**: Lokal pro Station (`~/Library/Application Support/Claude/`), nicht synchronisiert
- **Apple Mail**: Lokal verfuegbar auf beiden Stationen (gleicher iCloud-Account)
- Bei Aenderungen an geteilten Configs: `/sync` ausfuehren, damit beide Stationen aktuell sind

## Output-Ablage

Alle Export-Dokumente (PDFs, Reports, Agent-Outputs) werden auf SharePoint abgelegt:

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/
  AD - 01 Geschaeftsfuerung/
    JANS AI/
      30 JANS AI HUB OUTPUT/
```

- Wird ueber OneDrive automatisch synchronisiert
- Unterordner pro Agent/Thema nach Bedarf erstellen

## Skills, Agents & Commands

### Skills
| Skill | Pfad (auf NAS) | Beschreibung |
|---|---|---|
| `baurecht` | `skills/baurecht/SKILL.md` | Schweizer Baurechts-Berater, Fokus Kt. ZH + SZ |

### Agents (Sub-Agents)
| Agent | Pfad (auf NAS) | Beschreibung |
|---|---|---|
| `recherche` | `agents/recherche.md` | Systematische Recherche ueber alle Quellen |
| `dokument` | `agents/dokument.md` | Professionelle Dokumente erstellen (Word/PDF) |
| `email` | `agents/email.md` | E-Mails im JANS-Stil verfassen |

### Custom Commands (Slash-Commands)
| Command | Beschreibung |
|---|---|
| `/status` | Kompletter Systemcheck (Hardware, Netzwerk, Dienste) |
| `/sync` | Git-Sync mit GitHub (Backup) |
| `/nas` | NAS-Mount pruefen und reparieren |
| `/m365` | Microsoft 365 Connector testen |
| `/morgen` | Morgen-Briefing (Kalender, E-Mails, System) |

### Baurecht-Wissensbasis
- `docs/baurecht/begriffe.md` — Glossar baurechtliche Begriffe
- `docs/baurecht/pbg_zh.md` — Planungs- und Baugesetz ZH (Kernpunkte)
- `docs/baurecht/bzo_zh.md` — Bau- und Zonenordnung Systematik
- `docs/baurecht/verfahren.md` — Baubewilligungsverfahren Ablauf
- `docs/baurecht/praxisfaelle.md` — Praxisfaelle (wird laufend ergaenzt)

## Projektstruktur

```
jans-ai-hub/                          (Git-Repo, auf jeder Station lokal)
├── .claude/
│   ├── skills/ → NAS-Symlink         ← Gemeinsame Skills
│   ├── agents/ → NAS-Symlink         ← Gemeinsame Agents
│   ├── commands/ → NAS-Symlink       ← Gemeinsame Commands
│   ├── settings.json                 ← Projekt-Permissions
│   └── settings.local.json           ← Lokale Overrides (pro Station)
├── docs/
│   └── baurecht/                     ← Wissensbasis
├── scripts/
│   ├── setup-nas-skills.sh           ← NAS-Setup fuer neue Stationen
│   ├── git-auto-sync.sh              ← GitHub-Backup Script
│   └── MAC-MINI-SETUP-PROMPT.md      ← Anleitung fuer Mac Mini
├── CLAUDE.md                         ← Diese Datei
├── package.json
├── .env                              ← Credentials (NICHT committen)
├── .env.example                      ← Credential-Template
├── .mcp.json                         ← M365-Connector Config (NICHT committen)
└── .gitignore
```

## Wichtige Regeln
- **Jede Station arbeitet lokal** mit Claude Code — Skills werden ueber NAS geteilt
- Repo auf SSD (`~/Developer/jans-ai-hub`), NIEMALS ueber SMB-Mount bearbeiten
- Skills/Agents/Commands liegen auf dem NAS und sind per Symlink eingebunden
- NAS muss gemountet sein (`/Volumes/daten`) damit Skills funktionieren
- Passwoerter und Credentials NIEMALS committen
- GitHub nur fuer Backup/Versionierung
- Fuer sensible Daten: `.env` (in .gitignore) oder macOS Keychain
