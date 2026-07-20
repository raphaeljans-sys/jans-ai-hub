# Offene Fragen — Entwurfs-Referenzen

## Koordination mit Nachbar-KBs (neu 20.07.2026, Erst-Audit)
- [ ] **Namens-Abstimmung Schulhaus-Set:** wettbewerbs-dna B5 liefert
  `schule-volksschule-ch.json` (aus Benchmark [[kennwerte-schulbauten]] der KB
  wettbewerbs-dna, established); die Planungsliste hier hiess `bildung-schulhaus.json`.
  Vorschlag: B5-Name übernehmen, Naming-Konvention `<nutzung>-<subtyp>-<kontext>` bleibt
  gewahrt (`schule-volksschule-ch`). Beim Eintreffen: gegen
  `parameter-schema/entwurfs-parameter.schema.json` validieren (validate.py).

## Seed-Import — ÜBERHOLT (geklärt 20.07.2026, Erst-Audit)
Die drei ursprünglichen Seed-Fragen sind durch die KB `architekten-synobsis` beantwortet:
Katalog 853/853 Architekten (Stufe 1), semantischer Vektorindex (Stufe 2), kuratiertes
Themenregister THEMEN.md + 849 Kurzdossiers (Stufe 3). **Neuer Weg statt Roh-Import:**
Artikel dieser KB werden bei Bedarf aus synobsis-Abfragen destilliert
(`tools/synobsis_query.py`, Stichwort + `--semantic`); `raw/` bleibt für KB-eigene
Quellen (Kennwert-Extrakte, Buch-Destillate) reserviert.

## Parameter-Sets
- [ ] Sollen Parameter-Sets auch Rendering-Vorgaben enthalten (Kamerawinkel, Lichtstimmung)?
- [ ] Wie granular sollen Fassaden-Parameter sein? (Nur Material oder auch Detaillierung?)
- [ ] Braucht es Parameter-Sets für Sanierung/Umbau oder nur Neubau?

## Integration
- [ ] Soll `volumen_generator.py` ein `--parameter-set` Flag bekommen?
- [ ] Wie fliesst die Rückkopplung aus realen Projekten am besten zurück? (Manuell oder via Output-Compounding?)
- [ ] Braucht es einen eigenen Scheduled Task für den Compounding-Loop?
