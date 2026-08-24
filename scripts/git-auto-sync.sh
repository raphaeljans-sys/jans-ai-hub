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
# A2 (Hub-Audit 260812, gegen R5): Herzschlag-Datei statt stillem Log. Ein Log, das bei
# "nichts zu tun" schweigt, macht seinen eigenen Totalausfall unsichtbar (ein toter Job
# und ein ruhiger Tag sehen identisch aus). Je Station eine eigene Stamp-Datei, damit ein
# Ausfall auf EINER Station nicht durch den Puls der anderen ueberdeckt wird.
NAS_HEARTBEAT_DIR="/Volumes/daten/jans-ai-hub/logbuch/heartbeat"

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

# Fehlzaehler + Eskalationsschwelle (Symmetrie zu nas-selfcommit.sh, Chronik 260824e/f).
# Anlass 24.08.2026: BEIDE Sync-Scripts kannten genau EINEN Abgleichweg. Scheiterte er,
# liefen sie im Kreis, still, ohne Meldung — auf der NAS-Seite sechs Stunden lang mit
# 26/51 divergierenden Commits. Was den einen Waechter heilt, muss auch den anderen heilen,
# sonst verschiebt man den blinden Fleck nur auf die Gegenseite.
FEHLZAEHLER="$REPO_DIR/.git/auto-sync-fehlversuche"
ESKALATION_AB=3

eskalieren() {
    # $1 = Kurzbegruendung, $2 = Divergenz lokal, $3 = Divergenz remote
    N=$(cat "$FEHLZAEHLER" 2>/dev/null || echo 0)
    case "$N" in ''|*[!0-9]*) N=0 ;; esac
    N=$((N + 1))
    printf '%s' "$N" > "$FEHLZAEHLER" 2>/dev/null
    log "ABGLEICH FEHLGESCHLAGEN ($1) — Versuch $N, Divergenz ${2} lokal / ${3} remote"
    if [ "$N" -eq "$ESKALATION_AB" ]; then
        log "WARNUNG: Abgleich seit $N Laeufen blockiert — Divergenz ${2} lokal / ${3} remote"
        REG="/Volumes/daten/jans-ai-hub/logbuch/fristen.md"
        if [ -f "$REG" ]; then
            TMP="$(mktemp)" || return 1
            {
                head -4 "$REG"
                printf '\n**NEU %s (git-auto-sync auf %s, automatisch) — Der Abgleich SSD-Klon/GitHub ist seit %s Laeufen blockiert.**\n' \
                    "$(date '+%d.%m.%Y, %H:%M')" "$(scutil --get LocalHostName 2>/dev/null || hostname -s)" "$N"
                printf 'Divergenz aktuell: **%s Commits nur lokal, %s nur auf GitHub.** Weder Rebase noch Merge gehen\n' "$2" "$3"
                printf 'automatisch durch. **Wichtig: der SSD-Klon ist fuer einen Teil der Lern-Laeufe der EINZIGE Weg\n'
                printf 'nach draussen** (gemessen 24.08.2026: 40 von 83 Dateien in 14 Tagen kamen nur ueber diesen Kanal) —\n'
                printf 'die Arbeit liegt also ungesichert, solange das steht. Konflikte von Hand zusammenfuehren (Merge,\n'
                printf 'nicht Rebase), vorher einen Sicherungszweig setzen. Vorgehen: `rules/betrieb-chronik.md` 260824e/f.\n'
                printf 'Diese Zeile wird erst wieder geschrieben, wenn der Abgleich zwischenzeitlich lief. | Hub-Infrastruktur (Git-Sync) | hoch | offen\n'
                tail -n +5 "$REG"
            } > "$TMP" && mv "$TMP" "$REG" \
                && log "Fristen-Register ergaenzt"
        fi
    fi
}

# 1. Pull mit Rebase — bei Fehlschlag Merge als Rueckfall (statt Abbruch)
PULL_OUTPUT=$(git pull --rebase --autostash 2>&1)
PULL_EXIT=$?

if [ $PULL_EXIT -ne 0 ]; then
    git rebase --abort 2>/dev/null
    log "PULL-Rebase fehlgeschlagen — versuche Merge. Ausgabe: $PULL_OUTPUT"
    git fetch -q 2>/dev/null
    D_VOR=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo 0)
    D_ZUR=$(git rev-list --count HEAD..@{u} 2>/dev/null || echo 0)
    if git merge --no-edit -q @{u} 2>>"$LOG_FILE"; then
        log "MERGE: Rueckfall gegriffen ($(git log --oneline -1 | cut -c1-60))"
    else
        # NIE einen Merge-Zustand hinterlassen — der Guard oben wuerde alle Folgelaeufe stoppen.
        git merge --abort 2>/dev/null
        eskalieren "Rebase und Merge, Konflikte brauchen ein Urteil" "$D_VOR" "$D_ZUR"
        exit 1
    fi
fi

if echo "$PULL_OUTPUT" | grep -q "Already up to date"; then
    : # Nichts zu tun
else
    log "PULL: $PULL_OUTPUT"
fi

# A2: Lebenszeichen setzen — der Job hat seinen Pull-Zyklus erfolgreich durchlaufen,
# unabhaengig davon, ob es etwas zu tun gab. A1 (Stations-Watchdog) kann das Alter pruefen.
if [ -d "$NAS_HEARTBEAT_DIR" ]; then
    HB_STATION=$(scutil --get LocalHostName 2>/dev/null || hostname -s)
    touch "$NAS_HEARTBEAT_DIR/git-auto-sync-$HB_STATION.stamp" 2>/dev/null
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
        printf '0' > "$FEHLZAEHLER" 2>/dev/null
    else
        git fetch -q 2>/dev/null
        D_VOR=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo 0)
        D_ZUR=$(git rev-list --count HEAD..@{u} 2>/dev/null || echo 0)
        eskalieren "push: $(echo "$PUSH_OUTPUT" | tail -1)" "$D_VOR" "$D_ZUR"
    fi
else
    printf '0' > "$FEHLZAEHLER" 2>/dev/null
fi

# >>> REMOTE-TASK-RUNNER-HOOK (installiert von remote-tasks/install.sh)
# Nach jedem Pull: pruefen ob Remote-Tasks vorliegen
if [ -d "$REPO_DIR/remote-tasks/pending" ]; then
    # Tasks im Root UND in Stations-Unterordnern (mac-mini/, macbook-pro/) erkennen
    if find "$REPO_DIR/remote-tasks/pending" -name '*.sh' -print -quit 2>/dev/null | grep -q .; then
        log "REMOTE-TASKS: Task(s) gefunden — starte Runner"
        bash "$REPO_DIR/remote-tasks/runner.sh" >> "$LOG_FILE" 2>&1
    fi
fi
# <<< REMOTE-TASK-RUNNER-HOOK
