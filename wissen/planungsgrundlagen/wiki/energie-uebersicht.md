---
title: Energie — Uebersicht (PV, U-Wert, Energienachweis)
status: emerging
last_updated: 2026-06-05
sources: [PL - 04 Energie (SharePoint), SIA 380/1, swissolar, uvek-gis.admin.ch]
links: [[recht-norm-quellenlandkarte]]
---

# Energie — Uebersicht (PV, U-Wert, Energienachweis)

Einstieg in die Domaene Energie (Quelle: **PL - 04 Energie**). Bedient vom Agent
`energie-berater`. Aufbau-Artikel — Kennwerte werden im Trainings-Loop belegt nachgezogen.

> **Bruecke:** Energie ist zur strategischen Prioritaet erhoben und hat eine **eigene KB
> `wissen/energie/`** mit Destillate-Layer (PDF→MD) + `BAUHERREN-FAQ` und einem **taeglichen**
> Lern-Loop (`energie-training`). Fuer Tiefe und Bauherren-Antworten **dort** nachschlagen;
> dieser Artikel bleibt der Kurz-Einstieg im Planungsgrundlagen-Kontext.

## PV / Solar — Typen (PL-04/Solaranlage)

| Typ | Kurz | Einsatz |
|---|---|---|
| Indach-PV | dachintegriert, ersetzt Eindeckung | Neubau/Sanierung Steildach, gestalterisch |
| Dachziegel-PV | ziegelfoermige Module | Ortsbild-/denkmalsensible Lagen |
| Transparente PV | semitransparent (z.B. Saphir-Module) | Terrassendach, Wintergarten |
| Fassaden-PV | vertikal, Gebaeudehuelle | Stadt, hoher Fassadenanteil |
| Aufdach/Flachdach | aufgestaendert | Flachdach, schnelle Nachruestung |

Hilfsmittel in PL-04: `sonnenverlauf.de` (Verschattung), `uvek-gis.admin.ch` (Eignung/Ertrag),
Swissolar-Merkblatt Brandschutz (`stp_solaranlagen`), Hersteller (megasol, prefa.solar).
Brandschutz-Tiefe → Skill `brandschutz` (VKF-Solar-Merkblatt 2001-15).

## U-Wert / Bauteile (PL-04/U Wert berechnung)

- U-Wert-Berechnung und **Bauteilkatalog** nach **SIA 380/1** (Norm 380-1).
- Daemmstoffwahl, CLT/Holz-Aufbauten (Stora Enso Doku), Waermebruecken qualitativ.

## Energienachweis (ZH)

- Massnahmenpaket vs. Einzelbauteilnachweis; MuKEn-/kantonale ZH-Vorgaben.
- ZH-Baueingabe-**Energieformulare** liegen in `PL - 04 Energie/_Formulare Kanton ZH Baueingabe`.
- ⚠ Datenstand zwingend pruefen (Normversion/kantonale Fassung) — siehe `wiki/QUESTIONS.md`.

## Offen (→ QUESTIONS)
- Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) auf Stand bringen, mit Datum.
- U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle nachziehen.
- Kandidat: eigenes Skill `energie-nachweis`, sobald die Domaene traegt.
