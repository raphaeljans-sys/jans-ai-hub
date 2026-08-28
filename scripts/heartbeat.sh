#!/bin/bash
# =============================================================================
# JANS AI Hub — Heartbeat Script
# Prüft alle kritischen System-Komponenten und gibt JSON + Text-Report aus
# =============================================================================
# Verwendung: bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh
#             bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh --json
# =============================================================================

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
JSON_MODE=false
REPO_DIR="$HOME/Developer/jans-ai-hub"
NAS_BASE="/Volumes/daten/jans-ai-hub"

# Argumente
if [[ "$1" == "--json" ]]; then
    JSON_MODE=true
fi

# -----------------------------------------------------------------------------
# Tageslauf-Lock: verhindert 2-3 redundante Heartbeats pro Tag.
# (Analyse 06/2026: an mehreren Tagen lief der Heartbeat 3x.)
# Mit --force erzwingbar; im --json-Modus deaktiviert (maschinelle Aufrufe).
# -----------------------------------------------------------------------------
LOCK_FILE="$HOME/.claude/.heartbeat-lastrun"
if [[ "$1" != "--force" && "$JSON_MODE" == false ]]; then
    if [[ -f "$LOCK_FILE" && "$(cat "$LOCK_FILE" 2>/dev/null)" == "$(date '+%Y-%m-%d')" ]]; then
        echo "🟢 Heartbeat heute bereits gelaufen — übersprungen (bash heartbeat.sh --force zum Erzwingen)."
        exit 0
    fi
    date '+%Y-%m-%d' > "$LOCK_FILE" 2>/dev/null || true
fi

# Status-Variablen
nas_ok=false
nas_msg=""
git_ok=false
git_msg=""
m365_ok=false
m365_msg=""
disk_ok=false
disk_msg=""
sync_ok=false
sync_msg=""
symlinks_ok=false
symlinks_msg=""

# =============================================================================
# 1. NAS-Mount prüfen
# =============================================================================
if ls "$NAS_BASE/" > /dev/null 2>&1; then
    nas_ok=true
    nas_msg="✅ /Volumes/daten erreichbar"
else
    nas_ok=false
    nas_msg="❌ NAS nicht gemountet — versuche: open smb://192.168.1.10/daten"
    # Automatisch versuchen zu mounten
    open smb://192.168.1.10/daten 2>/dev/null
    sleep 5
    if ls "$NAS_BASE/" > /dev/null 2>&1; then
        nas_ok=true
        nas_msg="✅ /Volumes/daten erreichbar (neu gemountet)"
    fi
fi

# =============================================================================
# 2. Git-Status prüfen
# =============================================================================
if [ -d "$REPO_DIR/.git" ]; then
    GIT_STATUS=$(cd "$REPO_DIR" && git status --short 2>/dev/null)
    GIT_BRANCH=$(cd "$REPO_DIR" && git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ -z "$GIT_STATUS" ]; then
        git_ok=true
        git_msg="✅ Clean (Branch: $GIT_BRANCH)"
    else
        FILE_COUNT=$(echo "$GIT_STATUS" | wc -l | tr -d ' ')
        git_ok=true  # Dirty ist kein Fehler, nur Info
        git_msg="⚠️  $FILE_COUNT uncommitted file(s) (Branch: $GIT_BRANCH)"
    fi
else
    git_ok=false
    git_msg="❌ Git-Repo nicht gefunden: $REPO_DIR"
fi

# =============================================================================
# 3. M365-Connector prüfen
# =============================================================================
if command -v npx > /dev/null 2>&1; then
    # macOS-kompatibles Timeout: gtimeout (coreutils) falls vorhanden, sonst perl-Fallback
    if command -v gtimeout > /dev/null 2>&1; then
        M365_OUTPUT=$(cd "$REPO_DIR" && gtimeout 20 npx m365 status --output text 2>/dev/null)
    else
        M365_OUTPUT=$(cd "$REPO_DIR" && perl -e 'alarm shift; exec @ARGV' 20 npx m365 status --output text 2>/dev/null)
    fi
    if echo "$M365_OUTPUT" | grep -q "^connectedAs"; then
        ACCOUNT=$(echo "$M365_OUTPUT" | grep "^connectedAs" | sed 's/^connectedAs[[:space:]]*:[[:space:]]*//')
        m365_ok=true
        m365_msg="✅ Connected${ACCOUNT:+ as $ACCOUNT}"
    elif echo "$M365_OUTPUT" | grep -qi "logged out\|not logged\|no connection"; then
        m365_ok=false
        m365_msg="❌ Disconnected — login mit: npx m365 login --authType certificate --certificateFile ~/.cli-m365-cert-combined.pem --appId 80c24101-4597-48db-8388-c6e8bdc75f5f --tenant d3ea8e1a-8ecc-479d-b831-6c0784ee0b51"
    else
        m365_ok=false
        m365_msg="⚠️  Status unbekannt (Timeout oder Fehler)"
    fi
else
    m365_ok=false
    m365_msg="⚠️  npx nicht gefunden — Node.js installiert?"
fi

# =============================================================================
# 4. Disk Space prüfen
# =============================================================================
DISK_AVAIL_KB=$(df "$HOME" 2>/dev/null | tail -1 | awk '{print $4}')
if [ -n "$DISK_AVAIL_KB" ] && [ "$DISK_AVAIL_KB" -gt 0 ] 2>/dev/null; then
    DISK_AVAIL_GB=$(echo "scale=1; $DISK_AVAIL_KB / 1048576" | bc 2>/dev/null || echo "?")
    DISK_TOTAL_KB=$(df "$HOME" 2>/dev/null | tail -1 | awk '{print $2}')
    DISK_TOTAL_GB=$(echo "scale=0; $DISK_TOTAL_KB / 1048576" | bc 2>/dev/null || echo "?")

    if [ "$DISK_AVAIL_KB" -gt 10485760 ]; then  # > 10 GB
        disk_ok=true
        disk_msg="✅ ${DISK_AVAIL_GB} GB frei (von ${DISK_TOTAL_GB} GB)"
    elif [ "$DISK_AVAIL_KB" -gt 5242880 ]; then  # > 5 GB
        disk_ok=true
        disk_msg="⚠️  ${DISK_AVAIL_GB} GB frei (von ${DISK_TOTAL_GB} GB) — Speicher wird knapp"
    else
        disk_ok=false
        disk_msg="❌ ${DISK_AVAIL_GB} GB frei — Aufräumen nötig!"
    fi
else
    disk_ok=false
    disk_msg="⚠️  Disk Space konnte nicht ermittelt werden"
fi

# =============================================================================
# 5. Sync-Tasks prüfen (nur wenn NAS erreichbar)
# =============================================================================
if $nas_ok; then
    # Hostname ermitteln um eigene Tasks zu prüfen
    HOSTNAME_LOWER=$(hostname | tr '[:upper:]' '[:lower:]')

    # Beide Queues prüfen. Zählweise identisch zu sync-task-check.sh: nur *.md
    # direkt in der Queue. Ein `ls` würde Hilfsordner wie sync-tasks/<station>/scripts/
    # als Task zählen (Fehlalarm bis 13.08.2026).
    TASKS_MBP=$(find "$NAS_BASE/sync-tasks/macbook-pro" -maxdepth 1 -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
    TASKS_MINI=$(find "$NAS_BASE/sync-tasks/mac-mini" -maxdepth 1 -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')

    # Zurückgehaltene Tasks (Freigabe-Schwelle) separat: sie warten auf Raphaels
    # Einzelfreigabe, /station-sync arbeitet sie NICHT ab.
    FREI_MBP=$(find "$NAS_BASE/sync-tasks/freigabe/macbook-pro" -maxdepth 1 -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
    FREI_MINI=$(find "$NAS_BASE/sync-tasks/freigabe/mac-mini" -maxdepth 1 -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')

    TOTAL_TASKS=$((TASKS_MBP + TASKS_MINI))
    TOTAL_FREI=$((FREI_MBP + FREI_MINI))

    if [ "$TOTAL_TASKS" -eq 0 ] && [ "$TOTAL_FREI" -eq 0 ]; then
        sync_ok=true
        sync_msg="✅ Keine offenen Sync-Tasks"
    elif [ "$TOTAL_TASKS" -eq 0 ]; then
        sync_ok=false
        sync_msg="⚠️  $TOTAL_FREI Task(s) in Freigabe — MBP: $FREI_MBP, Mini: $FREI_MINI → sync-task-check.sh --freigeben"
    elif [ "$TOTAL_FREI" -eq 0 ]; then
        sync_ok=false
        sync_msg="⚠️  $TOTAL_TASKS offene Task(s) — MBP: $TASKS_MBP, Mini: $TASKS_MINI → /station-sync ausführen"
    else
        sync_ok=false
        sync_msg="⚠️  $TOTAL_TASKS offen (MBP $TASKS_MBP / Mini $TASKS_MINI) + $TOTAL_FREI in Freigabe (MBP $FREI_MBP / Mini $FREI_MINI)"
    fi
else
    sync_ok=false
    sync_msg="⚠️  Nicht prüfbar (NAS nicht erreichbar)"
fi

# =============================================================================
# 6. Symlinks prüfen
# =============================================================================
SYMLINK_ERRORS=()

for dir in skills agents commands; do
    LINK="$REPO_DIR/.claude/$dir"
    if [ -L "$LINK" ]; then
        if [ -d "$LINK" ]; then
            : # OK
        else
            SYMLINK_ERRORS+=("$dir (broken)")
        fi
    elif [ -d "$LINK" ]; then
        : # Normaler Ordner, kein Symlink — auch OK
    else
        SYMLINK_ERRORS+=("$dir (fehlt)")
    fi
done

if [ ${#SYMLINK_ERRORS[@]} -eq 0 ]; then
    symlinks_ok=true
    symlinks_msg="✅ skills / agents / commands OK"
else
    symlinks_ok=false
    symlinks_msg="❌ Probleme: ${SYMLINK_ERRORS[*]} → bash $REPO_DIR/scripts/setup-nas-skills.sh"
fi

# =============================================================================
# Produktions-Bereitschaft (Dokument-Pipeline) — die häufigste echte Stör-Ursache
# =============================================================================
prod_ok=true
prod_msg=""
if command -v soffice >/dev/null 2>&1 || [ -x "/Applications/LibreOffice.app/Contents/MacOS/soffice" ]; then
    if python3 -c "import docx" >/dev/null 2>&1; then
        prod_msg="✅ DOCX→PDF-Pipeline bereit (soffice + python-docx)"
    else
        prod_ok=false
        prod_msg="⚠️  python-docx fehlt → pip3 install python-docx"
    fi
else
    prod_ok=false
    prod_msg="⚠️  soffice fehlt → brew install --cask libreoffice"
fi

# =============================================================================
# Schutzmechanik — Freigabe- UND Abweisungspfad (Maintainer-Rolle)
# =============================================================================
# Eine Schutzmechanik, die immer "nein" sagt, sieht im Log aus wie eine, die
# funktioniert (Lehre 28.07.2026). Der Selbsttest prueft beide Richtungen und
# haengt hier im bestehenden Health-Check statt in einem eigenen Feuermechanismus.
schutz_ok=true
schutz_msg=""
SELBSTTEST="/Volumes/daten/jans-ai-hub/scripts/schutzmechanik-selbsttest.sh"
if [ -f "$SELBSTTEST" ]; then
    if schutz_out=$(bash "$SELBSTTEST" 2>&1); then
        schutz_msg="✅ Schutzmechanik-Selbsttest bestanden (Gate beide Pfade, Waechter, Drift)"
    else
        schutz_ok=false
        schutz_msg="⚠️  Schutzmechanik-Selbsttest: $(printf '%s' "$schutz_out" | grep -c 'BEFUND') Befund(e) → bash scripts/schutzmechanik-selbsttest.sh"
    fi
else
    schutz_ok=false
    schutz_msg="⚠️  schutzmechanik-selbsttest.sh fehlt"
fi

# =============================================================================
# Erreichbarkeit von aussen (Tailscale) — P1-Klasse nach Rule 260824
# =============================================================================
# «laeuft» und «ist erreichbar» sind ZWEI Messungen. Frische Statusdateien und
# Herzschlag-Stempel beweisen nur das Erste: sie werden ueber den LAN-Mount
# geschrieben und bleiben gruen, waehrend die Station von auswaerts unerreichbar
# ist. Genau so blieb der Mac Mini vom 20. bis 24.08.2026 vier Tage lang vom
# Tailnet getrennt, viermal korrekt gemessen und nie gemeldet. Darum hier
# getrennt: Daemon laeuft · Peer-Station erreichbar · Waechter installiert.
reach_ok=true
reach_msg=""
TS_BIN="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
REACH_TEILE=()
if [ -x "$TS_BIN" ]; then
    ts_out=$("$TS_BIN" status 2>&1)
    if [ $? -eq 0 ] && ! printf '%s' "$ts_out" | grep -q "Tailscale is stopped"; then
        REACH_TEILE+=("Tailscale aktiv")
        # Peer = die jeweils andere Always-On-Station
        case "$(hostname -s)" in
            [Mm]acmini) PEER="macbookpro" ;;
            *)          PEER="macmini" ;;
        esac
        PEER_ZEILE=$(printf '%s\n' "$ts_out" | grep -w -- "$PEER" | head -1)
        if [ -z "$PEER_ZEILE" ]; then
            reach_ok=false
            REACH_TEILE+=("$PEER nicht im Tailnet")
        elif printf '%s' "$PEER_ZEILE" | grep -q "offline"; then
            reach_ok=false
            REACH_TEILE+=("$PEER OFFLINE — Fernzugang tot (ssh/Dispatch/externer Mount)")
        else
            REACH_TEILE+=("$PEER online")
        fi
    else
        reach_ok=false
        REACH_TEILE+=("Tailscale GESTOPPT → Menuleiste «Connect», danach Ursache klaeren")
    fi
else
    reach_ok=false
    REACH_TEILE+=("Tailscale-CLI nicht gefunden")
fi
# Waechter installiert? Gegenmassnahme aus Rule 260824; die Installation selbst
# ist Persistenz-Klasse (Rule interaktive-eingriffe) und bleibt Aktion Raphael.
if launchctl list 2>/dev/null | grep -q "ch.jans.tailscale-waechter"; then
    REACH_TEILE+=("Waechter aktiv")
else
    reach_ok=false
    REACH_TEILE+=("Waechter NICHT installiert")
fi
# Join mit « · »: "${arr[*]}" nutzt nur das ERSTE IFS-Zeichen, darum von Hand.
REACH_TEXT=""
for teil in "${REACH_TEILE[@]}"; do
    if [ -z "$REACH_TEXT" ]; then REACH_TEXT="$teil"; else REACH_TEXT="$REACH_TEXT · $teil"; fi
done
if $reach_ok; then
    reach_msg="✅ $REACH_TEXT"
else
    reach_msg="⚠️  $REACH_TEXT"
fi

# =============================================================================
# Gesamt-Status ermitteln
# =============================================================================
CRITICAL_FAIL=false
WARNINGS=false

if ! $nas_ok || ! $git_ok || ! $disk_ok || ! $symlinks_ok; then
    CRITICAL_FAIL=true
fi
if ! $m365_ok || ! $sync_ok || ! $schutz_ok || ! $reach_ok; then
    WARNINGS=true
fi

if $CRITICAL_FAIL; then
    OVERALL="❌ PROBLEME GEFUNDEN"
elif $WARNINGS; then
    OVERALL="⚠️  WARNUNGEN"
else
    OVERALL="✅ Alles OK"
fi

# =============================================================================
# Output
# =============================================================================
if $JSON_MODE; then
    # JSON Output
    cat << JSON
{
  "timestamp": "$TIMESTAMP",
  "overall": "$(echo $OVERALL | sed 's/[^a-zA-Z_ ]//g' | xargs)",
  "checks": {
    "nas": {"ok": $nas_ok, "message": "$nas_msg"},
    "git": {"ok": $git_ok, "message": "$git_msg"},
    "m365": {"ok": $m365_ok, "message": "$m365_msg"},
    "disk": {"ok": $disk_ok, "message": "$disk_msg"},
    "sync_tasks": {"ok": $sync_ok, "message": "$sync_msg"},
    "symlinks": {"ok": $symlinks_ok, "message": "$symlinks_msg"},
    "schutzmechanik": {"ok": $schutz_ok, "message": "$schutz_msg"},
    "erreichbarkeit": {"ok": $reach_ok, "message": "$reach_msg"}
  },
  "critical_failures": $CRITICAL_FAIL,
  "warnings": $WARNINGS
}
JSON
else
    # Text Output
    echo ""
    echo "🔵 JANS AI Hub — Heartbeat [$TIMESTAMP]"
    echo "─────────────────────────────────────────────"
    printf "NAS-Mount:      %s\n" "$nas_msg"
    printf "Git-Status:     %s\n" "$git_msg"
    printf "M365-Connector: %s\n" "$m365_msg"
    printf "Disk Space:     %s\n" "$disk_msg"
    printf "Sync-Tasks:     %s\n" "$sync_msg"
    printf "Symlinks:       %s\n" "$symlinks_msg"
    printf "Dok-Pipeline:   %s\n" "$prod_msg"
    printf "Schutzmechanik: %s\n" "$schutz_msg"
    printf "Erreichbarkeit: %s\n" "$reach_msg"
    echo "─────────────────────────────────────────────"
    echo "STATUS: $OVERALL"
    echo ""
fi

# Exit-Code: 0 = OK/Warnungen, 1 = kritische Fehler
if $CRITICAL_FAIL; then
    exit 1
else
    exit 0
fi
