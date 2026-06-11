#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
situationsmodell.py — 3D-Situationsmodell aus amtlichen Quellen (Volumenstudie)

Kombiniert die zwei getrennten amtlichen Quellen zum Situationsmodell:
  swissALTI3D        -> Gelaendemodell (Terrain, ohne Bauten/Bewuchs)
  swissBUILDINGS3D 2 -> Gebaeudekuben (Kachel-DXF, Polyface-Meshes, LV95+Hoehe)
  (swissSURFACE3D     -> Punktwolke, bei Bedarf; via geo-zh.mjs --produkt punktwolke)

Layer-Trennung (verbindlich):
  SITU_TERRAIN           Gelaende-Mesh
  SITU_GEB_KONTEXT       Nachbargebaeude (weiss)
  SITU_BESTAND_PARZELLE  Bestandsgebaeude AUF der Parzelle (eigener Layer -> aus-/einblendbar,
                         fuer Ersatzneubau-Studien vom Kontext getrennt)
  BASIS_PARZELLE         Parzellen-Umring (auf Terrain projiziert)
  VOL_VARIANTE_<X>       eingesetzte Neubau-Volumen (beige)

Systemgrenze: Puffer um die Parzelle (--radius, Default 30 m) = "Nachbarring, knapp".
Gebaeude, die den Puffer schneiden, kommen ins Modell; Terrain = Puffer-BBox + 10 m.

Koordinaten: lokales System, Origin = Parzellen-Zentroid (XY) auf 0 m (Z bleibt m ue.M.!
-> Hoehenlagen direkt ablesbar). Origin in Kennzahlen-JSON + 3dm-Notes dokumentiert.
Gleiche Origin-Konvention wie volumen_generator.py -> Varianten-OBJs passen direkt.

Aufruf (venv ~/.venvs/volumen3d):
  python situationsmodell.py --parzelle p.geojson --gebaeude TILE.dxf --dtm CLIP.tif \
      --name 2621_GIEB --out DIR [--radius 30] [--variante A:pfad.obj ...] \
      [--vol-okt 549.1] [--render]
"""
import argparse, json, subprocess, sys, tempfile
from pathlib import Path

import numpy as np
import ezdxf
import rhino3dm as r3
from shapely.geometry import Polygon, Point, shape

WEISS, BEIGE, GRAU = (245, 245, 245, 255), (222, 184, 135, 255), (200, 200, 200, 255)


def lade_parzelle(p):
    gj = json.loads(Path(p).read_text())
    geom = gj["features"][0]["geometry"] if gj.get("type") == "FeatureCollection" else gj.get("geometry", gj)
    g = shape(geom)
    if g.geom_type == "MultiPolygon":
        g = max(g.geoms, key=lambda x: x.area)
    return g


def terrain_grid(dtm_tif, bbox, aufl=1.0):
    """DTM-Ausschnitt als Punktgitter (gdal_translate -> XYZ); bbox=(minx,miny,maxx,maxy) LV95."""
    with tempfile.NamedTemporaryFile(suffix=".xyz", delete=False) as t:
        xyz = t.name
    subprocess.run(["gdal_translate", "-q", "-of", "XYZ", "-tr", str(aufl), str(aufl),
                    "-projwin", str(bbox[0]), str(bbox[3]), str(bbox[2]), str(bbox[1]),
                    dtm_tif, xyz], check=True)
    pts = np.loadtxt(xyz)
    Path(xyz).unlink()
    xs, ys = np.unique(pts[:, 0]), np.unique(pts[:, 1])[::-1]
    Z = pts[:, 2].reshape(len(ys), len(xs))
    return xs, ys, Z


def terrain_mesh(xs, ys, Z, ox, oy):
    """Regelmaessiges Gitter -> rhino3dm-Mesh (lokale XY, Z = m ue.M.)."""
    m = r3.Mesh()
    nx, ny = len(xs), len(ys)
    for j in range(ny):
        for i in range(nx):
            m.Vertices.Add(xs[i] - ox, ys[j] - oy, float(Z[j, i]))
    for j in range(ny - 1):
        for i in range(nx - 1):
            a = j * nx + i
            m.Faces.AddFace(a, a + 1, a + nx + 1, a + nx)
    m.Normals.ComputeNormals()
    return m


def hoehe_an(xs, ys, Z, x, y):
    i = int(np.clip(np.searchsorted(xs, x), 0, len(xs) - 1))
    j = int(np.clip(np.searchsorted(-ys, -y), 0, len(ys) - 1))  # ys absteigend
    return float(Z[j, i])


def gebaeude_meshes(dxf_pfad, grenze):
    """Polyface-Meshes der Kachel; Rueckgabe [(shapely-footprint, [(x,y,z)...], [faces])]"""
    doc = ezdxf.readfile(dxf_pfad)
    out = []
    for e in doc.modelspace().query("POLYLINE"):
        if not e.is_poly_face_mesh:
            continue
        b = ezdxf.render.MeshBuilder.from_polyface(e)
        if not b.vertices:
            continue
        vs = [(v.x, v.y, v.z) for v in b.vertices]
        xy = [(v[0], v[1]) for v in vs]
        mnx, mny = min(p[0] for p in xy), min(p[1] for p in xy)
        mxx, mxy = max(p[0] for p in xy), max(p[1] for p in xy)
        if not grenze.intersects(Polygon([(mnx, mny), (mxx, mny), (mxx, mxy), (mnx, mxy)])):
            continue
        out.append((Point((mnx + mxx) / 2, (mny + mxy) / 2), vs, list(b.faces)))
    return out


def zu_rhino(vs, faces, ox, oy):
    m = r3.Mesh()
    for x, y, z in vs:
        m.Vertices.Add(x - ox, y - oy, z)
    for f in faces:
        f = list(f)
        if len(f) >= 4 and f[2] != f[3]:
            m.Faces.AddFace(f[0], f[1], f[2], f[3])
        else:
            m.Faces.AddFace(f[0], f[1], f[2])
    m.Normals.ComputeNormals()
    return m


def obj_schreiben(pfad, gruppen):
    """gruppen: {name: [(vs, faces), ...]} -> ein OBJ mit g-Gruppen (lokale Koordinaten)."""
    off = 1
    with open(pfad, "w") as f:
        f.write("# JANS Situationsmodell (lokal: Origin=Parzellen-Zentroid, Z=m ue.M.)\n")
        for name, meshes in gruppen.items():
            f.write(f"g {name}\n")
            for vs, faces in meshes:
                for x, y, z in vs:
                    f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
                for fc in faces:
                    fc = [i + off for i in (fc if len(set(fc)) > 3 else fc[:3])]
                    f.write("f " + " ".join(str(i) for i in fc) + "\n")
                off += len(vs)


def lade_obj(pfad):
    vs, faces = [], []
    for line in Path(pfad).read_text().splitlines():
        p = line.split()
        if not p:
            continue
        if p[0] == "v":
            vs.append((float(p[1]), float(p[2]), float(p[3])))
        elif p[0] == "f":
            faces.append([int(t.split("/")[0]) - 1 for t in p[1:]])
    return vs, faces


def kugel_mesh(cx, cy, cz, r, nu=10, nv=7):
    """UV-Kugel als (vs, faces) — Baumkrone."""
    vs, faces = [], []
    for j in range(nv + 1):
        ph = np.pi * j / nv
        for i in range(nu):
            th = 2 * np.pi * i / nu
            vs.append((cx + r * np.sin(ph) * np.cos(th), cy + r * np.sin(ph) * np.sin(th), cz + r * np.cos(ph)))
    for j in range(nv):
        for i in range(nu):
            a = j * nu + i; b = j * nu + (i + 1) % nu
            faces.append([a, b, b + nu, a + nu])
    return vs, faces


def baum_meshes(baeume):
    """Baeume -> [(vs, faces)] Kronen + schlanke Stamm-Quader (lokale Koordinaten)."""
    out = []
    for b in baeume:
        kr = b["r"]; kh = b["z"] + b["h"] - kr            # Kronenzentrum
        out.append(kugel_mesh(b["x"], b["y"], kh, kr))
        s = 0.18                                           # Stamm
        z0, z1 = b["z"], max(b["z"] + b["h"] - 2 * kr, b["z"] + 0.5)
        vs = [(b["x"]-s, b["y"]-s, z0), (b["x"]+s, b["y"]-s, z0), (b["x"]+s, b["y"]+s, z0), (b["x"]-s, b["y"]+s, z0),
              (b["x"]-s, b["y"]-s, z1), (b["x"]+s, b["y"]-s, z1), (b["x"]+s, b["y"]+s, z1), (b["x"]-s, b["y"]+s, z1)]
        out.append((vs, [[0,1,5,4],[1,2,6,5],[2,3,7,6],[3,0,4,7],[4,5,6,7]]))
    return out


def render_axo(png, terrain, kontext, bestand, varianten, parz_xy, baeume=None):
    """Schneller Nachweis-Render (matplotlib): weisses Modell, beige Varianten."""
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    from mpl_toolkits.mplot3d.art3d import Poly3DCollection
    from matplotlib.colors import LightSource
    fig = plt.figure(figsize=(12, 12), dpi=120)
    ax = fig.add_subplot(111, projection="3d")
    xs, ys, Z, ox, oy = terrain

    # ALLES als eine Poly-Sammlung (ein Painter's-Sort statt Surface-vs-Collection-Konflikt)
    sonne = np.array([-0.5, 0.35, 0.8]); sonne /= np.linalg.norm(sonne)

    def shade(polys, basis, ambient=0.62):
        out = []
        b = np.array(matplotlib.colors.to_rgb(basis))
        for p in polys:
            v = np.array(p)
            if len(v) >= 3:
                n = np.cross(v[1] - v[0], v[2] - v[0])
                ln = np.linalg.norm(n)
                lam = ambient + (1 - ambient) * max(0.0, abs(float(np.dot(n / ln, sonne)))) if ln > 0 else 0.85
            else:
                lam = 0.85
            out.append(tuple(np.clip(b * lam, 0, 1)))
        return out

    polys, cols = [], []
    st = max(1, len(xs) // 110)
    for j in range(0, len(ys) - st, st):
        for i in range(0, len(xs) - st, st):
            polys.append([(xs[i]-ox, ys[j]-oy, Z[j, i]), (xs[i+st]-ox, ys[j]-oy, Z[j, i+st]),
                          (xs[i+st]-ox, ys[j+st]-oy, Z[j+st, i+st]), (xs[i]-ox, ys[j+st]-oy, Z[j+st, i])])
    cols += shade(polys, "#ffffff", ambient=0.78)   # Terrain hell wie Referenz-Weissmodell

    def add(meshes, farbe):
        nonlocal polys, cols
        neu = []
        for vs, faces in meshes:
            for f in faces:
                neu.append([vs[i] for i in f])
        polys += neu; cols += shade(neu, farbe)
    add(kontext, "#ffffff")
    add(bestand, "#e0e0e0")          # Bestand auf Parzelle: leicht abgesetzt
    add(varianten, "#d9a86c")        # Neubau: beige
    if baeume:
        add(baum_meshes(baeume), "#c9c5ba")   # Baeume: helles Graubeige wie Referenz
    ax.add_collection3d(Poly3DCollection(polys, facecolors=cols, edgecolor="none"))

    px, py = zip(*parz_xy)
    pz = [hoehe_an(xs, ys, Z, x + ox, y + oy) + 0.4 for x, y in parz_xy]
    ax.plot(px, py, pz, color="#b07840", linewidth=1.4)
    zmid = float(np.nanmean(Z)); sp = (xs[-1] - xs[0]) / 2
    ax.set_xlim(-sp, sp); ax.set_ylim(-sp, sp); ax.set_zlim(zmid - sp * 0.5, zmid + sp * 0.5)
    ax.set_box_aspect((1, 1, 0.5))
    ax.view_init(elev=48, azim=-55)
    ax.set_proj_type("ortho")
    ax.set_axis_off()
    plt.savefig(png, bbox_inches="tight", facecolor="white", pad_inches=0.05)
    plt.close()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--parzelle", required=True); ap.add_argument("--gebaeude", required=True)
    ap.add_argument("--dtm", required=True); ap.add_argument("--name", required=True)
    ap.add_argument("--out", required=True); ap.add_argument("--radius", type=float, default=30.0)
    ap.add_argument("--variante", action="append", default=[], help="X:pfad.obj (lokale Koord.)")
    ap.add_argument("--vol-okt", type=float, help="Z-Lage der Varianten (m ue.M.); Default: Terrain am Zentroid")
    ap.add_argument("--baeume", help="baeume.json aus baeume_aus_punktwolke.py (swissSURFACE3D)")
    ap.add_argument("--render", action="store_true")
    a = ap.parse_args()

    out = Path(a.out); out.mkdir(parents=True, exist_ok=True)
    parz = lade_parzelle(a.parzelle)
    ox, oy = parz.centroid.x, parz.centroid.y
    grenze = parz.buffer(a.radius)
    bbox = grenze.buffer(10).bounds

    print(f"Systemgrenze: Parzelle + {a.radius:.0f} m Puffer · Terrain-BBox {bbox[2]-bbox[0]:.0f}x{bbox[3]-bbox[1]:.0f} m")
    xs, ys, Z = terrain_grid(a.dtm, bbox)
    print(f"Terrain: {len(xs)}x{len(ys)} Punkte @1 m · {np.nanmin(Z):.1f}-{np.nanmax(Z):.1f} m ue.M.")

    gebs = gebaeude_meshes(a.gebaeude, grenze)
    bestand, kontext = [], []
    for ctr, vs, faces in gebs:
        (bestand if parz.contains(ctr) else kontext).append((vs, faces))
    print(f"Gebaeude im Modell: {len(kontext)} Kontext · {len(bestand)} Bestand auf Parzelle")

    lokal = lambda ml: [([(x - ox, y - oy, z) for x, y, z in vs], fc) for vs, fc in ml]
    kontext_l, bestand_l = lokal(kontext), lokal(bestand)

    # Baeume (swissSURFACE3D) auf die Systemgrenze gefiltert, lokal versetzt
    baeume = []
    if a.baeume:
        bj = json.loads(Path(a.baeume).read_text())
        for b in bj["baeume"]:
            if grenze.buffer(5).contains(Point(b["x"], b["y"])):
                baeume.append({"x": b["x"] - ox, "y": b["y"] - oy,
                               "z": b["z_ok_terrain"], "h": b["hoehe"], "r": b["kronenradius"]})
        print(f"Baeume im Modell: {len(baeume)} (von {bj['anzahl']} im Fenster)")

    okt = a.vol_okt if a.vol_okt else hoehe_an(xs, ys, Z, ox, oy)
    var_l, var_namen = [], []
    for spec in a.variante:
        vn, _, vp = spec.partition(":")
        vs, faces = lade_obj(vp)
        var_l.append(([(x, y, z + okt) for x, y, z in vs], faces))
        var_namen.append(vn)
        print(f"Variante {vn}: {vp} auf OKT {okt:.1f} m ue.M. gesetzt")

    # ---- Rhino .3dm mit Layern ----
    doc = r3.File3dm()
    # Origin/Quellen-Doku: Kennzahlen-JSON (rhino3dm-Python hat kein Notes-Attribut)
    def layer(nm, col):
        l = r3.Layer(); l.Name = nm; l.Color = col; doc.Layers.Add(l)
        return len(doc.Layers) - 1
    li_t = layer("SITU_TERRAIN", GRAU)
    li_k = layer("SITU_GEB_KONTEXT", WEISS)
    li_b = layer("SITU_BESTAND_PARZELLE", (217, 217, 217, 255))
    li_p = layer("BASIS_PARZELLE", (176, 120, 64, 255))
    tm = terrain_mesh(xs, ys, Z, ox, oy)
    at = r3.ObjectAttributes(); at.LayerIndex = li_t; doc.Objects.AddMesh(tm, at)
    for vs, fc in kontext_l:
        at = r3.ObjectAttributes(); at.LayerIndex = li_k
        doc.Objects.AddMesh(zu_rhino([(x + ox, y + oy, z) for x, y, z in vs], fc, ox, oy), at)
    for vs, fc in bestand_l:
        at = r3.ObjectAttributes(); at.LayerIndex = li_b
        doc.Objects.AddMesh(zu_rhino([(x + ox, y + oy, z) for x, y, z in vs], fc, ox, oy), at)
    pl = r3.Polyline()
    for x, y in list(parz.exterior.coords):
        pl.Add(x - ox, y - oy, hoehe_an(xs, ys, Z, x, y) + 0.2)
    at = r3.ObjectAttributes(); at.LayerIndex = li_p
    doc.Objects.AddPolyline(pl, at)
    for vn, (vs, fc) in zip(var_namen, var_l):
        li = layer(f"VOL_VARIANTE_{vn}", BEIGE)
        at = r3.ObjectAttributes(); at.LayerIndex = li
        doc.Objects.AddMesh(zu_rhino([(x + ox, y + oy, z) for x, y, z in vs], fc, ox, oy), at)
    if baeume:
        li = layer("SITU_BAEUME", (201, 197, 186, 255))
        for vs, fc in baum_meshes(baeume):
            at = r3.ObjectAttributes(); at.LayerIndex = li
            doc.Objects.AddMesh(zu_rhino([(x + ox, y + oy, z) for x, y, z in vs], fc, ox, oy), at)
    p3dm = out / f"{a.name}_situation.3dm"
    doc.Write(str(p3dm), 7)
    print(f"3dm: {p3dm}")

    # ---- OBJs fuer C4D (eine Datei, Gruppen = Layer) ----
    gruppen = {"SITU_TERRAIN": [( [(xs[i]-ox, ys[j]-oy, float(Z[j,i])) for j in range(0,len(ys),1) for i in range(0,len(xs),1)], [])]}
    # Terrain als Quad-Faces direkt schreiben (kompakt):
    nx = len(xs)
    tfaces = [[j*nx+i, j*nx+i+1, (j+1)*nx+i+1, (j+1)*nx+i] for j in range(len(ys)-1) for i in range(nx-1)]
    gruppen["SITU_TERRAIN"] = [(gruppen["SITU_TERRAIN"][0][0], tfaces)]
    gruppen["SITU_GEB_KONTEXT"] = kontext_l
    gruppen["SITU_BESTAND_PARZELLE"] = bestand_l
    for vn, m in zip(var_namen, var_l):
        gruppen[f"VOL_VARIANTE_{vn}"] = [m]
    pobj = out / f"{a.name}_situation.obj"
    obj_schreiben(pobj, gruppen)
    print(f"OBJ: {pobj}")

    # Getrennte OBJs je Gruppe (fuer C4D-Pipeline: Layer einzeln laden/schalten)
    teil = {"terrain": {"SITU_TERRAIN": gruppen["SITU_TERRAIN"]},
            "kontext": {"SITU_GEB_KONTEXT": kontext_l},
            "bestand": {"SITU_BESTAND_PARZELLE": bestand_l}}
    for vn, m in zip(var_namen, var_l):
        teil[f"variante_{vn}"] = {f"VOL_VARIANTE_{vn}": [m]}
    if baeume:
        teil["baeume"] = {"SITU_BAEUME": baum_meshes(baeume)}
    for tn, grp in teil.items():
        if any(v for v in grp.values()):
            obj_schreiben(out / f"{a.name}_{tn}.obj", grp)
    print(f"Teil-OBJs: {', '.join(sorted(teil))}")

    kz = {"name": a.name, "origin_lv95": [round(ox, 2), round(oy, 2)], "z": "m ue.M.",
          "systemgrenze_radius_m": a.radius, "terrain_bbox_lv95": [round(v, 1) for v in bbox],
          "gebaeude_kontext": len(kontext), "gebaeude_bestand_parzelle": len(bestand),
          "varianten": var_namen, "vol_okt_m": round(okt, 2),
          "quellen": {"terrain": "swissALTI3D (GeoTIFF 0.5 m)", "gebaeude": Path(a.gebaeude).name}}
    pkz = out / f"{a.name}_situation_kennzahlen.json"
    pkz.write_text(json.dumps(kz, indent=2, ensure_ascii=False))
    print(f"Kennzahlen: {pkz}")

    if a.render:
        pxy = [(x - ox, y - oy) for x, y in parz.exterior.coords]
        T = (xs, ys, Z, ox, oy)
        # Status quo: Bestand AN, Varianten AUS
        p1 = out / f"{a.name}_statusquo_axo.png"
        render_axo(str(p1), T, kontext_l, bestand_l, [], pxy, baeume)
        print(f"Render Status quo: {p1}")
        # Je Variante: Bestand AUS (Ersatzneubau) — nie Ueberschneidung Bestand/Neubau.
        # Teilkoerper (z.B. B + B_ATTIKA) gehoeren zur selben Variante -> nach Basis gruppiert.
        basis = {}
        for vn, vm in zip(var_namen, var_l):
            basis.setdefault(vn.split("_")[0], []).append(vm)
        for bk, vms in basis.items():
            p2 = out / f"{a.name}_variante_{bk}_axo.png"
            render_axo(str(p2), T, kontext_l, [], vms, pxy, baeume)
            print(f"Render Variante {bk}: {p2}")


if __name__ == "__main__":
    main()
