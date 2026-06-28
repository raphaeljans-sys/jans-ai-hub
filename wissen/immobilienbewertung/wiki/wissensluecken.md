# Wissensluecken — was Raphael ergaenzen/aktualisieren muss + was das Training schliesst

Zwei Arten: **(D) Daten/Material**, das Raphael bereitstellen oder aktualisieren muss, und
**(T) Training**, das Claude im Lern-Loop (`../training/PROGRAMM.md`) selbst schliessen kann.
Neueste/wichtigste zuoberst. Erledigtes nach unten mit ✓ + Datum.

## A. Daten & Material, die DU (Raphael) bereitstellen/aktualisieren musst

| # | Luecke | Art | Prioritaet | Was konkret |
|---|---|---|---|---|
| D1 | **UBS Fact Sheets veraltet**  (zudem Langnau am Albis ganz fehlend) | D | hoch | Waedenswil (2022), Einsiedeln/Regensdorf/Wald (12.2023) neu bestellen; relevante Kerngemeinden ergaenzen (deine aktiven Maerkte) |
| D2 | **Bodenpreise nur Screenshots** | D | hoch | Strukturierte Bodenpreis-Quelle: Zugang Handaenderungs-/Bodenpreisstatistik (Kanton ZH/SZ), oder Wuest-/IAZI-Bodenpreis-Abo. Heute nicht maschinenlesbar |
| D3 | **Diskontsatz-Herleitung** — Geruest steht, Wohnbau-Faustregel nun belegt | D | niedrig | T-Teil ✓ (Run 9). **Run 10:** Wohnbau-Faustregel belegt aus R.-Jans-Notiz 31.12.2023 (**2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung**). Offen nur noch: **Gewerbe-Feinabstufung je Mietersegment** + **Healthcare-Zuschlag aus realem CH-Fall** (T17). D3 von «mittel» auf «niedrig» zurueckgestuft |
| D4 | **Excel-Tool-Logik (Residualwert/Pre-Check)** | D/T | hoch | Freigabe, die `Immo-02-P23D-*.xlsx` zu oeffnen/auszulesen, damit die Formel-Logik (Diskontierung, Terminal Value, Margen) reverse-engineered und dokumentiert wird |
| D5 | **Margen-/Finanzierungsannahmen** | D | mittel | Uebliche Bautraegermarge (%), Finanzierungszins/Laufzeit, Vermarktungs-/Reserve-% deiner Praxis |
| D6 | **Ausnuetzungsziffer-Kennwerte fehlen** | D | mittel | `IMMO-06 WOHNEN Ausnuetzungsziffer` ist leer — typische AZ/GFZ je Zone/Gemeinde sammeln (oder via Skill baurecht ziehen) |
| D7 | **Kennwerte Buero/Gewerbe duenn** | D | niedrig | nur ZH-Bueromarkt; weitere Nutzungen/Regionen bei Bedarf |
| D8 | **`_Kennwerte Jans.docx` / Healthcare-DOCX** | D/T | mittel | Freigabe zum Auslesen der DOCX-Kennwerte, damit sie als belegte Tabellen ins Wiki kommen |
| D9 | **Szenarien-Definitionen** | D | niedrig | exakte Kosten-Abstufung der Stufen lowbudget/standard/gehoben/exklusiv |

## B. Training-Aufgaben (Claude schliesst sie im Lern-Loop)

| # | Aufgabe | Quelle | Ziel-Artikel |
|---|---|---|---|
| T17 | **Healthcare-Bewertungsfall**: im Bewertungsordner existiert keiner (alle Wohnen/MFH/STWE). Brücke zu Skill `healthcare-wirtschaftlichkeit` (2410 WALD/Nova) bauen — ein reales Pflegeheim/Klinik-Bewertungs-Deliverable als Referenz erfassen, sobald vorhanden (Bring-Schuld Raphael) | Skill healthcare-wirtschaftlichkeit / IMMO-06 Healthcare-Kennwerte | [[projektstruktur-deliverables]], [[ertragswert-dcf]] |

## Erledigt

- ✓ 2026-06-28 **E8 / D3-Wohnbau-Faustregel** (Run 10) **drei ungelesene Quellen ingestiert**
  (nicht freigabegebunden): R.-Jans-Notiz `231231_Residualwert und Diskontierung.docx` (31.12.2023)
  → **Diskontsatz-Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (schliesst die
  Wohnbau-Faustregel von D3), **Betriebskosten-Pauschale 2.5 %=5x0.5 %**, belegte **Rechenkaskade**
  Residualwert←Ertragswert←Nettoertrag←Mietertrag + **Abzinsungsformel** W0=Wn/(1+i)^N →
  [[ertragswert-dcf]]. `Disskontierung.docx` → **Healthcare-Diskontsatz-Anker** (Pflege 4-8 %,
  JANS-Arbeitsnotiz) → Healthcare-Zeile *speculative*→*emerging*. **Kanonische SIA-416:2003-Norm-PDF**
  → [[flaechendefinitionen-sia]] vollstaendig normverankert (Hierarchie/Volumen/Miet-STWE-Flaechen/
  Abgrenzung aGF-BGF-EBF). Kursnotizen IMG_7064-67: Anfangsrendite=Mietertrag/Kaufpreis, 30 % Land /
  8 % Risikomarge, WP-Pre-Check-Tool-Layout (D4-Teilbeleg, ohne Zahlen). D3 → «niedrig».

- ✓ 2026-06-26 **D3 (T-Teil)** (Run 9) **JANS-Diskontsatz-Tabelle konsolidiert**: alle belegten
  Anker (WP S. 52/55, Risikozuschlagsmodell S. 54, JANS-Konvention 2.50/2.70 %) zu **einer**
  additiven Bottom-up-Herleitung zusammengefuehrt — risikofreier Basiszins **10-j Eidgenoss
  ~0.35 % (Juni 2026, Web)** + Illiquiditaets-/Lage-/Objektzuschlag, gegen den WP-top-down-Satz
  plausibilisiert. Konsolidierte Tabelle je Nutzung/Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %,
  Healthcare ~3.0-4.0 % *Annahme*) + **Real-vs-nominal-Bruecke (Fisher**, Langfrist-Teuerung
  ~1.0 % → nominal ~3.1-4.3 % Wohnen). Belegte Zeilen abschliessend; die JANS-Faustregeln bleiben
  als *Annahme* markierte Bring-Schuld → [[ertragswert-dcf]]. D3 damit von «D/T hoch» auf «D
  mittel» zurueckgestuft.

- ✓ 2026-06-22 **T18** (Run 8) **CS-Sensitivitaets-Generator** formalisiert: die Zwei-Modell-Logik
  als ein Rechen-Schema **Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]** mit geschlossener Break-Even-Formel
  **δ\* = (K0−E0)/(E0·α−K0·β)**; uebertragen auf vier Werttreiber (Ausnuetzung/Mietzins α1β0 →
  δ\*=−M0; Baukosten α0β1 → γ\*=+M0/(1−M0); Leerstand). Aus den Niederhasli-Ist-Zahlen validiert
  (BE_A = −8.1 % = −M0 bestaetigt; **BE_B praezisiert auf −11.6 %** statt frueher per Auge ~−13 %;
  effektive Kosten-Elastizitaet **β ≈ 0.33**, nicht 0.30). Tornado-Sensitivitaet dM/dδ=(1−M0)(α−β),
  Modellwahl-Regel A/B = RW-`tief`/`hoch` → [[projektstruktur-deliverables]].

- ✓ 2026-06-18 **T15** (Run 6) Niederhasli **CS Controlling & Sensitivitaet** vollstaendig
  ausgewertet → **CS-Deliverable-Methodik** dokumentiert: Controlling-Factsheet (Felderschema,
  Plausibilitaets-Check einer Fremdstudie) + Sensitivitaetsanalyse (Werttreiber Ausnuetzung ×
  Δ 0/−10/−20 % × Kostenmodell A fix / B 70/30 → Marge + Break-Even) + Fazit/Empfehlung →
  [[projektstruktur-deliverables]].
- ✓ 2026-06-18 **T16** (Run 6, teilweise) LB Langnau Giebelweg 12 → **Bestand-halten-vs-Abbruch-
  Entscheidlogik** (Vergleichswert-Bestand ↔ Residual-Landwert; BMZ-Deckelung kippt auf Halten;
  Datenquelle Popety.io) → [[vergleichswert-hedonisch]] + [[projektstruktur-deliverables]]; LB
  Wangen Bahnhofstr. 27 → **Ertragswert-Band (3 Kapitalisierungssaetze) + Kaufpreispruefung
  (impl. Bruttorendite vs. Schwelle) + Ausbau-Rendite-Impact** → [[ertragswert-dcf]]. Healthcare-
  Teil offen (kein Fall im Bewertungsordner) → neu T17.


- ✓ 2026-06-16 **T9b** Inhalts-/Kennwert-Auswertung realer LB/MA-Faelle: Thalwil 9568
  (LB + MA), Ebmatingen 3932 (LB), Wangen 2622 quantitativ ausgewertet → **Kennwert-Benchmark-
  Tabelle** (HNF-Faktor, ME/Kaufpreis-Quantil, Erstellungskosten/HNF/m3, Residualer Landwert,
  ROE) + **MA-Wertanker-Synthese** (4 Bodenwert-Anker → Marktwert) in
  [[projektstruktur-deliverables]] (Run 5).
- ✓ 2026-06-16 **T7b** Zu-/Abschlagslogik Median → Objekt als 6-Schritt-Checkliste + JANS-
  Quantil-Praxisanker (Premium Q90 / Schnitt Q50-60, Bauland nach Lageklasse) →
  [[vergleichswert-hedonisch]] (Run 5).
- ✓ 2026-06-16 **T10 (teilweise)** Marktpuls Mieten/SREBI 06.2026: Angebotsmieten 2026 +0.7 %
  (nach +6 % 2024), Bestandesmieten −0.8 %, UBS SREBI Q4-2025 0.48 «moderat», EFH +4.1 % YoY,
  BFS Baupreisindex 116.2 (Okt-2025) → [[investorenmarkt-makro]], [[realwert-sachwert]] (Run 5).
- ✓ 2026-06-16 **D4 (teilweise)** JANS-Residualwert-Tool-Struktur aus MA Thalwil S. 9 reverse-
  engineered (Wohnungsmix × HNF/GF-Effizienz, 8 % Risiko, 2.70 % Diskontierung, Abzuege,
  Brutto-/Nettorendite-Kontrolle) + **JANS-Bewertungskonvention** (2.50 % Kapitalisierung,
  −5 % Baukostenabschlag, 4.5 % Renditeschwelle, ROE-Ampel) → [[ertragswert-dcf]] (Run 5).
  Offen bleibt das Auslesen der `.xlsx`-Formeln selbst (Freigabe).
- ✓ 2026-06-14 **T7** (Hedonik-Modellfamilie Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  Regression/~70 Kriterien/>20'000 Handänderungen, Einsatzgrenze nur EFH/EW) + **alle 10 UBS-FS
  kompiliert** (neu Thalwil/Muri/Regensdorf/Luzern) → [[vergleichswert-hedonisch]],
  [[marktdaten-gemeinden/README]] (Run 4).
- ✓ 2026-06-14 **T8** JANS-Flächenfaktoren Wohnen (HNF/Baumasse 0.20, GF/Baumasse 0.33,
  HNF/GF 0.60 ganzes Gebäude / 0.75 Regelgeschoss + Wohnungsmix-Benchmark) belegt aus
  Flächenkonzeption Wohnen (20.10.2024) → [[flaechendefinitionen-sia]] (Run 4).
- ✓ 2026-06-14 **T9** Reale JANS-Bewertungsfälle als Referenz-Benchmark-Register erfasst
  (Thalwil 9568 LB+RW+MA, Ebmatingen 3932 LB+RW tief/hoch, Langnau, Wangen, Niederhasli CS) →
  [[projektstruktur-deliverables]] (Run 4).
- ✓ 2026-06-14 **T10 (teilweise)** Referenzzinssatz 1.25 % / SNB-Leitzins 0 % (Stand 06.2026)
  → [[investorenmarkt-makro]]; Mietpuls 2026 bleibt offen (Run 4).
- ✓ 2026-06-14 **T14** UBS SREBI Bubble Index Q2-2024 (0.74 «moderat», 4 Perspektiven,
  Methodik, regionale Ungleichgewichte) → [[investorenmarkt-makro]] (Run 4).

- ✓ 2026-06-12 **T13** Mietwert-Korrekturfaktoren (Tab. 14 Punktesystem + Bauweise/Alter/
  Heizung, Tab. 15 Kriterienraster ±9 %) + Gastgewerbe-Umsatzmiete (Tab. 25-28) eingearbeitet
  → [[ertragswert-dcf]]; Nutzflächen/Raumeinheiten (Tab. 12/13) → [[flaechendefinitionen-sia]].
  Damit Schätzungsanleitung Kap. 5 **vollständig** (Run 3).
- ✓ 2026-06-12 **T7 (teilweise)** Hedonik-Methodik: WP-Standortreport-Aufbau (Langenthal) +
  UBS-FS-Glossar-Methodik belegt; 4 weitere Gemeinden kompiliert (Maur/Wald/Wädenswil/
  Einsiedeln) → [[vergleichswert-hedonisch]], [[marktdaten-gemeinden/README]]. Offen:
  Hedonik-Modellfamilie, restliche UBS-FS (Thalwil/Regensdorf/Luzern/Muri).
- ✓ 2026-06-10 **T4** DXMA-Erfolgsfaktoren (komplettes Modul 4, 37 S.) eingearbeitet:
  6 Faktoren, Aufwertungsgewinn + 10 Referenzfaelle, AZ-Optimierungsformel, A4-Bewertungsblatt
  → [[erfolgsfaktoren-wettbewerb]], [[nutzungskonzepte]], [[residualwertmethode]] (Run 2).
- ✓ 2026-06-10 **T5** LK→Landwertanteil-Tabelle (Tab. 8) + Lageklassenschluessel Wohnen/
  Gewerbe (Tab. 6/7) belegt; Artikel speculative → established → [[lageklasse-landwertanteil]].
- ✓ 2026-06-10 **T6 (vollstaendig)** CHF/m3-Neuwert-Richtwerte (Tab. 2) + BKP-Anteile (Tab. 3)
  ergaenzt → [[realwert-sachwert]] (⚠ m3-Werte Stand 2003, aufzuindexieren).
- ✓ 2026-06-10 **T11** Realwert-/Ertragswert-Gewichtung je Objektart (Tab. 22, Mittelwert-
  methode) belegt → [[bewertungsverfahren-ueberblick]]; Kapitalisierungssatz-Aufbau
  (B/U/V/A/R, Tab. 21/23) → [[ertragswert-dcf]].
- ✓ 2026-06-10 **T12** Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter
  Tab. 10, Wertminderung Tab. 11) belegt → [[realwert-sachwert]].
- ✓ 2026-06-09 **T1** Wuest-Kurs Modul 1 (Projektbewertung/Landwert, S. 13-72) vollstaendig
  eingearbeitet → [[residualwertmethode]], [[ertragswert-dcf]] (Training-Run 1).
- ✓ 2026-06-09 **T2** Wuest-Kurs Modul 2 (Nutzungskonzeption, S. 73-161) vollstaendig
  eingearbeitet → [[nutzungskonzepte]] (Training-Run 1).
- ✓ 2026-06-09 **T3** Wuest-Kurs Modul 3 (Investorenmarkt/Makro, S. 162-229) vollstaendig
  eingearbeitet → [[investorenmarkt-makro]] (Training-Run 1).
- ✓ 2026-06-09 **T6 (teilweise)** Erstellungskosten-Benchmarks je Nutzung/Standard
  (BKP 1-5, CHF/m2 HNF, WP-Kurs S. 31-38) belegt → [[realwert-sachwert]]; offen bleiben
  CHF/m3-Werte und die Schaetzungsanleitungs-Tabellen.
- ✓ 2026-06-09 **D3 (Grundstein)** Diskontsatz-Anker belegt (WP-Empfehlung Sommer 2023
  2.2-3.0 % Wohnen, Gewerbe +0.6-1.5 Pp; Erfahrungswerte) → [[ertragswert-dcf]];
  JANS-Kalibrierung + Aktualisierung 2026 weiterhin offen.
