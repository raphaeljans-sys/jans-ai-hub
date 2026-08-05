# Normen-Training Run 45 (MacBook Pro, 06.08.2026) — der Verifikations-Rückstand ist abgearbeitet, und ein LV-relevanter Fehler steckte im frischesten Destillat

**Kurzfassung.** Dieser Lauf hat den vom Run-43-Report ausgewiesenen Rückstand vollständig
abgearbeitet: **alle neun Positionen mit Marker `[~]`** (destilliert, Verifikation offen) haben
je eine unabhängige Widerlegungs-Prüfung durchlaufen, alle Befunde sind inline eingearbeitet, das
Inventar ist nachgeführt. Dazu kommen **ein neues Destillat** (VKF-Merkblatt 2001-15 in der
Vollrevision 2022, der P1-Rückstand vom 05.08.) und **vier geschlossene Rückstände** aus
`wiki/QUESTIONS.md`.

**Verdikte: 8 x BEANSTANDET, 1 x BESTANDEN.** Das eine Bestandene ist die Nachricht: die Matrizen
des GVZ-Merkblatts 30.17.3, an denen die erste Runde sechs Kernbefunde fand, sind jetzt zellengenau
nachgemessen und zweifach unabhängig bestätigt. Es ist der erste sauber bestandene Kern in einer
langen Reihe.

Der folgenreichste Befund steckt ausgerechnet im Destillat, das in diesem Lauf **neu** entstanden
ist: die Brandlastgrenze von 200 MJ/Laufmeter war der falschen Kabelklasse zugeordnet. Ein Refuter
im selben Lauf hat ihn gefunden, bevor das Destillat je zitiert wurde.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | **rc=0** (01:28 CEST) — die Blockade, an der Run 44 scheiterte, besteht nicht mehr |
| NAS | gemountet |
| Kollisionsschutz `ps` | kein zweiter Normen-Lauf |
| Stations-Split | eingehalten — nur VKF und PL-02-Kern, kein DIN/VSS/RAL |
| Quellzugriff OneDrive | alle neun Quell-PDF lesbar, keine TCC-Blockade |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 44) vergeben |

### Ein Nebenbefund zum Zugriffs-Check, der einen künftigen Lauf retten kann

Mein erster Zugriffs-Check meldete **alle neun Dateien als blockiert**. Das war kein TCC-Problem,
sondern mein eigener Pfadfehler: die Ordner `04_Merkblätter`, `06_Richtlinien` und
`09_Sanitaereinrichtung` liegen **nicht** unter `02_Normen/`, sondern eine Ebene höher, direkt
unter `PL - 02_Recht_Norm/`. Das Inventar führt die Pfade genau so; ich habe sie falsch aufgelöst.

Erwähnenswert ist das, weil ein «BLOCKIERT» auf allen Dateien exakt wie die bekannte
TCC-Blockade aussieht — und der Task-Text verlangt in diesem Fall den Abbruch mit Fehler-Report.
Ein Lauf könnte hier also fälschlich aufgeben. **Merkregel: bei flächigem Zugriffsfehler zuerst
`ls` auf die Elternebene, bevor eine TCC-Blockade diagnostiziert wird.** Ein echter TCC-Fall
liefert «Operation not permitted», ein Pfadfehler «No such file or directory» — die
Fehlermeldung selbst unterscheidet die Fälle, wenn man sie liest statt nur den Rückgabewert.

## 2. Der Vorrang-Auftrag, zum siebten Mal

Der Task-Text verlangt seit dem 29.07.2026 die achte Lignatec-Runde mit rechnerischer Aufnahme
von Tab. 3 und Tab. 4. Sie wurde in **Run 38** gefahren; seither haben die Läufe 39 bis 44 das
sechsmal neu festgestellt, jedes Mal auf Kosten von Kontext.

Dieser Lauf hat **keine** Lignatec-Runde gefahren und kann die Erledigung daher nicht aus eigener
Anschauung bestätigen — er gibt sie als Fremdbefund weiter und hat stattdessen die Grundarbeit
priorisiert. Das ist auszuweisen statt zu verschweigen.

**Konkreter Ersatzvorschlag für die Auftragszeile** (siebte Wiederholung der Bitte; ich nehme die
Umstellung nicht selbst vor). Der ganze Block «VORRANG-AUFTRAG» wäre zu ersetzen durch:

> ## Vorrang: der ausgewiesene Rückstand des letzten Lauf-Reports
>
> Lies zuerst den jüngsten Report unter `outputs/` und arbeite den dort im Abschnitt «Was
> dieser Lauf NICHT geprüft hat» ausgewiesenen Rückstand ab, P1 vor P2. Erst wenn dieser
> Rückstand leer ist, gehe zum regulären Lauf über (offene `[ ]`- und `[~]`-Positionen des
> Inventars, danach `wiki/QUESTIONS.md`).

Das hält den Auftrag selbstaktualisierend, statt ihn an einem erledigten Einzelfall festzunageln.
Für den Lignatec bleibt die inhaltliche Lage unverändert: ungeprüft ist weiterhin der **Fliesstext
der Kapitel 1 bis 4** (S. 3, 6 f., 10 f., 14), und eine Seiten-Inventur nach dem Muster
`training/l41-seiteninventur.md` existiert für ihn nicht. Eine Umstellung auf Ereignis-Trigger
wird deshalb **weiterhin nicht vorgeschlagen**.

## 3. Die neun Verifikationen

Je Position ein unabhängiger Refuter mit Rendering-Pflicht für alle Tabellen (Methodik-Pflicht 8),
beiden Fragerichtungen (Pflicht 6) und eigenem `/tmp`-Präfix (Pflicht 5). Alle Befunde wurden
**inline** eingearbeitet (Pflicht 9), nicht bloss angehängt.

| Destillat | Verdikt | Kern |
|---|---|---|
| `gvz-rwa-parkhaus-einstellraum` | **BESTANDEN** | Matrizen 6.1/6.2 zellengenau nachgemessen, zweifach bestätigt; 2 Kernbefunde ausserhalb der Matrizen |
| `swki-va103-01-2017` | BEANSTANDET | 3 Kernbefunde, 8 Abdeckungslücken |
| `geberit-sgvsb-sanitas-troesch-arbeitshilfen-sanitaerapparate` | BEANSTANDET | 4 Kernbefunde, 3 Abdeckungslücken |
| `plan7-badezimmer-alterswohnung` | BEANSTANDET | 3 Kernbefunde; SIA-500-Abgleich nachgeholt |
| `stadt-zuerich-leitfaden-boulevardgastronomie-2008` | BEANSTANDET | 3 Kernbefunde, 5 Abdeckungsbefunde |
| `afs-leitfaden-dachlandschaften-2009-vollfassung` | BEANSTANDET | 4 Kernbefunde, 4 Nebenbefunde |
| `afs-leitfaden-dachlandschaften-2010-praesentation` | BEANSTANDET | 3 Befunde |
| `afs-leitfaden-kunst-im-oeffentlichen-raum-2009` | BEANSTANDET | 2 Kernbefunde |
| `stadt-zuerich-leitfaden-mobilitaet-2000-watt-2007` | BEANSTANDET | 3 Kernbefunde, 3 Nebenbefunde, 1 Abdeckungsbefund |

### Die fünf Befunde, die über Formalien hinausgehen

**1. VKF 2001-15:2022, Tabelle 1 Fussnote [2] — direkte LV-Wirkung.** Das Destillat verknüpfte
die Brandlastgrenze von 200 MJ/Laufmeter mit Kabeln kritischen Verhaltens (cr). Am Original steht
das Gegenteil: cr-Kabel dürfen in horizontalen Fluchtwegen **überhaupt nicht** eingesetzt werden,
unabhängig von jeder Brandlast; die 200 MJ gelten für die dort zulässigen Kabel. Vom Hauptprozess
am eigenen 200-dpi-Rendering der Seite 8 wörtlich nachgelesen und bestätigt. Die Stelle ist im
Destillat ausdrücklich als Praxis-Transfer für `ausschreibung` und `brandschutz` markiert — in
der bisherigen Fassung hätte sie ein cr-Kabel bis 200 MJ/Laufmeter als zulässig spezifiziert.
Wichtig für die Korrektur: cr ist **nicht** generell verboten, auf oder in brennbaren
Gebäudeteilen ist RF2(cr) ausdrücklich vorgesehen. Das Verbot betrifft allein die horizontalen
Fluchtwege.

**2. SWKI VA103-01: dokumentierte Korrekturen, die nie im Fliesstext ankamen.** Das Frontmatter
wies drei Seitenkorrekturen als erledigt aus; der Fliesstext trug weiterhin die alten, falschen
Fundstellen. Schwerer noch: die als «korrigiert» gemeldete Fehlverortung war unverändert
vorhanden — mechanische Bemessungsregeln standen unter der Überschrift «Natürliche Lüftung»,
während die eigene Öffnungsabstandsregel der natürlichen Lüftung (S. 31) im Destillat ganz
fehlte. Beide Kapitel führen eine 20-m-Regel, aber verschiedene. Das ist Methodik-Pflicht 9 im
Realfall: der Anhang dokumentiert, der Fliesstext lügt weiter.

**3. AFS-Leitfaden Dachlandschaften, Vollfassung: 21 fehlende Grundsätze und ein systematischer
Seitenversatz.** Die 17 nummerierten Solar-Grundsätze der Kategorien A bis E und die vier
Grundsätze Liftanlage fehlten vollständig; das Destillat gab nur die Kategorie-Label wieder. Beides
ist nachgetragen. Dazu waren sämtliche Grundsatz-Seitenzitate um genau eine Seite zu tief — das
Destillat zitierte jeweils die Kapitel-Einleitungsseite statt der Seite mit der Regelliste. Der
Versatz (gedruckte Seite = PDF-Blatt minus 1) ist vom Hauptprozess an zwei Stellen am eigenen
Rendering nachgemessen und im Destillat als Lesehinweis verankert.

**4. Boulevardgastronomie: eine falsch verschmolzene Adresse.** Das Destillat führte
«Förrlibuckstrasse 61 / Postfach 1612, 8021 Zürich». Am Original stehen zwei getrennte Angaben:
Förrlibuckstrasse 61, **8005** Zürich, und Postfach 1612, **8021** Zürich. Genau die Fehlerklasse
der Rule `identifikatoren-verifizieren` — der Wert wäre unverändert in ein Anschreiben gewandert.

**5. Plan7 Badezimmer: der nie gefahrene Normabgleich war das eigentliche Ergebnis.** Das
Destillat verlinkte `[[sia-500-2009]]`, hatte seine Masse aber nie damit verglichen. Nachgeholt
ergibt sich: sechs von sieben Massen sind mit SIA 500 Anhang E deckungsgleich, der Wandhaken
weicht um 100 mm nach unten ab, und die Waschtisch-Unterkante füllt eine Normlücke mit einer
Hersteller-Setzung ohne Normdeckung. Erst das beantwortet die Frage, ob das Blatt in einer
JANS-Planung verwendbar ist.

## 4. Neues Destillat: VKF-Merkblatt 2001-15 «Solaranlagen», Ausgabe 01.01.2022

Der als P1 geführte Rückstand vom 05.08. ist geschlossen. Alle vier Fingerabdrücke des
Bezugswegs wurden unabhängig nachgemessen und exakt getroffen (15 Seiten, 524'403 Bytes, MD5
`a17958fdf95c720434ffa90117964b23`, Titelblatt «01.01.2022 / 2001-15de»). Das PDF bleibt bewusst
in `/tmp` und nicht im Repo (Urheberrecht VKF); im Destillat stehen nur URL, Seitenzahl und MD5
als Fingerabdruck.

Die drei bekannten Deltas sind am Original bestätigt (Unterdachbahnen RF3(cr) ohne jede
Einschränkung; Flächenschwelle «> 1200 m²», im selben Absatz daneben «≤ 1200 m²» für die
Feldgrösse; RWA-Abstand 2.0 m nur noch als massnahmenfreie Schwelle im Anhang mit Lichtraumprofil).
Fünf weitere kamen dazu: Tabelle 1 neu gefasst, Kap. 3.3 «Naturgefahren» als neues Kapitel mit
Verweis auf SIA 261/261-1, die Anhänge S. 13 und 14 komplett neu, Batterieanlagen als eigene
Gefahrenquelle, Ziff. 5 «Gültigkeit» neu.

**Ein methodischer Vermerk, der Arbeit spart:** In dieser Datei liegt **keine**
Textlayer-Verfälschung der Vergleichszeichen vor. Die in dieser KB dokumentierte Fehlerquelle
(≤/≥ wird zu </>) trat hier nicht auf; beide Zeichen wurden korrekt extrahiert und stimmen mit
dem Rendering überein. Die generelle Vorsichtsregel bleibt für andere VKF-Dateien gültig, aber
für diese Quelle ist der Verdacht abgearbeitet und muss nicht erneut aufgemacht werden.

## 5. Vier Rückstände aus QUESTIONS geschlossen, drei Statusfragen am Herausgeber belegt

Alle Herausgeber-Angaben hat der Hauptprozess **selbst** abgerufen, nicht vom Agenten übernommen.

- **SIA 2030 — das Register war falsch.** Es führte «2010 gültig». Tatsächlich ist SIA 2030:2010
  archiviert (bis 31.10.2021); geltend ist **SIA 2030:2021 «Beton mit rezyklierten
  Gesteinskörnungen»** (ab 01.11.2021, Revision 1 vom 01.11.2025, Korrigenda C1). Auch der Titel
  hat gewechselt. Register korrigiert.
- **SIA 162/4 — Nachfolge jetzt herausgeberseitig belegt** (Rubrik «Nachfolger» auf der
  Produktseite), nicht mehr nur sekundärquellengestützt. Schliesst Übergabe E-123-3. Präzisierung:
  es heisst **SIA 2030**, nicht «MB 2030» — so ist es im Shop nirgends beschriftet.
- **SIA 118 — E-123-6 geschlossen**, mit Selbstkorrektur (siehe unten). Neu belegt und nachgetragen:
  Korrigenda C1 als Download-Anhang und Revisionsstand 01.12.2025.
- **SIA 493-C1 — existiert**, 13 Seiten, kostenlos beziehbar, ebenfalls archiviert per 30.06.2022.
  Das Fehlen eines Nachfolgers ist jetzt **strukturell** belegt: die Produktseite hat gar keine
  «Nachfolger»-Rubrik, während dieselbe Rubrik bei SIA 162/4 vorhanden und befüllt ist.
- **Bring-Schuld-Info für Raphael, verifiziert:** SIA 430:2023 kostet **90.00 CHF**,
  SIA 118/430:2023 **80.00 CHF** (shop.sia.ch, Papier oder Download SRD). Achtung: der kursierende
  Wert 80.00 CHF für SIA 430 gehört zur archivierten Vorgängerausgabe.

### Selbstkorrektur, die ins Gedächtnis gehört

Der SIA-118-Befund sah zunächst nach einem Fehler mit Hub-Reichweite aus, in derselben Klasse wie
der BKP-271.10-Fall aus Run 43: die KB führt nur `sia-118-1991`, und die Rule `normen-referenz`
zieht für Werkvertrag und LV genau dieses Destillat. Die Gegenprüfung zeigte, dass Register
Zeile 84 und das Destillat-Frontmatter die Ablösung längst führten. **Es gab nichts zu melden.**

Daraus ist **Methodik-Pflicht 10** entstanden (in `training/PROGRAMM.md` verankert): eine externe
Statusrecherche wird gegen den eigenen Bestand geprüft, bevor sie als Befund gilt. Der Ertrag war
trotzdem real, nur kleiner — die Korrigenda und der Revisionsstand fehlten wirklich. Die richtige
Formulierung lautet dann nicht «die KB hatte es falsch», sondern «die KB hatte X, neu ist Y».

## 6. Nachgeführt

`training/norm-inventar.md` (neun Positionen von `[~]` auf `[x] 260806`, je mit Verdikt und
Kernbefund in der Bemerkung) · `destillate/INDEX.md` (neuer Eintrag 2022er-Fassung, 2015er-Eintrag
auf «erledigt» gesetzt) · `wiki/REGISTER.md` (vier Zeilen: SIA 118, SIA 162/4, SIA 2030, SIA 493) ·
`wiki/QUESTIONS.md` (Run-45-Block, Erledigt-Vermerk am 05.08.-Eintrag) · `training/PROGRAMM.md`
(Methodik-Pflicht 10) · `CHANGELOG.md`.

**Zur Bedeutung von `[x]`:** Es heisst «Verifikationsrunde gefahren und Befunde eingearbeitet»,
nicht «fehlerfrei». Der Status aller neun Destillate bleibt `speculative`. Das entspricht der
Praxis aus Run 43, wo fünf beanstandete Erstdestillate ebenso gehoben wurden.

## 7. Was dieser Lauf NICHT geprüft hat

Nach der Methoden-Lehre aus Run 36 auszuweisen:

- **Keine Lignatec-Runde.** Der Fliesstext der Kapitel 1 bis 4 (S. 3, 6 f., 10 f., 14) ist
  weiterhin nie systematisch gegen das Destillat gediffed, und eine Seiten-Inventur für den
  Lignatec existiert nicht. Das ist die nächste Methode auf einem ungeprüften Teil.
- **Keine Statushebung auf `established`.** Neun Destillate sind jetzt verifiziert und korrigiert,
  aber keines gehoben. Die Hebung verlangt eine Runde ohne Kernbefunde; acht von neun hatten
  welche. Beim GVZ-Merkblatt wäre sie nach Einarbeitung der zwei Legenden-Befunde erstmals
  ernsthaft zu prüfen.
- **SWKI VA103-01 bleibt die grösste offene Baustelle.** Von 110 Druckseiten sind 23 in dieser
  Runde gerendert gelesen worden; acht Kapitel sind als Abdeckungslücke benannt, aber nicht
  gefüllt. Bemessungsrelevant ist davon nur Kap. 2.3 (Emissionsgrundlagen, Herleitung der
  Kernformel).
- **Anhang S. 12 des VKF-Merkblatts** (Elektroschema) wurde nicht gerendert, nur über die
  Kapitelstruktur plausibilisiert. Die Zwischenausgabe 01.01.2017 hat weiterhin kein Destillat.
- **Die Ablage-Pendenz aus dem 05.08.-Eintrag ist bewusst nicht angefasst:** das SharePoint-Archiv
  hält an beiden Orten nur die Fassung 2015, trotz Ordnername «2015-17-22». Solange das so bleibt,
  erzeugt jeder Lauf, der brav «Primärquelle SharePoint» liest, denselben veralteten Wert erneut.
  Der Punkt verlangt Raphaels Entscheid und ist kein Claude-Alleingang.
- **Der Mac Mini ist ungeprüft** (DIN/VSS/RAL, Stations-Split).

## 8. Kein Versand

Nach Rule 260803 ist der Ertrag dieses Laufs ein Hub-Internum ohne Aussenwirkung: Wissensbasis-
Pflege, keine Frist, kein Termin, kein Kunde, kein Geld. **Keine Mail.** Der Eintrag geht ins
Logbuch, damit der Hub-Chef ihn im Tagesbriefing aufnehmen kann, wenn er ihn für berichtenswert
hält.

Zwei Punkte gehören dabei nicht untergehen, weil sie über diese KB hinauswirken: der
cr-Kabel-Befund berührt jedes künftige LV nach VKF 2001-15, und die verifizierten Preise für
SIA 430:2023 und SIA 118/430:2023 stehen einer Beschaffungsentscheidung nicht mehr im Weg.
