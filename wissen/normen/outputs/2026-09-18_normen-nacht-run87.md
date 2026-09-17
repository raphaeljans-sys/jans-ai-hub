# Normen-Nacht Run 87 — 18.09.2026, ab 01:28 CEST (MacBook Pro)

**Ein Arbeitsblock:** die rechnerische Zellaufnahme der vier Anhang-2-Matrizen von
`lignum-4-2` (N86-1, der von Run 86 benannte nächste Schritt und zugleich die dort genannte
Bedingung für eine Statushebung). Beleg: `training/l42-anhang2-zellaufnahme-260918.md`.

## Big Points

1. **224 von 224 Zellen aufgenommen — 181 massgebend, 43 nicht massgebend, kein einziger
   Grenzfall.** Weisse Zellen messen exakt 255, graue 237 bis 250; im Bereich 251-254 liegt
   über alle vier Tabellen hinweg kein Median. Die Klassierung ist kein Ermessen.
2. **Der Rückstand war ein Werkzeugproblem, kein Quellenproblem.** Die Quelle ist ein
   **MRC-Mischraster**: je Seite eine JPEG-Tonebene mit nur **150 ppi** neben rund 30
   bitonalen **300-ppi**-Stencils. Deshalb galten die Matrizen vier Läufe lang als leer — und
   deshalb war die Meldung der Aufnahme-Agenten von Run 86 («alle Zellen leer») unter ihren
   Mitteln korrekt, nicht nachlässig.
3. **Zwei Messfallen, beide in diesem Lauf zuerst selbst durchlaufen.** Ein Hintergrundmodell
   (95. Perzentil je Spalte) löscht das Signal genau dort, wo die Mehrheit der Zellen markiert
   ist; richtig ist die Messung gegen das absolute Papierweiss 255. Und eine auf ein Drittel
   verkleinerte Sichtkontrolle kann einen 4-%-Tonunterschied grundsätzlich nicht zeigen.
4. **Drei unabhängige Ablesungen je Tabelle, 0 Widersprüche.** 221 von 224 Zellen unabhängig
   bestätigt; die drei nicht bestätigten sind eine Spalte, die ein Agent gar nicht als Spalte
   geführt hat — kein Dissens über eine Markierung.
5. **Keine Statushebung, aus einem neuen Grund.** Die Run-86-Bedingung ist erfüllt, aber die
   Matrizen unterscheiden ihre Zeilen über **Piktogramme**; vier von acht Zeilen der Tab.
   A23-1 heissen gleich. Vollständig wiedergegeben, noch nicht benutzbar (N87-1).

## Voraussetzungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Datum | `date` → 2026-09-18 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| NAS-Mount | gemountet, Zugriff mit vollem Pfad |
| OneDrive-Zugriff | inhaltlich lesbar (`pdfinfo`, `pdfimages`, `pdftoppm`), kein M365-Fallback nötig |
| Quelle | MD5 `c9503e748d1d7277f82ab868ab2589cb`, unverändert gegenüber Run 85/86 |
| Run-Nummer | 87, nach Sicht der jüngsten `outputs`-Datei (Run 86, 16.09.) |
| Inventar SIA/VKF | 0 offene `[ ]`-Positionen, daher Vertiefungsstufe (b) Retro-Verifikation |
| Zweitkopie der Quelle im Haus | gesucht, keine vorhanden (Suche über die ganze SharePoint-Bibliothek) |

Stations-Split eingehalten: keine DIN-, VSS- oder RAL-Position berührt.

## Anlage der Messung

PDF-Seiten 26-28 (gedruckte S. 50-55) bei 300 dpi gerendert, Präfix `l42-r87-300-`
(Methodik-Pflicht 5), A3-Doppelseiten mittig in Halbseiten gesplittet, Seitenzahl am
Blattrand abgelesen (51, 52, 53, 54 bestätigt). Gitterlinien über die Spaltenmittelwerte
bestimmt, je Zelle der Median der Innenfläche gemessen (Rand 22 px vertikal, 18 px horizontal
abgezogen). Legende je Seite einzeln am Original gelesen: grau = «Anschlusssituation im
Normalfall massgebend», weiss = «im Normalfall nicht massgebend».

Für die visuelle Gegenkontrolle wurde der Grauwertbereich 234-255 auf 0-255 gespreizt. Die
Spreizung verändert nur den Kontrast, nicht die Lage der Flächen — sie macht aber den dunklen
Scanrand zu einem schwarzen Balken und verschluckt dort die senkrechte Randbeschriftung; die
Zeilennamen wurden deshalb am **ungespreizten** Rendering gelesen.

## Verdikte

| Tabelle | Zeilen × Spalten | Zellen | massgebend | nicht massgebend | Agent bestätigt | widersprochen |
|---|---|---|---|---|---|---|
| A22-1 (S. 51) | 3 × 10 | 30 | 21 | 9 | 30 | 0 |
| A23-1 (S. 52) | 8 × 10 | 80 | 61 | 19 | 80 | 0 |
| A24-1 (S. 53) | 3 × 14 | 42 | 35 | 7 | 39 | 0 |
| A25-1 (S. 54) | 8 × 9 | 72 | 64 | 8 | 72 | 0 |
| **Summe** | **22 Zeilen** | **224** | **181** | **43** | **221** | **0** |

**Der eine Dissens, am Original entschieden:** Der Verifikations-Agent für Tab. A24-1 meldete
13 statt 14 Spalten. Der Hauptprozess hat den Kopfbereich der gedruckten S. 53 eigens
gerendert und gelesen: es sind **14**, die vierzehnte ist «Bauteildurchbrüche, Kap. 5.3.9».
Der Agentenbefund wurde nicht übernommen (Methodik-Pflicht 7).

**Planungsrelevante Lesart über alle vier Tabellen:** Bauteilfugen (Kap. 4.3 bzw. 5.4),
Lagesicherung (4.2.9/5.3.7) und Verbindungsmittel (4.2.10/5.3.8) sind in **jeder** der
22 aufgenommenen Anschlussgeometrien massgebend — sie sind nie die Ausnahme. Elementstösse
(4.2.4/5.3.4) sind in 16 der 22 Geometrien nicht massgebend und damit die häufigste Entlastung.

## Ein Beleg zu Methodik-Pflicht 13 im eigenen Bestand

Run 33 (27.07.2026) protokollierte die Anhang-2-Tabellen als «durchgehend zeilenweise gegen
die Bilder geprueft, keine Abweichung gefunden» und hob das Destillat darauf auf
`established`. Zu diesem Zeitpunkt stand von den vier Matrizen **kein einziger Zellinhalt** im
Destillat. Die Aussage war nicht falsch — geprüft waren die Kopfzeilen —, aber sie konnte das
Fehlende strukturell nicht sehen. Genau das sagt Methodik-Pflicht 13, hier mit Datum und
Fundstelle im eigenen Bestand. Der Vermerk steht jetzt inline im Destillat
(Methodik-Pflicht 9), die widerlegte Reichweite der Aussage ist an Ort markiert.

## Was NICHT geprüft wurde

1. **Die Piktogramme der Zeilen.** Aufgenommen ist, welche Zelle markiert ist; nicht
   aufgenommen ist, welche Anschlussgeometrie die Zeile zeigt. Da vier von acht Zeilen der
   Tab. A23-1 und drei von acht der Tab. A25-1 dieselbe Randbeschriftung tragen, ist die
   richtige Zeile aus dem Destillat heraus derzeit nicht wählbar (N87-1).
2. **Die Zahlenwerte der übrigen Kapitel** — das war Run 85 (162 Relationswerte, 0 falsche
   Bestandswerte); dieser Lauf hat sie nicht erneut geprüft.
3. **Der Fassungsstand der Publikation.** Ausgabe April 2018 auf Basis BSV 2015; ob eine
   neuere Lignum-Fassung vorliegt, hat auch dieser Lauf nicht erhoben (unverändert offen seit
   Run 86).
4. Die Scan-Schwäche auf S. 54 (linker Blattrand angeschnitten) blieb bestehen; die
   Seitenzahl und die Matrix selbst waren vollständig lesbar.

## Vorgelegt

**Neu:** N87-1 (Piktogramme der Matrix-Zeilen beschreiben — Voraussetzung für eine
Statushebung), N87-2 (Vorschlag, Methodik-Pflicht 8 um die Ebenenprüfung mit `pdfimages -list`
zu ergänzen; **nicht** selbständig umgesetzt, MP 8 ist eine freigegebene Pflicht), N87-3
(Beleg zu MP 13 im eigenen Bestand, kein Handlungsbedarf).
**Unverändert bei Raphael:** N86-2, N86-3, N85-1, N85-3, N85-5, N84-1, N83-1, N82-1, N81-3,
N79-2, N78-1, N77-2/-3, N65-2/-4, N63-2/-3, N60-1, N60-2, die Stichprobenrunde für den
Mittelbau der `established`-Destillate (n62-3, Abschnitt 6 Punkt 2) sowie die
Beschaffungs-Bring-Schulden (SIA 181:2020, SIA 491, SN EN 12193).

## Nächster Lauf

Erste Wahl: **N87-1**, die Beschreibung der 22 Piktogramm-Zeilen der vier Matrizen. Es ist der
einzige Teil dieser Quelle, der die Aufnahme benutzbar macht, und er entscheidet über die
Statusfrage. Danach steht die Abdeckungsrichtung auf `lignum-4-1` und `lignum-lignatec` an;
beide tragen bisher nur die schärferen Refuter-Methoden seit Run 32, `lignum-4-1` zusätzlich
eine Seiten-Inventur aus Run 39. **Für beide gilt der Werkzeugbefund dieses Laufs:** vor der
Tabellenaufnahme mit `pdfimages -list` prüfen, ob auch sie MRC-Mischraster sind.
