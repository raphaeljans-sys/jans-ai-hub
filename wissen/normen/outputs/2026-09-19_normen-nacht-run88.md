# Normen-Nacht Run 88 — 19.09.2026, ab 09:07 CEST (MacBook Pro)

**Zwei Arbeitsblöcke auf `lignum-4-2`:** (1) N87-1, die Piktogramme der vier Anhang-2-Matrizen;
(2) die Refuter-Richtung auf die Inline-Nachträge der Abdeckungsrunde Run 86. Danach
**Statushebung auf `established`**. Belege: `training/l42-anhang2-piktogramme-260919.md` und
der Prüfstand am Ende des Destillats.

## Big Points

1. **Die 22 Matrixzeilen sind jetzt auswählbar.** Jede Zeile hat ihre Stossform (T, L-Ecke,
   Kreuz, Flucht-Stoss), die Brandseite und den Weiterleitungsweg. Die drei gleichnamigen
   «Wand-Decke»-Zeilen der Tab. A23-1 trennen sich in Wand unter durchlaufender Decke, Decke
   seitlich an durchlaufender Wand und Kreuzung. Eindeutig sind die Zeilen erst mit
   **Randbeschriftung und Piktogramm zusammen**: die Paare Z. 1/2, 5/6 und 7/8 sehen im Bild
   gleich aus.
2. **Die Bauteiltöne wurden gemessen, nicht betrachtet.** Die Töne liegen 4 bis 11 Stufen unter
   Papierweiss. Ergebnis: drei scharf getrennte Klassen über alle 81 Arme. A23-1 ist durchgehend
   grau, A25-1 durchgehend blau, A22-1 hat je Piktogramm einen grauen und einen weissen Arm.
   Daraus folgt: **Blau = RF1, Grau = brandabschnittsbildendes Holzbauteil, Weiss = nicht babb**.
   Diese Zuordnung ist **abgeleitet**. Der Anhang hat keine eigene Legende; die Legende Kap. 6
   passt in der Farbfamilie, nicht im Tonwert.
3. **Der letzte ungeprüfte Schreibvorgang war die Abdeckungsrunde selbst.** Run 86 hat rund 30
   Kernlücken inline nachgetragen, und diese Nachträge wurden nie widerlegt. Die Refuter-Runde
   darauf hat beide untergeschobenen Kontrollwerte erkannt. Sie fand **2 Kernbefunde** und
   **0 falsche Zahlenwerte**:
   - Kap. 5.2.1 hiess «sinngemäss», obwohl das Wort nicht im Original steht.
   - Kap. 5.2.2: das Installationsverbot war auf Betonschichten ausgedehnt, steht im Original
     aber nur im Estrich-Absatz.
4. **Fünf von sieben Refuter-Meldungen waren Fehler meines eigenen Aussagenpakets**, nicht des
   Destillats. Nicht übernommen (Methodik-Pflicht 7), als Methodenbeobachtung N88-2 festgehalten.
5. **Status `established`** mit ausgewiesenen Restvorbehalten. Begründet ist die Hebung mit
   Folgendem:
   - Beide Richtungen sind auf allen Teilen gelaufen.
   - Die Refuter-Stufe hat nachweislich widerlegt (Kontrollen 2/2).
   - Alle Kernbefunde sind korrigiert.
   - In acht Runden fand sich kein falscher Zahlenwert.

   Eine befundlose Runde ist ausdrücklich **nicht** die Begründung.

## Voraussetzungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Datum | `date`: 2026-09-19 09:07 CEST (Nachhol-Lauf am Vormittag, Takt 01:20) |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| NAS-Mount | gemountet, Zugriff mit vollem Pfad |
| OneDrive-Zugriff | inhaltlich lesbar (`pdftoppm`), kein M365-Fallback nötig |
| Quelle | MD5 `c9503e748d1d7277f82ab868ab2589cb`, unverändert gegenüber Run 85-87 |
| Run-Nummer | 88, nach Sicht der jüngsten `outputs`-Datei (Run 87, 18.09.) |
| Inventar SIA/VKF | 0 abarbeitbare `[ ]`-Positionen (sechs Beschaffungs-Bring-Schulden), daher Vertiefungsstufe (b) |

Stations-Split eingehalten: keine DIN-, VSS- oder RAL-Position berührt.

## Verdikte

### Block 1: Piktogramme (N87-1)

| Tabelle | Zeilen | Piktogramme | Arme | Agent bestätigt | Widersprüche |
|---|---|---|---|---|---|
| A22-1 (S. 51) | 3 | 6 | 18 | 6/6 | 0 |
| A23-1 (S. 52) | 8 | 8 | 21 | 8/8 | 0 |
| A24-1 (S. 53) | 3 | 7 | 21 | 7/7 | 0 |
| A25-1 (S. 54) | 8 | 8 | 21 | 8/8 | 0 |
| **Summe** | **22** | **33** | **81** | **33/33** | **0** |

Die eine Agenten-Unsicherheit (A22-1 Z. 3 oben, oberer Arm) hat der Hauptprozess am Original
entschieden: Abseits des Pfeilsaums sind 91 % der Pixel exakt 255, das Ergebnis ist also WEISS.

### Block 2: Refuter-Runde auf die Run-86-Nachträge

| Paket | Aussagen | Kontrolle erkannt | Destillat-Befund | Paket-Artefakt | bestätigt |
|---|---|---|---|---|---|
| A (S. 6-29) | 17 | 1/1 (Kap. 4.3 «höheren») | 0 | 2 (A5, A13) | 14 |
| B (S. 28-46) | 13 | 1/1 (b ≥ 150 mm) | 2 Kern (B6, B7), 2 Neben (B9, B12) | 3 (Seiten B3, B4, B10) | 5 bestätigt, 3 davon mit Seitenfehler des Pakets |

Beide Kernbefunde hat der Hauptprozess am eigenen Rendering der S. 35 bestätigt und inline
korrigiert (Methodik-Pflicht 9).

## Selbstkorrekturen im Lauf

- **Plausibilitätsprüfung aus dem Gedächtnis:** Die erste Fassung des Abgleichs
  Geometrie gegen Zellmuster behauptete zwei Dinge falsch. Dass 4.2.2 bei der L-Ecke
  entfällt, stimmt nicht; dass Auflager in A22-1 bei allen Schnitten massgebend sind, ebenfalls
  nicht. Beides wurde vor der Übernahme am Run-87-Messprotokoll korrigiert.
- **Armzahl verzählt:** Es sind 81 Arme, nicht 68. Das ist vor dem Commit berichtigt.
- **Legende Kap. 6:** Sie war seit Run 86 im Bestand, wurde aber erst im Lauf herangezogen.
  Damit wurde aus «keine Legende vorhanden» die genauere Aussage «Farbfamilie passt, Tonwert
  nicht».

## Was NICHT geprüft wurde

1. **Die Absicht hinter den aufgehellten Piktogrammtönen.** Die Tonzuordnung bleibt
   abgeleitet.
2. **N88-1:** ob das Installationsverbot der Kap. 5.2.2 sinngemäss auch für Betonschichten gilt.
   Die Quelle schweigt dazu. Klärungsweg: Lignum 4.1 [7] oder die Brandschutzbehörde.
3. **Die Zellwerte der Matrizen** wurden nicht erneut gemessen (Run 87).
4. **Detailskizzen der Kap. 4 und 5:** Für eine Projektanwendung sind sie weiterhin am Original
   zu lesen (offene Punkte im Destillat).

## Vorgelegt

**Neu:**
- N88-1: Installationsverbot und Beton, fachlich offen, P3.
- N88-2: Methodenbeobachtung, dass Aussagenpakete eigene Fehler erzeugen. Einmal belegt,
  **keine** Pflicht vorgeschlagen.
- N88-3: der nächste Lauf.

**Geschlossen:** N87-1 und der seit Run 86 offene Fassungsstand der Publikation.

**Unverändert bei Raphael:** N87-2, N86-2, N86-3, N85-1, N85-3, N85-5, N84-1, N83-1, N82-1,
N81-3, N79-2, N78-1, N77-2/-3, N65-2/-4, N63-2/-3, N60-1, N60-2 und die Stichprobenrunde für
den Mittelbau der `established`-Destillate (n62-3). Dazu die Beschaffungs-Bring-Schulden
SIA 181:2020, SIA 491 und SN EN 12193.

## Nächster Lauf

Die Abdeckungsrichtung auf `lignum-4-1` und `lignum-lignatec` (N88-3). Vorher ist mit
`pdfimages -list` zu prüfen, ob auch diese Quellen MRC-Mischraster sind. Bei Paketen für
Refuter-Runden die Aussagen möglichst wörtlich aus dem Destillat ziehen, nicht paraphrasieren
(N88-2).

Quelle zum Fassungsstand: [Lignum-Shop, Dokumentation Brandschutz](https://www.lignum.ch/shop/lignum-dokumentationen/dokumentation-brandschutz-2015/),
Abruf 19.09.2026.
