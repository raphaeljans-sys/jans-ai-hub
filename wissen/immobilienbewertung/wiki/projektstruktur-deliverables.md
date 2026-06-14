---
title: Projektstruktur und Deliverables (LB/RW/MA/CS/TDD/STWE)
status: established
last_updated: 2026-06-14
sources: [IMMO-01 Projekte (_Vorlage, BEWERTUNG/STWE/TDD/CONTROLLING/MASSAUFNAHMEN; reale Faelle Thalwil 9568 / Ebmatingen 3932 / Langnau 3338 / Wangen / Niederhasli, Stand 06.2026)]
links: [[bewertungsverfahren-ueberblick]], [[residualwertmethode]], [[vergleichswert-hedonisch]], [[realwert-sachwert]], [[marktdaten-gemeinden/README]]
---

# Projektstruktur und Deliverables

So sind die realen JANS-Bewertungsprojekte in `IMMO - 01 Projekte` organisiert — Vorlage
fuer jeden neuen Auftrag (Gefaess via Skill `studien-generator`, Inhalt via
`immobilienbewertung`).

## Hauptordner

```
IMMO - 01 Projekte/
  01 BEWERTUNG PROJEKTE/   ← LB / RW / MA / CS
  02 STWE PROJEKTE/        ← Stockwerkeigentum (Skill stockwerkeigentum)
  03 TDD PROJEKTE/         ← Technical Due Diligence (Skill ankaufspruefung)
  04 CONTROLLING/          ← Controlling & Sensitivitaet
  05 MASSAUFNAHMEN/        ← Aufmass
  _Vorlage/               ← Master-Vorlagen
```

## Namenskonvention

```
[PLZ] [Ort] [GrNr/ProjID] [Strasse] [HausNr] [Kuerzel] [Beschreibung]
z.B.  8800 Thalwil 9568 Bohlweg 1 LB Liegenschaftsbewertung
```

## Kuerzel-Glossar

| Kuerzel | Bedeutung | Verfahren / Skill |
|---|---|---|
| **LB** | Liegenschaftsbewertung | Realwert + Ertrags-/Vergleichswert → Marktwert |
| **RW** | Residualwert(berechnung) | [[residualwertmethode]] (Landwert) |
| **MA** | Marktwertanalyse | [[vergleichswert-hedonisch]] |
| **CS** | Controlling & Sensitivitaet | Szenarien hoch/tief, Break-Even |
| **TDD** | Technical Due Diligence | Skill `ankaufspruefung` |
| **STWE** | Stockwerkeigentum | Skill `stockwerkeigentum` |

## Typische Bewertungs-Projektablage (LB/RW)

```
[…LB Liegenschaftsbewertung]/
  YYMMDD JANS Bewertung <GrNr> <Ort>.indd / .pdf   ← Deliverable (InDesign-Layout)
  link/
    Oereb-Auszug/                 ← oeffentlich-rechtl. Beschraenkungen
    UBS Real Estate Fact Sheet …/ ← Standort-/Marktdaten (Hedonik)
    <Referenz-Vergleichsobjekt>/  ← aehnliches Projekt mit bekannten Kosten
  _Archiv/                        ← Iterationen, Vorgaengerversionen (z.B. DXMA extern)

[…RW Residualwert]/
  <Tool>.xlsx / .pdf              ← Residualwert-Berechnung
  _Archiv/ hoch/ tief/            ← Best-/Worst-Case-Szenarien (Sensitivitaet)
```

## Deliverable-Inhalt LB (Geruest)

Deckblatt/Datenblatt (aGF, Volumen, Nutzung) · Flaechengeruest (Bestand/Neubau) ·
Ertragspotenzial (Miete CHF/m2, PP) · Investitionskosten (BKP-gegliedert) ·
Eigenkapitalrendite (ROE) · Auswertung mit Szenarien (lowbudget … exklusiv) ·
Marktwert-Synthese + Annahmen/Vorbehalte.

## Reale JANS-Bewertungsfaelle (Referenz-Benchmarks, Stand 06.2026)

Belegte Beispiele aus `IMMO-01 Projekte/01 BEWERTUNG PROJEKTE` — als Vorlagen-/Vergleichs-
fundus (welche Deliverables in welcher Region real erstellt wurden):

| Projekt | Ort (Markt) | Deliverables vorhanden |
|---|---|---|
| 9568 Bohlweg 1 | 8800 Thalwil (Zimmerberg, Premium) | **LB** + **RW** + **MA** |
| 3932 Im Grossacher 2 | 8123 Ebmatingen (Maur, Greifensee) | **LB** + **RW** (Szenarien tief/hoch) |
| 3338 Giebelweg 12 | 8135 Langnau a.A. (Sihltal) | **LB** |
| 27 Bahnhofstrasse | 8855 Wangen (SZ, March) | **LB** |
| 64 Seestrasse | 8155 Niederhasli | **CS** Controlling Sensitivität |
| Haselstudstrasse | 8636 Wald (Z. Oberland) | Volumenstudie STWE + Desktopstudie |

Befunde für die Methodik:
- Die **Markt-Faktenbasis** je Fall ist das **UBS-FS der Gemeinde** (im `link/`-Ordner abgelegt,
  z.B. Thalwil-FS im Bohlweg-Projekt) → bestätigt den Workflow [[vergleichswert-hedonisch]] →
  [[marktdaten-gemeinden/README]]. Für Thalwil/Wald/Maur/Wangen liegen die kompilierten
  Gemeinde-Artikel nun vor.
- Das **RW (Residualwert)** rechnet mit dem Wüest-Tool `Immo-02-P23D-Residualwert_
  Projektbewertung.xlsx`, regelmässig in **zwei Szenarien `tief`/`hoch`** (Sensitivität, vgl.
  [[residualwertmethode]]) — die `tief/hoch`-Ordnerlogik ist der gelebte CS-Reflex schon im RW.
- Im `link/` liegt neben dem UBS-FS auch der **OEREB-Auszug** der Parzelle (Beschaffung via
  Skill `planungsgrundlagen`/`geo-zh.mjs`) — Bewertung und Grundlagenbeschaffung greifen
  ineinander.

## Output-Ablage (neue Bewertungen)

Doppelt: AI-Hub-Output `30 JANS AI HUB OUTPUT/immobilienbewertung/<projekt>/` UND der
Projektordner unter `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`. DOCX+PDF, Dateiname
`YYMMDD_Bewertung_<Objekt>_<Ort>` (Umlaute im Dateinamen vermeiden).
