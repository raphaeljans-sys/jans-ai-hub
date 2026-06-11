#!/bin/bash
# ============================================================================
# JANS Render-Weiche — Renderarbeit laeuft IMMER auf dem Mac Mini
# ============================================================================
# Der Always-On Mac Mini (C4D 2026 installiert, Maxon App eingeloggt) uebernimmt
# die Renderarbeit, egal von welcher Station der Aufruf kommt:
#   - auf dem Mac Mini selbst:   direkter lokaler Lauf
#   - auf MacBook Pro / andere:  Aufruf via SSH (LAN zuerst, dann Tailscale).
#     Liegen Input/Output NICHT auf dem NAS, wird automatisch ueber
#     /Volumes/daten/jans-ai-hub/render-scratch/ gestaged und zurueckkopiert —
#     der Aufrufer merkt davon nichts (Outputs landen im angegebenen Ordner).
#
# Verwendung (gleiche Semantik wie die direkten Aufrufe in SKILL.md):
#   render-remote.sh szene --obj X.obj [--kontext K.obj] --out DIR --name NAME [...]
#       -> c4dpy c4d_szene.py (Szene bauen + 3 Standardkameras rendern)
#   render-remote.sh commandline SZENE.c4d OUTBILD [FRAME]
#       -> Commandline.app -render PNG (rendert zuletzt aktive Kamera der Szene)
#   render-remote.sh script TOOL.py [ARGS...]
#       -> generisches c4dpy-Script (z.B. c4d_situation.py); alle Pfad-Argumente
#          muessen bereits auf /Volumes/daten liegen (kein Auto-Staging)
#
# ENV:  JANS_RENDER_FORCE_REMOTE=1  -> SSH-Pfad erzwingen (Test)
#       JANS_RENDER_LOCAL=1         -> lokalen Lauf erzwingen (Notbetrieb, z.B.
#                                      Mini nicht erreichbar und C4D lokal da)
#
# Voraussetzungen Fernaufruf: SSH-Key der Station ist auf dem Mac Mini
# autorisiert (einmalig, siehe SKILL.md), NAS auf beiden Seiten gemountet.
# ============================================================================
set -euo pipefail

RENDER_HOSTNAME="Macmini"
SSH_USER="raphaeljans"
SSH_TARGETS=("192.168.1.210" "100.120.219.12")   # LAN zuerst, dann Tailscale
SSH_OPTS=(-o BatchMode=yes -o ConnectTimeout=4)
HUB="/Volumes/daten/jans-ai-hub"
TOOLS_NAS="$HUB/skills/volumenstudie/tools"
SCRATCH_BASE="$HUB/render-scratch"
C4DPY="/Applications/Maxon Cinema 4D 2026/c4dpy.app/Contents/MacOS/c4dpy"
CMDLINE="/Applications/Maxon Cinema 4D 2026/Commandline.app/Contents/MacOS/Commandline"

MODE="${1:-}"
[ -n "$MODE" ] && shift || { echo "FEHLER: Modus fehlt (szene|commandline|script)"; exit 1; }

fehler() { echo "FEHLER: $*" >&2; exit 1; }
ist_nas() { case "$1" in /Volumes/daten/*) return 0;; *) return 1;; esac; }

quote_args() {  # Argumente shell-sicher zu EINEM String (fuer ssh)
    local q="" a
    for a in "$@"; do q+=" $(printf '%q' "$a")"; done
    echo "$q"
}

# ----------------------------------------------------------------------------
# Lokale Ausfuehrung (auf dem Mac Mini bzw. bei JANS_RENDER_LOCAL=1)
# ----------------------------------------------------------------------------
run_local() {
    case "$MODE" in
        szene)
            [ -x "$C4DPY" ] || fehler "c4dpy nicht gefunden: $C4DPY"
            "$C4DPY" "$TOOLS_NAS/c4d_szene.py" -- "$@" </dev/null
            ;;
        commandline)
            local szene="$1" out="$2" frame="${3:-0}"
            [ -x "$CMDLINE" ] || fehler "Commandline-Renderer nicht gefunden: $CMDLINE"
            [ -f "$szene" ] || fehler "Szene nicht gefunden: $szene"
            # Validierter Aufruf 11.06.2026: KEIN g_licenseUsername (haengt sonst)
            printf "1\n" | "$CMDLINE" -nogui -render "$szene" \
                -frame "$frame" "$frame" -oimage "$out" -oformat PNG
            ;;
        script)
            local tool="$1"; shift
            [ -x "$C4DPY" ] || fehler "c4dpy nicht gefunden: $C4DPY"
            "$C4DPY" "$tool" "$@" </dev/null
            ;;
        *) fehler "Unbekannter Modus: $MODE (szene|commandline|script)" ;;
    esac
}

# ----------------------------------------------------------------------------
# Host-Weiche
# ----------------------------------------------------------------------------
if [ "${JANS_RENDER_LOCAL:-}" = "1" ] || { [ "$(hostname -s)" = "$RENDER_HOSTNAME" ] && [ "${JANS_RENDER_FORCE_REMOTE:-}" != "1" ]; }; then
    run_local "$@"
    exit 0
fi

# ----------------------------------------------------------------------------
# Fernaufruf: Mac Mini finden
# ----------------------------------------------------------------------------
[ -d "$HUB" ] || fehler "NAS nicht gemountet (/Volumes/daten) — fuer Fern-Rendering noetig."

TARGET=""
for t in "${SSH_TARGETS[@]}"; do
    if ssh "${SSH_OPTS[@]}" "$SSH_USER@$t" true 2>/dev/null; then TARGET="$t"; break; fi
done
[ -n "$TARGET" ] || fehler "Mac Mini nicht erreichbar (${SSH_TARGETS[*]}). SSH-Key autorisiert? Mini wach? Notbetrieb: JANS_RENDER_LOCAL=1"

ssh "${SSH_OPTS[@]}" "$SSH_USER@$TARGET" "test -d '$HUB'" \
    || fehler "NAS auf dem Mac Mini nicht gemountet."

echo "Rendern auf Mac Mini ($TARGET) ..."

# Scratch nur anlegen, wenn gestaged werden muss
SCRATCH=""
scratch_dir() {
    if [ -z "$SCRATCH" ]; then
        SCRATCH="$SCRATCH_BASE/$(hostname -s)-$$-$(date +%y%m%d-%H%M%S)"
        mkdir -p "$SCRATCH"
    fi
}
cleanup() { [ -n "$SCRATCH" ] && rm -rf "$SCRATCH"; }
trap cleanup EXIT

stage_in() {  # Datei aufs NAS kopieren, neuen Pfad zurueckgeben
    local f="$1"
    [ -f "$f" ] || fehler "Input nicht gefunden: $f"
    scratch_dir
    cp "$f" "$SCRATCH/"
    echo "$SCRATCH/$(basename "$f")"
}

case "$MODE" in
    szene)
        # --obj/--kontext/--out lokalisieren und bei Bedarf umschreiben
        ARGS=("$@"); OUT_LOKAL=""; OUT_REMOTE=""
        i=0
        while [ $i -lt ${#ARGS[@]} ]; do
            a="${ARGS[$i]}"; v_idx=$((i+1))
            case "$a" in
                --obj|--kontext)
                    v="${ARGS[$v_idx]}"
                    ist_nas "$v" || ARGS[$v_idx]="$(stage_in "$v")"
                    ;;
                --out)
                    v="${ARGS[$v_idx]}"
                    OUT_LOKAL="$v"; OUT_REMOTE="$v"
                    if ! ist_nas "$v"; then
                        scratch_dir
                        OUT_REMOTE="$SCRATCH/out"; mkdir -p "$OUT_REMOTE"
                        ARGS[$v_idx]="$OUT_REMOTE"
                    fi
                    ;;
            esac
            i=$((i+1))
        done
        [ -n "$OUT_LOKAL" ] || fehler "szene-Modus braucht --out"
        CMD="$(printf '%q' "$C4DPY") $(printf '%q' "$TOOLS_NAS/c4d_szene.py") --$(quote_args "${ARGS[@]}") </dev/null"
        ssh "$SSH_USER@$TARGET" "$CMD"
        if [ "$OUT_REMOTE" != "$OUT_LOKAL" ]; then
            mkdir -p "$OUT_LOKAL"
            cp "$OUT_REMOTE"/* "$OUT_LOKAL/" 2>/dev/null || fehler "Keine Render-Outputs erhalten."
            echo "Outputs zurueckkopiert nach: $OUT_LOKAL"
        fi
        ;;

    commandline)
        SZENE="$1"; OUTIMG="$2"; FRAME="${3:-0}"
        SZENE_R="$SZENE"
        ist_nas "$SZENE" || SZENE_R="$(stage_in "$SZENE")"
        OUTDIR_LOKAL="$(dirname "$OUTIMG")"; OUT_R="$OUTIMG"
        if ! ist_nas "$OUTIMG"; then
            scratch_dir
            mkdir -p "$SCRATCH/out"
            OUT_R="$SCRATCH/out/$(basename "$OUTIMG")"
        fi
        CMD="printf '1\n' | $(printf '%q' "$CMDLINE") -nogui -render $(printf '%q' "$SZENE_R") -frame $FRAME $FRAME -oimage $(printf '%q' "$OUT_R") -oformat PNG"
        ssh "$SSH_USER@$TARGET" "$CMD"
        if [ "$OUT_R" != "$OUTIMG" ]; then
            mkdir -p "$OUTDIR_LOKAL"
            cp "$SCRATCH/out/"* "$OUTDIR_LOKAL/" 2>/dev/null || fehler "Kein Render-Output erhalten."
            echo "Output zurueckkopiert nach: $OUTDIR_LOKAL"
        fi
        ;;

    script)
        TOOL="$1"; shift
        ist_nas "$TOOL" || fehler "script-Modus: Tool muss auf /Volumes/daten liegen: $TOOL"
        for a in "$@"; do
            case "$a" in
                /*) ist_nas "$a" || fehler "script-Modus: Pfad nicht auf NAS (kein Auto-Staging): $a" ;;
            esac
        done
        CMD="$(printf '%q' "$C4DPY") $(printf '%q' "$TOOL")$(quote_args "$@") </dev/null"
        ssh "$SSH_USER@$TARGET" "$CMD"
        ;;

    *) fehler "Unbekannter Modus: $MODE (szene|commandline|script)" ;;
esac

echo "Rendern auf Mac Mini abgeschlossen."
