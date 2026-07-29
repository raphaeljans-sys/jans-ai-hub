---
title: OEREB-Auszug und EGRID beziehen (Kt. ZH)
status: established
last_updated: 2026-07-30
sources: [GIS-Helpdesk Kt. ZH (Hannah Gies, 2026), api3.geo.admin.ch, maps.zh.ch/oereb/v2, map.geo.sz.ch/oereb, eigene Endpunkt-Messungen 30.07.2026 (Training Run 93)]
links: [[kartenportale-geoportale-uebersicht]], [[recht-norm-quellenlandkarte]], [[kartenportale-oereb-kataster-system-zh]]
---

# OEREB-Auszug und EGRID beziehen (Kt. ZH)

Der **OEREB-Auszug** (Kataster der öffentlich-rechtlichen Eigentumsbeschränkungen) ist der
amtliche Nachweis, welche Beschränkungen (Nutzungsplanung, Baulinien, Lärmschutz, Wald,
Gewässer, Belastungen) auf einer Parzelle liegen. Er ist die wichtigste Einzel-Grundlage am
Anfang jeder Studie/Baueingabe.

## Bezugskette (validiert 2026-06-05)

```
Adresse  --SearchServer-->  Koordinate (LV95, sr=2056)
Koordinate  --identify-->  EGRID + Parzelle + BFS
EGRID  --maps.zh.ch-->  OEREB-Auszug (PDF, 7 S.)
```

1. **Adresse → Koordinate** (api3.geo.admin.ch SearchServer):
   `…/SearchServer?searchText=<Adresse>&type=locations&origins=address&sr=2056`
   liefert `y` (Ost, ~2.68 Mio) und `x` (Nord, ~1.24 Mio).
2. **Koordinate → EGRID** (identify auf Layer `ch.swisstopo-vd.amtliche-vermessung`):
   benötigt `imageDisplay` und `mapExtent`; Attribut `egris_egrid` enthält den EGRID,
   `number` die Parzellennummer, `bfsnr` die Gemeindenummer.
3. **EGRID → OEREB-PDF** (Kt. ZH, **kein Login**):
   `https://maps.zh.ch/oereb/v2/extract/pdf.pdf?EGRID=<EGRID>`
   Einstieg manuell: GIS-Browser `https://maps.zh.ch?topic=OerebKatasterZH` → Grundstück
   anklicken → Infoabfrage → «Auszug drucken».

> Quelle Bezugsweg: GIS-Helpdesk Kt. ZH, Hannah Gies (Baudirektion, ARE, Geoinformation), 2026.

## EGRID — Format & Bedeutung

Der **EGRID** (Eidg. Grundstückidentifikator) ist der schweizweit eindeutige Schlüssel einer
Parzelle: `CH` + 12 Zeichen, z.B. `CH879777718909`. Er ist stabil (anders als die kantonale
Parzellennummer) und der richtige Schlüssel für OEREB, Grundbuch-/Eigentumsabfragen.

## HTTP 204 — der wichtigste Fallstrick (gemessen 30.07.2026)

**Ein OEREB-Service antwortet auf einen ihm unbekannten EGRID mit HTTP 204 und leerem Body,
nicht mit 404.** Gemessen an beiden Kantonen (Training Run 93, 30.07.2026):

| Aufruf | Antwort |
|---|---|
| ZH-Service, ZH-EGRID `CH879777718909` | **200** · 909'640 B · `application/pdf` |
| SZ-Service, SZ-EGRID `CH379377805305` (Wangen, Parz. 25) | **200** · 623'499 B · `application/pdf` |
| SZ-Service, SZ-EGRID `CH527708492462` (Einsiedeln, Parz. 3301) | **200** · 2'052'706 B · `application/pdf` |
| ZH-Service, **SZ**-EGRID `CH379377805305` | **204** · 0 B · kein content-type |
| SZ-Service, **ZH**-EGRID `CH879777718909` | **204** · 0 B · kein content-type |
| beide Services, nicht belegter EGRID | **204** · 0 B |

Drei Folgerungen für die Praxis:

- **204 heisst nicht «Endpunkt tot» und nicht «Parzelle ohne Eigentumsbeschränkungen».** Es heisst:
  *dieser Kanton kennt diesen EGRID nicht.* Fast immer ist der **Kanton** falsch gewählt (der
  häufigste Fehlgriff bei Grenzgemeinden) oder der EGRID nicht verifiziert. **Kein Negativbeweis**
  für die Parzelle — Rule `identifikatoren-verifizieren`.
- **204 liegt im ok-Bereich von `fetch`** (`response.ok` ist für 200–299 wahr). Ein Aufruf, der nur
  `!r.ok` prüft, läuft am Fehler vorbei. Genau daran lief `geo-zh.mjs` bis Run 93 in die
  irreführende Meldung «OEREB-Antwort ist kein PDF (content-type )» — der Endpunkt war intakt,
  falsch war der Kanton. Seit Run 93 fangen `geo-zh.mjs` und `geo-sz.mjs` den 204 eigens ab und
  benennen die wahre Ursache.
- **Ein Endpunkt-Test braucht einen belegten EGRID.** Ein erfundener EGRID liefert dasselbe 204 wie
  ein toter Server; der Test sagt dann nichts aus. Verwendbare Benchmark-EGRID siehe Tabelle oben.

## Dateinamen-Konvention

Der ZH-Server liefert via `content-disposition` bereits den JANS-Standardnamen:
`Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf`. Unverändert übernehmen.

**SZ liefert dagegen nur einen Timestamp-Namen** (`20260729223731_extract.pdf`) — und dieser
Timestamp ist **UTC**, nicht Lokalzeit (gemessen 30.07.2026 00:37 CEST → Servername `...0729223731`,
also der Vortag). Wer den Dateinamen des SZ-Servers als Datumsquelle übernimmt, datiert jeden
Bezug zwischen 00:00 und 02:00 CEST einen Tag zurück. Für SZ deshalb den dedizierten Connector
`geo-sz.mjs` nutzen, der auf die JANS-Konvention umbenennt.

> **Gleiche Falle im eigenen Code (behoben Run 93):** `isoDate()` verwendete
> `new Date().toISOString().slice(0,10)` — das ist ebenfalls UTC. Alle vier
> `planungsgrundlagen`-Connectoren datierten ihre Ausgabedateien im Nachtfenster einen Tag
> zurück (belegt: `Zonenplan-ZH_136_3338_2026-07-29.json`, erzeugt am 30.07. um 00:39 CEST).
> Umgestellt auf `toLocaleDateString("sv-SE")` = lokales `JJJJ-MM-TT`; nachgemessen im selben
> Lauf → `..._2026-07-30.json`. Wer weitere Connectoren schreibt: **nie `toISOString()` für ein
> Datums-Prefix** (Rule `dateinamen-konvention`).

## Realer Beleg (Benchmark)

Giebelweg 12, 8135 Langnau am Albis → **EGRID CH879777718909**, Parzelle **3338**, BFS **136**;
OEREB-PDF `Oereb-Auszug_136_3338_2026-06-05.pdf` (7 Seiten, ~945 KB). Projekt `2621 Giebelweg 12`.

**Nachgemessen 30.07.2026 (Run 93), derselbe Fall, ganze Kette end-to-end:** Adresse → SearchServer
→ E 2'682'864.25 / N 1'238'219.125 (LV95) → identify → EGRID CH879777718909 · Parzelle 3338 ·
BFS 136 → OEREB-PDF `Oereb-Auszug_136_3338_2026-07-30.pdf` (888 KB). Die EGRID-/Parzellen-/
BFS-Werte sind gegenüber dem Erstbezug vom 05.06.2026 **unverändert** — der EGRID ist stabil, wie
oben beschrieben. Die Grössendifferenz des PDF (945 → 888 KB) stammt aus dem tagesaktuell
generierten Auszug, nicht aus einem anderen Inhaltsumfang.

## Endpunkt-Frischecheck 30.07.2026 (Run 93) — 13 von 13 live

Alle in dieser KB dokumentierten Bezugs-Endpunkte der Domäne Kartenportale wurden gemessen; jeder
antwortet. Keine Endpunkt-Erosion seit dem letzten Test (Run 54, 20.07.2026).

| Endpunkt | Ergebnis |
|---|---|
| `maps.zh.ch/oereb/v2/extract/pdf.pdf` | 200 · PDF 909 KB |
| `map.geo.sz.ch/oereb/extract/pdf` | 200 · PDF 623 KB / 2'053 KB |
| `api3.geo.admin.ch/rest/services/height` | 200 · JSON (Giebelweg: **549.1 m ü.M.**) |
| `api3.geo.admin.ch/…/SearchServer` (Geocoding) | 200 · Treffer exakt |
| `api3.geo.admin.ch/…/MapServer/identify` (EGRID) | 200 · `egris_egrid` gesetzt |
| `maps.zh.ch/wfs/OGDZHWFS` GetCapabilities | 200 · 849 KB XML |
| ZH-WFS Zonenplan (0154/0156) | 200 · **W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft** |
| ZH-WFS Baulinien/Abstandslinien (±150 m) | 200 · 7 Baulinien (nächste 116.2 m) + 1 Waldgrenze (105.6 m) |
| ZH-WFS Denkmalschutz (±60 m) | 200 · Negativbefund im Fenster |
| ZH-WFS Grundwasserschutz (±5 m) | 200 · Negativbefund |
| ZH-WFS Naturgefahren (±5 m) | 200 · Negativbefund |
| `data.geo.admin.ch` STAC swissALTI3D | 200 · JSON 12 KB |
| `wms.geo.admin.ch` GetCapabilities | 200 · 2.7 MB XML |
| `maps.zh.ch?topic=OerebKatasterZH` · `oerebdocs.zh.ch` · `geodienste.ch/downloads/av` · `ebau-sz.ch` · `map.geo.sz.ch` · `gisos.bak.admin.ch/sites` · `achtgradost.ch` | je 200 |

Die Zonenplan-Werte (W1, BMZ 1.5, GH 4.5) stimmen mit dem in
`[[kartenportale-zonenplan-zh]]` festgehaltenen Stand überein — kein Revisions-Delta an dieser
Parzelle.

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs` kapselt die ganze Kette:
`node geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb --out <A> --out <B>`.

## Standard-Ablage

(1) `PL - 01 Kartenportale/OEREB-Auszug` (büroweit) und
(2) Projektordner `…/01_Plaene/99 Plangrundlage`.

## Grenzen / offen

- **ZH und SZ sind validiert** (ZH seit 05.06.2026, SZ seit 07.06.2026 am Fall 2304 Reckholdern,
  beide am 30.07.2026 nachgemessen — siehe Tabelle oben). Jeder weitere Kanton hat einen eigenen
  OEREB-Service und ist **nicht** hinterlegt: `geo-zh.mjs` bricht dort mit «Kein OEREB-Service fuer
  Kanton …» ab, statt zu raten. Die EGRID-Ermittlung (Schritt 1+2) ist national und funktioniert
  überall.
- Für SZ ist `geo-sz.mjs` der bessere Weg (Parzellensuche ohne EGRID + JANS-Umbenennung); der
  SZ-Eintrag in `geo-zh.mjs` deckt nur den EGRID-Direktbezug ab.
