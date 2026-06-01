"""Seite 1 der Installationslegende anonymisieren — saubere Bauleitung-Variante.

- Logo + Adressblock von Gastro-Online entfernt (weiss)
- Eine Zeile als Bauleitungs-Stempel oben rechts
- Sachbearbeiter-Feld leer (Plan-Urheber neutral)
- Massdifferenzen-Satz auf Bauleitung umformuliert
"""
import fitz

SRC = "/tmp/build_kispi/bkp/01 Kücheneinrichtung/25_122-01.3_Installationslegende_2026_05_01_Kücheneinrichtung_Kispi_Zürich-Seite1.pdf"
DST = "/tmp/build_kispi/bkp/01 Kücheneinrichtung/25_122-01.3_Installationslegende_2026_05_01_Kücheneinrichtung_Kispi_Zürich-Seite1_JANS.pdf"

doc = fitz.open(SRC)
page = doc[0]

# Logo oben links: weiss (kein Ersatz)
page.draw_rect(fitz.Rect(27, 56, 305, 142), color=None, fill=(1, 1, 1), overlay=True)

# Kompletter Gastro-Online-Adressblock oben rechts: redact (weiss)
page.add_redact_annot(fitz.Rect(615, 36, 815, 155), fill=(1, 1, 1))

# Sachbearbeiter-Wert: redact (Label bleibt, Wert blank)
page.add_redact_annot(fitz.Rect(209, 245, 320, 258), fill=(1, 1, 1))

# Massdifferenzen-Satz: redact
page.add_redact_annot(fitz.Rect(27, 465, 600, 478), fill=(1, 1, 1))

page.apply_redactions()

# Bauleitungs-Stempel (eine Zeile, klar als Rolle)
page.insert_text(
    (618, 60), "Bauleitung",
    fontname="hebo", fontsize=10, color=(0, 0, 0),
)
page.insert_text(
    (618, 75), "Raphael Jans Architekten ETH SIA",
    fontname="helv", fontsize=9.5, color=(0, 0, 0),
)
page.insert_text(
    (618, 89), "rj@raphaeljans.ch",
    fontname="helv", fontsize=9.5, color=(0, 0, 0),
)

# Massdifferenzen-Satz neu (Bauleitung-Bezug)
page.insert_text(
    (28, 475),
    "Massdifferenzen und Abweichungen sind sofort der Bauleitung Raphael Jans Architekten ETH mitzuteilen.",
    fontname="helv", fontsize=9.5, color=(0, 0, 0),
)

doc.save(DST, garbage=4, deflate=True)
doc.close()
print(f"OK: {DST}")
