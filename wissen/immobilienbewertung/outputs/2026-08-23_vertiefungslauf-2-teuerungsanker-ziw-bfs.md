# Vertiefungslauf 2 — Teuerungsanker, ZIW-Revision 2025 und eine erschlossene Bodenpreis-Quelle

**Datum:** 23.08.2026 · **Station:** Revendo · **Auftrag:** Raphael — Wissens-Bibliothekar im
Dauerbetrieb, KB 1 von 4: Kennwerte und Verfahren (Realwert, Ertragswert/DCF, Vergleichswert,
Residual-Landwert) auf Aktualität und Belegstand prüfen, so tief wie möglich statt streifen.

**Vorlauf:** Vertiefungslauf 1 desselben Tages
(`2026-08-23_vertiefungslauf-kennwerte-verfahren.md`) hatte die Marktanker geprüft (SMG-Mietindex
Juli 2026, Zollikon-BZO) und festgehalten, ein weiterer Voll-Recompute ohne neues Rohmaterial wäre
Wiederholung. Dieser Lauf setzt genau dort an: nicht die Rechenketten erneut nachrechnen, sondern
die **Anker prüfen, an denen die Rechenketten hängen** — und dabei ist eine seit Run 31 offene
Nachführung fällig geworden.

---

## Zusammenfassung

Drei materielle Befunde, alle an Primärquellen gegengelesen, plus eine erschlossene Datenquelle.
**Kein Kennwert der KB ist geändert** — zwei Befunde münden in einen Entscheid, der bei Raphael
liegt (neu D15), einer schliesst eine Bring-Schuld teilweise (D2).

| # | Befund | Wirkung |
|---|---|---|
| 1 | ZIW-Publikation 01.04.2026 liegt vor (seit Run 31 vermisst) | Nachführungsauftrag einlösbar; neue BKP-Teilindizes |
| 2 | «ZIW ≠ BFS-Baupreisindex» ist für die Reihe ab 2021 überholt | Fassungsvermerk gesetzt, auf Vor-2021-Reihe eingegrenzt |
| 3 | Die 1939er-Verkettung ist amtlich gedeckt | Faktor-Fortschreibung methodisch abgesichert |
| 4 | Bodenpreis-Näherung Stadt Zürich als Open-Data-CSV erschlossen | D2 für die Stadt Zürich geschlossen, ausserhalb offen |

---

## 1 · Die seit Run 31 offene ZIW-Nachführung ist fällig — und einlösbar

`realwert-sachwert.md` trug seit Run 31 (14.07.2026) die Notiz «nächste Publikation ~04-06/2026
nachziehen». Dieses Datum ist verstrichen; die Publikation ist am **08.07.2026** erfolgt.

**Statistik Stadt Zürich, ZIW, Stichtag 01.04.2026, Basis Oktober 2025 = 100:**

| Reihe | April 2026 | Oktober 2025 | April 2025 | Jahresteuerung |
|---|---|---|---|---|
| **Total (BKP 1, 2, 4, 5)** | **100.6** | 100 | 99.7 | **+0.9 %** |
| Vorbereitung (BKP 1) | 102.2 | 100 | — | +2.2 % |
| **Gebäude (BKP 2)** | **100.4** | 100 | — | **+0.4 %** |
| Umgebung (BKP 4) | 100.7 | 100 | — | +0.7 % |
| Baunebenkosten (BKP 5) | 101.0 | 100 | — | +1.0 % |

*Quelle: Statistik Stadt Zürich, Landingpage ZIW (`stadt-zuerich.ch/ziw`), Indextabelle, abgerufen
23.08.2026. Publikationsdatum 08.07.2026 aus der Medienmitteilung (Reproduktion nau.ch,
08.07.2026) — die Medienmitteilung selbst war am Prüftag nicht direkt auffindbar; die Zahlen
stammen aus der amtlichen Tabelle, nicht aus der Presse.*

**Warum das mehr ist als ein neuer Datenpunkt.** Mit der Revision 2025 publiziert der ZIW erstmals
**BKP-Teilindizes**. Damit zerfällt der bisher eine Anker in drei, die im Jahr 2025/26 um
**0.6 Prozentpunkte** auseinanderliegen: ZIW-Total +0.9 %, ZIW-Gebäude BKP 2 +0.4 %, BFS «Neubau
Mehrfamilienhaus» CH +1.0 %. Die Tab.-2-Neuwert-Richtwerte sind **Baukosten je m3 umbauter Raum**,
also reine Gebäudekosten — sachlich gehören sie an den **BKP-2-Teilindex**, während das Total auch
BKP 1/4/5 trägt und im letzten Jahr vor allem von BKP 1 (+2.2 %) gehoben wurde.

**Nicht eigenmächtig umgestellt.** Der Artikel führt bereits einen ungelösten Ankerstreit
(1.346 vs. 1.334, Doppelführung mit `grobkosten`). Eine dritte Variante hineinzurechnen, ohne dass
die erste entschieden ist, würde den Stand verschlechtern. Neu als **D15** registriert, mit dem
1.346/1.334-Entscheid zusammen zu fällen.

## 2 · «Nicht mit dem BFS-Baupreisindex zu verwechseln» — für die Reihe ab 2021 überholt

Der Artikel trug den Klammersatz, der ZIW sei «nicht mit dem BFS-Baupreisindex zu verwechseln, der
eine andere Basis/Methodik hat». Der **Methodenbericht Revision 2025** (Statistik Stadt Zürich,
Juni 2026, PDF `2026-07-07_Methodenbericht-ZIW.pdf`, 16 Seiten, im Volltext gelesen) widerlegt das
für die aktuelle Reihe:

> «Im Jahr 2020 hat Statistik Stadt Zürich entschieden, die Zürcher Baupreiserhebung … nach ihrem
> 100-jährigen Jubiläum … als eigenständige Erhebung einzustellen. Seither wird der Zürcher Index
> der Wohnbaupreise basierend auf der regionalisierten Baupreiserhebung des Bundesamtes für
> Statistik weiterberechnet. … Grundsätzlich entspricht der ZIW ab Basisjahr 2020 dem
> BFS-Baupreisindex ‹Neubau Mehrfamilienhaus› der Region Zürich … Anpassungen zum
> BFS-Baupreisindex gibt es lediglich bei der **Gewichtung**.»

Das erklärt auch, warum ZIW und BFS-Total im April 2026 beide bei 100.6 auf derselben Basis
Oktober 2025 = 100 stehen — sie sind seit 2021 dieselbe Erhebung mit anderer Gewichtung, nicht
zwei unabhängige Messungen. Zwei übereinstimmende Werte sind hier also **keine gegenseitige
Bestätigung** (dieselbe Logik wie beim UBS-FS/Wüest-Befund, Nutzungsregel 6 der Registry).

**Nicht gestrichen, sondern eingegrenzt.** Für die Reihe **vor 2021** bleibt die Abgrenzung
richtig: Offertenmethode, rund 200 Bauunternehmen, ein reales Zürcher Indexhaus, MwSt in den
Preisen berücksichtigt — und genau dort liegt der Stützpunkt **01.04.2003 = 899.2**, der den
Faktor 1.346 trägt. Der Vermerk ist deshalb auf die Vor-2021-Reihe eingegrenzt worden.

## 3 · Die 1939er-Langreihe ist amtlich gedeckt

Derselbe Methodenbericht: «Die alten und die neuen Indexreihen werden **über das Basisjahr
verkettet**, sodass trotz der methodischen Anpassungen eine durchgehende und vergleichbare lange
Zeitreihe bestehen bleibt.» Die Verkettung über die Revisionen 2020 und 2025 hinweg ist damit die
amtlich vorgesehene Lesart und kein Behelf dieser KB — die Sorge, die Revision 2025 könnte den
1.346-Faktor entwerten, ist ausgeräumt.

**Rechnerische Fortschreibung**, ausdrücklich als Verkettung gekennzeichnet und **kein
publizierter Wert**: 01.10.2025 ≈ 1'213.5 (Wissens-Chef Run 35) × 1.006 ≈ **1'220.8** auf
Basis 1939 = 100, Faktor 2003→2026 ≈ **1.358**. Der amtliche 1939-Wert zum 01.04.2026 ist nicht
belegt und bleibt zu beschaffen.

**Nebenbefund — beide strittigen Stützpunkte bestätigt.** Die HEV-Schwyz-Reproduktion der
verketteten Reihe (Publikationsstand 01.01.2026) wurde erstmals im Volltext gelesen statt nur
zitiert. Sie bestätigt **01.04.2003 = 899.2** und **01.04.2004 = 907.6** — also beide Anker des
Doppelführungs-Befunds (1.346 hier, 1.334 in `grobkosten`). Der Streit ist damit kein Lesefehler
auf einer der beiden Seiten, sondern eine echte Stützpunktwahl. Die Reihe endet bei
**01.04.2025 = 1210.4**.

## 4 · BFS-Teuerungsanker nach Bauwerksart — der Totalwert war zu grob

Der Artikel führte bisher nur den BFS-Gesamtwert. Direkt bei der BFS-Indexseite abgelesen
(Basis Oktober 2025 = 100, Stichtag April 2026): die Bauwerksarten laufen um bis zu
**1.1 Prozentpunkte** auseinander.

| Reihe | Gewicht | Apr. 26 | gg. Okt. 25 | gg. Apr. 25 |
|---|---|---|---|---|
| Baugewerbe Total | 100.00 | 100.6 | +0.6 % | +1.0 % |
| Neubau Mehrfamilienhaus | 18.91 | 100.7 | +0.7 % | +1.0 % |
| Neubau Einfamilienhaus | 5.19 | 100.6 | +0.6 % | +1.0 % |
| Neubau Bürogebäude | 4.40 | **99.9** | **−0.1 %** | +0.8 % |
| Renovation Mehrfamilienhaus | 25.30 | 100.4 | +0.4 % | **+0.6 %** |
| Renovation Bürogebäude | 15.27 | 100.7 | +0.7 % | +1.2 % |
| Tiefbau | 23.54 | 100.9 | +0.9 % | +1.2 % |

**Praxisfolge:** Umbau- und Sanierungskennwerte (Healthcare-Umbau, TDD-Nachführung) mit
**Renovation MFH** indexieren, nicht mit dem Neubau- oder Totalwert — der Unterschied beträgt
0.4 Prozentpunkte pro Jahr und läuft in dieselbe Richtung wie die ohnehin knappen Umbaubänder.
Als **Nutzungsregel 7** in der Datenquellen-Registry verankert.

**Publikationsrhythmus primärverifiziert:** «Der Baupreisindex wird halbjährlich berechnet (April
und Oktober) und die Ergebnisse im **Juni und Dezember** publiziert» — die im Eintrag vom
13.08.2026 notierte nächste Nachführung **Dez-2026** ist damit bestätigt, nicht geschätzt.

## 5 · D2 (Bodenpreise) für die Stadt Zürich geschlossen

D2 läuft seit dem Anlegen der KB als hoch priorisierte Bring-Schuld: «Bodenpreise nur Screenshots,
heute nicht maschinenlesbar». Für das Gebiet der **Stadt Zürich** ist sie erledigt.

Statistik Stadt Zürich publiziert die LIMA-Handänderungsstatistik als **offenes CSV unter CC0** —
kein Abo, kein Zugangsgesuch: Datensatz `bau_hae_lima_preise_anzahl_hae_art_bebauung_jahr_od5144`,
CSV-Stand 05.02.2026, Daten 2008-2025, 9'908 Zeilen, 47 Gebiete bis auf **Quartiersebene**, je
Bebauungsart und mit **Fallzahlen**. Entscheidend ist die zweite Preisreihe: **«Preis pro m2
Grundstücksfläche, abzüglich Versicherungswert»** — eine Bodenpreis-Näherung, methodisch die
Umkehrung der Realwert-Formel und damit direkt anschlussfähig an
[[lageklasse-landwertanteil]].

Ganze Stadt, ganze Liegenschaft, Median CHF/m2 Grundstücksfläche: 2025 EFH 4'879 / MFH 6'627
(110 bzw. 165 Handänderungen), 2021 EFH 3'992 / MFH 5'854. Quartiersspreizung 2025: Fluntern EFH
7'726 gegen Affoltern EFH 2'483 — Faktor rund 3, die empirische Entsprechung der
Lageklassen-Spreizung von Tab. 8.

Vier Vorbehalte sind im Artikel mitgeschrieben (dünne Fallzahlen auf Quartiersebene mit
Anonymisierungsbändern; Versicherungswert ohne Alterswertminderung; nur Stadt Zürich;
nur Freihandverkäufe). **Ausserhalb der Stadt bleibt D2 offen und hoch** — die JANS-Kerngemeinden
liegen am Seeufer, im Bezirk Horgen und in SZ.

**Nebenwirkung:** der seit 06.2026 offene Punkt «LK-Beispielrechnung an einem realen JANS-Objekt
gegen Bodenpreis-Vergleichswert spiegeln» ist für Stadtzürcher Objekte jetzt durchführbar. Nicht
ausgeführt — es fehlt ein JANS-Bewertungsfall in der Stadt Zürich (jüngster Fall Wangen SZ,
06.2026).

---

## Geprüft, kein Befund

- **Ertragswert/DCF:** Marktanker aktuell (SNB-Leitzins 0.00 % seit 18.06.2026, Referenzzins
  1.25 %, nächste BWO-Publikation 01.09.2026, nächster SNB-Entscheid 24.09.2026 — bereits in
  Vertiefungslauf 1 geprüft). Der ⚠-Vermerk zum **Basiszinssatz** (5-Jahres-Durchschnitt der
  variablen ersten Hypotheken der Kantonalbank) ist korrekt als «bei Anwendung prüfen» gesetzt;
  eine aktuelle Reihe wurde nicht beschafft — der SNB-Datenwürfel für Hypothekarzinssätze war über
  die geprüften Cube-IDs nicht auffindbar. Bleibt bewusst als Anwendungsvorbehalt stehen, nicht
  als Kennwert geraten.
- **Vergleichswert/hedonisch:** `last_updated` 13.08.2026, Marktpuls-Anker (SREBI Q2-2026,
  IMPI Q2-2026) frisch; kein neuer Publikationstermin fällig.
- **Residualwertmethode:** Methodenartikel, zeitunabhängige Rechenlogik; die marktsensitiven
  Inputs (Erstellungskosten, Zielrendite) hängen an `realwert-sachwert` und `ertragswert-dcf` und
  sind dort geprüft. Kein eigener Nachführungsbedarf.

## Bewusst nicht angefasst

- **T-Regelgeschoss** (0.70 vs. 0.75) — Fachentscheid Raphael, `needs-decision`-Box unverändert.
- **T-Umlaut** (KB-weite ae/oe/ue-Schreibung) — review-pflichtig, kein blinder Massenersatz. Neu
  geschriebener Text dieses Laufs verwendet echte Umlaute.
- **Tabellen-Neurechnung auf 1.358** — hängt an D15 und am 1.346/1.334-Entscheid.

## Werkzeug-Befund (Station Revendo)

Auf dieser Station fehlen **pdftotext/poppler**; PDF-Belege waren zunächst nicht lesbar, was einen
Grossteil dieser Arbeit blockiert hätte. Behelf: `pypdf` in einem Scratchpad-venv installiert,
damit sind der 16-seitige Methodenbericht und die HEV-Indexreihe im Volltext gelesen worden. Der
venv liegt im Scratchpad und ist damit **flüchtig**. Empfehlung: `brew install poppler` auf dieser
Station, damit Belegarbeit an PDFs nicht bei jedem Lauf neu improvisiert werden muss. Nicht selbst
installiert — Systemänderung, gehört zu Raphael.

## Geänderte Dateien

- `wiki/realwert-sachwert.md` — Fassungsvermerk ZIW (drei Punkte), BFS-Teilindex-Tabelle nach
  Bauwerksart, `last_updated` + `sources` nachgeführt. **Kein Kennwert geändert.**
- `wiki/lageklasse-landwertanteil.md` — neuer Abschnitt LIMA-Bodenpreis-Näherung mit Zahlen und
  vier Vorbehalten, offener Kalibrierungspunkt als durchführbar markiert, Frontmatter nachgeführt.
- `wiki/datenquellen-registry.md` — BFS- und ZIW-Zeilen auf verifizierten Stand, LIMA als neue
  Bodenpreis-Quelle, neue **Nutzungsregel 7** (Teuerung je Bauwerksart).
- `wiki/wissensluecken.md` — **D15** neu, **D2** auf «teilweise geschlossen», Run-Eintrag.
- `CHANGELOG.md` — Eintrag.

## Quellen dieses Laufs

1. Statistik Stadt Zürich, **ZIW-Indextabelle Stichtag 01.04.2026**, `stadt-zuerich.ch/ziw`,
   abgerufen 23.08.2026.
2. Statistik Stadt Zürich, **«Methodenbericht Revision 2025 — Zürcher Index der Wohnbaupreise»**,
   Juni 2026, PDF `2026-07-07_Methodenbericht-ZIW.pdf`, 16 S., Volltext.
3. Statistik Stadt Zürich, **ZIW-Methodenseite**, abgerufen 23.08.2026.
4. **BFS, Baupreisindex**, Hauptresultate nach Bauwerksart, Basis Oktober 2025 = 100, Stand
   April 2026 (publ. Juni 2026), abgerufen 23.08.2026.
5. **HEV Schwyz**, Reproduktion der verketteten ZIW-Reihe 1939-2025, Publikationsstand
   01.01.2026, Volltext gelesen 23.08.2026.
6. **Open Data Zürich / Statistik Stadt Zürich**, Datensatz
   `bau_hae_lima_preise_anzahl_hae_art_bebauung_jahr_od5144`, CSV-Stand 05.02.2026, CC0,
   heruntergeladen und ausgewertet 23.08.2026.
7. nau.ch, 08.07.2026 — nur für das **Publikationsdatum** der ZIW-Medienmitteilung
   (Sekundärquelle, als solche gekennzeichnet).
