# Wissens-Health-Check — KB Spec (2026-07-01)

Phase-1-Audit (Skill `wissenscheck`, unbeaufsichtigt). Auditiert wurden alle 5 Wiki-Artikel,
das RAW-Frontmatter, die drei Outputs sowie die State-Files (CHANGELOG, QUESTIONS, _INGESTED).
Nur Audit + Ablage; keine Phase-2-Aktionen ausgefuehrt.

## Zusammenfassung

| Audit | Thema | Ampel | Befund (kurz) |
|---|---|---|---|
| A | Widersprueche / QUESTIONS | gruen | Keine inhaltlichen Widersprueche; QUESTIONS sauber nachgefuehrt (F1/F2/F3/F4/F5). |
| B | Backlinks / Orphans / INDEX | gelb | Alle 5 Backlink-Ziele aufloesbar, keine Orphans, alle im INDEX. Eine Self-Zitat-Anomalie in `the-spec.md`. |
| C | Unbelegte Claims / Status | gelb | Cherny-«2-3x»-Kernclaim in `verifier.md` weiter nur transkript-belegt (F4 offen), Artikel aber `established`. |
| D | RAW-Coverage | gruen | Einzige RAW-Datei voll eingearbeitet, von 5 Artikeln zitiert; _INGESTED korrekt. |
| E | Veraltete Artikel / Metadaten | rot | `verifier.md` + `anwendung-jans.md` tragen 06-30-Inhalt, aber `last_updated: 2026-06-21`. |
| F | Schreibregel-Verstoesse | gruen | Echte Umlaute, kein ß, kein Emoji-Schmuck. Ein ✓-Zeichen in QUESTIONS (Arbeitsdatei, tolerierbar). |
| G | Promotion-Kandidaten / QUESTIONS | gelb | Keine Promotions offen; F5 erledigt, F4 teil-erledigt. F6/F7 warten (bei Raphael geflaggt). |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Metadaten-Drift (Audit E):** `verifier.md` und `anwendung-jans.md` wurden laut CHANGELOG
   am 27.06. UND 30.06. inhaltlich erweitert (neue Sektionen «Empirisch bestaetigt» / «lebende
   Spec»), tragen im Frontmatter aber weiterhin `last_updated: 2026-06-21`. Die Datumsangabe
   widerspricht der belegten Aenderungshistorie. Fix beim naechsten Trainingslauf: beide auf
   `2026-06-30` heben.
2. **CLAUDE.md-Flag (2. Mal, unveraendert offen):** In der «Aktuelle KBs»-Liste (CLAUDE.md
   Z. 396) fehlt `spec/` weiterhin — als einziger KB nicht gelistet. Korrekt als Phase-2-/
   geteilte-Datei geflaggt (Runs 1+2). Braucht Raphaels Freigabe zum Nachtrag.
3. **Status-Ehrlichkeit (Audit C):** Alle 5 Artikel sind `established`, obwohl das Cherny-
   «2-3x»-Kernargument in `verifier.md` per QUESTIONS F4 noch immer nur ueber das Screenshot-
   Transkript belegt ist (Cherny-Thread im Volltext offen). Nach der eigenen KB-Schreibregel
   («`established` erst mit Originalquelle») ist mindestens dieser Claim streng genommen erst
   `emerging`. Entweder Cherny-Primaerquelle einholen oder Claim vorsichtiger formulieren.

## Details je Audit

### A — Widersprueche & QUESTIONS
- **Kein inhaltlicher Widerspruch** zwischen Artikeln gefunden. Die Kern-Lektion (falsches
  Verifier-Gruen, autoritative Instanz > Connector) ist in `verifier.md`, `anwendung-jans.md`
  und QUESTIONS F3 deckungsgleich formuliert.
- QUESTIONS ist konsistent mit CHANGELOG: F5 als eingeloest markiert (Anthropic Plan-Mode),
  F4 als teilweise eingeloest (Karpathy-Primaerquelle), F1/F2/F3 mit realen Lektionen ergaenzt.
  Keine geloeste Frage steht faelschlich noch offen. **Ampel gruen.**

### B — Backlinks / Orphans / INDEX
- Alle Backlink-Ziele aufloesbar: `[[the-spec]] [[3-schritte-spec]] [[verifier]]
  [[environment-jans-hub]] [[anwendung-jans]]` → alle 5 als `.md` vorhanden. **Keine kaputten
  Links.**
- Keine Orphans: alle 5 Artikel im `INDEX.md` gelistet und untereinander verlinkt.
- **Anomalie (gelb):** `the-spec.md` Z. 15 zitiert `(Quelle: [[the-spec]] RAW-Transkript
  Marchese)` — ein Artikel, der sich selbst als Quelle angibt. Vorschlag: die Quellenangabe
  auf die RAW-Datei richten (`260616_marchese_...`) statt auf den eigenen Backlink; der
  Selbst-Backlink zaehlt sonst faelschlich als Beleg.

### C — Unbelegte Claims / Status
- `verifier.md`: «steigt die Qualitaet … um das 2- bis 3-Fache» (Cherny) — Beleg bisher nur
  Screenshot-Transkript; per QUESTIONS F4 der Cherny-Thread im Volltext noch offen. Artikel
  ist dennoch `status: established`. **Vorschlag:** entweder Cherny-Primaerquelle nachziehen
  (loest F4 ganz) oder den «2-3x»-Satz als transkript-belegt/vorsichtig kennzeichnen; Status-
  Feld des Artikels ggf. auf `emerging` fuer den offenen Claim (Rest des Artikels ist belegt).
- Uebrige Methodik-Aussagen sind belegt: Plan-Mode → Anthropic-Doku (Primaerquelle, F5),
  raw→wiki→schema/Compiler-Analogie → Karpathy-Gist/X-Post (Primaerquelle, F4-Teil).
- Kein `speculative`-Claim ohne Beleg gefunden (kein Artikel traegt aktuell `speculative`).

### D — RAW-Coverage
- Einzige RAW-Datei `260616_marchese_the-spec_karpathy-method_transkript.md` ist in `_INGESTED`
  als eingearbeitet (2026-06-21) verzeichnet und wird von allen 5 Wiki-Artikeln als `sources`
  zitiert. **Keine RAW-Luecke, kein out-of-scope-Material.** Die «offen einzuholen»-Liste in
  _INGESTED (Karpathy-Post/Cherny-Thread/Plan-Mode-Doku) ist konsistent mit QUESTIONS F4/F5;
  F5 dort noch nicht als erledigt abgehakt (kleiner Nachzug moeglich, unkritisch).

### E — Veraltete Artikel / Metadaten
- **Kern-Befund (rot).** `verifier.md`: enthaelt die Sektion «Empirisch bestaetigt (Verlauf bis
  29.06.2026)» und die Lektion aus dem 27.06.-Lauf — laut CHANGELOG am 27.06. + 30.06.
  geschrieben. Frontmatter aber `last_updated: 2026-06-21`.
- `anwendung-jans.md`: enthaelt die «lebende Spec»-Erweiterung (Schritt 2), laut CHANGELOG
  30.06. hinzugefuegt. Frontmatter ebenfalls `last_updated: 2026-06-21`.
- Beide Daten liegen VOR dem Schwellwert 2026-04-02 nicht — aber sie sind schlicht **falsch
  relativ zur belegten Aenderung**: neuere Bearbeitung existiert (CHANGELOG), Datum wurde nicht
  mitgezogen. **Fix:** `last_updated` beider Artikel auf `2026-06-30` setzen (Phase 2).
- `the-spec.md`, `3-schritte-spec.md`, `environment-jans-hub.md`: `2026-06-21` korrekt
  (seit Seed inhaltlich unveraendert bzw. the-spec nur um F5-Zitat ergaenzt am 27.06. → auch
  hier waere `2026-06-27` sauberer, kleinerer Nachzug).

### F — Schreibregel-Verstoesse
- Echte Umlaute durchgehend (ä/ö/ü), **kein ß** im Wiki. Keine Emoji-Dekoration in den
  Artikeln. Frontmatter-Schema (title/status/last_updated/sources/links) bei allen 5 Artikeln
  vollstaendig. **Ampel gruen.**
- Kleinigkeit: `QUESTIONS.md` Z. 41 nutzt ein `✓`-Hakensymbol als Erledigt-Marker. In einer
  Arbeits-/Trackingdatei tolerierbar; wenn strikt deko-frei gewuenscht, durch «EINGELOEST»
  ersetzen (bereits daneben ausgeschrieben). Kein Handlungsdruck.

### G — Promotion-Kandidaten / beantwortete QUESTIONS
- **Keine `speculative`→`emerging`-Promotion offen** (kein Artikel ist `speculative`). Eher
  umgekehrt: ein Teilclaim ist ggf. zu hoch eingestuft (siehe Audit C).
- Eingeloeste Fragen: **F5** (Anthropic Plan-Mode, 27.06.) — vollstaendig, Artikel `the-spec`
  entsprechend ergaenzt. **F4** teil-eingeloest (Karpathy-Primaerquelle, 30.06.); Rest (Cherny-
  Volltext) offen.
- **Offen/geflaggt fuer Raphael:** F6 (Spec-Template `templates/spec-vorlage.md` aus dem
  AG-Gruendung-Output extrahieren) und Befund #1 (CLAUDE.md-KB-Liste) — beide zweimal
  korrekt als Phase-2/geteilte-Datei geflaggt, nicht eigenmaechtig ausgefuehrt. F7 (Goldstandard-
  Kuratierung) wartet weiter auf eine 2. reale Spec-Anwendung (bisher nur AG-Gruendung).
