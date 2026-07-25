# Wissens-Health-Check: entwurfs-referenzen — 2026-07-25

**Vorheriger Check:** 2026-07-23. Seither ein inhaltlicher Zyklus (24.07., Nachtschicht
Mac Mini): erster echter Wiki-Artikel `typologien/bildung.md` kompiliert, die beiden am
23.07. offenen Punkte (Sub-Index-Widerspruch, Promotion-Kandidat) laut CHANGELOG bereits
geschlossen. Dieser Check prueft, ob diese Schliessung konsistent ist, und ob der neue
Artikel selbst sauber ist (bisher noch nicht separat geprueft).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (behoben in diesem Lauf) |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 (behoben in diesem Lauf, 104 Ersetzungen) |
| G Promotion-Kandidaten | 0 (letzter Kandidat am 24.07. bereits kompiliert) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Behoben — Umlaut-Ersatzschreibungs-Bug im neuen Artikel:** `typologien/bildung.md`
   (kompiliert 24.07., seither noch nie geprueft) enthielt durchgehend ae/oe/ue statt
   ä/ö/ü (104 Treffer: Gebaeude, Groessenordnung, fuer, Schueler, Hoehe, Schoental/
   Schoenau/Stoeckacker/Faellanden als Orts-/Projektnamen, u.v.m.) — derselbe bekannte
   Encoding-/Locale-Bug, der bereits in `spec`, `immobilienbewertung` und
   `planungsgrundlagen` gefunden wurde (dort noch ungefixt, als KB-weit zu gross fuer
   Nachtschicht eingestuft). Hier war der Fall klein und eindeutig genug (ein Artikel,
   162 Zeilen, keine echten ae/oe/ue-Woerter ausser den drei Ausnahmen Quelle(n)/neue/
   Raphael) fuer eine direkte, gezielte Korrektur in diesem Lauf: pro betroffenem Wort
   einzeln ae→ä/oe→ö/ue→ü ersetzt (kein blindes Datei-weites sed, um Quelle/neue/Raphael
   nicht zu beschaedigen), Stichprobe danach verifiziert (nur noch die drei Ausnahmen +
   BKP-/Formel-Zeichen als "ae/oe/ue"-Treffer). `last_updated` im Frontmatter auf
   2026-07-25 nachgezogen.
2. **Behoben — Widerspruch in `raw/_INGESTED.md`:** Diese Datei war von den drei
   vorangegangenen Wissenschecks (20./23./24.07.) uebersehen worden und behauptete
   weiterhin woertlich *"Seed-Import aus 05_Architekten_Synobsis steht aus"* — derselbe
   Widerspruch, der in den vier Domaenen-Sub-Indizes und im Haupt-INDEX bereits am
   20./23.07. auf den Abfrage-Workflow-Wortlaut umgestellt wurde. `_INGESTED.md` war die
   einzige verbliebene Datei mit der veralteten Aussage. Auf den Abfrage-Workflow-
   Wortlaut umgestellt (Verweis `[[architekten-synobsis]]`, Tabellen-Platzhalter
   praezisiert: "noch keine KB-eigenen raw/-Quellen" statt "Seed-Import steht aus").
3. **Bestaetigt sauber:** alle Backlinks aus `bildung.md` (Parameter-Set,
   `wettbewerbs-dna/kennwerte-schulbauten`, `jury-argumente-schulbauten`,
   `delta-zum-ersten-rang`) zeigen auf existierende Ziele; alle drei Parameter-Sets
   (`healthcare-neubau-zh`, `schule-volksschule-ch`, `wohnen-mfh-urban`) bestehen
   `parameter-schema/validate.py` weiterhin (schema-valide); Haupt-INDEX + Sub-INDEX
   fuer `bildung.md` konsistent registriert.

## Details je Audit

### A. Widersprueche
- `raw/_INGESTED.md` vs. die am 20./23.07. beschlossene und ueberall sonst nachgezogene
  ÜBERHOLT-Feststellung zum Seed-Import — siehe Top-3 Punkt 2. Behoben.
- Kein weiterer Widerspruch gefunden (Parameter-Sets vs. `bildung.md` inhaltlich
  konsistent: HNF/GF 0.52–0.54, Klassenzimmer 64–75 m², 900-m²-Schwelle stimmen in
  beiden Quellen ueberein).

### B. Backlinks/Orphans/INDEX
- Alle vier `[[...]]`-Ziele in `bildung.md`-Frontmatter existieren (drei in
  `wettbewerbs-dna/wiki/muster/`, ein relativer Link aufs eigene Parameter-Set).
- Haupt-`wiki/INDEX.md` und `wiki/typologien/INDEX.md` fuehren `bildung.md` konsistent.
- Kein Orphan, kein toter Link.

### C. Unbelegte Claims
- `bildung.md` fuehrt fuer jede zentrale Kennzahl die Quelle inline (Projektnummer oder
  Benchmark-Referenz) sowie ein vollstaendiges `sources`-Array im Frontmatter mit
  Versions-/Status-/Datumsangabe. Zwei bewusst offen gelassene Widersprueche (2206
  Schoental GF-Diskrepanz, fehlender Reha-Subtyp) sind explizit als "nicht geloest"
  markiert statt verschwiegen — kein Finding.

### D. RAW-Coverage
- `raw/_INGESTED.md` bleibt inhaltlich leer (keine KB-eigenen Quellen), das ist weiterhin
  die bewusste Architekturentscheidung (Abfrage-Workflow statt Roh-Import). Nur die
  Formulierung war das Problem (siehe A), kein Coverage-Fehler.

### E. Veraltete Artikel
- `bildung.md`: 1 Tag alt (kompiliert 24.07., hier redaktionell korrigiert 25.07.) — weit
  unter der 90-Tage-Schwelle.
- Die drei Parameter-Sets sind aelter (18.06.–21.07.), aber ohne neuere widersprechende
  Quelle — kein Finding.

### F. Schreibregel-Verstoesse
- `bildung.md`: 104 ae/oe/ue-Ersatzschreibungen statt echter Umlaute — siehe Top-3
  Punkt 1. Behoben. Wortweise Ersetzung, drei Ausnahmen (Quelle/Quellen/neue/Raphael,
  die "ue"/"ae" enthalten, aber keine Umlaut-Bugs sind) korrekt unangetastet gelassen.
- Uebrige Dateien (INDEX.md, QUESTIONS.md, CHANGELOG.md, vier Sub-Indizes, drei JSONs)
  im Stichprobenscan umlautsauber, kein ß-Ersatz, Schweizer Hochdeutsch.

### G. Promotion-Kandidaten
- Keiner. Der einzige offene Kandidat aus dem 23.07.-Report (`bildung.md`) wurde am
  24.07. bereits kompiliert. Naechste denkbare Kandidaten (healthcare-langzeitpflege,
  wohnen-geschoss, etc.) haben noch keine established Quelle in `wettbewerbs-dna` oder
  vergleichbaren Benchmarks — kein Zulauf seit dem letzten Check.

## Offene Punkte fuer Phase 2 / naechsten Zyklus (nicht in diesem Lauf umgesetzt)

1. Unveraendert aus fruehren Audits (Entscheid Raphael): `--parameter-set`-Flag fuer
   `volumen_generator.py`; Rendering-Vorgaben im Schema; Sanierungs-Sets (siehe
   `QUESTIONS.md` Sektionen "Parameter-Sets"/"Integration").
2. GF-Widerspruch 2206 Schoental (0.655 vs. 0.759 HNF/GF) bleibt in `wettbewerbs-dna`
   ungeklaert — betrifft `bildung.md` nur als vermerkter offener Punkt, keine Aktion hier.

**Zahlenbild:** A 1 (behoben) · B 0 · C 0 · D 0 · E 0 · F 1 (behoben) · G 0.
