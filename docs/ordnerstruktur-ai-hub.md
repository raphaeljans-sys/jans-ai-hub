# JANS AI-Hub - Ordnerstruktur & Ablagesystem

## Grundprinzip
```
QUELLDATEN (Read) → AI VERARBEITUNG (Mac Mini) → OUTPUTS (Write)
```

## Mac Mini - Lokale Struktur (SSD)
```
~/Developer/
├── claude-code/              # Claude Code Hauptprojekt
│   ├── .mcp.json             # MCP Connectoren (NICHT committen)
│   ├── .gitignore
│   └── docs/                 # Dokumentation
│
├── agents/                   # AI Agenten Definitionen
│   ├── ci-agent/             # Corporate Identity JANS
│   ├── baurecht-agent/       # Baurecht & Normen
│   ├── content-agent/        # Website Content
│   ├── buchhaltung-agent/    # Bexio/Buchhaltung
│   └── projekt-admin-agent/  # Projektabwicklung
│
└── rag/                      # RAG Pipeline
    ├── embeddings/           # Vektor-Embeddings
    ├── index/                # Suchindex
    └── config/               # RAG Konfiguration

~/ai-jobs/
├── scripts/
│   ├── start-job.sh          # Overnight Job starten
│   └── status.sh             # Job Status prüfen
├── logs/                     # Job Logs
└── templates/                # Prompt Templates
```

## NAS DS918+ - Datenstruktur (Quelldaten READ)
```
/volume2/daten/               # Hauptdaten (6TB)
├── 00_ARCHITEKTUR_KB/        # Wissensdatenbank (NEU - AI optimiert)
│   ├── referenzprojekte/     # Bilder + Texte nach Projekt
│   ├── wettbewerbe/          # Wettbewerbstexte + Jurytexte
│   ├── normen/               # SIA, Baurecht, Gesetze
│   └── vorlagen/             # Templates, CI-Vorlagen
│
├── PROJEKTE/                 # Aktive Projekte
│   ├── KISPI/                # Kinderspital
│   │   ├── 01_admin/         # Terminpläne, Adressen
│   │   ├── 02_planung/       # Planpakete
│   │   ├── 03_controlling/   # Kostenüberwachung
│   │   └── 04_korrespondenz/ # Mails, Briefe
│   └── .../
│
├── ARCHIV/                   # Abgeschlossene Projekte
└── VERWALTUNG/               # Buchhaltung, HR
```

## SharePoint - Kollaboration (READ/WRITE)
```
raphaeljans.sharepoint.com/
├── JANS/                     # Hauptsite
│   ├── Shared Documents/     # Geteilte Dokumente
│   └── Projekte/             # Projektspezifisch
│
└── JANSDATENAUSTAUSCH/       # Externer Datenaustausch
    └── Kunden/               # Pro Kunde
```

## Dropbox - Externe Quellen (READ)
```
~/Library/CloudStorage/Dropbox/
├── JANS/                     # Büro-Daten
├── JANS Büro/                # Büro-Organisation
└── CLAUDIA/                  # Kollab. Projekte
```

## OneDrive - Microsoft Integration (READ/WRITE)
```
~/Library/CloudStorage/OneDrive-JANS/
└── Projekte/                 # M365-synchronisierte Projekte
```

## Output-Verzeichnisse (WRITE)
```
/volume2/daten/AI_OUTPUTS/    # NAS - Permanente Speicherung
├── wettbewerbstexte/         # Generierte Texte
├── bildgenerierung/          # AI-generierte Bilder
├── projektberichte/          # Reports, Analysen
├── website-content/          # WordPress-Content
└── buchhaltung/              # Finanzberichte

~/ai-jobs/outputs/            # Mac Mini - Temporär
└── YYYY-MM-DD/               # Pro Tag
```

## Datenfluss pro Agent

### CI Agent
```
QUELLEN: NAS/referenzprojekte + Dropbox/JANS
→ VERARBEITUNG: Mac Mini (Claude Code)
→ OUTPUT: NAS/AI_OUTPUTS/website-content + SharePoint
```

### Baurecht Agent
```
QUELLEN: NAS/normen + Online-Quellen (Gesetze)
→ VERARBEITUNG: Mac Mini (RAG Pipeline)
→ OUTPUT: NAS/AI_OUTPUTS/projektberichte
```

### Content Agent
```
QUELLEN: Dropbox/JANS + NAS/referenzprojekte
→ VERARBEITUNG: Mac Mini (Claude Code)
→ OUTPUT: WordPress (Hostpoint) via API
```

### Buchhaltung Agent
```
QUELLEN: Bexio API + NAS/VERWALTUNG
→ VERARBEITUNG: Mac Mini
→ OUTPUT: NAS/AI_OUTPUTS/buchhaltung
```

### Projekt Admin Agent (z.B. Kispi)
```
QUELLEN: NAS/PROJEKTE/KISPI + SharePoint + Outlook
→ VERARBEITUNG: Mac Mini
→ OUTPUT: NAS/PROJEKTE/KISPI + SharePoint + Outlook
```
