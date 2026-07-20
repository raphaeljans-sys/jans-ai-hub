#!/usr/bin/env python3
"""
pdf2dwg.py — Vektor-PDF (CAD-Plot) zu leichtem, sauberem DWG/DXF fuer ArchiCAD.

Prinzip:
  1. Vektorpfade mit PyMuPDF extrahieren (Strokes, Fills, Kurven, Text).
  2. Bereinigen: unsichtbare weisse Striche weg, Mikro-Striche (Schraffur-/
     Textur-Zerlegung) weg bzw. auf Layer SCHRAFFUR, Duplikate weg.
  3. Zusammenhaengende Segmente zu LWPOLYLINEs verketten, kollineare Punkte
     mergen -> massiv weniger Entities.
  4. Layer nach Linienfarbe (ACI-Naechstfarbe), Text als TEXT-Entities.
  5. DXF R2010 schreiben, danach via LibreDWG (dxf2dwg) das DWG erzeugen.

Einheiten: 1 Zeichnungseinheit = 1 mm PAPIER (Plot-Massstab). Mit --scale N
werden Koordinaten mit N multipliziert (z.B. --scale 10 bei Plan 1:10 ->
reale mm).

Aufruf:
  ~/.venvs/pdf2dwg/bin/python3 pdf2dwg.py "<input.pdf>" [Optionen]

Optionen:
  -o DIR             Zielordner (Default: Ordner des PDFs)
  --scale N          Koordinaten-Faktor (Default 1.0 = Papier-mm)
  --min-len MM       Striche kuerzer als MM (Papier) gelten als Textur/
                     Schraffur-Fragment (Default 0.45)
  --schraffur MODE   weg | layer  (Default weg): Mikro-Striche verwerfen
                     oder auf Layer SCHRAFFUR ablegen
  --keep-dxf         (veraltet, jetzt Standard) DXF bleibt immer als
                     Import-Fallback neben dem DWG liegen
  --page N           nur Seite N (1-basiert); Default: alle Seiten,
                     bei Mehrseitern Suffix _pN
"""

import argparse
import math
import os
import shutil
import subprocess
import sys
from collections import defaultdict

import fitz  # PyMuPDF
import ezdxf
from ezdxf import colors as ezcolors

MM = 25.4 / 72.0          # pt -> mm
SNAP = 0.02               # mm: Endpunkt-Fangtoleranz fuers Verketten
COLLIN_TOL = 0.015        # mm: Abstandstoleranz fuer kollineare Punktreduktion
WHITE_LIMIT = 0.97        # Farben heller als das gelten als unsichtbar (weiss)

ACI_CACHE = {}


def rgb_to_aci(rgb):
    """Naechste ACI-Farbe (1..255) zu einem RGB-Tripel 0..1."""
    if rgb is None:
        return 7
    key = tuple(round(c, 3) for c in rgb)
    if key in ACI_CACHE:
        return ACI_CACHE[key]
    r, g, b = (int(c * 255) for c in rgb)
    best, bestd = 7, 1e9
    for aci in range(1, 256):
        ar, ag, ab = ezcolors.aci2rgb(aci)
        d = (ar - r) ** 2 + (ag - g) ** 2 + (ab - b) ** 2
        if d < bestd:
            best, bestd = aci, d
    ACI_CACHE[key] = best
    return best


def layer_name(aci):
    NAMES = {1: "ROT", 2: "GELB", 3: "GRUEN", 4: "CYAN", 5: "BLAU",
             6: "MAGENTA", 7: "SCHWARZ", 8: "GRAU", 9: "HELLGRAU"}
    return NAMES.get(aci, f"FARBE_{aci}")


def is_white(rgb):
    return rgb is not None and min(rgb) >= WHITE_LIMIT


def flatten_bezier(p0, p1, p2, p3, tol=0.05):
    """Bezier adaptiv zu Punktliste (mm-Koordinaten)."""
    pts = []
    n = 8
    # Grobe Bogenlaenge -> Punktzahl
    chord = math.dist(p0, p3)
    n = max(4, min(24, int(chord / max(tol * 20, 0.5)) + 4))
    for i in range(1, n + 1):
        t = i / n
        mt = 1 - t
        x = mt**3 * p0[0] + 3 * mt**2 * t * p1[0] + 3 * mt * t**2 * p2[0] + t**3 * p3[0]
        y = mt**3 * p0[1] + 3 * mt**2 * t * p1[1] + 3 * mt * t**2 * p2[1] + t**3 * p3[1]
        pts.append((x, y))
    return pts


def collinear_reduce(pts):
    """Entfernt Zwischenpunkte, die (fast) auf der Geraden liegen."""
    if len(pts) < 3:
        return pts
    out = [pts[0]]
    for i in range(1, len(pts) - 1):
        a, b, c = out[-1], pts[i], pts[i + 1]
        # Abstand b von Gerade a-c
        acx, acy = c[0] - a[0], c[1] - a[1]
        L = math.hypot(acx, acy)
        if L < 1e-9:
            continue
        d = abs((b[0] - a[0]) * acy - (b[1] - a[1]) * acx) / L
        # nur reduzieren, wenn b zwischen a und c liegt (Projektion)
        t = ((b[0] - a[0]) * acx + (b[1] - a[1]) * acy) / (L * L)
        if d <= COLLIN_TOL and -0.001 <= t <= 1.001:
            continue
        out.append(b)
    out.append(pts[-1])
    return out


def chain_segments(segs):
    """Verkettet Segmente mit gemeinsamen Endpunkten zu Polylinien-Punktlisten."""
    def snap(p):
        return (round(p[0] / SNAP), round(p[1] / SNAP))

    adj = defaultdict(list)   # snap-Punkt -> Liste (seg_index, end_index)
    for i, (a, b) in enumerate(segs):
        adj[snap(a)].append((i, 0))
        adj[snap(b)].append((i, 1))

    used = [False] * len(segs)
    chains = []
    for start in range(len(segs)):
        if used[start]:
            continue
        used[start] = True
        a, b = segs[start]
        chain = [a, b]
        # vorwaerts und rueckwaerts verlaengern
        for direction in (1, 0):
            while True:
                tip = chain[-1] if direction else chain[0]
                cands = [(j, e) for (j, e) in adj[snap(tip)] if not used[j]]
                if len(cands) != 1:
                    break  # Verzweigung oder Ende -> nicht raten
                j, e = cands[0]
                used[j] = True
                nxt = segs[j][1 - e]
                if direction:
                    chain.append(nxt)
                else:
                    chain.insert(0, nxt)
        chains.append(collinear_reduce(chain))
    return chains


def convert_page(page, msp, doc_dxf, scale, min_len, schraffur_mode, stats):
    H = page.rect.height

    def tx(p):
        return (p[0] * MM * scale, (H - p[1]) * MM * scale)

    # ---- Vektorpfade ----
    by_layer = defaultdict(list)      # layer -> [(a_mm, b_mm)]
    for path in page.get_drawings():
        stroke = path.get("color")
        fill = path.get("fill")
        ptype = path.get("type", "s")

        if ptype == "f" and (fill is None or is_white(fill)):
            stats["weiss"] += len(path["items"])
            continue
        if ptype == "s" and is_white(stroke):
            stats["weiss"] += len(path["items"])
            continue

        rgb = stroke if stroke is not None else fill
        aci = rgb_to_aci(rgb)
        lname = layer_name(aci)
        if ptype == "f":
            lname = "FUELLUNG"

        pts_items = []
        for it in path["items"]:
            kind = it[0]
            if kind == "l":
                pts_items.append((it[1], it[2]))
            elif kind == "c":
                p0, p1, p2, p3 = it[1], it[2], it[3], it[4]
                prev = (p0.x, p0.y)
                for q in flatten_bezier((p0.x, p0.y), (p1.x, p1.y),
                                        (p2.x, p2.y), (p3.x, p3.y)):
                    pts_items.append((fitz.Point(prev), fitz.Point(q)))
                    prev = q
            elif kind in ("re", "qu"):
                r = it[1]
                if kind == "re":
                    corners = [r.tl, r.tr, r.br, r.bl, r.tl]
                else:
                    corners = [r.ul, r.ur, r.lr, r.ll, r.ul]
                for i in range(4):
                    pts_items.append((corners[i], corners[i + 1]))

        for a, b in pts_items:
            am, bm = tx((a.x, a.y)), tx((b.x, b.y))
            L = math.dist(am, bm) / scale  # Papier-mm
            if L < min_len:
                if schraffur_mode == "layer":
                    by_layer["SCHRAFFUR"].append((am, bm))
                else:
                    stats["mikro"] += 1
                continue
            by_layer[lname].append((am, bm))

    # ---- Duplikate raus, verketten, schreiben ----
    for lname, segs in by_layer.items():
        seen = set()
        uniq = []
        for a, b in segs:
            k = (round(a[0], 2), round(a[1], 2), round(b[0], 2), round(b[1], 2))
            k2 = (k[2], k[3], k[0], k[1])
            if k in seen or k2 in seen:
                stats["duplikate"] += 1
                continue
            seen.add(k)
            uniq.append((a, b))

        if lname not in doc_dxf.layers:
            aci = {"SCHRAFFUR": 8, "FUELLUNG": 9}.get(lname)
            if aci is None:
                inv = {layer_name(i): i for i in range(1, 256)}
                aci = inv.get(lname, 7)
            doc_dxf.layers.add(lname, color=aci)

        for chain in chain_segments(uniq):
            if len(chain) == 2:
                msp.add_line(chain[0], chain[1], dxfattribs={"layer": lname})
                stats["linien"] += 1
            else:
                closed = math.dist(chain[0], chain[-1]) < SNAP
                msp.add_lwpolyline(chain[:-1] if closed else chain,
                                   close=closed, dxfattribs={"layer": lname})
                stats["polylinien"] += 1

    # ---- Text ----
    if "TEXT" not in doc_dxf.layers:
        doc_dxf.layers.add("TEXT", color=7)
    td = page.get_text("dict")
    for block in td.get("blocks", []):
        if block.get("type") != 0:
            continue
        for line in block.get("lines", []):
            dx, dy = line.get("dir", (1, 0))
            rot = math.degrees(math.atan2(-dy, dx))  # PDF y-down -> DXF y-up
            for span in line.get("spans", []):
                text = span.get("text", "").strip()
                if not text:
                    continue
                ox, oy = span["origin"]
                h = span["size"] * MM * scale * 0.72  # Cap-Hoehe approx.
                msp.add_text(text, dxfattribs={
                    "layer": "TEXT",
                    "height": max(h, 0.1),
                    "rotation": rot,
                    "insert": tx((ox, oy)),
                })
                stats["texte"] += 1


def strip_objects_section(dxf_path, out_path):
    """Entfernt die OBJECTS-Sektion aus einem DXF.

    LibreDWGs dxf2dwg schreibt aus den ezdxf-Standardobjekten (MATERIAL,
    MLEADERSTYLE, Dictionaries) korrupte DWG-Objekte, an denen strikte
    Importer (ArchiCAD) scheitern. Ohne OBJECTS-Sektion legt dxf2dwg saubere
    Minimal-Defaults an. Geometrie/Layer/Text sind nicht betroffen.
    """
    lines = open(dxf_path, encoding="utf-8", errors="replace").read().splitlines()
    out, skip, i = [], False, 0
    while i < len(lines):
        if (not skip and lines[i].strip() == "0" and i + 3 < len(lines)
                and lines[i + 1].strip() == "SECTION"
                and lines[i + 3].strip() == "OBJECTS"):
            skip = True
        if not skip:
            out.append(lines[i])
        if skip and lines[i].strip() == "ENDSEC":
            skip = False
        i += 1
    open(out_path, "w", encoding="utf-8").write("\n".join(out) + "\n")


def main():
    ap = argparse.ArgumentParser(description="Vektor-PDF -> leichtes DWG/DXF")
    ap.add_argument("pdf")
    ap.add_argument("-o", "--outdir")
    ap.add_argument("--scale", type=float, default=1.0)
    ap.add_argument("--min-len", type=float, default=0.45)
    ap.add_argument("--schraffur", choices=["weg", "layer"], default="weg")
    ap.add_argument("--keep-dxf", action="store_true")
    ap.add_argument("--page", type=int)
    args = ap.parse_args()

    pdf_path = os.path.abspath(args.pdf)
    outdir = args.outdir or os.path.dirname(pdf_path)
    base = os.path.splitext(os.path.basename(pdf_path))[0]

    doc = fitz.open(pdf_path)
    pages = [doc[args.page - 1]] if args.page else list(doc)
    multi = len(pages) > 1

    dxf2dwg = shutil.which("dxf2dwg")
    results = []
    for page in pages:
        suffix = f"_p{page.number + 1}" if multi else ""
        stats = defaultdict(int)
        # R2000 ohne setup: minimale Header/Styles -> stabilste dxf2dwg-Ausgabe
        dxf_doc = ezdxf.new("R2000")
        dxf_doc.header["$INSUNITS"] = 4  # mm
        msp = dxf_doc.modelspace()
        convert_page(page, msp, dxf_doc, args.scale, args.min_len,
                     args.schraffur, stats)

        dxf_path = os.path.join(outdir, f"{base}{suffix}.dxf")
        dwg_path = os.path.join(outdir, f"{base}{suffix}.dwg")
        dxf_doc.saveas(dxf_path)

        dwg_ok = False
        if dxf2dwg:
            try:
                if os.path.exists(dwg_path):
                    os.remove(dwg_path)
                # dxf2dwg bekommt ein DXF OHNE OBJECTS-Sektion (ArchiCAD-Fix)
                tmp_dxf = dxf_path + ".noobj.tmp.dxf"
                strip_objects_section(dxf_path, tmp_dxf)
                subprocess.run([dxf2dwg, tmp_dxf, "--as", "r2000", "-y",
                                "-o", dwg_path],
                               capture_output=True, text=True, timeout=600)
                os.remove(tmp_dxf)
                dwg_ok = os.path.exists(dwg_path) and os.path.getsize(dwg_path) > 500
            except Exception:
                dwg_ok = False

        # DXF bleibt immer liegen: ArchiCAD importiert DXF ueber denselben
        # Dialog — der sichere Fallback, falls das LibreDWG-DWG abgelehnt wird.
        results.append((dwg_path if dwg_ok else dxf_path, dict(stats)))

    for path, stats in results:
        print(f"OUT: {path}")
        print(f"  Linien: {stats.get('linien',0)}  Polylinien: {stats.get('polylinien',0)}"
              f"  Texte: {stats.get('texte',0)}")
        print(f"  entfernt -> weiss/unsichtbar: {stats.get('weiss',0)}"
              f"  Mikro-Striche: {stats.get('mikro',0)}"
              f"  Duplikate: {stats.get('duplikate',0)}")
    if not dxf2dwg:
        print("HINWEIS: dxf2dwg (LibreDWG) nicht gefunden -> nur DXF erzeugt "
              "(brew install libredwg)")


if __name__ == "__main__":
    main()
