# INDEX — Entwurfs-Referenzen

## Typologien
- [typologien/bildung.md](typologien/bildung.md) — Volksschule (CH): HNF/GF 0.52–0.54,
  900-m²-Schwelle, Programm-Mengengerüst. Erster Wiki-Artikel dieser KB, kompiliert
  24.07.2026 aus `schule-volksschule-ch.json` + wettbewerbs-dna-Benchmark.

*(weitere Typologien noch leer — kein Roh-Seed-Import mehr geplant, Artikel entstehen
on-demand aus `wissen/architekten-synobsis`-Abfragen, vgl. Domänen-INDEX + CHANGELOG 2026-07-20)*

## Entwurfsprinzipien
- [entwurfsprinzipien/trennung-kunst-funktion-judd.md](entwurfsprinzipien/trennung-kunst-funktion-judd.md) —
  Donald Judd (1993): Trennung Kunst/Funktion, Proportion als «visible reasonableness», Kritik
  an Stil-Imitation und Distributionsoligopolen. Erster Artikel dieser Domäne, kompiliert
  18.08.2026.

*(weitere Artikel noch offen — Artikel entstehen on-demand aus `wissen/architekten-synobsis`-Abfragen
oder aus Cross-KB-Funden, vgl. Domänen-INDEX + CHANGELOG)*

## Architekten
*(noch leer — kein Roh-Seed-Import mehr geplant, Artikel entstehen on-demand aus
`wissen/architekten-synobsis`-Abfragen, vgl. Domänen-INDEX + CHANGELOG 2026-07-20)*

## Materialien
*(noch leer — kein Roh-Seed-Import mehr geplant, Artikel entstehen on-demand aus
`wissen/architekten-synobsis`-Abfragen, vgl. Domänen-INDEX + CHANGELOG 2026-07-20)*

## Parameter-Sets
- [healthcare-neubau-zh.json](parameter-sets/healthcare-neubau-zh.json) — Pflegeheim/Alterszentrum/betreutes Alterswohnen CH (v2.0, Etappe-3-Baustein B5, abgeleitet aus wettbewerbs-dna `kennwerte-healthcare` + `jury-argumente-healthcare`, refuter-BESTANDEN 25.07.2026; Akutspital/Psychiatrie bewusst nicht abgedeckt). Die v1.0-Quellen CURAVIVA/Wüest/JANS 2410+2619 sind mit der Neufassung ersatzlos entfallen.
- [wohnen-mfh-urban.json](parameter-sets/wohnen-mfh-urban.json) — Mehrfamilienhaus urban 3–6 OG (schema-valide)
- [schule-volksschule-ch.json](parameter-sets/schule-volksschule-ch.json) — Volksschule/Bildungsbau CH (schema-valide, refuter-BESTANDEN 21.07.2026; abgeleitet aus wettbewerbs-dna B5/B6 `kennwerte-schulbauten` + B4 `jury-argumente-schulbauten`; ersetzt den frueher geplanten Namen `bildung-schulhaus.json`)

---

**Notation (geklärt 23.08.2026):** Verweise auf die KB `wissen/architekten-synobsis` stehen als
**Pfad**, nicht als `[[…]]`-Wiki-Link. Grund: jene KB führt **keinen `wiki/`-Ordner** (sie ist als
`catalog/` plus Abfragewerkzeug gebaut), und `wissen/tools/wiki-konsistenz.sh` sucht Linkziele in
`wiki/` und `destillate/`. Ein ``wissen/architekten-synobsis`` erzeugte deshalb bei **jedem**
Konsistenzlauf einen Fehlalarm — es ist ein Verweis auf eine **KB**, nicht auf einen Artikel, und
die Wiki-Link-Syntax ist dafür der falsche Ausdruck. Dieselbe Pfadnotation nutzt `wissen/grobkosten`
aus einem verwandten Grund.
