---
title: Baulinien & Abstandslinien Kt. ZH — login-frei als Vektor (OEREB-Layer via OGD-WFS)
status: established
last_updated: 2026-06-24
sources:
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + GetFeature (GeoJSON, EPSG:2056) — Stand 06/2026
  - OEREB-Kataster vereinfachtes Datenmodell ZH, Datensaetze 0150/0152/0153/0158/0185
  - Benchmark Connector geo-zh.mjs --produkt baulinien, Langnau a.A. Kat. 3338 + Seuzach Kat. 2304, 2026-06-24
links: [[kartenportale-zonenplan-zh]] [[kartenportale-bund-geodaten]] [[kartenportale-oereb-egrid-bezug]] [[kartenportale-geoportale-uebersicht]]
---

# Baulinien & Abstandslinien Kt. ZH — login-frei

Loest die Luecke **K5**: die **Baulinien und Abstandslinien** (oeffentlich-rechtliche
Eigentumsbeschraenkungen, die das Baufeld beschneiden) einer ZH-Parzelle als **login-freier
Vektor** — ueber denselben **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS`, der schon die Grundnutzung
([[kartenportale-zonenplan-zh]]) liefert. Das ist die Datengrundlage, die der Agent
`baulinien-analyst` braucht, um das **oeffentlich-rechtliche Baufeld** zu bestimmen (Skill
`machbarkeit`).

> Warum nicht aus dem OEREB-PDF? Der PDF nennt die Linien nur als Thema/Verweis. Der OGD-WFS
> liefert die **Geometrie + Typ + Zweck + Rechtsstatus** strukturiert — man kann den Abstand zur
> Parzellengrenze tatsaechlich rechnen, statt ihn aus dem Plan abzulesen.

## Layer (rechtskraeftig `_l/_f`, je mit `_proj`-Pendant)

| Datensatz | Layer (TYPENAMES) | Inhalt | Geometrie |
|---|---|---|---|
| **0158** | `ms:ogd-0158_arv_basis_abstandslinie_baulinie_l` | Kommunale **Verkehrsbaulinien** (158.1) | Linie |
| **0152** | `ms:ogd-0152_arv_basis_abstandslinie_wald_l` | **Waldabstandslinien** (152.1) | Linie |
| **0153** | `ms:ogd-0153_arv_basis_abstandslinie_gewaesser_l` | **Gewaesserabstandslinien** (153.1) | Linie |
| **0150** | `ms:ogd-0150_arv_basis_abstandslinie_waldgrenze_l` | Statische **Waldgrenze** (150.1) | Linie |
| **0185** | `ms:ogd-0185_arv_basis_gewaesserraum_f` | **Gewaesserraum**-Flaeche (185.1) | Flaeche |

Jeder Layer hat ein **`..._proj_l/_f`** (projektiert/in Revision; bei Gewaesserabstand heisst der
proj-Layer abweichend `ms:ogd-0153_giszhpub_…_proj_l`, beim Bauliniendienst
`ms:ogd-0158_…_baulinie_proj_l`). Fuer den Vorher/Nachher-Vergleich beide abfragen — analog zur
Grundnutzung.

## Punktabfrage — wichtiger Unterschied zur Grundnutzung: groesserer Radius

Linien liegen **neben** der Parzelle (nicht am abgefragten Gebaeudepunkt). Die ±2-m-Mini-BBOX der
Grundnutzung greift hier ins Leere → man braucht ein **groesseres Fenster** (default **±150 m**):

```
GET https://maps.zh.ch/wfs/OGDZHWFS
    ?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature
    &TYPENAMES=ms:ogd-0158_arv_basis_abstandslinie_baulinie_l
    &SRSNAME=urn:ogc:def:crs:EPSG::2056
    &BBOX=<E-150>,<N-150>,<E+150>,<N+150>,urn:ogc:def:crs:EPSG::2056
    &COUNT=10&OUTPUTFORMAT=geojson
```

Gelieferte properties (je Layer leicht anders, Connector normalisiert auf `typ/zweck/bemerkung/
rechtsstatus`):
- **Baulinie 0158:** `typ_txt` (z.B. `Baulinie.Verkehr`), `zweck_txt`, `wirksamkeit`, `gemeindename`.
- **Wald-/Gewaesserabstand 0152/0153:** `typ_txt`, `typ_bemerkungen` (oft die **Distanz** in m),
  `festsetzung_txt`/`genehmigung_txt`/`inkraftsetzung_txt`.
- **Waldgrenze 0150:** `typ`, `art_txt`, `inkraftsetzung_txt`.
- **Gewaesserraum 0185:** `gewaesserraumfestlegung_txt`, `rechtsstatus_txt`, `verfahren_txt`.

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs --produkt baulinien` (braucht **Koordinate** →
`--adresse`), Radius via `--radius <m>` (default 150):
```bash
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --produkt baulinien
# -> baulinien (±150m): 7 Baulinie · 1 Waldgrenze
node geo-zh.mjs --adresse "<Adr>" --produkt baulinien --radius 80 --out "/pfad/PL-01"
# legt Baulinien-ZH_<BFS>_<Parzelle>_<JJJJ-MM-TT>.json ab
```
Im JSON unter `produkte.baulinien` (`baulinie[]`, `wald[]`, `gewaesser[]`, `waldgrenze[]`,
`gewaesserraum[]`, `treffer`, `radius_m`).

## Benchmarks (validiert 2026-06-24)

- **Langnau a.A.**, Giebelweg 12, Kat. 3338 (BFS 136), ±150 m: **7 Verkehrsbaulinien** (typ
  `Baulinie.Verkehr`) + **1 Waldgrenze**; keine Wald-/Gewaesserabstandslinie. (Projekt 2621)
- **Seuzach**, Kirchgasse 2, Kat. 2304 (BFS 227), ±150 m: **10 Verkehrsbaulinien** (dichtes
  Ortskern-Strassennetz). Beleg, dass der Radius im bebauten Gebiet ausreicht.
- Wald-/Gewaesserabstand 0152/0153/0185 kantonsweit als Layer validiert (GetFeature liefert
  Features); an einer wald-/gewaesserfernen Parzelle erwartungsgemaess 0 Treffer.

## Grenzen / offen

- Nur **Kt. ZH**. Andere Kantone: eigener Geodienst (SZ → `geo-sz.mjs` / `oereb-schwyz`).
- ±150 m ist eine **Heuristik** — bei sehr grossen/laenglichen Parzellen ggf. erhoehen (`--radius`).
  Der Connector misst (noch) **nicht** den senkrechten Abstand Linie↔Parzellengrenze; das macht
  der Agent `baulinien-analyst` mit der Parzellengeometrie (Kataster → [[kartenportale-geoportale-uebersicht]]).
- **Staatsstrassen-Baulinien** (kantonal, TBA) koennen in einem eigenen Datensatz liegen; 0158 ist
  die **kommunale** Verkehrsbaulinie. Bei Projekten an Kantonsstrassen zusaetzlich pruefen.
- proj-Layer der Abstandslinien noch nicht an realem Revisionsfall validiert (analog A6 Grundnutzung).
