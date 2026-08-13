# Normen-Training Run 50 (MacBook Pro, 13.08.2026) — die 79 Kernbefunde am Original nachgeprüft, alle bestätigt, alle eingearbeitet

**Kurzfassung.** Run 49 hinterliess 65 als «Nachprüfung ausstehend» markierte Kernbefunde in
17 Destillaten. Dieser Lauf hat sie abgearbeitet — zwei Flotten mit zusammen 33 Agenten
(17 Nachprüfer am Original, 16 Einarbeiter), dazwischen der Hauptprozess als Richter.

> **79 Kernbefunde geprüft (nicht 65 — mehrere Marker trugen mehrere Einzelbefunde) ·
> 79 BESTÄTIGT · 0 WIDERLEGT · 0 UNENTSCHIEDEN · alle inline eingearbeitet ·
> null ⚠-Marker verbleiben in der KB.**

Der Hauptprozess hat 14 Befunde selbst am Original nachgeprüft, alle bestätigt. Keine Hebung
auf `established` — geprüft wurden die Befunde, nicht die Destillate als Ganzes.

## 1. Was der Vorrang-Auftrag betrifft

Der im Task-Prompt stehende Vorrang-Auftrag (achte Runde `lignum-lignatec-brandschutz`,
rechnerische Aufnahme von Tab. 3 und Tab. 4) **ist seit Run 38 erledigt** und im PROGRAMM.md
dokumentiert: die Runde ist gefahren, sie erbrachte 7 Kernbefunde und 4 Nebenbefunde, die
Endbedingung («keine Kernbefunde») wurde damit nicht erreicht. Run 39 und Run 40 haben die
Folgeaufträge abgearbeitet. Der Prompt-Text ist an dieser Stelle überholt; er wurde nicht erneut
ausgeführt, weil er sonst eine bereits beantwortete Frage ein drittes Mal gestellt hätte.
Stattdessen lief die dokumentierte Übergabe aus Run 49.

## 2. Was der Hauptprozess selbst am Original geprüft hat (14 Befunde, alle bestätigt)

Ein Nachprüf-Befund wird nicht übernommen, weil ein Agent ihn meldet. Selbst geprüft wurden die
Klassen mit LV-Reichweite und die mit der grössten Streuung:

**BKP-Codes — drei von drei falsch, alle am systematischen Teil der BKP-2017-Liste nachgeschlagen.**
- *SIA 118/248 (Plattenarbeiten):* 227 ist «Äussere Oberflächenbehandlungen» (227.0 Gerüste,
  227.1 Äussere Malerarbeiten, 227.2/.3 Holzschutz), 281.1 «Fugenlose Bodenbeläge», 281.2
  «Bodenbeläge aus Kunststoffen, Textilien und dgl.» — keiner bezeichnet Plattenarbeiten.
  Richtig: **281.6** Bodenbeläge aus Platten, **282.4** Wandbekleidungen aus Platten.
- *SIA 118/267 (Geotechnik):* **BKP 241 und 243 existieren im BKP 2017 überhaupt nicht**, und
  242 ist «Heizungsanlagen». Richtig ist Hauptgruppe **17 Spezialtiefbau** (171 Pfähle,
  172 Baugrubenabschlüsse, 173 Aussteifungen, 174 Anker, 175 Grundwasserabdichtungen,
  176 Wasserhaltung, 177 Baugrundverbesserungen, 178 Nebenarbeiten) plus **201 Baugrubenaushub**.
- *SIA 118/246 (Naturstein):* in Run 49 bereits bestätigt (216.0/281.4/282.2 statt 227/281).

**Seitenversatz — bestätigt, Ursache benannt.** Eigenes 150-dpi-Rendering von 118/244:
PDF-Seite 5 trägt die gedruckte Folio-Nummer 5 und die Überschrift «0 GELTUNGSBEREICH»,
PDF-Seite 6 die Folio-Nummer 6. Gedruckte Seitenzahl = PDF-Seite, 1:1. Das Destillat führte
Ziff. 0 auf S. 4-5. Ursache ist keine neue Fehlerart, sondern die Verletzung einer bestehenden
Pflicht: **Methodik-Pflicht 6 verlangt seit Run 39, die Seitenzahl am Rand abzulesen statt sie
aus der Blattnummer zu berechnen.** Ein einziger solcher Methodenverstoss erzeugte allein rund
120 falsche Fundstellen über drei Destillate.

**Begriffszahl 118/244 — bestätigt.** Am Rendering ausgezählt: S. 5 führt sechs Lemmata,
S. 6 elf, zusammen **17**, nicht 15. Die Liste im Destillat führte die 17 Einträge bereits
vollständig — falsch war allein die vorangestellte Zahl, also ein Selbstwiderspruch.

**Ausmasszuschlag 118/244 — bestätigt, vergütungsrelevant.** Original wörtlich: A.2 «so werden
diese Flächen doppelt gemessen», A.4 «werden sie in m doppelt gemessen». Doppelt gemessen ist
Faktor 2 auf das Ausmass, also **100 % Zuschlag, nicht 200 %**. Die Nachbarziffern stützen die
Grössenordnung (A.1: 20 %, A.3: 50 %).

**Fehlende Kapitel in SIA 380/3 — bestätigt und geschlossen.** Der Abschnitt «Werkstoffe und
Ausführung (Kap. 4-5, S. 14-17)» bestand aus einer Überschrift und sonst nichts, während das
Frontmatter «S. 1-42 komplett» zusicherte. Beide Kapitel wurden am Original nachgelesen und als
regulärer Destillat-Inhalt geschrieben: Kap. 4 Werkstoffe (Ziff. 4 1/4 2) und Kap. 5 Ausführung
mit den vier Ziffern 5 1 Allgemeines, 5 2 Dämmungen (sieben Unterziffern), 5 3 Tragkonstruktionen
(vier Unterziffern) und 5 4 Begleitheizungen. Darunter durchweg ausführungsrelevante Pflichten —
Dichtigkeitsprüfung vor Dämmbeginn, Anlage ausser Betrieb während der Montage, Wegleitungen der
kantonalen Gebäudeversicherungen bei Wand- und Deckendurchbrüchen, Tragkonstruktion über der
Dampfbremse, kein Dämmstoff zwischen Begleitheizung und beheiztem Anlageteil.

**SIA 118/257, Ziff. 0.3 — bestätigt, mit einem Nebenertrag.** Die Ziffer listet vier
Publikationen (SIA 118, 257, 469, 493) **ohne jede Ausgabe-Angabe und ohne Klausel zu
undatierten Verweisungen**. Der Nebenertrag: bei SIA 118/244 trägt dieselbe Ziffer sehr wohl
Jahreszahlen (SIA 118 «1977/1991», SIA 244 «2006», SIA 493 «1997»). Die ABB-Reihe ist an diesem
Punkt uneinheitlich; das Destillat hatte die Systematik der Schwesternorm unterstellt. Für die
Ausgaben-Disziplin nach Rule `normen-referenz` heisst das: bei 118/257 muss die SIA-118-Ausgabe
im Werkvertrag ausdrücklich bezeichnet werden, die Norm selbst regelt es nicht.

## 3. Ein unbeauftragter Sweep, weil es die dritte Wiederholung derselben Fehlerfamilie war

BKP 271.10 (Run 43), BKP 227 (Run 49), jetzt BKP 227/281.1/281.2/241/242/243 (Run 50) — drei
Läufe, dieselbe Familie. Statt nur die gemeldeten Stellen zu korrigieren, wurden **alle
BKP-Codes sämtlicher Destillate dieser KB maschinell gegen den systematischen Teil der
BKP-2017-Liste geprüft** (50 verwendete Codes gegen 846 gültige).

**Ergebnis: genau zwei nicht existente Codes, 241 und 243, beide im bereits bekannten 118/267.
Kein weiterer Phantomcode versteckt sich in der KB.** Das ist ein Negativbefund, aber ein
belastbarer — er ersetzt die bisherige Ungewissheit durch eine Messung. Zu beachten bleibt, dass
ein *existierender* Code trotzdem sachlich falsch sein kann (242 «Heizungsanlagen» für einen
Baugrubenabschluss ist im Sweep unsichtbar) — die Prüfung deckt Phantomcodes ab, nicht
Fehlzuordnungen.

Hub-weit steht der Code 271.10 nur noch dort, wo er als Fehler *beschrieben* wird, und in einer
Stelle ausserhalb dieser KB: `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` führt im
Frontmatter `bkp: "271.10 …, 271.13 …"`. Das sind bürointerne Los-Nummern, keine BKP-Codes; die
KB `bauprodukte` hält das bereits fest (QUESTIONS Zeile 246). Nach Rule `bkp-2017-referenz`
gehörten sie als `LOS <Nr.> (bürointerne Los-Nummer, kein BKP-Code)` geschrieben. **Nicht
angefasst — fremde KB**, hier nur gemeldet.

## 4. Die ABB-Synthese: die Prüfung, die laut Übergabe «bisher niemand getan hat»

Run 49 hatte als Punkt 3 hinterlassen, die Grenzwerte beider Tabellen gezielt nebeneinander zu
prüfen. Gemacht, mit zwei Ergebnissen.

**Erstens ein Beinahe-Fehlbefund in eigener Sache, der hierher gehört, weil er die Methodik
belegt.** Die Suche nach «3,0 m» im Destillat `sia-118-266-2-2017` lieferte null Treffer, während
die Synthese für diese Norm 3,0 m führte — das sah nach einem unbelegten Tabellenwert aus,
derselben Klasse wie die Bedeutungsumkehr aus Run 49. Die Gegenprüfung am Original (Scan ohne
Textlayer; `pdftotext` liefert dort **nichts**, weshalb gerendert werden musste) zeigte auf
gedruckter S. 11: «Erstellen, Vorhalten und Abbrechen einfacher Gerüste für Mauerwerkshöhen bis
3 m ab Gerüstabstellbasis». Und das Destillat führt genau diesen Satz — es schreibt «3 m», wie
das Original, nicht «3,0 m». **Der Befund war ein Artefakt des eigenen Suchmusters.**
Zwei bestehende Pflichten haben hier gegriffen: Methodik-Pflicht 7 (gegen den ganzen Bestand
prüfen, nicht gegen die Stelle) und der Satz, dass ein leeres Suchergebnis zuerst eine Aussage
über das Werkzeug ist.

**Zweitens ein echter Befund, eingearbeitet.** Die Gerüst-Tabelle stellte Zahlen nebeneinander,
die **nicht dieselbe Grösse messen**. Die 2006er-Normen messen die **Belagshöhe** («einfache
Gerüste für Arbeiten zu Einheitspreisen und bis 2,5 m Belagshöhe», wortgleich in 118/244,
118/246 und 118/248, alle drei am Original gelesen). Die Mauerwerksnormen messen die
**Mauerwerkshöhe ab Gerüstabstellbasis**, wobei diese ohne andere Angabe dem Mauerfuss entspricht
(118/266-1 Ziff. 1.1.3.9). Eine Differenz von 0,5 m zwischen zwei Werten mit verschiedenen
Bezugspunkten an verschiedenen Objekten ist keine Differenz von 0,5 m in der Sache. Zweite
verschwiegene Einschränkung: bei den drei 2006er-Normen gilt die Inklusion **nur für Arbeiten zu
Einheitspreisen**. Beides steht jetzt als Warnkasten in der Synthese.

**Die Synthese bleibt Warnkarte, nicht Zitierquelle.** Sie zur Zitierquelle zu heben war Punkt 3
der Übergabe, wird aber **nicht** vollzogen: sie ist aus Destillaten gebaut, deren Status
weiterhin `speculative` ist. Genau das ist der Inhalt der in Run 49 vorgeschlagenen
Methodik-Pflicht 11.

## 5. Methodik-Pflicht 11 — die Belege haben sich verstärkt (weiterhin Raphael zur Freigabe)

> **Ein unverifiziertes Destillat ist kein Wissensstand, sondern ein Entwurf. Aus Entwürfen wird
> keine Querschnitts-Synthese, kein Registereintrag und keine Skill-Empfehlung gebaut — auch
> nicht mit Vorbehalt.**

Run 49 stützte den Vorschlag auf 70 gemeldete Kernbefunde. Run 50 kann jetzt sagen: **79 davon
sind am Original bestätigt, keiner widerlegt.** Ein Destillat ohne Refuter-Runde ist in dieser
Grössenordnung nicht «weitgehend richtig mit Randunschärfen» — es trägt Fehler bis in ein
Leistungsverzeichnis (drei falsche BKP-Zuordnungen, ein um 100 % falscher Ausmasszuschlag, ein
um 200 m zu grosser Fluchtwegabstand). Die Umsetzung wird **nicht** selbständig vorgenommen.

## 6. Was NICHT geprüft wurde (Methoden-Lehre, Pflichtangabe)

- **65 der 79 Befunde sind Nachprüfer-verifiziert, nicht hauptprozess-verifiziert.** Jeder trägt
  wörtliches Belegzitat, PDF-Seite und abgelesene Folio-Nummer im Bestätigungsvermerk und bleibt
  damit nachprüfbar — aber das ist eine Stufe schwächer als eigene Sicht.
- **Die Verdikt-Verteilung 79/0/0 ist selbst ein Prüfgegenstand** (QUESTIONS N50-3). Vorschlag
  für den nächsten Lauf: eine Gegenprobe mit eingestreuten Falschbehauptungen, um zu messen, ob
  die Nachprüf-Stufe überhaupt widerlegen kann.
- **Geprüft wurden ausschliesslich die Kernbefunde**, nicht die Destillate als Ganzes. Kein
  Status wurde gehoben; alle 17 bleiben `speculative`.
- **Die 190 Nebenbefunde aus Run 49** wurden dort inline eingearbeitet und in diesem Lauf nicht
  gegengeprüft.
- **Vier Destillate der Run-47-Welle hatten nie eine Refuter-Runde** (`sia-262-1-2003`,
  `sia-264-1-2003`, `sia-267-1-2003`, `sia-281-3-2018`) — siehe Übergabe.

## 7. Nebenbefund: vier überholte Statusangaben richtiggestellt

Vier Destillate führten unter «Offene Punkte» weiterhin «Refuter-Runde ausstehend», obwohl die
Runde gelaufen war: 118/246 und 118/248 (Run 49) sowie 118/266-1 und 118/266-2 (Run 47, dort
Verdikt BESTANDEN mit 0 Kernbefunden). Korrigiert. Die vier übrigen Vorkommen sind sachlich
richtig und werden zur Übergabe.

## 8. Offen — Übergabe

1. **Refuter-Runde für die vier Destillate der Run-47-Welle** (N50-1). Nach dem Ergebnis dieses
   Laufs der risikoreichste Bestand der KB; `sia-262-1` und `sia-267-1` speisen `ausschreibung`
   und `werkvertrag` unmittelbar.
2. **Gegenprobe zur Widerlegungsfähigkeit der Nachprüf-Stufe** (N50-3).
3. **Methodik-Pflicht 11 vorlegen** (unverändert offen aus Run 49, Belege verstärkt).
4. **ABB-Reihe vervollständigen:** 118/240, 118/242, 118/243, 118/251, 118/252, 118/253 gemäss
   REGISTER sind nicht destilliert; die Beobachtung «Ausbau 2,5 m, Rohbau 3,0 m» ist eine
   Beobachtung an zehn Normen, keine Regel der Reihe (N50-4).
5. **Fremde KB, nur gemeldet:** `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` führt
   bürointerne Los-Nummern im Frontmatter-Feld `bkp:`.
6. Unverändert offen aus Run 48: Anhang-D-Matrix der SIA 112/1 rechnerisch aufnehmen (N48-3),
   SIA 118/265:2018 beschaffen (N48-4), Nachfolge-Status der vier Altnormen (N48-5), SIA 382/2
   gegen SIA 382/1:2014 (N48-7).

## Belege

Workflow-Transkripte: `subagents/workflows/wf_32b0c25d-1cb/journal.jsonl` (17 Nachprüfer, je ein
Ergebnis-Datensatz mit Belegzitat, PDF-Seite, abgelesener Folio-Nummer und Feld `nicht_geprueft`)
und `wf_88fba30e-34c/journal.jsonl` (16 Einarbeiter). Eigene Renderings des Hauptprozesses:
`hp-244-r50-s5-05.png`, `hp-244-r50-s6-06.png`, `hp-2662-r50-10.png`, `hp-2662-r50-11.png`.
Diff nativ per ssh gemessen (Rule 260811, nie `git` über SMB): +829/-564 über 17 Dateien, jede
Datei mit Additionen ≥ Deletionen, Deletionen durchgehend als Fortsetzungszeilen der ersetzten
⚠-Blöcke identifiziert. Verbleibende ⚠ REFUTER-KERNBEFUND-Marker in der KB: **null**.
