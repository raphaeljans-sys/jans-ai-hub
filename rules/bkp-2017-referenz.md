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

Das BKP 2017 kennt **keine** Codes mit zweistelliger Nachkommastelle. Unter 271 Gipserarbeiten
existieren ausschliesslich **271.0 Innenputze**, **271.1 Trockenbauarbeiten**, 271.2 Gerüste.
«271.10» war ein Phantom-Code, der bis zum 04.08.2026 in den Schnellreferenz-Blöcken stand und
sich von dort in 15 Hub-Dateien ausgebreitet hatte.

Drei Regeln daraus, alle weiterhin verbindlich:

1. **Sachbezug prüfen, nicht mechanisch ersetzen.** Beim Korrigieren eines falschen Codes
   entscheidet die bezeichnete Leistung: Innenputz ist 271.0, Trockenbau ist 271.1. Wer
   pauschal durch den erstbesten existierenden Code ersetzt, erzeugt einen Fehler, der
   verifizierbar aussieht und beim nächsten Audit nicht mehr auffällt.
2. **Bürointerne Los-Nummern sind keine BKP-Codes.** Der Stadt-Zürcher Katalog 2008 und die
   JANS-Los-Nummerierung kennen zweistellige Nachkommastellen (z.B. Los `271.13`), das BKP
   2017 nicht. Nie mit dem Präfix «BKP» schreiben, sondern als
   `LOS <Nr.> (bürointerne Los-Nummer, kein BKP-Code)`, den echten Code daneben.
3. **Der systematische Teil schlägt die Schnellreferenz.** Ein Schnellreferenz-Block ist eine
   Abschrift und genauso prüfbedürftig wie jede Sekundärquelle. Im Streitfall gilt das
   Original-PDF.

Fallchronik, Ausbreitung und offener Rest (Ticket N43-1):
`references/bkp-2017/260804-Korrektur-271-10-Chronik.md` (nicht importiert).

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
