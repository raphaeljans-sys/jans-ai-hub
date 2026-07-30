#!/bin/bash
# ============================================================================
# JANS AI Hub — Arbeits-Weiche (Last-Verteilung schwerer Auftraege)
# ============================================================================
# Auftrag Raphael 30.07.2026: RAM-intensive Arbeitsauftraege, egal auf welcher
# Station eingegeben, automatisch auf die Station mit der optimalen Auslastung
# leiten. Politik (bewusst asymmetrisch, Entscheid 30.07.2026):
#
#   1. DEFAULT MINI. Der Mac Mini ist Always-On und der geborene Arbeitstraeger.
#      Er bekommt den Auftrag, wenn er >= 4 GB nutzbaren Speicher hat, kein
#      Speicherdruck herrscht und das Lauf-Gate ihn zulaesst.
#   2. MACBOOK NUR ALS AUSHILFE. Das MacBook Pro uebernimmt nur, wenn ALLE
#      Bedingungen stimmen: Mini ausgelastet/abgewiesen UND MacBook im Buero-LAN
#      erreichbar UND am Netzteil UND >= 3 GB frei UND kein Druck UND (Wochenende/
#      Nacht ODER Benutzer >= 15 Min idle). Die Tastatur-Station wird nie
#      ausgebremst, waehrend Raphael daran arbeitet.
#   3. NIE ABSAGEN. Sind beide Stationen nicht bereit, wird der Auftrag als
#      Sync-Task in die Mini-Queue gelegt (Ausfuehrung beim naechsten freien
#      Takt). Die Weiche entscheidet ueber den ORT, nie ueber die Absage.
#
# Messung gemaess Betriebs-Regel: vm_stat free+inactive+purgeable und
# kern.memorystatus_vm_pressure_level — nie top/ps-RSS.
#
# AUFRUF:
#   bash arbeits-weiche.sh --wo "<name>"              # nur entscheiden (Trockenlauf)
#   bash arbeits-weiche.sh "<name>" "<prompt>"        # entscheiden + ausfuehren
#     [--budget N] [--modell M]                        # durchgereicht an claude-run.sh
#
# Jeder Entscheid wird protokolliert:
#   logbuch/arbeits-weiche/YYMMDD-entscheide.jsonl
# Wochen-Review: Scheduled Task arbeits-weiche-review (Mini) wertet das Journal aus.
#
# Test-Overrides (nur fuer Pfad-Nachmessung, nie im Betrieb setzen):
#   WEICHE_TEST_MINI_GB / WEICHE_TEST_MACBOOK_GB / WEICHE_TEST_IDLE_S
# ============================================================================
set -uo pipefail

NAS="/Volumes/daten/jans-ai-hub"
LOGDIR="$NAS/logbuch/arbeits-weiche"
MINI_MIN_GB=4
MACBOOK_MIN_GB=3
IDLE_MIN_S=900

MODUS="ausfuehren"
if [ "${1:-}" = "--wo" ]; then MODUS="trocken"; shift; fi
NAME="${1:-}"; shift 2>/dev/null || true
BUDGET="50"; MODELL=""
PROMPT=""
while [ $# -gt 0 ]; do
    case "$1" in
        --budget) BUDGET="$2"; shift 2 ;;
        --modell) MODELL="$2"; shift 2 ;;
        *) PROMPT="$1"; shift ;;
    esac
done
[ -n "$NAME" ] || { echo "Verwendung: arbeits-weiche.sh [--wo] <name> [<prompt>]"; exit 2; }
[ "$MODUS" = "trocken" ] || [ -n "$PROMPT" ] || { echo "FEHLER: Prompt fehlt (oder --wo nutzen)"; exit 2; }

HOSTKURZ="$(hostname)"
case "$HOSTKURZ" in
    Macmini*|macmini*) ICH="mini"; ANDERE="macbook" ;;
    Macbookpro*|MacBook*|macbook*) ICH="macbook"; ANDERE="mini" ;;
    *) echo "FEHLER: unbekannte Station $HOSTKURZ"; exit 2 ;;
esac

SSHOPT=(-o BatchMode=yes -o ConnectTimeout=6 -o LogLevel=ERROR)

# --- Messung ----------------------------------------------------------------
frei_gb_lokal() {
    vm_stat | awk '/free|inactive|purgeable/ {gsub("\\.",""); s+=$NF} END {printf "%.1f", s*16384/1073741824}'
}
druck_lokal() { sysctl -n kern.memorystatus_vm_pressure_level 2>/dev/null || echo 0; }

frei_gb() {  # $1 = mini|macbook
    if [ "$1" = "$ICH" ]; then frei_gb_lokal
    else ssh "${SSHOPT[@]}" "$1" 'vm_stat | awk "/free|inactive|purgeable/ {gsub(\"\\\\.\",\"\"); s+=\$NF} END {printf \"%.1f\", s*16384/1073741824}"' 2>/dev/null || echo ""
    fi
}
druck() {
    if [ "$1" = "$ICH" ]; then druck_lokal
    else ssh "${SSHOPT[@]}" "$1" 'sysctl -n kern.memorystatus_vm_pressure_level' 2>/dev/null || echo 0
    fi
}
gate_ok() {  # $1 = mini|macbook — Lauf-Gate der Zielstation befragen
    if [ "$1" = "$ICH" ]; then
        bash "$NAS/scripts/lauf-gate.sh" "weiche-$NAME" >/dev/null 2>&1
    else
        ssh "${SSHOPT[@]}" "$1" "bash /Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh 'weiche-$NAME'" >/dev/null 2>&1
    fi
}

MINI_GB="${WEICHE_TEST_MINI_GB:-$(frei_gb mini)}"
MINI_DRUCK="$(druck mini)"
MB_GB="${WEICHE_TEST_MACBOOK_GB:-$(frei_gb macbook)}"
MB_DRUCK="$(druck macbook)"

# --- Entscheid --------------------------------------------------------------
ZIEL=""; GRUND=""

mini_bereit() {
    [ -n "$MINI_GB" ] || return 1
    awk -v g="$MINI_GB" -v m="$MINI_MIN_GB" 'BEGIN {exit (g>=m)?0:1}' || return 1
    [ "${MINI_DRUCK:-0}" -le 1 ] || return 1
    gate_ok mini
}

macbook_bereit() {
    [ -n "$MB_GB" ] || return 1                                   # erreichbar
    if [ "$ICH" = "mini" ]; then
        nc -z -G 1 Macbookpro.local 22 >/dev/null 2>&1 || return 1  # im Buero-LAN
        ssh "${SSHOPT[@]}" macbook 'pmset -g batt | head -1 | grep -q "AC Power"' || return 1
        IDLE_S="${WEICHE_TEST_IDLE_S:-$(ssh "${SSHOPT[@]}" macbook \
            'ioreg -c IOHIDSystem 2>/dev/null | awk "/HIDIdleTime/ {print int(\$NF/1000000000); exit}"')}"
    else
        pmset -g batt | head -1 | grep -q "AC Power" || return 1
        IDLE_S="${WEICHE_TEST_IDLE_S:-$(ioreg -c IOHIDSystem 2>/dev/null | awk '/HIDIdleTime/ {print int($NF/1000000000); exit}')}"
    fi
    awk -v g="$MB_GB" -v m="$MACBOOK_MIN_GB" 'BEGIN {exit (g>=m)?0:1}' || return 1
    [ "${MB_DRUCK:-0}" -le 1 ] || return 1
    WT="$(date +%u)"; STD="$(date +%H)"
    if [ "$WT" -le 5 ] && [ "$STD" -ge 7 ] && [ "$STD" -lt 19 ]; then
        [ "${IDLE_S:-0}" -ge "$IDLE_MIN_S" ] || return 1          # Arbeitszeit: nur wenn idle
    fi
    gate_ok macbook
}

if mini_bereit; then
    ZIEL="mini"; GRUND="mini-frei (${MINI_GB} GB, Druck ${MINI_DRUCK})"
elif macbook_bereit; then
    ZIEL="macbook"; GRUND="mini-ausgelastet (${MINI_GB:-?} GB), macbook-bereit (${MB_GB} GB, am Netz, idle/ausserhalb Arbeitszeit)"
else
    ZIEL="queue"; GRUND="beide Stationen nicht bereit (mini ${MINI_GB:-?} GB Druck ${MINI_DRUCK} · macbook ${MB_GB:-nicht erreichbar} Druck ${MB_DRUCK:-?}) — Auftrag in Mini-Queue geparkt"
fi

# --- Protokoll --------------------------------------------------------------
mkdir -p "$LOGDIR"
JLOG="$LOGDIR/$(date +%y%m%d)-entscheide.jsonl"
printf '{"ts":"%s","name":"%s","station_eingabe":"%s","ziel":"%s","modus":"%s","mini_gb":"%s","mini_druck":"%s","macbook_gb":"%s","macbook_druck":"%s","grund":"%s"}\n' \
    "$(date +%Y-%m-%dT%H:%M:%S%z)" "$NAME" "$ICH" "$ZIEL" "$MODUS" \
    "${MINI_GB:-}" "${MINI_DRUCK:-}" "${MB_GB:-}" "${MB_DRUCK:-}" "$GRUND" >> "$JLOG"

echo "Weiche: $NAME → $ZIEL ($GRUND)"
[ "$MODUS" = "trocken" ] && exit 0

# --- Ausfuehrung ------------------------------------------------------------
# Headless-Umgebung laden (Betriebs-Regel: vor jeder Blocker-Diagnose zuerst
# ~/.jans-dispatch.env — sonst scheitert claude an der OAuth-Session).
[ -f "$HOME/.jans-dispatch.env" ] && { set -a; . "$HOME/.jans-dispatch.env"; set +a; }
MODELLOPT=(); [ -n "$MODELL" ] && MODELLOPT=(--modell "$MODELL")
case "$ZIEL" in
    mini|macbook)
        if [ "$ZIEL" = "$ICH" ]; then
            bash "$NAS/scripts/claude-run.sh" --name "weiche-$NAME" --budget "$BUDGET" "${MODELLOPT[@]}" -- "$PROMPT"
        else
            RLOG="/tmp/weiche-$NAME-$(date +%H%M%S).log"
            printf '%s' "$PROMPT" | ssh "${SSHOPT[@]}" "$ZIEL" \
                "cat > /tmp/weiche-prompt.txt; set -a; . ~/.jans-dispatch.env 2>/dev/null; set +a; cd ~/Developer/jans-ai-hub && nohup bash /Volumes/daten/jans-ai-hub/scripts/claude-run.sh --name 'weiche-$NAME' --budget '$BUDGET' ${MODELL:+--modell $MODELL} -- \"\$(cat /tmp/weiche-prompt.txt)\" > '$RLOG' 2>&1 & echo gestartet, Log: $RLOG"
        fi
        ;;
    queue)
        bash "$NAS/scripts/sync-task-create.sh" mac-mini "weiche-$NAME" \
            "set -a; . ~/.jans-dispatch.env 2>/dev/null; set +a; cd ~/Developer/jans-ai-hub && bash /Volumes/daten/jans-ai-hub/scripts/claude-run.sh --name 'weiche-$NAME' --budget '$BUDGET' -- $(printf '%q' "$PROMPT")"
        ;;
esac
