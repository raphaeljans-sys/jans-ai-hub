# Trainings-Lauf 7 — KB Planungsgrundlagen

- **Datum:** 2026-06-20
- **Schwerpunkt-Domaene:** **Recht/Norm (PL-02)** — per Rotation (Run 6 war Energie, Run 5
  Kartenportale) und gemaess Empfehlung aus Run 6. Bearbeitet wurden die drei offenen B-Punkte:
  **B1** (fedlex-ELI-Mapping aller Bundeserlasse), **B2** (RPG 2 Bund + ZH-Umsetzung), **B3**
  (06_Richtlinien-Wegweiser).
- **Connector-Schritt:** nein (gilt nur fuer Kartenportale) — aber ein **Tooling-Fund**: der
  fedlex-Redirect-Endpunkt (s.u.).

## Ausgangslage
PL-02 war als Quellenlandkarte `established`, aber mit Luecken: ELI-Spalte zur Haelfte „via
fedlex SR-Suche" (unbelegt), RPG 2 nur als Datenstand-Notiz ohne Inhalt/ZH-Stand, und das
`06_Richtlinien`-Verzeichnis war nur erwaehnt, nicht erschlossen.

## Bearbeitete Selbstfragen
1. **B1 — Wie lautet je restlichem Bundeserlass die konsolidierte fedlex-ELI?** → **GELOEST.**
   Belegt via fedlex/lexfind-Suche: BehiG 151.3 `cc/2003/667`; NHG 451 `cc/1966/1637_1694_1679`
   (Aenderung **AS 2025 429**); NHV 451.1 `cc/1991/249_249_249`; GSchG 814.20
   `cc/1992/1860_1860_1860` (**Stand 01.08.2025** per PDF-A belegt); GSchV 814.201
   `cc/1998/2863_2863_2863`; LSV 814.41 `cc/1987/338_338_338` (Aenderung **AS 2023 582**);
   RPV 700.1 `cc/2000/310` (**Teilrevision AS 2025 659**).
2. **Gibt es einen stabilen SR→Fassung-Kurzweg ohne ELI?** → **JA, NEU:** fedlex-Redirect
   `https://www.fedlex.admin.ch/redirect/rs/<SR>/de` leitet auf die geltende konsolidierte Fassung
   (z.B. `…/redirect/rs/814.41/de` = LSV). Bestes Werkzeug, wenn nur die SR-Nummer bekannt ist.
3. **Verwechslung LSV/LRV?** → festgehalten: **LSV** (Laerm) = 814.41, **LRV** (Luft) =
   814.318.142.1 — Suchmaschinen werfen sie durcheinander; SR-Nummer ist der eindeutige Schluessel.
4. **B2 — Was bringt RPG 2 konkret und ab wann (Bund)?** → **GELOEST.** Etappen 01.01.2026
   (direkt anwendbares Bauen-ausserhalb-Bauzone) / 01.07.2026 (Abbruchpraemie + RPV-Teilrevision
   AS 2025 659, BR-Beschluss 15.10.2025). Kernmechanik: **max. 2 %** Zuwachs Gebaeude/versiegelte
   Flaechen ausserhalb Bauzone, Basis **29.09.2023**, sonst Kompensation; optionaler Gebietsansatz.
5. **B2 — Stand der ZH-Umsetzung?** → ZH passt **PBG + kantonalen Richtplan** an; direkt
   anwendbares Bundesrecht gilt bereits ab 01.01.2026, die **kantonale Umsetzung ist 2026-06-20
   noch in Erarbeitung** (kein Fertigstellungsdatum publiziert). ⚠ vor ZH-Projekt ausserhalb
   Bauzone aktuellen Stand auf zh.ch pruefen.
6. **B3 — Welche Richtlinien aus `06_Richtlinien` braucht ein ZH-Projekt typischerweise?** →
   **GELOEST.** Belegter Wegweiser-Block: BfU (Absturz/Glas/Treppen/Gelaender), Stadt ZH
   (Absturzsicherungs-Richtlinie + RFB-Flaechenerfassung + UGZ-Merkblaetter), Kanton ZH (AWEL,
   Wintergarten-Recht), Minergie, GVZ (Brandschutz → Skill `brandschutz`), 2000-Watt, Lignum,
   SWKI/Suissetec/SECO/Suva/VSA fachplaner-spezifisch.

## Geaendert
- `wiki/recht-norm-quellenlandkarte.md` (bleibt **established**, `last_updated` 2026-06-20):
  - SR→ELI-Tabelle **vollstaendig belegt** + Spalte „letzter belegter Stand / Aenderung";
    LSV/LRV-Verwechslungs-Hinweis.
  - fedlex-Bezugsschema um **Redirect-Endpunkt** und **AS-/OC-Fundstelle** erweitert; PDF-A-Beispiel
    GSchG 20250801; Hinweis, dass ELI-HTML JS-gerendert/nicht parsbar ist (WebFetch-Erfahrung).
  - **NEU Abschnitt „RPG 2 — Inhalt & ZH-Umsetzung"** (Bund-Etappen, 2%-Stabilisierung,
    Abbruchpraemie, ZH-Stand, Anbindung machbarkeit/nutzungsstrategie/ankaufspruefung).
  - **NEU Abschnitt „06_Richtlinien — Wegweiser"** (belegte Tabelle + Sicherheits-/Absturz-Trias).
  - „Offen"-Liste + Frontmatter-Quellen/Links aktualisiert.
- Register: `QUESTIONS.md` (B1 ✓, B2 ~, B3 ✓), `curriculum.md` (R5/R6/R7 neu ✓),
  `INDEX.md` (Artikel-Beschreibung), `raw/_INGESTED.md` (PL-02 Run 7 + 06_Richtlinien + Web RPG 2).

## Belegte Kernfakten (neu)
- **fedlex-ELI je SR** belegt (Tabelle oben) — Studien koennen jetzt direkt die datierte PDF-A
  bauen statt „SR-Suche".
- **fedlex-Redirect:** `redirect/rs/<SR>/de` → geltende Fassung (SR-Nummer genuegt).
- **RPG 2:** max. **2 %** Zuwachs ausserhalb Bauzone (Basis **29.09.2023**); Abbruchpraemie ab
  **01.07.2026**; RPV-Teilrevision **AS 2025 659** (BR 15.10.2025).
- **ZH:** RPG-2-Umsetzung (PBG + Richtplan) **noch in Erarbeitung** (Stand 2026-06-20).
- **GSchG** aktueller belegter Stand **01.08.2025**; **NHG** Aenderung AS 2025 429; **LSV**
  Aenderung AS 2023 582.

## Naechster Lauf
Rotation → **Brandschutz (PL-03)**. Offen C1: Verhaeltnis PL-03 ↔ Skill `brandschutz` festlegen
(duenner Verweis vs. eigener schlanker Wegweiser) — der neue `[[energie-pv-brandschutz]]` taugt
als Muster fuer einen PL-03-Wegweiser (Brandschutznachweis-Vorlagen brandschutznachweis.ch,
VKF-Struktur 2015). Danach wieder Kartenportale (Prioritaet **A5** ObjektwesenZH / **A6**
projektierter Zonen-Layer). Recht/Norm-Reste: LRV-ELI (814.318.142.1), ZH-PBG-RPG-2-Fassung bei
Publikation nachziehen, ggf. B3 vertiefen (06_Richtlinien je konkretem Projekt).
