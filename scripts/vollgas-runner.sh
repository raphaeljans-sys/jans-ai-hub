#!/bin/bash
# ============================================================================
# JANS AI Hub — VOLLGAS-Runner (Endlos-Loop aller Lern-/Trainings-Loops)
# ============================================================================
# Auftrag Raphael 12.07.2026: alle wiederkehrenden Lern-Arbeiten laufen in
# einem ENDLOS-LOOP ohne Unterbrechung, bewusst bis ans Nutzungslimit heran.
# Der Runner zykliert sequenziell durch die Trainings-Prompts der Station
# (Scheduled-Task-SKILL.md-Dateien) und startet sofort wieder von vorn.
#
#   Start (Station):  nohup bash /Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh \
#                        > ~/.jans-vollgas.out 2>&1 &
#   Stopp (sofort):   touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP
#   Stopp (Station):  touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-$(hostname -s)
#
# Selbst-Ende: ab 11.08.2026 beendet sich der Runner (Drosselung auf 5x-Abo,
# Rule 260712b / One-Time-Task token-drosselung-100810).
#
# Arbeitsteilung (Rule 260712): MacBook Pro = baurecht/twin/immobewertung/
# spec/wettbewerb + Normen SIA+VKF; Mac Mini = energie/planungsgrundlagen/
# synobsis + Normen DIN/VSS/RAL. Der Runner nimmt automatisch die Trainings,
# die auf der jeweiligen Station als Scheduled Task angelegt sind.
#
# NICHT im Loop: operative Briefings/Checks (logbuch-radar, hub-chef,
# heartbeat, mahnwesen, zahlungsabgleich, monitore) — die wuerden Mails
# spammen; sie bleiben bei ihrem Morgen-Takt.
# ============================================================================

set -uo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.bun/bin:$HOME/.claude/local:$PATH"

# Abo-Anmeldung fuer headless-Betrieb (CLAUDE_CODE_OAUTH_TOKEN via setup-token).
# Gleiche Mechanik wie dispatch-run.sh; Datei liegt NUR lokal (chmod 600).
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi
if [ -n "${ANTHROPIC_API_KEY:-}" ]; then
    # NIE ueber API-Key fahren (echte API-Kosten statt Abo) — Rule 260712c
    unset ANTHROPIC_API_KEY
fi
if [ -z "${CLAUDE_CODE_OAUTH_TOKEN:-}" ]; then
    echo "Kein CLAUDE_CODE_OAUTH_TOKEN in ~/.jans-dispatch.env — Abbruch (Runner laeuft nur ueber die Abo-Anmeldung)."
    exit 6
fi

REPO="${VOLLGAS_REPO:-$HOME/Developer/jans-ai-hub}"
TASKS_DIR="$HOME/.claude/scheduled-tasks"
NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
HOST="$(hostname -s)"
END_DATE="20260811"   # ab diesem Tag (YYYYMMDD) beendet sich der Runner selbst
BUDGET="${VOLLGAS_MAX_BUDGET_USD:-25}"
PERM_MODE="${VOLLGAS_PERMISSION_MODE:-acceptEdits}"
PAUSE_BETWEEN="${VOLLGAS_PAUSE:-30}"        # Sekunden zwischen zwei Laeufen
LIMIT_BACKOFF="${VOLLGAS_LIMIT_BACKOFF:-900}" # Sekunden Warten bei Limit/Ueberlast

# Whitelist: nur Lern-/Trainings-Loops (nie operative Briefings/Checks)
INCLUDE_RE='training|normen|twin|wettbewerb|spec|immob|synobsis|energie|planungsgrundlagen|batch'
EXCLUDE_RE='radar|chef|heartbeat|mahnwesen|zahlungsabgleich|hygiene|monitor|check|drosselung|messung|masterclass|woche'

mkdir -p "$NAS_DIR" 2>/dev/null || NAS_DIR="$HOME/.jans-vollgas-log"
mkdir -p "$NAS_DIR"
LOG="$NAS_DIR/${HOST}.log"

# --- Lock: nur EIN Runner pro Station ---------------------------------------
LOCK="/tmp/jans-vollgas-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    PID_OLD="$(cat "$LOCK/pid" 2>/dev/null || true)"
    if [ -n "$PID_OLD" ] && kill -0 "$PID_OLD" 2>/dev/null; then
        echo "Runner laeuft bereits (PID $PID_OLD) — Abbruch."
        exit 0
    fi
    rm -rf "$LOCK"; mkdir "$LOCK"
fi
echo $$ > "$LOCK/pid"
trap 'rm -rf "$LOCK"' EXIT

# --- Claude-CLI auffinden ----------------------------------------------------
CLAUDE_BIN="claude"
if ! command -v "$CLAUDE_BIN" >/dev/null 2>&1; then
    for p in "$HOME/.local/bin/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" "$HOME/.claude/local/claude"; do
        [ -x "$p" ] && { CLAUDE_BIN="$p"; break; }
    done
fi
command -v "$CLAUDE_BIN" >/dev/null 2>&1 || [ -x "$CLAUDE_BIN" ] || {
    echo "claude-CLI nicht gefunden"; exit 4; }

cd "$REPO" || { echo "Repo nicht gefunden: $REPO"; exit 3; }

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" | tee -a "$LOG"; }

log "=== VOLLGAS-Runner gestartet (PID $$, Budget \$${BUDGET}/Lauf, Ende $END_DATE) ==="

ZYKLUS=0
while :; do
    # Stopp-Bedingungen
    [ -f "$NAS_DIR/STOP" ] && { log "STOP-Datei gefunden — Runner beendet."; exit 0; }
    [ -f "$NAS_DIR/STOP-$HOST" ] && { log "STOP-$HOST gefunden — Runner beendet."; exit 0; }
    [ "$(date +%Y%m%d)" -ge "$END_DATE" ] && { log "Enddatum erreicht — Drosselung, Runner beendet."; exit 0; }

    # Task-Liste jedes Mal frisch (neue Trainings werden automatisch erfasst)
    TASKS=()
    for f in "$TASKS_DIR"/*/SKILL.md; do
        [ -f "$f" ] || continue
        name="$(basename "$(dirname "$f")")"
        echo "$name" | grep -qiE "$INCLUDE_RE" || continue
        echo "$name" | grep -qiE "$EXCLUDE_RE" && continue
        # Stations-Split (Rule 260712): auf dieser Station deaktivierte Tasks
        # ueberspringen (Frontmatter enabled: false), sonst laeuft z.B.
        # baurecht-buch-training auf dem Mac Mini leer (self-abort) mit.
        grep -qiE '^enabled:[[:space:]]*false' "$f" && continue
        TASKS+=("$name")
    done
    if [ "${#TASKS[@]}" -eq 0 ]; then
        log "Keine Trainings-Tasks gefunden unter $TASKS_DIR — warte 10 Min."
        sleep 600; continue
    fi

    ZYKLUS=$((ZYKLUS + 1))
    log "--- Zyklus $ZYKLUS: ${#TASKS[@]} Loops: ${TASKS[*]} ---"

    for name in "${TASKS[@]}"; do
        [ -f "$NAS_DIR/STOP" ] || [ -f "$NAS_DIR/STOP-$HOST" ] && break
        # Doppellauf vermeiden: laeuft dieser Task bereits (z.B. via launchd-
        # Scheduled-Task zur Cron-Zeit oder ein ueberlanger Vorlauf), diesen
        # Zyklus ueberspringen — sonst editieren zwei Agenten dieselbe KB
        # gleichzeitig (index.lock-Kollisionen, Rule sync-kanonische-quelle).
        # Match auf die Frontmatter-Zeile "name: <task>" in der argv des
        # laufenden claude-Prozesses (Scheduled-Task wie Runner tragen sie).
        if pgrep -f "name: ${name}[^A-Za-z0-9-]" >/dev/null 2>&1; then
            log "SKIP  $name (laeuft bereits — Doppellauf vermieden)"
            sleep "$PAUSE_BETWEEN"
            continue
        fi
        PROMPT="$(cat "$TASKS_DIR/$name/SKILL.md")
Hinweis: Dieser Lauf ist Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026).
Fahre den naechsten Batch gemaess dem jeweiligen training/PROGRAMM.md bzw. Lauf-Zustand.
Sende KEINE Mails ausser der Prompt verlangt es ausdruecklich. Git-Disziplin (VOLLGAS):
Am Ende NUR LOKAL committen (git add der geaenderten Dateien, dann git commit mit
sprechender Nachricht) — NICHT pushen und NICHT pullen. Der git-auto-sync-Job erledigt
pull --rebase und push alle 5 Min gebuendelt; das vermeidet die Push-Kollisionen zwischen
den Stationen und laesst jeden Lauf sauber mit rc=0 enden."
        START_TS=$(date +%s)
        log "START $name"
        # WICHTIG: Prompt via "--"-Separator als Positional uebergeben, NICHT inline
        # nach -p. Die SKILL.md-Prompts beginnen mit YAML-Frontmatter ("---"); das
        # optionale Argument von -p wird sonst nicht konsumiert und der Parser liest
        # den Prompt als (unbekannte) Option -> sofort rc=1 (Blocker 12.07.2026).
        OUT="$("$CLAUDE_BIN" -p \
            --permission-mode "$PERM_MODE" \
            --max-budget-usd "$BUDGET" \
            --fallback-model sonnet \
            --output-format text \
            -- "$PROMPT" < /dev/null 2>&1)"
        RC=$?
        DAUER=$(( $(date +%s) - START_TS ))
        TAIL="$(printf '%s' "$OUT" | tail -c 400 | tr '\n' ' ')"
        log "ENDE  $name (rc=$RC, ${DAUER}s): $TAIL"

        # Limit-/Ueberlast-Erkennung → Backoff statt sinnlos weiterhaemmern
        if printf '%s' "$OUT" | grep -qiE "usage limit|rate.?limit|limit reached|overloaded|529"; then
            log "Limit/Ueberlast erkannt — Backoff ${LIMIT_BACKOFF}s."
            sleep "$LIMIT_BACKOFF"
        fi
        sleep "$PAUSE_BETWEEN"
    done
done
