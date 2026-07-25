#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Collage 2623 Variante Schraegdach in der Referenz-Farbigkeit (89 Komorow)."""
from PIL import Image, ImageDraw, ImageFont, ImageChops
from pathlib import Path

H = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623")
RND = H / "collage/render"
OUT = H / "2623_Collage_Schraegdach_Oberrieden.png"

CREME=(241,236,227); INK=(58,34,40); GREY=(120,104,96)
SWATCH=[("Oxblood","#8C2233"),("Karmin","#A02740"),("Altrosa","#C56F81"),("Creme","#F1ECE3")]

def font(sz, bold=False):
    for c in (["/System/Library/Fonts/Supplemental/Arial Bold.ttf"] if bold else ["/System/Library/Fonts/Supplemental/Arial.ttf"])+["/System/Library/Fonts/Helvetica.ttc"]:
        try: return ImageFont.truetype(c,sz)
        except Exception: pass
    return ImageFont.load_default()

def trim(im, bg=CREME, pad=10, thr=10):
    rgb=im.convert("RGB")
    bgim=Image.new("RGB",rgb.size,bg)
    diff=ImageChops.difference(rgb,bgim).convert("L").point(lambda p:255 if p>thr else 0)
    bb=diff.getbbox()
    if not bb: return rgb
    l,t,r,b=bb
    return rgb.crop((max(0,l-pad),max(0,t-pad),min(rgb.width,r+pad),min(rgb.height,b+pad)))

def fit(im,bw,bh):
    s=min(bw/im.width,bh/im.height)
    return im.resize((max(1,int(im.width*s)),max(1,int(im.height*s))),Image.LANCZOS)

def paste_center(canvas,im,bx,by,bw,bh):
    f=fit(im,bw,bh)
    canvas.paste(f,(bx+(bw-f.width)//2, by+(bh-f.height)//2))

W,HT=2480,1900
c=Image.new("RGB",(W,HT),CREME); d=ImageDraw.Draw(c)

# Kopf
d.text((48,40),"Centre-Idee Komorow auf Parzelle 4100", font=font(40,True), fill=INK)
d.text((48,96),"2623 Oberrieden · Volumenvariante Schrägdach · Cluster steiler Walmdach-Pavillons, monochrom in Maroon", font=font(24), fill=GREY)
d.text((48,130),"Hausarchetyp modern abstrahiert · Farbigkeit nach Referenz «89° – Centre for Cultural Initiatives in Komorow»", font=font(22), fill=GREY)

# Palette-Swatches oben rechts
sx=W-48- (len(SWATCH)*150); sy=48
for i,(nm,hexc) in enumerate(SWATCH):
    x=sx+i*150
    d.rectangle((x,sy,x+120,sy+74), fill=tuple(int(hexc[j:j+2],16) for j in (1,3,5)), outline=(110,24,40))
    d.text((x,sy+80),nm,font=font(18),fill=GREY)
    d.text((x,sy+102),hexc,font=font(16),fill=GREY)

def label(x,y,txt):
    d.text((x,y),txt,font=font(22,True),fill=INK)

# --- Reihe 1: Renderings ---
y1=200; h1=1000
hero=trim(Image.open(RND/"2623_OBR_warm_axo2.png"))
persp=trim(Image.open(RND/"2623_OBR_warm_persp.png"))
axo=trim(Image.open(RND/"2623_OBR_warm_axo.png"))
label(48,y1,"Vogelschau — Cluster im Kontext")
paste_center(c,hero,48,y1+34,1420,h1-34)
label(1500,y1,"Perspektive — Modell")
paste_center(c,persp,1500,y1+34,932,(h1-34)//2-10)
label(1500,y1+ (h1)//2+24,"Axonometrie")
paste_center(c,axo,1500,y1+(h1)//2+58,932,(h1-34)//2-30)

# --- Reihe 2: Zeichnungen ---
y2=y1+h1+50; h2=560
elev=trim(Image.open(H/"2623_ansicht_laengs.png"))
plan=trim(Image.open(H/"2623_dachplan.png"))
stirn=trim(Image.open(H/"2623_ansicht_stirn.png"))
label(48,y2,"Ansicht Längsseite")
paste_center(c,elev,48,y2+34,1420,h2-34)
label(1500,y2,"Dachaufsicht")
paste_center(c,plan,1500,y2+34,560,h2-34)
label(2090,y2,"Stirnseite")
paste_center(c,stirn,2090,y2+34,342,h2-34)

# Fusszeile
d.text((48,HT-44),"Raphael Jans Architekten ETH/SIA · Studie 2623 · Konzeptvariante, Farb- und Volumenstudie · weisses Kontextmodell aus swissBUILDINGS3D, Terrain swissALTI3D",
       font=font(18), fill=GREY)

c.save(OUT,"PNG"); print("OK:",OUT,c.size)
