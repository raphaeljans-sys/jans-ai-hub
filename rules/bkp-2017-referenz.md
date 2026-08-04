# Rule: BKP 2017 als verbindliche Referenz

## Regel

Bei **jeder** Verwendung von Baukostenplan-Codes (BKP-Nummern) in JANS-Outputs muss die Nummer aus der offiziellen BKP-2017-Liste (CRB) stammen, die im AI Hub abgelegt ist:

**Referenz**: `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md`
**Original-PDF**: `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-CRB.pdf`

## Warum

- **Konsistenz** über alle Projekte (KISPI, HLEB, weitere)
- **Konsistenz** über alle Skills (offertenpruefung, ausschreibung, kostenschaetzung, terminplanung, brandschutz, honorarberechnung-sia102)
- **Auditierbarkeit**: Bauleitung, Bauherrschaft und Spezialplaner müssen exakt dieselben Codes verstehen
- **Vermeidung** von erfundenen oder geratenen BKP-Nummern (häufige Quelle für LLM-Halluzinationen bei Fachcodes)

## Wie anwenden

### IMMER

1. Vor jeder BKP-Nummer-Angabe in der Liste nachschlagen — auch wenn der Code "offensichtlich" scheint
2. Wenn ein Code in der Liste **nicht** existiert: User nachfragen, **nicht** raten
3. Bei Subpositionen die volle BKP-Hierarchie nutzen (z.B. `221.4` statt nur `221` wenn spezifisch)
4. In LV-Titeln, Offerten, Devis das Format `BKP <code> — <Bezeichnung>` verwenden (z.B. `BKP 271.0 — Innenputze`)

### ⚠ Korrektur 04.08.2026 — «271.10» ist kein BKP-2017-Code

Diese Rule und die Schnellreferenz der Liste führten bis zum 04.08.2026 «271.10» für Innenputze.
**Den Code gibt es im BKP 2017 nicht.** Am Original-PDF nachgezählt: unter 271 Gipserarbeiten
stehen ausschliesslich **271.0 Innenputze**, 271.1 Trockenbauarbeiten, 271.2 Gerüste; eine Suche
über die gesamte Gliederung liefert **null** Codes mit zweistelliger Nachkommastelle. Der
Fehler stand nur in den Schnellreferenz-Blöcken — der systematische Teil von
`references/bkp-2017/BKP-2017-Liste.md` führte 271.0 durchgehend richtig, die Quelle
widersprach sich also selbst, und zwar ausgerechnet dort, wo beim Devisieren nachgeschlagen wird.

Der falsche Code hatte sich zum Zeitpunkt der Korrektur in **15 Hub-Dateien** ausgebreitet,
darunter `skills/ausschreibung/SKILL.md` und `skills/brandschutz/SKILL.md`. Korrigiert sind
diese Rule und die Referenzliste (die beiden normativen Quellen).

**Nachgezogen am 04.08.2026 (Wissens-Chef Run 25):** `skills/ausschreibung/SKILL.md`
(Formatbeispiel auf 271.0, dazu die Katalog-Kennzeichnung), `skills/brandschutz/SKILL.md`
(vier Fundstellen) sowie drei Destillate der KB `normen`. Wichtig ist dabei die
**Sachbezugs-Regel**: im Brandschutz-Skill bezeichneten alle vier Stellen das
**Trockenbau**-LV, richtig ist dort also **271.1**, nicht 271.0 — wer einen Phantomcode
mechanisch durch den erstbesten existierenden ersetzt, erzeugt einen Fehler, der
verifizierbar aussieht und beim nächsten Audit nicht mehr auffällt.

**Zweite Fehlerklasse, gleiche Wurzel: bürointerne Los-Nummern sind keine BKP-Codes.**
Der Stadt-Zürcher Katalog 2008 und die JANS-Los-Nummerierung kennen zweistellige
Nachkommastellen (z.B. das reale KISPI-Los `271.13 Trockenbau/Gipserarbeiten OG Süd`), das
BKP 2017 nicht. Schreibt man einer solchen Nummer «BKP» davor, entsteht genau der Code, den
niemand verifizieren kann. Deshalb: Los-Nummern nie mit dem Präfix «BKP» schreiben, sondern
als `LOS <Nr.> (bürointerne Los-Nummer, kein BKP-Code)`, und den zugehörigen echten Code
danebenstellen. Offen geblieben (Ticket N43-1, Rest): Altdokumente und Projektordner mit
«BKP 271.10» oder «BKP 271.13» im LV-Titel tragen weiterhin einen unverifizierbaren Code.

Lehre für diese Rule: Ein Schnellreferenz-Block ist eine Abschrift und damit genauso
prüfbedürftig wie jede andere Sekundärquelle. Bei Zweifel gilt der systematische Teil der
Liste, und im Streitfall das Original-PDF.

### NIE

- BKP-Nummern aus dem Gedächtnis nennen, ohne in der Liste zu prüfen
- BKP 95 oder eBKP-H verwenden, wenn nicht explizit gefordert
- Nicht-existente Subcodes erfinden (z.B. `271.99` wenn nur `271.0/.1/.2` existieren)

## Häufige Codes (Quick Reference)

| Bereich | Code | Bezeichnung |
|---|---|---|
| Architekt (Standard) | **291** | Architekt-Honorar in Phase "Gebäude" |
| Brandschutzing. (Standard) | **298.5** | Brandschutzingenieur in Phase "Gebäude" |
| Innenputz | **271.0** | Innenputze (⚠ korrigiert 04.08.2026, war fälschlich «271.10») |
| Trockenbau | **271.1** | Trockenbauarbeiten |
| Brandschutzbekleidungen | **225.4** | Brandschutzbekleidungen und dgl. |
| Bodenbeläge Kunststoff/PVC | **281.2** | Bodenbeläge aus Kunststoffen, Textilien und dgl. |
| Fugenlose Bodenbeläge | **281.1** | Fugenlose Bodenbeläge |
| Akustikdecken | **283.3** | Deckenbekleidungen aus Mineralfasern |

Komplette Liste: siehe `BKP-2017-Liste.md` in `references/bkp-2017/`.

## Geltungsbereich

Diese Rule gilt für:

- Alle Skills (offertenpruefung, ausschreibung, kostenschaetzung, terminplanung, brandschutz, honorarberechnung-sia102)
- Alle Agents (dokument, recherche, website-content, email)
- Alle direkten Antworten in der Konversation, sobald BKP-Nummern erwähnt werden

## Bei Offline-Arbeit (NAS nicht gemountet)

Wenn `/Volumes/daten/jans-ai-hub/references/bkp-2017/` nicht erreichbar ist:
- BKP-Nummern **nur** angeben, wenn 100% sicher (z.B. aus aktuell vorliegendem Projekt-Dokument)
- Sonst Rückfrage an User: "BKP-Liste nicht verfügbar, NAS bitte mounten oder BKP-Nummer bestätigen"
- Kein Raten — lieber Lücke lassen und nachreichen
