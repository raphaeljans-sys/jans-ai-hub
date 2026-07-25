# Batch-Lauf 2026-07-23 — Synobsis-Nachtaufbereitung

**Task:** `synobsis-batch-nacht` (Scheduled Task, Mac Mini)
**Station:** Macmini.local (Host-Weiche erfuellt)
**Zeit:** 07:35–07:36 (Batch 25)

## Voraussetzungen
- Host `Macmini.local` enthaelt "Macmini" — ok.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar — ok.

## Ablauf
1. Status vorher: 853/853 verarbeitet, offen 0, Stand 2026-07-02T22:52:26.
2. Batch `synobsis_batch.sh 25`:
   - Stufe 1 (Scan): "Alle Architekten verarbeitet. Nichts zu tun."
   - Stufe 2 (Embeddings): `vectors.npz` deterministisch neu geschrieben (853 × 768),
     Modell `intfloat/multilingual-e5-base`.
3. Status nachher: unveraendert 853/853, offen 0.

## Verifikation
- `git status` (nur KB): 2 Dateien geaendert (`catalog/INDEX.md`, `catalog/cad-index.json`),
  je 1 Zeile — reine Zeitstempel, kein inhaltlicher Diff. `vectors.npz` binaer neu
  gebaut (Embeddings deterministisch, daher kein Git-Diff).
- Quelle unabhaengig gegengeprueft: 854 Top-Level-Verzeichnisse (853 Architekten +
  `00_Organisation`). Juengste Ordner-Aenderung `HdM`, 2026-04-07 — kein neuer Stoff
  seit dem Katalog-Stand 2026-07-02.
- Stufe 2 per Stichprobe funktionsgeprueft: `synobsis_query.py --semantic
  "introvertierter Hof Beton Kapelle"` → plausible Rangfolge (Top-Treffer um 0.85,
  u.a. Sauerbruch Hutton, Capponi, Schmid Schaerer) — Semantikindex intakt.

## Fortschritt
853/853 (100 %). Erstdurchlauf steht unveraendert seit 2026-07-02.

## Befund / Empfehlung
Elfter ergebnisloser Nachtlauf in Folge. Ohne neues Rohmaterial in der Quelle oder eine
freigegebene Stufe-3-Bereinigung bringt der Lauf keinen inhaltlichen Ertrag mehr — er
baut nur den Vektorindex deterministisch neu.

**Empfehlung an Raphael (zum elften Mal in Folge, nicht selbst umgesetzt — der
Task-Auftrag deckt keine Konfigurationsaenderung):** Scheduled Task
`synobsis-batch-nacht` loeschen oder pausieren. Endbedingung erreicht (Regel 260712b:
abgeschlossene Inventare werden beendet statt gedrosselt). Reaktivierung genau dann,
wenn neue Architektenordner in `/Volumes/daten/05_Architekten_Synobsis` eintreffen.
