# CHANGELOG — Wissensbasis Auflagebereinigung

Jede Änderung des Bibliothekars, datiert, neueste zuoberst.

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
