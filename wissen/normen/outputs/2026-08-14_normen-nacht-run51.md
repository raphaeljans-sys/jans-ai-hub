# Normen-Training Run 51 (MacBook Pro, 14.08.2026) — die Prüfstufe selbst geprüft, und zwei Fehlbefunde der eigenen Übergabe korrigiert

**Kurzfassung.** Run 50 hat zwei Punkte übergeben: eine Refuter-Runde für vier angeblich
ungeprüfte Destillate (N50-1) und eine Gegenprobe zur Widerlegungsfähigkeit der Nachprüf-Stufe
(N50-3). Dieser Lauf hat beides in einer Anlage zusammengeführt — und dabei festgestellt, dass
die Prämisse von N50-1 falsch war.

> **Gegenprobe: 15 kontrollierte Falschbehauptungen eingestreut, 15 erkannt (100 %).
> 33 echte Destillat-Aussagen, 33 korrekt bestätigt (0 Falsch-Positive).
> Zweite Refuter-Runde für vier Destillate: 0 Kernbefunde.
> Zwei Fehlbefunde der Run-50-Übergabe korrigiert, zwei neue Selbstwidersprüche gefunden.**

## 1. Der Vorrang-Auftrag im Task-Prompt ist weiterhin überholt

Der Prompt verlangt eine achte Runde für `lignum-lignatec-brandschutz` mit rechnerischer
Aufnahme von Tab. 3 und Tab. 4. Diese Runde ist **in Run 38 gefahren** (7 Kernbefunde,
4 Nebenbefunde), Run 39 und 40 haben die Folgeaufträge abgearbeitet, und das PROGRAMM.md hält
das fest. Run 49 und 50 haben denselben Befund bereits protokolliert. Der Auftrag wurde also
zum dritten Mal nicht erneut ausgeführt; stattdessen lief die dokumentierte Übergabe.

**Das ist inzwischen selbst ein Befund.** Ein Task-Prompt, der eine erledigte Aufgabe in drei
aufeinanderfolgenden Läufen als Vorrang-Auftrag stellt, kostet jedes Mal Lesezeit und erzeugt
die Gefahr, dass ein Lauf ihn doch ausführt. Vorschlag an Raphael unter Ziff. 7.

## 2. N50-1 war ein Fehlbefund — die vier Destillate hatten ihre Refuter-Runde

Run 50 übergab `sia-262-1-2003`, `sia-264-1-2003`, `sia-267-1-2003` und `sia-281-3-2018` als
«hatten NIE eine Refuter-Runde» und nannte sie «den risikoreichsten Bestand der KB». Die
Gegenprüfung am Bestand (Methodik-Pflicht 10) zeigt das Gegenteil, dreifach dokumentiert:

- **Frontmatter `verifikation`:** jedes der vier trägt das Verdikt der Runde vom 07.08.2026
  (Run 47) samt Stichprobenliste — dreimal BESTANDEN, einmal BEANSTANDET mit Kernbefund K1.
- **`destillate/INDEX.md`:** alle vier Statusspalten nennen die Refuter-Runde.
- **Der Fliesstext selbst:** die Befunde der Runde stehen inline, markiert mit
  «Korrektur Refuter-Runde 260807» bzw. «Präzisierung Refuter-Runde 260807».

Stehen geblieben war je **eine veraltete Zeile unter «Offene Punkte»** aus dem
Erstdestillat-Zustand. Run 50 hat diese Zeile gelesen und daraus die Übergabe gebaut, ohne den
Frontmatter derselben Datei zu prüfen.

**Das ist ein Selbstwiderspruch innerhalb einer Datei** — und damit die Umkehrung der
Methodik-Pflicht 9. Die Pflicht verlangt, Befunde inline zu korrigieren statt nur anzuhängen;
hier wurde korrekt inline korrigiert, aber die **veraltete Gegenaussage nicht entfernt**. Wer
von oben liest, trifft zuerst auf die überholte Zeile.

Verschärfend: Run 50 hat in Ziff. 7 seines Reports vier gleichartige Zeilen anderer Destillate
korrigiert und dazu geschrieben, «die vier übrigen Vorkommen sind sachlich richtig». Diese vier
sind genau die hier behandelten. Die Feststellung «sachlich richtig» stand also unmittelbar
neben der Behauptung, sie seien nie geprüft worden.

## 3. Der Sachauftrag war trotzdem berechtigt — und ist erledigt

Eine erste Refuter-Runde ist kein Freibrief; die Run-48-Welle hatte auch eine und wurde
17 von 17 beanstandet. Die zweite Runde war also fällig, nur nicht aus dem angegebenen Grund.
Sie ist gefahren, als Blindprüfung, und hat **0 Kernbefunde** ergeben.

| Destillat | echte Aussagen | davon bestätigt | Kontrollen | davon erkannt |
|---|---|---|---|---|
| `sia-262-1-2003` | 8 | 8 | 4 | 4 |
| `sia-264-1-2003` | 8 | 8 | 4 | 4 |
| `sia-267-1-2003` | 8 | 8 | 4 | 4 |
| `sia-281-3-2018` | 9 | 9 | 3 | 3 |
| **Summe** | **33** | **33** | **15** | **15** |

Die Vermutung aus N50-1, «es gibt keinen Grund anzunehmen, dass die Run-47-Welle besser ist»,
ist damit empirisch widerlegt. Sie ist besser.

## 4. Die Gegenprobe (N50-3): die Nachprüf-Stufe kann widerlegen

**Anlage.** Vier Prüfsätze mit zusammen 48 Behauptungen. 33 stammen wörtlich aus den
Destillaten, 15 hat der Hauptprozess kontrolliert verfälscht — je ein Zahlenwert plausibel
verändert, nie absurd. Die Prüfagenten erhielten keine Kennzeichnung und den Auftrag, jede
Behauptung am Original zu widerlegen.

Die 15 Kontrollen: 105 statt 110 °C · 270 statt 170 g/m² · 10 statt 5 % Sulfatlösung · Hälfte
statt Drittel der Druckfestigkeit · 85 statt 90 % Profilblech-Abdeckung · L ≤ 20 statt 30 ·
180 statt 160 mm (Tabellenzelle) · 31.12. statt 30.06.2004 · 7 statt 10 Tage · 45 statt
60 Minuten · 0,65 statt 0,6 Ra · 3 statt 5 mm · ± 0,5 statt ± 1,0 °C · 30 statt 10 Sekunden ·
zehn statt fünf Flächenprozent.

**Ergebnis: Sensitivität 100 %, Spezifität 100 %.** Jede Widerlegung trug wörtliches
Belegzitat, PDF-Seite und am Rand abgelesene Folio-Nummer. Drei Agenten nannten von sich aus
den mutmasslichen Verwechslungsursprung des falschen Werts — beim Thermometer etwa den Wert
«± 0,5 °C», der zwei Seiten weiter für die Lufttemperatur im Prüfbericht steht.

**Damit ist die Lesart gestützt, dass die 79/0-Verteilung aus Run 50 die Qualität der
Run-48-Welle misst und nicht die Blindheit der Prüfstufe.**

**Was die Gegenprobe NICHT misst** (Pflichtangabe nach der Methoden-Lehre): alle 15 Kontrollen
waren **veränderte Zahlenwerte an einer bekannten Fundstelle**. Ungeprüft bleibt die
Sensitivität für die schwereren Fehlerklassen — Bedeutungsumkehr (der ABB-Fall aus Run 49),
**fehlende** Inhalte, verschobene Fundstellen, falsche BKP-Codes. Eine 100-%-Trefferquote auf
Zahlendreher ist kein Nachweis, dass eine Bedeutungsumkehr auffiele.

Ein Nebenertrag stützt die Vermutung, dass diese Typen schwerer sind: **alle vier Agenten
meldeten Auslassungen in den vorgelegten Behauptungen** — fehlende Öffnungsklauseln
(«oder objektspezifisch zu definieren»), fehlende Anwendungsrahmen («in klüftigem Fels»),
fehlende Alternativbedingungen — aber durchwegs als Anmerkung **ohne Verdikt-Wirkung**. Sie
sahen die Lücke und werteten sie nicht als Widerlegung. Genau das ist die Fehlerklasse
«fehlender Inhalt».

**Fehler in der eigenen Versuchsanlage, offengelegt.** Für `sia-281-3` waren vier Kontrollen
geplant; eine davon (Kommastellen der Haftzugfestigkeit) wurde beim Formulieren des Prüfsatzes
nicht eingebaut. Der Satz trug real drei Kontrollen und neun echte Aussagen. Die Trennschärfe
ist davon unberührt, die Gesamtzahl der Kontrollen sinkt von 16 auf 15.

**Hauptprozess-Anteil.** Der Hauptprozess hat die Kontrollwerte für `sia-264-1` und `sia-267-1`
vor dem Lauf selbst am Original geprüft (90 %, 30-mal, 30. Juni 2004; 10 Tage, 60 Minuten,
0,6 Ra, 5 mm) — sonst hätte die Gegenprobe nichts gemessen, wenn eine «Verfälschung» zufällig
richtig gewesen wäre.

## 5. Zwei neue Selbstwidersprüche — gefunden durch die Kontrollmessung zu N51-1

Aus dem Fehlbefund entstand der Vorschlag, nach jeder Status-Hebung mechanisch zu prüfen, ob
das Destillat noch eine «ausstehend»-Zeile trägt. Die Messung wurde durchgeführt und hat zwei
weitere Fälle gefunden:

**`sia-118-266-1-2017.md` und `sia-118-266-2-2017.md`** trugen `status: established` im
Frontmatter und zugleich «Status bleibt speculative» unter «Offene Punkte». Beide sind
ausgerechnet die Dateien, die **Run 50 in Ziff. 7 angefasst und für richtiggestellt erklärt
hat**: dort wurde der überholte Vermerk «Refuter-Runde ausstehend» korrigiert, die
widersprüchliche Statuszeile im selben Satz aber stehen gelassen. **Eine halbe Korrektur ist
hier schlechter als keine**, weil sie den Eindruck der Erledigung erzeugt.

In `sia-118-266-1-2017.md` fand sich derselbe Mechanismus ein zweites Mal: die Zeile
«118/266-2 im Bestand noch nicht destilliert» stand dort, während das Destillat existiert und
in derselben KB liegt.

Alle drei behoben. Bei 118/266-1 bleibt die **sachliche** Einschränkung als eigene Aussage
stehen — Scan ohne Textlayer, alle Aussagen aus 150-dpi-Sichtlesung; das ist ein echter
Vorbehalt und war vermutlich der Grund, warum die Statuszeile ursprünglich entstand.

**Messung nach der Bereinigung: 195 `established`-Destillate, 0 unaufgelöste
Status-Widersprüche.** Zwei Fundstellen wurden geprüft und ausdrücklich nicht als Widerspruch
gewertet: `sia-1001-3-2020.md` markiert eine einzelne Auslegungsaussage inline als
`speculative` (legitime Binnendifferenzierung), und `sia-266-1-2003.md` führt im
`verifikation`-Feld die Chronik von fünf Runden, in der frühere «bleibt speculative»-Sätze
historisch stehen und die mit der Hebung endet.

**Offenlegung zur Methode:** die erste Fassung des QUESTIONS-Eintrags behauptete das
Messergebnis, bevor die Messung lief; das dann verwendete grobe Suchmuster traf zusätzlich
Zitate und Chronik-Einträge. Erst ein enger gefasstes Muster trennte die echten Fälle. Das ist
derselbe Fehler, den der Eintrag beschreibt — festgehalten, weil er belegt, wie leicht er
passiert.

## 6. N50-4 präzisiert: die sechs ABB sind nicht im Haus

Run 50 übergab, die ABB 118/240, 118/242, 118/243, 118/251, 118/252 und 118/253 seien «gemäss
REGISTER nicht destilliert». Der Bestand führt genau zwölf 118er-Dateien (118:1991, 118-C1:2026,
118/244, 118/246, 118/248, 118/257, 118/262, 118/263, 118/265, 118/266-1, 118/266-2, 118/267) —
**alle zwölf sind destilliert**, die Deckung ist vollständig. Die sechs genannten stehen im
REGISTER, weil dieses aus dem Gesamtverzeichnis SIA gebaut ist, existieren aber als PDF im Haus
nicht.

Formulierung nach Methodik-Pflicht 10: **nicht «diese ABB sind nicht destilliert», sondern
«diese ABB sind nicht im Haus».** Der Unterschied entscheidet, ob der Punkt an den Loop oder an
die Beschaffung geht. Er geht an die Beschaffung (SIA-Shop, kostenpflichtig, Bring-Schuld wie
N48-4). Der zweite Teil der Frage — ob ihre Werte in dasselbe Muster fallen — ist damit nicht
beantwortet und **kann** ohne die Originale nicht beantwortet werden.

## 7. Vorschläge an Raphael (nicht selbständig umgesetzt)

1. **Den Vorrang-Auftrag aus dem Task-Prompt entfernen.** Er ist seit Run 38 erledigt und wurde
   nun dreimal in Folge als überholt zurückgemeldet (Runs 49, 50, 51). Solange er im Prompt
   steht, kostet er jeden Lauf Lesezeit und riskiert eine vierte Ausführung.
2. **Methodik-Pflicht 11** (unverändert offen aus Run 49/50): «Ein unverifiziertes Destillat ist
   kein Wissensstand, sondern ein Entwurf.»
3. **Methodik-Pflicht 12 (neu vorgeschlagen, N51-1):** Nach jeder Status-Hebung auf
   `established` wird im selben Lauf geprüft, ob das Destillat noch eine Zeile trägt, die den
   Status als offen oder speculative behauptet. Begründung: Run 51 hat drei solche Fälle
   gefunden, zwei davon in Dateien, die ein früherer Lauf für bereinigt erklärt hatte, und einer
   davon hat einen kompletten Batch-Auftrag über einen ganzen Lauf hinweg fehlgeleitet. Die
   Prüfung ist mechanisch und kostet Sekunden. Sie folgt derselben Logik wie die Beobachtung aus
   Run 50: **eine Pflicht ohne Kontrollpunkt im Lauf ist eine Empfehlung.**

## 8. Offen — Übergabe

1. **Gegenprobe zweiter Ordnung:** dieselbe Anlage mit Kontrollen der Typen «Aussage ins
   Gegenteil verkehrt», «Bedingung weggelassen», «Fundstelle auf die Nachbarziffer verschoben».
   Run 51 hat die Sensitivität nur für Zahlendreher gemessen (N50-3 neu gefasst).
2. **Unverändert offen aus Run 48:** SIA 118/265:2018 beschaffen (N48-4), Nachfolge-Status der
   vier Altnormen (N48-5), SIA 382/2 gegen SIA 382/1:2014 (N48-7).
3. **Neu aus Ziff. 6:** die sechs ABB 118/240, 242, 243, 251, 252, 253 als Beschaffungsposten
   führen, nicht als Destillier-Rückstand.
4. **Fremde KB, weiterhin nur gemeldet** (aus Run 50):
   `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` führt bürointerne Los-Nummern im
   Frontmatter-Feld `bkp:`.

## Belege

Vier Blindprüf-Agenten mit je eigenem Render-Präfix (`sia262-r51-`, `sia264-r51-`,
`sia267-r51-`, `sia281-r51-`, Methodik-Pflicht 5); jeder hat die gedruckte Seitenzahl am Rand
abgelesen und bestätigt, dass PDF-Blatt und Folio in allen vier Normen 1:1 übereinstimmen.
Tabellen und Formeln wurden gerendert, nicht per `pdftotext` aufgenommen (Methodik-Pflicht 8);
bei `sia-281-3` war das zwingend, weil die Datei ein reiner Scan ohne Textlayer ist — der Agent
hat sie in 300 dpi gerendert und die zahlenkritischen Stellen zusätzlich in 600 dpi.
Eigene Gegenprüfungen des Hauptprozesses per `pdftotext -layout` auf 264/1 (S. 8, 10, 16) und
267/1 (S. 18, 25-28, 42).
Diff nativ per ssh gemessen (Rule 260811, nie `git` über SMB): **+128 / −34 über 8 Dateien**,
jede Datei mit Additionen ≥ Deletionen; die 13 Deletionen in `QUESTIONS.md` entsprechen exakt
den drei ersetzten Blöcken, die Destillat-Deletionen den ersetzten Einzelzeilen.
