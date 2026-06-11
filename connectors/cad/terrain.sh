#!/usr/bin/env bash
# terrain.sh — Hoehen-/Topografie-Connector (swissALTI3D) fuer eine Parzelle/Adresse
# Stuetzt sich auf den bestehenden Geo-Connector planungsgrundlagen/connectors/geo-zh.mjs.
# Liefert die drei Hoehen-Stufen fuer den CAD-Datenaustausch (LV95):
#   punkt     = eine Kote (m ue.M.) an der Adress-/Parzellenkoordinate   [immer verfuegbar]
#   dtm       = swissALTI3D-Kachel-URLs (0.5 m Terrainmodell) herunterladen [immer verfuegbar]
#   hoehenlinien = Vektor-Hoehenlinien als DXF aus dem DTM                  [braucht gdal]
#
# Aufruf:
#   bash terrain.sh punkt        --adresse "Giebelweg 12, Langnau am Albis"
#   bash terrain.sh dtm          --adresse "..." --out /pfad/projekt
#   bash terrain.sh hoehenlinien --adresse "..." --out /pfad/projekt [--intervall 0.5]
set -eu
GEO="/Volumes/daten/jans-ai-hub/skills/planungsgrundlagen/connectors/geo-zh.mjs"
cmd="${1:-help}"; shift || true
case "$cmd" in
  punkt)  node "$GEO" "$@" --produkt height --json ;;
  dtm)    node "$GEO" "$@" --produkt dtm --download ;;
  hoehenlinien)
          if ! command -v gdal_contour >/dev/null 2>&1; then
            echo "gdal fehlt — Hoehenlinien-Generierung nicht moeglich."
            echo "Einmalige Einrichtung:  brew install gdal"
            echo "Mechanik danach: DTM-GeoTIFF (terrain.sh dtm) → gdal_contour -3d -i <intervall> in.tif out.dxf"
            exit 5
          fi
          # 1) DTM-Kachel beschaffen (geo-zh.mjs legt GeoTIFF in --out ab)
          node "$GEO" "$@" --produkt dtm --download
          # 2) aus jedem heruntergeladenen DTM-GeoTIFF Hoehenlinien als DXF erzeugen
          int="0.5"; out="."; a=("$@"); for ((i=0;i<${#a[@]};i++)); do [ "${a[$i]}" = "--intervall" ] && int="${a[$((i+1))]}"; [ "${a[$i]}" = "--out" ] && out="${a[$((i+1))]}"; done
          shopt -s nullglob
          for tif in "$out"/*swissalti3d*.tif "$out"/*alti*.tif; do
            dxf="${tif%.tif}_hoehenlinien_${int}m.dxf"
            # DXF kann keine Attributfelder — Hoehe steckt via -3d in der Geometrie (3D-Polylinien)
            gdal_contour -3d -i "$int" "$tif" "$dxf" && echo "Hoehenlinien: $dxf"
          done
          ;;
  *) sed -n '2,16p' "$0" ;;
esac
