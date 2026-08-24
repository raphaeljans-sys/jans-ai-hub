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

# 2. Remote abgleichen — mit Divergenz-Messung, Merge-Rueckfall und Eskalation
#
#    Anlass 24.08.2026 (Chronik 260824e): Der frueherere Stand kannte GENAU EINEN
#    Abgleichweg, "git pull --rebase". Scheiterte der, brach er ab und versuchte es
#    15 Minuten spaeter erneut — still, ohne Meldung. Am 24.08. lief das von 12:45
#    bis 18:18 durch: 26 Commits nur auf dem NAS, 51 nur auf GitHub, 9 Dateien
#    beidseitig geaendert, sechs Stunden ohne Backup. Ein Waechter, dessen einziger
#    Reparaturweg blockiert ist, laeuft nicht ins Leere, sondern im Kreis.
#
#    Drei Ergaenzungen:
#      a) Divergenz wird GEMESSEN (beide Richtungen), nicht nur "ungleich" festgestellt.
#      b) Bei echter Divergenz faellt der Lauf nach dem Rebase auf einen MERGE zurueck.
#         Der Merge verlangt Konflikte einmal statt pro nachgespieltem Commit.
#      c) Nach ESKALATION_AB erfolglosen Runden wandert der Befund ins Fristen-Register
#         — der Ort, den logbuch-radar und hub-chef taeglich lesen (Rule 260805).
#    Konfliktfall bleibt unveraendert konservativ: abbrechen, NIE einen Merge-/Rebase-
#    Zustand hinterlassen (der Guard weiter oben wuerde sonst alle Folgelaeufe stoppen).

REMOTE=$(git remote 2>/dev/null | head -1)
REMOTE=${REMOTE:-origin}
git fetch -q "$REMOTE" 2>>"$LOG" || { log "fetch fehlgeschlagen"; exit 1; }
BR=$(git rev-parse --abbrev-ref HEAD)

FEHLZAEHLER="sync-tasks/log/selfcommit-fehlversuche"
ESKALATION_AB=3

# Divergenz messen: wie viele Commits hat jede Seite, die die andere nicht hat?
VOR=$(git rev-list --count "$REMOTE/$BR..HEAD" 2>/dev/null || echo 0)   # nur lokal
ZUR=$(git rev-list --count "HEAD..$REMOTE/$BR" 2>/dev/null || echo 0)   # nur remote

abgleich_ok() {
    printf '0' > "$FEHLZAEHLER" 2>/dev/null
    if git push -q "$REMOTE" "$BR" 2>>"$LOG"; then
        log "push OK ($(git log --oneline -1 2>/dev/null | cut -c1-70))"
        return 0
    fi
    log "push fehlgeschlagen"
    return 1
}

abgleich_fehlgeschlagen() {
    # $1 = Kurzbegruendung fuers Log
    N=$(cat "$FEHLZAEHLER" 2>/dev/null || echo 0)
    case "$N" in ''|*[!0-9]*) N=0 ;; esac
    N=$((N + 1))
    printf '%s' "$N" > "$FEHLZAEHLER" 2>/dev/null
    log "abgleich fehlgeschlagen ($1) — Versuch $N, Divergenz ${VOR} lokal / ${ZUR} remote"

    if [ "$N" -eq "$ESKALATION_AB" ]; then
        # "WARNUNG" macht die Zeile fuer den Heartbeat (Check 7) grep-bar.
        log "WARNUNG: Abgleich seit $N Laeufen blockiert — Divergenz ${VOR} lokal / ${ZUR} remote, Eintrag im Fristen-Register"
        REG="logbuch/fristen.md"
        if [ -f "$REG" ]; then
            TMP="$(mktemp)" || return 1
            {
                head -4 "$REG"
                printf '\n**NEU %s (nas-selfcommit, automatisch) — Der Abgleich NAS/GitHub ist seit %s Laeufen blockiert.**\n' \
                    "$(date '+%d.%m.%Y, %H:%M')" "$N"
                printf 'Divergenz aktuell: **%s Commits nur auf dem NAS, %s nur auf GitHub.** Weder Rebase noch Merge\n' "$VOR" "$ZUR"
                printf 'gehen automatisch durch, das NAS-Repo ist seither NICHT nach GitHub gesichert. Konflikte von Hand\n'
                printf 'zusammenfuehren (Merge, nicht Rebase — er verlangt die Konflikte einmal statt pro Commit), vorher\n'
                printf 'einen Sicherungszweig setzen. Vorgehen und Praezedenzfall: `rules/betrieb-chronik.md` 260824e.\n'
                printf 'Diese Zeile wird erst wieder geschrieben, wenn der Abgleich zwischenzeitlich lief. | Hub-Infrastruktur (Git-Sync) | hoch | offen\n'
                tail -n +5 "$REG"
            } > "$TMP" && mv "$TMP" "$REG" && git add "$REG" >/dev/null 2>&1 \
                && git commit -q -m "nas-selfcommit: Abgleich blockiert seit $N Laeufen — Eintrag im Fristen-Register" \
                && log "Fristen-Register ergaenzt"
        fi
    fi
    return 1
}

if [ "$VOR" -gt 0 ] && [ "$ZUR" -eq 0 ]; then
    # Nur wir sind voraus — der haeufige Fall, direkt pushen.
    abgleich_ok || abgleich_fehlgeschlagen "push"
elif [ "$VOR" -eq 0 ] && [ "$ZUR" -gt 0 ]; then
    # Nur die Gegenseite ist voraus — Fast-Forward, nichts zu pushen.
    if git merge -q --ff-only "$REMOTE/$BR" 2>>"$LOG"; then
        printf '0' > "$FEHLZAEHLER" 2>/dev/null
        log "fast-forward auf $REMOTE/$BR ($(git log --oneline -1 2>/dev/null | cut -c1-70))"
    else
        abgleich_fehlgeschlagen "fast-forward"
    fi
elif [ "$VOR" -gt 0 ] && [ "$ZUR" -gt 0 ]; then
    # Echte Divergenz: erst Rebase (saubere Historie), dann Merge als Rueckfall.
    if git pull --rebase --autostash -q "$REMOTE" "$BR" 2>>"$LOG"; then
        abgleich_ok || abgleich_fehlgeschlagen "push nach rebase"
    else
        git rebase --abort 2>/dev/null
        log "rebase fehlgeschlagen (${VOR}/${ZUR}) — versuche Merge"
        if git -c user.name="NAS Selfcommit" -c user.email="nas@raphaeljans.ch" \
               merge --no-edit -q "$REMOTE/$BR" 2>>"$LOG"; then
            abgleich_ok || abgleich_fehlgeschlagen "push nach merge"
        else
            # Konflikte: NIE einen Merge-Zustand hinterlassen.
            git merge --abort 2>/dev/null
            abgleich_fehlgeschlagen "rebase und merge, Konflikte brauchen ein Urteil"
        fi
    fi
else
    # Deckungsgleich — nichts zu tun, Zaehler zuruecksetzen.
    printf '0' > "$FEHLZAEHLER" 2>/dev/null
fi
