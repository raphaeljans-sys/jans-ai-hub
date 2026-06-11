#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
baeume_aus_punktwolke.py — Baum-Extraktion aus swissSURFACE3D (Volumenstudie)

Liest die klassifizierte Lidar-Punktwolke (COPC-LAZ via geo-zh.mjs --produkt punktwolke),
filtert die Vegetationsklassen (LAS 3/4/5) im Studienfenster und destilliert daraus
EINZELBAUM-Positionen fuer das Situationsmodell:

  Vegetationspunkte -> 1-m-Kronenhoehenraster (CHM) -> lokale Maxima (>= --min-hoehe)
  -> Baum {x, y, z_ok_terrain, hoehe, kronenradius}

Aufruf (venv ~/.venvs/volumen3d, Paket laspy[lazrs]):
  python baeume_aus_punktwolke.py --laz TILE.copc.laz --bbox minE minN maxE maxN \
      --dtm CLIP.tif --out baeume.json [--min-hoehe 3.0] [--min-abstand 4]
"""
import argparse, json, subprocess, tempfile
from pathlib import Path

import numpy as np
import laspy
import laspy.copc


def dtm_grid(dtm_tif, bbox, aufl=1.0):
    with tempfile.NamedTemporaryFile(suffix=".xyz", delete=False) as t:
        xyz = t.name
    subprocess.run(["gdal_translate", "-q", "-of", "XYZ", "-tr", str(aufl), str(aufl),
                    "-projwin", str(bbox[0]), str(bbox[3]), str(bbox[2]), str(bbox[1]),
                    dtm_tif, xyz], check=True)
    pts = np.loadtxt(xyz); Path(xyz).unlink()
    xs, ys = np.unique(pts[:, 0]), np.unique(pts[:, 1])[::-1]
    return xs, ys, pts[:, 2].reshape(len(ys), len(xs))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--laz", required=True)
    ap.add_argument("--bbox", nargs=4, type=float, required=True, metavar=("minE", "minN", "maxE", "maxN"))
    ap.add_argument("--dtm", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--min-hoehe", type=float, default=3.0)
    ap.add_argument("--min-abstand", type=int, default=4, help="Mindestabstand Baumspitzen (m)")
    a = ap.parse_args()
    minx, miny, maxx, maxy = a.bbox

    rd = laspy.copc.CopcReader.open(a.laz)
    q = laspy.copc.Bounds(mins=np.array([minx, miny]), maxs=np.array([maxx, maxy]))
    pts = rd.query(q)
    cls = np.asarray(pts.classification)
    veg = np.isin(cls, (3, 4, 5))
    X = np.asarray(pts.x)[veg]; Y = np.asarray(pts.y)[veg]; Z = np.asarray(pts.z)[veg]
    print(f"Punkte im Fenster: {len(cls):,} · Vegetation (Kl. 3/4/5): {veg.sum():,}")

    xs, ys, T = dtm_grid(a.dtm, a.bbox)
    nx, ny = len(xs), len(ys)
    ix = np.clip(((X - xs[0]) ).astype(int), 0, nx - 1)
    iy = np.clip(((ys[0] - Y) ).astype(int), 0, ny - 1)
    hoehe_ueber_grund = Z - T[iy, ix]

    # Kronenhoehenraster (CHM): max Hoehe ueber Grund je 1-m-Zelle
    chm = np.zeros((ny, nx))
    np.maximum.at(chm, (iy, ix), hoehe_ueber_grund)

    # lokale Maxima im min-abstand-Fenster, ueber Mindesthoehe
    d = a.min_abstand
    baeume = []
    cand = np.argwhere(chm >= a.min_hoehe)
    # nach Hoehe absteigend, greedy Non-Max-Suppression
    cand = cand[np.argsort(-chm[cand[:, 0], cand[:, 1]])]
    belegt = np.zeros_like(chm, dtype=bool)
    for j, i in cand:
        if belegt[j, i]:
            continue
        h = float(chm[j, i])
        baeume.append({
            "x": round(float(xs[i]), 1), "y": round(float(ys[j]), 1),
            "z_ok_terrain": round(float(T[j, i]), 1),
            "hoehe": round(h, 1),
            "kronenradius": round(min(max(h * 0.28, 1.2), 6.0), 1),
        })
        belegt[max(0, j - d):j + d + 1, max(0, i - d):i + d + 1] = True

    Path(a.out).write_text(json.dumps({
        "quelle": Path(a.laz).name, "bbox_lv95": a.bbox,
        "min_hoehe_m": a.min_hoehe, "anzahl": len(baeume), "baeume": baeume,
    }, indent=1, ensure_ascii=False))
    print(f"Baeume erkannt: {len(baeume)} (>= {a.min_hoehe} m) -> {a.out}")


if __name__ == "__main__":
    main()
