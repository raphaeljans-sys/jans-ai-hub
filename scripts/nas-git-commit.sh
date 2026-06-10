#!/bin/bash
# ---------------------------------------------------------------------------
# JANS AI Hub — sicherer Single-Committer fuer das NAS-Repo (Stopgap gg. SMB-Git-Kollision)
# ---------------------------------------------------------------------------
# Problem: Mehrere Stationen fuehren gleichzeitig Git auf /Volumes/daten/jans-ai-hub
# (SMB) aus -> index.lock-Korruption, haengende Rebases. Loesung bis zum NAS-nativen
# Git-Server: NUR die designierte Committer-Station committet/pusht das NAS-Repo,
# serialisiert (single-flight) und nur im sauberen Zustand. Andere Stationen legen
# einen Sync-Task ab.
#
# Verwendung:
#   bash nas-git-commit.sh "<commit-message>" [pfad ...]    # ohne Pfade -> git add -A
#
# Designierte Committer-Station (z.B. Mac Mini, always-on) EINMALIG markieren:
#   touch ~/.jans-git-committer
# ---------------------------------------------------------------------------
set -uo pipefail

NAS="/Volumes/daten/jans-ai-hub"
MARKER="$HOME/.jans-git-committer"
LOCKDIR="/tmp/jans-nas-git.lockd"
STALE_S=900   # Lock aelter als 15 min gilt als verwaist

MSG="${1:-auto-commit JANS AI Hub}"; [ $# -gt 0 ] && shift
PATHS=("$@")

say() { echo "[nas-git-commit] $*"; }

[ -d "$NAS/.git" ] || { say "NAS-Repo nicht gefunden ($NAS) — NAS gemountet?"; exit 1; }

# --- single-flight: atomarer mkdir-Lock mit Stale-Uebernahme (macOS hat kein flock) ---
if ! mkdir "$LOCKDIR" 2>/dev/null; then
    if [ -d "$LOCKDIR" ]; then
        AGE=$(( $(date +%s) - $(stat -f %m "$LOCKDIR" 2>/dev/null || echo 0) ))
        if [ "$AGE" -gt "$STALE_S" ]; then
            say "verwaisten Lock (${AGE}s) uebernommen"; rmdir "$LOCKDIR" 2>/dev/null; mkdir "$LOCKDIR" 2>/dev/null || { say "Lock nicht erlangt"; exit 0; }
        else
            say "anderer NAS-Commit laeuft (Lock ${AGE}s) — abgebrochen"; exit 0
        fi
    fi
fi
trap 'rmdir "$LOCKDIR" 2>/dev/null' EXIT

cd "$NAS" || { say "cd fehlgeschlagen"; exit 1; }

# --- Guard: nie bei laufendem/haengendem Rebase/Merge oder index.lock committen ---
if [ -f .git/index.lock ] || [ -d .git/rebase-merge ] || [ -d .git/rebase-apply ] || [ -f .git/MERGE_HEAD ]; then
    say "NAS-Repo nicht sauber (index.lock/Rebase/Merge) — KEIN Commit. Zuerst bereinigen."
    exit 2
fi

HOST=$(scutil --get LocalHostName 2>/dev/null || hostname -s)

# --- Single-Committer: nur die markierte Station committet/pusht ---
if [ ! -f "$MARKER" ]; then
    TASKDIR="$NAS/sync-tasks/mac-mini"
    mkdir -p "$TASKDIR" 2>/dev/null
    TS=$(date '+%Y%m%d-%H%M%S')
    {
        echo "NAS-COMMIT angefragt"
        echo "Station: $HOST"
        echo "Zeit:    $TS"
        echo "Message: $MSG"
        echo "Pfade:   ${PATHS[*]:-(alle, git add -A)}"
    } > "$TASKDIR/commit-$HOST-$TS.task" 2>/dev/null
    say "Diese Station ($HOST) ist NICHT Committer. Sync-Task abgelegt — der Mac Mini committet serialisiert."
    exit 0
fi

# --- Designierter Committer: sauber committen + pushen ---
git fetch -q --all 2>/dev/null || true
if [ "${#PATHS[@]}" -gt 0 ]; then git add -- "${PATHS[@]}"; else git add -A; fi

if git diff --cached --quiet; then
    say "keine Aenderungen zu committen"
else
    git commit -q -m "$MSG" && say "committet: $(git log --oneline -1)"
fi

# Push (nutzt Upstream; bei Ablehnung rebase + erneut)
BR=$(git rev-parse --abbrev-ref HEAD)
if git push 2>/dev/null; then
    say "push OK"
else
    say "push abgelehnt — rebase auf Remote, erneuter Versuch"
    if git pull --rebase --autostash 2>/dev/null; then
        git push && say "push OK (nach rebase)" || say "push erneut fehlgeschlagen — manuell pruefen"
    else
        git rebase --abort 2>/dev/null
        say "rebase fehlgeschlagen/abgebrochen — manuell pruefen (Branch $BR)"
        exit 3
    fi
fi
