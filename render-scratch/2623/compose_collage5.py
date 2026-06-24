#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from PIL import Image, ImageDraw, ImageFont, ImageChops
from pathlib import Path
H=Path("/Volumes/daten/jans-ai-hub/render-scratch/2623"); RND=H/"collage5/render"
OUT=H/"2623_Collage_Schraegdach_v5_Oberrieden.png"
CREME=(241,236,227);INK=(58,34,40);GREY=(120,104,96)
SW=[("Oxblood","#8C2233"),("Karmin","#A02740"),("Altrosa","#C56F81"),("Creme","#F1ECE3")]
def font(s,b=False):
    for c in (["/System/Library/Fonts/Supplemental/Arial Bold.ttf"] if b else ["/System/Library/Fonts/Supplemental/Arial.ttf"])+["/System/Library/Fonts/Helvetica.ttc"]:
        try:return ImageFont.truetype(c,s)
        except Exception:pass
    return ImageFont.load_default()
def trim(im,bg=CREME,pad=10,thr=10):
    rgb=im.convert("RGB");diff=ImageChops.difference(rgb,Image.new("RGB",rgb.size,bg)).convert("L").point(lambda p:255 if p>thr else 0)
    bb=diff.getbbox()
    return rgb if not bb else rgb.crop((max(0,bb[0]-pad),max(0,bb[1]-pad),min(rgb.width,bb[2]+pad),min(rgb.height,bb[3]+pad)))
def fit(im,bw,bh):
    s=min(bw/im.width,bh/im.height);return im.resize((max(1,int(im.width*s)),max(1,int(im.height*s))),Image.LANCZOS)
def pc(c,im,bx,by,bw,bh):
    f=fit(im,bw,bh);c.paste(f,(bx+(bw-f.width)//2,by+(bh-f.height)//2))
W,HT=2480,1980
c=Image.new("RGB",(W,HT),CREME);d=ImageDraw.Draw(c)
d.text((48,40),"Centre-Idee Komorow auf Parzelle 4100 — rückgestaffelte Volumenkörper im Hang",font=font(34,True),fill=INK)
d.text((48,90),"2623 Oberrieden · vier rückgestaffelte Körper · Seeluken · begehbare Dachterrassen · jeder Körper am massgebenden Terrain abgetreppt · gewachsene Terrainlinie als Geländeschnitt",font=font(21),fill=GREY)
d.text((48,121),"Maximalvolumen W2 mit Kontrolle JEDER Gebäudeecke: Fassadenhöhe max 9.0 m (talseitige Ecke), Giebel bis 13.0 m, AZ 0.35 (aGF ~344 m²) · monochrom Maroon",font=font(20),fill=GREY)
sx=W-48-len(SW)*150;sy=44
for i,(nm,hx) in enumerate(SW):
    x=sx+i*150;d.rectangle((x,sy,x+120,sy+72),fill=tuple(int(hx[j:j+2],16) for j in (1,3,5)),outline=(110,24,40))
    d.text((x,sy+78),nm,font=font(17),fill=GREY);d.text((x,sy+99),hx,font=font(15),fill=GREY)
def lab(x,y,t):d.text((x,y),t,font=font(22,True),fill=INK)
y1=200;h1=1010
hero=trim(Image.open(RND/"2623_OBR_warm_hero.png"))
vogel=trim(Image.open(RND/"2623_OBR_warm_axo2.png"))
persp=trim(Image.open(RND/"2623_OBR_warm_persp.png"))
lab(48,y1,"Seeperspektive — rückgestaffelt und gesockelt im Hang")
pc(c,hero,48,y1+34,1500,h1-34)
lab(1580,y1,"Vogelschau im Kontext")
pc(c,vogel,1580,y1+34,852,(h1-34)//2-8)
lab(1580,y1+h1//2+22,"Modell-Perspektive")
pc(c,persp,1580,y1+h1//2+56,852,(h1-34)//2-26)
y2=y1+h1+46;h2=580
see=trim(Image.open(H/"2623_v5_ansicht_see.png"))
quer=trim(Image.open(H/"2623_v5_ansicht_quer.png"))
plan=trim(Image.open(H/"2623_v5_dachplan.png"))
lab(48,y2,"Seeansicht — Schnitt mit gewachsener Terrainlinie")
pc(c,see,48,y2+34,1420,h2-34)
lab(1500,y2,"Dachaufsicht")
pc(c,plan,1500,y2+34,540,h2-34)
lab(2060,y2,"Querschnitt")
pc(c,quer,2060,y2+34,372,h2-34)
d.text((48,HT-42),"Raphael Jans Architekten ETH/SIA · Studie 2623 · Konzept-/Farbvariante · ein Baukörper, gesockelt · Ansichten direkt aus dem Situationsmodell geschnitten · Terrain swissALTI3D, Kontext swissBUILDINGS3D",font=font(17),fill=GREY)
c.save(OUT,"PNG");print("OK:",OUT,c.size)
