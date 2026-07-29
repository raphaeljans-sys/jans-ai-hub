#!/bin/bash
# wissens-trigger.sh — Ereignis-Trigger fuer gesaettigte Lern-Loops
#
# Entscheid Raphael 26.07.2026: KBs, die Saettigung gemeldet haben, laufen nicht mehr im
# Zeittakt (Vollgas-Endlos-Runner / Cron), sondern nur noch, wenn ihr QUELLMATERIAL sich
# tatsaechlich geaendert hat. Hintergrund: energie meldete am 25.07. die vierte
# Saettigungsbestaetigung in Folge (Runs 105-108), planungsgrundlagen den 17. Nullbefund —
# beide zyklierten trotzdem alle ~20 Minuten weiter.
#
# Wirkungsweise: je KB einen Fingerabdruck der Quellordner bilden (Anzahl Dateien, neuester
# Aenderungszeitpunkt, Gesamtgroesse). Weicht er vom gespeicherten Stand ab, wird der
# zugehoerige Trainings-Task EINMAL gefahren und der Stand fortgeschrieben. Ist er gleich,
# passiert nichts — kein Token, kein Lauf, kein Log-Rauschen.
#
# Die betroffenen Tasks tragen `enabled: false` in ihrer SKILL.md und werden damit vom
# Vollgas-Runner UND vom Cron uebersprungen. Dieses Script ist ihr einziger Startweg.
#
# Aufruf: bash scripts/wissens-trigger.sh [--dry-run] [--force <kb>]
# Getaktet ueber launchd (ch.jans.wissens-trigger), 1x taeglich.

set -uo pipefail

# launchd/ssh starten mit magerem PATH — dieselbe Aufloesung wie im vollgas-runner.
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.bun/bin:$HOME/.claude/local:$PATH"

# Abo-Anmeldung fuer den headless-Betrieb (NIE API-Key, wie im Runner).
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi
if [ -n "${ANTHROPIC_API_KEY:-}" ]; then
    unset ANTHROPIC_API_KEY
fi

REPO="/Volumes/daten/jans-ai-hub"
STATE_DIR="$REPO/logbuch/wissens-trigger"
LOG="$STATE_DIR/trigger.log"
TASKS_DIR="$HOME/.claude/scheduled-tasks"
HOST="$(scutil --get ComputerName 2>/dev/null | tr -d ' ' || hostname -s)"
SHAREPOINT="$HOME/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS"

DRY_RUN=0
FORCE_KB=""
while [ $# -gt 0 ]; do
    case "$1" in
        --dry-run) DRY_RUN=1; shift ;;
        --force)   FORCE_KB="${2:-}"; shift 2 ;;
        *) echo "Unbekannte Option: $1" >&2; exit 2 ;;
    esac
done

# --- Vorbedingungen -------------------------------------------------------
[ -d "$REPO" ] || { echo "NAS nicht gemountet — still beendet."; exit 0; }
mkdir -p "$STATE_DIR"

# --- Arbeitsverzeichnis: IM Projekt, nicht im Home ------------------------
# KORREKTUR 29.07.2026: Dieses Script hatte als einziger Feuermechanismus kein `cd`.
# Die launchd-Jobs setzen kein WorkingDirectory, also startete `claude` im Home-
# Verzeichnis — und `~` traegt in ~/.claude.json ausdruecklich
# hasTrustDialogAccepted:false. Folge: weder die 29 Eintraege aus
# .claude/settings.json noch die Projekt-CLAUDE.md wurden geladen. Belegt im eigenen
# Log am 27.07.2026 21:52: planungsgrundlagen-training endete nach 28 s mit rc=0 und
# einer RUECKFRAGE («Could you confirm: 1. Are you intentionally asking me to run this
# training pass right now …») statt mit Arbeit — der Loop verbuchte es als
# «1 Lauf ausgeloest». SSD-Klon bevorzugt (dort ist der Trust gesetzt, wie bei
# vollgas-runner und dispatch-run), NAS nur als Rueckfall.
WORKDIR="$HOME/Developer/jans-ai-hub"
[ -d "$WORKDIR/.git" ] || WORKDIR="$REPO"
cd "$WORKDIR" || { echo "cd $WORKDIR fehlgeschlagen — Abbruch."; exit 3; }

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" | tee -a "$LOG"; }

# Arbeitsverzeichnis protokollieren: ohne diese Zeile blieb unsichtbar, dass die
# Laeufe ausserhalb des Projekts starteten (siehe Kommentar oben).
log "Arbeitsverzeichnis: $WORKDIR"

CLAUDE_BIN="${CLAUDE_BIN:-claude}"
if ! command -v "$CLAUDE_BIN" >/dev/null 2>&1; then
    for p in "$HOME/.local/bin/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" \
             "$HOME/.claude/local/claude"; do
        [ -x "$p" ] && { CLAUDE_BIN="$p"; break; }
    done
fi
command -v "$CLAUDE_BIN" >/dev/null 2>&1 || [ -x "$CLAUDE_BIN" ] || {
    log "claude-CLI nicht gefunden — Abbruch."; exit 4; }

# --- Zuordnung KB -> Task -> Quellordner ----------------------------------
# Format: <kb>|<task-name>|<quellordner...(| getrennt)>
# Nur datei-getriebene KBs stehen hier. immobewertung laeuft ueber einen Stichtag
# (Marktpuls 01.09.2026, eigener One-Time-Task), spec laeuft nur auf Zuruf.
TRIGGERS=(
  "energie|energie-training|$SHAREPOINT/PL - 04 Energie"
  "planungsgrundlagen|planungsgrundlagen-training|$SHAREPOINT/PL - 01 Kartenportale|$SHAREPOINT/PL - 02_Recht_Norm|$SHAREPOINT/PL - 03 Brandschutz|$SHAREPOINT/PL - 04 Energie"
)

# Fingerabdruck eines Quellordner-Satzes: Dateizahl + neueste mtime + Gesamtgroesse.
# Bewusst kein Inhalts-Hash: ueber SMB/CloudStorage waere das zu teuer, und fuer die Frage
# «ist neues Material da?» genuegt die Metadaten-Ebene.
fingerprint() {
    local count=0 newest=0 bytes=0
    for dir in "$@"; do
        [ -d "$dir" ] || continue
        while IFS= read -r line; do
            local mtime size
            mtime="${line%% *}"; size="${line#* }"
            count=$((count + 1))
            bytes=$((bytes + size))
            [ "$mtime" -gt "$newest" ] && newest="$mtime"
        done < <(find "$dir" -type f ! -name '.*' -exec stat -f '%m %z' {} + 2>/dev/null)
    done
    echo "n=$count newest=$newest bytes=$bytes"
}

# --- Hauptschleife --------------------------------------------------------
GEFEUERT=0
for eintrag in "${TRIGGERS[@]}"; do
    IFS='|' read -r kb task rest <<< "$eintrag|"
    # Quellordner wieder einsammeln (alles ab Feld 3)
    IFS='|' read -r -a felder <<< "$eintrag"
    quellen=("${felder[@]:2}")

    skill="$TASKS_DIR/$task/SKILL.md"
    [ -f "$skill" ] || continue   # Task lebt auf der anderen Station

    [ -n "$FORCE_KB" ] && [ "$FORCE_KB" != "$kb" ] && continue

    # Erreichbarkeit pruefen: ein nicht gemounteter OneDrive-Ordner darf NIE als
    # «alles geloescht» durchgehen und einen Lauf ausloesen.
    erreichbar=0
    for d in "${quellen[@]}"; do [ -d "$d" ] && erreichbar=1; done
    if [ "$erreichbar" -eq 0 ]; then
        log "$kb: keine Quellordner erreichbar (OneDrive nicht gemountet?) — uebersprungen."
        continue
    fi

    neu="$(fingerprint "${quellen[@]}")"
    statefile="$STATE_DIR/$kb.state"
    alt="$(cat "$statefile" 2>/dev/null || echo "")"

    if [ "$neu" = "$alt" ] && [ -z "$FORCE_KB" ]; then
        log "$kb: unveraendert ($neu) — kein Lauf."
        continue
    fi

    if [ -z "$alt" ]; then
        # Erster Lauf: nur den Stand festhalten, NICHT feuern. Sonst loest die
        # Einfuehrung des Triggers selbst einmal alle Loops aus.
        echo "$neu" > "$statefile"
        log "$kb: Erst-Erfassung ($neu) — Stand gesichert, kein Lauf."
        continue
    fi

    log "$kb: Quellmaterial GEAENDERT — alt [$alt] neu [$neu] → Lauf $task"
    if [ "$DRY_RUN" -eq 1 ]; then
        log "$kb: --dry-run, kein Aufruf."
        continue
    fi

    # Zweitinstanz-Schutz (Rule 260724)
    if pgrep -f "name: $task" >/dev/null 2>&1; then
        log "$kb: laeuft bereits — zurueckgetreten, Stand NICHT fortgeschrieben."
        continue
    fi

    # Lauf-Gate: stationsweiter Prozess-Deckel (Rule speicher-deckel 28.07.2026).
    # Der Zweitinstanz-Schutz oben prueft nur denselben Task, nicht die
    # Gesamtauslastung der Station.
    GATE="$HOME/Developer/jans-ai-hub/scripts/lauf-gate.sh"
    [ -f "$GATE" ] || GATE="/Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh"
    if [ -f "$GATE" ] && ! bash "$GATE" "wissens-trigger-$kb"; then
        log "$kb: Lauf-Gate abgewiesen (Station ausgelastet) — uebersprungen."
        continue
    fi

    start=$(date +%s)
    # SDK-JSON seit 29.07.2026 (Anthropic-Lecture): Kennzahlen ins Lauf-Journal,
    # Rueckgabe hier weiterhin reiner Text.
    WRAP="$HOME/Developer/jans-ai-hub/scripts/claude-run.sh"
    [ -f "$WRAP" ] || WRAP="/Volumes/daten/jans-ai-hub/scripts/claude-run.sh"
    antwort="$(CLAUDE_BIN="$CLAUDE_BIN" bash "$WRAP" --name "wissens-trigger-$kb" \
        --perm acceptEdits --budget 50 -- "$(cat "$skill")" 2>/dev/null)"
    rc=$?
    dauer=$(( $(date +%s) - start ))
    log "$kb: ENDE $task (rc=$rc, ${dauer}s): $(echo "$antwort" | tail -c 400 | tr '\n' ' ')"

    # Stand nur bei erfolgreichem Lauf fortschreiben — sonst wird beim naechsten
    # Mal erneut versucht statt die Aenderung stillschweigend zu verlieren.
    if [ "$rc" -eq 0 ]; then
        echo "$neu" > "$statefile"
        GEFEUERT=$((GEFEUERT + 1))
    else
        log "$kb: rc=$rc — Stand NICHT fortgeschrieben, naechster Durchgang versucht erneut."
    fi
done

log "Durchgang beendet — $GEFEUERT Lauf/Laeufe ausgeloest."
