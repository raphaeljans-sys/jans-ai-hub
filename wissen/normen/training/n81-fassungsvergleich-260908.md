# Anlage Run 81 — Fassungsvergleich BRL 15-15de, 2015 gegen 2017, über alle 35 Seitenpaare

**Datum:** 08.09.2026 · **Station:** MacBook Pro · **Lauf:** `normen-training-nacht` Run 81
**Auftrag:** N80-1 (`wiki/QUESTIONS.md`) — der Bildvergleich war erst auf S. 22-23 gefahren.

## 1. Quellen (Methodik-Pflicht 1 und 3)

Beide Ablagen geprüft; die Dateien sind je Fassung **bytegleich** in PL-02 und PL-03.

| Fassung | MD5 (12) | Seiten | Producer |
|---|---|---|---|
| 01.01.2015 (unrevidiert) | `486dc5e9043e` | 35 | Microsoft® Word 2010 |
| 01.01.2017 (revidiert) | `6dcc54f34a2d` | 35 | Microsoft Word |

Die MD5 der 2017er-Datei stimmt mit der Fassungsmatrix `n58-vkf-fassungsmatrix-260820.md` überein.
**Seitenversatz 0 in beiden Dateien** (gedruckte «2» auf PDF-Seite 2 abgelesen).

**Änderungsliste am Original nachgelesen** (S. 2 der 2017er-Datei, nicht aus dem Destillat übernommen):
Ziff. 2.2 Abs. 2+3 (S. 5) · Ziff. 2.4 (S. 6) · Ziff. 3.1.2 Abs. 3 (S. 7) · Ziff. 3.7.1 Tabelle 1
(S. 11) · Anhang zu Ziff. 2.4 (S. 22-23) · zu Ziff. 3.3.3 (S. 27) · zu Ziff. 3.7.11 (S. 33) ·
zu Ziff. 3.7.13 (S. 34). Die 2015er-Datei trägt an derselben Stelle **keine** Änderungsliste.

## 2. Warum der rohe Pixel-Sweep allein nichts entscheidet

150-dpi-Sweep über alle 35 Seitenpaare: **jede** Seite weicht ab, von 0.28 % (S. 20) bis 24.7 %
(S. 7). Zwei Bänder treten auf **jeder** Seite auf — y 91-112 (Kopfzeile) und y 1674-1689
(Fusszeile). Ursache ist nicht Inhalt, sondern der **verschiedene PDF-Erzeuger** (Word 2010 gegen
Word) und geringfügig abweichende Seitenbreite (595.32 gegen 595.38 pt).

**Ein roher Pixel-Diff ist zwischen diesen beiden Dateien folglich kein Inhaltsmass.** Er taugt als
Screening (wo lohnt das Hinsehen), nicht als Befund.

## 3. Warum der seitenweise Textvergleich in die Irre führt

Seitenweiser Volltextvergleich meldete Abweichungen auf S. 1, 2, 3, 5-15, 22, 27, 34 — darunter
**S. 3, 8, 9, 10, 12, 13, 14, 15, die die Änderungsliste nicht nennt**. Das sah nach einer
unvollständigen Änderungsliste aus und ist keines: es ist **Reflow**. Die angekündigte Änderung auf
S. 7 (Ziff. 3.1.2 Abs. 3) verschiebt Text über Seitengrenzen; S. 8 der 2017er-Fassung gewinnt
Ziff. 3.2/3.2.1 und verliert Ziff. 3.4 an S. 9, und so weiter bis S. 15. Ab **S. 16** decken sich
die Seiten wieder exakt. S. 3 ist das Inhaltsverzeichnis, dessen Seitenzahlen dem Reflow folgen.

**Lehre:** Der Vergleich zweier Fassungen wird über das **ganze Dokument** gebildet, nicht je
Seite. Die Seitenzuordnung erfolgt erst danach.

## 4. Inhaltliches Delta (Volltext über das ganze Dokument)

Angekündigt und bestätigt: Titelblattdatum · Änderungsliste selbst · Ziff. 2.2 Abs. 2+3
(«Aussenwände» → «äusserste Schicht beider Aussenwandkonstruktionen», Abstände 5/7.5/10 m und
4/5/6 m **wertgleich**) · Ziff. 2.4 · Ziff. 3.1.2 Abs. 3 («Zwischen Nutzungseinheiten» → «Zwischen
Brandabschnitten») · Ziff. 3.7.1 Tabelle 1 (zwei Zellen gewinnen [5]; Fussnote [5] erweitert) ·
Anhang S. 22-23, 27, 33, 34. Neu sind zudem Fussnotenmarker «Fassung gemäss Beschluss IOTH vom
22. September 2016» an den revidierten Stellen.

**Fussnote [5], vollständig (die inhaltlich gewichtigste Textänderung):**

- 2015: «Bei zweigeschossigen Bauten mit einer gesamten Geschossfläche von maximal 2'400 m² kann
  der Feuerwiderstand um 30 Minuten reduziert werden.»
- 2017: «Bei zweigeschossigen Bauten mit einer gesamten Geschossfläche **über Terrain** von maximal
  2'400 m² gilt: − der Feuerwiderstand kann um 30 Minuten reduziert werden. **Bei Geschossdecken
  mit Feuerwiderstand REI 30 kann der Feuerwiderstand nur auf EI 30 reduziert werden**; − **bei
  Beherbergungsbetrieben [c] kann der Feuerwiderstand generell um 30 Minuten reduziert werden.**»

**Das Destillat führte diesen Wortlaut bereits vollständig** (Z. 27 und Z. 74) — Methodik-Pflicht 7
und 10: **kein Befund, sondern eine unabhängige Bestätigung.** Ein Zusatz bleibt: das Destillat
datierte den Wortlaut auf den «10/2022-Druck, rev. 2016»; er steht nachweislich schon in der
**Fassung 01.01.2017**.

## 5. Bildvergleich der drei offenen Anhangseiten (300 dpi, Präfix `brl1515-r81-`)

| Seite | Rohdifferenz | nach Ausrichtung | Befund |
|---|---|---|---|
| **27** | 405'431 px | **10'517 px** bei dy = **53** (−97.4 %) | Inhalt unverändert; nur die Überschrift «an Bedachungen» → «an Dachkonstruktionen» bricht zweizeilig um und verschiebt alles darunter |
| **33** Zeichnung (y 560-1160) | 245 px | dy = **0** | **Zeichnung unverändert** |
| **33** Beschriftung (y 1160-1700) | 113'528 px | 82'689 px bei dy = 64 | **Zuwachs, nicht Versatz**: Bezeichnung «Maximale Brandabschnittsfläche / ohne Löschanlage» und eine **neue Zeile «mit Löschanlage → beliebig / beliebig»**; «mindestens 25 % unverschliessbaren» neu unterstrichen |
| **34** | 46'829 px | — | **Inhaltliche Änderung**: «auf der Fassadenaussenseite keine Massnahmen» → «beim Anschluss an die Aussenwand keine baulichen Massnahmen»; Überschrift und übrige Bänder zeichengleich |

Alle vier Befunde zusätzlich per Sichtkontrolle am gestapelten Ausschnitt abgelesen
(Methodik-Pflicht 8: rendern **und** lesen, nicht nur messen).

## 6. Zwei Belege für die strukturelle Blindheit des Textlayers

1. **S. 33 ist im Textlayer wortgleich** — 261 Zeichen in beiden Fassungen, nur Kopfzeile, drei
   Titelzeilen, Seitenzahl. «beliebig» und «Maximale Brandabschnittsfläche» kommen darin **nicht**
   vor; die einzigen zwei «beliebig»-Treffer der Datei stehen auf S. 29 (Lagerhöhen-Tabelle). Eine
   ganze Flächenregel ist hinzugekommen, und jede textbasierte Methode meldet «unverändert».
2. **Der Textlayer verfälscht das Vergleichszeichen.** Gedruckt: «≤ 1'200 m²», «≤ 300 Personen».
   Extrahiert: «<», «>». Dieselbe Familie wie das GVZ-Merkblatt 30.17.3 (Methodik-Pflicht 8), hier
   erstmals an einer **VKF-Richtlinie** belegt. Das Destillat führt korrekt «≤», weil Run 79/80 die
   Tabelle am Rendering aufgenommen haben.

## 7. Gegenproben, die einen Scheinbefund verhindert haben

- **«m» → «m2» ist kein Delta.** An sechs Stellen meldet der Volltext-Diff eine scheinbar
  nachgetragene Einheit. Am Rendering drucken **beide** Fassungen «m²»; per `pdftotext -bbox` hat
  die 2017er-Datei ein eigenes, angehobenes Wort «2» (yMin 241.592 gegen Grundlinie 242.438), die
  2015er-Datei kodiert die hochgestellte 2 nicht als Wort. Reines Encoding.
- **Vier orthografische Änderungen nennt die Änderungsliste nicht:** «Industrie- und Gewerbe» →
  «Industrie und Gewerbe», «Einlegerwohnung» → «Einliegerwohnung», «Parking» → «Parkings», ein
  ergänztes Komma in Ziff. 3.4 Abs. 5. Keine berührt eine Anforderung.

**Ergebnis zur Vollständigkeit:** Die Änderungsliste auf S. 2 ist für alle **anforderungsrelevanten**
Änderungen vollständig; unvollständig ist sie nur bei Orthografie.

## 8. Was diese Anlage ungeprüft lässt (Pflichtausweis der Methoden-Lehre)

1. **Der Sweep ist ein Screening, kein Inhaltsnachweis je Seite.** Ausgerichtet, gerendert und
   gelesen wurde auf S. 22-23 (Run 80), S. 27/33/34 (Run 81) und S. 11-13 (Run 79/80). Für die
   **Textseiten 3-10 und 14-21** trennt allein der Volltext-Diff Inhalt von Rendering. Eine rein
   grafische Änderung ohne Textlayer-Spur wäre dort nicht gefunden worden — unwahrscheinlich, weil
   diese Seiten kaum Zeichnungen tragen, aber nicht gemessen.
2. **Die Refuter-Richtung ist auf den Nachträgen dieses Laufs nicht gelaufen** (N80-2 unverändert).
   Alle Befunde von Run 81 stammen vom Hauptprozess und sind am Original gemessen; ein
   unabhängiger Widerlegungsversuch steht aus. Deshalb **keine Hebung auf `established`**.
3. **Die 20-Personen-Schwelle** der [a]/[b]/[c]-Definition steht weiterhin auf einer
   `superseded`-Fassung der BRL 10-15 (N80-3, unverändert).
4. **Nicht gemessen: die Spezifität des Verfahrens.** Ob der Ausrichtungs-Test eine künstlich
   verfälschte Seite zurückweisen würde, ist nicht geprüft (dieselbe offene Gegenprobe wie bei der
   Farbklassierung, Run 50/79/80).
