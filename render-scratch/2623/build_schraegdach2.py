#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Schraegdach-Variante v2 fuer 2623: Satteldach QUER zum Hang (First entlang
   Hoehenlinie), gekappt zu begehbarer Dachterrasse mit Bruestung (Zinnen),
   grosse Lukarne (Schleppgaube) ueber 50% der Fassadenlaenge auf der Seeseite.
   Ein OBJ in situationsmodell-Lokalkoordinaten; z je Pavillon aus Terrain."""
import json, math, urllib.request
from pathlib import Path
from shapely.geometry import shape

HER = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
parz = shape(json.load(open(HER/"parzelle.geojson"))["geometry"])
if parz.geom_type == "MultiPolygon": parz = max(parz.geoms, key=lambda g: g.area)
ox, oy = parz.centroid.x, parz.centroid.y
mrr = list(parz.minimum_rotated_rectangle.exterior.coords)[:4]
def vec(a,b): return (b[0]-a[0], b[1]-a[1])
def nrm(p): l=math.hypot(*p); return (p[0]/l,p[1]/l)
e0=vec(mrr[0],mrr[1]); e1=vec(mrr[1],mrr[2])
u,v = (nrm(e0),nrm(e1)) if math.hypot(*e0)>=math.hypot(*e1) else (nrm(e1),nrm(e0))
bf = parz.buffer(-5.0, join_style=2)
if bf.geom_type=="MultiPolygon": bf=max(bf.geoms,key=lambda g:g.area)
cx, cy = bf.centroid.x, bf.centroid.y

def hoehe(E,N):
    url=f"https://api3.geo.admin.ch/rest/services/height?easting={E:.2f}&northing={N:.2f}&sr=2056"
    with urllib.request.urlopen(url,timeout=20) as r: return float(json.load(r)["height"])

zentroid_h = hoehe(ox,oy)
# Talseite (See) bestimmen: tiefere Seite entlang v
tp = hoehe(cx+8*v[0], cy+8*v[1]); tm = hoehe(cx-8*v[0], cy-8*v[1])
see_sign = 1 if tp < tm else -1     # Seite mit tieferem Terrain = See
print(f"Terrain +v {tp:.1f} / -v {tm:.1f} -> Seeseite see_sign={see_sign}")

PAV = [(-8.5,0.4,8.0,3.2),(-1.5,-0.5,6.5,3.0),(5.0,0.5,7.0,3.1),(11.0,-0.4,5.5,2.8)]
RH=4.6; PP=1.0; TT_F=0.30   # Dachhoehe bis Terrasse, Bruestung, Terrassen-Halbbreite-Faktor

allv=[]; allf=[]
def emit(verts, faces):
    off=len(allv); allv.extend(verts)
    allf.extend([tuple(i+off for i in f) for f in faces])

def pav(clu, clv, F, hw, z0):
    h=F/2; tt=h*TT_F
    zw=z0+hw; zt=zw+RH
    cl=(cx-ox+clu*u[0]+clv*v[0], cy-oy+clu*u[1]+clv*v[1])
    def P(a,b,z): return (cl[0]+a*u[0]+b*v[0], cl[1]+a*u[1]+b*v[1], z)
    V=[]; Fc=[]
    def add(*pts):
        i=len(V); V.extend(pts); Fc.append(tuple(range(i,i+len(pts))))
    # Waende
    add(P(-h,-h,z0),P(h,-h,z0),P(h,-h,zw),P(-h,-h,zw))
    add(P(h,h,z0),P(-h,h,z0),P(-h,h,zw),P(h,h,zw))
    add(P(h,-h,z0),P(h,h,z0),P(h,h,zw),P(h,-h,zw))
    add(P(-h,h,z0),P(-h,-h,z0),P(-h,-h,zw),P(-h,h,zw))
    add(P(-h,-h,z0),P(-h,h,z0),P(h,h,z0),P(h,-h,z0))  # Boden
    # Dachflaechen (Satteldach, First entlang u, gekappt bei b=+-tt auf zt)
    add(P(-h,-h,zw),P(h,-h,zw),P(h,-tt,zt),P(-h,-tt,zt))   # Flaeche -v
    add(P(h,h,zw),P(-h,h,zw),P(-h,tt,zt),P(h,tt,zt))       # Flaeche +v
    add(P(-h,-tt,zt),P(h,-tt,zt),P(h,tt,zt),P(-h,tt,zt))   # Terrasse (flach)
    # Giebelenden (a=+-h): Trapez zw->zt
    add(P(h,-h,zw),P(h,h,zw),P(h,tt,zt),P(h,-tt,zt))
    add(P(-h,h,zw),P(-h,-h,zw),P(-h,-tt,zt),P(-h,tt,zt))
    # Bruestung (Zinnen) um Terrasse, zt..zt+PP
    for (ax0,ay0,ax1,ay1) in [(-h,-tt,h,-tt),(h,tt,-h,tt),(h,-tt,h,tt),(-h,tt,-h,-tt)]:
        add(P(ax0,ay0,zt),P(ax1,ay1,zt),P(ax1,ay1,zt+PP),P(ax0,ay0,zt+PP))
    # --- Lukarne (Schleppgaube) auf Seeseite (b=see_sign*h), 50% von F ---
    s=see_sign; da=0.25*F; zd=zw+RH*0.78
    bb=s*(h-(zd-zw)/RH*(h-tt))   # Ruecklinie wo Gaube auf Dachflaeche trifft
    add(P(-da,s*h,zw),P(da,s*h,zw),P(da,s*h,zd),P(-da,s*h,zd))   # Front (Glas zum See)
    add(P(-da,s*h,zd),P(da,s*h,zd),P(da,bb,zd),P(-da,bb,zd))     # Gaubendach (flach)
    add(P(da,s*h,zw),P(da,s*h,zd),P(da,bb,zd))                    # Wange +a
    add(P(-da,s*h,zw),P(-da,bb,zd),P(-da,s*h,zd))                 # Wange -a
    emit(V,Fc)
    return h, zt+PP

zmax=0
for clu,clv,F,hw in PAV:
    E=cx+clu*u[0]+clv*v[0]; N=cy+clu*u[1]+clv*v[1]
    z0=(hoehe(E,N)-zentroid_h)-0.3
    _,top=pav(clu,clv,F,hw,z0); zmax=max(zmax,top)

with open(HER/"2623_R2_schraegdach.obj","w") as f:
    f.write("# JANS 2623 Schraegdach v2 (Satteldach quer, Dachterrasse, Seeluke)\no Volumen_R2\n")
    for x,y,z in allv: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
    for fc in allf: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")
print(f"OK 2623_R2_schraegdach.obj | Pavillons {len(PAV)} | First entlang u (quer zum Hang)")
print(f"Lukarne 50% Fassade Seeseite | Dachterrasse mit {PP} m Bruestung | max ~{zmax:.1f} m ueber Zentroid-Datum")
print(f"VOL_OKT={zentroid_h:.2f}")
