#!/usr/bin/env python3
"""
JANS Volumen-Generator — Volumenstudien-Pipeline (v1)
=====================================================
Erzeugt aus einem Parzellen-Polygon (GeoJSON, LV95) und Zonenparametern die
3D-Volumenkoerper einer Volumenstudie:

  Parzelle -> Baufeld (Grenzabstand-Offset) -> Extrusion (Geschosse x Geschosshoehe)

OUTPUTS (pro Lauf, in --out):
  <name>.3dm           Rhino-Datei mit Layern: Parzelle / Baufeld / Volumen_<Variante>
  <name>_<var>.obj     OBJ-Mesh je Variante (Uebergabe an Cinema 4D, lokales Koordinatensystem)
  <name>_kontext.obj   Parzellenflaeche als flaches Mesh (Kontext fuer C4D)
  <name>_kennzahlen.json  Kennzahlen je Variante (Baufeld m2, aGF, m3, Hoehe) + Origin LV95

KOORDINATEN: Geometrie wird auf ein lokales Origin (Zentroid der Parzelle, gerundet)
verschoben, damit Rhino/C4D nicht mit LV95-Millionenwerten rechnen muessen.
Das Origin steht in der 3dm-Notiz und im Kennzahlen-JSON (Ruecktransformation moeglich).

AUFRUF:
  volumen_generator.py --parzelle p.geojson --out DIR --name 2699_GRUB \
      --variante "V1:grenzabstand=5,geschosse=4,geschosshoehe=3.0" \
      --variante "V2:grenzabstand=5,geschosse=6,geschosshoehe=3.0"

  Variantensyntax:  NAME:key=val,key=val
    grenzabstand   m, allseitiger Offset Parzelle -> Baufeld (default 5.0)
    geschosse      Anzahl Vollgeschosse (default 4)
    geschosshoehe  m je Geschoss (default 3.0)
    hoehe          m Gesamthoehe (ueberschreibt geschosse*geschosshoehe)

Rules: identifikatoren-verifizieren (Parzelle kommt aus amtlicher Quelle, nie erfunden),
       dateinamen-konvention. Kennzahlen sind geometrisch exakt aus dem Baufeld gerechnet;
       baurechtliche Verbindlichkeit (Ausnuetzung, Hoehenlage) liefert der Skill `machbarkeit`.
"""
import argparse
import json
import math
import sys
from pathlib import Path

import numpy as np
import rhino3dm
import mapbox_earcut
from shapely.geometry import shape, Polygon, MultiPolygon


# --------------------------------------------------------------------------- geometrie
def lade_parzelle(pfad):
    gj = json.load(open(pfad))
    geom = gj["geometry"] if gj.get("type") == "Feature" else gj
    g = shape(geom)
    if isinstance(g, MultiPolygon):
        g = max(g.geoms, key=lambda p: p.area)  # groesste Teilflaeche
    if not isinstance(g, Polygon):
        sys.exit(f"FEHLER: Geometrie ist {g.geom_type}, erwartet Polygon.")
    props = gj.get("properties", {}) if gj.get("type") == "Feature" else {}
    return g, props


def baufeld_aus(parzelle: Polygon, grenzabstand: float) -> Polygon:
    bf = parzelle.buffer(-grenzabstand, join_style=2)  # mitre: kantige Ecken wie Abstandslinien
    if bf.is_empty:
        sys.exit(f"FEHLER: Grenzabstand {grenzabstand} m loescht das Baufeld komplett aus.")
    if isinstance(bf, MultiPolygon):
        bf = max(bf.geoms, key=lambda p: p.area)
    return bf


def ring_lokal(poly: Polygon, origin):
    ox, oy = origin
    pts = [(x - ox, y - oy) for x, y in poly.exterior.coords]
    if pts[0] == pts[-1]:
        pts = pts[:-1]
    # CCW erzwingen (Aussenring-Konvention fuer earcut + Normalen)
    area2 = sum((pts[i][0] * pts[(i + 1) % len(pts)][1] - pts[(i + 1) % len(pts)][0] * pts[i][1])
                for i in range(len(pts)))
    if area2 < 0:
        pts.reverse()
    return pts


# --------------------------------------------------------------------------- obj
def prisma_mesh(pts2d, z0, z1):
    """Vertices+Faces (Dreiecke) eines extrudierten Polygons (Boden, Deckel, Mantel)."""
    n = len(pts2d)
    verts = [(x, y, z0) for x, y in pts2d] + [(x, y, z1) for x, y in pts2d]
    arr = np.array(pts2d, dtype=np.float64).reshape(-1, 2)
    tris = mapbox_earcut.triangulate_float64(arr, np.array([n], dtype=np.uint32))
    faces = []
    for i in range(0, len(tris), 3):
        a, b, c = int(tris[i]), int(tris[i + 1]), int(tris[i + 2])
        faces.append((a, c, b))              # Boden (Normale nach unten)
        faces.append((a + n, b + n, c + n))  # Deckel (Normale nach oben)
    for i in range(n):                       # Mantel
        j = (i + 1) % n
        faces.append((i, j, j + n))
        faces.append((i, j + n, i + n))
    return verts, faces


def schreibe_obj(pfad, verts, faces, objektname):
    with open(pfad, "w") as f:
        f.write(f"# JANS Volumen-Generator\no {objektname}\n")
        for v in verts:
            f.write(f"v {v[0]:.3f} {v[1]:.3f} {v[2]:.3f}\n")
        for a, b, c in faces:
            f.write(f"f {a + 1} {b + 1} {c + 1}\n")


# --------------------------------------------------------------------------- 3dm
def polylinie(pts2d, z=0.0):
    pl = rhino3dm.Polyline()
    for x, y in pts2d:
        pl.Add(x, y, z)
    pl.Add(pts2d[0][0], pts2d[0][1], z)  # schliessen
    return pl.ToPolylineCurve()


def layer_anlegen(modell, name, farbe):
    lyr = rhino3dm.Layer()
    lyr.Name = name
    lyr.Color = farbe
    return modell.Layers.Add(lyr)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--parzelle", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--name", required=True, help="Dateistamm, z.B. 2699_GRUB")
    ap.add_argument("--variante", action="append", required=True,
                    help='NAME:grenzabstand=5,geschosse=4,geschosshoehe=3.0[,hoehe=18]')
    args = ap.parse_args()

    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)

    parzelle, props = lade_parzelle(args.parzelle)
    cx, cy = parzelle.centroid.x, parzelle.centroid.y
    origin = (round(cx), round(cy))

    modell = rhino3dm.File3dm()
    modell.Settings.ModelUnitSystem = rhino3dm.UnitSystem.Meters
    modell.ApplicationName = "JANS Volumen-Generator"
    modell.ApplicationDetails = (f"Volumenstudie {args.name} · Origin LV95: E {origin[0]} / N {origin[1]}"
                                 f" · Parzelle {props.get('parzelle', '?')} · EGRID {props.get('egrid', '?')}")

    li_parz = layer_anlegen(modell, "Parzelle", (90, 90, 90, 255))
    p_pts = ring_lokal(parzelle, origin)
    attr = rhino3dm.ObjectAttributes(); attr.LayerIndex = li_parz
    modell.Objects.AddCurve(polylinie(p_pts), attr)

    # Kontext-Mesh der Parzelle (flach) fuer C4D
    kv, kf = prisma_mesh(p_pts, -0.05, 0.0)
    schreibe_obj(out / f"{args.name}_kontext.obj", kv, kf, "Parzelle")

    kennzahlen = {"origin_lv95": {"E": origin[0], "N": origin[1]},
                  "parzelle": {"nummer": props.get("parzelle"), "egrid": props.get("egrid"),
                               "flaeche_m2": round(parzelle.area, 1)},
                  "varianten": []}

    farben = [(0, 120, 215, 255), (210, 80, 30, 255), (40, 160, 90, 255), (150, 60, 180, 255)]
    for idx, vspec in enumerate(args.variante):
        vname, _, rest = vspec.partition(":")
        p = {"grenzabstand": 5.0, "geschosse": 4, "geschosshoehe": 3.0, "hoehe": None}
        for kv_ in filter(None, rest.split(",")):
            k, _, v = kv_.partition("=")
            p[k.strip()] = float(v)
        hoehe = p["hoehe"] if p["hoehe"] else p["geschosse"] * p["geschosshoehe"]
        geschosse = int(p["geschosse"])

        bf = baufeld_aus(parzelle, p["grenzabstand"])
        b_pts = ring_lokal(bf, origin)

        li_bf = layer_anlegen(modell, f"Baufeld_{vname}", (160, 160, 160, 255))
        attr = rhino3dm.ObjectAttributes(); attr.LayerIndex = li_bf
        modell.Objects.AddCurve(polylinie(b_pts), attr)

        li_vol = layer_anlegen(modell, f"Volumen_{vname}", farben[idx % len(farben)])
        ext = rhino3dm.Extrusion.Create(polylinie(b_pts), hoehe, True)
        attr = rhino3dm.ObjectAttributes(); attr.LayerIndex = li_vol; attr.Name = f"Volumen_{vname}"
        modell.Objects.AddExtrusion(ext, attr)
        # Geschosslinien als visuelle Hilfe
        for g in range(1, geschosse):
            modell.Objects.AddCurve(polylinie(b_pts, z=g * p["geschosshoehe"]), attr)

        vv, vf = prisma_mesh(b_pts, 0.0, hoehe)
        schreibe_obj(out / f"{args.name}_{vname}.obj", vv, vf, f"Volumen_{vname}")

        kennzahlen["varianten"].append({
            "variante": vname,
            "grenzabstand_m": p["grenzabstand"],
            "baufeld_m2": round(bf.area, 1),
            "geschosse": geschosse,
            "hoehe_m": round(hoehe, 2),
            "aGF_m2": round(bf.area * geschosse, 0),
            "volumen_m3": round(bf.area * hoehe, 0),
        })

    pfad_3dm = out / f"{args.name}.3dm"
    modell.Write(str(pfad_3dm), 8)
    json.dump(kennzahlen, open(out / f"{args.name}_kennzahlen.json", "w"), indent=1, ensure_ascii=False)

    print(f"OK: {pfad_3dm}")
    for v in kennzahlen["varianten"]:
        print(f"  {v['variante']}: Baufeld {v['baufeld_m2']} m2 · {v['geschosse']} Geschosse · "
              f"aGF {v['aGF_m2']:.0f} m2 · {v['volumen_m3']:.0f} m3")


if __name__ == "__main__":
    main()
