# Ingest Cluster B — Wüest Partner (IMMO - 04 Marktpreise)

- **Datum Lauf:** 31.07.2026
- **Quellordner:** `/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 04 Marktpreise/wuest partner/`
- **Auftrag:** Vollständige Destillation der Wüest-Partner-Bestände in `IMMO - 04`, mit Fundstelle und Preisstand je Zahl.
- **Status:** abgeschlossen. Alle sechs Quellen gelesen und destilliert.

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

---

## 2 `00 Kommunikation/240502 Altersheime/` — kritische Prüfung: KEINE Wüest-Benchmarks

**Befund: Der Ordner enthält keinerlei Wüest-Kostenkennwerte für Altersheime.** Er enthält
ausschliesslich eine **ausgehende JANS-Anfrage ohne dokumentierte Antwort**.

| Datei | Inhalt |
|---|---|
| `Benchmarks Altersheime Kostenkennwerte GF-GV.eml` | Ausgehende Mail Raphael Jans an Wüest Partner |
| `Benchmarks Altersheime Kostenkennwerte GF_GV.pdf` | PDF-Ausdruck derselben Mail, 1 Seite, kein Zusatzinhalt |
| `Altersheim.docx` | Enthält nur eine URL, keinen Text |

**Die Mail (Beleg):**
- Von: Raphael Jans, rj@raphaeljans.ch
- An: nikola.haefeli@wuestpartner.com
- Datum: Donnerstag, 2. Mai 2024, 16:05:51 MESZ (14:05:50 UTC)
- Betreff: «Benchmarks Altersheime Kostenkennwerte GF/GV»
- Anrede: «Sehr geehrter Herr Häfeli, sehr geehrter Herr Weber» (Herr Weber steht in der
  Anrede, ist aber **nicht** im An-Feld und nicht im Cc)
- Inhalt, sinngemäss: Anfrage, ob Wüest Partner einen Report mit Kostenkennzahlen für den
  Bereich Altersheime publiziert.
- Signatur mit der **veralteten** Adresse Flüelastrasse 6, 8048 Zürich (heute Grubenstrasse 37,
  8045 Zürich, Rule `jans-absenderadresse`).

**Keine Antwortmail im Ordner.** Ob eine Antwort einging, ist aus diesem Bestand nicht
feststellbar. Die Frage «Publiziert Wüest Partner Kostenkennwerte für Altersheime?» ist damit
seit dem 02.05.2024 **offen** und gehört in `wissensluecken`.

**`Altersheim.docx`** enthält als einzigen Inhalt den Link
`https://www.wuestpartner.com/ch-de/2023/06/21/wohnen-im-alter-treiber-des-wohnflaechenkonsums/`
(Wüest-Artikel «Wohnen im Alter, Treiber des Wohnflächenkonsums», datiert 21.06.2023). Der
Artikeltext selbst liegt nicht vor.

**Kontaktdaten Wüest Partner (Screenshot `_Kontaktinfos/Bildschirmfoto 2024-05-02 um 16.01.16.png`,
Stand 02.05.2024, von wuestpartner.com):**

Nikola Haefeli, +41 44 289 91 84
Matthias Weber MRICS, +41 44 289 91 60

Weitere in Quelle 1 belegte Kontakte: Wüest Partner AG, Alte Börse, Bleicherweg 5, 8001 Zürich,
T +41 44 289 90 00. Dr. Julia Selberherr (Partner), julia.selberherr@wuestpartner.com.
Magdalena Goller (Consultant), magdalena.goller@wuestpartner.com.

---

## 3 Standortinformationen Diemtigen und Langenthal

Beides sind **Wüest-Partner-Standortinformationen** («Business intelligence by Wüest Partner»).
Sie sind **nicht** inhaltsgleich: die beiden Abfragen wurden mit unterschiedlichen Modulen
zusammengestellt und ergänzen einander.

| | Diemtigen | Langenthal |
|---|---|---|
| Datei | `Standortinformation-Diemtigen -- Oey-762.pdf` | `Standortinformation-Langenthal.pdf` |
| **Abfragedatum** | **2. Juli 2023** | **21. Juni 2023** |
| Umfang | 31 Seiten | 13 Seiten |
| Gewählte Region | Gemeinde Diemtigen (BE) | Gemeinde Langenthal (BE) |
| MS-Region | Thun | Oberaargau |
| Monitoring-Region | Bern | (nicht ausgewiesen, Modul fehlt) |
| Kapitel «Preise» | **nur** EFH-Preisspektren | Mietwohnungen, Eigentumswohnungen, EFH, Büro, Gewerbe, Verkauf **plus Baulandpreise** |
| Kapitel «Preisindizes» | umfangreich (Wohnen und Geschäft kompakt, dann ausführlich für Mietwohnungen, Eigentumswohnungen, EFH, Büro, Gewerbe, Verkauf) | **fehlt vollständig** |

### 3.1 Erhebungsstand (Anhang «Datengrundlagen», je letzte Seite) — der eigentliche Preisstand

| Datengrundlage | Quelle | Erhebungsstand | Letzte Aktualisierung | Turnus |
|---|---|---|---|---|
| Preisspektren | Wüest Partner | **2023-03-31** | 2023-04-19 | vierteljährlich |
| Baulandpreise (nur Langenthal) | Wüest Partner | **2023-02-28** | 2023-04-03 | halbjährlich |
| Angebotspreisindex (nur Diemtigen) | Wüest Partner | **2023-03-31** | 2023-04-12 | vierteljährlich |
| Regionalisierung | BFS, Swisstopo | 2022-01-01 | 2022-06-28 | jährlich |

**Merksatz:** Das Abfragedatum (Juni/Juli 2023) ist nicht der Preisstand. Massgeblich ist der
**Erhebungsstand 31.03.2023** für alle Preisspektren, 28.02.2023 für die Baulandpreise. Die
Quartalsreihen laufen entsprechend bis 2023/1.

### 3.2 Diemtigen — der ländliche Tiefpreis-Anker

**Einfamilienhäuser, Preisspektren (Kaufpreis in CHF pro m2), Stand 2023/1** (S. 3):

| Quantil | Diemtigen | MS-Reg. Thun | Schweiz |
|---|---|---|---|
| 90% | 8'740 | 10'300 | 14'100 |
| 70% | 6'460 | 8'490 | 9'380 |
| **50% (Median)** | **5'440** | **7'170** | **7'140** |
| 30% | 4'140 | 6'080 | 5'460 |
| 10% | 2'560 | 3'960 | 4'170 |

Bemerkenswert: der Median Diemtigen (5'440) liegt **24 Prozent unter** dem Schweizer Median
(7'140), das 10%-Quantil (2'560) sogar 39 Prozent darunter. Die MS-Region Thun liegt im Median
praktisch auf Schweizer Niveau (7'170 zu 7'140), aber mit deutlich schmalerem oberem Rand
(90%: 10'300 zu 14'100). Das ist die typische Signatur eines Berggebiets in einer Region mit
gutem Durchschnitt.

**Quartalsentwicklung EFH Diemtigen (CHF pro m2)** (S. 3):

| Quartal | 10% | 30% | 50% | 70% | 90% |
|---|---|---|---|---|---|
| 2020/4 | 2'540 | 3'900 | 4'840 | 6'040 | 7'620 |
| 2021/1 | 2'740 | 4'110 | 5'000 | 6'150 | 7'880 |
| 2021/2 | 2'870 | 4'260 | 5'170 | 6'430 | 8'050 |
| 2021/3 | 2'620 | 3'990 | 5'000 | 6'150 | 7'790 |
| 2021/4 | 2'550 | 3'740 | 4'930 | 6'050 | 7'790 |
| 2022/1 | 2'480 | 3'790 | 4'990 | 6'130 | 8'250 |
| 2022/2 | 2'610 | 4'040 | 5'160 | 6'420 | 8'730 |
| 2022/3 | 2'590 | 4'100 | 5'260 | 6'510 | 8'890 |
| 2022/4 | 2'570 | 4'170 | 5'450 | 6'580 | 9'050 |
| **2023/1** | **2'560** | **4'140** | **5'440** | **6'460** | **8'740** |

Veränderung QOQ: −0.4 / −0.7 / −0.2 / −1.8 / −3.4 Prozent. YOY: +3.2 / +9.2 / +9.0 / +5.4 /
+5.9 Prozent. Also im Jahresvergleich klar positiv, im Quartalsvergleich erstmals rückläufig,
am oberen Rand am stärksten.

**EFH-Preisspektren pro Objekt (Kaufpreis in CHF), Diemtigen** (S. 3):

| Quantil | 3-Zi | 4-Zi | 5-Zi | 6-Zi | 7-Zi | 8-Zi |
|---|---|---|---|---|---|---|
| 90% | 743'000 | 888'000 | 1'112'000 | 1'320'000 | 1'599'000 | 1'908'000 |
| 70% | 549'000 | 657'000 | 822'000 | 976'000 | 1'182'000 | 1'411'000 |
| 50% | 463'000 | 554'000 | 693'000 | 823'000 | 996'000 | 1'189'000 |
| 30% | 352'000 | 421'000 | 526'000 | 625'000 | 757'000 | 904'000 |
| 10% | 218'000 | 261'000 | 326'000 | 388'000 | 469'000 | 560'000 |

**MS-Region Thun, dieselbe Tabelle:**

| Quantil | 3-Zi | 4-Zi | 5-Zi | 6-Zi | 7-Zi | 8-Zi |
|---|---|---|---|---|---|---|
| 90% | 873'000 | 1'065'000 | 1'352'000 | 1'605'000 | 2'000'000 | 2'283'000 |
| 70% | 718'000 | 875'000 | 1'111'000 | 1'319'000 | 1'644'000 | 1'877'000 |
| 50% | 606'000 | 739'000 | 938'000 | 1'114'000 | 1'389'000 | 1'585'000 |
| 30% | 515'000 | 627'000 | 797'000 | 946'000 | 1'179'000 | 1'346'000 |
| 10% | 336'000 | 409'000 | 519'000 | 616'000 | 768'000 | 877'000 |

**Angebotspreisindizes Diemtigen** (Index 1996/1 = 100, nominal):

Mietwohnungen, Monitoringregion Bern gegen Schweiz (S. 4):

| Quartal | Monitoringreg. Bern | Schweiz |
|---|---|---|
| 2021/1 | 112.7 | 121.7 |
| 2021/2 | 112.5 | 120.2 |
| 2021/3 | 112.7 | 119.9 |
| 2021/4 | 112.4 | 119.4 |
| 2022/1 | 112.6 | 119.7 |
| 2022/2 | 113.0 | 120.9 |
| 2022/3 | 114.3 | 121.1 |
| 2022/4 | 114.9 | 121.2 |
| **2023/1** | **115.3** | **121.3** |

QOQ +0.4% / 0.0%; YOY +2.4% / +1.3%; 3 Jahre +0.3% / −2.8%.

Geschäftsflächen, Büromarktregion Bern gegen Schweiz, halbjährlich (S. 5):

| Halbjahr | Büro Bern | Büro CH | Gewerbe Bern | Gewerbe CH | Verkauf Bern | Verkauf CH |
|---|---|---|---|---|---|---|
| 2019/1 | 106.5 | 120.5 | 98.6 | 110.8 | 103.4 | 105.1 |
| 2019/2 | 109.0 | 121.2 | 92.5 | 106.4 | 105.8 | 104.4 |
| 2020/1 | 110.7 | 121.8 | 94.9 | 104.6 | 105.2 | 103.6 |
| 2020/2 | 107.7 | 122.1 | 106.3 | 107.9 | 102.5 | 105.4 |
| 2021/1 | 108.9 | 121.8 | 111.4 | 111.6 | 91.1 | 105.2 |
| 2021/2 | 109.1 | 119.8 | 106.4 | 111.7 | 83.9 | 103.2 |
| 2022/1 | 110.5 | 118.7 | 105.0 | 114.1 | 94.0 | 97.9 |
| 2022/2 | 110.7 | 117.9 | 109.4 | 115.3 | 92.4 | 101.6 |
| **2023/1** | **111.6** | **117.5** | **111.5** | **115.0** | **96.1** | **102.0** |

3-Jahres-Veränderung: Büro Bern +0.8% gegen CH −3.6%; Gewerbe Bern +17.5% gegen CH +10.0%;
Verkauf Bern −8.6% gegen CH −1.5%.

Die Seiten 6 bis 30 enthalten die «ausführlichen» Angebotspreisindizes je Nutzungsart
(Mietwohnungen, Eigentumswohnungen, EFH, Büro, Gewerbe, Verkauf), je über mehrere Seiten
mit Regionsvergleichen. Sie sind für JANS nur bei einer konkreten Berner Bewertung relevant
und hier nicht vollständig transkribiert.

### 3.3 Langenthal — der Gegen-Anker

**Mietwohnungen, Preisspektren (Nettomiete in CHF pro m2 und Jahr), Stand 2023/1** (S. 3):

| Quantil | Langenthal | MS-Reg. Oberaargau | Schweiz |
|---|---|---|---|
| 90% | 253 | 228 | 263 |
| 70% | 201 | 190 | 214 |
| **50%** | **179** | **171** | **190** |
| 30% | 159 | 157 | 167 |
| 10% | 140 | 137 | 139 |

Der Schweizer Median 190 CHF/m2a deckt sich exakt mit dem nationalen Durchschnitt aus
Quelle 1 (S. 15). Zwei unabhängige Belege für denselben Wert, gleiche Periode.

Quartalsreihe Langenthal Mietwohnungen: 2020/4 135/155/174/198/243 · 2021/1 138/157/178/202/250 ·
2021/2 135/155/174/198/245 · 2021/3 134/153/173/196/237 · 2021/4 136/157/177/200/245 ·
2022/1 141/161/181/204/253 · 2022/2 138/157/176/198/248 · 2022/3 138/157/176/198/247 ·
2022/4 137/157/177/200/249 · 2023/1 140/159/179/201/253 (je 10/30/50/70/90%).
QOQ +2.2 / +1.3 / +1.1 / +0.5 / +1.6 Prozent; YOY −0.7 / −1.2 / −1.1 / −1.5 / 0.0 Prozent.

Mietwohnungen pro Objekt (Nettomiete CHF pro Monat), Langenthal: 1-Zi 420/480/540/606/763,
2-Zi 669/764/860/964/1'210, 3-Zi 848/970/1'090/1'220/1'540, 4-Zi 1'080/1'240/1'390/1'560/1'960,
5-Zi 1'270/1'460/1'640/1'840/2'310, 6-Zi 1'590/1'820/2'040/2'290/2'890 (je 10/30/50/70/90%).

**Eigentumswohnungen, Preisspektren (Kaufpreis CHF pro m2), Stand 2023/1** (S. 4):

| Quantil | Langenthal | MS-Reg. Oberaargau | Schweiz |
|---|---|---|---|
| 90% | 7'530 | 6'720 | 17'800 |
| 70% | 6'210 | 5'890 | 12'400 |
| **50%** | **5'350** | **5'180** | **8'250** |
| 30% | 4'690 | 4'110 | 6'500 |
| 10% | 3'650 | 3'430 | 4'890 |

Der Schweizer 90%-Wert von 17'800 CHF/m2 zeigt, wie stark die Spitzenlagen den nationalen
Rand ziehen: Langenthal erreicht im 90%-Quantil nur 42 Prozent davon.

Quartalsreihe Langenthal EWG (10/30/50/70/90%): 2020/4 3'160/4'030/4'840/5'640/7'160 ·
2021/1 3'260/4'120/4'990/5'830/7'250 · 2021/2 3'270/4'100/4'950/5'760/7'310 ·
2021/3 3'370/4'200/4'930/5'870/7'440 · 2021/4 3'490/4'370/5'110/6'130/7'640 ·
2022/1 3'560/4'500/5'260/6'160/7'710 · 2022/2 3'550/4'510/5'200/6'090/7'620 ·
2022/3 3'590/4'590/5'260/6'130/7'490 · 2022/4 3'600/4'630/5'330/6'190/7'530 ·
2023/1 3'650/4'690/5'350/6'210/7'530.

**Einfamilienhäuser, Preisspektren (Kaufpreis CHF pro m2), Stand 2023/1** (S. 5):

| Quantil | Langenthal | MS-Reg. Oberaargau | Schweiz |
|---|---|---|---|
| 90% | 9'180 | 7'150 | 14'100 |
| 70% | 6'750 | 6'050 | 9'380 |
| **50%** | **5'570** | **5'320** | **7'140** |
| 30% | 4'650 | 4'430 | 5'460 |
| 10% | 3'200 | 3'020 | 4'170 |

Die Schweiz-Spalte ist identisch mit jener im Diemtigen-Report (14'100 / 9'380 / 7'140 /
5'460 / 4'170) — beide Abfragen liegen im selben Erhebungsstand 31.03.2023. Damit ist die
Schweizer EFH-Referenzreihe zweifach belegt.

**Direktvergleich der beiden Anker (EFH, CHF pro m2, Median, Stand 2023/1):**
Diemtigen 5'440 · Langenthal 5'570 · MS-Thun 7'170 · MS-Oberaargau 5'320 · Schweiz 7'140.
Beide Gemeinden liegen rund 22 bis 24 Prozent unter dem Schweizer Median. Der Unterschied
zwischen ihnen liegt nicht im Median, sondern in der Streuung: Langenthal reicht im
90%-Quantil auf 9'180, Diemtigen nur auf 8'740, und Diemtigens 10%-Quantil (2'560) liegt
20 Prozent unter jenem von Langenthal (3'200).

Quartalsreihe Langenthal EFH (10/30/50/70/90%): 2020/4 2'910/4'050/4'870/6'060/8'170 ·
2021/1 2'980/4'130/4'970/6'170/8'340 · 2021/2 2'860/4'190/5'000/6'400/8'800 ·
2021/3 3'040/4'190/5'000/6'410/8'880 · 2021/4 3'250/4'320/5'180/6'550/9'160 ·
2022/1 3'370/4'500/5'360/6'760/9'600 · 2022/2 3'440/4'640/5'560/6'990/9'740 ·
2022/3 3'430/4'870/5'770/7'180/10'000 · 2022/4 3'320/4'840/5'770/7'060/9'780 ·
2023/1 3'200/4'650/5'570/6'750/9'180. QOQ −3.6 / −3.9 / −3.5 / −4.4 / −6.1 Prozent —
Langenthal dreht im ersten Quartal 2023 deutlich stärker nach unten als Diemtigen.

EFH pro Objekt Langenthal (CHF): 3-Zi 271'000/394'000/471'000/572'000/777'000,
4-Zi 333'000/484'000/580'000/703'000/956'000, 5-Zi 418'000/608'000/727'000/882'000/1'199'000,
6-Zi 505'000/734'000/879'000/1'066'000/1'449'000, 7-Zi 623'000/905'000/1'083'000/1'314'000/1'786'000,
8-Zi 714'000/1'038'000/1'242'000/1'507'000/2'048'000 (je 10/30/50/70/90%).

**Geschäftsflächen Langenthal, Preisspektren (Nettomiete CHF pro m2 und Jahr), Stand 2023/1**
(S. 6 bis 8):

| Nutzung | Quantil | Langenthal | MS-Oberaargau | Schweiz |
|---|---|---|---|---|
| Büro | 90% | 226 | 190 | 440 |
| Büro | 70% | 187 | 167 | 279 |
| Büro | **50%** | **155** | **149** | **221** |
| Büro | 30% | 123 | 121 | 180 |
| Büro | 10% | 97 | 99 | 131 |
| Gewerbe | 90% | 184 | 173 | 263 |
| Gewerbe | 70% | 131 | 119 | 180 |
| Gewerbe | **50%** | **100** | **94** | **138** |
| Gewerbe | 30% | 79 | 72 | 109 |
| Gewerbe | 10% | 60 | 41 | 80 |
| Verkauf | 90% | 331 | 347 | 500 |
| Verkauf | 70% | 233 | 225 | 300 |
| Verkauf | **50%** | **171** | **158** | **237** |
| Verkauf | 30% | 145 | 127 | 189 |
| Verkauf | 10% | 110 | 94 | 120 |

Gewerbeflächen Langenthal YOY +11.1 / +5.3 / +7.5 / +7.4 / +13.6 Prozent, Verkaufsflächen
YOY +19.6 / +11.5 / +4.9 / +15.9 / +7.1 Prozent — beide deutlich im Aufwind, Büro dagegen
im Median leicht rückläufig (YOY −0.6% im 50%-Quantil).

### 3.4 Baulandpreise Langenthal (nur in diesem Report, Erhebungsstand 28.02.2023)

**Ausdrücklicher Hinweis in jeder dieser Tabellen: «Nach der Residualmethode modellierte
Preise».** Das ist für die KB `residualwertmethode` die direkte Verbindung: Wüest bepreist
Bauland selbst residual. Nur 10/50/90-Quantile, keine 30/70.

| Bauland-Kategorie | Quantil | Langenthal | MS-Oberaargau | Kanton BE |
|---|---|---|---|---|
| MFH, Wohnzone hohe AZ | 90% | 850 | 560 | 3'840 |
| MFH, Wohnzone hohe AZ | **50%** | **530** | **310** | **940** |
| MFH, Wohnzone hohe AZ | 10% | 490 | 100 | 140 |
| EFH, Wohnzone tiefe AZ | 90% | 960 | 850 | 1'860 |
| EFH, Wohnzone tiefe AZ | **50%** | **840** | **530** | **780** |
| EFH, Wohnzone tiefe AZ | 10% | 540 | 210 | 270 |
| Geschäft (Büro/Verkauf) | 90% | 650 | 650 | 5'610 |
| Geschäft (Büro/Verkauf) | **50%** | **290** | **260** | **1'620** |
| Geschäft (Büro/Verkauf) | 10% | 260 | 110 | 170 |
| Gewerbe/Industrie | 90% | 310 | 310 | 1'090 |
| Gewerbe/Industrie | **50%** | **90** | **90** | **260** |
| Gewerbe/Industrie | 10% | 80 | 60 | 60 |

Bemerkenswerte Auffälligkeit: In Langenthal liegt der Median für **EFH-Bauland (840)
deutlich über jenem für MFH-Bauland (530)**. Das ist die klassische Signatur eines Marktes
mit tiefen Mietpreisen: bei einer Miete von 179 CHF/m2a rechtfertigt die Residualrechnung
für die verdichtete Wohnbauzone weniger Landwert als der Eigenheimmarkt zahlt.

Halbjahresreihe MFH-Bauland Langenthal (10/50/90%, CHF pro m2): 2018/1 330/360/630 ·
2018/2 340/380/620 · 2019/1 350/390/620 · 2019/2 370/400/640 · 2020/1 380/420/650 ·
2020/2 380/410/630 · 2021/1 410/440/680 · 2021/2 440/480/730 · 2022/1 470/510/790 ·
2022/2 490/530/850. HOH +4.3 / +3.9 / +7.6 Prozent, YOY +11.4 / +10.4 / +16.4 Prozent.
Das MFH-Bauland in Langenthal hat sich von 2018/1 bis 2022/2 im Median um 47 Prozent verteuert.

Halbjahresreihe Gewerbe-Bauland Langenthal (10/50/90%): 2018/1 100/120/520 · 2018/2 100/120/510 ·
2019/1 100/120/490 · 2019/2 100/120/470 · 2020/1 100/110/460 — hier praktisch stagnierend
beziehungsweise am oberen Rand rückläufig.

### 3.5 Was in beiden Reports NICHT enthalten ist

- **Keine Kantons-Spalte in den Preisspektren.** Die Preisspektren zeigen nur Gemeinde,
  MS-Region und Schweiz. Der Kanton BE erscheint ausschliesslich bei den Baulandpreisen.
- **Keine Renditen, keine Kapitalisierungssätze, keine Leerstandsquoten, keine
  Angebotsquoten, keine Bevölkerungs-/Beschäftigtendaten, kein Makrolagenrating,
  keine Steuerbelastung.** Diese Module wurden nicht bestellt.
- **Keine Kostenkennwerte** (weder BKP noch CHF/m3).
- **Keine Healthcare-Nutzungen** (Alters-/Pflegeheim, Klinik) — die Standortinformation
  kennt nur Wohnen (Miete, EWG, EFH) und Geschäft (Büro, Gewerbe, Verkauf).
- Diemtigen: **keine Mietwohnungs- und keine Eigentumswohnungs-Preisspektren**, keine
  Baulandpreise.
- Langenthal: **keine Preisindizes/Indexreihen** überhaupt.
- Der Dateiname `Standortinformation-Diemtigen -- Oey-762.pdf` enthält den Zusatz «Oey-762»
  (Ortsteil Oey, vermutlich Parzelle 762). Im PDF selbst ist **nur die Gemeinde Diemtigen**
  gewählt, keine Parzelle. Der Report ist gemeindeweit, nicht objektbezogen.

---

## 4 Kostenbenchmarks Wohnbau — Abgleich mit der Hub-Referenz

**Dateien im Quellordner** (`Kostenbenchmarks/`):

| Datei | Art | Datum |
|---|---|---|
| `260607_Kostenbenchmarks-Wohnbau_Zusammenfassung-Wuest.pdf` | JANS-Erzeugnis, 2 Seiten | 07.06.2026 |
| `260607_Kostenbenchmarks-Wohnbau_Zusammenfassung-Wuest.docx` | dasselbe als DOCX | 07.06.2026 |
| `2_Immo_02_P23D_Praesentation_Nextcloud-Seite32.pdf` | Wüest-Academy-Originalfolie, Bild-PDF | abgelegt 29.12.2023 |
| `...Seite33.pdf` | dito | dito |
| `...Seite34.pdf` | dito | dito |
| `Bildschirmfoto 2025-03-25 um 16.16.38.png` | Spread-Grafik Massiv/Holz | 25.03.2025 |

### 4.1 Verhältnis PDF/DOCX zur Hub-Referenz

**Kein reines Duplikat.** PDF und DOCX sind inhaltsgleich (dieselben sechs Abschnitte,
dieselben Tabellen); die DOCX ist die Quelle, das PDF der Export.

**Die Hub-Referenz `/Volumes/daten/jans-ai-hub/skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
ist der Superset.** Sie enthält alles aus dem PDF und zusätzlich:
- die **vollständige Reihe Q1.0 bis Q5.0** (das PDF nennt nur Q1.5/Q3.0/Q4.5 und verweist
  für den Rest auf «Quelle S. 33 (Anhang)»),
- den Abschnitt 3b (GV-Basis, Wüest/Lignum/BAFU 25.09.2025) mit dem ungeklärten
  Spreizungsbefund,
- die Richtigstellungen vom 30.07.2026 (Wissens-Chef Run 21) zu den Prozent-Deltas.

Das PDF/DOCX-Paar ist damit ein **eingefrorener Vorstand** vom 07.06.2026. Für die Arbeit
gilt die MD-Referenz; das PDF ist nur die präsentierbare Fassung mit Chart.

### 4.2 Die «abgelesenen» Näherungswerte — sie können jetzt durch exakte Quantile ersetzt werden

Abschnitt 3 der Hub-Referenz (und des PDF) trägt selbst den Vorbehalt «aus Spread abgelesen».
Diese Werte stammen aus derselben Wüest-Studie wie Quelle 1 dieses Berichts. Der Abgleich:

| Zeile | Hub-Referenz abgelesen (unterer / Median / oberer) | Exakt aus Quelle 1, S. 18/36 (10% / 50% / 90%) | Abweichung Median |
|---|---|---|---|
| Massivbau 2023 | ≈ 3'500 / ≈ 4'500 / ≈ 7'000 | **3'100 / 4'492 / 6'900** | +0.2% |
| Holzbau 2023 | ≈ 4'700 / ≈ 5'400 / ≈ 6'700 | **4'749 / 5'466 / 6'587** | −1.2% |
| Holzbau unteres Preissegment | ≈ 4'600 / ≈ 5'000 / ≈ 5'400 | **4'687 / 4'980 / 5'499** | +0.4% |
| Holzbau oberes Preissegment | ≈ 5'200 / ≈ 6'200 / ≈ 6'700 | **5'561 / 6'506 / 6'653** | −4.7% |

Die Mediane wurden gut abgelesen. Die grössten Fehler liegen an den Rändern: der «untere»
Massivbau-Wert 3'500 gegen exakt 3'100 (+12.9 Prozent zu hoch) und der «untere» Wert des
oberen Holzbau-Segments 5'200 gegen exakt 5'561 (−6.5 Prozent zu tief).

**Empfehlung: Abschnitt 3 der Hub-Referenz auf die exakten Quantile umstellen**, mit
Fundstelle «Wüest Partner/Lignum/BAFU, Holzbaukennzahlen für Investoren, Wohnbauten Teil 1/2,
26.04.2024, S. 18 und 36, Preisstand April 2023», und die volle 10/30/50/70/90-Reihe statt
des Dreispalters übernehmen. Damit fällt der Vorbehalt «abgelesen» weg.

**Folgekorrektur der Prozent-Deltas:** Die Hub-Referenz nennt für das obere Preissegment
+38 Prozent gegenüber Massivbau (aus 6'200 zu 4'500). Exakt gerechnet: **6'506 zu 4'492 =
+44.8 Prozent**. Für das untere Preissegment: 4'980 zu 4'492 = **+10.9 Prozent** (die
Referenz nennt +11 Prozent, das stimmt). Für Holzbau gesamt: 5'466 zu 4'492 = **+21.7 Prozent**
(die Referenz spricht von «rund 10 bis 20 Prozent», das ist am unteren Rand zu tief).

### 4.3 Ein wahrscheinlicher Etikettenfehler in der Hub-Referenz: Q1.0 bis Q5.0 sind keine Quantile

Die Hub-Referenz führt die Wüest-Dimensions-Reihe als «Quantile Q1.5 (≈ unteres Segment) /
Q3.0 (Median) / Q4.5 (≈ oberes Segment)». Die visuelle Prüfung der Originalfolie
(`...Seite33.pdf`, Wüest Academy P23D S. 33) zeigt: die Achse trägt die Werte 1.0 / 1.5 /
2.0 / 2.5 / 3.0 / 3.5 / 4.0 / 4.5 / 5.0 als Farbrampe unter der Überschrift «Wüest Dimensions,
Übersicht Kostenbenchmarks».

Dieselbe 1.0-bis-5.0-Skala erscheint in den Wüest-Dimensions-Residualwert-Reports aus
Quelle 1 als **Ausbaustandard**: dort steht in der Investitionskostentabelle in der Spalte
«Standard» der Eintrag «**3.0 - Durchschnittlich**» (S. 87, 98, 103). Es handelt sich also
mit hoher Wahrscheinlichkeit um die **Wüest-Standard-/Ausbaugradskala**, nicht um
statistische Quantile. Der Wert 4'360 wäre dann «Kosten bei durchschnittlichem
Ausbaustandard 3.0», nicht «Median der Stichprobe».

Die Folie selbst spricht allerdings von «Median bei rund CHF 4'400/m2 HNF BKP 1-5» und meint
damit den 3.0-Wert (4'360, aufgerundet). Wüest verwendet den Begriff also selbst unscharf.

**Status: begründeter Verdacht, nicht belegt.** Eintrag für `wiki/QUESTIONS.md` bzw.
`wissensluecken.md`: Ist die Reihe Q1.0 bis Q5.0 in Wüest Dimensions eine Quantil- oder eine
Ausbaustandard-Skala? Klärung über Wüest Partner oder das vollständige Immo-Monitoring P23D.
Solange ungeklärt, sollte die Hub-Referenz die Bezeichnung «Q1.0 bis Q5.0 (Wüest-Skala,
Bedeutung ungeklärt)» tragen statt «Quantile».

Die Folie nennt zudem ausdrücklich «Gemäss umfassender Baukosten-Analyse mit **Daten bis
2021**» und beschriftet die Zeilen mit «**2022**: Wohnen Vollausbau». Der Preisstand dieser
Reihe ist damit 2021/2022, **nicht** April 2023 wie bei Quelle 1. Die beiden Datensätze
dürfen nicht ohne Indexierung nebeneinandergestellt werden.

### 4.4 Teuerungsaussagen — Originalfolie S. 32 verifiziert

Die Folie «Steigende Baukosten» (P23D S. 32, **Stand April beziehungsweise Oktober 2022**,
Quellen BFS und Wüest Partner) belegt wortgetreu:
- Seit 2021 steigen die Wohnbaukosten ungewöhnlich stark; ältere Kostenbenchmarks sind
  heute um mindestens **10 Prozent** anzuheben.
- Wegen anspruchsvollerer Baustandards und gestiegener Bedürfnisse wird zusätzlich zur
  statischen Bauteuerung um **weitere 10 bis 15 Prozent** teurer gebaut als vor 10 Jahren.
- Zürcher Index der Wohnbaupreise, Neubauten: **+8.3 Prozent** von Oktober 2021 bis
  Oktober 2022.
- Fazit der Folie: Wohnbauprojekte 2023 rund **+30 Prozent** teurer als vor 10 Jahren.
- Grafik: Wohnbauinvestitionsindex nach Nutzung, Index 1. Halbjahr 2012 = 100; Mietwohnungen
  und Eigentumswohnungen erreichen 2022 rund 122 beziehungsweise 127, der BFS-Baupreisindex
  nur rund 111.
- Verweis auf Wüest Partner Immo-Monitoring, Ausgabe 2023 | 1, «Baupreissteuerung».

Alle vier Teuerungsaussagen der Hub-Referenz sind damit an der Originalquelle verifiziert.

---

## 5 Regionenkarte — Wüest-Regionensystematik

**Datei:** `Regionkarte/regionenkarte.pdf`, 1 Seite, PDF erstellt **11.08.2008**.
Die Karte ist damit die älteste Datei im Bestand; die Systematik selbst ist bis heute in
Gebrauch (die Standortinformationen von 2023 verwenden dieselben Begriffe MS-Region und
Monitoring-Region).

Verbindlicher Wortlaut der Systematik:
- Die Schweiz wird für den Marktbericht in **106 MS-Regionen** aufgeteilt («mobilité
  spatiale»-Modell).
- Quelle des Modells: **Schuler/Joye, Die Raumgliederungen der Schweiz, BFS, Bern 1994.**
- Die MS-Regionen werden zu **8 Marktregionen («Monitoring-Regionen»)** zusammengefasst.

Die acht Monitoring-Regionen von Wüest Partner:

| Nr. | Region |
|---|---|
| 1 | Region Zürich |
| 2 | Region Ostschweiz |
| 3 | Region Innerschweiz |
| 4 | Region Nordwestschweiz |
| 5 | Region Bern |
| 6 | Region Südschweiz |
| 7 | Region Genfersee |
| 8 | Region Westschweiz |

Die Karte selbst zeigt die 106 nummerierten MS-Regionen flächig eingefärbt nach
Monitoring-Region; eine Namensliste der einzelnen MS-Regionen enthält das Blatt nicht.

Praktische Bestätigung aus Quelle 3: Diemtigen liegt in der **MS-Region Thun**, Langenthal in
der **MS-Region Oberaargau**; beide fallen in die **Monitoring-Region Bern** (im
Diemtigen-Report als Indexregion ausgewiesen). Für Büroflächen verwendet Wüest zusätzlich
eine eigene Gliederung, die **Büromarktregionen** (im Diemtigen-Report «Büromarktreg. Bern»).
Das sind drei verschiedene Ebenen und dürfen nicht verwechselt werden: MS-Region (106) für
Preisspektren, Monitoring-Region (8) für Wohn-Indizes, Büromarktregion für Geschäftsindizes.

---

## 6 Wüest-Reports-Zugänge und das hedonische Portal

### 6.1 `Wuest Reports/Wuest_Reports.docx`

Enthält keinen Text, nur zwei Links (abgelegt 26.03.2025):
- Reports-Katalog: `https://www.wuest.io/reports/#/home?catalogCountry=CH&currency=CHF`
- Immo-Monitoring-Abo (1 Benutzer): `https://www.wuestpartner.com/ch-de/produkt/immo-monitoring-abo-1-benutzer/`

Preise sind in der Datei **nicht** vermerkt.

### 6.2 `Wuest Reports/Hedonic/https.docx`

Enthält als einzigen Inhalt den Link `https://wuestpartner-hedonic.wuestappraisal.com/`
(abgelegt 13.06.2026).

### 6.3 Das Hedonic-Portal — Preise und Modellgrenzen

Belegt durch sechs Screenshots vom **15.06.2026** (`Bildschirmfoto 2026-06-15 um 10.31.56`
bis `10.33.01.png`) und einen Ausschnitt vom 13.06.2026 (`260613 um 13.51.32.jpg`).

**Produkt:** «Hedonische Marktwertschätzung», Wüest Partner, unter
`wuestpartner-hedonic.wuestappraisal.com`. Sprachen DE/FR/IT/EN.
Selbstbeschreibung: umfassende Immobilienbewertung in wenigen Schritten plus Zugang zur
interaktiven Standortanalyse; die hedonischen Bewertungsfunktionen von Wüest Partner
basieren auf **effektiven Immobilientransaktionen**.

**Preise (Stand 15.06.2026):**

| Leistung | Preis |
|---|---|
| Hedonische Marktwertschätzung | **CHF 450, zuzüglich MWST** |
| Sanierungs- und Nachhaltigkeitsanalyse (Zusatzmodul) | **zusätzlich CHF 150, zuzüglich MWST** |

Inhalt des Zusatzmoduls laut Portal: Übersicht, welche Bauteile als nächstes saniert werden
sollten, mit welchen Sanierungskosten zu rechnen ist, welche Fördergelder für energetische
Massnahmen zur Verfügung stehen und welche Steuerersparnisse möglich sind; dazu die Reduktion
des Wärmebedarfs und der CO2-Emissionen.

**Abdeckung:** nur **Einfamilienhaus** und **Eigentumswohnung**. Renditeobjekte, MFH,
Geschäftsliegenschaften und Healthcare-Nutzungen sind **nicht** abgedeckt.

**Erfasste Merkmale (was ins Modell eingeht):**
- Adresse, Standort per Karten-Marker («Das Bewertungsmodell berücksichtigt die
  kleinräumlichen Lageeigenschaften»)
- Immobilientyp, Haustyp, Erst- oder Zweitwohnsitz (Nutzungsbeschränkungen nur in
  Tourismusgebieten relevant)
- Grundstücksfläche, Zimmerzahl total, davon Zimmerzahl Einliegerwohnung
- Gebäudevolumen, Wohnfläche (eine der beiden Angaben darf fehlen)
- Parkierung: Garagenplätze im Gebäudevolumen enthalten / in separatem Gebäude auf dem
  Grundstück / ausserhalb des Grundstücks; Aussenparkplätze auf dem Grundstück /
  ausserhalb
- Ausbaustandard je Bauteil: Küche, Nasszellen (Anzahl nach Typ), Bodenbeläge,
  Aussenbereich/Umgebung
- Grundrissqualität: Raumhöhe, Grundriss
- Energie-Zertifizierung
- Wärme: Wärmeerzeugung, Wärmeabgabe; weitere Ausstattungen
- Baujahr, durchgeführte Sanierungen
- Baurechtssituation

**Datenherkunft für Vorbefüllung:** «Wo möglich, leiten wir Angaben zur Objektgrösse,
Wärmeerzeugung und Baujahr anhand der Adresse aus dem eidgenössischen Gebäude- und
Wohnungsregister (**GWR**, Bundesamt für Statistik), **a2-c** oder **geodienste.ch** ab.
Vollständigkeit und Korrektheit der Angaben können nicht garantiert werden.»

**Die Modellgrenzen — der wichtigste Befund für die KB.** Wörtlich sinngemäss auf der
Seite «Besonderheiten und weitere Angaben»:

> Die erfassten Besonderheiten dienen zur Dokumentation der Liegenschaft. In der hedonischen
> Bewertung werden **nur die Angaben zur Baurechtssituation wertmässig berücksichtigt**. Bei
> den weiteren Besonderheiten wären detailliertere Angaben notwendig, diese werden deshalb
> **wertmässig nicht berücksichtigt**.

Konkret gehen die folgenden, unbestreitbar wertrelevanten Sachverhalte **nicht** in den
hedonischen Wert ein:

| Kategorie | Merkmal | Wertwirksam? |
|---|---|---|
| Dienstbarkeiten | Objekt im **Baurecht** | **ja** |
| Dienstbarkeiten | Objekt im **Wohnrecht** | nein, nur Dokumentation |
| Dienstbarkeiten | Objekt im **Nutzniessungsrecht** | nein |
| Dienstbarkeiten | **Wertvermindernde Servitute** | nein |
| Weitere Angaben | Objekt **ausserhalb der Bauzone** | nein |
| Weitere Angaben | **Ausbaureserven vorhanden** | nein |

Ebenfalls nur als Referenzwert erfassbar, ohne Modellwirkung: Freihandtransaktion,
Gebäudeversicherungswert, Steuerwert, andere Bewertung.

**Folgerung für JANS:** Bei jedem Objekt mit Wohnrecht, Nutzniessung, wertvermindernder
Dienstbarkeit, Lage ausserhalb der Bauzone oder ungenutzter Ausnützungsreserve ist der
hedonische Wert von Wüest **systematisch verzerrt** und muss durch eine eigene Korrektur
ergänzt werden. Genau diese Sachverhalte sind das Kerngeschäft der JANS-Bewertung
(Ausbaureserve → Residualwert, Servitut → Agent `dienstbarkeiten-pruefer`,
ausserhalb Bauzone → Bestandesschutz). Das hedonische Modell ist damit ein
**Plausibilisierungssignal für Standardobjekte**, kein Ersatz für das Gutachten.

Weiterer erfasster Punkt: «Grund der Bewertung» (Kaufabsicht, Verkaufsabsicht,
Wertüberprüfung als Eigentümer, Erbteilung, anderer Hintergrund), Mehrfachauswahl.
Bestellung mit Personendaten, AGB- und Datenschutzbestätigung sowie Einwilligung, dass die
Daten zu Bewertungs- und technischen Zwecken durch die Wüest Partner AG bearbeitet werden.

**Nicht gelesen:** `Wuest Reports/Hedonic/WuestPartnerAG_Appraisal_Long_Beispiel_EFH.pdf`
(Beispielreport, in einem anderen Lauf erfasst, hier nur als Duplikat vermerkt).

---

## 7 Zuordnung zu den Wiki-Artikeln

| Befund | Zielartikel | Art |
|---|---|---|
| HNF/GF = 0.75 statt 0.70, Spanne 0.70 bis 0.80, Obergrenze 0.79 | `flaechendefinitionen-sia` | **Korrektur** eines kanonischen Werts |
| BKP 1-5 und BKP 2 Quantilreihen Holz/Massiv je HNF, GF, GV, Preisstand April 2023 | `realwert-sachwert` | Erweiterung, ersetzt abgelesene Werte |
| BKP 214, TG-/PV-Sensitivitäten, Einstellplatz- und Stellplatzkennwerte | `realwert-sachwert` | Erweiterung |
| Vollständige Residualwert-Kaskade dreier Wüest-Dimensions-Reports, Stichtag 01.09.2023 | `residualwertmethode` | grosse Erweiterung, erstes vollständiges Muster |
| Nebenkosten Erwerb 1.00%, Finanzierungssätze 1.30 bis 3.20%, Bauherrenleistungen 1.56 bis 1.58%, Erstvermietung 10%, Sammelpositionen 4.30% und 5.70% | `residualwertmethode` | neue Ansatz-Tabelle |
| Risiko/Gewinn 7% Bestand gegen 8% Neubau, auf BKP 1-5; Risikonote-Struktur mit Gewichtung 40/20/40 | `residualwertmethode` | Erweiterung |
| Betriebskosten 5.5% Soll, Unterhalt CHF 20/m2, Instandsetzung CHF 40/m2; Brutto- zu Netto-Spread 0.49 Prozentpunkte | `ertragswert-dcf` | Erweiterung |
| Brutto-Kapitalisierungssätze 2.56 bis 2.59% gesamt, 2.58/2.59% Wohnen, 2.45% Gewerbe, 2.16/2.21% Parken | `ertragswert-dcf` | Erweiterung |
| Bruttoanfangsrendite Neubau (Median 3.16%) gegen Transaktionen (Median 3.71%), 2022/23 | `investorenmarkt-makro` | Erweiterung |
| Landwert in Prozent Anlagewert 65 bis 80%; Landwert pro m2 GSF 39'890 bis 46'178 im Grosszentrum | `lageklasse-landwertanteil` | Erweiterung |
| Lageklassen-Kurve Landwert/Neubauwert 0 bis 10 (nur Grafik) | `lageklasse-landwertanteil` | Verweis |
| EFH-/EWG-/Miet-/Geschäfts-Preisspektren Diemtigen und Langenthal, Erhebungsstand 31.03.2023 | `marktdaten-gemeinden/` | **zwei neue Gemeindeblätter** |
| Schweizer Referenzwerte 2022/23: Miete 190 CHF/m2a, Leerstand 1.9%, Angebotsquote 5.5%, EFH-Median 7'140 CHF/m2 | `investorenmarkt-makro` | Erweiterung, doppelt belegt |
| Baulandpreise Langenthal, ausdrücklich residual modelliert; EFH-Bauland über MFH-Bauland | `residualwertmethode` + `lageklasse-landwertanteil` | Erweiterung |
| Wüest-Regionensystematik: 106 MS-Regionen, 8 Monitoring-Regionen, dazu Büromarktregionen; Schuler/Joye BFS 1994 | `datenquellen-registry` | neuer Abschnitt |
| Hedonic-Portal: CHF 450 plus 150, nur EFH/EWG, GWR/a2-c/geodienste-Vorbefüllung | `vergleichswert-hedonisch` + `datenquellen-registry` | Erweiterung |
| Modellgrenzen hedonisch: nur Baurecht wertwirksam; Wohnrecht, Nutzniessung, Servitute, ausserhalb Bauzone, Ausbaureserven gehen NICHT ein | `vergleichswert-hedonisch` | **zentrale Erweiterung** |
| PDF-Ziffernpermutation in Anhang E, Seiten 88 bis 92 | `datenquellen-registry` + `wissensluecken` | Werkzeug-Fallstrick |
| Q1.0 bis Q5.0 vermutlich Ausbaustandard-Skala, nicht Quantile | `wissensluecken` / `QUESTIONS` | offene Frage |
| Anfrage Altersheim-Kennwerte an Wüest seit 02.05.2024 ohne belegte Antwort | `wissensluecken` | offene Bring-Schuld |
| BKP 2 der Holzbaustudie enthält die Planungskosten (über 90% der Gesamtkosten) | `projektstruktur-deliverables` + `realwert-sachwert` | Abgrenzungshinweis |
| Bauzeit-Effekt: ein halbes Jahr kürzer entspricht rund CHF 200/m2 HNF | `projektstruktur-deliverables` | Erweiterung |

**Vorschlag für einen neuen Artikel:** `wiki/kostenkennwerte-holzbau-wohnen.md`. Begründung:
die Quantilreihen aus Quelle 1 sind umfangreich (sechs Tabellen mit je sechs Reihen plus
Sensitivitäten), tragen alle denselben Preisstand und dieselbe Bereinigungslogik und würden
den Artikel `realwert-sachwert` (bereits 34 KB) sprengen. Der neue Artikel verlinkt nach
`realwert-sachwert`, `flaechendefinitionen-sia` und `residualwertmethode`.

## 8 Offene Punkte für `wissensluecken.md` / `QUESTIONS`

1. Publiziert Wüest Partner Kostenkennwerte für **Altersheime/Pflegeheime**? Anfrage vom
   02.05.2024 an nikola.haefeli@wuestpartner.com ohne belegte Antwort im Bestand.
2. Sind **Q1.0 bis Q5.0** in Wüest Dimensions Quantile oder die Ausbaustandard-Skala
   (3.0 = durchschnittlich)? Konsequenz für die Auslegung von CHF 4'360/m2 HNF.
3. Der **Preisstand April 2023** ist zum Zeitpunkt der Nutzung (2026) rund drei Jahre alt.
   Fortschreibungsfaktor über den BFS-Baupreisindex für Wohnbauten nach Grossregion
   (getrennt Holz und Massiv) ist noch nicht ermittelt.
4. Zur **Lageklassen-Kurve** aus dem Wüest-Dimensions-Report liegt nur die Grafik vor, keine
   Wertetabelle. Ist die Kurve (Landwert/Neubauwert über Lageklasse 0 bis 10, rund 100% bei
   Klasse 8, rund 160% bei Klasse 10) anderswo tabelliert?
5. Die Diemtigen-Seiten 6 bis 30 (ausführliche Angebotspreisindizes) sind hier nur strukturell
   erfasst, nicht transkribiert. Bei einer konkreten Berner Bewertung nachziehen.
6. Der Dateiname `Standortinformation-Diemtigen -- Oey-762.pdf` deutet auf ein konkretes Objekt
   in Oey (Parzelle 762). Der Report selbst ist gemeindeweit. Welches JANS-Projekt steht
   dahinter, und existiert dazu eine Objektbewertung?
