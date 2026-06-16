---
title: Rechtskraeftige kommunale Grundnutzung (Zonenplan/BZO) Kt. ZH — login-frei als Vektor
status: established
last_updated: 2026-06-16
sources:
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + GetFeature (GeoJSON, EPSG:2056) — Stand 06/2026
  - Datensatz ARV Basis Nutzungsplanung 0156 (Grundnutzung), 0154 (Empfindlichkeitsstufen LSV)
  - Benchmark Connector geo-zh.mjs --produkt zonenplan, Langnau a.A. Kat. 3338 + Egg WG60, 2026-06-16
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-geoportale-uebersicht]]
---

# Rechtskraeftige kommunale Grundnutzung (Zonenplan/BZO) Kt. ZH — login-frei

Loest die lange offene Luecke **A2/E2**: die rechtsverbindliche **kommunale Grundnutzung**
(Zonenplan/BZO) einer ZH-Parzelle als **login-freier Vektor** — inklusive aller
planungsrelevanten Kennzahlen (Zone, Dichtemass, Hoehen, Rechtsstatus, Festsetzungsdaten).
Der fruehere Sackgassen-Weg `wms.zh.ch` (HTTP 401, Referer-/Auth-geschuetzt) wird damit
hinfaellig: derselbe **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS`, der schon die Baulinien (0158,
→ [[kartenportale-geoportale-uebersicht]]) liefert, traegt auch die Nutzungsplanung — **login-
und Referer-frei, als GeoJSON**.

> Diese Quelle liefert **mehr als der OEREB-PDF**: BMZ/AZ, Gebaeude-/Firsthoehe, Vollgeschosse,
> Gewerbeanteil und die Festsetzungs-/Genehmigungsdaten je Zonenflaeche — strukturiert und
> maschinenlesbar. Der OEREB-Auszug nennt die Grundnutzung nur als Verweis/Thema.

## Endpunkt & Punktabfrage

```
GET https://maps.zh.ch/wfs/OGDZHWFS
    ?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature
    &TYPENAMES=ms:ogd-0156_arv_basis_np_gn_zonenflaeche_f      # Grundnutzung (rechtskraeftig)
    &SRSNAME=urn:ogc:def:crs:EPSG::2056
    &BBOX=<E-2>,<N-2>,<E+2>,<N+2>,urn:ogc:def:crs:EPSG::2056    # Mini-BBOX ±2 m am Parzellenpunkt
    &COUNT=10&OUTPUTFORMAT=geojson
```

- **Mini-BBOX (±2 m)** um den Parzellen-/Gebaeudepunkt → genau **eine** Zonenflaeche.
  Groessere Fenster (z.B. ±30 m) fangen Nachbarzonen mit (Benchmark Langnau: ±30 m liefert
  zusaetzlich die angrenzende «Fk Kantonale Freihaltezone»). Bei >1 Treffer: Punkt praezisieren.
- Achsen unkritisch hier, weil quadratische BBOX; CRS als `urn:ogc:def:crs:EPSG::2056`.

## Gelieferte Attribute (GeoJSON properties)

| Feld | Bedeutung | Beispiel |
|---|---|---|
| `typ_gde_abkuerzung` / `typ_gde_bezeichnung` | **kommunale** Zone (Abk. + Klartext) | `W/1.5` · `Wohnzone mit Baumasse 1.5 m3/m2` |
| `typ_zh_abkuerzung` / `typ_zh_bezeichnung` | **kantonal harmonisierte** Zone (ARV) | `W1` · `Wohnzonen 1 Vollgeschoss` |
| `baumassenziffer_max` | BMZ-Gemeinden (m3/m2) | `1.5` |
| `gebaeudehoehe_max` / `firsthoehe_max` | Hoehen BMZ-System (m) | `4.5` / `7.0` |
| `ausnuetzungsziffer_max` / `vollgeschosse_max` | **AZ-Gemeinden** (% bzw. VG) | `60` / `3` |
| `gewerbeanteil_max` | max. Gewerbeanteil (%) | `33` |
| `rechtsstatus` | `inKraft` / (proj: `laufendeAenderung`) | `inKraft` |
| `festsetzungsdatum` / `genehmigungsdatum` / `publiziertab` | Datenstand der Festlegung | `2005-03-17` / `2005-08-18` |
| `typ_gemeindename` / `typ_bfsnr` | Gemeinde / BFS | `Langnau am Albis` / `136` |

**WICHTIG — zwei Dichtemass-Systeme:** ZH-Gemeinden fuehren das Dichtemass entweder als
**Baumassenziffer (BMZ)** (+ Gebaeude-/Firsthoehe; z.B. Langnau a.A.) **oder** als
**Ausnuetzungsziffer (AZ)** (+ Vollgeschosse; z.B. Stadt-naehere/staedtische Gemeinden). Das
jeweils andere Feld ist `null`/fehlt. Der Connector nimmt **beide** mit und entscheidet bei der
Ausgabe gemeindegerecht. Nie aus einem fehlenden BMZ-Feld auf «keine Dichteangabe» schliessen —
zuerst `ausnuetzungsziffer_max` pruefen.

## Empfindlichkeitsstufe Laerm (LSV) — Layer 0154

Im selben Aufruf, planungsrelevant fuer Nutzung/Laermschutz:
```
TYPENAMES=ms:ogd-0154_arv_basis_np_ls_festlegung_f
-> properties.typ_abkuerzung = ES_I | ES_II | ES_III | ES_IV ; typ_bezeichnung = Klartext
```
Benchmark Langnau Kat. 3338: **ES_II** (Wohnzonen, keine stoerenden Betriebe, Art. 43 Abs. 1b LSV).

## Weitere Nutzungsplanungs-Layer (gleiches `arv_basis`-Schema)

| Datensatz | Layer | Inhalt |
|---|---|---|
| **0156** | `..._np_gn_zonenflaeche_f` | Grundnutzung / Zone (rechtskraeftig) |
| **0154** | `..._np_ls_festlegung_f` | Empfindlichkeitsstufen Laerm (LSV) |
| **0155** | `..._np_ul_flaeche_f` / `_linie_l` / `_punkt_p` | **ueberlagernde** Festlegungen (Flaeche/Linie/Punkt) |
| **0158** | `..._abstandslinie_baulinie_l` | Baulinien/Abstandslinien (→ [[kartenportale-geoportale-uebersicht]]) |

Jeder Layer hat ein Pendant **`..._proj_f`** = **projektierte / in Revision befindliche**
Planung (z.B. laufende BZO-Revision, oeffentliche Auflage). Fuer den Vorher/Nachher-Vergleich
einer Studie (machbarkeit Typ A) beide Layer abfragen: `_f` (heute rechtskraeftig) vs.
`_proj_f` (geplant). Status `emerging` — projektierter Layer noch nicht an einem realen
Revisionsfall validiert.

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs --produkt zonenplan` (braucht eine
**Koordinate** → mit `--adresse`, nicht EGRID-only):
```bash
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --produkt zonenplan --json
# -> zonenplan: W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft
node geo-zh.mjs --adresse "<Adr Stadt-naehere Gde>" --produkt zonenplan
# -> zonenplan: WG60 (WG3) · AZ 60/3VG · ES_III · inKraft
```
`--out <dir>` legt zusaetzlich eine GeoJSON-Zusammenfassung ab
(`Zonenplan-ZH_<BFS>_<Parzelle>_<JJJJ-MM-TT>.json`).

## Benchmarks (validiert 2026-06-16)

- **Langnau a.A.**, Giebelweg 12, Kat. 3338 (BFS 136): `W/1.5` → kant. `W1`; **BMZ 1.5**,
  GH 4.5 m, First 7.0 m, Gewerbeanteil 33 %; **ES_II**; rechtskraeftig, festgesetzt 17.03.2005,
  genehmigt 18.08.2005 (BD Nr. 1227). (Projekt 2621 Giebelweg)
- **AZ-Gemeinde** (typ_gemeindename `Egg`, typ_bfsnr 192 lt. Datensatz): `WG60` → kant. `WG3`;
  **AZ 60 %**, 3 Vollgeschosse; **ES_III**; rechtskraeftig, juengere Revision (festgesetzt
  02.09.2024, genehmigt 06.08.2025). Belegt, dass der Layer staedtische AZ-Systeme + aktuelle
  BZO-Revisionen abbildet.

## Grenzen / offen

- Nur **Kt. ZH** (OGD-WFS des Kantons). Andere Kantone haben eigene Geodienste; SZ läuft über
  `geo-sz.mjs` / Skill `oereb-schwyz` (dort bisher OEREB-PDF, kein Zonen-WFS kartiert).
- **Sondernutzungs-/Gestaltungsplaene** und Arealüberbauungen sind eigene Festlegungen (teils in
  0155 ueberlagernd) — die Grundnutzung 0156 zeigt nur die Rahmennutzung. Bei Arealboni/Sonder-
  bauvorschriften zusaetzlich BZO-Text + 0155 pruefen.
- Projektierter Layer `_proj_f` an realem Revisionsfall noch zu validieren (→ QUESTIONS A6).
- Geocoder-Falle: «Strasse Nr, Ort» kann in einer **Nachbargemeinde** landen (lange Strassen wie
  Forchstrasse). Immer `typ_gemeindename`/`bfs` der Antwort gegen die erwartete Gemeinde pruefen.
