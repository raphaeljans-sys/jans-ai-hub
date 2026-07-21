# Wissens-Health-Check: grobkosten — 2026-07-21

Phase 1 (Audit + Ablage), unbeaufsichtigt (Mac Mini Nachtschicht). KB seit dem letzten
Check (2026-07-01) inhaltlich aktiv gewachsen (drei Wissens-Chef-Cross-KB-Runs 12./14.07.:
HNF/GF-Faktor kontextabhängig, Teuerungs-Check, Doppelzählungs-Guard zu KB energie), aber
die drei strukturellen Findings aus dem letzten Check wurden nie nachgezogen (Phase 2 lief
für diese KB offenbar nie).

## Zusammenfassung

| Audit | Thema | Ampel | Findings |
|---|---|---|---|
| A | Widersprüche | grün | 0 |
| B | Backlinks / Orphans / State-Files | gelb | 2 (unverändert seit 07-01) |
| C | Unbelegte Claims | grün | 1 offen (unverändert), 3 neue Claims verifiziert |
| D | RAW-Coverage | grün | 0 (raw/ weiterhin leer, ehrlich als Seed deklariert) |
| E | Veraltete Artikel | grün | 0 |
| F | Schreibregeln | gelb | 3 (alle unverändert seit 07-01 — 3 Wochen offen) |
| G | Promotion-Kandidaten | grün | 0 (weiterhin keine Realwerte in raw/) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Die drei Findings vom 01.07. sind seit 3 Wochen unverändert offen**, obwohl die KB in
   der Zwischenzeit dreimal inhaltlich bearbeitet wurde (12./14.07., Wissens-Chef-Cross-KB-
   Runs). Diese Runs haben Inhalt ergänzt, aber die strukturellen Findings nie mitgezogen:
   `wiki/QUESTIONS.md` und `raw/_INGESTED.md` fehlen weiterhin, `kennwerte.md` hat weiterhin
   kein Frontmatter, und die Umlaut-Umschrift (ae/oe/ue statt ä/ö/ü) ist weiterhin
   durchgängig im Fliesstext (ca. 30 Fundstellen) — obwohl die Rule `umlaute-konvention.md`
   inzwischen ausdrücklich Vorrang vor jeder anderslautenden Vorgabe hat.
2. **Kein Frontmatter heisst: Audit E (Veraltung) läuft technisch ins Leere.** Ohne
   `last_updated` im Frontmatter kann künftig kein automatischer Alters-Check greifen; aktuell
   nur durch manuelle CHANGELOG-Lektüre ersetzbar (funktioniert, ist aber Mehraufwand bei
   jedem Check).
3. **Inhaltlich weiterhin sauber:** alle drei neuen Cross-KB-Ergänzungen (HNF/GF-Faktor
   0.60 vs. 0.70, Teuerungs-Check BFS-Baupreisindex, Doppelzählungs-Guard zu KB energie)
   sind widerspruchsfrei in die bestehende Tabelle/Ankopplung eingebettet und referenzieren
   real existierende Quelldateien (verifiziert, siehe Audit C). Kein inhaltliches Risiko.

## Details je Audit

### A — Widersprüche
Kein Finding. Die drei neuen Cross-KB-Blöcke widersprechen sich nicht gegenseitig und nicht
der Kern-Tabelle: der Gesamtgebäude-Faktor 0.60 (statt Regelgeschoss 0.70) wird explizit als
Präzisierung, nicht als Korrektur der ≈1'020-CHF/m³-Ankopplung ausgewiesen: „Die obige ≈1'020
CHF/m³-Ankopplung bleibt gültig, weil sie direkt auf dem GV/HNF-Verhältnis 4.7 (Gesamtgebäude)
beruht." Der Doppelzählungs-Guard zu `energie` ist konsistent mit der bestehenden Trennlogik
(Erstellungskosten hier, Betriebs-/Komponentenkosten dort).

### B — Backlinks / Orphans / State-Files
- **`wiki/QUESTIONS.md` fehlt weiterhin.** Meta-Schema-Pflichtdatei, seit 01.07. als Finding
  bekannt, nicht angelegt. Offene Fragen stehen weiterhin nur als Block in `INDEX.md`.
- **`raw/_INGESTED.md` fehlt weiterhin.** Ebenfalls seit 01.07. bekannt, nicht angelegt.
- Kein Orphan: `kennwerte.md` ist im `INDEX.md` verlinkt. Keine `[[…]]`-Backlinks im Artikel
  (bei 1 Wiki-Artikel unkritisch). INDEX.md selbst ist aktuell und nennt die offenen Lücken
  korrekt (deckt sich mit dem tatsächlichen raw/-Leerstand).

### C — Unbelegte Claims
- **Weiterhin offen (unverändert seit 01.07.):** die Umrechnungsfaktoren GV/HNF ≈ 4.7 bzw.
  HNF ≈ 0.70 × GF tragen keine eigene Quelle, sind erkennbare JANS-Faustannahmen. Unverändert
  unkritisch (Wert bleibt plausibel, im Band), aber weiterhin ohne Provenienz-Tag.
- **Drei neue Claims verifiziert (grün):** alle drei referenzierten Quelldateien existieren
  und sind aktuell — `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`,
  `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (14.07.), `wissen/immobilienbewertung/wiki/investorenmarkt-makro.md`
  (12.07.), sowie die drei energie-Destillate (`pv-marktzahlen-kosten-ch-2025.md`,
  `fernwaerme-anschlusskosten-zh.md`, `netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md`).

### D — RAW-Coverage
Kein Finding. `raw/` enthält weiterhin nur das README, unverändert seit KB-Anlage. Alle
Kennwerte bleiben korrekt als Seed deklariert — keine stille Höherstufung ohne Beleg.

### E — Veraltete Artikel
Kein Finding inhaltlich (Preisstand 2026 aktuell, Teuerungs-Check vom 12.07. bestätigt
~2–3 % kumulierte Bauteuerung seit Kalibrierung, weit innerhalb ±25 %-Spanne). Formal bleibt
das Problem aus Audit F (kein `last_updated`-Feld) bestehen — dieser Audit musste daher wie
beim letzten Mal über die CHANGELOG-Historie statt über Frontmatter geprüft werden.

### F — Schreibregeln
- **Umschrift ae/oe/ue statt echter Umlaute — unverändert, ca. 30 Fundstellen.** Betrifft
  `wiki/kennwerte.md` durchgehend (u.a. „fuer", „Gebaeude", „Zuerich", „Grobschaetzung",
  „zurueckgespeisten", „Zuschlaege", „Schaetzungen") sowie weiterhin die Begleit-READMEs.
  „Wüest" bleibt korrekt mit ü gesetzt — Inkonsistenz besteht seit 3 Wochen unverändert.
- **Kein Frontmatter in `kennwerte.md` — unverändert.** Weiterhin kein `title/status/
  last_updated/sources/links`-Block; Artikel beginnt direkt mit der Überschrift.
- **Datumsformat CHANGELOG — gemischt.** Neuere Einträge (12./14.07.) nutzen korrekt
  JJJJ-MM-TT; die beiden ältesten Einträge („010726", „070626") sind weiterhin im alten
  TTMMJJ-Format nicht nachgezogen.
- Weiterhin positiv: kein `ß`, keine Deko-/Emoji-Verstösse, Tabellen sauber, raw/ und die
  drei neuen CHANGELOG-Einträge selbst sind bereits in echten Umlauten geschrieben (der
  Verstoss betrifft ausschliesslich den älteren `kennwerte.md`-Fliesstext und die READMEs).

### G — Promotion-Kandidaten
Kein Finding. Alle Kennwerte weiterhin „Seed, Wüest-kalibriert" — 0 Realwerte in `raw/`.
Erster Realwert bleibt der Promotion-Trigger.

## Fazit

Inhaltlich weiterhin sauber und ehrlich (keine geratenen Kennwerte, neue Cross-KB-Bezüge
korrekt referenziert und widerspruchsfrei). Der Unterschied zum 01.07.-Check: die drei
strukturellen Findings sind jetzt 3 Wochen alt und wurden trotz dreimaliger inhaltlicher
Bearbeitung der KB nie mitgezogen — das deutet darauf hin, dass Cross-KB-Runs (Wissens-Chef)
gezielt Inhalt ergänzen, aber keine Wissenscheck-Phase-2-Aufräumarbeit auslösen. Empfehlung:
bei nächster interaktiver Session mit Raphael Phase 2 für diese KB anbieten (kleiner aber
längst fälliger Aufwand: 2 State-Files anlegen, Frontmatter ergänzen, Umlaute umstellen).
