#!/bin/bash
# Orchestrierungs-Ping — verifiziert die Task-Queue Ende-zu-Ende (12.07.2026)
# Erzeugt von der claude.ai/code-Session; $1 = Ergebnis-Verzeichnis
R="$1"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
{
    echo "station:  $(scutil --get ComputerName 2>/dev/null || hostname -s)"
    echo "zeit:     $(date -Iseconds)"
    echo "uptime:  $(uptime)"
    echo "claude:   $(claude --version 2>/dev/null || echo 'CLI nicht gefunden')"
    echo "nas:      $([ -d /Volumes/daten/jans-ai-hub ] && echo gemountet || echo 'NICHT gemountet')"
    echo "repo:     $(cd "$HOME/Developer/jans-ai-hub" && git log --oneline -1)"
} > "$R/ping.txt"
echo "Orchestrierungs-Ping OK"
