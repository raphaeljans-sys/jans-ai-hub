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
# Ziel seit 03.08.2026 (Grundkontext-Diaet Runde 2): der Facetten-Block wird NICHT mehr
# nach rules/jans-dna.md geschrieben (das ist der @-importierte Kern, 3.9 kB, immer aktiv),
# sondern in die nicht importierte rules/jans-dna-facetten.md, die von den
# text-erzeugenden Skills/Agenten lazily geladen wird.
DNA = ROOT / "rules" / "jans-dna-facetten.md"

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

# --- Wachstums-Riegel (03.08.2026, Grundkontext-Diaet Runde 2) --------------------
# Der Auto-Block wird von JEDER Session geladen (Grundkontext ueber den @-Import in
# CLAUDE.md). Am 03.08.2026 waren das allein auf dem MacBook Pro 111 Sessions; der
# Block war unbemerkt von 15.4 kB (19.07.) auf 28.5 kB gewachsen, weil er ohne jede
# Obergrenze kompiliert wurde und `twin-fidelity-review` taeglich laeuft.
# Dieser Riegel kuerzt NICHTS von selbst — er bricht ab und verlangt eine
# Entscheidung. Blindes Truncaten waere hier falsch: die Do/Don't-Bloecke sind
# nahezu reine Regel, kaum Beleg-Prosa (geprueft 03.08.2026).
# Wer die Grenze anhebt, hebt die Fixkosten JEDER Session — bewusst tun.
MAX_AUTO_BYTES = 30000        # harte Obergrenze des kompilierten Blocks
WARN_AUTO_BYTES = 24000       # ab hier warnen, damit es nicht erst am Anschlag auffaellt

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

    # Wachstums-Riegel: NIE still wachsen lassen (siehe Kommentar bei MAX_AUTO_BYTES)
    groesse = len(auto.encode("utf-8"))
    if groesse > MAX_AUTO_BYTES:
        print(
            f"ABBRUCH: Auto-Block waere {groesse} B gross, Obergrenze ist {MAX_AUTO_BYTES} B.\n"
            f"  jans-dna.md wird von JEDER Session geladen — dieser Block ist Fixkosten.\n"
            f"  Nichts geschrieben. Entscheide bewusst:\n"
            f"  (a) einen Facetten-Block in wissen/twin/wiki/ verdichten (Regeln behalten,\n"
            f"      Beleg-Prosa und abgeloeste Zwischenregeln in den Artikel-Fliesstext), oder\n"
            f"  (b) MAX_AUTO_BYTES hier bewusst anheben und die Mehrkosten akzeptieren.\n"
            f"  Groesse je Facette:",
            file=sys.stderr,
        )
        for slug, titel in FACETTEN:
            f = WIKI / f"{slug}.md"
            n = len(extract_block(f.read_text(encoding="utf-8")).encode("utf-8")) if f.exists() else 0
            print(f"    {n:7d} B  {titel}", file=sys.stderr)
        return 3
    if groesse > WARN_AUTO_BYTES:
        print(
            f"WARNUNG: Auto-Block {groesse} B, Obergrenze {MAX_AUTO_BYTES} B "
            f"({MAX_AUTO_BYTES - groesse} B Reserve). Verdichten einplanen.",
            file=sys.stderr,
        )

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
