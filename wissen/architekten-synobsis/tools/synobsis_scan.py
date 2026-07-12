#!/usr/bin/env python3
"""
synobsis_scan.py — Stufe 1 der Architekten-Synobsis-Aufbereitung.

Indexiert die Referenzbibliothek /Volumes/daten/05_Architekten_Synobsis als
durchsuchbaren Katalog fuer die AI-Recherche. Arbeitet alternierend/in Chargen
(Batch), damit der Lauf ueber SMB nicht haengt und kompoundierend wachsen kann.

Pro Lauf:
  - liest den Stand (state/processed.json)
  - waehlt die naechsten N noch nicht verarbeiteten Architekten-Ordner
  - parst die Taxonomie (Architekt -> Ort_Projekt_Jahr) aus den Ordnernamen
  - inventarisiert Dateien nach Typ (Bilder/PDF/DOCX/...)
  - extrahiert Text aus PDF (pypdf) und DOCX (stdlib zip+xml)
  - schreibt pro Architekt einen Datensatz nach catalog/<slug>.json
  - haengt eine Embedding-fertige Zeile an catalog/documents.jsonl
  - aktualisiert catalog/INDEX.md und state/processed.json

KEINE ML-Abhaengigkeit. Stufe 2 (Embeddings/semantische Suche) liest
catalog/documents.jsonl und laeuft separat auf dem Mac Mini.

Aufruf:
  python synobsis_scan.py --batch 25
  python synobsis_scan.py --batch 25 --reindex      # Stand ignorieren, alles neu
  python synobsis_scan.py --status                   # nur Fortschritt zeigen
"""
import argparse, json, os, re, sys, zipfile, datetime
from pathlib import Path
from xml.etree import ElementTree as ET

ROOT = Path("/Volumes/daten/05_Architekten_Synobsis")
OUT = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis")
CATALOG = OUT / "catalog"
STATE = OUT / "state" / "processed.json"
DOCS = CATALOG / "documents.jsonl"
INDEX = CATALOG / "INDEX.md"
ALIASES_FILE = CATALOG / "aliases.json"
CAD_INDEX = CATALOG / "cad-index.json"

# Ordner, die KEINE Architekten sind
SKIP_DIRS = {"00_Organisation", "@eaDir", "#recycle"}

# Ordner, die beim rekursiven Walk uebersprungen werden
SKIP_WALK_DIRS = {"@eaDir", ".app"}

IMG_EXT = {".jpg", ".jpeg", ".png", ".tif", ".tiff", ".gif", ".bmp", ".webp", ".heic"}
DOC_EXT = {".pdf", ".docx", ".doc", ".txt", ".md", ".rtf"}
CAD_EXT = {".dwg", ".dxf", ".skp", ".3dm", ".pln", ".ifc", ".vwx", ".rvt"}
NOISE_EXT = {".eml", ".exe", ".dll", ".msi", ".cab", ".dat", ".lck", ".tmp", ".ds_store"}
YEAR_RE = re.compile(r"(1[5-9]\d{2}|20[0-4]\d)")

# Unterordner-Namen, die kuratierte Referenzbilder enthalten
REFERENZBILD_MARKERS = {"best", "bestever", "auswahl"}
MAX_REFERENZBILDER = 20

MAX_PDF_PAGES = 6
MAX_TEXT_CHARS = 8000   # pro Architekt-Dokument fuer das spaetere Embedding


def load_aliases():
    """Laedt catalog/aliases.json falls vorhanden.
    Format: {"alias_slug": "kanonischer_slug", ...}
    """
    if ALIASES_FILE.exists():
        try:
            return json.loads(ALIASES_FILE.read_text(encoding="utf-8"))
        except Exception:
            pass
    return {}


ALIASES = {}   # wird in main() initialisiert


def load_state():
    if STATE.exists():
        return json.loads(STATE.read_text(encoding="utf-8"))
    return {"processed": [], "updated": None}


def save_state(st):
    st["updated"] = datetime.datetime.now().isoformat(timespec="seconds")
    STATE.write_text(json.dumps(st, ensure_ascii=False, indent=2), encoding="utf-8")


def slugify(name):
    s = re.sub(r"[^\w\-]+", "_", name, flags=re.UNICODE).strip("_")
    return s[:120] or "_"


def parse_architect_name(folder):
    """Aalto_Alvar -> {nachname: Aalto, vorname: Alvar}; Firmen bleiben as-is."""
    parts = folder.split("_")
    years = [p for p in parts if YEAR_RE.fullmatch(p)]
    words = [p for p in parts if not YEAR_RE.fullmatch(p)]
    name = folder.replace("_", " ").strip()
    nachname = words[0] if words else folder
    vorname = " ".join(words[1:]) if len(words) > 1 else ""
    return {"name": name, "nachname": nachname, "vorname": vorname,
            "jahre": years, "ordner": folder}


def parse_project(folder):
    """Ort_Projekt_Jahr -> bestmoegliche Zerlegung; tolerant."""
    parts = folder.split("_")
    years = [p for p in parts if YEAR_RE.fullmatch(p)]
    rest = [p for p in parts if not YEAR_RE.fullmatch(p)]
    ort = rest[0] if rest else ""
    projekt = " ".join(rest[1:]) if len(rest) > 1 else (rest[0] if rest else folder)
    return {"raw": folder, "ort": ort, "projekt": projekt, "jahre": years,
            "titel": folder.replace("_", " ").strip()}


def extract_pdf(path):
    try:
        from pypdf import PdfReader
        r = PdfReader(str(path))
        out = []
        for pg in r.pages[:MAX_PDF_PAGES]:
            t = pg.extract_text() or ""
            if t.strip():
                out.append(t)
        return "\n".join(out)
    except Exception as e:
        return ""


def extract_docx(path):
    try:
        with zipfile.ZipFile(str(path)) as z:
            with z.open("word/document.xml") as f:
                xml = f.read()
        # Namespace-agnostisch alle <w:t>-Texte sammeln
        root = ET.fromstring(xml)
        texts = [el.text for el in root.iter() if el.tag.endswith("}t") and el.text]
        return " ".join(texts)
    except Exception:
        return ""


def scan_architect(adir):
    arch = parse_architect_name(adir.name)
    inventory = {"bilder": 0, "dokumente": 0, "cad": 0, "andere": 0, "total": 0}
    ext_count = {}
    projects = []
    texts = []
    # CAD-Dateien nach Typ gruppiert (relative Pfade)
    cad_dateien = {e.lstrip("."): [] for e in CAD_EXT}
    # Referenzbilder aus kuratierten Ordnern
    referenzbilder = []

    # direkte Kindordner = Projekte (ausser Hilfsordner 00_Architekt)
    for child in sorted(adir.iterdir()):
        nm = child.name
        if nm in ("@eaDir",) or nm.startswith("."):
            continue
        if child.is_dir() and nm not in ("00_Architekt",):
            projects.append(parse_project(nm))

    # Dateien rekursiv inventarisieren + Text aus PDF/DOCX
    for dirpath, dirnames, filenames in os.walk(adir):
        if "@eaDir" in dirpath:
            continue
        # Skip noise directories
        dirnames[:] = [d for d in dirnames
                       if d not in SKIP_WALK_DIRS and not d.endswith(".app")]
        dp = Path(dirpath)
        # Pruefen ob aktueller Ordner ein Referenzbild-Ordner ist
        is_referenz_dir = dp.name.lower() in REFERENZBILD_MARKERS
        for fn in filenames:
            if fn.startswith("."):
                continue
            ext = os.path.splitext(fn)[1].lower()
            # Noise-Dateien komplett ueberspringen
            if ext in NOISE_EXT:
                continue
            inventory["total"] += 1
            ext_count[ext] = ext_count.get(ext, 0) + 1
            if ext in IMG_EXT:
                inventory["bilder"] += 1
                # Referenzbilder aus kuratierten Ordnern sammeln
                if is_referenz_dir and len(referenzbilder) < MAX_REFERENZBILDER:
                    rel = str((dp / fn).relative_to(adir))
                    referenzbilder.append(rel)
            elif ext in DOC_EXT:
                inventory["dokumente"] += 1
                if len("".join(texts)) < MAX_TEXT_CHARS:
                    p = dp / fn
                    if ext == ".pdf":
                        texts.append(extract_pdf(p))
                    elif ext == ".docx":
                        texts.append(extract_docx(p))
                    elif ext in (".txt", ".md"):
                        try:
                            texts.append(p.read_text(encoding="utf-8", errors="ignore"))
                        except Exception:
                            pass
            elif ext in CAD_EXT:
                inventory["cad"] += 1
                rel = str((dp / fn).relative_to(adir))
                typ = ext.lstrip(".")
                cad_dateien[typ].append(rel)
            else:
                inventory["andere"] += 1

    fulltext = re.sub(r"\s+", " ", " ".join(t for t in texts if t)).strip()[:MAX_TEXT_CHARS]

    # Embedding-Dokument: Taxonomie + Projekte + Textauszug
    doc_parts = [arch["name"]]
    for pr in projects:
        doc_parts.append(f"{pr['ort']} {pr['projekt']} {' '.join(pr['jahre'])}".strip())
    if fulltext:
        doc_parts.append(fulltext)
    embed_doc = re.sub(r"\s+", " ", " | ".join(p for p in doc_parts if p)).strip()

    # Alias-Aufloesung
    slug = slugify(adir.name)
    kanonisch = ALIASES.get(slug)   # None wenn kein Alias

    return {
        "slug": slug,
        "architekt": arch,
        "pfad": str(adir),
        "kanonisch": kanonisch,
        "projekte": projects,
        "projekt_anzahl": len(projects),
        "inventar": inventory,
        "dateitypen": dict(sorted(ext_count.items(), key=lambda x: -x[1])),
        "cad_dateien": cad_dateien,
        "referenzbilder": referenzbilder,
        "textauszug": fulltext,
        "embed_doc": embed_doc,
        "stand": datetime.datetime.now().isoformat(timespec="seconds"),
    }


def rebuild_index():
    records = sorted(CATALOG.glob("*.json"))
    rows = []
    meta_files = {"documents.jsonl", "cad-index.json", "aliases.json"}
    for rp in records:
        if rp.name in meta_files:
            continue
        try:
            r = json.loads(rp.read_text(encoding="utf-8"))
        except Exception:
            continue
        # Hilfs-/Referenzdateien im catalog/ (z.B. typology-map.json,
        # raumtypen-beschreibungen.json) tragen keinen Architekten-Record ->
        # ueberspringen statt crashen.
        if not isinstance(r, dict) or "architekt" not in r:
            continue
        a = r["architekt"]["name"]
        inv = r["inventar"]
        rows.append((a, r["projekt_anzahl"], inv["bilder"], inv["dokumente"], inv["total"]))
    rows.sort(key=lambda x: x[0].lower())
    lines = [
        "# Architekten-Synobsis — Katalog (Stufe 1)",
        "",
        f"Stand: {datetime.datetime.now():%d.%m.%Y %H:%M}  ·  {len(rows)} Architekten indexiert",
        "",
        "Quelle: `/Volumes/daten/05_Architekten_Synobsis` (read-only). Aufbereitung kompoundierend in Chargen.",
        "",
        "| Architekt | Projekte | Bilder | Dokumente | Dateien |",
        "|---|---:|---:|---:|---:|",
    ]
    for a, p, b, d, t in rows:
        lines.append(f"| {a} | {p} | {b} | {d} | {t} |")
    INDEX.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return len(rows)


def rebuild_cad_index():
    """Schreibt catalog/cad-index.json — alle Architekten mit CAD-Dateien + Counts."""
    records = sorted(CATALOG.glob("*.json"))
    cad_entries = []
    for rp in records:
        if rp.name in ("documents.jsonl", "cad-index.json", "aliases.json"):
            continue
        try:
            r = json.loads(rp.read_text(encoding="utf-8"))
        except Exception:
            continue
        cad_data = r.get("cad_dateien", {})
        counts = {typ: len(paths) for typ, paths in cad_data.items() if paths}
        if counts:
            cad_entries.append({
                "slug": r["slug"],
                "name": r["architekt"]["name"],
                "cad_counts": counts,
                "cad_total": sum(counts.values()),
            })
    cad_entries.sort(key=lambda x: -x["cad_total"])
    result = {
        "stand": datetime.datetime.now().isoformat(timespec="seconds"),
        "architekten_mit_cad": len(cad_entries),
        "eintraege": cad_entries,
    }
    CAD_INDEX.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    return len(cad_entries)


def list_architects():
    return sorted([d.name for d in ROOT.iterdir()
                   if d.is_dir() and d.name not in SKIP_DIRS and not d.name.startswith(".")])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--batch", type=int, default=25)
    ap.add_argument("--reindex", action="store_true")
    ap.add_argument("--status", action="store_true")
    args = ap.parse_args()

    if not ROOT.exists():
        print("FEHLER: NAS-Quelle nicht erreichbar:", ROOT, file=sys.stderr)
        sys.exit(2)

    global ALIASES
    ALIASES = load_aliases()

    all_arch = list_architects()
    st = load_state()
    if args.reindex:
        st = {"processed": [], "updated": None}

    done = set(st["processed"])
    todo = [a for a in all_arch if a not in done]

    if args.status:
        print(f"Architekten gesamt: {len(all_arch)}")
        print(f"verarbeitet:        {len(done)}")
        print(f"offen:              {len(todo)}")
        print(f"Stand:              {st.get('updated')}")
        return

    batch = todo[:args.batch]
    if not batch:
        print("Alle Architekten verarbeitet. Nichts zu tun.")
        rebuild_index()
        rebuild_cad_index()
        return

    print(f"Verarbeite {len(batch)} von {len(todo)} offenen (gesamt {len(all_arch)}) ...")
    with DOCS.open("a", encoding="utf-8") as docf:
        for i, name in enumerate(batch, 1):
            adir = ROOT / name
            try:
                rec = scan_architect(adir)
            except Exception as e:
                print(f"  ! Fehler bei {name}: {e}", file=sys.stderr)
                continue
            (CATALOG / f"{rec['slug']}.json").write_text(
                json.dumps(rec, ensure_ascii=False, indent=2), encoding="utf-8")
            docf.write(json.dumps(
                {"slug": rec["slug"], "name": rec["architekt"]["name"],
                 "pfad": rec["pfad"], "text": rec["embed_doc"]},
                ensure_ascii=False) + "\n")
            st["processed"].append(name)
            print(f"  [{i}/{len(batch)}] {name}  "
                  f"(Projekte {rec['projekt_anzahl']}, Bilder {rec['inventar']['bilder']}, "
                  f"Dok {rec['inventar']['dokumente']})")

    save_state(st)
    n = rebuild_index()
    nc = rebuild_cad_index()
    print(f"Fertig. Katalog: {n} Architekten ({nc} mit CAD). Offen: {len(all_arch) - len(st['processed'])}.")


if __name__ == "__main__":
    main()
