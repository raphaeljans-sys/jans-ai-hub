# QUESTIONS-Abarbeitung 24.08.2026 — L41-4 Fortsetzung (Lignatec Tabelle 5 zellenweise)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig. Fortsetzung des Vorlaufs vom selben Tag
(Commit a3a23383d, Tabelle 3 von L41-4 teilbearbeitet).

## Kollisionscheck

`ps aux | grep "claude -p"` zeigte drei Hintergrundprozesse: PID 55942 (eigener hostender
Prozess dieser Session, identischer Auftragstext), PID 54781 (`wissen/baurecht`), PID 54548
(`wissen/energie`). Kein weiterer Prozess auf `wissen/normen`.

## Bearbeiteter Punkt

**L41-4** (Run 41): «Was am Lignatec noch NIE geprüft wurde» — Zellwerte Tabelle 3/4/5 seit
Runde 8 (30.07.2026) nicht erneut aufgenommen. Der letzte Lauf (a3a23383d, heute Vormittag)
hat Tabelle 3 bearbeitet und Tabelle 4/5 offen gelassen. Diese Fortsetzung nimmt Tabelle 5.

## Vorgehen

- PATH-Fix: `/opt/homebrew/bin` (node, pdftoppm, pdftotext, tesseract) manuell vorangestellt.
- Original: `AR - 01 Projekte/2414 THALWIL/06 Reglemente/_Archiv/11 Brandschutz/Lignatec/
  Lignatec_brandschutz.pdf` (identische OneDrive-Kopie wie in den Vorläufen des Tages
  verwendet, da der Frontmatter-Pfad unter `PL - 03 Brandschutz/...` auf dieser Station nicht
  existiert).
- `pdftoppm -r 300 -png -f 7 -l 7` (Blatt 07 = S. 14/15 laut `training/lignatec-seiteninventur.md`),
  Python/PIL zum Zuschneiden der rechten Halbseite (S. 15, Tabelle 5) und gezielter
  Spaltenbereiche, da `convert`/`magick` auf dieser Station nicht installiert sind.
- Alle zehn Nutzungszeilen der Tabelle 5 einzeln gegen die im Destillat behaupteten Zellwerte
  gehalten: Legende (weiss/grau/blau), Aussenwandverkleidung je Geschossblock 1-3/4-8,
  Fluchtwege-Bodenbelag Korridor/Treppenhaus, Tragwerke bb und Tragwerke nbb.

## Ergebnis

- **Keine Abweichung** zu den bereits im Destillat dokumentierten Zellwerten gefunden. Die
  Run-33/36-Refuter-Korrekturen (Aussenwandverkleidung Block 1-3 nur bei Beherbergungsbetrieben
  [a] blau, Block 4-8 bei [a] UND Bauten grosser Personenbelegung/Verkaufsgeschäfte [c] blau,
  übrige grau, EFH/REFH weiss; Bodenbelag Treppenhaus Block 4-8 nur bei [a]/[c] blau, Korridor
  bleibt grau) halten am erneuten Direktvergleich mit dem 300-dpi-Rendering.
- **Neuer Fund:** Die Spalte «Tragwerke nbb» (Block 4-8, nicht brennbares Tragwerk) fehlte im
  gesamten Destillat-Abschnitt Tabelle 5 — keine der neun vorherigen Runden hatte sie erfasst.
  Gelesen: **Aussenwand grau** (Anwendung von Holz nur unter bedingten Auflagen gemäss
  Brandschutzrichtlinie VKF), **Innenwand und Decke durchgehend weiss** (freie Holzanwendung,
  BKZ ≥ 4.2), für alle neun Nutzungszeilen ausser Wohnbauten EFH/REFH (dort wie sonst auch
  überall weiss). Diese Asymmetrie (nur die Aussenwand-Dämmschicht eingeschränkt, Innenwand/
  Decke frei) ist eine reine Beobachtung an der Farbcodierung; die Quelle nennt dafür keine
  Begründung, daher im Destillat auch keine Begründung behauptet.
- Tabelle 4 wurde in diesem Lauf **nicht** neu gelesen (Budget/Zeit) — letzte volle Zellrunde
  war 260730 (Run 36), rund drei Wochen alt. Bleibt offen für eine künftige Fortsetzung.

## Eingearbeitet

- `destillate/lignum-lignatec-brandschutz.md`: neuer Abschnitt zur Spalte «Tragwerke nbb»
  innerhalb des Tabelle-5-Abschnitts (additiv, keine bestehende Aussage verändert).
- `wiki/QUESTIONS.md`: L41-4 fortgeschrieben (additiv), Kopfzeile Run 41 nachgeführt.

## Diff-Gegenprobe

```
wissen/normen/destillate/lignum-lignatec-brandschutz.md | 13 +++++++++++++
wissen/normen/wiki/QUESTIONS.md                          | 19 ++++++++++++++++---
```

Beide Änderungen rein additiv, keine bestehende Aussage entfernt oder überschrieben.

## Verbleibend offen in Run 41

L41-4 (Tabelle 4 Zellrunde), G41-1 (Auslegungsfrage an die Kantonale Feuerpolizei ZH),
G41-2 (zweimal heute geprüft, bleibt Bring-Schuld/Rückfrage bei GVZ), P41-2/P41-3/P41-4/P41-5
(PAVIDENSA, teils Bring-Schuld/Quelleneigenheiten), H41-2/H41-4 (Bring-Schuld/Rückfrage,
fällt unter Mail-Versand-Sperre).
