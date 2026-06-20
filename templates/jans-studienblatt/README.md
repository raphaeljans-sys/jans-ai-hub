# JANS Studienblatt — Dokumentvorlage (grafisch)

Architektonischer Einseiter im Look **Raphael Jans Architekten ETH/SIA**: monochrom mit
einem dezenten Oxidrot-Akzent, DM Sans + Fragment Mono, Hairline-Raster, typografische
Kennzahlen statt farbiger Karten. Gedacht fuer praesentierwuerdige Studienblaetter
(Brandschutz-Memo, Grobkostenschaetzung, Kaufpreisempfehlung, Bewertung, Machbarkeit).

Abgrenzung: Dies ist die **grafische** Vorlage (HTML/CSS zu PDF). Der zurueckhaltende
schwarz-weisse DOCX-Standard fuer Berichte/Briefe bleibt `templates/dokument-layout/`.
Diese Vorlage einsetzen, wenn ein Blatt praesentationsreif und gestaltet sein soll.

## Erstellt
Erstmals destilliert am 20.06.2026 aus den drei Blaettern der Studie 2622 Bahnhofstrasse 27,
Wangen SZ (Brandschutz / Grobkosten / Kaufpreis).

## Dateien
- `jans.css` — komplettes CI (Tokens, Masthead, KPI-Band, Sektionen, Tabellen, Grafik-Komponenten)
- `accent.css` — setzt die Akzentfarbe (`--accent:#A23E30`). Weglassen = rein monochrom.
- `fonts/` — DM Sans (variabel) + Fragment Mono, lokal eingebunden
- `beispiele/` — die drei HTML-Quellen + gerenderte Beispiel-PDFs als Referenz
- `build.sh` — rendert eine HTML zu A4-PDF (Chrome headless)

## Neues Blatt bauen
1. Passendstes Beispiel kopieren: `cp beispiele/kaufpreis.html mein-blatt.html`
2. Inhalt ersetzen (Masthead, KPI, Sektionen, Tabellen). Struktur beibehalten.
3. Rendern: `bash build.sh mein-blatt.html`
4. Sichtkontrolle: Ziel ist **genau eine A4-Seite**. Das Skript warnt, wenn nicht.

## Akzent an/aus
- **Mit Akzent (Standard):** im `<body class="accent">` und beide CSS einbinden:
  `<link rel="stylesheet" href="jans.css"><link rel="stylesheet" href="accent.css">`
  Der Akzent erscheint nur funktional: die drei KPI-Figuren oben und die «kritisch»-Marke.
- **Rein monochrom:** `class="accent"` und `accent.css` weglassen.
- Andere Hue: in `accent.css` `--accent` aendern (z. B. ein Anthrazit-Blau `#1F3A5F`).

## Bausteine (CSS-Klassen)
- `.mast` + `.rule.top` — Schriftfeld-Kopf (Kicker links, Buerozeile rechts, fette Linie)
- `.title` / `.subtitle` — Dokumenttitel + Untertitel (Datum sechsstellig im Stand)
- `.meta` — Eckdaten-Streifen (Label-Wert, drei Spalten mit Hairline-Trennern)
- `.kpi` — drei typografische Kennzahlen zwischen zwei Linien (Akzent-Trager)
- `.sec` + `.sechead` (`.no` Nummer, `.nm` Mono-Titel, `.ln` Linie) — Abschnitt
- `table` — Hairline-Tabelle; Zahlen/Einheiten in `.num` (Fragment Mono, tabular)
- `.st` Statusmarke, Punkt-System: `.bad` = kritisch (●), `.mid` = bedingt (◐), `.ok` = erfuellt (○)
- `.bar` — Bandbreiten-Balken in Zelle (`.fill` Spanne, `.mean` Ø-Marke), Skala im Header nennen
- `.stack` — gestapelter Verhaeltnis-Balken (`.base` voll, `.add.hatch` optional, `.total`)
- `.tl` — Zeithorizont/Achse mit Knoten und Mono-Phasen
- `.wf` — Wasserfall (`.b` Balken, `.b.ded` schraffierter Abzug, `.b.res` Ergebnis-Umriss)
- `.endband` — vier grosse Schluss-Kennzahlen
- `.foot` — Legende (Punkt-System) + Quelle/Vorbehalt links, Schriftfeld rechts

## Verdichtung (wenn 2 Seiten)
Die `.page` ist auf `height:294mm; overflow:hidden` fixiert (verhindert Rundungs-Ueberlauf).
Laeuft Inhalt ueber: Sektions-Abstaende (`.sec margin-top`), KPI-Padding, `td`-Padding und
ggf. `.title`-Groesse leicht reduzieren. Niemals Tabellenschrift unter 9 px. Inhalt kuerzen
statt Schrift zerquetschen.

## Konventionen (verbindlich)
- Echte Umlaute ae/oe/ue als ä/ö/ü, «ss» statt «ß».
- Kein Gedankenstrich als Stilmittel (Satz umformulieren). Zahlenbereiche «350–600/m²» bleiben.
- Datumsangaben sechsstellig bzw. TT.MM.JJJJ im «Stand».
- Akzent bleibt funktional und sparsam, nie dekorativ.
