# Normen-Nacht Run 86 — 16.09.2026, ab 01:28 CEST (MacBook Pro)

**Ein Arbeitsblock:** die Abdeckungsrichtung auf `lignum-4-2` (N85-2, der von Run 85 benannte
nächste Schritt). Vollständige Seiten-Inventur der Quelle, dann Diff gegen das Destillat.
Beleg: `training/l42-seiteninventur-260916.md`.

## Big Points

1. **63 von 63 gedruckten Seiten aufgenommen, 26 Kernlücken und rund 20 Nebenlücken bei
   0 falschen Werten.** Dasselbe Muster wie bei allen bisherigen Abdeckungsläufen: die Quelle
   war nie falsch wiedergegeben, sie war unvollständig wiedergegeben.
2. **Der folgenreichste Fund erklärt die Fehler des Vorlaufs.** Die publikationsweite
   **Farbraster- und Schraffuren-Legende (Kap. 6, S. 46)** fehlte ganz — sie ist der
   Lese-Schlüssel jeder Detailskizze. Alle fünf Zuordnungsfehler, die Run 85 gefunden hat,
   liegen in genau dieser Klasse. Eine Refuter-Runde konnte das nicht sehen: sie prüft Werte,
   nicht den Schlüssel, mit dem man sie abliest.
3. **Drei Lücken sind planungsrelevant.** In anrechenbaren Estrich- und Betonschichten dürfen
   **keine Installationen** geführt werden (Kap. 5.2.2). Bei Fugen zwischen Bauteilen mit
   ungleicher Feuerwiderstandsdauer gilt das Bauteil mit der **geringeren** (Kap. 4.3.1). Und
   das ganze Kapitel 4.3 setzt voraus, dass die Bauteilabschlüsse nach Kap. 4.2.2/4.2.3/4.2.9
   bereits erfüllt sind — das Kapitel stand bisher ohne seine Anwendungsbedingungen da.
4. **Die drei offenen Nebenbefunde aus Run 85 sind entschieden:** zwei bestätigt (Abb. 424-1
   Leg. 6, Abb. 434-1 Leg. 2 und 7), einer **kein Befund** — die Bedingung in Kap. 4.3.5 stand
   seit dem Erstdestillat im Text (belegt an `git show b024733d3`). Methodik-Pflicht 7.
5. **Keine Statushebung.** Beide Prüfrichtungen sind jetzt über die gesamte Quelle gelaufen,
   aber die Zellen der Anhang-2-Matrizen sind nie rechnerisch aufgenommen worden. Solange das
   offen ist, bleibt `speculative` die ehrliche Einstufung.

## Voraussetzungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Datum | `date` → 2026-09-16 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| NAS-Mount | gemountet, Zugriff mit vollem Pfad |
| OneDrive-Zugriff | inhaltlich lesbar (`pdfinfo`, `pdftoppm`), kein M365-Fallback nötig |
| Quelle | MD5 `c9503e748d1d7277f82ab868ab2589cb`, 33 A3-Seiten, kein Textlayer |
| Run-Nummer | 86, nach Sicht der jüngsten `outputs/`-Datei (Run 85, 15.09.) |
| Umfang nach dem Schreiben | `git diff --numstat` nativ per ssh: +244/−38; alle 38 Löschungen einzeln als benannte Zeilenersetzung belegt |

Stations-Split eingehalten: keine DIN-, VSS- oder RAL-Position berührt.

## Anlage der Messung

Die A3-Doppelseiten wurden bei 200 dpi gerendert (Präfix `l42-r86-`, Methodik-Pflicht 5), mittig
in Halbseiten gesplittet und nach gedruckter Seite benannt; sechs Aufnahme-Agenten nahmen je
10 bis 12 Seiten auf. **Jeder Agent musste die Seitenzahl am Blattrand ablesen** und gegen die
Zuordnung melden — 63 von 63 stimmten. Damit ist die Blattnummer-Rechnung am Original belegt
und nicht bloss angenommen; der Fehlertyp aus Run 50, wo eine geschätzte Seitenzahl rund
120 Fundstellen verdarb, ist hier ausgeschlossen.

Der Hauptprozess hat fünf Seiten selbst am 400-dpi-Rendering entschieden (Präfix `r86-HP-`):
S. 6 (Nachweiswege), S. 12 (Öffnungsklausel), S. 16 (Abb. 424-1), S. 28 (Abb. 434-1),
S. 29 (Kap. 4.3.5).

## Verdikte

| Teil | Seiten | Kernlücken | Nebenlücken | falsche Werte |
|---|---|---|---|---|
| Kap. 1-3 (Grundlagen, Ausführungsbestimmungen) | 2-11 | 8 | 3 | 0 |
| Kap. 4 (Anschlüsse Holzbauteile) | 12-33 | 13 | 8 | 0 |
| Kap. 5 (Anschlüsse Bauteile RF1) | 34-45 | 4 | 6 | 0 |
| Kap. 6-7 (Schraffuren, Glossar) | 46-47 | 1 | 0 | 0 |
| Literatur und Anhänge 1-3 | 48-62 | 0 | 0 | 0 |

**Unabhängig bestätigt (Methodik-Pflicht 7):** Kap. 4.2.3, 4.2.6, 4.2.7.1/4.2.7.2, 4.2.8.3,
die Kontaktflächenmasse aus Abb. 431-2, Kap. 5.3.2, 5.3.3, 5.3.5, 5.3.6, 5.3.9, das Glossar,
das Literaturverzeichnis (22 Referenzen) sowie Anhang 1 (7 Schritte) und Anhang 3 (7 Beispiele)
waren vollständig — dort fand die Abdeckungsrichtung nichts. Das ist ein Ertrag, kein Nullwert:
es sind die Teile, die frühere Runden am gründlichsten bearbeitet haben.

## Was NICHT geprüft wurde

1. **Die Zellen der Anhang-2-Matrizen** (Tab. A22-1 bis A25-1, S. 51-54). Aufgenommen ist, dass
   sie existieren und welche zehn Spalten sie führen — nicht, welche Zelle markiert ist. Dafür
   verlangt Methodik-Pflicht 8 die rechnerische Aufnahme. Das ist die nächste Methode auf einem
   noch ungeprüften Teil (N86-1).
2. **Die Zahlenwerte selbst** wurden in diesem Lauf nicht erneut geprüft; das war Run 85
   (162 Relationswerte, 0 falsche Bestandswerte).
3. **Der Fassungsstand der Publikation.** Die Ausgabe April 2018 stützt sich auf die BSV 2015;
   ob eine neuere Lignum-Fassung vorliegt, hat dieser Lauf nicht erhoben.
4. Die Scan-Schwäche auf S. 54/56/58 (linker Blattrand angeschnitten) blieb bestehen; die
   Seitenzahlen waren lesbar, einzelne Kapitelnummern verkürzt.

## Vorgelegt

**Neu:** N86-1 (Anhang-2-Matrizen rechnerisch aufnehmen — Voraussetzung für eine Statushebung),
N86-2 (Gruppen-Systematik drei gegen vier, Auslegungsfrage), N86-3 (Tabelle 441-1 ist ein
Stichtagsbild von 2018, Konsumenten müssen am aktuellen VKF-Register gegenlesen).
**Unverändert bei Raphael:** N85-1, N85-3, N85-5, N84-1, N83-1, N82-1, N81-3, N79-2, N78-1,
N77-2/-3, N65-2/-4, N63-2/-3, N60-1, N60-2, die Stichprobenrunde für den Mittelbau der
`established`-Destillate (n62-3, Abschnitt 6 Punkt 2) sowie die Beschaffungs-Bring-Schulden
(SIA 181:2020, SIA 491, SN EN 12193).

## Nächster Lauf

Erste Wahl: **N86-1**, die rechnerische Aufnahme der vier Anhang-2-Matrizen von `lignum-4-2` —
es ist der einzige Teil dieser Quelle, auf dem noch keine Methode gelaufen ist, und er
entscheidet über die Statusfrage. Danach steht die Abdeckungsrichtung auf `lignum-4-1` und
`lignum-lignatec` an; beide tragen bisher nur die schärferen Refuter-Methoden seit Run 32,
`lignum-4-1` zusätzlich eine Seiten-Inventur aus Run 39.
