---
name: heartbeat-daily
description: Täglicher System-Health-Check (Werktags ~08:00) — seit 11.09.2026 auf dem Mac Mini (Umzug der Aufsicht, Audit B1 / V0+)
---

STATION (seit 11.09.2026, Umzug der Aufsicht auf den Mac Mini, Audit B1 / V0+, Freigabe Raphael): Dieser Task läuft auf dem MAC MINI (Always-On, LAN-Mount, stabil). Die lokale Registry ist die des Mac Mini; die andere Station ist das MacBook Pro (`ssh macbook`). Die Station heisst Macmini. Alles Übrige gilt unverändert.

bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh ausführen und Status berichten
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Scripts ausfuehren,
Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku delegieren
(bei textlastiger Zusammenfassung model: sonnet); der Hauptkontext orchestriert nur und
prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.