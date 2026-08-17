---
title: SIA 416/1 Ziff. 4.3.3 — die Abgrenzung der Verwendungszwecke (wo Doppelzählung entsteht)
status: established
last_updated: 2026-08-17
sources:
  - "SIA 416/1:2007 «Kennzahlen für die Gebäudetechnik», Ziff. 4.1.1-4.1.6, 4.2, 4.3.1-4.3.3, 4.4.2 (S. 26-28), Ziff. 4.4.6 (S. 31) — in Run 55 (17.08.2026) vom Hauptprozess am eigenen 300-dpi-Rendering der Originalseiten gelesen (Präfix ref416-r55-), nicht aus dem Destillat übernommen"
  - "Destillat [[sia-416-1-2007]] (status speculative — dieser Artikel stützt sich NICHT darauf, sondern auf die eigene Originallektüre)"
links: [[sia-416-1-2007]], [[sia-416-2003]]
---

# SIA 416/1 Ziff. 4.3.3 — die Abgrenzung der Verwendungszwecke

## Warum dieser Artikel

Die Energiekennzahl nach SIA 416/1 lässt sich auf zwei Arten aufteilen: **nach Energieträger**
(Ziff. 4.2) und **nach Verwendungszweck** (Ziff. 4.3). Die zweite Aufteilung ist die, nach der
Bauherrschaften fragen — «wie viel geht in die Heizung, wie viel in die Lüftung». Und genau
dort liegt die Fehlerquelle: die sechs Verwendungszwecke grenzen aneinander, und **die Norm
regelt die Grenzen ausdrücklich**, weil sonst Energie doppelt oder gar nicht gezählt wird.

Anlass des Artikels ist ein realer Fehler im eigenen Bestand: das Destillat zu SIA 416/1 hatte
die Grenze zwischen **Lüftung EV** und **Wärme für Raumheizung Eh** so verkürzt, dass die
Lufterwärmung in beiden Töpfen landete (Refuter-Runde Run 55, korrigiert). Der Fehler war
unauffällig, weil beide Sätze für sich plausibel klangen.

## Die sechs Verwendungszwecke und ihre Symbole (Ziff. 4.3.3, S. 27)

| Verwendungszweck | Symbol | Untergliederung |
|---|---|---|
| Beleuchtung | E<sub>Li</sub> | — |
| Betriebseinrichtungen | E<sub>Ap</sub> | — |
| Diverse Gebäudetechnik | E<sub>TS</sub> | Transport Personen/Waren E<sub>Tr</sub> · Weitere gebäudetechnische Anlagen E<sub>oTS</sub> |
| Lüftung/Klimatisierung | E<sub>VCH</sub> | Lüftung E<sub>V</sub> · Kühlung/Entfeuchtung E<sub>C</sub> · Befeuchtung E<sub>H</sub> |
| Wärme | E<sub>hww</sub> | Wärme für Raumheizung E<sub>h</sub> · Wärme für Warmwasser E<sub>ww</sub> |

Über allem steht Ziff. 4.3.2: **zu jedem Verwendungszweck gehören immer auch die zugehörigen
elektrischen Hilfsaggregate** (Betriebsgeräte, Steuerungen, Pumpen). Ein Verwendungszweck ist
also nie nur die Nutzenergie, sondern der ganze Strang bis zur Abgabe.

## Die vier Grenzen, an denen es schiefgeht

**1. Lüftung E<sub>V</sub> gegen Wärme für Raumheizung E<sub>h</sub> — die wichtigste Grenze.**
Zum Energiebedarf Lüftung gehören die **Auswirkungen der luftseitigen Druckverluste** der
Komponenten für die Kühlung, die Be- und Entfeuchtung **sowie für die Erwärmung der geförderten
Luft**. Das ist ein **Ventilator**-Posten, kein Wärme-Posten: E<sub>V</sub> trägt den
Mehraufwand, den das Heizregister dem Ventilator als Widerstand aufbürdet — nicht die Wärme,
die das Register abgibt. Die **Energie für die Erwärmung der Zuluft gehört zu E<sub>h</sub>**,
soweit sie nicht der Nachwärmung bei Be- oder Entfeuchtung dient. Wer den Halbsatz
«Auswirkungen der luftseitigen Druckverluste … für die» überliest, ordnet die Lufterwärmung
beiden Töpfen zu.

**2. Nachwärmung: E<sub>C</sub> und E<sub>H</sub> gegen E<sub>h</sub>.**
Kühlung/Entfeuchtung E<sub>C</sub> umfasst die allfällige Nachwärmung **bei Entfeuchtung**;
Befeuchtung E<sub>H</sub> die allfällige Nachwärmung. E<sub>h</sub> nimmt die Zulufterwärmung
**nur, soweit sie nicht dieser Nachwärmung dient**. Die Norm zieht die Linie also nach dem
**Zweck** der Wärme, nicht nach dem Bauteil, das sie liefert — dasselbe Register kann je nach
Betriebsfall in E<sub>h</sub>, E<sub>C</sub> oder E<sub>H</sub> fallen.

**3. Betriebseinrichtungen E<sub>Ap</sub> — negativ abgegrenzt.**
E<sub>Ap</sub> ist der Betrieb der Geräte, welche der Nutzung der Räume dienen, in denen sie
installiert sind, oder welche diesen Räumen zugeordnet werden können — **ohne Beleuchtung und
ohne Lüftung/Klimatisierung**. Der Ausschluss ist ausdrücklich, weil Geräteperipherie sonst
zwischen E<sub>Ap</sub>, E<sub>Li</sub> und E<sub>VCH</sub> wandert.

**4. Lüftungsstrom gegen Hilfsenergie (Ziff. 4.4.2, S. 28) — die Grenze eine Ebene tiefer.**
In der Rechenmechanik gilt: **der Elektrizitätsbedarf für die Lüftung ist keine Hilfsenergie**
der Verteilsysteme, sondern ein eigenständiger Bedarf, der direkt in Tabelle 3 geht. Umgekehrt
gilt: **wird die Luft in einer mechanischen Lüftungsanlage geheizt oder gekühlt, ist die
Lüftungsanlage ein Verteilsystem für Raumheizung bzw. Kühlung.** Dieselbe Anlage ist also je
nach Betrachtung Verteilsystem (für die Wärme) und eigenständiger Verbraucher (für den Strom).

## Zwei Punkte, die in der Praxis regelmässig fehlen

- **E<sub>Li</sub> schliesst die Aussenbeleuchtung ein** — Raumbeleuchtung,
  Dekorationsbeleuchtung, Sicherheits- und Notbeleuchtung, Aussenbeleuchtung. Bei Arealen mit
  viel Umgebungslicht ist das ein spürbarer Posten, der gern aus der Bilanz fällt.
- **E<sub>ww</sub> schliesst die elektrischen Begleitheizungen ein** (Begleitbandheizungen der
  Zirkulationsleitungen), neben Speicherung, Verteilung, Abgabe und Pumpen.

## Wie die Aufteilung rechnerisch entsteht (Ziff. 4.4.6, S. 31)

Sind die Erzeugungssysteme den thermischen Verwendungszwecken **eindeutig zuordenbar** (keine
kombinierten Systeme für Raumheizung und Warmwasser), ist der Bedarf je Verwendungszweck direkt
aus Tabelle 3 ablesbar und in Tabelle 4 übertragbar. Bei **kombinierten** Erzeugungssystemen
wird die gewichtete Energie des Systems **proportional zum Wärme-/Kältebedarf** (Zeile 1) auf
Raumheizung, Warmwasser und Kühlung aufgeteilt. Die Aufteilung nach Verwendungszweck ist damit
bei kombinierten Anlagen **eine Umlage, keine Messung** — ein Vorbehalt, der in jede
Bauherren-Aussage gehört, die Prozentanteile je Verwendungszweck nennt.

## Was das für JANS heisst

- **Skill `energie`:** Bei Bauherren-Antworten zur Aufteilung des Energieverbrauchs immer
  dazusagen, ob die Anlage eindeutig zuordenbar oder kombiniert ist — im zweiten Fall ist die
  Aufteilung eine proportionale Umlage nach Ziff. 4.4.6.
- **Skill `flaechen-nachweis` / `kostenschaetzung`:** Die Verwendungszweck-Aufteilung ist
  **nicht** die BKP-Aufteilung und nicht die Flächenaufteilung. Sie folgt der Energie, nicht
  dem Bauteil.
- **Gegenüber Fachplanern:** Taucht in einer Lüftungs-Energiebilanz die *Wärmemenge* des
  Heizregisters unter «Lüftung» auf, ist das nach SIA 416/1 falsch abgegrenzt — dort gehören
  nur die Druckverlust-Auswirkungen hin. Die Frage lohnt sich, sie ist ein häufiger Fehler.

## Ausgaben-Disziplin

SIA 416/1:2007, gültig ab 1. Juli 2007 (genehmigt 8. September 2006), ersetzt die Empfehlung
SIA 180/4 «Energiekennzahl» vom 1. September 1982. Ob eine jüngere Ausgabe besteht, ist im
Bestand **nicht** belegt — das Register führt nur die Ausgabe 2007; Korrigenda wurden nie
eingesehen (offen, siehe [[QUESTIONS]]).

## Urheberrecht

Sinngemässe Wiedergabe mit Fundstelle. In ausgehende Dokumente gehören nur kurze Zitate mit
Quellenangabe, keine Norm-Passagen und keine Tabellen im Wortlaut.
