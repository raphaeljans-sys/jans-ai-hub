#!/usr/bin/env python3
"""Validator fuer JANS Entwurfs-Parameter-Sets.

Prueft parameter-sets/*.json gegen entwurfs-parameter.schema.json.
Nutzt das Paket `jsonschema`, falls installiert; sonst einen eingebauten
Mini-Validator, der genau die im Schema verwendete JSON-Schema-Teilmenge
abdeckt (required, type, pattern, enum, minimum/maximum, items,
minItems/maxItems, verschachtelte properties).

Zusatzpruefungen (immer, unabhaengig vom Validator):
  - id == Dateiname ohne .json
  - Band-Arrays [min, max]: min <= max
Warnungen (non-fatal):
  - numerische Kennwerte vorhanden, aber "quellen" leer/fehlend

Aufruf:
  python3 validate.py --all            # alle wiki/parameter-sets/*.json
  python3 validate.py <datei.json> …   # einzelne Dateien

Exit-Code 0 = alles gueltig, 1 = mindestens ein Fehler.
"""

import json
import re
import sys
from pathlib import Path

SCHEMA_PATH = Path(__file__).parent / "entwurfs-parameter.schema.json"
SETS_DIR = Path(__file__).parent.parent / "wiki" / "parameter-sets"

# Band-Felder, deren [min, max]-Ordnung geprueft wird
BAND_FIELDS = [
    ("gebaeude", "grundriss_tiefe_m"),
    ("flaechen", "hnf_pro_einheit_m2"),
    ("kosten_referenz", "chf_m3_gv_band"),
]

TYPE_MAP = {
    "object": dict,
    "array": list,
    "string": str,
    "integer": int,
    "number": (int, float),
    "null": type(None),
    "boolean": bool,
}


def _check_type(value, typ):
    if isinstance(typ, list):
        return any(_check_type(value, t) for t in typ)
    py = TYPE_MAP.get(typ)
    if py is None:
        return True
    if typ in ("integer", "number") and isinstance(value, bool):
        return False
    return isinstance(value, py)


def mini_validate(instance, schema, path="$"):
    """Eingebauter Validator fuer die im JANS-Schema verwendete Teilmenge."""
    errors = []

    typ = schema.get("type")
    if typ is not None and not _check_type(instance, typ):
        errors.append(f"{path}: erwartet Typ {typ}, erhalten {type(instance).__name__}")
        return errors  # Folgepruefungen waeren sinnlos

    if "enum" in schema and instance not in schema["enum"]:
        errors.append(f"{path}: Wert {instance!r} nicht in enum {schema['enum']}")

    if isinstance(instance, str) and "pattern" in schema:
        if not re.search(schema["pattern"], instance):
            errors.append(f"{path}: {instance!r} verletzt Pattern {schema['pattern']!r}")

    if isinstance(instance, (int, float)) and not isinstance(instance, bool):
        if "minimum" in schema and instance < schema["minimum"]:
            errors.append(f"{path}: {instance} < minimum {schema['minimum']}")
        if "maximum" in schema and instance > schema["maximum"]:
            errors.append(f"{path}: {instance} > maximum {schema['maximum']}")

    if isinstance(instance, dict):
        for req in schema.get("required", []):
            if req not in instance:
                errors.append(f"{path}: Pflichtfeld '{req}' fehlt")
        props = schema.get("properties", {})
        for key, val in instance.items():
            if key in props:
                errors.extend(mini_validate(val, props[key], f"{path}.{key}"))

    if isinstance(instance, list):
        if "minItems" in schema and len(instance) < schema["minItems"]:
            errors.append(f"{path}: {len(instance)} Elemente < minItems {schema['minItems']}")
        if "maxItems" in schema and len(instance) > schema["maxItems"]:
            errors.append(f"{path}: {len(instance)} Elemente > maxItems {schema['maxItems']}")
        item_schema = schema.get("items")
        if isinstance(item_schema, dict):
            for i, item in enumerate(instance):
                errors.extend(mini_validate(item, item_schema, f"{path}[{i}]"))

    return errors


def _has_numeric(value):
    if isinstance(value, bool):
        return False
    if isinstance(value, (int, float)):
        return True
    if isinstance(value, list):
        return any(_has_numeric(v) for v in value)
    if isinstance(value, dict):
        return any(_has_numeric(v) for v in value.values())
    return False


def validate_file(fp: Path, schema) -> tuple[list, list]:
    """Liefert (fehler, warnungen) fuer eine Datei."""
    errors, warnings = [], []
    try:
        data = json.loads(fp.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        return [f"{fp.name}: JSON nicht lesbar/parsebar: {exc}"], []

    # Schema-Validierung: jsonschema falls vorhanden, sonst Mini-Validator
    try:
        import jsonschema  # type: ignore

        validator = jsonschema.Draft202012Validator(schema)
        for err in sorted(validator.iter_errors(data), key=str):
            loc = "$" + "".join(
                f"[{p}]" if isinstance(p, int) else f".{p}" for p in err.absolute_path
            )
            errors.append(f"{fp.name}: {loc}: {err.message}")
    except ImportError:
        errors.extend(f"{fp.name}: {e}" for e in mini_validate(data, schema))

    # Zusatz: id == Dateiname
    if isinstance(data, dict) and "id" in data and data["id"] != fp.stem:
        errors.append(f"{fp.name}: id {data['id']!r} != Dateiname {fp.stem!r}")

    # Zusatz: Band-Ordnung min <= max
    if isinstance(data, dict):
        for parent, field in BAND_FIELDS:
            band = data.get(parent, {}).get(field) if isinstance(data.get(parent), dict) else None
            if (
                isinstance(band, list)
                and len(band) == 2
                and all(isinstance(v, (int, float)) and not isinstance(v, bool) for v in band)
                and band[0] > band[1]
            ):
                errors.append(f"{fp.name}: {parent}.{field}: min {band[0]} > max {band[1]}")

        # Warnung: Zahlenwerte ohne Quellenangabe
        numeric_blocks = [k for k in ("gebaeude", "flaechen", "kosten_referenz") if _has_numeric(data.get(k))]
        if numeric_blocks and not data.get("quellen"):
            warnings.append(
                f"{fp.name}: numerische Kennwerte in {numeric_blocks}, aber 'quellen' fehlt/leer"
            )

    return errors, warnings


def main(argv):
    if not SCHEMA_PATH.exists():
        print(f"FEHLER: Schema nicht gefunden: {SCHEMA_PATH}", file=sys.stderr)
        return 1
    schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))

    if len(argv) > 1 and argv[1] == "--all":
        files = sorted(SETS_DIR.glob("*.json"))
        if not files:
            print(f"FEHLER: keine JSON-Dateien in {SETS_DIR}", file=sys.stderr)
            return 1
    elif len(argv) > 1:
        files = [Path(a) for a in argv[1:]]
    else:
        print(__doc__)
        return 1

    total_errors = 0
    for fp in files:
        errors, warnings = validate_file(fp, schema)
        for w in warnings:
            print(f"  WARNUNG {w}")
        if errors:
            total_errors += len(errors)
            for e in errors:
                print(f"  FEHLER  {e}")
            print(f"FAIL  {fp.name} ({len(errors)} Fehler)")
        else:
            print(f"OK    {fp.name}")

    return 1 if total_errors else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
