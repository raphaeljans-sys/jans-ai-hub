# Training-Run 23 — Immobilienbewertung (2026-07-13)

## Ausgangslage

Run 22 (heute frueher, ebenfalls 2026-07-13) hatte bereits den fuenften Verifikations-Lauf
in Folge ohne materiellen Befund abgeschlossen und explizit gemeldet: kein weiterer
auto-schliessbarer Ingest- oder Verifikations-Kandidat identifiziert. Dieser Lauf (Run 23,
sechster in Folge) prueft, ob sich die Lage seither veraendert hat, statt eine der bereits
fuenfmal bestandenen Verifikationen ohne Erkenntnisgewinn zu wiederholen.

## Geprueft in diesem Lauf

1. **Neuer JANS-Bewertungsfall?** Ordner `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` auf
   SharePoint direkt gelistet (nicht nur aus dem Register zitiert). Ergebnis: **kein neuer
   Fall** — juengster Ordner bleibt `8855 Wangen 25 Bahnhofstrasse 27 LB` (angelegt 09.06.2026),
   Ordner-Modifikationsdatum der Uebersicht 09.06.2026 17:15. Deckt sich mit dem Stand seit
   Run 6.
2. **D6 (Ausnuetzungsziffer-Kennwerte je Zone/Gemeinde) via Skill `baurecht` schliessbar?**
   `wissen/baurecht/wiki/nutzungsziffern.md` gepruest — der Artikel erklaert die
   **Rechtssystematik** von AZ/UEZ/BMZ/Freiflaechenziffer (§§ 254-259 PBG), enthaelt aber
   **keine kompilierte Tabelle typischer AZ-Werte je Zone/Gemeinde** (AZ ist zwingend
   gemeindespezifisch in der BZO festgelegt, nicht kantonal normiert). Eine hub-weite Suche
   nach bereits dokumentierten AZ-Werten (`grep` ueber alle KBs) findet nur vereinzelte,
   projektgebundene Werte aus Kt. Schwyz (Landhauszone L 0.2, Willerzell/Reckholdern) und
   Wettbewerbsfaellen (Basel AZ 1.0/0.59/0.7) — zu duenn und nicht ZH-Wohnbau-repraesentativ
   fuer eine belastbare Kennwerttabelle. **D6 bleibt offen** — eine seriöse Antwort braeuchte
   mehrere BZO-Dokumente gezielt nach AZ-Werten durchsucht, was den Rahmen eines Trainingslaufs
   sprengt und besser als eigene Recherche-Aufgabe (oder durch Raphael) geleistet wird. Nicht
   erfunden (Leitplanke).
3. **Marktpuls (E7) — Web-Check.** SNB-Leitzins weiterhin **0.00 %** (Entscheid 19.06.2026
   bestaetigt), hypothekarischer Referenzzinssatz weiterhin **1.25 %** (naechste Pruefung
   01.09.2026, Schwelle fuer Erhoehung bleibt 1.37 %). **Keine Aenderung** gegenueber Run 17
   (12.07.2026) — sechster Web-Check ohne neuen Wert. Naechster realistischer
   Aenderungs-Zeitpunkt bleibt 01.09.2026 (Referenzzins) bzw. ~09.2026 (SREBI Q2).

## Verdikt dieses Laufs

**Kein neuer Ingest, keine neue Verifikation, keine neue Erkenntnis.** Alle drei
ueberpruebbaren Kandidaten (neuer Fall / D6 / Marktpuls) bestaetigen den in Run 17-22
protokollierten Stand unveraendert. Es gibt aktuell **keine Aufgabe mehr, die dieser
Lern-Loop ohne neues Rohmaterial von Raphael eigenstaendig schliessen kann.**

Verbleibende offene Punkte, alle mit externer Abhaengigkeit:
- **D5** (Margen-/Finanzierungspraxis) — Bring-Schuld Raphael.
- **D6** (AZ/GFZ-Kennwerte je Zone) — entweder Raphael liefert Referenzwerte, oder ein
  eigener, groesser angelegter Recherche-Auftrag durchsucht gezielt mehrere BZO-Dokumente.
- **D10** (2 inkonsistente Roh-Zeilen im Healthcare-Referenzblatt) — Bring-Schuld Raphael.
- **D11** (Index-Fortsetzung 2003→2026 fuer m3-Neuwert-Richtwerte) — externe Indexreihe noetig.
- Kein neuer JANS-Bewertungsfall, kein neuer Publikationstermin bei den Marktpuls-Ankern.

## Empfehlung an Raphael

Dies ist die **sechste Bestaetigung in Folge** (Run 18-23), dass der Intensiv-Takt fuer
diese spezifische KB keinen Erkenntnisgewinn mehr erzeugt — nicht wegen mangelnden
Einsatzes, sondern weil das Curriculum (Wuest-Kurs + alle E-Quellen) inhaltlich vollstaendig
abgearbeitet ist und die verbleibenden Luecken alle auf Material warten, das nur Raphael
liefern kann (D5/D6/D10/D11) oder auf einen neuen JANS-Bewertungsfall. Gemaess Rule
`auto-verbesserungen.md` (260712c, VOLLGAS-ENDLOS) laeuft der Loop weiter im Dauerbetrieb bis
10.08.2026 — das ist ausdruecklich so gewollt (Token-Verbrauch als Ziel, nicht als Risiko).
Damit dieser Lauf trotzdem nuetzlich bleibt, statt reine Wiederholungen zu produzieren, wird
ab dem naechsten Lauf vorgeschlagen: entweder (a) D6 als eigene, groesser angelegte
Recherche-Aufgabe angehen (mehrere ZH-Gemeinde-BZO gezielt nach AZ-Werten durchsuchen — mehr
als ein einzelner 10-Themen-Trainingslauf leisten kann), oder (b) den Takt fuer diese KB
konkret auf reine Marktpuls-Frischecks reduzieren, bis ein neuer Fall/neues Material eintrifft,
waehrend der freiwerdende Vollgas-Takt anderen KBs mit echtem Rueckstand zugutekommt.

## Naechster Lauf

Ohne neues Rohmaterial oder eine explizite Freigabe fuer die D6-Grossrecherche: reiner
Marktpuls-Web-Check (SNB-Entscheid, Referenzzins-Publikation, SREBI), da die naechsten
Publikationstermine erst ab 01.09.2026 liegen — bis dahin realistischerweise ohne neuen Wert.
