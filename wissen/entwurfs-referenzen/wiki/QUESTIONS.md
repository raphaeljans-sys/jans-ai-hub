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
- **Nachgezogen 25.07.2026 (Nachtschicht Mac Mini, Health-Check):** `raw/_INGESTED.md`
  war die letzte verbliebene Datei mit der veralteten Formulierung (von den Checks am
  20./23./24.07. übersehen) — jetzt ebenfalls auf den Abfrage-Workflow-Wortlaut umgestellt.
  Damit sollte kein widersprechendes Vorkommen mehr in der KB stehen.

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

## Promotion-Kandidat — ERLEDIGT (kompiliert 18.08.2026, Nachtschicht Mac Mini)
- [x] **Donald Judd, «It's Hard to Find a Good Lamp» (1993, © Judd Foundation)** — vollständig
  gelesen bei der Schluss-Triage von `wissen/bauprodukte` (Quelle:
  `/Volumes/daten/03 Bauprodukte_BKP/233 Leuchten und Lampen/6 Pendellampe/Judd/`, dort als
  kein Bauprodukt verworfen, siehe `bauprodukte-inventar.md` Z. 165). Am 15.08.2026 nur als
  Fund vermerkt, jetzt als erster Artikel des bisher leeren Ordners `entwurfsprinzipien/`
  kompiliert: [[entwurfsprinzipien/trennung-kunst-funktion-judd]] — Trennung Kunst/Funktion,
  Proportion als «visible reasonableness», Kritik an Stil-Imitation und
  Distributions-Oligopolen. Urheberrecht beachtet (nur kurze Zitate, kein Volltext-Nachdruck).
  Einquellen-Artikel; weitere Diskurstexte aus `05_Architekten_Synobsis` bleiben ein eigener
  Folgelauf.
