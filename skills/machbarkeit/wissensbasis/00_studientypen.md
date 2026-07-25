# JANS-Studientypen — Typologie & Abgrenzung

Destilliert aus 16 realen JANS-Studien (2020–2026, `OneDrive/AR - 03 Studien`). Es gibt
**drei Grundtypen**; reale Aufträge sind oft Mischformen (Bauherrenfragen treiben den Scope).

## Typ A — Baurechts-/Volumenstudie (Machbarkeit i.e.S.)
- **Kernfrage:** "Was und wieviel darf ich hier bauen?"
- **Blickrichtung:** vorwärts vom (leeren/abgerissenen) Grundstück zum maximalen Volumen.
- **Output:** Variantenstudie (i.d.R. 2–3 Varianten) mit Volumen, SIA-416-Flächen, Regelgrundriss,
  Grobkosten ±25 %, Variantenvergleich (Positiv/Negativ je Variante).
- **Belege:** 2514 WIL (V1 Flachdach / V2 Längsfirst-Baulinie / V3 Querfirst-Besitzstand),
  2001 Haus Deuber, 2304 Wädenswil (Kernzone ohne AZ), 2305 Münchenwiler.
- **Skill:** `machbarkeit` (dieser).

## Typ B — Potenzial-/Ankaufsstudie (wirtschaftlich)
- **Kernfrage:** "Lohnt sich der Kauf / die Verdichtung — was ist der Boden/das Projekt wert?"
- **Blickrichtung:** rechnet **Geld** — vom erzielbaren Ertrag/Verkaufserlös rückwärts zum
  zahlbaren Landwert (Residualwert) bzw. zur Marge.
- **Output:** Controlling Fact Sheet (Kaufpreis · WKB · Marge · Risiko-Ampel · Empfehlung),
  Residualwertberechnung, Sensitivitätstabelle (Ausnützungs-Delta × Kostenmodell → Marge),
  Marktwert-/Makleranalyse, ROI je Variante.
- **Belege:** 2515 Niederhasli (Marge 8.1 %, Sensitivität), 2412 Ebmatingen (Residualwert
  CHF 2'967'000 = 3'610/m² GSF), 2407 Regensdorf (Baumassenreserve), 2409 Steinhof (ROI
  12 % Erweiterung vs. 36 % Ersatzneubau), 2410 WALD (Brutto-/Nettorendite Pflegeheim).
- **Skill:** `machbarkeit` mit Sub-Agent `wirtschaftlichkeit-rechner` (Ökonomie-Modul).

## Typ C — TDD / Zustandsanalyse (technisch)
- **Kernfrage:** "In welchem Zustand ist die Bausubstanz, welcher CapEx kommt?"
- **Blickrichtung:** rückwärts vom Bestand — Alter → Restnutzungsdauer → Ersatzkosten.
- **Output:** bauteil-/BKP-weise Zustandsbewertung, Restnutzungsdauer, 10-Jahres-Massnahmen
  (CapEx-Fahrplan), 3-stufige Prioritäten-Ampel.
- **Beleg:** 2513 BAAR (Zugerstrasse 49, Hochhaus, TDD HLSE + Brandschutz + Architektur).
- **Skill:** `ankaufspruefung`.

## Querschnitt-Muster (typübergreifend)
- **Bericht-Skelett** (alle Hochbau-Studien identisch gegliedert): Ausgangslage/Fragestellung →
  Status Quo (Orthofoto/Kataster) → Öffentlich-rechtliche Situation → Projektvorschlag /
  SIA-416-Flächenschema → Fazit (Flächentabelle) → Erstellungskosten. Siehe `05_berichtsstruktur-und-inputs.md`.
- **Bestandeserhalt vs. Ersatzneubau** als Grundkonflikt fast jeder Studie (Variantenvergleich).
- **Phasen-/Honorargliederung mit Kostendach** (Desktopstudie Baurecht → Richtprojekt →
  Machbarkeit). Belege: 2001 Deuber (3 Phasen, Kostendach CHF 3'000), 2410 WALD (4 Stufen).
- **Use-Case-/Causa-Analyse** bei Umnutzung: Nutzungsszenarien im Kriterienraster vergleichen,
  Empfehlung als zeitliche Sequenz. Beleg: 2620 Albertstrasse. Siehe `04_baurecht-bestandesschutz-usecase.md`.
- **Schutz-Thematik** (Denkmal-/Heimat-/Baumschutz) als wiederkehrender Treiber → "strategische
  Machbarkeit" (Verfahrens-/Verhandlungsstrategie, nicht nur Volumen). Beleg: 2409 Steinhof.

## Healthcare-Spezialfall (Typ A+B kombiniert)
2410 WALD (Pflegeheim, Auftraggeber Nova Property): Baurecht (BMZ-Auslastung) ↔ Raumprogramm-
Verifizierung (Pflegeplätze) ↔ Betreiber-Wirtschaftlichkeit (Pflegeplatzkosten, Hotellerie-Taxe,
CURAVIVA-Abschreibung 33 J, BWO-Referenzzinssatz). Healthcare ist JANS-Kernkompetenz → eigener
Kennwert- und Renditeapparat (siehe `02_kennwerte-kosten.md`, `03_wirtschaftlichkeit-residualwert.md`).
