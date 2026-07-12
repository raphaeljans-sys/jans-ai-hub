# Anweisung fuer die laufende Claude-Session auf dem Mac Mini (12.07.2026, von Claude MacBook Pro via Raphael autorisiert)

KEINE Cloud-Routinen/Remote-Trigger anlegen (dort ist das NAS nicht gemountet, siehe rules/auto-verbesserungen.md Eintrag 260711 auf dem NAS).

Kontext: Die Intensivphase-Tageslaeufe (Rule 260712/260712b TOKEN-VOLLGAS) sind auf dieser Station bereits per Crontab geloest — crontab -l zeigt die drei Zeilen (cron-training-mini.sh energie/plg/normen via dispatch-run.sh). Daran nichts aendern.

Deine einzige Aufgabe jetzt:
1. Pruefe, ob Du die LOKALEN Scheduled Tasks dieser Station verwalten kannst (list_scheduled_tasks / update_scheduled_task).
2. Falls JA: deaktiviere (enabled false, NICHT loeschen) die Duplikate baurecht-buch-training, immobewertung-training, twin-mail-training, twin-fidelity-review — diese laufen jetzt exklusiv auf dem MacBook Pro. energie-training, planungsgrundlagen-training, synobsis-batch-nacht AKTIV lassen.
3. Falls NEIN: ergaenze im Bericht /Volumes/daten/jans-ai-hub/sync-tasks/done/20260712-155544_Intensivphase-Trainings-umtakten-ERGEBNIS.md einen kurzen Nachtrag: Crontab-Loesung aktiv, App-Duplikate muessen von Raphael manuell deaktiviert werden (Liste der 4 Tasks).
4. Loesche danach diese Datei (mininow.md) und beende sauber mit kurzer Meldung, was erledigt wurde.
