#!/bin/bash
# ============================================================================
# JANS AI Hub — Multi-Claude (parallele Laeufe unter Speicher-Deckel)
# ============================================================================
# Auftrag Raphael 29.07.2026 nach der Anthropic-Lecture, Slide «Interlude:
# Multi-claude» (mehrere Checkouts · git worktrees · SSH+TMUX · parallele Jobs).
#
# DER KONFLIKT, den dieses Script aufloest:
# Die Lecture empfiehlt Parallelitaet. Der Hub hat am 28.07.2026 aus gutem Grund
# das Gegenteil eingezogen: einen stationsweiten Prozess-Deckel (lauf-gate.sh),
# weil gleichzeitige Laeufe die Maschine in den Swap trieben. Beides ist richtig.
# Darum: Parallelitaet JA, aber die Zahl der Instanzen wird aus dem real
# verfuegbaren Speicher BERECHNET statt vom Benutzer geraten.
#
# ABGRENZUNG lauf-gate.sh: Das Gate beantwortet «darf DIESER eine Lauf starten?»
# (ja/nein). Dieses Script beantwortet «wie viele Laeufe traegt die Station JETZT?»
# (eine Zahl) und fuellt die Slots. Es benutzt dieselbe Messung — eine Metrik,
# zwei Fragen (Lehre 28.07.: eine falsche Messgroesse nie zweimal implementieren).
#
# WORKTREES: Jeder Auftrag laeuft in einem eigenen git worktree auf der **SSD**
# (~/Developer/jans-worktrees/<name>). NIE auf dem NAS-Mount — Worktrees ueber SMB
# teilen sich die .git/index.lock und erzeugen genau die Blockade, die Rule 260726
# verbietet. Geteilte Hub-Inhalte (skills/rules/agents/wissen) werden in einem
# Worktree NIE editiert (Rule sync-kanonische-quelle) — Worktrees sind fuer
# isolierte Arbeitsauftraege da, deren Ergebnis danach kontrolliert zurueckfliesst.
#
# AUFRUF:
#   bash scripts/multi-claude.sh "Auftrag A" "Auftrag B" "Auftrag C"
#   bash scripts/multi-claude.sh --ohne-worktree "Frage 1" "Frage 2"   # nur lesend
#   bash scripts/multi-claude.sh --slots 2 "A" "B" "C"                 # Deckel senken
#   bash scripts/multi-claude.sh --trocken "A" "B"                     # nur planen
#
# Der berechnete Deckel kann per --slots nur GESENKT werden, nie angehoben.
# ============================================================================
set -uo pipefail

STATION="$(hostname -s)"
HUB_NAS="/Volumes/daten/jans-ai-hub"
HUB_SSD="$HOME/Developer/jans-ai-hub"
WT_ROOT="$HOME/Developer/jans-worktrees"
STAMP="$(date +%y%m%d-%H%M%S)"
OUTDIR="$HUB_NAS/logbuch/multi-claude/$STAMP"
[ -d "$HUB_NAS" ] || OUTDIR="$HUB_SSD/logbuch/multi-claude/$STAMP"

MIT_WORKTREE=1; TROCKEN=0; SLOTS_WUNSCH=0; BUDGET="${BUDGET:-10}"
AUFTRAEGE=()
while [ $# -gt 0 ]; do
    case "$1" in
        --ohne-worktree) MIT_WORKTREE=0; shift ;;
        --trocken)       TROCKEN=1; shift ;;
        --slots)         SLOTS_WUNSCH="$2"; shift 2 ;;
        --budget)        BUDGET="$2"; shift 2 ;;
        --)              shift; AUFTRAEGE+=("$@"); break ;;
        -*)              echo "multi-claude: unbekannte Option $1" >&2; exit 2 ;;
        *)               AUFTRAEGE+=("$1"); shift ;;
    esac
done

[ "${#AUFTRAEGE[@]}" -gt 0 ] || {
    echo "multi-claude: keine Auftraege uebergeben." >&2
    echo "  bash scripts/multi-claude.sh \"Auftrag A\" \"Auftrag B\"" >&2
    exit 2
}

# ---------------------------------------------------------------------------
# Speichermessung — identisch zu lauf-gate.sh (vm_stat free+inactive+purgeable).
# NIE top-«unused», NIE ps-RSS (Lehre 28.07.2026).
# ---------------------------------------------------------------------------
frei_mb() {
    vm_stat 2>/dev/null | awk '
        /page size of/  { for (i=1;i<=NF;i++) if ($i ~ /^[0-9]+$/) { ps=$i; break } }
        /Pages free/      { f=$3+0 }
        /Pages inactive/  { i2=$3+0 }
        /Pages purgeable/ { p=$3+0 }
        END { if (ps=="" || ps==0) ps=4096; printf "%d", (f+i2+p) * ps / 1048576 }'
}
druck() {
    local d; d=$(sysctl -n kern.memorystatus_vm_pressure_level 2>/dev/null)
    case "$d" in ''|*[!0-9]*) echo 1 ;; *) echo "$d" ;; esac
}
laufende() { pgrep -f "claude (-p|--print)" 2>/dev/null | wc -l | tr -d ' '; }

# Stations-Politik: dieselben Werte wie im Gate, plus der Bedarf je Instanz.
# Ueberschreibbar wie im Gate (MAX_LAEUFE/MIN_FREI_MB) — das Druck-Kriterium bewusst
# NICHT: eine swappende Maschine soll sich nicht per Umgebungsvariable gesundschreiben
# lassen. Wer den Deckel senken will, nimmt --slots.
case "$STATION" in
    Macbookpro) MAX_LAEUFE="${MAX_LAEUFE:-2}"; MIN_FREI_MB="${MIN_FREI_MB:-3000}" ;;
    Macmini)    MAX_LAEUFE="${MAX_LAEUFE:-3}"; MIN_FREI_MB="${MIN_FREI_MB:-4000}" ;;
    *)          MAX_LAEUFE="${MAX_LAEUFE:-2}"; MIN_FREI_MB="${MIN_FREI_MB:-3000}" ;;
esac
PRO_INSTANZ_MB="${PRO_INSTANZ_MB:-3000}"

FREI=$(frei_mb); DRUCK=$(druck); AKTIV=$(laufende)

echo "Station     : $STATION"
echo "Speicher    : ${FREI} MB verfuegbar, Druck $DRUCK (1=normal 2=warnend 4=kritisch)"
echo "Laeufe aktiv: $AKTIV von max. $MAX_LAEUFE"

if [ "$DRUCK" -ge 2 ]; then
    echo "ABBRUCH: Speicherdruck $DRUCK — die Station swappt bereits. Keine parallelen Laeufe."
    exit 1
fi
case "$FREI" in ''|*[!0-9]*) echo "ABBRUCH: Speichermessung unbrauchbar ('$FREI')."; exit 1 ;; esac

# Slots = was der Speicher OHNE Unterschreitung der Reserve traegt,
#         gedeckelt auf das Stations-Maximum abzueglich der schon laufenden.
SLOTS_SPEICHER=$(( (FREI - MIN_FREI_MB) / PRO_INSTANZ_MB ))
[ "$SLOTS_SPEICHER" -lt 0 ] && SLOTS_SPEICHER=0
SLOTS_DECKEL=$(( MAX_LAEUFE - AKTIV ))
[ "$SLOTS_DECKEL" -lt 0 ] && SLOTS_DECKEL=0
SLOTS=$(( SLOTS_SPEICHER < SLOTS_DECKEL ? SLOTS_SPEICHER : SLOTS_DECKEL ))

if [ "$SLOTS_WUNSCH" -gt 0 ] && [ "$SLOTS_WUNSCH" -lt "$SLOTS" ]; then
    echo "Deckel      : auf $SLOTS_WUNSCH gesenkt (berechnet waeren $SLOTS)"
    SLOTS="$SLOTS_WUNSCH"
fi

echo "Slots       : $SLOTS parallel (Speicher traegt $SLOTS_SPEICHER, Prozessdeckel erlaubt $SLOTS_DECKEL)"
echo "Auftraege   : ${#AUFTRAEGE[@]}"

if [ "$SLOTS" -lt 1 ]; then
    echo "ABBRUCH: kein freier Slot. Spaeter erneut versuchen (oder Speicher freigeben)."
    exit 1
fi
[ "$SLOTS" -eq 1 ] && echo "HINWEIS: nur ein Slot — die Auftraege laufen nacheinander, nicht parallel."

# ---------------------------------------------------------------------------
# Worktree-Vorbereitung (SSD, nie NAS)
# ---------------------------------------------------------------------------
if [ "$MIT_WORKTREE" -eq 1 ]; then
    if [ ! -d "$HUB_SSD/.git" ]; then
        echo "ABBRUCH: SSD-Klon $HUB_SSD fehlt — Worktrees brauchen ein lokales Repo."
        echo "         Mit --ohne-worktree starten (dann laufen alle im aktuellen Verzeichnis)."
        exit 1
    fi
    case "$HUB_SSD" in /Volumes/*)
        echo "ABBRUCH: Repo liegt auf einem Mount — Worktrees ueber SMB sind verboten (Rule 260726)."
        exit 1 ;;
    esac
    mkdir -p "$WT_ROOT"
fi

mkdir -p "$OUTDIR"
echo "Ergebnisse  : $OUTDIR"
echo

if [ "$TROCKEN" -eq 1 ]; then
    echo "TROCKENLAUF — es wird nichts gestartet. Geplant:"
    i=0; for a in "${AUFTRAEGE[@]}"; do i=$((i+1))
        printf "  %02d  %s\n" "$i" "$(printf '%s' "$a" | head -c 90)"
    done
    exit 0
fi

# ---------------------------------------------------------------------------
# Ausfuehrung: Slots fuellen, bei Freiwerden nachruecken
# ---------------------------------------------------------------------------
RUNNER="$HUB_NAS/scripts/claude-run.sh"
[ -f "$RUNNER" ] || RUNNER="$HUB_SSD/scripts/claude-run.sh"

starte() {
    local idx="$1" auftrag="$2"
    local name; name="$(printf 'mc%02d-%s' "$idx" "$STAMP")"
    local wd="$PWD" wt=""
    if [ "$MIT_WORKTREE" -eq 1 ]; then
        wt="$WT_ROOT/$name"
        if git -C "$HUB_SSD" worktree add --detach "$wt" >/dev/null 2>&1; then
            wd="$wt"
        else
            echo "  [$idx] WARNUNG: Worktree fehlgeschlagen — laeuft im aktuellen Verzeichnis."
            wt=""
        fi
    fi
    (
        cd "$wd" || exit 1
        bash "$RUNNER" --name "$name" --budget "$BUDGET" --perm acceptEdits \
             -- "$auftrag" > "$OUTDIR/$idx.md" 2>&1
        echo "$?" > "$OUTDIR/$idx.rc"
        # Worktree nur entfernen, wenn nichts Uneingecheckte darin liegt —
        # sonst bleibt er stehen und die Arbeit ist nicht verloren.
        if [ -n "$wt" ]; then
            if [ -z "$(git -C "$wt" status --porcelain 2>/dev/null)" ]; then
                git -C "$HUB_SSD" worktree remove --force "$wt" >/dev/null 2>&1
            else
                echo "  [$idx] Worktree BEHALTEN (enthaelt Aenderungen): $wt"
            fi
        fi
    ) &
    echo "  [$idx] gestartet${wt:+ (Worktree $wt)}: $(printf '%s' "$auftrag" | head -c 70)"
}

idx=0
for auftrag in "${AUFTRAEGE[@]}"; do
    idx=$((idx+1))
    # Warten, bis ein Slot frei ist — und dabei erneut den Speicher pruefen.
    while [ "$(jobs -rp | wc -l | tr -d ' ')" -ge "$SLOTS" ]; do sleep 5; done
    F=$(frei_mb); D=$(druck)
    if [ "$D" -ge 2 ] || [ "$F" -lt "$MIN_FREI_MB" ]; then
        echo "  [$idx] ZURUECKGESTELLT: Speicher waehrend des Laufs knapp (${F} MB, Druck $D) — warte."
        while { [ "$(druck)" -ge 2 ] || [ "$(frei_mb)" -lt "$MIN_FREI_MB" ]; }; do sleep 20; done
    fi
    starte "$idx" "$auftrag"
done

echo
echo "Warte auf den Abschluss aller Laeufe ..."
wait

echo
echo "Fertig. Ergebnisse:"
for f in "$OUTDIR"/*.md; do
    [ -f "$f" ] || continue
    n="$(basename "$f" .md)"
    rc="$(cat "$OUTDIR/$n.rc" 2>/dev/null || echo '?')"
    printf "  [%s] rc=%s  %s Bytes  %s\n" "$n" "$rc" "$(wc -c < "$f" | tr -d ' ')" "$f"
done
echo
echo "Lauf-Journal: $HUB_NAS/logbuch/laeufe/$(date +%y%m%d)-laeufe.jsonl"
