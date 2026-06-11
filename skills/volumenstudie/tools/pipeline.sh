#!/bin/bash
# JANS Volumenstudien-Pipeline — Ein-Befehl-Lauf (v1)
# ====================================================
# pipeline.sh "<Adresse>" <NAME> <OUTDIR> "<V1-Spec>" ["<V2-Spec>" ...]
#
# Beispiel:
#   pipeline.sh "Grubenstrasse 37, Zürich" 2699_GRUB ~/Studien/2699 \
#       "V1:grenzabstand=5,geschosse=4,geschosshoehe=3.0" \
#       "V2:grenzabstand=5,geschosse=6,geschosshoehe=3.0"
#
# Stufen: Geodaten (geo-zh.mjs + Kataster-Polygon) -> Volumen (.3dm/.obj/Kennzahlen)
#         -> C4D-Szene + Renderings je Variante (c4dpy headless)
set -euo pipefail

ADRESSE="$1"; NAME="$2"; OUT="$3"; shift 3
HUB="/Volumes/daten/jans-ai-hub"
VENV="$HOME/.venvs/volumen3d/bin/python"
C4DPY="/Applications/Maxon Cinema 4D 2026/c4dpy.app/Contents/MacOS/c4dpy"
TOOLS="$HUB/skills/volumenstudie/tools"
mkdir -p "$OUT"

echo "1) Geodaten: $ADRESSE"
GEO=$(node "$HUB/skills/planungsgrundlagen/connectors/geo-zh.mjs" --adresse "$ADRESSE" --json --quiet)
E=$(echo "$GEO" | python3 -c "import json,sys; print(json.load(sys.stdin)['coord']['east'])")
N=$(echo "$GEO" | python3 -c "import json,sys; print(json.load(sys.stdin)['coord']['north'])")
EGRID=$(echo "$GEO" | python3 -c "import json,sys; print(json.load(sys.stdin)['egrid'])")
PARZ=$(echo "$GEO" | python3 -c "import json,sys; print(json.load(sys.stdin)['parzelle'])")
echo "   EGRID $EGRID · Parzelle $PARZ · E $E / N $N"

echo "2) Kataster-Polygon"
curl -s "https://api3.geo.admin.ch/rest/services/api/MapServer/identify?geometry=$E,$N&geometryType=esriGeometryPoint&layers=all:ch.kantone.cadastralwebmap-farbe&mapExtent=$((${E%.*}-100)),$((${N%.*}-100)),$((${E%.*}+100)),$((${N%.*}+100))&imageDisplay=100,100,96&tolerance=1&sr=2056&returnGeometry=true&geometryFormat=geojson" \
  -o "$OUT/_identify.json"
python3 - "$OUT" "$EGRID" "$PARZ" "$ADRESSE" <<'EOF'
import json, sys
out, egrid, parz, adresse = sys.argv[1:5]
d = json.load(open(f"{out}/_identify.json"))
r = d["results"][0]
gj = {"type": "Feature",
      "properties": {"parzelle": parz, "egrid": egrid, "adresse": adresse},
      "geometry": r["geometry"]}
json.dump(gj, open(f"{out}/parzelle.geojson", "w"), indent=1)
print(f"   Polygon OK ({r['properties'].get('number')})")
EOF

echo "3) Volumen generieren"
VARGS=(); for v in "$@"; do VARGS+=(--variante "$v"); done
"$VENV" "$TOOLS/volumen_generator.py" --parzelle "$OUT/parzelle.geojson" \
  --out "$OUT" --name "$NAME" "${VARGS[@]}"

echo "4) C4D-Szenen + Renderings"
for v in "$@"; do
  VN="${v%%:*}"
  echo "   Variante $VN"
  "$C4DPY" "$TOOLS/c4d_szene.py" -- --obj "$OUT/${NAME}_${VN}.obj" \
    --kontext "$OUT/${NAME}_kontext.obj" --out "$OUT" --name "${NAME}_${VN}" </dev/null
done

echo "FERTIG: $OUT"
ls -la "$OUT"
