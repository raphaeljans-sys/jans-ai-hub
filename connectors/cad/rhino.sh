#!/usr/bin/env bash
# rhino.sh — Connector zu Rhino 8 (McNeel)
# Zwei Wege: GUI (Datei oeffnen) und headless (rhino3dm im venv, kein GUI noetig).
#
# Befehle:
#   open    --datei X.3dm                 # in Rhino 8 GUI oeffnen
#   info    --datei X.3dm                 # Layer + Objektzahl headless auslesen (rhino3dm)
#   py      SCRIPT.py [args...]           # beliebiges rhino3dm-Python im venv ausfuehren
set -eu
VENV="$HOME/.venvs/volumen3d/bin/python"
cmd="${1:-help}"; shift || true
case "$cmd" in
  open)  f=""; while [ $# -gt 0 ]; do case "$1" in --datei) f="$2"; shift 2;; *) shift;; esac; done; open -a "Rhino 8" "$f" ;;
  info)  f=""; while [ $# -gt 0 ]; do case "$1" in --datei) f="$2"; shift 2;; *) shift;; esac; done
         [ -x "$VENV" ] || { echo "venv volumen3d fehlt (rhino3dm) — Setup-Task offen"; exit 5; }
         "$VENV" - "$f" <<'PY'
import sys, rhino3dm
m = rhino3dm.File3dm.Read(sys.argv[1])
print("Layer:", [l.Name for l in m.Layers])
print("Objekte:", len(m.Objects))
PY
         ;;
  py)    [ -x "$VENV" ] || { echo "venv volumen3d fehlt — Setup-Task offen"; exit 5; }; "$VENV" "$@" ;;
  *) sed -n '2,9p' "$0" ;;
esac
