#!/bin/bash
# konversations-extract.sh — Rohextrakt der Claude-Code-Sessions einer Station
#
# Teil des Super-Brain-Layers (Konversations-Gedaechtnis, Entscheid Raphael 16.07.2026):
# extrahiert aus den lokalen Session-Transkripten (~/.claude/projects/*/*.jsonl) alle
# Benutzer-Eingaben und Assistent-Kernaussagen der letzten N Stunden als kompakten
# Text-Digest. Der Digest wird vom Scheduled Task `konversations-log` (MacBook Pro)
# gelesen und zu einem Tages-Destillat nach logbuch/konversationen/ verdichtet.
#
# Aufruf:  bash konversations-extract.sh [stunden]   (Default 26)
# Output:  stdout (Text-Digest, pro Session ein Block)
#
# Rein lesend; keine Aenderungen an den Transkripten.

set -euo pipefail

HOURS="${1:-26}"
PROJECTS_DIR="$HOME/.claude/projects"
STATION="$(hostname -s)"
MAX_ASSISTANT_CHARS=1200   # Kernaussagen kappen, damit der Digest handlich bleibt
MAX_LINES_PER_SESSION=400

[ -d "$PROJECTS_DIR" ] || { echo "KEIN_PROJECTS_DIR ($PROJECTS_DIR)"; exit 0; }

# Sessions der letzten N Stunden (mtime), Scratchpads/Worktrees ausklammern
FILES=$(find "$PROJECTS_DIR" -name "*.jsonl" -mmin "-$((HOURS * 60))" -size +2k 2>/dev/null \
  | grep -v -- "-scratchpad" | grep -v "worktrees" | grep -v "/subagents/" || true)

if [ -z "$FILES" ]; then
  echo "KEINE_SESSIONS station=$STATION fenster=${HOURS}h"
  exit 0
fi

echo "=== KONVERSATIONS-DIGEST station=$STATION fenster=${HOURS}h stand=$(date '+%Y-%m-%d %H:%M') ==="

while IFS= read -r f; do
  [ -f "$f" ] || continue
  MOD=$(stat -f '%Sm' -t '%Y-%m-%d %H:%M' "$f" 2>/dev/null || date -r "$f" '+%Y-%m-%d %H:%M')
  echo ""
  echo "----- SESSION $(basename "$f" .jsonl) (letzte Aktivitaet $MOD) -----"
  # cwd der Session (erste Zeile mit cwd)
  jq -r 'select(.cwd != null) | .cwd' "$f" 2>/dev/null | head -1 | sed 's/^/Arbeitsverzeichnis: /' || true
  # User-Eingaben (echte Prompts, keine tool_results) + Assistent-Textkerne
  jq -r --argjson maxa "$MAX_ASSISTANT_CHARS" '
    select(.type == "user" or .type == "assistant") |
    if .type == "user" then
      (.message.content // empty) as $c |
      if ($c | type) == "string" then
        (if ($c | startswith("<")) or ($c | startswith("Caveat")) then empty else "RAPHAEL: " + $c end)
      elif ($c | type) == "array" then
        ($c | map(select(.type == "text") | .text) | join(" ")) as $t |
        (if $t == "" or ($t | startswith("<")) then empty else "RAPHAEL: " + $t end)
      else empty end
    else
      (.message.content // empty) as $c |
      if ($c | type) == "array" then
        ($c | map(select(.type == "text") | .text) | join(" ")) as $t |
        (if $t == "" then empty else "CLAUDE: " + ($t | .[0:$maxa]) end)
      else empty end
    end
  ' "$f" 2>/dev/null | head -"$MAX_LINES_PER_SESSION" || echo "(Extraktion fehlgeschlagen: $f)"
done <<< "$FILES"

echo ""
echo "=== ENDE DIGEST $STATION ==="
