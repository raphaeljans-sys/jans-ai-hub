# Offene Fragen — Entwurfs-Referenzen

## Koordination mit Nachbar-KBs — ERLEDIGT (geschlossen 21.07.2026)
- [x] **Namens-Abstimmung Schulhaus-Set:** `schule-volksschule-ch.json` ist aus
  wettbewerbs-dna B5/B6 (`kennwerte-schulbauten`, established) + B4
  (`jury-argumente-schulbauten`) eingetroffen, gegen `parameter-schema/entwurfs-parameter.schema.json`
  validiert (validate.py: OK) und durch einen unabhaengigen Refuter-Agenten bestanden
  (CHANGELOG 21.07.2026). Haupt-INDEX (`wiki/INDEX.md`) war noch auf «angekündigt» stehen
  geblieben — am 21.07.2026 (Nachtschicht-Zyklus Mac Mini) nachgezogen.

## Seed-Import — ÜBERHOLT (geklärt 20.07.2026, Erst-Audit)
Die drei ursprünglichen Seed-Fragen sind durch die KB `architekten-synobsis` beantwortet:
Katalog 853/853 Architekten (Stufe 1), semantischer Vektorindex (Stufe 2), kuratiertes
Themenregister THEMEN.md + 849 Kurzdossiers (Stufe 3). **Neuer Weg statt Roh-Import:**
Artikel dieser KB werden bei Bedarf aus synobsis-Abfragen destilliert
(`tools/synobsis_query.py`, Stichwort + `--semantic`); `raw/` bleibt für KB-eigene
Quellen (Kennwert-Extrakte, Buch-Destillate) reserviert.
- **Nachgezogen 23.07.2026 (Nachtschicht Mac Mini):** Die vier Domänen-Sub-Indizes
  (`wiki/typologien|entwurfsprinzipien|architekten|materialien/INDEX.md`) sowie das
  Haupt-`wiki/INDEX.md` behaupteten bis dahin noch wörtlich einen ausstehenden
  Roh-Seed-Import — Widerspruch zu diesem Beschluss. Alle fünf Dateien auf den
  Abfrage-Workflow-Wortlaut umgestellt.

## Promotion-Kandidat — ERLEDIGT (kompiliert 24.07.2026, Nachtschicht Mac Mini)
- [x] **typologien/bildung.md**: aus dem refuter-verifizierten
  `parameter-sets/schule-volksschule-ch.json` + dem established wettbewerbs-dna-Benchmark
  `kennwerte-schulbauten.md` kompiliert — erster echter Wiki-Artikel dieser bisher reinen
  JSON-Parameter-Set-KB. Reine Kompilation bereits belegter Quellen, keine neue Recherche.
  INDEX.md (Haupt + `typologien/`) nachgezogen.

## Parameter-Sets
- [ ] Sollen Parameter-Sets auch Rendering-Vorgaben enthalten (Kamerawinkel, Lichtstimmung)?
- [ ] Wie granular sollen Fassaden-Parameter sein? (Nur Material oder auch Detaillierung?)
- [ ] Braucht es Parameter-Sets für Sanierung/Umbau oder nur Neubau?

## Integration
- [ ] Soll `volumen_generator.py` ein `--parameter-set` Flag bekommen?
- [ ] Wie fliesst die Rückkopplung aus realen Projekten am besten zurück? (Manuell oder via Output-Compounding?)
- [ ] Braucht es einen eigenen Scheduled Task für den Compounding-Loop?
