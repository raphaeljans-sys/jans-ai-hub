---
titel: "Wissens-Chef Run 27 — Cross-KB, 6 Felder: eine Zahl, die keine Quelle je enthielt"
datum: 2026-08-06
typ: lauf-report
run: 27
---

# Wissens-Chef Run 27 (06.08.2026, 23:11 CEST)

Sechs Felder, 28 Agenten (6 Melder, 17 adversariale Verifikatoren, 5 Ausführende), 17 gemeldete
Befunde, **alle 17 verifiziert: 3 bestätigt, 13 gedämpft, 1 widerlegt**. Rund 30 Dateien in acht
Wissensbasen geändert, dazu je eine im Skill- und im Logbuch-Layer.

## 1 · Dimensionierung, gemessen statt geschätzt

Zuwachs seit Run 26 per `git log --name-only` über `wissen/`: **energie 44 Dateien**, **normen 34**,
twin 18, bauprodukte 10, immobilienbewertung und grobkosten je 3, planungsgrundlagen, claude-code und
baurecht je 2. Das trägt sechs Felder. Vier davon zielten auf Material, das jünger als 24 Stunden war.

Zwei Läufe der Nacht bestimmten die Feldwahl: **normen Run 45** hat das Volldestillat der geltenden
VKF 2001-15 angelegt — genau die Bring-Schuld, die Run 26 gemeldet hatte — und damit die
Duplikat-Frage zur Triplikat-Frage gemacht. **energie** hat die ecoBKP-2026-Reihe fertig gelesen und
dabei zwei Positionen abgedeckt, die eine andere KB kurz zuvor ausdrücklich als unerreichbar erklärt
und mit einer Suchsperre belegt hatte.

## 2 · Der teuerste Fund: eine Zahl, die keine Quelle je enthielt

`bauprodukte/wiki/erco-lichtplanung-grundlagen.md` sagte im Abschnitt «Praxisrelevanz für JANS»:

> «Der UGR-Wert (S. 82) ist ein prüfbarer, normüblicher Kennwert für eine Leuchtenausschreibung
> (Bürolicht typischerweise UGR ≤ 19)»

Der Melder hat das als Matrix-Verstoss gemeldet — bauprodukte darf keine Normwerte fortschreiben.
Der Verifikator hat **die Primärquelle selbst geöffnet** (`de_erco_guide.pdf`, S. 82, Edition
26.06.2006) und den Befund verschärft: die Seite sagt, der UGR-Wert liege «in der Regel zwischen 10
und 30», nennt Mindestabschirmwinkel 30° und Standard 30°/40° — und **weder die Zahl 19 noch das
Wort Büro**. Der destillierte Quelltext derselben Datei nennt ebenfalls nur den Bereich 10-30.

Das ist keine Quellenlücke, sondern eine **erfundene Zuschreibung**: eine Zahl, die einer Seite
zugeordnet wurde, die sie nicht enthält. Der Unterschied ist praktisch, nicht semantisch — bei einer
Quellenlücke ist etwas nachzutragen, hier war etwas zu entfernen. Wer sie als Lücke verbucht, sucht
beim nächsten Audit nach einem Beleg, den es nicht geben kann.

**Der Ort ist die eigentliche Lehre.** Das Destillat war sauber; erfunden hat die
Anwendungsempfehlung, die daraus abgeleitet wurde. Der Satz stand im Imperativ einer
Ausschreibungsanweisung: Eine mit «UGR ≤ 19» ausgeschriebene Leuchte ist eine bindende Anforderung an
den Unternehmer. Lässt die Norm für die betreffende Nutzung 22 oder 25 zu, wird ohne Grund teurer
ausgeschrieben; liegt sie darunter, ist die Ausschreibung normwidrig. Beides fällt erst beim
Fachplaner oder beim Unternehmer auf.

Die Klammer ist gestrichen. Ausdrücklich **nicht** getan: den Wert über den einzigen Zahlenbestand
des Hub belegen, den datierten AHB-Auszug von 2007 — dessen Tabelle hat gar keine Bürozeile. Eine
erfundene Herleitung an der Stelle einer erfundenen Zahl wäre der schlechtere Fehler gewesen.

Der Stichprobenlauf des Ausführenden über die übrigen Praxisrelevanz-Punkte fand einen zweiten,
kleineren Fall derselben Familie: der Deckenabstand 0,8 m war zweimal S. 87 zugeschrieben, steht aber
auf S. 88. Der Wert bleibt belegt, nur der Zeiger war um eine Seite verschoben.

## 3 · Der grösste Frankenbetrag: ein Vorbehalt, der beim Weiterreichen abfällt

`immobilienbewertung` weist seit dem 12.07.2026 aus, dass der obere Healthcare-Bandendpunkt
**1'420 CHF/m³ GV quellenintern nicht reproduzierbar** ist: die eigene Quelle rechnet 12.34 Mio /
9'600 = **1'285**. Der Vorbehalt steht aber 12 bis 14 Zeilen **unter** dem Übergabe-Block — und der
Übergabe-Block ist die Stelle, die zitiert wird. Drei Abnehmer gaben den Wert unqualifiziert weiter,
darunter das Parameter-Set `healthcare-neubau-zh.json`, das `machbarkeit` und
`healthcare-wirtschaftlichkeit` tatsächlich lesen.

Bei einem Pflegeheim-Neubau von 10'000 m³ sind das rund **CHF 1.35 Mio** zu viel in einer
Grobkostenschätzung, die zur Bauherrschaft geht.

Zwei Agenten haben unabhängig voneinander alle acht Zeilen nachgerechnet — mit demselben Ergebnis:
sechs reproduzieren exakt (Dankensberg 1'120, Trotte 1'278, Herosé 1'104, Lanzeln 826, Mathysweg
1'053, St. Anna 1'097), nur **Averecura** (1'285 statt 1'420) und **Vella** (1'021 statt 845)
weichen ab. Der reproduzierbare Rohband lautet 826-1'285 und ist genau so vermerkt: als
reproduzierbarer Rohband, nicht als neuer geltender Band. Die Tabelle bleibt unangetastet, sie ist
die getreue Abschrift des JANS-Originalblatts; dessen Bereinigung liegt als D10 bei Raphael.

In `grobkosten` kam ein zweiter Mangel dazu, der ohne den ersten unsichtbar geblieben wäre: der
zitierte Band ist **BKP 2**, steht aber eine Zeile über der BKP-1-5-Deklaration derselben Seite. Wer
ihn dort abliest und als BKP 1-5 verwendet, unterschätzt zusätzlich um Umgebungs- und
Baunebenkosten. Die Seite widersprach sich selbst: qualifiziert im Healthcare-Abschnitt,
unqualifiziert im Kopfblock — und der Kopfblock ist die zitierte Stelle.

## 4 · Was die Verifikation an den Meldungen korrigiert hat

Die Quote dieses Laufs bestätigt das Muster der letzten drei: **die Befunde tragen, die Auflösungen
nicht.** Neun von siebzehn Melder-Auflösungen wurden korrigiert, zwei davon in die Gegenrichtung.

**Zweimal hätte die Ausführung Schaden angerichtet:**

- **SIA 385/1 Legionellen.** Der Melder wollte die energie-Werte auf das normen-Destillat
  `sia-385-1-2011.md` verweisen lassen und dort eine Bring-Schuld eintragen. Der Verifikator hat die
  Prämisse widerlegt: die Ausgabe 2011 ist seit dem 31.10.2020 abgelöst, die Bring-Schuld ist seit 19
  Runs als Kaufentscheid Raphaels parkiert — und vor allem hat der Hub den Normstoff sehr wohl
  gesehen. In derselben KB liegt ein `established`-Destillat mit reproduzierten Norm-Temperaturtabellen
  und dem im Volltext gelesenen BAG/BLV-Modul 11. Der Verweis wäre auf eine abgelöste Ausgabe gegangen
  und hätte die Korroboration im eigenen Haus übersehen.
- **Fassungsvorbehalt BRL 22-15.** Der Melder wollte den offenen Vorbehalt in `energie` als «am 05.08.
  in normen aufgelöst» schliessen. Der Verifikator hat nachgemessen, was normen wirklich belegt hat:
  den Live-Abruf des 2017-PDF — **genau denselben Abruf über dieselbe URL, den `energie` am 25.07.
  schon gemacht hatte.** Ein Abgleich des VKF-Publikationsindex auf eine Ausgabe nach 2017 hat nie
  stattgefunden. Beide KBs stehen auf derselben Evidenz. Statt den Vorbehalt zu schliessen, wurde die
  **normen-Frontmatterzeile zurückgenommen**, die mehr behauptete, als sie mass.

**Weitere Korrekturen, die den Eingriff präzisiert haben:**

- **Kein blanker Zeiger auf ein `speculative`-Destillat.** Alle drei Solaranlagen-Befunde wollten den
  Zeiger auf die neue 2022er-Datei setzen. Die trägt selbst `status: speculative` — Erstdestillat und
  Refuter-Runde liefen beide in Run 45, die unabhängige Zweitverifikation steht aus. Ein Zeiger ohne
  diesen Vermerk macht aus einem unverifizierten Destillat stillschweigend die Autorität. Jeder
  gesetzte Zeiger trägt den Vorbehalt.
- **Zwei Fundstellen, zwei Sachbezüge.** Die beiden SIA-380/4-Verweise im ERCO-Artikel dürfen nicht
  mit demselben Code ersetzt werden: die Energieeffizienz-Stelle gehört auf SIA 387/4 bzw. SIA
  2056:2019 mit ZH-Vollzug EVEN/EN-111, die Bemessungswert-Stelle auf EN 12464-1 — dort wären 2056 und
  387/4 beide falsch, weil sie Leistungsbedarf regeln, nicht Bemessungswerte. Dieselbe Fehlerklasse wie
  das mechanische BKP-Ersetzen aus Run 25.
- **Der RWA-Abstand ist nicht verschwunden.** Der Melder wollte den 2-m-Wert als weggefallen
  ausweisen. Er ist 2022 in den Anhang gewandert und gilt dort weiter als massnahmenfreie Schwelle.
- **Ein Scope ist keine Divergenz.** Die BKP-Scope-Frage sollte als Punkt «3.» in den
  Doppelführungs-Block. Der behandelt Divergenzen zwischen zwei KB-Ständen; der Scope ist eine
  Eigenschaft der Fremdquelle, die beide gleichermassen trifft — als «3.» wäre er falsch etikettiert
  und beim nächsten Lauf so gelesen. Dazu die Warnung, die niemand gemeldet hatte: die Realwert-Formel
  addiert Aussenanlagen und Baunebenkosten bereits separat, bei Lesart BKP 1-9 drohte Doppelzählung.
- **Die Matrix war falsch zitiert.** Beim Spektrumskosten-Band behauptete der Melder Deckungsgleichheit
  mit einer Matrix-Zeile, die CHF/m² NF gar nicht regelt. Die Zuständigkeit war nicht falsch geregelt,
  sie war **überhaupt nicht geregelt** — die Matrix-Zeile ist in diesem Lauf erstmals entstanden.
- **Drei Schwestern, nicht eine.** «Das Ausbau-Destillat trägt als einziges keinen Anschlussblock» war
  falsch; es waren drei. Und die Datei war jünger als die Blöcke, die ihre Abwesenheit beklagten — der
  Vorwurf einer unterlassenen Übergabe fiel weg.

## 5 · Neu in diesem Lauf: die dritte Korrekturstufe hat gegriffen

Bisher galt: der Melder findet, der Verifikator korrigiert die Auflösung. In diesem Lauf haben
**vier von fünf Ausführenden** die bereits verifizierte Vorlage nochmals am Bestand korrigiert. Das
ist kein Nebenbefund, sondern die Bestätigung der Run-26-Regel, dass ein Ausführender messen und
nicht abschreiben muss.

- **Sachfehler in der verifizierten Formel.** Die vorgeschlagene Legionellen-Einordnung lautete
  «entspricht der bedingten Erleichterung der SIA 385/1:2020». Das ist falsch: das
  `established`-Destillat unterscheidet zwischen den **Auslegungsvorgaben** (Speicheraustritt 55 °C,
  52 °C beim reinen Wärmeübertrager ohne Speicher, Entnahmestelle 50 °C) und der 3-K-Erleichterung, die
  die warmgehaltenen Leitungen zusätzlich absenkt. Die ecoBKP-Werte decken sich mit den
  Auslegungsvorgaben; das 52-°C-Vorkommen ist der Wärmeübertrager-Fall. Die Einordnung wurde
  entsprechend geschrieben.
- **Ein Wert, der gar nicht korroboriert ist.** Die Stagnationsregel «> 3 Tage» steht im
  established-Destillat nicht — nur eine beiläufige Erwähnung ohne Zahl. Sie ist ausdrücklich als
  nicht mitkorroboriert gekennzeichnet, statt in die Korroboration eingeschlossen zu werden.
- **Drei Datierungen am Wachstums-Riegel.** Auslagerung 23:11 statt 23:08; **drei** Riegel-Auslösungen
  statt zwei (04.08., 05.08., 06.08.); und die Reserve gilt für den Block zwischen den Sentinels
  (29'962 B, 38 B Rest), nicht für die Datei (31'190 B) — die Dateigrösse als Reserve auszuweisen wäre
  schlicht falsch gewesen, weil sie über der Grenze liegt.
- **Eine Arithmetik, die mehr behauptet als sie misst.** Die Differenz 115'482 → 89'746 (-25'736 B) ist
  die Nettoveränderung über drei Tage, nicht die isolierte Wirkung der Auslagerung. Diese macht allein
  **-28'558 B**; die übrigen Rules wuchsen im selben Zeitraum um **+2'822 B**. Beides ist jetzt
  getrennt ausgewiesen.
- **Vier statt drei «noch offen»-Sätze**, und ein Registerstand, der zwischen Meldung und Ausführung um
  25 Seiten weitergelaufen war.

## 6 · Der widerlegte Befund — und warum er der wichtigste Test war

Der einzige widerlegte Befund ist zugleich der einzige, dessen Ausführung **unzulässig** gewesen wäre.

Gemeldet war ein Widerspruch zwischen der in jeder Session aktiven Rule `anrede-kontakte` («Gewicht
des Anliegens schlägt den Routine-Default») und einem twin-Befund vom selben Morgen. Vorgeschlagen
war unter anderem, die Rule um einen datierten Vorbehalt zu ergänzen.

Der Verifikator hat zweierlei gemessen. Erstens ist die tragende Behauptung falsch: die Mitleser-Regel
steht seit dem 06.08. 06:07 im kompilierten Gehirn `rules/jans-dna-facetten.md`, samt der Merkregel
«ein Rücksprung ist kein Abkühlen, sondern fast immer ein Cc» — der behauptete Schaden ist
gegenstandslos. Zweitens, und wichtiger: **die Klausel in `anrede-kontakte.md` ist von Raphael am
29.07.2026 ausdrücklich freigegeben**, dreifach belegt. Der Wissens-Chef relativiert keine Freigabe
selbst — dieselbe Zurückhaltung, die der twin-Loop am 25.07. bereits geübt hatte.

Der sachlich verbleibende Restpunkt ist klein und twin-intern: prüfen, ob die vier fraglichen
Januar-Mails Cc-Empfänger trugen. Trägt die Fachfrage vom 26.01. einen Mitleser, löst der Cc-Befund
die Anomalie ganz auf. Das gehört in den nächsten regulären twin-Lauf, nicht in einen Rule-Eingriff
des Wissens-Chefs.

## 7 · Offene Entscheide für Raphael

1. **Ticket T-Regelgeschoss** (unverändert aus Run 25/26): welcher Faktor in der JANS-Richtwert-Tabelle
   der Wüest-Referenz steht und mit welcher Bezugsgrösse er beschriftet wird.
2. **D10 — Bereinigung des Original-Blatts** der acht Healthcare-Objekte. Der reproduzierbare Rohband
   826-1'285 CHF/m³ GV ist jetzt überall mitgeführt, aber die Frage, ob 1'420 und die Vella-Zeile im
   Blatt korrigiert werden, bleibt offen. Solange sie offen ist, reist der Vorbehalt mit.
3. **Verbleib des Spektrumskosten-Bands**: ob es ganz in den Skill `kostenschaetzung` wandert (dann in
   der KB nur noch ein Verweis). Es ist aus JANS-Kundenunterlagen destilliert. Nach dem gesetzten
   Querverweis nicht mehr dringend.
4. **`MAX_AUTO_BYTES` im Twin-Riegel**: seit dem 05.08. fällig, jetzt im Fristen-Register. Die Reserve
   steht bei **38 Byte**; der nächste Lauf verdichtet erneut. Anheben oder verdichten ist per
   Riegel-Konstruktion Raphaels Entscheid.
5. **Beschaffungs- und Bring-Schulden** (unverändert bzw. neu): VKF 2001-15 in der Fassung 2022 und
   BRL 22-15 in der Fassung 2017 in den SharePoint-Bestand; Zwischenausgabe 2001-15:2017 destillieren;
   Zweitverifikation des 2022er-Destillats; **neu N27-1** VKF-Publikationsindex für 22-15de abfragen;
   **neu N27-2** Herausgeber-Beleg für die Archivierung SIA 380/4 (ohne ihn wurde bewusst keine
   Gültigkeitsaussage ins Register gesetzt).
6. **Merge-Frage der beiden 2015er-Solaranlagen-Destillate** bleibt parkiert wie seit Run 26 — ein
   Merge ist destruktiv und braucht die Einzelfreigabe.

## 7b · Ausgeführte Aktionen

Fünf Ausführende mit strikt disjunkten Dateimengen, danach eigene Nachkontrolle.

| KB / Ort | Was gesetzt wurde |
|---|---|
| `normen` | Vorwärtsverweise und Kopfwarnungen mit `speculative`-Vorbehalt in beiden 2015er-Destillaten; vier Nachträge zu «noch offen»; cr-Kabel-Präzisierung mit LV-Wirkung; INDEX-Zeile; **Electrosuisse-/CES-Zeile** und **erstmals eine BRL-22-15-Zeile** im REGISTER; Bezeichner SN 414022:2024 an der Verwendungsstelle angehängt; Frontmatterzeile auf das Gemessene zurückgenommen; QUESTIONS N27-1 und N27-2 |
| `energie` | Zwei Zeiger auf das 2022er-Destillat umgehängt (Sperrsatz «noch nicht erstellt» entfernt); Datumsdrift am 22-15-Destillat geheilt, Fassungsvorbehalt bewusst offen gelassen; Einordnungsblock zu den Legionellenwerten samt Rückverweis; positionsweise Anschlussblöcke für BKP 271/273/281 im Ausbau-Destillat; datierte Nachträge in zwei Schwester-Destillaten; Positionsprüfung der drei blockfreien Schwestern |
| `bauprodukte` | «UGR ≤ 19» gestrichen und als **erfundener Beleg** protokolliert; beide SIA-380/4-Stellen sachbezogen unterschiedlich korrigiert; Lesefortschritt auf den gemessenen Stand 145 nachgezogen; zwei Sperrklauseln als erledigt ausgewiesen, offene Teilfragen ausdrücklich offen gelassen; Seitenkorrektur 0,8 m; CHANGELOG-Format auf vier Pflichtregister umgestellt |
| `immobilienbewertung` + `grobkosten` + `entwurfs-referenzen` + Skill | Vorbehalt in den Übergabe-Block gehoben (beide nicht reproduzierbaren Zeilen); Kopfblock grobkosten mit Scope und Vorbehalt; **Parameter-Set mitqualifiziert** (im Erstvorschlag vergessen); BKP-Scope-Vorbehalt unter der Tabellen-Überschrift; neue Wissenslücke D13; Verweisblock im Skill `kostenschaetzung` mit Provenienz und Bezugsflächen-Vorbehalt |
| `claude-code` + `planungsgrundlagen` | Grundkontext-Artikel fortgeschrieben (89'746 B / 21 Importe / ~22'436 Token, zweifach unabhängig gemessen), Netto- und Isolationswirkung getrennt, Riegel-Absatz datiert richtiggestellt, Pflichtsatz «Kosten verschoben, nicht verschwunden»; PV-Brandschutz-Einstieg auf die geltende Fassung mit Statusvorbehalt, Erledigt-Vermerk an beiden Stellen, Übergabe-Lücke in QUESTIONS |
| `logbuch/fristen.md` | `MAX_AUTO_BYTES`-Entscheid registriert (nur registriert, nicht entschieden) |
| `koordination` | 6 Paar-Einträge, 2 Matrix-Zeilen, 3 Struktur-Muster, CHANGELOG |

**Bewusst nicht ausgeführt:** kein Merge der beiden 2015er-Destillate (destruktiv, Einzelfreigabe);
keine Gültigkeitsaussage zu SIA 380/4 im normen-Register (kein eigener Herausgeber-Beleg); keine
Änderung an der Rule `anrede-kontakte.md` (Freigabe Raphaels); kein Anheben von `MAX_AUTO_BYTES`;
kein Verschieben des Spektrumskosten-Bands in den Skill; `ecobkp-2026-methodik-und-uebersicht.md`
bleibt ohne Anschlussblock, als offen vermerkt.

**Wortlaut-Schutz eingehalten und nachgemessen:** alle Stellen, die den VKF-Wortlaut mit «SNR 464022»
zitieren, sind unverändert. Wer dort die heute gültige Nummer einsetzt, verfälscht das Zitat einer
fremden Quelle — dieselbe Fehlerklasse wie das mechanische BKP-Ersetzen aus Run 25.

## 8 · Was dieser Lauf über das Verfahren gelernt hat

**Erstens: «erfundener Beleg» braucht einen eigenen Namen.** Eine Quellenlücke und eine erfundene
Zuschreibung sehen im Register gleich aus, verlangen aber gegenteilige Handlungen. Wer die zweite als
erste verbucht, schickt den nächsten Lauf auf die Suche nach einem Beleg, den es nicht geben kann.
Der Fehlermodus sass beide Male nicht im Destillat, sondern in der daraus abgeleiteten
Anwendungsempfehlung — dort, wo aus Lesen Handeln wird und niemand mehr gegen die Quelle prüft.

**Zweitens: eine bedingte Stopp-Anweisung ist ohne Wächter eine Dauersperre.** «Kein weiterer Lauf
soll dort danach suchen, solange der Lesestand der KB `energie` unverändert ist» war sorgfältig
formuliert und trotzdem schädlich: die Bedingung trat ein, aber eine Bedingung, die niemand prüft,
ist keine Bedingung. Solche Klauseln gehören mit einem benannten Prüfzeitpunkt versehen — oder gar
nicht gesetzt.

**Drittens: die Zeitachse ist enger geworden als der Lauf.** Zwischen Meldung und Ausführung lagen
knapp zwei Stunden, und in dieser Zeit hat ein Nachtlauf 25 Seiten weitergelesen, wodurch die
Restpunkte-Liste des Auftrags überholt war und ein darin genanntes Kapitel gar nicht existierte.
Dasselbe strukturell beim Grundkontext-Artikel, dessen Kernaussage **46 Minuten** nach ihrer Messung
falsch wurde, und beim Riegel-Satz, der **neun Minuten** wahr war. Der Hub bewegt sich schneller, als
ein Registerstand alt werden darf. Die praktische Konsequenz ist unverändert und hat sich hier
vierfach bewährt: der Ausführende misst am Bestand.

**Viertens: die Korrekturkette hat jetzt drei Glieder und alle drei tragen.** Melder → Verifikator →
Ausführender, und jede Stufe hat in diesem Lauf mindestens einen Fehler der vorigen gefangen. Die
teuerste Einzelkorrektur kam nicht vom Melder und nicht vom Verifikator, sondern vom Ausführenden,
der die verifizierte Legionellen-Formel gegen das Original gelesen hat.

**Fünftens: die Freigabe-Bindung ist keine Formalie.** Der einzige widerlegte Befund wollte eine
ausdrücklich freigegebene Regel relativieren — plausibel begründet, sauber zitiert, und trotzdem
unzulässig. Dass die Verifikation das gefangen hat und nicht erst Raphael, ist der wichtigste
Einzelbefund dieses Laufs über das Verfahren selbst.

## 9 · Meldung

**Kein terminkritischer Punkt.** Der Thalwiler Begleitbeschrieb aus Run 25/26 ist heute um 08:39 vom
`hub-chef` aufgenommen worden; die korrigierte Fassung liegt als Vorschlag im Unterordner
`_Korrekturvorschlag-Ziffer-4.5/`, die Freigabe liegt bei Raphael. Die Meldekette hat im zweiten
Anlauf funktioniert — die Lehre aus Run 26 («ein Laufbericht ist kein Meldekanal, Fristen gehören
ins Register») hat gegriffen.

Für das Tagesbriefing bleiben die sechs offenen Entscheide aus Abschnitt 7. Keine eigene Mail
(Rule 260803): keiner der Punkte verlangt Handeln vor dem nächsten Briefing.
