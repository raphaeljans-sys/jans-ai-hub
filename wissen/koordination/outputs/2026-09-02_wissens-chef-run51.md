---
titel: Wissens-Chef Run 51 — die Erstprüfung von 411 unsichtbar gewesenen Artikeln, und warum sie dünn ausfiel
datum: 2026-09-02
lauf: 51
zuschnitt: 6 Melder (model sonnet) + 7 adversariale Verifikatoren + Hauptkontext-Nachmessung
---

# Wissens-Chef Run 51 (02.09.2026)

**Zuschnitt:** 13 Agenten, 2'367'358 Token, 182 Werkzeugaufrufe, 8,3 Min, **0 Fehler**.
Delta-Basis: Run 50 vom 01.09.2026.

**Bilanz: 0 bestätigt · 7 widerlegt · 1 Nullbefund · 2 in präzisierter Form gesetzt ·
1 Übergabe aus Lauf 50 selbst geschlossen.**

---

## 1. Die Lage, die diesen Lauf besonders macht

Lauf 50 hatte gemessen, dass **387 Dateien auf `github/main` im kanonischen NAS-Arbeitsbaum
fehlten**, davon der grösste Teil in `architektur-fachwissen`, und die Folge benannt: die
Aufsichtsläufe massen auf einem unvollständigen Bestand, ohne es zu merken. Die Divergenz ist am
**02.09.2026 um 16:2x durch Raphael aufgelöst** worden (Merge `a6fb7e3bd`, Einzelfreigabe, Werkzeug
`scripts/sync-merge-reparatur-260902.sh`). Eigene Nachmessung nativ per ssh zu Beginn dieses Laufs:
**Divergenz 0/0, Arbeitsbaum sauber, afw-Wiki 482 Artikel** (vorher 71 committet plus 28 lose im
Arbeitsbaum, was die von Lauf 50 gemessenen 99 erklärt).

Lauf 50 hatte die Übergabe formuliert: *«die nachträglich sichtbaren afw-Artikel sind ungeprüftes
Delta — der nächste Lauf sollte sie als Zuwachs behandeln, nicht als Bestand.»* Genau das ist der
Zuschnitt dieses Laufs. Die Zahl ist inzwischen **411** statt 356 (Diff `1eed7118c..a6fb7e3bd`,
Datei für Datei gezählt); der Rest entstand zwischen Lauf 50 und dem Merge.

**Betroffen war nicht nur afw.** Der Merge lieferte auch 14 Dateien in `energie`, 9 in `twin`, 8 in
`baurecht`, 5 in `normen` nach — und **8 in `koordination` selbst**, darunter die Laufberichte der
Runs 47, 48, 49 und 50. Die Aufsichtsinstanz hat also über vier Tage ein Register geführt, dessen
eigene Belegdateien im kanonischen Baum fehlten. Das ist kein neuer Vorwurf an Lauf 50 — er hat die
Divergenz gefunden und gemeldet — wohl aber die Vervollständigung ihres Umfangs.

---

## 2. Warum die Ausbeute dünn ist: eine Zahl, die man vorher hätte messen können

Kein einziger der sechs Melder-Befunde überstand die adversariale Stufe unverändert. Das ist bei
diesem Loop kein Ausnahmefall (Run 48: gleiches Ergebnis), aber diesmal lässt sich der Grund
**beziffern**:

| Messung an allen 411 Artikeln | Ergebnis |
|---|---|
| Frontmatter, `status`, `sources` vollständig | **411 von 411**, 0 Ausreisser |
| `status: established` | **0** |
| `status: emerging` (belegt) | 229 |
| `status: speculative` (unbelegt) | 182 |

Nach Rule `normen-referenz` Ziff. 1b ist ein `speculative`-Artikel eine **Warnkarte, keine
Zitierquelle**; `established` heisst «mehrfach belegt/bewährt» (`wissen/WISSEN-CLAUDE.md` Z. 58-59).
Der gesamte nachgelieferte Bestand ist damit **belegter Arbeitsstand, keine Auskunftsbasis**.

Daraus folgt für die Bewertung jedes einzelnen Befundes: ein Widerspruch zwischen einem
`speculative`-afw-Artikel und einem gepflegten Destillat der Gegenseite ist **keine Kollision auf
Augenhöhe**. Die führende Seite steht in jedem der geprüften Fälle bereits in der Führungs-Matrix
(Z. 176: afw führt keine Kennwerte, keine BKP-Codes, keine Norm-Fundstellen). Vier der sieben
Verifikate stützen sich genau darauf.

**Merksatz für künftige Läufe:** vor der Kollisionsbewertung die Statusverteilung der Zielmenge
messen. Sie sagt vorher, wie viel Gewicht ein Befund überhaupt tragen kann — und hätte den Zuschnitt
dieses Laufs von «Widersprüche suchen» nach «Verweiskanten prüfen» verschoben.

---

## 3. Gesetzt: zwei Präzisierungen, beide gegen den gemeldeten Vorwurf

### 3.1 «Baunebenkosten» ist gleichnamig in zwei verschiedenen Klassifikationen

**Gemeldet (Schwere hoch):** der Artikel `baunebenkosten-anlagewert-anlagekosten-definitionen.md`
ordne Architektenhonorare der BKP-Hauptgruppe 5 zu.

**Widerlegt.** Der Artikel nennt keinen einzigen BKP-Code und führt BKP 5 über den verlinkten
Schwesterartikel sogar ausdrücklich als «0 % honorarberechtigt, keine Planungsleistung des
Architekten». Der Melder hat zwei getrennte Textstellen übereinandergelegt und die Fehlzuordnung
damit selbst erzeugt.

**Was bleibt, ist am Original nachgemessen und real:** der Satz «deckt sich mit der Logik von BKP 5»
trägt nicht in voller Breite. «Baunebenkosten» in der **Bewertungslogik** (Anlagewert = Bodenwert +
Bauwert + Baunebenkosten) ist etwas anderes als die **BKP-2017-Hauptgruppe 5**. Diese führt
Wettbewerbskosten (50), Bewilligungen und Gebühren (51), Dokumentation und Präsentation (52) —
`references/bkp-2017/BKP-2017-Liste.md` Z. 879-905. **Architektenhonorare sind BKP 291**, Hauptgruppe 2,
Untergruppe 29 (Z. 592). Von den sieben Beispielen des Artikels liegen nur Bauzeitzinsen,
Versicherungsprämien und Spesen in Gruppe 5; Gartenarbeiten gehören zu BKP 4, Kanalisationsarbeiten
zum Bauwerk (nur die Anschlussgebühr ist 512.0).

**Praktische Folge:** bei einem Abgleich Realwertschätzung ↔ BKP-Kostenvoranschlag dürfen die beiden
gleichnamigen Grössen nicht gegeneinander verrechnet werden — sonst werden die Architektenhonorare
doppelt gezählt oder fallen weg. Präzisierung gesetzt (+17/−0).

**Übertragbar:** der Abgrenzungsvermerk stand ausschliesslich im verlinkten Schwesterartikel. Das ist
derselbe Fall wie Lauf 50, Abschnitt 7 — **ein Warnblock, der nur nebenan steht, wirkt nicht**, weil
Backlinks nicht zwingend verfolgt werden. Die Lehre ist damit zum zweiten Mal unabhängig belegt.

### 3.2 «SIA 416/2002» ist keine Norm-Ausgabe

**Gemeldet (Schwere mittel):** der Artikel `sia416-sia116-volumenvergleich-kostenkennwert-
uebungsbeispiel.md` führe eine falsche geltende Norm-Ausgabe.

**Widerlegt.** Die Bezeichnung stammt wörtlich aus dem Quelldokument (Beschriebe.doc, 27.06.2007),
der Artikel gibt sie quellentreu wieder, trägt `status: speculative`, einen Belegvorbehalt und die
ausdrückliche Praxisregel, vor Verwendung an einer aktuellen Quelle gegenzuprüfen. Er behauptet
nirgends, das sei die geltende Ausgabe.

**Was bleibt:** die Zeichenfolge «SIA 416/2002» kann bei einer Stichwortsuche als Ausgabenangabe
gelesen werden, und diese Ausgabe existiert nicht. Einschlägig ist **SIA 416:2003**, die SIA 416:1993
**und** SIA 116:1952 ersetzt (`wissen/normen/destillate/sia-416-2003.md`, Frontmatter aus dem
Normteil selbst). Ausgaben-Vermerk gesetzt (+12/−0), Text und Rechenweg unverändert.

---

## 4. Selbst geschlossen: die zweite Übergabe aus Lauf 50

Lauf 50 hatte korrigiert, dass Innendämmung die Aussenwandecke «zuverlässig über die
Mindestwärmeschutz-Grenze» hebe (Bauherren-Zusicherung mit Schadenpotenzial), und die Vermutung
weiterer Fundstellen übergeben. **Die Vermutung trifft zu:** derselbe Satz steht wörtlich in
`wissen/energie/destillate/innendaemmung-altbau-bauphysik-ch.md` (Abschnitt Run 76/79).

Er ist für 40 mm **belegt falsch**. Die vollständige Staffelung derselben Primärquelle
(`destillate/bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013.md`, Abschnitt 3.5, Detail
3.6-1-250, Backsteinmauerwerk 250 mm):

| Dämmstärke | fRsi |
|---|---|
| Bestand | 0,37 |
| 40 mm | **0,61–0,63** (unter 0,75) |
| 80 mm | 0,75–0,80 (an der Grenze) |
| 120 mm | 0,80–0,84 |
| 140 mm | 0,82–0,85 |

⚠-Berichtigung additiv gesetzt (+15/−0), mit beiden Fassungsvorbehalten: die 0,75 ist Stand
**SIA 180:1999**; nach **SIA 180:2014 Ziff. 6.2.2.1** gilt für konstruktive Wärmebrücken der
standortabhängige Anhang-F-Wert (ungünstigster CH-Wert 0,80/0,83), und die Katalogwerte rechnen mit
R_si = 0,35 statt der nach Ziff. 6.2.3.6 verlangten 0,25. Der Bestandsbefund 0,37–0,48 bleibt richtig.

---

## 5. Ohne Aktion: fünf Befunde, mit Begründung

| Achse | Befund | Warum keine Aktion |
|---|---|---|
| Kennwerte | Flächenkennwert-Prüfraster ohne Verweis auf `immobilienbewertung` | Matrix Z. 27 führt Entwurfs-Kennwerte bei `entwurfs-referenzen`, Z. 176 nennt als afw-Verweisziel nur «Ausbaustandard CHF/m²» — einen Kostenkennwert, den der Artikel gar nicht führt. Kein Führungskonflikt |
| baurecht | Bringschuld aus `digesta-43` nicht in `baurecht` angekommen | Es ist ein Selbstvorbehalt eines `emerging`-Artikels, keine formalisierte Cross-KB-Übergabe im Sinne von Rule `wissens-bibliothekar` — die verlangt eine Übergabe-Formulierung in einer QUESTIONS.md |
| baurecht | «deckungsgleich mit heutigem Nachbarrecht» überzogen | Der Artikel behauptet nur die Deckung der **Konfliktthemen**, nicht der Rechtsfolgen. Diese Themendeckung trifft zu (ZGB Art. 670, 679, 684, 685, 689, 694) und wird von der baurecht-Fundstelle gestützt |
| energie | Amplitudendämpfungs-Beleg fehlt in `energie/innendaemmung.md` | Zwei **verschiedene** Kenngrössen (C_dyn gegenüber ν_H); der afw-Artikel ist `speculative` und damit keine Zitierquelle. Ein Verweis aus einem gepflegten Artikel dorthin würde die Zitierkette schwächen. Als offener Punkt geführt |
| Honorar | KBOB-2002-Artikel verweist nicht auf SIA 126 | SIA 102 Ziff. 5.7 und das KBOB-Merkblatt sind zwei Ebenen (Norm gegenüber Vertragsklausel für die freihändige Vergabe), kein Widerspruch |

**Nicht verifiziert, ohne stillen Deckel:** der dritte Melder-Befund der normen-Achse
(«eBKP-H-Artikel verweist nicht auf die JANS-Nutzungssperre») blieb ausserhalb der
Zwei-pro-Achse-Grenze und bleibt offen. Lauf 50 hat dieselbe Familie unter Abschnitt 7 behandelt.

---

## 6. Nullbefund Delta-Achse

Das Wachstum der übrigen KBs seit dem 01.09.2026 (CHANGELOG-Köpfe von `energie`,
`planungsgrundlagen`, `normen`, `twin`, `baurecht`, `bauprodukte`, gegengeprüft gegen `ls -lt` auf
allen Wiki-Dateien) ergab **keinen neuen unaufgelösten Kollisionsbefund**. Kein geänderter Artikel
fehlte im CHANGELOG-Kopf seiner KB.

---

## 7. Offen, an Raphael

1. **Schulbau-CHF/m³** — bleibt `grobkosten` allein zuständig, oder wird der Kennwert aus einer
   anderen Quellengattung beschafft? Offen seit 20.07.2026 (`wettbewerbs-dna/wiki/QUESTIONS.md` B6),
   von Lauf 50 weitergetragen, unverändert.
2. **`links:`-Schema** (`architektur-fachwissen/wiki/QUESTIONS.md` #64) — unverändert offen; deshalb
   wurde erneut keine Rückkante im `links:`-Frontmatter gesetzt.
3. **`normen/destillate/sia-102-2003.md`** bleibt `speculative` (nachgemessen: `status: speculative`,
   `last_updated: 2026-08-07`), obwohl zwei Fundorte der Originalnorm registriert sind. Rückstand von
   `normen` selbst, dritter Lauf in Folge.

Keiner dieser Punkte ist operativ im Sinne von Rule `auto-verbesserungen` 260803 (kein Geld, keine
Frist, kein Termin, keine Behörde, kein Kunde). **Keine Mail** — der `hub-chef-taeglich` nimmt auf,
was er für nötig hält.

---

## 8. Übergabe an Lauf 52

- Die **Statusverteilung der Zielmenge zuerst messen** (Abschnitt 2), bevor Melder auf
  Widerspruchssuche geschickt werden. Bei einem Bestand ohne `established`-Artikel ist die
  ergiebigere Frage die nach Verweiskanten und Abgrenzungsvermerken, nicht die nach Widersprüchen.
- Der **eBKP-H-Nutzungssperren-Verweis** (Abschnitt 5) ist ungeprüft offen.
- `energie` führt den Amplitudendämpfungs-Mechanismus qualitativ; ob die quantitative Herleitung aus
  afw je zitierfähig wird, hängt daran, ob dieser Artikel von `speculative` auf `emerging` steigt.
