# CHANGELOG — Wissensbasis Auflagebereinigung

Jede Änderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-07-22 — QUESTIONS-Lücke geklärt: Schallschutz SIA 181 Federführung (Mac Mini Nachtschicht)
- [geklärt] **Schallschutz SIA 181 (Ziff. II.10) — Federführung** gegen das Normen-Destillat
  `wissen/normen/destillate/sia-181-2006.md` geprüft (Ziff. 4.2/4.3 Bauteile vs. Ziff. 4.4
  Geräusche haustechnischer Anlagen). Ergebnis: SIA 181 weist keine Federführung zu — die
  bestehende Praxisregel in [[auflagentypen-gewerkzuteilung]] («Bauteile → ARC/Bauphysik;
  haustechnische Anlagen → HLK») war richtig, aber unbelegt; jetzt mit Fundstellen und einer
  Faustregel (Bauphysiker im Team → gesamthaft federführend für Ziff. 4) präzisiert. Artikel
  `sources` um das Normen-Destillat ergänzt, `last_updated` auf 2026-07-22. QUESTIONS.md-Punkt
  ins Archiv verschoben.

## 2026-07-21 — Phase-2-Fix aus dem Nacht-Audit (Dauerschicht-Zyklus 37)
- [korrigiert] **SPA-Gewerk-Widerspruch behoben** (Top-1 des Health-Checks 21.07., offen seit
  dem Check vom 01.07.): `brandschutz-auflagen-qss.md` führte «SPA = SAN», massgeblich ist seit
  dem Split vom 04.06. **SPR** (eigener Sprinklerplaner, Fall 2619: JOMOS; nur ohne eigenen
  Sprinklerplaner SAN). Zeile an [[auflagentypen-gewerkzuteilung]] angeglichen — beide Artikel
  sind jetzt konsistent.

## 2026-07-21 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Audit A–G, Report `outputs/2026-07-21_health-check.md`. Ampel: B/C grün, D/E/G orange, A/F rot.
Top-Finding: der am 01.07. gefundene SPA=SAN/SPR-Widerspruch (`brandschutz-auflagen-qss.md`
Z. 50 vs. `auflagentypen-gewerkzuteilung.md`) ist 20 Tage später unverändert unkorrigiert,
obwohl die Datei am 20.07. für den GVZ-Cross-Link bereits geöffnet/editiert wurde. Neuer
schwerer Befund: `formular-verifizierung.md` (0 echte Umlaute) und der heute frisch erstellte
`gvz-einreichung-bma-sprinkler.md` (MacBook-Pro-Dauerschicht-Zyklus 21) sind fast vollständig
in ae/oe/ue statt ä/ö/ü geschrieben — Hinweis, dass die um 06:30 behobene Locale-Ursache
(training-energie/-plg/synobsis-batch) mutmasslich nicht jeden Erzeugungspfad abdeckt, auch
die MacBook-Dauerschicht-Kette scheint betroffen. Zusätzlich: einer der beiden am 01.07. als
"geklärt" gemeldeten QUESTIONS-Punkte (Adressdiskrepanz Lenggstrasse/Lengstrasse) erweist sich
bei Gegenprüfung als **nicht** durch den zitierten Beleg gedeckt — bleibt echt offen. Nichts
selbst korrigiert (Phase 2 nur interaktiv).

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): GVZ-Artikel an normen-Fundstellen angebunden
- [link] `wiki/gvz-einreichung-bma-sprinkler.md`: Querbezug-Block «KB normen» — die aus den
  GVZ-Weisungen gespiegelten Anmeldeschwellen (BMA >10/600 m², SPA >10/100 m²) und die
  Ausserbetriebsetzungs-Frist sind norm-geführte Fundstellen (**VKF-BRL 20-15 Ziff. 4.1/3.10**,
  **19-15 Ziff. 5.1/4.4**); normen-Destillate als führend markiert, dieser Artikel führt den
  kantonalen GVZ-Vollzug.
- [link] `wiki/brandschutz-auflagen-qss.md`: reziproker Backlink im GVZ-Abschnitt (II.25/II.26) auf
  `[[gvz-einreichung-bma-sprinkler]]`. Cross-KB bestätigte: **0 Widerspruch, 0 Doppelspur** zwischen
  planungsgrundlagen/auflagebereinigung; die neuen §5ao/§5ap (pg) schreiben keine VKF-Ziffern fort.
  Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Neuer Artikel: GVZ-Einreichungsweg BMA/Sprinkler (Dauerschicht-Zyklus 21)
- [neu] [[gvz-einreichung-bma-sprinkler]] — QUESTIONS-Punkt «GVZ-Einreichungsweg
  BMA/Sprinkler» (Ziff. II.25/II.26 Bauentscheid 2619-KISPI) geschlossen. Quellen an
  den Primärdokumenten gelesen: GVZ-Weisung 20.07 Brandmeldeanlagen (Volltext, 27 S.)
  und 20.08 Sprinkleranlagen (Kap. 5–7). Kernpunkte: Projektbegutachtung VOR
  Ausführungsbeginn durch VKF-Fachfirma (BMA-Schwelle >10 Melder/600 m²; SPA >10
  Sprinkler/100 m², inkl. Vorabklärung/Nutzungsplan/Hydraulik), Installations-Attest
  vor Abnahme, GVZ = Brandschutzbehörde UND Inspektionsstelle, ELZ-Aufschaltung nach
  Weisung 30.25, Ausserbetriebsetzung >24 h mit 3-Tage-Vorlauf + Genehmigung,
  Kontrollturnus Risikogruppe 1 (Spitäler/Pflegeheime) = 5 Jahre, GVZ-Prüfungen
  kostenlos. Transfer-Abschnitt für die Deliverable-Zuteilung ergänzt.
- [index] INDEX.md ergänzt; QUESTIONS.md Punkt ins Archiv überführt (offen bleiben
  30.25-Destillat und Portal-Frage, im Artikel vermerkt).

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Querbezuege zu baurecht + Baubeginn praezisiert
- [link] [[fristenlogik-bauentscheid-zh]] -> baurecht `nebenbestimmungen-und-reverse` (Rechtsnatur § 321 PBG) + `bauausfuehrung-und-baukontrolle` (Baufreigabe § 326 / Meldepflichten § 327 / § 23 BVV). [[aemter-stadt-zuerich]] -> baurecht `baubewilligungsverfahren` (§ 318/§ 329, Wer-Adressat).
- [praezisiert] [[fristenlogik-bauentscheid-zh]]: «vor Baubeginn = vor erstem Spatenstich» ergaenzt um juristische Definition **Aushubbeginn** (Abstecken/Installation kein Baubeginn, § 326 PBG / RB 1994 Nr. 88). Cross-KB-Fund W1 adversarial WIDERLEGT (nur Praezisionsstufe, kein Sachwiderspruch) — Praezisierung statt Korrektur.

## 2026-07-01 — Wissens-Health-Check (Phase 1, Audit) durchgeführt

- Audit A–G, Report `outputs/2026-07-01_health-check.md`. Ampel: B/C/D/F grün, A/E/G orange.
  Top-Findings: (1) Widerspruch SPA=SAN (brandschutz-Artikel) ↔ SPA=SPR (Zuteilungs-Artikel,
  seit 04.06. gesplittet); (2) 2 QUESTIONS faktisch geklärt (Vorabzug↔def. BE 1171/26,
  Adressdiskrepanz) noch als offen gelistet; (3) Einreich-Aufstellung (Output 13.06.) noch nicht
  ins Wiki gehoben. Nur Phase 1 — keine Wiki-Änderungen; Aktionen bleiben Phase 2 (interaktiv).

## 2026-06-13 — Einreich-Aufstellung (Formulare/Eingaben je Amt) 2619-KISPI

- Neues Deliverable, Gegenstück zur Plan-/Dokumentenliste: **Einreich-Aufstellung**
  gegliedert nach Eingabe-Adressat (Amt) mit klickbarer Spalte Bezugsquelle/Plattform.
  Generator `tools/build_einreichaufstellung.py`; 25 Eingaben in 7 Amts-Gruppen
  (UGZ/FP/GVZ/AfB/SRZ/Bauinstallation/Baustelle-Umwelt). XLSX+PDF doppelt abgelegt.
- Grundlage definitiver BE 1171/26 (08.06.2026); Diff zum Vorabzug: keine materiellen
  Auflagenänderungen (Ziffern-Schnellabgleich), Energie-Zuordnung II.8 a/b/c wörtlich.
- Bezugsquellen am 13.06. live verifiziert (EN-110-ZH-PDF, EVEN, UGZ-/Baustellen-Luft-Kanal,
  GVZ, VKF; Connector-URLs Brandschutz-Zusatzformular 3 + Baumfällung). EN-ZH/EN-105 laufen
  seit 01.01.2026 über EVEN (kein Einzel-PDF mehr).
- Output-Begleitnotiz `outputs/2026-06-13_2619-kispi-einreich-aufstellung.md`.

## 2026-06-12 — Definitiver Bauentscheid BE 1171/26: Formular-Zuordnung bestätigt

- `formular-verifizierung.md` auf `status: established` gehoben: Zuordnung II.8.a→EN-ZH/EVEN,
  II.8.b→EN-105 (Lüftung), II.8.c→EN-110-ZH (Kühlung/Befeuchtung) am definitiven Bauentscheid
  **BE 1171/26** (B26-00705.01, 08.06.2026) wörtlich UND an den Formular-Original-PDFs verifiziert.
- Neues Lehrstück ergänzt: Formular-Ordner im Projekt waren **vertauscht beschriftet**
  (II.8b-Ordner enthielt EN-110-ZH, II.8c-Ordner EN-105) — Ordnernamen sind keine Quelle.
- Stammdaten für die Formulare amtlich beschafft (Fall 2619): EGID **302064023** (GWR),
  Parzelle **RI5416** / EGRID CH267999915472 (geo-zh.mjs), Gebäudevers.-Nr. **RI02972**
  (Baugesuchsformular). Arbeitsstand-Datei im Projektordner nachgeführt.
- Befund: HLK-Fachdaten (Lüftungsprojekt Neu) fehlen weiterhin — EN-105/EN-110-ZH ohne
  Planerdaten nicht ausfüllbar; nur Abbruchplan in `33.02_GRUNER/03 HLK/` vorhanden.

## 2026-06-10 — Muster «Auflage → amtliches Formular (verifiziert, nie geraten)»
- **Neuer Artikel** `wiki/formular-verifizierung.md` (emerging): Verifizierungs-Muster für
  Formular-/Nachweisnummern. Seed = Lehrstück KISPI 2619 Ziff. II.8 — ein Sub-Agent hatte
  plausible, aber falsche Energieformular-Nummern erfunden; KB-Abgleich (`wissen/energie`) +
  amtliche ZH-Quellen korrigierten auf **II.8.a → EN-ZH**, **II.8.b → EN-105**,
  **II.8.c → EN-110-ZH**. Enthält den 4-Schritt-Workflow (wörtlich extrahieren → als
  «zu verifizieren» markieren → gegen Fach-KB auflösen → sonst QUESTIONS) + wachsende
  Zuordnungstabelle.
- **Agent `auflagen-extraktor` geschärft** (NAS): neuer Arbeitsschritt 6 «Formular-/
  Nachweisnummern NIE erfinden» — nur wörtliches Schlüsselwort + Ziffer extrahieren,
  Nummer nur bei wörtlicher Nennung übernehmen, sonst «zu verifizieren»; Verweis auf den
  neuen Artikel. Verschärft Rule `identifikatoren-verifizieren`.
- **Register:** INDEX (+1 unter «Zuteilung»). Gegenstück-Vermerk in
  `wissen/energie/wiki/energienachweis-zh.md` (Fallanwendung KISPI).

## 2026-06-04 — Gewerk SPR (Sprinklerplaner) ergänzt

- `wiki/auflagentypen-gewerkzuteilung.md`: neues Kürzel **SPR — Sprinklerplaner**
  (Fall 2619: Tim Harder, JOMOS Brandschutz AG) in die Kürzel-Tabelle aufgenommen.
- Zuteilungs-Matrix gesplittet: **Sprinkleranlage (II.26) → SPR** (wenn eigener
  Sprinklerplaner beauftragt ist; sonst SAN); Sanitär-Leitungsabschottung bleibt **SAN**.
  Erkenntnis: Sprinkler ist häufig ein eigenes Gewerk (Brandschutz-Spezialfirma),
  nicht Teil der Sanitärplanung.
- Generator `skills/auflagebereinigung/tools/build_auflagenliste.py`: SPR als Rubrik
  ergänzt, Sprinkler-Zeile von SAN nach SPR verschoben; XLSX 2619-KISPI neu exportiert
  (45 Deliverables, 8 Rubriken).

## 2026-06-04 — KB angelegt (Seed aus Fall 2619-KISPI)

- KB `auflagebereinigung` erstellt (CLAUDE.md, Ordner raw/ wiki/ outputs/).
- Quelle eingearbeitet: Vorabzug Bauentscheid Stadt Zürich, Projekt 2619-KISPI
  «Neue Psychosomatische Therapiestation für Jugendliche», Lenggstrasse 30, 8008 Zürich
  (33 Auflagen + Vorbemerkungen Ziff. II.1–3, kant. Verfügung BVV 26-1211 vom 18.05.2026).
- Seed-Artikel erstellt:
  - `aemter-stadt-zuerich.md` (Adressaten und Zuständigkeiten)
  - `auflagentypen-gewerkzuteilung.md` (Thema → Gewerk BRA/HLK/SAN/ELE/FKO/ARC/BAU)
  - `fristenlogik-bauentscheid-zh.md` (Einreichungszeitpunkte, Vorbemerkungen-Mechanik)
  - `brandschutz-auflagen-qss.md` (QSS-Stufen, Übereinstimmungserklärung, Integral-Test)
  - `vorgehen-auflagebereinigung.md` (JANS-Standardprozess + Plan-/Dokumentenliste)
- Output abgelegt: `outputs/2026-06-04_2619-kispi-plan-dokumentenliste.md`
  (Begleitnotiz zur generierten XLSX-Liste mit 45 Deliverables).
- INDEX.md und QUESTIONS.md initialisiert.
