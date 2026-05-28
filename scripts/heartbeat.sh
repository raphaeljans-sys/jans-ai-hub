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

    # Beide Queues prüfen
    TASKS_MBP=$(ls "$NAS_BASE/sync-tasks/macbook-pro/" 2>/dev/null | grep -v "^$" | grep -v "^done$" | wc -l | tr -d ' ')
    TASKS_MINI=$(ls "$NAS_BASE/sync-tasks/mac-mini/" 2>/dev/null | grep -v "^$" | grep -v "^done$" | wc -l | tr -d ' ')

    TOTAL_TASKS=$((TASKS_MBP + TASKS_MINI))

    if [ "$TOTAL_TASKS" -eq 0 ]; then
        sync_ok=true
        sync_msg="✅ Keine offenen Sync-Tasks"
    else
        sync_ok=false
        sync_msg="⚠️  $TOTAL_TASKS offene Task(s) — MBP: $TASKS_MBP, Mini: $TASKS_MINI → /station-sync ausführen"
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
# Gesamt-Status ermitteln
# =============================================================================
CRITICAL_FAIL=false
WARNINGS=false

if ! $nas_ok || ! $git_ok || ! $disk_ok || ! $symlinks_ok; then
    CRITICAL_FAIL=true
fi
if ! $m365_ok || ! $sync_ok; then
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
    "symlinks": {"ok": $symlinks_ok, "message": "$symlinks_msg"}
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
