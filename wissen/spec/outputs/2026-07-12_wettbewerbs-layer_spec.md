# Spec: Wettbewerbs-Layer JANS AI Hub

Datum: 12.07.2026 · Verfasser: Claude (Session MacBook Pro) · Auftraggeber: Raphael Jans
Status: **aktiv** · Methode: Spec (Karpathy/Marchese, 3 Easy Steps)

## 1. Wahres Ziel

Der JANS AI Hub wird um die Design-/Wettbewerbskomponente erweitert, sodass mittelfristig
gilt: Raphael laedt ein Wettbewerbsprogramm hoch, und innerhalb EINER Arbeitswoche entsteht
im iterativen Mensch-Maschine-Prozess die komplette Wettbewerbsabgabe (Plaene, Bilder,
Schemas, Raumprogramm-Nachweise, Bericht, Plakate inkl. Druckauftraege, 3D-Situationsmodell).
Inhaltliches Ziel: eine der Jury entsprechende Typologie waehlen und darin die bestmoegliche
Programmanordnung erreichen — Zielmarke 1. Platz.

Das wahre Ziel dahinter: **Leistungssteigerung der Firma** — der Hub liefert Verifikation,
Varianten-Breite, Nachweise und Produktion; Raphael setzt Parti und letzte Gestalt (Human
Gate, bleibt bestehen — verankert im Skill `wettbewerb`).

## 2. Faktenbasis (Scan 12.07.2026)

- Archiv: `OneDrive/AR - 02 Wettbewerbe/` — 12 Teilnahmen (2101–2507), 17'045 Dateien.
- Produktionskette JANS: ArchiCAD (.pln) → CAD-Publisher (Plan-PDF) → InDesign (A0);
  Visualisierung ArchiCAD → OBJ/Cineware → Cinema 4D (+ Enscape, Photoshop).
- Geschlossener Lernkreis vorhanden: eigenes Programm → eigene Abgabe → Jurybericht.
- **Zwei 2. Plaetze: 2102 Muttenz und 2206 Schoental** (Aussage Raphael 12.07.2026) —
  schaerfstes Lernmaterial, weil der Jurybericht dort das Delta zum 1. Platz benennt.
- `_Admin/03_Referenzen_WB_Abgaben/` = kuratierte Darstellungs-Bibliothek (Diagramme,
  Wettbewerbsbeispiele, Flaechenberechnung nach Gebaeudetyp, Modellbilder).
- `_Admin/02_Ausschreibungen/` = Portale (konkurado, espazium, simap, Competitionline).

## 3. Schluesselentscheide

| Nr | Entscheid | Status |
|---|---|---|
| E1 | Lern-Seed = eigenes Archiv, prioritaer die beiden 2. Plaetze Muttenz + Schoental als Goldstandard-Vorlagen fuer das maschinelle Prozedere | **bestaetigt** (Raphael 12.07.2026) |
| E2 | Neue KB `wissen/wettbewerbs-dna/` als Wissens-Layer; Quellen bleiben im OneDrive-Archiv, KB enthaelt Destillate | bestaetigt (Vorschlag angenommen «Ja gerne») |
| E3 | CAD-Zugang ueber drei Schienen: PDF-Vektorextraktion, DXF-Schichtenvertrag (Erweiterung), IFC-Export-Disziplin | vorgeschlagen, Umsetzung in Etappe 3 — vor Bau nochmals bestaetigen |
| E4 | Plakat-Weg: IDML-Vorlage aus bestehendem JANS-Board (InDesign bleibt Feinsatz-Werkzeug) | vorgeschlagen, offen |
| E5 | Bild-Weg: Anschluss an bestehende C4D-Render-Weiche (Mac Mini) + JANS-Presets aus 2507; Photoshop-Postpro bleibt Hand | vorgeschlagen, offen |
| E6 | Trainings-Loop `wettbewerbs-dna-training` auf MacBook Pro, Intensivphase-Takt (Regel 260712) | umgesetzt 12.07.2026 |

## 4. Etappen (enge Scopes, je mit Checkpoint)

1. **KB-Seed (jetzt):** KB anlegen + Destillation Muttenz, Schoental, BIWAK/Grassen;
   Muster-Artikel «Delta der 2. Plaetze». Checkpoint: Raphael liest die 3 Dossiers gegen.
2. **Archiv komplett:** Loop arbeitet die restlichen 9 Teilnahmen ab; Darstellungs-
   Bibliothek (_Admin) als Bild-Katalog indexieren (Vision-Destillate).
3. **Externe Erweiterung:** konkurado/espazium-Juryberichte je Ziel-Bauaufgabe;
   parallel Normen-Destillate SIA 400 / SIA 142+143 via Skill `normen`.
4. **Geometrie-Schienen:** PDF-Vektorextraktor-Pilot, DXF-Schichtenvertrag-Erweiterung
   (Grundriss), IFC-Pilot (ifcopenshell) am naechsten lebenden Wettbewerb.
5. **Produktions-Schienen:** IDML-Board-Vorlage, C4D-Preset-Uebernahme, Druck-PDF-Standard
   (PDF/X, Beschnitt), Modellbau-/3D-Druck-Specs.
6. **Generalprobe:** ein realer oder retrospektiver Wettbewerb komplett durch den Harness
   (Programm → Abgabe-Dummy in 5 Arbeitstagen), Luecken protokollieren.

## 5. Bewertungskriterien (vorab definiert)

- Jedes Dossier belegt Jury-Aussagen woertlich mit Quelle (Dokument + Seite); nichts erfunden.
- Muster-Artikel beantwortet prueffaehig: Was fehlte in Muttenz/Schoental zum 1. Platz?
- Nach Etappe 2: KB beantwortet «Welche Typologie gewinnt bei Bauaufgabe X?» mit ≥3 Belegen.
- Nach Etappe 6: Abgabe-Dummy besteht die Konformitaets-Schleife (`programm-pruefer`) gruen,
  Reife-Ampel im Skill `wettbewerb` verbessert sich (Plaene orange→gelb, Plakate gelb→gruen).

## 6. Verifier

- Destillate: unabhaengige Widerlegungs-Pruefung (Refuter-Agent liest Jurybericht gegen
  Dossier) vor Status `established` — Pflicht gemaess Regel 260712.
- Texterzeugnisse: Skill `korrektur`; Aussenwirkung: `twin`-Gate.
- Geometrie/Nachweise: Zahlen gegen Original-Excel (SIA 416) rueckgerechnet.

## 7. Abgrenzung

- Kein autonomer Entwurf: Parti/Gestalt = Human Gate (Skill `wettbewerb`, Leitidee).
- Keine Aenderung an laufenden Projekten im OneDrive-Archiv; Archiv ist Nur-Lese-Quelle.
- Urheberrecht: fremde Juryberichte/Abgaben nur sinngemaess destilliert, nie kopiert.
