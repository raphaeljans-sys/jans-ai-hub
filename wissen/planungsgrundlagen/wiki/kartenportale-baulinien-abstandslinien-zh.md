---
title: Baulinien & Abstandslinien Kt. ZH — login-frei als Vektor (OEREB-Layer via OGD-WFS)
status: established
last_updated: 2026-07-08
sources:
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + GetFeature (GeoJSON, EPSG:2056) — Stand 06/2026
  - OEREB-Kataster vereinfachtes Datenmodell ZH, Datensaetze 0150/0152/0153/0158/0185
  - Benchmark Connector geo-zh.mjs --produkt baulinien, Langnau a.A. Kat. 3338 + Seuzach Kat. 2304, 2026-06-24
  - api3.geo.admin.ch/rest/.../identify returnGeometry=true (Parzellenpolygon Esri-rings, EPSG:2056) — Stand 07/2026
  - Senkrechter-Abstand-Messung (K5-Rest) validiert 2026-07-08, Zweitmethoden-Gegenrechnung Seuzach 29.8 m
links: [[kartenportale-zonenplan-zh]] [[kartenportale-bund-geodaten]] [[kartenportale-oereb-egrid-bezug]] [[kartenportale-geoportale-uebersicht]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
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

## Senkrechter Abstand Linie ↔ Parzellengrenze (K5-Rest, seit 2026-07-08)

Der Connector misst jetzt je Treffer den **senkrechten Abstand in Metern** von der Linie zur
**Parzellengrenze** (`dist_m`) — nicht mehr nur «Linie im Umkreis». Damit weiss der Agent
`baulinien-analyst` sofort, welche Baulinie/Abstandslinie das **Baufeld tatsaechlich beschneidet**,
statt es aus dem Plan abzulesen (Anbindung an `machbarkeit` Typ A / M2).

**Wie es rechnet (login-frei, ohne Zusatz-Abhaengigkeit):**
1. **Parzellenpolygon** aus demselben `identify`-Call, der schon den EGRID liefert — nur mit
   `returnGeometry=true` (Esri-`rings`, EPSG:2056).
2. Distanz = kleinster Segment-zu-Segment-Abstand zwischen **Parzellenring** und **Linien-/
   Flaechen-Geometrie** (Punkt-zu-Segment + Segment-Schnitt-Test, planar in EPSG:2056 → metrisch
   exakt auf lokaler Skala). **`dist_m = 0`** heisst: die Linie **beruehrt/schneidet** die
   Parzelle → baurechtlich unmittelbar bindend.

Ausgabe:
- je Treffer zusaetzliches Feld **`dist_m`** (auf 0.1 m gerundet), die Trefferliste ist **nach
  Abstand aufsteigend sortiert** (naechste Linie zuoberst);
- je Layer **`<layer>_dist_min_m`** (naechster Abstand) + Flag **`gemessen: true`**;
- die Log-Zeile zeigt «naechste X m» je Kategorie.

> **Fenster ≠ Abstand:** Das ±150-m-BBOX filtert Linien um den *Gebaeudepunkt*; `dist_m` misst
> ab der *Parzellengrenze*. Eine Linie im Fenster kann daher > 150 m von der Grenze weg liegen
> (Seuzach-Benchmark bis 184 m) — das ist korrekt, nicht ein Fehler.

Verifikation: unabhaengige Zweitmethode (Vertex-zu-Segment beidseitig) an Seuzach Kat. 2304 →
**29.8 m = 29.8 m** (deckungsgleich mit dem Connector).

## Benchmarks (Abstand gemessen, validiert 2026-07-08)

| Parzelle | ±150-m-Treffer | naechster Abstand (`dist_m`) | Lesart |
|---|---|---|---|
| **Langnau a.A.**, Giebelweg 12, Kat. 3338 (BFS 136, Projekt 2621) | 7 Baulinie + 1 Waldgrenze | Baulinie **116.2 m**, Waldgrenze **105.6 m** | Hanglage, Baufeld nicht durch Baulinie beschnitten |
| **Seuzach**, Kirchgasse 2, Kat. 2304 (BFS 227) | 10 Baulinie | naechste **29.8 m** (dann 38.3 / 60.6 / 89 …) | Ortskern, Baulinie nahe aber nicht bindend |
| **Seuzach**, Dorfstrasse 1 (BFS 227) | 10 Baulinie | naechste **0 m** | Baulinie **liegt auf/durch** die Parzelle → **bindend** |
| **Wetzikon**, Zuercherstrasse 1 (BFS 121) | 10 Baulinie + 2 Gewaesserabstand + 1 Gewaesserraum | Baulinie 111.5 m, **Gewaesserabstand 43.9 m**, Gewaesserraum-Flaeche 45.9 m | belegt, dass auch Wald/Gewaesser/Flaeche gemessen werden |

(Alle validiert 2026-07-08 gegen den Live-OGD-WFS; Baulinien-Zaehlung deckungsgleich mit dem
Benchmark 2026-06-24.) Wald-/Gewaesserabstand 0152/0153/0185: an wald-/gewaesserfernen Parzellen
erwartungsgemaess 0 Treffer.

## Grenzen / offen

- Nur **Kt. ZH**. Andere Kantone: eigener Geodienst (SZ → `geo-sz.mjs` / `oereb-schwyz`).
- ±150 m ist das **Suchfenster** um den Gebaeudepunkt (bei sehr grossen/laenglichen Parzellen ggf.
  `--radius` erhoehen). ✓ **Senkrechter Abstand Linie↔Parzellengrenze jetzt im Connector gerechnet**
  (`dist_m`, seit 2026-07-08) — der Agent `baulinien-analyst` erhaelt den Wert direkt, statt ihn
  aus der Kataster-Geometrie ableiten zu muessen.
- **Staatsstrassen-Baulinien** (kantonal, TBA) koennen in einem eigenen Datensatz liegen; 0158 ist
  die **kommunale** Verkehrsbaulinie. Bei Projekten an Kantonsstrassen zusaetzlich pruefen.
- **`COUNT=10`** je Layer: an sehr linienreichen Parzellen kann die Liste abgeschnitten sein; die
  *naechste* Linie ist zwar meist enthalten, aber fuer Vollstaendigkeit ggf. Count/Radius pruefen.
- proj-Layer der Abstandslinien noch nicht an realem Revisionsfall validiert (analog A6 Grundnutzung).
