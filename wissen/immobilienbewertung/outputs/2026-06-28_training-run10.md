# Training-Run 10 — Immobilienbewertung (2026-06-28)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Seit Run 6 galten der Wuest-Kurs
und alle lesbaren E-Quellen als eingearbeitet; Run 8/9 liefen im reinen Synthese-/Aktualisierungs-
Modus. **Run 10 hat geprueft, ob es noch echtes ungelesenes Quellmaterial gibt — und ist fuendig
geworden:** drei im RAW-Register als `offen`/`teilweise` gefuehrte Quellen sind **nicht**
freigabegebunden (die Freigabe-Sperre D4 betrifft nur die `.xlsx`-Tools). Damit war ein
quellenbasierter Lauf statt reiner Synthese moeglich.

## Ausgangslage

Offen waren laut Run-9-Ausblick: D4 (XLSX-Tool-Formeln, Freigabe), D8 (`_Kennwerte Jans.docx` +
Healthcare-DOCX, Freigabe), T17 (realer Healthcare-Fall) und der D3-Rest (JANS-Faustregeln). Beim
Pruefen der `offen`-Quellen im RAW-Register zeigte sich: die **Kursnotizen-Fotos**, der Ordner
**03 Abzinsung/Disskontierung** (DOCX + Screenshots) und die **SIA-416-Norm-PDF** waren nie
vollstaendig gelesen — und sie sind frei lesbar. Genau diese drei wurden ingestiert.

## Die 10 Themen dieses Laufs

| # | Thema | Quelle | Ziel-Artikel |
|---|---|---|---|
| 1 | **Diskontsatz-Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (belegt) | 231231 DOCX (R. Jans 31.12.2023) | ertragswert-dcf |
| 2 | **Betriebskosten-Pauschale 2.5 %=5×0.5 %** (Verwaltung/Versich./Versorgung, IH, IS, Leerstand, Liegenschaftssteuer) | 231231 DOCX | ertragswert-dcf |
| 3 | **Belegte Rechenkaskade** Residualwert←Ertragswert←Nettoertrag←Mietertrag + worked example Einsiedeln | 231231 DOCX | ertragswert-dcf |
| 4 | **Abzinsungsformel** W0=Wn/(1+i)^N bzw. K0=Kn/q^N (Diskontierungsfaktor 1/q^N) | 231231 DOCX | ertragswert-dcf |
| 5 | **Healthcare-Diskontsatz-Anker** (Pflege 4-8 %, 5-7 % gerechtfertigt; JANS-Arbeitsnotiz) | Disskontierung.docx | ertragswert-dcf |
| 6 | **SIA-416:2003-Flaechenhierarchie** kanonisch (GSF/GF/NGF/NF/HNF/NNF/VF/FF/KF/AGF, Ziffern + Definitionen) | SIA-416-PDF S. 8-13 | flaechendefinitionen-sia |
| 7 | **Abgrenzung Norm 0.1**: aGF/BGF/Baumassen-Volumen/EBF sind KEINE SIA-416-Begriffe | SIA-416-PDF S. 6 | flaechendefinitionen-sia |
| 8 | **Volumen GV/NGV/KV/AKV** (GV aus GF×Hoehe ohne Zu-/Abzuege; Bezug CHF/m3-Kennwerte) | SIA-416-PDF S. 14-15 | flaechendefinitionen-sia, realwert-sachwert |
| 9 | **Miet-/STWE-Flaechen FSN/FGN** + Wohnungsbau-Beispiele NNF/VF/FF (Bruecke stockwerkeigentum) | SIA-416-PDF S. 9-13 | flaechendefinitionen-sia |
| 10 | **Kursnotizen** IMG_7064-67: Anfangsrendite=Mietertrag/Kaufpreis, 30 % Land/8 % Risikomarge, WP-Pre-Check-Tool-Layout (D4-Teilbeleg) | Kursnotizen-Fotos | ertragswert-dcf, residualwertmethode |

## Was gelernt / belegt wurde (Kerngehalt)

- **Die D3-«Bring-Schuld» war teils bereits in den Akten.** Raphaels eigene datierte Notiz vom
  31.12.2023 belegt die **Wohnbau-Diskontsatz-Faustregel** schwarz auf weiss: 2.5 % = 2.0 %
  Kapitalverzinsung + 0.5 % Abschreibung. Damit ist der in den realen LB/MA-Faellen gelebte
  2.50 %-Satz nicht mehr nur ein Anker, sondern **additiv hergeleitet** — und deckt sich exakt mit
  dem Schaetzungsanleitungs-Aufbau (Basiszins + B/U/V + A + R). Die bisher *Annahme*-markierte
  Bottom-up-Tabelle ist fuer Wohnbau jetzt von JANS-Seite kalibriert.
- **Neuer belegter Kennwert: JANS-Betriebskosten-Pauschale 2.5 %**, sauber in 5×0.5 % zerlegt.
  Wichtig sauber eingeordnet: das ist der **Schnellansatz** der fruehen Studie; die reifen
  Gutachten rechnen differenziert (4.5-6 % Soll-Ertrag, IH/IS in CHF/m2). Zwei Detaillierungs-
  stufen, kein Widerspruch — explizit so vermerkt.
- **Healthcare-Diskontsatz hat jetzt einen JANS-Anker** statt reiner Spekulation: Pflegeimmobilien
  4-8 %, risikoarm/nicht-konjunkturabhaengig → 5-7 % gerechtfertigt. **Bewusst zurueckhaltend
  eingeordnet:** die Notiz ist teils KI-gestuetzt, in EUR und mischt nominale/EK-Renditegroessen,
  liegt deshalb hoeher als die CH-real-Zeile (~3.0-4.0 %). Verwendung nur als Plausibilitaets-Anker,
  nicht als Ansatz; Healthcare-Zeile von *speculative* auf *emerging* gehoben. Realer CH-Fall (T17)
  bleibt offen.
- **`flaechendefinitionen-sia` ist jetzt normverankert statt abgeleitet.** Die kanonische
  SIA-416:2003-PDF ersetzt die vorher teils umgangssprachliche Begriffstabelle durch die exakte
  Hierarchie mit Codier-Ziffern. Wichtigste Korrektur: **BGF/aGF sind keine SIA-416-Begriffe** —
  die Norm sagt **GF** (geometrisch), BGF/aGF sind baurechtlich (Ausnuetzung), EBF energetisch.
  Das verhindert die haeufige Verwechslung von bewertungs- und baurechtlichen Flaechen.
- **GV-Volumenbegriff geschaerft:** SIA-416-GV wird **ohne** Zu-/Abzuege gerechnet (Realvolumen);
  aeltere CHF/m3-Tabellen nutzen teils den SIA-116-Begriff (mit Zuschlaegen) → bei Kennwert-
  Anwendung Volumenbegriff abgleichen. Cross-Link zu realwert-sachwert / grobkosten-onepager gesetzt.

## Geaenderte Artikel

- `wiki/ertragswert-dcf.md` → zwei neue belegte Sektionen (**JANS-Diskontsatz-Dekomposition +
  Betriebskosten-Pauschale**, **Healthcare-Diskontsatz-Anker**); Healthcare-Zeile der konsolidierten
  Tabelle aktualisiert (*speculative*→*emerging*); Frontmatter-Quellen + Offen-Log + last_updated 06-28.
- `wiki/flaechendefinitionen-sia.md` → Kernbegriffe auf kanonische SIA-416-Hierarchie (mit Ziffern)
  umgestellt, Abgrenzung 0.1 ergaenzt, Wohnungsbau-Beispiele NNF/VF/FF, Volumen-Hierarchie
  GV/NGV/KV/AKV, Miet-/STWE-Flaechen FSN/FGN; Frontmatter + last_updated 06-28.
- Register: `raw/_INGESTED.md` (3 Quellen → eingearbeitet, Stand Run 10), `training/curriculum.md`
  (E8 ✓), `wiki/wissensluecken.md` (D3 → niedrig + Erledigt), `wiki/INDEX.md` (Deskriptoren),
  `CHANGELOG.md` (Run 10 zuoberst).

## Datenstand / Vorbehalte

- 231231-DOCX und Disskontierung.docx sind JANS-interne Arbeitsnotizen (Stand 2023); die
  Wohnbau-Dekomposition und Betriebskosten-Pauschale sind als JANS-Faustregeln belegt, der
  Healthcare-Anker bewusst nur als Plausibilitaets-Hinweis (nominal/europaeisch) markiert.
- SIA 416 ist die Ausgabe **2003** (weiterhin gueltige Norm); die Begriffshierarchie ist stabil.
- Kursnotizen-Foto IMG_7067 (WP-Pre-Check-Tool-Ausdruck) belegt nur die **Block-Struktur** des
  Tools, nicht die Formeln/Zahlen (zu klein/unscharf) — D4 bleibt fuer die Formel-Logik offen.
- Marktpuls unveraendert seit Run 9 (2026-06-26, vor 2 Tagen): SNB 0.00 %, Referenzzins 1.25 %,
  10-j Eidgenoss ~0.32-0.40 %. Kein redundanter Web-Abruf.

## Was als naechstes (Run 11)

- **T17** Healthcare-Bewertungs-Bruecke zu `healthcare-wirtschaftlichkeit` (realer CH-Pflegeheim-/
  Klinik-Bewertungsfall, sobald vorhanden) — schliesst die letzte *emerging*-Healthcare-Zeile.
- **D3-Rest:** Gewerbe-Feinabstufung des Diskontsatzes je Mietersegment (Bring-Schuld Raphael).
- **D4 / D8** Freigabe-gebundene Quellen (XLSX-Tool-Formeln; `_Kennwerte Jans.docx` + Healthcare-DOCX).
- **T10 laufend:** naechste Referenzzins-Publikation **01.09.2026**, SREBI Q2-2026 (~09.2026),
  BFS-Baupreisindex Apr-2026-Detailwerte.
- Pruefen, ob in `04 Marktpreise` / `06 Kennwerte` weitere frei lesbare (nicht-DOCX) PDFs/PNGs
  ungenutzt sind — analog zum Run-10-Befund bei den `offen`-Quellen.

## Quellen (diesem Lauf)

- `IMMO-03 KNOW-HOW/03 Abzinsung/Disskontierung/231231_Residualwert und Diskontierung.docx`
  (R. Jans, 31.12.2023)
- `IMMO-03 KNOW-HOW/03 Abzinsung/Disskontierung/Disskontierung.docx` (Healthcare-Diskontsatz-Notiz)
- `IMMO-03 KNOW-HOW/07 FLÄCHENBEZEICHNUNG/sia/416_2003_dfi.pdf` (SN 504 416, SIA 416:2003, S. 6-15)
- `IMMO-03 KNOW-HOW/05 Residualwert/Kursnotizen/IMG_7064-7067.jpeg` (handschriftliche Kursnotizen)
