# Wissens-KB: Architekten-Synobsis (AI-Recherche-Tool)

Macht die Architektur-Referenzbibliothek `/Volumes/daten/05_Architekten_Synobsis`
(853 Architekten-Ordner, ~390'000 Dateien, 1.9 TB) fuer die AI-Recherche und
skriptorientiertes Entwerfen durchsuchbar.

## Quelle (read-only)
`/Volumes/daten/05_Architekten_Synobsis` — wird NUR gelesen, nie veraendert.

## Aufbau

### Tools
- `tools/synobsis_scan.py` — Stufe 1: Taxonomie-Parse + Datei-Inventar + Text-
  extraktion (PDF/DOCX) + CAD-Inventar (DWG/DXF/PLN/IFC/VWX/3DM/RVT) +
  Referenzbild-Erkennung + Alias-Aufloesung. Schreibt `catalog/<slug>.json` +
  `catalog/documents.jsonl` + `catalog/INDEX.md` + `catalog/cad-index.json`.
  Arbeitet in Chargen (`--batch N`), kompoundierend.
- `tools/synobsis_query.py` — Recherche mit drei Modi:
  - Stichwort: `python synobsis_query.py "Backsteinbau Kirche"`
  - Facetten: `--raumtyp "Grosse Halle"`, `--cad`, `--architekt "Scarpa"`
  - Semantisch: `--semantic` (nutzt Vektorindex, Stufe 2)
  - Meta: `--list-raumtypen`, `--stats`
- `tools/cad_metadata.py` — Stufe 3: DXF/3DM-Geometrie-Metadaten
  (BoundingBox, Layer, Blocks, Entity-Counts via ezdxf/rhino3dm).
  `--scan`, `--status`, `--query layers "Wand"`, `--query bbox-min-width 30`.
- `tools/synobsis_embed.py` — Stufe 2: Vektorindex `catalog/vectors.npz`
  (laeuft auf dem Mac Mini, venv `~/.venvs/synobsis`).
- `tools/synobsis_batch.sh` — ein kompletter Lauf (Stufe 1 + Stufe 2).

### Katalog
- `catalog/<slug>.json` — ein Datensatz pro Architekt (Projekte, Inventar,
  CAD-Dateien, Referenzbilder, Textauszug, Alias-Info).
- `catalog/documents.jsonl` — Embedding-fertige Zeilen fuer Vektorindex.
- `catalog/INDEX.md` — Uebersicht aller indexierten Architekten.
- `catalog/cad-index.json` — alle Architekten mit CAD-Dateien, sortiert nach Anzahl.
- `catalog/aliases.json` — Namens-Normalisierung (79 Eintraege: Duplikate,
  Schreibvarianten, Unterstrich/Leerzeichen-Konsolidierung).
- `catalog/typology-map.json` — 9 Raumtypen mit 105 Projekten aus "1 Selection".
- `catalog/raumtypen-beschreibungen.json` — Definitionen der 9 Raumtypen.
- `catalog/cad-metadata.jsonl` — DXF/3DM-Metadaten (Stufe 3, von cad_metadata.py).

### State / Outputs
- `state/processed.json` — Fortschritt Stufe 1 (welche Architekten verarbeitet).
- `state/cad-processed.json` — Fortschritt Stufe 3 (welche CAD-Dateien verarbeitet).
- `outputs/` — Laufprotokolle, Health-Check-Reports.

## Drei Zugangs-Achsen

1. **By Architect** — klassisch: `catalog/<slug>.json` pro Architekt.
2. **By Raumtypologie** — `catalog/typology-map.json`, 9 Typen aus "1 Selection":
   Atomisierter / Fliessender / Grosser / Hybrider / Modularer / Narrativer /
   Skulpturaler / Struktureller / Zentraler Raum.
3. **By CAD** — `catalog/cad-index.json` + `catalog/cad-metadata.jsonl`:
   22'000+ DWG/DXF, 2'600 PLN, 180 3DM, 170 IFC.

## Status der Recherche
```
~/.venvs/pdftools/bin/python tools/synobsis_scan.py --status
~/.venvs/pdftools/bin/python tools/synobsis_query.py --stats
```

## Stufen
1. **Fundament** (jede Station, keine ML-Abhaengigkeit): Scan + Katalog +
   Stichwort-Suche + Facetten-Suche. AKTIV.
2. **Semantik** (nur Mac Mini): lokale Embeddings -> echte Aehnlichkeits-Suche.
   Einrichtung siehe `RUNBOOK-MAC-MINI.md`.
3. **CAD-Geometrie** (nur Mac Mini, braucht ezdxf): BoundingBox/Layer/Block-
   Extraktion aus DXF/3DM-Dateien. `cad_metadata.py --scan`.

## Betrieb
Alternierender Batch-Lauf auf dem Mac Mini (immer-an, direkter NAS-Zugriff) via
`synobsis_batch.sh`, getaktet ueber einen Scheduled Task / launchd. Programm:
`PROGRAMM.md`.

Verwandt: Wissens-Layer-Schema [[WISSEN-CLAUDE]]. Speist Recherche/Referenz fuer
Entwurf und Variantenfindung.
