# CHANGELOG — Wissensbasis Baurecht

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.
Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-06-13 — Buch-Destillat Kap. 16.10 (Attika/MT/Fassadenhoehe, S. 1230-1239)
- NEU `buecher/band-2/kap16-10_gebaeudedimensionen-harmonisierung.md` (Shots 619-623,
  echte Seiten 1230-1239): Attikageschoss-Rueckversetzung h/2 an fiktiven Traufseiten
  (§ 275 Abs. 4 nPBG, bisher 45 Grad), Dachaufbauten 1/2 Fassadenlaenge (§ 292 nPBG),
  UG-Formel ≤ 2.5 (§ 29 nABV), massgebendes Terrain = gewachsener Verlauf /
  Nachbarschafts-Festlegung (§ 5 nABV), Gesamthoehe/Fassadenhoehe-Messweise
  (§§ 278/281 nPBG, Flachdach bis OK Bruestung ausser ≥ 1 m zurueckversetzt),
  Kniestock 1.5 m, Gebaeudelaenge flaechenkleinstes Rechteck (§ 28 nABV).
- Inventar Zeilen 619-623 auf [x] mit echten Seitenzahlen.
- Anlass: Anfrage Raphael (Fall 2621 Giebelweg, Attika-/Baukoerper-Setzung);
  Erkenntnisse in Skill `massgebendes-terrain` ueberfuehrt.


## 2026-06-12
- [distill] **Buch-Training Run 4** — Kap. 15 «Lage von Gebaeuden», Teil 2a. Destillat [[15-lage-von-gebaeuden]] um 10 Doppelseiten erweitert (Shots 511-520, S. 1014-1033): **Uferstreifen-Messweise** (ab Uferlinie, Korridor) + ZH-Uebergangsbreiten (§ 15 HWSchV: stehend 8/20 m, fliessend 8 m + Sohle je Seite), **zulaessige Anlagen im Gewaesserraum** (Art. 41c Abs. 1 GSchV: standortgebunden/oeffentliches Interesse), **dicht ueberbautes Gebiet** (Art. 41c Abs. 1 Satz 2 GSchV; BGE 140 II 428; Altendorf/Hurden/Rueschlikon), Grenzabstaende gelten **zusaetzlich** im Gewaesserraum (S. 1020), Besitzstand/Brandstattrecht (§ 15m HWSchV vor § 357/§ 307 PBG), **Gewaesserabstandslinien § 67 PBG** (Bauverbotszone, §§ 99-101 PBG analog, § 220 Dispens), **Hochwasser-Gefahrenbereiche** (WWG/WBV, Gefahrenkarten Art. 21 WBV, § 22 WWG), **Baulinien-Arten § 96 PBG** + subsidiaerer 6-m-Abstand § 51 Abs. 2 PBG. Total ~50/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[baulinien-und-abstandslinien]] (`emerging`) — Baulinien (§§ 96-101 PBG: Verkehrs-/Schutz-/Versorgungsbaulinie, Endausbau § 98, Naeherbaurecht § 105), subsidiaerer 6-m-Strassenabstand (§ 51 Abs. 2 PBG), Gewaesserabstandslinie (§ 67 PBG), Linien-Abgrenzungstabelle; Leitsatz «die Linie ist oft bindender als die Ziffer». INDEX (10 Artikel).
- [sharpen] [[abstaende-und-hoehen]] um Gewaesserraum-Vertiefung ergaenzt (standortgebundene Anlagen, dicht ueberbautes Gebiet, § 15m HWSchV vor § 357/§ 307 PBG, «zusaetzlich nicht ersetzend») + Backlink auf [[baulinien-und-abstandslinien]].
- [drill] 5 neue Q/A-Karten Kap. 15 Teil 2a + 1 Frage→Beleg-Drill (Modell A: TG an Gewaesserabstandslinie → §§ 99-101/§ 100 Abs. 1 PBG, Beleg vollstaendig) in `training/drills.md`.
- [register] `buecher/seiten-inventar.md` (Shots 511-520 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 Teil 1+2a, last_updated), `curriculum.md` (Kap. 15 [~] Teil 1+2a, naechstes Kap. 15 Teil 2b §§263-274 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Strassenabstand/Baulinien teilweise erledigt; § 100 Abs. 1 + dicht-ueberbaut als neue Luecken; Gewaesserabstand-Artikel-Luecke geschlossen). Report `outputs/2026-06-12_buch-run4.md`.

## 2026-06-11
- [distill] **Buch-Training Run 3** — Kap. 15 «Lage von Gebaeuden», Teil 1. Neues Destillat [[15-lage-von-gebaeuden]] (`emerging`) aus 10 Doppelseiten (Shots 501-510, S. 995-1013): Abstandssystem §§ 260-274 PBG, **Gebaeudearten** (Minibau/bewilligungsfreie/besondere/abstandsfreie/Hauptgebaeude; § 2 ABV, § 1 lit. a BVV, § 49 Abs. 3 / § 269 / § 273 PBG), Fassade-Messweise (§ 260 Abs. 1 PBG, § 28 Abs. 1 ABV), politische/Zonengrenzen (§ 261 PBG; BEZ 1989 Nr. 21), **Waldabstand § 262 PBG** (30 m / bis 15 m; Art. 17 WaG forstpolizeilich; BGE 119 Ia 12), **Gewaesserraum** (Art. 36a GSchG, Art. 41a/41b GSchV: 11 m / 2,5×Sohle+7 m / 15 m; § 15d HWSchV). Total ~40/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[gebaeudearten-und-abstandssystem]] (`emerging`) — Entscheidungstabelle der fuenf Gebaeudearten → Abstandsfolge, Messweise, politische/Zonengrenzen, privatrechtliche Abstaende (Art. 688 ZGB). INDEX (9 Artikel) + Abschnitt «Abstaende & Hoehen» erweitert.
- [fix] **Gegenprobe (Modell D) — Fehler in [[abstaende-und-hoehen]] korrigiert:** Waldabstand stand auf **§ 268 PBG** + «§ 18b Waldgesetz» (falsch; § 268 = Anschlussgleise) und «Reduktion bis 10 m via Gestaltungsplan». Richtig Kt. ZH: **§ 262 PBG**, Regel 30 m, reduzierbar **bis 15 m** ueber die Waldabstandslinie (§ 66 Abs. 2 PBG); zusaetzlich forstpolizeilicher Mindestabstand Art. 17 WaG (VGr < 10 m i.d.R. zu gering). Beleg Bd 2 S. 999 f., 1004 f. Artikel zudem um Gewaesserraum-Abschnitt ergaenzt; alte needs-verification «20 m / 10 m» erledigt.
- [drill] 6 neue Q/A-Karten Kap. 15 + 1 Wiederholung Kap. 16 in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) Waldabstand 30/15 m. Report `outputs/2026-06-11_buch-run3.md`.
- [register] `buecher/seiten-inventar.md` (Shots 501-510 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 🟡), `curriculum.md` (Kap. 15 [~], naechstes Kap. 15 Teil 2 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Grenz-/Gebaeudeabstand + Strassenabstand + § 273 PBG als neue Luecken; Waldabstand-Korrektur archiviert).

## 2026-06-10
- [distill] **Buch-Training Run 2** — Kap. 16 «Gebaeudedimensionen», Teil 1 (Geschosse + Kniestock). Neues Destillat [[16-gebaeudedimensionen]] (`emerging`) aus 10 Doppelseiten (Shots 571-580, S. 1135-1153): Voll-/Dach-/Untergeschoss (§ 275 PBG), Anrechenbarkeit zur Geschosszahl (§ 276 PBG), Galerie/zusammengebaute/terrassierte Bauten, Terrassenhaus (§ 77 PBG), Geschosszahl-Ersatz (§ 276 Abs. 2), **Kniestock** (0,9 m / Bestand 1,3 m vor 1.7.1978, Messweise 0,4 m hinter Fassade, auskragendes Dachgeschoss BEZ 1997 Nr. 7). Total ~30/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[geschosse-und-kniestock]] (`emerging`) — Geschossarten, Anrechenbarkeit, Kniestock-Tabelle (Neubau 0,9 m / Bestand 1,3 m) + Messweise; Backlinks auf [[nutzungsziffern]], [[abstaende-und-hoehen]], [[bestandsumbau-eingriffstiefe]]. INDEX (8 Artikel) + neuer Abschnitt «Gebaeudedimensionen».
- [drill] 6 neue Q/A-Karten Kap. 16 in `training/drills.md` (Modell C); **Fall-Nachrechnung Kniestock** (Modell B + Gegenprobe D): Dachausbau 1,15 m, Bewilligung 1969 → Dachgeschoss bleibt (1,3-m-Erleichterung); als Ersatzneubau → Vollgeschoss. Report `outputs/2026-06-10_buch-run2.md`.
- [register] `buecher/seiten-inventar.md` (Shots 571-580 [x] + echte Seiten), `buecher/INDEX.md` (Kap. 16 🟡), `curriculum.md` (Kap. 16 [~], naechstes Kap. 15), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Kap.-16-Luecke Hoehen/Dach + § 19 BBV II + § 293 PBG).

## 2026-06-09
- [distill] **Buch-Training Run 1** — Kap. 14 abgeschlossen. Destillat [[14-nutzungsdichte-ausnuetzung]] vom Ausnuetzung-Kern auf das gesamte Kapitel erweitert (Shots 464-471, 494, 496, 498 = 11 Doppelseiten, S. 920-989): massgebliche Grundstuecksflaeche im Detail (§ 259 PBG: Wald/Gewaesser/Strassen/Fusswege/Bahn), **Ausnuetzungsuebertragung** (§ 72 Abs. 3 PBG, Revers im Grundbuch, BO-Erlenbach-Schranke 1/5), erhoehte Ziffern/Gewerbebonus (§ 49a), Nutzungsart/Immissionen (§ 51/52/57), Wohnanteil (Healthcare ausserhalb), Harmonisierungsvorlage/IVHB. Total 20/780 Doppelseiten distilliert; Abdeckung Kap. 14 → 🟢.
- [article] Neuer Wiki-Artikel [[ausnuetzungsuebertragung]] (`emerging`): gleiche Zone (§ 72 Abs. 3 PBG), raeumliche Naehe, Ausnuetzungsrevers im Grundbuch (Art. 646 ZGB), kommunaler Daumenwert max. 1/5 der Grundausnuetzung (Art. 40 BO Erlenbach). INDEX + Statistik (7 Artikel) nachgefuehrt.
- [fix] **Gegenprobe (Modell D) — zwei Fehler in [[nutzungsziffern]] korrigiert:** (1) Freiflaechenziffer ist **§ 257 PBG**, nicht § 259 (§ 259 = massgebliche Grundstuecksflaeche; Buch Bd 2 S. 920/949); (2) Geschossflaechenziffer (GFZ) der IVHB **steht im Kanton Zuerich NICHT zur Verfuegung** (Bd 2 S. 988) — fruehere Aussage «in neueren Planungen anstelle der AZ» war fuer ZH falsch. Artikel zudem um massgebliche Grundstuecksflaeche, erhoehte Ziffern und Uebertragung ergaenzt.
- [drill] 7 neue Q/A-Karten in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) zur Zonengrenze-Schranke der Uebertragung. Report `outputs/2026-06-09_buch-run1.md`.
- [register] `buecher/seiten-inventar.md` (11 Shots [x] + echte Seitenzahlen), `buecher/INDEX.md`, `curriculum.md` (Kap. 14 [x], naechstes Kap. 16), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (GFZ-Korrektur archiviert, Mischrechnungsverbot + § 10/13 ABV als neue Luecken).

## 2026-06-07
- [article] Neuer Wiki-Artikel [[bestandsumbau-eingriffstiefe]] (Grundprinzip Bauen im Bestand): Eingriffstiefe entscheidet ueber Baueingabe; Pflichtenkatalog bei Baueingabe (Brandschutz/Treppenhaus VKF, Schallschutz SIA 181, Ausnuetzungsnachweis, Parkplatz/Energie/hindernisfrei); Besitzstandsgarantie schuetzt nur Erhalt — nicht Ausweitung; behoerdlicher Ermessensspielraum bei Uebernutzung (je Baubehoerde unterschiedlich); Empfehlungsregel «bewilligungsfreier Umbau = sicherste Variante». Seed: Praxisfall 2622 Wangen SZ (Dachausbau Chaled). Schliesst die Backlog-Luecke «Bestandesschutz & Besitzstandsgarantie». INDEX + Statistik (6 Artikel) nachgefuehrt.
- [harness] **Buch-Layer + Buch-Training angelegt** fuer das Standardwerk «Zuercher Planungs- und Baurecht, Bd 1+2» (Fritzsche/Boesch/Wipf/Kunz, 6. Aufl. 2019). Neu: `buecher/` (CLAUDE.md, INDEX.md, seiten-inventar.md mit allen 780 Screenshot-Doppelseiten, band-1/ band-2/), `training/` (PROGRAMM.md mit degressiver Lernkurve, curriculum.md 23-Kapitel-Map, drills.md). Quell-Screenshots auf SharePoint `PL - 02_Recht_Norm/.../SM Planungs und Baurecht/`.
- [distill] Erstes Destillat [[14-nutzungsdichte-ausnuetzung]] (Bd 2, Kap. 14, S. 919-961): AZ/BMZ/UEZ/FFZ (§§ 254-260 PBG), anrechenbare Geschossflaeche, **Dach-/UG-Mehrflaechenregel § 255 Abs. 2** (S. 950 f.), Wohntauglichkeit S. 944 f. 9 Shots im Inventar als distilliert markiert.
- [wire] Skill `baurecht` (Stufe 0b + Zitierschema Band/Kap/Seite) und Legacy-Agent `baurecht-agent` an den Buch-Layer angebunden.
- [schedule] Scheduled Task `baurecht-buch-training` erstellt (Phase 1 taeglich 07:34; degressiv auf 2-taegig/woechentlich).
- [output] Anwendungsfall [[2026-06-07_buch-run0_dachausbau-wangen-chaled]] (Trainingsmodell B): Dachgeschoss-Analyse MFH Wangen Bahnhofstrasse 27 (Mail David Chaled) auf Buchbasis. Offen: Kanton (Wangen SZ vs. Wangen-Bruettisellen ZH) + Kennwerte (Zone/AZ/Parzellenflaeche).
- [tooling] Connector `skills/baurecht/connectors/recht-ch.mjs` gebaut: zieht amtliche, konsolidierte Gesetzes-Volltexte (ZH-Lex; Bund-v2 offen) als Markdown mit Provenienz-Frontmatter nach raw/. ZH-Kette verifiziert (Open&Ordnr → kanonische Erlassseite → notes.zh.ch $File-PDF → pdftotext).
- [ingest] 5 amtliche ZH-Volltexte als Primärquelle in raw/ abgelegt: PBG (LS 700.1), ABV (700.2), BVV (700.6), BBV I (700.21), BBV II (700.22) — gemeinfrei Art. 5 URG, Direktkonsultation. In _INGESTED.md registriert (kein Coverage-Flag).
- [compile] Quellenregister [[QUELLEN]] angelegt (wiki/QUELLEN.md); in INDEX verlinkt; Statistik nachgeführt.
- [flag] Bund-Volltexte (RPG/RPV/USG) offen: Fedlex JS-gerendert → Auto-Fetch v2; bis dahin SharePoint/fedlex.admin.ch. In QUELLEN.md notiert.
- [tooling] Connector um kommunale BZO (Kt. ZH) erweitert: Bezug via ÖREB-Dokumentdienst oerebdocs.zh.ch/getDoc?docid; Auto-Auflösung Gemeinde→docid über ÖREB-JSON-Extrakt (--resolve-bzo --egrid). Register BZO_ZH (nur verifizierte docids).
- [ingest] 2 kommunale BZO-Volltexte als Primärquelle: Zürich Stadt (BZO 2016, docid 6) + Langnau am Albis (docid 5501) — gemeinfrei, Direktkonsultation. In _INGESTED + QUELLEN registriert.
- [ingest] ZH-Batch: 42 weitere kommunale BZO-Volltexte (Zürichsee-Ufer + Agglo-Ring) via ÖREB-Auto-Resolver (Name→EGRID→ÖREB-JSON→docid) gezogen; docids verifiziert, Fusionsgemeinden (Wädenswil) per Adress-Anker geprüft. Total 44 ZH-Gemeinden. Register BZO_ZH + QUELLEN nachgeführt.
- [tooling] SZ-Track gebaut: kommunale Baureglemente Kt. SZ via OEREBlex (oereblex.sz.ch/api/attachments), Auflösung über map.geo.sz.ch/oereb/extract/json. Register BAUREGL_SZ.
- [ingest] SZ-Batch: Baureglemente Wangen SZ, Freienbach, Feusisberg als Volltext; Wollerau als OCR-Pendenz markiert (Bild-PDF ohne Textebene). Schutzlogik im Connector: leere Extraktion wird ehrlich gekennzeichnet statt als Volltext getarnt.
- [tooling] OCR-Fallback im Connector (`--ocr`): leere Extraktion (Bild-PDF) wird via ocrmypdf/tesseract (deu) nachgeholt und als OCR-Text gekennzeichnet.
- [ingest] Wollerau (SZ) Baureglement via OCR gewonnen (81 KB) — nicht mehr Pendenz. Damit alle 4 SZ-Gemeinden Volltext.
- [flag] SG-Track (Rapperswil-Jona/Schmerikon): SG-ÖREB läuft über geoportal.ch; M2M-Extrakt 403-gesperrt (IP/Token) → ohne Freischaltung kein Auto-Bezug, bleibt Pendenz (in QUELLEN notiert).

## 2026-06-02
- [compile] Neuer Artikel raumplanung-und-gestaltung (aus pbg-zh: Richtplan, Nutzungsplanung, Sondernutzung, §238 Einordnung, Denkmalschutz); gegenseitig verlinkt mit zonenkonformitaet + baubewilligungsverfahren; INDEX + _INGESTED nachgefuehrt. [Phase-2-Aktion D]
- [flag] needs-verification gesetzt: Gebuehren 1-3‰ (baubewilligungsverfahren), Waldabstand-Ausnahmen 20/10m (abstaende-und-hoehen), BZO-Richtwerte (zonenkonformitaet); in QUESTIONS.md gefuehrt. [Phase-2-Aktion C]
- [reclassify] praxisfaelle als leerer Platzhalter eingestuft (keine Coverage-Luecke) in _INGESTED.md + QUESTIONS.md. [Phase-2-Aktion D]
- [fix] dekorativen Pfeil → in baubewilligungsverfahren.md durch Prosa ersetzt (Symbolregel). [Phase-2-Aktion F]
- [health-check] Erster Wissens-Health-Check (Phase 1): A0 B0 C3 D1+1 E0 F1 G0 → outputs/2026-06-02_health-check.md
- [setup] Wissensbasis Baurecht angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files).
- [ingest] 5 Seed-Quellen aus docs/baurecht/ in raw/ abgelegt und in _INGESTED.md registriert.
- [compile] 4 Wiki-Artikel kompiliert: nutzungsziffern, abstaende-und-hoehen,
  baubewilligungsverfahren, zonenkonformitaet (mit Frontmatter + Backlinks).
- [index] INDEX.md und QUESTIONS.md erstellt.
- [flag] Coverage-Lücke: raw/260602_docs-baurecht-praxisfaelle.md noch nicht eingearbeitet.
