# Grobkosten-Trainingslauf Run 2 (25.07.2026, Mac Mini)

## Auftrag

Fortsetzung des Kennwerte-Lernmodells nach Run 1 (Nullbefund im NAS-Altarchiv
`04_Buero/02_Projekte`). Gemäss der in Run 1 offen gelassenen Empfehlung: SharePoint-
Projektordner der aktiven Mandate (`AR - 01 Projekte`, Rule `projekt-ablage-stand`) als
Zweitquelle prüfen.

## Vorgehen

1. Kollisionscheck (Rule 260724): keine zweite Instanz dieses Loops auf dem Host aktiv —
   fortgefahren.
2. Systematische Durchsicht aller 8 aktiven Mandatsordner (2201 Laternengasse, 2414 Thalwil,
   2515 Wartstrasse, 2516 Winterberg, 2517 MOW, 2518 Grubenackerstrasse, 2619 KISPI,
   2620 Keller/Albertstrasse) auf Kostendokumente.
3. Drei auswertbare Kandidaten identifiziert und per Subagent (je ein Fan-out-Agent,
   Sonnet-Modell wegen Textverständnis-Anforderung bei PDF/Excel-Extraktion) extrahiert:
   2414 Thalwil, 2515 Wartstrasse, 2518 Grubenackerstrasse.
4. 2619 KISPI (umfangreichstes Kostendossier im Bestand) bewusst NICHT extrahiert —
   Healthcare-Scope, gehört gemäss `training/PROGRAMM.md` in den Skill `kostenschaetzung`.

## Ergebnis

| Projekt | Dokumenttyp | GV/Volumen | BKP-Bild | Verwertbarkeit |
|---|---|---|---|---|
| 2414 Thalwil | Kostenvoranschlag (dasBaumanagement) + JANS-Kostenschätzung | fehlt (Gesamt); 2 Teilvolumen (90 m³, 160 m³) | Voll, BKP 1-6, Total CHF 526'300 | Kein Gesamt-CHF/m³; 2 Teilkennwerte als Einzelfall n=1 (1'600 / 800 CHF/m³) |
| 2515 Wartstrasse 8 | Kostenvoranschlag (e-BKP-H) | fehlt | Teilweise (Fassade only), Total CHF 25'200 | Nicht verwertbar (kein GV, zu klein) |
| 2518 Grubenackerstrasse 7 | Grobkostenschätzung (Handnotiz) | 1'668 m³, NICHT SIA-416-verifiziert | Keine BKP-Gliederung | Einzelfall n=1, unverifiziert (950-1'050 CHF/m³) |

**Keiner der drei Fälle erreicht die Promotion auf "belegt (n=…)"** — die Seed-Werte in
`wiki/kennwerte.md` bleiben unverändert. Beide brauchbaren Einzelfälle sind transparent mit
vollem Kaveat im neuen Abschnitt "Erste reale Datenpunkte" dokumentiert, damit sie beim
nächsten passenden Fund (n=2) sofort zu einem Median verdichtet werden können.

## Strukturelle Erkenntnis

GV (SIA 416) und BKP-1-5-Kosten liegen bei JANS-Projekten selten in einem einzigen Dokument
zusammen — GV steckt im Vorprojekt/Baugesuch, Kosten in einem separaten Kostenblatt. Ein
künftiger Lauf sollte gezielt beide Dokumenttypen pro Projekt suchen und zusammenführen.

## Nebenbefund (kein grobkosten-Inhalt)

`2518_Grubenackerstrasse_7/.../230324 Kostenvergleich Liftposition/` enthält Fremddaten
zweier anderer Projekte (Reckholdern 20, Laternengasse 5) — Fehlablage im Projektordner,
read-only nicht bereinigt, zur Kenntnis an Raphael vermerkt.

## Geänderte Dateien

- `training/quellen-inventar.md` (SharePoint-Abschnitt ergänzt)
- `raw/2414-thalwil.md`, `raw/2515-wartstrasse.md`, `raw/2518-grubenackerstrasse.md` (neu)
- `raw/_INGESTED.md`, `wiki/kennwerte.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `CHANGELOG.md`

## Empfehlung nächster Lauf (Run 3)

SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit Schlussabrechnung) prüfen — dort ist
die Wahrscheinlichkeit eines vollständigen GV+BKP-Bilds höher als bei laufenden Mandaten.
Alternativ: gezielt nach Baugesuchs-/Vorprojekt-Dokumenten mit Kubatur-Angabe für die drei
bereits gefundenen Projekte suchen, um die vorhandenen BKP-Kosten (Thalwil) bzw. das rohe
Volumen (Grubenackerstrasse) nachträglich zu verifizieren/ergänzen.
