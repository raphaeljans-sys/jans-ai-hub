---
name: immobewertung-training
description: EREIGNIS-TRIGGER statt Zeittakt (Entscheid Raphael 26.07.2026, Registry-Nachzug 27.07.): naechster Lauf ueber den One-Time-Task immobewertung-marktpuls-260901 (Stichtag 01.09.2026) oder bei neuem Bewertungsauftrag.
---

Fuehre einen Trainings-Lauf des JANS-Immobilienbewertungs-Harness aus (unbeaufsichtigt).

Voraussetzung: NAS gemountet (/Volumes/daten). Wenn nicht erreichbar, brich sauber ab und melde das.

1. Lies die Programm-Datei: /Volumes/daten/jans-ai-hub/wissen/immobilienbewertung/training/PROGRAMM.md — sie definiert den Ablauf verbindlich.
2. Lies den Stand: training/curriculum.md (naechste offene Lektionen, Schwerpunkt Wuest-Kurs "Immobilien entwickeln"), raw/_INGESTED.md, wiki/wissensluecken.md.
3. Waehle 10 Themen/Lektionen fuer diesen Lauf — Prioritaet: (a) naechste offene Wuest-Curriculum-Lektionen (W1, W2, ...), (b) offene T-Aufgaben aus wissensluecken.md, (c) Aktualisierungen veralteter Daten.
4. Arbeite jedes Thema vertieft ein: Quelle lesen (PDF-Seiten via Read mit pages:-Range; die Wuest-Praesentation liegt unter IMMO-03 KNOW-HOW/05 Residualwert/Folien WuestPartner/Immo_02_P23D_Praesentation_Nextcloud.pdf im SharePoint-Pfad ~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/). Kerngehalt in den passenden Wiki-Artikel unter wissen/immobilienbewertung/wiki/ einarbeiten — Fakten mit Quelle+Seite, Annahmen als Annahme markieren, [[backlinks]] setzen, Status heben wo belegt, last_updated setzen. NICHTS erfinden; Unsicheres bleibt speculative.
5. Register pflegen: raw/_INGESTED.md, training/curriculum.md (Lektion abhaken), wiki/wissensluecken.md, wiki/INDEX.md, CHANGELOG.md (neueste zuoberst).
6. Lern-Report schreiben: wissen/immobilienbewertung/outputs/JJJJ-MM-TT_training-runN.md (welche 10 Themen, was gelernt, was geaendert, was als naechstes).
7. Sichern: NAS-Repo committen und pushen (cd /Volumes/daten/jans-ai-hub && git add -A && git commit && git push github main) gemaess Rule sync-kanonische-quelle.md.

Halte dich strikt an die KB-Schreibregeln (Schweizer Hochdeutsch, echte Umlaute, Quellenpflicht mit Stand). Wenn der Wuest-Kurs komplett eingearbeitet ist, ruecken die E-Quellen aus curriculum.md und danach Auffrischungen/Marktpuls nach.
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Mechanische Stufen (Quellen lesen, destillieren, formatieren, Inventar/Register nachfuehren)
NICHT im Hauptkontext ausfuehren, sondern an Subagenten mit guenstigem Modell delegieren
(Agent-Aufruf mit model: haiku fuer reine Extraktion/Formatierung, model: sonnet fuer
Destillate mit Textverstand). NUR Urteils- und Verifikationsstufen (Refuter-Pruefung,
Status-Hebung, Widerspruchs-Entscheid, Qualitaets-Synthese) laufen auf dem Hauptmodell.
Gleiches Ergebnis-Format wie bisher; Qualitaetsleitplanken unveraendert.