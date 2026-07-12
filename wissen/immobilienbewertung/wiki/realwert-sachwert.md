---
title: Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert
status: established
last_updated: 2026-07-10
sources: [IMMO-03 Schaetzungen (schaetzungsanleitung_kap5.pdf, Tab. 2 Neuwert-Richtwerte, Tab. 3 BKP-Anteile, Tab. 9 Lebensdauer, Tab. 10 wirtschaftliches Alter, Tab. 11 Wertminderung), IMMO-06 Kennwerte (`_Kennwerte Jans.docx` R. Jans 25.03.2025 — JANS-Erstellungskosten-Kennwert Wohnen EFH/ZFH indexiert 2'900→3'365 BKP2 / 4'485 BKP1-5 CHF/m2 GF + Thalwil-Bohlweg-Rechenbeispiel + HNF-Faktor 7'350, D8, Run 16; Healthcare `Spektrumskosten.docx`/`Umbaukosten 500K.docx`/`Umbaukosten_CHF_2500K.docx` R. Jans 2025 — Spitalumbau-Kostenband CHF/m2 NF + 2 reale Faelle, Run 16), IMMO-06 Healthcare (Baukredit-Bericht Neubau Pflegeheim Herosé Aarau, Stadtrat Aarau GV 2018-2021/285, 13.12.2021 — Anlagekosten/BKP-Kennwerte CHF/m3-GV/m2-GF/Zimmer + 4-Heim-Vergleich, Run 12), JANS 8-Objekt-Referenzvergleich «Kennwerte Altersheime Gesundheitszentren.pdf» (WALD-2410-Arbeitsgrundlagen, R. Jans — 8 CH-Heime 2011-2025: BKP-2-Kennwerte CHF/m2-GF/m3-GV/PZ + Teuerungsbereinigung Index-115, Run 14 2026-07-06), IMMO-04 Marktpreise CRB (Spital_210522_Kostenkennwerte_Referenzprojekte.pdf, werk-material — 2 CH-Spital-Referenzobjekte Frauenklinik KSL 3'426 / USZ 3'767 CHF/m2 GF + BKP-Aufgliederung, Preisstand 2020.04 Ostschweiz, Run 13), IMMO-01 LB/MA-Projekte (Thalwil 9568 MA 241126 S. 3-5 Benchmarks + BKP-1-5-Kennwerttabelle, Ebmatingen 3932 LB), Wuest-Kurs "Immobilien entwickeln" 06.2023 (Erstellungskosten-Benchmarks S. 31-38), BFS Baupreisindex Apr/Okt-2025 (Web)]
links: [[bewertungsverfahren-ueberblick]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[datenquellen-registry]], [[residualwertmethode]]
---

# Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert

Der Realwert (Sachwert) bildet ab, was die **Substanz** heute wert ist:

```
Realwert  =  Bodenwert (Landwert)
           + Gebaeude-Zeitwert  (= Neuwert − Alterswertminderung)
           + Aussenanlagen / Baunebenkosten
           (± Umweltfaktoren / Marktanpassung)
```

## Bausteine

### Bodenwert (Landwert)
Aus Vergleichswert (Bodenpreise, [[datenquellen-registry]]) oder ueber den
**Landwertanteil am Neuwert** nach Lageklasse: [[lageklasse-landwertanteil]].

### Neuwert (Gebaeude)
Was es kosten wuerde, das Gebaeude heute neu zu erstellen — flaechen- bzw. volumenbasiert
(aGF/BGF/m3, [[flaechendefinitionen-sia]]) mal Kostenkennwert je Nutzung und Standard
(BKP). Kennwerte: Skill `kostenschaetzung` und `IMMO - 06 Kennwerte` (Wohnen/Healthcare/
Buero). Zeitindexierung ueber Baupreisindex (BFS / Zuercher Wohnbaukosten-Index).

#### Neuwert-Richtwerte CHF/m3 umbauter Raum (Schaetzungsanleitung Kap. 5, Tab. 2)

Belegte volumenbasierte Richtwerte nach **Bauklasse** (SIA-Ordnung 102/116), **Stand 2003**
(Quelle: Zuercher Index der Wohnbaukosten). Werte = Baukosten je m3 umbauter Raum (SIA 116);
zwei Zeilen je Klasse = EFH / MFH.

| Bauklasse (Wohnbauten) | EFH CHF/m3 | MFH CHF/m3 |
|---|---|---|
| I einfachste laendliche Bauweise | 425-500 | 350-425 |
| II einfache Konstruktion, bescheidene Ansprueche | 475-550 | 400-475 |
| III durchschnittliche Qualitaet, einfacher Innenausbau | 525-600 | 450-525 |
| IV einwandfreie Qualitaet, besserer Ausbau | 575-700 | 500-575 |
| V ueberdurchschnittlich, komfortabler Ausbau | 675-800 | 550-675 |
| VI vornehm, beste Qualitaet, hoher Komfort | 750-950 | 625-750 |

Grossgewerbe/Industrie (je m3, eingeschossig bis ausgebaut): Werkhallen ungeheizt 100-200,
Lagerhaeuser massiv 150-250, Werkstattgebaeude beheizt 200-325, Werkstatt mit umfangreicher
Technik 275-375. Bezugsgroessen: EFH = 800 m3, MFH = 5'000 m3 (8 Whg., 8 EH-Plaetze);
Zuschlag Aufzug Fr. 15-20/m3.

⚠ **Stand 2003** — fuer eine aktuelle Bewertung ueber den Zuercher Index der Wohnbaukosten
(Tab. 4 der Quelle, Basis 01.06.1939 = 100) bzw. BFS-Baupreisindex **aufindexieren**; fuer
HNF-basierte Schaetzungen die aktuellen CHF/m2-HNF-Benchmarks (oben, Wuest 2021-2023) nutzen.
Die m3-Klassen dienen primaer der **Sachwert-Plausibilisierung** und der Einordnung der
Bauqualitaet (Klasse I-VI).

#### BKP-Anteile am Gebaeude (Tab. 3, MFH mittlerer Standard, Baujahr 1985)

Anteile an den Gebaeudekosten (BKP 2 = 100 %): Baugrube 2.73 %, Rohbau 1 **35.95 %**,
Rohbau 2 9.42 % (Total Rohbau **48.10 %**); Elektro 4.63 %, Heizung/Lueftung 4.10 %, Sanitaer
8.16 %, Transport 0.56 % (Total HLKS/E **17.45 %**); Ausbau 1 12.60 %, Ausbau 2 9.30 %
(Total Ausbau **21.90 %**); Honorare 12.55 %. Diese Anteile speisen die Alterswertminderung
(unterschiedliche Lebensdauer je Bauteilgruppe, siehe unten).

### Erstellungskosten-Benchmarks Wuest Partner (Kurs 06.2023, S. 31-38)

Referenzrahmen **BKP 1-5, CHF/m2 HNF, inkl. MwSt und Parkplaetze** (S. 37):

| Nutzung/Standard | CHF/m2 HNF |
|---|---|
| Wohnen minimal | 4'700 |
| Wohnen normale Lage | 5'300 |
| Wohnen gute Lage | 5'800 |
| Wohnen ueberdurchschnittlich/gehoben | 7'000 |
| Wohnen STWE Luxus | 11'000 |
| Villa Luxus | 16'000 |
| Buero einfach (Bereich in Fabrik) | 3'200 |
| Buero gute Lage | 4'500 |
| Buero ausgebaut | 5'500 |
| Gewerbe industriell | 2'900 |
| Gewerbehalle einfach | 2'500 |
| Lagerhalle roh, minimal | 1'800 |
| Verkauf Ladenflaeche | 4'500 |

Spezial-Zuschlaege (grobe Annahme, S. 37): Hochhaus **+25 %/m2**, Anbau/Erweiterung
**+20 %/m2**, Aufstockung **+35 %/m2**, Gestaltungsplan mit Wettbewerb **+0.4-1.2 Mio CHF**.
Ertrag von Geschaeftsflaechen grob mit **5.5 % Bruttorendite** rechenbar (S. 37).

Quervergleiche/Herleitung (alle Werte Datenstand 2021-2023, ⚠ Teuerung seither pruefen):
- WP-Baukostenanalyse (Daten bis 2021): Median Wohnen Vollausbau **BKP 1-5 ~4'360 CHF/m2
  HNF** (Quantile 1.0-5.0: 3'460-7'250), BKP 2 ~3'580; pro m2 GF: BKP 1-5 Median 2'840,
  BKP 2 Median 2'330. Inkl. Teuerung 2023: **mind. 4'800 CHF/m2 HNF** (S. 33).
- SIA-Kurs «Baukosten- und Terminschaetzung» (Stand 2020): MFH Median BKP 2 = 2'800 CHF/m2
  GF → /0.70 HNF-Effizienz = 4'000 CHF/m2 HNF → +20 % Teuerung = 4'800 (S. 34).
- Studie Kostenklarheit Stadt Zuerich (2012, grosse kostenguenstige Ueberbauungen):
  Median 4'004 CHF/m2 HNF → +20 % = 4'800 (S. 35).
- Selektive WP-Analyse 2021, kleinere MFH mit ueberdurchschnittlichem Standard (Bausummen
  bis 20 Mio, indexiert): Median 25 Objekte 5'110 → **5'880 inkl. 15 % Teuerung**;
  Auswahl 5 Objekte 5'310 → 6'110 (S. 36).
- Baukosten-Dynamik (S. 32): seit 2021 ungewoehnlicher Anstieg — aeltere Benchmarks
  **mind. +10 %** anheben; dazu +10-15 % wegen gestiegener Standards/Beduerfnisse vs.
  vor 10 Jahren; Zuercher Index der Wohnbaupreise Neubauten **+8.3 %** Okt. 21-Okt. 22;
  Wohnbauprojekte 2023 rund **+30 % teurer als vor 10 Jahren**.
- **Baupreisindex-Update 2025 (BFS, Basis Okt 2020 = 100):** Okt-2024 → Apr-2025 **+0.6 %
  auf 115.8**, Apr → Okt-2025 **+0.3 % auf 116.2** (Hochbau +0.9 % YoY; Treiber Rohbau 1,
  Sanitaer, Elektro). Die Teuerung verlangsamt sich, bleibt aber positiv → die WP-Benchmarks
  (Stand 2021-2023) sind weiter **leicht aufzuindexieren**; der MA-Praxisaufschlag «mind.
  +10 %» bleibt gerechtfertigt ([[investorenmarkt-makro]]).
- **JANS-Praxisbeleg:** Die obige WP-Tabelle (S. 37) ist in den realen JANS-Deliverables
  uebernommen — die MA Thalwil 9568 (26.11.2024) fuehrt sie identisch und rechnet im
  Residualwert-Tool mit **6'000 CHF/m2 HNF** (Wohnen Vollausbau, Premiumlage). Die LB
  Ebmatingen setzt **BKP 2 = 4'100 CHF/m2** bzw. BKP 1-5 ~855 CHF/m3 an. Damit ist die
  Tabelle nicht nur Referenz, sondern gelebter JANS-Kostenkennwert ([[projektstruktur-deliverables]]).
  Für die **m³-GV-Grobkennwerte** (BKP 1-5, CHF/m³ GV, Wohnbau-Neubau Region ZH, kompoundierend
  aus Realabrechnungen) ist die Kennwerte-DB `wissen/grobkosten/wiki/kennwerte` führend (Ankerwert
  ~1'020 CHF/m³ GV ≈ 4'800 CHF/m² HNF, Wüest-kalibriert). Achtung Bezugsbasis: die obige Tabelle
  (Ausbaustandard, S. 37) und der Wüest-Dimensions-Median sind zwei verschiedene Wüest-Produkte.
- Weitere Benchmark-Quellen (S. 38): Zuercher Index der Wohnbaupreise (Gewichtung:
  BKP 2 = 84.7 %, BKP 1 = 7.0 %, BKP 4 = 5.0 %, BKP 5 = 3.3 %), werk-material.online
  (CRB), kennwerte.ch.
- Erstellungskosten je Wohnungstyp (Kleinwohnungen teurer): siehe
  [[residualwertmethode]] (Excel-Tool-Defaults 5'300-6'100 CHF/m2 HNF).

### JANS-Erstellungskosten-Kennwert Wohnen (EFH/ZFH) — belegt 25.03.2025 (D8)

Das JANS-interne Kalkulationsblatt **`_Kennwerte Jans.docx`** (`IMMO-06 Kennwerte`, R. Jans,
Stand **25.03.2025**) haelt den **gelebten, indexierten JANS-Neubau-Kennwert** fuer
individuelle Ein- und Zweifamilienhaeuser fest — die aktuelle, datierte Ergaenzung zu den
WP-Benchmarks oben (die auf 2021-2023 stehen). Die belegte Herleitung (Run 16):

- **Ausgangswert (Median):** Gattung **Wohnen individuell, EFH/ZFH, BKP 2, Medianwert 2020 =
  2'900 CHF/m2 GF** (Quelle Wohnbaupreis-Median).
- **Indexierung 2020 → 2025:** Index 2020 = 100 → 2025 = **116** → **3'365 CHF/m2 GF BKP 2**
  (2'900 × 1.16). Deckt sich mit dem BFS-Baupreisindex-Verlauf (Hochbau ~+16 % seit 2020,
  [[investorenmarkt-makro]]).
- **BKP 2 → BKP 1-5:** BKP 2 = **75 %** der Gesamt-Erstellungskosten → BKP 1-5 = 100 % →
  **4'485 CHF/m2 GF BKP 1-5** (3'365 / 0.75). Das ist der **JANS-Ansatz-Kennwert** fuer eine
  EFH/ZFH-Neuwertrechnung auf Preisstand 2025.
- **Tiefgaragen-Einstellplatz:** **42'000 CHF/SP BKP 1-5** (separat, nicht in der GF-Rechnung).

**Worked example JANS — Thalwil, Bohlweg 1 (Fall 9568):**

| Position | Menge | Ansatz | Betrag CHF |
|---|---|---|---|
| GF inkl. Keller, ohne TG | 950 m2 | 4'485 CHF/m2 GF BKP 1-5 | 4'262'000 |
| Tiefgarage | 8 SP | 42'000 CHF/SP BKP 1-5 | 336'000 |
| **Total Erstellungskosten** | | | **4'598'000 → «4.6 Mio»** |
| **HNF-Faktor** | HNF 580 m2 | 4'262'000 / 580 | **7'350 CHF/m2 HNF BKP 1-5** |

Der HNF-Faktor **7'350 CHF/m2 HNF (BKP 1-5, Gebaeude ohne TG)** ist der belegte JANS-Wert fuer
ein individuelles Wohnhaus gehobener Lage (Thalwil/Zimmerberg) auf Preisstand 2025 — er liegt
ueber den WP-MFH-Benchmarks (Wohnen gute/gehobene Lage 5'800-7'000 CHF/m2 HNF oben), was fuer
ein **EFH/ZFH** (kleinteiliger, weniger Skaleneffekt, hoeherer Ausbaustandard) plausibel ist.
GF-inkl.-Keller/HNF-Verhaeltnis hier 580/950 = **0.61** ≈ der JANS-HNF/GF-Faktor 0.60
([[flaechendefinitionen-sia]]). ⚠ Kennwert ist EFH/ZFH-spezifisch und premiumlagen-gepraegt;
fuer MFH die WP-Tabelle oben verwenden.

### Healthcare-Neubau — Erstellungskosten-Benchmark (realer CH-Fall, belegt 2021)

Fuer die Sachwert-/Neuwert-Rechnung eines **Pflegeheims** fehlten der KB bisher belegte
CH-Kennwerte (nur der WALD-Studienanker ~4'000 CHF/m2 GF, Skill `healthcare-wirtschaftlichkeit`).
Der oeffentliche **Baukredit-Bericht Neubau Pflegeheim Herosé, Aarau** (Stadtrat Aarau,
Botschaft an den Einwohnerrat GV 2018-2021/285, 13.12.2021; Generalplaner Meyer Gadient
Architekten AG) liefert nun einen datierten, nachvollziehbaren Realbenchmark (T17):

**Objekt:** 116 Pflegezimmer (NF 23.7 m2/Zimmer inkl. Dusche/WC), EG + 4 OG, je OG zwei
Pflegewohngruppen (14+15 Zimmer), Hybridbau (Holz-Fassade + Betonkern, ≥80 % Recyclingbeton),
Minergie-P-ECO. Bezug 2025.

**Anlagekosten (Kostenvoranschlag, ±10 %, inkl. 7.7 % MwSt; Kostenstand Baupreisindex
Nordwestschweiz Hochbau 01.04.2021 = 101.5):**

| BKP | Position | CHF |
|---|---|---|
| 1 | Vorbereitungsarbeiten | 1'885'000 |
| 2 | Gebaeude | 40'215'100 |
| 3 | Betriebseinrichtungen | 3'330'000 |
| 4 | Umgebung | 2'450'000 |
| 5 | Baunebenkosten | 2'710'000 |
| 6 | Reserve (5 % von BKP 1-5/9) | 2'530'000 |
| 9 | Ausstattung | 2'679'900 |
| | **Total Anlagekosten** | **55'800'000** |

**Kostenkennwerte BKP 2 Gebaeude (Herosé, Tab. 5):**
- Gebaeudevolumen GV nach SIA 416: **36'406 m3** (davon 6'663 m3 unter Terrain).
- Geschossflaeche GF nach SIA 416: **10'452 m2**.
- **BKP 2 / m3 GV: CHF 1'105.** **BKP 2 / m2 GF: CHF 3'848.** **BKP 2 / Zimmer: CHF 346'681.**
- Wichtig fuer den Ansatz: der Wettbewerbs-Grobwert von ~2'500 CHF/m2 (Standard Wohnungsbau)
  war **zu tief** — Pflegeheimneubauten liegen wegen **hohem Installationsgrad und
  spezifischem Ausbaustandard** bei einem Referenzpreis von rund **3'850 CHF/m2 GF (BKP 2)**.
  Das deckt sich mit dem WALD-Anker (~4'000 CHF/m2 GF) und mit dem Healthcare-Zuschlag
  **+20-25 % auf den Wohn-Basiskennwert** (Skill `healthcare-wirtschaftlichkeit`).

**Vier-Heim-Vergleich BKP 2 Gebaeude/Zimmer (Anlagekosten ~50 Mio, Herosé Tab. 5) — direkt
verwendbarer JANS-Benchmark:**

| Pflegeheim (Neubau) | Baukosten/Zimmer CHF | Hotellerietaxe CHF/Tag |
|---|---|---|
| Neubau Herosé, Aarau AG | 347'000 | 153 |
| Alterszentrum Suhrhard, Buchs AG | 349'000 | 150 |
| Wohn-/Pflegezentrum Blumenrain, Zollikon ZH | 418'000 | 180 |
| Alterszentrum Obere Muehle, Lenzburg AG | 337'000 | 170 |

Bandbreite **~337'000-418'000 CHF Gebaeudekosten (BKP 2) pro Pflegezimmer** (Stand 2021);
Zollikon (ZH-Premiumlage) fuehrt. Kostenkompaktheit ist der Haupthebel — Herosé weist ein sehr
effizientes Verhaeltnis Zimmerflaeche zu Gesamt-GF aus (116 x 23.7 = 2'749 m2 Zimmer-NF von
10'452 m2 GF). ⚠ Stand 2021 → mit Baupreisindex aufindexieren (seit 2021 ~+5-8 %,
[[investorenmarkt-makro]]); die Ertrags-/Annuitaetsseite dieses Falls steht in [[ertragswert-dcf]].

### Healthcare-Kostenband erweitert — Spital (CRB werk-material, belegt Preisstand 2020.04)

Fuer die obere Kante des Healthcare-Kostenbands (Spital/Klinik, installationsintensiver als
Pflegeheim) liefert die CRB-Datenbank **werk-material** (Ausdruck 22.05.2021, BKP-Gliederung
nach SIA 416, Kennwert je m2 GF) zwei reale CH-Spital-Referenzobjekte, alle auf **Preisniveau
2020.04 Ostschweiz** normiert:

| Objekt (Neubau) | Erstellungskosten CHF/m2 GF | Bauwerk CHF/m2 GF | GF | Fertigstellung |
|---|---|---|---|---|
| Frauenklinik Kantonsspital Luzern | **3'426** | 3'064 | 17'031 m2 | 2001 |
| Universitaetsspital Zuerich, Mehrzweckbau Haldenbachstr. 14 | **3'767** | 2'271 | 2'888 m2 | 1993 |

**BKP-Aufgliederung USZ-Mehrzweckbau (CHF/m2 GF, Preisstand 2020.04, ⚠ Altbau 1993):** BKP 1
Vorbereitung 315, **BKP 2 Gebaeude 2'695** (davon Rohbau 1 = 966, Rohbau 2 = 312, Elektro 220,
HLK/Automation 151, Sanitaer 164, Ausbau 1 = 216, Ausbau 2 = 191, Honorare 347), BKP 3
Betriebseinrichtungen 265, BKP 4 Umgebung 86, BKP 5 Baunebenkosten 94, BKP 9 Ausstattung 173.

**Einordnung Healthcare-Kostenband (alle GF-basiert, ⚠ unterschiedliche Preisstaende):**
- **Pflegeheim** (Herosé, Preisstand 2021 Nordwestschweiz): BKP 2 = **3'848 CHF/m2 GF**.
- **Spital** (CRB, Preisstand 2020.04 Ostschweiz): EK **3'426-3'767 CHF/m2 GF** — der USZ-Bau BKP 2
  liegt mit 2'695 tiefer (Altbau 1993, weniger Technik als heute); die Frauenklinik (2001)
  hoeher. Heutige Spitalbauten liegen deutlich hoeher (hoher Medizin-/Installationsgrad).
- Damit ist das **Healthcare-Neubau-Kostenband ~3'400-3'850+ CHF/m2 GF (Preisstand 2020/21)**
  belegt — Pflegeheim am unteren, Spital am oberen Rand; heute per Baupreisindex aufzuindexieren.

⚠ **Grenzen der CRB-Quelle:** nur zwei Spital-Einzelobjekte (kein Pflegeheim, keine CHF/m3-
oder CHF/Bett-Kennwerte), Preisstand 2020.04 Ostschweiz (nicht ZH), Fertigstellung 1993/2001 →
per Baupreisindex hochgerechnet. Als Groessenordnung + BKP-Struktur belastbar, nicht als aktueller
ZH-Ansatz. Die Betten-/Zimmer-Kennwerte liefert der Herosé-Fall (oben).

### Healthcare-Kennwerte-Basis erweitert — JANS 8-Objekt-Referenzvergleich (belegt 2011-2025)

Der Herosé-Einzelfall war bisher der einzige datierte Pflegeheim-Anker. JANS' eigenes
Referenzblatt **«Kennwerte Altersheime Gesundheitszentren»** (WALD-2410-Arbeitsgrundlagen, R. Jans)
stellt nun **acht reale CH-Alters-/Pflegeheime** (2011-2025, Groessen S bis XXL-Zentrum) mit
Gebaeudekosten BKP 2, Flaechen (GF/GV/HNF nach SIA 416), Bettzahl und den daraus abgeleiteten
Kennwerten nebeneinander — die belastbare Basis fuer den Healthcare-Neuwert (Run 14):

| Objekt (Groesse) | Jahr | PZ | GF m2 | GV m3 | BKP 2 Mio | CHF/m3 GV | CHF/m2 GF | CHF/PZ (BKP 2) |
|---|---|---|---|---|---|---|---|---|
| Averecura WA-ZH (S) | 2025 | 28 | 3'100 | 9'600 | 12.34 | 1'420 | 4'250 | 440'000 |
| Dankensberg BaS-ZH (S) | 2021 | 34 | 4'040 | 12'500 | 14.00 | 1'120 | 3'465 | 412'000 |
| Vella GR-VE (M) | 2012 | 55 | 7'150 | 24'000 | 24.5 | 845 | 2'835 | 510'000 |
| Trotte ZH-ZH (L) | 2019 | 89 | 11'995 | 36'685 | 46.9 | 1'277 | 3'907 | 530'000 |
| Herosé AA-AR (L) | 2022 | 116 | 10'452 | 36'406 | 40.2 | 1'105 | 3'848 | 347'000 |
| Lanzeln ST-ZH (XXL) | 2011 | 123 | 11'184 | 35'531 | 29.34 | 826 | 2'623 | 272'780 |
| Mathysweg ZH-ZH (XXL) | 2022 | 121 | 11'949 | 40'408 | 42.55 | 1'053 | 3'561 | 350'000 |
| St. Anna LU-LU (Zentrum) | 2021 | 68 | 14'095 | 48'590 | 53.3 | 1'097 | 3'783 | 780'000 |

**Belegte Kennwert-Baender (BKP 2 Gebaeude, Rohwerte je Baujahr):**
- **CHF/m2 GF: 2'623-4'250** (Median ~3'800); die Neubauten ab 2019 liegen bei **3'560-4'250**,
  Herosé/Trotte/Mathysweg um **3'850-3'910** — konsistent mit dem frueheren Herosé-Anker.
- **CHF/m3 GV: 826-1'420** (Median ~1'100); Herosé 1'105 mittig.
- **CHF/Pflegezimmer (BKP 2, ~24 m2-Zimmer): 272'780-530'000** fuer reine Heime; **780'000** beim
  St.-Anna-**Zentrum** (Ausreisser, hoher Gemein-/Therapieflaechenanteil). Das erweitert den
  frueheren Herosé-Vier-Heim-Vergleich (337'000-418'000) nach unten und oben.

⚠ **Verifikationsnotiz (Run 18, 2026-07-12 — gegen das Original-Referenzblatt geprueft):** Die
Tabelle oben ist eine **getreue Abschrift** des JANS-Blatts. Zwei Lesehinweise, weil einzelne
Kennwerte nicht als BKP 2 ÷ Flaeche reproduzierbar sind:
- **CHF/Pflegezimmer ist auf ein 24-m2-Standardzimmer normiert** (Zeilenlabel im Blatt: «Kosten
  BKP 2 Pflegezimmer 24 m2»), also **nicht** BKP 2 / effektive Zimmerzahl. Bei Objekten mit ~24-m2-
  Zimmern faellt es zusammen (Herosé 40.2 Mio / 116 = 347'000 = Tabellenwert), bei groesseren Zimmern
  weicht es ab (Lanzeln-Tabellenwert 272'780 ≠ 29.34 Mio / 123 = 238'537). Kein Fehler, sondern die
  Normierung.
- Die **oberen Rohband-Endpunkte CHF/m2 GF 4'250 und CHF/m3 GV 1'420 (beide Averecura) sowie die
  ganze Vella-Zeile sind quellenintern nicht reproduzierbar**: Averecura 12.34 Mio / 3'100 = 3'981
  (nicht 4'250) bzw. / 9'600 = 1'285 (nicht 1'420); Vellas Kennwerte 2'835/845 implizieren beide
  ~20.3 Mio, waehrend die Zeile BKP 2 = 24.5 Mio nennt. Das sind Inkonsistenzen **im Original-Blatt**,
  nicht in der Abschrift. Der **BKP 2 ÷ GF reproduzierbare Rohband** liegt damit bei **~2'623-3'981
  CHF/m2 GF**. Fuer den praktischen Ansatz ist ohnehin die **teuerungsbereinigte Spalte massgebend
  (3'042-4'485, voll reproduzierbar** — Trotte 4'485 als Oberkante). Verdikt: Kernaussage (Band
  ~3'800-4'500 CHF/m2 GF fuer Neubau, teuerungsbereinigt) **bestanden**; die beiden Averecura-Roh-
  Ausreisser und die Vella-Zeile mit ⚠ Vorbehalt (Original-Blatt zu bereinigen → [[wissensluecken]] D10).

**JANS-Teuerungsbereinigung (Referenzblatt, gemeinsamer Index-Stand ~115):** normiert liegen die
acht Objekte bei **3'042-4'485 CHF/m2 GF** — d.h. auf heutigen Preisstand gerechnet ist das obere
Band massgebend: **~3'800-4'500 CHF/m2 GF (BKP 2)** fuer einen Pflegeheim-Neubau, mit den
installations-/gemeinschaftsflaechenreicheren Objekten (Trotte 4'485, St. Anna 4'300, Herosé 4'129)
oben. Das bestaetigt und praezisiert den Healthcare-Ansatz **~3'850-4'000+ CHF/m2 GF** (WALD-Anker
~4'000; Herosé 3'848) — fuer gehobene/gemeinschaftsintensive Programme bis **~4'500**.
⚠ Die genaue Normierungsmechanik der Index-115-Spalte ist aus dem Blatt nicht vollstaendig
rekonstruierbar (die Abweichung zur reinen Baupreisindex-Rescale deutet auf eine zusaetzliche
Standard-/Standortkorrektur hin); die **Rohwerte je Baujahr** sind der harte Beleg, die
Index-Spalte die JANS-interne Vergleichslesart. Hotellerietaxen der Objekte 150-153 CHF/Tag
(Averecura/Dankensberg 150, Herosé 153) → [[ertragswert-dcf]]. Die Wirtschaftlichkeits-/
Flaechenfaktoren (Betten, GF/Bett, NF/Bett, Bauvolumen/HNF, optimale Betriebsgroesse) aus
demselben Blatt: [[projektstruktur-deliverables]] (T19-Raster).

### Healthcare-Umbau-Kostenband (JANS «Spektrumskosten», CHF/m2 NF — belegt 2025)

Die Kennwerte oben sind **Neubau** (CHF/m2 GF). Fuer die haeufigere Healthcare-Aufgabe —
**Umbau/Umnutzung im Bestand** (Buero → Station, Nutzungsaenderung im laufenden Spitalbetrieb) —
fuehrt JANS ein eigenes, nach Stationstyp gestuftes **Umbau-Kostenband je m2 NF** (Nutzflaeche).
Belegt aus drei JANS-Arbeitsdokumenten `IMMO-06 Kennwerte/Healthcare` (Run 16): dem
Kunden-Memo **`Spektrumskosten.docx`** («Memorandum of approximate cost») und zwei realen
Einordnungs-Faellen (`Umbaukosten 500K.docx`, `Umbaukosten_CHF_2500K.docx`).

**Richtbandbreite Spitalumbau CH (CHF/m2 NF, «Spektrumskosten», JANS-Arbeitsband):**

| Nutzung / Stationstyp | CHF/m2 NF |
|---|---|
| Leichter Umbau Buero → Praxis/Therapie | 2'000 – 3'000 |
| Buero → psychiatrische Normalstation (Uebernachtung, ohne Akutmedizin) | 2'200 – 3'500 |
| Somatische Normalpflegestation | 3'500 – 4'500 |
| Kinder-/Jugendstation Akut | 4'000 – 5'500 |
| Intensiv-/Spezialstation | 6'500 – 9'000 |
| Neue Spezialstation mit hohem Anteil Operationssaele | ab 10'000 |

**Reale JANS-Einordnungsfaelle (Kennwert-Kalibrierung):**
- **Psychiatrie, 12 Uebernachtungsplaetze, ohne OP/Hightech:** Umbau ~500'000 CHF / 452 m2 HNF =
  **~1'100 CHF/m2 HNF** — liegt **deutlich unter** dem Band, weil reiner **Teilumbau** (Tragwerk/
  Brandschutz/Fluchtwege Bestand, keine Nasszellen je Zimmer, minimale Medizintechnik, Fokus
  Innenausbau/Lueftung/Sanitaer/Schreiner). Als **Machbarkeits-/Fruehphasenwert plausibel**, als
  Realwert fuer die Ausfuehrung klar untere Bandgrenze; **realistischer Zielkorridor bei
  Praezisierung 1'800-2'500 CHF/m2 HNF**. Risikoindikatoren: Brandschutz, Schallschutz Psychiatrie,
  Sicherheitsbeschlaege Tueren.
- **Kispi Stadt Zuerich, Administrationsbereich → Kinder-/Jugend-Bettenstation** (Umbau im
  laufenden Spitalbetrieb): Kennwert **~4'412 CHF/m2 NF** — liegt im **unteren Bereich** des
  Paediatrie-Bands (4'000-5'500), also **normal bis eher guenstig/defensiv**, nicht teuer: hoher
  Anteil HLKSE/Lueftung/Sanitaer/Brandschutz, neue Zimmerstruktur mit Nasszellen, erhoehte
  Paediatrie-Anforderungen, Provisorien/Betriebseinschraenkungen; Ausstattung separat ausgewiesen.

⚠ Bezugsflaeche beachten: das Band ist **CHF/m2 NF** (nicht GF). Der Teilumbau-Wert 1'100 gilt nur
bei weitgehendem Bestandserhalt der Struktur; sobald Nasszellen/Tragwerk/Medizintechnik dazukommen,
gilt das volle Stationsband. Der Wert **Umbau ≠ Neubau**: das Umbau-NF-Band (2'000-9'000+) ist mit
dem Neubau-GF-Band (~3'400-4'500 CHF/m2 GF, oben) **nicht direkt vergleichbar** (andere Bezugsflaeche,
andere Leistungstiefe). Fuer die Ertrags-/Annuitaetsseite Healthcare: [[ertragswert-dcf]].

### Alterswertminderung (Schaetzungsanleitung Kap. 5, Tab. 9-11)

Abzug fuer Alter/Abnutzung des Gebaeudes ueber die **Restnutzungsdauer**. Belegtes
dreistufiges Vorgehen aus der Schaetzungsanleitung:

**1. Lebensdauer der Bauteile (Tab. 9)** — Auswahl (Jahre):
- Rohbau 1: Baumeisterarbeiten/massive Tragkonstruktion **100+**, Fassadenbekleidungen 30-50.
- Rohbau 2: Fenster Holz 20-40, Fenster Kunststoff/Metall 30-50, Steildaecher (Ziegel) 40-60,
  Flachdaecher 20-60, Fassadenputze 15-25.
- Haustechnik: Elektro 30-50, Heizinstallation 15-30, Heizkessel (Oelbrenner) 15-25,
  Lueftung 15-30, Sanitaer-Leitungen 20-40, Sanitaer-Apparate 20-50, Aufzuege 20-40.
- Ausbau: Gipser 20-40, Schreiner/Schliessanlagen 20-40/40-60; Bodenbelaege Parkett 25-50,
  Linoleum 20-30, PVC 15-25, textil 10-15, keramisch 30-50; innere Malerarbeiten 10-15.
  Bei gewerblicher Nutzung Lebensdauer entsprechend der Beanspruchung reduzieren.

**2. Wirtschaftliches Alter (Tab. 10)** — gewichtetes Mittel der Bauteilgruppen-Alter.
Gewichtung uebliches Wohngebaeude: Rohbau 1 = 1, Rohbau 2 = 2, Ausbau = 3, Installationen = 4
(Total Gewicht 10). Beispiel: (1·30 + 2·25 + 3·20 + 4·15) / 10 = 200 / 10 = **20 Jahre**
wirtschaftliches Alter. Annahme: ordentliche Instandhaltung, Instandsetzungszyklen alle
25-30 Jahre; maximale Restnutzungsdauer auf 80 Jahre begrenzt.

**3. Wertminderung in % des Neuwerts (Tab. 11)** — Funktion von wirtschaftlichem Alter
(nach Objektgruppe 1-6, d.h. theoretischer Gesamtlebensdauer GLD) und Unterhaltszustand
(schlecht/mittel/gut). Objektgruppen-GLD: Gr. 1 bis 40 J. (Holz/Kunststoff Gewerbe), Gr. 3
60-80 J. (Wohnhaeuser Holz/Fachwerk, Industrie Beton/Stahl), Gr. 4 80-100 J. (massive
Wohn-/Gewerbebauten), Gr. 5 100-120 J. (ueberdurchschnittliche Wohn-/Geschaeftshaeuser),
Gr. 6 120-150+ J. (monumental). Richtwert: bei **Renovationen 10-20 % Zuschlag** auf die
Wertminderung fuer erschwerte Abbruch-/Demontagebedingungen.

Bei aufgeschobenem Unterhalt zusaetzlicher **Sanierungsabschlag** — dieser kommt aus der TDD
(Skill `ankaufspruefung`); die Wertminderung muss die am Stichtag faelligen
Instandsetzungskosten decken koennen.

## Wann Realwert fuehrt

- Selbstgenutzte EFH (Sachwertanteil), Spezialimmobilien ohne Mietmarkt, Versicherungswert.
- Bei Renditeobjekten dient er als **Plausibilisierung** des Ertragswerts, fuehrt selten.

## Offen / zu vertiefen

- ✓ 2026-06-09: Neuwert-/Erstellungskosten-Kennwerte je Nutzung/Standard (CHF/m2 HNF,
  BKP 1-5) aus dem Wuest-Kurs als belegte Tabelle eingearbeitet (T6 teilerfuellt).
- ✓ 2026-06-10: CHF/m3-Neuwert-Richtwerte (Tab. 2, Bauklasse I-VI), BKP-Anteile (Tab. 3)
  sowie Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) aus der Schaetzungsanleitung belegt eingearbeitet (T6 vollstaendig,
  T12 erfuellt). ⚠ m3-Werte Stand 2003 → aufzuindexieren.
- ✓ 2026-07-02 (T17, Run 12): **Healthcare-Neubau-Erstellungskosten-Benchmark** aus dem
  oeffentlichen Baukredit-Bericht Pflegeheim Herosé Aarau (13.12.2021) belegt — BKP-Zusammen-
  stellung 55.8 Mio, Kennwerte BKP 2 = 1'105 CHF/m3 GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer +
  Vier-Heim-Vergleich 337'000-418'000 CHF/Zimmer. Bestaetigt den Healthcare-Zuschlag (Pflege
  +20-25 % → ~3'850-4'000 CHF/m2 GF).
- ✓ 2026-07-04 (Run 13): **Healthcare-Kostenband auf Spital erweitert** — CRB werk-material
  (2 CH-Spital-Referenzobjekte: Frauenklinik KSL 3'426 / USZ-Mehrzweckbau 3'767 CHF/m2 GF +
  BKP-Aufgliederung USZ, Preisstand 2020.04 Ostschweiz). Healthcare-Neubau-Kostenband nun belegt
  bei **~3'400-3'850+ CHF/m2 GF** (Pflegeheim unten, Spital oben; Preisstand 2020/21).
- ✓ 2026-07-06 (T19, Run 14): **Healthcare-Kennwerte-Basis von 1 auf 8 reale Objekte erweitert**
  (JANS-Referenzblatt «Kennwerte Altersheime Gesundheitszentren», 2011-2025) — BKP 2 belegt bei
  **2'623-4'250 CHF/m2 GF** (roh) bzw. **3'042-4'485** (teuerungsbereinigt Index-115), **826-1'420
  CHF/m3 GV**, **272'780-780'000 CHF/Pflegezimmer**; Healthcare-Neubauansatz auf **~3'850-4'500
  CHF/m2 GF** praezisiert. Wirtschaftlichkeits-/Flaechenfaktoren → [[projektstruktur-deliverables]].
- ✓ 2026-07-10 (D8, Run 16): **JANS-Erstellungskosten-Kennwert Wohnen (EFH/ZFH) belegt** aus
  `_Kennwerte Jans.docx` (25.03.2025) — Median 2020 = 2'900 CHF/m2 GF BKP 2, indexiert 2025 =
  3'365 (BKP 2) / **4'485 CHF/m2 GF BKP 1-5**; TG 42'000 CHF/SP; Thalwil-Bohlweg-Rechenbeispiel
  (950 m2 GF → 4.6 Mio inkl. TG; **HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5**). Aktueller, datierter
  JANS-Ansatzwert (ergaenzt die WP-Benchmarks Stand 2021-2023).
- ✓ 2026-07-10 (Run 16): **Healthcare-Umbau-Kostenband belegt** (JANS «Spektrumskosten», CHF/m2 NF)
  — 6-stufiges Spitalumbau-Band 2'000-10'000+ + zwei reale JANS-Faelle (Psychiatrie-Teilumbau
  ~1'100/Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412 CHF/m2 NF). Trennt Umbau (NF) sauber
  vom Neubau (GF).
- Verknuepfung Sanierungsstau (TDD) → Abschlag formalisieren.
- Teuerungs-Update der WP-Benchmarks auf Stand 2026 (Werte oben sind 2021-2023).
