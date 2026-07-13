# Training Run 31 — Kartenportale + Energie (Token-Vollgas)

## Domaenen dieses Laufs

Rotation nach Run 30 (Recht & Norm + Brandschutz): **Kartenportale (PL-01) + Energie (PL-04)**.
Laut Vorlauf-Hinweis in Run 30 der naechste Schritt der Rotation.

## Vorgehen

Beide Domaenen sind nach 30 Laeufen sehr weit erschlossen (21 Kartenportale- und 28
Energie-Lektionen im Curriculum). Zuerst wurde die **komplette Ordnerstruktur** von
`PL - 01 Kartenportale/` und `PL - 04 Energie/` rekursiv gelistet (`find`) und Feld fuer Feld
gegen das Curriculum (K1-K26, E1-E26) abgeglichen, um wirklich unerschlossene Unterordner zu
finden — statt bereits dokumentierte Themen zu wiederholen. Das Gros der Ordnerstruktur besteht
aus **Pro-Projekt-Downloadordnern** (swisstopo.admin.ch/`<Gemeinde>`/SwissALTI-SwissBUILDINGS-
SwissSURFACE, Grundstueckkataster/`<Gemeinde>`) — das ist Rohdaten-Ablage nach der bereits
dokumentierten Methodik (K3/K4/K9), kein neuer Fachinhalt. Gezielt geprueft wurden alle
**Ordner, die im Curriculum noch nie erwaehnt sind**: `gis.bezirkeinsiedeln.ch`, `ortsplanung.ch`
(leer), `Hoehenlinie/`, `Geoshop/` (oberste Ebene, separat von `CH Schweiz/geoshop.lisag.ch`),
sowie in PL-04 `Solaranlage/Dachausstiege`, `megasol.ch`, `energieheld.ch`, `sonnenverlauf.de`.
KtLU Luzern und KtBE Bern wurden erneut gesichtet (dort liegt substanzielles Material — u.a.
Denkmalverzeichnis/Bauinventar, Historische Karten, Landschaftsmodell), aber **bewusst nicht
vertieft**: K16 hat die niedrige Prioritaet bereits explizit begruendet (kein JANS-Kerngebiet),
und die Stichprobe (KtBE-Registrierungsscreenshot) bestaetigte nur den bestehenden Kurzprofil-
Stand ohne neuen Fachinhalt.

## Kartenportale — drei Neufunde (K27/K28/K31)

1. **Bezirks-Ebene GIS-Portal `gis.bezirkeinsiedeln.ch`** (Kt. SZ, unterhalb des kantonalen
   `map.geo.sz.ch`): eigenstaendige Druckprodukte «Vermessung», **«Grundstuecksbeschrieb»**
   (ein einfacher Kurz-Grundbuchauszug direkt aus dem Bezirks-GIS — Eigentuemer/Flaeche/
   Bodenbedeckung/EGID, ohne Rechtsverbindlichkeit), «Infrastruktur», «Hoehendaten Kanton»
   (Isohypsen 1 m/100 m) und **«ÖREB-Kataster»**. Der reale 9-seitige ÖREB-Auszug fuer
   Grundstueck 3301 Reckholdern 20 Willerzell (16.11.2023) deckt zwei bisher nicht dokumentierte
   Fakten zum haeufig genutzten Willerzell-Benchmark auf: (1) ein **Sondernutzungsplan
   «Gestaltungsplan Reckholdern»** ueberlagert die Wohnzone 1 zu 100 %, (2) eine **statische
   Waldgrenze** betrifft 22.8 % der Parzellenflaeche. Die Bezirksverwaltung Einsiedeln ist fuer
   mehrere ÖREB-Themen «zustaendige Stelle» — nicht der Kanton direkt.
2. **ZH-Hoehenkurven-Druckprodukt** («Benutzerkarte» auf `maps.zh.ch`): Vektor-Hoehenlinien mit
   waehlbarer Aequidistanz 0.5/1/5 m, direkt aus der amtlichen Vermessung — Delta zum bereits
   dokumentierten Raster-Hoehenmodell swissALTI3D. Zusaetzlich vollstaendige Bodenbedeckungs-
   Farblegende («Amtliche Vermessung farbig») dokumentiert.
3. **GeoShop Stadt Zuerich** (`e-gov.stadt-zuerich.ch/geoshop`): eigenstaendiges, staedtisches
   Portal fuer die Katasterplan-Bestellung als DXF (~30 Min. Lieferzeit), separat vom bereits
   dokumentierten kantonalen Geoshop-API ZH — Betrieb infoGrips GmbH + Geomatik+Vermessung Stadt
   Zuerich. **Wichtig:** die Quelldatei enthielt Live-Zugangsdaten eines fremden Architekturbueros
   (nicht JANS) — diese wurden **nicht** in die KB uebernommen, nur der Portal-Mechanismus/
   Workflow (ArchiCAD-DXF-Import) ist dokumentiert.

Alle drei → [[kartenportale-geoportale-uebersicht]] (neue Abschnitte + Tabellenzeilen), Status
`emerging` (keine REST-/API-Endpunkte identifiziert, reine Druck-/Bestellportale).

## Energie — zwei Neufunde (E27/E28)

1. **Dachausstiege** (`Solaranlage/Dachausstiege`, 6 Referenzfotos): Wartungszugang zu
   Flachdach-PV-Anlagen — Dachausstiegsbox mit Fallschutz-Gelaender, seitlich (nicht unter) dem
   PV-Feld positioniert. Praxishinweis ohne Norm-/Herstellerbeleg → Status `speculative`.
2. **megasol.ch Modul-Datenblatt** (M385-HC120-b BF GG U30b, bifaziales Glas-Glas-Modul, CH-
   Hersteller): **211 Wp/m²** (385 Wp / 1.822 m², rechnerisch verifiziert) — hoeher als das
   bisherige Standardband (170-200) — plus ein **Rueckseiten-Mehrertrag von +5...+35 %** je nach
   Untergrund-Albedo (Gras/Ziegel +5-15 %, helles Kies/Sand +15-25 %, Schnee/Eis +25-35 %).
   Ergaenzt die Wp/m²-Benchmark-Tabelle (§1b) und die Ertragslogik um den Bifazial-Faktor, der
   bei Flachdach-Montage auf hellem Kies planerisch relevant wird.

Beide → [[energie-pv-eignung-typenwahl]] (neuer §4 + Tabellenzeile/Absatz in §1b).

**Bewusst nicht vertieft:** `energieheld.ch` (ein Marketing-Screenshot), `sonnenverlauf.de` (ein
Screenshot, Tool bereits in §2 der Ziel-Artikel als Werkzeug gelistet) — kein neuer Fachinhalt.

## Verifikations-Stufe

- **gis.bezirkeinsiedeln.ch:** die zwei neuen Fakten (Gestaltungsplan, Waldgrenze) stammen aus
  dem woertlichen Text des amtlichen ÖREB-PDF-Auszugs (Amt fuer Geoinformation Kt. SZ,
  Auszugsnummer `0a0570f0-…`) — Volltextabgleich am Original bereits durch das direkte Lesen der
  PDF-Seiten erfolgt, keine Interpretation noetig. Status bleibt trotzdem `emerging`, weil kein
  REST-Endpunkt fuer das Bezirks-Portal selbst identifiziert wurde (reine Druckfunktion).
- **megasol.ch Wp/m²-Wert:** eigenstaendig nachgerechnet (385 Wp / (1.755 m × 1.038 m) = 385 /
  1.822 = 211.3 Wp/m²) und mit dem im Text angegebenen Modulwirkungsgrad (21.1 %) auf Plausibilitaet
  gegengeprueft (21.1 % × 1000 W/m² ≈ 211 W/m² — stimmt exakt ueberein) → belastbar, `established`-
  faehig fuer die reinen Produktdaten.
- **Geoshop Stadt Zuerich:** Existenz und Mechanismus durch das offizielle Benutzerhandbuch
  (Stadt Zuerich Geomatik+Vermessung, V8.0/1.11.2017) bestaetigt — kein Zweifel an der Faktenlage,
  aber die enthaltenen Drittfirmen-Zugangsdaten wurden bewusst nicht in die KB kopiert
  (Datenschutz-Grundsatz, unabhaengig vom Verifikations-Protokoll).
- **Dachausstiege:** bewusst `speculative` belassen — reine Referenzfotos ohne Norm-/
  Herstellerquelle, keine belegte Anforderung.

## Ehrlichkeit zum Umfang

5 belegte Neufunde (3 Kartenportale, 2 Energie) statt der als Token-Vollgas-Zielwert genannten
10-16 Fragen — analog zur Begruendung in Run 30. Beide Domaenen sind nach 30 Laeufen so weit
erschlossen, dass die verbleibenden ungenutzten Ordner ueberwiegend entweder Pro-Projekt-
Rohdaten-Downloads (bereits methodisch abgedeckt) oder Einzelscreenshots ohne neuen Fachinhalt
enthalten. Statt mit Nicht-Funden zu padden, wurden die fuenf echten Funde vollstaendig
ausgewertet und sauber belegt (inkl. Nachrechnung/Verifikation), was der Qualitaetsleitplanke
«nie erfinden, Endpunkte immer testen» besser dient als oberflaechliches Anreissen von zehn
Themen.

## Register-Stand

`curriculum.md` (K27/K28/K31, E27/E28), `wiki/QUESTIONS.md` (Abschnitte A und D), `wiki/INDEX.md`
(zwei Artikel-Eintraege aktualisiert), `raw/_INGESTED.md` (fuenf neue Zeilen) nachgefuehrt.

## Naechster Schritt

Rotation weiter mit Run 32 (Recht & Norm + Brandschutz). Fuer Kartenportale bleibt optional:
KtLU Luzern (Denkmalverzeichnis/Bauinventar, Historische Karten, Landschaftsmodell) enthaelt
substanzielles, bisher nicht gelesenes Material — bei konkretem LU-Projektbedarf vertiefen, sonst
bewusst bei der K16-Kurzprofil-Einordnung belassen. Fuer Energie: `KtLU`-Analogon
«Gebäudeenergie Solarpotential» (Kt. LU) ebenfalls nur bei realem LU-Bedarf pruefen.
