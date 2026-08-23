# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-08-23 (Vertiefungslauf 7 Revendo) — die vier bisher ungeprüften Connectoren; der OEREB-Auszug ist auch maschinenlesbar zu haben

Lauf 6 hat die Nutzdaten von `geo-zh.mjs` und den Bund-Endpunkten gemessen. Die **vier anderen**
Connectoren dieses Skills — `geo-sz`, `gwr-bund`, `geoshop-zh`, `behoerden-zh` — waren nie auf
Nutzdatenebene geprüft. Dieser Lauf hat das nachgeholt. Kein Connector war defekt; gefunden wurde
eine **nicht genutzte Fähigkeit** und eine **rechtlich heikle Fehllesbarkeit**.

**Beide OEREB-Services liefern neben dem PDF auch JSON und XML.** Die KB kannte für ZH und SZ nur
den PDF-Endpunkt. Gemessen: `extract/json` (ZH 38'303 B · SZ 28'017 B), `extract/xml`
(80'495 · 54'135 B), `capabilities/json`, `versions/json` — alle login-frei, HTTP 200. Der im
Bundesstandard vorgesehene Pfad `extract/reduced/json/<EGRID>` gibt bei **beiden** 404. Der
JSON-Auszug enthält alles, was sonst aus dem PDF abgelesen wird, samt Rechtsvorschriften-Links.

**«Nicht betroffen» und «keine Daten» sind zwei verschiedene Aussagen.** Der Auszug führt drei
Kategorien; die dritte (`ThemeWithoutData`) sagt nichts über die Parzelle, sondern über die
Datenabdeckung der **Gemeinde**. **Wangen (1349)**, **Schwyz (1372)** und **Freienbach (1322)**
führen `ch.Gewaesserraum` ohne Daten; **Einsiedeln (1301)** und **Langnau a.A. (ZH)** haben alle
26 Themen. Im PDF stehen die zweite und die dritte Liste direkt untereinander auf Seite 2.

Das ist deshalb heikel, weil **§ 4 Abs. 2 PBG SZ** sagt, wo auf die Festlegung des Gewässerraums
**verzichtet** wurde, sei kein Gewässerabstand einzuhalten — das fehlende Thema sieht also wie die
Bestätigung genau dieses Falls aus. Es ist es nicht: ob eine Gemeinde verzichtet hat oder den
Layer bloss noch nicht publiziert, ist aus dem Auszug **nicht** ablesbar. **Nicht behauptet** wird
deshalb, welcher der beiden Fälle in Wangen, Schwyz und Freienbach vorliegt; das ist bei der
Gemeinde abzuklären. Vorbehalt im Gewässer-Artikel gesetzt, `geo-sz.mjs --oereb` warnt seit diesem
Lauf selbst (nachgemessen: Wangen warnt, Einsiedeln nicht).

**Schema-Falle:** ZH kapselt in `Extract`, SZ in `extract`; der Theme-Code heisst bei ZH `code`
(plus `SubCode`), bei SZ `Code`. Beide Abweichungen sind **stumm** — der falsche Schlüssel liefert
`undefined`, und die Auswertung meldet dann «keine Themen betroffen».

**Ein Vermerk vom selben Tag präzisiert:** der `behoerden-zh`-Vergleichsstand wandert doch zwischen
den Stationen — über das **NAS**, nicht über Git. Aus dem kanonischen NAS-Pfad gestartet, liegt das
Manifest dort (Stand **13.08.2026**, 33 Einträge) und ist allen Stationen gemeinsam; nur aus dem
SSD-Klon heraus fehlt es. Gegen die NAS-Basis: **33 aktuell · 0 geändert · 0 neu · 0 TOT** — alle
33 Behördendokumente seit dem 13.08. byte-identisch, kein toter Link.

**Bestätigt ohne Delta:** `gwr-bund` (KISPI 18'042 m² / 362'570 m³ / EBF 78'834 m², identisch),
`geo-sz --parzelle` (EGRID identisch), `geoshop-zh --list` (10016 / DXF), PDF-Inhalt Wangen 25
(6 Seiten, Wohn- und Gewerbezone 3, ES III) — gelesen mit einem eigenen ToUnicode-fähigen
Extraktor, weil auf dieser Station weder poppler noch mutool liegt.

**Nebenbefund:** derselbe SZ-Auszug dreimal in einer Stunde bezogen ergab **509'074 B · 568 KB ·
506'977 B**. Bei OEREB-PDF ist die Bytezahl kein Vergleichswert; vergleichbar sind Themenstand und
`UpdateDateCS`.

Geänderte Dateien: `skills/planungsgrundlagen/connectors/geo-sz.mjs` (Themenstand-Warnung, +51/−1),
`wiki/kartenportale-oereb-egrid-bezug.md` (+112/−3), `wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md`
(+21/−1), `wiki/QUESTIONS.md` (Laufeintrag, append-only bestätigt), `CHANGELOG.md`. Alle Umfänge
mit `git diff --numstat` gegen die Laufbasis `8f7a0da7` gemessen.

## 2026-08-23 (Vertiefungslauf 8 Revendo) — ein abgeschalteter Host, den sechs Läufe für erreichbar gehalten haben

Achter Lauf am selben Auftrag. Lauf 6 mass die Nutzdaten von `geo-zh` und den Bund-Endpunkten,
Lauf 7 die der vier übrigen Connectoren. Ungeprüft war die dritte Gruppe: die **in den Artikeln
zitierten Adressen** — und deren Messwerkzeug hat eine Lücke derselben Familie.

**Befund, korrigiert — der Host `geoportal.zh.ch` ist abgeschaltet.** Er antwortet auf `/opendata`
mit `HTTP 301` auf `www.zh.ch/de.html`, die Kantons-Startseite. Gegenprobe mit einem frei
erfundenen Pfad: **dasselbe Ziel, ebenfalls 200.** Der ganze Host ist ein Katchall, unter dem
keine einzige Adresse mehr per Statuscode prüfbar ist. Betroffen war der Abschnitt «ZH Geoportal
OGD-Bestellportal» in [[kartenportale-geoportale-uebersicht]] (K44, Run 51) mit Bestellweg und
vier GIS-ZH-Datensatznummern — belegt aus echten amtlichen Lieferscheinen und deshalb inhaltlich
nie verdächtig. **Sechs Endpunktläufe desselben Tages haben es nicht gesehen**, weil `curl -L`
der Umleitung folgt und `200` meldet.

**Der Bezugsweg ist nicht verloren, sondern verlagert — vollständig nachgemessen.** Die
Datensatznummern gelten weiter: `geolion.zh.ch/geodatensatz/show?gdsid=<Nr>` liefert die
Metadaten (inhaltlich verifiziert: `10102` → «ÖREB-Kataster; Abstandslinien», `555` → «Digitales
Terrainmodell (DTM) 2021 bis 2022»), der Datenbezug läuft über die bereits dokumentierte
Geoshop-API `geoservices.zh.ch/geoshopapi/v1` — alle vier Nummern stehen dort mit identischer
Bezeichnung, OGD-Kennung und Formatliste im Katalog und sind mit dem vorhandenen
`geoshop-zh.mjs --list` abrufbar. **Keine Bestellung ausgelöst**, die ginge an eine Amtsstelle;
gemessen ist der Katalog, read-only. ⚠ Auch Geolion hat ein Katchall-Verhalten, aber ein
unterscheidbares: eine unbekannte `gdsid` landet auf dem Index statt auf einer Datensatzseite —
wer prüft, schaut auf den **Titel** der Zielseite.

**Neues Werkzeug `wissen/tools/link-zielabgleich.sh`** (+ `.py`), viertes im Werkzeugkasten neben
Form, Zugang und Inhalt: es prüft das **Ziel**. Vergleicht angefragten gegen tatsächlichen Pfad
und weist einen Katchall durch eine Host-Gegenprobe mit erfundenem Pfad nach. **Abnahme:** findet
den `geoportal.zh.ch`-Fall wieder; über `energie`, `baurecht` und `normen` **null Fehlalarme** in
der schweren Klasse. Umleitungen und 404 werden bewusst nur nachrichtlich geführt — beides ist
Sache der Schwester-Werkzeuge.

**Cross-KB übergeben:** `mobilityplatform.ch/vss-shop` landet auf der Startseite; der VSS-Shop
lebt, nur das Pfadsegment ist weg (Produktseiten heute `/de/<produktnr>.html`, verifiziert;
erfundene Nummer → ehrlicher 404). **→ übergeben an `wissen/baurecht`**, dort als
«Adress-Nachtrag 23.08.2026» in `wiki/QUESTIONS.md` eingetragen (F-UEBERGABE-Klausel).

**Vier Adressen geprüft und ohne Befund bestätigt:** die tote ISOS-Altadresse (in
[[kartenportale-denkmalschutz-isos]] bereits korrekt vermerkt), der Stadt-Zürcher GeoShop
(200, faktisch Cookie-/Login-Seite — die Übersicht führt den Account-Zwang schon), die
praever→bsvonline-Umleitung und die selbstheilende SZ-Weisung unter Asset-Nr. 46976.
`shop.sia.ch/normenwerk/architekt/380_2022_d` antwortet reproduzierbar **500** — nicht geändert,
denn ein Serverfehler ist kein Beleg für eine tote Adresse; beim nächsten Wartungslauf erneut
messen.

**Die verallgemeinerbare Regel:** ein HTTP-200 belegt, dass **irgendeine** Seite ausgeliefert
wurde, nicht dass es die bestellte ist. Dieselbe Familie wie Lauf 6 (formal gültiges, aber leeres
WMS-Bild) und Lauf 7 (`ThemeWithoutData`): **eine Antwort ist keine Auskunft.**

Geänderte Dateien: `wissen/tools/link-zielabgleich.sh` + `.py` (neu) · `wissen/tools/README.md`
(viertes Werkzeug) · `wiki/kartenportale-geoportale-uebersicht.md` (Warnblock, Ersatzweg,
überholte Ein-Klick-Aussage, Frontmatter) · `wiki/QUESTIONS.md` (Laufeintrag, Werkzeugkasten) ·
`wissen/baurecht/wiki/QUESTIONS.md` (Cross-KB-Nachtrag) ·
`outputs/2026-08-23_vertiefung-8-zielabgleich-links.md`.

## 2026-08-23 (Vertiefungslauf 6 Revendo) — erste funktionale Endpunktprüfung: zwei stumme Fehler, davon ein echter Connector-Bug seit 06/2026

Sechster Lauf am selben Auftrag, aber mit einem anderen Messmittel. Die bisherigen Endpunktläufe
haben **HTTP-Code und Antwortgrösse** gemessen; dieser Lauf hat die **Nutzdaten** gemessen. Genau
dort lagen zwei Fehler, die jede bisherige Prüfung unbeschadet passiert haben.

**Befund 1, behoben — `--produkt bauzonen` hat seit 06/2026 leere Bilder abgelegt.** Artikel
[[kartenportale-bund-geodaten]] und Connector `geo-zh.mjs` (`bauzonenMap`) verlangten die WMS-BBOX
als **N,E**. Richtig ist **E,N**; EPSG:2056 ist mit dem Rechtswert zuerst definiert. Die falsche
Reihenfolge liefert `HTTP 200`, `image/png`, ein formal gültiges 1000×1000-Bild von **3'957 Bytes,
zu 100 % transparent** — und genau diese Bytezahl stand im Artikel als Beleg («Validiert:
1000×1000-PNG, ~4 KB»), während der Connector dazu «bauzonen: … (4 KB)» als Erfolg loggte.
Entscheidende Gegenprobe per `GetFeatureInfo` (JSON, Pixel `I=500&J=500`, gleiche BBOX): **E,N**
liefert `bfs_no 136` · Langnau am Albis · `Wohnzonen` · `ch_code_hn 11` · `flaeche 40583` ·
`kt_kz ZH`, **N,E** eine leere FeatureCollection. Korrigiert und nachgemessen: derselbe
Connector-Aufruf liefert jetzt **28 KB** mit 51.8 % Zonenfläche statt eines leeren Bildes.

**Befund 2, berichtigt — «Achsen unkritisch, weil quadratische BBOX» ist falsch.** In
[[kartenportale-zonenplan-zh]] stand dieser Satz zum ZH-OGD-WFS. Eine quadratische BBOX macht nur
die **Halbweiten** gleich, nicht die **Mittelpunktskoordinaten**. Gemessen, identischer Aufruf, nur
die Reihenfolge getauscht: **E,N → 1 Feature** (`W/1.5`, BMZ 1.5), **N,E → 0 Features**. Der
Connector liegt richtig, falsch war der Satz. Auch dieser Fehler wäre stumm: gültiges GeoJSON mit
leerer `features`-Liste, nicht von einer Parzelle ohne Zonenfestlegung zu unterscheiden.

**Vorsorglich geprüft — der Negativbefund beim Denkmalschutz.** `fetchDenkmalschutz()` fängt beide
Layer-Abfragen in einem `catch { /* optional */ }` ab und meldet im Fehlerfall «keine Treffer im
Fenster», im Wortlaut identisch mit dem echten Negativbefund. Beide Layer darum an ihren
Positiv-Benchmarks nachgemessen: Denkmalschutzobjekte liefern am Benchmark Wald ZH
(E 2711892 / N 1236834) **2 Objekte** (Ensemble «Montana», 1906-1907, regional, GVZ 12001936),
archäologische Zonen ohne BBOX **2 Zonen** (Feuerthalen, Dachsen). Beide leben; in
[[kartenportale-denkmalschutz-isos]] samt Praxisregel verankert.

**Bund-Endpunkte funktional bestätigt, kein Delta zu 06/2026:** `height` → `549.1` · `SearchServer`
→ E 2682864.25 / N 1238219.125, lon 8.534085 / lat 47.289661 · STAC `swissimage-dop10` → 2019 ·
2022 · 2025 (kein neuer Jahrgang) · STAC `swissalti3d` → `swissalti3d_2020_2682-1238` mit vier
Assets (0.5 m und 2 m, je `.tif` **und** `.xyz.zip`) · `geodienste.ch/downloads/av/` → 200 ohne
Umleitung. **STAC v0.9 läuft weiter** (Root meldet `stac_version 0.9.0`, kein Abkündigungshinweis)
und **v1 liefert am Benchmark exakt dieselben Item-IDs**; die Umstellung wäre ergebnisneutral,
wurde aber **bewusst nicht** vorgenommen, weil kein Messwert sie verlangt.

**Die verallgemeinerbare Regel, in beiden Artikeln verankert:** ein Endpunkt ist erst geprüft, wenn
der **Inhalt** gemessen ist. HTTP-Code, Content-Type und Bytezahl belegen, dass ein Server
geantwortet hat, nicht dass er das Bestellte geliefert hat.

Geänderte Dateien: `skills/planungsgrundlagen/connectors/geo-zh.mjs` (Achsenreihenfolge
`bauzonenMap` + Belegkommentar) · `wiki/kartenportale-bund-geodaten.md` (§4 berichtigt,
Nachmessungstabelle, Frontmatter) · `wiki/kartenportale-zonenplan-zh.md` (Achsen-Berichtigung,
Frontmatter) · `wiki/kartenportale-denkmalschutz-isos.md` (Positivproben + `catch`-Warnung,
Frontmatter) · `wiki/QUESTIONS.md` (Laufeintrag) ·
`outputs/2026-08-23_vertiefung-6-funktionale-endpunktpruefung.md`.

## 2026-08-23 (Vertiefungslauf 7 Revendo) — neues Prüfwerkzeug `kennwert-recompute.sh`

Die heute gewonnene Prüfregel — `Kosten ÷ Bezugsgrösse` selbst nachrechnen und gegen den
behaupteten Kennwert halten — ist als Werkzeug mechanisiert: **`wissen/tools/kennwert-recompute.sh`**
(dünner Wrapper) plus **`kennwert-recompute.py`** (Kern), dazu ein neues
**`wissen/tools/README.md`**, das alle drei Prüfwerkzeuge des Wissens-Layers gegeneinander stellt
(Form · Zugang · Inhalt).

**Es prüft dreierlei:** Rechenbehauptungen im Fliesstext (`a / b = c`), **Markdown-Tabellen**
(Kostenspalte ÷ Mengenspalte gegen die Je-Einheit-Spalte) und **Pfeil-Behauptungen**
(`1'903'000 → CHF 698.-/GV`) gegen die im selben Dokument deklarierten Bezugsgrössen.

**Abnahmetest bestanden:** es findet **beide** Fehler wieder, die am selben Tag von Hand entdeckt
wurden — die Vorlagen-Kontamination in `grobkosten` (Reckholdern, +59 %) und die Einzelzelle in
`immobilienbewertung` (Lanzeln, 12.6 %) — bei **null Fehlalarmen** im Volllauf über **alle**
Wissensbasen.

**Zwei Entwurfsfehler, die den Test erst brauchbar gemacht haben, sind im README festgehalten:**
der erste Entwurf meldete **Prozentrechnungen** als 99-%-Abweichung (`129'000 / 3'100'000 = 4.2`
ist eine Rendite, kein Quotient) — jetzt werden Prozent- und Promille-Lesarten erkannt; und ein zu
strenger Guard (nur prüfen, wenn ein Dokument **genau eine** Bezugsgrösse deklariert) hätte
ausgerechnet den Reckholdern-Fall verschluckt, weil dort **zwei** Volumen im selben Dokument
stehen — und genau das ist Teil des Befunds. Neu wird gegen **jede** deklarierte Grösse geprüft
und nur gemeldet, wenn es gegen **keine** aufgeht.

**Bewusst anders als die beiden Schwester-Werkzeuge:** die setzen den Hub-Pfad fest auf das NAS und
messen deshalb nie die lokale Arbeitskopie. Das neue Werkzeug nimmt den Hub, **in dem es selbst
liegt**, lässt ihn per `--hub` überschreiben und **schreibt ihn in die erste Zeile der Ausgabe**.
Ein Umbau der beiden älteren auf dasselbe Muster wäre einzeilig, greift aber in Werkzeuge ein, die
alle Stationen aufrufen — **nicht selbst gemacht**, Entscheid Raphaels; im README als Vorschlag
festgehalten.

**Für diese KB meldet es **keine Befunde** — sie fuehrt fast nur Rechtsinhalte, kaum eigene Zahlen.**

Geänderte Dateien: `wissen/tools/kennwert-recompute.sh` (neu), `wissen/tools/kennwert-recompute.py`
(neu), `wissen/tools/README.md` (neu), `wiki/QUESTIONS.md` (Werkzeugkasten-Block ergaenzt).

## 2026-08-23 (Vertiefungslauf 6 Revendo) — C-BSP-2026: fertiger Ticket-Text zum Einsetzen vorbereitet

Die Bring-Schuld an `normen` (VKF-Dokument «Brandschutzplatten») lag seit dem ersten Lauf als
offener Punkt hier zwischengeparkt, weil `normen` am selben Tag auf dem Mac Mini bearbeitet wurde
und ein Fremdschreiben dorthin die dortige Arbeit gekreuzt hätte.

**Jetzt vorbereitet statt nur benannt:** in `wiki/QUESTIONS.md` steht ein **fertiger Ticket-Text
`N-BSP-1`** zum Einsetzen in `wissen/normen/wiki/QUESTIONS.md` — mit Titel, Herausgeberin, Version
1-0 vom 10.03.2026, verabschiedendem Gremium, Zuständigkeit, Umfang, Publikationsdatum,
Dokument-ID und Bezugsweg; dazu der **wörtliche BSV-2026-Vorbehalt aus dem Dokument selbst** samt
der Folgerung, das Destillat mit `status: speculative` zu führen, bis die BSV 2026 genehmigt ist
(geplant 03/2027), und der Begründung, warum es gebraucht wird (der Wegweiser führt
Brandschutzplatten heute über Register-Gruppe 231 und ein Dokument von 2017, das neue
Nachweisverfahren fehlt).

**Inhaltlich ist nichts mehr zu recherchieren** — nur einsetzen und die Zeile «Eingetragen durch»
ergänzen. Damit ist die Abweichung von der F-UEBERGABE-Klausel so weit geheilt, wie es ohne
Fremdschreiben in eine parallel bearbeitete KB möglich ist.

Geänderte Dateien: `wiki/QUESTIONS.md` (Ticket-Entwurf unter C-BSP-2026).

## 2026-08-23 (Vertiefungslauf 5 Revendo) — Prüfregel angewendet: ein Richtwert wird von den eigenen Beispielen nicht getragen

Die in `wissen/grobkosten` gewonnene Prüfregel — Zahlen gegen ihre eigene Grundlage zurückrechnen —
auf die Kennwerte dieser KB angewendet. Sie führt fast nur Rechtsinhalte und Verfahren; der einzige
Block mit eigener Zahlenbasis ist die Versickerungs-Kostentabelle in
[[recht-norm-regenwasser-gewaesserraum-zh]]. Dort ein Befund.

**Der Richtwert «Platzbedarf 5–10 % der entwässerten Fläche» deckt sich nicht mit den sechs
Beispielen, die unmittelbar daneben stehen.** Diese liegen bei **2, 3, 7, 8, 8, 8 %** — Spanne
**2–8 %**, Median 7.5 %, Mittelwert 6 %:

- **Zwei von sechs liegen unter der Untergrenze** (Eishalle Deutweg Winterthur 3 %, Acifer
  Regensdorf 2 %) — ein Drittel der Belege.
- **Kein einziges erreicht die Obergrenze**; das Maximum ist 8 %.

**Nicht geändert** — der Richtwert stammt aus der Quelle und stützt sich möglicherweise auf eine
breitere Grundlage als die sechs abgedruckten Fälle, oder die beiden tiefen Werte haben besondere
Gründe (Dachwasser separat, Anschluss an ein Oberflächengewässer, Bestandesanlage). **Belegt ist
das nicht**, und geraten wird es nicht.

**Für die Anwendung im Artikel verankert:** die Beispiele sind der härtere Beleg als der Richtwert,
weil sie reale, benannte Objekte sind. Für eine **Vorbemessung** ist **7–8 %** die von den Belegen
getragene Grössenordnung; die 10 % taugen als Reserve, nicht als Erwartungswert. Und **unter 5 %
ist nachweislich möglich** — wer den Richtwert als Untergrenze liest, überdimensioniert die
Versickerungsfläche gegenüber zwei der sechs Referenzobjekte.

**Dasselbe Muster wie in den anderen Wissensbasen:** eine Bandbreite, die ihre eigene Evidenz nicht
abbildet — hier nicht durch eine fehlende Angabe, sondern durch eine Spanne, die weder die
beobachtete Streuung enthält noch von ihr gestützt wird.

Geänderte Dateien: `wiki/recht-norm-regenwasser-gewaesserraum-zh.md` (⚠-Block + `last_updated`).

## 2026-08-23 (Vertiefungslauf 4 Revendo) — Werkzeug-Falle belegt: die Konsistenz-Werkzeuge messen die NAS-Kopie, nicht das lokale Repo

Beim Abschluss-Konsistenzlauf über die vier bearbeiteten Wissensbasen ist eine Falle aufgefallen,
die bisher nirgends dokumentiert war — und die mich selbst zweimal in die Irre geführt hat, bevor
ich sie nachgemessen habe.

**Der Befund.** `wiki/tools/wiki-konsistenz.sh` und `wiki/tools/link-frischecheck.sh` setzen intern
`HUB="/Volumes/daten/jans-ai-hub"` und wechseln dorthin. Das ist ein **eigener Git-Klon** mit
eigenen `nas-selfcommit`-Commits, der die Arbeitsstation über **GitHub** nachzieht — **nicht** die
Arbeitskopie unter `~/Developer/jans-ai-hub`, in der editiert wird.

**Wie es sich zeigt.** Eine Fundstelle wird lokal korrigiert, das Werkzeug sofort erneut laufen
gelassen — und meldet denselben Befund. Der naheliegende Schluss («die Korrektur hat nicht
gegriffen») ist falsch. Nachgemessen: der NAS-Klon lag zum Prüfzeitpunkt **einen Commit zurück**,
nämlich exakt den mit der Korrektur. Die Kette ist `lokal → GitHub → NAS-Klon`, der Versatz liegt
im Minutenbereich (`git-auto-sync.sh` läuft alle fünf Minuten).

**Regel, im Werkzeugkasten-Block von `wiki/QUESTIONS.md` als vierte Falle verankert:** nach einer
Korrektur einige Minuten warten oder direkt am NAS-Klon gegenprüfen
(`git -C /Volumes/daten/jans-ai-hub log --oneline -1` gegen den lokalen Stand). **Ein unverändertes
Werkzeug-Ergebnis unmittelbar nach einem Edit ist kein Befund, sondern Latenz.**

**Für die Messergebnisse unkritisch**, solange die geprüften Dateien in der laufenden Sitzung nicht
verändert wurden — der Endpunkt-Frischecheck vom selben Tag prüft externe Adressen aus
unverändertem Artikeltext und bleibt gültig.

**Nicht selbst geändert:** die beiden Werkzeuge sind gemeinsam genutzte Infrastruktur, die auch von
den anderen Stationen aufgerufen wird. Ein Umbau auf einen konfigurierbaren Hub-Pfad (etwa
`HUB="${JANS_HUB:-/Volumes/daten/jans-ai-hub}"`) wäre einzeilig und naheliegend, gehört aber zu
Raphael.

**Ergebnis des Konsistenzlaufs selbst:** `grobkosten` und `planungsgrundlagen` **ohne Befund**;
`immobilienbewertung` nur die bekannten, im KB-`CLAUDE.md` als Schema-Abweichung dokumentierten
Frontmatter-Meldungen zu `wissensluecken.md` plus ein Falsch-Positiv (ein in Backticks zitiertes
Link-Beispiel); `entwurfs-referenzen` ein echter, jetzt behobener Punkt (s. dortiges CHANGELOG).

Geänderte Dateien: `wiki/QUESTIONS.md` (vierte Werkzeug-Falle im Werkzeugkasten-Block).

## 2026-08-23 (Vertiefungslauf 3 Revendo) — Folgewirkung der LSV-Novelle im eigenen Bestand: Fassungsvermerk SIA 382/1

Dritte Runde. Statt einer neuen Recherche die **Folgewirkung** der am selben Tag vertieften
LSV-Novelle im eigenen Artikelbestand geprüft: welche Normen macht die revidierte LSV verbindlich,
und in welcher Ausgabe zitiert diese KB sie?

**Befund.** [[recht-norm-ahb-stadt-zuerich-projektstandards]] zitiert dreimal **SIA 382/1:2007**
(§12.1 thermisch aktive Speichermasse und Sonnenschutz, §13.2 Bedarfsnachweis Raumkühlung
Ziff. 4.4.4, §13.3 Lüftungskonzept-Pflicht). Seit dem **01.04.2026** verlangt **Art. 31 Abs. 1bis
LSV** für den «Stand der Technik» kontrollierter Wohnraumlüftungen in lärmbelasteten Gebieten
ausdrücklich die **Ausgabe 2025** (Raumluftqualität IDA 2 nach **SIA 382/1:2025, Tabelle 18**).
Zwischen dem, was die AHB-Standards nennen, und dem, was seit April 2026 gilt, liegen **18 Jahre**.

**Wie behandelt.** Die Zitate sind **quellentreu und unverändert stehen geblieben** — die
AHB-Projektstandards nennen nun einmal die Ausgabe 2007, und sie umzuschreiben würde die Quelle
verfälschen. Stattdessen ein **Fassungsvermerk** unmittelbar davor: welche Ausgabe die AHB-Standards
nennen, welche die LSV verlangt, und die Praxisfolge — wer an lärmexponierter Lage den KWL-Weg
beschreiten will, muss gegen die **Ausgabe 2025** nachweisen, und bei jedem Nachweis ist die
unterstellte Ausgabe auszuschreiben, weil die **Ziffernnummerierung zwischen Ausgaben abweichen
kann** (ein Verweis auf «Ziff. 4.4.4» ohne Jahrgang ist nicht eindeutig).

**Ausdrücklich nicht behauptet:** welche Ziffern sich zwischen 2007 und 2025 materiell geändert
haben. **SIA 382/1:2025 liegt nicht im Haus**; das Delta wäre über die KB `normen` zu beschaffen
(Rule `normen-referenz`). Hier steht nur der Fassungsvermerk, **kein Inhaltsvergleich** — dieselbe
Zurückhaltung wie bei den beiden VKF-Fassungs-Vorbehalten aus dem Wissens-Chef-Lauf 40.

Geänderte Dateien: `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` (Fassungsvermerk +
`last_updated`).

## 2026-08-23 (Vertiefungslauf 2 Revendo) — LSV-Novelle 01.04.2026 an der Primärquelle vertieft, offener Punkt geschlossen

Zweite Runde. Angesetzt am einzigen inhaltlichen Punkt, der ohne neues Projektmaterial und ohne
Raphaels Zutun schliessbar war: die **LSV-Novelle per 01.04.2026** stand seit Run 23 (13.07.2026)
mit «inhaltliche Details noch offen». Geschlossen an der amtlichen **«Erläuterungen zur Revision
der Lärmschutz-Verordnung (LSV; SR 814.41)»**, UVEK, 25.02.2026, **21 Seiten, Volltext gelesen**
(bisher stützte sich die KB auf eine WebSearch).

**Rahmen:** das Parlament beschloss die USG-Änderung am 27.09.2024; sie trat grösstenteils am
01.04.2025 in Kraft — **ausser Art. 22 und 24 revUSG**, die bewusst zurückgestellt wurden, um
gleichzeitig mit den Verordnungsbestimmungen zu greifen. Genau das ist am 01.04.2026 geschehen.
Betroffen: **LSV-Artikel 29, 30, 31, 31a sowie 1, 32, 34, 39, 41**.

**Was die bisherige Zusammenfassung nicht hatte:**
- **Art. 31a LSV (Fluglärm) und Art. 30 LSV (Erschliessung) sind AUFGEHOBEN.** Baubewilligungen
  bei Fluglärm laufen künftig über Art. 22 Abs. 2 revUSG — **für die Flughafenregion Zürich
  unmittelbar relevant**; wer noch mit Art. 31a argumentiert, argumentiert mit aufgehobenem Recht.
  Die Aufhebung von Art. 30 lässt die Sanierungspflicht unberührt (Art. 13 Abs. 4 LSV gilt weiter).
- **Ausnahmequote maximal 10 %** der Wohneinheiten grosser Wohnüberbauungen (eine pro zehn), nur
  bei überwiegendem Interesse **und mit Zustimmung einer kantonalen Behörde** (Art. 31 Abs. 2 neu).
- **Verhältnismässigkeitsschwelle für den verschärften baulichen Mindestschutz: 1 % der
  Gebäudekosten**, ermittelt **nach Baukostenplan BKP (SN 506 500, CRB)** — ein rechnerischer
  Schwellenwert, direkt an die BKP-Systematik und damit an `wissen/grobkosten` anschlussfähig
  (Art. 32 Abs. 2).
- **Neue Nachweispflicht im Baugesuch:** die Bauherrschaft muss die nach Art. 31 Abs. 1 geprüften
  Massnahmen **aufzeigen** — es genügt nicht, sie umzusetzen (Art. 34 Abs. 1 lit. a).
- **Privat nutzbarer Aussenraum:** Ermittlungsort **1.5 m über Boden** (Art. 39 Abs. 4 neu), und
  der **IGW gilt auf der GESAMTEN Fläche** (Art. 41 Abs. 2bis neu) — **kein ruhiger Eckpunkt mehr**,
  das schlägt direkt auf Balkontiefe, Brüstung und Grundriss durch.
- **KWL-Erleichterung gilt nur für Neubauten oder die wesentliche Änderung** bestehender
  Wohnbauten (Art. 31 Abs. 1bis neu), und der «Stand der Technik» ist normativ hinterlegt:
  **SIA 382/1:2025 Tab. 18 (IDA 2) bzw. SIA 382/5:2021 Ziff. 5.2.4 · SIA 180:2014 Fig. 4 ·
  SIA 380/2:2022 Ziff. 3.2.4 · SIA 181:2020 Tab. 2**, ergänzt um das Produktreglement
  Gebäudestandards Minergie.
- **Drei Warnungen aus derselben Quelle**, die beim Verkauf der KWL-Lösung mitgehören:
  Luftdurchlässe bei Fenstern oder Fassade **schwächen die Schalldämmung der Hülle**; die Anlagen
  können **selbst stören**; **KWL ist grundsätzlich nicht für die Nachtauskühlung ausgelegt**, und
  Einzelraum-Klimageräte sind ausdrücklich unerwünscht. Die Erleichterung ist kein Freipass — sie
  verschiebt die Nachweislast von der Fassadenöffnung auf die Haustechnik samt sommerlichem
  Wärmeschutz.
- **Für die Nutzungsplanung** (Art. 29 Abs. 2/3 neu): Freiräume **ca. 300-500 m Distanz**, zu Fuss
  und **hindernisfrei** erreichbar, **keine Mindestgrösse** einzelner Freiräume (Vernetzung zählt),
  Bezug **SIA-Merkblatt 2066**, Bevölkerungsentwicklung einzubeziehen; akustische Wohnqualität als
  **Verbesserung gegenüber dem Status quo**, wobei **nicht umgesetzte Massnahmen zu begründen
  sind** und die genannten Hebel unmittelbar Entwurfsarbeit sind (Gebäudeform/-stellung,
  Nutzungsverteilung im Gebäude, Bespielung der Erdgeschosse, Erschliessungsanlagen).

**Belegstatus offen gehalten:** alles stammt aus der **amtlichen Begründung**, nicht aus dem
Verordnungstext. Der Wortlaut auf fedlex war nicht extrahierbar (JS-Anwendung ohne Rohabruf; der
`admin.ch/opc`-Spiegel antwortet 403) — **bei einem realen Fall gegenlesen**. Die beiden
Fachberichte hinter der Revision (OST/IRAP «Bauzonen in lärmbelasteten Gebieten», Krass et al.
2025; FHNW/INEB «Auslegeordnung KWL in lärmbelasteten Gebieten», Hall 2025) sind **nicht
beschafft** und deshalb nicht zitiert.

Geänderte Dateien: `wiki/recht-norm-quellenlandkarte.md` (neuer Abschnitt + `last_updated`),
`wiki/QUESTIONS.md` (Punkt geschlossen, Restumfang benannt).

## 2026-08-23 (Vertiefungslauf Revendo) — Endpunkte/Links/Connectoren verifiziert: keine Erosion, zwei neue Messbefunde, ein neues VKF-Dokument

Auftrag Raphael: Endpunkte, Links und Connector-Wege verifizieren. Werkzeugkasten **benutzt statt
nachgebaut** (Regel E18).

**Kernergebnis: keine Endpunkt-Erosion.** Neun Connector-Messungen am JANS-Benchmark identisch zum
Wartungslauf 02 (01.08.2026) — EGRID CH879777718909 · Parz. 3338 · BFS 136, Zonenplan W/1.5 · BMZ
1.5 · GH 4.5 · ES_II, 7 Baulinien/116.2 m + Waldgrenze 105.6 m, SZ-EGRID CH527708492462,
GWR-EGRID CH267999915472, `geoshop-zh --list` 247 Zeilen, `maps.zh.ch/wfs/OGDZHWFS` 200.
Alle **33 Behörden-URLs erreichbar (0 TOT)**. Der Frischecheck über 265 Adressen liefert
**keinen neuen** Verdachtsfall: alle 68 Treffer sind dokumentierte Prosa-Artefakte oder bereits
korrekt als tot/umgezogen vermerkte Altbestände (`bsvonline.vkf.ch`, `geo.lu.ch` ohne www,
`geodatenshop.lu.ch`, `kanton-luzern.ch`, `geoglatt.ch`, `gwr.admin.ch` — alle stichprobenweise
an DNS und HTTP nachgemessen, KB-Stand bestätigt).

**Zwei neue Messbefunde** (in `wiki/kartenportale-oereb-egrid-bezug.md` eingearbeitet):
- **`maps.zh.ch/wms/NaturgefahrenZH`: Login-Pflicht von «vermutet» auf «gemessen» gehoben** —
  `HTTP/2 401`, Body `HTTP Basic: Access denied.`, auch auf ein korrekt geformtes
  `GetCapabilities`. Der Run-54-Befund ist damit belegt statt geraten; offener Weg bleibt der WFS.
  Auch in `wiki/kartenportale-naturgefahren-objektschutz.md` nachgetragen.
- **`gis.zh.ch` ist kein toter Host, sondern eine SAN-Luecke — und die dokumentierte Erklaerung
  war zu grob.** `gis.zh.ch` ist ein CNAME auf `maps.zh.ch` (193.246.69.8); `https://` scheitert,
  weil der Geodienst-Server ein Zertifikat **ohne Wildcard** ausliefert (`CN=maps.zh.ch`, 19
  explizite SANs, `gis.zh.ch` nicht darunter), waehrend `www.zh.ch`/`zh.ch` ein echtes Wildcard
  `CN=*.zh.ch` fuehren. **Unter `.zh.ch` gibt es zwei Zertifikatswelten**, der Kopf von
  `link-frischecheck.sh` erklaert solche Faelle bisher pauschal mit der Wildcard-Label-Regel.
  `http://gis.zh.ch` leitet sauber auf `www.zh.ch/de/planen-bauen/geoinformation.html` (200).
  Zitierregel: `gis.zh.ch` nicht mehr als `https://`-Adresse fuehren.

**Werkzeug-Fallstrick dokumentiert:** `behoerden-zh --check` meldet **stationsabhaengig**.
Wartungslauf 02: «33 aktuell · 0 neu», dieser Lauf: «0 aktuell · **33 neu**». Kein
Aenderungsbefund — der SHA-Vergleichsstand liegt unter
`skills/planungsgrundlagen/behoerden-dokumente/`, und dieser Pfad steht in `.gitignore`, wandert
also nie zwischen den Stationen. **Stationsuebergreifend ist nur `TOT` aussagekraeftig**;
«aktuell/geaendert/neu» sind nur innerhalb derselben Station ueber die Zeit zu lesen.

**Faelliger Checkpoint geprueft — BSV 2026, politische Vernehmlassung 08/2026.** Der Wegweiser
hatte ihn selbst gesetzt; er ist erreicht. Ergebnis: **keine Startmeldung publiziert**, die Seite
«Information BSV 2026» ist im Wortlaut unveraendert (Meilensteine: technische Vernehmlassung
09/2025-01/2026 · politische Vernehmlassung 08-11/2026 · IOTH-Genehmigung 03/2027), und die
**Aktuell-Seite von bsvonline.ch endet am 07.05.2026**. Als **Indiz, nicht als Beleg** fuer eine
weitere Verschiebung festgehalten. Fuer JANS unveraendert: **BSV 2015/17/22 gilt**, keine
antizipierten Erleichterungen einplanen. Naechster Check **Ende 11/2026**. Sechste
Refresh-Bestaetigung ohne Delta, erstmals am faelligen Checkpoint selbst.

**Neuer offener Punkt C-BSP-2026 — VKF-Dokument, das diese KB noch nicht kannte.**
«Brandschutzplatten — Grundlagen, Nachweis und Anwendung», **Version 1-0 vom 10.03.2026**,
verabschiedet Technische Kommission Brandschutz, Zustaendigkeit Fachkommission Bautechnik, 9 S.,
publiziert 07.05.2026, Dokument-ID `BSPUB-1394520214-3201` (Bezug ueber `services2.vkf.ch/…`).
Beschreibt ein **neues Nachweisverfahren** fuer Brandschutzplatten. ⚠ Traegt einen
**BSV-2026-Vorbehalt aus eigener Feder** und wird nach der IOTH-Genehmigung revidiert — faellt
damit unter die Regel, keine antizipierten BSV-2026-Inhalte einzuplanen. **Bewusst nicht
destilliert:** VKF-Primaerdokumente fuehrt nach Rule `normen-referenz` die KB `normen`, und der
Eintrag dort ist in diesem Lauf **bewusst unterblieben**, weil `normen` am 23.08.2026 parallel auf
dem Mac Mini bearbeitet wird (Stationsteilung). Abweichung von der F-UEBERGABE-Klausel, in
`wiki/QUESTIONS.md` begruendet festgehalten und Raphael gemeldet.

**Nicht angetastet:** die inhaltlichen K/R/C/D-Punkte (laut Zustaendigkeitsvermerk keine Aufgabe
eines Endpunkt-/Link-Laufs) und der Nachzug der beiden VKF-Fassungs-Vorbehalte (BSE 108-15,
BRL 10-15), der auf `established`-Destillate aus `normen` wartet.

Geaenderte Dateien: `wiki/kartenportale-oereb-egrid-bezug.md`,
`wiki/kartenportale-naturgefahren-objektschutz.md`, `wiki/brandschutz-pl03-wegweiser.md`,
`wiki/QUESTIONS.md`. Report: `outputs/2026-08-23_vertiefungslauf-endpunkte-connectoren.md`.
Alle Schreiboperationen nach Rule `auto-verbesserungen` 260811 per `git diff --numstat` geprueft;
Loeschungen ausschliesslich an den drei `last_updated`-Zeilen und einer gezielt ersetzten Zeile im
Naturgefahren-Artikel.

## 2026-08-23 — QUESTIONS.md-Abarbeitung: neun offene Positionen bearbeitet, sieben geschlossen

- **K68** (revBZO Thalwil, proj-Layer-Verhalten): Live-Connector-Test am Referenzfall Bohlweg 3
  Thalwil (Parz. 6289) — Teilfrage (a) beantwortet (proj-Attribute bei `Aenderung_Bauordnung`
  koennen bestueckt sein, kein verlaessliches Ausschlusskriterium), Teilfrage (b) mangels
  Statuswechsel noch nicht beobachtbar. Neuer Benchmark-Eintrag in
  `wiki/kartenportale-zonenplan-zh.md` §A6.
- **K62** (Regenwasser-Nutzungsseite): bereits grossteils vorhandener Abschnitt A.2 in
  `wiki/recht-norm-regenwasser-gewaesserraum-zh.md` verifiziert, Raw-Dateinamen korrigiert
  (`260730_` → `260803_amtlich_zh_wsg/wsv.md`), Verlinkung zu `baurecht`s inzwischen erfolgter
  Destillation ([[baureife-und-erschliessung]]) nachgezogen.
- **K61** (KGSchV-Nachfolgeerlass OEREB-Thema 130): Nachfolgenorm belegt (§ 45 WsG, § 92 WsV),
  Tabellenzeile und Kasten in `wiki/kartenportale-oereb-kataster-system-zh.md` nachgefuehrt;
  Datumskorrektur aus `baurecht` (KGSchV nicht 2022, sondern erst 01.06.2026 aufgehoben)
  uebernommen.
- **R74** (VSS-Tiefgarage-Geometrie 2005→2021): `wiki/recht-norm-tiefgarage-erschliessung.md`
  Abschnitt 2 materiell auf VSS 40 291:2021 umgestellt (Parkfeld-/Fahrgassenmasse, lichte Hoehe,
  Rampenneigung, Kurvenverbreiterung, Motorrad-Parkfelder), Ausgabe 2005 in neuen Abschnitt 2.8
  fuer Bestandesanlagen 2006-2019 verschoben samt Delta-Tabelle. Werte aus zwei bereits
  `established` Destillaten der KB `normen` synthetisiert (keine neue Norm-Lektuere). Cross-KB-
  Ruecklauf in `wissen/normen/wiki/QUESTIONS.md` Run 38 nachgetragen.
- **C40** (Brandschutz EFH→MFH-Nachruestpflicht): zweistufiger Verhaeltnismaessigkeits-Massstab
  belegt (BSN 1-15 Art. 2 + Schwelle «neubauaehnliche Umgestaltung»), zwei falsche Faehrten
  widerlegt (BSR 15-15 Ziff. 3.7 ohne Bestandes-Aussage, § 357 PBG gilt nicht fuer Brandschutz).
  Eingearbeitet in `wiki/brandschutz-pl03-wegweiser.md` §4b.
- **F-UEBERGABE** (Cross-KB-Bringschuld-Mechanismus): neue Klausel in Rule
  `wissens-bibliothekar.md` ergaenzt — der erledigende Lauf traegt die Pflicht, den Fund in der
  Empfaenger-KB sichtbar zu machen. Live an K61 und R74 angewendet.
- **F-LINKS-REST** (vier gealterte Fundstellen): zwei quellenbehaftete Faelle (eco-bau.ch,
  energieheld.ch) mit «Quelle nennt X, heute Y»-Vermerk in `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
  §6.5 und `wiki/energie-pv-eignung-typenwahl.md` nachgetragen.
- **D9** (MFH-/ZEV-Betriebskostenfall) und **E13** (bexio.mjs UTC-Datumsfalle) bleiben bewusst
  offen — beide sind nicht durch Recherche schliessbar (D9 wartet auf ein reales Projekt, E13 auf
  Raphaels Einzelfreigabe nach Rule 260702); Re-Verifikation 2026-08-23 dokumentiert, kein neuer
  Rueckstand.

Alle Eingriffe nach Rule `auto-verbesserungen` 260811 per `git diff --numstat` (nativ via ssh)
gegen den Sessionstand geprueft: nur Ergaenzungen/gezielte Ersetzungen, keine unbeabsichtigten
Loeschungen; die grossen Nachbar-Diffs in `wissen/baurecht/wiki/QUESTIONS.md` und
`wissen/normen/wiki/QUESTIONS.md` stammen von parallel laufenden Loops (eigene Commits,
verifiziert), nicht von dieser Bearbeitung.

## 2026-08-22 — Wissens-Chef Run 40 (Cross-KB): zwei VKF-Fassungs-Vorbehalte + Routing-Korrektur

- `wiki/brandschutz-pl03-wegweiser.md` §5ag: **Fassungs-Vorbehalt** zur VKF-Erlaeuterung 108-15
  gesetzt — der Abschnitt beschreibt die Fassung 01.01.2015, geltend ist 01.01.2020/Stand 01.08.2022;
  namentlich ueberholt ist die Intervall-Aussage «durch die Brandschutzbehoerde festgelegt» (neu:
  kodifiziertes Mindestraster nach Risikogruppe). Quelle
  `wissen/normen/destillate/vkf-brl-108-15-fassung-2020-delta.md` (Run 59). **Zahlen bewusst nicht
  uebernommen** — das Delta traegt `status: speculative` (Rule `normen-referenz` Ziff. 1b).
- `wiki/brandschutz-pl03-wegweiser.md` Aenderungsliste 2015↔2017: die **Gesamthoehe am Flachdach** aus
  der Aufzaehlung «durchgaengig redaktionelle Praezisierungen» herausgenommen und mit Vorbehalt
  versehen; die Praxiskonsequenz «kein Korrekturbedarf an bestehenden Tabellen» auf die
  **Tabellenwerte** eingegrenzt, mit ausdruecklicher Ausnahme fuer die Messweise, die in §4 die
  Klassengrenzen 11 m / 30 m speist. Die §4-Schwellen selbst unangetastet.
- `wiki/energie-pv-eignung-typenwahl.md`: **Rueckkante** zur KB `energie` gesetzt (Sunskin-Destillat
  und PV-Spezialmodul-Datenblaetter, beide dieselbe Primaerquelle wie §1c bzw. die Typenzeilen 51/53).
- `wiki/recht-norm-quellenlandkarte.md` Z. 394: Minergie-Routing zeigte noch auf «Skill
  `planungsgrundlagen` (Energie)» — Stand vor der Verselbstaendigung des Skills `energie` am
  03.08.2026. Auf `energie` korrigiert, amtlicher ZH-Nachweisweg ausdruecklich hier belassen.
- `wiki/QUESTIONS.md`: Nachzug-Auftrag fuer beide Fassungs-Deltas eingetragen (materielle Uebernahme
  erst, wenn die Destillate `established` sind — Arbeit der KB `normen`, nicht des Wartungslaufs).

Alle Eingriffe gegen eine Sicherungskopie gemessen (Rule `auto-verbesserungen` 260811): QUESTIONS,
Typenwahl und Quellenlandkarte-Tabellenzelle ohne unbeabsichtigte Loeschung; im Wegweiser genau die
sechs ersetzten Zeilen, Inhalt in den neuen Fassungen erhalten.

## 2026-08-21 (Wissens-Chef Run 39, Cross-KB) — ein Zuercher Gesetz stand in der Bundeserlass-Tabelle

- **`wiki/recht-norm-quellenlandkarte.md` Z. 68 berichtigt.** Die Datei `730.1_19.6.83_*` stand unter
  der Ueberschrift «Bundeserlasse — SR-Nummer → fedlex» als «Energie-Verordnung, historische Fassung
  1983» mit dem Nachfolgeverweis «EnV SR 730.01 = cc/2017/763». Beides falsch: es ist das
  **Energiegesetz (EnerG) des Kantons Zuerich vom 19.06.1983**, Zuercher Gesetzessammlung **LS 730.1** —
  kein Bundeserlass, keine SR-Nummer, nicht auf fedlex. Belegt am Primaertext (8 S. vollstaendig
  gelesen, energie-Lauf 148 vom selben Tag): `wissen/energie/destillate/energ-zh-nachtrag72-2011-historisch.md`
  Z. 2-3. Zusaetzlich erhaertet: ein Bundesgesetz zur Energie existierte 1983 verfassungsrechtlich noch
  nicht (Energieartikel erst 1990).
- **Korrigiert statt geloescht**, weil zwei der vier Exemplare tatsaechlich in `01_Gesetze/01_Bund`
  liegen — eine Fehlablage in der Quelle und die Ursache der Fehlidentifikation. Die Zeile benennt die
  Falle jetzt ausdruecklich.
- **`wiki/recht-norm-hindernisfreies-bauen-zh.md` Z. 6:** das UGZ-Merkblatt stand in den Quellen als
  «ohne Datum», waehrend der eigene Fliesstext und das fuehrende Destillat
  `normen/destillate/ugz-hindernisfreie-aufzuege-2010.md` «Version Maerz 2010» belegen. Angeglichen.
- **Drei Rueckkanten gesetzt** (die Hinkanten hatte `energie` am 21.08. bereits): zum neuen Artikel
  `energie/wiki/energienachweis-zh` samt Rollenteilung (dort die materiellen Nachweiswege, hier die
  Formular-/EVEN-Bedienung), zur SolarApp-Basel-Zeile in `energie-pv-eignung-typenwahl` und zum
  Maison-Climat-Destillat.

Bericht: `../koordination/outputs/2026-08-21_wissens-chef-run39.md`.

## 2026-08-20 (Wissens-Chef Run 38, Cross-KB) — VKF-Fassungs-Sweep angekommen: eine zurückgezogene Erläuterung, eine gestrichene Kennzahl, drei Fassungsvermerke

Der Wegweiser `wiki/brandschutz-pl03-wegweiser.md` ist mit 48 VKF-Nennungen der grösste Abnehmer
der Brandschutzrichtlinien im Hub. Die KB `normen` hat heute Nacht (Run 58) alle 35 destillierten
VKF-Publikationen erstmals gegen den amtlichen Publikationsindex abgeglichen und **nur ihr eigenes
Register** nachgeführt. Fünf Stellen dieses Artikels sind dadurch überholt. Alle Eingriffe sind
additive Warnkästen; **kein Fachinhalt wurde entfernt**. Schreib-Kontrolle 82/3, die drei
Löschungen sind die ersetzten Zeilen der Kernzahlen-Zeile in §5r.

- **§5ai Cheminées — die Grundlage existiert nicht mehr.** Die VKF-Erläuterung **103-15 ist am
  31.08.2025 zurückgezogen** worden; es steht keine Erläuterung zu diesem Gegenstand mehr in
  Kraft. Der Abschnitt wurde am 14.07.2026 verfasst, also **elf Monate nach dem Rückzug**, und
  wertete sie bis heute als aktive Fachgrundlage aus, samt abgeleitetem Praxis-Transfer für
  `ankaufspruefung`/`machbarkeit`. Rückzugs-Warnkasten gesetzt: der 0.8-m-Erfahrungswert bleibt
  brauchbar, ist aber **keine zitierfähige Fundstelle mehr**; Anforderungen über die geltende
  BRL 24-15 und die kantonale Feuerpolizei abstützen. Belegqualität ausdrücklich vermerkt — der
  Rückzug steht allein in der Portal-Annotation, das PDF trägt keinen Vermerk (`N58-2`).
- **§5r Sicherheitsbeleuchtung — die 15-Sekunden-Frist gibt es seit 01.01.2017 nicht mehr.**
  Vom Melder als «weich» eingestuft, im Hauptkontext am 2017er-Änderungsdelta selbst nachgeprüft
  und dabei **auf hart hochgestuft**: die Teilrevision ersetzt «spätestens nach 15 Sekunden» durch
  «entsprechend dem Stand der Technik» (`normen/destillate/vkf-brl-aenderungen-2017.md`, S. 24 der
  Gegenüberstellung). Es gibt keine feste Zahl mehr zu zitieren. Die Zahl war hier als geltende
  Kernzahl geführt und wäre so in ein Vorprojekt gewandert. Zusätzlich die 2017er-Änderung an
  Ziff. 3.3.2 nachgetragen. **30 Minuten und 1 Lux stehen nicht in der Änderungsliste und bleiben.**
- **§5l RWA (BRL 21-15)** — Fassungsvermerk 2015 → geltend 01.01.2017. **Die Schwellenwerte
  600/3'600 bzw. 2'400/4'800 m² bleiben gültig:** die Änderungsliste 2017 führt für 21-15 nur
  Ziff. 3.4.1 und den Anhang zu Ziff. 3.2, **Ziff. 3.1 ist nicht darunter**. Zu berichtigen war
  die Fassungsangabe, nicht die Zahl.
- **§5q Löscheinrichtungen/Beförderungsanlagen (18-15/23-15)** — Fassungsvermerk 2015 → 2017.
  Selbst nachgeprüft: die **Feuerwehraufzug-Kennzahlen** (Kabine 1.1 × 2.1 m, 1'000 kg, Schleuse
  2.4 × 2.4 m, Brandfallsteuerung Ziff. 3.7) sind in der Änderungsliste **nicht** aufgeführt; für
  23-15 stehen dort nur die neue Ziff. 3.6 Abs. 2 und die cr-Kennzeichnung in Ziff. 5.1.
  **Löscheinrichtungen kommen in der Übersicht überhaupt nicht vor.** Ausdrücklich vermerkt, dass
  diese Übersicht eine Drittanbieter-Schulungsunterlage ist: für 18-15 ist damit belegt, dass
  **kein Delta bekannt** ist, nicht dass keines existiert.
- **§5f Verzeichnis 40-15** — geltend ist **11.06.2025**, der grösste Fassungssprung der ganzen
  Matrix; das Hausexemplar von 2015 trug schon damals ein «in Überarbeitung»-Wasserzeichen.
  Konkordanztabelle vor Gebrauch neu beziehen.
- **Geprüft, kein Befund:** BRL 2001-15 Solaranlagen (führt korrekt 01.01.2022), BRL 16-15
  (korrekt 01.12.2022), BRL 2005-15 Lithium-Ionen (korrekt 01.06.2021),
  `wiki/recht-norm-arbeitshilfen-planungsdetails.md` (Fassungsvorbehalt bereits explizit),
  `wiki/energie-pv-brandschutz.md` und `wiki/energie-pv-eignung-typenwahl.md` (nennen VKF nur im
  Swissolar-Kontext ohne eigene Fassungsangabe).

## 2026-08-19 (Wissens-Chef Run 37, Cross-KB) — Rueckzugs-Nachtrag an der publizierten SIA 416/1; der Entwurf 3/05 bleibt unberuehrt

- **`wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`:** Der Fassungsvorbehalt (Run 35,
  ergaenzt Run 36) hat einen datierten Nachtrag erhalten — und zwar **an der richtigen Stelle**.
  Betroffen ist allein die **publizierte** SIA 416/1:2007 (Ziff. 3.2.2/Figur 16, 1,0 m) und der
  daraus abgeleitete Satz «Fuer einen Energienachweis gilt 1,0 m»: dieser stuetzt einen aktuellen
  Nachweiswert auf eine **archivierte Ausgabe**. Belegt an zwei Primaerquellen (Normen-Nacht Run 57, 19.08.2026): SIA-Shop-Produktdatenblatt
(«archivierter Titel», mit Enddatum) und Titelblatt der **SIA 380:2015** (SN 504380:2015),
das woertlich «Ersatz fuer SIA 416/1:2007» traegt. **SIA 380:2015 liegt nicht im Haus** —
Beschaffung ist Bring-Schuld (Ticket `N57-2` in `wissen/normen/wiki/QUESTIONS.md`); die
Fundstellen sind deshalb **nicht** umgehaengt, sondern nur mit Fassungsvermerk versehen.

- **Ausdruecklich NICHT angefasst: der Entwurf 3/05** (Z. 30, 72 und der Entwurfs-Satz im
  Vorbehalt). Ein Entwurf von 2005 ist vom Rueckzug der Publikation 2007 nicht betroffen und ueber
  den AHB-Honorarvertrag der Stadt Zuerich weiterhin bindend; der RFB-Wert **1,5 m** bleibt gueltig.
  Die urspruenglich geplante Zielzeile lag genau auf diesem Entwurfs-Satz und wurde durch die
  adversarische Pruefung um die richtige Anzahl Zeilen verschoben — ohne sie waere der Vermerk auf
  den einzigen Satz des Absatzes gefallen, den er nicht betrifft.
- Ebenfalls unberuehrt: alle SIA-416:2003-Nennungen der Datei (Z. 27, 30-Teil, 38, 575, 715, 1270).

## 2026-08-18 (Wissens-Chef Run 36, Cross-KB) — Fluchtwegtuer-Ausnahme auf VKF-Stand gebracht; Doppelfuehrungs-Landkarte gesetzt

- **Befund M3-3 (teilweise bestaetigt).** `wiki/recht-norm-arbeitshilfen-planungsdetails.md` §4.2
  gab die Ausnahme «Tueren zu Raeumen ≤ 30 m²/≤ 6 Personen» im Praesens als geltende VKF-Regel
  wieder. Das ist der Stand der VKF-Generation 2003. Massgebend ist heute **VKF-BRL 16-15
  «Flucht- und Rettungswege» Ziff. 2.5.5: Ausnahme fuer Raeume mit max. 20 Personen, ohne
  Flaechenkriterium**. Fassungsvorbehalt gesetzt; das Merkblatt ist an dieser Stelle strenger
  als das geltende Recht.
- **Der Refuter korrigierte den Fehler-Ort des Melders:** gemeldet war Z. 183 (Tabellenzeile
  «Zielgruppe»), die den Anwendungsbereich der Produktnorm SN EN 179 korrekt wiedergibt und
  unveraendert bleiben musste. Der Fehler stand im Fliesstext darunter. Ausserdem verwarf er
  den Belegvorschlag des Melders: der haette ein `speculative`-Destillat zur Belegquelle eines
  `established`-Artikels gemacht (Rule `normen-referenz` Ziff. 1b). Verlinkt wurde stattdessen
  auf `vkf-brl-16-15-flucht-rettungswege.md`.
- **Uebergabe-Auftrag 1 aus Run 35 erledigt: der Cluster ist beschriftet.** Statt sieben
  verstreuter Einzelvermerke traegt der Artikel jetzt am Kopf eine **Doppelfuehrungs-Landkarte**
  ueber alle sieben Quellen: welche zusaetzlich in `wissen/normen/destillate/` liegt und wer
  wofuer fuehrend ist. Merksatz festgehalten: die Doppelbewirtschaftung ist gewollt (beide KBs
  lesen dieselbe PDF mit verschiedener Absicht — `normen` die zitierfaehige Fundstelle, dieser
  Artikel die baupraktische Einordnung); falsch waere nur, sie nicht aufzuschreiben.
  Zwei der sieben Quellen (2h-Schatten, Post-Briefkastenanlage) sind echte Alleinstellungen.
- **Befund M3-4 (Stand nachgezogen):** Die AUVA-Ausstattungsklassen-Matrix stand in §7 als
  unqualifizierte Vorprojekt-Empfehlung, obwohl die spaetere Pruefung in `normen` (Run 43,
  03.08.2026) sie fuer die Schweiz als **nicht validiert** einstuft. Vorbehalt gesetzt, mit
  Verweis auf Suva 44066/BauAV (Schwelle 3,0 m statt der AUVA-eigenen 5-m-Leiterregel).
- **Befund M4-1:** Zeilenverweis auf `sia-416-1-2007.md` zeigte nach dessen Wachstum in Run 56
  ins Leere. Auf **Ziffer/Figur statt Zeilennummer** umgestellt — Ziffern sind stabil,
  Zeilennummern wandern bei jedem Destillat-Zuwachs.

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — EBF-Schwelle 1,5 m ist RFB-Stand, kein Fehler; zweiter Quellordner beschriftet

- **Gemeldeter Widerspruch WIDERLEGT, Wert unveraendert:** Die EBF-Ausschlussgrenze «lichte
  Raumhoehe <1.5 m» in `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` Z. 78 ist **kein
  Uebertragungsfehler** gegenueber den 1,0 m der SIA 416/1:2007 Ziff. 3.2.2. Der Refuter las beide
  Originale: Figur 16 der publizierten Norm zeigt «h < 1 m»; die 1,5 m sind die wortgetreue
  Wiedergabe der **RFB-Richtlinie V7.0 (13.07.2007) Ziff. 3.5.2.3** der Stadt Zuerich, die auf dem
  **Entwurf 3/05** der SIA 416/1 fusst und ueber den AHB-Honorarvertrag bindend ist. **Zwei je fuer
  sich gueltige Fassungen.**
- **Was trotzdem zu tun war (Ergonomie, nicht Wahrheit):** Die Fassungsangabe stand in Z. 30, die
  Zahl in Z. 78 — wer Abschnitt 1.2 isoliert liest, haelt 1,5 m fuer den geltenden SIA-Stand, und
  **fuer einen Energienachweis waere das der falsche Nenner der Energiekennzahl**.
  Zwischenueberschrift auf «SIA 416/1 **Entwurf 3/05** — RFB-Stand» praezisiert, Fassungsvorbehalt
  mit beiden Zahlen und ihrer jeweiligen Geltung gesetzt. 10/2.
- **`wiki/recht-norm-quellenlandkarte.md`:** Fuehrungsvermerk fuer
  `01_Gesetze/02_Zuerich/Energie` — diesen Ordner erschliesst seit 17.08.2026 die KB `energie`
  (vier Destillate namentlich genannt), diese KB destilliert ihn nicht. `grep -rln` nach den vier
  Dateinamen ueber `wissen/planungsgrundlagen/`: null Treffer. Die AHB-Fuehrungszeile aus Run 34
  deckt diesen Ordner **nicht** ab. 10/0.
- **Bestaetigt, was haelt:** Die Run-34-Gegenkante zur Raumtemperatur-Richtlinie ist intakt (§20 ↔
  Destillat, Werte 16 °C / −10 °C / 06.00-20.00 stimmen ueberein), und die Rollenteilung
  Physik=`energie` / Verfahren=`planungsgrundlagen` haelt unveraendert.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-16 (Wissens-Chef Run 34, Cross-KB) — Gegenkante zur Raumtemperatur-Richtlinie; der AHB-Ordner ist messbar von zwei KBs bewirtschaftet

- **`wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` §20 (Raumtemperatur-Richtlinie 2006,
  StRB 1194/04.10.2006):** Gegenkante nach `energie` gesetzt. Dort ist dieselbe Quelle am
  16.08.2026 (Run 137) unabhängig und vollständig destilliert worden
  (`destillate/raumtemperatur-richtlinie-stadt-zuerich-2006.md`, `status: emerging`, komplette
  Anhänge 1–3). Die hier geführten Werte stimmen überein — **kein Widerspruch**, aber der dritte
  Fall desselben Musters nach Dachbegrünung (Run 33) und PCB-Fugendichtungsmassen (heute).
- **Der Befund hinter den drei Einzelfällen, gemessen statt erzählt:** von den **25**
  `energie`-Destillaten mit Quelle aus dem Ordner `PL - 02_Recht_Norm/04_Merkblätter/Projektadmin AHB/`
  ist **genau eines** in dieser KB genannt. Namentlich: die neun `ahb-zuerich-gt-rl1..9`-Destillate
  (`energie`, 03.08.2026) gegen §12/§13 dieses Artikels (14.07./25.07.2026) — dieselben neun
  Quell-PDF, neun Tage auseinander, unabhängig destilliert, **null Kanten in beide Richtungen**.
- **Zuständigkeit festgehalten** (neue Führungszeile in `koordination/QUERBEZUEGE.md`): diese KB
  führt den **Ordnerkontext, die Vertragsbindung an den AHB-Honorarvertrag und die Einordnung**
  je Dokument, `energie` führt die **Detailwerte und den Bauherren-Transfer**. Wer aus diesem
  Ordner destilliert, prüft zuerst diesen Artikel und setzt die Kante beidseitig.
- **Nicht angefasst:** die Wikilinks `[[energie-baustoffe-schadstoffe-rueckbau]]` (Z. 1166/1170/1197
  und Frontmatter). Ein Melder hielt sie für tot und wollte sie auf `[[gebaeudeschadstoffe]]`
  umbiegen; die Gegenprüfung belegte, dass sie auf den existierenden KB-eigenen Artikel
  `wiki/energie-baustoffe-schadstoffe-rueckbau.md` (`established`, seit 14.07.2026) zeigen. Die
  vorgeschlagene «Korrektur» hätte einen funktionierenden Link zerstört.
- Eingriff rein additiv gemessen (8+/0).

## 2026-08-15 (Wissens-Chef Run 33, Cross-KB) — Gegenkante zur Dachbegruenung; die Korrektur vom 31.07. hatte eine Parallel-Destillation nicht erreicht

- **`wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`, §19 Dachbegruenung:** Gegenkante
  nach `energie` gesetzt. Anlass: diese KB hatte die AHB-Checkliste Dachbegruenung (16.02.2009)
  am 25.07. verarbeitet und den darin zitierten, ueberholten BZO-Art.-11-Wortlaut am
  **31.07.2026 (Wissens-Chef Run 22) korrigiert**. Am **15.08.2026** destillierte `energie`
  dieselbe Quelle unabhaengig und uebernahm den Fehler erneut, weil keine Kante bestand
  (`grep -c "planungsgrundlagen"` in beiden neuen energie-Dateien: 0).
- **Zustaendigkeit festgehalten** (neu auch in der Fuehrungsmatrix `koordination/QUERBEZUEGE.md`):
  dieser Artikel fuehrt **Recht und Bewilligungspflicht**, den **Erlasswortlaut** fuehrt
  `baurecht`, `energie` fuehrt Substrat-/Qualitaetsstandard, bauphysikalische Kennwerte und die
  PV-Kombination.
- **Zweiter belegter Fall derselben Mechanik:** eine hier ausgesprochene Korrektur erreicht eine
  parallel laufende Destillation in einer anderen KB nicht, solange keine Kante besteht. Der
  Vermerk steht jetzt im Artikel selbst.
- Bericht: `koordination/outputs/2026-08-15_wissens-chef-run33.md`.

## 2026-08-07 (Wissens-Chef Run 28, Cross-KB) — § 321 Abs. 2 PBG: Kann-Modalverb zog faelschlich ueber beide Halbsaetze

- **`wiki/recht-norm-mehrwertrevers-grundbucheintragungen.md`, Abschnitt 1:** Der Satz
  «Nebenbestimmungen mit laengerer zeitlicher Wirkung vor Baubeginn und andere
  Eigentumsbeschraenkungen **koennen** im Grundbuch angemerkt werden» machte aus der
  **Pflicht-Haelfte** der Norm eine Kann-Vorschrift. Am amtlichen Wortlaut geprueft
  (`wissen/baurecht/raw/260607_amtlich_zh_pbg.md` Z. 3306-3309): § 321 Abs. 2 PBG hat **zwei
  Haelften** — Pflicht («sind vor Baubeginn … anzumerken») fuer Nebenbestimmungen mit laengerer
  zeitlicher Wirkung, Kann («wo ein Beduerfnis besteht, kann die Anmerkung … angeordnet werden»)
  fuer die uebrigen Eigentumsbeschraenkungen. Beide Haelften stehen jetzt da.
- **Bewusst NICHT getan:** den Satz pauschal auf «Pflicht» umgeschrieben. Das haette die
  Kann-Haelfte ersatzlos geloescht — dieser Artikel ist die einzige Stelle im Hub, die sie trug
  (die fuehrende `baurecht`-Seite behandelte sie bis heute gar nicht). Ein richtiger Inhalt
  waere durch einen unvollstaendigen ersetzt worden.
- **Fassungsvermerk umformuliert statt getilgt:** ob die 1991er-Fassung wirklich anders lautete
  oder Bösch 1993 nur verkuerzt referiert, ist aus dem Bestand **nicht** klaerbar. Die Zuschreibung
  bleibt deshalb als **Fassungsvorbehalt** stehen; massgebend ist der amtliche Wortlaut der
  geltenden Fassung, gefuehrt in `wissen/baurecht/wiki/nebenbestimmungen-und-reverse.md`.
- **Querverweis B→A vervollstaendigt:** der bestehende ⚠-Datenstand-Block nannte bisher nur den
  Skill `baurecht`; ergaenzt ist der **Artikel-Pfad** samt Statusangabe (`established`, Buch-Run 67
  verifiziert). Kein neuer Abschnitt, keine Kennzeichnung als «ergaenzend» — der Artikel ordnet
  sich mit `emerging` + ⚠-Block bereits selbst unter. `status` bleibt `emerging`, die
  Einschraenkung bleibt vollstaendig stehen, `links:`-Frontmatter unveraendert (KB-intern
  aufgeloest, Cross-KB laeuft ueber Backtick-Pfade). `last_updated` auf 2026-08-07.
- Gegenrichtung (Verweis von `baurecht` hierher, mit Status-Etikett) im selben Lauf gesetzt,
  protokolliert in `wissen/baurecht/CHANGELOG.md`.

## 2026-08-06 (Wissens-Chef Run 27, Cross-KB) — Zeiger auf die geltende Ausgabe 2022 umgestellt

- **`wiki/energie-pv-brandschutz.md`:** Der Querbezug-Block zeigte auf
  `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen` — diese Datei traegt seit dem
  05.08. `status: superseded`. Umgestellt auf das Volldestillat der geltenden Ausgabe
  `…/vkf-merkblatt-2001-15-solaranlagen-2022` (angelegt normen Run 45, 06.08.2026 01:48),
  **mit Statusvorbehalt**: das 2022er-Destillat traegt selbst `status: speculative`, weil
  Erstdestillat und Refuter-Runde beide im selben Lauf liefen und die unabhaengige
  Zweitverifikation aussteht (am Destillat nachgeprueft). Die Bestandsfassung 06.03.2015 bleibt
  als historische Fassung fuer Altprojekte benannt.
- **Merkmalsklammer praezisiert**, beides am 2022er-Destillat belegt: «RWA-Abstand 2 m» →
  «2.0 m nur noch als massnahmenfreie Anhangs-Schwelle, sonst Lichtraumprofil» (Delta 3, Anhang
  S. 14); «1200-m²-RF1-Grenze» → «**> 1200 m²**» (Ziff. 3.2.3 Abs. 1, S. 9). Der 2-m-Wert ist
  2022 nicht verschwunden, sondern aus dem Haupttext in den Anhang gewandert und gilt dort weiter.
- **Erledigt-Vermerk an beiden Stellen** nachgezogen, an denen derselbe Vorbehalt stand
  (Kopfnotiz und Schlussabsatz «Datenstand / offen») — die Datei war in sich widerspruechlich.
  Offen bleiben nur noch: Zwischenausgabe 01.01.2017 ohne eigenes Destillat, ausstehende
  Zweitverifikation des 2022er-Destillats, unveraenderter SharePoint-Bestand 2015.
- **`wiki/QUESTIONS.md`:** neuer Punkt **F-UEBERGABE** — der normen-Laufbericht Run 45 nennt
  `planungsgrundlagen` mit 0 Treffern, die Uebergabe an die Empfaenger-KB wurde also nicht
  notiert. Das bekannte Verpuff-Muster, hier in der Querrichtung zwischen zwei KBs.
- Frontmatter `last_updated` auf 2026-08-06, `sources` um das 2022er-Destillat ergaenzt.

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — die eigene Meldung ist bestaetigt, und zwar am VKF-Original

- **`wiki/energie-pv-brandschutz.md`:** Die Kopfnotiz «2022er-Re-Destillat in normen offen» ist durch
  den geklaerten Stand ersetzt. Der von dieser KB gemeldete Delta (Unterdachbahnen RF3(cr) statt
  RF4(cr)) ist **bestaetigt — und zwar aus dem VKF-Text selbst**, nicht nur aus dem Swissolar-STP:
  Ziff. 3.2.3 Abs. 3 «Unterdachbahnen muessen mindestens aus Baustoffen der RF3 (cr) bestehen».
- **Praezisierung gegenueber der eigenen Meldung:** Der Delta gilt bereits **seit der Ausgabe
  01.01.2017**, nicht erst seit 2022 — die Zwischenfassung kannte keine der drei beteiligten KBs.
- Loesung A2 auf Primaerquellen-Beleg gehoben; der datierte Block «Rev.-2022-Delta bestaetigt
  (Run 37)» bleibt stehen und bekam einen Nachtrag.
- **Merkposten:** Die beiden normen-Destillate, auf die diese Seite als «fuehrendes Destillat»
  verlinkt, fuehren die **historische** Fassung 2015 und sind entsprechend gekennzeichnet.

Bericht: `wissen/koordination/outputs/2026-08-05_wissens-chef-run26.md`.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Vorwirkung: Bruecke zum fuehrenden baurecht-Artikel gelegt; Thalwiler Ueberwachungs-Pendenz als K68 uebernommen

- **`wiki/kartenportale-oereb-kataster-system-zh.md` § 3 — Zeiger auf die fuehrende KB gesetzt,
  nichts entfernt.** Der Abschnitt referiert Ziff. 2.5.2 der OEREB-Weisung quellentreu und ist
  **nicht mangelhaft, sondern quellenbegrenzt**: die Weisung ist eine Kataster-Betriebsweisung und
  sagt nichts darueber, wie weit die Vorwirkung im Einzelfall reicht. Der Abschnitt **bleibt hier**
  — er erklaert, warum das Connector-Flag `revision_laeuft` rechtliche Wirkung hat, und das ist
  Auslegung des Geodatums, also Kernaufgabe dieser KB; er darf beim naechsten Sweep **nicht**
  gekuerzt oder nach `baurecht` verschoben werden. Neu ergaenzt: Querbezug-Kasten auf
  `wissen/baurecht/wiki/negative-vorwirkung-und-bzo-revision.md` (§ 234 PBG als Anknuepfung,
  § 235 PBG fuer die Dauer, je Einzelbestimmung die strengere Fassung) plus die Lesegrenze — der
  proj-Layer meldet **dass** und in welcher **Phase** revidiert wird, nie **welche
  Einzelbestimmung** vorwirkt; bei `revisionsart = Aenderung_Bauordnung` bleiben die
  proj-Attribute sogar leer (Anschluss [[kartenportale-zonenplan-zh]] §A6). Frontmatter `links:`
  um den baurecht-Artikel erweitert.
- ⚠ **Bewusst NICHT verallgemeinert:** die absatz- bzw. zellengenaue Grau-Markierung, mit der
  Thalwil den Umfang der Vorwirkung publiziert, ist **kommunale Praxis** und keine Vorgabe der
  Weisung. Sie steht im Kasten ausdruecklich als **Beispiel**, nicht als Regel fuer den Kanton ZH
  — nicht jede Gemeinde legt eine solche Synopse auf.
- **NEU `wiki/QUESTIONS.md` K68 (offen) — Thalwiler Ueberwachungs-Pendenz uebernommen.** Die
  Pendenz **T-01** (Genehmigung und Inkrafttreten der revBZO Thalwil, festgesetzt 14.06.2026,
  Stand 04.08.2026 weder genehmigt noch in Kraft) liegt in `wissen/baurecht/wiki/QUESTIONS.md`
  und wird dort **manuell** geprueft (thalwil.ch, Gesetzessammlung SR 700.1). Den maschinellen
  Pruefweg haelt diese KB (proj-Layer `rechtsstatus`/`festsetzung`/`genehmigung`/`inkraftsetzung`,
  `geo-zh.mjs --produkt zonenplan`), wusste aber nichts von der Pendenz. Zwei Punkte sind
  **offen und nicht geraten**: ob der proj-Layer fuer Thalwil ueberhaupt bestueckt ist
  (`Aenderung_Bauordnung` kann leere proj-Attribute haben) und ob der Statuswechsel vor oder nach
  der kommunalen Publikation erscheint — also ob der Weg Fruehwarnung ist oder nur Bestaetigung.
  Erst nach dieser Messung darf er als Ueberwachung angeboten werden. Fuehrend fuer das Recht
  bleibt `baurecht`.

## 2026-08-03 (Wissens-Chef Run 24, Cross-KB) — 4 Artikel berichtigt: Aufzug, Sitzhoehe, tote Erlasse, Toilettenschluessel

- **`wiki/recht-norm-hindernisfreies-bauen-zh.md` — aus einer Pflicht war eine Komfortstufe
  geworden.** Die Kabinen-Tabelle fuehrte «Im Gebaeudeinneren, **erhoehte Anforderung** |
  1.40 × 1.40 m». Richtig ist: **bei ueber Eck angeordneten Kabinentueren zwingend
  1.40 × 1.40 m** — **SIA 500:2009 Ziff. 3.7.4**, am Original-PDF nachgelesen. Praxisfolge des
  Fehlers: eine Kabine, in der der Rollstuhlfahrende nicht wenden kann, nach dem Bau nicht
  korrigierbar. Beleg auf die Norm gesetzt (nicht auf das kommunale UGZ-Merkblatt, das
  Vollzugshilfe ist), Warnhinweis zum strukturellen Uebersehpunkt (Tabelle in Ziff. 3.7.3, die
  Bedingung eine Ziffer spaeter) und **Fassungsvorbehalt SN 521500/C4:2019** (unausgewertet, P1
  in `../normen/wiki/QUESTIONS.md`).
- **`wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` — Sitzhoehen-Vorbehalt aufgeloest.**
  Massgebend sind **46 cm** (SIA 500:2009 Anhang E, Fig. E.1 S. 49 / E.2 S. 51: «+ 0.46 OK
  Brille»), nicht die 50 cm der KL_Hochbau-Blaetter. Der eigene §4-Wert dieses Artikels
  («ca. +460 mm») war von Anfang an richtig. Wert damit **verwendungsreif**.
- **`wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` — zwei tote Erlasse/Normen an drei
  Fundstellen.** **Art. 20 und 20a LRV** aufgehoben mit Wirkung seit **01.01.2022** (AS 2021 632,
  Fedlex SR 814.318.142.1; Zweitbeleg `../baurecht/raw/260713_amtlich_ch_lrv.md`) — die
  Konformitaetsnachweis-Pflicht ist **entfallen**, nicht bloss aelter geworden; Emissionsbegrenzung
  und Feuerungskontrolle nach Art. 13 Abs. 3 LRV bleiben. **SIA 380/4:2006** archiviert seit
  31.07.2019; heutiger Nachweisweg SIA 387/4 / SIA 2056, Vollzug ueber EVEN, Formular EN-111.
  Fuehrend fuer den Erlassstand ist `baurecht`, fuer den Normfassungsstand `normen`.
- **`wiki/recht-norm-raumprogramm-referenzwerke.md` — Falschzusicherung gestrichen.** Der Satz,
  die UGZ-Ausgaben 2012 und 2020 seien «inhaltlich deckungsgleich, Publikums-Tabellen
  unveraendert», ist belegbar falsch (Stadien 150 → 100 Personen je Einheit, Theater/Kino von
  Sitzplaetzen auf Besucher, Personalschwelle 5 → 10 mit Taetigkeitsbedingung,
  Betreuungsstaetten-Tabellen 2020 ganz entfallen, Gastro-Methodik komplett umgestellt).
  Fassungsvorbehalt gesetzt: die Zahlen des Publikums-/Gastro-Absatzes sind **Stand Mai 2012** und
  fuer eine Baueingabe nicht mehr verwendbar. Ein Lokal mit 30 Plaetzen wird nach 2012 und 2020
  **gegensaetzlich** bemessen. Die Werte der noch juengeren Ausgabe **September 2022** wurden
  **bewusst nicht eingetragen** (kein Original im Hub) — stattdessen Beschaffungsauftrag.
- **`wiki/recht-norm-regenwasser-gewaesserraum-zh.md`** — Loesungsspalte der Zeilen 2 und 3
  vervollstaendigt (die Wendung «ohne belebte Bodenschicht» gehoert zu den Parkplaetzen, nicht zu
  den Lagerflaechen). Stammt aus einem **widerlegten** Befund: die gemeldete Vorzeichen-Korrektur
  im Bereich Au traegt **nicht**, «je nach Belag» steht so im Original.
- Bericht: `../koordination/outputs/2026-08-03_wissens-chef-run24.md`.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F2 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Bester Strukturbefund des Wissens-Layers: 51 Artikel, kein einziger B/C/D/E-Befund. **Zwei Korrekturen gegenueber 2026-08-01:** die 160 Warnmarker sind durch `CLAUDE.md` Z. 21 vorgeschrieben (kein Deko-Verstoss), und der damals als «einziger ss-Fall im Wissens-Layer» gemeldete Treffer ist ein Quell-Dateiname im `sources`-Feld (kein Verstoss). Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — Sanitaer-Normvorbehalt, Kuechen-Sachfehler, Gewaesser-Merksatz

- **[widerspruch, hoechster Schaden] `wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md`.** Der
  Artikel gab die Grundrissmasse rollstuhlgerechter Sanitaerraeume aus KL_Hochbau BKB 256 als
  Planungsgrundlage aus. **Die Raumbreiten 140 cm und 160 cm unterschreiten SIA 500:2009
  Ziff. 7.2.3.2 (WC-Raum min. 1,65 × 1,80 m).** Normvorbehalt vorangestellt, beide Werte einzeln
  markiert (Raumtiefe 220 cm erfuellt die Norm). **Sitzhoehe:** die 50 cm sind ein undatierter
  Lehrbuchwert und stehen gegen den eigenen §4-Wert «+460 mm»; bis SIA 500 Anhang E gelesen ist
  (Leseauftrag K42-4a in `wissen/normen/wiki/QUESTIONS.md`) wandert **kein** Sitzhoehenmass aus
  diesem Artikel in Grundriss, Sanitaerplan oder LV. Der Freispruch in §5.3 («beide widersprechen
  sich nicht») auf die Bewegungsflaechen eingeschraenkt und fuer Raumbreite/Sitzhoehe zurueckgenommen;
  die Empfehlung «direkt als Planungsgrundlage fuer Pflegezimmer-Nasszellen» entsprechend entschaerft.
- **[sachfehler] `wiki/recht-norm-hindernisfreies-bauen-zh.md` Kuechen-Zeile.** Die Werte
  «Arbeitsflaeche 72-76 cm, Unterfahrbarkeit 70 hoch × 60 tief × 80 breit» sind ZHB-Kap. 7
  «Arbeitsflaechen und Tische», nicht Kap. 6 «Kuechen». Richtig fuer Kuechen: **Arbeitsflaeche
  max. 82-83 cm, unterfahrbare Zone min. 80 breit / 50 tief / 70 hoch**, Nutzhoehe bis ca. 140 cm,
  Bewegungsflaeche min. 170 × 140 cm (Beleg `wissen/normen/destillate/zhb-2005-…md` Z. 94-99).
  Zeile korrigiert und die Tisch-Werte als eigene Zeile mit richtiger Kapitelangabe gefuehrt.
- **[unbelegt] dieselbe Datei:** die Behauptung, die BKZ sei «seit 2005 Rechtsnachfolgerin der
  Schweizerischen Fachstelle fuer behindertengerechtes Bauen», ist durch die eigene Quelle
  (Merkblatt 13/05, S. 4) widerlegt — dort koordiniert die Fachstelle weiterhin selbst. Gestrichen.
- **[rueckfall] `wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` Merksatz.** «See > 0.5 ha
  ≥ 15 m ab Ufer» knuepfte die 15 m wieder an die Flaechenschwelle und fiel damit hinter eine bereits
  gefahrene Korrektur zurueck — der Widerspruch lag **innerhalb derselben Datei**. Richtig: fuer
  stehende Gewaesser min. **15 m ab Uferlinie (Art. 41b Abs. 1 GSchV), flaechenunabhaengig**; die
  **0,5-ha-Schwelle ist ein Verzichtsgrund** (Abs. 4), keine Bemessungsschwelle.
- **[fehlender Kernsatz] `wiki/energie-pv-brandschutz.md`.** Blitzschutz-Normnummer um die Ausgabe
  ergaenzt (**SN 414022:2024**, ersetzt SNR 464022:2015) und der bisher nirgends gefuehrte Kernsatz
  eingesetzt: **eine Solaranlage begruendet fuer sich keine Blitzschutzpflicht** — massgebend bleibt
  VKF-BSR 22-15 (01.01.2017); ist ein System vorhanden, ist die Anlage zu integrieren
  (VKF-Merkblatt 2001-15de, 01.01.2022, Kap. 3.1 Abs. 3).
- **[nachtrag] Protokollpflicht.** Die Umlaut-Sanierung vom 03.08.2026 (Commit `d9f9e02f`, 18 von
  36 geprueften Wiki-Dateien, ae/oe/ue → ä/ö/ü im Fliesstext) war **nicht im CHANGELOG erfasst**
  (Rule `wissens-bibliothekar` Ziff. 2). Hiermit nachgetragen; rein orthografisch, kein Inhalt.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D1 · E0 · F125 · G11

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Groesste KB im Bestand (49 Artikel) und strukturell tadellos: kein toter Backlink, kein fehlender INDEX-Eintrag, kein Frontmatter-Mangel. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wartungslauf 02, maintainer) — zh.ch-Zitierregel in beide Richtungen belegt, K65 geschlossen, Connector-Pfad korrigiert

- **[links] Die `www.`-Falle bei `zh.ch` geht in BEIDE Richtungen — sechs Fundstellen waren nicht
  aufrufbar.** Am Zertifikat belegt: das Staatskanzlei-Wildcard lautet `*.zh.ch` und deckt nur EINE
  Label-Ebene; `www.<thema>.zh.ch` liegt eine Ebene tiefer und bricht die TLS-Pruefung.
  `energie` / `baugesuche` / `awel` / `gewaesserschutzgesetz` / `gis.zh.ch` auf die Form ohne `www.`
  umgestellt (Weiterleitungsziele je dokumentiert), `altlasten.zh.ch` als nicht mehr tragend
  markiert (landet auf der Startseite). Regel-Tabelle neu in `wiki/recht-norm-quellenlandkarte.md`
  als Gegenstueck zu R75. → K66
- **[links] K65 im Browser geschlossen — beide Adressen sind wirklich tot, keine Bot-Sperre.**
  `leitungskataster.upc.ch` liefert 403 auch im echten Browser; `www.upc.ch` hat ein am
  **29.06.2026 abgelaufenes** Zertifikat (Betreiber heute Sunrise, Nachfolge-URL nicht belegt und
  nicht behauptet); `solarrechner.ch` hat gar kein verwertbares Zertifikat — belegter Nachfolger
  `www.energieschweiz.ch/tools/solarrechner/`. → `wiki/kartenportale-werkleitungskataster.md`,
  `wiki/energie-pv-eignung-typenwahl.md`
- **[links] Vier Adressen brauchen zwingend `www.`** (`www.gwr.admin.ch`,
  `www.housing-stat.ch/files/881-2200.pdf` = GWR-Merkmalskatalog v4.2 und tragende sources-Zeile,
  `www.geo.lu.ch/landschaftsmodell/`, `www.procap-bauen.ch` mit Zertifikatsbruch). → K67
- **[connector] Der dokumentierte Connector-Pfad war falsch und liess die Connectoren als defekt
  erscheinen.** `node connectors/geo-zh.mjs …` endet mit MODULE_NOT_FOUND — die Connectoren liegen
  unter `skills/planungsgrundlagen/connectors/`. An fuenf Stellen korrigiert (davon zwei
  Kopiervorlagen im Bash-Block der SKILL.md). Der Auftragstext des Scheduled Task traegt denselben
  Fehler, ist aber stationslokal — als Entscheid-Posten fuer Raphael im Report vermerkt. → E17
- **[tooling] NEU `wissen/tools/link-frischecheck.sh`** — Erreichbarkeits-Check je KB, Schwester von
  `wiki-konsistenz.sh`. Drei Extraktionsfallen fest eingebaut, alle in diesem Lauf real aufgetreten:
  Adressen ohne Protokoll (sonst 30 statt 258 Treffer), Umlaute im Hostnamen (sonst Phantom-Hosts
  `rich.ch`/`ude.ch`/`sserschutzgesetz.zh.ch`), Schraegstrich als Prosa-Trenner. Getestet vor der
  Ablage (Hilfe/Bedienfehler/unbekannte KB/realer Lauf). → E18
- **[connector] Funktionstest 5 von 5 gruen**, jeder Benchmark-Wert identisch zum Wartungslauf 01
  (EGRID CH879777718909 · W/1.5 · BMZ 1.5 · GH 4.5 · 7 Baulinien · 33 Behoerden-Dokumente aktuell).
  E11/E12/E14/E15 nachkontrolliert und haltend; E13 unveraendert bei einem Treffer
  (`connectors/bexio.mjs`, Entscheid-Posten Raphael).
- **[quellbestand] 30. Erschoepfungsbestaetigung** — 0 neue Inhaltsdateien (979 / 2'503 / 152 / 317).
  Zaehlfalle dokumentiert: eine rohe `find`-Zaehlung meldet +1 je Ordner, das ist die versteckte
  OneDrive-Sync-Markierung, kein Material. Keine Reaktivierung als grower.
- Report: `outputs/2026-08-01_wartung-02.md`

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — BZO Art. 11 Stadt Zuerich stand im vorrevidierten Wortlaut, toter WsG-Pfad korrigiert

- **[widerspruch] `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` schrieb Art. 11 Abs. 1 BZO
  Stadt Zuerich materiell fort — aus einer AHB-Checkliste vom 16.02.2009**, also aus einer
  Sekundaerquelle, die aelter ist als die BZO 2016. Drei belegte Abweichungen vom amtlichen Wortlaut
  (`wissen/baurecht/raw/260607_amtlich_zh_bzo-zurich-stadt.md`):
  1. Der Vorbehalt lautet amtlich «technisch und **betrieblich** moeglich sowie wirtschaftlich
     **tragbar**», nicht «soweit **zweckmaessig** sowie technisch und wirtschaftlich **zumutbar**» —
     und die zitierte Wendung steht heute in **Abs. 3** (Nachruest-Verlangen bei bestehenden
     Mehrfamilienhaeusern), nicht in Abs. 1.
  2. Das Merkmal «**auch dort, wo Solaranlagen installiert sind**» fehlte vollstaendig — obwohl
     derselbe Eintrag die PV-Kombinationsregel (Panelabstand, Bautenschutzmatte) aufstellt und auf
     [[energie-pv-eignung-typenwahl]] verweist. Genau der Fall, den die Norm ausdruecklich erfasst.
  3. Kein Fassungsvermerk, obwohl die Fassung amtlich ausgewiesen ist (GRB 30.11.2016, in Kraft
     seit 01.11.2018, STRB 686/2018).
  **Korrigiert** mit amtlichem Wortlaut, Fassungsvermerk und Verweis in die fuehrende KB `baurecht`;
  die Rollenteilung ist im Text benannt (dieser Artikel zitiert, er schreibt nicht fort).
- **[toter pfad] Drei Verweise auf `260728_amtlich_zh_wsg.md` / `…_wsv.md` korrigiert** — die
  Dateien heissen `260730_…`. Der datierte CHANGELOG-Eintrag vom 28.07. bleibt bewusst unveraendert.
- **[bring-schuld, offen seit Run 21]** Die materielle Umstellung von
  `wiki/recht-norm-tiefgarage-erschliessung.md` auf VSS 40 291:2021 steht weiterhin aus; der
  Fassungs-Vorbehalt haelt den Bestand gefahrlos, die Werte laufen aber weiter in
  Machbarkeitsstudien ein. Entscheid ueber einen Vorrang-Auftrag liegt bei Raphael.

## 2026-07-30 (Wartungslauf 01, maintainer) — sechs tote Adressen ersetzt, eine Abschaltung belegt, `--hilfe` in allen fuenf Connectoren nachgeruestet
Erster Lauf des umgewidmeten Loops `planungsgrundlagen-wartung`: kein Quellen-Turnus, keine
Wissensproduktion, keine Trainings-Run-Nummer. Report:
`outputs/2026-07-30_wartung-01.md`.
- **[korrektur, Endpunkte] 228 zitierte Adressen gemessen, sechs tote/umgezogene ersetzt.**
  Extraktion aus 51 Wiki-Artikeln, Messung per Statuscode mit Browser-UA; jeder Abweichler in vier
  Varianten (`https`/`http`, mit/ohne `www.`) und bei DNS-Verdacht ueber drei unabhaengige Resolver
  (System, 8.8.8.8, 1.1.1.1) gegengeprueft. Ersetzt: `bsvonline.vkf.ch` → `www.bsvonline.ch/de`
  ([[brandschutz-pl03-wegweiser]]) · BAK-ISOS-Pfad → `www.bak.admin.ch/de/isos`
  ([[kartenportale-denkmalschutz-isos]]) · `kanton-luzern.ch` → `www.lu.ch` ·
  `geodatenshop.lu.ch` → `geoportal.lu.ch` · `zh.ch/objektwesen.html` → Vollform
  ([[kartenportale-geoportale-uebersicht]]) · Einsiedeln `.../buero-bauen` → `.../bauen`
  ([[kartenportale-ebau-sz-baugesuch]], Inhaltsgleichheit geprueft, nicht nur Statuscode).
- **[befund] `geoglatt.ch` ist abgeschaltet** — Domain nicht mehr delegiert (weder A/AAAA noch
  NS/SOA). Betreiber war Gossweiler Ingenieure AG (WebGIS «geoweb», heute `gossweiler.com`); ein
  direkter URL-Ersatz je Gemeinde ist **nicht** belegt und wurde nicht behauptet. Als tot markiert
  samt Betreiber-/Nachfolgehinweis; kantonaler OGD-WFS-Weg nicht betroffen. ⚠ Die WebSearch fuehrte
  die Adresse weiterhin als aktiven Treffer — **ein Suchindex ist kein Erreichbarkeitsbeleg.**
- **[muster] Zweiter Propagierungsfehler derselben Art wie D14.** Die heute gueltige Adresse
  `bsvonline.ch` stand in derselben KB (Musterplansatz §5b–§5f) laengst richtig, waehrend §4c die
  tote Form aus der Quelle von 2003 fuehrte — das Wissen war im Haus und wurde nicht weitergereicht.
  Zwei Belege in zwei Laeufen; kuenftig feste Pruefstufe: steht die richtige Form anderswo schon da?
- **[korrektur, systematisch] `zh.ch`-Kurznotation.** Der Host antwortet ohne `www.` und ohne
  `.html` grundsaetzlich mit 403/404. Zwei `Quelle:`-Angaben in [[recht-norm-quellenlandkarte]] auf
  die gemessene Vollform umgestellt; die uebrigen Kurznotationen stehen in Rechercheprotokollen,
  nicht als Fundstelle, und bleiben bewusst unveraendert (R75).
- **[werkzeug] `--hilfe` funktionierte in KEINEM der fuenf Connectoren** (Rule 260729): alle liefen
  in die Argumentpruefung und endeten mit rc=1 — eine Hilfe-Anfrage war von einem Bedienfehler nicht
  zu unterscheiden. Neuer gemeinsamer Baustein `connectors/_hilfe.mjs`; `hilfeAusKopf()` gibt den
  **Kopfkommentar der aufrufenden Datei** aus, damit die Hilfe nicht von der Doku wegdriften kann.
  Freigabe- und Abweisungspfad je nachgemessen (`--hilfe` rc=0, ohne Argumente rc=1), Vollketten-
  Regression gruen (E15).
- **[test] Connector-Funktionstest an den realen Benchmarks bestanden** (E16): `geo-zh` Vollkette
  → EGRID CH879777718909 · Parz. 3338 · BFS 136, Zonenplan W/1.5 · BMZ 1.5 · GH 4.5 · ES_II,
  Baulinien 7 + Waldgrenze (116.2 / 105.6 m) — alle Werte unveraendert; `geo-sz` Parzellensuche
  «Einsiedeln 3301» → EGRID CH527708492462; `behoerden-zh --check` **33 aktuell, 0 tot**;
  204-Diagnose beidseitig korrekt (E12 haelt). Kein ungetesteter Connector-Code abgelegt.
- **[korrektur, Wortlaut mit Schadenspotenzial] E14: «Symlink» ist falsch.**
  `skills/oereb-schwyz/connectors/geo-sz.mjs` ist eine **Weiterleitungsdatei** (regulaere Datei,
  1'190 B, `test -L` falsch), die den gepflegten Connector per `import` ausfuehrt — und das ist die
  vorgeschriebene Loesung: ueber SMB wuerde ein echter Symlink als «XSym»-Textdatei landen und jeder
  Klon eine kaputte 1-KB-Datei erben. Warnung in QUESTIONS gesetzt, damit kein kuenftiger Lauf die
  Bezeichnung als Defekt liest und sie «repariert».
- **[nachkontrolle]** E11 (UTC-Datum) haelt — Codepruefung plus Gegenprobe im kritischen Fenster
  (00:30 CEST: lokal `2026-07-31` gegen UTC `2026-07-30`); ein Test ausserhalb 00:00–02:00 CEST
  kann den Fix nicht widerlegen. E13: Bestandssweep wiederholt, **ein** Treffer uebrig
  (`connectors/bexio.mjs:279`) — unveraendert, wartet auf Raphaels Einzelfreigabe (Rule 260702).
- **[struktur] QUESTIONS-Kopf klargestellt:** zustaendig ist der monatliche Wartungslauf, nicht mehr
  der eingestellte 2-Tages-Trainingsloop; er hakt nur nachweislich Erledigtes ab und arbeitet die
  inhaltlichen Fachfragen bewusst **nicht** ab.
- **[quellbestand] 29. Erschoepfungsbestaetigung:** 0 neue/geaenderte Inhaltsdateien in allen vier
  PL-Ordnern seit Run 92 (979 / 2'503 / 152 / 317 Dateien). Keine Reaktivierung als grower.
- **[neu offen]** K65 (UPC-Leitungskataster + solarrechner.ch antworten nur im Browser — 403/
  abgelaufenes TLS-Zertifikat, **kein** Beleg fuer «tot», Browser-Gegenpruefung vorgemerkt) ·
  F-LINKS-REST (vier gealterte, aber tragende Fundstellen: `eco-bau.ch` als bewusstes Zitat,
  `energieheld.ch` → `ckw.ch`, `map.apps.be.ch` nur ueber http, `daten.geo.lu.ch/download/`).

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Fassungs-Vorbehalt auf der abgeloesten VSS-Parkierungsnorm, Fuehrung an `normen` angemeldet
- **[korrektur, materiell] Tiefgaragen-Geometrie stand ohne Fassungsvorbehalt auf der abgeloesten
  Ausgabe.** `wiki/recht-norm-tiefgarage-erschliessung.md` fuehrte die gesamte Geometrie des
  Abschnitts 2 (Parkfeld-/Fahrgassenmasse, lichte Hoehe, Rampenneigung, Kurvenverbreiterung)
  aus **SN 640 291a:2005** samt der abgeschafften Komfortstufen A/B/C als geltende
  Planungsgrundlage — mit `status: established` und Frontmatter-Aussage «gueltig ab 1.2.2006»,
  ohne Ersetzungsvermerk. Laut der fuehrenden KB `normen` (Destillat
  `vss-640291a-2005-parkieren-anordnung-geometrie`, Status «HISTORISCH/ERSETZT — nicht mehr fuer
  aktuelle Projekte verwenden», Stand 14.07.2026) ist die Ausgabe ueber VSS 40 291a:2019-03
  durch **VSS 40 291:2021-12** ersetzt. Projektwirksame Deltas: Rampenneigung 12/15 % je Stufe
  gegen einheitlich 15 % ungedeckt / 18 % gedeckt, Fahrgasse Gegenverkehr 5.00 m gegen 5.50 m.
  Neu traegt der Artikel einen **Fassungs-Vorbehalt** am Kopf von Abschnitt 2 und im
  `sources`-Block; die Werte selbst bleiben unveraendert stehen (Beurteilung von
  Bestandesanlagen 2006-2019).
- **[struktur] `querbezug_kb_normen`-Feld gesetzt**, nach dem in dieser KB bereits erprobten
  Muster von `wiki/brandschutz-pl03-wegweiser.md`: Norm-Fundstellen und Kennwerte fuehrt
  `normen`, dieser Artikel liefert den planerischen Kontext. `links` um die beiden
  normen-Destillate und den baurecht-Artikel als **Pfadverweise** ergaenzt (kein Wikilink, weil
  KB-uebergreifend sonst tot).
- **[erledigt] Offener Punkt «kommunale Parkplatzverordnungen bisher nicht kartiert»
  geschlossen** — kartiert und gefuehrt von `wissen/baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md`
  (PPV Stadt Zuerich, Wegleitung Baudirektion 1997); dort steht auch die rechtlich verbindliche
  Zahl (§ 242 PBG i.V.m. kommunalem Erlass), die dem VSS-640-281-Empfehlungswert vorgeht.
- **[offen] R74 in `wiki/QUESTIONS.md`:** die materielle Umstellung des Abschnitts 2 auf die
  Ausgabe 2021 bleibt offen und gehoert laut Fuehrungs-Matrix in `normen`, nicht hierhin. Der
  Vorbehalt macht den Bestand gefahrlos, ersetzt die Werte aber nicht.
- **[korrektur] `wiki/INDEX.md`:** der Kernwert «Rampenneigung 12–18 % je nach
  Komfortstufe/Deckung» trug den Fassungsstand nicht und ist neu mit dem Vorbehalt plus dem
  geltenden Wert (15 % ungedeckt / 18 % gedeckt, ohne Stufen) versehen. Keine anderen Kernwerte
  angetastet.
- **Geaenderte Dateien:** `wiki/recht-norm-tiefgarage-erschliessung.md`, `wiki/INDEX.md`,
  `wiki/QUESTIONS.md`, `CHANGELOG.md`.

## 2026-07-30 (Training Run 93, Kartenportale + Energie) — der Quellbestand ist erschoepft, der Beleg-Apparat war es nicht
- **[befund] 28. Erschoepfungsbestaetigung des Quellbestands:** Frischecheck aller vier PL-Ordner
  gegen Run 92 → **0 neue oder geaenderte Inhaltsdateien** (nur OneDrive-Marker und ein `.DS_Store`).
  Keine kuenstlichen Zusatzfragen erzeugt. Der Lauf wurde stattdessen auf die Achse gelegt, die
  **unabhaengig vom Dateibestand erodiert** — Endpunkte, zitierte URLs, eigener Connector-Code —
  und seit Run 54 (20.07.) nicht mehr geprueft war. Dort lagen **vier belegte Fehler**.
- **[verifikation] Endpunkt-Frischecheck 13/13 live** am Benchmark Giebelweg 12
  (EGRID CH879777718909): OEREB ZH+SZ, height (549.1 m ue.M.), SearchServer, identify, OGDZHWFS,
  Zonenplan (W/1.5 · BMZ 1.5 · GH 4.5 · ES_II), Baulinien (7 + Waldgrenze), Denkmalschutz,
  Grundwasser, Naturgefahren, STAC, WMS. EGRID/Parzelle/BFS und alle Zonenwerte unveraendert
  gegenueber dem Erstbezug 05.06.2026 → **K63**, Messtabelle in `wiki/kartenportale-oereb-egrid-bezug.md`.
- **[korrektur, materiell — eigener Code] Datums-Prefix war UTC statt Lokalzeit.** Alle vier
  `planungsgrundlagen`-Connectoren bildeten `isoDate()` mit `toISOString().slice(0,10)`. Zwischen
  00:00 und 02:00 CEST — dem Nachtfenster der Loops — datierten sie **jede Ausgabedatei einen Tag
  zurueck**; belegt an `Zonenplan-ZH_136_3338_2026-07-29.json`, erzeugt am 30.07. um 00:39 CEST.
  Verstoss gegen Rule `dateinamen-konvention`. Behoben in `geo-zh.mjs`, `geo-sz.mjs`,
  `gwr-bund.mjs`, `behoerden-zh.mjs`; im selben Lauf nachgemessen → `..._2026-07-30`. **E11.**
  Bestandssweep fand acht Vorkommen insgesamt; die vier fremden (`bexio.mjs` buchungsrelevant,
  `shop-orders.mjs`, `recht-ch.mjs`, `oereb-schwyz/geo-sz.mjs`) bewusst nicht angetastet → **E13**
  zur Entscheidung.
- **[korrektur, materiell — Diagnosefaehigkeit] HTTP 204 wurde als «kein PDF» fehlgemeldet.** Ein
  OEREB-Service antwortet auf einen ihm unbekannten EGRID mit **204 + leerem Body**, nicht mit 404
  (fuenf Gegenproben ueber ZH und SZ). 204 ist fuer `fetch` «ok», lief also durch den `!r.ok`-Waechter
  und scheiterte erst am content-type — mit einer Meldung, die einen Serverdefekt suggeriert, waehrend
  in Wahrheit der **Kanton falsch gewaehlt** war. Beide Connectoren fangen den 204 jetzt eigens ab;
  Fehler- UND Erfolgspfad je nachgemessen. **E12.** Methodenlehre mitdokumentiert: ein Endpunkt-Test
  braucht einen **belegten** EGRID — ein erfundener liefert dasselbe 204 wie ein toter Server.
- **[korrektur, wirkt nach aussen] Vier Energie-Artikel zitierten eine erloschene URL.**
  `zh.ch/energienachweise` war in `energie-even-plattform-bedienung`, `energie-energienachweis-zh-formulare`,
  `energie-private-kontrolle-zh` und `energie-uebersicht` als belegte Fundstelle mit Abrufdatum
  gefuehrt — **gemessen HTTP 404**. Ersetzt durch die nachgemessene Vollform
  `www.zh.ch/de/planen-bauen/bauvorschriften/bauvorschriften-gebaeude-energie/energienachweise.html`
  (200). Bemerkenswert: `energie-private-kontrolle-zh` trug die Vollform im Fliesstext bereits,
  waehrend die eigene Quellenzeile die tote Kurzform fuehrte — **Propagierungs-, nicht
  Entdeckungsfehler**. **Lehre:** eine Fundstelle wird in der Form zitiert, in der sie aufrufbar ist;
  eine gekuerzte URL ist eine Merkhilfe, keine Quelle, und entwertet den Beleg genau dann, wenn ihn
  jemand nachpruefen will. **D14.**
- **[korrektur] Identifikator-Verwechslung:** «EGID CH527708492462» → **EGRID** (CH + 12 Zeichen;
  ein EGID ist 9-stellig). Bestandssweep in beiden Richtungen ueber das ganze Wiki: keine weiteren
  Faelle. **D15.**
- **[korrektur einer eigenen Diagnose] C39 ist kein defekter Symlink.** Das Nachaudit vom 28.07.
  hielt die 201-Byte-Datei im Lignum-4.1-Ordner fuer einen defekten Symlink von 203 Byte. Direkt am
  Original gemessen: `Typ=Regular File`, `Links=1`, `test -L` falsch, `file(1)` «UTF-8 text»; der
  Inhalt ist der eigene Zielpfad, nach 201 Byte mitten im Wort abgeschnitten — Signatur einer
  abgebrochenen Umbenenn-/Kopieroperation. Substanz der alten Diagnose blieb richtig: kein Dokument,
  kein Wissensverlust. **Zweite Lehre:** der `Resource deadlock avoided` war **doch transient** —
  Run 92 hielt ihn wegen mehrminuetiger Persistenz fuer strukturell. Dessen Praxis (dokumentieren
  und verschieben statt Retries erzwingen) war damit richtig und bleibt Standard.
- **[luecke, neu] E14:** `geo-sz.mjs` existiert zweimal und divergiert — `planungsgrundlagen`
  (23'149 B, 22.07., mit Parzellensuche/Grundwasser/JANS-Umbenennung) gegen `oereb-schwyz`
  (11'145 B, 07.06.). Der Skill `oereb-schwyz` arbeitet mit einer sieben Wochen alten Abspaltung
  ohne die seither gewonnenen Faehigkeiten. Nicht eigenmaechtig zusammengefuehrt (fremder Skill).
- **[datenstand] Kein Verstoss:** alle 25 Artikel der beiden Domaenen liegen zwischen 2026-06-05 und
  2026-07-30, weit innerhalb der 18-Monats-Leitplanke.
- **[praezisierung der Ruecktaktungs-Empfehlung]** Die dreifach wiederholte Empfehlung aus Run 91/92
  bleibt richtig fuer das **Quellen-Lesen**. Sie greift aber zu kurz: Endpunkte, URLs und eigener
  Code erodieren unabhaengig vom Dateibestand — genau dort lagen heute vier Fehler. Vorschlag an
  Raphael: Quellen-Turnus ruecktakten, **schlanken monatlichen Endpunkt-/Link-/Connector-Check
  behalten**.
- Geaendert: 4 Connectoren (`geo-zh`, `geo-sz`, `gwr-bund`, `behoerden-zh`),
  `wiki/kartenportale-oereb-egrid-bezug.md`, `wiki/energie-energienachweis-zh-formulare.md`,
  `wiki/energie-even-plattform-bedienung.md`, `wiki/energie-private-kontrolle-zh.md`,
  `wiki/energie-uebersicht.md`, `wiki/QUESTIONS.md`, `training/curriculum.md`.
  Report: `outputs/2026-07-30_cross-kb-wissens-chef-run20.md`.


## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — dritter aufgehobener Erlass in der OEREB-Tabelle, und die fehlende Regenwasser-Nutzungsseite
- **[korrektur, wirkt gegenueber dem AWEL] OEREB-Thema 130 zitierte weiter ungeflaggt `LS 711.11
  §§ 2/3` — die KGSchV, amtlich aufgehoben per 01.01.2022** (zhlex-Erlassseite LS 711.11, Nachtrag
  099, «in Kraft bis 01.01.2022»; von `baurecht` in Buch-Run 69 belegt). Das ist die
  Rechtsgrundlagen-Spalte, die aus dieser KB in Behoerdenschreiben ans AWEL wandert. Als aufgehoben
  markiert; **die Nachfolge wurde nicht geraten** — sie ist im Hub nicht belegt, die WsV enthaelt
  keine Aufhebungsklausel zur KGSchV. Als **K61** in `wiki/QUESTIONS.md` gefuehrt, Nachweis-Pflicht
  bei `baurecht`.
- **[lehre, verallgemeinerbar] Warum der Run-18-Sweep daran vorbeilief: Nummern-Praefix.** Gesucht
  wurde `LS 711.1`, und `LS 711.11` enthaelt das als Praefix. Ein Sweep, der die Zeile als erledigt
  abhakt, sobald die gesuchte Nummer geflaggt ist, liest ueber den **laengeren Nachbarn mit derselben
  Wurzel** hinweg. Bei LS-Nummern ist die Ziffernfolge ohne Wortgrenze nicht eindeutig
  (**711.1 ≠ 711.11**), so wie 724.11 in zwei Zeitperioden zwei verschiedene Erlasse trug. Ab jetzt
  bei Erlass-Sweeps auf Wortgrenze pruefen und **jede Nummer der Zeile einzeln** abarbeiten. Im
  Warnkasten des Artikels dokumentiert.
- **[luecke, neu] Die Regenwasser-NUTZUNGSseite fehlt in dieser KB ganz.** Die Fuehrungs-Matrix teilt
  Regenwasser gespalten zu (Recht/Verfahren hier, Bewilligungsschwellen bei `energie`), aber
  `wiki/recht-norm-regenwasser-gewaesserraum-zh.md` deckt nur die **Entsorgungsseite** ab —
  «Brauchwasser», «Zisterne», «Nutzung von Regenwasser» kommen dort nicht vor. Kantonale Grundlage ist
  **§ 97 Abs. 3 WsG**. Als **K62** aufgenommen; Nutzungsseite mit Verweis auf das energie-Destillat
  ergaenzt.
- **[gegenrichtung] `wiki/energie-baueingabe-zusatzformulare.md`:** neben «Oberflaechenwasser» ein
  Zeiger auf `energie/destillate/seewasser-waermenutzung-aquathermie-zh-sz` gesetzt, damit die
  Uebergabe nicht nur im abgebenden Wiki notiert ist (Muster «Uebergabe verpufft im abgebenden KB»,
  Run 8).
- Geaendert: `wiki/kartenportale-oereb-kataster-system-zh.md`, `wiki/QUESTIONS.md`,
  `wiki/energie-baueingabe-zusatzformulare.md`, `wiki/recht-norm-regenwasser-gewaesserraum-zh.md`.


## 2026-07-29 (Antwort der KB `normen`, Run 36) — Treppen-Punkte in 4f normseitig eingeordnet
- **[korrektur der Lesart, materiell] Die «gewendelte Treppe mind. 1.20 m breit» aus dem
  Biwak-Brandschutzkonzept ist der AUSNAHME-, nicht der Regelwert.** VKF-BSR 16-15de Ziff. 2.4.5
  Abs. 3 (S. 6) verlangt fuer gewendelte Treppen **1.50 m bei 0.15 m innerer Auftrittsbreite**
  («muss»); 1.20 m/0.10 m sind nur in vier abschliessend aufgezaehlten Faellen zulaessig
  (Ziff. 3.1 Abs. 2b, 3.2.2 Abs. 1, 3.3.2 Abs. 1, 3.6.2 Abs. 5). Fuer ein Biwak ist keiner davon
  ohne weiteres einschlaegig. Die im Konzept fehlende zweite Zahl (0.10 m) ist nachzutragen.
- **[praezisierung, materiell] «Unter 20 Personen wie Wohnnutzung» traegt fuer die
  Tragwerks-Einstufung, aber NICHT automatisch fuer die Fluchtweg-Erleichterungen der Ziff. 3.2.**
  Der Entlastungskatalog fuer Treppen innerhalb der Nutzungseinheit (Wohnen, Buero/Gewerbe/
  Industrie, Schulen, Landwirtschaft) ist abschliessend und kennt Beherbergung nicht; Ziff. 3.4.4
  Abs. 3 verlangt fuer Schlafraeume auf Galerien horizontale UND vertikale Fluchtwege. Die
  Schnittfigur ist BSN 1-15 Art. 13 Abs. 3 lit. d, nicht die 20-Personen-Schwelle.
- **[quellenkritik] `PL - 03/_Projekte Themen/Treppen innerhalb Nutzungseinheit/IMG_1515.jpeg` ist
  ein ChatGPT-Screenshot**, keine Fachstellenauskunft — nicht als Fundstelle verwenden.
- Geaendert: `wiki/brandschutz-pl03-wegweiser.md` (Nachtrag in 4f, Vorbehalt am Fachplaner-Bullet,
  `last_updated`). Belegkette und Volltext der Entscheidungsfigur:
  `wissen/normen/destillate/vkf-brl-16-15-flucht-rettungswege.md`, Abschnitt «Entscheidungsfigur
  Treppen»; Lauf-Report `wissen/normen/outputs/2026-07-29_normen-nacht-run36.md`.

## 2026-07-28 (Wissens-Chef Run 19, Cross-KB) — OEREB-Thema 190 auf die richtige Norm gestellt, C41 geschlossen
- **[korrektur, materiell] OEREB-Thema 190 Gewaesserraum: § 19 WsG → § 18 Abs. 1 WsG.**
  `wiki/kartenportale-oereb-kataster-system-zh.md` (Tabellenzeile + Warnkasten) und
  `wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` fuehrten als Nachfolge zu § 15 HWSchV den
  **§ 19 WsG**. Am neuen amtlichen Volltext (`baurecht/raw/260728_amtlich_zh_wsg.md`) ist das falsch:
  «grundeigentuemerverbindlich» steht woertlich in **§ 18 Abs. 1 WsG**; **§ 19** regelt die
  **Anpassung** in dicht ueberbauten Gebieten. Betroffen war die Rechtsgrundlagen-Spalte, also genau
  die Angabe, die aus dieser KB in Behoerdenschreiben ans AWEL wandert — wer § 19 als
  Festlegungsnorm zitiert, beruft sich auf die Ausnahmeregel. Fuehrend bleibt `baurecht`.
- **[korrektur, materiell] C41 Treppenbreite war als unbelegt gefuehrt — sie ist dreifach belegt.**
  `wiki/QUESTIONS.md` C41 hielt fest, die Vorgabe «gewendelte Treppe min. 1.20 m» sei «im Destillat
  nicht mit Ziffer belegt». Richtig: **Grundmass Ziff. 2.4.5 Abs. 3 = 1.5 m** (innere Auftrittsbreite
  0.15 m); die **1.2 m bei 0.1 m** sind eine ziffern-gebundene Erleichterung (Ziff. 3.1 Abs. 2 /
  3.2.2 / 3.3.2 / 3.6.2). **Die Gegenpruefung legte den groesseren Fehler frei:** im
  `normen`-Destillat fehlten die Absaetze, die die Erleichterung an die Erschliessung **mehrerer
  Nutzungseinheiten** binden — und die Regel, dass an Treppen **innerhalb** der Nutzungseinheit
  **keine** Anforderungen gestellt werden. Beide dort nachgetragen. C41 neu gefasst: da das
  Grassenbiwak laut §4f.2 kein Beherbergungsbetrieb [c] ist, gilt **zuerst die Nutzungseinheit
  abgrenzen, dann die Breite bestimmen** — nicht umgekehrt.
- **[offen, gemeldet]** OEREB-Thema 130 stuetzt sich weiter ungeflaggt auf die **KGSchV (LS 711.11)**,
  die laut `baurecht` (Buch-Run 69) per 01.01.2022 aufgehoben ist; ein Nachfolgeerlass ist im Hub
  nicht belegt. Nicht selbst gesetzt, weil die Nachfolge unklar ist.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.


## 2026-07-31 (nachts, 2. Lauf) — Trockenlauf Modus B gegen 2507 TKHL: drei eigene Fehler gefunden und behoben
Auftrag Raphael: den neuen Wettbewerbs-Modus des Skills `brandschutz` rueckwirkend gegen einen
zweiten, moeglichst gegensaetzlichen Wettbewerb fahren — «Neubau Tagesbetreuung und Kindergarten
Halden», Stadt St. Gallen (Projekt 2507). Report: `outputs/2026-07-31_trockenlauf-modus-b-2507-tkhl.md`.
- **[Korrektur, materiell] Die QSS-Aussage aus §4f.3 lit. a war ueberdehnt.** Aus dem Biwak-Fall
  abgeleitet stand dort, ein Bau ausserhalb der Kategorie «Gebaeude mit geringen Abmessungen» lande
  «trotz geringer Groesse bei QSS 2». Der Kita-Fall widerlegt das: eine Kinderkrippe faellt ebenfalls
  aus der Kategorie (AH 1000-15de Ziff. 2.1 lit. b), erreicht aber ueber die Tabelle BSR 11-15de
  Ziff. 3.3.1 als «Schule» trotzdem QSS 1. Richtig ist: die Kategorie entscheidet ueber die
  **Anwendbarkeit des vereinfachten Anforderungssatzes der AH 1000-15de**, nicht unmittelbar ueber die
  QSS. Beide Stellen korrigiert.
- **[Luecke geschlossen] Der Brandschutzabstand fehlte in der Nutzungsweiche.** Die Fragenbeantwortung
  2507 (Frage 40) macht ihn zur **einzigen** massgebenden Abstandsregel gegenueber den Bestandsbauten
  auf demselben Areal. BSR 15-15de Ziff. 2.2 Abs. 2: **5 m** (beide Aussenschichten RF1), **7.5 m**
  (eine brennbar), **10 m** (beide brennbar), gemessen zwischen den Fassaden, Auskragung ueber 1 m
  vergroessert. Das koppelt **Materialwahl und Stellung des Baukoerpers** direkt aneinander — eine
  Holzfassade kostet 5 m Abstand — und ist damit die figurbestimmendste Groesse ueberhaupt. Sie fehlte,
  weil sie am freistehenden Biwak schlicht nicht auftrat. Als **achte Frage** in Stufe 0 ergaenzt.
- **[Luecke geschlossen] Der Fall «das Programm schweigt» war nicht vorgesehen.** Stufe 1 war auf den
  Widerspruch zugeschnitten; das TKHL-Programm behauptet gar nichts und verweist nur pauschal auf
  bsvonline.ch. Neuer Zweig: der Verfasser stuft selbst ein und deklariert die Einstufung als Annahme;
  zusaetzlich auf Einzelvorgaben achten, die eine Einstufung stillschweigend voraussetzen (hier:
  «Tueren muessen im Betrieb offen gehalten werden (Brandschutz)»).
- **Was gehalten hat:** die Reihenfolge der Weiche, der Bautyp-Verweis (fuer die Kita greift
  BSR 16-15de Ziff. 3.4.4, war auffindbar) und die Regel, dass Nachruestbares nicht auf den
  Wettbewerbsplan gehoert.
- **Lehre:** Eine aus **einem** Fall destillierte Methode traegt die Blindstellen dieses Falls. Der
  Trockenlauf gegen einen bewusst gegensaetzlichen zweiten Fall ist billiger als der erste Ernstfall.

## 2026-07-31 (nachts) — C41-C44 abgearbeitet: der netzferne Kleinbau ist jetzt durchentschieden
Auftrag Raphael (Auswahl): alle vier offenen Brandschutzfragen aus dem Wettbewerbs-Scan schliessen,
Ergebnis nur in die Wissensbasis, kein Merkblatt. Alle Antworten aus **Originalquellen** (VKF-PDFs
aus PL-03 volltext extrahiert, zwei Publikationen von der VKG-Plattform bezogen), keine Sekundaerquelle.
- **[neu] §4f.3 «Entscheidungsfiguren fuer den netzfernen Kleinbau»** mit vier Teilen:
  (a) **die QSS-Falle** — ein Uebernachtungsbau unter 20 Personen ist kein Beherbergungsbetrieb, faellt
  aber wegen «keine Nutzung fuer schlafende Personen ausser einer Wohnung» (BSN 1-15de Art. 13 Abs. 3
  lit. d) auch aus «Gebaeude mit geringen Abmessungen» und damit aus QSS 1. Das erklaert die QSS 2 im
  Konzept Schmitter und ist die wichtigste neue Entscheidungsregel des Laufs.
  (b) Treppe/Raum-ueber-Raum als Kurzfassung mit Verweis auf die KB `normen`.
  (c) **Personensicherheit ohne abwehrenden Brandschutz** als Tabelle mit sechs Fundstellen
  (Loeschwasser/Handfeuerloescher/Alarmierung/BMA-Pflicht/Tueren) — Kernbefund: Kategorie [c] ist ein
  **Erleichterungspaket** fuer den Fall, dass keine Hilfe kommt, und **PV gilt ausdruecklich als
  ungenuegende Stromversorgung**, hebt die [c]-Qualifikation also nicht auf.
  (d) **Vollzug OW/BE** aus der VKF/VKG-Adressliste V3.3 vom 21.01.2026: OW = Technische Inspektorate
  (Verwaltungsstelle), BE = Gebaeudeversicherung Bern (Monopolversicherung, geteilte Zustaendigkeit mit
  den Gemeinden). Eine Sonderregel fuer Grenzlagen gibt es nicht — der Brandschutz folgt dem Standort.
  (e) **Batteriespeicher** mit dem Konflikt, den der Wettbewerb sichtbar macht: 2.5 m Abstand zu
  brennbaren Materialien ist in einem 2-m²-Technikraum im Holzbau nicht einhaltbar.
- **[neu, KB `normen`] Destillat VKF-Brandschutzmerkblatt 2005-15de «Lithium-Ionen-Batterien»**
  (Stand 01.06.2021) samt REGISTER-Zeile — im Hausbestand PL-03 nicht vorhanden, von der
  VKG-Publikationsplattform bezogen und volltext ausgewertet.
- **[quervalidiert] Die SAC-Wegleitungs-Aussage aus §4f.1** («keine nach aussen oeffnenden Fluchttueren
  fuer abgelegene Beherbergungsbetriebe») ist am Normtext bestaetigt: BSR 16-15de Ziff. 3.6.2 Abs. 4.
- **C41-C44 alle geschlossen.** C41 hatte der Normen-Loop selbst beantwortet — die gestern angemeldete
  Bring-Schuld hat dort den Abschnitt «Entscheidungsfigur Treppen» ausgeloest. Der Cross-KB-Weg aus
  Run 8 (Flag in die Empfaenger-KB, nicht als Notiz hierhin) hat damit erstmals nachweisbar getragen.
- **[Korrektur in eigener Sache]** Die gestern Abend geschriebenen Eintraege §4f.1/§4f.2 trugen das
  Datum **2026-07-28**; richtig ist der 30./31.07. Das Datum war aus einem Dateistand abgeleitet statt
  gemessen — genau der von Rule 260730b verbotene Weg. Alle Stempel korrigiert.

## 2026-07-31 — Wettbewerbs-/Bautyp-Ebene Brandschutz: Scan Projekt 2408 WB BIWAK auf Raphaels Auftrag
Auftrag Raphael: das Wettbewerbsprojekt **2408 WB BIWAK** («Grassenbiwak 2027», SAC Sektion
Engelberg) auf brandschutzrelevante Themen scannen und pruefen, ob die dort aufgeworfenen Fragen mit
dem vorhandenen Wissensstand beantwortbar gewesen waeren. Befund: die **Normseite war abgedeckt**
(Kategorien [a]/[b]/[c] samt 20-Personen-Schwelle und den vier kumulativen [c]-Bedingungen in
`normen/wiki/vkf-beherbergungskategorien`, der Ausfuehrungsteil des Falls als §4f hier), die
**Verfahrens- und Bautypebene fehlte vollstaendig**. Drei Ergaenzungen:
- **[neu, materiell] §4f.1 Bauherrenstandard «SAC-Wegleitung Huettenbau»** (SAC 2021, ISBN
  978-3-85902-466-3) — im Hub bisher nirgends erfasst, obwohl in SAC-Verfahren regelmaessig
  verbindliche Beilage. Kernfund: **«Fuer abgelegene Beherbergungsbetriebe gem. VKF sind keine nach
  aussen oeffnenden Fluchttueren erforderlich»** (S. 66) — zitierfaehige Erleichterung, die den
  Zielkonflikt Fluchtweg gegen Schneeverfrachtung aufloest. Dazu Korridor 1.20 m, Notbeleuchtung/
  Signalisation, und der Personenschutz-Befund S. 73 (Unterdruck aus Abluftanlage saugt Rauch aus
  Holzherd/Raumofen zurueck, CO-Gefahr, kontrollierte Nachstroemung zwingend).
- **[neu, materiell] §4f.2 Der Einstufungs-Widerspruch auf Programmstufe.** Das Wettbewerbsprogramm
  behauptet Art. 13 Kategorie **[c] bei 18 berggaengigen Personen**; die Schwelle liegt bei 20. Die
  Fragebeantwortung 03.10.2024 raeumt das in Frage 47 selbst ein («kein Beherbergungsbetrieb»),
  nimmt die daraus abgeleitete Fluchtweg-Auflage aus Ziff. 5.3 aber nicht zurueck. Dazu Frage 46 mit
  dem planungsrelevantesten Satz des Verfahrens: **Toiletten und Putzraeume sind untergeordnete
  Raeume und zaehlen NICHT als «angrenzender Raum»** — der zweite Fluchtweg darf nicht durchs WC.
  Verallgemeinerte Lehre: Nutzungskategorie jedes Wettbewerbsprogramms gegen Originalartikel und
  Raumprogramm nachrechnen, bevor daraus Grundrissentscheide folgen.
- **[neu, methodisch] Skill `brandschutz` um «Modus B — Brandschutz im Wettbewerb und Vorprojekt»
  erweitert** (Nutzungsweiche mit sieben Fragen, Programm-Audit, was auf den Wettbewerbsplan gehoert
  und was nicht, Erlaeuterungstext, Uebergabe an den Fachplaner). Der bisherige Standard-Workflow ist
  neu als **Modus A** (Ausfuehrungsphase) gekennzeichnet. Die Bautyp-Kennwerte bleiben hier in der
  KB, die Methode dort im Skill — kein Doppel.
- **Vier neue offene Fragen C41–C44:** offene Treppe/Raum-ueber-Raum und die unbelegte Vorgabe
  «gewendelte Treppe min. 1.20 m» (C41), Personensicherheit ohne abwehrenden Brandschutz (C42),
  Vollzugszustaendigkeit an der Kantonsgrenze OW/BE (C43), Lithium-Ionen-Batteriespeicher als
  Brandschutzthema (C44). C41 zusaetzlich als Bring-Schuld in `normen/wiki/QUESTIONS.md` angemeldet
  (Regel aus Run 8: Flags gehoeren in die Empfaenger-KB, nicht nur hierhin).

## 2026-07-28 — Nachaudit PL-03 Brandschutz auf Raphaels Auftrag: Vollinventar statt Delta-Check
Alle **153 Dateien** des Ordners `PL - 03 Brandschutz` maschinell gegen Wegweiser/INDEX/QUESTIONS/
_INGESTED **und** die KB `normen` abgeglichen, jeder Nicht-Treffer danach inhaltlich geoeffnet.
Ergebnis **95 % erschoepfend erschlossen**, aber vier Befunde:
- **[luecke, materiell] Drei nie gelesene JANS-Dokumente** im Ordner Thalwil Bohlweg 3
  (Fragenkatalog 04.03.2025, Statiker-Antwort 01.03.2025, zweites Factsheet-Blatt «Anwendung»
  05.03.2025) — bisher war nur das Ergebnis-Factsheet katalogisiert → NEU
  [[brandschutz-pl03-wegweiser]] §4b «Vollstaendige Aktenlage Bohlweg 3». Daraus die **wichtigste
  neue offene Fachfrage C40**: muessen bei einer Transformation EFH → MFH **alle** Bauteile die
  Brandschutzanforderungen erfuellen oder nur die neuen? In der ganzen KB unbeantwortet.
- **[attribution] Vier Quellen ohne Fundstellen-Nennung** nachgetragen (IMG_0547
  Stichwortverzeichnis Beherbergung [a] → §5d; IMG_3799 → §5ad **mit einem neuen Kennwert**:
  200 MJ/Lfm ≈ 60-70 Elektrokabel; IMG_1515 ChatGPT-Screenshot als geprueft-aber-kein-Beleg → §4b;
  Biwak-Mail als bestaetigter Nicht-Fund).
- **[korrektur] C39 geschlossen:** die «unlesbare 201-Byte-Datei» aus Run 92 ist ein **defekter
  Symlink** (Ziel ohne den Ordner-Tippfehler `Feuerwiederstand`, existiert nicht) — kein Dokument,
  kein Wissensverlust. Aufraeum-Hinweis an Raphael: Symlink loeschen.
- **[konsistenz] MD-Hygiene:** 6 ueber Zeilenumbrueche zerrissene Backlinks repariert, 2 seit
  Wochen nicht im INDEX gefuehrte Artikel nachgetragen ([[recht-norm-rechtsprechung-vg-zh]],
  [[recht-norm-sanitaerraeume-planungsgrundlagen]]), falsche Ordnerangabe `11 Projekte/` in §1
  korrigiert; drei Pfad-in-Wikilink-Syntax-Stellen auf Backticks umgestellt (darunter ein falscher
  Connector-Pfad: `skills/planungsgrundlagen/connectors/geo-zh.mjs`).
- **[eigenbefund korrigiert] «Phantom-Backlinks» waren ein Fehlalarm.** Der Audit meldete zuerst
  sieben Backlinks auf angeblich nie geschriebene Artikel (u-werte-grenzwerte-ch, graue-energie,
  minergie-standards, abstaende-und-hoehen u. a.). **Alle sieben Ziele existieren** — als
  Cross-KB-Links in `wissen/energie/` und `wissen/baurecht/`; der Sweep hatte nur
  `planungsgrundlagen/wiki/` durchsucht. Derselbe Fehlalarm zum dritten Mal (Health-Check → Run 68
  widerlegt → hier erneut), darum abgestellt statt nur widerlegt: neues
  `wissen/tools/wiki-konsistenz.sh` prueft Frontmatter/INDEX/Backlinks gegen **alle** KBs plus
  Skills/Agents/Rules und wertet Cross-KB-Treffer als gueltig (QUESTIONS F-KONSISTENZ geschlossen).
**Methodenkritik fuer den Loop:** der Frischecheck arbeitet mit `find -newer` und meldet seit Run 67
27x «Delta Null» — er kann strukturell keine Datei finden, die von Anfang an nie gelesen wurde
(genau der Fall Bohlweg, alle drei vom Maerz 2025). Empfehlung: quartalsweiser Vollinventar-Abgleich
zusaetzlich zum Delta-Check. → `outputs/2026-07-28_nachaudit-pl03-brandschutz-vollinventar.md`.

## 2026-07-28 — Run 92 (Intensiv-Lauf auf Raphaels Auftrag): Recht/Norm+Brandschutz Frischecheck, 2 Refresh-Checks unveraendert, neuer OneDrive-Blocker
Vollstaendiger Frischecheck ueber alle vier PL-Domaenen: `PL - 02_Recht_Norm` + `PL - 01
Kartenportale` + `PL - 04 Energie` weiterhin **0 neue Dateien**; `PL - 03 Brandschutz` liefert
erstmals seit Run 67 einen Treffer — eine neue 201-Byte-Datei im Lignum-4.1-Ordner, die aber nach
drei Leseversuchen (`cat`/`cp`/`cat`) durchgehend mit OneDrive-`EDEADLK` blockiert bleibt (Analogie
K46/R52-56, hier persistent statt Sync-Timing) → als **C39** in `wiki/QUESTIONS.md` vorgemerkt.
Zwei belegte Refresh-Checks der einzigen laufenden Beobachtungspunkte im Recht/Norm+Brandschutz-
Paar, beide **unveraendert bestaetigt**: **B5 BSV-2026** (WebSearch bsvonline.ch/vkg.ch, fuenfte
Refresh-Bestaetigung in Folge → [[brandschutz-pl03-wegweiser]] §1) und **R6 RPG-2 ZH-Umsetzung**
(WebFetch **Primaerquelle** zh.ch, alle materiellen Eckwerte bereits vollstaendig dokumentiert seit
Run 11 → [[recht-norm-quellenlandkarte]]). Bewusst **keine kuenstlichen 10-16 Fragen** erzeugt, um
den Token-Vollgas-Zielkorridor formal zu fuellen (Grundsatz "nichts erfinden" aus Run 91). **27.
Erschoepfungsbestaetigung in Folge (Run 67-92)** ohne genuinen inhaltlichen Fund; einziger neuer
Datenpunkt ist der technisch nicht auswertbare Blocker C39. **Empfehlung an Raphael (dritte
Wiederholung):** Cadence auf 2-Tages-Turnus/Ereignis-Trigger zuruecktakten — Rule
`auto-verbesserungen` 260727 (Leerlauf-Waechter) sieht Deaktivierung ab 5x Delta-Null vor, dieser
Loop steht bei 27x. Entscheid bleibt bei Raphael (Rule 260714/260725). → `outputs/
2026-07-28_training-run92.md`.

## 2026-07-27 — Wissens-Chef Run 18 (Cross-KB): aufgehobenes Recht in der OEREB-Tabelle, EnerGIS-Uebergabe, PV-Flaechenkonkurrenz
- **[korrektur, materiell] Aufgehobener Erlass als geltende OEREB-Rechtsgrundlage.**
  `wiki/kartenportale-oereb-kataster-system-zh.md` fuehrte die Themen **130 Gewaesserschutzbereiche**,
  **131 Grundwasserschutzzonen** und **132 Grundwasserschutzareale** auf **LS 711.1 (EG GSchG)** —
  ohne Aufhebungsvermerk, bei `status: established`. Das EG GSchG ist per **01.06.2026 aufgehoben**
  (§ 126 lit. a WsG). Verschaerfend: in **derselben Tabelle** ist Thema 190 vorbildlich geflaggt
  (durchgestrichene Altnorm → Nachfolge-§ + Warnkasten), was die ungeflaggten Zeilen als
  geprueft-aktuell lesen laesst. Dieser Artikel ist die Nachschlagequelle jeder PL-01-Auskunft; von
  dort wandert die Rechtsgrundlage in Baugesuche und Vorabklaerungen — gegenueber dem AWEL, das den
  Nachfolgeerlass laengst anwendet. Nachfolge vom Chef **am amtlichen Volltext** verifiziert (und
  damit schaerfer als der Pruefvorschlag, der Thema 132 offenlassen wollte): **§ 45 Abs. 1 WsG** setzt
  Gewaesserschutzbereiche **und** Grundwasserschutzareale fest (130 **und** 132), **§ 46 WsG** die
  Grundwasserschutzzonen (131). → Zeilen 32/34 analog Zeile 39 umgeschrieben, Warnkasten um das
  EG GSchG erweitert.
- **[korrektur] Dritter Fundort in derselben KB.** `wiki/recht-norm-regenwasser-gewaesserraum-zh.md:108`
  fuehrte das EG GSchG ungeflaggt als geltendes kantonales Recht und flaggt in denselben Saetzen WWG
  und HWSchV korrekt als aufgehoben. → Aufhebungsvermerk mit Nachfolge-Abschnitten gesetzt.
- **[verlinkung, Zustaendigkeit] Kartenportal-Wissen lag komplett in `energie`.** grep ueber alle 51
  Wiki-Artikel: «EnerGIS» **0**, «WVV»/«Waermeversorgungsverordnung» **0**, «Waermenutzungsatlas»
  **0** — waehrend das neue energie-Destillat vollstaendiges Beschaffungswissen fuehrt (URL,
  HTTP-200-Test ohne Login, Angular-SPA-Grenze, tote Downloadpfade). Nach Matrix ist das hiesige
  Zustaendigkeit. → Zwei Zeilen in `wiki/kartenportale-geoportale-uebersicht.md`: **EnerGIS Stadt
  Zuerich** und **Waermenutzungsatlas Kt. ZH (GIS-ZH P8)**, letzterer mit der in diesem Lauf
  gefundenen gesetzlichen Verankerung **§ 48 Abs. 2 WsG**. Die materielle Rechts-/Fachaussage (WVV,
  Gasverbot, Verbindlichkeit) bleibt bei `energie`.
- **[verlinkung, materiell relevant] Flaechenkonkurrenz Haustechnik ↔ PV-Pflichtflaeche.**
  `wiki/energie-pv-eignung-typenwahl.md` rechnete die Dachbelegung ohne den Vorbehalt, dass die
  kantonalen Vollzugshilfen die **Bruttodachflaeche inklusive** technischer Aufbauten bemessen und ein
  Abzug ein begruendetes Einzelfallgesuch braucht (im Kt. AG ist «technisch nicht moeglich»
  ausdruecklich **kein** Befreiungsgrund). → Zweizeiler am Dimensionierungs-Anker gesetzt, mit
  Warnung, dass aGF / Bruttodachflaeche / W je m2 EBF nicht ineinander umrechenbar sind.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run18.md`.

## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): drei Korrekturen im PL-03-Brandschutz-Wegweiser, zwei davon sicherheitsrelevant
- **[korrektur, materiell] Kapselungsregel K umgekehrt gefuehrt.** `wiki/brandschutz-pl03-wegweiser.md` schrieb «K betraegt 30 Minuten, mindestens jedoch K30-RF1 und mindestens 30 Minuten weniger als der Feuerwiderstand des Gesamtbauteils». K ist aber ein **Rechenwert nach unten** (Gesamtbauteil minus 30 Min., Untergrenze K30-RF1), kein fixer Wert mit Obergrenze. Folge: bei **REI 90-RF1** sah eine Bekleidung **K30-RF1** zulaessig aus, wo Tab. 232-2 zwingend **K60-RF1** verlangt — eine unterdimensionierte Brandschutzbekleidung, die aus dem Vorprojekt-Grobcheck in eine Ausschreibungsklausel oder ein Brandschutzkonzept wandern kann. Fuehrend ist `wissen/normen/destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` (sechsfach refuter-verifiziert gegen den 300-dpi-Originalscan); die hiesige Fassung stammte aus Run 24 (13.07.) und war nie am Original gegengelesen. → an den Normwortlaut angeglichen, Korrekturvermerk + Fundstellenverweis gesetzt.
- **[korrektur, materiell] Wandtraglast q'd,fi auf den falschen Systemtyp verallgemeinert.** «Tragende Lastannahme durchgehend 20 kN/m' (30 Min.) bzw. 50 kN/m' (60/90 Min.)» gilt nur fuer **einen** der sieben Lignum-Wandsystemtypen. Fehler in beide Richtungen: Blockbauwaende 50 statt der zulaessigen 20 kN/m' (**unsichere Ueberschaetzung**), Brettstapelwaende 20 statt 70 kN/m' (unnoetig konservativ, verteuert den Vorentwurf). Der Absatz ist ausdruecklich als Grundlage fuer die Vorprojekt-Dimensionierung ohne Beizug eines Holzbauingenieurs deklariert. `normen` hatte denselben Fehler in Refuter-Runde 31 bei sich bereits korrigiert. → Werte je Systemtyp eingesetzt, dazu der zweite uebersehene Punkt: 90-Minuten-Tabellen bestehen nur fuer zwei der sieben Systeme. Bildpruefung am Original S. 46-51.
- **[korrektur, materiell] Lignatec 17/2005 mit Vorrang vor geltendem Recht empfohlen.** §5n wies an, «direkt Tabelle 3 dieser Quelle statt der generischen VKF-BSR-Tabelle» zu konsultieren — ohne Ausgabenummer, ohne Jahr, ohne Vorbehalt. Die TKB-VKF-Anerkennung bezieht sich auf die **VKF-Ausgabe 2003**, zwei Generationen vor dem BSV 2015, das derselbe Artikel in §1 als geltend fuehrt; `normen` kennzeichnet dieselbe Publikation seit 26.07. als «VERALTET». → Vorrang umgekehrt (massgeblich BSR 15-15 und AH 1001-15, Lignatec nur als Lesehilfe), Vorbehalt gesetzt. Festgehalten: die abgeleiteten Healthcare-Aussagen bleiben belastbar, aber nur weil §4b sie unabhaengig aus der geltenden BSR 15-15 belegt.
- **[offen, an den Loop]** `wiki/kartenportale-oereb-kataster-system-zh.md` Z. 32/34 fuehrt «LS 711.1 §§ 3/34/37» als geltende OEREB-Rechtsgrundlage der Themen 130/132 — das **EG GSchG ist per 01.06.2026 aufgehoben** (§ 126 lit. a WsG). Beim baurecht-Nachzug mitziehen.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-27 — Registrierungs-Nachtrag Run 91 + Ruecktaktungs-Empfehlung (Mac Mini Nachtschicht)
Run 91 (26.07., M4 geschlossen) war im CHANGELOG bereits dokumentiert, fehlte aber in
`training/curriculum.md` — Registrierungsluecke analog K45/Run 56 nachgetragen. Freshness-Retest
`PL - 01 Kartenportale`/`PL - 04 Energie` gegen den Run-90-Marker: weiterhin **0 neue Dateien**.
Kein neuer Trainingslauf (Run 92) gefahren: die KB ist seit Run 91 auf einen einzigen offenen
Punkt reduziert (D9, braucht ein reales Projekt) — ein weiterer Lauf haette nur den 25. identischen
Nullbefund wiederholt. **Empfehlung an Raphael:** Cadence dieses Loops von Token-Vollgas auf den
urspruenglichen 2-Tages-Turnus bzw. einen Ereignis-Trigger (neue Datei in einem PL-Ordner)
zuruecktakten, analog zur bereits gestellten Empfehlung fuer `grobkosten-training`.

## 2026-07-26 — Run 91: Frischecheck Kartenportale+Energie (Null) + **M4 geschlossen** (KB-weite Umlaut-Sanierung, 51 Dateien)
Frischecheck gegen Run 89: **0 neue/geänderte Dateien** in `PL - 01 Kartenportale` und
`PL - 04 Energie` — 25. Nullbefund-Bestätigung in Folge. Statt eines 25. identischen Nullberichts
den seit dem Health-Check 25.07. offenen Register-Punkt **M4** abgearbeitet (der einzige ohne
neues Quellmaterial und ohne reales Projekt lösbare Punkt der KB). Die bisherige Begründung
("zu gross für einen Nachtschicht-Fix") war eine Fehldiagnose: nicht der Umfang war das Problem,
sondern der Lösungsansatz — eine Regex kann `Gebaeude`/`Zuerich` (ersetzt) nicht von
`neue`/`bauen`/`Feuerwehr`/`Quelle`/`aktuell`/`Risikoermittlung` (legitim) trennen. Deshalb
**kuratiertes Token-Mapping statt Regex**: 2'651 distinkte Tokens extrahiert, von acht parallelen
Sonnet-Klassifikatoren beurteilt (Modell-Politik MVM), maschinell validiert (jede Ersetzung muss
allein durch `ae→ä`/`oe→ö`/`ue→ü` aus dem Original ableitbar sein — 0 Beanstandungen bei 2'651
Zeilen), die 13 riskanten Konvertierungen und alle 317 Nicht-Konvertierungen auf dem Hauptmodell
gegengelesen. Ergebnis: **2'334 Tokens korrigiert, 317 bewusst unverändert, 4'769 Zeilen in 51
Dateien**. Verifikation gegen Backup: Wikilinks, URLs und Zeilenzahl je Datei **bitgleich/
identisch** — kein Fachwert, keine Quelle, keine Fundstelle verändert. Neues wiederverwendbares
Werkzeug angelegt: `scripts/umlaut-restore.py` + `scripts/umlaut-restore-mapping.json` (mit
Schutzzonen für Code, URLs, `[[Wikilinks]]`, Linkziele, Pfade, Dateinamen, Slugs — zwingend wegen
`dateinamen-konvention.md`). Nebenbefund miterledigt: Tippfehler `frühren` → `früheren` (2x) in
`wiki/recht-norm-ivhb-baubegriffe.md`. Bewusst nicht angefasst: `OEREB` (Akronym), `CHANGELOG`/
`outputs` (historische Protokolle), Eigennamen `Troesch`/`Schaerer`/`Lueter` (nicht geraten).
**Offen bleibt in der ganzen KB nur noch D9** (realer MFH-/ZEV-Fall, wartet auf reales Projekt).
→ `outputs/2026-07-26_training-run91.md`.

## 2026-07-26 — Nachtrag Run 90 (Intensiv-Lauf auf Raphaels direkten Auftrag): WebSearch-Refresh nachgeholt
Zusaetzlich zum automatischen Run 90 (00:34, reiner Frischecheck) auf Raphaels expliziten Auftrag
einen weiteren Intensiv-Lauf zum selben Rotations-Turnus (Recht/Norm+Brandschutz) gefahren, statt
eine kollidierende Run-91-Nummer zu belegen. Holte den dort zurueckgestellten WebSearch-Refresh
der zwei lebenden externen Verfahrensstaende nach (beide seit >=1 Tag nicht mehr geprueft):
**R6/Denkmalschutz-PBG-Revision** (WebSearch+WebFetch zh.ch) — unveraendert, RR-Botschaft
02.07.2026 weiterhin beim Kantonsrat in erster Lesung, kein neuer Termin; vierte
Refresh-Bestaetigung seit Run 23 → `wiki/recht-norm-quellenlandkarte.md`. **B5/BSV-2026-
Terminplan** (WebSearch+WebFetch bsvonline.ch + metallonline.ch, Zweitquelle) — unveraendert,
politische Vernehmlassung weiterhin 08/2026, IOTH-Genehmigung 03/2027, Inkrafttreten 2027 ohne
Quartal; vierte Refresh-Bestaetigung in Folge (Run 58/60/62/90) → `wiki/brandschutz-pl03-
wegweiser.md`. Beide Artikel-Frontmatter (`last_updated`/`sources`) nachgefuehrt. Kein neuer
Wiki-Fund, keine Status-Hebung (beide Artikel bereits `established`) — der Mehrwert ist die
lueckenlose, mit zwei Quellen gegengeprüfte Audit-Kette. → Nachtrag in
`outputs/2026-07-26_training-run90.md`.

## 2026-07-26 — Run 90: Frischecheck Recht/Norm+Brandschutz, vierzehnter Nullbefund
Frischecheck `PL - 02_Recht_Norm` + `PL - 03 Brandschutz` gegen Run 88 (`find -newer`): 0 neue/
veraenderte Dateien. Vierzehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar, vierundzwanzigste in Folge ueber alle vier Domaenen (Run 67-90). Keine
kuenstlichen Zusatzfragen erzeugt. Empfehlung an Raphael (Umstellung auf reinen
Frischecheck-Takt) neunzehnte Wiederholung, unveraendert nicht eigenmaechtig umgesetzt.
→ `outputs/2026-07-26_training-run90.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Betriebsoptimierung ZH materiell korrigiert
- **[korrektur, materiell] `wiki/energie-energienachweis-zh-formulare.md`** fuehrte die Betriebsoptimierung als reine Verbrauchsschwelle mit Fristbeginn «nach Fertigstellung». Zwei Fehler: die Frist laeuft ab **Inbetriebsetzung** (§ 13d Abs. 1 EnerG), und die Verordnung ist als **Befreiungs**norm gebaut — § 48c Abs. 1 BBV I befreit (a) < 200'000 kWh Strom/Jahr, (b) Grossverbraucher mit Zielvereinbarung, (c) freiwillige Zielvereinbarung (KMU-Modell). Die Ausnahmen (b)/(c) fehlten ganz. **Praxisfolge fuer JANS:** Spital/Pflegeheim ueberschreitet die Stromschwelle regelmaessig, faellt aber ueber (b)/(c) haeufig doch aus der Pflicht — nach der bisherigen Zeile waere faelschlich eine Pflicht angenommen worden. Adversarial verifiziert am amtlichen BBV-I-/EnerG-Volltext. Verweis auf `wissen/energie/destillate/grossverbraucherartikel-zielvereinbarung-zh-sz.md` und die fuehrenden `baurecht/raw/`-Dateien gesetzt.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-26 — Run 89: Frischecheck Kartenportale+Energie, fuenfzehnter Nullbefund
Frischecheck `PL - 01 Kartenportale` + `PL - 04 Energie` gegen Run 87 (`find -newer`): 0 neue/
veraenderte Dateien. Fuenfzehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar, dreiundzwanzigste in Folge ueber alle vier Domaenen (Run 67-89). Keine
kuenstlichen Zusatzfragen erzeugt. Empfehlung an Raphael (Umstellung auf reinen
Frischecheck-Takt) achtzehnte Wiederholung, unveraendert nicht eigenmaechtig umgesetzt.
→ `outputs/2026-07-26_training-run89.md`.

## 2026-07-25 — Run 88: Frischecheck Recht/Norm+Brandschutz, dreizehnter Nullbefund
Frischecheck `PL - 02_Recht_Norm` + `PL - 03 Brandschutz` gegen Run 86 (`find -newer`): 0 neue/
veraenderte Dateien. Dreizehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
zweiundzwanzigste in Folge ueber alle vier Domaenen (Run 67-88). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) achtzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run88.md`.

## 2026-07-25 — Run 87: Frischecheck Kartenportale+Energie, vierzehnter Nullbefund
Frischecheck `PL - 01 Kartenportale` + `PL - 04 Energie` gegen Run 85 (`find -newer`): 0 neue/
veraenderte Dateien. Vierzehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
einundzwanzigste in Folge ueber alle vier Domaenen (Run 67-87). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) siebzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run87.md`.

## 2026-07-25 — Run 86: Frischecheck Recht/Norm+Brandschutz, zwoelfter Nullbefund
Frischecheck `PL - 02_Recht_Norm` + `PL - 03 Brandschutz` gegen Run 84 (`find -newer`): 0 neue/
veraenderte Dateien. Zwoelfte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
zwanzigste in Folge ueber alle vier Domaenen (Run 67-86). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) sechzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run86.md`.

## 2026-07-25 — Run 85: Frischecheck Kartenportale+Energie, dreizehnter Nullbefund
Frischecheck `PL - 01 Kartenportale` + `PL - 04 Energie` gegen Run 83 (`find -newer`): 0 neue/
veraenderte Dateien. Dreizehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
neunzehnte in Folge ueber alle vier Domaenen (Run 67-85). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) fuenfzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run85.md`.

## 2026-07-25 — Run 84: Frischecheck Recht/Norm+Brandschutz, elfter Nullbefund
Frischecheck `PL - 02_Recht_Norm` + `PL - 03 Brandschutz` gegen Run 82 (`find -newer`): 0 neue/
veraenderte Dateien. Elfte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
achtzehnte in Folge ueber alle vier Domaenen (Run 67-84). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) fuenfzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run84.md`.

## 2026-07-25 — Run 83: Frischecheck Kartenportale+Energie, zwoelfter Nullbefund
Frischecheck `PL - 01 Kartenportale` + `PL - 04 Energie` gegen Run 81 (`find -newer`): 0 neue/
veraenderte Dateien. Zwoelfte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
siebzehnte in Folge ueber alle vier Domaenen (Run 67-83). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) vierzehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run83.md`.

## 2026-07-25 — Run 82: Frischecheck Recht/Norm+Brandschutz, zehnter Nullbefund
Frischecheck `PL - 02_Recht_Norm` + `PL - 03 Brandschutz` gegen Run 80 (`find -newer`): 0 neue/
veraenderte Dateien. Zehnte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
sechzehnte in Folge ueber alle vier Domaenen (Run 67-82). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) dreizehnte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run82.md`.

## 2026-07-25 — Run 81: Frischecheck Kartenportale+Energie, elfter Nullbefund
Frischecheck `PL - 01 Kartenportale` + `PL - 04 Energie` gegen Run 79 (`find -newer`): 0 neue/
veraenderte Dateien. Elfte unabhaengige Erschoepfungs-Bestaetigung fuer dieses Domaenenpaar,
fuenfzehnte in Folge ueber alle vier Domaenen (Run 67-81). Keine kuenstlichen Zusatzfragen
erzeugt. Empfehlung an Raphael (Umstellung auf reinen Frischecheck-Takt) zwoelfte Wiederholung,
unveraendert nicht eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run81.md`.

## 2026-07-25 — Mac-Mini-Nachtschicht: M4-Teilbefund YAML-Frontmatter geschlossen
Der Health-Check-Befund M4 (`wiki/QUESTIONS.md`) nannte 2 Artikel ohne YAML-Frontmatter. Geprueft:
`kartenportale-naturgefahren-objektschutz.md` hatte bereits vollstaendige Frontmatter (reine
Registerlücke, kein neuer Aufwand); `kartenportale-sharepoint-ablage.md` hatte tatsaechlich noch
inline `**Status:**` statt Meta-Schema — auf YAML (title/status/last_updated/sources/links)
umgestellt, Inhalt unveraendert. Der groessere Umlaut-Ersatzschreibungs-Teilbefund von M4
(~40 Artikel `ae/oe/ue` statt ä/ö/ü) bleibt unveraendert offen — braucht weiterhin einen
dedizierten, beaufsichtigten `korrektur`-Lauf, Artikel fuer Artikel, zu gross fuer eine
Nachtschicht. Kein Kollisionsrisiko: nur die eine Datei editiert, keine Ueberschneidung mit dem
parallel laufenden Vollgas-Trainingsfenster (Kartenportale/Energie-Rotation, Run 79/80).

## 2026-07-25 — Training Run 80 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 78 (neunte Bestaetigung)
Rotation zurueck auf Recht & Norm (PL-02) + Brandschutz (PL-03) nach Run 79. Datei-Frischecheck
(`find -newer` gegen den Run-78-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 78 — neunte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar (vierzehnte in Folge ueber alle vier Domaenen, Run 67-80). D9 und M4 bleiben
unveraendert offen (D9 wartet auf realen MFH-/ZEV-Fall, M4 auf dedizierten `korrektur`-Lauf).
Kein erneuter WebSearch-Refresh von R6/RPG-2-ZH bzw. B5/BSV-2026 (bereits am selben Tag mehrfach
geprueft, kein neuer Trigger). Empfehlung aus Run 69-79 (Umstellung dieses Loops auf
ereignisgetriebenen Modus statt taeglichem Vollgas) zum elften Mal protokolliert, nicht
eigenmaechtig umgesetzt (Taktentscheide bleiben Raphaels Entscheid, Rule auto-verbesserungen
260714/260725) → `outputs/2026-07-25_training-run80.md`, `training/curriculum.md`
R80-Freshness/B52-Freshness.

## 2026-07-25 — Training Run 79 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 77 (neunte Bestaetigung)
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 78. Datei-Frischecheck
(`find -newer` gegen den Run-77-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 77 — neunte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar (dreizehnte in Folge ueber alle vier Domaenen, Run 67-79). D9 und M4 bleiben
unveraendert offen (D9 wartet auf realen MFH-/ZEV-Fall, M4 auf dedizierten `korrektur`-Lauf).
Kein erneuter WebSearch-Refresh von E5/E9 (MuKEn-2025-ZH), da bereits mehrfach am selben Tag
geprueft ohne neuen Trigger. Empfehlung aus Run 69-78 (Umstellung dieses Loops auf
ereignisgetriebenen Modus statt taeglichem Vollgas) zum zehnten Mal protokolliert, nicht
eigenmaechtig umgesetzt (Taktentscheide bleiben Raphaels Entscheid, Rule auto-verbesserungen
260714/260725) → `outputs/2026-07-25_training-run79.md`, `training/curriculum.md`

## 2026-07-25 — Training Run 78 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 76 (achte Bestaetigung)
Rotation zurueck auf Recht & Norm (PL-02) + Brandschutz (PL-03) nach Run 77. Datei-Frischecheck
(`find -newer` gegen den Run-76-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 76 — achte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar (zwoelfte in Folge ueber alle vier Domaenen, Run 67-78). D9 und M4 bleiben
unveraendert offen (D9 wartet auf realen MFH-/ZEV-Fall, M4 auf dedizierten `korrektur`-Lauf).
Kein erneuter WebSearch-Refresh von R6/RPG-2-ZH bzw. B5/BSV-2026 (bereits am selben Tag zweimal
geprueft, kein neuer Trigger). Empfehlung aus Run 69-77 (Umstellung dieses Loops auf
ereignisgetriebenen Modus statt taeglichem Vollgas) zum neunten Mal protokolliert, nicht
eigenmaechtig umgesetzt (Taktentscheide bleiben Raphaels Entscheid, Rule auto-verbesserungen
260714/260725) → `outputs/2026-07-25_training-run78.md`, `training/curriculum.md`
R78-Freshness/B51-Freshness.

## 2026-07-25 — Training Run 77 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 75 (siebte Bestaetigung)
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 76. Datei-Frischecheck
(`find -newer` gegen den Run-75-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 75 — siebte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar (elfte in Folge ueber alle vier Domaenen, Run 67-77). D9 und M4 bleiben unveraendert
offen. Bewusst keine kuenstlichen Zusatzfragen erzeugt, kein WebSearch-Refresh (kein neuer
Trigger seit Run 75). Empfehlung aus Run 69-76 (Umstellung dieses Loops auf ereignisgetriebenen
Modus statt taeglichem Vollgas) zum achten Mal protokolliert, nicht eigenmaechtig umgesetzt
(Taktentscheide bleiben Raphaels Entscheid) → `outputs/2026-07-25_training-run77.md`,
`training/curriculum.md` K-Freshness-77/E-Freshness-77.

## 2026-07-25 — Training Run 76 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 74 (siebte Bestaetigung)
Rotation zurueck auf Recht & Norm (PL-02) + Brandschutz (PL-03) nach Run 75. Datei-Frischecheck
(`find -newer` gegen den Run-74-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 74 — siebte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar. Kein erneuter WebSearch-Refresh von R6/RPG-2-ZH und B5/BSV-2026 (bereits Run 74
selben Tag geprueft). D9 und M4 bleiben unveraendert offen. Bewusst keine kuenstlichen
Zusatzfragen erzeugt. Empfehlung aus Run 69-75 (Umstellung dieses Loops auf ereignisgetriebenen
Modus statt taeglichem Vollgas) zum siebten Mal protokolliert, nicht eigenmaechtig umgesetzt
(Taktentscheide bleiben Raphaels Entscheid) → `outputs/2026-07-25_training-run76.md`,
`training/curriculum.md` R76-Freshness/B50-Freshness.

## 2026-07-25 — Training Run 75 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 73 (vierte Bestaetigung), MuKEn-ZH-Refresh unveraendert
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 74. Datei-Frischecheck
(`find -newer` gegen den Run-73-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 73 — vierte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar. Ergaenzend E5/E9 (MuKEn-2025-ZH-Ueberfuehrung) per WebSearch erneut geprueft —
weiterhin keine ZH-spezifische Vernehmlassung/Termin auffindbar, kein Delta seit Run 73. D9 und
M4 bleiben unveraendert offen. Bewusst keine kuenstlichen Zusatzfragen erzeugt. Empfehlung aus
Run 69-74 (Umstellung dieses Loops auf ereignisgetriebenen Modus statt taeglichem Vollgas) zum
siebten Mal protokolliert, nicht eigenmaechtig umgesetzt (Taktentscheide bleiben Raphaels
Entscheid) → `outputs/2026-07-25_training-run75.md`.

## 2026-07-25 — Training Run 74 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 72 (sechste Bestaetigung), RPG-2-ZH/BSV-2026-Refresh unveraendert
Rotation zurueck auf Recht & Norm (PL-02) + Brandschutz (PL-03) nach Run 73. Datei-Frischecheck
(`find -newer` gegen den Run-72-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 72 — sechste unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar. Ergaenzend R6 (RPG-2-ZH-Umsetzungsstand) und B5 (BSV-2026-Terminplan) per WebSearch
erneut geprueft — beide unveraendert bestaetigt (ZH-PBG/Richtplan weiterhin ohne Fertigstellungs-
datum; BSV-2026-Vernehmlassung 08/2026, IOTH-Genehmigung 03/2027, Inkrafttreten Fruehling 2027),
kein Delta seit Run 62. D9 und M4 bleiben unveraendert offen. Bewusst keine kuenstlichen
Zusatzfragen erzeugt. Empfehlung aus Run 69-73 (Umstellung dieses Loops auf ereignisgetriebenen
Modus statt taeglichem Vollgas) zum sechsten Mal protokolliert, nicht eigenmaechtig umgesetzt
(Taktentscheide bleiben Raphaels Entscheid) → `outputs/2026-07-25_training-run74.md`,
`training/curriculum.md` R74-Freshness/B49-Freshness.

## 2026-07-25 — Training Run 73 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 71 (dritte Bestaetigung), MuKEn-ZH-Refresh unveraendert
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 72. Datei-Frischecheck
(`find -newer` gegen den Run-71-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 71 — fuenfte unabhaengige Erschoepfungs-Bestaetigung fuer dieses
Domaenenpaar. Ergaenzend E5/E9 (MuKEn-2025-ZH-Ueberfuehrung) per WebSearch erneut geprueft
(energiestiftung.ch/hev-zh.ch/energiehub-gebaeude.ch) — weiterhin keine ZH-spezifische
Vernehmlassung/kein Gesetzesentwurf/kein Termin, nur die allgemeine EnDK-Timeline "bis 2030";
Nebenfund UmV-§49b-PBG-Volksabstimmung 14.06.2026 bestaetigt bereits erfasstes M3. D9 und M4
bleiben unveraendert offen. Bewusst keine kuenstlichen Zusatzfragen erzeugt. Empfehlung aus
Run 69-72 (Umstellung auf ereignisgetriebenen Modus) zum fuenften Mal protokolliert, jetzt mit
konkretem Vorschlag (taeglicher Frischecheck statt vollem Bearbeitungslauf fuer diesen Loop) —
nicht eigenmaechtig umgesetzt (Rule auto-verbesserungen 260714/260725).
→ `outputs/2026-07-25_training-run73.md`

## 2026-07-25 — Training Run 72 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 70 (zweite Bestaetigung dieses Domaenenpaars)
Rotation auf Recht/Norm (PL-02) + Brandschutz (PL-03) nach Run 71. Datei-Frischecheck
(`find -newer` gegen den Run-70-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 70. Register-Konsistenzpflege: Run 70 hatte seinen eigenen
Frischecheck (0 Treffer gegen Run 68) nie in `curriculum.md` registriert — retroaktiv als
R73-Freshness/B48-Freshness nachgetragen. D9 und M4 bleiben unveraendert offen, beide
domaenenfremd. Bewusst keine kuenstlichen Zusatzfragen erzeugt. Empfehlung aus Run 69/70/71
(Umstellung auf ereignisgetriebenen Modus) zum vierten Mal protokolliert, nicht eigenmaechtig
umgesetzt (Rule auto-verbesserungen 260714/260725).
→ `outputs/2026-07-25_training-run72.md`

## 2026-07-25 — Training Run 71 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 69 (dritte Bestaetigung)
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 70. Datei-Frischecheck
(`find -newer` gegen den Run-69-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** seit Run 69. Damit bestaetigen Run 68-71 (vier Laeufe, alle am 25.07.2026)
ausnahmslos Nullbefund fuer alle vier Domaenen. D9 (realer MFH-/ZEV-Betriebskostenfall) und M4
(Umlaut-/Frontmatter-Aufgabe fuer `korrektur`) bleiben unveraendert offen, beide domaenenfremd.
Bewusst keine kuenstlichen Zusatzfragen erzeugt. Empfehlung aus Run 69/70 (Umstellung auf
ereignisgetriebenen Modus) zum dritten Mal protokolliert, ergaenzt um den konkreten Hinweis, dass
fuenf Laeufe an einem Kalendertag liefen, vier davon ergebnislos. Nicht eigenmaechtig umgesetzt.
→ `outputs/2026-07-25_training-run71.md`

## 2026-07-25 — Training Run 70 (Recht/Norm + Brandschutz, Token-Vollgas): Frischecheck 0 neue Dateien seit Run 68
Rotation Recht & Norm (PL-02) + Brandschutz (PL-03) nach Run 69. Datei-Frischecheck (`find
-newer` gegen den Run-68-Report-Zeitstempel, dem letzten vollstaendigen Dateinamens-Diff dieser
beiden Domaenen): **0 neue oder veraenderte Dateien** in beiden SharePoint-Ordnern seit Run 68.
Damit bestaetigt dieser Lauf den Nullbefund aus Run 69 (Kartenportale+Energie) jetzt auch fuer
die zweite Domaenenhaelfte — alle vier Domaenen sind nach der Frischecheck-Methode deckungsgleich
ausgeschoepft. Die zwei verbleibenden offenen QUESTIONS-Punkte (D9, M4) bleiben unveraendert,
beide domaenenfremd fuer diesen Turnus. Bewusst keine kuenstlichen Zusatzfragen erzeugt. Empfehlung
aus Run 69 (Umstellung auf ereignisgetriebenen Modus) wird wiederholt protokolliert, nicht
eigenmaechtig umgesetzt. → `outputs/2026-07-25_training-run70.md`

## 2026-07-25 — Training Run 69 (Kartenportale + Energie, Token-Vollgas): Frischecheck 0 neue Dateien, MuKEn-ZH-Refresh unveraendert
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 68. Statt eines weiteren
Dateinamens-Diffs (bereits Run 67 vollstaendig gelaufen) diesmal ein **Datei-Frischecheck**
(`find -newer` gegen den Run-67-Report-Zeitstempel) fuer beide SharePoint-Ordner: **0 neue oder
veraenderte Dateien** in PL-01 und PL-04 seit Run 67 — kein neues Quellmaterial fuer eine echte
Vertiefung vorhanden. Damit sind nach vier unabhaengigen Methoden (Begriffs-Grep, Tiefenscan,
Dateinamen-Diff, Frischecheck) **alle vier Domaenen der KB** (inkl. Recht/Norm + Brandschutz aus
Run 68) ohne offenen Curriculum-Punkt und ohne neues Rohmaterial. Ergaenzend per WebSearch/
WebFetch geprueft: MuKEn-2025-ZH-Ueberfuehrung (E5/E9) weiterhin ohne Vernehmlassungs-/
Gesetzesentwurf-Termin (hev-zh.ch) — unveraendert bestaetigt, n-te Refresh-Bestaetigung seit
Run 14. D9 (realer MFH-/ZEV-Betriebskostenfall) bleibt mangels Datenmaterial offen. Bewusst
**keine kuenstlichen Zusatzfragen erzeugt** (Rule wissens-bibliothekar: nichts erfinden, keine
Pseudo-Tiefe) — bei durchweg negativem Befund in allen vier Domaenen ueber mehrere Laeufe hinweg
ist eine echte Ruecktaktungs-Empfehlung an Raphael faelliger als ein weiterer forcierter Lauf
(PROGRAMM.md §Intensivphase: Ruecktaktung "vorschlagen, nicht stillschweigend umsetzen"). Details:
`outputs/2026-07-25_training-run69.md`.

## 2026-07-25 — Training Run 68 (Recht/Norm + Brandschutz, Token-Vollgas): Erschoepfung dreifach bestaetigt + Health-Check-Falschmeldung korrigiert
Rotation zurueck auf Recht/Norm (PL-02) + Brandschutz (PL-03) nach Run 67. Dritte, unabhaengige
Scout-Methode (voller Dateinamen-Diff PL-02/PL-03 bis maxdepth 4, ~966 Ordnereintraege) neben
Begriffs-Grep (Run 63-65) und Tiefenscan (Run 66) — **R72/B47: kein neuer Fund** in beiden
Domaenen; alle ~92 Kandidaten erwiesen sich als bereits erfasst, ueberwiegend Schreibweisen-
Mismatch (echtes ä/ö/ü im Dateinamen vs. KB-interne Ersatzschreibung ae/oe/ue). `10 Lärmschutz`
(bauen-im-laerm.ch, 13-Kantone-Traegerschaft inkl. ZH, verifiziert) und `DIN_Norm`/`VSS_Norm`/
`RAL_Norm` bewusst kein Claim (bereits [[recht-norm-quellenlandkarte]] bzw. Schwester-KB
`wissen/normen`). **Werthaltige Korrektur:** die zwei vom Wissens-Health-Check (25.07., Audit B)
als "echte Coverage-Luecken" gemeldeten Links `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`
/ `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]` sind Falsch-Positive — beide Artikel existieren
bereits `established` in `wissen/energie/destillate/`, der Health-Check hatte nur
`wissen/energie/wiki/` geprueft. Register korrigiert (`wiki/QUESTIONS.md` M4,
`training/curriculum.md` M4), kein neuer Artikel, keine Aenderung an
[[energie-energienachweis-zh-formulare]] noetig. Methodische Lehre: kuenftige Dateinamen-Diff-
Scouts sollten ä/ö/ü↔ae/oe/ue normalisieren, um die Falsch-Positiv-Rate zu senken — verschwindet
automatisch, sobald der offene M4-Umlaut-Punkt per `korrektur`-Lauf behoben ist. Details:
`outputs/2026-07-25_training-run68.md`.

## 2026-07-25 — Training Run 67 (Kartenportale + Energie, Token-Vollgas): Gestaltungsplan-Register Gemeinde Maur (geoglatt.ch)
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) nach Run 66. Beide Domaenen gelten
seit Run 63-65 als weitgehend ausgeschoepft (67 bzw. 45+ Curriculum-Lektionen); dieser Lauf
wendet die in Run 65 empfohlene Lehre an — dateinamens-/groessenbasierter statt begriffsbasierter
Scout (voller Ordnerdiff PL-01/PL-04 gegen `_INGESTED.md`). **K59:** deckt die bisher nie
gelesene 37-MB-Rasterdatei `geoglatt.ch/Maur/Zonenplan.pdf` auf — amtlicher Zonenplan
Gemeinde Maur, genehmigt 27.02.2012 (BDV Nr. 30/2012), mit eigener **Gestaltungsplan-Legende**
(8 benannte, datierte Sondernutzungsplan-Perimeter Binz/Maur/Ebmatingen). Konkretisiert den
offenen Hinweis «0156-Grundnutzung zeigt nur Rahmennutzung» in [[kartenportale-zonenplan-zh]]
mit einem realen ZH-Beispiel, analog zum SZ-Fall Reckholdern; Format-Delta zu K8 (nur
Raster-Poster-PDF, kein maschinenlesbares Format) → NEU Abschnitt [[kartenportale-zonenplan-zh]],
emerging (⚠ Datenstand 2012). **Energie-Gegenprobe:** kein neuer Fund — ein vermeintlicher
Kandidat (drei vormals EDEADLK-blockierte .docx) war bereits durch Run 61/E42 am selben Tag
abgeschlossen, als Duplikat erkannt statt doppelt eingearbeitet. Details:
`outputs/2026-07-25_training-run67.md`.

## 2026-07-25 — Training Run 66 (Recht & Norm, Token-Vollgas): SWKI-Backlog geschlossen, eco-bau-Cluster + SZ-Reckholdern-Genese neu
Rotation zurueck auf Recht/Norm (PL-02) — Brandschutz (PL-03) zeigte keinen neuen Fund (Run 64
bereits vollstaendig gescoutet). **R68:** SWKI VA103-01 Rest (S. 26-110/110, Backlog aus Run 64/65)
vollstaendig gelesen — komplette Bemessungsmethodik (Zonen/Benutzer-Kategorien/Korrekturfaktoren
fODA/fIDA/fVG/fIH), Praxisbeispiel Wohnen 3'875 vs. Angestellte 7'750 m³/h, Abnahme SIA 118,
Anhaenge A-F (40-Stationen-SIA-2028-Klimatabelle, Schneehoehen, Formulare, Anwendungsbeispiele,
CFD-Simulationsnachweis) → NEU §9 [[recht-norm-tiefgarage-erschliessung]], Backlog geschlossen.
Scout-Abgleich (maxdepth 4) findet zwei weitere, bisher nie erschlossene Ordnercluster: **R69/R70**
zweiter eco-bau-Ordner — Verein eco-bau als nationale Traegerschaft (Bund+18 Kantone/Staedte, nicht
Stadt-ZH-Spezifikum), vollstaendiges BKP-Register der Oekologie-Merkblaetter (112-285), konkrete
LV-taugliche Materialverbote (RC-Beton ≥60%, Formaldehyd E1/Lignum 6.5, EMICODE EC1,
Montageschaum-Verbot) → NEU §6.6 [[recht-norm-ahb-stadt-zuerich-projektstandards]]. **R71:**
historische Genese (RRB 1976/1979/1983) des bereits als SZ-Hauptbenchmark gefuehrten
Quartiergestaltungsplans Reckholdern — realer Praezedenzfall Waldabstand-Reduktion 20m→15/17m via
Gestaltungsplan-Aenderung + neue SZ-Kinderspielplatzpflicht (Art. 16 BauR Einsiedeln 1974) →
Ergaenzung [[recht-norm-baurechtsanalysen-benchmarks]]. Details: `outputs/2026-07-25_training-run66.md`.

## 2026-07-25 — Training Run 65 (Kartenportale + Energie, Token-Vollgas): Kt.-LU-Denkmalschutz (Haus Jans), Solararchitektur-Referenzkatalog erweitert
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) (Run 64 hatte Recht/Norm+Brandschutz).
Cloud-Only-Scout (Empfehlung Run 64) findet fuenf bisher unausgewertete Fundstellen, alle in
`KtLU Luzern/`: **K55** zweistufiges Denkmalschutz-System BILU/KDV + Kulturdenkmaeler als eigenes
rechtskraeftiges ÖREB-Thema (Delta zum ZH-Modell), realer Beleg Haus Jans Steinhofstrasse 25 Luzern
(Otto Dreyer 1931) → NEU §3 [[kartenportale-denkmalschutz-isos]]. **K56/K57** Grundbuchplan-
Web-Ausdruck + Solarpotential-Layer (kantonales Pendant zu sonnendach.ch) → Ergaenzung
[[kartenportale-geoportale-uebersicht]]. **K58** Stadt-Luzern-GIS-Kundendienst-Kontakt + CityMap/
Landschaftsmodell-URLs; zwei Dateien bestaetigt als Doppelfund zu K53/K43. Praezisierung
`geoportal.ch/ktzg` = kantonal Zug. **E45** Korrektur zu E44 (Run 63): Tippfehler im Dateinamen
(«Solararchitekur») hatte das vollstaendige TEC21-Dossier «Solares Bauen» vor dem Scout-Grep
verborgen — acht weitere Referenzbauten (Swiss Tech Convention Center EPFL/Graetzel-Zellen,
deltaZero Lugano, Sihlweid Zuerich, Romanshorn TG, CeRN Bursins, Kunstdepot Freiburg, 3M Pioltello,
Flims GR) → NEU §5b [[energie-pv-eignung-typenwahl]]. Report: `outputs/2026-07-25_training-run65.md`.

## 2026-07-25 — Training Run 64 (Recht & Norm + Brandschutz, Token-Vollgas): vier Cloud-Only-Ordner erstmals materialisiert, Sehbehinderten-Dimension neu
Rotation zurueck auf Recht & Norm (PL-02) + Brandschutz (PL-03) (Run 63 hatte Kartenportale+
Energie). Delta-Scan: keine neuen Dateien. Scout-Abgleich (Top-Level-Ordnerliste PL-02/PL-03
gegen curriculum.md/_INGESTED.md) findet vier bisher nie erschlossene Kleinst-Ordner unter
`06_Richtlinien/` (`_Kanton Basel`, `VSA`, `BKZ`, `SWKI`, 9 Dateien) — alle **cloud-only** (0
Byte, `mdls` liefert keine Seitenzahl) und dadurch fuer alle 63 Vorlaeufe unsichtbar; `cp`
materialisiert sie zuverlaessig (neue Lehre fuer kuenftige Scout-Laeufe, dokumentiert in
QUESTIONS.md B). Vier Funde eingearbeitet: **R64** Richtlinie Bueroausstattung Kt.
Basel-Landschaft (12 Flaechenmodelle, CHF 7'500/AP) → NEU §7
[[recht-norm-raumprogramm-referenzwerke]]. **R65** VSA-Aufzugsnormenregister SIA-370/SN-EN-81 +
ESBA Kt. ZH (Bestandsaufzug-Nachruestpflicht) + SNEL (74 Gefaehrdungspunkte, nur ZH/GE/GL
gesetzlich) → NEU §2b [[recht-norm-hindernisfreies-bauen-zh]], schliesst offenen
QUESTIONS-Punkt SN-EN-81-70. **R66** BKZ-Checkliste + Sehbehinderten-Merkblatt 13/05 +
ZHB-Handbuch — komplett neue Sehbehinderten-/Hoerbehinderten-Dimension (bisher nur
Mobilitaetsbehinderte dokumentiert) + vierstufige Begriffsleiter absolute Barriere/relative
Hindernis/anpassbar/behindertengerecht → NEU §3b [[recht-norm-hindernisfreies-bauen-zh]].
**R67** SWKI VA103-01:2017 Parkhaus-Lueftung (CO-Grenzwerte, Einschaltwerte,
exponiert/geschuetzt-Geschossbewertung) → NEU §8 [[recht-norm-tiefgarage-erschliessung]],
bisher fehlende TGA-Dimension. Brandschutz (PL-03): kein neuer Fund, alle Top-Level-Ordner
bereits erfasst. Details: `outputs/2026-07-25_training-run64.md`.

## 2026-07-25 — Training Run 63 (Kartenportale + Energie, Token-Vollgas): Kt.-LU-Vertiefung, beide Domaenen vollstaendig ausgeschoepft
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04) (Run 62 hatte Recht/Norm+Brandschutz).
Delta-Scan beider PL-Ordner: keine neuen Dateien. Da beide Domaenen laut Register ohne bekannten
Backlog-Punkt waren, Scout-Agent (Vordergrund, reiner Ordner-/Registerabgleich) beauftragt: fand
7 echte unerschlossene Fundstellen in PL-01 (Kt.-LU-Cluster) + 1 in PL-04.
- **K47-K54 (Kartenportale, Kt.-LU-Vertiefung):** Einzelbaeume = kantonsweites offen lizenziertes
  Baumkataster-Produkt (praezisiert K12: Kt. LU ist die belegte Ausnahme zu ZH/SZ); Historische
  Karten = amtliches Zeitschieber-WebGIS 1845-2017 (Ergaenzung zum privaten Weg achtgradost.ch);
  Baugesuchsverwaltung eBAGE+/GRAVIS = kantonales Pendant zu eBau SZ; Leitungen digital =
  Werkleitungsbezug ueber Vereins-/Mitgliedschaftsmodell «Verein Raumdatenpool Kanton Luzern»
  (Organisationsmodell-Delta zum ZH-Betreibermuster); Hoehenlinien-DXF-Lieferbeleg (Formattabelle-
  Ergaenzung K8); Nachfuehrung amtliche Vermessung ueber konzessionierte private Geometer (Emch+
  Berger-Beleg); reale JANS-Arbeitsnotiz Baumwurzelwerk/Fundamentplanung (Tiefbauamt Stadt Luzern,
  drei Wurzeltypen); Grenzen-Kategorie bestaetigter Nicht-Fund → [[kartenportale-geoportale-uebersicht]]
  §Baumkataster + neuer Abschnitt «Kt.-LU-Vertiefung».
- **E44 (Energie):** letzte Restdatei `_Heizwaermebedarf/` gelesen, bestaetigter Nicht-Fund
  (Duplikat Tab. 24/25) → [[energie-heizwaermebedarf-waermeerzeugerleistung]]. Ordner vollstaendig
  ausgewertet.
- **Bilanz:** 8 Quellen + 1 Scout-Vorlauf = 9 Punkte (unterer Rand 10-16, da beide Domaenen nach
  46/43 Curriculum-Lektionen ueber 62 Laeufe extrem ausgeschoepft sind — bewusst keine
  Pseudo-Fragen erzeugt). Beide Domaenen nun ohne jeden bekannten Datei-Backlog; einziger offener
  Punkt bleibt D9 (realer MFH-/ZEV-Fall, wartet auf reales Projekt). Details: `outputs/2026-07-25_training-run63.md`.

## 2026-07-25 — Training Run 62 (Recht/Norm + Brandschutz, Token-Vollgas): §9-Rest-Backlog vollstaendig geschlossen
Rotation zurueck auf Recht/Norm (PL-02) + Brandschutz (PL-03) (Run 61 hatte Kartenportale/Energie).
Direkt in der Hauptsession (OneDrive-Lehre Run 56). Delta-Scan beider PL-Ordner: keine neuen Dateien.
- **R62/R63 (Recht/Norm, groesster Fund):** der seit Run 45/52 als niedrige Prioritaet gefuehrte
  §9-Rest-Backlog des «Projektadmin AHB»-Ordners (12 Nachhaltiges-Bauen-Einzelmerkblaetter + 4
  GT-Kleinrichtlinien) vollstaendig gelesen und abgearbeitet. Durchweg historische 2005-2009-
  Grundlagenpapiere ohne Kernzahlen-Delta zur bereits dokumentierten Substanz — Ausnahme:
  Dachbegruenungs-Checkliste liefert NEU die Rechtsgrundlage **BZO Art. 11 Abs. 1** + eine
  PV-Dachbegruenungs-Kombinationsregel. Zwei technische Randfaelle dokumentiert: Bauteilkatalog.pdf
  = reiner URL-Verweis (Nicht-Fund), Elektrosmog-Merkblatt technisch nicht lesbar (defekte PDF-
  Zeichenkodierung), UKV-Teilrichtlinien im Ordner nicht mehr auffindbar (Nicht-Fund) → NEU §19/§20
  [[recht-norm-ahb-stadt-zuerich-projektstandards]]. **Der zehnteilige AHB-Ordner hat damit keine
  offenen Backlog-Punkte mehr.**
- **R6/B5-Refresh:** RPG-2-ZH-Umsetzungsstand (PBG/Richtplan weiterhin ohne Fertigstellungsdatum)
  und BSV-2026-Terminplan (politische Vernehmlassung weiterhin 08/2026) per WebSearch erneut
  geprueft — beide unveraendert bestaetigt, kein Delta seit Run 58/60.
- Bericht: `outputs/2026-07-25_training-run62.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): 2 Faktenkorrekturen + Ausgaben-Flag Regenwasser
- **EN-102-Normbasis korrigiert (BESTAETIGT am Original-PDF):** `wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md:172` und `wiki/energie-uebersicht.md:33` fuehrten «EnFK EN-102 Dez. 2018, Basis SIA 380/1:**2009**». Die Kopfzeile jeder Seite des PDF nennt «Ausgabe Dezember 2018 (Basis: Norm SIA 380/1, Ausgabe **2016**)» — Ursache war der irrefuehrende SharePoint-Dateiname `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf`. Beide Stellen korrigiert, Fallstrick dokumentiert, Verweis auf das fuehrende Destillat der KB `energie` gesetzt. Die Grenzwerte (0,17 / 1,0 / 0,25 Umbau) waren richtig und bleiben unveraendert.
- **Versickerungspflicht korrigiert (Rechtsfehler, amtlich verifiziert):** `wiki/recht-norm-regenwasser-gewaesserraum-zh.md` schrieb, nicht verschmutztes Regenwasser muesse nach Art. 7 GSchG **nicht** versickert werden. Das kehrt die gesetzliche Regel um: nach **Art. 7 Abs. 2 GSchG** (SR 814.20, Fedlex-Konsolidierung 01.02.2023) ist die Versickerung der Regelfall, Einleitung/ARA sind die Ausnahmen der Kaskade. Wortlaut korrigiert, Fundstelle ergaenzt.
- **Ausgaben-Flag AWEL-Richtlinie:** Teil A ist aus der Ausgabe 2005/V2.2 Maerz 2006 destilliert; die BBV I (LS 700.21, Anhang anerkannte Regeln der Baukunde) verweist auf die Ausgabe **2025** («Regenwasserbewirtschaftung»). ⚠-Flag gesetzt, «VSA-Richtlinie Regenwasserentsorgung 2002» auf die Nachfolge «Abwasserbewirtschaftung bei Regenwetter» (2019) nachgefuehrt. Kein Trim.
- **Cross-Links gesetzt:** ↔ KB energie (`regenwasserbewirtschaftung-versickerung-zh`, bidirektional) · `recht-norm-ivhb-baubegriffe` und `recht-norm-pbg-revision-bauen-im-bestand` → KB baurecht (Recht fuehrend; der IVHB-Leitfaden bedient den offenen Fassungs-Punkt `baurecht/wiki/QUESTIONS.md`).
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Training Run 61 (Kartenportale + Energie, Token-Vollgas)
Rotation zurueck auf Kartenportale (PL-01) + Energie (PL-04), die zwei Prioritaets-Domaenen.
Direkt in der Hauptsession (OneDrive-Lehre Run 56). 12 bearbeitete Fragen/Fundstellen.
- **K46-Nachtrag (Kartenportale, Backlog vollstaendig geschlossen):** der seit Run 59 bestehende
  OneDrive-EDEADLK-Blocker auf vier Fundstellen hatte sich aufgeloest. `cadastre.ch` bestaetigter
  Nicht-Fund. `geoportal.ch/Einsiedeln`: Service-Desk-Kontakt GEOINFO Applications AG (Jira,
  Tel. 058 580 40 60) + **Korrektur/Praezisierung** der K27-«Infrastruktur»-Druckfunktion des
  Bezirks-GIS `gis.bezirkeinsiedeln.ch` — traegt den echten Produkttitel «Leitungskataster Gde»
  mit 7-Sparten-Legende, ausdruecklich getrennt vom `geoportal.ch`-Portal selbst (fuehrt laut
  Service-Desk KEINEN Leitungskataster fuer Einsiedeln). `geodienste.ch/Maur` bestaetigt A4/K33
  an einem weiteren ZH-Realfall. `KtLU Geodatenshop`: Portal-Kontakt rawi Kt. Luzern
  (`daten.geo.lu.ch`) gefunden → [[kartenportale-geoportale-uebersicht]] +
  [[kartenportale-werkleitungskataster]] §7.
- **E42/E43 (Energie):** Run-53-EDEADLK-Backlog geschlossen (zwei bareURL-Nicht-Funde + eine
  fragmentarische JANS-Notiz, nicht uebernommen). `U Wert berechnung/`-Restdateien vollstaendig
  ausgewertet: SIA-Merkblatt 2001 Waermedaemmstoffe (⚠ Nennwerte historisch, nur bis 31.12.2006
  bestaetigt; methodische Definitionen bleiben gueltig), JANS-Notiz reale Daemmstoffwahl
  (Flumroc), Enerhaus-380/1-Anwenderkurs-Musterformular (Formularstruktur-Vorlage) → NEU §6
  [[energie-heizwaermebedarf-waermeerzeugerleistung]].
- **E5/E9-Refresh:** MuKEn-2025-ZH-Umsetzung erneut per WebSearch geprueft, unveraendert
  bestaetigt.
- Register nachgefuehrt: `curriculum.md` (K46-Nachtrag, E42, E43, E5/E9-Refresh), `wiki/QUESTIONS.md`
  (K46-Backlog geschlossen), `raw/_INGESTED.md` (4 neue Zeilen). Details:
  `outputs/2026-07-25_training-run61.md`.

## 2026-07-25 — Training Run 60 (Recht/Norm + Brandschutz, Token-Vollgas)
Rotation turnusgemaess auf Recht/Norm (PL-02) + Brandschutz (PL-03) — Kartenportale/Energie
hatten Run 59 bereits. Direkt in der Hauptsession (OneDrive-Lehre Run 56).
- **R61 (Recht/Norm, groesster Fund):** letzter offener R59-Backlog-Punkt geloest — der seit
  Run 52 (18.07.) bestehende OneDrive-Lock auf `09-Projektdokumentation/` +
  `10-Projektablauf/10.6-Projektabschluss/` hatte sich aufgeloest (Sync-Timing, analog
  Naturgefahren-/Lignum-Praezedenzfall). Vier Dateien vollstaendig gelesen: PAB 2.16.R
  Gliederungsrichtlinie fuer Projektdokumentationen (7 Kapitel, Kennzahl CHF/Kranken- oder
  Altersheimbett), reale Muster-Fallstudie Instandsetzung Schulanlage Doeltschi (Leutwyler
  Partner Architekten 2008, Gesamtanlagekosten 20.68 Mio. CHF, Minergie-Umbaustandard-Verzicht-
  Grundsatz), reale BKP-1-9-Kostengliederung als Zahlenbeispiel (KV.xls), amtliches Stadt-ZH-
  SIA-118-Abnahmeprotokoll-Formular → NEU §18 [[recht-norm-ahb-stadt-zuerich-projektstandards]].
  Der zehnteilige «Projektadmin AHB»-Ordner ist damit **vollstaendig ausgewertet**.
- **B46/C38 (Brandschutz):** `Brandschutznachweis_MFH-5g-RF1_V.2_-_ohne_Logo.docx` erstmals
  vollstaendig gelesen (bisher nur als Existenz-Verweis gefuehrt) — reales ausformuliertes
  MFH-Beispiel mit Feuerwiderstands-Matrix (R60/REI60/EI60/EI30, REI60-RF1 Fluchtweg vertikal)
  und WDVS-Brandriegel-Ausfuehrungsdetail, bestaetigt die bereits dokumentierte BSR-14-15-Pflicht
  (§5ad) am realen Beispiel → Ergaenzung §2 [[brandschutz-pl03-wegweiser]].
- **Refresh (kein Delta):** BSV-2026-Terminplan erneut per WebSearch+WebFetch geprueft — Stand
  unveraendert seit Run 58 (24.07.).
- **Delta-Scan ohne Fund:** PL-01/PL-03 auf kuerzlich geaenderte Dateien geprueft (`find
  -newermt`) — keine neuen Dateien seit dem letzten Lauf.
- Register nachgefuehrt: `curriculum.md` (R61 + B46 neu), `wiki/QUESTIONS.md` (B/C-Sektion),
  `raw/_INGESTED.md` (4 neue Zeilen), `wiki/INDEX.md` (beide Eintraege ergaenzt).

## 2026-07-25 (05:30) — Nachtschicht Mac Mini: Wissens-Health-Check (Phase 1)
Dispatch-Prioritaeten 1-4 heute Nacht bereits erschoepft (Sync-Queues leer, Synobsis idle,
energie+planungsgrundlagen-Training + normen DIN/VSS/RAL bereits gelaufen). Deterministischer
Health-Check per grep/Skript (Kontext-Diaet) statt Volltext-Lektuere aller 40 Artikel, da diese
KB (aeltestes Audit-Datum unter den Mac-Mini-Scope-KBs, 21.07.) faellig war.
- **Top-Fund:** KB-weiter Umlaut-Ersatzschreibungs-Befund (ae/oe/ue statt ä/ö/ü) in praktisch
  allen 40 Wiki-Artikeln, auch im heute neu verfassten `[[energie-pv-eignung-typenwahl]]` —
  deutlich groesser als der punktuelle Befund bei `architekten-synobsis`. Als `QUESTIONS.md` M4
  festgehalten, NICHT selbst gefixt (Blind-Ersetzung riskant, braucht beaufsichtigten
  `korrektur`-Lauf).
- Weitere Funde: 2 Artikel ohne YAML-Frontmatter (inline `**Status:**`-Stil), 2 echte
  Coverage-Luecken (`[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`,
  `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]`), 0 Orphans, 0 Widersprueche in der Stichprobe,
  QUESTIONS.md-Backlog fast leer (91/92 Punkte geschlossen).
- Report `outputs/2026-07-25_health-check.md`, `wiki/QUESTIONS.md` (M4 neu). Kein Versand, keine
  Publikation, keine Buchung, keine destruktive Aenderung.

## 2026-07-25 — Training Run 59 (Kartenportale + Energie, Token-Vollgas, OneDrive-Blocker-Lauf)
- **NEU [[kartenportale-geoportale-uebersicht]]:** `geoportal.ch`-Betreiber identifiziert als
  **GEOINFO Applications AG** (Herisau AR) — vierter White-Label-GIS-Anbieter neben
  achtgradost.ch/geoglatt.ch/Stadt Luzern; bestaetigt zugleich den bestehenden
  Werkleitungs-Verweis EW Lachen AG ([[kartenportale-werkleitungskataster]] §7).
- **Ergaenzung [[energie-pv-eignung-typenwahl]] §3b:** Delta-Check der Kandidaten `pv sol
  premium`/`solarapp.ch`/`energieschweiz.ch Diemtigen` bestaetigt: bereits vollstaendig als
  E34/E37/E38 (Run 40/42) dokumentiert, kein neuer Kern-Fakt. Echter Zusatzfund: marken-/
  positionskonkrete Richtpreis-Stueckliste MFH Basel (Swiss Premium M340-Module/Growatt-
  Wechselrichter/LEVEL-Unterkonstruktion, CHF 86'815 Material) — erste Herstellerpositions-BOM
  in dieser KB, LV-relevant BKP 230/232.
- **Refresh E5/E9:** MuKEn-2025-ZH-Ueberfuehrung per WebSearch erneut unveraendert bestaetigt
  (weiterhin keine ZH-spezifische Vernehmlassung/kein Termin auffindbar).
- **Systemischer OneDrive-Blocker** (identisches `EDEADLK`/"Resource deadlock avoided"-Muster
  wie Run 53, 2026-07-19): grosse Teile von `CH Schweiz/` (`cadastre.ch`, `geoportal.ch/
  Einsiedeln/*.pdf`, `geodienste.ch/Maur+Thalwil/*.eml`) sowie der gesamte `KtLU Luzern/
  Geodatenshop Kanton Luzern/`-Ordner (reicher Produktkatalog mit realer Bestellung
  R694081564, bisher nur als "Kurzprofil/niedrige Prioritaet" gefuehrt) blieben trotz
  mehrfacher Retries und `cp`/`pdftotext`/`textutil`-Alternativversuchen unlesbar — als
  Kandidat fuer den naechsten Kartenportale-Turnus vorgemerkt statt erzwungen/erfunden
  (Leitplanke "nie erfinden", PROGRAMM.md).
- Register nachgefuehrt: `training/curriculum.md` (K46 neu, E5-Refresh, E41 neu),
  `wiki/QUESTIONS.md` (A/K46, D/E41), `raw/_INGESTED.md` (2 Zeilen), `wiki/INDEX.md` (2
  Eintraege). Bericht: `outputs/2026-07-25_training-run59.md`.

## 2026-07-24 — Wissens-Chef Run 14 (Cross-KB): reziproke Laerm/ES-Rueckverweise zur KB baurecht
- [link] `wiki/kartenportale-zonenplan-zh.md` (Layer-0154-Sektion): Querbezug zur KB baurecht gesetzt
  (Recht/ES-Grenzwerte dort fuehrend: `laermschutz-und-nichtionisierende-strahlung`); hier bleibt die
  Beschaffung fuehrend. Reziprok zum baurecht-Block.
- [link] `wiki/energie-baueingabe-zusatzformulare.md`: die materiell nachgeschriebene ES-Definition
  (milde Doppelspur) mit Recht-fuehrend-Rueckverweis auf baurecht versehen; der ⚠-Vorbehalt LSV-Novelle
  01.04.2026 ist jetzt in `baurecht/wiki/QUESTIONS.md` als needs-verification gespiegelt.

## 2026-07-24 (21:30) — Nachtschicht Mac Mini: QUESTIONS-Punkt D9 (Teilaspekt) geschlossen
Dispatch-Prioritaet 5 (offene QUESTIONS.md recherchieren/kompilieren). Sync-/Remote-Queues leer,
Trainingsfenster 22:00-06:00 noch nicht erreicht, energie-KB-Luecken alle gross/blockiert
(Raphael-Entscheid noetig) oder Budget-inkompatibel (grosse Agent-Fan-outs) — daher den einzigen
offenen planungsgrundlagen-Punkt D9 (Teilaspekt Steuerabzug) genommen.
- **NEU [[steuerabzug-energetische-sanierung-zh-sz]]:** eigenstaendige Rechtsgrundlagen-Herleitung
  des kantonalen Steuerabzugs energetische Sanierung — Primaerquellen ZStB 30.4 (Kt. ZH,
  § 30 Abs. 2 Satz 2/Abs. 2bis StG) und Schwyzer Steuerbuch 70.20 «Weisung LKPV» vom 18.11.2025
  (§ 32 Abs. 2 Bst. a-c StG SZ, per pdftotext direkt aus dem amtlichen PDF gelesen). Kernpunkte:
  2-Perioden-Verteilung bei hohem Aufwand (ZH+SZ identisch), Pauschalabzug schliesst den
  Spezialabzug aus (nur bei effektiver Abrechnung), 5-Jahres-Sperrfrist fuer Neubauten (SZ explizit
  beziffert), Subventionsverrechnung, sowie SZ-Spezialregelung fuer PV/ZEV-Gemeinschaften (Abzug
  je Miteigentuemer-Investitionsanteil) — beantwortet nebenbei die steuerliche Seite des in D9
  ebenfalls offenen MFH-/ZEV-Falls (reale Kostendaten bleiben dort weiterhin offen).
- `[[energie-betriebsenergie-pv-wirtschaftlichkeit]]` (Offene-Punkte-Sektion) und `INDEX.md`
  verlinkt; `QUESTIONS.md` D9 als teilweise geschlossen markiert (Steuerabzug-Teilaspekt erledigt,
  MFH-/ZEV-Kostendaten bleiben offen, Entscheid Raphael noetig).
- Kein Versand, keine Publikation, keine destruktive Aenderung. Keine Zweitinstanz-Kollision
  (dispatch/log 20260724-203002 inhaltlich gelesen: letzter Lauf schloss firmengruendung-ch ab,
  keine Ueberschneidung).

## 2026-07-24 — Training Run 58 (Recht & Norm + Brandschutz, Token-Vollgas)
- **Registrierungsluecke B42/B43 geschlossen** (kein neuer Fakt): `training/curriculum.md` fuehrte
  beide Punkte weiterhin als Run-52-Blocker, obwohl Run 54 sie bereits vollstaendig geloest hatte
  (§5ao/§5ap in [[brandschutz-pl03-wegweiser]]) — Re-Lektuere bestaetigt beide Abschnitte 1:1,
  reine Konsistenzpflege (analog Run 57).
- **NEU §5aq [[brandschutz-pl03-wegweiser]]:** VKF-Publikation «Allgemein anerkannte Bauprodukte»
  V12.0 (TKB-Beschluss 31.03.2017, `BSPUB-1394520214-251.pdf`, bisher nie katalogisiert) —
  RF1/RF2/RF3-Einstufungstabellen fuer Standard-Baustoffe (Laubholz-Delta: Eiche/Robinie/Teak/Wenge
  RF2, uebrige Laubhoelzer RF3) + Mindestmass-Tabellen (SIA 262/266) fuer Beton-/Mauerwerks-/
  Verputz-/Brandschutzplatten-Bauteile je Feuerwiderstandsdauer 30-240 Min., verwendbar ohne
  Einzel-Pruefnachweis. Vier Delta-Checks bestaetigt praezisieren fruehere Pauschal-Einordnungen
  (Anerkennungsverfahren 28-15de/Brandschutz-Praevention-Duplikat/gege-Herstellerkatalog/
  Merkblatt_012_d-Deckungsgleichheit mit VST-Merkblatt 004), BSPUB-185.pdf als drittes Duplikat der
  Arbeitshilfe 1001-15de Wohnbauten bestaetigt.
- **NEU §5+§6 [[recht-norm-arbeitshilfen-planungsdetails]]:** **Fugenlose Bodenbeläge/Estriche**
  (PAVIDENSA — Fugenplan-Pflicht des Bestellers SIA 251:2008 Art. 2.4.9, Feldgroessen CT 6m/CA 8m,
  Heizestrich-Belastungsprobe max. 50°C Calciumsulfat, direkt LV-relevant BKP 281.1) und
  **Balkone/Laubengaenge-Abdichtung SIA 271/273** (LPM AG/Richard Graf Fachtagung 2010 — realer
  Schadenskatalog + normative Anforderungen, Mindestgefaelle 1,5% ohne Unterschreitungsmoeglichkeit
  bei Balkonen/Terrassen, SIA 273 fuer befahrene Flaechen, ergaenzt
  [[recht-norm-tiefgarage-erschliessung]]).
- Register nachgefuehrt: `training/curriculum.md` (B42/B43-Fix, B45/R58/R59 neu), `wiki/QUESTIONS.md`
  (C37, R58-R59), `raw/_INGESTED.md` (6 Zeilen), `wiki/INDEX.md` (2 Eintraege). Bericht:
  `outputs/2026-07-24_training-run58.md`.

## 2026-07-23 — Wissens-Chef Run 13 (Cross-KB): Erdwaerme-Rueckverweis zur KB energie gesetzt
- [ergaenzt] `wiki/kartenportale-naturgefahren-objektschutz.md` §6c (Erdwaermenutzung): Querbezug KB energie
  gesetzt — Bewilligungsverfahren, Kosten und Systemwahl (Flaechenkollektor/Erdwaermekorb/Energiepfahl vs. Sonde),
  ZH-Zusatzformular «Oberflaechennahe Erdwaerme» (BVV Ziff. 5.6.2) und Anergienetz in
  `wissen/energie/wiki/BAUHERREN-FAQ.md` F108/F110/F109. Reziprok zu den in energie gesetzten Vorwaerts-Links
  (energie F110/F109 → pg §6c/§8b bzw. geoportale-uebersicht). Rollenteilung fixiert: pg = beschaffbare
  Eignungsgrundlage (GIS-Layer), energie = Physik/Verfahren/Kennwerte. Cross-KB Run 13.

## 2026-07-23 — Training Run 57 (Registerpflege, Mac Mini Nachtschicht): stale "GIS-Layer-Endpunkt offen"-Flags bereinigt
- [korrektur] `wiki/kartenportale-naturgefahren-objektschutz.md` §7b + §8 (Offene Punkte): beide
  Stellen fuehrten den ZH-Naturgefahren-GIS-Endpunkt weiterhin als "offen", obwohl §8a (Run 54,
  2026-07-20) die Loesung bereits enthielt (`maps.zh.ch/wfs/OGDZHWFS`, Layer
  `ms:ogd-0044_giszhpub_wb_hw_gk_f` / `_wb_syn_gk_f`, login-frei, im Connector als
  `geo-zh.mjs --produkt naturgefahren`). Reine Registerpflege-Luecke (Run 54 hat die frueheren
  Abschnitte nicht rueckwirkend nachgezogen) — kein neuer Rechercheaufwand, kein neuer Fund.
  `last_updated` auf 2026-07-23 gesetzt.
- [korrektur] `wiki/QUESTIONS.md` R36-R38-Eintrag und `training/curriculum.md` R37-Eintrag
  entsprechend nachgezogen (GELOEST-Vermerk statt "bleibt offen").
- Anlass: Durchsicht der Mac-Mini-Domaenen (energie/planungsgrundlagen/synobsis) fuer die
  faellige Nachtschicht-Trainingslektion; Synobsis Stufe 2 zum 11. Mal leer, energie bereits
  heute (Run 84) trainiert — stattdessen diese konkrete, kleine Konsistenzluecke geschlossen.
  Bericht: `outputs/2026-07-23_training-run57-registerpflege.md`.

## 2026-07-22 — Wissens-Chef Run 12 (Cross-KB): § 22 WWG Inline-Flag + CLT-Querlink zu energie
- [veraltet] `wiki/kartenportale-naturgefahren-objektschutz.md` Z.407: die § 22 WWG-Bullet las sich
  isoliert wie geltendes Recht (der Aufhebungs-Flag stand ~14 Zeilen darüber im Blockquote). Inline-
  Kurzflag «WWG per 1.6.2026 aufgehoben, Nachfolge WsG/WsV» direkt an der Bullet ergänzt.
- [link] `wiki/energie-uebersicht.md` (CLT-Abschnitt): Querbezug auf das führende energie-Fachphysik-
  Destillat `wissen/energie/destillate/clt-bauphysik-stora-enso` gesetzt (beide destillieren dieselbe
  Stora-Enso-Doku; Fachphysik-Führung = energie, hier nur planungsrelevantes Delta).
- Offen (nicht autonom, gemeldet): (a) § 22 WWG Gefahrenbereiche — die als führend benannte KB baurecht
  führt diese Recht-Frage gar nicht (Bring-Schuld/Dangling-Delegation); (b) GSchV-41a/41b-Bemessungs-
  Doppelspur baurecht↔pg weiter offen (Trim = Umstrukturierung, seit Run 7/8); (c) Private-Kontrolle-
  Rollen-Trim energie↔pg weiter offen. Bericht: `wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-22 — Umlaut-Bug (ASCII-Ersatzschreibung in Haiku/Sonnet-Subagenten-Outputs) bestätigt betroffen
Cross-KB-Verifikation (Nachtschicht Mac Mini ~19:00, ausgehend von der KB baurecht): die
"Minimum Viable Model"-Subagenten-Delegation seit 19.07. gibt die Umlaut-Regel nicht an
den Subagenten weiter — auch in `planungsgrundlagen` empirisch nachgewiesen (mehrere
Runs 19.-22.07. mit "fuer/erlaeuterndem/moeglicherweise/ueberbauungsordnung"). Voller
Befund + vorgeschlagener Fix: `wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`.

## 2026-07-22 — Training Run 56 (Kartenportale + Energie, Token-Vollgas + Register-Nachtrag)
- **Registrierungs-Luecke geschlossen:** der Wiki-Artikel `kartenportale-naturgefahren-objektschutz.md`
  und der Connector `geo-sz.mjs` enthielten bereits einen vollstaendig geloesten SZ-Naturgefahren-
  Endpunkt (Datei-interner Vermerk «Run 55, 2026-07-21» — via opendata.swiss CKAN-API gefunden,
  WFS 1.1.0 `map.geo.sz.ch/mapserv_proxy`, live verifiziert Reckholdernstrasse 20 Willerzell +
  Negativkontrolle Wangen SZ), der aber **nie** in curriculum.md/QUESTIONS.md/CHANGELOG.md/outputs/
  registriert wurde. Retroaktiv als K45 in curriculum.md nachgetragen — kein neuer Recherche-Fund
  dieses Laufs, sondern Konsolidierung eines bereits vorhandenen, aber verwaisten Ergebnisses.
- **D9 (Energie, aelteste offene Frage) erneut geprueft:** `_Betriebsenergie`-Ordner vollstaendig
  neu gelesen (alle 15 Bilddateien) — enthaelt weiterhin nur den bereits dokumentierten EFH-Fall,
  kein MFH-/ZEV-Material. Luecke bleibt in QUESTIONS.md bestaetigt offen.
- **Selbstkorrektur waehrend des Laufs:** ein neuer Artikel `energie-clt-brettsperrholz-
  waermeschutz.md` wurde angelegt (Stora-Enso-CLT-Bauphysik + Fallbeispiel Biwak Grassen), dann
  als Doppelspur zu `energie-uebersicht.md` §U-Wert erkannt (dieselbe Quelle war bereits Run 25/
  E13-E14 ausgewertet) — Artikel geloescht, nur der genuine Delta-Wert (vollstaendige U-Wert-
  Vergleichstabelle S.10-11 + Beleg-Delta-Hinweis λ=0.13 vs. 0.12) in den bestehenden Artikel
  nachgetragen. Lehre in curriculum.md E41 festgehalten.
- **Infrastruktur-Befunde (kein KB-Inhalt, aber relevant fuer kuenftige Laeufe):** (1) die
  Delegation an die Fach-Agenten `geodaten-beschaffer`/`energie-berater` via Agent-Tool brach beide
  Male nach dem ersten Read-Aufruf ab (0 protokollierte Tool-Aufrufe) — Ursache nicht abschliessend
  geklaert, vermutlich ein Sandbox-/Berechtigungsproblem bei Hintergrund-Subagenten auf den
  OneDrive-Pfad; der Lauf wurde daher direkt in der Hauptsession statt per Fan-out durchgefuehrt,
  was den Umfang gegenueber dem Token-Vollgas-Zielkorridor (10-16 Fragen) auf real bearbeitete
  Punkte reduziert hat. (2) `git status`/`git log` auf dem NAS-Repo (`/Volumes/daten/jans-ai-hub`)
  haengt zuverlaessig >90s über den SMB-Mount — bestaetigt die bestehende Warnung in Rule
  `sync-kanonische-quelle.md`; Commit/Push dieses Laufs erfolgt daher **nicht** manuell aus dieser
  Session, sondern ueber den nativen NAS-Cron `nas-selfcommit.sh` (laeuft alle 15 Min direkt auf
  der Synology, siehe Memory `projekt_nas_selfcommit_verhalten`).
- Bericht: `outputs/2026-07-22_training-run56.md`.

## 2026-07-21 — Wissens-Chef Run 11 (Cross-KB): Private-Kontrolle-Querbezug zu KB energie
- Cross-KB-Lauf energie ↔ planungsgrundlagen (Run 11). **wiki/energie-private-kontrolle-zh.md:** parallel
  geführtes energie-Destillat `wissen/energie/destillate/private-kontrolle-zh` verlinkt (bisher kein
  gegenseitiger Verweis, obwohl beide dasselbe AWEL-Merkblatt destillieren). pg bleibt führend für das
  Verfahren (Rollen-Matrix), energie hält den Quellstand. Rollen-TRIM (Substanz zusammenführen) nicht
  autonom — als offener Struktur-Punkt im Run-11-Bericht.
- WP-Weichen (innen/aussen/Erdsonde) in `energie-baueingabe-zusatzformulare.md` bereits in korrigierter
  Fassung, deckungsgleich mit dem energie-BVV-Destillat (Run-10-Fix hält) — 0 Widerspruch.

## 2026-07-21 — Root-Cause zum Umlaut-Befund gefunden + Infra-Fix (Mac Mini Nachtschicht)
Die drei heutigen Wissenscheck-Audits (energie, planungsgrundlagen, architekten-synobsis)
fanden alle dasselbe Muster: flaechendeckende ae/oe/ue-Ersatzschreibungen statt echter
Umlaute, quer durch praktisch alle Wiki-Artikel — kein Einzelfehler. Ursache identifiziert:
die launchd-Jobs, die diese drei KBs trainieren (`ch.jans.training-energie`,
`ch.jans.training-plg`, `ch.jans.synobsis-batch`, alle ueber `scripts/dispatch-run.sh`),
laufen ohne interaktives Login-Profil in der POSIX-"C"-Locale (`LANG=""`, `LC_CTYPE=C`)
statt einer UTF-8-Locale. Fix: `scripts/dispatch-run.sh` erzwingt jetzt `LANG=de_CH.UTF-8` /
`LC_ALL=de_CH.UTF-8` im Abschnitt "Locale abhaerten" (analog zum bestehenden PATH-Haerten).
Bestehende ae/oe/ue-Stellen in den Wiki-Artikeln sind davon nicht betroffen (Phase 2/Korrektur
bleibt interaktiv) — der Fix verhindert nur neue Faelle ab dem naechsten Trainingslauf.

## 2026-07-21 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Audit nach 20 Tagen (aeltester unter Mac-Mini-KBs). Top-Finding: Umlaut-Konvention in 39 von
48 Wiki-Artikeln verletzt (fuer/ueber/moeglich/... statt ä/ö/ü) — deckt sich mit dem identischen
Befund heute Nacht in KB `energie`, moeglicherweise gemeinsame Ursache im Trainings-Loop.
Weitere Funde: 2 durch Zeilenumbruch zerbrochene `[[...]]`-Backlinks, 2 Artikel fehlen im
INDEX.md, 1 Artikel ohne Frontmatter (`kartenportale-sharepoint-ablage.md`), 10 emerging-Artikel
als Promotion-Kandidaten fuer den naechsten Trainingslauf. Keine Widersprueche, keine
RAW-Coverage-Luecken, keine veralteten Artikel gefunden (Audits A/C nicht erschoepfend,
Budget-Disziplin). Nichts selbst korrigiert (Phase 2 nur interaktiv). Report:
`outputs/2026-07-21_health-check.md`.

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): WTA-Artikel auf § 2a-BVV-Rechtsgrundlage verlinkt
- [link] `wiki/energie-baueingabe-zusatzformulare.md`: Querbezug-Block «KB energie» im WTA-Abschnitt —
  die Verfahrensweiche für Wärmepumpen (Melde-/Anzeige-/ordentliches Verfahren) zeigt jetzt auf die
  energie-Rechtsgrundlage § 2a BVV (`bvv-zh-meldeverfahren-klimaanlagen-waermepumpen`). Schliesst die
  im Cross-KB-Audit gefundene Führungslücke (verfahrensführende KB ohne Link auf die Erlassgrundlage);
  dieser Artikel bleibt führend für Formular/Verfahrensablauf. 0 Widerspruch, 0 Doppelspur.
  Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Training Run 54 (Brandschutz + Kartenportale, Token-Vollgas)
- **Blocker aus Run 53 aufgeloest:** OneDrive-Mount wieder normal lesbar (Lesbarkeits-Test ueber
  alle vier PL-Ordner als erste Handlung, wie von Run 53 empfohlen). Dadurch liessen sich die seit
  Run 50/52 rein technisch blockierten Kandidaten in einem Zug abarbeiten. `EDEADLK` bestaetigt
  sich zum dritten Mal als voruebergehendes Sync-Timing-Problem, nicht als Recherche-Befund.
- **NEU §5ao [[brandschutz-pl03-wegweiser]] (B42/C36 geschlossen):** Feuerwehrplan-Zusatzvariante
  «Stoerfall ABC-Objekt» volltextlich ausgewertet (8 PDF) — 9 Delta-Elemente ggue. Standardsatz
  (Lagerliste mit UN-/CAS-Nr., ABC-Rubrik + Sofortmassnahmen, Gefahrentafel-/Ex-Zonen-Symbolik,
  Oekologieplan mit Notabsperr-Schiebern + ARA-Fliesszeiten, Loeschwasserrueckhalt,
  Emulsionsspaltanlage, PV-Abschaltsymbole, erweiterter Verteiler). **Kernbefund fuer JANS:** drei
  davon sind bauliche Anlagen mit UG-Volumenbedarf → die StFV-Frage gehoert in die Grundlagenphase
  jeder Machbarkeits-/Volumenstudie fuer Produktions-/Lagernutzungen.
- **NEU §5ap [[brandschutz-pl03-wegweiser]] (B43/C36 geschlossen):** `z_Administration/` als reine
  kaufmaennische Belege **verifiziert** (keine Normenliste). Nebenbefund Bezugsweg BSV ueber
  Vorschriftenversand Kant. Feuerpolizei/GVZ inkl. Aktualisierungs-Abo fuer den ZH-Zusatzteil
  (⚠ Stand 2014/2015). Personendaten Dritter bewusst nicht uebernommen (Praxis wie K31/K33).
- **NEU §8a [[kartenportale-naturgefahren-objektschutz]] (K35, seit Run 22 offen):** ZH-Naturgefahren-
  Endpunkt gefunden — liegt im bekannten OGDZHWFS unter AWEL-Themengruppe **44 «Gewaesser»**, nicht
  unter «Naturgefahr»; deshalb blieben fuenf Stichwort-Suchen erfolglos. Layer 44.13/44.2/44.7 +
  Kartierungsstand 44.1, Stufen 1-4. Eigenstaendig nachverifiziert (200 Flaechen, volle
  Stufenverteilung). Zwei Fehlinterpretations-Fallen explizit dokumentiert.
- **§8b [[kartenportale-naturgefahren-objektschutz]] (K36):** Grundwasserschutzzonen von **emerging
  auf established** gehoben — Positiv-Benchmark nachgeholt (bisher nur 0-Treffer, was
  «funktioniert» und «liefert stumm nichts» nicht unterscheidet). Codeliste S1/S2(a-c)/S3(a)/
  Spezialzone empirisch belegt; Klartext-Inkonsistenz im Areal-Layer vermerkt.
- **Connector `geo-zh.mjs`:** zwei neue Produkte `--produkt naturgefahren` und `--produkt
  grundwasser`, beide vor der Dokumentation live getestet (Positiv- + Negativfall). Grundwasser-
  Ausgabe zonengerecht (S1/S2/S3 haben verschiedene Bauwirkung — erste Fassung gab pauschal den
  S1/S2-Hinweis auch bei S3 aus, korrigiert). Regression zonenplan/baulinien gruen
  (Giebelweg 12: 116.2/105.6 m · Seuzach: 29.8 m unveraendert).
- **[[kartenportale-grundlagen-checkliste-neue-parzelle]]:** beide Pruefungen als Querschnitt-
  Schritte aufgenommen; stale «ZH-Naturgefahren noch nicht kartiert»-Notiz bereinigt.
- Register nachgefuehrt: `raw/_INGESTED.md` (4 Zeilen), `training/curriculum.md` (B42/B43 [x],
  K35/K36 neu), `wiki/QUESTIONS.md` (C36 geschlossen). Report:
  `outputs/2026-07-20_training-run54.md`.
- **Hinweis fuer die Steuerung:** das Curriculum hat nach diesem Lauf **keine offenen
  `[ ]`-Lektionen** mehr — naechste Laeufe ziehen aus QUESTIONS.md/Delta-Scans, eine neue
  Curriculum-Staffel waere faellig.

## 2026-07-19 — Training Run 53 (Recht & Norm + Energie, Token-Vollgas, OneDrive-Ausweich-Lauf)
- **Blocker:** der OneDrive-Mount war fuer diesen Lauf **systemisch** durch `EDEADLK` gesperrt —
  betraf auch bereits mehrfach erfolgreich gelesene Referenzdateien (`EN-ZH.pdf`,
  `IVHB_Leitfaden...pdf`), nicht nur die seit Run 52 bekannten Brandschutz-Kandidaten. Lauf
  deshalb auf WebSearch/WebFetch-Refresh-Arbeit umgestellt (PROGRAMM.md Schritt 3a deckt das).
- **NEU [[recht-norm-pbg-revision-bauen-im-bestand]]:** bisher unerfasster Rechtsetzungsstrang —
  PBG-Revision "Erleichtertes Bauen im Bestand", neue Bestimmung **§ 220a E-PBG**
  (Abweichungsanspruch Grenzabstand/Fassadenhoehe/-laenge/Vollgeschosse bei neuen Wohneinheiten
  innerhalb der bestehenden Ausnuetzung) + § 357 E-PBG-Ergaenzung + Streichung Mehrlaengenzuschlag
  ABV §§21/23/24. Primaerquelle (Vorentwurf + erlaeuternder Bericht, RRB 827/2025) via WebFetch
  vollstaendig gelesen. `status: emerging` (Vernehmlassung abgeschlossen, noch kein geltendes Recht).
- **`recht-norm-quellenlandkarte.md`:** LSV-Novelle 01.04.2026 inhaltlich geschlossen (Art. 22
  USG/Art. 31 LSV, KWL als Schallschutzmassnahme) — war seit Run 23 nur als "Details offen"
  gefuehrt. Denkmalschutz-PBG-Revision um RRB-Nr. 678/2026 + Motion/Postulat-Hintergrund ergaenzt.
  **NEU Abschnitt § 49b PBG:** vollstaendig ausgewertet (75 %/650 m²-Quote, UmV 17.09.2025,
  Referendum 14.06.2026 mit 57.14 % angenommen, in Kraft) — schliesst den seit Run 47/48 offenen
  M3-Punkt ab. Veraltete SZ-GFZ/BMZ-Kurzformel im INDEX.md korrigiert (Formel war seit Run 18
  inhaltlich ueberholt, INDEX aber nie nachgezogen).
- **`energie-energienachweis-zh-formulare.md`:** Fehl-Cross-Referenz aus Run 47 korrigiert — der
  § 49b-PBG-Nebenfund war dort weiterhin mit "Parkplatzvorschriften" verknuepft, obwohl Run 48
  den Themenbezug bereits als falsch erkannt hatte (Korrektur hatte diesen Artikel nie erreicht).
  Solarpflicht-Norm-Stelle **§ 10c EnerG** (nicht "§ 10b", wie ein Web-Treffer behauptete) gegen
  den amtlichen Volltext verifiziert — bestehende KB-Kennwerte waren bereits korrekt.
- **`energie-betriebsenergie-pv-wirtschaftlichkeit.md`:** Pronovo-Foerderstruktur-Refresh
  bestaetigt unveraendert; ein unbelegter WebSearch-Nebenfund ("Winterstrombonus ab 01.01.2026")
  gegen die Primaerquelle geprueft und **verworfen** (nicht bestaetigt).
- Bericht: `outputs/2026-07-19_training-run53.md`.

## 2026-07-19 — Wissens-Chef Run 9 (Cross-KB): Fossilfrei-Fundstelle korrigiert, drei Querbezuege gesetzt
- **§ 10a → § 11 Abs. 1 EnerG:** in der Formularmatrix (Zeile Energiebedarf) trug die
  CO₂-frei-Anforderung die falsche Fundstelle. § 10a EnerG ist die Bedarfs-/Effizienznorm, das
  Fossilfrei-Gebot steht in § 11 Abs. 1 EnerG (amtlicher Volltext, KB `baurecht`). Zeile fuehrt
  jetzt beide korrekt getrennt.
- **VHKA-Querbezug gesetzt:** die materielle VHKA-Pflicht ZH/SZ ist kanonisch in
  `energie/destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz` gefuehrt; hier bleibt
  der Formular-/Verfahrensbefund (EN-101c). Das Formularwort «verschaerft» steht weiterhin als Zitat,
  neu mit Pruefvorbehalt (am Erlasstext nicht gegengelesen; Kandidat § 26 Abs. 2 EnV 1).
  Der Verdacht, die Aussage sei sachlich falsch, wurde in der Verifikation **widerlegt**.
- **WDV-Verweis ergaenzt:** die Waermedaemmvorschriften wurden nur als Paragrafenkuerzel gefuehrt
  (grep «LS 700.211»: 0 Treffer in dieser KB). Neu Verweis auf den primaerquellen-verifizierten
  Stand in `energie` (WDV vom 8.6.2022, in Kraft seit 1.9.2022, Nachtrag 118; Daemmstaerken/UR-Werte
  in § 6 Abs. 2/3).
- **EN-120-Zeile** zeigt neu auf `energie/destillate/oelheizung-gasheizung-ersatzpflicht-zh-sz`.
- Bericht: `wissen/koordination/outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Wissens-Chef Run 8 (Cross-KB): aufgehobenes Recht im OEREB-Themenkatalog geflaggt
- **Befund (CONFIRMED):** `kartenportale-oereb-kataster-system-zh` fuehrte fuer **OEREB-Thema 190
  Gewaesserraum** die Rechtsgrundlage `LS 724.112 § 15` (**HWSchV**) **ohne jeden Flag** — der Artikel
  ist `established` und war die einzige Fundstelle im Artikel (grep ueber alle 279 Zeilen: keine
  deckende Aufhebungs-Notiz). Die HWSchV ist per **01.06.2026 aufgehoben** (OS 81, 144); Nachfolge zu
  § 15 HWSchV ist **§ 19 WsG / § 11 WsV** (Konkordanztabelle `wissen/baurecht/raw/260717_amtlich_zh_hwschv.md`).
  Operativ die gefaehrlichste Stelle des Laufs: beim naechsten OEREB-Bezug waere aufgehobenes Recht zitiert worden.
- **Aktion:** Zeile 190 korrigiert (alte Nummer durchgestrichen + Nachfolge-§§) und Warnkasten gesetzt
  inkl. Hinweis auf die Nummern-Wiederverwendung LS 724.11 (bis 31.05.2026 WWG, seither WsV);
  `INDEX.md` nachgezogen (die Eintraege zu `kartenportale-naturgefahren-objektschutz` §7b «§ 22 WWG»
  und `recht-norm-regenwasser-gewaesserraum-zh` «Verfahren 3 § 18 WWG» trugen die Repeal-Flags der
  Artikel nicht — wer nur den INDEX liest, bekam aufgehobenes Recht als aktuell).
- **Brandschutz:** Frontmatter von `brandschutz-pl03-wegweiser` um einen `querbezug_kb_normen`-Block
  ergaenzt (bisher **kein einziger** Link in die KB `normen`, obwohl der Artikel an 16 Stellen auf
  normen-Destillate verweist — reine Pfad-Strings, fuer den Backlink-Graph unsichtbar). Der dort seit
  Run 52 liegende Fassungs-Flag zur VKF-BRL 16-15 ist jetzt in `normen/wiki/QUESTIONS.md` angekommen.
  **Sachkorrektur am Original:** «IOTH-Beschluss 22.03.2017» → **«ABSV-Beschluss 22.03.2017»**
  (falsches Gremium; im Original steht «Beschluss ABSV vom 22. Maerz 2017»).
- **Run 51 (Kartenportale) geprueft — kein Befund:** keine Erlass-Zitate, keine Widersprueche zum baurecht-Stand.
- Bericht: `wissen/koordination/outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-18 — Training Run 52 (Brandschutz, parallel zu Recht/Norm): BSR-16-15-Delta 2022, Register-Vervollstaendigung, BSV-2026-Refresh
- **Ausloeser:** planungsgrundlagen-training, Schwerpunkt Brandschutz (PL-03), Token-Vollgas-
  Intensivlauf. Backlog B1-B39 war laut Run-51-Empfehlung erschoepft — dieser Lauf fuehrt einen
  systematischen BSPUB-Nummern-Scan im Ordner `02 Brandschutzrichtlinien 2015-17-22/` durch
  (analog dem Ordner-Delta-Scan-Muster aus Run 50), der drei bisher unkatalogisierte Dateien
  aufdeckt, plus BSV-2026-Terminplan-Refresh.
- **`wiki/brandschutz-pl03-wegweiser.md` — NEU §5am (B40):** dritte Fassung der BSR 16-15
  «Flucht- und Rettungswege» gefunden (`BSPUB-1394520214-85.pdf`, Stand 01.12.2022). Volltext-Diff
  gegen die bereits dokumentierten 2015/2017-Fassungen: Fehlerkorrektur Ziff. 3.7 (Dez. 2022,
  Geschossflaeche→Brandabschnittsflaeche bei der Schleusenpflicht Einstellraeume) ohne Auswirkung
  auf die bereits korrekt referenzierte KB-Kernzahl; GENUINER Delta ist die neue
  Personenbelegungsdichte-Matrix Verkaufsnutzungen (Ziff. 3.5.2, TKB-Beschluss 09.06.2021):
  Fachmaerkte/Kaufhaeuser 0.10, Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte
  0.45/0.21 Pers./m² statt der alten 3-stufigen Pauschaltabelle — JANS-relevant fuer
  Erdgeschoss-Retail in Wohn-/Mischnutzungsbauten. §5u referenziert neu die 2022-Fassung als
  aktuellste Quelle. Flag fuer normen-training: Destillat `vkf-brl-16-15-flucht-rettungswege.md`
  noch ohne die 2021er-Tabelle.
- **`wiki/brandschutz-pl03-wegweiser.md` — NEU §5an (B41/B42/B43):** Register-Vervollstaendigung
  der restlichen BSPUB-Nummern — `BSPUB-1394520214-57.pdf` (1-15 Norm, Zweitkopie, kein neuer
  Inhalt), `BSPUB-1394520214-71.pdf` (13-15 Baustoffe/Bauteile Rev. 2017, nur redaktionell:
  Rohrisolationen→Rohrdaemmungen, Bauteil 208 Bedachung→Dachkonstruktionen umbenannt, keine
  Kernzahl-Aenderung). Zusaetzlich bestaetigt identisch: `1001-15_Wohnbauten Auszug ...pdf` =
  dreifache byte-identische Mehrfachablage der Regensdorf-/Thalwil-Benchmark-Datei. Bestaetigt
  technisch blockiert (EDEADLK, mehrere Leseversuche inkl. Hintergrund-Priming): Feuerwehrplan-
  Zusatzvariante `Stoerfall ABC-Objekt/` (8 PDF) sowie `z_Administration/`-Bestellbelege (2 PDF) —
  offen fuer den naechsten Lauf.
- **`wiki/brandschutz-pl03-wegweiser.md` — §1 Refresh (B44):** BSV-2026-Terminplan per
  WebSearch+WebFetch (`bsvonline.ch/de/aktuell/information-bsv-2026`, vkg.ch) erneut geprueft —
  unveraendert bestaetigt (politische Vernehmlassung weiterhin 08-11/2026, IOTH-Genehmigung
  03/2027, keine neue Medienmitteilung seit 06.01.2026 Marschhalt).
- **Register:** `training/curriculum.md` Domaene 4 B40-B44 ergaenzt (B42/B43 offen, Rest
  abgeschlossen); `wiki/QUESTIONS.md` C34/C35 erledigt, C36 (Stoerfall-ABC/z_Administration) neu
  offen; `wiki/INDEX.md` Eintrag brandschutz-pl03-wegweiser erweitert; `raw/_INGESTED.md` sechs
  neue Zeilen; `last_updated` des Artikels auf 2026-07-18 (Run 52).
- **Naechster Lauf:** C36 (Stoerfall ABC-Objekt + z_Administration) erneut versuchen; danach ist
  auch die Brandschutz-Domaene weitgehend auto-schliessbar-luecken-frei (nur noch projektabhaengige
  Vertiefungen und der periodische BSV-2026-Refresh bleiben).

## 2026-07-18 — Training Run 51 (Kartenportale): K41–K44 geloest, OneDrive-Lock aus Run 50 aufgeloest
- **Ausloeser:** planungsgrundlagen-training, Schwerpunkt Kartenportale. Die vier seit Run 50 wegen
  OneDrive-Datei-Provider-Deadlock (`EDEADLK`) unlesbaren PL-01-Kandidaten K41–K44 waren jetzt
  problemlos lesbar (Sync-Timing, wie im Praezedenzfall Lignum Run 28→30 vermutet).
- **`wiki/kartenportale-naturgefahren-objektschutz.md` — NEU §3c (Run 51):** der bis Run 50 nur
  S. 1–6 gelesene Bauteilkatalog der Checkliste `27_Checkliste_SvN_D.pdf` ist mit **S. 7–12**
  vollstaendig ausgewertet (real JANS 2304 Reckholdern/Willerzell SZ). Belegte Produktanweisungen:
  Sonnenschutz **SIA 342** Sturmwiderstandsklasse + automatischer Einzug; Lichtdurchlaesse Kunststoff
  **−80 % nach 5 J → Glas**; **Suissetec-Merkblatt** Hagel/Spengler; Solar/PV-Lasten ins Tragwerk +
  Schneedruckregister; **Ueberschwemmung: keine Fenster, Betonsockel hochziehen**. Quelle-Note auf
  S.1-12/12 aktualisiert, `last_updated` 2026-07-18.
- **`wiki/kartenportale-geoportale-uebersicht.md` — zwei Ergaenzungen (Run 51):** (1) NEU Abschnitt
  «ZH Geoportal OGD-Bestellportal `geoportal.zh.ch/opendata`» mit den aus realen Regensdorf-
  Lieferscheinen (02/2024) belegten **GIS-ZH-Datensatznummern 555 (DTM)/557 (LIDAR)/10016 (AV
  Datenmodell ZH)/10102 (OEREB-Abstandslinien)**, OGD kostenlos, Status established. (2) Luzern-
  Bullet erweitert um `klimafreundlichheizen.ch` (adressgenaue Heizungsempfehlung, Gasversorgungs-
  Aufhebung bis 2040) + Stadt Luzern 3D-Stadtmodell (Esri-Viewer, kein Export). `last_updated`
  2026-07-18, sources ergaenzt.
- **Verifikation:** alle Nummern/Kennzahlen direkt aus amtlichen Original-PDFs (Lieferscheine,
  Checkliste, Konzept), nicht geraten. Kein Connector-Eingriff (Leitplanke «nie ungetestet»: OGD-
  Bestellung ueber interaktiven Warenkorb, kein getesteter REST-Endpunkt).
- **Register:** QUESTIONS.md A K41–K44 auf [x]; curriculum.md K41–K44 auf [x]; raw/_INGESTED.md
  +3 Zeilen. Report: `outputs/2026-07-18_training-run51.md`.
- **Empfehlung Ruecktaktung:** auto-schliessbare Luecken der Prioritaets-Domaenen (Kartenportale
  K1–K44, Energie E1–E39) sind erschoepft; verbleibende Punkte (D9, ZH-Grundwasser-Positiv-Benchmark,
  SZ-Naturgefahren-REST) sind projekt-/fachstellen-abhaengig. Vorschlag: Loop auf Turnus/Trigger
  statt Dauer-Intensitaet, bzw. Rotation auf Recht/Norm + Brandschutz (dort waechst der Backlog noch).

## 2026-07-17 — Wissens-Chef Run 7 (Cross-KB): WWG/HWSchV → WsG/WsV nachgezogen (Run-5-Bring-Schuld geschlossen)
- Ausloeser: baurecht hat heute (Buch-Run 48) amtlich belegt, dass **HWSchV und WWG per 1.6.2026
  aufgehoben** sind (→ WsG LS 724.1 + WsV LS 724.11; Konkordanztabelle in `baurecht/raw/260717_amtlich_zh_hwschv.md`).
  Das war die offene Bring-Schuld aus Run 5. Drei planungsgrundlagen-Artikel fuehrten die alten Erlasse noch.
- **`wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` — drei Eingriffe:** (1) Aufhebungs-Flag
  HWSchV/WWG → WsG/WsV bei der ZH-Festlegung; (2) **§-Nummer + Sachlage korrigiert:** eingedolte
  Fliessgewaesser «≥ 11 m» war § 15d Abs. 3 HWSchV (alt) → § 15k Abs. 3 (Nachtrag 95, 2017) → per
  1.6.2026 **entfallen** (§ 24 WsV kennt nur Verringerung; 11 m folgen heute allein aus Art. 41a Abs. 2
  lit. a GSchV); (3) **stehende Gewaesser korrigiert:** 15 m sind **nicht** an die 0,5-ha-Schwelle
  geknuepft — 0,5 ha ist nur Verzichtsgrund (Art. 41b Abs. 4 lit. b), nicht Formel-Kriterium
  (an baurecht `abstaende-und-hoehen`, Modell-D-verifiziert, angeglichen). § 15c-Fundstelle als
  «bis 31.5.2026» markiert.
- **`wiki/kartenportale-naturgefahren-objektschutz.md`:** die Aussage «§ 22 WWG unveraendert in Kraft»
  auf «WWG per 1.6.2026 aufgehoben → WsG/WsV; konkreter Nachfolge-§ fuer § 22 WWG noch nicht
  verifiziert (Bring-Schuld)» korrigiert + Verweis auf baurecht als fuehrend.
- **`wiki/recht-norm-regenwasser-gewaesserraum-zh.md`:** WWG-Flag (Run 5) auf **HWSchV ausgeweitet**
  (war ungeflaggt), Abkuerzung «HWV» → «HWSchV», Verfahren 2 + 3 als «bis 31.5.2026» markiert.
- Verifikation: alle vier Befunde an den Zitatstellen + der amtlichen baurecht-raw-Quelle bestaetigt.
- **Offen (nicht autonom):** (a) WsG-/WsV-Nachfolge-§ fuer § 22 WWG am Volltext klaeren; (b) Doppelspur
  GSchV-Bemessungstabelle (baurecht + planungsgrundlagen materiell doppelt) — Trim auf reinen Verweis
  = Umstrukturierung, Rueckfrage noetig. Bericht: `koordination/outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): VKF-Querbezug in GreenPV-§6b, Jahresertrags-Divergenz §6↔§6b geflaggt
- **`wiki/energie-pv-eignung-typenwahl.md` §6b (aus Training Run 50) — drei Eingriffe:**
  (1) **«Querbezug KB normen»-Block** vor der VKF-Hoehen-/RF-Staffel gesetzt: §6b fuehrt die
  VKF-Anforderungen (geringe Hoehe ≤ 11 m RF3 / mittlere Hoehe ≤ 30 m RF2 / Hochhaus > 30 m RF1)
  materiell im Wortlaut, obwohl gemaess Rule `normen-referenz` die KB `normen` fuehrend ist —
  **dritter Fundort dieses Musters** nach `brandschutz-pl03-wegweiser` (Run 3) und dessen §1a (Run 4).
  Verschaerfend: der Artikel delegiert Brandschutz-Detail in seinem eigenen Kopf an
  `[[energie-pv-brandschutz]]` — §6b unterlaeuft die eigene Arbeitsteilung. Praezisierung im Block:
  die Hoehen-Staffel steht **nicht** im VKF-Solaranlagen-Merkblatt, die korrekten Ziele sind
  `normen/destillate/vkf-brl-verwendung-baustoffe` (Ziff. 3.2.8, RF-Staffel) +
  `…/vkf-brandschutznorm-2015` bzw. `…/vkf-brl-10-15-begriffe-definitionen` (Hoehen-Definitionen).
  **Offener Trim** (§6b auf Planungs-Framing kuerzen) markiert — Umstrukturierung, nicht autonom.
  (2) **Divergenz-Flag §6 ↔ §6b:** der Jahres-Minderertrag der Sued-Fassade steht doppelt und
  uneinheitlich — §6-Tabelle (Workshop-2-Foliensatz 2022): **86 % von 180 kWh/m²a = −14 %**;
  §6b (Schlussbroschuere 27.08.2024): **rund −20 %**. Beides aus derselben Studie, verschiedene
  Publikationsstufen. **Massgebend ist die finale Broschuere (−20 %)**; §6-Tabellenwert bewusst
  stehen gelassen (Bereinigung waere Umstrukturierung). Die Winter-Aussage (+43 %) bestaetigt §6 dagegen.
  (3) **Querbezug KB energie** in der Sektion «Querbezuege»: dieselbe HSLU-Studie liegt dort als
  `destillate/greenpv-fassade-pv-begruenung-hslu` (2022er-Zwischenstand, `emerging`) — **derzeit fuehrt
  fuer die Zahlen dieser Artikel**, weil er die Schlussbroschuere auswertet; das energie-Destillat ist
  mit Aktualitaets-Flag versehen. Sobald der energie-Loop re-destilliert hat, **kehrt sich die Fuehrung
  um** (Energie-Fachstoff = `energie` gemaess Fuehrungs-Matrix) und §6/§6b sind zu kuerzen (offener Trim).
- **Offen (nicht autonom):** das in §6b zitierte Swissolar-Uebergangsdokument «Brandschutz fuer
  hinterlueftete Photovoltaikanlagen an Fassaden» (2023) trug die Geltung **bis 31.12.2024** — das liegt
  19 Monate zurueck; ob es abgeloest/verlaengert wurde oder inzwischen ein Stand-der-Technik-Papier
  existiert, ist in keiner der drei KBs geprueft.
- Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-16 — Training Run 50 (Kartenportale + Energie, Token-Vollgas, 2 Domaenen): GreenPV-Schlussbroschuere (statt Workshop-Entwurf) volltext eingearbeitet, vier Kartenportale-Kandidaten durch OneDrive-Sync-Blocker verhindert
- **Schritt 0 + Ordner-Delta-Scan:** Zeitstempel-Scan (`find -newermt 2026-07-10`) fand keine
  neuen Dateien in PL-01/PL-04; systematischer Datei-/Ordnernamen-Abgleich aller PL-01-Unterordner
  gegen den bestehenden Wiki-Text foerderte vier echte Kandidaten zutage (Naturgefahren-Konzept-
  Ordner mit realem JANS-Projektbeleg, `Klimafreundlichheizen.ch`, `Stadt Luzern
  3D-Stadtmodell`, Regensdorf-Lieferscheine) — alle vier blieben waehrend des GESAMTEN Laufs
  durch einen OneDrive-File-Provider-Deadlock (`EDEADLK`) technisch unlesbar (Read-Tool, `cp`,
  `pdftotext`, `file`), waehrend andere Ordner im selben Lauf problemlos lesbar waren; als
  K41-K44 in `training/curriculum.md` + `wiki/QUESTIONS.md` Abschnitt A fuer den naechsten Lauf
  vorgemerkt (Praezedenzfall Lignum-Erdbeben Run 28→30: reines Sync-Timing).
- [update] `wiki/energie-pv-eignung-typenwahl.md` §6/§6b (E39-Rest): der in Run 49 als "Workshop 2
  von 3, Studie noch nicht abgeschlossen" eingeordnete GreenPV-Foliensatz ist ueberholt — WebSearch
  fand die laengst publizierte oeffentliche HSLU-Schlussbroschuere (27.08.2024, Institut fuer
  Gebaeudetechnik und Energie IGE, 92 Druckseiten), volltext ausgewertet und als NEU §6b
  eingearbeitet: Take-Home Messages (PV-Fassade Sued unverschattet −20 % Jahresertrag / +43 %
  Winterstrom ggue. Dach; Begruenung fuer Private nicht rentabel, aber gesamtgesellschaftlicher
  Mehrwert; Kombination PV+Begruenung senkt THGE >25 % bei nur ~9 % LCC-Mehraufwand), 8
  Empfehlungen zur Systemwahl, vollstaendiger Vorteile-/Systemvergleich Dach-Fassade-Aussenraum je
  Begruenung+PV, VKF-Brandschutz-Staffel nach Gebaeudehoehe (Hochhaus-Luecke fuer PV-Fassaden),
  zwei reale Schweizer Fallbeispiele mit Kostenkennwerten (PV-Fassade Holenackerstrasse 65 Bern
  CHF 1'400/m² + 8 Schutzziele; Fassadenbegruenung Sky-Frame Frauenfeld 1'100 m² / CHF 450'000 /
  CHF 10-20/m²a Unterhalt), SIA-112-Planungs-Checkliste. Status des Artikels von `emerging` auf
  `established` gehoben (offizielle, im Auftrag von Bund+2 Staedten erstellte Publikation).
- Report: `outputs/2026-07-16_training-run50.md`.

## 2026-07-15 — Wissens-Chef Run 5 (Cross-KB): PV-EIV-Doppelspur geflaggt + WWG→WsG-Aktualitaets-Flag
- [link] `wiki/energie-betriebsenergie-pv-wirtschaftlichkeit.md`: «Querbezug KB energie (fuehrend)»-Block vor §1. Die EIV-Foerdersystematik/Saetze sind kanonisch in `wissen/energie` → `pv-einmalverguetung-bund-bfe` (established) + `pv-marktzahlen-kosten-ch-2025`; §1 hier ist Doppelspur und zum Verschlanken vorgemerkt (Trim = Umstrukturierung, NICHT autonom). Kein Sachwiderspruch.
- [flag] `wiki/recht-norm-regenwasser-gewaesserraum-zh.md`: Aktualitaets-Flag am WWG-Verweis — das ZH-WWG (1991) wurde per 1.6.2026 durch das Wassergesetz WsG vom 12.12.2022 abgeloest (§ 126 WsG, primaerquellen-belegt in `wissen/energie` → `grundwasserwaermenutzung-bewilligung-zh-sz`). §-Mapping WWG→WsG offen. Keine §-Umbenennung vorgenommen (Bring-Schuld WsG-Volltext). Bericht: koordination/outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — Training Run 49 (Recht/Norm + Energie, Token-Vollgas, 2 Domaenen): Zeitstempel-Scan foerdert Mehrwertrevers-Systematik + ZSV-Bemessungsschluessel zutage, GreenPV-Fassaden-PV-Benchmark schliesst Run-40-Backlog
- **Standard-Schritt-0 (Empfehlung Run 48) erstmals angewendet:** `find -newermt` ueber alle vier
  PL-Ordner (10-Tage-Fenster) foerderte sechs bisher nie ausgewertete Volltext-Dateien zutage,
  alle am 13.07.2026 nachgeliefert — drei in `Arbeitsgesetz/` (argv3/argv4/argv34.txt, Volltext-
  Extrakte der bereits als PDF gefuehrten ArGV 3/4 + Wegleitung), eine in `Zivilschutz/`
  (520_11.txt, Volltext-Extrakt der ZSV), eine im bisher nie kartierten Ordner
  `Mehrwertrevers Beseitigungsrevers/` (zbl.txt, Bösch ZBl 1993).
- **Recht/Norm (PL-02), R52-R54:** (1) Wegleitung-Volltext liefert die Anboeschungs-Ausnahme fuer
  unter-Terrain-Arbeitsraeume (Boeschungswinkel 25-30°/max. 3 m/Bruestungshoehe 1.20-1.50 m),
  den vollstaendigen Plangenehmigungsverfahren-Ablauf (Art. 37-41) und die bisher fehlende
  Behindertengerechtes-Bauen-Trigger-Schwelle **>50 Arbeitsplaetze** (BehiG/SN 521 500) → NEU
  §2b-2d [[recht-norm-arbeitsplatz-bauvorschriften]]. (2) ZSV-Volltext schliesst die seit Run 26
  offene Schutzplatz-Bemessungsformel-Luecke: **2 Schutzplaetze/3 Zimmer Wohnen, 1 Schutzplatz/
  Patientenbett Spital/Alters-/Pflegeheim** (Healthcare strenger als Wohnen), 5-%-Mehrkosten-
  Schwelle exakt verifiziert, Ausnahmen Art. 18 (inkl. **Minergie-Standard-Ausnahme**),
  gemeinsame Schutzraeume Art. 19 → NEU §2b [[recht-norm-zivilschutz-bautechnik]]. (3) Der 1993er
  ZBl-Fachartikel (Peter Bösch) liefert eine vollstaendige Systematik der **Mehrwert-/
  Beseitigungs-/Anpassungsreverse** (Baulinien-Anmerkungsmechanik) und weiterer Revers-Typen
  (Ausnuetzungsrevers, heute entbehrlicher Hochhausrevers, Arealueberbauungs-Anmerkung,
  Quartierplanbann) → NEU [[recht-norm-mehrwertrevers-grundbucheintragungen]] (`emerging`,
  Quelle 1993, §-Nummern PBG-1991er-Fassung nicht durchgehend gegen die aktuelle Fassung
  verifiziert) — **korrigiert eine fruehere Einschaetzung (Run 26/R9):** damals wurde das Thema
  mangels Volltextquelle nur als Cross-Ref auf [[recht-norm-dispensrecht]] behandelt; mit
  `zbl.txt` lohnt sich ein eigener Artikel. Explizite Abgrenzung zum verfahrensrechtlichen
  Mehrwertausgleich (MWA, [[kartenportale-oereb-kataster-system-zh]] §8) ergaenzt — gleicher
  Wortstamm, verschiedenes Rechtsinstitut, Verwechslungsgefahr fuer kuenftige Antworten explizit
  entschaerft.
- **Energie (PL-04), E39:** der seit Run 40 als Backlog gefuehrte 46-seitige HSLU-Forschungs-
  Foliensatz «GreenPV» (Fassadenbegruenung + PV, Klimaanpassung) S. 1-29 ausgewertet — liefert
  die erste **belegte orientierungsabhaengige Fassaden-PV-Benchmark-Tabelle**: Solarstrahlung/
  Stromertrag/Amortisation (graue Energie/THG/UBP) je Sued/Ost/West/Nord gegen die
  Dach-Referenz, plus max. Fassadentemperatur je Orientierung (**West mit 52.9 °C am
  heissesten, nicht Sued**) und belegte Referenzgebaeude-Daemmstandards Alt-/Neubau → NEU §6
  [[energie-pv-eignung-typenwahl]]. Kernaussage fuer JANS: eine Fassaden-PV-Anlage amortisiert
  sich immer langsamer als eine Dachanlage (Faktor 1.2-2.7× je nach Orientierung/Indikator,
  bei Nordfassaden am staerksten) — ein rechenbares Gegenargument zur reinen Flaechen-
  maximierung bei der Typenwahl. Die Studie selbst war zum Auswertungszeitpunkt (Workshop 2 von
  3) noch nicht abgeschlossen; PV+Begruenungs-Kombinationsempfehlungen (das eigentliche Studien-
  ziel) stehen erst fuer einen moeglichen Workshop-3-Bericht an — hier bewusst nur Referenzdaten
  uebernommen, keine Empfehlung vorweggenommen.
- Register nachgefuehrt: `training/curriculum.md` (R52-R54, E39), `wiki/QUESTIONS.md`
  (R9-Korrektur, D-Sektion GreenPV-Backlog geloest), `raw/_INGESTED.md` (vier neue Zeilen),
  `wiki/INDEX.md` (drei Artikelzeilen aktualisiert + ein neuer Artikel). Report:
  `outputs/2026-07-15_training-run49.md`.
- **Verifikations-Verdikt:** keine bestehende `established`-Statushebung in diesem Lauf — der
  neue Artikel [[recht-norm-mehrwertrevers-grundbucheintragungen]] bleibt bewusst `emerging`
  (Einzelquelle 1993, §-Nummern nicht durchgehend gegengeprueft), die Ergaenzungen in den drei
  bereits `established`/`emerging` gefuehrten Artikeln sind belegte Erweiterungen bestehender
  Artikelkoepfe, keine neue Status-Behauptung.
- **Lehre:** die von Run 48 vorgeschlagene Zeitstempel-Scan-Methode als Standard-Schritt-0 hat
  sich sofort bewaehrt — sechs neue Primaerquellen in einem als "praktisch vollstaendig"
  eingestuften Curriculum gefunden. Fuer kuenftige Laeufe: Schritt 0 vor jedem inhaltlichen
  Lauf beibehalten.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Fuehrungs-Pointer §1a Normkonzept BSV 2026 → normen
- [link] `wiki/brandschutz-pl03-wegweiser.md` §1a: «Querbezug KB normen»-Block gesetzt — VKF-Primaerdokument «Normkonzept BSV 2026», kanonische Fundstelle fuehrt normen (Rule `normen-referenz`). normen hat die PDF beschafft, aber kein Destillat → planungsgrundlagen fuehrt die 38 Eckpunkte materiell weiter. **Offener Punkt** (nicht autonom): nach normen-Destillat §1a auf Planungs-Framing kuerzen + verlinken (Trim = Umstrukturierung). Kein Sachwiderspruch (BSV 2015 geltend, 2026 Zukunft — beidseitig konsistent). Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Training Run 48 (echtes neues Primaerdokument: Normkonzept BSV 2026 + M3-Korrektur)
- Statt eines weiteren WebSearch-Refresh: Zeitstempel-Scan (`find -newermt`) ueber alle vier
  PL-Grundordner (4'000 Dateien) foerderte ein am 11.07.2026 neu abgelegtes Primaerdokument
  zutage — «Normkonzept BSV 2026» (VKF/Keel & Raster, Stand 06.10.2022, 170 S.).
- **B5 von Termin- auf Substanz-Ebene gehoben:** 38 Eckpunkte der BSV-2026-Totalrevision
  destilliert (Kap. 1-2 + Kap. 5 volltext gelesen) — 1 statt 2 Erlassstufen (BSV max. 200 S. +
  BSV-Erlaeuterung), 3 statt 4 QSS, Risikoorientierung/Grenzkostenprinzip, SIA-500-Kap.8-
  Uebernahme (Healthcare-relevant), Uebergangsrecht mit Bauherren-Wahlrecht, und die praktisch
  wichtigste Neuerung: operationale "rote Linie" fuer Nachruestungspflicht bei Bestandesbauten
  unabhaengig vom Umbauvorhaben → NEU §1a [[brandschutz-pl03-wegweiser]]. Vorbehalt: Konzeptstand
  2022, liegt zeitlich vor dem Marschhalt 06.01.2026.
- **M3 korrigiert:** Run 47s Vermutung "Parkplatz-Flexibilisierung" zum Volksreferendum gegen
  UmV § 49b PBG war ein Fehlschluss aus dem Suchtreffer-Titel. Primaerquelle (stadt-zuerich.ch)
  zeigt: staedtisches Referendum zu Zuteilungsregeln fuer preisguenstigen Wohnraum bei
  Mehrausnuetzung, Abstimmung 14.06.2026 — relevant fuer `machbarkeit`/`nutzungsstrategie`, nicht
  fuer Parkierung → `wiki/QUESTIONS.md` M3 korrigiert, Status `[~]` (Primaertext noch offen).
- Register gepflegt: `raw/_INGESTED.md`, `training/curriculum.md` (B5), `wiki/QUESTIONS.md`
  (C6/B5 + M3), Output `outputs/2026-07-14_training-run48.md`.
- Lehre fuer kuenftige Laeufe: Bei einer nahezu gesaettigten KB ist ein Zeitstempel-Scan vor
  jedem Lauf effizienter als ein erneutes vollstaendiges Durchkaemmen oder ein reiner
  WebSearch-Refresh bestehender Watchlist-Punkte.

## 2026-07-14 — Training Run 47 (Refresh-Lauf, Watchlist E5/E9/B5): Stand unveraendert bestaetigt, Nebenfund § 49b PBG-Referendum offen
- Curriculum praktisch vollstaendig (K1-K40/E1-E38/R1-R51/B1-B39 abgehakt); dieser Lauf
  bearbeitet die drei verbliebenen `[~]`-Watchlist-Punkte per WebSearch-Refresh statt neuer
  Ordner-Erschliessung.
- **E5/E9 (MuKEn-2025-ZH-Ueberfuehrung + Graue-Energie-Grenzwert):** unveraendert bestaetigt,
  keine Vernehmlassung/kein Termin fuer ZH auffindbar → [[energie-energienachweis-zh-formulare]]
  §Datenstand.
- **B5 (BSV-2026-Totalrevision):** unveraendert bestaetigt (politische Vernehmlassung 08/2026,
  Inkrafttreten Herbst 2027) → [[brandschutz-pl03-wegweiser]] §1.
- **Nebenfund, nicht uebernommen:** Volksreferendum gegen UmV § 49b PBG (Parkplatzvorschriften-
  Flexibilisierung, zustande gekommen 21.11.2025) — nur Suchtreffer-Titel, keine Primaerquelle
  gelesen; als neue offene Aufgabe **M3** in `wiki/QUESTIONS.md` hinterlegt statt als Fakt
  uebernommen.
- **Einordnung:** KB naehert sich Saettigung; Ruecktaktung ins Nachtfenster gemaess
  `training/PROGRAMM.md` vorgeschlagen (nicht umgesetzt) — VOLLGAS-Vorgabe bleibt bis 10.08.2026
  in Kraft. Report: `outputs/2026-07-14_training-run47.md`.

## 2026-07-14 — Training Run 46 (Kartenportale + Energie, Token-Vollgas): ÖREB-Weisung V3 vollständig abgeschlossen (S. 20-73), Energie-Refresh unverändert
- **Kartenportale (PL-01):** Rest der Weisung «ÖREB-Kataster Betrieb und Nachführung der Daten»
  V3 (S. 20-73, alle acht Themen-Detailprozesse §5.2-§5.12) vollständig gelesen und in
  [[kartenportale-oereb-kataster-system-zh]] als §8-§12 eingearbeitet. Bei sechs von sieben
  Nutzungsplanungs-/Baulinien-Themen (§5.2-5.8) bestätigt sich das bereits bekannte generische
  4-6-Phasen-Muster (kein Delta); zwei echte Zusatzfunde: **Mehrwertausgleich (MWA)** als
  Blocker vor der öffentlichen Auflage bei kommunaler Nutzungsplanung und überkommunalen
  Gestaltungsplänen (separates Tool eMehrwertausgleich), und der **Quartierplan als 7-Phasen-
  Sonderfall** (zwei Grundeigentümerversammlungen, notarielle Prüfung der Rechtsverhältnisse,
  Vermessungsplan, grundbücherlicher Vollzug §§161 ff. PBG). **§5.9 Statische Waldgrenzen:**
  zwei getrennte Änderungswege — Bauzonen-Erstfestsetzung (seit 2018, absehbar abgeschlossen)
  vs. Rodung/Ersatzaufforstung als einziger verbleibender Weg danach; die Waldgrenze ändert
  sich erst mit der **ausgeführten** Rodung (Abnahmeprotokoll), nicht mit der blossen
  Bewilligung — direkt relevant für Baufeld-Berechnungen (`baulinien-analyst`/`machbarkeit`).
  **§5.10/5.11 Grundwasserschutz:** Schutzzone (Layer 131, Gemeinde formal zuständig, Antrag-
  steller meist Wasserversorgung) vs. Schutzareal (Layer 132, AWEL direkt zuständig) plus
  provisorische «Zonen S», die vor jeder öffentlichen Auflage sofort im ÖREB erscheinen können.
  **§5.12 Kataster belasteter Standorte (KbS):** einziges Thema ohne eigene Vorprüfungs-Phase,
  ausgelöst durch Bauvorhaben/Untersuchung/Sanierung direkt bei AWEL Sektion Altlasten — relevant
  für `ankaufspruefung`. **Die 73-seitige Weisung ist damit vollständig ausgewertet, keine
  offenen Kapitel mehr.**
- **Energie (PL-04):** Web-Refresh-Check MuKEn-2025-ZH-Überführung (aeesuisse.ch, hev-zh.ch,
  energiehub-gebaeude.ch) — weiterhin keine kantonsspezifische Vernehmlassung oder
  Terminangabe für Zürich auffindbar, nur die allgemeine EnDK-Timeline «Umsetzung 2025-2030»;
  Datenstand in [[energie-energienachweis-zh-formulare]] unverändert bestätigt.
- Register nachgeführt: `training/curriculum.md` (K40-Rest §5.3-5.8/§5.9/§5.10-5.11/§5.12 +
  E5-Refresh), `wiki/QUESTIONS.md` (Sammel-Eintrag K40-Rest), `raw/_INGESTED.md` (zwei neue
  Zeilen), `wiki/INDEX.md` (Artikelzeile nachgeführt).

## 2026-07-14 — Training Run 45 (Recht & Norm, Token-Vollgas): GT-Richtlinien-Serie AHB komplett ausgewertet + Kennzeichnungssystem-Delta + Raummodul-Standards NEU + KBOB-Merkblatt-Delta-Check
- **§12–§14 GT-Richtlinien Gebäudetechnik AHB (Ordner `14-Energie-und Gebaeudetechnik/
  14.3-Richtlinien`) — komplette Serie GT_RL1-9 vollständig gelesen** (bisher war nur §4 GA-
  Standard Pflegezentren bekannt): Planungsgrundlagen (Projekthandbuch/Pflichtenheft GT,
  Leistungsnachweis-Pflicht Kessel >350 kW/COP-JAZ, BKP-Gliederung mind. dreistellig),
  Systemwahl (Energieträger-Hierarchie, thermische Solarenergie vor PV bei Wohnen/Heime/Sport,
  Fernwärme prioritär), Heizung/Kühlung (**träge Wärmeabgabesysteme in Schulzimmern NICHT
  zulässig**, Kühlungs-Bedarfsnachweis SIA 382/1:2007 zwingend), Lüftung/Sanitär
  (**Legionellenschutz Risikogruppe 2 — Spitäler/Altersheime/Pflegezentren: thermische
  Desinfektion 75 °C bei Erneuerung zwingend einzuplanen**), Elektro/Beleuchtung (EN-12464-1-
  Übersichtstabelle mit belegten Healthcare-Beleuchtungsstärken: Bettenzimmer 100/300 lx,
  Behandlungsräume 500 lx, Verkehrsfläche Spitäler 200 lx). **GT_RL9 Gebäudeautomation
  Delta-Check gegen §4: kein Duplikat** — eigenständige, allgemeinere Richtlinie (jedes
  AHB-Bauvorhaben) mit neuen Fakten: IMMO-Box (zentrales Energiemonitoring-System, Pflicht ab
  EBF >1'000 m²), 3-Ebenen-Bedienkonzept, 4-stufige Überwachungspriorität, 30 %-Ausbaureserve-
  Richtwert.
- **§15 Kennzeichnungssystem und Beschriftungskonzept Gebäudetechnik NEU** (`Standards_
  Kennzeichnungssystem_V2.2.pdf`, 1.9.2007) — Delta-Check gegen §2 CAFM-Bezeichnungssystem:
  kein Duplikat, eigenständige technischere Quelle nach DIN EN 6779-12/DIN 6779-1/
  DIN EN 61346-1+2 für die gebäudetechnischen Anlagen/Komponenten selbst (SGK/BTA/MTA/
  Aggregate/GA-Datenpunkte) statt der Orts-/Raumebene aus §2.
- **§16 Raummodul-Standards Büro und Klassenzimmer NEU** — belegte Gebäudetechnik-Kennzahlen
  (Beleuchtung/Beschattung/Elektro/Lüftung/Heizung je Raumtyp); Klassenzimmer-Delta zu Büro:
  3. Beleuchtungszone Wandtafel (kein Tageslicht-Ausschalten), motorisierte Beschattung bei
  Neubauten Pflicht (nicht optional wie Büro), zentrale Heizungsabsenkung Schulferien —
  direkt nutzbar für die JANS-Priorität Schul-/Bildungsbau (Rule 260713).
- **§17 KBOB-Einzelmerkblätter — Delta-Check gegen §6.1, drei echte Deltas:** Recyclingbeton
  (KBOB 2007/2 liefert RC-W/RC-B/RC-M-Kategorien + Expositionsklassen-Matrix + reale
  Stadt-ZH-Referenzprojekte Werdwies/Forum Chriesbach/Hirzenbach/Hardau/Im Birch), Gutes
  Innenraumklima (KBOB 2004/1 liefert Phasen-Verantwortungsmatrix + bisher fehlenden
  CO₂-Grenzwert 1'000/1'500 ppm + vier reale Schadenfälle), Schadstoffe-in-Bauten-Checkliste
  (AHB/UGZ Stadt Zürich 2005 liefert **PCP als dritten Schadstoff-Typ**, Grenzwerte
  1/0.1 µg/m³) — Letzteres zusätzlich als Cross-Ref-Ergänzung (kein Duplikat) in
  [[energie-baustoffe-schadstoffe-rueckbau]] §6 eingearbeitet.
- Artikel-Backlog (§9) entsprechend bereinigt: GT-Richtlinienserie, Kennzeichnungssystem und
  Raummodul-Standards sind nicht mehr offen; von den 26 Nachhaltiges-Bauen-Einzelmerkblättern
  sind drei ausgewertet, 23 bleiben niedrige Priorität.
- Register nachgeführt: `training/curriculum.md` (R44-R51), `wiki/QUESTIONS.md` (§B),
  `raw/_INGESTED.md` (2 Zeilen), `wiki/INDEX.md` (beide betroffenen Artikel-Zeilen).

## 2026-07-14 — Training Run 45 (Brandschutz, Token-Vollgas): Cheminees/Spaenefeuerungen/Schnitzelfeuerungen/Pelletsfeuerungen NEU (Run-42-Backlog abgeschlossen)
- **Brandschutz — vier neue Abschnitte im Wegweiser [[brandschutz-pl03-wegweiser]] (established):**
  §5ai **Cheminées** (VKF-Erlaeuterung 103-15de, 14 S. vollstaendig gelesen, Stand 01.01.2015,
  genehmigt 23.09.2014) — EN-13229-Cheminées nach Leistungserklaerung/Aufstellanleitung,
  individuell erstellte Speichercheminées 0.12 m RF1 + 60 mm Mineralwolle, Sicherheitsabstand
  0.1 m seitlich / **0.8 m bei offenem/verglastem Feuerraum**, Vorbelag ≥ 0.4 m, Cheminéeschürze
  EI 60 bei Holzverkleidung mit ≥ 20 mm dauerhaft hinterlüfteter Luftspalt. §5aj
  **Spänefeuerungen** (VKF-Erlaeuterung 104-15de, 17 S.) — Heizraum **IMMER EI 60 unabhängig der
  Nennwärmeleistung** (keine kW-Erleichterung, strenger als Schnitzel/Pellets), zwei zwingend
  unabhängige Rückbrandsicherungen SLE+RSE, freistehende Silos **10 m Mindest-Sicherheitsabstand**,
  offene Lagerbehälter im Freien max. 40 m³. §5ak **Schnitzelfeuerungen** (VKF-Erlaeuterung
  105-15de, 12 S.) — eigenständige Kategorie (Korngrösse 40/20/10 mm, Feuchte > 20 %),
  **70-kW-Erleichterungsschwelle** (Aufstellraum EI 30 statt Heizraum EI 60, darf bei geringem
  Brandrisiko andere Zwecke dienen), dreistufiges Rückbrandsicherungs-Regime je nach
  Austragungsart (RHE / RSE+TÜB / RSE+SLE+TÜB), Ausräumöffnungs-Staffel 1.0x0.7/2.0x0.9/2.5x1.5 m.
  §5al **Pelletsfeuerungen** (VKF-Erlaeuterung 106-15de, 14 S.) — Pellets Ø 5-7 mm/Feuchte ≤ 10 %/
  **1 m³ ≈ 650 kg**, identische 70-kW-Schwelle und Ausräumöffnungs-Staffel wie Schnitzel, aber
  **fünf** statt drei gestaffelte Rückbrandsicherungs-Fallgruppen (feinste Granularität aller
  vier Feuerungstypen, wegen zusätzlicher pneumatischer Förderoptionen), pelletsspezifische
  **CO-Belüftungspflicht** + Prallschutzmatten-Pflicht bei der Befüllung. Alle vier ehrlich als
  **niedrige bis mittlere JANS-Priorität** eingeordnet (primär Wohn-/Landwirtschaftsbauten-
  Relevanz, kaum Healthcare-/Schulbau-Grossprojekt-Bezug), aber vollständigkeitshalber jetzt
  destilliert — schliesst den in Run 42 «Naechste Schritte» explizit vorgemerkten Backlog
  (Cheminées/Spänefeuer/Schnitzelfeuerung/Pelletsfeuerung) vollständig ab. Damit ist der Ordner
  `04 Erläuterungen Brandschutz 2015/` vollständig ausgewertet (alle 8 VKF-Erläuterungen 100-108
  jetzt im Wegweiser dokumentiert).
- Register nachgefuehrt: `training/curriculum.md` (B36-B39), `wiki/QUESTIONS.md` (C33), `raw/_INGESTED.md`.

## 2026-07-14 — Training Run 44 (Kartenportale + Energie, Token-Vollgas): NEU ÖREB-Kataster-System ZH (amtliches ID-Register + Vorwirkung-Mechanik)
- **NEU [[kartenportale-oereb-kataster-system-zh]] (established):** ausgewertet aus
  `Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — amtliche «Weisung ÖREB-Kataster Betrieb
  und Nachführung der Daten» V3, Kt. ZH ARE Abt. Geoinformation, 01.12.2022 (73 S., bisher nie
  ausgewertet, obwohl der Ordner seit K1 als Benchmark-Quelle diente). Liefert das amtliche
  **ID-/Legenden-Register** fuer alle bisher nur aus Connector-Antworten bekannten `ogd-0xxx`-
  Layer-IDs (73A/73B/76/116/130/131/132/145/157/159/160/190/45-52-ZH/56-ZH/59-ZH) mit
  Rechtsgrundlage + zustaendiger Stelle (ARE/AWEL/ALN/AFM/Gemeinde). Wichtigster Einzelfund: die
  **Vorwirkung-Mechanik** (positive Vorwirkung eines noch nicht rechtskraeftigen Rechts
  grundsaetzlich unzulaessig; negative Vorwirkung ausnahmsweise zulaessig bei ausdruecklicher
  gesetzlicher Grundlage → Sperrwirkung) erklaert erstmals die rechtliche Tragweite hinter dem
  bereits bestehenden `revision_laeuft`-Connector-Flag ([[kartenportale-zonenplan-zh]] §A6): eine
  laufende Zonen-/Baulinien-Revision kann ein Bauvorhaben blockieren, bevor sie in Kraft ist.
  Ergaenzt generischer 4-Phasen-Nachfuehrungsprozess (Vorpruefung→Oeffentliche Auflage→
  Festsetzung/Genehmigung→Rechtsmittel→In Kraft), ÖREB-DMT-Systemarchitektur (Rechts-/Projekt-/
  Protokoll-DB) und Betriebsorganisation (Katasterleitung/KBO/kantonale Fachstellen/Gemeinden/
  Fachspezialisten). Verlinkt aus [[kartenportale-zonenplan-zh]], [[kartenportale-geoportale-uebersicht]],
  [[kartenportale-oereb-egrid-bezug]]. Nur S. 1-19 von 73 ausgewertet — Detailprozesse §5.3-5.12
  (Waldgrenzen/Grundwasserschutz-Nachfuehrung im Detail) fuer naechsten Kartenportale-Turnus offen.
- **Bestaetigte Nicht-Funde:** drei chronologisch gestaffelte Vorgehens-docx im selben Ordner
  (Mai 2024/Okt 2024/Maerz 2026) beschreiben identisch den bereits dokumentierten Geoshop-/
  geodienste.ch-Bezugsweg (A4/K4) — kein neuer Inhalt. forumenergie.ch/`230710_Kurse.docx`
  (Energie-Domaene) enthaelt nur einen bareURL-Link zur bereits dokumentierten Kursseite (E17/E19).
- **Energie-Domaene sonst durchgehend gesaettigt geprueft** (solar-home.ch, megasol.ch,
  energieheld.ch, prefa.solar, sonnenverlauf.de, solarapp.ch, uvek-gis.admin.ch, energieschweiz.ch,
  pv sol premium, pronovo.ch, wissen.minergie.ch/_Login, _Energienachweise, _Private Kontrolle) —
  alle bereits vollstaendig eingearbeitet (E1-E38), keine neuen Deltas gefunden.
- Register nachgefuehrt: `curriculum.md` (K40 + E-Check), `wiki/QUESTIONS.md` (K40-Eintrag),
  `raw/_INGESTED.md`, `wiki/INDEX.md`.

## 2026-07-14 — Training Run 43 (Recht/Norm + Brandschutz, Token-Vollgas): Schulbauten-Arbeitshilfe NEU, Gebaeude-geringer-Abmessungen NEU, Betriebsbereitschaft BFS NEU, temporaere Fluessiggasanlagen NEU, AHB-Bauwerkdokumentation + Ingenieurwesen
- **Brandschutz — vier neue Abschnitte im Wegweiser [[brandschutz-pl03-wegweiser]] (established):**
  §5ae **Arbeitshilfe Schulbauten** (VKF 1002-15de, 30 S. vollstaendig gelesen) — direkt JANS-
  relevant (Rule 260713: Schul-/Bildungsbau priorisierte Wettbewerbs-Bauaufgabe). Brandabschnitts-
  flaeche ohne Nachweis 3'600 m² (groesser als generisch), Kindertagesstaette-Fluchtweglaenge
  **20 m statt 35 m**, Fluchtwege ueber Atrien/Innenhoefe mit RWA-Nachweis zulaessig, Sprinkler/
  BMA/Blitzschutz nur «auf Verlangen der Behoerde», Spezialraeume (Schulkueche/Cafeteria/Labor)
  eigene Brandabschnitte. §5af **Arbeitshilfe Gebaeude mit geringen Abmessungen** (VKF 1000-15de,
  21 S.) — KEINE Anforderung an Feuerwiderstand Tragwerk/Brandabschnittsbildung, Brandschutz-
  konzeptplaene nur auf Verlangen, erleichterte Treppengeometrie (0.9/1.2 m), Ausgangsbreiten-
  Staffel nach Personenbelegung. §5ag **Betriebsbereitschaft von Brandfallsteuerungen (BFS)**
  (VKF-Erlaeuterung 108-15de) — bisher unerschlossene Steuerungs-/Betriebsebene: 3 Ansteuerungs-
  Kategorien (Einzel/Kollektiv/Selektiv), Fail-Safe-Prinzip, Pflichtdokumentation (Zonenplan/
  Matrix/Drehbuch integraler Test), Funktionserhalt ≥30 Min. bei Fail-Safe-losen Elementen.
  §5ah **temporaere Aufstellung von Fluessiggasanlagen** (VKF-Erlaeuterung 107-15de) — Delta zur
  bereits dokumentierten permanenten Kennzahl (§5v): max. 6 Monate/13 m³/1'100 kg, Meldepflicht
  Brandschutzbehoerde+Suva 1 Woche vorher, **Schutzabstaende-Matrix nach Nachbarschaftsgefaehrdung
  mit Spitaeler/Schulen/Camping explizit als «erhoehte Gefaehrdung»** (direkter Healthcare-Befund).
  Backlog niedrige Prioritaet: Erlaeuterungen Cheminees/Spaenefeuer/Schnitzelfeuerung/
  Pelletsfeuerung (Feuerungsanlagen fuer feste Brennstoffe, primaer Wohn-/Landwirtschaftsbau).
- **Recht/Norm — zwei neue Abschnitte in [[recht-norm-ahb-stadt-zuerich-projektstandards]]
  (established):** §10 **Bauwerkdokumentations-Richtlinie 2009** (Abgabepflicht/-termine/-mengen
  nach Bauabschluss, drei Zeitpunkte fuer Bewirtschaftungsplaene-Grundlagen) + reales
  **AHB-Kennwerte-Faltblatt-Format** (Restaurant-Kiosk Hafen Riesbach, Grundmengen SIA 416 +
  vier BKP2-Kennwerte RI/GV/GF/HNF nebeneinander — Vorbild fuer die Kennwerte-KB `grobkosten/`).
  §11 **Ingenieurwesen-Fachrichtlinien**: Tragwerkverstaerkung (Restsicherheitsfaktor ohne
  Klebebewehrung ≥1.2), Betonneubauten (Betondeckung ≥30mm Ausfuehrung/≥35mm Planung + 13-
  Faktoren-Qualitaetsmatrix), Recyclingprodukte/-beton (oekologische Rangordnung Wiederverwendung
  > stoffliche Verwertung > Entsorgung nach SIA 430/493/162-4, Altlasten-Kataster-Kontrollkette
  AWEL vor Baubewilligung; Firmenliste von 1999 veraltet, methodisches Geruest uebernommen).
  Restbacklog: 18-Nachhaltiges-Bauen-Einzelchecklisten (26 Dateien), 14-Energie-TGA-Rest
  (GT_RL1-9), 09/10/04-Buero-CI-Vorlagen.
- Rotation: Run 42 deckte Kartenportale+Energie ab, dieser Lauf turnusgemaess Recht/Norm+
  Brandschutz gemaess den in Run 42 «Naechste Schritte» benannten Zielordnern (12-Bauwerk-
  dokumentation/16-Ingenieurwesen bzw. naechster PL-03-Unterordner ausserhalb der Richtlinien-
  Serie). Naechster Turnus zurueck zu Kartenportale+Energie.

## 2026-07-14 — Training Run 42 (Kartenportale + Energie, Token-Vollgas): Gebaeudeschadstoffe-Checkliste NEU, SolarApp/PVSOL premium eingeordnet, Kt.-Bern-Portalarchitektur + Sunrise/UPC-Delta
- **Energie — NEU eigener Artikel [[energie-baustoffe-schadstoffe-rueckbau]] (established):**
  AWEL-Checkliste Gebaeudeschadstoffe (02.2023) vollstaendig destilliert — Vier-Faelle-Weiche
  Asbest/PCB/CP nach Baujahr/Bausumme/Rueckbauvolumen (Art. 16 VVEA), zwei Sanierungswege
  (instruierte Handwerker vs. Suva-anerkannter Sanierer), **untersuchungspflichtige
  Spezialobjekte inkl. Spitaeler** (Healthcare-relevant unabhaengig von der Bausumme). Speist
  Skill `ankaufspruefung` (CapEx-Fahrplan Bestandsbauten) und `ausschreibung` (Rueckbau-LV).
- **Energie — §2c NEU [[energie-pv-eignung-typenwahl]]:** SolarApp AG (Deitingen SO) als
  eigenstaendiges Vorprojekt-Simulationstool eingeordnet (bisher nur als Zahlenquelle in der
  Benchmark-Tabelle zitiert, nie als Tool beschrieben); realer Willerzell-Bericht liefert
  zusaetzlich die bisher fehlende Eigenverbrauchs-/Unabhaengigkeitsseite (53 % Unabhaengigkeit).
  PVSOL premium (Valentin Software GmbH) als TGA-Fachplaner-Desktop-Tool eingeordnet, realer
  491-kWp-Grossanlagenfall (Thomas Lueem Partner AG) mit explizitem "kein Planungsdokument"-
  Vorbehalt dokumentiert.
- **Kartenportale — [[kartenportale-geoportale-uebersicht]]:** Kt.-Bern-Portalarchitektur
  praezisiert (`be-geo.ch` = Login, `map.apps.be.ch` = Kartenclient, analog zur ZH-Trennung),
  realer Fall Schloss Muenchenwiler mit benannter Kontaktstelle Amt fuer Geoinformation Kt. Bern;
  AV-Bezug via `geodienste.ch` auf max. 5 Parzellen/Bestellung gedeckelt. `gisos.bak.admin.ch`
  geprueft, bestaetigter Nicht-Fund (nur bare URL, kein Delta zu K34/ISOS).
- **Kartenportale — [[kartenportale-werkleitungskataster]]:** Sunrise-Markenauftritt (realer
  Fall Reckholdern Willerzell) fuehrt technisch auf dieselbe `leitungskataster.upc.ch`-Domaene
  wie das bereits dokumentierte UPC-Portal — Fusion, kein zweites System.
- **Verifikations-Stufe:** alle Funde direkte Primaerquellen (AWEL-PDF, reale Korrespondenz/
  Berichte aus dem PL-Ordner) ohne konkurrierende Zweitquelle → Status `established`
  (Checkliste Gebaeudeschadstoffe, SolarApp/PVSOL-Einordnung) bzw. `emerging` (Bern-Portal,
  Sunrise-Delta — Einzelfall-Beleg).
- Register nachgefuehrt: `training/curriculum.md` K37-K39 + E36-E38, `wiki/QUESTIONS.md`
  A/D-Sektion, `wiki/INDEX.md`, `raw/_INGESTED.md`.

## 2026-07-14 — Training Run 41 (Recht/Norm + Brandschutz, Token-Vollgas, Fan-out): AHB-Honorar/Nachhaltigkeit/CAD/Submission auf established + BSR-14-15-Fehlidentifikation korrigiert
- **Recht/Norm (§5-§8 [[recht-norm-ahb-stadt-zuerich-projektstandards]], Status auf established
  gehoben):** vier weitere `Projektadmin AHB`-Unterordner ausgewertet — **Honorarwesen** (SIA-
  102/103/105/108:2003-Abweichungen, Z-Werte 2009, Zeittarif A-G, TGA-Reduktionstabelle, direkt
  nutzbar fuer Skill `honorarberechnung-sia102`), **Nachhaltiges Bauen/eco-bau** (KBOB/eco-bau/
  IPB-Vertragsbedingungen vertraglich verbindlich bei Stadt-ZH-Mandaten, SIA-112/1-Checkliste,
  7-Meilenschritte-Programm), **CAD-Richtlinie AHB** (technische Eckwerte + Formate-Matrix),
  **Submissions-/Zahlungswesen AHB** (SR 720.110 + Wegleitung 09/2006; zwei Dateien als Duplikat
  der kantonalen SubV ZH identifiziert). Rest-Backlog (Bauwerkdokumentation, Ingenieurwesen,
  26 Nachhaltigkeits-Einzelchecklisten, TGA-Rest) in §9 dokumentiert.
- **Brandschutz (§5ad [[brandschutz-pl03-wegweiser]], established):** **Korrektur einer
  Fehlidentifikation aus Run 39** — die dort als «BSR 14-15» erfasste Datei war tatsaechlich
  BSR 13-15 (bereits in §4 dokumentiert); die echte BSR 14-15 «Verwendung von Baustoffen» liegt
  unter dem kryptischen Dateinamen `BSPUB-1394520214-77.pdf`, jetzt vollstaendig gelesen und
  eingearbeitet (Geltungsbereich, cr-Abdeckungsstaerken, Hochhaus-RF1-Pflicht, WDVS-Brandriegel,
  zwei Healthcare-Funde: RF1-Pflicht Beherbergung [a] + Patientenzimmer-Ausnahme). Doppel-
  verifiziert gegen das unabhaengige Normen-KB-Destillat `vkf-brl-verwendung-baustoffe.md`
  (deckungsgleich); Datenstand-Delta (Stempel 2017 vs. Destillat-Frontmatter 2015) geflaggt statt
  selbst korrigiert. Ordner `02 Brandschutzrichtlinien 2015-17-22/` damit vollstaendig
  ausgewertet.
- Details: `outputs/2026-07-14_training-run41.md`.

## 2026-07-14 — Training Run 40 (Kartenportale + Energie, Token-Vollgas, Fan-out): neuer Denkmalschutz/ISOS-Artikel + Connector-Erweiterung + vier neue Energie-Fundstellen
- **Kartenportale (K34-K36):** Ordner-Abgleich PL-01 deckt eine bisher unerschlossene zweite
  Schutz-Domaene auf — **Denkmalpflege/Archaeologie** (national ISOS nur Portal-Link, kantonal ZH
  Denkmalschutzobjekte + archaeologische Zonen, §§ 203/209/211 PBG). Beim Retest der
  `maps.zh.ch/wfs/OGDZHWFS`-GetCapabilities zwei bisher unbekannte login-freie Layer gefunden UND
  **live end-to-end getestet** (`ogd-0368_..._denkmalschutzobjekte_p` + `ogd-0087_..._archzonen_f`,
  4 reale Objekte am Benchmark Haselstudstrasse 2 Wald ZH) → NEU [[kartenportale-denkmalschutz-isos]]
  (emerging), Connector `geo-zh.mjs` um `--produkt denkmalschutz` erweitert und getestet. Zwei
  kleinere Deltas: .gdb-Format (ESRI File-Geodatabase) als achtes Datenformat ergaenzt (K35,
  established) und Bezirk Einsiedeln «Buero Bauen» + eBau-Pflicht seit 1.12.2022 praezisiert (K36).
- **Energie (E32-E35):** vier Neufunde, alle in [[energie-pv-eignung-typenwahl]] eingearbeitet —
  Planungsgrenzwerte dachintegriertes Typ-B-System (Dachneigung 10-60°, Schneelast-
  Bemessungswert, Hinterlueftung ≥60 mm, §1c), 5-stufige PV-Eignungsklassen-Skala uvek-gis/
  sonnendach.ch (§2b), erster belegter installierter System-CHF/kWp-Wert (6-kWp-Muster ≈ 3'190
  CHF/kWp, schliesst E11-Luecke teilweise, §3), architektonische PV-Integrationsbeispiele aus dem
  TEC21-Dossier «SolaRes Bauen» (Plusenergiehaus Hoengg, Umwelt Arena Spreitenbach, §5, emerging).
- Details: `outputs/2026-07-14_training-run40.md`.

## 2026-07-14 — Training Run 39 (Recht/Norm + Brandschutz, Token-Vollgas, Fan-out): neuer AHB-Stadt-ZH-Artikel + BSV-2026-Refresh/drei neue Brandschutz-Fundstellen
- **Recht & Norm (R39):** bisher nie kartierter Ordner `04_Merkblätter/Projektadmin AHB/` (Amt
  fuer Hochbauten Stadt Zuerich / Immobilien-Bewirtschaftung IMMO, Pflichtenheft fuer beauftragte
  Planer) ausgewertet — SIA-416/d-0165-Flaechenformelkette (GF/NGF/KF, **HNF 6 Heilen und
  Pflegen**), CAFM-Bezeichnungssystem, SiNa-Elektro-Kontrollperioden (Spitaeler/Heime 5 Jahre),
  GA-Standard Pflegezentren PZZ (Raumautomation nach Raumtyp, Alarm-Prioritaeten) → NEU
  [[recht-norm-ahb-stadt-zuerich-projektstandards]] (emerging), Backlink in
  [[recht-norm-raumprogramm-referenzwerke]]. Sechs Unterordner als Backlog (Submissionswesen AHB,
  CAD-Richtlinie, Honorar-AHB SIA 102/103/105/108-2009, Ingenieurwesen, eco-bau, GT-Richtlinien).
- **Brandschutz (B30/C31):** BSV-2026-Refresh unveraendert bestaetigt (politische Vernehmlassung
  weiterhin 08/2026, Inkrafttreten Herbst 2027), neu belegt ca. 11'000 Rueckmeldungen aus der
  abgeschlossenen technischen Vernehmlassung. Drei bisher nie ausgewertete Dateien im Ordner
  `02 Brandschutzrichtlinien 2015-17-22/` gelesen: VKF-Vernehmlassungsbericht 2013 (Genese BSV
  2015, inkl. bisher unbekannter Kindergarten-/Altersheim-Ausnahme von der 600-m²-
  Bagatellschwelle), Teilrevision-2017-Volltext-Delta AFC Basel (bestaetigt bestehenden KB-Stand),
  SZS steeldoc Stahlbau-Brandschutz (neue Fachquelle) → NEU §5ac [[brandschutz-pl03-wegweiser]].
  Registrierungs-Luecke geschlossen: BSR 14-15 "Verwendung von Baustoffen" war unbenannt/nie
  katalogisiert (Volltext-Destillation offen). Nebenbefund: verwaisten Formatierungsfehler
  (Text-Duplikat ohne Bullet-Praefix) in `wiki/INDEX.md` bei der Wegweiser-Zeile behoben.
- Details: `outputs/2026-07-14_training-run39.md`.

## 2026-07-14 — Training Run 38 (Kartenportale + Energie, Token-Vollgas, Fan-out): zwei neue Kartenportale-Funde + Energie-Datenstand-Refresh
- **Kartenportale (K32/K33):** achtgradost.ch betreibt neben der historischen-Terrain-
  Rekonstruktion (K14) zusaetzlich ein oeffentliches, login-freies Gemeinde-WebGIS (White-Label,
  analog geoglatt.ch/K15) — Fallbeleg Regensdorf (Zonenplan/OEREB/Baulinien/AV/Orthofoto) → NEU
  §5 [[kartenportale-historisches-terrain-vermessungsbuero]]. geodienste.ch-Bestellmechanik
  praezisiert (dreisprachige Bestaetigungslink-Mail + kantonale Zugriffsrechte-Pruefung je
  Bestellung, real Kt. BE EGRID CH609835664683) — erklaert das dokumentierte Kt.-LU-Ablehnungs-
  muster → [[kartenportale-geoportale-uebersicht]].
- **Energie (E5/E9/E31):** MuKEn-2025-ZH-Umsetzung + THGE-Grauenergie-Grenzwert unveraendert
  bestaetigt (kein Vernehmlassungs-/Inkrafttretensdatum amtlich auffindbar); eine unbelegte
  Sekundaerquellen-Behauptung ("ZH-Zielwert bis 2027") bewusst NICHT uebernommen (Rule
  `identifikatoren-verifizieren` — nur amtlich verifizierte Aenderungen fuehren zur Uebernahme) →
  [[energie-energienachweis-zh-formulare]] / [[energie-uebersicht]]. Pronovo-KLEIV-Tarifstruktur
  seit 01.04.2025 unveraendert bestaetigt → [[energie-betriebsenergie-pv-wirtschaftlichkeit]].
- Details: `outputs/2026-07-14_training-run38.md`.

## 2026-07-14 — Training Run 37 (Brandschutz-Rueckstand + Recht/Norm, Token-Vollgas, Fan-out): Doppelspur-Fix + vier PL-03-Nachzuegler + drei neue PL-02-Funde
- **Brandschutz — Rueckstand vollstaendig geschlossen:** Doppelspur-Flag (aeltester offener Punkt,
  Wissens-Chef Run 3) geloest — §5o-§5y in [[brandschutz-pl03-wegweiser]] Ziffer-fuer-Ziffer gegen
  `wissen/normen/destillate/vkf-brl-*` verifiziert (keine Abweichung) und auf Destillat-Verweis +
  JANS-Anwendungsnotiz gekuerzt (Rule `normen-referenz.md`), Ausnahme §5s (raucharme-Schicht-
  Zahlenwerte, direkt gegen Original S. 10 verifiziert, bleiben stehen). Rest-Backlog aus Run 34
  vollstaendig abgearbeitet: §4 Baustoff&Bauteile BSR 13-15 (Verweis auf Normen-KB-Destillat,
  F30/F60→EI-Tabelle), §5z Gefaehrliche Stoffe BSR 26-15 (niedrige Prioritaet bestaetigt, Ausnahme
  Notstromaggregate-Diesel dokumentiert), §5aa DIN EN 12101-2 (Produktnorm-Ebene NRWG), §5ab
  Brandmauern 100-15 (0-Byte-Sync-Problem geloest, REI 180/90/60-Hierarchie). Solaranlagen-Merkblatt
  2001-15: Rev.-2022-Datenstand bestaetigt, aber Original nicht im SharePoint-Inventar →
  [[energie-pv-brandschutz]] Datenstand-Vermerk.
- **Recht & Norm — Ordner-Abgleich `04_Merkblätter` (~110 Dateien, nie systematisch geoeffnet):**
  drei Funde — NEU [[recht-norm-hindernisfreies-bauen-zh]] (BehiG-Geltungsbereich, Aufzugs-/
  Wohnungsbau-Fixmasse, Mehrkosten-Schwelle 20 %/5 %, schliesst SIA-500-Vollzugsluecke aus Run 32),
  §7b [[kartenportale-naturgefahren-objektschutz]] (Hochwassergefahrenkarte ZH, § 22 WWG,
  Gefahrenstufen), [[recht-norm-ivhb-baubegriffe]] (Dachlandschaften-Leitfaden AFS, PV-Kategorien
  nach Denkmalschutz-Anspruch). RPG-2-Refresh: Stand unveraendert seit 2026-06-28/07-13 (amtlich
  gegengeprueft) → [[recht-norm-quellenlandkarte]] R6-Ergaenzung.
- Methodik: Fan-out ueber zwei parallele Agenten (Brandschutz + Recht/Norm), Verifikations-Stufe
  Pflicht eingehalten (Ziffer-Abgleich + Original-Gegenprobe). Report: `outputs/2026-07-14_training-run37.md`.

## 2026-07-14 — Training Run 36 (Brandschutz + Energie, Token-Vollgas): vier VKF-Richtlinien §5v-§5y + Pronovo-Foerdersystematik
- **Brandschutz:** vier weitere VKF-Einzelrichtlinien aus dem B27-Rest-Backlog gelesen und als
  §5v-§5y in [[brandschutz-pl03-wegweiser]] eingearbeitet — **BSR 12-15** (Sicherheitsbeauftragter-
  Pflicht Beherbergung [a]/>2'400 m² VF/>300 Pers./>10'000 m² BA-Flaeche + Sprachalarmierung ab
  50/300 Betten + Dekorations-RF2/RF3 + Geruestbekleidung ≥0.8 m), **BSR 22-15** (Blitzschutzpflicht
  Spital/Pflegeheim/Hochhaus >30 m + Blitzschutzklasse III/II je Nutzung, SEV 4022/SN EN 62305),
  **BSR 24-15** (Heizraum EI 30 bis 70 kW / EI 60 >70 kW, direkter Freien-Zugang >1'200/600 kW,
  Sicherheitsabstaende 0.1/0.2/0.4 m, gewerbliche Kueche EI 30 + Schuerze RF1), **BSR 25-15** (BSK
  EI 30-S + Verzichts-Schwellen ≤1'200/600 m², Kuechenabluft-Staffel 4'000/12'000 m³/h EI 60,
  erhoehte Lufttemperatur ≥85 °C). Sources-Frontmatter + Wegweiser-Fragen-Block + INDEX-Zeile
  ergaenzt (inkl. Reparatur der in Run 34 abgeschnittenen INDEX-Brandschutz-Zeile).
- **Energie:** NEU [[energie-betriebsenergie-pv-wirtschaftlichkeit]] (emerging) — schliesst die in
  [[energie-uebersicht]] §Betriebsenergie offen gebliebene «aktuelle KLEIV-Ansaetze»-Frage mit der
  belegten **Pronovo-Einmalverguetungs-Systematik** (KLEIV 2-<100 kWp / GREIV 100 kW-50 MW / HEIV,
  Grundbeitrag + degressiver Leistungsbeitrag, max. 30 % Referenz-Investition, Neigungswinkelbonus
  250→400 / 100→200 CHF/kW ab 01.01.2025, Parkflaechenbonus 250 CHF/kW, Senkung ≤30 kW + ≥100 kW je
  -20 CHF/kW ab 01.04.2025; absolute Saetze bewusst nur via Tarifrechner). Der EFH-Betriebskosten-
  Fall (Run 27) wurde re-verifiziert, aber NICHT dupliziert; Cross-Updates in [[energie-uebersicht]]
  und [[energie-pv-eignung-typenwahl]] §3 (neue Fall-Tabellenzeile, CHF/kWp «nicht isolierbar»).
- Register: `raw/_INGESTED.md` (2 Zeilen), `training/curriculum.md` (B28, E30), `wiki/QUESTIONS.md`
  (C10, D5-Ergaenzung, D8 erledigt, D9 offen: MFH/ZEV-Fall + Steuerabzug), `wiki/INDEX.md`.
- Leitplanke eingehalten: keine erfundenen CHF/kWp-Foerdersaetze (dynamischer Tarifrechner), Web-
  Datenstand 2026-07-14 vermerkt, Norm-Richtlinien verlinkt statt abgeschrieben.

## 2026-07-13 — Training Run 35 (Recht & Norm, Token-Vollgas): «Richtprojekt»/Ueberbauungsordnung neu + Raumpilot-Fehlannahme korrigiert
- Systematischer Top-Level-Ordnerabgleich PL-01/PL-02 gegen das Curriculum (Methodik analog
  Run 31 K27/K28/K31): Kartenportale bestaetigt erschoepft (994 Dateien, kein neuer Ordner, keine
  seit 01.07.2026 geaenderte Datei); Recht & Norm foerdert vier bisher nie kartierte Ordner zutage.
- NEU [[recht-norm-richtprojekt-ueberbauungsordnung]]: Ordner `08_Richtplan` (irrefuehrend
  benannt) enthaelt kein Richtplan, sondern das **Richtprojekt** — die verbindliche Massskizze im
  Anhang einer privaten Sondernutzungsplanung (Gestaltungsplan ZH § 83 PBG / Ueberbauungsordnung
  Kt. Bern). Realer Fall UeO «VistaRotonda» Kt. Bern, Datenblatt Landflaeche/BGF/Parkplatzbedarf/
  Kubatur SIA 116. **Korrigiert eine private KI-generierte Fehlquelle** (Copilot-Notiz ordnete
  «Richtprojekt» faelschlich als SIA-102-Projektphase ein).
- Korrektur [[recht-norm-raumprogramm-referenzwerke]] §1: die seit Run 23 gefuehrte Annahme
  «Raumpilot Arbeiten/Lernen nicht im JANS-Bestand» war falsch — das Volltext-Inhaltsverzeichnis
  der 582-seitigen `Raumpilot-Grundlagen.pdf` zeigt vollstaendige Typologie-Kapitel Arbeiten
  (S. 349-454) und Lernen/Schulbau (S. 455-571), Stichprobe verifiziert echten Inhalt.
- Zwei ehrliche Nicht-Funde dokumentiert: Eisenbahngesetz-Ordner (reine Bahnbetreiber-Technik
  AB-EBV/VEAB, kein Bahnabstand fuer Drittbauten), `10 Lärmschutz` (kein Delta, bereits erfasst).
- Wissens-Chef-Doppelspur-Flag (Brandschutz-KB-normen-Referenzierung) als offene Aufgabe fuer den
  naechsten Brandschutz-Rotationslauf in `wiki/QUESTIONS.md` §C vermerkt (dieser Lauf war
  Recht-&-Norm-fokussiert).
- Bericht: `outputs/2026-07-13_training-run35.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): 2 Querbezuege zur fuehrenden KB normen
- [link] `brandschutz-pl03-wegweiser.md`: Querbezug-Block → KB normen (`vkf-*`-Destillate) als kanonische VKF-Fundstelle (Rule `normen-referenz.md`). **Doppelspur-Flag:** Run 34 hat VKF-BSR-Ziffern/Kennwerte direkt eingearbeitet; die Werte sind deckungsgleich (kein Widerspruch), aber materielle VKF-Ziffern sollen kuenftig aus normen gezogen statt dupliziert werden → offener Punkt fuer den naechsten `planungsgrundlagen-training`-Lauf.
- [link] `energie-pv-brandschutz.md` → normen `vkf-merkblatt-2001-15-solaranlagen`; ⚠ Ausgaben-Delta 2015 (normen) vs. Rev. 2022 (hier belegt), z.B. Unterdachbahnen RF3(cr)/RF4(cr). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Training Run 34 (Brandschutz + Energie, Token-Vollgas): acht bisher nie ausgewertete VKF-Einzelrichtlinien + U-Wert-Ordner-Delta
- Fund: Ordner `PL-03/02 Brandschutzrichtlinien 2015-17-22/` enthaelt >20 einzelne VKF-BSR-PDF,
  von denen nur 3 ausgewertet waren — der Rest war nur pauschal als «02 BSR» kartiert.
- Acht Volltexte neu gelesen und in [[brandschutz-pl03-wegweiser]] §5o-§5u eingearbeitet:
  Brandmeldeanlagen (BSR 20-15, Beherbergung [a] IMMER Vollueberwachung), Sprinkleranlagen
  (BSR 19-15, Verkaufsgeschaefte/Parkhaus-Schwellen), Loescheinrichtungen + Befoerderungsanlagen
  (BSR 18-15/23-15, Feuerwehraufzug tragbahrentauglich), Kennzeichnung von Fluchtwegen (BSR 17-15),
  Nachweisverfahren im Brandschutz (BSR 27-15), Begriffe und Definitionen (BSR 10-15, amtliches
  Glossar), Flucht- und Rettungswege Volltext (BSR 16-15, neue Fluchtweglaengen/Breitenformel).
  §1-Register mit vollstaendiger Titelliste + Rest-Backlog ergaenzt.
- Energie: Ordner `U Wert berechnung/` — drei echte Deltas (EN-102-d Vollzugshilfe 2018,
  Bauteilkatalog Neubauten BFE 2002 mit konkreten Schichtaufbauten, CLT-Luftdichtheit/Feuchte) in
  [[energie-heizwaermebedarf-waermeerzeugerleistung]] §5 eingearbeitet; MuKEn-2025-ZH-Refresh
  unveraendert bestaetigt.
- Register: `training/curriculum.md` (B27/E29), `wiki/QUESTIONS.md` (C29/D21), `raw/_INGESTED.md`,
  `wiki/INDEX.md` nachgefuehrt. Report: `outputs/2026-07-13_training-run34.md`.

## 2026-07-13 — Training Run 33 (Recht & Norm + Kartenportale, Token-Vollgas): letzte offene Curriculum-Punkte geloest statt neuer Ordner-Rundgang
- Curriculum nach 32 Laeufen fast lueckenlos abgearbeitet — statt eine weitere Ordner-Vollsuche
  zu fahren, wurden die verbliebenen "Offen"-Vermerke gezielt aufgeloest.
- **Recht & Norm:** IVHB-Leitfaden Ziff. 5.1-8.5 vollstaendig gelesen (Gesamthoehe/Fassadenhoehe/
  Kniestockhoehe/lichte Hoehe, Voll-/Unter-/Dach-/Attikageschosse, Grenz-/Gebaeudeabstand/
  Baulinien/Baubereich, Baumassen-/Ueberbauungs-/Gruenflaechen-/Ausnuetzungsziffer +
  Dachaufbauten-/Wintergarten-Boni, amtlicher Wortlaut §§ ABV/PBG) → [[recht-norm-ivhb-baubegriffe]]
  jetzt vollstaendig. `4094.pdf` im SubV-Ordner identifiziert (Kantonsratsvorlage 23.7.2003,
  Weisung zur SVO-Revision, Entstehungsgeschichte IVoeB-Beitritt 1996/SVO in Kraft 1997) →
  [[recht-norm-submissionsverordnung-zh]].
- **Kartenportale:** ZH-OGD-WFS-`GetCapabilities` erneut abgerufen (Run-24-Fehler war transient) —
  Grundwasserschutzzonen-Endpunkt gefunden (`ogd-0143_..._gws_zone_f` + `ogd-0149_..._gws_areal_f`),
  per `GetFeature` an 2 Benchmarks schema-valide getestet (0 Treffer, Endpunkt funktioniert) →
  [[kartenportale-naturgefahren-objektschutz]] §8, emerging. Naturgefahrenkarte-Layer weiterhin
  nicht im WFS-Katalog; WMS-Rateversuch bestaetigt login-gesperrt.
- Report: `outputs/2026-07-13_training-run33.md`.

## 2026-07-13 — Training Run 30 (Recht & Norm + Brandschutz, Token-Vollgas): 2h-Schatten/Post-Briefkasten/Absturzsicherung/Zimmerzaehlung/STWEG-Teilungsplan + Lignum-Erdbeben geloest
- Rotation nach Run 29: **Recht & Norm (PL-02) + Brandschutz (PL-03)**. Beide Domaenen sind nach
  29 Laeufen so weit erschlossen, dass zuerst die komplette Ordnerstruktur gegen das Curriculum
  abgeglichen wurde, um echte Luecken statt bereits dokumentierter Themen zu finden.
- **Recht & Norm — drei Planungsdetail-Arbeitshilfen (R22-R24), ein Delta-Check (R25), ein
  Materialbuendel (R26):** **2-Stunden-Schatten** (§ 284 Abs. 4 PBG/§ 30 ABV, Konstruktions-
  verfahren + Azimut/Sonnenhoehe-Tabelle), **Post-Briefkastenanlage** (UVEK-Postverordnung 1998,
  Standort/Mindestmasse), **Absturzsicherungen im Hochbau** (Richtlinie Stadt Zuerich 1.6.2019,
  Gelaender/Bruestungshoehen, kindersicher/nicht kindersicher, 15-%-Bestandsschwelle) → alle drei
  NEU [[recht-norm-arbeitshilfen-planungsdetails]]. **Zimmerzaehlung ZH-Wohnbaufoerderung**
  (Kt.-ZH-Merkblatt 15, halbe-Zimmer-Definition, eigenstaendiges kantonales Instrument, kein Delta
  zur Bundes-WBS) → Ergaenzung [[recht-norm-raumprogramm-referenzwerke]] §2b. **STWEG-Teilungsplan-
  Vermessungsseite** (reales JANS-5-Phasen-Vorgehen Ebmatingen/WOMA + amtliche swisstopo-
  Empfehlung «Digitale Dokumentation Stockwerkeigentum – Aufteilungsplan» 05.05.2020 mit INTERLIS
  DM.StWE + reale Wertquotenberechnung-Benchmark Hafenstrasse 46 Romanshorn) → NEU
  [[recht-norm-stweg-teilungsplan-wertquoten]], speist Skill `stockwerkeigentum` + Agent
  `wertquoten-rechner`.
- **Brandschutz — B25 geloest + ein Delta-Check (B25-B26):** die seit Run 24 wiederholt als
  OneDrive-Cloud-Platzhalter unlesbare Datei **«Erdbebengerechte mehrgeschossige Holzbauten»**
  (Lignum/SIA/SGEB 2010) liess sich in diesem Lauf vollstaendig lesen (reines Sync-Timing) — SIA
  260-267/261/265, Ersatzkraft-/Antwortspektrenverfahren, Grundschwingzeit-Schaetzformel T1=2√u,
  duktiles Tragwerksverhalten → NEU §5m [[brandschutz-pl03-wegweiser]]. **Lignatec «Bauten in Holz
  — Brandschutz-Anforderungen»** (kein Delta zu §4b, sondern holzbau-spezifische Feuerwiderstands-
  Tabelle nach Geschosszahl×Nutzung×Konzept; Healthcare-Kernbefund: Sprinkler reduziert die
  Tragwerksanforderung nur bei Hotels [b], bei Krankenhaeusern/Pflegeheimen [a] NICHT) → NEU §5n
  [[brandschutz-pl03-wegweiser]].
- **Neue Artikel:** [[recht-norm-arbeitshilfen-planungsdetails]],
  [[recht-norm-stweg-teilungsplan-wertquoten]] (beide `established`).
- **Ehrlichkeit zum Umfang:** 8 belegte Funde statt der Token-Vollgas-Zielgroesse 10-16 — die
  verbleibenden ungenutzten Ordner enthalten entweder bereits abgedeckte Themen oder generisches
  Firmen-/Verwaltungsmaterial ohne Planungsgrundlagen-Bezug (siehe Report fuer die bewusst nicht
  vertieften Fundstellen).
- Report: `outputs/2026-07-13_training-run30.md`.

## 2026-07-13 — Training Run 29 (Kartenportale + Energie, Token-Vollgas) — Nachtrags-Eintrag
- **Nachtrag:** dieser Lauf war inhaltlich bereits am 13.07.2026 ausgefuehrt (curriculum.md K20/K21
  + E18-E26, Wiki-Artikel via NAS-Selfcommit `74cb18e6` gesichert), aber ohne Output-Report/
  CHANGELOG-Eintrag beendet worden. Nachgetragen zu Beginn von Run 30, kein neuer Recherche-Inhalt.
- **Kartenportale — zwei bestaetigte Nicht-Funde (K20/K21):** XML-Datenformate-Ordner (generische
  Web-Erklaerung ohne Geodatenbezug, kein Delta zu K8) und Baumkataster-Ordner oberste Ebene
  (identische Dateien wie K12, kein neuer Layer) — beide ehrlich dokumentiert statt uebersprungen.
- **Energie — zwei neu erschlossene Ordner + zwei Refresh-Checks:** Minergie-Nachweiskurs-
  Unterlagen (reale Fallstudie «Maison Climat» mit konkreten Nachweis-Kennzahlen — Heizwaermebedarf,
  SIA-2060-Elektromobilitaet, PV-Dimensionierung, Monitoring-Pflicht) hebt
  [[energie-minergie-referenzprojekt-maison-climat]] auf `established`; `_Heizwaermebedarf/`-Ordner
  (SIA-380/1-Berechnungsverfahren + SIA-384/1/384.201-Waermeerzeugerleistung) → NEU
  [[energie-heizwaermebedarf-waermeerzeugerleistung]]; EN-101c Kt. Schwyz (SZ-Pendant zum
  EN-ZH-System) → Ergaenzung [[energie-energienachweis-zh-formulare]]; E17-⚠-Flag aufgeloest,
  EVEN-Rollout-Zentralschweiz-Datenstand nachgetragen.
- **Neue Artikel:** [[energie-heizwaermebedarf-waermeerzeugerleistung]] (`established`).
- Report: `outputs/2026-07-13_training-run29.md`.

## 2026-07-13 — Training Run 28 (Recht & Norm + Brandschutz, Token-Vollgas 2 Domaenen): vier unerschlossene PL-02-Ordner + Verifikations-Nachtrag Brandschutz-Parkings
- Rotation nach Run 27: **Recht & Norm (PL-02) + Brandschutz (PL-03)**. Dieser Lauf setzt einen
  bereits VOR Laufbeginn begonnenen, aber unvollstaendig gebliebenen Vorgang fort: vier
  Recht/Norm-Wiki-Artikel waren bereits (durch einen vorherigen, unterbrochenen Trainingsdurchgang)
  vollstaendig geschrieben, aber weder in `curriculum.md`/`QUESTIONS.md`/`INDEX.md` registriert noch
  im CHANGELOG protokolliert; im Brandschutz-Artikel war eine Korrektur (§4c) bereits mit Verweisen
  auf zwei noch nicht existierende Abschnitte «§5g»/«§5l» angelegt. Dieser Lauf hat (1) alle vier
  Recht/Norm-Quellen gegen die Original-PDFs auf Disk verifiziert und die Register nachgefuehrt,
  (2) die fehlenden Abschnitte §5g/§5l recherchiert, geschrieben und gegen die Originalquellen
  verifiziert, (3) vier weitere Brandschutz-Kandidaten gegengeprueft (zwei ergaben Substanz, drei
  bestaetigte Nicht-Funde, ein technischer Zugriffsfehler) — und dokumentiert alles ehrlich,
  inklusive der Nicht-Funde und des technischen Problems.
- **Recht & Norm — vier neue Artikel (R18-R21):** **Baueingabe-Verfahren ZH** (Drei-Spuren-Modell,
  Phasenprinzip mit Fristen, Plandarstellungskonvention § 4 Abs. 4 BVV, reale Fallbeleg-Kennzahlen
  Wartstrasse 8 Zuerich + Bohlweg 3 Thalwil) → NEU [[recht-norm-baueingabe-verfahren-zh]].
  **IVHB-Leitfaden Kt. ZH** (29-Begriffe-Inventar, amtlicher Wortlaut Massgebendes Terrain § 5 ABV +
  Gebaeude-/Kleinbauten-/Fassadenflucht-Begriffe) → NEU [[recht-norm-ivhb-baubegriffe]].
  **Regenwasserentsorgung + Gewaesserraum-Verfahren ZH** (Versickerung vor Einleitung,
  GWS-Zonen-Verbote, Verfahren 2/3 Gewaesserraum-Festlegung) → NEU
  [[recht-norm-regenwasser-gewaesserraum-zh]]. **Submissionsverordnung Kt. ZH** (4 Vergabearten,
  Fristen, Abgrenzung zur privaten JANS-Devisierung) → NEU [[recht-norm-submissionsverordnung-zh]].
- **Brandschutz — Verifikations-Abschluss + zwei Fundstellen (B19-B25):** **§5g «Parking»-Begriff**
  (>600 m² Abgrenzung Ziff. 2.4, Schleusenpflicht ab 1'200 m² Brandabschnittsflaeche — bisher nicht
  dokumentierte Kernzahl) und **§5l BSR 21-15 RWA-Grundrichtlinie** (vollstaendige Parking-Tabelle
  600/3'600/2'400/4'800 m²) schliessen die in §4c bereits zitierte, aber unvollstaendige Korrektur
  der ueberholten 2003er-Parkhaus-Arbeitshilfe ab — beide neuen Quellen bestaetigen die dort
  genannten Zahlen. **BS-Symbole 01.01.2017** (kanonischer Vollkatalog, Delta RDA/SLA/Poller/
  PV-Symbole zum bereits dokumentierten Musterplansatz) → Ergaenzung §5b. Bestaetigte Nicht-Funde:
  **08-QS-Docx** (private, bereits referenzierte Notiz, kein neuer Inhalt), **Solaranlagen-Ordner**
  (byte-identische Datei wie [[energie-pv-brandschutz]]), **07 Blaues Buch** (kein weiteres
  Bildmaterial vorhanden). **Technisch nicht abschliessbar:** Lignum Erdbeben-PDF ist ein
  OneDrive-Cloud-Platzhalter, wiederholt nicht lesbar («Resource deadlock avoided») — offener
  Punkt fuer den naechsten Lauf.
- **Neue Artikel:** [[recht-norm-baueingabe-verfahren-zh]], [[recht-norm-ivhb-baubegriffe]],
  [[recht-norm-regenwasser-gewaesserraum-zh]], [[recht-norm-submissionsverordnung-zh]] (alle
  `established`).
- **Erweiterte Artikel:** [[brandschutz-pl03-wegweiser]] (§5g NEU, §5l NEU, §5b ergaenzt, §4c-
  Korrektur referenziell geschlossen).
- **Verifikations-Stufe:** alle vier Recht/Norm-Quellen sowie beide Brandschutz-Nachtraege wurden
  in diesem Lauf **direkt gegen die Original-PDFs auf Disk geprueft** (Dateiexistenz + Stichproben-
  Volltextabgleich), bevor sie als registriert/`established` galten — kein blindes Uebernehmen
  unregistrierter Vorarbeit.

## 2026-07-13 — Training Run 27 (Kartenportale + Energie, Token-Vollgas 2 Domaenen, Multi-Agent-Workflow): sechs bisher unerschlossene PL-01/PL-04-Fundstellen ausgewertet
- Rotation nach Run 26: Kartenportale (PL-01) + Energie (PL-04). Beide Domaenen waren im
  Curriculum/QUESTIONS praktisch vollstaendig `[x]` — Methode wie Run 25/26: `find`-Abgleich
  der Ordnerbaeume gegen `raw/_INGESTED.md`, um bisher nie geoeffnete Unterordner zu finden.
  Zwei parallele Fach-Agenten (Kartenportale, Energie) haben die Tiefenrecherche unabhaengig
  durchgefuehrt (Autorisierung Rule auto-verbesserungen 260712), der Hauptlauf hat danach die
  Register zentral konsolidiert und eine offene Luecke (Erdwaermenutzung SZ) selbst geschlossen.
- **Kartenportale — drei Fundstellen:** **Grundbuchamt ZH** (formelle, rechtsverbindliche
  Grundbuchauszug-Bestellung via Notariat statt Selbstbedienungs-Eigentumsabfrage; ZH kombiniert
  Notariat/Grundbuchamt/Konkursamt je Bezirk/Quartier, Fundstelle notariate-zh.ch) →
  [[kartenportale-geoportale-uebersicht]], emerging. **Willerzell-WebGIS-Batch SZ** (derselbe
  Kartenexport-Batch wie die bereits dokumentierte Grundwasserkarte): Gewaesser-Oekomorphologie
  (6-stufig natuerlich→nicht bestimmt, Kt.-SZ-Entsprechung zur ZH-GSB-Karte) →
  [[recht-norm-abstandsvorschriften-wald-gewaesser]] + [[kartenportale-naturgefahren-objektschutz]]
  §6b; **Erdwaermenutzung** (Zulaessigkeitszonierung zulaessig/Abklaerung noetig/nicht zulaessig
  + Bestandeskataster Erdregister/Energiekorb/Energiepfahl/Erdwaermesonde) → NEU
  [[kartenportale-naturgefahren-objektschutz]] §6c. **SZ-Geoshop (lisag.ch)** — AV-Daten
  **gebuehrenfrei** ueber vorausgefuellte login-freie URL (Region UR/SZ/OW/NW/ZG), Connector
  noch nicht gebaut → [[kartenportale-geoportale-uebersicht]]; **geodatenshop.zh.ch** als
  Web-UI-Doppel zum bereits dokumentierten Geoshop-API bestaetigt (kein neuer Artikel); **EW
  Lachen AG Einsiedeln** (Wasser/Gas/Fernwaerme/Kanalisation) hat kein Webportal, nur
  E-Mail-Bestellung, plus Liegenschaftsentwaesserungs-Praxis SN 592 000 → NEU
  [[kartenportale-werkleitungskataster]] §7.
- **Energie — drei Fundstellen:** **Betriebsenergie-Praxisfall** (`_Betriebsenergie/`, private
  Drittquelle) — realer Sanierungsfall EFH Baujahr 1957/120 m², PV 14 kWp + Batterie +
  WP-Boiler + Dachdaemmung, Gasbezug 28'613→19'073 kWh, Amortisation ≈ 7 Jahre → NEU Abschnitt
  "Betriebsenergie" in [[energie-uebersicht]], emerging. **Minergie-Referenzprojekt «Maison
  Climat»** — reales Minergie-A-Projekt Seelandweg Biel (20 Mietwohnungen, Holzbau-Ersatzneubau,
  PV-integriert + Erdwaermesonde) → NEU [[energie-minergie-referenzprojekt-maison-climat]],
  emerging (Typologiebeispiel, keine uebertragbaren Kennwerte). **forumenergie.ch** — realer,
  aktiver Weiterbildungsanbieter, JANS-eigener Kursbeleg 26.09.2023 → Weiterbildungs-Hinweis in
  [[energie-private-kontrolle-zh]] §5. pronovo.ch-Ordner bestaetigt leer.
- **Neue Artikel:** [[energie-minergie-referenzprojekt-maison-climat]] (emerging).
- **Erweiterte Artikel:** [[kartenportale-geoportale-uebersicht]], [[kartenportale-naturgefahren-objektschutz]]
  (§6b/§6c), [[kartenportale-werkleitungskataster]] (§7), [[recht-norm-abstandsvorschriften-wald-gewaesser]],
  [[energie-uebersicht]], [[energie-private-kontrolle-zh]].
- **Verifikations-/Qualitaetshinweis:** alle Quellen direkt im Original gelesen (PDF/DOCX/Screenshot/
  eml), keine Endpunkte/Kennwerte erfunden. Zwei Fundstellen sind bewusst als `emerging` statt
  `established` markiert (Betriebsenergie-Fall: Urheber der Drittquelle unbekannt; Grundbuchamt ZH:
  Einzelfall-Beleg). Ein Nacharbeitspunkt der Agenten-Laeufe: beide hatten die neu geschriebenen
  Abschnitte faelschlich mit "Run 26" statt "Run 27" beschriftet (Konsolidierungslauf hat das in
  allen betroffenen Wiki-Dateien korrigiert) — Lehre fuers naechste Mal: Agenten-Prompts sollten die
  korrekte Run-Nummer nochmals explizit im Text wiederholen, nicht nur im Prompt-Kontext.
- **Was als naechstes:** Rotation naechster Lauf Recht & Norm + Brandschutz (PL-02/PL-03); beide
  Domaenen sind aehnlich weit abgearbeitet wie Kartenportale/Energie — auch dort weiterhin per
  `find`-Abgleich nach unbearbeiteten Restordnern suchen statt Curriculum-Punkte zu wiederholen.

## 2026-07-13 — Training Run 26 (Recht/Norm + Brandschutz, Token-Vollgas 2 Domaenen, Multi-Agent-Workflow): sechs + fuenf nie erschlossene PL-02/PL-03-Unterordner ausgewertet
- Rotation nach Run 25: Recht & Norm (PL-02) + Brandschutz (PL-03). Beide Domaenen waren im
  Curriculum/QUESTIONS praktisch vollstaendig `[x]` — Methode wie Run 25: `find`-Abgleich der
  Ordnerbaeume gegen `raw/_INGESTED.md`, um bisher nie geoeffnete Unterordner zu finden. Zwei
  parallele Fach-Agenten (Recht/Norm, Brandschutz) haben die Tiefenrecherche unabhaengig
  durchgefuehrt (Autorisierung Rule auto-verbesserungen 260712), der Hauptlauf hat die Register
  danach zentral konsolidiert (Vermeidung von Schreibkonflikten auf gemeinsamen Dateien).
- **NEU [[recht-norm-radonschutz]] (established):** Radonschutz nach Strahlenschutzverordnung —
  wichtigster Fund: die abgelegte SharePoint-PDF `814.501.pdf` ist die **Stammfassung von 1994**
  und seit der Totalrevision vom 26.04.2017 (in Kraft 01.01.2018) ersetzt; per fedlex `cc/2017/502`
  korrigiert. Radonreferenzwert **300 Bq/m³** (Art. 155), Arbeitsplatz-Schwelle 1000 Bq/m³
  (Art. 156), Bauherrenpflicht bei Neu-/Umbau (Art. 163, kein eigenes Formular), Sanierungspflicht
  (Art. 166); BAG-Vorsorgemassnahmen (durchgehende Bodenplatte, RDS-Durchfuehrungen, SIA 272/
  180/2023); aktuelle Radonkarte `ch.bag.radonkarte` (map.geo.admin.ch) loest die alte
  Gemeinde-Statistik ab.
- **NEU [[recht-norm-zivilschutz-bautechnik]] (emerging):** TPH-18 (BABS 19.05.2003, gasdichte/
  druckfeste Durchfuehrungen durch Schutzraum-Huellen, Pruefpflicht ab Ø 60 mm); **Ersatzbeitrag-
  Revision ZSV per 01.01.2026: CHF 1'400/Schutzplatz** (vorher 800, neu auch Um-/Anbauten),
  kreuzverifiziert mit dem bereits in `wissen/auflagebereinigung` dokumentierten Fall 2619-KISPI
  (15 SP × 1'400 = 21'000 CHF).
- **NEU [[recht-norm-arbeitsplatz-bauvorschriften]] (established):** ArGV 3/4 — Luftraum 12/10 m³
  pro Person (Art. 12 ArGV 3), Tageslicht-Grundsatz + Kompensation fensterloser Raeume (Art. 15
  ArGV 3), gestaffelte Mindest-Raumhoehe 2.75-4.00 m (Art. 5 ArGV 4), Verkehrswegbreite 1.20 m
  (Art. 6 ArGV 4).
- **[[recht-norm-raumprogramm-referenzwerke]] erweitert (§4/§5):** Trockenraeume (§ 297 PBG/
  § 39 BBV I + Stadt-ZH-Vollzugspraxis, 1 Trockenraum/10 m² je 9 Wohnungen) und Bettenlift-Pflicht
  (§ 40 BBV I ab >5 Geschossen), **eingeschraenkt durch BRKE I 0117/1999 auf Alters-/Krankenheime**
  — direkte Healthcare-Relevanz fuer `healthcare-wirtschaftlichkeit`.
- **[[recht-norm-baurechtsanalysen-benchmarks]] erweitert:** Attika-Praxisfall «Zuerichseegut»
  (Namensverwechslung ZSG im Dateinamen aufgeloest — Projektabkuerzung, nicht Zivilschutzgesetz),
  Art. 292 PBG Aesthetikermessen/Firstrichtungs-Vermutung/zonenfremde Nutzung.
- **[[recht-norm-dispensrecht]] ergaenzt:** Mehrwertrevers/Beseitigungsrevers als Cross-Referenz
  (Revers ≠ Mehrwertabgabe RPG Art. 5; Tiefe bereits in `wissen/baurecht` vorhanden — bewusst kein
  eigener Artikel, um Dopplung zu vermeiden).
- **[[brandschutz-pl03-wegweiser]] erweitert um §5b-§5f:** bsvonline.ch-Musterplansatz (Legende/
  Symbolik BS-Plan einfach EI60/EI30-RF1-Farbcode, Objektdatenblatt Feuerwehrplaene); Feuerwehr-
  Bewegungs-/Stellflaechen (6×11 m, Schlauchlaenge 60 m, Stuetzenlast 800 kN/m² — ⚠ Quelle nur
  Foto ohne erkennbaren Dokumenttitel, Verifikation offen); **Fluchtwegkonzept Beherbergung [a]
  nach BSR 16-15 Ziff. 3.6.1** (horizontale Evakuierung, mind. 2 unabhaengige Brandabschnitte je
  Bettengeschoss — Kernparameter fuer Kinderspital-/Pflegeheim-Layout, real am KISPI-Ordner
  belegt); Blaues Buch Kap. 18 Brandschutz (§ 305 PBG geht vor BSN wo strenger, z.B. Haustuer-
  Lichtmass 1 m statt 0.9 m — nur 2 von vermutlich >10 Doppelseiten gelesen, Rest offen);
  VKF-Verzeichnis 40-15 «Weitere Bestimmungen» (Konkordanz-Tabelle, niedrige Prioritaet als
  schlanker Hinweis eingeordnet).
- **Geprueft, keine Inhalte:** Ordner `PL-03/11 Projekte/` ist leer; `PL-02/01_Gesetze/01_Bund/
  07_Neuffert` und `04_Merkblätter` sind leer.
- **Offen fuer Folgelaeufe:** fedlex-ELI fuer SR 520.11 (ZSV) und SR 822.113/822.114 (ArGV 3/4)
  noch nicht ermittelt; `twp84d.pdf`/`TPH-19-d` nicht gelesen; Schutzplatz-Bemessungsformel
  (Personen/m²) nicht gefunden; Feuerwehr-Bewegungsflaechen-Quelle (§5c) gegen die formelle
  VKF-Publikation verifizieren; Blaues Buch Kap. 18 restliche Ziffern nachziehen.
- Naechste Domaenen laut Rotation: Kartenportale + Energie.

## 2026-07-13 — Training Run 25 (Kartenportale + Energie, Token-Vollgas 2 Domaenen): eBau SZ + historisches Terrain neu erschlossen, Rutschgebiete vertieft, CLT-Bauphysik belegt
- Curriculum/QUESTIONS beider Domaenen waren praktisch vollstaendig `[x]` — Methode dieses Laufs:
  vollstaendiger `find`-Abgleich des PL-01/PL-04-Ordnerbaums gegen `raw/_INGESTED.md`, um bisher
  nie geoeffnete Unterordner zu finden statt bekannte Luecken zu wiederholen.
- **NEU [[kartenportale-ebau-sz-baugesuch]]:** digitales Baugesuchsportal Kt. SZ (Buergerportal,
  kein Papierweg) — Registrierung + reale Pflichtfeld-/Beilagen-Checkliste aus einer echten
  JANS-Arbeitsnotiz (Fall Reckholdernstrasse 20 Willerzell): Vermessungsangaben via WebGIS SZ,
  GVZ-Nr., Gebaeudevolumen SIA 116 **und** SIA 416 doppelt verlangt (3 offene Fachfragen
  dokumentiert), Entwaesserungsplan SN 592 000, **Oberflaechenabfluss als eigener, von der
  Naturgefahrenkarte unabhaengiger Layer**, Schadstoff-Schwelle 200 m³.
- **NEU [[kartenportale-historisches-terrain-vermessungsbuero]]:** schliesst die Luecke zwischen
  amtlichen Geodaten (swissALTI3D = nur Ist-Zustand) und der Baumassenziffer-Berechnung bei
  Ersatzneubauten — private Vermessungsbueros rekonstruieren das historische Terrain aus
  digitalisierten Kantonskarten (PDF/DWG/LandXML); realer JANS-Fall Regensdorf Holenbachstrasse
  45-55 (Acht Grad Ost AG, Auftraggeber Nova Property/Christoph Bopp). Direkter Anschluss an Skill
  `massgebendes-terrain`.
- **[[kartenportale-naturgefahren-objektschutz]] neuer §7:** Praxishilfe inggeol.ch "Bauen im
  Rutschgebiet" vollstaendig ausgewertet — Naturgefahrenkarte zeigt nur den ungestoerten Zustand,
  das Bauvorhaben selbst ist eine projektabhaengige Zustandsaenderung (gerade die gelbe Stufe wird
  deshalb unterschaetzt); typische baubedingte Ausloeser + bewaehrte Rollenverteilung
  Architekt/Bauingenieur/Geologiebuero.
- **[[kartenportale-geoportale-uebersicht]] neuer Abschnitt "Weitere Kantone/regionale Portale":**
  Kt. Luzern (Geodatenshop funktioniert zuverlaessig; parallele `geodienste.ch`-Bestellung wurde
  ohne Begruendung abgelehnt — Praxis-Lehre), Kt. Bern, `geoglatt.ch` — alle niedrige Prioritaet,
  nur Kurzprofil.
- **[[energie-uebersicht]] §U-Wert ergaenzt:** CLT-Bauphysik (Stora Enso, V06.2021) belegt —
  λ_CLT=0,12 W/mK, U-Wert-Beispiele unbekleidet (0,997 W/m²K) / gedaemmt (0,179 W/m²K); realer
  JANS-Wandaufbau Biwak Grassen (≈U 0,40 W/m²K gegen Zielwert 0,5, Stroh-Alternative gepruefet).
- Register nachgefuehrt: `curriculum.md` (K13-K16, K10-Rutsch, E13-E14 neu + `[x]`),
  `raw/_INGESTED.md` (8 neue Quellen-Zeilen), `wiki/INDEX.md` (2 neue Artikel + Ergaenzungen),
  Output-Report `outputs/2026-07-13_training-run25.md`.

## 2026-07-13 — Training Run 24 (Kartenportale + Brandschutz, Token-Vollgas 2 Domaenen): Naturgefahren-Checkliste vertieft, Grundwasserkarte + Baumkataster neu, vier Brandschutz-Sonderbauaufgaben (Atrien/Doppelfassaden/Kleinstbeherbergung/Holzbau) erschlossen
- **[[kartenportale-naturgefahren-objektschutz]] erweitert (K10-Rest):** VKG/SIA/HEV-Checkliste
  «Gebaeudeschutzmassnahmen» (Dez. 2020) vollstaendig gelesen — Gefaehrdungsabklaerung je
  Naturgefahr mit Normzuordnung, **Praezisierung SIA 261 (Neubau) vs. SIA 269/8 (Umbau) bei
  Erdbeben** (JANS-Kerngeschaeft ist ueberwiegend Umbau/Sanierung, die falsche Norm waere ein
  Fehler), Bauteilkatalog-Prinzip, Hagelregister.ch + HW3-Empfehlung (Querverweis
  [[energie-pv-brandschutz]]). **NEU §6 Grundwasserkarte** (AGI Kt. SZ, 1:2'000) als eigenstaendige
  UG-/Unterkellerungs-Planungsgrundlage (Weisse-Wanne-Entscheid). Offen bleibt ehrlich dokumentiert:
  ZH-Endpunkt fuer Naturgefahren + Grundwasser nicht gefunden (`GetCapabilities`-Discovery an
  `maps.zh.ch/wfs/OGDZHWFS` schlaegt fehl — kein Layer-Katalog abrufbar, nur bekannte Alias-IDs).
- **NEU Abschnitt [[kartenportale-geoportale-uebersicht]] §Baumkataster (K12, niedrige Prioritaet):**
  Baumkataster ist **kein** kantonal/schweizweit standardisiertes Geoportal-Produkt, sondern eine
  kommunale GIS-Fachanwendung (Quelle: Produktblatt GEOINFO IT AG) — Bezugsweg gemeinde-/
  portalspezifisch, bewusst kein Connector-Anspruch.
- **[[brandschutz-pl03-wegweiser]] um vier neue Sonderbauaufgaben-Abschnitte erweitert:**
  - **§4d Atrien/Innenhoefe** (VKF-Erlaeuterung 101-15de) — Healthcare-relevant fuer grosse
    verglaste Eingangs-/Wartehallen; Definition + 3 Typen A/B/C mit Brandabschnittsbildung/RWA/
    Loeschanlage/Fluchtweg-Simulationsnachweis.
  - **§4e Doppelfassaden** (VKF-Erlaeuterung 102-15de) — **JANS-Healthcare-Kernbefund:** Typ B
    (unsegmentierte Zwischenklimazone) zieht bei schlafenden Personen zwingend BMA-Vollueberwachung
    UND ein Verbot oeffenbarer Fenster nach sich — ein Konflikt mit natuerlicher Lueftung, der
    schon in der Fassadenkonzeption zu loesen ist.
  - **§4f Kleine Beherbergungsbetriebe/Berghuetten < 20 Personen** — Schwellenwert-Ausnahme von der
    strengeren Beherbergungs-QSS-Kategorie, realer JANS-Benchmark **Biwak Grassen** (QSS 2, R30
    statt R60, BMA-Erleichterung Rauchwarnmelder statt Alarmaufschaltung).
  - **§5 Holzbau-Brandschutz** (Lignum-Dokumentation Themenblock 4) — R/EI/REI-Systematik, RF1
    begrenzt auf REI 30/60/90 (nicht 120/180/240), Kapselungsregel K30-RF1, Abgleich zu R60/R90-
    Schwellen aus §4b — fruehzeitiger Warnhinweis fuer Holzbau-Ambition bei Healthcare-Grossprojekten.
- Alle sechs Quellen (Checkliste SvN, Grundwasserkarte, Baumkataster-Produktblatt, 2× VKF-
  Erlaeuterung, Lignum-Dokumentation, realer Biwak-Grassen-Fall) im Original/PDF direkt gelesen,
  keine Sekundaerzitate. Nachtrag: dieser CHANGELOG-Eintrag sowie curriculum.md/QUESTIONS.md/
  `_INGESTED.md` wurden nachtraeglich zum bereits im Wiki vorhandenen Run-24-Inhalt ergaenzt
  (die inhaltliche Arbeit lief bereits, die Registerpflege war noch offen).

## 2026-07-13 — Training Run 23 (Energie + Recht & Norm, Token-Vollgas 2 Domaenen): Zusatzformulare Baueingabe, Raumprogramm-Referenzwerke, Denkmalschutz-PBG-Revision neu erfasst; D3-Skill-Entscheid gefaellt
- **NEU [[energie-baueingabe-zusatzformulare]] (E12/D9):** drei bisher unbearbeitete `PL-04/
  endk.ch`-Unterordner vollstaendig ausgewertet — **WTA-Formular** (Gesuch-/Meldeformular
  waermetechnische Anlagen, Ausgabe Januar 2024): 3-stufige Verfahrensweiche (Melde-/Anzeige-/
  Ordentliches Verfahren) je Anlagentyp, Zustaendigkeits-Matrix Gemeindebauamt/Feuerpolizei/AWEL/
  GVZ, Neubau-Kopplung an **EN-103 mit Privater Kontrolle** (sonst kostenpflichtige Behoerden-
  kontrolle), GWR-Ausfuehrungskontrolle (Seite 5, derselbe Datensatz wie `gwr-bund.mjs`);
  **Formular S Schallschutznachweis Aussenlaerm** (Abgrenzung zu LN-1a/1b bei Luft-WP, LSV-Novelle
  01.04.2026 vermerkt); **Gesuch Versickerung Regenwasser AWEL** (Bewilligungsschwelle Flaechen-
  verhaeltnis >5:1 / Bagatellgrenze 20 m², **50-m²-Schwelle unbeschichtete Metallflaechen →
  Adsorberpflicht** mit Fassadenfaktor 0.2 — Planungsrelevanz bei Kupfer/Zink-Fassaden/Sanierungen).
- **NEU [[recht-norm-raumprogramm-referenzwerke]] (R10):** drei bisher unbearbeitete PL-02-Ordner
  erschlossen — **Raumpilot** (Jocher/Loch, Wuestenrot Stiftung 2012, Gebaeudelehre-Nachschlagewerk
  analog Neufert, aber methodisch auf **Funktionsbereiche statt fertige Raumtypen** ausgerichtet;
  Kapitelstruktur Anthropometrie/Barrierefrei/Treppe/Aufzug/Rettung/Ruhender Verkehr/Energie
  dokumentiert, Rechtsverweise im Buch sind deutsches Recht — nur Kennwerte uebertragbar);
  **WBS 2015** (Bundesamt fuer Wohnungswesen, Wohnungs-Bewertungs-System, 25-Kriterien-System,
  **Grundausstattungs-Tabelle Nettowohnflaeche 30/45/60/80/100/120/140 m² je 1-7-Zimmer-Wohnung**,
  Rahmenbedingung SIA 500 hindernisfrei) als schneller Raumprogramm-Plausibilitaets-Check;
  **UGZ-Toilettenanlagen-Bemessung** Stadt ZH (Personal-Schluessel ArGV3, Publikums-Schluessel
  35-150 Personen/Einheit, Betreuungsstaetten-Tabellen Krippe/Hort/Kindergarten) — direkt
  anwendbar bei Healthcare-/Bildungs-/Publikumsbauten.
- **[[recht-norm-quellenlandkarte]] erweitert:** zwei neue Abschnitte — **Denkmalschutz-PBG-
  Revision** (NEU erfasst: Regierungsrat ZH verabschiedete 02.07.2026 eine PBG-Revision zuhanden
  Kantonsrat, die kleinere Aenderungen an Baudenkmaelern direkt im Baubewilligungsverfahren ohne
  separaten Schutzbeschluss ermoeglicht und energetische Modernisierung/Barrierefreiheit staerker
  gewichtet — Inkrafttreten noch offen) und **Laermschutz — LSV-Vollzug & Praxishilfe**
  (bauen-im-laerm.ch als Cercle-Bruit-Werkzeug, USG/LSV-Novelle **01.04.2026** vermerkt). RPG-2-
  ZH-Refresh: Stand unveraendert, neu Kreisschreiben Mai 2026 als Vollzugshilfe bekannt.
- **D3 entschieden:** kein eigenes Skill `energie-nachweis` — die Domaene ist bereits vollstaendig
  im Wiki + ueber den Agent `energie-berater` organisiert, ein Skill wuerde nur Struktur
  duplizieren ohne neue Faehigkeit zu schaffen.
- Alle Kennzahlen aus Original-PDF/Web-Quelle direkt gelesen (kein Sekundaerzitat); zwei neue
  Web-Fakten je per WebFetch der Original-Medienmitteilung verifiziert.

## 2026-07-13 — Training Run 22 (Kartenportale + Meta, Token-Vollgas 2 Domaenen): Naturgefahren/Objektschutz + Werkleitungskataster neu erschlossen, M2-Anbindung geschaerft
- **NEU [[kartenportale-naturgefahren-objektschutz]] (K10):** vollstaendiger Artikel aus dem bisher
  unbearbeiteten Ordner `PL-01/Objektschutz/` — Rechtsgrundlagen (Art. 6/15 RPG, § 20/17 PBG SZ),
  Gefahrenstufen rot/blau/gelb/gelb-weiss mit konkreter Bauvorschrift je Stufe (blau: **keine
  besonders sensiblen Objekte** — direkte Healthcare-Relevanz), Perimeter A/B/C, rechtlicher Status
  (rechtserheblich auch vor Umsetzung in Nutzungsplanung, 2-Jahres-Frist Gemeinde), realer JANS-
  Benchmark Reckholdernstrasse 20 Willerzell (Objektschutzkonzept 26.09.2023: drei Gefahrenstufen
  auf einer Parzelle, 4-stufiger Massnahmenkatalog planerisch/technisch/Material/organisatorisch),
  SIA-261/261-1-Schutzziele-Tabelle (Hochwasser 300-jaehrlich, Sturm/Hagel/Schnee 50-jaehrlich,
  Erdbeben 475-jaehrlich) + Jaehrlichkeits-Merksatz (300-jaehrlich = 15 % kumuliert ueber 50 Jahre).
  Bezugsweg SZ als realer WebGIS-Link dokumentiert (`ch.sz.a012b.naturgefahrenkarte.*`), **bewusst
  nicht als getesteter REST-Endpunkt behauptet** (Leitplanke: Endpunkte erst nach Test etabliert).
  ZH-Endpunkt als offene Aufgabe vermerkt.
- **NEU [[kartenportale-werkleitungskataster]] (K11):** vollstaendiger Artikel aus dem bisher
  unbearbeiteten Ordner `PL-01/Werkleitungen/` — kein zentrales Portal (anders als OEREB/Zonenplan/
  GWR), betreiberspezifischer Bezug: EKZ (Strom), Swisscom (Festnetz/Kommunikation), Sunrise-UPC
  (Kabelnetz, 4 Regionen), Gas/Wasser bei Gemeindewerken. Realer Ablauf am Fall Reckholdern belegt
  (Konto-Freischaltung EKZ, Bestellung je Perimeter, Lieferung Plot+Symbole+Kurzbrief, **Gueltigkeit
  nur 2 Wochen**, Datenmodell **SIA GEO 405**, Farbdruck-Pflicht, projektierte Gebaeude blau/nicht
  einmessbar, 190-Volt-Warnhinweis Swisscom, Netzauskunft 3 Monate/1:200). **Bewusst kein Connector-
  Anspruch** (login-pflichtig, kein offenes API) — Status `emerging`, dokumentiert den validierten
  manuellen Weg statt eine Automatisierung zu versprechen.
- **M2 abgeschlossen:** Run-21-Befund (Anbindung an die Studien-Skills war einseitig) behoben —
  `machbarkeit`, `ankaufspruefung`, `behoerden-vorabklaerung` SKILL.md referenzieren
  `planungsgrundlagen` jetzt explizit als bevorzugte Geodaten-Quelle statt nur manuellem GIS-
  Browser-Verweis; `ankaufspruefung` zusaetzlich mit Naturgefahren/Objektschutz als eigener
  Pruefdimension, `behoerden-vorabklaerung` mit Praezisierung Werkleitungen-Zustaendigkeit
  (Werke, nicht Tiefbauamt) + Hinweis, dass ein Teil der "gummigen" Masse bereits vorab belegt ist.
- **Register:** curriculum (K10/K11/M2 neu `[x]`), QUESTIONS (Sektion A + neue Sektion F Meta/
  Querschnitt), INDEX (2 neue Kartenportale-Eintraege + M1-Zeile ergaenzt), raw/_INGESTED (4 neue
  Zeilen), kartenportale-grundlagen-checkliste-neue-parzelle + kartenportale-sharepoint-ablage
  ergaenzt/verlinkt.

## 2026-07-13 — Training Run 21 (Recht/Norm + Brandschutz, Token-Vollgas 2 Domaenen): Tiefgarage-Erschliessungsgeometrie + Brandschutz Parkhaeuser/Einstellraeume neu erschlossen
- **NEU [[recht-norm-tiefgarage-erschliessung]] (R9):** vollstaendiger Artikel aus den bisher
  unbearbeiteten VSS-Normen `PL-02/Tiefgarage/1 VSS-Norm/` — Grundstueckzufahrt Typ A/B/C
  (VSS 640 050, Tab. 1/2), Parkierungsanlagen-Geometrie (VSS 640 291a): Parkfeld-/Fahrgassenmasse
  je Komfortstufe A/B/C (Laengs- und Schraeg-/Senkrechtparkierung, Tab. 2-7), lichte Hoehe
  (Tab. 8, 2.20-3.00 m), **Rampenneigung 12-18 % je nach Komfortstufe/Deckung** (Tab. 11) +
  Neigungsknicke ≤ 6 % (Tab. 12), Kurvenverbreiterung (Tab. 9/10), Kontrolleinrichtungs-Layout
  (max. 3 % Neigung im Schrankenbereich); Bedarfsermittlung VSS 640 281 als getrennte, nur
  quantitative Norm eingeordnet. Reale ZH-Kantonspraxis (IBV Huesler AG, Normschnitt Ausfahrtstyp A,
  23.01.2017) und ein reales Pruef-Aktennotiz-Beispiel (Meili Peter/IBV, Tiefgarage 246 Flurstrasse,
  17.04.2018, externe Referenz) bestaetigen die Norm-Werte unabhaengig (Stuetzenabstand-Idealmass
  10 cm ≥ Norm-Minimum 0 cm, Ausfahrts-Restneigung 3 % = Kontrolleinrichtungs-Regel). Zusaetzlich
  Wendehammer-Nachweis fuer 12-m-Lastwagen (Enz & Partner GmbH, VRV Art. 64/65/65a, drei
  Geometrie-Varianten T/Y/Kreuz).
- **[[brandschutz-pl03-wegweiser]] NEU §4c (B9/C10):** Parkhaeuser und Einstellraeume fuer
  Motorfahrzeuge — aus VKF-Brandschutzarbeitshilfe 1002-03d (`PL-03/05 Arbeitshilfen Brandschutz
  2015/`): Tragwerk (R 60 (nbb) UG-Standard, R 30 bei eingeschossig/unterirdisch), Brandabschnitts-
  bildung (4'000/2'000/8'000 m², sprinklerverdoppelbar), **Fluchtweg-Kernzahlen** (1 Treppenanlage
  ≤ 600 m² BGF, 2+ Treppenanlagen ≤ 900 m² je, Gesamtlaenge 35/50 m — direkte Vorprojekt-Relevanz
  fuer grosse Healthcare-Tiefgaragen), RWA-Schwellen (600/1'200/2'400 m²) und Sprinklerpflicht
  (4'000/2'000/8'000 m² bzw. > 50 Kompaktparkplaetze). ⚠ **Datenstand-Vorbehalt bewusst gesetzt:**
  Arbeitshilfe genehmigt 06.08.2003 (vor der BSV-2015-Generation) — im Artikel explizit als vor
  Anwendung in einem laufenden Nachweis gegen bsvonline.ch zu pruefen markiert (Status established
  nur fuer Systematik/Groessenordnung, nicht fuer punktgenaue Zahlen).
- **Verifikation:** VSS-Normen + VKF-Arbeitshilfe direkt aus den Original-PDF gelesen (Modell-D-
  Volltextabgleich, keine Sekundaerzitate). R9 zusaetzlich durch zwei unabhaengige, konvergierende
  Praxisdokumente verifiziert (Norm + reale Kantonspraxis + reale Pruefnotiz, kein Widerspruch).
  Datenstand-Unsicherheit bei der Brandschutz-Arbeitshilfe (2003) transparent als Vorbehalt
  ausgewiesen statt stillschweigend als aktuell behandelt.
- **Register:** curriculum (R9/B9 `[x]`), QUESTIONS (B-Sektion R9, C-Sektion C10), INDEX
  (recht-norm-tiefgarage-erschliessung neu, brandschutz-pl03-wegweiser §4c ergaenzt),
  raw/_INGESTED (6 neue Quellenzeilen + 2 Sammelzeilen-Updates PL-02/PL-03). Bericht:
  `outputs/2026-07-13_training-run21.md`.
- **Naechster Lauf:** M2 (Anbindung `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung`)
  identifiziert als echte offene Luecke — keiner der drei Skills referenziert `planungsgrundlagen`
  bisher; Kandidat fuer eine dedizierte Meta-Runde.

## 2026-07-13 — Training Run 20 (Kartenportale + Energie, Token-Vollgas 2 Domaenen): GWR-Wohnungs-/EWID-Ebene erschlossen + ObjektwesenZH-Korrektur + realer KISPI-EVEN-Praxisfall
- **Kartenportale (Connector-Schritt, K9-Rest):** `gwr-bund.mjs` deckt neu die **Wohnungs-/EWID-
  Ebene** auf — die parallelen Roh-Arrays (`ewid/warea/wazim/wbauj/wkche/wmehrg/wstat/wstwk/wbez/
  whgnr`) waren im identify-Treffer immer schon enthalten, wurden aber nicht dekodiert. Neue
  Funktion `wohnungen(at)` + Codetabellen WSTAT (3001-3008) und WSTWK (3100 Parterre/3101-3199
  Stock/3401-3419 UG) aus dem offiziellen Merkmalskatalog GWR v4.2 (housing-stat.ch, S. 91-94)
  belegt. Live getestet: KISPI (0 Wohnungen), Giebelweg 12 (1 Wohnung/Maisonette), Albertstrasse 7
  Zuerich EGID 150071 (26 Wohnungen, Array-Konsistenz mit `ganzwhg` verifiziert) →
  [[kartenportale-gwr-bund]] §6.
- **Kartenportale (Connector-Fix, Rest aus Run 19):** `geo-zh.mjs` zeigt bei laufenden Baulinien-
  Revisionen (proj-Layer) jetzt auch den naechsten `dist_m` im CLI-Log, nicht nur die Trefferzahl.
  Live-Regression Kloten/Langnau/Seuzach bestanden.
- **Kartenportale (K6/A5-Korrektur):** der bisherige Stand «Eigentumsabfrage ObjektwesenZH braucht
  Interessennachweis Art. 970 ZGB» war zu streng — die elektronische Eigentumsabfrage ueber
  maps.zh.ch ist **login-frei mit SMS-Code**, **ohne** Interessennachweis, 5 Abfragen/Tag/
  Mobilnummer (Quellen: notariate-zh.ch, tagesanzeiger.ch) → [[kartenportale-geoportale-uebersicht]].
- **Energie (D6-Praxisbenchmark):** realer Fallverlauf 2619-KISPI in die EVEN-Bedienungsanleitung
  eingewoben (§9) — konkrete Reibungspunkte, die die generische EnDK-Schulung nicht abdeckt:
  Nachweisverfassung-vs-Private-Kontrolle-Verwechslung, Kl-Befugnis-Luecke beim beauftragten
  HLK-Buero (Gruner AG nur Wä+Lä), Einladungsmechanik nur ueber die bei energie@bd.zh.ch
  hinterlegte Mail. Fall Stand 13.07.2026 nicht abgeschlossen (ehrlich ausgewiesen) →
  [[energie-even-plattform-bedienung]].
- **Energie (Refresh, kein neuer Stand):** MuKEn-2025-ZH-Ueberfuehrung weiterhin ausstehend
  (Web-Refresh bestaetigt unveraendert); D5-Rest (installierter PV-System-CHF/kWp) bleibt offen —
  Archivsuche im JANS-Projektbestand fand keine abgerechnete PV-Anlage, kein unbelegter Wert
  eingetragen → [[energie-energienachweis-zh-formulare]].
- **Register:** curriculum (K9/K6 [x], E10/E5 Refresh-Vermerke), QUESTIONS (A-Sektion K9/A5,
  D-Sektion D6/D5), INDEX (2 Zeilen praezisiert), raw/_INGESTED (6 neue Zeilen).

## 2026-07-13 — Training Run 19 (Kartenportale + Brandschutz, Token-Vollgas 2 Domaenen): proj-Baulinien-Revisionserkennung im Connector + Brandschutzabstaende/Tragwerk-Tabellen/Treppen mit realen JANS-Benchmarks
- **Kartenportale (Connector-Schritt):** `geo-zh.mjs --produkt baulinien` fragt jetzt zusaetzlich
  die **5 proj-Layer** der Abstandslinien ab (0150/0152/0153/0158/0185) und meldet
  `⚠ LAUFENDE REVISION`. Namensschema-Fallen per GetCapabilities verifiziert und dokumentiert:
  0150 Waldgrenze heisst `_prj_l` (nicht `_proj_l`), 0153 Gewaesser wechselt den Namensraum auf
  `giszhpub`. Live-Test bestanden: Hardackerstrasse 2, Kloten (EGRID CH670577750811) → 4 proj-
  baulinie-Treffer (Rechtsmittelverfahren) neben 10 rechtskraeftigen (naechste 0 m); Regression an
  Langnau/Seuzach unveraendert gruen. Weitere Kantons-Belegfaelle: Wila/Boppelsen (Wald), Winterthur
  (Waldgrenze), Niederglatt (Gewaesser), Bachs (Gewaesserraum) → [[kartenportale-baulinien-abstandslinien-zh]].
- **Brandschutz (kein Connector, PL-03-Realfaelle erschlossen):** der einzig offene PL-03-Punkt
  (BSV 2026) ist bis 08/2026 blockiert; stattdessen die `_Projekte Themen/`-Ordner ausgewertet und
  drei neue, belegte Abschnitte in [[brandschutz-pl03-wegweiser]] ergaenzt (§4b):
  - **Brandschutzabstaende zwischen Gebaeuden** (BSR 15-15de Ziff. 2.1-2.4): Regel 5/7.5/10 m,
    reduziert 4/5/6 m, Sonderfaelle Nebenbauten/Fahrnisbauten/Areal-Ueberbauung; real angewandt
    Benchmark **Regensdorf** (EFP-AG-Anfrage 16.02.2024 + JANS-Antwort).
  - **Tragwerk-/Brandabschnitts-Feuerwiderstand nach Gebaeudehoehe × Nutzung** (Tab. 1-3): R30/60/
    90/120-Matrix; **Healthcare-Kernbefund** — Beherbergung [a] (Krankenhaus/Pflegeheim) durchgaengig
    R 60 auch bei geringer Hoehe, eine Stufe strenger als Wohnen/Buero; real angewandt Benchmark
    **Thalwil Bohlweg 3** (Factsheet 05.03.2025: EFH k.A. vs. MFH-Sonderbauvorschrift R 60).
  - **Treppen innerhalb Nutzungseinheit** (BSR 16-15): keine Anforderung (Z.3.2.2 A3) vs.
    Fluchtweg-Treppenbreiten 1.2/1.5/0.9 m + 900 m²-Schwelle Brandschutzabschluss-Verzicht.
  - **BSV-2026-Refresh:** Stand vom 30.06.2026 unveraendert bestaetigt (pol. Vernehmlassung 08/2026,
    Inkrafttreten Herbst 2027); NEU erfasst Pyroverbot in oeff. Raeumen per 01.04.2026.
- **Register:** curriculum (K5-Anmerkung + NEU B6/B7/B8), QUESTIONS (K5-Ergaenzung + NEU C7/C8/C9),
  INDEX (beide Artikel-Zeilen), raw/_INGESTED (6 Zeilen), Frontmatter beider Artikel.
- **Naechster Lauf (Run 20):** Rotation → Kartenportale/Energie; Rest `dist_m` bei proj-Treffern im
  Log, K6/A5 ObjektwesenZH formal abschliessen, Energie D5/D6-Rest. BSV 2026 nicht vor 08/2026
  erneut pruefen (ausser neue Meldung).

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Doppelspur Wald/Gewaesser entschaerft, Backlink zu baurecht
- [link] [[recht-norm-abstandsvorschriften-wald-gewaesser]] -> KB baurecht als fuehrende Rechtsquelle: Fachartikel `abstaende-und-hoehen` (Bemessung/§) + `baulinien-und-abstandslinien` (Rechtswirkung §§ 96/99-101). Dieser Artikel bleibt Geodatum-/Beschaffungs-Wegweiser; bei Abweichung gilt baurecht. Loest die Doppelspur (Rechtsmasse zweimal gepflegt) im Sinne des dispensrecht-Vorbilds.
- [befund] Die planungsgrundlagen-Fassung des Gewaesserraums (established, 07-12) war die KORREKTE — die baurecht-Fassung wurde daran korrigiert (siehe baurecht-CHANGELOG). Kein Fehler in planungsgrundlagen.

## 2026-07-12 — Training Run 18 (Recht/Norm/PL-02): Wald-/Gewaesserabstand ZH & SZ (B4/R8) + SZ-Massweisen-Refresh gegen amtliche SRSZ-Fassung (R2)
- Schwerpunkt **Recht/Norm** (Rotation Run 17 Energie → Run 18 Recht/Norm). **Connector-Schritt:
  nein** (Geodaten-Bezug ueber bestehenden `--produkt baulinien`). Quellen: PL-02/02_Zuerich/Wasser
  AWEL-Merkblatt Gewaesserraum (Juli 2014), zh.ch Merkblatt «Baugesuch im Waldabstand» (Nov 2018) +
  «Bauen im Wald und am Waldrand», amtliche SRSZ PBG 400.100 (Stand 1.2.2025) / PBV 400.111 (Stand
  1.2.2026) + Vollzugsverordnungs-Vorlage (sz.ch).
- **NEU [[recht-norm-abstandsvorschriften-wald-gewaesser]]** (established) — die zwei «gummigen»
  Baufeld-Masse konsolidiert:
  - **ZH-Waldabstand:** Regel-Mass **30 m**, Bauverbot Hochbauten **§ 262 PBG** zwischen Waldgrenze
    und Waldabstandslinie, unterird. = Forstpolizeirecht, < 15 m immer forstlich; Ueberstellung nur
    mit **§ 220 PBG (Gemeinde) + Art. 17 WaG (kant. Forstdienst)**, strenger Massstab.
  - **ZH-Gewaesserraum:** GSchG Art. 36a / GSchV **Art. 41a/41b** (nat. GSB × Breitenvariabilitaet
    ×1/1.5/2; Fliess <2 m→≥11 m / 2–15 m→≥2.5×GSB+7 m; Schutzgebiet-Tabelle; See > 0.5 ha ≥ 15 m ab
    Ufer), Nutzungsbeschraenkung **Art. 41c**, Verfahren §§ 36–89 PBG + ARE/AWEL 60 Tage, Geodatum
    gis.zh.ch «Gewaesser-Oekomorphologie» + § 15c HWSchV.
  - **SZ:** § 66 Gewaesserabstand = Gewaesserraum GSchG / § 67 Waldabstand 15 m ab Waldgrenze.
- **R2-Refresh + Korrektur in [[recht-norm-quellenlandkarte]]:** § 60/61/62/66/67 PBG SZ per
  Volltext-Grep amtlich bestaetigt (**Stand 1.2.2025**), ⚠ >18-Mt.-Flag (SRSZ 1.2.2021) aufgeloest.
  **Wesentliche Korrektur:** die harmonisierten Dichtemasse **GFZ/BMZ sind in SZ noch NICHT in
  Kraft** — sie stehen nur in der [Mitberichtsvorlage] «Verordnung zum PBG» (§ 31i GFZ / **§ 31j**
  BMZ statt faelschlich § 31g / § 31m AZ, gestuetzt § 52 Abs. 3 PBG); amtliches PBG/PBV enthalten sie
  nicht. Bis Inkraftsetzung gelten die kommunalen Baureglemente (oft noch AZ).
- **Register:** INDEX (neuer Artikel), curriculum (R2 refresh + NEU R8 [x]), QUESTIONS (R8 ✓ +
  B4/R2-Abschluss), raw/_INGESTED (3 Zeilen), Frontmatter Quellenlandkarte.
- **Speist** `baulinien-analyst`/[[machbarkeit]] (M2). **Naechster Lauf (Run 19):** Brandschutz
  (PL-03), C6/B5 BSV 2026.

## 2026-07-10 — Training Run 17 (Energie/PL-04): Flaechenleistung Wp/m² + Modul-Preis-Anker je PV-Typ B/C/D (D5-Rest)
- Schwerpunkt **Energie** (Rotation Run 16 Kartenportale → Run 17 Energie, Prioritaet). **Connector-
  Schritt: nein** (Domaene Energie hat keinen Connector). Quellen aus PL-04/Solaranlage (Typenordner
  A–D): PREFA Solarfolder CH (Stand 09.2023 V5), Datenblatt SI-Saphir M175-M180 (06/2015, DIBt
  Z-70.3-204), Eternit Sunskin roof GG-L 195W (solar-home.ch Webshop-Screenshot 17.11.2024),
  Fassaden-Screenshots (Amt f. Umwelt+Energie Basel, jessenvollenweider 2021), Sunskin roof
  Verlege-PDF (Rev. 01.2022).
- **D5-Rest fuer Typ B/C/D geschlossen** — neuer Kern-Kennwert **Flaechenleistung Wp/m² verlegt**
  (planerisch wichtiger als CHF/kWp, weil er bestimmt, wieviel kWp auf die gegebene Flaeche passt):
  - **Typ B dachintegriert:** PREFA Solardachplatte gross **~170 Wp/m²** (5.88 m²/kWp) / klein
    **~146 Wp/m²** (6.84 m²/kWp), 12.6 kg/m², ab 17° (31 %), **keine Durchdringung/keine separate
    PV-Statik**; Alternative Eternit Sunskin roof GG-L.
  - **Typ C transparent:** SI-Saphir Doppelglas **~120 Wp/m²** (180 Wp/1.5 m²) bei **40 % Lichtdurchlass**
    — Transparenz kostet ~40 % Flaechenleistung; DIBt Z-70.3-204, Ueberkopf-/Fassaden-tauglich, 7200 Pa.
  - **Typ D Fassade:** BIPV strukturiertes Schmelzglas, **× ~0.6–0.7 Ertragsfaktor** (senkrechter
    Winkel); real ref Amt f. Umwelt+Energie Basel (Spiegelgasse 15, 2021).
- **Modul-Preis-Anker (belegt):** Eternit Sunskin roof GG-L 195W = **339 CHF netto/Modul ≈ 1'740
  CHF/kWp _nur Modul_** (solar-home.ch 17.11.2024, −20 %-Aktion). Systemband hergeleitet **~3'000–4'500
  CHF/kWp installiert** BIPV (~1.6–2.5× Modulpreis) — zwischen Standard-Aufdach (~2'255) und
  Solarziegel-Tile (~7'370). Merksatz: **je kleinteiliger/integrierter/vertikaler, desto teurer/kWp.**
- **Fachsignatur-Punkt eingewoben:** Ueberkopf-PV (Pergola/Vordach) ist zugleich Ueberkopfverglasung
  → als Bauteil der Gebaeudehuelle mit Glas-Bauzulassung (VSG/absturzsichernd) behandeln, nicht als Anbauteil.
- ⚠ Datenstaende der Belege >18 Mt. (PREFA 09.2023 / SI-Saphir 06/2015 / Eternit 11/2024) — Wp/m²
  sind stabile Konstruktions-Kennwerte, Modul-**Preise** vor Zitat aktuell nachschlagen. Offen bleibt
  ein **installierter System-CHF/kWp** fuer B/C/D aus einer realen JANS-Schlussabrechnung.
- Geaendert: [[energie-pv-eignung-typenwahl]] (NEU §1b Flaechenleistung-Tabelle, §3 Eternit-Zeile +
  Modul-vs-System-Lehre, Datenstand, Frontmatter). Register: curriculum (E11 [x]), QUESTIONS (D5/D5
  ✓ Typ B/C/D), INDEX (Artikel-Zeile), raw/_INGESTED (Run-17-Zeile).
- **Naechster Lauf (Run 18):** Rotation → **Recht/Norm (PL-02)** oder Prioritaets-Vorzug **M2**
  (Anbindung machbarkeit/ankaufspruefung schaerfen). Energie-Rest fuer spaeter: realer KISPI-EVEN-
  Screenshot-Walkthrough (D6-Offen) + installierter System-CHF/kWp aus JANS-Schlussabrechnung (D5-Offen).

## 2026-07-08 — Training Run 16 (Kartenportale/PL-01): Connector rechnet senkrechten Abstand Linie↔Parzellengrenze (K5-Rest/E4)
- Schwerpunkt **Kartenportale** (Rotation waere Brandschutz gewesen, aber PL-03 ist bis 08/2026
  eingefroren — BSV-2026 → 2027/Marschhalt Crans-Montana; Kartenportale hat Prioritaet und eine
  konkrete testbare Luecke). **Connector-Schritt: ja.** Quellen: geo.admin `identify`
  (`returnGeometry=true`, Parzellenpolygon Esri-rings EPSG:2056) + OGD-WFS 0158/0152/0153/0150/0185
  (Live-Test 2026-07-08).
- **K5-Rest geschlossen (E4):** der Connector `geo-zh.mjs --produkt baulinien` misst jetzt den
  **senkrechten Abstand Linie↔Parzellengrenze** statt nur «Linie im ±150-m-Fenster».
  - `identifyParcel`: `returnGeometry=true` → Parzellenpolygon (Esri-`rings`) neben EGRID.
  - Geometrie-Helfer (reines JS, keine neue Abhaengigkeit): Punkt-zu-Segment + Segment-Schnitt-Test
    → **Segment-zu-Segment-Distanz**, planar in EPSG:2056 (metrisch exakt auf lokaler Skala).
  - `fetchBaulinien(e,n,half,parcelRings)`: je Treffer **`dist_m`** (0.1-m-gerundet), Liste **nach
    Abstand aufsteigend sortiert**, je Layer **`<layer>_dist_min_m`** + Flag **`gemessen`**;
    `dist_m=0` = Linie beruehrt/schneidet die Parzelle (baurechtlich bindend). Log-Zeile «naechste X m».
- **Verifikation (Verifier-Signal):** unabhaengige Zweitmethode (Vertex-zu-Segment beidseitig) an
  Seuzach Kat. 2304 → **29.8 m = 29.8 m** deckungsgleich. Regression `--produkt zonenplan` + EGRID-
  Aufloesung grün (returnGeometry bricht nichts).
- **Benchmarks (2026-07-08):** 0 m Dorfstrasse 1 Seuzach (Baulinie durch Parzelle = bindend) ·
  29.8 m Kirchgasse 2 Seuzach · 116.2 m Baulinie + 105.6 m Waldgrenze Giebelweg 12 Langnau (Hanglage) ·
  43.9 m Gewaesserabstand + 45.9 m Gewaesserraum Zuercherstrasse 1 Wetzikon (Parz. 6505, BFS 121).
- Register: QUESTIONS (A/K5 senkr. Abstand ✓ + NEU E4 ✓), curriculum (K5-Rest [x] Run 16), INDEX
  (Baulinien-Zeile), `raw/_INGESTED` (Run-16-Zeile), Wiki [[kartenportale-baulinien-abstandslinien-zh]]
  (neuer Abschnitt + Benchmark-Tabelle + Grenzen). **Speist Agent `baulinien-analyst` / M2.**
- **Naechster Lauf (Run 17):** Rotation → **Energie** (PL-04) hat Prioritaet; offene D5 Typ B/C/D
  CHF-Benchmark oder KISPI-EVEN-Walkthrough. Alternativ M2 (machbarkeit-Anbindung jetzt mit
  gemessenem Baulinien-Abstand als Baustein). Kartenportale-Rest: `COUNT=10`-Kappung + proj-
  Abstandslinien an realem Revisionsfall.

## 2026-07-06 — Training Run 15 (Recht/Norm/PL-02): NEU Dispensrecht-Artikel (R3) · Klima-PBG-Korrektur · SZ-Waldabstand
- Schwerpunkt **Recht & Norm** (Rotation: Run 14 Energie → Run 15 Recht/Norm). Connector-Schritt:
  **nein** (Domaene hat keinen Connector). Quellen: `05_Dispensrecht/BRKE_I_0247_2010_722.pdf` +
  2 Screenshots (Baurekursgericht-ZH-DB); `02_Schwyz/Art 35 Waldabstand.png`; Web
  baurekursgericht-zh.ch, zhlex LS 700.1, saputelli-baurecht.ch (PBG aktuell 3/2021),
  espacesuisse.ch/kantonsrat.zh.ch (Klima-PBG), sz.ch (Waldabstand).
- **R3 — Dispensrecht erschlossen (Luecke geschlossen):** war nur `[~]` (BRKE verortet). NEU
  **[[recht-norm-dispensrecht]]** (established): die **3 Ausnahme-Institute** getrennt (§ 220 PBG
  Dispens innerhalb Bauzone / § 357-358 Besitzstand / Art. 24 ff. RPG ausserhalb Bauzone); **§ 220
  3-Stufen-Pruefung** (besondere Verhaeltnisse Topographie/Form/Lage — NICHT Vielzahl-Faelle/Haerten/
  persoenl. Verhaeltnisse · negative Voraussetzungen Abs. 2/3, keine Nachbar-Zustimmungsabhaengigkeit ·
  Ermessen Gemeinde, freie Kognition der Rechtsmittelinstanz); **ausnahmebewilligungs-feindliche**
  zone-praegende Normen (Zufahrt/Immissionen/Einordnung/aeussere Abmessung = Hoehe/Laenge/Abstand/
  Ausnuetzung); Benchmark **BRKE I 0247/2010** (Doppel-EFH W2bII, Dispens verweigert = Vielzahl-Faelle;
  best. VB.2011.00041); Beschaffung **Baurekursgericht-ZH-DB** (login-frei, 4 Sucheinstiege,
  Rechtsgebiet-Direktlink); Harmonisierungs-Falle (nicht-harmonisierte BZO → PBG-Fassung bis
  28.02.2017); JANS-Workflow M2 (behoerden-vorabklaerung / machbarkeit Risiko-Flag).
- **B2 — Klima-PBG Datenstand korrigiert:** Revision «Klimaangepasste Siedlungsentwicklung» ist
  **in Kraft seit 01.12.2024** (RRB 998/2024, Kantonsrat 121:49) — nicht mehr «in Bewegung/kein
  Datum» (Run-11-Stand korrigiert). Direkt anwendbar: Gruenflaechen erhalten/aufwerten, reduzierte
  Pflanzabstaende 4/2 m + Strassenabstaende, **§ 238a PBG** Begruenung Aussenraum; daneben kommunale
  Musterbestimmungen/BZO → [[recht-norm-quellenlandkarte]].
- **B4 — SZ-Waldabstand ergaenzt + Mislabel korrigiert:** § 35 PBV SZ (400.111) regelt die
  **Waldgrenze** (2 m ausserhalb Stockgrenze) + Waldabstandslinie — **nicht** das Baumass; das
  numerische **Waldabstand-Baumass = § 67 PBG SZ = 15 m** (Ausnahme-Minima Hauptbau 10/8 m, Nebenbau
  6/4 m). SZ-Tabelle in [[recht-norm-quellenlandkarte]] berichtigt, aktuelle SRSZ-PDF-Links ergaenzt.
- Register: INDEX, QUESTIONS (R3 ✓/B4 ✓/B2 ✓), curriculum (R3 [x], R2/R6 ergaenzt), raw/_INGESTED
  (+3 Zeilen), Output `2026-07-06_training-run15.md`.

## 2026-07-04 — Training Run 14 (Energie/PL-04): NEU EVEN-Bedienungsartikel (D6) · MuKEn-2025-Praezisierung
- Schwerpunkt **Energie** (Rotation: Run 13 Kartenportale → Run 14 Energie, Prioritaetsdomaene).
  Connector-Schritt: **nein** (Energie hat keinen Connector). Quellen: EnDK-Schulung «EVEN —
  Bewilligungsbehoerden Kantone mit Privater Kontrolle» V1.4 (13.10.2025, 68 Folien); AG-Schulung
  v0.40; zh.ch/energienachweise; energie-zentralschweiz.ch/vollzug/even; energiehub-gebaeude.ch.
- **D6 — EVEN-Bedienung erschlossen (Luecke geschlossen):** EVEN (`energievollzug.ch`) ist seit
  01.01.2026 der verbindliche ZH-Kanal, war aber nur als «Fakt» dokumentiert, nicht in der Handhabung.
  NEU **[[energie-even-plattform-bedienung]]** (established): was EVEN ist/abdeckt, Teilnehmer (alle
  Kantone ausser BE + FL), **Projektstruktur** (Projekt→Gebaeude je EGID→Zone→Teilnachweis), **Rollen**
  (Projektkoordination/Nachweisverfassung; Vollzugsverantwortung/interne+externe Pruefer; **Private
  Kontrolle** fuer ZH; Admin), **Ablauf Happy Case**, **Aktionen** (Nachtrag/Beanstandung/Ausfuehrungs-
  +Vollzugskontrolle), **Statusmodell + Freigabe-Kaskade** (Bewilligungs-/Baufreigabe-/Bezugsbereit),
  Portalfunktionen (kein Undo/Offline, alles protokolliert, GWR-Anbindung), JANS-Merkposten (KISPI).
- **D1/E5/D8 — MuKEn 2025 praezisiert:** Verabschiedung **EnDK-Plenum 29.08.2025** (statt grob
  «08/2025»); Neubau neu **Eigenstrom 20 W/m² EBF** (Art. 1.25, Verdoppelung ggü. 10), Waerme
  vollst. erneuerbar (Art. 1.28), **graue-Energie-THG-Grenzwert** nach Minergie-Reglement ab
  01.01.2025 (Art. 1.39-40, <50 m² EBF befreit), Elektroheizung-Sanierungspflicht 5 J. Klar getrennt:
  **ZH-Ueberfuehrung Stand 04.07.2026 weiter ausstehend** → geltend bleibt MuKEn 2014 (10 W/m²).
  Eingearbeitet in [[energie-energienachweis-zh-formulare]] + [[energie-uebersicht]].
- Register: INDEX (+EVEN-Artikel, MuKEn-Praezisierung), QUESTIONS (D6 ✓, D8/D1 Update), curriculum
  (E5 praezisiert, E10 EVEN ✓), raw/_INGESTED (Schulung V1.4 + Web-Quellen). Output: `outputs/
  2026-07-04_training-run14.md`. **Offen:** D5 Typ B/C/D, KISPI-EVEN-Screenshot-Walkthrough.

## 2026-07-02 — Training Run 13 (Kartenportale/PL-01): NEU GWR-Artikel · GVOLNORM/GVOLSCE-Decode im Connector (getestet)
- Schwerpunkt **Kartenportale** (Rotation: Run 12 Brandschutz → Run 13 Kartenportale, Prioritaets-
  domaene). Connector-Schritt: **ja** (`gwr-bund.mjs` erweitert + getestet). Quellen: Merkmalskatalog
  eidg. GWR v4.2 (housing-stat.ch/files/881-2200.pdf, S. 63f.); Live-Benchmarks am Geodienst.
- **K9 — GWR-Gebaeudedaten als Planungsgrundlage erschlossen (Luecke geschlossen):** GWR war Nr. 6
  der M1-Checkliste, hatte aber **keinen eigenen Wiki-Artikel** (Backlink zeigte auf
  `energie-uebersicht`). NEU **[[kartenportale-gwr-bund]]** (established): Bezugswege EGID/Adresse/
  EGRID, planungsrelevante Felder (Baujahr, EBF, Volumen, Waermeerzeuger/Energietraeger), EPROID-
  Grenze, Wozu-im-Workflow (EN/EVEN, Kostenschaetzung, Umnutzung). M1-Backlink umgehaengt.
- **Connector `gwr-bund.mjs` verbessert + getestet:** GWR-Volumen war als Rohcode ausgegeben. Neu
  Decode **GVOLNORM** (961 SIA 116 / 962 SIA 416 / 969 unbekannt) + **GVOLSCE** (851-878 Datenquelle,
  z.B. 869 Baubewilligung) aus dem Merkmalskatalog belegt. **Befund (Leitplanke bestaetigt):**
  KISPI-Volumen traegt Norm **969 = unbekannt** (nicht SIA 416, wie man raten wuerde) — vor
  `Volumen × Kennwert` immer pruefen. Merkregel **Baujahr schlaegt Bauperiode** (KISPI: 8023
  «2016-2020» vs. Baujahr 2024).
- **Benchmarks (2026-07-02):** KISPI EGID 302064023 (Krankenhaus, Baujahr 2024, EBF 78'834 m2,
  WP/Erdsonde+Gas-Redundanz, Volumen-Norm 969) + Giebelweg 12 EGRID CH879777718909 → 2 Gebaeude
  (Haupthaus EGID 57977 EFH 1936/Gas + Nebenbau 210237818); Mehrdeutigkeit korrekt behandelt.
  Damit ist die M1-Kette auch fuer die GWR-Stufe end-to-end validiert.
- Register gepflegt: INDEX (+GWR-Artikel), M1-Checkliste (Backlink), curriculum (K9 ✓), QUESTIONS
  (K9 ✓ + Offen EWID/Katalog-v5.0), raw/_INGESTED (+Merkmalskatalog), connectors/README (Decode +
  Benchmarks). Report `outputs/2026-07-02_training-run13.md`.
- **Naechster Lauf (Run 14):** Rotation → **Energie** (Prioritaet). Offene Energie-Punkte: D5 Typ
  B/C/D PV-CHF-Benchmark, D6 EVEN-Bedienung am KISPI-Fall, D8 graue-Energie-ZH-Grenzwert.

## 2026-07-01 — Wissens-Health-Check (Phase 1): gesund · 3 Hygiene-Punkte
- Audit ueber 16 Wiki-Artikel + State-Files. Ampel A🟡 B🟡 C🟡 D🟢 E🟢 F🟡 G🟢. Keine harten
  Widersprueche, keine Orphans, saubere RAW-Coverage/Compounding-Historie. Top-3: (1) toter
  Connector-Verweis `cad/terrain.sh` in `kartenportale-sharepoint-ablage` (existiert nicht);
  (2) malformierter Pfad-Backlink `[[…/geo-zh.mjs]]` in `kartenportale-bund-geodaten`;
  (3) `kartenportale-sharepoint-ablage` ohne YAML-Frontmatter. Weiter: BFS-192-Egg-Provenienz
  pruefen (real 151), Promotion-Kandidat `recht-norm-baurechtsanalysen-benchmarks` emerging→established,
  QUESTION K6/A5 faktisch abgeschlossen (noch `[~]`). Report `outputs/2026-07-01_health-check.md`.
  **Phase 2 (Fixes) nur interaktiv.**

## 2026-06-30 — Training Run 12 (Brandschutz/PL-03 + Pivot Kartenportale): BSV-2026-Stand verifiziert (Marschhalt Crans-Montana) · NEU M1-Grundlagen-Checkliste «neue Parzelle»
- Schwerpunkt **Brandschutz** (Rotation: Run 11 Recht/Norm → Run 12 Brandschutz), inhaltlich
  erschoepft → **Doppel-Fokus mit Kartenportale (Prioritaet)**. Connector-Schritt: **ja**
  (geo-zh.mjs end-to-end getestet). Quellen: bsvonline.ch «Information BSV 2026», VKG-Medien-
  mitteilung «Marschhalt bei Liberalisierungsbestrebungen» 06.01.2026; eigene Connectoren.
- **C6/B5 — BSV-2026-Stand verifiziert:** Projekt **verschiebt sich von 2026 auf 2027**, doppelt
  gebremst: (1) fachliche **Konsolidierungsphase** (offiz. Zeitplan: pol. Vernehmlassung 08–11/2026,
  IOTH-Genehmigung 03/2027, Inkraft 2027); (2) politischer **Marschhalt bei den Liberalisierungen**
  nach dem **Brandunglueck Crans-Montana** (VKG-MM 06.01.2026) — Entwurf risikoorientiert neu, neuer
  Terminplan erst nach Brand-Untersuchung. **Konsequenz JANS:** bis Inkrafttreten **BSV 2015/17/22**,
  **keine antizipierten Erleichterungen einplanen** → `brandschutz-pl03-wegweiser` §1 (last_updated 2026-06-30).
- **M1 — NEU `kartenportale-grundlagen-checkliste-neue-parzelle.md` (established):** Standard-Output
  «was JANS bei einer neuen Parzelle IMMER zuerst holt» — 8 Pflicht-Grundlagen (EGRID → OEREB →
  Zonenplan → Baulinien → amtl. Vermessung → DTM/Orthofoto → GWR → Behoerden), je mit konkretem
  Connector-Befehl; SZ-Kurzvariante; verankerte Identifikatoren-Regel.
- **Connector-Smoke-Test (2026-06-30):** geo-zh.mjs an **Giebelweg 12, Langnau a.A.** validiert:
  Adresse → **EGRID CH879777718909 · Parz. 3338 · BFS 136**; `--produkt zonenplan` → **W/1.5 (W1),
  BMZ 1.5, GH 4.5, FH 7, ES II, inKraft, keine Revision**; login-frei < 5 s. Als wiederholbarer
  Funktionstest in den M1-Artikel eingewoben.
- Register: `INDEX.md` (M1 + Brandschutz-Zeile), `QUESTIONS.md` (C6/B5 `[~]`-Update),
  `curriculum.md` (M1 `[x]`, B5-Update), `raw/_INGESTED.md` (2 Run-12-Zeilen), Output
  `outputs/2026-06-30_training-run12.md`.
- **Naechster Lauf:** Energie (PL-04, Prioritaet) — D5 PV-Benchmark Typ B/C/D, D6 EVEN am KISPI-Fall.

## 2026-06-28 — Training Run 11 (Recht/Norm/PL-02): LRV-ELI vollendet · ZH-RPG-2-Zahlen + Klima-PBG · belegte SZ-Messweisen · SZ-Benchmark Willerzell
- Schwerpunkt **Recht/Norm** (Rotation: Run 10 Energie → Run 11 Recht/Norm). Kein Connector-Schritt.
  Quellen: fedlex.admin.ch (LRV), zh.ch (RPG-2-Umsetzung), Screenshots `PL-02/01_Gesetze/02_Schwyz`,
  reale Baurechtsanalyse `08_Baurechtsanalysen/230207_Willerzell.pdf`.
- **B1 vollendet — LRV-ELI:** 814.318.142.1 = fedlex `cc/1986/208_208_208`; PDF-A Stand **20260101**
  getestet (HTTP 200, 1.5 MB). **ELI-Falle dokumentiert:** ELI-Jahr = AS-Publikation **1986** ≠
  Erlassdatum 1985. Damit ist das SR→fedlex-ELI-Mapping der PL-02-Bundeserlasse **komplett**.
- **B2 vertieft — ZH-RPG-2 in Zahlen:** Stabilisierungswert **40'807 Gebaeude / 2'594 ha** versiegelt
  (Bezug 29.09.2023); Kompensation neue Baute ↔ Rueckbau **≥ 6 m²**; **Abbruchpraemie ZH ab 01.07.2026**
  (bereits erfolgte Rueckbauten nicht entschaedigt); **Bestandesschutz > 30 J direkt seit 01.01.2026**.
  NEU erfasst: parallele ZH-PBG-Revision **«Klimaangepasste Siedlungsentwicklung»** (teils direkt im
  Baubewilligungsverfahren, teils kommunale Nutzungsplanung).
- **R2 vertieft (NEU QUESTIONS B4) — belegte SZ-Mass-Definitionen** aus `02_Schwyz`-Screenshots
  (Stand SRSZ 1.2.2021): **§ 31i GFZ** (ΣGF/aGSF; GF = HNF+NNF+VF+KF+FF), **§ 31g BMZ**, **§ 60
  Gebaeudehoehe** (Fassadenmitte → Dachhaut; GA 50 % GH min 3 m), **Art. 42 Firsthoehe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** Dienstbarkeit. Kernbefund: **SZ ist
  IVHB-aligned (GFZ/BMZ), AZ kantonal abgeschafft (RRB 457/2014)**. SZ-Messweisen-Block in
  `recht-norm-quellenlandkarte.md` von Stichwort-Liste zu Mass-Tabelle ausgebaut.
- **R4b — SZ-Benchmark Willerzell/Reckholdern 3301** (Bezirk Einsiedeln) gelesen: dreistufige
  SZ-Quellen-Trias Kanton/Bezirk-Baureglement/QGP; Landhauszone L 0.2 (AZ 0.2, GA 4/8 m, Bauhoehe 6 m,
  GZ 1.5); **Planungs-Trap:** alte Bezirks-Zonen tragen trotz kant. AZ-Abschaffung weiter eine AZ.
  NEU Sektion in `recht-norm-baurechtsanalysen-benchmarks.md`.
- ⚠ Datenstand: SZ-Mass-Def. SRSZ 1.2.2021 (> 18 Mt.) → vor Zitat aktuelle SRSZ-Fassung pruefen.
- Register gepflegt: INDEX, QUESTIONS (B1 ✓ / B2 / B4), curriculum (R2 ✓ / R4 ✓), `_INGESTED.md`
  (4 Run-11-Zeilen), Output `outputs/2026-06-28_training-run11.md`.
- **Naechster Lauf:** Brandschutz (PL-03) — BSV 2026 bei definitiver Publikation nachziehen.

## 2026-06-26 — Training Run 10 (Energie/PL-04): Private Kontrolle Energie ZH + graue-Energie-Planungsgrundlage
- Schwerpunkt **Energie** (Rotation: Run 9 Kartenportale → Run 10 Energie). Kein Connector-Schritt
  (Energie hat kein eigenes Tool). Quellen: PL-04 `_Private Kontrolle` (erstmals eingearbeitet) +
  `_Heizwaermebedarf` (graue Energie) + Minergie-Planerwissen 2023.
- **D7 geloest — NEU `wiki/energie-private-kontrolle-zh.md` (established):** wer den Energienachweis
  ZH unterzeichnet. Belegt aus Merkblatt Baudirektion ZH/AWEL «Liste der Befugten» (Stand **April
  2025**) + **BBV I § 4-7** (LS 700.21). Inhalt: drei Unterschriften (Bauherr Hauptformular § 6 BVV /
  Projekt-Verantw. + **Befugte** technische Formulare § 4 BBV I), **Befugnis-Matrix** Wä/He/Kl/Bl/Lä ↔
  EN-101…141/S/LN, **interkantonale Geltung** (Firmen nur ZH; natuerliche Personen ZH/AR/GL/GR/SZ/SG —
  fuer SZ-Projekte relevant), Minergie-Label entlastet (EN-101…111 entfallen).
- **D8/D1 teil — graue Energie als Planungsgrundlage** in `energie-uebersicht.md`: SIA-2040-Richtwerte
  Wohnen + reales JANS-Oekobilanz-Deliverable **Schlierenweg 31** (ZPF Ingenieure, R. Thalmann,
  28.03.2022; Erstellung inkl. PV 6.0 kg CO₂-eq / 20 kWh / 12'000 UBP pro m²·a, Amortisation graue
  Energie via PV-Ueberschuss < 30 J). **Methodik-Tiefe bewusst in KB `wissen/energie` `[[graue-energie]]`
  belassen — kein Doppel**; Pa.Iv. 20.433 → kommender ZH-Grenzwert vermerkt.
- Querverlinkung gesetzt: `energie-uebersicht` + `energie-energienachweis-zh-formulare` →
  `[[energie-private-kontrolle-zh]]`; INDEX/QUESTIONS/curriculum/_INGESTED nachgefuehrt.
- **Naechster Lauf:** Rotation → **Recht/Norm (PL-02)** (offen: ZH-PBG-Fassung bei RPG-2-Publikation,
  LRV-ELI). Energie-Reste: D5 Typ B/C/D PV-Benchmarks, D6 EVEN-Bedienung am KISPI-Fall, D3 Skill-Frage.

## 2026-06-24 — Training Run 9 (Kartenportale/PL-01): A6 Revision + K5 Baulinien + K8 Formate + E3 (Connector)
- Schwerpunkt **Kartenportale**, **mit Connector-Schritt** — alles live gegen die OGD-Endpunkte
  getestet, nichts ungetestet committed.
- **A6 geloest:** proj-Grundnutzung `0156_proj` kantonsweit aktiv → Connector `--produkt zonenplan`
  meldet jetzt automatisch eine **laufende BZO-Revision** (geplante Zone · Phase · Auflage ·
  Dokument-Link). Benchmark **Seuzach Kat. 2304** (K Kernzone, `Aenderung_Bauordnung_Zonenplan`,
  Auflage 01.11.2024). Vorher/Nachher fuer `machbarkeit` Typ A.
- **K5 geloest:** **NEU** `--produkt baulinien` (OGD-WFS 0158 Verkehrsbaulinie / 0152 Wald- /
  0153 Gewaesserabstand / 0150 Waldgrenze / 0185 Gewaesserraum), **±150-m-Fenster** (Linien neben
  Parzelle), `--radius` ueberschreibt. Benchmarks Langnau (7 Baulinien+Waldgrenze) / Seuzach (10).
  **NEU** `wiki/kartenportale-baulinien-abstandslinien-zh.md` (**established**).
- **K8 geloest:** Geodaten-Formate-Kurzleitfaden (GeoJSON/INTERLIS/DXF/GeoTIFF/XYZ-LAZ/LandXML/
  GeoPackage) in `kartenportale-geoportale-uebersicht.md`.
- **E3 geloest:** STAC-bbox adaptiv (Fenster verdoppeln bei 0 Kacheln bis Max); Befund: Kacheln
  ~1 km → Sicherheitsnetz, am Benchmark nicht ausgeloest, kein Regress.
- **A5 abgeschlossen (negativ):** ObjektwesenZH/Grundbuch nicht anonym automatisierbar
  (Interessennachweis Art. 970 ZGB) → manueller Behoerdenweg, bleibt `speculative`.
- Register: `INDEX.md`, `QUESTIONS.md` (A6/K5/K8/E3 ✓, A5 [~]), `curriculum.md` (K4/K5/K8 ✓),
  `raw/_INGESTED.md` (PL-01 Run9-Zeilen), `connectors/README.md`. Output `outputs/2026-06-24_training-run9.md`.
- **Quellen:** maps.zh.ch/wfs/OGDZHWFS (GetCapabilities + GetFeature, Datensaetze 0156/0156_proj/
  0158/0152/0153/0150/0185, GeoJSON EPSG:2056) — live 2026-06-24.

## 2026-06-22 — Training Run 8 (Brandschutz/PL-03): Wegweiser angelegt (C1/B2/B3 + QSS)
- Schwerpunkt **Brandschutz**, kein Connector-Schritt. PL-03 erstmals systematisch erschlossen
  (war zuvor nur «Verweis auf Skill `brandschutz`»).
- **C1/B1 ENTSCHIEDEN:** schlanker **Wegweiser** statt Doppel — Planungsgrundlagen/Prozess/QSS
  hier, Fach-/Detailarbeit (EI/RF/Brandabschnitte/W3xx/DoP/Ertuechtigung) im Skill `brandschutz`.
- **NEU** `wiki/brandschutz-pl03-wegweiser.md` (**established**): §1 VKF-5-Teil-Struktur ↔
  PL-03-Ordner + Rev. 2017/2022 + **BSV-2026-Stand** (Inkraft-Antrag 03/2027, bis dahin BSV 2015)
  + Online (bsvonline.ch/brandschutznachweis.ch); §2 Brandschutznachweis (Anleitung V.3 A–F,
  wann/Inhalt/Plaene SIA 400, Vorlage MFH-5g-RF1 V.3); §3 **QSS 1–4** (BSR 11-15 Tab. 3.3.1/3.4.1,
  **Healthcare=Beherbergung [a]→QSS 2–3**); §4 RF-Klassifikation-Spickzettel; §5 Abgrenzung.
- Register: `INDEX.md` (PL-03-Eintrag), `QUESTIONS.md` (C1✓/C3✓/C4✓/C5✓, neu C6 BSV 2026),
  `curriculum.md` (B1/B2/B3/B4✓, neu B5), `raw/_INGESTED.md` (PL-03 offen→teilweise, 5 Quellen).
- **Quellen:** PL-03 (Norm 1-15, BSR 11-15/13-15, Anleitung Brandschutznachweis V.3, Merkblatt
  Klassifikation V.2, MB 2003-15) + Web bsvonline.ch/vkg.ch (BSV 2026).

## 2026-06-20 — Training Run 7 (Recht/Norm/PL-02): fedlex-ELI-Mapping (B1) + RPG 2 (B2) + 06_Richtlinien (B3)
- Schwerpunkt **Recht/Norm**, kein Connector-Schritt (aber Tooling-Fund fedlex-Redirect).
- **B1 GELOEST:** SR→fedlex-ELI fuer alle relevanten Bundeserlasse belegt — BehiG `cc/2003/667`,
  NHG `cc/1966/1637_1694_1679` (Aend. AS 2025 429), NHV `cc/1991/249_249_249`, GSchG
  `cc/1992/1860_1860_1860` (Stand 01.08.2025), GSchV `cc/1998/2863_2863_2863`, LSV
  `cc/1987/338_338_338` (Aend. AS 2023 582), RPV `cc/2000/310` (Teilrev. AS 2025 659).
  **NEU** fedlex-Redirect `redirect/rs/<SR>/de` (SR→geltende Fassung); AS-/OC-Fundstelle-Schema;
  LSV≠LRV-Verwechslungshinweis.
- **B2 teil-geloest:** NEU Abschnitt „RPG 2 — Inhalt & ZH-Umsetzung" — Bund-Etappen 01.01./
  01.07.2026, Stabilisierung **max. 2 %** ausserhalb Bauzone (Basis 29.09.2023), Abbruchpraemie,
  RPV-Teilrev. AS 2025 659 (BR 15.10.2025); ZH passt PBG + Richtplan an, **Umsetzung noch in
  Erarbeitung** (Stand 2026-06-20). Quellen are.admin.ch / espace-suisse / uvek / zh.ch.
- **B3 GELOEST:** NEU Abschnitt „06_Richtlinien — Wegweiser" (BfU/Stadt-ZH-Absturz+RFB/AWEL/
  Minergie/GVZ→`brandschutz`/2000-Watt/Lignum/SWKI…), belegt aus dem Ordner.
- Alle in `[[recht-norm-quellenlandkarte]]` (bleibt **established**, last_updated 2026-06-20).
  Register QUESTIONS/curriculum/INDEX/_INGESTED gepflegt. Naechster Lauf → Brandschutz (PL-03, C1).
- Output: `outputs/2026-06-20_training-run7.md`.

## 2026-06-18 — Training Run 6 (Energie/PL-04): Brandschutz-Solar (E6) + PV-Benchmarks (D5) + EN-104
- Schwerpunkt **Energie**, kein Connector-Schritt. Die beiden echten Energie-Restluecken geschlossen.
- **E6 GELOEST:** NEU `wiki/energie-pv-brandschutz.md` (**established**) aus **Swissolar STP V4.00**
  (12/2022, red. 11/2023) zu **VKF-BSM 2001-15** (Rev. 01.01.2022) — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), **Brandmauer-Uebergang** (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  **RWA-Abstand** (Lichtraumprofil), **Feuerwehr/Kennzeichnung ab ≥30 kW**, **Naturgefahren** SIA
  261/261-1 (Hagel HWx, Schnee), Zugaenglichkeit SUVA. Solar-spezifisch, kein Doppel zu Skill
  `brandschutz`. ⚠ DC-Seite bleibt bei Tageslicht unter Spannung.
- **D5 teil-geloest:** Benchmark-Tabelle je Typ in `energie-pv-eignung-typenwahl.md` §3 aus zwei
  aktuellen SolarApp-Vorprojekten — **Indach-Tile** Reckholdern/Einsiedeln SZ 2024 (7.9 kWp,
  981 kWh/kWp, ~7'370 CHF/kWp) + **Aufdach** MFH Basel 2022 (59.93 kWp, 852 kWh/kWp, ~2'255
  CHF/kWp) + Flachdach ewzWHH 2019. Band ~850–980 kWh/kWp; CHF/kWp typabhaengig ~2'000–7'400.
  Offen Typ B/C/D.
- **EN-104** Dimensionierung belegt in `energie-energienachweis-zh-formulare.md`: EBF × 10 W/m²
  (max 30 kW), 8 m²/kW mono / 16 m²/kW Duennschicht, Befreiung/Alternativen; realer Beleg
  Einsiedeln Parz. 3301.
- **MuKEn 2025** Datenstand (Web 18.06.2026): EnDK 08/2025 verabschiedet, Inhalte (graue Energie/
  erneuerbare Waerme/mehr Eigenstrom), ZH-Ueberfuehrung ausstehend — in uebersicht/formulare/
  QUESTIONS/curriculum nachgezogen.
- Register: INDEX (neuer Artikel), QUESTIONS (C2/E6 ✓, D5 ~, D1-Update), curriculum (E6 ✓, E7 ✓
  neu, E5-Update), _INGESTED (4 PL-04-Quellen). Output `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training Run 5 (Kartenportale/PL-01): kommunaler ZH-Zonenplan GELOEST (A2/E2 ✓)
- Schwerpunkt **Kartenportale**, **Connector-Schritt**. Die lange offene Luecke A2/E2
  (login-freier kommunaler ZH-Zonenplan/BZO; `wms.zh.ch` = HTTP 401) ist **geloest**: ueber den
  **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz **0156** `arv_basis_np_gn_zonenflaeche_f`
  als **GeoJSON, login-frei** — derselbe WFS wie bei den Baulinien (0158).
- Liefert je Zone **mehr als der OEREB-PDF**: kommunale + kantonal harmonisierte Zone, Dichtemass
  (**BMZ** *oder* **AZ** + Vollgeschosse), Gebaeude-/Firsthoehe, Gewerbeanteil, Rechtsstatus,
  Festsetzungs-/Genehmigungsdatum; + Datensatz **0154** Empfindlichkeitsstufe Laerm (ES).
- **Connector `geo-zh.mjs`:** neues Produkt **`--produkt zonenplan`** (Mini-BBOX ±2 m, BMZ- und
  AZ-System gemappt, GeoJSON-Ablage mit `--out`), end-to-end getestet.
- **Benchmarks (2026-06-16):** Langnau a.A. Kat. 3338 (W/1.5→W1, BMZ 1.5, GH 4.5, ES_II, inKraft)
  + AZ-Gemeinde Egg (WG60→WG3, AZ 60/3 VG, ES_III, Revision 2024/25).
- **NEU** `wiki/kartenportale-zonenplan-zh.md` (established); bund-geodaten + geoportale-uebersicht
  + connectors/README aktualisiert; INDEX/QUESTIONS (A2/E2 ✓, neu A6)/curriculum (K2 ✓)/_INGESTED
  gepflegt.

## 2026-06-12 — Training Run 4 (Energie/PL-04): EN-ZH Fachformular-Liste + EVEN (D4 ✓)
- Schwerpunkt **Energie**. Aus den Original-PDF (PL-04/_Formulare Kt. ZH) die **vollstaendige
  EN-Fachformular-Liste** belegt erfasst: EN-101a/b/c · EN-102a/b · EN-103/EN-LCC-ZH/EN-120 ·
  EN-104-ZH · EN-105/EN-110-ZH · EN-111 · EN-112/131/132/133/134/135/141 · S/LN-1 — je mit
  Inhalt, Schwellenwert und Rechtsbezug (EnerG/BBV I/WDV), Quelle EN-ZH-Hauptformular S. 2-4
  (Version Juli 2022). Detail EN-105 (Lueftung, WRG ≥ 70 %, Aug 2017) und EN-110-ZH
  (Kuehlung/Befeuchtung, nur Bestand, Sept 2022) dokumentiert.
- **Datenstand-Update (zentral):** Kt. ZH wickelt den Energienachweis **seit 01.01.2026 ueber die
  Plattform EVEN** (`energievollzug.ch`) ab; EN-101…EN-141 dort digital, PDF nur noch fuer
  Ausnahmen (EN-104-ZH, EN-110-ZH, WTA, Ausfuehrungskontrolle, Lueftung Spezialfaelle). Quelle
  zh.ch/energienachweise (12.06.2026). Erklaert die «EVEN»-Notiz im Projekt 2619-KISPI.
- **NEU** `wiki/energie-energienachweis-zh-formulare.md` (established); `energie-uebersicht.md`
  auf EVEN umgestellt; INDEX/QUESTIONS (D4 ✓, D1-Update, neu D6)/curriculum/_INGESTED gepflegt.
- Reale Verknuepfung: 2619-KISPI (UGZ II.8.a/b/c → EN-ZH/EN-105/EN-110-ZH).

## 2026-06-11 — Baulinien als Vektor: ZH-OGD-WFS inkl. projektierter Linien validiert
- Anfrage Giebelweg 12 Langnau a.A. («genauste/umfangreichste Plattform bis zu geplanten
  Baulinien»): ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` liefert Datensatz 0158 (ARV) **login-frei
  als GeoJSON-Vektoren** — Layer `..._baulinie_l` (rechtskraeftig) und `..._baulinie_proj_l`
  (**projektiert/geplant**). Damit ist die Annahme «geplante Baulinien gibt es nicht als
  Vektoren» fuer Kt. ZH widerlegt; Grenze: Linien im laufenden Festsetzungsverfahren ggf.
  nur bei Gemeinde/Tiefbauamt. Befund Parzelle 3338: alle 5 OEREB-Baulinien-Themen «nicht
  betroffen», projektierte im 400-m-Fenster keine. `kartenportale-geoportale-uebersicht`
  (Checklisten-Eintrag Baulinien) entsprechend ausgebaut.

## 2026-06-11 — Geoshop-Connector: Grundstueckkataster (AV-DXF) automatisiert (A4 ✓)
- **NEU Connector `geoshop-zh.mjs`**: offizieller, login-freier Geodatenshop-Bezug Kt. ZH via
  REST-API `geoservices.zh.ch/geoshopapi/v1` (Doku zh.ch `rest_schnittstelle_ogd_interface.pdf`).
  Bestellung asynchron (POST orders → Polling → Zip-Download); Perimeter je **Gemeinde**
  (COMMUNE/BFS) oder **Parzelle** (PARCEL/EGRID). JANS-Standardfall: Produkt **10016**
  AV-Datenmodell ZH als **DXF (25)** = der bisher manuelle "Grundstueckkataster"-Bezug
  (`<bfs>-<gemeinde>-gds.dxf` + Lieferschein). **DWG bietet der Shop nicht an.**
- Live validiert: Langnau am Albis (BFS 0136), Ablage SharePoint
  `PL - 01 Kartenportale/Grundstueckkataster/Langnau a Albis`.
- geodienste.ch als Alternative kartiert: INTERLIS ganzer Kanton direkt
  (`/downloads/interlis/av/ZH/av_ZH_lv95.zip`); DXF-GEOBAU nur via Formular (max 5 Grundstuecke).
- QUESTIONS **A4 ✓**; `kartenportale-geoportale-uebersicht` um Geoshop-API-Zeile + Checklisten-
  Eintrag ergaenzt; Connector-README erweitert.

## 2026-06-10 — Trainings-Lauf 3: Kartenportale (PL-01) + Connector-Ausbau
- **NEU** `wiki/kartenportale-bund-geodaten.md` (**established**): vier login-freie geo.admin-
  Endpunkte je Parzelle, alle live getestet (Kat. 3338 Langnau a.A. / EGRID CH879777718909):
  **Punkthoehe** swissALTI3D (`/height` → 549.1 m), **Orthofoto** STAC `swissimage-dop10`
  (Jahrgaenge 2019/2022/2025, 0.1+2 m), **DTM** STAC `swissalti3d` (0.5+2 m, +xyz), **Bauzonen CH**
  WMS `ch.are.bauzonen` (PNG). Achsen-Falle dokumentiert: WMS 1.3.0 + EPSG:2056 = BBOX **N,E**.
- **Connector** `geo-zh.mjs`: neues Flag `--produkt height,orthofoto,dtm,bauzonen` (+`--download`),
  `GEO_ADMIN`-Endpunkte, STAC-Asset-Auswahl (kleinste GSD), lon/lat im Geocoding, `coord`/`produkte`
  im JSON. End-to-end getestet inkl. graceful skip bei EGRID-only (kein Crash). README aktualisiert.
- `wiki/kartenportale-geoportale-uebersicht.md`: emerging→**established** (Kernprodukte belegt).
- K2/A2 **teilweise**: harmonisierte Bauzonen geloest; **rechtsverbindlicher kommunaler ZH-
  Zonenplan-WMS offen** (`wms.zh.ch` = HTTP 401) → Grundnutzung bis dahin aus OEREB; QUESTIONS E2.
- Register: INDEX (neuer Artikel), curriculum (K3/K7 [x], K2 [~]), QUESTIONS (A3/A1/E1 ✓, A2 ~,
  neu E2/E3), `_INGESTED.md` (PL-01 + geo.admin). Output: `outputs/2026-06-10_training-run3.md`.

## 2026-06-08 — Trainings-Lauf 2: Recht/Norm (PL-02) vertieft
- `wiki/recht-norm-quellenlandkarte.md`: Status emerging→**established**. Vollstaendige 10-Ordner-
  Karte (01_Gesetze … 10 Laermschutz, Tiefgarage) inkl. ZH-Untergliederung. **SR→fedlex-Tabelle**
  + Bezugsschema: stabile ELI `…/eli/cc/<jahr>/<id>/de` und zitierfaehige datierte PDF-A
  `…/filestore/…/<JJJJMMTT>/de/pdf-a/…` (getestet RPG 20260101). Bestaetigte ELI: RPG
  `cc/1979/1573_1573_1573`, EnG `cc/2017/762`, EnV `cc/2017/763`.
- ⚠ **Datenstand:** RPG 2 in Kraft **01.01. + 01.07.2026** (RPV-Aenderung 15.10.2025 seit 01.01.2026)
  → Ordner-PDF 700/700.1 veraltet; EnG SR 730.0 "Stand 01.01.2026". Quelle: fedlex.admin.ch.
- **NEU** `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (emerging): `08_`-Fallbibliothek als
  Benchmark; **Maur 231024** gelesen → Struktur-Goldstandard Machbarkeitsstudie; 11 Faelle 2010–2023.
- SZ↔ZH-Messweisen (ZH=IVHB / SZ=PBG-Massartikel) + Dispens-BRKE verortet (Tiefe → `baurecht`).
- Register: INDEX (2 PL-02-Artikel), curriculum (R1/R4 [x], R2/R3 [~]), QUESTIONS (B1 ~, neu B2/B3),
  `_INGESTED.md` (PL-02 teilweise + 4 Quellen). Output: `outputs/2026-06-08_training-run2.md`.

## 2026-06-06 — Trainings-Lauf 1: Energie (PL-04) vertieft
- **NEU** `wiki/energie-pv-eignung-typenwahl.md` (**established**): PV-Typenwahl-Entscheidungsbaum
  (A–E), Eignungs-/Ertragswerkzeuge (sonnendach.ch, EnergieSchweiz-Solarrechner Okt 2022,
  uvek-gis, sonnenverlauf, PVSOL), JANS-Benchmark ewzWHH PS 19.36 (2019): ~850 kWh/kWp,
  ~CHF 1'600–2'460/kWp, Lebensdauer 25–30 J, V-Anordnung + Kiesstreifen-Detail.
- `wiki/energie-uebersicht.md`: Status emerging→**established**; **EN-ZH Hauptformular** (ZH-
  Energienachweis) belegt beschrieben (Einreichung DLZ vor Baubeginn, Inhalt/QS-Stufen, Quelle
  endk.ch/zh.ch); U-Wert/Q_H → Verweis auf KB `wissen/energie` (kein Doppel).
- Datenstand MuKEn gesetzt: EnerG ZH seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025,
  ZH-Umsetzung 06/2026 offen.
- Register: INDEX, curriculum (E1–E4 [x]), QUESTIONS (D2 ✓, neu D4/D5), `_INGESTED.md` (3 Quellen).
- Output: `outputs/2026-06-06_training-run1.md`. Naechster Lauf: Recht/Norm (PL-02).

## 2026-06-05 — KB angelegt (Seed aus den vier PL-Ordnern)
- KB-Geruest erstellt: `CLAUDE.md`, `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `training/PROGRAMM.md`, `training/curriculum.md`, `outputs/`.
- Vier Seed-Artikel angelegt (je Domaene einer):
  - `wiki/kartenportale-oereb-egrid-bezug.md` — **established**: validierte Kette
    Adresse→Koordinate→EGRID→OEREB-PDF (Kt. ZH), inkl. realem Beleg Giebelweg 12
    (EGRID CH879777718909, Parz. 3338, BFS 136).
  - `wiki/kartenportale-geoportale-uebersicht.md` — emerging: welches Portal liefert was.
  - `wiki/recht-norm-quellenlandkarte.md` — emerging: Wegweiser in PL-02, verlinkt `[[baurecht]]`.
  - `wiki/energie-uebersicht.md` — emerging: PV-Typen, U-Wert/SIA 380-1, Energienachweis ZH.
- Quelle des OEREB-Bezugswegs: Fachstelle GIS Kt. ZH (Hannah Gies), kein Login noetig.
