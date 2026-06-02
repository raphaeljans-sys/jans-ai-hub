---
description: "Pruefe und fuehre Sync-Tasks von der anderen Station aus"
---

# Station-Sync

Pruefe ob auf dem NAS Sync-Tasks fuer diese Station warten und fuehre sie aus.

## Ablauf

1. Erkenne die aktuelle Station (MacBook Pro oder Mac Mini) anhand des Hostnamens
2. Pruefe `/Volumes/daten/jans-ai-hub/sync-tasks/<station>/` auf pending Tasks
3. Zeige alle offenen Tasks an
4. Fuehre die Scripts aus (nach Bestaetigung)
5. Verschiebe erledigte Tasks nach `done/`

## Wichtig

- NAS muss gemountet sein (`/Volumes/daten`)
- Tasks werden als Markdown-Dateien im Queue-Verzeichnis gespeichert
- Erledigte Tasks werden nach `sync-tasks/done/` verschoben
- Zeige einen uebersichtlichen Status-Report mit ✅ / ⚠️ Indikatoren

## Queue-Struktur

```
/Volumes/daten/jans-ai-hub/sync-tasks/
  macbook-pro/   ← Tasks die auf dem MacBook Pro ausgefuehrt werden muessen
  mac-mini/      ← Tasks die auf dem Mac Mini ausgefuehrt werden muessen
  done/          ← Erledigte Tasks (Archiv)
```

Fuehre zuerst `bash /Volumes/daten/jans-ai-hub/scripts/sync-task-check.sh` aus,
zeige die Ergebnisse, und frage ob die Tasks ausgefuehrt werden sollen.
