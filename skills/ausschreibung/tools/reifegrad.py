#!/usr/bin/env python3
"""
reifegrad.py — Abdeckungs- und Reifegrad-Report fuer das Bauleitungs-Harness

JANS AI Hub · Skill `ausschreibung`

Zeigt auf einen Blick:
  - welche Gewerke einen Goldstandard-LV haben und welche fehlen
  - Anzahl offener vs. geschlossener Wissensluecken
  - Reifegrad-Verteilung der Goldstandard-.md (aus Frontmatter `reifegrad:`)

So weiss ich vor jeder Bauleitungs-Session, wo nachzuziehen ist
(siehe wissensbasis/08_selbsttraining-mecano.md + 09_datenaufbereitung-pipeline.md).

Verwendung:
  python3 tools/reifegrad.py
"""
import os, re, glob

SKILL = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GOLD = os.path.join(SKILL, "referenzen", "goldstandard-lv")
LUECKEN = os.path.join(SKILL, "wissensbasis", "wissensluecken.md")

# Soll-Gewerke (BKP) aus der Gewerksliste
GEWERKE = {
    "112": "Abbruch/Aushub", "211": "Baumeister", "214": "Holzbau",
    "221": "Fenster", "224": "Bedachungen", "226": "Fassade/WDVS",
    "228": "Sonnenschutz", "230": "Elektro", "240": "Heizung",
    "250": "Sanitaer", "271": "Gipser", "272": "Metallbau/Tueren",
    "273": "Schreiner", "275": "Schliessanlagen", "281": "Unterlagsboden",
    "282": "Plattenarbeiten", "285": "Maler", "421": "Umgebung",
}


def gold_coverage():
    have = {}
    for f in glob.glob(os.path.join(GOLD, "*.md")):
        base = os.path.basename(f)
        if base.lower() == "readme.md":
            continue
        m = re.match(r"(\d{3})", base)
        if m:
            have.setdefault(m.group(1), []).append(base)
    return have


def reifegrade():
    counts = {}
    for f in glob.glob(os.path.join(GOLD, "*.md")):
        txt = open(f, encoding="utf-8", errors="replace").read(800)
        m = re.search(r"reifegrad:\s*(R\d)", txt)
        counts[m.group(1) if m else "R2?"] = counts.get(m.group(1) if m else "R2?", 0) + 1
    return counts


def luecken():
    if not os.path.exists(LUECKEN):
        return 0, 0
    txt = open(LUECKEN, encoding="utf-8", errors="replace").read()
    offen = len(re.findall(r"\|\s*offen\s*\|", txt)) + txt.count("| offen |")
    offen = txt.count("offen |")
    geschlossen = txt.lower().count("geschlossen")
    return offen, geschlossen


def main():
    have = gold_coverage()
    print("=" * 56)
    print(" REIFEGRAD-REPORT · Bauleitungs-Harness (ausschreibung)")
    print("=" * 56)
    abgedeckt = sorted(set(have) & set(GEWERKE))
    fehlt = sorted(set(GEWERKE) - set(have))
    print(f"\nGewerke mit Goldstandard ({len(abgedeckt)}/{len(GEWERKE)}):")
    for g in abgedeckt:
        print(f"  ✓ {g} {GEWERKE[g]:<18} → {len(have[g])} LV")
    print(f"\nGewerke OHNE Goldstandard ({len(fehlt)}):")
    print("  " + ", ".join(f"{g} {GEWERKE[g]}" for g in fehlt))
    rg = reifegrade()
    if rg:
        print("\nReifegrad-Verteilung Goldstandards:")
        for k in sorted(rg):
            print(f"  {k}: {rg[k]}")
    offen, _ = luecken()
    print(f"\nWissensluecken offen: ~{offen}  (siehe wissensbasis/wissensluecken.md)")
    quote = round(len(abgedeckt) / len(GEWERKE) * 100)
    print(f"\nAbdeckungsquote Gewerke: {quote}%")
    print("=" * 56)


if __name__ == "__main__":
    main()
