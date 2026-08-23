#!/usr/bin/env python3
"""Kern von kennwert-recompute.sh — rechnet Kennwerte gegen ihre Bezugsgroessen zurueck.

Bewusst eine eigene Datei statt eines eingebetteten Heredocs: der Parser braucht
regulaere Ausdruecke mit Anfuehrungszeichen und Backslashes, und ein Python-Block
im Bash-Heredoc wird dabei unlesbar (und beim Schreiben leicht zerstoert).

Aufruf ueber den Wrapper. Direkt: python3 kennwert-recompute.py <wissen-pfad> <toleranz> <raw:0|1> [kb …]
"""
import os
import re
import sys
import glob

NUM = r"\d{1,3}(?:['’]\d{3})+(?:[.,]\d+)?|\d+(?:[.,]\d+)?"


def zahl(t):
    if t is None:
        return None
    t = t.replace("’", "'").replace("'", "").strip()
    if t.count(",") == 1 and t.count(".") == 0:
        t = t.replace(",", ".")
    try:
        return float(t)
    except ValueError:
        return None


def fmt(v):
    return f"{v:,.0f}".replace(",", "'") if abs(v) >= 100 else f"{v:,.2f}".replace(",", "'")


def passt(ist, soll, tol):
    """Toleranzvergleich. Akzeptiert auch die Prozent-Lesart: eine Zeile wie
    «129'000 / 3'100'000 = 4.2» meint eine Rendite in Prozent, keinen Quotienten."""
    if soll == 0:
        return True
    if abs(ist / soll - 1) * 100 <= tol:
        return True
    if abs(ist * 100 / soll - 1) * 100 <= tol:
        return True
    if abs(ist * 1000 / soll - 1) * 100 <= tol:      # Promille-Lesart
        return True
    return False


RECHNUNG = re.compile(
    rf"({NUM})\s*(Mio\.?|Millionen)?\s*[/÷]\s*({NUM})\s*"
    rf"(?:m2|m²|m3|m³|PZ|Pl(?:ae|ä)tze?|Zimmer|Stk\.?)?\s*"
    rf"(?:GV|GF|HNF|NF|BGF)?\s*=\s*[*\s]*({NUM})",
    re.I,
)

KOPF_JE = re.compile(r"CHF\s*/\s*(m2|m²|m3|m³|PZ|Zimmer|Platz|Einheit)|/\s*(m2|m²|m3|m³|PZ)", re.I)
KOPF_KOSTEN = re.compile(r"(CHF|Mio|Kosten|BKP\s*\d)", re.I)
KOPF_MENGE = re.compile(r"\b(GF|GV|HNF|NF|BGF|PZ|Betten|Zimmer|Pl(?:ae|ä)tze)\b", re.I)
TRENNER = re.compile(r"^\s*\|[\s:|-]+\|\s*$")


def zellwert(z):
    z = z.replace("**", "").replace("~~", "").strip()
    m = re.search(NUM, z)
    return zahl(m.group(0)) if m else None


def tabellen_pruefung(zeilen, rel, melden, tol):
    """Markdown-Tabellen: Kostenspalte / Mengenspalte gegen die Je-Einheit-Spalte."""
    i = 0
    while i < len(zeilen):
        ist_kopf = (
            zeilen[i].strip().startswith("|")
            and i + 1 < len(zeilen)
            and TRENNER.match(zeilen[i + 1])
        )
        if not ist_kopf:
            i += 1
            continue

        kopf = [c.strip() for c in zeilen[i].strip().strip("|").split("|")]
        k_je = [j for j, c in enumerate(kopf) if KOPF_JE.search(c)]
        k_kosten = [j for j, c in enumerate(kopf) if KOPF_KOSTEN.search(c) and j not in k_je]
        k_menge = [j for j, c in enumerate(kopf) if KOPF_MENGE.search(c) and j not in k_je and j not in k_kosten]

        if k_je and k_kosten and k_menge:
            r = i + 2
            while r < len(zeilen) and zeilen[r].strip().startswith("|"):
                zellen = [c.strip() for c in zeilen[r].strip().strip("|").split("|")]
                if len(zellen) == len(kopf):
                    pruefe_zeile(kopf, zellen, k_je, k_kosten, k_menge, rel, r + 1, melden, tol)
                r += 1
            i = r
            continue
        i += 1


def pruefe_zeile(kopf, zellen, k_je, k_kosten, k_menge, rel, ln, melden, tol):
    label = zellen[0].replace("**", "").strip()[:38]
    for kj in k_je:
        soll = zellwert(zellen[kj])
        if not soll:
            continue
        marke_m = KOPF_JE.search(kopf[kj])
        marke = (marke_m.group(1) or marke_m.group(2) or "").lower()
        # Mengenspalte mit passender Einheit suchen, sonst die einzige nehmen
        passend = next((km for km in k_menge if marke and marke in kopf[km].lower()), None)
        if passend is None and len(k_menge) == 1:
            passend = k_menge[0]
        if passend is None:
            continue
        menge = zellwert(zellen[passend])
        if not menge:
            continue
        for kk in k_kosten:
            kosten = zellwert(zellen[kk])
            if not kosten:
                continue
            if re.search(r"Mio", kopf[kk], re.I):
                kosten *= 1_000_000
            if kosten < menge:          # Kosten muessen groesser sein als die Menge
                continue
            ist = kosten / menge
            if passt(ist, soll, tol):
                continue
            melden(
                rel, ln,
                f"[{label}] {kopf[kk].strip()} {fmt(kosten)} / {kopf[passend].strip()} {fmt(menge)}"
                f" = {fmt(ist)} — Spalte «{kopf[kj].strip()}» nennt {fmt(soll)}"
                f"  (Abweichung {abs(ist / soll - 1) * 100:.1f} %)",
            )


# ---- (c) Pfeil-Behauptungen gegen eine dokumentweit EINDEUTIGE Bezugsgroesse ----------
# Muster: irgendwo im Dokument steht "GV ... = 1'715 m3", spaeter "1'903'000 -> CHF 698.-/GV".
# Genau so sah der Reckholdern-Fall aus: Kostenblock und Kennwerte stammten aus einer fremden
# Vorlage, nur das GV-Feld war aktualisiert — in der Tabelle unsichtbar, weil es keine Tabelle
# gab. Guard: nur pruefen, wenn das Dokument die Bezugsgroesse GENAU EINMAL deklariert, sonst
# weiss man nicht, welches Objekt gemeint ist (ein 8-Objekt-Blatt hat acht GV).
GV_DEKL = re.compile(
    r"\*{0,2}(GV|Geb(?:ae|\u00e4)udevolumen)\b[^0-9\n]{0,40}?(" + NUM + r")\s*(?:m3|m\u00b3)",
    re.I)
PFEIL = re.compile(
    r"(" + NUM + r")\s*(?:CHF|Fr\.)?\s*(?:\u2192|->)\s*(?:CHF|Fr\.)?\s*(" + NUM + r")"
    r"\s*\.?-?\s*/\s*(?:m3|m\u00b3|GV)", re.I)


def pfeil_pruefung(text, rel, melden, tol):
    dekl = {zahl(m.group(2)) for m in GV_DEKL.finditer(text)}
    dekl = {d for d in dekl if d and d > 50}
    if len(dekl) != 1:
        return
    gv = dekl.pop()
    for i, z in enumerate(text.split("\n"), 1):
        for m in PFEIL.finditer(z):
            kosten, soll = zahl(m.group(1)), zahl(m.group(2))
            if not kosten or not soll or kosten < 1000:
                continue
            ist = kosten / gv
            if passt(ist, soll, tol):
                continue
            melden(rel, i,
                   f"Bezugsgroesse im Dokument: {fmt(gv)} m3 · {fmt(kosten)} / {fmt(gv)} = {fmt(ist)}"
                   f" — behauptet {fmt(soll)}  (Abweichung {abs(ist / soll - 1) * 100:.1f} %)"
                   f"   \u00ab{m.group(0).strip()[:70]}\u00bb")


def main():
    wissen, tol, mitraw = sys.argv[1], float(sys.argv[2]), sys.argv[3] == "1"
    kbsel = sys.argv[4:]

    kbs = sorted(d for d in os.listdir(wissen) if os.path.isdir(os.path.join(wissen, d, "wiki")))
    if kbsel:
        for k in kbsel:
            if k not in kbs:
                print(f"== {k}: keine wiki/ — uebersprungen")
        kbs = [k for k in kbs if k in kbsel]

    befunde = 0
    for kb in kbs:
        print(f"== {kb}")
        zaehler = [0]

        def melden(rel, ln, text, _z=zaehler):
            print(f"  ! {rel}:{ln}")
            print(f"      {text}")
            _z[0] += 1

        muster = [os.path.join(wissen, kb, "wiki", "**", "*.md")]
        if mitraw:
            muster.append(os.path.join(wissen, kb, "raw", "**", "*.md"))
        for f in sorted({x for m in muster for x in glob.glob(m, recursive=True)}):
            rel = os.path.relpath(f, os.path.join(wissen, kb))
            try:
                zeilen = open(f, encoding="utf-8", errors="replace").read().split("\n")
            except OSError:
                continue
            for i, z in enumerate(zeilen, 1):
                for m in RECHNUNG.finditer(z):
                    a, mio, b, c = zahl(m.group(1)), m.group(2), zahl(m.group(3)), zahl(m.group(4))
                    if None in (a, b, c) or b == 0 or c == 0:
                        continue
                    if mio:
                        a *= 1_000_000
                    if a < 1000 or b < 1 or a < b:
                        continue
                    ist = a / b
                    if passt(ist, c, tol):
                        continue
                    melden(rel, i,
                           f"behauptet {fmt(c)} · gerechnet {fmt(ist)} · "
                           f"Abweichung {abs(ist / c - 1) * 100:.1f} %   «{m.group(0).strip()[:80]}»")
            tabellen_pruefung(zeilen, rel, melden, tol)
            pfeil_pruefung("\n".join(zeilen), rel, melden, tol)

        print("  keine Befunde." if zaehler[0] == 0 else f"  {zaehler[0]} Befund(e).")
        befunde += zaehler[0]
        print()

    print(f"Total: {befunde} Befund(e).")
    return 1 if befunde else 0


if __name__ == "__main__":
    sys.exit(main())
