# Ingest Cluster B — Wüest Partner (IMMO - 04 Marktpreise)

- **Datum Lauf:** 31.07.2026
- **Quellordner:** `/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 04 Marktpreise/wuest partner/`
- **Auftrag:** Vollständige Destillation der Wüest-Partner-Bestände in `IMMO - 04`, mit Fundstelle und Preisstand je Zahl.
- **Status:** Quelle 1 erfasst, Quellen 2 bis 6 folgen.

Hinweis zur Seitenzählung Quelle 1: das PDF hat 156 physische Seiten (Teil 1/2 = PDF-Seiten
1 bis 103, Teil 2/2 «Ökologische Kennzahlen» von durable = PDF-Seiten 104 bis 156). Der
Bericht Teil 1/2 zählt selbst bis «103 / 103», PDF-Seite = Berichtsseite. Zitiert wird
nachfolgend die Berichtsseite («S. n»).

---

## 1 Holzbaukennzahlen für Investoren — Wohnbauten, Teil 1/2 Kostenkennzahlen

**Datei:** `Wuest Reports/Holzbaukennzahlen/120135_Abschlussbericht_Holzbaukennzahlen_gesamt-1-l5ij0h.pdf`
**Auftraggeber:** Lignum, Holzwirtschaft Schweiz + Bundesamt für Umwelt (BAFU), Aktionsplan Holz
**Bearbeitung:** Wüest Partner AG, Bleicherweg 5, 8001 Zürich. Projektleitung Dr. Julia Selberherr, Bearbeitung Magdalena Goller.
**Projektnummer:** 120135.0001 · **Bearbeitungszeitraum:** Januar bis Dezember 2023
**Berichtsdatum Deckblatt:** Zürich, 26. April 2024 · **Unterschriftsdatum im Bericht (S. 33):** Zürich, 19. Dezember 2023
**Umfang:** 103 Berichtsseiten Teil 1/2, danach Teil 2/2 (durable Planung und Beratung GmbH, 100%-Tochter von Wüest Partner, Berichtsdatum 24.04.2024, Bearbeitungszeitraum September bis Dezember 2023).

### 1.1 Preisstand und Indexierung (kritisch, S. 12)

- **Erstellungskosten inklusive Mehrwertsteuer.** Förderungen sind nicht berücksichtigt.
- **Indexstand: April 2023.** Alle Kosten wurden vom Datum der jeweiligen Baukostenabrechnung
  auf diesen Stand indexiert, Holzbauten und Referenzobjekte gleichermassen.
- Index: Baupreisindex des Bundesamtes für Statistik, für Wohnbauten in Holzbauweise
  beziehungsweise Wohnbauten in Massivbauweise, **nach Grossregion**.
- Die Kennwerte der Auswertung 2020 wurden zur Vergleichbarkeit ebenfalls auf April 2023
  indexiert (S. 18).
- **Folgerung für JANS:** Jeder Kennwert unten trägt Preisstand **April 2023**. Bei
  Verwendung 2026 ist eine Fortschreibung über den BFS-Baupreisindex zwingend, sonst ist der
  Wert rund drei Jahre alt.

### 1.2 Stichprobe (S. 10 bis 12)

| Datensatz | Anzahl | Auswahlkriterien | Kostenrahmen BKP 1-5 |
|---|---|---|---|
| Holzbau 2023 (Neubau) | 17 | Wohnbauten CH, teilweise untergeordnete Gewerbenutzung, mindestens 15 Wohnungen, Erstellung **nach 2019** | CHF 5.0 bis 150 Mio. |
| Massivbau 2023 (Referenz) | «knapp 50» | Wohnbauten, realisiert **nach der Jahrtausendwende** | CHF 5 bis 120 Mio. |
| Holzbau 2020 (Vorgängerstudie) | 8 | Wohnnutzung Deutschschweiz, ab 2000 realisiert | — |

Weitere Stichprobenmerkmale:
- Alle 17 Objekte sind streng genommen **Hybridbauten**: Fundation, meist Kern und, falls
  vorhanden, Untergeschoss in Massivbauweise; oberirdische Tragstruktur holzdominiert (S. 5, 11).
- Konstruktionsarten: 13 Rahmenbau, 4 Massivholzbau, 1 als «Hybrid, Massivbau» geführt (S. 11).
- Über 85 Prozent der Holzbau-Stichprobe sind **energetisch zertifizierte** Gebäude (S. 5, 20).
- Bei den Massivbau-Referenzobjekten ist die Zertifizierung nicht durchgehend dokumentiert;
  die Hauptauswertung unterscheidet deshalb nicht (S. 12). Eine Teilmenge «Massivbau
  zertifiziert» wird in Anhang A separat ausgewiesen.
- Aufteilung Holzbau in **unteres und oberes Preissegment**, hälftig: die 9 günstigsten
  Objekte bilden das untere Segment (S. 5, 18).
- Standortstreuung (S. 15): 2 Grossstädte, 3 Agglomeration Grossstadt, 3 kleine bis mittlere
  Zentren, 6 deren Agglomeration, 3 periphere Lage. Makrolagenrating mässig bis exzellent.

### 1.3 Bezugsgrössen und Bereinigungen (S. 10, 13) — vor jeder Verwendung lesen

- **Alle Hauptkennwerte verstehen sich exklusive Tiefgarage.** Grund: viele Holzbauprojekte
  verzichten bewusst auf eine Einstellhalle; ohne Bereinigung wäre der Vergleich verzerrt (S. 5).
- Bezugsgrössen:
  - `GV := GV,oi + GV,ui − GV,Tiefgarage`
  - `GF := GF,oi + GF,ui − GF,Tiefgarage`
  - `HNF` definitionsgemäss **nur oberirdisch**
  - BKP 214 wird bewusst auf `GV,oi` und `GF,oi` bezogen, nicht auf «reine Holzbauflächen» (S. 12)
- **Achtung, abweichende BKP-2-Definition (S. 37):** «Da die Planungskosten in den
  Fallbeispielen einheitlich der Position BKP 2 zugeordnet sind, stellt diese Position — die
  durchschnittlich über 90 Prozent der Gesamtkosten beinhaltet — den grössten Kostenteil dar.»
  Das BKP 2 dieser Studie enthält also die Planungskosten und ist **nicht** das BKP 2 nach
  CRB-Systematik. Für JANS heisst das: die BKP-2-Reihen dieser Studie sind nicht ohne
  Weiteres mit einem eigenen BKP-2-Ansatz vergleichbar.

**Einstellplatz-Kennwerte und Tiefgaragen-Annahmen (S. 10, 12):**

| Grösse | Wert | Quelle im Bericht |
|---|---|---|
| Baukosten Einstellplatz, BKP 2 | CHF 35'000 pro Stück | S. 10, Schätzung WP wenn UG nicht separat ausgewiesen |
| Baukosten Einstellplatz, BKP 1-5 | CHF 42'000 pro Stück | S. 10 |
| Höhe Tiefgarage zur Volumenabschätzung | 2.70 m | S. 10, Annahme WP |
| Stellplatzschlüssel | 1 Einstellplatz je 100 m2 GF,oi | S. 12, in Anlehnung an «Revidierte Parkierungsnorm», VSS Nr. 4, 2022 |
| Platzbedarf je Einstellplatz | 30 m2 GF | S. 12 |
| Abbruchkosten (Modellrechnung) | CHF 50 pro m3 GV | S. 27, Annahme WP |

### 1.4 HNF/GF-Effizienzfaktor — Korrektur des Hub-Werts

Fussnote 3 auf S. 11 (wortgleich wiederholt auf S. 24):

> Die Flächeneffizienz für Mehrfamilienhäuser liegt in der Regel bei **rund 0.75**, in der
> **Spanne 0.70 bis 0.80**; Werte über **0.79** werden nur sehr selten und mit grossem
> planerischen Aufwand erreicht.

Bezugsgrösse: **HNF / GF,oi**.

Verteilung der 17 Fallbeispiele (S. 11): 5 Objekte über 0.75, 6 Objekte 0.70 bis 0.75,
6 Objekte unter 0.70.

Der Bericht zeigt zudem die Wirkung (S. 17): die Objekte Nr. 10 und 12 haben die höchsten
Kosten je HNF ausschliesslich wegen ihrer Flächeneffizienz unter 0.70; Objekt Nr. 7 hat
wegen einer Effizienz über 0.75 tiefe HNF-Kosten trotz mittlerer GF-Kosten.

**Hub-Relevanz:** Der Hub führt bisher **0.70** als kanonischen HNF/GF-Faktor. Diese Quelle
belegt **0.75 als Regelwert** mit Spanne 0.70 bis 0.80 und harter Obergrenze bei rund 0.79.
0.70 ist damit nicht der Regelwert, sondern das **untere Ende** der Spanne. Empfehlung:
Artikel `flaechendefinitionen-sia` korrigieren auf 0.75 als Default, 0.70 als konservativer
Rand, über 0.79 als praktisch nicht erreichbar kennzeichnen.

### 1.5 Quantilreihen BKP 1-5 (Preisstand April 2023, exkl. TG)

Alle Werte in CHF. Quantilsdefinition S. 9: 50%-Quantil = Median.

**BKP 1-5 pro m2 HNF** (S. 18 und S. 36, identische Tabelle)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 3'100 | 3'894 | 4'492 | 5'002 | 6'900 |
| 2020 Massivbau | 3'410 | 4'080 | 4'827 | 5'884 | 8'278 |
| 2023 Holzbau (gesamt) | 4'749 | 5'094 | 5'466 | 6'070 | 6'587 |
| 2023 Holzbau oberes Preissegment | 5'561 | 6'021 | 6'506 | 6'566 | 6'653 |
| 2023 Holzbau unteres Preissegment | 4'687 | 4'800 | 4'980 | 5'144 | 5'499 |
| 2020 Holzbau | 5'122 | 5'447 | 5'875 | 6'135 | 6'982 |

**BKP 1-5 pro m3 GV** (S. 34)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 701 | 846 | 974 | 1'137 | 1'548 |
| 2020 Massivbau | 617 | 802 | 881 | 1'051 | 1'320 |
| 2023 Holzbau (gesamt) | 863 | 956 | 1'066 | 1'133 | 1'278 |
| 2023 Holzbau oberes Preissegment | 1'015 | 1'066 | 1'100 | 1'194 | 1'799 |
| 2023 Holzbau unteres Preissegment | 772 | 912 | 958 | 1'053 | 1'139 |
| 2020 Holzbau | 927 | 1'013 | 1'039 | 1'094 | 1'192 |

**BKP 1-5 pro m2 GF** (S. 36)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 1'994 | 2'666 | 3'043 | 3'354 | 4'413 |
| 2020 Massivbau | 1'978 | 2'386 | 2'967 | 3'479 | 4'687 |
| 2023 Holzbau (gesamt) | 2'922 | 3'026 | 3'308 | 3'522 | 3'752 |
| 2023 Holzbau oberes Preissegment | 3'127 | 3'389 | 3'529 | 3'650 | 4'340 |
| 2023 Holzbau unteres Preissegment | 2'940 | 2'970 | 3'037 | 3'144 | 3'391 |
| 2020 Holzbau | 2'942 | 3'144 | 3'224 | 3'472 | 3'739 |

### 1.6 Quantilreihen BKP 2 (Preisstand April 2023, exkl. TG)

**BKP 2 pro m2 HNF** (S. 19 und S. 40)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 2'848 | 3'649 | 4'023 | 4'811 | 6'355 |
| 2020 Massivbau | 2'922 | 3'512 | 4'131 | 5'092 | 7'019 |
| 2023 Holzbau (gesamt) | 4'324 | 4'682 | 5'032 | 5'480 | 6'187 |
| 2023 Holzbau oberes Preissegment | 5'262 | 5'459 | 5'691 | 6'133 | 6'240 |
| 2023 Holzbau unteres Preissegment | 4'155 | 4'432 | 4'573 | 4'790 | 5'063 |
| 2020 Holzbau | 4'293 | 4'587 | 5'266 | 5'407 | 6'069 |

**BKP 2 pro m3 GV** (S. 38)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 640 | 808 | 898 | 1'047 | 1'474 |
| 2020 Massivbau | 556 | 663 | 782 | 892 | 1'178 |
| 2023 Holzbau (gesamt) | 774 | 887 | 982 | 1'024 | 1'165 |
| 2023 Holzbau oberes Preissegment | 929 | 984 | 1'007 | 1'118 | 1'624 |
| 2023 Holzbau unteres Preissegment | 650 | 851 | 877 | 961 | 1'048 |
| 2020 Holzbau | 761 | 858 | 901 | 974 | 1'053 |

**BKP 2 pro m2 GF** (S. 39)

| Datensatz | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 Massivbau | 1'834 | 2'390 | 2'801 | 3'188 | 4'215 |
| 2020 Massivbau | 1'758 | 2'216 | 2'567 | 3'086 | 4'162 |
| 2023 Holzbau (gesamt) | 2'620 | 2'838 | 3'057 | 3'183 | 3'446 |
| 2023 Holzbau oberes Preissegment | 2'903 | 3'151 | 3'212 | 3'352 | 3'969 |
| 2023 Holzbau unteres Preissegment | 2'586 | 2'749 | 2'853 | 3'014 | 3'153 |
| 2020 Holzbau | 2'430 | 2'713 | 2'836 | 2'866 | 3'371 |

### 1.7 Sensitivität Tiefgarage und Photovoltaik (Anhang A, S. 35, 37, 38, 39, 40)

**BKP 1-5 pro m3 GV** (S. 35)

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 682 | 799 | 923 | 1'071 | 1'746 |
| Massivbau zertifiziert inkl. TG | 665 | 766 | 875 | 1'008 | 1'578 |
| Massivbau exkl. TG | 701 | 846 | 974 | 1'137 | 1'548 |
| Massivbau inkl. TG | 671 | 797 | 907 | 1'030 | 1'397 |
| Holzbau exkl. TG, exkl. PV | 857 | 946 | 1'048 | 1'118 | 1'264 |
| Holzbau exkl. TG, inkl. PV | 863 | 956 | 1'066 | 1'133 | 1'278 |
| Holzbau inkl. TG, inkl. PV | 808 | 892 | 984 | 1'049 | 1'160 |

**BKP 1-5 pro m2 GF** (S. 37)

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 2'114 | 2'382 | 2'694 | 3'158 | 4'838 |
| Massivbau zertifiziert inkl. TG | 2'026 | 2'253 | 2'519 | 2'868 | 4'365 |
| Massivbau exkl. TG | 1'994 | 2'666 | 3'043 | 3'354 | 4'413 |
| Massivbau inkl. TG | 1'899 | 2'435 | 2'765 | 2'998 | 3'893 |
| Holzbau exkl. TG, exkl. PV | 2'889 | 3'012 | 3'280 | 3'479 | 3'735 |
| Holzbau exkl. TG, inkl. PV | 2'922 | 3'026 | 3'308 | 3'522 | 3'752 |
| Holzbau inkl. TG, inkl. PV | 2'673 | 2'713 | 3'083 | 3'171 | 3'716 |

**BKP 1-5 pro m2 HNF** (S. 37) — hier kehrt sich die TG-Wirkung um

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 3'385 | 3'726 | 4'095 | 4'634 | 7'110 |
| Massivbau zertifiziert inkl. TG | 3'737 | 4'078 | 4'448 | 4'984 | 7'497 |
| Massivbau exkl. TG | 3'100 | 3'894 | 4'492 | 5'002 | 6'900 |
| Massivbau inkl. TG | 3'523 | 4'332 | 4'925 | 5'425 | 7'336 |
| Holzbau exkl. TG, exkl. PV | 4'720 | 5'009 | 5'397 | 5'965 | 6'548 |
| Holzbau exkl. TG, inkl. PV | 4'749 | 5'094 | 5'466 | 6'070 | 6'587 |
| Holzbau inkl. TG, inkl. PV | 4'979 | 5'593 | 5'739 | 6'070 | 6'758 |

**BKP 2 pro m3 GV** (S. 38)

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 682 | 799 | 923 | 1'071 | 1'746 |
| Massivbau zertifiziert inkl. TG | 608 | 720 | 818 | 852 | 1'524 |
| Massivbau exkl. TG | 640 | 808 | 898 | 1'047 | 1'474 |
| Massivbau inkl. TG | 613 | 752 | 829 | 937 | 1'282 |
| Holzbau exkl. TG, exkl. PV | 768 | 882 | 963 | 1'013 | 1'150 |
| Holzbau exkl. TG, inkl. PV | 774 | 887 | 982 | 1'024 | 1'165 |
| Holzbau inkl. TG, inkl. PV | 718 | 812 | 916 | 936 | 1'049 |

**BKP 2 pro m2 GF** (S. 39)

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 2'114 | 2'382 | 2'694 | 3'158 | 4'838 |
| Massivbau zertifiziert inkl. TG | 1'895 | 2'073 | 2'343 | 2'508 | 4'220 |
| Massivbau exkl. TG | 1'834 | 2'390 | 2'801 | 3'188 | 4'215 |
| Massivbau inkl. TG | 1'743 | 2'206 | 2'502 | 2'783 | 3'673 |
| Holzbau exkl. TG, exkl. PV | 2'568 | 2'829 | 3'027 | 3'153 | 3'419 |
| Holzbau exkl. TG, inkl. PV | 2'620 | 2'838 | 3'057 | 3'183 | 3'446 |
| Holzbau inkl. TG, inkl. PV | 2'362 | 2'547 | 2'875 | 3'001 | 3'220 |

**BKP 2 pro m2 HNF** (S. 40)

| Variante | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Massivbau zertifiziert exkl. TG | 3'385 | 3'726 | 4'095 | 4'634 | 7'110 |
| Massivbau zertifiziert inkl. TG | 3'320 | 3'860 | 4'066 | 4'623 | 7'251 |
| Massivbau exkl. TG | 2'848 | 3'649 | 4'023 | 4'811 | 6'355 |
| Massivbau inkl. TG | 3'200 | 4'001 | 4'373 | 5'162 | 6'711 |
| Holzbau exkl. TG, exkl. PV | 4'301 | 4'625 | 4'932 | 5'377 | 6'113 |
| Holzbau exkl. TG, inkl. PV | 4'324 | 4'682 | 5'032 | 5'480 | 6'187 |
| Holzbau inkl. TG, inkl. PV | 4'644 | 5'020 | 5'361 | 5'533 | 6'366 |

**Merksätze aus den Sensitivitäten:**
- Tiefgarage **senkt** die Kennwerte je GV und je GF (m3 TG ist günstiger als m3 Wohnraum,
  S. 34/37) und **erhöht** die Kennwerte je HNF, weil die HNF definitionsgemäss unverändert
  bleibt, die Kosten aber steigen (ausdrückliche Erläuterung S. 37).
- **PV-Zuschlag Holzbau:** CHF 6 bis 18 pro m3 GV (S. 34) beziehungsweise CHF 14 bis 43 pro
  m2 GF (S. 35). Die Differenz steigt tendenziell zu den höheren Quantilen.

### 1.8 BKP 214 Montagebau in Holz (S. 41, Preisstand April 2023)

Bezug: `GV,oi` beziehungsweise `GF,oi`, HNF ohnehin oberirdisch.

| Reihe | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2023 BKP 214 / HNF, oberes Preissegment | 928 | 1'261 | 1'357 | 1'751 | 1'904 |
| 2023 BKP 214 / HNF, unteres Preissegment | 744 | 959 | 1'081 | 1'106 | 1'276 |
| 2020 BKP 214 / HNF | 524 | 606 | 850 | 975 | 1'059 |
| 2023 BKP 214 / GF, oberes Preissegment | 501 | 731 | 913 | 996 | 1'140 |
| 2023 BKP 214 / GF, unteres Preissegment | 441 | 627 | 710 | 732 | 758 |
| 2020 BKP 214 / GF | 353 | 386 | 566 | 670 | 740 |
| 2023 BKP 214 / GV, oberes Preissegment | 169 | 235 | 242 | 290 | 602 |
| 2023 BKP 214 / GV, unteres Preissegment | 141 | 195 | 211 | 226 | 258 |
| 2020 BKP 214 / GV | 110 | 131 | 171 | 230 | 251 |

Einordnung (S. 42): BKP 214 ist gegenüber 2020 auf allen Bezugsgrössen **gestiegen**.
Gründe laut Bericht: kurzer Auswertungszeitraum 2023 (unter 4 Jahre gegenüber knapp 20 Jahren
2020) und Holzpreisspitze; in den Jahren 2020 bis 2022 wurden Preissteigerungen von **bis zu
290 Prozent** im Holzpreis verzeichnet (Fussnote, Quelle finanzen.net, Abfrage 25.08.2023).
Der Effekt schlägt jedoch nur abgeschwächt durch, weil die Werkverträge der Fallbeispiele
mutmasslich vor der Preisspitze unterzeichnet wurden. Zum Abfragezeitpunkt war der Holzpreis
wieder rückläufig, etwa auf dem Niveau von 2018.

Holzanteil: bei nahezu allen Objekten liegt der Volumenanteil Holz zwischen **2 und 12 Prozent**
des GV; die Fallbeispiele 2023 haben im Schnitt einen 2 Prozentpunkte höheren Holzanteil als
jene von 2020 (S. 17). Die Kosten BKP 2 je m3 GV bewegen sich zwischen **CHF 540 und 1'220**
(S. 17). Ein direkter Zusammenhang zwischen verbauter Holzmenge und BKP 2 ist nicht
nachweisbar.

### 1.9 Einzelwerte der 17 Fallbeispiele (S. 16, Preisstand April 2023)

Vollständige Tabelle, alle Werte in CHF. Leerfelder = BKP 214 nicht verfügbar.

| Nr. | BKP1-5/m3 GV | BKP1-5/m2 GF | BKP1-5/m2 HNF | BKP2/m3 GV | BKP2/m2 GF | BKP2/m2 HNF | BKP214/m3 GV | BKP214/m2 GF | BKP214/m2 HNF |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 888 | 3'125 | 4'758 | 839 | 2'950 | 4'492 | 202 | 710 | 1'081 |
| 2 | 1'394 | 5'610 | 6'460 | 1'218 | 4'899 | 5'641 | 242 | 973 | 1'120 |
| 3 | 1'132 | 3'662 | 6'551 | 940 | 3'040 | 5'439 | | | |
| 4 | 2'744 | 3'375 | 5'369 | 2'571 | 3'163 | 5'032 | 989 | 1'217 | 1'935 |
| 5 | 556 | 3'156 | 4'862 | 538 | 3'057 | 4'709 | | | |
| 6 | 1'105 | 3'308 | 5'631 | 1'042 | 3'121 | 5'312 | 168 | 503 | 856 |
| 7 | 947 | 3'037 | 4'494 | 890 | 2'853 | 4'222 | 228 | 731 | 1'081 |
| 8 | 1'047 | 3'316 | 5'643 | 995 | 3'150 | 5'361 | 241 | 762 | 1'296 |
| 9 | 1'143 | 3'722 | 4'980 | 1'008 | 3'283 | 4'392 | 226 | 736 | 985 |
| 10 | 1'066 | 3'516 | 6'616 | 1'019 | 3'363 | 6'327 | 277 | 913 | 1'718 |
| 11 | 1'137 | 2'958 | 5'158 | 1'068 | 2'778 | 4'844 | 304 | 791 | 1'379 |
| 12 | 1'067 | 3'542 | 6'739 | 982 | 3'260 | 6'203 | 101 | 336 | 639 |
| 13 | 942 | 2'688 | 5'972 | 905 | 2'583 | 5'740 | 214 | 610 | 1'357 |
| 14 | 826 | 2'867 | 4'735 | 678 | 2'353 | 3'885 | 101 | 349 | 577 |
| 15 | 958 | 2'983 | 5'466 | 877 | 2'730 | 5'001 | 211 | 659 | 1'206 |
| 16 | 975 | 2'962 | 5'123 | 871 | 2'644 | 4'573 | | | |
| 17 | 1'201 | 3'796 | 6'567 | 1'129 | 3'571 | 6'177 | 344 | 1'088 | 1'882 |

Erklärungen des Berichts zu Ausreissern (S. 16 f.), für JANS als Kostentreiber-Checkliste
verwertbar:
- Nr. 2 und Nr. 4: Pionierprojekte mit Smart Building und Gebäudeautomation, Zusatzinvestitionen.
- Nr. 4 zusätzlich: kompakter Baukörper mit Laubengangerschliessung, deshalb GV-Kosten hoch,
  GF-Kosten nur oberes Mittelfeld.
- Nr. 10 und 12: höchste Kosten je HNF **allein** wegen Flächeneffizienz unter 0.70.
- Nr. 5: tiefste Kosten je m3 GV wegen grossem GV/GF-Verhältnis (volumenbildende private
  Aussenräume).
- Nr. 7 und 14: Skaleneffekt, flächenmässig grösste Objekte.
- Nr. 12: sehr tiefe BKP 214 trotz Grösse, zurückgeführt auf Standardisierung in Planung und Fertigung.
- Nr. 13: strikte rasterförmige Grundrisse mit geringen Spannweiten.

### 1.10 Bauzeit-Effekt (S. 20)

Gedankenbeispiel, übernommen aus der Studie 2020, Abschnitt 3.3: Für ein Wohngebäude im
grossstädtischen Raum an guter Mikrolage reduzieren sich bei **einem halben Jahr
Zeitersparnis** die Baukosten um **rund CHF 200 pro m2 HNF**.

Der Bericht betont mehrfach (S. 6, 20), dass der Bauzeitvorteil des Holzbaus und die daraus
resultierenden früheren Erträge in den Kostenkennwerten **nicht** enthalten sind, bei einer
Marktwertermittlung aber positiv wirken. Zweiter, ebenfalls nicht quantifizierter Vorteil:
Kostensparpotenzial im Innenausbau, wenn die Holzstruktur sichtbar bleibt (S. 6).

### 1.11 Renditen (S. 21, Stand 2022 bis 2023)

**Bruttoanfangsrendite**

| Reihe | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| Fallbeispiele 2023 (Neubau Holz) | 2.75% | 2.94% | 3.16% | 3.41% | 3.73% |
| Transaktionen Wohnliegenschaften 2022 bis 2023 | 2.58% | 3.25% | 3.71% | 4.21% | 5.01% |

Anders als 2020 wurden Transaktionen an **allen** Makrolagen ausgewertet, nicht nur an sehr
guten bis exzellenten. Der Median der Fallbeispiele (3.16%) liegt unter jenem der
Transaktionen (3.71%), weil Neubauten erwartungsgemäss tiefere Anfangsrenditen aufweisen als
Bestandsliegenschaften. Wüest Partner hält fest, dass die Auswertung auf Modellannahmen beruht.

### 1.12 Marktkennzahlen Schweiz (Stand: letztes Jahr vor Berichtsdatum, also 2022 bis 2023)

| Grösse | Wert | Fundstelle |
|---|---|---|
| Nationaler Durchschnitt Angebotsmiete | CHF 190 pro m2 und Jahr | S. 15 (bestätigt S. 90) |
| Schweizer Durchschnitt Leerstandsquote | 1.9% | S. 15 (bestätigt S. 90) |
| Schweizer Durchschnitt Angebotsquote Mietwohnungen | 5.5% | S. 15 (bestätigt S. 90) |

Angebotspreis-Bänder der 17 Standorte (S. 14 f.): CHF 175 bis 200, 200 bis 225, 225 bis 250
und über 250 pro m2 und Jahr; Leerstandsklassen unter 1%, 1 bis 1.5%, 1.5 bis 2%, über 2%;
Angebotsquotenklassen 2 bis 6% und 6 bis 9%.

### 1.13 Sanierung und Aufstockung gegen Ersatzneubau (Abschnitt 3, S. 23 bis 32)

Drei Szenarien, alle als Renditeobjekt, alle am selben Standort (Grosszentrum, Angebotsmiete
über CHF 250 pro m2 und Jahr, Leerstand unter 1%, Makrolage exzellent, S. 28):

- **Szenario 1:** Sanierung und Aufstockung gemäss Projektabrechnung. Bestand MFH
  Massivbau, Baujahr 1930 bis 1940, saniert und aufgestockt 2021.
- **Szenario 2:** Abbruch und Ersatzneubau in Holzbauweise, Modellrechnung, highest and best use.
- **Szenario 3:** Abbruch und Ersatzneubau in Massivbauweise, Modellrechnung, highest and best use.

**Kostenannahmen (S. 27):**

| Position | Szenario 1 | Szenario 2 (Holz) | Szenario 3 (Massiv) |
|---|---|---|---|
| Abbruchkosten | gemäss Projektabrechnung | CHF 50 / m3 GV | CHF 50 / m3 GV |
| Wohnen | gemäss Projektabrechnung | CHF 4'700 / m2 HNF (30-50%-Quantil Holzbau unteres Preissegment) | CHF 4'230 / m2 HNF (50%-Quantil Referenzbauten) |
| Einstellplatz | gemäss Projektabrechnung | CHF 20'000 / Stück | CHF 35'000 / Stück |
| Risiko/Gewinn | 7% der Erstellungskosten BKP 1-5 | 8% | 8% |

Die tiefere Risikokomponente in Szenario 1 begründet Wüest Partner mit niedrigerem
Bewilligungsrisiko, erfahrungsgemäss weniger Einsprachen, weniger umfangreichen
Tiefbaumassnahmen und dem etablierten Leichtbauverfahren (S. 27 f.).

**Mietpotenzial (S. 28):** Für Szenario 2 und 3 wird das Mietpotenzial **rund 3.5 Prozent
höher** angesetzt als in Szenario 1, wegen leicht grösserer Raumgrössen und privater
Aussenräume. Zwischen Holz- und Massivneubau **kein** Mietunterschied: Wüest Partner geht
ausdrücklich **nicht** von einer höheren Zahlungsbereitschaft für einen Holzbau bei der
breiten Mieterschaft aus.

**Konstruktionsgewicht (S. 26):** Raumgewicht Holz rund 700 kg/m3, Stahlbeton rund
2'500 kg/m3; bei gleichen Konstruktionsstärken beträgt das Eigengewicht in Holzbauweise
rund **30 Prozent** jenes in Massivbauweise. Deshalb muss in Szenario 2 das bestehende
Untergeschoss nicht vollständig zurückgebaut, sondern nur adaptiert werden.

**Kostenkennwerte je Szenario (S. 29, Preisstand April 2023):**

| Szenario | BKP1-5/m3 GV | BKP1-5/m2 GF | BKP1-5/m2 HNF | BKP2/m3 GV | BKP2/m2 GF | BKP2/m2 HNF |
|---|---|---|---|---|---|---|
| 1 Sanierung und Aufstockung | 901 | 3'017 | 4'085 | 864 | 2'892 | 3'917 |
| 2 Neubau Holz | 1'474 | 4'421 | 5'895 | 1'209 | 3'627 | 4'836 |
| 3 Neubau Massiv | 1'424 | 4'271 | 5'695 | 1'116 | 3'349 | 4'466 |

**Ergebnis Wirtschaftlichkeit (S. 30 f.):**

| Szenario | Landwert (Szenario 1 = 100%) | Landwert in % Anlagewert | Kalkulatorische Rendite |
|---|---|---|---|
| 1 Sanierung und Aufstockung | 100.0% | 75 bis 80% | 2.59% |
| 2 Neubau Holz | 114.2% | 65 bis 70% | 2.56% |
| 3 Neubau Massiv | 115.7% | 70 bis 75% | 2.56% |
| 3a Massiv, BKP2 auf CHF 4'500/m2 HNF erhöht | 113.3% | 65 bis 70% | 2.56% |
| 3b Massiv, Flächenbasis wie Szenario 1 | 99.9% | 70 bis 75% | 2.56% |

Kalkulatorische Rendite = Jahresmietertrag geteilt durch Anlagekosten inklusive Landwert.

Kernaussagen: Abbruch und Neubau erzielt hier den höheren Landwert, allein wegen der
Ausnützungsreserve, die die Aufstockung nicht heben kann. Holz- und Massivneubau liegen unter
2 Prozent auseinander. **Sensitivität:** schon eine Erhöhung des Massivbau-Ansatzes von
CHF 4'230 auf CHF 4'500 pro m2 HNF (Szenario 3a) dreht das Ergebnis zugunsten des Holzbaus,
obwohl dessen Ansatz mit CHF 4'700 höher liegt. Ursache: Erhalt des Untergeschosses und
kürzere Bauzeit. Ohne Ausnützungsreserve (Szenario 3b) fällt der Ersatzneubau sogar leicht
hinter die Aufstockung zurück.

Aufstockung im Detail (S. 25): HNF-Steigerung um rund 17.6 Prozent; die HNF nach Aufstockung
besteht zu 85 Prozent aus Bestandsflächen und 15 Prozent Neuflächen. Durchschnittliche
Wohnungsgrösse 77 m2 HNF, Mix 46% 2.5-Zimmer, 50% 3.5-Zimmer, 4% 4.5-Zimmer. Bestehendes
Dach zurückgebaut, Ergänzung um ein Attikageschoss. Sanierungsumfang (S. 25): Fensterersatz,
Raumeinteilung, Liftersatz, Erdbebenertüchtigung, schalltechnische Ertüchtigung,
Strangsanierung, Nasszellen, Küchen, allgemeine Räume, Treppenhäuser, Haustechnik,
Gasheizung, Balkontürme, Umgebung. **Keine** energetische Fassadenverbesserung.

Der Ersatzneubau (Szenario 2 und 3) erreicht plus 18 Prozent HNF gegenüber Szenario 1,
durchschnittliche Wohnungsgrösse 82 m2 HNF, Mix 30% 2.5-Zimmer, 35% 3.5-Zimmer,
35% 4.5-Zimmer (S. 26).

### 1.14 Anhang D und F — die vollständigen Wüest-Dimensions-Residualwert-Reports

Drei Reports zu je 5 Seiten, alle **Berichtsdatum 31.08.2023, Qualitätsstichtag 01.09.2023**,
Projektleiter Julia Selberherr, Bewerter Magdalena Goller, Auftraggeber Lignum. Objektadresse
und Marktwert sind im PDF geschwärzt.

- Anhang D (S. 82 bis 87): «Szenario 2.1_Sanierung und Aufstockung Bestand»
- Anhang F (S. 93 bis 103): «Szenario 2.2_Neubau Holzbauweise» und «Szenario 2.3_Neubau Massivbauweise»

**Hinweis zur Extraktion:** Anhang D und der zweite Report in Anhang F liegen nur als Bild
vor, `pdftotext` liefert dort nichts. Die Werte unten sind visuell aus der gerenderten
Seite gelesen.

#### 1.14.1 Objekt- und Projektrahmen

| Grösse | Szenario 2.1 Sanierung/Aufstockung | Szenario 2.2 Neubau Holz | Szenario 2.3 Neubau Massiv |
|---|---|---|---|
| Baujahr / letzte Renovation | 1933 / 2024 | 2024 | 2024 |
| Grundstücksfläche | 819 m2 | 819 m2 | 819 m2 |
| GF,oi | 2'921 m2 | 3'402 m2 | 3'402 m2 |
| HNF | 2'157 m2 | 2'552 m2 | 2'552 m2 |
| Wohnungen | 28 (1x4.5, 14x3.5, 13x2.5 Zi) + 1 Gewerbe/Büro | 31 (35% 4.5, 35% 3.5, 30% 2.5 Zi) | 31, gleicher Mix |
| Ø Wohnungsgrösse | 77 m2 | 82 m2 | 82 m2 |
| Parkierung | 2 Einzelgaragen im EG | 17 Einstellplätze, davon 2 Besucher | 17 Einstellplätze, davon 2 Besucher |
| Planung vor Baubewilligung | 8 Mt. | 10 Mt. | 12 Mt. |
| Planung nach Baubewilligung | 8 Mt. | 8 Mt. | 12 Mt. |
| Bauzeit | 13 Mt. | 10 Mt. | 18 Mt. |
| **Projektdauer total** | **29 Mt.** | **28 Mt.** | **42 Mt.** |
| Risiko/Gewinn | 7% Erstellungskosten | 8% Erstellungskosten | 8% Erstellungskosten |

In allen drei Fällen: Kosten im Zusammenhang mit Altlasten und Gebäudeschadstoffen werden
**nicht** berücksichtigt; konventionelle Flachfundation unterstellt, keine
Spezialtiefbaumassnahmen; **Zwischenerträge während der Planungszeit werden berücksichtigt**.

#### 1.14.2 Ertragsseite

**Szenario 2.1** (Sanierung/Aufstockung)

| Nutzung | Anzahl | m2 | Anteil | Soll p.a. CHF | CHF/m2 | Quantil | CHF/Einheit und Mt. | Leerstand |
|---|---|---|---|---|---|---|---|---|
| Wohnen | 28 | 2'112 | 97% | 1'052'250 | 498 | 50% | 3'132 | 1.5% |
| Gewerbe/Industrie | 1 | 46 | 2% | 20'000 | 435 | 55% | 1'667 | 5.0% |
| Parken innen | 2 | 0 | 1% | 7'800 | | | 325 | 3.0% |
| **Total** | **31** | **2'158** | **100%** | **1'080'050** | **497** | | **2'903** | **1.6%** |

**Szenario 2.2 und 2.3** (Neubau, identische Ertragsseite)

| Nutzung | Anzahl | m2 | Anteil | Soll p.a. CHF | CHF/m2 | Quantil | CHF/Einheit und Mt. | Leerstand |
|---|---|---|---|---|---|---|---|---|
| Wohnen | 31 | 2'553 | 96% | 1'320'120 | 517 | 55% | 3'549 | 1.5% |
| Parken innen | 17 | 0 | 4% | 58'500 | | | 287 | 5.0% |
| **Total** | **48** | **2'553** | **100%** | **1'378'620** | **517** | | **2'393** | **1.6%** |

Mietansätze Neubau im Detail (S. 96): 2.5-Zi 10 Wohnungen à 63 m2, CHF 2'830 bis 3'000
(Ø 2'892) pro Monat; 3.5-Zi 12 Wohnungen à 83 m2, CHF 3'370 bis 3'600 (Ø 3'457);
4.5-Zi 9 Wohnungen à 103 m2, CHF 4'330 bis 4'400 (Ø 4'363); Parken innen CHF 0 bis 325
(Ø 163). Preisstand 01.09.2023.

#### 1.14.3 Bewirtschaftungskosten (Hauptteil S. 29, Reports S. 86 / 97 / 102)

Wüest-Partner-Ansätze, auf Benchmarks vergleichbarer Objekte abgestützt:

| Position | Ansatz gemäss Haupttext | Szenario 2.1 gerechnet | Szenario 2.2/2.3 gerechnet |
|---|---|---|---|
| Betriebskosten | rund 5.5% des Soll-Ertrags | 5.36% (CHF 57'874, 26.82/m2) | 5.27% (CHF 72'653, 28.46/m2) |
| Unterhalt/Instandhaltung | rund CHF 20 pro m2 | CHF 42'930, 19.89/m2, 3.97% | CHF 51'060, 20.00/m2, 3.70% |
| Instandsetzung | rund CHF 40 pro m2 | CHF 85'630, 39.68/m2, 7.93% | CHF 102'120, 40.00/m2, 7.41% |
| Leerstand | | CHF 17'018, 1.58% | CHF 22'727, 1.65% |
| **Total Nettoertrag** | | **CHF 876'599, 81.16% des Soll** | **CHF 1'130'060, 81.97% des Soll** |

#### 1.14.4 Kapitalisierungssätze

| Grösse | Szenario 2.1 | Szenario 2.2 | Szenario 2.3 |
|---|---|---|---|
| Brutto-Kapitalisierungssatz gesamt | 2.59% | 2.56% | 2.56% |
| Netto-Kapitalisierungssatz | 2.10% | 2.10% | 2.10% |
| Brutto-Kap-Satz Wohnen | 2.59% | 2.58% | 2.58% |
| Brutto-Kap-Satz Gewerbe/Industrie | 2.45% | — | — |
| Brutto-Kap-Satz Parken innen | 2.16% | 2.21% | 2.21% |

Der Nettokapitalisierungssatz (real) wird laut Bericht (S. 29) über ein **Zuschlagsmodell**
hergeleitet und anhand aktueller Transaktionen ähnlicher Liegenschaften plausibilisiert.
Der Spread Brutto zu Netto beträgt in allen drei Fällen rund 0.49 Prozentpunkte und ergibt
sich mechanisch aus den Bewirtschaftungskosten (Leerstand 0.04%, Betrieb 0.14%, Instandhaltung
0.09%, Instandsetzung 0.19%).

#### 1.14.5 Residualwert-Kaskade (alle CHF, Stichtag 01.09.2023)

| Position | Szenario 2.1 | Szenario 2.2 Holz | Szenario 2.3 Massiv |
|---|---|---|---|
| Ertragswert Renditeobjekt per Fertigstellung | 41'740'000 (100.00%) | 53'810'000 (100.00%) | 53'810'000 (100.00%) |
| Verkaufserlöse Eigentum | 0 | 0 | 0 |
| **Total Anlagewert per Fertigstellung** | **41'740'000** | **53'810'000** | **53'810'000** |
| pro m2 Nutzfläche | 19'351 | 21'085 | 21'085 |
| Investitionskosten | −8'812'000 (−21.11%) | −15'700'000 (−29.18%) | −15'360'000 (−28.54%) |
| Residualwert vor Wertkorrekturen | 32'928'000 (78.89%) | 38'110'000 (70.82%) | 38'450'000 (71.46%) |
| Risiko/Gewinn | −617'000 (−1.48%) | −1'203'000 (−2.24%) | −1'162'470 (−2.16%) |
| Zwischenerträge Planungszeit | +356'000 (0.85%) | +401'000 (0.75%) | +535'000 (0.99%) |
| **Residualwert / Landwert** | **32'670'000 (78.27%)** | **37'310'000 (69.34%)** | **37'820'000 (70.28%)** |
| pro m2 Nutzfläche | 15'146 | 14'620 | 14'820 |
| **pro m2 Grundstücksfläche** | **39'890** | **45'556** | **46'178** |

Kontrollrechnung: 37'310 / 32'670 = 114.2% und 37'820 / 32'670 = 115.8%, deckt sich mit den
114.2% und 115.7% des Haupttexts.

#### 1.14.6 Risikonote (Szenario 2.1, S. 86)

Der einzige Report mit ausgefüllter Notenskala. Struktur der Wüest-Dimensions-Risikonote:

| Kriterium | Gewichtung | Note | Text |
|---|---|---|---|
| Planungsrisiko | 40 | 2.0 | Zonenkonformität rechtskräftig |
| Erstellungsrisiko | 20 | 2.0 | Machbarkeit mit Erschliessung |
| Marktrisiko | 40 | 3.0 | Verträge mit einzelnen Interessenten |
| **Total** | | **2.5** | **Mittlere bis hohe Entwicklungsrisiken** |

Benchmarking Szenario 2.1: Residualwert vor Wertkorrektur 32'928'000 entspricht 1.87%,
Investitionskosten 8'812'000 entsprechen 7.00%, Anlagewert 41'740'000 entspricht 1.48%;
gerundetes Total-Risiko CHF −617'000, Risiko pro m2 Grundstücksfläche CHF 753.
Für Szenario 2.2: 3.16% / 8.00% / 2.24%, Risiko pro m2 GSF CHF 1'469.
Für Szenario 2.3: 3.02% / 8.00% / 2.16%, Risiko pro m2 GSF CHF 1'419.
Die Notenfelder der Szenarien 2.2 und 2.3 sind im PDF leer (Total = 0).

**Merksatz:** Die Risiko-/Gewinnkomponente wird auf die **Erstellungskosten BKP 1-5**
gerechnet, nicht auf den Anlagewert. Kontrolle Szenario 2.2: 15'040'749 × 8% = 1'203'260,
gerundet 1'203'000. Kontrolle Szenario 2.1: 8'811'562 × 7% = 616'809, gerundet 617'000.

#### 1.14.7 Investitionskosten im Detail (S. 87, 98, 103)

| BKP | Position | Szenario 2.1 | Szenario 2.2 Holz | Szenario 2.3 Massiv |
|---|---|---|---|---|
| 0 | Grundstück (Summe) | 0 | 661'020 (4.21% BKP 0-9) | 831'600 (5.41%) |
| 01 | Grundstück-/Baurechtserwerb | 0 | 0 | 0 |
| 018 | Sanierung Altlasten | 0 | 0 | 0 |
| 02 | **Nebenkosten zum Erwerb** | 1.00% (auf 0) | **1.00%** auf 28'740'000 = 287'400 | **1.00%** auf 29'700'000 = 297'000 |
| 04 | **Finanzierung vor Baubeginn** | 1.20% (auf 0) | **1.30%** auf 28'740'000 = 373'620 | **1.80%** auf 29'700'000 = 534'600 |
| 05 | Erschliessung ausserhalb Grundstück | 0 | 0 | 0 |
| 1 | Vorbereitung | 133'818 (1.52%) | 970'581 (6.18%) | 959'950 (6.25%) |
| 112 | Abbrüche | 750 m3 × 50 = 37'500 | 8'800 m3 × 50 = 440'000 | 9'400 m3 × 50 = 470'000 |
| 1X | **Vorbereitung (Sammelposition)** | **1.14%** von BKP 2 = 96'318 | **4.30%** von BKP 2 = 530'581 | **4.30%** von BKP 2 = 489'950 |
| 2 | Gebäude | 8'448'980 (95.89% BKP 1-5) | 12'339'100 (82.04%) | 11'394'190 (78.42%) |
| 2 | Wohnen, Vollausbau, Standard 3.0 durchschnittlich | 2'112 m2 HNF × **3'930** = 8'300'160 | 2'553 m2 HNF × **4'700** = 11'999'100 | 2'553 m2 HNF × **4'230** = 10'799'190 |
| 2 | Gewerbe/Industrie, Edelrohbau | 46 m2 HNF × **3'200** = 147'200 | — | — |
| 2 | Parken innen, Rohbau | 2 Stück × **810** = 1'620 | 17 Stück × **20'000** = 340'000 | 17 Stück × **35'000** = 595'000 |
| 4 | Umgebung | 309 m2 × 200 = 61'800 | 220 m2 × 200 = 44'000 | 220 m2 × 200 = 44'000 |
| 5 | Baunebenkosten | 166'964 (1.89%) | 1'687'068 (11.22%) | 2'132'021 (14.67%) |
| 54 | **Finanzierung ab Baubeginn** | **1.34%** auf 12'460'000 = 166'964 | **1.80%** auf 35'420'000 = 637'560 | **3.20%** auf 35'900'000 = 1'148'800 |
| 55 | **Bauherrenleistungen** | 0.00% | **1.56%** auf 13'353'681 = 208'317 | **1.58%** auf 12'398'140 = 195'891 |
| 568.1 | **Erstvermietungskosten** | 10.00% (auf 0) | **10.00%** des Soll-Mietertrags 1'378'620 = 137'862 | **10.00%** = 137'862 |
| 568.2 | Maklerkosten | 0 | 0 | 0 |
| 5X | **Baunebenkosten (Sammelposition)** | 5.90% (auf 0) | **5.70%** von BKP 2 = 703'329 | **5.70%** von BKP 2 = 649'469 |
| | **Total Erstellungskosten BKP 1-5** | **8'811'562** | **15'040'749** | **14'530'162** |
| | **Total Anlagekosten BKP 0-9** | **8'811'562** (100.00%) | **15'701'769** (104.39%) | **15'361'762** (105.72%) |

Merkwerte für JANS-Residualrechnungen (Stand 01.09.2023, Grosszentrum):
- **Nebenkosten Erwerb: 1.00% des Landwerts.**
- **Finanzierung vor Baubeginn: 1.30% bei 18 Monaten Planung, 1.80% bei 24 Monaten Planung.**
- **Finanzierung ab Baubeginn: 1.80% bei 10 Monaten Bauzeit, 3.20% bei 18 Monaten Bauzeit**
  (Szenario 2.1: 1.34% bei 13 Monaten). Die Sätze skalieren erkennbar mit der Bauzeit.
- **Bauherrenleistungen: rund 1.56 bis 1.58%** der Bemessungsbasis.
- **Erstvermietungskosten: 10% eines Jahres-Soll-Mietertrags.**
- **Sammelposition Vorbereitung: 4.30% von BKP 2** beim Neubau, **1.14%** bei Sanierung/Aufstockung.
- **Sammelposition Baunebenkosten: 5.70% von BKP 2** beim Neubau, 5.90% als Modellansatz.
- **Umgebung: CHF 200 pro m2** Umgebungsfläche.
- **Abbruch: CHF 50 pro m3** GV.

Der Report enthält zusätzlich eine Grafik «Plausibilisierung Landwert» mit der Kurve
Landwert/Neubauwert über die **Lageklasse 0 bis 10** (S. 84); der ausgewiesene Punkt liegt
bei Lageklasse rund 8 und rund 100 Prozent. Die Kurve verläuft konvex und erreicht bei
Lageklasse 10 rund 160 Prozent. Nutzbar als Referenz für den Artikel
`lageklasse-landwertanteil`, allerdings nur als Grafik ohne Zahlentabelle.

### 1.15 Der vermeintliche Widerspruch in Anhang E — aufgelöst, es ist ein PDF-Artefakt

Ein naiver `pdftotext`-Auszug von Anhang E (Faktenblätter Modellrechnungen, S. 88 bis 92)
liefert scheinbar widersprüchliche Werte, unter anderem eine **kalkulatorische Rendite von
1.74 Prozent** statt der 2.56 Prozent des Haupttexts, einen «Landanteil 47 bis 80%», ein
«Baujahr 1015», eine «SIA 524» und einen «nationalen Durchschnitt von CHF 230 pro m2».

**Das ist kein Widerspruch im Bericht, sondern eine defekte Zeichenzuordnung im Textlayer
dieser fünf Seiten.** Die visuelle Prüfung der gerenderten Seite 90 zeigt die korrekten
Werte. Die Ziffernabbildung im Textlayer ist eine feste Permutation:

| angezeigt | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| **tatsächlich** | 0 | 2 | 1 | 9 | 6 | 4 | 8 | 5 | 7 | 3 |

Kontrollen: «1.74%» ergibt 2.56% (deckt sich mit S. 30), «47 - 80%» ergibt 65 bis 70%
(deckt sich mit S. 30), «SIA 524» ergibt SIA 416, «Baujahr 1015» ergibt 2024, «CHF 230 pro m2»
ergibt CHF 190 (deckt sich mit S. 15), «Angebotsquote 9.4% (Schweiz: 7.7%)» ergibt 3.6%
(Schweiz 5.5%), «BKP 125» ergibt BKP 214.

**Regel für den Hub:** Aus diesem PDF darf keine Zahl allein aus `pdftotext` übernommen
werden, ohne die Seite visuell gegenzuprüfen. Die Seiten 1 bis 43 sind sauber, die Seiten
88 bis 92 (Anhang E) sind ziffernverfälscht. Diese Falle gehört in
`datenquellen-registry` und in `wissensluecken`.

Die visuell verifizierten Werte des Faktenblatts Modellrechnung Nr. 1 (Neubau Holz, S. 90):
GV,oi 10'000 bis 20'000 m3; GF,oi und HNF je 2'500 bis 5'000 m2; BKP 1-5 pro m3 GV
CHF 1'474; pro m2 GF CHF 4'421; pro m2 HNF CHF 5'895; BKP 2 pro m2 GV CHF 1'209; pro m2 GF
CHF 3'627; pro m2 HNF CHF 4'836; BKP 214 keine Angabe; Jahresmietertrag CHF 1'379'000 p.a.;
**Landanteil 65 bis 70 Prozent**, definiert als Landanteil an den Erstellungskosten BKP 1-9
gemäss Baulandpreismodell Wüest Partner; kalkulatorische Rendite 2.56 Prozent. Mittlere
Angebotsmiete am Standort über CHF 350 pro m2 und Jahr, Leerstandsquote 0.1 Prozent im Mittel
der letzten fünf Jahre, Angebotsquote 3.6 Prozent.

### 1.16 GEAK (S. 22, 32)

Alle 17 Neubau-Fallbeispiele erreichen mindestens Kategorie **B** in Gebäudehülle und
Gesamtenergie. Klasse B steht für Gebäudehülle und Gebäudetechnik im Neubaustandard
kombiniert mit erneuerbaren Energien. Minergie-P-zertifizierte Gebäude erreichen laut
GEAK-Auswertung nicht zwingend Klasse A, weil der Eigendeckungsgrad der Elektrizität
unter Umständen nicht genügt; sie liegen im Übergangsbereich A zu B.
Das Sanierungs-/Aufstockungsobjekt (Nr. 18) erreicht Hülle B und Gesamtenergie B, bei den
direkten CO2-Emissionen jedoch nur **D**, allein wegen der fossilen Wärmeerzeugung (Gasheizung).

### 1.17 Teil 2/2 Ökologische Kennzahlen (PDF-Seiten 104 bis 156)

Verfasser: **durable Planung und Beratung GmbH**, Binzstrasse 12, 8045 Zürich, eine
100-Prozent-Tochter der Wüest Partner AG. Projektleitung Dr. Julia Selberherr, Bearbeitung
David Offtermatt und Romero Ratti. Bearbeitungszeitraum September bis Dezember 2023,
Berichtsdatum 24.04.2024.
Kernaussage der Management Summary: Ausführung in Holzbauweise reduziert die
Treibhausgasemissionen um **bis zu 24 Prozent**, bei einzelnen Bauteilen bis **38 Prozent**.
Die geringeren Emissionen im Holzbau verschieben den Fokus der Ökobilanzierung auf
Untergeschoss und Gebäudetechnik. Bezugsnorm für graue Treibhausgasemissionen und graue
Energie: SIA 2040:2017 Effizienzpfad Energie.
Für die Bewertung nicht direkt relevant, für `energie` und `kostenschaetzung` als
Nebenbefund vermerkt.

### 1.18 Nicht gelesen, nur vermerkt

- `Wuest Reports/Holzbaukennzahlen/einzel/` — 87 PDF-Dateien, jeweils Einzelseiten-Splits
  desselben Berichts (Dateiname endet auf `-SeiteNNN.pdf`). **Kein eigener Inhalt**, reine
  Seitenaufteilung. Für die KB irrelevant.
- `Wuest Reports/Hedonic/WuestPartnerAG_Appraisal_Long_Beispiel_EFH.pdf` — von einem anderen
  Lauf erfasst, hier als Duplikat vermerkt.
