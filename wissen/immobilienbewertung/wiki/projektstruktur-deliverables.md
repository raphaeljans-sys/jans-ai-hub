---
title: Projektstruktur und Deliverables (LB/RW/MA/CS/TDD/STWE)
status: established
last_updated: 2026-07-06
sources: [IMMO-01 Projekte (_Vorlage, BEWERTUNG/STWE/TDD/CONTROLLING/MASSAUFNAHMEN; reale Faelle Thalwil 9568 / Ebmatingen 3932 / Langnau 3338 / Wangen / Niederhasli, Stand 06.2026), LB Thalwil 9568 (250328) + MA Thalwil (241126, 2414_Marktwertanalyse) + LB Ebmatingen 3932 + Neubau-Potenzial Wangen 2622 (260609) — quantitative Kennwert-Auswertung Run 5; CS Niederhasli Seestrasse 64 (250811, 5 S.) + LB Langnau Giebelweg 12 (260603) + LB Wangen Bahnhofstr. 27 (260609) — Deliverable-Methodik Run 6; CS-Sensitivitaets-Generator (verallgemeinertes Schema + geschlossene Break-Even-Formel, hergeleitet/validiert aus den Niederhasli-Ist-Zahlen) — T18 Run 8 2026-06-22; Baukredit-Bericht Pflegeheim Herosé Aarau (13.12.2021) + Skill healthcare-wirtschaftlichkeit — Healthcare-Bewertungsbruecke T17 Run 12 2026-07-02; SenioResidenz AG GB 2017 (Healthcare-Investoren-Fall, impl. Brutto-Yield ~5.3 %) + BFS «Indikatoren Pflegeheime 2019-2021» + NZZ/Curaviva Pflegekosten + JANS-Kennwert-Raster «Alters-/Pflegeheime» (R. Jans 27.04.2024, Struktur) + Emilienheim Kilchberg (realer ZH-Erweiterungsfall) — T17 Investoren-Seite Run 13 2026-07-04; JANS-8-Objekt-Referenzvergleich «Kennwerte Altersheime Gesundheitszentren.pdf» (WALD-2410-Arbeitsgrundlagen, 8 reale CH-Heime 2011-2025: Averecura/Dankensberg/Vella/Trotte/Herosé/Lanzeln/Mathysweg/St.Anna) + WALD-Tertianum Richtprojekt-Baumassenberechnung (Gruenegg 3'507 m2, V1-V7) + Crivelli/Filippini/Lunati 2001 «Effizienz der Pflegeheime in der Schweiz» (SECO/USI, 835 Heime, Skalenertraege/optimale Betriebsgroesse) — T19 Raster befuellt Run 14 2026-07-06]
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
| **CS** | Controlling & Sensitivitaet | Plausibilitaets-Check einer Fremdstudie + Sensitivitaet (Werttreiber × Kostenmodell A/B), Break-Even via Generator δ\* = (K0−E0)/(E0·α−K0·β) |
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

## CS-Deliverable: Controlling & Sensitivitaet (Niederhasli, 11.08.2025)

Das **CS (Controlling & Sensitivitaet)** ist das Pruef-/Stress-Deliverable **VOR dem
Grundstueckskauf**. Es rechnet nicht von Grund auf neu, sondern **plausibilisiert eine fremde
Studie** (hier die HVA-Machbarkeitsstudie MBS + die Kostenbasis WKB) und stresst sie auf ihre
verletzlichste Annahme. Beleg: `CS Niederhasli, Seestrasse 64` (Kat. 2025, 1'049 m2, Zone WE2,
Kaufpreis CHF 1.49 Mio), 5-seitiges JANS-Layout.

**Aufbau (5 Seiten):** Titelblatt → Projekt-Titel → **Controlling-Factsheet** →
**Sensitivitaetsanalyse** → **Fazit/Empfehlung**.

### 1. Controlling-Factsheet (Felderschema)

Strukturierter Plausibilitaets-Check der Fremdannahmen — je Feld die Aussage + JANS-Wertung:

| Feld | Inhalt (Beispiel Niederhasli) |
|---|---|
| **Projekt / Grundstueck / Kaufpreis** | Adresse, Kat.-Nr., m2, Zone; Kaufpreis CHF 1.49 Mio |
| **Baurechtliche Basis** | Zone WE2 (nur EFH/DEFH), Ausnuetzung ueber Gebaeudeabmessung/Hoehe/Grenzabstand (kein AZ/BMZ), IVHB, moegliche Nachweispflichten |
| **Rahmenbedingungen** | Studienaussage (MBS: max. Ausnuetzung) + Risiko (Gemeinde kann via Ortsbildschutz reduzieren) + Parzellierungsstrategie separat |
| **Kostenbasis (WKB)** | Gesamtkosten CHF 5.61 Mio, Baukosten oberird. **2'650 CHF/m2** (mittlerer Standard ZH), Marge **8.1 % — eher knapp** |
| **Ertragsannahmen** | Verkauf **11'000 CHF/m2 HNF** (oberes Segment, nur Premiumlage realistisch); 10 TG-Plaetze a 45'000 |
| **Risiken (5 Achsen, je Ampel)** | Baurecht Mittel-Hoch (MFH in WE2 problematisch) · Ortsbildschutz Hoch · Kostensteigerung Mittel · Marktrisiko Mittel (hoher m2-Preis) · Genehmigungsdauer Mittel |
| **Fazit / Vor Investition / Empfehlung** | «Formale Grundlagen vertrauenswuerdig, wirtschaftlich ambitioniert»; vor Kauf Gemeindegespraech + konservative Rechnung mit geringerer Ausnuetzung |

### 2. Sensitivitaetsanalyse — das methodische Herzstueck

Die zentrale **Werttreiber-Variable** (hier die **Ausnuetzung**, weil der behoerdliche
Ortsbildschutz-Eingriff das reale Risiko ist) wird gestresst (Δ **0 / −10 / −20 %**) und gegen
**zwei Kostenelastizitaets-Modelle** gerechnet:

- **Modell A — Kosten fix:** alle Kosten bleiben konstant, unabhaengig von der Ausnuetzung
  (Worst Case: Ertrag sinkt, Kosten bleiben → Marge bricht ein).
- **Modell B — Kosten 70/30:** 70 % Fixkosten / 30 % variabel (schrumpfen mit der Ausnuetzung mit).

| Δ Ausnuetzung | Ertrag | Kosten A fix | Marge A | Kosten B 70/30 | Marge B |
|---|---|---|---|---|---|
| 0 % | 6'103'450 | 5'609'411 | **+8.09 %** | 5'609'411 | **+8.09 %** |
| −10 % | 5'493'105 | 5'609'411 | **−2.12 %** | 5'423'588 | **+1.27 %** |
| −20 % | 4'882'760 | 5'609'411 | **−14.88 %** | 5'237'764 | **−7.27 %** |

**Break-Even ablesbar:** Modell A kippt schon zwischen 0 und −10 % ins Minus (Break-Even
~−8 % Ausnuetzung), Modell B erst zwischen −10 und −20 % (~−13 %). Die Analyse zeigt damit
quantitativ, **wie robust die Marge gegenueber einer behoerdlich erzwungenen Ausnuetzungs-
reduktion ist** — und dass schon eine moderate Reduktion das knappe 8-%-Polster aufzehrt.

### 3. Fazit/Empfehlung — Muster

Verdichtung in zwei Bloecke: **Controlling** (Ertragsrahmen nur fuer Premiumlagen, Baurecht
Mittel-Hoch) und **Sensitivitaet** (Marge faellt bei −10 % auf +1.3…−2 %, bei −20 % auf
−7…−15 %). **Empfehlung** = Handlungssequenz vor dem Kauf: (1) Abklaeren ob MFH in WE2 moeglich,
(2) Abparzellierung mit geschlossener Bauweise pruefen, (3) max. Ausnuetzung **vor** dem
Grundstueckskauf via Vorprojekt + baubehoerdliche Konsultation absichern, (4) Premiumlage durch
lokalen Makler verifizieren.

**Methodik-Transfer:** Das CS ist der **Stress-Test einer Wirtschaftlichkeitsrechnung auf ihre
verletzlichste Annahme**. Es ist der formalisierte grosse Bruder der gelebten **RW-`tief`/`hoch`-
Szenarienlogik** (s.o.) und das Bindeglied zum Skill `machbarkeit` (dort die Variantenrechnung,
hier der Risiko-Stresstest vor dem Kaufentscheid). Die Zwei-Modell-Logik (fixe vs. teilvariable
Kosten) ist auf jede Werttreiber-Variable uebertragbar (Mietzins, Baukosten, Leerstand) — wie,
zeigt der folgende verallgemeinerte Generator.

### 4. CS-Sensitivitaets-Generator — verallgemeinertes Rechen-Schema (T18)

Die Niederhasli-Tabelle ist ein **Spezialfall** eines einzigen Rechen-Schemas. Formalisiert man
es, wird die Sensitivitaetsanalyse auf **jeden** Werttreiber (Ausnuetzung, Mietzins, Baukosten,
Leerstand) uebertragbar und der Break-Even per Formel statt per Augenmass bestimmbar.

**Das Modell in einer Formel.** Sei δ die relative Aenderung des gestressten Werttreibers
(z. B. δ = −0.10 = «10 % weniger Ausnuetzung»). Ertrag und Kosten reagieren mit je einer
**Elastizitaet** α (Ertragsseite) und β (Kostenseite, = Anteil variabler Kosten):

```
Ertrag(δ) = E0 · (1 + α·δ)
Kosten(δ) = K0 · (1 + β·δ)
Marge(δ)  = [ Ertrag(δ) − Kosten(δ) ] / Ertrag(δ)  =  1 − K0(1+β·δ) / [ E0(1+α·δ) ]
```

- **Marge wird auf den Ertrag (Verkaufserloes) bezogen**, nicht auf die Kosten — so rechnet das
  reale CS (Niederhasli Basismarge **M0 = 1 − K0/E0 = 1 − 5'609'411/6'103'450 = 8.09 %**,
  rechnerisch bestaetigt).
- **Modell A (Kosten fix):** β = 0. **Modell B («70/30»):** der variable Kostenanteil schrumpft
  mit dem Treiber mit. ⚠ Befund Run 8: die realen Niederhasli-Zahlen ergeben eine **effektive
  Kosten-Elastizitaet β ≈ 0.33** (nicht 0.30) — das «70/30»-Label ist gerundet, die Spalte rechnet
  faktisch mit ~⅓ variabel (β = 0.3313 reproduziert die Tabellenwerte 5'423'588 / 5'237'764 exakt).

**Break-Even in geschlossener Form.** Marge(δ\*) = 0 ⟺

```
δ* = (K0 − E0) / (E0·α − K0·β)
```

| Werttreiber | α (Ertrag) | β (Kosten) | Break-Even-Formel | Niederhasli-BE |
|---|---|---|---|---|
| **Ausnuetzung, Modell A** (Kosten fix) | 1 | 0 | **δ\* = −M0** | **−8.1 %** |
| **Ausnuetzung, Modell B** (70/30) | 1 | ~0.33 | (K0−E0)/(E0−0.33·K0) | **−11.6 %** |
| **Mietzins / Marktmiete** | 1 | 0 | δ\* = −M0 | −8.1 % |
| **Leerstand / Vermarktung** | 1 | 0 (+Carry) | δ\* = −M0 (etwas frueher mit Finanzierungs-Carry) | ~−8 % |
| **Baukosten** (Treiber = Kosten) | 0 | 1 | **γ\* = M0/(1−M0) = E0/K0 − 1** | **+8.8 %** |

- **Merksatz fixe Kosten:** Bei β = 0 ist der Break-Even schlicht **−M0** — ein Ertrags-/Mietzins-/
  Ausnuetzungs-Rueckgang **in Hoehe der Basismarge** loescht den Gewinn. Eine duenne 8-%-Marge
  vertraegt also nur 8 % Gegenwind. Das ist der quantitative Kern der CS-Warnung.
- **Praezisierung (Compounding):** Der frueher per Augenmass notierte Break-Even Modell B «~−13 %»
  ist mit der Formel **−11.6 %** (Tabellen-Interpolation −11.5 %) — die Formalisierung schaerft die
  Zahl. Modell A bleibt bestaetigt bei −8.1 %.
- **Asymmetrie Ertrag ↔ Baukosten:** Weil die Marge auf den Ertrag bezogen ist, vertraegt das
  Projekt einen **Baukosten-Anstieg von +8.8 %**, aber nur einen **Ertrags-Rueckgang von −8.1 %**
  (gleiche Basismarge, andere Bezugsgroesse). Baukosten sind die etwas «gnaedigere» Variable.

**Tornado / Priorisierung — welchen Treiber zuerst stressen.** Die Erst-Sensitivitaet (Steigung
bei δ = 0) ist

```
dMarge/dδ |0  =  (1 − M0) · (α − β)
```

Bei Niederhasli (1−M0 = 0.92) und fixen Kosten heisst das **≈ 0.92 Prozentpunkte Margenverlust
je 1 % Treiber-Rueckgang** — und konvex zunehmend (der Ertrag im Nenner schrumpft mit). Bei einer
8-%-Marge ist die Hebelwirkung also brutal: schon ein einstelliger Treiber-Rueckgang kippt das
Vorzeichen. Gestresst wird der Treiber mit dem groessten Produkt **Eintrittswahrscheinlichkeit ×
|dMarge/dδ|** — in Niederhasli die **Ausnuetzung** (behoerdlicher Ortsbildschutz wahrscheinlich,
α = 1).

**Modellwahl-Regel A vs. B.** Modell A (Kosten fix) ist der **Worst Case / kurzfristige Fall** —
die Kosten sind bereits vergeben (GU-Pauschale, laufender Bau). Modell B (teilvariabel) ist der
**realistische Fall, solange die Reduktion noch in der Planung steckt** (weniger Geschosse =
weniger Baukosten). Faustregel: **A fuer die untere Risikogrenze, B fuer den Erwartungswert** —
genau die `tief`/`hoch`-Spannweite, die JANS im RW-Tool ohnehin schon mit den Ordnern `tief`/`hoch`
lebt (s. o.). Der Generator vereinheitlicht damit die **RW-Szenarienlogik** und die **CS-
Sensitivitaet** zu einem Schema.

**3-Zeilen-Rezept fuer ein neues CS.** (1) Basis-Ertrag E0, Basis-Kosten K0, Basismarge M0 = 1 −
K0/E0 setzen. (2) Verletzlichsten Treiber + dessen α/β waehlen (Ausnuetzung/Mietzins 1/0,
Baukosten 0/1, teilvariabel β ≈ ⅓). (3) δ-Raster 0/−10/−20 % rechnen und Break-Even δ\* =
(K0−E0)/(E0·α−K0·β) ausweisen; Empfehlung = Handlungssequenz, die den Treiber **vor** dem Kauf
absichert. Naechster Ausbau (Bring-Schuld D4): die Logik als wiederverwendbares XLSX/Tool-Blatt
hinterlegen, sobald die Wuest-/JANS-`.xlsx`-Formeln freigegeben sind.

## LB-Variante «Bestand halten vs. Abbruch + Neubau» (Langnau 3338, 03.06.2026)

Eine eigene LB-Spielart fuer Bestandesliegenschaften mit Reserve: der **Bestandeswert
(Vergleichswert)** wird direkt gegen den **Entwicklungs-Landwert (Residualwert Abbruch+Neubau)**
gestellt — die hoehere der beiden Zahlen bestimmt die Empfehlung. Beleg Giebelweg 12, 8135
Langnau a.A. (Parz. 3338, EFH Bj. 1936/renoviert 2008, BMZ-Zone 1.5):

- **A Bestandeswert (hedonisch):** ~165 m2 Wohnflaeche × 12'000 CHF/m2 (Marktanker Popety/Web)
  ≈ 1.98 Mio, grosses Grundstueck wertstuetzend → **Bestandeswert ≈ 1.9–2.3 Mio**.
- **B Entwicklungswert (Residual, BMZ-gedeckelt):** zulaessiges Bauvolumen 1'152 m3 (nur +248 m3
  ueber Bestand) → ~260 m2 HNF × 13'000 CHF/m2 ≈ 3.0–3.7 Mio − Erstellung inkl. Abbruch 1.9 Mio
  − Nebenkosten/Finanzierung/**Marge ~18 %** 0.6 Mio = **Residual-Landwert ≈ 0.8–1.2 Mio**.
- **Empfehlung: Bestand halten** — 1.9–2.3 Mio liegt klar ueber dem Entwicklungs-Landwert
  0.8–1.2 Mio; die **BMZ-Deckelung** macht den Neubau unattraktiv (Abbruch des 2008 renovierten
  Hauses wuerde ~1 Mio Wert vernichten). Die kleine Reserve (+248 m3) als Aufstockungs-/
  Erweiterungsoption pruefen, nicht als Abbruch-Neubau.

Durabler Befund: **Bei Bestandesobjekten ist die Schluesselfrage Halten vs. Entwickeln** — und
sie entscheidet sich am Verhaeltnis Vergleichswert-Bestand ↔ Residual-Landwert. Eine
**volumengedeckelte Zone (BMZ/m3 statt AZ/GF)** mit kleiner Reserve kippt die Antwort fast immer
auf «Halten». Datenquelle bei fehlendem UBS-FS (Langnau): **Popety.io-Land-Analyse**
([[datenquellen-registry]]), die die Ausnuetzungsreserve (BMZ aktuell/zulaessig/Reserve, BVm,
UeZ) parzellenscharf liefert. Vgl. die Entscheidlogik in [[vergleichswert-hedonisch]].

## LB-Variante «Renditeobjekt-Kaufpreispruefung» (Wangen Bahnhofstr. 27, 09.06.2026)

Das reifste einseitige JANS-LB-Template fuer ein **gemischtes Renditeobjekt** (EG Arztpraxis +
2 Wohnungen + Maisonette, Parz. 25, Zone WG3 ausgeschoepft). Es fuehrt den **Ertragswert** (weil
Renditeobjekt) und endet in einer **Kaufpreispruefung gegen ein Angebot**:

- **Ertragspotenzial:** Soll-Mietertrag je Nutzung (HNF × CHF/m2/J nach UBS-FS-Quantil) →
  Brutto-Sollertrag CHF 129'000/J (EG Praxis 200, Whg. 255, Maisonette 235 mit Altbau-Abschlag).
- **Ertragswert-Band ueber drei Kapitalisierungssaetze:** 4.75 % = 2.72 Mio · **5.00 % (Basis)
  = 2.58 Mio** · 5.25 % = 2.46 Mio → **Band Halten 2.45–2.70 Mio** (Methodik s. [[ertragswert-dcf]]).
- **3-Anker-Quervergleich (Plausibilisierung):** Lageklasse-Realwert (Land 2'702/m2) ~2.7–3.0 Mio
  · STWE-Einzelverkauf Wohnteil ~3.5 Mio · UBS-FS-Bauland Mittel/Top → **Marktwert-Synthese 2.6–2.8 Mio**.
- **Kaufpreispruefung:** Angebot 3.10 Mio ⇒ impl. Bruttorendite **4.2 %** ⇒ als reiner Renditekauf
  **~10 % zu hoch** (< 4.5-%-Schwelle); Empfehlung «Richtung Bankschaetzung 2.8 Mio verhandeln»,
  3.10 nur bei Hebung Mietpotenzial oder STWE-Einzelverkauf gerechtfertigt.

Durabler Befund: Beim **Renditeobjekt fuehrt der Ertragswert** (nicht Real-/Vergleichswert), die
Bewertung endet in einer **Verhandlungsempfehlung gegen das konkrete Angebot** (Ertragswert-Band
+ impl. Rendite). Kaufpreispruefung-, Band- und Ausbau-Rendite-Logik im Detail: [[ertragswert-dcf]].

## Healthcare-Bewertung — Bruecke zum Skill `healthcare-wirtschaftlichkeit` (T17 geschlossen)

Im Bewertungsordner `IMMO-01/01 BEWERTUNG PROJEKTE` existiert **kein dediziertes Pflegeheim-
Bewertungs-Deliverable** (alle Faelle Wohnen/MFH/STWE; Wald 8636 ist Volumenstudie). Die
Healthcare-Bewertung liegt daher beim Schwester-Skill `healthcare-wirtschaftlichkeit` (2410
WALD/Nova). Fuer den **Wert** einer Healthcare-Liegenschaft gelten drei durable Regeln,
belegt am oeffentlichen Realfall Pflegeheim Herosé Aarau (2021, Run 12):

- **Erstellungskosten (Realwert-Seite):** Healthcare-Neubau liegt bei **~3'850-4'000 CHF/m2 GF
  (BKP 2)** bzw. **~1'100 CHF/m3 GV** und **337'000-418'000 CHF/Zimmer** (4-Heim-Vergleich) —
  der Wohn-Basiskennwert **+20-25 %** wegen Installationsgrad/Ausbaustandard. Kennwerte:
  [[realwert-sachwert]].
- **Ertrag (Ertragswert-Seite):** kostenbasiert — die nachhaltige **Heimtaxe** deckt die
  **Annuitaet** der Investition (lineare Abschreibung **33 Jahre** nach CURAVIVA, kalkulatorischer
  Zins = **BWO-Referenzzinssatz**), getrennt nach KVG-Pflege (Restfinanzierung) und Hotellerie-/
  Betreuungstaxe (Bewohner). Rechenmodell + Realzahlen: [[ertragswert-dcf]] (Herosé-Fall).
- **Investoren-Marktwert (T17 geschlossen, Run 13):** Wird die Healthcare-Liegenschaft an einen
  Fonds/Investor verkauft, kapitalisiert dieser die **Netto-Betreiber-Miete** (nicht die
  Bewohner-Taxe) mit einem Healthcare-Diskontsatz. Belegter Realfall: **SenioResidenz AG**
  (Immobilien-Investor, GB 2017) hielt eine Seniorenresidenz zum WP-DCF-Marktwert 21.75 Mio bei
  Soll-Miete 1.145 Mio → **impliziter Brutto-Yield ~5.3 %** (~2 Pp ueber Wohnbau), Belehnung
  40-60 %. Rechenmodell + Zahlen: [[ertragswert-dcf]] (SenioResidenz-Fall). Damit ist T17 auf
  **beiden Seiten** belegt (Kosten/Annuitaet Herosé + Investoren-Yield SenioResidenz).
- **Deliverable:** Rentabilitaets-Memo/XLSX ueber Skill `healthcare-wirtschaftlichkeit`
  (Pflegeplatzkosten, Taxen × Belegung, Brutto-/Nettorendite via Annuitaet, Sensitivitaet),
  nicht als LB/RW dieser KB. Operating-Benchmarks fuer die Plausibilisierung (BFS 2021:
  Beherbergungskosten 10'035 CHF/Mt, Belegung 90 %, 1.0 VZAe/Platz, 60 % defizitaer;
  Kostenstruktur Pension/Pflege/Betreuung): [[ertragswert-dcf]].
- **JANS-Healthcare-Kennwert-Raster (T19 befuellt, Run 14 2026-07-06):** Das interne Blatt
  «Kennwerte von Alters- und Pflegeheime» (R. Jans 27.04.2024) definiert vier
  Wirtschaftlichkeitsfaktoren (**Anzahl Bettzahl, Bauvolumen/HNF, HNF/Bett, GF/Bett**) in den
  Stufen Tief/Mittel/Hoch, vier Referenzobjekte (Emilienheim Bestand/Erweiterung, Wald Tertianum
  Bestand/Szenarios) und drei Fragestellungen. Es lag **leer** vor; die belegten Werte stammen nun
  aus JANS' eigenem **8-Objekt-Referenzvergleich** (`Kennwerte Altersheime Gesundheitszentren.pdf`,
  WALD-2410-Arbeitsgrundlagen — 8 reale CH-Alters-/Pflegeheime 2011-2025) und der SECO/USI-
  Effizienzstudie (Crivelli/Filippini/Lunati 2001, 835 CH-Pflegeheime). Die Kosten-Zeilen dieses
  Vergleichs (CHF/m2 GF, CHF/m3 GV, CHF/PZ) stehen in [[realwert-sachwert]]; hier die
  Wirtschaftlichkeits-/Flaechenfaktoren:

  **Belegte Bandbreiten der Wirtschaftlichkeitsfaktoren (8 reale Objekte, ⚠ St. Anna LU =
  gemischtes Zentrum, Ausreisser):**

  | Faktor | Tief | Mittel | Hoch | Beleg-Bandbreite (Objekte) |
  |---|---|---|---|---|
  | **Anzahl Bettzahl (PZ)** | ~28-35 (klein) | ~55-70 (Median) | ~90-123 (gross) | 28 / 34 / 55 / 68 / 89 / 116 / 121 / 123 |
  | **GF/Bett (m2 GF)** | **90** (gross, effizient) | ~110-118 | ~135 (klein/grosszuegig) | Herosé 90 · Lanzeln 90 · Mathysweg 98 · Averecura 111 · Dankensberg 118 · Trotte 135 |
  | **NF/Bett (m2 NF)** | ~51-53 (gross) | ~58-67 | ~71 (klein) | Mathysweg 51 · Lanzeln 53 · Trotte 58 · Averecura 67 · Dankensberg 71 |
  | **Bauvolumen/HNF (m3 GV je m2 HNF)** | **4.3** (kompakt) | ~5.4-6.6 | ~7.1+ | Averecura 4.29 · Dankensberg 5.16 · Lanzeln 5.44 · Mathysweg 6.55 · Trotte 7.08 (Zentrum St. Anna 9.71) |

  **Durabler Skaleneffekt-Befund:** GF/Bett und NF/Bett **sinken mit der Heimgroesse** — die grossen
  Heime (Herosé 116 PZ, Lanzeln 123 PZ) brauchen nur **~90 m2 GF/Bett**, die kleinen (Averecura
  28 PZ) **~111 m2 GF/Bett**. Das ist die flaechenseitige Auspraegung der Skalenerträge: pro
  Pflegeplatz sinkt der Gebaeudeaufwand, je groesser das Heim. Fuer die Grobdimensionierung eines
  neuen Pflegeheims: **~90-100 m2 GF/Bett** (grosses Heim), **~110-120 m2 GF/Bett** (kleines Heim);
  HNF/GF-Effizienz Healthcare **~0.43-0.61 (Ø ~0.55)**, deutlich unter Wohnen (0.60-0.75) wegen
  breiter Erschliessung, Pflegestuetzpunkten und Gemeinschaftsflaechen ([[flaechendefinitionen-sia]]).

  **Antworten auf die drei Fragestellungen (belegt, Crivelli/Filippini/Lunati 2001, SECO):**
  1. **«Ab welcher Bettzahl ist der Betrieb rentabel / optimal?»** Die oekonometrische
     Frontierkostenfunktion (835 CH-Pflegeheime) zeigt zunehmende Skalenertraege bei kleinen
     Heimen (30 Betten: SE = 1.102) und weist die **optimale Betriebsgroesse bei 70-80 Betten**
     aus (konstante Skalenertraege SE = 1 bei **79 Betten**). **Ab ~50 Betten sind die
     Kostenersparnisse nicht mehr betraechtlich** — das ist die praktische Untergrenze. ⚠ Rentabel
     ≠ kostenoptimal: die Studie misst Kosteneffizienz, nicht die Ertragsseite; die betriebliche
     Rentabilitaet haengt zusaetzlich an Belegung/Taxen (Skill `healthcare-wirtschaftlichkeit`).
  2. **«In welchem Bereich liegt die normale Groesse?»** Empirisch (835 Heime, Datenstand ~1998):
     **Median 52 Betten, Mittelwert 62, Interquartilsbereich 33-79 Betten**. Deckt sich mit dem
     aktuellen BFS-Schnitt 2021 (96'758 Plaetze / 1'543 Heime ≈ **63 Plaetze/Heim**,
     [[ertragswert-dcf]]) und mit JANS' Referenzset (28-123 Betten, Median 78.5 aus den 8 Objekten
     {28,34,55,68,89,116,121,123}; der Einzelwert 89 ist der 5. Wert, nicht der Median). **Rund 50 % der
     CH-Heime sind zu klein** (suboptimal).
  3. **«Ab wann spielt der Multiplikationsfaktor keine Rolle mehr fuer die Effizienz?»** Die
     Skalenkurve flacht **ab ~50 Betten** deutlich ab (SE faellt von 1.102 bei 30 Betten auf 1.031
     bei 58 und 1.006 bei 74) und erreicht bei **~79 Betten das Optimum (SE = 1)**; darueber praktisch
     konstant/leicht abnehmend. **Warnung (Folgerung 7 der Studie):** nicht uebermaessig gross bauen —
     zu grosse Heime mindern die Qualitaet der menschlichen Kontakte und damit die Pflegewirksamkeit.
     ⚠ Datenstand ~1998/2001; die Skalenaussage ist ein struktureller (kein Preis-)Befund, daher
     durabel, die absoluten Bettzahl-Schwellen aber mit heutigen Betriebsmodellen zu plausibilisieren.

  **Referenzobjekte des Rasters (belegt):** «Wald Tertianum» = **WALD/Averecura** (WA-ZH, Studie 2025):
  Richtprojekt-Kleinvariante **28 PZ, GF 3'100 m2, GV 9'600 m3, HNF 1'880 m2, BKP 2 = 12.34 Mio
  (1'420 CHF/m3 GV, 4'250 CHF/m2 GF), Hotellerietaxe 150 CHF/Tag**. Die «Szenarios» sind die
  WALD-Baumassenvarianten V1-V7 auf dem Gruenegg-Grundstueck (3'507 m2): Heim-Baumasse von
  **2'700 m3 (Bestand) bis 13'620 m3 (Gestaltungsplan L)**, mit JANS-Approximationsfaktoren
  **GF ≈ 0.33 × Baumasse, NF ≈ 0.20 × Baumasse** (Baumassenberechnung Richtprojekt). «Emilienheim»
  (Kilchberg) liegt als realer ZH-Entwicklungsfall vor (Erweiterung ~25 Mio, 15 quersubventionierende
  Alterswohnungen + 7-gesch. Neubau; Gestaltungsplan Waldabstand 23→15 m nach ~2.5 J Rekurs 2024
  rechtskraeftig — Modell «Alterswohnungen finanzieren den Pflegebetrieb quer»), ist im JANS-
  Referenzblatt aber (noch) nicht mit Flaechen-Kennwerten hinterlegt. **Offen (an Bopp):** welche
  dieser Kennwerte fuer den Projektentwickler die Entscheidungsgroesse sind.

## Output-Ablage (neue Bewertungen)

Doppelt: AI-Hub-Output `30 JANS AI HUB OUTPUT/immobilienbewertung/<projekt>/` UND der
Projektordner unter `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`. DOCX+PDF, Dateiname
`YYMMDD_Bewertung_<Objekt>_<Ort>` (Umlaute im Dateinamen vermeiden).
