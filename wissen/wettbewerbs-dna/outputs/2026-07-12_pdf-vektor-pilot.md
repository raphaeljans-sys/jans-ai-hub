---
title: "Machbarkeits-Pilot PDF-Vektorextraktion aus CAD-Publisher-Plan-PDFs"
status: pilot-abgeschlossen
date: 2026-07-12
etappe: "Etappe 4, Spec Wettbewerbs-Layer (Entscheid E3)"
spec: "wissen/spec/outputs/2026-07-12_wettbewerbs-layer_spec.md"
sources:
  - "OneDrive: AR - 02 Wettbewerbe/2507 WETT TKHL/10 architekt/01 cad publisher/ (4 Test-PDFs, ArchiCAD-Publisher)"
  - "Pilot-Code: /private/tmp/claude-501/-Users-raphaeljans-Developer-jans-ai-hub/cf2a1ea6-524c-4a17-9fba-0f938cb72e23/scratchpad/pdf-vektor/pdf_vektor_pilot.py (Session-Scratchpad, fluechtig)"
werkzeug: "PyMuPDF 1.27.2 (venv ~/.venvs/volumen3d, Python 3.10)"
---

# Machbarkeits-Pilot: PDF-Vektorextraktion aus CAD-Publisher-Plan-PDFs

## Fragestellung

Können wir aus den ArchiCAD-Publisher-Plan-PDFs (Wettbewerb 2507 TKHL) maschinenlesbare
Geometrie und Semantik gewinnen (Linien, Texte, Masse, Schraffuren), ohne ArchiCAD zu
öffnen? Grundlage für Entscheid E3 der Wettbewerbs-Layer-Spec (PDF-Weg vs. IFC-Weg).

## Verdikt

**JA für Text/Masse/Beschriftung/Statistik — NEIN für belastbare Bauteilsemantik.**
Die PDFs sind echte Vektor-PDFs (0 Rasterbilder, aller Inhalt Pfade + Textobjekte),
die Extraktion ist trivial schnell (unter 0.4 s pro Plan). Der PDF-Weg taugt als
Prüf- und Verifikations-Connector (Flächen-Check, Massstabs-Check, Beschriftungs-Audit);
für Geometrie-Semantik (Wand vs. Möbel vs. Vermassungslinie) bleibt IFC der richtige Hebel.

## Testmaterial (4 Plan-PDFs, Projekt 2507 WETT TKHL)

| Datei (Quelle: `…/10 architekt/01 cad publisher/`) | Typ | Format | Seiten |
|---|---|---|---|
| `tkhl plan/2 Wettbewerb/ING Tragstruktur/GRU OG Regelgeschoss.pdf` | Grundriss 1:200 | A4 | 1 |
| `TKHL Plan rj/WETT Abgabe Links/SNT Längsschnitt.pdf` | Schnitt | A3 quer | 1 |
| `tkhl plan/2 Wettbewerb/2.1 Situation/2.1.2 archiv/2.1.2.4 Situation EG 500 A1.pdf` | Situation EG 1:500 | A1 | 1 |
| `TKHL Plan rj SIA416/WETT Abgabe SIA 416.pdf` | SIA-416-Schemaplaene | A4 | 12 |

Alle vier stammen aus dem ArchiCAD-Publisher (Marker `GSPublisherVersion x.y` auf jeder Seite,
Creator «Arch…» im PDF-Header). Erkenntnis am Rand: OneDrive-Dateien sind oft `dataless`
(Platzhalter); ein erster Lesezugriff materialisiert sie, kann aber 1 bis 2 Minuten haengen.

## Messwerte aus dem Pilotlauf

| Kennzahl | GRU Regelgeschoss | SNT Laengsschnitt | SIT EG 500 A1 |
|---|---|---|---|
| Vektor-Pfade | 5'769 | 27'576 | 1'146 |
| Linien-Segmente | 6'178 | 31'307 | 1'384 |
| Kurven / gefuellte Pfade | 182 / 155 | 0 / 301 | 35 / 97 |
| Text-Spans | 25 | 17 | 48 |
| Masszahl-Kandidaten (Regex) | 20 | 4 | 16 |
| Laufzeit gesamt (Extraktion + Cluster) | 0.08 s | 0.35 s | 0.03 s |

SIA-416-Mappe: 12 Seiten, 2'500 bis 3'300 Pfade je Planseite, Deckblatt rein tabellarisch.

## Was robust funktioniert (belegt am Pilotlauf)

1. **Texte mit Position und Groesse** — vollstaendig als echte Textobjekte extrahierbar
   (kein OCR noetig). Schriftgroessen trennen sauber die Ebenen: Plankopf 7.8 pt,
   Massketten 5.8 pt, Koten 4.9 pt, Raumstempel 2.7 pt (A1-Situation).
2. **Raumbeschriftungen inkl. Flaechen** — die Raumstempel liegen als Gruppe
   Nummer/Name/Flaeche uebereinander: `410 Gruppen- / Klassenzimmer` + `74.78`,
   `510 Kueche` + `60.73`, `811 Aussengeraeteraum TB` + `BF:32.00 m` + hochgestelltes `2`.
   Mit einfacher Bounding-Box-Nachbarschaft (Name-Zeile, Zahl direkt darunter) ist die
   komplette Raumliste inkl. m2 maschinell ablesbar. Achtung: das «m2» ist in zwei Spans
   gesplittet (Superscript), das Pairing muss ueber Vertikal-Nachbarschaft laufen, nicht
   ueber ein `m2`-Regex in einem einzelnen Span.
3. **Massketten und Koten** — Zahlenmuster (4.95 / 1.60 / 6.90 / 20 sowie Koten −4.45 bis
   +13.65 im Schnitt) treffsicher erkennbar; im Grundriss 20 von 25 Spans Masszahlen.
4. **Massstabs-Verifikation** — rechnerisch validiert: Masskette unten im Grundriss
   (20 | 6.90 | 1.60 | 6.90 | 20), Abstand der Labelmitten 60.5 pt fuer 4.25 m ergibt
   14.24 pt/m = 5.02 mm Papier pro Meter = **Massstab 1:199** — der Plankopf sagt «1:200».
   Damit ist ein automatischer Check «stimmt der angeschriebene Massstab?» machbar.
5. **SIA-416-Flaechenblatt** — das Deckblatt der SIA-416-Mappe ist direkt maschinenlesbar:
   NF je Geschoss (UG 275.2 / EG 333.0 / 1.OG 281.3 / 2.OG 280.9 / 3.OG 281.0) und
   Total 1'451.4 m2. Das ist der direkte Rohstoff fuer den Soll/Ist-Abgleich des Agenten
   `flaechen-nachweis` (Skill `wettbewerb`) — ohne ArchiCAD.
6. **Vektor-Statistik als Fingerprint** — Strichstaerken- und Farbverteilung je Plan sind
   stabil abfragbar (z.B. GRU: 0.28 pt schwarz = Hauptzeichnung, 0.67/0.74/0.84-Grau =
   Umgebung/Bestand, 0.37 pt = dickste Klasse). Taugt fuer Konsistenz-Checks ueber einen
   Plansatz (gleiche Stiftlogik auf allen Plaenen?).

## Was schwierig bleibt (ehrlich)

1. **Keine Layer, keine Objektsemantik.** Der Publisher plaettet alles zu anonymen
   Pfaden — es gibt im PDF keinen Layernamen, kein «Wand»-Objekt. Semantik muss
   heuristisch rekonstruiert werden.
2. **Wand-Heuristik nur schwach.** Der Versuch «dickste Strichklasse + Endpunkt-Clustering»
   liefert zwar Cluster (GRU: 281 Segmente mit 0.37 pt in 29 Cluster, groesster 10 %;
   SNT: 221 Segmente 0.71 pt, groesster Cluster 24 %), aber keine verlaesslichen Wandzuege:
   Waende, Fassadenlinien, Vermassungs-Endstriche und Moebelkanten teilen sich
   Strichstaerken. Bei 1:200-Wettbewerbsplaenen sind Waende zudem oft gefuellte Polygone
   (Schwarzplan-Poché) statt Doppellinien — die 14 schwarzen Fuellpfade im GRU sind die
   heisseren Wand-Kandidaten als die Linien. Fuer belastbare Bauteil-Geometrie ist der
   Aufwand unverhaeltnismaessig.
3. **Schraffur vs. Struktur nicht unterscheidbar.** Der Schnitt hat 31'307 Segmente,
   davon der Grossteil Terrain-/Material-Schraffur (0.26/0.28 pt) — mengenmaessig erdrueckt
   die Schraffur jede naive Geometrie-Analyse. Filterbar nur grob ueber Strichstaerke/Farbe.
4. **Bemassungs-Zuordnung fehlt.** Die Masszahl ist extrahierbar, aber welche zwei Punkte
   sie bemisst, steht nirgends — die Zuordnung Masszahl zu Massketten-Geometrie waere
   wieder Heuristik (naechstliegende parallele Linie).
5. **Text-Splits.** Superscript (m2) und teils Wortgruppen werden in mehrere Spans
   zerlegt; Pairing-Logik noetig (im Pilot demonstriert, aber pro Planstil zu kalibrieren).

## Empfehlung fuer Entscheid E3

1. **IFC bleibt der Hebel fuer Geometrie-Semantik** (ifcopenshell): Waende, Raeume,
   Flaechen, Geschosse kommen dort als benannte Objekte — was der PDF-Weg nie liefern kann.
   Der Pilot bestaetigt Entscheid E3.
2. **PDF-Extraktion trotzdem ausbauen — aber als PRUEF-Connector, nicht als
   Geometrie-Quelle.** Empfohlener Zuschnitt (klein, ~1 Tag, PyMuPDF ist im
   volumen3d-venv schon vorhanden):
   - **Flaechen-/Beschriftungs-Check**: Raumstempel (Nr/Name/m2) + SIA-416-Blatt aus dem
     Abgabe-PDF lesen und gegen Raumprogramm-Soll ampeln (Zulieferer fuer
     `flaechen-nachweis`/`programm-pruefer` im Skill `wettbewerb`). Wichtig: geprueft
     wird die ABGABE selbst, nicht das Modell — genau das will die Konformitaets-Schleife.
   - **Massstabs-Verifikation**: angeschriebener Massstab vs. rueckgerechneter
     (Masskette in pt), Toleranz ±2 %.
   - **Plansatz-Audit**: Plankopf-Vollstaendigkeit (Kennwort, Massstab, Titel),
     Stift-/Strichstaerken-Konsistenz ueber alle Plaene, Format-Check gegen Abgabevorgabe.
3. **Nicht weiterverfolgen**: Wand-/Bauteil-Rekonstruktion aus PDF-Pfaden (Punkt 2 oben);
   ebenso DWG/DXF-Parsing als Ersatz — die DWGs liegen zwar daneben (`tkhl plan/DWG/`),
   aber IFC ist semantisch reicher und im Spec-Entscheid bereits gesetzt.

## Reproduktion

Pilot-Skript (Session-Scratchpad, bei Bedarf in den Hub uebernehmen):
`/private/tmp/claude-501/-Users-raphaeljans-Developer-jans-ai-hub/cf2a1ea6-524c-4a17-9fba-0f938cb72e23/scratchpad/pdf-vektor/pdf_vektor_pilot.py`
Aufruf: `source ~/.venvs/volumen3d/bin/activate && python pdf_vektor_pilot.py <plan.pdf>`
(JSON-Resultate `resultat_*.json` liegen daneben.)
