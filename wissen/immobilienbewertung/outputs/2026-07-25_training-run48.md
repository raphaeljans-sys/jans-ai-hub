# Training-Run 48 — Immobilienbewertung (2026-07-25)

## Ausgangslage

KB seit Run 20 (13.07.2026) im Verifikations-/Beobachtungsmodus: Wuest-Kurs (W0-W10) +
alle Ergaenzungsquellen (E1-E10) + alle auto-schliessbaren T-Aufgaben eingearbeitet. Run 36
(17.07.) hat den letzten selbststaendig schliessbaren Restposten (D6 Luzern) geschlossen.
Seither produziert nahezu jeder Lauf einen Delta-Null-Befund; dies ist der sechzehnte in
Folge (nach Run 47, 2026-07-25).

## Durchgefuehrte Pruefungen

1. **Kollisionsschutz (Rule `auto-verbesserungen` 260724):** `ps aux` nach `claude -p`-
   Prozessen mit identischem `immobewertung-training`-Prompt durchsucht. Ein Treffer (PID
   68316) — geprueft und als der eigene Elternprozess dieser Session identifiziert (Start-
   zeit/CMD identisch mit dem laufenden Aufruf), keine Zweitinstanz. Kein Ruecktritt noetig.
2. **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`) direkt gelistet: 6
   Faelle unveraendert (Ebmatingen 3932, Langnau 3338, Niederhasli 2025, Wald Haselstudstrasse,
   Thalwil 9568, Wangen 8855 Bahnhofstrasse 27) — **kein neuer JANS-Bewertungsfall**.
3. **Marktpuls (E7):** bewusst NICHT per Web geprueft — naechster amtlicher Referenzzins-Wert
   erst 01.09.2026 (Drossel-Rule 260714, Wochenlimit schonen), kein Grenznutzen seit Run 47
   (gleicher Tag).
4. **Vier offene Pendenzen gegengeprueft** (Stand `logbuch/fristen.md` + `wiki/wissensluecken.md`):
   - **Loop-Ruecktaktung** (Entscheid-Pendenz an Raphael seit 19.07., `logbuch/fristen.md`) —
     unveraendert offen.
   - **Oberrieden-Hoehenkorrektur** (Rule `auto-verbesserungen` 260624, amtlich 8.5 m statt
     9.0 m traufseitig) — unveraendert offen, `logbuch/fristen.md` 17.07.
   - **T-Regelgeschoss** (HNF/GF-Faktor 0.70 vs. 0.75, Wissens-Chef Cross-KB-Run 15,
     Fachentscheid Raphael) — unveraendert offen.
   - **T-Umlaut** (KB-weite ae/oe/ue-Ersatzschreibung, Health-Check 23.07., dedizierter
     wissenscheck-Phase-2-Lauf noetig) — unveraendert offen.
   Alle vier bereits eskaliert (Meldekanal-Lektion Run 36/38) — **nicht erneut im Report
   gemeldet**, nur gegengeprueft.

## Ergebnis

**Delta-Null.** Kein neuer Ingest, keine Artikelaenderung, kein neuer Bewertungsfall, keine
neue Luecke, kein Eskalations-Delta. Die KB bleibt saturiert; ohne neues Rohmaterial
(D1/D2/D5/D6-Rest/D7/D9/D10), einen neuen JANS-Bewertungsfall oder den 01.09.2026-Stichtag
gibt es fuer den Lern-Loop derzeit keine selbststaendig schliessbare Aufgabe.

## Naechster Schritt

Unveraendert: Ruecktaktung ins Nachtfenster oder auf ereignisgesteuerten Takt bleibt
Raphaels Entscheid (`logbuch/fristen.md` 19.07.). Naechstes erwartetes Signal: amtlicher
Referenzzins-/Durchschnittszinssatz-Wert 01.09.2026, oder ein neuer JANS-Bewertungsfall im
Ordner `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`.
