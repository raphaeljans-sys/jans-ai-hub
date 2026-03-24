# JANS Plugins

Wiederverwendbare Plugins und Tools fuer Claude Code.
Plugins erweitern die Faehigkeiten aller Arbeitsstationen.

## Struktur

```
plugins/
  baurecht-checker/  — Prueft Bauprojekte gegen geltendes Recht
  ci-formatter/      — Formatiert Dokumente nach JANS CI
```

## Neues Plugin erstellen

1. Ordner anlegen: `plugins/<name>/`
2. `plugin.md` erstellen mit Beschreibung und Anleitung
3. Committen und pushen — alle Stationen erhalten das Plugin nach `git pull`

## Unterschied Agent vs Plugin

- **Agent**: Eigenstaendiger Spezialist mit Wissensdomaene (z.B. Baurecht-Agent)
- **Plugin**: Werkzeug/Erweiterung fuer spezifische Aufgaben (z.B. CI-Formatter)
