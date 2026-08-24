# QUESTIONS-Abarbeitung 24.08.2026 — S41-8 (SWKI VA103-01, Sprachfassung D/F)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig.

## Kollisionscheck

`ps aux | grep "claude -p"` zeigte drei Hintergrundprozesse: PID 46568 (eigener hostender
Prozess dieser Session, identischer Auftragstext), PID 45591 (`wissen/baurecht`), PID 45040
(`wissen/energie`). Kein weiterer Prozess auf `wissen/normen` — anders als in den beiden
vorangegangenen Läufen dieses Tages, deshalb auch das Destillat direkt bearbeitet, nicht nur
additiv in QUESTIONS.md.

## Bearbeitete Frage

**S41-8** (Run 41, SWKI VA103-01): ob die französische Parallelfassung von der deutschen
abweicht — bislang nur an Ziff. 2.5.3 stichprobenartig geprüft (im Rahmen von S41-7).

## Vorgehen

- PATH-Fix nötig: `node`, `pdftotext`, `pdftoppm`, `tesseract` lagen unter
  `/opt/homebrew/bin`, das in der Session-Shell nicht im PATH stand.
- M365-Graph-Connector-Selbsttest bestanden (`node connectors/m365-graph.mjs --selbsttest`).
- Original SWKI VA103-01 neu von SharePoint geladen (Site PL, Drive `02_Recht_Norm`,
  `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf`, 9,2 MB, 110 Seiten,
  Scan ohne Textlayer — `pdftotext` liefert null Wörter, KONICA-MINOLTA-Scan 2019).
- `pdftoppm -r 200` für: Inhaltsverzeichnis (Druckseite 2 = PDF-Seite 4), Ziff. 2.8.2-2.8.5
  (Druckseite 48 = PDF-Seite 50), Ziff. 2.8.6 + Tab. 9 (Druckseite 49 = PDF-Seite 51),
  Ziff. 2.8.7 + Tab. 10 (Druckseite 50 = PDF-Seite 52). Alle drei Renderings visuell gelesen
  (Bild-Tool, nicht OCR — OCR/tesseract auf denselben Seiten lieferte leeren Text, vermutlich
  Seitenrotation 180° im PDF).

## Ergebnis

Die Fragestellung ging von einer falschen Prämisse aus: **es gibt keine separate
französische Parallelfassung als eigenen Textblock**, die man gegen die deutsche diffen
müsste. Das Dokument ist durchgehend **zweispaltig auf denselben physischen Seiten** gesetzt
(Deutsch links, Französisch rechts), mit **gemeinsamer** gedruckter Seitenzahl für beide
Sprachen.

- Fliesstext-Stichprobe (TOC + Ziff. 2.8.2 bis 2.8.7): wortgetreue Übersetzung,
  sprachparallele Querverweise (VKF-BSR 25-15de = AEAI-DPI 25-15fr, VKF-BSR 21-15de =
  AEAI-DPI 21-15fr), identische Zahlenwerte (5 Min. Nachlaufzeit, 2'000 m³/h, 2 kW,
  60 s/180 s Alarmzeiten).
- **Struktureller Zusatzbefund:** Tab. 9 (Messparameter CO/NO/NO2) und Tab. 10 (Schaltwerte
  CO/NO) sind bilinguale Einzelobjekte — Kopf-/Zeilenbeschriftung zweisprachig übereinander,
  jeder Zahlenwert (z.B. 50/70/200 ppm CO Ein-/Alarmwert) steht aber nur **einmal** in der
  Zelle. Eine sprachbedingte Werteabweichung bei Tabellen ist damit strukturell
  ausgeschlossen.
- Kein vollständiger 110-Seiten-Diff, aber die Prämisse „zwei separat zu vergleichende Texte"
  trifft nicht zu, und der geprüfte Ausschnitt zeigt keine Abweichung.

## Eingearbeitet

- `wiki/QUESTIONS.md`: S41-8 als geschlossen markiert (additiv), Kopfzeile Run 41
  nachgeführt.
- `destillate/swki-va103-01-2017.md`: neuer Abschnitt «Sprachfassung Deutsch/Französisch»
  zwischen «Geltungsbereich» und «Kernziffern». Status bleibt `speculative` (unverändert —
  dieser Fund betrifft die Sprachstruktur, nicht die Bemessungskette).

## Diff-Gegenprobe

```
19  0  wissen/normen/destillate/swki-va103-01-2017.md
23  1  wissen/normen/wiki/QUESTIONS.md
```

Beide Änderungen rein additiv, keine bestehende Aussage entfernt oder überschrieben.

## Verbleibend offen in Run 41

L41-4 (Lignatec Tab. 3/4/5 Zellrunde), G41-1 (Auslegungsfrage an Kantonale Feuerpolizei),
G41-2 (teilgeprüft, Bring-Schuld/Rückfrage bei GVZ), P41-3/P41-4/P41-5 (PAVIDENSA,
Quelleneigenheiten am Merkblatt nicht entscheidbar), P41-2 (Beschaffung Bring-Schuld
Raphael), H41-2/H41-4 (Bring-Schuld/Rückfrage bei Fachstelle FABB, fällt unter
Mail-Versand-Sperre).
