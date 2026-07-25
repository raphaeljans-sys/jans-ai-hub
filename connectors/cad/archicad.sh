#!/usr/bin/env bash
# archicad.sh — Connector zu ArchiCAD (Graphisoft)
# WICHTIG: ArchiCAD hat keine offizielle Kommandozeilen-Automation. Die Bruecke
# zwischen Hub und ArchiCAD ist der DATEIAUSTAUSCH (DXF/IFC) — siehe Schichtenvertrag
# im Konzept docs/konzepte/260611-CAD-Datenaustausch-Machbarkeit. Dieser Connector
# oeffnet ArchiCAD mit einer Austauschdatei und prueft die Lizenz.
#
# Befehle:
#   open    --datei X.dxf|X.ifc|X.pln [--version 27|26|25]   # in ArchiCAD oeffnen
#   lizenz                                                    # License Manager Tool starten
set -eu
ver="27"
cmd="${1:-help}"; shift || true
case "$cmd" in
  open)  f=""; while [ $# -gt 0 ]; do case "$1" in --datei) f="$2"; shift 2;; --version) ver="$2"; shift 2;; *) shift;; esac; done
         APP="/Applications/Graphisoft/Archicad $ver"; [ -d "$APP" ] || APP="/Applications/Graphisoft/Archicad $ver Apple Silicon"
         [ -d "$APP" ] || { echo "Archicad $ver nicht gefunden"; exit 1; }
         open -a "$APP" "$f" ;;
  lizenz) open "/Applications/Graphisoft/License Manager Tool/GRAPHISOFT License Manager Tool.app"; echo "CodeMeter-WebAdmin: http://localhost:22350" ;;
  *) sed -n '2,11p' "$0" ;;
esac
