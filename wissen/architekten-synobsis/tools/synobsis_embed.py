#!/usr/bin/env python3
"""
synobsis_embed.py — STUFE 2: semantischer Vektorindex (laeuft auf dem Mac Mini).

Liest catalog/documents.jsonl (von synobsis_scan.py erzeugt), berechnet
Text-Embeddings und schreibt catalog/vectors.npz (normalisierte Matrix + slugs).
synobsis_query.py --semantic nutzt diesen Index.

Modell (Standard): mehrsprachiges Sentence-Transformer-Modell, lokal, kostenlos,
laeuft offline auf dem Mac Mini (Apple Silicon, MPS). Inhalt ist deutsch/mehr-
sprachig -> bewusst mehrsprachiges Modell.

VORAUSSETZUNG (einmalig auf dem Mac Mini, siehe RUNBOOK-MAC-MINI.md):
  python3.11 -m venv ~/.venvs/synobsis
  ~/.venvs/synobsis/bin/pip install sentence-transformers numpy

Aufruf:
  ~/.venvs/synobsis/bin/python synobsis_embed.py            # baut/aktualisiert Index
"""
import json, sys
from pathlib import Path

OUT = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis")
DOCS = OUT / "catalog" / "documents.jsonl"
VECS = OUT / "catalog" / "vectors.npz"

MODEL_NAME = "intfloat/multilingual-e5-base"
MAX_CHARS = 4000  # pro Dokument fuer den Encoder

_model = None


def _get_model():
    global _model
    if _model is None:
        from sentence_transformers import SentenceTransformer
        _model = SentenceTransformer(MODEL_NAME)
    return _model


def encode(texts):
    """Wird auch von synobsis_query.py (semantic) importiert."""
    import numpy as np
    m = _get_model()
    # e5 erwartet Prefixe; "passage:" fuer Dokumente, "query:" fuer Suchen.
    vecs = m.encode([t[:MAX_CHARS] for t in texts], normalize_embeddings=True,
                    show_progress_bar=False, batch_size=32)
    return np.asarray(vecs, dtype="float32")


def main():
    import numpy as np
    if not DOCS.exists():
        print("Kein documents.jsonl. Erst synobsis_scan.py laufen lassen.", file=sys.stderr)
        sys.exit(2)
    rows = [json.loads(l) for l in DOCS.read_text(encoding="utf-8").splitlines() if l.strip()]
    if not rows:
        print("documents.jsonl leer.", file=sys.stderr); sys.exit(2)
    print(f"Embedde {len(rows)} Architekten-Dokumente mit {MODEL_NAME} ...")
    texts = [f"passage: {r['text']}" for r in rows]
    mat = encode(texts)
    slugs = [r["slug"] for r in rows]
    np.savez_compressed(VECS, mat=mat, slugs=np.array(slugs, dtype=object))
    print(f"Index geschrieben: {VECS}  ({mat.shape[0]} x {mat.shape[1]})")


if __name__ == "__main__":
    main()
