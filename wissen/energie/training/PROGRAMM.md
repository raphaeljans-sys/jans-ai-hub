# Trainingsprogramm — TAEGLICHER Lern-Loop der KB Energie

Strategischer Loop: macht JANS energetisch fuehrend. Jeden Tag wird der Ordner **PL - 04 Energie**
weiter erschlossen — PDFs werden in lesbare Destillate ueberfuehrt und zu belegten
**Bauherren-Antworten** verdichtet. Scheduled Task `energie-training` (taeglich).

## Takt & Umfang (verbindlich)
- **Frequenz:** **taeglich** (jeden Morgen). Manuell: Skill `planungsgrundlagen` → Energie → Training.
- **Umfang pro Lauf — zwei feste Bloecke:**
  1. **TRANSFER (Pflicht):** **3–5 PDFs** aus `pdf-inventar.md` (Prioritaet 1 zuerst) in
     `destillate/` ueberfuehren — schnell lesbare .md mit Quelle + Datenstand im Frontmatter.
  2. **VERDICHTUNG (Pflicht):** aus den neuen Destillaten **mindestens 1 BAUHERREN-FAQ-Antwort**
     neu schreiben oder schaerfen, und den passenden `wiki/`-Themenartikel wachsen lassen.
- **Web nur** fuer Aktualisierungen (Grenzwerte, MuKEn-ZH-Stand, Foerderung) mit Datenstand.

## Ablauf eines Laufs (immer gleich)
1. **Stand lesen:** `training/pdf-inventar.md` (was offen, Prioritaet 1 zuerst),
   `training/curriculum.md`, `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **TRANSFER:** 3–5 offene PDFs waehlen. Pro PDF:
   - Lesen via Read mit `pages:` (max 20 S./Request; grosse Werke ueber mehrere Laeufe).
   - Destillat `destillate/<slug>.md` schreiben: Frontmatter (quelle, herausgeber, ausgabe,
     gelesen, **datenstand**, status, last_updated) + Kurzfassung: «Das Wichtigste in 1 Satz»,
     Kernbegriffe/-formeln, Tabellen, **Bauherren-Transfer**, offene Punkte.
   - Quelle treu wiedergeben, nichts erfinden; eigene Einordnung markieren.
   - `destillate/INDEX.md` + `pdf-inventar.md` (Status [x] + Datum) nachfuehren.
3. **VERDICHTUNG:** BAUHERREN-FAQ-Antwort(en) + Themenartikel in `wiki/` aktualisieren, mit
   `[[backlinks]]` auf die Destillate, Status heben (speculative→emerging→established), Datum.
4. **Register:** `raw/_INGESTED.md`, `curriculum.md`, `wiki/QUESTIONS.md`, `wiki/INDEX.md`.
5. **Output:** `outputs/<JJJJ-MM-TT>_energie-runN.md` — welche PDFs destilliert, welche FAQ
   gewachsen, was offen, was als naechstes (Prioritaet morgen).
6. **CHANGELOG** ergaenzen (neueste zuoberst).
7. **Sichern:** NAS-Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

## Reihenfolge der Erschliessung (Prioritaet)
1. **Fachgrundlagen** mit hoechstem Bauherren-Nutzen: U-Wert/Bauteilekatalog, Heizwaermebedarf
   SIA 380/1, Minergie-Wissen, ZH-Energienachweis (EN-ZH), Daemmstoffe.
2. **Solar/PV:** Typen, Eignung/Ertrag, Brandschutz (Verweis `brandschutz`), Beispiel-Reports.
3. **Aktualitaet/Recht:** MuKEn-Umsetzung ZH, Foerderprogramme, Netto-Null/Klima, graue Energie.
4. **Datenblaetter/Beispiele** zuletzt (geringe Uebertragbarkeit) — kurz halten.

## Leitplanken (Qualitaet)
- **Nie erfinden** (λ/U-Wert, Grenzwert, Foerderbetrag) — Unsicheres bleibt `speculative` + Vermerk.
- **Datenstand zwingend** (Jahr/Normversion); Energierecht/Foerderung altern schnell → ⚠ bei >18 Mt.
- **Destillat-Treue:** Quelle korrekt, eigene Einordnung als «Bauherren-Transfer» markiert.
- **Kompoundieren:** jeder Tag baut auf den vorigen; Destillate/FAQ wachsen, nicht duplizieren.
- **Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch.**

## Fortschritts-Tracker
Konvertierungsstand in `training/pdf-inventar.md`; Themen-/FAQ-Stand in `wiki/INDEX.md` +
`wiki/BAUHERREN-FAQ.md`; offene Fragen in `wiki/QUESTIONS.md`; letzter Lauf in `outputs/`.

## Verifikations-Stufe (PFLICHT ab 12.07.2026, Rule auto-verbesserungen 260712)

Jede Status-Hebung auf `established` durchlaeuft VOR der Hebung eine unabhaengige
Widerlegungs-Pruefung (Verifier-Prinzip der Spec-Methode, automatisiert):

- **Adversarial Verify:** 2–3 unabhaengige Pruef-Agenten (oder ein Volltextabgleich an der
  amtlichen/Original-Quelle, Modell D) versuchen die Aussage zu WIDERLEGEN — jede Fundstelle,
  Ziffer, Kennwert wird an der Quelle gegengeprueft. Nur was die Pruefung besteht, wird
  `established`; Beanstandungen werden korrigiert oder auf `speculative` gesenkt.
- **Workflow-Orchestrierung autorisiert:** Multi-Agent-Workflows (paralleles Destillieren +
  Verifikations-Pipeline) sind fuer diesen Loop von Raphael freigegeben (12.07.2026).
  Mechanische Extraktion darf auf guenstigeren Modellen laufen; die Verifikations-/Richter-
  Stufe laeuft auf dem Hauptmodell.
- **Protokoll:** Verdikte (bestanden/beanstandet je Artikel/Destillat) gehoeren in den
  Lauf-Report unter `outputs/` und ins CHANGELOG.

## Intensivphase (ab 12.07.2026, bis auf Widerruf)

Der Loop laeuft intensiviert (auch tagsueber und am Wochenende, Rule 260712), bis ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken). Dann Ruecktaktung ins Nachtfenster VORSCHLAGEN (nicht stillschweigend umsetzen).
