# Wissens-Health-Check: projekt-lessons — 2026-09-01

## Methode dieses Laufs

Nachtschicht Mac Mini, Phase 1 (Audit + Report, unbeaufsichtigt) — keine Phase-2-Aktionen.
Basis: Letzter Health-Check 2026-08-25 (A0·B2·C0·D2·E0·F3·G1) sowie CHANGELOG-Einträge bis
inkl. 2026-08-28 (Wissens-Chef Run 46). Gelesen: WISSEN-CLAUDE.md, KB-CLAUDE.md, CHANGELOG,
QUESTIONS.md, raw/_INGESTED.md, alle 14 Wiki-Artikel (Frontmatter + Titel + stichprobenartige
Volltext-Verifikation), INDEX.md, outputs/ seit 25.08.2026. Scripts: `wiki-konsistenz.sh`
(2 tote Links in QUESTIONS), `fehloffen-waechter.py` (0 Befunde).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 2 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 3 |
| G Promotion-Kandidaten | 1 |

**ΔChange gegenüber 2026-08-25:** keine neuen Befunde; bekannte Punkte teilweise behoben:
- **Behoben (Run 46, 28.08.):** BKP-Notations-Fund «274.01» berichtigt; Schwester-Report-Verweis
  in grobkosten-KB gesetzt; tote Wikilinks in `outputs/` identifiziert (PL46-2, nicht selbst
  gelöst)
- **Bestätigt:** RAW-Register bleibt strukturell veraltet; Orphans isoliert, aber korrekt;
  Frontmatter-Drift und Statistik-Lücke in INDEX.md unverändert

## Top-3 (Raphaels Aufmerksamkeit)

1. **RAW-Register ist strukturell veraltet — neue KB-Logik nicht abgebildet.** Das Ingest-Register
   `raw/_INGESTED.md` führt nur die zwei KISPI-Mail-Threads (260729, 260803), obwohl 12 der 14
   Wiki-Artikel aus dem völlig anderen Korpus `buero-projekte` stammen (Destillation über
   `skills/wissens-destillat/`, Quelldateien unter `/Volumes/daten/04_Buero/02_Projekte/...`).
   Diese Quellen liefen nie durch `raw/`, daher auch nie ins Register. Das ist **kein
   Fehler** des Bibliothekars (Herkunft ist sauber dokumentiert in CHANGELOG/KORPUS-QUEUE), aber
   es heisst: **Audit D («jede raw/-Datei in einem Artikel?») deckt nur einen kleinen Bruchteil
   der wahren Quellbasis ab.** Empfehlung für künftig: CLAUDE.md erweitern um Zweikammer-
   Ingest-Logik (direkter raw/ UND Wissens-Destillat-Fanout).

2. **BKP-Konvention-Drift behoben, Notation bleibt vermischt.** Run 46 (28.08.) korrigierte die
   Schreibweise «BKP 274.01» → «LOS_235.21» (bürointerne Los-Nummer, kein BKP-Code). Das ist
   richtig, aber das Frontmatter `bkp:`-Feld im selben Artikel nennt weiterhin «BKP 274» —
   technisch korrekt (274 existiert als BKP-Code), aber direkt neben der korrigierten
   Schreibweise ungeordnet. Kein neuer Fehler, aber ein Hinweis auf unvollständige
   Korrektur-Schritte.

3. **Promotion-Kandidat wartet auf Handentscheid:** Mahnkaskaden-Muster ist jetzt zweifach
   unabhängig belegt (`kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087` + 
   `eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag`), beide sind wechselseitig verlinkt,
   beide `emerging` — die Regel «nie ohne echten Zweitbeleg heben» ist erfüllt. Nach demselben
   Massstab wie bei Nerves-KV-Artikel könnte hier (a) einer auf `established` gehoben werden, oder
   (b) ein übergeordneter Muster-Artikel geschaffen werden. Keine Phase-1-Aktion, aber Kandidat-Status bewahrt.

## Details je Audit

### A. Widersprüche

**Befund:** 0 Widersprüche.

Diese KB löst thematische Überlappungen aktiv auf (explizite Backlinks statt Schweigen,
datierte Korrektur-Blöcke mit Lauf-Nummer). Keine zwei Artikel behaupten gegenläufige
Tatsachen zum selben Sachverhalt, ohne dass der jüngere den älteren aufnimmt. Zu Punkt 2
der Top-3 (BKP-Notation): das ist eine Konsistenz-Frage, keine inhaltliche Spannung.

### B. Kaputte Backlinks & Orphans

**Kaputte Backlinks:** 0
- Alle 58 `[[...]]`-Vorkommen in wiki/*.md / INDEX.md / QUESTIONS.md wurden gegen die
  Dateinamen geprüft (`grep -no` + Abgleich). Keine Diskrepanz.
- Die drei KB-übergreifenden Ziele (`negative-vorwirkung-und-bzo-revision` in wissen/baurecht,
  `bauausfuehrung-und-baukontrolle` in wissen/baurecht, `gvz-einreichung-bma-sprinkler` in
  wissen/auflagebereinigung) existieren alle.

**Orphans:** 2 (unverändert seit 25.08.2026)
- `kispi-lbw-rohdichte-800.md` (established) — nur aus INDEX verlinkt, kein anderer Artikel
  der KB zeigt darauf. Isoliert, aber thematisch korrekt.
- `roethlisberger-geraetepreis-pruefung-273-35.md` (established) — Situation identisch. Zielt
  auf kispi-lbw-rohdichte-800, aber keine Rückverlinkung.

Beide sind tatsächlich isoliert (kein zweiter QS-/Geräte-Nachtrag-Fall im Wiki) — kein Fehler,
aber ein Hinweis für künftige KISPI-Artikel: hier ansetzten, wenn ein Zweitfall anfällt.

**INDEX-Vollständigkeit:** alle 14 Artikel registriert. Keine fehlende Eintragung.

### C. Unbelegte Claims

**Befund:** 0 materielle Lücken.

Diese KB ist ungewöhnlich gut belegt: praktisch jede Zahl trägt einen Dateipfad mit Datum in
`sources:`, Unsicherheiten werden als «Einschränkung» oder «offene Frage» im Artikel selbst
ausgewiesen. Stichprobenartig geprüft (3 Aussagen pro Artikel, ausgewählte Nerves/Lorraine/KISPI-
Artikel): alle Zahlen tragen Quellenangaben. Keine Aussage ohne Bezug gefunden.

### D. RAW-Coverage-Lücken

1. **raw/260729-kispi-rueckweisung-installationsplan-lueftung.md** — Status weiterhin `[ ]
   wartet auf Handkontrolle`. Bewusst nicht automatisch verarbeitet. Unverändert seit 25.08.

2. **RAW-Register-Realitäts-Lücke (strukturell)** — `raw/_INGESTED.md` führt nur zwei KISPI-Mail-
   Einträge. Die zwölf übrigen Artikel zitieren in `sources:` direkt Dateien unter
   `/Volumes/daten/04_Buero/02_Projekte/...` (buero-projekte-Destillation), die nie durch `raw/`
   dieser KB liefen und daher nie im Register auftauchen können.
   
   Das ist **kein Fehler des Bibliothekars** (Herkunft ist sauber im CHANGELOG/KORPUS-QUEUE
   dokumentiert), aber es heisst: **Audit D in seiner klassischen Form («jede raw/-Datei
   zitiert?») deckt nur einen kleinen Bruchteil der wahren Quellbasis ab.**
   
   **Empfehlung für Phase 2 oder künftig:** CLAUDE.md um die Zweikammer-Logik erweitern
   (direkter raw/-Dump UND Wissens-Destillat-Fanout) oder `raw/_INGESTED.md` um einen
   Verweis auf `skills/wissens-destillat/training/buero-projekte-inventar.md` ergänzen.

### E. Veraltete Artikel

**Befund:** keine.

Ältester `last_updated`: 2026-07-23 (33 Tage). KB noch jung; Veraltungs-Audit greift grundsätzlich
noch nicht. Kein Artikel älter als 90 Tage.

### F. Schreibregel-Verstösse

1. **Frontmatter-Schema-Drift.** Vier älteste Artikel (kispi-lbw-rohdichte-800,
   roethlisberger-geraetepreis-pruefung-273-35, sbb-naeherbaurecht-thalwil-2414-vordach,
   kispi-behoerden-zustaendigkeitswechsel-1171-26, alle Juli 2026) nutzen flache Felder
   `gewerk:`, `bkp:`, `sia_phase:`, `betroffene_skills:`. Alle zehn übrigen (ab 03.08.2026)
   nutzen ein verschachteltes `tags:` mit denselben Inhalten.
   
   **Kein Datenverlust, aber zwei parallele Konventionen.** CLAUDE.md dokumentiert das nicht —
   Empfehlung: entweder einheitlich machen, oder als bewusste Migrations-Periode in
   CLAUDE.md festhalten.

2. **INDEX.md-Statistikzeile veraltet.** «Letzter Health-Check: 2026-07-25» steht dort nach
   wie vor, obwohl seither zwei weitere Checks liefen (25.08. und dieser hier, 01.09.). 
   
   **Reine Fussnote, aber eine falsche Angabe in einer Datei, die genau solche Angaben
   führen soll** — sollte auf 2026-09-01 aktualisiert werden.

3. **`links:`-Feld mit Freitext in sbb-naeherbaurecht-thalwil-2414-vordach.md Z. 6:** 
   `links: [[negative-vorwirkung-und-bzo-revision]] (KB baurecht, führend für das Thalwiler
   Baurecht)` — Prosa direkt im YAML-Wert.
   
   **Gleiche Fehlerfamilie wie der behobene Klammer-Tippfehler** (Run 43, Befund 260825).
   Technisch unschädlich, aber `links:` sollte eine reine, maschinell prüfbare Backlink-Liste
   bleiben.

**Umlaute/Hochdeutsch/Dekosymbole:** durchgehend korrekt in allen Artikeln, INDEX, QUESTIONS.

### G. Promotion-Kandidaten

1. **Mahnkaskaden-Muster «fehlende schriftliche Auftragsgrundlage» — bereit für Synthese.**
   
   - `kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087` (emerging) — KISPI RE-00087,
     Automatismus diagnostizierte die Ursache nie selbst (Diagnose: Raphael).
   - `eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag` (emerging) — EH Europe 2015/16,
     Leistung gelobt, aber ohne schriftliche Zahlungszusage.
   
   **Beide sind bereits wechselseitig verlinkt als «gleiche strukturelle Ursache».**
   
   Nach derselben Regel wie [[nerves-2015-kv-nebengewerke-unterschaetzt]] (Promotion bei
   echtem Zweitfall, **Rule 260714**) wäre hier entweder:
   - (a) einer der beiden Artikel auf `established` zu heben mit Verweis auf den zweiten Beleg, oder
   - (b) ein übergeordneter Muster-Artikel «fehlende Auftragsgrundlage → Mahnkaskade» zu schaffen,
     der beide Fälle referenziert.
   
   **Keine Aktion in dieser Phase 1.** Kandidaten-Status bewahrt.

Keine weiteren Kandidaten: alle übrigen `emerging`-Artikel sind bewusst Einzelbelege ohne
zweiten unabhängigen Fall (explizit im Artikel vermerkt) und sollten laut Rule 260714 nicht ohne
echten Zweitbeleg gehoben werden.

---

**Lauf abgeschlossen:** 2026-09-01 02:15 CEST · Nachtschicht Mac Mini · Phase 1 (Audit + Report).
