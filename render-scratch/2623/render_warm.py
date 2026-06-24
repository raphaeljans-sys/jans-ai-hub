#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Warm-Render der Schraegdach-Variante in der Referenz-Farbigkeit (89 Komorow):
   monochromes Maroon-Rot mit Tonspanne Altrosa->Oxblood, cremefarbener Grund.
   Kameras: axo, axo2, perspektive. Laeuft in c4dpy (headless)."""
import os, sys
import c4d

M = 100.0
DIR  = None  # via argv
NAME = "2623_OBR"

# --- Referenz-Palette (maroon corrugated sheet) ---
ROT_BODY = c4d.Vector(0.627, 0.153, 0.251)   # mittleres Karmin/Himbeer #A02740
ROT_LUM  = c4d.Vector(0.773, 0.435, 0.506)   # Altrosa-Glow #C56F81 (Luminanz, hebt Schatten)
CREME    = c4d.Vector(0.945, 0.925, 0.890)   # #F1ECE3 Boden/Himmel
GRAU_W   = c4d.Vector(0.900, 0.880, 0.850)   # warmes Hellgrau Kontext


def lade_obj(p):
    vs, fs = [], []
    for z in open(p):
        t = z.split()
        if not t: continue
        if t[0] == "v": vs.append((float(t[1]), float(t[2]), float(t[3])))
        elif t[0] == "f":
            idx = [int(x.split("/")[0]) - 1 for x in t[1:]]
            fs.append(tuple(idx[:4]) if len(idx) >= 4 else tuple(idx[:3]))
    return vs, fs


def poly(name, vs, fs):
    o = c4d.PolygonObject(len(vs), len(fs))
    o.SetName(name)
    o.SetAllPoints([c4d.Vector(x * M, z * M, y * M) for x, y, z in vs])
    for i, f in enumerate(fs):
        if len(f) == 4: o.SetPolygon(i, c4d.CPolygon(f[0], f[3], f[2], f[1]))
        else: o.SetPolygon(i, c4d.CPolygon(f[0], f[2], f[1]))
    o.Message(c4d.MSG_UPDATE)
    return o


def mat(doc, name, col, lum=None):
    m = c4d.BaseMaterial(c4d.Mmaterial); m.SetName(name)
    m[c4d.MATERIAL_COLOR_COLOR] = col
    m[c4d.MATERIAL_USE_REFLECTION] = False
    if lum is not None:
        m[c4d.MATERIAL_USE_LUMINANCE] = True
        m[c4d.MATERIAL_LUMINANCE_COLOR] = lum
        m[c4d.MATERIAL_LUMINANCE_BRIGHTNESS] = 0.16
    doc.InsertMaterial(m); return m


def tag(o, m):
    t = o.MakeTag(c4d.Ttexture); t[c4d.TEXTURETAG_MATERIAL] = m


def cam(doc, name, pos, ziel, bw=50, parallel=False):
    c = c4d.BaseObject(c4d.Ocamera); c.SetName(name)
    if parallel:
        c[c4d.CAMERA_PROJECTION] = c4d.Pparallel
    c[c4d.CAMERA_FOCUS] = bw
    c.SetAbsPos(pos); c.SetAbsRot(c4d.utils.VectorToHPB(ziel - pos))
    doc.InsertObject(c); return c


def vps(rd):
    v = rd.GetFirstVideoPost()
    while v: yield v; v = v.GetNext()


def render(doc, c, pfad, w, h):
    doc.GetActiveBaseDraw().SetSceneCamera(c)
    rd = doc.GetActiveRenderData()
    rd[c4d.RDATA_XRES], rd[c4d.RDATA_YRES] = float(w), float(h)
    rd[c4d.RDATA_ANTIALIASING] = c4d.RDATA_ANTIALIASING_BEST
    if not any(v.GetType() == c4d.VPambientocclusion for v in vps(rd)):
        rd.InsertVideoPost(c4d.BaseList2D(c4d.VPambientocclusion))
    bmp = c4d.bitmaps.BaseBitmap(); bmp.Init(int(w), int(h), 24)
    if c4d.documents.RenderDocument(doc, rd.GetData(), bmp, c4d.RENDERFLAGS_EXTERNAL) == c4d.RENDERRESULT_OK:
        bmp.Save(pfad, c4d.FILTER_PNG); print("  OK:", pfad); return True
    print("  FEHLER:", pfad); return False


def main(argv):
    global DIR
    DIR = argv[0]; out = argv[1]; variante = argv[2] if len(argv) > 2 else "R"
    os.makedirs(out, exist_ok=True)

    doc = c4d.documents.BaseDocument()
    objs = {}
    for t in ("terrain", "kontext"):
        p = os.path.join(DIR, f"{NAME}_{t}.obj")
        if os.path.exists(p): objs[t] = lade_obj(p)
    # Varianten-Teile (alle variante_*; Glas separat)
    for f in sorted(os.listdir(DIR)):
        if f.startswith(f"{NAME}_variante_") and f.endswith(".obj"):
            objs[f[len(NAME)+1:-4]] = lade_obj(os.path.join(DIR, f))

    GLAS = c4d.Vector(0.16, 0.09, 0.11)
    m_terr = mat(doc, "M_terrain", CREME)
    m_kont = mat(doc, "M_kontext", GRAU_W)
    m_var  = mat(doc, "M_variante", ROT_BODY, lum=ROT_LUM)
    m_glas = mat(doc, "M_glas", GLAS)
    for name, (vs, fs) in objs.items():
        o = poly(name, vs, fs)
        base = name.split("_")[0]
        if base == "terrain":
            o.MakeTag(c4d.Tphong)[c4d.PHONGTAG_PHONG_ANGLE] = c4d.utils.DegToRad(55)
            tag(o, m_terr)
        elif base == "kontext":
            tag(o, m_kont)
        elif "glas" in name.lower():
            tag(o, m_glas)
        else:
            tag(o, m_var)
        doc.InsertObject(o)

    sky = c4d.BaseObject(c4d.Obackground); tag(sky, mat(doc, "M_sky", CREME)); doc.InsertObject(sky)

    sun = c4d.BaseObject(c4d.Olight); sun.SetName("Sonne")
    sun[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    sun[c4d.LIGHT_SHADOWTYPE] = c4d.LIGHT_SHADOWTYPE_AREA
    sun[c4d.LIGHT_BRIGHTNESS] = 1.05
    sun[c4d.LIGHT_COLOR] = c4d.Vector(1.0, 0.96, 0.90)   # warm
    sun.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(42), c4d.utils.DegToRad(-52), 0))
    doc.InsertObject(sun)
    fill = c4d.BaseObject(c4d.Olight)
    fill[c4d.LIGHT_TYPE] = c4d.LIGHT_TYPE_DISTANT
    fill[c4d.LIGHT_BRIGHTNESS] = 0.40
    fill[c4d.LIGHT_COLOR] = c4d.Vector(0.98, 0.90, 0.92)  # leicht rosa Aufhellung
    fill.SetAbsRot(c4d.Vector(c4d.utils.DegToRad(-125), c4d.utils.DegToRad(-25), 0))
    doc.InsertObject(fill)

    terr = next((poly(n, *objs[n]) for n in objs if n == "terrain"), None)
    # Mitte/Spannweite aus Terrain
    tobj = [o for o in doc.GetObjects() if o.GetName() == "terrain"][0]
    mp, rad = tobj.GetMp(), tobj.GetRad()
    spann = max(rad.x, rad.z) * 2
    d = spann * 1.05
    bh = 1300  # ungefaehre Bauhoehe cm ueber mitte (fuer Zielpunkt)

    ziel = c4d.Vector(mp.x, mp.y + 500, mp.z)
    # Seeseite (-v) in C4D-Koordinaten: local(x,y)->(X,Z); -v=(0.924,0.382)
    import math as _m
    sdx, sdz = 0.924, 0.382; sl = _m.hypot(sdx, sdz); sdx, sdz = sdx/sl, sdz/sl
    hero_pos = c4d.Vector(mp.x + sdx*d*0.50, mp.y + d*0.11, mp.z + sdz*d*0.50)
    hero_ziel = c4d.Vector(mp.x, mp.y + 750, mp.z)
    ansichten = {
        "axo":   (c4d.Vector(mp.x + d*0.55, mp.y + d*0.95, mp.z - d*0.55), 80, ziel),
        "axo2":  (c4d.Vector(mp.x - d*0.65, mp.y + d*0.85, mp.z - d*0.60), 80, ziel),
        "persp": (c4d.Vector(mp.x + d*1.15, mp.y + d*0.42, mp.z - d*1.15), 40, ziel),
        "hero":  (hero_pos, 50, hero_ziel),
    }
    w = 2200
    for an, (pos, bw, zc) in ansichten.items():
        c = cam(doc, f"K_{an}", pos, zc, bw, False)
        render(doc, c, os.path.join(out, f"{NAME}_warm_{an}.png"), w, int(w*0.7))
    c4d.documents.SaveDocument(doc, os.path.join(out, f"{NAME}_warm.c4d"),
                               c4d.SAVEDOCUMENTFLAGS_NONE, c4d.FORMAT_C4DEXPORT)
    print("Szene gespeichert.")


if __name__ == "__main__":
    idx = sys.argv.index("--") + 1 if "--" in sys.argv else 1
    main(sys.argv[idx:])
