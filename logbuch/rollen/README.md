# Rollen-Buchhaltung des JANS AI Hub

Hier liegt die Antwort auf die Frage, die der Hub sich bis zum 29.07.2026 nie
gestellt hat: **Wer arbeitet hier eigentlich woran, und wird es gebraucht?**

Grundlage ist die Rollen-Taxonomie prototyper · builder · sweeper · grower ·
maintainer. Konzept: `docs/konzepte/260729-Rollen-Taxonomie/`. Verhalten:
Rule `rules/rollen-taxonomie.md`.

## Dateien

| Datei | Was |
|---|---|
| `rollen-map.tsv` | **kanonische** Zuordnung Baustein zu Rolle, von Hand gepflegt |
| `YYMMDD-rollen-bilanz.md` | Bestand und verbrauchte Rechenzeit je Rolle |
| `YYMMDD-nutzungs-radar.md` | welche Skills wirklich aufgerufen werden, plus Kaltliste |

## Erzeugen

```
bash /Volumes/daten/jans-ai-hub/scripts/rollen-bilanz.sh 30
bash /Volumes/daten/jans-ai-hub/scripts/nutzungs-radar.sh 90
bash /Volumes/daten/jans-ai-hub/scripts/schutzmechanik-selbsttest.sh
```

Der Nutzungs-Radar braucht rund zweieinhalb Minuten, weil er die Transcripts
beider Stationen durchsucht. Die anderen beiden laufen in Sekunden.

## Register pflegen

Neuer Skill, Agent oder Loop? Zeile in `rollen-map.tsv` ergänzen. Fehlt sie,
taucht der Baustein in der Bilanz unter «unzugeordnet» auf und verfälscht jede
Quote. Die Bilanz weist fehlende Einträge in Abschnitt 3b selbst aus.
