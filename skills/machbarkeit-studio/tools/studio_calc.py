#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
studio_calc.py — Rechen-Kern des Machbarkeits-Studios v2 (Quelle der Wahrheit).

Bildet die JANS-Flaechenkonzeption ab (Beleg: "Flaechenkonzeption Wohnen mit
Ausnuetzungsziffer", R. Jans 26.11.2024, Ebmatingen) und die Referenzstudien
2621/2622/2623. Die JS-Engine im interaktiven Studio (build_studio.py) spiegelt
diesen Kern 1:1; das Dossier (build_dossier.py) nutzt ihn direkt.

FAKTOR-KETTE (Defaults belegt, alle ueberschreibbar):
  aGF (anrechenbar)   = Grundstuecksflaeche × Ausnuetzungsziffer (AZ)
  GF je Regelgeschoss = aGF × f_agf_gf / Vollgeschosse           (f_agf_gf 1.10)
  Geschosse           = VG Regelgeschosse  + Dachgeschoss(0.70×GF) + Souterrain(1×GF)
  GF total            = Summe der Geschoss-GF (ohne Tiefgarage)
  GV (Baumasse, m³)   = GF total × Geschosshoehe                 (3.03 ≈ Faktor 0.33)
  HNF oberirdisch     = (VG-GF + DG-GF) × f_hnf_gf_wohn          (0.75)
  HNF Souterrain      = Souterrain-GF × f_hnf_gf_ug              (0.40), NUR wenn wohntauglich
  HNF total           = HNF oberirdisch + HNF Souterrain   ( ≈ aGF × 1.25 inkl. UG )

SOUTERRAIN (Blaues Buch, § 255 Abs. 2 PBG = Mehrflaechenregel): UG-Flaeche ist NICHT
anrechenbar (kostet keine Ausnuetzung), zaehlt aber als verkauf-/vermietbare HNF, sofern
wohnhygienisch tauglich (§ 302 Fenster ≥ 10 % ins Freie, kein blosser Lichtschacht;
§ 304 lichte Hoehe ≥ 2.4 m). Kosten ueber GV (inkl. UG-Volumen), Ertrag ueber HNF inkl. UG.

WIRTSCHAFTLICHKEIT je Variante (Wohnungsmix):
  Erloes (verkauf)    = Σ (Whg-Flaeche × Anzahl) × Verkaufspreis CHF/m² HNF
  Ertragswert (miete) = Σ HNF × Mietzins / Kapitalisierungssatz
  Marge               = marge_pct% × Wertbasis
  Residual            = (Wertbasis − Erstellung − Marge − Abzuege) × (1 − Diskont%)
"""
from __future__ import annotations
import json
import sys

DEFAULTS = {
    "f_agf_gf": 1.10,           # aGF -> GF je Vollgeschoss
    "geschosshoehe_m": 3.03,    # GF -> GV (Baumasse), Faktor 0.33
    "f_hnf_gf_wohn": 0.75,      # HNF/GF Wohn-Regelgeschoss
    "f_hnf_gf_ug": 0.40,        # HNF/GF Souterrain (Beleg Ebmatingen)
    "f_dg_gf": 0.70,            # Dachgeschoss-GF relativ zum Regelgeschoss
    "dachgeschoss": True,
    "souterrain": True,         # nicht-anrechenbares UG als Wohnung
    "souterrain_wohntauglich": True,  # § 302/304 erfuellbar -> HNF zaehlt
    "kennwert_chf_m3": 1000, "kennwert_band_low": 850, "kennwert_band_high": 1200,
    "modus": "verkauf",
    "verkaufspreis_chf_m2": 12000,
    "miete_chf_m2_jahr": 360, "kap_satz_pct": 3.0,
    "marge_pct": 7.0, "diskont_pct": 3.0, "abzug_chf": 0.0,
    "landpreis_chf": None,
}


def _num(x, d=0.0):
    try:
        if x is None or x == "":
            return d
        return float(x)
    except (TypeError, ValueError):
        return d


def huelle_rechnen(a: dict, gsf: float, az: float, vg: int) -> dict:
    """Gebaeude-Huelle aus Ausnuetzung -> aGF/GF/GV/HNF (variantenunabhaengig)."""
    vg = max(1, int(vg or 1))
    f_agf_gf = _num(a.get("f_agf_gf"), DEFAULTS["f_agf_gf"])
    gh = _num(a.get("geschosshoehe_m"), DEFAULTS["geschosshoehe_m"])
    f_wohn = _num(a.get("f_hnf_gf_wohn"), DEFAULTS["f_hnf_gf_wohn"])
    f_ug = _num(a.get("f_hnf_gf_ug"), DEFAULTS["f_hnf_gf_ug"])
    f_dg = _num(a.get("f_dg_gf"), DEFAULTS["f_dg_gf"])
    hat_dg = bool(a.get("dachgeschoss", DEFAULTS["dachgeschoss"]))
    hat_ug = bool(a.get("souterrain", DEFAULTS["souterrain"]))
    ug_wohn = bool(a.get("souterrain_wohntauglich", DEFAULTS["souterrain_wohntauglich"]))

    aGF = gsf * az
    gf_rg = aGF * f_agf_gf / vg                      # GF je Regelgeschoss

    geschosse = []
    for i in range(vg):
        geschosse.append({"name": f"{i+1}. VG" if vg > 1 else "EG", "gf": gf_rg,
                          "hnf": gf_rg * f_wohn, "typ": "Vollgeschoss", "anrechenbar": True})
    gf_dg = gf_rg * f_dg if hat_dg else 0.0
    if hat_dg:
        geschosse.append({"name": "Attika/DG", "gf": gf_dg, "hnf": gf_dg * f_wohn,
                          "typ": "Dach-/Attikageschoss", "anrechenbar": False})
    gf_ug = gf_rg if hat_ug else 0.0
    hnf_ug = (gf_ug * f_ug) if (hat_ug and ug_wohn) else 0.0
    if hat_ug:
        geschosse.append({"name": "Souterrain", "gf": gf_ug, "hnf": hnf_ug,
                          "typ": "UG nicht anrechenbar" + ("" if ug_wohn else " (nicht wohntauglich → NNF)"),
                          "anrechenbar": False})

    gf_total = sum(g["gf"] for g in geschosse)
    gv = gf_total * gh
    hnf_oben = sum(g["hnf"] for g in geschosse if g["name"] != "Souterrain")
    hnf_total = hnf_oben + hnf_ug

    kw = _num(a.get("kennwert_chf_m3"), DEFAULTS["kennwert_chf_m3"])
    kwl = _num(a.get("kennwert_band_low"), kw)
    kwh = _num(a.get("kennwert_band_high"), kw)
    return {
        "gsf": gsf, "az": az, "vg": vg,
        "aGF": aGF, "gf_rg": gf_rg, "geschosse": geschosse,
        "gf_total": gf_total, "gv": gv,
        "hnf_oberirdisch": hnf_oben, "hnf_souterrain": hnf_ug, "hnf_total": hnf_total,
        "hnf_pro_agf": (hnf_total / aGF) if aGF else 0,
        "erstellung": gv * kw, "erstellung_low": gv * kwl, "erstellung_high": gv * kwh,
    }


def variante_rechnen(v: dict, a: dict, h: dict) -> dict:
    """Wohnungsmix-Variante auf der gemeinsamen Huelle -> Mix-Bilanz + Wirtschaftlichkeit."""
    mix = []
    hnf_mix = 0.0
    units = 0
    for w in v.get("wohnungsmix", []):
        fl = _num(w.get("flaeche"))
        n = int(_num(w.get("anzahl")))
        s = fl * n
        hnf_mix += s
        units += n
        mix.append({"zimmer": w.get("zimmer", ""), "flaeche": fl, "anzahl": n,
                    "hnf_sum": s, "souterrain": bool(w.get("souterrain", False))})
    for m in mix:
        m["pct"] = (m["hnf_sum"] / hnf_mix * 100.0) if hnf_mix else 0.0

    hnf_basis = hnf_mix if hnf_mix > 0 else h["hnf_total"]
    modus = a.get("modus", "verkauf")
    vkp = _num(v.get("verkaufspreis_chf_m2"), _num(a.get("verkaufspreis_chf_m2"), DEFAULTS["verkaufspreis_chf_m2"]))
    miete = _num(v.get("miete_chf_m2_jahr"), _num(a.get("miete_chf_m2_jahr"), DEFAULTS["miete_chf_m2_jahr"]))
    kap = _num(a.get("kap_satz_pct"), DEFAULTS["kap_satz_pct"]) / 100.0

    if modus == "rendite":
        ertrag_jahr = hnf_basis * miete
        wert = ertrag_jahr / kap if kap > 0 else 0.0
    else:
        ertrag_jahr = 0.0
        wert = hnf_basis * vkp

    erstellung = h["erstellung"]
    marge_pct = _num(a.get("marge_pct"), DEFAULTS["marge_pct"])
    disk = _num(a.get("diskont_pct"), DEFAULTS["diskont_pct"]) / 100.0
    abzug = _num(a.get("abzug_chf"), 0.0)
    marge_chf = marge_pct / 100.0 * wert
    residual_vor = wert - erstellung - marge_chf - abzug
    residual = residual_vor * (1.0 - disk)

    out = {
        "name": v.get("name", ""), "kurz": v.get("kurz", ""), "render_img": v.get("render_img"),
        "mix": mix, "units": units, "hnf_mix": hnf_mix,
        "hnf_fit_pct": (hnf_mix / h["hnf_total"] * 100.0) if h["hnf_total"] else 0.0,
        "verkaufspreis_chf_m2": vkp, "miete_chf_m2_jahr": miete,
        "wertbasis": wert, "ertrag_jahr": ertrag_jahr,
        "erstellung": erstellung, "marge_chf": marge_chf,
        "residual": residual, "residual_pro_m2": (residual / h["gsf"]) if h["gsf"] else 0.0,
        "erloes_pro_unit": (wert / units) if units else 0.0,
    }
    lp = a.get("landpreis_chf", None)
    lp = None if lp in (None, "") else _num(lp)
    if lp is not None:
        gk = erstellung + lp
        out["gesamtkosten"] = gk
        out["marge_real_pct"] = ((wert - gk) / gk * 100.0) if gk else 0.0
    return out


def studie_rechnen(model: dict) -> dict:
    a = dict(DEFAULTS); a.update(model.get("annahmen", {}))
    meta = model.get("meta", {})
    gsf = _num(meta.get("grundstuecksflaeche_m2"))
    az = _num(a.get("az"), _num(meta.get("az")))
    vg = int(_num(a.get("vollgeschosse"), _num(meta.get("vollgeschosse"), 2)))
    h = huelle_rechnen(a, gsf, az, vg)
    res = [variante_rechnen(v, a, h) for v in model.get("varianten", [])]
    return {"annahmen": a, "huelle": h, "varianten": res}


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Aufruf: studio_calc.py <model.json>"); sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        model = json.load(f)
    print(json.dumps(studie_rechnen(model), indent=2, ensure_ascii=False))
