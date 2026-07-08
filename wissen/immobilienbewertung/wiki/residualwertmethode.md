---
title: Residualwertmethode — Landwert aus der Projektentwicklung
status: established
last_updated: 2026-07-08
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1 Projektbewertung, L. Huesser; S. 13-72 vollstaendig eingearbeitet), IMMO-03 Folien DXMA Erfolgsfaktoren (Marktwertschaetzung A4-Blatt S. 34/35), IMMO-03 Residualwert Excel-Tools (WP + JANS: Pre-Check_Tool + Residualwert_Projektbewertung.xlsx — Zellformeln reverse-engineered Run 15 2026-07-08: Rechenkette, Default-Parameter, Gewerbe-5.5-%-Regel, HNF-Herleitung, JANS-Kalibrierung Pre-Check 12 %/2.45 %), IMMO-01 RW Residualwert-Projekte]
links: [[bewertungsverfahren-ueberblick]], [[ertragswert-dcf]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[investorenmarkt-makro]], [[realwert-sachwert]], [[nutzungskonzepte]]
---

# Residualwertmethode — Landwert aus der Projektentwicklung

Die **wichtigste Kennzahl der Projektevaluation** ist der **Landwert** — und der zentrale
Lerninhalt des Wuest-Kurses: "Sie lernen den Landwert aus der Entwicklung eines typischen
Mehrfamilienhauses zu berechnen." (Wuest-Kurs S. 2)

## Grundidee

Der Landwert ist das, was **uebrig bleibt** (Residuum), wenn man vom erzielbaren Endwert
des fertigen Projekts alle Kosten und die geforderte Entwickler-/Investorenmarge abzieht:

```
Landwert (zahlbar)  =  Endwert/Verkehrswert des fertigen Projekts
                       − Erstellungskosten (BKP 1–9)
                       − Baunebenkosten / Projektierung / Honorare
                       − Finanzierungskosten waehrend Bau
                       − Vermarktung / Reserven / Risiko
                       − geforderte Marge (Entwickler-/Investorengewinn)
```

- **Endwert** = bei Renditeobjekt der kapitalisierte Ertragswert ([[ertragswert-dcf]]),
  bei Verkauf (STWE/EWG) die Summe der erzielbaren Verkaufspreise (hedonisch,
  [[vergleichswert-hedonisch]]).
- Ergibt der zahlbare Landwert **mehr** als der geforderte Kaufpreis des Bodens → das
  Projekt traegt eine Marge, der Ankauf lohnt sich. Andernfalls nicht.

## Kanonisches Rechenschema (Wuest Partner)

Das offizielle WP-Schema (Wuest-Kurs S. 19/21): Die zukuenftigen Verkaufserloese und/oder
der Ertragswert (Jahresmietpotenzial kapitalisiert mit marktgerechtem Zinssatz) entsprechen
dem Marktwert per Fertigstellung; davon werden rueckwaerts Investitionen und Projektrisiken
abgezogen.

```
   Ertragswert (per Fertigstellung)
 − Risiko/Gewinn
 − Erstellungskosten
 − Grundstueckskosten (BKP 0 ohne Landpreis)
 = Residualwert (Marktwert aktuell)            (Wuest-Kurs S. 21)
```

Grundsaetze (Wuest-Kurs S. 21):
- **Alle Werte pro m2** rechnen — bei WP standardmaessig in **HNF**; Darstellung pro
  CHF/m2 Grundstuecksflaeche und/oder pro Nutzflaeche.
- Ertragswert per Fertigstellung: Positionierung zwischen **50%- und 90%-Quantil** im
  Preisspektrum der Gemeinde anhand der Mikrolage; Annahme Standard entspricht Mikrolage,
  Zustand entspricht Neubau.
- Erstellungskosten via Benchmarks; **Verhaeltnis BKP 2 zu BKP 1-5 ≈ 85 %**.
- Grundstueckskosten: Annahme erschlossenes, baureifes Bauland, zonenkonforme Nutzung;
  plus Finanzierungs- und Handaenderungskosten.
- Anwendung bei **Neubau- UND Umbauprojekten** (S. 18); der Landwert ist indirekt
  definiert: in einem offenen Markt wird der maximale Nutzen eines Grundstuecks auch sein
  Verkaufspreis («highest and best use», S. 26).

### Abzuege nach dem Residuum (Excel-Tool, S. 60)
- **Abbruchkosten**: Benchmark **CHF 20-40/m3** Bestandsvolumen.
- **Zinsverlust bis Fertigstellung**: ca. **2 % Zins p.a. auf dem Residualwert** ueber die
  Baudauer (Beispiel 3.0 Jahre).
- **Mehrwertabgabe** bei Um-/Aufzonungen: **20-40 % des Planungsmehrwerts** (Ermessen der
  Gemeinde; faellig bei Baustart bzw. Baubewilligung; Landwerte vor/nach Massnahme je per
  Residualwert gerechnet, S. 25).
- Resultat: Bsp. Ertragswert 14.539 Mio − (Erstellung+Risiko) 9.716 Mio = 4.823 Mio vor
  Abzuegen (1'610/m2 GSF) → nach Abzuegen 4.345 Mio (1'450/m2 GSF). Brutto-/Nettorendite
  nach Fertigstellung: 3.1 % / 2.5 % (S. 60).

## Risiko-/Gewinnanteil (Entwicklermarge)

In % der Erstellungskosten (Wuest-Kurs S. 39/40):
- **Wohnen (herkoemmliche MFH-Projekte): 5-8 %**, **Gewerbe: 10-12 %** (Beispielwert 7.0 %).
- Je frueher die Phase, desto hoeher — Richtwerte je Projektstand (S. 40):

| Phase | Wohngebaeude | Geschaeftsgebaeude | typ. Dauer |
|---|---|---|---|
| Land nicht zonenkonform | 15-25 % | 20-30 % | 2-4 J. |
| Bauland zonenkonform | 8-10 % | 10-15 % | — |
| Bauland erschlossen | 8-10 % | 10-15 % | 0-1 J. |
| Gestaltungsplan bewilligt | 6-8 % | 9-12 % | 2 J. |
| Projekt bewilligt | 5-8 % | 8-10 % | 1-2 J. |
| Baufreigabe/Kostensicherheit | 2-5 % | 5-8 % | 2-4 J. |

- Total **8-10 Jahre bis Fertigstellung** fuer Arealentwicklungen mit Gestaltungsplan.
- Spiegelbildlich steigt der **Landwert durch Planungsfortschritt um total +15 bis +30 %**
  (S. 14): zonenkonform +5-10 %, erschlossen +0-2 %, Gestaltungsplan +2-4 %, Projekt
  bewilligt +2-4 %, Baufreigabe/Kostensicherheit +3-5 %, Projekt erstellt bis +5 %.
- Risikoarten (S. 41): Planungsrisiken (Genehmigung, Einsprachen, Zonenkonformitaet),
  Kostenrisiken (Ueberschreitung, Fertigstellung, Qualitaetsniveau), Marktrisiken
  (Erstvermietung, Marktzyklus, Trend-/Bedarfsveraenderungen).

## Anwendungsfaelle (Wuest-Kurs S. 22-27)

1. **Landwertschaetzung** / Marktwert von Bauland oder Arealen mit altem Bestand.
2. **Baurechtszins-Verhandlungen** (Basis-Landwert via theoretisches Projekt).
3. **Verkauf von Projekten** / Arealueberbauungen (Stichtag vor Baustart: inkl. aller
   Erstellungskosten; Stichtag ab Fertigstellung: wie Fortfuehrungsbewertung, aber mit
   Anfangsleerstand + Vermarktungsrisiko, Dauer bis Fertigstellung diskontiert).
4. **Ausnuetzungsreserven**: Residualwert der Reserve zusaetzlich zum Fortfuehrungswert,
   auf heute diskontiert (Realisierung oft erst in Jahren).
5. **Mehrwertabgabe**-Ermittlung (vor/nach Planungsmassnahme).
6. **Wettbewerbsvergleich/Vorpruefung**: rentabelstes Projekt = hoechster Residualwert =
   «highest and best use».
7. **Portfolio-Strategien**: Fortfuehrung / Teil-/Totalsanierung / Umbau-Umnutzung /
   Erweiterung-Aufstockung / Abriss-Neubau im Szenarienvergleich.

## Eingabegroessen Excel-Tool (WP-Defaults, S. 29-49)

- **Wohnungsmix**: Zielgroessen HNF je Wohnung: 1 Zi 35 / 2 Zi 62 / 3 Zi 88 / 4 Zi 108 /
  5 Zi 130 m2; HNF/GF-Effizienzfaktoren 0.73-0.80, Ziel **HNF-Effizienz ~0.75**
  (kleine Gebaeude tiefer, grosse Volumen hoeher) (S. 30).
- **Erstellungskosten je Wohnungstyp** (BKP 1-5 inkl. Einstellplaetze + MwSt, «all
  inclusive», CHF/m2 HNF): 1 Zi 6'100 / 2 Zi 5'900 / 3 Zi 5'700 / 4 Zi 5'400 / 5 Zi 5'300;
  Mittel Bsp. 5'680 — Kleinwohnungen sind teurer pro m2 (S. 30/31). Benchmarks im Detail:
  [[realwert-sachwert]].
- **Marktmiete** (Beispielprojekt, netto/Monat): 1 Zi 1'100 (= 377 CHF/m2a) / 2 Zi 1'450
  (281) / 3 Zi 1'900 (259) / 4 Zi 2'150 (239) / 5 Zi 2'450 (226); Ø 266 CHF/m2a;
  Einstellplatz 130/Mt., Aussenparkplatz 80/Mt. (S. 42). Plausibilisierung ueber
  Quantile-Einordnung ([[vergleichswert-hedonisch]]).
- **Betriebskosten & Unterhalt** (S. 49, in % des Soll-Ertrags bzw. CHF/m2 HNF):
  Betriebskosten (Verwaltung/Versicherung/Versorgung) **4.5-6.0 %**; Uebriges 0.5 %;
  Liegenschaftssteuer 0-6 % (nur manche Kantone; Promille des Werts, Bemessung erfahrungs-
  gemaess ~70 % des Marktwerts); struktureller Leerstand **1.0-3.5 %** (BFS-Leerwohnungs-
  ziffer der Gemeinde); Instandhaltung **13-16 CHF/m2 HNF**; Instandsetzung **17-25 CHF/m2
  HNF**. Beispiel-Total ~18.7 % des Soll-Ertrags.
- **Diskontierung**: siehe [[ertragswert-dcf]] (WP-Empfehlung Neubau-Wohnbau Sommer 2023:
  2.2-2.9 %).

## Sensitivitaet (Excel-Tool, S. 61/62)

Automatisierte Tabelle: Diskontierung in Basispunkten (±5 bis ±30 Bps) × Nettoertrag
(±10/15 %) × struktureller Leerstand (±50/100 %) × Erstellungskosten (±10/20 %).
**Merkzahl: −20 Bps Diskontierung erhoehen den Marktwert bereits um ~16 %** — im
Tiefzinsumfeld reagiert der Wert extrem auf kleine Diskontierungs-Aenderungen.

## Pre-Check-Tool (Beta, S. 65/66)

Fuer **rechnerische Machbarkeitsstudien ohne Grundrisse**: Ausnuetzungsberechnung anhand
Planungsziffern (AZ, GFZ, UeZ, BMZ oder Gebaeudegrundflaeche GGF), Wohnungsmix-Tool,
Flaecheneffizienz HNF/GF, Baukostenschaetzung via Benchmarks/Skaleneffekte, Residualwert-/
Landwertschaetzung. Anwendung lizenzpflichtig (WP).

## Excel-Tool Formel-Logik (D4 — reverse-engineered aus den Zellen, Run 15)

Die vier Excel-Tools (`05 Residualwert/Exel Tabelle/wp/` und `.../jans/`) sind mit Run 15
(2026-07-08) **auf Zellebene ausgelesen** — damit ist die bisher offene D4-Luecke (die
Formel-Logik, nicht nur die Kursfolien-Struktur) geschlossen. Es gibt **zwei Tool-Familien**:

### A. «Residualwert Berechnung» (einblaettriges Lehrtool, WP + JANS)

Das saubere, selbstdokumentierende Einblatt-Tool aus dem SIA-Kurs. **Befund: die JANS-Datei
ist formel- UND default-identisch mit der WP-Datei** — nur die Kopfzelle traegt «JANS» statt
«© Wuest Partner AG». JANS hat dieses Tool also **nicht rekalibriert** (die JANS-Kalibrierung
sitzt im Pre-Check-Tool, unten). Belegte Rechenkette (Zellbezuege der WP/JANS-Datei):

```
Soll-Ertrag Total  = Soll-Ertrag Wohnen + Ertrag Parkplaetze + Soll-Ertrag Gewerbe
Nettoertrag        = Soll-Ertrag − Betriebskosten & Unterhalt
Ertragswert        = Nettoertrag / Diskontierung
Residualwert v.Abz = Ertragswert − (Erstellungskosten + Risiko/Gewinn)
Residualwert n.Abz = Residualwert v.Abz − Abbruch − Zeitwert-Abzinsung − Mehrwertabgabe
Wert n.Fertigstlg. = (Erstellungskosten + Risiko) + Residualwert v.Abz.
Bruttorendite      = Soll-Ertrag / Wert n.Fertigstellung
Nettorendite       = Nettoertrag / Wert n.Fertigstellung
```

**Hinterlegte Default-Parameter (WP = JANS, editierbare Zellen):**
- Diskontierung **2.5 %** (Empfehlungstext in der Zelle: «2.2-2.9 % je nach Lage; 2.2 % ZH/GE,
  2.3-2.5 % andere Stadtzentren, 2.7 % Durchschnittsgem., 3.0 % schlechte Gem.; Gewerbe +0.6
  bis +1.5 Pp»).
- Risiko-/Gewinnanteil **7 %** der Erstellungskosten (Zellhinweis «5-8 % Wohnen; 10-12 % Gewerbe»).
- Betriebskosten (Verwaltung/Versicherung/Versorgung) **5 %** des Soll-Ertrags (4.5-6.0 %);
  Uebriges 0.5 %; Liegenschaftssteuer 0 % (0-6 %); struktureller Leerstand **1 %** (1.0-3.5 %);
  Instandhaltung **13 CHF/m2 HNF** (13-16); Instandsetzung **21 CHF/m2 HNF** (17-25).
- Zeitwert-Abzinsung = Residualwert − Residualwert/(1.02)^N mit **2 % Zins, N = 3 Jahre** bis
  Fertigstellung. Abbruch-Benchmark 20-40 CHF/m3; Mehrwertabgabe 20-40 %.

**Wohnungsmix-Defaults (Tool-Zellen, leicht abweichend von den Kursfolien):** HNF je Whg
1/2/3/4/5 Zi = 35/62/88/108/130 m2; HNF/GF-Effizienz 0.73/0.75/0.77/0.79/0.80 (Ziel-Effizienz
**0.73-0.78**); Erstellungskosten CHF/m2 HNF (inkl. PP+MwSt) **6'000/5'700/5'500/5'200/5'100**;
Nettomiete/Mt 1'100/1'450/1'900/2'150/2'450; Einstellplatz 130/Mt, Aussenparkplatz 80/Mt.

**Gewerbe-Mietansatz (belegte Faustregel):** Die Nettomiete Gewerbe wird als **5.5 % der
Erstellungskosten je Nutzung** gerechnet (Zellformel `Nettomiete = Baukosten/m2 × 0.055`).
Erstellungskosten je Gewerbenutzung CHF/m2 HNF: Buero 3'700 · Industrie/Gewerbe 3'200 · Lager
1'800 · Verkauf 4'500 · Gastronomie 5'500; HNF/GF-Effizienz Gewerbe 0.80-0.90. Damit ist die
Gewerbe-Miete im Tool **kostengekoppelt** (5.5 % Bruttorendite-Ansatz auf die Investition).

### B. «Pre-Check Tool» (zweiblaettrig, mit HNF-Herleitung — hier sitzt die JANS-Kalibrierung)

Zwei Blaetter: das **Cover** (Resultat CHF/m2 GSF + m2 HNF + Sensitivitaetstabelle) und die
Engine **«AZ-HNF Tool»**, die die Hauptnutzflaeche **ohne Grundrisse allein aus einer
Planungsziffer** herleitet — der eigentliche Differenzierer gegenueber dem Einblatt-Tool.

**HNF-Herleitung (AZ-HNF-Tool, Kern):** Eingabe **einer** Ziffer (GFZ, AZ, UeZ, BMZ) *oder* der
Gebaeudegrundflaeche GGF + Umfang → Geschossflaeche GF pro Vollgeschoss. Davon werden abgezogen:
```
HNF pro Vollgeschoss = GF − Verkehrsflaeche(VF) − Konstruktionsflaeche(KF)
                          − Schachtflaechen(FF) − Nebennutzflaeche(NNF, 1 % pauschal)
```
- VF = Treppenhaus + Aufzug (1 TH je 500 m2 GGF; 2 Aufzuege ab 10 Geschossen), KF = Aussenwand
  (Wandstaerken 0.42 Aussen / 0.25 Trennwand / 0.12 Zimmer) + Innenwaende.
- Flaecheneffizienz-Ampel (Zelle): **KF/GF < 0.18 effizient · 0.23 normal · > 0.30 klein/
  ineffizient**. Kompaktheits-Faktor 1-5 (schmal/klein → kompakt/gross) skaliert die Wandanteile.
- **Skalenfaktor Erstellungskosten** (groessere Einheiten guenstiger je m2): 200 m2 → 1.11 …
  2'000 m2 → 1.04. **Kostenniveau-Skala**: guenstig 0.9 · durchschnittlich 1.0 ·
  ueberdurchschnittlich 1.1 · gehoben 1.35 · luxurioes 2.1; **Hochhausfaktor ×1.1** wenn
  GF/Geschoss > 9.9. Faktor BKP 2 → BKP 1-9 = **1.13**.

**Residualwert-Block im Pre-Check** (gleiche Kette wie Einblatt-Tool: Ertragswert =
Nettoertrag/Diskont; Landwert = Ertragswert − Baukosten − Zeitwert-Abzinsung), aber mit eigenen
Parametern in den Engine-Zellen: struktureller Leerstand 1 %, Betriebskosten 5 %, Instandhaltung
13 CHF/m2 HNF, **Instandsetzung 24 CHF/m2 HNF** (Einblatt-Tool: 21), Anfangsleerstand 1. Jahr
**10 %**, Jahre bis Fertigstellung 3, Zeitwert-Abzinsung 2 %.

### JANS-Kalibrierung vs. WP — die einzigen zwei geaenderten Zellen

Der Vergleich der WP- und JANS-Pre-Check-Dateien zeigt **exakt zwei** rekalibrierte Zellen; alle
uebrigen Parameter sind identisch:

| Parameter | WP-Default | JANS-Default (Pre-Check) | JANS reale Projektpraxis (MA Thalwil, Run 5) |
|---|---|---|---|
| **Risiko-/Gewinnanteil** | 7 % | **12 %** | 8 % |
| **Diskontierung** | 2.4 % | **2.45 %** | 2.70 % |

Lesart (ehrlich, drei Datenpunkte): Das **Einblatt-Tool** laesst JANS auf WP-Defaults (7 % /
2.5 %). Im **Pre-Check-Tool** ist ein **12 %-Risiko-/2.45 %-Diskont** hinterlegt — ein
konservativerer Schnellcheck-Ansatz (hoehere Marge druckt den zahlbaren Landwert). In den
**reifen realen Faellen** (LB/MA) rechnet JANS 8 % Risiko / 2.70 % Diskont ([[ertragswert-dcf]],
JANS-Bewertungskonvention). Der 12 %-Wert im Pre-Check ist als **hinterlegter Tool-Default**
zu lesen (worst-case-Voreinstellung), nicht als die gelebte JANS-Konvention — die realen Saetze
sind die belastbaren.

### Sensitivitaets-Formel (beide Tools — validiert den CS-Break-Even-Generator T18)

Die automatische Sensitivitaetstabelle rechnet den Residualwert als Funktion von Diskont-
Verschiebung (Bps) und Werttreiber-Delta:
```
RW(δ, Δbps) = ROUND( (1+δ) · Nettoertrag / (Diskont + Δbps/10000) − (Baukosten+Risiko) , −4 )
```
Zeilen variieren Nettoertrag ±10/15 %, struktureller Leerstand, Erstellungskosten ±10/20 %;
Spalten die Diskontierung in Bps. Das ist **exakt** das in [[ertragswert-dcf]]/CS-Methodik
formalisierte Break-Even-Schema (T18) — die Excel-Zellen bestaetigen die Herleitung aus der
Quelle: der Wert reagiert linear im Zaehler (Ertrag/Kosten) und hyperbolisch im Nenner (Diskont),
daher die bekannte Merkzahl −20 Bps → +16 % Marktwert.

## DXMA-Marktwertschaetzung auf einem A4-Blatt (DXMA-Folien S. 34/35)

N. Lehmann/DXMA verdichtet die ganze Residualwert-/Landwertrechnung auf **ein A4-Blatt** mit
fuenf Bloecken — die kompakteste belegte Operationalisierung des Rechenschemas. Annahmen
stehen in editierbaren «grauen Feldern». Belegtes Rechenbeispiel (Neubau, Wohnzone 3):

**1. Flaechengeruest Neubau:** Grundstueck 900 m2 × AZ 90 % = 810 aGF; 3 Vollgeschosse
+ 0.6 DG → **Geschossflaeche 1'050 m2**; HNF-Effizienz 77 % → **HNF 808 m2**; 4 Parkplaetze.

**2. Ertragspotenzial** (zwei Verwertungswege parallel):
- *Miete:* ME Wohnen 400 CHF/m2/J → 323'000 p.a.; Parking 140 CHF/EP/Mt. → 7'000;
  kapitalisiert mit **2.50 %** → **Ertragswert Miete 13'200'000**.
- *STWE-Verkauf:* Kaufpreis Wohnen 16'500 CHF/m2 → 13'330'000; Parking 25'000/PP → 100'000
  → **Ertragswert STWE 13'430'000** (Mietzinsen/Preise via GeoInfo-Quantile Q70/Q90, 500 m).

**3. Investitionskosten:**
- BKP 2: 4'000 CHF/m2 → 3'230'000; **BKP 1-5 = 80 %** Aufschlag → 4'040'000
  (entspricht ~**1'000 CHF/m3** inkl. Untergeschoss).
- Risiko 10 % → 400'000; **PE-Kosten 20 %** (Makler, Bauherrentreuhand, Vermarktung) →
  800'000; Finanzierung 5 % → 200'000 (Landkauf 3.6 Mio @ 1 % / 4 J. = 144'000; Baukosten
  5.24 Mio @ 1 % / 2 J. = 52'000). **Total Investition 5'440'000**.

**4. Marktwert/Landwert (Residuum):** Ertragswert − Investitionskosten →
**Landwert STWE 7'990'000**, **Landwert Mietobjekt 8'030'000** (mit −5 % Abschlag Baukosten).

**5. Eigenkapitalrendite:** Kaufpreis 5'700'000; Fremdkapital 60 % = 3'600'000; Eigenkapital
inkl. Working Capital 40 % = 2'400'000 (WC 300'000). Entwicklungsgewinn (Landwert − Kaufpreis)
≈ **EK-Rendite Miete 99 %** (2'380'000 = 25 %/Jahr bzw. 595'000 p.a.), **STWE 98 %**
(2'340'000 = 24 %/Jahr). Annahmen: Planung 2 J. + Bauzeit 2 J. (total 4 J.), 2 × CHF 24'000
Zwischenmietertrag; **Grundstueckgewinnsteuer nicht beruecksichtigt**.

Lesart: Das Blatt rechnet vom Endwert (Block 2) rueckwaerts auf den zahlbaren Landwert
(Block 4) und prueft ueber die EK-Rendite (Block 5), ob der geforderte Kaufpreis Marge laesst.
Es ist die schlanke, praesentierbare Schwester des Excel-Tools — ideal fuer den
Erstcheck/Off-Market-Deal. Einordnung in die sechs Faktoren: [[erfolgsfaktoren-wettbewerb]].

## Lehrstueck: hoeherer Ertrag ≠ hoeherer Landwert (S. 153-155)

Varianten-Vergleich auf identischem Grundstueck (GF je 8'760 m2):

| Variante | Einheiten | HNF Wohnen | Ertrag p.a. | Bruttorendite | Erstellung (inkl. R/G) | Landwert |
|---|---|---|---|---|---|---|
| «Office-Homes» | 69 | 5'760 m2 | 1.58 Mio (222/m2) | ~4.0 % | 30.5 Mio (4'770/m2 HNF) | **~9.3 Mio** (880/m2 GSF) |
| «Perlenhaeuser» | 57 | 6'620 m2 | 1.61 Mio (220/m2) | ~4.1 % | 29.9 Mio (4'520/m2 HNF) | **~9.4 Mio** (880/m2 GSF) |
| «Best-Ager-Community» | 76 | 6'340 m2 | 1.71 Mio (246/m2) | ~4.4 % | 33.2 Mio (5'230/m2 HNF) | **~5.8 Mio** (550/m2 GSF) |

Die ertragsstaerkste Variante hat den **tiefsten** Landwert, weil die Erstellungskosten
ueberproportional steigen — Flaecheneffizienz und Kostendisziplin schlagen Mietertrag.
(Nutzungskonzept-Herleitung dieser Varianten: [[nutzungskonzepte]].)

## Anwendung im JANS-Workflow

- **Tool:** `Immo-02-P23D-Residualwert_Projektbewertung.xlsx` (Wuest-Vorlage, JANS-Variante)
  und das `Pre-Check_Tool` fuer den Schnellcheck. **Formel-Logik der Excel-Tools ist mit
  Run 15 (2026-07-08) auf Zellebene reverse-engineered** — siehe Sektion «Excel-Tool
  Formel-Logik (D4)» oben (Rechenkette, Default-Parameter, JANS-Kalibrierung).
- **Szenarien:** Projekte werden in `hoch/` und `tief/` gerechnet (Best-/Worst-Case) —
  siehe Ordnerstruktur der RW-Projekte. Das ist die Sensitivitaet (CS).
- **Bezug Machbarkeit:** Das Bauvolumen (aGF/m3) kommt aus dem Skill `machbarkeit`; die
  Residualwert-/Wirtschaftlichkeitsrechnung dort (`wirtschaftlichkeit-rechner`) nutzt
  dieselbe Methodik. Diese KB ist die geteilte Faktenbasis.

## Kritische Stellgroessen (Sensitivitaet)

Der Landwert reagiert hebelartig auf:
1. **Erzielbarer Mietzins / Verkaufspreis** (Endwert) — groesster Hebel.
2. **Diskont-/Kapitalisierungssatz** (bei Renditeobjekt) — siehe [[ertragswert-dcf]].
3. **Erstellungskosten** (BKP) — Skill `kostenschaetzung`.
4. **Geforderte Marge** — WP-Richtwerte belegt: Wohnen 5-8 %, Gewerbe 10-12 % der
   Erstellungskosten, je Projektphase 2-25 % (Tabelle oben, Wuest-Kurs S. 39/40).
   JANS-eigene Praxisbandbreite weiterhin zu dokumentieren → `wiki/wissensluecken.md` (D5).

Weil der Landwert ein **Residuum** ist, wirken kleine Aenderungen der Inputs gross auf das
Resultat — deshalb immer als Bandbreite (hoch/tief), nie als Punktwert ausweisen.

## Offen / zu vertiefen

- JANS-eigene Margen-/Finanzierungspraxis (Zins/Laufzeit, Vermarktungs-%) — WP-Richtwerte
  sind jetzt belegt, die buerospezifische Kalibrierung fehlt (D5).
- ✓ 2026-07-08 (Run 15): **Reverse-Engineering der Excel-Tool-Zellformeln abgeschlossen (D4)** —
  Rechenkette, Default-Parameter beider Tool-Familien, Gewerbe-5.5-%-Regel, HNF-Herleitung im
  Pre-Check und die JANS-Kalibrierung (Pre-Check 12 %/2.45 %; Einblatt-Tool = WP unveraendert).
  Siehe Sektion «Excel-Tool Formel-Logik (D4)». Offen bleibt nur die buerospezifische Margen-/
  Finanzierungspraxis (D5, Bring-Schuld Raphael).
- ✓ 2026-06-09: Wuest-Kurs Modul 1 (S. 13-72) vollstaendig eingearbeitet (Lauf 1 des
  Trainings; Schema, Risiko-/Gewinnrichtwerte, Abzuege, Tool-Defaults, Sensitivitaet).
