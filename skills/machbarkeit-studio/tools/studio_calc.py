#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
studio_calc.py — Rechen-Kern des Machbarkeits-Studios (Quelle der Wahrheit).

Spiegelt 1:1 die JS-Engine im interaktiven Studio (build_studio.py erzeugt sie aus
den HIER definierten Formeln, siehe JS_ENGINE-Doku). Wird ausserdem vom Dossier-
Generator (build_dossier.py) genutzt, damit HTML-Studio und DOCX/PDF dieselben
Zahlen zeigen.

Formelbasis: JANS-Wissensbasis
  skills/machbarkeit/wissensbasis/01_flaechen-volumen-faktoren.md
  skills/machbarkeit/wissensbasis/03_wirtschaftlichkeit-residualwert.md
  wissen/grobkosten/wiki/kennwerte.md

Begriffe:
  AZ/GFZ      Ausnuetzungs-/Geschossflaechenziffer der Zone
  aGF         anrechenbare Geschossflaeche  = Grundstuecksflaeche * Ziffer
  BGF         Bruttogeschossflaeche         = aGF * bgf_faktor (UG/nicht-anrechenbar)
  GV          Gebaeudevolumen SIA 416 (m3)  = BGF * gv_pro_gf
  HNF         Hauptnutzflaeche              = BGF * hnf_faktor
  Erstellung  Erstellungskosten BKP 1-5     = GV * Kennwert(CHF/m3) * (1+Zuschlag)

Wirtschaftlichkeit:
  Modus "verkauf":   Verkaufserloes = HNF * Verkaufspreis CHF/m2
                     Marge          = marge_pct% * Verkaufserloes
                     Residual VOR   = Erloes - Erstellung - Marge - Abzuege
                     Residual NACH  = Residual VOR * (1 - diskont%)  = zahlbarer Landwert
  Modus "rendite":   Ertragswert    = (HNF * Miete CHF/m2/Jahr) / Kapitalisierungssatz%
                     Residual analog gegen Ertragswert
  Ist ein Landpreis/Kaufpreis bekannt -> zusaetzlich Marge-Methode (Controlling):
                     Gesamtkosten   = Erstellung + Landpreis
                     Marge CHF      = Erloes/Ertragswert - Gesamtkosten
                     Marge %        = Marge CHF / Gesamtkosten
"""
from __future__ import annotations
import json
import sys


DEFAULTS = {
    "bgf_faktor": 1.15,
    "gv_pro_gf": 3.3,
    "hnf_faktor": 0.75,
    "kennwert_chf_m3": 950,
    "kennwert_band_low": 850,
    "kennwert_band_high": 1050,
    "geschosshoehe_m": 3.0,        # informativ; GV laeuft ueber gv_pro_gf
    "modus": "verkauf",
    "verkaufspreis_chf_m2": 9000,
    "miete_chf_m2_jahr": 320,
    "kap_satz_pct": 3.5,
    "marge_pct": 7.0,
    "diskont_pct": 3.0,
    "abzug_chf": 0.0,
    "landpreis_chf": None,
}


def _num(x, default=0.0):
    try:
        if x is None or x == "":
            return default
        return float(x)
    except (TypeError, ValueError):
        return default


def variante_rechnen(v: dict, a: dict, gsf: float) -> dict:
    """Eine Variante gegen die globalen Annahmen rechnen. gsf = Grundstuecksflaeche m2."""
    ziffer = _num(v.get("ziffer"), 0.0)
    zuschlag = _num(v.get("zuschlag_pct"), 0.0) / 100.0
    flaechen_delta = _num(v.get("flaechen_delta_pct"), 0.0) / 100.0  # fuer Sensitivitaet (-10/-20%)

    bgf_faktor = _num(a.get("bgf_faktor"), DEFAULTS["bgf_faktor"])
    gv_pro_gf = _num(a.get("gv_pro_gf"), DEFAULTS["gv_pro_gf"])
    hnf_faktor = _num(a.get("hnf_faktor"), DEFAULTS["hnf_faktor"])
    kw = _num(a.get("kennwert_chf_m3"), DEFAULTS["kennwert_chf_m3"])
    kw_low = _num(a.get("kennwert_band_low"), kw)
    kw_high = _num(a.get("kennwert_band_high"), kw)

    aGF = gsf * ziffer * (1.0 + flaechen_delta)
    BGF = aGF * bgf_faktor
    GV = BGF * gv_pro_gf
    HNF = BGF * hnf_faktor

    erstellung = GV * kw * (1.0 + zuschlag)
    erstellung_low = GV * kw_low * (1.0 + zuschlag)
    erstellung_high = GV * kw_high * (1.0 + zuschlag)

    modus = a.get("modus", DEFAULTS["modus"])
    marge_pct = _num(a.get("marge_pct"), DEFAULTS["marge_pct"])
    diskont = _num(a.get("diskont_pct"), DEFAULTS["diskont_pct"]) / 100.0
    abzug = _num(a.get("abzug_chf"), 0.0)
    landpreis = a.get("landpreis_chf", None)
    landpreis = None if landpreis in (None, "") else _num(landpreis)

    if modus == "rendite":
        miete = _num(a.get("miete_chf_m2_jahr"), DEFAULTS["miete_chf_m2_jahr"])
        kap = _num(a.get("kap_satz_pct"), DEFAULTS["kap_satz_pct"]) / 100.0
        ertrag_jahr = HNF * miete
        wertbasis = ertrag_jahr / kap if kap > 0 else 0.0
    else:
        vkp = _num(a.get("verkaufspreis_chf_m2"), DEFAULTS["verkaufspreis_chf_m2"])
        ertrag_jahr = 0.0
        wertbasis = HNF * vkp  # Verkaufserloes

    marge_chf = marge_pct / 100.0 * wertbasis
    residual_vor = wertbasis - erstellung - marge_chf - abzug
    residual = residual_vor * (1.0 - diskont)
    residual_pro_m2 = residual / gsf if gsf > 0 else 0.0

    out = {
        "name": v.get("name", ""),
        "kurz": v.get("kurz", ""),
        "ziffer": ziffer,
        "zuschlag_pct": _num(v.get("zuschlag_pct"), 0.0),
        "geschosse": v.get("geschosse"),
        "nutzung": v.get("nutzung", ""),
        "render_img": v.get("render_img"),
        "aGF": aGF, "BGF": BGF, "GV": GV, "HNF": HNF,
        "erstellung": erstellung,
        "erstellung_low": erstellung_low,
        "erstellung_high": erstellung_high,
        "wertbasis": wertbasis,         # Verkaufserloes oder Ertragswert
        "ertrag_jahr": ertrag_jahr,
        "marge_chf": marge_chf,
        "residual_vor": residual_vor,
        "residual": residual,           # zahlbarer Landwert
        "residual_pro_m2": residual_pro_m2,
    }

    # Marge-/Controlling-Methode falls Landpreis bekannt
    if landpreis is not None:
        gesamtkosten = erstellung + landpreis
        marge_real = wertbasis - gesamtkosten
        out["gesamtkosten"] = gesamtkosten
        out["marge_real_chf"] = marge_real
        out["marge_real_pct"] = (marge_real / gesamtkosten * 100.0) if gesamtkosten > 0 else 0.0
        out["roi_pct"] = (marge_real / gesamtkosten * 100.0) if gesamtkosten > 0 else 0.0
    return out


def studie_rechnen(model: dict) -> dict:
    """Gesamtes Modell rechnen -> Resultat je Variante + Sensitivitaet."""
    a = dict(DEFAULTS)
    a.update(model.get("annahmen", {}))
    gsf = _num(model.get("meta", {}).get("grundstuecksflaeche_m2"), 0.0)

    res = [variante_rechnen(v, a, gsf) for v in model.get("varianten", [])]

    # Sensitivitaet: Marge/Residual gegen Flaechen-Delta x Kostenmodell, Leit-Variante
    sens = None
    if res:
        leit = model.get("leitvariante_index", 0)
        leit = leit if 0 <= leit < len(model["varianten"]) else 0
        vleit = model["varianten"][leit]
        sens = {"variante": res[leit]["name"], "zellen": []}
        for d in (0, -10, -20):
            row = []
            for kmodell, kkey in (("Kennwert", "kennwert_chf_m3"), ("Kennwert hoch", "kennwert_band_high")):
                aa = dict(a)
                aa["kennwert_chf_m3"] = a.get(kkey, a["kennwert_chf_m3"])
                vv = dict(vleit)
                vv["flaechen_delta_pct"] = d
                r = variante_rechnen(vv, aa, gsf)
                row.append({"kostenmodell": kmodell, "delta": d,
                            "residual": r["residual"], "residual_mio": r["residual"] / 1e6})
            sens["zellen"].append(row)

    return {"annahmen": a, "grundstuecksflaeche_m2": gsf, "varianten": res, "sensitivitaet": sens}


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Aufruf: studio_calc.py <model.json>"); sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        model = json.load(f)
    out = studie_rechnen(model)
    print(json.dumps(out, indent=2, ensure_ascii=False))
