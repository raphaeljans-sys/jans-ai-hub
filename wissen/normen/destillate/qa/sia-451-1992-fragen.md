---
title: "SIA 451:1992 — Q&A-Selbstbefragung (Datenformate für Leistungsverzeichnisse)"
norm: "SIA 451"
ausgabe: "1992"
quelle_pdf: "451_1992_d.pdf"
erstellt: 2026-07-15
typ: qa-selbstbefragung
station: MacBook Pro
---

# SIA 451:1992 — Prüfungs-Selbstbefragung (am Original beantwortet)

Fokus: Datenformate für Leistungsverzeichnisse (Satzarten, Feldstruktur, NPK-Bezug,
Zusammenhang mit SIA 2005 / CRB). Alle Antworten unabhängig aus dem Original-PDF
gewonnen, mit Fundstelle. Keine wörtlichen Norm-Textkopien.

## Fragen und Antworten (am Original beantwortet)

**F1 — Welchen Normstatus hat SIA 451:1992, und mit welchen zwei weiteren Dokumenten
bildet sie eine Einheit?**
A: Es ist eine SIA-Empfehlung (SN 509 451, Bauwesen), Ausgabe 1992. Sie bildet zusammen
mit dem Merkblatt SIA 2005 und der CRB-Broschüre «NPK-Informationen für Anwender»,
Ausgabe 1992, eine Einheit (Titelblatt, S. 1). Aufgestellt in Zusammenarbeit mit CRB,
SBV und VSS.

**F2 — Welche vier Grundlagen bilden laut Ziff. 0 2 den Datenverbund, und welche davon
wird in der Norm NICHT behandelt?**
A: (1) genormte Einteilung der Datensätze (Austauschrecords), (2) genormter Zeichensatz
(ASCII Code Page 850, ISO-Norm 8859/1), (3) genormtes Format für den physischen
Datenträger (DOS-Diskette 3,5"), (4) Standardprotokolle für Datenfernübertragung. Punkt
(4) wird ausdrücklich NICHT behandelt, da nicht bauspezifisch (Ziff. 0 2, S. 3).

**F3 — Welche Recordarten kennt Feld 1, und wofür stehen A, G und Z?**
A: Feld 1 «Recordart» (Länge 1 Stelle): A = Header Record (logischer Beginn) mit
Dokumenteninformation; B = Sekundärgliederungen; C = Konditionen; D bis F = Reserve;
G = Standardrecord für Leistungsverzeichnisse nach NPK Bau; U bis Y = Reserve;
Z = Schlussrecord (logisches Ende) mit Dokumenteninformation (Ziff. 2 2 Feld 1, S. 5).

**F4 — Wie ist das Katalog-Feld (Feld 2) aufgebaut, wie lang ist es, und was bedeutet
das Beispiel 313 1 89?**
A: Feld 2 «Katalog» enthält Kapitel, Sprache und Ausgabejahr, Länge 6 Stellen. Beispiel
313 1 89 = NPK Bau, Kapitel 313 Beton- und Stahlbetonarbeiten, deutsch (Sprachcode 1),
CRB-Ausgabe 1989 (Ziff. 2 2 Feld 2, S. 5). In der Recordeinteilung (Ziff. 3 2, S. 8) ist
es zerlegt in 2a Kapitelnummer (3 Stellen, Pos. 2-4), 2b leer (1 Stelle, Pos. 5),
2c Ausgabejahr (2 Stellen, Pos. 6-7).

**F5 — Feld 13 «Mengenart»: was unterscheidet die Codes A, B und C?**
A: A = Position mit Vorausmass durch Planer; B = Position mit Festmenge durch Planer;
C = Position mit Festmenge durch Unternehmer (Ziff. 2 2 Feld 13, S. 6). Länge 1 Stelle.

**F6 — Feld 13: Welche Codes bezeichnen Eventualpositionen, und wie wird «einzurechnen»
von «nicht einzurechnen» unterschieden?**
A: Einzurechnende Eventualpositionen: J (Vorausmass durch Planer), K (Festmenge durch
Planer), L (Festmenge durch Unternehmer). Nicht einzurechnende Eventualpositionen:
0 (Vorausmass durch Planer), R (Festmenge durch Planer), S (Festmenge durch Unternehmer).
Zusätzlich W = Per-Position (Preisanfrage ohne Menge) (Ziff. 2 2 Feld 13, S. 6).

**F7 — Feld 15 «Menge»: Länge, Anzahl Dezimalstellen, Maximalwert?**
A: Länge 13 Stellen, davon drei Kommastellen, ohne Kommastelle/Tausenderunterteilung
gespeichert. Maximalwert entspricht 13 Neunern (10 Vor-, 3 Nachkommastellen), also
9'999'999'999,999 (Ziff. 2 2 Feld 15, S. 6).

**F8 — Feld 19 «Preis»: Länge, Dezimalstellen, Einheit?**
A: Länge 12 Stellen, davon 2 Kommastellen, angegeben in Rappen und ohne
Tausender-Unterteilung; enthält Einheitspreis bzw. Pauschal- oder Globalbetrag.
Maximalwert 9'999'999'999,99 (Ziff. 2 2 Feld 19, S. 7).

**F9 — Nenne mindestens acht Mengeneinheiten-Kürzel aus Feld 16 (Ausgabe 1992,
deutsch), inkl. der Sonder-Kürzel für pauschal/global/Leistungseinheit.**
A: u.a. St (Stück), Pr (Paar), m, m² (Quadratmeter), m³ (Kubikmeter), kg, t (Tonne),
h (Stunde), d (Tag), Wo (Woche), Mt (Monat), l (Liter), hl (Hektoliter), S (Sack),
Kb (Kübel), Kr (Karette), Ro (Rolle), % (Prozent), ‰ (Promille), kJ (Kilojoule),
pl (pauschal), gl (global), LE (Leistungseinheit, muss separat definiert werden).
Feldlänge 2 Stellen (Ziff. 2 2 Feld 16, S. 6-7).

**F10 — Was enthält Feld 21 «KAG-Code» und wie lang ist es? Was Feld 22?**
A: Feld 21 KAG-Code (5 Stellen): Nummer aus dem Baukostenplan BKP als mögliche
Gliederung des Leistungsverzeichnisses oder eine andere KAG. Feld 22 Elementcode
(6 Stellen): Code aus der Elementkostengliederung für Baukostenplanung/-überwachung
oder analoge Gliederung (Ziff. 2 2 Feld 21/22, S. 7).

**F11 — Feld 23 «Positionstext»: wofür, welche Länge? Und Feld 24?**
A: Feld 23 Positionstext (30 Stellen): Text zu nicht fest codierten Positionen aus NPK
Bau (z.B. Normpositionstexte mit Variablen, Reservepositionen, spezielle Bedingungen,
Suchtitel, Kapiteltitel). Feld 24 Spezielle Codierungen: Erweiterungen gemäss Merkblatt
2005, 2.1 Feld 24a-d, Länge max. 134 Stellen (Ziff. 2 2 Feld 23/24, S. 7).

**F12 — Wie lang ist ein vollständiger G-Record (letzte Stelle), und wie ergibt sich
das aus der Recordeinteilung?**
A: 256 Stellen. Feld 24a-i (Spezielle Codierungen, 134 Stellen) belegt die Stellen
123-256, also endet der Record bei Stelle 256 (Ziff. 3 2, S. 8).

**F13 — An welchen Stellen liegen Feld 15 (Menge), Feld 16 (Mengeneinheit) und Feld 19
(Preis) im G-Record?**
A: Feld 15 Menge: Stellen 46-58 (13 Stellen); Feld 16 Mengeneinheit: Stellen 59-60
(2 Stellen); Feld 19 Preis: Stellen 63-74 (12 Stellen). Dazwischen Feld 17 leer (Stelle
61) und Feld 18 Vorzeichen Preis (Stelle 62) (Ziff. 3 2, S. 8).

**F14 — Welches Dateiformat schreibt Ziff. 3 1 für den Diskettenaustausch unter MS-DOS
vor?**
A: Variable Recordlänge; ASCII-Dateien in line-sequentieller Aufzeichnung, jeder Record
mit CR/LF-Sequenz abgeschlossen (Ziff. 3 1, S. 8).

**F15 — Headerrecord (Ziff. 3 3): Was bedeuten die Codes von Feld 13 (Dokumenten-Code)
und Feld 14 (Dokumenten-Status)?**
A: Feld 13 Dokumenten-Code: A = Ausmass, B = Ausschreibung, C = Angebot, D = Vertrag,
E = Teilrechnung, F = Situationsrechnung. Feld 14 Dokumenten-Status: A = Entwurf,
B = provisorisch gültig, C = gültig, D = Storno (Ziff. 3 3, S. 8). Feld 1 des
Headerrecords ist stets «A».

**F16 — Schlussrecord (Ziff. 3 4): Was steht in Feld 1, Feld 15 und Feld 18?**
A: Feld 1 = «Z» (logisches Ende). Feld 15 = Anzahl Austauschrecords inklusive Header-
und Schlussrecord. Feld 18 = Fortsetzung: «+» = weitere Datei folgt, «−» = letzte Datei
(Ziff. 3 4, S. 9). Export-Datum in Feld 2/3 im Format TTMMJJ.

**F17 — Welcher Zeichensatz gilt nach Ziff. 4 / Anhang A1, und welche Codierung ist
ausdrücklich nicht mehr zulässig?**
A: Zulässig ist der ASCII-Norm-Zeichensatz Code Page 850 / ISO-Norm 8859/1 (Buchstaben
A-Z gross/klein, definierte Umlaute/Akzentzeichen für D/F/I, Ziffern 0-9, definierte
Sonderzeichen und «blank»); weitere Zeichen sind unzulässig (Ziff. 4, S. 9). Die
EBCDIC-Zeichentabelle Code Page 00500 ist nicht mehr zulässig (Anhang A1, S. 10).

**F18 — Welcher Datenträger gilt nach Ziff. 5 als Standard, und dürfen mehrere LV auf
einem Datenträger liegen?**
A: Standard sind 3½"-Disketten im DOS-Format 1,44 MByte; bei gegenseitiger Vereinbarung
sind andere Datenträger zulässig. Auf demselben Datenträger können mehrere
Leistungsverzeichnisse übergeben werden (Verweis Merkblatt 2005, 3.3) (Ziff. 5, S. 9).

**F19 — Warum wird laut Ziff. 2 1 der fest formulierte Normtext NICHT übertragen?**
A: Der Austausch fest formulierter Normtexte (inkl. Titeltexte) aus dem NPK Bau ist
weder notwendig noch sinnvoll; es genügt die eindeutige Identifikation von Katalog und
Position über die entsprechenden Codes. Nur bei variablen Texten, Reservepositionen,
speziellen Vertragsbedingungen und individuellen Katalogen wird der zum Überschreiben
freigegebene Text ausgetauscht (Ziff. 2 1, S. 4).

**F20 — Wann trat SIA 451:1992 in Kraft und welche Ausgabe ersetzt sie?**
A: Genehmigt vom Central-Comité des SIA am 23. Oktober 1992 in Bern, in Kraft seit
1. Dezember 1992; ersetzt die Empfehlung SIA 451, Ausgabe 1989 (Genehmigung/
Inkrafttreten, S. 12; Titelblatt, S. 1).

## Abgleich mit Destillat

Das Destillat (`sia-451-1992.md`) ist inhaltlich stimmig und deckungsgleich mit dem
Original: Recordarten (A/G/Z), Feld-Längen (Menge 13/3, Preis 12/2 in Rappen,
Positionstext 30, Feld 24 max. 134), Gesamtrecordlänge 256, Mengenart-Codes,
Dokumenten-Code/-Status im Headerrecord, Zeichensatz und Datenträger stimmen überein.
**Keine Fehler/Widersprüche gefunden — keine Korrektur am Destillat nötig.**

Kleinere Lücken (gemeldet, nicht ins Destillat geschrieben — Entscheid Orchestrator):

- LUECKE (Ziff. 2 2 / 3 2, Feld 20): Feld 20 «Laufnummer» (7 Stellen, mit Prüfziffer
  versehen, zum schnellen Auffinden einer Leistungsposition bei Ausmass/Abrechnung auf
  grossen Baustellen) ist in der Destillat-Feldliste nicht aufgeführt.
- LUECKE (Ziff. 3 3, Headerrecord Feld 11/12): Feld 11 «Sprachcode (nach IfA 92)» und
  Feld 12 «Stellung zur Vorversion» (A = Änderung; B = Nachtrag/Ergänzung) fehlen im
  Destillat.
- LUECKE (Ziff. 3 4, Schlussrecord): Das Export-Datumsformat TTMMJJ (Feld 2/3) ist im
  Destillat nicht vermerkt.
- LUECKE (Ziff. 3 2, Feld 2-Zerlegung): Dass das 6-stellige Katalog-Feld im Record in
  2a Kapitelnummer (3) / 2b leer (1) / 2c Ausgabejahr (2) aufgeteilt ist, ist im
  Destillat nicht explizit erwähnt.
