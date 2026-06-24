#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Schraegdach-Variante v4: EIN zusammenhaengender Baukoerper (keine Luecken),
   gestaffelte Dachsilhouette (elegante Hoehenspruenge), in den Hang eingesenkt
   (gesockelt), grosse Seeluken, begehbare Dachterrassen, dezente Fenestrierung.
   Outputs: Masse-OBJ, Fenster-OBJ (Glas), Terrainprofile-JSON fuer die Ansichten."""
import json, math, urllib.request
from pathlib import Path
from shapely.geometry import shape

HER=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
OKT=442.80
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
def h_rel(a,b):  # Terrain (rel zu OKT) an lokaler Koordinate (a entlang u, b entlang v) um Bauplatzmitte
    E=cx+a*u[0]+b*v[0]; N=cy+a*u[1]+b*v[1]
    return hoehe(E,N)-OKT
tp=h_rel(0,8); tm=h_rel(0,-8); see=1 if tp<tm else -1

Wv=6.2; hv=Wv/2; tt=hv*0.30
SEG=[5.0,4.2,5.5,4.0,4.8]                  # Segmentlaengen entlang u (beruehrend)
OFF=[0.8,-1.5,0.3,-1.0,0.6]                # Hoehensprung der Terrasse (elegantes Spiel)
Lt=sum(SEG)
PP=0.8
see_terr=h_rel(0, see*hv)                  # Terrain an Seefassade (massgebend)
FH=9.0; z_eave=see_terr+FH
base_top=see_terr+11.4
cap=see_terr+12.2                          # Giebel max 13.0 - Bruestung 0.8
# Sockel: unter den tiefsten Terrainpunkt des Footprints
corners=[h_rel(a,b) for a in (-Lt/2,Lt/2) for b in (-hv,hv)]
z0=min(corners)-1.8

allv=[];allf=[]; winv=[];winf=[]
def emit(dstV,dstF,V,Fc):
    off=len(dstV); dstV.extend(V); dstF.extend([tuple(i+off for i in f) for f in Fc])
def P(a,b,z): return (a*u[0]+b*v[0]+ (cx-ox), a*u[1]+b*v[1]+(cy-oy), z)
# (a,b) sind um Bauplatzmitte; Origin-Versatz cx-ox/cy-oy auf lokal)

# --- durchgehender Baukoerper-Sockel/Box (z0..z_eave) ---
V=[];Fc=[]
def addM(*p):
    i=len(V);V.extend(p);Fc.append(tuple(range(i,i+len(p))))
aL,aR=-Lt/2,Lt/2
addM(P(aL,-hv,z0),P(aR,-hv,z0),P(aR,-hv,z_eave),P(aL,-hv,z_eave))
addM(P(aR,hv,z0),P(aL,hv,z0),P(aL,hv,z_eave),P(aR,hv,z_eave))
addM(P(aR,-hv,z0),P(aR,hv,z0),P(aR,hv,z_eave),P(aR,-hv,z_eave))
addM(P(aL,hv,z0),P(aL,-hv,z0),P(aL,-hv,z_eave),P(aL,hv,z_eave))
addM(P(aL,-hv,z0),P(aL,hv,z0),P(aR,hv,z0),P(aR,-hv,z0))
emit(allv,allf,V,Fc)

# --- Dachsegmente mit Hoehensprung + Terrasse + Bruestung + Seeluke ---
a=aL
seg_meta=[]
for L,o in zip(SEG,OFF):
    a0,a1=a,a+L; a+=L
    top=min(cap, base_top+o)
    V=[];Fc=[]
    def addM(*p):
        i=len(V);V.extend(p);Fc.append(tuple(range(i,i+len(p))))
    # Dachflaechen (First entlang u; gekappt -> Terrasse)
    addM(P(a0,-hv,z_eave),P(a1,-hv,z_eave),P(a1,-tt,top),P(a0,-tt,top))
    addM(P(a1,hv,z_eave),P(a0,hv,z_eave),P(a0,tt,top),P(a1,tt,top))
    addM(P(a0,-tt,top),P(a1,-tt,top),P(a1,tt,top),P(a0,tt,top))     # Terrasse
    # Stirn/Stufenwaende (a0,a1)
    addM(P(a0,-hv,z_eave),P(a0,hv,z_eave),P(a0,tt,top),P(a0,-tt,top))
    addM(P(a1,hv,z_eave),P(a1,-hv,z_eave),P(a1,-tt,top),P(a1,tt,top))
    # Bruestung um Terrasse
    for (x0,y0,x1,y1) in [(a0,-tt,a1,-tt),(a1,tt,a0,tt),(a1,-tt,a1,tt),(a0,tt,a0,-tt)]:
        addM(P(x0,y0,top),P(x1,y1,top),P(x1,y1,top+PP),P(x0,y0,top+PP))
    # Seeluke (Schleppgaube) 50% Segmentlaenge
    s=see; cda=(a0+a1)/2; da=0.25*L; zd=z_eave+(top-z_eave)*0.78
    bb=s*(hv-(zd-z_eave)/(top-z_eave)*(hv-tt))
    addM(P(cda-da,s*hv,z_eave),P(cda+da,s*hv,z_eave),P(cda+da,s*hv,zd),P(cda-da,s*hv,zd))
    addM(P(cda-da,s*hv,zd),P(cda+da,s*hv,zd),P(cda+da,bb,zd),P(cda-da,bb,zd))
    addM(P(cda+da,s*hv,z_eave),P(cda+da,s*hv,zd),P(cda+da,bb,zd))
    addM(P(cda-da,s*hv,z_eave),P(cda-da,bb,zd),P(cda-da,s*hv,zd))
    emit(allv,allf,V,Fc)
    seg_meta.append({"a0":a0,"a1":a1,"top":top,"zd":zd,"cda":cda,"da":da})

# --- Fenestrierung (Glas-Ebene): pro Segment ein hohes Schlitzfenster + Lukenglas ---
GV=[];GF=[]
def addG(*p):
    i=len(GV);GV.extend(p);GF.append(tuple(range(i,i+len(p))))
eps=0.05
for m in seg_meta:
    s=see; b=s*(hv+eps)
    zt0=h_rel(m["cda"], s*hv)+1.2     # ab Terrain+1.2
    # zwei schlanke Schlitze li/re der Luke
    for cc in (m["a0"]+ (m["a1"]-m["a0"])*0.22, m["a0"]+(m["a1"]-m["a0"])*0.78):
        addG(P(cc-0.35,b,zt0),P(cc+0.35,b,zt0),P(cc+0.35,b,z_eave-0.6),P(cc-0.35,b,z_eave-0.6))
    # Lukenglas (Front)
    da=m["da"]; cda=m["cda"]; zd=m["zd"]
    addG(P(cda-da*0.86,s*(hv+eps),z_eave+0.3),P(cda+da*0.86,s*(hv+eps),z_eave+0.3),
         P(cda+da*0.86,s*(hv+eps),zd-0.3),P(cda-da*0.86,s*(hv+eps),zd-0.3))
emit(winv,winf,GV,GF)

def write_obj(path,V,F,name):
    with open(path,"w") as f:
        f.write(f"# {name}\no {name}\n")
        for x,y,z in V: f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
        for fc in F: f.write("f "+" ".join(str(i+1) for i in fc)+"\n")
write_obj(HER/"2623_R4_schraegdach.obj",allv,allf,"Volumen_R4")
write_obj(HER/"2623_R4_fenster.obj",winv,winf,"Glas")

# --- Terrainprofile fuer die Ansichten (gewachsene Linie aus DTM/Hoehen-API) ---
prof_see=[]    # entlang u an der Seefassade
for i in range(41):
    a=aL-2 + (Lt+4)*i/40
    prof_see.append([a, h_rel(a, see*hv)])
prof_quer=[]   # Schnitt quer (entlang v) in der Mitte
for i in range(41):
    b=-hv-4 + (2*hv+8)*i/40
    prof_quer.append([b, h_rel(0, b)])
json.dump({"see_sign":see,"z0":z0,"z_eave":z_eave,"FH":FH,"Wv":Wv,"hv":hv,"tt":tt,"PP":PP,
           "Lt":Lt,"aL":aL,"aR":aR,"segmente":seg_meta,
           "profil_see":prof_see,"profil_quer":prof_quer},
          open(HER/"2623_R4_profil.json","w"),indent=1)

foot=Lt*Wv
print(f"see={see} | z0(Sockel)={z0:.2f} | z_eave={z_eave:.2f} (FH {FH}) | Terrassen {[round(m['top'],1) for m in seg_meta]}")
print(f"EIN Baukoerper {Lt:.1f} x {Wv} m, Footprint {foot:.0f} m2 (AZ-Deckel aGF {983*0.35:.0f}) | {len(SEG)} Dachsegmente")
print("OBJ: 2623_R4_schraegdach.obj + 2623_R4_fenster.obj | Profile: 2623_R4_profil.json")
