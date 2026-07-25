#!/usr/bin/env python3
"""stilmetrik.py — deterministische Mikro-Stil-Kennzahlen eines Textkorpus.

Belegt die qualitativen Marker der Facette STIMME mit Zahlen. Liest Klartext von STDIN
oder aus Datei(en) und gibt eine kompakte Kennzahl-Uebersicht aus (auch als --json).

Gemessen:
  - Du-Gross-Quote: Anteil grossgeschriebener Du-Formen (Du/Dich/Dir/Dein...) an allen
  - Tausender-Apostroph: Treffer von  \\d'\\d  (Schweizer Schreibweise)
  - "%"-mit-Leerschlag-Quote
  - Ellipsen "…" / ".."  je 1000 Woerter
  - Anreden / Gruesse (erkannt, mit Haeufigkeit)
  - durchschnittliche Satzlaenge (Woerter)

Aufruf:
  python3 stilmetrik.py < korpus.txt
  python3 stilmetrik.py mail1.txt mail2.txt --json
"""
from __future__ import annotations
import json
import re
import sys
from collections import Counter

DU_FORMS = ["Du", "Dich", "Dir", "Dein", "Deine", "Deiner", "Deinem", "Deinen", "Euch", "Euer", "Eure"]
ANREDEN = [r"Hoi\s+\w+", r"Geschaetzter?\s+\w+", r"Gesch[aä]tzte?r?\s+\w+",
           r"Guten\s+Morgen\s+\w+", r"Sehr\s+geehrte[rs]?\s+\w+", r"Liebe[rs]?\s+\w+"]
GRUESSE = [r"Freundliche\s+Gr[uü]sse", r"Lieber\s+Gruss", r"Liebe\s+Gr[uü]sse",
           r"Viele\s+Gr[uü]sse", r"Beste\s+Gr[uü]sse"]


def measure(text: str) -> dict:
    words = re.findall(r"\b[\wäöüÄÖÜ']+\b", text)
    nwords = max(len(words), 1)

    du_cap = sum(len(re.findall(rf"\b{f}\b", text)) for f in DU_FORMS)
    du_low = sum(len(re.findall(rf"\b{f.lower()}\b", text)) for f in DU_FORMS if f[0].isupper())
    du_total = max(du_cap + du_low, 1)

    apostroph = len(re.findall(r"\d['’]\d", text))
    prozent_total = text.count("%")
    prozent_space = len(re.findall(r"\s%", text))

    ellipsen = text.count("…") + len(re.findall(r"(?<!\.)\.\.(?!\.)", text))

    anreden = Counter()
    for pat in ANREDEN:
        for m in re.findall(pat, text):
            anreden[m.strip()] += 1
    gruesse = Counter()
    for pat in GRUESSE:
        for m in re.findall(pat, text):
            gruesse[m.strip()] += 1

    sentences = [s for s in re.split(r"[.!?]+\s", text) if s.strip()]
    avg_sent = round(nwords / max(len(sentences), 1), 1)

    return {
        "woerter": nwords,
        "du_gross_quote": round(du_cap / du_total, 3),
        "tausender_apostroph_treffer": apostroph,
        "prozent_mit_leerschlag_quote": round(prozent_space / max(prozent_total, 1), 3) if prozent_total else None,
        "ellipsen_pro_1000w": round(ellipsen / nwords * 1000, 2),
        "anreden": dict(anreden.most_common()),
        "gruesse": dict(gruesse.most_common()),
        "satzlaenge_woerter_avg": avg_sent,
    }


def main() -> int:
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    as_json = "--json" in sys.argv
    if args:
        text = "\n".join(open(a, encoding="utf-8").read() for a in args)
    else:
        text = sys.stdin.read()
    res = measure(text)
    if as_json:
        print(json.dumps(res, ensure_ascii=False, indent=2))
    else:
        print("Twin Stilmetrik")
        for k, v in res.items():
            print(f"  {k}: {v}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
