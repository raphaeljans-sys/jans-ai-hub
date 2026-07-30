#!/bin/bash
# Remote-Task: ordner-oeffnen — erzeugt 2026-07-31 fuer Station macbook-pro
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
# Auftrag Raphael: den Ergebnis-Ordner der Remote-Tasks im Finder oeffnen.
R="$1"
open "$HOME/Developer/jans-ai-hub/remote-tasks/results/"
echo "Finder geoeffnet: ~/Developer/jans-ai-hub/remote-tasks/results/ ($(date '+%H:%M:%S'))" > "$R/pruefung.txt"
