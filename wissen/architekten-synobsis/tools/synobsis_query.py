#!/usr/bin/env python3
"""
synobsis_query.py — Recherche im Architekten-Synobsis-Katalog.

Zwei Modi:
  - Stichwort (Standard, KEINE Abhaengigkeit): Treffer ueber Token-Ueberlappung
    im Embedding-Dokument (Architekt + Projekte + Ort + Textauszug). Sofort
    nutzbar, solange Stufe 2 (Embeddings) noch nicht gebaut ist.
  - Semantisch (--semantic): nutzt catalog/vectors.npz (von synobsis_embed.py
    auf dem Mac Mini erzeugt). Faellt automatisch auf Stichwort zurueck, wenn
    kein Vektorindex vorliegt.

Aufruf:
  python synobsis_query.py "Backsteinbau Kirche Aalto"
  python synobsis_query.py --semantic "introvertierter Hof Beton" --k 8
"""
import argparse, json, math, re, sys
from pathlib import Path

OUT = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis")
DOCS = OUT / "catalog" / "documents.jsonl"
VECS = OUT / "catalog" / "vectors.npz"


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
        # leichte TF-Gewichtung + Bonus fuer Treffer im Namen
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
    # Query-Embedding ueber denselben Encoder wie synobsis_embed.py
    from synobsis_embed import encode  # type: ignore
    qv = encode([query])[0]
    qv = qv / (np.linalg.norm(qv) + 1e-9)
    sims = mat @ qv
    order = sims.argsort()[::-1][:k]
    by_slug = {r["slug"]: r for r in rows}
    return [(float(sims[i]), by_slug.get(slugs[i], {"name": slugs[i], "pfad": "?"})) for i in order]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("query", nargs="+")
    ap.add_argument("--k", type=int, default=8)
    ap.add_argument("--semantic", action="store_true")
    args = ap.parse_args()
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
