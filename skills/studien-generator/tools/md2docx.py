#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
md2docx.py — Markdown -> DOCX (JANS-Layout) + optional PDF.

Setzt die Dauerregel um: zu jedem inhaltlichen .md-Erzeugnis eine DOCX- und PDF-Fassung
mit gleichem Namensstamm daneben ablegen (Rule auto-verbesserungen 260603).

Layout: Cambria 11pt, A4, 20 mm Raender, schwarz, dezente Tabellenlinien
(angelehnt an dokument-layout-standard.md / jans_docx.py).

Unterstuetzt: # / ## / ### Ueberschriften, Pipe-Tabellen, Aufzaehlungen (-, *),
nummerierte Listen, Blockzitate (>), Code-Bloecke (```), **fett**, `code`, --- Trennlinie.

Aufruf:
  python3 md2docx.py <datei.md> [--pdf]        # docx neben md; --pdf erzeugt auch PDF
  python3 md2docx.py <datei.md> -o <ziel.docx> [--pdf]

PDF-Export via LibreOffice:  soffice --headless --convert-to pdf <datei.docx>
"""
import argparse, os, re, subprocess, sys
from docx import Document
from docx.shared import Pt, Mm, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

FONT = "Cambria"
SIZE = 11
BLACK = RGBColor(0, 0, 0)

SOFFICE_CANDIDATES = [
    "/opt/homebrew/bin/soffice", "/usr/local/bin/soffice",
    "/Applications/LibreOffice.app/Contents/MacOS/soffice", "soffice",
]


def _base(doc):
    st = doc.styles["Normal"]
    st.font.name = FONT
    st.font.size = Pt(SIZE)
    st.font.color.rgb = BLACK
    st.element.rPr.rFonts.set(qn("w:eastAsia"), FONT)
    for s in doc.sections:
        s.page_height, s.page_width = Mm(297), Mm(210)
        s.top_margin = s.bottom_margin = s.left_margin = s.right_margin = Mm(20)
    for name, sz in (("Heading 1", 16), ("Heading 2", 13), ("Heading 3", 11)):
        try:
            h = doc.styles[name]
            h.font.name = FONT
            h.font.size = Pt(sz)
            h.font.color.rgb = BLACK
            h.font.bold = True
        except KeyError:
            pass


def _runs(p, text):
    """Inline **fett** und `code` aufloesen."""
    for tok in re.split(r"(\*\*.+?\*\*|`.+?`)", text):
        if not tok:
            continue
        if tok.startswith("**") and tok.endswith("**"):
            r = p.add_run(tok[2:-2]); r.bold = True
        elif tok.startswith("`") and tok.endswith("`"):
            r = p.add_run(tok[1:-1]); r.font.name = "Consolas"; r.font.size = Pt(10)
        else:
            p.add_run(tok)


def _shade(cell, hexcolor):
    tcPr = cell._tc.get_or_add_tcPr()
    sh = OxmlElement("w:shd")
    sh.set(qn("w:val"), "clear"); sh.set(qn("w:fill"), hexcolor)
    tcPr.append(sh)


def _table(doc, rows):
    cols = max(len(r) for r in rows)
    t = doc.add_table(rows=0, cols=cols)
    t.style = "Table Grid"
    for ri, row in enumerate(rows):
        cells = t.add_row().cells
        for ci in range(cols):
            txt = row[ci] if ci < len(row) else ""
            para = cells[ci].paragraphs[0]
            _runs(para, txt.strip())
            for run in para.runs:
                run.font.name = FONT; run.font.size = Pt(10)
                if ri == 0:
                    run.bold = True
            if ri == 0:
                _shade(cells[ci], "F2F2F2")


def convert(md_path, out_path=None):
    with open(md_path, encoding="utf-8") as f:
        lines = f.read().splitlines()
    doc = Document(); _base(doc)
    i, n = 0, len(lines)
    in_code = False; code_buf = []
    while i < n:
        line = lines[i]
        if line.strip().startswith("```"):
            if in_code:
                p = doc.add_paragraph()
                r = p.add_run("\n".join(code_buf))
                r.font.name = "Consolas"; r.font.size = Pt(9)
                code_buf = []; in_code = False
            else:
                in_code = True
            i += 1; continue
        if in_code:
            code_buf.append(line); i += 1; continue
        # Tabelle
        if line.lstrip().startswith("|") and "|" in line[1:]:
            block = []
            while i < n and lines[i].lstrip().startswith("|"):
                block.append(lines[i]); i += 1
            rows = []
            for r in block:
                if re.match(r"^\s*\|?[\s:|-]+\|?\s*$", r):  # ---|--- Trennzeile
                    continue
                cells = [c for c in r.strip().strip("|").split("|")]
                rows.append(cells)
            if rows:
                _table(doc, rows)
            continue
        # Ueberschriften
        m = re.match(r"^(#{1,3})\s+(.*)$", line)
        if m:
            doc.add_heading(m.group(2).strip(), level=len(m.group(1))); i += 1; continue
        # Trennlinie
        if re.match(r"^\s*---+\s*$", line):
            i += 1; continue
        # Blockzitat
        if line.lstrip().startswith(">"):
            p = doc.add_paragraph(); p.paragraph_format.left_indent = Mm(6)
            r = p.add_run(line.lstrip().lstrip(">").strip()); r.italic = True
            i += 1; continue
        # Aufzaehlung
        m = re.match(r"^(\s*)[-*]\s+(.*)$", line)
        if m:
            p = doc.add_paragraph(style="List Bullet")
            p.paragraph_format.left_indent = Mm(6 + 4 * (len(m.group(1)) // 2))
            _runs(p, m.group(2)); i += 1; continue
        m = re.match(r"^\s*\d+\.\s+(.*)$", line)
        if m:
            p = doc.add_paragraph(style="List Number"); _runs(p, m.group(1)); i += 1; continue
        # Leerzeile / Normal
        if not line.strip():
            i += 1; continue
        p = doc.add_paragraph(); _runs(p, line); i += 1
    out = out_path or os.path.splitext(md_path)[0] + ".docx"
    doc.save(out)
    return out


def to_pdf(docx_path):
    soffice = next((c for c in SOFFICE_CANDIDATES
                    if os.path.exists(c) or c == "soffice"), None)
    outdir = os.path.dirname(os.path.abspath(docx_path))
    subprocess.run([soffice, "--headless", "--convert-to", "pdf",
                    "--outdir", outdir, docx_path], check=True,
                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    return os.path.splitext(docx_path)[0] + ".pdf"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("md")
    ap.add_argument("-o", "--out")
    ap.add_argument("--pdf", action="store_true")
    a = ap.parse_args()
    docx = convert(a.md, a.out)
    print("DOCX:", docx)
    if a.pdf:
        print("PDF :", to_pdf(docx))


if __name__ == "__main__":
    main()
