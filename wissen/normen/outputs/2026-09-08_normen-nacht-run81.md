# Normen-Nacht Run 81 — 08.09.2026, ab 01:28 CEST (MacBook Pro)

**Der Arbeitsgegenstand ist der, den Run 80 selbst als naheliegendsten nächsten Lauf benannt hat.**
N80-1: der Fassungsvergleich 2015/2017 der BRL 15-15de war erst auf zwei von fünf Anhangseiten
messend gefahren; für S. 27 und S. 34 stand «inhaltlich unverändert» allein auf dem
Volltextvergleich von Run 7 — auf derselben strukturellen Blindheit, die Run 80 auf S. 22-23 gerade
belegt hatte. Statt nur die zwei Seiten nachzuholen, ist der Vergleich hier über **alle 35
Seitenpaare** gefahren; damit misst der Lauf zugleich, ob die Änderungsliste der Richtlinie
vollständig ist.

**Ergebnis: 1 widerlegte Bestandsaussage, 2 Bestätigungen mit berichtigter Begründung, 2
methodische Belege mit Reichweite über diese Datei hinaus, 2 abgefangene Scheinbefunde, 1
geschlossener Auftrag.**

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| NAS gemountet | ja, zu Laufbeginn |
| Arbeitsdatum | `date` → 2026-09-08 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | funktioniert inhaltlich (`pdfinfo`, `pdftotext`, `pdftoppm`), kein M365-Fallback nötig |
| NAS-Repo vor Beginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `36fc41793` |
| Inventarstand | 0 offene `[ ]` im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **81**, nach Sicht der jüngsten `outputs/`-Datei (Run 80, 07.09.) |

**Stations-Split eingehalten:** nur VKF. Keine DIN-, VSS- oder RAL-Position berührt oder abgehakt.

**Methodik-Pflicht 1 und 3 eingehalten.** Beide Ablagen geprüft: die Dateien liegen je Fassung
**bytegleich** in PL-02 und PL-03 (2015 `486dc5e9043e`, 2017 `6dcc54f34a2d`; letztere stimmt mit der
Fassungsmatrix `n58-vkf-fassungsmatrix-260820.md` überein). Beide 35 Seiten, **Seitenversatz 0**.
Die Änderungsliste wurde **am Original** nachgelesen (S. 2 der 2017er-Datei), nicht aus dem
Destillat übernommen; die 2015er-Datei trägt an derselben Stelle keine.

## 2. Warum die naheliegende Methode hier nicht trägt

Der rohe 150-dpi-Pixelvergleich über alle 35 Seitenpaare zeigt: **jede** Seite weicht ab, von
0.28 % (S. 20) bis 24.7 % (S. 7), mit Kopf- und Fusszeilen-Band auf jeder einzelnen. Ursache ist
nicht Inhalt, sondern der verschiedene PDF-Erzeuger (Word 2010 gegen Word) bei minimal abweichender
Seitenbreite. **Zwischen diesen beiden Dateien ist ein roher Pixel-Diff kein Inhaltsmass**, sondern
nur ein Screening.

Der seitenweise **Text**vergleich führt in die andere Irre: er meldet acht Seiten als abweichend,
die die Änderungsliste nicht nennt (S. 3, 8, 9, 10, 12, 13, 14, 15). Keine davon ist eine
inhaltliche Änderung — die angekündigte Änderung auf S. 7 verschiebt Text über Seitengrenzen, bis
sich die Seiten ab S. 16 wieder exakt decken; S. 3 ist das Inhaltsverzeichnis, dessen Zahlen dem
Reflow folgen. **Wer seitenweise vergleicht, erzeugt acht Scheinbefunde und übersieht zugleich die
grafische Änderung auf S. 33**, die im Textlayer wortgleich ist. Das Volltext-Delta wurde deshalb
über das ganze Dokument gebildet und die Seitenzuordnung erst danach vorgenommen.

## 3. Der Kernbefund: S. 34 war als «unverändert» geführt und ist es nicht

- **2015:** «Bei Löschanlagenvollschutz sind **auf der Fassadenaussenseite keine Massnahmen**
  erforderlich.»
- **2017:** «Bei Löschanlagenvollschutz sind **beim Anschluss an die Aussenwand keine baulichen
  Massnahmen** erforderlich.»

Die Befreiung ist in **zwei** Richtungen enger gefasst: örtlich (nicht mehr die ganze
Fassadenaussenseite, sondern der Deckenanschluss an die Aussenwand) und sachlich (nur noch
*bauliche* Massnahmen). Überschrift und übrige Differenzbänder der Seite sind zeichengleich, per
Sichtkontrolle am gestapelten 300-dpi-Ausschnitt abgelesen.

**Die richtige Formulierung des Ergebnisses** (Methodik-Pflicht 10): nicht «die KB hatte es
falsch». Der Kernziffern-Teil des Destillats gibt Ziff. 3.7.13 bereits in der Fassung 2017 wieder
(«bei Löschanlagenvollschutz entfallen die baulichen Massnahmen am Anschluss»). Falsch war allein
die **Delta-Aussage** — also die Behauptung, zwischen den Fassungen habe sich nichts geändert. Für
laufende Projekte ändert sich damit nichts; wer ein **Altprojekt auf der Basis 2015** beurteilt,
darf die 2017er-Formulierung aber nicht rückwirkend anwenden. Genau dafür ist der Delta-Abschnitt da.

## 4. Zwei Bestätigungen — und warum die Begründung trotzdem falsch war

**S. 27 (Ziff. 3.3.3).** Rohdifferenz 405'431 Pixel; nach Ausrichtung um den gemessenen
Zeilenversatz von **53 px** bleiben **10'517** (−97.4 %), und der Rest ist die minimal anders
gesetzte Zeile «Variante C». Beide Konstruktionsvarianten, alle Bemassungen (Mineralwolle RF1
≥ 100 mm, Schmelzpunkt ≥ 1'000 °C, Rohdichte ≥ 40 kg/m³, Holz ≥ 40 mm, Stahlblech ≥ 0.5 mm,
Brandschutzplatte 30 Minuten) und die ganze Beschriftung sind identisch. Der Versatz entsteht
**allein aus der Überschrift**: «… an **Bedachungen**» → «… an **Dachkonstruktionen**», die dadurch
zweizeilig umbricht. Das ist dieselbe Nomenklatur-Nachführung auf die 2016 umbenannten Kapiteltitel
der BRL «Verwendung von Baustoffen», die Run 80 auf S. 22-23 belegt hat — **kein Layout-Zufall,
sondern eine benannte Begriffsänderung**, und die bisherige Begründung («reine Layout-Konsistenz»)
verfehlte sie.

**S. 33 (Ziff. 3.7.11).** Run 7 hatte hier eine inhaltliche Revision gefunden, aber ohne Bildbeleg.
Jetzt gemessen: der **Zeichnungskörper ist unverändert** (bester Versatz dy = 0, 245 abweichende
Pixel). Gewachsen ist **allein der Beschriftungsblock**: die Bezeichnung «Maximale
Brandabschnittsfläche / **ohne** Löschanlage» über der bestehenden Zeile «Fläche pro Geschoss
≤ 9'600 m²» und eine **neue Zeile «mit Löschanlage → beliebig / beliebig»**. Dieser Zuwachs lässt
sich durch keinen Versatz wegrechnen (Restdifferenz 82'689 px auch beim besten dy). Zusätzlich ist
«mindestens 25 % unverschliessbaren» 2017 unterstrichen.

## 5. Zwei methodische Belege, die über diese Datei hinausreichen

**Erstens: die S.-33-Änderung ist im Textlayer unsichtbar.** Die Seite trägt in **beiden**
Fassungen nur Kopfzeile, drei Titelzeilen und Seitenzahl — 261 Zeichen, wortgleich. Weder
«beliebig» noch «Maximale Brandabschnittsfläche» kommen darin vor; die einzigen zwei
«beliebig»-Treffer der ganzen Datei stehen auf S. 29 (Lagerhöhen-Tabelle) und sind unbeteiligt.
Eine ganze Flächenregel ist hinzugekommen, und jede textbasierte Methode meldet «unverändert». Das
ist der sauberste Beleg für Methodik-Pflicht 4, den die KB bisher hat.

**Zweitens: der Textlayer verfälscht Vergleichszeichen.** Gedruckt steht «**≤** 1'200 m²» und
«**≤** 300 Personen», `pdftotext` liefert «<» und «>». Dieselbe Fehlerfamilie wie beim
GVZ-Merkblatt 30.17.3, die seinerzeit Methodik-Pflicht 8 ausgelöst hat — **hier erstmals an einer
VKF-Richtlinie belegt.** Das Destillat führt an dieser Stelle korrekt «≤», weil Run 79/80 die
Tabelle am Rendering und nicht am Textlayer aufgenommen haben: die Pflicht hat nachweislich
gegriffen. Offen und als **N81-2** notiert ist die Frage nach der Reichweite — welche anderen
VKF-Destillate haben Grenzwerte aus einer Textextraktion übernommen? Eine Verwechslung von «≤» und
«<» verschiebt eine Grenze um genau einen Grenzfall, und das ist bei Brandabschnittsflächen eine
Planungsfolge.

## 6. Zwei Scheinbefunde, die die Gegenprobe abgefangen hat

**«m» → «m2» ist kein Delta.** An sechs Stellen meldet der Volltext-Diff eine scheinbar
nachgetragene Einheit. Am 300-dpi-Rendering drucken **beide** Fassungen «m²»; per `pdftotext -bbox`
hat die 2017er-Datei ein eigenes, angehobenes Wort «2» (yMin 241.592 gegen Grundlinie 242.438),
während die 2015er-Datei die hochgestellte 2 nicht als Wort kodiert. Reines Encoding. Hätte ich das
ungeprüft übernommen, stünde jetzt eine erfundene Normänderung im Destillat.

**Die acht «unangekündigten» Seiten sind Reflow** (Ziff. 2 oben), nicht Inhalt.

**Und ein dritter Fall, der wie ein Fund aussah und eine Bestätigung ist** (Methodik-Pflicht 7):
Fussnote [5] der Tabelle 1 ist 2017 erheblich erweitert — «über Terrain», die Begrenzung auf EI 30
bei REI-30-Decken und die eigene Regel für Beherbergungsbetriebe [c]. Der Bestand **führte diesen
Wortlaut bereits vollständig** (Z. 27 und Z. 74). Richtig protokolliert lautet das Ergebnis: die KB
hatte den Wortlaut, neu ist allein seine **Datierung** — das Destillat schrieb ihn dem
«10/2022-Druck» zu, er steht nachweislich schon in der Fassung 01.01.2017.

## 7. Vollständigkeit der Änderungsliste (Abdeckungsrichtung, Methodik-Pflicht 6)

Über das ganze Dokument gemessen sind die einzigen inhaltlichen Deltas genau die acht
angekündigten. **Nicht** genannt sind vier rein orthografische Korrekturen: «Industrie- und
Gewerbe» → «Industrie und Gewerbe», «Einlegerwohnung» → «Einliegerwohnung», «Parking» →
«Parkings» und ein ergänztes Komma in Ziff. 3.4 Abs. 5. **Die Änderungsliste ist damit für alle
anforderungsrelevanten Änderungen vollständig**; unvollständig ist sie nur bei Orthografie. Das
ist ein Befund über die Quelle, nicht über die KB — und er erlaubt es, künftigen VKF-Fassungen
ihre Änderungsliste als Einstieg zu glauben, ohne sie als Nachweis zu nehmen.

## 8. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Der Sweep ist ein Screening, kein Inhaltsnachweis je Seite.** Ausgerichtet, gerendert und
   gelesen wurde auf S. 11-13 (Run 79/80), S. 22-23 (Run 80) und S. 27/33/34 (Run 81). Für die
   **Textseiten 3-10 und 14-21** trennt allein der Volltext-Diff Inhalt von Rendering; eine rein
   grafische Änderung ohne Textlayer-Spur wäre dort nicht gefunden worden. Unwahrscheinlich, weil
   diese Seiten kaum Zeichnungen tragen — aber nicht gemessen (**N81-1**).
2. **Die Refuter-Richtung ist auf den Nachträgen dieses Laufs nicht gelaufen.** Alle Befunde
   stammen vom Hauptprozess und sind am Original gemessen; ein unabhängiger Widerlegungsversuch
   steht aus. **Keine Hebung auf `established`** (N80-2 unverändert, Methodik-Pflicht 13).
3. **Die Reichweite des «≤»/«<»-Defekts über den übrigen VKF-Bestand** ist ungemessen (N81-2).
4. **Die 20-Personen-Schwelle** der [a]/[b]/[c]-Definition steht weiterhin auf einer
   `superseded`-Fassung der BRL 10-15 (N80-3, unverändert).
5. **Die Spezifität des Verfahrens** ist nicht gemessen: ob der Ausrichtungs-Test eine künstlich
   verfälschte Seite zurückweisen würde, ist offen — dieselbe Gegenprobe, die Run 50, 79 und 80
   bereits offen gelassen haben.
6. **N79-2** (Verlinkungs-Sweep über 26 Destillate mit totem TKB-VKF-Zeiger) liegt weiterhin bei
   Raphael und wurde **nicht** gefahren.

## 9. Vorgelegt

**Neu:** ob eine **Methodik-Pflicht 14** aufgenommen werden soll — «Fassungsvergleiche werden über
das ganze Dokument gebildet, die Seitenzuordnung erfolgt erst danach». Dieser Lauf hat beide
Fehlerrichtungen an einer einzigen Quelle belegt: acht Scheinbefunde durch Reflow und eine echte,
im Textlayer unsichtbare Änderung. Claude setzt keine Methodik-Pflicht selbst (N81-3).

**Unverändert bei Raphael und nicht erneut vorgelegt:** N79-2, N78-1 (Sprachdiff als Voraussetzung
für `established`), N77-2, N77-3, N65-2, N65-4, N63-2 für den übrigen Bestand, N63-3, die
Reihenfolge der N62-3-Kandidaten, das Statusvokabular und die Beschaffungs-Bring-Schulden.

## 10. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen den
Commit-Stand **bei Laufbeginn** (`36fc41793`), nicht gegen HEAD — der 15-Minuten-Selfcommitter kann
mitten im Lauf Teile der Arbeit committen.

Alle Änderungen an gewachsenen, geteilten Dateien sind **anker-basiert** vorgenommen worden (je
Anker per Assertion genau ein Treffer erzwungen); `wiki/QUESTIONS.md`, `CHANGELOG.md` und
`training/norm-inventar.md` wurden rein additiv geschrieben. Kein globales Suchen-und-Ersetzen.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `destillate/vkf-brl-15-15-brandschutzabstaende-tragwerke.md` | 10 | 5 | **alle 5 einzeln im Diff nachgesehen**: `gelesen`, `last_updated`, die widerlegte Delta-Zeile zu S. 27/34, die Zeile «Anhang (S. 18-35)» der Abdeckungstabelle und Punkt 2 der Liste «Was ungeprüft bleibt» — jede durch eine erweiterte Fassung ersetzt, keine ersatzlos entfernt |
| `CHANGELOG.md` | 43 | **0** | rein additiv |
| `wiki/QUESTIONS.md` | 45 | **0** | Einschub nach der H1, append-only sauber |
| `training/norm-inventar.md` | 2 | **0** | append-only sauber |
| `training/n81-fassungsvergleich-260908.md` | neu | — | die Messanlage |
| `outputs/…run81.md` | neu | — | dieser Report |

**Kein Bestandsverlust.** Zwei Gegenproben: (a) die Zahl der Überschriften im Destillat bleibt bei
**18**, die Zeilenzahl steigt von 262 auf 267 — nur Zuwachs, keine entfernte Sektion. (b) Zwölf
Kernformulierungen früherer Läufe wurden nach den Edits einzeln gegengesucht und sind alle noch
vorhanden («Ersatzmassnahmen», «Nebenbauten», «Brandmauer», «9'600», «Retro-Verifikation»,
«3.1.2 Abs. 3», «Brüstung als Schutzstreifen», «35 m», «Mineralwolle», «20 Personen»,
«Variante F», «k. A.»).

**Umlaute:** die in diesem Lauf geschriebenen Passagen tragen echte ä/ö/ü (Rule
`umlaute-konvention`). Zwei eigene «ue»-Schreibungen im Frontmatter wurden noch im Lauf gefunden
und korrigiert. Verbleibende ae/oe/ue-Vorkommen der Dateien stammen aus dem Altbestand und aus
Dateinamen-Referenzen, die ASCII bleiben müssen.

**Eine Randnotiz aus der eigenen Prüfung, weil sie zum Thema des Laufs gehört.** Die erste
Umlaut-Kontrolle am Mount meldete «sauber» und war es nicht: der Filter schloss Zeilen mit
`brandschutzabstaende` aus, um die Dateinamen-Referenzen zu unterdrücken — und der Dateiname steht
in derselben Zeile wie der Fehler. **Ein leeres Suchergebnis ist zuerst eine Aussage über das
Werkzeug** (Rule `wege-und-vollmachten`, `auto-verbesserungen` 260730b). Gefunden hat es die
zweite, nativ per ssh gefahrene Messung — also genau die Doppelmessung, die Rule 260811 verlangt.
