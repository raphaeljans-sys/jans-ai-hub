#!/usr/bin/env python3
"""bezugsgroessen-check — Frage: NENNER. Traegt jede Quote ihre Bezugsgroesse, und ist sie moeglich?

Fuenftes Werkzeug im Wissens-Layer, angelegt 23.08.2026. Es ergaenzt die vier bestehenden um
die Frage, an der die teuersten Fehler der KB energie hingen — und die keines der vier stellt:

    wiki-konsistenz.sh    Form     Frontmatter, INDEX, Backlinks
    link-frischecheck.sh  Zugang   sind die Adressen erreichbar
    kennwert-recompute.sh Inhalt   gehen die Kennwerte gegen ihre Bezugsgroessen auf
    link-zielabgleich.sh  Ziel     landet der Link, wo er hinzeigt
    bezugsgroessen-check  NENNER   steht die Bezugsgroesse dabei, und ist der Wert moeglich

Der Unterschied zu `kennwert-recompute`: jenes prueft, ob eine ausgeschriebene Rechnung aufgeht
(a × b = c). Dieses prueft den Fall, in dem die Rechnung stimmt und trotzdem alles falsch ist,
weil der NENNER ein anderer ist als angenommen. Belegte Anlassfaelle aus dem Audit vom
23.08.2026 (`wissen/energie/outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`):

  * «Unabhaengigkeit 53 %» aus einem Anbieter-Werkzeug wurde als Autarkie gefuehrt. Es war
    Produktion/Verbrauch (Deckungsgrad); die echte Autarkie betrug 23 %. Zwei Monate unbemerkt,
    obwohl die richtige Definition im Nachbarartikel stand. Der zweite Bericht wies 103 % aus —
    als Autarkie unmoeglich.
  * Der Minergie-THGE-Grenzwert wurde je m2 Geschossflaeche gerechnet und je m2 EBF ausgegeben:
    25 % zu streng, in einem zweimal verifizierten established-Destillat.
  * Eine Vollkostentabelle fuehrte «Summe ueber 20 Jahre» und «pro Betriebsjahr» nebeneinander,
    mit je Zeile anderem Nenner — beide Spalten sahen umrechenbar aus, keine Zeile ging auf.

Aufruf:
    python3 wissen/tools/bezugsgroessen-check.py            # alle Wissensbasen
    python3 wissen/tools/bezugsgroessen-check.py energie     # eine
Exit: 0 = keine Befunde · 1 = Befunde (wie die uebrigen vier Werkzeuge).

Das Script ist LESEND. Jeder Treffer ist ein KANDIDAT, kein Urteil: er ist am Umfeld zu
beurteilen. Ein geprueft-unbedenklicher Treffer gehoert mit einer Zeile Begruendung in die
`wiki/QUESTIONS.md` der KB, damit ihn der naechste Lauf nicht erneut aufgreift.
"""

import argparse
import pathlib
import re
import sys

HUB = pathlib.Path("/Volumes/daten/jans-ai-hub")
WISSEN = HUB / "wissen"

# Quoten, die 100 % konstruktiv nie ueberschreiten koennen. Ein Wert darueber ist immer
# ein anderer Kennwert — meist ein Deckungs- oder Erfuellungsgrad.
QUOTEN_MIT_DECKEL = (
    "Autarkie", "Autarkiegrad", "Selbstversorgungsgrad",
    "Eigenverbrauchsquote", "Eigenverbrauchsgrad", "Deckungsanteil",
)

# Kennzahl -> Woerter, von denen mindestens eines im selben Satz stehen muss, damit die
# Bezugsgroesse mitgeht. Bewusst kurz gehalten: jede zusaetzliche Kennzahl kostet Fehlalarme.
BEZUGSPFLICHT = {
    "Autarkie": ("Eigenverbrauch", "Verbrauch", "Selbstversorgung", "Deckungsgrad", "Bedarf"),
    "Selbstversorgungsgrad": ("Eigenverbrauch", "Verbrauch", "Autarkie", "Bedarf"),
    # «Deckungsgrad» ist in der Solarthermie ein eingefuehrter Fachbegriff mit klarem Bezug
    # (Anteil am Waermebedarf). Ohne diese Woerter im Bezugsvorrat meldete das Script die
    # halbe Solarthermie-Literatur der KB.
    "Deckungsgrad": ("Produktion", "Verbrauch", "Bedarf", "Kollektor", "Autarkie", "Erzeugung",
                     "Warmwasser", "Waermeertrag", "Wärmeertrag", "solar", "Heizung", "WRG"),
    "qE50": ("Huellflaeche", "Hüllfläche", "m³/(h·m²)", "m3/(h*m2)", "n50"),
    "n50": ("Innenvolumen", "Volumen", "h⁻¹", "h-1", "qE50"),
    "THGE": ("EBF", "GF", "Geschossflaeche", "Geschossfläche", "Energiebezugsfl"),
}

PROZENT = re.compile(r"(\d{1,3})(?:[.,]\d+)?\s?%")


def zahl(zelle):
    roh = re.sub(r"[^\d.,]", "", zelle.replace("'", "").replace("’", "")).replace(",", ".")
    try:
        return float(roh) if roh and roh.count(".") <= 1 else None
    except ValueError:
        return None


def saetze(zeile):
    for satz in re.split(r"(?<=[.;!?])\s+", zeile):
        if satz.strip():
            yield satz.strip()


def pruefe_datei(pfad, melde):
    text = pfad.read_text(encoding="utf-8", errors="replace")
    zeilen = text.splitlines()

    for nr, zeile in enumerate(zeilen, 1):
        # Zitierte Fremdaussagen und bereits gesetzte Korrekturvermerke nicht erneut melden.
        if "Korrektur" in zeile and "⚠" in zeile:
            continue
        for satz in saetze(zeile):
            for quote in QUOTEN_MIT_DECKEL:
                if quote.lower() not in satz.lower():
                    continue
                for wert in PROZENT.findall(satz):
                    if int(wert) > 100:
                        melde(pfad, f"Z. {nr}: «{quote}» mit {wert} % — eine Quote auf den "
                                    f"eigenen Bedarf kann 100 % nicht ueberschreiten; "
                                    f"vermutlich ein Deckungsgrad")
            for kennzahl, bezuege in BEZUGSPFLICHT.items():
                if not re.search(rf"\b{re.escape(kennzahl)}\b", satz):
                    continue
                if not PROZENT.search(satz) and kennzahl != "THGE":
                    continue          # ohne Zahl ist der Satz Erklaerung, kein Kennwert
                if any(b.lower() in satz.lower() for b in bezuege):
                    continue
                melde(pfad, f"Z. {nr}: «{kennzahl}» mit Zahlenwert, ohne Bezugsgroesse im "
                            f"selben Satz ({'/'.join(bezuege[:2])} …): {satz[:100]}")

    pruefe_tabellen(pfad, zeilen, melde)


def pruefe_tabellen(pfad, zeilen, melde):
    """Nennerprobe: wo eine Tabelle eine Summe und einen Periodenwert nebeneinander fuehrt,
    muss der implizite Nenner ueber die Zeilen konstant sein. Schwankt er, sind die Spalten
    nicht ineinander umrechenbar — und genau das liest jeder, der sie multipliziert."""
    block, start = [], 0
    for nr, zeile in enumerate(zeilen + [""], 1):
        if zeile.strip().startswith("|"):
            if not block:
                start = nr
            block.append([z.strip() for z in zeile.strip().strip("|").split("|")])
            continue
        if len(block) >= 5:
            spalten = max(len(z) for z in block)
            for a in range(1, spalten):
                for b in range(a + 1, spalten):
                    werte = []
                    for zellen in block:
                        if len(zellen) <= b:
                            continue
                        x, y = zahl(zellen[a]), zahl(zellen[b])
                        # x muss wie eine Summe aussehen, das Verhaeltnis wie eine
                        # Periodenzahl. Ohne diese Schranken meldet die Probe jede
                        # Bauteiltabelle, in der zwei Zahlenspalten stehen.
                        if x and y and y != 0 and x >= 1000 and 5 <= x / y <= 60:
                            werte.append(x / y)
                    if len(werte) < 4 or len(werte) < len(block) - 2:
                        continue
                    streuung = (max(werte) - min(werte)) / min(werte)
                    if 0.08 < streuung < 0.60:
                        melde(pfad, f"Tabelle ab Z. {start}: Spalte {a} gegen {b} hat je Zeile "
                                    f"einen anderen impliziten Nenner ({min(werte):.1f} bis "
                                    f"{max(werte):.1f}) — die Spalten sind nicht ineinander "
                                    f"umrechenbar, das gehoert unter die Tabelle geschrieben")
        block = []


def main():
    p = argparse.ArgumentParser(description="Bezugsgroessen und Unmoeglichkeiten im Wissens-Layer")
    p.add_argument("kb", nargs="*", help="Wissensbasen (ohne Angabe: alle mit wiki/)")
    p.add_argument("--hub", default=str(HUB))
    args = p.parse_args()

    wissen = pathlib.Path(args.hub) / "wissen"
    if not wissen.is_dir():
        print("wissen/ nicht erreichbar — NAS gemountet?")
        return 2

    kbs = args.kb or sorted(d.parent.name for d in wissen.glob("*/wiki") if d.is_dir())
    gesamt = 0
    for kb in kbs:
        treffer = []
        for ordner in ("wiki", "destillate"):
            for pfad in sorted((wissen / kb / ordner).glob("*.md")):
                pruefe_datei(pfad, lambda pf, t: treffer.append((pf, t)))
        print(f"\n== {kb}")
        if not treffer:
            print("  keine Befunde.")
        for pfad, text in treffer:
            print(f"  ! {pfad.name:52s} {text}")
        gesamt += len(treffer)

    print(f"\nTotal: {gesamt} Kandidat(en). Jeder Treffer ist ein Kandidat, kein Urteil — "
          f"am Umfeld beurteilen.")
    return 1 if gesamt else 0


if __name__ == "__main__":
    sys.exit(main())
