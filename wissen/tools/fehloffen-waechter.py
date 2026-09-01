#!/usr/bin/env python3
"""fehloffen-waechter — Frage: REDUNDANZ. Ist eine als offen gemeldete Frage schon beantwortet?

Siebtes Werkzeug im Wissens-Layer, angelegt 01.09.2026 aus Befund E-R171-1 der KB energie
(wissen/energie/wiki/QUESTIONS.md, Run 171): zwei Laeufe in Folge (170, 171) haben je einen
Punkt als "noch nicht gelesen"/"nicht destilliert" bearbeitet, der laut dem Frontmatter-Feld
`gelesen:` eines eigenen Destillats laengst vollstaendig gelesen war. Die Widerlegung stand
beide Male woertlich im Frontmatter, ohne dass eine Volltextsuche noetig gewesen waere.

Das Werkzeug meldet KANDIDATEN, keine Urteile (gleiche Konvention wie die uebrigen sechs
Werkzeuge in diesem Ordner): fuer jeden offenen QUESTIONS-Eintrag mit einer der drei
Formulierungen ("noch nicht gelesen", "nicht destilliert", "noch offen") werden fett gesetzte
oder [[verlinkte]] Begriffe extrahiert und gegen die Frontmatter-Felder `quelle`/`titel` sowie
den Dateinamen jedes Destillats abgeglichen. Bei mindestens zwei gemeinsamen Sachwoertern UND
einem Feld `gelesen:`, das keinen Teillese-Marker traegt (kein "nicht", "nur auszugsweise",
"Seiten X-Y (Teil"), wird der Treffer als Fehl-Offen-Verdacht gemeldet.

Aufruf:
    python3 wissen/tools/fehloffen-waechter.py            # alle Wissensbasen mit destillate/
    python3 wissen/tools/fehloffen-waechter.py energie     # eine
Exit: 0 = keine Befunde · 1 = Befunde (wie die uebrigen Werkzeuge).

LESEND. Ein Treffer ist ein Verdacht, kein Vollzug (Rule auto-verbesserungen 260729b) — vor
dem Schliessen eines QUESTIONS-Eintrags das Destillat selbst gegenlesen.
"""

import argparse
import pathlib
import re
import sys

HUB = pathlib.Path("/Volumes/daten/jans-ai-hub")

TRIGGER = re.compile(r"noch nicht gelesen|nicht destilliert|noch offen", re.IGNORECASE)

STOPWORTE = {
    "und", "oder", "der", "die", "das", "den", "dem", "des", "eine", "einer", "einem",
    "einen", "nicht", "noch", "auch", "sind", "ist", "wird", "wurde", "werden", "fuer",
    "für", "mit", "von", "bei", "aus", "als", "zum", "zur", "auf", "sich", "kein", "keine",
    "bereits", "bisher", "offen", "gelesen", "destilliert", "quelle", "seite", "seiten",
    "diese", "dieser", "dieses", "wurden", "waren", "haben", "kandidat", "kandidaten",
}

TEILLESE = re.compile(
    r"nicht (vollst|gelesen)|nur (auszugsweise|teilweise)|auszugsweise|"
    r"seiten? \d+[\-–]\d+ \(?teil|noch nicht vollst",
    re.IGNORECASE,
)


def frontmatter(text):
    """Zeilenweise statt mit yaml (siehe datenstand-waechter.py — gleiche Begruendung:
    Frontmatter-Werte mit Doppelpunkten/Klammern/Umlauten, die ein strikter Parser ablehnt)."""
    if not text.startswith("---"):
        return {}
    ende = text.find("\n---", 3)
    if ende == -1:
        return {}
    feld = {}
    for zeile in text[3:ende].splitlines():
        if ":" in zeile and not zeile.startswith((" ", "\t", "-")):
            k, v = zeile.split(":", 1)
            feld[k.strip()] = v.strip()
    return feld


ABKUERZUNG = re.compile(r"\b[A-ZÄÖÜ]{2,6}\b")
VERSIONSCODE = re.compile(r"\b[Vv]\d{1,3}\b|\b\d{4}\b")


def tokenisiere(s):
    """Zwei Wortarten zaehlen: normale Sachwoerter (>=4 Buchstaben, stopwortgefiltert) und
    kurze Codes (Grossbuchstaben-Abkuerzungen wie «BD»/«LEG», Versions-/Jahresmarken wie
    «V2»/«2025») — die real belegten Fehl-Offen-Faelle (E-R169-2: «BD LEG – CH 2025 V2»)
    tragen fast nur Codes, keine langen Woerter."""
    s = s or ""
    woerter = re.findall(r"[A-Za-zÄÖÜäöüß]{4,}", s)
    tokens = {w.lower() for w in woerter if w.lower() not in STOPWORTE}
    tokens |= {a.lower() for a in ABKUERZUNG.findall(s)}
    tokens |= {v.lower() for v in VERSIONSCODE.findall(s)}
    return tokens


def bloecke(text):
    """Zerlegt QUESTIONS.md in Eintraege: eine Zeile '- [ ]'/'- [x]' plus die folgenden
    eingerueckten oder leeren Fortsetzungszeilen bis zum naechsten Top-Level-Punkt."""
    aktuell = []
    for zeile in text.splitlines():
        if re.match(r"- \[[ x]\]", zeile):
            if aktuell:
                yield "\n".join(aktuell)
            aktuell = [zeile]
        elif aktuell and (zeile.startswith((" ", "\t")) or zeile.strip() == ""):
            aktuell.append(zeile)
        else:
            if aktuell:
                yield "\n".join(aktuell)
            aktuell = []
    if aktuell:
        yield "\n".join(aktuell)


def kandidaten_aus_block(block):
    fett = re.findall(r"\*\*([^*]{4,80})\*\*", block)
    links = re.findall(r"\[\[([^\]|]+)\]\]", block)
    return fett + links


def pruefe_kb(wurzel, kb, melde):
    dest_pfad = wurzel / kb / "destillate"
    fragen_pfad = wurzel / kb / "wiki" / "QUESTIONS.md"
    if not dest_pfad.is_dir() or not fragen_pfad.is_file():
        return

    destillate = []
    for p in sorted(dest_pfad.glob("*.md")):
        if p.stem.upper() == "INDEX":
            continue
        t = p.read_text(encoding="utf-8", errors="replace")
        fm = frontmatter(t)
        quelle_txt = " ".join(
            [fm.get("quelle", ""), fm.get("titel", ""), p.stem.replace("-", " ")]
        )
        destillate.append(
            {"pfad": p, "tokens": tokenisiere(quelle_txt), "gelesen": fm.get("gelesen", "")}
        )

    # Zu haeufige Token taugen nicht zur Unterscheidung ("AHB", "Merkblatt" stehen in einem
    # Fuenftel aller energie-Destillate) — Dokumentfrequenz-Filter statt gepflegter Stopwortliste,
    # damit das Werkzeug ohne Domain-Tuning auf jede KB passt.
    df = {}
    for d in destillate:
        for tok in d["tokens"]:
            df[tok] = df.get(tok, 0) + 1
    schwelle = max(5, round(0.05 * len(destillate))) if destillate else 5
    zu_haeufig = {tok for tok, n in df.items() if n > schwelle}
    for d in destillate:
        d["tokens"] -= zu_haeufig

    text = fragen_pfad.read_text(encoding="utf-8", errors="replace")
    for block in bloecke(text):
        if block.startswith("- [x]"):
            continue  # abgehakt, kein offener Punkt mehr
        if not TRIGGER.search(block):
            continue
        kandidaten_tokens = [tokenisiere(k) for k in kandidaten_aus_block(block)]
        kandidaten_tokens = [t for t in kandidaten_tokens if len(t) >= 2]
        if not kandidaten_tokens:
            continue
        kennung = re.match(r"- \[ \] \*\*([^*(]+)", block)
        kennung = kennung.group(1).strip() if kennung else block.splitlines()[0][:60]
        gemeldet = set()
        for d in destillate:
            if not d["gelesen"] or TEILLESE.search(d["gelesen"]):
                continue
            for kt in kandidaten_tokens:
                overlap = kt & d["tokens"]
                if len(overlap) >= 2 and d["pfad"].stem not in gemeldet:
                    melde(kennung, d["pfad"].stem, d["gelesen"], overlap)
                    gemeldet.add(d["pfad"].stem)
                    break


def main():
    p = argparse.ArgumentParser(
        description="Redundanz-Aufsicht: als offen gemeldete Fragen vs. bereits gelesene Destillate"
    )
    p.add_argument("kb", nargs="*", help="Wissensbasen (ohne Angabe: alle mit destillate/)")
    p.add_argument("--hub", default=str(HUB))
    args = p.parse_args()

    wurzel = pathlib.Path(args.hub) / "wissen"
    if not wurzel.is_dir():
        print("wissen/ nicht erreichbar — NAS gemountet?")
        return 2

    kbs = args.kb or sorted(d.parent.name for d in wurzel.glob("*/destillate") if d.is_dir())
    gesamt = 0
    for kb in kbs:
        treffer = []
        pruefe_kb(
            wurzel,
            kb,
            lambda kennung, dest, gelesen, overlap: treffer.append(
                (kennung, dest, gelesen, overlap)
            ),
        )
        print(f"\n== {kb}")
        if not treffer:
            print("  keine Befunde.")
        for kennung, dest, gelesen, overlap in treffer:
            woerter = ", ".join(sorted(overlap))
            print(f"  ! {kennung[:55]:55s} <-> {dest} (gelesen: {gelesen[:45]}) [{woerter}]")
        gesamt += len(treffer)

    print(f"\nTotal: {gesamt} Befund(e).")
    return 1 if gesamt else 0


if __name__ == "__main__":
    sys.exit(main())
