# Wissens-Health-Check: twin — 2026-07-01

Phase 1 (Audit + Ablegen), unbeaufsichtigt. KB `wissen/twin/` (digitaler Zwilling, sechs
Facetten-Wikis + QUESTIONS). Geprueft: WISSEN-CLAUDE.md, twin/CLAUDE.md, CHANGELOG.md,
wiki/QUESTIONS.md, raw/_INGESTED.md, alle sechs Facetten-Artikel, raw-Frontmatter, Outputs.

## Zusammenfassung

| Audit | Thema | Ampel | Findings |
|---|---|---|---|
| A | Widersprueche zwischen Facetten (+ QUESTIONS) | Gruen | 0 inhaltliche Widersprueche; QUESTIONS gepflegt, mehrere Teilantworten korrekt zurueckverlinkt |
| B | Kaputte Backlinks / Orphans / INDEX | Gelb | 1: INDEX-Status stimmt nicht mehr (labelt alle 6 als *emerging*, Artikel sind *established*). Backlinks alle aufgeloest, keine Orphans |
| C | Unbelegte Claims / speculative | Gruen | 0 unbelegte Marker; jeder Marker traegt Quelle + Gewichtung; kein `speculative` im Wiki |
| D | RAW-Coverage | Rot | 1 schwer: `260625-mailbatch-16.md` in 4 Artikeln als Quelle zitiert, existiert aber NICHT in raw/, fehlt in _INGESTED.md, hat keinen CHANGELOG-Lauf |
| E | Veraltete Artikel (last_updated < 2026-04-02 + neuere Quelle) | Gruen | 0; alle sechs Artikel last_updated 2026-07-01 |
| F | Schreibregel-Verstoesse | Gruen | 0; echte Umlaute durchgehend, Schweizer Hochdeutsch, die 3 «ß» sind Regel-Nennung + belegte Fluechtigkeits-Slips (kein Verstoss), Frontmatter vollstaendig |
| G | Promotion-Kandidaten / beantwortete QUESTIONS ins Wiki | Gelb | Facetten bereits `established`; mehrere QUESTIONS teil-/vollbeantwortet und im Wiki verankert, aber im QUESTIONS-Register noch als «Offen» gefuehrt |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Fehlende RAW-Quelle Batch 16 (Audit D, rot).** Die Datei `260625-mailbatch-16.md` wird von
   `stimme`, `beziehungsregister`, `fachsignatur`, `arbeitsweise` als Quelle gefuehrt, existiert
   aber physisch nicht in `raw/`, ist nicht im Ingest-Register `_INGESTED.md`, und es gibt keinen
   datierten CHANGELOG-Eintrag fuer einen Batch-16-Lauf (2026-06-25). Die zugehoerigen Marker (Gel,
   Frage-Nummerierung, warme PS, Teams-Traktanden, faire-Bezahlung-verifizieren, STWEG-Aufteilungsplan)
   liegen dennoch im Wiki, und drei weitere Batches verweisen «via Batch 16». Das ist eine
   Provenienz-/Register-Luecke: die Marker sind belegt-konsistent, aber ihre Quelle ist nicht
   auffindbar. Phase 2: entweder das Distillat `raw/260625-mailbatch-16.md` nachlegen (aus den im
   Wiki/CHANGELOG dokumentierten Batch-16-Inhalten) ODER _INGESTED-Zeile + CHANGELOG-Eintrag
   ergaenzen, damit die Quellenkette wieder geschlossen ist.

2. **INDEX-Status veraltet (Audit B, gelb).** `wiki/INDEX.md` labelt alle sechs Facetten noch
   `*emerging*`; jede Artikel-Frontmatter ist laengst `status: established`. INDEX auf `established`
   nachziehen (rein kosmetisch, aber der Health-Check-Anker fuer Reife stimmt sonst nicht).

3. **QUESTIONS-Hygiene (Audit G, gelb).** Mehrere Selbstfragen sind faktisch (teil-)beantwortet und
   im Wiki verankert (z.B. «Hoi vs. Hallo» via Batch 21 Register-Kuehlung, «– vs _ » via Fidelity
   260628, Gruss-Trigger laufend↔abschliessend via Fidelity 260630), stehen im Register aber noch
   unter «Offen». Beantwortete Fragen nach «Beantwortet» verschieben oder als TEILBEANTWORTET
   markieren (Muster ist in QUESTIONS #5 Runde 260622 bereits vorhanden), damit `twin-fragesteller`
   nicht doppelt fragt.

## Details je Audit

### A — Widersprueche zwischen Facetten (+ QUESTIONS)
- Kein inhaltlicher Widerspruch zwischen den sechs Facetten gefunden. Die frueher offenen Spannungen
  sind sauber aufgeloest und dokumentiert: «Du immer gross» vs. Spiegelungs-Kleinschreibung (als
  Ideal-vs-Echtheit, `korrektur` stellt her), Mundart vs. Schweizer Hochdeutsch (Hochdeutsch = Norm,
  Mundart nur privat-sozial), «–» als Listen-Bullet vs. «kein Gedankenstrich als Stilmittel» (explizit
  als nicht-widerspruechlich vermerkt in stimme.md).
- Das Gruss-Paradox ist ueber drei Facetten (stimme/beziehungsregister/QUESTIONS) konsistent gefuehrt:
  Geld/Beleg/Abwicklung → «Freundliche Gruesse»+Block; Angebot/Offerte → Kurzgruss; Projektabschluss-
  Dank → «Freundliche Gruesse». Keine Kollision.
- QUESTIONS: eine explizit vermerkte, bewusst offene Facetten-Spannung (260609, «Du immer gross» vs.
  Schnellregister) mit dokumentierter twin-chef-Arbeitsaufloesung — regelkonform (Spannungen nicht
  glaetten, sondern vermerken).

### B — Kaputte Backlinks / Orphans / INDEX
- Alle `[[…]]`-Backlinks loesen auf existierende Artikel auf (Ziele: stimme, denken, haltung,
  beziehungsregister, fachsignatur, arbeitsweise, QUESTIONS). Keine kaputten Backlinks.
- Keine Orphans: alle sechs Facetten sind aus INDEX.md verlinkt und untereinander cross-verlinkt.
- **Finding B1 (gelb):** `wiki/INDEX.md` fuehrt alle sechs Facetten mit ` · *emerging*`, waehrend
  jede Artikel-Frontmatter `status: established` traegt (in mehreren Faellen bereits seit den fruehen
  Fidelity-Laeufen). INDEX ist der veraltete Stand. Vorschlag: die sechs INDEX-Zeilen auf
  `*established*` setzen.

### C — Unbelegte Claims / speculative
- Stichprobe ueber alle sechs Artikel: jeder Stil-/Verhaltensmarker traegt eine Korpus-Quelle
  (Batch-/Fidelity-/Korpus-Referenz) und Datum, meist mit anonymisiertem Beleg-Schnipsel und
  Gewichtungsstufe. Kein Marker ohne Beleg gefunden.
- Kein Artikel/Marker mit `status: speculative` — es gibt im Wiki keine unbelegten Vermutungen, die
  auf Promotion warten. Die Echo-Schutz-Regel (AI-Paste als `claude-aera`-aequivalent ausschliessen)
  ist an allen vier belegten Faellen korrekt angewendet (Batch 09/10/14/21).

### D — RAW-Coverage
- **Finding D1 (rot):** Quelle `260625-mailbatch-16.md` ist in den Frontmatter-`sources` von
  `stimme.md`, `beziehungsregister.md`, `fachsignatur.md`, `arbeitsweise.md` gelistet, aber:
  - existiert NICHT als Datei in `raw/` (Sequenz raw/ springt von mailbatch-15 auf mailbatch-17);
  - ist NICHT im Ingest-Register `raw/_INGESTED.md` (das von 15 direkt auf 17 springt);
  - hat KEINEN datierten CHANGELOG-Lauf-Eintrag (2026-06-25 fehlt; die «Batch 16»-Marker erscheinen
    ohne eigenen Run-Header, werden aber von Batch 17/18/19 als «via Batch 16 abgedeckt» referenziert).
  Die Batch-16-Marker im Wiki (u.a. «Gel»/Vergewisserungspartikel, Frage-Nummerierung, warme PS nach
  dem Gruss, Teams-«Fragen Traktanden», faire-Bezahlung-des-Zuarbeiters-verifizieren, STWEG-Aufteilungs-
  plan amtliche Vorgabe) sind inhaltlich konsistent und mehrfach quer-referenziert — die Substanz wirkt
  echt eingearbeitet, nur die Quell-/Registerkette ist unterbrochen. Wirkung: Marker sind nicht bis zur
  raw-Quelle rueckverfolgbar; ein kuenftiger Coverage-Check kann Batch 16 nicht verifizieren.
- Uebrige RAW-Coverage sauber: die im Wiki zitierten Batches 01-15 und 17-21 sind jeweils entweder als
  raw-Distillat vorhanden ODER im _INGESTED-Register als «destilliert, keine Volltexte gehortet»
  gefuehrt (bewusste KB-Politik laut _INGESTED-Hinweis). Kein out-of-scope-Material in raw/.
- Sequentieller Sweep laut _INGESTED abgedeckt bis 2025-12-08; naechster Lauf ab 2025-12-09 — plausibel.

### E — Veraltete Artikel
- Alle sechs Facetten last_updated **2026-07-01** (heutiger Batch-21-Lauf). Kein Artikel aelter als
  die Schwelle 2026-04-02, keine neuere unverarbeitete raw-Quelle gegen einen alten Artikel. Nichts
  veraltet.

### F — Schreibregel-Verstoesse
- Echte Umlaute ä/ö/ü durchgehend korrekt; kein «ae/oe/ue»-Ersatz im Fliesstext der Artikel.
- «ß»: 3 Treffer, alle in `stimme.md` und regelkonform: (1) Zeile 69 nennt «ß» als verbotenes Zeichen
  im Don't-Block; (2)+(3) dokumentierte Fluechtigkeits-Slips («Maßstabes»/«Massstabes») explizit als
  Echtheits-Beleg mit dem Vermerk «`korrektur` setzt Massstabes». Kein eigener Schreibverstoss.
- Schweizer Hochdeutsch (ss statt ß in der Autoren-Prosa) eingehalten; keine Deko/Emoji in der
  Artikel-Prosa (die zitierten 😊/:)/;)) sind belegte Marker im Zitat, kein Layout-Schmuck).
- Frontmatter vollstaendig und schema-konform (title/status/last_updated/gewichtung/sources/links) in
  allen sechs Artikeln; Zusatzfeld `gewichtung` gemaess twin/CLAUDE.md vorhanden.

### G — Promotion-Kandidaten / beantwortete QUESTIONS
- Alle sechs Facetten sind bereits `established` — kein emerging→established-Promotion offen (der
  INDEX-Fix B1 zieht nur die Anzeige nach).
- **Finding G1 (gelb):** Im QUESTIONS-Register stehen mehrere faktisch (teil-)beantwortete Fragen noch
  unter «Offen», obwohl die Antwort im Wiki verankert ist:
  - Runde 260630 #1 (Gruss laufend↔abschliessend) — im Wiki via Fidelity-260630-Abschnitt in stimme.md
    beantwortet (dokumentierend → «Freundliche Gruesse»).
  - Runde 260628 #1 («– vs _ » bewusst) — via stimme.md-Abschnitt «–-Bullet = geschlossene
    Alternativfrage» beantwortet.
  - «Hoi vs. Hallo» (mehrere Runden) — via Batch-21-Abschnitt «Hallo = Register-Kuehlung im Du»
    teilbeantwortet.
  Vorschlag Phase 2: diese Eintraege nach «Beantwortet» verschieben bzw. als TEILBEANTWORTET markieren
  (Muster existiert bereits bei QUESTIONS Runde 260622 #5), damit `twin-fragesteller` nicht redundant
  nachfragt und das Register den echten Wissensstand spiegelt.
- Kein Output seit dem letzten Check enthaelt promotionsreifes, noch nicht ins Wiki geflossenes Material
  (die Fidelity-Outputs 260609…260630 sind durchgehend in die Facetten eingearbeitet, wie CHANGELOG +
  Frontmatter-sources belegen).

---
Hinweis Phase-1-Grenze: Es wurden KEINE Aktionen ausgefuehrt. Nur dieser Report + der CHANGELOG-Einzeiler
wurden geschrieben. raw/ unberuehrt, wiki/ nur gelesen. Die Findings B1/D1/G1 sind Phase-2-Aufgaben
(interaktiv).
