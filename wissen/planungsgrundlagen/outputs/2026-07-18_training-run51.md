# Trainings-Lauf 51 — KB Planungsgrundlagen (2026-07-18)

**Domaene:** Kartenportale (PL-01, Prioritaet). Schwerpunkt: die vier seit Run 50 offenen,
OneDrive-blockierten Fund-Kandidaten **K41–K44** — jetzt gelesen und eingearbeitet.

## Ausgangslage

Run 50 (2026-07-16) hatte per systematischem Ordner-Delta-Scan vier echte, bisher nie erschlossene
PL-01-Kandidaten gefunden, die aber waehrend des gesamten Laufs technisch nicht lesbar waren
(OneDrive File Provider, `EDEADLK`/«Resource deadlock avoided»). Vermutung Run 50: reines
Sync-Timing (Praezedenzfall Lignum-PDF Run 28→30). **Bestaetigt:** in diesem Lauf waren alle vier
problemlos lesbar (Read/pdftotext/textutil), der Lock hatte sich aufgeloest. Kein `brctl`-Eingriff
noetig.

Die beiden Prioritaets-Domaenen (Kartenportale + Energie) sind curriculumseitig ausgeschoepft
(Energie E1–E39 abgearbeitet, D9 projekt-abhaengig; Kartenportale bis auf K41–K44 geschlossen).
Dieser Lauf schliesst mit K41–K44 den **letzten auto-schliessbaren Kartenportale-Rueckstand**.

## Bearbeitete Fragen / Funde

### K41 — Naturgefahren-Objektschutzkonzept Reckholdern 20, Willerzell (SZ), realer JANS-Fall 2304
Gelesen: `230926_Naturgefahren_Konzept.pdf`, `2304RE20_Naturgefahren_Objektschutzkonzept.pdf`,
Checkliste `27_Checkliste_SvN_D.pdf` (Dez. 2020) **S. 7–12** (bis Run 50 nur S. 1–6 gelesen).

- Konzeptstruktur, SZ-WebGIS-Deeplink (`map.geo.sz.ch`, Layer `ch.sz.a012b.naturgefahrenkarte.*`),
  Gefahrenstufen rot/blau/gelb, SIA-261/261-1-Schutzziele mit Jaehrlichkeiten und der
  AWN-SZ-Rechtsgrundlage waren **bereits ab Run 24/27** im Artikel — dort **kein Delta**.
- **Genuines Delta = Bauteilkatalog S. 7–12** (Matrix Bauteil × Naturgefahr, «Bei der Planung
  beruecksichtigen» + «Unterhalt/Betrieb»). Konsolidierte, JANS-relevante Kernanweisungen:
  Sonnenschutz **hoechste Sturmwiderstandsklasse SIA 342** + automatischer Einzug bei Unwetter;
  Lichtdurchlaesse Kunststoff (PC/PMMA) **verlieren nach 5 J bis 80 % Widerstand → Glas**;
  Bleche nach **Suissetec-Merkblatt «Hagelresistentes Bauen bei Spenglerarbeiten»**; Solar/PV-Lasten
  **direkt ins Tragwerk, nicht auf die Dachhaut** + Schneedruckregister; **Ueberschwemmung: keine
  Fenster planen, Betonsockel hochziehen, Lichtschaechte erhoehen/abdichten**; HW3 als
  Hagel-Kennzahl (deckungsgleich mit [[energie-pv-brandschutz]]).
- → NEU **§3c** in [[kartenportale-naturgefahren-objektschutz]]; Checkliste damit S.1-12/12
  vollstaendig. `last_updated` 2026-07-18.

### K44 — Regensdorf OGD-Lieferscheine (ZH-Geoportal-Bestellportal)
Vier reale Lieferscheine (05.–08.02.2024, Empfaenger `mail@raphaeljans.ch`) belegen die dritte
ZH-Bezugsschiene neben Live-WFS und `geodienste.ch`: das **Bestell-/Download-Portal**
`geoportal.zh.ch/opendata` (Warenkorb → Lieferschein → Download, OGD **kostenlos**, kein Login).
Belegte **GIS-ZH-Datensatznummern** (stabiler als WFS-Layernamen, direkt such-/bestellbar):

| GIS-ZH Nr. | Datensatz |
|---|---|
| 555 | Digitales Terrainmodell (DTM) 2021–2022 |
| 557 | LIDAR Laserscanning-Punktwolke 2021–2022 |
| 10016 | Amtliche Vermessung – Datenmodell ZH (Standard) |
| 10102 | OEREB-Kataster – Abstandslinien |

Einordnung: Punktabfrage → Connector-WFS bleibt schnellster Weg; **Flaechen-Raster-Download**
(DTM/LIDAR fuer 3D/Volumenstudie, → Rule 260627) → OGD-Bestellportal bzw. swisstopo
swissALTI3D/swissSURFACE3D. → NEU Abschnitt «ZH Geoportal OGD-Bestellportal» in
[[kartenportale-geoportale-uebersicht]], **Status established** (Nummern aus amtlichen
Lieferscheinen). Kein Connector-`--produkt`-Versprechen (Bestellung laeuft ueber interaktiven
Warenkorb, kein getesteter Ein-Klick-REST-Endpunkt).

### K42/K43 — Stadt-Luzern-Tools (LU-Nebengebiet, Kurzprofil)
- **`klimafreundlichheizen.ch`** — adressgenaues Heizungsberatungs-Portal der Stadt Luzern:
  Heizsystem-Empfehlung je Adresse (Beleg Steinhofstrasse 25 → Erdsonden-WP), Stand
  Gebietserschliessung Waermenetz, Gasversorgung: **spaetestens 2040 kein fossiles Erdgas**,
  Aufhebung mind. 10 J im Voraus angekuendigt (Informationsstand Jan. 2024). LU-Entsprechung zum
  ZH-Energie-/Waermerichtplan.
- **Stadt Luzern 3D-Stadtmodell** (`poi.stadtluzern.ch/.../webappviewer3d`) — Esri-ArcGIS-WebScene,
  texturierte Kuben + Vegetation + Gelaende (© swisstopo / GIZ Stadt Luzern / rawi Kt. LU), reiner
  Viewer **ohne Geometrie-Export**.
- → beide in [[kartenportale-geoportale-uebersicht]] «Weitere Kantone» (Luzern-Bullet erweitert).

## Connector (Schritt 4, Domaene = Kartenportale)
Kein Connector-Eingriff. Die Luzern-Tools sind login-freie interaktive Web-Viewer ohne sauberen
API (bewusst kein Connector-Anspruch). Die ZH-OGD-Datensatznummern sind als **Referenztabelle**
belegt, aber die Bestellung laeuft ueber den interaktiven Warenkorb — kein getesteter
Ein-Klick-Endpunkt → gemaess Leitplanke «nie ungetestet committen» **nicht** in `geo-zh.mjs`
hinterlegt.

## Verifikation (Pflicht-Stufe)
- Alle Zahlen/Nummern direkt aus den amtlichen Original-PDFs entnommen (Lieferscheine, Checkliste,
  Konzept), nicht geraten. Zitatstellen: GIS-ZH-Nr. je Lieferschein-Kopf; SIA 342/HW3/Suissetec
  woertlich aus dem Bauteilkatalog S. 7–12; Willerzell-WebGIS-Link aus dem Auftraggeber-Dokument.
- K44 auf `established` gehoben (Datensatznummern = amtlicher Beleg, unabhaengig verifizierbar am
  Portal); K41-§3c und K42/K43 bleiben im jeweils bestehenden Artikel-Status (emerging bzw.
  Kurzprofil), da produkt-/verfahrensbeschreibend, nicht endpunkt-getestet.

## Register gepflegt
- `wiki/QUESTIONS.md` A: **K41–K44 auf [x]** (mit Auswertungs-Zusammenfassung).
- `training/curriculum.md`: K41/K42/K43/K44 auf [x] mit Fundverweis.
- `raw/_INGESTED.md`: 3 neue Zeilen (K41-Konzept+Checkliste, K44-Lieferscheine, K42/K43-Luzern).
- Artikel: [[kartenportale-naturgefahren-objektschutz]] (§3c neu, `last_updated` 2026-07-18),
  [[kartenportale-geoportale-uebersicht]] (OGD-Bestellportal-Abschnitt + Luzern-Tools,
  `last_updated` 2026-07-18). Keine neuen Artikel → `INDEX.md` unveraendert.

## Naechster Lauf / Empfehlung
- **Auto-schliessbare Luecken sind erschoepft:** Kartenportale K1–K44 geschlossen, Energie E1–E39
  abgearbeitet; verbleibend nur **projekt-/positiv-fall-abhaengige** Punkte (D9 MFH-/ZEV-Realfall;
  ZH-Grundwasserschutz-Positiv-Benchmark; SZ-Naturgefahren-REST-Endpunkt) — alle warten auf ein
  reales Projekt bzw. eine Fachstellen-Auskunft, nicht auf einen weiteren Lese-Lauf.
- **Empfehlung Ruecktaktung:** gemaess PROGRAMM «Intensivphase … bis keine auto-schliessbaren
  Luecken mehr» ist dieser Zustand fuer die beiden Prioritaets-Domaenen erreicht. Vorschlag an
  Raphael: den Loop fuer `planungsgrundlagen` von der Dauer-Intensitaet auf **Turnus/Trigger**
  umstellen (naechster substanzieller Input erst bei neuem PL-Rohmaterial oder einem realen
  Projekt). Bis dahin sinnvoll: Rotation auf **Recht/Norm + Brandschutz** (dort waechst der
  AHB-/BSV-Backlog noch) statt weiterer Leerlauf-Delta-Scans in Kartenportale/Energie.
