#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
dxf_austausch.py — DXF-Rueckkanal der Volumenstudie (Schichtenvertrag)

Setzt das Prinzip aus docs/konzepte/260611-CAD-Datenaustausch-Machbarkeit um:
EINE DXF-Datei in LV95 (EPSG:2056), feste Layer in drei Klassen:
  BASIS_* (Hub erzeugt, gesperrt)  ·  EIN_* (Raphael zeichnet)  ·  AUS_* (Hub schreibt zurueck)

Befehle:
  grundlage  — erzeugt die Grundlage-DXF aus dem amtlichen Parzellen-Polygon
  lesen      — liest eine bearbeitete DXF zurueck (EIN_-Layer), validiert,
               rechnet Kennzahlen und gibt JSON aus

Aufrufe (venv ~/.venvs/volumen3d, Paket ezdxf):
  python dxf_austausch.py grundlage --parzelle p.geojson --name 260611-2699Grub \
      --out DIR --egrid CH... --parzellennr 1234 [--zone W3] [--okt 445.3] \
      [--hoehenlinien contours.dxf] [--nachbar n1.geojson ...]
  python dxf_austausch.py lesen --datei DIR/...-vNN.dxf [--json]

Hoehen-Etikett auf EIN_HOEHEN (TEXT/MTEXT):  V-A | TH=12.50 | FH=16.20 | OKT=445.30
"""
import argparse, json, math, re, sys
from pathlib import Path

import ezdxf
from ezdxf import units
from shapely.geometry import Polygon, shape

BASIS = {
    "BASIS_PARZELLE":        {"color": 7, "lock": True},
    "BASIS_NACHBARN":        {"color": 8, "lock": True},
    "BASIS_GEBAEUDE_BESTAND": {"color": 8, "lock": True},
    "BASIS_BAULINIE":        {"color": 1, "lock": True},
    "BASIS_GRENZABSTAND":    {"color": 3, "lock": True},
    "BASIS_GEWAESSER_WALD":  {"color": 5, "lock": True},
    "BASIS_HOEHENLINIEN":    {"color": 8, "lock": True},
    "BASIS_NORDPFEIL":       {"color": 7, "lock": True},
    "BASIS_KOORD":           {"color": 7, "lock": True},
    "BASIS_META":            {"color": 7, "lock": True},
}
EIN = {
    "EIN_BAUFELD":      {"color": 4},
    "EIN_VOL_A":        {"color": 1},
    "EIN_VOL_B":        {"color": 2},
    "EIN_VOL_C":        {"color": 6},
    "EIN_FIRST":        {"color": 1},
    "EIN_HOEHEN":       {"color": 7},
    "EIN_HOEHENLINIEN": {"color": 8},
    "EIN_NOTIZ":        {"color": 7},
}
AUS = {
    "AUS_VOL_KONTUR":  {"color": 3},
    "AUS_KENNZAHLEN":  {"color": 3},
    "AUS_KONFLIKT":    {"color": 1},
}
ETIKETT_RE = re.compile(
    r"V-(?P<var>[A-C])\s*\|\s*TH\s*=\s*(?P<th>[\d.]+)"
    r"(?:\s*\|\s*FH\s*=\s*(?P<fh>[\d.]+))?"
    r"(?:\s*\|\s*OKT\s*=\s*(?P<okt>[\d.]+))?", re.I)


def _poly_coords(geojson_path):
    gj = json.loads(Path(geojson_path).read_text())
    geom = gj["features"][0]["geometry"] if gj.get("type") == "FeatureCollection" else \
           gj.get("geometry", gj)
    g = shape(geom)
    if g.geom_type == "MultiPolygon":
        g = max(g.geoms, key=lambda p: p.area)
    return list(g.exterior.coords), g


def cmd_grundlage(a):
    doc = ezdxf.new("R2018", setup=True)
    doc.units = units.M
    msp = doc.modelspace()
    for name, spec in {**BASIS, **EIN, **AUS}.items():
        ly = doc.layers.add(name, color=spec["color"])
        if spec.get("lock"):
            ly.lock()

    coords, poly = _poly_coords(a.parzelle)
    msp.add_lwpolyline(coords, close=True, dxfattribs={"layer": "BASIS_PARZELLE"})
    cx, cy = poly.centroid.x, poly.centroid.y
    minx, miny, maxx, maxy = poly.bounds
    span = max(maxx - minx, maxy - miny)

    for nb in a.nachbar or []:
        nc, _ = _poly_coords(nb)
        msp.add_lwpolyline(nc, close=True, dxfattribs={"layer": "BASIS_NACHBARN"})

    if a.hoehenlinien:
        src = ezdxf.readfile(a.hoehenlinien)
        n = 0
        attribs = {"layer": "BASIS_HOEHENLINIEN"}
        for e in src.modelspace():
            t = e.dxftype()
            if t == "POLYLINE":
                pts = [tuple(v.dxf.location) for v in e.vertices]
                if len(pts) > 1:
                    msp.add_polyline3d(pts, dxfattribs=attribs); n += 1
            elif t == "LWPOLYLINE":
                z = float(e.dxf.elevation or 0)
                pts = [(p[0], p[1], z) for p in e]
                if len(pts) > 1:
                    msp.add_polyline3d(pts, dxfattribs=attribs); n += 1
            elif t == "LINE":
                msp.add_line(tuple(e.dxf.start), tuple(e.dxf.end), dxfattribs=attribs); n += 1
        print(f"  Hoehenlinien uebernommen: {n} Polylinien (Hoehe als Z)")

    # Koordinatenkreuz (auf 100 m gerundet, beschriftet) + Nordpfeil
    ke, kn = round(cx, -2), round(cy, -2)
    arm = span * 0.15
    msp.add_line((ke - arm, kn), (ke + arm, kn), dxfattribs={"layer": "BASIS_KOORD"})
    msp.add_line((ke, kn - arm), (ke, kn + arm), dxfattribs={"layer": "BASIS_KOORD"})
    msp.add_text(f"E {ke:,.0f} / N {kn:,.0f} (LV95)".replace(",", "'"),
                 height=span * 0.025,
                 dxfattribs={"layer": "BASIS_KOORD"}).set_placement((ke + arm * 0.1, kn + arm * 0.1))
    nx, ny = maxx + span * 0.15, maxy
    msp.add_line((nx, ny), (nx, ny + span * 0.12), dxfattribs={"layer": "BASIS_NORDPFEIL"})
    msp.add_lwpolyline([(nx - span * 0.02, ny + span * 0.09), (nx, ny + span * 0.12),
                        (nx + span * 0.02, ny + span * 0.09)],
                       dxfattribs={"layer": "BASIS_NORDPFEIL"})
    msp.add_text("N", height=span * 0.04, dxfattribs={"layer": "BASIS_NORDPFEIL"}) \
       .set_placement((nx - span * 0.01, ny + span * 0.135))

    meta = [
        f"JANS CAD-Austausch  ·  {a.name}",
        f"EGRID: {a.egrid or '-'}   Parzelle: {a.parzellennr or '-'}   Zone: {a.zone or '-'}",
        f"Koordinaten: LV95 (EPSG:2056), Einheit Meter   ·   Parzelle: {poly.area:,.0f} m2".replace(",", "'"),
        f"OK Terrain (swissALTI3D): {a.okt + ' m ue.M.' if a.okt else 'siehe terrain.sh punkt'}",
        "",
        "DU ZEICHNEST NUR AUF EIN_-LAYERN:",
        "  EIN_BAUFELD            Baufeld (geschlossene Polylinie)",
        "  EIN_VOL_A/_B/_C        Volumen-Grundriss je Variante (geschlossen)",
        "  EIN_FIRST              Firstlinie je Volumen (Richtung zaehlt)",
        "  EIN_HOEHEN   Text je Volumen:  V-A | TH=12.50 | FH=16.20 | OKT=445.30",
        "  EIN_HOEHENLINIEN/NOTIZ eigene Koten / Anmerkungen",
        "BASIS_-Layer sind gesperrt (amtliche Grundlage). AUS_-Layer schreibt der Hub.",
    ]
    y = miny - span * 0.18
    for i, line in enumerate(meta):
        msp.add_text(line, height=span * 0.02, dxfattribs={"layer": "BASIS_META"}) \
           .set_placement((minx, y - i * span * 0.035))

    outdir = Path(a.out); outdir.mkdir(parents=True, exist_ok=True)
    out = outdir / f"{a.name}-Grundlage-v01.dxf"
    doc.saveas(out)
    print(f"Grundlage-DXF: {out}")
    print(f"  Parzelle {poly.area:.0f} m2 · Zentroid E {cx:.1f} / N {cy:.1f} · Layer: "
          f"{len(BASIS)} BASIS / {len(EIN)} EIN / {len(AUS)} AUS")
    return 0


def _closed_polys(msp, layer):
    out = []
    for e in msp.query(f'LWPOLYLINE[layer=="{layer}"]'):
        if e.closed or (len(e) > 2 and tuple(e[0][:2]) == tuple(e[-1][:2])):
            out.append(Polygon([(p[0], p[1]) for p in e]))
    return out


def cmd_lesen(a):
    doc = ezdxf.readfile(a.datei)
    msp = doc.modelspace()
    have = {l.dxf.name for l in doc.layers}
    issues, result = [], {"datei": a.datei, "varianten": {}, "baufeld_m2": None}

    for ly in list(BASIS) + list(EIN):
        if ly not in have:
            issues.append(f"Layer fehlt: {ly}")

    bf = _closed_polys(msp, "EIN_BAUFELD")
    if bf:
        result["baufeld_m2"] = round(sum(p.area for p in bf), 1)

    etiketten = {}
    for e in msp.query('TEXT MTEXT'):
        if e.dxf.layer != "EIN_HOEHEN":
            continue
        txt = e.text if e.dxftype() == "MTEXT" else e.dxf.text
        m = ETIKETT_RE.search(txt or "")
        if m:
            etiketten[m["var"].upper()] = {k: float(v) for k, v in
                                           dict(th=m["th"], fh=m["fh"], okt=m["okt"]).items() if v}
    firsts = {v: len(msp.query(f'LINE[layer=="EIN_FIRST"]')) for v in ("A",)}  # global count
    n_first = len(msp.query('LINE[layer=="EIN_FIRST"]')) + len(msp.query('LWPOLYLINE[layer=="EIN_FIRST"]'))

    for var in ("A", "B", "C"):
        polys = _closed_polys(msp, f"EIN_VOL_{var}")
        if not polys:
            continue
        fl = sum(p.area for p in polys)
        v = {"grundflaeche_m2": round(fl, 1), "etikett": etiketten.get(var)}
        et = etiketten.get(var)
        if et and "th" in et:
            vol = fl * et["th"]
            if "fh" in et and et["fh"] > et["th"]:
                if n_first == 0:
                    issues.append(f"V-{var}: FH>TH aber keine Firstlinie auf EIN_FIRST → Flachdach auf FH angenommen")
                    vol = fl * et["fh"]
                else:
                    vol += fl * (et["fh"] - et["th"]) / 2  # Satteldach-Naeherung
            v["volumen_m3"] = round(vol, 0)
            v["annahme"] = "Satteldach-Naeherung (Keil ueber Traufe)" if et.get("fh") else "Flachdach auf TH"
        else:
            issues.append(f"V-{var}: kein Hoehen-Etikett auf EIN_HOEHEN → keine Volumenberechnung")
        if result["baufeld_m2"]:
            inside = all(p.within(bf[0].buffer(0.01)) for p in polys)
            if not inside:
                issues.append(f"V-{var}: Volumen liegt nicht vollstaendig im Baufeld → AUS_KONFLIKT")
        result["varianten"][var] = v

    if not result["varianten"]:
        issues.append("Keine Volumen auf EIN_VOL_A/_B/_C gefunden")
    result["pruefung"] = issues if issues else ["OK — keine Befunde"]
    print(json.dumps(result, indent=2, ensure_ascii=False))
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    g = sub.add_parser("grundlage")
    g.add_argument("--parzelle", required=True); g.add_argument("--name", required=True)
    g.add_argument("--out", required=True); g.add_argument("--egrid"); g.add_argument("--parzellennr")
    g.add_argument("--zone"); g.add_argument("--okt"); g.add_argument("--hoehenlinien")
    g.add_argument("--nachbar", action="append")
    l = sub.add_parser("lesen")
    l.add_argument("--datei", required=True); l.add_argument("--json", action="store_true")
    a = ap.parse_args()
    sys.exit(cmd_grundlage(a) if a.cmd == "grundlage" else cmd_lesen(a))


if __name__ == "__main__":
    main()
