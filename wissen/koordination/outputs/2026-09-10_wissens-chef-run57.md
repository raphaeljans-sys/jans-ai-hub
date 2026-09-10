---
title: "Wissens-Chef Lauf 57 — die Bauherren-FAQ nannte fuer ZH das falsche Verfahren, und eine Cross-KB-Korrektur kam im Zielartikel nur halb an"
status: established
last_updated: 2026-09-10
sources:
  - "Delta-Basis 519913bf9..1a50f2e8c (Lauf-56-Basis bis HEAD), Fenster 09.09.2026 23:00 - 10.09.2026 23:00, 114 Commits, nativ im SSD-Klon gemessen"
  - "7 Melder (model: sonnet), je ein adversarialer Verifikator, Gegenpruefung der tragenden Befunde am Original im Hauptkontext"
  - "Eigene Messungen: wiki-konsistenz.sh ueber alle KBs (177 Befunde, rc=1), Auto-Block rules/jans-dna-facetten.md 33'987 B"
links:
  - "[[QUERBEZUEGE]]"
---

# Wissens-Chef Lauf 57 — 10.09.2026

## ⚠ Fuer das Tagesbriefing (hub-chef)

**Ein bestaetigter, bauherrenseitig wirksamer Widerspruch, korrigiert.** Die Energie-FAQ F291
riet fuer Hüllensanierungen (Fassadendaemmung, Fensterersatz) zum **ordentlichen Verfahren**.
In ZH gilt **§ 325a PBG: Anzeigeverfahren** (ohne Aussteckung/Auflage, 30 Tage). ⚠-Absatz
gesetzt. Wer F291 seit dem 09.09. an eine Bauherrschaft weitergegeben hat, sollte das pruefen.

Keine neuen Entscheide an Raphael; drei aeltere bleiben offen (unten).

## Bilanz

| | |
|---|---|
| Meldungen | 11 |
| bestaetigt | 2 |
| bestaetigt, anderer Zuschnitt | 7 |
| widerlegt | 2 |
| geaenderte Dateien | 23 (inkl. dieser Bericht), alle additiv oder am Anker berichtigt |
| Loeschungen | 0 (eine Frontmatter-Zeile in den Body verschoben) |

## Big Points

**WC57-1 ⭐ F291 und § 325a PBG** (`energie` ↔ `baurecht`). Der Fehler lag auch KB-intern:
`energie/wiki/energienachweis-zh.md` fuehrt § 325a seit langem, die FAQ nennt das
Anzeigeverfahren nirgends. Die Recherche zu E-R189-1 las den politischen Vorstoss, nicht den
eigenen Wegweiser. Ruecklauf an `baurecht` (E-R189-1 dort als «offen» veraltet). Neu offen:
Verfahrensart in **SZ** (kein Beleg im Hub).

**WC57-3 Halbe Cross-KB-Korrektur** (`planungsgrundlagen` ↔ `energie`). Run 190 setzte eine
Fussnote «nicht Tab. 24, sondern Lehrbuch-Tab. 6.2»; die Bildunterschrift direkt darueber blieb
«Tabelle 24». Der Artikel widersprach sich selbst. Angeglichen, Werte unveraendert.
**Uebertragbar:** wer eine Korrektur in fremde Artikel traegt, liest den ganzen Absatz, nicht nur
die Diff-Zeilen.

**WC57-5 Der 35-dB-Projektwert hat einen Normanker** (`projekt-lessons` ↔ `normen` ↔ `energie`).
Der KISPI-Report nannte 35 dB «reine Projektvorgabe». Der Hub fuehrt SIA 181:2006 Anhang G,
Spital Korridor-Zimmer, **D_i 35 dB = Stufe 2**. Offen: meint die Planlegende D_i oder Rw
(PL57-1).

**WC57-6 SN EN 62368-1** (`auflagebereinigung` ↔ `normen`). SRZ nennt 2020+A11, die VKF-BRL
14-15 verweist datiert auf 2014. Vorbehalt + Frage WC57-N1.

**WC57-8 BFS-Index ohne Basis** (`machbarkeit` ↔ `grobkosten` ↔ `immobilienbewertung`).
«114.8» war Basis 2020; gegen Basis 2025 verrechnet ergaebe das rund −12 % Scheindeflation. Basis
und Zeiger gesetzt, «100.6» als Baugewerbe Total benannt, Matrixzeile neu.

**Kleinere Nachfuehrungen:** N83-1-Konsumentenliste (4 von 17 Namen extern verlinkt, WC57-7) ·
`links:` im KISPI-Report in den Body verschoben (WC57-4) · twin-interne Nachfuehrung Batch 118
vorgelegt (260910c, WC57-9) · Arbeitsregel «Person und Sache» in `skills/logbuch` (WC57-10).

## Widerlegt

- Kante Bodenheizung → `bauprodukte/wiki/bkp-281-estrich-systeme.md`: der Report dimensioniert
  keinen Estrich, der Artikel stuft seine DIN-Werte fuer CH-LV selbst herab.
- SN EN 13501-1 als offene Luecke in `normen`: die zitierte Frage ist das geschlossene N59-1.

## Nullbefunde mit Aussage

- **Norm-Rueckkanal, erste Bestandsstichprobe** (Methodenumstellung aus Lauf 56): 12 Normen in
  `projekt-lessons`/`auflagebereinigung`/`kunde-bopp`, 10 konsistent, 1 Divergenz. Die Methode
  findet, was die Zuwachsmessung viermal nicht fand.
- **Run-83-Nachlauf:** kein Konsument zitiert ≤/≥-Schwellen aus SIA 162/051 A1.
- **Tab.-25-Spitalwert:** hubweit nirgends mehr in alter Form.
- **Batch-118-Kontakte:** korrekt nur als Frage vorgelegt, nicht in die Rule geschrieben.
- **Byte-Riegel:** Auto-Block 33'987 B gegen 34'000 B, stabil seit Lauf 56 (Reserve rund 13 B).
- **wiki-konsistenz.sh:** 177 Befunde hubweit (Run 190 meldete dieselbe Zahl); die einzige
  KB-uebergreifende Meldung (`[[koordination]]` in `projekt-lessons/wiki/QUESTIONS.md`) ist ein
  Zitat im Erledigt-Vermerk PL46-2, kein toter Link.
- **Beobachtung ohne Eingriff:** die Skill-Beschreibung `energie` nennt «196+ Kernfragen, 212+
  Destillate, 30 Themenartikel»; gemessen 292 / 348 / 39. Als Untergrenze nicht falsch, aber
  veraltet (gleiche Familie wie WC56-1).

## Offene Entscheide fuer Raphael (unveraendert aus Lauf 56, keine neuen)

1. **Byte-Riegel (a)/(b)/(c)** (SYN-69/78/80): Reserve rund 13 B.
2. **Stadelmann in die Kontaktliste** `rules/anrede-kontakte.md` (Du seit 07.09.2026 belegt).
3. **Twin-Gold 2007-2014:** gilt die eigene Stimme jener Jahre heute noch als Gold?
4. Dazu bei `normen` vorgelegt: **N83-1** Umbenennung `vkf-brl-` → `vkf-bse-`; die
   Entscheidungsgrundlage ist jetzt vollstaendig.

## Geaenderte Dateien

`wissen/energie/wiki/BAUHERREN-FAQ.md` · `wissen/energie/CHANGELOG.md` ·
`wissen/baurecht/wiki/QUESTIONS.md` · `wissen/baurecht/CHANGELOG.md` ·
`wissen/planungsgrundlagen/wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` ·
`wissen/planungsgrundlagen/CHANGELOG.md` ·
`wissen/projekt-lessons/outputs/2026-09-10_kispi-bodenanschluss-innere-verglasung-schall-bodenheizung.md` ·
`wissen/projekt-lessons/wiki/QUESTIONS.md` · `wissen/projekt-lessons/CHANGELOG.md` ·
`wissen/auflagebereinigung/outputs/2026-07-31_moeblierung-fluchtweg-srz-praxis.md` ·
`wissen/auflagebereinigung/CHANGELOG.md` · `wissen/normen/wiki/QUESTIONS.md` ·
`wissen/normen/CHANGELOG.md` · `skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md` ·
`wissen/grobkosten/wiki/kennwerte.md` · `wissen/grobkosten/CHANGELOG.md` ·
`wissen/twin/wiki/QUESTIONS.md` · `wissen/twin/CHANGELOG.md` · `skills/logbuch/SKILL.md` ·
`wissen/claude-code/CHANGELOG.md` · `wissen/koordination/QUERBEZUEGE.md` ·
`wissen/koordination/CHANGELOG.md` · dieser Bericht.
