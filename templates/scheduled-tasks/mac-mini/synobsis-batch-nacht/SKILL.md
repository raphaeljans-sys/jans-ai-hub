---
name: synobsis-batch-nacht
description: DEAKTIVIERT 28.07.2026 (Vollzug der Entscheidung vom 25.07.) — KB saturiert 853/853, 15. Leerlauf. Reaktivierung: enabled=true, sobald neues Synobsis-Material eintrifft (offen > 0).
---

> DEAKTIVIERT 25.07.2026 durch den VOLLGAS-Chef-Radar (reversibel: enabled auf true setzen). Grund: der Lauf meldet selbst den 14. Leerlauf in Folge und empfiehlt seit mehreren Laeufen die eigene Pausierung, setzt sie aber auftragsgemaess nicht selbst um; die KB architekten-synobsis ist saturiert (853/853 gescannt). Reaktivierung, sobald neues Synobsis-Material eintrifft.

Du fuehrst den naechtlichen Synobsis-Aufbereitungs-Lauf des JANS AI Hub aus (Wissens-KB architekten-synobsis: macht die Architektur-Referenzbibliothek /Volumes/daten/05_Architekten_Synobsis mit 853 Architekten-Ordnern fuer die AI-Recherche durchsuchbar). Dieser Task ersetzt die frühere Cloud-Routine "NAS-CHECK", die in der Remote-Umgebung keinen NAS-Zugriff hatte.

VORAUSSETZUNGEN (bei Verletzung sauber abbrechen und kurz melden, nichts erzwingen):
1. Host-Weiche: `hostname` muss "Macmini" enthalten — dieser Lauf gehoert ausschliesslich auf den Always-On Mac Mini.
2. NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar.

ABLAUF (gemaess /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/RUNBOOK-MAC-MINI.md und PROGRAMM.md):
1. Status vorher: `~/.venvs/pdftools/bin/python /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/tools/synobsis_scan.py --status`
2. Batch-Lauf: `bash /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/tools/synobsis_batch.sh 25` (Stufe 1 Scan/Katalog + Stufe 2 Embeddings, sofern venv ~/.venvs/synobsis eingerichtet ist; fehlt Stufe 2, nur Stufe 1 laufen lassen und das im Report vermerken).
3. Status nachher erneut abfragen; Fortschritt (verarbeitete Architekten x/853) festhalten.
4. Kurzes Laufprotokoll nach /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/outputs/ (Datum, Charge, Fortschritt, Auffaelligkeiten) und CHANGELOG.md der KB nachfuehren.
5. Sichern: im Repo /Volumes/daten/jans-ai-hub NUR `wissen/architekten-synobsis/` committen und pushen (der Remote heisst `github`, Branch `main`). Falls der NAS-Selfcommit (launchd) schon committet hat, via `git show HEAD:` pruefen und Doppelarbeit vermeiden.

REGELN: Quelle /Volumes/daten/05_Architekten_Synobsis ist strikt read-only (nie veraendern). Identifikatoren/Befunde nie erfinden. Laeuft unbeaufsichtigt in der Nacht (Zeitfenster-Vorgabe 22:00-06:00, keine Trainings/Batch-Laeufe waehrend der Arbeitszeit).
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Mechanische Stufen (Quellen lesen, destillieren, formatieren, Inventar/Register nachfuehren)
NICHT im Hauptkontext ausfuehren, sondern an Subagenten mit guenstigem Modell delegieren
(Agent-Aufruf mit model: haiku fuer reine Extraktion/Formatierung, model: sonnet fuer
Destillate mit Textverstand). NUR Urteils- und Verifikationsstufen (Refuter-Pruefung,
Status-Hebung, Widerspruchs-Entscheid, Qualitaets-Synthese) laufen auf dem Hauptmodell.
Gleiches Ergebnis-Format wie bisher; Qualitaetsleitplanken unveraendert.