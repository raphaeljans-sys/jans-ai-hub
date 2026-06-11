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
VENVPY="$HOME/.venvs/volumen3d/bin/python"
HERE="$(cd "$(dirname "$0")" && pwd)"
cmd="${1:-help}"; shift || true
case "$cmd" in
  punkt)  node "$GEO" "$@" --produkt height --json ;;
  dtm)    node "$GEO" "$@" --produkt dtm --download ;;
  hoehenlinien)
          if ! command -v gdal_contour >/dev/null 2>&1; then
            echo "gdal fehlt — Hoehenlinien-Generierung nicht moeglich."
            echo "Einmalige Einrichtung:  brew install gdal"
            exit 5
          fi
          if [ ! -x "$VENVPY" ]; then
            echo "venv ~/.venvs/volumen3d fehlt (braucht ezdxf) — siehe connectors/cad/README.md"
            exit 5
          fi
          # 1) DTM-Kachel beschaffen (geo-zh.mjs legt GeoTIFF in --out ab)
          node "$GEO" "$@" --produkt dtm --download
          # 2) DTM → Hoehenlinien. Der OGR-DXF-Writer verwirft Z (GDAL 3.13),
          #    deshalb gdal_contour -3d → GeoJSON → contours2dxf.py (ezdxf) → DXF
          int="0.5"; out="."; a=("$@"); for ((i=0;i<${#a[@]};i++)); do [ "${a[$i]}" = "--intervall" ] && int="${a[$((i+1))]}"; [ "${a[$i]}" = "--out" ] && out="${a[$((i+1))]}"; done
          shopt -s nullglob
          for tif in "$out"/*alti*.tif; do
            gj="${tif%.tif}_hoehenlinien_${int}m.geojson"
            dxf="${tif%.tif}_hoehenlinien_${int}m.dxf"
            rm -f "$gj"
            gdal_contour -3d -i "$int" "$tif" "$gj"
            "$VENVPY" "$HERE/contours2dxf.py" "$gj" "$dxf" && echo "Hoehenlinien (3D, Hoehe als Z): $dxf"
          done
          ;;
  *) sed -n '2,16p' "$0" ;;
esac
