# QUESTIONS — wissen/grobkosten

Offene Fragen / Wissenslücken / ungelöste Spannungen. Neueste zuoberst.

## 2026-08-23 (Vertiefungslauf 7 Revendo) — Vorlagen-Kontamination bei Reckholdern nachgewiesen; ein GV bleibt offen

**Nachgerechnet, nicht vermutet.** Der Roh-Beleg `raw/2304-reckholdern.md` hält fest, in Dokument 2
(Grobkostenberechnung 24.11.2023) stamme der **Renditeblock** vermutlich aus einer Thalwil-Vorlage,
die **eBKP-H-Tabelle** sei dagegen «rechnerisch konsistent» und «projektspezifisch gerechnet».
**Der zweite Teil ist widerlegt.**

Dokument 2 nennt **GV 1'715 m³** und die Kennwerte **698 / 1'008 / 1'086 CHF/m³**. Gegen das eigene
GV ergeben dieselben Beträge **1'110 / 1'602 / 1'726** — **alle drei um exakt +59 % daneben**. Der
Faktor ist **2'725 / 1'715 = 1.589**, und **2'725 m³ ist das GV von Haus Deuber, Thalwil**. Dort
gehen alle vier Kennwerte exakt auf (698.3 / 1'008.4 / 1'086.2 / 3'375.1 CHF/m² GF). **Auch der
Flächenblock ist Zahl für Zahl identisch** (GF 877 · HNF 392 · NNF 190 · AGF 303 m²).

**Schluss:** nicht nur der Renditeblock, sondern **der gesamte Kosten- und Flächenteil** von
Dokument 2 stammt aus der Thalwil-Vorlage; aktualisiert wurde offenbar allein das GV-Feld. Die
Tabelle ist in sich summenrichtig — sie beschreibt nur **ein anderes Gebäude**. **Aus Reckholdern
Dokument 2 ist kein Kennwert zu ziehen.**

**Zwei Entwarnungen, beide geprüft:**
- **Der geführte Kennwert 1'735 CHF/m³ ist nicht betroffen** — er stammt aus **Dokument 5**
  (KV 31.12.2023, GV 1'986: 3'446'500/1'986 = 1'735.4). Run 4 hatte bewusst auf die spätere, in
  sich geschlossene Quelle umgestellt. Nichts nachzurechnen.
- **Haus Deuber ist nicht seinerseits kontaminiert** — die Prüfrichtung wurde umgekehrt, dort geht
  alles auf; der Datensatz ist die Originalquelle.

### NEUE OFFENE FRAGE — zwei Gebäudevolumen für dasselbe Haus

Dokument 2 nennt **1'715 m³**, Dokument 5 **1'986 m³** — **15.8 % Unterschied** innerhalb von fünf
Wochen (24.11. gegen 31.12.2023). Erklärbar durch eine Projektänderung, **aber nicht belegt** — und
nach diesem Befund ist nicht auszuschliessen, dass **auch 1'715 ein Vorlagenwert** ist. Der
geführte Kennwert nutzt 1'986 aus der jüngeren, in sich konsistenten Quelle und bleibt die
vertretbare Wahl. **Zu klären wäre es nur am Original** (Projektordner `AR - 07 Archiv/01_Projekte/
2304 Reckholdern/`) — lohnt sich erst, wenn Reckholdern für eine Median-Bildung gebraucht wird.

### Methodenlehre

**Eine in sich summenrichtige Tabelle ist noch kein projektspezifischer Beleg.** Der Fehler war
hier nicht in den Zahlen zu finden, sondern nur im **Quervergleich mit einem zweiten Projekt** —
die Kennwerte einer Vorlage sind intern immer konsistent, weil sie aus einem echten Projekt
stammen. **Prüfregel:** bei jedem Kennwert einmal `Kosten ÷ Bezugsgrösse` selbst nachrechnen und
gegen den im Dokument genannten Kennwert halten. Stimmen sie nicht überein, gehört mindestens eine
der beiden Zahlen nicht zum Objekt. Das ist eine Minute Arbeit und hätte diesen Fall im Run 3
sofort sichtbar gemacht.

## 2026-08-23 (Vertiefungslauf 6 Revendo) — Muster erkannt: BKP-Zahlen ohne Scope sind die häufigste stille Fehlerquelle im Hub

**Vorschlag an Raphael, nicht selbst ausgeführt.** Im Lauf dieses Tages ist **viermal unabhängig**
dieselbe Fehlerquelle aufgetaucht — eine BKP-Zahl ohne Angabe ihres Umfangs:

| # | Fall | Fehlende Angabe | Materielle Folge |
|---|---|---|---|
| 1 | Neuwert-Richtwerte Tab. 2 (Schätzungsanleitung) | BKP 2 allein oder BKP 1–9? | **rund 10 %** — offen als **Frage 1** / `immobilienbewertung` **D13**, seit 01.08.2026 |
| 2 | JANS-Kalkulationsblatt, Umrechnung BKP 2 → BKP 1–5 | Anteil 75 % gegen amtlich 89.4 % | **rund 19 %** auf jeden EFH-Neuwert — neu als **D16** |
| 3 | **Art. 32 Abs. 2 LSV** (seit 01.04.2026 geltendes Recht) | «Gebäudekosten nach BKP» — **kein Umfang genannt** | **rund ein Drittel** des zumutbaren Schallschutz-Budgets |
| 4 | Kostenband `wohnen-mfh-urban.json` | BKP 1–9 gegen BKP 1–5 der Nachbar-KBs | Vergleich **unzulässig**, Definitions- statt Sachdifferenz |

**Das ist kein Zufall, sondern ein Muster.** Vier Fälle, vier verschiedene Quellenarten (eine
Fachtabelle, ein internes Kalkulationsblatt, ein Bundeserlass, ein Wettbewerbs-Kennwert) — und in
jedem einzelnen entsteht der Fehler nicht durch eine falsche Zahl, sondern durch eine **fehlende
Angabe**. Das macht ihn besonders tückisch: die Zahl ist richtig, sieht richtig aus, wird korrekt
zitiert — und ist trotzdem falsch verwendet.

**Vorschlag:** die Rule `rules/bkp-2017-referenz.md` regelt heute die **Code-Disziplin** (nie eine
BKP-Nummer erfinden, immer in der Liste nachschlagen). Sie regelt **nicht** die
**Scope-Disziplin**. Eine Ergänzung im Sinne von

> «Jede BKP-**Kostenzahl** trägt ihren Umfang mit (z. B. *BKP 2*, *BKP 1–5*, *BKP 1–9*) und, wo
> relevant, den MwSt-Status. Zahlen ohne Umfangsangabe werden nicht über die Scope-Grenze hinweg
> verglichen, auch nicht überschlägig. Nennt eine **Fremdquelle** keinen Umfang, wird das
> ausdrücklich als offen vermerkt statt stillschweigend angenommen.»

würde alle vier Fälle abdecken und kostet in der Anwendung nichts.

**Bewusst nicht selbst gemacht:** `rules/bkp-2017-referenz.md` gilt hub-weit für alle Skills,
Agents und Stationen — eine Regeländerung dort ist keine Bibliothekars-Arbeit, sondern Deine.
Dieselbe Zurückhaltung wie bei `wissen/tools/*.sh` (gemeinsame Infrastruktur) und bei der KB
`normen` (andere Station).

### Fertiger Regel-Entwurf (23.08.2026) — nur einsetzen, nichts mehr auszuformulieren

Der Entwurf deckt **alle drei** Muster ab, die am 23.08.2026 in den vier bearbeiteten
Wissensbasen aufgetaucht sind: fehlender **Scope**, fehlender **Preisstand**, fehlende **Auflage**.
Sie haben dieselbe Form — nicht die Zahl ist falsch, sondern eine Angabe fehlt. Der Text ist als
Ergänzung von `rules/bkp-2017-referenz.md` formuliert; die beiden letzten Punkte gehen über den
BKP hinaus und könnten auch in eine eigene Regel, das ist Geschmackssache.

---

**## Scope-Disziplin bei Kostenzahlen (Ergänzung)**

Die Regeln oben sichern die **Code**-Disziplin: nie eine BKP-Nummer erfinden, immer in der Liste
nachschlagen. Sie sichern nicht die **Scope**-Disziplin. Vier Fälle am 23.08.2026 zeigen, dass dort
die häufigere Fehlerquelle liegt — in allen vieren war die Zahl richtig und wurde trotzdem falsch
verwendet.

1. **Jede BKP-Kostenzahl trägt ihren Umfang mit**, ausgeschrieben: *BKP 2*, *BKP 1–5*, *BKP 1–9*.
   Wo relevant zusätzlich den **MwSt-Status** und die **Bezugsgrösse** (m² GF, m² HNF, m² NF,
   m³ GV). Eine Kostenzahl ohne diese Angaben ist unvollständig, nicht bloss unpräzis.
2. **Kein Vergleich über die Scope-Grenze**, auch nicht überschlägig. Wer einen BKP-1–9-Wert gegen
   einen BKP-1–5-Wert hält, erzeugt eine Differenz, die eine **Definitionsdifferenz** ist. Dasselbe
   gilt für Bezugsgrössen: HNF gegen NF, GF gegen GV.
3. **Nennt eine Fremdquelle keinen Umfang, wird das ausdrücklich als offen vermerkt** statt
   stillschweigend angenommen. Auch dann, wenn die Quelle ein Erlass ist: Art. 32 Abs. 2 LSV
   verlangt seit 01.04.2026 «1 % der Gebäudekosten nach Baukostenplan BKP» und nennt keinen
   Umfang — der Unterschied beträgt dort rund ein Drittel des zumutbaren Budgets.
4. **Jeder Kennwert trägt seinen Preisstand** (Monat/Jahr) und, wo er indexiert wurde, den
   verwendeten **Index samt Bauwerksart und Region**. Ein Kennwert ohne Preisstand ist wie eine
   BKP-Zahl ohne Umfang. Wird indexiert, dann **beidseitig oder gar nicht** — eine einseitige
   Indexierung (nur Kosten, nicht Erträge) verzerrt stärker als keine.
5. **Jedes Standardwerk trägt seine Auflage.** Beim Zitieren entweder die belegte Auflage nennen
   oder das Jahr weglassen — aber **nie eine Seitenzahl**, die für die aktuelle Auflage nicht
   geprüft ist. Seitenzahlen wandern zwischen Auflagen; das ist die häufigste stille
   Falschzitierung. Prüfanlass ist die **Verwendung**, nicht der Kalender.
6. **Rückrechnen statt übernehmen.** Bei jedem übernommenen Kennwert einmal selbst
   `Kosten ÷ Bezugsgrösse` rechnen und gegen den in der Quelle genannten Kennwert halten. Stimmen
   sie nicht überein, gehört mindestens eine der beiden Zahlen nicht zum Objekt. Eine in sich
   summenrichtige Tabelle ist **kein** Beleg dafür, dass sie das richtige Objekt beschreibt — die
   Zahlen einer Vorlage sind intern immer konsistent.

*Anlass und Belege: `wissen/grobkosten/wiki/QUESTIONS.md` und `wissen/immobilienbewertung/CHANGELOG.md`,
je Eintrag 23.08.2026. Punkt 6 hat am selben Tag zwei Fehler gefunden, die seit Juli unentdeckt waren.*

---


## 2026-08-23 (Vertiefungslauf 3 Revendo) — die im Vorlauf eröffnete Frage ist geschlossen: verkettete BFS-Reihe gefunden, Holzbau-Zuschlag fortgeschrieben

Der Eintrag unten hat eine neue offene Frage eröffnet («verkettete BFS-Reihe je Bauwerksart ab 2023
beschaffen») und die geprüften Sackgassen genannt. Sie ist im selben Tag geschlossen — **der zuvor
geprüfte Weg war schlicht der falsche.**

### Wo die Reihe liegt

**Nicht** in der PX-Web-Schnittstelle des BFS (dort gibt es keinen `px-x-05…`-Präfix, 650
Datenbanken geprüft) und **nicht** auf der Indexseite (die zeigt nur den aktuellen Stichtag),
sondern als **Publikationstabelle im BFS-Datenkatalog**: «Schweizerischer Baupreisindex —
Entwicklung der Baupreise (Multibasen), Indexwerte pro Grossregion und pro Objekttyp», **XLSX über
opendata.swiss**, Datenstand **21.08.2026**, Blatt «2020» (Basis Oktober 2020 = 100, verkettet),
Reihen ab 1998 in Halbjahresschritten, je Grossregion und Objekttyp.

**Methodenhinweis für künftige Läufe:** bei BFS-Reihen zuerst **opendata.swiss** nach der
Publikationstabelle absuchen, nicht die PX-Web-API. Die Preisstatistiken liegen dort als XLSX,
nicht als Cube.

### Ergebnis: der Zuschlag ist erstmals unabhängig fortgeschrieben

Von **April 2023** (Indexstand der Wüest/Lignum/BAFU-Studie) bis **April 2026**:

| Reihe | Δ |
|---|---|
| Schweiz, Neubau MFH | **+2.35 %** |
| Schweiz, Neubau MFH aus Holz | **+1.97 %** |
| Region Zürich, Neubau MFH | **+2.78 %** |
| Region Zürich, Neubau MFH aus Holz | **+1.88 %** |

**Der Holzbau ist langsamer gestiegen als der Massivbau-Proxy** — schweizweit um 0.38, in der
**Grossregion Zürich um 0.90 Prozentpunkte**. Der Zuschlag hat sich **nicht ausgeweitet, sondern
leicht verengt**: +13 % (2023, oberes Segment) wird zu **+12.6 % (CH)** bzw. **+12.0 % (Region
Zürich)**.

**Der Kennwert wird NICHT geändert.** 0.4 bis 0.9 Prozentpunkte über drei Jahre liegen deutlich
innerhalb der Ableseunschärfe der Ausgangsstudie (Diagramm-Ablesung, ca.-Werte). Die
Fortschreibung ist als **Kontrolle** geführt; ihr Ergebnis lautet: *der Zuschlag von 2023 ist drei
Jahre später immer noch tragfähig.* Zwei Annahmen sind dabei benannt — der Zuschlag ist ein
**Kosten**verhältnis, der Index misst **Preis**entwicklung; und die Bewegung ist kleiner als die
Unschärfe der Quelle.

### Drei Nebenbefunde

1. **Vorzeichenwechsel.** Auf Basis Oktober 2020 startet der Holzbau-Index 2023 **über** dem
   Massivbau (116.5 gegen 114.9): von 2020 bis 2023 stieg Holz **stärker**, seit 2023 **schwächer**.
   Der Kostendruck hat sich umgekehrt — das stützt die Ausgangsstudie in ihrem Zeitfenster und warnt
   zugleich davor, ihren Zuschlag unbesehen weit zu verlängern.
2. **Renovation bestätigt sich über drei Jahre.** Renovation MFH **+1.94 %** gegen Neubau MFH
   **+2.35 % (CH)** bzw. **+2.78 % (ZH)**. Umbaukennwerte mit dem Neubau-Anker zu indexieren
   überzeichnet die Teuerung **systematisch**, nicht nur zufällig in einem Halbjahr.
3. **Der ZIW ist unabhängig bestätigt.** Region Zürich «Neubau MFH» steigt Okt-2025 → Apr-2026 um
   **+0.59 %**, im Jahr um **+0.85 %**; der ZIW meldet **+0.6 %** und **+0.9 %**. Praktisch
   deckungsgleich — genau wie es der ZIW-Methodenbericht beschreibt. Damit ist der Nachtrag im
   Abschnitt «Baupreisindex ZH» **an einer zweiten, unabhängig gezogenen Quelle bestätigt**.

## 2026-08-23 (Vertiefungslauf 2 Revendo) — Holzbau-Zuschlag: amtlicher Index gefunden, Anwendungsgrenze belegt, neue offene Frage

Zweite Runde. Angesetzt beim **Holzbau-Zuschlag**, weil er der einzige Kennwert dieser KB ist, der
an **einer einzigen Studie** hängt (Wüest/Lignum/BAFU, Indexstand April 2023, 17 Holzbauten) und
seit dem 30.07.2026 nicht mehr gegengeprüft wurde.

### Neu: es gibt einen amtlichen, laufend fortgeschriebenen Holzbau-Preisindex

Der **BFS-Baupreisindex führt den Holzbau als eigene Bauwerksart** — «Neubau Mehrfamilienhaus aus
Holz», Gewicht 3.85 neben «Neubau Mehrfamilienhaus» mit Gewicht 18.91. Diese KB kannte ihn nicht.
Damit ist die Zuschlagsfrage künftig **laufend überprüfbar**, statt an einer Momentaufnahme zu
hängen. Stand April 2026 (Basis Okt-2025 = 100): Massivbau-Proxy **100.7 / +1.0 % YoY**, Holzbau
**100.6 / +1.1 % YoY**.

**Was folgt:** über das letzte Jahr laufen die beiden Bauweisen **praktisch parallel** (0.1
Prozentpunkte Differenz, innerhalb der Publikationsgenauigkeit) — kein Hinweis auf ein
Auseinanderlaufen. **Was nicht folgt:** die volle Strecke seit dem Studien-Indexstand April 2023
ist damit **nicht** geprüft. Der Zuschlag ist für das letzte Jahr nicht widerlegt, aber auch nicht
über die ganze Strecke bestätigt.

### NEUE OFFENE FRAGE — verkettete BFS-Reihe je Bauwerksart ab 2023 beschaffen

Um den Zuschlag unabhängig fortzuschreiben, braucht es die **verkettete Reihe je Bauwerksart
zurück bis April 2023**. In diesem Lauf **nicht beschaffbar**: die BFS-Indexseite zeigt nur den
aktuellen Stichtag, und die PX-Web-Schnittstelle des BFS (`pxweb.bfs.admin.ch/api/v1/de`,
650 Datenbanken geprüft) führt die Baupreis-Datenbank **nicht** — es gibt dort keinen
`px-x-05…`-Präfix. Nächste zu prüfende Wege: STAT-TAB-Cube-Download über den BFS-Datenkatalog,
oder die publizierte Excel-Tabelle zur Medienmitteilung. **Kein Rateweg** — ohne die Reihe bleibt
die Fortschreibung offen.

### ⚠ Neu belegte Anwendungsgrenze: der Zuschlag passt nicht auf Hybridbauten

Der **ZIW-Methodenbericht Revision 2025** (Statistik Stadt Zürich, Juni 2026, Kap. 2.4) begründet,
warum Statistik Stadt Zürich **auf einen eigenen Holzbauindex verzichtet** — die Begründung stammt
aus zwei Workshops mit acht Bauexpertinnen und -experten und trifft die Anwendung dieses Kennwerts
direkt: reine Holzbauten sind im **städtischen MFH-Bau selten**; gebaut wird **überwiegend
hybrid**, und **je dichter, desto eher Massivbau**; **hybrides Bauen steht dem Massivbau näher als
dem reinen Holzbau**; die **Abgrenzung ist nicht eindeutig**, weil unklar ist, welcher
Materialanteil als «Holzbau» gilt.

**Praxisfolge, in `wiki/kennwerte.md` verankert:** den Zuschlag nur auf Projekte mit
**überwiegendem Holztragwerk** anwenden. Beim Hybridbau — dem Regelfall im städtischen
Wohnungsbau — ist der Massivbau-Kennwert der nähere Ausgangspunkt, und der Zuschlag ist **nicht
anteilig interpolierbar**, weil keine Quelle einen Materialanteil-Schwellenwert belegt. Das ist
keine Einschränkung des Kennwerts, sondern seine bisher fehlende Anwendungsbedingung.

*Quellen: BFS, Baupreisindex, Hauptresultate nach Bauwerksart, Stand April 2026 (abgerufen
23.08.2026) · Statistik Stadt Zürich, ZIW-Methodenbericht Revision 2025, Kap. 2.4, Volltext.*

## 2026-08-23 (Vertiefungslauf Revendo, Auftrag Raphael) — Frage 2 richtig geschlossen statt falsch geschlossen; zwei neue amtliche Kennwert-Blöcke

**Anlass.** Der Eintrag desselben Tages (unten) hat Frage 2 (01.04.2026-Indexstand) mit dem
Befund geschlossen, die Stadt Zürich publiziere den ZIW «mutmasslich jährlich zum
Oktober-Stichtag», der 01.04.2026-Wert sei «unbestätigt» und werde «bis Sommer 2027 nicht mehr
aktiv nachverfolgt». Dieser Befund stützt sich auf einen **URL-Muster-Test über
Nachrichten-Slugs** — eine Heuristik über die Benennung von Webseiten, kein Beleg über einen
Publikationsrhythmus. Er ist an den Primärquellen widerlegt.

### Was falsch war, und was stattdessen belegt ist

| Behauptung (23.08.2026, früherer Eintrag) | Belegter Stand |
|---|---|
| «publiziert mutmasslich **jährlich** zum Oktober-Stichtag» | **halbjährlich** — BFS wörtlich: «Der Baupreisindex wird halbjährlich berechnet (April und Oktober) und die Ergebnisse im Juni und Dezember publiziert.» Der ZIW folgt dem mit Versatz: Oktober-Stichtag → Publikation ~Januar, April-Stichtag → Publikation ~Juli |
| «nächster Termin voraussichtlich **Sommer 2027**» | **nächster Stichtag 01.10.2026, Publikation ~Januar 2027** — rund ein Jahr früher als angenommen |
| «01.04.2026-Stand bleibt **unbestätigt**» | **publiziert am 08.07.2026**: Total (BKP 1, 2, 4, 5) = **100.6**, Basis **Oktober 2025 = 100**, April 2025 = 99.7, **Jahresteuerung +0.9 %**; dazu erstmals BKP-Teilindizes (BKP 1 = 102.2, **BKP 2 = 100.4**, BKP 4 = 100.7, BKP 5 = 101.0) |
| «kein Hinweis auf **Rebasierung/neue Gewichtung**» | **Revision 2025 vollzogen** — Basismonat April → Oktober, Gewichtung komplett neu aus 54 realen Kostenvoranschlägen Zürcher MFH-Neubauten 2020–2024, Positionsauswahl vom BFS übernommen (BKP 1 wieder aufgenommen), Honorare nicht mehr aus KBOB |

**Warum die Heuristik danebenlag.** Der URL-Test suchte nach Medienmitteilungs-Slugs. Die
April-Mitteilung existiert, war aber unter dem geprüften Muster nicht auffindbar. Der Wert
selbst steht gar nicht in einer Medienmitteilung, sondern in der **Indextabelle auf der
ZIW-Landingpage** (`stadt-zuerich.ch/ziw`) — die frühere Prüfung hatte diese Seite als
«clientseitig gerendert, liefert keine Zahlenwerte» abgeschrieben. Die Tabelle liegt jedoch als
JSON im HTML-Quelltext und ist mit einem gewöhnlichen `curl` plus Parser vollständig lesbar.
**Lehre für künftige Läufe:** eine Seite gilt erst dann als «liefert nichts», wenn der
Rohquelltext geprüft ist, nicht schon, wenn ein Markdown-Konverter nichts zurückgibt.

### Frage 2 damit geschlossen — richtig

Der 01.04.2026-Stand ist belegt und eingearbeitet, die Faktorentabelle in `wiki/kennwerte.md`
(Abschnitt «Baupreisindex ZH») ist auf **01.04.2026** fortgeschrieben. Der letzte Schritt ist
**kein Kettenglied**, sondern die publizierte Jahresteuerung (100.6/99.7 = 1.009). Die Verkettung
über die Revision hinweg ist amtlich gedeckt (Methodenbericht: «Die alten und die neuen
Indexreihen werden über das Basisjahr verkettet»).

### Zwei Zahlenkollisionen, neu dokumentiert (Fehlerquelle für künftige Läufe)

1. **1.3457 gegen 1.346.** Der neue Faktor 01.04.2004 → 01.04.2026 ist **1.3457** und damit fast
   identisch mit dem *anderen* Anker **1.346** (01.04.2003 → 01.04.2025, geführt in
   `immobilienbewertung`). Zufall, keine Konvergenz — der Stützpunktstreit bleibt offen. Bei
   jeder Verwendung Stützpunkt **und** Zieldatum ausschreiben.
2. **116.1 zweimal.** Der Wert kommt in dieser Indexfamilie mit zwei Bedeutungen vor:
   **01.04.2025 auf Basis 1.4.2010** (HEV-/archis-Tabelle) und **01.10.2025 auf Basis April 2020**
   (Medienmitteilung, Grundlage des Run-16-Nachtrags). Beide korrekt. Ohne Basisangabe
   verschiebt sich der Stichtag stillschweigend um ein halbes Jahr.

### Namensfrage geklärt (war nie explizit festgehalten)

«Zürcher Index der **Wohnbaukosten**» (so diese KB, HEV Schwyz, archis.ch) und «Zürcher Index der
**Wohnbaupreise** (ZIW)» (so Statistik Stadt Zürich) bezeichnen **denselben Index**. Belegt: die
HEV-Tabelle trägt den Titel «Wohnbaukosten», nennt in der Quellenzeile aber «Quelle: Zürcher Index
der Wohnbaupreise | Stadt Zürich»; archis.ch führt dieselbe Reihe unter «Wohnbaukosten» mit dem
Vermerk «zusammengestellt aufgrund der Mitteilungen des Statistischen Amtes der Stadt Zürich» und
identischen Werten (01.04.2025: 143.4 / 116.1 / 115.8 auf den Basen 1998 / 2010 / 2020,
deckungsgleich mit der HEV-Tabelle). Die Verbände führen den historischen Namen weiter.

### Neuer Kennwert-Block: BKP-Anteilsstruktur MFH Stadt Zürich 2025 (amtlich)

Der **ZIW-Methodenbericht Revision 2025** publiziert die vollständige BKP-Gewichtung, abgeleitet
aus **54 realen Kostenvoranschlägen** Zürcher MFH-Neubauten 2020–2024 (aus 210 angefragten),
aggregiert über einen L1-Ansatz und mit acht Bauexpertinnen und -experten plausibilisiert. Damit
liegt erstmals eine **aktuelle, amtliche, quellenoffene BKP-Kostenstruktur** in dieser KB —
der moderne Gegenpart zur 1985er-Tabelle 3 der Schätzungsanleitung. Alle BKP-Codes gegen
`references/bkp-2017/BKP-2017-Liste.md` geprüft (Rule `bkp-2017-referenz`); abweichende
Beschriftungen des Berichts (z. B. «Fundation, Sicherung, Abdichtung» für BKP 17 Spezialtiefbau)
sind mit der BKP-2017-Bezeichnung daneben geführt.

**Nebenbefund zu Frage 1 — Bestätigung der Grössenordnung, keine Antwort.** Der BKP-2-Anteil
beträgt in der ZIW-Struktur 2025 **89.4 %** der Gesamtkosten (BKP 1+2+4+5); aus Tabelle 3 der
Schätzungsanleitung (1985) waren **90.6 %** abgeleitet. Zwei unabhängige Quellen, 40 Jahre
auseinander, 1.2 Prozentpunkte Abstand — das stützt den Umrechnungsfaktor BKP 2 → Gesamtkosten
belastbar. **Frage 1 selbst bleibt offen:** sie betrifft, welchen Scope die m³-Werte von
Tabelle 2 unterstellen, und dazu sagt eine Anteilsstruktur nichts.

**Auffälligster Strukturbefund (auf BKP 2 = 100 % normiert, 1985 → 2025):** Rohbau 1
**35.95 % → 26.30 %** (−9.7 Pp), Honorare **12.55 % → 20.11 %** (+7.6 Pp), Rohbau 2
9.42 % → 13.97 % (+4.6 Pp), Ausbau 1 12.60 % → 7.87 % (−4.7 Pp). **Kein Like-for-like-Delta** —
vier Gründe (andere Grundgesamtheit, definitorische Verschiebungen der Revision, Indexgewichte
statt Vollkostenrechnung, keine Tiefgaragen in der Stichprobe) sind im Artikel mitgeschrieben.

### Unverändert offen

Frage 1 (BKP-Scope Tab. 2), Frage «Standard-Label», Teuerungsanker 1.334 gegen 1.346,
Doppelführung der Neuwert-Richtwerttabelle, T-Regelgeschoss (0.70 gegen 0.75), Estrich/RF1-
Einheitspreis. Alle sechs sind Entscheide oder Beschaffungen Raphaels, keiner autonom lösbar —
in diesem Lauf bewusst nicht angetastet.

**Neu vorgelegt:** mit den BKP-Teilindizes des ZIW gibt es für die Teuerungs-Normalisierung
dieser KB neu die Wahl zwischen **Total** (+0.9 %) und **Gebäude BKP 2** (+0.4 %). Da die
Einzelfälle dieser KB als **BKP 1–5** geführt werden, ist der **Total**-Index hier der richtige
Anker — anders als in `immobilienbewertung`, wo reine Gebäude-Neuwerte an BKP 2 gehören (dort als
D15 registriert). Die Faktorentabelle oben ist deshalb bewusst auf dem **Total** gerechnet; das
ist eine begründete Wahl, kein übersehener Punkt.

*Quellen: Statistik Stadt Zürich, ZIW-Indextabelle `stadt-zuerich.ch/ziw` (abgerufen 23.08.2026)
· Statistik Stadt Zürich, «Methodenbericht Revision 2025 — Zürcher Index der Wohnbaupreise»,
Juni 2026, PDF `2026-07-07_Methodenbericht-ZIW.pdf`, Volltext · BFS, Baupreisindex, Indexseite
(abgerufen 23.08.2026) · HEV Schwyz, verkettete Reihe 1939–2025, Publikationsstand 01.01.2026,
Volltext · archis.ch, Baukostenindex (abgerufen 23.08.2026) · nau.ch 08.07.2026 (nur für das
Publikationsdatum, als Sekundärquelle gekennzeichnet).*

## 2026-08-23 (Interaktive Session, auf Auftrag Raphael) — vier Recherche-Punkte bearbeitet, vier strukturelle Punkte an Raphael zur Entscheidung vorgelegt

**Auftrag:** die offenen Positionen dieser Datei durchgehen, belegte Antworten mit Quelle
nachtragen, Kennwerte nie raten. Vier parallele, gezielte Recherchen durchgeführt (keine
Wiederholung der bereits erschöpften Bibliotheks-Sweeps aus Run 1–16) plus vier strukturelle
Entscheidfragen direkt an Raphael gestellt, da sie seit Wochen nur durch ihn lösbar sind
(Antwort steht bei Abfassung dieses Eintrags noch aus, wird in einem Folge-Eintrag nachgetragen).

**Geschlossen:**

1. **«Thalwil Bohlweg 1»-Projektidentität (offen seit Run 5, 26.07.2026):** geklärt. Eigenständiges
   reales Bewertungsprojekt "8800 Thalwil 9568 Bohlweg 1" (Parzelle 9568), nicht identisch mit
   "2414 THALWIL Bohlweg 3". Details in `wiki/kennwerte.md`, Abschnitt "Run 5". Neuer Nebenfund
   (nicht weiter verifiziert): beide Bohlweg-Liegenschaften scheinen dieselbe Projektnummer 2414
   zu tragen — bei Gelegenheit via bexio/Kontaktabgleich zu prüfen, kein grobkosten-Thema.
2. **01.04.2026-Indexstand (offen seit Run 16, 17.08.2026):** erneut an der Primärquelle
   (Stadt Zürich, WebFetch) geprüft, weiterhin nicht bestätigbar. **Neuer Befund:** ein
   URL-Muster-Test zeigt, dass die Stadt Zürich den ZIW mutmasslich **jährlich zum
   Oktober-Stichtag** publiziert, nicht halbjährlich — der nächste reguläre Termin ist damit
   voraussichtlich erst Sommer 2027 fällig. Diese Frage wird bis dahin **nicht mehr aktiv
   nachverfolgt** (kein Sinn in wiederholten Checks vor dem erwarteten Publikationstermin).
   Details in `wiki/kennwerte.md`, Abschnitt "Baupreisindex ZH".

**Fortschritt, weiterhin offen:**

3. **CHF/m²-Einheitspreis Estrich (BKP 281.0) / K30-RF1-K60-RF1-Bekleidung (BKP 271.1/225.4)
   (Bring-Schuld aus `normen`, offen seit 30.07.2026):** kein sauberer CHF/m²-Wert gefunden, aber
   ein konkreter Fortschritt statt eines weiteren Nullbefunds: zwei echte KISPI-Devis der
   Estermann Gipserunternehmen AG liegen vor, nur pauschal je Stück statt je m² bepreist —
   deshalb weiterhin nicht verwertbar. **Nächster Schritt (kein weiterer Archiv-Sweep mehr
   sinnvoll):** eine m²-aufgeschlüsselte Detailofferte bei Estermann (Othmar Stadelmann) oder
   Boediker Robert AG nachfordern — beide sind bereits reale KISPI-Vertragspartner. Der Versand
   einer solchen Anfrage braucht Raphaels Freigabe (Rule `interaktive-eingriffe`/User-CLAUDE.md
   "Grenzen"), wurde in diesem Lauf nicht ausgelöst. Details in `wiki/kennwerte.md`, Abschnitt
   "Brandschutz-Mehraufwand RF1".
4. **HNF/GF-Regelgeschoss-Faktor 0.70 ohne Quelle (Health-Check 21.07.2026, Ticket
   "T-Regelgeschoss"):** der **Gesamtgebäude**-Faktor 0.60/0.61 hat jetzt eine nachgetragene,
   korrekte Provenienz (`immobilienbewertung/wiki/flaechendefinitionen-sia.md`, "Flächenkonzeption
   Wohnen" R. Jans 20.10.2024 — vorher fälschlich `realwert-sachwert` zitiert, korrigiert). Der
   **Regelgeschoss**-Faktor 0.70 bleibt dagegen unbelegt: dieselbe Quelle nennt dort 0.75, nicht
   0.70 — erneut bestätigt, keine dritte Quelle gefunden. Bleibt Fachentscheid Raphael (siehe
   Frage 5 unten), nicht durch weitere Recherche lösbar.

**Vier strukturelle Fragen direkt an Raphael gestellt (interaktive Session, Antwort steht aus):**

5. **Frage 1 — BKP-Scope im Pre-Check-Tool:** Ist der Faktor 1.13 (Feld G47, "Faktor BKP 2 zu
   BKP 1-5") tatsächlich als BKP2→BKP1-9 gemeint (Feldbeschriftung falsch), oder ist die Ausgabe
   "Total BKP 1-9" in Wahrheit ein BKP-1-5-Total (Ausgabefeld-Beschriftung falsch)? Unverändert
   seit Run 6/13 (27.07.2026) der Haupt-Blocker für eine MFH-Median-Bildung.
6. **Frage 2 — Standard-Label "norm, eloquent":** Bestätigung, dass es sich um fixen
   Dropdown-Vorlagentext handelt, keine bewusste Standard-Einschätzung je Projekt (Vermutung seit
   Run 6, 27.07.2026).
7. **Frage 3 — Teuerungsanker 1.334 vs. 1.346** (Neuwert-Richtwerttabelle, Wissens-Chef Run 25,
   04.08.2026): Empfehlung 1.346 (Tabellenkopf trägt "Stand 2003") zur Bestätigung vorgelegt.
8. **Frage 4 — Doppelführung der Neuwert-Richtwerttabelle** in `grobkosten` und
   `immobilienbewertung`: Ersetzung durch reinen Verweis (Empfehlung) oder Beibehaltung?

Sobald Raphaels Antworten vorliegen: T-Regelgeschoss-Entscheid und Frage 1/2/3/4 in einem
Folge-Lauf umsetzen (Kennwerte-Tabelle entsprechend nachziehen, betroffene Einzelfälle aus Run
6–9 neu bewerten, ggf. erste MFH-Median-Bildung). Bis dahin bleiben alle vier Fragen offen.

## 2026-08-17 (Run 16, unbeaufsichtigter Trainingsauftrag) — Endbedingung erneut bestätigt; ein neuer Punkt: 01.04.2026-Indexstand nicht verifizierbar

**Sachstand:** Die am 13.08.2026 festgestellte Endbedingung (`training/quellen-inventar.md`
vollständig `[x]`/`[-]`) gilt unverändert — SharePoint (`AR - 01/03`, `IMMO - 01/03/06`) auf
neues Material seit dem letzten Rohbeleg (12.08.2026) geprüft, einzige neue Aktivität betrifft
das explizit ausgeklammerte Healthcare-Mandat KISPI. Dieser Lauf war explizit beauftragt
(Bedingung 2 aus dem 13.08.-Eintrag), deshalb gearbeitet statt zurückgestellt — aber gemäss
«Kein Leerlauf-Zwang» auf eine Gegenprüfung/Vertiefung statt neuer Fläche ausgewichen.

**Neuer, kleiner Fortschritt:** Primärquelle des Baupreisindex (Stadt Zürich direkt statt nur
die HEV-SZ-Kopie) liefert einen neuen amtlichen Stand 01.10.2025 (116.1 Punkte, Basis
April 2020=100). In `wiki/kennwerte.md` (Abschnitt "Baupreisindex ZH") und
`raw/zuercher-index-wohnbaupreise-2025-10-update.md` dokumentiert. Effekt auf bestehende
Einzelfälle liegt unter der Rundungsgenauigkeit der KB (+0.26 % auf den Anker) — bewusst nicht
in die Tabellen zurückgerechnet.

**Neuer offener Punkt:** Eine WebSearch-Zusammenfassung deutete einen weiteren Indexstand
01.04.2026 an (116.8 Punkte bzw. eine Rebasierung auf Basis Oktober-2025=100). Ein direkter
Verifikationsversuch an der Primärquelle scheiterte (mutmassliche Presse-URL 404; ein
vermeintlicher BFS-Beleg war ein Alt-Dokument von 2023, falscher Suchtreffer). **Nicht
übernommen.** Für einen künftigen Lauf: `https://www.stadt-zuerich.ch/ziw` (von der
Primärquelle selbst als Datenportal genannt) direkt aufsuchen, sobald dieser Stand fällig sein
könnte — insbesondere prüfen, ob die dort erwähnte Rebasierung (neue Gewichtung ab
Kostenschätzungen 2020-2024) real ist und, falls ja, ob sie die Vergleichbarkeit mit der
1939-Basis-Kette bricht (neue Gewichtung ≠ reine Rebasierung, könnte den Kettenfaktor
verfälschen — vor Übernahme prüfen, nicht nur umrechnen).

**Empfehlung unverändert:** Kein eigener Taktgeber für diese KB (siehe 13.08.-Eintrag unten),
nächster inhaltlich ergiebiger Lauf bei neuem Rohmaterial (Bauabrechnung eines abgeschlossenen
Mandats) oder einem amtlich bestätigten 01.04.2026-Indexstand. Details:
`outputs/2026-08-17_grobkosten-run16.md`.

## 2026-08-13 (Mac Mini Nachtschicht 05:31) — Formale Rücktaktungs-Empfehlung: Endbedingung erreicht, Entscheid liegt bei Raphael

**Nachtrag zum Befund der Vornacht (02:30-Zyklus):** Dieser Lauf holt die dort als «für einen
künftigen kurzen Lauf offen» vermerkte formelle Notiz nach, ohne selbst etwas umzustellen.

**Sachstand:** `training/quellen-inventar.md` zeigt seit Run 15 (11.08.2026) **keine**
verbleibende `[ ]`-Zeile mehr — alle Inventar-Kandidaten sind `[x]` ausgewertet oder `[-]`
als untauglich geschlossen (zuletzt: 2304 Wädenswil Residualwert-Tool, Run 15, BKP-1-9-only).
Die Endbedingung aus `training/PROGRAMM.md` («alle Inventar-Zeilen `[x]`/`[-]` und
`wiki/kennwerte.md` trägt für die geführten Nutzungsarten belegte Werte») ist damit formal
erreicht. `wiki/kennwerte.md` trägt für die geführten Nutzungsarten belegte Werte (u.a.
Reckholdern n=1, Niederhasli-Fall gegengeprüft); für weitere Nutzungsarten bleibt die Basis
`Seed`, aber ohne neues Rohmaterial gibt es dafür aktuell keinen Weg zur Promotion.

**Empfehlung (kein Vollzug, nur Vorlage):** Diese Nachtschicht-Rotation sollte `grobkosten`
nicht mehr routinemässig als Priorität-4-Ziel wählen, sondern erst wieder, wenn eines von
zwei Dingen eintritt: (1) neues Rohmaterial landet in `raw/` (z.B. ein `kostenkontrolle`-Output
eines abgeschlossenen Mandats), oder (2) eine gezielte Vertiefung eines bestehenden
Einzelfalls wird explizit beauftragt. Diese KB kennt **keinen eigenen Taktgeber** (Register
`logbuch/rollen/rollen-map.tsv`: `grobkosten-training` ist «getaktet von der Mac-Mini-
Nachtschicht») — die Rotationslogik selbst müsste die Ausnahme tragen, analog zur
bestehenden Ausschlussliste für baurecht/normen/planungsgrundlagen/wettbewerbs-dna in
`scripts/nachtschicht-run.sh`. **Bewusst nicht selbst umgesetzt**, weil eine Rücktaktung eine
Drosselentscheidung ist (Rule `rollen-taxonomie`: «Drosselentscheidung bleibt bei Raphael») —
anders als der 04.08.-Fall `energie` (dort eine reine Tatsachenkorrektur: ein behaupteter
Taktgeber existierte nachweislich nicht mehr). Rolle in `rollen-map.tsv` bliebe unverändert
zur Diskussion offen (Analogie `planungsgrundlagen`: grower → maintainer nach mehrfacher
Sättigungsbestätigung, dort aber erst nach 28 Bestätigungen und mit Raphaels Entscheid).

## 2026-08-11 (Mac Mini Nachtschicht, Run 15) — Wädenswil-Blocker (07./08.08.) geschlossen: Zugriff über Weg 2 gelungen, Inhalt aber BKP-1-9-only

**Zugriff gelöst:** Der native OneDrive-Mount blieb für `2304 Waedenswil` weiterhin blockiert
(`Resource deadlock avoided`, unverändert seit Run 13). Statt eines dritten identischen
Retry-Versuchs (Budget-Disziplin) über **Weg 2** gegangen: CLI for Microsoft 365
(`spo file get --webUrl <Site> --url <Pfad> --asFile --path <Ziel>`, zertifikatsangemeldet,
liest über Graph/SharePoint-API am hängenden File-Provider vorbei). Alle drei Zieldateien
(zwei Residualwert-PDF, ein Flächenauszug-PDF) vollständig und grössenkorrekt geladen. Dieser
Weg ist jetzt im Wege-Register dokumentiert (`connectors/WEGE.md`) — künftig bei jedem
`Resource deadlock avoided`/OneDrive-Timeout zuerst probieren, statt den Mount erneut
zu testen oder den Fall als blockiert zurückzugeben.

**Inhalt, kein Kennwert:** Beide PDF beschriften ihre einzige Kostensumme eindeutig als
"ERSTELLUNGSKOSTEN TOTAL (BKP 1-9)" — keine BKP-1-5-Teilsumme im Dokument, auch nicht
rechnerisch rückführbar (keine Einzelpositionen). GV zusätzlich nur rechnerisch aus dem
Kennwert zurückgeleitet, nicht SIA-416-ausgemessen. Damit bleibt der seit Run 6 (27.07.2026)
offene Kandidat «2304 Wädenswil Residualwert-Tool» bei einer klaren Negativantwort — **jetzt
abschliessend geschlossen**, nicht mehr offen. Details: `raw/2304-waedenswil-residualwert-
zwei-varianten.md`.

**Kein Kennwert promoviert, kein Fan-out.** Die verbleibenden MFH-Median-Blocker (Frage 1
BKP-1-9-vs-1-5, Frage 2 Standard-Klassifikation) sind durch diesen Lauf unverändert — dieser
Fall war ein eigener, jetzt erledigter Kandidat, keine Antwort auf Frage 1/2 selbst.

## 2026-08-08 (Mac Mini Nachtschicht) — Werkzeug-Hinweis (kein offener Punkt): Kopffelder des Tools "hva" nicht wörtlich übernehmen

Bei der unabhängigen Gegenprüfung des Niederhasli-Belegs (`raw/8155-niederhasli-
seestrasse64.md`) am Original-PDF geklärt: Die im Dokumentkopf beschrifteten Felder
"BKP 1-5 CHF/m² BGF" und "BKP 0-5 CHF/m² BGF" des Drittsoftware-Tools "hva" (Ersteller Loris
Viola) enthalten rechnerisch nachweisbar zusätzlich BKP 9 (Ausstattung/Reserve) bzw. reichen
faktisch bis BKP 0-9 (Anlagekosten-Gesamttotal) — trotz enger Beschriftung. Kein Fehler dieser
KB (der geführte Kennwert 1'032 CHF/m³ stammt aus der eigenen BKP-1-5-Summenrechnung, nicht
aus dem Tool-Kopffeld), aber **Merkpunkt für künftige Läufe**: taucht dasselbe Tool "hva"
wieder auf (z.B. bei weiteren IMMO-Projekten), Kopffelder rechnerisch prüfen statt direkt
übernehmen. Kein offener Punkt, nur Betriebshinweis.

## 2026-08-07 (Mac Mini Nachtschicht) — Run-6-Kandidat «2304 Wädenswil Residualwert-Tool» weiterhin offen: ganzer Projektordner aktuell durch OneDrive-Dateisperre blockiert

**Versucht:** den in Run 6 (27.07.2026) zurückgestellten Kandidaten «2304 Wädenswil
Residualwert-Tool» (CHF/m³-Kennwert 1'566 bereits bekannt, GV und BKP-1-5-Aufschlüsselung
fehlen, «offen für einen künftigen Lauf mit Excel-Einsicht») abzuschliessen. Quelle lokalisiert:
`AR - 03 Studien/2304 Waedenswil/09_Dokumente/03_Residualwertberechnung/` (zwei Varianten,
Zwei Treppenhäuser und Atrium, je PDF+XLSX) sowie Parallelkopien in `04_KTV/01_Kosten/
00_Residualwertberechnung/` und `02_Korrespondenz/02_Nova/230918_AU_Waedenswil/`.

**Befund:** Jeder Leseversuch (`cat`, `cp`, `ditto`, Read-Tool) auf **jede** Datei in diesem
Projektordner (PDF wie XLSX, an fünf verschiedenen Pfaden innerhalb `2304 Waedenswil`
getestet) endet mit `Resource deadlock avoided` (EDEADLK) — es entstehen nur leere/Kurz-
Dateien mit der Fehlermeldung als Inhalt statt echtem PDF/XLSX. **Nicht stationsweit**: eine
Kontrolldatei aus dem Nachbarordner `2305 Muenchenwiler` derselben Bibliothek liest im
selben Moment sauber (726 KB, gültiges PDF). Der Fehler ist damit auf den Ordner
`2304 Waedenswil` eingegrenzt, nicht auf OneDrive/SharePoint allgemein.

**Nicht selbst behoben** (kein Schreibzugriff auf OneDrive-Sync-Interna vom Nachtschicht-Lauf
aus sinnvoll; keine Zerstoerende Aktion ohne Freigabe). Mögliche Ursachen: Datei anderswo
geöffnet (Excel/Finder-Quick-Look auf einer anderen Station), unvollständiger
Cloud-Only-Platzhalter, oder ein Sync-Konflikt speziell dieses Ordners.

**Vorschlag für den nächsten Lauf/für Raphael:** Falls auf einer Station gerade eine Datei
aus `2304 Waedenswil` geöffnet ist, schliessen; sonst OneDrive-Sync für diesen Ordner einmal
antriggern (z. B. Finder-Öffnen + kurz warten) und den Lesetest wiederholen. Bis dahin bleibt
der Kennwert 1'566 CHF/m³ **Einzelposition ohne GV-Beleg**, nicht promotionsfähig.

## 2026-08-06 (Mac Mini Nachtschicht) — Frage 1 (BKP-Scope Tab. 2): «anderes Kapitel prüfen» ist ein Sackgassen-Weg, ein Sackgassen-Argument dazugekommen

**Kein Trigger für eine neue Stufe-1-Exploration seit dem 04.08.2026 (Bring-Schuld `normen`
weiterhin ungedeckt, Frage 1/2 weiterhin offen) — stattdessen den in der Run-12-Notiz
(01.08.2026, unten) selbst vorgeschlagenen «möglichen nächsten Schritt» geprüft, statt die
bekannten leeren Pfade erneut zu durchsuchen** (PROGRAMM.md, «Kein Leerlauf-Zwang»).

**Geprüft und mit Negativbefund geschlossen:** Die Primärquelle-Vermutung, ein anderes Kapitel
derselben «Schätzungsanleitung» könne den BKP-Scope von Tab. 2 explizit definieren, lässt sich
mit dem vorhandenen Bestand **nicht** verfolgen. Das im Ordner `IMMO - 03 KNOW-HOW/06
Schaetzungen/` liegende PDF `schaetzungsanleitung_kap5.pdf` ist laut eigenem Deckblatt
ausschliesslich **«Anhang Schätzungsanleitung, Teil III schätzungstechnische Grundlagen,
Kapitel 5: Tabellen»** — ein reiner Tabellenanhang, 41 Seiten, beginnend bei Tabelle 1
(Abbruchkosten). Die Kapitel 1–4 von Teil III (dort stünde eine allfällige Begriffsdefinition
von «Baukosten»/«Gebäudekosten») sind **nicht im Hub-Bestand** vorhanden; eine Suche im ganzen
Ordner `IMMO - 03 KNOW-HOW` (alle PDFs, `find -iname "*.pdf"`) findet nur dieses eine
Kapitel-5-Dokument. Der Schritt ist damit **nicht offen, sondern archivseitig unmöglich** —
sollte künftig ein weiteres Kapitel derselben Schätzungsanleitung ins Archiv gelangen, dort
zuerst nach der Begriffsdefinition suchen.

**Ein zweites, unabhängiges strukturelles Argument für die bestehende Annahme (BKP 2 allein)
gefunden, layouttreu am Original nachgelesen (`pdftotext -layout`):** Tab. 2 («Richtwerte für
die Bestimmung des Neuwertes») und Tab. 3 («Prozentanteile an den Gebäudekosten BKP 2») stehen
**unmittelbar aufeinanderfolgend auf derselben Doppelseite**, ohne dass ein anderes Thema
dazwischentritt. Tab. 3 liefert exakt den Umrechnungsfaktor BKP 2 → Gesamtkosten (906.3 ‰ =
90.63 %) und bricht ihn weiter auf BKP 20–29 herunter. Diese Anordnung ist die klassische
Dramaturgie eines Schätzungshandbuchs: **erst der m³-Preis des Gebäudes (Tab. 2), gleich
danach das Werkzeug, um von diesem Gebäudewert auf die Gesamtkosten hochzurechnen (Tab. 3).**
Bräuchte Tab. 2 selbst schon BKP 1–9, wäre eine unmittelbar folgende Tabelle zur
BKP-2-Ausschöpfung redundant. Das ist ein **Plausibilitätsargument, kein Beleg** — die Quelle
selbst schreibt weiterhin nur «Baukosten je m³ umbauter Raum (SIA-Norm 116)» ohne BKP-Angabe,
Frage 1 bleibt formal offen und wird hier **nicht** auf `belegt` gehoben. Ergänzt in
`wiki/kennwerte.md`, Abschnitt «Run 12», als zweiter Beleg neben dem bereits geführten
Bandbreiten-Argument aus Run 25.

**Kennwerte.md und CHANGELOG bewusst nicht sonst verändert** — kein neuer Kennwert, kein
promovierter Fall. Diese Frage bleibt der Blocker für eine Median-Bildung, bis Raphael
entscheidet oder ein neuer, eindeutig dokumentierter Fall auftaucht (unverändert gegenüber
04.08.2026).

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Welcher Teuerungsanker gilt für Tab. 2, und bleibt die Doppelführung?

**Entscheid Raphael, nicht autonom lösbar — betrifft Realwert-Ergebnisse direkt.** Die
Neuwert-Richtwerttabelle (Schätzungsanleitung Kap. 5, Tab. 2, Stand 2003) wird derzeit in
**zwei** KBs materiell geführt: hier in `wiki/kennwerte.md` (Abschnitt «Run 12») und in
`wissen/immobilienbewertung/wiki/realwert-sachwert.md`. Die Stände weichen zweifach ab, und
beide bleiben bis zum Entscheid unverändert stehen (gegenseitige Vorbehalte gesetzt, kein Stand
wurde still überschrieben):

1. **Bandbreite — am Original geklärt.** Diese KB gibt je Bauklasse nur die
   **BandUNTERgrenze** wieder, `immobilienbewertung` das **ganze Band**. Verifiziert am
   Original-PDF (`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf`, layouttreu
   extrahiert mit `pdftotext -layout`, 04.08.2026): unter EFH wie unter MFH stehen je Bauklasse
   **zwei** Zahlen. Die Deutung im Roh-Beleg
   (`raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`, «PDF-Layout-Artefakt,
   zwei Unterspalten je Bauklasse, nicht vier Werte») ist damit widerlegt. Gegenprobe aus
   derselben Tabelle: der Block «Grossgewerbe und Industrie» schreibt seine Bänder einzeilig
   als «100 - 200», «150 - 250», «200 - 325», «275 - 375».
2. **Teuerungsanker — offen.** Hier 1.334 (Stützpunkt 01.04.2004 = 907.6), dort 1.346
   (Stützpunkt 01.04.2003 = 899.2). Rund **1 % Abweichung** in jedem hochgerechneten Wert;
   beide Ankerwerte stehen in Tab. 4 desselben Kapitels und sind am Original verifiziert.

**Zwei Fragen an Raphael:** (a) Welcher Anker gilt hub-weit? Empfehlung des Verifikators
**1.346 / 01.04.2003**, weil die Tabelle im Kopf die Fusszeile «Stand 2003» trägt; die
Alternative 1.334 («näher am Berichtsdruck») bleibt als benannte Unsicherheit von rund 1 %
stehen. (b) Wird die Doppelführung durch einen **reinen Verweis** dieser KB auf
`immobilienbewertung` ersetzt (Empfehlung des Verifikators, weil genau die Doppelführung den
Widerspruch erzeugt hat), oder bleibt sie? Spiegel-Eintrag: `wissen/immobilienbewertung/wiki/
wissensluecken.md`, Zeile **D12**.

**Nicht ausgeführt und bewusst offen gelassen:** die Fehlerwurzel in
`raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` (halbierte Tabelle + widerlegte
Artefakt-Begründung). Eingriffe in `raw/` sind nach Rule `wissens-bibliothekar` rückfragepflichtig
— ohne Korrektur dort leitet ein Folgelauf denselben Fehler erneut ab. Ebenfalls offen: der
CHANGELOG-Eintrag «2026-08-01 (Run 12)» trägt dieselbe falsifizierte Schlussfolgerung
(«MFH 467–834 liegt unterhalb des Seed-Bands 850–1'050») und ist als historisches Protokoll
nur mit Korrekturvermerk zu heilen, nicht umzuschreiben.

## 2026-08-04 (Mac Mini Nachtschicht) — Bring-Schuld Estrich/Brandschutzbekleidung (31.07.) weiterhin ungedeckt; Stufe-1-Exploration bleibt erschöpft

**Kein neuer Fund, gezielt gegengeprüft statt neu durchsucht.** Zwei offene Punkte erneut
verifiziert, bevor ein neuer Lauf gestartet würde:

1. **Bring-Schuld aus `normen`** (Eintrag 2026-07-31 unten): CHF-Einheitspreis für
   Zementestrich (CHF/m²/cm) und K30-RF1/K60-RF1-Brandschutzbekleidung (CHF/m²) fehlt weiterhin.
   Heute gezielt geprüft, ob der Fund inzwischen woanders aufgetaucht ist: `wissen/bauprodukte/raw/`
   enthält noch keinen Unterordner zu BKP 214/271 (Gipser-/Estricharbeiten) — die KORPUS-QUEUE
   ist dort noch nicht so weit fortgeschritten. `skills/ausschreibung/referenzen/goldstandard-lv/
   281-unterlagsboden-LV661.md` enthält zwar Estrich-Positionen (022100/031120/741801/741802),
   aber als **Leistungsverzeichnis-Vorlage ohne CHF-Einheitspreise** (Positionskatalog für
   Ausschreibungen, keine ausgefüllte/verglichene Offerte) — kein verwertbarer Kennwert. Weiterhin
   offen: ein reales Devis/eine Unternehmerofferte mit gefüllter Preis-Spalte für diese Positionen.
2. **Frage 1 (BKP-1-9-vs-1-5-Scope) und Frage 2 (Standard-Klassifikation)** bleiben ungelöst;
   beide sind seit Run 10/11 als Blocker für eine Median-Bildung der MFH-Fälle identifiziert und
   brauchen entweder eine Rückfrage an Raphael oder einen neuen, eindeutig dokumentierten Fall.

**Empfehlung (keine eigene Drosselentscheidung, nur Befund):** Die autonome Stufe-1-Exploration
der bekannten SharePoint-/NAS-Bibliotheken ist seit Run 11 (27.07.) nachweislich erschöpft
(alle bekannten `AR -`/`IMMO -` Bereiche gesichtet). Ein weiterer ergebnisloser Lauf ohne neuen
Auslöser (neues Kostenmaterial aus einem laufenden Mandat, neue BKP-214/271-Preise aus
`bauprodukte`, oder Raphaels Antwort zu Frage 1/2) bringt voraussichtlich wieder kein neues
Ergebnis — passend zur Endbedingung in `training/PROGRAMM.md`. Diese KB bleibt bewusst als
`enabled`/Prioritaet-4-Ziel bestehen (keine Statuskopf-Änderung, das ist Raphaels Entscheid,
nicht der Nachtschicht ihre), aber ein künftiger Lauf sollte zuerst hier nachsehen, ob sich einer
der drei Auslöser inzwischen ergeben hat, bevor er erneut die bekannten leeren Pfade durchsucht.

## 2026-08-01 (Mac Mini Nachtschicht, Run 12) — Welchen BKP-Scope meint die Neuwert-Richtwerttabelle der Schätzungsanleitung Kap. 5?

**Offen, blockiert die Promotion eines historischen Cross-Checks zu einem führenden Kennwert.**
`raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` (Tabelle 2, Bauklassen I–VI,
Stand 2003) bezeichnet die Werte nur als «Baukosten je m³ umbauter Raum (SIA-Norm 116)» — ohne
Aussage, ob BKP 2 (Gebäude) allein gemeint ist oder BKP 1–9 (Gesamtkosten inkl. Baugrube,
Umgebung, Honorare, Nebenkosten). Die unmittelbar danebenstehende Tabelle 3 derselben Quelle
zeigt, dass BKP 2 selbst nur 90.63 % einer Gesamtkosten-Grösse ausmacht — die Differenz ist
kostenmässig relevant (rund 10 % zzgl. weiterer BKP-1/3–9-Anteile). Solange das nicht geklärt
ist, bleibt die Tabelle ein reiner Cross-Check in `wiki/kennwerte.md` (Abschnitt «Run 12»), nicht
ein promovierbarer Kennwert. **Möglicher nächster Schritt:** die Primärquelle
(`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf`) enthält evtl. in einem
anderen, hier nicht extrahierten Kapitel eine explizite Scope-Definition dieser Tabelle — bei
Gelegenheit gegenprüfen, nicht als eigener Suchauftrag priorisieren (Quelle ist historisch,
Stand 2003, nachrangig gegenüber realen Einzelfällen).

## 2026-07-31 (Wissens-Chef Run 22) — Warum läuft dieselbe Stichprobe je nach Bezugsgrösse so weit auseinander?

**Ursachenfrage, keine Belegfrage mehr.** Neu belegt ist: die HNF-Reihe (S. 18/36) und die
GV-Reihe (S. 34) des Wüest-/Lignum-/BAFU-Berichts «Holzbaukennzahlen für Investoren»
(26.04.2024) stammen aus **derselben Studie mit derselben Stichprobe** (17 Holzbauten gegen
knapp 50 Massivbau-Referenzen, Indexstand April 2023). Die bisherige Erklärung «verschiedene
Stichproben und beidseitige Diagramm-Ableseunschärfe» ist damit widerlegt (Primärtabellen:
`wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-B-wuest-partner.md`).

Offen bleibt die **Grössenordnung**: der Holzbau-Aufpreis im oberen Preissegment beträgt auf
HNF-Basis **+44.8 %** (6'506 gegen 4'492), auf GV-Basis nur **+12.9 %** (1'100 gegen 974). Als
Erklärung bleibt allein die Bezugsgrösse — HNF zählt definitionsgemäss nur oberirdische
Nutzfläche, GV das ganze Volumen —, was den Faktor 3.5 aber nicht ohne Weiteres trägt.
Zu prüfen: unterscheiden sich die Holzbau-Objekte systematisch in der Flächeneffizienz
(dickere Wandaufbauten → weniger HNF bei gleichem GV), oder erfassen die beiden Tabellen
unterschiedliche Teilmengen der Stichprobe? Der Bericht liegt vor
(`IMMO - 04 Marktpreise/wuest partner/Wuest Reports/Holzbaukennzahlen/`), S. 9 definiert die
Quantile, die Methodik ist dort nachzulesen. **Bis zur Klärung wird kein gemeinsamer Zuschlag
über beide Bezugsgrössen gebildet.**

## 2026-07-31 (Mac Mini Nachtschicht) — Bring-Schuld aus `normen` teilweise eingelöst: Mengen aus Tab. 522-1 erfasst, CHF-Einheitspreis bleibt die Lücke

**Fortschritt, nicht abgeschlossen.** Weiterführung von 2026-07-30c unten. In `wiki/kennwerte.md`
(Abschnitt «Brandschutz-Mehraufwand RF1») neu erfasst: Tab. 522-1 liefert eine belegte, konkrete
Mehrmenge (+30 mm Estrich bei K30-RF1, +50 mm bei K60-RF1 auf Decken RF1), Tab. 340-1 liefert
dagegen nur Mindestgüten, die im Holzbau ohnehin marktüblich sind — voraussichtlich kein
eigener Kostentreiber. Ein CHF/m²-Kennwert nach BKP 214/271 ist damit weiterhin **nicht**
gesetzt: es fehlt ein Einheitspreis Zementestrich (CHF/m²/cm) und ein Einheitspreis
K30-RF1/K60-RF1-Bekleidung (CHF/m²) — beide in `wissen/bauprodukte/` und
`skills/kostenschaetzung/referenzen/` gesucht und nicht gefunden (31.07.2026). **Offen bleibt
konkret:** ein reales Devis/eine Unternehmerofferte mit Estrich- oder
Brandschutzbekleidungs-Position destillieren, sobald eines im `ausschreibung`- oder
`bauprodukte`-Bestand auftaucht — kein Einheitspreis schätzen.

## 2026-07-30c (Wissens-Chef Run 21, Cross-KB) — Bring-Schuld aus `normen`: Brandschutz-Kennwerte sind nie in einen BKP-214/271-Kennwert übersetzt worden

**Offen.** Bring-Schuld aus `normen` Run 30–33 (Nachtrag Run 38). Zwei der Lignum-Destillate in
der führenden Norm-KB tragen einen ausdrücklichen Abnehmer-Auftrag an diese KB
(`wissen/normen/destillate/lignum-4-2-anschluesse-feuerwiderstand.md`, Zeilen 496–500, zu den
Tabellen 340-1 und 522-1; `.../lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`,
Zeilen 852–855, «relevant für die Grobkostenlogik BKP 214/271»). Angekommen ist davon bisher
nichts: bis zu diesem Lauf enthielt weder `wiki/kennwerte.md` noch sonst eine Wiki-Datei dieser
KB einen Verweis auf `normen`.

- **Offen bleibt:** Die Tabellen 340-1 (Baustoffe) und 522-1 (Brandschutzbekleidungen) sind noch
  nicht in einen Kosten-Kennwert nach BKP 214/271 übersetzt. Solange das fehlt, ist der
  Holzbau-Zuschlag bei brandschutztechnisch erhöhten Anforderungen nur eine untere Näherung
  (Vermerk «Anwendungsgrenze (Datenlage)» in `wiki/kennwerte.md`, gesetzt in diesem Lauf).
- **Führung, nicht materiell fortschreiben:** Ob eine RF1-/Kapselungsanforderung im konkreten
  Fall besteht, führen die Lignum-Destillate ausdrücklich NICHT selbst
  (`lignum-4-2-...md`, Zeilen 492–495); massgebend sind die VKF-Brandschutzvorschriften 2015
  bzw. die Arbeitshilfen. Diese KB zieht solche Anforderungen, sie formuliert sie nicht
  (Rule `normen-referenz`).
- **Gegenrichtung noch offen:** In den Abnehmer-Blöcken beider Lignum-Destillate steht nur der
  Gattungsname «kostenschaetzung / grobkosten», kein Zielpfad. Die Präzisierung auf
  `wissen/grobkosten/wiki/kennwerte.md` gehört in die abgebende KB `normen` und ist in diesem
  Lauf nicht erfolgt (anderer Zuständigkeitsbereich).

## 2026-07-30b (Wissens-Chef Run 21) — Korrektur: der Konsistenz-Check des Holzbau-Zuschlags war ungedeckt

**Korrektur zum Eintrag «2026-07-30 — Bring-Schuld aus Run 20 eingelöst» weiter unten (bleibt als
Beweisstand unverändert stehen).** Der dort und in `wiki/kennwerte.md` geführte Konsistenz-Beleg
«Deckt sich grössenordnungsmässig mit dem bereits geführten HNF-Spread (+10–20 %), verfeinert ihn
um die Segment-Differenzierung» ist nicht gedeckt.

- **Der Zuschlag selbst bleibt.** Er ist sauber belegt und datiert (Wüest Partner/Lignum/BAFU,
  25.09.2025, Diagramm-Ablesung 300 dpi, normalisiert auf 01.04.2025). Falsch war allein die
  Behauptung, die HNF-Quelle kenne keine Segment-Differenzierung und stehe nicht im Widerspruch.
- **Tatsächlicher Befund:** Das HNF-Referenzblatt
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`,
  Abschnitt 3, segmentiert gleich benannt und war zum Zeitpunkt der Kalibrierung bereits so
  vorhanden (belegt seit mindestens 25.07.2026, git 7b4c0777). Gerechnet: unteres Segment
  5'000 gegen Massivbau 4'500 = +11 %, oberes 6'200 gegen 4'500 = +38 % CHF/m² HNF, gegen die
  hier geführten ≈ 0 % und ≈ +13 % auf GV-Basis.
- **Nicht Teuerung:** Beide Datensätze ruhen auf demselben Preisstand April 2023. Die Spreizung
  erklärt sich aus Bezugsgrösse (HNF gegen GV), verschiedenen Stichproben und beidseitiger
  Diagramm-Ableseunschärfe. Sie bleibt **ungeklärt**; ein gemeinsamer Zuschlag wird nicht
  gebildet.
- **Belastbar bleibt allein der zweite Check:** Massivbau-Median ≈995 CHF/m³ GV innerhalb des
  eigenen MFH-gehoben-Seed-Bands 850–1'050.
- **Bekannte Fehlstelle im Destillat vom 30.07.2026:** In
  `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` steht die gleichlautende
  Fehlaussage «das untere Preissegment (≈Parität) ist in der HNF-Quelle nicht abgebildet — neue
  Differenzierung, kein Widerspruch». Sie wird dort **bewusst nicht korrigiert** (`raw/` wird nie
  editiert, Rule `wissens-bibliothekar`) und ist hiermit als bekannte Fehlstelle des Destillats
  festgehalten. Massgeblich ist der korrigierte Stand in `wiki/kennwerte.md`.
- **Korrigiert in diesem Lauf:** `wiki/kennwerte.md` (Konsistenz-Absatz),
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  (Zusammenfassung Abschnitt 3 und Schlussabsatz 3b), `CHANGELOG.md` (Richtigstellung).

## 2026-07-30 (Nachtschicht) — `bauenmitholz.info` geprüft: Negativbefund, ca.-Werte bleiben Stand

**Erledigt, Nullbefund:** Der im selben Tag weiter unten offen gelassene Verifikationspunkt
("Diagramm-Ablesung gegen `bauenmitholz.info` prüfen, falls dort Zahlenwerte publiziert sind")
ist geprüft. Ergebnis: Die Seite (inkl. Unterpunkt `/baukostenrechner`) publiziert **keine**
Tabellen — nur eine interaktive App (Wüest Partner) mit 36 anonymisierten Fallbeispielen,
indexbereinigt in einer Grafik dargestellt. Weder die Studie vom 25.09.2025 noch Zahlenwerte
(Median/Q1/Q3/Min/Max) sind dort verlinkt oder publiziert. Die pixel-kalibrierten ca.-Werte aus
Run 20/heute (`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`) bleiben damit der
beste verfügbare Stand — eine Ersetzung durch Originalzahlen wäre nur über die interaktive App
selbst (kein WebFetch-Zugriff) oder direkten Kontakt zu Lignum (`info@lignum.ch`) möglich.
Kennwerte in `kennwerte.md` bleiben unverändert (keine Korrektur nötig, nur der offene Punkt
geschlossen). Details: `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`,
Abschnitt «Verbleibende offene Punkte».

## 2026-07-30 — Bring-Schuld aus Run 20 eingelöst: Holzbau-Zuschlag kalibriert, Methodenwiderspruch aufgelöst

**Erledigt (Mac Mini Nachtschicht):** Die in Run 20 (29.07.2026) übergebene Wüest Partner/
Lignum/BAFU-Studie wurde selbst gezogen (`https://www.minergie.ch/media/
3_holzbau-investionskosten-julia-selberherr.pdf`) und ausgewertet:

- **Vorbedingung 1 geklärt (Stichprobe):** Folie 3 zeigt für den Kostenteil 17 Holzbauten gegen
  50 reale Referenzobjekte (unpaarige Gruppenauswertung), NICHT die «35 Objekte gegen digitalen
  Zwilling»-Paarung — diese Paarungsmethodik gilt belegt nur für das ökologische Fallbeispiel
  (Folie 7, n=1). Folie 2 vermischt beide Methoden in einer Pauschalaussage. Damit ist der von
  `energie` übernommene Widerspruch aufgelöst, nicht nur bestätigt.
- **Vorbedingung 2 (Zahlenlabels fehlen):** Folie 5 (Boxplots BKP1–5/GV und /GF) trägt keine
  Zahlenwerte im Textlayer. Per Pixel-Kalibrierung der Gitterlinien (300-dpi-Rasterung,
  Farbcode-Klassifikation der Balkensegmente) ausdrücklich als **ca.-Werte** abgelesen —
  gleiches Vorgehen wie `energie` bei den unlabelten Treibhausgas-Boxplots.
- **Zuschlag kalibriert:** `wiki/kennwerte.md`, Abschnitt «Zuschläge (multiplikativ)» — die
  pauschale, unbelegte Zeile «Hoher Ausbaustandard/Nachhaltigkeit (Minergie-P, Holz) +5–15 %»
  in Bauweise (Holz, jetzt belegt) und Ausbaustandard (Minergie-P, weiterhin unbelegt) getrennt.
  Ergebnis (Median, auf 01.04.2025 normalisiert via Zürcher Index): Holzbau unteres
  Preissegment ≈ **Parität** mit Massivbau (kein Aufpreis), Holzbau oberes Preissegment ≈
  **+13 %**. Deckt sich grössenordnungsmässig mit dem bereits geführten HNF-Spread
  (+10–20 %), verfeinert ihn um die Segment-Differenzierung.
- **Konsistenz-Check:** Massivbau-Median (≈995 CHF/m³ GV, normalisiert) liegt innerhalb des
  eigenen MFH-gehoben-Seed-Bands dieser KB (850–1'050) — kein Widerspruch zum bestehenden Stand.
- **Abgelegt:** `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` (volle Tabellen,
  Methodik, Preisstand-Normalisierung); Ergänzung in `skills/kostenschaetzung/referenzen/
  20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` (Abschnitt 3b, gemäss Ablage-Konvention
  «Kalibrierungspunkt hier, Referenzblatt dort»).
- **Weiterhin offen:** Diagramm-Ablesung bleibt eine Näherung (keine Originalzahlen); bei
  Gelegenheit gegen `bauenmitholz.info` verifizieren, falls dort Zahlenwerte publiziert sind.
  HNF-Bezug fehlt in dieser Quelle (nur GV/GF).

## 2026-07-29 — Cross-KB `energie` → `grobkosten` (Wissens-Chef Run 20): Bring-Schuld Erstellungskosten Holzbau gegen Massivbau, Kalibrierung des unbelegten Zuschlags +5–15 %

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Der Text
unten folgt dem Verifikationsurteil; die ursprüngliche Fundmeldung trug einen Methodenanspruch, der
für den Kostenteil der Quelle **nicht** belegt ist.

**Die Bring-Schuld.** `wiki/kennwerte.md:200` führt in der Tabelle «Zuschläge (multiplikativ)» den
einzigen Holz-Ansatz des Hubs: «Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) | + 5–15 % |
je nach Zielbild». Der Wert ist ein reiner Seed **ohne Quelle** (Herkunft `CHANGELOG.md:627`,
Anlage der KB) und vermischt zwei Treiber: die **Bauweise** (Holz gegen mineralisch) ist etwas anderes
als der **Ausbaustandard** (Minergie-P). Rekursiver grep «holzbau|massivbau|lignum» über die gesamte KB:
0 Treffer. Aufgabe: den Zuschlag an einer belegten Quelle kalibrieren **und** die beiden Treiber trennen.

**Die Quelle, die genau die Bauweise-Achse liefert.** Wüest Partner AG (Dr. Julia Selberherr) im
Auftrag von Lignum / Holzwirtschaft Schweiz / BAFU, «Massiv- vs. Holzbau: Erstellungskosten und
ökologische Kennzahlen im Vergleich», Präsentation 25.09.2025, 12 Folien. Folie 4 definiert die
Kennzahlen **BKP 1–5 pro GV, pro GF und pro HNF** (plus BKP 2 und BKP 214), teuerungsbereinigt per
**April 2023**, Kategorie Grossregion / Wohnbauten. Folie 5 stellt Massivbau gegen Holzbau (oberes/
unteres Preissegment) auf den Achsen GV und GF gegenüber. Das ist punktgenau die Leitkennzahl dieser
KB (CHF/m³ GV, BKP 1–5, Wohnbau), nicht EBF, nicht HNF-only, nicht Healthcare.

**Vorbedingungen und Vorbehalte, die vor der Auswertung zu klären sind:**

- **Die Quelle liegt NICHT im Hub archiviert** und muss selbst gezogen werden:
  `https://www.minergie.ch/media/3_holzbau-investionskosten-julia-selberherr.pdf` (12 Folien, 2.28 MB,
  Textlayer vorhanden); Ergebnisplattform laut Deck: `bauenmitholz.info`. In `energie` wurde die PDF in
  **Run 83 (21.07.2026)** gelesen, aber nur ökologisch ausgewertet; der Kostenteil wurde **nie**
  extrahiert. `energie/raw/` enthält dazu nur den `_INGESTED.md`-Vermerk (Z. 207, WebSearch/WebFetch).
- **Stichprobe klären, nicht übernehmen.** Die oft zitierten «35 Holzbauten gegen digitalen Zwilling»
  gelten belegt nur für die **ökologische** Hälfte (Folie 7: Fallbeispiel Holzbau gegen digitalen
  Zwilling in mineralischer Bauweise, gleiche Dimensionen/U-Wert/Schall). Für den **Kostenteil** weist
  die Datengrundlagen-Folie 3 eine andere Stichprobe aus: **17 Holzbauten (Baujahr 2019–2022) gegen 50
  reale Referenzobjekte (2001–2022)**, dazu 1 Fallbeispiel Sanierung/Aufstockung (2021) und 2
  Modellrechnungen (2026), Erstellungskosten BKP 1–5 je CHF 5–150 Mio. Folie 2 behauptet pauschal, die
  35 Holzbauten seien «in Bezug auf Kosten und ökologische Kennzahlen» mit dem Zwilling verglichen
  worden; das widerspricht Folie 3 und der Darstellung auf Folie 5 (Realobjekt-Segmentierung nach
  Preissegment, keine Paarbildung). Diese Unklarheit ist **zu klärende Vorbedingung**, keine Tatsache.
- **Zahlenlabels fehlen.** Die Kostenkennzahlen stehen auf Folie 5 nur als **Diagramm ohne
  Zahlenlabels**; im Textlayer existieren bloss die Achsenskalen (BKP 1–5 pro GV 500–2'000, pro GF
  2'000–5'000). Eine Kalibrierung liefert also entweder ausdrücklich als abgelesen markierte ca.-Werte
  (so hat es `energie` bei den ökologischen Boxplots gehandhabt) oder muss über `bauenmitholz.info` gehen.
- **Preisstand normalisieren.** April 2023, Kategorie Grossregion/Wohnbauten. Vor dem Vergleich mit dem
  Preisstand-2026-Band 850–1'050 CHF/m³ GV (MFH gehoben, `kennwerte.md:78`) über den verketteten
  Zürcher Index der Wohnbaukosten (`kennwerte.md:229 ff.`) normalisieren.
- **Ablage-Konvention:** der Kalibrierungspunkt gehört hierhin (hier steht der unbelegte Zuschlag), das
  später destillierte numerische Referenzblatt aber nach `skills/kostenschaetzung/referenzen/` (so am
  07.06.2026 mit dem Wüest-Benchmark gehandhabt, `kennwerte.md:25`) — beides zusammen, nicht als Alternative.

**Warum die Übergabe erst jetzt kommt.** `energie` hat diese Kostenhälfte am **25.07.2026** geprüft und
für sich verworfen, mit der Begründung «Wüest-Partner-Studien nur Gesamtgebäude-Kennwerte»
(`wissen/energie/wiki/QUESTIONS.md:1580-1583`). Für `energie` unbrauchbar, für `grobkosten` genau die
richtige Aggregationsstufe: erkannt, richtig charakterisiert und trotzdem nie übergeben.

## 2026-07-27 — Trainings-Run 18: siebter Sättigungsbeleg in Folge, bewusst KEIN erneuter Sweep

- Kollisionscheck (`ps`, Rule 260724): einziger Treffer die eigene Prozessinstanz. Lauf
  begann ~1 Min. nach dem Run-17-Commit (13:26:11).
- **Bewusst kein erneuter Bibliotheks-/Ereignis-Trigger-Sweep:** Run 17 hat sowohl den
  kanonischen Quellpfad (`04_Buero/02_Projekte`) als auch den `kostenkontrolle`-Ereignis-
  Trigger bereits geprüft (null Treffer, Freshness-Filter `-newermt "2026-07-25"`). Ein
  identischer Re-Check eine Minute später würde garantiert dasselbe Nullergebnis liefern —
  das widerspricht der eigenen Leitplanke «Kein Leerlauf-Zwang», die auch für wiederholte
  Prüfungen ohne Erkenntnisgewinn gilt, nicht nur für erfundene Kennwerte.
- **Registerpflege statt Sweep:** `wiki/INDEX.md` war seit Run 14 nicht mehr nachgeführt
  (Zusammenfassung endete bei Run 14, Run 15-17 fehlten) — nachgetragen.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben ausschliesslich durch Raphael Jans direkt oder neues, real
  abgelegtes Material lösbar — beide sind auf Formel-Ebene (Run 13/14) bereits maximal
  zugespitzt, eine weitere Vertiefung ohne neue Quelle bringt nichts.
- **Sieben aufeinanderfolgende Läufe (12-18) ohne neuen Kennwert** in weniger als 40 Minuten
  Realzeit (12:57-13:27 Uhr) bestätigen den in Run 15/16 gemeldeten Taktungsfehler
  (VOLLGAS-Runner feuert diesen Loop im Minutenabstand statt gemäss `cron_target: "0 9,21
  * * *"`). Diese Empfehlung liegt jetzt viermal identisch vor (Run 15, 16, 17, 18) und
  wiederholt sie hier ein letztes Mal explizit: **kein weiterer grobkosten-Run vor entweder
  (a) einer Antwort von Raphael zu Frage 1/2, oder (b) einem neuen, tatsächlich abgelegten
  Kostenstand mit GV-Bezug** — bis dahin liefert jeder weitere Zyklus nur identische
  Nullbefunde bei realem Budget-/Zeitverbrauch. Details: `outputs/2026-07-27_grobkosten-run18.md`.

## 2026-07-27 — Trainings-Run 17: sechster Sättigungsbeleg in Folge (Run 12–17), Freshness-Check jetzt auf kanonischem Quellpfad

- Lauf begann ~4 Min. nach dem Run-16-Commit. Kein Bibliotheks-/Formel-Sweep wiederholt.
  Diesmal geprüft: `find -iname "*kosten*" -newermt "2026-07-25"` direkt auf
  `/Volumes/daten/04_Buero/02_Projekte/` (kanonischer Quellpfad aus `training/PROGRAMM.md`,
  Run 16 hatte nur den OneDrive-Spiegel geprüft) sowie ein neuer `kostenkontrolle`-Ereignis-
  Trigger (neue Schlussabrechnung seit 20.07.2026) — beide null Treffer.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben nur durch Raphael Jans direkt oder neues Material lösbar.
- Sechs aufeinanderfolgende Läufe (12–17) ohne neuen Kennwert, jetzt auch auf dem
  kanonischen Quellpfad selbst bestätigt (nicht nur dem OneDrive-Spiegel). Ein weiterer
  identischer Lauf ohne neues Signal liefert keinen Erkenntnisgewinn mehr. Empfehlung
  unverändert: auf Ereignis-Trigger zurücktakten bzw. Frage 1/2 im nächsten interaktiven
  Kontakt mit Raphael klären (liegt ausserhalb der Befugnis dieses Loops). Details:
  `outputs/2026-07-27_grobkosten-run17.md`.

## 2026-07-27 — Trainings-Run 16: fünfter Sättigungsbeleg in Folge (Run 12–16), keine neue Frage

- Lauf begann ~2 Min. nach dem Run-15-Commit. Kein Bibliotheks-/Formel-Sweep wiederholt
  (beide bereits ausgeschöpft/abschliessend belegt, Run 11/14). Einziger neuer, günstiger
  Check: `find` nach Kosten-Dateien mit Änderungsdatum nach 27.07.2026 09:00 Uhr in der
  SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–JANS` — null Treffer.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben wie in Run 11–15 beschrieben nur durch Raphael Jans direkt oder
  neues Material lösbar.
- Fünf aufeinanderfolgende Läufe (12–16) ohne neuen Kennwert bestätigen die Taktungs-
  Beobachtung aus Run 15: der VOLLGAS-Runner feuert diesen Loop im Minutenabstand statt
  gemäss `cron_target` 2x täglich. Empfehlung unverändert: auf Ereignis-Trigger zurücktakten
  (liegt ausserhalb der Befugnis dieses Loops). Details: `outputs/2026-07-27_grobkosten-run16.md`.

## 2026-07-27 — Trainings-Run 15: kein neuer Kennwert, vierter Sättigungsbeleg in Folge (Run 12–15) — Taktungshinweis statt Inhaltsfrage

- Lauf begann ~2 Min. nach dem Run-14-Commit; Empfehlung aus Run 14 (kein Sweep in
  unmittelbarer zeitlicher Nähe) befolgt. Keine neue Inhaltsfrage — Frage 1/2 bleiben wie in
  Run 12–14 beschrieben nur durch Raphael Jans direkt oder neues Material lösbar.
- **Einziger neuer Punkt:** Beobachtung zur Taktung selbst. Der Scheduled Task
  (`cron_target: "0 9,21 * * *"`) feuert seit heute Mittag über den VOLLGAS-Runner im
  Minutenabstand statt 2x täglich; vier Läufe in Folge (12–15) ohne neuen Kennwert. Empfehlung
  an `vollgas-chef-radar`/Raphael: diesen Loop jetzt auf den Ereignis-Trigger zurücktakten
  (siehe `training/PROGRAMM.md` Endbedingung), statt im aktuellen Takt weiterlaufen zu lassen.
  Details: `outputs/2026-07-27_grobkosten-run15.md`.

## 2026-07-27 — Trainings-Run 14: Frage-1-Formelbefund auch an der projekteigenen Wald-Exceldatei bestätigt (kein neuer Blocker, aber schärfere Beweislage)

- **Kein Bibliotheks-Sweep, kein Ereignis-Trigger-Re-Check** (Empfehlung Run 13 befolgt).
  Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer die eigene Prozessinstanz (dieser
  Lauf begann ca. 13:06 Uhr, nur Minuten nach dem Run-13-Commit 13:05:46).
- **Umgesetzt (Option b aus Run 13):** Statt eines fachlich unverbundenen Blatts
  ("Sensitivitätsanalyse Cover Pre-Check") wurde ein direkterer, bisher nicht geprüfter Weg
  gewählt: die **projekteigenen** Exceldateien des Wald-Falls selbst (`8636 Wald
  Haselstudstrasse Desktopstudie/…xlsx` und `…Volumenstudie STWE/…xlsx`, SharePoint
  `IMMO - 01 Projekte`) im Formel-Modus geöffnet — bisher hatte nur Run 13 das generische
  Master-Template geprüft, nicht die tatsächlich für `raw/2411-wald-haselstudstrasse.md`
  verwendeten Live-Dateien.
- **Ergebnis:** identische Formelstruktur wie am Master-Template (`G48=1.13` als "Faktor BKP 2
  zu BKP 1-5" beschriftet, fliesst ausschliesslich in die als "Total BKP 1-9" beschriftete
  Summe `I56` ein, kein Rechenschritt für BKP 6-9). Zusätzlich bestätigt: die aus dem PDF
  extrahierten CHF/m³-Werte (1'539/1'765) stimmen mit den Live-Formelwerten (1'537/1'766)
  überein — keine Übertragungsfehler in `raw/2411-wald-haselstudstrasse.md`. Details:
  `raw/2411-wald-haselstudstrasse.md`, Abschnitt "Nachtrag Run 14".
- **Einordnung:** Frage 1 bleibt strukturell ungelöst (weiterhin nur durch Raphaels Antwort auf
  die in Run 13 zugespitzte Ja/Nein-Frage lösbar) — dieser Lauf liefert keine neue offene Frage,
  sondern schliesst eine Lücke in der Beweiskette (Master-Template UND die konkret betroffene
  Projektdatei zeigen dieselbe Inkonsistenz, kein Einzelfall einer veralteten Kopie).
- **Empfehlung für Run 15:** Kein weiterer Formel-Sweep zu Frage 1 — die Beweislage ist jetzt
  vollständig (Master-Template + betroffene Projektdatei). Ein weiterer reiner
  Bibliotheks-Sweep oder Ereignis-Trigger-Check in unmittelbarer zeitlicher Nähe zu diesem Lauf
  bleibt weiterhin ohne Erkenntnisgewinn (Materialmangel ist strukturell erschöpft, siehe Run
  11/12). Sinnvoll ist ein Ereignis-Trigger-Re-Check erst wieder nach einem echten zeitlichen
  Abstand (z.B. beim nächsten regulären 09/21-Uhr-Takt) oder nach neuem, tatsächlich abgelegtem
  Material. Bis dahin bleibt (a) die Rückfrage an Raphael Jans (Frage 1/2, nicht autonom lösbar)
  der einzige verbleibende Weg zu einer ersten "belegt (n=…)"-Promotion.

## 2026-07-27 — Trainings-Run 13: Frage 1 auf Formel-Ebene verifiziert und zu einer präzisen Ja/Nein-Rückfrage zugespitzt

- **Kein erneuter Ereignis-Trigger-Check:** Run 12 (12:56 Uhr) hatte den Ereignis-Trigger
  (neuer Kostenstand seit 26.07.) bereits geprüft und negativ beschieden; dieser Lauf begann nur
  wenige Minuten später (Kollisionscheck via `ps`: einziger Treffer die eigene Prozessinstanz).
  Ein identischer Re-Check hätte in dieser Zeitspanne garantiert dasselbe Nullergebnis geliefert
  — bewusst NICHT wiederholt (Rule «Kein Leerlauf-Zwang»: keine Duplikat-Prüfung ohne
  Erkenntnisgewinn). Stattdessen ein bisher nicht begangener Weg geprüft: Auflösung von Frage 1
  direkt an der Formel-Ebene des Pre-Check-Tools (2305 Wädenswil), wie in Run 6/7 als offener
  Punkt vorgeschlagen ("Klärung von Frage 1 direkt an der Exceldatei").
- **Befund:** Die Originaldatei `Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` war auf dieser Station
  (MacBook Pro) nicht über den bisher verwendeten Pfad-Alias erreichbar (leerer Ordner, analog
  zum in Run 11 dokumentierten Stations-Sync-Muster), aber unter dem direkten SharePoint-Mount
  `OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 03 KNOW-HOW/…` vorhanden. Mit `openpyxl` im
  Formel-Modus (`data_only=False`, neue venv `/tmp/venv-xlsx-grobkosten`) statt nur im
  Werte-Modus (wie Run 7) geöffnet: Die Summenformeln `AF69:AF73`, die in `I56` («Total BKP 1-9»)
  münden, wenden **ausschliesslich** den Faktor `G48 = 1.13` auf die BKP-2-Einheitskosten an —
  denselben Faktor, den das Tool in derselben Zeile als «Faktor BKP 2 zu BKP 1-5» beschriftet
  (`G47`). Es existiert an keiner Stelle der Formelkette ein zusätzlicher Rechenschritt für
  BKP 6-8 (Reserven) oder BKP 9 (Ausstattung). Details: `raw/2305-waedenswil-precheck.md`,
  Abschnitt "Nachtrag Run 13".
- **Ergebnis:** Frage 1 bleibt strukturell ungelöst (keine autonome Auflösung möglich — beide
  Deutungen sind rechnerisch in sich schlüssig), aber jetzt maximal scharf für eine schnelle
  Rückfrage an Raphael Jans vorbereitet: *Ist die vom Tool als «Total BKP 1-9» ausgewiesene
  Summe in Wahrheit ein BKP-1-5-Total (weil nur der 1.13-Faktor «BKP2→BKP1-5» je angewendet
  wird), oder ist der Faktor 1.13 tatsächlich als «BKP2→BKP1-9» gemeint und nur die
  Feldbeschriftung `G47` falsch?* Eine einzige Antwort löst nicht nur diesen Fall, sondern auch
  den strukturgleichen Wald-Haselstudstrasse-Fall (`raw/2411-wald-haselstudstrasse.md`, gleicher
  Tool-Faktor 1.13) und potenziell weitere künftige Pre-Check-Tool-Fälle in einem Schritt.
- **Empfehlung für Run 14:** Kein weiterer Bibliotheks-Sweep und kein weiterer Ereignis-Trigger-
  Check in derselben Sitzungsnähe. Entweder (a) die oben zugespitzte Frage bei Gelegenheit direkt
  an Raphael stellen (nicht autonom in diesem Loop), oder (b) falls ein Lauf ohne neues Material
  auskommen muss: prüfen, ob sich dieselbe Formel-Ebenen-Methode auf ein bisher nur wert- statt
  formelseitig geprüftes JANS-Tool anwenden lässt (z.B. die Sensitivitätsanalyse-Formeln auf
  Blatt «Cover Pre-Check», in diesem Lauf mitgesichtet, aber ohne BKP-1-9-vs-1-5-Bezug).

## 2026-07-27 — Trainings-Run 12: Ereignis-Trigger-Check negativ — formale Sättigung erklärt, Rücktaktung empfohlen

- **Geprüft (Option b aus Run 11):** Ob seit dem letzten Check ein neuer Kostenstand aus einem
  laufenden Mandat vorliegt. Ergebnis: `find` über die **gesamte** SharePoint-Bibliothek
  (`OneDrive-FreigegebeneBibliotheken–JANS`) nach `*kosten*`-Dateien mit Änderungsdatum seit
  26.07.2026 00:00 liefert **null Treffer**. Gezielt auch die drei aktiven Mandate mit bekanntem
  Kosten-Bezug (2414 Thalwil, 2620 Albertstrasse, 2515 Wartstrasse) auf neue Dateien seit ihrem
  jeweils letzten Check-Datum geprüft — ebenfalls keine.
- **Formale Sättigung gemäss `training/PROGRAMM.md` Endbedingung:** Das Inventar ist strukturell
  ausgeschöpft (alle bekannten Bibliotheken `[x]`/`[-]`, bestätigt Run 11), UND es liegt kein
  neues Material vor, das Frage 1 (BKP-1-9-vs-1-5) oder Frage 2 (Standard-Klassifikation)
  autonom auflösen könnte. `wiki/kennwerte.md` erreicht damit für keine Nutzungsart die Reife
  "belegt (n=…)" — der Blocker ist nachweislich **strukturell** (zwei offene Fachfragen an
  Raphael Jans), nicht mehr Materialmangel. Ein weiterer täglicher/mehrfach-täglicher Zyklus
  dieses Loops verspricht keinen weiteren Ertrag, solange Frage 1/2 ungeklärt bleiben.
- **Empfehlung:** Diesen Loop von der aktuellen Taktung (mehrfach täglich, VOLLGAS) auf einen
  **Ereignis-Trigger** zurücktakten: nächster sinnvoller Lauf erst, wenn (a) Raphael Jans Frage
  1/2 beantwortet (dann sofort die wartenden MFH-Einzelfälle Haus Deuber/Niederhasli/Wald neu
  bewerten und ggf. den ersten Median bilden), oder (b) ein neuer Kostenstand mit GV-Bezug aus
  einem laufenden Mandat abgelegt wird (`kostenkontrolle`-Output oder neue SharePoint-Datei).
  Dies ist eine Beobachtung/Empfehlung für den nächsten interaktiven Kontakt mit Raphael — keine
  autonome Änderung der Scheduled-Task-Taktung selbst (liegt ausserhalb der Befugnis dieses Loops).

## 2026-07-27 — Trainings-Run 11: letzte offene `AR`-Bibliothek geprüft (leer), Brassel-Nebenfund als Fremdmandat geschlossen — autonome Exploration erschöpft

- **`AR - 06 Referenzen` (letzte aus Run 5 als noch offen benannte `AR`-Bibliothek):** auf dieser
  Station komplett leer (nur `.DS_Store` + OneDrive-interne Marker-Datei, keine Projektordner).
  Kein Fund möglich.
- **Brassel-Archiv-Nebenfund aus Run 10 abschliessend geklärt:** Die Kontaktliste zu
  `201210_HARDSTRASSE_7` (`Kontakte/Kontakliste Hardstrasse 7.pdf`) weist Brassel Architekten
  (nicht JANS) als Funktion "Architektur" aus. Das gesamte `_Archiv/Brassel_Architekten/`-Verzeichnis
  ist damit als **Fremdmandat** eingeordnet (JANS lieferte mutmasslich stundenbasierte Zuarbeit,
  siehe Stundenabrechnungs-Korrespondenz in anderen Unterordnern) — keine JANS-eigenen
  Gebäude-Kostendaten. Die dortigen BKP-Dokumente sind zudem ein Fitout-Modul (Bakery/Café),
  kein Gesamtgebäude-GV. Doppelt ausserhalb des Scopes dieser KB.
- **Damit sind alle in Run 5/6 identifizierten SharePoint-Bibliotheken vollständig gesichtet**
  (`AR - 01` bis `AR - 07`, `IMMO - 01/02/03/05/06`, zweite SharePoint-Bibliothek
  `...-RaphaelJans-ArchitektenETH`). Die autonome Exploration der bekannten Struktur ist damit
  absehbar erschöpft — ein weiterer reiner Bibliotheks-Sweep verspricht keinen neuen Ertrag mehr.
- **Empfehlung für Run 12 (geändert gegenüber bisherigem Muster):** NICHT erneut dieselben
  Bibliotheken durchsuchen. Stattdessen: (a) Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald
  Haselstudstrasse + Pre-Check-Tool-Familie) und Frage 2 (Standard-Klassifikation "norm,
  eloquent" mutmasslich Vorlagentext, betrifft Haus Deuber + Reckholdern) als konkrete,
  beantwortbare Rückfragen an Raphael Jans vorbereitet halten für den nächsten interaktiven
  Kontakt (nicht autonom in diesem Loop stellbar); (b) alternativ auf einen Ereignis-Trigger
  warten (neuer Kostenstand aus `kostenkontrolle` bei einem laufenden Mandat, z.B. KISPI/
  Albertstrasse/Thalwil, sobald dort Ist-Kosten mit GV-Bezug vorliegen) statt weiter zu zyklieren.
  Dies deckt sich mit der in `training/PROGRAMM.md` beschriebenen Endbedingung: das Inventar ist
  faktisch ausgeschöpft, auch wenn `wiki/kennwerte.md` noch keine "belegt (n=…)"-Reife erreicht
  hat — die Blocker sind jetzt strukturell (Frage 1/2), nicht mehr Materialmangel.

## 2026-07-27 — Trainings-Run 10: `AR - 02/04/05` gesichtet, Frage 1 + 2 weiterhin ungelöst — neuer Fund, aber anderer Blocker

- **Befund:** Die drei letzten aus Run 5 benannten SharePoint-Bibliotheken (`AR - 02
  Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer`) gesichtet. Ein neuer,
  in sich konsistenter Rohbeleg (2105 Steinkogler, Haus «Le Mélèze» Davos,
  `raw/2105-steinkogler-davos.md`), aber NICHT promotionsfähig — anders als bisher: kein
  interner Widerspruch, sondern eine grundsätzlich andere Methodik (Eingriffstiefen-Bandbreiten
  S/M/L/XL statt GV x Kennwert, keine einzige m³/GV-Angabe im ganzen Dokument). Löst damit
  weder Frage 1 noch Frage 2.
  Dieser Lauf zeigt: die drei zurückgestellten Bibliotheken haben KEINEN Fall geliefert, der
  eine Standard-Klassifikation textlich eindeutig belegt.
- **Damit sind alle fünf in Run 5 benannten `AR`/`IMMO`-Bibliotheken gesichtet.** Einzige noch
  ungeprüfte `AR`-Bibliothek: `AR - 06 Referenzen` (Name legt reine Referenzsammlung nahe, wie
  bereits mehrfach beobachtet bei anderen `_Admin`/`Referenz`-Unterordnern — geringe
  Erwartungshaltung, aber nicht ausgeschlossen).
- **Neue Beobachtung (nicht Frage 1/2, aber ein wiederkehrendes Muster):** JANS-eigene
  Grobkosten-Dokumente enthalten wiederholt einen im Fliesstext genannten Vergleichswert, der
  von der tatsächlich angewandten Rechengrösse abweicht (hier: «CHF 2'000.-/m² GF» im Text vs.
  tatsächlich gerechnete «CHF 2'600.-/m² GF», 30 % Differenz, im Dokument nicht aufgelöst) —
  bereits bei Ackersteinstrasse/Reckholdern (Run 3/4) beobachtet, jetzt ein drittes Mal
  bestätigt. Für künftige Läufe: bei jedem Fund explizit prüfen, ob ein im Fliesstext genannter
  Richtwert mit dem tatsächlich verwendeten Rechenwert übereinstimmt, bevor irgendeine Zahl aus
  einem JANS-Dokument übernommen wird.
- **Empfehlung für Run 11:** `AR - 06 Referenzen` kurz sichten (letzte offene `AR`-Bibliothek);
  danach ist die autonome Exploration der bekannten SharePoint-Struktur absehbar erschöpft.
  Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation «norm, eloquent») bleiben ohne
  Rückfrage an Raphael Jans bzw. ohne einen neu abgelegten Fall (laufende Mandate über
  `kostenkontrolle`) nicht lösbar — sollte Run 11 ebenfalls nichts Neues liefern, ist eine
  Rückfrage an Raphael der nächste sinnvolle Schritt statt eines weiteren Bibliotheks-Sweeps.

## 2026-07-27 — Trainings-Run 9: Option (a) aus Run 8 umgesetzt (Teuerungs-Normalisierung), Frage 1 + 2 bleiben der Blocker

- **Erledigt:** Die Run-8-Baupreisindex-Faktoren wurden auf die vier belastbarsten Einzelfälle
  angewendet (`wiki/kennwerte.md`, Abschnitt "Run 9"). Methode: lineare Interpolation zwischen
  den nächsten zwei belegten Jahres-Stützstellen des Zürcher Index; keine Extrapolation über den
  letzten verfügbaren Anker (01.04.2025) hinaus. Ergebnis: Haus Deuber 1'086 → ≈1'250 CHF/m³
  (+15.1 %), Reckholdern 1'735 → ≈1'757 CHF/m³ (+1.3 %); Niederhasli (1'032) und Albertstrasse
  (2'500) liegen bereits nach dem letzten Anker und bleiben unverändert.
- **Weiterhin ungelöst — jetzt der alleinige Blocker für eine MFH-Median-Bildung:** Selbst nach
  Preisstand-Normalisierung liegen Haus Deuber (≈1'250, MFH) und Niederhasli (1'032, MFH) noch
  ca. 20 % auseinander. Das bestätigt: die Preisstand-Dimension war NICHT die Hauptursache der
  Streuung — Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse + Pre-Check-
  Tool-Familie) und Frage 2 (Standard-Klassifikation "norm, eloquent" mutmasslich Vorlagentext,
  betrifft Haus Deuber + Reckholdern) bleiben beide nur durch Rückfrage an Raphael Jans bzw.
  durch einen neuen, eindeutig klassifizierten Fall lösbar — nicht autonom in diesem Loop.
- **Empfehlung für Run 10:** Da (a) jetzt erledigt ist, gemäss der in Run 8 genannten Option (b)
  neue, bisher ungeprüfte SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`,
  `AR - 04 Honorarauftraege`, `AR - 05 Transfer` (aus Run 5 als Kandidaten benannt, bisher keine
  geprüft) — mit Fokus auf einen Fall, der die Standard-Klassifikation textlich eindeutig
  belegt (Materialbeschrieb/Ausbaustandard), statt nur ein weiteres Dropdown-Label zu liefern.

## 2026-07-27 — Trainings-Run 8: Stufe-4-Baustein gelöst (Baupreisindex verkettet), Registerlücke geschlossen — neue Empfehlung für Run 9

- **Gelöst:** Der in Run 6 als "möglicher, aber unbewerteter Baustein für Stufe 4" geführte
  Zürcher Baukostenindex (JANS-eigene Quelle bricht 2004 ab) ist jetzt bis 01.04.2025 verkettet
  belegt (`raw/zuercher-index-wohnbaukosten-1939-2025.md`, fertige Umrechnungsfaktoren in
  `wiki/kennwerte.md`). Kein offener Punkt mehr — Stufe 4 kann ab sofort angewendet werden,
  sobald eine Median-Bildung ansteht.
- **Registerlücke behoben:** `raw/2620-albertstrasse.md` (Run 4 extrahiert, nie registriert)
  ist nachgetragen — erster realer Umbau-Kennwert (2'500 CHF/m³) in `kennwerte.md`.
- **Neue Empfehlung für Run 9 — zwei Optionen, beide sinnvoll:** (a) Die jetzt verfügbaren
  Teuerungsfaktoren auf die bestehenden Einzelfälle anwenden (Preisstand-Normalisierung), damit
  ein künftiger Median nicht unterschiedliche Preisstände vermischt. (b) Weiterhin ungeprüfte
  SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05
  Transfer` (aus Run 5 als Kandidaten benannt, bisher keine geprüft). Empfehlung: zuerst (a),
  da risikolos und mit vorhandenem Material machbar, dann (b) für neuen Rohstoff.
- **Weiterhin unverändert offen (aus Run 6/7):** Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, nur durch
  Rückfrage an Raphael lösbar) und Frage 2 (Standard-Label "norm, eloquent" im GKB-Tool ist
  mutmasslich Vorlagentext) — siehe Einträge unten.

## 2026-07-27 — Trainings-Run 7 (Vertiefung Run-6-Kandidaten): Frage 1 bleibt offen, aber mit direktem Tool-Beleg verstärkt

- **Befund:** Die drei in Run 6 identifizierten, aber nicht extrahierten Kandidaten geprüft.
  Pre-Check-Tool 2305 Wädenswil (`raw/2305-waedenswil-precheck.md`) liefert den bisher
  direktesten Beleg für **Offene Frage 1** (BKP-1-9-vs-BKP-1-5-Bezeichnung, siehe Run-6-Eintrag
  unten): im selben Excel-Tool trägt derselbe Faktor (1.13) in derselben Rechenzeile zwei sich
  widersprechende Feldbeschriftungen — «Faktor BKP 2 zu BKP 1-5» (Eingabefeld) versus «Total
  BKP 1-9» (Ausgabefeld). Das bestätigt: die Inkonsistenz liegt im JANS-eigenen Tool selbst,
  nicht in einer Fehlübertragung zwischen Dokumenten. Eine Auflösung ist nur durch Rücksprache
  mit Raphael Jans (Tool-Ersteller) möglich — nicht autonom lösbar. Kennwert (1'380–1'546
  CHF/m³) bewusst NICHT promoviert.
- **Zweiter Kandidat (2304 Waedenswil Residualwert-Tool) geschlossen, nicht verwertbar:**
  Projektnummer-/-name-Felder im Dokument leer — Zahlen (GV 9'080 m³, BKP1-9 12.2-13.1 Mio)
  nicht sicher demselben Projektstand zuordenbar wie 2305 Wädenswil, obwohl im selben
  Projektordner abgelegt (möglicher Hinweis auf eine frühere Tool-Variante oder ein anderes
  Nutzungsszenario). Keine Übernahme ohne verifizierte Provenienz.
- **Dritter Kandidat (Langnau Giebelweg 12) geschlossen, nicht verwertbar:** Erstellungskosten
  im Bewertungsdokument sind explizit eine Annahme innerhalb einer Residualwertrechnung, keine
  eigene BKP-gegliederte Kostenschätzung.
- **Empfehlung für einen künftigen Lauf:** Frage 1 (BKP-1-9-vs-1-5) bleibt der grösste
  strukturelle Blocker für eine MFH-Median-Bildung (betrifft mind. 3 Einzelfälle: Wald
  Haselstudstrasse, 2305 Wädenswil, 2305 Pre-Check-Tool-Familie generell). Eine Klärung
  erfordert entweder eine Rückfrage an Raphael (nicht autonom in diesem Loop) oder das
  Auffinden eines Projekts mit sowohl Pre-Check-Tool-Ergebnis als auch unabhängiger,
  klassischer BKP-1-5-Kostenschätzung zum Abgleich.

## 2026-07-27 — Trainings-Run 6 (vier neue Quellen parallel gesichtet): zwei neue Einzelfälle, drei neue offene Punkte

- **Befund:** `AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05` und die zweite
  SharePoint-Bibliothek `...-RaphaelJans-ArchitektenETH` parallel durch vier Subagenten
  geprüft. Zwei neue, gut belegte Einzelfälle in `wiki/kennwerte.md` aufgenommen: 8155
  Niederhasli Seestrasse 64 (1'032 CHF/m³, explizite BKP-1-5-Gliederung + explizites GV im
  selben Dokument — stärkster bisheriger Beleg dieser KB) und 2001 Haus Deuber Thalwil
  (1'086 CHF/m³, eBKP-H-Basis). Details: `raw/8155-niederhasli-seestrasse64.md`,
  `raw/2001-haus-deuber-thalwil.md`.
- **Offene Frage 1 — BKP-1-9-vs-BKP-1-5-Bezeichnung uneinheitlich (neu, betrifft mehrere
  JANS-eigene Pre-Check-/Residualwert-Tools):** Sowohl im Wald-Haselstudstrasse-Dokument
  (`raw/2411-wald-haselstudstrasse.md`) als auch im Pre-Check-Tool 2305 Wädenswil
  (`IMMO - 03 KNOW-HOW`) wird ein Umrechnungsfaktor "BKP 2 → Gesamt = 1.13" verwendet, aber im
  einen Dokument als "BKP 2 → BKP 1-9", im anderen (uneinheitlich) auch als "BKP 2 → BKP 1-5"
  bezeichnet. Da BKP 6-8 laut `references/bkp-2017/` reine Reserve-Kategorien sind (i.d.R.
  null), macht das nur dann keinen Unterschied, wenn BKP 9 (Ausstattung) im Total NICHT
  enthalten ist — das ist aus den vorliegenden PDF-Auszügen nicht abschliessend zu klären. Bis
  geklärt (Einsicht in die Original-Exceldatei "Pre-Check_Tool_Jans.xlsx" nötig, dort ist der
  Faktor als Formel hinterlegt), bleiben alle mit diesem Faktor gebildeten Werte als **obere
  Näherung** markiert und werden NICHT in die Haupttabelle promoviert.
- **Offene Frage 2 — Standard-Klassifikation im JANS-eigenen GKB-Tool ist ein Vorlagentext,
  nicht projektspezifisch:** Sowohl bei 2001 Haus Deuber als auch bei 2304 Reckholdern
  (bereits in Run 4 verwertet) trägt die Grobkostenberechnung das identische Label "norm,
  eloquent" — mutmasslich ein fixes Dropdown-Feld im JANS-eigenen GKB-Tool, keine bewusste
  Standard-Einschätzung je Projekt. Für künftige Läufe: dieses Label NICHT als verlässliche
  Standard-Angabe werten, sondern separat verifizieren (z.B. über Materialbeschrieb/
  Ausbaustandard-Text im selben Dokument), bevor ein Fall einer Standardstufe (einfach/mittel/
  gehoben) zugeordnet wird.
- **Offene Frage 3 — noch keine Median-Bildung trotz n≥2 für "MFH":** Mit inzwischen vier
  MFH-Datenpunkten (Grubenackerstrasse 950-1050 unverifiziert, Haus Deuber 1'086, Niederhasli
  1'032, Wald 1'539-1'765 als obere Näherung) läge rein zahlenmässig n≥2 vor. Bewusst NICHT
  verdichtet, weil die Standard-Einordnung uneinheitlich/unklar ist (siehe Frage 2) und die
  Wald-Werte durch Frage 1 mit Vorbehalt behaftet sind. Vorschlag für einen künftigen Lauf:
  zuerst Fragen 1+2 klären (ggf. durch Excel-Einsicht bzw. Materialbeschrieb-Vertiefung), dann
  erst eine MFH-Median-Bildung erwägen.
- **Drei identifizierte, aber in diesem Lauf aus Kapazitätsgründen nicht extrahierte
  Kandidaten für einen künftigen Lauf:** (a) Pre-Check-Tool 2305 Wädenswil (`IMMO - 03
  KNOW-HOW/05 Residualwert/Exel Tabelle/jans/Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`, GV 11'724 m³
  oi explizit, Erstellungskosten 16.18-18.12 Mio BKP1-9) — echtes JANS-Projekt, lohnt volle
  Extraktion inkl. Klärung von Frage 1 direkt an der Exceldatei. (b) 2304 Waedenswil
  Residualwert-Tool (`AR - 03 Studien`, CHF/m³-Kennwert 1'566 vorhanden, GV nicht explizit). (c)
  Langnau Giebelweg 12 (`IMMO - 01 Projekte`, GV 1'152 m³ explizit, Kosten aber nur als
  "Annahme" in einer Bewertung, keine eigene Kostenschätzung).
- **Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung), noch nicht bewertet:**
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` enthält eine "Zürcher
  Index der Wohnbaukosten"-Zeitreihe 1939-2004 sowie CHF/m³-Bandbreiten nach Bauklasse I-VI
  (Stand 2003). Das ist potenziell der in `training/PROGRAMM.md` Stufe 4 geforderte "belegte
  Baupreisindex" — aber die Zeitreihe endet 2004, eine Fortschreibung auf 2026 (z.B. via BFS-
  Baupreisindex, bereits als Quelle im Frontmatter-Kaveat von `kennwerte.md` referenziert) wäre
  nötig. Für einen künftigen Lauf: prüfen, ob sich die beiden Indexreihen (Zürcher Index bis
  2004, BFS-Index ab dort) verketten lassen.
- **Nebenbefund, kein grobkosten-Thema, aber vermerkt:** Acht Projektordner unter `AR - 03
  Studien` teilen sich ein identisches, nie ausgefülltes GKS-Copy-Paste-Template (GV 1'668 m³,
  950-1'050 CHF/m³) — ein liegen gebliebener Platzhalter, kein Dokumentationsfehler dieser KB.
  Nur zur Kenntnis, keine Aktion in diesem autonomen Lauf (keine Rückfrage/Mail).

## 2026-07-26 — Trainings-Run 5 (neue Quelle SharePoint `IMMO - 06 Kennwerte`): m²-GF-Benchmark gefunden, zwei neue offene Fragen

- **Befund:** Erste Quelle ausserhalb der Projektordner erschlossen. `_Kennwerte Jans.docx`
  (JANS-eigenes Referenzblatt, 25.03.2025) liefert einen indexierten Erstellungskosten-
  Benchmark für Wohnen Individuell EFH/ZFH (4'485 CHF/m² GF BKP1-5), aber auf einer anderen
  Bezugsgrösse (m² GF) als die geführte Tabelle (m³ GV). Details: `raw/kennwerte-jans-
  referenzdokument.md`, Verdichtung `wiki/kennwerte.md` (neue Parallel-Sektion).
- **Offene Frage 1 — Projekt-Identität "Thalwil Bohlweg 1":** Das im Referenzblatt gerechnete
  Beispiel (950 m² GF, 8-Platz-TG, CHF 4.6 Mio) passt weder in Hausnummer (Bohlweg 1 vs. 3)
  noch in Grössenordnung (Faktor ~10) zum bereits bekannten "2414 THALWIL Bohlweg 3"
  (EFH-Umbau, CHF 526'300 bzw. 482'000, `raw/2414-thalwil.md`). Ungeklärt, ob es sich um ein
  anderes/benachbartes Projekt oder einen früheren, grösseren Planungsstand handelt. Nicht
  autonom auflösbar (keine weitere Quelle in diesem Lauf gefunden) — bei Gelegenheit Raphael
  fragen, oder in einem künftigen Lauf gezielt nach einem Projekt "Bohlweg 1 Thalwil"
  suchen (SharePoint-Projektnummer unbekannt, evtl. unter anderer Nummer/Namen abgelegt).
- **Offene Frage 2 — GV/GF-Umrechnungsfaktor weiterhin ungeklärt (verstärkt den bestehenden
  needs-decision-Punkt aus Wissens-Chef Run 15):** Der neue m²-GF-Benchmark könnte in die
  Haupttabelle (CHF/m³ GV) integriert werden, sobald der GV/GF-Faktor für "Wohnen Individuell"
  entschieden ist. Bis dahin bleibt er als separate Sektion geführt — kein Kennwert wird
  geraten/umgerechnet.
- **Vorschlag für Run 6:** Weitere, in diesem Lauf identifizierte, aber ungeprüfte SharePoint-
  Bibliotheken sichten — Kandidaten mit plausibler Kosten-Relevanz: `AR - 03 Studien` (frühe
  Machbarkeits-/Kostenschätzungen), `IMMO - 01 Projekte`, `IMMO - 02 Standort INFO`,
  `IMMO - 03 KNOW-HOW`, `IMMO - 05 Bodenpreise`, sowie die komplett ungesichtete zweite
  SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`. Aus
  `IMMO - 04 Marktpreise` ist bereits ein Healthcare-PDF (`crb.ch/Spital_...Kostenkennwerte...`)
  bekannt — Weiterleitung an `kostenschaetzung` prüfen, nicht hier verwenden.

## 2026-07-26 — Trainings-Run 4 (Vertiefung statt neuer Projekte): Reckholdern verwertbar, Ackersteinstrasse-Ursache geklärt — neue offene Frage: Luxus-Standardstufe

- **Befund Reckholdern (gelöst, kein offener Punkt mehr):** Ein fünftes, später datiertes
  JANS-Dokument (`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`, Stand
  31.12.2023) liefert GV (1'986 m³) und BKP-1–5-Kosten (CHF 3'446'500, klassischer BKP, deckt
  sich mit dem unabhängig gefundenen KV Siworks) im selben, rechnerisch selbst verifizierten
  Dokument. Der ältere eBKP-H-Widerspruch aus Run 3 (GV 1'715 m³, zwei sich widersprechende
  Kostenstände) ist damit als überholter Zwischenstand eingeordnet, nicht als ungeklärter
  Fehler. Erster Kennwert-Einzelfall mit sauberem GV+BKP-Tripel in dieser KB: 1'735 CHF/m³,
  EFH gehoben/Luxus. Details: `raw/2304-reckholdern.md`.
- **Befund Ackersteinstrasse (gelöst, kein offener Punkt mehr):** Rechnungsprüfung
  (`04_KTV/08_Rechnungen/`) zeigt, dass das Mandat mit der letzten Rechnung 07.09.2023
  ("Plangrundlagen für Abänderungseingabe") endete — keine spätere Rechnung, keine
  Bauleitung/Baubuchhaltung, kein Unternehmerzuschlag. Das Projekt kam nie zur Ausführung; die
  vier widersprüchlichen GKS-Stände aus Run 3 waren Zwischenstände eines nie abgeschlossenen
  Entwurfsprozesses. Eine Bauabrechnung wird für dieses Projekt nie existieren — Fall
  geschlossen (weiterhin nicht verwertbar, aber nicht mehr offen). Details:
  `raw/2202-ackersteinstrasse.md`.
- **Neue offene Frage (aus dem Reckholdern-Fund):** Der Reckholdern-Kennwert (1'735 CHF/m³)
  liegt deutlich über dem bestehenden EFH-Seed-Band (850–1'200), konsistent mit der im
  Quelldokument selbst benannten Luxus-Einordnung (Pool, Erker, Dachreiter, Hanglage). Sollte
  `wiki/kennwerte.md` bei einem zweiten vergleichbaren gehobenen/Luxus-EFH-Fall eine eigene
  Standardstufe "gehoben/Luxus" mit eigenem Band statt nur der bestehenden Stufen
  einfach/mittel/gehoben führen? Bis n=2 in dieser Kategorie vorliegt, keine Strukturänderung.
- **Empfehlung für Run 5:** Die beiden bekannten SharePoint-Quellen (`AR - 01 Projekte`,
  `AR - 07 Archiv`) sind jetzt vollständig geprüft UND vertieft (kein Kandidat mit offenem
  Klärungsbedarf mehr). Ein Run 5 müsste entweder eine neue Quelle identifizieren (z.B. weitere
  SharePoint-Bibliotheken ausserhalb `AR - 01`/`AR - 07`, sofern vorhanden) oder auf einen
  Ereignis-Trigger warten (neuer Kostenstand aus laufenden Mandaten via `kostenkontrolle`) statt
  erneut dieselben Projektordner zu durchsuchen.

## 2026-07-25 — Trainings-Run 3 (Drittquelle AR-07 Archiv geprüft): erstmals GV+BKP im selben Dokument, aber beide Fälle intern widersprüchlich

- **Befund:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate) vollständig geprüft (4
  Projektordner). Zwei liefern Material: 2202 Ackersteinstrasse 67 (4 Kostenstände über
  2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, ohne erkennbaren Grund
  für die Abweichung) und 2304 Reckholdern 20 (erstmals GV 1'715 m³ UND vollständige
  eBKP-H-Gliederung im selben Dokument — aber dasselbe Dokument enthält zwei sich
  widersprechende Gesamtkosten, CHF 2'960'000 vs. CHF 1'800'000, wobei letztere erkennbar aus
  einer nicht aktualisierten Fremdprojekt-Vorlage stammt, inkl. sachfremder
  Mietrendite-Berechnung). Details: `raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`.
- **Neues strukturelles Muster:** Anders als in Run 2 (wo GV und BKP-Kosten in getrennten,
  aber je für sich konsistenten Dokumenten fehlten) liegt hier das Problem NICHT im Fehlen von
  Grösse oder Kostengliederung, sondern in der internen Konsistenz der Dokumente selbst —
  Word/PDF-Vorlagen mit nicht vollständig aktualisierten Vorjahresdaten (Titelseite/
  Rendite-Block aus Fremdprojekt) und mehrfachen, sich widersprechenden Kostenständen ohne
  dokumentierten Anlass für die Änderung. Für künftige Läufe: bei einem Kandidaten mit
  vermeintlich vollständigem GV+BKP-Bild IMMER prüfen, ob das Dokument intern
  in sich konsistent ist (Summe der Positionen = ausgewiesenes Total, Objektbeschrieb passt
  zum Rest des Dokuments), bevor eine Übernahme erwogen wird.
- **Vorschlag für Run 4:** Beide Projekte haben mehrere Kostenstände über die Zeit — ein
  gezielter Blick auf eine allfällige Schlussabrechnung (Ist-Kosten) im selben Projektordner
  könnte die Widersprüche auflösen (in diesem Lauf nicht gesucht, nur die in `PROGRAMM.md`
  vorgeschlagenen KV-/GKS-Dokumente gelesen). Alternativ: Rückfrage an Raphael Jans, welcher
  Stand je Projekt effektiv realisiert wurde. Mit `AR - 07 Archiv` vollständig geprüft (4/4
  Projektordner `[x]`/`[-]`) und `AR - 01 Projekte` in Run 2 vollständig geprüft, sind die
  bekannten SharePoint-Quellen gemäss `PROGRAMM.md` ausgeschöpft — ein Run 4 müsste entweder
  gezielt nach Schlussabrechnungen suchen (statt neue Projektordner) oder eine neue Quelle
  identifizieren (z.B. `kostenkontrolle`-Outputs, falls dort inzwischen Kostenrapporte
  vorliegen).

## 2026-07-25 — Trainings-Run 2 (SharePoint-Zweitquelle geprüft): erste Realdaten, aber durchgängig zu dünn für Promotion

- **Befund:** SharePoint `AR - 01 Projekte` (aktive Mandate) bestätigt die in Run 1 offen
  gelassene Vermutung — hier liegen die echten Kostendokumente, nicht im NAS-Altarchiv. Von 8
  geprüften Mandaten liefern 3 auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse). Alle drei sind jedoch für eine Kennwert-Promotion **zu dünn**: Thalwil
  hat ein volles BKP-1-6-Bild (CHF 526'300) aber kein Gesamt-GV; Wartstrasse hat gar kein
  GV (Fassaden-Teilprojekt); Grubenackerstrasse hat ein Volumen (1'668 m³), aber nicht
  SIA-416-verifiziert, ohne BKP-Gliederung und ohne Nutzungsangabe. Details: `raw/*.md`.
- **Strukturelles Muster (wichtig für künftige Läufe):** Die Dokumente, die tatsächlich ein
  sauberes GV+BKP-1-5+Nutzung-Tripel enthalten würden, existieren im JANS-Alltag offenbar
  selten als EIN Dokument — GV steckt oft im Vorprojekt/Baugesuch (Planer-Fachdokument), BKP-
  Kosten in einem separaten Kostenblatt. Ein künftiger Lauf sollte pro Projekt gezielt NACH
  dem GV-Dokument (Baugesuch, Vorprojekt-Pläne mit Kubatur) suchen und es mit dem Kostenblatt
  zusammenführen, statt nur das Kostenblatt allein zu prüfen.
- **Ausgeschlossen (bewusst, nicht offen):** 2619 KISPI (Kinderspital Zürich, umfangreichstes
  Kostendossier im Bestand) — Healthcare-Scope, gehört in den Skill `kostenschaetzung`, nicht
  hierher. Empfehlung: eigener Hinweis an den `kostenschaetzung`-Loop, falls dieser die
  KISPI-Kostendaten noch nicht kennt.
- **Nebenbefund (kein grobkosten-Thema, aber notiert):** `2518_Grubenackerstrasse_7/
  04_KostenTermine/1_Kosten/2_Kostenschätzung/230324 Kostenvergleich Liftposition/` enthält
  Fremddaten zweier anderer Projekte (Reckholdern 20, Laternengasse 5) — Fehlablage, read-only
  nicht bereinigt, zur Kenntnis an Raphael.
- **Vorschlag für Run 3:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen — dort ist die Wahrscheinlichkeit eines vollständigen GV+BKP-Bilds
  höher als bei laufenden Mandaten (deren KV/GKS oft vor Baubeginn und ohne finales GV steht).

## 2026-07-25 — Trainings-Run 1 (Stufe 1, Inventar): Altarchiv `04_Buero/02_Projekte` liefert 0 auswertbare Kostendokumente — Zweitquelle SharePoint prüfen

- **Befund:** Vollständige Durchsicht aller 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` (Details `training/quellen-inventar.md`) ergab **kein
  einziges** auswertbares GV/BKP-1-5-Kostendokument. Ordner, deren Struktur einen vollständigen
  Kostenverlauf suggerieren (z.B. `1602_St_Karli_11` mit 8 Phasenordnern Wettbewerb→
  Kostenfeststellung, `1303_Steinhof` ebenso), sind auf Dateiebene komplett leer (nur
  `.DS_Store`). Andere Treffer sind Honorarofferten (1011), Möbel-/Büroumzugs-Preisvergleiche
  (1527), ein leeres Berechnungs-Template (1115) oder fachfremd (1604, italienisches CISA-
  Palladio-Studienmaterial).
- **Offene Frage:** Ist dieses Alt-NAS-Archiv (`04_Buero/02_Projekte`, Projekte 2010–2015)
  überhaupt der richtige Ort für reale Baukosten, oder laufen JANS-Bauleitungsmandate mit
  echter Kostenkontrolle ausschliesslich über SharePoint (`AR - 03 Studien/`, aktive Mandate
  KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`)? `training/PROGRAMM.md` nennt
  SharePoint bereits als Zweitquelle ("`kostenkontrolle`-Outputs und Schlussabrechnungen der
  aktuellen Mandate") — noch nicht geprüft, da dieser Lauf sich strikt an die im Prompt
  vorgegebene NAS-Quelle hielt.
- **Vorschlag für den nächsten Lauf:** SharePoint-Projektordner (M365-Connector,
  `09_Dokumente/CLAUDE/` bzw. die BKP-Kostenkontrolle-Ablage der aktiven Mandate) nach
  Schlussabrechnungen/Kostenständen mit GV-Bezug durchsuchen, statt das Alt-NAS-Archiv erneut
  zu prüfen (dort ist die Quellenlage nach dieser Vollprüfung ausgeschöpft).
- **Einzige nicht komplett wertlose Fundstelle:** `1318_Lorraine_Kueche` (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kücheneinbau) — kein Gebäude-GV, daher hier nicht
  verwertet; potenziell später für eine BKP-Einzelposition-Kennwert-Erweiterung interessant.

## 2026-07-24 — Nachgetragen aus Health-Check 21.07.2026 (strukturelle Findings, 3 Wochen offen)

- **Reale JANS-Schlussabrechnungen fehlen weiterhin.** Alle Kennwerte in `kennwerte.md` sind
  Status "Seed" (Wüest-kalibriert, keine eigene Realabrechnung). Erster Realwert ist der
  Promotion-Trigger auf "belegt (n=…)".
- **Umbau/Sanierung: eigene m³-Reduktionsfaktoren noch nicht belegt** — derzeit Verweis auf
  Skill `kostenschaetzung` (dort m²-NF-Reduktionsfaktoren, nicht direkt auf m³-GV übertragen).
- **Healthcare bewusst ausgelagert** an Skill `kostenschaetzung` (Wüest-Partner-m²-NF) — kein
  offener Punkt, nur zur Abgrenzung vermerkt.
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss, 0.60 Gesamtgebäude) ohne eigene Quelle** —
  erkennbare JANS-Faustannahmen, plausibel und im Band, aber ohne Provenienz-Tag (Audit C,
  Health-Check 21.07.2026). Unkritisch, aber bei Gelegenheit mit einer Herleitung/Quelle
  hinterlegen, sobald eine verfügbar ist.
