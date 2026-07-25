# Wissens-Health-Check: entwurfs-referenzen — 2026-07-23

**Vorheriger Check:** 2026-07-20 (Erst-Audit). Seither zwei Phase-2-Zyklen (20.07. Fixes,
21.07. Schulhaus-Set-Zulauf aus `wettbewerbs-dna`) — dieser Check prueft, ob die damals
offenen Punkte konsistent geschlossen wurden und ob neues Seed-Material aufgetaucht ist.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 kritisch |
| D RAW-Coverage-Luecken | 0 (Status seit 20.07. unveraendert korrekt: UEBERHOLT) |
| E Veraltete Artikel | 0 (KB 35 Tage alt) |
| F Schreibregel-Verstoesse | 0 |
| G Promotion-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Widerspruch:** die vier Domaenen-Sub-Indizes (`architekten/`, `entwurfsprinzipien/`,
   `materialien/`, `typologien/` je `INDEX.md`) behaupten weiterhin wortwoertlich
   *"Seed-Import aus 05_Architekten_Synobsis ausstehend"* — das wurde am 20.07. im
   Haupt-`QUESTIONS.md` explizit als **UEBERHOLT** erklaert (Abfrage-Workflow statt
   Roh-Import). Die Korrektur wurde damals nur im Haupt-`wiki/INDEX.md` und in
   `QUESTIONS.md`/`CHANGELOG.md` nachgezogen, nicht aber in den vier Sub-Indizes selbst —
   ein Leser, der direkt in `wiki/typologien/INDEX.md` landet, sieht eine veraltete,
   der eigenen KB-Wahrheit widersprechende Aussage.
2. **Promotion-Kandidat:** `typologien/bildung.md` existiert noch nicht, obwohl die
   Quellenlage seit dem 21.07. vollstaendig vorhanden waere — `schule-volksschule-ch.json`
   (refuter-BESTANDEN) ist bereits aus dem established Benchmark
   `wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (431 Kennzahlen, 25 Quellen)
   abgeleitet. Ein Typologie-Artikel waere der **erste echte Wiki-Inhalt** dieser KB
   (bisher nur JSON-Parameter-Sets) und reiner Compounding-Aufwand ohne neue Recherche.
3. **Bestaetigter Nicht-Fund:** kein neues Seed-Material fuer weitere geplante
   Parameter-Sets. `wettbewerbs-dna/wiki/muster/` enthaelt weiterhin nur den bereits
   verbrauchten Schulbauten-Benchmark (kein zweiter Typologie-Benchmark seit 21.07.
   dazugekommen); `wissen/grobkosten/wiki/` fuehrt weiterhin keinen schulbau-spezifischen
   CHF/m3-Kennwert — die bewusste Luecke `chf_m3_gv_band: null` in
   `schule-volksschule-ch.json` bleibt damit weiterhin korrekt unbelegt, kein Handlungsbedarf.

## Details je Audit

### A. Widerspruche
- Vier Sub-Index-Dateien (`wiki/architekten/INDEX.md`, `wiki/entwurfsprinzipien/INDEX.md`,
  `wiki/materialien/INDEX.md`, `wiki/typologien/INDEX.md`) vs. `wiki/QUESTIONS.md`
  Abschnitt "Seed-Import — UEBERHOLT" (geklaert 20.07.2026): die Sub-Indizes sprechen von
  einem ausstehenden Roh-Import, das Haupt-Register erklaert diesen Weg fuer erledigt/ersetzt.
  Fix waere trivial (Ein-Zeiler-Ersatz je Datei, Verweis auf den Abfrage-Workflow und
  `tools/synobsis_query.py`) — Phase-2-Aktion, hier nur geflaggt.

### B. Backlinks/Orphans/INDEX
- Haupt-`wiki/INDEX.md` fuehrt inzwischen korrekt alle drei Parameter-Sets (Fix vom 20./21.07.
  bestaetigt weiterhin wirksam).
- `parameter-sets/INDEX.md` konsistent mit Haupt-INDEX, alle relativen Links funktionieren.
- Cross-KB-Verweis `[[twin/fachsignatur]]` (CLAUDE.md, materialien/INDEX.md) zeigt weiterhin
  auf ein existierendes Ziel.
- Kein neuer toter Link, kein neuer Orphan.

### C. Unbelegte Claims
- Alle drei Parameter-Sets fuehren ein `quellen`-Array (geprueft: healthcare-neubau-zh 5
  Quellen, wohnen-mfh-urban 4 Quellen inkl. BWO/SIA 416/Wuest/BFS, schule-volksschule-ch
  bereits einzeln refuter-verifiziert). Strukturelle Einschraenkung unveraendert wie im
  Erst-Audit: Quellen sind dem Set als Ganzem zugeordnet, nicht jedem Einzelwert — fuer das
  JSON-Format weiterhin akzeptabel, kein neuer kritischer Fund.

### D. RAW-Coverage
- `raw/_INGESTED.md` weiterhin leer. Bestaetigt weiterhin korrekt: kein Coverage-Fehler,
  sondern bewusste Architekturentscheidung (Abfrage-Workflow gegen `architekten-synobsis`
  statt Roh-Import in `raw/`). Kein neuer Fund.

### E. Veraltete Artikel
- KB 35 Tage alt (angelegt 18.06.), damit unter der 90-Tage-Schwelle — technisch kein
  E-Finding. Die inhaltliche Alterung der vier Sub-Indizes ist unter A gefuehrt, da es sich
  um einen echten Widerspruch (nicht blosses Alter) handelt.

### F. Schreibregel-Verstoesse
- Stichprobe (Haupt-INDEX, QUESTIONS.md, CHANGELOG.md, drei JSON-Dateien, vier Sub-Indizes):
  durchgehend echte Umlaute ä/ö/ü, kein ß-Ersatz, Schweizer Hochdeutsch. JSON-Naming folgt
  der eigenen Konvention (`<nutzung>-<subtyp>-<kontext>.json`). 0 Verstoesse — kein
  Wiederholungsfall des am 23.07. in `spec`/`immobilienbewertung` gefundenen KB-weiten
  ae/oe/ue-Bugs (dort Sonnet-Subagenten-Output; diese KB hat noch keine Subagenten-generierten
  Wiki-Artikel).

### G. Promotion-Kandidaten
1. `typologien/bildung.md` — siehe Top-3 Punkt 2. Konkreter naechster Schritt (Phase 2 /
   naechster Zyklus): Artikel aus `kennwerte-schulbauten.md` + `jury-argumente-schulbauten.md`
   + dem bereits validierten `schule-volksschule-ch.json` kompilieren, `[[backlinks]]` zum
   Parameter-Set setzen, im Haupt-INDEX unter "Typologien" registrieren.

## Offene Punkte fuer Phase 2 (nicht in diesem Lauf umgesetzt — Nachtschicht-Scope, nur Audit)

1. Vier Sub-Index-Dateien auf den Abfrage-Workflow-Wortlaut nachziehen (Finding A).
2. `typologien/bildung.md` seeden (Finding G).
3. Unveraendert aus dem Erst-Audit offen (Entscheid Raphael): `--parameter-set`-Flag fuer
   `volumen_generator.py`; Rendering-Vorgaben im Schema; Sanierungs-Sets.

**Zahlenbild:** A 1 · B 0 · C 0 · D 0 · E 0 · F 0 · G 1.
