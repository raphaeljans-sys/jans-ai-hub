# Vertiefungslauf planungsgrundlagen — Endpunkte, Links und Connector-Wege verifiziert

**Datum:** 23.08.2026 · **Station:** Revendo · **Auftrag:** Raphael — Wissens-Bibliothekar im
Dauerbetrieb, KB 3 von 4: Endpunkte, Links und Connector-Wege verifizieren, offene Fragen
schliessen.

**Vorlauf gelesen:** CHANGELOG-Kopf (Eintrag 23.08.2026, neun Positionen bearbeitet),
`wiki/QUESTIONS.md`-Kopf (Zuständigkeitsvermerk seit 30.07.2026 und Werkzeugkasten),
`wiki/kartenportale-oereb-egrid-bezug.md` (letzter Connector-Benchmark 01.08.2026),
`wiki/brandschutz-pl03-wegweiser.md` (BSV-2026-Block mit Checkpoint 08/2026).

Der Werkzeugkasten wurde **benutzt statt nachgebaut** (Regel E18: die Extraktions- und Messfallen
in `link-frischecheck.sh` sind teuer erkauft).

---

## Ergebnis in einem Satz

**Keine Endpunkt-Erosion.** Neun Connector-Messungen am JANS-Benchmark identisch zum Wartungslauf
02 vom 01.08.2026, alle 33 Behörden-URLs erreichbar, und jeder der 68 Verdachtsfälle des
Frischechecks ist ein bereits dokumentierter Prosa-Artefakt oder ein bereits korrekt als
tot/umgezogen vermerkter Altbestand. Dazu **zwei neue Messbefunde**, **ein Werkzeug-Fallstrick**,
**ein fälliger Checkpoint** und **ein neues VKF-Dokument**.

## 1 · Connector-Benchmark 23.08.2026 — 9 von 9 grün

| Test | Ergebnis | gegen 01.08.2026 |
|---|---|---|
| `geo-zh` Adresse → EGRID (Giebelweg 12, 8135 Langnau a.A.) | EGRID CH879777718909 · Parz. 3338 · BFS 136 | identisch |
| `geo-zh --produkt zonenplan` | W/1.5 (W1) · BMZ 1.5 · GH 4.5 · ES_II · inKraft | identisch |
| `geo-zh --produkt baulinien` | 7 Baulinien (nächste 116.2 m) + 1 Waldgrenze (105.6 m) | identisch |
| `geo-zh --oereb` | PDF 908'398 Bytes (887 KB) | 889 → 887 KB, Datumsstempel |
| `geo-sz --parzelle "Einsiedeln 3301" --oereb` | EGRID CH527708492462 · Parz. 3301 · BFS 1301, PDF 2'076 KB | EGRID identisch |
| `gwr-bund --egid 302064023` | EGRID CH267999915472 · Parz. RI5416 · «Kinderspital» | identisch |
| `geoshop-zh --list` | 247 Zeilen | identisch |
| `behoerden-zh --check` | 33 von 33 abrufbar · **0 TOT** | 0 TOT identisch |
| `maps.zh.ch/wfs/OGDZHWFS` GetCapabilities | 200 · 825'474 Bytes XML | 849 → 825 KB |

PDF- und XML-Grössen schwanken durch Datumsstempel und Katalogpflege; Erosion zeigt sich an
HTTP-Codes und fehlenden Nutzdaten, nicht an Bytezahlen. Das ist im Artikel mitgeschrieben, damit
ein künftiger Lauf die Schwankung nicht als Befund liest.

## 2 · Zwei neue Endpunkt-Befunde

**a) `maps.zh.ch/wms/NaturgefahrenZH` — von «vermutet» auf «gemessen».** Der Wegweiser führte
diesen Pfad seit Run 54 als «geratener, login-pflichtiger WMS-Pfad». Jetzt belegt: **`HTTP/2 401`,
Body `HTTP Basic: Access denied.`** — auch auf ein korrekt geformtes
`?SERVICE=WMS&REQUEST=GetCapabilities&VERSION=1.3.0`. Kein Parameterfehler, sondern eine
Zugangsschranke. Praxisfolge: diesen WMS nicht in QGIS/AutoCAD einbinden. Der offene Weg zu
denselben Daten bleibt der WFS (Gefahrenkarte unter AWEL-Themengruppe 44).

**b) `gis.zh.ch` ist kein toter Host, sondern eine SAN-Lücke — und die dokumentierte Erklärung
war zu grob.** Gemessen:

- `gis.zh.ch` → CNAME auf `maps.zh.ch` (193.246.69.8), der Host existiert.
- `https://gis.zh.ch` bricht mit `SSL: no alternative certificate subject name matches target
  host name` ab. Der Geodienst-Server liefert **`CN=maps.zh.ch` (O=Kanton Zürich) mit 19
  expliziten SANs** — `maps/wms/map/geolion/oerebdocs/geo.zh.ch` und die `ktzh.ch`-Varianten.
  `gis.zh.ch` steht nicht darin.
- `www.zh.ch` und `zh.ch` liefern dagegen ein **echtes Wildcard `CN=*.zh.ch`, SAN `*.zh.ch` +
  `zh.ch`** (Staatskanzlei).
- `http://gis.zh.ch` leitet sauber auf `www.zh.ch/de/planen-bauen/geoinformation.html` (200).

Der Kopf von `link-frischecheck.sh` erklärt solche Fehler mit «das Wildcard-Zertifikat `*.zh.ch`
deckt nur eine Label-Ebene». Für die Staatskanzlei-Server stimmt das. **Unter `.zh.ch` gibt es
aber zwei Zertifikatswelten**, und auf der Geodienst-Seite gibt es gar kein Wildcard: dort
entscheidet eine namentliche SAN-Liste. Ein `<thema>.zh.ch`-Name kann deshalb auch auf einer
Label-Ebene an TLS scheitern. Zitierregel: `gis.zh.ch` nicht mehr als `https://`-Adresse führen;
kanonisch sind `www.zh.ch/de/planen-bauen/geoinformation.html` und `maps.zh.ch`.

## 3 · Werkzeug-Fallstrick: `behoerden-zh --check` meldet stationsabhängig

Wartungslauf 02 protokollierte «**33 aktuell** · 0 geändert · 0 neu · 0 TOT», dieser Lauf misst
«0 aktuell · 0 geändert · **33 neu** · 0 TOT». Das sieht nach 33 geänderten Behördendokumenten
aus und ist keines: der SHA-Vergleichsstand liegt im Manifest unter
`skills/planungsgrundlagen/behoerden-dokumente/`, und dieser Pfad steht in `.gitignore`
(`**/behoerden-dokumente/`). Er wandert nie zwischen den Stationen; wo nie `--sync` lief, fehlt
der Vergleichsstand und jedes Dokument gilt zwangsläufig als «neu».

**Praxisregel, im Artikel verankert:** stationsübergreifend ist aus diesem Connector nur **`TOT`**
aussagekräftig — 0 von 33, alle URLs leben. «aktuell/geändert/neu» sind nur innerhalb derselben
Station über die Zeit zu lesen.

## 4 · Frischecheck: 68 Verdachtsfälle, kein neuer

`bash wissen/tools/link-frischecheck.sh planungsgrundlagen` über 265 gemessene Adressen. Die
Verdachtsliste enthält **keinen** neuen Fall. Stichprobenweise an DNS und HTTP nachgemessen:

| Host | Messung 23.08.2026 | KB-Stand |
|---|---|---|
| `bsvonline.vkf.ch` | kein A-Record; `bsvonline.ch` 200 | korrekt als tot vermerkt (Wartungslauf 01) |
| `geo.lu.ch` | kein A-Record; `www.geo.lu.ch` 200 (Geoportal Kt. Luzern) | korrekt als «nur mit www.» vermerkt |
| `geodatenshop.lu.ch` | kein A-Record | korrekt als «löst nicht auf» vermerkt |
| `kanton-luzern.ch` | kein A-Record; `www.lu.ch` 200 | korrekt als «existiert nicht mehr» vermerkt |
| `geoglatt.ch` / `www.geoglatt.ch` | kein A-Record, auch keine Nachfolger unter `glattal.ch` | korrekt als abgeschaltet vermerkt |
| `gwr.admin.ch` | kein A-Record; `www.gwr.admin.ch` 200, `www.housing-stat.ch` 200 | korrekt als «nur mit www.» vermerkt |

Die restlichen Treffer sind die dokumentierten **Prosa-Artefakte** (Aufzählungen wie
`vkg.ch/presseportal.ch`, die das Werkzeug als Pfad liest) und die bekannten Bot-Sperren
(403 bei `zh.ch`-Unterseiten, `solarrechner.ch`). **Kein Handlungsbedarf** — die Link-Hygiene der
KB hält drei Wochen nach dem letzten Wartungslauf.

## 5 · Fälliger Checkpoint: BSV 2026, politische Vernehmlassung 08/2026

Der Wegweiser hatte diesen Checkpoint selbst gesetzt. Er ist jetzt fällig und geprüft:

- Die Primärquelle «Information BSV 2026» ist im **Wortlaut unverändert** und nennt weiterhin nur
  die Planung, keine Startmeldung. Meilensteine unverändert: technische Vernehmlassung
  09/2025–01/2026 · Schulungen ab 12/2025 · **politische Vernehmlassung 08–11/2026** ·
  **IOTH-Genehmigung 03/2027**.
- Die **Aktuell-Seite von bsvonline.ch endet am 07.05.2026** — seit dreieinhalb Monaten keine
  neue Mitteilung, insbesondere keine Startmeldung und kein Marschhalt-bereinigter Terminplan.
- **Bewertung ohne zu raten:** ein Indiz, kein Beleg für eine weitere Verschiebung — eine
  laufende Vernehmlassung braucht keinen Aktuell-Eintrag. Für JANS ändert sich nichts:
  **BSV 2015/17/22 gilt**, keine antizipierten Erleichterungen einplanen. Nächster Check
  **Ende 11/2026**.

Sechste Refresh-Bestätigung ohne Delta — aber erstmals **am fälligen Checkpoint selbst**.

## 6 · Neues VKF-Dokument, in dieser KB noch nicht erfasst (neuer offener Punkt C-BSP-2026)

**«Brandschutzplatten — Grundlagen, Nachweis und Anwendung»**, Version **1-0 vom 10.03.2026**,
verabschiedet durch die Technische Kommission Brandschutz, Zuständigkeit Fachkommission
Bautechnik, 9 Seiten, publiziert auf bsvonline.ch am **07.05.2026**, Dokument-ID
`BSPUB-1394520214-3201`. Es beschreibt ein **neues Nachweisverfahren** für Brandschutzplatten und
dessen Anwendungsbereich; der Wegweiser führt BSP heute über die Register-Gruppe 231 und das
Dokument «Allgemein anerkannte …» (2017).

⚠ Das Dokument trägt einen **BSV-2026-Vorbehalt aus eigener Feder** und wird nach der
IOTH-Genehmigung revidiert — es fällt damit unter die Regel, keine antizipierten
BSV-2026-Inhalte einzuplanen.

**Bewusst nicht destilliert.** VKF-Primärdokumente führt nach Rule `normen-referenz` die KB
`normen`. Der Eintrag dort ist in diesem Lauf **bewusst unterblieben**: `normen` wird am
23.08.2026 parallel auf dem Mac Mini bearbeitet, ein Fremdschreiben würde die dortige Arbeit
kreuzen. Das weicht von der F-UEBERGABE-Klausel ab; die Abweichung ist in `wiki/QUESTIONS.md`
begründet festgehalten und Raphael in der Laufzusammenfassung gemeldet.

## Nicht angetastet

Die inhaltlichen K/R/C/D-Punkte — sie sind laut Zuständigkeitsvermerk **keine** Aufgabe eines
Endpunkt-/Link-Laufs. Ebenso der Nachzug der beiden VKF-Fassungs-Vorbehalte (BSE 108-15,
BRL 10-15), der auf `established`-Destillate aus `normen` wartet.

## Geänderte Dateien

- `wiki/kartenportale-oereb-egrid-bezug.md` — Connector-Benchmark 23.08.2026, zwei neue
  Endpunkt-Befunde, `behoerden-zh`-Fallstrick, Frontmatter.
- `wiki/kartenportale-naturgefahren-objektschutz.md` — WMS-401 hart gemessen, Frontmatter.
- `wiki/brandschutz-pl03-wegweiser.md` — Checkpoint-Refresh 08/2026, VKF-Dokument
  «Brandschutzplatten» registriert, Frontmatter.
- `wiki/QUESTIONS.md` — Laufeintrag, neuer offener Punkt **C-BSP-2026**.
- `CHANGELOG.md` — Eintrag.

## Werkzeuge und Messmittel

`bash wissen/tools/link-frischecheck.sh planungsgrundlagen --out …` (265 Adressen) · alle fünf
Connectoren unter `skills/planungsgrundlagen/connectors/` mit node v22.11.0 · `curl` mit
Browser-User-Agent · `dig` · `openssl s_client` (Zertifikatsprüfung) · `pypdf` in einem
Scratchpad-venv für das VKF-PDF.
