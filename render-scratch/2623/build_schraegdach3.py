#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Schraegdach-Variante v3 (MAXIMALVOLUMEN W2): volle Fassadenhoehe 9.0 m,
   Giebel/Dachterrasse bis 13.0 m, AZ 0.35 als Dichtedeckel (Footprint ~144 m2).
   Satteldach quer zum Hang, grosse Seeluke 50%, begehbares Flachdach mit Bruestung."""
import json, math, urllib.request
from pathlib import Path
from shapely.geometry import shape

HER=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
parz=shape(json.load(open(HER/"parzelle.geojson"))["geometry"])
if parz.geom_type=="MultiPolygon": parz=max(parz.geoms,key=lambda g:g.area)
ox,oy=parz.centroid.x,parz.centroid.y
mrr=list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a,b):return(b[0]-a[0],b[1]-a[1])
def nrm(p):l=math.hypot(*p);return(p[0]/l,p[1]/l)
e0=vec(mrr[0],mrr[1]);e1=vec(mrr[1],mrr[2])
u,v=(nrm(e0),nrm(e1)) if math.hypot(*e0)>=math.hypot(*e1) else (nrm(e1),nrm(e0))
bf=parz.buffer(-5.0,join_style=2)
if bf.geom_type=="MultiPolygon":bf=max(bf.geoms,key=lambda g:g.area)
cx,cy=bf.centroid.x,bf.centroid.y
def hoehe(E,N):
    with urllib.request.urlopen(f"https://api3.geo.admin.ch/rest/services/height?easting={E:.2f}&northing={N:.2f}&sr=2056",timeout=20) as r:
        return float(json.load(r)["height"])
zentroid_h=hoehe(ox,oy)
tp=hoehe(cx+8*v[0],cy+8*v[1]); tm=hoehe(cx-8*v[0],cy-8*v[1])
see=1 if tp<tm else -1

# Baurecht-Maxima W2 Oberrieden
FH=9.0          # Fassadenhoehe traufseitig max
GIEBEL=13.0     # giebelseitige Fassadenhoehe max
PP=0.8          # Bruestung Dachterrasse
RH=GIEBEL-PP-FH # Dachhoehe von Traufe bis Terrasse = 13.0-0.8-9.0 = 3.2 m

# 4 Pavillons, Footprint je ~36 m2 -> total ~144 m2 = AZ 0.35 x 983 (aGF-Deckel)
# (Lu entlang First/u, Wv quer/v)
PAV=[(-10.5,0.4,6.5,5.5),(-3.5,-0.4,6.5,5.5),(3.5,0.4,6.5,5.5),(10.5,-0.4,6.0,5.5)]

allv=[];allf=[]
def emit(V,Fc):
    off=len(allv);allv.extend(V);allf.extend([tuple(i+off for i in f) for f in Fc])
def pav(clu,clv,Lu,Wv,z0):
    hu,hv=Lu/2,Wv/2; tt=hv*0.30
    zw=z0+FH; zt=zw+RH
    cl=(cx-ox+clu*u[0]+clv*v[0], cy-oy+clu*u[1]+clv*v[1])
    def P(a,b,z):return(cl[0]+a*u[0]+b*v[0], cl[1]+a*u[1]+b*v[1], z)
    V=[];Fc=[]
    def add(*p):
        i=len(V);V.extend(p);Fc.append(tuple(range(i,i+len(p))))
    add(P(-hu,-hv,z0),P(hu,-hv,z0),P(hu,-hv,zw),P(-hu,-hv,zw))
    add(P(hu,hv,z0),P(-hu,hv,z0),P(-hu,hv,zw),P(hu,hv,zw))
    add(P(hu,-hv,z0),P(hu,hv,z0),P(hu,hv,zw),P(hu,-hv,zw))
    add(P(-hu,hv,z0),P(-hu,-hv,z0),P(-hu,-hv,zw),P(-hu,hv,zw))
    add(P(-hu,-hv,z0),P(-hu,hv,z0),P(hu,hv,z0),P(hu,-hv,z0))
    add(P(-hu,-hv,zw),P(hu,-hv,zw),P(hu,-tt,zt),P(-hu,-tt,zt))
    add(P(hu,hv,zw),P(-hu,hv,zw),P(-hu,tt,zt),P(hu,tt,zt))
    add(P(-hu,-tt,zt),P(hu,-tt,zt),P(hu,tt,zt),P(-hu,tt,zt))
    add(P(hu,-hv,zw),P(hu,hv,zw),P(hu,tt,zt),P(hu,-tt,zt))
    add(P(-hu,hv,zw),P(-hu,-hv,zw),P(-hu,-tt,zt),P(-hu,tt,zt))
    for (x0,y0,x1,y1) in [(-hu,-tt,hu,-tt),(hu,tt,-hu,tt),(hu,-tt,hu,tt),(-hu,tt,-hu,-tt)]:
        add(P(x0,y0,zt),P(x1,y1,zt),P(x1,y1,zt+PP),P(x0,y0,zt+PP))
    s=see; da=0.25*Lu; zd=zw+RH*0.80
    bb=s*(hv-(zd-zw)/RH*(hv-tt))
    add(P(-da,s*hv,zw),P(da,s*hv,zw),P(da,s*hv,zd),P(-da,s*hv,zd))
    add(P(-da,s*hv,zd),P(da,s*hv,zd),P(da,bb,zd),P(-da,bb,zd))
    add(P(da,s*hv,zw),P(da,s*hv,zd),P(da,bb,zd))
    add(P(-da,s*hv,zw),P(-da,bb,zd),P(-da,s*hv,zd))
    emit(V,Fc)
    # Kennzahlen
    foot=Lu*Wv
    gv=foot*FH + (Wv+2*tt)/2*RH*Lu
    return foot,gv

foot_t=0; gv_t=0
for clu,clv,Lu,Wv in PAV:
    E=cx+clu*u[0]+clv*v[0]; N=cy+clu*u[1]+clv*v[1]
    z0=(hoehe(E,N)-zentroid_h)-0.3
    f,g=pav(clu,clv,Lu,Wv,z0); foot_t+=f; gv_t+=g

with open(HER/"2623_R3_schraegdach.obj","w") as f:
    f.write("# JANS 2623 Schraegdach v3 Maximalvolumen W2\no Volumen_R3\n")
    for x,y,z in allv: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
    for fc in allf: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")
az_agf=983*0.35
print(f"Seeseite see={see} | Fassadenhoehe {FH} m | Giebel/Terrasse bis {FH+RH+PP} m")
print(f"Pavillons {len(PAV)} | Footprint total {foot_t:.0f} m2 (AZ-Deckel aGF {az_agf:.0f} m2)")
print(f"GV (Kubatur) ~{gv_t:.0f} m3")
print("OBJ: 2623_R3_schraegdach.obj | VOL_OKT=%.2f"%zentroid_h)
