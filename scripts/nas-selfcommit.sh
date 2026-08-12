#!/bin/bash
# ============================================================================
# JANS AI Hub — Selbst-Commit des NAS-Repos (laeuft AUF der Synology)
# ============================================================================
# Das NAS committet + pusht sein eigenes Repo, nativ auf ext4 — kein SMB, kein
# index.lock-Risiko, kein Umweg ueber den Mac Mini. Getaktet vom DSM-Cron
# (alle 15 Min, Benutzer raphaeljans). Plan + Kontext: docs/plan-dsm-git.md
# Der Runner v2 (Mac Mini) bleibt als Fallback installiert.
#
# Log: sync-tasks/log/selfcommit-JJJJMM.log
# ============================================================================
set -u
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin"
export HOME="${HOME:-/var/services/homes/raphaeljans}"

REPO="/volume2/daten/jans-ai-hub"
LOGDIR="$REPO/sync-tasks/log"
LOG="$LOGDIR/selfcommit-$(date +%Y%m).log"
LOCK="/tmp/jans-selfcommit.lock"

# Optionale Commit-Message (Arg 1): erlaubt sprechende Commits, wenn per
# scripts/nas-commit-now.sh (ssh) mit Message ausgeloest; ohne Arg generisch
# wie beim 15-Min-Cron. So committen Loops/Claude nie mehr git-ueber-SMB, sondern
# loesen diesen nativen Committer aus und behalten trotzdem lesbare Historie.
MSG_OVERRIDE="${1:-}"

mkdir -p "$LOGDIR" 2>/dev/null
log() { echo "$(date '+%Y-%m-%dT%H:%M:%S') $*" >> "$LOG"; }

# Git da? (Paket evtl. noch nicht installiert → still beenden)
command -v git >/dev/null 2>&1 || exit 0

# Single-flight
if ! mkdir "$LOCK" 2>/dev/null; then exit 0; fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

cd "$REPO" || exit 1

# Synology-Indexdienst legt @eaDir-Ordner auch in .git/ ab → korrumpiert refs.
# Jeden Lauf bereinigen (Working-Tree-@eaDir bleibt; .gitignore schliesst sie aus).
find .git -depth -name "@eaDir" -type d -exec rm -rf {} + 2>/dev/null

# Guards: nie in kaputten Zustand committen
if [ -f .git/index.lock ]; then
    AGE=$(( $(date +%s) - $(stat -c %Y .git/index.lock 2>/dev/null || echo 0) ))
    if [ "$AGE" -gt 3600 ]; then
        rm -f .git/index.lock; log "verwaisten index.lock (${AGE}s) entfernt"
    else
        log "index.lock aktiv (${AGE}s) — skip"; exit 0
    fi
fi
# Verwaisten Rebase-Rest selbst bereinigen (analog zum index.lock-Guard oben).
# Anlass 11.08.2026: ein an "unstaged changes" gescheiterter Rebase brach ab und
# liess NUR .git/rebase-merge/autostash liegen. Der Guard unten hielt daraufhin
# 178 Laeufe still an — die Wissens-Kette stand 41 h, ohne dass es jemand sah.
# Ein ECHTER Rebase legt immer head-name+onto (rebase-merge) bzw. next+last
# (rebase-apply) an. Fehlen sie, ist das Verzeichnis ein Rest: wegsichern (nie
# loeschen — das autostash-Objekt bleibt ueber seine SHA erreichbar), weiterlaufen.
for RD in rebase-merge rebase-apply; do
    if [ ! -d ".git/$RD" ]; then continue; fi
    if [ -f ".git/$RD/head-name" ] || [ -f ".git/$RD/next" ]; then continue; fi
    if mv ".git/$RD" ".git/verwaist-$RD-$(date +%y%m%d-%H%M%S)" 2>/dev/null; then
        log "verwaisten $RD-Rest weggesichert (kein head-name/next) — Lauf laeuft weiter"
    fi
done

if [ -d .git/rebase-merge ] || [ -d .git/rebase-apply ] || [ -f .git/MERGE_HEAD ]; then
    MARKER=$(ls -d .git/rebase-merge .git/rebase-apply .git/MERGE_HEAD 2>/dev/null | head -1)
    AGE=$(( $(date +%s) - $(stat -c %Y "$MARKER" 2>/dev/null || echo 0) ))
    if [ "$AGE" -gt 7200 ]; then
        # Nach 2 h ist es kein laufender Rebase mehr, sondern ein Stillstand.
        # "WARNUNG" macht die Zeile fuer den Heartbeat (Check 7) grep-bar.
        log "WARNUNG: Rebase/Merge blockiert seit $((AGE/3600)) h — Kette steht, manuell bereinigen"
    else
        log "Rebase/Merge aktiv — skip (manuell bereinigen)"
    fi
    exit 0
fi

# 1. Lokale Aenderungen committen (.gitignore greift: output/, secrets/, sync-tasks/ bleiben aussen vor)
git add -A >/dev/null 2>&1
if ! git diff --cached --quiet 2>/dev/null; then
    N=$(git diff --cached --name-only | wc -l | tr -d " ")
    if [ -n "$MSG_OVERRIDE" ]; then
        CMSG="$MSG_OVERRIDE"
    else
        CMSG="nas-selfcommit: $N Datei(en) $(date '+%Y-%m-%d %H:%M')"
    fi
    git commit -q -m "$CMSG" && log "commit: $N Datei(en) — $CMSG"
fi

# 2. Remote abgleichen (rebase, niemals Merge-Zustand hinterlassen)
#    Remote-Name dynamisch — auf dem NAS heisst er "github", nicht "origin"
REMOTE=$(git remote 2>/dev/null | head -1)
REMOTE=${REMOTE:-origin}
git fetch -q "$REMOTE" 2>>"$LOG" || { log "fetch fehlgeschlagen"; exit 1; }
BR=$(git rev-parse --abbrev-ref HEAD)
if [ "$(git rev-parse HEAD)" != "$(git rev-parse "$REMOTE/$BR" 2>/dev/null)" ]; then
    if ! git pull --rebase --autostash -q "$REMOTE" "$BR" 2>>"$LOG"; then
        git rebase --abort 2>/dev/null
        log "rebase fehlgeschlagen — abgebrochen, naechster Lauf versucht erneut"
        exit 1
    fi
    if git push -q "$REMOTE" "$BR" 2>>"$LOG"; then
        log "push OK ($(git log --oneline -1 2>/dev/null | cut -c1-70))"
    else
        log "push fehlgeschlagen"
    fi
fi
