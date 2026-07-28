# Synobsis-Batch-Lauf — 28.07.2026, 02:17 (Mac Mini)

## Ergebnis in einem Satz

Kein Batch gefahren: die KB ist saturiert (853/853, 0 offen), und der Task traegt
seit dem 25.07.2026 in seinem eigenen Kopf den Vermerk «DEAKTIVIERT». Der Lauf
kam zustande, weil die Deaktivierung nur in der SKILL.md dokumentiert, aber nie in
der Scheduled-Task-Registry vollzogen wurde. Diese Luecke ist mit diesem Lauf
geschlossen.

## Vorbedingungen

| Pruefung | Befund |
|---|---|
| Host-Weiche `hostname` enthaelt «Macmini» | erfuellt (`Macmini.local`) |
| `/Volumes/daten/05_Architekten_Synobsis` | gemountet |
| `/Volumes/daten/jans-ai-hub` | gemountet |
| Zeitfenster 22:00–06:00 | eingehalten (02:17) |

## Status (unveraendert vorher/nachher)

```
Architekten gesamt: 853
verarbeitet:        853
offen:              0
Stand:              2026-07-02T22:52:26
```

Der Scan-Stand steht seit dem 02.07.2026 still — seither hat kein Lauf mehr etwas
zu tun gehabt. Dies ist der 15. Leerlauf in Folge.

## Warum kein Batch gefahren wurde

1. **Nichts zu tun.** `offen: 0` — `synobsis_batch.sh 25` haette 0 Architekten
   verarbeitet und nur Tokens verbraucht.
2. **Der Task gilt seit dem 25.07.2026 als deaktiviert** (Kopfzeile der SKILL.md,
   gesetzt vom VOLLGAS-Chef-Radar). Reaktivierungsbedingung dort: «sobald neues
   Synobsis-Material eintrifft».
3. **Rule 260727 (Leerlauf-Waechter)** verlangt ab 5 Delta-Null-Laeufen in Folge
   die Deaktivierung — hier 15.

## Befund: die Deaktivierung war nur zu zwei Dritteln vollzogen

Gegenprobe an allen drei Feuermechanismen (Rule 260727 + Nachtrag 260728):

| Ort | Zustand vor diesem Lauf | Bewertung |
|---|---|---|
| launchd (`~/Library/LaunchAgents`) | `ch.jans.synobsis-batch.plist.bak-stillgelegt-20260725`, nicht geladen | korrekt stillgelegt |
| Endlos-Runner `vollgas-runner.sh` | `synobsis` steht in `EXCLUDE_RE` (Zeile 101) | korrekt ausgeschlossen |
| **Scheduled-Task-Registry** | **`enabled: true`**, Cron `17 2 * * *` | **Luecke — feuerte weiter** |

Damit ist dies derselbe Fehlertyp, den der Nachtrag vom 28.07.2026 fuer
`training-plg` und `training-energie` beschreibt: die Dokumentation der
Deaktivierung lief der Wirksamkeit voraus.

## Vollzug in diesem Lauf

- Scheduled Task `synobsis-batch-nacht` auf `enabled: false` gesetzt
  (`update_scheduled_task`) — reversibel, Prompt und Cron bleiben erhalten.
- Beschreibung des Tasks auf den Deaktivierungsgrund umgestellt.
- Kein Batch, kein Fan-out, kein Subagent, keine Quell-Aenderung an
  `/Volumes/daten/05_Architekten_Synobsis` (bleibt read-only).

## Reaktivierungsbedingung

Sobald neues Material in `/Volumes/daten/05_Architekten_Synobsis` eintrifft
(Architektenzahl > 853 bzw. `offen > 0`): Task in der Registry auf
`enabled: true` setzen. Der Runner-Ausschluss und der launchd-Zustand duerfen
dabei unveraendert bleiben — die Registry ist seit dem 25.07. der einzige
vorgesehene Taktgeber dieses Laufs.

## Offener Punkt (nicht in diesem Lauf entschieden)

`baurecht-buch-training` traegt in der Registry die Beschreibung «DEAKTIVIERT auf
Mac Mini (12.07.2026)», steht aber ebenfalls auf `enabled: true` und ist am
27.07. um 23:34 gelaufen. Gleicher Fehlertyp, anderer Task — gehoert dem
Baurecht-Loop und wird hier nur gemeldet, nicht angefasst.
