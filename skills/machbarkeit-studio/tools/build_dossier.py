#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_dossier.py — JANS Machbarkeits-Dossier v2 (DOCX, PDF via docx2pdf.sh)

Ablage-/versandfertiges Dossier im JANS-Layout. Nutzt denselben Rechen-Kern wie das
interaktive Studio (tools/studio_calc.py v2): Flaechenbilanz (aGF→GF→GV→HNF inkl.
Souterrain), Wohnungsmix je Variante, Wirtschaftlichkeit. HTML-Studio und PDF zeigen
deckungsgleiche Zahlen.

Aufruf:  python build_dossier.py <model.json> <ausgabe.docx>   (+ scripts/docx2pdf.sh)
"""
import sys, os, json

_HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(_HERE, "..", "..", "ausschreibung", "tools"))
sys.path.insert(0, _HERE)
from jans_docx import base_doc, para, h1, h2, table, jans_footer, JANS_NAME, JANS_STREET, JANS_CITY  # noqa: E402
from studio_calc import studie_rechnen  # noqa: E402


def ap(n):
    return f"{round(n):,}".replace(",", "'")


def mio(n):
    return f"{n/1e6:.1f}" if abs(n / 1e6) >= 10 else f"{n/1e6:.2f}"


def chf(n):
    return "CHF " + ap(n)


def build(model, out_path):
    calc = studie_rechnen(model)
    meta = model.get("meta", {})
    a = calc["annahmen"]
    h = calc["huelle"]
    res = calc["varianten"]
    modus = a.get("modus", "verkauf")

    d = base_doc()
    para(d, meta.get("titel", "Machbarkeits-Studie"), size=18, bold=True, after=2)
    para(d, meta.get("untertitel", ""), size=10, after=1)
    para(d, f"{JANS_NAME}  ·  {JANS_STREET}  ·  {JANS_CITY}  ·  Stand {meta.get('stand','')}", size=9, after=8)

    h2(d, "Ausgangslage")
    table(d, [["Objekt", meta.get("objekt", ""), "Parzelle", meta.get("parzelle", "")],
              ["Ort", meta.get("ort", ""), "EGRID", meta.get("egrid", "")],
              ["Zone", meta.get("zone", ""), "Grundstück", f"{ap(h['gsf'])} m²"],
              ["Gemeinde", meta.get("gemeinde", ""), "Kanton", meta.get("kanton", "")]],
          [28, 57, 28, 57], header=False, aligns=["l", "l", "l", "l"])
    para(d, "", after=4)

    if model.get("baurecht"):
        h2(d, "Baurechtliche Basis")
        rows = [["Kennziffer", "Wert", "Quelle"]]
        for b in model["baurecht"]:
            rows.append([b.get("label", ""), str(b.get("wert", "")), b.get("quelle", "")])
        table(d, rows, [40, 70, 60], header=True, aligns=["l", "l", "l"])
        para(d, "", after=4)

    # Flaechenbilanz
    h1(d, "Flächenbilanz")
    grows = [["Geschoss", "Typ", "GF m²", "HNF m²"]]
    for g in h["geschosse"]:
        grows.append([g["name"], g["typ"], ap(g["gf"]), ap(g["hnf"])])
    grows.append(["Total", f"aGF {ap(h['aGF'])} · GV {ap(h['gv'])} m³", ap(h["gf_total"]), ap(h["hnf_total"])])
    table(d, grows, [34, 76, 30, 30], header=True, aligns=["l", "l", "r", "r"])
    para(d, f"Ausnützung AZ {a.get('az')} → aGF {ap(h['aGF'])} m². HNF total {ap(h['hnf_total'])} m² "
            f"(inkl. nicht-anrechenbares Souterrain {ap(h['hnf_souterrain'])} m²), HNF/aGF "
            f"{h['hnf_pro_agf']:.2f}. Gebäudevolumen {ap(h['gv'])} m³. Erstellung BKP 1–5 "
            f"{chf(h['erstellung'])} (Band {mio(h['erstellung_low'])}–{mio(h['erstellung_high'])} Mio).",
         size=9, before=2, after=6)

    # Variantenvergleich
    h1(d, "Variantenvergleich — Wohnungsmix")
    n = len(res)
    head = ["Kennzahl"] + [r["name"] for r in res]
    rows = [head]

    def rf(lab, fn):
        rows.append([lab] + [fn(r) for r in res])

    rf("Anzahl Wohnungen", lambda r: str(r["units"]))
    rf("HNF Mix (m²)", lambda r: ap(r["hnf_mix"]))
    rf("Ø Wohnungsgrösse (m²)", lambda r: ap(r["hnf_mix"] / r["units"]) if r["units"] else "–")
    rf("Verkaufspreis CHF/m²" if modus != "rendite" else "Mietzins CHF/m²/J",
       lambda r: ap(r["verkaufspreis_chf_m2"] if modus != "rendite" else r["miete_chf_m2_jahr"]))
    rf("Verkaufserlös" if modus != "rendite" else "Ertragswert", lambda r: chf(r["wertbasis"]))
    rf("− Erstellung BKP 1–5", lambda r: chf(r["erstellung"]))
    rf(f"− Marge ({a.get('marge_pct')}%)", lambda r: chf(r["marge_chf"]))
    rf("Residualwert / zahlb. Land", lambda r: chf(r["residual"]))
    rf("   je m² Grundstück", lambda r: ap(r["residual_pro_m2"]))
    fw = 42
    each = round((170 - fw) / n, 1)
    table(d, rows, [fw] + [each] * n, header=True, aligns=["l"] + ["r"] * n)
    para(d, "", after=4)

    # Wohnungsspiegel je Variante
    h2(d, "Wohnungsspiegel je Variante")
    for r in res:
        para(d, f"{r['name']} — {r['units']} Wohnungen, HNF {ap(r['hnf_mix'])} m², Residualwert {chf(r['residual'])}",
             size=10, bold=True, before=3, after=1)
        wr = [["Wohnungstyp", "m² HNF", "Anzahl", "%"]]
        for m in r["mix"]:
            wr.append([m["zimmer"] + (" · Souterrain" if m.get("souterrain") else ""),
                       ap(m["flaeche"]), str(m["anzahl"]), f"{m['pct']:.0f}"])
        table(d, wr, [90, 28, 26, 26], header=True, aligns=["l", "r", "r", "r"])

    if model.get("fazit"):
        h1(d, "Fazit & Empfehlung")
        for f in model["fazit"]:
            para(d, "– " + f, size=10, after=2)
    if model.get("vorbehalte"):
        h2(d, "Annahmen & Vorbehalte")
        for v in model["vorbehalte"]:
            para(d, "– " + v, size=9, after=1)
    if model.get("quellen"):
        para(d, "Quellen: " + model["quellen"], size=9, before=2, after=2)

    jans_footer(d, meta.get("studie", "JANS Machbarkeits-Studio"))
    d.save(out_path)
    return out_path


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Aufruf: build_dossier.py <model.json> <ausgabe.docx>"); sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        model = json.load(f)
    print("OK:", build(model, sys.argv[2]))
