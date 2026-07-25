# Batch-Lauf 2026-07-25 (zweiter Lauf) — Synobsis-Aufbereitung

**Task:** `synobsis-batch-nacht` (Scheduled Task, Mac Mini)
**Station:** Macmini.local (Host-Weiche erfuellt)
**Zeit:** 13:26 (Batch 25)

## Voraussetzungen
- Host `Macmini.local` enthaelt "Macmini" — ok.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar — ok.
- Kollisionsschutz (Regel 260724): keine zweite Synobsis-Instanz aktiv (`ps` = nur der eigene Prozess) — ok.

## Auffaelligkeit: Lauf ausserhalb des Zeitfensters
Dieser Lauf fand um 13:26 statt, also waehrend der Arbeitszeit — die Task-Vorgabe
sieht 22:00–06:00 vor. Zeitlich deckt sich das mit der Wiederaufnahme des VOLLGAS-
Endlos-Runners nach Aufhebung der Drossel (STOP-Dateien laut Rule-Eintrag 260725 erst
gegen 12:45 tatsaechlich entfernt, Runner-Neustart auf beiden Stationen). Vermutlich
ein Nachhol-/Aufhol-Lauf des neu gestarteten Runners, keine Fehlkonfiguration des
Scheduled Tasks selbst. Nicht selbst korrigiert (ausserhalb des Auftragsumfangs) —
zur Kenntnis, falls sich das Muster wiederholt.

## Ablauf
1. Status vorher: 853/853 verarbeitet, offen 0, Stand 2026-07-02T22:52:26 (unveraendert).
2. Batch `synobsis_batch.sh 25`:
   - Stufe 1 (Scan): "Alle Architekten verarbeitet. Nichts zu tun."
   - Stufe 2 (Embeddings): `vectors.npz` deterministisch neu geschrieben (853 × 768),
     Modell `intfloat/multilingual-e5-base`.
3. Status nachher: unveraendert 853/853, offen 0.

## Fortschritt
853/853 (100 %). Erstdurchlauf steht unveraendert seit 2026-07-02.

## Befund / Empfehlung
Vierzehnter ergebnisloser Lauf in Folge (13. Nachtlauf + dieser Nachhol-Lauf). Ohne
neues Rohmaterial in der Quelle oder eine freigegebene Stufe-3-Bereinigung bringt der
Lauf weiterhin keinen inhaltlichen Ertrag — er baut nur den Vektorindex deterministisch
neu.

**Empfehlung an Raphael (unveraendert seit dreizehn Nachtlaeufen, nicht selbst
umgesetzt — der Task-Auftrag deckt keine Konfigurationsaenderung):** Scheduled Task
`synobsis-batch-nacht` loeschen oder auf woechentlich/monatlich herabtakten. Endbedingung
erreicht (Regel 260712b). Reaktivierung genau dann, wenn neue Architektenordner in
`/Volumes/daten/05_Architekten_Synobsis` eintreffen.
