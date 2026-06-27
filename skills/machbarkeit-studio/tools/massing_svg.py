#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
massing_svg.py — isometrisches Massenmodell je Variante als inline-SVG.

Stufe "3D-Renderings je Variante" des Skills `machbarkeit-studio`, lizenz- und
abhaengigkeitsfrei: zeichnet aus Grundflaeche (Footprint) + Geschosszahl +
Geschosshoehe einen extrudierten Volumenkoerper in isometrischer Projektion,
im JANS-Monochrom-Look (Deckel hell, Seiten mittel/dunkel, Geschossteilung).
Alle Varianten werden auf einen gemeinsamen Massstab skaliert → ehrlicher
Volumenvergleich. Bettet sich in das selbst-tragende Studio-HTML ein.

Echte Renderings (Cinema 4D / axo_render.py aus dem Skill `volumenstudie`) haben
Vorrang: ist in einer Variante `render_img` gesetzt, nutzt build_studio.py jenes
Bild statt dieses Fallbacks.
"""
from __future__ import annotations
import math

COS30 = math.cos(math.radians(30))
SIN30 = 0.5


def _proj(x, y, z, k):
    return ((x - y) * COS30 * k, (x + y) * SIN30 * k - z * k)


def massing_svg(footprint_m2, geschosse, geschosshoehe_m,
                ref_side_m, ref_height_m, accent=False, w=240, h=220):
    """Ein Volumen als isometrisches SVG. ref_* = gemeinsamer Massstab (groesste Variante)."""
    geschosse = int(geschosse) if geschosse else max(1, round(
        (footprint_m2 ** 0 if footprint_m2 else 1)))
    if not geschosse or geschosse < 1:
        geschosse = 1
    a = math.sqrt(max(footprint_m2, 1.0))          # quadratischer Ersatz-Footprint (Seite m)
    bh = geschosse * (geschosshoehe_m or 3.0)       # Bauhoehe m

    # Massstab so, dass die groesste Variante in die Box passt
    ref_side = max(ref_side_m, 1.0)
    ref_h = max(ref_height_m, 1.0)
    # Ausdehnung der Referenz in Screen-Einheiten (vor k): Breite 2*ref_side*COS30,
    # Hoehe (2*ref_side*SIN30 + ref_h)
    span_w = 2 * ref_side * COS30
    span_h = 2 * ref_side * SIN30 + ref_h
    pad = 18
    k = min((w - 2 * pad) / span_w, (h - 2 * pad) / span_h)

    # Eckpunkte (Plan a×a, Hoehe bh)
    def P(x, y, z):
        return _proj(x, y, z, k)

    pts = {
        "t0": P(0, 0, bh), "t1": P(a, 0, bh), "t2": P(a, a, bh), "t3": P(0, a, bh),
        "b1": P(a, 0, 0), "b2": P(a, a, 0), "b3": P(0, a, 0),
    }
    # Bounding box -> zentrieren
    xs = [p[0] for p in pts.values()]
    ys = [p[1] for p in pts.values()]
    minx, maxx, miny, maxy = min(xs), max(xs), min(ys), max(ys)
    # in der Box unten ausrichten (Boden auf gemeinsamer Standlinie)
    base_y = h - pad - (maxy - miny) * 0 - (h - 2 * pad - span_h * k) * 0
    ox = (w - (maxx - minx)) / 2 - minx
    oy = (h - pad) - maxy

    def xy(p):
        return f"{p[0]+ox:.1f},{p[1]+oy:.1f}"

    ink = "var(--ink)"
    acc = "var(--accent)" if accent else None
    top = acc if accent else "#fff"
    right = "#E4E1DB" if not accent else "#C98E83"
    front = "#CFCBC4" if not accent else "#B5675A"
    stroke = ink

    top_poly = f'{xy(pts["t0"])} {xy(pts["t1"])} {xy(pts["t2"])} {xy(pts["t3"])}'
    right_poly = f'{xy(pts["t1"])} {xy(pts["b1"])} {xy(pts["b2"])} {xy(pts["t2"])}'
    front_poly = f'{xy(pts["t3"])} {xy(pts["t2"])} {xy(pts["b2"])} {xy(pts["b3"])}'

    # Geschossteilung auf den beiden Seitenflaechen
    storey_lines = []
    for i in range(1, geschosse):
        z = i * (geschosshoehe_m or 3.0)
        # rechte Flaeche (x=a): von (a,0,z) nach (a,a,z)
        r0 = P(a, 0, z); r1 = P(a, a, z)
        # vordere Flaeche (y=a): von (a,a,z) nach (0,a,z)
        f0 = P(a, a, z); f1 = P(0, a, z)
        storey_lines.append(
            f'<polyline points="{xy(r0)} {xy(r1)} {xy(f1)}" fill="none" '
            f'stroke="{stroke}" stroke-width="0.5" opacity="0.5"/>')

    return (
        f'<svg viewBox="0 0 {w} {h}" xmlns="http://www.w3.org/2000/svg" '
        f'style="width:100%;height:auto;display:block">'
        f'<polygon points="{front_poly}" fill="{front}" stroke="{stroke}" stroke-width="1"/>'
        f'<polygon points="{right_poly}" fill="{right}" stroke="{stroke}" stroke-width="1"/>'
        f'<polygon points="{top_poly}" fill="{top}" stroke="{stroke}" stroke-width="1"/>'
        + "".join(storey_lines) +
        '</svg>'
    )


if __name__ == "__main__":
    # Mini-Selbsttest
    s = massing_svg(350, 4, 3.0, ref_side_m=math.sqrt(420), ref_height_m=12, accent=True)
    print(s[:120], "...")
    print("len:", len(s))
