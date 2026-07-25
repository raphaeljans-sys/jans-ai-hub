# CHANGELOG — wissen/grobkosten

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): needs-decision zum Flaechenfaktor-Komplex; ein Altpunkt geschlossen
- **needs-decision-Box in `wiki/kennwerte.md`** (additiv, kein Wertwechsel): (a) Die Begruendung «die ~1020 CHF/m3 beruhen auf GV/HNF 4.7 (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch — **3.3 / 0.70 = 4.71**, die 4.7 ist regelgeschoss-basiert. Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ~5.0-5.5 und ein Anker von ~870-960 CHF/m3. (b) Gekoppelt: der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten **0.75** in `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides adversarial BESTAETIGT, beides Fachentscheid Raphael (Korrektur eines frueheren Wissens-Chef-Entscheids) — der Anker bleibt bis dahin gueltig (oberer Rand des eigenen Bands 850-1050, innerhalb ±25 %).
- **Altpunkt geschlossen:** die seit Run 14 gefuehrte «0,70/0,60-Kopplungsformulierung» in der Wuest-Referenz ist ein **Scheinbefund** — beide Richtwerte sind unabhaengig aus der Quantilstabelle indexiert (4360 CHF/m2 HNF, 2840 CHF/m2 GF), kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0). Kein Handlungsbedarf.
- **Rollen-Klarstellung (neue Matrix-Zeile):** diese KB fuehrt Healthcare **nicht** — `kennwerte.md:66-68` untersagt die Verwendung ihrer m3-Werte fuer Spital/Klinik/Pflegeheim ausdruecklich. Ein Parameter-Set in `entwurfs-referenzen` hat sich trotzdem darauf berufen (dort gesperrt).
- Ankerzahlen im Kennwert-Feld weiterhin widerspruchsfrei (Delta-Check gefahren). Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Wissens-Health-Check Phase 1: Re-Audit nach dem 24.07.-Fix (Mac Mini Nachtschicht)
- [health-check] A0·B0(**behoben**)·C1(jetzt sauber in QUESTIONS.md getrackt)·D0·E0(Frontmatter-
  Mechanismus jetzt funktionsfähig)·F2(**Teilfix**)·G0 — der 24.07.-Nachziehlauf hat die drei
  Kern-Findings (QUESTIONS.md, raw/_INGESTED.md, Frontmatter+Umlaute in kennwerte.md) verifiziert
  behoben, war aber explizit auf `kennwerte.md` begrenzt: `raw/README.md` und `outputs/README.md`
  bleiben in ae/oe/ue-Umschrift, die beiden ältesten CHANGELOG-Kopfzeilen (`010726`, `070626`)
  weiterhin im alten Datumsformat. Beides kosmetisch, kein inhaltliches Risiko. Report:
  `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Strukturelle Findings nachgezogen (Mac Mini Nachtschicht, 3 Wochen fällig)
- [struktur] Die drei seit 01.07.2026 offenen und im Health-Check 21.07.2026 dreifach
  bestätigten strukturellen Findings behoben: `wiki/QUESTIONS.md` neu angelegt (Fragen aus dem
  bisherigen INDEX-Block übernommen + HNF/GF-Provenienz-Lücke ergänzt), `raw/_INGESTED.md` neu
  angelegt (raw/ weiterhin nur README, ehrlich als Seed-Basis vermerkt), Frontmatter
  (`title/status/last_updated/sources/links`) in `wiki/kennwerte.md` ergänzt (status `emerging`,
  da an belegte Wüest-Benchmarks angekoppelt aber ohne eigene Realabrechnung).
- [umlaute] `wiki/kennwerte.md` durchgängig auf echte Umlaute ä/ö/ü umgestellt (Rule
  `umlaute-konvention.md` hat Vorrang) — rund 30 Fundstellen; Dateinamen/Backtick-Pfade
  (z.B. `fernwaerme-anschlusskosten-zh`, `kostenschaetzung`) bewusst unverändert gelassen
  (ASCII-Dateinamen-Konvention). `wiki/INDEX.md` redundanten Fragen-Block entfernt, verweist
  jetzt auf `QUESTIONS.md`.
- Kein inhaltlicher Eingriff in die Kennwerte/Tabellen selbst — reine Struktur-/Schreibregel-
  Nacharbeit gemäss Empfehlung aus `outputs/2026-07-21_health-check.md`.

## 2026-07-21 — Wissens-Health-Check Phase 1 (Mac Mini Nachtschicht)
- [health-check] A0·B2·C1offen/3neu-verifiziert·D0·E0·F3·G0 — inhaltlich weiterhin sauber
  (neue Cross-KB-Bezuege aus den Wissens-Chef-Runs 12./14.07. widerspruchsfrei, Quellen
  verifiziert), aber die drei strukturellen Findings vom 01.07. (fehlende `wiki/QUESTIONS.md` +
  `raw/_INGESTED.md`, kein Frontmatter in `kennwerte.md`, Umlaut-Umschrift ae/oe/ue statt
  ä/ö/ü) sind trotz dreimaliger inhaltlicher Bearbeitung unveraendert offen — 3 Wochen
  faellig, Phase 2 fuer diese KB nie gelaufen. Report: outputs/2026-07-21_health-check.md.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug KB energie (Doppelzaehlungs-Guard)
- [link] `wiki/kennwerte.md`: neuer Abschnitt «Querbezug KB energie» — Waermeerzeuger-/PV-/Fernwaerme-Komponentenkosten (CHF/kWp, Anschluss, Rp/kWh) werden in `wissen/energie` gefuehrt, stecken als BKP 23/24/25 bereits in den hier gefuehrten CHF/m3-GV-Kennwerten (BKP 1-5) — **nicht additiv** aufrechnen. Fuehrung m3-GV-Erstellungskennwerte bleibt hier; energie liefert Detail-/Betriebskosten. Kein Widerspruch/Doppelspur. Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Teuerungs-Check verlinkt
- [befund] W3 (Teuerungsstand grobkosten «Wüest 2022/23» vs. aktueller BFS-Baupreisindex) adversarial **WIDERLEGT**: Seed-Basis legitim (Werte explizit Seed ±25 %, Kalibrierquelle transparent, reale Bauteuerung 2023->2026 nur ~2-3 %, weit unter der Spanne). Kein Fehler.
- [link] kennwerte.md: Teuerungs-Check-Note + Verweis auf `immobilienbewertung/wiki/investorenmarkt-makro` (BFS April 2026 = 100.6). Compounding-Verlinkung, keine Wertkorrektur.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026): HNF/GF-Faktor ist kontextabhaengig — **Regelgeschoss 0.70**, **Gesamtgebaeude 0.60–0.61** (inkl. Sockel/Attika/UG). Fuer die m²↔m³-Kostenbruecke ist der Gesamtgebaeude-Faktor 0.60 kanonisch. In kennwerte.md verankert; die ~1'020 CHF/m³-Ankopplung bleibt gueltig (beruht auf GV/HNF 4.7 Gesamtgebaeude). Cross-KB-Fund grobkosten-W2 damit aufgeloest.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu immobilienbewertung
- [link] kennwerte.md -> `immobilienbewertung/wiki/realwert-sachwert` (und zurueck). Klargestellt: die dortige Wuest-Tabelle «Immobilien entwickeln» S. 37 (ausbaustandard-/lagegestuft) und der hier gefuehrte Wuest-Dimensions-Median sind ZWEI verschiedene Wuest-Produkte mit verschiedener Bezugsbasis — kein Widerspruch (adversarial verifiziert, kennwerte-W1/W4 WIDERLEGT). Vergleich nur basisgleich.
- [offen] Kennwerte-W2 (m2->m3-Umrechnungsfaktor 0.70 in kennwerte vs. 0.60-0.61 dreifach trianguliert in immobilienbewertung) BESTAETIGT + als heikel markiert -> Entscheid Raphael (siehe koordination/outputs/2026-07-12_wissens-chef-run1.md).

## 010726 — Wissens-Health-Check (Phase 1)
- Audit A-G unbeaufsichtigt gelaufen. Inhaltlich sauber (A/C/D/E/G gruen), formal 2 Findings:
  B (QUESTIONS.md + raw/_INGESTED.md fehlen), F (kein Frontmatter, ae/oe/ue statt echter Umlaute,
  CHANGELOG-Datumsformat). Keine falschen Kennwerte, alle Werte korrekt Seed + Provenienz.
- Report: `outputs/2026-07-01_health-check.md`. Phase-2-Fixes offen (nur interaktiv).

## 070626 — KB angelegt (Seed)
- KB `grobkosten` erstellt (raw/ wiki/ outputs/, CLAUDE.md).
- `wiki/kennwerte.md`: Seed-Kennwerte Wohnbau-Neubau CHF/m3 GV (BKP 1-5), Region ZH —
  Erfahrungswerte, kalibriert an Studie 2621 Giebelweg 12 (MFH gehoben 950, Band 850-1050).
  Noch NICHT mit Realabrechnungen belegt (Reife: Seed).
- Zuschlagstabelle (Hang, Baugrund, Standard, Kleinvolumen) + Umrechnung Baumasse→GV.
- Speist Skill `grobkosten-onepager` + Agent `grobkosten-rechner`.
- Naechster Schritt: erste Realwerte (Schlussabrechnung/Offerte) in raw/ → wiki nachfuehren.

## 070626 — Wüest-Benchmarks angekoppelt
- Belegte Wüest-Kostenbenchmarks Wohnbau (CHF/m² HNF/GF, BKP 1–5/2, Stand 2022/23) als Referenz in
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` abgelegt
  (Quelle Wüest Academy P23D S. 32–34 + SIA 2020 + BfS; Visualisierung/Anhang im IMMO-Ordner).
- `wiki/kennwerte.md`: m³-Seed an die m²-Benchmarks angekoppelt (4'800 CHF/m² HNF ≈ 1'020 CHF/m³ GV
  bestaetigt Band 850–1'050). Reife: Seed → «Seed, Wüest-kalibriert».
- Skill `kostenschaetzung` SKILL.md um Wohnbau-Benchmark-Sektion erweitert.
