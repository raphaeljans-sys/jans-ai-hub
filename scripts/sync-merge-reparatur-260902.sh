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
# Konflikttypen mit Loeschung/Umbenennung (DD/UD/DU) bricht es ab und raeumt auf.
#
# ERWEITERT 02.09.2026 nach dem ersten Lauf (Abbruch an einem AA-Konflikt):
# - AA (beidseitig neu angelegt) wird wie UU behandelt (Union, leere Basis).
# - Liegt unter scripts/merge-vorgaben-260902/<pfad> eine redaktionell
#   zusammengefuehrte Ziel-Fassung, gewinnt diese (genutzt fuer das doppelt
#   destillierte Wiki-Artikel-Paar protofunktional-*, siehe KB-CHANGELOG).
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

# Liegende Edits zuerst committen (Loops und SMB-Sessions schreiben laufend in
# den Arbeitsbaum; ein dirty tree laesst git den Merge verweigern — genau daran
# scheiterte der Lauf vom 02.09. 16:1x mit irrefuehrendem "Merge fertig").
if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "Vorab-Commit liegender Edits (Sync-Reparatur 260902)" >/dev/null \
        && echo "Vorab-Commit: $(git log -1 --oneline)"
fi

git fetch github 2>/dev/null || true
MERGE_OUT=$(git merge github/main -m "Merge github/main (Sync-Reparatur 260902, Union-Aufloesung Log-Dateien)" 2>&1)
# Merge weder durchgelaufen noch im Konfliktzustand -> echter Fehler, zeigen.
if [ ! -f .git/MERGE_HEAD ] && ! git merge-base --is-ancestor github/main HEAD 2>/dev/null; then
    echo "FEHLER: Merge kam nicht zustande. git sagt:"
    echo "$MERGE_OUT" | tail -10
    exit 4
fi

KONFLIKTE=$(git status --porcelain | awk '$1=="UU"||$1=="AA" {print $2}')
ANDERE=$(git status --porcelain | awk '$1 ~ /(DD|AU|UD|UA|DU)/ {print $1, $2}')

if [ -n "$ANDERE" ]; then
    echo "ABBRUCH: Konflikttypen ausserhalb UU (beidseitig geaendert):"
    echo "$ANDERE"
    git merge --abort
    echo "Merge abgebrochen, Repo unveraendert (HEAD $ALT)."
    exit 2
fi

if [ -n "$KONFLIKTE" ]; then
    echo "Aufloesung fuer:"
    for f in $KONFLIKTE; do
        VORGABE="$REPO/scripts/merge-vorgaben-260902/$f"
        if [ -f "$VORGABE" ]; then
            cp "$VORGABE" "$f"
            git add "$f"
            echo "  $f (redaktionelle Vorgabe)"
            continue
        fi
        git show :1:"$f" > /tmp/rep-base.$$ 2>/dev/null || : > /tmp/rep-base.$$
        git show :2:"$f" > /tmp/rep-ours.$$
        git show :3:"$f" > /tmp/rep-theirs.$$
        git merge-file --union /tmp/rep-ours.$$ /tmp/rep-base.$$ /tmp/rep-theirs.$$
        cp /tmp/rep-ours.$$ "$f"
        git add "$f"
        echo "  $f (union)"
    done
    rm -f /tmp/rep-base.$$ /tmp/rep-ours.$$ /tmp/rep-theirs.$$
    git commit --no-edit >/dev/null || { echo "FEHLER beim Merge-Commit."; exit 3; }
fi

if ! git merge-base --is-ancestor github/main HEAD 2>/dev/null; then
    echo "FEHLER: github/main ist nach dem Merge nicht in HEAD enthalten — nichts gepusht."
    git status | head -5
    exit 5
fi
echo "Merge fertig: $(git log -1 --oneline)"

PUSH_OUT=$(git push github main 2>&1); PUSH_RC=$?
echo "$PUSH_OUT" | tail -2
if [ "$PUSH_RC" -eq 0 ]; then
    echo "PUSH OK — Stand jetzt: $(git rev-list --count github/main..main) lokal / $(git rev-list --count main..github/main) remote (soll 0/0 sein)"
else
    echo "WARNUNG: Push fehlgeschlagen (rc=$PUSH_RC) — Merge steht lokal (HEAD $(git rev-parse --short HEAD)), Ruecksprung: git reset --hard $ALT"
fi
