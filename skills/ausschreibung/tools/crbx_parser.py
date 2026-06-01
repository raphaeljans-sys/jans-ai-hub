#!/usr/bin/env python3
"""
crbx_parser.py — SIA-451 / CRB (.crbx / .e1s) → strukturierte Daten + Markdown

JANS AI Hub · Skill `ausschreibung`

Liest das CRB-Datenaustauschformat (SIA 451), wie es BBase und andere
Schweizer Bausoftware exportiert, und erzeugt daraus:
  1. ein maschinenlesbares JSON  (--json)
  2. eine LLM-freundliche Markdown-LV-Vorlage (--md, Default)

Hintergrund Satzarten (fixe Spalten, UTF-8, CRLF):
  A...  Datei-/Objektkopf  (Objekt, Gewerk, Unternehmer, NPK-Version)
  B...  Gliederung
  C...  Konditionen        (Rabatt, Skonto, Abzuege, MWST)
  G<k>  Positionssaetze des NPK-Kapitels <k>:
          Spalte 0-3   Satzart + Kapitel  (z.B. "G675")
          Spalte 5-40  Positionscode + Marker (LE/GP)
          Spalte 41    Hierarchie-Level (1=Kapiteltitel, 2=Position, 3=Detailtext)
          Spalte 42-91 Mengen-/Preisfelder (projektspezifisch, im Devi-Template leer)
          Spalte 92+   Positionstext
  Z...  Datei-Nachspann

Zuverlaessig extrahiert: Kopf, Konditionen, Kapitel-/Positionshierarchie, Texte.
Mengen/Einheitspreise sind versions- und projektabhaengig und werden als
Rohwert mitgefuehrt (im Devi-Template ohnehin leer — Mengen kommen pro Projekt).

Verwendung:
  python3 crbx_parser.py <datei.crbx|.e1s> [--json] [--md] [-o OUT]
"""
import sys, os, re, json, zipfile, argparse, tempfile

LEVEL_COL = 41
TEXT_COL = 92
CODE_FROM, CODE_TO = 5, 41
MID_FROM, MID_TO = 42, 92


def find_e1s(path):
    """Gibt den Pfad zur .e1s-Nutzdatei zurueck (entpackt .crbx bei Bedarf)."""
    if path.lower().endswith(".e1s"):
        return path, None
    if zipfile.is_zipfile(path):
        tmp = tempfile.mkdtemp(prefix="crbx_")
        with zipfile.ZipFile(path) as z:
            inner = [n for n in z.namelist() if n.lower().endswith(".e1s")]
            if not inner:
                inner = z.namelist()
            z.extract(inner[0], tmp)
            return os.path.join(tmp, inner[0]), tmp
    raise ValueError(f"Kein .crbx/.e1s erkannt: {path}")


def read_lines(e1s):
    with open(e1s, "r", encoding="utf-8", errors="replace") as f:
        return [ln.rstrip("\r\n") for ln in f]


def text_tokens(s):
    """Zerlegt eine Fixed-Width-Zeile in lesbare Text-Tokens (>=2 Spaces = Trenner)."""
    return [t.strip() for t in re.split(r"\s{2,}", s.strip()) if t.strip()]


def _is_codelike(t):
    """True fuer technische Codes (CRBX-Marker, ziffernlastige Tokens, Versionsstrings)."""
    if "CRBX" in t or "Vers" in t:
        return True
    letters = sum(c.isalpha() for c in t)
    digits = sum(c.isdigit() for c in t)
    return digits > letters or letters < 3


def parse_header(line):
    """A-Satz → Objekt-/Gewerk-/Unternehmer-Infos (robust ueber Text-Tokens)."""
    toks = text_tokens(line[4:])
    h = {"raw": line}
    # Lesbare Klartext-Tokens: Buchstaben dominieren, kein technischer Code
    words = [t for t in toks if not _is_codelike(t)]
    if words:
        h["objekt"] = words[0] if len(words) > 0 else ""
        h["gewerk"] = words[1] if len(words) > 1 else ""
        h["unternehmer"] = words[2] if len(words) > 2 else ""
    tel = re.search(r"\+?\d[\d\s]{7,}\d", line)
    if tel:
        h["telefon"] = tel.group(0).strip()
    ver = re.search(r"(20\d\d[.\w]*Vers[\w_.()]*)", line)
    if ver:
        h["npk_version"] = ver.group(1)
    return h


def parse_kondition(line):
    """C-Satz → {label, einheit '%'|'P', wert_prozent}."""
    unit = "%" if "%" in line[40:46] else ("P" if " P" in line[40:46] else "")
    m = re.search(r"([+-])(\d{6})\s", line[46:])
    wert = None
    if m:
        wert = int(m.group(2)) / 100.0
        if m.group(1) == "-":
            wert = -wert
    # Label = Klartext-Tokens ab Spalte 70, ohne durchgesickerte Wertcodes
    lbl_toks = [t for t in text_tokens(line[70:])
                if not re.fullmatch(r"[+-]?\d+", t)]
    label = " ".join(lbl_toks).strip()
    return {
        "code": line[1:4],
        "einheit": unit,
        "wert_prozent": wert,
        "label": label,
    }


def parse(path):
    e1s, _tmp = find_e1s(path)
    lines = read_lines(e1s)
    doc = {"quelle": os.path.basename(path), "kopf": {}, "konditionen": [], "kapitel": {}}
    for ln in lines:
        if not ln:
            continue
        rt = ln[0]
        if rt == "A":
            doc["kopf"] = parse_header(ln)
        elif rt == "C" and ln[:4] != "C000":
            k = parse_kondition(ln)
            if k["label"]:
                doc["konditionen"].append(k)
        elif rt == "G":
            kap = ln[1:4]
            code = ln[CODE_FROM:CODE_TO].strip()
            level = ln[LEVEL_COL] if len(ln) > LEVEL_COL else ""
            mid = ln[MID_FROM:MID_TO].strip() if len(ln) > MID_FROM else ""
            text = ln[TEXT_COL:].strip() if len(ln) > TEXT_COL else ""
            doc["kapitel"].setdefault(kap, []).append(
                {"code": code, "level": level, "mid": mid, "text": text}
            )
    return doc


def _merge_texts(rows):
    """Fasst Saetze zu Eintraegen zusammen.

    Level 1 = Kapitel-/Abschnittstitel (eigener Eintrag).
    Level 2 = Position (Code), Text ist nur eine abgeschnittene Vorschau.
    Level 3 = Volltext-Detailzeilen der zugehoerigen Position (Code = Pos-Code + Suffix).
    Strategie: Level-3-Zeilen zur jeweils letzten Level-2-Position zusammenfuegen
    und die abgeschnittene Level-2-Vorschau verwerfen.
    """
    out = []
    cur = None  # aktuelle Level-2-Position
    for r in rows:
        code = r["code"]
        # Reine Mengen-/Preiszeilen (LE/GP-Marker) ueberspringen
        if code.endswith("LE") or code.endswith("GP"):
            continue
        if r["level"] == "1":
            if cur:
                out.append(cur); cur = None
            if r["text"]:
                out.append({"code": "", "level": "1", "text": r["text"]})
        elif r["level"] == "2":
            if cur:
                out.append(cur)
            cur = {"code": code, "level": "2", "text": "", "preview": r["text"]}
        elif r["level"] == "3" and cur is not None:
            if r["text"]:
                cur["text"] = (cur["text"] + " " + r["text"]).strip()
        else:
            # Position ohne Level-3-Detail: Vorschau ist der ganze Text
            if cur:
                out.append(cur)
            cur = {"code": code, "level": "2", "text": r["text"], "preview": r["text"]}
    if cur:
        out.append(cur)
    # Fallback: wenn keine Level-3-Details kamen, Vorschau als Text nehmen
    for e in out:
        if e["level"] == "2" and not e["text"]:
            e["text"] = e.get("preview", "")
    return out


def to_markdown(doc):
    k = doc["kopf"]
    L = []
    L.append("---")
    L.append(f"typ: lv-vorlage")
    L.append(f"quelle: {doc['quelle']}")
    L.append(f"format: SIA 451 / CRB (.crbx)")
    if k.get("objekt"):
        L.append(f"objekt: {k['objekt']}")
    if k.get("gewerk"):
        L.append(f"gewerk: {k['gewerk']}")
    if k.get("npk_version"):
        L.append(f"npk_version: {k['npk_version']}")
    L.append(f"npk_kapitel: [{', '.join(sorted(doc['kapitel'].keys()))}]")
    L.append("reifegrad: R2")
    L.append("hinweis: Mengen/Preise projektspezifisch — hier Strukturvorlage")
    L.append("---")
    L.append("")
    L.append(f"# LV-Vorlage — {k.get('gewerk', 'Gewerk')}")
    L.append("")
    if k.get("objekt") or k.get("unternehmer"):
        L.append(f"> Objekt: {k.get('objekt','—')} · Referenz-Unternehmer: {k.get('unternehmer','—')}")
        L.append("")

    if doc["konditionen"]:
        L.append("## Konditionen")
        L.append("")
        L.append("| Position | Art | Wert |")
        L.append("|---|---|---|")
        for c in doc["konditionen"]:
            w = "" if c["wert_prozent"] is None else (
                f"{c['wert_prozent']:.2f} %" if c["einheit"] == "%" else f"{c['wert_prozent']:.2f}")
            L.append(f"| {c['label']} | {c['einheit'] or '—'} | {w} |")
        L.append("")
        L.append("> ⚠️ MWST ggf. auf aktuellen Satz (8,1 %) pruefen.")
        L.append("")

    for kap in sorted(doc["kapitel"].keys()):
        rows = _merge_texts(doc["kapitel"][kap])
        if not rows:
            continue
        L.append(f"## NPK {kap} — Positionen")
        L.append("")
        for r in rows:
            if r["level"] == "1":
                L.append(f"### {r['text']}")
                L.append("")
            else:
                code = r["code"].replace("  ", " ").strip()
                L.append(f"- **{code}** — {r['text']}")
        L.append("")
    return "\n".join(L)


def main():
    ap = argparse.ArgumentParser(description="SIA-451/.crbx → JSON/Markdown")
    ap.add_argument("input")
    ap.add_argument("--json", action="store_true", help="JSON statt Markdown")
    ap.add_argument("-o", "--out", help="Ausgabedatei (sonst stdout)")
    a = ap.parse_args()
    doc = parse(a.input)
    out = json.dumps(doc, ensure_ascii=False, indent=2) if a.json else to_markdown(doc)
    if a.out:
        with open(a.out, "w", encoding="utf-8") as f:
            f.write(out)
        print(f"geschrieben: {a.out}")
    else:
        print(out)


if __name__ == "__main__":
    main()
