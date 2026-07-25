# Grobkosten-Trainingslauf Run 3 — 25.07.2026

Stufe 2 (Extraktion), Drittquelle SharePoint `AR - 07 Archiv` (abgeschlossene Mandate) gemäss
Empfehlung aus `wiki/QUESTIONS.md` (Run 2).

## Vorgehen

`AR - 07 Archiv/01_Projekte/` enthält 4 Projektordner. Alle systematisch auf Kostendokumente
geprüft (`find -iname "*kosten*"` + Sichtprüfung der Dateiebene). Zwei Kandidaten mit
plausiblem GV+BKP-Material identifiziert (2202 Ackersteinstrasse 67, 2304 Reckholdern 20) und
per Subagent im Detail gelesen (PDF/DOCX, je 3–4 Dokumente pro Projekt).

## Ergebnis

Beide Projekte liefern reale Kostendokumente mit Gebäudevolumen-Angabe — Reckholdern sogar
erstmals in dieser KB GV UND vollständige BKP-Gliederung im selben Dokument. Keiner der beiden
Fälle ist jedoch verwertbar:

**2202 Ackersteinstrasse 67** (Umbau/Sanierung REFH-Eckhaus, Höngg): vier Kostenstände über
2021–2023 mit Volumen 613–850 m³ und Gesamtkosten CHF 480'000 bis 1'219'133 — ohne im Material
erkennbaren Grund für die Abweichung. Das jüngste (Vertrags-)Dokument trägt zusätzlich zwei
sich intern widersprechende CHF/m³-Werte (360.- und 791.-).

**2304 Reckholdern 20** (Ersatzneubau EFH, Willerzell SZ): GV 1'715 m³ und eBKP-H-Gliederung
liegen im selben Dokument vor, das aber selbst zwei widersprüchliche Gesamtkosten nennt
(CHF 2'960'000 vs. CHF 1'800'000) — letztere erkennbar aus einer nicht auf das Projekt
angepassten Vorlage (Titelseite/Rendite-Block mit Mietwohnungen/Tiefgarage, passt nicht zum
EFH-Charakter). Der spätere, wohl belastbarere Kostenvoranschlag (CHF 3'446'500) hat kein GV.

Beide Fälle sind damit strenger unbrauchbar als die Run-2-Einzelfälle: dort fehlte jeweils nur
eine Grösse (GV oder Nutzung), hier widersprechen sich die Quellen selbst. Details:
`raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`.

## Register-Änderungen

- `training/quellen-inventar.md`: neuer Abschnitt "Run 3", 4 Projektordner geprüft, 2 `[x]`
  extrahiert, 2 `[-]` ohne Inhalt.
- `raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`: neu angelegt.
- `raw/_INGESTED.md`: zwei Zeilen ergänzt.
- `wiki/kennwerte.md`: transparenter Prüfvermerk unter "Run 3" (keine Wertänderung, keine
  neue Einzelfall-Zeile), Frontmatter-Quellen ergänzt.
- `wiki/QUESTIONS.md`: neuer Eintrag mit strukturellem Befund (Vorlagen-Fehlerquelle) und
  Vorschlag für Run 4.
- `wiki/INDEX.md`: Stand-Zeile aktualisiert.
- `CHANGELOG.md`: Run-3-Eintrag oben angefügt.

## Empfehlung für Run 4

Beide bekannten SharePoint-Projektquellen (`AR - 01 Projekte`, `AR - 07 Archiv`) sind jetzt
vollständig geprüft — 5 Projekte in `raw/`, keines promotionsfähig. Ein Run 4 sollte NICHT
neue Projektordner erschliessen, sondern:

1. Gezielt nach Schlussabrechnungen (Ist-Kosten) in den Ordnern 2202 Ackersteinstrasse und
   2304 Reckholdern suchen — falls vorhanden, würden diese die Widersprüche auflösen und wären
   ausserdem die höchstpriorisierte Dokumentenklasse (Bauabrechnung vor KV vor Kostenschätzung).
2. Alternativ: die beiden offenen Widersprüche Raphael zur Klärung vorlegen (welcher Stand
   effektiv realisiert wurde).
3. Bei weiterhin fehlendem Material: Rücktaktung auf einen Ereignis-Trigger prüfen (neuer
   Kostenstand aus `kostenkontrolle`), da die bekannten Quellen ausgeschöpft sind — siehe
   Endbedingung in `training/PROGRAMM.md`.
