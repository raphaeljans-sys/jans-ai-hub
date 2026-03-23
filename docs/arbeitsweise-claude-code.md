# Arbeitsweise mit Claude Code — Multi-Workstation Guide

## Übersicht: Die drei Arbeitsebenen

```
┌─────────────────────────────────────────────────────────┐
│  EBENE 1: INFRASTRUKTUR & SETUP                        │
│  Was: Workstations, Netzwerk, Tools, MCP-Server         │
│  Wann: Einmalig + Wartung                               │
│  Wo: Auf jeder Workstation lokal                        │
├─────────────────────────────────────────────────────────┤
│  EBENE 2: ENTWICKLUNG (Agents, Plugins, Skills)         │
│  Was: Baurecht-Agent bauen, CI-Plugin entwickeln         │
│  Wann: Projektweise, iterativ                           │
│  Wo: Git-Repo jans-ai-hub, synchronisiert               │
├─────────────────────────────────────────────────────────┤
│  EBENE 3: ANWENDUNG (Produktive Arbeit)                 │
│  Was: Baurecht-Plugin im Projekt XY anwenden             │
│  Wann: Täglich, projektbezogen                          │
│  Wo: Projektordner auf NAS / Cloud                      │
└─────────────────────────────────────────────────────────┘
```

---

## 1. Synchronisation: Mac Mini ↔ MacBook Pro

### Was wird synchronisiert (via Git)?

```
jans-ai-hub (Git-Repo)
├── CLAUDE.md              ← Projekt-Instruktionen (identisch auf beiden)
├── .claude/
│   └── settings.local.json ← Projekt-Permissions (identisch)
├── docs/                   ← Dokumentation, Konzepte
├── agents/                 ← Agent-Definitionen & Skills
├── plugins/                ← Plugin-Code
├── scripts/                ← Automatisierungs-Skripte
└── templates/              ← Vorlagen (CI, Dokumente)
```

### Was bleibt lokal (NICHT in Git)?

```
Lokal pro Workstation:
├── .env                   ← Credentials (jede Station eigene)
├── .mcp.json              ← MCP-Config (kann abweichen)
├── node_modules/           ← Dependencies (npm install)
├── m365-mcp-env/           ← Python venv
└── ~/.claude/
    ├── settings.json       ← Globale Claude-Settings (pro Gerät)
    ├── memory/             ← AI-Memory (pro Gerät/User)
    └── session-env/        ← Sitzungsdaten (pro Gerät)
```

### Workflow: Synchron arbeiten

```
          Mac Mini (Büro)                    MacBook Pro (Unterwegs)
          ─────────────────                  ──────────────────────

    1.    Arbeit erledigen
    2.    git add + commit + push    ───→
    3.                                       git pull
    4.                                       Weiterarbeiten
    5.                               ←───    git add + commit + push
    6.    git pull
    7.    Weiterarbeiten
```

**Goldene Regel**: Immer `git pull` vor Arbeitsbeginn, immer `git push` nach Abschluss.

### MacBook Pro erstmalig einrichten

```bash
# 1. Repo klonen
cd ~/Developer
git clone git@github.com:raphaeljans-sys/jans-ai-hub.git claude-code

# 2. Lokale Dateien einrichten
cd claude-code
cp .env.example .env
# → .env mit eigenen Credentials füllen

# 3. Dependencies
npm install

# 4. Claude Code öffnen
claude
```

---

## 2. Sitzungs-Struktur in Claude Code

### Wann neue Sitzung starten?

| Situation | Aktion |
|-----------|--------|
| Neues Thema / neue Aufgabe | **Neue Sitzung** (`claude` neu starten) |
| Gleiche Aufgabe fortsetzen | **Bestehende Sitzung** weiterverwenden |
| Kontextwechsel (Setup → Entwicklung) | **Neue Sitzung** |
| Kurze Frage zwischendurch | **Neue Sitzung** (leichtgewichtig) |

### Sitzung benennen und strukturieren

Beginne jede Sitzung mit einer klaren Ansage:

```
Beispiele für gute Sitzungs-Eröffnungen:

SETUP:     "Drucker im Netzwerk einrichten"
SETUP:     "MCP-Server für SharePoint konfigurieren"
ENTWICKLUNG: "Baurecht-Agent: SIA-Normen einbinden"
ENTWICKLUNG: "CI-Plugin: Briefvorlage erstellen"
ANWENDUNG:   "Projekt Müller: Baugesuch prüfen mit Baurecht-Agent"
ANWENDUNG:   "Projekt Weber: Offerte erstellen"
```

### Empfohlene Sitzungsdauer

- **Setup-Sitzungen**: So lange wie nötig, oft 1-2 Stunden
- **Entwicklungs-Sitzungen**: 1-3 Stunden, dann committen & neue Sitzung
- **Anwendungs-Sitzungen**: Pro Aufgabe, kurz und fokussiert

---

## 3. Projektstruktur im Git-Repo

### Empfohlene Ordnerstruktur

```
jans-ai-hub/
│
├── CLAUDE.md                    # Hauptkonfiguration für Claude Code
│
├── docs/                        # Dokumentation & Konzepte
│   ├── arbeitsweise-claude-code.md   ← Diese Anleitung
│   ├── ai-agenten-konzept.md
│   ├── ordnerstruktur-ai-hub.md
│   └── setup-blatt.md
│
├── agents/                      # EBENE 2: Agent-Definitionen
│   ├── baurecht/
│   │   ├── SKILL.md             # Agent-Definition als Skill
│   │   ├── prompts/             # System-Prompts
│   │   ├── knowledge/           # Wissensbasis (SIA, Normen)
│   │   └── tests/               # Test-Szenarien
│   ├── ci-corporate/
│   │   ├── SKILL.md
│   │   ├── templates/           # Vorlagen (Brief, Offerte)
│   │   └── assets/              # Logos, Fonts-Info
│   ├── content-web/
│   │   └── SKILL.md
│   └── buchhaltung/
│       └── SKILL.md
│
├── plugins/                     # EBENE 2: Wiederverwendbare Plugins
│   ├── baurecht-checker/        # z.B. als MCP-Server
│   │   ├── index.js
│   │   ├── package.json
│   │   └── README.md
│   └── ci-formatter/
│       ├── index.js
│       └── package.json
│
├── scripts/                     # Hilfsskripte
│   ├── setup-workstation.sh     # Workstation-Setup automatisieren
│   └── create-docs.js           # Dokument-Generator
│
├── templates/                   # EBENE 3: Vorlagen für Anwendung
│   ├── brief.docx
│   ├── offerte.docx
│   └── baugesuch-checklist.md
│
└── .claude/
    └── settings.local.json      # Projekt-Permissions
```

---

## 4. Die drei Arbeitsebenen im Detail

### EBENE 1: Infrastruktur & Setup

**Ziel**: Arbeitsumgebung funktionsfähig machen und halten.

```
Typische Aufgaben:
├── Workstation einrichten (SSH, Git, Homebrew)
├── MCP-Server konfigurieren (M365, Figma, etc.)
├── Netzwerk (Drucker, NAS-Mount, VPN)
├── Claude Code Settings & Permissions
└── Neue Tools installieren
```

**Wo arbeiten**: Direkt auf der jeweiligen Workstation.
**Ergebnis**: Lokale Konfiguration, nicht im Git (ausser Doku).

**Beispiel-Sitzung**:
```
> claude
Du: "Drucker Konica Minolta im Netzwerk einrichten, IP 192.168.1.50"
```

### EBENE 2: Entwicklung (Agents, Plugins, Skills)

**Ziel**: Werkzeuge bauen, die in der täglichen Arbeit eingesetzt werden.

```
Typische Aufgaben:
├── Agent entwickeln (Baurecht, CI, Content)
│   ├── Wissensbasis aufbauen
│   ├── Prompts schreiben & testen
│   └── Als Skill registrieren
├── Plugin entwickeln
│   ├── Code schreiben
│   ├── Als MCP-Server verpacken
│   └── Testen & dokumentieren
└── Templates erstellen
    ├── Brief-Vorlagen
    ├── Offerte-Vorlagen
    └── Checklisten
```

**Wo arbeiten**: Im Git-Repo `jans-ai-hub`, synchronisiert.
**Ergebnis**: Committed & gepusht, auf allen Workstations verfügbar.

**Beispiel-Sitzung**:
```
> cd ~/Developer/claude-code && git pull && claude
Du: "Baurecht-Agent: Füge SIA 118 als Wissensbasis hinzu"
    ... Arbeit ...
Du: /commit
    → git push
```

### EBENE 3: Anwendung (Produktive Arbeit)

**Ziel**: Entwickelte Werkzeuge in echten Architektur-Projekten einsetzen.

```
Typische Aufgaben:
├── Baugesuch prüfen lassen (→ Baurecht-Agent)
├── Offerte erstellen (→ CI-Agent + Template)
├── Brief schreiben (→ CI-Agent)
├── Website-Text verfassen (→ Content-Agent)
└── Rechnung prüfen (→ Buchhaltung-Agent)
```

**Wo arbeiten**: Im Git-Repo, aber Projektdaten liegen auf NAS/Cloud.
**Ergebnis**: Dokumente, Analysen → gespeichert im Projektordner auf NAS.

**Beispiel-Sitzung**:
```
> cd ~/Developer/claude-code && claude
Du: "Prüfe das Baugesuch unter /Volumes/daten/Projekte/2026/Mueller/
     mit dem Baurecht-Agent gegen die Zürcher Bauordnung"
```

---

## 5. Daten-Ablage: Was liegt wo?

```
┌──────────────────────┬──────────────────────────────────────────┐
│ Speicherort          │ Inhalt                                   │
├──────────────────────┼──────────────────────────────────────────┤
│ Git-Repo (lokal+GH)  │ Code, Agents, Plugins, Skills, Doku     │
│                      │ CLAUDE.md, Templates, Scripts            │
├──────────────────────┼──────────────────────────────────────────┤
│ NAS /Volumes/daten   │ Architektur-Projekte, Pläne, Fotos      │
│                      │ Projektspezifische Dokumente             │
├──────────────────────┼──────────────────────────────────────────┤
│ SharePoint/OneDrive  │ Geteilte Büro-Dokumente, Collaboration  │
│                      │ Dokumente die extern geteilt werden      │
├──────────────────────┼──────────────────────────────────────────┤
│ Dropbox              │ Austausch mit externen Partnern          │
├──────────────────────┼──────────────────────────────────────────┤
│ Lokal ~/.claude/     │ AI-Memory, Sessions, persönl. Settings   │
│                      │ Wird NICHT synchronisiert                │
├──────────────────────┼──────────────────────────────────────────┤
│ Lokal .env           │ Credentials, API-Keys                    │
│                      │ Pro Workstation individuell              │
└──────────────────────┴──────────────────────────────────────────┘
```

---

## 6. Täglicher Workflow

### Morgens am Mac Mini (Büro)

```bash
cd ~/Developer/claude-code
git pull                          # Änderungen vom MacBook holen
claude                            # Neue Sitzung starten
```

### Unterwegs am MacBook Pro

```bash
cd ~/Developer/claude-code
git pull                          # Änderungen vom Mac Mini holen
claude                            # Neue Sitzung starten
```

### Nach jeder substanziellen Arbeit

```
Du: /commit                       # Claude erstellt Commit
```
```bash
git push                           # Auf GitHub pushen
```

---

## 7. Übersicht: Befehle & Sitzungstypen

| Befehl | Zweck |
|--------|-------|
| `claude` | Neue Sitzung starten |
| `claude --continue` | Letzte Sitzung fortsetzen |
| `claude --resume` | Bestimmte Sitzung auswählen |
| `/commit` | Änderungen committen |
| `/help` | Hilfe anzeigen |
| `Ctrl+C` | Sitzung beenden |

---

## 8. Checkliste: MacBook Pro Setup

- [ ] SSH-Key generieren (`ssh-keygen -t ed25519`)
- [ ] SSH-Key bei GitHub hinterlegen (`gh ssh-key add`)
- [ ] `~/.ssh/config` mit Port 443 einrichten
- [ ] GitHub Host-Key hinzufügen (`ssh-keyscan`)
- [ ] Repo klonen (`git clone`)
- [ ] `.env` einrichten (Credentials)
- [ ] `npm install`
- [ ] Claude Code installieren
- [ ] `gh` CLI installieren & authentifizieren
- [ ] NAS-Mount einrichten (falls im Büro-LAN)
- [ ] VPN konfigurieren (für Remote-NAS-Zugriff)
