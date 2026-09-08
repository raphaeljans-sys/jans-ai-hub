# Normen-Nacht Run 82 — 09.09.2026, ab 01:28 CEST (MacBook Pro)

**Arbeitsgegenstand ist der Auftrag, den Run 81 selbst offen gelassen hat: N81-2.** Run 81 hatte
an der BRL 15-15 belegt, dass der Textlayer gedrucktes «≤» als «<» ausliefert, und gefragt,
welche anderen VKF-Destillate Grenzwerte aus einer Textextraktion übernommen haben — mit der
richtigen Begründung, dass eine Verwechslung von «≤» und «<» eine Grenze um genau einen
Grenzfall verschiebt und das bei Brandabschnittsflächen und Sicherheitsabständen eine
Planungsfolge ist.

**Ergebnis: die Frage ist messend geschlossen, und die Antwort ist eine Entwarnung.** Zwei
betroffene Richtlinien im ganzen Bestand, kein einziger verschobener Grenzwert. Dazu ein
Gegenbefund, der ein Verdachtsmuster entkräftet, ein schwererer Nebenbefund im SIA-Bestand,
drei protokollierte eigene Fehlversuche und eine wiederverwendbare, kalibrierte Messanlage.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| NAS gemountet | ja |
| Arbeitsdatum | `date` → 2026-09-09 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | funktioniert inhaltlich (`pdfinfo`, `pdftotext`, `pdftoppm`), kein M365-Fallback nötig |
| NAS-Repo bei Laufbeginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `c57392493` |
| Inventarstand | 0 offene `[ ]` im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **82**, nach Sicht der jüngsten `outputs/`-Datei (Run 81, 08.09.) |

**Stations-Split eingehalten:** nur SIA und VKF. Keine DIN-, VSS- oder RAL-Position berührt
oder abgehakt.

**Die einzige P1-Position ist geprüft und bleibt zu Recht offen.** SIA 181:**2020** steht als
P1-Bring-Schuld im Inventar. Im Haus liegen `181_2006_d.pdf` und `xalt/neu/181_d_1988.pdf` —
die geltende Ausgabe 2020 ist nicht beschafft. P1 ging also nicht vor; die Position bleibt
Beschaffungssache.

## 2. Der Auftrag und die Prüfmenge

Gescannt wurden **beide** Ablagen (Methodik-Pflicht 1): `PL - 03 Brandschutz` mit allen
Unterordnern (105 PDF) und `PL - 02_Recht_Norm/02_Normen/VKF_Norm`.

| | Pfade | distinkte Inhalte (md5) | distinkte Fundstellen |
|---|---|---|---|
| isolierte «<» | 28 | 15 | 48 |
| isolierte «>» | 60 | 34 | 142 |
| **VKF/Brandschutz zusammen** | | | **190** |
| SIA (14 vorgefilterte Dateien) | | | 146 |

**Die Pfad- gegen Inhaltszählung ist nicht Kosmetik.** 28 Pfade tragen 15 distinkte Inhalte:
PL-02 und PL-03 halten dieselben Richtlinien **bytegleich doppelt** (belegt u.a. für
Brandmeldeanlage, Löscheinrichtungen, Wärmetechnische Anlagen, Flucht & Rettungswege, Begriffe
& Definitionen). Wer über beide Ablagen zählt, ohne zu deduplizieren, verdoppelt seine
Prüfmenge auf dem Papier. Der Sweep über beide Ablagen bleibt trotzdem Pflicht — er findet die
**Fassungen**, nicht zusätzliche Inhalte.

## 3. Die Messanlage — und warum ihre erste Fassung gegenstandslos war

Der Defekt ist **kein fehlendes Glyph**: «≤» ist als «<» mit darunter gesetzter Unterstreichung
gesetzt (Word-Erzeuger). `pdftotext` liest das «<» und verliert den Strich. Also muss am
Rendering gemessen werden, ob unter dem Glyph ein Strich liegt.

**Die erste Fassung suchte eine horizontale Linie im Glyph-Fenster** und meldete den Höchstwert
1.0 für Brandmeldeanlage S. 13, Sprinkleranlage S. 12 und Löscheinrichtungen S. 9 — alle drei
nachweislich **echte** «<», vorher am Rendering abgelesen. Dem einzigen bekannten Positivfall
gab sie 0.68, also **weniger** als den Negativfällen. Sie mass **Tabellenrahmenlinien**.

Erst die **kontrastierende** Fassung misst: Anteil dunkler Pixel unter dem Glyph, über genau die
Glyphbreite, gegen denselben Streifen je eine Glyphbreite links und rechts **daneben**. Ein
Unterstrich endet mit dem Glyph, eine Zellrahmenlinie läuft weiter.

**Kalibrierung — die Lücke, die vier Läufe offen liessen.** Run 50, 79, 80 und 81 haben je
ausgewiesen, die Spezifität ihres Verfahrens nicht gemessen zu haben. Hier ist sie gemessen:
acht Fundstellen wurden unabhängig von der Messung sichtgeprüft, fünf davon vor ihr. Alle
Negativfälle liegen bei ≤ 0.00, alle Positivfälle bei ≥ 0.15. **Keine Fehlklassifikation in
beide Richtungen.** Die Tabelle steht in `training/n82-vergleichszeichen-sweep-260909.md`.

## 4. Das Ergebnis im VKF-Bestand: zwei Richtlinien, kein falscher Wert

**Positiv sind drei distinkte Dateien, also zwei Richtlinien:**

1. **BRL 15-15 «Brandschutzabstände, Brandverhalten von Tragwerken»**, Fassung 2015 **und** 2017,
   je S. 11/12/13 — «Brandabschnittsfläche ≤ 1'200 m²», «Personenbelegung ≤ 300 Personen».
   **Bekannt** aus Run 81; das Destillat führt sie korrekt, weil Run 79/80 am Rendering
   gearbeitet haben.
2. **BRL 24-15 «Wärmetechnische Anlagen»** — in Run 82 erstmals gemessen, zwei Stellen:
   - **S. 19:** Faustformel Zu-/Abluftquerschnitt `A = K × P` **(≥ 150 cm²)**, Textlayer «>».
     Bei «>» wären genau 150 cm² unzulässig.
   - **S. 37:** Durchführung von Abgasanlagen durch Holzdecken, Sicherheitsabstand zu brennbarem
     Material `x1 / x2` **≤ 50 mm**, Textlayer «<».

**Die richtige Formulierung des Ergebnisses** (Methodik-Pflicht 10): nicht «zwei neue Fehler
gefunden». Beide BRL-24-Werte stehen im Destillat **bereits richtig** — Zeile 44 führt
«A = K × P (≥150 cm²)», Zeile 78 führt «wenn erforderlicher Abstand ≤50 mm (S. 14, Anhang
S. 36-37)». Neu ist allein der **Nachweis**, dass sie richtig sind, obwohl der Textlayer sie
falsch ausliefert. Beide Stellen sind jetzt inline mit Rendering-Beleg vermerkt.

**Alle übrigen 187 Fundstellen sind echte «<» bzw. «>»** — darunter die Kreuzmatrizen
Brandbelastung/Aktivierungsgefahr der BRL 19 und BRL 20 («< 50 MJ/m²»), die
Spannungs-Abstandstabelle der BRL 18 («< 1'000 V»), die Temperaturklassen der BRL 25
(«TL < 100 °C») und die Flammpunkt-Definitionen der BRL 26 («< 30 °C»), alle am Rendering
abgelesen.

## 5. Der Gegenbefund, der das Verdachtsmuster entkräftet

Der Lauf begann mit dem stärksten Verdachtssignal des Screenings: die **BRL 21-15 «Rauch- und
Wärmeabzugsanlagen»** führt im Textlayer 8 × «≤», **kein einziges «≥»** und 76 isolierte «>».
Eine Dimensionierungsnorm ohne ein einziges «≥» ist ungewöhnlich.

Die Notwendigkeitstabelle Ziff. 3.1 Abs. 2 (S. 5) wurde deshalb ganz gerendert und abgelesen:
gedruckt steht durchgehend **«>»** — «> 600 m²», «> 1'200 m²», «> 2'400 m²», «> 4'800 m²»,
«> 300 Personen». Die Richtlinie arbeitet in ihren Notwendigkeitstabellen bewusst mit der
strikten Ungleichung.

**Damit ist ein Verdachtsmuster widerlegt, das sich sonst als Regel festgesetzt hätte:** die
Abwesenheit von «≥» bei Anwesenheit von «≤» ist **kein** Defektindiz. Hätte der Lauf hier nicht
nachgesehen, wäre die BRL 21 als 76-fach betroffene Richtlinie in den Bericht gewandert — der
grösste Einzelposten des Sweeps, und vollständig falsch.

## 6. Der SIA-Bestand: kein echter Fall, aber ein schwererer Defekttyp

Ein Vollsweep über 458 SIA-PDF wäre teuer und grösstenteils gegenstandslos, weil nur Werte
gefährlich sind, die in ein Destillat gelangt sind. Deshalb zweistufig: aus 194 SIA-Destillaten
die **95** mit Vergleichszeichen-Werten, davon **62** auf eine Datei im Haus auflösbar, Vorfilter
auf die Frage, ob der Textlayer «≤»/«≥» überhaupt kodiert → **14 Verdachtsdateien**, **146
Fundstellen**.

**Neun Messtreffer, alle Scheinbefunde.** Acht in SIA 180:2014, einer in SIA 500:2009. Die
Sichtkontrolle zeigt dort **Diagramme** — Achsen, Raster, Kurvenscharen mit «−10 °C», «−5 °C»,
«θe = 0 °C». An diesen Stellen steht überhaupt kein Vergleichszeichen.

**Die Ursache ist der eigentliche Befund und wiegt schwerer als der gesuchte Defekt.** Beide
Dateien tragen als Producer ein **OCR-Plug-in**: «Adobe Acrobat 9.55 Paper Capture Plug-in»
(SIA 180:2014, 72 S., 28 Grenzwerte im Destillat) und «Acrobat 11.0.23 Paper Capture Plug-in»
(SIA 500:2009, 13 Grenzwerte). Ein Paper-Capture-Layer ist OCR über einem Scan; er **erfindet in
Grafikbereichen Zeichen**. Eine Textextraktion daraus ist nicht bloss strukturell blind
(Methodik-Pflicht 8), sondern inhaltlich unzuverlässig bis auf die Zeichenebene.

**Beide Destillate haben das erkannt, bevor dieser Lauf danach suchte.** `sia-180-2014.md`
vermerkt im Frontmatter «Scan mit Textlayer-Charakter, **visuell gelesen**»; `sia-500-2009.md`
hat die Sanitär-Figuren am Rendering aufgenommen und alle vier Korrigenda am amtlichen Wortlaut
nachgeführt. Kein Handlungsbedarf — aber ein Beleg, dass die Rendering-Pflicht in der KB gelebt
wird und nicht nur dasteht. Beide Vermerke sind jetzt mit der Messung untermauert.

**Daraus die Producer-Typologie, vorgelegt als N82-1:** **Typ A** kein Textlayer (11 destillierte
Originale, KONICA bizhub und Xerox, **0** extrahierbare Zeichen bei 11 bis 52 Seiten) · **Typ B**
OCR (2) · **Typ C** Word mit «≤» als «<» plus Unterstrich (das VKF-Muster) · **Typ D**
Distiller/Apogee mit echtem Glyph (der Rest).

**Die unbequeme Lehre:** der gefährlichste Typ ist nicht der offensichtlich unbrauchbare,
sondern der scheinbar brauchbare. Typ A zwingt zum Rendering, weil er leer ist. Typ B liefert
flüssigen, plausiblen Text und verschiebt darin Zeichen.

**Eine benannte Lücke ist damit gleich mitgeschlossen:** die 11 Scanner-Producer-Dateien standen
als «0 Vergleichszeichen — Herkunft unklar» im Screening. Sie haben **gar keinen** Textlayer;
ihre Destillate mussten am Rendering entstehen und sind strukturell gegen den Defekt gefeit.
Darunter die P1-Norm SIA 102:2020 (41 S., 0 Zeichen).

## 7. Drei eigene Fehlversuche, jeder eine Aussage über das Werkzeug

Sie stehen hier, weil sie der Ertrag des Laufs sind und nicht sein Abfall.

1. **Die Linien-Messung mass Tabellenrahmen** (Ziff. 3). Ohne Kalibrierung an einem bekannten
   Positiv- und Negativfall wäre das nicht aufgefallen: die Zahlen sahen aus wie ein Ergebnis.
2. **Das Abdeckungs-Screening meldete «keine Lücke»**, weil es je Anhangseite nur prüfte, ob die
   **Zahl** irgendwo im Destillat vorkommt. «150» stand dort in anderem Zusammenhang. Ein
   leeres Suchergebnis ist zuerst eine Aussage über das Werkzeug.
3. **Der teuerste Fehlversuch war meiner selbst.** Nach dem Fund auf S. 37 griff ich im Destillat
   nach «150 / KxP / Sicherheitsabstand», schnitt die Trefferzeilen auf 240 Zeichen ab und
   schloss daraus, das Destillat führe die Stellen **überhaupt nicht** — ein Abdeckungsbefund
   gegen ein Frontmatter, das den Anhang als «komplett» ausweist. Die Gegenprüfung an den
   vollen Zeilen 44, 58 und 78 hat es widerlegt: alles vorhanden, mit den richtigen Zeichen, und
   S. 37 ausdrücklich als Fundstelle genannt. Genau der Fall der **Methodik-Pflicht 7** — am
   Original richtig beobachtet, aber kein Befund; und ein Beleg dafür, dass ein abgeschnittenes
   `grep` derselbe Werkzeugfehler ist wie ein blinder Filter.

## 8. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Nur eine Verfälschungs-Mechanik ist gemessen** — der Unterstrich. Ein «≤» als Bild oder mit
   gar nicht kodiertem Glyph hinterlässt kein isoliertes «<» und fällt aus der Erfassung heraus.
   Die Anlage findet, was sie sucht; sie beweist nicht, dass es nichts anderes gibt (N82-3).
2. **33 der 95 SIA-Destillate mit Grenzwerten** liessen ihr `quelle:`-Feld nicht auf eine Datei
   im Haus auflösen und sind ungeprüft — die grösste offene Kante (N82-2).
3. **Für den SIA-Teil ist der Vorfilter ein Screening.** Wo der Textlayer «≤» kodiert, wurde
   nicht gerendert; die Annahme, ein PDF, das «≤» kann, setze es nicht anderswo als Unterstrich,
   ist plausibel und ungemessen (N82-3).
4. **Die Fassung 2017 der BRL 24 liegt nicht im Haus.** Dass S. 19 und S. 37 auch dort
   unverändert gelten, stützt sich auf einen **Textlayer**-Wort-Diff — eine Änderung allein am
   Vergleichszeichen wäre darin unsichtbar (N82-4).
5. **Die Refuter-Richtung ist nicht gelaufen.** Alle Befunde stammen vom Hauptprozess.
   **Keine Statushebung** (N82-5, Methodik-Pflicht 13).
6. **N81-1** (rein grafische Änderung ohne Textlayer-Spur auf den Textseiten 3-10 und 14-21 der
   BRL 15-15) ist **nicht** angefasst und bleibt offen.
7. **N79-2** (Verlinkungs-Sweep über 26 Destillate mit totem TKB-VKF-Zeiger) liegt weiterhin bei
   Raphael und wurde nicht gefahren.

## 9. Vorgelegt

**Neu N82-1:** ob der **Producer-Check** verbindlicher Erstschritt jeder Aufnahme werden soll.
Er kostet einen `pdfinfo`-Aufruf und trennt vier Vertrauensstufen des Textlayers. Claude setzt
keine Methodik-Pflicht selbst.

**Aus Run 81 unverändert offen:** die dort vorgeschlagene **Methodik-Pflicht 14**
(«Fassungsvergleiche über das ganze Dokument, Seitenzuordnung erst danach», N81-3).

**Unverändert bei Raphael und nicht erneut vorgelegt:** N79-2, N78-1, N77-2, N77-3, N65-2,
N65-4, N63-2 für den übrigen Bestand, N63-3, die Reihenfolge der N62-3-Kandidaten, das
Statusvokabular und die Beschaffungs-Bring-Schulden — darunter **SIA 181:2020** als einzige
offene P1-Position.

## 10. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`c57392493`), nicht gegen HEAD — der 15-Minuten-
Selfcommitter kann mitten im Lauf Teile der Arbeit committen.

Alle Änderungen an gewachsenen, geteilten Dateien sind **anker-basiert** vorgenommen: je Anker
per Assertion genau ein Treffer erzwungen, sonst Abbruch. `wiki/QUESTIONS.md`, `CHANGELOG.md`
und `training/norm-inventar.md` rein additiv. Kein globales Suchen-und-Ersetzen.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `wiki/QUESTIONS.md` | 80 | **0** | rein additiv, Einschub nach der H1 |
| `CHANGELOG.md` | 40 | **0** | rein additiv, neuester Eintrag zuoberst |
| `training/norm-inventar.md` | 2 | **0** | append-only sauber |
| `destillate/vkf-brl-24-15-waermetechnische-anlagen.md` | 3 | 3 | Zeilenersetzungen: `last_updated` und die zwei Wertzeilen (Ziff. 3.5 Anhang S. 19, Ziff. 5.8.6), je durch eine erweiterte Fassung |
| `destillate/vkf-brl-15-15-brandschutzabstaende-tragwerke.md` | 2 | 2 | Zeilenersetzungen: `last_updated` und die Zeile, welche die Frage N81-2 aufgeworfen hatte — dort steht jetzt ihre Antwort |
| `destillate/sia-180-2014.md` | 2 | 2 | Zeilenersetzungen: `last_updated` und das `gelesen:`-Feld (Producer-Messung ergänzt) |
| `destillate/sia-500-2009.md` | 2 | 2 | Zeilenersetzungen: `last_updated` und das `gelesen:`-Feld (Textlayer-Warnung ergänzt) |
| `training/n82-vergleichszeichen-sweep-260909.md` | neu | — | die Messanlage |
| `outputs/…run82.md` | neu | — | dieser Report |

**Kein Bestandsverlust.** Zwei Gegenproben, beide nach den Edits gefahren:

(a) **Jede einzelne der neun gelöschten Zeilen im Diff nachgesehen** — vier `last_updated`, zwei
`gelesen:`-Felder, drei Inhaltszeilen. Jede ist durch eine **erweiterte** Fassung ersetzt, keine
ersatzlos entfernt.

(b) **Kernformulierungen einzeln gegengesucht**, je Destillat acht bis elf: BRL 24 («T080»,
«85°C», «Ausrollung», «LAS», «Kochherde», «Beschickungsöffnung», «10.3», «8.6», dazu die zwei
neuen «≥150 cm²» und «≤50 mm»), BRL 15 («Ersatzmassnahmen», «Nebenbauten», «Brandmauer»,
«9'600», «3.1.2 Abs. 3», «35 m», «Mineralwolle», «20 Personen», «Variante F», «k. A.»,
«≤ 1'200 m²»), SIA 180 («Glaserverfahren», «Anhänge A-H», «Behaglichkeit», «Luftdichtheit»),
SIA 500 («KORRIGENDA», «OK Brille», «C4:2019», «Anhang A»). Alle vorhanden. Überschriftenzahl
unverändert (BRL 24: 14, BRL 15: 18, SIA 180: 21, SIA 500: 12).

**Und eine Randnotiz, die zum Thema des Laufs gehört — der vierte Werkzeugfehler.** Die erste
Fassung dieser Gegenprobe (b) meldete für alle vier Dateien «fehlend: KEINE» und war
**gegenstandslos**: sie benutzte `read -a`, das die zsh dieser Station nicht kennt, also lief die
Prüfschleife nie und der leere Befund war der Anfangswert der Variablen. Bemerkt am
`bad option: -a` in derselben Ausgabe. **Ein leeres Suchergebnis ist zuerst eine Aussage über
das Werkzeug** (Rule `wege-und-vollmachten`, `auto-verbesserungen` 260730b) — an einem Tag, an
dem der Lauf genau darüber berichtet, zum vierten Mal belegt. Erst die zweite, mit einer
Shell-Funktion gefahrene Messung ist die oben berichtete.

**Umlaute:** die in diesem Lauf geschriebenen Passagen tragen echte ä/ö/ü (Rule
`umlaute-konvention`). Drei eigene «ue»/«ae»-Schreibungen in den Destillat-Vermerken («fuer»,
«Anhaenge», «bestaetigt», «unzuverlaessig») wurden noch im Lauf gefunden und korrigiert.
Verbleibende Vorkommen stammen aus dem Altbestand und aus Frontmatter-Feldnamen, die ASCII
bleiben müssen.
