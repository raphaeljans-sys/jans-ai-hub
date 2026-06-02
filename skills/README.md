# JANS AI Hub — Skills-Bibliothek

## Neuen Skill hinzufügen

1. Ordner erstellen: `.claude/skills/<skill-name>/`
2. Skill-Datei als `SKILL.md` im Ordner ablegen
3. Neue Claude Code Session starten — Skill wird automatisch erkannt

## Struktur

```
.claude/skills/
├── baurecht/
│   └── SKILL.md         ← Schweizer Baurecht (Kt. ZH + SZ)
├── <neuer-skill>/
│   └── SKILL.md         ← Datei MUSS so heissen
└── README.md            ← Diese Datei
```

## Regeln
- Ordnername = Skill-Name (Kleinbuchstaben, Bindestrich statt Leerschlag)
- Datei muss exakt `SKILL.md` heissen (Grossbuchstaben)
- Ein Skill pro Ordner
- **Jeder Skill folgt dem verbindlichen `SKILL-CONTRACT.md`** (Front-Matter +
  Contract-Kopfblock: Trigger / Inputs / Output-Ablage / abhaengige Rules /
  vor-+nachgelagerte Skills). Goldstandard-Vorbild: `ausschreibung/SKILL.md`.
- Skills liegen zentral auf dem NAS — alle Workstations profitieren sofort via Symlink

## Skill von einem Kollegen erhalten?
```bash
mkdir -p .claude/skills/<skill-name>/
cp erhaltene-datei.md .claude/skills/<skill-name>/SKILL.md
```
