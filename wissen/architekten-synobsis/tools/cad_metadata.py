#!/usr/bin/env python3
"""
cad_metadata.py — Extracts geometric metadata from CAD files.

Reads DXF (via ezdxf) and 3DM (via rhino3dm) files from the reference library
and writes structured metadata: bounding box, layer names, block names,
entity counts. This data powers queries like "show me all projects with
visible concrete structure" (from layer names) or "buildings wider than 50m"
(from bounding box).

Usage:
  python cad_metadata.py --scan           # scan all unprocessed CAD files
  python cad_metadata.py --scan --limit 50  # process max 50 files
  python cad_metadata.py --status         # show progress
  python cad_metadata.py --query layers "Wand"  # find files with matching layers
  python cad_metadata.py --query bbox-min-width 30  # find files wider than 30m
"""
import argparse, json, os, re, sys, datetime
from pathlib import Path

# ---------------------------------------------------------------------------
# Pfade (konsistent mit synobsis_scan.py)
# ---------------------------------------------------------------------------
ROOT = Path("/Volumes/daten/05_Architekten_Synobsis")
OUT = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis")
CATALOG = OUT / "catalog"
METADATA_FILE = CATALOG / "cad-metadata.jsonl"
STATE_FILE = OUT / "state" / "cad-processed.json"

# Ordner, die beim Walk uebersprungen werden
SKIP_WALK_DIRS = {"@eaDir", ".app", "#recycle", "00_Organisation"}

# Dateigroessen-Limit: 200 MB (groessere DXF-Dateien uebersprungen)
MAX_FILE_SIZE = 200 * 1024 * 1024

# CAD-Erweiterungen
DXF_EXT = {".dxf"}
DM_EXT = {".3dm"}

# ---------------------------------------------------------------------------
# ezdxf — obligatorisch fuer DXF
# ---------------------------------------------------------------------------
try:
    import ezdxf
    HAS_EZDXF = True
except ImportError:
    HAS_EZDXF = False

# ---------------------------------------------------------------------------
# rhino3dm — optional fuer 3DM
# ---------------------------------------------------------------------------
try:
    import rhino3dm
    HAS_RHINO3DM = True
except ImportError:
    HAS_RHINO3DM = False

# ---------------------------------------------------------------------------
# Einheiten-Mapping (ezdxf $INSUNITS -> Klartext + Faktor zu Metern)
# ---------------------------------------------------------------------------
# Referenz: https://ezdxf.readthedocs.io/en/stable/concepts/units.html
INSUNITS_MAP = {
    0: ("einheitslos", 1.0),
    1: ("inches", 0.0254),
    2: ("feet", 0.3048),
    3: ("miles", 1609.344),
    4: ("mm", 0.001),
    5: ("cm", 0.01),
    6: ("m", 1.0),
    7: ("km", 1000.0),
    8: ("microinches", 0.0000000254),
    9: ("mils", 0.0000254),
    10: ("yards", 0.9144),
    11: ("angstroms", 1e-10),
    12: ("nanometers", 1e-9),
    13: ("microns", 1e-6),
    14: ("dm", 0.1),
    15: ("dam", 10.0),
    16: ("hm", 100.0),
}


def _unit_label(code):
    """Gibt das Einheiten-Kuerzel zurueck."""
    return INSUNITS_MAP.get(code, ("einheitslos", 1.0))[0]


def _unit_factor(code):
    """Gibt den Faktor zurueck, um von der Einheit in Meter umzurechnen."""
    return INSUNITS_MAP.get(code, ("einheitslos", 1.0))[1]


# ---------------------------------------------------------------------------
# Pfad-Analyse: Architekt-Slug + Projektordner aus relativem Pfad
# ---------------------------------------------------------------------------
def _parse_path(filepath):
    """Extrahiert architekt_slug und projekt_ordner aus dem Dateipfad."""
    try:
        rel = Path(filepath).relative_to(ROOT)
    except ValueError:
        return "", ""
    parts = rel.parts
    architekt_slug = parts[0] if len(parts) >= 1 else ""
    projekt_ordner = parts[1] if len(parts) >= 2 else ""
    return architekt_slug, projekt_ordner


# ---------------------------------------------------------------------------
# DXF-Verarbeitung
# ---------------------------------------------------------------------------
def process_dxf(filepath):
    """Liest eine DXF-Datei und gibt ein Metadaten-Dict zurueck."""
    doc = ezdxf.readfile(str(filepath))
    header = doc.header

    # DXF-Version
    version = header.get("$ACADVER", "unbekannt")

    # Einheiten
    insunits = header.get("$INSUNITS", 0)
    einheit = _unit_label(insunits)
    factor = _unit_factor(insunits)

    # Bei einheitslos: heuristisch anhand der Bounding-Box-Groesse schaetzen
    # (Werte > 100 deuten auf mm oder cm hin)

    # Layers
    layers = sorted(set(layer.dxf.name for layer in doc.layers))

    # Blocks (nur benannte, keine *Model_Space/*Paper_Space)
    blocks = sorted(set(
        blk.name for blk in doc.blocks
        if not blk.name.startswith("*")
    ))

    # Entities zaehlen + Bounding-Box berechnen
    entity_counts = {}
    min_x = min_y = min_z = float("inf")
    max_x = max_y = max_z = float("-inf")
    bbox_valid = False

    msp = doc.modelspace()
    for entity in msp:
        etype = entity.dxftype()
        entity_counts[etype] = entity_counts.get(etype, 0) + 1

        # Bounding-Box aus einzelnen Entities ableiten
        # Nicht alle Entity-Typen haben einen brauchbaren Bounding-Box;
        # wir sammeln Punkte wo immer moeglich.
        try:
            bbox = ezdxf.bbox.extents([entity])
            if bbox.has_data:
                emin = bbox.extmin
                emax = bbox.extmax
                min_x = min(min_x, emin.x)
                min_y = min(min_y, emin.y)
                min_z = min(min_z, emin.z)
                max_x = max(max_x, emax.x)
                max_y = max(max_y, emax.y)
                max_z = max(max_z, emax.z)
                bbox_valid = True
        except Exception:
            pass

    entity_total = sum(entity_counts.values())

    # Einheiten-Heuristik bei einheitslos
    if insunits == 0 and bbox_valid:
        span = max(max_x - min_x, max_y - min_y)
        if span > 500:
            # Wahrscheinlich mm
            einheit = "mm (heuristisch)"
            factor = 0.001
        elif span > 50:
            # Wahrscheinlich cm
            einheit = "cm (heuristisch)"
            factor = 0.01
        else:
            # Wahrscheinlich m
            einheit = "m (heuristisch)"
            factor = 1.0

    # Bounding-Box in Metern
    bbox_dict = None
    breite_m = tiefe_m = hoehe_m = None
    if bbox_valid:
        bbox_dict = {
            "min": [round(min_x, 2), round(min_y, 2), round(min_z, 2)],
            "max": [round(max_x, 2), round(max_y, 2), round(max_z, 2)],
        }
        breite_m = round((max_x - min_x) * factor, 2)
        tiefe_m = round((max_y - min_y) * factor, 2)
        hoehe_m = round((max_z - min_z) * factor, 2)

    architekt_slug, projekt_ordner = _parse_path(filepath)

    return {
        "pfad": str(Path(filepath).relative_to(ROOT)),
        "architekt_slug": architekt_slug,
        "projekt_ordner": projekt_ordner,
        "typ": "dxf",
        "version": version,
        "einheit": einheit,
        "bbox": bbox_dict,
        "breite_m": breite_m,
        "tiefe_m": tiefe_m,
        "hoehe_m": hoehe_m,
        "layers": layers,
        "layer_count": len(layers),
        "blocks": blocks,
        "block_count": len(blocks),
        "entities": dict(sorted(entity_counts.items(), key=lambda x: -x[1])),
        "entity_total": entity_total,
        "stand": datetime.datetime.now().isoformat(timespec="seconds"),
    }


# ---------------------------------------------------------------------------
# 3DM-Verarbeitung (optional)
# ---------------------------------------------------------------------------
def process_3dm(filepath):
    """Liest eine 3DM-Datei und gibt ein Metadaten-Dict zurueck."""
    model = rhino3dm.File3dm.Read(str(filepath))
    if model is None:
        raise ValueError("rhino3dm konnte die Datei nicht lesen")

    # Layers
    layers = sorted(set(layer.Name for layer in model.Layers))

    # Objekte nach Typ zaehlen + Bounding-Box
    type_counts = {}
    min_x = min_y = min_z = float("inf")
    max_x = max_y = max_z = float("-inf")
    bbox_valid = False

    for obj in model.Objects:
        geom = obj.Geometry
        if geom is None:
            continue
        type_name = type(geom).__name__
        type_counts[type_name] = type_counts.get(type_name, 0) + 1

        try:
            bb = geom.GetBoundingBox()
            if bb.IsValid:
                min_x = min(min_x, bb.Min.X)
                min_y = min(min_y, bb.Min.Y)
                min_z = min(min_z, bb.Min.Z)
                max_x = max(max_x, bb.Max.X)
                max_y = max(max_y, bb.Max.Y)
                max_z = max(max_z, bb.Max.Z)
                bbox_valid = True
        except Exception:
            pass

    object_total = sum(type_counts.values())

    # 3DM ist standardmaessig in Millimetern oder der im Modell definierten Einheit
    # Rhino3dm hat ein UnitSystem; Faktor abschaetzen
    try:
        unit_system = model.Settings.ModelUnitSystem
        # rhino3dm UnitSystem enum: 2=mm, 3=cm, 4=m, 8=inches, 9=feet
        rhino_factor_map = {
            0: 1.0,     # None
            1: 1e-6,    # Microns
            2: 0.001,   # Millimeters
            3: 0.01,    # Centimeters
            4: 1.0,     # Meters
            5: 1000.0,  # Kilometers
            6: 0.0000000254,  # Microinches
            7: 0.0000254,     # Mils
            8: 0.0254,  # Inches
            9: 0.3048,  # Feet
        }
        factor = rhino_factor_map.get(int(unit_system), 1.0)
        einheit = {
            2: "mm", 3: "cm", 4: "m", 5: "km",
            8: "inches", 9: "feet",
        }.get(int(unit_system), f"rhino-unit-{int(unit_system)}")
    except Exception:
        factor = 0.001  # Fallback mm
        einheit = "mm (angenommen)"

    bbox_dict = None
    breite_m = tiefe_m = hoehe_m = None
    if bbox_valid:
        bbox_dict = {
            "min": [round(min_x, 2), round(min_y, 2), round(min_z, 2)],
            "max": [round(max_x, 2), round(max_y, 2), round(max_z, 2)],
        }
        breite_m = round((max_x - min_x) * factor, 2)
        tiefe_m = round((max_y - min_y) * factor, 2)
        hoehe_m = round((max_z - min_z) * factor, 2)

    architekt_slug, projekt_ordner = _parse_path(filepath)

    return {
        "pfad": str(Path(filepath).relative_to(ROOT)),
        "architekt_slug": architekt_slug,
        "projekt_ordner": projekt_ordner,
        "typ": "3dm",
        "version": None,
        "einheit": einheit,
        "bbox": bbox_dict,
        "breite_m": breite_m,
        "tiefe_m": tiefe_m,
        "hoehe_m": hoehe_m,
        "layers": layers,
        "layer_count": len(layers),
        "blocks": [],
        "block_count": 0,
        "object_types": dict(sorted(type_counts.items(), key=lambda x: -x[1])),
        "object_total": object_total,
        "stand": datetime.datetime.now().isoformat(timespec="seconds"),
    }


# ---------------------------------------------------------------------------
# State-Management
# ---------------------------------------------------------------------------
def load_state():
    """Laedt die Liste bereits verarbeiteter Dateipfade."""
    if STATE_FILE.exists():
        try:
            data = json.loads(STATE_FILE.read_text(encoding="utf-8"))
            return data
        except Exception:
            pass
    return {"processed": [], "errors": [], "updated": None}


def save_state(state):
    state["updated"] = datetime.datetime.now().isoformat(timespec="seconds")
    STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
    STATE_FILE.write_text(
        json.dumps(state, ensure_ascii=False, indent=2), encoding="utf-8"
    )


# ---------------------------------------------------------------------------
# CAD-Dateien finden
# ---------------------------------------------------------------------------
def find_cad_files():
    """Gibt alle DXF/3DM-Dateien unter ROOT zurueck."""
    files = []
    for dirpath, dirnames, filenames in os.walk(ROOT):
        # Hilfsordner uebersprungen
        dirnames[:] = [d for d in dirnames if d not in SKIP_WALK_DIRS]
        for fn in filenames:
            if fn.startswith("."):
                continue
            ext = os.path.splitext(fn)[1].lower()
            if ext in DXF_EXT or ext in DM_EXT:
                fp = Path(dirpath) / fn
                files.append(fp)
    return files


# ---------------------------------------------------------------------------
# Scan-Modus
# ---------------------------------------------------------------------------
def cmd_scan(args):
    """Scannt CAD-Dateien und schreibt Metadaten."""
    if not HAS_EZDXF and not HAS_RHINO3DM:
        print(
            "FEHLER: Weder ezdxf noch rhino3dm installiert.\n"
            "  pip install ezdxf          # fuer DXF-Dateien (empfohlen)\n"
            "  pip install rhino3dm       # fuer 3DM-Dateien (optional)",
            file=sys.stderr,
        )
        sys.exit(2)

    if not ROOT.exists():
        print(f"FEHLER: NAS-Quelle nicht erreichbar: {ROOT}", file=sys.stderr)
        sys.exit(2)

    state = load_state()
    processed_set = set(state["processed"])

    print("Suche CAD-Dateien ...")
    all_files = find_cad_files()
    print(f"  {len(all_files)} CAD-Dateien gefunden")

    # Unverarbeitete filtern
    todo = []
    for fp in all_files:
        rel = str(fp.relative_to(ROOT))
        if rel not in processed_set:
            todo.append(fp)

    if not todo:
        print("Alle CAD-Dateien verarbeitet. Nichts zu tun.")
        return

    # Limit anwenden
    if args.limit and args.limit > 0:
        todo = todo[: args.limit]

    print(f"Verarbeite {len(todo)} Dateien ...")

    # Ausgabeverzeichnis sicherstellen
    CATALOG.mkdir(parents=True, exist_ok=True)

    processed_count = 0
    error_count = 0

    with METADATA_FILE.open("a", encoding="utf-8") as outf:
        for i, fp in enumerate(todo, 1):
            rel = str(fp.relative_to(ROOT))
            ext = fp.suffix.lower()

            # Dateigroesse pruefen
            try:
                fsize = fp.stat().st_size
            except OSError as e:
                print(f"  ! [{i}/{len(todo)}] Zugriffsfehler {rel}: {e}", file=sys.stderr)
                state["errors"].append({"pfad": rel, "fehler": str(e)})
                error_count += 1
                continue

            if fsize > MAX_FILE_SIZE:
                print(f"  - [{i}/{len(todo)}] Uebersprungen (>{MAX_FILE_SIZE // (1024*1024)} MB): {rel}")
                state["processed"].append(rel)
                continue

            # Verarbeiten
            try:
                if ext in DXF_EXT:
                    if not HAS_EZDXF:
                        print(f"  - [{i}/{len(todo)}] DXF uebersprungen (ezdxf fehlt): {rel}")
                        continue
                    record = process_dxf(fp)
                elif ext in DM_EXT:
                    if not HAS_RHINO3DM:
                        print(f"  - [{i}/{len(todo)}] 3DM uebersprungen (rhino3dm fehlt): {rel}")
                        continue
                    record = process_3dm(fp)
                else:
                    continue

                outf.write(json.dumps(record, ensure_ascii=False) + "\n")
                outf.flush()
                state["processed"].append(rel)
                processed_count += 1

                # Fortschritt
                size_mb = fsize / (1024 * 1024)
                print(
                    f"  [{i}/{len(todo)}] {rel}  "
                    f"({size_mb:.1f} MB, {record.get('entity_total', record.get('object_total', 0))} Entities, "
                    f"{record['layer_count']} Layers)"
                )

            except Exception as e:
                print(f"  ! [{i}/{len(todo)}] Fehler bei {rel}: {e}", file=sys.stderr)
                state["errors"].append({"pfad": rel, "fehler": str(e)})
                state["processed"].append(rel)  # nicht erneut versuchen
                error_count += 1

    save_state(state)
    print(
        f"\nFertig. {processed_count} verarbeitet, {error_count} Fehler. "
        f"Gesamt verarbeitet: {len(state['processed'])}."
    )


# ---------------------------------------------------------------------------
# Status-Modus
# ---------------------------------------------------------------------------
def cmd_status(args):
    """Zeigt den Verarbeitungsfortschritt."""
    state = load_state()
    processed = len(state["processed"])
    errors = len(state.get("errors", []))

    # Metadata-Datei zaehlen
    meta_count = 0
    if METADATA_FILE.exists():
        with METADATA_FILE.open("r", encoding="utf-8") as f:
            for line in f:
                if line.strip():
                    meta_count += 1

    # Dateien auf der Quelle zaehlen (nur wenn NAS erreichbar)
    total = "?"
    if ROOT.exists():
        total = len(find_cad_files())

    print(f"CAD-Metadaten-Extraktion — Status")
    print(f"  Quelle:           {ROOT}")
    print(f"  Ausgabe:          {METADATA_FILE}")
    print(f"  CAD-Dateien:      {total}")
    print(f"  Verarbeitet:      {processed}")
    print(f"  Davon Fehler:     {errors}")
    print(f"  Metadaten-Zeilen: {meta_count}")
    print(f"  Stand:            {state.get('updated', '—')}")
    print(f"  ezdxf:            {'ja' if HAS_EZDXF else 'NEIN — pip install ezdxf'}")
    print(f"  rhino3dm:         {'ja' if HAS_RHINO3DM else 'nein (optional)'}")


# ---------------------------------------------------------------------------
# Query-Modus
# ---------------------------------------------------------------------------
def _load_metadata():
    """Laedt alle Metadaten-Zeilen aus der JSONL-Datei."""
    if not METADATA_FILE.exists():
        print(
            f"Keine Metadaten vorhanden. Erst --scan ausfuehren.",
            file=sys.stderr,
        )
        sys.exit(2)

    records = []
    with METADATA_FILE.open("r", encoding="utf-8") as f:
        for lineno, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue
            try:
                records.append(json.loads(line))
            except json.JSONDecodeError as e:
                print(f"  Warnung: Zeile {lineno} nicht lesbar: {e}", file=sys.stderr)
    return records


def cmd_query_layers(args):
    """Sucht Dateien mit passenden Layer-Namen."""
    pattern = args.query_value
    regex = re.compile(pattern, re.IGNORECASE)

    records = _load_metadata()
    hits = []
    for rec in records:
        matching = [l for l in rec.get("layers", []) if regex.search(l)]
        if matching:
            hits.append((rec, matching))

    if not hits:
        print(f"Keine Treffer fuer Layer-Muster '{pattern}'.")
        return

    print(f"{len(hits)} Dateien mit Layers passend zu '{pattern}':\n")
    for rec, matched in hits:
        print(f"  {rec['pfad']}")
        print(f"    Architekt:  {rec['architekt_slug']}")
        print(f"    Projekt:    {rec['projekt_ordner']}")
        print(f"    Layers:     {', '.join(matched)}")
        if rec.get("breite_m") is not None:
            print(f"    Groesse:    {rec['breite_m']} x {rec['tiefe_m']} x {rec['hoehe_m']} m")
        print()


def cmd_query_bbox(args):
    """Sucht Dateien breiter als ein Schwellwert in Metern."""
    try:
        min_width = float(args.query_value)
    except ValueError:
        print(f"FEHLER: '{args.query_value}' ist keine gueltige Zahl.", file=sys.stderr)
        sys.exit(1)

    records = _load_metadata()
    hits = []
    for rec in records:
        if rec.get("breite_m") is not None and rec["breite_m"] >= min_width:
            hits.append(rec)

    # Nach Breite absteigend sortieren
    hits.sort(key=lambda r: r["breite_m"], reverse=True)

    if not hits:
        print(f"Keine Dateien mit Breite >= {min_width} m gefunden.")
        return

    print(f"{len(hits)} Dateien mit Breite >= {min_width} m:\n")
    for rec in hits:
        print(f"  {rec['pfad']}")
        print(f"    Architekt:  {rec['architekt_slug']}")
        print(f"    Projekt:    {rec['projekt_ordner']}")
        print(f"    Groesse:    {rec['breite_m']} x {rec['tiefe_m']} x {rec['hoehe_m']} m")
        print(f"    Einheit:    {rec['einheit']}")
        print(f"    Entities:   {rec.get('entity_total', rec.get('object_total', '?'))}")
        print()


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------
def main():
    ap = argparse.ArgumentParser(
        description="CAD-Metadaten-Extraktor fuer die Architekten-Synobsis-Referenzbibliothek.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Beispiele:\n"
            "  python cad_metadata.py --scan\n"
            "  python cad_metadata.py --scan --limit 50\n"
            "  python cad_metadata.py --status\n"
            '  python cad_metadata.py --query layers "Wand"\n'
            "  python cad_metadata.py --query bbox-min-width 30\n"
        ),
    )
    ap.add_argument(
        "--scan",
        action="store_true",
        help="CAD-Dateien scannen und Metadaten extrahieren",
    )
    ap.add_argument(
        "--limit",
        type=int,
        default=0,
        help="Maximale Anzahl zu verarbeitender Dateien (0 = alle)",
    )
    ap.add_argument(
        "--status",
        action="store_true",
        help="Fortschritt anzeigen",
    )
    ap.add_argument(
        "--query",
        nargs=2,
        metavar=("TYP", "WERT"),
        help="Metadaten abfragen: 'layers MUSTER' oder 'bbox-min-width METER'",
    )

    args = ap.parse_args()

    if not any([args.scan, args.status, args.query]):
        ap.print_help()
        sys.exit(0)

    if args.status:
        cmd_status(args)
        return

    if args.scan:
        cmd_scan(args)
        return

    if args.query:
        query_type = args.query[0]
        args.query_value = args.query[1]

        if query_type == "layers":
            cmd_query_layers(args)
        elif query_type == "bbox-min-width":
            cmd_query_bbox(args)
        else:
            print(
                f"FEHLER: Unbekannter Query-Typ '{query_type}'. "
                f"Verfuegbar: layers, bbox-min-width",
                file=sys.stderr,
            )
            sys.exit(1)


if __name__ == "__main__":
    main()
