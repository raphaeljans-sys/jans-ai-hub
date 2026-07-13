# Kartenportale — SharePoint-Ablage PL-01 (Soll-Struktur)

**Status:** established · **Quelle:** OneDrive-Spiegel der JANS-Bibliothek (verifiziert 11.06.2026)

Die buerointerne Sammlung der Kartenportale/Geodaten liegt auf SharePoint und ist lokal
gespiegelt. Diese Struktur ist **hinterlegt**, damit Claude Ablage-Orte kennt und neue Bezuege
am richtigen Ort einordnet. Verwandt: [[kartenportale-geoportale-uebersicht]] (welches Portal
liefert was), [[kartenportale-bund-geodaten]] (Connector `--produkt`), [[kartenportale-naturgefahren-objektschutz]],
[[kartenportale-werkleitungskataster]].

## Kanonischer Basis-Pfad

```
OneDrive - Freigegebene Bibliotheken – JANS / PL - 01 Kartenportale /
```
Lokal: `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 01 Kartenportale/`
Geschwister-Ordner: `PL - 02_Recht_Norm`, `PL - 03 Brandschutz`, `PL - 04 Energie`.

## Ordner-Landkarte PL-01 Kartenportale

| Ordner | Inhalt / Zweck |
|---|---|
| `CH Schweiz/` | Bundes-Portale: `map.geo.admin.ch`, `swisstopo.admin.ch`, `cadastre.ch`, `geodienste.ch`, `geoportal.ch`, `opendata.swiss`, `bfs.admin.ch`, `geoshop.lisag.ch`, `gisos.bak.admin.ch` |
| `KtZH Zuerich/` | `geodatenshop.zh.ch`, `_Grundbuchamt`, `achtgradost.ch`, `geoglatt.ch` |
| `KtSZ Schwyz/` | `map.geo.sz.ch`, `geoshop.lisag.ch`, `ebau-sz.ch`, `gis.bezirkeinsiedeln.ch`, `ortsplanung.ch`, Gemeinden |
| `KtBE Bern/` | `be-geo.ch`, `map.apps.be.ch` |
| `KtLU Luzern/` | Geoportal, Geodatenshop, Raumdatenpool, Gemeinden |
| **`Hoehenlinie/`** | **Hoehenlinien je Gemeinde** (Maur, Wald) + `_www.geoportal.ch` — zentrale Quelle fuer Topo/Hoehenlinien |
| `Orthofoto/` | Orthofotos je Gemeinde (Luzern, Regensdorf, Thalwil) |
| `Grundstueckkataster/` | Kataster je Gemeinde (Maur, Niederhasli, Regensdorf, Thalwil, Wald ZH, Zuerich, Allgemein) |
| `OEREB-Auszug/` | OEREB-Auszuege + `_Kommunikation` |
| `Eigentumsabfrage Objektwesen/` | Eigentumsabfragen |
| `Werkleitungen/` | `ekz-planauskunft.ch`, `leitungskataster.upc.ch`, `swisscom.ch`, `sunrise.ch` — vertieft in [[kartenportale-werkleitungskataster]] (Run 22) |
| `Objektschutz/` | Naturgefahren je Objekt (Reckholdern, Thalwil) + `_schutz-vor-naturgefahren.ch` — vertieft in [[kartenportale-naturgefahren-objektschutz]] (Run 22) |
| `Baumkataster/`, `Geoshop/`, `Datenformate_Geokartenmaterial/` | Spezialthemen / Formate |

## Topografie & Hoehenlinien — Bezugswege

1. **Amtlich/automatisiert (bevorzugt):** swissALTI3D ueber den Connector
   `connectors/cad/terrain.sh` bzw. `geo-zh.mjs --produkt height,dtm` — login-frei, LV95.
   Punkthoehe + DTM-Kacheln; Vektor-Hoehenlinien via `gdal_contour` (siehe CAD-Connector-README).
2. **Buero-Ablage:** fertige Hoehenlinien-Plaene je Gemeinde liegen unter `Hoehenlinie/<Gemeinde>/`
   und unter `_www.geoportal.ch` (kantonale ZH-Hoehenkurven).
3. **Kantonal interaktiv:** `geoportal.ch` / `geodatenshop.zh.ch` (ZH), `map.geo.sz.ch` (SZ).

## Merksatz
Neue Geodaten **immer** in den passenden PL-01-Unterordner ablegen (Gemeinde-genau, wo vorhanden);
Hoehen/Topo nach `Hoehenlinie/`, Kataster nach `Grundstueckkataster/<Gemeinde>/`.
