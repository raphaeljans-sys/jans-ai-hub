# Batch-Lauf 2026-07-24 — Synobsis-Nachtaufbereitung

**Task:** `synobsis-batch-nacht` (Scheduled Task, Mac Mini)
**Station:** Macmini.local (Host-Weiche erfuellt)
**Zeit:** 02:18–02:19 (Batch 25)

## Voraussetzungen
- Host `Macmini.local` enthaelt "Macmini" — ok.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar — ok.
- Kollisionsschutz (Regel 260724): keine zweite Synobsis-Instanz aktiv (`ps` leer) — ok.

## Ablauf
1. Status vorher: 853/853 verarbeitet, offen 0, Stand 2026-07-02T22:52:26.
2. Batch `synobsis_batch.sh 25`:
   - Stufe 1 (Scan): "Alle Architekten verarbeitet. Nichts zu tun."
   - Stufe 2 (Embeddings): `vectors.npz` deterministisch neu geschrieben (853 × 768),
     Modell `intfloat/multilingual-e5-base`.
3. Status nachher: unveraendert 853/853, offen 0.

## Verifikation
- Quelle unabhaengig gegengeprueft: 854 Top-Level-Verzeichnisse (853 Architekten +
  `00_Organisation`) — identisch zum Vortag. Zusaetzlich 6 lose Streudateien am
  Top-Level (2 jpg, 1 dwg, 1 docx, `.DS_Store`, `_Japanische Architekten.docx`); kein
  Architektenordner, nicht Teil des scannbaren Korpus. Katalog-JSON = 853, deckungsgleich.
  Juengste Ordner-Aenderung `HdM`, 2026-04-07 — kein neuer Stoff seit Katalog-Stand
  2026-07-02.
- Stufe 2 per Stichprobe funktionsgeprueft: `synobsis_query.py --semantic
  "introvertierter Hof Beton Kapelle"` → plausible Rangfolge (Top-Treffer um 0.85,
  u.a. Sauerbruch Hutton, Capponi, Schmid Schaerer) — Semantikindex intakt.
- `vectors.npz` binaer neu gebaut (Embeddings deterministisch, daher kein Git-Diff);
  ggf. reine Zeitstempel-Diffs in `catalog/INDEX.md` / `catalog/cad-index.json`.

## Fortschritt
853/853 (100 %). Erstdurchlauf steht unveraendert seit 2026-07-02.

## Befund / Empfehlung
Zwoelfter ergebnisloser Nachtlauf in Folge. Ohne neues Rohmaterial in der Quelle oder
eine freigegebene Stufe-3-Bereinigung bringt der Lauf keinen inhaltlichen Ertrag mehr —
er baut nur den Vektorindex deterministisch neu.

**Empfehlung an Raphael (zum zwoelften Mal in Folge, nicht selbst umgesetzt — der
Task-Auftrag deckt keine Konfigurationsaenderung):** Scheduled Task
`synobsis-batch-nacht` loeschen oder auf woechentlich/monatlich herabtakten. Endbedingung
erreicht (Regel 260712b: abgeschlossene Inventare werden beendet statt naechtlich
weitergedreht). Reaktivierung genau dann, wenn neue Architektenordner in
`/Volumes/daten/05_Architekten_Synobsis` eintreffen.
