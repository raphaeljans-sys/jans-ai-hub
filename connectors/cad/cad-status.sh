#!/usr/bin/env bash
# cad-status.sh — JANS CAD-Connector Statuscheck (Cinema 4D / Rhino / ArchiCAD)
# Prueft Installation + Lizenz-Hinweise der lokal verbundenen CAD-Programme.
# Aufruf:  bash connectors/cad/cad-status.sh
set -u
ok(){ printf "  \033[32m✓\033[0m %s\n" "$1"; }
no(){ printf "  \033[31m✗\033[0m %s\n" "$1"; }
inf(){ printf "  · %s\n" "$1"; }

echo "════════ JANS CAD-Connector Status ($(date +%d.%m.%Y\ %H:%M)) ════════"

echo; echo "▸ CINEMA 4D (Maxon)"
C26="/Applications/Maxon Cinema 4D 2026"
[ -d "$C26" ] && ok "Cinema 4D 2026 installiert" || no "Cinema 4D 2026 fehlt"
[ -d "$C26/c4dpy.app" ] && ok "c4dpy (headless Python) vorhanden" || no "c4dpy fehlt"
[ -d "$C26/Commandline.app" ] && ok "Commandline-Renderer vorhanden" || inf "Commandline-Renderer nicht gefunden"
[ -d "/Applications/Maxon.app" ] && ok "Maxon App installiert (Lizenz/Login)" || no "Maxon App fehlt"
inf "Lizenz: Maxon App muss eingeloggt sein (sonst c4dpy-Fehler 718). GUI: Maxon App oeffnen → angemeldet?"

echo; echo "▸ RHINO (McNeel)"
[ -d "/Applications/Rhino 8.app" ] && ok "Rhino 8 installiert ($(defaults read '/Applications/Rhino 8.app/Contents/Info' CFBundleShortVersionString 2>/dev/null))" || no "Rhino 8 fehlt"
LIC=~/Library/Application\ Support/McNeel/Rhinoceros/8.0/License\ Manager/Licenses
if ls "$LIC"/*.lic >/dev/null 2>&1 || [ -d "$LIC" ]; then ok "Lizenz-Ordner vorhanden (Rhino lizenziert)"; else inf "Lizenz in GUI pruefen (Rhino → ueber Rhinoceros)"; fi
inf "Headless-Geometrie laeuft ueber rhino3dm im venv ~/.venvs/volumen3d (kein GUI-Rhino noetig)"

echo; echo "▸ ARCHICAD (Graphisoft)"
for v in 27 26\ Apple\ Silicon 25; do
  D="/Applications/Graphisoft/Archicad $v"; [ -d "$D" ] || D="/Applications/Graphisoft/ARCHICAD $v"
  [ -d "$D" ] && ok "Archicad $v installiert" || true
done
[ -d "/Applications/Graphisoft/License Manager Tool" ] && ok "Graphisoft License Manager Tool vorhanden" || no "License Manager Tool fehlt"
[ -d "/Applications/CodeMeter.app" ] && ok "CodeMeter installiert (Wibu-Lizenzcontainer)" || inf "CodeMeter nicht gefunden"
if curl -s -m 2 http://localhost:22350/ >/dev/null 2>&1; then ok "CodeMeter-Dienst laeuft (WebAdmin http://localhost:22350)"; else inf "CodeMeter-WebAdmin nicht erreichbar — Dienst evtl. aus"; fi
inf "Lizenz: GRAPHISOFT License Manager Tool oeffnen → aktive Lizenz/CodeMeter-Container pruefen"
inf "ArchiCAD-Bruecke = Dateiaustausch (DXF/IFC), keine CLI-Automation (siehe README)"

echo; echo "▸ GEODATEN / TERRAIN-TOOLING"
command -v node >/dev/null && ok "node vorhanden (geo-zh.mjs Connector)" || no "node fehlt"
if command -v gdal_contour >/dev/null; then ok "gdal_contour vorhanden (Hoehenlinien-Generierung)"; else no "gdal FEHLT → fuer Hoehenlinien:  brew install gdal"; fi
[ -x ~/.venvs/volumen3d/bin/python ] && ok "venv volumen3d vorhanden (rhino3dm/shapely)" || no "venv volumen3d fehlt → Setup-Task offen"
echo; echo "════════════════════════════════════════════════════════════"
