#!/usr/bin/env python3
"""
cad_dateien_backfill.py — Backfill fuer das Feld "cad_dateien" in bestehenden
Katalog-Records.

Hintergrund: Der 853er-Erstdurchlauf (Stufe 1) lief mit einer frueheren Version
von synobsis_scan.py, die "cad_dateien" (Liste der CAD-Dateipfade je Typ) noch
nicht schrieb -- nur den Zaehler "inventar.cad". Ein voller --reindex wuerde
alle 853 Ordner (inkl. sehr grosser Arbeitsarchive wie MPP mit ~240k Dateien)
komplett neu scannen und dabei auch die PDF/DOCX-Textextraktion wiederholen --
unnoetig teuer, nur um ein einzelnes Feld nachzutragen.

Dieses Skript patcht gezielt NUR die Architekten mit inventar.cad > 0 (Stand
2026-07-13: 29 von 853): re-walkt deren Ordner, sammelt CAD-Dateipfade nach Typ
und schreibt "cad_dateien" in das bestehende Katalog-JSON. Alle anderen Felder
(inventar, dateitypen, textauszug, embed_doc, stand) bleiben unveraendert.

Danach synobsis_scan.py --batch 0 (o.ae.) bzw. rebuild_cad_index() erneut
aufrufen, damit catalog/cad-index.json aus den gepatchten Records neu gebaut wird.

Usage:
  ~/.venvs/pdftools/bin/python tools/cad_dateien_backfill.py
"""
import json
import os
from pathlib import Path

CATALOG = Path("/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/catalog")
SKIP_WALK_DIRS = {"@eaDir", ".app"}
CAD_EXT = {".dwg", ".dxf", ".skp", ".3dm", ".pln", ".ifc", ".vwx", ".rvt"}


def collect_cad_dateien(adir: Path) -> dict:
    cad_dateien = {e.lstrip("."): [] for e in CAD_EXT}
    for dirpath, dirnames, filenames in os.walk(adir):
        if "@eaDir" in dirpath:
            continue
        dirnames[:] = [d for d in dirnames
                        if d not in SKIP_WALK_DIRS and not d.endswith(".app")]
        dp = Path(dirpath)
        for fn in filenames:
            if fn.startswith("."):
                continue
            ext = os.path.splitext(fn)[1].lower()
            if ext in CAD_EXT:
                rel = str((dp / fn).relative_to(adir))
                cad_dateien[ext.lstrip(".")].append(rel)
    return cad_dateien


def main():
    patched = 0
    skipped_missing_path = 0
    for jf in sorted(CATALOG.glob("*.json")):
        try:
            rec = json.loads(jf.read_text(encoding="utf-8"))
        except Exception:
            continue
        if not isinstance(rec, dict) or "inventar" not in rec:
            continue
        if "cad_dateien" in rec:
            continue  # bereits vorhanden (z.B. kuenftige Vollscans)
        if rec.get("inventar", {}).get("cad", 0) <= 0:
            continue  # keine CAD-Dateien laut Erstscan -> nichts zu holen
        adir = Path(rec["pfad"])
        if not adir.exists():
            print(f"  ! Pfad fehlt: {rec.get('slug')} -> {adir}")
            skipped_missing_path += 1
            continue
        cad_dateien = collect_cad_dateien(adir)
        total_found = sum(len(v) for v in cad_dateien.values())
        rec["cad_dateien"] = cad_dateien
        jf.write_text(json.dumps(rec, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"  [{rec.get('slug')}] inventar.cad={rec['inventar']['cad']}  "
              f"gefunden={total_found}")
        patched += 1
    print(f"Fertig. Gepatcht: {patched}. Fehlende Pfade: {skipped_missing_path}.")


if __name__ == "__main__":
    main()
