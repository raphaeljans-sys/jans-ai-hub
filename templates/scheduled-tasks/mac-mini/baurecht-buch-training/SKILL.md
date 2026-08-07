---
name: baurecht-buch-training
description: DEAKTIVIERT auf Mac Mini (Stations-Split 12.07.2026, Registry nachgezogen 27.07.2026) — laeuft exklusiv auf MacBook Pro.
---

DIESER TASK IST AUF DEM MAC MINI DEAKTIVIERT (Stations-Split 12.07.2026).
Baurecht/twin/immobilienbewertung/spec + SIA/VKF laufen exklusiv auf dem MacBook Pro.
Falls dieser Task trotzdem feuert: SOFORT ABBRECHEN, nichts ausfuehren.

--- ORIGINAL-PROMPT (inaktiv) ---

Fuehre einen TRANSFER-Lauf des Baurecht-Buch-Trainings aus (Standardwerk Fritzsche/Boesch/Wipf/Kunz, «Zuercher Planungs- und Baurecht», Band 1+2, 6. Aufl. 2019). Voraussetzung: NAS gemountet (/Volumes/daten). Wenn /Volumes/daten fehlt: abbrechen und melden.

ZIEL DIESER PHASE — FORCIERUNG: Raphael will alle 23 Kapitel zeitnah als md-Kontext. Bis das Werk vollstaendig distilliert ist, pro Lauf **2-3 Kapitelteile** (je ~10-20 Doppelseiten) statt nur einem. Wenn alle Kapitel + Restschulden erledigt sind, diesen Task auf woechentlich heruntertakten (update_scheduled_task cronExpression '0 7 * * 1') und in Phase 3 (Erhaltung/Drills) wechseln.

METHODE (verbindlich, genau so): Lies zuerst
- /Volumes/daten/jans-ai-hub/wissen/baurecht/training/PROGRAMM.md (Ablauf, Trainingsmodelle A-E, Tracker)
- /Volumes/daten/jans-ai-hub/wissen/baurecht/training/curriculum.md (naechste offene Kapitel + Shot-Bereiche)
- /Volumes/daten/jans-ai-hub/wissen/baurecht/buecher/INDEX.md (Abdeckungs-Matrix)
- /Volumes/daten/jans-ai-hub/wissen/baurecht/buecher/seiten-inventar.md (offene Shots, Status)
- /Volumes/daten/jans-ai-hub/wissen/baurecht/buecher/CLAUDE.md (Destillat-Format)

PRIORITAET der noch offenen Teile (nach Bueroalltagsnutzen): zuerst die noch offenen Band-1-Kapitel (Kap. 1 Grundlagen, 2 Raumplanung/Nutzungsplanung, 3 Erschliessung/Landumlegung, 5 Planung und Entschaedigung, 10 widerrechtliche Bauten) und die Restschulden 6/8/9; dann Band-2-Reste (Kap. 12 Wasser/Energie §236 ab Shot 373, Kap. 13 Rest, Kap. 14 Mischrechnungsverbot §10/13 ABV). Kap. 4 (Natur-/Heimatschutz, P3) und Kap. 18 (Brandschutz → nur Querverweis auf Skill `brandschutz`, kein Doppelaufbau) zuletzt bzw. nur Verweis.

WICHTIG Band 1: Die Shot-Schaetzung der Band-1-Kapitel ist unzuverlaessig (Shots nicht kapitellinear). Beim Lesen IMMER die ECHTE Buchseite in der Reader-Fussnote des Screenshots pruefen und danach den richtigen Bereich abgrenzen. Quell-Screenshots:
"/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Planung/SM Planungs und Baurecht/"
Dateiliste eines Shot-Bereichs holen: ls "<Ordner>" | grep -i '\.jpg$' | sort | sed -n 'START,ENDp' ; dann jede Datei mit dem Read-Tool als Bild oeffnen.

JE KAPITELTEIL:
1. TRANSFER: 10-20 Doppelseiten lesen, in ein Kapitel-Destillat unter buecher/band-<n>/<kap>-<slug>.md ueberfuehren (Format CLAUDE.md: Frontmatter + 6 Abschnitte Wichtigstes/Begriffe&Paragraphen/Formeln&Schwellenwerte/Praxis&Fallrecht/Anwendungs-Transfer-JANS/Offene-Punkte). Echte Buchseite belegen. NIE erfinden (§/Zahl/Schwelle ohne Beleg → `speculative`). Echte Umlaute ae/oe/ue → ä/ö/ü, Schweizer Hochdeutsch, kein ß. Kanton ZH.
2. seiten-inventar.md die erledigten Shots auf [x] setzen + Destillat verlinken; buecher/INDEX.md Abdeckungs-Matrix + curriculum.md Status nachfuehren.

NACH den 2-3 Teilen:
3. VERDICHTUNG: mind. 1 wiki/-Themenartikel neu/geschaerft (mit [[backlinks]]), wiki/QUESTIONS.md nachfuehren.
4. ANWENDUNG: 1 Trainingsmodell (A-E) ausfuehren, Ergebnis nach outputs/.
5. Report: outputs/<JJJJ-MM-TT>_buch-runN.md (distillierte Seiten, gewachsener Wiki-Artikel, Drill, Offenes, Naechstes). CHANGELOG.md (wissen/baurecht/) ergaenzen (neueste zuoberst). PROGRAMM.md-Tracker aktualisieren.
6. Sichern: Repo committen + pushen (Rules git-auto-push / sync-kanonische-quelle).

Am Ende kurz melden: welche Kapitelteile distilliert, Gesamt-Abdeckung (Kapitel komplett / offen), und ob die Forcierungs-Phase abgeschlossen ist (dann Hinweis auf Heruntertakten).
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Mechanische Stufen (Quellen lesen, destillieren, formatieren, Inventar/Register nachfuehren)
NICHT im Hauptkontext ausfuehren, sondern an Subagenten mit guenstigem Modell delegieren
(Agent-Aufruf mit model: haiku fuer reine Extraktion/Formatierung, model: sonnet fuer
Destillate mit Textverstand). NUR Urteils- und Verifikationsstufen (Refuter-Pruefung,
Status-Hebung, Widerspruchs-Entscheid, Qualitaets-Synthese) laufen auf dem Hauptmodell.
Gleiches Ergebnis-Format wie bisher; Qualitaetsleitplanken unveraendert.