# QUESTIONS-Abarbeitung 24.08.2026 — L41-4 (Lignatec Tabelle 3, teilbearbeitet)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig.

## Kollisionscheck

`ps aux | grep "claude -p"` zeigte zwei Hintergrundprozesse: PID 50673 (eigener hostender
Prozess dieser Session, identischer Auftragstext, Start 9:08) und PID 51254 (`wissen/energie`,
keine Berührung von `wissen/normen`). `git status --short wissen/normen/` war leer vor
Bearbeitungsbeginn.

## Bearbeitete Frage

**L41-4** (Run 41, Lignatec): die Zellwerte der Tabellen 3, 4 und 5 waren seit Runde 8
(30.07.2026) nicht mehr vollständig neu aufgenommen worden. Die Seiten-Inventur
(`training/lignatec-seiteninventur.md`) lag als Referenz bereit und weist Tabelle 3 auf
S. 8-9, Tabelle 4 auf S. 12-13, Tabelle 5 auf S. 15 aus.

## Vorgehen

- Quelle: `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/
  2414 THALWIL/06 Reglemente/_Archiv/11 Brandschutz/Lignatec/Lignatec_brandschutz.pdf`
  (identisch zur SharePoint-Quelle laut Destillat-Frontmatter, bereits in Vorrunden als
  Referenz genutzt).
- `pdftoppm -r 400 -png` je Blatt (04 = S. 8-9, 06 = S. 12-13, 07 = S. 14-15).
- Python/PIL-Crops einzelner Zeilenbänder (Landwirtschaft, Industrie ≤ 1000) je Halbseite,
  direkte Bildlektüre — keine Textextraktion (Methodik-Pflicht 8, gilt seit Run 41 fest im
  Programm).
- Vergleich jeder gelesenen Zelle gegen den bestehenden Destillat-Text
  (`destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 3).

## Ergebnis

Drei Ergänzungen in Tabelle 3, alle direkt am 400-dpi-Rendering gelesen:

1. **Industrie-/Gewerbebauten q ≤ 1000 MJ/m² (S. 8-9)** — bisher keine eigenen Eckwerte im
   Destillat. Vollständig gelesen: Struktur identisch zu Wohnbauten MFH bis Spalte 4
   (1&oberstes Keine Anforderung/EI30 · 2 bis 600 Mindestkantenabmessung/EI30 · 2 über 600
   baulich R30/EI30, sprinkler Mindestkantenabmessung/EI30 · 3 gleiche Aufteilung · 4 baulich
   R60/EI60②, sprinkler R30/EI30②). **Abweichend ab 5-6 Geschossen:** baulich direkt
   R60(nbb)/EI60(nbb) **blau** statt der bei Wohnbauten MFH an dieser Stelle stehenden grauen
   Holzoption (R60/EI30(nbb)③). Sprinklerkonzept bleibt bei 5-6 Geschossen holzmöglich (weiss,
   R60③/EI60②③), ab 7-8 Geschossen beide Konzepte zusammengeführt blau.
2. **Landwirtschaftliche Bauten (S. 8-9)** — ebenfalls bisher ohne eigene Eckwerte. Vollständig
   gelesen: identisch zu «Verkaufsgeschäfte ≤ 1200 m²/≤ 100 P» direkt darüber und zu
   Wohnbauten MFH bis Spalte 4, durchgehend weiss (keine Holzbauteil-Einschränkung), endet
   nach Spalte 4 — Abdeckungsgrenze (keine Zellen für 5-6/7-8 Geschosse) am Original bestätigt.
3. **Industrie q > 1000 MJ/m²/unbekannte Nutzung** — bisherige Aussage im Destillat («baulich
   blau ab 2 über 600») war unvollständig. Am Original zeigt sich: Baulich bleibt bei «2 über
   600» und bei 3 Geschossen auf R60(nbb)/EI60(nbb), steigt aber **ab 4 Geschossen auf
   R90(nbb)/EI90(nbb)** und bleibt dort bis 7-8 Geschosse. Dieselbe Eskalation war für die
   analoge Zeile in Tabelle 4 bereits dokumentiert (REI90(nbb)/EI90(nbb) ab 4 Geschossen),
   für Tabelle 3 aber bisher nicht genannt. Sprinklerkonzept bleibt spiegelbildlich
   durchgehend bei R60(nbb)/EI60(nbb), keine Eskalation.

## Nicht eingearbeitet (bewusst)

Ein Versuch, in derselben Runde auch die analogen Zeilen in Tabelle 4 («Industrie q ≤ 1000»,
«Landwirtschaftliche Bauten») zu lesen, scheiterte an der Bildqualität der angefertigten Crops:
die Spalte-4-Aufteilung mit gesplitteten grau/hellgrau-Zellen liess sich nicht mit
ausreichender Sicherheit einer eindeutigen Zeile zuordnen (Gefahr einer Fehlzuordnung zwischen
benachbarten Zeilen bei den schmalen Zeilenbändern). Um keine geratene Aussage einzuführen,
wurde dazu nichts geschrieben. Tabelle 4 und Tabelle 5 bleiben für eine künftige Runde offen —
dafür empfiehlt sich ein Vorgehen wie in Run 38 (volle Blattaufnahme statt schmaler
Zeilen-Crops, damit die Spaltenausrichtung über die gesamte Zeilenhöhe erhalten bleibt).

## Eingearbeitet

- `destillate/lignum-lignatec-brandschutz.md`: drei neue Absätze im Tabelle-3-Abschnitt
  (Industrie ≤ 1000, Industrie > 1000 Eskalations-Nachtrag, Landwirtschaftliche Bauten) +
  neuer Verifikationsstand-Eintrag 24.08.2026. `status` bleibt `speculative` (kein
  Nulldurchgang, Tab. 4/5 nicht neu gelesen).
- `wiki/QUESTIONS.md`: L41-4 additiv als «teilbearbeitet» markiert, Kopfzeile Run 41
  nachgeführt.

## Diff-Gegenprobe

```
git diff --numstat wissen/normen/
```

Siehe Shell-Output der Session; beide Änderungen sind additiv (neue Absätze/Zeilen), keine
bestehende Aussage wurde entfernt oder überschrieben.

## Verbleibend offen in Run 41

L41-4 Tabelle 4/5 (empfohlenes Vorgehen: volle Blattaufnahme statt Zeilen-Crops), G41-1
(Auslegungsfrage an Kantonale Feuerpolizei ZH, Bring-Schuld/Rückfrage), G41-2 (bereits zweimal
teilgeprüft, Bring-Schuld/Rückfrage GVZ), P41-2 (Beschaffung Bring-Schuld Raphael),
P41-3/P41-4/P41-5 (am Merkblatt selbst nicht entscheidbar), H41-2/H41-4
(Bring-Schuld/Rückfrage Fachstelle FABB bzw. echte Web-Sackgasse).
