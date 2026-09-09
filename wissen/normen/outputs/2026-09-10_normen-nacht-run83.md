# Normen-Nacht Run 83 — 10.09.2026, ab 01:28 CEST (MacBook Pro)

**Arbeitsgegenstand ist der Auftrag, den Run 82 selbst als «grösste offene Kante» ausgewiesen
hat: N82-2.** 33 von 95 SIA-Destillaten mit Grenzwerten liessen ihr `quelle:`-Feld nicht auf
eine Datei im Haus auflösen. Der Punkt wiegt schwerer, als er klingt: ein Destillat mit
unauffindbarer Quelle ist von **jeder** Retro-Verifikation strukturell ausgeschlossen.

**Ergebnis: die Kante ist geschlossen und war weit kleiner als gemeldet — vier echte tote
Pfade, alle repariert.** Der Weg dorthin hat vier eigene Werkzeugfehler gekostet, und der
Anschluss hat eine zweite Verfälschungs-Mechanik zutage gefördert, die Run 82 strukturell
nicht finden konnte.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| NAS gemountet | ja |
| Arbeitsdatum | `date` → 2026-09-10 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | funktioniert inhaltlich (`pdfinfo`, `pdftotext`, `pdftoppm`), kein M365-Fallback nötig |
| NAS-Repo bei Laufbeginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `3e8f38276` |
| Inventarstand | **0** offene `[ ]` im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **83**, nach Sicht der jüngsten `outputs/`-Datei (Run 82, 09.09.) |

**Stations-Split eingehalten:** nur SIA, VKF und die übrigen Herausgeber des PL-02-Kerns.
Keine DIN-, VSS- oder RAL-Position berührt oder abgehakt.

## 2. Das Ergebnis von N82-2

Scope: alle Destillate **ausser** DIN/VSS/RAL, ohne `INDEX.md` und `links.md` — **379**.

| Klasse | Anzahl |
|---|---|
| **notierter Pfad löst exakt auf** | **302** |
| externe Quelle (Web, shop.sia.ch, VKG-Portal, Suva-Cloud) | 69 |
| kein `quelle:`-Feld, dafür `sources:` mit Web-Beleg | 7 |
| zeigt auf ein existierendes Verzeichnis (`sia-1001-11-2018`) | 1 |
| **stille Rettung über den Basename** | **0** |

Die letzte Zeile ist die wichtigste: **kein Destillat hängt an einem toten Pfad**, der nur
zufällig über den Dateinamen rettbar wäre. Nach der Reparatur ist die Auflösung im Scope
lückenlos.

### Die vier echten Befunde — repariert

Alle vier betreffen VKF-Dokumente der 100er-Reihe, notiert unter
`02_Brandschutzrichtlinien 2015/`, tatsächlich unter `04_Erlaeuterungen Brandschutz 2015/`,
teils zusätzlich unter abweichendem Dateinamen (`101-15_Bauten mit Atrien und Innenhöfen.pdf`
→ real `101-15_Atrien u Innenhöfe.pdf`). Die Zielnamen wurden **aus dem Dateisystem gelesen,
nicht geraten**; jeder Edit erzwang per Assertion genau einen Anker-Treffer. Nach der
Reparatur wurde jeder der vier Pfade einzeln gegen das Dateisystem nachgemessen: 4/4 OK.

## 3. Vier eigene Werkzeugfehler — der eigentliche Ertrag über das Messen

Sie stehen hier, weil jeder eine wiederverwendbare Lehre ist und weil ohne sie die Zahl «33»
unverstanden bliebe.

1. **Der Pfad-Regex brach an Leerzeichen ab.** `[^\s]+\.pdf` schnitt
   `.../alle/xalt/neu/SIA 416_1_2007.pdf` auf `416_1_2007.pdf` zu — und erzeugte **120**
   vermeintlich nicht auflösbare Destillate mit Treffern wie `Bodenbeläge.pdf`,
   `Brüstungen.pdf`, `Tore.pdf`, allesamt abgeschnittene Pfad-Enden. Ein Ergebnis, das nach
   Sachbefund aussah und die Form des Werkzeugs trug.
2. **Die Bestandswurzel lag eine Ebene zu tief.** Indexiert war
   `PL - 02_Recht_Norm/02_Normen`, während `04_Merkblätter/` und `09_Sanitaereinrichtung/`
   **darüber** liegen. **587 von 1327 PDF waren nie im Index** — fast die Hälfte des Bestands.
   Sämtliche Merkblatt-Destillate mussten deshalb als «nicht im Haus» erscheinen.
3. **Relative `quelle:`-Felder wurden nicht gegen mehrere Wurzeln aufgelöst.** Die KB notiert
   in zwei gleichwertigen Formen, absolut und relativ zu `02_Normen/`.
4. **Ein non-greedy `.pdf`-Match stoppte zu früh.** `ugz-hindernisfreie-aufzuege-2010` notiert
   korrekt `UGZ_Hindernisfreie_Aufzuege.pdf .pdf` — die Datei heisst im Bestand wirklich so.
   Das Feld war richtig, der Parser falsch.

Die naheliegende Gegenhypothese wurde ausdrücklich geprüft und **verworfen**: es ist **kein**
Unicode-Normalisierungsproblem (NFC/NFD).

**Ob Run 82 denselben Fehler hatte, ist nicht feststellbar** — sein Code liegt nicht vor. Die
redliche Formulierung ist deshalb nicht «Run 82 hat falsch gemessen», sondern: die Kante ist
heute klein, und die Messung, die das zeigt, ist offengelegt und kalibriert.

## 4. Der Anschluss: eine zweite Verfälschungs-Mechanik (N82-3 teilweise beantwortet)

Run 82 hatte ausgewiesen: «Nur eine Verfälschungs-Mechanik ist gemessen — der Unterstrich.
Die Anlage findet, was sie sucht.» Die erweiterte Auflösung erlaubte den Sweep über die volle
Menge, und dort liegt eine zweite.

**In `162.051_A1_2004_d.pdf` ist «≤» als «d» und «≥» als «t» kodiert** — Symbol-Font-
Substitution, am 300-dpi-Rendering der S. 3 verifiziert:

| gedruckt | Textlayer liefert |
|---|---|
| Setzmass **≥** 10 mm und **≤** 210 mm | `t 10 mm und d 210 mm` |
| Setzzeitmass (Vébé) **≤** 30 s und > 5 s | `d 30 s und > 5 s` |
| Verdichtungsmass **≥** 1,04 und < 1,46 | `t 1,04 und < 1,46` |
| Ausbreitmass > 340 mm und **≤** 620 mm | `> 340 mm und d 620 mm` |

Echte «<» und «>» kommen im selben Absatz korrekt durch; die Substitution trifft nur ≤ und ≥.

**Warum sie schwerer wiegt als der Unterstrich:** sie hinterlässt **kein isoliertes «<»**. Die
Erfassungsstufe der Run-82-Anlage greift Wörter, die genau `&lt;`/`&gt;` sind — für diesen
Defekt ist sie blind, nicht aus Nachlässigkeit, sondern weil er diese Spur nicht legt.

**Das Destillat ist nicht betroffen.** `sia-162-051-a1-a2.md` führt die Werte korrekt
(«Setzmass ≥10/≤210»), und sein `gelesen:`-Feld nennt den Grund: die Seiten wurden als PNG
gerendert, «da pdftotext auf diesen Seiten wegen Zeichen…». Also wieder Methodik-Pflicht 10:
**nicht «Fehler gefunden», sondern «die KB hatte es richtig, neu ist der Nachweis der
Mechanik».**

**Reichweite gemessen, nicht geschätzt:** Detektor über **284 distinkte PDF**, 13 Treffer-
Dateien, nach Schärfung 4 Verdachtsfälle, davon 3 im Kontext als Falsch-Positive
ausgeschieden (Sprachvarianten-Spalten «d f i» im `ersetzte_normen.pdf`, «Volllaststunden
12.7 h/d» im Merkblatt 2024, ein OCR-Artefakt in SIA 382/2). **Genau ein echter Fall, korrekt
behandelt.**

Der Diskriminator, der die Messung erst brauchbar macht, ist billig: **kodiert eine Datei
irgendwo ein echtes ≤ oder ≥, ist die Substitution ausgeschlossen** — dann sind `d`/`t`
Bemessungsindizes (σ t,0,d), Blechdicken (≥ 1,5 t) oder Zeitpunkte (t 0).

## 5. Die Stichprobe am gewichtigsten Fall — und was sie an der eigenen Karte korrigiert

Aus der mechanik-unabhängigen Risikokarte (Ziff. 6) wurde der schwerste Fall geprüft: die
**VKF-Brandschutznorm 1-15**, Basis des Brandschutz-Skills, `status: established`, mit fünf
≤/≥-Stellen — darunter die Nebenbau-Definition (≤ 150 m²) und die Beherbergungsschwelle
(≥ 20 Personen). Ihr `gelesen:`-Feld sagte «Text-PDF vollständig extrahierbar», ihr Producer
ist **Word 2010** — genau der Typ C, bei dem «≤» als «<» plus Unterstrich gesetzt wird.

**Am Textlayer aufgeklärt, und es ist eine Entwarnung:** die Norm formuliert an diesen Stellen
**sprachlich statt symbolisch** — «dauernd oder vorübergehend **20 oder mehr** Personen»
(Art. 2 Ziff. 2a/2b), «wenn ihre Grundfläche **150 m2 nicht übersteigt**» (Ziff. 2e),
«**mehr als** 1'200 m2» (Ziff. 2b). Das Destillat übersetzt das korrekt in ≥20 und ≤ 150 m².
Die Datei kodiert kein ≤/≥, weil sie keines braucht.

**Das korrigiert die eigene Karte, und zwar sofort im selben Lauf:** «Quelle kodiert kein ≤/≥»
ist **nicht** gleichbedeutend mit «Wert unbelegt». Der Karte fehlt die dritte Klasse «Norm
formuliert sprachlich», und ohne diesen Vorbehalt produziert sie Korrektur-Aufträge gegen
richtige Destillate — der Fehlalarm-Typ aus Methodik-Pflicht 10. Der Vorbehalt steht jetzt in
der Karte und in N83-2.

Gesetzt wurde ein **Producer-Typ-Vermerk** im Destillat: das bisherige `gelesen:`-Feld war
nicht falsch, aber es gab einem Typ-C-PDF einen Vertrauensvorschuss ohne Typ-Angabe. Ein
späterer Lauf, der ihm folgt und den Textlayer für Grenzwerte benutzt, liefe in genau den
Defekt, den Run 81/82 an der BRL 15-15 belegt haben.

## 6. Die Risikokarte (N83-2)

> Welche Destillate führen ≤/≥-Werte, obwohl ihre Hausquelle diese Zeichen **gar nicht**
> kodiert? Dort **muss** der Wert am Rendering gelesen worden sein — oder er ist unbelegt.

Von 138 Destillaten mit ≤/≥-Werten und aufgelöster Hausquelle: **86 unkritisch**, **52 in
dieser Klasse** — 24 mit Quelle ganz ohne Textlayer (Typ A, dort war Rendering zwingend),
28 mit Textlayer ohne ≤/≥. Vollständige Tabelle in
`training/n83-quellenaufloesung-260910.md`. **Geprüft ist einer von 52.**

## 7. Der Nebenbefund, der ausdrücklich KEIN Sachbefund ist (N83-1)

Der falsche Ordner war ein Zeiger auf Grösseres: die VKF-100er-Reihe sind
**Brandschutzerläuterungen**, nicht Brandschutzrichtlinien — an drei Titelblättern geprüft,
dort steht durchgehend «BRANDSCHUTZERLÄUTERUNG». Die Gattungen unterscheiden sich in der
Verbindlichkeit, und **17 Destillate** tragen im Dateinamen das Präfix `vkf-brl-`.

Nach Methodik-Pflicht 7 geprüft, ob die KB die Aussage anderswo bereits führt: **sie führt sie
überall.** H1 «Brandschutzerläuterung», `ausgabe:`-Feld «VKF-Brandschutzerläuterung 100-15de»,
eine ausdrückliche «Anmerkung zum Titel» in `vkf-brl-100-15-brandmauern`, und `INDEX.md` wie
`REGISTER.md` führen die Reihe durchgehend als **«BSE»**. Falsch ist allein der Dateiname.

Die Korrektur wäre eine Umbenennung von 17 Dateien samt Verweisen und damit **destruktiv**
(Rule `wissens-bibliothekar`, Ziff. 4): **vorgelegt, nicht ausgeführt.**

**Damit ist Methodik-Pflicht 7 in diesem Lauf dreimal bestätigt** — VKF-Gattung,
Symbol-Substitution und Brandschutznorm-Grenzwerte waren je am Original richtig beobachtet und
je kein Befund, weil die KB sie bereits führte.

## 8. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die 52 Destillate der Risikokarte sind NICHT einzeln verifiziert.** Geprüft ist einer.
   Die Karte ist ein Zeiger auf zu prüfende Stellen, kein Befund über sie (N83-2).
2. **Der `d`/`t`-Detektor verlangt Einheit oder Dezimalkomma hinter der Zahl.** Eine
   Substitution vor einer nackten Tabellenzahl («d 50») fällt durch. Die gemessene Reichweite
   ist eine **untere Schranke**, kein Vollständigkeitsnachweis.
3. **Zwei Mechaniken sind gemessen, nicht alle.** Ein ≤ als Bild oder mit fehlendem Encoding
   legt weder ein isoliertes «<» noch ein «d». **N82-3 bleibt offen**, die Klasse ist nur um
   eine Mechanik kleiner.
4. **Die Refuter-Richtung ist nicht gelaufen.** Alle Befunde stammen vom Hauptprozess, ohne
   Subagenten. **Keine Statushebung** (Methodik-Pflicht 13).
5. **Die 69 externen Quellen sind nicht auf Erreichbarkeit geprüft** (verwandt mit N79-2).
6. **Die einzige P1-Position bleibt offen:** SIA 181:**2020** ist nicht im Haus (im Bestand
   liegen 181:2006 und 181:1988). Beschaffungssache, wie in Run 82 festgestellt.
7. **N81-1** (rein grafische Änderung auf den Textseiten der BRL 15-15) ist nicht angefasst.
8. **Der DIN/VSS/RAL-Bestand ist nicht berührt** (Stations-Split).

## 9. Vorgelegt

**Neu N83-1:** ob die 17 Dateinamen der VKF-100er-Reihe von `vkf-brl-` auf `vkf-bse-`
umbenannt werden sollen. Inhaltlich führt die KB die Gattung überall richtig; die Umbenennung
ist destruktiv und deshalb Raphaels Entscheid.

**Neu N83-2:** die Risikokarte mit 52 Destillaten — als Arbeitsvorrat, nicht als Befund, mit
dem ausdrücklichen Vorbehalt aus Ziff. 5.

**Aus Run 82 unverändert offen:** N82-1 (Producer-Check als verbindlicher Erstschritt — Claude
setzt keine Methodik-Pflicht selbst) und die aus Run 81 vorgeschlagene **Methodik-Pflicht 14**
(N81-3).

**Unverändert bei Raphael und nicht erneut vorgelegt:** N79-2, N78-1, N77-2, N77-3, N65-2,
N65-4, N63-2, N63-3, die Reihenfolge der N62-3-Kandidaten, das Statusvokabular und die
Beschaffungs-Bring-Schulden.

## 10. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`3e8f38276`) — der 15-Minuten-Selfcommitter hat während
des Laufs bereits Teile committet (HEAD zwischenzeitlich `e6d4454e0`), gegen HEAD zu messen
wäre also falsch.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `wiki/QUESTIONS.md` | 57 | **1** | eine Zeilenersetzung, siehe Gegenprobe |
| `CHANGELOG.md` | 39 | **0** | rein additiv, neuester Eintrag zuoberst |
| `destillate/vkf-brandschutznorm-2015.md` | 2 | 2 | Zeilenersetzungen: `gelesen:` (Typ-C-Vermerk) und `last_updated` |
| `destillate/vkf-brl-100-15-brandmauern.md` | 1 | 1 | `quelle:`-Pfad korrigiert |
| `destillate/vkf-brl-100-15-fassung-2017-delta.md` | 1 | 1 | dito |
| `destillate/vkf-brl-101-15-fassung-2017-delta.md` | 1 | 1 | dito |
| `destillate/vkf-brl-102-15-fassung-2017-delta.md` | 1 | 1 | dito |
| `training/n83-quellenaufloesung-260910.md` | neu | — | Auflösungs- und Risikokarte |
| `outputs/…run83.md` | neu | — | dieser Report |

**Kein Bestandsverlust.** Drei Gegenproben, alle nach den Edits gefahren:

(a) **Die einzige gelöschte Zeile im Wortlaut nachgesehen** — es ist die alte N82-2-Überschrift
`### N82-2 — 33 SIA-Destillate mit Grenzwerten liessen ihre Quelle nicht auflösen`. Sie ist
durch eine erweiterte Fassung ersetzt (durchgestrichen, mit Erledigt-Vermerk), und der
**ursprüngliche Wortlaut des Abschnitts steht unverändert darunter**, unter der Zeile «Der
ursprüngliche Wortlaut, zur Nachvollziehbarkeit» (Zeile 108 ff.) — nachgeprüft.

(b) **Jeder der vier reparierten Pfade einzeln gegen das Dateisystem gemessen:** 4/4 lösen auf.
Vor der Reparatur: 0/4.

(c) **Die Edits waren durchweg anker-basiert**, je mit einer Assertion auf genau einen Treffer
(sonst Abbruch). Kein globales Suchen-und-Ersetzen (Rule 260811). Ein Anker, der nicht eindeutig
gewesen wäre, hätte den Edit übersprungen und das gemeldet.

**Umlaute:** die in diesem Lauf geschriebenen Passagen tragen echte ä/ö/ü (Rule
`umlaute-konvention`). Verbleibende «ue»/«ae»-Schreibungen stehen in zitierten Altbestand-
Feldern und in Frontmatter-Feldnamen, die ASCII bleiben müssen.
