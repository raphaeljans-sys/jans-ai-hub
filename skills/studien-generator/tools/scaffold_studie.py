#!/usr/bin/env python3
"""
JANS Studien-Scaffolder — legt fuer eine neue Machbarkeits-/Potenzial-/TDD-Studie die
Standard-Ordnerstruktur (_MAQ) plus ein Berichtsskelett an.

Aufruf:
  python3 scaffold_studie.py --nr 2701 --name "Musterstrasse 1" --typ A \
      [--ort "8000 Zuerich"] [--basis "<Pfad zu AR - 03 Studien>"] [--dry-run]

--typ:  A = Baurecht/Volumen | B = Potenzial/Wirtschaftlichkeit | C = TDD/Zustand |
        H = Healthcare-Machbarkeit
Legt KEINE Inhalte aus dem Archiv um; erzeugt nur die leere Struktur + Skelett.
Goldstandard-Vorlagen siehe skills/machbarkeit/referenzen/README.md.
"""
import argparse, os, sys, datetime

ORDNER = [
    "00_Admin", "01_Plaene", "02_Korrespondenz", "03_BKP", "04_KostenTermine",
    "05_Bilder", "06_Reglemente", "07_Referenzen", "08_Publikationen", "09_Dokumente",
]

DEFAULT_BASIS = os.path.expanduser(
    "~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 03 Studien"
)

# Berichtsskelett je Studientyp (Markdown -> via docx-Skill/scripts/docx2pdf.sh zu DOCX/PDF)
SKELETT_GEMEINSAM = """\
# {titel}

**Studie {nr} — {name}{ort}**
Raphael Jans Architekten ETH/SIA · Grubenstrasse 37 · 8045 Zuerich · Stand {datum}

## 1. Ausgangslage / Fragestellung
- Auftraggeber / Eigentuemerschaft:
- Anlass und Ziel der Studie:
- Fragestellungen (nummeriert, werden im Fazit beantwortet):
  1.
  2.
  3.

## 2. Status Quo
- Grundstueck: Parzelle Nr. ___, GSF ___ m2, Gemeinde/Kanton ___
- Orthofoto/Kataster mit Perimeter (Beilage)
- Objektspiegel (Bestand): Einheiten, Flaechen, Baujahr, letzte Sanierung
"""

SKELETT_A = """\
## 3. Oeffentlich-rechtliche Situation
- Zone / Empfindlichkeitsstufe:
- Massvorschriften: AZ/BMZ ___, Vollgeschosse ___, Gebaeude-/Fassadenhoehe ___,
  Grenz-/Strassen-/Gewaesser-/Waldabstand ___, Baulinien ___, Gruenflaechenziffer ___
- OEREB-Themen (Grundnutzung, ueberlagernd, Baulinien, Gewaesserraum, Laerm):
- BZO-Revision (falls haengig): alt/neu synoptisch + negative Vorwirkung

## 4. Ueberbaubarer Grund — Abstaende & Baufeld
- Abstands-Tabelle nach Himmelsrichtung (Paragraph + Distanz)
- Dienstbarkeiten mit Baufeld-Wirkung (Agent dienstbarkeiten-pruefer)
- Resultierendes Baufeld: ___ m2 (Vorher | Nachher bei Aenderung)

## 5. Variantenstudie (2-3 Varianten)
Je Variante: Konzept → Situationsplan 1:750 → Regelgrundriss 1:250 →
Wohnungsgrundrisse 1:150 → Flaechenauszug SIA 416 → Bebauungsschema 1:500.
- Variante 1:
- Variante 2:
- Variante 3:

## 6. Fazit & Kennwerte
- Beantwortung jeder Eingangsfrage
- Kennwerte-Tabelle (Ziel | Variante | Bestand): GSF, ÜZ/AZ, aGF, GF, GV, NGF, WZ, Effizienz
- Empfehlung / naechster Schritt

## 7. Erstellungskosten (Grobschaetzung BKP 1-5, ±25 %)
- Kennwert: ___ CHF/m2 HNF bzw. ___ CHF/m3 GV (Stand/Quelle)
- Grobkosten je Variante

## Annahmen & Vorbehalte
"""

SKELETT_B = SKELETT_A + """\

## 8. Wirtschaftlichkeit (Controlling Fact Sheet)
- Erstellungskosten WKB / CHF/m2:
- Ertrags-/Verkaufsannahme (UBS Fact Sheet Gemeinde):
- **Residualwert** (Ertrag/Erloes − Kosten − Marge − Abzuege − Diskontierung) = ___ CHF
  = ___ CHF/m2 GSF
- ODER **Marge** = (Erloes − Gesamtkosten inkl. Land)/Gesamtkosten = ___ %
- **Sensitivitaet**: Ausnuetzungs-Delta (0/−10/−20 %) × Kostenmodell (fix / 70-30) → Marge
- **Risiko-Ampel**: Baurecht / Kosten / Markt / Genehmigung (gering-mittel-hoch)
- Empfehlung: Kauf/Entwicklung ja/nein, zu welchem Preis
"""

SKELETT_C = """\
## 3. Projektgrundlagen
- Adresse, Eigentuemer, Baujahr, letzte Sanierung, Nutzung, Zone

## 4. Leistungsumfang & Team (SIA 112/102/108/118)
- Architektur/Bauphysik/Energie (JANS)
- Gebaeudetechnik HLKS/Sanitaer (Fachpartner)
- Brandschutz/QS VKF (Fachpartner)

## 5. Bauherren-Fragenkatalog (das Berichts-Skelett)
Je Frage: ANTWORT + VORGEHEN + Best-/Worst-Szenario.
- Frage 1:
  - ANTWORT:
  - VORGEHEN:
  - Best/Worst:

## 6. Zustandsbewertung (BKP-gegliedert, 3-Ampel)
| BKP | Bauteil | Material | Inst.-Jahr | Mangel | Restnutzungsdauer | Prioritaet |
|---|---|---|---|---|---|---|
| 240 | Heizung | | | | | |
| 250 | Sanitaer | | | | | |
| 244 | Lueftung | | | | | |
| 230 | Elektro | | | | | |

## 7. CapEx-Fahrplan (10-Jahres-Massnahmen)
- Mittelfristig (10 J):
- Langfristig (20-40 J):

## 8. Rote Flaggen & Abklaerungsbedarf
## Annahmen & Vorbehalte
"""

SKELETT_H = SKELETT_A + """\

## 8. Raumprogramm-Verifizierung (Healthcare)
- Pflegeplaetze / NF-Soll vs. baurechtlich moeglich (BMZ-Auslastung)

## 9. Wirtschaftlichkeit Pflegebetrieb
- Erstellungskosten (CHF/m2 GF, Healthcare-Zuschlag)
- Pflegeplatzkosten/Monat, Hotellerie-Taxe
- Bruttorendite (Mietertrag/Investition), Nettorendite via Annuitaet
  (BWO-Referenzzinssatz, CURAVIVA-Abschreibung 33 J, Unterhalt+Verwaltung je 0.5 %)
- Sensitivitaet
"""

TITEL = {"A": "Machbarkeitsstudie", "B": "Potenzialstudie",
         "C": "Technische Due Diligence (TDD)", "H": "Machbarkeitsstudie Healthcare"}
SKELETT = {"A": SKELETT_A, "B": SKELETT_B, "C": SKELETT_C, "H": SKELETT_H}


def main():
    p = argparse.ArgumentParser(description="JANS Studien-Scaffolder")
    p.add_argument("--nr", required=True, help="Projektnummer, z.B. 2701")
    p.add_argument("--name", required=True, help="Projektname, z.B. 'Musterstrasse 1'")
    p.add_argument("--typ", required=True, choices=list(TITEL), help="A|B|C|H")
    p.add_argument("--ort", default="", help="Ort, z.B. '8000 Zuerich'")
    p.add_argument("--basis", default=DEFAULT_BASIS, help="Basispfad AR - 03 Studien")
    p.add_argument("--dry-run", action="store_true")
    a = p.parse_args()

    projordner = os.path.join(a.basis, f"{a.nr} {a.name}")
    datum = datetime.date.today().isoformat()
    ort = f", {a.ort}" if a.ort else ""
    skelett = (SKELETT_GEMEINSAM.format(titel=TITEL[a.typ], nr=a.nr, name=a.name,
               ort=ort, datum=datum) + SKELETT[a.typ])

    print(f"Projektordner : {projordner}")
    print(f"Studientyp    : {a.typ} ({TITEL[a.typ]})")
    print(f"Ordner        : {', '.join(ORDNER)}")
    if a.dry_run:
        print("\n[dry-run] nichts geschrieben. Skelett-Vorschau:\n")
        print(skelett)
        return

    if os.path.exists(projordner):
        print(f"WARNUNG: {projordner} existiert bereits — Ordner werden ergaenzt, "
              "Skelett NICHT ueberschrieben.", file=sys.stderr)
    for o in ORDNER:
        os.makedirs(os.path.join(projordner, o), exist_ok=True)
    skelett_pfad = os.path.join(projordner, "09_Dokumente",
                                f"{a.nr[2:]}{datum[2:4]}_Berichtsskelett_{a.typ}.md")
    if not os.path.exists(skelett_pfad):
        with open(skelett_pfad, "w", encoding="utf-8") as f:
            f.write(skelett)
        print(f"Skelett       : {skelett_pfad}")
    else:
        print(f"Skelett vorhanden, nicht ueberschrieben: {skelett_pfad}")
    print("\nNaechster Schritt: Goldstandard-Vorlage oeffnen "
          "(skills/machbarkeit/referenzen/README.md), Struktur uebernehmen, "
          "Agent-Outputs einfuellen, dann via docx-Skill + scripts/docx2pdf.sh zu DOCX/PDF.")


if __name__ == "__main__":
    main()
