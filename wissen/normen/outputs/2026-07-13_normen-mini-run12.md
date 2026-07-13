# Normen-Mini-Run 12 (Mac Mini, DIN/VSS/RAL) — 13.07.2026

## Ausgangslage

Vor diesem Lauf waren alle P1-P3-Positionen im DIN-/VSS-/RAL-Teil des `norm-inventar.md`
mit `[x]` abgehakt (Basisinventar seit Run 5 vollständig). Ein Statuscheck der Frontmatter
zeigte jedoch, dass sieben Destillate noch nicht auf `established` standen bzw. als
Teil-Destillat mit offenen Seitenbereichen geführt wurden:

- `din-1946-6-2009.md` — Teil-Destillat, nur ca. 31 von 125 Seiten gelesen.
- `din-4102-1-1998.md` — Teil-Destillat, Anhang B (S. 21-25) ungelesen.
- `din-abkuerzungsverzeichnis-2010.md` — Status `destilliert`, kein Verifikationsvermerk.
- `din-planungsgrundlagen-hoai-vorschriften-2004.md` — Status `destilliert (vollständig)`,
  kein Verifikationsvermerk.
- `din-en-1627-2011.md` — Teil-Destillat, nur 4/44 Seiten im Bestand (physische Lücke,
  nicht behebbar).
- `din-inhaltsverzeichnis-normensammlung-2012.md` — Register, keine Norm im engeren Sinn.
- `vss-640291a-2005-parkieren-anordnung-geometrie.md` — bewusst historisch/ersetzt geführt.

Dieser Lauf hat sich auf die zwei aktionablen Lücken (DIN 4102-1 Anhang B, DIN 1946-6
Restlektüre) konzentriert, da die übrigen entweder physisch nicht behebbar oder von Natur
aus geringes Risiko sind (Glossar/Register).

## Durchgeführt

1. **DIN 4102-1:1998 (Brandverhalten von Baustoffen, Teil 1)** — Anhang B (S. 21-25,
   Prüfverfahren Rauchentwicklung bei Flammenbeanspruchung: Messkammer, Propangasbrenner,
   Justierung, Durchführung, Auswertung, Prüfbericht) direkt aus dem Original nachgelesen
   und ins Destillat integriert. Damit vollständig S.1-28/28, Status `established`.

2. **DIN 1946-6:2009 (Raumlufttechnik — Lüftung von Wohnungen, Healthcare-RLT-relevant)** —
   6 parallele Hintergrund-Agenten haben die restlichen ca. 94 Seiten (S. 21-26, 38-58,
   59-68, 69-90, 91-110, 111-125) gelesen und destilliert. Ich habe die sechs Rückgaben in
   der richtigen Reihenfolge ins bestehende Destillat integriert (§5.3-5.4 Systemauswahl-
   Detailanforderungen, §7 freie Lüftung/Komponentenauslegung, §8 ventilatorgestützte
   Lüftung inkl. Feuerstätten-Sicherheitseinrichtungen [brandschutzrelevant], §9 Ausführungs-
   hinweise, §10 Dokumentation/Kennzeichnung, §11 Inbetriebnahme/Übergabe, §12 Instandhaltung,
   Anhänge A-J: Systemdarstellung, das normative Lüftungskonzept-Ablaufschema Anhang B,
   Übergabe-Formblätter Anhang C/D, Instandhaltung Anhang E/F, Gleichwertigkeitsnachweis
   Anhang G, Winddaten Anhang H, Infiltrationsdetails Anhang I, Beispiel-Formblatt Anhang J,
   Literaturverzeichnis). Jetzt vollständig S.1-125/125, Status `established`.
   - **Befund:** zwei der sechs Agenten (S.69-90 und S.91-110) meldeten unabhängig
     voneinander je eine „Tabelle D.4" mit unterschiedlichem Inhalt — vermutlich eine über
     den Seitenumbruch 90/91 laufende Tabelle, die einer der Agenten falsch zugeordnet hat.
     Als offener Punkt in `wiki/QUESTIONS.md` und im Destillat vermerkt; im nächsten Lauf
     S.89-92 direkt (nicht parallel) nachlesen und bereinigen.

3. **din-abkuerzungsverzeichnis-2010.md** und **din-planungsgrundlagen-hoai-vorschriften-
   2004.md** auf `established` gehoben (reine Referenzwerke ohne Bemessungs-/Kennwert-
   Charakter, bereits vollständig gelesen, geringes Verifikationsrisiko).

## Nicht bearbeitet (bewusst)

- `din-en-1627-2011.md` bleibt Teil-Destillat — nur 4/44 Seiten physisch im SharePoint-
  Bestand, keine weitere Beschaffung ohne Rücksprache möglich.
- `vss-640291a-2005` bleibt bewusst als historisch/ersetzt markiert (Nachfolgenorm
  40 291:2021 bereits destilliert).
- Keine neue Retro-Verifikations-Runde für bereits `established` markierte Alt-Bestände
  (Beanstandungsquote war in Run 10/11 bereits hoch verarbeitet) — stattdessen die zwei
  einzigen verbliebenen echten Lese-Lücken geschlossen.

## Fazit

Das DIN-/VSS-/RAL-Basisinventar (P1-P3) ist jetzt vollständig `established` (bis auf die
physisch unvollständige din-en-1627-2011 und den bewusst historisch geführten vss-640291a).
Der Fokus verschiebt sich damit endgültig auf die Deepening-Stufen gemäss `training/
PROGRAMM.md`: (b) Retro-Verifikation der grossen, gerade neu ergänzten Abschnitte (v.a.
din-1946-6-2009, jetzt 125 Seiten, Healthcare-RLT-relevant, noch nie adversarial geprüft),
(c) Q&A-Selbstbefragung für die DIN/VSS-P1-Kernnormen, (d) Querschnitts-Synthesen für
Fach-Skills (brandschutz, planungsgrundlagen/energie-berater).

## Nächster Lauf (Empfehlung)

1. Tabelle-D.4-Unstimmigkeit in din-1946-6-2009 klären (S.89-92 direkt nachlesen).
2. Adversarialer Volltextabgleich für din-1946-6-2009 (grösstes DIN-Destillat, Healthcare-
   RLT, noch unverifiziert) — mehrere Agenten je Abschnitt, analog Run 7-11-Muster.
3. Danach Beginn Q&A-Selbstbefragung (Stufe c) für die DIN-P1-Kernnormen (276, 277,
   1946-4/-6, 18040-1/-2) und VSS-640-Reihe, sofern Beanstandungsquote weiter sinkt.
