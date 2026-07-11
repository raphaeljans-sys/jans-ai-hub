# Normen-Harness (Baunormen als schnelles Hub-Wissen) — Spec

- **Datum:** 11.07.2026 · **Status:** Schlüsselentscheide bestätigt, Scope 1 gebaut

## Ziel (1 Satz)
Die komplette Normen-Bibliothek auf SharePoint (SIA/VKF/DIN/VSS/RAL, Inventar 528 Dateien)
als schnell verfügbares, belegtes Wissen in den JANS AI Hub integrieren — jede Norm-Antwort
mit Fundstelle (Norm, Ausgabe, Ziffer), nie aus dem Gedächtnis.

## Abgrenzung (NICHT dazu)
- Keine Kopie der PDFs auf das NAS (SharePoint bleibt einzige Quelle).
- Keine Norm-Beschaffung (SIA-Shop) ohne Entscheid Raphael.
- Keine wörtlichen Norm-Passagen in Kundendokumente (Urheberrecht) — nur Zitate mit Quelle.
- Sprachvarianten (e/f/i) und Altbestand (xalt) werden nicht destilliert.

## Schlüsselentscheide (bestätigt Raphael 11.07.2026)
1. **Scope:** ALLE Familien (SIA, VKF, DIN, VSS, RAL, Lignum sobald befüllt).
2. **Quelle:** SharePoint `PL - 02_Recht_Norm/02_Normen/` bleibt Quelle; KB hält nur
   Register + Destillate mit Pfad-Verweis.
3. **Takt:** Nächtlicher Loop ab 22:00 (Scheduled Task `normen-training-nacht`, täglich),
   jede Nacht 8–12 Destillate, bis das Inventar abgearbeitet ist; danach Task beenden.
4. **Zugriff:** Skill `normen` (Router) + Rule `normen-referenz` (verpflichtet alle
   Fach-Skills auf die KB-Fundstellen).

## Bewertungskriterien
- Norm-Frage → Antwort mit Fundstelle in unter einer Minute (Register → Destillat),
  ohne 110 PDFs zu durchsuchen (Progressive Disclosure / Router-Pattern).
- Gültigkeits-Sicherheit: keine Antwort auf Basis einer ersetzten Ausgabe ohne Vermerk
  (Register aus `ersetzte_normen.pdf` + Gesamtverzeichnis).
- Compounding: jede Anfrage an eine noch nicht destillierte Norm erzeugt das Destillat.
- Fach-Skills (ausschreibung/werkvertrag/honorarberechnung-sia102/kostenschaetzung/
  brandschutz/…) zitieren nur noch mit Fundstelle.

## Plan (enge Scopes + Checkpoints)
- **Scope 1 (11.07.2026, gebaut):** KB `wissen/normen/` (Schema, Register-Gerüst,
  Inventar 528 Dateien mit Prioritäten), Skill `normen`, Rule `normen-referenz`
  (+ CLAUDE.md-Verankerung), Nacht-Loop-Task. → Checkpoint: erster Nacht-Lauf
  (Sonderprogramm Gültigkeits-Register) sichten.
- **Scope 2 (Nächte 1–7):** P1-Kernnormen (SIA 102/103/105/111/112/118/380/416/451 +
  VKF Norm/Richtlinien) destilliert → Stichproben-Review Raphael.
- **Scope 3 (laufend):** P2/P3 bis «INVENTAR KOMPLETT»; danach Task beenden,
  Pflege über Compounding + `wissenscheck` (monatlich).

## Verifikation (zweite Instanz + externes Signal)
- Destillat-Treue: Stichprobe gegen Original-PDF (Fundstellen-Check).
- `wissenscheck` monatlich über die KB (unbelegte Claims, veraltete Artikel).
- TCC-Risiko Nachtlauf: Zugriffs-Check + M365-Fallback im Task-Prompt; Fehler-Report
  statt Raten (bekannte CloudStorage-Blockade bei headless-Läufen).

## Faktenbasis
- Inventar-Scan 11.07.2026: SIA 466 Dateien (110 de-Kernbestand in `alle/`), VKF 49,
  DIN 71, VSS 14, RAL 1, Lignum 0; `ersetzte_normen.pdf` + Gesamtverzeichnis als
  Gültigkeits-Quelle.
- Methode: Anthropic «Complete Guide to Building Skills» (Progressive Disclosure,
  references/ nachladen) + Simon-Scrapes-Router-Pattern (SKILL.md = Router,
  references READ / workflows FOLLOW / scripts EXECUTE).
- Hub-Vorbilder: KB `energie` (Destillate-Layer + Tages-Loop), `baurecht-buch`-Harness,
  Rule `bkp-2017-referenz` (Verbindlichkeits-Muster).
