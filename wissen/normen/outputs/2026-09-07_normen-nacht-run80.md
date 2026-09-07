# Normen-Nacht Run 80 — 07.09.2026, ab 07:55 CEST (MacBook Pro)

**Der Arbeitsgegenstand ist der, den Run 79 selbst als offen ausgewiesen hat.** Dessen Ziffer 7
nannte an zweiter und dritter Stelle zwei Teile derselben Quelle: die Ersatzmassnahmen-Matrix
auf S. 23, «als Bestand erfasst, aber bewusst nicht nachgezeichnet», und die Tabellen 2 und 3,
die «nur der Agent gelesen» hatte. Beide sind hier nachgemessen. Dazu kam ungeplant eine dritte
Prüfrichtung, weil die Änderungsliste der Richtlinie genau die Seiten nennt, um die es ging.

**Ergebnis: 6 Kernlücken, 0 falsche Werte, eine berichtigte Delta-Aussage, ein geschlossener
Auftrag — und ein Scheinbefund, den die Gegenprobe rechtzeitig abgefangen hat.**

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| NAS gemountet | **zu Laufbeginn nicht** — der SessionStart-Wächter hat es gemeldet. Über `scripts/ensure-nas-mounted.sh` aus dem SSD-Klon behoben (Tailscale erreichbar, LAN nicht — mobile Station) |
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-09-07 |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | funktioniert **inhaltlich** (`pdfinfo`, `pdftotext`, `pdftoppm` auf der Zieldatei), kein M365-Fallback nötig |
| NAS-Repo vor Beginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `a387966b5` (08:03) |
| Inventarstand | 0 offene `[ ]` im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **80**, nach Sicht der jüngsten `outputs`-Datei (Run 79, 04.09.). Am 05. und 06.09. lief kein Normen-Lauf |

**Stations-Split eingehalten:** nur VKF. Keine DIN-, VSS- oder RAL-Position berührt oder abgehakt.

**Methodik-Pflicht 1 eingehalten:** Quelle aus **PL-03**, MD5 `6dcc54f34a2d…` gegen die
Fassungsmatrix `n58-vkf-fassungsmatrix-260820.md` verifiziert, Fassung **01.01.2017**, 35 Seiten.

**Seitenversatz 0**, an den Fusszeilen der Seiten 11, 12, 13, 22 und 23 abgelesen und vom
Refuter unabhängig bestätigt.

## 2. Die Ersatzmassnahmen-Matrix (S. 23) — der offene Auftrag ist geschlossen

Run 79 hatte sie bewusst nicht wiedergegeben, mit der richtigen Begründung: nach
Methodik-Pflicht 8 ist eine halbrichtig abgeschriebene Normtabelle ein Planungsfehler mit
Quellenschein, und die Methode war dort nicht gelaufen. Sie ist jetzt gelaufen.

**Warum die Seite ein Sonderfall ist:** sie trägt ausser Kopf- und Fusszeile **keinen
Textlayer**. Matrix, sechs Konstruktionsschnitte und Schichtenlegende sind vollständig Grafik.
Eine Textextraktion hätte hier nicht bloss ungenau gearbeitet, sie hätte **nichts** geliefert.

**Verfahren, zweifach unabhängig.** Der Hauptprozess hat die Symbole rechnerisch aufgenommen
(300 dpi, Präfix `brl1515-r80-`, grüne und rote Pixel maskiert, zu Zusammenhangskomponenten
geclustert, Schwerpunkte nach Zeile und Spalte zugeordnet). Ein unabhängiger Refuter hat mit
eigenem Rendering (200 und 450 dpi, eigenes Präfix), eigenen Farbschwellen und einem **anderen
Weg zum Raster** — Schwarzanteil je Spalte und Zeile statt Symbolgruppierung — dieselbe Messung
wiederholt. **Übereinstimmung in allen 18 Zellen.** Die Zellwerte, die Messwerte beider Läufe
und der Rechenweg stehen in der Anlage `training/n80-matrix-ersatzmassnahmen-260907.md`.

**Das Ergebnis, in einem Satz für die Praxis:** unter 2 m Gebäudeabstand bleiben von sechs
Ausführungsvarianten nur noch **zwei** — beidseitig Variante D (Wand EI 60 bzw. Feuerwiderstand
wie der Brandabschnitt, Brandschutzplatte 30 Minuten RF1, Öffnungen als Fenster/Türen EI 30)
oder einseitig Variante F. Und **F unterscheidet sich von E allein dadurch, dass die
feuerwiderstandsfähige Seite keine Öffnung hat**; der Refuter hat das über Scanlinien durch
alle drei Schichten belegt. Das ist keine Detailfrage der Ausführung, sondern eine
Entwurfsvorgabe: sie entscheidet über die Fensterlagen an der zugewandten Fassade.

**Drei Punkte, die nur die Lektüre liefert und die Messung nicht:**
- Der **Öffnungsversatz** ist in den Varianten A, B und D ebenfalls gezeichnet, aber **nur in C
  bemasst** («≥ 1 m», zweimal). Wer ihn anderswo als Anforderung liest, verschärft die
  Richtlinie ohne Grundlage. Der Refuter hat die Versätze in A, B und D pixelweise gemessen und
  gezeigt, dass sie unbemasst sind — ein Befund der Abdeckungsrichtung, den keine der
  vorgelegten Behauptungen enthielt.
- Die Schichtenlegende hat **sieben** Zeilen, nicht sechs: die erste, unnummerierte definiert
  x als Brandschutzabstand nach Ziff. 2.2.
- **Der Stern bindet nur an die Schichten 3, 5 und 6.** Erst er trägt die Regel, dass bei einer
  RF1-Wand die zusätzliche Brandschutzplatte entfällt. Die Wiedergabe ohne den Stern verliert
  die Zuordnung — der Refuter hat das an meiner eigenen Formulierung beanstandet, zu Recht.

## 3. Tabellen 2 und 3, zellenweise vom Hauptprozess — 6 Kernlücken, 0 falsche Werte

Alle Werte, die das Destillat für die drei Tabellen führte, sind am 300-dpi-Rendering
**bestätigt**. Was fehlte, sind Zeilen und Fussnoten.

**Der Fund mit der grössten Reichweite steht in Tabelle 1** — also in der Tabelle, die Run 79
bereits nachgemessen hatte. Die **Löschanlagen-Zeile der ersten Nutzungsgruppe** fehlte ganz,
und sie ist der einzige Sonderfall der ganzen Richtlinie: Tragwerk **«k. A.»** (keine
Anforderung) und in der Folge brandabschnittsbildende Geschossdecke **EI 30 statt REI 30** —
die einzige Stelle, an der die Geschossdecke ohne R-Anteil gefordert ist. Wer aus der baulichen
Zeile ableitet, bemisst eine Stufe zu streng; wer die Zeile nicht kennt, findet den Fall nicht.

**Vier Befunde betreffen allein Hochhäuser** (Tabelle 3), alle vom Hauptprozess am eigenen
300-dpi-Rendering nachgemessen und vom Refuter unabhängig gefunden:
1. **[a] und [b] sind wertidentisch.** Die von Run 79 formulierte Faustregel «Krankenhäuser und
   Pflegeheime tragen die strengere Zeile» gilt für die Tabellen 1 und 2 — und dort nur in der
   Zeile «baulich», weil im Löschanlagen-Konzept beide Gruppen ohnehin EI 30 tragen. **Inline
   korrigiert** (Methodik-Pflicht 9), nicht bloss angehängt.
2. **Die Kategorie [c]** (abgelegene Beherbergungsbetriebe) **kommt in Tabelle 3 nicht vor.**
3. **«Landwirtschaft» fehlt in Tabelle 3** — in den Tabellen 1 und 2 letzter Eintrag der
   Gruppe 1.
4. **Zwei Erleichterungen entfallen bei Hochhäusern:** «Parking» trägt keine Fussnote (die
   25-%-Öffnungsregel gibt es dort nicht), und die Zelle EI 90 trägt kein [2] (keine Reduktion
   brandabschnittsbildender Wände im obersten Geschoss).

Dazu **Fussnote [9]**, die nie geführt war (eingeschossige Hochhausbauten wie Hochregallager und
Hallen: keine Tragwerksanforderung), und die **Mechanik der Fussnoten**, die erst am Bild
sichtbar wird: [1] hängt am **Spaltenkopf** und gilt für die ganze Spalte, [7] an der
**Kategoriezelle** und damit für die ganze Tabelle 2, [5] dagegen **zellgenau** — und dort
**nie** in der Spalte «Fluchtweg vertikal» und **nie** bei Beherbergung [a]. Praxisfolge: die
2'400-m²-Reduktion greift weder beim vertikalen Fluchtweg noch bei Krankenhäusern und
Pflegeheimen. Das war im Destillat nirgends eingegrenzt.

## 4. Eine dritte Prüfrichtung, ungeplant — und sie hat eine Aussage des Bestands berichtigt

Die Änderungsliste auf S. 2 der Fassung 2017 nennt für den Anhang ausdrücklich die Seiten
**22-23**. Genau dort arbeitete dieser Lauf. Das Destillat führte dazu seit der
Retro-Verifikation von Run 7 den Satz, die Änderung sei «inhaltlich unverändert» und beschränke
sich «auf den Beschluss-Vermerk bzw. reine Layout-Konsistenz».

Diese Aussage stammte aus einem **Volltextvergleich** — auf einer Seite, die gar keinen
Volltext hat. Der Bildvergleich beider Fassungen (Methodik-Pflicht 4, beide bei 300 dpi
gerendert, pixelweise gediffed) liefert **genau drei Differenzbänder**: Kopf- und Fusszeile als
Rendering-Artefakt zweier verschiedener PDF-Erzeuger (visuell zeichengleich, kein reiner
Versatz rekonstruierbar) und **die zweite Zeile der Fussnote [1]**.

**Zweierlei folgt daraus, und beides gehört getrennt protokolliert:**
- **Der Bestand behält recht, wo es zählt, und weiss es jetzt.** Alle 18 Matrixzellen, alle
  sechs Variantenzeichnungen und die ganze Schichtenlegende sind zwischen 2015 und 2017
  unverändert. Das war bisher behauptet und ist jetzt gemessen.
- **Die Begründung war falsch.** Geändert hat sich der Wortlaut an vier Stellen: dreimal
  «Aussenwand/Aussenwände» → «Aussenwandkonstruktion(en)» und einmal die Vertauschung «Bei
  Bedachungen: für die Dachkonstruktion gelten …» → «Bei Dachkonstruktionen: für die Bedachung
  gelten …». **Auch diese Vertauschung ist keine geänderte Anforderung**, sondern die
  Nachführung auf die 2016 umbenannten Kapiteltitel der BRL «Verwendung von Baustoffen». Der
  Beleg dafür lag seit Run 23/24 im Schwester-Destillat — die beiden Hälften waren nie
  verbunden. Nach Methodik-Pflicht 10 lautet die richtige Formulierung deshalb nicht «die KB
  hatte es falsch», sondern: die KB hatte das Ergebnis, aber nicht den Weg dorthin.

## 5. Methodik-Pflicht 7 hat einen Scheinbefund abgefangen

Beim Nachlesen der Tabellen fiel auf, dass die Marker [a], [b] und [c] auf allen drei
Tabellenseiten **verwendet, aber nirgends definiert** werden. Das sah nach einer Lücke aus, und
zwar nach einer folgenreichen: an der Zuordnung hängt, ob ein Pflegeheim in die strengere Zeile
fällt. Die Gegenprobe gegen den **ganzen Bestand** — nicht gegen die Stelle — zeigte, dass die
Definition seit Langem in der KB steht, in `vkf-brl-10-15-begriffe-definitionen`, mitsamt einer
Bedingung, die BRL 15-15 nirgends nennt: **alle drei Kategorien setzen mindestens 20 Personen
voraus.**

Der Ertrag ist also real, aber es ist ein anderer als der vermutete: nicht «die KB kennt die
Definition nicht», sondern «die zitierende Datei fand sie nicht». Verlinkt, mit einem eigenen
Abschnitt aufgenommen — und **nicht** als Lücke verbucht. Der Fassungsvorbehalt bleibt: die
Definition stammt aus der Bestandsfassung 01.01.2015, die als `superseded` geführt wird
(N80-3).

## 6. Verdikte der beiden Refuter

**Refuter A (Matrix, S. 22-23):** 15 Behauptungen — **14 bestätigt, 1 eingeschränkt, 0
widerlegt.** Die Einschränkung betraf meine Wiedergabe der Schichtenlegende: sie hat sieben
Zeilen statt sechs, und der Stern bindet nur an 3, 5 und 6. Beides übernommen. Zusätzlich vier
Beobachtungen der Abdeckungsrichtung, darunter die unbemassten Öffnungsversätze in A, B und D.

**Refuter B (Tabellen, S. 11-13):** 15 Behauptungen — **11 bestätigt, 3 eingeschränkt, 1
widerlegt.** Die Widerlegung ist berechtigt und betrifft eine Behauptung dieses Laufs, nicht
den Bestand: ich hatte formuliert, [5] hänge «ausschliesslich» an Zellen der Spalten Tragwerk,
Geschossdecken und Wände. Tatsächlich hängt ein achtes Vorkommen an der **Nutzungszelle**
«Abgelegene Beherbergungsbetriebe[c][5]». Der tragende Teil der Aussage — kein [5] in der
Spalte «Fluchtweg vertikal», keines in Gruppe 3 — bleibt bestehen und ist so ins Destillat
übernommen.

**Der Hauptprozess hat die beiden gewichtigsten Neubefunde des Refuters selbst nachgemessen**
(fehlende «Landwirtschaft» und fehlendes [2] an EI 90 in Tabelle 3, beide 300-dpi-Ausschnitt) —
Abwesenheitsbehauptungen sind der Ort, an dem ein Agentenbefund am ehesten trägt und am
ehesten täuscht. Beide bestätigt.

## 7. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die Refuter-Richtung auf den Nachträgen der Runs 79 und 80.** Alles Ergänzte stammt aus
   der Abdeckungs- bzw. Messrichtung. Deshalb **keine Hebung auf `established`**, obwohl in
   zwei Läufen kein einziger falscher Wert gefunden wurde (N80-2).
2. **Der Bildvergleich lief auf zwei von fünf Anhangseiten**, die die Änderungsliste nennt.
   Für **S. 27 und S. 34** stützt sich der Delta-Abschnitt weiterhin allein auf den
   Volltextvergleich von Run 7 — dieselbe strukturelle Blindheit, die dieser Lauf auf S. 22-23
   gerade belegt hat. Das ist der naheliegendste nächste Lauf auf dieser Quelle, und er ist
   billig, weil das Verfahren protokolliert ist (N80-1).
3. **Die 20-Personen-Schwelle steht auf einer `superseded`-Fassung** der BRL 10-15 (N80-3).
4. **Nicht gemessen: ob die Farbklassierung eine verfälschte Zelle zurückweisen würde.** Beide
   Läufe kamen unabhängig zum selben Ergebnis, was die Zuverlässigkeit stützt, aber nicht die
   Spezifität misst. Es ist dieselbe Gegenprobe, die Run 50 vorgeschlagen und Run 79 unter
   Ziff. 7.7 erneut offen gelassen hat.
5. **Die 305 übrigen Kandidaten der N62-3-Liste** bleiben eine Metadaten-Messung. Dieser Lauf
   hat kein neues Destillat aus der Liste angefasst, sondern eines vertieft.
6. **N79-2 (Verlinkungs-Sweep über 26 Destillate mit totem TKB-VKF-Zeiger)** liegt weiterhin bei
   Raphael und wurde **nicht** gefahren.

## 8. Vorgelegt

Nichts Neues. Unverändert bei Raphael und **nicht erneut vorgelegt**: N79-2, N78-1
(Sprachdiff als Voraussetzung für `established`), N77-2, N77-3, N65-2, N65-4, N63-2 für den
übrigen Bestand, N63-3, die Reihenfolge der N62-3-Kandidaten, das Statusvokabular und die
Beschaffungs-Bring-Schulden.

## 9. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`a387966b5`, 08:03) — nicht gegen HEAD, weil der
15-Minuten-Selfcommitter mitten im Lauf Teile der Arbeit committen kann.

Alle Änderungen an gewachsenen, geteilten Dateien sind **anker-basiert** vorgenommen worden
(genau ein Treffer je Anker, per Assertion erzwungen); `wiki/QUESTIONS.md`, `CHANGELOG.md` und
`training/norm-inventar.md` wurden rein additiv geschrieben. Kein globales Suchen-und-Ersetzen
über einen ganzen Dateiinhalt — die Lehre aus dem Regelverstoss von Run 79.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `destillate/vkf-brl-15-15-brandschutzabstaende-tragwerke.md` | 97 | 13 | **alle 13 einzeln im Diff nachgesehen**: 4 Frontmatter-Zeilen (`gelesen`, `status`, `last_updated`, `links`) und 9 Inhaltszeilen, jede durch eine erweiterte Fassung ersetzt — die Delta-Aussage zum Anhang, die Kernziffer 2.4, die [a]/[b]-Zeile, der Matrix-Absatz, zwei Zeilen «Offene Punkte», zwei Prüfstand-Zeilen und «Was ungeprüft bleibt» |
| `CHANGELOG.md` | 46 | **0** | rein additiv |
| `wiki/QUESTIONS.md` | 37 | **0** | Einschub nach der H1, append-only sauber |
| `training/n80-matrix-ersatzmassnahmen-260907.md` | 143 | — | neu, die Messanlage |
| `training/norm-inventar.md` | 2 | **0** | append-only sauber |
| `destillate/INDEX.md` | 1 | 1 | genau die eine absichtlich ersetzte Zeile |
| `outputs/…run80.md` | neu | — | dieser Report |

**Kein Bestandsverlust.** Zwei Gegenproben: (a) die Zahl der Überschriften im Destillat steigt
von **17 auf 18**, die Zeilenzahl von **178 auf 262** — nur Zuwachs, keine entfernte Sektion.
(b) Neun Kernformulierungen früherer Läufe wurden nach den Edits einzeln gegengesucht und sind
alle noch vorhanden («Ersatzmassnahmen», «Nebenbauten», «Brandmauer», «9'600», «Retro-Verifikation»,
«3.1.2 Abs. 3», «Brüstung als Schutzstreifen», «35 m», «Mineralwolle»).

**Umlaute:** die in diesem Lauf geschriebenen Passagen tragen echte ä/ö/ü (Rule
`umlaute-konvention`). Eine einzelne ae-Schreibung aus Run 79 («Nebenluecken») wurde
mitkorrigiert, weil sie in einer Zeile stand, die dieser Lauf ohnehin am Anker ausgetauscht
hat — kein Durchgang über fremde Zeilen. Verbleibende ae/oe/ue-Vorkommen stammen aus dem
Altbestand der Datei und aus Dateinamen-Referenzen, die ASCII bleiben müssen.
