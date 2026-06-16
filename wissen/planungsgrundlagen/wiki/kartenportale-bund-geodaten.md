---
title: Bund-Geodaten je Parzelle — Hoehe, Orthofoto, DTM, Bauzonen (geo.admin.ch)
status: established
last_updated: 2026-06-10
sources:
  - api3.geo.admin.ch (SearchServer, identify, height) — Stand 06/2026
  - data.geo.admin.ch STAC v0.9 (swissimage-dop10, swissalti3d) — Stand 06/2026
  - wms.geo.admin.ch WMS 1.3.0, Layer ch.are.bauzonen — Stand 06/2026
  - Benchmark-Test Connector geo-zh.mjs, Parzelle Langnau a.A. 3338 (EGRID CH879777718909), 2026-06-10
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-geoportale-uebersicht]]
---

# Bund-Geodaten je Parzelle — Hoehe, Orthofoto, DTM, Bauzonen

Login-freie Bezugswege fuer die Geodaten, die der **OEREB-Auszug NICHT enthaelt** und die eine
Studie regelmaessig braucht: Gelaendehoehe, Luftbild, digitales Terrainmodell und die
(bundesweit harmonisierte) Bauzone. Alle vier Endpunkte sind am 2026-06-10 mit der realen
Testparzelle **Langnau a.A. Kat. 3338 (EGRID CH879777718909, E 2682864.25 / N 1238219.125)**
validiert und im Connector `[[planungsgrundlagen/connectors/geo-zh.mjs]]` hinterlegt
(Flag `--produkt`). Ergaenzt die OEREB-/EGRID-Kette aus [[kartenportale-oereb-egrid-bezug]].

> Koordinatenbezug: alle Endpunkte arbeiten in **LV95 / EPSG:2056** (E=easting/Rechtswert,
> N=northing/Hochwert). STAC braucht zusaetzlich **WGS84 lon/lat** (liefert der SearchServer
> als `attrs.lon` / `attrs.lat` gratis mit).

## 1 · Punkthoehe (swissALTI3D)

```
GET https://api3.geo.admin.ch/rest/services/height?easting=<E>&northing=<N>&sr=2056
-> {"height":"549.1"}        # m ue.M., swissALTI3D-interpoliert
```
Validiert: 549.1 m an Kat. 3338. Schnell, keine Datei — fuer Hoehenkote/Hangneigungs-Plausibilitaet.

## 2 · Orthofoto SWISSIMAGE-DOP10 (STAC)

```
GET https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissimage-dop10/items
    ?bbox=<lon-d>,<lat-d>,<lon+d>,<lat+d>          # d ~ 0.0008 Grad ~ kleiner Parzellenradius
-> features[].assets : GeoTIFF-URLs
```
Pro Kachelgebiet **mehrere Jahrgaenge** (Benchmark Kat. 3338: 2019, 2022, **2025**) und je Jahrgang
zwei Aufloesungen: **0.1 m** (`*_0.1_2056.tif`) und **2 m** (`*_2_2056.tif`). Die 0.1-m-GeoTIFF ist
gross (Hunderte MB) → nur bei Bedarf laden (`--download`). Asset-URL-Schema:
`https://data.geo.admin.ch/ch.swisstopo.swissimage-dop10/<item>/<item>_<gsd>_2056.tif`.

## 3 · Terrainmodell swissALTI3D / DTM (STAC)

```
GET https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissalti3d/items?bbox=...
-> features[].assets : *_0.5_2056_5728.tif | *_2_2056_5728.tif | *.xyz.zip
```
Aufloesungen **0.5 m** und **2 m**, zusaetzlich Punktwolke als `*.xyz.zip`. Benchmark Kat. 3338:
Item `swissalti3d_2020_2682-1238`. Fuer Schnitte/Aushub/Hangmodellierung.

## 4 · Bauzonen CH harmonisiert (WMS GetMap, PNG)

```
GET https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap
    &LAYERS=ch.are.bauzonen&CRS=EPSG:2056
    &BBOX=<minN>,<minE>,<maxN>,<maxE>             # ACHTUNG WMS 1.3.0 + EPSG:2056 => Achse N,E!
    &WIDTH=1000&HEIGHT=1000&FORMAT=image/png&STYLES=
-> image/png
```
Validiert: 1000×1000-PNG, ~4 KB. **Achsenreihenfolge-Falle:** WMS 1.3.0 mit EPSG:2056 erwartet die
BBOX als **N,E,N,E** (Hoch-/Rechtswert), nicht E,N — sonst kommt eine leere/falsche Kachel.

> Abgrenzung: `ch.are.bauzonen` ist die **bundesweit harmonisierte Uebersichts-Bauzone** (ARE) —
> gut fuer den Schnellblick. Die **rechtsverbindliche kommunale Grundnutzung/BZO** des Kt. ZH gibt
> es seit 2026-06-16 als **login-freien Vektor** ueber den ZH-OGD-WFS (Datensatz 0156) — mit
> BMZ/AZ, Hoehen, Vollgeschossen, Rechtsstatus → eigener Artikel [[kartenportale-zonenplan-zh]]
> (`--produkt zonenplan`). Der alte WMS-Weg `wms.zh.ch` (HTTP 401) ist damit hinfaellig; A2 geloest.

## Connector-Aufruf (Benchmark 2026-06-10)

```bash
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" \
     --produkt height,orthofoto,dtm,bauzonen --out "/pfad/PL-01" --json
# height 549.1 m · 3 Orthofoto-Jahrgaenge · 1 DTM-Item · Bauzonen-PNG abgelegt
```
- `--produkt` akzeptiert eine Komma-Liste `height,orthofoto,dtm,bauzonen`.
- `height/orthofoto/dtm/bauzonen` brauchen eine **Koordinate** → nur mit `--adresse` (EGRID-only
  liefert keine Koordinate; der Connector skippt die Produkte dann mit Hinweis statt zu crashen —
  getestet).
- `--download` laedt bei `orthofoto`/`dtm` zusaetzlich die **hoechstaufgeloeste** Kachel je Jahrgang.
- `bauzonen` wird immer als PNG abgelegt (`Bauzonen-CH_<BFS>_<Parzelle>_<JJJJ-MM-TT>.png`).

## Offen
- ~~A2: kommunaler ZH-Zonenplan/BZO login-frei~~ **✓ geloest 2026-06-16** via ZH-OGD-WFS 0156
  → [[kartenportale-zonenplan-zh]] (`--produkt zonenplan`).
- STAC-`d` (bbox-Radius) ist fix ~0.0008 Grad → bei sehr grossen Parzellen ggf. mehrere
  Nachbarkacheln noetig; aktuell genuegt es fuer Punkt-/Hauskontext.
