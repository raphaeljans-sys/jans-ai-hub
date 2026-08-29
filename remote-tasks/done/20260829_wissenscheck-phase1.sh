#!/bin/bash
# Wissenscheck Phase 1: Audit aller 18 KBs
# Läuft mit Vollzugriff auf NAS und Skills/Agents/Rules

R="$1"
set -e

echo "=== Wissenscheck Phase 1 gestartet ===" | tee "$R/status.txt"
echo "Timestamp: $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$R/status.txt"

# Dispatch-Launcher: führt claude im Projektverzeichnis aus
# mit vollem Zugriff auf CLAUDE.md + Skills + NAS-Symlinks
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" \
    "wissenscheck --phase 1" \
    > "$R/wissenscheck-output.md" 2>&1

echo "✓ Wissenscheck Phase 1 abgeschlossen" >> "$R/status.txt"
