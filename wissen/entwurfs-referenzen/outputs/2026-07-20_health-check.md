# Health-Check — KB entwurfs-referenzen (Erst-Audit)

**Datum:** 2026-07-20 (Dauerschicht-Zyklus 24, MacBook Pro) · **Phase 1, unbeaufsichtigt**
**Scope:** Gesamte KB (angelegt 18.06.2026, seither ohne CHANGELOG-Eintrag). Erster
Wissenscheck ueberhaupt fuer diese KB.

## Kurzbild

Die KB ist ein **sauberes, aber schlafendes Geruest**: Schema + Validator funktionieren,
zwei Parameter-Sets sind valide, alle Inhalts-Domaenen (Typologien, Prinzipien,
Architekten, Materialien) sind leer, der Seed-Import steht seit 32 Tagen aus. Der
wichtigste Befund ist strategisch: **Die Seed-Grundlage hat sich seit Anlage der KB
grundlegend verbessert** — der geplante Roh-Import aus `05_Architekten_Synobsis` waere
heute Doppelaufbau (siehe D/G).

## Die sieben Audits

**A. Widersprueche: 0.** Nur zwei inhaltliche Artefakte (JSON-Sets), kein Themenpaar
mit Ueberlappung.

**B. Backlinks/Orphans/INDEX: 2 Befunde.**
1. Haupt-`wiki/INDEX.md` listet nur `healthcare-neubau-zh` — **`wohnen-mfh-urban.json`
   fehlt** (der Sub-INDEX der parameter-sets fuehrt beide). → INDEX-Luecke.
2. Der Link `[[parameter-sets/healthcare-neubau-zh]]` zeigt auf eine **JSON-Datei** —
   die `[[…]]`-Konvention meint Wiki-md-Artikel; fuer JSON-Sets besser normale
   relative Links wie im Sub-INDEX. → Konventions-Abweichung, kein toter Link.
   Cross-KB-Link `[[twin/fachsignatur]]` OK (Ziel existiert).

**C. Unbelegte Claims: 0 kritisch.** Beide JSONs fuehren `quellen`-Arrays (CURAVIVA,
Wuest, JANS 2410/2619, SIA 416). Einschraenkung strukturell: die Quellen sind dem
Set als Ganzem zugeordnet, nicht einzelnen Werten — bei Zahlenaenderungen ist die
Herkunft einzelner Kennwerte (z.B. CHF/m3-Band) nicht rueckverfolgbar. Fuer das
JSON-Format akzeptabel; bei Promotion einzelner Werte auf «belegt» waere eine
je-Wert-Quellenangabe (Schema-Erweiterung) noetig.

**D. RAW-Coverage: leer — Hauptbefund.** `raw/` und `_INGESTED.md` sind leer, der
Seed-Import aus `05_Architekten_Synobsis` steht seit 18.06. aus. **ABER: Dieser Import
ist in der geplanten Form UEBERHOLT.** Seit 02./13.07. existiert die KB
`architekten-synobsis` mit vollstaendigem Katalog (853 Architekten, Stufe 1),
semantischem Vektorindex (Stufe 2) und kuratiertem Themenregister (Stufe 3: THEMEN.md,
849 Kurzdossiers). Die drei Seed-Import-Fragen in QUESTIONS.md («Welche Inhalte liegen
in 05_Architekten_Synobsis?» usw.) sind damit faktisch BEANTWORTET. Ein Roh-Import
in diese KB waere Doppelaufbau — richtig ist ein **Abfrage-Workflow**: Artikel dieser
KB werden bei Bedarf aus synobsis-Katalogabfragen (Stichwort + semantisch) destilliert,
raw/ bleibt fuer KB-eigene Quellen (z.B. Kennwert-Extrakte) reserviert.

**E. Veraltete Artikel: 0** (KB juenger als 90 Tage). Aber: CHANGELOG seit Anlage ohne
Eintrag → die KB ist SCHLAFEND; kein Loop, kein Task fuehlt sich zustaendig.

**F. Schreibregeln: 0 Verstoesse** (Stichprobe: echte Umlaute, Struktur nach
WISSEN-Schema; JSON-Naming folgt der eigenen Konvention).

**G. Promotion-/Compounding-Kandidaten: 1 konkreter, hochwertiger.**
`bildung-schulhaus.json` steht auf der «geplant»-Liste — und seit HEUTE existiert in
`wettbewerbs-dna` der refuter-verifizierte Kennwert-Benchmark
`wiki/muster/kennwerte-schulbauten.md` (431 bestaetigte Kennzahlen aus 25 Quellen):
HNF/GF 0.52–0.54, Klassenzimmer 64–75 m2, 2 KZ je Gruppenraum, 900-m2-GF-Schwelle je
Geschoss (Brandschutz-Typologie-Treiber), Neubau 1.6–1.8 Mio. CHF je Klassenzimmer.
Damit laesst sich das Schulhaus-Parameter-Set **belegt** seeden statt geschaetzt —
der erste echte Compounding-Fall dieser KB. (CHF/m3-GV bleibt gemaess B6-Befund
Sache von `wissen/grobkosten/`.)

## Empfohlene Aktionen (Phase 2, brauchen Freigabe bzw. naechsten Zyklus)

1. INDEX-Luecke schliessen (wohnen-mfh-urban ergaenzen) — trivial, gefahrlos.
2. QUESTIONS.md aktualisieren: Seed-Import-Fragen als beantwortet archivieren
   (Verweis architekten-synobsis), Abfrage-Workflow als neuen Weg dokumentieren.
3. `bildung-schulhaus.json` aus dem Schulbau-Benchmark seeden (naechster
   Dauerschicht-/Nachtschicht-Zyklus; Quellen je Kennwert sauber angeben).
4. Entscheid Raphael (unveraendert offen aus QUESTIONS): `--parameter-set`-Flag fuer
   `volumen_generator.py`; Rendering-Vorgaben im Schema; Sanierungs-Sets.

**Zahlenbild:** A 0 · B 2 · C 0 · D 1 (strategisch) · E 0 (aber schlafend) · F 0 · G 1.
