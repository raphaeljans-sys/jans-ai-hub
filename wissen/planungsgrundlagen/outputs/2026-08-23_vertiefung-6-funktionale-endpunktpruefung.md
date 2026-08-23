# Vertiefungslauf 6 planungsgrundlagen — erste funktionale Endpunktprüfung, zwei stumme Fehler

**Datum:** 23.08.2026 · **Station:** Revendo (macbook-revendo) · **Auftrag:** Raphael — Endpunkte,
Links und Connector-Wege verifizieren, belegt arbeiten. Fortsetzung von
`2026-08-23_vertiefungslauf-endpunkte-connectoren.md` und
`2026-08-23_vertiefung-2-3-lsv-und-folgewirkung.md`.

**Vorlauf gelesen:** `CLAUDE.md` der KB, CHANGELOG-Kopf bis Vertiefungslauf 5 (der Eintrag lag zum
Lesezeitpunkt nur im lokalen Klon vor, die NAS-Kopie hing einen Commit zurück — die im Lauf 4
belegte Latenz), `wiki/QUESTIONS.md`-Kopf mit Zuständigkeitsvermerk und Werkzeugkasten, beide
Vorgänger-Reports.

---

## Ergebnis in einem Satz

Die fünf vorangegangenen Läufe haben Endpunkte an **HTTP-Code und Antwortgrösse** gemessen; dieser
Lauf hat die **Nutzdaten** gemessen — und dort lagen **zwei stumme Fehler**, davon **ein echter
Connector-Bug, der seit 06/2026 leere Bilder produziert hat**.

## 1 · Behoben — `--produkt bauzonen` legte seit 06/2026 vollständig leere PNG ab

Die harmonisierte Bauzonen-Kachel kommt über `wms.geo.admin.ch` GetMap. Artikel und Connector
verlangten die BBOX als **N,E**, mit ausdrücklicher Warnung, E,N sei die Falle. **Es ist umgekehrt:
EPSG:2056 ist mit dem Rechtswert zuerst definiert, richtig ist E,N.**

| Achsfolge | HTTP | Content-Type | Bytes | Bildinhalt (pixelgenau) |
|---|---|---|---|---|
| **N,E** (bisher dokumentiert) | 200 | image/png | 3'957 | 1000×1000 RGBA, **eine einzige Farbe: `(0,0,0,0)`, 100 % transparent** |
| **E,N** (richtig) | 200 | image/png | 32'185 | 575–796 Farben, 51.8 % `RGBA(255,166,0)` = Wohnzone |

Die 3'957 Bytes sind exakt der Wert, der im Artikel als Beleg stand («Validiert: 1000×1000-PNG,
~4 KB»), und der Connector loggte dazu «bauzonen: … (4 KB)». **Der Fehler hat sich als Erfolg
gemeldet** — Statuscode, Content-Type, Bildgrösse und Dateigrösse waren alle plausibel.

**Die Gegenprobe, die es entscheidet** (`REQUEST=GetFeatureInfo`, `INFO_FORMAT=application/json`,
Pixel `I=500&J=500`, gleiche BBOX):

- **E,N** → Feature mit `bfs_no 136` · `name Langnau am Albis` · `ch_bez_d Wohnzonen` ·
  `ch_code_hn 11` · `flaeche 40583` · `kt_kz ZH`.
- **N,E** → leere FeatureCollection.

Damit ist nicht nur belegt, dass die Kachel leer war, sondern auch, dass die richtige Reihenfolge
die richtige Parzelle trifft.

**Korrektur:** `geo-zh.mjs`, Funktion `bauzonenMap`, eine Zeile, mit Belegkommentar. Vorher/Nachher
am selben Connector-Aufruf gemessen: `4 KB, 100 % transparent` → **`28 KB`, 51.8 % Zonenfläche**.

## 2 · Berichtigt — «Achsen unkritisch, weil quadratische BBOX» ist falsch

In `kartenportale-zonenplan-zh.md` stand zum ZH-OGD-WFS, die Achsenreihenfolge sei unkritisch, weil
die BBOX quadratisch ist. Eine quadratische BBOX macht nur die **Halbweiten** gleich, nicht die
**Mittelpunktskoordinaten**: wer E und N vertauscht, fragt an einer völlig anderen Stelle.

Gemessen am Benchmark Kat. 3338, identischer Aufruf, nur die Reihenfolge getauscht:
**E,N → 1 Feature** (`typ_gde_abkuerzung W/1.5`, `baumassenziffer_max 1.5`), **N,E → 0 Features**.

Der Connector liegt hier richtig (`bbox = ${e-half},${n-half},…`); falsch war allein der Satz. Auch
dieser Fehler wäre stumm: `HTTP 200`, gültiges GeoJSON, leere `features`-Liste — **nicht von einer
Parzelle ohne Zonenfestlegung zu unterscheiden.**

## 3 · Vorsorglich geprüft — wann ein «keine Treffer» nichts über die Parzelle aussagt

`fetchDenkmalschutz()` kapselt **beide** Layer-Abfragen in ein `try { … } catch { /* optional */ }`.
Netzfehler, umbenannter Layer oder Zugangsschranke führen damit nicht zu einer Fehlermeldung,
sondern zur Ausgabe **«keine Treffer im Fenster»** — im Wortlaut identisch mit dem echten
Negativbefund. Für den Regelbetrieb ist der Auffangblock richtig; er macht den Negativbefund für
sich genommen aber nicht belastbar.

Beide Layer darum an ihren dokumentierten Positiv-Benchmarks nachgemessen:

| Layer | Probe | Ergebnis |
|---|---|---|
| `…0368_…denkmalschutzobjekte_p` | ±60 m um E 2711892 / N 1236834 (Wald ZH, Run 40) | **2 Objekte** — «Ehem. Kaninchenstall», «Garten», Ensemble «Wald (ZH): ‹Montana›», 1906-1907, Einstufung regional, GVZ 12001936 |
| `…0087_arv_kaz_archzonen_f` | ohne BBOX, `COUNT=2` | **2 Zonen** — Feuerthalen (BFS 27, `zonen_nr` 4), Dachsen (BFS 25, `zonen_nr` 10) |

Beide leben. **Praxisregel im Artikel:** wer sich in einem Dossier auf «keine Schutzobjekte»
stützt, hält das Ergebnis einmal gegen einen Punkt, an dem der Layer nachweislich Treffer liefert.

## 4 · Bund-Endpunkte funktional bestätigt (kein Delta zu 06/2026)

| Endpunkt | Messung 23.08.2026 | gegen Doku |
|---|---|---|
| `api3.../rest/services/height` | `{"height":"549.1"}` | identisch |
| `api3.../SearchServer` | E 2682864.25 / N 1238219.125 · lon 8.534085 / lat 47.289661 · `featureId 57977_0` | identisch |
| STAC `swissimage-dop10` | 3 Items: 2019 · 2022 · 2025, je 2 Assets | identisch, **kein neuer Jahrgang** |
| STAC `swissalti3d` | `swissalti3d_2020_2682-1238`, **4 Assets**: 0.5 m und 2 m, je `.tif` **und** `.xyz.zip` | identisch; die Punktwolke gibt es zu **beiden** Auflösungen |
| `geodienste.ch/downloads/av/` | 200 ohne Umleitung | identisch |
| übrige Connector-Produkte (`denkmalschutz`, `grundwasser`, `baulinien`, `zonenplan`) | Inhalt oder ausdrücklich benannter Negativbefund | identisch zu Lauf 1 |

**STAC v0.9 läuft weiter, v1 ist ergebnisgleich.** Der v0.9-Root antwortet 200 und meldet sich
weiterhin als `stac_version 0.9.0`, **ohne Abkündigungshinweis**; die identische Abfrage unter
`…/api/stac/v1/…` liefert **exakt dieselben drei Item-IDs**. Die Umstellung wäre ergebnisneutral
und einzeilig — **bewusst nicht vorgenommen**, weil kein Messwert sie verlangt und sie sonst
ungeprüft mitliefe.

## 5 · Die verallgemeinerbare Regel

**Ein Endpunkt ist erst geprüft, wenn der Inhalt gemessen ist.** HTTP-Code, Content-Type und
Bytezahl belegen, dass ein Server geantwortet hat, nicht dass er das Bestellte geliefert hat. Beide
heute gefundenen Fehler haben fünf Prüfläufe überstanden, weil jeder auf der Transportebene endete
— und der eine hat sogar seine eigene Bytezahl als Beleg hinterlassen.

Praktisch heisst «Inhalt messen»: bei einem Bild notfalls Pixel zählen (hier ein 15-zeiliger
PNG-Dekoder aus `zlib`, weil auf dieser Station weder PIL noch ImageMagick liegt), bei GeoJSON
`features > 0` **gegen eine Positivprobe**, bei einem PDF die Seitenzahl. Ein Negativbefund ist erst
dann eine Aussage über das Objekt, wenn derselbe Weg an anderer Stelle nachweislich Treffer
liefert — sonst ist er eine Aussage über den Endpunkt. Das ist dieselbe Familie wie die bereits
belegte Regel «ein leeres Suchergebnis ist zuerst eine Aussage über das Werkzeug»
(Rule `auto-verbesserungen` 260730b/260807).

## Weiterhin blockiert

**C-BSP-2026** — die Bring-Schuld an `normen` (Destillat VKF «Brandschutzplatten», Version 1-0 vom
10.03.2026). Die KB `normen` wurde auch während dieses Laufs bearbeitet (Commits 22:42 und 22:49
desselben Abends); ein Fremdschreiben würde die dortige Arbeit weiterhin kreuzen. Unverändert an
Raphael gemeldet.

Ebenfalls unverändert: die inhaltlichen K/R/C/D-Punkte (laut Zuständigkeitsvermerk keine Aufgabe
eines Endpunktlaufs) und der Nachzug der beiden VKF-Fassungs-Vorbehalte, der auf
`established`-Destillate aus `normen` wartet.

## Geänderte Dateien

- `skills/planungsgrundlagen/connectors/geo-zh.mjs` — Achsenreihenfolge `bauzonenMap` korrigiert
  (+6/−2), Belegkommentar.
- `wiki/kartenportale-bund-geodaten.md` — §4 berichtigt, Nachmessungstabelle, Frontmatter (+58/−8).
- `wiki/kartenportale-zonenplan-zh.md` — Achsen-Berichtigung, Frontmatter (+14/−3).
- `wiki/kartenportale-denkmalschutz-isos.md` — Positivproben und `catch`-Warnung, Frontmatter
  (+24/−1).
- `wiki/QUESTIONS.md` — Laufeintrag (+71/−0, append-only bestätigt).
- `CHANGELOG.md` — Eintrag (+51/−0, append-only bestätigt).

Alle Umfänge mit `git diff --numstat` gegen die Laufbasis `267cb0fc` gemessen. **Hinweis für den
nächsten Lauf:** `git-auto-sync.sh` committet auf dieser Station im Minutentakt und schneidet
laufende Arbeit mit; ein `git diff --numstat` ohne Basis-Commit zeigt darum nur den Rest seit dem
letzten Auto-Commit, nicht den Lauf. Immer gegen den Stand vor Laufbeginn messen.

## Werkzeuge und Messmittel

`curl` mit Browser-User-Agent (GetMap, GetFeatureInfo, GetFeature, STAC, height, SearchServer) ·
`node v22.11.0` mit `geo-zh.mjs` (Vorher/Nachher am selben Aufruf) · eigener PNG-Dekoder in
Python-`zlib` (`/tmp/pg6-png.py`, Pixel- und Farbhistogramm) · `git diff --numstat` gegen
Laufbasis. Kein Schreibzugriff auf `raw/`, keine Vertrags-, Bewerbungs- oder Personaldaten berührt.
