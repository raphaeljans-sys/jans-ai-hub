# Grobkosten-Trainingslauf Run 1 (Stufe 1: Quellen-Inventar)

25.07.2026, Mac Mini (VOLLGAS-Endlos-Runner). Erster Lauf des neu angelegten Loops
`grobkosten-training` (Umlenkung freier Kapazität, siehe `training/PROGRAMM.md`).

## Auftrag

Stufe 1 gemäss `training/PROGRAMM.md`: die Kosten-Ordner unter
`/Volumes/daten/04_Buero/02_Projekte/<projekt>/04_Kosten` (bzw. Namensvarianten) systematisch
auflisten und `training/quellen-inventar.md` anlegen.

## Vorgehen

1. Alle 21 Projektordner unter `02_Projekte` gelistet.
2. `find -iname "*kosten*" -type d` bis Tiefe 5 über den gesamten Projekte-Baum ausgeführt —
   11 Projekte mit mindestens einem Treffer, 10 ohne jeden Treffer.
3. Die 10 Projekte ohne Treffer per Top-Level-`ls` gegengeprüft (reine Konzept-/Foto-/
   Planordner, kein Kostenbezug erkennbar).
4. Jeden der 11 Treffer-Ordner vollständig mit `find -type f` durchsucht und stichprobenartig
   geöffnet (docx via `unzip -p … word/document.xml`, pdf via `file`), um Struktur-Suggestion
   (Ordnername) gegen tatsächlichen Dateiinhalt zu prüfen.

## Ergebnis

**0 von 21 Projekten liefern ein auswertbares GV/BKP-1-5-Kostendokument.** Details je Projekt
in `training/quellen-inventar.md`. Kernbefunde:

- Mehrere Ordner mit vollständig durchstrukturierter Phasenkette (Wettbewerb → Vorstudien →
  Bauprojekt → Bewilligung → Ausschreibung → Ausführung → Revision/Kostenfeststellung) — genau
  das Zielbild eines kompletten Kostenverlaufs — sind auf Dateiebene **komplett leer** (nur
  `.DS_Store`): `1602_St_Karli_11`, `1303_Steinhof`, `1524_Winterthur_Erweiterung_Bezirksgebaeude`,
  `1525_Bauhaus Museum Dessau`, teilweise `1012_Ardez`.
- `1527_EH Europe GmbH/4 Kosten` (~270 Dateien, sah nach der grössten Fundgrube aus) ist
  vollständig Büromöbel-/Umzugs-Preisvergleich (BKP 9, nicht BKP 1-5), kein Bauvolumen.
- `1011_Lorrainestr_4/04_Kosten/00_Offerten` ist eine Architekten-Honorarofferte (SIA 102),
  keine Baukosten.
- `1115_Kostenberechnung/Grobkostenberechnung.docx` ist ein leeres Formular-Template ohne Werte.
- `1604_Palladio_Proportionen_1` enthält ein italienisches "preventivo" im CISA-Vicenza-Kontext
  (Studienprojekt), kein Schweizer BKP-Bezug.
- Einzige nicht komplett wertlose Fundstelle: `1318_Lorraine_Kueche` — echte BKP-Detailpositionen
  (Schreiner 273, Heizung 240, Sanitär 250) für einen Kücheneinbau, aber kein Gebäude-GV, daher
  ausserhalb des Scopes dieses Loops (m³-GV-Gesamtgebäude-Kennwerte).

## Konsequenz für Stufe 2/3

Keine — es gibt nichts zu extrahieren. `wiki/kennwerte.md` bleibt unverändert auf Status Seed.
Kein Verstoss gegen "Kennwerte nie raten": es wurde nichts geschätzt, nur das Fehlen von
Material dokumentiert.

## Empfehlung für den nächsten Lauf

`training/PROGRAMM.md` nennt bereits eine Zweitquelle: "`kostenkontrolle`-Outputs und
Schlussabrechnungen der aktuellen Mandate (SharePoint-Projektordner)". Dieser Lauf hat sich
strikt an die im Auftrag vorgegebene NAS-Quelle (`/Volumes/daten/04_Buero/02_Projekte`)
gehalten und diese jetzt vollständig ausgeschöpft. Der nächste Lauf sollte auf SharePoint
umschwenken (M365-Connector, aktive Mandate KISPI/Albertstrasse/Thalwil u.a. mit laufender
Kostenkontrolle, Rule `projekt-ablage-stand`) statt das NAS-Altarchiv erneut zu prüfen.
Festgehalten in `wiki/QUESTIONS.md`.

## Register-Updates dieses Laufs

- `training/quellen-inventar.md` — neu angelegt (Stufe-1-Ergebnis)
- `wiki/QUESTIONS.md` — neuer Eintrag (SharePoint-Zweitquelle vorschlagen)
- `wiki/INDEX.md` — Verweis auf das Inventar ergänzt
- `CHANGELOG.md` — Lauf protokolliert
- `raw/_INGESTED.md` — unverändert (kein neues Rohmaterial)
- `wiki/kennwerte.md` — unverändert (kein neues Rohmaterial)
