#!/usr/bin/env python3
"""build_dna.py — kompiliert die sechs Twin-Facetten-Wikis in das immer-aktive Gehirn.

Liest aus wissen/twin/wiki/<facette>.md jeweils:
  - den Titel (erste H1)
  - den Block "## Do / Don't fuer den Zwilling"
und schreibt sie in rules/jans-dna.md zwischen den Sentinels
  <!-- BEGIN AUTO: facetten --> ... <!-- END AUTO: facetten -->
Der handgeschriebene Teil oberhalb/unterhalb der Sentinels bleibt unangetastet.

Idempotent: mehrfaches Ausfuehren erzeugt denselben Auto-Block.
Aufruf:  python3 build_dna.py
"""
from __future__ import annotations
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]          # .../jans-ai-hub
WIKI = ROOT / "wissen" / "twin" / "wiki"
DNA = ROOT / "rules" / "jans-dna.md"

# Reihenfolge = Reihenfolge im Gehirn
FACETTEN = [
    ("stimme",            "Stimme & Ton"),
    ("denken",            "Denken & Argumentation"),
    ("haltung",           "Haltung & Werte"),
    ("beziehungsregister","Beziehungsregister"),
    ("fachsignatur",      "Fachsignatur"),
    ("arbeitsweise",      "Arbeitsweise & Orchestrierung"),
]

BEGIN = "<!-- BEGIN AUTO: facetten -->"
END = "<!-- END AUTO: facetten -->"

# matcht "## Do / Don't ..." bis zur naechsten H2 (##) oder Dateiende; tolerant ggue. Apostroph
DODONT = re.compile(r"^##\s*Do\s*/\s*Don.?t.*?$(.*?)(?=^##\s|\Z)", re.M | re.S)


def extract_block(md: str) -> str:
    m = DODONT.search(md)
    if not m:
        return "_(kein Do/Don't-Block gefunden)_"
    return m.group(1).strip()


def build_auto() -> str:
    out = []
    for slug, titel in FACETTEN:
        f = WIKI / f"{slug}.md"
        if not f.exists():
            out.append(f"### {titel}\n_(Artikel fehlt: {slug}.md)_\n")
            continue
        block = extract_block(f.read_text(encoding="utf-8"))
        out.append(f"### {titel}\n{block}\n")
    return "\n".join(out).strip()


def main() -> int:
    if not DNA.exists():
        print(f"FEHLER: {DNA} existiert nicht. Zuerst rules/jans-dna.md anlegen.", file=sys.stderr)
        return 1
    dna = DNA.read_text(encoding="utf-8")
    if BEGIN not in dna or END not in dna:
        print(f"FEHLER: Sentinels nicht in {DNA} gefunden.", file=sys.stderr)
        return 2
    auto = build_auto()
    new = re.sub(
        re.escape(BEGIN) + r".*?" + re.escape(END),
        f"{BEGIN}\n{auto}\n{END}",
        dna,
        flags=re.S,
    )
    if new != dna:
        DNA.write_text(new, encoding="utf-8")
        print(f"OK: Auto-Block in {DNA} aktualisiert ({len(FACETTEN)} Facetten).")
    else:
        print("OK: Auto-Block bereits aktuell (keine Aenderung).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
