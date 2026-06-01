#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
dossier_build.py — Kanonische Dossier-Engine (Skill `ausschreibung`, Phase 1+2)

JANS AI Hub · ersetzt die bisher pro Projekt von Hand zusammengesteckte
Bash/build.js-Kette durch EINEN deterministischen Generator.

Aufruf:
    python3 dossier_build.py <config.json>
    python3 dossier_build.py <config.json> --no-pdf     # nur DOCX (schnell)

Was die Engine pro Anbieter erzeugt (komplettes, Rule-konformes Paket im
Anbieter-Unterordner — KEINE losen Dateien im Versand-Root):
    <Anbieter>/<prefix>_Begleitschreiben.docx+pdf   (mit Empfaenger des Anbieters)
    <Anbieter>/<prefix>_LV.docx+pdf
    <Anbieter>/<prefix>_Antwortformular.docx+pdf
    <Anbieter>/<prefix>_Adresse.docx+pdf            (Fenstercouvert, Rule adressblatt)
    <Anbieter>/<beilagen…>                          (kopiert aus config.beilagen_files)

Doppel-Ablage (Rule lv-ablage): zuerst AI-Hub-Output, danach 1:1 in den
Projekt-Versandordner gespiegelt.

PDF-Konvertierung ueber das geteilte, lock-sichere Werkzeug
    scripts/docx2pdf.sh
(nie soffice von Hand).

Config-Schema: siehe configs/_TEMPLATE.json im selben tools/-Ordner.
"""
import json
import os
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import jans_docx as jd  # noqa: E402

DOCX2PDF = "/Volumes/daten/jans-ai-hub/scripts/docx2pdf.sh"


def _req(cfg, key):
    if key not in cfg:
        sys.exit(f"❌ Pflichtfeld fehlt in Config: '{key}'")
    return cfg[key]


def _anbieter_folder(versand_dir, kurzname):
    d = os.path.join(versand_dir, kurzname)
    os.makedirs(d, exist_ok=True)
    return d


def build_paket(cfg, versand_dir, make_pdf=True):
    """Erzeugt fuer JEDEN Anbieter ein vollstaendiges Paket in versand_dir.
    Gibt die Liste der erzeugten DOCX-Pfade zurueck."""
    prefix = _req(cfg, "los_prefix")            # z.B. "LOS 273 Schreinerarbeiten 2620_Albertstrasse7"
    projekt = _req(cfg, "projekt_adresse")
    los_titel = _req(cfg, "los_titel")
    datum_ort = cfg.get("datum_ort", "Zürich, 1. Juni 2026")
    bauherr = _req(cfg, "bauherr_zeilen")
    positionen = _req(cfg, "positionen")
    anbieter = _req(cfg, "anbieter")
    beilagen_namen = cfg.get("beilagen_namen", [])
    beilagen_files = cfg.get("beilagen_files", [])
    bauseits = cfg.get("bauseits", [])

    created = []
    for ab in anbieter:
        kurz = _req(ab, "kurzname")
        af = _anbieter_folder(versand_dir, kurz)

        # 1) LV (identisch fuer alle — faire Vergleichbarkeit)
        lv = os.path.join(af, f"{prefix}_LV.docx")
        jd.build_lv(lv, projekt=projekt, los_titel=los_titel, bauherr_zeilen=bauherr,
                    positionen=positionen, einleitung=cfg.get("lv_einleitung"),
                    bauseits=bauseits, datum_ort=datum_ort)
        created.append(lv)

        # 2) Antwortformular (identisch)
        af_doc = os.path.join(af, f"{prefix}_Antwortformular.docx")
        jd.build_antwortformular(af_doc, projekt=projekt, los_titel=los_titel, datum_ort=datum_ort)
        created.append(af_doc)

        # 3) Begleitschreiben (Empfaenger = dieser Anbieter)
        bs = os.path.join(af, f"{prefix}_Begleitschreiben.docx")
        jd.build_anschreiben(
            bs,
            empfaenger=ab.get("empfaenger", ab.get("zeilen", [kurz])),
            betreff=cfg.get("betreff", f"Submission {los_titel} — {projekt}"),
            anrede=ab.get("anrede", "Sehr geehrte Damen und Herren"),
            absatz_einleitung=_req(cfg, "anschreiben_einleitung"),
            grundlagen_satz=_req(cfg, "grundlagen_satz"),
            gleichwertig_bauseits=cfg.get(
                "gleichwertig_bauseits",
                "Gleichwertige Produkte sind zugelassen, sofern die technischen "
                "Spezifikationen vollumfänglich erfüllt werden. Bauseitige Leistungen "
                "sind im Leistungsverzeichnis ausgewiesen."),
            eingabefrist_satz=_req(cfg, "eingabefrist_satz"),
            beilagen=beilagen_namen,
            besichtigung=cfg.get("besichtigung"),
            datum_ort=datum_ort,
        )
        created.append(bs)

        # 4) Adressblatt (Fenstercouvert)
        adr = os.path.join(af, f"{prefix}_Adresse.docx")
        jd.build_adressblatt(adr, anbieter_zeilen=ab.get("zeilen", [kurz]))
        created.append(adr)

        # 5) Statische Beilagen (Plaene, Grobtermine, …) hineinkopieren
        for src in beilagen_files:
            if os.path.exists(src):
                shutil.copy2(src, os.path.join(af, os.path.basename(src)))
            else:
                print(f"⚠️  Beilage fehlt (nicht kopiert): {src}")

    if make_pdf:
        rc = subprocess.call(["bash", DOCX2PDF, versand_dir])
        # docx2pdf.sh konvertiert nur das oberste Verzeichnis — pro Anbieter-Ordner nachziehen
        for ab in anbieter:
            subprocess.call(["bash", DOCX2PDF, os.path.join(versand_dir, _req(ab, "kurzname"))])
        if rc not in (0, 1):
            print("⚠️  docx2pdf meldete einen Fehler — bitte PDFs pruefen.")
    return created


def main():
    if len(sys.argv) < 2:
        sys.exit("Verwendung: python3 dossier_build.py <config.json> [--no-pdf]")
    make_pdf = "--no-pdf" not in sys.argv
    cfg = json.load(open(sys.argv[1], encoding="utf-8"))

    aihub = _req(cfg, "output_aihub_versand")          # AI-Hub-Output Versandordner
    os.makedirs(aihub, exist_ok=True)
    print(f"▶  Baue Dossier in AI-Hub-Output: {aihub}")
    build_paket(cfg, aihub, make_pdf=make_pdf)

    # Doppel-Ablage: 1:1 in Projekt-Versandordner spiegeln (Rule lv-ablage)
    projekt_versand = cfg.get("projekt_versand_dir")
    if projekt_versand:
        os.makedirs(projekt_versand, exist_ok=True)
        for entry in os.listdir(aihub):
            s = os.path.join(aihub, entry)
            t = os.path.join(projekt_versand, entry)
            if os.path.isdir(s):
                shutil.copytree(s, t, dirs_exist_ok=True)
            else:
                shutil.copy2(s, t)
        print(f"✅ Doppel-Ablage gespiegelt nach: {projekt_versand}")

    print("✅ Dossier fertig.")


if __name__ == "__main__":
    main()
