---
title: Baulinien & Abstandslinien Kt. ZH — login-frei als Vektor (OEREB-Layer via OGD-WFS)
status: established
last_updated: 2026-07-13
sources:
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + GetFeature (GeoJSON, EPSG:2056) — Stand 06/2026
  - OEREB-Kataster vereinfachtes Datenmodell ZH, Datensätze 0150/0152/0153/0158/0185
  - Benchmark Connector geo-zh.mjs --produkt baulinien, Langnau a.A. Kat. 3338 + Seuzach Kat. 2304, 2026-06-24
  - api3.geo.admin.ch/rest/.../identify returnGeometry=true (Parzellenpolygon Esri-rings, EPSG:2056) — Stand 07/2026
  - Senkrechter-Abstand-Messung (K5-Rest) validiert 2026-07-08, Zweitmethoden-Gegenrechnung Seuzach 29.8 m
  - proj-Layer-Namensschema per GetCapabilities verifiziert + Live-Benchmark Hardackerstrasse 2 Kloten
    (Kat. 3061, EGRID CH670577750811) validiert 2026-07-13 (Training Run 19)
links: [[kartenportale-zonenplan-zh]] [[kartenportale-bund-geodaten]] [[kartenportale-oereb-egrid-bezug]] [[kartenportale-geoportale-uebersicht]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
---

# Baulinien & Abstandslinien Kt. ZH — login-frei

Löst die Lücke **K5**: die **Baulinien und Abstandslinien** (öffentlich-rechtliche
Eigentumsbeschränkungen, die das Baufeld beschneiden) einer ZH-Parzelle als **login-freier
Vektor** — über denselben **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS`, der schon die Grundnutzung
([[kartenportale-zonenplan-zh]]) liefert. Das ist die Datengrundlage, die der Agent
`baulinien-analyst` braucht, um das **öffentlich-rechtliche Baufeld** zu bestimmen (Skill
`machbarkeit`).

> Warum nicht aus dem OEREB-PDF? Der PDF nennt die Linien nur als Thema/Verweis. Der OGD-WFS
> liefert die **Geometrie + Typ + Zweck + Rechtsstatus** strukturiert — man kann den Abstand zur
> Parzellengrenze tatsächlich rechnen, statt ihn aus dem Plan abzulesen.

## Layer (rechtskräftig `_l/_f`, je mit `_proj`-Pendant)

| Datensatz | Layer (TYPENAMES) | Inhalt | Geometrie |
|---|---|---|---|
| **0158** | `ms:ogd-0158_arv_basis_abstandslinie_baulinie_l` | Kommunale **Verkehrsbaulinien** (158.1) | Linie |
| **0152** | `ms:ogd-0152_arv_basis_abstandslinie_wald_l` | **Waldabstandslinien** (152.1) | Linie |
| **0153** | `ms:ogd-0153_arv_basis_abstandslinie_gewaesser_l` | **Gewässerabstandslinien** (153.1) | Linie |
| **0150** | `ms:ogd-0150_arv_basis_abstandslinie_waldgrenze_l` | Statische **Waldgrenze** (150.1) | Linie |
| **0185** | `ms:ogd-0185_arv_basis_gewaesserraum_f` | **Gewässerraum**-Fläche (185.1) | Fläche |

Jeder Layer hat ein **`..._proj`**-Pendant (projektiert/in Revision) — **kein einheitliches
Namensschema** (per GetCapabilities verifiziert 2026-07-13, Falle beim Nachpflegen):

| Basis-Layer | proj-Layer (TYPENAMES) | Abweichung |
|---|---|---|
| 0158 baulinie | `ms:ogd-0158_arv_basis_abstandslinie_baulinie_proj_l` | regulär |
| 0152 wald | `ms:ogd-0152_arv_basis_abstandslinie_wald_proj_l` | regulär |
| 0153 gewässer | `ms:ogd-0153_giszhpub_abstandslinie_gewaesser_proj_l` | **Namensraum** `giszhpub` statt `arv_basis` |
| 0150 waldgrenze | `ms:ogd-0150_arv_basis_abstandslinie_waldgrenze_prj_l` | **`_prj_l`** statt `_proj_l` |
| 0185 gewässerraum | `ms:ogd-0185_arv_basis_gewaesserraum_proj_f` | regulär |

Für den Vorher/Nachher-Vergleich beide (rechtskräftig + proj) abfragen — analog zur Grundnutzung
(A6). **Seit 2026-07-13 im Connector implementiert und getestet** (→ Abschnitt unten).

## Punktabfrage — wichtiger Unterschied zur Grundnutzung: grösserer Radius

Linien liegen **neben** der Parzelle (nicht am abgefragten Gebäudepunkt). Die ±2-m-Mini-BBOX der
Grundnutzung greift hier ins Leere → man braucht ein **grösseres Fenster** (default **±150 m**):

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
- **Wald-/Gewässerabstand 0152/0153:** `typ_txt`, `typ_bemerkungen` (oft die **Distanz** in m),
  `festsetzung_txt`/`genehmigung_txt`/`inkraftsetzung_txt`.
- **Waldgrenze 0150:** `typ`, `art_txt`, `inkraftsetzung_txt`.
- **Gewässerraum 0185:** `gewaesserraumfestlegung_txt`, `rechtsstatus_txt`, `verfahren_txt`.

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
`baulinien-analyst` sofort, welche Baulinie/Abstandslinie das **Baufeld tatsächlich beschneidet**,
statt es aus dem Plan abzulesen (Anbindung an `machbarkeit` Typ A / M2).

**Wie es rechnet (login-frei, ohne Zusatz-Abhängigkeit):**
1. **Parzellenpolygon** aus demselben `identify`-Call, der schon den EGRID liefert — nur mit
   `returnGeometry=true` (Esri-`rings`, EPSG:2056).
2. Distanz = kleinster Segment-zu-Segment-Abstand zwischen **Parzellenring** und **Linien-/
   Flächen-Geometrie** (Punkt-zu-Segment + Segment-Schnitt-Test, planar in EPSG:2056 → metrisch
   exakt auf lokaler Skala). **`dist_m = 0`** heisst: die Linie **berührt/schneidet** die
   Parzelle → baurechtlich unmittelbar bindend.

Ausgabe:
- je Treffer zusätzliches Feld **`dist_m`** (auf 0.1 m gerundet), die Trefferliste ist **nach
  Abstand aufsteigend sortiert** (nächste Linie zuoberst);
- je Layer **`<layer>_dist_min_m`** (nächster Abstand) + Flag **`gemessen: true`**;
- die Log-Zeile zeigt «nächste X m» je Kategorie.

> **Fenster ≠ Abstand:** Das ±150-m-BBOX filtert Linien um den *Gebäudepunkt*; `dist_m` misst
> ab der *Parzellengrenze*. Eine Linie im Fenster kann daher > 150 m von der Grenze weg liegen
> (Seuzach-Benchmark bis 184 m) — das ist korrekt, nicht ein Fehler.

Verifikation: unabhängige Zweitmethode (Vertex-zu-Segment beidseitig) an Seuzach Kat. 2304 →
**29.8 m = 29.8 m** (deckungsgleich mit dem Connector).

## Laufende Revision erkennen (K5-Rest, seit 2026-07-13, Run 19)

Analog zur BZO-Revisionserkennung bei der Grundnutzung (A6) fragt der Connector jetzt bei
`--produkt baulinien` **zusätzlich die fünf proj-Layer** im selben Fenster (±`half` m) ab. Findet
sich dort ein Treffer, meldet die Log-Zeile **`⚠ LAUFENDE REVISION`** mit Anzahl je Kategorie —
damit weiss man VOR der Abgabe, ob eine Baulinie/ein Waldabstand/Gewässerraum in der Nähe gerade
geändert wird, statt es erst beim nächsten OEREB-Bezug zu bemerken.

**Live-Benchmark (kantonsweite Probe ohne bekannte Zielparzelle, dann per GWR-`identify`
reverse-geokodiert):**

| Parzelle | rechtskräftig (±150 m) | proj-Treffer | Lesart |
|---|---|---|---|
| **Kloten**, Hardackerstrasse 2, Kat. 3061 (BFS 62, EGRID CH670577750811) | 10 Baulinie (nächste **0 m**), 5 Waldabstand, 7 Waldgrenze | **4 baulinie** (`laufendeAenderung.Rechtsmittelverfahren`, Projekt 62-AL-1, Aufhebung + Neu gemischt) | Grenzfall: rechtskräftige Baulinie liegt **auf** der Parzelle, UND die Linienführung selbst ist in Änderung — beide Zustände prüfen |
| Wila/Boppelsen (Wald, `laufendeAenderung.Festsetzung`), Winterthur (Waldgrenze, `oeffentliche_Auflage`), Niederglatt (Gewässer, `Aufhebung.oeffentliche_Auflage`), Bachs (Gewässerraum, `oeffentliche_Auflage` OHNE Vorwirkung) | — | je 1 Fund (Existenznachweis) | belegt: **alle fünf** proj-Layer führen aktuell echte Fälle, nicht nur baulinie |

Ausgabe je proj-Treffer: `typ`, `rechtsstatus`, `projektzustand`, `gemeinde`, `auflage` (Datum),
`dokument` (OEREB-Link) + `dist_m` (falls Parzellenpolygon vorhanden). Aggregiert: `proj_treffer`
(Gesamtzahl) und `revision_laeuft` (bool) im JSON unter `produkte.baulinien.proj`.

> **Merksatz:** anders als bei der Grundnutzung (wo es meist EIN klares proj-Ergebnis je Parzelle
> gibt) können bei Abstandslinien **mehrere Zustände gleichzeitig** auftreten (z.B. `Aufhebung`
> UND `Neu` im selben Projekt, wie in Kloten) — die Rohliste zeigen, nicht auf einen Status
> verdichten.

Regression gegen die bestehenden Benchmarks (Langnau 7 Baulinie + 1 Waldgrenze, Seuzach 10
Baulinie/29.8 m) unverändert grün — keine proj-Treffer dort, korrekt kein Revisions-Flag.

## Benchmarks (Abstand gemessen, validiert 2026-07-08)

| Parzelle | ±150-m-Treffer | nächster Abstand (`dist_m`) | Lesart |
|---|---|---|---|
| **Langnau a.A.**, Giebelweg 12, Kat. 3338 (BFS 136, Projekt 2621) | 7 Baulinie + 1 Waldgrenze | Baulinie **116.2 m**, Waldgrenze **105.6 m** | Hanglage, Baufeld nicht durch Baulinie beschnitten |
| **Seuzach**, Kirchgasse 2, Kat. 2304 (BFS 227) | 10 Baulinie | nächste **29.8 m** (dann 38.3 / 60.6 / 89 …) | Ortskern, Baulinie nahe aber nicht bindend |
| **Seuzach**, Dorfstrasse 1 (BFS 227) | 10 Baulinie | nächste **0 m** | Baulinie **liegt auf/durch** die Parzelle → **bindend** |
| **Wetzikon**, Zürcherstrasse 1 (BFS 121) | 10 Baulinie + 2 Gewässerabstand + 1 Gewässerraum | Baulinie 111.5 m, **Gewässerabstand 43.9 m**, Gewässerraum-Fläche 45.9 m | belegt, dass auch Wald/Gewässer/Fläche gemessen werden |

(Alle validiert 2026-07-08 gegen den Live-OGD-WFS; Baulinien-Zählung deckungsgleich mit dem
Benchmark 2026-06-24.) Wald-/Gewässerabstand 0152/0153/0185: an wald-/gewässerfernen Parzellen
erwartungsgemäss 0 Treffer.

## Grenzen / offen

- Nur **Kt. ZH**. Andere Kantone: eigener Geodienst (SZ → `geo-sz.mjs` / `oereb-schwyz`).
- ±150 m ist das **Suchfenster** um den Gebäudepunkt (bei sehr grossen/laenglichen Parzellen ggf.
  `--radius` erhöhen). ✓ **Senkrechter Abstand Linie↔Parzellengrenze jetzt im Connector gerechnet**
  (`dist_m`, seit 2026-07-08) — der Agent `baulinien-analyst` erhält den Wert direkt, statt ihn
  aus der Kataster-Geometrie ableiten zu müssen.
- **Staatsstrassen-Baulinien** (kantonal, TBA) können in einem eigenen Datensatz liegen; 0158 ist
  die **kommunale** Verkehrsbaulinie. Bei Projekten an Kantonsstrassen zusätzlich prüfen.
- **`COUNT=10`** je Layer: an sehr linienreichen Parzellen kann die Liste abgeschnitten sein; die
  *nächste* Linie ist zwar meist enthalten, aber für Vollständigkeit ggf. Count/Radius prüfen.
  Gilt jetzt **auch für die proj-Layer** (eigenes `COUNT=10`-Fenster je Layer).
- ✓ **proj-Layer der Abstandslinien seit 2026-07-13 validiert** (Run 19, Live-Benchmark Kloten) —
  offen bleibt nur, `dist_m` bei proj-Treffern konsequent gegen die Parzellengrenze zu prüfen
  (aktuell wird die Distanz mitgerechnet, aber im Log noch nicht je proj-Treffer ausgegeben).
