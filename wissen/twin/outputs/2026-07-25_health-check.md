# Wissens-Health-Check: twin — 2026-07-25

Zweiter Health-Check dieser KB (erster: 2026-07-22). Seither: Batches 46/50/59–68 (Mail-Training)
und zehn Fidelity-Reviews (g/f/e/d/b/…) laut `CHANGELOG.md`. Geprüft: `wiki/{stimme,denken,haltung,
beziehungsregister,fachsignatur,arbeitsweise}.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (1668 Zeilen,
44 Fragerunden), `raw/_INGESTED.md` (71 registrierte Quelldateien), physischer Bestand `raw/*.md`.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (bereits getrackt, weiterhin offen) |
| B Kaputte Backlinks/Orphans | 3 (2 unveraendert seit 260722, 1 neu/verschärft: INDEX-Status) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 (schwerwiegend, seit 260722 nicht behoben, quantitativ verschlechtert) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 Klassen (ae/oe/ue-Substitution in Eigenprosa; vereinzelt ß in Eigenprosa) |
| G Promotion-Kandidaten | 2 (INDEX-Status-Hebung; mind. 2 als beantwortet dokumentierte QUESTIONS-Punkte nicht im Dokument markiert) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **RAW-Coverage bleibt der Kernbefund und hat sich verschlechtert:** von 71 in `raw/_INGESTED.md`
   registrierten Quelldateien liegen nur noch 26 (37 %) physisch in `raw/` — 45 fehlen (u.a. alle
   Batches 39–47, 54–68 bis auf zwei Ausnahmen). Der 260722 als "Top-Fund" mit "braucht dedizierten
   Lauf" geflaggte Root Cause wurde in drei Tagen intensivsten Trainingsbetriebs nicht angegangen;
   der Zähler ist konstant bei 26 geblieben, während der Nenner von 60 auf 71 gewachsen ist (43 %→37 %).
2. **Zwei Backlink-Defekte aus 260722 sind unverändert:** `arbeitsweise.md` verlinkt in seinem
   eigenen Frontmatter auf sich selbst (`links: [[denken]], [[arbeitsweise]]`); `QUESTIONS.md` Zeile
   1582 verlinkt `[[260607-kispi-korpus]]` auf eine raw-Datei statt einen Wiki-Artikel. Beide seit dem
   letzten Check identifiziert, keine Korrektur vorgenommen.
3. **`INDEX.md` ist seit dem 10. Juni nicht mehr angefasst worden** und zeigt für alle sechs Facetten
   weiterhin `*emerging*`, obwohl jeder einzelne Artikel im Frontmatter längst `status: established`
   trägt (seit mind. 260722 bekannt, ebenfalls unverändert). Zusätzlich sind mind. zwei in `QUESTIONS.md`
   Runde 260610 (#4 Design-Fachsäule, #5 Design-Honorarlogik) laut `CHANGELOG.md` 2026-07-19 explizit
   "durch Gold 3 belegt beantwortet" — im Dokument selbst stehen sie aber weiterhin unmarkiert unter
   "Offen".

## Details je Audit

### A. Widersprueche

- Kein neuer ungelöster Widerspruch zwischen den sechs Facetten gefunden. Die laufenden
  Fidelity-Reviews (zuletzt 260725g/f/e/d/b) bestätigen dies selbst wiederholt ("keine
  Facetten-Widersprüche").
- **Weiterhin offen (nicht neu, nicht doppelt geflaggt):** `QUESTIONS.md` "Gate 260724 #1" — Spannung
  zwischen [[stimme]] (Gesuch/Begehren ans Amt schliesst OHNE Service-Satz, Fidelity 260719) und
  [[arbeitsweise]] (Offert-Anfrage an Unternehmer schliesst MIT Service-Satz beim Übergeben von
  Material). Der `twin-chef` hat sie im Einzelfall aufgelöst (Service-Satz gestrichen), aber die
  allgemeine Regel für den reinen Nachfass bleibt unentschieden. Kein Handlungsbedarf jetzt, nur
  Fortbestand vermerkt.

### B. Kaputte Backlinks & Orphans

1. **`arbeitsweise.md` Frontmatter, Zeile 7:** `links: [[denken]], [[arbeitsweise]]` — Selbstlink,
   ergibt keinen Sinn als Backlink. Vorschlag: auf `[[beziehungsregister]]` oder `[[fachsignatur]]`
   korrigieren (beide verlinken aktuell nicht auf `arbeitsweise`, obwohl inhaltliche Überschneidungen
   bestehen, z.B. Fachsignatur↔Arbeitsweise bei Koordinationsmails).
2. **`QUESTIONS.md` Zeile 1582:** `## Beantwortet — Runde 260607 (aus KISPI-Korpus 2619,
   [[260607-kispi-korpus]])` — der Backlink zeigt auf eine raw/-Datei, nicht auf einen Wiki-Artikel.
   Verstösst gegen die Konvention `[[artikel-name]]` = Wiki-Dateiname. Vorschlag: als normale
   Klartext-Quellenangabe ohne Doppelklammern umschreiben, oder auf einen thematisch passenden
   Facetten-Artikel verlinken.
3. **`INDEX.md` (neu präzisiert, Kern seit 260722 bekannt):** Alle sechs Zeilen tragen `*emerging*`,
   obwohl alle sechs Artikel `status: established` führen (Frontmatter-Check bestätigt, siehe unten).
   Keine echten Orphans: jeder der sechs Artikel hat mind. einen eingehenden Backlink von einem
   anderen (stimme←haltung/beziehungsregister/fachsignatur; denken←haltung/fachsignatur/arbeitsweise;
   haltung←denken/beziehungsregister; beziehungsregister←stimme; fachsignatur←denken;
   arbeitsweise←stimme/denken, plus der fehlerhafte Selbstlink).

### C. Unbelegte Claims

- Stichprobe: pro Artikel die H2-Überschriften ohne Beleg-Hinweis im Titel selbst durchgesehen
  (stimme 6/137, denken 7/40, haltung 7/51, beziehungsregister 3/104, fachsignatur 4/80,
  arbeitsweise 8/109). Alle geprüften Fälle sind strukturelle Abschnitte ("Grundklang",
  "Do / Don't für den Zwilling", "Lücken → [[QUESTIONS]]"), die bereits belegte Unterpunkte
  zusammenfassen — keine neuen unbelegten Einzelclaims gefunden.
- Alle sechs Artikel führen ein vollständiges, sehr umfangreiches `sources`-Frontmatter-Feld
  (60–75 Einträge je Artikel); die Sourcing-Disziplin dieser KB ist hoch. Kein Finding.

### D. RAW-Coverage

- `raw/_INGESTED.md` registriert 71 eindeutige Quelldateinamen; physisch liegen 26 vor (`ls raw/*.md`,
  ohne `_INGESTED.md` selbst). 45 registrierte Dateien fehlen, u.a. `260610-mailbatch-02.md`,
  `260613...` bis `260713-mailbatch-39/40/41/42/43/45.md`, `260714-mailbatch-46/47.md`,
  `260715-mailbatch-54.md`, `260717…-mailbatch-55.md` bis `260725-mailbatch-68.md` (fast der gesamte
  Batch-54-bis-68-Bereich, also der intensivste Trainingsabschnitt der letzten drei Tage).
- Alle geprüften "fehlenden" Dateien werden trotzdem in mind. einem Wiki-Artikel als `sources`-Eintrag
  zitiert — die Inhalte sind also eingearbeitet, nur die Rohdatei selbst ist nicht mehr auffindbar
  (kein Coverage-Loch im Sinne von "nicht verarbeitet", sondern ein Bestandslücke im `raw/`-Ordner
  selbst). Root Cause vermutlich: die Mail-Training-Loops schreiben das Facetten-Wiki direkt, legen
  aber die "raw"-Markdown-Datei nicht zuverlässig physisch ab (SMB-Mount-Flatter, Rule 260725, ist ein
  plausibler Mitverursacher, erklärt aber nicht das systematische Muster über 45 Dateien).
- Stichprobe von 5 registrierten, physisch vorhandenen Dateien gegen die Wiki-Zitate geprüft
  (`260609-mailbatch-01.md`, `260612-mailbatch-04.md`, `260621-mailbatch-12.md`,
  `260714-mailbatch-48.md`, `260715-mailbatch-53.md`) — alle fünf werden in mehreren Artikeln als
  Quelle geführt. Kein Out-of-Scope-Fund.

### E. Veraltete Artikel

- Alle sechs Facetten-Artikel: `last_updated: 2026-07-25` (heute) — kein Alters-Finding.
- `INDEX.md` selbst wurde laut Dateisystem zuletzt am 10. Juni geändert, obwohl der Inhalt, den es
  indexiert, sich seither fundamental verändert hat (Status-Wechsel aller sechs Artikel). Bewusst
  unter B/G statt hier gezählt, da es kein Artikel mit `last_updated`-Feld ist.

### F. Schreibregel-Verstoesse

- Frontmatter vollständig und korrekt in allen sechs Artikeln (`title/status/last_updated/
  gewichtung/sources/links`).
- **ae/oe/ue-Substitution statt echter Umlaute in Claudes eigener Analyseprosa** (nicht in
  zitierten Original-Mails, dort ist der Wortlaut korrekt zu bewahren) — bestätigt eine bereits
  260722 gemeldete, weiterhin unbehobene Verstoss-Klasse. Belege: `stimme.md` Zeile 39 "fuer
  Dokumente und Folien", Zeile 142 "uebersteigerte Lach-Geste" (Abschnittstitel);
  `arbeitsweise.md` Zeile 778/779 "Durchreichen ueber eine Mittelsperson", "laeuft eine Anfrage
  ueber einen Vermittler" (beides Fliesstext, kein Zitat). Betrifft alle sechs Artikel in
  unterschiedlicher Dichte; Umfang gross genug, dass eine gezielte Korrekturrunde (Skill
  `korrektur`) sinnvoller ist als Einzel-Edits.
- **ß statt ss in Eigenprosa (vereinzelt):** `beziehungsregister.md` Zeile 1314 "nach der bloßen
  Rolle" — echter Verstoss (sollte "blossen" heissen). Die übrigen ß-Treffer in `stimme.md` (Zeilen
  79, 764, 803, 1535/1538/1588/1591) sind bewusst dokumentierte Markerbeispiele ("ß-Slip
  «Maßstabes»", "Mit freundlichen Grüßen" als belegter Fremdformat-Ausreisser) — dort ist ß Teil
  des zu beschreibenden Phänomens, kein Regelverstoss.
- Schweizer Hochdeutsch/keine dekorativen Symbole: keine Auffälligkeiten in der Stichprobe.

### G. Promotion-Kandidaten

1. **`INDEX.md` Status-Hebung fällig:** alle sechs Zeilen von `*emerging*` auf `*established*`
   heben — deckt sich 1:1 mit dem Artikel-Frontmatter und ist seit 260722 überfällig.
2. **QUESTIONS.md, Runde 260610, Punkte #4 und #5** (Design-Fachsäule / Design-Honorarlogik):
   laut `CHANGELOG.md`-Eintrag vom 2026-07-19 ("`twin-fidelity-review` Gesamt-Fidelity 88") explizit
   "durch Gold 3 belegt beantwortet" — im Dokument selbst (Zeilen 1507–1514) stehen beide weiterhin
   unmarkiert unter "## Offen — Runde 260610". Von den insgesamt 44 Fragerunden sind nur 6 Einzelfragen
   mit `~~...~~`-Strikethrough als beantwortet markiert (Runde 260723 #4, Runde 260717 #1); angesichts
   der Grösse der Datei (1668 Zeilen) ist plausibel, dass weitere in Fidelity-Reviews "beantwortete"
   Punkte ebenfalls nicht rückwirkend markiert wurden — hier nur stichprobenartig, nicht erschöpfend
   geprüft.

## Nicht behoben aus dem letzten Check (260722)

Alle vier damaligen materiellen Findings (RAW-Coverage-Lücke, 2 Backlink-Defekte, INDEX-Status,
durchgängige ae/oe/ue-Verstösse) bestehen unverändert fort; keines wurde in den drei
Tagen dazwischen bearbeitet (Phase 2 des Skills lief seither nicht interaktiv für diese KB).
