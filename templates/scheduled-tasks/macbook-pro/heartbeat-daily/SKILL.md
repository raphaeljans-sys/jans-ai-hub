---
name: heartbeat-daily
description: Täglicher System-Health-Check (Werktags ~08:00)
---

bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh ausführen und Status berichten
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Scripts ausfuehren,
Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku delegieren
(bei textlastiger Zusammenfassung model: sonnet); der Hauptkontext orchestriert nur und
prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.
