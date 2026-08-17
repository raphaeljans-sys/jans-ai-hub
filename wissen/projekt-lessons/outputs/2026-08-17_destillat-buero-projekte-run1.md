# Destillat-Lauf `buero-projekte` — Run 1, 2026-08-17 07:12–07:20

Ziel-KB: `wissen/projekt-lessons` · Korpus-Spec: `skills/wissens-destillat/specs/buero-projekte-spec.md`
Protokoll: `skills/wissens-destillat/training/buero-projekte-lauf-20260817-0712.md`

## Ablauf

- **Phase 0 (Inventar, bash):** Stand vor Lauf 813 inventarisiert / 746 offen.
- **Phase 1 (Triage, Haiku, Budget 3 USD, 255 s):** 40 Zeilen triagiert — P1: 6, P2: 34,
  P3: 3, übersprungen: 6 (die Haiku-Ausgabe selbst zeigt eine kleine Summendifferenz,
  6+34+3=43≠40 — kosmetischer Zählfehler des Modells in der Abschlusszeile, ohne Auswirkung
  auf die tatsächlichen Inventar-Statusänderungen, die separat gegengeprüft wurden).
- **Phase 2 (Destillat, Sonnet, Budget 15 USD, 167 s):** die 5 verbliebenen `[t]`+P1-Zeilen
  bearbeitet (die sechste, `nerves_baukosten_v2.pdf`, war bereits im 05:34-Lauf destilliert
  und stand nicht mehr offen). Ergebnis: 1 destilliert, 4 als `[-]` verworfen.

## Destilliert

- **[[lorrainestrasse-2011-realisierungsphase-honorar-unpreist]]** — Quelle
  `1011_Lorrainestr_4/04_Kosten/00_Offerten/111118_Offerte_Jans_Back.docx` (Offerte Back Lukas
  & Raphael Jans an Maria Jans & Tom Bickel, 18.11.2011). SIA-102-Phasenofferte bepreist die
  vier Planungsphasen bis Ausschreibungsreife mit total 6'000.-, lässt die Realisierungsphase
  (Bauleitung, März–Mai 2012) mit einem blossen Strich unpreist; die parallele Stundenvariante
  für eine einzige Woche (6'720.-) kostet dabei mehr als die vier Planungsphasen zusammen.
  Status `emerging`.

## Verworfen (als `[-]`, mit Grund)

- `1011_Lorrainestr_4/02_Berichte/110104_Vermassungsgrundlage/101103_Schnitte_Treppenhaus_50.pdf`
  — reine Vermassungszeichnung, keine Entscheid-/Fehler-Story (Spec-Abgrenzung: Pläne sind
  Arbeitsergebnisse, keine Erfahrungsträger).
- `.../101103_Schnitte_Wohnung_50.pdf` — dito.
- `.../101110_Grundrissmasse_50.pdf` — dito.
- `1011_Lorrainestr_4/12_Schriftverkehr/Jans_Maria/in/090909_DOK_Vermietung_Ladenlokal_Lorrainestr_4.pdf`
  — trotz Inventar-Vermerk «Entscheidungskorrespondenz» eine reine Vermietungsbroschüre ohne
  Entscheid-/Konfliktgehalt.

## Phase 3 — Kurator (diese Session)

- **Beleg-Prüfung:** Quelle `111118_Offerte_Jans_Back.docx` per `textutil -convert txt`
  vollständig gegen den Artikel zurückgeprüft — alle Zahlen, Termine und die unpreiste Phase 5
  stimmen wortgetreu. BKP 291 gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert.
  Referenzierte Skills existieren im Hub. Keine unbelegte Aussage gefunden; die Ursache-Sektion
  («Bausumme zum Offertdatum noch nicht bekannt») ist eine aus denselben Quelldaten (Datum der
  Offerte vs. Enddatum der Ausschreibungsphase) zwingend ableitbare Folgerung, keine Erfindung.
- **Widerspruchs-Prüfung:** kein Konflikt mit bestehenden Artikeln oder den Nachbar-KBs
  `normen`/`baurecht`/`grobkosten`.
- **Promotion:** `emerging` bestätigt (nur ein Beleg, keine unabhängige Zweitquelle).
- **Verwebung:** Rückverweis in `nerves-2015-kv-nebengewerke-unterschaetzt.md` ergänzt
  (trug `links: []`, obwohl der neue Artikel bereits darauf zeigte) — beide Artikel teilen das
  Muster «Kostenposition ohne Mechanismus/Einzelofferte offen gelassen wird zum Problem».
  `INDEX.md` war bereits durch Phase 2 nachgeführt (7 Artikel gesamt, korrekt gezählt).
- **CHANGELOG.md** nachgeführt (eigener Kurator-Eintrag oberhalb des Phase-2-Eintrags).

## Delta

DELTA: JA — 1 neuer Artikel, 1 Rückverweis ergänzt, 4 Positionen begründet geschlossen.

## Offen für Folgelauf

Inventar-Stand nach diesem Lauf: 813 inventarisiert / 706 offen. Keine `[t]`+P1-Position mehr
offen; nächster Lauf destilliert aus den P2-Positionen dieser Triage-Tranche oder triagiert
weitere `[ ]`-Zeilen (Sektionen mit grossem Dateibestand laut Spec-Plan: `1318_Lorraine_Kueche`
262 Dateien, `1527_EH Europe GmbH` 229 Dateien, `1012_Ardez` 82 Dateien — noch ungeprüft).
