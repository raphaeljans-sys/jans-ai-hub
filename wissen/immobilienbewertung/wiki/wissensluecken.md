# Wissensluecken — was Raphael ergaenzen/aktualisieren muss + was das Training schliesst

Zwei Arten: **(D) Daten/Material**, das Raphael bereitstellen oder aktualisieren muss, und
**(T) Training**, das Claude im Lern-Loop (`../training/PROGRAMM.md`) selbst schliessen kann.
Neueste/wichtigste zuoberst. Erledigtes nach unten mit ✓ + Datum.

## A. Daten & Material, die DU (Raphael) bereitstellen/aktualisieren musst

| # | Luecke | Art | Prioritaet | Was konkret |
|---|---|---|---|---|
| D1 | **UBS Fact Sheets veraltet**  (zudem Langnau am Albis ganz fehlend) | D | hoch | Waedenswil (2022), Einsiedeln/Regensdorf/Wald (12.2023) neu bestellen; relevante Kerngemeinden ergaenzen (deine aktiven Maerkte) |
| D2 | **Bodenpreise nur Screenshots** | D | hoch | Strukturierte Bodenpreis-Quelle: Zugang Handaenderungs-/Bodenpreisstatistik (Kanton ZH/SZ), oder Wuest-/IAZI-Bodenpreis-Abo. Heute nicht maschinenlesbar |
| D3 | **Diskontsatz-Herleitung undokumentiert** | D/T | hoch | Deine Faustregeln/Bandbreiten je Nutzung+Lage+Risiko (real vs. nominal) — als Input fuer eine JANS-Diskontsatz-Tabelle |
| D4 | **Excel-Tool-Logik (Residualwert/Pre-Check)** | D/T | hoch | Freigabe, die `Immo-02-P23D-*.xlsx` zu oeffnen/auszulesen, damit die Formel-Logik (Diskontierung, Terminal Value, Margen) reverse-engineered und dokumentiert wird |
| D5 | **Margen-/Finanzierungsannahmen** | D | mittel | Uebliche Bautraegermarge (%), Finanzierungszins/Laufzeit, Vermarktungs-/Reserve-% deiner Praxis |
| D6 | **Ausnuetzungsziffer-Kennwerte fehlen** | D | mittel | `IMMO-06 WOHNEN Ausnuetzungsziffer` ist leer — typische AZ/GFZ je Zone/Gemeinde sammeln (oder via Skill baurecht ziehen) |
| D7 | **Kennwerte Buero/Gewerbe duenn** | D | niedrig | nur ZH-Bueromarkt; weitere Nutzungen/Regionen bei Bedarf |
| D8 | **`_Kennwerte Jans.docx` / Healthcare-DOCX** | D/T | mittel | Freigabe zum Auslesen der DOCX-Kennwerte, damit sie als belegte Tabellen ins Wiki kommen |
| D9 | **Szenarien-Definitionen** | D | niedrig | exakte Kosten-Abstufung der Stufen lowbudget/standard/gehoben/exklusiv |

## B. Training-Aufgaben (Claude schliesst sie im Lern-Loop)

| # | Aufgabe | Quelle | Ziel-Artikel |
|---|---|---|---|
| T10 | Marktpuls **Mietzins/Angebotsmieten** 2026 + neuerer SREBI-Stand (Zins/Referenz 06.2026 erledigt) | Web + Wuest | [[investorenmarkt-makro]] |
| T9b | Inhalts-/Kennwert-Auswertung einzelner LB-PDFs (effektive m²/Marktwerte als Benchmark) | IMMO-01 LB/RW/MA | [[projektstruktur-deliverables]] |
| T7b | Zu-/Abschlagslogik Median→Objekt als Checkliste formalisieren | — | [[vergleichswert-hedonisch]] |

## Erledigt

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
