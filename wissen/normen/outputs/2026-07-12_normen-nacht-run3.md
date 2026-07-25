# Normen-Nacht-Loop — Run 3 (P2-SIA Tragwerk + Hochbau, Workflow-parallelisiert)

- **Datum:** 12.07.2026, ~22:50–23:30 · **Station:** MacBook Pro · **Modus:** Intensivphase / VOLLGAS-Dauerbetrieb (Rule auto-verbesserungen 260712b/260712c)
- **Stations-Split:** eingehalten — NUR SIA destilliert; DIN/VSS/RAL bleiben Mac Mini.
- **Voraussetzungen:** NAS gemountet; OneDrive-Normenpfad (`SIA_Norm/SIA_Normen/alle/`) via `pdftotext`/OCR lesbar (kein TCC-Block); Tools pdftotext/ocrmypdf/tesseract vorhanden.
- **Kollisionsschutz:** Zur Laufzeit liefen viele parallele claude-Sessions (Dauerbetrieb). Nur FREIE `[ ]`-Positionen genommen (die zahlreichen `[~] in Arbeit`-Claims anderer Sessions gemieden), Batch vorab mit distinktivem Tag «MacBook run3» im Inventar geclaimt, nach Abschluss auf `[x] 260712` finalisiert.

## Methode

Workflow-Pipeline (von Raphael 12.07.2026 autorisiert): 20 Normen × 2 Stufen = **40 Agenten, 0 Fehler, ~23 Min, 6,55 Mio Tokens**.
- **Stufe 1 (Extraktion, `sonnet`):** `pdftotext -layout`; bei reinen Bildscans OCR via `ocrmypdf --force-ocr -l deu` bzw. `pdftoppm` + `tesseract deu`. Grosse Scans auf den normativen Kern begrenzt, gelesener Umfang im Frontmatter `gelesen:` ehrlich vermerkt.
- **Stufe 2 (Verifikation, Hauptmodell Opus):** unabhaengiger Widerlegungs-Agent — versuchte jede Ziffer/Seite/Kennwert am Quell-PDF zu WIDERLEGEN, korrigierte Beanstandungen direkt in der Datei, hob Status auf `established` bzw. haette bei Unbelegbarem auf `speculative` gesenkt.

## Destillate (20 neu, alle `established`)

| Destillat | Norm | Ausgabe | Verdikt | Quelle/gelesen |
|---|---|---|---|---|
| `sia-260-2003` | Grundlagen der Projektierung von Tragwerken | 2003 | bestanden (korr.) | Textlayer; Ziff. 0/2/4 + Anhang A Tab. 1–5 |
| `sia-261-2003` | Einwirkungen auf Tragwerke | 2003 | bestanden (korr.) | Textlayer; Schnee/Wind, Nutzlast-Tab. 8, Erdbeben-Tab. 25–27 |
| `sia-262-2003` | Betonbau | 2003 | beanstandet → korr. | Textlayer; γc/γs, Exposition Tab. 1, Betonsorten Tab. 3, Brand Tab. 15, Überdeckung Tab. 17 |
| `sia-263-2003` | Stahlbau | 2003 | bestanden (korr.) | Textlayer; Werkstoffe Tab. 1–3, Brand (Fig. 15), Erdbeben Tab. 11 |
| `sia-264-2003` | Stahl-Beton-Verbundbau | 2003 | bestanden | Textlayer; Ziff. 0–9 vollständig gegengelesen |
| `sia-265-2003` | Holzbau | 2003 | bestanden (korr.) | Textlayer; Grundsätze Formeln 1–4/Tab. 1, Brand 4.5/Tab. 9 |
| `sia-266-2003` | Mauerwerk | 2003 | beanstandet → korr. | Textlayer; γM=2,0, Brand Tab. 10 (Off-by-one korrigiert) |
| `sia-267-2003` | Geotechnik | 2003 | bestanden | Textlayer |
| `sia-500-2009` | Hindernisfreie Bauten | 2009 | bestanden | OCR/Textlayer; Kernnorm Healthcare/öffentl. Bauten |
| `sia-358-2010` | Geländer und Brüstungen | 2010 | bestanden | Scan → OCR; Absturzsicherung |
| `sia-251-2008` | Schwimmende Estriche im Innenbereich | 2008 | bestanden | Scan → pdftoppm 200 dpi; Tab. 1–3, Nutzungsfristen |
| `sia-252-2002` | Fugenlose Industriebodenbeläge | 2002 | bestanden | Textlayer |
| `sia-253-2002` | Bodenbeläge (Linoleum/Kunststoff/Gummi/Kork/Textil/Holz) | 2002 | bestanden | Textlayer |
| `sia-257-2005` | Maler-, Holzbeiz- und Tapeziererarbeiten | 2005 | bestanden | Textlayer |
| `sia-271-2007` | Abdichtungen von Hochbauten | 2007 | bestanden | Scan → pdftoppm+tesseract; Untergrund Tab. 1 |
| `sia-279-2018` | Wärmedämmende Baustoffe | 2018 | bestanden | Scan → OCR deu; Bemessungswerte |
| `sia-281-2017` | Kunststoff-, Bitumen- und Ton-Dichtungsbahnen | 2017 | bestanden | Scan (bizhub) → OCR aller 20 Norm-Seiten |
| `sia-232-2000` | Geneigte Dächer | 2000 | bestanden | Textlayer; Ziff. 0–5, Tab. 1–9 |
| `sia-329-2018` | Vorhangfassaden | 2018 | beanstandet → korr. | Scan → OCR deu; Ziff. 0–4 + Anhänge A–E |
| `sia-240-1988` | Metallbauarbeiten | 1988 | bestanden | Textlayer; alle 12 S. |

## Verifikations-Verdikte (Widerlegungs-Instanz)

**20/20 verifiziert · 17 bestanden ohne Fehler · 3 beanstandet und am Original korrigiert · 20 established · 0 speculative.**

Keine erfundenen Ziffern/Kennwerte gefunden. Die Korrekturen betrafen ausschliesslich Seiten-/Absatzangaben (Scan-Paginierung, Off-by-one) und Überinterpretationen ggü. dem PDF-Wortlaut:

- **SIA 260** — Tab. 1: Wert 0,70 falsch «Erddruck Typ 3» zugeordnet → richtig günstig wirkender Erddruck γG,inf Typ 2 (Typ 3 = 1,00); Überinterpretation «gehen vor» entfernt (Wortlaut nur «sind verbindlich»); fehlende Tab. 5 (Eigenfrequenz-Richtwerte) ergänzt.
- **SIA 261** — Erdbeben-Tabellen-Seiten (Tab. 26 «S. 61–62»→S. 62; Tab. 27/Ziff. 16.4 «S. 62–63»→S. 63) korrigiert.
- **SIA 262** — mehrere Fusszeilen-Paginierungsfehler richtiggestellt (Tab. 15 Brand S. 68→64; Tab. 17 Überdeckung S. 69→70; Begriffs-Seiten Ziff. 1.1/1.2; E-Modul Gl. 10). Werte/Formeln/γ-Werte unverändert korrekt.
- **SIA 263** — nicht belegbare Aussage zum Abminderungsfaktor ky,θ bei ~400 °C entfernt (Figur folgt EC3-1-2, ky bleibt bis ~400 °C = 1,0); durch belegte Gl. 35/36 ersetzt.
- **SIA 265** — Formel-Sammelzitat «Formeln 1–3» präzisiert (gezeigt Nr. 1 Rd + Nr. 3 fd).
- **SIA 266** — Off-by-one-Seitenfehler (Ziff. 2 Grundsätze/γM=2,0) korrigiert.
- **SIA 329** — Vorhangfassaden: Präzisierungen am OCR-Text (Deckblatt/Ausgabe/Anhänge).
- **SIA 240** — Toleranz-/Zuteilungstabellen sind grafisch, sinngemäss beschrieben (nicht kopiert).

## Wichtige Befunde (für Raphael / die Skills)

- **Tragwerksnormen-Generation SIA 260–267:2003 ist jetzt vollständig belegt destilliert** (Grundlagen bis Geotechnik). Damit hat der Hub die tragende Norm-Basis für die Koordination mit Bauingenieuren (Werkvertrag, Ausschreibung Rohbau BKP 2, Ankaufsprüfung Tragwerk). ACHTUNG: die zugehörigen **/1-Ergänzungsnormen** (260/1 … 266/1) sind separat und noch nicht destilliert (→ QUESTIONS).
- **SIA 500:2009 «Hindernisfreie Bauten»** ist die Kernnorm für Healthcare- und öffentliche Bauten (Rollstuhlmasse, Rampen, Türen, Sanitär) — hoch relevant für `machbarkeit`/`ankaufspruefung`/Baueingabe. Jetzt belegt verfügbar.
- **Ausbau-/Belags-/Abdichtungsnormen** (251/252/253/257/271/281/232/358/240) decken die häufigsten LV-Positionen im Innenausbau/Dach/Abdichtung ab — direkter Nutzen für `ausschreibung`/`werkvertrag`/`unternehmerkontrolle`.
- **3 Bildscans ohne Textlayer** (251/271/279/281/329/358) via OCR (`ocrmypdf`/`pdftoppm`+`tesseract deu`) erfolgreich verifiziert — die Methode trägt auch für die scanlastigen SIA-Normen.

## Offen / nächster Lauf (Run 4)

- **SIA /1-Ergänzungsnormen** der Tragwerksfamilie (im Bestand prüfen, dann destillieren).
- **SIA P2-Rest (~70 Positionen frei):** u.a. 118 (Alt-Kontext, gültige 118:2013 = Bring-Schuld), 121/125/144/150/162/166/179–199, 226/240er-Ausbau, 244/246/248, 270/272/273, 312/318/329er-Fassaden, 342/343/358er, 370/382/384/400/405/414/421–500er-Bereich, 721/723/752/753. Blockweise abarbeiten.
- **VKF P1-Rest** (übrige Brandschutzrichtlinien) + P2 Erläuterungen/Arbeitshilfen — laufen parallel über die konkurrierenden Sessions.

**Status Inventar:** SIA/VKF noch NICHT komplett — Tragwerks-Generation 2003 + ein grosser Ausbau-Block jetzt erledigt; grosser P2-Rest steht aus. Endbedingung «SIA/VKF KOMPLETT» noch nicht erreicht.
