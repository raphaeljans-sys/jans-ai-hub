# Etappe 4, Lauf 05 — Etappe bestaetigt abgeschlossen; Ursache des Healthcare-Fehlzeigers behoben

**Datum:** 31.08.2026
**Baustein:** keiner der drei Etappen-Bausteine (V1/V2/V3 sind seit Lauf 04 erschoepft) —
stattdessen der einzige seither neu entstandene, KB-eigene Sachpunkt.

## 1. Endbedingung geprueft: Etappe 4 bleibt abgeschlossen, kein neues Material

Vor jeder Arbeit gemessen statt fortgeschrieben:

- `training/PROGRAMM.md` fuehrt seit Lauf 04 (23.08.2026) den Stand **«Etappe 4 inhaltlich
  abgeschlossen»**. V1 erschoepft (nur 2408 hat einen Jurybericht), V2 Schulbau und Healthcare
  abgeschlossen, V2 Wohnungsbau strukturell unbaubar, V3 geliefert und verifiziert.
- **Kein neues Quellmaterial seit Lauf 04.** Im SSD-Klon gemessen:
  `git log --since="2026-08-23" --diff-filter=A -- wissen/wettbewerbs-dna/raw/` liefert **null**
  neue Dateien. Die einheitliche mtime 29.08.2026 22:18 auf allen `raw/`-Dateien ist ein
  SMB-Kopierartefakt, kein Materialzugang — die Unterscheidung war noetig, weil ein blosser
  `ls -lat` hier neues Material vorgetaeuscht haette.
- Der ausstehende **Jurybericht 2501 Steinfabrik** ist weiterhin nicht eingetroffen.

**Damit ist die Endbedingung der Etappe unveraendert erfuellt.** Ein weiterer V1/V2/V3-Lauf
haette kein inhaltliches Delta erzeugt und wird nicht simuliert.

## 2. Der Arbeitsvorrat, den es stattdessen gab

Am 27.08.2026 hat der `wissens-chef` (Run 45) in dieser KB einen Cross-KB-Befund abgelegt und
eine Bringschuld in `wiki/QUESTIONS.md` gesetzt — **nach** dem Abschluss von Lauf 04, deshalb
in keinem Etappen-Statuskopf enthalten. Ausdruecklich markiert als «Kein Entscheid Raphaels,
Sache dieser KB». Damit ist es legitime Arbeit dieses Laufs und keine Registerpflege.

**Der Befund:** `wiki/muster/kennwerte-healthcare.md` wies an drei Stellen `wissen/grobkosten/`
als fuehrende CHF/m3-Quelle aus. Fuer Healthcare fuehrt `grobkosten` ausdruecklich **nicht** —
dort fuehrt `wissen/immobilienbewertung/wiki/realwert-sachwert.md`. Die offene Frage war
ausdruecklich **die Ursache, nicht der Einzelfall**: der Satz ist eine KB-weite Standardformel,
die in den Schwesterartikeln Schulbau und Wohnungsbau **richtig** ist und beim Ableiten
unbedacht mituebertragen wurde.

## 3. Eigener Befund vor der Arbeit: die Korrektur vom 27.08. war unvollstaendig

Die Bestandssichtung ergab einen Punkt, den die Bringschuld selbst nicht nennt:

> Die Praezisierung vom 27.08.2026 war **rein additiv** (CHANGELOG «+7/−0»). Sie hat die
> falschen Saetze **nicht entfernt und nicht umformuliert**, sondern jeweils eine Warnzeile
> davor gesetzt. Der Artikel widersprach sich damit an allen drei Stellen innerhalb weniger
> Zeilen buchstaeblich selbst: erst «fuehrt grobkosten nicht», zwei Zeilen weiter «bleibt
> grobkosten die fuehrende Quelle».

Das ist praktisch folgenreich: wer den Konsequenz-Absatz liest oder nach `grobkosten` greppt —
also der Normalfall bei einer Kennwert-Abfrage — greift weiterhin die falsche Aussage.

## 4. Was gemacht wurde

**a) Selbstwiderspruch aufgeloest** (`wiki/muster/kennwerte-healthcare.md`, drei Stellen).
Die falschen Saetze sind zu sachlich richtigen umformuliert, jeweils mit Datumsvermerk der
Richtigstellung. Die Warnzeilen vom 27.08. bleiben als Belegkette stehen und tragen neu den
Vollzugsvermerk sowie den **bezifferten** Vorbehalt zum oberen Endpunkt.

**b) Bauaufgaben-Weiche in allen drei `kennwerte-*`-Artikeln.** Vor dem Konsequenz-Satz steht
neu ein ⚠-Block, der den Satz als **bauaufgaben-abhaengig** markiert, die Fuehrung je Bauaufgabe
benennt und auf die Fuehrungsmatrix verweist. In Schulbau und Wohnungsbau ist die Aussage
sachlich unveraendert richtig — die Weiche schuetzt dort den **naechsten** Ableitungsschritt.

**c) Ursache auf KB-Ebene behoben** (`CLAUDE.md` der KB, neuer Abschnitt «Ableitungs-Regel»).
Die Bestandssichtung hat belegt, dass es **kein Template gibt**: ein neuer Muster-Artikel wird
faktisch aus dem zuerst geschriebenen abgeleitet (Schulbau 20.07. → Healthcare 25.07. →
Wohnungsbau 27.07.2026; CHANGELOG Z. 358 «Struktur analog Schulbau/Healthcare»). Die Weiche
konnte also nicht in ein Template — die Regel steht dort, wo abgeleitet wird. Sie verlangt:
jede Fuehrungsaussage vor der Uebernahme gegen `wissen/koordination/QUERBEZUEGE.md` pruefen,
bauaufgaben-abhaengige Saetze als Weiche markieren, und Vorbehalte eines Kennwerts mit dem Wert
mitwandern lassen. Benannte kuenftige Kandidaten: vierte Bauaufgabe «Gewerbe/Buero», sechster
Healthcare-Subtyp «ambulante Praxisbauten» (beide Entscheid Raphael, offen).

**d) Rang-Stolperstein an der Wurzel korrigiert** (`CLAUDE.md`, Abschnitt Goldstandards).
**Fund dieses Laufs, nicht Teil des Auftrags:** Die KB-eigene `CLAUDE.md` bezeichnete 2102
Muttenz und 2206 Schoental als **«die beiden 2. Plaetze»** — genau der Fehler, den der
Loop-Auftrag als belegten Stolperstein fuehrt, an der Stelle, die **jeder Lauf dieser KB zuerst
liest**. Belegt und jetzt eingetragen: **2102 = 4. Rang / 3. Preis** (Jurybericht S. 15),
**2206 = 3. Rang / 3. Preis** (Schlussbericht S. 11, amtlich bestaetigt). Die
Goldstandard-Eigenschaft haengt am dokumentierten Delta zum Sieg, nicht am Rang, und bleibt
unveraendert bestehen.

## 5. Verifikation — Refuter: NICHT BESTANDEN, drei Beanstandungen eingearbeitet

Ein unabhaengiger Refuter hat sieben Pruefpunkte gegen die Originalquellen geprueft.
**Gesamtverdikt NICHT BESTANDEN.** Gehalten haben: Fuehrungsaussage Healthcare (gegen
Fuehrungsmatrix und die Selbstauskunft von `grobkosten` geprueft), die Weiche fuer Schulbau
**und** Wohnungsbau (beide Fuehrungen belegt — die Weiche wiederholt den Fehler nicht in der
Gegenrichtung), Kennwert-Band und Vorbehalt, kein Substanzverlust, Schreibregeln.

Beanstandet und korrigiert:

1. **Datum ohne tragfaehigen Beleg.** Ich hatte die Schulrats-Verfuegung zu 2206 mit
   «17.11.2022» beziffert, uebernommen aus der Quellenzeile der Rang-Klaerung. Der Dateiname
   `221109_Entscheid_Schoental_Altstaetten.pdf` kodiert aber den **09.11.2022**, der Rohextrakt
   traegt keinen OCR-Text, das Dossier nennt kein Datum — acht Tage Widerspruch in derselben
   Zitatzeile. **Das Datum ist zurueckgezogen**, der Widerspruch steht als offener Punkt in
   `QUESTIONS.md`. Der Rang selbst ist davon nicht beruehrt.
2. **Dieselbe Falschaussage im `wiki/INDEX.md`.** Zwei Healthcare-Stellen (Z. 127 und der
   Artikel-Eintrag zu `kennwerte-healthcare`) trugen die Standardformel unveraendert weiter.
   Beide berichtigt. Die Schulbau-Stelle im selben Register blieb bewusst unangetastet, weil
   sie dort richtig ist. **Ohne den Refuter waere die Korrektur auf den Artikel beschraenkt
   geblieben und das Register haette weiter falsch gezeigt.**
3. **Widerspruechliche Ortsangabe** in einer neuen Formulierung («Weiche direkt darueber …
   siehe unten») praezisiert.

Eine Fehlleitung des vorgelagerten Sichtungs-Subagenten wurde vor der Umsetzung selbst
abgefangen: er legte nahe, das Kennwert-Band von 826–1'420 auf 826–1'285 zu **aendern**. Die
Gegenpruefung am Original (`realwert-sachwert.md` Z. 561–576) zeigt, dass 826–1'285 ausdruecklich
der **reproduzierbare Rohband** und **kein neuer geltender Band** ist; der Entscheid darueber
liegt bei Raphael. Der Band bleibt bei 826–1'420, der Vorbehalt ist jetzt beziffert.

## 6. Messung des Ertrags

`git diff --numstat` gegen den Stand vor diesem Lauf: **+86 / −9** ueber sechs Inhalts- und
Regeldateien (`CLAUDE.md` 37/1, `wiki/QUESTIONS.md` 25/0, `wiki/muster/kennwerte-healthcare.md`
13/6, `wiki/INDEX.md` 7/2, `kennwerte-schulbauten.md` 2/0, `kennwerte-wohnungsbau.md` 2/0). Die
Registerpflege in `CHANGELOG.md` (+49) und `training/PROGRAMM.md` (+35) ist bewusst **nicht**
als Ertrag mitgezaehlt. Alle neun Loeschungen sind kontrollierte Zeilenersetzungen, zeilenweise
gegengelesen — kein Beleg und keine Fundstelle ersatzlos entfernt.

## 7. Naechster Schritt

**Kein Etappen-Baustein mehr offen, und dieser Lauf hat den letzten seither entstandenen
Sachpunkt geschlossen.** Empfehlung unveraendert wie nach Lauf 04: den Loop auf
Beobachtungstakt zuruecknehmen, bis entweder der Jurybericht 2501 Steinfabrik eintrifft oder
Raphael eine neue Richtung entscheidet (Etappe 5, vierte Bauaufgabe «Gewerbe/Buero», sechster
Healthcare-Subtyp). Verbleibende Nebenaufgaben ohne Etappencharakter: Volltext-Umlaut-Sanierung
`delta-zum-ersten-rang.md`, raumweiser Kennwert-Quervergleich 2408, Zusammenfuehrung H8/S7,
neu das offene Ausstellungsdatum der Verfuegung 2206.

**Ohne neuen Entscheid oder neues Material erzeugt der naechste Lauf dieses Loops kein
inhaltliches Delta.**

## 8. Nebenbefund Betrieb (nicht Loop-Sache, aber diesen Lauf betreffend)

Der Sicherungslauf `nas-commit-now.sh` hat den Stand erfolgreich **committet**
(`c07fa28f3`, 02:48:45), der anschliessende Abgleich mit GitHub scheiterte —
**Versuch 488, Divergenz 396 lokal / 266 remote**. Der Vorgang ist seit dem 29.08.2026 als
**P1** im Register `logbuch/fristen.md` geführt; dieser Lauf hat dort nur einen datierten
Messnachtrag angehängt, keinen neuen Vorgang eröffnet. **Praktische Folge für diese KB:** der
Abschluss der Etappe 4 samt der heute behobenen Fehlerquelle liegt ausschliesslich auf dem NAS
und ist nicht im GitHub-Backup.

**Nicht selbst aufgelöst, bewusst:** unbeaufsichtigter Lauf, Eingriff in Git-Interna über fremde
unbestätigte Arbeit mehrerer parallel laufender Lanes (Rule `interaktive-eingriffe` Punkt 3).
Die Konflikte sitzen ausnahmslos in append-at-top-Dateien (CHANGELOGs mehrerer KBs) — dieselbe
Fehlerfamilie, die auch der heutige inhaltliche Befund berührt: mehrere Läufe schreiben an
denselben Kopf, und niemand merkt es, bis es widersprüchlich wird.
