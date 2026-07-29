---
title: Methoden-Register — Quellen aus «03 Prompteingaben» und ihr Implementationsstand
status: established
last_updated: 2026-07-29
sources: [OneDrive AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben/ (Vollanalyse 29.07.2026), scripts/methoden-scan.sh]
links: [[methode-spw-wissensbasis]], [[lecture-260729-anthropic]], [[INDEX]]
---

# Methoden-Register

Kanonisches Register aller Methoden-Quellen im OneDrive-Ordner
`AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben/`. Dort sammelt Raphael
abfotografierte Lectures, Videos und Prompt-Ideen. Dieses Register stellt sicher, dass
jede Quelle (a) destilliert, (b) implementiert und (c) dauerhaft ueberprueft wird.

**Gepflegt vom Loop `methoden-radar`** (woechentlich, Mo 21:00): Delta-Scan via
`scripts/methoden-scan.sh`, neue Ordner werden destilliert und hier registriert; ohne
neues Material wird rotierend EINE Zeile verifiziert (Implementation noch aktiv?
Training liefert?) und der Verifikations-Stempel gesetzt.

## Register (Stand 29.07.2026)

| Ordner (Quelle) | Inhalt | Destillat | Implementation im Hub | Training/Ueberpruefung | Status | Letzte Verifikation |
|---|---|---|---|---|---|---|
| `3 EASY STEPS - the Spec` | 34 Screenshots, YT Austin Marchese / Karpathy «The Spec» | `wissen/spec/` (5 Wiki-Artikel, Transkript in raw) | Rule `spec-methode` (Gate, immer aktiv) + Skill `spec` | Task `spec-training` (seit 26.07. Ereignis-Trigger bei realer Spec-Anwendung) | implementiert | 2026-07-29 (dieser Lauf) |
| `Methode SPW` | 30 Screenshots, YT «Second Brain / Claude als Bibliothekar» (Karpathy-Ansatz) | [[methode-spw-wissensbasis]] (nachgeholt 29.07.) | Wissens-Layer `wissen/` + Rule `wissens-bibliothekar` + Skill `wissenscheck` (7 Audits) | Task `wissenscheck-monatlich` (1. des Monats) + `wissens-chef` (taeglich, Cross-KB) | implementiert | 2026-07-29 (dieser Lauf) |
| `260729 Antrophic Lecture` | 32 Slides, Anthropic-Lecture Claude Code | [[lecture-260729-anthropic]] + [[kontext-architektur]] | Rule `auto-verbesserungen` 260729 + Kontext-Diaet 2.0 + `scripts/claude-run.sh` + `connectors/README.md` | Betriebsaufsicht `vollgas-fruehwarnung` (Lauf-Journal) | implementiert | 2026-07-29 (dieser Lauf) |
| `260725 Archetypen` | 5 Screenshots, YT-Short @niklasvolland «5 Tech-Jobs» (Prototyper/Builder/Sweeper/Grower/Maintainer) | `docs/konzepte/260729-Rollen-Taxonomie/` | Rule `rollen-taxonomie` + `logbuch/rollen/rollen-map.tsv` + Scripts `rollen-bilanz.sh`, `nutzungs-radar.sh`, `schutzmechanik-selbsttest.sh` | Erstmessung 29.07.2026; weitere Bilanzen via Rollen-Scripts | implementiert | 2026-07-29 (dieser Lauf) |
| `Agenten` | 2 DOCX + 1 PNG (Fruehjahr 2026): Drei-Marken-/Website-Strategie (Healthcare-Dienstleister, Portfolio-Architekt), Produkt «Machbarkeitsstudie 2 Tage / CHF 2'000», 4-Agenten-Blaupause (Indexer, Baueingabe-Check, Brandschutz, QA-Trace) | teilweise gelebt (machbarkeit-Skills, machbarkeit-studio, Nova als realer Kunde) | OFFEN: Drei-Marken-Strategie nicht umgesetzt → Kandidat fuer `synergie-orchestrator` (naechster Lauf 01.08.); 4-Agenten-Blaupause teilabgedeckt (auflagebereinigung deckt NACH dem Entscheid; Baueingabe-Vollstaendigkeitscheck + Trace-Matrix fehlen) | — | Kandidaten erfasst, Entscheid Raphael | 2026-07-29 |
| `Prompts` | 3 Screenshots YT-Short «4 Geheime ChatGPT Codes» (/human, DLTR, EL5; Code 4 fehlt) + praktisch leeres DOCX | nicht noetig | ohne Substanz fuer Claude-Code-Hub (eigene Skills/Commands) | — | keine Aktion, archivierbar (Entscheid Raphael) | 2026-07-29 |
| `CAD Verarbeitung` | 1 Standbild: Anthropic-Demo parametrischer Code-CAD-Leuchtturm (Workplane-Arithmetik, Selbstkorrektur) | Registereintrag genuegt | bestaetigt den Hub-Weg Geometrie-ueber-Code (`volumenstudie`, `pdf2dwg`) | — | registriert, keine Aktion | 2026-07-29 |
| `Fabel 5` | 1 Screenshot 11.06.2026: Fable-5-Sicherheitsfilter markiert harmlose C4D-Session, Auto-Fallback auf Opus 4.8 | Registereintrag genuegt | Betriebs-Praezedenz fuer Filter-False-Positives in Render-Workflows (Render-Weiche Rule 260611) | — | registriert als Beleg | 2026-07-29 |
| `Anthropic` | 1 MP4 (imagine-hero, Marketing) | — | ohne Methodengehalt | — | keine Aktion | 2026-07-29 |

## Offene Kandidaten (Entscheid Raphael)

1. **Drei-Marken-/Website-Strategie** (`Agenten/06 Unternehmung.docx` + «Du agierst als
   Produktstratege.docx»): als raw-Input in den naechsten `synergie-orchestrator`-Lauf
   geben? Referenziertes `Search.pdf` (Komoxx) liegt nicht im Ordner — Luecke.
2. **Baueingabe-Vollstaendigkeitscheck + QA-Trace-Matrix** (PNG im Ordner `Agenten`):
   als Skill-Kandidaten (Vorstufe zu `auflagebereinigung`, die erst NACH dem Entscheid
   greift).
3. **Ordner `Prompts`**: archivieren/loeschen (ohne Substanz)?

## Verifikations-Rotation

Der Loop prueft pro Lauf ohne neues Material genau EINE Zeile mit Status
«implementiert», reihum von oben nach unten: existieren die genannten Rules/Skills/
Scripts noch, ist das Training aktiv (Registry-Status) und gibt es seit der letzten
Verifikation einen Liefer-Beleg (CHANGELOG-/Journal-Eintrag)? Befunde kommen in den
CHANGELOG dieser KB und bei Handlungsbedarf in die Chat-/Briefing-Schiene (hub-chef).
