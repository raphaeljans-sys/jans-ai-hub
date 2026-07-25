# Normen-Training Run 27 — MacBook Pro (SIA/VKF), 25.07.2026

## Ausgangslage

Run 26 hatte den speculative-Bestand der SIA/VKF-KB bis auf einen bewusst dauerhaften Fall geleert und
festgehalten, dass ein weiterer reiner Frischecheck ohne Mehrwert wäre. Stattdessen wurde als nächster
sinnvoller Schritt vorgeschlagen: Q&A-Selbstbefragung (Vertiefungsstufe c gemäss PROGRAMM.md) für die seit
Run 25/26 neu auf `established` gehobenen Destillate — diese hatten die Q&A-Stufe noch nicht durchlaufen,
im Gegensatz zu den 10 Kernnormen aus Run 14 (260715).

## Vorgehen

Fünf unabhängige Verifikations-Agenten liefen parallel (Agent-Tool, da das Workflow-Tool in dieser Session
interaktive Bestätigung verlangte und damit im headless/Scheduled-Task-Kontext nicht verfügbar war —
Fallback gemäss Skill-Anweisung: sequenziell/parallel per Agent statt Workflow). Jeder Agent:

1. Liest das Original-PDF unabhängig (ohne das Destillat vorher zu kennen).
2. Formuliert 8-20 Prüfungsfragen (Anzahl skaliert nach Dokumentumfang) und beantwortet sie sofort aus
   dem Original, mit Fundstelle.
3. Liest danach das bestehende Destillat und vergleicht jede Antwort — als echter Refuter, mit dem Auftrag,
   das Destillat zu widerlegen statt es zu bestätigen.
4. Schreibt das Ergebnis als Q&A-Datei nach `destillate/qa/`.

## Ergebnisse je Norm

### 1. sia-266-1-2003 (SIA 266/1:2003, Mauerwerk – Ergänzende Festlegungen)
20 Fragen, **bestätigt, 0 Abweichungen**. Alle Kernpunkte (31 Verweisungen inkl. SIA 262/1 an erster
Stelle, Modalitäten Kann-/Soll-/Pflicht, Formeln 1/2, Gummiplatten-Kennwerte inkl. der auffälligen
«Bruchdehnung ≥ 3» ohne Einheit, sechs Kategorien besonderer Eigenschaften) exakt bestätigt. Sechste
Verifikationsrunde in Folge ohne Befund (nach 13+9/1/1/2/0 Befunden in den Runden 1-5).

### 2. sia-410-1986 (SIA 410, Kennzeichnung von Installationen/Sinnbilder Haustechnik)
18 Fragen, **bestätigt + 1 Klarstellung + 2 Ergänzungen angewendet**. Substanz vollständig bestätigt
(Empfehlungscharakter, Geltungsbereich, sechs Grundsinnbilder als eigenständige Ziffern, Kurzzeichen,
Farbcode-Verweis, Genehmigungsdaten). **Korrektur:** Das Destillat hatte das Dokument bisher als
«dreisprachig d/f/i, teils zusätzlich Englisch in Kopfzeilen» beschrieben — die unabhängige Prüfung zeigt:
Das Dokument ist durchgehend **vierprachig d/f/i/en**, mit vollständiger vierter Spalte in praktisch jeder
Sinnbild-Tafel des gesamten Dokuments, nicht nur in Kopfzeilen. Frontmatter (`gelesen`, `verifikation`) und
Hinweistext im Destillat korrigiert. Zusätzlich zwei kleine Ergänzungen unter «Offene Punkte»: Kapitel 6
fehlt im ursprünglichen Inhaltsverzeichnis (S. 2-3) — stützt die bestehende These, dass Kap. 6 nachträglich
angefügt wurde; Positionsnummern-Lücke 9/10 in Ziff. 3.3 (S. 21), im Original unerklärt.

### 3. sia-112-leistungsmodell (Merkblatt Kundert Planer AG, 1 Seite)
8 Fragen, **bestätigt, 0 Abweichungen**. Dritte unabhängige Prüfrunde (nach Run 16 und Run 25) — alle
Phasenziele, die Struktur 6 Phasen/12 Teilphasen und die vier nachgelagerten SIA-Ordnungen (102/103/105/108)
weiterhin ohne Befund.

### 4. sia-112-tabelle-infrastruktur (Excel-Ausdruck, Kursunterlage, 3 Seiten)
10 Fragen, **bestätigt, 0 Abweichungen**. Dritte unabhängige Prüfrunde nach Run 25 (Erstprüfung, 4
Korrekturen) und Run 26 (erste Bestätigungsrunde) — weiterhin 0 Befunde, inkl. der Kernkorrektur
(Spalte «Menge» gehört zur Gruppe «Kosten»).

### 5. sia-271-wegleitung (Teil-Destillat, nur 2 Seiten vorhanden)
8 Fragen, **bestätigt**. Ein kleiner, nicht korrigierter Vervollständigungshinweis: Abbildung 76 trägt im
Original den engeren Bildunterschrift-Titel «... bei Terrassen», während der Fliesstext die
25-mm-Freibord-Pflicht allgemein für den gesamten Flachdachbereich formuliert. Kein Widerspruch (der
Fliesstext ist eindeutig allgemeingültig), keine Statusänderung nötig.

## Registerpflege

- `destillate/qa/`: 5 neue Dateien (`sia-266-1-2003-fragen.md`, `sia-410-1986-fragen.md`,
  `sia-112-leistungsmodell-fragen.md`, `sia-112-tabelle-infrastruktur-fragen.md`,
  `sia-271-wegleitung-fragen.md`).
- `destillate/qa/INDEX.md`: Abschnitt "Run 27" mit allen 5 Verdikten ergänzt.
- `destillate/INDEX.md`: alle 5 betroffenen Zeilen um den Q&A-Run-27-Vermerk ergänzt.
- `destillate/sia-410-1986.md`: Frontmatter (`gelesen`, `verifikation`) und Fliesstext korrigiert
  (dreisprachig → vierprachig), zwei Ergänzungen unter «Offene Punkte» nachgetragen.
- `wiki/QUESTIONS.md`: Run-27-Abschnitt oben ergänzt.
- `CHANGELOG.md`: Run-27-Eintrag oben ergänzt.

## Ergebnis / Ausblick

**64 Fragen total, 0 Widersprüche gegen bestehende Kernaussagen, 1 Destillat mit einer echten Klarstellung
korrigiert.** Alle 5 Destillate bleiben `established`. Damit haben nun **alle 15 SIA/VKF-Kernnormen** die
Q&A-Vertiefungsstufe (c) gemäss PROGRAMM.md durchlaufen (10 aus Run 14/260715 + 5 aus diesem Lauf).

Für den nächsten Lauf bieten sich gemäss PROGRAMM.md zwei Vertiefungsrichtungen an, da Stufe (c) für
SIA/VKF nun vollständig ist:
- **Stufe (b) Retro-Verifikation**: 3 unabhängige Widerlegungs-Agenten für die P1-Kernnormen (SIA 118,
  SIA 102, SIA 416, VKF-Familie), über die bisherigen Einzelrunden hinaus.
- **Stufe (d) Querschnitts-Synthesen**: gebündelte Norm-Übersichten für die Fach-Skills
  (werkvertrag/honorarberechnung-sia102/brandschutz/flaechen-nachweis), die die verstreuten
  Norm-Fundstellen skillgerecht zusammenführen.

Kein neues P1-P3-Destillat in diesem Lauf nötig (Inventar seit Run 20/21 unverändert, 0 offene `[ ]`).
