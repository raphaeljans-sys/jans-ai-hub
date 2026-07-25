#!/bin/bash
# ============================================================================
# JANS AI Hub — nas-commit-now (Sofort-Commit ohne git-ueber-SMB)
# ============================================================================
# Problem: git commit/push/pull direkt gegen das NAS-Repo ueber den SMB-Mount
# haengt sich unter Last uninterruptibel auf und kollidiert auf .git/index.lock
# (belegt 25.07.2026 mehrfach). Das NAS hat aber laengst einen nativen Committer:
# scripts/nas-selfcommit.sh laeuft auf der Synology (ext4, kein SMB) und
# commit+push+rebase das Repo — alle 15 Min per Cron, oder auf Zuruf per ssh.
#
# Dieses Skript loest genau diesen nativen Committer SOFORT aus (statt bis zu
# 15 Min zu warten) und zieht danach den lokalen SSD-Klon nach. So committet
# NIEMAND mehr git-ueber-SMB — nicht Claude, nicht die Loops.
#
#   Nutzung:  bash scripts/nas-commit-now.sh "Sprechende Commit-Message"
#             bash scripts/nas-commit-now.sh          # generische Message
#
# Voraussetzung: Key-basierter ssh-Zugang zur Synology (vorhanden, BatchMode).
# Angelegt 26.07.2026. Ersetzt Claudes/Loops direkte NAS-git-Commits.
# ============================================================================
set -uo pipefail

NAS_SSH="${JANS_NAS_SSH:-raphaeljans@diskstation918.tail8265aa.ts.net}"
REMOTE_SELFCOMMIT="/volume2/daten/jans-ai-hub/scripts/nas-selfcommit.sh"
SSD_REPO="$HOME/Developer/jans-ai-hub"
MSG="${1:-}"

# 1. Nativer Commit+Push auf der Synology ausloesen (ext4, kein SMB-git).
#    Message base64-kodiert durchreichen — robust gegen Quoting/Sonderzeichen.
if [ -n "$MSG" ]; then
    B64="$(printf '%s' "$MSG" | base64 | tr -d '\n')"
    REMOTE_CMD="M=\$(printf '%s' '$B64' | base64 -d); bash '$REMOTE_SELFCOMMIT' \"\$M\""
else
    REMOTE_CMD="bash '$REMOTE_SELFCOMMIT'"
fi

if ssh -o ConnectTimeout=8 -o BatchMode=yes "$NAS_SSH" "$REMOTE_CMD"; then
    echo "nas-commit-now: nativer Commit+Push auf der Synology ausgeloest."
else
    RC=$?
    echo "nas-commit-now: ssh/selfcommit fehlgeschlagen (rc=$RC) — der 15-Min-Cron faengt die Edits auf."
    exit "$RC"
fi

# 2. Lokalen SSD-Klon nachziehen (lokal, kein SMB) — damit die lokale Sicht aktuell ist.
if [ -d "$SSD_REPO/.git" ]; then
    if git -C "$SSD_REPO" pull --rebase --autostash -q 2>/dev/null; then
        echo "nas-commit-now: SSD-Klon aktualisiert."
    else
        echo "nas-commit-now: SSD-Pull uebersprungen (git-auto-sync holt in <=5 Min nach)."
    fi
fi
