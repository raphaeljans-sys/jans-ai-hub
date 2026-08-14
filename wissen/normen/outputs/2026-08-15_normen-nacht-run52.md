# Normen-Training Run 52 (MacBook Pro, 15.08.2026) — ein Ordnername hat 76 Dateien unsichtbar gemacht, darunter zwei geltende Normen

**Kurzfassung.**

> **Neues Destillat: SIA 416/1:2007** (40 S. Scan, vollständig gerendert) — die Norm lag seit je
> im Haus, aber im Ordner `xalt`, und galt deshalb als Altausgabe. Schliesst QUESTIONS 260813.
> **Zweite geltende Norm im selben Ordner gefunden** (SIA 215:1978), zwei Beschaffungsposten
> abgegrenzt.
> **Gegenprobe zweiter Ordnung gefahren:** 6 von 6 schweren Kontrollen erkannt (Bedeutungsumkehr,
> weggelassene Bedingung, verschobene Fundstelle), 10 von 10 echten Aussagen bestätigt —
> **aber die Klasse «fehlender Inhalt» fiel vollständig durch (0 von 1).**
> **13 Fundstellen-Korrekturen** in einem `established`-Destillat, das inhaltlich fehlerfrei war.

## 1. Der Vorrang-Auftrag im Task-Prompt ist zum vierten Mal überholt

Der Prompt verlangt weiterhin die achte Runde für `lignum-lignatec-brandschutz` mit rechnerischer
Aufnahme von Tab. 3 und Tab. 4. Diese Runde ist **in Run 38 (30.07.2026) gefahren** (7 Kernbefunde,
4 Nebenbefunde), Run 39 und 40 haben die Folgeaufträge erledigt, das PROGRAMM.md hält es fest, und
die Runs 49, 50 und 51 haben es je einzeln zurückgemeldet. Dieser Lauf hat ihn folglich nicht
erneut ausgeführt, sondern den regulären Weg genommen. Der Vorschlag zur Entfernung steht seit
Run 51 offen und wird unter Ziff. 7 wiederholt.

## 2. Ausgangslage: das Inventar ist leer, der Bestand ist es nicht

Das SIA/VKF-Inventar führt **0 offene `[ ]`-Grunddestillate**; die verbliebenen fünf Positionen
sind kostenpflichtige Bring-Schulden, die Claude nicht beschaffen kann. Nach dem PROGRAMM wechselt
der Lauf dann auf die Vertiefungsstufen. Der Einstieg war der jüngste offene QUESTIONS-Eintrag
(260813): `sia-382-2-2011.md` verlinkt SIA 416:2003, zitiert im Text aber durchgehend
**SIA 416/1:2007** — zwei verschiedene Normen mit ähnlicher Nummer. Der Eintrag vermerkte, ein
Destillat zu 416/1 liege nicht vor.

Die Suche nach dem Original führte auf
`SIA_Norm/SIA_Normen/alle/xalt/neu/SIA 416_1_2007.pdf`.

## 3. Der Hauptbefund: «xalt» ist eine Behauptung über den Inhalt, keine Feststellung

Das Inventar trug seit Langem den Satz: «Die 9 xalt-Altausgaben werden gemäss Programm NICHT
destilliert.» Gemessen sind es **76 PDF** (57 direkt in `alle/xalt/`, 19 im Unterordner
`alle/xalt/neu/`). Der Unterordner heisst «neu», und das ist wörtlich zu nehmen.

Formulierung nach Methodik-Pflicht 10 — nicht «die KB hatte es falsch», sondern **«die KB hatte 9,
gemessen sind 76»**. Der Hauptprozess hat die entscheidenden Fälle selbst gegen `wiki/REGISTER.md`
und die Destillat-Deckung nachgemessen:

| Norm | Befund | Konsequenz |
|---|---|---|
| **SIA 416/1:2007** | REGISTER 2007✓ **geltend**, im Haus, kein Destillat | **destilliert** (Ziff. 4) |
| **SIA 215:1978** | REGISTER 1978✓ **geltend**, im Haus, kein Destillat | **neu als offene `[ ]`-Position P3** |
| SIA 242 / SIA 274 | REGISTER 2012✓ / 2010✓ geltend, **nicht im Haus** (nur Altausgaben bzw. VL-Entwürfe) | Beschaffung, nicht Loop |
| 136 · 222 · 233 · 234 · 235 · 280 · 381/1 · 381/2 | REGISTER: «alle zurückgezogen» ✗ | korrekt übersprungen |
| 151 · 178 | im REGISTER nicht geführt | Status ungeklärt (N52-6) |
| 251:2008 · 271:2007 · 273:1989 · 358:2010 · 500:2009 | identische Kopie auch in `alle/` | Dubletten, inhaltlich gedeckt |
| 17 Dateien | «Entwurf zur Vernehmlassung», Jahr «200X» / «201█» | kein Normstand, aber **Fassungsindikator** (N52-7) |

**Derselbe Mechanismus hat schon einmal zugeschlagen.** Run 29 (25./26.07.2026) fand die
vollständige 73-seitige SIA D 0165 «unbemerkt unter `xalt/`, fälschlich als ersetzt/alt geführt».
Damals wurde die **einzelne Datei** geheilt, der **Ordner** nie geprüft. Daraus die Lehre, gleiche
Familie wie Methodik-Pflicht 2 («Sprachvariante ist eine Behauptung, keine Feststellung»):

> **Eine Einzelfall-Heilung ersetzt die Bestandsaufnahme nicht. Wo ein Ordnername einmal
> nachweislich gelogen hat, ist der ganze Ordner aufzunehmen, nicht die gefundene Datei.**

**Offengelegte Schwäche der eigenen Messung.** Der erste Deckungs-Check des Hauptprozesses prüfte
nur `alle/` top-level und hätte damit Normen übersehen, die in Unterordnern liegen — dieselbe
Verengung, die er dem Subagenten vorwarf. Er wurde gegen den gesamten PL-02-Baum wiederholt; erst
die Kombination aus REGISTER-Status und Destillat-Deckung trägt die Tabelle oben.

**Zum Subagenten-Befund.** Der beauftragte Aufnahme-Agent klassierte 51 der 76 Dateien als
«GELTEND», darunter SIA 358:1996, SIA 116:1952 und SIA 380/1:2001 — alle nachweislich ersetzt. Der
Befund wurde nach Methodik-Pflicht 5 **nicht übernommen**, sondern durch eigene Messung ersetzt;
die Datei `training/xalt-bestandsaufnahme-260815.md` bleibt als Rohaufnahme erhalten, ihre
Klassenspalte ist ausdrücklich als nicht belastbar markiert. Brauchbar war daran die
Dateiaufnahme, nicht das Urteil.

## 4. SIA 416/1:2007 destilliert

`destillate/sia-416-1-2007.md`, 286 Zeilen. Reiner Scan ohne Textlayer, alle 40 Seiten in 300 dpi
gerendert und abgelesen; Tabellen 1-5 zellenweise (Methodik-Pflicht 8), Tabelle 6 (Brenn-/Heizwerte)
gelesen, aber die Zahlenwerte aus Urheberrechtsgründen nicht übernommen. **Folio = PDF-Blatt 1:1
verifiziert.**

Inhaltlich ist die Verwechslungsprüfung eindeutig: SIA 416:2003 ist die Flächen- und
Volumensystematik, SIA 416/1:2007 die darauf aufbauende energetische Schicht — Energiebezugsfläche
A_E (Ziff. 3.2), Gebäudehüllfläche A_b/A_th/A_inf (Ziff. 3.3), Energiekennzahl E (Ziff. 4.1). Sie
ersetzt die Empfehlung SIA 180/4:1982.

**Hauptprozess-Stichprobe am Original** (eigenes Rendering S. 23): Ziff. 3.2.1 und die Regel aus
Ziff. 3.1.3, dass Konstruktionsflächen A_KF, welche die thermische Gebäudehülle bilden, immer ganz
zur Energiebezugsfläche zählen — beide wörtlich bestätigt. Status bleibt `speculative`; die
Hebung entscheidet eine unabhängige Refuter-Runde, nicht dieser Lauf.

Folgearbeit erledigt: Frontmatter-Link in `sia-382-2-2011.md` umgehängt, die beiden
Nachtrags-Vermerke von Run 49 auf «erledigt» gesetzt, INDEX-Zeile ergänzt.

## 5. SIA 358:2010 — 13 Fundstellen falsch, kein einziger Zahlenwert falsch

Bei der Vorbereitung der Gegenprobe hat der Hauptprozess den deutschen Normteil (S. 5-10)
vollständig selbst gerendert und gelesen. Dabei fiel ein Fehlercluster in einem seit dem
12.07.2026 `established` geführten Destillat auf.

**Alle geprüften Zahlenwerte sind richtig** — 1,0 m, 0,90 m, 0,20 m, 0,65 m, 0,30 m, 0,12 m,
0,05 m, 0,75 m, 1,50 m, fünf und zwei Steigungen, SIA 179/261/262/263/265. Falsch sind die
**Fundstellen**:

- **Seitenangaben:** Kapitel 0 (S. 5), Ziff. 1.1-1.3.3 (S. 6) und Anhang B (S. 10) stimmen. Ab
  Ziff. 1.3.4 verschiebt sich alles um +1: Kapitel 2 stand als «S. 8» (richtig S. 7), Kapitel 3
  durchgehend als «S. 9», «S. 9-10» und «S. 10» (richtig durchwegs S. 8), Anhang A als «S. 10»
  (richtig S. 9). **PDF-Blatt und Folio stimmen 1:1** — der Versatz ist also nicht aus der
  Blattnummer entstanden, sondern beim Zusammenfassen verloren gegangen.
- **Ziffernzuordnung:** Die Nicht-Geltungs-Liste stand als «Ziff. 0.1.2» (richtig 0.1.3). Die
  Rollstuhlfahrer-Regel stand als eigene «Ziff. 1.3.4» — sie ist die **Fussnote 1) zur Tabelle in
  Ziff. 1.3.3**. Ziff. 1.3.4 und 1.3.5 waren zu einer Ziffer verschmolzen, ebenso 2.1.1 bis 2.1.4
  unter «2.1.1» und 3.1.3 bis 3.1.6 unter «3.1.3/3.1.4».

Alle Stellen sind **inline korrigiert** (Methodik-Pflicht 9), jede mit sichtbarem
⚠-Korrekturvermerk und der zuvor geführten Angabe. Die vier Ziffern 2.1.1-2.1.4 und die vier
Ziffern 3.1.3-3.1.6 sind einzeln ausgewiesen.

**Warum das zählt.** Die Rule `normen-referenz` verlangt für jede Norm-Aussage «Norm + Ausgabe +
Ziffer». Ein Destillat mit richtigen Werten und falschen Ziffern erzeugt Zitate, die in Devis,
Werkvertrag und Baueingabe formal korrekt aussehen und beim Nachschlagen ins Leere führen. Es ist
zugleich die Fehlerklasse, die eine Zahlenwert-Prüfung **strukturell nicht findet** — Run 51 hat
genau 15 Zahlenwerte kontrolliert und hier nichts gesehen, weil hier keine Zahl falsch ist.

## 6. Die Gegenprobe zweiter Ordnung (Übergabe Run 51, Punkt 1)

**Anlage.** 16 Behauptungen zu SIA 358:2010, blind vorgelegt, Auftrag «versuche zu widerlegen».
Sechs waren kontrolliert verfälscht; die Quelle hatte der Hauptprozess vorab vollständig selbst
gelesen, sonst hätte die Probe nichts gemessen.

| Fehlerklasse | Kontrollen | erkannt |
|---|---|---|
| Bedeutungsumkehr | 2 | **2** |
| Weggelassene Bedingung | 1 | **1** |
| Verschobene Fundstelle bei richtigem Inhalt | 1 | **1** |
| Veränderter Zahlenwert (Vergleichsbasis Run 51) | 2 | **2** |
| **Summe** | **6** | **6 (100 %)** |

Zehn echte Aussagen, zehn bestätigt: **null Falsch-Positive.** Die Qualität der Widerlegungen war
hoch — bei der weggelassenen Bedingung nannte der Agent von sich aus auch die abgeschwächte
Modalität («im Allgemeinen» gegen «in jedem Fall»), bei der verschobenen Fundstelle trennte er
ausdrücklich, dass der Inhalt richtig und nur die Ziffer falsch ist, und den Kugeldurchmesser
belegte er zusätzlich über die Schemazeichnung in Anhang A.

**Damit ist die offene Frage aus Run 51 beantwortet:** die Prüfstufe erkennt auch die schweren
Klassen, nicht nur Zahlendreher. Die 79/0-Verteilung aus Run 50 misst die Qualität der geprüften
Destillate, nicht die Blindheit der Prüfer.

### Der eigentliche Ertrag: eine Klasse fiel vollständig durch

Behauptung B02 war die versteckte siebte Kontrolle. Sie gab die Nicht-Geltungs-Fälle der
Ziff. 0.1.3 mit **zwei von drei** Punkten wieder; weggelassen war «in Teilen von Bauten, die nur
speziell ausgebildeten oder instruierten Personen zugänglich sind». Der Agent hat B02 **BESTÄTIGT
und die Lücke nicht einmal als Anmerkung erwähnt** — er schrieb, beide genannten Ausnahmen seien
wörtlich belegt, was zutrifft.

Das ist kein Versagen des Agenten, sondern der **Fragerichtung**. Eine unvollständige Aussage ist
wahr in allem, was sie sagt; mit dem Auftrag «widerlege» ist sie grundsätzlich nicht fassbar.
Run 51 hatte dasselbe schwächer beobachtet — Agenten meldeten Auslassungen «durchwegs als
Anmerkung ohne Verdikt-Wirkung»; hier fiel die Lücke ganz durch.

> **Methodik-Pflicht 6 ist damit erstmals empirisch für die Refuter-Stufe selbst belegt, nicht
> nur für Destillate: Eine Refuter-Runde, so gut sie widerlegt, ist kein
> Vollständigkeitsnachweis.**

Wer Vollständigkeit will, braucht die Gegenrichtung — Seiten-Inventur, rechnerische
Tabellenaufnahme, oder eine Anlage, die dem Agenten den Quellenabschnitt vorlegt und fragt, was das
Destillat davon **nicht** führt. Das ist als N52-2 offen.

## 7. Vorschläge an Raphael (nicht selbständig umgesetzt)

1. **Den Vorrang-Auftrag aus dem Task-Prompt entfernen.** Erledigt seit Run 38, viermal in Folge
   als überholt zurückgemeldet (49, 50, 51, 52). Solange er im Prompt steht, kostet er jeden Lauf
   Lesezeit und riskiert eine Ausführung.
2. **Methodik-Pflicht 11** (offen aus Run 49/50/51, unverändert): «Ein unverifiziertes Destillat
   ist kein Wissensstand, sondern ein Entwurf.»
3. **Methodik-Pflicht 12** (vorgeschlagen Run 51, unverändert): Nach jeder Status-Hebung prüfen, ob
   das Destillat noch eine Zeile trägt, die den Status als offen behauptet.
4. **Methodik-Pflicht 13 (neu, N52-2):** Eine Refuter-Runde darf nie als Vollständigkeitsnachweis
   protokolliert werden. Wo Vollständigkeit behauptet werden soll, ist die Gegenrichtung zu fahren
   und im Report auszuweisen, welche der beiden Richtungen gelaufen ist. Begründung: die
   Fragerichtung «widerlege» kann fehlenden Inhalt strukturell nicht erfassen — in dieser Runde
   erstmals kontrolliert gemessen (0 von 1), nicht bloss vermutet.
5. **Bestandshygiene erwägen:** Der Ordner `alle/xalt/neu/` enthält fünf Dubletten geltender
   Normen und zwei geltende Originale. Eine Umbenennung oder ein README im Ordner wäre billiger
   als die nächste Suche. **Das ist ein Eingriff in eine geteilte SharePoint-Bibliothek und wird
   deshalb nur vorgeschlagen, nicht ausgeführt.**

## 8. Offen — Übergabe

1. **N52-2** — Anlage für die Fehlerklasse «fehlender Inhalt» konstruieren (Fragerichtung
   umkehren).
2. **N52-4** — SIA 215:1978 destillieren (P3, geltend, im Haus, im Inventar als `[ ]` eingetragen).
3. **N52-5** — SIA 242:2012 und SIA 274:2010 beschaffen (nicht im Haus, wie die sechs ABB aus
   Run 51).
4. **N52-6** — Geltungsstatus SIA 151 und SIA 178 gegen das Gesamtverzeichnis klären.
5. **N52-7** — Fassungsfrage SIA 252 (VL-Entwurf 2011/12 kündigt Ersatz der 2002er an) und die
   übrigen 16 VL-Dateien als Fassungsindikatoren auswerten.
6. **`sia-416-1-2007.md`** braucht seine unabhängige Refuter-Runde (Status `speculative`).
7. **Unverändert offen aus Run 51:** Kriterien-Rückverweise der Anhang-D-Matrix (Ziff. 9),
   SIA 118/265:2018 beschaffen (N48-4), Nachfolge-Status der vier Altnormen (N48-5), SIA 382/2
   gegen SIA 382/1:2014 (N48-7), die sechs ABB als Beschaffungsposten.
8. **Fremde KB, weiterhin nur gemeldet:** `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md`
   führt bürointerne Los-Nummern im Frontmatter-Feld `bkp:`.

## 9. Anhang-D-Matrix SIA 112/1 (Übergabe Run 51, Punkt 2a)

Siehe Nachtrag unten — der Prüflauf lief zum Zeitpunkt der Berichtsabfassung noch.

## Belege

Alle Renderings mit normspezifischem Präfix (Methodik-Pflicht 5): `sia4161-r52-` und
`sia4161-hp-r52-` (Destillat und Hauptprozess-Stichprobe), `sia358-r52-hp-`, `sia358-r52-hp2-`,
`sia358-r52-hp3-` (Hauptprozess-Lesung des deutschen Normteils), `sia358-gegenprobe-r52-`
(Blindprüfung), `sia112d-r52-` (Anhang D), `xalt-r52-` (Bestandsaufnahme). Die gedruckte
Seitenzahl wurde in allen Fällen am Seitenrand abgelesen, nie aus der Blattnummer berechnet; für
SIA 358:2010 und SIA 416/1:2007 ist Folio = PDF-Blatt unabhängig zweimal bestätigt (Hauptprozess
und Prüfagent). Tabellen wurden gerendert, nicht per `pdftotext` aufgenommen (Methodik-Pflicht 8);
bei beiden Normen war das zwingend, weil die Dateien reine Scans ohne Textlayer sind.
