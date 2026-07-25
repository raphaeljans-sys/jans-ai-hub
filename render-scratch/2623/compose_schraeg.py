#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from PIL import Image, ImageDraw, ImageFont, ImageChops
from pathlib import Path

R = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623/situation_schraeg/render")
OUT = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623/2623_Variante_Schraegdach_Oberrieden.png")
W, H = 1702, 900
WHITE=(255,255,255); INK=(40,40,40); GREY=(110,110,110); ROT=(150,33,51)

def font(sz, bold=False):
    for c in (["/System/Library/Fonts/Supplemental/Arial Bold.ttf"] if bold else ["/System/Library/Fonts/Supplemental/Arial.ttf"]) + ["/System/Library/Fonts/Helvetica.ttc"]:
        try: return ImageFont.truetype(c, sz)
        except Exception: pass
    return ImageFont.load_default()

def trim(im, pad=14):
    rgb=im.convert("RGB"); bg=Image.new("RGB",rgb.size,WHITE)
    bb=ImageChops.difference(rgb,bg).getbbox()
    if not bb: return rgb
    l,t,r,b=bb
    return rgb.crop((max(0,l-pad),max(0,t-pad),min(rgb.width,r+pad),min(rgb.height,b+pad)))

def fit(im,bw,bh):
    s=min(bw/im.width,bh/im.height)
    return im.resize((int(im.width*s),int(im.height*s)),Image.LANCZOS)

c=Image.new("RGB",(W,H),WHITE); d=ImageDraw.Draw(c)
d.text((40,24),"2623 Oberrieden · Parzelle 4100 · Variante Schrägdach (Konzept)",font=font(27,True),fill=INK)
d.text((40,62),"Cluster steiler Walmdach-Pavillons, monochrom in Karminrot · Hausarchetyp modern abstrahiert nach Referenz «89° Komorow»",font=font(19),fill=GREY)
d.text((40,86),"4 Pavillons · Dachneigung ~64–66° · Footprint ~220 m² · giebelseitige Fassadenhöhe bis 13.0 m zulässig (BO Oberrieden, Variante Schrägdach)",font=font(19),fill=GREY)
# Farbtupfer
d.rectangle((40,118,66,140),fill=ROT)
d.text((74,118),"Referenzfarbe Karminrot",font=font(17),fill=GREY)

top=158
labels=["Axonometrie — Übersicht","Vogelschau — Cluster im Kontext"]
srcs=[trim(Image.open(R/"2623_OBR_variante_R_axo.png")),trim(Image.open(R/"2623_OBR_variante_R_axo2.png"))]
gap=34; pw=(W-2*40-gap)//2; ph=H-top-30
for i,(im,lbl) in enumerate(zip(srcs,labels)):
    px=40+i*(pw+gap)
    d.text((px+4,top),lbl,font=font(22,True),fill=INK)
    f=fit(im,pw,ph-36)
    c.paste(f,(px+(pw-f.width)//2, top+36+(ph-36-f.height)//2))
c.save(OUT,"PNG"); print("OK:",OUT,c.size)
