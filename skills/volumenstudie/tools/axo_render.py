#!/usr/bin/env python3
"""
JANS Axonometrie-Renderer — lizenzfreier Fallback (v2)
======================================================
Rendert die OBJ-Volumen des volumen_generator.py als schattierte Axonometrie
(weisses Volumenmodell) — ohne Cinema 4D, rein in Python (matplotlib).
Dient als Sofort-Visualisierung; die Praesentationsqualitaet liefert c4d_szene.py.

Nutzt die Prisma-Konvention des Generators (erste Haelfte der Vertices = Bodenring,
zweite = Deckelring) und zeichnet GANZE Flaechen (Wand-Quads + Dach-Polygon) statt
Dreiecke: saubere Konturen, korrekte Verdeckung via Painter (hinten -> vorne).

  axo_render.py --obj VOL.obj [--kontext KONTEXT.obj] --out BILD.png
                [--azimut 315] [--elevation 30] [--titel "V1 · 4 Geschosse"]
"""
import argparse
import math

import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon as MplPolygon

LICHT = np.array([0.5, -0.3, 0.8]) / np.linalg.norm([0.5, -0.3, 0.8])


def lade_ringe(pfad):
    """OBJ -> (Bodenring, Deckelring) gemaess Generator-Konvention."""
    verts = []
    for zeile in open(pfad):
        t = zeile.split()
        if t and t[0] == "v":
            verts.append([float(t[1]), float(t[2]), float(t[3])])
    v = np.array(verts)
    n = len(v) // 2
    return v[:n], v[n:]


def projektion(azimut_deg, elevation_deg):
    az, el = math.radians(azimut_deg), math.radians(elevation_deg)
    blick = np.array([math.cos(el) * math.cos(az), math.cos(el) * math.sin(az), math.sin(el)])
    rechts = np.cross([0, 0, 1], blick)
    rechts = rechts / np.linalg.norm(rechts)
    oben = np.cross(blick, rechts)
    return rechts, oben, blick


def prisma_flaechen(boden, deckel, basisfarbe, blick):
    """Sichtbare Flaechen (Wand-Quads + Dach) mit Lambert-Schattierung und Tiefe."""
    n = len(boden)
    flaechen = []
    for i in range(n):
        j = (i + 1) % n
        quad = np.array([boden[i], boden[j], deckel[j], deckel[i]])
        nor = np.cross(quad[1] - quad[0], quad[3] - quad[0])
        ln = np.linalg.norm(nor)
        if ln < 1e-9:
            continue
        nor = nor / ln
        if np.dot(nor, blick) <= 0:
            continue  # Rueckseite
        schatten = 0.55 + 0.45 * max(0.0, float(np.dot(nor, LICHT)))
        flaechen.append((float(np.mean(quad @ blick)), quad,
                         tuple(c * schatten for c in basisfarbe)))
    schatten = 0.55 + 0.45 * LICHT[2]
    dach = (float(np.mean(deckel @ blick)) + 1e6,  # Dach immer zuletzt
            deckel, tuple(c * schatten for c in basisfarbe))
    flaechen.append(dach)
    flaechen.sort(key=lambda e: e[0])  # hinten -> vorne
    return flaechen


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--obj", required=True)
    ap.add_argument("--kontext")
    ap.add_argument("--out", required=True)
    ap.add_argument("--azimut", type=float, default=315.0)
    ap.add_argument("--elevation", type=float, default=30.0)
    ap.add_argument("--titel", default="")
    args = ap.parse_args()

    rechts, oben, blick = projektion(args.azimut, args.elevation)
    proj2d = lambda pts: [(float(p @ rechts), float(p @ oben)) for p in pts]

    fig, ax = plt.subplots(figsize=(12, 9), dpi=150)

    if args.kontext:  # Parzelle als flache Platte zuunterst
        kb, kd = lade_ringe(args.kontext)
        ax.add_patch(MplPolygon(proj2d(kd), closed=True, facecolor=(0.82, 0.82, 0.80),
                                edgecolor="#6a6a6a", linewidth=1.0, zorder=1))

    boden, deckel = lade_ringe(args.obj)
    for z, (tiefe, pts, farbe) in enumerate(prisma_flaechen(boden, deckel, (0.97, 0.97, 0.95), blick)):
        ax.add_patch(MplPolygon(proj2d(pts), closed=True, facecolor=farbe,
                                edgecolor="#3a3a3a", linewidth=0.9,
                                joinstyle="round", zorder=2 + z))

    ax.relim(); ax.autoscale_view()
    ax.set_aspect("equal"); ax.axis("off")
    if args.titel:
        ax.set_title(args.titel, fontsize=14, loc="left", pad=16)
    fig.patch.set_facecolor("white")
    plt.tight_layout()
    plt.savefig(args.out, bbox_inches="tight", facecolor="white")
    print(f"Render OK: {args.out}")


if __name__ == "__main__":
    main()
