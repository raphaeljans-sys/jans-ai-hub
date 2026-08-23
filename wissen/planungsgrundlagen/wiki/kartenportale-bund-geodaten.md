---
title: Bund-Geodaten je Parzelle — Höhe, Orthofoto, DTM, Bauzonen (geo.admin.ch)
status: established
last_updated: 2026-08-23
sources:
  - api3.geo.admin.ch (SearchServer, identify, height) — nachgemessen 23.08.2026
  - data.geo.admin.ch STAC v0.9 (swissimage-dop10, swissalti3d) — nachgemessen 23.08.2026
  - wms.geo.admin.ch WMS 1.3.0, Layer ch.are.bauzonen — nachgemessen 23.08.2026 (GetMap + GetFeatureInfo)
  - Benchmark-Test Connector geo-zh.mjs, Parzelle Langnau a.A. 3338 (EGRID CH879777718909), 2026-06-10, funktional wiederholt 2026-08-23
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-geoportale-uebersicht]]
---

# Bund-Geodaten je Parzelle — Höhe, Orthofoto, DTM, Bauzonen

Login-freie Bezugswege für die Geodaten, die der **OEREB-Auszug NICHT enthält** und die eine
Studie regelmässig braucht: Geländehöhe, Luftbild, digitales Terrainmodell und die
(bundesweit harmonisierte) Bauzone. Alle vier Endpunkte sind am 2026-06-10 mit der realen
Testparzelle **Langnau a.A. Kat. 3338 (EGRID CH879777718909, E 2682864.25 / N 1238219.125)**
validiert und im Connector ``skills/planungsgrundlagen/connectors/geo-zh.mjs`` hinterlegt
(Flag `--produkt`). Ergänzt die OEREB-/EGRID-Kette aus [[kartenportale-oereb-egrid-bezug]].

> Koordinatenbezug: alle Endpunkte arbeiten in **LV95 / EPSG:2056** (E=easting/Rechtswert,
> N=northing/Hochwert). STAC braucht zusätzlich **WGS84 lon/lat** (liefert der SearchServer
> als `attrs.lon` / `attrs.lat` gratis mit).

## 1 · Punkthöhe (swissALTI3D)

```
GET https://api3.geo.admin.ch/rest/services/height?easting=<E>&northing=<N>&sr=2056
-> {"height":"549.1"}        # m ue.M., swissALTI3D-interpoliert
```
Validiert: 549.1 m an Kat. 3338. Schnell, keine Datei — für Höhenkote/Hangneigungs-Plausibilitaet.

## 2 · Orthofoto SWISSIMAGE-DOP10 (STAC)

```
GET https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissimage-dop10/items
    ?bbox=<lon-d>,<lat-d>,<lon+d>,<lat+d>          # d ~ 0.0008 Grad ~ kleiner Parzellenradius
-> features[].assets : GeoTIFF-URLs
```
Pro Kachelgebiet **mehrere Jahrgänge** (Benchmark Kat. 3338: 2019, 2022, **2025**) und je Jahrgang
zwei Auflösungen: **0.1 m** (`*_0.1_2056.tif`) und **2 m** (`*_2_2056.tif`). Die 0.1-m-GeoTIFF ist
gross (Hunderte MB) → nur bei Bedarf laden (`--download`). Asset-URL-Schema:
`https://data.geo.admin.ch/ch.swisstopo.swissimage-dop10/<item>/<item>_<gsd>_2056.tif`.

## 3 · Terrainmodell swissALTI3D / DTM (STAC)

```
GET https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissalti3d/items?bbox=...
-> features[].assets : *_0.5_2056_5728.tif | *_2_2056_5728.tif | *.xyz.zip
```
Auflösungen **0.5 m** und **2 m**, zusätzlich Punktwolke als `*.xyz.zip`. Benchmark Kat. 3338:
Item `swissalti3d_2020_2682-1238`. Für Schnitte/Aushub/Hangmodellierung.

## 4 · Bauzonen CH harmonisiert (WMS GetMap, PNG)

```
GET https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap
    &LAYERS=ch.are.bauzonen&CRS=EPSG:2056
    &BBOX=<minE>,<minN>,<maxE>,<maxN>             # EPSG:2056 ist als (E,N) definiert
    &WIDTH=1000&HEIGHT=1000&FORMAT=image/png&STYLES=
-> image/png
```
Validiert 23.08.2026 am Benchmark Kat. 3338: 1000×1000-PNG, **28 KB**, 51.8 % Flaeche
`RGBA(255,166,0)` (Wohnzone).

> ⚠ **Berichtigt 23.08.2026 — die Achsenreihenfolge stand hier verkehrt.** Der Artikel verlangte
> bis dahin `BBOX=N,E,N,E` und nannte als Beleg «1000×1000-PNG, ~4 KB». Nachgemessen ist genau
> diese 4-KB-Kachel das Fehlerbild: **1000×1000 RGBA, 3'957 Bytes, zu 100 % transparent** — ein
> leeres Bild. Richtig ist **E,N** (EPSG:2056 ist mit Rechtswert zuerst definiert).
>
> **Der Fehler ist stumm, und das ist das eigentlich Gefaehrliche daran.** Die vertauschte
> Anfrage liefert `HTTP 200`, `Content-Type: image/png` und ein formal gueltiges Bild in der
> bestellten Groesse. Weder Statuscode noch Dateigroesse noch ein Link-Frischecheck schlagen an.
> Auffallen kann es nur, wer den **Inhalt** prueft.
>
> **Unabhaengige Gegenprobe** (`REQUEST=GetFeatureInfo`, `INFO_FORMAT=application/json`, Pixel
> `I=500&J=500`, gleiche BBOX): mit **E,N** kommt das Feature `bfs_no 136`, `name Langnau am
> Albis`, `ch_bez_d Wohnzonen`, `ch_code_hn 11`, `flaeche 40583`, `kt_kz ZH`; mit **N,E** eine
> **leere FeatureCollection**. Damit ist nicht nur belegt, dass die Kachel leer war, sondern
> auch, dass die richtige Reihenfolge die richtige Parzelle trifft.
>
> **Folge im Connector:** `geo-zh.mjs` trug dieselbe vertauschte Reihenfolge
> (`bauzonenMap`, seit 06/2026) und hat mit `--produkt bauzonen` **durchgehend leere PNG
> abgelegt** — mit der Logzeile «bauzonen: … (4 KB)», die wie ein Erfolg aussieht. Korrigiert und
> nachgemessen: derselbe Aufruf liefert jetzt 28 KB mit Zoneninhalt.
>
> **Merksatz fuer jede kuenftige Endpunktpruefung:** eine Kachel, ein PDF oder ein GeoJSON gilt
> erst als geprueft, wenn der **Inhalt** gemessen ist. HTTP-Code und Bytezahl belegen, dass ein
> Server geantwortet hat, nicht dass er das Bestellte geliefert hat. Dieselbe Falle steckte in
> [[kartenportale-zonenplan-zh]] («Achsen unkritisch, weil quadratische BBOX») — auch dort
> gemessen und berichtigt.

> Abgrenzung: `ch.are.bauzonen` ist die **bundesweit harmonisierte Übersichts-Bauzone** (ARE) —
> gut für den Schnellblick. Die **rechtsverbindliche kommunale Grundnutzung/BZO** des Kt. ZH gibt
> es seit 2026-06-16 als **login-freien Vektor** über den ZH-OGD-WFS (Datensatz 0156) — mit
> BMZ/AZ, Höhen, Vollgeschossen, Rechtsstatus → eigener Artikel [[kartenportale-zonenplan-zh]]
> (`--produkt zonenplan`). Der alte WMS-Weg `wms.zh.ch` (HTTP 401) ist damit hinfällig; A2 gelöst.

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
- `--download` lädt bei `orthofoto`/`dtm` zusätzlich die **höchstaufgelöste** Kachel je Jahrgang.
- `bauzonen` wird immer als PNG abgelegt (`Bauzonen-CH_<BFS>_<Parzelle>_<JJJJ-MM-TT>.png`).

## Nachmessung 23.08.2026 (funktional, nicht nur Erreichbarkeit)

Alle vier Endpunkte am selben Benchmark Kat. 3338 erneut abgefragt und die **Nutzdaten** mit der
Dokumentation von 06/2026 verglichen:

| Endpunkt | Messung 23.08.2026 | gegen 06/2026 |
|---|---|---|
| `api3.geo.admin.ch/rest/services/height` | `{"height":"549.1"}` | identisch |
| `api3.../SearchServer` (Adresse) | E 2682864.25 / N 1238219.125 · lon 8.534085 / lat 47.289661 · `featureId 57977_0` | identisch |
| STAC `swissimage-dop10` | 3 Items: **2019 · 2022 · 2025**, je 2 Assets (0.1 m / 2 m) | identisch, **kein neuer Jahrgang** |
| STAC `swissalti3d` | 1 Item `swissalti3d_2020_2682-1238`, **4 Assets**: `_0.5_2056_5728.tif`, `_2_2056_5728.tif` und **je eine `.xyz.zip` zu beiden Aufloesungen** | identisch; die Punktwolke gibt es zu **beiden** Aufloesungen, nicht nur einmal |
| WMS `ch.are.bauzonen` GetMap | 28 KB PNG mit Zoneninhalt — **erst nach der Achsenkorrektur** | Doku war falsch, s. oben |

**STAC v0.9 laeuft weiter, v1 liefert am Benchmark dasselbe.** `data.geo.admin.ch/api/stac/v0.9/`
antwortet `HTTP 200` und meldet sich weiterhin als `stac_version 0.9.0`, ohne Abkuendigungshinweis
im Katalog-Root. Die identische Abfrage unter `…/api/stac/v1/…` liefert **exakt dieselben drei
Items mit denselben IDs**. Der v0.9-Pfad im Connector ist also nicht dringlich, aber **v1 ist der
zukunftssichere Pfad** und ohne Ergebnisunterschied umstellbar — bewusst **nicht** in diesem Lauf
geaendert, weil kein Messwert dafuer spricht und die Umstellung sonst ungeprueft mitliefe.

`geodienste.ch/downloads/av/` antwortet `HTTP 200` ohne Umleitung (Bezugsweg unveraendert,
s. [[kartenportale-geoportale-uebersicht]]).

## Offen
- ~~A2: kommunaler ZH-Zonenplan/BZO login-frei~~ **✓ gelöst 2026-06-16** via ZH-OGD-WFS 0156
  → [[kartenportale-zonenplan-zh]] (`--produkt zonenplan`).
- STAC-`d` (bbox-Radius) ist fix ~0.0008 Grad → bei sehr grossen Parzellen ggf. mehrere
  Nachbarkacheln nötig; aktuell genügt es für Punkt-/Hauskontext.
