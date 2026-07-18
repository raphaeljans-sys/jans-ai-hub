# QUESTIONS — offene Fragen & Wissensluecken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [x] **K41-K44 (Run 50 offen → Run 51, 2026-07-18 GELOEST)** Der OneDrive-Sync-Blocker aus Run 50
  hatte sich (wie im Praezedenzfall Lignum Run 28→30 vermutet, «reines Sync-Timing») bis Run 51
  aufgeloest — alle vier Kandidaten waren jetzt problemlos lesbar. Auswertung:
  - **K41 Naturgefahren Konzept Reckholdern (SZ):** `230926_Naturgefahren_Konzept.pdf` +
    `2304RE20_Naturgefahren_Objektschutzkonzept.pdf` (real JANS 2304, Willerzell) — Konzeptstruktur,
    SZ-WebGIS-Link, Gefahrenstufen + SIA-261/261-1-Schutzziele waren bereits ab Run 24/27 im Artikel;
    **genuines Delta = der bis dahin ungelesene Bauteilkatalog S. 7–12** der Checkliste `27_Checkliste_SvN_D.pdf`
    (Matrix Bauteil × Naturgefahr, Produktanweisungen SIA 342 Sonnenschutz, HW3, Suissetec-Merkblatt,
    Ueberschwemmung/Betonsockel). → NEU §3c [[kartenportale-naturgefahren-objektschutz]]; Checkliste
    damit vollstaendig S.1-12/12.
  - **K44 Regensdorf OGD-Lieferscheine:** 4 ZH-Geoportal-Bestellungen (05.–08.02.2024) mit den
    **GIS-ZH-Datensatznummern** 555 (DTM 2021/22), 557 (LIDAR-Punktwolke), 10016 (AV Datenmodell ZH),
    10102 (OEREB-Abstandslinien), Bezugsweg `geoportal.zh.ch/opendata` (OGD, kostenlos, Lieferschein-
    Download). Keine Preisangabe (OGD gratis). → NEU Abschnitt «ZH Geoportal OGD-Bestellportal»
    [[kartenportale-geoportale-uebersicht]] (Status established, aus amtlichen Lieferscheinen).
  - **K42 `klimafreundlichheizen.ch`** (Stadt Luzern, adressgenaue Heizungsempfehlung + Gasversorgungs-
    Aufhebung bis 2040) + **K43 Stadt Luzern 3D-Stadtmodell** (Esri-ArcGIS-Viewer, kein Export). Beide
    LU (Nebengebiet), als Kurzprofil → [[kartenportale-geoportale-uebersicht]] «Weitere Kantone».
  Damit sind die letzten offenen Kartenportale-Kandidaten geschlossen; kein neuer PL-01-Kandidat im
  Delta-Scan dieses Laufs offen. Details siehe `outputs/2026-07-18_training-run51.md`.
- [x] **K40-Rest (Run 46, 2026-07-14, Token-Vollgas)** Rest der Weisung ÖREB-Kataster V3
  (§5.3-5.12, S. 26-73) vollstaendig ausgewertet — schliesst die K40-Luecke (siehe Eintrag
  darunter). Themen-Detailprozesse §5.2-5.8 folgen groesstenteils dem generischen 4-6-Phasen-
  Muster (kein Delta), zwei echte Zusatzfunde: **Mehrwertausgleich(MWA)** als Blocker vor der
  oeffentlichen Auflage (separates Tool eMehrwertausgleich, betrifft NP/KGP) und **Quartierplan
  als 7-Phasen-Sonderfall** (zwei Grundeigentuemerversammlungen, notarielle Pruefung der
  Rechtsverhaeltnisse, Vermessungsplan, grundbuechlicher Vollzug §§161 PBG — naeher an einer
  Landumlegung als an einer Zonenplan-Revision). **§5.9 Statische Waldgrenzen:** zwei
  Aenderungswege (Bauzonen-Erstfestsetzung, abgeschlossen seit 2018 vs. Rodung/Ersatzaufforstung
  als einziger verbleibender Weg danach); Waldgrenze aendert sich erst mit der AUSGEFUEHRTEN
  Rodung (Abnahmeprotokoll), nicht mit blosser Bewilligung — Baufeld-Berechnung darf sich nicht
  auf eine unausgefuehrte Rodungsbewilligung stuetzen. **§5.10/5.11 Grundwasserschutz:**
  Schutzzone (Layer 131) = Gemeinde formal zustaendig (Antragsteller meist Wasserversorgung),
  Schutzareal (Layer 132) = AWEL direkt zustaendig; provisorische «Zonen S» koennen vor jeder
  oeffentlichen Auflage sofort erscheinen. **§5.12 KbS:** einziges Thema OHNE Vorpruefungs-Phase,
  Ausloeser immer Anlassfall (Bauvorhaben/Untersuchung/Sanierung) direkt bei AWEL Sektion
  Altlasten → alle fuenf Funde in [[kartenportale-oereb-kataster-system-zh]] §8-§12. **Damit ist
  die 73-seitige Weisung vollstaendig ausgewertet, keine offenen Kapitel mehr.** Details siehe
  `training/curriculum.md` K40-Rest §5.3-5.8/§5.9/§5.10-5.11/§5.12.
- [x] **K40 (Run 44, 2026-07-14, Token-Vollgas)** Ein bisher nie ausgewertetes, obwohl im Ordner
  seit K1 als DXF-/OEREB-Benchmark-Quelle genutztes Dokument entdeckt:
  `Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — die amtliche «Weisung ÖREB-Kataster
  Betrieb und Nachführung der Daten» V3 des Kt. ZH (ARE Abt. Geoinformation, 01.12.2022, 73 S.).
  Liefert das **amtliche ID-/Legenden-Register** fuer alle bisher nur aus Connector-Antworten
  bekannten `ogd-0xxx`-Layer-IDs (73A/73B/76/116/130/131/132/145/157/159/160/190/45-52-ZH/
  56-ZH/59-ZH) inkl. Rechtsgrundlage + zustaendiger Stelle; **wichtigster Einzelfund:** die
  **Vorwirkung-Mechanik** (positive Vorwirkung eines noch nicht in Kraft stehenden Rechts
  grundsaetzlich unzulaessig, negative Vorwirkung ausnahmsweise zulaessig bei ausdruecklicher
  gesetzlicher Grundlage) erklaert erstmals die rechtliche **Sperrwirkung**, die hinter dem
  bereits dokumentierten `revision_laeuft`-Connector-Flag (A6, [[kartenportale-zonenplan-zh]])
  steckt — ein Bauvorhaben kann an einer laufenden Zonen-/Baulinien-Revision scheitern, bevor
  diese in Kraft ist. Dazu generischer 4-Phasen-Nachfuehrungsprozess (Vorpruefung→Oeffentliche
  Auflage→Festsetzung/Genehmigung→Rechtsmittel→In Kraft), ÖREB-DMT-Systemarchitektur (Rechts-/
  Projekt-/Protokoll-DB) und Betriebsorganisation (KL/KBO/KFS/Gemeinde/Fachspezialist) →
  NEU [[kartenportale-oereb-kataster-system-zh]], established, verlinkt aus
  [[kartenportale-zonenplan-zh]], [[kartenportale-geoportale-uebersicht]],
  [[kartenportale-oereb-egrid-bezug]]. Die zwei begleitenden Vorgehens-docx im selben Ordner
  (`241122_`/`251122_Vorgehen Datenbezug…`, `Bezugsorte…docx`) sind bestaetigter Nicht-Fund
  (identischer Geoshop-/geodienste.ch-Bezugsweg wie bereits in A4/K4 dokumentiert). **Offen:**
  Detailprozesse §5.3-5.12 der Weisung (S. 26-73, insb. Waldgrenzen §5.9 + Grundwasserschutz
  §5.10/5.11) noch nicht ausgewertet — Kandidat fuer den naechsten Kartenportale-Turnus. Details
  siehe `training/curriculum.md` K40.
- [x] **K37-K39 (Run 42, 2026-07-14, Token-Vollgas)** Drei weitere Ordner-Abgleich-Kandidaten
  geprueft. **K37 — kein Delta:** `gisos.bak.admin.ch` enthaelt nur den bereits bekannten bloßen
  ISOS-Portal-Link, bestaetigt K34. **K38 — echter Neufund:** Kt.-Bern-Portalarchitektur
  praezisiert (`be-geo.ch` = Login, `map.apps.be.ch` = Kartenclient), realer Fall Schloss
  Muenchenwiler mit benannter Kontaktstelle Amt fuer Geoinformation Kt. Bern, AV-Bezug via
  `geodienste.ch` auf max. 5 Parzellen/Bestellung gedeckelt → [[kartenportale-geoportale-uebersicht]].
  **K39 — kleiner Delta:** Sunrise-Markenauftritt (Werkleitungsanfrage Willerzell) fuehrt technisch
  auf dieselbe `leitungskataster.upc.ch`-Domaene wie das bereits dokumentierte UPC-Portal (Fusion,
  kein zweites System) → [[kartenportale-werkleitungskataster]]. Details siehe
  `training/curriculum.md` K37-K39.
- [x] **K34-K36 (Run 40, 2026-07-14, Token-Vollgas Fan-out)** Ordner-Abgleich PL-01 liefert drei
  Neufunde. **K34 — neue Schutz-Domaene Denkmalpflege/Archaeologie:** national ISOS (BAK, nur
  Portal-Link) + kantonal ZH (Denkmalschutzobjekte + archaeologische Zonen, §§ 203/209/211 PBG);
  zwei bisher unbekannte, login-freie OGD-WFS-Layer live gefunden UND verifiziert
  (`ogd-0368_..._denkmalschutzobjekte_p` + `ogd-0087_..._archzonen_f`), Connector-Feature
  `--produkt denkmalschutz` NEU gebaut und mit realem Beispiel (Haselstudstrasse 2, Wald ZH, 4
  Objekte) getestet → NEU [[kartenportale-denkmalschutz-isos]], emerging. **K35 — .gdb-Format-
  Delta zu K8:** kein Direktimport in JANS-Zielprogramme, Umweg via ArcGIS Pro/QGIS-Plugin
  OpenFileGDB + Re-Export .obj/.fbx/.dxf → [[kartenportale-geoportale-uebersicht]] §Geodaten-
  Formate, established. **K36 — Bezirk Einsiedeln:** «Buero Bauen» der Bezirksverwaltung
  zustaendig, Baugesuche seit 1.12.2022 ausschliesslich ueber eBau (kein Papierweg mehr) →
  [[kartenportale-ebau-sz-baugesuch]] §4b, emerging. Geprueft/kein Fund: `KtSZ Schwyz/
  ortsplanung.ch` (leer), `Objektschutz/Thalwil` (leer), `KtLU Luzern/Geoportal`+`Raumdatenpool`
  (deckt sich mit bereits abgeschlossenem K16). Details siehe `training/curriculum.md` K34-K36.
- [x] **K32/K33 (Run 38, 2026-07-14)** Zwei konkrete Fundstellen im Domaenen-Curriculum
  geprueft (Trainings-Lauf 38, MacBook Pro). **K32 — echter Neufund:** die bisher nur fuer die
  historische-Terrain-Rekonstruktion bekannte Acht Grad Ost AG (`achtgradost.ch`, vgl. K14
  [[kartenportale-historisches-terrain-vermessungsbuero]]) betreibt zusaetzlich ein oeffentliches,
  login-freies **Gemeinde-WebGIS** (`achtgradost.ch/oeffentlich-zugaengliches-webgis/`), belegt am
  Fallbeispiel Gemeinde Regensdorf mit Zonenplan/ÖREB-Kataster-, Baulinien-/Abstandslinien- und
  AV-/Orthofoto-Planauskunft-Layern — White-Label-Betrieb eines kommunalen GIS-Portals durch eine
  private Vermessungsfirma, analog zu `geoglatt.ch` (K15) → NEU §5 [[kartenportale-historisches-terrain-vermessungsbuero]],
  emerging. **K33 — Teil-Delta:** der Login-/Account-Ordner von `geodienste.ch` enthaelt kein neues
  Registrierungs-Sonderverfahren (offenes Selbstbedienungsformular, wie erwartet), praezisiert aber
  erstmals die **Bestellmechanik** (dreisprachige Bestaetigungslink-E-Mail + individuelle kantonale
  Zugriffsrechte-Pruefung je Bestellung, real belegt an Kt. BE/EGRID CH609835664683) und benennt den
  Administrator **Geschaeftsstelle KGK-CGC** (Bern) erstmals → NEU-Abschnitt
  [[kartenportale-geoportale-uebersicht]], emerging. Gespeicherte Zugangsdaten (eigenes JANS-Konto)
  bewusst NICHT in die KB uebernommen (Datenschutz-/Sicherheitspraxis analog K31). Details siehe
  `training/curriculum.md` K32/K33.
- [x] **K27/K28/K31 (Run 31, 2026-07-13)** Drei genuine Neufunde nach vollstaendigem Abgleich der
  Ordnerstruktur PL-01 gegen das Curriculum (K1-K26 bereits erschlossen): **Bezirks-Ebene GIS-
  Portal `gis.bezirkeinsiedeln.ch`** (unterhalb des kantonalen `map.geo.sz.ch`; Druckprodukte
  Vermessung/Grundstuecksbeschrieb/Infrastruktur/Hoehendaten/ÖREB-Kataster; realer 9-seitiger
  ÖREB-Auszug deckt zwei bisher unbekannte Fakten zum Willerzell/Reckholdern-Benchmark auf —
  Sondernutzungsplan «Gestaltungsplan Reckholdern» + statische Waldgrenze 22.8 % → NEU-Abschnitt
  [[kartenportale-geoportale-uebersicht]]), **ZH-Hoehenkurven-Druckprodukt** (`Hoehenlinie/`-
  Ordner, «Benutzerkarte» maps.zh.ch, waehlbare Aequidistanz 0.5/1/5 m, Delta zum bereits
  dokumentierten Raster-swissALTI3D → NEU-Abschnitt [[kartenportale-geoportale-uebersicht]]),
  **GeoShop Stadt Zuerich** (`Geoshop/`-Ordner, eigenstaendig vom kantonalen Geoshop-API,
  Katasterplan-DXF-Bestellung ~30 Min. Lieferzeit; Quelldatei enthielt fremde Zugangsdaten eines
  Drittbuero, NICHT uebernommen → neue Tabellenzeile [[kartenportale-geoportale-uebersicht]]).
  KtLU Luzern (bereits K16 niedrige Prioritaet) und KtBE Bern erneut gesichtet — kein neuer Befund
  ueber die bestehende Kurzprofil-Einordnung hinaus, bewusst nicht vertieft. Details siehe
  `training/curriculum.md` K27/K28/K31.
- [x] **K20-K21 (Run 29, 2026-07-13)** Zwei weitere Kandidaten-Fundstellen geprueft, beide OHNE
  Delta (ehrlich dokumentierte Nicht-Funde): **XML-Datenformate-Ordner** (3 Screenshots,
  generische "Was ist XML"-Web-Erklaerung ohne Geodatenbezug, kein Delta zur K8-Formattabelle) und
  **Baumkataster-Ordner oberste Ebene** (identische GEOINFO-Produktblatt-Datei zweimal abgelegt +
  zwei generische map.geo.admin.ch-Kartenausdrucke ohne dedizierten Baumkataster-Layer, bestaetigt
  K12). Details siehe `training/curriculum.md` K20-K21.
- [x] **K17-K19 (Run 27, 2026-07-13)** Drei bisher unerschlossene PL-01-Unterordner ausgewertet:
  **Grundbuchamt ZH** (formelle Grundbuchauszug-Bestellung via Notariat statt Selbstbedienungs-
  Eigentumsabfrage → [[kartenportale-geoportale-uebersicht]], emerging), **Willerzell-WebGIS-Batch
  SZ** (Gewaesser-Oekomorphologie 6-stufig + Erdwaermenutzung-Zonierung/Bestandeskataster, gleicher
  Kartenexport-Batch wie die bereits dokumentierte Grundwasserkarte → [[kartenportale-naturgefahren-objektschutz]]
  §6b/§6c + [[recht-norm-abstandsvorschriften-wald-gewaesser]]), **SZ-Geoshop lisag.ch** (gebuehrenfrei,
  login-freie URL, Region UR/SZ/OW/NW/ZG) **+ Werkleitungsbezug EW Lachen AG Einsiedeln** (kein
  Webportal, nur E-Mail-Bestellung, Entwaesserungsplan SN 592 000 → [[kartenportale-geoportale-uebersicht]]
  + [[kartenportale-werkleitungskataster]] §7). geodatenshop.zh.ch als Doppel zum bereits dokumentierten
  Geoshop-API bestaetigt (kein neuer Artikel). Details siehe `training/curriculum.md` K17-K19.
- [x] **K10-Rest** Checkliste Gebaeudeschutzmassnahmen (VKG/SIA/HEV) im Detail + Grundwasserkarte
  als eigenstaendige Planungsgrundlage. ✓ **2026-07-13 (Run 24):** Checkliste vollstaendig gelesen —
  Gefaehrdungsabklaerung je Naturgefahr mit Normzuordnung, **SIA 261 Neubau vs. SIA 269/8 Umbau bei
  Erdbeben** praezisiert, Bauteilkatalog/Hagelregister.ch/HW3; **NEU §6** Grundwasserkarte Kt. SZ
  (Weisse-Wanne-Entscheid bei Unterkellerung) → [[kartenportale-naturgefahren-objektschutz]] §3b/§6.
  Offen bleibt: ZH-Endpunkt Naturgefahren + Grundwasser (Discovery-Versuch dokumentiert erfolglos).
- [x] **K12** Baumkataster als Planungsgrundlage (niedrige Prioritaet). ✓ **2026-07-13 (Run 24):**
  kein kantonal/schweizweit standardisiertes Portal, kommunale GIS-Fachanwendung, kein
  Connector-Anspruch → NEU [[kartenportale-geoportale-uebersicht]] §Baumkataster.
- [x] **K10** Naturgefahrenkarte/Objektschutzkonzept als eigenstaendige Planungsgrundlage. ✓
  **2026-07-13 (Run 22):** NEU [[kartenportale-naturgefahren-objektschutz]] — SZ-Rechtsgrundlagen
  (§ 20/17 PBG, Art. 6/15 RPG), **Gefahrenstufen rot/blau/gelb/gelb-weiss** mit Bauvorschrift je
  Stufe (rot = de facto Verbotsbereich, blau = Auflagen, **keine sensiblen Objekte** — trifft
  Healthcare direkt), realer Benchmark **Reckholdernstrasse 20 Willerzell** (drei Gefahrenstufen
  auf einer Parzelle, Objektschutzkonzept 26.09.2023), SIA-261/261-1-Schutzziele-Tabelle
  (Hochwasser 300-jaehrlich, Sturm/Hagel/Schnee 50-jaehrlich, Erdbeben 475-jaehrlich). **Offen:**
  ZH-Endpunkt nicht kartiert; SZ-Layer `ch.sz.a012b.naturgefahrenkarte.*` nur als WebGIS-Link
  bekannt, kein getesteter REST-Endpunkt — bewusst nicht als Connector-Feature versprochen.
- [x] **K11** Werkleitungskataster (Strom/Kommunikation/Gas/Wasser) — Bezugsweg + Automatisierbarkeit.
  ✓ **2026-07-13 (Run 22):** NEU [[kartenportale-werkleitungskataster]] — kein zentrales Portal,
  betreiberspezifisch: EKZ (`ekz-planauskunft.ch`), Swisscom (Geo-Portal), Sunrise-UPC
  (`upc.ch/leitungskataster`, 4 Regionen), Gas/Wasser bei Gemeindewerken. Realer Ablauf EKZ-
  Planauskunft **Reckholdern** belegt (Login-Konto, Bestellung je Perimeter, Lieferung Plot+
  Symbole+Kurzbrief, **Gueltigkeit nur 2 Wochen**, Datenmodell **SIA GEO 405**, Farbdruck-Pflicht,
  projektierte Gebaeude blau/nicht einmessbar); Swisscom-Netzauskunft **3 Monate**/1:200,
  190-Volt-Warnhinweis. **Bewusst kein Connector-Anspruch** (login-pflichtig, kein offenes API) —
  Status `emerging`.
- [x] **K9** GWR-Gebaeudedaten je Parzelle (Baujahr/Volumen/EBF/Waermeerzeuger) — Bezug, Felder,
  Verlaesslichkeit? ✓ **2026-07-02 (Run 13):** `gwr-bund.mjs` login-frei via Layer
  `ch.bfs.gebaeude_wohnungs_register`. **GVOLNORM** (961 SIA 116 / 962 SIA 416 / 969 unbekannt) +
  **GVOLSCE** (851 amtl. Vermessung … 869 Baubewilligung … 878 nicht geschlossenes Gebaeude) aus
  **Merkmalskatalog GWR v4.2 S. 63f.** belegt und im Connector als Decode eingebaut + getestet.
  Merkregel **Baujahr schlaegt Bauperiode** (KISPI: Periode 8023 «2016-2020» vs. Baujahr 2024).
  Benchmarks KISPI EGID 302064023 (Volumen-Norm 969=unbekannt!) + Giebelweg 12 EGID 57977 →
  NEU [[kartenportale-gwr-bund]]. **✓ Wohnungs-/EWID-Ebene geloest 2026-07-13 (Run 20):** im selben
  identify-Call bereits enthalten (parallele Arrays `ewid`/`warea`/`wazim`/`wstat`/`wstwk`/…),
  Connector deckt sie neu als `wohnungen[]` auf; Benchmark Albertstrasse 7 Zuerich EGID 150071
  (26 Wohnungen) → [[kartenportale-gwr-bund]] §6. **Offen:** Katalog-v5.0-Abgleich (gwr.admin.ch/catalog
  ist clientseitig gerendert, per WebFetch nicht auslesbar — Restaufgabe bleibt).
- [x] **A1** Nicht-ZH-Kantone: OEREB-Service-Endpunkte kartieren (zuerst SZ). ✓ SZ via
  `geo-sz.mjs` / Skill `oereb-schwyz` geloest; `geo-zh.mjs` `OEREB_SERVICE.sz` hinterlegt.
- [x] **A2** Zonenplan-/BZO-Ausschnitt automatisiert beziehen. ✓ **GELOEST 2026-06-16**: nicht
  ueber `wms.zh.ch` (401), sondern ueber den **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz
  **0156** `np_gn_zonenflaeche_f` (GeoJSON, login-frei) — liefert Zone (kommunal+kantonal),
  **BMZ/AZ**, Gebaeude-/Firsthoehe, Vollgeschosse, Gewerbeanteil, Rechtsstatus, Festsetzungsdaten;
  + **0154** Empfindlichkeitsstufe Laerm. Connector `--produkt zonenplan`, validiert Langnau
  Kat.3338 (BMZ) + Egg WG60 (AZ) → [[kartenportale-zonenplan-zh]]. **Mehr als der OEREB-PDF.**
  Bundes-Bauzonen `ch.are.bauzonen` PNG (`--produkt bauzonen`) bleibt fuer den Schnellblick.
- [x] **A6** Projektierter Layer `..._np_gn_zonenflaeche_proj_f` (laufende BZO-Revision/Auflage)
  an einem realen Revisionsfall validieren — fuer den Vorher/Nachher-Vergleich (machbarkeit Typ A).
  ✓ **2026-06-24 (Run 9):** proj-Layer kantonsweit aktiv (Seuzach/Wädenswil/Winterthur/Winkel/…);
  Benchmark **Seuzach Kirchgasse 2 Kat. 2304** (rechtskraeftig K Kernzone vs. proj
  `laufendeAenderung.Festsetzung`, `Aenderung_Bauordnung_Zonenplan`, Auflage 01.11.2024, Dok-Link
  oerebdocs.zh.ch). Connector `--produkt zonenplan` meldet ⚠-Revision automatisch
  (`revision_laeuft`+`grundnutzung_proj[]`) → [[kartenportale-zonenplan-zh]] §A6.
- [x] **K5** Baulinien/Abstandslinien als Vektor + im Connector. ✓ **2026-06-24 (Run 9):** OGD-WFS
  0158 Baulinie / 0152 Wald / 0153 Gewaesser / 0150 Waldgrenze / 0185 Gewaesserraum, ±150-m-Fenster
  (Linien neben Parzelle); Benchmarks Langnau (7 Baulinien+Waldgrenze) + Seuzach (10) →
  [[kartenportale-baulinien-abstandslinien-zh]], Connector `--produkt baulinien`. **✓ senkrechtes
  Abstandsmass erledigt 2026-07-08 (Run 16):** Connector rechnet den senkrechten Abstand
  Linie↔Parzellengrenze (`dist_m` je Treffer, aufsteigend sortiert; `<layer>_dist_min_m`; Flag
  `gemessen`) — Parzellenpolygon aus demselben identify-Call mit `returnGeometry=true` (Esri-rings
  EPSG:2056), Distanz = Segment-zu-Segment planar; `dist_m=0` = Linie beruehrt/schneidet die Parzelle
  (bindend). Verifiziert per Zweitmethode (Seuzach 29.8 m = 29.8 m); Benchmarks 0/29.8/116.2 m +
  Gewaesserabstand 43.9 m Wetzikon → speist Agent `baulinien-analyst`/M2. **Offen:** proj-Abstandslinien
  (analog A6); `COUNT=10`-Kappung an sehr linienreichen Parzellen.
- [x] **K8** Geodaten-Formate-Kurzleitfaden (GeoJSON/INTERLIS/DXF/GeoTIFF/XYZ-LAZ/LandXML/GeoPackage).
  ✓ 2026-06-24 (Run 9) → [[kartenportale-geoportale-uebersicht]] Abschnitt «Geodaten-Formate».
- [x] **A3** Hoehenmodell (swissALTI3D) + Orthofoto (SWISSIMAGE) je Parzelle. ✓ 2026-06-10:
  `height`-Service + STAC `swissimage-dop10`/`swissalti3d` validiert, im Connector `--produkt
  height,orthofoto,dtm` (+`--download`) → [[kartenportale-bund-geodaten]].
- [x] **A4** Situationsplan/Grundstueckkataster amtliche Vermessung als Bezugsskript.
  ✓ 2026-06-11: **Geoshop-API Kt. ZH** (`geoservices.zh.ch/geoshopapi/v1`, login-frei,
  offiziell dokumentiert in zh.ch `rest_schnittstelle_ogd_interface.pdf`) via neuem
  Connector `geoshop-zh.mjs` — Produkt 10016 AV-Datenmodell ZH als DXF (Format 25) je
  Gemeinde (COMMUNE/BFS) oder Parzelle (PARCEL/EGRID); asynchrone Bestellung mit Polling +
  Zip-Download (`<bfs>-<gemeinde>-gds.dxf` + Lieferschein). **DWG existiert im Shop nicht**
  — DXF ist das CAD-Austauschformat. Alternative geodienste.ch: INTERLIS ganzer Kanton
  direkt (`geodienste.ch/downloads/interlis/av/ZH/av_ZH_lv95.zip`); DXF-GEOBAU dort nur via
  Rails-Formular (max 5 Grundstuecke, CSRF) — nicht automatisierungstauglich.
  → [[kartenportale-geoportale-uebersicht]]
- [x] **A5** Eigentumsabfrage ObjektwesenZH per EGRID: Ablauf + ob automatisierbar. **Stand
  2026-06-24 (Run 9):** vorlaeufig als Interessennachweis-pflichtig eingestuft. **✓ Korrektur
  2026-07-13 (Run 20):** die **elektronische Eigentumsabfrage** (maps.zh.ch, Karte
  «Eigentumsauskunft») ist **login-frei mit SMS-Code-Verifikation** — **kein Interessennachweis**
  noetig, 5 Abfragen/Tag/Mobilnummer, liefert Name/Adresse/Eigentumsform (sofern kein
  Sperrvermerk). Wegen SMS-2FA weiterhin **kein API-Automatisierungsweg**, aber deutlich
  schnellerer manueller Weg als bisher dokumentiert. Quellen: notariate-zh.ch, tagesanzeiger.ch
  → [[kartenportale-geoportale-uebersicht]] (Offen A5).

## B — Recht & Norm
- [x] **R44-R51 (Run 45, 2026-07-14, Token-Vollgas)** Acht Selbstfragen zur GT-Richtlinien-Serie
  AHB (Ordner `14-Energie-und Gebaeudetechnik/14.3-Richtlinien` + `14.5-Standards`) und drei
  KBOB-Einzelmerkblätter (`18-Nachhaltiges Bauen/18.3+18.4`) abgearbeitet, alle Quellen direkt
  gelesen. **R44 (GT_RL1 Planungsgrundlagen):** Projekt-/Qualitätsmanagement-System
  (Projekthandbuch/Pflichtenheft GT/Projektdokumentation), Leistungsnachweis-Pflicht (Kessel
  >350 kW/COP-JAZ/Luftmengen messtechnisch), BKP-Gliederung Ausschreibungen mind. dreistellig.
  **R45 (GT_RL2 Systemwahl + GT_RL9-Delta-Check):** Energieträger-Hierarchie (thermische
  Solarenergie vor PV bei Wohnen/Heime/Sport, Fernwärme prioritär); GT_RL9 ist **kein Duplikat**
  zum bereits dokumentierten §4 GA-Standard Pflegezentren, sondern eine eigenständige,
  allgemeinere Richtlinie mit neuen Fakten (**IMMO-Box** zentrales Energiemonitoring-System,
  Pflicht ab EBF >1'000 m², 3-Ebenen-Bedienkonzept, 30 %-Ausbaureserve-Richtwert).
  **R46 (GT_RL3/4 Heizung/Kühlung):** **träge Wärmeabgabesysteme in Schulzimmern NICHT
  zulässig** (Ausnahme TABS ≤25 °C), Kühlungs-Bedarfsnachweis SIA 382/1:2007 zwingend.
  **R47 (GT_RL5/6 Lüftung/Sanitär):** **Legionellenschutz Risikogruppe 2 (Spitäler/Altersheime/
  Pflegezentren): thermische Desinfektion 75 °C bei Erneuerung zwingend einzuplanen**,
  unterbruchslose Warmwasserversorgung bei Krankenheimen auch während Wartung. **R48 (GT_RL7/8
  Elektro/Beleuchtung):** EN-12464-1-Übersichtstabelle mit belegten Healthcare-Beleuchtungsstärken
  (Bettenzimmer 100/300 lx, Behandlungsräume 500 lx, Verkehrsfläche Spitäler 200 lx).
  **R49 (Kennzeichnungssystem, Delta-Check gegen §2):** kein Duplikat — eigenständige technischere
  Quelle nach DIN EN 6779-12/DIN 6779-1/DIN EN 61346-1+2 für die gebäudetechnischen Anlagen/
  Komponenten selbst (nicht Orts-/Raumebene wie §2). **R50 (Raummodul Büro/Klassenzimmer):**
  belegte Gebäudetechnik-Kennzahlen für die JANS-Priorität Schul-/Bildungsbau (500 lx, 25 m³/h·
  Person, CO₂-Grenzwert 1'500 ppm; Klassenzimmer-Delta 3. Beleuchtungszone Wandtafel + motorisierte
  Beschattung bei Neubauten Pflicht). **R51 (KBOB-Merkblätter, Delta-Check §6.1):** drei echte
  Deltas — Recyclingbeton (RC-W/RC-B/RC-M-Kategorien + reale Stadt-ZH-Projekte), Gutes
  Innenraumklima (CO₂-Grenzwert 1'000/1'500 ppm bisher fehlend + 4 reale Schadenfälle), Schadstoffe-
  in-Bauten-Checkliste (**PCP als dritter Schadstoff-Typ**, Grenzwerte 1/0.1 µg/m³) — Letzteres
  zusätzlich als Cross-Ref-Ergänzung (kein Duplikat) in [[energie-baustoffe-schadstoffe-rueckbau]]
  §6 eingearbeitet. Alle Funde → NEU §12–§17 [[recht-norm-ahb-stadt-zuerich-projektstandards]].
  Details siehe `training/curriculum.md` R44-R51.
- [x] **R39 (Run 39, 2026-07-14)** Systematischer Ordner-Abgleich deckt den nie kartierten Ordner
  `04_Merkblätter/Projektadmin AHB/` auf — Pflichtenheft des Amtes für Hochbauten Stadt Zürich
  (AHB)/Immobilien-Bewirtschaftung (IMMO) für beauftragte Planer, integrierender Bestandteil des
  Honorarvertrages sobald JANS für die Stadt Zürich baut. Vier Dokumente ausgewertet: **SIA-416-
  Flächenformelkette** am städtischen Vollzug (RFB-Richtlinie 2007, 85 S.) — ergänzt die bisher nur
  begriffliche SIA-416-Behandlung in [[recht-norm-raumprogramm-referenzwerke]] um die rechnerische
  Ebene (GF/NGF/KF-Formeln, HNF 6 Kategorien DIN 277 inkl. HNF 6 Heilen/Pflegen,
  EBF/thermische Hülle, Mietflächenkaskade, Abgrenzungsfälle); **CAFM-Bezeichnungssystem** Stadt ZH
  (Standort/Gebäude/Geschoss/Raum/Tür/Parkplatz); **SiNa Elektroinstallationen** (NIV-
  Kontrollperioden, Spitäler/Heime 5 Jahre — Healthcare-Terminplanungs-relevant); **GA-Standard
  Pflegezentren** (Raumautomations-Tabelle nach Raumtyp, Alarm-Prioritäten, 10 städtische
  Pflegezentren PZZ) → NEU [[recht-norm-ahb-stadt-zuerich-projektstandards]], emerging. Sechs
  Unterordner als Backlog offen (Submissionswesen AHB unterhalb der bereits dokumentierten
  kantonalen SubV ZH, CAD-Richtlinie, Honorar-AHB SIA 102/103/105/108-2009, Ingenieurwesen,
  eco-bau Nachhaltiges Bauen, GT-Richtlinien-Serie V21). Details siehe `training/curriculum.md`
  R39.
- [x] **R40-R41 (Run 41, 2026-07-14)** Vier der sechs R39-Backlog-Ordner ausgewertet (Honorarwesen,
  Nachhaltiges Bauen/eco-bau, CAD-Richtlinie-Kurzfassung, Submissions-/Zahlungswesen AHB).
  **Honorarwesen (R40):** die vier AHB-Fassungen der AGB zu SIA 102/103/105/108 (2009, strukturell
  ident) modifizieren zentrale SIA-Ordnungs-Artikel (10-Jahres-Aufbewahrungspflicht, 60-Tage-
  Zahlungsfrist, 5-Jahres-Werkmängel-Verjährung, Nutzungsrecht der Stadt an Arbeitsergebnissen);
  Merkblatt zu Planungsaufträgen liefert Z-Werte 2009 je Ordnung, Zeittarif-Kategorien A-G,
  Teilleistungs-/Reduktionstabellen für Bestandeseingriffe und die Reduktions-Tabelle
  aufwandbestimmender Baukosten bei TGA-/Fachplaner-Beizug (max. 30 % gestaffelt) — direkt
  einsetzbar im Skill `honorarberechnung-sia102`. **Nachhaltiges Bauen (R41):** die KBOB/eco-bau/
  IPB-Bedingungen für Planungs- UND Werkleistungen sind laut AGB Art. 3.3.5 vertraglich verbindliche
  Grundleistung, sobald ein Pflichtenheft MINERGIE-ECO fordert — konkrete Innenraumklima-
  Grenzwerte, Recyclingbeton-Quoten, Materialauflagen; dazu die 22-Kriterien-Zielvereinbarungs-
  Checkliste SIA 112/1 und das 7-Meilenschritte-Programm (Stadtratsbeschluss 2008).
  **CAD/Submissionswesen:** CAD-Kurzfassung + Planarchiv-Formate-Matrix je Gewerk; SR 720.110
  (städtische SIA-118-Abweichungen: Regie-Staffelrabatt, Zahlungsfrist, Abzugsdeckel) sowie ein
  Wegleitung-Auszug mit Zuschlagskriterien-Praxisbeispielen und der Sicherheitsleistungs-Staffel
  (10 %/5 %/CHF-1-Mio-Deckel). Zwei Dateien (kantonale Submissionsverordnung + IVöB-
  Beitrittsgesetz) als wortgleiche Duplikate der bereits dokumentierten [[recht-norm-
  submissionsverordnung-zh]] bestätigt — kein Delta. → NEU §5-§8
  [[recht-norm-ahb-stadt-zuerich-projektstandards]], Status auf **established** gehoben.
  Restbacklog (niedrigere Priorität): 12-Bauwerkdokumentation, 16-Ingenieurwesen,
  18-Nachhaltiges-Bauen-Einzelchecklisten (26 Dateien) + ECO-BKP-Kompendium (51 S.),
  14-Energie-TGA-Rest (GT_RL1-9), 09/10/04-Büro-CI-Vorlagen (vermutlich Nicht-Fund). Details siehe
  `training/curriculum.md` R40-R41.
- [x] **R36–R38 (Run 37, 2026-07-14)** Drei weitere bisher unerschlossene Dateien im Ordner
  `04_Merkblätter` ausgewertet (systematischer Ordner-Abgleich, analog der R32-R35-Methodik):
  **UGZ Hindernisfreie Aufzüge + UGZ Wohnungsbau hindernisfrei** (Stadt-ZH-Vollzugspraxis zum
  hindernisfreien Bauen — Geltungsbereich-Staffelung BehiG Art. 3, Aufzugs-Kabinenmasse SIA 500
  inkl. § 40 BBV I Krankentransport-Mass, vollstaendige Wohnungsbau-Fixmasse-Tabelle → NEU
  [[recht-norm-hindernisfreies-bauen-zh]], schliesst die in R27 offen benannte SIA-500-Luecke),
  **GVZ_Leitfaden_Hochwassergefahrenkarte.pdf** (⚠ Datenstand 2003 — ZH-Rechtsgrundlage § 22 WWG
  fuer die Naturgefahr Hochwasser, Gefahrenmatrix + Gefahrenstufen rot/blau/gelb deckungsgleich
  zur bereits dokumentierten SZ-Stufung, rechtliche Wirkung als entschaedigungslose
  Eigentumsbeschraenkung → Ergaenzung [[kartenportale-naturgefahren-objektschutz]] §7b; **schliesst
  den ZH-Rechts-/Verfahrensteil, der GIS-Layer-Endpunkt bleibt weiterhin offen**), **AFS_Leitfaden
  Dachlandschaften.pdf** (⚠ Datenstand 2010 — informelle staedtebauliche Gestaltungspraxis Amt
  fuer Staedtebau, kein Gesetzestext extrahierbar; 5-Kategorien-Solaranlagen-Tabelle nach
  Denkmalschutz-Anspruch direkt anschlussfaehig an Agent `energie-berater` → Ergaenzung
  [[recht-norm-ivhb-baubegriffe]]). Zusaetzlich RPG-2/R6-Refresh (WebSearch+WebFetch 2026-07-14):
  ZH-Umsetzungsstand weiterhin unveraendert, kein PBG-/Richtplan-Fertigstellungsdatum; parallele
  Denkmalschutz-PBG-Revision (RRB 02.07.2026) bestaetigt weiterhin beim Kantonsrat haengig →
  [[recht-norm-quellenlandkarte]]. Details siehe `training/curriculum.md` R36-R38.
- [x] **R32–R35 (Run 35, 2026-07-13)** Vier weitere bisher unerschlossene PL-02-Ordner ausgewertet
  (systematischer Top-Level-Ordnerabgleich, analog der K27/K28/K31-Methodik in Kartenportale):
  **`08_Richtplan`** (irrefuehrend benannt — kein kantonaler Richtplan, sondern das
  **Richtprojekt** als verbindliche Massskizze im Anhang einer privaten Sondernutzungsplanung;
  realer Fall Ueberbauungsordnung «VistaRotonda» Kt. Bern, Datenblatt Landflaeche 11'400 m²/
  BGF 6'966 m²/Parkplatzbedarf Art. 19.2 Baureglement/Kubatur SIA 116 32'825 m³; **korrigiert eine
  private KI-generierte Fehlquelle** die «Richtprojekt» faelschlich als SIA-102-Phase einordnete,
  Terminologie-Delta Kt. Bern «Ueberbauungsordnung» vs. Kt. ZH «Gestaltungsplan» § 83 PBG erstmals
  dokumentiert → NEU [[recht-norm-richtprojekt-ueberbauungsordnung]]), **`05_Raumpilot`**
  (bestehende KB-Annahme "nur Grundlagenband, Arbeiten/Lernen fehlen" anhand des Volltext-
  Inhaltsverzeichnisses widerlegt — die 582-seitige PDF enthaelt vollstaendige Typologie-Kapitel
  Arbeiten UND Lernen/Schulbau, Stichprobe S. 468 belegt echten Inhalt, direkt nutzbar fuer die
  JANS-Prioritaet Schul-/Bildungsbau → Korrektur [[recht-norm-raumprogramm-referenzwerke]] §1),
  **`01_Gesetze/01_Bund/Eisenbahngesetz`** (bestaetigter Nicht-Fund — reine AB-EBV/VEAB-
  Bahnbetreiber-Infrastrukturtechnik, keine Bahnabstandslinie fuer Drittbauten, ehrlich als
  Nicht-Fund dokumentiert, kein Artikel), **`10 Lärmschutz`** (kein Delta — reiner Link auf
  bauen-im-laerm.ch, bereits in [[recht-norm-quellenlandkarte]] erfasst). Details siehe
  `training/curriculum.md` R32-R35.
- [x] **R22–R26 (Run 30, 2026-07-13)** Fuenf bisher unerschlossene PL-02-Einzelordner ausgewertet:
  **2-Stunden-Schatten-Grobnachweis** (§ 284 Abs. 4 PBG / § 30 ABV, Konstruktionsverfahren +
  Azimut/Sonnenhoehe-Tabelle), **Post-Briefkastenanlage** (UVEK-Postverordnung 1998, Standort +
  Mindestmasse je Gebaeudetyp), **Absturzsicherungen im Hochbau** (Richtlinie Stadt Zuerich
  1.6.2019, Gelaender/Bruestungshoehen, kindersicher/nicht kindersicher, 15-%-Bestandsschwelle)
  → alle drei NEU [[recht-norm-arbeitshilfen-planungsdetails]]; **Zimmerzaehlung ZH-Wohnbau-
  foerderung** (Kt.-ZH-Merkblatt 15, halbe-Zimmer-Definition, eigenstaendiges kantonales
  Instrument neben der Bundes-WBS) → Ergaenzung [[recht-norm-raumprogramm-referenzwerke]] §2b;
  **STWEG-Teilungsplan-Vermessungsseite** (reales JANS-5-Phasen-Vorgehen Ebmatingen/WOMA +
  amtliche swisstopo-Empfehlung «Digitale Dokumentation Stockwerkeigentum – Aufteilungsplan»
  05.05.2020 mit INTERLIS DM.StWE + reale Wertquotenberechnung-Benchmark Hafenstrasse 46
  Romanshorn, gewichtete Faktoren 0.20-1.20 je Nutzungsart/Geschoss) → NEU
  [[recht-norm-stweg-teilungsplan-wertquoten]], speist Skill `stockwerkeigentum` + Agent
  `wertquoten-rechner`. Details siehe `training/curriculum.md` R22-R26.
- [x] **R18–R21 (Run 28, 2026-07-13)** Vier bisher unerschlossene PL-02-Unterordner ausgewertet
  (Fund/Registrierung eines vorher unterbrochenen Laufs, dessen Wiki-Artikel bereits geschrieben
  waren, aber ohne Register-Nachfuehrung — gegen die Original-PDFs verifiziert, alle Quellen auf
  Disk bestaetigt): **Baueingabe-Verfahren ZH** (Drei-Spuren-Modell, Fristen, Plandarstellung
  rot/gelb/schwarz, reale Fallbeleg-Kennzahlen Wartstrasse 8/Bohlweg 3 → NEU
  [[recht-norm-baueingabe-verfahren-zh]]), **IVHB-Leitfaden Kt. ZH** (29-Begriffe-Inventar, amtlicher
  Wortlaut Massgebendes Terrain § 5 ABV + Gebaeude-/Kleinbauten-Begriffe → NEU
  [[recht-norm-ivhb-baubegriffe]]), **Regenwasserentsorgung + Gewaesserraum-Verfahren ZH**
  (Versickerung vor Einleitung, GWS-Zonen-Verbote, Verfahren 2/3 Gewaesserraum-Festlegung → NEU
  [[recht-norm-regenwasser-gewaesserraum-zh]]), **Submissionsverordnung Kt. ZH** (4 Vergabearten,
  Fristen, Abgrenzung zur privaten JANS-Devisierung → NEU [[recht-norm-submissionsverordnung-zh]]).
  Details siehe `training/curriculum.md` R18-R21.
- [x] **R12–R17** (Run 26, 2026-07-13) Sechs bisher unerschlossene PL-02-Unterordner ausgewertet:
  **Radonschutz** (StSV-Totalrevision 2017 statt SharePoint-Stammfassung 1994, Referenzwert
  300 Bq/m³ → NEU [[recht-norm-radonschutz]]), **Zivilschutz-Bautechnik** (TPH-18 Durchfuehrungen,
  Ersatzbeitrag CHF 1'400/SP ab 01.01.2026 → NEU [[recht-norm-zivilschutz-bautechnik]]),
  **Arbeitsplatz-Bauvorschriften** ArGV 3/4 (Luftraum/Tageslicht/Raumhoehe/Verkehrswege → NEU
  [[recht-norm-arbeitsplatz-bauvorschriften]]), **Trockenraeume + Bettenlift-Pflicht** (MPP-
  Praxisnotizen → [[recht-norm-raumprogramm-referenzwerke]] §4/§5), **Mehrwertrevers/
  Beseitigungsrevers** (Cross-Ref statt eigenem Artikel, kaum neue Fakten ggue. `wissen/baurecht`
  → [[recht-norm-dispensrecht]]), **Attika-Praxisfall Zuerichseegut** (Namensverwechslung ZSG
  aufgeloest → [[recht-norm-baurechtsanalysen-benchmarks]]). Details siehe `training/curriculum.md`
  R12-R17. Offen: fedlex-ELI fuer SR 520.11/822.113/822.114 noch nicht ermittelt; `twp84d.pdf` +
  `TPH-19-d` nicht gelesen; **Schutzplatz-Bemessungsformel GELOEST (Run 49, R53):** Art. 17 ZSV
  Volltext (2 SP/3 Zimmer Wohnen, 1 SP/Patientenbett Spital/Heim) → NEU §2b
  [[recht-norm-zivilschutz-bautechnik]]; `07_Neuffert`/`04_Merkblätter` unter
  `01_Gesetze/01_Bund/` geprueft, aber leer. **Mehrwertrevers-Einschaetzung KORRIGIERT (Run 49,
  R54):** der damalige Ordner enthielt noch nicht die am 13.07.2026 nachgelieferte Volltextdatei
  `zbl.txt` (Bösch, ZBl 1993) — mit dieser Quelle lohnt sich doch ein eigener Artikel, NEU
  [[recht-norm-mehrwertrevers-grundbucheintragungen]] (der Cross-Ref auf
  [[recht-norm-dispensrecht]] bleibt als thematisch verwandter Querverweis bestehen, ist aber
  nicht mehr die einzige Anlaufstelle fuer dieses Thema).
- [x] **R10** Raumprogramm-Bemessungsgrundlagen (Raumpilot, WBS 2015, Sanitaeranlagen) — welche
  Referenzwerke ergaenzen die rechtlich bindenden Masse fuers Raumprogramm? ✓ **2026-07-13
  (Run 23):** NEU [[recht-norm-raumprogramm-referenzwerke]] — **Raumpilot** (Jocher/Loch,
  Wuestenrot Stiftung 2012, Gebaeudelehre-Nachschlagewerk analog Neufert, Kapitelstruktur
  Anthropometrie/Barrierefrei/Treppe/Aufzug/Rettung/Ruhender Verkehr/Energie, methodischer
  Grundsatz Funktionsbereiche statt fertiger Raumtypen), **WBS 2015** (Bundesamt fuer
  Wohnungswesen, Wohnungs-Bewertungs-System, 25-Kriterien-System max. 100 Punkte,
  **Grundausstattungs-Tabelle Nettowohnflaeche 30/45/60/80/100/120/140 m² je 1-7-Zimmer-Wohnung**),
  UGZ-Toilettenanlagen-Bemessung Stadt ZH (Personal-Schluessel nach ArGV3, Publikums-Schluessel
  35-150 Personen/Einheit, Betreuungsstaetten-Tabellen Krippe/Hort/Kindergarten).
- [x] **R11** Aktuelle regulatorische Entwicklungen ZH (Denkmalschutz-PBG-Revision + LSV-Novelle) —
  gibt es neue, noch nicht erfasste PBG-Vorlagen oder Verordnungsaenderungen? ✓ **2026-07-13
  (Run 23):** **Denkmalschutz-PBG-Revision** — RRB verabschiedet **02.07.2026** zuhanden
  Kantonsrat (Vernehmlassung bereits erfolgt, Inkrafttreten offen): vereinfachtes Verfahren fuer
  kleinere Aenderungen an Baudenkmaelern (kein separater Schutzbeschluss mehr), staerkere
  Gewichtung energetische Modernisierung/zeitgemaesse Nutzung/Barrierefreiheit, vertragliche
  Unterschutzstellung bevorzugt, Gemeinden bleiben zustaendig. **LSV-Novelle:** USG und LSV per
  **01.04.2026** geaendert (bauen-im-laerm.ch), inhaltliche Details noch offen → beide in
  [[recht-norm-quellenlandkarte]] neue Abschnitte. **Offen:** Kantonsratsbeschluss Denkmalschutz-
  Vorlage verfolgen; LSV-Novelle-Details bei realem Fall vertiefen.
- [x] **R9** Tiefgarage-/Parkierungserschliessung (VSS 640 050/281/291a) als beschaffbare
  Planungsgrundlage — Rampenneigung, Parkfeld-/Fahrgassenmasse, Wendehammer. ✓ **2026-07-13
  (Run 21):** NEU [[recht-norm-tiefgarage-erschliessung]] — Zufahrtstyp A/B/C (VSS 640 050),
  Parkfeld-/Fahrgassenmasse + lichte Hoehe je Komfortstufe A/B/C (VSS 640 291a), **Rampenneigung
  12-18 % je nach Komfortstufe/Deckung** + Neigungsknicke ≤6 %, Kurvenverbreiterung, Kontroll-
  einrichtungs-Layout (max. 3 % Neigung); reale ZH-Kantonspraxis Ausfahrtstyp A (IBV Huesler AG,
  Neigungsknicke bis 18 %) deckungsgleich mit Norm; Wendehammer-Nachweis 12-m-LKW (VRV Art.
  64/65/65a, Enz & Partner GmbH, 3 Geometrie-Beispiele); Praxis-Benchmark Tiefgarage Flurstrasse
  (externe Referenz, Komfortstufe B, Stuetzenabstand-Befund deckt sich mit Norm-Minimum).
  Querverbindung zur brandschutztechnischen Seite → [[brandschutz-pl03-wegweiser]] §4c.
- [x] **B1** Aktualitaet der Bundeserlasse in PL-02 gegen fedlex pruefen (Datenstand setzen).
  ✓ Teil-erledigt 2026-06-08 (Schema + RPG/EnG); **vollendet 2026-06-20 (Run 7):** alle relevanten
  SR auf fedlex-ELI gemappt — BehiG `cc/2003/667`, NHG `cc/1966/1637_1694_1679` (Aend. AS 2025 429),
  NHV `cc/1991/249_249_249`, GSchG `cc/1992/1860_1860_1860` (Stand 20250801), GSchV
  `cc/1998/2863_2863_2863`, LSV `cc/1987/338_338_338` (Aend. AS 2023 582), RPV `cc/2000/310`
  (Teilrev. AS 2025 659). **NEU:** fedlex-Redirect `redirect/rs/<SR>/de` (SR→geltende Fassung).
  → [[recht-norm-quellenlandkarte]]. **Vollendet 2026-06-28 (Run 11):** **LRV** 814.318.142.1 =
  `cc/1986/208_208_208` (Stand 20260101, PDF-A HTTP 200 getestet; ELI-Falle: AS-Jahr 1986 ≠
  Erlassjahr 1985). Restaufgabe nur noch: exaktes Stand-Datum je Erlass beim konkreten Zitat.
- [~] **B2** ZH-Umsetzung **RPG 2** (PBG-/BZO-Folgen) belegt erfassen — verlinkt Skill `baurecht`.
  ✓ **teil 2026-06-20 (Run 7):** Bund-Etappen (01.01./01.07.2026), Stabilisierungsziel **max. 2 %**
  ausserhalb Bauzone (Basis 29.09.2023), Abbruchpraemie ab 01.07.2026, RPV-Teilrev. AS 2025 659;
  ZH passt **PBG + Richtplan** an, direkt anwendbares Bundesrecht gilt schon, **ZH-Umsetzung noch
  in Erarbeitung** → [[recht-norm-quellenlandkarte]] Abschnitt RPG 2. **Update 2026-06-28 (Run 11):**
  ZH-Stabilisierungswert in absoluten Zahlen belegt — **40'807 Gebaeude / 2'594 ha** versiegelt
  (Bezug 29.09.2023), Kompensation neue Baute ↔ Rueckbau ≥ 6 m², **Abbruchpraemie ZH ab 01.07.2026**
  (bereits erfolgte Rueckbauten nicht entschaedigt), Bestandesschutz > 30 J direkt seit 01.01.2026.
  **NEU erfasst:** parallele ZH-PBG-Revision **«Klimaangepasste Siedlungsentwicklung»** (teils direkt
  im Baubewilligungsverfahren, teils kommunale Nutzungsplanung). **✓ Klima-PBG-Teil erledigt
  2026-07-06 (Run 15):** Revision **in Kraft seit 01.12.2024** (RRB 998/2024; Kantonsrat 121:49;
  espacesuisse.ch/kantonsrat.zh.ch) — direkt anwendbar (oekolog. Gruenflaechen erhalten/aufwerten,
  reduzierte Pflanzabstaende 4 m/2 m + Strassenabstaende, **§ 238a PBG** Begruenung Aussenraum),
  daneben kommunale Musterbestimmungen/BZO → [[recht-norm-quellenlandkarte]]. **Offen (RPG 2):**
  ZH-PBG-/Richtplan-Umsetzung RPG 2 bei Publikation nachziehen.
- [x] **R8** Wald-/Gewaesserabstand ZH & SZ als beschaffbare Baufeld-Grundlage. ✓ **2026-07-12
  (Run 18):** NEU [[recht-norm-abstandsvorschriften-wald-gewaesser]] — **ZH-Wald** 30 m Regel-Mass
  (Merkblatt Abt. Wald Nov 2018), Bauverbot Hochbauten **§ 262 PBG** zwischen Waldgrenze und
  Waldabstandslinie, < 15 m immer forstlich, Ausnahme = **§ 220 PBG (Gemeinde) + Art. 17 WaG
  (kant. Forstdienst)**, strenger Massstab; **ZH-Gewaesserraum** GSchV **Art. 41a/41b** (nat. GSB ×
  Breitenvariabilitaet ×1/1.5/2; Fliess <2 m→≥11 m / 2–15 m→≥2.5×GSB+7 m; Schutzgebiet-Tabelle;
  See > 0.5 ha ≥ 15 m ab Ufer), Nutzungsbeschraenkung **Art. 41c**, Verfahren §§ 36–89 PBG +
  ARE/AWEL 60 Tage, Geodatum gis.zh.ch «Gewaesser-Oekomorphologie»; **SZ** § 66 Gewaesserabstand =
  Gewaesserraum GSchG / § 67 Waldabstand 15 m ab Waldgrenze (amtlich Stand 1.2.2025). Geodatum via
  Connector 0150/0153/0185 → speist `baulinien-analyst`/M2. **Offen:** ZH-Wald-Ausnahmefall mit
  *gewaehrtem* Dispens; SZ-Wald-Ausnahme-Minima aus sz.ch-Richtlinie (bisher einsiedeln.ch 2018).
- [x] **B4 (R2)** SZ-Mass-Definitionen aus PL-02/02_Schwyz belegt erfassen. **2026-06-28 (Run 11):**
  Screenshots gelesen — **§ 31i GFZ / § 31g BMZ** (SZ ist IVHB-aligned, AZ kantonal abgeschafft),
  **§ 60 Gebaeudehoehe** (Fassadenmitte, GA 50 % GH min 3 m), **Art. 42 Firsthoehe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** ungleiche GA-Verteilung via Dienstbarkeit
  → [[recht-norm-quellenlandkarte]] SZ-Block + Benchmark Willerzell. ⚠ Stand **SRSZ 1.2.2021** (> 18 Mt.)
  → vor Zitat aktuelle SRSZ-Fassung pruefen. **✓ Waldabstand erledigt 2026-07-06 (Run 15):**
  Screenshot `Art 35 Waldabstand.png` = **§ 35 PBV SZ (400.111)** regelt die **Waldgrenze** (2 m
  ausserhalb Stockgrenze) + Waldabstandslinie im Zonenplan — **nicht** das Baumass; das numerische
  **Waldabstand-Baumass steht in § 67 PBG SZ = 15 m** (Ausnahme-Minima Hauptbau 10/8 m, Nebenbau
  6/4 m; sz.ch Richtlinie Waldabstand + einsiedeln.ch 2018) → [[recht-norm-quellenlandkarte]]
  SZ-Tabelle (Zeile korrigiert). **✓ ZH-Waldabstand-Baumass erledigt 2026-07-12 (Run 18):** 30 m
  Regel-Mass / § 262 PBG Bauverbot → [[recht-norm-abstandsvorschriften-wald-gewaesser]] §1.
  **✓ Refresh gegen amtliche SRSZ-Fassung 2026-07-12 (Run 18):** § 60/61/62/66/67 amtlich bestaetigt
  (PBG 400.100 **Stand 1.2.2025**, Volltext-Grep), ⚠ >18-Mt.-Flag aufgeloest. **Korrektur:** GFZ/BMZ
  noch NICHT in Kraft — nur Vollzugsverordnungs-Vorlage (§ 31i GFZ / § 31j BMZ / § 31m AZ, § 52
  Abs. 3 PBG); amtliches PBG/PBV enthalten sie nicht (Grep verifiziert). **Offen:** Inkraftsetzung
  der SZ-Verordnung ueberwachen; SZ-Wald-Ausnahme-Minima aus sz.ch-Richtlinie (bisher einsiedeln.ch).
- [x] **R3** Dispensrecht: § 220 PBG als Muster-Wegweiser (aus `05_Dispensrecht`). ✓ **2026-07-06
  (Run 15):** NEU [[recht-norm-dispensrecht]] — 3-Stufen-Pruefung (besondere Verhaeltnisse in
  Topographie/Form/Lage; NICHT Vielzahl-Faelle/Haerten/persoenl. Verhaeltnisse · negative
  Voraussetzungen Abs. 2/3, keine Nachbar-Zustimmungsabhaengigkeit · Ermessen Gemeinde, freie
  Kognition der Rechtsmittelinstanz), **ausnahmebewilligungs-feindliche** zone-praegende Normen
  (Hoehe/Laenge/Abstand/Ausnuetzung), Abgrenzung § 357 Besitzstand / Art. 24 RPG, Beschaffung
  **Baurekursgericht-ZH-DB** (login-frei, 4 Sucheinstiege, Rechtsgebiet-Direktlink). Benchmark
  **BRKE I 0247/2010** (Doppel-EFH-Ersatz W2bII, Dispens verweigert = Vielzahl-Faelle + zone-praegend;
  best. VB.2011.00041). ⚠ Harmonisierungs-Falle: nicht-harmonisierte BZO → PBG-Fassung bis 28.02.2017.
  **Offen:** zweiter Benchmark mit *gewaehrtem* Dispens (Hanglage).
- [x] **B3** `06_Richtlinien` (Behoerden-Richtlinien ZH/Stadt ZH, Minergie, GVZ, BfU) als
  Wegweiser-Block ergaenzen. ✓ 2026-06-20 (Run 7): belegter Wegweiser-Block (BfU/Stadt-ZH-Absturz/
  AWEL/Minergie/GVZ/2000-Watt/Lignum/SWKI…) → [[recht-norm-quellenlandkarte]]. Vertiefung je Bedarf.

## C — Brandschutz
- [ ] **C36 (B42/B43) (Run 52, 2026-07-18)** Zwei technisch blockierte Kandidaten aus dem BSPUB-Register-Scan: Feuerwehrplan-Zusatzvariante `Stoerfall ABC-Objekt/` (8 PDF, §5b-Unterordner, nie inhaltlich gelesen) und `z_Administration/000_VKF_Lieferschein_Norm_2015.pdf`+`000_VKF_Bestellung_Norm_2015.pdf` — alle fuenf Leseversuche scheiterten an EDEADLK ("Resource deadlock avoided"), auch nach Hintergrund-Priming mit 20 s Wartezeit. Gleiches Muster wie Run 50 K41-K44 (dort loeste es sich nach ca. 2 Tagen von selbst). Fuer den naechsten Brandschutz-Lauf: erneuter Leseversuch, dann inhaltlich abschliessen.
- [x] **C35 (B40) (Run 52, 2026-07-18, Token-Vollgas)** Systematischer BSPUB-Nummern-Scan im Ordner `02 Brandschutzrichtlinien 2015-17-22/` deckt eine dritte, bisher unkatalogisierte Fassung der BSR 16-15 «Flucht- und Rettungswege» auf (`BSPUB-1394520214-85.pdf`, Stand 01.12.2022). Volltext-Diff gegen die bereits dokumentierten 2015/2017-Fassungen: Fehlerkorrektur Ziff. 3.7 (Dez. 2022) aendert nur die Bezugsflaeche der Schleusenpflicht von "Geschossflaeche" auf "Brandabschnittsflaeche > 1'200 m²" — der KB-Kennwert war bereits korrekt (Quelle war die praezisere Wohnbauten-Arbeitshilfe), kein Korrekturbedarf. Genuiner Delta: Ziff. 3.5.2 Personenbelegungsdichte-Tabelle Verkauf (TKB-Beschluss 09.06.2021) — neue 3x2-Matrix nach Betriebstyp (Fachmaerkte/Kaufhaeuser 0.10, Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte 0.45/0.21 Pers./m²) ersetzt die alte 3-stufige Pauschaltabelle, JANS-relevant fuer Erdgeschoss-Retail in Wohn-/Mischnutzungsbauten. → NEU §5am [[brandschutz-pl03-wegweiser]]. Flag fuer normen-training: Destillat `vkf-brl-16-15-flucht-rettungswege.md` noch ohne 2021er-Tabelle. Details siehe `training/curriculum.md` B40.
- [x] **C34 (B41/B44) (Run 52, 2026-07-18, Token-Vollgas)** Register-Vervollstaendigung: zwei weitere bisher nicht katalogisierte BSPUB-Nummern gefunden (-57 = Zweitkopie 1-15 Brandschutznorm, bestaetigter Nicht-Fund; -71 = 13-15 Baustoffe/Bauteile Rev. 01.01.2017, Volltext-Diff ergibt nur redaktionelle Aenderungen: Rohrisolationen→Rohrdaemmungen, Bauteil 208 Bedachung→Dachkonstruktionen umbenannt, keine Kernzahl-Aenderung) → NEU §5an [[brandschutz-pl03-wegweiser]]. Zusaetzlich BSV-2026-Refresh (WebSearch+WebFetch bsvonline.ch/vkg.ch) — Stand unveraendert bestaetigt, politische Vernehmlassung weiterhin 08-11/2026, keine neue Medienmitteilung seit 06.01.2026. Ausserdem bestaetigt identisch: `1001-15_Wohnbauten Auszug Brandschutz_Arbeitshilfe_Wohnbauten.pdf` = byte-identische Mehrfachablage der bereits fuer Regensdorf/Thalwil genutzten Datei. Details siehe `training/curriculum.md` B41/B44.
- [x] **C33 (B36-B39) (Run 45, 2026-07-14, Token-Vollgas)** Die vier seit Run 42 als Backlog vorgemerkten VKF-Brandschutzerläuterungen zu Feuerungsanlagen für feste Brennstoffe (103-15 Cheminées, 104-15 Spänefeuerungen, 105-15 Schnitzelfeuerungen, 106-15 Pelletsfeuerungen, alle Stand 01.01.2015, genehmigt 23.09.2014) vollständig volltextlich ausgewertet. Kernzahlen: Cheminée-Sicherheitsabstände 0.1 m/0.8 m (offen/verglast) + Vorbelag ≥0.4 m; Spänefeuerung IMMER separater EI-60-Heizraum unabhängig Nennwärmeleistung (keine kW-Erleichterung) + freistehende Silos 10 m Sicherheitsabstand + max. 40 m³ offene Lagerbehälter im Freien; Schnitzel-/Pelletsfeuerung teilen dieselbe 70-kW-Aufstellungsschwelle (EI 30/EI 60) und dieselbe Ausräumöffnungs-Staffel (1.0x0.7/2.0x0.9/2.5x1.5 m), unterscheiden sich aber im Rückbrandsicherungs-Regime (Schnitzel 3 Fallgruppen RHE/RSE+TÜB/RSE+SLE+TÜB, Pellets 5 feiner gestaffelte Fallgruppen wegen zusätzlicher pneumatischer Förderoptionen); Pellets zusätzlich mit pelletsspezifischer CO-Belüftungspflicht + Prallschutzmatten-Pflicht bei Befüllung sowie Kennwert 1 m³ ≈ 650 kg. Alle vier ehrlich als niedrige bis mittlere JANS-Priorität eingeordnet (primär Wohn-/Landwirtschaftsbauten-Relevanz, kaum Healthcare-/Grossprojekt-Bezug) → NEU §5ai-§5al [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B36-B39.
- [x] **C32 (B31) (Run 41, 2026-07-14)** Register-Korrektur zu C31/Run 39: die dort als «unbenannt/nie katalogisiert» geführte BSR 14-15 «Verwendung von Baustoffen» war eine Fehlidentifikation — `Baustoff & Bauteile.pdf` ist tatsächlich BSR 13-15 (bereits dokumentiert), die echte BSR-14-15-Datei ist `BSPUB-1394520214-77.pdf`. Eigenständig volltext-gelesen (Ziff. 1-7 + Anhang-Stichprobe) und gegen das bereits vorhandene, längst `established` Normen-KB-Destillat `wissen/normen/destillate/vkf-brl-verwendung-baustoffe.md` (seit 2026-07-12) geprüft — konsistent, keine Abweichung. Datenstand-Delta entdeckt (PL-03-Exemplar 01.01.2017 statt 2015 in der Normen-KB-Frontmatter, Kernzahlen bleiben gültig). Neuer Healthcare-Fund mit Fundstelle: Fussnote [6] Ziff. 4.2 — RF1-Pflicht Innenwände/Decken/Stützen in Beherbergungsbetrieben [a] ohne Erleichterung. → NEU §5ad [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B31.
- [x] **C31 (B30) (Run 39, 2026-07-14)** BSV-2026-Refresh + Ordner-Restabgleich `02 Brandschutzrichtlinien 2015-17-22/`: BSV-2026-Terminplan unverändert (politische Vernehmlassung 08/2026, Inkrafttreten Herbst 2027, Marschhalt weiter in Kraft), neu belegt ca. 11'000 Rückmeldungen aus der technischen Vernehmlassung. Drei bisher nie ausgewertete Dateien identifiziert und gelesen: VKF-Vernehmlassungsbericht 2013 (Genese BSV 2015, inkl. bisher unbekannter Kindergarten-/Altersheim-Ausnahme von der 600-m²-Bagatellschwelle), AFC-Basel-Volltext-Delta-Dokumentation Teilrevision 2017 (bestätigt bestehenden KB-Stand: keine Änderung der Kernzahlen, nur redaktionelle Präzisierung), SZS steeldoc "Brandschutz im Stahlbau" (irreführend benannt als "SService...", neue Stahlbau-Fachquelle). Zusätzlich Register-Lücke geschlossen: BSR 14-15 "Verwendung von Baustoffen" lag unbenannt vor und war nie katalogisiert. **Korrektur Run 41 (C32): diese Identifikation war fehlerhaft** — siehe C32. Bestätigte Nicht-Funde: zwei leere Ordner (09_Brandschutzvorschriften, Produkte), 16-15-Basisfassung 2015 ohne Delta zur bereits genutzten rev2016-Fassung. → NEU §5ac [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B30.
- [x] **Carried forward (Wissens-Chef Run 3, 2026-07-13) — ERLEDIGT Run 37, 2026-07-14:**
  Doppelspur-Flag in [[brandschutz-pl03-wegweiser]] behoben — §5o-§5u (Run 34) und §5v-§5y
  (Run 36) auf Destillat-Verweis gekuerzt (`wissen/normen/destillate/vkf-brl-*`), Volltext-Ziffern
  nur noch dort, im Wegweiser JANS-Anwendungsnotiz + 1-2 verifizierte Kernzahlen mit Fundstelle;
  Ausnahme §5s (Nachweisverfahren BSR 27-15): die Rauchgas-Kernzahlen (raucharme Schicht 2.5 m
  etc.) waren im Destillat bewusst NICHT uebernommen (Urheberrechts-Vorbehalt) — direkt gegen S. 10
  des Originals nachverifiziert und bestaetigt, deshalb im Wegweiser belassen. Ausgaben-Delta 2015
  vs. Rev. 2022 bei [[energie-pv-brandschutz]] bestaetigt: die Swissolar-STP-Quelle selbst belegt
  (S. 3) die VKF-Merkblatt-Aktualisierung per 01.01.2022; das im Hub abgelegte VKF-PDF traegt aber
  weiterhin nur den Ausgabestempel 2015 — die eigenstaendige 2022er-Merkblatt-PDF liegt NICHT
  separat vor (offener Punkt: Original beschaffen fuer Re-Destillat). Details siehe
  `training/curriculum.md` B29.
- [x] **C30 (B29) (Run 37, 2026-07-14)** Rest-Backlog aus C29 (Baustoff&Bauteile, Gefaehrliche
  Stoffe, DIN EN 12101-2, Brandmauern 100-15) abgearbeitet + Doppelspur-Fix: **BSR 13-15
  Baustoffe/Bauteile** JANS-Anwendungsnotiz ergaenzt in §4 (RF-Klasse↔Leistungserklaerung-Bruecke,
  Bestand-Uebersetzung F30/F60→EI ueber BSR-Nr. 201-238), **BSR 26-15 Gefaehrliche Stoffe**
  niedrige Prioritaet bestaetigt (Ausnahme: Diesel/Heizoel-Notstromaggregate Spital/Pflegeheim
  koennen ab Lagermenge unter die Richtlinie fallen) → NEU §5z, **DIN EN 12101-2** (Produktnorm
  NRWG-Ausloesevorrichtungen, ergaenzt BSR 21-15/§5l um die Komponenten-/Leistungserklaerungs-Ebene)
  → NEU §5aa, **100-15 Brandmauern**: beide Datei-Kopien waren 0-Byte, jetzt synchronisiert und
  lesbar (analog Lignum-Erdbeben-Fall) — Destillat bereits vollstaendig vorhanden
  (`vkf-brl-100-15-brandmauern.md`), Kernzahlen REI 180/90/60 + 1.0 m/0.3 m-Regel (deckt sich mit
  [[energie-pv-brandschutz]]) → NEU §5ab. Details siehe `training/curriculum.md` B29.
- [x] **C29 (B27) (Run 34, 2026-07-13)** Acht bisher nie ausgewertete VKF-Einzelrichtlinien im
  >20-Titel-Ordner `02 Brandschutzrichtlinien 2015-17-22/` gelesen (Volltext): **BSR 20-15
  Brandmeldeanlagen** (Beherbergung [a] IMMER Vollueberwachung, keine Schwelle; [b]/[c] erst ab
  2 Geschossen/>50 Pers. oder 3 Geschossen/>30 Pers.), **BSR 19-15 Sprinkleranlagen**
  (Verkaufsgeschaefte >2'400 m², Parkhaus-Schwellen 4'800/2'400/9'600 m², Generalueberholung
  20 J. vs. BMA-Beurteilung 15 J.), **BSR 18-15 Loescheinrichtungen** (HFL 1/600 m², WLP 40 m
  Gehweglinie, kein WLP in Sicherheitstreppenhaus), **BSR 23-15 Befoerderungsanlagen**
  (Feuerwehraufzug 1.1×2.1 m/1'000 kg/tragbahrentauglich, RDA-Druckbelueftung als von RWA zu
  unterscheidendes System), **BSR 17-15 Kennzeichnung von Fluchtwegen** (Sicherheitsbeleuchtung
  15 Sek./30 Min./1 Lux, hoechste Anforderungsstufe bei Beherbergung), **BSR 27-15
  Nachweisverfahren im Brandschutz** (Ingenieurmethoden/Schutzzielnachweis-Prozess als Alternative
  zum praeskriptiven Standard, raucharme Schicht ≥2.5 m), **BSR 10-15 Begriffe und Definitionen**
  (amtliches VKF-Glossar — Beherbergung [a]/[b]/[c] amtliche 20-Personen-Schwelle bestaetigt,
  Fluchtweg≠Rettungsweg-Abgrenzung, Delta-Check IVHB-Geschossbegriffe: Gesamthoehe = IVHB-Verweis
  kein Delta, Geschosszahl = eigenstaendige VKF-Definition Delta ja), **BSR 16-15 Flucht- und
  Rettungswege Volltext** (bestaetigt bisherigen Foto-Auszug wortgleich, plus neue Kernzahlen
  Fluchtweglaengen 35/50 m, Ausgaenge-Staffelung nach Personenzahl, Breitenformel 0.6 m/100 bzw.
  60 Pers.) → alle NEU §5o-§5u [[brandschutz-pl03-wegweiser]]; §1-Register mit vollstaendiger
  Titelliste + Rest-Backlog (niedrige Prioritaet: Baustoff&Bauteile, Blitzschutz, DIN EN 12101-2,
  Gefaehrliche Stoffe, Lufttechnische/Waermetechnische Anlage) ergaenzt. Details siehe
  `training/curriculum.md` B27.
- [x] **C27–C28 (B25-B26) (Run 30, 2026-07-13)** B25-Verifikations-Retry gelang + eine neue
  Fundstelle: **Lignum «Erdbebengerechte mehrgeschossige Holzbauten»** (2010) — die seit Run 24
  wiederholt als OneDrive-Cloud-Platzhalter unlesbare Datei liess sich in diesem Lauf vollstaendig
  lesen (reines Sync-Timing, kein Recherche-Problem); Inhalt: SIA 260-267/261/265,
  Ersatzkraft-/Antwortspektrenverfahren, Grundschwingzeit-Schaetzformel T1=2√u (261.39), duktiles
  Tragwerksverhalten via Verbindungen Beplankung↔Rippen, Bestand → Merkblatt SIA 2018 → NEU §5m
  [[brandschutz-pl03-wegweiser]]. **Lignatec «Bauten in Holz — Brandschutz-Anforderungen»**
  (kein Delta zu B13/§4b, sondern eigenstaendige holzbau-spezifische Fassung der Feuerwiderstands-
  Tabelle nach Geschosszahl×Nutzung — Healthcare-Kernbefund: Sprinkler reduziert bei Hotels [b]
  die Tragwerksanforderung, bei Krankenhaeusern/Pflegeheimen [a] NICHT) → NEU §5n
  [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B25-B26.
- [x] **C20–C26 (B19-B25) (Run 28, 2026-07-13)** Verifikations-Nachtrag + zwei neue PL-03-Fundstellen:
  **§4c-Korrektur abgeschlossen** — die Referenzen "§5g"/"§5l" (bereits im §4c-Korrekturblock eines
  vorherigen unterbrochenen Laufs angelegt) wurden mit vollstaendigem, gegen die Originalquelle
  verifiziertem Inhalt gefuellt: **§5g «Parking»-Begriff** (>600 m² Abgrenzung, Schleusenpflicht ab
  1'200 m² Brandabschnittsflaeche — bisher nicht dokumentierte Kernzahl) und **§5l BSR 21-15 RWA-
  Grundrichtlinie** (vollstaendige Parking-Tabelle 600/3'600/2'400/4'800 m², LRWA/MRWA/NRWA) →
  [[brandschutz-pl03-wegweiser]]. **BS-Symbole 01.01.2017** (kanonischer Vollkatalog, Delta zum
  Musterplansatz §5b: RDA/SLA/Poller/PV-Symbole) → Ergaenzung §5b. Drei bestaetigte
  Nicht-Funde (ehrlich dokumentiert statt verschwiegen): **08 QS-Docx** (private ChatGPT-Notiz,
  kein neuer Inhalt), **Solaranlagen-Ordner** (identische Datei wie [[energie-pv-brandschutz]],
  Cross-Reference-Duplikat), **07 Blaues Buch** (nur die bereits in §5e ausgewerteten 2 Screenshots
  vorhanden, kein weiteres Material). Ein Fund technisch nicht abschliessbar: **Lignum Erdbeben**
  (`Erdbebengerechte_Holzbauten_d.pdf`) ist ein OneDrive-Cloud-Platzhalter, der wiederholt mit
  «Resource deadlock avoided» nicht lesbar war (kein anderer Prozess haelt die Datei, `lsof` leer) —
  offener technischer Punkt fuer den naechsten Lauf. Details siehe `training/curriculum.md`
  B19-B25.
- [x] **C15–C19 (B14-B18)** (Run 26, 2026-07-13) Bisher unerschlossene PL-03-Ordner ausgewertet:
  **Musterplansatz bsvonline.ch** (Legende/Symbolik + Objektdatenblatt Feuerwehrplaene → NEU
  §5b), **Feuerwehr-Bewegungs-/Stellflaechen** (6×11 m, Schlauchlaenge 60 m ⚠ Quelle nur Foto,
  Verifikation offen → NEU §5c), **Fluchtwegkonzept Beherbergung [a]** (BSR 16-15 Ziff. 3.6.1,
  mind. 2 unabhaengige Brandabschnitte je Bettengeschoss, real KISPI-Ordner → NEU §5d),
  **Blaues Buch Kap. 18** (§ 305 PBG geht vor BSN wo strenger, nur 2/>10 Seiten gelesen → NEU
  §5e), **VKF-Verzeichnis 40-15** (Konkordanz-Tabelle, niedrige Prioritaet bestaetigt → NEU §5f)
  → alle [[brandschutz-pl03-wegweiser]]. Ordner `11 Projekte/` geprueft: leer. Details siehe
  `training/curriculum.md` B14-B18.
- [x] **C11 (B10)** Atrien/Innenhoefe — ab wann gilt ein Raum als Atrium, welche Massnahmen? ✓
  **2026-07-13 (Run 24):** VKF-Erlaeuterung 101-15de vollstaendig — Definition (>3'600 m²/
  >3 Geschosse/>11 m), 3 Typen A/B/C, Innenhof-Sonderregel <5 m Breite → NEU
  [[brandschutz-pl03-wegweiser]] §4d.
- [x] **C12 (B11)** Doppelfassaden — verschaerfte Anforderungen bei schlafenden Personen? ✓
  **2026-07-13 (Run 24):** VKF-Erlaeuterung 102-15de — Typ A/B, **JANS-Healthcare-Kernbefund**
  Typ B zieht BMA-Vollueberwachung + Verbot oeffenbarer Fenster nach sich → NEU
  [[brandschutz-pl03-wegweiser]] §4e.
- [x] **C13 (B12)** Kleine Beherbergungsbetriebe/Berghuetten < 20 Personen — gilt die strengere
  Beherbergungs-QSS-Kategorie? ✓ **2026-07-13 (Run 24):** 20-Personen-Schwelle belegt, realer
  Benchmark Biwak Grassen (QSS 2, R30, BMA-Erleichterung) → NEU [[brandschutz-pl03-wegweiser]] §4f.
- [x] **C14 (B13)** Holzbau-Brandschutz — Einordnung in die VKF-Feuerwiderstandssystematik
  (R/EI/REI, RF1)? ✓ **2026-07-13 (Run 24):** Lignum-Dokumentation Themenblock 4 — RF1 begrenzt
  auf REI 30/60/90, Kapselungsregel K30-RF1, Abgleich zu §4b R60/R90-Schwellen → NEU
  [[brandschutz-pl03-wegweiser]] §5.
- [x] **C10 (B9)** Parkhaeuser/Einstellraeume als eigene Brandschutz-Bauaufgabe (Tragwerk/
  Brandabschnitte/Fluchtwege/RWA/Sprinkler) — reale JANS-Frage bei Healthcare-/Wohnbauten mit
  Tiefgarage. ✓ **2026-07-13 (Run 21):** VKF-Arbeitshilfe 1002-03d ausgewertet (⚠ Datenstand
  06.08.2003, vor Anwendung gegen bsvonline.ch pruefen) — Tragwerk UG mind. R 60 (nbb) bzw. R 30
  bei eingeschossig/unterirdisch/nicht ueberbaut; Brandabschnittsflaechen 4'000/2'000/8'000 m²
  (mit Sprinkler verdoppelbar); **Fluchtweg-Kernzahlen: 1 Treppenanlage nur bis 600 m² BGF, 2+
  Treppenanlagen bis 900 m² je, Gesamt-Fluchtweglaenge 35/50 m**; RWA-Verzichtsschwellen 600/1'200 m²
  (mit Sprinkler verdoppelt); Sprinklerpflicht ab 4'000/2'000/8'000 m² bzw. ab 50 Kompaktparkplaetzen.
  **JANS-Praxisrelevanz:** grosse Healthcare-Untergeschosse brauchen frueh im Vorprojekt zwei
  raeumlich getrennte vertikale Fluchtwege → [[brandschutz-pl03-wegweiser]] §4c. Querverbindung zur
  Erschliessungsgeometrie (VSS-Normen) → [[recht-norm-tiefgarage-erschliessung]].
- [x] **C7 (B6)** Brandschutzabstaende zwischen Gebaeuden als belegte Kernzahlen. ✓ **2026-07-13
  (Run 19):** VKF-BSR 15-15de Ziff. 2.1-2.4 — Regel-Abstaende 5/7.5/10 m + reduzierte 4/5/6 m
  (RF1/einseitig/beidseitig brennbar), Sonderfaelle Nebenbauten (4 m, 150 m² Areal-Befreiung),
  Fahrnisbauten ≤ 150 m² befreit, Buero/Gewerbe/Industrie Areal-Ueberbauung befreit bis 3'600 m²
  → NEU [[brandschutz-pl03-wegweiser]] §4b. Real angewandt: Benchmark **Regensdorf** (EFP AG
  Brandschutzfachstelle-Anfrage 16.02.2024 + JANS-Antwort 17.02.2024, Zitat Ziff. 2.1/2.2 wortgleich).
- [x] **C8 (B7)** Tragwerk-/Brandabschnitts-Feuerwiderstand nach Gebaeudehoehenkategorie × Nutzung
  (Tabellen 1-3, Ziff. 3.7.1). ✓ **2026-07-13 (Run 19):** R30/60/90/120-Matrix (geringe/mittlere
  Hoehe/Hochhaus × Wohnen/Buero/Industrie/Beherbergung) belegt, Konzept baulich vs. Loeschanlage.
  **JANS-Healthcare-Kernbefund:** Beherbergung [a] (Krankenhaus/Alters-Pflegeheim) durchgaengig
  **R 60 auch bei geringer Hoehe** (einzige Kategorie ohne R30-Stufe) → Tragwerk bei Healthcare
  eine Stufe strenger als bei Wohnen/Buero gleicher Hoehe; Sprinkler-Vollschutz senkt auf R30/60.
  Real angewandt: Benchmark **Thalwil Bohlweg 3** (Factsheet 05.03.2025, EFH k.A. vs. «Konsumierung
  Sonderbauvorschrift» als MFH R 60 — Nutzungseinstufung entscheidet Tragwerks-Mehrkosten VOR der
  Statik) → [[brandschutz-pl03-wegweiser]] §4b.
- [x] **C9 (B8)** Treppen innerhalb Nutzungseinheit vs. Fluchtweg-Treppen (BSR 16-15, reale JANS-
  Frage). ✓ **2026-07-13 (Run 19):** «An Treppen innerhalb der Nutzungseinheit werden keine
  Anforderungen gestellt» (Z.3.2.2 A3, z. B. interne Duplex-/Maisonette-Treppe); Fluchtweg-Treppen
  (vertikale Fluchtwege) dagegen Mindestbreite 1.2 m gerade / 1.5 m gewendelt, reduzierbar auf 0.9 m
  bei max. 1 OG+1 UG; Brandschutzabschluss-Verzicht horizontal↔vertikal bei ≤ 900 m²/Fluchtweg
  → [[brandschutz-pl03-wegweiser]] §4b.
- [x] **C10 (Run 36, 2026-07-14)** Vier weitere VKF-Einzelrichtlinien aus dem B27-Rest-Backlog
  (Blitzschutz 22-15, Brandverhuetung/organisatorisch 12-15, Waermetechnische 24-15, Lufttechnische
  25-15) → NEU §5v-§5y [[brandschutz-pl03-wegweiser]]: **§5v** Sicherheitsbeauftragter-Pflicht +
  Sprachalarmierung ab 50/300 Betten + Dekorations-RF + Geruestbekleidung ≥0.8 m; **§5w**
  Blitzschutzpflicht Spital/Pflegeheim/Hochhaus + Blitzschutzklasse III/II (SEV 4022); **§5x**
  Heizraum EI 30/60 ab 70 kW + Sicherheitsabstaende 0.1/0.2/0.4 m + gewerbliche Kueche; **§5y** BSK
  EI 30-S + Verzichts-Schwellen ≤1'200/600 m² + Kuechenabluft-Staffel EI 60 + ≥85 °C. **Rest-Backlog
  niedrige Prioritaet (offen):** Baustoff&Bauteile 13-15 (teils via Merkblatt §2), Gefaehrliche
  Stoffe 26-15, DIN EN 12101-2, Brandmauern 100-15 (Datei 0-Byte/nicht synchronisiert).

- [x] **C1** Klaeren, ob ein duenner Verweis-Artikel auf `brandschutz` reicht oder PL-03-
  Spezifika (Brandschutznachweis-Vorlagen) hier referenziert werden sollen. ✓ **2026-06-22 (Run 8):**
  Entscheid = **schlanker Wegweiser** [[brandschutz-pl03-wegweiser]]: Planungsgrundlagen-Ebene
  (VKF-Struktur, Nachweis-Prozess, QSS) hier, **Fach-/Detailarbeit (EI/RF/Brandabschnitte/DoP)
  vollstaendig im Skill `brandschutz`** — kein Doppel. Muster: [[energie-pv-brandschutz]].
- [x] **C3 (B2)** Brandschutznachweis-Vorlagen brandschutznachweis.ch — wann braucht es welche? ✓
  2026-06-22 (Run 8): «Anleitung zum Brandschutznachweis» V.3 (A–F) belegt — Inhalt Textbereich D
  + objektbezogen E + Plaene F (SIA 400, 1:100/1:200, A3, Symbole VKF-MB 2003-15); EFH/Nebenbau/
  geringe Abmessung nur Plaene auf Verlangen; Umbau/Nutzungsaenderung = Maengel aufzeigen + auf
  aktuellen Stand; Vorlage MFH-5g-RF1 V.3 → [[brandschutz-pl03-wegweiser]] §2.
- [x] **C4 (B3)** VKF-Struktur 2015 (Norm/Richtlinien/Verzeichnisse/Erlaeuterungen/Arbeitshilfen)
  als Wegweiser. ✓ 2026-06-22 (Run 8): 5-Teil-Struktur ↔ PL-03-Ordner-Mapping + Rev. 2017/2022 +
  Online (bsvonline.ch/brandschutznachweis.ch); ⚠ BSV 2026 in Vernehmlassung (Inkraft-Antrag
  03/2027, bis dahin BSV 2015 gueltig) → [[brandschutz-pl03-wegweiser]] §1.
- [x] **C5 (QSS)** Qualitaetssicherungsstufen 1–4 als Planungsgrundlage. ✓ 2026-06-22 (Run 8):
  BSR 11-15 Tab. 3.3.1/3.4.1 belegt; **Healthcare = Beherbergung [a] → QSS 2–3** (Brandschutz-
  experte VKF, BKP 298.5); Umbau >300 Pers. = QSS 2/3/3 → [[brandschutz-pl03-wegweiser]] §3.
- [~] **C6 (B5)** BSV 2026 bei Publikation der definitiven Fassung nachziehen — Struktur/QSS-
  Aenderungen pruefen. **Stand-Update 2026-06-30 (Run 12):** Projekt **doppelt gebremst → 2027**:
  (1) **Konsolidierungsphase** (offiz. bsvonline.ch: pol. Vernehmlassung 08–11/2026, IOTH-Genehmigung
  03/2027, Inkrafttreten 2027 statt 2026), (2) **politischer Marschhalt bei den Liberalisierungen**
  nach Brand **Crans-Montana** (VKG-MM 06.01.2026) → Entwurf wird risikoorientiert neu aufgebaut,
  neuer Terminplan erst nach Brand-Untersuchung. **Bis dahin BSV 2015/17/22, keine antizipierten
  Erleichterungen einplanen** → [[brandschutz-pl03-wegweiser]] §1. **Offen:** definitive Fassung +
  neuer Terminplan bei Publikation (Check 08/2026 / nach Untersuchungsbericht).
  **2026-07-14 Run 48:** Struktur-/QSS-Aenderungen jetzt bereits aus dem Konzeptstand 2022 belegt
  (nicht erst bei Publikation der definitiven Fassung) — 1 statt 2 Erlassstufen, max. 200 S. BSV +
  separate BSV-Erlaeuterung, 3 statt 4 QSS (80/15/5-Regel), operationale "rote Linie" fuer
  Bestandesbauten-Nachruestung geplant → [[brandschutz-pl03-wegweiser]] §1a. Weiterhin offen bleibt
  nur der finale, Marschhalt-bereinigte Verordnungstext.
- [x] **C2 / E6** Brandschutz/Naturgefahren **Solaranlagen** (Swissolar-STP zu VKF-BSM 2001-15).
  ✓ 2026-06-18: eigener Artikel `[[energie-pv-brandschutz]]` — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), Brandmauer-Uebergang (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  RWA-Abstand (Lichtraumprofil), Feuerwehr-Kennzeichnung + Einsatzplan **≥30 kW**, Naturgefahren
  SIA 261/261-1, DC bleibt unter Spannung. Solar-spezifisch, kein Doppel zu Skill `brandschutz`.

## D — Energie
- [x] **D10 / E39-Rest (Run 50, 2026-07-16)** Ist das GreenPV-Forschungsprojekt (HSLU, bisher nur
  als Workshop-2-Zwischenstand vom 15.06.2022 bekannt, Run 49) inzwischen abgeschlossen, und
  liefert ein Schlussbericht mehr als die Workshop-Folien? ✓ **JA** — WebSearch fand die
  oeffentliche Schlussbroschuere (HSLU IGE, 27.08.2024, 92 Druckseiten), volltext ausgewertet:
  Take-Home Messages mit prozentgenauen Kennzahlen (PV-Fassade Sued unverschattet −20 %
  Jahresertrag / +43 % Winterstrom ggue. Dach; Kombination PV+Begruenung senkt THGE >25 % bei
  nur ~9 % LCC-Mehraufwand), 8 Empfehlungen zur Systemwahl, vollstaendiger Systemvergleich
  Dach/Fassade/Aussenraum, VKF-Brandschutz-Staffel nach Gebaeudehoehe (Hochhaus-Luecke: keine
  Standard-PV-Fassaden-Kategorie), zwei reale Fallbeispiele mit Kostenkennwerten
  (Holenackerstrasse 65 Bern CHF 1'400/m² PV-Fassade; Sky-Frame Frauenfeld CHF 450'000/1'100 m²
  Begruenung) sowie SIA-112-Planungs-Checkliste → §6b NEU [[energie-pv-eignung-typenwahl]],
  Status established. Details `training/curriculum.md` E39-Rest.
- [x] **D24 (Run 42, 2026-07-14, E36-E38, Token-Vollgas)** Ordner-Abgleich PL-04 liefert drei
  weitere Funde. **E36 — neue Domaene:** Checkliste Gebaeudeschadstoffe (AWEL 02.2023) —
  Vier-Faelle-Weiche Asbest/PCB/CP nach Baujahr/Bausumme/Rueckbauvolumen, untersuchungspflichtige
  Spezialobjekte inkl. **Spitaeler** → NEU [[energie-baustoffe-schadstoffe-rueckbau]]. **E37 —
  Delta:** SolarApp AG als eigenstaendiges Vorprojekt-Tool eingeordnet, realer Willerzell-Bericht
  liefert zusaetzlich die Eigenverbrauchs-/Unabhaengigkeitsseite (53 %) → [[energie-pv-eignung-typenwahl]]
  §2c. **E38 — Delta:** PVSOL premium als TGA-Fachplaner-Tool eingeordnet, realer 491-kWp-Grossanlagenfall
  (Thomas Lueem Partner AG) mit explizitem "kein Planungsdokument"-Vorbehalt → [[energie-pv-eignung-typenwahl]]
  §2c. Details siehe `training/curriculum.md` E36-E38.
- [x] **D23 (Run 40, 2026-07-14, E32-E35, Token-Vollgas Fan-out)** Ordner-Abgleich PL-04 liefert
  vier Neufunde, alle in [[energie-pv-eignung-typenwahl]] eingearbeitet. **E32 —
  Planungsgrenzwerte dachintegriertes Typ-B-System:** Eternit-Sunskin-Planungsdoku, min. 10°/
  max. 60° Dachneigung, Bezugshoehe bis 2000 m ohne Ruecksprache, Schneelast-Bemessungswert Ed
  ~4.4-16.2 kN/m² steuert Lattendimensionierung, Hinterlueftung-Mindesthoehe 60 mm → §1c,
  established. **E33 — PV-Eignungs-Methodik uvek-gis/sonnendach.ch:** 5-stufige Eignungsklassen-
  Skala (Gering <800 bis Hervorragend ≥1400 kWh/m²·a), Modulwirkungsgrad-Sprung 17→20 % seit
  09/2022, Performance Ratio 80 % → §2b, established. **E34 — realer installierter System-CHF/
  kWp-Wert (schliesst E11-Luecke teilweise):** EnergieSchweiz-Musterbericht 6.0 kWp = CHF 19'140
  ≈ 3'190 CHF/kWp installiert, Amortisation 24 Jahre; Typ B/C/D weiterhin offen → §3 neue
  Tabellenzeile, established. **E35 — architektonische PV-Integrationsbeispiele:** TEC21/
  TRACÉS-Dossier "SolaRes Bauen" 2012, Leitprinzip Beat Kaempfen (Doppelfunktion jedes
  Bauelements), Projekte Plusenergiehaus Zuerich Hoengg + Umwelt Arena Spreitenbach → §5,
  emerging (Datenstand 2012). Geprueft/kein Fund: `_Literatur/planer_d.pdf` (inhaltsgleich mit
  bereits ingested minergiewissen-PDF), `prefa.solar/PREFA_Solarfolder` (Dopplung), zwei triviale
  Website-Screenshots (energieheld.ch, sonnenverlauf.de). **GreenPV-Backlog GELOEST (Run 49,
  E39):** `_Literatur/20220606_GreenPV - Workshop 2.pdf` S. 1-29 ausgewertet — belegte
  orientierungsabhaengige Fassaden-PV-Kennwerte (Solarstrahlung/Stromertrag/Amortisation
  graue Energie/THG/UBP je Sued/Ost/West/Nord, max. Fassadentemperatur je Orientierung) →
  NEU §6 [[energie-pv-eignung-typenwahl]]. Weiterhin offen: S. 30-46 (qualitative Analyse) +
  `wissen.minergie.ch/pvopti_MFH_Nachweiskurs...xlsb` (nicht textuell auslesbar). Details siehe
  `training/curriculum.md` E32-E35 + E39.
- [x] **D22 (Run 38, 2026-07-14, E5/E9/E31)** Datenstand-Refresh dreier offener Punkte. **MuKEn-
  2025-ZH-Umsetzung (E5/D1):** vertiefter Web-Check (zh.ch Bauvorschriften-Gebaeude-Energie,
  zh.ch Langfristige Klimastrategie, hev-zh.ch/muken, energiehub-gebaeude.ch, aeesuisse.ch) —
  **unveraendert**, weder Vernehmlassung noch Gesetzesentwurf noch Inkrafttretensdatum amtlich
  auffindbar → [[energie-energienachweis-zh-formulare]] §Datenstand. **Graue-Energie-ZH-Grenzwert
  (E9/D8):** ebenfalls unveraendert, gekoppelt an obige Ueberfuehrung; **wichtiger Nebenfund, NICHT
  amtlich verifiziert:** mehrere WebSearch-Zusammenfassungen behaupten unabhaengig einen ZH-
  Zielwert **«bis 2027»** fuer einen eigenen Grauenergie-Grenzwert («Pionierrolle», «normierte
  Standards der Baubranche») — bei Gegenpruefung der fuenf Massnahmenblaetter GE01-GE05 der
  kantonalen Klimastrategie (zh.ch) enthaelt **keines** diese Aussage woertlich; auch die
  Bauvorschriften- und Klimastrategie-Uebersichtsseiten bestaetigen es nicht. Bewusst **nicht**
  als KB-Fakt uebernommen (Rule `identifikatoren-verifizieren`/`wissens-bibliothekar`: Status-
  Hebung nur gegen amtliche Quelle) — offener Rechercheauftrag: pruefen ob ein RRB/Kantonsrats-
  geschaeft (kantonsrat.zh.ch) oder AWEL-Faktenblatt diesen Zielwert bestaetigt →
  [[energie-uebersicht]] §Graue Energie. **Pronovo-Tarifstruktur KLEIV (E31):** WebSearch-
  Gegenpruefung bestaetigt, die FOERDERSTRUKTUR (nicht die Tageswerte) hat sich seit 01.04.2025
  nicht veraendert — keine neuen Bonus-Kategorien/Schwellen → Refresh-Vermerk in
  [[energie-betriebsenergie-pv-wirtschaftlichkeit]] §Offene Punkte.
- [x] **D21 (Run 34, 2026-07-13, E29)** Vier bisher unausgewertete Dateien im Ordner `U Wert
  berechnung/` gepruefte, drei mit echtem Delta: **EN-102-d** (Vollzugshilfe Dez. 2018) — Umbau/
  Umnutzung-Grenzwerte + Waermebruecken-Typen 1/2/3/5/6 + Kap. 8 Sommerlicher Waermeschutz (g-Wert/
  SIA 180); **Bauteilkatalog Neubauten** (BFE 2002) — konkrete Schichtaufbau-Bibliothek B1-B21/
  W1-W7i mit U-Wert-Lookup nach Daemmdicke×λ (Konstruktions- statt Grenzwertebene, direkt fuer
  Vorprojekt-Bauteilaufbau-Vorschlaege nutzbar); **CLT-Luftdichtheit/Feuchte** (Ergaenzung zu E13)
  — ab 3-Schicht-CLT von sich aus luftdicht (n50-Werte), Leimfugen als feuchtevariable Dampfbremse,
  sd-Wert-Konstruktionsregel (aussen duenner/dichter als innen) → alle NEU §5
  [[energie-heizwaermebedarf-waermeerzeugerleistung]]. **VoHi_EN02** (2013) = ueberholter
  Vorgaenger von EN-102-d, kein Delta. Zusaetzlich MuKEn-2025-ZH-Refresh per WebSearch: unveraendert
  bestaetigt (kein neuer ZH-Termin) → [[energie-energienachweis-zh-formulare]] §Datenstand.
  Details siehe `training/curriculum.md` E29.
- [x] **D19-D20 (Run 31, 2026-07-13, E27-E28)** Zwei bisher unerschlossene PL-04-Unterordner unter
  `Solaranlage/` ausgewertet (nach vollstaendigem Ordnerabgleich, Domaene ansonsten weitgehend
  ausgeschoepft — E1-E26 bereits belegt): **Dachausstiege** (Wartungszugang Flachdach-PV, 6
  Referenzfotos — Fallschutz-Gelaender, seitliche Positionierung neben dem PV-Feld, kein Norm-
  Beleg → NEU §4 [[energie-pv-eignung-typenwahl]], speculative), **megasol.ch Modul-Datenblatt**
  (bifaziales Glas-Glas-Modul M385-HC120-b, 211 Wp/m² + Rueckseiten-Mehrertrag +5...+35 % je nach
  Untergrund-Albedo — Delta zur bestehenden Wp/m²-Tabelle → [[energie-pv-eignung-typenwahl]] §1b,
  established). Weitere Solaranlage-Unterordner (energieheld.ch, sonnenverlauf.de) gesichtet —
  Einzelscreenshots ohne neuen Fachinhalt, kein Delta. Details siehe `training/curriculum.md`
  E27-E28.
- [x] **D10-D18 (Run 29, 2026-07-13, E18-E26)** Zwei bisher nie erschlossene PL-04-Unterordner
  ausgewertet + zwei Refresh-Checks: **Minergie-Nachweiskurs-Unterlagen** (`wissen.minergie.ch/
  Kursunterlagen_230926/`) — die reale Fallstudie "Maison Climat" (MFH Seelandweg 15 Biel)
  liefert konkrete Nachweis-Kennzahlen (Heizwaermebedarf 96.8→86.9 MJ/m² bzw. mit WRG-Lueftung
  78.9→62 MJ/m², SIA-2060-Elektromobilitaet 60%/20%-Ausbaustufen, PV 56.25+18.28 kWp,
  Monitoring-Pflicht ab 1'000 m²) → [[energie-minergie-referenzprojekt-maison-climat]] von
  `emerging` auf `established` gehoben; Kursprofil bestaetigt Kursattest zaehlt zur
  Minergie-Fachpartnerschaft-Voraussetzung → [[energie-private-kontrolle-zh]] §5.
  **`_Heizwaermebedarf/`-Ordner** (nie in curriculum.md erfasster PL-04-Top-Level-Ordner) —
  vollstaendiges SIA-380/1-Berechnungsverfahren (11-Schritt-Formelkette + Beispielrechnung) +
  SIA-380/1-Anhang-A-Standardnutzungswerte (inkl. Kategorie Spitaeler fuer Healthcare) +
  SIA-384/1/384.201-Waermeerzeugerleistung-Dimensionierung (Formel + Holz/Pellet/Oel/Gas-
  Berechnungsbeispiele + Kontrollwerte spez. Heizleistung) → NEU [[energie-heizwaermebedarf-waermeerzeugerleistung]].
  **EN-101c Kt. Schwyz** (Willerzell-Fall) — SZ-Pendant zum EN-ZH-System (PV-Ersatzabgabe-
  Befreiung Globalstrahlung <1'120 kWh/m²a via map.geo.sz.ch, VHKA-Pflicht KEnV §26 SZ) →
  Ergaenzung [[energie-energienachweis-zh-formulare]]. **Refresh-Checks:** E17-⚠ aufgeloest
  (Kurs 2026 weiterhin als "Workshop Minergie-Nachweisformular" angeboten); MuKEn-2025-ZH-
  Umsetzung unveraendert ausstehend, NEU-Fund EVEN-Rollout Zentralschweiz erst Anfang 2026
  (gestaffelt zu ZH). Details siehe `training/curriculum.md` E18-E26.
- [x] **D5-D7 (Run 27, 2026-07-13)** Drei bisher unerschlossene PL-04-Unterordner ausgewertet:
  **Betriebsenergie-Praxisfall** (`_Betriebsenergie/` 15 Screenshots — reale "Facts & Figures"
  Sanierung EFH 1957/120 m², PV 14 kWp + Batterie + WP-Boiler + Dachdaemmung, Gasbezug
  28'613→19'073 kWh, Amortisation ≈ 7 Jahre → NEU Abschnitt "Betriebsenergie" in
  [[energie-uebersicht]], emerging), **Minergie-Referenzprojekt «Maison Climat»** (reales
  Minergie-A-Projekt Seelandweg Biel, 20 Wohnungen Holzbau-Ersatzneubau, PV-integriert +
  Erdwaermesonde → NEU [[energie-minergie-referenzprojekt-maison-climat]], emerging),
  **forumenergie.ch** (aktiver Weiterbildungsanbieter, JANS-eigener Kursbeleg 26.09.2023 →
  Weiterbildungs-Hinweis in [[energie-private-kontrolle-zh]] §5, ⚠ Datenstand 2023). pronovo.ch-
  Ordner bestaetigt leer. Details siehe `training/curriculum.md` E15-E17.
- [~] **D1** Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datum nachziehen. ✓ Stand gesetzt
  2026-06-06 (EnerG seit 1.9.2022/MuKEn 2014; MuKEn 2025 EnDK 08/2025, ZH-Umsetzung offen) —
  bei konkreter ZH-Fassung weiter verifizieren. **Update 2026-06-12:** Vollzug seit 01.01.2026
  ueber Plattform **EVEN** (`energievollzug.ch`), PDF EN-101…EN-141 entfallen → siehe D4.
  **Update 2026-06-18:** MuKEn 2025 Inhalte belegt (graue Energie / rein erneuerbare Waerme /
  mehr Eigenstrom; Umsetzung 2025–2030), **ZH-Ueberfuehrung weiterhin ausstehend** (endk.ch /
  energiehub-gebaeude.ch) → bei ZH-Gesetzespublikation in `[[recht-norm-quellenlandkarte]]`
  + Energie-Artikel nachziehen.
- [x] **D2** U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle. ✓ 2026-06-06 — belegt in
  KB `wissen/energie/` (`[[u-werte-grenzwerte-ch]]`); planungsgrundlagen verlinkt statt dupliziert.
- [x] **D3** Pruefen: eigenes Skill `energie-nachweis` rechtfertigt sich? ✓ **2026-07-13
  (Run 23) ENTSCHIEDEN: NEIN.** Die Domaene ist bereits vollstaendig im Wiki + ueber den Agent
  `energie-berater` organisiert (EN-Formulare/EVEN/Private Kontrolle/PV/Zusatzformulare je eigener
  Artikel); ein eigenes Skill wuerde nur Struktur duplizieren, ohne eine neue Faehigkeit (Generator/
  Workflow) zu schaffen → [[energie-uebersicht]] §Offen.
- [x] **D9** Zusatzformulare neben EN-ZH/EVEN (WTA, Formular S Schallschutz Aussenlaerm, Gesuch
  Versickerung Regenwasser) — Verfahren, Zustaendigkeit, Schwellenwerte? ✓ **2026-07-13 (Run 23):**
  NEU [[energie-baueingabe-zusatzformulare]] — **WTA-Formular** (alle Waermeerzeuger, 3-stufige
  Verfahrensweiche Melde-/Anzeige-/Ordentliches Verfahren je nach Anlagetyp, Neubau-Kopplung
  **immer EN-103 mit Privater Kontrolle** noetig sonst kostenpflichtige Behoerdenkontrolle,
  GWR-Ausfuehrungskontrolle Seite 5); **Formular S** (Aussenlaerm, Abgrenzung zu LN-1a/1b
  Anlagen-eigener Laerm bei Luft-WP), LSV-Novelle 01.04.2026 vermerkt; **Gesuch Versickerung
  Regenwasser AWEL** (Bewilligungsschwelle Flaechenverhaeltnis >5:1 bzw. Bagatellgrenze 20 m²,
  **50-m²-Schwelle unbeschichtete Metallflaechen → Adsorberpflicht**, Fassadenfaktor 0.2, Normbasis
  SN 592 000).
- [x] **D4** EN-ZH **Fachformular-Liste** je Fachbereich (Inhalt der einzelnen Energie-Beilagen)
  belegt erfassen. ✓ 2026-06-12: vollstaendige Liste EN-101a…EN-141 + S/LN-1 mit Inhalt &
  Rechtsbezug (EN-ZH S.2-4), Detail EN-105/EN-110-ZH, EVEN-Umstellung 01.01.2026 →
  `[[energie-energienachweis-zh-formulare]]`. Real verwoben: 2619-KISPI (UGZ II.8.a/b/c).
- [~] **D5** Aktuellere JANS-PV-Projekte als Ertrags-/Kosten-Benchmark je Typ A–E (ewzWHH ist
  2019) — Bandbreite CHF/kWp und kWh/kWp nachziehen. (neu 2026-06-06) ✓ **teil 2026-06-18:**
  Benchmark-Tabelle in `[[energie-pv-eignung-typenwahl]]` §3 — **Typ A** Indach-Tile Reckholdern/
  Einsiedeln (7.9 kWp, 981 kWh/kWp, ~7'370 CHF/kWp, SolarApp 2024), **Typ E** MFH Basel (59.93 kWp,
  852 kWh/kWp, ~2'255 CHF/kWp, SolarApp 2022), Flachdach ewzWHH 2019. Ertragsband **~850–980
  kWh/kWp**; CHF/kWp typabhaengig **~2'000–7'400**. **✓ Typ B/C/D erledigt 2026-07-10 (Run 17):**
  belegte **Flaechenleistung Wp/m²** (PREFA Solardachplatte gross 170 / klein 146 Wp/m², SI-Saphir
  transparent ~120 Wp/m² bei 40 % Lichtdurchlass, Fassade ×0.6–0.7 Ertragsfaktor) + **Modul-Preis-Anker**
  Eternit Sunskin roof GG-L 195W = 339 CHF netto/Modul ≈ 1'740 CHF/kWp _nur Modul_ (solar-home.ch
  17.11.2024); Systemband hergeleitet ~3'000–4'500 CHF/kWp installiert BIPV; Ueberkopf-PV = Glas-
  Bauzulassung (DIBt Z-70.3-204); real ref Fassade AUE Basel (jessenvollenweider 2021) →
  [[energie-pv-eignung-typenwahl]] §1b/§3. **Offen:** installierter System-CHF/kWp Typ B/C/D aus
  realer JANS-Schlussabrechnung (bisherige CHF sind Modul-Liste/Band); SolarApp = Vorprojekt-
  Schaetzung, an Schlussabrechnung verifizieren. **Archivsuche 2026-07-13 (Run 20):** kein
  abgerechnetes PV-Projekt im JANS-Bestand gefunden (nur Referenz-/Planungsunterlagen) — bleibt
  offen bis ein reales Projekt mit PV-Schlussabrechnung anfaellt. **Ergaenzung 2026-07-14 (Run 36):**
  Betriebsenergie-EFH-Fall als neue Tabellenzeile in §3 (PV 14 kWp + Batterie + Boiler gebuendelt
  36'000 CHF, CHF/kWp nicht isolierbar) → verweist auf [[energie-betriebsenergie-pv-wirtschaftlichkeit]].
- [x] **D8 (Run 36, 2026-07-14)** Pronovo-Einmalverguetungs-Foerdersystematik (schliesst die in
  [[energie-uebersicht]] §Betriebsenergie offen gebliebene «aktuelle KLEIV-Ansaetze»-Frage): NEU
  [[energie-betriebsenergie-pv-wirtschaftlichkeit]] — KLEIV 2-<100 kWp / GREIV 100 kW-50 MW / HEIV,
  Grundbeitrag + degressiver Leistungsbeitrag, max. 30 % Referenz-Investition, Neigungswinkelbonus
  (integriert 250→400 / angebaut 100→200 CHF/kW ab 01.01.2025), Parkflaechenbonus 250 CHF/kW,
  Leistungsbeitrag-Senkung ≤30 kW + ≥100 kW je -20 CHF/kW ab 01.04.2025; absolute Saetze bewusst nur
  via Tarifrechner (dynamisch). Datenstand Web 2026-07-14.
- [ ] **D9 (offen, neu Run 36)** Realer **MFH-/ZEV-Betriebskostenfall** (Eigenverbrauchsgemeinschaft,
  GREIV ≥100 kWp) als Ergaenzung zum bisher nur belegten EFH-Fall — die EFH-Amortisationslogik ist
  nicht 1:1 auf Rendite-/Areal-Objekte uebertragbar. Faellt an, sobald ein reales JANS-MFH-PV-
  Projekt mit Verbrauchs-/Kostendaten vorliegt. Ebenso offen: belegte Herleitung des kantonalen
  **Steuerabzugs energetische Sanierung** (ZH/SZ), im EFH-Fall pauschal mit der Foerderung verrechnet.
- [x] **D6** EVEN-Bedienung (Maskenfuehrung, Rollen Planer/Bauherr/Behoerde, Beilagen-Upload).
  ✓ **2026-07-04 (Run 14):** aus EnDK-Schulung V1.4 (13.10.2025, Kantone mit Privater Kontrolle)
  belegt — **Rollen** (Projektkoordination legt an/reicht ein/beauftragt PK · Nachweisverfassung
  fuellt Teilnachweise · Vollzugsverantwortung/Interne+Externe Pruefung · **Private Kontrolle** nur
  in PK-Kantonen wie ZH · Admin-Rollen), **Projektstruktur** (Projekt→Gebaeude je EGID→Zone→
  Teilnachweis), **Ablauf** Login→Projekt→Gebaeude→Teilnachweis verfassen+Beilagen→einreichen→
  Pruefung→abschliessen, **Aktionen** Nachtrag(Teilnachweis)/Beanstandung(Projekt)/Ausfuehrungs-/
  Vollzugskontrolle, **Statusmodell** + **Freigabe-Kaskade** (Bewilligungs-/Baufreigabe-/Bezugsbereit),
  kein Undo/kein Offline/alles protokolliert, GWR-Anbindung → NEU [[energie-even-plattform-bedienung]].
  Teilnehmer: alle Kantone ausser BE + FL. **✓ Praxisfall-Teil erledigt 2026-07-13 (Run 20):**
  realer KISPI-Fallverlauf eingearbeitet (Nachweisverfassung-vs-PK-Verwechslung, Kl-Befugnis-
  Blocker, Einladungsmechanik) → [[energie-even-plattform-bedienung]] §9. **Offen:** Fall selbst
  ist noch nicht abgeschlossen (Stand 13.07.2026, wartet auf Gruner-Rueckmeldung).
- [x] **D7** Private Kontrolle Energie ZH: wer unterzeichnet den Energienachweis, welche Befugnis
  deckt welches EN-Formular? ✓ **2026-06-26 (Run 10):** Merkblatt Baudirektion ZH/AWEL «Liste der
  Befugten» (Stand April 2025) + BBV I § 4-7 (LS 700.21) — drei Unterschriften (Bauherr Hauptformular
  § 6 BVV; Projekt-Verantw. + **Befugte** technische Formulare § 4 BBV I), Befugnis-Matrix
  Wä/He/Kl/Bl/Lä ↔ EN-101…141/S/LN, **interkantonale Geltung** (Firmen nur ZH; natuerliche Personen
  ZH/AR/GL/GR/SZ/SG → SZ-Projekt via natuerliche Person), Minergie-Label entlastet → NEU
  [[energie-private-kontrolle-zh]].
- [~] **D8 / D1** Graue Energie / THGE als ZH-Grenzwert (Pa.Iv. 20.433 → MuKEn 2025). **Stand
  2026-06-26 (Run 10):** Planungsgrundlage erfasst — SIA-2040-Richtwerte Wohnen + reales JANS-
  Oekobilanz-Deliverable (Schlierenweg 31, ZPF 28.03.2022) → [[energie-uebersicht]] §Graue Energie;
  **Methodik-Tiefe in KB `wissen/energie` [[graue-energie]]** (kein Doppel). **Update 2026-07-04
  (Run 14):** MuKEn-2025-Neuerungen praezise belegt (energiehub-gebaeude.ch) — Verabschiedung
  **EnDK-Plenum 29.08.2025**; graue Energie = **THG-Grenzwert** (Erstellung + Rueckbau, Art. 1.39),
  Nachweis **nach Minergie-Reglement Fassung ab 01.01.2025**, Neubau + neubauartige Umbauten,
  **<50 m² neue EBF befreit** (Art. 1.40); dazu **Eigenstrom 20 W/m² EBF** (Art. 1.25, statt 10),
  Waerme vollstaendig erneuerbar (Art. 1.28) → [[energie-energienachweis-zh-formulare]] §Datenstand.
  **Offen (weiterhin):** konkrete **ZH-Gesetzes-/Verordnungsfassung** (Ueberfuehrung Stand 04.07.2026
  ausstehend) — bis dahin gilt MuKEn 2014 (Eigenstrom 10 W/m²).

## E — Connector/Tooling
- [x] **E1** `geo-zh.mjs` um `--produkt` erweitern. ✓ 2026-06-10: `--produkt
  height,orthofoto,dtm,bauzonen` + `--download` implementiert, end-to-end an Kat. 3338 getestet
  (graceful skip bei EGRID-only ohne Koordinate). → [[kartenportale-bund-geodaten]].
- [x] **E2** `--produkt zonenplan` (kommunale ZH-Grundnutzung). ✓ 2026-06-16 implementiert &
  getestet: nicht via wms.zh.ch (401) sondern OGD-WFS 0156/0154; mappt BMZ- **und** AZ-System,
  GeoJSON-Ablage mit `--out`. Benchmarks Langnau + Egg → [[kartenportale-zonenplan-zh]].
- [x] **E4** `--produkt baulinien` um den **senkrechten Abstand Linie↔Parzellengrenze** erweitern.
  ✓ **2026-07-08 (Run 16):** `identifyParcel` liefert jetzt das Parzellenpolygon (`returnGeometry=true`,
  Esri-rings), `fetchBaulinien(e,n,half,parcelRings)` rechnet je Treffer `dist_m` (Segment-zu-Segment,
  planar EPSG:2056), sortiert aufsteigend, ergaenzt `<layer>_dist_min_m` + `gemessen`. Getestet +
  Zweitmethoden-verifiziert (Seuzach 29.8 m), Regression zonenplan/EGRID grün → [[kartenportale-baulinien-abstandslinien-zh]].
- [x] **E3** STAC-bbox-Radius adaptiv (grosse Parzellen → mehrere Nachbarkacheln einsammeln statt
  fixem ~0.0008-Grad-Fenster). (neu 2026-06-10) ✓ **2026-06-24 (Run 9):** adaptive Schleife im
  Connector — bei 0 Kacheln Fenster verdoppeln bis Treffer oder Max (~0.0064 Grad), `--radius`
  ueberschreibt den Start. **Befund:** STAC-Kacheln sind ~1 km → das Punktfenster trifft praktisch
  immer beim ersten Versuch; die Verdoppelung ist Sicherheitsnetz fuer Kachelgrenzen/-luecken
  (am Langnau-Benchmark nicht ausgeloest, kein Regress). → [[kartenportale-bund-geodaten]].

## F — Meta/Querschnitt
- [x] **M2** Anbindung an `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung` schaerfen. ✓
  **2026-07-13 (Run 22):** Luecke war einseitig (Run-21-Befund) — `planungsgrundlagen` kannte die
  drei Skills, keiner referenzierte zurueck. SKILL.md aller drei ergaenzt: `machbarkeit`
  §Datenquellen Punkt 4 nennt jetzt den Connector als bevorzugte Quelle vor manuellem GIS-Browser;
  `ankaufspruefung` §Datenquellen nennt `planungsgrundlagen` + Naturgefahren/Objektschutz als eigene
  Pruefdimension; `behoerden-vorabklaerung` haelt fest, dass ein Teil der "gummigen" Masse bereits
  belegt vorliegt (weniger Behoerdenfragen noetig) + Werkleitungen-Zustaendigkeit praezisiert
  (Werke, nicht Tiefbauamt) → [[kartenportale-grundlagen-checkliste-neue-parzelle]] Abschnitt
  "Anwendung/Anschluss".
- [~] **M3 (neu Run 47, 2026-07-14; praezisiert Run 48)** Volksreferendum gegen die Verordnung
  ueber die Umsetzung von § 49b PBG (UmV § 49b PBG). **Korrektur Run 48 (WebSearch
  stadt-zuerich.ch, 2026-07-14):** Run 47s Vermutung "Flexibilisierung Parkplatzvorschriften"
  war ein Fehlschluss aus dem blossen Suchtreffer-Titel — die Primaerquelle (Medienmitteilung
  Stadt Zuerich) zeigt: § 49b PBG regelt **preisguenstigen Wohnraum als Gegenleistung fuer
  Mehrausnuetzung** bei Um-/Aufzonungen bzw. Sondernutzungsplanung (Einkommenslimite nur bei
  Mieteintritt relevant, keine laufende Kontrolle); das **staedtische** (nicht kantonale)
  Referendum betrifft die Zuteilungs-/Verwaltungsregeln dieser Wohnungen in der Stadt Zuerich,
  2'600 Unterschriften (2'063 gueltig, Quorum 2'000), zustande gekommen 21.11.2025,
  **Volksabstimmung 14.06.2026**. Kein Bezug zu Parkierung/R9/R29 — Delta-Pruefung gegen
  [[recht-norm-tiefgarage-erschliessung]] damit hinfaellig. **Neu relevant fuer** `machbarkeit`/
  `nutzungsstrategie` (Mehrausnuetzung via BZO-Revision kann § 49b PBG-Pflicht ausloesen).
  Weiterhin offen: Primaertext der Verordnung (§ 49b-Wortlaut, Einkommensgrenze, Anwendungs-
  schwelle Mehrausnuetzung) noch nicht volltext gelesen — nur WebSearch-Zusammenfassung, daher
  status `[~]` statt `[x]`; bei naechster Gelegenheit stadt-zuerich.ch/49b.html + kantonsrat.zh.ch
  Primaerquelle lesen und in einen neuen Artikel (`recht-norm-mehrausnuetzung-wohnraum-zh.md`,
  falls JANS-Projekt mit Verdichtung/Aufzonung ansteht) einarbeiten.
