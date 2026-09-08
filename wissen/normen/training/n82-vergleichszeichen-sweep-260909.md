---
titel: "Vergleichszeichen-Sweep über den VKF- und SIA-Bestand (Messanlage Run 82)"
angelegt: 2026-09-09
lauf: normen-nacht Run 82 (MacBook Pro, SIA/VKF-Scope)
auftrag: "N81-2 — Reichweite des «≤»/«<»-Textlayer-Defekts über den VKF-Bestand"
status: gemessen und kalibriert

# Vergleichszeichen-Sweep — Messanlage und Ergebnisse

Run 81 hat am 08.09.2026 an der BRL 15-15 belegt, dass der Textlayer gedruckte «≤» als «<»
ausliefert, und die Reichweitenfrage als **N81-2** offen gelassen: welche anderen VKF-Destillate
haben Grenzwerte aus einer Textextraktion übernommen? Eine Verwechslung von «≤» und «<»
verschiebt eine Grenze um genau einen Grenzfall, und das ist bei Brandabschnittsflächen oder
Sicherheitsabständen eine Planungsfolge.

Dieses Dokument hält die Messanlage fest, mit der Run 82 die Frage geschlossen hat, samt ihrer
Kalibrierung und ihrer Grenzen.

## 1. Die Mechanik des Defekts

Der Defekt ist **kein fehlendes Glyph**. In den betroffenen Dateien ist «≤» als **«<» mit
darunter gesetzter Unterstreichung** gesetzt (Word-Erzeuger). `pdftotext` liest das «<» als
Wort und die Unterstreichung als Grafik — also verschwindet der untere Strich, und aus «≤»
wird «<». Dasselbe gilt spiegelbildlich für «≥» → «>».

Daraus folgt das Messverfahren: es genügt nicht, im Textlayer nach Zeichen zu suchen. Man muss
am Rendering nachsehen, **ob unter dem Glyph ein Strich liegt**.

## 2. Die Messanlage

1. **Fundstellen erfassen.** `pdftotext -bbox` über das ganze Dokument, `awk` zählt die
   `<page>`-Marken mit und greift jedes Wort, das genau `&lt;` bzw. `&gt;` ist. Ergebnis je
   Fundstelle: Datei, Seite, xMin/yMin/xMax/yMax in Punkt.
2. **Seite rendern.** `pdftoppm -r 300 -png -singlefile`, Umrechnung Punkt → Pixel mit 300/72.
3. **Kontrastierend messen.** In einem Fenster von der Glyph-Unterkante bis 3 px darunter, genau
   über die Glyph-Breite, den Anteil dunkler Pixel bestimmen (`unter`) — und denselben Streifen
   links und rechts **neben** dem Glyph, je eine Glyphbreite entfernt (`neben`). Ein «≤» zeigt
   `unter` hoch und `neben` null; eine Tabellenrahmenlinie zeigt beides hoch.
   Entscheidungsmass ist die Differenz `unter − neben`, Schwelle 0.12.
4. **Sichtkontrolle jedes Positivtreffers** am 300-dpi-Ausschnitt. Die Messung wählt aus, sie
   entscheidet nicht (Methodik-Pflicht 8, letzter Absatz).

### Der Fehlversuch davor, und warum er hier steht

Die erste Fassung der Messung suchte im Glyph-Fenster nach einer **horizontalen Linie über
mindestens 55 % der Fensterbreite**. Sie meldete `maxfrac = 1.0` für Brandmeldeanlage S. 13,
Sprinkleranlage S. 12 und Löscheinrichtungen S. 9 — alle drei nachweislich **echte** «<», per
Rendering abgelesen — und gab dem einzigen bekannten Positivfall (BRL 24, S. 37) mit 0.68 einen
**niedrigeren** Wert als den Negativfällen. Ursache: das Fenster lag in Tabellenzellen, und
gemessen wurde die **Zellrahmenlinie**, nicht der Unterstrich.

Die Anlage misst also erst, seit sie **kontrastiert**. Ein Messwert ist zuerst eine Aussage über
das Instrument (Rule `wege-und-vollmachten`, `auto-verbesserungen` 260730b).

### Kalibrierung (was die frühere Läufe offen liessen)

Run 50, 79, 80 und 81 haben je ausgewiesen, die **Spezifität** ihres Verfahrens nicht gemessen
zu haben. Hier ist sie gemessen: acht Fundstellen wurden **unabhängig von der Messung** am
300-dpi-Rendering sichtgeprüft, fünf davon vor der Messung.

| Fundstelle | Sichtbefund | Messung `unter−neben` | Urteil |
|---|---|---|---|
| Sprinkleranlage S. 12 (2 Stellen) | gedruckt «<» | 0.00 | richtig negativ |
| Brandmeldeanlage S. 13 (6 Stellen) | gedruckt «<» / «>» | 0.00 bis −0.07 | richtig negativ |
| Löscheinrichtungen S. 9 | gedruckt «<» | 0.00 | richtig negativ |
| Lufttechnische Anlage S. 27 (3 Stellen) | gedruckt «<» | 0.00 | richtig negativ |
| Wärmetechnische Anlagen S. 24 | gedruckt «<» | −0.14 | richtig negativ |
| **Wärmetechnische Anlagen S. 37** | **gedruckt «≤»** | **0.41** | **richtig positiv** |
| **Wärmetechnische Anlagen S. 19** | **gedruckt «≥»** | **0.30** | **richtig positiv** |
| **BRL 15-15 S. 11-13** | **gedruckt «≤»** | **0.15 bis 0.43** | **richtig positiv** |

Keine Fehlklassifikation in beide Richtungen. Die Trennung ist scharf: alle Negativfälle liegen
bei ≤ 0.00, alle Positivfälle bei ≥ 0.15.

## 3. Prüfmenge und Ergebnis — VKF und Brandschutz

Gescannt: alle PDF in `PL - 03 Brandschutz` (105 Dateien, alle Unterordner) und in
`PL - 02_Recht_Norm/02_Normen/VKF_Norm` (Methodik-Pflicht 1: beide Ablagen).

| | Pfade | distinkte Inhalte (md5) | distinkte Fundstellen |
|---|---|---|---|
| isolierte «<» | 28 | 15 | 48 |
| isolierte «>» | 60 | 34 | 142 |
| **zusammen** | | | **190** |

**Positiv sind 3 distinkte Dateien, also 2 Richtlinien:**

1. **BRL 15-15 «Brandschutzabstände, Brandverhalten von Tragwerken»**, Fassung 2015 **und**
   Fassung 2017, je S. 11/12/13 — «Brandabschnittsfläche ≤ 1'200 m²» und
   «Personenbelegung ≤ 300 Personen». **Bekannt** (Run 81, Ziff. 5).
2. **BRL 24-15 «Wärmetechnische Anlagen»**, zwei Stellen, in Run 82 erstmals gemessen:
   - **S. 19:** Faustformel Zu-/Abluftquerschnitt `A = K × P` **(≥ 150 cm²)** — Textlayer «>».
   - **S. 37:** Durchführung von Abgasanlagen durch Holzdecken, Sicherheitsabstand zu
     brennbarem Material `x1 / x2` **≤ 50 mm** — Textlayer «<».

**Alle übrigen 187 Fundstellen sind echte «<» bzw. «>».**

### Ein Nebenergebnis mit eigener Aussage: «>» ist in der VKF gewollt

Die BRL 21-15 «Rauch- und Wärmeabzugsanlagen» trug im Screening das stärkste Verdachtssignal:
8 × «≤» im Textlayer, **kein einziges «≥»**, dafür 76 isolierte «>». Eine Dimensionierungsnorm
ohne ein einziges «≥» ist ungewöhnlich. Die Notwendigkeitstabelle Ziff. 3.1 Abs. 2 (S. 5) wurde
deshalb ganz gerendert und abgelesen: gedruckt steht durchgehend **«>»** — «> 600 m²»,
«> 2'400 m²», «> 4'800 m²», «> 300 Personen». Die Norm arbeitet in ihren Notwendigkeitstabellen
bewusst mit der strikten Ungleichung. **Die Abwesenheit von «≥» ist kein Defektindiz.**

## 4. Prüfmenge und Ergebnis — SIA

Ein Vollsweep über 458 SIA-PDF wäre teuer und grösstenteils gegenstandslos, weil nur Werte
gefährlich sind, die tatsächlich in ein Destillat gelangt sind. Deshalb zweistufig:

**Vorfilter.** Aus den 194 SIA-Destillaten die 95 mit mindestens einem Vergleichszeichen-Wert
gezogen und ihr `quelle:`-Feld auf eine Datei im Haus aufgelöst (62 auflösbar, 33 nicht — siehe
Ziff. 6). Je Datei gemessen, ob der Textlayer «≤»/«≥» **überhaupt kodiert**. Wo er es tut, ist
die Unterstrich-Mechanik ausgeschlossen. Verdachtsmenge: **14 Dateien**, daraus **146
Fundstellen**.

**Ergebnis: kein einziger echter Fall im SIA-Bestand.** Neun Messtreffer, alle Scheinbefunde:
acht in SIA 180:2014, einer in SIA 500:2009. Die Sichtkontrolle zeigt an diesen Stellen
**Diagramme** — Achsen, Raster, Kurvenscharen. Dort steht überhaupt kein Vergleichszeichen.

## 5. Der eigentliche Befund des SIA-Teils: OCR-Textlayer

Die neun Scheinbefunde haben eine gemeinsame Ursache, und die ist schwerer als der Defekt, nach
dem gesucht wurde. Beide Dateien tragen als Producer ein **OCR-Plug-in**:

- `180_2014.pdf` — «Adobe Acrobat 9.55 Paper Capture Plug-in», 72 S., 28 Grenzwerte im Destillat
- `500_2009.pdf` — «Acrobat 11.0.23 Paper Capture Plug-in», 13 Grenzwerte im Destillat

Ein Paper-Capture-Layer ist **OCR über einem Scan**. Er erfindet in Grafikbereichen Zeichen:
Diagrammlinien werden zu «>», Rasterlinien zu Unterstrichen. Eine Textextraktion daraus ist
nicht bloss strukturell blind (Methodik-Pflicht 8), sie ist **inhaltlich unzuverlässig bis auf
die Zeichenebene**.

**Beide Destillate haben das erkannt, bevor dieser Lauf danach suchte.** `sia-180-2014.md`
vermerkt im Frontmatter ausdrücklich «Scan mit Textlayer-Charakter, **visuell gelesen**»;
`sia-500-2009.md` hat die Sanitär-Figuren am Rendering aufgenommen und die vier Korrigenda am
amtlichen Wortlaut nachgeführt. Kein Handlungsbedarf, aber ein Beleg dafür, dass die
Rendering-Pflicht in der KB gelebt wird.

### Daraus eine Typologie des Textlayers (Vorschlag, kein gesetzter Standard)

Der **Producer** eines PDF ist ein billiger, verlässlicher Vorfilter für die Frage, wie sehr man
seinem Textlayer trauen darf:

| Typ | Producer | Textlayer | Risiko |
|---|---|---|---|
| **A** | KONICA MINOLTA bizhub, Xerox WCP | **keiner** (0 Zeichen) | keines — Rendering ist zwingend, die Quelle schützt sich selbst |
| **B** | Acrobat «Paper Capture Plug-in» | OCR | **hoch** — erfindet Zeichen, sieht aber sauber aus |
| **C** | Microsoft Word | echt, aber «≤» als «<» + Unterstrich | mittel — betrifft nur Vergleichszeichen |
| **D** | Acrobat Distiller, Apogee, ApogeeX | echt, mit «≤»-Glyph | gering |

Gemessen an den destillierten SIA-Originalen: **11 × Typ A** (sia-102-2020, sia-118-266-1-2017,
sia-118-266-2-2017, sia-1695-4-2018, sia-271-2007, sia-279-2018, sia-281-2017, sia-281-3-2018,
sia-312-2013, sia-329-2018, sia-358-fachartikel — alle mit **0** extrahierbaren Zeichen bei
11 bis 52 Seiten), **2 × Typ B**, der Rest Typ D. Typ C tritt im SIA-Bestand nicht auf; er ist
das VKF-Muster.

**Die Lehre daraus ist unbequem:** Der gefährlichste Typ ist nicht der offensichtlich
unbrauchbare, sondern der scheinbar brauchbare. Typ A zwingt zum Rendering, weil er leer ist.
Typ B liefert flüssigen, plausiblen Text — und verschiebt darin Zeichen.

## 6. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Nur eine Verfälschungs-Mechanik ist gemessen** — der Unterstrich. Ein «≤», das als
   **Bild** eingesetzt oder dessen Glyph gar nicht kodiert ist, hinterlässt im Textlayer kein
   isoliertes «<» und fällt damit aus der Fundstellenerfassung heraus. Die Anlage findet, was
   sie sucht; sie beweist nicht, dass es nichts anderes gibt.
2. **33 der 95 SIA-Destillate mit Grenzwerten liessen ihr `quelle:`-Feld nicht auf eine Datei
   im Haus auflösen** (Pfad-Drift, Web-Quellen, SharePoint-Pfade ohne lokale Kopie). Sie sind
   ungeprüft. Das ist die grösste offene Kante dieses Sweeps.
3. **Für den SIA-Teil ist der Vorfilter ein Screening**, kein Nachweis. Wo der Textlayer «≤»
   kodiert, wurde nicht gerendert — die Annahme lautet, dass ein PDF, das «≤» kann, es nicht
   an anderer Stelle als Unterstrich setzt. Plausibel, nicht gemessen.
4. **Die Fassung 2017 der BRL 24 liegt nicht im Haus** (nur 2015, md5
   `48b1e0f7823fdd880d65e867ac7447e4`, bytegleich in PL-02 und PL-03). Dass S. 19 und S. 37
   auch 2017 unverändert gelten, stützt sich auf den Wort-Diff in
   `vkf-brl-24-15-fassung-2017-delta`, und der ist über den **Textlayer** gebildet. Eine
   Änderung, die nur das Vergleichszeichen betrifft, wäre darin unsichtbar.
5. **Die Refuter-Richtung ist nicht gelaufen.** Alle Befunde stammen vom Hauptprozess.
6. **Der DIN/VSS/RAL-Bestand ist nicht berührt** (Stations-Split, Rule 260712).

## 7. Wiederverwendung

Die Anlage ist auf jede Norm anwendbar und braucht nur `pdftotext`, `pdftoppm` und PIL. Der
Ablauf steht in Ziff. 2. Wer sie einsetzt, kalibriert sie zuerst an mindestens einem bekannten
Positiv- und einem bekannten Negativfall derselben Datei — die erste Fassung dieser Messung war
gegenstandslos, und das war ohne Kalibrierung nicht zu sehen.
