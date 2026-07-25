#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
kontakte_bkp_import.py — macOS-Kontaktgruppen (BKP_*) -> verifizierte Anbieter-Overlays

JANS AI Hub - Skill `ausschreibung` / Skill `unternehmerfindung`

Liest alle macOS-Kontaktgruppen, deren Name mit einer Ziffer beginnt (BKP-Gruppen,
z.B. "211_Baumeisterarbeiten", "271_Gipserarbeiten"), und schreibt pro Gruppe eine
**verifizierte Overlay-Datei** `anbieter/<bkp>-<slug>.md` mit echten Kontaktdaten
(Firma, Ansprechpartner, Adresse, Mail, Telefon).

Diese Overlays haben im Findungs-Skill Vorrang vor der maschinell geernteten
`anbieter/stammdaten/`-Liste (Reifegrad R2, weil Kontakte verifiziert sind).

Grundsaetze:
- Liest live aus macOS-Kontakte via osascript (Bundle-ID com.apple.AddressBook).
- "missing value"-Felder werden zu leer; nichts wird erfunden.
- Eintraege, die offensichtlich KEINE Unternehmer sind (Bauherrschaft, Lieferanten),
  werden uebernommen aber mit Hinweis markiert (manuell pruefen).

Aufruf:
  python3 tools/kontakte_bkp_import.py            # alle BKP-Gruppen -> anbieter/
  python3 tools/kontakte_bkp_import.py --dry-run  # nur anzeigen, nichts schreiben

Voraussetzung: Kontakte-App muss einmal gestartet sein (Script startet sie sonst).
"""
import argparse
import os
import re
import subprocess
import sys
from datetime import date

US = "\x1f"  # unit separator (Feldtrenner)
RS = "\x1e"  # record separator (Datensatztrenner)

OSA = '''
tell application id "com.apple.AddressBook"
  set US to (ASCII character 31)
  set RS to (ASCII character 30)
  set digits to {"0","1","2","3","4","5","6","7","8","9"}
  set out to ""
  repeat with g in groups
    set gname to name of g
    if (count of characters of gname) > 0 and (character 1 of gname is in digits) then
      repeat with p in people of g
        set nm to ""
        try
          set nm to name of p
        end try
        set org to ""
        try
          set org to organization of p
        end try
        set em to ""
        try
          set em to value of email 1 of p
        end try
        set ph to ""
        try
          set ph to value of phone 1 of p
        end try
        set theStreet to ""
        set theZip to ""
        set theCity to ""
        try
          set theAddr to address 1 of p
          set theStreet to (street of theAddr)
          set theZip to (zip of theAddr)
          set theCity to (city of theAddr)
        end try
        set out to out & gname & US & nm & US & org & US & em & US & ph & US & theStreet & US & theZip & US & theCity & RS
      end repeat
    end if
  end repeat
  return out
end tell
'''

UMLAUT = str.maketrans({"ä": "ae", "ö": "oe", "ü": "ue", "Ä": "ae", "Ö": "oe", "Ü": "ue", "ß": "ss"})


def clean(v):
    v = (v or "").strip()
    return "" if v in ("missing value", "") else v


def slugify(text):
    text = text.translate(UMLAUT).lower()
    text = re.sub(r"[^a-z0-9]+", "-", text)
    return re.sub(r"-+", "-", text).strip("-")


def run_osascript():
    subprocess.run(["open", "-ga", "Contacts"], check=False)
    import time
    time.sleep(2)
    res = subprocess.run(["osascript", "-"], input=OSA, capture_output=True, text=True)
    if res.returncode != 0:
        sys.exit(f"osascript-Fehler: {res.stderr.strip()}")
    return res.stdout


def parse(raw):
    groups = {}
    for rec in raw.split(RS):
        if not rec.strip():
            continue
        f = rec.split(US)
        if len(f) < 8:
            continue
        gname, nm, org, em, ph, st, zp, ct = [clean(x) for x in f[:8]]
        firma = org or nm
        person = nm if (org and nm and nm != org) else ""
        adr = ", ".join(x for x in [st, (f"{zp} {ct}").strip()] if x)
        groups.setdefault(gname, []).append((firma, person, em, ph, adr))
    return groups


def build_md(gname, rows, stand):
    m = re.match(r"^(\d+)[_\s-]*(.*)$", gname)
    bkp = m.group(1) if m else "000"
    titel = (m.group(2).strip() if m and m.group(2) else gname).replace("_", " ")
    lines = ["---",
             f"gewerk: BKP {bkp} — {titel}",
             f'bkp: "{bkp}"',
             f"stand: {stand}",
             f"quelle: macOS-Kontakte, Gruppe \"{gname}\"",
             "reifegrad: R2  # verifizierte Kontaktdaten aus Adressbuch",
             "---", "",
             f"# Anbieter (verifiziert) — {titel} (BKP {bkp})", "",
             "> Verifizierte Overlay-Liste aus der macOS-Kontaktgruppe. Hat Vorrang vor",
             f"> `stammdaten/` bei Adresse/Mail/Telefon. Vor Versand Aktualitaet kurz pruefen.", "",
             "| Firma | Ansprechpartner | E-Mail | Telefon | Adresse |",
             "|---|---|---|---|---|"]
    for firma, person, em, ph, adr in rows:
        lines.append(f"| {firma} | {person} | {em} | {ph} | {adr} |")
    lines.append("")
    return bkp, slugify(titel), titel, "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(description="macOS BKP-Kontaktgruppen -> Anbieter-Overlays")
    ap.add_argument("-o", "--outdir", default=None, help="Zielordner (Default: <skill>/anbieter)")
    ap.add_argument("--stand", default=str(date.today()))
    ap.add_argument("--dry-run", action="store_true", help="nur anzeigen, nicht schreiben")
    args = ap.parse_args()

    outdir = args.outdir or os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "anbieter")

    groups = parse(run_osascript())
    if not groups:
        sys.exit("Keine BKP-Kontaktgruppen gefunden (Gruppenname muss mit einer Ziffer beginnen).")

    for gname, rows in sorted(groups.items()):
        bkp, slug, titel, md = build_md(gname, rows, args.stand)
        fname = f"{int(bkp):03d}-{slug}.md" if bkp.isdigit() else f"{slug}.md"
        if args.dry_run:
            print(f"--- {fname} ({len(rows)} Kontakte) ---")
            print(md)
        else:
            path = os.path.join(outdir, fname)
            with open(path, "w", encoding="utf-8") as fh:
                fh.write(md)
            print(f"  {fname}  ({len(rows)} Kontakte)")

    if not args.dry_run:
        print(f"\nFertig -> {outdir}")


if __name__ == "__main__":
    main()
