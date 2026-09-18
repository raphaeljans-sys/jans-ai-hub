---
title: Synergie-Lauf 39 (Tagestakt)
date: 2026-09-18
delta_basis: 2026-09-17 17:10
commits: 118
---

# Synergie-Lauf 39, 18.09.2026

## Kurz

1. **Neu SYN-92:** Die am 18.09. belegte CAD-Sackgasse (LibreDWG `dwg2dxf` auf Revit-DWG `AC1024`:
   rc=0, aber DXF ohne ENTITIES) stand nur in `connectors/WEGE.md`, obwohl WEGE selbst den Skill
   `pdf2dwg` («Grenzen») zum kanonischen Ort der CAD-Sackgassen erklärt. Der Skill empfahl den
   `dwg2dxf`-Roundtrip weiter ohne Einschränkung. Querverweise auf beiden Seiten gesetzt.
2. **SYN-86 bewegt:** Der Kern ist geschlossen. Der Hygiene-Lauf vom 17.09. hat die Versions-Frage
   app-only beantwortet und seine Korrektur selbst ins Fristen-Register geschrieben. Offen bleibt nur
   die Verallgemeinerung (d).
3. **SYN-88 bewegt:** Der Twin-Auto-Block ist zweimal nachkompiliert, `anrede-kontakte.md` blieb
   unverändert. Die Sachbitte hebt wieder (260917). Neu ist eine Kanal-Achse (260918): Das
   Preisangebot inline im Thread bleibt bei «Hoi», die Offerte als neue Mail mit Anhang hebt.
   Nebenbefund: Die Kontaktzeile Steinmann ist veraltet, analog zum Fall Hofer. Die Rule wurde
   **nicht** angefasst, weil die Frage bei Raphael liegt (QUESTIONS 260918b).

## Uhr und Delta

Station 17:10 CEST, letzter nativer Selfcommit 17:00:04 (`c18c50ae7`), keine Abweichung. 118 Commits
im Fenster, ältester `15093e68d` 17.09. 17:15, neuester = HEAD. Keine neuen Bausteine. Geändert:
`healthcare-wirtschaftlichkeit` (Skill), `jans-dna-facetten` und `betrieb-chronik` (Rules), `WEGE.md`
(5 Commits). Neu: LaunchAgent `ch.jans.macbook-wecker` (Mac Mini) samt Script und Plist-Vorlage.

## Geprüft ohne Befund

1. **BWO-Referenzzins 1.25 %:** Er steht gleichlautend an allen drei Verbraucher-Stellen
   (healthcare-wirtschaftlichkeit Z. 67, machbarkeit-Wissensbasis 02 Z. 89 und 03 Z. 54). Die
   Rückkante vom führenden Artikel `investorenmarkt-makro.md` ist vorhanden (Z. 499), die
   Publikation vom 01.09. ist dort belegt (Z. 172-176).
2. **macbook-wecker:** In `rollen-map.tsv` eingetragen (Z. 166), Rückbau in der Chronik, Plist
   versioniert.
3. **Exchange-Kontakt-Weg:** Kein Skill legt Kontakte an, daher keine Rückkante nötig.

## Umgesetzt (active-with-flagging, rein additiv)

1. `skills/pdf2dwg/SKILL.md`: 98 auf 106 Zeilen, neuer Punkt unter «Grenzen».
2. `connectors/WEGE.md`: 1313 auf 1319 Zeilen, Zeiger unter «Zu Zeile CAD».
3. `wissen/koordination/SYNERGIE-REGISTER.md`: SYN-92 neu, Status von SYN-86 und SYN-88 ergänzt,
   Fussnote Lauf 39.

## To-do (Vorschläge, nicht umgesetzt)

1. **Raphael:** Soll «Fremd-DWG lesen/ausschneiden» eine eigene Zeile in der WEGE-Tabelle bekommen?
2. **twin-Harness:** Die Zeile Steinmann in `anrede-kontakte.md` analog zu Hofer nachführen:
   Sie-Phase bis März 2026, belegte Opener «Hoi Roman» und «Geschätzter Roman,».
3. **Raphael:** Antwort auf QUESTIONS 260918b #1 (Stufe der Erst-Offerte an einen Neukunden).
