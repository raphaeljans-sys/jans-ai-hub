#!/usr/bin/env python3
# contours2dxf.py — Hoehenlinien-GeoJSON (aus gdal_contour -3d) → CAD-DXF
#
# Hintergrund: Der OGR-DXF-Writer (GDAL 3.13) verwirft die Z-Komponente beim
# Schreiben — direkt gdal_contour → DXF liefert flache 2D-Polylinien. Deshalb
# der validierte Umweg: gdal_contour -3d → GeoJSON (Z korrekt) → dieses Script
# → DXF mit LWPOLYLINE + elevation (Gruppe 38), je Linie auf konstanter Hoehe.
#
# Aufruf: python contours2dxf.py in.geojson out.dxf [--layer HOEHENLINIEN]
import argparse
import json

import ezdxf

p = argparse.ArgumentParser()
p.add_argument("geojson")
p.add_argument("dxf")
p.add_argument("--layer", default="HOEHENLINIEN")
args = p.parse_args()

with open(args.geojson) as f:
    gj = json.load(f)

doc = ezdxf.new("R2010")
doc.layers.add(args.layer, color=8)  # grau
msp = doc.modelspace()

n = 0
for feat in gj.get("features", []):
    geom = feat.get("geometry") or {}
    if geom.get("type") != "LineString":
        continue
    coords = geom["coordinates"]
    if len(coords) < 2:
        continue
    z = coords[0][2] if len(coords[0]) > 2 else 0.0
    msp.add_lwpolyline(
        [(c[0], c[1]) for c in coords],
        dxfattribs={"layer": args.layer, "elevation": z},
    )
    n += 1

doc.saveas(args.dxf)
print(f"{n} Hoehenlinien -> {args.dxf}")
