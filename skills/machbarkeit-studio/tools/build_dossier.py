#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_dossier.py — JANS Machbarkeits-Dossier (DOCX, PDF via docx2pdf.sh)

Zweites Leitmedium des Skills `machbarkeit-studio`: das ablage-/versandfertige
Dossier im JANS-Dokument-Layout. Nutzt denselben Rechen-Kern wie das interaktive
Studio (tools/studio_calc.py), damit HTML-Studio und DOCX/PDF deckungsgleiche
Zahlen zeigen.

Aufruf:
  python build_dossier.py <model.json> <ausgabe.docx>
  # PDF danach: scripts/docx2pdf.sh <ausgabe.docx>
"""
import sys, os, json

_HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(_HERE, "..", "..", "ausschreibung", "tools"))
sys.path.insert(0, _HERE)

from jans_docx import (base_doc, para, h1, h2, table, jans_footer,  # noqa: E402
                       JANS_NAME, JANS_STREET, JANS_CITY)
from studio_calc import studie_rechnen  # noqa: E402


def ap(n):
    return f"{round(n):,}".replace(",", "'")


def mio(n):
    s = n / 1e6
    return (f"{s:.1f}" if abs(s) >= 10 else f"{s:.2f}")


def chf(n):
    return "CHF " + ap(n)


def build(model, out_path):
    calc = studie_rechnen(model)
    meta = model.get("meta", {})
    a = calc["annahmen"]
    res = calc["varianten"]
    gsf = calc["grundstuecksflaeche_m2"]
    modus = a.get("modus", "verkauf")

    d = base_doc()

    # Kopf
    para(d, meta.get("titel", "Machbarkeits-Studie"), size=18, bold=True, after=2)
    para(d, meta.get("untertitel", ""), size=10, after=1)
    para(d, f"{JANS_NAME}  ·  {JANS_STREET}  ·  {JANS_CITY}  ·  Stand {meta.get('stand','')}",
         size=9, after=8)

    # Eckdaten
    h2(d, "Ausgangslage")
    eck = [
        ["Objekt", meta.get("objekt", ""), "Parzelle", meta.get("parzelle", "")],
        ["Ort", meta.get("ort", ""), "EGRID", meta.get("egrid", "")],
        ["Zone", meta.get("zone", ""), "Grundstück", f"{ap(gsf)} m²"],
        ["Gemeinde", meta.get("gemeinde", ""), "Kanton", meta.get("kanton", "")],
    ]
    table(d, eck, [28, 57, 28, 57], header=False, aligns=["l", "l", "l", "l"])
    para(d, "", after=4)

    # Baurechtliche Basis
    if model.get("baurecht"):
        h2(d, "Baurechtliche Basis")
        rows = [["Kennziffer", "Wert", "Quelle"]]
        for b in model["baurecht"]:
            rows.append([b.get("label", ""), str(b.get("wert", "")), b.get("quelle", "")])
        table(d, rows, [45, 55, 70], header=True, aligns=["l", "l", "l"])
        para(d, "", after=4)

    # Variantenvergleich (Volumen + Kosten + Wirtschaftlichkeit)
    h1(d, "Variantenvergleich")
    n = len(res)
    namen = [r["name"] for r in res]
    head = ["Kennzahl"] + namen
    rows = [head]

    def rowfn(label, fn):
        rows.append([label] + [fn(r) for r in res])

    rowfn("Ziffer AZ/GFZ", lambda r: f"{r['ziffer']:.2f}")
    rowfn("Geschosse", lambda r: str(r["geschosse"]) if r["geschosse"] is not None else "–")
    rowfn("anrechenbare GF (m²)", lambda r: ap(r["aGF"]))
    rowfn("Bruttogeschossfläche (m²)", lambda r: ap(r["BGF"]))
    rowfn("Gebäudevolumen (m³)", lambda r: ap(r["GV"]))
    rowfn("Hauptnutzfläche (m²)", lambda r: ap(r["HNF"]))
    rowfn("Erstellung BKP 1–5", lambda r: chf(r["erstellung"]))
    rowfn("   Band ± (Mio)", lambda r: f"{mio(r['erstellung_low'])}–{mio(r['erstellung_high'])}")
    rowfn("Verkaufserlös" if modus != "rendite" else "Ertragswert",
          lambda r: chf(r["wertbasis"]))
    rowfn(f"− Bauträger-Marge ({a.get('marge_pct')}%)", lambda r: chf(r["marge_chf"]))
    rowfn("Residualwert / zahlb. Land", lambda r: chf(r["residual"]))
    rowfn("   je m² Grundstück", lambda r: ap(r["residual_pro_m2"]))
    if res and res[0].get("gesamtkosten") is not None:
        rowfn("Marge real (mit Land, %)", lambda r: f"{r['marge_real_pct']:.1f}%")

    first_w = 46
    rest = (170 - first_w)
    each = round(rest / n, 1)
    widths = [first_w] + [each] * n
    aligns = ["l"] + ["r"] * n
    table(d, rows, widths, header=True, aligns=aligns)
    para(d, f"Methode: Volumen × Kennwert ({int(a.get('kennwert_chf_m3'))} CHF/m³, "
            f"Band {int(a.get('kennwert_band_low'))}–{int(a.get('kennwert_band_high'))}) = "
            f"Erstellungskosten BKP 1–5. "
            f"{'Verkaufserlös' if modus!='rendite' else 'Ertragswert'} − Erstellung − Marge − "
            f"Diskontierung ({a.get('diskont_pct')}%) = Residualwert (zahlbarer Landwert).",
         size=9, before=2, after=6)

    # Sensitivitaet
    sens = calc.get("sensitivitaet")
    if sens:
        h2(d, f"Sensitivität · {sens['variante']} (Residualwert in Mio CHF)")
        srows = [["Flächen-Delta", "Kennwert", "Kennwert hoch"]]
        for zrow in sens["zellen"]:
            d0 = zrow[0]["delta"]
            label = "Plan (0%)" if d0 == 0 else f"{d0}%"
            srows.append([label] + [mio(c["residual"]) for c in zrow])
        table(d, srows, [60, 55, 55], header=True, aligns=["l", "r", "r"])
        para(d, "", after=6)

    # Fazit
    if model.get("fazit"):
        h1(d, "Fazit & Empfehlung")
        for f in model["fazit"]:
            para(d, "– " + f, size=10, after=2)

    # Annahmen & Vorbehalte
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
