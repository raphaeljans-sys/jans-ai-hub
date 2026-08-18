# Normen-Training Run 57 (MacBook Pro, 19.08.2026) — N56-1 geschlossen, und die Norm ist seit elf Jahren tot

**Kurzfassung.**

> **N56-1 ist erledigt**, und zwar sauber: die Refuter-Runde auf den fünf zuletzt offenen
> Seiten (**4, 6, 21, 27, 34**) hat **sämtliche Korrekturen der Runs 55 und 56 bestätigt** —
> keine musste zurückgenommen werden. Neu **3 Kernbefunde, 4 Nebenbefunde**, alle inline
> korrigiert. Nach dem vorgeschlagenen Abbruchkriterium sind damit **S. 4, 21 und 34
> geschlossen**, offen bleiben **S. 6 und S. 27**.
>
> **Der eigentliche Befund liegt aber woanders.** Run 56 hatte die Korrigenda-Liste als
> «einzigen offenen Schritt, der die ganze bisherige Verifikationskette relativieren könnte»
> benannt. Der Schritt ist gefahren. Er hat **keine Korrigenda** gefunden, sondern das Ende
> der Gültigkeit: **SIA 416/1:2007 ist seit dem 31.03.2015 zurückgezogen und durch
> SIA 380:2015 ersetzt.** Zwei unabhängige Primärquellen. **Fünf Läufe haben den Inhalt einer
> Norm Satz für Satz geprüft, ohne je zu prüfen, ob sie noch gilt.**

## 1. Ausgangslage

Gate `lauf-gate.sh` rc=0, NAS gemountet, kein konkurrierender Lauf (`ps`). Zugriff auf
`PL - 02_Recht_Norm/02_Normen/` direkt gelesen — kein TCC-Fall, M365-Fallback nicht nötig.

**Das Inventar hat weiterhin 0 destillierbare offene Positionen.** Die fünf verbliebenen
`[ ]`-Zeilen (SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020) sind ausnahmslos
externe Bring-Schulden. Der Lauf ist deshalb nach PROGRAMM Ziff. 6 auf die Vertiefungsstufe
**(b) Retro-Verifikation** umgeschaltet, auf den von Run 56 benannten Vorrangposten.

Stationssplit eingehalten: nur SIA/VKF; DIN, VSS und RAL nicht angefasst.

## 2. Anlage der Runde

Geprüft wurden die **fünf Seiten**, die Run 56 als «offen» ausgewiesen hatte — die drei mit
Run-56-Zuwachs (**4, 6, 21** = N56-1) und die zwei mit Run-55-Zuwachs (**27, 34**). Die Quelle
ist ein reiner Scan, deshalb Rendering in 300 dpi mit normspezifischem Präfix **`ref416-r57-`**
(Methodik-Pflicht 5). Folio je am Seitenrand abgelesen, nicht aus der Blattnummer berechnet;
Folio = PDF-Blatt 1:1 an allen fünf Seiten bestätigt.

**Ohne Subagenten gefahren** (Rule `modellwahl-routine` Ziff. 3): fünf Seiten, rund 70 präzise
Behauptungen gegen gedruckten Text — unter der Delegationsschwelle. Vor jedem Befund
Gegenprüfung per `grep` gegen das **ganze** Destillat (Methodik-Pflicht 7).

## 3. Was gehalten hat — und das ist der ruhige Teil

**Alle Korrekturen der Runs 55 und 56 sind bestätigt.** Im Einzelnen:

| Aus | Behauptung | Befund am Druck |
|---|---|---|
| Run 56 | Vorwort nennt **vier** Änderungen gegenüber SIA 180/4, die fehlende ist die aus SIA 416 abgeleitete AE-Definition | **bestätigt** — der Satz «Sie enthält eine vereinfachte, sich auf die Norm SIA 416 beziehende Definition der Energiebezugsfläche» steht gedruckt |
| Run 56 | KF-Definition braucht die Eingrenzung «innerhalb der GF liegenden» | **bestätigt**, wörtlich |
| Run 56 | Bei abgehängten Decken läuft die **10-cm-Schwelle** mit; Figur 13 belegt es | **bestätigt** — «Das gilt auch für abgehängte Decken…», und Figur 13 zeichnet «Böden gegen Aussenklima» ausdrücklich als Paar ≤ 10 cm / > 10 cm |
| Run 56 | «äusserste» Hauptebene der Fassade (Ziff. 2.3.4) | **bestätigt** |
| Run 56 | «hinterlüftete Aussenwände» ist Figuren-, nicht Normtext | **bestätigt** |
| Run 55 | EV umfasst nur die *Auswirkungen der luftseitigen Druckverluste*, nicht die Lufterwärmung | **bestätigt, und am Druck doppelt belegt** — der Eh-Eintrag nennt die Zuluft-Erwärmung ausdrücklich als seine eigene |
| Run 55 | EC «inkl. allfälliger Nachwärmung **bei Entfeuchtung**» | **bestätigt** |
| Run 55 | HNF3-Titel trägt «Experimente» | **bestätigt** |
| Run 56 | Anhang A vollständig, «(informativ)» | **bestätigt** — alle neun Kategoriezeilen Wort für Wort |

Das ist die erste Runde dieser Reihe, in der **keine einzige** frühere Korrektur zurückgenommen
werden musste. Die Prüfmethode der letzten drei Läufe trägt.

## 4. Die drei neuen Kernbefunde

### Kernbefund 1 — Figur 1 und die GF-Gliederung fehlten dem Destillat vollständig (S. 6)

Der Druck zeigt auf S. 6 als **erstes** inhaltliches Element des Kapitels 1 die **Figur 1
«Die Geschossfläche GF und ihre Aufteilung in Teilflächen gemäss Norm SIA 416»** — die
vollständige Taxonomie: GF zerfällt in NGF und KF, NGF in NF, VF und FF, NF in HNF und NNF.
Im Text steht zusätzlich ausdrücklich: «**Die Geschossfläche gliedert sich in
– Nettogeschossfläche NGF, – Konstruktionsfläche KF.**»

Gegenprüfung über das ganze Destillat: **«Figur 1» 0 Treffer, «gliedert» 0, «Gliederung» 0,
«GF = NGF» 0.** Die Taxonomie war nirgends geführt — auch nicht sinngemäss. Das Destillat
enthielt die Einzeldefinitionen (GF, KF, NGF-Zuteilung, im Anhang A auch HNF/NNF/VF/FF), aber
nie ihren Zusammenhang.

Das ist folgenreicher als es aussieht. **Die Identität GF = NGF + KF ist die Rechenbrücke**:
NGF ergibt sich als GF − KF. Genau darauf stützte Run 56 seine Begründung für den
KF-Kernbefund («ohne die Eingrenzung ist die Identität GF = NGF + KF nicht mehr geschlossen»)
— die Identität stand in **jenem Laufbericht**, aber nie im Destillat. Ein Befund, dessen
Begründung sich auf etwas beruft, das im Erzeugnis fehlt.

### Kernbefund 2 — «Bauteile _wie_ …» war zur geschlossenen Aufzählung verengt (S. 6)

Destillat: «**Versetzbare Trennwände und Schrankwände sind keine Konstruktionsbauteile** im
Sinne der Norm SIA 416.»

Norm: «**Bauteile wie** versetzbare Trennwände und Schrankwände sind keine **umschliessenden
oder innenliegenden** Konstruktionsbauteile im Sinne der Norm SIA 416.»

Zwei Verluste in einem Satz. Das «**wie**» macht die beiden zu **Beispielen einer offenen
Klasse**; ohne es wird daraus eine abschliessende Liste, und ein drittes, gleichartig
versetzbares Bauteil fiele nicht mehr darunter. Und verneint ist nicht die Bauteil-Eigenschaft
schlechthin, sondern die als **umschliessendes oder innenliegendes** Konstruktionsbauteil.

**Dieselbe Fehlerklasse wie Kernbefund 2 aus Run 56 und der «innerhalb der thermischen
Gebäudehülle»-Befund aus Run 55:** beim Verdichten fällt der Geltungsmodifikator weg, und übrig
bleibt ein Satz, der richtig klingt und den Anwendungsbereich verschoben hat. Das ist jetzt der
**dritte** Beleg — es ist die Signatur-Schwäche dieses Destillats.

### Kernbefund 3 — die Positivdefinitionen von EV und EC fehlten weiterhin (S. 27)

Run 55 hat notiert, dass «drei positive Definitionen des Ziff.-4.3.3-Katalogs fehlten», und
ELi, EAp sowie Eww nachgetragen. **Es waren fünf.** Gegenprüfung: «Luftförderung» 0 Treffer,
«Wärmerückgewinnung» 0, «Rückkühlung» 0, «Kühlmittel» 0.

Gedruckt steht:

- **Lüftung EV**: «Luftförderung in mechanischen Lüftungsanlagen (Zuluft- und
  Abluft-Ventilatoren, **Antriebe für die Wärmerückgewinnung**, Förderpumpen usw.)»
- **Kühlung/Entfeuchtung EC**: «Kühlung und Entfeuchtung der Raumluft (Kältemaschinen,
  Förderpumpen für Kühlmittel- und Wasserkreisläufe, **Antriebe und Ventilatoren für
  Rückkühlung** usw.)»

Beide tragen **Zuteilungsregeln für Ventilatoren und Pumpen** — also genau das, worum es in
diesem Katalog geht. Der **WRG-Antrieb gehört zur Lüftung, nicht zur Wärme**; der
**Rückkühl-Ventilator gehört zur Kühlung, nicht zur Lüftung** — letzteres ist die Gegenrichtung
zur naheliegenden Annahme «jeder Ventilator ist Lüftung».

Ausgerechnet die beiden Einträge, an denen die Doppelzählung praktisch entsteht, hatten keine
Positivdefinition — in einem Abschnitt, den das Destillat selbst mit «Wer diese Grenzen nicht
kennt, zählt den Lüftungsstrom zweimal oder gar nicht» kommentiert. Run 55 hat die Lücke
richtig diagnostiziert und **unvollständig geschlossen**: geklärt war, was EV *nicht* enthält,
nicht aber, was es *enthält*.

## 5. Die vier Nebenbefunde

| Stelle | Befund |
|---|---|
| S. 4, Vorwort | Die **beiden ersten Absätze** fehlten ganz: unterschiedliche Bauteilabmessungen in den SIA-Normen, Daten mussten je Berechnung neu erhoben werden, Bezugsgrössen unterschiedlich definiert, **«so dass die entsprechenden Grössen nicht vergleichbar waren»**; Zweck ist ein **gemeinsamer Datensatz** für alle Berechnungen. Schärfer als Ziff. 0.1.1 (S. 5), die nur die Vereinheitlichung nennt — hier steht, welcher Schaden ohne sie eintritt |
| S. 4, Vorwort | Der Schlusssatz «Diese Norm definiert einige **weitere, für energetische Betrachtungen nützliche Kennzahlen**» fehlte (das ist Kapitel 5) |
| S. 4, Vorwort | **Die Zählung «vier» ist eine Lesart, keine Quellenangabe.** Das Vorwort nummeriert nichts. Formuliert war «das Vorwort nennt vier Änderungen» — dieselbe Belegqualitäts-Frage wie beim in Run 53 gestrichenen «explizit». Als Lesart gekennzeichnet, samt Abgrenzung (wer den Schlusssatz mitzählt, kommt auf fünf) |
| S. 34, NNF | «Räume für zentrale Technik (**Räume _in_** Kraftwerken, Kesselhäusern, Müllverbrennungsanlagen)» — das Destillat verkürzte auf «(Kraftwerke, Kesselhäuser, …)», was die Anlagen selbst statt der Räume darin bezeichnet |

## 6. Der Befund, der die Reihe neu ordnet

Run 56 hatte als Ziff. 9.5 der Übergabe notiert, die Korrigenda-Liste des SIA-Shops sei «der
einzige offene Schritt, der die ganze bisherige Verifikationskette relativieren könnte», und
er sei billig. Beides stimmte. Nur ist das Ergebnis ein anderes als erwartet:

> **SIA 416/1:2007 war gültig vom 01.07.2007 bis zum 31.03.2015.** Seit dem **01.04.2015** ist
> sie ersetzt durch **SIA 380:2015 «Grundlagen für energetische Berechnungen von Gebäuden»**
> (SN 504380:2015, 64 Seiten).

**Zwei unabhängige Primärquellen, nicht eine Suchmaschinen-Zusammenfassung:**

1. Das **Produktdatenblatt im SIA-Shop** zu SIA 416/1:2007 — «gültig ab 01.07.2007 / gültig bis
   31.03.2015», Status **«archivierter Titel»**, Nachfolger SIA 380:2015.
2. Das **Titelblatt der SIA 380:2015 selbst**, per `pdftotext` aus dem vom SIA-Shop
   ausgelieferten PDF gelesen: «**Ersatz für SIA 416/1:2007** sowie Teile von SIA 2031:2009,
   SIA 2032:2010 und SIA 2040:2011», «Gültig ab: 2015-04-01».

**SIA 380:2015 liegt nicht im Haus.** Der Bestand führt SIA 380/1:2016, 380/3:1990 und 380/4 —
andere Normen. Beschaffung ist kostenpflichtige Bring-Schuld; Claude tätigt keine Käufe
(**N57-2**).

### Was das für das Destillat heisst — und was nicht

**Der Inhalt bleibt richtig.** Über die Runs 53 bis 57 ist er Satz für Satz am Original geprüft
und beschreibt zutreffend, was SIA 416/1:2007 sagt. Diese Arbeit ist nicht verloren: für
Bestandesbauten, deren Nachweis unter der 2007er Ausgabe erstellt wurde, und für Verträge, in
denen sie ausdrücklich vereinbart ist, bleibt das Destillat die richtige Referenz.

**Falsch wäre allein seine Verwendung als geltende Fundstelle.** Genau davor schützt jetzt ein
Warnkasten zuoberst im Destillat, ein Frontmatter-Feld `gueltigkeit`, die korrigierte
Gültigkeitsspalte im REGISTER und die Herabsetzung des Wiki-Artikels von `established` auf
`speculative`.

### Reichweite über diese KB hinaus — gemeldet, nicht angefasst

Neun Dateien in vier Fremd-KBs zitieren SIA 416/1 als Fundstelle: `energie` (ein Wiki-Artikel,
fünf Destillate), `immobilienbewertung` (`flaechendefinitionen-sia.md`), `planungsgrundlagen`,
`baurecht` (Band-2-Destillat). Vollständige Liste in `wiki/QUESTIONS.md` unter N57-2.

**Ich habe sie bewusst nicht angefasst.** Zwei Gründe: die Umhängung setzt voraus, dass
SIA 380:2015 vorliegt (sonst ersetzt man eine belegte Fundstelle durch eine ungelesene), und
sie ist **sachbezogen** zu prüfen — der Begriff Energiebezugsfläche lebt in SIA 380:2015
weiter, ein Verweis auf das *Konzept* ist nicht falsch, nur die *Fundstelle* ist veraltet.
Pauschales Ersetzen wäre exakt der Fehler, den Rule `bkp-2017-referenz` seit dem
«271.10»-Fall verbietet: mechanisch ersetzen erzeugt einen Fehler, der verifiziert aussieht.

## 7. Der Methodenbefund

Run 56 hat gezeigt, dass Selbstprüfung keine Refuter-Runde ersetzt. Dieser Lauf fügt einen
Punkt hinzu, der eine Ebene höher liegt:

> **Fünf Läufe haben den Inhalt einer Norm Satz für Satz verifiziert, ohne je zu prüfen, ob
> die Norm noch gilt.**

Das PROGRAMM kennt die Pflicht bereits. **Methodik-Pflicht 3** lautet: «Fassungsstand vor
Werteabgleich. Erster Schritt jeder Verifikation ist die Suche nach einer **jüngeren Fassung
derselben Norm im Bestand**.» Sie wurde formal befolgt — im Bestand gibt es keine jüngere
Fassung von SIA 416/1. Und genau daran scheiterte sie: **die Nachfolgenorm heisst anders.**
SIA 380:2015 trägt eine andere Nummer, liegt in keinem `416`-Ordner, und keine Suche nach
«416» im Bestand konnte sie je finden.

Die Pflicht war für den **Fassungsvergleich zweier Dateien im Haus** geschrieben (Anlass: die
VKF-Fassungen 2015 vs. 2017/2022 in Run 22). Sie deckt den Fall nicht ab, dass die geltende
Fassung **gar nicht im Haus** ist und **unter anderer Nummer** läuft. Vorschlag zur
Präzisierung, vorgelegt statt selbst eingetragen:

> **Methodik-Pflicht 3b.** Vor der inhaltlichen Verifikation einer Norm wird ihr
> **Gültigkeitsstand an einer normexternen Primärquelle** festgestellt (SIA-Shop-Produktdaten
> bzw. das Register des Herausgebers), nicht nur im eigenen Bestand. Festzuhalten sind
> «gültig ab / gültig bis» und ein allfälliger Nachfolger **auch dann, wenn dieser eine andere
> Normnummer trägt**. Ein Bestandssweep kann eine Ablösung unter fremder Nummer grundsätzlich
> nicht finden.

Das ist dieselbe Lehre wie die schon dreimal belegte: **eine Runde ohne Befund misst die
Methode, nicht die Quelle.** Hier hat eine ganze Reihe von Runden nichts gefunden, weil die
Methode auf den Inhalt zeigte und nicht auf den Status.

**Ein zweiter, kleinerer Punkt:** Der Wiki-Artikel `sia-416-1-verwendungszwecke-abgrenzung.md`
stand auf `status: established` — nach Rule `normen-referenz` Ziff. 1b heisst das «ohne
Gegenlesen zitierfähig». Für eine archivierte Ausgabe darf das nicht gelten. Die Herabsetzung
auf `speculative` sagt allerdings ebenfalls das Falsche (sie liest sich als Zweifel am Inhalt,
der hier geprüft ist). **Dem Status-Vokabular fehlt eine Stufe für «Inhalt solide, Ausgabe
nicht mehr in Kraft»** — ein weiterer, unabhängiger Beleg für **N55-4**, wo Run 55 genau so
eine Zwischenstufe (`destilliert`) vorgeschlagen hat.

## 8. Nachgeführt

- `destillate/sia-416-1-2007.md` — Warnkasten zuoberst, Frontmatter-Feld `gueltigkeit`,
  3 Kernbefunde und 4 Nebenbefunde **inline** korrigiert, Prüfstand um vier Zeilen erweitert,
  Statusbegründung fortgeschrieben. Diff **+131/−11** gemessen; **alle 11 Löschungen sind
  ersetzte eigene Zeilen**, kein fremder Inhalt entfernt (Rule 260811). Ankerbasiert ersetzt
  (jede Ersetzung mit `assert count == 1`), kein globales Suchen-und-Ersetzen.
  Sicherungskopie des Vorstands im Scratchpad.
- `wiki/REGISTER.md` — Gültigkeitsspalte von «2007✓» auf «2007 ✗ zurückgezogen 31.03.2015 →
  SIA 380:2015» korrigiert
- `destillate/INDEX.md` — Warnhinweis vorangestellt
- `training/norm-inventar.md` — beide Zeilen (Kurz- und Statuszeile) nachgeführt
- `wiki/sia-416-1-verwendungszwecke-abgrenzung.md` — Status `established` → `speculative`,
  Feld `gueltigkeit`, Warnkasten mit ausdrücklicher Klarstellung, dass der Inhalt geprüft
  bleibt
- `wiki/QUESTIONS.md` — N56-1 geschlossen; **N57-1 bis N57-4** neu
- `CHANGELOG.md` — Eintrag

## 9. Offen — Übergabe

1. **N57-2 (Vorrang, gewichtiger als alles andere an diesem Gegenstand): SIA 380:2015
   beschaffen.** Bring-Schuld Raphael, SIA-Shop, kostenpflichtig. Danach destillieren und die
   neun Fremd-KB-Fundstellen **sachbezogen** umhängen.
2. **Entscheid Abbruchkriterium** (aus Run 55/56, weiterhin nicht entschieden). Es bleibt
   sinnvoll, ist aber **nachrangig geworden**: es regelt, wann die inhaltliche Prüfung einer
   **Altnorm** endet. Empfehlung unverändert: annehmen.
3. **Vorschlag Methodik-Pflicht 3b** (Ziff. 7) — Gültigkeitsstand an normexterner
   Primärquelle, vor der inhaltlichen Verifikation. Vorgelegt, nicht selbst eingetragen, weil
   es das PROGRAMM ändert.
4. **N57-1** — der Run-57-Zuwachs auf S. 4, 6, 27, 34 ist selbst unverifiziert. Nachrangig,
   solange die Norm archiviert und die Nachfolgerin nicht im Haus ist.
5. **N57-4** — Gültigkeit von **SIA 416:2003** primärverifizieren. Billig, und nach diesem
   Lauf nicht mehr optional: das Destillat stützt sich durchgehend darauf.
6. **N55-3** (grafische Kodierung Tab. 3/5 ohne Legende) und **N55-4** (Status-Vokabular:
   25 Destillate ausserhalb des Vokabulars, 18 Statusabweichungen; **KB-weites Umbenennen ist
   nach Rule `wissens-bibliothekar` pausepflichtig**) unverändert offen. N55-4 hat durch
   diesen Lauf einen dritten Beleg bekommen.
7. **Beschaffungsposten unverändert:** SIA 266/2:2012 (N53-1), SIA 242:2012 und SIA 274:2010
   (N52-5/N52-7), SIA 181:2020, SIA 118/265:2018 (N48-4), sechs ABB; formelle Frage
   SIA 215:1978 (N53-3); Fassungsfrage SIA 252; Nachfolge-Status der vier Altnormen (N48-5);
   SIA 382/2 gegen SIA 382/1:2014 (N48-7).
8. **Bestandshygiene `alle/xalt/`** (offen seit Run 52) — SIA 416/1:2007 und SIA 215:1978
   liegen dort. **Für SIA 416/1 hat sich der Punkt erledigt:** die Datei liegt sachlich
   richtig unter `xalt`, sie ist tatsächlich eine Altausgabe. Der Ordner war nie irreführend,
   die Lesart war es. Für SIA 215:1978 bleibt die Frage offen.
9. **Fremde KB, weiterhin nur gemeldet:** `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md`
   führt bürointerne Los-Nummern im Frontmatter-Feld `bkp:`.

## 10. Was ungeprüft blieb

- **Geprüft:** Refuter- und Abdeckungsrichtung auf S. 4-40 (Runs 53/54); Refuter-Runde auf dem
  Zuwachs S. 26-32/34/35/40 (Run 55), S. 4/6/9/17/21-22/39 (Run 56) und S. 4/6/21/27/34
  (Run 57). **Erstmals geprüft: der Gültigkeitsstand der Norm.**
- **Nicht geprüft:** der **Zuwachs dieses Laufs** auf S. 4, 6, 27, 34 (N57-1).
- **Nicht erreichbar:** die **Korrigenda-Liste** — `www.sia.ch/korrigenda` liefert ohne
  JavaScript keinen Inhalt (N57-3, bei archivierter Ausgabe nachrangig). Das
  **Produktdatenblatt zu SIA 416:2003** — geratene Shop-URL lief ins Leere (N57-4).
- **Bewusst nicht destilliert:** die Zahlenwerte der Tabelle 6 (Brenn-/Heizwerte) und die
  Gütewert-Tabellen von SIA 215:1978 — Urheberrechtsentscheid.
- **Nicht angefasst:** die neun Fundstellen in vier Fremd-KBs (Begründung Ziff. 6);
  `training/register-check.sh` (läuft nach Entscheid vom 17.08. auf Zuruf).
- **Nicht angefasst:** DIN, VSS, RAL — Stationssplit, die gehören dem Mac Mini.

## Belege

Renderings mit normspezifischem Präfix (Methodik-Pflicht 5): **`ref416-r57-`**, 300 dpi,
S. 4, 6, 21, 27, 34. Jede Seite wurde vom Hauptprozess selbst gelesen und Satz für Satz gegen
das Destillat gehalten; **Figur 1 (S. 6) und Figur 13 (S. 21) wurden gerendert und abgelesen**,
nicht per Textextraktion aufgenommen (Methodik-Pflicht 8) — bei dieser Norm zwingend, weil die
Datei ein reiner Scan ist. Die gedruckte Seitenzahl ist am Seitenrand abgelesen; Folio =
PDF-Blatt 1:1 an allen fünf Seiten bestätigt (S. 4/6/34 unten links, S. 21/27 unten rechts).
Jeder Kernbefund wurde vor der Übernahme per `grep` gegen das **ganze** Destillat gegengeprüft
(Methodik-Pflicht 7); alle ergaben 0 Treffer, waren also echte Lücken und keine Verlagerungen.

Gültigkeitsbelege: SIA-Shop-Produktseite zu SIA 416/1:2007 (Gültigkeitszeitraum, «archivierter
Titel», Nachfolger) und das per `pdftotext -layout` gelesene **Titelblatt der SIA 380:2015**
aus dem vom SIA-Shop ausgelieferten PDF (Zeile «Ersatz für SIA 416/1:2007 sowie Teile von
SIA 2031:2009, SIA 2032:2010 und SIA 2040:2011»; «Gültig ab: 2015-04-01»; «SN 504380:2015 de»;
«Anzahl Seiten: 64»). Die Aussage zu **SIA 416:2003** stützt sich demgegenüber nur auf eine
Sekundärquelle und ist deshalb ausdrücklich als **nicht primärverifiziert** geführt (N57-4).
