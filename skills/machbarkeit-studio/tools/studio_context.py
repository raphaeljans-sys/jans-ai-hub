#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
studio_context.py — echtes 3D-Situationsmodell fuers Machbarkeits-Studio (gdal-frei).

Beschafft die ECHTEN amtlichen Grundlagen (Rule 260627: nie Platzhaltergeometrie)
und rendert je Variante den projektierten Baukoerper auf dem realen Terrain im
realen Nachbarschaftskontext:

  Parzelle   EGRID -> geo.admin find (cadastralwebmap)            -> parzelle.geojson
  Terrain    swissALTI3D via swisstopo Profil-API (zeilenweise)   -> <name>_dtm.xyz   (GDAL-FREI)
  Gebaeude   swissBUILDINGS3D_2 via STAC (DXF-Kachel)             -> <name>_geb.dxf
  Volumen    volumen_generator.py (Baufeld = Parzelle - Grenzabstand, Extrusion)
  Render     situationsmodell.py --render (matplotlib-Axo, weiss; Varianten beige)

Ergebnis: <name>_statusquo_axo.png + <name>_variante_<X>_axo.png — diese werden als
render_img (Pfad oder data-URI) ins Studio-Modell gehaengt (Vorrang vor SVG-Massenmodell).

MUSS unter dem venv laufen:  ~/.venvs/volumen3d/bin/python studio_context.py ...

Aufruf:
  python studio_context.py --egrid CH987609527775 --out DIR --name 2700_OBER \
     --variante "A:grenzabstand=4,geschosse=2,geschosshoehe=3.0" \
     --variante "B:grenzabstand=4,geschosse=3,geschosshoehe=3.0" [--radius 35] [--dtm-res 2.0]
"""
import argparse
import json
import math
import os
import subprocess
import sys
import urllib.parse
import urllib.request
import zipfile
from pathlib import Path

from shapely.geometry import Polygon

_HERE = Path(__file__).resolve().parent
_VS_TOOLS = _HERE.parent.parent / "volumenstudie" / "tools"
_VOLGEN = _VS_TOOLS / "volumen_generator.py"
_SITU = _VS_TOOLS / "situationsmodell.py"


def _get(url, timeout=60):
    req = urllib.request.Request(url, headers={"User-Agent": "JANS-machbarkeit-studio"})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.read()


def _get_json(url, timeout=60):
    return json.loads(_get(url, timeout))


# ---------- 1) EGRID -> Parzellen-Polygon (LV95) ----------
def resolve_parcel(egrid):
    url = ("https://api3.geo.admin.ch/rest/services/api/MapServer/find"
           "?layer=ch.kantone.cadastralwebmap-farbe&searchField=egris_egrid"
           f"&searchText={egrid}&returnGeometry=true&sr=2056&geometryFormat=geojson")
    d = _get_json(url)
    res = d.get("results") or []
    if not res:
        sys.exit(f"Parzelle zu EGRID {egrid} nicht gefunden (identifikatoren-verifizieren).")
    f = res[0]
    geom = f["geometry"]
    props = f.get("properties", {})
    coords = geom["coordinates"][0] if geom["type"] == "Polygon" else geom["coordinates"][0][0]
    poly = Polygon(coords)
    return poly, props.get("number"), geom


# ---------- 2) Terrain (swissALTI3D) via Profil-API -> XYZ (gdal-frei) ----------
def fetch_terrain_xyz(bbox, res, out_xyz, max_n=85):
    minx, miny, maxx, maxy = bbox
    nx = min(max_n, max(8, int((maxx - minx) / res) + 1))
    ny = min(max_n, max(8, int((maxy - miny) / res) + 1))
    xs = [minx + (maxx - minx) * i / (nx - 1) for i in range(nx)]
    ys = [maxy - (maxy - miny) * j / (ny - 1) for j in range(ny)]   # absteigend
    lines = []
    for y in ys:
        geom = json.dumps({"type": "LineString", "coordinates": [[xs[0], y], [xs[-1], y]]})
        url = ("https://api3.geo.admin.ch/rest/services/profile.json?geom="
               + urllib.parse.quote(geom) + f"&sr=2056&nb_points={nx}&distinct_points=true")
        pts = _get_json(url)
        # pts kommt entlang der Linie (x aufsteigend); auf unser xs-Gitter mappen
        for i, p in enumerate(pts[:nx]):
            x = p.get("easting", xs[i]); z = p["alts"].get("DTM2") or p["alts"].get("COMB")
            lines.append(f"{x:.2f} {y:.2f} {z:.2f}")
        # Auffuellen, falls API weniger Punkte lieferte
        for i in range(len(pts), nx):
            lines.append(f"{xs[i]:.2f} {y:.2f} {pts[-1]['alts'].get('DTM2', 0):.2f}")
    Path(out_xyz).write_text("\n".join(lines))
    return out_xyz, nx, ny


# ---------- 3) Gebaeude (swissBUILDINGS3D_2) via STAC -> DXF ----------
def reframe_wgs84(east, north):
    url = (f"https://geodesy.geo.admin.ch/reframe/lv95towgs84?easting={east}&northing={north}&format=json")
    d = _get_json(url)
    return float(d["easting"]), float(d["northing"])   # lon, lat


def fetch_buildings_dxf(centroid_lv95, out_dxf):
    lon, lat = reframe_wgs84(centroid_lv95[0], centroid_lv95[1])
    d = 0.004
    bbox = f"{lon-d},{lat-d},{lon+d},{lat+d}"
    url = ("https://data.geo.admin.ch/api/stac/v0.9/collections/"
           f"ch.swisstopo.swissbuildings3d_2/items?bbox={bbox}&limit=20")
    fc = _get_json(url)
    feats = fc.get("features", [])
    if not feats:
        return None
    # Asset .dxf.zip waehlen: Feature, dessen bbox den Punkt enthaelt, sonst erstes
    def contains(f):
        b = f.get("bbox")
        return b and b[0] <= lon <= b[2] and b[1] <= lat <= b[3]
    feats.sort(key=lambda f: (not contains(f)))
    href = None
    for f in feats:
        for a in f.get("assets", {}).values():
            h = a.get("href", "")
            if h.endswith(".dxf.zip"):
                href = h; break
        if href:
            break
    if not href:
        return None
    zpath = Path(out_dxf).with_suffix(".dxf.zip")
    zpath.write_bytes(_get(href, timeout=300))
    with zipfile.ZipFile(zpath) as z:
        name = next((n for n in z.namelist() if n.lower().endswith(".dxf")), None)
        if not name:
            return None
        with z.open(name) as src, open(out_dxf, "wb") as dst:
            dst.write(src.read())
    zpath.unlink(missing_ok=True)
    return out_dxf


def compact_box_obj(poly, footprint_m2, hoehe, out_obj, z_unten=0.0):
    """Kompakter, zentrierter Baukoerper (Rechteck footprint_m2, Seitenverhaeltnis aus Parzelle)
    als OBJ in LOKALEN Koordinaten (Origin = Parzellen-Zentroid) — sauberes Massenmodell statt
    duennem Offset-Riegel. z relativ (situationsmodell setzt es auf das Terrain)."""
    minx, miny, maxx, maxy = poly.bounds
    bw, bh = max(maxx - minx, 1.0), max(maxy - miny, 1.0)
    ar = bw / bh
    b = (footprint_m2 / ar) ** 0.5           # Tiefe (y)
    a = footprint_m2 / b                      # Breite (x)
    a, b = a * 0.92, b * 0.92                 # leicht eingerueckt
    hx, hy = a / 2, b / 2
    z0, z1 = z_unten, z_unten + hoehe
    V = [(-hx, -hy, z0), (hx, -hy, z0), (hx, hy, z0), (-hx, hy, z0),
         (-hx, -hy, z1), (hx, -hy, z1), (hx, hy, z1), (-hx, hy, z1)]
    F = [[1, 2, 6, 5], [2, 3, 7, 6], [3, 4, 8, 7], [4, 1, 5, 8], [5, 6, 7, 8], [1, 4, 3, 2]]
    with open(out_obj, "w") as f:
        f.write("# JANS kompakter Baukoerper (lokal, Origin=Zentroid)\n")
        for x, y, z in V:
            f.write(f"v {x:.3f} {y:.3f} {z:.3f}\n")
        for fc in F:
            f.write("f " + " ".join(str(i) for i in fc) + "\n")
    return out_obj


def grenzabstand_fuer_flaeche(poly, ziel_m2):
    """Grenzabstand (m) finden, sodass Baufeld = poly.buffer(-d) ~ ziel_m2 (Bisektion).

    Macht das Massenmodell AZ-konform: Footprint = AZ*Parzelle/Geschosse (Rule 260627/260624,
    die bindende Ausnuetzung statt der vollen Huelle). Ist die Zielflaeche groesser als die
    Parzelle, d=1.0 (kleiner Pflicht-Abstand)."""
    if ziel_m2 >= poly.area:
        return 1.0
    lo, hi = 0.0, max(poly.bounds[2] - poly.bounds[0], poly.bounds[3] - poly.bounds[1]) / 2
    for _ in range(40):
        mid = (lo + hi) / 2
        bf = poly.buffer(-mid, join_style=2)
        a = bf.area if not bf.is_empty else 0.0
        if a > ziel_m2:
            lo = mid
        else:
            hi = mid
    return round((lo + hi) / 2, 2)


def parse_spec(spec):
    name, _, rest = spec.partition(":")
    kv = {}
    for part in rest.split(","):
        if "=" in part:
            k, v = part.split("=", 1)
            kv[k.strip()] = v.strip()
    return name, kv


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--egrid", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--name", required=True)
    ap.add_argument("--variante", action="append", default=[], help="X:grenzabstand=4,geschosse=2,...")
    ap.add_argument("--radius", type=float, default=35.0)
    ap.add_argument("--dtm-res", type=float, default=2.0)
    ap.add_argument("--no-render", action="store_true")
    ap.add_argument("--c4d", action="store_true",
                    help="zusaetzlich Cinema-4D-Goldstandard via Mac Mini (render-remote.sh)")
    ap.add_argument("--kompakt", action="store_true",
                    help="Baukoerper als kompakter zentrierter Block statt Offset-Polygon (sauberes Massenmodell)")
    a = ap.parse_args()

    out = Path(a.out); out.mkdir(parents=True, exist_ok=True)

    print(f"1) Parzelle aus EGRID {a.egrid}")
    poly, nummer, geom = resolve_parcel(a.egrid)
    gj = {"type": "Feature", "properties": {"egrid": a.egrid, "parzelle": nummer}, "geometry": geom}
    pgj = out / "parzelle.geojson"; pgj.write_text(json.dumps(gj, indent=1))
    cx, cy = poly.centroid.x, poly.centroid.y
    print(f"   Parz. {nummer} · Flaeche {poly.area:.0f} m² · Zentroid {cx:.1f}/{cy:.1f}")

    grenze = poly.buffer(a.radius)
    bbox = grenze.buffer(10).bounds
    print(f"2) Terrain swissALTI3D via Profil-API (gdal-frei), bbox "
          f"{bbox[2]-bbox[0]:.0f}x{bbox[3]-bbox[1]:.0f} m @ {a.dtm_res} m")
    dtm_xyz = out / f"{a.name}_dtm.xyz"
    _, nx, ny = fetch_terrain_xyz(bbox, a.dtm_res, str(dtm_xyz))
    print(f"   Terrain-Gitter {nx}x{ny} -> {dtm_xyz.name}")

    print("3) Gebaeudekuben swissBUILDINGS3D_2 via STAC")
    geb = out / f"{a.name}_geb.dxf"
    if geb.exists() and geb.stat().st_size > 10000:
        print(f"   {geb.name} bereits vorhanden ({geb.stat().st_size//1024} KB) — wiederverwendet")
        got = str(geb)
    else:
        got = fetch_buildings_dxf((cx, cy), str(geb))
    if got:
        print(f"   {geb.name} ({geb.stat().st_size//1024} KB)")
    else:
        print("   WARN: keine Gebaeude-Kachel gefunden — Render ohne Nachbarbauten")
        geb = None

    print("4) Volumen generieren")
    vargs = []
    self_specs = []   # (name, geschosse, gh, az) fuer Render-/Kompakt-Schritt
    for v in a.variante:
        vn, kv = parse_spec(v)
        gesch = int(float(kv.get("geschosse", 2)))
        gh = float(kv.get("geschosshoehe", 3.0))
        az = float(kv["az"]) if "az" in kv else None
        if az is not None:   # AZ-konformer Footprint statt voller Huelle
            ziel_fp = az * poly.area / max(gesch, 1)
            ga = grenzabstand_fuer_flaeche(poly, ziel_fp)
            spec = f"{vn}:grenzabstand={ga},geschosse={gesch},geschosshoehe={gh}"
            print(f"   {vn}: AZ {az} -> Footprint-Ziel {ziel_fp:.0f} m² -> Grenzabstand {ga} m")
        else:
            spec = v
        vargs += ["--variante", spec]
        self_specs.append((vn, gesch, gh, az))
    subprocess.run([sys.executable, str(_VOLGEN), "--parzelle", str(pgj),
                    "--out", str(out), "--name", a.name] + vargs, check=True)

    if a.kompakt:
        for vn, gesch, gh, az in self_specs:
            if az is None:
                continue
            fp = az * poly.area / max(gesch, 1)
            compact_box_obj(poly, fp, gesch * gh, str(out / f"{a.name}_{vn}.obj"))
            print(f"   {vn}: kompakter Baukoerper {fp:.0f} m² × {gesch*gh:.1f} m")

    if a.no_render or not geb:
        print("FERTIG (ohne Render)" if a.no_render else "FERTIG (ohne Gebaeude/Render)")
        return

    print("5) Situationsmodell + Render je Variante (auf echtem Terrain)")
    vspecs = []
    for v in a.variante:
        vn = v.split(":")[0]
        vobj = out / f"{a.name}_{vn}.obj"
        if vobj.exists():
            vspecs += ["--variante", f"{vn}:{vobj}"]
    cmd = [sys.executable, str(_SITU), "--parzelle", str(pgj), "--gebaeude", str(geb),
           "--dtm", str(dtm_xyz), "--name", a.name, "--out", str(out),
           "--radius", str(a.radius), "--render"] + vspecs
    subprocess.run(cmd, check=True)
    print("FERTIG (lizenzfreier Render). Renderings:")
    for p in sorted(out.glob(f"{a.name}*_axo.png")):
        print("  ", p)

    if a.c4d:
        print("6) Cinema-4D-Goldstandard via Mac Mini (render-remote.sh)")
        hub = Path("/Volumes/daten/jans-ai-hub")
        rr = hub / "skills" / "volumenstudie" / "tools" / "render-remote.sh"
        c4dtool = hub / "skills" / "volumenstudie" / "tools" / "c4d_situation.py"
        nasdir = Path("/Volumes/daten/render-scratch") / a.name
        if not rr.exists() or not Path("/Volumes/daten").exists():
            print("   WARN: render-remote.sh / NAS nicht verfuegbar — bleibe beim lizenzfreien Render")
        else:
            nasdir.mkdir(parents=True, exist_ok=True)
            for obj in out.glob(f"{a.name}_*.obj"):
                (nasdir / obj.name).write_bytes(obj.read_bytes())
            vflags = []
            for v in a.variante:
                vflags += ["--variante", v.split(":")[0]]
            rcmd = ["bash", str(rr), "script", str(c4dtool), "--",
                    "--dir", str(nasdir), "--name", a.name, "--out", str(nasdir),
                    "--statusquo", "--breite", "2000"] + vflags
            subprocess.run(rcmd, check=False)   # Exitcode unzuverlaessig -> ueber Datei-Existenz pruefen
            got_any = False
            for v in a.variante:
                vn = v.split(":")[0]
                src = nasdir / f"{a.name}_variante_{vn}_axo.png"
                if src.exists():
                    dst = out / f"{a.name}_c4d_{vn}.png"
                    dst.write_bytes(src.read_bytes()); got_any = True
                    print(f"   C4D Variante {vn} -> {dst}  (als render_img setzen)")
            sq = nasdir / f"{a.name}_statusquo_axo.png"
            if sq.exists():
                (out / f"{a.name}_c4d_statusquo.png").write_bytes(sq.read_bytes())
            if not got_any:
                print("   WARN: kein C4D-Render erhalten (Mini/Lizenz?) — lizenzfreier Render bleibt gueltig")


if __name__ == "__main__":
    main()
