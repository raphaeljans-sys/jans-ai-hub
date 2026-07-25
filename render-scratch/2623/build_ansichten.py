#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Flache, zweifarbige Ansichten + Dachplan der Schraegdach-Variante in der
   Referenz-Farbigkeit (Altrosa besonnt -> Oxblood Schatten, cremefarbener Grund)."""
import json, math
from pathlib import Path
import numpy as np
import matplotlib; matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon as MPoly
from matplotlib.collections import PatchCollection
from shapely.geometry import shape

HER = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")

# Palette
OXBLOOD = "#8C2233"; KARMIN = "#A02740"; ROSA = "#C56F81"; ROSA_HELL = "#D894A1"
CREME = "#F1ECE3"; LINIE = "#6E1828"; GRAU = "#E6E1D8"

parz = shape(json.load(open(HER/"parzelle.geojson"))["geometry"])
if parz.geom_type == "MultiPolygon":
    parz = max(parz.geoms, key=lambda g: g.area)
ox, oy = parz.centroid.x, parz.centroid.y
mrr = list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a,b): return (b[0]-a[0], b[1]-a[1])
def nrm(p): l=math.hypot(*p); return (p[0]/l,p[1]/l)
e0=vec(mrr[0],mrr[1]); e1=vec(mrr[1],mrr[2])
u,v = (nrm(e0),nrm(e1)) if math.hypot(*e0)>=math.hypot(*e1) else (nrm(e1),nrm(e0))

# OBJ laden (lokale x,y,z)
V=[]; F=[]
for ln in open(HER/"2623_R_schraegdach.obj"):
    t=ln.split()
    if not t: continue
    if t[0]=="v": V.append((float(t[1]),float(t[2]),float(t[3])))
    elif t[0]=="f": F.append([int(x.split("/")[0])-1 for x in t[1:]])
V=np.array(V)

L = np.array([0.5,-0.32,0.92]); L/=np.linalg.norm(L)   # Lichtrichtung lokal (x,y,z)
def shade(verts3):
    n=np.cross(verts3[1]-verts3[0], verts3[2]-verts3[0])
    ln=np.linalg.norm(n)
    if ln==0: return KARMIN
    lam=float(np.dot(n/ln, L))
    lam=abs(lam)
    if lam>0.78: return ROSA_HELL
    if lam>0.55: return ROSA
    if lam>0.32: return KARMIN
    return OXBLOOD

def proj(axis_h):
    """horizontale Projektionsachse (u oder v) -> Funktion (x,y,z)->(h,z), depth"""
    a=np.array(axis_h)
    def f(p): return (p[0]*a[0]+p[1]*a[1], p[2])
    return f

def zeichne_elevation(fname, axis_h, axis_depth, titel):
    f=proj(axis_h); dax=np.array(axis_depth)
    faces=[]
    for face in F:
        vs=V[face]
        depth=float(np.mean(vs[:,0]*dax[0]+vs[:,1]*dax[1]))
        pts=[f(p) for p in vs]
        faces.append((depth, pts, shade(vs)))
    faces.sort(key=lambda x:x[0])           # hinten zuerst
    fig,ax=plt.subplots(figsize=(12,4.2),dpi=200)
    fig.patch.set_facecolor(CREME); ax.set_facecolor(CREME)
    pats=[]; cols=[]
    for _,pts,col in faces:
        pats.append(MPoly(pts, closed=True)); cols.append(col)
    pc=PatchCollection(pats, facecolors=cols, edgecolors=LINIE, linewidths=0.5)
    ax.add_collection(pc)
    allh=[p[0] for _,pts,_ in faces for p in pts]; allz=[p[1] for _,pts,_ in faces for p in pts]
    z0=min(allz)
    ax.plot([min(allh)-3,max(allh)+3],[z0,z0],color=LINIE,lw=1.4)   # Terrainlinie
    ax.set_xlim(min(allh)-3,max(allh)+3); ax.set_ylim(z0-1.2,max(allz)+2)
    ax.set_aspect("equal"); ax.axis("off")
    ax.set_title(titel, loc="left", fontsize=12, color="#3a2228", pad=8)
    plt.savefig(HER/fname, bbox_inches="tight", facecolor=CREME, pad_inches=0.15); plt.close()
    print("OK:", fname)

def zeichne_plan(fname):
    fig,ax=plt.subplots(figsize=(7.5,9),dpi=200)
    fig.patch.set_facecolor(CREME); ax.set_facecolor(CREME)
    # Parzelle + Baufeld
    px=[(x-ox) for x,y in parz.exterior.coords]; py=[(y-oy) for x,y in parz.exterior.coords]
    ax.plot(px,py,color=LINIE,lw=1.3,ls=(0,(6,3)))
    bf=parz.buffer(-5.0,join_style=2)
    if bf.geom_type=="MultiPolygon": bf=max(bf.geoms,key=lambda g:g.area)
    bx=[(x-ox) for x,y in bf.exterior.coords]; by=[(y-oy) for x,y in bf.exterior.coords]
    ax.plot(bx,by,color="#B9A78F",lw=0.9)
    # Dachflaechen (nur Dach-Dreiecke, an z erkennbar: face mit apex)
    pats=[]; cols=[]
    # depth top-down: hoehere Flaechen zuletzt
    tris=[]
    for face in F:
        vs=V[face]
        if len(face)==3:   # Dachdreieck
            tris.append((float(np.mean(vs[:,2])), [(p[0],p[1]) for p in vs], shade(vs)))
    tris.sort(key=lambda x:x[0])
    for _,pts,col in tris:
        pats.append(MPoly(pts,closed=True)); cols.append(col)
    ax.add_collection(PatchCollection(pats,facecolors=cols,edgecolors=LINIE,linewidths=0.4))
    ax.set_aspect("equal"); ax.axis("off")
    ax.set_title("Dachaufsicht — Cluster im Baufeld", loc="left", fontsize=12, color="#3a2228", pad=8)
    plt.savefig(HER/fname, bbox_inches="tight", facecolor=CREME, pad_inches=0.15); plt.close()
    print("OK:", fname)

# Langseiten-Ansicht (Blick entlang -v): horizontale Achse u, Tiefe v
zeichne_elevation("2623_ansicht_laengs.png", u, v, "Ansicht Längsseite — Variante Schrägdach")
# Stirnseiten-Ansicht (Blick entlang u): horizontale Achse v, Tiefe u
zeichne_elevation("2623_ansicht_stirn.png", v, u, "Ansicht Stirnseite")
zeichne_plan("2623_dachplan.png")
