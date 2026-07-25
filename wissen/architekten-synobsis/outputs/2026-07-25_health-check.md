# Wissens-Health-Check: architekten-synobsis — 2026-07-25

## Vorbemerkung
Nicht-Standard-KB (Tool-/Katalog-KB, kein klassisches Artikel-Wiki) — Gesundheits-Indikator
ist der Scan-Fortschritt (`synobsis_scan.py --status`) plus die auf die Wiki-Schicht
(`wiki/INDEX.md`, `THEMEN.md`, `QUESTIONS.md`, `RAUMTYPOLOGIEN.md`) anwendbaren Teil-Audits
B/E/F, gemaess eigener CLAUDE.md-Konvention. Vierter Check dieser Art, Vergleichsbasis
`outputs/2026-07-21_health-check.md`.

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | n/a (kein Artikel-Wiki im klassischen Sinn) |
| B Kaputte Backlinks/Orphans | 0 (neuer Link `[[RAUMTYPOLOGIEN]]` in INDEX.md verifiziert, Ziel existiert) |
| C Unbelegte Claims | n/a (Katalogdaten sind die Quelle) |
| D RAW-Coverage | n/a (Katalog statt raw/) |
| E Veraltete Artikel | 1 QUESTIONS-Punkt seit 21.07. geschlossen (RAUMTYPOLOGIEN), Rest weiter eingefroren seit 03.07. |
| F Schreibregel-Verstoesse | **unveraendert offen:** 180 Ersatzschreibungs-Treffer INDEX.md, 56 QUESTIONS.md, 9 THEMEN.md (Wortgrenzen-Suche); RAUMTYPOLOGIEN.md (neu, 24.07.) sauber, 0 Treffer |
| G Promotion-Kandidaten | 0 |
| **Prozess: Scan-Fortschritt** | **853 / 853 (100 %), unveraendert seit 2026-07-02, 13. ergebnisloser Nachtlauf in Folge** |
| **Struktur: fehlende KB-Files** | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Batch-Lauf `synobsis-batch-nacht`: 13. ergebnisloser Nachtlauf in Folge, Empfehlung
   13x wiederholt, nicht umgesetzt.** Kein neues Rohmaterial seit 2026-07-02 (juengste
   Quellordner-Aenderung `HdM`, 2026-04-07). Jeder Lauf schreibt `catalog/vectors.npz`
   deterministisch neu (kein inhaltlicher Diff, nur Zeitstempel in `INDEX.md`/`cad-index.json`).
   Seit 13.07. taeglich, komplett ergebnislos — ein reiner Kostenposten ohne Fortschritt.
   Entscheid steht bei Raphael (Task pausieren/deaktivieren oder Frequenz stark senken,
   Reaktivierung bei neuem Quellmaterial). Bereits im Fristen-Register vermerkt.

2. **Umlaut-Ersatzschreibung in der Wiki-Schicht weiterhin unkorrigiert** (Befund seit
   21.07.2026 unveraendert): `wiki/INDEX.md` 180, `wiki/QUESTIONS.md` 56, `wiki/THEMEN.md` 9
   Treffer bei gezielter Wortgrenzen-Suche (fuer/ueber/moeglich/Flaeche/Waerme/…). Die
   Root-Cause-Behebung vom 21.07. (`scripts/dispatch-run.sh` erzwingt jetzt
   `LANG=de_CH.UTF-8`) verhindert nur **neue** Faelle im naechsten Batch-/Kuratierungslauf —
   der Bestand selbst ist seither nicht bereinigt worden (Korrektur ist Phase-2-Aktion,
   nur interaktiv). Positiver Gegenbeleg: der am 24.07. direkt vom Hauptmodell verfasste
   Artikel `wiki/RAUMTYPOLOGIEN.md` ist umlautsauber (0 Treffer) — der Fix wirkt dort, wo
   nicht an einen Haiku/Sonnet-Subagenten delegiert wird.

3. **Ein QUESTIONS-Punkt sauber geschlossen seit dem letzten Check:** "1 Selection"
   (Sektion "Sammelfrage Raumtypologien") wurde am 24.07. durch den neuen Artikel
   `wiki/RAUMTYPOLOGIEN.md` beantwortet (9 Raumtypen, alle 105 Projekte aus
   `catalog/typology-map.json`), in `INDEX.md` verlinkt, in `QUESTIONS.md` als erledigt
   vermerkt. Restliche ~40+ offene Punkte in `QUESTIONS.md` sind grossteils
   Doppelordner-/Leerordner-/Schreibfehler-Faelle, die eine Freigabe fuer Aenderungen am
   Quellordner brauchen (destruktiv) — kein Fall fuer eine unbeaufsichtigte Nachtschicht.

## Details je Audit

### B. Backlinks/Orphans
Nur Delta seit 21.07. geprueft (kein Vollscan, Budget-Auftrag): der einzige neue Backlink
`[[RAUMTYPOLOGIEN]]` (in `INDEX.md`, Eintrag "1 Selection") zeigt auf die tatsaechlich
existierende `wiki/RAUMTYPOLOGIEN.md`. Die am 21.07. dokumentierten 38 Unterstrich-vs-
Leerzeichen- und 6 Sonderzeichen-Format-Inkonsistenzen sind unveraendert (kein Fix seither,
`THEMEN.md` seit 03.07. nicht mehr angefasst) — weiterhin 0 tatsaechlich toter Link.

### E. Veraltung
`wiki/THEMEN.md` weiterhin Stand 03.07. (unveraendert). `wiki/INDEX.md` + `wiki/QUESTIONS.md`
zuletzt 24.07. (RAUMTYPOLOGIEN-Ergaenzung), `wiki/RAUMTYPOLOGIEN.md` neu 24.07. Kein
Handlungsbedarf ueber Punkt 3 hinaus — konsistent mit fehlendem neuen Quellstoff auf
Katalogebene.

### F. Schreibregeln
Gezielte Wortgrenzen-Suche (haeufigste Ersatzschreibungs-Muster) statt roher ae/oe/ue-Substring-
Suche (die auch echte Nicht-Umlaut-Woerter faelschlich trifft): `INDEX.md` 180, `QUESTIONS.md`
56, `THEMEN.md` 9, `RAUMTYPOLOGIEN.md` 0. Keine Vollpruefung aller Wortformen — reale Zahl
vermutlich hoeher. Nicht selbst korrigiert (Phase 1, Skill-Contract).

## Prozess-Status
`state/processed.json`: 853/853, Katalog-Stand unveraendert 2026-07-02 (23 Tage ohne neuen
Quellstoff). `catalog/vectors.npz` deterministisch aktuell (853 × 768, Stichprobe
"introvertierter Hof Beton Kapelle" weiterhin plausibel, Top-Score ~0.85). launchd-Job
`ch.jans.synobsis-batch` laeuft weiterhin taeglich, 13. Mal in Folge ohne Ergebnis —
Kernempfehlung siehe Top-1.
