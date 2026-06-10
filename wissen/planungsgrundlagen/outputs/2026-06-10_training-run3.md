# Trainings-Lauf 3 — KB Planungsgrundlagen

- **Datum:** 2026-06-10
- **Schwerpunkt-Domaene:** **Kartenportale (PL-01)** — bewusst gewaehlt statt strikter Rotation
  (waere Brandschutz gewesen). Begruendung: Kartenportale/Energie sind laut Auftrag Prioritaet
  («die zwei echten Luecken»), Run 2 markierte K2/Connector als «die echte Tooling-Luecke», und
  der Connector-Schritt (testbares Deliverable) gilt nur fuer Kartenportale. Brandschutz ist
  ueberwiegend Verweis auf Skill `brandschutz` → geringerer Compounding-Wert.
- **Connector-Schritt:** ja — `geo-zh.mjs` um `--produkt` erweitert + live getestet.

## Ausgangslage
Der Connector konnte bisher nur Adresse→EGRID→OEREB. Die Geodaten, die der OEREB NICHT enthaelt
(Gelaendehoehe, Luftbild, DTM, Bauzonen-Uebersicht), mussten von Hand geholt werden. Ziel:
diese Endpunkte login-frei belegen, im Connector verankern und an einer realen Parzelle testen.

## Bearbeitete Selbstfragen (curriculum/QUESTIONS)
- **K3 / A3 — Hoehenmodell + Orthofoto je Parzelle** → vier Bund-Endpunkte gefunden, alle live
  getestet an **Kat. 3338 Langnau a.A. (EGRID CH879777718909, E 2682864.25 / N 1238219.125)**:
  - Punkthoehe swissALTI3D: `api3.geo.admin.ch/rest/services/height?...&sr=2056` → **549.1 m**.
  - Orthofoto: STAC `ch.swisstopo.swissimage-dop10` → Jahrgaenge **2019/2022/2025**, je 0.1 m + 2 m.
  - DTM: STAC `ch.swisstopo.swissalti3d` → 0.5 m + 2 m + Punktwolke `.xyz.zip`.
- **K2 / A2 — Zonenplan/BZO** → **teilweise**: bundesweit harmonisierte **Bauzonen
  `ch.are.bauzonen`** via WMS-GetMap als PNG validiert (1000×1000). Rechtsverbindliche kommunale
  Grundnutzung/BZO steckt im **OEREB-Auszug**. Login-freier kommunaler ZH-Zonenplan-WMS bleibt
  **offen** (`wms.zh.ch` = HTTP 401 trotz Browser-Header/Referer; geodienste.ch-Nutzungsplanung-
  Pfad nicht getroffen).
- **E1 — Connector `--produkt`** → implementiert: `height,orthofoto,dtm,bauzonen` (+`--download`),
  end-to-end getestet inkl. graceful skip bei EGRID-only (keine Koordinate → kein Crash, Hinweis).
- **K7 / A1** nebenbei geschlossen: SZ-OEREB ist via `geo-sz.mjs`/Skill `oereb-schwyz` geloest.

## Geaendert
- **NEU** `wiki/kartenportale-bund-geodaten.md` (**established**) — vier validierte Endpunkte mit
  Aufruf, Benchmark, Connector-Doku, Achsen-Falle WMS 1.3.0/EPSG:2056 (N,E), Abgrenzung OEREB.
- `skills/planungsgrundlagen/connectors/geo-zh.mjs` — `--produkt`/`--download`, `GEO_ADMIN`-
  Endpunkte, STAC-Asset-Auswahl (kleinste GSD), lon/lat im Geocoding, `coord`/`produkte` im JSON.
- `connectors/README.md` — Produkt-Sektion + Endpunkt-Tabelle; TODO «erweiterbar» auf ✓ gesetzt.
- `wiki/kartenportale-geoportale-uebersicht.md` — emerging→**established**, belegte Kernprodukte.
- Register: `INDEX.md` (neuer Artikel, Status), `training/curriculum.md` (K3/K7 [x], K2 [~]),
  `wiki/QUESTIONS.md` (A3/A1/E1 ✓, A2 ~, neu E2/E3), `raw/_INGESTED.md` (PL-01 + geo.admin).

## Belegte Endpunkte (neu, alle live getestet 2026-06-10)
- `https://api3.geo.admin.ch/rest/services/height?easting=<E>&northing=<N>&sr=2056`
- `https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissimage-dop10/items?bbox=lon,lat,lon,lat`
- `https://data.geo.admin.ch/api/stac/v0.9/collections/ch.swisstopo.swissalti3d/items?bbox=...`
- `https://wms.geo.admin.ch/?...&LAYERS=ch.are.bauzonen&CRS=EPSG:2056&BBOX=<minN,minE,maxN,maxE>&FORMAT=image/png`

## Naechster Lauf
Rotation → **Brandschutz (PL-03)** abarbeiten (C1: duenner Verweis-Artikel auf Skill `brandschutz`
vs. PL-03-Spezifika; B2 Brandschutznachweis-Vorlagen; B3 VKF-2015-Struktur). Danach wieder
**Kartenportale**: A4 Situationsplan amtl. Vermessung (geodienste OGD), und der harte Brocken
**A2/E2** — login-freier kommunaler ZH-Zonenplan-WMS (wms.zh.ch-401 umgehen / korrekten
geodienste.ch-Nutzungsplanung-Pfad finden). Energie-Restpunkte D4 (EN-ZH-Fachformulare) bleiben offen.
