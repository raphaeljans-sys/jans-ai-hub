---
title: OEREB-Auszug und EGRID beziehen (Kt. ZH)
status: established
last_updated: 2026-08-23 (Vertiefungslauf Revendo: Connector-Benchmark 9/9 grün, zwei neue Endpunkt-Befunde)
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

## Connector-Benchmark 01.08.2026 (Wartungslauf 02) — 5 von 5 grün

Alle fünf Connectoren am belegten JANS-Benchmark gemessen; **jeder Wert identisch zum
Wartungslauf 01** (30.07.2026), also keine Endpunkt-Erosion und kein Revisions-Delta:

| Test | Ergebnis |
|---|---|
| `geo-zh` Adresse → EGRID (Giebelweg 12, 8135 Langnau a.A.) | **EGRID CH879777718909 · Parz. 3338 · BFS 136** — unverändert seit Erstbezug 05.06.2026 |
| `geo-zh --produkt zonenplan` | **W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft** — unverändert |
| `geo-zh --produkt baulinien` | 7 Baulinien (nächste **116.2 m**) + 1 Waldgrenze (**105.6 m**) — unverändert |
| `geo-zh --oereb` | PDF **889 KB** abgelegt |
| `geo-sz --parzelle "Einsiedeln 3301"` + OEREB | **EGRID CH527708492462 · Parz. 3301 · BFS 1301**, PDF **2'005 KB** |
| Weiterleitungsdatei `oereb-schwyz/geo-sz.mjs` | löst denselben EGRID auf — **eine** Wahrheit bestätigt |
| `gwr-bund --egid 302064023` (KISPI) | EGRID CH267999915472 · Parz. RI5416 · «Kinderspital» · Lenggstrasse 30 |
| `geoshop-zh --list` | **247 Zeilen** Produkt-/Formatliste live vom Geoshop-API |
| `behoerden-zh --check` | **33 aktuell · 0 geändert · 0 neu · 0 TOT** (von 33) |
| `--hilfe` alle fünf (E15-Regression) | voller Hilfetext · **rc=0**; Aufruf ohne Argument weiterhin **rc≠0** |
| 204-Diagnose, ZH-EGRID gegen SZ-Service und umgekehrt | beide melden zutreffend «EGRID im Register nicht vorhanden … Kein Negativbeweis» — **E12 hält** |

> ⚠ **Der Endpunkt `geoservices.zh.ch/geoshopapi/v1` antwortet auf die blanke Basis mit 404.**
> Das ist **kein** Defekt, sondern REST-Normalverhalten — `…/v1/products` liefert 200. Ein
> Frischecheck, der nur die Basis-URL misst, meldet hier sonst einen Phantom-Ausfall.

## Connector-Benchmark 23.08.2026 (Vertiefungslauf Revendo) — 9 von 9 grün, zwei neue Endpunkt-Befunde

Der letzte Benchmark stammt vom 01.08.2026 (Wartungslauf 02). Drei Wochen später alle Connectoren
erneut am selben JANS-Benchmark gemessen — **jeder Wert identisch**, keine Endpunkt-Erosion, kein
Revisions-Delta.

| Test | Ergebnis 23.08.2026 | gegen 01.08.2026 |
|---|---|---|
| `geo-zh` Adresse → EGRID (Giebelweg 12, 8135 Langnau a.A.) | EGRID **CH879777718909** · Parz. **3338** · BFS **136**, E 2682864.25 / N 1238219.125 | identisch |
| `geo-zh --produkt zonenplan` | **W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft** | identisch |
| `geo-zh --produkt baulinien` | 7 Baulinien (nächste **116.2 m**) + 1 Waldgrenze (**105.6 m**) | identisch |
| `geo-zh --oereb` | PDF **908'398 Bytes = 887 KB**, Dateiname `Oereb-Auszug_136_3338_2026-08-23.pdf` | 889 KB → 887 KB (Datumsstempel im Auszug, **kein** Inhaltsdelta) |
| `geo-sz --parzelle "Einsiedeln 3301" --oereb` | EGRID **CH527708492462** · Parz. **3301** · BFS **1301**, PDF **2'076 KB** | EGRID identisch; PDF 2'005 → 2'076 KB (s. Hinweis unten) |
| `gwr-bund --egid 302064023` (KISPI) | EGRID **CH267999915472** · Parz. **RI5416** · «Kinderspital», Stand 2026-08-23 | identisch |
| `geoshop-zh --list` | **247 Zeilen** Produkt-/Formatliste live | identisch |
| `behoerden-zh --check` | **33 von 33 abrufbar · 0 TOT** | 0 TOT identisch (Statuszählung s. ⚠ unten) |
| `maps.zh.ch/wfs/OGDZHWFS` GetCapabilities | **200 · 825'474 Bytes XML** | 849 KB → 825 KB (Layer-Katalog, laufend gepflegt) |

> **Hinweis zu den PDF-Grössen.** ÖREB-Auszüge tragen Erstellungsdatum und Vollzugsstand; kleine
> Grössenschwankungen sind normal und **kein** Erosionssignal. Der ZH-Auszug ist um 2 KB kleiner,
> der SZ-Auszug um 71 KB grösser als am 01.08.2026. Erosion zeigt sich an HTTP-Codes und am
> Fehlen von Nutzdaten, nicht an Bytezahlen.

> ⚠ **`behoerden-zh --check` meldet stationsabhängig — die Statuszahlen sind nicht vergleichbar,
> die TOT-Zahl schon.** Der Wartungslauf 02 protokollierte «**33 aktuell** · 0 geändert · 0 neu ·
> 0 TOT»; dieser Lauf misst «0 aktuell · 0 geändert · **33 neu** · 0 TOT». Das ist **kein**
> Änderungsbefund: der SHA-Vergleichsstand liegt im Manifest unter
> `skills/planungsgrundlagen/behoerden-dokumente/`, und dieser Pfad steht in `.gitignore`
> (Zeile `**/behoerden-dokumente/`). Er wandert also **nie** zwischen den Stationen. Auf einer
> Station, die noch nie `--sync` gelaufen ist, fehlt der Vergleichsstand, und jedes Dokument gilt
> zwangsläufig als «neu».
> **Praxisregel:** aus diesem Connector ist stationsübergreifend nur **`TOT`** aussagekräftig —
> es misst die Erreichbarkeit der 33 hinterlegten Behörden-URLs und ist unabhängig vom Manifest.
> «aktuell/geändert/neu» sind nur **innerhalb derselben Station über die Zeit** zu lesen. Wer
> «33 neu» als 33 geänderte Behördendokumente liest, jagt ein Phantom.
> *(Befund 23.08.2026, an `.gitignore` und am Quelltext `behoerden-zh.mjs` Z. 56/98/160-166
> nachgeprüft.)*

### Zwei neue Endpunkt-Befunde (beide gemessen, nicht abgeleitet)

**1 · `maps.zh.ch/wms/NaturgefahrenZH` ist HTTP-Basic-geschützt — jetzt hart gemessen.** Der
Wegweiser [[kartenportale-naturgefahren-objektschutz]] führt diesen Pfad seit Run 54 als
«geratener, login-pflichtiger WMS-Pfad, irrelevant/Sackgasse». Das war eine Annahme; sie ist
jetzt belegt: die Antwort lautet **`HTTP/2 401` mit dem Body `HTTP Basic: Access denied.`**, und
zwar auch auf ein korrekt geformtes `?SERVICE=WMS&REQUEST=GetCapabilities&VERSION=1.3.0` — es
liegt also kein Parameterfehler vor, sondern eine Zugangsschranke. Der offene Weg zu denselben
Daten bleibt der **WFS `maps.zh.ch/wfs/OGDZHWFS`** (GetCapabilities 200), Gefahrenkarte unter der
AWEL-Themengruppe 44. **Praxisfolge:** diesen WMS nicht in QGIS/AutoCAD einbinden — er fragt nach
einem Passwort, das JANS nicht hat.

**2 · `gis.zh.ch` scheitert an TLS, obwohl der Host lebt — und der bisher notierte Grund stimmt
nicht.** Gemessen am 23.08.2026:
- `gis.zh.ch` ist ein **CNAME auf `maps.zh.ch`** (193.246.69.8) — der Host existiert.
- `https://gis.zh.ch` bricht mit **`SSL: no alternative certificate subject name matches target
  host name`** ab. Grund: der Geodienst-Server liefert ein Zertifikat **`CN=maps.zh.ch`
  (O=Kanton Zürich)** mit einer **expliziten Liste von 19 SANs** — `maps.zh.ch`, `wms.zh.ch`,
  `map.zh.ch`, `geolion.zh.ch`, `oerebdocs.zh.ch`, `geo.zh.ch`, die `ktzh.ch`-Varianten und die
  `www.`/`web.`-Formen davon. **`gis.zh.ch` steht nicht darin.**
- `http://gis.zh.ch` (ohne TLS) leitet dagegen sauber weiter auf
  **`https://www.zh.ch/de/planen-bauen/geoinformation.html`** (HTTP 200).

> ⚠ **Präzisierung der dokumentierten `*.zh.ch`-Falle.** Der Kopf von
> `wissen/tools/link-frischecheck.sh` erklärt Fehler dieser Art mit «das Wildcard-Zertifikat
> `*.zh.ch` deckt nur eine Label-Ebene». Für die Staatskanzlei-Server stimmt das — `www.zh.ch`
> und `zh.ch` liefern tatsächlich ein echtes Wildcard **`CN=*.zh.ch`, SAN `*.zh.ch` + `zh.ch`**
> (gemessen 23.08.2026). **Unter `.zh.ch` gibt es aber zwei Zertifikatswelten:** die Geodienste
> laufen auf einem eigenen Server **ohne** Wildcard, mit der oben genannten SAN-Liste. Ein
> `<thema>.zh.ch`-Name kann dort also selbst auf **einer** Label-Ebene an TLS scheitern, wenn er
> nicht namentlich in der SAN-Liste steht. Der Frischecheck-Befund `ERR60` bei `gis.zh.ch` ist
> deshalb **kein toter Host**, sondern eine SAN-Lücke.
>
> **Zitierregel daraus:** `gis.zh.ch` nicht mehr als `https://`-Adresse zitieren. Kanonisch sind
> **`www.zh.ch/de/planen-bauen/geoinformation.html`** (Einstieg) und **`maps.zh.ch`**
> (Kartendienst).

*Messungen: `curl` mit Browser-User-Agent, `dig`, `openssl s_client`, alle am 23.08.2026;
Connectoren lokal ausgeführt (node v22.11.0).*

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs` kapselt die ganze Kette:
`node skills/planungsgrundlagen/connectors/geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb --out <A> --out <B>`.

> ⚠ **Pfad vollständig angeben.** Die Connectoren liegen unter
> `skills/planungsgrundlagen/connectors/`, **nicht** unter `connectors/` in der Hub-Wurzel (dort
> liegen nur bexio, zefix, truninger-ds3, ebaugesuche-zh, hub-setup, claude-usage). Die verkürzte
> Form `node connectors/geo-zh.mjs …` scheitert mit `MODULE_NOT_FOUND` und sieht aus wie ein
> defekter Connector. Im Wartungslauf 02 in `skills/planungsgrundlagen/SKILL.md` (3 Stellen),
> `skills/massgebendes-terrain/SKILL.md` und [[recht-norm-radonschutz]] korrigiert.

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
