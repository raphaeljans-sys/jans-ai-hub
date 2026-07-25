#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Schraegdach-Variante 2623 nach Referenz "89 Komorow": Cluster steiler
   Walmdach-Pavillons, den Hang hinabgestaffelt. Ein OBJ in situationsmodell-
   Lokalkoordinaten; z absolut-relativ zum Zentroid-Terrain (--vol-okt = Zentroidhoehe)."""
import json, math, urllib.request
from pathlib import Path
from shapely.geometry import shape

HER = Path(__file__).parent
parz = shape(json.load(open(HER / "parzelle.geojson"))["geometry"])
if parz.geom_type == "MultiPolygon":
    parz = max(parz.geoms, key=lambda g: g.area)
ox, oy = parz.centroid.x, parz.centroid.y

mrr = list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a, b): return (b[0]-a[0], b[1]-a[1])
def norm(p): l=math.hypot(*p); return (p[0]/l, p[1]/l)
e0 = vec(mrr[0], mrr[1]); e1 = vec(mrr[1], mrr[2])
u, v = (norm(e0), norm(e1)) if math.hypot(*e0) >= math.hypot(*e1) else (norm(e1), norm(e0))

bf = parz.buffer(-5.0, join_style=2)
if bf.geom_type == "MultiPolygon":
    bf = max(bf.geoms, key=lambda g: g.area)
cx, cy = bf.centroid.x, bf.centroid.y          # Baufeld-Zentrum als Cluster-Mitte

def hoehe(E, N):
    url = f"https://api3.geo.admin.ch/rest/services/height?easting={E:.2f}&northing={N:.2f}&sr=2056"
    with urllib.request.urlopen(url, timeout=20) as r:
        return float(json.load(r)["height"])

zentroid_h = hoehe(ox, oy)                       # = okt-Datum (an situationsmodell uebergeben)

# Pavillons: (u_offset, v_offset, grundriss, wandhoehe, dachhoehe)  -- entlang Langachse gestaffelt
# u-positiv Richtung norm(e0); Hangrichtung egal, da z je Pavillon aus Terrain.
PAV = [
    ( -8.5,  0.4, 8.0, 3.4, 8.8),   # Hero, am hoechsten
    ( -1.5, -0.5, 6.5, 2.9, 6.6),
    (  5.0,  0.5, 7.0, 3.1, 7.4),
    ( 11.0, -0.4, 5.0, 2.6, 5.2),   # kleiner Akzent talseitig
]

def pav_mesh(uo, vo, F, hw, hr, z0):
    """Walmdach-Pavillon (quadratischer Grundriss F, Pyramidendach) -> (verts, faces) lokal."""
    h = F / 2.0
    ctr = (cx + uo*u[0] + vo*v[0], cy + uo*u[1] + vo*v[1])
    def P(su, sv):  # Eckpunkt in lokalen XY
        x = ctr[0] + su*h*u[0] + sv*h*v[0] - ox
        y = ctr[1] + su*h*u[1] + sv*h*v[1] - oy
        return (x, y)
    base = [P(-1,-1), P(1,-1), P(1,1), P(-1,1)]
    verts = [(x, y, z0) for x, y in base] + [(x, y, z0+hw) for x, y in base]
    apex = (ctr[0]-ox, ctr[1]-oy, z0+hw+hr)
    verts.append(apex)                      # idx 8
    faces = []
    faces.append((0,3,2,1))                 # Boden
    for i in range(4):                      # Waende
        j=(i+1)%4; faces.append((i, j, j+4, i+4))
    for i in range(4):                      # Dach (Walm -> 4 Dreiecke zur Spitze)
        j=(i+1)%4; faces.append((i+4, j+4, 8))
    return verts, faces

allv, allf = [], []
report = []
for uo, vo, F, hw, hr in PAV:
    E = cx + uo*u[0] + vo*v[0]; N = cy + uo*u[1] + vo*v[1]
    th = hoehe(E, N)
    z0 = (th - zentroid_h) - 0.3            # je Pavillon auf eigenem Terrain (0.3 eingebunden)
    vts, fcs = pav_mesh(uo, vo, F, hw, hr, z0)
    off = len(allv)
    allv += vts
    allf += [tuple(i+off for i in f) for f in fcs]
    pitch = math.degrees(math.atan(hr / (F/2)))
    report.append((F, hw, hr, round(th,1), round(pitch)))

with open(HER / "2623_R_schraegdach.obj", "w") as f:
    f.write("# JANS 2623 Schraegdach-Variante (Cluster Walmdach-Pavillons, Ref 89 Komorow)\no Volumen_R\n")
    for x,y,z in allv: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
    for fc in allf: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")

print(f"Zentroid-Terrain (okt-Datum): {zentroid_h:.2f} m ue.M.")
foot = sum(p[0]**2 for p in PAV)
print(f"Pavillons: {len(PAV)} | Footprint total ~{foot:.0f} m2")
for i,(F,hw,hr,th,pit) in enumerate(report,1):
    print(f"  P{i}: {F:.1f}x{F:.1f} m | Wand {hw} m | Dach {hr} m (~{pit} Grad) | Terrain {th} m ue.M.")
print("OBJ: 2623_R_schraegdach.obj")
print(f"VOL_OKT={zentroid_h:.2f}")
