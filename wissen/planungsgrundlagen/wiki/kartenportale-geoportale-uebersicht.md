---
title: Geoportale — welches Portal liefert was
status: emerging
last_updated: 2026-06-05
sources: [PL - 01 Kartenportale (SharePoint), map.geo.admin.ch, maps.zh.ch, geodienste.ch]
links: [[kartenportale-oereb-egrid-bezug]]
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

- **OEREB-Auszug** → siehe `[[kartenportale-oereb-egrid-bezug]]`
- **Zonenplan / BZO-Ausschnitt** → maps.zh.ch (ZH) bzw. kommunales GIS
- **Situationsplan amtliche Vermessung** → geodienste.ch OGD / Geoshop
- **Hoehenmodell (DTM) + Orthofoto** → map.geo.admin.ch
- **Baulinien / Abstandslinien** → OEREB-Kataster + kommunale Baulinienplaene

## Offen (→ QUESTIONS)
- Genaue Download-Endpunkte je Produkt (Zonenplan-PDF, DTM-Kachel) automatisierbar machen.
- Nicht-ZH-Kantone (SZ): Portale + OEREB-Service kartieren.
