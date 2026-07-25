# Wissens-Health-Check: grobkosten — 2026-07-01

Phase 1 (Audit + Ablage), unbeaufsichtigt. KB `wissen/grobkosten/` — 1 Wiki-Artikel
(`kennwerte.md`) + INDEX, raw/ leer (nur README), 1 Output-README. Kennwerte-Lernmodell
Grobkosten CHF/m3 GV (BKP 1-5), Seed-Stand.

## Zusammenfassung

| Audit | Thema | Ampel | Findings |
|---|---|---|---|
| A | Widersprueche | gruen | 0 |
| B | Backlinks / Orphans / nicht im INDEX | gelb | 2 (QUESTIONS.md + _INGESTED.md fehlen) |
| C | Unbelegte Claims (Kennwerte-Herkunft) | gruen | 1 (kleiner Umrechnungsfaktor unbelegt) |
| D | RAW-Coverage | gruen | 0 (raw/ leer, ehrlich als Seed deklariert) |
| E | Veraltete Artikel | gruen | 0 |
| F | Schreibregeln (Frontmatter, Umlaute, Datum) | gelb | 3 (kein Frontmatter, ae/oe/ue statt Umlaute, Datumsformat) |
| G | Promotion-Kandidaten | gruen | 0 (alle Seed, keine Realwerte) |

Gesamtbild: inhaltlich sauber und ehrlich (jeder Wert traegt Reife Seed + Provenienz,
keine geratenen Kennwerte). Die Findings sind ausschliesslich formal/strukturell
(fehlende State-Files, fehlendes Frontmatter, Umlaut- und Datumsformat) — kein
inhaltliches Risiko, keine falschen Kennwerte.

## Top-3 (Raphaels Aufmerksamkeit)

1. **State-Files fehlen (Audit B):** Weder `wiki/QUESTIONS.md` noch `raw/_INGESTED.md`
   existieren. Das Meta-Schema verlangt beide. Die offenen Fragen stehen ersatzweise
   inline im INDEX.md — funktioniert, weicht aber vom Standard ab. Phase-2-Fix:
   `QUESTIONS.md` aus dem INDEX-Block ableiten, leeres `_INGESTED.md` anlegen.
2. **Wiki nutzt Umschrift ae/oe/ue statt echter Umlaute (Audit F):** `kennwerte.md`
   schreibt "Gebaeude", "Zuerich", "Zuschlaege". Das Meta-Schema fordert echte Umlaute
   (ä/ö/ü) im Wiki. "Wüest" ist korrekt mit ü gesetzt, der Rest nicht — Inkonsistenz.
3. **kennwerte.md ohne Frontmatter (Audit F):** Kein `title/status/last_updated/sources/links`.
   Damit greift Audit E (Veraltung ueber last_updated) kuenftig ins Leere und der Reife-Status
   (Seed) ist nur im Fliesstext, nicht maschinenlesbar im `status`-Feld.

## Details je Audit

### A — Widersprueche
Kein Finding. CHANGELOG ("MFH gehoben 950, Band 850-1050", Kalibrierung an 2621 Giebelweg)
deckt sich mit der Tabelle in `kennwerte.md`. Die Wüest-Ankopplung (≈ CHF 1'020/m3 GV) liegt
innerhalb des gefuehrten gehoben-Bands 850-1'050 — konsistent, kein Konflikt. Healthcare und
Umbau sind konsistent an `kostenschaetzung` ausgelagert (an beiden Stellen gleich benannt).

### B — Backlinks / Orphans / nicht im INDEX
- **`wiki/QUESTIONS.md` fehlt.** Datei: `wiki/` (Soll). Befund: Das Meta-Schema
  (`WISSEN-CLAUDE.md`) listet `QUESTIONS.md` als Pflicht-State-File; es existiert nicht.
  Die offenen Fragen stehen stattdessen als Block "Offene Fragen / Luecken" im `INDEX.md`.
  Vorschlag (Phase 2): eigenes `wiki/QUESTIONS.md` anlegen und den INDEX-Block dorthin
  verschieben (INDEX verweist darauf).
- **`raw/_INGESTED.md` fehlt.** Datei: `raw/` (Soll). Befund: Meta-Schema fordert das
  Ingest-Register `raw/_INGESTED.md`; nur ein `README.md` liegt vor. Vorschlag (Phase 2):
  leeres `_INGESTED.md` mit Status "raw/ leer, keine Realwerte eingearbeitet" anlegen.
- Kein Orphan: `kennwerte.md` ist im `INDEX.md` verlinkt. Keine kaputten `[[backlinks]]`
  (der Artikel enthaelt gar keine Backlinks — bei nur 1 Wiki-Artikel unkritisch).

### C — Unbelegte Claims
- **Umrechnungsfaktoren ohne eigene Quelle.** Datei: `wiki/kennwerte.md` (Zeilen 13-15).
  Befund: "GV/HNF ≈ 4.7 (HNF ≈ 0.70 × GF, GV ≈ 3.3 × GF)" wird zur Ankopplung m2→m3
  herangezogen, ist aber selbst eine Faustannahme ohne Quellenverweis. Der resultierende
  Wert (≈ 1'020) ist plausibel und liegt im Band, die Zwischenfaktoren tragen aber keine
  Provenienz. Vorschlag: Faktoren als "Faustannahme JANS" markieren oder an SIA 416 / eine
  Referenz binden. Alle eigentlichen Kennwerte sind korrekt als Seed + Provenienz belegt —
  keine geratenen Kennwerte, Kern-Pflegeregel eingehalten.

### D — RAW-Coverage
Kein Finding. `raw/` enthaelt nur das README, ist bewusst leer (Status 070626: "warten auf
erste Realwerte"). Alle Wiki-Werte sind entsprechend als Seed deklariert — die fehlende
Coverage ist transparent und nicht als belegt ausgegeben. Sobald die erste Schlussabrechnung
in `raw/` faellt, wird dies zum aktiven Compounding-Punkt (siehe auch Audit G).

### E — Veraltete Artikel
Kein Finding. `kennwerte.md` traegt kein `last_updated`, wurde aber am 070626 (2026-06-07)
angelegt — nach dem Schwellenwert 2026-04-02 — und es liegt keine neuere Quelle vor, die
nicht eingearbeitet waere (raw/ leer). Preisstand 2026 ist aktuell. (Formal-Hinweis zum
fehlenden last_updated siehe Audit F.)

### F — Schreibregeln
- **Kein Frontmatter in `kennwerte.md`.** Datei: `wiki/kennwerte.md`. Befund: Das
  Meta-Schema verlangt fuer jede Wiki-Datei Frontmatter (`title/status/last_updated/sources/links`).
  Der Artikel beginnt direkt mit `# Grobkosten-Kennwerte`. Vorschlag (Phase 2): Frontmatter
  ergaenzen, `status: emerging` (bzw. `speculative` solange Seed), `last_updated: 2026-06-07`,
  `sources` = Wüest-Referenz + Giebelweg-Studie.
- **Umschrift ae/oe/ue statt echter Umlaute.** Datei: `wiki/kennwerte.md` und die
  Begleit-READMEs. Befund: "Gebaeude", "Zuerich", "Zuschlaege", "naechster" statt Gebäude,
  Zürich, Zuschläge, nächster. Das Meta-Schema fordert echte Umlaute im Wiki; "Wüest" ist
  bereits korrekt gesetzt → Inkonsistenz. Vorschlag (Phase 2): Wiki-Artikel auf echte
  Umlaute umstellen (raw/ bleibt unangetastet).
- **Datumsformat im CHANGELOG.** Datei: `CHANGELOG.md`. Befund: Ueberschriften nutzen
  "070626" (TTMMJJ) statt des Meta-Schema-Formats JJJJ-MM-TT. Vorschlag: kuenftige
  Eintraege im ISO-nahen Format; Alt-Eintraege optional angleichen.
- Positiv: kein `ß` gefunden; keine Deko-/Emoji-Verstoesse; Tabellen sauber.

### G — Promotion-Kandidaten
Kein Finding. Alle Kennwerte stehen auf Reife "Seed, Wüest-kalibriert". Fuer eine Promotion
auf "belegt (n=…)" fehlen reale JANS-Werte in `raw/` (derzeit 0). Die Wüest-Ankopplung stuetzt
die Plausibilitaet, ersetzt aber keine Realabrechnung. Promotion daher (korrekt) noch nicht
ausloesbar — erster Realwert in `raw/` = naechster Trigger.
