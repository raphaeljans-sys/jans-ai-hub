#!/bin/bash
# JANS AI Hub - Auto-Sync Script
# Synchronisiert das Repository automatisch mit GitHub.
# Wird per launchd alle 5 Minuten ausgefuehrt.
#
# Logik:
# 1. Pull (mit rebase, um merge-commits zu vermeiden)
# 2. Falls lokale Aenderungen: auto-commit und push
# 3. Bei Konflikten: nichts tun, Benutzer muss manuell loesen

REPO_DIR="$HOME/Developer/jans-ai-hub"
LOG_FILE="$REPO_DIR/.git/auto-sync.log"
MAX_LOG_LINES=500

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') $1" >> "$LOG_FILE"
}

# Log-Datei kuerzen wenn zu gross
if [ -f "$LOG_FILE" ] && [ "$(wc -l < "$LOG_FILE")" -gt "$MAX_LOG_LINES" ]; then
    tail -n 200 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
fi

cd "$REPO_DIR" || { log "FEHLER: Repo-Verzeichnis nicht gefunden"; exit 1; }

# Pruefen ob wir in einem Git-Repo sind
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    log "FEHLER: Kein Git-Repository"
    exit 1
fi

# Pruefen ob ein Merge/Rebase laeuft — dann nichts tun
if [ -d .git/rebase-merge ] || [ -d .git/rebase-apply ] || [ -f .git/MERGE_HEAD ]; then
    log "SKIP: Merge/Rebase aktiv, ueberspringe Sync"
    exit 0
fi

# Pruefen ob Netzwerk verfuegbar (GitHub erreichbar)
if ! ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -p 443 -T git@ssh.github.com 2>&1 | grep -q "successfully authenticated"; then
    log "SKIP: GitHub nicht erreichbar"
    exit 0
fi

# 1. Pull mit Rebase
PULL_OUTPUT=$(git pull --rebase --autostash 2>&1)
PULL_EXIT=$?

if [ $PULL_EXIT -ne 0 ]; then
    log "FEHLER bei pull: $PULL_OUTPUT"
    # Rebase abbrechen falls gestartet
    git rebase --abort 2>/dev/null
    exit 1
fi

if echo "$PULL_OUTPUT" | grep -q "Already up to date"; then
    : # Nichts zu tun
else
    log "PULL: $PULL_OUTPUT"
fi

# 2. Lokale Aenderungen committen
if [ -n "$(git status --porcelain)" ]; then
    HOSTNAME=$(scutil --get LocalHostName 2>/dev/null || hostname -s)
    CHANGED_FILES=$(git status --porcelain | head -5 | awk '{print $2}' | tr '\n' ', ' | sed 's/,$//')
    TOTAL_CHANGES=$(git status --porcelain | wc -l | tr -d ' ')

    git add -A
    COMMIT_MSG="auto-sync [$HOSTNAME]: $CHANGED_FILES"
    if [ "$TOTAL_CHANGES" -gt 5 ]; then
        COMMIT_MSG="auto-sync [$HOSTNAME]: $TOTAL_CHANGES Dateien geaendert"
    fi

    git commit -m "$COMMIT_MSG" > /dev/null 2>&1
    log "COMMIT: $COMMIT_MSG"
fi

# 3. Push falls noetig
LOCAL=$(git rev-parse HEAD 2>/dev/null)
REMOTE=$(git rev-parse @{u} 2>/dev/null)

if [ "$LOCAL" != "$REMOTE" ]; then
    PUSH_OUTPUT=$(git push 2>&1)
    PUSH_EXIT=$?
    if [ $PUSH_EXIT -eq 0 ]; then
        log "PUSH: OK"
    else
        log "FEHLER bei push: $PUSH_OUTPUT"
    fi
fi
