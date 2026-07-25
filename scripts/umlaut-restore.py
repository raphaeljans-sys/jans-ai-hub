#!/usr/bin/env python3
"""
umlaut-restore.py — stellt in Markdown-Texten echte Umlaute ä/ö/ü wieder her,
wo urspruenglich die Ersatzschreibung ae/oe/ue verwendet wurde (Rule
`umlaute-konvention.md`).

Arbeitsweise (bewusst NICHT als Blind-sed):
  1. Ersetzt wird ausschliesslich anhand einer **kuratierten Token-Mapping-Datei**
     (JSON, Token -> korrigiertes Token). Ein Token, das nicht in der Mapping-Datei
     steht, bleibt garantiert unveraendert. So koennen legitime Buchstabenfolgen
     ("neue", "bauen", "Feuerwehr", "Quelle", "aktuell", "Risikoermittlung",
     "Grauenergie", "aeesuisse", "Oetwil") nicht verfaelscht werden.
  2. Schutzzonen bleiben in jedem Fall unberuehrt: Code-Bloecke und Inline-Code,
     URLs, [[Wikilinks]], Markdown-Linkziele, Pfade sowie Dateinamen. Das ist
     zwingend, weil Datei-/Ordnernamen und Wiki-Slugs nach
     `dateinamen-konvention.md` ASCII bleiben muessen.

Aufruf:
    python3 umlaut-restore.py --mapping mapping.json [--apply] DATEI [DATEI ...]

Ohne --apply laeuft ein Trockenlauf (zeigt nur, was sich aendern wuerde).
"""

import argparse
import json
import re
import sys

# Schutzzonen: werden vor der Ersetzung maskiert und danach zurueckgesetzt.
PROTECT = [
    re.compile(r"```.*?```", re.S),                 # Code-Bloecke
    re.compile(r"`[^`\n]*`"),                       # Inline-Code
    re.compile(r"<[^>\n]+>"),                       # HTML-Tags / <url>
    re.compile(r"https?://\S+"),                    # URLs
    re.compile(r"\[\[[^\]]*\]\]"),                  # Wikilinks (Slugs = Dateinamen)
    re.compile(r"\]\([^)\n]*\)"),                   # Markdown-Linkziele
    re.compile(r"[~/][\w./\-]+"),                   # Pfade
    re.compile(r"[\w\-]+\.(?:md|mjs|js|py|sh|json|pdf|docx|xlsx|csv|txt|html|zip)\b"),
    re.compile(r"\b[a-z0-9]+(?:-[a-z0-9]+){2,}\b"),  # Slugs (kleingeschrieben, >=3 Teile)
]

SENTINEL = "{}"  # Private-Use-Bereich, kommt in Fachtexten nicht vor


def mask(text):
    store = []

    def grab(m):
        store.append(m.group(0))
        return SENTINEL.format(len(store) - 1)

    for pat in PROTECT:
        text = pat.sub(grab, text)
    return text, store


def unmask(text, store):
    for i, original in enumerate(store):
        text = text.replace(SENTINEL.format(i), original)
    return text


def restore(text, mapping):
    masked, store = mask(text)
    pattern = re.compile(
        r"(?<![\w])(" + "|".join(sorted(map(re.escape, mapping), key=len, reverse=True)) + r")(?![\w])"
    )
    out = pattern.sub(lambda m: mapping[m.group(1)], masked)
    return unmask(out, store)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mapping", required=True)
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("files", nargs="+")
    args = ap.parse_args()

    mapping = json.load(open(args.mapping, encoding="utf-8"))
    total = 0
    for path in args.files:
        before = open(path, encoding="utf-8").read()
        after = restore(before, mapping)
        if before == after:
            continue
        changed = sum(1 for a, b in zip(before.split("\n"), after.split("\n")) if a != b)
        total += changed
        print(f"{'geaendert' if args.apply else 'wuerde aendern'}: {path} ({changed} Zeilen)")
        if args.apply:
            open(path, "w", encoding="utf-8").write(after)
    print(f"Summe: {total} Zeilen in {len(args.files)} geprueften Dateien")
    return 0


if __name__ == "__main__":
    sys.exit(main())
