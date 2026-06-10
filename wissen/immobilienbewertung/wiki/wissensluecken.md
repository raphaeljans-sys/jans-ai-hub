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
| T4 | DXMA-Erfolgsfaktoren (= komplettes Kursmodul 4; im Hauptsatz nur Titelblatt) | DXMA-PDF | [[erfolgsfaktoren-wettbewerb]] |
| T5 | LK→Landwertanteil-Tabelle sauber extrahieren | `schaetzungsanleitung_kap5.pdf` | [[lageklasse-landwertanteil]] |
| T6 | Neuwert-Kennwerte je Nutzung/Standard belegen | Schaetzungsanleitung, IMMO-06 | [[realwert-sachwert]] |
| T7 | Hedonik-Methodik + UBS-FS-Quantile je Gemeinde extrahieren | IMMO-02, Standortreport | [[vergleichswert-hedonisch]] |
| T8 | Flaechenfaktoren Wohnen (aGF/BGF/HNF) belegen | Flaechenkonzeption Wohnen | [[flaechendefinitionen-sia]] |
| T9 | Reale JANS-Projektfaelle als Referenz-Benchmarks erfassen | IMMO-01 LB/RW/MA | [[projektstruktur-deliverables]] |
| T10 | Marktpuls Zins/Mietzins/Referenzzinssatz (laufend, mit Stand) | Web + Wuest | [[investorenmarkt-makro]] |
| T11 | Gewichtungs-Regeln Marktwert je Objekttyp schaerfen | Praxis + Literatur | [[bewertungsverfahren-ueberblick]] |
| T12 | Alterswertminderungs-Methode + Restnutzungsdauern | Literatur/SIA | [[realwert-sachwert]] |

## Erledigt

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
