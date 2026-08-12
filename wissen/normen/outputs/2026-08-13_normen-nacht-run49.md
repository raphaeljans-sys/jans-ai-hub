# Normen-Training Run 49 (MacBook Pro, 13.08.2026) — 17 Refuter-Runden als Multi-Agent-Flotte, und was sie über Run 48 zutage fördern

**Kurzfassung.** Die 17 Refuter-Runden für den P2-Block sind gefahren, als Workflow mit
**34 Agenten** (17 Refuter, 17 Inline-Einarbeiter, Pipeline ohne Barriere), 6,57 Mio Subagent-Token,
24 Minuten Laufzeit, 0 Fehlschläge. Das Ergebnis ist unbequem und deshalb wertvoll:

> **17 von 17 Destillaten BEANSTANDET · 70 Kernbefunde · 190 Nebenbefunde · null Hebungen auf
> `established`.**

Der Hauptprozess hat fünf Befundklassen selbst am Original nachgeprüft — **alle fünf bestätigt**,
darunter ein Fehler in einem Artefakt, das der Hauptprozess in Run 48 selbst geschrieben hatte.

## 1. Was die Flotte gefunden hat

| Destillat | Kern | Neben | | Destillat | Kern | Neben |
|---|--:|--:|---|---|--:|--:|
| sia-118-244-2006 | 3 | 11 | | sia-197-1-2004 | 3 | 9 |
| sia-118-246-2006 | 3 | 7 | | sia-197-2-2004 | 5 | 18 |
| sia-118-248-2006 | 2 | 12 | | sia-370-21-1987 | 3 | 12 |
| sia-118-257-2005 | 4 | 8 | | sia-370-24-1979 | 7 | 9 |
| sia-118-262-2004 | 2 | 7 | | sia-380-3-1991 | 4 | 14 |
| sia-118-263-2004 | 3 | 11 | | sia-382-2-2011 | 5 | 10 |
| sia-118-265-2004 | 8 | 17 | | sia-162-051-a1-a2 | 4 | 9 |
| sia-118-267-2004 | 7 | 14 | | sia-162-152-a1-a2 | 3 | 11 |
| sia-162-6-1999 | 4 | 11 | | | | |

Die Kernbefunde fallen in fünf wiederkehrende Klassen:

1. **Systematischer Seitenversatz** (118/244, 118/246, 118/265): 40 bis 44 Fundstellen je Destillat
   um genau eine Seite zu niedrig, bei 118/265 unregelmässig verschoben.
2. **Falsche BKP-Codes** (118/246, 118/248, 118/267) — ausgerechnet in den Abschnitten, die der
   Skill `ausschreibung` als LV-Vorlage liest.
3. **Fehlende ausführungsrelevante Anforderungen** — ganze Ziffern, Haftungsverteilungsregeln,
   Vergütungsgrenzen, bei 380/3 ein ganzes Kapitel.
4. **Falsche Zahlenwerte in sicherheits- oder vergütungsrelevanten Grössen** (197/2 Fluchtwegabstand,
   118/244 Ausmasszuschlag, 382/2 Kennwerte).
5. **Selbstwidersprüche im Destillat** — quer durch alle 17.

## 2. Nachprüfung durch den Hauptprozess (Pflicht, fünf Klassen, alle bestätigt)

Ein Refuter-Befund wird nie ohne eigene Gegenprüfung übernommen. Geprüft wurden die schwersten
und die am breitesten wirkenden Klassen:

- **Seitenversatz, bestätigt.** Am Original gemessen: gedruckte Seitenzahl = PDF-Seite, 1:1 über
  alle 16 Seiten. Ziff. 0 «Geltungsbereich» steht auf **S. 5** (Destillat: 4), Ziff. 1
  «Werkvertrag» auf **S. 7** (Destillat: 6) — bei 118/244 und 118/246 identisch.
  **Das ist kein neuer Methodenfehler, sondern die Verletzung einer bestehenden Pflicht:**
  Methodik-Pflicht 6 verlangt seit Run 39, die Seitenzahl am Seitenrand **abzulesen** statt sie
  aus der Blattnummer zu berechnen. Die Destillier-Welle von Run 48 hat sie geschätzt, und
  nichts im Lauf hat es gemerkt.
- **BKP 227, bestätigt.** BKP 2017 führt 227 als «Äussere Oberflächenbehandlungen» (227.0 Gerüste,
  227.1 Äussere Malerarbeiten, 227.2/.3 Holzschutz) — mit Naturstein nichts zu tun. Zutreffend
  sind 216.0 Natursteinarbeiten, 281.4 Bodenbeläge aus Naturstein, 282.2 Wandbekleidungen aus
  Naturstein. Dieselbe Fehlerfamilie wie der BKP-271.10-Vorfall aus Run 43, und wieder in einem
  Abschnitt, der zur Übernahme ins LV gedacht ist.
- **SIA 197/2, Figur 4, bestätigt.** Am eigenen 300-dpi-Rendering abgelesen: die Kurve läuft als
  Plateau bei **500 m** von 0 bis 1 % Längsneigung und fällt linear auf 300 m bei 5 %. Die «600»
  ist die oberste Achsenteilung, nicht ein Kurvenwert. Das Destillat hat die Achsenbeschriftung
  für den Wert gehalten — bei einem maximalen **Fluchtwegabstand** sind das 20 % zu viel.
- **SIA 197/2, Ziff. 7.4.2.3, bestätigt.** Das Original führt zwei getrennte Spiegelstriche:
  plötzliche Zunahme auf 100 kN/m² bei t = 0, und lineare **Abnahme** von 100 auf 0 kN/m²
  innerhalb einer Millisekunde. Das Destillat hängt die Millisekunde an den Anstieg und dreht
  damit den Impuls des Lastansatzes.
- **SIA 118/262, Ziff. 8.4.2.2, bestätigt — und der Fehler war meiner.** Siehe Ziff. 3.

## 3. Der teuerste Einzelbefund: die Synthese trug eine Bedeutungsumkehr

Der Wiki-Artikel `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` (Run 48, vom Hauptprozess
selbst geschrieben) führte für den Betonbau:

> «Arbeitsgerüste sind grundsätzlich NICHT inbegriffen. […] wer ein Beton-LV nach dem Muster
> eines Mauerwerks-LV schreibt und das Gerüst als inbegriffen behandelt, verschenkt die Position.»

Der Originaltext, vom Hauptprozess wörtlich nachgelesen (Ziff. 8.4.2.2, S. 21):

> «Arbeitsgerüste, die für die Ausführung der Betonarbeiten nötig sind, **werden nicht vergütet**,
> ausgenommen wenn im Leistungsverzeichnis hierfür getrennte Positionen enthalten sind.»

«Nicht vergütet» heisst: nicht **separat** vergütet, also im Einheitspreis enthalten. Die Aussage
der Synthese war exakt umgekehrt, und die Handlungsempfehlung wies in die falsche Richtung.
Korrigiert, mit sichtbarem Korrekturkasten an Ort und Stelle.

**Drei Dinge machen diesen Befund zum lehrreichsten des Laufs.** Erstens stand er in dem Satz, den
die Synthese selbst als «die praktisch folgenreichste Zeile» hervorhob — der Merksatz war nicht
nur falsch, sondern betont. Zweitens war er nicht durch flüchtiges Arbeiten entstanden, sondern
durch korrektes Weiterverarbeiten eines fehlerhaften Destillats: die Synthese hat getreu
wiedergegeben, was `sia-118-262-2004` behauptete. Drittens hatte der Hauptprozess den Artikel in
Run 48 ausdrücklich als «Warnkarte, nicht Zitierquelle» gekennzeichnet, **weil** die Destillate
unverifiziert waren. Der Vorbehalt war richtig — er hat den Fehler nur nicht verhindert, sondern
lediglich entschuldbar gemacht.

## 4. Vorschlag: Methodik-Pflicht 11 (Raphael zur Freigabe)

> **Ein unverifiziertes Destillat ist kein Wissensstand, sondern ein Entwurf. Aus Entwürfen wird
> keine Querschnitts-Synthese, kein Registereintrag und keine Skill-Empfehlung gebaut — auch nicht
> mit Vorbehalt.** Wer einen Bestand verdichten will, refutiert ihn zuerst.

Begründung aus diesem Lauf: 17 von 17 Destillaten waren beanstandet, mit 70 Kernbefunden. Ein
Destillat ohne Refuter-Runde ist in dieser Grössenordnung nicht «weitgehend richtig mit
Randunschärfen», sondern trägt Fehler, die bis in ein Leistungsverzeichnis reichen. Der
angebrachte Vorbehalt («Warnkarte») hat die Weiterverbreitung nicht verhindert, weil ein
Vorbehalt im Kopf eines Artikels beim Lesen der Tabelle nicht mitgelesen wird — dieselbe Mechanik
wie bei Methodik-Pflicht 9 (angehängte Korrekturen werden nicht gelesen, inline korrigierte schon).

Die Alternative wäre, den Vorbehalt zu verschärfen. Das genügt nicht: der Vorbehalt stand bereits
zweimal im Artikel, fett, und der Fehler stand trotzdem in der Tabelle.

## 5. Was die Multi-Agent-Flotte methodisch gezeigt hat

**Die neue Selbstwiderspruchs-Prüfung war die produktivste Einzelmassnahme.** In Run 48 waren zwei
von fünf Kernbefunden interne Widersprüche; daraus wurde für diesen Lauf eine ausdrückliche
Prüfanweisung. Sie trifft quer durch alle 17 Destillate und ist billig: sie braucht nur das
Destillat, nicht das Original. Ein Destillat, das sich selbst widerspricht, hat immer mindestens
eine falsche Stelle — das ist der einzige Befundtyp, der ohne Quellenzugriff beweisbar ist.

**Getrennte Rollen für Urteil und Eingriff haben sich bewährt.** Der Refuter urteilt und ändert
nichts; ein zweiter Agent arbeitet die Nebenbefunde inline ein und markiert die Kernbefunde
sichtbar, statt sie zu übernehmen. Alle 17 Destillate tragen jetzt den Marker
«⚠ REFUTER-KERNBEFUND (Run 49), Nachprüfung Hauptprozess ausstehend», keines wurde stillschweigend
umgeschrieben, und keines wurde von einem Agenten selbst auf `established` gehoben.

**Die Pipeline ohne Barriere hat Wartezeit gespart.** Jedes Destillat lief unabhängig durch beide
Stufen; die 98-seitige 118/267 hat die 4-seitigen Amendments nicht blockiert.

**Ehrliche Bilanz der Nachprüfung:** Der Hauptprozess hat **5 von 70** Kernbefunden selbst am
Original verifiziert, ausgewählt nach Schwere und Breitenwirkung. Die übrigen 65 sind plausibel,
aber **nicht** hauptprozess-verifiziert; sie stehen deshalb als Marker im Destillat und nicht als
Korrektur. Das ist der ausgewiesene Rückstand von Run 49, nicht sein Ergebnis.

## 6. Offen — Übergabe

1. **65 Kernbefunde am Original nachprüfen** und danach inline korrigieren. Reihenfolge nach
   Wirkung: BKP-Codes und Vergütungs-/Ausmassgrössen zuerst (sie wandern ins LV), dann die
   fehlenden Anforderungen, zuletzt die Fundstellen-Versätze.
2. **Seitenversatz mechanisch beheben.** Bei 118/244 und 118/246 ist er ein konstanter Off-by-one
   über Ziff. 0 bis 2 und lässt sich gezielt nachziehen; bei 118/265 ist er unregelmässig und
   muss Fundstelle für Fundstelle geprüft werden.
3. **Erst danach** die ABB-Synthese von der Warnkarte zur Zitierquelle hochstufen — und die
   Grenzwerte beider Tabellen dabei gezielt nebeneinander prüfen, was bisher niemand getan hat.
4. Methodik-Pflicht 11 vorlegen (Ziff. 4).
5. Unverändert offen aus Run 48: Anhang-D-Matrix der SIA 112/1 rechnerisch aufnehmen (N48-3),
   SIA 118/265:2018 beschaffen (N48-4), Nachfolge-Status der vier Altnormen (N48-5), SIA 382/2
   gegen SIA 382/1:2014 (N48-7).

## Belege

Workflow-Transkript: `subagents/workflows/wf_cd94e6d1-e6c/journal.jsonl` (ein Ergebnis-Datensatz
je Agent). Alle 17 Destillate in `destillate/` tragen aktualisiertes Frontmatter
(`last_updated: 2026-08-13`, Verdikt und Befundzahlen im Feld `verifikation`) sowie die
Kernbefund-Marker im Fliesstext. Korrigiert: `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md`
(Betonbau/Arbeitsgerüst, Status- und Belastbarkeitsblock).
