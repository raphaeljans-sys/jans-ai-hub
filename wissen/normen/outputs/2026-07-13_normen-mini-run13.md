# Normen-Mini-Run 13 (Mac Mini, DIN/VSS/RAL) — 13.07.2026

## Ausgangslage

Das DIN-/VSS-/RAL-Basisinventar (P1-P3) ist seit Run 5/12 vollständig `established`.
Run 12 hatte zwei offene Punkte für den nächsten Lauf hinterlassen:

1. Eine Tabellennummern-Unstimmigkeit in `din-1946-6-2009.md` (zwei parallel lesende
   Agenten hatten unterschiedliche Inhalte unter „Tabelle D.4" gemeldet).
2. Die Empfehlung, mit der Deepening-Stufe (b) Retro-Verifikation gemäss
   `training/PROGRAMM.md` zu beginnen — priorisiert für `din-1946-6-2009.md`
   (grösstes DIN-Destillat, 125 Seiten, Healthcare-RLT-relevant, bislang unverifiziert).

Dieser Lauf hat beide Punkte bearbeitet.

## Durchgeführt

### 1. Tabelle-D.4-Klärung (S. 89-92 im Volltext direkt gelesen)

Direkter Read der PDF-Seiten 86-93 aus dem Original zeigte: Es gibt nur **einen**
informativen Anhang D («Optionale Vollständigkeits- und Funktionsnachweise, Inbetriebnahme
und Übergabe»), gegliedert in D.1 Allgemeines, D.2 Vollständigkeit, D.3 Funktion, D.4
Einregulierung der Luftmengen. Tabelle D.4 («Zu-/Abluftsysteme») ist eine einzige, über den
Seitenumbruch 90/91 als «Tabelle D.4 (fortgesetzt)» weitergeführte Tabelle mit 15 Positionen
— nicht zwei getrennte Anhänge/Tabellen, wie die parallelen Lese-Agenten in Run 12
fälschlich rekonstruiert hatten. Das Destillat wurde entsprechend umstrukturiert
(Abschnitt „Anhang D" neu geschrieben, Korrektur-Vermerk ergänzt) und die Tabellen
D.10-D.12 (Einregulierung ventilatorgestützt, bislang unbenannt) sowie die Fussnote zu
Tabelle D.13 (reine Protokollvorlage ohne normative Zahlenwerte) nachgetragen — anhand
der zusätzlich gelesenen Seite 93.

### 2. Adversariale Retro-Verifikation din-1946-6-2009 (vollständig, 4 parallele Prüf-Agenten)

Das gesamte Destillat (Zeilen 36-257, Original S. 7-125) wurde in vier Abschnitte
gesplittet und je einem unabhängigen Prüf-Agenten zur adversarialen Prüfung gegen das
Original-PDF übergeben (Auftrag: Fehler FINDEN, nicht bestätigen):

- **Agent 1** — Anwendungsbereich + Kernziffern (S. 7-37): 21 Aussagenblöcke geprüft,
  18 bestätigt, 3 Fehler.
- **Agent 2** — §5.3 Systemauswahl + §7-12 Ausführung (S. 21-68): ca. 65 Einzelaussagen
  geprüft, ca. 60 bestätigt, 3 Fehler.
- **Agent 3** — Anhänge A-H (S. 69-110, Anhang D ausgenommen, bereits separat verifiziert):
  10 grössere Aussagenblöcke geprüft, alle im Kern bestätigt, 4 Korrekturbedarfe (davon
  1 inhaltlich relevant).
- **Agent 4** — Anhänge I-J + Literaturhinweise (S. 111-125): 14 Aussagen geprüft,
  10 bestätigt, 4 Fehler/Lücken.

**Gesamtbilanz:** ca. 100+ geprüfte Einzelaussagen, ca. 86 vollständig bestätigt korrekt,
**14 Fehler/Lücken gefunden und im Destillat korrigiert:**

1. „Geltungsbereich" → „Anwendungsbereich" (Ziff. 1, S. 7, Original-Terminologie).
2. Ziff. 3.1.25 (S. 11): unbelegter Klammerzusatz „(nicht Bautenschutz)" entfernt —
   im Original nicht so formuliert.
3. Tabelle 10 (S. 37): Differenzdruck Querlüftung war nur mit den zwei Extremwerten
   wiedergegeben, die zwei Zwischenwerte (4 Pa, 5 Pa) ergänzt.
4. Ziff. 5.3.2 (S. 22): „Zweitnutzung der Zu-/Abluft" → „Zweifachnutzung der
   Aussen-/Zuluft" (Fachbegriff- und Objektverwechslung korrigiert).
5. Ziff. 7.2.5 (S. 43): zwei getrennte Windhindernis-Regeln waren zu einer verschärften
   Regel verschmolzen — getrennt (1,5×-Nähe ohne Zusatzmass vs. unmittelbares Angrenzen
   mit 0,4 m Überragungspflicht).
6. Ziff. 11.2.2.2 (S. 65): 10-%-Regel Ab-/Zuluftvolumenstrom gilt nur bei vereinbarter
   „E"-Kennzeichnung, nicht generell — Einschränkung ergänzt.
7. Anhang B, Bild B.2 (S. 81): NE-Verweis (7.1.2/8.1.2) fehlte, war mit dem
   Raum-Verweis (7.1.5/8.1.5) vermischt — beide Verweise jetzt korrekt getrennt.
8. Anhang E (S. 94): Fundstelle „Ziff. E.2.1" → „Ziff. E.2.1.2" für die halbjährliche
   Filterkontrolle.
9. Anhang H (S. 109 f.): Widerspruch im Original selbst zwischen Bild-H.1-Legende
   (windstark ≤ 3,30 m/s) und Tabelle-H.1-Bildunterschrift (windstark > 3,30 m/s) war im
   Destillat nur einseitig übernommen — jetzt beide Lesarten benannt und als
   Original-Inkonsistenz gekennzeichnet.
10. Anhang I (S. 115): Formel Gl. I.2 (f_wirk,Lage = ε_H · ε_A) fehlte komplett — ergänzt.
11. Anhang I, Tabelle I.1 (S. 116): Fussnote zur Halbierung bei nur einer
    windexponierten Fassade fehlte — ergänzt.
12. Anhang I (S. 118): Abschirmungsklassen-Definition (Fassadenteile, Kriterien-Formeln
    H_Hindernis/B_Hindernis/B_Gebäude/D_Hindernis) fehlte trotz Seitenangabe „S. 115-118"
    komplett — als Fundstelle nachgetragen.
13. Literaturhinweise (S. 123-125): „über 30" Regelwerke → „rund 50" (deutliche
    Untertreibung korrigiert).
14. Ziff. 3.1.9 ff. (S. 10-13): kleinere unvollständige Zitate (fehlender Halbsatz bei
    Ziff. 3.1.40, fehlender Ziffernverweis bei 5.3.9.3) — als Nebenbefunde protokolliert,
    keine eigene Korrektur nötig, da sinnwahrend.

**Nicht als Fehler zu werten:** zwei Original-interne Unstimmigkeiten wurden entdeckt
(Tabelle-I.3-Höhengrenze 15 m vs. Fliesstext 10 m für dieselbe Vereinfachung; die bereits
erwähnte Windstark-Definition in Anhang H) — diese stehen so in der Norm selbst und wurden
im Destillat transparent als solche gekennzeichnet, nicht „geglättet".

## Nicht bearbeitet (bewusst)

- SIA-382/1-Methodenvergleich (Schweizer vs. deutsche Lüftungsauslegung) — eigenständige
  Recherche in SIA 382/1 nötig, ausserhalb des Auftrags dieses Laufs.
- Anhang H (Winddaten): ob Tabelle H.1 über S. 110 hinausgeht (S. 111 ff., z.B. weitere
  Landkreise), wurde nicht geprüft — Leseauftrag der Prüf-Agenten endete bei S. 110.

## Fazit

Mit diesem Lauf ist die Deepening-Stufe (b) Retro-Verifikation für `din-1946-6-2009.md`
abgeschlossen — das grösste und healthcare-relevanteste DIN-Destillat der KB ist jetzt
nicht nur vollständig gelesen, sondern auch adversarial gegengeprüft. Die gefundene
Fehlerquote (14 von ca. 100 Aussagen, primär Terminologie-/Bedingungs-Präzisierungen,
keine falschen Kernzahlen in den Bemessungstabellen) bestätigt, dass die
Verifikations-Pflicht (Rule `auto-verbesserungen` 260712) berechtigt ist — die
Bemessungstabellen (5-10, 11-19, D.1-D.13, I.1-I.4) und der rechnerische Gleichwertigkeits-
nachweis Anhang G waren dagegen zu 100 % korrekt.

## Nächster Lauf (Empfehlung)

1. Retro-Verifikation für weitere grosse P1-Destillate fortsetzen (Kandidaten: DIN 277-1/-2,
   DIN 18040-1/-2, VSS-640-Reihe) — nach demselben 4-Agenten-Muster.
2. Danach Beginn Q&A-Selbstbefragung (Deepening-Stufe c) für die DIN-P1-Kernnormen.
3. Anhang-H-Seitenumfang von din-1946-6-2009 (S. 111 ff.) bei Gelegenheit nachprüfen.
