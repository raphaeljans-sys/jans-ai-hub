# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

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
