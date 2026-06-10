# Geo-Connectoren — Planungsgrundlagen

Beschaffen amtliche Geodaten zu einer Parzelle/Adresse. Standalone Node-Scripts (Node 18+,
globales `fetch`). Keine API-Keys noetig fuer EGRID/OEREB.

| Connector | Kanton | OEREB-Endpunkt | Besonderheit |
|---|---|---|---|
| `geo-zh.mjs` | ZH (+SZ-Direktbezug per EGRID) | `maps.zh.ch/oereb/v2/...` | Server liefert JANS-Dateinamen |
| `geo-sz.mjs` | **SZ** | `map.geo.sz.ch/oereb/extract/pdf` | **Parzellensuche** + eigene Umbenennung; Adress-HNr-Warnung |

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
