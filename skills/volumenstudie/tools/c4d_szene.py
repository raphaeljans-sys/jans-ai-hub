#!/usr/bin/env python3
"""
JANS C4D-Szenenbauer — Volumenstudien-Pipeline (v1)
===================================================
Laeuft in c4dpy (headless): baut aus den OBJ-Volumen des volumen_generator.py
eine Cinema-4D-Szene im JANS-Volumenmodell-Look und rendert Standardansichten.

  c4dpy c4d_szene.py -- --obj VOL.obj --kontext KONTEXT.obj --out DIR --name 2699_GRUB_V1

Look: weisses Volumenmodell, grauer Boden, Sonne (Infinite Light mit Schatten),
Kameras: Axonometrie Vogelperspektive + 2 Augenhoehen-Ansichten.
Rendert mit dem Standard-Renderer (lizenz- und pluginfrei, headless-stabil).
"""
import argparse
import math
import sys

import c4d


def lade_obj(pfad):
    verts, faces = [], []
    for zeile in open(pfad):
        t = zeile.split()
        if not t:
            continue
        if t[0] == "v":
            verts.append((float(t[1]), float(t[2]), float(t[3])))
        elif t[0] == "f":
            faces.append(tuple(int(x.split("/")[0]) - 1 for x in t[1:4]))
    return verts, faces


def polygon_objekt(name, verts, faces, masstab=100.0):
    """OBJ (Meter, Z oben) -> C4D PolygonObject (cm, Y oben)."""
    obj = c4d.PolygonObject(len(verts), len(faces))
    obj.SetName(name)
    # Achsentausch: (x, y, z)_geo -> (x, z, y)_c4d  | m -> cm
    pts = [c4d.Vector(x * masstab, z * masstab, y * masstab) for x, y, z in verts]
    obj.SetAllPoints(pts)
    for i, (a, b, c_) in enumerate(faces):
        # Achsentausch spiegelt die Orientierung -> Reihenfolge drehen fuer Aussennormalen
        obj.SetPolygon(i, c4d.CPolygon(a, c_, b))
    obj.Message(c4d.MSG_UPDATE)
    return obj


def material(doc, name, farbe, spiegelung=False):
    mat = c4d.BaseMaterial(c4d.Mmaterial)
    mat.SetName(name)
    mat[c4d.MATERIAL_COLOR_COLOR] = farbe
    mat[c4d.MATERIAL_USE_REFLECTION] = spiegelung
    doc.InsertMaterial(mat)
    return mat


def zuweisen(obj, mat):
    tag = obj.MakeTag(c4d.Ttexture)
    tag[c4d.TEXTURETAG_MATERIAL] = mat


def bbox(objs):
    mins = [float("inf")] * 3
    maxs = [float("-inf")] * 3
    for o in objs:
        rad, mp = o.GetRad(), o.GetMp()
        for i, k in enumerate("xyz"):
            mins[i] = min(mins[i], getattr(mp, k) - getattr(rad, k))
            maxs[i] = max(maxs[i], getattr(mp, k) + getattr(rad, k))
    mitte = c4d.Vector(*[(a + b) / 2 for a, b in zip(mins, maxs)])
    groesse = max(b - a for a, b in zip(mins, maxs))
    return mitte, groesse


def kamera(doc, name, pos, ziel, brennweite=35):
    cam = c4d.BaseObject(c4d.Ocamera)
    cam.SetName(name)
    cam[c4d.CAMERA_FOCUS] = brennweite
    cam.SetAbsPos(pos)
    richtung = ziel - pos
    hpb = c4d.utils.VectorToHPB(richtung)
    cam.SetAbsRot(hpb)
    doc.InsertObject(cam)
    return cam


def render(doc, cam, pfad, breite=1600, hoehe=1200):
    doc.SetActiveObject(cam)
    bd = doc.GetActiveBaseDraw()
    bd.SetSceneCamera(cam)
    rd = doc.GetActiveRenderData()
    rd[c4d.RDATA_XRES], rd[c4d.RDATA_YRES] = float(breite), float(hoehe)
    rd[c4d.RDATA_ANTIALIASING] = c4d.RDATA_ANTIALIASING_BEST
    bmp = c4d.bitmaps.BaseBitmap()
    bmp.Init(breite, hoehe, 24)
    res = c4d.documents.RenderDocument(doc, rd.GetData(), bmp,
                                       c4d.RENDERFLAGS_EXTERNAL)
    if res != c4d.RENDERRESULT_OK:
        print(f"WARNUNG: Render-Resultat {res} fuer {pfad}")
        return False
    bmp.Save(pfad, c4d.FILTER_PNG)
    print(f"  Render OK: {pfad}")
    return True


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument("--obj", required=True, action="append",
                    help="Volumen-OBJ (mehrfach moeglich, z.B. Haupt + Attika)")
    ap.add_argument("--kontext", help="Kontext-OBJ (Parzelle)")
    ap.add_argument("--out", required=True)
    ap.add_argument("--name", required=True)
    args = ap.parse_args(argv)

    doc = c4d.documents.BaseDocument()

    mat_vol = material(doc, "Volumen weiss", c4d.Vector(0.95, 0.95, 0.93))
    mat_parz = material(doc, "Parzelle", c4d.Vector(0.75, 0.75, 0.72))
    mat_boden = material(doc, "Boden", c4d.Vector(0.85, 0.85, 0.83))

    objs = []
    for i, pfad in enumerate(args.obj):
        verts, faces = lade_obj(pfad)
        vol = polygon_objekt(f"Volumen_{args.name}_{i + 1}", verts, faces)
        doc.InsertObject(vol)
        zuweisen(vol, mat_vol)
        objs.append(vol)

    if args.kontext:
        kv, kf = lade_obj(args.kontext)
        kon = polygon_objekt("Parzelle", kv, kf)
        doc.InsertObject(kon)
        zuweisen(kon, mat_parz)
        objs.append(kon)

    boden = c4d.BaseObject(c4d.Oplane)
    boden[c4d.PRIM_PLANE_WIDTH] = boden[c4d.PRIM_PLANE_HEIGHT] = 100000.0
    boden.SetAbsPos(c4d.Vector(0, -10, 0))
    doc.InsertObject(boden)
    zuweisen(boden, mat_boden)

    # Heller Hintergrund statt Schwarz
    himmel = c4d.BaseObject(c4d.Obackground)
    mat_himmel = material(doc, "Himmel", c4d.Vector(0.92, 0.93, 0.95))
    doc.InsertObject(himmel)
    zuweisen(himmel, mat_himmel)

    sonne = c4d.BaseObject(c4d.Olight)
    sonne.SetName("Sonne")
    sonne[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    sonne[c4d.LIGHT_SHADOWTYPE] = c4d.LIGHT_SHADOWTYPE_SOFT
    sonne[c4d.LIGHT_BRIGHTNESS] = 0.75
    sonne.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(35), c4d.utils.DegToRad(-55), 0))
    doc.InsertObject(sonne)

    fuell = c4d.BaseObject(c4d.Olight)
    fuell.SetName("Fuelllicht")
    fuell[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    fuell[c4d.LIGHT_BRIGHTNESS] = 0.30
    fuell.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(-120), c4d.utils.DegToRad(-35), 0))
    doc.InsertObject(fuell)

    mitte, groesse = bbox(objs)
    d = groesse * 1.15
    ansichten = {
        "axo": c4d.Vector(mitte.x + d * 0.7, mitte.y + d * 0.8, mitte.z - d * 0.7),
        "auge_sw": c4d.Vector(mitte.x - d * 0.85, mitte.y + 170, mitte.z - d * 0.85),
        "auge_no": c4d.Vector(mitte.x + d * 0.85, mitte.y + 170, mitte.z + d * 0.85),
    }
    import os
    os.makedirs(args.out, exist_ok=True)
    ok = 0
    for aname, pos in ansichten.items():
        cam = kamera(doc, f"Kamera_{aname}", pos, mitte)
        if render(doc, cam, os.path.join(args.out, f"{args.name}_{aname}.png")):
            ok += 1

    szene = os.path.join(args.out, f"{args.name}.c4d")
    c4d.documents.SaveDocument(doc, szene, c4d.SAVEDOCUMENTFLAGS_NONE,
                               c4d.FORMAT_C4DEXPORT)
    print(f"Szene gespeichert: {szene} · {ok}/3 Renderings")


if __name__ == "__main__":
    idx = sys.argv.index("--") + 1 if "--" in sys.argv else 1
    main(sys.argv[idx:])
