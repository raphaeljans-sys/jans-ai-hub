# CHANGELOG — Wissensbasis Baurecht

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.
Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-06-07
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
