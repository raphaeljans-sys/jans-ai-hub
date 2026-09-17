# Rechnerische Zellaufnahme Anhang 2, Lignum 4.2 — Tab. A22-1 bis A25-1 (N86-1)

**Erstellt:** 18.09.2026, Normen-Nacht Run 87 (MacBook Pro)
**Auftrag:** `wiki/QUESTIONS.md` N86-1 — «Die Zellen der Anhang-2-Matrizen (Tab. A22-1 bis
A25-1, S. 51-54) rechnerisch aufnehmen (Methodik-Pflicht 8). Voraussetzung für eine
Statushebung von `lignum-4-2`.»
**Methodik:** Methodik-Pflicht 8 (Tabellen werden gerendert und abgelesen, nie per
Textextraktion), Methodik-Pflicht 5 (normspezifisches Render-Präfix), Methodik-Pflicht 6
(Abdeckung messen).

## Anlage und Werkzeugstand

| Grösse | Wert |
|---|---|
| Quelle | `PL - 03 Brandschutz/06 Lignum Brandschutz/Lignum 4.2 …/4.2 BTH Anschlusse bei Bauteilen mit Feuerwiederstand .pdf` |
| MD5 | `c9503e748d1d7277f82ab868ab2589cb` (unverändert gegenüber Run 85/86) |
| Betroffene PDF-Seiten | 26 (gedruckt 50/51), 27 (52/53), 28 (54/55) |
| Rendering | `pdftoppm -r 300`, Präfix `l42-r87-300-` |
| Aufteilung | A3-Doppelseite mittig gesplittet, Halbseiten nach gedruckter Seite benannt |
| Seitenzahl-Kontrolle | am Blattrand abgelesen: S. 51, 52, 53, 54 bestätigt |

## Der entscheidende Werkzeugbefund — warum die Matrizen vier Läufe lang als «leer» galten

Die Quelle ist **kein einfacher Scan, sondern ein MRC-Mischraster** (Konica Minolta bizhub
C300i, «compact PDF»). `pdfimages -list` zeigt je Seite **eine** JPEG-Hintergrundebene mit nur
**150 ppi** und daneben **rund 30 bitonale CCITT-Stencils mit 300 ppi** für Text und Linien.

Die Grauraster der Tabellenzellen liegen **nicht** in der 150-ppi-JPEG-Ebene — diese ist an
der Stelle der Matrizen flächig reines Weiss (Median 255, Delta 0,0 über alle 72 Zellen der
Tab. A25-1 gemessen). Sie liegen im Renderergebnis, das die Stencil-Ebene einbezieht.

Daraus folgen zwei Fallen, in die dieser Lauf zuerst selbst getappt ist:

1. **Ein Hintergrundmodell vernichtet das Signal.** Die naheliegende Messung «Median der Zelle
   gegen das 95. Perzentil der Spalte» liefert Deltas von 0 bis 13 und damit ein Rauschbild —
   denn wo die Mehrheit der Zellen grau ist, ist das Perzentil selbst grau. Richtig ist die
   Messung **gegen das absolute Papierweiss 255**: die Tonebene ist dort, wo nicht markiert
   ist, exakt 255, nicht «ungefähr weiss».
2. **Die verkleinerte Sichtkontrolle sieht nichts.** Der Tonunterschied beträgt rund 4 % (244
   gegen 255). In einer auf ein Drittel verkleinerten Ansicht ist er unsichtbar; die
   Aufnahme-Agenten von Run 86 haben die Matrizen deshalb zu Recht als «alle Zellen leer»
   gemeldet. Sichtbar wird er erst nach **Spreizung des Bereichs 234-255 auf 0-255**.

**Lehre für Methodik-Pflicht 8:** «Rendern und ablesen» genügt nicht, wenn die Quelle ein
MRC-Mischraster ist. Vor der Aufnahme einer Tabelle ist mit `pdfimages -list` zu prüfen, aus
welchen Ebenen die Seite besteht; eine Tonfläche kann in einer 150-ppi-JPEG-Ebene liegen, die
jede Auflösungssteigerung beim Rendern nur hochrechnet, statt sie zu gewinnen.

## Messverfahren

Je Tabelle wurden die Gitterlinien über die Spaltenmittelwerte des 300-dpi-Bildes bestimmt
(lokale Minima), danach je Zelle der **Median der Zellinnenfläche** gemessen (Rand 22 px
vertikal, 18 px horizontal abgezogen, damit keine Gitterlinie in die Messung fällt).

Legende, am Original der jeweiligen Seite einzeln abgelesen (Methodik-Pflicht 6, Legenden
gelten nicht tabellenübergreifend — hier tragen alle vier Tabellen dieselbe):

- **GRAU = «Anschlusssituation im Normalfall massgebend»**
- **WEISS = «Anschlusssituation im Normalfall nicht massgebend»**

## Trennschärfe der Messung

**Über alle 224 Zellen der vier Tabellen liegt kein einziger Median zwischen 251 und 254.**
Weisse Zellen messen exakt 255, graue Zellen 237 bis 250. Die Klassierung ist damit nicht
Ermessenssache, sondern ein sauber bimodaler Befund.

| Tabelle | Zellen | grau | weiss | Median grau (min-max) | Median weiss |
|---|---|---|---|---|---|
| A22-1 (S. 51) | 30 | 21 | 9 | 242-248 | 255 |
| A23-1 (S. 52) | 80 | 61 | 19 | 238-250 | 255 |
| A24-1 (S. 53) | 42 | 35 | 7 | 237-248 | 255 |
| A25-1 (S. 54) | 72 | 64 | 8 | 239-246 | 255 |
| **Summe** | **224** | **181** | **43** | | |

## Messergebnis je Zelle

Angegeben ist der gemessene Median; `X` = grau/massgebend, `.` = weiss/nicht massgebend.


## S. 51 — Tab. A22-1  (3 Zeilen x 10 Spalten)
| Zeile | 4.2.2 | 4.2.3 | 4.2.4 | 4.2.5 | 4.2.6 | 4.2.7 | 4.2.8 | 4.2.9 | 4.2.10 | 4.3 | Muster |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 Wand-Wand | 248 | 255 | 255 | 247 | 245 | 255 | 255 | 246 | 246 | 244 | `X..XX..XXX` |
| 2 Wand-Decke/Dach | 247 | 255 | 255 | 247 | 246 | 246 | 255 | 244 | 244 | 242 | `X..XXX.XXX` |
| 3 Wand-Decke | 247 | 255 | 255 | 248 | 247 | 247 | 247 | 246 | 246 | 245 | `X..XXXXXXX` |

Trennschaerfe: grau n=21 min 242 max 248 · weiss n=9 min 255 max 255

## S. 52 — Tab. A23-1  (8 Zeilen x 10 Spalten)
| Zeile | 4.2.2 | 4.2.3 | 4.2.4 | 4.2.5 | 4.2.6 | 4.2.7 | 4.2.8 | 4.2.9 | 4.2.10 | 4.3 | Muster |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 Wand-Wand | 245 | 244 | 255 | 249 | 249 | 249 | 255 | 250 | 250 | 248 | `XX.XXX.XXX` |
| 2 Wand-Decke | 243 | 241 | 255 | 246 | 247 | 246 | 249 | 249 | 250 | 246 | `XX.XXXXXXX` |
| 3 Wand-Decke | 242 | 238 | 255 | 243 | 244 | 246 | 248 | 248 | 249 | 246 | `XX.XXXXXXX` |
| 4 Wand-Decke | 255 | 240 | 255 | 245 | 245 | 245 | 248 | 248 | 249 | 246 | `.X.XXXXXXX` |
| 5 Wand-Wand | 246 | 244 | 248 | 248 | 255 | 255 | 255 | 249 | 249 | 246 | `XXXX...XXX` |
| 6 Wand-Decke | 247 | 245 | 255 | 248 | 255 | 255 | 249 | 249 | 249 | 246 | `XX.X..XXXX` |
| 7 Wand-Wand | 255 | 245 | 248 | 248 | 255 | 255 | 255 | 249 | 249 | 246 | `.XXX...XXX` |
| 8 Decke-Decke | 255 | 246 | 248 | 248 | 255 | 255 | 250 | 249 | 249 | 247 | `.XXX..XXXX` |

Trennschaerfe: grau n=61 min 238 max 250 · weiss n=19 min 255 max 255

## S. 53 — Tab. A24-1  (3 Zeilen x 14 Spalten)
| Zeile | 4.2.2 | 4.2.3 | 4.2.4/5.3.4 | 4.2.5 | 4.2.6 | 4.2.7 | 4.2.8/5.3.6 | 4.2.9/5.3.7 | 4.2.10/5.3.8 | 4.3/5.4 | 5.3.2 | 5.3.3 | 5.3.5 | 5.3.9 | Muster |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 Wand-Wand | 255 | 248 | 255 | 246 | 246 | 247 | 255 | 245 | 243 | 243 | 244 | 244 | 244 | 239 | `.X.XXX.XXXXXXX` |
| 2 Wand-Decke/Dach | 255 | 246 | 255 | 244 | 244 | 246 | 246 | 246 | 245 | 243 | 245 | 243 | 242 | 237 | `.X.XXXXXXXXXXX` |
| 3 Wand-Decke | 255 | 247 | 255 | 245 | 245 | 246 | 246 | 246 | 246 | 246 | 246 | 245 | 244 | 240 | `.X.XXXXXXXXXXX` |

Trennschaerfe: grau n=35 min 237 max 248 · weiss n=7 min 255 max 255

## S. 54 — Tab. A25-1  (8 Zeilen x 9 Spalten)
| Zeile | 5.3.2 | 5.3.3 | 5.3.4 | 5.3.5 | 5.3.6 | 5.3.7 | 5.3.8 | 5.3.9 | 5.4 | Muster |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 Wand-Wand | 244 | 244 | 255 | 245 | 255 | 245 | 242 | 240 | 242 | `XX.X.XXXX` |
| 2 Wand-Decke | 240 | 242 | 255 | 243 | 244 | 246 | 242 | 242 | 240 | `XX.XXXXXX` |
| 3 Wand-Decke | 240 | 242 | 255 | 242 | 244 | 245 | 244 | 245 | 244 | `XX.XXXXXX` |
| 4 Wand-Decke | 239 | 241 | 255 | 241 | 243 | 245 | 244 | 243 | 242 | `XX.XXXXXX` |
| 5 Wand-Wand | 239 | 241 | 243 | 243 | 255 | 245 | 241 | 242 | 242 | `XXXX.XXXX` |
| 6 Wand-Decke | 241 | 242 | 255 | 243 | 246 | 245 | 243 | 243 | 242 | `XX.XXXXXX` |
| 7 Wand-Wand | 242 | 242 | 243 | 243 | 255 | 245 | 241 | 241 | 241 | `XXXX.XXXX` |
| 8 Decke-Decke | 242 | 243 | 243 | 241 | 243 | 242 | 239 | 240 | 240 | `XXXXXXXXX` |

Trennschaerfe: grau n=64 min 239 max 246 · weiss n=8 min 255 max 255
