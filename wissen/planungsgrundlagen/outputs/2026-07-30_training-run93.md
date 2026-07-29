# Training Run 93 — Kartenportale (PL-01) + Energie (PL-04)

**Datum:** 2026-07-30 · **Station:** Mac Mini · **Rotation:** Kartenportale + Energie, turnusgemäss
nach Run 92 (Recht/Norm + Brandschutz) · **Modus:** Token-Vollgas (2 Domänen)

## Ausgangslage

Gelesen: `training/curriculum.md` (0 offene Lektionen), `wiki/QUESTIONS.md`, letzter Report
Run 92 (2026-07-28). Zweitinstanz-Check vor Laufbeginn: `ps` zeigt keinen zweiten
`planungsgrundlagen`-Lauf; jüngste `outputs/`-Datei ist Run 92 → Nummer 93 frei (Rule
auto-verbesserungen, zweistufiger Check).

Die Wiki-Dateien mit mtime 29.07. stammen aus **Cross-KB-Läufen** (Wissens-Chef Run 20, Antwort der
KB `normen` Run 36), nicht aus diesem Loop — der Domänen-Turnus war korrekt bei Run 92 stehen
geblieben.

## Befund 1 — Quellbestand: 28. Erschöpfungsbestätigung

```
find "PL - 01 Kartenportale" -newer <run92> -type f  → nur .849C9593-… (OneDrive-Marker)
find "PL - 04 Energie"       -newer <run92> -type f  → nur .849C9593-…
find "PL - 02_Recht_Norm"    -newer <run92> -type f  → .849C9593-… + ein .DS_Store
find "PL - 03 Brandschutz"   -newer <run92> -type f  → nur .849C9593-…
```

**Keine einzige neue oder geänderte Inhaltsdatei** in allen vier PL-Ordnern. Bewusst keine
künstlichen Zusatzfragen erzeugt, um den 10–16-Fragen-Korridor formal zu füllen (Rule
`wissens-bibliothekar`: keine Pseudo-Tiefe).

**Stattdessen** wurde der Lauf auf die Achse gelegt, die unabhängig vom Dateibestand erodiert und
seit Run 54 (20.07.) nicht mehr geprüft war: **Endpunkte, zitierte URLs und der eigene
Connector-Code.** Dort lagen vier belegte Fehler.

## Befund 2 — Endpunkt-Frischecheck: 13 von 13 live

Gemessen am realen JANS-Benchmark **Giebelweg 12, 8135 Langnau am Albis** (Projekt 2621).

| Endpunkt | Ergebnis |
|---|---|
| `maps.zh.ch/oereb/v2/extract/pdf.pdf` | 200 · PDF 909'640 B |
| `map.geo.sz.ch/oereb/extract/pdf` (2 belegte SZ-EGRID) | 200 · PDF 623'499 B / 2'052'706 B |
| `api3.geo.admin.ch/…/height` | 200 · **549.1 m ü.M.** |
| `api3.geo.admin.ch/…/SearchServer` | 200 · E 2'682'864.25 / N 1'238'219.125 |
| `api3.geo.admin.ch/…/identify` | 200 · EGRID CH879777718909 · Parz. 3338 · BFS 136 |
| `maps.zh.ch/wfs/OGDZHWFS` GetCapabilities | 200 · 849'192 B |
| ZH-WFS Zonenplan | 200 · **W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft** |
| ZH-WFS Baulinien ±150 m | 200 · 7 Baulinien (nächste 116.2 m) + 1 Waldgrenze (105.6 m) |
| ZH-WFS Denkmalschutz / Grundwasser / Naturgefahren | 200 · je Negativbefund |
| `data.geo.admin.ch` STAC swissALTI3D | 200 · JSON |
| `wms.geo.admin.ch` GetCapabilities | 200 · 2.7 MB |
| `maps.zh.ch?topic=OerebKatasterZH`, `oerebdocs.zh.ch`, `geodienste.ch/downloads/av`, `ebau-sz.ch`, `map.geo.sz.ch`, `gisos.bak.admin.ch/sites`, `achtgradost.ch` | je 200 |
| `energievollzug.ch`, `energie-zentralschweiz.ch/vollzug/even`, `endk.ch` | je 200 |

EGRID, Parzelle, BFS und alle Zonenwerte **unverändert** gegenüber dem Erstbezug vom 05.06.2026 →
keine Endpunkt-Erosion, keine Revision an dieser Parzelle. Registriert als **K63**.

## Befund 3 — zwei echte Connector-Fehler, behoben und nachgemessen

### (a) Datums-Prefix war UTC statt Lokalzeit — betraf alle vier Connectoren

`isoDate()` bildete das Datum mit `new Date().toISOString().slice(0,10)`. Das ist **UTC**: zwischen
00:00 und 02:00 CEST datiert jede Ausgabedatei **einen Tag zurück** — genau im Nachtfenster, in dem
die Loops laufen. Belegt: um **00:39 CEST am 30.07.** erzeugte `geo-zh.mjs` die Datei
`Zonenplan-ZH_136_3338_2026-07-29.json`. Verstoss gegen Rule `dateinamen-konvention`.

Behoben in `geo-zh.mjs`, `geo-sz.mjs`, `gwr-bund.mjs`, `behoerden-zh.mjs` (→ `toLocaleDateString("sv-SE")`).
**Nachgemessen im selben Lauf:** `Zonenplan-ZH_136_3338_2026-07-30.json` und
`Oereb-Auszug_136_3338_2026-07-30.pdf`. Registriert als **E11**.

Bestandssweep über `connectors/` und `skills/` fand **acht** Vorkommen desselben Musters; die vier
fremden (`bexio.mjs`, `shop-orders.mjs`, `recht-ch.mjs`, `oereb-schwyz/geo-sz.mjs`) wurden
**nicht** angetastet — `bexio.mjs` ist buchungsrelevant (Rule 260702). Als **E13** zur Entscheidung
vorgelegt.

### (b) HTTP 204 wurde als «kein PDF» fehlgemeldet

Ein OEREB-Service antwortet auf einen ihm **unbekannten EGRID mit HTTP 204 + leerem Body**, nicht
mit 404 — gemessen an beiden Kantonen (ZH-Service mit SZ-EGRID → 204; SZ-Service mit ZH-EGRID →
204; beide mit einem nicht belegten EGRID → 204). Da 204 im ok-Bereich von `fetch` liegt, lief der
`!r.ok`-Wächter daran vorbei und der Abbruch kam erst am content-type — mit der Meldung
«OEREB-Antwort ist kein PDF (content-type )», die einen **Serverdefekt** suggeriert, während in
Wahrheit der **Kanton falsch gewählt** war (der häufigste Fehlgriff bei Grenzgemeinden).

Beide Connectoren fangen den 204 jetzt eigens ab und benennen Ursache samt Abhilfe. Beide
Fehlerpfade und der Erfolgspfad je einmal nachgemessen (Rule: Freigabe- UND Abweisungspfad prüfen).
Registriert als **E12**, Messreihe in `wiki/kartenportale-oereb-egrid-bezug.md`.

**Methodenlehre daraus:** ein Endpunkt-Test braucht einen **belegten** EGRID. Ein erfundener liefert
dasselbe 204 wie ein toter Server und beweist nichts. In diesem Lauf zunächst selbst getappt — der
erste SZ-Test lief gegen einen nicht belegten EGRID und war damit wertlos; wiederholt mit den zwei
im Wiki belegten SZ-EGRID.

## Befund 4 — vier Energie-Artikel zitierten eine erloschene URL

`zh.ch/energienachweise` wurde in vier Artikeln als belegte Fundstelle geführt (mit Abrufdatum
12.06./04.07.2026). **Gemessen 30.07.2026: HTTP 404**, mit und ohne `www`. Es war nie eine amtliche
Shortlink-Weiche, sondern eine verkürzte Notation. Ersetzt durch die nachgemessene Vollform
`www.zh.ch/de/planen-bauen/bauvorschriften/bauvorschriften-gebaeude-energie/energienachweise.html`
(200 · 93 KB).

**Bemerkenswert:** `energie-private-kontrolle-zh.md` trug die korrekte Vollform im Fliesstext
bereits, während die eigene Frontmatter-Quellenzeile die tote Kurzform führte — die KB kannte die
richtige Adresse und hat sie nicht propagiert. Das ist kein Entdeckungs-, sondern ein
**Propagierungsfehler**, und er bestätigt die Ersetzung unabhängig.

**Verallgemeinerbare Lehre:** eine Fundstelle wird in der Form zitiert, in der sie **aufrufbar**
ist. Eine gekürzte URL ist eine Merkhilfe, keine Quelle; sie entwertet den Beleg in genau dem
Moment, in dem ihn jemand (Behörde, Bauherr, spätere Session) nachprüfen will. Registriert als **D14**.

Zusätzlich **D15**: In `energie-energienachweis-zh-formulare.md` stand «EGID CH527708492462» — das
ist ein **EGRID** (`CH` + 12 Zeichen), ein EGID ist die 9-stellige Gebäudenummer. Korrigiert;
Bestandssweep in beiden Richtungen über das ganze Wiki → keine weiteren Fälle.

Der Wert selbst ist richtig, nur sein Etikett war falsch — unabhängig bestätigt durch den
Regressionstest von `geo-sz.mjs` im selben Lauf: Parzellensuche «Einsiedeln 3301» löst auf
**EGRID CH527708492462 · Parzelle 3301 · BFS 1301** auf, genau der Fall des Artikels.

## Regressionstests nach den Code-Änderungen

| Test | Ergebnis |
|---|---|
| `node --check` auf alle vier Connectoren | Syntax OK |
| `geo-zh.mjs` Vollkette Adresse → EGRID → OEREB | 200, `Oereb-Auszug_136_3338_2026-07-30.pdf` (888 KB) |
| `geo-zh.mjs` sechs WFS-Produkte | alle sechs antworten, Werte unverändert |
| `geo-sz.mjs` Parzellensuche + OEREB (ohne EGRID) | EGRID CH527708492462, `Oereb-Auszug_1301_3301_2026-07-30.pdf` (2'005 KB) |
| `gwr-bund.mjs` per EGRID (KISPI CH267999915472) | 8 Gebäude mit EGID korrekt aufgelöst |
| `behoerden-zh.mjs` | lädt, Modus-Prüfung greift |
| beide 204-Fehlerpfade (ZH↔SZ vertauscht) | neue, zutreffende Meldung |

## Befund 5 — C39 geschlossen, Diagnose vom 28.07. korrigiert

Die 201-Byte-Datei im Lignum-4.1-Ordner ist **lesbar** und **kein defekter Symlink**, wie das
Nachaudit vom 28.07.2026 festhielt. Direkt am Original gemessen:

```
stat    → Modus=-rwx------  Typ=Regular File  Groesse=201  Links=1
test -L → falsch     test -f → wahr
file(1) → Unicode text, UTF-8 text, with no line terminators
```

Der **Inhalt** ist der eigene Ziel-Pfad, nach 201 Byte mitten im Wort abgeschnitten — die Signatur
einer abgebrochenen Umbenenn-/Kopieroperation, bei der ein Pfad-String als Dateikörper geschrieben
wurde. Kein Dokument, **kein Wissensverlust**: die drei echten Lignum-PDF (`_A/_B/_C`, 20.02.2025)
liegen unverändert daneben und sind längst volltext erfasst.

Zwei Korrekturen am Eintrag vom 28.07.: (a) kein Symlink, (b) 201 statt 203 Byte. **Und eine
Lehre:** der `Resource deadlock avoided`-Fehler war **doch transient** — Run 92 hielt ihn wegen
mehrminütiger Persistenz für strukturell, er löste sich ohne Zutun. Die dort gewählte Praxis
(dokumentieren, auf den nächsten Turnus verschieben, keine Retries erzwingen) war damit richtig.

Die Datei wurde **nicht gelöscht** — SharePoint-/Quellordner werden vom Loop nie verändert.
Aufräum-Hinweis steht in QUESTIONS (C39).

## Befund 6 — Datenstand-Audit: keine Verletzung

Alle 25 Artikel der beiden Schwerpunkt-Domänen tragen `last_updated` zwischen 2026-06-05 und
2026-07-30, also **weit innerhalb** der 18-Monats-Leitplanke. Der älteste war
`kartenportale-oereb-egrid-bezug` (05.06.2026) — genau der Artikel, der heute inhaltlich gewachsen
ist. Kein ⚠-Vermerk nötig.

## Verifikations-Protokoll (Pflicht-Stufe PROGRAMM.md)

| Aussage | Prüfung | Verdikt |
|---|---|---|
| 13 Endpunkte live | eigene HTTP-Messung, belegte EGRID | **bestanden** |
| 204 = EGRID unbekannt (nicht Serverdefekt) | 5 Gegenproben über 2 Kantone | **bestanden** |
| UTC-Datumsfehler | reproduziert vor dem Fix, nachgemessen nach dem Fix | **bestanden** |
| Ersatz-URL Energienachweise | HTTP 200 + unabhängig durch die KB selbst bestätigt | **bestanden** |
| C39 kein Symlink | `stat` + `test -L` + `file(1)` am Original | **bestanden** |
| Diagnose 28.07. («defekter Symlink, 203 B») | am Original widerlegt | **beanstandet, korrigiert** |

## Geändert

- `skills/planungsgrundlagen/connectors/geo-zh.mjs` — 204-Diagnose, lokales Datum
- `skills/planungsgrundlagen/connectors/geo-sz.mjs` — 204-Diagnose, lokales Datum
- `skills/planungsgrundlagen/connectors/gwr-bund.mjs` · `behoerden-zh.mjs` — lokales Datum
- `wiki/kartenportale-oereb-egrid-bezug.md` — 204-Fallstrick, Endpunkt-Tabelle, SZ als validiert,
  UTC-Warnung, Benchmark nachgeführt, `last_updated` 2026-07-30
- `wiki/energie-energienachweis-zh-formulare.md` — URL, EGID→EGRID, Link-Frischecheck-Kasten
- `wiki/energie-even-plattform-bedienung.md` · `energie-private-kontrolle-zh.md` ·
  `energie-uebersicht.md` — URL, `last_updated`
- `wiki/QUESTIONS.md` — K63, D14, D15, E11, E12 geschlossen; E13, E14 neu offen; C39 korrigiert
- `training/curriculum.md` — Run-93-Eintrag

## Nächster Schritt

1. **Turnusgemäss ist Recht/Norm + Brandschutz dran** (Run 94). Für neues Quellmaterial ist dort
   nichts zu erwarten (28 Nullbefunde). Sinnvoll wäre stattdessen das **Pendant zum heutigen Lauf**:
   Link-Frischecheck der in PL-02/PL-03 zitierten amtlichen URLs (zhlex, bsvonline, VKF) — dieselbe
   Erosionsachse, dort seit Run 62 nicht systematisch geprüft.
2. **Entscheid Raphael offen:** E13 (UTC-Datum in vier fremden Connectoren, `bexio.mjs` nur mit
   Freigabe) und E14 (`geo-sz.mjs` doppelt und divergent, `oereb-schwyz` arbeitet mit einer sieben
   Wochen alten Abspaltung).
3. **Rücktaktung, präzisiert:** die Empfehlung aus Run 91/92 bleibt für das Quellen-Lesen richtig.
   Sie greift aber zu kurz — Endpunkte, zitierte URLs und eigener Code erodieren unabhängig vom
   Dateibestand, und genau dort lagen heute vier belegte Fehler. Vorschlag: Quellen-Turnus
   zurücktakten, **schlanken monatlichen Endpunkt-/Link-/Connector-Check behalten**.
4. **D9** bleibt der einzige inhaltliche Restposten und wartet weiter auf ein reales MFH-/ZEV-Projekt.
