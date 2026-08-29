# Normen-Nacht Run 66 — 30.08.2026, ab 01:28 CEST (MacBook Pro)

**Vertiefungsstufe (c) plus ein Pilot.** Zwei Arbeitsgegenstände, beide von Run 65 als offen
ausgewiesen:

1. **N65-3** — die Q&A-Runde auf dem Figurenanhang S. 44-57 von `destillate/sia-416-2003.md`.
   Die einzige der drei etablierten Prüfrichtungen, die auf dem praktisch folgenreichsten Teil
   des Destillats nie gelaufen war.
2. **N63-2** — die Fundstellen-Richtung, überhaupt zum ersten Mal, hier als Pilot auf einem
   Destillat.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-08-30 01:28 CEST |
| NAS gemountet | ja |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf. Die `ps`-Treffer auf «normen-training» stammten aus dem **Prompttext** eines unabhängigen Dispatch-Laufs, nicht aus einem Normen-Prozess — einzeln nachgesehen, nicht aus der Trefferzahl geschlossen |
| OneDrive-Zugriff auf PL-02 | funktioniert, auch inhaltlich (`pdfinfo` + `pdftotext` auf der Zieldatei) — kein M365-Fallback nötig |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 65) vergeben |
| Inventarstand | PL-02/PL-03 weiterhin **0 offene `[ ]`** im SIA/VKF-Scope; die verbleibenden offenen Zeilen sind Beschaffungs-Bring-Schulden (SIA-Shop, VSS, SNV) oder Mac-Mini-Scope → Vertiefungsstufe |

**Stations-Split eingehalten:** nur SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

## 2. Methode

Vier Agenten (sonnet) bekamen **kein Destillat**, sondern nur einen Fragenkatalog und ihren
Seitenabschnitt — die Fragen so gestellt, dass sie am Original beantwortbar sind, ohne die
Antwort zu verraten. Je eigenes Render-Präfix `sia416-r66-agentA/B/C/D-` (Methodik-Pflicht 5);
der Hauptprozess mit eigenem Präfix `hauptprozess-r66-`. Ein fünfter Agent fuhr die
Fundstellen-Richtung über das ganze Destillat.

- Figuren und Legenden **gerendert und abgelesen**, nie textextrahiert (Methodik-Pflicht 8).
- Gedruckte Seitenzahl **am Seitenrand abgelesen**, nicht aus der Blattnummer gerechnet —
  vom Hauptprozess an S. 45/48/52/53, vom Inventur-Agenten an allen 14 Anhangseiten. Versatz null.
- Vor jeder Übernahme geprüft, ob das Destillat die Aussage **an anderer Stelle** bereits führt
  (Methodik-Pflicht 7). Das hat in diesem Lauf mehr bewirkt als sonst — siehe Abschnitt 4.
- **Jeder Befund einzeln und mit Fundstelle** in `training/n66-qa-anhang-anlage.md` (A66-01 bis
  A66-21). Das löst den Run-65-Vorschlag N65-1 ein, unabhängig von dessen Freigabe.

## 3. Ergebnis

**1 Kernbefund · 3 nie geführte Darstellungsregeln · 2 Präzisierungen · 1 geschlossener offener
Punkt · 1 widerlegte Agentenbehauptung · 0 falsche Zahlenwerte.**

Zur letzten Zahl gleich die Einordnung, weil sie sonst zu gut aussieht: **der Anhang enthält
überhaupt keine Zahlen** (A66-13, geprüft an Rendering und Textextraktion — im ganzen Anhang
steht kein einziger in Satzform formulierter Regeltext, nur Titel, Legenden und
Bildbeschriftungen). Die Fehlerklasse «falscher Wert» kann dort strukturell nicht auftreten.
Eine Runde ohne Wertfehler ist auf einem zahlenfreien Quellenteil kein Qualitätssignal.

### 3.1 Der Kernbefund — und warum er nur durch Messen sichtbar wurde

Das Destillat beschrieb die Konvention der **Figur 12** als «**Vollton** = im Schnitt
geschnitten, **Schraffur** = in Ansicht». Am 600-dpi-Rendering gemessen (Weissanteil und
dominante Farbe der Swatch-Innenfläche):

| Swatch | Weissanteil | dominante Farbe |
|---|---|---|
| S. 45, Gesamtlegende, 6 AKV | 2.9 % | RGB(136,65,24) 78.7 % |
| S. 57, Fig. 12, «(Schnitt)» | 0.0 % | RGB(136,65,24) 81.4 % |
| S. 57, Fig. 12, «(Ansicht)» | 78.5 % | braune Linien 6.7 % |

**Beide** Signaturen sind schraffiert; sie trennen sich am **Grund**, nicht durch An- oder
Abwesenheit der Schraffur. Zwei Folgen, und die zweite ist die schwerere:

1. Ein «Vollton braun ohne Schraffur» ist in der Gesamtlegende die Signatur von **KV (5.2) —
   einer Innen-Kategorie**. Die alte Formulierung schickte den Leser also zur falschen Kategorie.
2. Die Gesamtlegende auf S. 45 führt AKV **nur in der geschnittenen Form**. Die
   Ansichts-Signatur (Schraffur auf weissem Grund) existiert **ausschliesslich in Figur 12** und
   wird auf S. 44/45 nirgends erklärt. Wer Figur 12 mit der Gesamtlegende in der Hand liest,
   erkennt die Ansichts-Teile des AKV nicht als AKV.

**Kontrollmessung am selben Blatt**, damit der Befund nicht auf einem Messartefakt beruht: die
Innen-Kategorien (GF, KFT) sind zu **100 % gefüllt, 0 % Weiss**; die Aussen-Kategorien (AGF,
AKFT) sind **ebenfalls 0 % Weiss**, mit rund 17 % dunkleren Schraffurlinien **über** der Füllung.
Der Legendencode des Destillats («Vollfarbe innen / dieselbe Farbe schraffiert aussen») ist damit
**bestätigt und präzisiert**: die Schraffur liegt auf der Farbe, ein Aussen-Feld ist nie weiss
hinterlegt. Genau diese Kontrolle macht den Figur-12-Fall zum Sonderfall statt zum Muster.

**Herkunft des Befundes.** Der Agent, der die Seite gelesen hat, meldete die beiden
Legendenzeilen und ihre Bedeutung richtig — beschrieb den oberen Swatch aber, genau wie das
Destillat, als «Vollton». Sichtbar wurde der Fehler erst, als der Hauptprozess den Weissanteil
**gemessen** hat. Sichtlektüre hätte ihn auf beiden Seiten durchgehen lassen.

### 3.2 Drei Darstellungsregeln, die das Destillat nie geführt hat

Alle drei vom Hauptprozess an eigenen 600-dpi-Ausschnitten abgelesen, alle drei mit einem
zweiten Bein im Normtext (Ziff. 2.2):

1. **Tür- und Fensternischen zählen zur Konstruktionsfläche.** In Figur 3 sind sie in der
   **Wandfarbe mit gestricheltem Umriss** gezeichnet, sitzen an den Wandunterbrüchen und
   übernehmen die Klassierung der Wand, die sie unterbrechen (gestrichelt braun in einer
   tragenden, gestrichelt orange in einer nichttragenden). **Gegenprobe:** in Figur 4 ist
   dieselbe Öffnung **weiss** — sie gehört nicht zur NGF. Das ist die zeichnerische Umsetzung
   der Regel aus Ziff. 2.2. **Praxisfolge: beim Aufmass der KF werden Türöffnungen nicht
   abgezogen.**
2. **Das ⊠-Symbol markiert den Schacht.** Es steht ohne Legendeneintrag in allen
   Grundriss-Figuren an derselben Planstelle. Entschieden wurde es durch den Seitenvergleich:
   in **Figur 3 unkoloriert** (nicht KF), in **Figur 4 blau = FF**. Damit zeigen die beiden
   Figuren zusammen die Ausnahme, die Ziff. 2.2 im Text nur andeutet — der lichte
   Schachtquerschnitt zählt zur KF **«sofern nicht der NGF zugeordnet»**.
3. **Eine freistehende Stütze** erscheint als isoliertes KFT-Feld und wird von der NGF
   abgezogen; in Figur 4 ist dieselbe Stelle weiss.

### 3.3 Zwei Präzisierungen

- **Die Zuordnung tragend/nichttragend wechselt innerhalb eines Wandzugs.** Das Destillat sagte
  «wandscheibenscharf» — richtig in der Richtung, eine Stufe zu grob. Am Balkon der Figur 3 ist
  die linke Randwand durchgehend AKFT, die rechte AKFN, und **am unteren Ende derselben rechten
  Wand** sitzt ein kurzes eigenes AKFT-Segment. Massgebend ist die statische Funktion des
  einzelnen Abschnitts.
- **In Figur 6 wechselt die durchgehend eingefärbte Bodenplatte die Kategorie an der
  Fassadenflucht** — innerhalb der Hülle die Innen-Kategorie (Raum HNF, Erschliessung VF),
  ausserhalb die Aussen-Kategorie (ANF bzw. AVF). Damit benennt die Figur die **massgebende
  Aufmasskante für Balkon- und Terrassenflächen**. Der Agent hatte das als «Terrasse innen HNF,
  aussen ANF» gemeldet, was missverständlich ist (der innere Teil ist der Boden des angrenzenden
  Raums, nicht der Terrasse); der Hauptprozess hat es am Original nachgelesen und **umformuliert**
  übernommen.

### 3.4 Figur 7, Beispiel für Beispiel — der offene Punkt ist geschlossen

Vier Zeilen mit je mehreren Beispielen, eigene Legende (nur UF, GF, AGF). **Der wichtigste
Befund ist, dass es keinen neuen gibt:** alle Einzelbeispiele bestätigen die drei Kriterien, die
Run 65 aus Figur 5 und dem Begriffsteil abgeleitet hatte. Das ist ein Ertrag — die Kriterien
stehen jetzt unabhängig auf der Beispielsammlung — und wird nach Methodik-Pflicht 7 als
**Bestätigung** und nicht als Befund protokolliert.

Zwei Dinge sind wirklich neu:

- **Zeile 4 ist ein bewusstes Vergleichspaar.** Zweimal dieselbe Gebäudeform nebeneinander: links
  läuft das Terrain auf das Sockeldach, und dieselbe Fläche ist dort **UF**; rechts fehlt der
  Anschluss, und sie ist **AGF**. Beim linken Beispiel liegen auf **einem** Niveau UF, GF und AGF
  nebeneinander. Die Norm zeigt hier nicht drei Situationen, sondern eine Situation und ihre
  Gegenprobe.
- **Die gestrichelte Diagonale ist geklärt.** Sie kommt zweimal vor (Zeile 1 und Zeile 4) und
  verbindet in **beiden** Fällen ein grünes UF-Segment auf dem einen Niveau mit dem UF-Segment
  auf dem anderen; eine Winkel- oder Massangabe trägt sie nie. Sie stellt den **gedachten
  Geländeverlauf** dar und gehört zur Darstellung der UF. Sie ist **keine Projektionsregel** —
  die frühere Vermutung einer 45°-artigen Konstruktionslinie ist damit nicht bloss unbelegt,
  sondern gegenstandslos. Bezeichnend: sie erscheint in Zeile 4 genau beim Beispiel **mit**
  Terrainanschluss und fehlt bei der Gegenprobe ohne.

### 3.5 Eine widerlegte Agentenbehauptung — und was sie lehrt

Ein Agent meldete, **mit Pixelmessung belegt**, der Höhen-Massstrang der Figur 8 reiche tiefer
als die Farbfläche; der Massstrang liefere «eine Referenzhöhe, die tiefer reicht als beide
Fundamentfüsse». Das hätte den Kernbefund aus Run 65 umgekehrt.

Gegenmessung des Hauptprozesses am eigenen 600-dpi-Rendering der ganzen Seite, GV-Farbe aus dem
Legenden-Swatch bestimmt und mit Toleranz maskiert:

| Grösse | y-Koordinate |
|---|---|
| unterster **Tick** (Segmentgrenze H 2.UG) | 3594 |
| tiefstes **eingefärbtes** Pixel | 3647 |
| unteres Ende der blossen **Achslinie** | 3711 |

Die Farbe reicht **53 px = 2.24 mm auf dem Blatt** tiefer als die letzte Segmentgrenze. Der
Run-65-Befund ist damit **unabhängig reproduziert**, die Agentenbehauptung **widerlegt**. Der
Agent hatte das **Ende der Achslinie** für das Ende des Massstrangs gehalten — die Achslinie
begrenzt aber kein Segment; bemasst ist nur, was zwischen zwei Ticks liegt.

**Lehre: eine Pixelmessung ist nicht schon deshalb belastbar, weil sie Zahlen liefert.** Sie ist
so gut wie die Definition der gemessenen Kante. Ein Agentenbefund mit Messwerten verdient
dieselbe Gegenprüfung wie einer ohne — und die Gegenprüfung muss die Kante **definieren**, nicht
bloss nachmessen.

## 4. Ergebnis der Fundstellen-Richtung (N63-2, Pilot)

**109 Fundstellen geprüft: 104 korrekt, 1 falsch, 4 nicht prüfbar, null falsche Ziffern, null
nicht auffindbare Fundstellen.** Geprüft wurde nicht, ob eine Aussage stimmt, sondern ob jeder
Zeiger dorthin zeigt, wo er zu zeigen behauptet.

Der eine Fehler: «Die Norm selbst (Ziff. 0-6, **S. 1-17**)» im Abschnitt Gültigkeit — S. 17 ist
bereits die französische `TABLE DES MATIÈRES`, der deutsche Normteil endet mit S. 16. Inline
korrigiert. Die vier nicht prüfbaren Fälle sind keine Fehler (zwei Web-Gültigkeitsquellen, ein
Verweis auf eine andere Wiki-Datei, zwei interne Prozessvermerke).

**Wichtiger als die Quote ist die Blindstelle, die der Pilot offengelegt hat.** Der
Fundstellen-Agent hat die Figur-12-Zeile ausdrücklich als **KORREKT** verdiktet, mit der
zutreffenden Begründung, die Legende sei «exakt so beschriftet». Das stimmt für die
**Beschriftung** und übersieht, dass die **graphische Beschreibung** daneben falsch ist. Die
Fundstellen-Richtung prüft den Zeiger, nicht die Beschreibung am Ziel.

## 5. Verifikations-Verdikte (Hauptprozess, am Original)

| Befund | Verdikt |
|---|---|
| Figur 12: beide Signaturen schraffiert, Trennung am Grund | **bestätigt** — rechnerisch, drei Swatches |
| Gesamtlegende: Innen 100 % gefüllt, Aussen gefüllt + Schraffur darüber | **bestätigt** — rechnerisch, Kontrollmessung |
| Figur 3: Türnischen in Wandfarbe, gestrichelt, = KF | **bestätigt** — eigener 600-dpi-Ausschnitt + Gegenprobe Figur 4 + Ziff. 2.2 |
| ⊠ = Schacht; Fig. 3 unkoloriert, Fig. 4 blau FF | **bestätigt** — zwei Seiten, eigenes Rendering |
| Figur 3: freistehende Stütze = KFT | **bestätigt** — zwei Seiten |
| Figur 3: AKFT/AKFN wechseln innerhalb eines Wandzugs | **bestätigt** — eigener 600-dpi-Ausschnitt; Agent unabhängig gleich |
| Figur 6: Kategorienwechsel an der Fassadenflucht | **bestätigt**, Agentenformulierung korrigiert übernommen |
| Figur 7: gestrichelte Diagonale verbindet zwei UF-Niveaus | **bestätigt** — beide Vorkommen, je eigener Ausschnitt |
| Figur 7: Zeile 4 ist ein Vergleichspaar mit/ohne Terrainanschluss | **bestätigt** — eigener Ausschnitt; von Agent B unabhängig erkannt |
| Figur 8: Fundament eingefärbt unterhalb der letzten Segmentgrenze | **bestätigt** — Run-65-Befund reproduziert, jetzt an zwei Fundamentfüssen |
| Figur 8: Dachüberstand beidseitig unkoloriert, Farbschnitt in der Wandflucht | **bestätigt** — Run 65 hatte einen Ausschnitt, hier beide Traufen |
| Figur 8: Massstrang reiche tiefer als die Farbfläche | **WIDERLEGT** — Gegenmessung, siehe 3.5 |
| Figur 7 Zeilen 1-3: Terrassen, freistehende Bauten, Vordach, unterirdischer Bau | **kein Befund** — Destillat führt die Regeln bereits (MP 7), als Bestätigung verbucht |
| Fundstelle S. 1-17 | **bestätigt falsch**, richtig S. 1-16 |
| Figur 11: blauer Deckenstreifen, oranger Dachkeil | **nicht übernommen** — Deutungen ohne Beschriftung, vom Hauptprozess nicht selbst geprüft (N66-1) |
| Figur 7: «sechs Detail-Skizzen» (Agent D, 150 dpi) | **nicht übernommen** — Hauptprozess liest vier Zeilen mit je mehreren Beispielen, an vier 600-dpi-Ausschnitten |

## 6. Eine Selbstkorrektur im Lauf

Die erste Fassung der Anlage führte zwei Figur-7-Beobachtungen als «bisher nicht im Destillat».
Die Prüfung nach Methodik-Pflicht 7 hat das widerlegt: beide Fälle sind vom Abschnitt
«Die Abgrenzungsregel AGF ↔ UF ↔ GF» (Run 65) und von der Ziff.-1.2-Regel im Begriffsteil bereits
abgedeckt. Die Notiz wurde in der Anlage ausdrücklich **zurückgezogen** und die Einträge auf
«Bestätigung, kein Befund» umgestellt. Ohne diesen Schritt hätte der Lauf zwei Scheinbefunde
gemeldet und die Ausbeute um ein Drittel zu hoch ausgewiesen.

## 7. Statusentscheid

**`speculative` bleibt.** Mit diesem Lauf sind auf diesem Destillat erstmals **alle vier**
Prüfrichtungen auf allen Teilen gelaufen — der Zustand, den Methodik-Pflicht 13 für eine Hebung
verlangt, ist erreicht und übertroffen. Dagegen steht ein konkreter, benennbarer Grund, kein
diffuses Unbehagen:

**N66-1** — in Figur 11 stehen zwei gemeldete Deutungen ungeprüft im Raum (blauer Streifen in der
Deckenzone als «Installationszone = FV», oranger Keil unter der Dachschräge). Beide Stellen sind
unbeschriftet, beide hat der Hauptprozess **nicht** selbst nachgelesen. Wäre die erste richtig,
hiesse das, dass eine Installationszone im Deckenaufbau als Funktionsvolumen zählt — eine
Aussage mit Folgen für jede NGV-Rechnung. Ein Destillat mit einer offenen Frage dieser Tragweite
wird nicht gehoben.

## 8. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Figur 11 im Detail** (N66-1) — der einzige Anhangteil, den dieser Lauf nur über Agentenaugen
   gesehen hat.
2. **Die Fundstellen-Richtung auf dem übrigen Bestand** — N63-2 ist gefahren, aber auf genau
   einem von über 300 Destillaten.
3. **Französischer und italienischer Normteil** weiterhin nur punktuell als Kontrolltext
   (Run 65), nicht systematisch.
4. **Die Nachträge dieses Laufs tragen selbst keine unabhängige Prüfrunde** — sie sind allerdings
   sämtlich vom Hauptprozess am Original abgelesen bzw. gemessen, was stärker ist als eine
   Agenten-Runde.
5. **Die übrigen 307 Kandidaten der N62-3-Liste** sind unverändert nur eine Metadaten-Messung;
   keiner wurde in diesem Lauf inhaltlich geöffnet.

## 9. Vorzulegen

**Nichts Neues.** Alle Änderungen dieses Laufs sind umkehrbare Arbeit am eigenen Wissensbestand
und fallen unter die Whitelist.

Ein möglicher methodischer Schluss wird **bewusst nicht vorgelegt**: dass Aussagen über
**Signaturen** (Farbe, Schraffur, Linienart) zu **messen** und nicht bloss zu betrachten wären,
analog zu Methodik-Pflicht 8 für Tabellen. Der Beleg ist dieser eine Fall. Nach der eigenen Regel
dieses Loops — so wurde MP 13 in Run 52 zurückgestellt und erst in Run 53/54 an einer Messanlage
belegt — ist ein Fall zu wenig für eine Pflicht. Der Punkt steht als Beobachtung in
`wiki/QUESTIONS.md` (N66-2) und wird erst vorgelegt, wenn ein zweiter unabhängiger Fall dazukommt.

Unverändert bei Raphael, **nicht erneut vorgelegt**: N65-1 (mit diesem Lauf faktisch eingelöst),
N65-2, N65-4, N63-2 für den übrigen Bestand, N63-3, die Reihenfolge der 308 Kandidaten, das
Statusvokabular und die Beschaffungs-Bring-Schulden.

## 10. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), und
zwar gegen den Commit-Stand **bei Laufbeginn** (`ec2f289cd`, 01:28) — siehe die Warnung unten.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `CHANGELOG.md` | 71 | **0** | Prepend sauber |
| `wiki/QUESTIONS.md` | 55 | **0** | Einschub nach der H1, append-only sauber |
| `training/norm-inventar.md` | 1 | **0** | append-only sauber |
| `destillate/INDEX.md` | 1 | 1 | genau die eine absichtlich ersetzte Zeile |
| `destillate/sia-416-2003.md` | 48 | 12 | **alle 12 einzeln nachgesehen und als gewollte Ersetzung belegt** (Frontmatter `gelesen`/`last_updated`, vier Zeilen der Figurentabelle, zwei Zeilen der Prüfstand-Tabelle, die Statuszeile, der Figur-7-Vorbehalt, die Figur-7-Zeile unter «Offene Punkte») |
| `training/n66-qa-anhang-anlage.md` | 331 | — | neu |

**Kein Bestandsverlust.** Gegenprobe an der Struktur: die Zahl der Überschriften im Destillat
geht von **13 auf 14** — eine neue Sektion (Figur 7), **keine entfernt**.

Zeilenzahlen nach dem Lauf, nachgemessen: Destillat 197 · Inventar 1593 · INDEX 495 ·
QUESTIONS 6463 · CHANGELOG 12927 · Anlage 331.

### ⚠ Eine Falle beim Messen selbst, die dieser Lauf aufgedeckt hat

Der erste Messversuch lief gegen **HEAD** und meldete für das Destillat `−7` statt `−12`. Die
Differenz war kein Fehler der Datei, sondern der Messung: **der native `nas-selfcommit`-Cron
committet alle 15 Minuten und verschiebt HEAD mitten im Lauf.** Ein `git diff --numstat` gegen
HEAD misst bei einem Lauf, der länger als eine Viertelstunde dauert, nur noch dessen **Schwanz**
— und sieht damit systematisch zu wenige Änderungen.

Rule 260811 verlangt, nach jedem Schreiben auf eine gewachsene Datei den Umfang zu messen. Für
einen langen Lauf ist die Bezugsgrösse deshalb **der Commit-Stand bei Laufbeginn**, nicht HEAD;
der Stand ist zu Beginn festzuhalten (`git log -1 --format=%h` nativ per ssh). Das ist keine
neue Pflicht, sondern die richtige Anwendung der bestehenden — aber es ist eine Falle, die still
zu einem beruhigend kleinen `−0` führt. Genau die Sorte Messfehler, vor der Rule 260807 warnt:
die Zahl war da, sie mass nur etwas anderes als angenommen.

Umlaute: Destillat und KB-Dateien in der Zielkonvention (echte ä/ö/ü); die Arbeitsanlage in
`training/` bewusst in ASCII-Schreibweise wie die übrigen Anlagen dieses Loops.
