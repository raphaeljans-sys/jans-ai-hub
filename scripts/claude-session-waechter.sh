#!/bin/bash
# ============================================================================
# JANS AI Hub — Claude-Session-Waechter (beide Stationen)
# ============================================================================
# Auftrag Raphael 02.09.2026 nach dem zweiten Speicher-Notstand des MacBook Pro:
#   Dialog "Dein System hat keinen Programmspeicher mehr", Claude aggregiert
#   18.13 GB bei 16 GB RAM. Gemessene Ursache: 16 gleichzeitig laufende
#   Claude-Code-Session-Prozesse der Desktop-App (die aelteste seit Vortag
#   23:11), fast im Stundentakt entstanden und nie beendet. Jede Session ist
#   ein eigener Node-Prozess (~200-300 MB RSS, Footprint mit Kompression und
#   Auslagerung deutlich hoeher), und die Electron-Oberflaeche haelt jedes
#   offene Transkript zusaetzlich im Renderer.
#
# Der Speicher-Waechter vom 28.07.2026 beendet aus gutem Grund keine
# Benutzer-Anwendungen — diese Luecke (haengende HEADLESS-Sessions) schliesst
# dieser Waechter mit engen, konservativen Kriterien:
#
#   1. Er beendet AUSSCHLIESSLICH Prozesse der Desktop-App-Sessions
#      (Pfadmuster "Application Support/Claude/claude-code/.../MacOS/claude").
#      Nie die App selbst, nie CLI-Laeufe (claude-run.sh, dispatch-run.sh),
#      nie andere Anwendungen.
#   2. Beendet wird nur, was ALT ist (Default 8 h; SESSION_MAX_STD) oder
#      VERWAIST (PPID 1, aelter als 1 h) — und nie ein Prozess, der gerade
#      aktiv rechnet (pcpu > 20 %) oder zum eigenen Prozessbaum gehoert.
#   3. App-Neustart nur als zweite Stufe: RSS-Summe der Claude-Familie ueber
#      Schwelle (Default 8 GB; CLAUDE_MAX_GB), NUR im Nachtfenster 03-06 Uhr,
#      und nur wenn keine Session juenger als 30 Min oder aktiv ist.
#
# Transkripte gehen dabei nie verloren — sie liegen persistent auf Disk und
# lassen sich in der App fortsetzen. Verloren geht nur der Prozess.
#
# Aufruf:  am Ende von speicher-waechter.sh (30-Min-Takt via launchd
#          ch.jans.speicher-waechter, beide Stationen) — bewusst KEIN eigener
#          launchd-Job (gleiche Begruendung wie beim Kontingent-Waechter).
#          Manuell: bash claude-session-waechter.sh   (TROCKEN=1 = nur zeigen)
# Log:     logbuch/speicher/<Station>-sessions.log auf dem NAS
# Regel:   rules/auto-verbesserungen.md Eintrag 260902
# ============================================================================

set -uo pipefail

STATION="$(hostname -s)"
LOGDIR="/Volumes/daten/jans-ai-hub/logbuch/speicher"
LOGFILE="$LOGDIR/${STATION}-sessions.log"

SESSION_MAX_STD="${SESSION_MAX_STD:-8}"     # Alter in Stunden, ab dem eine Session als haengend gilt
CLAUDE_MAX_GB="${CLAUDE_MAX_GB:-8}"         # RSS-Summe der Claude-Familie, ab der die App neu startet
TROCKEN="${TROCKEN:-0}"                     # 1 = nur berichten, nichts beenden

MUSTER="Application Support/Claude/claude-code/.*/MacOS/claude"

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
    [ "$TROCKEN" = "1" ] && echo "$*"
}

# --- etime ("[[D-]HH:]MM:SS") in Sekunden ------------------------------------
etime_sek() {
    echo "$1" | awk -F'[-:]' '{
        if (NF==4)      print $1*86400 + $2*3600 + $3*60 + $4
        else if (NF==3) print $1*3600 + $2*60 + $3
        else if (NF==2) print $1*60 + $2
        else            print 0
    }'
}

# --- Eigener Prozessbaum (nie sich selbst beenden) ---------------------------
EIGENE=""
P=$$
while [ "$P" != "1" ] && [ -n "$P" ]; do
    EIGENE="$EIGENE $P"
    P=$(ps -o ppid= -p "$P" 2>/dev/null | tr -d ' ')
done

ist_eigen() {
    case " $EIGENE " in *" $1 "*) return 0 ;; *) return 1 ;; esac
}

# ============================================================================
# Stufe 1: haengende Sessions beenden
# ============================================================================
MAX_SEK=$((SESSION_MAX_STD * 3600))
BEENDET=0
GEPRUEFT=0
KANDIDATEN=""

# Kandidaten einsammeln (pid|ppid|etime|pcpu), dann getrennt behandeln —
# nie im laufenden ps-Stream killen.
while IFS='|' read -r pid ppid et cpu; do
    [ -z "$pid" ] && continue
    GEPRUEFT=$((GEPRUEFT + 1))
    ist_eigen "$pid" && continue
    ALTER=$(etime_sek "$et")
    AKTIV=$(echo "$cpu" | awk '{print ($1 > 20) ? 1 : 0}')
    GRUND=""
    if [ "$ppid" = "1" ] && [ "$ALTER" -gt 3600 ]; then
        GRUND="verwaist (PPID 1), Alter ${et}"
    elif [ "$ALTER" -gt "$MAX_SEK" ]; then
        GRUND="aelter als ${SESSION_MAX_STD} h (${et})"
    fi
    [ -z "$GRUND" ] && continue
    if [ "$AKTIV" = "1" ]; then
        log "UEBERSPRUNGEN pid=$pid ($GRUND) — rechnet aktiv (${cpu}% CPU)."
        continue
    fi
    KANDIDATEN="$KANDIDATEN $pid"
    PRAEFIX=""; [ "$TROCKEN" = "1" ] && PRAEFIX="TROCKEN: "
    log "${PRAEFIX}beende pid=$pid — $GRUND"
done < <(ps -axo pid=,ppid=,etime=,pcpu=,command= \
         | grep -E "$MUSTER" | grep -v grep \
         | awk '{printf "%s|%s|%s|%s\n", $1, $2, $3, $4}')

if [ "$TROCKEN" != "1" ] && [ -n "$KANDIDATEN" ]; then
    for pid in $KANDIDATEN; do
        kill "$pid" 2>/dev/null && BEENDET=$((BEENDET + 1))
    done
    sleep 5
    for pid in $KANDIDATEN; do
        kill -0 "$pid" 2>/dev/null && kill -9 "$pid" 2>/dev/null \
            && log "pid=$pid reagierte nicht auf TERM — SIGKILL."
    done
    log "Stufe 1: $BEENDET von $GEPRUEFT Sessions beendet."
fi

# ============================================================================
# Stufe 2: App-Neustart bei aufgeblaehter Claude-Familie (nur Nachtfenster)
# ============================================================================
RSS_MB=$(ps -axo rss=,command= \
         | grep -E "(/Applications/Claude.app/|$MUSTER)" | grep -v grep \
         | awk '{sum+=$1} END {printf "%d", sum/1024}')
STUNDE=$(date '+%H')

if [ "${RSS_MB:-0}" -gt $((CLAUDE_MAX_GB * 1024)) ]; then
    if [ "$STUNDE" -ge 3 ] && [ "$STUNDE" -lt 6 ]; then
        # Ruhe-Kriterium: keine Session juenger als 30 Min und keine aktive.
        UNRUHIG=$(ps -axo etime=,pcpu=,command= \
                  | grep -E "$MUSTER" | grep -v grep \
                  | awk '{n=split($1,t,"[-:]"); sek=0; for(i=1;i<=n;i++) sek=sek*((i==1&&n==4)?1:60)+t[i];
                          if (n==4) sek=t[1]*86400+t[2]*3600+t[3]*60+t[4];
                          if (sek < 1800 || $2 > 20) print "x"}' | head -1)
        if [ -z "$UNRUHIG" ]; then
            if [ "$TROCKEN" = "1" ]; then
                log "TROCKEN: App-Neustart faellig (RSS ${RSS_MB} MB > ${CLAUDE_MAX_GB} GB, Nachtfenster, ruhig)."
            else
                log "Claude-Familie ${RSS_MB} MB RSS > ${CLAUDE_MAX_GB} GB — App-Neustart (Nachtfenster)."
                osascript -e 'tell application id "com.anthropic.claudefordesktop" to quit' >/dev/null 2>&1
                sleep 15
                pgrep -x "Claude" >/dev/null 2>&1 && pkill -x "Claude" 2>/dev/null && sleep 5
                open -b com.anthropic.claudefordesktop >/dev/null 2>&1
                sleep 10
                pgrep -x "Claude" >/dev/null 2>&1 \
                    && log "App neu gestartet." \
                    || log "WARNUNG: App-Neustart fehlgeschlagen — Claude laeuft nicht."
            fi
        else
            log "RSS ${RSS_MB} MB ueber Schwelle, aber Sessions juenger 30 Min oder aktiv — kein Neustart."
        fi
    else
        log "RSS ${RSS_MB} MB ueber Schwelle ${CLAUDE_MAX_GB} GB — Neustart wartet aufs Nachtfenster 03-06 Uhr."
    fi
fi

# Still-by-default: unauffaelliger Lauf schreibt hoechstens eine Lebendzeile/Tag.
if [ "$BEENDET" -eq 0 ] && [ "$TROCKEN" != "1" ]; then
    LETZTE=$(tail -1 "$LOGFILE" 2>/dev/null | cut -c1-10)
    HEUTE=$(date '+%Y-%m-%d')
    [ "$LETZTE" != "$HEUTE" ] && log "OK — $GEPRUEFT Sessions, keine haengend; Claude-Familie ${RSS_MB:-?} MB RSS."
fi

exit 0
