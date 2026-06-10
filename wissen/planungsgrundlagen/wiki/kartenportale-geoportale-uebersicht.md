---
title: Geoportale — welches Portal liefert was
status: established
last_updated: 2026-06-10
sources: [PL - 01 Kartenportale (SharePoint), api3/data/wms.geo.admin.ch (06/2026), maps.zh.ch, geodienste.ch]
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]]
---

# Geoportale — welches Portal liefert was

Wegweiser durch die in **PL - 01 Kartenportale** gesammelten Portale. Ziel: pro
Grundlagen-Bedarf das richtige Portal/Produkt sofort treffen. (Aufbau-Artikel — wird durch den
Trainings-Loop pro Lauf praezisiert; offene Felder in `wiki/QUESTIONS.md`.)

## Portal → Produkt (Arbeitsstand)

| Portal | Gebiet | Liefert | Login |
|---|---|---|---|
| `map.geo.admin.ch` / api3.geo.admin.ch | CH (Bund) | Orthofoto (SWISSIMAGE), Hoehenmodell (swissALTI3D), Gebaeudekuben (swissBUILDINGS3D), amtl. Vermessung/EGRID, LIDAR | nein |
| `maps.zh.ch` | Kt. ZH | OEREB-Kataster, Zonenplan, Baulinien, kant. Fachdaten | nein (OEREB) |
| `geodienste.ch` | CH (kantonsweise) | OGD-Downloads amtl. Vermessung, OEREB-Abstandslinien | tlw. Account |
| `geoportal.ch` | div. Gemeinden (SZ/ZG…) | kommunale GIS (Einsiedeln, Oberaegeri, Wald…) | tlw. |
| `cadastre.ch` | CH | Cadastralinfo / Grundstueckinformationen | nein |
| `swisstopo.admin.ch` | CH | Kartenwerke, Hoehenmodelle, Geodaten-Shop | tlw. |
| `geoshop.lisag.ch` | LU/Region | Datenbezug amtl. Vermessung | Account |
| ObjektwesenZH | Kt. ZH | Eigentumsabfrage (Objektwesen) per EGRID | — |

## Kernprodukte fuer eine Studie (Checkliste)

- **OEREB-Auszug** (inkl. rechtsverbindliche Grundnutzung/BZO) → `[[kartenportale-oereb-egrid-bezug]]`
- **Punkthoehe / Hoehenmodell (DTM) / Orthofoto / Bauzonen CH** → **belegte Endpunkte + Connector
  `--produkt`** in `[[kartenportale-bund-geodaten]]` (validiert 2026-06-10)
- **Zonenplan / BZO-Ausschnitt (kommunal, rechtsverbindlich)** → im OEREB enthalten; separater
  login-freier ZH-Zonenplan-WMS noch offen (wms.zh.ch = 401, → QUESTIONS A2)
- **Situationsplan amtliche Vermessung** → geodienste.ch OGD / Geoshop (offen, A4)
- **Baulinien / Abstandslinien** → OEREB-Kataster + kommunale Baulinienplaene

## Offen (→ QUESTIONS)
- A2: rechtsverbindlicher kommunaler ZH-Zonenplan-WMS login-frei (wms.zh.ch geschuetzt).
- A4: Situationsplan amtl. Vermessung (geodienste.ch OGD) als Bezugsskript.
- A1/A7: Nicht-ZH-Kantone — SZ-OEREB ist via `geo-sz.mjs` geloest (siehe Skill `oereb-schwyz`).
