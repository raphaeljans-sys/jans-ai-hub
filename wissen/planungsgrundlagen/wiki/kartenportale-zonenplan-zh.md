---
title: Rechtskräftige kommunale Grundnutzung (Zonenplan/BZO) Kt. ZH — login-frei als Vektor
status: established
last_updated: 2026-08-23
sources:
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + GetFeature (GeoJSON, EPSG:2056) — Stand 06/2026, Achsenreihenfolge nachgemessen 23.08.2026
  - Datensatz ARV Basis Nutzungsplanung 0156 (Grundnutzung), 0154 (Empfindlichkeitsstufen LSV)
  - Benchmark Connector geo-zh.mjs --produkt zonenplan, Langnau a.A. Kat. 3338 + Egg WG60, 2026-06-16
  - A6 proj-Layer 0156_proj validiert: Seuzach Kat. 2304 (laufende BZO-Revision, Auflage 11/2024), 2026-06-24
  - K59 (Run 67, 2026-07-25): geoglatt.ch Zonenplan-Übersichtsplan Gemeinde Maur, genehmigt 27.02.2012 (BDV Nr. 30/2012), Gestaltungsplan-Register (8 Perimeter)
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-geoportale-uebersicht]] [[kartenportale-baulinien-abstandslinien-zh]] [[kartenportale-oereb-kataster-system-zh]]
---

# Rechtskräftige kommunale Grundnutzung (Zonenplan/BZO) Kt. ZH — login-frei

Löst die lange offene Lücke **A2/E2**: die rechtsverbindliche **kommunale Grundnutzung**
(Zonenplan/BZO) einer ZH-Parzelle als **login-freier Vektor** — inklusive aller
planungsrelevanten Kennzahlen (Zone, Dichtemass, Höhen, Rechtsstatus, Festsetzungsdaten).
Der frühere Sackgassen-Weg `wms.zh.ch` (HTTP 401, Referer-/Auth-geschuetzt) wird damit
hinfällig: derselbe **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS`, der schon die Baulinien (0158,
→ [[kartenportale-geoportale-uebersicht]]) liefert, trägt auch die Nutzungsplanung — **login-
und Referer-frei, als GeoJSON**.

> Diese Quelle liefert **mehr als der OEREB-PDF**: BMZ/AZ, Gebäude-/Firsthoehe, Vollgeschosse,
> Gewerbeanteil und die Festsetzungs-/Genehmigungsdaten je Zonenfläche — strukturiert und
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

- **Mini-BBOX (±2 m)** um den Parzellen-/Gebäudepunkt → genau **eine** Zonenfläche.
  Grössere Fenster (z.B. ±30 m) fangen Nachbarzonen mit (Benchmark Langnau: ±30 m liefert
  zusätzlich die angrenzende «Fk Kantonale Freihaltezone»). Bei >1 Treffer: Punkt präzisieren.
- ⚠ **Achsenreihenfolge ist NICHT unkritisch** (berichtigt 23.08.2026, hier stand
  «Achsen unkritisch hier, weil quadratische BBOX»). Eine quadratische BBOX macht nur die beiden
  **Halbweiten** gleich, nicht die beiden **Mittelpunktskoordinaten**: wer E und N vertauscht,
  fragt an einer voellig anderen Stelle. Gemessen am Benchmark Langnau Kat. 3338
  (E 2682864.25 / N 1238219.125), identischer Aufruf, nur die Reihenfolge getauscht:
  **E,N → 1 Feature** (`typ_gde_abkuerzung W/1.5`, `baumassenziffer_max 1.5`), **N,E → 0
  Features**. Der Connector `geo-zh.mjs` (Zeile `bbox = ${e-half},${n-half},…`) liegt richtig;
  falsch war nur der Satz hier. CRS wie gehabt als `urn:ogc:def:crs:EPSG::2056`.
- **Auch dieser Fehler waere stumm:** die vertauschte Abfrage antwortet `HTTP 200` mit gueltigem
  GeoJSON und einer **leeren** `features`-Liste — nicht von einer Parzelle ohne Zonenfestlegung
  zu unterscheiden. Dieselbe Familie wie die Bauzonen-Kachel in [[kartenportale-bund-geodaten]],
  die vertauscht ein formal gueltiges, vollstaendig transparentes PNG lieferte.

## Gelieferte Attribute (GeoJSON properties)

| Feld | Bedeutung | Beispiel |
|---|---|---|
| `typ_gde_abkuerzung` / `typ_gde_bezeichnung` | **kommunale** Zone (Abk. + Klartext) | `W/1.5` · `Wohnzone mit Baumasse 1.5 m3/m2` |
| `typ_zh_abkuerzung` / `typ_zh_bezeichnung` | **kantonal harmonisierte** Zone (ARV) | `W1` · `Wohnzonen 1 Vollgeschoss` |
| `baumassenziffer_max` | BMZ-Gemeinden (m3/m2) | `1.5` |
| `gebaeudehoehe_max` / `firsthoehe_max` | Höhen BMZ-System (m) | `4.5` / `7.0` |
| `ausnuetzungsziffer_max` / `vollgeschosse_max` | **AZ-Gemeinden** (% bzw. VG) | `60` / `3` |
| `gewerbeanteil_max` | max. Gewerbeanteil (%) | `33` |
| `rechtsstatus` | `inKraft` / (proj: `laufendeAenderung`) | `inKraft` |
| `festsetzungsdatum` / `genehmigungsdatum` / `publiziertab` | Datenstand der Festlegung | `2005-03-17` / `2005-08-18` |
| `typ_gemeindename` / `typ_bfsnr` | Gemeinde / BFS | `Langnau am Albis` / `136` |

**WICHTIG — zwei Dichtemass-Systeme:** ZH-Gemeinden führen das Dichtemass entweder als
**Baumassenziffer (BMZ)** (+ Gebäude-/Firsthoehe; z.B. Langnau a.A.) **oder** als
**Ausnützungsziffer (AZ)** (+ Vollgeschosse; z.B. Stadt-nähere/staedtische Gemeinden). Das
jeweils andere Feld ist `null`/fehlt. Der Connector nimmt **beide** mit und entscheidet bei der
Ausgabe gemeindegerecht. Nie aus einem fehlenden BMZ-Feld auf «keine Dichteangabe» schliessen —
zuerst `ausnuetzungsziffer_max` prüfen.

## Empfindlichkeitsstufe Lärm (LSV) — Layer 0154

Im selben Aufruf, planungsrelevant für Nutzung/Laermschutz:
```
TYPENAMES=ms:ogd-0154_arv_basis_np_ls_festlegung_f
-> properties.typ_abkuerzung = ES_I | ES_II | ES_III | ES_IV ; typ_bezeichnung = Klartext
```
Benchmark Langnau Kat. 3338: **ES_II** (Wohnzonen, keine störenden Betriebe, Art. 43 Abs. 1b LSV).

> **Querbezug KB baurecht (Recht führend, gesetzt Wissens-Chef Run 14, 24.07.2026).** Dieser Artikel
> ist führend für die **Beschaffung** der ES-Zuordnung (GIS-Layer 0154, login-frei als Vektor). Die
> **Rechtsgrundlage** der Empfindlichkeitsstufen (Art. 43/44 LSV, Zuordnungskriterien ES I-IV, Aufstufung,
> Belastungsgrenzwerte Anhang 3/4/6) führt die KB baurecht:
> `wissen/baurecht/wiki/laermschutz-und-nichtionisierende-strahlung` (Anhang 3/4/6 volltextverifiziert
> Stand 1.11.2023, Buch-Runs 46-51). Für die Rechtsfolge dorthin, nicht hier nachschreiben.

## Weitere Nutzungsplanungs-Layer (gleiches `arv_basis`-Schema)

| Datensatz | Layer | Inhalt |
|---|---|---|
| **0156** | `..._np_gn_zonenflaeche_f` | Grundnutzung / Zone (rechtskräftig) |
| **0154** | `..._np_ls_festlegung_f` | Empfindlichkeitsstufen Lärm (LSV) |
| **0155** | `..._np_ul_flaeche_f` / `_linie_l` / `_punkt_p` | **überlagernde** Festlegungen (Fläche/Linie/Punkt) |
| **0158** | `..._abstandslinie_baulinie_l` | Baulinien/Abstandslinien (→ [[kartenportale-geoportale-uebersicht]]) |

Jeder Layer hat ein Pendant **`..._proj_f`** = **projektierte / in Revision befindliche**
Planung (z.B. laufende BZO-Revision, öffentliche Auflage). Für den Vorher/Nachher-Vergleich
einer Studie (machbarkeit Typ A) beide Layer abfragen: `_f` (heute rechtskräftig) vs.
`_proj_f` (geplant).

## A6 — Laufende Revision erkennen (Vorher/Nachher für machbarkeit Typ A) · validiert 2026-06-24

Der projektierte Grundnutzungs-Layer **`ms:ogd-0156_arv_basis_np_gn_zonenflaeche_proj_f`** ist
kantonsweit aktiv bestückt (Stand 06/2026: laufende Revisionen u.a. in **Seuzach, Wädenswil,
Winterthur, Winkel, Regensdorf, Affoltern a.A., Zürich**). Er trägt zusätzlich zu den
Zonen-/Dichtefeldern die **Revisions-Metadaten** — ideal, um an einer Parzelle zu prüfen, ob
sich die Rahmennutzung gerade ändert:

| Feld (proj) | Bedeutung | Beispiel (Seuzach) |
|---|---|---|
| `rechtsstatus` | Revisionsphase | `laufendeAenderung.Festsetzung` (Phasen: …`oeffentliche_Auflage` → …`Festsetzung` → …`Genehmigung`) |
| `revisionsart_txt` | Art der Änderung | `Aenderung_Bauordnung_Zonenplan` (vs. nur `Aenderung_Bauordnung` = BZO-Text ohne Geometrie) |
| `auflagedatum` | öffentliche Auflage | `2024-11-01` |
| `festsetzung` / `genehmigung` / `inkraftsetzung` | Phasendaten | je nach Stand |
| `dokument` | **Verweis auf die OEREB-Dokumente** (BZO-Text/Plan der Revision) | `http://oerebdocs.zh.ch/documents?docid=…` |

**Lese-Hinweis:** Bei `revisionsart = Aenderung_Bauordnung` ändert sich nur der **BZO-Text** —
die Zone bleibt geometrisch gleich, die neuen Dichte-/Höhenwerte stehen erst im verlinkten
`dokument`, nicht in den proj-Attributen (die `gebaeudehoehe_max` etc. können dann leer sein).
Bei `Aenderung_Bauordnung_Zonenplan` ändert sich auch die Fläche/Zone → Vorher/Nachher direkt
aus `_f` vs. `_proj_f` ablesbar. Immer **beide** Layer am selben Punkt abfragen.

Der Connector macht das automatisch beim `--produkt zonenplan` und meldet eine laufende Revision
mit ⚠-Zeile (geplante Zone · Phase · Auflagedatum · Dokument-Link); im JSON unter
`produkte.zonenplan.revision_laeuft` + `.grundnutzung_proj[]`.

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs --produkt zonenplan` (braucht eine
**Koordinate** → mit `--adresse`, nicht EGRID-only):
```bash
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --produkt zonenplan --json
# -> zonenplan: W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft
node geo-zh.mjs --adresse "<Adr Stadt-naehere Gde>" --produkt zonenplan
# -> zonenplan: WG60 (WG3) · AZ 60/3VG · ES_III · inKraft
```
`--out <dir>` legt zusätzlich eine GeoJSON-Zusammenfassung ab
(`Zonenplan-ZH_<BFS>_<Parzelle>_<JJJJ-MM-TT>.json`).

## Benchmarks (validiert 2026-06-16)

- **Langnau a.A.**, Giebelweg 12, Kat. 3338 (BFS 136): `W/1.5` → kant. `W1`; **BMZ 1.5**,
  GH 4.5 m, First 7.0 m, Gewerbeanteil 33 %; **ES_II**; rechtskräftig, festgesetzt 17.03.2005,
  genehmigt 18.08.2005 (BD Nr. 1227). (Projekt 2621 Giebelweg)
- **AZ-Gemeinde** (typ_gemeindename `Egg`, typ_bfsnr 192 lt. Datensatz): `WG60` → kant. `WG3`;
  **AZ 60 %**, 3 Vollgeschosse; **ES_III**; rechtskräftig, jüngere Revision (festgesetzt
  02.09.2024, genehmigt 06.08.2025). Belegt, dass der Layer städtische AZ-Systeme + aktuelle
  BZO-Revisionen abbildet.
- **Seuzach** (A6-Benchmark), Kirchgasse 2, Kat. 2304 (EGRID CH449245777234, BFS 227):
  rechtskräftig **K Kernzone** (`inKraft`); **proj-Layer aktiv** → `laufendeAenderung.Festsetzung`,
  `Aenderung_Bauordnung_Zonenplan`, Auflage **01.11.2024**, mit Dokument-Link auf
  oerebdocs.zh.ch. Beweist die End-to-End-Erkennung einer laufenden Revision durch den Connector.
- **Thalwil, Bohlweg 3, Kat. 6289** (EGRID CH634177628504, BFS 141) — Benchmark für K68
  (gemessen 2026-08-23): rechtskräftig **W3** (`inKraft`, AZ 60/3VG, ES_III, festgesetzt
  10.12.2003/genehmigt 22.02.2005); **proj-Layer aktiv** → `laufendeAenderung.Festsetzung`,
  Revisionsart **`Aenderung_Bauordnung`** (reiner BZO-Text, keine Geometrieänderung), Auflage
  **16.05.2026**, `genehmigung`/`inkraftsetzung` beide leer. **Löst Teilfrage (a) von K68:** der
  Lese-Hinweis oben sagt für `Aenderung_Bauordnung`, die proj-Attribute «können … leer sein» —
  hier sind sie es nicht: `ausnuetzungsziffer_max`/`vollgeschosse_max` sind bestückt (identisch
  zum rechtskräftigen Stand, weil die BZO-Revision hier nur den Text, nicht die Dichtewerte
  dieser Zone ändert). Der proj-Layer ist also auch bei reinen Bauordnungs-Revisionen **nicht
  grundsätzlich leer** — Leerfelder sind fallabhängig, kein verlässliches Ausschlusskriterium.
  **Teilfrage (b) bleibt offen:** Die Parzelle ist der reale Fall hinter der von `baurecht`
  geführten Überwachungs-Pendenz T-01 (revBZO Thalwil, Volksentscheid 14.06.2026, Stand
  04.08.2026 «weder genehmigt noch in Kraft»). Der hier gemessene Stand (`Festsetzung`, beide
  Datumsfelder leer) ist am 23.08.2026 deckungsgleich mit T-01 — die Revision hat die
  `.Genehmigung`-Phase noch nicht erreicht, der Statuswechsel ist also noch nicht beobachtbar.
  **Konkreter nächster Schritt statt weiterer Theorie:** denselben Connector-Aufruf
  (`--adresse "Bohlweg 3, Thalwil" --produkt zonenplan`) erneut fahren, sobald `baurecht`
  (T-01) die kommunale Publikation der Genehmigung meldet, und den Zeitpunkt des Feldwechsels
  `rechtsstatus` → `.Genehmigung` gegen das Publikationsdatum vergleichen. Erst dieser Vergleich
  beantwortet, ob der Layer als Frühwarnung taugt oder nur bestätigt.

## Realer Gestaltungsplan-Registerauszug: Gemeinde Maur (K59, Run 67)

Konkretisiert den offenen Punkt «Sondernutzungs-/Gestaltungsplaene sind eigene Festlegungen,
0156 zeigt nur die Rahmennutzung» (siehe unten) mit einem realen Beispiel: der amtliche
**Zonenplan-Übersichtsplan der Gemeinde Maur** (Kt. ZH, geoglatt.ch-Portalexport, raster-PDF
`Zonenplan_Raster_Ma_20110415_GM61.gws`, 1:5'000, «Teilrevision Nutzungsplanung», von der
Gemeindeversammlung festgesetzt 7./8.06.2010, von der Baudirektion genehmigt **27.02.2012**
[BDV Nr. 30/2012], Herausgeber Gossweiler Ingenieure AG Oetwil a.d.L.) trägt eine eigene
**Gestaltungsplan-Legende** mit acht namentlich benannten, datierten Sondernutzungsplänen:

| Gestaltungsplan | Ortsteil | Festgesetzt | Genehmigung |
|---|---|---|---|
| «Bügenegg» | Binz | 11.11.1986 | RRB 00.02.1987 |
| «Tanzplatz» | Maur | 22.03.1988 | RRB 12.07.1988 |
| «Herr zur Mühle» | Ebmatingen | 10.06.2009 | RRB 15.12.2010 |
| «Sämtner Gütli» | Maur | 15.06.1988 | RRB 19.02.1990 |
| «Im Girsch Erni» | Maur | 19.06.1997 | RRB 27.02.1998 |
| «Lüriti/Duppe» | Maur | 29.03.1988 | RRB 20.06.1989 |
| «Wassberg» | Maur | 03.12.1996 | RRB 20.08.1997 |
| «Ober-Zürichstrasse» | Binz | 10.06.2006 | RRB 13.04.2007 |

(Daten aus der Planlegende abgelesen, RRB-Nummern im Original teils nur als Datum ohne
Geschäftsnummer vermerkt — bei Bedarf gegen die Gemeinde Maur/das Amtsblatt verifizieren.)

**Einordnung:** Genau die Art Overlay, die eine reine 0156-Grundnutzungsabfrage (Rahmennutzung)
nicht zeigt — eine Parzelle innerhalb eines dieser acht Perimeter unterliegt zusätzlich den
Sonderbauvorschriften des jeweiligen Gestaltungsplans (analog zum SZ-Fall Reckholdern/Einsiedeln,
[[recht-norm-baurechtsanalysen-benchmarks]], wo ein Gestaltungsplan den Waldabstand von 20 m auf
15/17 m reduzierte). Der Plan zeigt daneben die volle kommunale Zonenlegende (Kernzone A/B,
Wohnzonen W1–W4g, Wohnzone mit Gewerbeanteil WG2–WG4, Gewerbezone 1/2, Zone für öffentliche
Bauten, kommunale/kantonale Landwirtschafts- und Freihaltezone, Reservezone) inkl. AZ/Ausnuetzung
je Zone in der Legendenspalte.

**⚠ Datenstand:** Plan-Genehmigung 27.02.2012 — **>18 Monate alt**, als amtliche Geometrie durch
den aktuellen WFS-Layer 0156/0156_proj (K2, oben) abgelöst. Die acht Gestaltungsplan-Perimeter
selbst ändern sich seltener als die Grundnutzung, sind hier aber **nicht erneut verifiziert** —
vor Verwendung in einem realen Maur-Projekt gegen die aktuelle Gemeinde-BZO/das Amtsblatt
gegenprüfen. Status **emerging** (Einzelquelle, historischer Planexport, kein WFS-Layer
bekannt). Datei war cloud-only (37 MB, `pdfinfo` nötig statt `mdls`, einseitiger Raster-Export
via `pdfFactory`-Druckertreiber) → Delta zur Formattabelle K8: geoglatt.ch liefert (anders als
der login-freie ZH-OGD-WFS) nur **statische Raster-Poster-PDFs**, kein maschinenlesbares Format.

## Grenzen / offen

- Nur **Kt. ZH** (OGD-WFS des Kantons). Andere Kantone haben eigene Geodienste; SZ läuft über
  `geo-sz.mjs` / Skill `oereb-schwyz` (dort bisher OEREB-PDF, kein Zonen-WFS kartiert).
- **Sondernutzungs-/Gestaltungsplaene** und Arealüberbauungen sind eigene Festlegungen (teils in
  0155 überlagernd) — die Grundnutzung 0156 zeigt nur die Rahmennutzung. Bei Arealboni/Sonder-
  bauvorschriften zusätzlich BZO-Text + 0155 prüfen. Realer Registerauszug: siehe oben (K59,
  Gemeinde Maur).
- ~~Projektierter Layer `_proj_f` an realem Revisionsfall noch zu validieren~~ **✓ A6 gelöst
  2026-06-24** (Seuzach Kat. 2304) — siehe Abschnitt «A6 — Laufende Revision erkennen».
- Geocoder-Falle: «Strasse Nr, Ort» kann in einer **Nachbargemeinde** landen (lange Strassen wie
  Forchstrasse). Immer `typ_gemeindename`/`bfs` der Antwort gegen die erwartete Gemeinde prüfen.
