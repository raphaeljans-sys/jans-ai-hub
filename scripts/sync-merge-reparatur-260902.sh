#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Merge-Reparatur 02.09.2026 (laeuft NATIV auf der Synology)
# ============================================================================
# Befund (logbuch/fristen.md, Nachtraege 30.08.-02.09.): das NAS-Repo divergiert
# von github/main (Stand 02.09. 16:00: 718 lokal / 267 remote, GitHub steht seit
# 31.08. 06:12). Der Selfcommit-Merge scheitert wiederholt an Konflikten in
# append-only Log-Dateien (CHANGELOG/QUESTIONS/KORPUS-QUEUE der Lern-Loops).
#
# Dieses Script loest den Merge mit UNION-Aufloesung: bei jedem Konflikt werden
# BEIDE Seiten behalten (verlustfrei; bei Log-Dateien genau richtig). Bei
# Konflikttypen, die keine beidseitige Aenderung sind (geloescht/umbenannt),
# bricht es ab und raeumt auf.
#
# Aufruf durch Raphael (Einzelfreigabe, Klassifikator-Vorlage 02.09.2026):
#   ssh raphaeljans@diskstation918.tail8265aa.ts.net \
#       'bash /volume2/daten/jans-ai-hub/scripts/sync-merge-reparatur-260902.sh'
# Danach auf den Stationen: git -C ~/Developer/jans-ai-hub pull   (oder warten,
# der git-auto-sync zieht von allein nach).
# ============================================================================

set -uo pipefail
REPO="/volume2/daten/jans-ai-hub"
cd "$REPO" || { echo "FEHLER: $REPO nicht gefunden."; exit 1; }

if [ -f .git/MERGE_HEAD ]; then
    echo "FEHLER: es steht bereits ein Merge im Gang — zuerst 'git merge --abort'."
    exit 1
fi

ALT=$(git rev-parse HEAD)
echo "Sicherung: HEAD vor Reparatur = $ALT"
echo "Stand: $(git rev-list --count github/main..main) lokal / $(git rev-list --count main..github/main) remote"

git fetch github 2>/dev/null || true
git merge github/main -m "Merge github/main (Sync-Reparatur 260902, Union-Aufloesung Log-Dateien)" >/dev/null 2>&1

KONFLIKTE=$(git status --porcelain | awk '$1=="UU" {print $2}')
ANDERE=$(git status --porcelain | awk '$1 ~ /(DD|AU|UD|UA|DU|AA)/ {print $1, $2}')

if [ -n "$ANDERE" ]; then
    echo "ABBRUCH: Konflikttypen ausserhalb UU (beidseitig geaendert):"
    echo "$ANDERE"
    git merge --abort
    echo "Merge abgebrochen, Repo unveraendert (HEAD $ALT)."
    exit 2
fi

if [ -n "$KONFLIKTE" ]; then
    echo "Union-Aufloesung fuer:"
    for f in $KONFLIKTE; do
        git show :1:"$f" > /tmp/rep-base.$$ 2>/dev/null || : > /tmp/rep-base.$$
        git show :2:"$f" > /tmp/rep-ours.$$
        git show :3:"$f" > /tmp/rep-theirs.$$
        git merge-file --union /tmp/rep-ours.$$ /tmp/rep-base.$$ /tmp/rep-theirs.$$
        cp /tmp/rep-ours.$$ "$f"
        git add "$f"
        echo "  $f"
    done
    rm -f /tmp/rep-base.$$ /tmp/rep-ours.$$ /tmp/rep-theirs.$$
    git commit --no-edit >/dev/null || { echo "FEHLER beim Merge-Commit."; exit 3; }
fi

echo "Merge fertig: $(git log -1 --oneline)"
if git push github main 2>&1 | tail -2; then
    echo "PUSH OK — Stand jetzt: $(git rev-list --count github/main..main) lokal / $(git rev-list --count main..github/main) remote (soll 0/0 sein)"
else
    echo "WARNUNG: Push fehlgeschlagen — Merge steht lokal (HEAD $(git rev-parse --short HEAD)), Ruecksprung: git reset --hard $ALT"
fi
