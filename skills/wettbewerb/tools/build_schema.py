#!/usr/bin/env python3
"""
JANS Wettbewerb — Konzept-Schema-Generator (Schema-Zeichner).

Erzeugt ein diagrammatisches SVG-Erklaerschema je Thema (Erschliessung / Tragwerk / Energie /
Brandschutz) mit benannten Gruppen + Legende. Bewusst abstrakt und mit «Konzeptdiagramm —
nicht massstaeblich» gekennzeichnet — KEIN Ersatz fuer den CAD-Plan. Abhaengigkeitsfrei.

Aufruf:
  python3 build_schema.py --thema erschliessung --name 2702_Schulhaus --out OUTDIR \
      [--titel "Erschliessungskonzept"]

Output: OUTDIR/<name>_Schema_<thema>.svg
"""
import argparse, os

W, H = 297, 210                  # A4-quer in mm (Diagramm-Leinwand)
THEMEN = ["erschliessung", "tragwerk", "energie", "brandschutz"]
DEFAULT_TITEL = {
    "erschliessung": "Erschliessungskonzept",
    "tragwerk": "Tragwerkskonzept",
    "energie": "Energie-/Nachhaltigkeitskonzept",
    "brandschutz": "Brandschutzkonzept",
}


def esc(s):
    return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")


def baukoerper(x, y, w, h):
    """Abstrakter Baukoerper als gemeinsame Basis aller Schemata."""
    return (f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#f2f2f2" '
            f'stroke="#444" stroke-width="0.6"/>')


def legende(items):
    parts = ['<g id="legende">']
    lx, ly = 18, H - 38
    parts.append(f'<rect x="{lx-4}" y="{ly-8}" width="120" height="{6+7*len(items)}" '
                 f'fill="white" stroke="#888" stroke-width="0.3"/>')
    parts.append(f'<text x="{lx}" y="{ly}" font-family="Helvetica,Arial" font-size="5" '
                 f'font-weight="bold" fill="#111">Legende</text>')
    for i, (col, lab) in enumerate(items):
        yy = ly + 7 * (i + 1)
        parts.append(f'<rect x="{lx}" y="{yy-3.5}" width="5" height="3.5" fill="{col}"/>')
        parts.append(f'<text x="{lx+8}" y="{yy}" font-family="Helvetica,Arial" '
                     f'font-size="4.2" fill="#111">{esc(lab)}</text>')
    parts.append('</g>')
    return "\n".join(parts)


def schema_erschliessung():
    g = ['<g id="erschliessung">', baukoerper(70, 55, 150, 95)]
    # Haupteingang-Pfeil + Vertikalkern
    g.append('<polygon points="40,102 66,96 66,108" fill="#c0392b"/>')
    g.append('<line x1="20" y1="102" x2="40" y2="102" stroke="#c0392b" stroke-width="2"/>')
    g.append('<text x="18" y="96" font-family="Helvetica,Arial" font-size="5" '
             'fill="#c0392b">Haupteingang</text>')
    g.append('<rect x="135" y="80" width="20" height="45" fill="#2980b9" opacity="0.4" '
             'stroke="#2980b9" stroke-width="0.5"/>')
    g.append('<text x="138" y="105" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#1b4f72">Kern</text>')
    g.append('</g>')
    leg = [("#c0392b", "Zugang/Wegfuehrung"), ("#2980b9", "Vertikalerschliessung")]
    return "\n".join(g), leg


def schema_tragwerk():
    g = ['<g id="tragwerk">', baukoerper(70, 55, 150, 95)]
    # Stuetzenraster
    for i in range(6):
        x = 82 + i * 25
        g.append(f'<line x1="{x}" y1="58" x2="{x}" y2="147" stroke="#27ae60" '
                 f'stroke-width="0.5" stroke-dasharray="2 2"/>')
        g.append(f'<circle cx="{x}" cy="147" r="2" fill="#27ae60"/>')
    g.append('<line x1="70" y1="70" x2="220" y2="70" stroke="#8e44ad" stroke-width="1.5"/>')
    g.append('<text x="74" y="67" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#8e44ad">Lastabtrag Decke</text>')
    g.append('</g>')
    leg = [("#27ae60", "Stuetzenraster"), ("#8e44ad", "Haupttraeger/Lastabtrag")]
    return "\n".join(g), leg


def schema_energie():
    g = ['<g id="energie">', baukoerper(70, 70, 150, 80)]
    # Sonne + Solar-Dach + warme/kalte Zonen
    g.append('<circle cx="45" cy="45" r="9" fill="#f1c40f"/>')
    for a in range(8):
        import math
        dx, dy = 14 * math.cos(a*math.pi/4), 14 * math.sin(a*math.pi/4)
        g.append(f'<line x1="{45+dx*0.7:.1f}" y1="{45+dy*0.7:.1f}" x2="{45+dx:.1f}" '
                 f'y2="{45+dy:.1f}" stroke="#f1c40f" stroke-width="1"/>')
    g.append('<rect x="70" y="63" width="150" height="7" fill="#e67e22"/>')
    g.append('<text x="74" y="68.5" font-family="Helvetica,Arial" font-size="4" '
             'fill="white">PV / Solar</text>')
    g.append('<rect x="74" y="74" width="70" height="72" fill="#e74c3c" opacity="0.15"/>')
    g.append('<rect x="146" y="74" width="70" height="72" fill="#3498db" opacity="0.15"/>')
    g.append('<text x="80" y="112" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#c0392b">warme Zone</text>')
    g.append('<text x="152" y="112" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#2471a3">Pufferzone</text>')
    g.append('</g>')
    leg = [("#e67e22", "Solar/PV"), ("#e74c3c", "warme Nutzzone"), ("#3498db", "Puffer/kalt")]
    return "\n".join(g), leg


def schema_brandschutz():
    g = ['<g id="brandschutz">', baukoerper(70, 55, 150, 95)]
    # Brandabschnitte + Fluchtpfeile
    g.append('<line x1="145" y1="55" x2="145" y2="150" stroke="#c0392b" '
             'stroke-width="1.2" stroke-dasharray="5 3"/>')
    g.append('<text x="120" y="52" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#c0392b">Brandabschnitt</text>')
    for sx in (100, 190):
        g.append(f'<polygon points="{sx},148 {sx-4},142 {sx+4},142" fill="#27ae60"/>')
        g.append(f'<line x1="{sx}" y1="142" x2="{sx}" y2="100" stroke="#27ae60" '
                 f'stroke-width="1.5"/>')
    g.append('<text x="86" y="160" font-family="Helvetica,Arial" font-size="4.2" '
             'fill="#1e8449">Fluchtweg ins Freie</text>')
    g.append('</g>')
    leg = [("#c0392b", "Brandabschnittsgrenze"), ("#27ae60", "Fluchtweg/Ausgang")]
    return "\n".join(g), leg


BUILDER = {
    "erschliessung": schema_erschliessung, "tragwerk": schema_tragwerk,
    "energie": schema_energie, "brandschutz": schema_brandschutz,
}


def main():
    p = argparse.ArgumentParser(description="JANS Wettbewerb Konzept-Schema (SVG)")
    p.add_argument("--thema", required=True, choices=THEMEN)
    p.add_argument("--name", required=True, help="Projekt-Praefix, z.B. 2702_Schulhaus")
    p.add_argument("--titel", default="", help="Titel; leer = Default je Thema")
    p.add_argument("--out", required=True, help="Ausgabeordner (z.B. 06_Schemas)")
    a = p.parse_args()

    titel = a.titel or DEFAULT_TITEL[a.thema]
    body, leg = BUILDER[a.thema]()
    svg = []
    svg.append(f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}mm" height="{H}mm" '
               f'viewBox="0 0 {W} {H}">')
    svg.append(f'<title>{esc(a.name)} — {esc(titel)} (Konzeptdiagramm)</title>')
    svg.append(f'<rect x="0" y="0" width="{W}" height="{H}" fill="white"/>')
    svg.append(f'<text x="18" y="22" font-family="Helvetica,Arial" font-size="8" '
               f'font-weight="bold" fill="#111">{esc(titel)}</text>')
    svg.append(f'<text x="18" y="30" font-family="Helvetica,Arial" font-size="4.5" '
               f'fill="#b00">Konzeptdiagramm — nicht massstaeblich</text>')
    svg.append(body)
    svg.append(legende(leg))
    svg.append('</svg>')
    os.makedirs(a.out, exist_ok=True)
    pfad = os.path.join(a.out, f"{a.name}_Schema_{a.thema}.svg")
    with open(pfad, "w", encoding="utf-8") as f:
        f.write("\n".join(svg))
    print(f"Schema geschrieben: {pfad}")
    print("Hinweis: diagrammatisch/abstrakt. Massstaebliche Plaene (Grundriss/Schnitt) "
          "gehoeren in 04_Plaene (CAD/Hand) — in der Checkliste orange/Hand markieren.")


if __name__ == "__main__":
    main()
