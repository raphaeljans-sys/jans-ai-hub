# Synobsis-Batch-Lauf — 2026-07-12 (Nacht)

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Zeitfenster 22:00–06:00.

## Vorbedingungen
- Host: Macmini.local (Host-Weiche ok)
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` + `/Volumes/daten/jans-ai-hub` erreichbar
- venvs vorhanden: `~/.venvs/pdftools` (Stufe 1), `~/.venvs/synobsis` (Stufe 2)

## Stand vorher
- Architekten gesamt: 853 · verarbeitet: 853 · offen: 0 (Erstdurchlauf war komplett)
- Vektorindex `catalog/vectors.npz` vorhanden (853 × 768, Stand 2026-07-03)

## Blocker gefunden und behoben
Der erste Batch-Aufruf brach in Stufe 1 ab:

```
File ".../tools/synobsis_scan.py", line 248, in rebuild_index
    a = r["architekt"]["name"]
KeyError: 'architekt'
```

Ursache: Am 2026-07-11 kamen zwei Hilfs-/Referenzdateien in `catalog/` dazu, die
keine Architekten-Records sind, sondern Typologie-Referenzen mit `_meta`-Kopf:
`typology-map.json` (29 KB) und `raumtypen-beschreibungen.json` (2 KB).
`rebuild_index()` iteriert alle `*.json` in `catalog/` und hatte nur
`documents.jsonl`, `cad-index.json`, `aliases.json` in der Skip-Liste, nicht diese
neuen Dateien.

Fix (robust statt Namensliste): in `rebuild_index()` einen Guard ergaenzt, der jeden
Record ohne `architekt`-Key ueberspringt — deckt aktuelle und kuenftige
Nicht-Architekten-JSONs im `catalog/` ab. `rebuild_cad_index()` war nicht betroffen
(dort werden Records ohne `cad_dateien` ohnehin uebersprungen), der Embed-Schritt
liest `documents.jsonl`, nicht die Einzel-JSONs.

## Stand nachher (nach Fix, sauberer Durchlauf)
- Stufe 1: nichts zu tun (853/853 verarbeitet, offen 0)
- Stufe 2: `catalog/vectors.npz` neu geschrieben (853 × 768), deterministisch — keine
  Byte-Aenderung ggue. Vorlauf, daher kein Git-Diff
- `catalog/INDEX.md` sauber neu gebaut: 849 Architekten indexiert (853 Ordner minus 4
  bekannte Katalog-Kollisionen; die 2 Typologie-Referenzdateien korrekt ignoriert)
- Semantik-Test „introvertierter Hof Beton Kapelle": plausible Treffer (Boehm, Zumthor,
  Gartmann, Muelletaler)

## Auffaelligkeiten / offene Punkte
1. `catalog/cad-index.json` wird von `rebuild_cad_index()` mit 0 Eintraegen erzeugt
   (architekten_mit_cad: 0). Die Katalog-Records tragen offenbar kein `cad_dateien`.
   Der im PROGRAMM/CHANGELOG erwaehnte CAD-Index ist damit faktisch leer. NICHT
   committet (keine irrefuehrende Leer-Datei ins Repo). Zu klaeren: ob der Scan die
   CAD-Erkennung noch fuellen muss, oder ob die Bibliothek schlicht keine erkannten
   CAD-Dateien enthaelt. Nicht tonight-scope.
2. `synobsis_query.py --semantic` faellt auf Stichwort-Modus zurueck („numpy fehlt"),
   weil das Query-Tool mit dem `pdftools`-venv aufgerufen wird (kein numpy). Die
   Embeddings selbst sind unter dem `synobsis`-venv korrekt gebaut. Fuer echte
   Semantik-Queries entweder numpy ins `pdftools`-venv oder Query ueber das
   `synobsis`-venv fahren. Pre-existing, nicht durch diesen Lauf verursacht.

## Fortschritt
853/853 Architekten gescannt (Erstdurchlauf bleibt komplett). Dieser Lauf hat keinen
neuen Stoff eingelesen (Quelle unveraendert), sondern den Batch wieder lauffaehig
gemacht und den Vektorindex frisch gebaut.
