#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
submittentenliste_import.py — JANS-Submittentenliste (.docx) -> Stammdaten-.md je Gewerk

JANS AI Hub - Skill `ausschreibung` / Skill `unternehmerfindung`

Liest die zentrale JANS-Submittentenliste (eine .docx ueber alle BKP) und erzeugt
pro BKP-Gewerk eine strukturierte `anbieter/stammdaten/<bkp>-<slug>.md`. Diese
Stammdaten sind die Saat-Datenbank fuer den Findungs-Skill `unternehmerfindung`.

Grundsaetze:
- NICHTS ERFINDEN: Adressen/Mails, die in der Liste fehlen, bleiben leer und werden
  vor Versand via macOS-Kontakte / Web verifiziert. Die Roh-Zeile bleibt immer als
  `Bemerkung` erhalten, damit keine Information verloren geht.
- NICHT-DESTRUKTIV: schreibt nach `anbieter/stammdaten/`. Die handgepflegten,
  reicheren Dateien in `anbieter/*.md` (verifizierte Overlays) bleiben unberuehrt.
- Status/Empfehlung wird aus den Notizen der Liste abgeleitet (Bewerbung, Vorschlag
  Dritter, Empfehlung/bewaehrt, Warnung) — das ist die Basis fuers spaetere Ranking.

Quelle der Heuristik: Ueberschriften sind Word-Stil `Heading 1` und beginnen mit "BKP";
Eintraege sind `Normal`-Absaetze "Firma, Ort" mit optionalen Notizen in Klammern.

Aufruf:
  python3 tools/submittentenliste_import.py "<JANS-Liste.docx>" [-o anbieter/stammdaten]

Abhaengigkeit: python-docx
"""
import argparse
import os
import re
import sys
from datetime import date

try:
    from docx import Document
except ImportError:
    sys.exit("Fehler: python-docx fehlt. Installieren mit: pip3 install python-docx")

UMLAUT = str.maketrans({
    "ä": "ae", "ö": "oe", "ü": "ue", "Ä": "ae", "Ö": "oe", "Ü": "ue",
    "é": "e", "è": "e", "ê": "e", "à": "a", "ç": "c", "ß": "ss", "`": "", "´": "",
})

# Unterkategorien (Normal-Zeilen, die als Sub-Header innerhalb eines Gewerks dienen)
SUBHEADER_RE = re.compile(r"^[A-Za-zÄÖÜäöü][\wÄÖÜäöü .,/+?-]{2,40}:\s*$")

PLZ_RE = re.compile(r"\b(\d{4})\b")
BKP_NUM_RE = re.compile(r"^BKP\s*(\d+)?")


def slugify(text):
    text = text.translate(UMLAUT).lower()
    text = re.sub(r"[^a-z0-9]+", "-", text)
    return re.sub(r"-+", "-", text).strip("-")


def parse_heading(text):
    """'BKP 281, Bodenbeläge Holz ( Parkett)' -> (num='281', titel, slug)."""
    m = BKP_NUM_RE.match(text)
    num = (m.group(1) if m and m.group(1) else "000")
    rest = re.sub(r"^BKP\s*\d*\s*[,\s]*", "", text).strip()
    rest = rest.strip(",/ ").strip()
    titel = rest if rest else "Allgemein"
    slug = f"{int(num):03d}" if num.isdigit() else "000"
    slug = f"{slug}-{slugify(titel)}" if slugify(titel) else slug
    return num, titel, slug


def derive_status(raw):
    """Status/Empfehlung aus Notiz-Schluesselwoertern (Basis fuers Ranking)."""
    low = raw.lower()
    if "nie wieder" in low or "nie nie" in low or "schlechten ruf" in low or "schlechter ruf" in low:
        return "warnung"
    if "bewerbung" in low:
        return "beworben"
    if any(k in low for k in ["empfehlung", "empfiehlt", "zu empfehlen", "gute erfahrung",
                              "sehr gut", "(gut", "gut)", "ist besser", "bewaehrt", "bewährt"]):
        return "empfohlen"
    if "vorschlag" in low:
        return "vorschlag_dritter"
    return "stammliste"


def split_entry(raw):
    """Zerlegt 'Firma, Strasse, PLZ Ort (Notiz)' -> (firma, ort, bemerkung)."""
    # Sonderzusaetze fuer Heizung/Sanitaer-Kombifirmen markieren
    combo = ""
    if re.search(r"\(\+\s*[SH]\)|\(\+S\)|\(\+H\)|\+S\b|\+H\b", raw):
        if "+S" in raw or "+ S" in raw:
            combo = " [auch Sanitär]"
        if "+H" in raw or "+ H" in raw:
            combo += " [auch Heizung]"

    # Klammer-Notizen herausloesen
    notes = re.findall(r"\(([^)]*)\)", raw)
    cleaned = re.sub(r"\([^)]*\)", "", raw).strip()

    parts = [p.strip() for p in cleaned.split(",") if p.strip()]
    firma = parts[0] if parts else cleaned
    ort = ""
    # Ort = Segment mit PLZ, sonst letztes Segment, das nach Ort aussieht
    for p in parts[1:]:
        if PLZ_RE.search(p):
            ort = p
            break
    if not ort and len(parts) > 1:
        ort = parts[-1]

    bemerkung = "; ".join(n.strip() for n in notes if n.strip())
    # freitextige Empfehlungen ohne Klammer (z.B. 'gem. Hr. Ströbl ... sehr zu empfehlen!')
    tail = ""
    if len(parts) > 1:
        last = parts[-1]
        if last != ort and re.search(r"[a-zäöü]{4,}", last) and not PLZ_RE.search(last):
            tail = last
    extra = (tail + (" " + combo if combo else "")).strip()
    if extra:
        bemerkung = (bemerkung + "; " + extra).strip("; ").strip()
    elif combo:
        bemerkung = (bemerkung + "; " + combo).strip("; ").strip()
    return firma, ort, bemerkung


def md_escape(s):
    return s.replace("|", "/").strip()


def build_md(num, titel, slug, entries, quelle, stand):
    lines = []
    lines.append("---")
    lines.append(f"gewerk: BKP {num} — {titel}" if num != "000" else f"gewerk: {titel}")
    lines.append(f"bkp: \"{num}\"")
    lines.append(f"stand: {stand}")
    lines.append(f"quelle: {quelle}")
    lines.append("reifegrad: R1  # maschinell geerntet, Kontaktdaten unverifiziert")
    lines.append("---")
    lines.append("")
    lines.append(f"# Anbieter — {titel} (BKP {num})" if num != "000" else f"# Anbieter — {titel}")
    lines.append("")
    lines.append("> Stammliste aus der zentralen JANS-Submittentenliste, maschinell geerntet.")
    lines.append("> **Adressen/E-Mails sind hier NICHT vollstaendig** — vor jedem Versand")
    lines.append("> via macOS-Kontakte / Web verifizieren (nichts erfinden).")
    lines.append("")
    lines.append("| Firma | Ort / PLZ | Status | Bemerkung |")
    lines.append("|---|---|---|---|")
    for kat, firma, ort, status, bem in entries:
        if kat and not firma:
            lines.append(f"| **_{md_escape(kat)}_** | | | |")
            continue
        lines.append(f"| {md_escape(firma)} | {md_escape(ort)} | {status} | {md_escape(bem)} |")
    lines.append("")
    lines.append("## Legende Status")
    lines.append("- `empfohlen` — bewaehrt / positive Empfehlung in der Liste vermerkt")
    lines.append("- `stammliste` — auf JANS-Submittentenliste, ohne weitere Wertung")
    lines.append("- `beworben` — hat sich beworben (noch nicht beauftragt)")
    lines.append("- `vorschlag_dritter` — Vorschlag eines Planers/Dritten")
    lines.append("- `warnung` — negative Erfahrung / nicht einladen")
    lines.append("")
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(description="JANS-Submittentenliste .docx -> Stammdaten-.md je Gewerk")
    ap.add_argument("docx", help="Pfad zur JANS-Submittentenliste (.docx)")
    ap.add_argument("-o", "--outdir", default=None, help="Zielordner (Default: <skill>/anbieter/stammdaten)")
    ap.add_argument("--stand", default=str(date.today()), help="Stand-Datum (YYYY-MM-DD)")
    args = ap.parse_args()

    if not os.path.isfile(args.docx):
        sys.exit(f"Datei nicht gefunden: {args.docx}")

    outdir = args.outdir or os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "anbieter", "stammdaten")
    os.makedirs(outdir, exist_ok=True)

    quelle = os.path.basename(args.docx)
    doc = Document(args.docx)

    sections = []  # (num, titel, slug, entries)
    cur = None
    cur_kat = ""
    for para in doc.paragraphs:
        text = para.text.strip()
        style = para.style.name
        if style == "Heading 1" and (text.startswith("BKP") ):
            num, titel, slug = parse_heading(text)
            cur = {"num": num, "titel": titel, "slug": slug, "entries": []}
            sections.append(cur)
            cur_kat = ""
            continue
        if style == "Heading 1" and text == "Anmerkungen":
            cur = None
            continue
        if cur is None or not text:
            continue
        if SUBHEADER_RE.match(text):
            cur_kat = text.rstrip(":").strip()
            cur["entries"].append((cur_kat, "", "", "", ""))
            continue
        firma, ort, bem = split_entry(text)
        status = derive_status(text)
        cur["entries"].append(("", firma, ort, status, bem))

    written = 0
    total_firmen = 0
    for s in sections:
        firmen = [e for e in s["entries"] if e[1]]
        total_firmen += len(firmen)
        md = build_md(s["num"], s["titel"], s["slug"], s["entries"], quelle, args.stand)
        path = os.path.join(outdir, f"{s['slug']}.md")
        with open(path, "w", encoding="utf-8") as f:
            f.write(md)
        written += 1
        print(f"  {s['slug']}.md  ({len(firmen)} Firmen)")

    # Index schreiben
    idx = ["# Stammdaten Submittenten — Index", "",
           f"Geerntet aus `{quelle}` am {args.stand}.",
           f"{written} Gewerke, {total_firmen} Firmen-Eintraege.", "",
           "| BKP | Gewerk | Datei |", "|---|---|---|"]
    for s in sorted(sections, key=lambda x: (x["num"], x["slug"])):
        idx.append(f"| {s['num']} | {s['titel']} | `{s['slug']}.md` |")
    with open(os.path.join(outdir, "_index.md"), "w", encoding="utf-8") as f:
        f.write("\n".join(idx) + "\n")

    print(f"\nFertig: {written} Gewerk-Dateien + _index.md -> {outdir}")
    print(f"Total {total_firmen} Firmen-Eintraege geerntet.")


if __name__ == "__main__":
    main()
