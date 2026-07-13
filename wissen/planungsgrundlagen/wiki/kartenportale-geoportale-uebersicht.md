---
title: Geoportale — welches Portal liefert was
status: established
last_updated: 2026-07-13
sources: [PL - 01 Kartenportale (SharePoint), api3/data/wms.geo.admin.ch (06/2026), maps.zh.ch, geodienste.ch, geoservices.zh.ch geoshopapi (zh.ch rest_schnittstelle_ogd_interface.pdf), notariate-zh.ch/de/grundbuch/elektronische-eigentumsabfrage (Run 20), zh.ch/objektwesen.html (Run 20), GEOINFO IT AG Produktblatt «Fachanwendung Baumkataster» (PL-01/Baumkataster, Run 24)]
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-zonenplan-zh]] [[kartenportale-baulinien-abstandslinien-zh]] [[kartenportale-naturgefahren-objektschutz]]
---

# Geoportale — welches Portal liefert was

Wegweiser durch die in **PL - 01 Kartenportale** gesammelten Portale. Ziel: pro
Grundlagen-Bedarf das richtige Portal/Produkt sofort treffen. (Aufbau-Artikel — wird durch den
Trainings-Loop pro Lauf praezisiert; offene Felder in `wiki/QUESTIONS.md`.)

## Portal → Produkt (Arbeitsstand)

| Portal | Gebiet | Liefert | Login |
|---|---|---|---|
| `map.geo.admin.ch` / api3.geo.admin.ch | CH (Bund) | Orthofoto (SWISSIMAGE), Hoehenmodell (swissALTI3D), Gebaeudekuben (swissBUILDINGS3D), amtl. Vermessung/EGRID, LIDAR | nein |
| `maps.zh.ch` (GIS-Browser) | Kt. ZH | OEREB-Kataster, Zonenplan, Baulinien, kant. Fachdaten | nein (OEREB) |
| `maps.zh.ch/wfs/OGDZHWFS` | Kt. ZH | **OGD-WFS (GeoJSON, login-frei):** Grundnutzung/Zonenplan 0156 (+ proj-Revision), ES Laerm 0154, ueberlagernd 0155, Baulinien/Abstandslinien 0158/0152/0153/0150/0185 — Connector `--produkt zonenplan,baulinien` | **nein** |
| `geoservices.zh.ch/geoshopapi` | Kt. ZH | **Geodatenshop-REST-API**: AV/Grundstueckkataster (DXF), Hoehenmodelle, LIDAR u.v.m. je Gemeinde/Parzelle — Connector `geoshop-zh.mjs` | **nein** |
| `geodienste.ch` | CH (kantonsweise) | OGD-Downloads amtl. Vermessung (INTERLIS ganzer Kanton direkt; DXF-GEOBAU nur Formular), OEREB-Abstandslinien | tlw. Account |
| `geoportal.ch` | div. Gemeinden (SZ/ZG…) | kommunale GIS (Einsiedeln, Oberaegeri, Wald…) | tlw. |
| `cadastre.ch` | CH | Cadastralinfo / Grundstueckinformationen | nein |
| `swisstopo.admin.ch` | CH | Kartenwerke, Hoehenmodelle, Geodaten-Shop | tlw. |
| `geoshop.lisag.ch` | LU/Region | Datenbezug amtl. Vermessung | Account |
| `maps.zh.ch` «Eigentumsauskunft» (ObjektwesenZH) | Kt. ZH | Eigentuemer-/Grundbuchauskunft (Name, Adresse, Eigentumsform), 5/Tag | SMS-Code, kein Interessennachweis |

## Kernprodukte fuer eine Studie (Checkliste)

- **OEREB-Auszug** (inkl. rechtsverbindliche Grundnutzung/BZO) → `[[kartenportale-oereb-egrid-bezug]]`
- **Punkthoehe / Hoehenmodell (DTM) / Orthofoto / Bauzonen CH** → **belegte Endpunkte + Connector
  `--produkt`** in `[[kartenportale-bund-geodaten]]` (validiert 2026-06-10)
- **Zonenplan / BZO (kommunal, rechtsverbindlich)** → **login-freier Vektor** ueber den
  ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS`, Datensatz **0156** (`np_gn_zonenflaeche_f`): Zone +
  BMZ/AZ + Hoehen/Vollgeschosse + Rechtsstatus, Punktabfrage via Mini-BBOX. **Mehr als der
  OEREB-PDF.** Connector `--produkt zonenplan` → [[kartenportale-zonenplan-zh]] (validiert
  2026-06-16). Der alte WMS-Weg `wms.zh.ch` (HTTP 401) entfaellt damit.
- **Grundstueckkataster / amtliche Vermessung (DXF fuer CAD)** → **Geoshop-API**
  `geoservices.zh.ch/geoshopapi/v1` via Connector `geoshop-zh.mjs`: Produkt 10016
  (AV-Datenmodell ZH) als DXF je Gemeinde oder EGRID-Parzelle, asynchron mit Polling
  (validiert 2026-06-11, Langnau am Albis). Kein DWG im Angebot — DXF ist das CAD-Format.
- **Baulinien / Abstandslinien** (Verkehrsbaulinie, Wald-/Gewaesserabstand, Waldgrenze,
  Gewaesserraum) → **eigener Artikel** [[kartenportale-baulinien-abstandslinien-zh]]: login-freier
  Vektor via ZH-OGD-WFS, Datensaetze 0158/0152/0153/0150/0185, Connector `--produkt baulinien`
  (groesserer Radius ±150 m, weil Linien neben der Parzelle liegen). Validiert 2026-06-24
  (Langnau 7 Baulinien, Seuzach 10 Baulinien). Die OEREB-Betroffenheit (betroffen/nicht
  betroffen) bleibt im OEREB-PDF; das senkrechte Abstandsmass rechnet der Agent `baulinien-analyst`.

## Geodaten-Formate — Kurzleitfaden (K8)

Welches Format wofuer, wenn man die Rohdaten weiterverarbeitet:

| Format | Was | Wofuer / Werkzeug |
|---|---|---|
| **GeoJSON** | Vektor + Attribute, WGS84/LV95, Text/JSON | Schnellabfrage/Skript (OGD-WFS), direkt in QGIS/Code lesbar — **Standard fuer Punktabfragen im Connector** |
| **INTERLIS (.itf/.xtf)** | CH-Modellsprache amtl. Vermessung/Geobasisdaten | **vollstaendiger, modellkonformer** AV-Datensatz (geodienste.ch, ganzer Kanton); Import via ili2db/QGIS-Plugin |
| **DXF** | CAD-Austausch (AutoCAD/Rhino/Vectorworks) | **Kataster/AV in den Plan ziehen** — Geoshop-API ZH Produkt 10016 (DWG gibt es dort nicht; DXF ist das Austauschformat) |
| **GeoTIFF (.tif)** | georeferenziertes Rasterbild | Orthofoto (SWISSIMAGE-DOP10) + Terrainmodell (swissALTI3D), STAC-Download `--produkt orthofoto,dtm` |
| **XYZ / LAZ (.xyz.zip/.laz)** | Punktraster / Punktwolke (LIDAR) | Schnitte/Gelaende/Volumen (swissALTI3D-XYZ, swisssurface3D-LAZ); gross → nur bei Bedarf |
| **LandXML** | Vermessungs-/Terrain-Austausch (Punkte, Bruchkanten, DGM) | Uebergabe an Geometer/Tiefbau; weniger gebraucht in der Architektur-Vorstufe |
| **GeoPackage (.gpkg)** | SQLite-Container fuer Vektor+Raster | moderner Sammelcontainer (statt Shapefile); gut fuer kombinierte Layer-Ablage |

Faustregel JANS: **GeoJSON** zum Abfragen/Pruefen, **DXF** in den CAD-Plan, **GeoTIFF** fuer
Bild/Terrain, **INTERLIS** nur wenn der modellvollstaendige amtliche Datensatz noetig ist.

## Baumkataster (K12, niedrige Prioritaet, Run 24 2026-07-13)

Bisher unbearbeiteter PL-01-Ordner `Baumkataster/`. Ergebnis: der **Baumkataster ist kein
kantonal/schweizweit standardisiertes Geoportal-Produkt** wie Zonenplan oder Baulinien, sondern
eine **kommunale Fachanwendung auf GIS-Basis**, die einzelne Gemeinden/Staedte fuer die eigene
Baumbestandsverwaltung fuehren (Quelle: Produktblatt **GEOINFO IT AG** «Fachanwendung
Baumkataster», Herisau) — Funktionen: Baumstandort-Erfassung, Sachdaten (Schutzwuerdigkeit,
Gesundheitszustand, Zustaendigkeit), Pflegemassnahmen-Planung, Auswertungen zu anstehenden/
ueberfaelligen Unterhaltsarbeiten, gefaellte Baeume als eigene Kategorie. Die Anwendung laeuft auf
der jeweiligen kommunalen **Geodateninfrastruktur (GDI)**, nicht auf einem einheitlichen
Bundes-/Kantonsportal.

**Praxisrelevanz fuer JANS:** ein Baumkataster ist bei Neubau-/Umbauprojekten relevant, wenn
Baumfaell- oder Schutzmassnahmen zu pruefen sind (kommunale Baumschutzverordnung); der Bezugsweg
ist **gemeinde-/portalspezifisch** zu ermitteln (kein einheitlicher `--produkt baumkataster`-
Connector-Weg moeglich, da kein standardisierter Endpunkt existiert). Die im Ordner abgelegten
`map.geo.admin.ch`-Kartenausschnitte (Reckholdern) zeigen lediglich punktuelle Baum-Symbole aus
einer allgemeinen Kartenansicht, **keinen dedizierten Baumkataster-Layer** von geo.admin.ch selbst.

Status: `speculative` fuer die Automatisierbarkeit (kein belegter Endpunkt gefunden); `emerging`
fuer die fachliche Einordnung (Vendor-Produktblatt als einzige Quelle). Naechster Schritt bei
realem Bedarf: pruefen, ob die konkrete Standortgemeinde einen oeffentlichen Baumkataster-Layer im
eigenen Geoportal fuehrt (analog `KtLU Luzern`-Struktur, dort z. T. eigene Themenordner pro
Gemeinde-GIS).

## Offen (→ QUESTIONS)
- ~~A2: kommunaler ZH-Zonenplan login-frei~~ **✓ geloest 2026-06-16** via OGD-WFS 0156
  → [[kartenportale-zonenplan-zh]].
- ~~A6: projektierter Zonen-Layer am Revisionsfall~~ **✓ geloest 2026-06-24** (Seuzach)
  → [[kartenportale-zonenplan-zh]] Abschnitt A6.
- ~~K5: Baulinien/Abstandslinien als Vektor~~ **✓ geloest 2026-06-24**
  → [[kartenportale-baulinien-abstandslinien-zh]].
- A1/A7: Nicht-ZH-Kantone — SZ-OEREB ist via `geo-sz.mjs` geloest (siehe Skill `oereb-schwyz`);
  SZ-Zonen-WFS noch nicht kartiert.
- **A5: Eigentumsabfrage ObjektwesenZH per EGRID** — **Korrektur 2026-07-13 (Run 20):** der bisherige
  Stand (Interessennachweis Art. 970 ZGB noetig) war **zu streng**. Die **elektronische
  Eigentumsabfrage** laeuft ueber `maps.zh.ch` (GIS-Browser, Karte «Eigentumsauskunft» → Grundstueck
  anklicken → Abschnitt «Liegenschaften» → «Eigentuemer- und Grundbuchauskunft»): **login-frei**, nur
  **SMS-Code-Verifikation** (Schweizer Mobilnummer, Code 5 Min. gueltig) — **kein Interessennachweis**
  noetig (die gesetzliche Grundlage macht die Auskunftserteilung ausdruecklich **nicht** von einem
  Interessennachweis abhaengig). **5 Abfragen/Tag** je Mobilnummer. Liefert Name/Firma des
  Eigentuemers, letzte bekannte Wohnadresse, Eigentumsform — sofern kein Sperrvermerk gesetzt (kann
  der Eigentuemer beim Grundbuchamt beantragen; sperrt nur die Personendaten, nicht die Kartenansicht).
  **Nicht rechtsverbindlich** (nur der beglaubigte Grundbuchauszug ist es). Wegen der SMS-2FA bleibt
  es ein **manueller Schnellweg**, keine maschinelle API/Automatisierung — aber deutlich schneller als
  der bisher dokumentierte formelle Behoerdenweg. Quellen: notariate-zh.ch/de/grundbuch/elektronische-
  eigentumsabfrage, tagesanzeiger.ch (29.08.2023 «Zuerich ermoeglicht Online-Abfrage von
  Grundstueckbesitzerinnen»). **Separates ObjektwesenZH-GB-Projekt** (Ablauf einer neuen eCH-
  konformen Schnittstelle Grundbuch↔Datenlogistik ZH, Laufzeit Anfang 2026 bis Mitte 2027, laut
  zh.ch/objektwesen.html) betrifft die **Backend-Anbindung**, nicht den oeffentlichen Auskunftsweg.
  Status: `established` (manueller Weg belegt aus zwei unabhaengigen Quellen), Automatisierbarkeit
  bleibt `speculative` (keine API, SMS-2FA ist der Blocker).
