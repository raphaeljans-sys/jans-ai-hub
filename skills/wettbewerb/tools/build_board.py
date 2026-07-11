#!/usr/bin/env python3
"""
JANS Wettbewerb — Board-Geruest-Generator (Plakat-Setzer).

Erzeugt je Abgabeplan ein masshaltiges SVG-Board im geforderten Papierformat mit benannten
Platzhalter-Rahmen + Pflichtleiste (Kennwort, Blattnummer, Massstabsbalken, Nordpfeil).
Geruest, KEIN Feinsatz — Anonymitaet gewahrt (kein Bueroname/Logo). Abhaengigkeitsfrei
(schreibt SVG als Text), laeuft mit jedem Python 3.

Aufruf:
  python3 build_board.py --name 2702_Schulhaus --boards 2 --format A0 --orientierung hoch \
      --kennwort "TANGRAM" --out OUTDIR \
      [--slots "Situation 1:500,Grundriss EG,Obergeschosse,Schnitt,Ansicht,Visualisierung,Konzept-Schema,Flaechennachweis SIA416,Erlaeuterungstext"] \
      [--cols 2]

Output: OUTDIR/<name>_Board_<n>.svg  (ein File je Board)
"""
import argparse, os, math

# DIN-Papierformate in mm (Breite x Hoehe im Hochformat)
FORMATE = {"A0": (841, 1189), "A1": (594, 841), "A2": (420, 594), "A3": (297, 420)}

DEFAULT_SLOTS = [
    "Situation 1:500", "Grundriss EG", "Obergeschosse", "Schnitt", "Ansicht",
    "Visualisierung aussen", "Visualisierung innen", "Konzept-Schema",
    "Flaechennachweis SIA 416", "Erlaeuterungstext",
]


def esc(s):
    return (s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"))


def board_svg(name, idx, total, fmt_mm, slots, cols, kennwort):
    w, h = fmt_mm
    m = 15                      # Aussenrand mm
    bar_h = 28                  # Pflichtleiste unten mm
    inner_x, inner_y = m, m
    inner_w = w - 2 * m
    inner_h = h - 2 * m - bar_h
    rows = max(1, math.ceil(len(slots) / cols)) if slots else 1
    gap = 8
    cell_w = (inner_w - (cols - 1) * gap) / cols
    cell_h = (inner_h - (rows - 1) * gap) / rows

    parts = []
    parts.append(
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}mm" height="{h}mm" '
        f'viewBox="0 0 {w} {h}">')
    parts.append(f'<title>{esc(name)} Board {idx}/{total} ({w}x{h} mm)</title>')
    # Blattrahmen
    parts.append('<g id="rahmen">')
    parts.append(f'<rect x="0" y="0" width="{w}" height="{h}" fill="white" stroke="none"/>')
    parts.append(f'<rect x="{m/2}" y="{m/2}" width="{w-m}" height="{h-m}" '
                 f'fill="none" stroke="#222" stroke-width="0.5"/>')
    parts.append('</g>')
    # Platzhalter-Raster
    parts.append('<g id="platzhalter">')
    for i, label in enumerate(slots):
        r, c = divmod(i, cols)
        x = inner_x + c * (cell_w + gap)
        y = inner_y + r * (cell_h + gap)
        parts.append(
            f'<rect x="{x:.1f}" y="{y:.1f}" width="{cell_w:.1f}" height="{cell_h:.1f}" '
            f'fill="#fafafa" stroke="#888" stroke-width="0.4" '
            f'stroke-dasharray="3 2"/>')
        parts.append(
            f'<text x="{x+4:.1f}" y="{y+8:.1f}" font-family="Helvetica,Arial" '
            f'font-size="5" fill="#333">{esc(label)}</text>')
        parts.append(
            f'<text x="{x+4:.1f}" y="{y+14:.1f}" font-family="Helvetica,Arial" '
            f'font-size="3.5" fill="#b00">Status: offen</text>')
    parts.append('</g>')
    # Pflichtleiste unten (Kennwort | Massstabsbalken | Blatt + Nord) — KEIN Bueroname
    by = h - m - bar_h + 4
    parts.append('<g id="pflichtleiste">')
    parts.append(f'<line x1="{m}" y1="{by-3}" x2="{w-m}" y2="{by-3}" '
                 f'stroke="#222" stroke-width="0.4"/>')
    parts.append(f'<text x="{m}" y="{by+6}" font-family="Helvetica,Arial" font-size="6" '
                 f'fill="#111">Kennwort: {esc(kennwort) if kennwort else "____________"}</text>')
    # Massstabsbalken (Platzhalter, 50 mm)
    sb_x = w / 2 - 25
    parts.append(f'<rect x="{sb_x}" y="{by+1}" width="25" height="3" fill="#111"/>')
    parts.append(f'<rect x="{sb_x+25}" y="{by+1}" width="25" height="3" '
                 f'fill="none" stroke="#111" stroke-width="0.4"/>')
    parts.append(f'<text x="{sb_x}" y="{by+10}" font-family="Helvetica,Arial" '
                 f'font-size="4" fill="#111">Massstabsbalken (anpassen)</text>')
    # Nordpfeil + Blattnummer rechts
    nx = w - m - 8
    parts.append(f'<line x1="{nx}" y1="{by+8}" x2="{nx}" y2="{by}" stroke="#111" '
                 f'stroke-width="0.6"/>')
    parts.append(f'<polygon points="{nx},{by-2} {nx-1.5},{by+1} {nx+1.5},{by+1}" fill="#111"/>')
    parts.append(f'<text x="{nx-2.5}" y="{by+13}" font-family="Helvetica,Arial" '
                 f'font-size="4" fill="#111">N</text>')
    parts.append(f'<text x="{w-m-40}" y="{by+6}" font-family="Helvetica,Arial" '
                 f'font-size="6" fill="#111">Blatt {idx} / {total}</text>')
    parts.append('</g>')
    parts.append('</svg>')
    return "\n".join(parts)


def main():
    p = argparse.ArgumentParser(description="JANS Wettbewerb Board-Geruest (SVG)")
    p.add_argument("--name", required=True, help="Projekt-Praefix, z.B. 2702_Schulhaus")
    p.add_argument("--boards", type=int, default=2, help="Anzahl Boards/Plaene")
    p.add_argument("--format", default="A0", choices=list(FORMATE))
    p.add_argument("--orientierung", default="hoch", choices=["hoch", "quer"])
    p.add_argument("--cols", type=int, default=2, help="Platzhalter-Spalten je Board")
    p.add_argument("--kennwort", default="", help="Kennwort (Anonymitaet)")
    p.add_argument("--slots", default="", help="Komma-Liste Platzhalter; leer = Default-Set")
    p.add_argument("--out", required=True, help="Ausgabeordner (z.B. 09_Plakate)")
    a = p.parse_args()

    w, h = FORMATE[a.format]
    if a.orientierung == "quer":
        w, h = h, w
    slots_all = ([s.strip() for s in a.slots.split(",") if s.strip()]
                 if a.slots else list(DEFAULT_SLOTS))
    # Slots gleichmaessig auf die Boards verteilen
    per = max(1, math.ceil(len(slots_all) / a.boards))
    os.makedirs(a.out, exist_ok=True)
    for b in range(a.boards):
        slots = slots_all[b * per:(b + 1) * per] or ["(frei)"]
        svg = board_svg(a.name, b + 1, a.boards, (w, h), slots, a.cols, a.kennwort)
        pfad = os.path.join(a.out, f"{a.name}_Board_{b+1}.svg")
        with open(pfad, "w", encoding="utf-8") as f:
            f.write(svg)
        print(f"Board geschrieben: {pfad}  ({a.format} {a.orientierung}, {len(slots)} Platzhalter)")
    print("\nHinweis: Geruest, kein Feinsatz. Jeder Platzhalter bleibt in der Abgabe-"
          "Checkliste auf rot/orange, bis befuellt. Kein Bueroname/Logo (Anonymitaet).")


if __name__ == "__main__":
    main()
