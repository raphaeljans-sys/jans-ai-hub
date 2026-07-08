# QUESTIONS — offene Fragen & Wissensluecken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [x] **K9** GWR-Gebaeudedaten je Parzelle (Baujahr/Volumen/EBF/Waermeerzeuger) — Bezug, Felder,
  Verlaesslichkeit? ✓ **2026-07-02 (Run 13):** `gwr-bund.mjs` login-frei via Layer
  `ch.bfs.gebaeude_wohnungs_register`. **GVOLNORM** (961 SIA 116 / 962 SIA 416 / 969 unbekannt) +
  **GVOLSCE** (851 amtl. Vermessung … 869 Baubewilligung … 878 nicht geschlossenes Gebaeude) aus
  **Merkmalskatalog GWR v4.2 S. 63f.** belegt und im Connector als Decode eingebaut + getestet.
  Merkregel **Baujahr schlaegt Bauperiode** (KISPI: Periode 8023 «2016-2020» vs. Baujahr 2024).
  Benchmarks KISPI EGID 302064023 (Volumen-Norm 969=unbekannt!) + Giebelweg 12 EGID 57977 →
  NEU [[kartenportale-gwr-bund]]. **Offen:** Wohnungs-/EWID-Ebene (`--wohnungen`), Katalog-v5.0-Abgleich.
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
- [~] **A5** Eigentumsabfrage ObjektwesenZH per EGRID: Ablauf + ob automatisierbar. **Stand
  2026-06-24 (Run 9):** ObjektwesenZH = Grundbuch-Auskunftssystem ZH; Eigentuemer-Auskunft nur mit
  **Interessennachweis** (Art. 970 ZGB), kein anonymer Massen-/API-Zugriff → **nicht login-frei
  automatisierbar**, bleibt manueller Behoerden-/Grundbuchweg. `speculative` bis offizieller
  Auskunfts-Endpunkt belegt → [[kartenportale-geoportale-uebersicht]] (Offen A5).

## B — Recht & Norm
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
- [~] **B4 (R2)** SZ-Mass-Definitionen aus PL-02/02_Schwyz belegt erfassen. **2026-06-28 (Run 11):**
  Screenshots gelesen — **§ 31i GFZ / § 31g BMZ** (SZ ist IVHB-aligned, AZ kantonal abgeschafft),
  **§ 60 Gebaeudehoehe** (Fassadenmitte, GA 50 % GH min 3 m), **Art. 42 Firsthoehe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** ungleiche GA-Verteilung via Dienstbarkeit
  → [[recht-norm-quellenlandkarte]] SZ-Block + Benchmark Willerzell. ⚠ Stand **SRSZ 1.2.2021** (> 18 Mt.)
  → vor Zitat aktuelle SRSZ-Fassung pruefen. **✓ Waldabstand erledigt 2026-07-06 (Run 15):**
  Screenshot `Art 35 Waldabstand.png` = **§ 35 PBV SZ (400.111)** regelt die **Waldgrenze** (2 m
  ausserhalb Stockgrenze) + Waldabstandslinie im Zonenplan — **nicht** das Baumass; das numerische
  **Waldabstand-Baumass steht in § 67 PBG SZ = 15 m** (Ausnahme-Minima Hauptbau 10/8 m, Nebenbau
  6/4 m; sz.ch Richtlinie Waldabstand + einsiedeln.ch 2018) → [[recht-norm-quellenlandkarte]]
  SZ-Tabelle (Zeile korrigiert). **Offen:** ZH-Waldabstand-Baumass (zh.ch «Bauen im Wald und am
  Waldrand») bei Bedarf ergaenzen.
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
- [x] **C2 / E6** Brandschutz/Naturgefahren **Solaranlagen** (Swissolar-STP zu VKF-BSM 2001-15).
  ✓ 2026-06-18: eigener Artikel `[[energie-pv-brandschutz]]` — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), Brandmauer-Uebergang (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  RWA-Abstand (Lichtraumprofil), Feuerwehr-Kennzeichnung + Einsatzplan **≥30 kW**, Naturgefahren
  SIA 261/261-1, DC bleibt unter Spannung. Solar-spezifisch, kein Doppel zu Skill `brandschutz`.

## D — Energie
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
- [ ] **D3** Pruefen: eigenes Skill `energie-nachweis` rechtfertigt sich?
- [x] **D4** EN-ZH **Fachformular-Liste** je Fachbereich (Inhalt der einzelnen Energie-Beilagen)
  belegt erfassen. ✓ 2026-06-12: vollstaendige Liste EN-101a…EN-141 + S/LN-1 mit Inhalt &
  Rechtsbezug (EN-ZH S.2-4), Detail EN-105/EN-110-ZH, EVEN-Umstellung 01.01.2026 →
  `[[energie-energienachweis-zh-formulare]]`. Real verwoben: 2619-KISPI (UGZ II.8.a/b/c).
- [~] **D5** Aktuellere JANS-PV-Projekte als Ertrags-/Kosten-Benchmark je Typ A–E (ewzWHH ist
  2019) — Bandbreite CHF/kWp und kWh/kWp nachziehen. (neu 2026-06-06) ✓ **teil 2026-06-18:**
  Benchmark-Tabelle in `[[energie-pv-eignung-typenwahl]]` §3 — **Typ A** Indach-Tile Reckholdern/
  Einsiedeln (7.9 kWp, 981 kWh/kWp, ~7'370 CHF/kWp, SolarApp 2024), **Typ E** MFH Basel (59.93 kWp,
  852 kWh/kWp, ~2'255 CHF/kWp, SolarApp 2022), Flachdach ewzWHH 2019. Ertragsband **~850–980
  kWh/kWp**; CHF/kWp typabhaengig **~2'000–7'400**. **Offen Typ B/C/D** (Dachziegel/transparent/
  Fassade) als belegter CHF-Benchmark; SolarApp = Vorprojekt-Schaetzung, an Schlussabrechnung
  verifizieren.
- [x] **D6** EVEN-Bedienung (Maskenfuehrung, Rollen Planer/Bauherr/Behoerde, Beilagen-Upload).
  ✓ **2026-07-04 (Run 14):** aus EnDK-Schulung V1.4 (13.10.2025, Kantone mit Privater Kontrolle)
  belegt — **Rollen** (Projektkoordination legt an/reicht ein/beauftragt PK · Nachweisverfassung
  fuellt Teilnachweise · Vollzugsverantwortung/Interne+Externe Pruefung · **Private Kontrolle** nur
  in PK-Kantonen wie ZH · Admin-Rollen), **Projektstruktur** (Projekt→Gebaeude je EGID→Zone→
  Teilnachweis), **Ablauf** Login→Projekt→Gebaeude→Teilnachweis verfassen+Beilagen→einreichen→
  Pruefung→abschliessen, **Aktionen** Nachtrag(Teilnachweis)/Beanstandung(Projekt)/Ausfuehrungs-/
  Vollzugskontrolle, **Statusmodell** + **Freigabe-Kaskade** (Bewilligungs-/Baufreigabe-/Bezugsbereit),
  kein Undo/kein Offline/alles protokolliert, GWR-Anbindung → NEU [[energie-even-plattform-bedienung]].
  Teilnehmer: alle Kantone ausser BE + FL. **Offen:** realer JANS-Screenshot-Walkthrough am KISPI-Fall.
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
