# Normen-Training Run 40 (MacBook Pro, 31.07.2026) — neunte Lignatec-Runde + 13 Positionen PL-02-Kern

**Kurzfassung.** Der Vorrang-Auftrag des Task-Textes war bei Laufbeginn bereits erledigt (Tab. 3
und Tab. 4 sind in Run 38 rechnerisch aufgenommen worden). Gefahren wurde deshalb die offene
**neunte Runde** auf den Teilen, auf die die Methode nie angewandt wurde: **Tabelle 2 (S. 4-5)
und die acht Axonometrien (S. 16-23)**. Ergebnis: **kein einziger falscher Zahlenwert**, aber
**neun Vollständigkeitsbefunde**, darunter drei, die einen Planer in die Irre führen konnten.
Parallel wurden **13 Positionen des PL-02-Kern-Nachtrags** destilliert und je durch einen
unabhängigen Refuter geprüft — 12 neue Destillate. Der teuerste Einzelfund des Laufs steckt
nicht im Lignatec, sondern in einem der neuen Destillate: eine falsch gelesene Matrix im
GVZ-RWA-Merkblatt hätte Projekte zu einem Nachweis verpflichtet, den das Merkblatt gar nicht
verlangt.

---

## 1. Vorbedingungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh` | rc=0 (der erste Aufruf gab rc=1, dreimal nachgemessen danach rc=0 — transient, Speicher lag an der 3-GB-Schwelle) |
| `arbeits-weiche.sh --takt` | meldet `mini` — **bewusst nicht befolgt**, siehe unten |
| NAS | gemountet |
| Quellzugriff OneDrive | Lesbar, keine TCC-Blockade; kein M365-Fallback nötig |
| Kollisionsschutz | `ps` geprüft, kein zweiter Normen-Lauf |

**Zur Arbeits-Weiche.** Sie ist seit 31.07.2026 Pflicht-Einstieg getakteter Läufe. Ihr Verdikt
`mini` wurde hier nicht befolgt, und das ist regelkonform: die Chronik 260731b nimmt
**App-Scheduled-Tasks** («erreichen das Gate baulich nicht») und die **stationsgeteilten
Norm-Familien** ausdrücklich vom Weichen-Zwang aus. Dieser Task ist beides. Ein Verschieben auf
den Mini hätte zudem den Stations-Split verletzt — SIA/VKF gehören dem MacBook.

**Der Lauf hat sich zweimal selbst gedrosselt.** Bei 2.4 GB bzw. 2.9 GB freiem Speicher wies das
Gate weitere Agenten ab; die Verifikations-Staffel wurde dann gefahren, als wieder 3.3 GB frei
waren. Limit-Pausen sind laut Programm zulässig und kein Fehler.

## 2. Der Vorrang-Auftrag war überholt — was stattdessen fällig war

Der Task-Text verlangt die achte Runde mit rechnerischer Aufnahme von Tab. 3 und Tab. 4. Das ist
in **Run 38** geschehen (7 Kernbefunde + 4 Nebenbefunde). Run 39 hat danach ausgewiesen, was
offen blieb: **Tabelle 2 und die acht Axonometrien sind nie rechnerisch aufgenommen worden.**
Genau das war der fällige Schritt, und er folgt der verbindlichen Methoden-Lehre: eine Runde
muss eine Prüfmethode auf einen Teil der Quelle anwenden, auf dem sie noch nicht gelaufen ist.

**Methode:** Blatt-Inventur zuerst (Seitenzahlen am Rand **abgelesen**, nicht aus der
Blattnummer gerechnet) — sie bestätigte die Erwartung exakt: Tab. 2 auf Blatt 02 (Druckseiten
4/5), die acht Axonometrien auf Blatt 08-11 (Druckseiten 16-23). Danach 300-dpi-Rendering,
Halbseiten-Split, Legende **je Seite einzeln** mit Median-RGB gemessen, Element- bzw.
Zeilen-Inventur, Diff gegen das Destillat in **beiden** Richtungen.

### 2.1 Tabelle 2 — sechs Vollständigkeitsbefunde, null Falschaussagen

Die zellenweise Aufnahme (10 Zeilen, 6 Legenden-Swatches gemessen, jede Zeichnung Schicht für
Schicht klassiert) fand **keine einzige falsche inhaltliche Aussage**. Sie fand, was fehlte:

1. **Der Geltungsbereich-Absatz (Ziff. 1.3, S. 4) fehlte ganz** — der folgenreichste Befund,
   weil er die Tabelle als abschliessend erscheinen liess. Im Original steht wörtlich: die
   Angaben gelten **nur für Bauteile mit tragender und/oder brandabschnittsbildender Funktion**;
   Anforderungen an Oberfläche, Verkleidung und Schichtaufbau **gemäss der VKF-Richtlinie
   «Verwendung brennbarer Baustoffe» sind zusätzlich zu beachten** (Verweis Kapitel 4). Vom
   Hauptprozess am eigenen Rendering wörtlich nachgeprüft.
2. **Die Legende der Tabelle fehlte** (sechs Kategorien). Messtechnisch bemerkenswert: Vollholz,
   Baustoff brennbar und Dämmstoff brennbar sind farblich praktisch identisch (~233-243) und
   trennen sich **nur über das Linienmuster**. Eine reine Farbklassierung hätte sie verwechselt —
   ein Hinweis darauf, wo die rechnerische Methode selbst ihre Grenze hat.
3. **Die dritte Tabellenspalte «Zeichnung» war gar nicht destilliert.** Fachlich am
   folgenreichsten: die Zeichnungen zeigen, dass **R30/EI30/REI30 und R60/EI60/REI60 ohne
   (nbb)-Zusatz vollständig aus brennbarem Material bestehen dürfen**. Das Destillat sagte das
   nie positiv.
4. **Die F-Codes** (F30bb, F30, F60bb, F60) und Fussnote ① (EN-Zuordnungstabelle der VKF)
   fehlten — praxisrelevant für Altbestand und Fremdunterlagen.
5. **Konstruktionsvarianten fehlten** (zweischichtiger Deckaufbau als Alternative; Skelettbau
   gegen Beton-Vollquerschnitt).
6. **Rückbezüge der Korridor-Familien** auf EI30/REI30 bzw. EI60/REI60 fehlten.

Als **offene Frage** geführt und ausdrücklich **nicht** gedeutet: in drei Zeilen sind Deckschicht
und Stiel messbar grau unterlegt (177/180/179 gegen 240/245 bei identischem Muster), die Legende
kennt keine getönte Variante. Konsistent, aber aus der Quelle nicht ableitbar.

### 2.2 Axonometrien — drei Befunde, alle vom Hauptprozess selbst nachgeprüft

Zwei Agenten haben die acht Zeichnungen Element für Element aufgenommen (20 bzw. 22 beschriftete
Elemente). **Kein einziger falscher Zahlenwert** — alle Anforderungen stimmen mit dem Destillat.
Die Befunde sind Lücken:

- **KERNBEFUND: «Decke = Dach — über Korridor/Treppenhaus: Keine Anforderung» fehlte auf allen
  vier Doppelseiten.** Und der Wert allein wäre irreführend: «Keine Anforderung» gilt nur für den
  **Feuerwiderstand**. Das Schnittdiagramm zeigt Dachbelag und Fluchtweg-Seite beide mit der
  Nicht-brennbar-Signatur (BKZ 6q.3). Tabelle 5 deckt das nicht ab — sie führt Flach-/Steildach
  nur als **Dämmschicht**. Wer nur den Destillat-Satz liest, hält die Dachoberfläche über dem
  Fluchtweg für anforderungsfrei. Vom Hauptprozess am eigenen 300-dpi-Rendering bestätigt.
- **KERNBEFUND: «Treppenlauf und Podest: nicht brennbar» fehlte im 5.4-Absatz**, obwohl auf S. 22
  vorhanden und im 5.3-Absatz korrekt geführt. Reine Übertragungslücke.
- **Die Legenden sind auch innerhalb des Kapitels 5 nicht deckungsgleich:** S. 23 führt sieben
  Einträge, S. 21 nur sechs.

**Zwei gemeldete Befunde habe ich zurückgestuft** — das ist der Ertrag der Pflicht, Agentenbefunde
selbst gegenzuprüfen. Ein Agent meldete als Kernbefund, die Treppenhauswand sei beidseitig, die
Korridorwand nur korridorseitig nicht brennbar verkleidet. Am Original stimmt das (im
Schnittdiagramm gut sichtbar, und die Beschriftungskästchen kodieren es mit), aber es
**widerspricht dem Destillat nicht**: die Regel steht dort längst als Schrägstrich/Bindestrich-
Notation (Korrektur aus Run 32/33). Die Zeichnungen bestätigen sie ein drittes, methodisch
unabhängiges Mal. Das ist eine Bestätigung, kein Befund — in Abschnitt 5 fehlte nur der
Querverweis.

### 2.3 Bewertung der Endbedingung

**Die Endbedingung des Vorrang-Auftrags ist NICHT erfüllt, aber sie ist jetzt anders begründet
als bisher.** Die rechnerische Methode ist nun auf **alle drei Kreuztabellen, auf Tabelle 2 und
auf alle acht Axonometrien** angewandt. Neu ist das Muster der Ausbeute: die Runden 6-8 fanden
noch **falsche Werte**; diese Runde fand **null falsche Werte und nur noch Lücken**. Das ist
qualitativ ein anderer Befundtyp.

Was jetzt noch ungeprüft ist, benenne ich ausdrücklich, wie es die Methoden-Lehre verlangt:
der **Fliesstext der Kapitel 1-4** (S. 3, 6-7, 10-11, 14) ist nie systematisch gegen das
Destillat gediffed worden — nur die Tabellen und Zeichnungen. Eine **Seiten-Inventur nach dem
Muster `training/l41-seiteninventur.md`** existiert für den Lignatec nicht. Das wäre die nächste
Methode auf einem noch ungeprüften Teil — und erst danach ist die Frage der Rücktaktung
redlich zu beantworten.

**Der Aktualitäts-Vorbehalt bleibt der praktisch folgenreichste offene Punkt** und ist durch
keine Verifikationsrunde lösbar: die Quelle datiert von 2005 und bezieht sich auf die
VKF-Vorschriften 2003.

## 3. PL-02 Kern-Nachtrag — 13 Positionen, 12 neue Destillate

Erste echte Grundarbeit dieses Loops seit Wochen. Je Position ein Destillier-Agent, danach ein
**unabhängiger Refuter**, der die Aussagen zu widerlegen versucht.

| Bestand | Positionen | Verdikt |
|---|---|---|
| GVZ (Feuerpolizei ZH) | 3 | 2 bestanden, **1 beanstandet** (6 Kernbefunde) |
| Suva | 4 | 3 bestanden, 1 beanstandet (2 Kernbefunde, korrigiert) |
| SWKI | 1 | **beanstandet** (5 Kernbefunde, 3 korrigiert) |
| Suissetec | 2 (1 Destillat + 1 Dublette) | bestanden, **sauberer Nulldurchgang** |
| VSA | 3 | 2 bestanden, 1 beanstandet (1 Kernbefund, korrigiert) |

### 3.1 Der teuerste Fund des Laufs: die RWA-Matrix

Das GVZ-Merkblatt 30.17.3 führt zwei Anforderungsmatrizes, deren Zellen ab 601 m² **diagonal
zweigeteilt** sind: obere, blau hinterlegte Teilzelle = **mit Sprinkleranlage**, untere weisse =
ohne. Die Erstfassung des Destillats hat diese Zweiteilung im Bereich 601-1200 m² durchgehend
übersehen und daraus in beiden Matrizes falsche Anforderungen abgeleitet.

**Praktische Folge:** Ein Projekt mit 601-1200 m² Brandabschnittsfläche **und Sprinkleranlage**
wäre laut Destillat zu einem Nachweis N2 bzw. N3 verpflichtet gewesen. Das Original verlangt in
genau dieser Zelle **gar keinen RWA-Nachweis**. Vom Hauptprozess am eigenen 220-dpi-Rendering
der S. 6 zellenweise nachgeprüft und als Tabelle neu gefasst; die MRWA-Zeile der Matrix 6.2 war
in meinem ersten Ausschnitt abgeschnitten und wurde separat nachgerendert, bevor sie in die
Tabelle kam.

Das Destillat bleibt bewusst `speculative`: die Neufassung ist noch nicht durch eine unabhängige
zweite Runde gegangen.

### 3.2 SWKI — der Anwendungsbereich war zu weit gefasst

Erfüllt den Auftrag **N-R21-1** (Wissens-Chef Run 21, 31.07.2026). Der Refuter fand fünf
Kernbefunde; die drei folgenreichsten habe ich am Original wörtlich nachgeprüft und korrigiert:

- **Die Richtlinie gilt nur für Mittel- und Grossgaragen ab 100 m²** (Ziff. 0.1.2). Für
  **Kleingaragen unter 100 m² gilt sie nicht** — dort steht nur eine Empfehlung zu natürlicher
  Lüftung, zwingend ist einzig SIA 180. Das Destillat stellte sie so dar, als regle sie alle drei
  Garagentypen gleichermassen; bei einer Kleingaragen-Beratung wäre daraus eine erfundene Pflicht
  entstanden.
- **Die Garagentypen sind nach Fläche definiert**, nicht nach Anzahl Abstellplätzen (bis 100 m²
  / 100-1000 m² / über 1000 m²).
- **Die 25-Prozent-Definition der offenen Garage stammt aus VKF-BSR 15-15**, nicht aus 25-15.

Zwei weitere Refuter-Befunde sind im Destillat ausdrücklich als **ungeprüft** markiert — ich habe
sie nicht nachgemessen und gebe sie deshalb nicht als gesichert aus. Zudem sind nur ~45 von 110
Seiten gelesen; Status bleibt `speculative`.

### 3.3 VSA — eine Fehlannotation, die jahrelang im Inventar stand

Das Inventar führte den Ordner `06_Richtlinien/VSA` als «Abwasserverband-Bestimmungen/SNEL —
ergänzt SN 592 Liegenschaftsentwässerung». **Das war falsch.** Alle drei Dateien stammen vom
**Verband Schweizerischer Aufzugsunternehmen**; **SNEL** heisst «Safety Norm for Existing Lifts»
(SN EN 81-80:2003 = SIA 370.080), nicht «Schweizer Norm für Liegenschaftsentwässerung».

Dreifach belegt: vom Destillier-Agenten gefunden, vom Hauptprozess unabhängig via `pdftotext`
bestätigt (Kopfzeile aller drei Dateien), vom Refuter ein drittes Mal geprüft — inklusive
Gegenprobe, dass keine der Dateien einen Abwasserbezug hat. Die Liegenschaftsentwässerung liegt
unter eigenem Namen im Bestand. **Inventar-Annotation korrigiert.**

### 3.4 Die übrigen Korrekturen

- **Suva 44066:** Gradgrenze Flachdächer ist `0° ≤ α ≤ 10°`, nicht `< 10°` (das Destillat
  widersprach sich intern — bei Tabelle 4 zitierte es schon korrekt). Ergänzt wurde die ganz
  fehlende Grundsatzliste für Kunststoff-Oblichter (Ziff. 4.3) mit ihrer eigenen Anforderung:
  **Anschlageinrichtungen nach EN 795 ab 3,0 m Absturzhöhe beim Unterhalt im geöffneten
  Zustand**. Beides am Original nachgeprüft.
- **VSA ESBA:** Begriffsdefinition (Ziff. 3.4) und Zahlenwert ±10 mm (Ziff. 5.2.2) waren zu
  einer Fundstelle verschmolzen.
- **GVZ MFH:** «Servicetüren in Toren min. 0.9 m» galt in der Quelle nur für Servicetüren, **die
  als Fluchtwege dienen** — Übergeneralisierung korrigiert.
- **Drei Zuschreibungs-Formalien** in den VSA-Destillaten bereinigt (Klammerzusätze und ein
  Adjektiv, die die jeweilige Quellseite nicht trägt).

### 3.5 Dubletten-Frage geklärt

Die beiden Suissetec-Dateien haben **verschiedene MD5-Summen** — die vom Inventar vorgesehene
MD5-Prüfung konnte die Frage also gar nicht beantworten. Inhaltlich geklärt: gleiche Seitenzahl
(81), gleiche Seitenmasse, identisches CreationDate auf die Sekunde, sichtbar stärkere
JPEG-Artefakte in der `_low`-Datei. Dasselbe Dokument in zwei Auflösungen; die `_low`-Datei ist
als `[-]` geschlossen, nicht gelöscht.

## 4. Ein Fund am Rand, der Zeit kostet

Die Pfadangaben im Inventar-Abschnitt «PL-02 Kern-Nachtrag» sind relativ zu
`PL - 02_Recht_Norm/`, **nicht** zu `02_Normen/`. Wer sie wörtlich unter `02_Normen/` sucht,
findet nichts. Ausserdem: die Dateinamen liegen teils in **NFD-Normalisierung** vor (macOS), ein
NFC-Abgleich schlägt dort still fehl — beim Nachführen des Inventars per Script normalisieren.

## 5. Nachgeführt

- **12 neue Destillate** unter `destillate/`, alle mit Verifikations-Verdikt im Frontmatter-Status.
- `destillate/lignum-lignatec-brandschutz.md` — Abschnitt Tabelle 2 und Abschnitt 5 um die
  Befunde der neunten Runde erweitert.
- `destillate/INDEX.md` — 12 neue Zeilen.
- `training/norm-inventar.md` — 13 Positionen geschlossen (`[x]` 10, `[~]` 2, `[-]` 1);
  **VSA-Annotation korrigiert**.
- `wiki/REGISTER.md` — SWKI-Zeile trägt jetzt die Ausgabe 2017-04 und den Anwendungsbereich.
- `wiki/QUESTIONS.md`, `CHANGELOG.md`, `training/PROGRAMM.md` — Run-40-Einträge.

## 6. Offen — und was Raphael entscheiden sollte

1. **Zweite Runde für `gvz-rwa-parkhaus-einstellraum.md` und `swki-va103-01-2017.md`.** Beide
   tragen frisch korrigierte Kernaussagen, die noch niemand unabhängig geprüft hat. Das ist der
   dringlichste offene Punkt, weil beide unmittelbar in Projektberatung eingehen.
2. **SWKI vollständig lesen** — 65 der 110 Seiten sind ungelesen, darunter die Anhänge C/D/E mit
   den Rechenformularen, die für eine Anlagenauslegung die eigentliche Grundlage sind.
3. **Lignatec-Taktung: noch nicht entscheidbar.** Ich schlage die Umstellung auf Ereignis-Trigger
   **nicht** vor. Erst die Seiten-Inventur des Fliesstexts (Kap. 1-4) macht die Frage beantwortbar.
   Sinnvoll wäre eine zehnte Runde mit genau dieser Methode — danach ist die Quelle nach allen
   verfügbaren Methoden geprüft.
4. **Bookkeeping-Widerspruch:** `wiki/QUESTIONS.md` (31.07., Wissens-Chef Run 21) führt es als
   noch offene Frage, ob diese KB die restlichen `06_Richtlinien`-Bestände (GVZ, Suva, Suissetec,
   VSA, PAVIDENSA, `09_Sanitaereinrichtung`) **systematisch** abarbeitet — das Inventar hat sie
   am 29.07. bereits als Arbeitsliste aufgenommen (Entscheid Raphael). Ich bin dem Inventar
   gefolgt, weil es der spezifischere und von Raphael gezeichnete Entscheid ist. Die beiden
   Stellen gehören zusammengeführt.
5. **Rest des Kern-Nachtrags:** 47 Positionen offen (PAVIDENSA 9, `09_Sanitaereinrichtung` 14,
   BKZ 4, lose Merkblätter 20). Darunter mit `SN592_Liegenschaftsentwaesserung_d.pdf` eine echte
   SN-Norm, die ins REGISTER gehört.
6. **Fassungsstand Suva 67012** bleibt offen — im Fliesstext steht kein Ausgabedatum, am Original
   bestätigt. Nur über suva.ch/waswo klärbar.
