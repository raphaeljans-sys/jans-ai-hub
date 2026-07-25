#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
studio_assemble.py — Adresse/Parzelle -> Studio-Modell-Geruest (Stufe Sub-Agenten-Verdrahtung).

Deterministischer Teil der Orchestrierung: zieht ueber den Geo-Connector geo-zh.mjs
(Skill planungsgrundlagen) die amtlichen Identifikatoren (EGRID, Parzelle, BFS,
Koordinate) zu einer Adresse und schreibt ein model.json-GERUEST nach
schema/studio-model.schema.json — meta aus echten Geodaten, der Rest mit belegten
Defaults und als Annahme markierten Platzhaltern.

Die fachlichen Werte (Zone/Ausnuetzung via Skill baurecht, Volumen via Agent
volumen-rechner, Markt/Marge via Agent wirtschaftlichkeit-rechner) fuellt danach
Claude bzw. der jeweilige Agent in das Geruest. So wird aus einer Adresse per
Knopfdruck ein vollstaendiges Studio.

EGRID/Parzelle werden NIE erfunden (Rule identifikatoren-verifizieren): bei 0 oder
mehrdeutigen Treffern bricht der Connector ab und dieses Skript meldet es.

Aufruf:
  python studio_assemble.py --adresse "Bederstrasse 49, Zürich" --out model.json
  python studio_assemble.py --egrid CH689499917725 --gemeinde "Stadt Zürich" --out model.json
  Optionen: --flaeche <m2> --zone "W3" --titel "..." --studie "Studie 2699 ..." --stand TT.MM.JJJJ
"""
import argparse
import json
import os
import subprocess
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
_CONN = os.path.normpath(os.path.join(
    _HERE, "..", "..", "planungsgrundlagen", "connectors", "geo-zh.mjs"))

# Minimal-Mapping haeufiger BFS-Nummern (sonst "BFS <n>")
BFS_NAME = {261: "Stadt Zürich", 247: "Winterthur", 230: "Uster", 53: "Bülach",
            131: "Dietikon", 198: "Adliswil", 199: "Langnau am Albis"}


def run_geo(args):
    cmd = ["node", _CONN, "--json", "--quiet"]
    if args.egrid:
        cmd += ["--egrid", args.egrid]
    elif args.adresse:
        cmd += ["--adresse", args.adresse]
    else:
        sys.exit("Fehler: --adresse oder --egrid noetig.")
    try:
        out = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
    except FileNotFoundError:
        sys.exit("Fehler: node nicht gefunden (geo-zh.mjs braucht Node).")
    if out.returncode != 0:
        sys.exit(f"geo-zh Fehler:\n{out.stderr or out.stdout}")
    try:
        return json.loads(out.stdout)
    except json.JSONDecodeError:
        sys.exit(f"geo-zh: keine JSON-Antwort:\n{out.stdout[:400]}")


def skeleton(geo, args):
    bfs = geo.get("bfs")
    gemeinde = args.gemeinde or BFS_NAME.get(bfs, f"BFS {bfs}" if bfs else "")
    kanton = (geo.get("kanton") or "zh").upper()
    flaeche = float(args.flaeche) if args.flaeche else 0
    zone = args.zone or "(verifizieren)"
    adr = args.adresse or ""
    return {
        "meta": {
            "studie": args.studie or "Machbarkeits-Studio",
            "kicker": "Machbarkeits-Studio · Potenzialstudie",
            "titel": args.titel or (adr.split(",")[0] if adr else "Machbarkeits-Studio"),
            "untertitel": f"{adr} · Parz. {geo.get('parzelle','')} · Stand {args.stand or ''}".strip(" ·"),
            "objekt": "",
            "ort": gemeinde,
            "parzelle": geo.get("parzelle", ""),
            "egrid": geo.get("egrid", ""),
            "zone": zone,
            "kanton": kanton,
            "gemeinde": gemeinde,
            "grundstuecksflaeche_m2": flaeche,
            "stand": args.stand or "",
            "bearbeiter": "JANS",
            "bauherrschaft": ""
        },
        "annahmen": {
            "modus": "verkauf",
            "kennwert_chf_m3": 950, "kennwert_band_low": 850, "kennwert_band_high": 1050,
            "kennwert_quelle": "wissen/grobkosten — vor Gebrauch je Nutzung/Standard pruefen",
            "verkaufspreis_chf_m2": 9000, "marge_pct": 7.0, "diskont_pct": 3.0
        },
        "leitvariante_index": 1,
        "varianten": [
            {"name": "A · Regelbau", "kurz": "zonenkonform", "ziffer": 0.0, "geschosse": 3,
             "zuschlag_pct": 0, "nutzung": "Wohnen"},
            {"name": "B · Arealüberbauung", "kurz": "+ Bonus", "ziffer": 0.0, "geschosse": 4,
             "zuschlag_pct": 0, "nutzung": "Wohnen"},
            {"name": "C · Maximalvolumen", "kurz": "Ausreizung", "ziffer": 0.0, "geschosse": 4,
             "zuschlag_pct": 3, "zuschlag_label": "Komplexität", "nutzung": "Wohnen"}
        ],
        "baurecht": [
            {"label": "Zone", "wert": zone, "quelle": "BZO — via Skill baurecht verifizieren"},
            {"label": "Ausnützung / GFZ", "wert": "(offen)", "quelle": "BZO — verifizieren"},
            {"label": "Grundstücksfläche", "wert": f"{flaeche:.0f} m²" if flaeche else "(offen)",
             "quelle": "Kataster/OEREB — verifizieren"},
            {"label": "EGRID", "wert": geo.get("egrid", ""), "quelle": "amtl. Vermessung (geo-zh)"},
            {"label": "Parzelle", "wert": geo.get("parzelle", ""), "quelle": "amtl. Vermessung (geo-zh)"}
        ],
        "fazit": ["(nach Berechnung der Varianten ergaenzen)"],
        "vorbehalte": [
            "GERUEST — Zone, Ausnuetzungsziffer je Variante und Grundstuecksflaeche sind noch zu "
            "fuellen (Skill baurecht / OEREB-Auszug). Erst danach sind die Zahlen belastbar.",
            "Erstellungskosten Grobschaetzung ± 25 % (Volumen × Kennwert, BKP 1–5).",
            "Markt-Annahmen (Verkaufspreis/Mietzins) gegen UBS-Fact-Sheet / Makleranalyse pruefen."
        ],
        "quellen": f"Geodaten geo-zh (EGRID {geo.get('egrid','')}, Parz. {geo.get('parzelle','')}); "
                   "Kennwerte wissen/grobkosten; Residualwert-Methode machbarkeit-Wissensbasis."
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--adresse")
    ap.add_argument("--egrid")
    ap.add_argument("--gemeinde")
    ap.add_argument("--flaeche")
    ap.add_argument("--zone")
    ap.add_argument("--titel")
    ap.add_argument("--studie")
    ap.add_argument("--stand")
    ap.add_argument("--out", default="model.json")
    args = ap.parse_args()

    geo = run_geo(args)
    if not geo.get("egrid") or not geo.get("parzelle"):
        sys.exit("Abbruch: kein eindeutiger EGRID/Parzelle (identifikatoren-verifizieren). "
                 "Adresse praezisieren oder --egrid setzen.")
    model = skeleton(geo, args)
    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(model, f, ensure_ascii=False, indent=2)
    print(f"OK Geruest: {args.out}")
    print(f"   EGRID {geo['egrid']} · Parz. {geo['parzelle']} · {model['meta']['gemeinde']}")
    print("   Naechste Schritte: 1) Zone+Ausnuetzungsziffer je Variante + Flaeche fuellen "
          "(Skill baurecht / OEREB)  2) build_studio.py  3) build_dossier.py")


if __name__ == "__main__":
    main()
