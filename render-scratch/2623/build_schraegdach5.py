#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Schraegdach-Variante v5: rueckgestaffelte EIGENSTAENDIGE Volumenkoerper (wie v2),
   jeder per massgebendem Terrain abgetreppt -> KEINE Gebaeudeecke ueber 9.0 m
   Fassadenhoehe (talseitige Ecke = 9.0 m, bergseitig eingesenkt/gesockelt).
   Keine Fenster. Farbigkeit wie zuvor (Maroon). Seeluke + Dachterrasse bleiben."""
import json, math, urllib.request
from pathlib import Path
from shapely.geometry import shape

HER=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623"); OKT=442.80
FH_MAX=9.0; GIEBEL_MAX=13.0; PP=0.8
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
def hoehe(E,N):
    with urllib.request.urlopen(f"https://api3.geo.admin.ch/rest/services/height?easting={E:.2f}&northing={N:.2f}&sr=2056",timeout=20) as r:
        return float(json.load(r)["height"])
def hrel(a,b):
    return hoehe(cx+a*u[0]+b*v[0], cy+a*u[1]+b*v[1])-OKT
see=1 if hrel(0,8)<hrel(0,-8) else -1

# rueckgestaffelte Koerper: (u_center, v_offset, Lu, Wv, RH)  -- v-Versatz = Rueckstaffelung
BODIES=[(-9.0, 1.2, 6.6, 5.8, 3.2),
        (-3.0,-1.0, 6.0, 5.8, 2.4),
        ( 3.2, 1.0, 6.6, 5.8, 3.0),
        ( 9.2,-1.2, 6.0, 5.8, 2.6)]

allv=[];allf=[]
def emit(V,Fc):
    o=len(allv);allv.extend(V);allf.extend([tuple(i+o for i in f) for f in Fc])
def P(a,b,z): return (a*u[0]+b*v[0]+offx, a*u[1]+b*v[1]+offy, z)

rep=[]
for (cu,cv,Lu,Wv,RH) in BODIES:
    hu,hv=Lu/2,Wv/2; tt=hv*0.30
    # 4 Eck-Terrainhoehen
    ecken={(su,sv):hrel(cu+su*hu, cv+sv*hv) for su in(-1,1) for sv in(-1,1)}
    tmin=min(ecken.values())                 # tiefste Ecke (massgebend)
    z0=tmin-0.25                             # Sockel knapp unter tiefste Ecke
    z_eave=tmin+FH_MAX                        # tiefste Ecke -> Fassadenhoehe exakt 9.0
    RH=min(RH, (tmin+GIEBEL_MAX-PP)-z_eave)   # Giebel <= 13.0
    top=z_eave+RH
    # Fassadenhoehe je Ecke pruefen
    fh_ecken={k:round(z_eave-tv,2) for k,tv in ecken.items()}
    rep.append((cu,cv,Lu,Wv,round(z0,2),round(z_eave,2),round(top,2),max(fh_ecken.values())))
    V=[];Fc=[]
    def add(*p):
        i=len(V);V.extend(p);Fc.append(tuple(range(i,i+len(p))))
    def Q(a,b,z): return P(cu+a, cv+b, z)
    # Waende
    add(Q(-hu,-hv,z0),Q(hu,-hv,z0),Q(hu,-hv,z_eave),Q(-hu,-hv,z_eave))
    add(Q(hu,hv,z0),Q(-hu,hv,z0),Q(-hu,hv,z_eave),Q(hu,hv,z_eave))
    add(Q(hu,-hv,z0),Q(hu,hv,z0),Q(hu,hv,z_eave),Q(hu,-hv,z_eave))
    add(Q(-hu,hv,z0),Q(-hu,-hv,z0),Q(-hu,-hv,z_eave),Q(-hu,hv,z_eave))
    add(Q(-hu,-hv,z0),Q(-hu,hv,z0),Q(hu,hv,z0),Q(hu,-hv,z0))
    # Dach (First entlang u, gekappt -> Terrasse)
    add(Q(-hu,-hv,z_eave),Q(hu,-hv,z_eave),Q(hu,-tt,top),Q(-hu,-tt,top))
    add(Q(hu,hv,z_eave),Q(-hu,hv,z_eave),Q(-hu,tt,top),Q(hu,tt,top))
    add(Q(-hu,-tt,top),Q(hu,-tt,top),Q(hu,tt,top),Q(-hu,tt,top))
    add(Q(hu,-hv,z_eave),Q(hu,hv,z_eave),Q(hu,tt,top),Q(hu,-tt,top))
    add(Q(-hu,hv,z_eave),Q(-hu,-hv,z_eave),Q(-hu,-tt,top),Q(-hu,tt,top))
    for (x0,y0,x1,y1) in [(-hu,-tt,hu,-tt),(hu,tt,-hu,tt),(hu,-tt,hu,tt),(-hu,tt,-hu,-tt)]:
        add(Q(x0,y0,top),Q(x1,y1,top),Q(x1,y1,top+PP),Q(x0,y0,top+PP))
    # Seeluke 50%
    s=see; da=0.25*Lu; zd=z_eave+RH*0.78; bb=s*(hv-(zd-z_eave)/RH*(hv-tt))
    add(Q(-da,s*hv,z_eave),Q(da,s*hv,z_eave),Q(da,s*hv,zd),Q(-da,s*hv,zd))
    add(Q(-da,s*hv,zd),Q(da,s*hv,zd),Q(da,bb,zd),Q(-da,bb,zd))
    add(Q(da,s*hv,z_eave),Q(da,s*hv,zd),Q(da,bb,zd))
    add(Q(-da,s*hv,z_eave),Q(-da,bb,zd),Q(-da,s*hv,zd))
    emit(V,Fc)

with open(HER/"2623_R5_schraegdach.obj","w") as f:
    f.write("# JANS 2623 Schraegdach v5 rueckgestaffelt, Fassadenhoehe<=9.0 je Ecke\no Volumen_R5\n")
    for x,y,z in allv: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
    for fc in allf: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")
# Terrainprofil fuer Ansicht (Seeseite entlang u)
prof=[[ -16+(32)*i/48, hrel(-16+(32)*i/48, see*4.0)] for i in range(49)]
prof_q=[[ -8+(16)*i/40, hrel(0, -8+(16)*i/40)] for i in range(41)]
json.dump({"see_sign":see,"profil_see":prof,"profil_quer":prof_q},open(HER/"2623_R5_profil.json","w"),indent=1)

print(f"see={see} | AZ-Footprint {sum(b[2]*b[3] for b in BODIES):.0f} m2")
print("Koerper: u/v-Versatz, LuxWv, z0, eave, top, max Fassadenhoehe-Ecke")
for r in rep: print(f"  u{r[0]:+.1f} v{r[1]:+.1f} | {r[2]}x{r[3]} | z0 {r[4]} eave {r[5]} top {r[6]} | FHmax {r[7]} m")
print("KONTROLLE: alle FHmax <= 9.0 ?", all(r[7]<=9.001 for r in rep))
