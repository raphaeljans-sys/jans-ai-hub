# Batch-Lauf 2026-07-15 — architekten-synobsis

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Nachtfenster.

## Voraussetzungen
- Host-Weiche: `Macmini.local` (enthaelt "Macmini") — erfuellt.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar.

## Lauf
- Start 02:18:44, Ende 02:19:13 (+0200).
- Charge 25.
- **Stufe 1 (Scan/Katalog):** nichts zu tun — 853/853 verarbeitet, offen 0. Kein neuer Stoff seit 2026-07-02 (13 Tage).
- **Stufe 2 (Embeddings):** venv `~/.venvs/synobsis` vorhanden, Vektorindex neu geschrieben `catalog/vectors.npz` (853 × 768, Modell `intfloat/multilingual-e5-base`). Deterministisch → kein inhaltlicher Diff.
- **Stufe 3 (Kuratierung):** entfaellt, keine neuen Eintraege.

## Fortschritt
- Architekten gesamt: 853
- verarbeitet: 853 (100 %)
- offen: 0
- Katalog-Stand: 2026-07-02T22:52:26 (unveraendert)

## Repo-Aenderung
- Nur Zeitstempel: `catalog/INDEX.md` (Stand-Zeile) und `catalog/cad-index.json` (`stand`-Feld), je 1 Zeile. `vectors.npz` ohne Diff.

## Auffaelligkeiten
- Erster Wiederholungslauf nach der Drosselung (Regel 260714): der Endlos-Runner ist gestoppt, dieser Lauf ist der regulaere Nacht-Task. Ergebnis wie die gesamte Serie seit 2026-07-13: ohne neues Rohmaterial in der Quelle (oder eine freigegebene Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten Doppelordner-/Slug-Fragen) bringt der Lauf keinen weiteren inhaltlichen Ertrag. Der Katalog bleibt aktuell und such-/embedding-bereit.
