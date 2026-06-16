---
title: Projektstruktur und Deliverables (LB/RW/MA/CS/TDD/STWE)
status: established
last_updated: 2026-06-16
sources: [IMMO-01 Projekte (_Vorlage, BEWERTUNG/STWE/TDD/CONTROLLING/MASSAUFNAHMEN; reale Faelle Thalwil 9568 / Ebmatingen 3932 / Langnau 3338 / Wangen / Niederhasli, Stand 06.2026), LB Thalwil 9568 (250328) + MA Thalwil (241126, 2414_Marktwertanalyse) + LB Ebmatingen 3932 + Neubau-Potenzial Wangen 2622 (260609) — quantitative Kennwert-Auswertung Run 5]
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

## Quantitative Kennwert-Benchmarks (3 Faelle ausgewertet, Stand 06.2026)

Aus den realen LB/RW-Deliverables extrahierte Ist-Kennzahlen — als **belegter Vergleichs-
fundus** fuer neue Bewertungen (welche Quantile/Saetze JANS in welcher Lage real ansetzt).
Quellen: LB Thalwil 9568 (28.03.2025), LB Ebmatingen 3932, Neubau-Potenzial Wangen 2622
(09.06.2026).

| Kennzahl | Thalwil 9568 | Ebmatingen 3932 | Wangen 2622 |
|---|---|---|---|
| Grundstuecksflaeche GSF | 821 m2 | 888 m2 | 751 m2 |
| Zone / AZ | W3 80 % Sonderbauv. (aGF 657) | W2 45 % (aGF 492) | WG3 0.75 gemischt (aBGF 563) |
| HNF (Faktor) | 580 m2 (77 % v. GF) | 500 m2 (57 % v. GF) | 530 m2 (80 % v. aBGF) |
| ME Wohnen CHF/m2/J (UBS-FS Neubau) | 470 (Q90) | 283 (Q50) | 305 (Q90) |
| Kapitalisierung Mietobjekt | 2.50 % / 40 J | 2.50 % / 40 J | Brutto-Anfangsrendite 3.0 % |
| STWE-Kaufpreis CHF/m2 (UBS-FS) | 20'000 (Q90) | 12'000 (Q60) | 11'500 |
| Erstellung BKP 1-5 | 4.5 Mio (7'750/HNF · 1'315/Vm3) | 2.56 Mio (855/m3 inkl. UG) | 2.9 Mio (MFH-Neubau) |
| Residualer Landwert | 6.26 Mio Miet / 6.76 STWE | 2.73 Miet / 2.99 STWE | Land 2'702/m2 = 2.1 Mio |
| Befund (ROE/Rendite) | 28 % Miet / 35 % STWE → wirtschaftlich | EK-Rendite 1.75 % Miet / 8.25 % STWE | 3.0 % < 4.5 % → Neubau nicht attraktiv |

Durable Methodik-Befunde aus dem Quervergleich:
- **Einheitliches LB-Onepager-Schema:** Flaechengeruest Neubau → Ertragspotenzial →
  Investitionskosten → Eigenkapitalrendite + **Auswertungsbalken** (Gebaeudestandard CHF/m3
  und ROE-Ampel). Thalwil 9568 ist als Gebaeudestandard **«eloquent» (1'450 CHF/m3)** verortet.
- **Markt-Quantil nach Lage:** Premiumlagen (Thalwil, Zimmerberg) setzen ME und STWE-Kaufpreis
  am **oberen Quantil (Q90)** der UBS-FS an, Durchschnittslagen (Ebmatingen) am **Median/Q50-60**
  — die Quantil-Wahl ist die zentrale Lage-Stellschraube ([[vergleichswert-hedonisch]]).
- **Residualer Landwert = Ertragswert − Investitionskosten** (Mietobjekt- UND STWE-Case
  getrennt, STWE meist hoeher), mit **Abschlag Baukosten −5 %** ([[residualwertmethode]]).
- **ROE-Ampel (Grundstuecks-Rendite):** < 2 % unwirtschaftlich/Liebhaberobjekt · 2-5 %
  selbsttragend · **> 5 % wirtschaftlich**. Bruttoanfangsrendite-Schwelle Renditeobjekt
  **4.5 %** (< 4.5 % «duenn»). Belegt in [[ertragswert-dcf]] (JANS-Bewertungskonvention).

## MA-Deliverable: Wertanker-Synthese (Thalwil 9568, 26.11.2024)

Die **Marktwertanalyse (MA)** synthetisiert den Bodenwert aus **vier Ankern** zu einem
Marktwert (Beispiel Thalwil, PRO QM auf 821 m2 GSF):

| Anker | CHF/m2 GSF | Total |
|---|---|---|
| Residualwert nach Abzuegen (JANS) | 4'520 | 3.71 Mio |
| UBS-FS Bauland Mittel 24/7 | 4'268 | 3.50 Mio |
| UBS-FS Bauland Top 24/7 | 5'508 | 4.52 Mio |
| **Marktwert (Synthese)** | **4'850** | **3.98 Mio** |

Gegenrechnung Entwicklergewinn: **Anlagewert** (EW 16'000/m2 HNF × 550 = 8.83 Mio) **minus
Anlagekosten** (Marktwert Land 3.98 Mio + Erstellung EW 6'000/HNF = 3.30 Mio → Total 7.28 Mio)
**= Rendite/Gewinn 1.55 Mio**. So koppelt die MA Vergleichswert (UBS-FS-Bauland) und
Residualwert ([[residualwertmethode]]) zu einem plausibilisierten Marktwert.

## Output-Ablage (neue Bewertungen)

Doppelt: AI-Hub-Output `30 JANS AI HUB OUTPUT/immobilienbewertung/<projekt>/` UND der
Projektordner unter `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`. DOCX+PDF, Dateiname
`YYMMDD_Bewertung_<Objekt>_<Ort>` (Umlaute im Dateinamen vermeiden).
