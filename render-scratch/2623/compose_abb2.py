#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Komponiert Abb.2 (Volumenmodell) aus den zwei C4D-Axonometrien."""
from PIL import Image, ImageDraw, ImageFont
from pathlib import Path

R = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623/situation/render")
OUT = Path("/Volumes/daten/jans-ai-hub/render-scratch/2623/2623_Volumenmodell_Oberrieden.png")

W, H = 1702, 900                      # Format wie bisheriges image2.png (1.89:1)
WHITE = (255, 255, 255)
INK = (40, 40, 40)
GREY = (110, 110, 110)

def font(sz, bold=False):
    cands = [
        "/System/Library/Fonts/Supplemental/Arial Bold.ttf" if bold else "/System/Library/Fonts/Supplemental/Arial.ttf",
        "/System/Library/Fonts/Helvetica.ttc",
        "/Library/Fonts/Arial.ttf",
    ]
    for c in cands:
        try:
            return ImageFont.truetype(c, sz)
        except Exception:
            continue
    return ImageFont.load_default()

def trim(im, pad=14):
    """Weissen Rand abschneiden, etwas Polster lassen."""
    rgb = im.convert("RGB")
    from PIL import ImageChops
    bg = Image.new("RGB", rgb.size, WHITE)
    diff = ImageChops.difference(rgb, bg)
    bb = diff.getbbox()
    if not bb:
        return rgb
    l, t, r, b = bb
    l = max(0, l - pad); t = max(0, t - pad)
    r = min(rgb.width, r + pad); b = min(rgb.height, b + pad)
    return rgb.crop((l, t, r, b))

def fit(im, bw, bh):
    """In Box (bw,bh) einpassen, Seitenverhaeltnis halten."""
    s = min(bw / im.width, bh / im.height)
    return im.resize((max(1, int(im.width * s)), max(1, int(im.height * s))), Image.LANCZOS)

canvas = Image.new("RGB", (W, H), WHITE)
d = ImageDraw.Draw(canvas)

f_title = font(27, bold=True)
f_sub = font(20)
f_lbl = font(22, bold=True)

# Kopfzeile
title = "2623 Oberrieden · Parzelle 4100 · Maximaler Baukörper W2 (35 %) auf massgebendem Terrain"
sub = "Weisses Volumenmodell · Neubau (beige) im Kontext der Nachbarbebauung · aGF 344 m² · HNF max ~275 m² · GV ~1'420 m³ · Grenzabstand 5 m allseitig"
d.text((40, 26), title, font=f_title, fill=INK)
d.text((40, 64), sub, font=f_sub, fill=GREY)

top = 108
labels = ["Axonometrie — Übersicht", "Axonometrie — Hanglage talseitig (Seeseite)"]
srcs = [trim(Image.open(R / "2623_OBR_variante_B_axo.png")),
        trim(Image.open(R / "2623_OBR_variante_B_axo2.png"))]

gap = 34
panel_w = (W - 2 * 40 - gap) // 2
panel_h = H - top - 30
for i, (im, lbl) in enumerate(zip(srcs, labels)):
    px = 40 + i * (panel_w + gap)
    # Label
    d.text((px + 4, top), lbl, font=f_lbl, fill=INK)
    img_box_top = top + 36
    fitted = fit(im, panel_w, panel_h - 36)
    ix = px + (panel_w - fitted.width) // 2
    iy = img_box_top + (panel_h - 36 - fitted.height) // 2
    canvas.paste(fitted, (ix, iy))

canvas.save(OUT, "PNG")
print(f"OK: {OUT} ({canvas.size[0]}x{canvas.size[1]})")
