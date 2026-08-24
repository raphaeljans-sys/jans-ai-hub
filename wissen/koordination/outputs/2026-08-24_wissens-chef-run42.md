# Wissens-Chef Run 42 — der Wegweiser ganzflaechig, und ein Refuter, der die Diagnose umdreht

**Lauf:** 24.08.2026, 23:11 bis 00:0x CEST · **Delta-Basis:** 23.08.2026 23:13 (Run 41) ·
**Fenster:** 23,9 Stunden, **183 Commits**, HEAD `8a1e3fc1b` · **491 geaenderte Dateien in
`wissen/`**
**Uhr-Kontrolle bestanden:** Station 23:11 CEST gegen nativen Synology-Selfcommit
`8a1e3fc1b` 22:59:36 — 12 Minuten Versatz, plausibel.
**Zuschnitt:** 6 Melder (`model: sonnet`) + 6 Refuter (Hauptmodell) = **12 Agenten**,
2'222'663 Token, 235 Werkzeugaufrufe, 12,2 Minuten, **0 Fehler**.
**Ergebnis:** 11 Befunde gemeldet, **9 bestaetigt** (davon 3 vom Refuter verschaerft oder
umgeleitet), **1 widerlegt**, **2 Nullbefunde bestaetigt**. **9 Aktionen ausgefuehrt**, alle
additiv, alle mit `--numstat` nachgemessen.

---

## 1 · Der groesste offene Posten ist abgetragen

Run 41 uebergab: «Der Brandschutz-Wegweiser bleibt der groesste offene Posten. Drei Stellen von
rund 2'200 Zeilen sind geprueft. Ein eigener, systematischer Sweep waere ein ganzer Lauf wert —
und der bisher ertragreichste, den die Reihe kennt.»

Er war es. Zwei Melder haben
`planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` haelftig durchgearbeitet, zwei Refuter
gegengelesen. **Vier bestaetigte Befunde, einer widerlegt** — drei davon mit direkter
Aussenwirkung auf Brandschutznachweis, Baueingabe und Kostenannahme.

**Der schwerste Fund ist nicht die falsche Zahl, sondern der Satz, der das Nachpruefen
abschaltet.** §5ac erklaerte die VKF-Aenderungen 2017 pauschal fuer «durchgaengig redaktionelle
Praezisierungen» und die Zahlenwerte fuer unveraendert. Dieselbe AFC-Gegenueberstellung, auf die
sich der Abschnitt beruft, fuehrt «Blitzschutz Hochhaeuser verschaerft» ausdruecklich unter den
**materiellen** Aenderungen. Der Artikel widersprach seiner eigenen Belegquelle — und genau
darunter, in §5w, stand die betroffene Zahl im ueberholten Stand: Hochhaeuser > 30 m mit
**III/III** statt **III/II**. Klasse I ist die hoechste Stufe, die Anforderung wurde also
verschaerft; der Wegweiser nannte die **zu schwache** Klasse. Beides ist jetzt vermerkt.

Die uebrigen drei:

**§4b — VKF-BSR 15-15 Ziff. 2.3.4 verkuerzt.** Die 3'600-m²-Abstandbefreiung stand ohne
«**eingeschossig**» und ohne «**untereinander**». So gelesen gilt sie fuer mehrgeschossige Bauten
und gegenueber grundstuecksfremden Bauten — beides falsch. Der Refuter hat den Befund
verschaerft (der Melder sah nur «eingeschossig») und die Ursprungsstelle gefunden: dieselbe
Verkuerzung liegt in `planungsgrundlagen/wiki/QUESTIONS.md` Z. 1410, einem abgeschlossenen
Laufprotokoll — **bewusst nicht angefasst**, append-only nach Rule 260811. Die Korrektur gehoert
an den Artikel, nicht rueckwirkend ins Protokoll.

**§5l — kantonaler Vollzugs-Vorbehalt ZH ergaenzt** (GVZ-Merkblatt 30.17.3, RWA in gesprinklerten
Einstellhallen 1'201-3'600 m²). Hier hat der Refuter die Aktion **begrenzt statt bestaetigt**:
der Melder wollte das GVZ-Destillat als «gepruefte Planungsregel» fuehren, die strenger sei als
die VKF-Grundlage. Es traegt aber nach vier Refuter-Runden `status: speculative` mit dem Vermerk
«HEBUNG AUF established ERNEUT NICHT ZULAESSIG» und stuetzt sich auf die abgeloeste VKF-RWA-Ausgabe
2003. Gesetzt wurde der **Vorbehalt mit Klaerungsauftrag an die Feuerpolizei**, keine Zahl.
**Das ist der erste messbare Fall, in dem Rule `normen-referenz` Ziff. 1b verhindert hat, dass
eine Warnkarte als Planungswert weiterwandert** — genau das Muster, das nach dem
SIA-118/262-Vorfall untersagt wurde.

**Widerlegt:** die Feuerwehr-Bewegungsflaechen (6×11 m, 60 m Schlauchlaenge, 18 t) seien
unbelegt. Der Vorbehalt steht bereits **vierfach**, davon einer in der Empfaenger-KB `normen`.
Ein dokumentierter, bewusst offengehaltener Zustand ist kein neuer Mangel.

**Der Artikel gilt damit als ganzflaechig gegengelesen.** Alle uebrigen materiellen Abschnitte
(QSS-Tabellen, Feuerwiderstand, Parkhaus, Atrien, Doppelfassaden, Beherbergung-Fluchtwege,
Lignum-Holzbau, VKF-Verzeichnis 40-15) waren deckungsgleich oder bereits korrekt vermerkt.
Kuenftige Laeufe brauchen nur noch das Delta.

---

## 2 · Der Refuter hat dreimal mehr getan als bestaetigen

Das ist die Beobachtung dieses Laufs. In drei von sechs Feldern war die Meldung formal sauber —
richtige Zeilen, richtige Zitate — und die **Diagnose trotzdem falsch oder schaedlich**.

**(a) Die Bringschuld, die es gar nicht gab.** Uebergabepunkt 2 aus Run 41 lautete: die uebrigen
KI-Dokument-Funde des Energie-Laufs 161 sind noch nicht auf ihre Abnehmer gesichtet. Der Melder
fand einen echten Textwiderspruch («E-R161-3 vollstaendig geschlossen» gegen «docx/EML inhaltlich
nicht geprueft») und wollte einen Folgeeintrag oeffnen, der 12 Dateien «tatsaechlich oeffnen»
laesst. **Der Refuter hat das umgedreht:** PL-03 wurde am 28.07.2026 von `planungsgrundlagen` als
**Vollinventar aller 153 Dateien** geprueft, jeder Nicht-Treffer inhaltlich geoeffnet, Korpus
seither unveraendert (`find -newer`, 0 Aenderungen). Es sind exakt dieselben 153 Dateien. Die
vom Melder besonders dramatisierte `Re- Biwak.eml` ist namentlich als «bestaetigter Nicht-Fund»
abgehandelt, und `08 QS/Die feuerpolizeilichen Bedingungen.docx` war schon am **13.07.2026** als
private ChatGPT-Notiz erkannt. **Der Folgeeintrag haette eine abgeschlossene Doppelarbeit
bestellt.**

Zwei Lehren, die bleiben. Erstens: **«kein Zielort» war ein Fehlschluss.** Der Melder schloss aus
«`brandschutz` ist nur ein Skill, keine `wissen/`-KB», es gebe keinen Empfaenger. Zustaendig ist
`planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` samt eigenem Brandschutz-Abschnitt in
dessen QUESTIONS. Zweitens: der Rest-Vorbehalt liegt bei **PL-02**, nicht PL-03 — dort sind fuenf
von rund 20 Energie-Kandidaten geoeffnet, der Rest ist Analogieschluss. **Der Melder hatte genau
die falsche Bibliothek als die geschlossene gefuehrt.** Beides ist additiv nachgetragen.

**(b) Recht in der Sache, falsch in der Begruendung.** Zur EN-102-Ausgabe «Dez. 2018» wollte der
Melder einen Verwechslungs-Vermerk setzen (Verwechslung mit EN-112 «Kuehlraeume») und stuetzte
sich dabei auf `energie/outputs/2026-08-24_en-102-ausgabedatum-korrektur.md`. Dieses Dokument
wurde **am selben Tag von der eigenen KB widerrufen**: das fuehrende Destillat haelt fest, die
Dez.-2018-Fassung sei eine echte **Vorauflage** von EN-102 selbst, beide Ausgaben lagen
nebeneinander vor, «richtig war die Korrektur des geltenden Standes auf Januar 2020, falsch war
ihre Begruendung». **Ein `outputs/`-Dokument ist kein Fuehrungsstand.** Das ist die Regel, die
dieser Fall belegt — und sie ist die Schwester des Befunds aus Run 41, wo ein Melder auf ein
Destillat verweisen wollte, das die *Abwesenheit* einer Methode belegt.

Bemerkenswerter ist, was der Refuter **stattdessen** fand: die einzigen zwei materiellen
Aenderungen der EN-102-Revision liegen in **Kapitel 8** — und die **Free-Cooling-Erleichterung**
(keine Pflicht zur automatischen Sonnenschutzsteuerung ohne eingebaute Kaeltemaschine; Erdsonde
und Grundwasser gelten nicht als aktive Kuehlung) fehlte in `planungsgrundlagen` vollstaendig,
null Treffer. Der Melder hatte genau das als Nicht-Befund abgehakt: «no Free-Cooling references
— not a cross-KB issue». **Die Abwesenheit war hier der Befund.**

**(c) Der Nullbefund, der einen Fehler verdeckte.** Im Rotationsfeld meldete der Melder «KEIN
BEFUND» und begruendete es unter anderem damit, die vier `kunde-bopp`-Artikel seien in der
heutigen Pflege-Session «bereits gegen den eigenen Bestand bereinigt». Der Cross-KB-Nullbefund
haelt — aber die Begleitbehauptung nicht: `kunde-bopp/wiki/QUESTIONS.md` fuehrte in der
**«beantwortet»-Sektion** die Baumassenreserve Giebelweg 12 mit «volle Attika budgetkonform,
Reserve **8 m³**». Das ist der am 12.06.2026 **verworfene** Stand ueber ein ausgemitteltes
massgebendes Terrain; der eigene Artikel derselben KB haelt zwei Bildschirmseiten weiter fest,
dass eine Ausmittelung ueber den Fussabdruck **unzulaessig** ist, und nennt den Endstand
**1'162 m³, Reserve 105 m³**.

Der Refuter hat den Beleg am Original geholt (PROJEKT-STAND.md im Projektordner, drei
Nachweisversionen desselben Tages) und dabei zwei Scheinwidersprueche selbst verworfen, damit sie
kein spaeterer Lauf erneut aufgreift. **Aussenwirkung:** die Reserve traegt die Einwendung vom
30.06.2026 an die Gemeinde Langnau a/A. 8 m³ statt 105 m³ ist der Unterschied zwischen «am
Anschlag» und «belastbarer Spielraum» — und die dahinterliegende Methode waere gegenueber der
Behoerde nicht haltbar.

Die Chronologie macht den Fall lehrreich: Run 21 korrigierte am 30.07.2026 den **Artikel** und den
**Output**, nicht diese Datei. Am 24.08.2026 fasste eine Pflege-Session denselben Absatz an
(Nachtrag zur ausstehenden Gemeindeantwort) und liess die Zahl daneben stehen. **Eine falsche
Zahl in einer «beantwortet»-Sektion ist gefaehrlicher als eine offene Frage** — sie wird zitiert,
nicht geprueft.

---

## 3 · normen ↔ baurecht: der Beleg lag in der eigenen KB

`baurecht/wiki/bauausfuehrung-und-baukontrolle.md` fuehrte die SIA-Empfehlung 431 mit
«**SN 409 431**». Amtlich gilt **SN 509 431**.

Entscheidend war eine Quelle, die der Melder nicht fand: **der Widerspruch ist in `baurecht`
selbst amtlich aufgeloest.** `raw/260607_amtlich_zh_bbv1.md` Z. 1080 gibt den Anhang BBV I im
Wortlaut wieder — «Empfehlung SIA 431, Ausgabe 1997, Entwaesserung von Baustellen (Norm
**SN 509 431**)» —, und zwei Zeilen darueber steht in derselben Liste SIA 430 = SN 509 430. Die
Wiki-Zeile widersprach also nicht nur der Normen-KB, sondern **ihrem eigenen raw-Beleg**, auf den
sie sich ausdruecklich beruft.

Der Refuter hat den Zielumfang erweitert: die Zahl steht auch im Buch-Destillat
`buecher/band-1/08-ausfuehrung-teil2-baustellensicherheit.md`. **Waere nur die Wiki-Zeile
korrigiert worden, haette der naechste Buch-Lauf den Fehler zurueckgeschrieben.** Die
Buchwiedergabe bleibt unveraendert (offen, ob das Standardwerk den Dreher druckt — die Screenshots
liegen auf SharePoint), daneben ein Korrekturvermerk mit Nichtzurueckschreib-Auflage. Kante in
`normen/wiki/REGISTER.md` gesetzt, damit kuenftige Zitate die Nummer aus dem Register ziehen.

**Aussenwirkung:** SIA 431 ist ueber Ziff. 2.71 Anhang BBV I verbindlich erklaert; die SN-Nummer
wandert in das Normenverzeichnis eines Devis (BKP 130), in einen Werkvertrag SIA 118 und in
Entwaesserungskonzepte gegenueber dem AWEL.

---

## 4 · SIA 2040 ist seit anderthalb Jahren abgeloest — und stand vierfach unvermerkt

`planungsgrundlagen` fuehrte die SIA-2040-Zielwerttabelle (Erstellung/Betrieb/Mobilitaet) mit dem
Hedge «⚠ Edition vor Zitat verifizieren». **Der warnt vor der falschen Auflage, nicht vor der
Abloesung.** Zwei Zeilen darueber stand SIA 390/1 als dritte gleichrangige Label-Option neben
Minergie-ECO und SNBS — als **Parallelweg**, wo es die **Nachfolgenorm** ist.

Belegt in der fuehrenden KB: `normen/wiki/REGISTER.md` Z. 1082/1083 (Statuskorrektur 24.08.2026,
am Herausgeber geprueft) und `energie/wiki/graue-energie.md`. **SIA 390/1:2025 «Klimapfad —
Treibhausgasbilanz ueber den Lebenszyklus von Gebaeuden»** ist seit **01.02.2025** publiziert und
ersetzt SIA 2040:2017 samt Korrigendum. Der Refuter fand zwei weitere betroffene Stellen, die der
Melder uebersah.

**Geldfolge:** die Tabelle steht unmittelbar neben dem realen JANS-Deliverable (Oekobilanz
Wettbewerb «Schlierenweg 31») und ist damit die Vorlage fuer Wettbewerbs- und
Machbarkeitsbeitraege. Ein Nachhaltigkeitskapitel, das eine abgeloeste Norm als geltende
Zielwertbasis nennt, ist in einer Abgabe direkt angreifbar.

**Grenze eingehalten:** aus SIA 390/1 wurde **keine Zahl** uebernommen, nur der Statusvermerk. Der
Normtext ist kostenpflichtig und normen-seitig ausdruecklich nur bibliografisch belegt.

---

## 5 · Zwei bestaetigte Nullbefunde

**`kunde-bopp` ↔ `projekt-lessons`** beruehren sich inhaltlich nicht (0 Treffer beidseitig). Das
ist korrekte Scope-Trennung: alle Bopp-Faelle sind Machbarkeits-/STWEG-/TDD-Studien, der
verallgemeinerbare Ertrag aus Giebelweg 12 ist an den Skill `massgebendes-terrain` zurueckgeflossen.
⚠ Registervermerk gesetzt: die Melder-Begruendung «`projekt-lessons` ist auf Bauleitung/Healthcare
**begrenzt**» ueberzeichnet dessen CLAUDE.md («**Schwerpunkt**», dazu «Kosten & Termine» und
«Behoerden & Bewilligungen») und darf nicht als Ausschlussgrund zitiert werden.

**`grobkosten` ↔ `immobilienbewertung` ↔ `skills/kostenschaetzung`**, achte Pruefung desselben
Dreiecks (16, 27, 28, 29, 31, 35, 37, 39, jetzt 42). Der Nullbefund haelt der Gegenpruefung
stand: Fuehrungs-Kanten beidseitig und am Ort der Verwendung gesetzt, der Averecura/Vella-Vorbehalt
reist bis in die Parameter-Sets von `entwurfs-referenzen` mit. Der gefaehrlichste Kandidat war die
Zahl **1'100**, die in zwei Einheiten kursiert (CHF/m³ GV in `grobkosten`, CHF/m² HNF im Skill) —
an beiden Stellen sauber deklariert, der Skill warnt sogar ausdruecklich. **Das Dreieck ist
gesaettigt**; kuenftige Laeufe nur noch bei neuem Kennwert-Zuwachs.

**Dritter Nullbefund, im Hauptkontext geprueft:** `architektur-fachwissen` traegt weiterhin nur
Inventar und `outputs/`, **kein Destillat** — die KB ist wie in Run 41 prognostiziert noch nicht
faellig.

**Betriebsbefund aus Synergie-Lauf 17 erledigt:** der Selfcommit-Rebase-Konflikt (seit 12:45,
NAS-Repo voraus 19 / hinterher 51) ist behoben; der native Log zeigt seit 22:30 wieder «push OK»,
das Repo ist bis auf die laufende `station-status`-Bewegung sauber. Kein Handlungsbedarf.

---

## 6 · Ausgefuehrte Aktionen (9, alle additiv, alle nachgemessen)

| # | Datei | `--numstat` | Inhalt |
|---|---|---|---|
| 1-5 | `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` | **45/0** | Abstandbefreiung praezisiert · Blitzschutz-Fassungsvorbehalt · §5ac-Selbstwiderspruch · GVZ-RWA-Vorbehalt · BSV-2015-Kante |
| 6 | `planungsgrundlagen/wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` | **17/0** | EN-102-Editionsklaerung + Free-Cooling |
| 7 | `planungsgrundlagen/wiki/energie-uebersicht.md` | **4/4** | SIA 2040 → SIA 390/1, drei Stellen + EN-102-Datenstand |
| 7b | `planungsgrundlagen/wiki/energie-minergie-referenzprojekt-maison-climat.md` | **1/1** | SIA-2040-Abloesungsvermerk |
| 8 | `baurecht/wiki/bauausfuehrung-und-baukontrolle.md` | **9/1** | SN 409 431 → SN 509 431 + Beleg |
| 8b | `baurecht/buecher/band-1/08-ausfuehrung-teil2-baustellensicherheit.md` | **2/0** | Korrekturvermerk am Ursprung |
| 8c | `normen/wiki/REGISTER.md` | **1/1** | SN 509 431 nachgetragen |
| 9 | `energie/wiki/QUESTIONS.md` | **25/0** | E-R161-3 richtiggestellt, PL-02-Vorbehalt |
| 10 | `kunde-bopp/wiki/QUESTIONS.md` | **14/0** | Giebelweg-Reserve 8 → 105 m³ |

Dazu CHANGELOG-Eintraege in `planungsgrundlagen` (52/0), `kunde-bopp` (28/0), `energie` (26/0),
`baurecht` (24/0), `normen` (17/0) und das Register `koordination/QUERBEZUEGE.md` (148/0).
**Kein globales Suchen-und-Ersetzen. Keine Datei hat unbeabsichtigt Zeilen verloren** — die drei
`/1`-Werte sind je die eine gewollte Zeilenersetzung.

---

## 7 · Offene Entscheide fuer Raphael

Keine **neuen** Entscheide aus diesem Lauf. Alle neun Befunde hatten eine klare, additive
Aufloesung; nichts Destruktives, nichts Mehrdeutiges.

**Unveraendert offen aus frueheren Laeufen** (der `hub-chef` traegt sie weiter):
**E4 Honorar-Kategorien-Skala** (Symbol `n` statt `q`, sieben statt sechs Kategorien, Healthcare
zwei Stufen hoeher — beide Fehler senken systematisch das eigene Honorar) · **Zusammenlegung der
zwei BSV-2015-Destillate** innerhalb `normen` (destruktiv, braucht Einzelfreigabe; durch die
heute gesetzte Kante jetzt vom Wegweiser aus sichtbar) · **Blitzschutz-Zustaendigkeit** (geltende
Fassung 2017 in `energie`, ueberholte 2015 in der fuer Fassungsstaende fuehrenden KB `normen` —
**dieser Lauf hat gezeigt, dass die Arbeitsteilung praktisch funktioniert**: der geltende Wert war
in `energie` abrufbar, als der Wegweiser den falschen fuehrte; die Frage ist damit weniger
dringlich als am 24.08. morgens) · **SYN-46** (Gattungsluecke Scripts in `rollen-map.tsv`) ·
**Fassungsvorbehalt am Buch-Layer `baurecht`** · **SYN-34** (Garantieformel in
`skills/ausschreibung` ohne den Hinweis auf die seit 01.01.2026 zwingende 60-Tage-Ruegefrist nach
SIA 118-C1:2026 — **Vertragsbedingungs-Text mit Aussenwirkung, der aelteste ungeloeste Posten der
Reihe**) · SIA 382/2 Ausgabe 2004/2005 · Ticket `T-Regelgeschoss` · E3 Maison Climat.

---

## 8 · Uebergabe an Run 43

1. **Der Wegweiser ist abgetragen — der naechste grosse Einzelartikel ist zu bestimmen.** Nach
   demselben Muster lohnt ein ganzflaechiger Sweep bei jedem `established`-Artikel, der
   **fremden Normwortlaut materiell wiedergibt** und ueber 1'000 Zeilen traegt. Kandidaten aus
   diesem Lauf: `planungsgrundlagen/wiki/energie-uebersicht.md` (heute an vier Stellen korrigiert,
   nie ganzflaechig geprueft) und `baurecht/wiki/bauausfuehrung-und-baukontrolle.md`.
2. **Die Regel, die dieser Lauf zweimal belegt hat: ein `outputs/`-Dokument ist kein
   Fuehrungsstand.** Beim EN-102-Fall trug das `outputs/`-Dokument die widerrufene Begruendung,
   das Destillat den geltenden Stand. **Vorschlag fuer Run 43** (kein Rule-Eingriff ohne Raphael):
   in Rule `wissens-bibliothekar` den Satz ergaenzen, dass `outputs/` Laufprotokoll ist und
   Fuehrungsstand ausschliesslich in `wiki/` bzw. `destillate/` liegt. Dasselbe gilt fuer
   `QUESTIONS.md`-Laufeintraege (append-only, nie rueckwirkend korrigieren — heute zweimal
   angewandt).
3. **Der Fehlertyp «falsche Zahl in der beantwortet-Sektion» verdient eine gezielte Suche.** Der
   Giebelweg-Fall zeigt: eine erledigte Frage wird zitiert, nicht geprueft, und eine
   Teil-Nachfuehrung (Artikel ja, QUESTIONS nein) hinterlaesst genau dort den alten Stand. Ein
   Lauf, der in allen KBs die «beantwortet»-Abschnitte gegen den zugehoerigen Artikel difft, waere
   der naechste ertragreiche Sweep.
4. **Rotation:** `twin` ↔ `spec` pausiert seit Run 41 · `architektur-fachwissen` wird beim ersten
   **Destillat** faellig (heute wieder nur Inventar) · `bauprodukte` und `wettbewerbs-dna` waren
   lange nicht an der Reihe · das Kostendreieck ist gesaettigt und kann aus der Rotation fallen.
5. **Der Refuter hat in drei von sechs Feldern die Aktion korrigiert statt sie zu bestaetigen**
   (Run 41: zweimal, Run 40: einmal). Das Verhaeltnis steigt. Der adversariale Zuschnitt —
   Melder auf `sonnet`, Refuter im Hauptmodell mit dem ausdruecklichen Auftrag zu **widerlegen** —
   ist der Ertragstreiber dieser Reihe und bleibt.

---

*Bericht des Wissens-Chefs, Run 42, Lauf 24.08.2026. Fan-out und Verifikation ueber das
Workflow-Tool (6 Melder `model: sonnet` nach Rule `modellwahl-routine`, 6 Refuter im Hauptmodell);
Uhr-Kontrolle, Nachmessung der Zielzeilen, drei eigene Pruefungen im Hauptkontext (Giebelweg-
Gegenprobe am Artikel, `architektur-fachwissen`, Repo-/Selfcommit-Zustand), Urteil, Aktionen und
Registerpflege ebenfalls im Hauptkontext. Keine Mail — stiller Lauf nach Rule `auto-verbesserungen`
260803; keine neuen offenen Entscheide, der `hub-chef` traegt die alten weiter.*
