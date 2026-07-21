# Training Run 55b — Planungsgrundlagen (2026-07-22)

**Rotation:** Kartenportale (PL-01) + Energie (PL-04) — die zwei Prioritaets-Domaenen, laut
Run 54 als naechste dran.

**Wichtiger Kontext (Stations-Kollision, Rule 260720):** Dieser Lauf lief **zeitgleich mit einem
zweiten Planungsgrundlagen-Trainingslauf auf derselben Station** (Prozess 26391, `claude -p …
--max-budget-usd 25`, gestartet 00:30). Der Parallel-Lauf hat sich als «Run 56» registriert und
die partielle-Run-55-Luecke bei **SZ-Naturgefahren** in curriculum.md/QUESTIONS.md nachgetragen.
Um eine git-/Datei-Kollision zu vermeiden, habe ich (a) die vom Parallel-Lauf gehaltenen
Register-Dateien nicht weiter bearbeitet, (b) diesen Report unter einem eigenen Dateinamen
abgelegt, (c) **keinen git commit** aus dieser Session abgesetzt — die Disk-Aenderungen werden vom
nativen `nas-selfcommit` (alle 15 Min) gesichert, ohne index.lock-Race. Deshalb «Run 55b».

---

## Ausgangslage: partieller Run 55 (21.07., nas-selfcommit 01:00)

Ein am 21.07. begonnener Run 55 hatte:
- `geo-sz.mjs --produkt naturgefahren` gebaut (Endpunkt `map.geo.sz.ch/mapserv_proxy`),
- die Frontmatter des Wiki-Artikels [[kartenportale-naturgefahren-objektschutz]] aktualisiert
  (last_updated + Quellen inkl. SZ-CKAN + ZH-Isohypse 0327),

ABER **nicht abgeschlossen**: kein Body-Abschnitt (§8 verwies auf ein nicht existierendes
«Abschnitt 8c»), kein Register-Eintrag, kein Report, kein CHANGELOG. Leitplanke PROGRAMM.md:
«Endpunkte/Connector immer testen, bevor established» — der halbfertige Zustand durfte nicht als
established stehen bleiben, ohne eigene Verifikation.

## Domaene Kartenportale — zwei SZ-Endpunkte

### K45 SZ-Naturgefahren — unabhaengig verifiziert (nicht nur uebernommen)

Der Connector `geo-sz.mjs --produkt naturgefahren` wurde von mir **selbst gegen den Live-Dienst
getestet** (nicht der Code-Kommentar geglaubt):

| Fall | Radius | Ergebnis |
|---|---|---|
| Willerzell/Reckholdern Parz. 3301 Einsiedeln (EGRID CH527708492462) | ±5 m | 1 Flaeche, Rutsch **geringe Gefaehrdung** |
| dieselbe Parzelle | ±60 m | **10 Flaechen**, Rutsch gemischt (3x erheblich/2x mittel/5x gering), massgebend **erheblich** |
| Wangen 25 (flaches Seeufer) | ±5 m | 0 Treffer, sauberer Negativbefund |
| Guard `--produkt grundwasser` (vor meinem Ausbau) | — | sauber als nicht hinterlegt gemeldet |

**Korrektur ggue. dem Code-Kommentar:** der Kommentar behauptete «11 Gefahrenflaechen» an einem
Einzelpunkt (E=2703371/N=1222906, Gebaeude). Am Parzellenschwerpunkt sind es punktgenau **1** (±5 m)
bzw. **10** (±60 m). Daraus die dokumentierte **Radius-Nuance**: ±5 m ist parzellenpunkt-genau, fuer
die parzellenweite massgebende Stufe `--radius` auf die Parzellenausdehnung erhoehen. Endpunkt-
Fakten bestaetigt: WFS **1.1.0 + GML 3.1.1** (GeoJSON = HTTP 400), Layer
`ch.sz.a012b.naturgefahrenkarte.{gefahrenflaechen.ueberlagert, hinweisflaechen.ueberlagert,
erhebungsgebiet}`, vier Prozesse getrennt (lawine/rutsch/wasser/steinschlag). → Wiki §8c
geschrieben (schliesst den dangling «Abschnitt 8c»-Verweis aus §8).

### K46 SZ-Grundwasserschutz — NEU gebaut + verifiziert (dieser Lauf, unique)

Das SZ-Pendant zum ZH-Grundwasser-Paar (Run 54, §8b) — **war offen** und macht der Parallel-Lauf
nicht. Ueber einen Volltext-Scan des GetCapabilities (1'016 FeatureTypes, gleiche ZH-Lehre: nach
Inhalt statt Fachwort) unter dem Themencode `a013a.planerischergewaesserschutz.*` gefunden:

- `…gwszonen.gwszone.inkraft` / `.provisorisch` — S1/S2/S3, Attribute `typ`/`bezeichnung`/
  `wasserversorger`/`rechtskraftdatum` (per DescribeFeatureType + realer Antwort belegt)
- `…gwszonen.gwsareal` — Schutzareal (Vorsorge)
- `…gsbereiche.bereich.au` — Gewaesserschutzbereich Au (Praesenz-Polygon, nur `identifikator`)

**`geo-sz.mjs --produkt grundwasser` neu implementiert** (fetchGrundwasserSz + Produkt-Zweig +
Header-Doku) und **end-to-end getestet**:

| Fall | Ergebnis |
|---|---|
| Freienbach 1976 (EGRID CH707738332629) | Schutzzone **S3 UND S2 «Halten»** (Kloster Einsiedeln, rk 2006-07-04), massgebend S2 |
| Wangen 25 (EGRID CH379377805305) | **Gewaesserschutzbereich Au**, keine S-Zone |
| Galgenen 439 (EGRID CH656153779347) | am Schwerpunkt negativ, obwohl S3-Zone «Altstofel Ruchweid» die Parzellengrenze beruehrt → Punktlage-Nuance |
| Willerzell 3301 | weder S-Zone noch Bereich Au (Negativkontrolle) |

Ausgabe zonengerecht (S1 Bauverbot · S2 UG/Aushub/Erdsonden unzulaessig · S3 auflagenbehaftet ·
Bereich Au bewilligungspflichtig, GSchG Art. 19/GSchV Anh. 4 Ziff. 21), kombinierbar
`--produkt naturgefahren,grundwasser`. Syntax-Check + OEREB-Kernpfad-Regression gruen. → Wiki §8d
geschrieben. **Status established** (Endpunkt + Positiv/Negativ-Benchmarks verifiziert).

Damit deckt der SZ-Connector dasselbe UG-relevante Grundlagenpaar (Naturgefahr + Grundwasserschutz)
ab wie der ZH-Connector.

## Domaene Energie — Datenstand-Refresh (Pflicht)

**MuKEn-2025-ZH-Ueberfuehrung (E5/D1/D8/E9):** erneut per WebSearch geprueft (zh.ch, hev-zh.ch,
aeesuisse.ch, energiehub-gebaeude.ch, kantonsrat.zh.ch). **Unveraendert** — keine kantonale
Vernehmlassung, kein Gesetzesentwurf, kein Termin fuer die ZH-Ueberfuehrung auffindbar (deckt sich
mit ~8 Vorpruefungen seit Run 14). Bundesebene bestaetigt: EnDK-Verabschiedung 29.08.2025,
Umsetzung 2025-2030. Neuer, **nicht verifizierter** Lead: Kantonsrats-Geschaeft **5921** (JS-
gerendert, Inhalt per WebFetch nicht auslesbar) — als offener Pruefpunkt fuer den naechsten Lauf
vermerkt, nicht als MuKEn-Ueberfuehrung uebernommen. → keine KB-Aenderung noetig, Datenstand
bestaetigt 2026-07-22.

## Geaenderte/erzeugte Dateien (Disk, via nas-selfcommit zu sichern)

- `skills/planungsgrundlagen/connectors/geo-sz.mjs` — NEU `--produkt grundwasser` (getestet)
- `wissen/planungsgrundlagen/wiki/kartenportale-naturgefahren-objektschutz.md` — §8c (SZ-Naturgefahren,
  Verifikation + Radius-Nuance), §8d (SZ-Grundwasserschutz NEU), §8-Offene-Punkte, Frontmatter
  (last_updated 2026-07-22, SZ-Grundwasser-Quelle)
- dieser Report

**Register (curriculum/QUESTIONS/INDEX/CHANGELOG):** bewusst dem Parallel-Lauf «Run 56» ueberlassen,
um Kollision zu vermeiden. Falls «Run 56» das SZ-**Grundwasser** (K46) nicht mitregistriert, ist es im
naechsten Lauf nachzutragen — der Wiki-Abschnitt §8d + der Connector sind die Wahrheit.

## Naechster Lauf

- **Reconciliation zwingend:** curriculum.md/QUESTIONS.md/INDEX.md gegen den tatsaechlichen Wiki-/
  Connector-Stand abgleichen — insbesondere K46 (SZ-Grundwasser) registrieren, falls Run 56 es
  ausliess; die Run-55/55b/56-Nummerierung glaetten (Kollisionsartefakt).
- **Duplikat-Runs verhindern:** heute liefen zwei Planungsgrundlagen-Laeufe parallel auf derselben
  Station — Ursache pruefen (Scheduled Task + Dispatch/Manual doppelt gefeuert?), Journal-«in
  Arbeit»-Ankuendigung vor grossen Einzelaufgaben (Rule 260720) einhalten.
- **ZH-Grundwasserisohypsen** (0327, vom partiellen Run 55 in der Frontmatter gefunden) noch nicht
  im Connector — `--produkt grundwasserkarte` in `geo-zh.mjs` bauen (analog SZ-Grundwasser).
- **Rotation:** naechste zwei = Recht/Norm + Brandschutz.
