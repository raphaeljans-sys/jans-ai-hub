# Vertiefungslauf 7 planungsgrundlagen — die vier ungeprüften Connectoren, und ein Auszug, der mehr sagt als sein PDF

**Datum:** 23.08.2026 · **Station:** Revendo (macbook-revendo) · **Auftrag:** Raphael — Endpunkte,
Links und Connector-Wege verifizieren, belegt arbeiten. Fortsetzung von
`2026-08-23_vertiefung-6-funktionale-endpunktpruefung.md`.

**Vorlauf gelesen:** `CLAUDE.md` der KB, CHANGELOG-Kopf bis Vertiefungslauf 5, `wiki/QUESTIONS.md`
mit Zuständigkeitsvermerk und Werkzeugkasten, Report von Lauf 6. **Laufbasis für alle
Umfangsmessungen:** Commit `8f7a0da7`.

---

## Ergebnis in einem Satz

Lauf 6 hat die Nutzdaten von `geo-zh.mjs` und den Bund-Endpunkten gemessen; dieser Lauf hat die
**vier nie auf Nutzdatenebene geprüften** Connectoren nachgeholt — **kein Connector war defekt**,
aber der OEREB-Auszug kann deutlich mehr, als die KB wusste, und eine seiner drei Kategorien ist
juristisch leicht falsch zu lesen.

## Warum diese vier

Lauf 6 endete mit der Regel «ein Endpunkt ist erst geprüft, wenn der Inhalt gemessen ist», und
prüfte danach `geo-zh` und die Bund-Endpunkte. Die übrigen vier Connectoren des Skills —
`geo-sz.mjs`, `gwr-bund.mjs`, `geoshop-zh.mjs`, `behoerden-zh.mjs` — waren in fünf vorherigen
Läufen nur an HTTP-Code und Antwortgrösse gemessen worden. Genau die Lücke, die Lauf 6 als
gefährlich belegt hat.

Vorab geprüft und **ohne Befund**: die in Lauf 6 korrigierte Achsenfolge kommt in keinem anderen
Connector falsch vor. Alle übrigen BBOX-Konstruktionen (`geo-zh.mjs` Z. 108/116/271,
`geo-sz.mjs` Z. 163) stehen bereits auf E,N.

## 1 · Neue Fähigkeit — beide OEREB-Services liefern auch JSON und XML

Die KB führte für ZH und SZ **nur den PDF-Endpunkt**. Beide Services antworten aber auch auf die
im Bundesstandard vorgesehenen strukturierten Pfade, login-frei:

| Aufruf | ZH (`maps.zh.ch/oereb/v2/…`) | SZ (`map.geo.sz.ch/oereb/…`) |
|---|---|---|
| `extract/json?EGRID=` | 200 · 38'303 B | 200 · 28'017 B |
| `extract/xml?EGRID=` | 200 · 80'495 B | 200 · 54'135 B |
| `capabilities/json` | 200 · 4'979 B | 200 · 3'386 B (26 Themen) |
| `versions/json` | 200 · 124 B | 200 · 129 B |
| `extract/reduced/json/<EGRID>` | **404** | **404** |

Der JSON-Auszug führt Parzelle, EGRID, Fläche, Gemeinde und je Beschränkung Typ, Flächenanteil,
Prozentsatz, zuständige Stelle sowie die **Rechtsvorschriften mit Links** — alles, was sonst aus
dem PDF abgelesen wird, nur ohne Ablesen. Der dokumentierte Standardpfad `extract/reduced/json/`
gibt bei **beiden** Kantonen 404 und ist nicht zu verwenden.

Benchmark Giebelweg 12 (`CH879777718909`): Parz. 3338, Langnau am Albis (136), 768 m², drei
Beschränkungen (Grundnutzungen `C110111`, überlagernde Nutzungen `C690901`,
Lärmempfindlichkeitsstufen — je 768 m² / 100 %), 31-Einträge-Glossar.

## 2 · Der Befund, der in ein Dossier durchschlagen kann

Der Auszug kennt **drei** Kategorien, nicht zwei: betroffen, nicht betroffen — und **«Themen, zu
denen noch keine Daten vorhanden sind»** (`ThemeWithoutData`). Die dritte ist **keine Aussage über
die Parzelle**, sondern über die Datenabdeckung der Gemeinde. Im PDF stehen die zweite und die
dritte Liste unmittelbar untereinander auf Seite 2.

Die Abdeckung ist **je Gemeinde verschieden** — an fünf Parzellen gemessen:

| Parzelle | betroffen | nicht betroffen | ohne Daten |
|---|---|---|---|
| Wangen 25 (1349) | 2 | 23 | **`ch.Gewaesserraum`** |
| Schwyz 1 (1372) | 3 | 22 | **`ch.Gewaesserraum`** |
| Freienbach 1 (1322) | 3 | 22 | **`ch.Gewaesserraum`** |
| Einsiedeln 1 (1301) | 2 | 24 | — |
| Langnau a.A. 3338 (ZH) | 3 | 23 | — |

**Warum das juristisch heikel ist.** § 4 Abs. 2 PBG SZ sagt: wo auf die Festlegung des
Gewässerraums **verzichtet** wurde, ist kein Gewässerabstand einzuhalten. Ein im OEREB-Auszug
fehlender Gewässerraum sieht damit wie die Bestätigung genau dieses Falls aus. **Er ist es
nicht** — «keine Daten im Kataster» und «Verzicht auf die Festlegung» sind verschiedene
Sachverhalte, und der Auszug unterscheidet sie nicht.

**Ausdrücklich nicht behauptet:** welcher der beiden Fälle in Wangen, Schwyz und Freienbach
vorliegt. Das steht in keiner der geprüften Quellen und wird nicht geraten; es ist bei der
Gemeinde bzw. dem Amt für Wasserbau abzuklären. Belegt ist allein, dass der Auszug es nicht
hergibt.

Das ist Lauf 6 auf ein **Rechtsdokument** angewandt: ein Negativbefund ist erst dann eine Aussage
über das Objekt, wenn die Quelle für dieses Objekt überhaupt Daten führt.

## 3 · Im Connector verankert

`geo-sz.mjs --oereb` zieht seit diesem Lauf zusätzlich den Themenstand und warnt, wenn
`ThemeWithoutData` nicht leer ist. Vorher/Nachher am selben Aufruf gemessen:

- **Wangen 25** → `Themen: 2 betroffen · 23 nicht betroffen · 1 OHNE DATEN` plus dreizeilige
  Warnung, dass das Fehlen kein Negativbefund ist.
- **Einsiedeln 1** → `Themen: 2 betroffen · 24 nicht betroffen`, **keine** Warnung.

Der Themenstand steht auch im `--json` unter `oereb.themen` (inkl. `stand_kataster`, für Wangen
`2026-08-10T22:36:16`). Der Abruf ist in `try/catch` gekapselt und **nie fatal** — der PDF-Bezug
bleibt die Hauptleistung. Regressionspfade nachgeprüft: Lauf ohne `--oereb` unverändert, `--json`
gültig, `--hilfe` rendert den ergänzten Kopf.

## 4 · Schema-Falle — derselbe Standard, zwei Implementierungen

| Stelle | ZH | SZ |
|---|---|---|
| Wrapper unter `GetExtractByIdResponse` | `Extract` | `extract` |
| Theme-Code | `code` (+ `SubCode`) | `Code` |
| Grundbuchkreis | — | `SubunitOfLandRegister` |

Beide Abweichungen sind **stumm**: der falsche Schlüssel liefert `undefined`, keine Ausnahme — die
Auswertung meldet dann «keine Themen betroffen». `geo-sz.mjs` liest beide Schreibweisen. Mir selbst
ist die Falle im Lauf zweimal zugestossen (erst `KeyError`, dann ein stilles `None`), was sie gut
belegt.

## 5 · Präzisierung eines Befunds vom selben Tag

Vertiefungslauf 1 hielt fest, der `behoerden-zh`-Vergleichsstand «wandert nie zwischen den
Stationen». Das gilt nur für den **SSD-Klon**. Der Ablageort ist relativ zum ausgeführten
Connector; aus dem kanonischen **NAS-Pfad** gestartet — wie es der Scheduled Task
`behoerden-zh-check` tut — liegt das Manifest unter
`/Volumes/daten/jans-ai-hub/skills/planungsgrundlagen/behoerden-dokumente/_manifest.json` und ist
über SMB **allen Stationen gemeinsam**. Es existiert dort, Stand **13.08.2026**, 33 Einträge.

Nachgemessen, derselbe `--check` mit anderem Ablageort:

| Basis | Ergebnis |
|---|---|
| SSD-Klon (keine Basis) | 0 aktuell · 0 geändert · **33 neu** · 0 TOT |
| NAS-Basis vom 13.08.2026 | **33 aktuell** · 0 geändert · 0 neu · 0 TOT |
| Scratch-Ordner: `--sync`, dann `--check` | 33 neu (geschrieben) → **33 aktuell** |

Die Änderungserkennung ist also **intakt**; sie braucht nur eine Basis, und `--check` legt selbst
nie eine an (nur `--sync` schreibt das Manifest, Z. 195-197). **Praxisregel geschärft:** aus dem
NAS-Pfad aufrufen, dann sind «aktuell/geändert» stationsübergreifend belastbar.

**Sachbefund:** alle **33 Behördendokumente** von Stadt und Kanton ZH sind seit dem 13.08.2026
byte-identisch — kein CMS-Relaunch, keine neue Formularfassung, **kein toter Link**.

## 6 · Bestätigt ohne Delta

| Prüfung | Messung 23.08.2026 | gegen Doku |
|---|---|---|
| `gwr-bund --egid 302064023` | 18'042 m², 362'570 m³, EBF 78'834 m², WP + Erdwärmesonde | identisch |
| `geo-sz --parzelle "Wangen 25"` | EGRID `CH379377805305` · BFS 1349 | identisch |
| `geoshop-zh --list --filter vermessung` | 10016 / Format 25 = DXF, dazu 10017, 10018 | identisch |
| SZ-OEREB-PDF Wangen 25, **Inhalt** | 6 Seiten · Parz. 25 · 751 m² · Wohn- und Gewerbezone 3 · ES III · Baureglement 410/2014 · AV-Stand 10.08.2026 | erstmals inhaltlich gemessen |

Das PDF wurde mit einem eigenen **ToUnicode-fähigen Extraktor** gelesen (`/tmp/pg7-pdftext.py`),
weil auf dieser Station weder poppler noch mutool noch pypdf liegt — dieselbe Lage, in der Lauf 6
seinen PNG-Dekoder schreiben musste. Eine erste, naive Extraktion (rohe zlib-Ströme ohne
CMap-Auflösung) fand den EGRID **nicht** und hätte beinahe als Befund gegolten; sie war eine
Aussage über mein Werkzeug, nicht über das Dokument.

## 7 · Nebenbefund — OEREB-Bytezahlen taugen nicht als Vergleichswert

Derselbe Auszug (Wangen 25, gleicher EGRID) an diesem Abend dreimal bezogen: **509'074 B ·
568 KB · 506'977 B**. Erstellungszeitpunkt und Auszugs-UUID stecken im Dokument, die Grösse
schwankt also **innerhalb einer Stunde** ohne inhaltliche Änderung. Die bestehende Warnung
(«kleine Grössenschwankungen sind normal») ist damit zu schärfen: bei OEREB-PDF ist die Bytezahl
auch grob kein Vergleichswert. Vergleichbar sind der Themenstand und `UpdateDateCS`.

## Weiterhin blockiert

**C-BSP-2026** — die Bring-Schuld an `normen` (Destillat VKF «Brandschutzplatten»). Unverändert;
ein Fremdschreiben würde die dortige Arbeit kreuzen. Ebenso unverändert die inhaltlichen
K/R/C/D-Punkte (laut Zuständigkeitsvermerk keine Aufgabe eines Endpunktlaufs) und der Nachzug der
beiden VKF-Fassungs-Vorbehalte, der auf `established`-Destillate aus `normen` wartet.

## Vorschlag, bewusst nicht selbst umgesetzt

`geo-zh.mjs --oereb` könnte denselben Themenstand-Hinweis bekommen wie jetzt `geo-sz.mjs`. Für ZH
ist der Nutzen heute **null** — der Kanton hat alle 26 Themen abgedeckt, die Warnung würde nie
feuern. Sie wäre eine Vorsorge für den Fall, dass ein anderer Kanton dazukommt. Ohne Messwert, der
sie verlangt, nicht eingebaut (dieselbe Zurückhaltung wie bei der STAC-v1-Umstellung in Lauf 6).

## Geänderte Dateien

- `skills/planungsgrundlagen/connectors/geo-sz.mjs` — Themenstand-Abfrage + Warnung, Kopf ergänzt
  (**+51/−1**; die eine Löschung ist die ersetzte `--oereb`-Zeile).
- `wiki/kartenportale-oereb-egrid-bezug.md` — neuer Abschnitt zu den strukturierten Endpunkten,
  `ThemeWithoutData`, Schema-Falle, Bytezahlen; Präzisierung des behoerden-Vermerks; Frontmatter
  (**+112/−3**, die drei Löschungen sind ersetzte Frontmatter-Zeilen).
- `wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` — Vorbehalt in Abschnitt 4, Frontmatter
  (**+21/−1**).
- `wiki/QUESTIONS.md` — Laufeintrag (**+72/−0**, append-only bestätigt; darin 9 Zeilen eines
  **parallel laufenden Prozesses** zum neuen Werkzeug `kennwert-recompute.sh`, die nicht von diesem
  Lauf stammen und unangetastet blieben).
- `CHANGELOG.md` — Eintrag (**+88/−0**, append-only bestätigt).

Alle Umfänge mit `git diff --numstat` gegen die Laufbasis `8f7a0da7` gemessen. Der Hinweis aus
Lauf 6 hat sich bewährt: `git-auto-sync.sh` hat während des Laufs zweimal committet
(`786c0406`, `954b74b9`), eine Messung ohne Basis-Commit hätte nur den Rest gezeigt.

## Werkzeuge und Messmittel

`curl` mit Browser-User-Agent (extract/json+xml, capabilities, versions, beide Kantone) ·
`node v22.11.0` mit `geo-sz.mjs`, `gwr-bund.mjs`, `geoshop-zh.mjs`, `behoerden-zh.mjs` ·
eigener ToUnicode-fähiger PDF-Textextraktor in Python (`/tmp/pg7-pdftext.py`) · `git diff
--numstat` gegen Laufbasis. Kein Schreibzugriff auf `raw/`; der `--sync`-Beweislauf schrieb
ausschliesslich nach `/tmp`, nicht ins Repo (der Spiegelordner ist ohnehin gitignored). Keine
Vertrags-, Bewerbungs- oder Personaldaten berührt — die geprüften Quellen sind amtliche
Geodaten-Endpunkte und öffentliche Behördenformulare.
