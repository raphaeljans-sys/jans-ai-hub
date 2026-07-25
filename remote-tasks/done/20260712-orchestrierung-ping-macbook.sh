#!/bin/bash
# Orchestrierungs-Ping MacBook Pro — verifiziert das neue Stations-Targeting (12.07.2026)
# Erzeugt von der claude.ai/code-Session; $1 = Ergebnis-Verzeichnis
R="$1"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
{
    echo "station:  $(scutil --get ComputerName 2>/dev/null || hostname -s)"
    echo "zeit:     $(date -Iseconds)"
    echo "uptime:  $(uptime)"
    echo "claude:   $(claude --version 2>/dev/null || echo 'CLI nicht gefunden')"
    echo "ssh mini: $(ssh -o BatchMode=yes -o ConnectTimeout=8 mini 'hostname -s' 2>/dev/null || echo 'nicht erreichbar')"
    echo "repo:     $(cd "$HOME/Developer/jans-ai-hub" && git log --oneline -1)"
} > "$R/ping.txt"
echo "Orchestrierungs-Ping MacBook OK"
