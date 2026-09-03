#!/bin/bash
# ============================================================================
# JANS AI Hub — lauf.sh (EIN Einstiegspunkt fuer jeden headless-Lauf)
# ============================================================================
# Phase 1 des Laufzeitschicht-Umbaus (docs/konzepte/260830-Laufzeitschicht-Umbau/,
# BEFUND.md Abschnitt 5). Additiv gebaut: keine bestehende Datei angefasst.
# claude-run.sh, dispatch-run.sh, vollgas-runner.sh, wissens-trigger.sh,
# sync-task-run.sh, nachtschicht-run.sh bleiben unveraendert und funktionsfaehig,
# bis Phase 3 (Umschalten, nur nach Raphaels Einzelfreigabe) sie auf lauf.sh
# umstellt.
#
# WAS DIESES SKRIPT LOEST (Spec Abschnitt 4, sieben Punkte):
#   1. Binary aus einem Register aufloesen, mit Gesundheitsprobe (Watchdog);
#      eine gewedgte Fassung wird uebersprungen, nicht durchgereicht (B2).
#   2. Anmeldung aus GENAU EINER Quelle laden: ~/.jans-dispatch.env — selbst
#      gelesen, nicht wie claude-run.sh auf den Aufrufer vertraut (B1).
#   3. Session-Variablen der Elternsession abstreifen, damit ein per nohup
#      abgeloester Lauf nicht ueber den toten Messaging-Kanal der Eltern-
#      session zu authentifizieren versucht (B4-Hypothese, BEFUND.md Abschn. 4).
#   4. Das Gate fragen (lauf-gate.sh, unveraendert).
#   5. Ausfuehren + journalisieren wie bisher — delegiert an claude-run.sh
#      (kein Duplikat der JSON-Auswertung).
#   6. Ertrag messen (geaenderte Dateien / neuer Commit-Kopf) und ausweisen.
#   7. In GENAU EINEM Arbeitsbaum laufen, selbst gesetzt, nie vom Aufrufer
#      geerbt (B6).
#
# ARBEITSBAUM — bewusst NICHT abschliessend entschieden (Spec Abschnitt 4.7,
# Frage F1 an Raphael): Default ist der NAS-Pfad, weil Rule
# `sync-kanonische-quelle.md` das heute so verlangt (geteilte Inhalte NUR auf
# dem NAS editieren). Override per LAUF_REPO oder --repo.
#
# ERTRAG-MESSUNG NUR AUSSERHALB DES NAS-MOUNTS: Rule `sync-kanonische-quelle.md`
# verbietet JEDEN git-Befehl gegen das NAS-Repo ueber SMB, auch lesende (sie
# haengen ebenso uninterruptibel wie schreibende). Laeuft lauf.sh im NAS-Pfad,
# wird darum kein `git` aufgerufen — der Ertrag bleibt in diesem Fall
# unbestimmt und wird so ausgewiesen, nie erraten. Erst wenn Raphael F1 zu
# Gunsten eines SSD-Klons mit anschliessendem Push entscheidet, misst lauf.sh
# den Ertrag ueberall.
#
# AUFRUF:
#   bash scripts/lauf.sh --name <loop> [--budget N] [--modell M] [--perm P] \
#       [--fallback F] [--repo PFAD] -- "<prompt>"
#
# Exit-Code: der Exit-Code des zugrundeliegenden claude-run.sh-Laufs.
# Exit 0 zusaetzlich, wenn das Gate den Lauf zurueckstellt (kein Fehler,
# Konvention wie bei den bestehenden Wrappern).
# Exit 3 = kein Arbeitsbaum gefunden. Exit 6 = kein gesundes Binary gefunden.
# ============================================================================

set -uo pipefail

# --- Locale abhaerten (identisch zu claude-run.sh/dispatch-run.sh) ----------
export LANG="de_CH.UTF-8"
export LC_ALL="de_CH.UTF-8"

# --- Argumente -----------------------------------------------------------
NAME="unbenannt"; BUDGET="50"; PERM="acceptEdits"; FALLBACK="sonnet"; MODELL=""
REPO_OVERRIDE=""
while [ $# -gt 0 ]; do
    case "$1" in
        --name)     NAME="$2"; shift 2 ;;
        --budget)   BUDGET="$2"; shift 2 ;;
        --perm)     PERM="$2"; shift 2 ;;
        --modell)   MODELL="$2"; shift 2 ;;
        --fallback) FALLBACK="$2"; shift 2 ;;
        --repo)     REPO_OVERRIDE="$2"; shift 2 ;;
        --)         shift; break ;;
        *)          echo "lauf.sh: unbekannte Option $1" >&2; exit 2 ;;
    esac
done
PROMPT="${1:-}"
[ -n "$PROMPT" ] || { echo "lauf.sh: kein Prompt uebergeben" >&2; exit 2; }

STATION="$(hostname -s 2>/dev/null || hostname)"

# --- Punkt 7: Arbeitsbaum selbst setzen, nie erben --------------------------
NAS_REPO="/Volumes/daten/jans-ai-hub"
SSD_REPO="$HOME/Developer/jans-ai-hub"
REPO="${REPO_OVERRIDE:-${LAUF_REPO:-$NAS_REPO}}"
if [ ! -d "$REPO/.claude" ]; then
    echo "lauf.sh: Arbeitsbaum '$REPO' nicht gefunden — weiche auf SSD-Klon aus." >&2
    REPO="$SSD_REPO"
fi
[ -d "$REPO/.claude" ] || { echo "lauf.sh: kein Arbeitsbaum gefunden (weder '$REPO_OVERRIDE'/'$LAUF_REPO', noch $NAS_REPO, noch $SSD_REPO)" >&2; exit 3; }
cd "$REPO" || { echo "lauf.sh: cd $REPO fehlgeschlagen" >&2; exit 3; }

# Git-Ertragsmessung nur ausserhalb des NAS-SMB-Mounts (siehe Kopfkommentar).
case "$REPO" in
    "$NAS_REPO"|"$NAS_REPO"/*) ERTRAG_MESSBAR="nein" ;;
    *)                          ERTRAG_MESSBAR="ja" ;;
esac

# --- Punkt 2: Anmeldung aus GENAU EINER Quelle laden ------------------------
# Selbst gelesen (nicht wie claude-run.sh auf den Aufrufer vertraut) — schliesst
# B1 strukturell statt durch Konvention (BEFUND.md Abschnitt 3/5).
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi

# --- Punkt 3: Session-Variablen der Elternsession abstreifen (B4) ----------
for _v in CLAUDE_CODE_SESSION_ID CLAUDE_CODE_CHILD_SESSION \
          CLAUDE_CODE_MESSAGING_SOCKET CLAUDE_CODE_MESSAGING_TOKEN; do
    unset "$_v" 2>/dev/null || true
done

# --- Punkt 1: Binary aus Register aufloesen, mit Gesundheitsprobe ----------
# macOS kennt kein `timeout` von Haus aus — Watchdog per Hintergrund-Killer.
gesund() {
    local bin="$1" pid watcher rc
    "$bin" --version >/dev/null 2>&1 &
    pid=$!
    ( sleep 5; kill -9 "$pid" 2>/dev/null ) &
    watcher=$!
    wait "$pid" 2>/dev/null
    rc=$?
    kill "$watcher" 2>/dev/null; wait "$watcher" 2>/dev/null
    [ "$rc" -eq 0 ]
}

KANDIDATEN=()
[ -n "${LAUF_CLAUDE_BIN:-}" ] && KANDIDATEN+=("$LAUF_CLAUDE_BIN")
KANDIDATEN+=( "$HOME/.claude/local/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" )
PATH_BIN="$(command -v claude 2>/dev/null || true)"
[ -n "$PATH_BIN" ] && KANDIDATEN+=("$PATH_BIN")

CLAUDE_BIN=""
GEPRUEFT=""
for kand in "${KANDIDATEN[@]}"; do
    [ -n "$kand" ] || continue
    [ -x "$kand" ] || continue
    case " $GEPRUEFT " in *" $kand "*) continue ;; esac
    GEPRUEFT="$GEPRUEFT $kand"
    if gesund "$kand"; then
        CLAUDE_BIN="$kand"
        break
    else
        echo "lauf.sh: Binary uebersprungen (gewedgt/keine Antwort in 5s): $kand" >&2
    fi
done
[ -n "$CLAUDE_BIN" ] || { echo "lauf.sh: kein gesundes claude-Binary gefunden (geprueft:$GEPRUEFT)" >&2; exit 6; }
export CLAUDE_BIN

# --- Punkt 4: Gate fragen ---------------------------------------------------
GATE="$REPO/scripts/lauf-gate.sh"
if [ -f "$GATE" ]; then
    if ! bash "$GATE" "$NAME"; then
        echo "lauf.sh: Gate hat '$NAME' zurueckgestellt — kein Fehler, naechster Takt." >&2
        exit 0
    fi
fi

# --- Punkt 6 (Vorher-Stand): Ertrag messen, nur ausserhalb des NAS-Mounts --
VOR_HEAD=""
if [ "$ERTRAG_MESSBAR" = "ja" ]; then
    VOR_HEAD="$(git rev-parse HEAD 2>/dev/null || echo "")"
fi

# --- Punkt 5: Ausfuehren + journalisieren — delegiert an claude-run.sh -----
WRAP="$REPO/scripts/claude-run.sh"
[ -f "$WRAP" ] || WRAP="$NAS_REPO/scripts/claude-run.sh"
[ -f "$WRAP" ] || WRAP="$SSD_REPO/scripts/claude-run.sh"
if [ ! -f "$WRAP" ]; then
    echo "lauf.sh: claude-run.sh nicht gefunden (weder in $REPO, $NAS_REPO noch $SSD_REPO)" >&2
    exit 4
fi

ARGS=( --name "$NAME" --perm "$PERM" --budget "$BUDGET" --fallback "$FALLBACK" )
[ -n "$MODELL" ] && ARGS+=( --modell "$MODELL" )
OUT="$(CLAUDE_BIN="$CLAUDE_BIN" bash "$WRAP" "${ARGS[@]}" -- "$PROMPT")"
RC=$?

# --- Punkt 6 (Nachher-Stand): Ertrag ausweisen ------------------------------
ERTRAG_DATEIEN="unbestimmt"; ERTRAG_COMMIT="unbestimmt"
if [ "$ERTRAG_MESSBAR" = "ja" ]; then
    ERTRAG_DATEIEN="$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')"
    NACH_HEAD="$(git rev-parse HEAD 2>/dev/null || echo "")"
    if [ -n "$VOR_HEAD" ] && [ "$VOR_HEAD" != "$NACH_HEAD" ]; then
        ERTRAG_COMMIT="ja"
    else
        ERTRAG_COMMIT="nein"
    fi
fi

HUB="$NAS_REPO"
[ -d "$HUB" ] || HUB="$SSD_REPO"
ERTRAG_DIR="$HUB/logbuch/laeufe"
ERTRAG_LOG="$ERTRAG_DIR/$(date +%y%m%d)-lauf-ertrag.jsonl"
if mkdir -p "$ERTRAG_DIR" 2>/dev/null; then
    jq -n -c \
        --arg ts   "$(date +%Y-%m-%dT%H:%M:%S%z)" \
        --arg name "$NAME" \
        --arg st   "$STATION" \
        --arg repo "$REPO" \
        --arg bin  "$CLAUDE_BIN" \
        --arg messbar "$ERTRAG_MESSBAR" \
        --arg dateien "$ERTRAG_DATEIEN" \
        --arg commit "$ERTRAG_COMMIT" \
        --argjson rc "$RC" \
        '{ts:$ts, loop:$name, station:$st, repo:$repo, claude_bin:$bin,
          ertrag_messbar:$messbar, ertrag_dateien_geaendert:$dateien,
          ertrag_neuer_commit:$commit, rc:$rc}' >> "$ERTRAG_LOG" 2>/dev/null || true
fi
echo "lauf.sh: ERTRAG name=$NAME messbar=$ERTRAG_MESSBAR dateien=$ERTRAG_DATEIEN neuer_commit=$ERTRAG_COMMIT rc=$RC" >&2

printf '%s' "$OUT"
exit "$RC"
