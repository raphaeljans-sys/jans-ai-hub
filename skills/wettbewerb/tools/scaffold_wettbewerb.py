#!/usr/bin/env python3
"""
JANS Wettbewerbs-Scaffolder — legt fuer einen neuen Architektur-Wettbewerb die Standard-
Ordnerstruktur plus drei Skelette an: Raumprogramm-Soll, Erlaeuterungsbericht und die
Abgabe-Checkliste (das verifizierbare Herzstueck der Konformitaets-Schleife).

Aufruf:
  python3 scaffold_wettbewerb.py --nr 2702 --name "Schulhaus Musterquartier" \
      [--ort "8000 Zuerich"] [--art selektiv] [--basis "<Pfad AR - 04 Wettbewerbe>"] [--dry-run]

--art:  offen | selektiv | studienauftrag  (nur Vermerk im Skelett)
Legt KEINE Inhalte um; erzeugt nur die leere Struktur + Skelette. Die fachliche Befuellung
machen die Agenten programm-leser / flaechen-nachweis / programm-pruefer.

ACHTUNG: Den Basispfad (Wettbewerbs-Archiv) bei Erstnutzung verifizieren — Default unten ist
eine Annahme parallel zu "AR - 03 Studien" (Rule identifikatoren-verifizieren).
"""
import argparse, os, sys, datetime

ORDNER = [
    "00_Admin", "01_Wettbewerbsprogramm", "02_Grundlagen", "03_Entwurf", "04_Plaene",
    "05_Visualisierung", "06_Schemas", "07_Flaechen", "08_Bericht", "09_Plakate",
    "10_Modell", "11_Abgabe",
]

DEFAULT_BASIS = os.path.expanduser(
    "~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 04 Wettbewerbe"
)

# --- Skelett 1: Raumprogramm-Soll (vom Agent programm-leser aus dem PDF zu fuellen) ---
SKELETT_SOLL = """\
# Raumprogramm-Soll — Wettbewerb {nr} {name}{ort}

Quelle: Wettbewerbsprogramm (PDF in 01_Wettbewerbsprogramm), Stand {datum}.
Vom Agent `programm-leser` befuellt. Nichts erfinden — Unklares als RUECKFRAGE markieren.

## Eckdaten
- Wettbewerbsart: {art}
- Auslober / Veranstalter:
- Verfahren / Preisgericht:
- Abgabeformat: Planformat ___ · Massstaebe ___ · Anzahl Boards ___ · Modellmassstab ___
- Anonymitaet / Kennzahl-Vorgaben:

## Termine (verifizieren — hart)
| Termin | Datum |
|---|---|
| Ausgabe Programm | |
| Fragenstellung | |
| Abgabe Plaene | |
| Abgabe Modell | |
| Jurierung | |

## Raumprogramm (Soll)
| Nr | Raum / Nutzung | Anzahl | Flaeche/Einheit (m2) | Flaeche total (m2) | Anforderung/Bemerkung |
|---|---|---|---|---|---|
| | | | | | |

- Soll-Flaeche HNF total: ___ m2
- Toleranz laut Programm: ___ %

## Beurteilungskriterien (gewichtet)
1.
2.
3.

## Zwingende Vorgaben / Auflagen
- Baurecht/Zone:
- Erschliessung/Parkierung:
- Nachhaltigkeit/Energie:
- Brandschutz:

## RUECKFRAGEN an die Ausschreiber
-
"""

# --- Skelett 2: Erlaeuterungsbericht ---
SKELETT_BERICHT = """\
# Erlaeuterungsbericht — Wettbewerb {nr} {name}{ort}

Kennwort: ___ · Stand {datum}
(Vor Abgabe durch Skill `korrektur`. Anonymitaet beachten — kein Bueroname auf der Abgabe.)

## Staedtebau / Setzung
## Architektonisches Konzept (Parti)
## Erschliessung & Freiraum
## Nutzung / Raumorganisation (Bezug Raumprogramm)
## Konstruktion & Tragwerk
## Nachhaltigkeit / Energie
## Brandschutz
## Wirtschaftlichkeit (Kennzahlen GF/GV, Grobkosten BKP 1-5)
"""

# --- Skelett 3: Abgabe-Checkliste (Konformitaets-Schleife, Ampel) ---
SKELETT_CHECKLISTE = """\
# Abgabe-Checkliste — Wettbewerb {nr} {name}{ort}

Stand {datum}. Vom Agent `programm-pruefer` gepflegt. Ampel: gruen=erfuellt ·
gelb=in Arbeit · orange=Hand/CAD noetig · rot=offen. KEINE Vorgabe auf gruen ohne Beleg.

## A. Abgabevorgaben (Format)
| # | Vorgabe (aus Programm) | Soll | Ist | Ampel |
|---|---|---|---|---|
| A1 | Planformat / Boardzahl | | | rot |
| A2 | Massstaebe (Situation/Grundriss/Schnitt) | | | rot |
| A3 | Modell / Einsatzmodell-Massstab | | | rot |
| A4 | Anonymitaet / Kennwort | | | rot |
| A5 | Abgabetermin Plaene / Modell | | | rot |

## B. Liefergegenstaende
| # | Deliverable | Reife | Ist | Ampel |
|---|---|---|---|---|
| B1 | Situationsplan | orange | | rot |
| B2 | Grundrisse alle Geschosse | orange | | rot |
| B3 | Schnitte / Ansichten | orange | | rot |
| B4 | Visualisierungen | rot | | rot |
| B5 | Konzept-Schemas | gelb | | rot |
| B6 | Erlaeuterungsbericht | gruen | | rot |
| B7 | Flaechen-/Raumprogramm-Nachweis (SIA 416) | gruen | | rot |
| B8 | Situationsmodell (3D-Print STL) | gelb | | rot |

## C. Inhaltliche Konformitaet
| # | Programmvorgabe | Soll | Ist | Ampel |
|---|---|---|---|---|
| C1 | Raumprogramm-Flaeche (HNF, Toleranz) | | | rot |
| C2 | Baurecht / Zone / Abstaende | | | rot |
| C3 | Erschliessung / Parkierung | | | rot |
| C4 | Nachhaltigkeit / Energie | | | rot |
| C5 | Brandschutz | | | rot |

## Offene Punkte / Hand
-
"""

ARTEN = {"offen", "selektiv", "studienauftrag"}


def main():
    p = argparse.ArgumentParser(description="JANS Wettbewerbs-Scaffolder")
    p.add_argument("--nr", required=True, help="Projektnummer, z.B. 2702")
    p.add_argument("--name", required=True, help="Wettbewerbsname")
    p.add_argument("--ort", default="", help="Ort, z.B. '8000 Zuerich'")
    p.add_argument("--art", default="selektiv", choices=sorted(ARTEN),
                   help="offen|selektiv|studienauftrag")
    p.add_argument("--basis", default=DEFAULT_BASIS, help="Basispfad AR - 04 Wettbewerbe")
    p.add_argument("--dry-run", action="store_true")
    a = p.parse_args()

    projordner = os.path.join(a.basis, f"{a.nr} {a.name}")
    datum = datetime.date.today().isoformat()
    ort = f", {a.ort}" if a.ort else ""
    ctx = dict(nr=a.nr, name=a.name, ort=ort, datum=datum, art=a.art)
    prefix = f"{a.nr[2:]}{datum[2:4]}"  # JJNN -> NN + JJ, analog scaffold_studie

    skelette = {
        os.path.join("01_Wettbewerbsprogramm", "Raumprogramm-Soll.md"): SKELETT_SOLL,
        os.path.join("08_Bericht", f"{prefix}_Erlaeuterungsbericht.md"): SKELETT_BERICHT,
        os.path.join("11_Abgabe", f"{prefix}_Abgabe-Checkliste.md"): SKELETT_CHECKLISTE,
    }

    print(f"Projektordner : {projordner}")
    print(f"Wettbewerbsart: {a.art}")
    print(f"Ordner        : {', '.join(ORDNER)}")
    if a.dry_run:
        print("\n[dry-run] nichts geschrieben. Skelett-Vorschau (Abgabe-Checkliste):\n")
        print(SKELETT_CHECKLISTE.format(**ctx))
        return

    if os.path.exists(projordner):
        print(f"WARNUNG: {projordner} existiert bereits — Ordner werden ergaenzt, "
              "Skelette NICHT ueberschrieben.", file=sys.stderr)
    for o in ORDNER:
        os.makedirs(os.path.join(projordner, o), exist_ok=True)
    for rel, tpl in skelette.items():
        pfad = os.path.join(projordner, rel)
        if not os.path.exists(pfad):
            with open(pfad, "w", encoding="utf-8") as f:
                f.write(tpl.format(**ctx))
            print(f"Skelett       : {pfad}")
        else:
            print(f"Skelett vorhanden, nicht ueberschrieben: {pfad}")
    print("\nNaechster Schritt: Wettbewerbsprogramm-PDF nach 01_Wettbewerbsprogramm legen, "
          "dann Agent `programm-leser` das Raumprogramm-Soll + die Abgabe-Checkliste fuellen "
          "lassen. Parti setzt der Architekt (Human Gate), danach volumenstudie.")


if __name__ == "__main__":
    main()
