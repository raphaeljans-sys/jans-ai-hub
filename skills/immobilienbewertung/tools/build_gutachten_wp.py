#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_gutachten_wp.py — JANS Bewertungsgutachten, Variante im «Wuest-Dimensions»-Layout.

Skill `immobilienbewertung`. Erzeugt das Gutachten als HTML im DASHBOARD-Layout des
Wuest-Partner-Hedonic-Berichts (Querformat A4, 3-Spalten, Label-Wert-Zeilen, 1-5-Balken,
Mikrolage-Legende, Karten, Glossar) und rendert es mit Chrome headless zu PDF.

Bewusste Variante zum neutralen JANS-DOCX-Standard (`build_gutachten.py`): hier exakte
WP-Struktur, aber mit JANS-Anschrift statt Wuest-Partner-Logo. Vom Benutzer ausdruecklich
so gewuenscht (15.06.2026) -> Ausnahme zur Rule dokument-layout-standard zulaessig.

Aufruf:
  ~/.venvs/jansdocx/bin/python build_gutachten_wp.py <config.json> <out.pdf>

(Benoetigt nur die Standardbibliothek + Google Chrome. Kein python-docx.)
"""
import sys, os, json, subprocess, tempfile, html

CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"


def esc(x):
    return html.escape(str(x))


def rows(pairs):
    """Label-Wert-Zeilen wie im WP-Bericht (Label links, Wert rechts, feine Trennlinie)."""
    out = []
    for p in pairs:
        if len(p) == 1 or p[1] == "":
            out.append(f'<div class="row"><span class="l">{esc(p[0])}</span><span class="v"></span></div>')
        else:
            out.append(f'<div class="row"><span class="l">{esc(p[0])}</span><span class="v">{esc(p[1])}</span></div>')
    return "\n".join(out)


def bar(val, maxv=5, scale="grey"):
    """5-Segment-Balken wie im WP-Qualitaetsprofil."""
    try:
        v = int(round(float(val)))
    except (TypeError, ValueError):
        v = 0
    segs = []
    for i in range(1, maxv + 1):
        cls = "seg on" if i <= v else "seg"
        if scale == "rg" and i <= v:
            cls = f"seg rg{min(v,5)}"
        segs.append(f'<span class="{cls}"></span>')
    return f'<span class="bar">{"".join(segs)}</span>'


def factor_block(title, scale_note, modellwert, sub_rows, bar_val, bar_scale="grey"):
    """Eine Qualitaetsprofil-Spalte (Standard / Zustand / Mikrolage)."""
    body = [f'<div class="sec">{esc(title)}<span class="scale">{esc(scale_note)}</span></div>']
    body.append(f'<div class="row big"><span class="l">Modellwert</span>'
                f'<span class="v">{bar(bar_val, scale=bar_scale)} <b>{esc(modellwert)}</b></span></div>')
    body.append(rows(sub_rows))
    return "\n".join(body)


PAGE_CSS = """
@page { size: A4 landscape; margin: 0; }
* { box-sizing: border-box; }
html,body { margin:0; padding:0; }
body { font-family: Arial, Helvetica, sans-serif; color:#222; font-size:9.2px; -webkit-print-color-adjust:exact; print-color-adjust:exact; }
.page { position:relative; width:297mm; height:210mm; padding:11mm 12mm 14mm 12mm; page-break-after:always; overflow:hidden; }
.page:last-child { page-break-after:auto; }
.head { display:flex; justify-content:space-between; align-items:flex-end; border-bottom:1px solid #333; padding-bottom:3px; }
.head .sys { font-size:8px; color:#555; }
.head .sys b { color:#222; }
.mark { font-weight:800; letter-spacing:2px; color:#2b2b44; font-size:15px; }
.mark span { color:#c0392b; }
.foot { position:absolute; left:12mm; right:12mm; bottom:7mm; display:flex; justify-content:space-between; font-size:7px; color:#666; border-top:1px solid #ccc; padding-top:3px; }
h1.title { font-size:21px; margin:14px 0 2px; }
.subt { font-size:13px; font-weight:bold; line-height:1.35; }
.cols { display:flex; gap:9mm; margin-top:9px; }
.col { flex:1; }
.sec { font-weight:bold; font-size:10px; border-bottom:1.4px solid #333; padding:8px 0 3px; margin-top:8px; display:flex; justify-content:space-between; align-items:baseline; }
.sec:first-child { margin-top:0; }
.sec .scale { font-weight:normal; font-size:7px; color:#777; }
.row { display:flex; justify-content:space-between; gap:6px; border-bottom:1px solid #ececec; padding:2.6px 0; }
.row .l { color:#333; }
.row .v { text-align:right; color:#111; font-weight:600; white-space:normal; }
.row .v.wrap { white-space:normal; text-align:right; }
.row.big .v { font-weight:600; }
.bar { display:inline-flex; gap:2px; vertical-align:middle; margin-right:5px; }
.seg { width:9px; height:9px; background:#e0e0e0; display:inline-block; }
.seg.on { background:#555; }
.seg.rg1{background:#cf4b3b;} .seg.rg2{background:#e08a3c;} .seg.rg3{background:#9a9a9a;} .seg.rg4{background:#7eb15a;} .seg.rg5{background:#4a9d4a;}
.mw-label { font-size:11px; font-weight:bold; color:#333; margin-top:6px; }
.mw { font-size:30px; font-weight:800; color:#111; }
.box { background:#f3f3f3; border:1px solid #e0e0e0; padding:10px 12px; }
.map { background:#eef0f2; border:1px solid #dcdcdc; height:142mm; display:flex; align-items:center; justify-content:center; color:#9aa; font-size:11px; }
.toc .row .v { font-weight:normal; }
.gloss { columns:2; column-gap:10mm; font-size:8.4px; }
.gloss p { margin:0 0 6px; break-inside:avoid; }
.gloss b { color:#111; }
.discl { font-size:8.6px; color:#333; line-height:1.5; margin-top:10px; max-width:150mm; }
.legend { margin-top:8px; font-size:7.5px; }
.legend .row { border:none; padding:1.5px 0; justify-content:flex-start; gap:6px; }
.note { font-size:7.5px; color:#777; margin-top:4px; }
"""


def head(cfg):
    k = cfg["kopf"]
    return (f'<div class="head"><div class="sys"><b>{esc(k["systemzeile"])}</b></div>'
            f'<div class="mark">{esc(k["marke"])[:-1]}<span>{esc(k["marke"])[-1]}</span></div></div>')


def foot(cfg, n):
    return (f'<div class="foot"><div>{esc(cfg["fuss_ref"])}</div>'
            f'<div>{esc(cfg["fuss_ersteller"])}</div>'
            f'<div>Seite {n} von {cfg["seiten_total"]}</div></div>')


def page(cfg, n, inner):
    return f'<div class="page">{head(cfg)}{inner}{foot(cfg, n)}</div>'


def build_html(cfg):
    P = []
    t = cfg["titel"]
    # --- Seite 1: Titelblatt
    p1 = (f'<h1 class="title">Bewertungsbericht</h1>'
          f'<div class="subt">{esc(t["typ"])}<br>{esc(t["adr1"])}<br>{esc(t["adr2"])}<br>{esc(t["land"])}</div>'
          f'<div class="cols" style="margin-top:14px">'
          f'<div class="col" style="flex:1.15"><div class="map">Makrolage / Mikrolage (Karten via geo-zh)</div></div>'
          f'<div class="col"><div class="mw-label">Marktwert</div><div class="mw">{esc(t["marktwert"])}</div>'
          f'<div style="margin-top:14px">{rows(cfg["meta"])}</div>'
          f'<div class="discl">{esc(cfg["disclaimer"])}</div></div></div>')
    P.append(page(cfg, 1, p1))

    # --- Seite 2: Inhaltsverzeichnis
    p2 = (f'<h1 class="title">Inhaltsverzeichnis</h1>'
          f'<div class="toc" style="margin-top:10px;max-width:150mm">{rows(cfg["toc"])}</div>')
    P.append(page(cfg, 2, p2))

    # --- Seite 3: Bewertung (3 Spalten)
    p3 = (f'<h1 class="title">Bewertung {esc(t["typ"])}</h1>'
          f'<div class="cols">'
          f'<div class="col"><div class="sec">Objekteigenschaften</div>{rows(cfg["objekt_id"])}'
          f'<div class="sec">Quantitative Faktoren</div>{rows(cfg["objekt_quant"])}'
          f'<div class="sec">Qualitative Faktoren</div>{rows(cfg["objekt_qual"])}</div>'
          f'<div class="col"><div class="sec">Bewertungsergebnis</div>{rows(cfg["ergebnis"])}'
          f'<div class="sec">Weitere Kennzahlen</div>{rows(cfg["kennzahlen"])}</div>'
          f'<div class="col"><div class="sec">Hintergrundinformationen</div>{rows(cfg["hintergrund"])}'
          f'<div class="sec">Datengrundlage</div>{rows(cfg["datengrundlage"])}</div>'
          f'</div>')
    P.append(page(cfg, 3, p3))

    # --- Seite 4: Qualitaetsprofil (3 Spalten)
    qs, qz, qm = cfg["qp_standard"], cfg["qp_zustand"], cfg["qp_mikro"]
    legend = ('<div class="legend"><b>Skala Mikrolage relativ zur Makrolage</b>'
              f'<div class="row">{bar(1, scale="rg")} Unterdurchschnittlich</div>'
              f'<div class="row">{bar(2, scale="rg")} Leicht unterdurchschnittlich</div>'
              f'<div class="row">{bar(3, scale="rg")} Neutral</div>'
              f'<div class="row">{bar(4, scale="rg")} Leicht überdurchschnittlich</div>'
              f'<div class="row">{bar(5, scale="rg")} Überdurchschnittlich</div></div>')
    p4 = (f'<h1 class="title">Qualitätsprofil</h1>'
          f'<div class="cols">'
          f'<div class="col">{factor_block("Standard", qs["scale"], qs["modellwert"], qs["rows"], qs["bar"])}</div>'
          f'<div class="col">{factor_block("Zustand", qz["scale"], qz["modellwert"], qz["rows"], qz["bar"])}</div>'
          f'<div class="col">{factor_block("Mikrolage", qm["scale"], qm["modellwert"], qm["rows"], qm["bar"], "rg")}{legend}</div>'
          f'</div>')
    P.append(page(cfg, 4, p4))

    # --- Seite 5: Karten
    p5 = (f'<h1 class="title">Karten</h1>'
          f'<div class="cols" style="margin-top:8px">'
          f'<div class="col"><div class="sec">Makrolage</div><div class="map" style="height:120mm">Makrolage (geo-zh / swisstopo)</div></div>'
          f'<div class="col"><div class="sec">Mikrolage</div><div class="map" style="height:120mm">Mikrolage (geo-zh / Orthofoto)</div></div>'
          f'</div><div class="note">Karten werden in der Finalfassung via geo-zh.mjs eingesetzt.</div>')
    P.append(page(cfg, 5, p5))

    # --- Seite 6: Kontext
    kx = cfg["kontext"]
    p6 = (f'<h1 class="title">Kontext</h1>'
          f'<div class="sec">Annahme</div><div class="discl">{esc(kx["annahme"])}</div>'
          f'<div class="sec">Disclaimer</div><div class="discl">{esc(kx["disclaimer"])}</div>'
          f'<div class="sec">Methode</div><div class="discl">{esc(kx["methode"])}</div>')
    P.append(page(cfg, 6, p6))

    # --- Seite 7: Glossar
    gl = "".join(f'<p><b>{esc(b)}:</b> {esc(tx)}</p>' for b, tx in cfg["glossar"])
    p7 = f'<h1 class="title">Glossar</h1><div class="gloss" style="margin-top:8px">{gl}</div>'
    P.append(page(cfg, 7, p7))

    return f'<!doctype html><html><head><meta charset="utf-8"><style>{PAGE_CSS}</style></head><body>{"".join(P)}</body></html>'


def main():
    if len(sys.argv) != 3:
        print("Aufruf: build_gutachten_wp.py <config.json> <out.pdf>", file=sys.stderr)
        sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        cfg = json.load(f)
    out = os.path.abspath(sys.argv[2])
    html_str = build_html(cfg)
    with tempfile.NamedTemporaryFile("w", suffix=".html", delete=False, encoding="utf-8") as tf:
        tf.write(html_str)
        html_path = tf.name
    # Optional HTML-Beleg neben dem PDF ablegen
    with open(os.path.splitext(out)[0] + ".html", "w", encoding="utf-8") as f:
        f.write(html_str)
    subprocess.run([CHROME, "--headless=new", "--disable-gpu", "--no-pdf-header-footer",
                    f"--print-to-pdf={out}", f"file://{html_path}"],
                   check=True, capture_output=True)
    os.unlink(html_path)
    print(f"OK {out}")


if __name__ == "__main__":
    main()
