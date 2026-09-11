---
titel: "Quellen-Auflösungskarte der KB Normen und die zweite Verfälschungs-Mechanik (Run 83)"
angelegt: 2026-09-10
lauf: normen-nacht Run 83 (MacBook Pro, SIA/VKF-Scope)
auftrag: "N82-2 — die 33 SIA-Destillate, deren quelle:-Feld sich nicht auf eine Datei im Haus auflösen liess"
status: gemessen und kalibriert
---

# Quellen-Auflösungskarte — und was der Weg dorthin über das Messen zeigt

Run 82 hat **N82-2** als «grösste offene Kante» seines Sweeps ausgewiesen: 33 von 95
SIA-Destillaten mit Grenzwerten liessen ihr `quelle:`-Feld nicht auf eine Datei im Haus
auflösen. Ein Destillat mit unauffindbarer Quelle ist von **jeder** Retro-Verifikation
strukturell ausgeschlossen — deshalb war die Kante zu Recht als die wichtigste bezeichnet.

Dieses Dokument schliesst sie, hält die Auflösungskarte für spätere Läufe fest und
protokolliert die vier eigenen Fehlversuche, die dabei nötig waren.

## 1. Das Ergebnis

Scope: alle Destillate **ausser** DIN/VSS/RAL (Stations-Split, Rule 260712), ohne `INDEX.md`
und `links.md` — **379 Destillate**.

| Klasse | Anzahl | Bedeutung |
|---|---|---|
| **notierter Pfad löst exakt auf** | **302** | der im `quelle:`-Feld stehende Pfad existiert |
| externe Quelle | 69 | Web, shop.sia.ch, VKG-Portal, Suva-Cloud — kein Hausbestand, legitim |
| kein `quelle:`-Feld | 7 | führen stattdessen `sources:` mit Web-Belegen, alle `speculative` |
| Ordner statt Datei | 1 | `sia-1001-11-2018` zeigt auf ein Verzeichnis, das existiert |
| **stille Rettung über Basename** | **0** | kein Destillat hängt an einem toten Pfad, der nur zufällig auflöst |

**Vier echte tote Pfade wurden gefunden und in diesem Lauf repariert** (siehe Ziff. 3).
Nach der Reparatur ist die Auflösung im Scope lückenlos.

## 2. Warum die Zahl 33 nicht reproduzierbar ist — vier eigene Werkzeugfehler

Die Kante war deutlich kleiner als gemeldet. Ob Run 82 denselben Fehler hatte oder eine
andere Auflösungsregel benutzte, ist **nicht feststellbar** — sein Code liegt nicht vor.
Feststellbar ist nur, was die eigene Messung gekostet hat, und das gehört hierhin, weil
jeder Punkt eine wiederverwendbare Lehre ist:

1. **Der Pfad-Regex brach an Leerzeichen ab.** `[^\s]+\.pdf` schnitt
   `.../alle/xalt/neu/SIA 416_1_2007.pdf` auf `416_1_2007.pdf` zu. Ergebnis: 120 vermeintlich
   nicht auflösbare Destillate, die Treffer hiessen `Bodenbeläge.pdf`, `Brüstungen.pdf`,
   `Tore.pdf` — allesamt abgeschnittene Pfad-Enden. **Ein Ergebnis, das nach Sachbefund
   aussieht, aber die Form des Werkzeugs trägt.**
2. **Die Bestandswurzel lag eine Ebene zu tief.** Indexiert war
   `PL - 02_Recht_Norm/02_Normen`, während `04_Merkblätter/` und `09_Sanitaereinrichtung/`
   **darüber** liegen. **587 von 1327 PDF waren nie im Index** — fast die Hälfte des Bestands.
   Alle Merkblatt-Destillate mussten deshalb als «nicht im Haus» erscheinen.
3. **Relative Pfade wurden nicht gegen mehrere Wurzeln aufgelöst.** Die KB notiert
   `quelle:` in zwei gleichwertigen Formen: absolut (`/Users/…`) und relativ
   (`SIA_Norm/SIA_Normen/alle/184_1972_d.pdf`, relativ zu `02_Normen/`). Wer nur die eine
   kennt, hält die andere für kaputt.
4. **Ein non-greedy `.pdf`-Match stoppte zu früh.** `ugz-hindernisfreie-aufzuege-2010`
   notiert korrekt `UGZ_Hindernisfreie_Aufzuege.pdf .pdf` — die Datei heisst im Bestand
   wirklich so, mit Leerzeichen und doppelter Endung. Das Feld war richtig, der Parser falsch.

Die naheliegende Gegenhypothese wurde ausdrücklich geprüft und **verworfen**: es ist **kein**
Unicode-Normalisierungsproblem (NFC/NFD). Der Test an einem Beispielfall zeigte ein schlicht
relativ notiertes Feld.

**Die Lehre ist nicht neu, sie ist nur wieder bestätigt:** ein leeres oder negatives
Suchergebnis ist zuerst eine Aussage über das Werkzeug (Rule `wege-und-vollmachten`,
`auto-verbesserungen` 260730b) — und ein Bestandsindex ist selbst ein Messinstrument, dessen
Wurzel geprüft gehört, bevor seine Ergebnisse gelten.

## 3. Die vier echten Befunde — repariert

Alle vier betreffen VKF-Dokumente der 100er-Reihe, die im `quelle:`-Feld unter
`02_Brandschutzrichtlinien 2015/` gesucht wurden, tatsächlich aber unter
`04_Erlaeuterungen Brandschutz 2015/` liegen — teils zusätzlich unter abweichendem Dateinamen:

| Destillat | notiert war | tatsächlich |
|---|---|---|
| `vkf-brl-100-15-brandmauern` | `02_Brandschutzrichtlinien 2015/100-15_Brandmauern.pdf` | `04_Erlaeuterungen…/100-15_Brandmauern.pdf` |
| `vkf-brl-100-15-fassung-2017-delta` | dito | dito |
| `vkf-brl-101-15-fassung-2017-delta` | `…/101-15_Bauten mit Atrien und Innenhöfen.pdf` | `04_Erlaeuterungen…/101-15_Atrien u Innenhöfe.pdf` |
| `vkf-brl-102-15-fassung-2017-delta` | `…/102-15_Bauten mit Doppelfassaden.pdf` | `04_Erlaeuterungen…/102-15_Doppelfassaden.pdf` |

Die Zielnamen wurden **aus dem Dateisystem gelesen, nicht geraten**; jeder Edit erzwang per
Assertion genau einen Anker-Treffer (Rule 260811, kein globales Ersetzen).

### Ein Nebenbefund, der ausdrücklich KEIN Sachbefund ist

Der falsche Ordner war ein Zeiger auf etwas Grösseres: die 100er-Reihe der VKF sind
**Brandschutzerläuterungen**, nicht Brandschutzrichtlinien — am Titelblatt dreier Dokumente
geprüft, dort steht durchgehend «BRANDSCHUTZERLÄUTERUNG». Die Gattungen unterscheiden sich in
der Verbindlichkeit, und 17 Destillate tragen im **Dateinamen** das Präfix `vkf-brl-`.

Nach Methodik-Pflicht 7 wurde geprüft, ob die KB die Aussage an anderer Stelle bereits führt.
**Sie führt sie überall:** die H1 sagt «Brandschutzerläuterung», das `ausgabe:`-Feld sagt
«VKF-Brandschutzerläuterung 100-15de», `vkf-brl-100-15-brandmauern` trägt sogar eine
ausdrückliche «Anmerkung zum Titel», und `INDEX.md` wie `REGISTER.md` führen die Reihe
durchgehend als **«BSE»**. Falsch ist allein der Dateiname — eine Namens-Altlast.

Ihre Korrektur wäre eine Umbenennung von 17 Dateien samt Verweisen und damit **destruktiv**
(Rule `wissens-bibliothekar`, Ziff. 4). Sie wird deshalb **vorgelegt, nicht ausgeführt**
(N83-1).

## 4. Der Anschluss: eine zweite Verfälschungs-Mechanik, die Run 82 nicht finden konnte

Run 82 hat unter N82-3 ausgewiesen: «Nur eine Verfälschungs-Mechanik ist gemessen — der
Unterstrich. Die Anlage findet, was sie sucht.» Die erweiterte Auflösung erlaubte den Sweep
über die volle Menge, und dort liegt eine zweite:

**In `162.051_A1_2004_d.pdf` (SIA 162/051 A1:2004) ist «≤» als «d» und «≥» als «t» kodiert** —
eine Symbol-Font-Substitution. Am 300-dpi-Rendering der S. 3 verifiziert:

| gedruckt | Textlayer liefert |
|---|---|
| Setzmass **≥** 10 mm und **≤** 210 mm | `t 10 mm und d 210 mm` |
| Setzzeitmass (Vébé) **≤** 30 s und > 5 s | `d 30 s und > 5 s` |
| Verdichtungsmass **≥** 1,04 und < 1,46 | `t 1,04 und < 1,46` |
| Ausbreitmass > 340 mm und **≤** 620 mm | `> 340 mm und d 620 mm` |

Echte «<» und «>» werden im selben Absatz **korrekt** ausgeliefert; die Substitution trifft
ausschliesslich ≤ und ≥.

**Warum sie schwerer wiegt als der Unterstrich:** Sie hinterlässt **kein isoliertes «<»**.
Die Erfassungsstufe der Run-82-Anlage (`pdftotext -bbox`, Wörter, die genau `&lt;` oder `&gt;`
sind) kann sie strukturell nicht sehen — nicht weil die Messung schlecht war, sondern weil
ihre Erfassung an einer Spur hängt, die dieser Defekt nicht legt.

**Das Destillat ist nicht betroffen.** `sia-162-051-a1-a2.md` führt die Werte korrekt
(«Setzmass ≥10/≤210»), und sein `gelesen:`-Feld nennt den Grund: die Seiten wurden als PNG
gerendert, «da pdftotext auf diesen Seiten wegen Zeichen…». Die richtige Formulierung ist
also wieder die aus Methodik-Pflicht 10: **nicht «Fehler gefunden», sondern «die KB hatte es
richtig, neu ist der Nachweis der Mechanik».**

### Reichweite der zweiten Mechanik: gemessen, ein einziger Fall

Detektor: isoliertes `d`/`t` unmittelbar vor einer Zahl mit Einheit oder Dezimalkomma, über
**284 distinkte PDF** des aufgelösten Bestands. 13 Treffer-Dateien, davon nach Schärfung
4 Verdachtsfälle. Der Schärfungs-Diskriminator ist entscheidend und billig:

> **Kodiert die Datei irgendwo ein echtes ≤ oder ≥, ist die Substitution ausgeschlossen** —
> dann sind `d`/`t` Bemessungsindizes (σ t,0,d), Blechdicken (≥ 1,5 t) oder Zeitpunkte (t 0).

Die drei übrigen Verdachtsfälle wurden im Kontext geprüft und sind **Falsch-Positive**:
`ersetzte_normen.pdf` («d f i» = Sprachvarianten-Spalten), `2024_2006_d.pdf`
(«Volllaststunden 12.7 h/d»), `382_2_2011.pdf` (OCR-Artefakt, Typ B).

**Ergebnis: genau ein echter Fall im ganzen aufgelösten Bestand, und er ist korrekt behandelt.**

## 5. Die Risikokarte — mechanik-unabhängig

Die beiden Sweeps oben suchen je eine bekannte Mechanik. Die folgende Frage ist von der
Mechanik unabhängig und deshalb die belastbarere:

> Welche Destillate führen ≤/≥-Werte, obwohl ihre Hausquelle diese Zeichen **gar nicht
> kodiert**? Dort **muss** der Wert am Rendering gelesen worden sein — oder er ist unbelegt.

Von 138 Destillaten mit ≤/≥-Werten und aufgelöster Hausquelle: **86 unkritisch** (Quelle
kodiert ≤/≥), **52 in dieser Klasse** — 24 mit Quelle ohne jeden Textlayer (Typ A, dort war
Rendering zwingend), 28 mit Textlayer, der ≤/≥ nicht kodiert.

### ⚠ Die Karte ist bewusst grob — eine dritte Klasse fehlt ihr

Die Stichprobe am gewichtigsten Fall hat gezeigt, dass «Quelle kodiert kein ≤/≥» **nicht**
gleichbedeutend mit «Wert unbelegt» ist. Die **VKF-Brandschutznorm 1-15** formuliert ihre
Grenzwerte **sprachlich statt symbolisch**: «20 oder mehr Personen» (Art. 2 Ziff. 2a),
«wenn ihre Grundfläche 150 m2 nicht übersteigt» (Ziff. 2e), «mehr als 1'200 m2» (Ziff. 2b).
Das Destillat übersetzt das korrekt in ≥20 und ≤ 150 m² — die Quelle kodiert kein ≤/≥, weil
sie keines braucht.

Wer diese Karte benutzt, prüft deshalb **zuerst, ob die Norm überhaupt symbolisch
formuliert**, bevor er einen Wert als unbelegt behandelt. Sonst produziert die Karte
Korrektur-Aufträge gegen richtige Destillate — genau der Fehlalarm-Typ, vor dem
Methodik-Pflicht 10 warnt.

### Die 52 Destillate

| Destillat | Familie | ≤/≥ im Destillat | Quellentyp |
|---|---|---|---|
| `lignum-4-2-anschluesse-feuerwiderstand` | VKF | 153 | A (kein Textlayer) |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand` | VKF | 64 | A (kein Textlayer) |
| `lignum-lignatec-brandschutz` | VKF | 40 | A (kein Textlayer) |
| `sia-384-201-2017` | SIA | 26 | A (kein Textlayer) |
| `swki-va103-01-2017` | ANDERE | 26 | A (kein Textlayer) |
| `sia-382-1-2014` | SIA | 23 | A (kein Textlayer) |
| `sia-180-2014` | SIA | 19 | Textlayer ohne ≤/≥ |
| `stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019` | ANDERE | 16 | A (kein Textlayer) |
| `sia-1695-4-2018` | SIA | 15 | A (kein Textlayer) |
| `sia-180-081-2017` | SIA | 14 | A (kein Textlayer) |
| `sia-343-051-2018` | SIA | 9 | A (kein Textlayer) |
| `sia-500-2009` | SIA | 8 | Textlayer ohne ≤/≥ |
| `kalksandstein-bemessung-sia266-ksv-2012` | SIA | 7 | Textlayer ohne ≤/≥ |
| `sia-272-1980` | SIA | 7 | Textlayer ohne ≤/≥ |
| `vkf-brandschutznorm-2015` | VKF | 7 | Textlayer ohne ≤/≥ |
| `gvz-mfh-nicht-brennbare-bauteile` | ANDERE | 6 | Textlayer ohne ≤/≥ |
| `sia-251-2008` | SIA | 6 | A (kein Textlayer) |
| `vkf-brandschutznorm-1-15de-bspub57` | VKF | 6 | Textlayer ohne ≤/≥ |
| `sia-162-051-a1-a2` | SIA | 5 | Textlayer ohne ≤/≥ |
| `sia-244-2006` | SIA | 5 | Textlayer ohne ≤/≥ |
| `sia-312-2013` | SIA | 5 | A (kein Textlayer) |
| `vkf-ah-1002-03-parkhaeuser` | VKF | 5 | Textlayer ohne ≤/≥ |
| `sia-108-2014` | SIA | 4 | Textlayer ohne ≤/≥ |
| `sia-180-082-2017` | SIA | 4 | A (kein Textlayer) |
| `sia-246-2006` | SIA | 4 | Textlayer ohne ≤/≥ |
| `sia-271-2007` | SIA | 4 | A (kein Textlayer) |
| `sia-271-wegleitung` | SIA | 4 | A (kein Textlayer) |
| `sia-162-152-a1-a2` | SIA | 3 | Textlayer ohne ≤/≥ |
| `sia-248-2006` | SIA | 3 | Textlayer ohne ≤/≥ |
| `sia-329-2018` | SIA | 3 | A (kein Textlayer) |
| `sia-358-fachartikel` | SIA | 3 | A (kein Textlayer) |
| `sia-382-2-2011` | SIA | 3 | Textlayer ohne ≤/≥ |
| `suva-44006-gelaender-maschinenanlagen` | ANDERE | 3 | Textlayer ohne ≤/≥ |
| `svdw-wegleitung-gartenplatten-verbundsteine-balkone-terrassen` | ANDERE | 3 | A (kein Textlayer) |
| `vkf-brl-22-15-blitzschutzsysteme` | VKF | 3 | Textlayer ohne ≤/≥ |
| `vkf-brl-23-15-befoerderungsanlagen` | VKF | 3 | Textlayer ohne ≤/≥ |
| `sia-118-266-1-2017` | SIA | 2 | A (kein Textlayer) |
| `sia-400-2000` | SIA | 2 | Textlayer ohne ≤/≥ |
| `sia-592-056` | SIA | 2 | A (kein Textlayer) |
| `suissetec-dachentwaesserung-2016` | ANDERE | 2 | A (kein Textlayer) |
| `vkf-bsv2015-bericht-aenderungen` | VKF | 2 | Textlayer ohne ≤/≥ |
| `vkf-bsv2015-vernehmlassungsbericht` | VKF | 2 | Textlayer ohne ≤/≥ |
| `afs-leitfaden-dachlandschaften-2009-vollfassung` | ANDERE | 1 | Textlayer ohne ≤/≥ |
| `afs-leitfaden-kunst-im-oeffentlichen-raum-2009` | ANDERE | 1 | Textlayer ohne ≤/≥ |
| `sia-118-1991` | SIA | 1 | Textlayer ohne ≤/≥ |
| `sia-226-1976` | SIA | 1 | Textlayer ohne ≤/≥ |
| `sia-281-2017` | SIA | 1 | A (kein Textlayer) |
| `sia-416-1-2007` | SIA | 1 | A (kein Textlayer) |
| `sia-462-1994` | SIA | 1 | Textlayer ohne ≤/≥ |
| `sia-en-13200-1-2019` | SIA | 1 | A (kein Textlayer) |
| `vkf-brl-101-15-atrien-innenhoefe` | VKF | 1 | Textlayer ohne ≤/≥ |
| `zhb-2005-mindestanforderungen-hindernisfreies-bauen` | ANDERE | 1 | Textlayer ohne ≤/≥ |
## 6. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die 52 Destillate der Risikokarte sind NICHT einzeln verifiziert.** Geprüft wurde
   **einer** — die VKF-Brandschutznorm, als gewichtigster Fall — und der ist in Ordnung.
   Die Karte ist ein Zeiger auf zu prüfende Stellen, kein Befund über sie (N83-2).
2. **Der `d`/`t`-Detektor verlangt eine Einheit oder ein Dezimalkomma hinter der Zahl.**
   Eine Substitution vor einer nackten Zahl in einer Tabellenzelle («d 50») fällt durch.
   Die gemessene Reichweite ist damit eine **untere Schranke**, kein Vollständigkeitsnachweis.
3. **Es sind jetzt zwei Mechaniken gemessen, nicht alle.** Ein ≤ als Bild oder mit gänzlich
   fehlendem Encoding legt weder ein isoliertes «<» noch ein «d». N82-3 bleibt in dieser
   Hinsicht offen; die Klasse ist nur um eine Mechanik kleiner geworden.
4. **Die Refuter-Richtung ist nicht gelaufen.** Alle Befunde stammen vom Hauptprozess,
   ohne Subagenten. **Keine Statushebung** (Methodik-Pflicht 13).
5. **Der DIN/VSS/RAL-Bestand ist nicht berührt** (Stations-Split, Rule 260712). Die
   Auflösungskarte gilt ausdrücklich nur für SIA, VKF und die übrigen Herausgeber.
6. **Die 69 externen Quellen sind nicht auf Erreichbarkeit geprüft.** Ob die Suva-Cloud-
   und shop.sia.ch-Links noch auflösen, ist eine eigene Frage (verwandt mit N79-2, dem
   Verlinkungs-Sweep, der weiterhin bei Raphael liegt).

## 7. Wiederverwendung

Die Auflösung braucht nur `os.walk` über **beide** Ablagen ab ihrer **obersten** Ebene
(`PL - 02_Recht_Norm`, `PL - 03 Brandschutz`) und einen Pfad-Parser, der Leerzeichen
zulässt und relative Felder gegen mehrere Basen probiert. Wer sie neu baut, kalibriert
zuerst an `sia-416-1-2007` (absoluter Pfad mit Leerzeichen), `sia-184-1972` (relativ) und
`ugz-hindernisfreie-aufzuege-2010` (doppelte Endung) — an diesen dreien ist jeder der vier
Fehlversuche aus Ziff. 2 sofort sichtbar.

## 8. Nachtrag Run 84 (11.09.2026)

Die 28 Destillate der Klasse «Textlayer ohne ≤/≥» sind am Bild geprüft (26 in Run 84), ohne falschen
Wert. Die Karte hat zwei blinde Flecken: Destillate mit «<=»/«>=» (9, davon 3 ausschliesslich) und
Destillate, die einer Pi-Scheinzahl gefolgt wären (sie tragen dann kein ≤/≥ mehr). Beides und die
sieben neuen Mechaniken: `n84-textlayer-mechaniken-260911.md`. Typ A (24) weiterhin offen.
