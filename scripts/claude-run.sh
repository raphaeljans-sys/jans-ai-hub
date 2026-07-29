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

# Aufrufer reichen CLAUDE_BIN teils als BLOSSEN NAMEN durch (dispatch-run.sh,
# wissens-trigger.sh, vollgas-runner.sh setzen "claude", solange `command -v claude`
# greift). `[ -x claude ]` prueft dann eine Datei im Arbeitsverzeichnis und schlaegt
# fehl — der Wrapper brach mit Exit 2 und LEEREM stdout ab, die Meldung ging auf
# stderr und wurde vom Aufrufer verworfen. Belegt 29.07.2026: nachtschicht 02:30 auf
# dem Mac Mini, 3 Versuche in 47 s, Ergebnis leer. Darum einen blossen Namen zuerst
# ueber PATH aufloesen und erst danach auf Ausfuehrbarkeit pruefen.
CLAUDE_BIN="${CLAUDE_BIN:-claude}"
case "$CLAUDE_BIN" in
    */*) : ;;   # bereits ein Pfad
    *)   CLAUDE_BIN="$(command -v "$CLAUDE_BIN" 2>/dev/null || printf '%s' "$CLAUDE_BIN")" ;;
esac
[ -x "$CLAUDE_BIN" ] || { echo "claude-run: claude nicht gefunden ($CLAUDE_BIN)" >&2; exit 2; }

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
JOURNAL_DIR="$HUB/logbuch/laeufe"
JOURNAL="$JOURNAL_DIR/$(date +%y%m%d)-laeufe.jsonl"
STATION="$(scutil --get ComputerName 2>/dev/null || hostname)"

ARGS=( -p --permission-mode "$PERM" --max-budget-usd "$BUDGET"
       --fallback-model "$FALLBACK" --output-format json )
[ -n "$MODELL" ] && ARGS+=( --model "$MODELL" )

# stdout und stderr GETRENNT erfassen. Grund (gemessen 29.07.2026): claude schreibt
# Warnungen wie «Ignoring N permissions.allow entries … workspace has not been trusted»
# auf stderr. Mit 2>&1 landen sie VOR dem JSON im selben String, `jq` scheitert am
# Gesamttext und der Wrapper faellt unnoetig auf den Rohtext-Pfad zurueck — die
# Kennzahlen (cost_usd, duration_ms) gehen dabei verloren.
ERRFILE="$(mktemp -t claude-run-err)"
trap 'rm -f "$ERRFILE"' EXIT

START=$(date +%s)
RAW="$("$CLAUDE_BIN" "${ARGS[@]}" -- "$PROMPT" < /dev/null 2>"$ERRFILE")"
RC=$?
WALL=$(( $(date +%s) - START ))
STDERR="$(cat "$ERRFILE" 2>/dev/null)"

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
    # Kein JSON: typischerweise ein CLI-/Auth-Fehler. Nichts verwerfen — stdout UND
    # stderr durchreichen, damit die Aufrufer (Blindgaenger-/Limit-Erkennung im
    # vollgas-runner) den Text wie bisher sehen.
    RESULT="$(printf '%s\n%s' "$RAW" "$STDERR")"
    COST=null; DUR=null; TURNS=null; ISERR=true; SESSION=""
fi
# Leeres Ergebnis trotz gueltigem JSON: stderr nachschieben statt Stille liefern.
[ -n "$RESULT" ] || RESULT="$(printf '%s\n%s' "$RAW" "$STDERR")"

# Warnungen sichtbar halten, ohne sie in den Ergebnistext zu mischen: sie gehen
# unveraendert an stderr weiter (der Aufrufer entscheidet, ob er sie mitloggt).
[ -n "$STDERR" ] && printf '%s\n' "$STDERR" >&2

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
