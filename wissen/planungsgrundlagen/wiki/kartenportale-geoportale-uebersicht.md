---
title: Geoportale — welches Portal liefert was
status: established
last_updated: 2026-06-11
sources: [PL - 01 Kartenportale (SharePoint), api3/data/wms.geo.admin.ch (06/2026), maps.zh.ch, geodienste.ch, geoservices.zh.ch geoshopapi (zh.ch rest_schnittstelle_ogd_interface.pdf)]
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-zonenplan-zh]]
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
| `maps.zh.ch/wfs/OGDZHWFS` | Kt. ZH | **OGD-WFS (GeoJSON, login-frei):** Grundnutzung/Zonenplan 0156, ES Laerm 0154, ueberlagernd 0155, Baulinien 0158 — Connector `--produkt zonenplan` | **nein** |
| `geoservices.zh.ch/geoshopapi` | Kt. ZH | **Geodatenshop-REST-API**: AV/Grundstueckkataster (DXF), Hoehenmodelle, LIDAR u.v.m. je Gemeinde/Parzelle — Connector `geoshop-zh.mjs` | **nein** |
| `geodienste.ch` | CH (kantonsweise) | OGD-Downloads amtl. Vermessung (INTERLIS ganzer Kanton direkt; DXF-GEOBAU nur Formular), OEREB-Abstandslinien | tlw. Account |
| `geoportal.ch` | div. Gemeinden (SZ/ZG…) | kommunale GIS (Einsiedeln, Oberaegeri, Wald…) | tlw. |
| `cadastre.ch` | CH | Cadastralinfo / Grundstueckinformationen | nein |
| `swisstopo.admin.ch` | CH | Kartenwerke, Hoehenmodelle, Geodaten-Shop | tlw. |
| `geoshop.lisag.ch` | LU/Region | Datenbezug amtl. Vermessung | Account |
| ObjektwesenZH | Kt. ZH | Eigentumsabfrage (Objektwesen) per EGRID | — |

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
- **Baulinien / Abstandslinien** → OEREB-Kataster (rechtskraeftige, je Parzelle als
  betroffen/nicht betroffen) + kommunale Baulinienplaene. **Als Vektor login-frei** ueber den
  ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` (GeoJSON, EPSG:2056), Datensatz 0158
  (ARV Abstandslinien/Baulinien): Layer `ms:ogd-0158_arv_basis_abstandslinie_baulinie_l`
  (rechtskraeftig) **und** `ms:ogd-0158_arv_basis_abstandslinie_baulinie_proj_l`
  (**projektierte/geplante** Baulinien — entgegen verbreiteter Annahme also doch als
  Vektoren verfuegbar). Abfrage je Ort via BBOX-Parameter; Attribut `typ_txt`
  (z.B. `Baulinie.Verkehr`). Validiert 2026-06-11 am Fall Giebelweg 12 Langnau a.A.
  (EGRID CH879777718909, Parzelle 3338, BFS 136): Parzelle in allen 5 OEREB-
  Baulinien-Themen «nicht betroffen»; rechtskraeftige Verkehrsbaulinien in der
  Umgebung vorhanden, projektierte im 400-m-Fenster keine. **Grenze:** Linien, die
  erst im Festsetzungsverfahren sind (oeffentliche Auflage), erscheinen u.U. noch
  nicht im proj-Layer — dann nur Gemeinde/Tiefbauamt (Auflageakten, Amtsblatt).

## Offen (→ QUESTIONS)
- ~~A2: kommunaler ZH-Zonenplan login-frei~~ **✓ geloest 2026-06-16** via OGD-WFS 0156
  → [[kartenportale-zonenplan-zh]].
- A1/A7: Nicht-ZH-Kantone — SZ-OEREB ist via `geo-sz.mjs` geloest (siehe Skill `oereb-schwyz`);
  SZ-Zonen-WFS noch nicht kartiert.
- A5: Eigentumsabfrage ObjektwesenZH per EGRID (Ablauf/Automatisierbarkeit).
