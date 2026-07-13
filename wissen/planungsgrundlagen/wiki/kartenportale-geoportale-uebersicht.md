---
title: Geoportale — welches Portal liefert was
status: established
last_updated: 2026-07-13
sources: [PL - 01 Kartenportale (SharePoint), api3/data/wms.geo.admin.ch (06/2026), maps.zh.ch, geodienste.ch, geoservices.zh.ch geoshopapi (zh.ch rest_schnittstelle_ogd_interface.pdf), notariate-zh.ch/de/grundbuch/elektronische-eigentumsabfrage (Run 20), zh.ch/objektwesen.html (Run 20), GEOINFO IT AG Produktblatt «Fachanwendung Baumkataster» (PL-01/Baumkataster, Run 24), Geodatenshop Kanton Luzern Kommunikation (Registrierung/Bestellung R694081564, 05/2024) + geodienste.ch Ablehnungsmail Kt. LU (03.06.2024), KtBE Bern be-geo.ch, KtZH/geoglatt.ch Maur (Run 25), KtZH Zuerich/_Grundbuchamt/230301_Grundbuchamt.docx (Notariat Hoengg-Zuerich, Run 27), KtZH Zuerich/geodatenshop.zh.ch/Geodatenshop.docx (Run 27), KtSZ Schwyz/geoshop.lisag.ch (_Link.docx, _GeoShop Standard.pdf, Produkteinformation_fuer_Datenausgabe_SZ.pdf AGI Kt. SZ 26.09.2023, realer Fall KTN 3301 Einsiedeln 16.11.2023, Run 27), PL - 01 Kartenportale/Baumkataster/map.geo.admin.ch_2024*.pdf + Baumkataster-Mac-mini-von-Raphael.pdf (Delta-Check Run 29), PL - 01 Kartenportale/Datenformate_Geokartenmaterial/XML/ (Delta-Check Run 29)]
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-zonenplan-zh]] [[kartenportale-baulinien-abstandslinien-zh]] [[kartenportale-naturgefahren-objektschutz]] [[kartenportale-werkleitungskataster]] [[recht-norm-dispensrecht]]
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
| `geoshop.lisag.ch` | Zentralschweiz (UR/SZ/OW/NW/ZG, Betrieb durch LISAG fuer die Kantone + LU-Region) | Datenbezug amtl. Vermessung (AV-Daten, Datenmodell DM01AV_UR_SZ_OW_NW) | **SZ: login-frei via vordefinierten Link `sz_public`/`public`**; sonst Account |
| `geodatenshop.zh.ch` | Kt. ZH | **Web-Oberflaeche** desselben Bestellsystems wie `geoservices.zh.ch/geoshopapi` (Amt fuer Raumentwicklung, Abt. Geoinformation) — ueber 500 Produkte, benutzergefuehrter Bestellprozess, Bestell-Uebersicht; die API-Automatisierung laeuft ueber den Connector `geoshop-zh.mjs`, das Web-Portal ist der manuelle Weg fuer dieselben Daten | Account (Freigabe je Produkt online) |
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
- **Grundstueckkataster / amtliche Vermessung Kt. SZ (DXF fuer CAD)** → **`geoshop.lisag.ch`**
  (Run 27, real erprobt Bezirk Einsiedeln/Willerzell 2023): Datenmodell **DM01AV_UR_SZ_OW_NW**
  (interkantonaler Verbund Zentralschweiz), Formate MOpublic (INTERLIS2/1, **DXF-DWG**, SHAPE,
  Geopackage), GEOBAU DXF-DWG, Punktkoordinaten, Katasterplan-PDF, Hoehenpunkte/-kurven.
  **Zwei Zustaende** abrufbar: rechtsgueltig (Ebene «Liegenschaften», Grundbuch-Mutation
  vollzogen) und aktuell/projektiert (Ebene «ProjLiegenschaften», Mutation angemeldet aber noch
  nicht rechtsgueltig) — beide werden bei Bestellung mitgeliefert. **Kosten: die Nutzung der
  Geobasisdaten des Kantons SZ ist gebuehrenfrei** (GebGeoi, SRSZ 214.112; nur bei nicht
  netzgebundener Bereitstellung Bereitstellungs-/Transportkosten). Zugang fuer Kt. SZ ueber einen
  **vordefinierten Link mit eingebetteten Zugangsdaten** `sz_public`/`public`
  (`geoshop.lisag.ch/client5/index_sz.html?user=sz_public&password=public`) — praktisch
  **login-frei fuer die oeffentlichen Geobasisdaten**, ohne dass eine persoenliche Registrierung
  ersichtlich noetig ist (Quelle: `_Link.docx`, JANS-interne Notiz 2023; ob fuer eine
  kostenpflichtige/eingeschraenkte Bestellung dennoch ein Konto verlangt wird, bleibt offen).
  Genauigkeit nach Toleranzstufen TS 2–5 (TVAV Art. 3/28 ff., ueberbautes Gebiet TS 2). Quelle:
  Amt fuer Geoinformation Kt. SZ, «Produkteinformationen zu den digitalen Daten der amtlichen
  Vermessung», 26.09.2023 (realer Fall KTN 3301 Einsiedeln, drei Bestellungen: AV-Kataster
  kleiner/grosser Perimeter + Stockgrenze). **Kein Connector bisher gebaut** — Status `emerging`
  (real erprobter manueller Weg, aber Automatisierbarkeit nicht validiert).
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

**Re-Check ohne Delta (K20, Run 29 2026-07-13):** der Unterordner `Datenformate_Geokartenmaterial/
XML/` (3 Screenshots, 05.06.2024) enthaelt **keinen geodatenspezifischen Inhalt** — die Bilder
zeigen eine generische Web-Erklaerung "Was ist XML?" (Adobe-Artikel-Ausschnitt) und eine
Google-Suchergebnis-Seite zu "xml datei"; kein Bezug zu INTERLIS/GML/geodatenspezifischem
XML-Schema. Kein Delta zur bestehenden 7-Format-Tabelle oben (K8).

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

**Re-Check ohne Delta (K21, Run 29 2026-07-13):** der PL-01-Ordner `Baumkataster/` (oberste Ebene,
nicht die Pro-Projekt-Unterordner) enthaelt **keine neuen Fakten** — `Baumkataster.pdf` und
`Baumkataster-Mac mini von Raphael.pdf` sind **byte-identisch dasselbe** GEOINFO-IT-AG-
Produktblatt (bereits oben ausgewertet), die beiden `map.geo.admin.ch_*.pdf`-Ausdrucke zeigen
lediglich generische Baum-Symbole (gruene Punkte) aus einer normalen Kartenansicht — **kein
dedizierter Baumkataster-Layer**, sondern ein persoenlicher Kartenausdruck mit Standort-Pin
(Steinhofstrasse/Zuerich-Gebiet). Bestaetigt die bestehende Einordnung: kein zentrales
Baumkataster-Geoportal, gemeinde-/portalspezifisch zu klaeren.

## Weitere Kantone/regionale Portale (K17/K18, Run 25 2026-07-13, niedrige Prioritaet)

JANS-Kerngeschaeft liegt in Kt. ZH + SZ; die folgenden Portale sind bisher nur punktuell in
PL-01 dokumentiert (einzelne Projekte ausserhalb des Kerngebiets) — hier nur ein Kurzprofil, keine
vertiefte Bearbeitung, da kein wiederkehrender Bedarf erkennbar ist.

- **Kt. Luzern — Geodatenshop Kanton Luzern** (`geodatenshop.lu.ch`): analog zum ZH-Modell
  Registrierung → Bestellung → Download; Produktkatalog u.a. DTM (1 m Raster), Hoehenlinien (DXF),
  3D-Gebaeudemodelle, Landschaftsmodell, Grundbuchplan, oeffentlich-rechtliche
  Eigentumsbeschraenkung, Denkmalverzeichnis/Bauinventar, historische Karten. Realer JANS-Beleg:
  Bestellung R694081564 (3D-Situationsmodell) erfolgreich abgewickelt (Registrierung bestaetigt →
  Bestellbestaetigung → "bereit zum Download"). **Praxis-Lehre:** eine parallele Bestellung
  desselben AV-Datensatzes ueber das **nationale** Portal `geodienste.ch` wurde vom Kanton LU ohne
  Begruendung abgelehnt ("Bemerkung des Datenbereitstellers zur Ablehnung: keine", 03.06.2024) —
  fuer Kt. LU ist der **kantonseigene Geodatenshop der zuverlaessigere Weg**, nicht `geodienste.ch`.
  Stadt Luzern zusaetzlich mit eigenem Gemeinde-GIS (Baugesuchsverwaltung, Nutzungsplan, Leitungen,
  Grundbuchplan) analog zu `geoglatt.ch` (siehe unten).
- **Kt. Bern — be-geo.ch / be_map.apps.be.ch**: kantonales Geoportal, punktuell fuer ein
  Einzelprojekt (Schloss Muenchenwiler) genutzt, keine JANS-Standardnutzung dokumentiert.
- **`geoglatt.ch`** — regionales Gemeinde-GIS fuer mehrere ZH-Gemeinden (Beleg: Maur, Zonenplan.pdf),
  analog zu kommunalen GIS-Portalen wie sie z.B. auch Stadt Luzern fuehrt — liefert i.d.R. denselben
  Zonenplan/dieselbe Nutzungsplanung wie `maps.zh.ch`, aber mit gemeindespezifischer Kartenoberflaeche
  und teils zusaetzlichen kommunalen Layern (Werkleitungen, Verkehr). Kein Ersatz fuer den
  kantonalen OGD-WFS-Weg ([[kartenportale-zonenplan-zh]]), sondern eine alternative
  Benutzeroberflaeche fuer dieselben bzw. ergaenzende Daten — bei ZH-Gemeinden mit eigenem
  Portal (Erkennbar am Gemeindenamen in der URL) zusaetzlich pruefen, ob dort kommunale
  Zusatzinformationen (z.B. Werkleitungen) verfuegbar sind, die der kantonale WFS nicht fuehrt.

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
- **Formeller Behoerdenweg (Grundbuchauszug) — Abgrenzung zur Selbstbedienungs-Eigentumsabfrage
  (Run 27):** die A5-Eigentumsabfrage oben liefert nur eine **nicht rechtsverbindliche**
  Kurzauskunft (Eigentuemer/Adresse/Eigentumsform). Ein **rechtsverbindlicher, beglaubigter
  Grundbuchauszug** (z.B. fuer Beseitigungsrevers-/Mehrwertrevers-Eintraege, → [[recht-norm-dispensrecht]]
  Abschnitt «Revers statt Dispens») wird beim **oertlich zustaendigen Notariat** bestellt — in
  Kt. ZH sind Notariat, Grundbuchamt und Konkursamt **organisatorisch zusammengelegt** und nach
  Stadtquartier/Bezirk aufgeteilt (z.B. «Notariat, Grundbuchamt und Konkursamt Hoengg-Zuerich»
  ist zustaendig fuer Stadtquartier Hoengg + die Gemeinden Oberengstringen/Unterengstringen/
  Regensdorf/Weiningen). Weg: `notariate-zh.ch` → Suche «Waehlen Sie Ihr Notariat» nach PLZ/
  Ortschaft/Quartier/Strasse → zustaendiges Amt mit Adresse/Oeffnungszeiten/Kontaktformular.
  **Termine nur auf telefonische Voranmeldung**, ausser fuer Beglaubigungen, eidesstattliche
  Erklaerungen und Buergschaften (dort Vorsprache ohne Termin moeglich); als Legitimation gelten
  amtliche Ausweise (Pass, ID, Auslaenderausweis — **kein** Fuehrerausweis). Quelle: PL-01-Ordner
  `KtZH Zuerich/_Grundbuchamt/` (230301_Grundbuchamt.docx + 3 Screenshots, Fallbeispiel Notariat
  Hoengg-Zuerich, Frankentalerstrasse 3, 8049 Zuerich). Status `emerging` — nur an einem
  einzelnen Notariat (Hoengg) belegt; der Ablauf (Portal-Suche → oertlich zustaendiges Amt →
  telefonische Terminvereinbarung) ist aber strukturell auf alle ZH-Notariate uebertragbar, da
  `notariate-zh.ch` fuer den gesamten Kanton dieselbe Suchmaske nutzt.
