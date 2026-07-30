#!/bin/bash
# Remote-Task: fristen-aufraeumlauf — erzeugt 2026-07-30 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Beauftragt den vollen JANS-Harness (dispatch-run.sh) mit einem Aufraeum-Lauf
# des Fristen-Registers: das Hub-Cockpit hat 27 sofort/ueberfaellige Zeilen
# gezeigt, viele davon laut Journal laengst ueberholt.
R="$1"
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" \
  "Register-Aufraeumlauf (Skill logbuch, Auftrag Raphael 30.07.2026): Pruefe im Fristen-Register logbuch/fristen.md (NAS-kanonisch) jede Zeile, deren Frist ueberschritten ist oder deren Status offen/beobachten/nachfassen lautet, gegen das Journal LOGBUCH.md und die Nachtragstexte im Register selbst. Zeilen, die laut Beleg erledigt, ueberholt oder hinfaellig sind, auf den Status erledigt/hinfaellig stellen (mit Datum und Kurzbegruendung in der Zeile); noch offene Zeilen unveraendert lassen oder mit aktualisiertem Nachtrag versehen. KEINE Zeile loeschen (Register ist append-korrigierend), keine Mails versenden, keine Buchungen, keine Kalenderaktionen — reine Registerpflege. Abschluss: Logbuch-Eintrag ueber den Aufraeum-Lauf (Anzahl geprueft/umgestellt/offen geblieben) und dieselbe Zusammenfassung als Antwort." \
  > "$R/antwort.md" 2>&1
