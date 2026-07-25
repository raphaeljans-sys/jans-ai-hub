#!/usr/bin/env python3
"""
JANS C4D-Situationsmodell-Renderer (v1) — Referenzbild-Qualitaet
================================================================
Laeuft in c4dpy (headless): baut aus den Teil-OBJs des situationsmodell.py die
Praesentationsszene (weisses Modell, beige Neubau-Variante, Baeume, Sonne mit
weichen Schatten, Ambient Occlusion) und rendert die Studienansichten.

  c4dpy c4d_situation.py -- --dir SITU_DIR --name 2621_GIEB --out RENDER_DIR \
      [--variante B] [--statusquo] [--breite 2400]

Set-Logik (loest die Bestand/Neubau-Ueberschneidung):
  --statusquo    rendert Terrain+Kontext+BESTAND+Baeume (keine Variante)
  --variante X   rendert Terrain+Kontext+VARIANTE_X(+_TEILE)+Baeume (OHNE Bestand)
Beide Flags kombinierbar -> mehrere Bilder in einem Lauf.
"""
import argparse
import os
import sys

import c4d

M = 100.0  # m -> cm


def lade_obj(pfad):
    """OBJ mit Tri+Quad-Faces; Gruppen werden ignoriert (eine Geometrie je Datei)."""
    verts, faces = [], []
    for zeile in open(pfad):
        t = zeile.split()
        if not t:
            continue
        if t[0] == "v":
            verts.append((float(t[1]), float(t[2]), float(t[3])))
        elif t[0] == "f":
            idx = [int(x.split("/")[0]) - 1 for x in t[1:]]
            if len(idx) >= 4:
                faces.append((idx[0], idx[1], idx[2], idx[3]))
            elif len(idx) == 3:
                faces.append((idx[0], idx[1], idx[2]))
    return verts, faces


def polygon_objekt(name, verts, faces):
    """OBJ (Meter, Z oben, Z=m ue.M.) -> C4D PolygonObject (cm, Y oben)."""
    obj = c4d.PolygonObject(len(verts), len(faces))
    obj.SetName(name)
    pts = [c4d.Vector(x * M, z * M, y * M) for x, y, z in verts]
    obj.SetAllPoints(pts)
    for i, f in enumerate(faces):
        if len(f) == 4:
            obj.SetPolygon(i, c4d.CPolygon(f[0], f[3], f[2], f[1]))
        else:
            obj.SetPolygon(i, c4d.CPolygon(f[0], f[2], f[1]))
    obj.Message(c4d.MSG_UPDATE)
    return obj


def material(doc, name, farbe):
    mat = c4d.BaseMaterial(c4d.Mmaterial)
    mat.SetName(name)
    mat[c4d.MATERIAL_COLOR_COLOR] = farbe
    mat[c4d.MATERIAL_USE_REFLECTION] = False
    doc.InsertMaterial(mat)
    return mat


def zuweisen(obj, mat):
    tag = obj.MakeTag(c4d.Ttexture)
    tag[c4d.TEXTURETAG_MATERIAL] = mat


def kamera(doc, name, pos, ziel, brennweite=50):
    cam = c4d.BaseObject(c4d.Ocamera)
    cam.SetName(name)
    cam[c4d.CAMERA_FOCUS] = brennweite
    cam.SetAbsPos(pos)
    cam.SetAbsRot(c4d.utils.VectorToHPB(ziel - pos))
    doc.InsertObject(cam)
    return cam


def _videoposts(rd):
    vp = rd.GetFirstVideoPost()
    while vp:
        yield vp
        vp = vp.GetNext()


def render(doc, cam, pfad, breite, hoehe):
    bd = doc.GetActiveBaseDraw()
    bd.SetSceneCamera(cam)
    rd = doc.GetActiveRenderData()
    rd[c4d.RDATA_XRES], rd[c4d.RDATA_YRES] = float(breite), float(hoehe)
    rd[c4d.RDATA_ANTIALIASING] = c4d.RDATA_ANTIALIASING_BEST
    # Ambient Occlusion fuer die weiche Tiefe des Referenz-Looks (einmalig, Defaults —
    # die Parameter-Symbole variieren je C4D-Version)
    if not any(v.GetType() == c4d.VPambientocclusion for v in _videoposts(rd)):
        rd.InsertVideoPost(c4d.BaseList2D(c4d.VPambientocclusion))
    bmp = c4d.bitmaps.BaseBitmap()
    bmp.Init(int(breite), int(hoehe), 24)
    res = c4d.documents.RenderDocument(doc, rd.GetData(), bmp, c4d.RENDERFLAGS_EXTERNAL)
    if res != c4d.RENDERRESULT_OK:
        print(f"WARNUNG: Render-Resultat {res} fuer {pfad}")
        return False
    bmp.Save(pfad, c4d.FILTER_PNG)
    print(f"  Render OK: {pfad}")
    return True


def szene_bauen(teile, set_name):
    """teile: {gruppe: (verts, faces)} -> (doc, mitte, spannweite_cm)"""
    doc = c4d.documents.BaseDocument()
    farben = {
        "terrain": c4d.Vector(0.96, 0.955, 0.945),
        "kontext": c4d.Vector(0.97, 0.97, 0.96),
        "bestand": c4d.Vector(0.88, 0.88, 0.87),
        "baeume":  c4d.Vector(0.80, 0.79, 0.74),
    }
    objs = []
    for grp, (verts, faces) in teile.items():
        basis = grp.split("_")[0] if not grp.startswith("variante") else "variante"
        farbe = c4d.Vector(0.60, 0.13, 0.20) if basis == "variante" else \
                farben.get(basis, c4d.Vector(0.95, 0.95, 0.95))
        mat = material(doc, f"M_{grp}", farbe)
        o = polygon_objekt(grp, verts, faces)
        if basis in ("terrain", "baeume"):
            # Phong-Glaettung: weiches Gelaende/runde Kronen statt harter Facetten
            ph = o.MakeTag(c4d.Tphong)
            ph[c4d.PHONGTAG_PHONG_ANGLELIMIT] = True
            ph[c4d.PHONGTAG_PHONG_ANGLE] = c4d.utils.DegToRad(60.0)
        doc.InsertObject(o)
        zuweisen(o, mat)
        objs.append(o)

    himmel = c4d.BaseObject(c4d.Obackground)
    zuweisen(himmel, material(doc, "Himmel", c4d.Vector(1.0, 1.0, 1.0)))
    doc.InsertObject(himmel)

    sonne = c4d.BaseObject(c4d.Olight)
    sonne.SetName("Sonne")
    sonne[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    sonne[c4d.LIGHT_SHADOWTYPE] = c4d.LIGHT_SHADOWTYPE_AREA
    sonne[c4d.LIGHT_BRIGHTNESS] = 0.85
    sonne.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(40), c4d.utils.DegToRad(-50), 0))
    doc.InsertObject(sonne)
    fuell = c4d.BaseObject(c4d.Olight)
    fuell[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    fuell[c4d.LIGHT_BRIGHTNESS] = 0.45
    fuell.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(-130), c4d.utils.DegToRad(-30), 0))
    doc.InsertObject(fuell)

    # Mitte/Spannweite aus dem Terrain (Referenzrahmen der Studie)
    terrain = next((o for o in objs if o.GetName() == "terrain"), objs[0])
    mp, rad = terrain.GetMp(), terrain.GetRad()
    spann = max(rad.x, rad.z) * 2
    return doc, mp, spann


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument("--dir", required=True, help="situationsmodell-Ordner mit Teil-OBJs")
    ap.add_argument("--name", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--variante", action="append", default=[])
    ap.add_argument("--statusquo", action="store_true")
    ap.add_argument("--breite", type=int, default=2400)
    a = ap.parse_args(argv)
    os.makedirs(a.out, exist_ok=True)

    basis = {}
    for t in ("terrain", "kontext", "baeume"):
        p = os.path.join(a.dir, f"{a.name}_{t}.obj")
        if os.path.exists(p):
            basis[t] = lade_obj(p)

    sets = []
    if a.statusquo:
        s = dict(basis)
        pb = os.path.join(a.dir, f"{a.name}_bestand.obj")
        if os.path.exists(pb):
            s["bestand"] = lade_obj(pb)
        sets.append(("statusquo", s))
    for v in a.variante:
        s = dict(basis)   # OHNE Bestand: Ersatzneubau
        for f in sorted(os.listdir(a.dir)):
            if f.startswith(f"{a.name}_variante_{v}") and f.endswith(".obj"):
                s[f[len(a.name) + 1:-4]] = lade_obj(os.path.join(a.dir, f))
        sets.append((f"variante_{v}", s))

    for set_name, teile in sets:
        print(f"Szene {set_name}: {', '.join(teile)}")
        doc, mitte, spann = szene_bauen(teile, set_name)
        d = spann * 1.05
        ansichten = {
            "axo":  (c4d.Vector(mitte.x + d * 0.55, mitte.y + d * 0.95, mitte.z - d * 0.55), 80),
            "axo2": (c4d.Vector(mitte.x - d * 0.65, mitte.y + d * 0.85, mitte.z - d * 0.6), 80),
            "auge": (c4d.Vector(mitte.x, mitte.y + 250, mitte.z - d * 0.75), 35),
        }
        for an, (pos, bw) in ansichten.items():
            cam = kamera(doc, f"K_{an}", pos, mitte, bw)
            render(doc, cam, os.path.join(a.out, f"{a.name}_{set_name}_{an}.png"),
                   a.breite, int(a.breite * 0.75))
        c4d.documents.SaveDocument(doc, os.path.join(a.out, f"{a.name}_{set_name}.c4d"),
                                   c4d.SAVEDOCUMENTFLAGS_NONE, c4d.FORMAT_C4DEXPORT)
        print(f"Szene gespeichert: {a.name}_{set_name}.c4d")


if __name__ == "__main__":
    idx = sys.argv.index("--") + 1 if "--" in sys.argv else 1
    main(sys.argv[idx:])
