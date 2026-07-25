#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Flache Ansichten v2 (Satteldach quer, Dachterrasse, Seeluke) in Referenz-Farbigkeit."""
import json, math
from pathlib import Path
import numpy as np
import matplotlib; matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon as MPoly
from matplotlib.collections import PatchCollection
from shapely.geometry import shape

HER=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
OXBLOOD="#8C2233"; KARMIN="#A02740"; ROSA="#C56F81"; ROSA_HELL="#D894A1"
CREME="#F1ECE3"; LINIE="#6E1828"

parz=shape(json.load(open(HER/"parzelle.geojson"))["geometry"])
if parz.geom_type=="MultiPolygon": parz=max(parz.geoms,key=lambda g:g.area)
ox,oy=parz.centroid.x,parz.centroid.y
mrr=list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a,b):return(b[0]-a[0],b[1]-a[1])
def nrm(p):l=math.hypot(*p);return(p[0]/l,p[1]/l)
e0=vec(mrr[0],mrr[1]);e1=vec(mrr[1],mrr[2])
u,v=(nrm(e0),nrm(e1)) if math.hypot(*e0)>=math.hypot(*e1) else (nrm(e1),nrm(e0))

V=[];F=[]
for ln in open(HER/"2623_R2_schraegdach.obj"):
    t=ln.split()
    if not t:continue
    if t[0]=="v":V.append((float(t[1]),float(t[2]),float(t[3])))
    elif t[0]=="f":F.append([int(x.split("/")[0])-1 for x in t[1:]])
V=np.array(V)
L=np.array([0.45,-0.35,0.92]);L/=np.linalg.norm(L)
def shade(vs):
    n=np.cross(vs[1]-vs[0],vs[2]-vs[0]);ln=np.linalg.norm(n)
    if ln==0:return KARMIN
    lam=abs(float(np.dot(n/ln,L)))
    return ROSA_HELL if lam>0.80 else ROSA if lam>0.56 else KARMIN if lam>0.33 else OXBLOOD

def elevation(fname,axh,axd,titel,front_neg=True):
    a=np.array(axh);dd=np.array(axd)
    faces=[]
    for fc in F:
        vs=V[fc];depth=float(np.mean(vs[:,0]*dd[0]+vs[:,1]*dd[1]))
        pts=[(p[0]*a[0]+p[1]*a[1],p[2]) for p in vs]
        faces.append((depth,pts,shade(vs)))
    faces.sort(key=lambda x:x[0], reverse=front_neg)   # Front (kleinste depth) zuletzt
    fig,ax=plt.subplots(figsize=(12,4.4),dpi=200)
    fig.patch.set_facecolor(CREME);ax.set_facecolor(CREME)
    ax.add_collection(PatchCollection([MPoly(p,closed=True) for _,p,_ in faces],
        facecolors=[c for _,_,c in faces],edgecolors=LINIE,linewidths=0.4))
    allh=[p[0] for _,pts,_ in faces for p in pts];allz=[p[1] for _,pts,_ in faces for p in pts]
    z0=min(allz)
    ax.plot([min(allh)-3,max(allh)+3],[z0,z0],color=LINIE,lw=1.4)
    ax.set_xlim(min(allh)-3,max(allh)+3);ax.set_ylim(z0-1.2,max(allz)+2)
    ax.set_aspect("equal");ax.axis("off")
    plt.savefig(HER/fname,bbox_inches="tight",facecolor=CREME,pad_inches=0.12);plt.close()
    print("OK:",fname)

def plan(fname):
    faces=[]
    for fc in F:
        vs=V[fc];faces.append((float(np.mean(vs[:,2])),[(p[0],p[1]) for p in vs],shade(vs)))
    faces.sort(key=lambda x:x[0])   # hoehere zuletzt (oben)
    fig,ax=plt.subplots(figsize=(7.5,9),dpi=200)
    fig.patch.set_facecolor(CREME);ax.set_facecolor(CREME)
    px=[x-ox for x,y in parz.exterior.coords];py=[y-oy for x,y in parz.exterior.coords]
    ax.plot(px,py,color=LINIE,lw=1.2,ls=(0,(6,3)))
    bf=parz.buffer(-5,join_style=2)
    if bf.geom_type=="MultiPolygon":bf=max(bf.geoms,key=lambda g:g.area)
    ax.plot([x-ox for x,y in bf.exterior.coords],[y-oy for x,y in bf.exterior.coords],color="#B9A78F",lw=0.8)
    ax.add_collection(PatchCollection([MPoly(p,closed=True) for _,p,_ in faces],
        facecolors=[c for _,_,c in faces],edgecolors=LINIE,linewidths=0.3))
    ax.set_aspect("equal");ax.axis("off")
    plt.savefig(HER/fname,bbox_inches="tight",facecolor=CREME,pad_inches=0.12);plt.close()
    print("OK:",fname)

# Seeseitige Laengsansicht: horizontale Achse u, Tiefe v (Front = Seeseite -v)
elevation("2623_v2_ansicht_see.png", u, v, "Seeansicht", front_neg=True)
# Stirnseite/Schnitt: horizontale Achse v, Tiefe u
elevation("2623_v2_ansicht_stirn.png", v, u, "Stirnseite", front_neg=True)
plan("2623_v2_dachplan.png")
