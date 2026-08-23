# Vertiefungslauf 8 planungsgrundlagen — ein abgeschalteter Host, den sechs Läufe für erreichbar gehalten haben

**Datum:** 23.08.2026 · **Station:** Revendo (macbook-revendo) · **Auftrag:** Raphael — Endpunkte,
Links und Connector-Wege verifizieren, belegt arbeiten, nichts raten. Fortsetzung von
`2026-08-23_vertiefung-7-oereb-strukturiert.md`.

**Vorlauf gelesen:** `CLAUDE.md` der KB, CHANGELOG-Kopf (Läufe 4 bis 7), `wiki/QUESTIONS.md` mit
Zuständigkeitsvermerk und Werkzeugkasten, die Berichte von Lauf 1, 6 und 7, sowie der Kopf von
`wissen/tools/link-frischecheck.sh`. **Laufbasis für alle Umfangsmessungen:** Commit `6d648ddd`.

---

## Ergebnis in einem Satz

Lauf 6 und 7 haben die **Connectoren** auf Nutzdatenebene geprüft; dieser Lauf hat die dritte,
nie so geprüfte Gruppe nachgeholt — die **in den Artikeln zitierten Adressen** — und dabei einen
**abgeschalteten Host** gefunden, den alle sechs vorangegangenen Läufe für erreichbar hielten,
weil er mit `HTTP 200` antwortet.

## Warum dieser Winkel

Lauf 6 endete mit der Regel «ein Endpunkt ist erst geprüft, wenn der Inhalt gemessen ist». Lauf 7
wandte sie auf die restlichen Connectoren an. Offen blieb, ob dieselbe Lücke auch im
**Link-Bestand** steckt.

Der Blick in `link-frischecheck.sh` (Z. 80) zeigt die Messmethode:

```
curl -s -o /dev/null -w '%{http_code}' -A "$UA" -L --max-time 25 "https://$u"
```

Der Antwortkörper wird verworfen (`-o /dev/null`), Umleitungen werden verfolgt (`-L`), gemessen
wird der Statuscode der **Endadresse**. Ein Server, der jeden unbekannten Pfad auf seine
Startseite schickt, liefert damit für **jede** erfundene Adresse ein sauberes `200`. Genau das
ist die Lücke, die Lauf 6 auf Endpunktebene als gefährlich belegt hat.

## 1 · Der Befund

**Der Host `geoportal.zh.ch` ist abgeschaltet.**

| Aufruf | Roh | Final | Endadresse |
|---|---|---|---|
| `geoportal.zh.ch/opendata` | 301 | **200** | `www.zh.ch/de.html` |
| `geoportal.zh.ch` (Host allein) | 301 | **200** | `www.zh.ch/de.html` |
| `geoportal.zh.ch/gibtesnichtxyz123` | 301 | **200** | `www.zh.ch/de.html` |

Der Antwort-Header ist eindeutig: `location: https://www.zh.ch/de.html`, dazu `x-url: /opendata` —
der Server nimmt den Pfad entgegen und wirft ihn weg. DNS löst weiterhin auf (`194.247.8.174`),
der Host ist also nicht tot, sondern **umgeleitet**; das ist der Grund, warum keine
Erreichbarkeitsmessung anschlägt.

**Was daran hing.** Der Abschnitt «ZH Geoportal OGD-Bestellportal» in
`wiki/kartenportale-geoportale-uebersicht.md` (K44, Run 51, 18.07.2026) beschrieb diesen Host als
dritten ZH-Bezugsweg, mit Warenkorb-Bestellung und vier GIS-ZH-Datensatznummern. Der Abschnitt
war mit `status: established` geführt, und zu Recht: die Nummern stammen aus **echten amtlichen
Lieferscheinen** eines realen JANS-Falls (Regensdorf, vier Bestellungen 05.–08.02.2024). Inhaltlich
war daran nie etwas verdächtig. **Weggefallen ist nicht der Inhalt, sondern der Weg.**

## 2 · Der Ersatzweg — die Datensatznummern tragen weiter

Nicht geraten, sondern gemessen:

**Metadaten je Nummer** — `geolion.zh.ch/geodatensatz/show?gdsid=<Nr>`:

| Nr. | Zielseite | Titel der Zielseite (gelesen, nicht angenommen) |
|---|---|---|
| **10102** | `geodatensatz/3152.html` | «ÖREB-Kataster; Abstandslinien (öffentlich-rechtliche Eigentumsbeschränkungen)» |
| **555** | `geodatensatz/4269.html` | «Digitales Terrainmodell (DTM) 2021 bis 2022» |

Beide Titel decken sich mit der Bezeichnung in der KB-Tabelle. Datenherr laut Seite: Amt für
Raumentwicklung, Geoinformation/Kataster.

**Datenbezug** — die bereits dokumentierte Geoshop-API `geoservices.zh.ch/geoshopapi/v1`
(247 Produkte). Alle vier Nummern stehen im Katalog, abrufbar mit dem **vorhandenen** Connector
`geoshop-zh.mjs --list`:

```
555    Digitales Terrainmodell (DTM) 2021 bis 2022 (OGD)      [21=GeoTIFF, 22=ASCII X,Y,Z]
557    LIDAR Laserscanning-Punktwolke - 2021 bis 2022 (OGD)   [61=LAZ]
10016  Amtliche Vermessung - Datenmodell ZH (Standard) (OGD)  [3=SHP, 6=INTERLIS1, 25=DXF, 128=GPKG]
10102  ÖREB-Kataster - Abstandslinien (OGD)                   [3=SHP, 6=INTERLIS1, 25=DXF, 128=GPKG]
```

Der Bezugsweg ist damit **nicht verloren, sondern verlagert** — vom interaktiven Warenkorb auf
eine API, die JANS ohnehin per Connector bedient. Die frühere Aussage im Artikel, es gebe «keinen
bekannten Ein-Klick-Endpunkt», ist überholt und dort als solche markiert.

**Bewusst nicht getan:** keine Bestellung ausgelöst. Eine echte Bestellung geht an eine Amtsstelle
und ist keine Messung, die man probehalber macht. Gemessen ist der **Katalog**, read-only — das
`--produkt`-Versprechen bleibt deshalb weiterhin ungedeckt, und der Artikel sagt das jetzt genau so.

⚠ **Die eigene Falle im Ersatzweg mitgemessen:** auch Geolion antwortet auf eine unbekannte
`gdsid` mit `200` — allerdings mit dem **Index** (`/meta?activetab=geodatensatzindex`), nicht mit
einer Datensatzseite. Unterscheidbar, aber nur am **Titel** der Zielseite. Wer den Ersatzweg
künftig prüft und dabei wieder nur den Code liest, tappt in dieselbe Falle wie zuvor.

## 3 · Die Regel, mechanisiert — `wissen/tools/link-zielabgleich.sh`

**Ein HTTP-200 belegt, dass irgendeine Seite ausgeliefert wurde, nicht dass es die bestellte ist.**
Massgeblich ist der Vergleich zwischen **angefragtem und tatsächlichem Pfad**.

Neues, viertes Werkzeug neben `wiki-konsistenz` (Form), `link-frischecheck` (Zugang) und
`kennwert-recompute` (Inhalt der Zahlen). Es prüft das **Ziel**:

- Nur Adressen **mit Pfad** — ein blanker Host kann nicht am falschen Ort landen.
- **KATCHALL** (Befund): der Host schluckt jeden Pfad. Nachgewiesen durch eine **Host-Gegenprobe
  mit frei erfundenem Pfad**; ohne sie wäre jede tote Unterseite eines gesunden Servers
  fälschlich ein Katchall.
- **STARTSEITE** (Befund): Deep-Link landet auf einer Startseite, Gegenprobe unauffällig.
- **UMGELEITET** und **SOFT404**: nur nachrichtlich, **nicht** im Exit-Code — das eine ist bei
  jedem CMS-Relaunch der Normalfall, das andere ein ehrlicher 404 und damit Sache der
  Schwester-Werkzeuge. Eine Befundliste, die den Normalfall mitmeldet, wird nicht gelesen.
- Hub-Pfad nach dem Muster von `kennwert-recompute` (nimmt den Hub, in dem es liegt, `--hub`
  überschreibbar, steht im Ausgabekopf) — wegen der NAS/lokal-Falle aus Lauf 4.

**Abnahme:**

| Lauf | Ergebnis |
|---|---|
| `planungsgrundlagen` | 129 Deep-Links · **findet `geoportal.zh.ch` als KATCHALL wieder** |
| `energie` | 33 Deep-Links · keine Befunde |
| `normen` | 59 Deep-Links · keine Befunde |
| `baurecht` | 15 Deep-Links · **ein echter Zusatzfund** (siehe unten) |

Null Fehlalarme in der schweren Klasse. Die Extraktion ist bewusst **identisch** zu
`link-frischecheck.sh` übernommen — die drei Fallen dort (Adressen ohne Protokoll, Umlaute im
Hostnamen, Schrägstrich als Prosa-Trenner) sind teuer erkauft und werden nicht neu erfunden (E18).

## 4 · Cross-KB-Fund, übergeben

`mobilityplatform.ch/vss-shop` (Bezugsadresse der kostenpflichtigen VSS-Normen, zitiert in
`wissen/baurecht`) liefert 200 und landet auf `www.mobilityplatform.ch/de`. **Der Shop lebt**, nur
das Pfadsegment ist weg: `…/de/vss-shop/product/640052` leitet auf `www.mobilityplatform.ch/de/640052.html`
(200, Titel «Mobilityplatform 640052»); eine erfundene Produktnummer beantwortet derselbe Server
ehrlich mit **404** — kein Katchall.

**→ übergeben an `wissen/baurecht`**, dort als «Adress-Nachtrag 23.08.2026» in
`wiki/QUESTIONS.md` eingetragen (F-UEBERGABE-Klausel, Rule `wissens-bibliothekar`). Der
abgeschlossene Recherchesatz dort wurde **nicht** von aussen umgeschrieben — ein Fremdlauf legt
den Nachtrag daneben, er redigiert nicht.

⚠ **`baurecht` wurde während dieses Laufs parallel bearbeitet** (fremde Änderungen an
`wiki/ausnahmebewilligung-und-bestandesschutz.md`, `training/PROGRAMM.md` u.a. gegen dieselbe
Laufbasis). Lauf 7 hatte deshalb auf ein Fremdschreiben nach `normen` **verzichtet**. Hier war es
vertretbar, weil es sich um ein **reines Anhängen am Dateiende** handelt, nicht um eine Änderung
an bestehendem Text: `+23/−0` nachgemessen, und der Nachtrag ist nach dem Auto-Sync-Commit
`455c8046` unverändert vorhanden (gegengeprüft). Wäre eine Korrektur **im** Bestand nötig gewesen,
wäre sie wie in Lauf 7 als Ticket-Text zurückgestellt worden.

## 5 · Geprüft und ohne Befund

| Adresse | Messung 23.08.2026 | Bewertung |
|---|---|---|
| `www.bak.admin.ch/bak/de/home/baukultur/isos-und-ortsbildschutz/` | 404, 491 KB dekorierte Fehlerseite | in [[kartenportale-denkmalschutz-isos]] **bereits korrekt** als tote Altadresse vermerkt (Wartungslauf 01) |
| `e-gov.stadt-zuerich.ch/geoshop` | 200, faktisch Cookie-Fehlerseite; mit Cookie-Jar → `login.stadt-zuerich.ch` | Übersicht führt den Zugang schon als «Account (kostenpflichtig/registriert)» — **bestätigt** |
| `praever.ch/de/bs/vs` | 301 → `bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` | deckt sich mit dem Vermerk in [[brandschutz-pl03-wegweiser]] |
| `sz.ch/…/stb_70_20_weisung_…pdf` | → `…/46976/Weisung_ueber_Liegenschaftskosten_und_Photovoltaik_LKPV.pdf` | Asset-Nr. stabil, Link **heilt sich selbst**, zitierter Titel stimmt bereits |
| `shop.sia.ch/normenwerk/architekt/380_2022_d` | **500**, zweimal reproduziert | **nicht geändert** — ein Serverfehler ist kein Beleg für eine tote Adresse; nächster Wartungslauf misst erneut |

Die 21 als SOFT404 gemeldeten Adressen sind ganz überwiegend die bereits in Lauf 1 dokumentierten
**verkürzten Prosa-Zitate** (`zh.ch/energienachweise` statt der Vollform) und
Aufzählungs-Artefakte. Kein neuer Fall — deshalb im Werkzeug bewusst nur nachrichtlich.

## Weiterhin blockiert

**C-BSP-2026** — die Bring-Schuld an `normen` (Destillat VKF «Brandschutzplatten»), unverändert;
der fertige Ticket-Text liegt in `wiki/QUESTIONS.md` bereit. Ebenso unverändert die inhaltlichen
K/R/C/D-Punkte (laut Zuständigkeitsvermerk keine Aufgabe eines Endpunktlaufs) und der Nachzug der
beiden VKF-Fassungs-Vorbehalte, der auf `established`-Destillate aus `normen` wartet.

## Geänderte Dateien

Alle Umfänge mit `git diff --numstat` gegen die Laufbasis `6d648ddd` gemessen.

- `wissen/tools/link-zielabgleich.sh` — neu (**+131/−0**).
- `wissen/tools/link-zielabgleich.py` — neu (**+157/−0**).
- `wissen/tools/README.md` — viertes Werkzeug, Aufrufliste, Hub-Absatz (**+64/−6**; alle sechs
  Löschungen sind ersetzte Zeilen: «Drei Werkzeuge» → «Vier», «Alle drei» → «Alle vier», der
  Hub-Absatz auf zwei Werkzeuge umgestellt).
- `wiki/kartenportale-geoportale-uebersicht.md` — Warnblock, Ersatzweg, überholte
  Ein-Klick-Aussage, Frontmatter (**+41/−2**; die zwei Löschungen sind die alte
  `last_updated`-Zeile und eine Zeitform «gibt es» → «gab es»).
- `wiki/QUESTIONS.md` — Laufeintrag und Werkzeugkasten (**+89/−3**; alle drei Löschungen sind
  ersetzte Zeilen: «zu dritt» → «zu viert» und zwei Zeilen «aller drei Werkzeuge» → «aller vier»).
- `wissen/baurecht/wiki/QUESTIONS.md` — Cross-KB-Nachtrag (**+23/−0**, append-only bestätigt).
- `CHANGELOG.md` — Eintrag (**+56/−0**, append-only bestätigt).

**Hinweis zur Messung, wie in Lauf 7:** `git-auto-sync.sh` hat während des Laufs zweimal
committet (`adaad94e`, `2ae1bf28`, beide mit Zwischenständen der neuen Werkzeugdateien). Eine
Messung gegen `HEAD` statt gegen die Laufbasis hätte die beiden neuen Dateien als «nicht
geändert» gezeigt.

## Werkzeuge und Messmittel

`curl` mit Browser-User-Agent (Roh- und Endstatus getrennt, Endadresse, Antwortgrösse; 129 + 3× je
KB Deep-Links, dazu Host-Gegenproben) · `dig` · `node v22.11.0` mit `geoshop-zh.mjs --list`
(read-only) · `python3` für Titel-/Textextraktion der Zielseiten und für den neuen Klassifikator ·
`git diff --numstat` gegen die Laufbasis. Kein Schreibzugriff auf `raw/`. **Keine Bestellung, kein
Versand, kein Schreibzugriff auf eine amtliche Stelle ausgelöst.** Keine Vertrags-, Bewerbungs-
oder Personaldaten berührt — die geprüften Quellen sind amtliche Geodaten-Endpunkte, öffentliche
Behördenseiten und Normen-Shops.
