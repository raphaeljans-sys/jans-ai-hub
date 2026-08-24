# QUESTIONS-Abarbeitung 24.08.2026 — L41-4 abgeschlossen (Lignatec Tabelle 4 zellenweise)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig. Fortsetzung des Vorlaufs vom selben Tag
(Tabelle 5 von L41-4 abgeschlossen, Report `outputs/2026-08-24_questions-abarbeitung-l41-4-tabelle5.md`).

## Kollisionscheck

`ps aux | grep "claude -p"` zeigte drei Hintergrundprozesse: PID 58959 (eigener hostender
Prozess dieser Session, identischer Auftragstext, bestätigt über `$PPID`), PID 57911
(`wissen/baurecht`, Reglemente-Queue), PID 59236 (`wissen/normen` SIA-Sweep — Register-Zeilen
und SIA-Destillate, keine Berührung mit Lignatec/QUESTIONS.md). Kein weiterer Prozess auf
denselben Dateien. `git status --short wissen/normen` war vor Bearbeitungsbeginn sauber.

## Bearbeiteter Punkt

**L41-4** (Run 41): «Was am Lignatec noch NIE geprüft wurde». Der letzte Lauf (heute) hatte
Tabelle 3 und Tabelle 5 zellenweise gelesen, Tabelle 4 blieb offen. Diese Runde schliesst
Tabelle 4 ab.

## Vorgehen

- Original: OneDrive-Kopie `AR - 01 Projekte/2414 THALWIL/06 Reglemente/_Archiv/11 Brandschutz/
  Lignatec/Lignatec_brandschutz.pdf` (identisch zur SharePoint-Quelle laut Frontmatter).
- `pdftoppm -r 400 -png -f 6 -l 6` (Blatt 06 = S. 12/13 laut `training/lignatec-seiteninventur.md`).
- Python/PIL: A3-Seite in Halbseiten (S. 12/S. 13) UND zusätzlich in horizontale Zeilenbänder
  über die volle Breite geschnitten, je Band wieder in linke Hälfte (Nutzung/Konzept/Spalten
  1-2über600) und rechte Hälfte (Spalten 3/4/5-6/7-8) gesplittet und 3x hochskaliert — damit
  blieb die Nutzungszeile spaltengenau über beide Seiten hinweg zugeordnet (Methodik-Pflicht 8:
  Tabellen mit Farbcodierung/verbundenen Zellen werden gerendert und abgelesen, nie extrahiert).
- Fünf Nutzungszeilen gezielt gelesen, für die das Destillat bisher keine eigenen Eckwerte
  führte: Industrie-/Gewerbebauten q ≤ 1000 MJ/m², Bauten mit Räumen grosser Personenbelegung/
  Verkaufsgeschäfte [c], Parkhäuser/Einstellräume für Motorfahrzeuge, ‹Verkaufsgeschäfte›
  ≤ 1200 m²/≤ 100 P, Landwirtschaftliche Bauten. Die bereits dokumentierten Zeilen (Wohnbauten
  MFH/Büro/Schulbauten, Industrie q > 1000/unbekannte Nutzung, Beherbergungsbetriebe [a]/[b],
  Wohnbauten EFH/REFH) wurden zur Ausrichtungskontrolle mitgelesen, aber nicht erneut
  eingearbeitet (keine Abweichung zu den bestehenden Werten gefunden).

## Ergebnis

Fünf Ergänzungen, alle in `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 4,
nachgetragen:

1. **Industrie-/Gewerbebauten q ≤ 1000 MJ/m²**: Struktur bis Spalte 3 identisch zu Wohnbauten
   MFH/Büro/Schulbauten, weicht aber ab Spalte 4 ab — Korridor Baulich bereits ab 5-6
   Geschossen blau (keine Holzbauteile), Sprinkler erst ab 7-8 Geschossen. Spiegelt die bereits
   in Tabelle 3 für dieselbe Nutzung dokumentierte Eskalation.
2. **Bauten mit Räumen grosser Personenbelegung / Verkaufsgeschäfte [c]**: ab 3 Geschossen
   durchgehend blau, für beide Konzepte identisch — deckt sich mit dem Tabelle-3-Befund für
   dieselbe Nutzung.
3. **Parkhäuser/Einstellräume für Motorfahrzeuge**: Treppenhaus ab 4 Geschossen blau (beide
   Konzepte gleich), Korridor konzeptabhängig — Baulich ab 5-6 Geschossen blau, Sprinkler erst
   ab 7-8. Deckt sich mit dem Tabelle-3-Befund für dieselbe Nutzung.
4. **‹Verkaufsgeschäfte› ≤ 1200 m²/≤ 100 P**: Zeile endet nach Spalte 4 (Abdeckungsgrenze wie
   in Tabelle 3), Werte bis dahin analog Wohnbauten MFH bei den unteren Geschossstufen.
5. **Landwirtschaftliche Bauten**: Werte und Struktur identisch zu Punkt 4 direkt darüber,
   Zeile endet ebenfalls nach Spalte 4.

**Keine der fünf Zeilen widerspricht einem bestehenden Destillat-Wert.** Alle fünf Funde sind
Ergänzungen (Lücken), keine Korrekturen.

## Einordnung

Damit ist L41-4 vollständig abgearbeitet: Tabelle 2 (Run 40), Tabelle 3, Tabelle 4 und
Tabelle 5 sind seit der letzten vollständigen Zellrunde (Run 8, 260730, drei Wochen alt) alle
erneut zellenweise gegen das Original gehalten worden. Kein Tabellenabschnitt des Lignatec
bleibt ungeprüft offen.

## Eingearbeitet

- `destillate/lignum-lignatec-brandschutz.md`: neuer Absatz mit den fünf Nutzungszeilen im
  Tabelle-4-Abschnitt (additiv), neuer Verifikationsstand-Eintrag.
- `wiki/QUESTIONS.md`: L41-4 als GESCHLOSSEN markiert (additiv), Kopfzeile Run 41
  nachgeführt.
- `CHANGELOG.md`: dieser Lauf vorangestellt.

## Diff-Gegenprobe

```
wissen/normen/destillate/lignum-lignatec-brandschutz.md | 49 (23 bereits durch Auto-Sync
  committet, 26 aus dieser Runde: Verifikationsstand-Eintrag)
wissen/normen/wiki/QUESTIONS.md                          | 19 +++++++++++++++---
```

Beide Änderungen rein additiv, keine bestehende Aussage entfernt oder überschrieben.

## Verbleibend offen in Run 41

G41-1 (Auslegungsfrage an die Kantonale Feuerpolizei ZH), G41-2 (zweimal geprüft, bleibt
Bring-Schuld/Rückfrage bei GVZ), P41-2/P41-3/P41-4/P41-5 (PAVIDENSA, teils Bring-Schuld/
Quelleneigenheiten), H41-2/H41-4 (Bring-Schuld/Rückfrage, fällt unter Mail-Versand-Sperre).
Lignatec-Bestand (L41-1 bis L41-4) vollständig geschlossen.
