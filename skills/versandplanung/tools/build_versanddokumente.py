#!/usr/bin/env python3
"""build_versanddokumente.py — Packzettel + Pickup-Point-Liste aus bestellungen.json

Teil des Skills `versandplanung`. Erzeugt zwei druckfertige A4-PDFs im Ordner
der Eingabedatei:

  packzettel.pdf     eine Seite je Bestellung, Positionsliste mit Abhak-Kästchen
                     (für die Person, die im Lager pickt)
  pickup-liste.pdf   alle Pickup-Bestellungen, gruppiert je Pickup Point
                     (Beilage für die Auslieferroute)

Verwendung:
  python3 build_versanddokumente.py <pfad>/bestellungen.json

Benötigt reportlab (einmalig: pip3 install reportlab).
"""

import json
import sys
from pathlib import Path

try:
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.units import mm
    from reportlab.pdfgen.canvas import Canvas
except ImportError:
    sys.exit("FEHLER: reportlab fehlt — einmalig installieren: pip3 install reportlab")

RAND = 20 * mm
BREITE, HOEHE = A4


def kopfzeile(c: Canvas, titel: str, datum: str) -> float:
    c.setFont("Helvetica-Bold", 16)
    c.drawString(RAND, HOEHE - RAND, titel)
    c.setFont("Helvetica", 10)
    c.drawRightString(BREITE - RAND, HOEHE - RAND, datum)
    c.line(RAND, HOEHE - RAND - 4 * mm, BREITE - RAND, HOEHE - RAND - 4 * mm)
    return HOEHE - RAND - 12 * mm


def zeile(c: Canvas, y: float, text: str, fett: bool = False, einzug: float = 0.0, groesse: int = 11) -> float:
    c.setFont("Helvetica-Bold" if fett else "Helvetica", groesse)
    c.drawString(RAND + einzug, y, text)
    return y - 6.5 * mm


def packzettel(daten: dict, ziel: Path) -> int:
    c = Canvas(str(ziel), pagesize=A4)
    for b in daten["bestellungen"]:
        y = kopfzeile(c, f"Packzettel — Bestellung {b['nr']}", daten["datum"])
        y = zeile(c, y, b["name"], fett=True, groesse=13)
        if b["versandart"] == "pickup":
            y = zeile(c, y, f"Auslieferung Pickup Point: {b.get('pickup_punkt') or '—'}")
        else:
            adr = b["adresse"]
            y = zeile(c, y, f"Post-Versand: {adr['strasse']}, {adr['plz']} {adr['ort']}")
        y -= 4 * mm
        y = zeile(c, y, "Position", fett=True)
        for p in b["positionen"]:
            c.rect(RAND, y - 1 * mm, 4 * mm, 4 * mm)  # Abhak-Kästchen
            sku = f"  [{p['sku']}]" if p.get("sku") else ""
            y = zeile(c, y, f"{p['menge']} × {p['artikel']}{sku}", einzug=8 * mm)
            if y < RAND + 30 * mm:
                c.showPage()
                y = kopfzeile(c, f"Packzettel — Bestellung {b['nr']} (Fortsetzung)", daten["datum"])
        if b.get("notiz"):
            y -= 4 * mm
            y = zeile(c, y, "Kundennotiz:", fett=True)
            y = zeile(c, y, b["notiz"], einzug=8 * mm)
        c.setFont("Helvetica", 8)
        c.drawString(RAND, RAND, "Gepickt von: ____________________   Kontrolliert: ____________________")
        c.showPage()
    c.save()
    return len(daten["bestellungen"])


def pickup_liste(daten: dict, ziel: Path) -> int:
    pickup = [b for b in daten["bestellungen"] if b["versandart"] == "pickup"]
    punkte: dict[str, list] = {}
    for b in pickup:
        punkte.setdefault(b.get("pickup_punkt") or "Ohne Zuordnung", []).append(b)

    c = Canvas(str(ziel), pagesize=A4)
    y = kopfzeile(c, "Pickup-Point-Liste — Auslieferung", daten["datum"])
    if not pickup:
        zeile(c, y, "Heute keine Pickup-Bestellungen.")
    for punkt, liste in sorted(punkte.items()):
        if y < RAND + 40 * mm:
            c.showPage()
            y = kopfzeile(c, "Pickup-Point-Liste (Fortsetzung)", daten["datum"])
        y -= 3 * mm
        y = zeile(c, y, f"{punkt}  —  {len(liste)} Bestellung(en)", fett=True, groesse=12)
        for b in liste:
            artikel = ", ".join(f"{p['menge']}× {p['artikel']}" for p in b["positionen"])
            c.rect(RAND, y - 1 * mm, 4 * mm, 4 * mm)
            y = zeile(c, y, f"{b['nr']}  {b['name']}  —  {artikel}", einzug=8 * mm, groesse=10)
            if y < RAND + 20 * mm:
                c.showPage()
                y = kopfzeile(c, "Pickup-Point-Liste (Fortsetzung)", daten["datum"])
    c.showPage()
    c.save()
    return len(pickup)


def main() -> None:
    if len(sys.argv) != 2:
        sys.exit("Verwendung: build_versanddokumente.py <pfad>/bestellungen.json")
    quelle = Path(sys.argv[1])
    daten = json.loads(quelle.read_text(encoding="utf-8"))
    ordner = quelle.parent

    n_pack = packzettel(daten, ordner / "packzettel.pdf")
    n_pickup = pickup_liste(daten, ordner / "pickup-liste.pdf")

    # Verifier-Zahlen für den Tagesreport (Skill-Kernregel: Anzahlen müssen stimmen)
    print(f"packzettel.pdf: {n_pack} Bestellung(en)")
    print(f"pickup-liste.pdf: {n_pickup} Pickup-Bestellung(en)")


if __name__ == "__main__":
    main()
