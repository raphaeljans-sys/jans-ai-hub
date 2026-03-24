# JANS Agents

Spezialisierte AI-Agents fuer das Architekturbuero JANS.
Jeder Agent hat einen eigenen Ordner mit seiner Definition und Konfiguration.

## Struktur

```
agents/
  baurecht/          — Baurechts-Agent (Gesetzessuche, Analysen)
  buchhaltung/       — Buchhaltungs-Agent (Rechnungen, Finanzen)
  ci-corporate/      — CI/CD-Agent (Corporate Identity)
  content-web/       — Content-Agent (Website, Social Media)
```

## Neuen Agent erstellen

1. Ordner anlegen: `agents/<name>/`
2. `agent.md` erstellen mit Beschreibung, Arbeitsweise, Datenquellen
3. Optional: Skill in `.claude/skills/<name>.md` registrieren
4. Committen und pushen — alle Stationen profitieren nach `git pull`

## Konvention

- Ein Agent = ein Ordner
- `agent.md` ist die Hauptdefinition
- Zusaetzliche Dateien (Prompts, Templates) im gleichen Ordner
- Agent-Outputs gehen nach SharePoint (siehe CLAUDE.md)
