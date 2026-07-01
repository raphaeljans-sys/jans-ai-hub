# Wissens-Health-Check: immobilienbewertung — 2026-07-01

Phase-1-Audit (unbeaufsichtigt, keine Aktionen). Auditiert: 26 Wiki-Artikel (davon 12
Gemeinde-Marktblaetter), 10 Outputs, `raw/_INGESTED.md`, `training/`, CHANGELOG.
Bezugsdatum: 2026-07-01. Referenz letzter Check: keiner in `outputs/` (Erst-Health-Check).

## Zusammenfassung

| Audit | Thema | Findings | Ampel |
|---|---|---|---|
| A | Widersprueche zwischen Artikeln / QUESTIONS-Spannungen | 1 (intern, tolerierbar) | gruen-gelb |
| B | Kaputte Backlinks / Orphans / nicht im INDEX | 2 | gelb |
| C | Unbelegte Claims / speculative belegt? | 0 harte; Quellenpflicht vorbildlich | gruen |
| D | RAW-Coverage | 0 (alle offenen Quellen als Gap registriert) | gruen |
| E | Veraltete Artikel / stale last_updated | 1 (gewichtig: Run-11-Edit ohne Nachfuehrung) | gelb-rot |
| F | Schreibregel-Verstoesse | 2 (beide minor) | gruen-gelb |
| G | Promotion-Kandidaten / beantwortete QUESTIONS | 1 | gruen |

Gesamtbild: **gesunde, aussergewoehnlich gut belegte KB**. Kein einziges `ß`, keine
Deko-Symbole, jeder Kennwert traegt Quelle+Stand, keine Orphans, INDEX vollstaendig. Der
einzige echte Handlungspunkt ist ein **undokumentierter Run-11-Edit** (Prozessleck, wie schon
bei Run 7) plus zwei formal falsch gesetzte `[[Backlinks]]`.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Run 11 (30.06.2026) hat editiert, aber nicht protokolliert.** `wiki/ertragswert-dcf.md`
   wurde am 30.06. 17:15 geaendert (neue 10-j-Eidgenoss-Zahl 0.24 % «Stand Run 11 2026-06-30»),
   aber `last_updated` steht weiter auf 2026-06-28, es gibt **keinen CHANGELOG-Eintrag** und
   **kein `outputs/2026-06-30_training-run11.md`**. Exakt dasselbe Leck wie bei Run 7 (dort im
   CHANGELOG nachgetragen). Der Trainings-Loop sichert per `nas-selfcommit`, schreibt aber nicht
   zuverlaessig Changelog+Output — wiederkehrendes Muster.

2. **Zwei formal falsch gesetzte `[[Backlinks]]`** zeigen ins Leere (kein Wiki-Artikel):
   `[[healthcare-wirtschaftlichkeit]]` (in `zh-wald-8636.md`, Frontmatter + 2x Body) ist ein
   **Skill**, kein Artikel dieser KB; `[[outputs/2026-06-09_...]]` (in `sz-wangen-8854.md`) zeigt
   in einen Output. Beide sollten Klartext-Verweise sein statt Wiki-Backlink-Syntax.

3. **Frontmatter-Inkonsistenzen in den Gemeinde-Blaettern** (minor): `kanton:` mal «Zuerich»
   mal «Zürich» (2x vs 5x), und `plz: 8136` bei Thalwil (Filename/Title/README fuehren den
   Hauptort **8800**). Beides kosmetisch, aber die KB betont maschinenlesbare Marktblaetter —
   einheitlich waere sauberer.

## Details je Audit

### A. Widersprueche zwischen Artikeln

- **`wiki/ertragswert-dcf.md` (intern, tolerierbar).** Das risikofreie Basisniveau steht in
  drei Auspraegungen im selben Artikel: Zeile 185/196 «~0.24-0.40 %» bzw. «~0.3 %» (Run 11),
  Zeile 443 «~0.35 %, Juni 2026» (Run-9-Rueckblick). Kein echter Widerspruch, weil jede Zahl
  datiert/laufbezogen ist und die belegten Diskont-Zeilen laut Text ohnehin am unteren Band
  liegen. **Vorschlag:** beim naechsten Lauf die Run-9-Prosa (0.35 %) auf den aktuellen
  Run-11-Wert (0.24-0.40 %) harmonisieren oder als «Run 9 / Run 11»-Historie kennzeichnen.
- **`wiki/ertragswert-dcf.md` — 2.5 % vs. 2.70 % Diskontierung**: bewusst als «zwei
  Detaillierungsstufen, kein Widerspruch» aufgeloest (Zeile 259-262: Pauschale fuer Onepager,
  Quote fuers Gutachten). Sauber begruendet, kein Finding.
- QUESTIONS: die KB nutzt `wissensluecken.md` statt `QUESTIONS.md`. Keine neuen ungeloesten
  Spannungen; die Gaps sind konsistent gepflegt (D3 heruntergestuft, T17 offen).

### B. Kaputte Backlinks / Orphans / INDEX

- **`wiki/marktdaten-gemeinden/zh-wald-8636.md`** — `[[healthcare-wirtschaftlichkeit]]` steht im
  Frontmatter `links:` (Zeile 11) und 2x im Body (Zeile 103, 119). Ziel ist **kein Wiki-Artikel
  dieser KB**, sondern der gleichnamige Skill. **Vorschlag:** als Klartext ``Skill
  `healthcare-wirtschaftlichkeit` `` schreiben (so wie es `ertragswert-dcf.md` Zeile 300 bereits
  korrekt tut), den `[[…]]`-Backlink entfernen.
- **`wiki/marktdaten-gemeinden/sz-wangen-8854.md`** (Zeile 114) —
  `[[outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen]]` zeigt in `outputs/`, nicht auf einen
  Wiki-Artikel. Backlinks sind laut Meta-Schema fuer Wiki-Artikel reserviert. **Vorschlag:**
  Klartext-Verweis «(Report `outputs/2026-06-09_...`)» statt Backlink.
- **Orphans:** keine — jeder der 14 Kern-Artikel ist mind. einmal Backlink-Ziel.
- **INDEX:** vollstaendig — alle 26 Artikel gelistet, keine Karteileiche.
- Piped Link `[[erfolgsfaktoren-wettbewerb|Erfolgsfaktoren]]` (`nutzungskonzepte.md` Zeile 109)
  loest korrekt auf — **kein** Finding.

### C. Unbelegte Claims / Belegpflicht

- **Kein harter Verstoss.** Stichprobe ueber die kennwertdichtesten Artikel (`ertragswert-dcf`,
  `realwert-sachwert`, `residualwertmethode`, Gemeinde-Blaetter): jeder Diskontsatz, jede
  Kapitalisierung, jeder Bodenpreis und jede Miete traegt Quelle **und** Stand. Heikle
  Annahmen sind konsequent inline als `*Annahme*` markiert (z.B. Illiquiditaetspraemie +1.6-1.9 Pp,
  Healthcare-Zeile ~3.0-4.0 %). Das ist die von `CLAUDE.md` geforderte «Quellenpflicht (streng)»
  in Reinform.
- **`status: speculative`**: existiert kein einziger Artikel (alle 26 `established`). Die einzige
  unbelegte Zeile — der Healthcare-Real-Diskontsatz — ist **innerhalb** von `ertragswert-dcf`
  sauber als `*emerging* / *Annahme*` deklariert und mit T17 als offene Bring-Schuld verknuepft.
  Kein Verstoss, aber siehe F (Artikel-Status vs. Abschnitts-Reife).

### D. RAW-Coverage

- **Sauber.** `raw/_INGESTED.md` fuehrt jede Quelle mit Stand `offen/teilweise/eingearbeitet`.
  Alle `offen`/`teilweise`-Eintraege sind als benannte Gap registriert und **nicht** aus dem
  Wiki heraus als belegt zitiert: Pre-Check-Tool + Residualwert-Tool `.xlsx` (offen → Gap **D4**,
  Freigabe-blockiert), Marktpreise/Bodenpreise/Kennwerte (teilweise → **D2/D5/D6/D7/D8**). Keine
  «zitiert-aber-nicht-eingearbeitet»- und keine «eingearbeitet-aber-nirgends-genutzt»-Luecke.
- Out-of-scope-Befund korrekt dokumentiert: kein Healthcare-Bewertungsfall im Bewertungsordner
  (T16/T17) → bewusst an Skill `healthcare-wirtschaftlichkeit` delegiert.

### E. Veraltete Artikel

- **`wiki/ertragswert-dcf.md` (gewichtig).** Datei-mtime **30.06.2026 17:15**, Frontmatter
  `last_updated: 2026-06-28`. Der Body enthaelt einen datierten Run-11-Einschub (Zeile 185-190,
  «Stand Run 11 2026-06-30», 10-j Eidgenoss 0.24 %), der weder im `last_updated` noch im
  CHANGELOG noch als Output erscheint. **Vorschlag (Phase 2):** `last_updated` auf 2026-06-30
  ziehen, CHANGELOG-Eintrag Run 11 nachtragen, `outputs/2026-06-30_training-run11.md` anlegen —
  analog dem Run-7-Nachtrag.
- **Keine inhaltlich ueberholten Artikel.** Die aeltesten `last_updated` (03.06. datenquellen-registry,
  10.06. mehrere) betreffen Methodik-Artikel, deren Quellen (Wuest-Kurs 2023, Schaetzungsanleitung
  2003, SIA 416:2003) stabil sind; keine neuere Quelle liegt vor, die sie ueberholen wuerde. Die
  Gemeinde-Blaetter mit UBS-FS-Stand > 18 Mt. tragen alle korrekt das `⚠`-Aktualitaetsflag (Gap D1).

### F. Schreibregel-Verstoesse

- **Kein `ß`** irgendwo (Konvention erfuellt). **Echte Umlaute** ä/ö/ü durchgaengig im Prosa-Text.
  **Keine** Deko-/Emoji-Symbole; nur die KB-konventionellen `⚠` (Aktualitaet) und `✓` (erledigt).
- **Frontmatter-Feld `kanton:` uneinheitlich (minor):** «Zuerich» (zollikon, langnau) vs. «Zürich»
  (wald, waedenswil, maur, thalwil, regensdorf). Innerhalb strukturierter Metadaten sollte **eine**
  Schreibweise gelten. **Vorschlag:** auf «Zürich» (echte Umlaute, wie 5 der 7 ZH-Blaetter)
  vereinheitlichen.
- **Frontmatter `plz:` bei Thalwil (minor):** `plz: 8136` widerspricht Filename/Title/README
  (Hauptort **8800**). Der Body erklaert die Spanne «8136…8801 (Hauptort 8800)» korrekt, aber das
  maschinenlesbare Feld sollte den Hauptort 8800 fuehren. **Vorschlag:** `plz: 8800`.
- **Artikel-Status-Granularitaet (Beobachtung, kein Verstoss):** alle 26 Artikel `established`,
  obwohl `ertragswert-dcf` einen `*emerging*`-Abschnitt (Healthcare) enthaelt. Legitim (Artikel-
  Status = Gesamtreife), nur als Hinweis vermerkt.

### G. Promotion-Kandidaten / beantwortete QUESTIONS

- **Beantwortete Gap:** die Healthcare-Diskontsatz-Zeile wurde in Run 10 von *speculative* auf
  *emerging* gehoben (belegt aus `Disskontierung.docx`), sauber mit T17 als Rest-Gap verknuepft —
  korrekt dokumentiert, kein Handlungsbedarf.
- **Promotion-Kandidat:** `nutzungskonzepte.md` ist im INDEX als *emerging* gefuehrt (Zeile 43),
  traegt aber im Frontmatter bereits `status: established` (Modul 2 des Wuest-Kurses vollstaendig
  eingearbeitet + DXMA-Fallbeispiele). **Vorschlag (Phase 2):** INDEX-Zeile von *emerging* auf
  *established* nachziehen — reine INDEX/Artikel-Status-Synchronisation.
- Keine weiteren reifen Output-Report-Inhalte, die noch nicht ins Wiki zurueckgeflossen waeren
  (Compounding-Loop laeuft; die Trainings-Runs 5-10 haben ihre Erkenntnisse jeweils in die
  Kern-Artikel verdichtet).
