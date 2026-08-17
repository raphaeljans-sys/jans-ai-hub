# Normen-Training Run 56 (MacBook Pro, 18.08.2026) — N55-1 geschlossen: drei Kernbefunde in selbstgeprüftem Text

**Kurzfassung.**

> **N55-1 ist erledigt.** Die unabhängige Refuter-Runde auf dem Run-54-Zuwachs der Seiten
> **4, 6, 9, 17, 21-22 und 39** von `sia-416-1-2007` ist gefahren — vom Hauptprozess am eigenen
> 300-dpi-Rendering, Satz für Satz. **3 Kernbefunde, 5 Nebenbefunde, alle inline korrigiert.**
> Alle drei Kernbefunde liegen auf Seiten, die Run 54 als «gerendert nachgeprüft» geführt
> hatte — **Selbstprüfung fängt sie nicht.** Der schwerste: das Vorwort nennt **vier**
> Änderungen gegenüber SIA 180/4, nicht drei, und die fehlende vierte ist ausgerechnet die
> **aus SIA 416 abgeleitete Definition der Energiebezugsfläche** — der Bezugsgrösse, auf der
> die ganze Norm ruht. **S. 22 und S. 39, die zuvor niemand gelesen hatte, bestätigten sich.**
> **Zusätzlich N55-2 geschlossen:** Anhang A ist vollständig aufgenommen (Raumlisten HNF1-HNF5,
> FF-Liste), mit dem Nebenbefund, dass er **«(informativ)»** überschrieben ist. Damit haben
> **beide Prüfrichtungen jetzt jeden Teil dieses Destillats gesehen.** Status bleibt trotzdem
> `speculative` — aus einem vierten, neuen Grund. Das ist der Befund, der eine Entscheidung
> braucht.

## 1. Ausgangslage

Gate `lauf-gate.sh` rc=0, NAS gemountet, kein konkurrierender Lauf (`ps`). Zugriff auf die
Normenbibliothek unter `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL -
02_Recht_Norm/02_Normen/` gelesen — **kein TCC-Fall**, Fallback über den M365-Connector nicht
nötig.

**Das Inventar hat 0 destillierbare offene Positionen.** Die fünf verbliebenen `[ ]`-Zeilen
(SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020) sind ausnahmslos **externe
Bring-Schulden** — Normen, die nicht im Haus liegen und kostenpflichtig beschafft werden
müssen. Claude tätigt keine Käufe. Der Lauf ist deshalb nach PROGRAMM Ziff. 6 auf die
Vertiefungsstufe **(b) Retro-Verifikation** umgeschaltet, wo Run 55 den Vorrangposten benannt
hatte.

Stationssplit eingehalten: nur SIA/VKF bearbeitet, nichts aus DIN/VSS/RAL angefasst.

## 2. Anlage der Runde

Geprüft wurden die **sieben Seiten**, die Run 55 als einzigen ungeprüften Block ausgewiesen
hatte. Die Quelle ist ein reiner Scan (`pdftotext` liefert 40 Byte über 40 Seiten), deshalb
Rendering in 300 dpi mit normspezifischem Präfix **`ref416-r56-`** (Methodik-Pflicht 5).

**Ohne Subagenten gefahren.** Das war eine Wahl nach Rule `modellwahl-routine` Ziff. 3: die
Aufgabe war nicht «viel Material sichten», sondern rund 60 präzise Behauptungen gegen
gedruckten Text halten. Bei sieben Seiten liegt das unter der Delegationsschwelle; ein Agent
hätte den Grundkontext neu geladen, ohne etwas beizutragen. Die Nachprüfung widersprüchlicher
Befunde am Original macht der Hauptprozess ohnehin immer selbst.

Vor jedem Befund wurde gegen das **ganze** Destillat gegengeprüft (Methodik-Pflicht 7), nicht
nur gegen die Stelle. Das hat zwei Scheinbefunde verhindert: die Vorhangfassaden-Regel zu Aw
und die Oberlichter-Anwendung des Glasanteils schienen zu fehlen, standen aber an anderer
Stelle.

## 3. Die drei Kernbefunde

### Kernbefund 1 — das Vorwort nennt vier Änderungen, das Destillat zählte drei (S. 4)

Der Run-54-Nachtrag schrieb: «Das Vorwort nennt **drei** Änderungen gegenüber der ersetzten
Empfehlung SIA 180/4:1982.» Gedruckt stehen **vier**. Die fehlende lautet:

> «Sie enthält eine vereinfachte, sich auf die Norm SIA 416 beziehende Definition der
> Energiebezugsfläche.»

Das ist nicht die beiläufigste der vier, sondern die folgenreichste. **AE ist die Bezugsgrösse,
auf der die ganze Norm ruht** — und sie ist nicht eigenständig definiert, sondern **aus
SIA 416 abgeleitet**. Damit steht die Abgrenzung, die dieses Destillat in seinem ersten
Abschnitt als Anlass des Auftrags führt (Verwechslungsgefahr SIA 416 ↔ SIA 416/1), wörtlich im
Vorwort — und war dort nicht aufgenommen. Wer AE bestimmen will, kommt an SIA 416:2003 nicht
vorbei.

Gegenprüfung: `grep -ci vereinfacht` über das ganze Destillat ergab **0**. Es war keine
Verlagerung an eine andere Stelle, sondern eine echte Lücke.

### Kernbefund 2 — die KF-Definition ohne ihre Eingrenzung (S. 6)

Destillat: «Konstruktionsfläche KF: Grundrissfläche der umschliessenden und innenliegenden
Konstruktionsbauteile.»

Norm: «Die Konstruktionsfläche KF ist die Grundrissfläche der **innerhalb der Geschossfläche GF
liegenden** umschliessenden und innenliegenden Konstruktionsbauteile **wie Aussen- und
Innenwände, Stützen und Brüstungen**.»

Die weggefallene Wendung ist das **Kriterium, das KF überhaupt zur Teilfläche der GF macht**.
Ohne sie ist KF unbegrenzt und die Identität GF = NGF + KF nicht mehr geschlossen. Dieselbe
Fehlerklasse wie der Run-55-Befund zu den «Verlusten **innerhalb der thermischen
Gebäudehülle**»: beim Verdichten fällt die Ortsangabe weg, und übrig bleibt ein Satz, der
richtig klingt und die Abgrenzung verloren hat.

Beiläufig trägt die Beispielliste eine eigene Information: dass **Brüstungen** ausdrücklich als
Konstruktionsbauteile genannt sind, stützt die Zuteilungsregel «Fensternischen **mit**
Brüstungen zählen zur KF» wenige Zeilen weiter unten.

### Kernbefund 3 — die 10-cm-Schwelle lief bei den abgehängten Decken nicht mit (S. 21)

Destillat: «… bei Doppelfassaden/hinterlüfteten Aussenwänden mit Luftraum > 10 cm gilt die
innere Begrenzung des Luftraums, **bei abgehängten Decken an auskragenden Bauteilen ebenfalls
die innere Ebene** …»

Norm (Ziff. 2.3.2): «In Doppelfassaden mit Lufträumen von mehr als 10 cm Dicke gilt die innere
Begrenzung des Luftraumes als Aussenabmessung. **Das gilt auch** für abgehängte Decken an der
Untersicht von auskragenden Bauteilen.»

Das «Das gilt auch» trägt die **Schwelle** mit, nicht nur die Rechtsfolge. **Figur 13 belegt es
grafisch**: die Spalte «Böden gegen Aussenklima» ist ausdrücklich als **Paar ≤ 10 cm / > 10 cm**
gezeichnet, mit der Messebene einmal aussen und einmal innen. Das Destillat gab die Rechtsfolge
unbedingt wieder. Wer danach arbeitet, legt die Messebene auch bei einem 5-cm-Hohlraum nach
innen und rechnet **Ath zu klein** — eine Grösse, die über die Gebäudehüllzahl direkt in die
Grenzwerte des Heizwärmebedarfs nach SIA 380/1 eingeht.

## 4. Die fünf Nebenbefunde

| Stelle | Befund |
|---|---|
| S. 4, Vorwort | Die Brennwert-Folge war halbiert: die Norm nennt neben geänderten Richtzahlen und Anforderungen an Wirkungs-/Nutzungsgrad auch «entsprechende **Änderungen bei den Energiekennzahlen**» — also eine Verschiebung der Vergleichswerte selbst |
| S. 6 | Die Messkonvention (waagrecht/schief) stand unter der Überschrift «die **kursiven** Präzisierungen»; sie ist gedruckt **aufrecht** gesetzt und damit keine |
| S. 21, Ziff. 2.3.4 | «Hauptebene der Fassade» statt «als **äusserste** Hauptebene der Fassade definierte Fläche» |
| S. 21, Ziff. 2.3.2 | «hinterlüftete Aussenwände» steht **nicht im Normtext**, sondern in Legende und Spaltenbeschriftung der Figur 13. Die Zuordnung stimmt, war aber als Normtext ausgewiesen |
| S. 17, Figur 10 | Die Legende führt neben H1/H2 **drei Linientypen**; erst sie machen ablesbar, dass die thermische Hülle bei H1 > H2 innen und bei H1 < H2 aussen liegt |

Dazu geschlossen: die **Auflösung der fünf Organisationskürzel** auf S. 39 (CRB, EMPA, ETHZ,
SIA KH, SIA KHE). Run 54 hatte die Lücke ausdrücklich benannt («das Destillat verwendete diese
Kürzel, ohne sie aufzulösen») und dann **nicht geschlossen** — ein Fall von Methodik-Pflicht 9,
bei dem der Befund dokumentiert, aber die Korrektur nicht vollzogen wurde.

## 5. Was vollständig hielt

**S. 17 ist der bemerkenswerteste Teil dieses Laufs.** Es ist der Block, den Run 54 am
stärksten umgebaut hat (Ziff. 2.2 war zuvor «auf sechs Sätze verkürzt», neun Kernlücken auf
zwei Seiten). Die Ziffern 2.2.1.1 bis 2.2.1.5 sind Satz für Satz gegen den Druck gehalten und
**ausnahmslos bestätigt** — die Solltemperatur-Definition, die Bilanzperimeter-Anwendungsregel,
das Wirtschaftlichkeitskriterium des Einbezugs, die H-Regel, der Terminus «nicht aktiv beheizt»
samt Vollständigkeitssatz, die Trockenraum- und Heizraum-Auflagen. Kein falscher Wert, keine
falsche Fundstelle.

Ebenso vollständig bestätigt: **S. 9** (alle sechs Begriffe — Bilanzperimeter, Fassadenfläche
mit dem Ziff.-2.2.3-Verweis, Glasfläche mit der τ-Schwelle von 10 %, Fensterfläche samt
Vorhangfassaden-Ausnahme, Geschosshöhe, die drei Schnittfälle der Figur 4), **S. 22**
(Figur 14 mit den drei Beispielen), **S. 39** (Legendentitel und alle fünf Einträge), die
Treppenauge-Regel mit der 5-m²-Grenze auf S. 6 sowie Ziff. 2.3.1 und 2.3.3 auf S. 21.

## 6. Warum der Status trotzdem `speculative` bleibt — und was zu entscheiden ist

**Sachlich ist der Prüfstand jetzt vollständig.** Beide Prüfrichtungen sind auf jedem Teil des
Destillats gelaufen, einschliesslich sämtlicher Zuwächse aus Run 54. Es gibt keinen Teil mehr,
von dem sich sagen liesse, er sei ungelesen.

**Verfahrensmässig ist er es nicht.** Die drei Seiten mit Kernbefund tragen jetzt **neu
geschriebenen Text, den niemand gegengelesen hat** — geführt als **N56-1**. Das ist der
**vierte Lauf in Folge**, der den Status aus je einem anderen Grund nicht hebt, und der
Mechanismus ist immer derselbe: jede Korrektur erzeugt neuen unverifizierten Text. Ohne
Abbruchregel endet das nicht.

Run 55 hat dafür ein Kriterium vorgeschlagen (Bericht Ziff. 7.1), das **noch nicht entschieden
ist**:

> Ein Prüfteil gilt als geschlossen, sobald eine Runde darauf nur noch Nebenbefunde und keinen
> Kernbefund mehr erbringt.

**Wendet man es auf den heutigen Stand an, ist die Lage entscheidungsreif:**

| | Seiten |
|---|---|
| **Geschlossen** (letzte Runde ohne Kernbefund) | 9, 17, 22, 26, 28, 29, 30, 31, 32, 35, 39, 40 |
| **Offen** (letzte Runde mit Kernbefund) | 4, 6, 21, 27, 34 |

Fünf Seiten. Eine einzige weitere Runde darauf beantwortet die Statusfrage — statt sie ein
fünftes Mal zu vertagen. **Ich habe das Kriterium nicht selbst angewandt**, weil es eine
Verfahrensregel für die Zitierfähigkeit nach Rule `normen-referenz` ist und damit Raphaels
Entscheid; angewandt hätte ich mit diesem Lauf faktisch selbst über den Status befunden.

**Empfehlung: annehmen.** Das Kriterium ist nicht lax — es verlangt eine vollständige Runde
ohne Kernbefund, und dieser Lauf zeigt, dass solche Runden vorkommen (S. 9, 17, 22, 39). Es
beendet nur den Regress, der entsteht, wenn Korrekturtext denselben Prüfanspruch auslöst wie
Erstdestillat.

## 7. Der Methodenbefund

Run 55 hat gezeigt, dass Refuter- und Abdeckungsrichtung komplementär sind und keine für sich
erschöpfend ist. Dieser Lauf fügt einen schärferen Punkt hinzu, der **nicht** die Methode
betrifft, sondern **wer sie ausführt**:

> **Alle drei Kernbefunde dieses Laufs liegen auf Seiten, die Run 54 gerendert nachgeprüft
> hatte.** Sie waren nicht ungeprüft — sie waren **vom Autor selbst** geprüft.

Run 55 hat diesen Satz als Vermutung formuliert («Selbstprüfung ist keine Refuter-Runde») und
mit zwei Befunden gestützt. Mit den drei Befunden von heute ist er **an sieben weiteren Seiten
unabhängig bestätigt**. Und er ist präziser als «vier Augen sehen mehr»: der Autor liest seinen
eigenen Satz **gegen seine eigene Erinnerung an die Quelle**, nicht gegen die Quelle. Genau
deshalb fallen ihm Auslassungen nicht auf — er weiss ja, was gemeint war. Alle drei Kernbefunde
sind Auslassungen, keiner ist ein falscher Wert.

**Praktische Folge für kommende Läufe:** Wer in einem Lauf Text schreibt, soll ihn im selben
Lauf **nicht** als geprüft ausweisen. Die Prüfung gehört in den nächsten Lauf oder an eine
andere Instanz. Das ist billiger als es klingt — es kostet keine zusätzliche Runde, sondern
verschiebt nur, wer welche fährt.

## 8. Nachgeführt

- `destillate/sia-416-1-2007.md` — 3 Kernbefunde und 5 Nebenbefunde **inline** korrigiert
  (Methodik-Pflicht 9), Anhang A vollständig aufgenommen, Prüfstand-Tabelle und
  Statusbegründung nachgezogen. Diff **+51/−10 Zeilen** gemessen; alle 10 Löschungen sind
  ersetzte eigene Zeilen, kein fremder Inhalt entfernt (Rule 260811). Anker-basiert ersetzt,
  kein globales Suchen-und-Ersetzen. Sicherungskopie des Vorstands im Scratchpad.
- `training/norm-inventar.md` — Prüfstand der Zeile SIA 416/1 nachgeführt, N55-1 geschlossen
- `destillate/INDEX.md`, `wiki/REGISTER.md` — Statusnotiz nachgezogen
- `wiki/QUESTIONS.md` — N55-1 und N55-2 geschlossen, N56-1 neu
- `CHANGELOG.md` — Eintrag

## 9. Offen — Übergabe

1. **N56-1** — Refuter-Runde auf dem Run-56-Zuwachs der S. 4, 6 und 21. Zusammen mit S. 27 und
   34 (Run 55) der Rest vor der Statusentscheidung. **Nach dem vorgeschlagenen Abbruchkriterium
   in einem Lauf erledigbar.**
2. **Entscheid Abbruchkriterium** (Ziff. 6) — die eigentliche offene Frage dieses Destillats.
3. **N55-3** — grafische Kodierung der Tabellen 3 und 5 (graue Zellen, fette Ergebnisrahmen)
   ohne Legende auf den Seiten. Naheliegend «bleibt leer», belegt ist es nicht.
4. **N55-4** — Status-Vokabular: 25 Destillate ausserhalb des Vokabulars, 18 Statusabweichungen
   Destillat ↔ INDEX. Empfehlung Run 55 war (b) eine Stufe `destilliert` einführen;
   **KB-weites Umbenennen ist nach Rule `wissens-bibliothekar` pausepflichtig.**
5. **Korrigenda-Liste des SIA-Shops zu SIA 416/1:2007 — weiterhin nie eingesehen.** Nach der
   Lehre aus Wissens-Chef Run 19 können Korrigenda einzelne Ziffern materiell ändern, ohne eine
   neue Jahreszahl zu tragen. **Das ist der einzige offene Schritt, der die ganze bisherige
   Verifikationskette relativieren könnte**, und er ist billig. Er braucht einen Shop-Zugriff.
6. **N53-1** — SIA 266/2:2012 beschaffen. **N53-3** — formelle Frage SIA 215:1978 (Kalk/Gips).
   **N52-5 / N52-7** — SIA 242:2012, SIA 274:2010 beschaffen; Fassungsfrage SIA 252.
7. **Unverändert offen aus Run 51:** SIA 118/265:2018 (N48-4), Nachfolge-Status der vier
   Altnormen (N48-5), SIA 382/2 gegen SIA 382/1:2014 (N48-7), sechs ABB als Beschaffungsposten.
8. **Bestandshygiene `alle/xalt/`** (offen seit Run 52): SIA 416/1:2007 und SIA 215:1978 liegen
   dort, beide geltend. Eingriff in eine geteilte SharePoint-Bibliothek — nur vorgeschlagen.
9. **Fremde KB, weiterhin nur gemeldet:** `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md`
   führt bürointerne Los-Nummern im Frontmatter-Feld `bkp:`.

## 10. Was ungeprüft blieb

- **Geprüft:** Refuter-Richtung auf S. 4-40 (Run 53), Abdeckungsrichtung auf S. 4-40 (Run
  53/54), Refuter-Runde auf dem Zuwachs S. 26-32/34/35/40 (Run 55) und S. 4/6/9/17/21-22/39
  (Run 56). Abdeckungsrichtung auf Anhang A vollständig (Run 56).
- **Nicht geprüft:** der **Zuwachs dieses Laufs** auf S. 4, 6, 21 (N56-1).
- **Bewusst nicht destilliert:** die **Zahlenwerte der Tabelle 6** (Brenn-/Heizwerte) —
  Urheberrechtsentscheid. Das Destillat ist dort Wegweiser, nicht Wertequelle; für konkrete
  Werte bleibt der Griff zum Original nötig. Gleiches gilt für die Gütewert-Tabellen von
  SIA 215:1978.
- **Nie eingesehen:** die Korrigenda-Liste des SIA-Shops (Ziff. 9.5).
- **Nicht gelaufen:** der Register-Check (`training/register-check.sh`) — er läuft nach
  Entscheid vom 17.08. **auf Zuruf, nicht als Automatik**, und sein Befundbestand (N55-4)
  wartet ohnehin auf eine Vokabular-Entscheidung.
- **Nicht angefasst:** DIN, VSS, RAL — Stationssplit, die gehören dem Mac Mini.

## Belege

Renderings mit normspezifischem Präfix (Methodik-Pflicht 5): **`ref416-r56-`**, 300 dpi, S. 4,
6, 9, 17, 21, 22, 33, 34, 39. Jede dieser Seiten wurde vom Hauptprozess selbst gelesen und
Satz für Satz gegen das Destillat gehalten. Die **gedruckte Seitenzahl ist am Seitenrand
abgelesen**, nie aus der Blattnummer berechnet; Folio = PDF-Blatt 1:1 ist an allen neun Seiten
bestätigt (S. 4 unten links, S. 6 unten links, S. 9/17/21/22/33/34/39 in der jeweiligen
Fusszeile). Figur 13 und Figur 14 wurden **gerendert und abgelesen**, nicht per Textextraktion
aufgenommen (Methodik-Pflicht 8) — bei dieser Norm zwingend, weil die Datei ein reiner Scan
ist. Jeder der drei Kernbefunde wurde vor der Übernahme per `grep` gegen das **ganze**
Destillat gegengeprüft (Methodik-Pflicht 7); alle drei ergaben 0 Treffer, waren also echte
Lücken und keine Verlagerungen.
