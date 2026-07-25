# Quellen-Inventar: grobkosten (04_Buero/02_Projekte)

Stufe 1 des Trainings-Loops (Run 1, 25.07.2026). Systematische Durchsicht aller Projektordner
unter `/Volumes/daten/04_Buero/02_Projekte/` auf Kostendokumente. Gefunden via
`find -iname "*kosten*"` (Tiefe bis 5) + manuelle Sichtprüfung jedes Treffers (Dateiinhalte
gegen den Real-Test: enthält BAUKOSTEN einer Baute mit Gebäudevolumen und BKP-1-5-Bezug,
nicht Honorar/Möbel/Fremdwährung/Leerordner).

Legende Verwertbarkeit: `[ ]` offen (noch nicht extrahiert) · `[x]` ausgewertet (Eintrag in
`raw/` erstellt) · `[-]` untauglich (Grund angegeben).

## Ergebnis vorweg

Von 21 Projektordnern haben **10 keinerlei Kostendokumente** (reine Konzept-/Planungs-/
Fotoordner) und die übrigen **11 mit "Kosten" im Pfad enthalten bei genauer Prüfung
KEIN einziges auswertbares Gebäude-Kostendokument** mit Gebäudevolumen (GV) und BKP-1-5-
Kostensumme. Die Ordnerstruktur (00_Wettbewerb…08_Revision, 40 Kostenschätzung…44
Baubuchhaltung) suggeriert auf den ersten Blick eine reiche Datenlage (daher die
"verifizierten Beispiele" in `training/PROGRAMM.md`) — bei Dateiebene sind die meisten
dieser Ordner jedoch **leere Struktur-Schablonen** (nur `.DS_Store`), Möbel-/Preisvergleiche,
Honorarofferten oder fachfremdes Material. Das ist ein wichtiger, produktiver Befund für
Stufe 1: der reale Bestand unter `02_Projekte` trägt aktuell **keine** GV/BKP-Kennwerte bei.

Wahrscheinliche Ursache: JANS-Bauleitungsmandate mit echter Kostenkontrolle/Schlussabrechnung
laufen heute über die **SharePoint-Projektordner** (`AR - 03 Studien/`, aktive Mandate wie
KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`), nicht über dieses NAS-Altarchiv
`04_Buero/02_Projekte` (chronologisch 2010–2015, Frühphase des Büros). Diese Vermutung ist
NICHT verifiziert (kein Zugriff/Suchauftrag auf SharePoint in diesem Lauf) und wird als offene
Frage in `wiki/QUESTIONS.md` festgehalten.

## Projekte ohne jedes Kostendokument (kein "Kosten"-Treffer)

| Projekt | Inhalt (gesichtet) | Verwertbarkeit |
|---|---|---|
| 00_Allgemein | nicht vertieft (kein Projekt) | `[-]` kein Projektordner |
| 1113_Arbeitsplatz_Eiche | .pln-Datei, Adressen, PDF | `[-]` keine Kostenordner |
| 1114_Dorfbachstrasse_5 | nur Beleuchtungskonzept | `[-]` keine Kostenordner |
| 1116_Steinhofstr | Fotos, Pläne | `[-]` keine Kostenordner |
| 1207_St_Karli13 | nur Pläne | `[-]` keine Kostenordner |
| 1316_Dubai | nur Collage | `[-]` keine Kostenordner |
| 1317_Lorraine_Portikus | nur Konzept | `[-]` keine Kostenordner |
| 1319_Kasernenareal | Ideen/Studie (Wettbewerb) | `[-]` keine Kostenordner |
| 1525_Arbeiten_Ferien_Kollhoff | ein Word-Dokument (Ferienarbeit) | `[-]` keine Kostenordner |
| 1526_Ateliersuche | leer | `[-]` keine Kostenordner |
| 1603_Steinhof | CAD, Skizzen, Cover-Bild | `[-]` keine Kostenordner |

## Projekte mit "Kosten"-Ordnern — Einzelprüfung

| Projekt | Pfad | Dokumenttyp (behauptet vs. real) | Verwertbarkeit / Grund |
|---|---|---|---|
| 1011_Lorrainestr_4 | `04_Kosten/00_Offerten/111118_Offerte_Jans_Back.docx` | Honorarofferte (Architektenhonorar SIA 102, kein Baukosten-GV) | `[-]` untauglich: Honorar, nicht Baukosten; gehört ggf. zu `honorarberechnung-sia102`, nicht `grobkosten` |
| 1011_Lorrainestr_4 | `04_Kosten/Referenzen_Baukostenplan/BKP/…` | BKP-Referenzmaterial (CRB 1989, ETHZ-Skript, Fachbegriffe) | `[-]` untauglich: Nachschlagewerke, keine Projektkosten (bereits durch `references/bkp-2017/` abgelöst) |
| 1012_Ardez | `04_Kosten/00_Vorlagen/…`, `03_Vorprojekt`, `04_Bauprojekt/01_Kostenvoranschlag`, `08_Revision` | Struktur suggeriert KV+Revision | `[-]` untauglich: alle Projektordner leer (nur `.DS_Store`); `00_Vorlagen` enthält nur generische Baupreisindex-Tabellen (BFS, bis 2002) und ein leeres Honorar-Template |
| 1115_Kostenberechnung | `Grobkostenberechnung.docx` | "Grobkostenberechnung" | `[-]` untauglich: leeres Formular-Template (nur Kopfzeile "Bauvolumen × Kubikpreis", keine Werte) |
| 1303_Steinhof | `04_Kosten/01_Wettbewerb … 08_Revision` (8 Phasenordner) | vollständige Phasenkette suggeriert | `[-]` untauglich: alle 8 Ordner komplett leer (nur `.DS_Store`) |
| 1318_Lorraine_Kueche | `03_Kueche_Maria/03_Kostenschaetzung/…` | Kostenschätzung/KV/DEVI/Kostenkontrolle, BKP 273/240/250 | `[-]` untauglich für GV-Kennwerte: Kücheneinbau/Innenausbau eines Zimmers, kein Gebäude mit GV; wertvoll als künftige BKP-Einzelposition-Referenz (Schreiner/Heizung/Sanitär), aber ausserhalb des Scopes "CHF/m³ GV Gesamtgebäude" dieses Loops |
| 1524_Winterthur_Erweiterung_Bezirksgebaeude | `2 Rahmenbedinungen/6_Kosten` | KV-Ordner suggeriert | `[-]` untauglich: Ordner komplett leer |
| 1525_Bauhaus Museum Dessau | `2 Rahmenbedinungen/6_Kosten` | KV-Ordner suggeriert | `[-]` untauglich: Ordner komplett leer |
| 1527_EH Europe GmbH | `4 Kosten/00_Preisvergleich/…` (~270 Dateien), `41 Kostenermittlung KV/410 Grundlagen`, `7 Ausführung/75 Baunebenkosten` | "40 Kostenschätzung"/"42 KV"/"44 Baubuchhaltung" suggerieren Baukosten | `[-]` untauglich: reiner Büroumzug/Möbel-Fitout (Preisvergleich Schreibtische/Stühle/Schränke diverser Hersteller), kein Bauvolumen/GV; die numerierten BKP-900-Stücklisten sind Mobiliar (BKP 9), nicht BKP 1-5; Unterordner 41/75 sind leer |
| 1602_St_Karli_11 | `04_Offerten/00_Archiv/01_Wettbewerb … 08_Revision` (8 Phasenordner, inkl. `08_Revision/01_Kostenfeststellung`) | vollständigste Phasenkette im ganzen Archiv (Wettbewerb → Kostenfeststellung) | `[-]` untauglich: alle 8 Ordner komplett leer (nur `.DS_Store`), obwohl die Struktur genau das Zielbild eines vollständigen Kostenverlaufs zeigt — grösste Enttäuschung des Laufs |
| 1604_Palladio_Proportionen_1 | `00_Kommunikation/CISA/in/140211_Kostenvoranschlag/preventivo 57.pdf` | "Kostenvoranschlag" | `[-]` untauglich: italienisches "preventivo" im Kontext CISA Vicenza (Palladio-Studienprojekt), keine Schweizer Baute/BKP-Bezug, Inhalt nicht als Gebäude-KV verifiziert |

## Fazit Stufe 1

- 0 von 21 Projektordnern liefern ein auswertbares GV/BKP-1-5-Kostendokument.
- Stufe 2 (Extraktion) kann in diesem Bestand **nicht** anlaufen — es gibt nichts zu extrahieren.
- Einzige nicht komplett wertlose Fundstelle: 1318 Lorraine_Kueche (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kleinausbau) — ausserhalb des GV-Scopes, für eine
  spätere BKP-Einzelposition-KB potenziell nutzbar, hier nicht verwertet.
- Empfehlung (siehe `wiki/QUESTIONS.md`): Zweitquelle gemäss `training/PROGRAMM.md`
  ("`kostenkontrolle`-Outputs und Schlussabrechnungen der aktuellen Mandate, SharePoint-
  Projektordner") in einem künftigen Lauf prüfen — dort laufen die aktiven Mandate mit
  echter Kostenkontrolle (KISPI, Albertstrasse, Thalwil u.a.), die dieses Alt-NAS-Archiv
  (2010–2015, Frühphase des Büros) nicht abdeckt.

## Geprüfte Suchtiefe

`find /Volumes/daten/04_Buero/02_Projekte -iname "*kosten*" -type d` bis Tiefe 5, danach
`find -type f` je Treffer-Ordner vollständig gelistet und stichprobenartig geöffnet
(docx/pdf-Kopfzeilen). Keine weiteren Namensvarianten offen (Suche deckte "Kosten",
"kosten" gross/klein sowie die im PROGRAMM genannten Alt-Bezeichnungen "4 Kosten",
"6_Kosten" ab).
