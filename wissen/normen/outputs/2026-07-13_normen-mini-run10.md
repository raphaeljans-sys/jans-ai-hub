# Normen-Training Mini (Mac Mini) — Run 10, 13.07.2026

## Auftrag
Fortsetzung Deepening-Stufe (b) Retro-Verifikation gemäss Plan aus Run 9: die verbleibenden
DIN-5034-Reihe (Tageslicht) und DIN-1053-Reihe (Mauerwerk) adversarial gegen die Original-PDFs
verifizieren.

## Ablauf
1. NAS-Mount + SharePoint-Zugriff geprüft (Test-PDF DIN 5034-1 gelesen) — beide erreichbar.
2. `git status` zeigte unstaged Änderungen an `station-status/*.md` (fremder Prozess) —
   gestasht, `git pull` bestätigte "up to date" (2 lokale Commits voraus), Stash zurückgeholt.
3. **Bookkeeping-Lücke entdeckt und behoben:** 5 Destillate (din-276-1-2008, din-5034-3-2007,
   din-en-12101-2-2003, din-en-12207-2000, din-1045-2-2008) trugen im Frontmatter bereits
   `status: "established"` aus Commits zwischen Run 9 und diesem Lauf (0a8b8214, d5fe37da,
   996ff30d, 15463d70, 9b989ec4 — vermutlich von einem parallel laufenden Prozess/Session),
   aber `destillate/INDEX.md` war nicht nachgezogen und zeigte noch "destilliert". Alle 5
   INDEX.md-Zeilen korrigiert.
4. `norm-inventar.md` bestätigt: DIN/VSS/RAL-Basisinventar weiterhin 0 offene Positionen
   (komplett seit Run 5) — reine Deepening-Nacharbeit, keine PDF-Erstdestillate.
5. **8 Retro-Verifikationen parallel durchgeführt** (je 1 Agent pro Destillat, Volltextabgleich
   Modell D, Ziel Widerlegung): din-5034-1-1999, din-5034-2-1985, din-5034-4-1994,
   din-5034-6-1995, din-1053-1-1996, din-1053-2-1996, din-1053-3-1990, din-1053-100-2007.

## Ergebnis: 8 von 8 Destillate beanstandet und korrigiert (100%)

| Destillat | Verdikt | Kernbefund |
|---|---|---|
| din-5034-1-1999 | beanstandet-korrigiert | Dm/Dmin-Grenzwerte falsch (≥ statt >), komplette zweite Regelspur Ziff. 4.2.3 (wohnraumähnliche Arbeitsräume, Healthcare-relevant) fehlte |
| din-5034-2-1985 | beanstandet-korrigiert | Sonnenazimut-Fundstelle falsch zugeordnet, Gl. 17 fehlte komplett, mehrere Seitenbereiche falsch |
| din-5034-4-1994 | beanstandet-korrigiert | **Sachlicher Formelfehler:** k1h/k1v (horizontale/vertikale Verbauung) — Original verlangt für beide Richtungen √0,7, Destillat behauptete horizontal fälschlich direkt 0,7 |
| din-5034-6-1995 | beanstandet-korrigiert | Blendschutz-/Wärmestrahlungs-Passage (Ziff. 4) komplett gefehlt, inkl. Konstruktionsregel bF ≤ h/2 |
| din-1053-1-1996 | beanstandet-korrigiert | Tabelle 12 Mindestdruckfestigkeit: 3 statt 5 Kategorien dargestellt, mittlere Kategorie (50 N/mm²) fehlte |
| din-1053-2-1996 | beanstandet-korrigiert | **Massive Lücken:** 7 von 8 Ziffern-Abschnitten komplett fehlend, Tabelle 1 nur 2 von 20 Festigkeitsklassen |
| din-1053-3-1990 | beanstandet-korrigiert | Falsche Ziffer-Zuordnung, Ziff. 6.4 fehlte, Tabellen 1/3 fehlerhaft, Normen-Liste unvollständig |
| din-1053-100-2007 | beanstandet-korrigiert | Verfahren Zug-/Biegezug- und Schubbeanspruchung sowie aussergewöhnliche Einwirkung komplett gefehlt |

Alle Korrekturen wurden direkt im Fliesstext integriert (nicht als angehängter
Verifikations-Hinweis — Lehre aus Run 8/9), Frontmatter auf `status: "established"` und
`last_updated: "2026-07-13"` gesetzt.

## Einordnung

Die Beanstandungsquote bleibt über die Mac-Mini-Retro-Runs 7–10 durchgehend hoch (Run 7: 50%,
Run 8: 100%, Run 10: 100%). Das bestätigt die Verifikations-Pflicht (Rule 260712) als
substanziell wertstiftend, nicht formalistisch — insbesondere der din-5034-4-Formelfehler
(k1h/k1v) und die din-1053-2-Lücken hätten bei praktischer Anwendung im Fach-Skill
(`baurecht`/`machbarkeit`/Fassadenplanung) zu falschen Bemessungen geführt.

## Nachgeführte Register
- `destillate/INDEX.md` — 8 neue + 5 nachgezogene Statuszeilen
- `training/norm-inventar.md` — 8 Bemerkungsfelder ergänzt
- `wiki/QUESTIONS.md` — Run-10-Eintrag mit Kernbefunden
- `CHANGELOG.md` — Eintrag oben angefügt

## Plan für den nächsten Lauf
1. Retro-Verifikation VSS-Altbestand (vss-700.5-1987, vss-722.15-1983,
   vss-merkblatt-veloabstellplaetze-1998) und restliche unverifizierte DIN-Einzelnormen
   (din-918/919-1-1991, din-1164-10-2004, din-1356-1/-6, din-1946-7-2009, din-18560-2-2009,
   din-107-1974, din-272-1986, din-1072-beiblatt1-1988, din-1076-1999, din-1249-11-1986,
   din-68119-1996, din-4426-2001).
2. Sobald die Beanstandungsquote über mehrere Folgen stabil sinkt (deutlich unter 50%),
   Übergang zu Stufe (c) Q&A-Selbstbefragung für die DIN/VSS-Kernnormen.
3. Weiterhin offen: DIN EN 1627:2011 (nur Teilbestand), diverse Duplikat-Merges (VKF-Seite,
   MacBook-Zuständigkeit).
