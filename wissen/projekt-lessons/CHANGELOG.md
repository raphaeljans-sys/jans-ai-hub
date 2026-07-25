# CHANGELOG — Wissensbasis Projekt-Lessons

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.
Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB, ERST-PRUEFUNG dieser KB)
- **[korrektur] KB-eigene Schreibregel war im einzigen Artikel nicht umgesetzt.** `CLAUDE.md` verlangt, jede Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills zu taggen — genau der Mechanismus, ueber den Erkenntnisse in die Skills zurueckfliessen. `wiki/kispi-lbw-rohdichte-800.md` fuehrte `links: []`, keine SIA-Phase, keinen Skill-Tag; der Health-Check vom 25.07. hat das Frontmatter dennoch als «korrekt» abgenommen. → Frontmatter nachgezogen (Gewerk BRA/ARC, BKP 271.10/271.13, SIA-Phase 5, Skills brandschutz/unternehmerkontrolle/ausschreibung, links auf beide Cross-KB-Ziele).
- **[verlinkung, Erst-Verlinkung] Lesson und `auflagebereinigung` dokumentierten denselben Vorgang, ohne voneinander zu wissen** — die Auflage **II.19** «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau)» am selben Projekt 2619 KISPI. → bidirektional verlinkt mit Rollentrennung: `auflagebereinigung` fuehrt Auflagen-Ziffer/Amt/Frist, `projekt-lessons` die Beweiskette der Material-Substanz.
- **[kennzeichnung] Generische VKF-/Produktwerte im Fazit** (Typ-A-GKB 776 kg/m3 / VKF 18151, Duraline Vario 1'003 / VKF 22636) stehen identisch im fuehrenden `wissen/normen/wiki/en-520-gipsplattentypen.md`. Nicht geloescht (sie tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet, damit eine spaetere Korrektur in `normen` nicht an dieser Lesson vorbeilaeuft.
- **[matrix]** Neue Zeile im Koordinations-Register: `projekt-lessons` fuehrt die **Beweiskette des Einzelfalls**, nie generische Kennwerte oder Normfundstellen.
- **[offen]** Pruefung F des Health-Checks um die Tagging-Regel erweitern (`links: []` bei belegten Cross-KB-Bezuegen ist kein korrektes Frontmatter) — Aenderung am Pruefprogramm, gehoert nicht in einen Cross-Lauf.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F1·G1
  — erster Inhalt seit Anlage (kispi-lbw-rohdichte-800, established), sauber belegt.
  Funde: State-Files (INDEX-Statistik, QUESTIONS-Kopfzeile) waren seit dem Artikel-Neuzugang
  veraltet, hier nachgefuehrt; Artikelstruktur weicht als "Verifikation" statt "Fehlerfall"
  leicht vom CLAUDE.md-Schema ab (Beobachtung, kein Fix bei n=1). Bootstrap-Pendenz aus
  logbuch/fristen.md bleibt offen. Report: outputs/2026-07-25_health-check.md
- [fix] `wiki/INDEX.md` Statistik-Fusszeile nachgefuehrt (1 Artikel statt 0, Stand 25.07.).
- [fix] `wiki/QUESTIONS.md` Kopfzeile "Offene Wissenslücken" nachgefuehrt (nicht mehr
  "frisch angelegt, kein Material"), Schema-Frage aus Health-Check ergaenzt.

## 2026-07-23
- [neu] Erster Lesson-Artikel `kispi-lbw-rohdichte-800` angelegt (Herkunftsklärung der
  Ziegel-Vorgabe Rohdichte 800 kg/m³, Beweiskette über Truninger-DS3: Bestands-LV 271.13
  Typ DFIR → EN 520 Typ D → Materialdeklaration Duraline/Habito) und im INDEX unter
  Bauleitung/Ausführung registriert. Report: outputs/2026-07-23_kispi-rohdichte-800-herkunft.md.
  Norm-Grundlage als Schwester-Artikel in wissen/normen (en-520-gipsplattentypen).

## 2026-07-22
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F0·G0 — Delta-Null seit 01.07., KB weiterhin leer (0 Artikel, raw/ leer). Neu: konkrete Bootstrap-Quellenhinweise (Logbuch-Faelle KISPI Los 273.35 Roethlisberger, SBB-Naeherbaurecht Thalwil 2414) als Pendenz in logbuch/fristen.md gemeldet, da Befund zweimal folgenlos blieb. Report: outputs/2026-07-22_health-check.md

## 2026-07-01
- [health-check] Wissens-Health-Check Phase 1: A0·B0·C0·D0·E0·F0·G0 — KB weiterhin leer (0 Artikel), kerngesund, Handlungsbedarf nur Befüllung (Material in raw/). Report: outputs/2026-07-01_health-check.md

## 2026-06-02
- [setup] KB Projekt-Lessons angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files). Noch leer — bereit zur Befüllung.
