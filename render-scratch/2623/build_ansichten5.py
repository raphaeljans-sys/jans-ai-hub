#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Ansichten v5: Seeansicht als Schnitt mit gewachsener Terrainlinie, Querschnitt,
   Dachaufsicht. Rueckgestaffelte Koerper, keine Fenster. Maroon-Farbigkeit."""
import json, math
from pathlib import Path
import numpy as np
import matplotlib; matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon as MPoly
from matplotlib.collections import PatchCollection
from shapely.geometry import shape
HER=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
OXBLOOD="#8C2233";KARMIN="#A02740";ROSA="#C56F81";ROSA_HELL="#D894A1"
CREME="#F1ECE3";LINIE="#6E1828";GROUND="#DED7CA"
P=json.load(open(HER/"2623_R5_profil.json"))
parz=shape(json.load(open(HER/"parzelle.geojson"))["geometry"])
if parz.geom_type=="MultiPolygon":parz=max(parz.geoms,key=lambda g:g.area)
ox,oy=parz.centroid.x,parz.centroid.y
mrr=list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a,b):return(b[0]-a[0],b[1]-a[1])
def nrm(p):l=math.hypot(*p);return(p[0]/l,p[1]/l)
e0=vec(mrr[0],mrr[1]);e1=vec(mrr[1],mrr[2])
u,v=(nrm(e0),nrm(e1)) if math.hypot(*e0)>=math.hypot(*e1) else (nrm(e1),nrm(e0))
bf=parz.buffer(-5,join_style=2)
if bf.geom_type=="MultiPolygon":bf=max(bf.geoms,key=lambda g:g.area)
cx,cy=bf.centroid.x,bf.centroid.y; offx,offy=cx-ox,cy-oy
V=[];F=[]
for ln in open(HER/"2623_R5_schraegdach.obj"):
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
def H(p,h): return (p[0]-offx)*h[0]+(p[1]-offy)*h[1]
def D(vs,dd): return float(np.mean([(q[0]-offx)*dd[0]+(q[1]-offy)*dd[1] for q in vs]))

def elevation(fname,horiz,depth,profil,sign):
    faces=[]
    for fc in F:
        vs=V[fc]; faces.append((D(vs,depth)*sign,[(H(q,horiz),q[2]) for q in vs],shade(vs)))
    faces.sort(key=lambda x:x[0])
    fig,ax=plt.subplots(figsize=(13,4.6),dpi=200)
    fig.patch.set_facecolor(CREME);ax.set_facecolor(CREME)
    ax.add_collection(PatchCollection([MPoly(p,closed=True) for _,p,_ in faces],
        facecolors=[c for _,_,c in faces],edgecolors=LINIE,linewidths=0.4))
    px=[q[0] for q in profil];pz=[q[1] for q in profil]
    xmin=min(px)-1;xmax=max(px)+1
    allz=[p[1] for _,pts,_ in faces for p in pts]+pz; zb=min(allz)-2
    ax.add_patch(MPoly(list(zip(px,pz))+[(xmax,zb),(xmin,zb)],closed=True,facecolor=GROUND,edgecolor="none",zorder=4))
    ax.plot(px,pz,color=LINIE,lw=1.6,zorder=5)
    ax.set_xlim(xmin,xmax);ax.set_ylim(zb,max(allz)+1.5)
    ax.set_aspect("equal");ax.axis("off")
    plt.savefig(HER/fname,bbox_inches="tight",facecolor=CREME,pad_inches=0.12);plt.close()
    print("OK:",fname)

def plan(fname):
    faces=[]
    for fc in F:
        vs=V[fc];faces.append((float(np.mean(vs[:,2])),[(q[0],q[1]) for q in vs],shade(vs)))
    faces.sort(key=lambda x:x[0])
    fig,ax=plt.subplots(figsize=(7.5,9),dpi=200)
    fig.patch.set_facecolor(CREME);ax.set_facecolor(CREME)
    ax.plot([x-ox for x,y in parz.exterior.coords],[y-oy for x,y in parz.exterior.coords],color=LINIE,lw=1.2,ls=(0,(6,3)))
    ax.plot([x-ox for x,y in bf.exterior.coords],[y-oy for x,y in bf.exterior.coords],color="#B9A78F",lw=0.8)
    ax.add_collection(PatchCollection([MPoly(p,closed=True) for _,p,_ in faces],
        facecolors=[c for _,_,c in faces],edgecolors=LINIE,linewidths=0.3))
    ax.set_aspect("equal");ax.axis("off")
    plt.savefig(HER/fname,bbox_inches="tight",facecolor=CREME,pad_inches=0.12);plt.close()
    print("OK:",fname)

elevation("2623_v5_ansicht_see.png",u,v,P["profil_see"],P["see_sign"])
elevation("2623_v5_ansicht_quer.png",v,u,P["profil_quer"],1)
plan("2623_v5_dachplan.png")
