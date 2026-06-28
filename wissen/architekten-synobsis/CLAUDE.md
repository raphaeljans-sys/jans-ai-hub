# Wissens-KB: Architekten-Synobsis (AI-Recherche-Tool)

Macht die Architektur-Referenzbibliothek `/Volumes/daten/05_Architekten_Synobsis`
(853 Architekten-Ordner, ~bild-/projektlastig: Architekt -> `Ort_Projekt_Jahr`)
fuer die AI-Recherche durchsuchbar.

## Quelle (read-only)
`/Volumes/daten/05_Architekten_Synobsis` — wird NUR gelesen, nie veraendert.

## Aufbau
- `tools/synobsis_scan.py` — Stufe 1: Taxonomie-Parse + Datei-Inventar + Text-
  extraktion (PDF/DOCX) -> `catalog/<slug>.json` + `catalog/documents.jsonl` +
  `catalog/INDEX.md`. Arbeitet in Chargen (`--batch N`), kompoundierend.
- `tools/synobsis_query.py` — Recherche. Stichwort-Modus sofort nutzbar;
  `--semantic` nutzt den Vektorindex (Stufe 2).
- `tools/synobsis_embed.py` — Stufe 2: Vektorindex `catalog/vectors.npz`
  (laeuft auf dem Mac Mini, venv `~/.venvs/synobsis`).
- `tools/synobsis_batch.sh` — ein kompletter Lauf (Stufe 1 + Stufe 2).
- `state/processed.json` — Fortschritt (welche Architekten verarbeitet).
- `catalog/` — Datensaetze, Volltext-Dokumente, Index, Vektoren.
- `outputs/` — Laufprotokolle, Reports.

## Status der Recherche
```
~/.venvs/pdftools/bin/python tools/synobsis_scan.py --status
```

## Stufen
1. **Fundament** (jede Station, keine ML-Abhaengigkeit): Scan + Katalog +
   Stichwort-Suche. AKTIV.
2. **Semantik** (nur Mac Mini): lokale Embeddings -> echte Aehnlichkeits-Suche.
   Einrichtung siehe `RUNBOOK-MAC-MINI.md`.

## Betrieb
Alternierender Batch-Lauf auf dem Mac Mini (immer-an, direkter NAS-Zugriff) via
`synobsis_batch.sh`, getaktet ueber einen Scheduled Task / launchd. Programm:
`PROGRAMM.md`.

Verwandt: Wissens-Layer-Schema [[WISSEN-CLAUDE]]. Speist Recherche/Referenz fuer
Entwurf und Variantenfindung.
