#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Baut den AZ-treuen Neubau-Kubus fuer 2623 als OBJ in situationsmodell-Lokalkoordinaten.
   Origin = Parzellen-Zentroid (unrundet, identisch situationsmodell.py).
   Hauptkoerper 16x9 m, Attika 11x6 rueckversetzt; an Parzellen-Laengsachse ausgerichtet.
   Z relativ (situationsmodell setzt es auf OKT-Terrain): UG taucht talseitig auf."""
import json, math
from pathlib import Path
from shapely.geometry import shape

HER = Path(__file__).parent
parz = shape(json.load(open(HER / "parzelle.geojson"))["geometry"])
if parz.geom_type == "MultiPolygon":
    parz = max(parz.geoms, key=lambda g: g.area)
ox, oy = parz.centroid.x, parz.centroid.y          # gleicher Origin wie situationsmodell

# Orientierung aus Oriented-BBox: Langachse u, Querachse v
mrr = list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a, b): return (b[0]-a[0], b[1]-a[1])
def norm(p): l=math.hypot(*p); return (p[0]/l, p[1]/l)
e0 = vec(mrr[0], mrr[1]); e1 = vec(mrr[1], mrr[2])
if math.hypot(*e0) >= math.hypot(*e1):
    u = norm(e0); v = norm(e1)
else:
    u = norm(e1); v = norm(e0)

# Baufeld-Zentrum (Parzelle minus 5 m Grenzabstand) als Gebaeudemitte
bf = parz.buffer(-5.0, join_style=2)
if bf.geom_type == "MultiPolygon":
    bf = max(bf.geoms, key=lambda g: g.area)
cx, cy = bf.centroid.x, bf.centroid.y

def box(L, W, z0, z1):
    """Achsenausgerichtetes Rechteck (an u/v) um (cx,cy), extrudiert; OBJ-Verts (lokal)."""
    hl, hw = L/2, W/2
    corners = []
    for sl, sw in [(-1,-1),(1,-1),(1,1),(-1,1)]:
        x = cx + sl*hl*u[0] + sw*hw*v[0]
        y = cy + sl*hl*u[1] + sw*hw*v[1]
        corners.append((x-ox, y-oy))
    verts = [(x,y,z0) for x,y in corners] + [(x,y,z1) for x,y in corners]
    faces = [(0,3,2,1),(4,5,6,7)]                 # Boden, Deckel
    for i in range(4):                            # Mantel
        j=(i+1)%4; faces.append((i,j,j+4,i+4))
    return verts, faces

def schreibe(pfad, verts, faces, name):
    with open(pfad,"w") as f:
        f.write(f"# JANS 2623 Neubau-Massstudie\no {name}\n")
        for x,y,z in verts: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
        for fc in faces: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")

# Z relativ zu OKT (Terrain am Zentroid). Hang ~21%: UG taucht talseitig auf.
# Hauptkoerper -2.5..+6.5 (9.0 m), Attika +6.5..+9.5 (3.0 m, rueckversetzt 11x6)
vh, fh = box(16.0, 9.0, -2.5, 6.5)
schreibe(HER/"2623_B_haupt.obj", vh, fh, "Volumen_B")
va, fa = box(11.0, 6.0, 6.5, 9.5)
schreibe(HER/"2623_B_ATTIKA.obj", va, fa, "Volumen_B_ATTIKA")

print(f"Origin LV95 (Parz-Zentroid): E {ox:.2f} / N {oy:.2f}")
print(f"Baufeld-Zentrum: E {cx:.2f} / N {cy:.2f}  | Baufeld {bf.area:.0f} m2")
print(f"Langachse u={tuple(round(c,3) for c in u)}  Querachse v={tuple(round(c,3) for c in v)}")
print("OBJ: 2623_B_haupt.obj (16x9, h 9.0)  +  2623_B_ATTIKA.obj (11x6, h 3.0)")
print(f"Footprint Hauptkoerper 144 m2 · Attika 66 m2")
