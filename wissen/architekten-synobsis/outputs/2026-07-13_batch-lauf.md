# Synobsis-Batch-Lauf — 2026-07-13 (Nacht)

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Zeitfenster 22:00–06:00.
Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026).

## Vorbedingungen
- Host: Macmini.local (Host-Weiche ok)
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` + `/Volumes/daten/jans-ai-hub` erreichbar
- venvs vorhanden: `~/.venvs/pdftools` (Stufe 1), `~/.venvs/synobsis` (Stufe 2)

## Stand vorher
- Architekten gesamt: 853 · verarbeitet: 853 · offen: 0 (Erstdurchlauf seit 2026-07-02 komplett)

## Ablauf
`bash tools/synobsis_batch.sh 25`:
- Stufe 1: nichts zu tun (853/853 verarbeitet, offen 0) — kein neuer Stoff in der Quelle.
- Stufe 2: Vektorindex `catalog/vectors.npz` neu geschrieben (853 × 768), Inhalt
  deterministisch identisch zum Vorlauf (kein Git-Diff auf der Binaerdatei).
- Stufe 3 (Kuratierung): entfaellt — keine neuen Katalog-Eintraege in diesem Lauf.

## Auffaelligkeiten
- `catalog/INDEX.md`: Zeitstempel aktualisiert (849 Architekten indexiert, unveraendert
  ggue. Vorlauf).
- `catalog/cad-index.json`: enthaelt nun 15 Architekten mit erkannten CAD-Dateien
  (`architekten_mit_cad: 15`) — Verbesserung ggue. dem Befund vom 12.07.2026 (dort 0
  Eintraege, Datei bewusst nicht committet). Ursache der Verbesserung nicht in diesem
  Lauf untersucht (vermutlich Tagesarbeit zwischen den Laeufen); wird diesmal committet,
  da inhaltlich nicht mehr leer/irrefuehrend.

## Fortschritt
853/853 Architekten weiterhin vollstaendig gescannt. Dieser Lauf hat keinen neuen Stoff
eingelesen, den Vektorindex aktualisiert und den CAD-Index-Fortschritt bestaetigt.
