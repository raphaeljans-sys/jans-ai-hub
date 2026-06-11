#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task Auto-Runner  (Pendenzen pro Geraet, 30-Min-Poll)
# ============================================================================
# Fuehrt alle offenen Pendenzen der EIGENEN Station unbeaufsichtigt aus.
# Aufgerufen von launchd (alle 1800 s), manuell, oder via /station-sync.
#
#   sync-tasks/<station>/*.md  →  ausfuehren  →  sync-tasks/done/
#
# Task-Typen (Frontmatter-Feld `typ:`):
#   typ: shell   (Default) → der ```bash```-Block wird via eval ausgefuehrt
#   typ: prompt            → der Body wird an dispatch-run.sh (headless claude -p,
#                            voller JANS-Harness) uebergeben. Laeuft NUR auf dem
#                            Mac Mini — die Host-Weiche im dispatch-run.sh blockt
#                            andere Stationen automatisch (Pendenz bleibt liegen).
#
# Sicherheits-Modell: Es laufen nur Tasks, die auf einer vertrauten Station
# (Mac Mini / MacBook) bzw. von Claude in die NAS-Queue gelegt wurden — dieselbe
# Vertrauensbasis wie das manuelle /station-sync --run. Pro Station eine eigene
# Queue → keine Kollision zwischen den Geraeten.
# ============================================================================

set -uo pipefail

REPO_NAS="/Volumes/daten/jans-ai-hub"
if [ ! -d "$REPO_NAS/sync-tasks" ]; then
    # NAS nicht gemountet → still beenden. ABER: Ist /Volumes/daten laut
    # Mount-Tabelle gemountet und trotzdem nicht lesbar, blockiert TCC den
    # launchd-bash (Festplattenvollzugriff fehlt) — das darf nicht still bleiben.
    if mount | grep -q " /Volumes/daten "; then
        echo "$(date '+%F %T') FDA-VERDACHT: /Volumes/daten gemountet, aber fuer launchd-bash nicht lesbar — /bin/bash braucht Festplattenvollzugriff (bash ~/Developer/jans-ai-hub/scripts/check-launchd-fda.sh)" \
            >> "$HOME/Library/Logs/jans-synctask-runner.err.log" 2>/dev/null
    fi
    exit 0
fi

# --- Station erkennen ---------------------------------------------------------
# 1. Prioritaet: explizite Identitaet in ~/.jans-station (gesetzt von neue-station.sh)
#    → skaliert auf beliebig viele Stationen ohne Hardware-Raterei.
# 2. Fallback: Hardware-Modell (Bestandsstationen Mac Mini / MacBook Pro).
if [ -f "$HOME/.jans-station" ]; then
    STATION=$(head -1 "$HOME/.jans-station" | tr -cd 'a-z0-9-')
fi
if [ -z "${STATION:-}" ]; then
    MODEL=$(sysctl -n hw.model 2>/dev/null || echo unknown)
    case "$MODEL" in
        Macmini*)                STATION="mac-mini" ;;
        MacBookPro*|MacBookAir*) STATION="macbook-pro" ;;
        *) case "$(hostname -s)" in
               *[Mm]ini*) STATION="mac-mini" ;;
               *)         STATION="macbook-pro" ;;
           esac ;;
    esac
fi

QUEUE="$REPO_NAS/sync-tasks/$STATION"
DONE="$REPO_NAS/sync-tasks/done"
LOGDIR="$REPO_NAS/sync-tasks/log"
DISPATCH="$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh"

mkdir -p "$QUEUE" 2>/dev/null   # Queue der eigenen Station existiert immer (neue Stationen)

mkdir -p "$LOGDIR" 2>/dev/null
LOG="$LOGDIR/runner-$(date +%Y%m).log"
log() { echo "$(date -Iseconds) [$STATION] $*" >> "$LOG"; }

# --- Lock gegen Ueberlappung (zwei Laeufe gleichzeitig) ---------------------
LOCK="/tmp/jans-synctask-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Lauf bereits aktiv — uebersprungen"
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# --- Commit-Anfragen konsumieren (NUR Committer-Station) ---------------------
# Nicht-Committer-Stationen legen via nas-git-commit.sh eine commit-*.task ab.
# Die Committer-Station (Mac Mini, always-on) arbeitet sie hier automatisch ab:
# EIN serialisierter Commit+Push des NAS-Repos deckt alle Anfragen ab.
# → Wissen (wissen/, rules/, skills/, agents/) ist max. ~30 Min nach Entstehung
#   auf GitHub gesichert und via git pull auf allen Stationen aktuell.
shopt -s nullglob
if [ "$STATION" = "mac-mini" ] && [ ! -f "$HOME/.jans-git-committer" ]; then
    touch "$HOME/.jans-git-committer"   # Mini ist designierter Committer (Architektur-Entscheid 260602)
fi
CTASKS=("$QUEUE"/commit-*.task)
if [ ${#CTASKS[@]} -gt 0 ] && [ -f "$HOME/.jans-git-committer" ]; then
    log "Commit-Anfragen: ${#CTASKS[@]} — fuehre nas-git-commit.sh aus"
    MSGS=$(grep -h '^Message:' "${CTASKS[@]}" 2>/dev/null | cut -d: -f2- | sed 's/^ *//' | sort -u | head -5 | paste -sd '; ' -)
    if bash "$REPO_NAS/scripts/nas-git-commit.sh" "sync: ${MSGS:-gesammelte Commit-Anfragen}" >> "$LOG" 2>&1; then
        for CT in "${CTASKS[@]}"; do mv "$CT" "$DONE/$(basename "$CT")" 2>/dev/null; done
        log "Commit-Anfragen erledigt → done/"
    else
        log "nas-git-commit.sh fehlgeschlagen — Anfragen bleiben in Queue"
    fi
fi

# --- Offene Pendenzen sammeln -----------------------------------------------
TASKS=("$QUEUE"/*.md)
[ ${#TASKS[@]} -eq 0 ] && exit 0

log "Start — ${#TASKS[@]} Pendenz(en) fuer $STATION"

for TASK in "${TASKS[@]}"; do
    BN=$(basename "$TASK")
    TITEL=$(grep -m1 '^titel:' "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=$(grep -m1 '^typ:'   "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=${TYP:-shell}
    log "→ [$TYP] ${TITEL:-$BN}"

    OK=1
    if [ "$TYP" = "prompt" ]; then
        # Body = alles nach dem zweiten '---' (die Anweisung in Worten)
        BODY=$(awk 'f; /^---$/ { c++; if (c==2) f=1 }' "$TASK")
        if [ -f "$DISPATCH" ]; then
            if printf '%s\n' "$BODY" | bash "$DISPATCH" >> "$LOG" 2>&1; then OK=1; else OK=0; fi
        else
            log "  dispatch-run.sh fehlt auf dieser Station — prompt-Pendenz uebersprungen"
            OK=0
        fi
    else
        SCRIPT=$(sed -n '/^```bash$/,/^```$/p' "$TASK" | grep -v '```')
        if [ -n "$SCRIPT" ]; then
            # /tmp ist stationslokal — fehlende Referenzen ins Log (Alt-Format vor
            # Fix 11.06.2026; neue Tasks betten Inhalt ein oder nutzen NAS-Pfade)
            for PFAD in $(printf '%s\n' "$SCRIPT" | grep -oE '(/private)?/tmp/[A-Za-z0-9._/-]+' | sort -u); do
                [ -e "$PFAD" ] || log "  WARNUNG: referenziert $PFAD — existiert auf $STATION nicht (/tmp ist stationslokal)"
            done
            if eval "$SCRIPT" >> "$LOG" 2>&1; then OK=1; else OK=0; fi
        else
            log "  kein Bash-Block gefunden — uebersprungen"
            OK=0
        fi
    fi

    if [ "$OK" = "1" ]; then
        mv "$TASK" "$DONE/$BN" && log "  erledigt → done/$BN"
    else
        log "  fehlgeschlagen — bleibt in Queue (naechster Lauf versucht erneut)"
    fi
done

log "Ende"
