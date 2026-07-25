#!/usr/bin/env python3
"""
synobsis_query.py — Recherche im Architekten-Synobsis-Katalog.

Drei Modi:
  - Stichwort (Standard, KEINE Abhaengigkeit): Treffer ueber Token-Ueberlappung
    im Embedding-Dokument (Architekt + Projekte + Ort + Textauszug). Sofort
    nutzbar, solange Stufe 2 (Embeddings) noch nicht gebaut ist.
  - Semantisch (--semantic): nutzt catalog/vectors.npz (von synobsis_embed.py
    auf dem Mac Mini erzeugt). Faellt automatisch auf Stichwort zurueck, wenn
    kein Vektorindex vorliegt.
  - Facetten (--raumtyp, --cad, --architekt): filtert ueber strukturierte
    Katalogdaten (typology-map.json, cad-index.json, Architekt-JSONs).

Aufruf:
  python synobsis_query.py "Backsteinbau Kirche Aalto"
  python synobsis_query.py --semantic "introvertierter Hof Beton" --k 8
  python synobsis_query.py --raumtyp "Grosse Halle"
  python synobsis_query.py --raumtyp "Skulptularer Raum" --cad
  python synobsis_query.py --cad --cad-typ dwg
  python synobsis_query.py --architekt "Scarpa"
  python synobsis_query.py --list-raumtypen
  python synobsis_query.py --stats
"""
import argparse, json, math, re, sys
from pathlib import Path

OUT = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis")
CATALOG = OUT / "catalog"
DOCS = CATALOG / "documents.jsonl"
VECS = CATALOG / "vectors.npz"
TYPO_MAP = CATALOG / "typology-map.json"
CAD_IDX = CATALOG / "cad-index.json"
ALIASES = CATALOG / "aliases.json"


def load_docs():
    if not DOCS.exists():
        print("Kein Katalog. Erst synobsis_scan.py laufen lassen.", file=sys.stderr)
        sys.exit(2)
    rows = []
    for line in DOCS.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line:
            rows.append(json.loads(line))
    return rows


def load_architect_records():
    """Laedt alle Architekt-JSON-Datensaetze aus dem Katalog."""
    records = []
    skip = {"documents.jsonl", "cad-index.json", "aliases.json",
            "typology-map.json", "raumtypen-beschreibungen.json"}
    for f in sorted(CATALOG.glob("*.json")):
        if f.name in skip:
            continue
        try:
            records.append(json.loads(f.read_text(encoding="utf-8")))
        except Exception:
            continue
    return records


def load_typology():
    if not TYPO_MAP.exists():
        return None
    try:
        return json.loads(TYPO_MAP.read_text(encoding="utf-8"))
    except Exception:
        return None


def load_cad_index():
    if not CAD_IDX.exists():
        return None
    try:
        return json.loads(CAD_IDX.read_text(encoding="utf-8"))
    except Exception:
        return None


def load_alias_map():
    if not ALIASES.exists():
        return {}
    try:
        data = json.loads(ALIASES.read_text(encoding="utf-8"))
        return {k: v for k, v in data.items() if not k.startswith("_")}
    except Exception:
        return {}


def tok(s):
    return [w for w in re.findall(r"\w+", s.lower(), flags=re.UNICODE) if len(w) > 2]


def keyword_search(query, rows, k):
    q = set(tok(query))
    scored = []
    for r in rows:
        words = tok(r["text"])
        if not words:
            continue
        wset = set(words)
        overlap = len(q & wset)
        if overlap == 0:
            continue
        tf = sum(words.count(w) for w in q)
        name_bonus = 2 * len(q & set(tok(r["name"])))
        score = overlap * 3 + math.log1p(tf) + name_bonus
        scored.append((score, r))
    scored.sort(key=lambda x: -x[0])
    return scored[:k]


def semantic_search(query, rows, k):
    try:
        import numpy as np
    except Exception:
        print("(numpy fehlt -> Stichwort-Modus)", file=sys.stderr)
        return keyword_search(query, rows, k)
    if not VECS.exists():
        print("(kein Vektorindex -> Stichwort-Modus; Stufe 2 auf Mac Mini bauen)", file=sys.stderr)
        return keyword_search(query, rows, k)
    data = np.load(VECS, allow_pickle=True)
    mat, slugs = data["mat"], list(data["slugs"])
    from synobsis_embed import encode  # type: ignore
    qv = encode([query])[0]
    qv = qv / (np.linalg.norm(qv) + 1e-9)
    sims = mat @ qv
    order = sims.argsort()[::-1][:k]
    by_slug = {r["slug"]: r for r in rows}
    return [(float(sims[i]), by_slug.get(slugs[i], {"name": slugs[i], "pfad": "?"})) for i in order]


# --- Facetten-Suche ---

def search_raumtyp(raumtyp, cad_only=False, cad_typ=None):
    """Zeigt alle Projekte eines Raumtyps, optional gefiltert auf CAD-Verfuegbarkeit."""
    typo = load_typology()
    if not typo:
        print("typology-map.json nicht gefunden.", file=sys.stderr)
        return

    matching = []
    for name, data in typo["raumtypen"].items():
        if raumtyp.lower() in name.lower():
            matching.append((name, data))

    if not matching:
        print(f"Kein Raumtyp passend zu '{raumtyp}'.")
        print("Verfuegbare Typen:")
        for name in typo["raumtypen"]:
            print(f"  - {name}")
        return

    cad_index = load_cad_index() if cad_only else None
    cad_slugs = set()
    cad_by_slug = {}
    if cad_index:
        for entry in cad_index.get("eintraege", []):
            cad_slugs.add(entry["slug"])
            cad_by_slug[entry["slug"]] = entry

    for name, data in matching:
        projekte = data["projekte"]
        print(f"\n{'='*60}")
        print(f"  {name}  ({len(projekte)} Projekte)")
        print(f"{'='*60}")

        for p in projekte:
            slug = p.get("architekt_slug")
            if cad_only and slug and slug not in cad_slugs:
                continue

            line = f"  {p.get('projekt', p.get('ordner', '?'))}"
            if p.get("ort"):
                line += f", {p['ort']}"
            if p.get("architekt"):
                line += f"  — {p['architekt']}"
            if p.get("jahr"):
                line += f" ({p['jahr']})"
            print(line)

            if cad_only and slug and slug in cad_by_slug:
                cc = cad_by_slug[slug]["cad_counts"]
                parts = [f"{c}× {t.upper()}" for t, c in cc.items()]
                print(f"          CAD: {', '.join(parts)}")


def search_cad(cad_typ=None, k=20):
    """Zeigt Architekten mit den meisten CAD-Dateien."""
    cad_index = load_cad_index()
    if not cad_index:
        print("cad-index.json nicht gefunden. Erst synobsis_scan.py laufen lassen.", file=sys.stderr)
        return

    entries = cad_index.get("eintraege", [])
    if cad_typ:
        entries = [e for e in entries if cad_typ.lower() in e.get("cad_counts", {})]
        entries.sort(key=lambda e: -e["cad_counts"].get(cad_typ.lower(), 0))

    total_cad = sum(e["cad_total"] for e in cad_index.get("eintraege", []))
    print(f"Architekten mit CAD: {cad_index['architekten_mit_cad']}  (Total: {total_cad} Dateien)")
    if cad_typ:
        print(f"Filter: nur {cad_typ.upper()}")
    print()

    for e in entries[:k]:
        cc = e["cad_counts"]
        parts = [f"{c}× {t.upper()}" for t, c in cc.items()]
        print(f"  {e['cad_total']:4d}  {e['name']}")
        print(f"          {', '.join(parts)}")


def search_architekt(query, k=8):
    """Zeigt Details zu einem Architekten (Projekte, CAD, Referenzbilder)."""
    records = load_architect_records()
    aliases = load_alias_map()
    q = query.lower()

    hits = []
    for r in records:
        name = r["architekt"]["name"].lower()
        slug = r["slug"].lower()
        if q in name or q in slug:
            hits.append(r)

    if not hits:
        print(f"Kein Architekt passend zu '{query}'.")
        return

    for r in hits[:k]:
        inv = r["inventar"]
        is_alias = r.get("kanonisch")
        print(f"\n{'='*60}")
        print(f"  {r['architekt']['name']}")
        if is_alias:
            print(f"  → Alias von: {is_alias}")
        print(f"  {r['pfad']}")
        print(f"{'='*60}")
        print(f"  Projekte: {r['projekt_anzahl']}  |  Bilder: {inv['bilder']}  |  Dok: {inv['dokumente']}  |  CAD: {inv['cad']}")

        cad = r.get("cad_dateien", {})
        cad_counts = {t: len(p) for t, p in cad.items() if p}
        if cad_counts:
            parts = [f"{c}× {t.upper()}" for t, c in cad_counts.items()]
            print(f"  CAD-Dateien: {', '.join(parts)}")

        refs = r.get("referenzbilder", [])
        if refs:
            print(f"  Referenzbilder: {len(refs)} kuratiert")
            for rp in refs[:5]:
                print(f"    {rp}")
            if len(refs) > 5:
                print(f"    ... (+{len(refs)-5} weitere)")

        if r["projekte"]:
            print(f"\n  Projekte:")
            for p in r["projekte"]:
                line = f"    - {p['titel']}"
                if p["jahre"]:
                    line += f" ({', '.join(p['jahre'])})"
                print(line)


def list_raumtypen():
    typo = load_typology()
    if not typo:
        print("typology-map.json nicht gefunden.", file=sys.stderr)
        return

    try:
        desc_data = json.loads(
            (CATALOG / "raumtypen-beschreibungen.json").read_text(encoding="utf-8"))
        descs = desc_data.get("raumtypen", {})
    except Exception:
        descs = {}

    total = sum(len(d["projekte"]) for d in typo["raumtypen"].values())
    print(f"9 Raumtypen  |  {total} Projekte total\n")
    for name, data in typo["raumtypen"].items():
        n = len(data["projekte"])
        desc = descs.get(name, {}).get("beschreibung", "")
        print(f"  {name} ({n})")
        if desc:
            print(f"    {desc}")
        print()


def show_stats():
    """Zeigt Gesamtstatistik des Katalogs."""
    records = load_architect_records()
    cad_index = load_cad_index()
    typo = load_typology()
    aliases = load_alias_map()

    total_proj = sum(r["projekt_anzahl"] for r in records)
    total_img = sum(r["inventar"]["bilder"] for r in records)
    total_doc = sum(r["inventar"]["dokumente"] for r in records)
    total_cad = sum(r["inventar"]["cad"] for r in records)
    total_files = sum(r["inventar"]["total"] for r in records)

    print("=== Architekten-Synobsis — Katalog-Statistik ===\n")
    print(f"  Architekten indexiert:  {len(records)}")
    print(f"  Aliase (Duplikate):    {len(aliases)}")
    print(f"  Projekte total:        {total_proj}")
    print(f"  Dateien total:         {total_files}")
    print(f"    Bilder:              {total_img}")
    print(f"    Dokumente:           {total_doc}")
    print(f"    CAD:                 {total_cad}")

    if cad_index:
        print(f"\n  Architekten mit CAD:   {cad_index['architekten_mit_cad']}")
        all_types = {}
        for e in cad_index.get("eintraege", []):
            for t, c in e["cad_counts"].items():
                all_types[t] = all_types.get(t, 0) + c
        for t, c in sorted(all_types.items(), key=lambda x: -x[1]):
            print(f"    {t.upper():6s}  {c}")

    if typo:
        total_typo = sum(len(d["projekte"]) for d in typo["raumtypen"].values())
        print(f"\n  Raumtypen:             9 ({total_typo} Projekte zugeordnet)")


def main():
    ap = argparse.ArgumentParser(
        description="Recherche im Architekten-Synobsis-Katalog",
        formatter_class=argparse.RawDescriptionHelpFormatter)

    # Stichwort-/Semantik-Suche
    ap.add_argument("query", nargs="*", help="Suchbegriffe (Stichwort-Suche)")
    ap.add_argument("--k", type=int, default=8, help="Max Treffer (Standard: 8)")
    ap.add_argument("--semantic", action="store_true", help="Semantische Suche (braucht Vektorindex)")

    # Facetten
    ap.add_argument("--raumtyp", type=str, help="Filter nach Raumtypologie")
    ap.add_argument("--cad", action="store_true", help="Nur Architekten/Projekte mit CAD-Dateien")
    ap.add_argument("--cad-typ", type=str, help="CAD-Typ-Filter (dwg, dxf, pln, ifc, 3dm, vwx)")
    ap.add_argument("--architekt", type=str, help="Architekten-Detail-Suche")

    # Meta
    ap.add_argument("--list-raumtypen", action="store_true", help="Alle 9 Raumtypen anzeigen")
    ap.add_argument("--stats", action="store_true", help="Katalog-Gesamtstatistik")

    args = ap.parse_args()

    if args.stats:
        show_stats()
        return

    if args.list_raumtypen:
        list_raumtypen()
        return

    if args.architekt:
        search_architekt(args.architekt, args.k)
        return

    if args.raumtyp:
        search_raumtyp(args.raumtyp, cad_only=args.cad, cad_typ=args.cad_typ)
        return

    if args.cad and not args.query:
        search_cad(cad_typ=args.cad_typ, k=args.k)
        return

    if not args.query:
        ap.print_help()
        return

    query = " ".join(args.query)
    rows = load_docs()
    hits = semantic_search(query, rows, args.k) if args.semantic else keyword_search(query, rows, args.k)
    if not hits:
        print("Keine Treffer.")
        return
    print(f"Treffer fuer: {query}\n")
    for score, r in hits:
        print(f"  {score:6.2f}  {r['name']}")
        print(f"          {r['pfad']}")


if __name__ == "__main__":
    main()
