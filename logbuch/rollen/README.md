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
Quote. Die Bilanz weist fehlende Einträge selbst aus.

Sechs Spalten, tabgetrennt: `name`, `typ`, `rolle`, `begruendung`, `status`,
`pfad`.

- `status` entscheidet, ob Kälte ein Befund ist. `anlassgebunden` heisst, der
  Skill wartet auf ein reales Projekt und ist zu Recht kalt. `ersetzt` heisst,
  die Arbeit läuft über einen Agenten, ein Script oder eine Rule. Nur `pruefen`
  landet in der Klärungsliste.
- `pfad` ist der Zielbereich für die Liefer-Delta-Messung, etwa `wissen/normen`.
  Leer bedeutet «nicht gemessen», nicht «nichts geliefert».

## Was die Zahlen NICHT sagen

Ein Lauf zählt erst als Arbeit, wenn er mit rc=0 endet. Fehlstarts und vom
Stall-Killer abgewürgte Hänger stehen in einer eigenen Klasse. Und das
Liefer-Delta zeigt, dass im Zielbereich etwas passiert ist, nicht dass dieser
Loop es war.
