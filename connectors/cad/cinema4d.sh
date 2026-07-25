#!/usr/bin/env bash
# cinema4d.sh — Connector zu Cinema 4D 2026 (Maxon), headless
# Baut Volumen-Szenen und rendert ohne GUI. Validierte Aufrufe (Stand 11.06.2026).
# Voraussetzung: Maxon App eingeloggt (sonst Fehler 718).
#
# Befehle:
#   szene   --obj X.obj [--kontext K.obj] --out DIR --name NAME   # OBJ → C4D-Szene + Renderings
#   render  --c4d SZENE.c4d --out BILD.png                        # Szene rendern (aktive Kamera)
#   open    --datei X.c4d                                          # in der GUI oeffnen
set -eu
C4D="/Applications/Maxon Cinema 4D 2026"
C4DPY="$C4D/c4dpy.app/Contents/MacOS/c4dpy"
CMDLINE="$C4D/Commandline.app/Contents/MacOS/Commandline"
SZENE_PY="/Volumes/daten/jans-ai-hub/skills/volumenstudie/tools/c4d_szene.py"
cmd="${1:-help}"; shift || true
case "$cmd" in
  szene)   printf "1\n" | "$C4DPY" "$SZENE_PY" -- "$@" ;;
  render)  # erwartet --c4d und --out; rendert Frame 0 der zuletzt aktiven Kamera
           c4d=""; out=""; while [ $# -gt 0 ]; do case "$1" in --c4d) c4d="$2"; shift 2;; --out) out="$2"; shift 2;; *) shift;; esac; done
           printf "1\n" | "$CMDLINE" -nogui -render "$c4d" -frame 0 0 -oimage "$out" -oformat PNG ;;
  open)    f=""; while [ $# -gt 0 ]; do case "$1" in --datei) f="$2"; shift 2;; *) shift;; esac; done; open -a "Maxon Cinema 4D 2026" "$f" ;;
  *) sed -n '2,12p' "$0" ;;
esac
