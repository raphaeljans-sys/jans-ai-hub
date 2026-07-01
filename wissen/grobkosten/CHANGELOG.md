# CHANGELOG — wissen/grobkosten

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
