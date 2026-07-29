#!/bin/bash
# claude-run.sh — einheitlicher Wrapper fuer automatische `claude -p`-Laeufe.
#
# WARUM: Bis 29.07.2026 riefen alle Loops `claude -p --output-format text`. Damit lieferte
# kein automatischer Lauf maschinell auswertbare Daten zurueck — die Aufsicht musste raten,
# ob ein Loop gearbeitet, geleert oder gar nichts geliefert hat (Rule 260729, Liefer-Delta).
# Anthropic-Lecture 29.07.2026, Slide «Claude Code SDK»: den SDK als Unix-Werkzeug nutzen,
# pipe in / pipe out, `--output-format json`.
#
# WAS ES TUT: ruft claude mit `--output-format json`, schreibt eine Journalzeile mit
# cost_usd / duration_ms / num_turns / is_error nach logbuch/laeufe/YYMMDD-laeufe.jsonl und
# gibt auf stdout **nur den Ergebnistext** aus. Aufrufende Scripts behalten damit ihre
# bestehende Textlogik (Blindgaenger-Erkennung, Limit-Erkennung, Log-Tail) unveraendert.
#
# AUFRUF:
#   OUT="$(bash scripts/claude-run.sh --name "<loop>" --budget 50 \
#            --perm acceptEdits [--modell sonnet] -- "$PROMPT")"
#   RC=$?
#
# Exit-Code: der Exit-Code von claude. Bei kaputtem/fehlendem JSON faellt der Wrapper auf
# die Rohausgabe zurueck (nie stiller Textverlust).
set -uo pipefail

NAME="unbenannt"; BUDGET="50"; PERM="acceptEdits"; FALLBACK="sonnet"; MODELL=""
while [ $# -gt 0 ]; do
    case "$1" in
        --name)     NAME="$2"; shift 2 ;;
        --budget)   BUDGET="$2"; shift 2 ;;
        --perm)     PERM="$2"; shift 2 ;;
        --modell)   MODELL="$2"; shift 2 ;;
        --fallback) FALLBACK="$2"; shift 2 ;;
        --)         shift; break ;;
        *)          echo "claude-run: unbekannte Option $1" >&2; exit 2 ;;
    esac
done
PROMPT="${1:-}"
[ -n "$PROMPT" ] || { echo "claude-run: kein Prompt uebergeben" >&2; exit 2; }

CLAUDE_BIN="${CLAUDE_BIN:-$(command -v claude)}"
[ -x "$CLAUDE_BIN" ] || { echo "claude-run: claude nicht gefunden" >&2; exit 2; }

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
JOURNAL_DIR="$HUB/logbuch/laeufe"
JOURNAL="$JOURNAL_DIR/$(date +%y%m%d)-laeufe.jsonl"
STATION="$(scutil --get ComputerName 2>/dev/null || hostname)"

ARGS=( -p --permission-mode "$PERM" --max-budget-usd "$BUDGET"
       --fallback-model "$FALLBACK" --output-format json )
[ -n "$MODELL" ] && ARGS+=( --model "$MODELL" )

START=$(date +%s)
RAW="$("$CLAUDE_BIN" "${ARGS[@]}" -- "$PROMPT" < /dev/null 2>&1)"
RC=$?
WALL=$(( $(date +%s) - START ))

# --- JSON auswerten; bei Fehlschlag Rohausgabe durchreichen -------------------
RESULT=""
if printf '%s' "$RAW" | jq -e . >/dev/null 2>&1; then
    RESULT="$(printf '%s' "$RAW" | jq -r '.result // .text // ""' 2>/dev/null)"
    COST="$(printf '%s' "$RAW"   | jq -r '.total_cost_usd // .cost_usd // null')"
    DUR="$(printf '%s' "$RAW"    | jq -r '.duration_ms // null')"
    TURNS="$(printf '%s' "$RAW"  | jq -r '.num_turns // null')"
    ISERR="$(printf '%s' "$RAW"  | jq -r '.is_error // false')"
    SESSION="$(printf '%s' "$RAW"| jq -r '.session_id // ""')"
else
    # Kein JSON: typischerweise ein CLI-/Auth-Fehler auf stderr. Nichts verwerfen.
    RESULT="$RAW"; COST=null; DUR=null; TURNS=null; ISERR=true; SESSION=""
fi
[ -n "$RESULT" ] || RESULT="$RAW"

# --- Journalzeile (die Grundlage der Liefer-Delta-Messung) --------------------
if mkdir -p "$JOURNAL_DIR" 2>/dev/null; then
    jq -n -c \
        --arg ts   "$(date +%Y-%m-%dT%H:%M:%S%z)" \
        --arg name "$NAME" \
        --arg st   "$STATION" \
        --arg sid  "$SESSION" \
        --arg res  "$(printf '%s' "$RESULT" | tail -c 600)" \
        --argjson rc "$RC" \
        --argjson wall "$WALL" \
        --argjson cost "${COST:-null}" \
        --argjson dur "${DUR:-null}" \
        --argjson turns "${TURNS:-null}" \
        --argjson err "${ISERR:-false}" \
        --argjson len "$(printf '%s' "$RESULT" | wc -c | tr -d ' ')" \
        '{ts:$ts, loop:$name, station:$st, rc:$rc, wall_s:$wall, cost_usd:$cost,
          duration_ms:$dur, num_turns:$turns, is_error:$err, result_len:$len,
          session_id:$sid, result_tail:$res}' >> "$JOURNAL" 2>/dev/null || true
fi

printf '%s' "$RESULT"
exit "$RC"
