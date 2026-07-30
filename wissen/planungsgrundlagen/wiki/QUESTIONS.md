# QUESTIONS — offene Fragen & Wissenslücken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [x] **K63 — Endpunkt-Frischecheck bestanden (Run 93, 2026-07-30)** Alle 13 in dieser KB
  dokumentierten Bezugs-Endpunkte der Domäne wurden am realen JANS-Benchmark (Giebelweg 12,
  EGRID CH879777718909) gemessen: **13 von 13 antworten**, Zonenplan-Werte (W/1.5, BMZ 1.5, GH 4.5,
  ES_II) und Höhe (549.1 m ü.M.) identisch zum dokumentierten Stand, EGRID/Parzelle/BFS unverändert
  gegenüber dem Erstbezug vom 05.06.2026. Messtabelle in [[kartenportale-oereb-egrid-bezug]].
  Keine Endpunkt-Erosion seit Run 54 (20.07.2026). **Methodenhinweis für künftige Checks:** ein
  Endpunkt-Test braucht einen **belegten** EGRID — ein erfundener liefert dasselbe HTTP 204 wie ein
  toter Server und beweist nichts (→ E12).
- [ ] **K62 (Wissens-Chef Run 20, 2026-07-29) — Regenwasser: die NUTZUNGSseite fehlt in dieser KB
  ganz.** Die Führungs-Matrix teilt Regenwasser gespalten zu: Recht und Verfahren führt
  `planungsgrundlagen`, die Bewilligungsschwellen im Baugesuch führt `energie`. Der eigene Artikel
  [[recht-norm-regenwasser-gewaesserraum-zh]] deckt aber nur die **Entsorgungsseite** ab
  (Gewässerraum, Versickerung, Siedlungsentwässerung); «Brauchwasser», «Zisterne» und «Nutzung von
  Regenwasser» kommen dort nicht vor. Die kantonale Grundlage der Nutzung ist **§ 97 Abs. 3 WsG**
  («zulässig und gebührenfrei in getrennten Systemen», LS 724.1, Fassung ab 01.06.2026) — der
  Wortlaut wird von `baurecht` geführt und ist dort als P1 angemeldet (Destillation der §§ 95-100
  WsG). Sobald `baurecht` destilliert hat: die Verfahrensseite hier aufnehmen (Meldung ans
  Wasserwerk als eigener gebäudetechnischer Schritt neben der Baueingabe) und den Verweis auf
  `energie/destillate/regenwassernutzung-brauchwasser-trinkwasserersatz-ch` setzen.
- [ ] **K61 (Wissens-Chef Run 20, 2026-07-29) — Nachfolgeerlass der KGSchV (LS 711.11) für
  OEREB-Thema 130.** Die Rechtsgrundlagen-Spalte von Thema 130 in
  [[kartenportale-oereb-kataster-system-zh]] nannte bis heute ungeflaggt **LS 711.11 §§ 2/3**
  (KGSchV), amtlich **aufgehoben per 01.01.2022** (zhlex-Erlassseite LS 711.11, Nachtrag 099;
  belegt von `baurecht` Buch-Run 69). Jetzt als aufgehoben markiert; **die Nachfolge ist im Hub
  nicht belegt und wurde nicht geraten**. Damit steht in der Angabe, die aus dieser KB in
  Behördenschreiben ans AWEL wandert, weiter eine unbelegte Lücke — nicht mehr ein falsches Zitat,
  aber auch noch keine tragfähige Grundlage. Nachweis-Pflicht liegt bei `baurecht` (dort als offene
  Frage geführt, nächster Schritt: OS-Band 2021/2022 nach dem aufhebenden RRB). Sobald belegt: hier
  und in der Tabellenzeile eintragen. Führend für den Erlassstand bleibt `baurecht`.
- [x] **K59 (Run 67, 2026-07-25, Token-Vollgas)** Dateinamens-/Groessen-basierter Scout (statt
  begriffsbasiert, Lehre aus Run 65 E45) findet die bisher nie gelesene 37-MB-Rasterdatei
  `geoglatt.ch/Maur/Zonenplan.pdf` — amtlicher Zonenplan Gemeinde Maur, genehmigt 27.02.2012,
  mit Gestaltungsplan-Register (8 benannte Perimeter Binz/Maur/Ebmatingen). Konkretisiert den
  offenen Hinweis «0156-Grundnutzung zeigt nur Rahmennutzung, Gestaltungspläne separat» mit
  einem realen Beispiel. Energie-Gegenprobe (derselbe Scout auf PL-04): kein neuer Fund, ein
  vermeintlicher Fund erwies sich als Duplikat von Run 61/E42 (selber Tag). Details
  `training/curriculum.md` K59, [[kartenportale-zonenplan-zh]].
- [x] **K55-K58 (Run 65, 2026-07-25, Token-Vollgas)** Cloud-Only-Scout auf PL-01 (Rule 260725,
  Empfehlung aus Run 64) findet fünf bisher unausgewertete LU-Fundstellen: Denkmalverzeichnis/
  Bauinventar (zweistufig BILU/KDV + ÖREB-Thema Kulturdenkmäler, realer Beleg Haus Jans
  Steinhofstrasse 25 Luzern), Grundbuchplan-Selbstbezug via geoportal.lu.ch, Solarpotential-Layer
  (kantonales Pendant zu sonnendach.ch), Stadt-Luzern-GIS-Kundendienst-Kontakt. Präzisierung
  `geoportal.ch/ktzg` = kantonal Zug. Details `training/curriculum.md` K55-K58,
  [[kartenportale-denkmalschutz-isos]] §3, [[kartenportale-geoportale-uebersicht]].
- [x] **K47-K54 (Run 63, 2026-07-25, Token-Vollgas)** Scout-Abgleich (vollständiger Ordnerbaum
  PL-01 gegen curriculum.md/_INGESTED.md) findet sieben echte Fundstellen im bisher unter-
  ausgewerteten Kt.-LU-Cluster. **K47 — echter Delta zu K12:** Kt. LU führt (anders als ZH/SZ)
  ein kantonsweites, offen lizenziertes Baumkataster-Produkt (`einzbaum_ds_v1`, WMS/WFS/GDB/
  GeoPackage) — präzisiert die bisherige «kein Kanton hat das»-Aussage zu einer kantons-
  spezifischen. **K48-K52:** Historische Karten (amtliches Zeitschieber-Tool, Ergänzung zu
  achtgradost.ch/K14), Baugesuchsverwaltung eBAGE+/GRAVIS (kantonales Pendant zu eBau SZ),
  Werkleitungen über Vereins-/Mitgliedschaftsmodell (Organisationsmodell-Delta zum ZH-
  Betreibermuster), Höhenlinien-DXF-Lieferbeleg (Formattabelle-Ergänzung), Nachführung
  amtliche Vermessung über konzessionierte private Geometer (bestätigt ZH-analoges Muster).
  **K53:** reale JANS-Arbeitsnotiz Baumwurzelwerk/Fundamentplanung (Tiefbauamt Stadt Luzern) —
  drei Wurzeltypen mit unterschiedlicher Fundament-Konsequenz. **K54:** Grenzen-Kategorie
  bestätigter Nicht-Fund (generische Verwaltungsgrenzen ohne Planungsbezug). Alle sechs
  inhaltlichen Funde → [[kartenportale-geoportale-uebersicht]] (§Baumkataster + §Weitere
  Kantone, neuer Abschnitt «Kt.-LU-Vertiefung»). Details siehe `training/curriculum.md` K47-K53.
- [x] **K46-Nachtrag (Run 61, 2026-07-25) — Backlog vollständig GESCHLOSSEN.** Der Run-59-
  OneDrive-EDEADLK-Blocker hatte sich aufgelöst. **cadastre.ch:** bestätigter Nicht-Fund
  (bloss Link, Betreiber swisstopo). **geoportal.ch/Einsiedeln:** Service-Desk-Kontakt GEOINFO
  Applications AG (Jira-Ticketsystem, Tel. 058 580 40 60) + Präzisierung der K27-«Infrastruktur»-
  Druckfunktion (Bezirks-GIS `gis.bezirkeinsiedeln.ch`) als echtes «Leitungskataster Gde»-Produkt
  (7-Sparten-Legende), ausdrücklich getrennt vom `geoportal.ch`-Portal selbst (führt laut
  Service-Desk KEINEN Leitungskataster für Einsiedeln, Verweis auf EW Lachen AG) →
  [[kartenportale-geoportale-uebersicht]] + [[kartenportale-werkleitungskataster]] §7.
  **geodienste.ch/Maur:** Bestätigungsmail einer realen ZH-DXF(GEOBAU)-Bestellung, bestätigt
  A4/K33, kein neuer Mechanismus. **KtLU Geodatenshop:** Portal-Kontakt rawi Kt. Luzern
  (`daten.geo.lu.ch`, `geodaten@lu.ch`, 041 228 59 62) gefunden, Zugangsdaten bewusst nicht
  übernommen. Details siehe `training/curriculum.md` K46-Nachtrag.
- [x] **K46 (Run 59, 2026-07-25)** `geoportal.ch`-Betreiber identifiziert (GEOINFO Applications
  AG, Herisau) — vierter White-Label-GIS-Anbieter neben achtgradost.ch/geoglatt.ch/Stadt Luzern
  → [[kartenportale-geoportale-uebersicht]].
- [x] **K41-K44 (Run 50 offen → Run 51, 2026-07-18 GELÖST)** Der OneDrive-Sync-Blocker aus Run 50
  hatte sich (wie im Präzedenzfall Lignum Run 28→30 vermutet, «reines Sync-Timing») bis Run 51
  aufgelöst — alle vier Kandidaten waren jetzt problemlos lesbar. Auswertung:
  - **K41 Naturgefahren Konzept Reckholdern (SZ):** `230926_Naturgefahren_Konzept.pdf` +
    `2304RE20_Naturgefahren_Objektschutzkonzept.pdf` (real JANS 2304, Willerzell) — Konzeptstruktur,
    SZ-WebGIS-Link, Gefahrenstufen + SIA-261/261-1-Schutzziele waren bereits ab Run 24/27 im Artikel;
    **genuines Delta = der bis dahin ungelesene Bauteilkatalog S. 7–12** der Checkliste `27_Checkliste_SvN_D.pdf`
    (Matrix Bauteil × Naturgefahr, Produktanweisungen SIA 342 Sonnenschutz, HW3, Suissetec-Merkblatt,
    Überschwemmung/Betonsockel). → NEU §3c [[kartenportale-naturgefahren-objektschutz]]; Checkliste
    damit vollständig S.1-12/12.
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
  (§5.3-5.12, S. 26-73) vollständig ausgewertet — schliesst die K40-Lücke (siehe Eintrag
  darunter). Themen-Detailprozesse §5.2-5.8 folgen grösstenteils dem generischen 4-6-Phasen-
  Muster (kein Delta), zwei echte Zusatzfunde: **Mehrwertausgleich(MWA)** als Blocker vor der
  öffentlichen Auflage (separates Tool eMehrwertausgleich, betrifft NP/KGP) und **Quartierplan
  als 7-Phasen-Sonderfall** (zwei Grundeigentümerversammlungen, notarielle Prüfung der
  Rechtsverhältnisse, Vermessungsplan, grundbüchlicher Vollzug §§161 PBG — näher an einer
  Landumlegung als an einer Zonenplan-Revision). **§5.9 Statische Waldgrenzen:** zwei
  Änderungswege (Bauzonen-Erstfestsetzung, abgeschlossen seit 2018 vs. Rodung/Ersatzaufforstung
  als einziger verbleibender Weg danach); Waldgrenze ändert sich erst mit der AUSGEFÜHRTEN
  Rodung (Abnahmeprotokoll), nicht mit blosser Bewilligung — Baufeld-Berechnung darf sich nicht
  auf eine unausgeführte Rodungsbewilligung stützen. **§5.10/5.11 Grundwasserschutz:**
  Schutzzone (Layer 131) = Gemeinde formal zuständig (Antragsteller meist Wasserversorgung),
  Schutzareal (Layer 132) = AWEL direkt zuständig; provisorische «Zonen S» können vor jeder
  öffentlichen Auflage sofort erscheinen. **§5.12 KbS:** einziges Thema OHNE Vorprüfungs-Phase,
  Auslöser immer Anlassfall (Bauvorhaben/Untersuchung/Sanierung) direkt bei AWEL Sektion
  Altlasten → alle fünf Funde in [[kartenportale-oereb-kataster-system-zh]] §8-§12. **Damit ist
  die 73-seitige Weisung vollständig ausgewertet, keine offenen Kapitel mehr.** Details siehe
  `training/curriculum.md` K40-Rest §5.3-5.8/§5.9/§5.10-5.11/§5.12.
- [x] **K40 (Run 44, 2026-07-14, Token-Vollgas)** Ein bisher nie ausgewertetes, obwohl im Ordner
  seit K1 als DXF-/OEREB-Benchmark-Quelle genutztes Dokument entdeckt:
  `Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — die amtliche «Weisung ÖREB-Kataster
  Betrieb und Nachführung der Daten» V3 des Kt. ZH (ARE Abt. Geoinformation, 01.12.2022, 73 S.).
  Liefert das **amtliche ID-/Legenden-Register** für alle bisher nur aus Connector-Antworten
  bekannten `ogd-0xxx`-Layer-IDs (73A/73B/76/116/130/131/132/145/157/159/160/190/45-52-ZH/
  56-ZH/59-ZH) inkl. Rechtsgrundlage + zuständiger Stelle; **wichtigster Einzelfund:** die
  **Vorwirkung-Mechanik** (positive Vorwirkung eines noch nicht in Kraft stehenden Rechts
  grundsätzlich unzulässig, negative Vorwirkung ausnahmsweise zulässig bei ausdrücklicher
  gesetzlicher Grundlage) erklärt erstmals die rechtliche **Sperrwirkung**, die hinter dem
  bereits dokumentierten `revision_laeuft`-Connector-Flag (A6, [[kartenportale-zonenplan-zh]])
  steckt — ein Bauvorhaben kann an einer laufenden Zonen-/Baulinien-Revision scheitern, bevor
  diese in Kraft ist. Dazu generischer 4-Phasen-Nachführungsprozess (Vorprüfung→Öffentliche
  Auflage→Festsetzung/Genehmigung→Rechtsmittel→In Kraft), ÖREB-DMT-Systemarchitektur (Rechts-/
  Projekt-/Protokoll-DB) und Betriebsorganisation (KL/KBO/KFS/Gemeinde/Fachspezialist) →
  NEU [[kartenportale-oereb-kataster-system-zh]], established, verlinkt aus
  [[kartenportale-zonenplan-zh]], [[kartenportale-geoportale-uebersicht]],
  [[kartenportale-oereb-egrid-bezug]]. Die zwei begleitenden Vorgehens-docx im selben Ordner
  (`241122_`/`251122_Vorgehen Datenbezug…`, `Bezugsorte…docx`) sind bestätigter Nicht-Fund
  (identischer Geoshop-/geodienste.ch-Bezugsweg wie bereits in A4/K4 dokumentiert). **Offen:**
  Detailprozesse §5.3-5.12 der Weisung (S. 26-73, insb. Waldgrenzen §5.9 + Grundwasserschutz
  §5.10/5.11) noch nicht ausgewertet — Kandidat für den nächsten Kartenportale-Turnus. Details
  siehe `training/curriculum.md` K40.
- [x] **K37-K39 (Run 42, 2026-07-14, Token-Vollgas)** Drei weitere Ordner-Abgleich-Kandidaten
  geprüft. **K37 — kein Delta:** `gisos.bak.admin.ch` enthält nur den bereits bekannten bloßen
  ISOS-Portal-Link, bestätigt K34. **K38 — echter Neufund:** Kt.-Bern-Portalarchitektur
  präzisiert (`be-geo.ch` = Login, `map.apps.be.ch` = Kartenclient), realer Fall Schloss
  Münchenwiler mit benannter Kontaktstelle Amt für Geoinformation Kt. Bern, AV-Bezug via
  `geodienste.ch` auf max. 5 Parzellen/Bestellung gedeckelt → [[kartenportale-geoportale-uebersicht]].
  **K39 — kleiner Delta:** Sunrise-Markenauftritt (Werkleitungsanfrage Willerzell) führt technisch
  auf dieselbe `leitungskataster.upc.ch`-Domäne wie das bereits dokumentierte UPC-Portal (Fusion,
  kein zweites System) → [[kartenportale-werkleitungskataster]]. Details siehe
  `training/curriculum.md` K37-K39.
- [x] **K34-K36 (Run 40, 2026-07-14, Token-Vollgas Fan-out)** Ordner-Abgleich PL-01 liefert drei
  Neufunde. **K34 — neue Schutz-Domäne Denkmalpflege/Archaeologie:** national ISOS (BAK, nur
  Portal-Link) + kantonal ZH (Denkmalschutzobjekte + archäologische Zonen, §§ 203/209/211 PBG);
  zwei bisher unbekannte, login-freie OGD-WFS-Layer live gefunden UND verifiziert
  (`ogd-0368_..._denkmalschutzobjekte_p` + `ogd-0087_..._archzonen_f`), Connector-Feature
  `--produkt denkmalschutz` NEU gebaut und mit realem Beispiel (Haselstudstrasse 2, Wald ZH, 4
  Objekte) getestet → NEU [[kartenportale-denkmalschutz-isos]], emerging. **K35 — .gdb-Format-
  Delta zu K8:** kein Direktimport in JANS-Zielprogramme, Umweg via ArcGIS Pro/QGIS-Plugin
  OpenFileGDB + Re-Export .obj/.fbx/.dxf → [[kartenportale-geoportale-uebersicht]] §Geodaten-
  Formate, established. **K36 — Bezirk Einsiedeln:** «Büro Bauen» der Bezirksverwaltung
  zuständig, Baugesuche seit 1.12.2022 ausschliesslich über eBau (kein Papierweg mehr) →
  [[kartenportale-ebau-sz-baugesuch]] §4b, emerging. Geprüft/kein Fund: `KtSZ Schwyz/
  ortsplanung.ch` (leer), `Objektschutz/Thalwil` (leer), `KtLU Luzern/Geoportal`+`Raumdatenpool`
  (deckt sich mit bereits abgeschlossenem K16). Details siehe `training/curriculum.md` K34-K36.
- [x] **K32/K33 (Run 38, 2026-07-14)** Zwei konkrete Fundstellen im Domänen-Curriculum
  geprüft (Trainings-Lauf 38, MacBook Pro). **K32 — echter Neufund:** die bisher nur für die
  historische-Terrain-Rekonstruktion bekannte Acht Grad Ost AG (`achtgradost.ch`, vgl. K14
  [[kartenportale-historisches-terrain-vermessungsbuero]]) betreibt zusätzlich ein öffentliches,
  login-freies **Gemeinde-WebGIS** (`achtgradost.ch/oeffentlich-zugaengliches-webgis/`), belegt am
  Fallbeispiel Gemeinde Regensdorf mit Zonenplan/ÖREB-Kataster-, Baulinien-/Abstandslinien- und
  AV-/Orthofoto-Planauskunft-Layern — White-Label-Betrieb eines kommunalen GIS-Portals durch eine
  private Vermessungsfirma, analog zu `geoglatt.ch` (K15) → NEU §5 [[kartenportale-historisches-terrain-vermessungsbuero]],
  emerging. **K33 — Teil-Delta:** der Login-/Account-Ordner von `geodienste.ch` enthält kein neues
  Registrierungs-Sonderverfahren (offenes Selbstbedienungsformular, wie erwartet), präzisiert aber
  erstmals die **Bestellmechanik** (dreisprachige Bestätigungslink-E-Mail + individuelle kantonale
  Zugriffsrechte-Prüfung je Bestellung, real belegt an Kt. BE/EGRID CH609835664683) und benennt den
  Administrator **Geschäftsstelle KGK-CGC** (Bern) erstmals → NEU-Abschnitt
  [[kartenportale-geoportale-uebersicht]], emerging. Gespeicherte Zugangsdaten (eigenes JANS-Konto)
  bewusst NICHT in die KB übernommen (Datenschutz-/Sicherheitspraxis analog K31). Details siehe
  `training/curriculum.md` K32/K33.
- [x] **K27/K28/K31 (Run 31, 2026-07-13)** Drei genuine Neufunde nach vollständigem Abgleich der
  Ordnerstruktur PL-01 gegen das Curriculum (K1-K26 bereits erschlossen): **Bezirks-Ebene GIS-
  Portal `gis.bezirkeinsiedeln.ch`** (unterhalb des kantonalen `map.geo.sz.ch`; Druckprodukte
  Vermessung/Grundstuecksbeschrieb/Infrastruktur/Hoehendaten/ÖREB-Kataster; realer 9-seitiger
  ÖREB-Auszug deckt zwei bisher unbekannte Fakten zum Willerzell/Reckholdern-Benchmark auf —
  Sondernutzungsplan «Gestaltungsplan Reckholdern» + statische Waldgrenze 22.8 % → NEU-Abschnitt
  [[kartenportale-geoportale-uebersicht]]), **ZH-Höhenkurven-Druckprodukt** (`Hoehenlinie/`-
  Ordner, «Benutzerkarte» maps.zh.ch, wählbare Äquidistanz 0.5/1/5 m, Delta zum bereits
  dokumentierten Raster-swissALTI3D → NEU-Abschnitt [[kartenportale-geoportale-uebersicht]]),
  **GeoShop Stadt Zürich** (`Geoshop/`-Ordner, eigenständig vom kantonalen Geoshop-API,
  Katasterplan-DXF-Bestellung ~30 Min. Lieferzeit; Quelldatei enthielt fremde Zugangsdaten eines
  Drittbüro, NICHT übernommen → neue Tabellenzeile [[kartenportale-geoportale-uebersicht]]).
  KtLU Luzern (bereits K16 niedrige Priorität) und KtBE Bern erneut gesichtet — kein neuer Befund
  über die bestehende Kurzprofil-Einordnung hinaus, bewusst nicht vertieft. Details siehe
  `training/curriculum.md` K27/K28/K31.
- [x] **K20-K21 (Run 29, 2026-07-13)** Zwei weitere Kandidaten-Fundstellen geprüft, beide OHNE
  Delta (ehrlich dokumentierte Nicht-Funde): **XML-Datenformate-Ordner** (3 Screenshots,
  generische "Was ist XML"-Web-Erklärung ohne Geodatenbezug, kein Delta zur K8-Formattabelle) und
  **Baumkataster-Ordner oberste Ebene** (identische GEOINFO-Produktblatt-Datei zweimal abgelegt +
  zwei generische map.geo.admin.ch-Kartenausdrucke ohne dedizierten Baumkataster-Layer, bestätigt
  K12). Details siehe `training/curriculum.md` K20-K21.
- [x] **K17-K19 (Run 27, 2026-07-13)** Drei bisher unerschlossene PL-01-Unterordner ausgewertet:
  **Grundbuchamt ZH** (formelle Grundbuchauszug-Bestellung via Notariat statt Selbstbedienungs-
  Eigentumsabfrage → [[kartenportale-geoportale-uebersicht]], emerging), **Willerzell-WebGIS-Batch
  SZ** (Gewässer-Ökomorphologie 6-stufig + Erdwärmenutzung-Zonierung/Bestandeskataster, gleicher
  Kartenexport-Batch wie die bereits dokumentierte Grundwasserkarte → [[kartenportale-naturgefahren-objektschutz]]
  §6b/§6c + [[recht-norm-abstandsvorschriften-wald-gewaesser]]), **SZ-Geoshop lisag.ch** (gebührenfrei,
  login-freie URL, Region UR/SZ/OW/NW/ZG) **+ Werkleitungsbezug EW Lachen AG Einsiedeln** (kein
  Webportal, nur E-Mail-Bestellung, Entwässerungsplan SN 592 000 → [[kartenportale-geoportale-uebersicht]]
  + [[kartenportale-werkleitungskataster]] §7). geodatenshop.zh.ch als Doppel zum bereits dokumentierten
  Geoshop-API bestätigt (kein neuer Artikel). Details siehe `training/curriculum.md` K17-K19.
- [x] **K10-Rest** Checkliste Gebäudeschutzmassnahmen (VKG/SIA/HEV) im Detail + Grundwasserkarte
  als eigenständige Planungsgrundlage. ✓ **2026-07-13 (Run 24):** Checkliste vollständig gelesen —
  Gefährdungsabklärung je Naturgefahr mit Normzuordnung, **SIA 261 Neubau vs. SIA 269/8 Umbau bei
  Erdbeben** präzisiert, Bauteilkatalog/Hagelregister.ch/HW3; **NEU §6** Grundwasserkarte Kt. SZ
  (Weisse-Wanne-Entscheid bei Unterkellerung) → [[kartenportale-naturgefahren-objektschutz]] §3b/§6.
  Offen bleibt: ZH-Endpunkt Naturgefahren + Grundwasser (Discovery-Versuch dokumentiert erfolglos).
- [x] **K12** Baumkataster als Planungsgrundlage (niedrige Priorität). ✓ **2026-07-13 (Run 24):**
  kein kantonal/schweizweit standardisiertes Portal, kommunale GIS-Fachanwendung, kein
  Connector-Anspruch → NEU [[kartenportale-geoportale-uebersicht]] §Baumkataster.
- [x] **K10** Naturgefahrenkarte/Objektschutzkonzept als eigenständige Planungsgrundlage. ✓
  **2026-07-13 (Run 22):** NEU [[kartenportale-naturgefahren-objektschutz]] — SZ-Rechtsgrundlagen
  (§ 20/17 PBG, Art. 6/15 RPG), **Gefahrenstufen rot/blau/gelb/gelb-weiss** mit Bauvorschrift je
  Stufe (rot = de facto Verbotsbereich, blau = Auflagen, **keine sensiblen Objekte** — trifft
  Healthcare direkt), realer Benchmark **Reckholdernstrasse 20 Willerzell** (drei Gefahrenstufen
  auf einer Parzelle, Objektschutzkonzept 26.09.2023), SIA-261/261-1-Schutzziele-Tabelle
  (Hochwasser 300-jährlich, Sturm/Hagel/Schnee 50-jährlich, Erdbeben 475-jährlich). **Offen:**
  ZH-Endpunkt nicht kartiert; SZ-Layer `ch.sz.a012b.naturgefahrenkarte.*` nur als WebGIS-Link
  bekannt, kein getesteter REST-Endpunkt — bewusst nicht als Connector-Feature versprochen.
- [x] **K11** Werkleitungskataster (Strom/Kommunikation/Gas/Wasser) — Bezugsweg + Automatisierbarkeit.
  ✓ **2026-07-13 (Run 22):** NEU [[kartenportale-werkleitungskataster]] — kein zentrales Portal,
  betreiberspezifisch: EKZ (`ekz-planauskunft.ch`), Swisscom (Geo-Portal), Sunrise-UPC
  (`upc.ch/leitungskataster`, 4 Regionen), Gas/Wasser bei Gemeindewerken. Realer Ablauf EKZ-
  Planauskunft **Reckholdern** belegt (Login-Konto, Bestellung je Perimeter, Lieferung Plot+
  Symbole+Kurzbrief, **Gültigkeit nur 2 Wochen**, Datenmodell **SIA GEO 405**, Farbdruck-Pflicht,
  projektierte Gebäude blau/nicht einmessbar); Swisscom-Netzauskunft **3 Monate**/1:200,
  190-Volt-Warnhinweis. **Bewusst kein Connector-Anspruch** (login-pflichtig, kein offenes API) —
  Status `emerging`.
- [x] **K9** GWR-Gebäudedaten je Parzelle (Baujahr/Volumen/EBF/Waermeerzeuger) — Bezug, Felder,
  Verlässlichkeit? ✓ **2026-07-02 (Run 13):** `gwr-bund.mjs` login-frei via Layer
  `ch.bfs.gebaeude_wohnungs_register`. **GVOLNORM** (961 SIA 116 / 962 SIA 416 / 969 unbekannt) +
  **GVOLSCE** (851 amtl. Vermessung … 869 Baubewilligung … 878 nicht geschlossenes Gebäude) aus
  **Merkmalskatalog GWR v4.2 S. 63f.** belegt und im Connector als Decode eingebaut + getestet.
  Merkregel **Baujahr schlägt Bauperiode** (KISPI: Periode 8023 «2016-2020» vs. Baujahr 2024).
  Benchmarks KISPI EGID 302064023 (Volumen-Norm 969=unbekannt!) + Giebelweg 12 EGID 57977 →
  NEU [[kartenportale-gwr-bund]]. **✓ Wohnungs-/EWID-Ebene gelöst 2026-07-13 (Run 20):** im selben
  identify-Call bereits enthalten (parallele Arrays `ewid`/`warea`/`wazim`/`wstat`/`wstwk`/…),
  Connector deckt sie neu als `wohnungen[]` auf; Benchmark Albertstrasse 7 Zürich EGID 150071
  (26 Wohnungen) → [[kartenportale-gwr-bund]] §6. **Offen:** Katalog-v5.0-Abgleich (gwr.admin.ch/catalog
  ist clientseitig gerendert, per WebFetch nicht auslesbar — Restaufgabe bleibt).
- [x] **A1** Nicht-ZH-Kantone: OEREB-Service-Endpunkte kartieren (zuerst SZ). ✓ SZ via
  `geo-sz.mjs` / Skill `oereb-schwyz` gelöst; `geo-zh.mjs` `OEREB_SERVICE.sz` hinterlegt.
- [x] **A2** Zonenplan-/BZO-Ausschnitt automatisiert beziehen. ✓ **GELÖST 2026-06-16**: nicht
  über `wms.zh.ch` (401), sondern über den **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz
  **0156** `np_gn_zonenflaeche_f` (GeoJSON, login-frei) — liefert Zone (kommunal+kantonal),
  **BMZ/AZ**, Gebäude-/Firsthoehe, Vollgeschosse, Gewerbeanteil, Rechtsstatus, Festsetzungsdaten;
  + **0154** Empfindlichkeitsstufe Lärm. Connector `--produkt zonenplan`, validiert Langnau
  Kat.3338 (BMZ) + Egg WG60 (AZ) → [[kartenportale-zonenplan-zh]]. **Mehr als der OEREB-PDF.**
  Bundes-Bauzonen `ch.are.bauzonen` PNG (`--produkt bauzonen`) bleibt für den Schnellblick.
- [x] **A6** Projektierter Layer `..._np_gn_zonenflaeche_proj_f` (laufende BZO-Revision/Auflage)
  an einem realen Revisionsfall validieren — für den Vorher/Nachher-Vergleich (machbarkeit Typ A).
  ✓ **2026-06-24 (Run 9):** proj-Layer kantonsweit aktiv (Seuzach/Wädenswil/Winterthur/Winkel/…);
  Benchmark **Seuzach Kirchgasse 2 Kat. 2304** (rechtskräftig K Kernzone vs. proj
  `laufendeAenderung.Festsetzung`, `Aenderung_Bauordnung_Zonenplan`, Auflage 01.11.2024, Dok-Link
  oerebdocs.zh.ch). Connector `--produkt zonenplan` meldet ⚠-Revision automatisch
  (`revision_laeuft`+`grundnutzung_proj[]`) → [[kartenportale-zonenplan-zh]] §A6.
- [x] **K5** Baulinien/Abstandslinien als Vektor + im Connector. ✓ **2026-06-24 (Run 9):** OGD-WFS
  0158 Baulinie / 0152 Wald / 0153 Gewässer / 0150 Waldgrenze / 0185 Gewässerraum, ±150-m-Fenster
  (Linien neben Parzelle); Benchmarks Langnau (7 Baulinien+Waldgrenze) + Seuzach (10) →
  [[kartenportale-baulinien-abstandslinien-zh]], Connector `--produkt baulinien`. **✓ senkrechtes
  Abstandsmass erledigt 2026-07-08 (Run 16):** Connector rechnet den senkrechten Abstand
  Linie↔Parzellengrenze (`dist_m` je Treffer, aufsteigend sortiert; `<layer>_dist_min_m`; Flag
  `gemessen`) — Parzellenpolygon aus demselben identify-Call mit `returnGeometry=true` (Esri-rings
  EPSG:2056), Distanz = Segment-zu-Segment planar; `dist_m=0` = Linie berührt/schneidet die Parzelle
  (bindend). Verifiziert per Zweitmethode (Seuzach 29.8 m = 29.8 m); Benchmarks 0/29.8/116.2 m +
  Gewässerabstand 43.9 m Wetzikon → speist Agent `baulinien-analyst`/M2. **Offen:** proj-Abstandslinien
  (analog A6); `COUNT=10`-Kappung an sehr linienreichen Parzellen.
- [x] **K8** Geodaten-Formate-Kurzleitfaden (GeoJSON/INTERLIS/DXF/GeoTIFF/XYZ-LAZ/LandXML/GeoPackage).
  ✓ 2026-06-24 (Run 9) → [[kartenportale-geoportale-uebersicht]] Abschnitt «Geodaten-Formate».
- [x] **A3** Höhenmodell (swissALTI3D) + Orthofoto (SWISSIMAGE) je Parzelle. ✓ 2026-06-10:
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
  Rails-Formular (max 5 Grundstücke, CSRF) — nicht automatisierungstauglich.
  → [[kartenportale-geoportale-uebersicht]]
- [x] **A5** Eigentumsabfrage ObjektwesenZH per EGRID: Ablauf + ob automatisierbar. **Stand
  2026-06-24 (Run 9):** vorläufig als Interessennachweis-pflichtig eingestuft. **✓ Korrektur
  2026-07-13 (Run 20):** die **elektronische Eigentumsabfrage** (maps.zh.ch, Karte
  «Eigentumsauskunft») ist **login-frei mit SMS-Code-Verifikation** — **kein Interessennachweis**
  nötig, 5 Abfragen/Tag/Mobilnummer, liefert Name/Adresse/Eigentumsform (sofern kein
  Sperrvermerk). Wegen SMS-2FA weiterhin **kein API-Automatisierungsweg**, aber deutlich
  schnellerer manueller Weg als bisher dokumentiert. Quellen: notariate-zh.ch, tagesanzeiger.ch
  → [[kartenportale-geoportale-uebersicht]] (Offen A5).

## B — Recht & Norm
- [ ] **R74 (Wissens-Chef Run 21, 2026-07-30) — Abschnitt 2 von
  [[recht-norm-tiefgarage-erschliessung]] materiell auf VSS 40 291:2021 umstellen.** Der ganze
  Abschnitt (Parkfeld-/Fahrgassenmasse, lichte Höhe, Rampenneigung, Kurvenverbreiterung,
  Kontrolleinrichtungen) schreibt die Werte der **abgelösten** Ausgabe SN 640 291a:2005 samt der
  abgeschafften Komfortstufen A/B/C materiell fort. Die geltende Ausgabe **VSS 40 291:2021-12**
  liegt seit 14.07.2026 als Destillat in der führenden KB `normen`
  (`destillate/vss-40291-2021-parkieren-anordnung-geometrie.md`); das Destillat der Altausgabe
  trägt dort ausdrücklich «HISTORISCH/ERSETZT — nicht mehr für aktuelle Projekte verwenden».
  **Heute erledigt ist nur der Fassungs-Vorbehalt** (Kopf Abschnitt 2, `sources`-Block,
  `querbezug_kb_normen`, INDEX-Zeile) — der Bestand ist damit gefahrlos, aber nicht aktuell.
  **Offen bleibt der Delta-Abgleich 2005 → 2021**, der laut Führungs-Matrix in `normen` gehört
  (Norm-Fundstellen inkl. Ausgabe/Kennwert → führend `normen`), nicht hier. Bekannte, bereits
  belegte Deltas: Rampenneigung 12/15 % je Stufe gegen einheitlich 15 % ungedeckt / 18 % gedeckt;
  Fahrgasse Einbahn 3.00 m gegen 3.20 m, Gegenverkehr 5.00 m gegen 5.50 m; Geltungsbereich 2005
  «Personenwagen und Lieferwagen bis 3.5 t» gegen 2021 «Personenwagen und Motorräder»; entfallene
  Flächenäquivalenz «3 Schrägparkfelder = 2 Behindertenparkfelder» und neue Reduktionsoption
  2.50 m bei mind. 1.00 m BAS. **Nicht selbst umschreiben** — die Werte kommen aus `normen`, die
  Übergabe dorthin ist anzumelden (Rule `normen-referenz`, Muster
  [[brandschutz-pl03-wegweiser]]).
- [x] **R73 (Run 90, 2026-07-26, Token-Vollgas)** Frischecheck `PL - 02_Recht_Norm` +
  `PL - 03 Brandschutz` gegen Run 88 (`find -newer`): 0 neue/veraenderte Dateien. Vierzehnte
  unabhängige Erschöpfungs-Bestätigung für dieses Domänenpaar, vierundzwanzigste in Folge
  über alle vier Domänen (Run 67-90). Details `outputs/2026-07-26_training-run90.md`.
- [x] **R72 (Run 84, 2026-07-25, Token-Vollgas)** Frischecheck `PL - 02_Recht_Norm` +
  `PL - 03 Brandschutz` gegen Run 82 (`find -newer`): 0 neue/veraenderte Dateien. Elfte
  unabhängige Erschöpfungs-Bestätigung für dieses Domänenpaar, achtzehnte in Folge über
  alle vier Domänen (Run 67-84). Details `outputs/2026-07-25_training-run84.md`.
- [x] **R68-R71 (Run 66, 2026-07-25, Token-Vollgas)** SWKI VA103-01 Rest (S. 26-110/110, Backlog
  aus Run 64/65) vollständig gelesen — komplette Bemessungsmethodik (Zonen/Benutzer-Kategorien/
  Korrekturfaktoren, Praxisbeispiel Wohnen vs. Angestellte halbe/volle Luftmenge), Abnahme/Betrieb/
  Sicherheit/Rückbau, Anhänge A-F (SIA-2028-Klimatabelle, Schneehöhen, Formulare, Anwendungs-
  beispiele, CFD-Simulationsnachweis) → NEU §9 [[recht-norm-tiefgarage-erschliessung]], Backlog
  geschlossen. Zwei weitere, bisher nie erschlossene Ordner gefunden (Scout-Abgleich, cloud-only,
  mit `cp` materialisiert): **eco-bau-Cluster** (`04_Merkblätter/eco/Nachhaltiges Bauen/`) —
  Verein eco-bau als nationale Trägerschaft (Bund+18 Kantone/Städte) statt Stadt-ZH-Spezifikum,
  vollständiges BKP-Register der Ökologie-Merkblätter (112-285), konkrete LV-taugliche
  Materialverbote (RC-Beton 60%, Formaldehyd E1, EMICODE EC1, Montageschaum-Verbot) → NEU §6.6
  [[recht-norm-ahb-stadt-zuerich-projektstandards]]. **SZ_Einsiedeln-Cluster**
  (`01_Gesetze/02_Schwyz/SZ_Einsiedeln/1 Gestaltungsplan Reckholderen/` + `2 Ausnützungsziffer/`)
  — historische Genese (RRB 1976/1979/1983) des bereits als SZ-Hauptbenchmark geführten
  Quartiergestaltungsplans Reckholdern, realer Präzedenzfall Waldabstand-Reduktion 20m→15/17m via
  Gestaltungsplan-Änderung, neue SZ-Kinderspielplatzpflicht (Art. 16 BauR Einsiedeln 1974,
  MFH ab 6 Wohnungen, 20% der Wohngeschossfläche) → Ergänzung
  [[recht-norm-baurechtsanalysen-benchmarks]]. Details siehe `training/curriculum.md` R68-R71.
- [x] **R64-R67 (Run 64, 2026-07-25, Scout-Abgleich)** Nach vollständigem `06_Richtlinien`-
  Unterordnerabgleich (Kartenportale/Energie hatten dieselbe Methodik bereits in Run 63 auf
  PL-01/PL-04 angewendet) vier bisher nie erschlossene Kleinst-Ordner gefunden (9 Dateien,
  1-4 je Ordner) — cloud-only/nicht materialisiert, daher von allen 63 Vorläufen übersehen.
  **R64 Kt.-Basel-Landschaft Büroausstattung:** zweites vollständiges kantonales
  Büroraum-Bemessungssystem (12 Flächenmodelle, CHF 7'500/AP) → NEU §7
  [[recht-norm-raumprogramm-referenzwerke]]. **R65 VSA (Aufzugsverband):** komplettes
  SIA-370/SN-EN-81-Normenregister + ESBA Kt. ZH (Bestandsaufzug-Nachrüstpflicht, 7
  Gefahrenpunkte) + SNEL (74 Gefährdungspunkte, nur ZH/GE/GL gesetzlich verankert) → NEU §2b
  [[recht-norm-hindernisfreies-bauen-zh]]. **R66 BKZ:** grosser Delta — Sehbehinderten-/
  Hörbehinderten-Dimension bisher komplett gefehlt (taktile Orientierung, Reliefschrift,
  Kontraststreifen, Höranlagen), plus Begriffsleiter (absolute Barriere/relative Hindernis/
  anpassbar/behindertengerecht) und WC-/Küchen-Fixmasse → NEU §3b
  [[recht-norm-hindernisfreies-bauen-zh]]. **R67 SWKI VA103-01:** Parkhaus-Lüftungsauslegung
  (CO-Grenzwerte, Einschaltwerte, exponiert/geschützt-Geschossbewertung) — bisher fehlende
  TGA-Dimension im Tiefgarage-Artikel → NEU §8 [[recht-norm-tiefgarage-erschliessung]].
  Lehre: cloud-only-Dateien (0 Byte lokal, `mdls` liefert keine Seitenzahl) sind für frühere
  Scout-Läufe unsichtbar geblieben — `cp` materialisiert sie zuverlässig (analog zu den
  bekannten EDEADLK-Workarounds). Details `outputs/2026-07-25_training-run64.md`.
- [x] **R61 (Run 60, 2026-07-25)** Letzter offener Backlog-Punkt aus R59/§9: OneDrive-Lock auf
  `09-Projektdokumentation/` + `10-Projektablauf/10.6-Projektabschluss/` (seit Run 52 blockiert)
  aufgelöst — alle vier Dateien gelesen. **PAB 2.16.R Richtlinie für Projektdokumentationen**
  (7-Kapitel-Gliederung, Kennzahl CHF/Kranken- oder Altersheimbett), **reale Muster-Fallstudie**
  (Schulanlage Döltschi, 20.68 Mio. CHF Gesamtanlagekosten) + **Muster-BKP-Kostengliederung**
  (KV.xls) + **Abnahmeprotokoll SIA 118** (amtliches Stadt-ZH-Formular Art. 157-161) → NEU §18
  [[recht-norm-ahb-stadt-zuerich-projektstandards]]. Damit ist der zehnteilige «Projektadmin AHB»-
  Ordner vollständig ausgewertet.
- [x] **R58-R59 (Run 58, 2026-07-24, Token-Vollgas)** Zwei bisher nie erschlossene
  `04_Merkblätter/`-Unterordner ausgewertet. **R58 — Fugenlose Bodenbeläge/Estriche
  (PAVIDENSA):** Checkliste PAV-E 16:2012 (5-Phasen-Planungs-/Ausführungsablauf mit Quer-
  verweisen auf 12 weitere PAV-Einzelnormen) + PAV-E 01:2008 Heizestrich-Spezialregeln
  (Fugenplan-Pflicht des Bestellers nach SIA 251:2008 Art. 2.4.9, Feldgrössen CT 6m/CA+CAF 8m,
  drei Verlegearten der Heizregister, Belastungsprobe-Temperaturregime, Calciumsulfat-Estrich
  max. 50°C Vorlauftemperatur) → NEU §5 [[recht-norm-arbeitshilfen-planungsdetails]], direkt
  LV-relevant BKP 281.1. 7 weitere PAVIDENSA-Dokumente im selben Ordner als Backlog. **R59 —
  Balkone/Laubengänge-Abdichtung SIA 271/273 (LPM AG/Richard Graf, KBS-Fachtagung 2010):**
  realer Schadenskatalog (Durchfeuchtung/Ausblühungen/Risse bis 4mm/fehlende Pfeiler-Anschluss-
  Fugen) + normative Anforderungen (Schichtaufbau, Untergrund-Tabelle, Mindestgefälle 1,5% OHNE
  Unterschreitungsmöglichkeit bei Balkonen/Terrassen/Dächern ohne Schutzschicht, Fugenbreite
  min. 20mm) + SIA 273 als eigene Norm für befahrene Flächen (Parkdecks/Rampen/Innenhöfe) → NEU
  §6 [[recht-norm-arbeitshilfen-planungsdetails]], ergänzt [[recht-norm-tiefgarage-erschliessung]].
  Details siehe `training/curriculum.md` R58/R59.
- [x] **R52-R56 (Run 53, 2026-07-19, Token-Vollgas — OneDrive-Blocker-Ausweich-Lauf)** Der
  planmässige `raw/`-Lauf (PL-02/PL-04-Dateien lesen) war blockiert: **systemischer
  EDEADLK/"Resource deadlock avoided"-Fehler** traf heute nicht nur die seit Run 52 bekannten
  Brandschutz-Kandidaten (C36/B42/B43), sondern auch zuvor problemlos gelesene Dateien
  (`EN-ZH.pdf`, `IVHB_Leitfaden...pdf`, mehrere `.docx`) — d.h. der gesamte OneDrive-Mount war
  für diesen Lauf gesperrt, kein dateispezifisches Problem. Ausweichend auf WebSearch/WebFetch
  (gemäss PROGRAMM.md Schritt 3a ausdrücklich für Aktualisierungen zulässig) plus die bereits
  lokal vorliegende `wissen/baurecht/raw/`-Kopie. **R52 NEU:** PBG-Revision «Erleichtertes Bauen im
  Bestand» — bisher nicht erfasster Rechtsetzungsstrang, § 220a E-PBG (Abweichungsanspruch
  Grenzabstand/Fassadenhoehe/-laenge/Vollgeschosse bei neuen Wohneinheiten im Rahmen der
  bestehenden Ausnützung) + § 357 E-PBG-Ergänzung für baurechtswidrige Bestandesbauten +
  Streichung Mehrlängenzuschlag ABV §§21/23/24; Primärquelle (Vorentwurf + erläuternder
  Bericht, RRB 827/2025, vzgv.ch) vollständig via WebFetch/PDF gelesen → NEU
  [[recht-norm-pbg-revision-bauen-im-bestand]]. **R53 (=R11-Abschluss):** LSV-Novelle 01.04.2026
  inhaltlich geschlossen — Art. 22 USG/Art. 31 LSV, KWL als Schallschutzmassnahme, keine
  Übergangsfrist → [[recht-norm-quellenlandkarte]]. **R54 (=R10-Refresh):** Denkmalschutz-PBG-
  Revision RRB-Nr. 678/2026 + Motion 153/2020/Postulat 29/2022-Hintergrund ergänzt, Verfahrensstand
  unverändert. **R55 (=M3-Abschluss):** § 49b PBG vollständig ausgewertet inkl. Referendums-
  Ergebnis (14.06.2026, 57.14 % Ja, UmV in Kraft) — s. M3 unten; dabei auch fehlerhafte
  Cross-Referenz im Energie-Artikel korrigiert. **R56 (Verifikation, kein Delta):** Solarpflicht-
  Web-Treffer "§ 10b EnerG" gegen amtlichen Volltext geprüft — korrekt ist **§ 10c EnerG**, KB
  war bereits richtig. Details/Quellenliste → `outputs/2026-07-19_training-run53.md`.
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
  Beitrittsgesetz) als wortgleiche Duplikate der bereits dokumentierten
  [[recht-norm-submissionsverordnung-zh]] bestätigt — kein Delta. → NEU §5-§8
  [[recht-norm-ahb-stadt-zuerich-projektstandards]], Status auf **established** gehoben.
  Restbacklog (niedrigere Priorität): 12-Bauwerkdokumentation, 16-Ingenieurwesen,
  18-Nachhaltiges-Bauen-Einzelchecklisten (26 Dateien) + ECO-BKP-Kompendium (51 S.),
  14-Energie-TGA-Rest (GT_RL1-9), 09/10/04-Büro-CI-Vorlagen (vermutlich Nicht-Fund). Details siehe
  `training/curriculum.md` R40-R41.
- [x] **R36–R38 (Run 37, 2026-07-14)** Drei weitere bisher unerschlossene Dateien im Ordner
  `04_Merkblätter` ausgewertet (systematischer Ordner-Abgleich, analog der R32-R35-Methodik):
  **UGZ Hindernisfreie Aufzüge + UGZ Wohnungsbau hindernisfrei** (Stadt-ZH-Vollzugspraxis zum
  hindernisfreien Bauen — Geltungsbereich-Staffelung BehiG Art. 3, Aufzugs-Kabinenmasse SIA 500
  inkl. § 40 BBV I Krankentransport-Mass, vollständige Wohnungsbau-Fixmasse-Tabelle → NEU
  [[recht-norm-hindernisfreies-bauen-zh]], schliesst die in R27 offen benannte SIA-500-Lücke),
  **GVZ_Leitfaden_Hochwassergefahrenkarte.pdf** (⚠ Datenstand 2003 — ZH-Rechtsgrundlage § 22 WWG
  für die Naturgefahr Hochwasser, Gefahrenmatrix + Gefahrenstufen rot/blau/gelb deckungsgleich
  zur bereits dokumentierten SZ-Stufung, rechtliche Wirkung als entschädigungslose
  Eigentumsbeschränkung → Ergänzung [[kartenportale-naturgefahren-objektschutz]] §7b; schliesst
  den ZH-Rechts-/Verfahrensteil. **GIS-Layer-Endpunkt GELÖST (Run 54, 2026-07-20, s. §8a) —
  Registernachtrag Run 57 (2026-07-23):** war hier weiterhin als offen geführt, obwohl §8a des
  Zielartikels die Lösung (`maps.zh.ch/wfs/OGDZHWFS`, Layer `ms:ogd-0044_giszhpub_wb_hw_gk_f`)
  bereits seit Run 54 enthielt — §7b und der §8-Offene-Punkte-Block im Zielartikel nachgezogen,
  kein neuer Rechercheaufwand.), **AFS_Leitfaden
  Dachlandschaften.pdf** (⚠ Datenstand 2010 — informelle städtebauliche Gestaltungspraxis Amt
  für Städtebau, kein Gesetzestext extrahierbar; 5-Kategorien-Solaranlagen-Tabelle nach
  Denkmalschutz-Anspruch direkt anschlussfähig an Agent `energie-berater` → Ergänzung
  [[recht-norm-ivhb-baubegriffe]]). Zusätzlich RPG-2/R6-Refresh (WebSearch+WebFetch 2026-07-14):
  ZH-Umsetzungsstand weiterhin unverändert, kein PBG-/Richtplan-Fertigstellungsdatum; parallele
  Denkmalschutz-PBG-Revision (RRB 02.07.2026) bestätigt weiterhin beim Kantonsrat hängig →
  [[recht-norm-quellenlandkarte]]. Details siehe `training/curriculum.md` R36-R38.
- [x] **R32–R35 (Run 35, 2026-07-13)** Vier weitere bisher unerschlossene PL-02-Ordner ausgewertet
  (systematischer Top-Level-Ordnerabgleich, analog der K27/K28/K31-Methodik in Kartenportale):
  **`08_Richtplan`** (irreführend benannt — kein kantonaler Richtplan, sondern das
  **Richtprojekt** als verbindliche Massskizze im Anhang einer privaten Sondernutzungsplanung;
  realer Fall Überbauungsordnung «VistaRotonda» Kt. Bern, Datenblatt Landfläche 11'400 m²/
  BGF 6'966 m²/Parkplatzbedarf Art. 19.2 Baureglement/Kubatur SIA 116 32'825 m³; **korrigiert eine
  private KI-generierte Fehlquelle** die «Richtprojekt» fälschlich als SIA-102-Phase einordnete,
  Terminologie-Delta Kt. Bern «Überbauungsordnung» vs. Kt. ZH «Gestaltungsplan» § 83 PBG erstmals
  dokumentiert → NEU [[recht-norm-richtprojekt-ueberbauungsordnung]]), **`05_Raumpilot`**
  (bestehende KB-Annahme "nur Grundlagenband, Arbeiten/Lernen fehlen" anhand des Volltext-
  Inhaltsverzeichnisses widerlegt — die 582-seitige PDF enthält vollständige Typologie-Kapitel
  Arbeiten UND Lernen/Schulbau, Stichprobe S. 468 belegt echten Inhalt, direkt nutzbar für die
  JANS-Priorität Schul-/Bildungsbau → Korrektur [[recht-norm-raumprogramm-referenzwerke]] §1),
  **`01_Gesetze/01_Bund/Eisenbahngesetz`** (bestätigter Nicht-Fund — reine AB-EBV/VEAB-
  Bahnbetreiber-Infrastrukturtechnik, keine Bahnabstandslinie für Drittbauten, ehrlich als
  Nicht-Fund dokumentiert, kein Artikel), **`10 Lärmschutz`** (kein Delta — reiner Link auf
  bauen-im-laerm.ch, bereits in [[recht-norm-quellenlandkarte]] erfasst). Details siehe
  `training/curriculum.md` R32-R35.
- [x] **R22–R26 (Run 30, 2026-07-13)** Fünf bisher unerschlossene PL-02-Einzelordner ausgewertet:
  **2-Stunden-Schatten-Grobnachweis** (§ 284 Abs. 4 PBG / § 30 ABV, Konstruktionsverfahren +
  Azimut/Sonnenhoehe-Tabelle), **Post-Briefkastenanlage** (UVEK-Postverordnung 1998, Standort +
  Mindestmasse je Gebäudetyp), **Absturzsicherungen im Hochbau** (Richtlinie Stadt Zürich
  1.6.2019, Geländer/Bruestungshoehen, kindersicher/nicht kindersicher, 15-%-Bestandsschwelle)
  → alle drei NEU [[recht-norm-arbeitshilfen-planungsdetails]]; **Zimmerzählung ZH-Wohnbau-
  förderung** (Kt.-ZH-Merkblatt 15, halbe-Zimmer-Definition, eigenständiges kantonales
  Instrument neben der Bundes-WBS) → Ergänzung [[recht-norm-raumprogramm-referenzwerke]] §2b;
  **STWEG-Teilungsplan-Vermessungsseite** (reales JANS-5-Phasen-Vorgehen Ebmatingen/WOMA +
  amtliche swisstopo-Empfehlung «Digitale Dokumentation Stockwerkeigentum – Aufteilungsplan»
  05.05.2020 mit INTERLIS DM.StWE + reale Wertquotenberechnung-Benchmark Hafenstrasse 46
  Romanshorn, gewichtete Faktoren 0.20-1.20 je Nutzungsart/Geschoss) → NEU
  [[recht-norm-stweg-teilungsplan-wertquoten]], speist Skill `stockwerkeigentum` + Agent
  `wertquoten-rechner`. Details siehe `training/curriculum.md` R22-R26.
- [x] **R18–R21 (Run 28, 2026-07-13)** Vier bisher unerschlossene PL-02-Unterordner ausgewertet
  (Fund/Registrierung eines vorher unterbrochenen Laufs, dessen Wiki-Artikel bereits geschrieben
  waren, aber ohne Register-Nachführung — gegen die Original-PDFs verifiziert, alle Quellen auf
  Disk bestätigt): **Baueingabe-Verfahren ZH** (Drei-Spuren-Modell, Fristen, Plandarstellung
  rot/gelb/schwarz, reale Fallbeleg-Kennzahlen Wartstrasse 8/Bohlweg 3 → NEU
  [[recht-norm-baueingabe-verfahren-zh]]), **IVHB-Leitfaden Kt. ZH** (29-Begriffe-Inventar, amtlicher
  Wortlaut Massgebendes Terrain § 5 ABV + Gebäude-/Kleinbauten-Begriffe → NEU
  [[recht-norm-ivhb-baubegriffe]]), **Regenwasserentsorgung + Gewässerraum-Verfahren ZH**
  (Versickerung vor Einleitung, GWS-Zonen-Verbote, Verfahren 2/3 Gewässerraum-Festlegung → NEU
  [[recht-norm-regenwasser-gewaesserraum-zh]]), **Submissionsverordnung Kt. ZH** (4 Vergabearten,
  Fristen, Abgrenzung zur privaten JANS-Devisierung → NEU [[recht-norm-submissionsverordnung-zh]]).
  Details siehe `training/curriculum.md` R18-R21.
- [x] **R12–R17** (Run 26, 2026-07-13) Sechs bisher unerschlossene PL-02-Unterordner ausgewertet:
  **Radonschutz** (StSV-Totalrevision 2017 statt SharePoint-Stammfassung 1994, Referenzwert
  300 Bq/m³ → NEU [[recht-norm-radonschutz]]), **Zivilschutz-Bautechnik** (TPH-18 Durchführungen,
  Ersatzbeitrag CHF 1'400/SP ab 01.01.2026 → NEU [[recht-norm-zivilschutz-bautechnik]]),
  **Arbeitsplatz-Bauvorschriften** ArGV 3/4 (Luftraum/Tageslicht/Raumhoehe/Verkehrswege → NEU
  [[recht-norm-arbeitsplatz-bauvorschriften]]), **Trockenräume + Bettenlift-Pflicht** (MPP-
  Praxisnotizen → [[recht-norm-raumprogramm-referenzwerke]] §4/§5), **Mehrwertrevers/
  Beseitigungsrevers** (Cross-Ref statt eigenem Artikel, kaum neue Fakten ggü. `wissen/baurecht`
  → [[recht-norm-dispensrecht]]), **Attika-Praxisfall Zürichseegut** (Namensverwechslung ZSG
  aufgelöst → [[recht-norm-baurechtsanalysen-benchmarks]]). Details siehe `training/curriculum.md`
  R12-R17. Offen: fedlex-ELI für SR 520.11/822.113/822.114 noch nicht ermittelt; `twp84d.pdf` +
  `TPH-19-d` nicht gelesen; **Schutzplatz-Bemessungsformel GELÖST (Run 49, R53):** Art. 17 ZSV
  Volltext (2 SP/3 Zimmer Wohnen, 1 SP/Patientenbett Spital/Heim) → NEU §2b
  [[recht-norm-zivilschutz-bautechnik]]; `07_Neuffert`/`04_Merkblätter` unter
  `01_Gesetze/01_Bund/` geprüft, aber leer. **Mehrwertrevers-Einschätzung KORRIGIERT (Run 49,
  R54):** der damalige Ordner enthielt noch nicht die am 13.07.2026 nachgelieferte Volltextdatei
  `zbl.txt` (Bösch, ZBl 1993) — mit dieser Quelle lohnt sich doch ein eigener Artikel, NEU
  [[recht-norm-mehrwertrevers-grundbucheintragungen]] (der Cross-Ref auf
  [[recht-norm-dispensrecht]] bleibt als thematisch verwandter Querverweis bestehen, ist aber
  nicht mehr die einzige Anlaufstelle für dieses Thema).
- [x] **R10** Raumprogramm-Bemessungsgrundlagen (Raumpilot, WBS 2015, Sanitäranlagen) — welche
  Referenzwerke ergänzen die rechtlich bindenden Masse fürs Raumprogramm? ✓ **2026-07-13
  (Run 23):** NEU [[recht-norm-raumprogramm-referenzwerke]] — **Raumpilot** (Jocher/Loch,
  Wüstenrot Stiftung 2012, Gebäudelehre-Nachschlagewerk analog Neufert, Kapitelstruktur
  Anthropometrie/Barrierefrei/Treppe/Aufzug/Rettung/Ruhender Verkehr/Energie, methodischer
  Grundsatz Funktionsbereiche statt fertiger Raumtypen), **WBS 2015** (Bundesamt für
  Wohnungswesen, Wohnungs-Bewertungs-System, 25-Kriterien-System max. 100 Punkte,
  **Grundausstattungs-Tabelle Nettowohnfläche 30/45/60/80/100/120/140 m² je 1-7-Zimmer-Wohnung**),
  UGZ-Toilettenanlagen-Bemessung Stadt ZH (Personal-Schlüssel nach ArGV3, Publikums-Schlüssel
  35-150 Personen/Einheit, Betreuungsstätten-Tabellen Krippe/Hort/Kindergarten).
- [x] **R11** Aktuelle regulatorische Entwicklungen ZH (Denkmalschutz-PBG-Revision + LSV-Novelle) —
  gibt es neue, noch nicht erfasste PBG-Vorlagen oder Verordnungsänderungen? ✓ **2026-07-13
  (Run 23):** **Denkmalschutz-PBG-Revision** — RRB verabschiedet **02.07.2026** zuhanden
  Kantonsrat (Vernehmlassung bereits erfolgt, Inkrafttreten offen): vereinfachtes Verfahren für
  kleinere Änderungen an Baudenkmälern (kein separater Schutzbeschluss mehr), stärkere
  Gewichtung energetische Modernisierung/zeitgemaesse Nutzung/Barrierefreiheit, vertragliche
  Unterschutzstellung bevorzugt, Gemeinden bleiben zuständig. **LSV-Novelle:** USG und LSV per
  **01.04.2026** geändert (bauen-im-laerm.ch), inhaltliche Details noch offen → beide in
  [[recht-norm-quellenlandkarte]] neue Abschnitte. **Offen:** Kantonsratsbeschluss Denkmalschutz-
  Vorlage verfolgen; LSV-Novelle-Details bei realem Fall vertiefen.
- [x] **R9** Tiefgarage-/Parkierungserschliessung (VSS 640 050/281/291a) als beschaffbare
  Planungsgrundlage — Rampenneigung, Parkfeld-/Fahrgassenmasse, Wendehammer. ✓ **2026-07-13
  (Run 21):** NEU [[recht-norm-tiefgarage-erschliessung]] — Zufahrtstyp A/B/C (VSS 640 050),
  Parkfeld-/Fahrgassenmasse + lichte Höhe je Komfortstufe A/B/C (VSS 640 291a), **Rampenneigung
  12-18 % je nach Komfortstufe/Deckung** + Neigungsknicke ≤6 %, Kurvenverbreiterung, Kontroll-
  einrichtungs-Layout (max. 3 % Neigung); reale ZH-Kantonspraxis Ausfahrtstyp A (IBV Hüsler AG,
  Neigungsknicke bis 18 %) deckungsgleich mit Norm; Wendehammer-Nachweis 12-m-LKW (VRV Art.
  64/65/65a, Enz & Partner GmbH, 3 Geometrie-Beispiele); Praxis-Benchmark Tiefgarage Flurstrasse
  (externe Referenz, Komfortstufe B, Stützenabstand-Befund deckt sich mit Norm-Minimum).
  Querverbindung zur brandschutztechnischen Seite → [[brandschutz-pl03-wegweiser]] §4c.
- [x] **B1** Aktualität der Bundeserlasse in PL-02 gegen fedlex prüfen (Datenstand setzen).
  ✓ Teil-erledigt 2026-06-08 (Schema + RPG/EnG); **vollendet 2026-06-20 (Run 7):** alle relevanten
  SR auf fedlex-ELI gemappt — BehiG `cc/2003/667`, NHG `cc/1966/1637_1694_1679` (Änd. AS 2025 429),
  NHV `cc/1991/249_249_249`, GSchG `cc/1992/1860_1860_1860` (Stand 20250801), GSchV
  `cc/1998/2863_2863_2863`, LSV `cc/1987/338_338_338` (Änd. AS 2023 582), RPV `cc/2000/310`
  (Teilrev. AS 2025 659). **NEU:** fedlex-Redirect `redirect/rs/<SR>/de` (SR→geltende Fassung).
  → [[recht-norm-quellenlandkarte]]. **Vollendet 2026-06-28 (Run 11):** **LRV** 814.318.142.1 =
  `cc/1986/208_208_208` (Stand 20260101, PDF-A HTTP 200 getestet; ELI-Falle: AS-Jahr 1986 ≠
  Erlassjahr 1985). Restaufgabe nur noch: exaktes Stand-Datum je Erlass beim konkreten Zitat.
- [~] **B2** ZH-Umsetzung **RPG 2** (PBG-/BZO-Folgen) belegt erfassen — verlinkt Skill `baurecht`.
  ✓ **teil 2026-06-20 (Run 7):** Bund-Etappen (01.01./01.07.2026), Stabilisierungsziel **max. 2 %**
  ausserhalb Bauzone (Basis 29.09.2023), Abbruchprämie ab 01.07.2026, RPV-Teilrev. AS 2025 659;
  ZH passt **PBG + Richtplan** an, direkt anwendbares Bundesrecht gilt schon, **ZH-Umsetzung noch
  in Erarbeitung** → [[recht-norm-quellenlandkarte]] Abschnitt RPG 2. **Update 2026-06-28 (Run 11):**
  ZH-Stabilisierungswert in absoluten Zahlen belegt — **40'807 Gebäude / 2'594 ha** versiegelt
  (Bezug 29.09.2023), Kompensation neue Baute ↔ Rückbau ≥ 6 m², **Abbruchprämie ZH ab 01.07.2026**
  (bereits erfolgte Rückbauten nicht entschädigt), Bestandesschutz > 30 J direkt seit 01.01.2026.
  **NEU erfasst:** parallele ZH-PBG-Revision **«Klimaangepasste Siedlungsentwicklung»** (teils direkt
  im Baubewilligungsverfahren, teils kommunale Nutzungsplanung). **✓ Klima-PBG-Teil erledigt
  2026-07-06 (Run 15):** Revision **in Kraft seit 01.12.2024** (RRB 998/2024; Kantonsrat 121:49;
  espacesuisse.ch/kantonsrat.zh.ch) — direkt anwendbar (ökolog. Grünflächen erhalten/aufwerten,
  reduzierte Pflanzabstände 4 m/2 m + Strassenabstände, **§ 238a PBG** Begrünung Aussenraum),
  daneben kommunale Musterbestimmungen/BZO → [[recht-norm-quellenlandkarte]]. **Offen (RPG 2):**
  ZH-PBG-/Richtplan-Umsetzung RPG 2 bei Publikation nachziehen.
- [x] **R8** Wald-/Gewaesserabstand ZH & SZ als beschaffbare Baufeld-Grundlage. ✓ **2026-07-12
  (Run 18):** NEU [[recht-norm-abstandsvorschriften-wald-gewaesser]] — **ZH-Wald** 30 m Regel-Mass
  (Merkblatt Abt. Wald Nov 2018), Bauverbot Hochbauten **§ 262 PBG** zwischen Waldgrenze und
  Waldabstandslinie, < 15 m immer forstlich, Ausnahme = **§ 220 PBG (Gemeinde) + Art. 17 WaG
  (kant. Forstdienst)**, strenger Massstab; **ZH-Gewässerraum** GSchV **Art. 41a/41b** (nat. GSB ×
  Breitenvariabilität ×1/1.5/2; Fliess <2 m→≥11 m / 2–15 m→≥2.5×GSB+7 m; Schutzgebiet-Tabelle;
  See > 0.5 ha ≥ 15 m ab Ufer), Nutzungsbeschränkung **Art. 41c**, Verfahren §§ 36–89 PBG +
  ARE/AWEL 60 Tage, Geodatum gis.zh.ch «Gewässer-Ökomorphologie»; **SZ** § 66 Gewässerabstand =
  Gewässerraum GSchG / § 67 Waldabstand 15 m ab Waldgrenze (amtlich Stand 1.2.2025). Geodatum via
  Connector 0150/0153/0185 → speist `baulinien-analyst`/M2. **Offen:** ZH-Wald-Ausnahmefall mit
  *gewährtem* Dispens; SZ-Wald-Ausnahme-Minima aus sz.ch-Richtlinie (bisher einsiedeln.ch 2018).
- [x] **B4 (R2)** SZ-Mass-Definitionen aus PL-02/02_Schwyz belegt erfassen. **2026-06-28 (Run 11):**
  Screenshots gelesen — **§ 31i GFZ / § 31g BMZ** (SZ ist IVHB-aligned, AZ kantonal abgeschafft),
  **§ 60 Gebäudehöhe** (Fassadenmitte, GA 50 % GH min 3 m), **Art. 42 Firsthöhe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** ungleiche GA-Verteilung via Dienstbarkeit
  → [[recht-norm-quellenlandkarte]] SZ-Block + Benchmark Willerzell. ⚠ Stand **SRSZ 1.2.2021** (> 18 Mt.)
  → vor Zitat aktuelle SRSZ-Fassung prüfen. **✓ Waldabstand erledigt 2026-07-06 (Run 15):**
  Screenshot `Art 35 Waldabstand.png` = **§ 35 PBV SZ (400.111)** regelt die **Waldgrenze** (2 m
  ausserhalb Stockgrenze) + Waldabstandslinie im Zonenplan — **nicht** das Baumass; das numerische
  **Waldabstand-Baumass steht in § 67 PBG SZ = 15 m** (Ausnahme-Minima Hauptbau 10/8 m, Nebenbau
  6/4 m; sz.ch Richtlinie Waldabstand + einsiedeln.ch 2018) → [[recht-norm-quellenlandkarte]]
  SZ-Tabelle (Zeile korrigiert). **✓ ZH-Waldabstand-Baumass erledigt 2026-07-12 (Run 18):** 30 m
  Regel-Mass / § 262 PBG Bauverbot → [[recht-norm-abstandsvorschriften-wald-gewaesser]] §1.
  **✓ Refresh gegen amtliche SRSZ-Fassung 2026-07-12 (Run 18):** § 60/61/62/66/67 amtlich bestätigt
  (PBG 400.100 **Stand 1.2.2025**, Volltext-Grep), ⚠ >18-Mt.-Flag aufgelöst. **Korrektur:** GFZ/BMZ
  noch NICHT in Kraft — nur Vollzugsverordnungs-Vorlage (§ 31i GFZ / § 31j BMZ / § 31m AZ, § 52
  Abs. 3 PBG); amtliches PBG/PBV enthalten sie nicht (Grep verifiziert). **Offen:** Inkraftsetzung
  der SZ-Verordnung überwachen; SZ-Wald-Ausnahme-Minima aus sz.ch-Richtlinie (bisher einsiedeln.ch).
- [x] **R3** Dispensrecht: § 220 PBG als Muster-Wegweiser (aus `05_Dispensrecht`). ✓ **2026-07-06
  (Run 15):** NEU [[recht-norm-dispensrecht]] — 3-Stufen-Prüfung (besondere Verhältnisse in
  Topographie/Form/Lage; NICHT Vielzahl-Fälle/Haerten/persoenl. Verhältnisse · negative
  Voraussetzungen Abs. 2/3, keine Nachbar-Zustimmungsabhängigkeit · Ermessen Gemeinde, freie
  Kognition der Rechtsmittelinstanz), **ausnahmebewilligungs-feindliche** zone-prägende Normen
  (Höhe/Laenge/Abstand/Ausnuetzung), Abgrenzung § 357 Besitzstand / Art. 24 RPG, Beschaffung
  **Baurekursgericht-ZH-DB** (login-frei, 4 Sucheinstiege, Rechtsgebiet-Direktlink). Benchmark
  **BRKE I 0247/2010** (Doppel-EFH-Ersatz W2bII, Dispens verweigert = Vielzahl-Fälle + zone-prägend;
  best. VB.2011.00041). ⚠ Harmonisierungs-Falle: nicht-harmonisierte BZO → PBG-Fassung bis 28.02.2017.
  **Offen:** zweiter Benchmark mit *gewährtem* Dispens (Hanglage).
- [x] **B3** `06_Richtlinien` (Behörden-Richtlinien ZH/Stadt ZH, Minergie, GVZ, BfU) als
  Wegweiser-Block ergänzen. ✓ 2026-06-20 (Run 7): belegter Wegweiser-Block (BfU/Stadt-ZH-Absturz/
  AWEL/Minergie/GVZ/2000-Watt/Lignum/SWKI…) → [[recht-norm-quellenlandkarte]]. Vertiefung je Bedarf.

## C — Brandschutz
- [ ] **C44 (Wettbewerbs-Scan Grassenbiwak, 2026-07-28)** **Batteriespeicher als Brandschutzthema —
  wie ist ein Lithium-Ionen-Hausspeicher nach BSV 2015 zu behandeln, und was aendert BSV 2026?**
  Ausloeser: Wettbewerbsprogramm 2408 verlangt einen eigenen Raum «Batterie/Elektro» (2 m²), die
  Fragebeantwortung Nr. 78 laesst ausdruecklich andere Typen als Bleibatterien zu (Li-Ion braucht
  keine mechanische Lueftung). Die KB kennt Batteriespeicher bisher nur **energetisch**
  ([[energie-betriebsenergie-pv-wirtschaftlichkeit]]) und in der Tiefgaragen-Nebenbemerkung
  ([[recht-norm-tiefgarage-erschliessung]] «Ladegase nur bei Blei-/NiCd, nicht bei Lithium»). Die
  BSV 2015 kennt keinen eigenen Speicher-Teil; laut `wissen/energie/CHANGELOG` erhaelt BSV 2026
  voraussichtlich einen. Offen: eigener Brandabschnitt ja/nein, Lueftung, Abstand zu Aufenthalts-
  und Schlafraeumen, Loeschmittel. Zu pruefen: VKF-Merkblaetter/Infoblatt Lithium-Ionen (Backlog aus
  Blitzschutz-Lauf), SNR 464022, kantonale Merkblaetter. **Hoch relevant**, weil netzferne
  JANS-Bauten (Huetten, Biwaks) den Speicher zwingend im Gebaeude haben.
- [ ] **C43 (Wettbewerbs-Scan Grassenbiwak, 2026-07-28)** **Wer vollzieht den Brandschutz bei einem
  Bauwerk auf einer Kantonsgrenze — und wie unterscheiden sich OW und BE?** Der Perimeter 2408 liegt
  auf der Grenze Obwalden/Bern. VKF-Vorschriften gelten schweizweit, der Vollzug ist kantonal (Kt. OW:
  Abteilung Technische Inspektorate; Kt. BE: Gebaeudeversicherung Bern GVB). Die KB dokumentiert die
  Vollzugslandschaft bisher nur fuer ZH/SZ. Offen: Zustaendigkeitsregel bei Grenzlage, kantonale
  Zusatzvorschriften und Bewilligungswege OW/BE, Verhaeltnis zur Baubewilligung ausserhalb Bauzone
  (Art. 24 RPG). Auch generisch relevant fuer JANS-Projekte ausserhalb ZH.
- [ ] **C42 (Wettbewerbs-Scan Grassenbiwak, 2026-07-28)** **Personensicherheit ohne abwehrenden
  Brandschutz — welches Konzept traegt, wenn Feuerwehr, Loeschwasser und Alarmierung fehlen?** Die
  vier kumulativen Bedingungen der Kategorie [c] (Begriffs-Richtlinie 10-15de, Anhang) beschreiben
  genau diesen Zustand: keine rechtzeitige Intervention, keine genuegende Loeschwasserversorgung,
  keine dauernde Stromversorgung (PV und Notstrom gelten ausdruecklich als ungenuegend). Die KB
  dokumentiert die **Definition**, aber keine **Methode**: welche baulichen und organisatorischen
  Ersatzmassnahmen die Behoerden in solchen Faellen verlangen bzw. akzeptieren (Selbstrettungs-
  Konzept, Handfeuerloescher-Bemessung ohne Loeschwasser, Rauchwarnmelder-Vernetzung, Fluchtwege
  direkt ins Freie, Materialisierung). Zu pruefen: BSR 18-15 Loescheinrichtungen, VKF-Arbeitshilfe
  1000-15 (Gebaeude geringer Abmessungen), Praxis der Gebirgskantone. Direkt anwendbar auf jedes
  JANS-Projekt in Streulage.
- [ ] **C41 (Wettbewerbs-Scan Grassenbiwak, 2026-07-28)** **Offene Treppe und Raum-ueber-Raum in
  Kleinstbauten — wo genau liegt die Grenze?** Im Fall 2408 hat der Brandschutzplaner zwei Punkte
  markiert, die die KB nicht aufloest: (a) «Ist eine offene Gestaltung moeglich?» fuer die Verbindung
  Aufenthalt (EG) zu Schlafraum (OG), (b) «Achtung Aussentreppe hat Anforderungen». Zu (b) liegt die
  Fundstelle vor (BSR 16-15de Ziff. 2.5.2 + Anhang S. 18, Aussenwand EI 30 bzw. RF1, reduzierbar ab
  1.2 m Abstand — Destillat `vkf-brl-16-15-flucht-rettungswege`), zu (a) nicht: unter welchen
  Bedingungen darf die vertikale Verbindung innerhalb einer Nutzungseinheit offen bleiben, wenn
  darueber geschlafen wird?
  **TEILWEISE ERLEDIGT am 28.07.2026 (Wissens-Chef Run 19, am Original gegengelesen) — die
  Breitenfrage.** Die Aussage «im Destillat nicht mit Ziffer belegt» war falsch: die Vorgabe ist
  **dreifach ziffern-belegt**. **Grundmass Ziff. 2.4.5 Abs. 3 = 1.5 m** fuer gewendelte Treppen
  (innere Auftrittsbreite min. 0.15 m); die **1.2 m bei min. 0.1 m** sind eine ziffern-gebundene
  **Erleichterung** nach Ziff. 3.1 Abs. 2 (Gebaeude geringer Abmessungen), Ziff. 3.2.2 Abs. 1
  (Wohnen), Ziff. 3.3.2 Abs. 1 (Buero/Gewerbe/Industrie) bzw. Ziff. 3.6.2 (Beherbergungsbetriebe [c]).
  **Offen bleibt die Zuordnung — und sie, nicht die Breite, bestimmt die Schnittfigur.** Da §4f.2
  `brandschutz-pl03-wegweiser` belegt, dass das Grassenbiwak mit 18 Schlafplaetzen **kein**
  Beherbergungsbetrieb [c] ist (Fragebeantwortung 03.10.2024, Frage 47), scheidet Ziff. 3.6.2 aus.
  Zu klaeren ist deshalb zuerst die **Lage** der Treppe: erschliesst sie **mehrere
  Nutzungseinheiten**, greift Ziff. 3.1 Abs. 2 (1.2 m / 0.1 m). Liegt sie **innerhalb einer
  Nutzungseinheit** — der wahrscheinliche Fall bei Aufenthalt EG / Schlafen OG —, verweist
  Ziff. 3.1 Abs. 3 auf die nutzungsbezogenen Anforderungen, und dort gilt bei Wohnnutzung
  **Ziff. 3.2.2 Abs. 3: «An Treppen innerhalb der Nutzungseinheit werden keine Anforderungen
  gestellt»**. Diese beiden Absaetze fehlten im Destillat und wurden am 28.07.2026 nachgetragen.
  Fuer den Wettbewerbs-Modus (Skill `brandschutz`, Modus B, Stufe 0 Frage 5) heisst das: **zuerst
  die Nutzungseinheit abgrenzen, dann die Breite bestimmen** — nicht umgekehrt.
- [ ] **C40 (Nachaudit PL-03, 2026-07-28)** **Transformation EFH → MFH: welche Bauteile müssen die
  Brandschutzanforderungen erfüllen — alle oder nur die neuen?** Wörtlich offen im JANS-eigenen
  Fragenkatalog `_Projekte Themen/Tragwerk Brandschutzanforderung Thalwil Bohlweg3/250304
  Fragestellungen Brandschutz.docx` (04.03.2025), der bis zum Nachaudit nie ausgewertet war. Die
  KB beantwortet bisher nur die **Einstufung** (EFH k. A. vs. MFH mittlerer Höhe R 60,
  [[brandschutz-pl03-wegweiser]] §4b) — nicht den **Bestandes-Umfang** der Nachrüstpflicht bei
  Nutzungsänderung/Aufstockung. Für JANS die teuerste Einzelfrage im Bauen im Bestand (Ertüchtigung
  der bestehenden Tragstruktur vs. nur Neubauteile). Zu prüfende Fundstellen: Brandschutznorm 1-15
  Art. 2 «bestehende Bauten», BSR 15-15 Ziff. 3.7, Wohnbauten-Arbeitshilfe 1001-15, § 357 PBG
  Bestandesschutz (→ [[recht-norm-pbg-revision-bauen-im-bestand]]); Übergabe an KB `normen`
  (Destillat `vkf-brl-15-15-*`) und ggf. Rückfrage bei der Brandschutzfachstelle/GVZ.
- [x] **C39 — GESCHLOSSEN, mit korrigierter Diagnose (Run 93, 2026-07-30)** Die Datei ist jetzt
  lesbar und **kein Symlink**, sondern eine **reguläre UTF-8-Textdatei von 201 Byte**. Direkt
  gemessen am Original: `stat` → `Modus=-rwx------  Typ=Regular File  Groesse=201  Links=1`,
  `test -L` → falsch, `test -f` → wahr, `file(1)` → «Unicode text, UTF-8 text, with no line
  terminators». Ihr **Inhalt** ist der eigene Ziel-Pfad, **nach 201 Byte mitten im Wort
  abgeschnitten** (endet auf `… mit Feuerwiderst` + `a`) — also die Signatur einer abgebrochenen
  Umbenenn-/Kopieroperation, bei der ein Pfad-String als Dateikörper geschrieben wurde. Der im
  Inhalt genannte Ordner trägt die **korrigierte** Schreibweise `Feuerwiderstand`, der reale
  Ordner weiterhin den Tippfehler `Feuerwiederstand`.
  **Damit ist die Diagnose des Nachaudits vom 28.07.2026 in zwei Punkten falsch** und hier
  korrigiert: es ist (a) kein defekter Symlink und (b) 201, nicht 203 Byte. Richtig war die
  Substanz: kein Dokument, **kein Wissensverlust** — der Ordner enthält unverändert die drei
  bereits volltext gelesenen PDF (`4.1 BTH … _A/_B/_C.pdf`, alle 20.02.2025, 518 KB/2.24 MB/2.83 MB).
  **Zweite Lehre:** der `Resource deadlock avoided`-Fehler aus Run 92 war **doch transient** — Run 92
  hielt ihn wegen mehrminütiger Persistenz für strukturell. Er löste sich ohne Zutun. Die dort
  gewählte Praxis (dokumentieren und auf den nächsten Turnus verschieben statt Retries erzwingen)
  war damit richtig und bleibt Standard.
  **Aufräum-Hinweis an Raphael:** die Datei gehört gelöscht (kein Inhalt, kein Ziel), sonst taucht
  sie in jedem Inventarlauf erneut als Phantom-Quelle auf. Nicht durch den Loop gelöscht — `raw`-/
  SharePoint-Quellordner werden nie verändert (Rule `wissens-bibliothekar`).
  Ursprünglich (Run 92, 2026-07-28): als unlesbare Datei für den nächsten Turnus vorgemerkt.
- [x] **C38 (B46) (Run 60, 2026-07-25)** `Brandschutznachweis_MFH-5g-RF1_V.2_-_ohne_Logo.docx`
  (bisher nur als Existenz-Verweis in §2 geführt) vollständig gelesen — liefert ein reales,
  ausformuliertes MFH-Beispiel mit konkreter Feuerwiderstands-Matrix (R60/REI60/EI60/EI30,
  REI60-RF1 Fluchtweg vertikal) und WDVS-Brandriegel-Ausführungsdetail (Mineralwolle RF1
  ≥1'000°C, 20 cm), bestätigt die bereits dokumentierte BSR-14-15-Pflicht (§5ad) am realen
  Beispiel → Ergänzung §2 [[brandschutz-pl03-wegweiser]]. **B44-Folgerefresh:** BSV-2026-
  Terminplan erneut per WebSearch+WebFetch geprüft, unverändert bestätigt (kein neuer
  Erkenntnisgewinn seit Run 58).
- [x] **C37 (B45) (Run 58, 2026-07-24, Token-Vollgas)** Zwei bisher nie erschlossene Top-Level-
  Dateien unter `00 Brandschutzplaene bsvonline.ch/` (ausserhalb des bereits kartierten
  Musterplansatz-Unterordners) identifiziert und gelesen. **BSPUB-251.pdf = VKF-Publikation
  «Allgemein anerkannte Bauprodukte» V12.0** (TKB-Beschluss 31.03.2017) — genuiner Neufund:
  RF1/RF2/RF3-Einstufungstabellen für Standard-Baustoffe (inkl. Laubholz-Delta Eiche/Robinie/
  Teak=RF2 vs. übrige Laubhölzer=RF3) und Mindestmass-Tabellen (SIA-262/266-Kurzfassung) für
  Beton-/Mauerwerks-/Verputz-/Brandschutzplatten-Bauteile je Feuerwiderstandsdauer, verwendbar
  **ohne** Einzel-Prüfnachweis → NEU §5aq [[brandschutz-pl03-wegweiser]]. **BSPUB-185.pdf**
  bestätigter Nicht-Fund (identisch mit der bereits dokumentierten Arbeitshilfe 1001-15de
  Wohnbauten). Zusätzlich vier Delta-Checks von Dateien, die ein früherer Lauf bereits pauschal
  als «niedrige Priorität» dismissiert hatte (§1-Registerzeile) — jetzt mit Ziffern-Beleg
  bestätigt statt pauschal: Anerkennungsverfahren 28-15de (VKF-Produkt-/Fachfirmen-Zulassung,
  verwaltungsprozessual), Brandschutz-Praevention.pdf (Duplikat des Merkblatts
  Brandschutz-Klassifikation), gege-panikprogramm-1.pdf (Herstellerkatalog GEGE/Kaba, keine
  normative Substanz), Merkblatt_012_d.pdf (VST Nr. 012 «Türen in Fluchtwegen» — inhaltlich
  weitgehend deckungsgleich mit dem bereits dokumentierten SMU/VST-Merkblatt 004 in
  [[recht-norm-arbeitshilfen-planungsdetails]] §4, kein neuer Fakt, Delta-Check-Vermerk dort
  ergänzt). Details siehe `training/curriculum.md` B45.
- [x] **C36 (B42/B43) — GESCHLOSSEN Run 54, 2026-07-20** (OneDrive wieder lesbar; B42 vollständig ausgewertet → [[brandschutz-pl03-wegweiser]] §5ao, B43 als reine kaufmännische Belege ohne Fachinhalt verifiziert → §5ap). Ursprünglich (Run 52, 2026-07-18): Zwei technisch blockierte Kandidaten aus dem BSPUB-Register-Scan: Feuerwehrplan-Zusatzvariante `Stoerfall ABC-Objekt/` (8 PDF, §5b-Unterordner, nie inhaltlich gelesen) und `z_Administration/000_VKF_Lieferschein_Norm_2015.pdf`+`000_VKF_Bestellung_Norm_2015.pdf` — alle fünf Leseversuche scheiterten an EDEADLK ("Resource deadlock avoided"), auch nach Hintergrund-Priming mit 20 s Wartezeit. Gleiches Muster wie Run 50 K41-K44 (dort löste es sich nach ca. 2 Tagen von selbst). Für den nächsten Brandschutz-Lauf: erneuter Leseversuch, dann inhaltlich abschliessen.
- [x] **C35 (B40) (Run 52, 2026-07-18, Token-Vollgas)** Systematischer BSPUB-Nummern-Scan im Ordner `02 Brandschutzrichtlinien 2015-17-22/` deckt eine dritte, bisher unkatalogisierte Fassung der BSR 16-15 «Flucht- und Rettungswege» auf (`BSPUB-1394520214-85.pdf`, Stand 01.12.2022). Volltext-Diff gegen die bereits dokumentierten 2015/2017-Fassungen: Fehlerkorrektur Ziff. 3.7 (Dez. 2022) ändert nur die Bezugsfläche der Schleusenpflicht von "Geschossfläche" auf "Brandabschnittsfläche > 1'200 m²" — der KB-Kennwert war bereits korrekt (Quelle war die präzisere Wohnbauten-Arbeitshilfe), kein Korrekturbedarf. Genuiner Delta: Ziff. 3.5.2 Personenbelegungsdichte-Tabelle Verkauf (TKB-Beschluss 09.06.2021) — neue 3x2-Matrix nach Betriebstyp (Fachmärkte/Kaufhaeuser 0.10, Supermärkte 0.38/0.15, hochfrequentierte Supermärkte 0.45/0.21 Pers./m²) ersetzt die alte 3-stufige Pauschaltabelle, JANS-relevant für Erdgeschoss-Retail in Wohn-/Mischnutzungsbauten. → NEU §5am [[brandschutz-pl03-wegweiser]]. Flag für normen-training: Destillat `vkf-brl-16-15-flucht-rettungswege.md` noch ohne 2021er-Tabelle. Details siehe `training/curriculum.md` B40.
- [x] **C34 (B41/B44) (Run 52, 2026-07-18, Token-Vollgas)** Register-Vervollständigung: zwei weitere bisher nicht katalogisierte BSPUB-Nummern gefunden (-57 = Zweitkopie 1-15 Brandschutznorm, bestätigter Nicht-Fund; -71 = 13-15 Baustoffe/Bauteile Rev. 01.01.2017, Volltext-Diff ergibt nur redaktionelle Änderungen: Rohrisolationen→Rohrdämmungen, Bauteil 208 Bedachung→Dachkonstruktionen umbenannt, keine Kernzahl-Änderung) → NEU §5an [[brandschutz-pl03-wegweiser]]. Zusätzlich BSV-2026-Refresh (WebSearch+WebFetch bsvonline.ch/vkg.ch) — Stand unverändert bestätigt, politische Vernehmlassung weiterhin 08-11/2026, keine neue Medienmitteilung seit 06.01.2026. Ausserdem bestätigt identisch: `1001-15_Wohnbauten Auszug Brandschutz_Arbeitshilfe_Wohnbauten.pdf` = byte-identische Mehrfachablage der bereits für Regensdorf/Thalwil genutzten Datei. Details siehe `training/curriculum.md` B41/B44.
- [x] **C33 (B36-B39) (Run 45, 2026-07-14, Token-Vollgas)** Die vier seit Run 42 als Backlog vorgemerkten VKF-Brandschutzerläuterungen zu Feuerungsanlagen für feste Brennstoffe (103-15 Cheminées, 104-15 Spänefeuerungen, 105-15 Schnitzelfeuerungen, 106-15 Pelletsfeuerungen, alle Stand 01.01.2015, genehmigt 23.09.2014) vollständig volltextlich ausgewertet. Kernzahlen: Cheminée-Sicherheitsabstände 0.1 m/0.8 m (offen/verglast) + Vorbelag ≥0.4 m; Spänefeuerung IMMER separater EI-60-Heizraum unabhängig Nennwärmeleistung (keine kW-Erleichterung) + freistehende Silos 10 m Sicherheitsabstand + max. 40 m³ offene Lagerbehälter im Freien; Schnitzel-/Pelletsfeuerung teilen dieselbe 70-kW-Aufstellungsschwelle (EI 30/EI 60) und dieselbe Ausräumöffnungs-Staffel (1.0x0.7/2.0x0.9/2.5x1.5 m), unterscheiden sich aber im Rückbrandsicherungs-Regime (Schnitzel 3 Fallgruppen RHE/RSE+TÜB/RSE+SLE+TÜB, Pellets 5 feiner gestaffelte Fallgruppen wegen zusätzlicher pneumatischer Förderoptionen); Pellets zusätzlich mit pelletsspezifischer CO-Belüftungspflicht + Prallschutzmatten-Pflicht bei Befüllung sowie Kennwert 1 m³ ≈ 650 kg. Alle vier ehrlich als niedrige bis mittlere JANS-Priorität eingeordnet (primär Wohn-/Landwirtschaftsbauten-Relevanz, kaum Healthcare-/Grossprojekt-Bezug) → NEU §5ai-§5al [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B36-B39.
- [x] **C32 (B31) (Run 41, 2026-07-14)** Register-Korrektur zu C31/Run 39: die dort als «unbenannt/nie katalogisiert» geführte BSR 14-15 «Verwendung von Baustoffen» war eine Fehlidentifikation — `Baustoff & Bauteile.pdf` ist tatsächlich BSR 13-15 (bereits dokumentiert), die echte BSR-14-15-Datei ist `BSPUB-1394520214-77.pdf`. Eigenständig volltext-gelesen (Ziff. 1-7 + Anhang-Stichprobe) und gegen das bereits vorhandene, längst `established` Normen-KB-Destillat `wissen/normen/destillate/vkf-brl-verwendung-baustoffe.md` (seit 2026-07-12) geprüft — konsistent, keine Abweichung. Datenstand-Delta entdeckt (PL-03-Exemplar 01.01.2017 statt 2015 in der Normen-KB-Frontmatter, Kernzahlen bleiben gültig). Neuer Healthcare-Fund mit Fundstelle: Fussnote [6] Ziff. 4.2 — RF1-Pflicht Innenwände/Decken/Stützen in Beherbergungsbetrieben [a] ohne Erleichterung. → NEU §5ad [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B31.
- [x] **C31 (B30) (Run 39, 2026-07-14)** BSV-2026-Refresh + Ordner-Restabgleich `02 Brandschutzrichtlinien 2015-17-22/`: BSV-2026-Terminplan unverändert (politische Vernehmlassung 08/2026, Inkrafttreten Herbst 2027, Marschhalt weiter in Kraft), neu belegt ca. 11'000 Rückmeldungen aus der technischen Vernehmlassung. Drei bisher nie ausgewertete Dateien identifiziert und gelesen: VKF-Vernehmlassungsbericht 2013 (Genese BSV 2015, inkl. bisher unbekannter Kindergarten-/Altersheim-Ausnahme von der 600-m²-Bagatellschwelle), AFC-Basel-Volltext-Delta-Dokumentation Teilrevision 2017 (bestätigt bestehenden KB-Stand: keine Änderung der Kernzahlen, nur redaktionelle Präzisierung), SZS steeldoc "Brandschutz im Stahlbau" (irreführend benannt als "SService...", neue Stahlbau-Fachquelle). Zusätzlich Register-Lücke geschlossen: BSR 14-15 "Verwendung von Baustoffen" lag unbenannt vor und war nie katalogisiert. **Korrektur Run 41 (C32): diese Identifikation war fehlerhaft** — siehe C32. Bestätigte Nicht-Funde: zwei leere Ordner (09_Brandschutzvorschriften, Produkte), 16-15-Basisfassung 2015 ohne Delta zur bereits genutzten rev2016-Fassung. → NEU §5ac [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B30.
- [x] **Carried forward (Wissens-Chef Run 3, 2026-07-13) — ERLEDIGT Run 37, 2026-07-14:**
  Doppelspur-Flag in [[brandschutz-pl03-wegweiser]] behoben — §5o-§5u (Run 34) und §5v-§5y
  (Run 36) auf Destillat-Verweis gekürzt (`wissen/normen/destillate/vkf-brl-*`), Volltext-Ziffern
  nur noch dort, im Wegweiser JANS-Anwendungsnotiz + 1-2 verifizierte Kernzahlen mit Fundstelle;
  Ausnahme §5s (Nachweisverfahren BSR 27-15): die Rauchgas-Kernzahlen (raucharme Schicht 2.5 m
  etc.) waren im Destillat bewusst NICHT übernommen (Urheberrechts-Vorbehalt) — direkt gegen S. 10
  des Originals nachverifiziert und bestätigt, deshalb im Wegweiser belassen. Ausgaben-Delta 2015
  vs. Rev. 2022 bei [[energie-pv-brandschutz]] bestätigt: die Swissolar-STP-Quelle selbst belegt
  (S. 3) die VKF-Merkblatt-Aktualisierung per 01.01.2022; das im Hub abgelegte VKF-PDF trägt aber
  weiterhin nur den Ausgabestempel 2015 — die eigenständige 2022er-Merkblatt-PDF liegt NICHT
  separat vor (offener Punkt: Original beschaffen für Re-Destillat). Details siehe
  `training/curriculum.md` B29.
- [x] **C30 (B29) (Run 37, 2026-07-14)** Rest-Backlog aus C29 (Baustoff&Bauteile, Gefährliche
  Stoffe, DIN EN 12101-2, Brandmauern 100-15) abgearbeitet + Doppelspur-Fix: **BSR 13-15
  Baustoffe/Bauteile** JANS-Anwendungsnotiz ergänzt in §4 (RF-Klasse↔Leistungserklärung-Brücke,
  Bestand-Übersetzung F30/F60→EI über BSR-Nr. 201-238), **BSR 26-15 Gefährliche Stoffe**
  niedrige Priorität bestätigt (Ausnahme: Diesel/Heizoel-Notstromaggregate Spital/Pflegeheim
  können ab Lagermenge unter die Richtlinie fallen) → NEU §5z, **DIN EN 12101-2** (Produktnorm
  NRWG-Auslösevorrichtungen, ergänzt BSR 21-15/§5l um die Komponenten-/Leistungserklaerungs-Ebene)
  → NEU §5aa, **100-15 Brandmauern**: beide Datei-Kopien waren 0-Byte, jetzt synchronisiert und
  lesbar (analog Lignum-Erdbeben-Fall) — Destillat bereits vollständig vorhanden
  (`vkf-brl-100-15-brandmauern.md`), Kernzahlen REI 180/90/60 + 1.0 m/0.3 m-Regel (deckt sich mit
  [[energie-pv-brandschutz]]) → NEU §5ab. Details siehe `training/curriculum.md` B29.
- [x] **C29 (B27) (Run 34, 2026-07-13)** Acht bisher nie ausgewertete VKF-Einzelrichtlinien im
  >20-Titel-Ordner `02 Brandschutzrichtlinien 2015-17-22/` gelesen (Volltext): **BSR 20-15
  Brandmeldeanlagen** (Beherbergung [a] IMMER Vollüberwachung, keine Schwelle; [b]/[c] erst ab
  2 Geschossen/>50 Pers. oder 3 Geschossen/>30 Pers.), **BSR 19-15 Sprinkleranlagen**
  (Verkaufsgeschäfte >2'400 m², Parkhaus-Schwellen 4'800/2'400/9'600 m², Generalüberholung
  20 J. vs. BMA-Beurteilung 15 J.), **BSR 18-15 Löscheinrichtungen** (HFL 1/600 m², WLP 40 m
  Gehweglinie, kein WLP in Sicherheitstreppenhaus), **BSR 23-15 Beförderungsanlagen**
  (Feuerwehraufzug 1.1×2.1 m/1'000 kg/tragbahrentauglich, RDA-Druckbelüftung als von RWA zu
  unterscheidendes System), **BSR 17-15 Kennzeichnung von Fluchtwegen** (Sicherheitsbeleuchtung
  15 Sek./30 Min./1 Lux, höchste Anforderungsstufe bei Beherbergung), **BSR 27-15
  Nachweisverfahren im Brandschutz** (Ingenieurmethoden/Schutzzielnachweis-Prozess als Alternative
  zum präskriptiven Standard, raucharme Schicht ≥2.5 m), **BSR 10-15 Begriffe und Definitionen**
  (amtliches VKF-Glossar — Beherbergung [a]/[b]/[c] amtliche 20-Personen-Schwelle bestätigt,
  Fluchtweg≠Rettungsweg-Abgrenzung, Delta-Check IVHB-Geschossbegriffe: Gesamthöhe = IVHB-Verweis
  kein Delta, Geschosszahl = eigenständige VKF-Definition Delta ja), **BSR 16-15 Flucht- und
  Rettungswege Volltext** (bestätigt bisherigen Foto-Auszug wortgleich, plus neue Kernzahlen
  Fluchtweglängen 35/50 m, Ausgänge-Staffelung nach Personenzahl, Breitenformel 0.6 m/100 bzw.
  60 Pers.) → alle NEU §5o-§5u [[brandschutz-pl03-wegweiser]]; §1-Register mit vollständiger
  Titelliste + Rest-Backlog (niedrige Priorität: Baustoff&Bauteile, Blitzschutz, DIN EN 12101-2,
  Gefährliche Stoffe, Lufttechnische/Waermetechnische Anlage) ergänzt. Details siehe
  `training/curriculum.md` B27.
- [x] **C27–C28 (B25-B26) (Run 30, 2026-07-13)** B25-Verifikations-Retry gelang + eine neue
  Fundstelle: **Lignum «Erdbebengerechte mehrgeschossige Holzbauten»** (2010) — die seit Run 24
  wiederholt als OneDrive-Cloud-Platzhalter unlesbare Datei liess sich in diesem Lauf vollständig
  lesen (reines Sync-Timing, kein Recherche-Problem); Inhalt: SIA 260-267/261/265,
  Ersatzkraft-/Antwortspektrenverfahren, Grundschwingzeit-Schätzformel T1=2√u (261.39), duktiles
  Tragwerksverhalten via Verbindungen Beplankung↔Rippen, Bestand → Merkblatt SIA 2018 → NEU §5m
  [[brandschutz-pl03-wegweiser]]. **Lignatec «Bauten in Holz — Brandschutz-Anforderungen»**
  (kein Delta zu B13/§4b, sondern eigenständige holzbau-spezifische Fassung der Feuerwiderstands-
  Tabelle nach Geschosszahl×Nutzung — Healthcare-Kernbefund: Sprinkler reduziert bei Hotels [b]
  die Tragwerksanforderung, bei Krankenhäusern/Pflegeheimen [a] NICHT) → NEU §5n
  [[brandschutz-pl03-wegweiser]]. Details siehe `training/curriculum.md` B25-B26.
- [x] **C20–C26 (B19-B25) (Run 28, 2026-07-13)** Verifikations-Nachtrag + zwei neue PL-03-Fundstellen:
  **§4c-Korrektur abgeschlossen** — die Referenzen "§5g"/"§5l" (bereits im §4c-Korrekturblock eines
  vorherigen unterbrochenen Laufs angelegt) wurden mit vollständigem, gegen die Originalquelle
  verifiziertem Inhalt gefüllt: **§5g «Parking»-Begriff** (>600 m² Abgrenzung, Schleusenpflicht ab
  1'200 m² Brandabschnittsfläche — bisher nicht dokumentierte Kernzahl) und **§5l BSR 21-15 RWA-
  Grundrichtlinie** (vollständige Parking-Tabelle 600/3'600/2'400/4'800 m², LRWA/MRWA/NRWA) →
  [[brandschutz-pl03-wegweiser]]. **BS-Symbole 01.01.2017** (kanonischer Vollkatalog, Delta zum
  Musterplansatz §5b: RDA/SLA/Poller/PV-Symbole) → Ergänzung §5b. Drei bestätigte
  Nicht-Funde (ehrlich dokumentiert statt verschwiegen): **08 QS-Docx** (private ChatGPT-Notiz,
  kein neuer Inhalt), **Solaranlagen-Ordner** (identische Datei wie [[energie-pv-brandschutz]],
  Cross-Reference-Duplikat), **07 Blaues Buch** (nur die bereits in §5e ausgewerteten 2 Screenshots
  vorhanden, kein weiteres Material). Ein Fund technisch nicht abschliessbar: **Lignum Erdbeben**
  (`Erdbebengerechte_Holzbauten_d.pdf`) ist ein OneDrive-Cloud-Platzhalter, der wiederholt mit
  «Resource deadlock avoided» nicht lesbar war (kein anderer Prozess hält die Datei, `lsof` leer) —
  offener technischer Punkt für den nächsten Lauf. Details siehe `training/curriculum.md`
  B19-B25.
- [x] **C15–C19 (B14-B18)** (Run 26, 2026-07-13) Bisher unerschlossene PL-03-Ordner ausgewertet:
  **Musterplansatz bsvonline.ch** (Legende/Symbolik + Objektdatenblatt Feuerwehrpläne → NEU
  §5b), **Feuerwehr-Bewegungs-/Stellflaechen** (6×11 m, Schlauchlänge 60 m ⚠ Quelle nur Foto,
  Verifikation offen → NEU §5c), **Fluchtwegkonzept Beherbergung [a]** (BSR 16-15 Ziff. 3.6.1,
  mind. 2 unabhängige Brandabschnitte je Bettengeschoss, real KISPI-Ordner → NEU §5d),
  **Blaues Buch Kap. 18** (§ 305 PBG geht vor BSN wo strenger, nur 2/>10 Seiten gelesen → NEU
  §5e), **VKF-Verzeichnis 40-15** (Konkordanz-Tabelle, niedrige Priorität bestätigt → NEU §5f)
  → alle [[brandschutz-pl03-wegweiser]]. Ordner `11 Projekte/` geprüft: leer. Details siehe
  `training/curriculum.md` B14-B18.
- [x] **C11 (B10)** Atrien/Innenhoefe — ab wann gilt ein Raum als Atrium, welche Massnahmen? ✓
  **2026-07-13 (Run 24):** VKF-Erläuterung 101-15de vollständig — Definition (>3'600 m²/
  >3 Geschosse/>11 m), 3 Typen A/B/C, Innenhof-Sonderregel <5 m Breite → NEU
  [[brandschutz-pl03-wegweiser]] §4d.
- [x] **C12 (B11)** Doppelfassaden — verschärfte Anforderungen bei schlafenden Personen? ✓
  **2026-07-13 (Run 24):** VKF-Erläuterung 102-15de — Typ A/B, **JANS-Healthcare-Kernbefund**
  Typ B zieht BMA-Vollüberwachung + Verbot öffenbarer Fenster nach sich → NEU
  [[brandschutz-pl03-wegweiser]] §4e.
- [x] **C13 (B12)** Kleine Beherbergungsbetriebe/Berghuetten < 20 Personen — gilt die strengere
  Beherbergungs-QSS-Kategorie? ✓ **2026-07-13 (Run 24):** 20-Personen-Schwelle belegt, realer
  Benchmark Biwak Grassen (QSS 2, R30, BMA-Erleichterung) → NEU [[brandschutz-pl03-wegweiser]] §4f.
- [x] **C14 (B13)** Holzbau-Brandschutz — Einordnung in die VKF-Feuerwiderstandssystematik
  (R/EI/REI, RF1)? ✓ **2026-07-13 (Run 24):** Lignum-Dokumentation Themenblock 4 — RF1 begrenzt
  auf REI 30/60/90, Kapselungsregel K30-RF1, Abgleich zu §4b R60/R90-Schwellen → NEU
  [[brandschutz-pl03-wegweiser]] §5.
- [x] **C10 (B9)** Parkhäuser/Einstellraeume als eigene Brandschutz-Bauaufgabe (Tragwerk/
  Brandabschnitte/Fluchtwege/RWA/Sprinkler) — reale JANS-Frage bei Healthcare-/Wohnbauten mit
  Tiefgarage. ✓ **2026-07-13 (Run 21):** VKF-Arbeitshilfe 1002-03d ausgewertet (⚠ Datenstand
  06.08.2003, vor Anwendung gegen bsvonline.ch prüfen) — Tragwerk UG mind. R 60 (nbb) bzw. R 30
  bei eingeschossig/unterirdisch/nicht überbaut; Brandabschnittsflächen 4'000/2'000/8'000 m²
  (mit Sprinkler verdoppelbar); **Fluchtweg-Kernzahlen: 1 Treppenanlage nur bis 600 m² BGF, 2+
  Treppenanlagen bis 900 m² je, Gesamt-Fluchtweglänge 35/50 m**; RWA-Verzichtsschwellen 600/1'200 m²
  (mit Sprinkler verdoppelt); Sprinklerpflicht ab 4'000/2'000/8'000 m² bzw. ab 50 Kompaktparkplätzen.
  **JANS-Praxisrelevanz:** grosse Healthcare-Untergeschosse brauchen früh im Vorprojekt zwei
  räumlich getrennte vertikale Fluchtwege → [[brandschutz-pl03-wegweiser]] §4c. Querverbindung zur
  Erschliessungsgeometrie (VSS-Normen) → [[recht-norm-tiefgarage-erschliessung]].
- [x] **C7 (B6)** Brandschutzabstände zwischen Gebäuden als belegte Kernzahlen. ✓ **2026-07-13
  (Run 19):** VKF-BSR 15-15de Ziff. 2.1-2.4 — Regel-Abstände 5/7.5/10 m + reduzierte 4/5/6 m
  (RF1/einseitig/beidseitig brennbar), Sonderfälle Nebenbauten (4 m, 150 m² Areal-Befreiung),
  Fahrnisbauten ≤ 150 m² befreit, Büro/Gewerbe/Industrie Areal-Überbauung befreit bis 3'600 m²
  → NEU [[brandschutz-pl03-wegweiser]] §4b. Real angewandt: Benchmark **Regensdorf** (EFP AG
  Brandschutzfachstelle-Anfrage 16.02.2024 + JANS-Antwort 17.02.2024, Zitat Ziff. 2.1/2.2 wortgleich).
- [x] **C8 (B7)** Tragwerk-/Brandabschnitts-Feuerwiderstand nach Gebäudehöhenkategorie × Nutzung
  (Tabellen 1-3, Ziff. 3.7.1). ✓ **2026-07-13 (Run 19):** R30/60/90/120-Matrix (geringe/mittlere
  Höhe/Hochhaus × Wohnen/Buero/Industrie/Beherbergung) belegt, Konzept baulich vs. Löschanlage.
  **JANS-Healthcare-Kernbefund:** Beherbergung [a] (Krankenhaus/Alters-Pflegeheim) durchgängig
  **R 60 auch bei geringer Höhe** (einzige Kategorie ohne R30-Stufe) → Tragwerk bei Healthcare
  eine Stufe strenger als bei Wohnen/Buero gleicher Höhe; Sprinkler-Vollschutz senkt auf R30/60.
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
  (Blitzschutz 22-15, Brandverhütung/organisatorisch 12-15, Wärmetechnische 24-15, Lufttechnische
  25-15) → NEU §5v-§5y [[brandschutz-pl03-wegweiser]]: **§5v** Sicherheitsbeauftragter-Pflicht +
  Sprachalarmierung ab 50/300 Betten + Dekorations-RF + Gerüstbekleidung ≥0.8 m; **§5w**
  Blitzschutzpflicht Spital/Pflegeheim/Hochhaus + Blitzschutzklasse III/II (SEV 4022); **§5x**
  Heizraum EI 30/60 ab 70 kW + Sicherheitsabstände 0.1/0.2/0.4 m + gewerbliche Küche; **§5y** BSK
  EI 30-S + Verzichts-Schwellen ≤1'200/600 m² + Küchenabluft-Staffel EI 60 + ≥85 °C. **Rest-Backlog
  niedrige Priorität (offen):** Baustoff&Bauteile 13-15 (teils via Merkblatt §2), Gefährliche
  Stoffe 26-15, DIN EN 12101-2, Brandmauern 100-15 (Datei 0-Byte/nicht synchronisiert).

- [x] **C1** Klären, ob ein dünner Verweis-Artikel auf `brandschutz` reicht oder PL-03-
  Spezifika (Brandschutznachweis-Vorlagen) hier referenziert werden sollen. ✓ **2026-06-22 (Run 8):**
  Entscheid = **schlanker Wegweiser** [[brandschutz-pl03-wegweiser]]: Planungsgrundlagen-Ebene
  (VKF-Struktur, Nachweis-Prozess, QSS) hier, **Fach-/Detailarbeit (EI/RF/Brandabschnitte/DoP)
  vollständig im Skill `brandschutz`** — kein Doppel. Muster: [[energie-pv-brandschutz]].
- [x] **C3 (B2)** Brandschutznachweis-Vorlagen brandschutznachweis.ch — wann braucht es welche? ✓
  2026-06-22 (Run 8): «Anleitung zum Brandschutznachweis» V.3 (A–F) belegt — Inhalt Textbereich D
  + objektbezogen E + Pläne F (SIA 400, 1:100/1:200, A3, Symbole VKF-MB 2003-15); EFH/Nebenbau/
  geringe Abmessung nur Pläne auf Verlangen; Umbau/Nutzungsaenderung = Mängel aufzeigen + auf
  aktuellen Stand; Vorlage MFH-5g-RF1 V.3 → [[brandschutz-pl03-wegweiser]] §2.
- [x] **C4 (B3)** VKF-Struktur 2015 (Norm/Richtlinien/Verzeichnisse/Erlaeuterungen/Arbeitshilfen)
  als Wegweiser. ✓ 2026-06-22 (Run 8): 5-Teil-Struktur ↔ PL-03-Ordner-Mapping + Rev. 2017/2022 +
  Online (bsvonline.ch/brandschutznachweis.ch); ⚠ BSV 2026 in Vernehmlassung (Inkraft-Antrag
  03/2027, bis dahin BSV 2015 gültig) → [[brandschutz-pl03-wegweiser]] §1.
- [x] **C5 (QSS)** Qualitätssicherungsstufen 1–4 als Planungsgrundlage. ✓ 2026-06-22 (Run 8):
  BSR 11-15 Tab. 3.3.1/3.4.1 belegt; **Healthcare = Beherbergung [a] → QSS 2–3** (Brandschutz-
  experte VKF, BKP 298.5); Umbau >300 Pers. = QSS 2/3/3 → [[brandschutz-pl03-wegweiser]] §3.
- [~] **C6 (B5)** BSV 2026 bei Publikation der definitiven Fassung nachziehen — Struktur/QSS-
  Änderungen prüfen. **Stand-Update 2026-06-30 (Run 12):** Projekt **doppelt gebremst → 2027**:
  (1) **Konsolidierungsphase** (offiz. bsvonline.ch: pol. Vernehmlassung 08–11/2026, IOTH-Genehmigung
  03/2027, Inkrafttreten 2027 statt 2026), (2) **politischer Marschhalt bei den Liberalisierungen**
  nach Brand **Crans-Montana** (VKG-MM 06.01.2026) → Entwurf wird risikoorientiert neu aufgebaut,
  neuer Terminplan erst nach Brand-Untersuchung. **Bis dahin BSV 2015/17/22, keine antizipierten
  Erleichterungen einplanen** → [[brandschutz-pl03-wegweiser]] §1. **Offen:** definitive Fassung +
  neuer Terminplan bei Publikation (Check 08/2026 / nach Untersuchungsbericht).
  **2026-07-14 Run 48:** Struktur-/QSS-Aenderungen jetzt bereits aus dem Konzeptstand 2022 belegt
  (nicht erst bei Publikation der definitiven Fassung) — 1 statt 2 Erlassstufen, max. 200 S. BSV +
  separate BSV-Erläuterung, 3 statt 4 QSS (80/15/5-Regel), operationale "rote Linie" für
  Bestandesbauten-Nachrüstung geplant → [[brandschutz-pl03-wegweiser]] §1a. Weiterhin offen bleibt
  nur der finale, Marschhalt-bereinigte Verordnungstext.
- [x] **C2 / E6** Brandschutz/Naturgefahren **Solaranlagen** (Swissolar-STP zu VKF-BSM 2001-15).
  ✓ 2026-06-18: eigener Artikel `[[energie-pv-brandschutz]]` — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), Brandmauer-Übergang (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  RWA-Abstand (Lichtraumprofil), Feuerwehr-Kennzeichnung + Einsatzplan **≥30 kW**, Naturgefahren
  SIA 261/261-1, DC bleibt unter Spannung. Solar-spezifisch, kein Doppel zu Skill `brandschutz`.

## D — Energie
- [x] **D14 — vier Artikel zitierten eine erloschene Kurz-URL (Run 93, 2026-07-30, behoben)**
  Die kantonale Energienachweis-Seite wurde in dieser KB als **`zh.ch/energienachweise`** zitiert,
  in [[energie-even-plattform-bedienung]], [[energie-energienachweis-zh-formulare]],
  [[energie-private-kontrolle-zh]] und [[energie-uebersicht]] — je mit Abrufdatum
  (12.06./04.07.2026), also als belegte Fundstelle. **Gemessen 30.07.2026: HTTP 404**, mit und ohne
  `www`. Es war nie eine amtliche Shortlink-Weiche, sondern eine im Text verkürzte Notation, die
  sich nicht öffnen lässt. Ersetzt durch die nachgemessene Vollform
  `www.zh.ch/de/planen-bauen/bauvorschriften/bauvorschriften-gebaeude-energie/energienachweise.html`
  (HTTP 200, 93 KB). **Bemerkenswert:** [[energie-private-kontrolle-zh]] trug die korrekte Vollform
  in §-Text (Zeile 113) bereits, während die eigene Frontmatter-Quellenzeile die tote Kurzform
  führte — die KB kannte die richtige Adresse also und hat sie nicht propagiert. **Lehre,
  verallgemeinerbar:** eine Fundstelle wird **in der Form zitiert, in der sie aufrufbar ist**. Eine
  gekürzte URL ist keine Quelle, sondern eine Merkhilfe; sie entwertet den Beleg in genau dem
  Moment, in dem ihn jemand (Behörde, Bauherr, spätere Session) nachprüfen will. Live geprüft und
  intakt: `energievollzug.ch`, `energie-zentralschweiz.ch/vollzug/even`, `endk.ch`.
- [x] **D15 — Identifikator-Verwechslung EGID/EGRID (Run 93, 2026-07-30, behoben)** In
  [[energie-energienachweis-zh-formulare]] §EN-104 stand «**EGID** CH527708492462» für den realen
  Fall Einsiedeln Parz. 3301. `CH…` + 12 Zeichen ist ein **EGRID** (eidg. Grundstückidentifikator);
  ein EGID ist die 9-stellige eidg. Gebäudenummer (→ [[kartenportale-gwr-bund]]). Korrigiert.
  Bestandssweep über das ganze Wiki in beiden Richtungen (`EGID CH…` und `EGRID <9 Ziffern>`):
  **keine weiteren Fälle** — der Fehler war ein Einzelfall, nicht ein Muster.
- [x] **E45 (Run 65, 2026-07-25, Token-Vollgas)** Korrektur zu E44: `_Literatur/
  Final_Dossier_Solararchitekur_tiefaufgeloest.pdf` (Tippfehler im Dateinamen liess es beim
  Run-63-Scout-Grep durchrutschen) enthält das vollständige TEC21-Dossier «Solares Bauen» —
  acht weitere Referenzbauten (Swiss Tech Convention Center EPFL, deltaZero Lugano, Sihlweid
  Zürich, Romanshorn TG, CeRN Bursins, Kunstdepot Freiburg, 3M Pioltello, Flims GR) als
  Design-Referenzkatalog eingearbeitet → NEU §5b [[energie-pv-eignung-typenwahl]].
- [x] **E44 (Run 63, 2026-07-25, Token-Vollgas Scout-Fund)** Letzte unausgewertete Datei im Ordner
  `_Heizwaermebedarf/` (`_Wärmebedarf Warmwasser SIA 380_1.pdf`) gelesen — bestätigter Nicht-Fund
  (byte-identische Tab.-24/25-Doppelseite, bereits in
  [[energie-heizwaermebedarf-waermeerzeugerleistung]] erfasst). Domäne Energie nach vollständigem Scout-Ordnerabgleich
  ohne weitere unerschlossene PL-04-Datei; einziger offener Punkt bleibt D9 (realer MFH-/ZEV-Fall,
  wartet auf reales Projekt).
- [x] **E41 (Run 59, 2026-07-25)** Delta-Check `pv sol premium`/`solarapp.ch`/
  `energieschweiz.ch Diemtigen` gegen bereits dokumentierte E34/E37/E38 (Run 40/42) — KEIN Delta
  bei Kernzahlen, aber Zusatzfund Richtpreis-Stückliste MFH Basel (Swiss Premium M340/Growatt/
  LEVEL, CHF 86'815 Material) → [[energie-pv-eignung-typenwahl]] §3b. **E5/E9-Refresh:**
  MuKEn-2025-ZH-Überführung per WebSearch erneut unverändert bestätigt.
- [x] **D11 (Run 53, 2026-07-19, Refresh-Verifikationen, kein PL-04-Read möglich —
  OneDrive-Mount heute systemisch blockiert, s. B-Sektion R52-R56)** Drei WebSearch/WebFetch-
  Refresh-Checks: (1) **Pronovo-Förderstruktur** erneut gegen die Primärquelle geprüft —
  unverändert seit 01.04.2025 bestätigt; ein WebSearch-Snippet behauptete zusätzlich einen
  "Winterstrombonus ab 01.01.2026", der sich auf der Pronovo-Primärseite **nicht bestätigen**
  liess und deshalb NICHT übernommen wurde → [[energie-betriebsenergie-pv-wirtschaftlichkeit]].
  (2) **MuKEn-2025-ZH-Überführung** erneut unverändert (weiterhin kein ZH-Termin) →
  [[energie-energienachweis-zh-formulare]]. (3) **Solarpflicht-Gegenprobe:** korrigiert einen
  ungenauen Web-Treffer ("§ 10b EnerG") gegen den amtlichen Volltext auf **§ 10c EnerG** — die KB
  war bereits korrekt, kein inhaltlicher Fehler in dieser KB, nur Bestätigung. **D9 (ZEV-
  Betriebskostenfall) weiterhin offen** — unverändert, wartet auf reales Projekt.
- [x] **D10 / E39-Rest (Run 50, 2026-07-16)** Ist das GreenPV-Forschungsprojekt (HSLU, bisher nur
  als Workshop-2-Zwischenstand vom 15.06.2022 bekannt, Run 49) inzwischen abgeschlossen, und
  liefert ein Schlussbericht mehr als die Workshop-Folien? ✓ **JA** — WebSearch fand die
  öffentliche Schlussbroschüre (HSLU IGE, 27.08.2024, 92 Druckseiten), volltext ausgewertet:
  Take-Home Messages mit prozentgenauen Kennzahlen (PV-Fassade Süd unverschattet −20 %
  Jahresertrag / +43 % Winterstrom ggü. Dach; Kombination PV+Begrünung senkt THGE >25 % bei
  nur ~9 % LCC-Mehraufwand), 8 Empfehlungen zur Systemwahl, vollständiger Systemvergleich
  Dach/Fassade/Aussenraum, VKF-Brandschutz-Staffel nach Gebäudehöhe (Hochhaus-Lücke: keine
  Standard-PV-Fassaden-Kategorie), zwei reale Fallbeispiele mit Kostenkennwerten
  (Holenackerstrasse 65 Bern CHF 1'400/m² PV-Fassade; Sky-Frame Frauenfeld CHF 450'000/1'100 m²
  Begrünung) sowie SIA-112-Planungs-Checkliste → §6b NEU [[energie-pv-eignung-typenwahl]],
  Status established. Details `training/curriculum.md` E39-Rest.
- [x] **D24 (Run 42, 2026-07-14, E36-E38, Token-Vollgas)** Ordner-Abgleich PL-04 liefert drei
  weitere Funde. **E36 — neue Domäne:** Checkliste Gebäudeschadstoffe (AWEL 02.2023) —
  Vier-Fälle-Weiche Asbest/PCB/CP nach Baujahr/Bausumme/Rueckbauvolumen, untersuchungspflichtige
  Spezialobjekte inkl. **Spitäler** → NEU [[energie-baustoffe-schadstoffe-rueckbau]]. **E37 —
  Delta:** SolarApp AG als eigenständiges Vorprojekt-Tool eingeordnet, realer Willerzell-Bericht
  liefert zusätzlich die Eigenverbrauchs-/Unabhaengigkeitsseite (53 %) → [[energie-pv-eignung-typenwahl]]
  §2c. **E38 — Delta:** PVSOL premium als TGA-Fachplaner-Tool eingeordnet, realer 491-kWp-Grossanlagenfall
  (Thomas Lueem Partner AG) mit explizitem "kein Planungsdokument"-Vorbehalt → [[energie-pv-eignung-typenwahl]]
  §2c. Details siehe `training/curriculum.md` E36-E38.
- [x] **D23 (Run 40, 2026-07-14, E32-E35, Token-Vollgas Fan-out)** Ordner-Abgleich PL-04 liefert
  vier Neufunde, alle in [[energie-pv-eignung-typenwahl]] eingearbeitet. **E32 —
  Planungsgrenzwerte dachintegriertes Typ-B-System:** Eternit-Sunskin-Planungsdoku, min. 10°/
  max. 60° Dachneigung, Bezugshöhe bis 2000 m ohne Rücksprache, Schneelast-Bemessungswert Ed
  ~4.4-16.2 kN/m² steuert Lattendimensionierung, Hinterlüftung-Mindesthöhe 60 mm → §1c,
  established. **E33 — PV-Eignungs-Methodik uvek-gis/sonnendach.ch:** 5-stufige Eignungsklassen-
  Skala (Gering <800 bis Hervorragend ≥1400 kWh/m²·a), Modulwirkungsgrad-Sprung 17→20 % seit
  09/2022, Performance Ratio 80 % → §2b, established. **E34 — realer installierter System-CHF/
  kWp-Wert (schliesst E11-Lücke teilweise):** EnergieSchweiz-Musterbericht 6.0 kWp = CHF 19'140
  ≈ 3'190 CHF/kWp installiert, Amortisation 24 Jahre; Typ B/C/D weiterhin offen → §3 neue
  Tabellenzeile, established. **E35 — architektonische PV-Integrationsbeispiele:** TEC21/
  TRACÉS-Dossier "SolaRes Bauen" 2012, Leitprinzip Beat Kämpfen (Doppelfunktion jedes
  Bauelements), Projekte Plusenergiehaus Zürich Höngg + Umwelt Arena Spreitenbach → §5,
  emerging (Datenstand 2012). Geprüft/kein Fund: `_Literatur/planer_d.pdf` (inhaltsgleich mit
  bereits ingested minergiewissen-PDF), `prefa.solar/PREFA_Solarfolder` (Dopplung), zwei triviale
  Website-Screenshots (energieheld.ch, sonnenverlauf.de). **GreenPV-Backlog GELÖST (Run 49,
  E39):** `_Literatur/20220606_GreenPV - Workshop 2.pdf` S. 1-29 ausgewertet — belegte
  orientierungsabhängige Fassaden-PV-Kennwerte (Solarstrahlung/Stromertrag/Amortisation
  graue Energie/THG/UBP je Süd/Ost/West/Nord, max. Fassadentemperatur je Orientierung) →
  NEU §6 [[energie-pv-eignung-typenwahl]]. Weiterhin offen: S. 30-46 (qualitative Analyse) +
  `wissen.minergie.ch/pvopti_MFH_Nachweiskurs...xlsb` (nicht textuell auslesbar). Details siehe
  `training/curriculum.md` E32-E35 + E39.
- [x] **D22 (Run 38, 2026-07-14, E5/E9/E31)** Datenstand-Refresh dreier offener Punkte. **MuKEn-
  2025-ZH-Umsetzung (E5/D1):** vertiefter Web-Check (zh.ch Bauvorschriften-Gebäude-Energie,
  zh.ch Langfristige Klimastrategie, hev-zh.ch/muken, energiehub-gebäude.ch, aeesuisse.ch) —
  **unverändert**, weder Vernehmlassung noch Gesetzesentwurf noch Inkrafttretensdatum amtlich
  auffindbar → [[energie-energienachweis-zh-formulare]] §Datenstand. **Graue-Energie-ZH-Grenzwert
  (E9/D8):** ebenfalls unverändert, gekoppelt an obige Überführung; **wichtiger Nebenfund, NICHT
  amtlich verifiziert:** mehrere WebSearch-Zusammenfassungen behaupten unabhängig einen ZH-
  Zielwert **«bis 2027»** für einen eigenen Grauenergie-Grenzwert («Pionierrolle», «normierte
  Standards der Baubranche») — bei Gegenprüfung der fünf Massnahmenblätter GE01-GE05 der
  kantonalen Klimastrategie (zh.ch) enthält **keines** diese Aussage wörtlich; auch die
  Bauvorschriften- und Klimastrategie-Übersichtsseiten bestätigen es nicht. Bewusst **nicht**
  als KB-Fakt übernommen (Rule `identifikatoren-verifizieren`/`wissens-bibliothekar`: Status-
  Hebung nur gegen amtliche Quelle) — offener Rechercheauftrag: prüfen ob ein RRB/Kantonsrats-
  geschäft (kantonsrat.zh.ch) oder AWEL-Faktenblatt diesen Zielwert bestätigt →
  [[energie-uebersicht]] §Graue Energie. **Pronovo-Tarifstruktur KLEIV (E31):** WebSearch-
  Gegenprüfung bestätigt, die FÖRDERSTRUKTUR (nicht die Tageswerte) hat sich seit 01.04.2025
  nicht verändert — keine neuen Bonus-Kategorien/Schwellen → Refresh-Vermerk in
  [[energie-betriebsenergie-pv-wirtschaftlichkeit]] §Offene Punkte.
- [x] **D21 (Run 34, 2026-07-13, E29)** Vier bisher unausgewertete Dateien im Ordner `U Wert
  berechnung/` geprüfte, drei mit echtem Delta: **EN-102-d** (Vollzugshilfe Dez. 2018) — Umbau/
  Umnutzung-Grenzwerte + Wärmebrücken-Typen 1/2/3/5/6 + Kap. 8 Sommerlicher Wärmeschutz (g-Wert/
  SIA 180); **Bauteilkatalog Neubauten** (BFE 2002) — konkrete Schichtaufbau-Bibliothek B1-B21/
  W1-W7i mit U-Wert-Lookup nach Dämmdicke×λ (Konstruktions- statt Grenzwertebene, direkt für
  Vorprojekt-Bauteilaufbau-Vorschläge nutzbar); **CLT-Luftdichtheit/Feuchte** (Ergänzung zu E13)
  — ab 3-Schicht-CLT von sich aus luftdicht (n50-Werte), Leimfugen als feuchtevariable Dampfbremse,
  sd-Wert-Konstruktionsregel (aussen dünner/dichter als innen) → alle NEU §5
  [[energie-heizwaermebedarf-waermeerzeugerleistung]]. **VoHi_EN02** (2013) = überholter
  Vorgänger von EN-102-d, kein Delta. Zusätzlich MuKEn-2025-ZH-Refresh per WebSearch: unverändert
  bestätigt (kein neuer ZH-Termin) → [[energie-energienachweis-zh-formulare]] §Datenstand.
  Details siehe `training/curriculum.md` E29.
- [x] **D19-D20 (Run 31, 2026-07-13, E27-E28)** Zwei bisher unerschlossene PL-04-Unterordner unter
  `Solaranlage/` ausgewertet (nach vollständigem Ordnerabgleich, Domäne ansonsten weitgehend
  ausgeschöpft — E1-E26 bereits belegt): **Dachausstiege** (Wartungszugang Flachdach-PV, 6
  Referenzfotos — Fallschutz-Geländer, seitliche Positionierung neben dem PV-Feld, kein Norm-
  Beleg → NEU §4 [[energie-pv-eignung-typenwahl]], speculative), **megasol.ch Modul-Datenblatt**
  (bifaziales Glas-Glas-Modul M385-HC120-b, 211 Wp/m² + Rückseiten-Mehrertrag +5...+35 % je nach
  Untergrund-Albedo — Delta zur bestehenden Wp/m²-Tabelle → [[energie-pv-eignung-typenwahl]] §1b,
  established). Weitere Solaranlage-Unterordner (energieheld.ch, sonnenverlauf.de) gesichtet —
  Einzelscreenshots ohne neuen Fachinhalt, kein Delta. Details siehe `training/curriculum.md`
  E27-E28.
- [x] **D10-D18 (Run 29, 2026-07-13, E18-E26)** Zwei bisher nie erschlossene PL-04-Unterordner
  ausgewertet + zwei Refresh-Checks: **Minergie-Nachweiskurs-Unterlagen** (`wissen.minergie.ch/
  Kursunterlagen_230926/`) — die reale Fallstudie "Maison Climat" (MFH Seelandweg 15 Biel)
  liefert konkrete Nachweis-Kennzahlen (Heizwärmebedarf 96.8→86.9 MJ/m² bzw. mit WRG-Lüftung
  78.9→62 MJ/m², SIA-2060-Elektromobilität 60%/20%-Ausbaustufen, PV 56.25+18.28 kWp,
  Monitoring-Pflicht ab 1'000 m²) → [[energie-minergie-referenzprojekt-maison-climat]] von
  `emerging` auf `established` gehoben; Kursprofil bestätigt Kursattest zählt zur
  Minergie-Fachpartnerschaft-Voraussetzung → [[energie-private-kontrolle-zh]] §5.
  **`_Heizwaermebedarf/`-Ordner** (nie in curriculum.md erfasster PL-04-Top-Level-Ordner) —
  vollständiges SIA-380/1-Berechnungsverfahren (11-Schritt-Formelkette + Beispielrechnung) +
  SIA-380/1-Anhang-A-Standardnutzungswerte (inkl. Kategorie Spitäler für Healthcare) +
  SIA-384/1/384.201-Waermeerzeugerleistung-Dimensionierung (Formel + Holz/Pellet/Oel/Gas-
  Berechnungsbeispiele + Kontrollwerte spez. Heizleistung) → NEU [[energie-heizwaermebedarf-waermeerzeugerleistung]].
  **EN-101c Kt. Schwyz** (Willerzell-Fall) — SZ-Pendant zum EN-ZH-System (PV-Ersatzabgabe-
  Befreiung Globalstrahlung <1'120 kWh/m²a via map.geo.sz.ch, VHKA-Pflicht KEnV §26 SZ) →
  Ergänzung [[energie-energienachweis-zh-formulare]]. **Refresh-Checks:** E17-⚠ aufgelöst
  (Kurs 2026 weiterhin als "Workshop Minergie-Nachweisformular" angeboten); MuKEn-2025-ZH-
  Umsetzung unverändert ausstehend, NEU-Fund EVEN-Rollout Zentralschweiz erst Anfang 2026
  (gestaffelt zu ZH). Details siehe `training/curriculum.md` E18-E26.
- [x] **D5-D7 (Run 27, 2026-07-13)** Drei bisher unerschlossene PL-04-Unterordner ausgewertet:
  **Betriebsenergie-Praxisfall** (`_Betriebsenergie/` 15 Screenshots — reale "Facts & Figures"
  Sanierung EFH 1957/120 m², PV 14 kWp + Batterie + WP-Boiler + Dachdämmung, Gasbezug
  28'613→19'073 kWh, Amortisation ≈ 7 Jahre → NEU Abschnitt "Betriebsenergie" in
  [[energie-uebersicht]], emerging), **Minergie-Referenzprojekt «Maison Climat»** (reales
  Minergie-A-Projekt Seelandweg Biel, 20 Wohnungen Holzbau-Ersatzneubau, PV-integriert +
  Erdwärmesonde → NEU [[energie-minergie-referenzprojekt-maison-climat]], emerging),
  **forumenergie.ch** (aktiver Weiterbildungsanbieter, JANS-eigener Kursbeleg 26.09.2023 →
  Weiterbildungs-Hinweis in [[energie-private-kontrolle-zh]] §5, ⚠ Datenstand 2023). pronovo.ch-
  Ordner bestätigt leer. Details siehe `training/curriculum.md` E15-E17.
- [~] **D1** Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datum nachziehen. ✓ Stand gesetzt
  2026-06-06 (EnerG seit 1.9.2022/MuKEn 2014; MuKEn 2025 EnDK 08/2025, ZH-Umsetzung offen) —
  bei konkreter ZH-Fassung weiter verifizieren. **Update 2026-06-12:** Vollzug seit 01.01.2026
  über Plattform **EVEN** (`energievollzug.ch`), PDF EN-101…EN-141 entfallen → siehe D4.
  **Update 2026-06-18:** MuKEn 2025 Inhalte belegt (graue Energie / rein erneuerbare Wärme /
  mehr Eigenstrom; Umsetzung 2025–2030), **ZH-Überführung weiterhin ausstehend** (endk.ch /
  energiehub-gebäude.ch) → bei ZH-Gesetzespublikation in `[[recht-norm-quellenlandkarte]]`
  + Energie-Artikel nachziehen.
- [x] **D2** U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle. ✓ 2026-06-06 — belegt in
  KB `wissen/energie/` (`[[u-werte-grenzwerte-ch]]`); planungsgrundlagen verlinkt statt dupliziert.
- [x] **D3** Prüfen: eigenes Skill `energie-nachweis` rechtfertigt sich? ✓ **2026-07-13
  (Run 23) ENTSCHIEDEN: NEIN.** Die Domäne ist bereits vollständig im Wiki + über den Agent
  `energie-berater` organisiert (EN-Formulare/EVEN/Private Kontrolle/PV/Zusatzformulare je eigener
  Artikel); ein eigenes Skill würde nur Struktur duplizieren, ohne eine neue Fähigkeit (Generator/
  Workflow) zu schaffen → [[energie-uebersicht]] §Offen.
- [x] **D9** Zusatzformulare neben EN-ZH/EVEN (WTA, Formular S Schallschutz Aussenlärm, Gesuch
  Versickerung Regenwasser) — Verfahren, Zuständigkeit, Schwellenwerte? ✓ **2026-07-13 (Run 23):**
  NEU [[energie-baueingabe-zusatzformulare]] — **WTA-Formular** (alle Wärmeerzeuger, 3-stufige
  Verfahrensweiche Melde-/Anzeige-/Ordentliches Verfahren je nach Anlagetyp, Neubau-Kopplung
  **immer EN-103 mit Privater Kontrolle** nötig sonst kostenpflichtige Behördenkontrolle,
  GWR-Ausführungskontrolle Seite 5); **Formular S** (Aussenlärm, Abgrenzung zu LN-1a/1b
  Anlagen-eigener Lärm bei Luft-WP), LSV-Novelle 01.04.2026 vermerkt; **Gesuch Versickerung
  Regenwasser AWEL** (Bewilligungsschwelle Flächenverhältnis >5:1 bzw. Bagatellgrenze 20 m²,
  **50-m²-Schwelle unbeschichtete Metallflächen → Adsorberpflicht**, Fassadenfaktor 0.2, Normbasis
  SN 592 000).
- [x] **D4** EN-ZH **Fachformular-Liste** je Fachbereich (Inhalt der einzelnen Energie-Beilagen)
  belegt erfassen. ✓ 2026-06-12: vollständige Liste EN-101a…EN-141 + S/LN-1 mit Inhalt &
  Rechtsbezug (EN-ZH S.2-4), Detail EN-105/EN-110-ZH, EVEN-Umstellung 01.01.2026 →
  `[[energie-energienachweis-zh-formulare]]`. Real verwoben: 2619-KISPI (UGZ II.8.a/b/c).
- [~] **D5** Aktuellere JANS-PV-Projekte als Ertrags-/Kosten-Benchmark je Typ A–E (ewzWHH ist
  2019) — Bandbreite CHF/kWp und kWh/kWp nachziehen. (neu 2026-06-06) ✓ **teil 2026-06-18:**
  Benchmark-Tabelle in `[[energie-pv-eignung-typenwahl]]` §3 — **Typ A** Indach-Tile Reckholdern/
  Einsiedeln (7.9 kWp, 981 kWh/kWp, ~7'370 CHF/kWp, SolarApp 2024), **Typ E** MFH Basel (59.93 kWp,
  852 kWh/kWp, ~2'255 CHF/kWp, SolarApp 2022), Flachdach ewzWHH 2019. Ertragsband **~850–980
  kWh/kWp**; CHF/kWp typabhängig **~2'000–7'400**. **✓ Typ B/C/D erledigt 2026-07-10 (Run 17):**
  belegte **Flächenleistung Wp/m²** (PREFA Solardachplatte gross 170 / klein 146 Wp/m², SI-Saphir
  transparent ~120 Wp/m² bei 40 % Lichtdurchlass, Fassade ×0.6–0.7 Ertragsfaktor) + **Modul-Preis-Anker**
  Eternit Sunskin roof GG-L 195W = 339 CHF netto/Modul ≈ 1'740 CHF/kWp _nur Modul_ (solar-home.ch
  17.11.2024); Systemband hergeleitet ~3'000–4'500 CHF/kWp installiert BIPV; Überkopf-PV = Glas-
  Bauzulassung (DIBt Z-70.3-204); real ref Fassade AUE Basel (jessenvollenweider 2021) →
  [[energie-pv-eignung-typenwahl]] §1b/§3. **Offen:** installierter System-CHF/kWp Typ B/C/D aus
  realer JANS-Schlussabrechnung (bisherige CHF sind Modul-Liste/Band); SolarApp = Vorprojekt-
  Schätzung, an Schlussabrechnung verifizieren. **Archivsuche 2026-07-13 (Run 20):** kein
  abgerechnetes PV-Projekt im JANS-Bestand gefunden (nur Referenz-/Planungsunterlagen) — bleibt
  offen bis ein reales Projekt mit PV-Schlussabrechnung anfällt. **Ergänzung 2026-07-14 (Run 36):**
  Betriebsenergie-EFH-Fall als neue Tabellenzeile in §3 (PV 14 kWp + Batterie + Boiler gebündelt
  36'000 CHF, CHF/kWp nicht isolierbar) → verweist auf [[energie-betriebsenergie-pv-wirtschaftlichkeit]].
- [x] **D8 (Run 36, 2026-07-14)** Pronovo-Einmalvergütungs-Fördersystematik (schliesst die in
  [[energie-uebersicht]] §Betriebsenergie offen gebliebene «aktuelle KLEIV-Ansätze»-Frage): NEU
  [[energie-betriebsenergie-pv-wirtschaftlichkeit]] — KLEIV 2-<100 kWp / GREIV 100 kW-50 MW / HEIV,
  Grundbeitrag + degressiver Leistungsbeitrag, max. 30 % Referenz-Investition, Neigungswinkelbonus
  (integriert 250→400 / angebaut 100→200 CHF/kW ab 01.01.2025), Parkflächenbonus 250 CHF/kW,
  Leistungsbeitrag-Senkung ≤30 kW + ≥100 kW je -20 CHF/kW ab 01.04.2025; absolute Sätze bewusst nur
  via Tarifrechner (dynamisch). Datenstand Web 2026-07-14.
- [ ] **D9 (offen, neu Run 36; erneut geprüft Run 56, 2026-07-22; Teilaspekt geschlossen
  2026-07-24 Nachtschicht Mac Mini)** Realer **MFH-/ZEV-Betriebskostenfall**
  (Eigenverbrauchsgemeinschaft, GREIV ≥100 kWp) als Ergänzung zum bisher nur belegten EFH-Fall —
  die EFH-Amortisationslogik ist nicht 1:1 auf Rendite-/Areal-Objekte übertragbar. **Run 56:**
  Ordner `_Betriebsenergie` vollständig erneut gelesen (alle 15 Bild-Dateien) — enthält nach wie
  vor **nur** den bereits dokumentierten EFH-Fall, kein MFH-/ZEV-Material. Reale Kostendaten
  bleiben offen, fällt an sobald ein reales JANS-MFH-PV-Projekt mit Verbrauchs-/Kostendaten
  vorliegt (Entscheid Raphael nötig, deckt sich mit E103 in KB `energie`). **Geschlossen:** die
  belegte Herleitung des kantonalen **Steuerabzugs energetische Sanierung** (ZH/SZ) — bisher nur
  pauschal mit der Förderung verrechnet — ist jetzt eigenständig hergeleitet
  → `[[steuerabzug-energetische-sanierung-zh-sz]]` (§ 30 StG ZH/ZStB 30.4, § 32 StG SZ/
  LKPV-Weisung 18.11.2025), inkl. der steuerlichen Seite des ZEV-PV-Abzugs je Miteigentümer-Anteil.
- [x] **D6** EVEN-Bedienung (Maskenführung, Rollen Planer/Bauherr/Behoerde, Beilagen-Upload).
  ✓ **2026-07-04 (Run 14):** aus EnDK-Schulung V1.4 (13.10.2025, Kantone mit Privater Kontrolle)
  belegt — **Rollen** (Projektkoordination legt an/reicht ein/beauftragt PK · Nachweisverfassung
  füllt Teilnachweise · Vollzugsverantwortung/Interne+Externe Prüfung · **Private Kontrolle** nur
  in PK-Kantonen wie ZH · Admin-Rollen), **Projektstruktur** (Projekt→Gebäude je EGID→Zone→
  Teilnachweis), **Ablauf** Login→Projekt→Gebäude→Teilnachweis verfassen+Beilagen→einreichen→
  Prüfung→abschliessen, **Aktionen** Nachtrag(Teilnachweis)/Beanstandung(Projekt)/Ausfuehrungs-/
  Vollzugskontrolle, **Statusmodell** + **Freigabe-Kaskade** (Bewilligungs-/Baufreigabe-/Bezugsbereit),
  kein Undo/kein Offline/alles protokolliert, GWR-Anbindung → NEU [[energie-even-plattform-bedienung]].
  Teilnehmer: alle Kantone ausser BE + FL. **✓ Praxisfall-Teil erledigt 2026-07-13 (Run 20):**
  realer KISPI-Fallverlauf eingearbeitet (Nachweisverfassung-vs-PK-Verwechslung, Kl-Befugnis-
  Blocker, Einladungsmechanik) → [[energie-even-plattform-bedienung]] §9. **Offen:** Fall selbst
  ist noch nicht abgeschlossen (Stand 13.07.2026, wartet auf Gruner-Rückmeldung).
- [x] **D7** Private Kontrolle Energie ZH: wer unterzeichnet den Energienachweis, welche Befugnis
  deckt welches EN-Formular? ✓ **2026-06-26 (Run 10):** Merkblatt Baudirektion ZH/AWEL «Liste der
  Befugten» (Stand April 2025) + BBV I § 4-7 (LS 700.21) — drei Unterschriften (Bauherr Hauptformular
  § 6 BVV; Projekt-Verantw. + **Befugte** technische Formulare § 4 BBV I), Befugnis-Matrix
  Wä/He/Kl/Bl/Lä ↔ EN-101…141/S/LN, **interkantonale Geltung** (Firmen nur ZH; natürliche Personen
  ZH/AR/GL/GR/SZ/SG → SZ-Projekt via natürliche Person), Minergie-Label entlastet → NEU
  [[energie-private-kontrolle-zh]].
- [~] **D8 / D1** Graue Energie / THGE als ZH-Grenzwert (Pa.Iv. 20.433 → MuKEn 2025). **Stand
  2026-06-26 (Run 10):** Planungsgrundlage erfasst — SIA-2040-Richtwerte Wohnen + reales JANS-
  Ökobilanz-Deliverable (Schlierenweg 31, ZPF 28.03.2022) → [[energie-uebersicht]] §Graue Energie;
  **Methodik-Tiefe in KB `wissen/energie` [[graue-energie]]** (kein Doppel). **Update 2026-07-04
  (Run 14):** MuKEn-2025-Neuerungen präzise belegt (energiehub-gebäude.ch) — Verabschiedung
  **EnDK-Plenum 29.08.2025**; graue Energie = **THG-Grenzwert** (Erstellung + Rückbau, Art. 1.39),
  Nachweis **nach Minergie-Reglement Fassung ab 01.01.2025**, Neubau + neubauartige Umbauten,
  **<50 m² neue EBF befreit** (Art. 1.40); dazu **Eigenstrom 20 W/m² EBF** (Art. 1.25, statt 10),
  Wärme vollständig erneuerbar (Art. 1.28) → [[energie-energienachweis-zh-formulare]] §Datenstand.
  **Offen (weiterhin):** konkrete **ZH-Gesetzes-/Verordnungsfassung** (Überführung Stand 04.07.2026
  ausstehend) — bis dahin gilt MuKEn 2014 (Eigenstrom 10 W/m²).

## E — Connector/Tooling
- [x] **E11 — Datums-Prefix war UTC statt Lokalzeit (Run 93, 2026-07-30, behoben + getestet)**
  Alle vier `planungsgrundlagen`-Connectoren bildeten ihr Datum mit
  `new Date().toISOString().slice(0,10)`. Das ist **UTC**: zwischen 00:00 und 02:00 CEST (Sommer;
  00:00–01:00 CET im Winter) datierten sie jede Ausgabedatei **einen Tag zurück** — genau im
  Nachtfenster, in dem die Lern-Loops und Scheduled Tasks laufen. Belegt am Original: um 00:39 CEST
  am 30.07. erzeugte `geo-zh.mjs` die Datei `Zonenplan-ZH_136_3338_2026-07-29.json`. Verstoss gegen
  Rule `dateinamen-konvention` (Datums-Prefix = tatsächliches Datum). Umgestellt auf
  `toLocaleDateString("sv-SE")` (liefert lokales `JJJJ-MM-TT`) in `geo-zh.mjs`, `geo-sz.mjs`,
  `gwr-bund.mjs`, `behoerden-zh.mjs`; im selben Lauf nachgemessen → `..._2026-07-30.json` und
  `Oereb-Auszug_136_3338_2026-07-30.pdf`. Erfolgs- und Fehlerpfad je einmal geprüft.
- [x] **E12 — HTTP 204 wurde als «kein PDF» gemeldet (Run 93, 2026-07-30, behoben + getestet)**
  Ein OEREB-Service antwortet auf einen ihm unbekannten EGRID mit **204 + leerem Body**, nicht mit
  404 (gemessen an ZH und SZ, je mit Fremd-EGRID). 204 ist für `fetch` «ok», lief also durch den
  `!r.ok`-Wächter und scheiterte erst am content-type — mit der irreführenden Meldung «OEREB-Antwort
  ist kein PDF (content-type )», die einen Serverdefekt suggeriert, während in Wahrheit der **Kanton
  falsch gewählt** war. `geo-zh.mjs` und `geo-sz.mjs` fangen den 204 jetzt eigens ab und benennen
  Ursache samt Abhilfe; beide Meldungen nachgemessen. Messreihe und Praxisfolgen dokumentiert in
  [[kartenportale-oereb-egrid-bezug]].
- [ ] **E13 — dieselbe UTC-Datumsfalle in vier Connectoren AUSSERHALB dieser KB** (neu Run 93,
  2026-07-30). Der Bestandssweep `grep -rn "toISOString().slice(0, 10)"` über `connectors/` und
  `skills/` fand acht Vorkommen; die vier `planungsgrundlagen`-eigenen sind behoben (E11), die
  folgenden vier bewusst **nicht angetastet**, weil sie fremden Skills gehören und teils
  buchungsrelevant sind:
  `connectors/bexio.mjs:279` (`heute()` — Buchhaltung, Änderung nur mit Freigabe, Rule 260702),
  `connectors/versand/shop-orders.mjs:44` (`HEUTE`, Skill `versandplanung` ist parkiert),
  `skills/baurecht/connectors/recht-ch.mjs:160`,
  `skills/oereb-schwyz/connectors/geo-sz.mjs:71`.
  Zu entscheiden: sammelhafte Korrektur durch die jeweils zuständigen Loops.
  **↳ TEILWEISE ERLEDIGT 2026-07-30** (Entscheid Raphael, ausgeführt durch `vollgas-chef-radar`):
  `shop-orders.mjs` und `recht-ch.mjs` auf `toLocaleDateString("sv-SE")` umgestellt, `node --check`
  sauber, Wirkung im kritischen Zeitfenster nachgemessen (Testzeitpunkt 01:00 CEST: alt `2026-07-29`,
  neu `2026-07-30`). `geo-sz.mjs` erledigt sich über E14 (Symlink auf die bereits korrigierte
  Fassung). **Offen bleibt bewusst nur `connectors/bexio.mjs:279`** — buchungsrelevant, Änderung
  nur mit ausdrücklicher Einzelfreigabe Raphaels (Rule 260702). Damit ist der Bestandssweep bis auf
  diese eine Stelle sauber.
- [x] **E14 — `geo-sz.mjs` existiert zweimal und divergiert** (neu Run 93, 2026-07-30):
  `skills/planungsgrundlagen/connectors/geo-sz.mjs` (23'149 B, Stand 22.07.2026, mit
  Parzellensuche/Grundwasser/JANS-Umbenennung, seit heute mit 204-Diagnose und lokalem Datum) gegen
  `skills/oereb-schwyz/connectors/geo-sz.mjs` (11'145 B, Stand 07.06.2026). Der Skill
  `oereb-schwyz` arbeitet also mit einer **sieben Wochen alten Abspaltung ohne die seither
  gewonnenen Fähigkeiten und Korrekturen**. Kein Datenverlust, aber zwei Wahrheiten für denselben
  Kanton. Entscheid nötig: Symlink auf die `planungsgrundlagen`-Fassung, Merge oder bewusste
  Trennung mit Begründung. Nicht eigenmächtig zusammengeführt (fremder Skill, potenziell
  destruktiv — Rule `wissens-bibliothekar`).
  **✓ ERLEDIGT 2026-07-30 — Symlink** (Entscheid Raphael, ausgeführt durch `vollgas-chef-radar`).
  Vorher gegengeprüft, dass die alte Fassung nichts Eigenes enthält: Vergleich aller Funktionen und
  CLI-Flags ergab **keine** Position, die nur in der 07.06.-Abspaltung stünde — der Symlink ist
  verlustfrei. `skills/oereb-schwyz/connectors/geo-sz.mjs` ist jetzt ein relativer Symlink auf
  `../../planungsgrundlagen/connectors/geo-sz.mjs`; Ladetest über den `oereb-schwyz`-Pfad erfolgreich
  (Connector parst und validiert Argumente). Sicherungskopie der abgelösten Fassung:
  `/tmp/geo-sz-oereb-schwyz-backup-260730.mjs` (flüchtig, dient nur dem Rollback in dieser Sitzung —
  die Historie steht dauerhaft im Git). Es gibt damit **eine** Wahrheit für Kt. Schwyz; der Skill
  `oereb-schwyz` erbt Parzellensuche, Grundwasser, 204-Diagnose und lokales Datum.
  **Nebenbefund für den Wartungslauf:** der Connector kennt kein `--hilfe`, obwohl die
  Hub-Konvention (Rule 260729) verlangt, jeden Connector zuerst per `--hilfe` befragen zu können.
  Nachzutragen bei der nächsten Connector-Pflege.
- [x] **E1** `geo-zh.mjs` um `--produkt` erweitern. ✓ 2026-06-10: `--produkt
  height,orthofoto,dtm,bauzonen` + `--download` implementiert, end-to-end an Kat. 3338 getestet
  (graceful skip bei EGRID-only ohne Koordinate). → [[kartenportale-bund-geodaten]].
- [x] **E2** `--produkt zonenplan` (kommunale ZH-Grundnutzung). ✓ 2026-06-16 implementiert &
  getestet: nicht via wms.zh.ch (401) sondern OGD-WFS 0156/0154; mappt BMZ- **und** AZ-System,
  GeoJSON-Ablage mit `--out`. Benchmarks Langnau + Egg → [[kartenportale-zonenplan-zh]].
- [x] **E4** `--produkt baulinien` um den **senkrechten Abstand Linie↔Parzellengrenze** erweitern.
  ✓ **2026-07-08 (Run 16):** `identifyParcel` liefert jetzt das Parzellenpolygon (`returnGeometry=true`,
  Esri-rings), `fetchBaulinien(e,n,half,parcelRings)` rechnet je Treffer `dist_m` (Segment-zu-Segment,
  planar EPSG:2056), sortiert aufsteigend, ergänzt `<layer>_dist_min_m` + `gemessen`. Getestet +
  Zweitmethoden-verifiziert (Seuzach 29.8 m), Regression zonenplan/EGRID grün → [[kartenportale-baulinien-abstandslinien-zh]].
- [x] **E3** STAC-bbox-Radius adaptiv (grosse Parzellen → mehrere Nachbarkacheln einsammeln statt
  fixem ~0.0008-Grad-Fenster). (neu 2026-06-10) ✓ **2026-06-24 (Run 9):** adaptive Schleife im
  Connector — bei 0 Kacheln Fenster verdoppeln bis Treffer oder Max (~0.0064 Grad), `--radius`
  überschreibt den Start. **Befund:** STAC-Kacheln sind ~1 km → das Punktfenster trifft praktisch
  immer beim ersten Versuch; die Verdoppelung ist Sicherheitsnetz für Kachelgrenzen/-luecken
  (am Langnau-Benchmark nicht ausgelöst, kein Regress). → [[kartenportale-bund-geodaten]].

## F — Meta/Querschnitt
- [ ] **F-KONSISTENZ (Nachaudit 2026-07-28)** **Sechs Phantom-Backlinks** verweisen aus acht
  Artikeln auf Wiki-Artikel, die es nie gab: `[[u-werte-grenzwerte-ch]]` (5×),
  `[[graue-energie]]` (4×), `[[minergie-standards]]` (2×), `[[abstaende-und-hoehen]]` (2×),
  `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`, `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]`,
  `[[regenwasserbewirtschaftung-versickerung-zh]]`. Sie sind faktisch **Vorwärts-Referenzen auf
  geplante, nie geschriebene Artikel** — kein Datenverlust, aber jeder Klick läuft ins Leere und
  der Leser hält den Inhalt für dokumentiert. Entscheid nötig: Artikel schreiben (die Inhalte
  stecken teilweise verstreut in [[energie-energienachweis-zh-formulare]] /
  [[energie-heizwaermebedarf-waermeerzeugerleistung]] / [[recht-norm-abstandsvorschriften-wald-gewaesser]])
  **oder** Links auf den real existierenden Zielartikel umbiegen. Zusätzlich zwei
  Pfad-statt-Artikel-Links (`[[planungsgrundlagen/connectors/geo-zh.mjs]]` in
  [[kartenportale-bund-geodaten]], `[[../grobkosten/]]` in
  [[recht-norm-ahb-stadt-zuerich-projektstandards]]) — dort besser Backticks statt Wikilink-Syntax.
  Bereits im selben Audit **behoben**: 6 über Zeilenumbrüche zerrissene Backlinks + 2 im INDEX
  fehlende Artikel ([[recht-norm-rechtsprechung-vg-zh]], [[recht-norm-sanitaerraeume-planungsgrundlagen]]).
- [x] **M2** Anbindung an `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung` schärfen. ✓
  **2026-07-13 (Run 22):** Lücke war einseitig (Run-21-Befund) — `planungsgrundlagen` kannte die
  drei Skills, keiner referenzierte zurück. SKILL.md aller drei ergänzt: `machbarkeit`
  §Datenquellen Punkt 4 nennt jetzt den Connector als bevorzugte Quelle vor manuellem GIS-Browser;
  `ankaufspruefung` §Datenquellen nennt `planungsgrundlagen` + Naturgefahren/Objektschutz als eigene
  Prüfdimension; `behoerden-vorabklaerung` hält fest, dass ein Teil der "gummigen" Masse bereits
  belegt vorliegt (weniger Behördenfragen nötig) + Werkleitungen-Zuständigkeit präzisiert
  (Werke, nicht Tiefbauamt) → [[kartenportale-grundlagen-checkliste-neue-parzelle]] Abschnitt
  "Anwendung/Anschluss".
- [x] **M3 (neu Run 47, 2026-07-14; präzisiert Run 48; abgeschlossen Run 53, 2026-07-19)**
  Volksreferendum gegen die Verordnung über die Umsetzung von § 49b PBG (UmV § 49b PBG).
  **Korrektur Run 48:** Run 47s Vermutung "Flexibilisierung Parkplatzvorschriften" war ein
  Fehlschluss aus dem blossen Suchtreffer-Titel — § 49b PBG regelt **preisgünstigen Wohnraum
  als Gegenleistung für Mehrausnützung**. Kein Bezug zu Parkierung/R9/R29.
  **Vervollständigt Run 53 (WebFetch stadt-zürich.ch/49b.html, 2026-07-19):** Primärquelle
  jetzt gelesen — Stadt Zürich verlangt bei Aufzonungen **75 % der zusätzlichen Ausnützung**
  als preisgünstigen Wohnraum (**Bagatellgrenze 650 m² aGF**), bei Arealüberbauungs-Bonus
  **100 %**; die städtische UmV (Gemeinderatsbeschluss 17.09.2025) definiert dazu Wohnsitz-
  pflicht/Mindestbelegung/Einkommenslimite (genaue Zahlen nicht ermittelt). **Ergebnis:**
  Volksabstimmung 14.06.2026 mit **57.14 % Ja angenommen — UmV in Kraft**. Auch die dazugehörige
  falsche Fehlzuordnung im Wiki-Artikel [[energie-energienachweis-zh-formulare]] (dort war der
  Nebenfund noch mit dem alten "Parkplatz"-Verdacht verlinkt) korrigiert. → NEU Abschnitt
  "§ 49b PBG" in [[recht-norm-quellenlandkarte]]. Kein eigener Artikel nötig (Umfang reicht für
  Abschnitt in der Quellenlandkarte); bei realem Verdichtungs-/Aufzonungsprojekt Primärtext der
  UmV (Einkommenslimite-Zahlenwert) nachziehen.
- [x] **M4 (Health-Check 2026-07-25; Coverage-Teil korrigiert Run 68; Umlaut-Teil GESCHLOSSEN
  Run 91, 2026-07-26)**
  KB-weiter Umlaut-Ersatzschreibungs-Befund: praktisch alle 40 Wiki-Artikel verwenden `ae/oe/ue`
  statt echter Umlaute ä/ö/ü (Rule `umlaute-konvention.md` verletzt), auch der am 25.07. neu
  verfasste `[[energie-pv-eignung-typenwahl]]`. Zu gross für einen Nachtschicht-Fix (Blind-`sed`
  riskiert echte Doppelvokale/Zitate/Dateinamen zu verfälschen) — braucht einen dedizierten,
  beaufsichtigten Korrektur-Lauf (Skill `korrektur`, Artikel für Artikel). **YAML-Frontmatter-
  Teilbefund GESCHLOSSEN (Mac Mini Nachtschicht, 2026-07-25):** die 2 gemeldeten Artikel geprüft
  — `[[kartenportale-naturgefahren-objektschutz]]` hatte bereits vollständige YAML-Frontmatter
  (Registerlücke, kein neuer Aufwand); `[[kartenportale-sharepoint-ablage]]` hatte tatsächlich
  noch inline `**Status:**` statt Meta-Schema — jetzt auf YAML-Frontmatter (title/status/
  last_updated/sources/links) umgestellt, Inhalt unverändert. Der Umlaut-Ersatzschreibungs-Befund
  oben bleibt unverändert offen, weiterhin zu gross für einen Nachtschicht-Fix. **Korrektur (Run 68, 2026-07-25):** die im Health-Check als "2 echte Coverage-Lücken"
  geführten Links `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]` /
  `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]` sind **kein Fund** — der Health-Check hat nur
  `wissen/energie/wiki/` auf Cross-KB-Ziele geprüft, nicht `wissen/energie/destillate/`: beide
  Artikel existieren dort bereits vollständig und `established`
  (`wissen/energie/destillate/muken-2025-anhang-4-5-daemmstaerken-leitungen.md`,
  `wissen/energie/destillate/oelheizung-gasheizung-ersatzpflicht-zh-sz.md`) — gleiches Muster wie
  die bereits korrekt als gültig erkannten Cross-KB-Links `[[u-werte-grenzwerte-ch]]` etc. Kein
  neuer Artikel nötig, kein KB-Dopplungsrisiko (Rule "Kein Doppel"); Referenz in
  `[[energie-energienachweis-zh-formulare]]` bleibt unverändert korrekt. Details Ursprungsfund:
  `outputs/2026-07-25_health-check.md`; Korrektur-Beleg: `outputs/2026-07-25_training-run68.md`.
  **UMLAUT-TEIL GESCHLOSSEN (Run 91, 2026-07-26).** Der Befund war nicht "zu gross für einen
  Nachtschicht-Fix", sondern nur zu gross für ein Blind-`sed` — die Lösung war ein
  **kuratiertes Token-Mapping statt einer Regex**: alle 2'651 distinkten Tokens mit `ae/oe/ue`
  aus den 51 Wiki-Dateien extrahiert, je Token durch acht parallele Sonnet-Klassifikatoren
  entscheiden lassen, ob es eine ersetzte Umlaut-Stelle ist, und das Ergebnis maschinell
  validiert (jede vorgeschlagene Ersetzung muss aus dem Original allein durch `ae→ä`/`oe→ö`/
  `ue→ü` ableitbar sein — 0 Beanstandungen bei 2'651 Zeilen). Ergebnis: **2'334 Tokens
  korrigiert, 317 bewusst unverändert** (legitime Folgen: `neue`, `bauen`, `Feuerwehr`,
  `Quelle`, `aktuell`, `zuerst`, `Querschnitt`, `Steuer*`, `Teuerung*`, Komposita-Grenzen wie
  `Risikoermittlung`/`Grauenergie`/`Baueingabe`, Eigennamen `Michael`/`Raphael`/`Oetwil`
  (amtliche Schreibweise)/`Lueem`, Verband `aeesuisse`, englische Begriffe `true`/`critique`).
  Angewandt mit dem neuen, wiederverwendbaren Werkzeug `scripts/umlaut-restore.py` +
  `scripts/umlaut-restore-mapping.json`, das Schutzzonen respektiert (Code-Blöcke, Inline-Code,
  URLs, `[[Wikilinks]]`, Markdown-Linkziele, Pfade, Dateinamen, Slugs) — zwingend, weil
  Datei-/Ordnernamen und Wiki-Slugs nach `dateinamen-konvention.md` ASCII bleiben müssen.
  Verifikation nach dem Lauf: Wikilinks, URLs und Zeilenzahl **je Datei bitgleich** zum Backup;
  4'769 Zeilen in 51 Dateien inhaltlich geändert. Nebenbefund miterledigt: vorbestehender
  Tippfehler `frühren` → `früheren` (2x) in [[recht-norm-ivhb-baubegriffe]].
  **Bewusst NICHT angefasst** (kein Fehler, sondern Entscheid): (a) `OEREB` (45x) — wird als
  Akronym/Identifikator auch in Endpunkt- und Produktnamen geführt, Umstellung auf `ÖREB` wäre
  ein eigener Entscheid; (b) `CHANGELOG.md` und die `outputs/`-Berichte — historische
  Protokolle werden nicht nachträglich umgeschrieben; (c) Eigennamen-Kandidaten `Troesch`,
  `Schaerer`, `Lueter` — ohne Beleg der amtlichen Schreibweise nicht geraten (Rule
  `identifikatoren-verifizieren`).
