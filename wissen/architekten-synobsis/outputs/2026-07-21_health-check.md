# Wissens-Health-Check: architekten-synobsis — 2026-07-21

## Vorbemerkung: Nicht-Standard-KB, aber seit dem letzten Check um eine Wiki-Schicht gewachsen
Der letzte Health-Check (2026-07-01) fand die KB als reine Tool-/Katalog-KB vor (kein `wiki/`,
Scan bei 5/853). Seither ist die **Stufe-3-Kuratierung** (02.–03.07.2026) dazugekommen:
`wiki/THEMEN.md` (1'487 Zeilen, thematisches Register), `wiki/INDEX.md` (853 Kurzdossiers) und
`wiki/QUESTIONS.md` (offene Punkte). Die sieben Standard-Audits greifen weiterhin nur teilweise
(kein Artikel-Frontmatter, kein `raw/`-Coverage-Konzept), aber B/F/G lassen sich jetzt sinnvoll
auf die Wiki-Schicht anwenden — anders als am 01.07. Stichprobenpruefung gemaess Budget-Auftrag
(kein Vollscan aller 1'599 Backlinks einzeln gelesen, sondern skriptgestuetzter Abgleich).

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | n/a (kein Artikel-Wiki im klassischen Sinn) |
| B Kaputte Backlinks/Orphans | 0 echte Bruecke, **6 Format-Inkonsistenzen** (Sonderzeichen/Umlaut-Slugs), **38 Underscore-vs-Leerzeichen-Varianten** |
| C Unbelegte Claims | n/a (Katalogdaten sind die Quelle, kein separates Beleg-Konzept) |
| D RAW-Coverage | n/a (Katalog statt raw/) |
| E Veraltete Artikel | 1 (QUESTIONS.md seit 03.07. inhaltlich eingefroren, Kuratierung seither nicht fortgesetzt) |
| F Schreibregel-Verstoesse | **32 Umlaut-Ersatzschreibungen in INDEX.md** (fuer/ueber/moeglich/…) |
| G Promotion-Kandidaten | 0 (QUESTIONS.md-Fragen sind Bibliothekar-Entscheide, keine Status-Promotion) |
| **Prozess: Scan-Fortschritt** | **853 / 853 (100 %), seit 02.07. saturiert** |
| **Struktur: fehlende KB-Files** | **0** (CHANGELOG.md + wiki/QUESTIONS.md seit 01.07. nachgeholt) |

## Top-3 (Raphaels Aufmerksamkeit)
1. **Umlaut-Konvention verletzt in `wiki/INDEX.md`** — 32 Ersatzschreibungen (fuer/ueber/moeglich/
   Waerme/…) statt ä/ö/ü, entstanden bei der Kuratierung 02.–03.07.2026. Reiht sich ein in den
   **identischen Befund derselben Nacht in den KBs `energie` und `planungsgrundlagen`** (jeweils
   heutiger Health-Check) — drittes von drei Mac-Mini-KBs mit demselben Muster, staerkt den
   Verdacht auf eine gemeinsame Ursache im Kuratierungs-/Trainings-Loop (Modell- oder
   Prompt-Konfiguration), nicht auf Einzelfehler.
2. **6 Sonderzeichen-/Umlaut-Slugs sind zwischen `THEMEN.md` und `INDEX.md` nur per Mensch, nicht
   automatisiert auffindbar** (Huber_Waser_Mühlebach, Romano_Giulio, Šuchov_Vladimir, Tusquet_Oscar,
   _Japanische_Architektur, sowie die Systematik generell): `THEMEN.md` verlinkt mit dem
   ASCII-Slug aus dem Katalog-Dateinamen (`[[Huber_Waser_Mu_hlebach]]`), `INDEX.md` fuehrt den
   Menschen-lesbaren Namen mit echtem Umlaut (`**Huber Waser Mühlebach**`). Alle 6 Faelle wurden
   verifiziert: der Katalogeintrag existiert, nichts ist inhaltlich verloren — aber ein
   automatischer Backlink-Checker meldet hier faelschlich Bruch. Dazu kommen 38 rein
   formale Unterstrich-vs-Leerzeichen-Abweichungen (`[[1_Selection]]` vs. `**1 Selection**`) —
   systemisch, keine Einzelfaelle, aber bisher nirgends dokumentiert.
3. **`wiki/QUESTIONS.md` ist seit dem Kuratierungs-Abschluss 03.07.2026 (18 Tage) inhaltlich
   eingefroren** — passend zum bekannten und bereits achtfach eskalierten Befund, dass der
   Scan-Batch seit 13.07. ergebnislos laeuft (kein neuer Quellstoff seit 02.07., HdM-Ordner
   07.04.2026). Keine neue Information, aber die Wiki-Schicht bestaetigt den Katalog-Befund von
   der Kuratierungsseite.

## Details je Audit

### B. Backlinks/Orphans
- Skriptgestuetzter Abgleich: 697 eindeutige `[[slug]]`-Backlinks in `THEMEN.md` gegen 849
  Bold-Eintraege in `INDEX.md`. 43 zunaechst ohne exakten Treffer; davon 38 durch
  Unterstrich-vs-Leerzeichen-Normalisierung aufgeloest (`[[Meili_Partner]]` == `**Meili Partner**`),
  5 durch Sonderzeichen-Transliteration (Umlaut/Akzent/Leerzeichen im Quellslug) — alle 5 gegen
  `catalog/<slug>.json` verifiziert, Katalogdatei existiert in jedem Fall. **0 tatsaechlich toter
  Link.** Empfehlung: bei kuenftigen Kuratierungs-Chargen denselben Slug-Wortlaut in `THEMEN.md`
  und `INDEX.md` verwenden (INDEX konsequent mit Unterstrich statt Leerzeichen), das erspart die
  naechste manuelle Nachpruefung.
- Orphans (Katalogeintraege ohne INDEX-Zeile) nicht separat geprueft (Budget) — INDEX.md meldet
  selbst 849/853 kuratiert, 4 Kollisions-Faelle bekannt und dokumentiert (Christ Gantenbein,
  Enzmann Fischer, Miller Maranta, gigon guyer).

### E. Veraltung
- `wiki/QUESTIONS.md`, `wiki/THEMEN.md`, `wiki/INDEX.md`: Stand durchgehend 02.–03.07.2026, seither
  keine Aenderung trotz taeglicher Nacht-Batches — konsistent, weil der Batch seit 02.07. keinen
  neuen Quellstoff findet (Katalog-Ebene). Kein Handlungsbedarf, reine Bestaetigung.

### F. Schreibregeln
- `CLAUDE.md`, `PROGRAMM.md`, `CHANGELOG.md`: sauber (echte Umlaute, Schweizer Hochdeutsch).
- `wiki/INDEX.md`: **32 Treffer** auf das Ersatzschreibungs-Suchmuster (fuer/ueber/moeglich/
  natuerlich/zusaetzlich/…) — Stichwortsuche, kein Vollscan; echte Zahl vermutlich hoeher.
  `wiki/THEMEN.md`: 5 Treffer, `wiki/QUESTIONS.md`: 15 Treffer. Gleiches Muster wie in `energie`
  (1'698 Treffer) und `planungsgrundlagen` (39/48 Artikel) diese Nacht — nicht selbst korrigiert
  (Phase 2 nur interaktiv).

## Prozess-Status (unveraendert zum bekannten Stand)
- `state/processed.json`: 853/853, Stand-Katalog 02.07.2026, seit 02.07. kein neuer Quellordner
  (juengste Aenderung `HdM`, 07.04.2026). Nacht-Batch laeuft weiterhin taeglich ergebnislos
  (19. Wiederholung seit 13.07., siehe `CHANGELOG.md` 21.07.) — **bereits im Fristen-Register
  eskaliert** (`logbuch/fristen.md`, Zeile «Entscheid Raphael: Scheduled Task synobsis-batch-nacht
  stilllegen»), hier nur bestaetigt, nicht erneut als Aktion aufgefuehrt.
- Stufe 2 (Embeddings) aktiv und funktionsfaehig (`vectors.npz` 853 × 768, Stichprobe erfolgreich).

## Empfehlung
Kein inhaltliches Wissensproblem. Zwei kleine, selbst umsetzbare Formkorrekturen fuer eine
kuenftige interaktive Phase-2-Session: (1) Umlaut-Ersatzschreibungen in `wiki/INDEX.md`
korrigieren (Skill `korrektur`), (2) Slug-Schreibweise zwischen `THEMEN.md` und `INDEX.md`
vereinheitlichen (Unterstrich statt Leerzeichen in INDEX). Die Kernfrage bleibt die bereits
mehrfach eskalierte Stilllegung von `synobsis-batch-nacht` — Entscheid Raphael, nicht Teil
dieses Health-Checks.
