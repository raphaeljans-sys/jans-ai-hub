#!/bin/bash
# ============================================================================
# JANS AI Hub — schonender Neustart des VOLLGAS-Runners
# ============================================================================
# PROBLEM, das dieses Script loest: Der Runner liest sein Script EINMAL beim
# Start in den Speicher. Jede spaetere Korrektur an `vollgas-runner.sh` wirkt
# darum erst nach einem Neustart des Prozesses — am 25.07.2026 lief deshalb
# ein den ganzen Nachmittag ueber bereits gebauter Blindgaenger-Retry auf
# BEIDEN Stationen ins Leere, weil beide Runner aelter waren als der Fix.
#
# Ein blinder `kill` ist aber teuer: laeuft gerade ein Trainingslauf (bis ~25
# Min), wird dessen Arbeit weggeworfen. Darum wartet dieses Script auf das
# PAUSENFENSTER zwischen zwei Laeufen (PAUSE_BETWEEN, Standard 30s) und
# schlaegt erst dann zu.
#
# ERKENNUNG DES PAUSENFENSTERS: Waehrend eines Laufs hat der Runner-Prozess
# eine Command-Substitution-Subshell als Kind (die ihrerseits `claude` faehrt).
# Waehrend der Pause ist das einzige Kind ein `sleep`. Genau darauf wird
# geprueft — ein frueherer Versuch (25.07. 15:57) wartete auf "gar kein Kind"
# und lief deshalb 45 Minuten erfolglos, weil `sleep` immer eines ist.
#
#   Aufruf:  bash scripts/vollgas-runner-restart.sh [max_wartezeit_sekunden]
#   Default: 7200 s (2 Std). Startet den Runner nach dem Kill sofort selbst
#            neu; der launchd-Supervisor ist nur noch Rueckfallnetz.
# ============================================================================

set -uo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

MAX_WAIT="${1:-7200}"
RUNNER="/Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh"
NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
HOST="$(hostname -s)"
LOG="$NAS_DIR/${HOST}.log"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" | tee -a "$LOG"; }

# --- laufenden Runner finden (Lock zuerst, dann pgrep als Rueckfall) ---------
RPID="$(cat /tmp/jans-vollgas-runner.lock/pid 2>/dev/null || true)"
if [ -z "${RPID:-}" ] || ! kill -0 "$RPID" 2>/dev/null; then
    RPID="$(pgrep -f "bash $RUNNER" | head -1 || true)"
fi
if [ -z "${RPID:-}" ]; then
    log "Neustart-Waechter: kein laufender Runner gefunden — starte direkt."
    nohup bash "$RUNNER" > "$HOME/.jans-vollgas.out" 2>&1 &
    exit 0
fi

log "Neustart-Waechter armiert (Runner PID $RPID, wartet bis zu ${MAX_WAIT}s auf das Pausenfenster)."

ENDE=$(( $(date +%s) + MAX_WAIT ))
while [ "$(date +%s)" -lt "$ENDE" ]; do
    if ! kill -0 "$RPID" 2>/dev/null; then
        log "Neustart-Waechter: Runner $RPID ist bereits beendet — starte neu."
        break
    fi
    # Pausenfenster: kein Kind, oder das einzige Kind ist ein `sleep`.
    KINDER="$(pgrep -P "$RPID" 2>/dev/null || true)"
    PAUSE=1
    for k in $KINDER; do
        COMM="$(ps -o comm= -p "$k" 2>/dev/null || true)"
        case "$COMM" in
            *sleep) : ;;          # Pause — unkritisch
            "")     : ;;          # Kind schon weg
            *)      PAUSE=0 ;;    # echter Lauf im Gang
        esac
    done
    if [ "$PAUSE" -eq 1 ]; then
        # Gegenprobe, damit ein kurzer Zwischenzustand (z.B. `date`) nicht
        # faelschlich als Pause gilt.
        sleep 2
        KINDER2="$(pgrep -P "$RPID" 2>/dev/null || true)"
        NOCH_PAUSE=1
        for k in $KINDER2; do
            COMM="$(ps -o comm= -p "$k" 2>/dev/null || true)"
            case "$COMM" in
                *sleep|"") : ;;
                *)         NOCH_PAUSE=0 ;;
            esac
        done
        if [ "$NOCH_PAUSE" -eq 1 ]; then
            log "Neustart-Waechter: Pausenfenster erreicht — beende Runner $RPID (kein Lauf verloren)."
            kill -TERM "$RPID" 2>/dev/null
            sleep 3
            kill -0 "$RPID" 2>/dev/null && { sleep 5; kill -KILL "$RPID" 2>/dev/null; }
            break
        fi
    fi
    sleep 3
done

if kill -0 "$RPID" 2>/dev/null; then
    log "Neustart-Waechter: Pausenfenster in ${MAX_WAIT}s nicht erreicht — abgebrochen, Runner laeuft unveraendert weiter."
    exit 1
fi

# Stale Lock aufraeumen (bash fuehrt den EXIT-Trap bei SIGTERM nicht aus)
LOCKPID="$(cat /tmp/jans-vollgas-runner.lock/pid 2>/dev/null || true)"
if [ -n "${LOCKPID:-}" ] && ! kill -0 "$LOCKPID" 2>/dev/null; then
    rm -rf /tmp/jans-vollgas-runner.lock
fi

sleep 2
nohup bash "$RUNNER" > "$HOME/.jans-vollgas.out" 2>&1 &
sleep 5
NEU="$(cat /tmp/jans-vollgas-runner.lock/pid 2>/dev/null || true)"
log "Neustart-Waechter: Runner neu gestartet (PID ${NEU:-unbekannt}) — laeuft jetzt mit dem aktuellen Script."
