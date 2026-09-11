#!/usr/bin/env python3
"""stilmetrik.py — deterministische Mikro-Stil-Kennzahlen eines Textkorpus.

Belegt die qualitativen Marker der Facette STIMME mit Zahlen. Liest Klartext von STDIN
oder aus Datei(en) und gibt eine kompakte Kennzahl-Uebersicht aus (auch als --json).

Gemessen:
  - Du-Gross-Quote: Anteil grossgeschriebener Du-Formen (Du/Dich/Dir/Dein...) an allen
  - Tausender-Apostroph: Treffer von  \\d'\\d  (Schweizer Schreibweise)
  - "%"-mit-Leerschlag-Quote
  - Ellipsen "…" / ".."  je 1000 Woerter
  - Unterstrich-Bullets "_ " am Zeilenanfang (Raphaels eigenes Aufzaehlungszeichen)
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
# 11.09.2026 (Batch 119): zwischen Anredewort und Namen steht jetzt [ \t]+ statt \s+.
# Mit \s+ lief das Muster ueber den Zeilenumbruch: die NAMENLOSE Anrede «Guten Morgen»
# wurde mit dem ersten Wort der Folgezeile als «Guten Morgen\nWir» gezaehlt — eine
# erfundene Anrede statt der belegten Nullstufe. Dazu neu: «Guten Tag/Abend <Name>»
# (seit Batch 117 mehrfach belegt, lief bisher als Null durch), die namenlose
# Tageszeit-Anrede als eigene Stufe und «Hello/Hi <Vorname>» (Batch 118, Rule anrede-kontakte).
ANREDEN = [r"Hoi[ \t]+\w+", r"Geschaetzter?[ \t]+\w+", r"Gesch[aä]tzte?r?[ \t]+\w+",
           r"Guten[ \t]+(?:Morgen|Tag|Abend)[ \t]+\w+", r"Sehr[ \t]+geehrte[rs]?[ \t]+\w+",
           r"Liebe[rs]?[ \t]+\w+",
           # «werter» — eigene Waermestufe im Sie-Register, belegt Batches 100 und 101
           # (21.08.2026); stand bis dahin nicht im Muster und blieb ungezaehlt.
           r"[Ww]erte[rs]?[ \t]+\w+",
           r"(?m)^Guten[ \t]+(?:Morgen|Tag|Abend)(?=[ \t]*,?[ \t]*$)",
           r"\bHello[ \t]+\w+", r"(?m)^Hi[ \t]+\w+"]
# 11.09.2026 (Batch 119): «Freundlich Grüsse» (fehlendes e, eigene Hand 10.09.2026 04:35)
# traf das Muster nicht; e? macht den Tippfehler zaehlbar statt unsichtbar.
GRUESSE = [r"Freundliche?\s+Gr[uü]sse", r"Lieber\s+Gruss", r"Liebe\s+Gr[uü]sse",
           r"Viele\s+Gr[uü]sse", r"Beste\s+Gr[uü]sse",
           # Kurzformen, belegt Batch 98 (17.08.2026): «Lgr» als knappste Gruss-Stufe
           # 27.08.2026 (Batch 106): «Lgr» stand seit Batch 98 im Muster und traf trotzdem
           # nicht — das Gold vom 26.08. schreibt es KLEIN («lgr»). Ein gepflegtes Muster
           # mit falscher Schreibung ist so still wie ein fehlendes.
           r"\b[Ll]gr\b", r"\bLG\b",
           # Nachgetragen Batch 105 (26.08.2026): zwei belegte Stufen liefen als Null durch
           # die Metrik, weil ihr Muster fehlte. «Bester Gruss» (Batch 104) traf
           # r"Beste\s+Gr[uü]sse" NICHT; «Danke und Gruss» (Batch 105) stand gar nicht drin.
           # Eine Null aus einem Messwerkzeug ist zuerst eine Aussage ueber das Muster.
           r"Danke\s+und\s+Gr[uü]ss", r"Bester\s+Gruss", r"Besten\s+Gruss"]


def measure(text: str) -> dict:
    words = re.findall(r"\b[\wäöüÄÖÜ']+\b", text)
    nwords = max(len(words), 1)

    du_cap = sum(len(re.findall(rf"\b{f}\b", text)) for f in DU_FORMS)
    du_low = sum(len(re.findall(rf"\b{f.lower()}\b", text)) for f in DU_FORMS if f[0].isupper())
    du_formen_total = du_cap + du_low
    du_total = max(du_formen_total, 1)

    apostroph = len(re.findall(r"\d['’]\d", text))
    prozent_total = text.count("%")
    prozent_space = len(re.findall(r"\s%", text))

    ellipsen = text.count("…") + len(re.findall(r"(?<!\.)\.\.(?!\.)", text))

    # Unterstrich-Bullet «_ Kueche: …» — Raphaels eigenes Aufzaehlungszeichen (Batch 101,
    # 21.08.2026: in zwei Gattungen desselben Fensters belegt, mit und ohne Leerschlag).
    # Der Zwilling setzt es nie; damit ist die Luecke messbar statt nur beschrieben.
    # ueberholt 07.09.2026 (Wissens-Chef Lauf 54): der Satz darueber gilt nicht mehr. Der
    # Zwilling erzeugt den Marker selbst -- belegt seit 17.08.2026 in
    # wissen/twin/wiki/fachsignatur.md Z. 2307-2311 (Batch 96, Quelle 05.08.2026, beide
    # Fassungen) und erneut in wissen/twin/wiki/arbeitsweise.md Z. 4355-4361 (Batch 115).
    # Der Zaehler bleibt gueltig als STIL-Kennzahl, taugt aber NICHT als Herkunfts- oder
    # Authentizitaetssignal (neunte Falle: was der Zwilling gelernt hat, kann er erzeugen).
    # Belastbar trennen die Haende nur Fehlerdichte je Absatz und internetMessageId.
    unterstrich_bullets = len(re.findall(r"(?m)^\s*_\s?\S", text))

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
        # 27.08.2026 (Batch 106): bis hierher gab die Quote bei NULL Du-Formen still 0.0
        # aus — nicht unterscheidbar von «alle klein geschrieben». Genau diese Leermessung
        # stand hinter dem Streit Batch 104 («Autorschafts-Detektor») gegen Batch 105
        # («trennt nicht»). Jetzt None bei leerer Grundgesamtheit, analog zur Prozent-Quote,
        # plus der Zaehler selbst — eine Quote ohne ihre Grundgesamtheit ist nicht lesbar.
        "du_formen_total": du_formen_total,
        "du_gross_quote": round(du_cap / du_total, 3) if du_formen_total else None,
        "tausender_apostroph_treffer": apostroph,
        "prozent_mit_leerschlag_quote": round(prozent_space / max(prozent_total, 1), 3) if prozent_total else None,
        "ellipsen_pro_1000w": round(ellipsen / nwords * 1000, 2),
        "unterstrich_bullets": unterstrich_bullets,
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
