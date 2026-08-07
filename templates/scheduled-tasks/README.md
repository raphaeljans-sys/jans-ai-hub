# Scheduled-Tasks-Spiegel (Backup der Wecker-Dateien beider Stationen)

Die Claude-Scheduled-Tasks («Routinen» in der App) liegen pro Station auf
User-Ebene unter `~/.claude/scheduled-tasks/<task>/SKILL.md` und waren bis zum
07.08.2026 das einzige Stück der Routinen-Architektur ohne Git-Backup. Dieser
Ordner schliesst die Lücke: er ist ein **Spiegel**, kein Arbeitsort.

## Struktur

```
templates/scheduled-tasks/
  macbook-pro/   <- Spiegel von ~/.claude/scheduled-tasks/ auf dem MacBook Pro
  mac-mini/      <- Spiegel von ~/.claude/scheduled-tasks/ auf dem Mac Mini
```

## Mechanik

- Script: `scripts/scheduled-tasks-mirror.sh` — spiegelt die lokale Registry
  per rsync (`--delete`, der Spiegel folgt dem Ist-Stand; Historie liegt in Git).
  Auf dem MacBook Pro wird die Mini-Registry via `ssh mini` opportunistisch
  mitgezogen (Mini offline = kein Fehler, letzter Stand bleibt stehen).
- Takt: heartbeat Check 11 (werktags ~09:40 auf dem MacBook Pro).
- Commit: übernimmt der native NAS-Committer `nas-selfcommit.sh` (15-Min-Cron).

## Wichtig beim Lesen und Wiederherstellen

- **Der Spiegel ist Dokumentation, nie Live-Zustand.** `enabled:` und
  `cron_target:` im Frontmatter können dem echten Betrieb widersprechen
  (belegt: `energie-training` feuert trotz `enabled: false`). Wahrheit über
  aktive Takte hat nur `list_scheduled_tasks` auf der jeweiligen Station.
- **Restore nach Stationsverlust:** Task-Ordner aus dem passenden
  Stations-Unterordner nach `~/.claude/scheduled-tasks/` kopieren, dann die
  Tasks in einer Claude-Session verifizieren/neu registrieren
  (`list_scheduled_tasks` muss sie zeigen; sonst je Task neu anlegen und den
  gespiegelten Prompt einsetzen).
- **Hier nie editieren.** Änderungen an Takt oder Prompt gehören in die echte
  Registry der Station (Scheduled-Task-Tools); der Spiegel zieht beim nächsten
  Lauf nach. Ein Edit hier wird kommentarlos überschrieben.
