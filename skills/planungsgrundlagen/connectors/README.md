# Geo-Connectoren — Planungsgrundlagen

Beschaffen amtliche Geodaten zu einer Parzelle/Adresse. Standalone Node-Scripts (Node 18+,
globales `fetch`). Keine API-Keys noetig fuer EGRID/OEREB.

| Connector | Kanton | Endpunkt | Besonderheit |
|---|---|---|---|
| `geo-zh.mjs` | ZH (+SZ-Direktbezug per EGRID) | `maps.zh.ch/oereb/v2/...` | OEREB; Server liefert JANS-Dateinamen |
| `geo-sz.mjs` | **SZ** | `map.geo.sz.ch/oereb/extract/pdf` | **Parzellensuche** + eigene Umbenennung; Adress-HNr-Warnung |
| `geoshop-zh.mjs` | ZH | `geoservices.zh.ch/geoshopapi/v1` | **Geodatenshop-Bestellungen** (asynchron): amtliche Vermessung/Grundstueckkataster als DXF u.v.m. |

Fuer den Kanton Schwyz **immer `geo-sz.mjs`** verwenden (siehe Skill `oereb-schwyz`): die
Parzellensuche ist eindeutig und vermeidet die Nachbarparzellen-Falle der Adress-Geokodierung.

---

## geo-zh.mjs (Kt. ZH)

## Validierte Kette

```
Adresse  --(api3.geo.admin.ch SearchServer)-->  Koordinate LV95
Koordinate  --(identify ch.swisstopo-vd.amtliche-vermessung)-->  EGRID + Parzelle + BFS
EGRID  --(maps.zh.ch/oereb/v2/extract/pdf.pdf?EGRID=)-->  OEREB-Auszug (PDF)
```

Quelle der OEREB-URL: Fachstelle GIS Kt. ZH (Hannah Gies) — **kein Login noetig**.

## Aufrufe

```bash
# Nur EGRID + Parzelleninfo (maschinenlesbar)
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --json

# OEREB-Auszug ziehen und in mehrere Ordner ablegen
node geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb \
  --out "/pfad/PL - 01 Kartenportale/OEREB-Auszug" \
  --out "/pfad/2621 Giebelweg 12/01_Plaene/99 Plangrundlage"

# Direkt per bekanntem EGRID
node geo-zh.mjs --egrid CH879777718909 --oereb --out "/pfad/Ziel"

# Zusatz-Produkte vom Bund (login-frei): Hoehe, Orthofoto, DTM, Bauzonen
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" \
  --produkt height,orthofoto,dtm,bauzonen --out "/pfad/PL - 01 Kartenportale" --json
# + --download laedt bei orthofoto/dtm zusaetzlich die hoechstaufgeloeste GeoTIFF-Kachel
```

## Flags

| Flag | Bedeutung |
|---|---|
| `--adresse <text>` | "Strasse Nr Ort" — Ort erhoeht die Treffsicherheit |
| `--plz <nnnn>` | optional, schaerft die Adresssuche |
| `--egrid <CH…>` | EGRID direkt setzen (ueberspringt Geocoding/Identify) |
| `--oereb` | OEREB-Auszug als PDF herunterladen |
| `--produkt <liste>` | Bund-Geodaten (Komma-Liste): `height`,`orthofoto`,`dtm`,`bauzonen` — brauchen Koordinate, also `--adresse` (nicht EGRID-only). Belege: `[[kartenportale-bund-geodaten]]` |
| `--download` | bei `orthofoto`/`dtm` die hoechstaufgeloeste Kachel je Jahrgang laden (GeoTIFF, gross) |
| `--out <dir>` | Zielordner (mehrfach moeglich) |
| `--kanton <zh>` | OEREB-Service-Kanton (default: aus BFS abgeleitet) |
| `--json` / `--quiet` | Ausgabesteuerung |

**Produkt-Endpunkte (validiert 2026-06-10, Kat. 3338 / EGRID CH879777718909):**
`height` → `api3.geo.admin.ch/rest/services/height` (549.1 m) · `orthofoto` → STAC
`ch.swisstopo.swissimage-dop10` (Jahrgaenge 2019/2022/2025, 0.1+2 m) · `dtm` → STAC
`ch.swisstopo.swissalti3d` (0.5+2 m, +xyz) · `bauzonen` → WMS `ch.are.bauzonen` PNG
(Achtung WMS 1.3.0 + EPSG:2056 = Achse **N,E**).

## Dateinamen-Konvention

Der ZH-Server liefert via `content-disposition` bereits den JANS-Standardnamen:
`Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf` (z.B. `Oereb-Auszug_136_3338_2026-06-05.pdf`).
Der Connector uebernimmt diesen Namen unveraendert.

### Grenzen / TODO (geo-zh.mjs)

- ZH validiert; SZ als EGRID-Direktbezug hinterlegt (fuer SZ-Parzellensuche `geo-sz.mjs`).
  Weitere Kantone in `OEREB_SERVICE` ergaenzen, sobald gebraucht.
- ✓ Hoehe/Orthofoto/DTM/Bauzonen via `--produkt` umgesetzt (2026-06-10, geo.admin-Endpunkte).
  **Offen:** rechtsverbindlicher kommunaler ZH-Zonenplan-WMS — `wms.zh.ch` = HTTP 401
  (login-/Referer-geschuetzt); bis dahin Grundnutzung aus dem OEREB-Auszug.
- EGRID wird **nie erfunden**: bei 0 Treffern bricht der Connector ab (Rule
  `identifikatoren-verifizieren`).

---

## geo-sz.mjs (Kt. SZ)

Validierte Kette (Fall 2304 Reckholdern, 07.06.2026):

```
Gemeinde+Nr  --(api3.geo.admin.ch SearchServer, origins=parcel, SZ-BFS-Filter)-->  EGRID
EGRID        --(map.geo.sz.ch/oereb/extract/pdf?EGRID=)-->                          OEREB-PDF
```

```bash
# Empfohlen: per Parzellennummer (eindeutig)
node geo-sz.mjs --parzelle "Wangen 25" --oereb \
  --out "/pfad/2304 Reckholdern/01_Plaene/98_Grundlagen/KTSC_GIS" \
  --out "/pfad/PL - 01 Kartenportale/OEREB-Auszug"

# Direkt per EGRID
node geo-sz.mjs --egrid CH379377805305 --oereb --out "/pfad/Ziel"

# Fallback per Adresse (warnt, wenn Hausnummer unscharf -> Nachbarparzellen-Gefahr)
node geo-sz.mjs --adresse "Bahnhofstrasse 27 Wangen" --plz 8855 --json
```

| Flag | Bedeutung |
|---|---|
| `--parzelle "<Gemeinde> <Nr>"` | empfohlen — eindeutige Parzellensuche (SZ-BFS 1301..1373) |
| `--gemeinde <name> --nr <n>` | gleiche Suche, getrennt |
| `--egrid <CH…>` | EGRID direkt setzen |
| `--adresse <text>` / `--plz <nnnn>` | Fallback ueber Geokodierung (HNr-Warnung) |
| `--oereb` / `--out <dir>` | PDF ziehen / Zielordner (mehrfach) |
| `--json` / `--quiet` | Ausgabesteuerung |

Dateiname: `Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf` (Connector benennt selbst um, da
der SZ-Server nur `JJJJMMTThhmmss_extract.pdf` liefert).

**Fallgrube Adresse ≠ Parzelle:** "Bahnhofstrasse 27 Wangen" -> faelschlich Parzelle 193
statt 25. Darum fuer SZ die Parzellensuche bevorzugen; EGRID nie erfinden
(`identifikatoren-verifizieren`).

---

## geoshop-zh.mjs (Kt. ZH — Geodatenshop/Datenbezug)

Automatisiert den **Geodatenshop-Bezug** (das, was bisher manuell im GIS-Browser unter
"Datenbezug" bestellt wurde) ueber die offizielle, **login-freie REST-API**:

```
GET  geoservices.zh.ch/geoshopapi/v1/products              Produkte + Formate + Gemeinden
POST geoservices.zh.ch/geoshopapi/v1/orders                Bestellung (asynchron, Queue)
GET  geoservices.zh.ch/geoshopapi/v1/orders/<id>           Status (QUEUED/WORKING/SUCCESS)
GET  geoservices.zh.ch/geoshopapi/v1/orders/<id>/download  Liefer-Zip (Daten + Lieferschein.pdf)
```

Doku: zh.ch `rest_schnittstelle_ogd_interface.pdf` (REST API v1.2.0). Validiert 11.06.2026
(Langnau am Albis, BFS 0136).

**JANS-Standardfall Grundstueckkataster:** Produkt **10016** "Amtliche Vermessung -
Datenmodell ZH (Standard) (OGD)" als Format **25 = DXF** — Lieferung
`<bfs>-<gemeinde>-gds.dxf` + `Lieferschein.pdf` (identisch zu den manuellen Bezuegen auf
SharePoint `PL - 01 Kartenportale/Grundstueckkataster/`). **DWG bietet der Shop nicht an** —
DXF ist das offizielle CAD-Austauschformat (GEOBAU/SN 612 020) und oeffnet in jedem CAD.

```bash
# Grundstueckkataster (AV-DXF) fuer eine ganze Gemeinde -> direkt in den SharePoint-Ordner
node geoshop-zh.mjs --gemeinde "Langnau am Albis" \
  --out ".../PL - 01 Kartenportale/Grundstueckkataster/Langnau a Albis"

# dito per BFS-Nr oder fuer einzelne Parzelle(n) per EGRID
node geoshop-zh.mjs --bfs 136 --out "/pfad"
node geoshop-zh.mjs --egrid CH879777718909 --out "/pfad"

# anderes Produkt/Format; Katalog ansehen
node geoshop-zh.mjs --gemeinde Maur --produkt 10016 --format shp --out "/pfad"
node geoshop-zh.mjs --list --filter vermessung

# abgebrochene/laufende Bestellung spaeter abholen (IDs ~1 Woche gueltig)
node geoshop-zh.mjs --order <order-id> --out "/pfad"
```

| Flag | Bedeutung |
|---|---|
| `--gemeinde <name>` | ganze Gemeinde (INDIRECT/COMMUNE); 0/mehrdeutige Treffer = Abbruch |
| `--bfs <nnn>` | Gemeinde per BFS-Nr |
| `--egrid <CH...>` | einzelne Parzelle(n), Komma-Liste moeglich (INDIRECT/PARCEL) |
| `--produkt <id>` | default 10016 (AV Datenmodell ZH) — weitere via `--list` |
| `--format <name\|id>` | default `dxf` (25); `dwg` wird auf DXF gemappt (mit Hinweis) |
| `--email <adr>` | Liefer-Mail (default rj@raphaeljans.ch) |
| `--out <dir>` | Zielordner (mehrfach); Zip wird entpackt UND behalten (`--no-unzip` schaltet ab) |
| `--timeout <s>` | max. Polling-Wartezeit (default 1800) |
| `--order <id>` | bestehende Bestellung weiterverfolgen statt neu bestellen |
| `--json` / `--quiet` | Ausgabesteuerung |

**Grenzen:** Raster-/LAZ-Produkte gehen nicht fuer ganze Gemeinden (nur DIRECT-Perimeter
< 5 km2 oder 1 Parzelle; Ausnahme Produkt 103 Raster-Uebersichtsplan). Bestell-IDs werden
serverseitig nach ~1 Woche geloescht.
