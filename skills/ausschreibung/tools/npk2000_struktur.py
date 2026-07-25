#!/usr/bin/env python3
"""
npk2000_struktur.py — NPK-2000-Altkatalog (.xls) → Struktur-Markdown

JANS AI Hub · Skill `ausschreibung`

Wandelt die alten NPK-2000-/BHB-1996-Excel-Vorlagen in eine schlanke
Struktur-Markdown um. WICHTIG: Inhalt und Preise (Basis 1996) sind VERALTET —
verwendet wird nur die **Gliederung als Vorbild**. Aktuelle Texte/Preise kommen
aus der NPK-Wegleitung 2020 und den .crbx-Goldstandards.

Erwartet eine via LibreOffice erzeugte CSV (Tab-getrennt):
  Spalten:  _, HP, UP, Var, Text, _, EH, _, Preis, _, MC

Verwendung:
  soffice --headless --convert-to csv:"Text - txt - csv (StarCalc)" kapitel.xls
  python3 npk2000_struktur.py kapitel.csv -o kapitel.md
"""
import sys, csv, re, argparse, os


def load(csv_path):
    rows = []
    with open(csv_path, newline="", encoding="utf-8", errors="replace") as f:
        for r in csv.reader(f):
            rows.append(r)
    return rows


def cell(r, i):
    return r[i].strip() if len(r) > i else ""


def to_md(rows, title):
    L = ["---", "typ: npk-struktur-vorbild", f"quelle: {title}",
         "stand: NPK 2000 / BHB 1996 — Inhalt & Preise VERALTET, nur Struktur gueltig",
         "---", "", f"# NPK-Struktur — {title}", "",
         "> ⚠️ Preise = Basis 1996 (Richtwert, nicht aktuell). Texte ggf. veraltet.",
         "> Aktuelle Grundlage: NPK-Wegleitung 2020 + .crbx-Goldstandards.", "",
         "| Pos | Beschrieb | EH | Richtpreis 1996 |", "|---|---|---|---|"]
    cur, buf, eh, preis = None, [], "", ""

    def flush():
        if cur and buf:
            text = " ".join(buf).strip()
            text = re.sub(r"\s+", " ", text).replace("|", "/")
            if text and not set(text) <= set("- "):
                L.append(f"| {cur} | {text} | {eh} | {preis if preis not in ('0','') else ''} |")

    for r in rows[2:]:
        hp, up, var = cell(r, 1), cell(r, 2), cell(r, 3)
        txt, e, p = cell(r, 4), cell(r, 6), cell(r, 8)
        if not hp:
            continue
        key = f"{hp}.{up}.{var}"
        if key != cur:
            flush()
            cur, buf, eh, preis = key, [], e, p
        if txt:
            buf.append(txt)
        if e and e.strip():
            eh = e.strip()
        if p and p not in ("0", ""):
            preis = p
    flush()
    return "\n".join(L)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("csv")
    ap.add_argument("-o", "--out")
    a = ap.parse_args()
    title = os.path.splitext(os.path.basename(a.csv))[0]
    md = to_md(load(a.csv), title)
    if a.out:
        open(a.out, "w", encoding="utf-8").write(md)
        print("geschrieben:", a.out)
    else:
        print(md)


if __name__ == "__main__":
    main()
