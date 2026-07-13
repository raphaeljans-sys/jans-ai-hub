#!/bin/bash
# vollgas-supervisor.sh — Keepalive-Waechter fuer den VOLLGAS-Endlos-Runner.
#
# Zweck (Auftrag Raphael 12.07.2026, Rule 260712e — Taktgeber): stirbt der Runner
# still, laeuft das 5h-Fenster leer, bis der stuendliche Radar ihn neu startet
# (bis zu ~1.5 h Verlust). Dieser Waechter laeuft alle paar Minuten via launchd
# (StartInterval, NICHT KeepAlive) und startet den Runner neu, SOBALD er tot ist.
#
# BEWUSST kein launchd-KeepAlive: KeepAlive wuerde den Runner auch nach STOP oder
# nach dem Selbst-Ende (11.08.) sofort wieder hochreissen und so die Stopp-Mechanik
# aushebeln. Dieser Waechter respektiert STOP/STOP-$HOST und das END_DATE selbst und
# startet dann NICHT — der Runner behaelt die volle Kontrolle ueber sein Ende.
#
# Duplikat-Schutz: der Runner selbst haelt /tmp/jans-vollgas-runner.lock; zusaetzlich
# prueft der Waechter per pgrep, ob schon ein Runner laeuft. Zwei Sicherungen.
#
set -euo pipefail

NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
RUNNER="/Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh"
END_DATE="20260811"   # deckungsgleich mit dem Runner (Selbst-Ende / Drosselung)
HOST="$(hostname -s)"
LOG="$NAS_DIR/supervisor-$HOST.log"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" >> "$LOG" 2>/dev/null || true; }

# NAS gemountet?
[ -d "$NAS_DIR" ] || exit 0
[ -x "$RUNNER" ] || { log "Runner fehlt/nicht ausfuehrbar: $RUNNER"; exit 0; }

# Stopp-Bedingungen respektieren (nicht gegen STOP anrennen)
[ -f "$NAS_DIR/STOP" ]        && exit 0
[ -f "$NAS_DIR/STOP-$HOST" ]  && exit 0
[ "$(date +%Y%m%d)" -ge "$END_DATE" ] && exit 0

# --- Stall-Killer (Radar 13.07.2026) ---------------------------------------
# Der Runner hat einen Token-Budget-Deckel ($50), aber KEINEN Wall-Clock-Deckel.
# Ein Lauf, der im Session-Limit-Retry haengt, verbraucht 0 Token -> der Budget-Cap
# greift nie -> der Lauf blockiert den Runner-Loop stundenlang (real: baurecht 14209s
# = ~4 h, hat das ganze frische 5h-Fenster der Station leerlaufen lassen). Gesunde
# Trainings-Laeufe enden weit darunter (max ~18 Min beobachtet, $50-Budget bounded);
# >60 Min = definitiv haengend. Der Waechter kappt solche Runs, damit der Runner
# zum naechsten produktiven Lauf zykliert. Laeuft VOR dem Alive-Check, weil der
# haengende claude ein Kind des (noch lebenden) Runners ist.
MAX_RUN_SECS="${VOLLGAS_MAX_RUN_SECS:-3600}"
etime_to_secs() {  # macOS etime: [[DD-]HH:]MM:SS -> Sekunden
    local e="$1" dd=0 hh=0 mm=0 ss=0 rest
    case "$e" in
        *-*) dd="${e%%-*}"; rest="${e#*-}";;
        *)   rest="$e";;
    esac
    local IFS=:; set -- $rest
    if   [ "$#" -eq 3 ]; then hh="$1"; mm="$2"; ss="$3"
    elif [ "$#" -eq 2 ]; then mm="$1"; ss="$2"
    else ss="${1:-0}"; fi
    echo $(( 10#${dd:-0}*86400 + 10#${hh:-0}*3600 + 10#${mm:-0}*60 + 10#${ss:-0} ))
}
for spid in $(pgrep -f "max-budget-usd" 2>/dev/null || true); do
    et="$(ps -o etime= -p "$spid" 2>/dev/null | tr -d ' ' || true)"
    [ -n "$et" ] || continue
    secs="$(etime_to_secs "$et" 2>/dev/null || echo 0)"
    if [ "${secs:-0}" -gt "$MAX_RUN_SECS" ]; then
        kill "$spid" 2>/dev/null || true
        log "Stall-Killer: haengender Run PID $spid (${secs}s > ${MAX_RUN_SECS}s) — SIGTERM."
    fi
done

# Laeuft schon ein Runner? (eigene PID ausschliessen ist bei pgrep -f auf den Skriptnamen
# nicht noetig — dieser Waechter heisst anders.)
if pgrep -f "vollgas-runner.sh" >/dev/null 2>&1; then
    exit 0
fi

# Runner ist tot und darf laufen → neu starten (stehende VOLLGAS-Autorisierung).
nohup bash "$RUNNER" >/dev/null 2>&1 &
log "Runner war tot — neu gestartet (PID $!)."
exit 0
