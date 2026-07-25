#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from PIL import Image, ImageDraw, ImageFont, ImageChops
from pathlib import Path
H=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623"); RND=H/"collage2/render"
OUT=H/"2623_Collage_Schraegdach_v2_Oberrieden.png"
CREME=(241,236,227); INK=(58,34,40); GREY=(120,104,96)
SW=[("Oxblood","#8C2233"),("Karmin","#A02740"),("Altrosa","#C56F81"),("Creme","#F1ECE3")]
def font(s,b=False):
    for c in (["/System/Library/Fonts/Supplemental/Arial Bold.ttf"] if b else ["/System/Library/Fonts/Supplemental/Arial.ttf"])+["/System/Library/Fonts/Helvetica.ttc"]:
        try:return ImageFont.truetype(c,s)
        except Exception:pass
    return ImageFont.load_default()
def trim(im,bg=CREME,pad=10,thr=10):
    rgb=im.convert("RGB");diff=ImageChops.difference(rgb,Image.new("RGB",rgb.size,bg)).convert("L").point(lambda p:255 if p>thr else 0)
    bb=diff.getbbox()
    if not bb:return rgb
    l,t,r,b=bb;return rgb.crop((max(0,l-pad),max(0,t-pad),min(rgb.width,r+pad),min(rgb.height,b+pad)))
def fit(im,bw,bh):
    s=min(bw/im.width,bh/im.height);return im.resize((max(1,int(im.width*s)),max(1,int(im.height*s))),Image.LANCZOS)
def pc(c,im,bx,by,bw,bh):
    f=fit(im,bw,bh);c.paste(f,(bx+(bw-f.width)//2,by+(bh-f.height)//2))
W,HT=2480,1980
c=Image.new("RGB",(W,HT),CREME);d=ImageDraw.Draw(c)
d.text((48,40),"Centre-Idee Komorow auf Parzelle 4100 — Variante Schrägdach mit Dachterrasse",font=font(38,True),fill=INK)
d.text((48,94),"2623 Oberrieden · Satteldach quer zum Hang (First entlang Höhenlinie) · grosse Seeluke über 50% der Fassade · begehbares Flachdach mit Brüstung",font=font(23),fill=GREY)
d.text((48,127),"Hausarchetyp modern abstrahiert · monochrom Maroon nach Referenz «89° – Centre for Cultural Initiatives in Komorow»",font=font(21),fill=GREY)
sx=W-48-len(SW)*150; sy=44
for i,(nm,hx) in enumerate(SW):
    x=sx+i*150;d.rectangle((x,sy,x+120,sy+72),fill=tuple(int(hx[j:j+2],16) for j in (1,3,5)),outline=(110,24,40))
    d.text((x,sy+78),nm,font=font(17),fill=GREY);d.text((x,sy+99),hx,font=font(15),fill=GREY)
def lab(x,y,t):d.text((x,y),t,font=font(22,True),fill=INK)
# Reihe 1
y1=200;h1=1020
hero=trim(Image.open(RND/"2623_OBR_warm_hero.png"))
vogel=trim(Image.open(RND/"2623_OBR_warm_axo2.png"))
persp=trim(Image.open(RND/"2623_OBR_warm_persp.png"))
lab(48,y1,"Seeperspektive — Lukarnen und Dachterrassen")
pc(c,hero,48,y1+34,1500,h1-34)
lab(1580,y1,"Vogelschau im Kontext")
pc(c,vogel,1580,y1+34,852,(h1-34)//2-8)
lab(1580,y1+h1//2+22,"Modell-Perspektive")
pc(c,persp,1580,y1+h1//2+56,852,(h1-34)//2-26)
# Reihe 2
y2=y1+h1+44;h2=560
see=trim(Image.open(H/"2623_v2_ansicht_see.png"))
plan=trim(Image.open(H/"2623_v2_dachplan.png"))
stirn=trim(Image.open(H/"2623_v2_ansicht_stirn.png"))
lab(48,y2,"Seeansicht (Längsseite)")
pc(c,see,48,y2+34,1500,h2-34)
lab(1580,y2,"Dachaufsicht")
pc(c,plan,1580,y2+34,540,h2-34)
lab(2120,y2,"Stirnseite")
pc(c,stirn,2120,y2+34,312,h2-34)
d.text((48,HT-42),"Raphael Jans Architekten ETH/SIA · Studie 2623 · Konzept-/Farbvariante · Kontextmodell swissBUILDINGS3D, Terrain swissALTI3D · First quer zum Hang, Seeluke 50%, Dachterrasse mit Brüstung",font=font(18),fill=GREY)
c.save(OUT,"PNG");print("OK:",OUT,c.size)
