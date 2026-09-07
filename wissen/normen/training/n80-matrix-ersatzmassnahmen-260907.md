# N80 — Messanlage: Ersatzmassnahmen-Matrix BRL 15-15, Anhang S. 23

**Erstellt:** 07.09.2026, Normen-Nacht Run 80 (MacBook Pro)
**Auftrag:** der von Run 79 ausdrücklich offen gelassene Punkt — «die Ersatzmassnahmen-Matrix
S. 23 ist als Bestand erfasst, aber nicht nachgezeichnet» (Report Run 79, Ziff. 7.2).
**Zweck dieser Datei:** der Beleg für die Messung. Sie macht jede spätere Runde billig — wer
die Matrix erneut prüfen will, wiederholt die hier protokollierte Messung, statt sie neu zu
erfinden (Muster nach Methodik-Pflicht 6).

---

## 1. Quelle, zweifach abgesichert

| Prüfung | Ergebnis |
|---|---|
| Datei | `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/Brandschutzabstaende Tragwerke 17 BSPUB-1394520214-81.pdf` |
| MD5 | `6dcc54f34a2d6b9a1145a446f97688ed` — stimmt mit `n58-vkf-fassungsmatrix-260820.md` Zeile 15-15 überein |
| Fassung | Titelblatt **01.01.2017 / 15-15de**, 35 Seiten, A4 |
| Ablage | **PL-03**, nicht PL-02 (Methodik-Pflicht 1) |
| Gedruckte Seitenzahl | am Fuss abgelesen: PDF-Seite 22 → «22», PDF-Seite 23 → «23». **Seitenversatz null** |
| Textlayer S. 23 | **keiner** ausser Kopf- und Fusszeile. Die ganze Seite ist Grafik — `pdftotext` ist hier strukturell blind (Methodik-Pflicht 8) |

## 2. Verfahren

**Hauptprozess.** Seite 23 mit `pdftoppm -r 300` gerendert, Präfix `brl1515-r80-300-`
(normspezifisches Präfix, Methodik-Pflicht 5). Grüne Pixel über `G>90 ∧ G−R>40 ∧ G−B>40`,
rote über `R>110 ∧ R−G>60 ∧ R−B>60` maskiert, beide Masken über eine Flutfüllung zu
Zusammenhangskomponenten ab 40 Pixeln geclustert, Schwerpunkte ausgegeben und nach
Zeilen- und Spaltenlage zugeordnet.

**Unabhängiger Refuter.** Eigenes Rendering bei 200 und 450 dpi, Präfix `refA-brl1515-`,
eigene Farbschwellen und — anders als der Hauptprozess — eine eigene **Rasterbestimmung über
den Schwarzanteil je Spalte und Zeile**, um die Zellgrenzen zu bestimmen, statt die
Symbolschwerpunkte zu gruppieren. Zwei verschiedene Wege zum selben Raster.

## 3. Messwerte des Hauptprozesses (300 dpi, Bild 2481 × 3509 px)

Symbolschwerpunkte, ohne die zwei Legendensymbole bei x ≈ 1357 (diese liegen rechts der
Tabelle und gehören zur Erklärung «geeignet / nicht geeignet»):

| Spalte | A | B | C | D | E | F |
|---|---|---|---|---|---|---|
| x-Schwerpunkt | 626-630 | 749-750 | 869 | 988 | 1108 | 1228 |

| Zeile | y-Schwerpunkt | grün bei x | rot bei x |
|---|---|---|---|
| x ≥ 5.0 m | 511 | 626 · 749 · 869 · 988 · 1108 · 1228 | — |
| x ≥ 2.0 m | 582 | 749 · 869 · 988 · 1108 · 1228 | 630 |
| x < 2.0 m | 653 | 988 · 1228 | 630 · 750 · 869 · 1108 |

Blobgrössen 495-510 px (grün) bzw. 390-403 px (rot) — gleichmässig, also keine
zusammengelaufenen oder halbierten Symbole.

## 4. Gegenmessung des Refuters (450 dpi, eigenes Raster)

Senkrechte Trennlinien bei x = 444, 856, 1033, 1210, 1388, 1564, 1742, 1919; waagrechte bei
y = 444, 717, 822, 927, 1032. Daraus die Spaltenintervalle A = 856-1033, B = 1033-1210,
C = 1210-1388, D = 1388-1564, E = 1564-1742, F = 1742-1919. **Der Trennstrich der
Gruppenüberschrift liegt bei x = 1564** — «beidseitig» umfasst damit gemessen A bis D,
«einseitig» E und F.

13 grüne und 5 rote Blobs in der Matrix, Schwerpunkte je Zeile:

| Zeile | y | grün | rot |
|---|---|---|---|
| x ≥ 5.0 m | 767 | 940 · 1124 · 1304 · 1483 · 1663 · 1843 | — |
| x ≥ 2.0 m | 873 | 1124 · 1304 · 1483 · 1663 · 1843 | 946 |
| x < 2.0 m | 980 | 1483 · 1843 | 946 · 1126 · 1304 · 1663 |

**Übereinstimmung in allen 18 Zellen**, bei unterschiedlichem Rendering, unterschiedlichen
Farbschwellen und unterschiedlicher Rasterbestimmung.

## 5. Ergebnis

| Gebäudeabstand x | A | B | C [1] | D | E | F |
|---|---|---|---|---|---|---|
| x ≥ 5.0 m | ja [2] | ja | ja | ja | ja | ja |
| x ≥ 2.0 m | **nein** | ja | ja | ja | ja | ja |
| x < 2.0 m | **nein** | **nein** | **nein** | ja | **nein** | ja |

[1] Variante C nur, wenn die benachbarten äussersten Schichten der Aussenwandkonstruktion aus
Baustoffen der RF1 bestehen. [2] Variante A ist bei reduzierten Brandschutzabständen nach
Ziff. 2.2 Abs. 3 schon ab x ≥ 4.0 m geeignet.

## 6. Was die Messung allein nicht entscheidet

Die Zellwerte sind gemessen; die **Bedeutung** der sechs Varianten ist gelesen. Sie steht in
den Konstruktionsschnitten darunter und wurde von Hauptprozess und Refuter unabhängig
aufgenommen (Aufbauten, Öffnungsbeschriftungen, Bemassungen). Drei Punkte, die nur die
Lektüre liefert und die für die Anwendung tragen:

1. **E gegen F ist eine Öffnungsfrage.** Beide einseitigen Varianten tragen denselben Aufbau
   1/3/6 auf der Massnahmenseite und dieselbe Gegenseite 1/4. Der einzige Unterschied ist,
   dass die Massnahmenseite in F **keine Öffnung** hat — vom Refuter über Scanlinien durch
   alle drei Schichten (x = 2245 / 2295 / 2335, y 3360-4109 durchgehend ohne helle
   Unterbrechung) belegt. Genau daran hängt, dass F unter 2 m noch trägt und E nicht.
2. **Der Öffnungsversatz ist nur in C bemasst.** Gezeichnet ist er auch in A, B und D
   (rund ein halbes Öffnungsmass), bemasst mit «≥ 1 m» ausschliesslich in C. Wer den Versatz
   in A, B oder D als Anforderung liest, verschärft die Richtlinie ohne Grundlage.
3. **Der Stern der Schichtenlegende bindet nur an 3, 5 und 6.** Die Fussnote «entspricht die
   feuerwiderstandsfähige Wand einer Konstruktion RF1, ist die Schicht 3 nicht erforderlich»
   gilt damit für die Wandschichten, nicht für die äussersten Schichten 1 und 2 und nicht für
   die Wand ohne Feuerwiderstand 4.

## 7. Fassungsvergleich 2015 gegen 2017 auf derselben Seite (Methodik-Pflicht 4)

Beide Fassungen bei 300 dpi gerendert und pixelweise gediffed (Schwelle 40 von 255).
**25'059 abweichende Pixel in genau drei Bändern:**

| Band (y) | Befund |
|---|---|
| 184-236 | Kopfzeile. Visuell zeichengleich; kein reiner Versatz rekonstruierbar (bester dx = 1, dy = −1 senken die Differenz kaum) → Rendering-Artefakt zweier verschiedener PDF-Erzeuger, **kein Inhaltsunterschied** |
| **513-543** | **zweite Zeile der Fussnote [1]**, x 1488-2155: «…der Aussen**wand** aus Baustoffen der RF1» (2015) gegen «…der Aussen**wandkonstruktion** aus Baustoffen der RF1» (2017) |
| 3348-3380 | Fusszeile, x 2301-2331 (Seitenzahl) — Rendering-Artefakt |

**Damit ist gemessen, nicht behauptet: alle 18 Matrixzellen, alle sechs Variantenzeichnungen
und die ganze Schichtenlegende sind zwischen 2015 und 2017 unverändert.** Die Änderung, die
die Änderungsliste auf S. 2 für «Anhang zu Ziffer 2.4, S. 22-23» ankündigt, besteht aus vier
Wortlautänderungen: dreimal «Aussenwand/Aussenwände» → «Aussenwandkonstruktion(en)» (zweimal
im Text S. 22, einmal in Fussnote [1] auf S. 23) und einmal die Vertauschung «Bei Bedachungen:
für die Dachkonstruktion gelten …» → «Bei Dachkonstruktionen: für die Bedachung gelten …».

**Die Vertauschung ist keine geänderte Anforderung.** Sie führt die Nomenklatur auf die 2016
umbenannten Kapiteltitel der BRL «Verwendung von Baustoffen» nach — dort Ziff. 3.3
«Bedachungen» → «Dachkonstruktionen» und Ziff. 3.3.2 umgekehrt. Der Beleg lag bereits in der
KB, im Schwester-Destillat `vkf-brl-verwendung-baustoffe.md`; die beiden Hälften waren nur nie
verbunden.

## 8. Was diese Anlage ungeprüft lässt (Pflichtausweis der Methoden-Lehre)

1. **Die Refuter-Richtung auf dem Ergebnis.** Beide Läufe dieser Anlage sind
   Abdeckungs-/Messläufe. Niemand hat versucht, die fertige Wiedergabe im Destillat zu
   widerlegen.
2. **Der Bildvergleich ist auf zwei Seiten gefahren** (22-23). Die Änderungsliste auf S. 2
   nennt zusätzlich **S. 27, 33 und 34**; dort stützt sich der Delta-Abschnitt des Destillats
   weiterhin allein auf den Volltextvergleich von Run 7 — bei grafiklastigen Anhangseiten
   dieselbe strukturelle Blindheit, die hier auf S. 22-23 gerade widerlegt wurde. **Das ist
   der naheliegendste nächste Lauf auf dieser Quelle.**
3. **Nicht gemessen:** ob die Schichtenlegende der Matrix mit der Schichtsystematik der BRL
   «Verwendung von Baustoffen» deckungsgleich ist.
4. **Die Farbklassierung wurde nicht gegen gepflanzte Fehler geprüft.** Beide Läufe kamen zum
   selben Ergebnis; eine Kontrolle, ob das Verfahren eine verfälschte Zelle zurückweisen
   würde, ist nicht gefahren (dieselbe offene Gegenprobe wie in Run 50 und Run 79 Ziff. 7.7).
