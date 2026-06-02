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
  rules/         ← Shared Verhaltensregeln (immer aktiv via @-Import)
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
| Gruppe KISPI | kispi@raphaeljans.ch | M365 Group | Fachplaner Kinderspital (alle Mitglieder erhalten Mails) |
| Gruppe HLEB | HLEBWEB@raphaeljans.ch | M365 Group | Website-Projekt |
| Privat | raphaeljans@me.com | Apple/iCloud | Private Korrespondenz |

- **Gmail wird NICHT verwendet** — der Gmail-Connector ist nur technisch vorhanden
- E-Mails werden ueber **Apple Mail** (via osascript) versendet
- Standard-Absender fuer geschaeftliche Mails: `rj@raphaeljans.ch`

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Buerodaten, Skill-Bibliothek)
- **Microsoft 365**: SharePoint + OneDrive + Outlook via M365-Connector (Certificate-Auth)
- **Google**: Calendar, Drive via Google-Connectoren (Gmail wird NICHT als Haupt-Mail genutzt)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/jans-ai-hub (Projekt-Repo)

## M365 Connector — Certificate-Auth

Die M365-Anbindung nutzt **Certificate-based Authentication** (noetig fuer SharePoint SPO-Befehle).

| Einstellung | Wert |
|---|---|
| App Registration | SharePoint MCP Connector (JANS) |
| App ID | `80c24101-4597-48db-8388-c6e8bdc75f5f` |
| Tenant ID | `d3ea8e1a-8ecc-479d-b831-6c0784ee0b51` |
| Auth-Typ | Certificate (PEM) |
| Zertifikat-Pfad | `~/.cli-m365-cert-combined.pem` (lokal pro Station) |
| Zertifikat gueltig bis | 23. Maerz 2028 |

### API-Berechtigungen (Application)
- Microsoft Graph: Files.Read.All, Group.Create, Group.Read.All, Group.ReadWrite.All, Mail.Read, Mail.Send, Sites.Read.All, User.Read.All
- SharePoint: Sites.FullControl.All

### M365 Gruppen (Teams/Gruppenpostfaecher)

| Gruppe | Mail | Typ | Beschreibung |
|---|---|---|---|
| JANS - 2619-KISPI | kispi@raphaeljans.ch | M365 Group (Unified) | Fachplaner KISPI (Kinderspital) |
| HLEB WEB | HLEBWEB@raphaeljans.ch | M365 Group (Unified) | Website-Projekt |

- Gruppen-Mails erreichen **alle Mitglieder** der Gruppe
- Verwaltung ueber Outlook Web (outlook.office.com) unter "Gruppen"
- Jede Gruppe hat automatisch eine SharePoint-Dokumentbibliothek
- Outlook for Mac (neue Version) zeigt Gruppen NICHT als separaten Sidebar-Bereich

### Zertifikat erneuern (alle 2 Jahre)
```bash
openssl req -x509 -newkey rsa:2048 -keyout ~/.cli-m365-cert-key.pem -out ~/.cli-m365-cert.pem -days 730 -nodes -subj '/CN=JANS-AI-Hub-M365'
cat ~/.cli-m365-cert-key.pem ~/.cli-m365-cert.pem > ~/.cli-m365-cert-combined.pem
chmod 600 ~/.cli-m365-cert-combined.pem ~/.cli-m365-cert-key.pem
# Public-Cert in Azure Portal hochladen (App Registration > Certificates)
# Auf Mac Mini kopieren: scp ~/.cli-m365-cert-combined.pem raphaeljans@100.120.219.12:~/.cli-m365-cert-combined.pem
```

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

### Station-Sync (automatische Task-Queue)

Wenn auf einer Station eine Aenderung gemacht wird, die die andere Station betrifft,
wird ein Sync-Task auf dem NAS hinterlegt. Beim Start auf der anderen Station wird
dieser automatisch erkannt und ausgefuehrt.

```
/Volumes/daten/jans-ai-hub/sync-tasks/
  macbook-pro/   ← Tasks fuer MacBook Pro
  mac-mini/      ← Tasks fuer Mac Mini
  done/          ← Erledigte Tasks (Archiv)
```

- **Task erstellen**: `bash /Volumes/daten/jans-ai-hub/scripts/sync-task-create.sh <ziel> <titel> <script>`
- **Tasks pruefen**: `/station-sync` oder `bash /Volumes/daten/jans-ai-hub/scripts/sync-task-check.sh`
- **WICHTIG**: Wenn Claude auf einer Station gestartet wird und das NAS gemountet ist,
  IMMER zuerst `/station-sync` pruefen ob offene Tasks von der anderen Station vorliegen.

## Output-Ablage

Alle Export-Dokumente (PDFs, Reports, Agent-Outputs) werden auf SharePoint abgelegt:

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/
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
| `kostenschaetzung` | `skills/kostenschaetzung/SKILL.md` | Healthcare-Kostenkennwerte, Grobschaetzungen |
| `website-content` | `skills/website-content/SKILL.md` | WordPress Content-Upload fuer raphaeljans.ch |
| `offertenpruefung` | `skills/offertenpruefung/SKILL.md` | Strukturierte Pruefung von Offerten/Angeboten (Factsheet, Risiken, Reduktionsstrategie) |
| `ausschreibung` | `skills/ausschreibung/SKILL.md` | Submissions-/Devis-Erstellung fuer Spezialplaner und Unternehmer (Gegenstueck zu offertenpruefung); 3-Phasen-Workflow LV-Erstellung / Versand / Auswertung |
| `unternehmerfindung` | `skills/unternehmerfindung/SKILL.md` | Findet zu LV/Gewerk (BKP) + Bauort + Bauaufgabe die bestgeeigneten Unternehmer und gibt eine gerankte Shortlist aus; Stufe VOR `ausschreibung`. Nutzt Stammdaten-DB (`ausschreibung/anbieter/stammdaten/`), macOS-Kontakte, Projekt-Archiv, regionale Web-Suche; Fan-out via Agent `unternehmer-scout` |
| `werkvertrag` | `skills/werkvertrag/SKILL.md` | Bauleitungs-Back-End **Phase G**: Werkvertrag nach SIA 118 in 3 Verguetungsmodellen (Einheitspreis/Pauschal/Kostendach) inkl. 22 Allgemeine Bedingungen; Stufe NACH Vergabe, VOR `unternehmerkontrolle` |
| `unternehmerkontrolle` | `skills/unternehmerkontrolle/SKILL.md` | Bauleitungs-Back-End **Phase H** (Realisierung): Ausmass, Akonto, Nachtrag, Regie, Abnahme, Maengel, Garantie; Vorlagen Abnahme-/Maengelprotokoll, Garantieschein, NT-/Regie-Formular |
| `kostenkontrolle` | `skills/kostenkontrolle/SKILL.md` | Bauleitungs-Back-End **Phase I**: BKP-gegliederte Baubuchhaltung (Budget/Verpflichtung/Zahlung), Kostenrapporte, Schlussabrechnungs-Pruefung, Garantieverfalldaten; Fortsetzung von `kostenschaetzung` |
| `terminplanung` | `skills/terminplanung/SKILL.md` | Bauprogramme und Ausfuehrungsterminplaene |
| `pendenzenliste` | `skills/pendenzenliste/SKILL.md` | Pendenzenlisten fuer Bauprojekte mit Uebersicht je Fachplanung (gruppiert), Personen-Legende und blockartig formuliertem Detailteil; aus Mails/Protokollen/Sitzungen destillierbar |
| `protokoll` | `skills/protokoll/SKILL.md` | Sitzungsprotokolle fuer Bauprojekte mit Stamm, Personen-Legende, themenbasierten Sektionen (Sprinkleranlage, BMA, Schliessplan, Brandfallmatrix als eigene Bloecke) und Terminen sechsstellig; Schwesterskill von `pendenzenliste` |
| `marketing` | `skills/marketing/SKILL.md` | LinkedIn-Marketing-Harness (polarisierender Stakkato-Stil) fuer Healthcare-Architektur; orchestriert die drei Sub-Agenten linkedin-stratege / linkedin-texter / linkedin-engagement; Sog-Gegenstueck zum telesales-Skill |
| `korrektur` | `skills/korrektur/SKILL.md` | **QS-Harness vor jedem Versand**: jagt JEDES Texterzeugnis (Mail, DOCX/PDF, LV, Protokoll, Post, Web-Text, Chat-Antwort zum Kopieren) parallel durch die Agenten `rechtschreibung` (echte Umlaute ä/ö/ü, ss statt ß, Tippfehler) und `layout` (Dokument-/Mail-Standard, Umbrueche, sechsstellige Daten); gibt korrigierte Fassung + Ampel zurueck. Letzte Stufe vor der Ausgabe — erzwingt die `umlaute-konvention.md` |
| `wissenscheck` | `skills/wissenscheck/SKILL.md` | **Wissens-Health-Check** fuer den Wissens-Layer (`wissen/`): auditiert eine Wissensbasis in 7 Audits (Widersprueche, kaputte Backlinks, unbelegte Claims, RAW-Coverage, veraltete Artikel, Schreibregel-Verstoesse, Promotion-Kandidaten), schreibt Report nach `outputs/` und protokolliert im `CHANGELOG.md`. Zwei Phasen: Phase 1 (Audit) laeuft immer/unbeaufsichtigt (Scheduled Task), Phase 2 (Aktionen) nur interaktiv. Schwester von `heartbeat` (System- statt Wissens-Health); nutzt `korrektur` fuer Audit F |

### Skill-Referenzen (Konvention)
Jeder Skill kann einen `referenzen/`-Ordner haben fuer hochprioritaere PDFs:
```
skills/<skill-name>/
  SKILL.md              ← Skill-Definition
  referenzen/           ← PDFs mit hoechster Prioritaet
    README.md           ← Was gehoert hierhin + Inhaltsverzeichnis
    JJJJMMTT-Titel.pdf  ← Validierte Fachquellen
```

| Skill | Referenzen-Ordner | Beispiel-Inhalt |
|---|---|---|
| `baurecht` | `skills/baurecht/referenzen/` | Blaues Buch PBG ZH, Kommentare |
| `kostenschaetzung` | `skills/kostenschaetzung/referenzen/` | Wuest Partner Kostenkennwerte |
| `offertenpruefung` | `skills/offertenpruefung/referenzen/` | KBOB-Tarife, SIA 118/1024, Vergleichsofferten (anonymisiert), Marktreports |
| `ausschreibung` | `skills/ausschreibung/referenzen/` | Goldstandard-Beispiel-Offerten, SIA 118/1024, AGB-Vorlagen, Branchen-Marktreports |

### Skill-uebergreifende Referenzen (`/Volumes/daten/jans-ai-hub/references/`)

Verbindliche Fachstandards, die von mehreren Skills/Agents gleichzeitig genutzt werden:

| Referenz | Pfad (auf NAS) | Verbindlich fuer |
|---|---|---|
| BKP 2017 (CRB) | `references/bkp-2017/BKP-2017-Liste.md` + `BKP-2017-CRB.pdf` | offertenpruefung, ausschreibung, kostenschaetzung, terminplanung, brandschutz, honorarberechnung-sia102 |

Verbindlichkeit wird ueber die Rule `bkp-2017-referenz.md` durchgesetzt — siehe Sektion "Geteilte Verhaltensregeln".

### Agents (Sub-Agents)
| Agent | Pfad (auf NAS) | Beschreibung |
|---|---|---|
| `recherche` | `agents/recherche.md` | Systematische Recherche ueber alle Quellen |
| `dokument` | `agents/dokument.md` | Professionelle Dokumente erstellen (Word/PDF) |
| `email` | `agents/email.md` | E-Mails im JANS-Stil verfassen |
| `unternehmer-scout` | `agents/unternehmer-scout.md` | Durchsucht je eine Quelle (Stammdaten/Kontakte/Archiv/Web) nach Unternehmern fuer ein Gewerk + Bauort; liefert belegte Kandidaten zurueck (Fan-out fuer Skill `unternehmerfindung`) |
| `website-content` | `agents/website-content.md` | WordPress Projekt-Upload fuer raphaeljans.ch |
| `linkedin-stratege` | `agents/linkedin-stratege.md` | Marketing-Harness: Positionierung + Redaktionsplan (WAS gepostet wird) |
| `linkedin-texter` | `agents/linkedin-texter.md` | Marketing-Harness: schreibt fertige LinkedIn-Posts im polarisierenden JANS-Stil |
| `linkedin-engagement` | `agents/linkedin-engagement.md` | Marketing-Harness: Kommentare, Reaktionen, Vernetzungsnachrichten, Post-Recycling |
| `rechtschreibung` | `agents/rechtschreibung.md` | Korrektur-Harness: Orthografie-Pruefer — erzwingt echte Umlaute ä/ö/ü (nie blind ersetzen), ss statt ß, Tippfehler/Grammatik; laeuft parallel zu `layout` (Skill `korrektur`) |
| `layout` | `agents/layout.md` | Korrektur-Harness: Layout-/Formatierungs-Pruefer — Dokument-/Mail-Standard, fehlerhafte Umbrueche, Tabellen-Header, sechsstellige Daten, Dateinamen-Konvention; laeuft parallel zu `rechtschreibung` (Skill `korrektur`) |

### Custom Commands (Slash-Commands)
| Command | Beschreibung |
|---|---|
| `/status` | Kompletter Systemcheck (Hardware, Netzwerk, Dienste) |
| `/sync` | Git-Sync mit GitHub (Backup) |
| `/nas` | NAS-Mount pruefen und reparieren |
| `/m365` | Microsoft 365 Connector testen |
| `/morgen` | Morgen-Briefing (Kalender, E-Mails, System) |
| `/station-sync` | Sync-Tasks von der anderen Station pruefen und ausfuehren |
| `/website` | Website-Content: Projekte hochladen, Status pruefen |
| `/korrektur` | Korrektur-Harness: Erzeugnis durch `rechtschreibung` + `layout` jagen, versandfertige Fassung + Ampel zurueck |

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

## Wissens-Layer (`wissen/`)

Die dritte Schicht des Hub neben **Skills** (Fähigkeiten) und **Rules** (Verhalten):
eine sich selbst verbessernde, kompoundierende Wissensbasis, in der Claude als
**KI-Bibliothekar** arbeitet (Prinzip nach Karpathy / Corey Ganim, an die JANS-Harness
angepasst). Statt dass Raphael Wissen von Hand ordnet, kippt er Rohmaterial rein und
Claude kompiliert, verlinkt und pflegt es.

```
wissen/
  WISSEN-CLAUDE.md     ← Meta-Schema (zuerst lesen)
  <domäne>/
    raw/   ← Quell-Dump (reinkippen, nie ordnen; Claude liest, editiert nie)
    wiki/  ← kompilierte Artikel + INDEX.md + QUESTIONS.md (Claudes Domäne; nie von Hand editieren)
    outputs/ ← erzeugte Reports; die guten fliessen zurueck ins Wiki (Compounding)
    CLAUDE.md / CHANGELOG.md
```

- **Bibliothekar-Rolle:** Rule `wissens-bibliothekar.md` (Autonomie *active-with-flagging*:
  schreibt/verlinkt ohne Rueckfrage, loggt alles im CHANGELOG, fragt nur vor Destruktivem).
- **Compounding-Loop:** jede inhaltliche Frage erzeugt einen Output in `outputs/` und
  laesst das Wiki wachsen — Antwort Nr. 50 baut auf 1–49 auf.
- **Health-Check:** Skill `wissenscheck` (monatlich, 7 Audits, 2 Phasen) haelt die KB sauber.
- **Aktuelle KBs:** `baurecht/` (Pilot, Seed aus `docs/baurecht/`).
- Kanonisch auf dem NAS (`sync-kanonische-quelle.md`).

## Wichtige Regeln
- **Jede Station arbeitet lokal** mit Claude Code — Skills werden ueber NAS geteilt
- Repo auf SSD (`~/Developer/jans-ai-hub`), NIEMALS ueber SMB-Mount bearbeiten
- Skills/Agents/Commands liegen auf dem NAS und sind per Symlink eingebunden
- NAS muss gemountet sein (`/Volumes/daten`) damit Skills funktionieren
- Passwoerter und Credentials NIEMALS committen
- GitHub nur fuer Backup/Versionierung
- Fuer sensible Daten: `.env` (in .gitignore) oder macOS Keychain

## Geteilte Verhaltensregeln (Rules)

Verhaltens- und Stil-Regeln liegen auf dem NAS unter `/Volumes/daten/jans-ai-hub/rules/` und werden hier per `@`-Import eingebunden. So sind Aenderungen sofort auf allen Stationen aktiv — analog zur Skill-/Agent-/Command-Architektur.

Aktive Rules:

@/Volumes/daten/jans-ai-hub/rules/anrede-kontakte.md
@/Volumes/daten/jans-ai-hub/rules/antwort-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/auftrags-dekomposition.md
@/Volumes/daten/jans-ai-hub/rules/auto-verbesserungen.md
@/Volumes/daten/jans-ai-hub/rules/bkp-2017-referenz.md
@/Volumes/daten/jans-ai-hub/rules/dateinamen-konvention.md
@/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
@/Volumes/daten/jans-ai-hub/rules/git-auto-push.md
@/Volumes/daten/jans-ai-hub/rules/identifikatoren-verifizieren.md
@/Volumes/daten/jans-ai-hub/rules/jans-absenderadresse.md
@/Volumes/daten/jans-ai-hub/rules/mail-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/osascript-apple-apps.md
@/Volumes/daten/jans-ai-hub/rules/sync-kanonische-quelle.md
@/Volumes/daten/jans-ai-hub/rules/umlaute-konvention.md
@/Volumes/daten/jans-ai-hub/rules/wissens-bibliothekar.md

Details zur Rules-Architektur und wie neue Regeln angelegt werden: siehe `/Volumes/daten/jans-ai-hub/rules/README.md`.
