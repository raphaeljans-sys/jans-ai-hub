# Wissens-Health-Check — Firmengründung Schweiz

Datum: 2026-07-01 · KB: `firmengruendung-ch` · Phase 1 (Audit + Report), unbeaufsichtigt.
Umfang: 8 Wiki-Artikel + INDEX + QUESTIONS, 6 raw/-Quellen, 1 Output. Erster Health-Check dieser KB.

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprüche | Gelb | Kein interner Widerspruch; ABER realer Firmenname-Blocker (JANS AG durch JANS GmbH) fehlt in der KB. |
| B | Backlinks / Orphans / INDEX | Grün | Alle 8 Backlink-Ziele existieren, keine Orphans, alle Artikel im INDEX. |
| C | Unbelegte Claims | Gelb | Rechtsgrundlagen durchgehend gesetzt; einzelne register-/kostenrelevante Zahlen ohne Beleg (siehe Details). |
| D | RAW-Coverage | Grün | Alle 6 raw/-Quellen im Wiki zitiert; keine verwaiste Quelle. |
| E | Veraltete Artikel | Gelb | Alle last_updated 2026-06-02; kein Zeitverfall, aber offener 2023-Revisions-Check bleibt hängig. |
| F | Schreibregeln | Grün | Echte Umlaute, kein ß, keine Deko, Frontmatter vollständig, Schweizer Hochdeutsch. |
| G | Promotion / QUESTIONS | Gelb | Kein speculative→emerging offen; Promotion-Kandidat: Firmenname-Blocker als Lesson/Artikel. |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Realer Firmenname-Blocker nicht in der KB abgebildet.** Laut Projektwissen ist «JANS AG» durch die bestehende «JANS GmbH» blockiert (Notar Mathies, EHRA-Weisung Ziff. IV — nur Rechtsform-Zusatz unterscheidet nicht genügend); Voranfrage bei HRA ZH läuft, UBS-Kapitaleinzahlungskonto wartet auf den definitiven Namen. `ag-gruendungsablauf.md` Schritt 2 nennt nur „Verfügbarkeit/Zulässigkeit via Zefix prüfen" — die konkrete, teuer erlernte Regel (gleicher Kern + nur Rechtsform-Zusatz = nicht eintragbar) fehlt. Diese Lesson gehört als eigener Wiki-Artikel oder als Ergänzung in `ag-gruendungsablauf` (Phase 2, Audit A/D/G).

2. **Aktienrecht-Revision 2023 nach wie vor nur als needs-verification markiert.** Drei Artikel (`statuten-ag`, `kapital-und-liberierung`, `revision-und-opting-out`) tragen den 2023-Vorbehalt seit dem Aufbau ungelöst. Kernbeträge (CHF 100'000 / 50'000, Art. 621/632 OR) sind unverändert und korrekt; ungeprüft bleiben Kapitalband, Fremdwährungskapital und die aktuellen Schwellen ordentliche Revision (Art. 727 OR). Ein gezielter Verifikations-Durchlauf würde die drei Vorbehalte schliessen (Audit E/C).

3. **Kosten-/Gebühren-Zahlen ohne belastbare Quelle.** Gründungskosten-Richtwerte (Notar, HR-Gebühr ~600, Treuhand-Bänder) stammen aus dem Dossier 2022 (EasyGov) und sind als approximativ gekennzeichnet — gut. Für den laufenden realen Gründungsfall JANS AG sollten sie durch echte Notariats-/HRA-ZH-Offerten ersetzt und belegt werden (Audit C).

## Details je Audit

### A. Widersprüche (+ QUESTIONS)
- **Kein interner Widerspruch** zwischen den Artikeln gefunden. Beträge (CHF 100'000 Kapital / CHF 50'000 Liberierung / 20 % je Aktie / Emissionsabgabe-Freibetrag CHF 1'000'000) sind in `rechtsform-vergleich`, `statuten-ag`, `kapital-und-liberierung` und `kosten-und-zeit` konsistent.
- **Widerspruch KB ↔ Realität (neu):** Projektwissen (MEMORY „AG-Gründung JANS / Firmenname-Blocker") hält fest, dass «JANS AG» wegen der bestehenden «JANS GmbH» nicht eintragbar ist (EHRA-Weisung Ziff. IV). `ag-gruendungsablauf.md` Schritt 2 suggeriert dagegen eine reine Zefix-Verfügbarkeitsprüfung ohne diese Distinktivitäts-Regel. Kein Fehler im Wiki, aber eine wichtige Lücke gegenüber dem tatsächlichen Fall. → Vorschlag (Phase 2): Regel „gleicher Firmenkern + nur Rechtsform-Zusatz genügt nicht" in `ag-gruendungsablauf` Schritt 2 ergänzen und `QUESTIONS.md` um den Punkt „Firmen-Distinktivität / EHRA-Weisung" erweitern.
- QUESTIONS-Archiv weiterhin leer; keine der offenen Fragen wurde seit 2026-06-02 beantwortet.

### B. Backlinks & Orphans & INDEX
- **Alle Backlink-Ziele existieren:** `ag-gruendungsablauf`, `belege-handelsregister`, `errichtungsakt`, `kapital-und-liberierung`, `kosten-und-zeit`, `rechtsform-vergleich`, `revision-und-opting-out`, `statuten-ag`, `QUESTIONS` — jede referenzierte Datei ist vorhanden. Keine kaputten `[[…]]`.
- **Keine Orphans:** Jeder der 8 Artikel wird von mindestens einem anderen Artikel verlinkt (min. 3 eingehende Links: `rechtsform-vergleich`).
- **INDEX vollständig:** Alle 8 Artikel sind im INDEX gelistet und korrekt gruppiert. INDEX-Statistik (8 Artikel, 0 Coverage-Lücken) stimmt.
- Vorschlag (Phase 2): INDEX-Statistik-Zeile „Letzter Health-Check: noch keiner" auf 2026-07-01 aktualisieren.

### C. Unbelegte Claims (bis 3/Artikel)
- **Durchgehend gut belegt:** Jede rechtlich/registerrelevante Aussage trägt OR-/HRegV-Grundlage (Art. 621/626/629 f./632/727 OR, Art. 44/118/24a HRegV etc.). Rechtsgrundlage-Pflicht der KB ist erfüllt.
- `rechtsform-vergleich.md`: HR-Gebühren-Richtwerte je Rechtsform (~120 / ~240 / ~600) und Beratungs-/Notariatsbänder ohne exakte Tarifquelle — via needs-verification-Hinweis abgedeckt, aber ohne belastbare Tarif-Referenz (max. 3 Claims: HR-Gebühren-Zahlen, Beratungsbänder, „HR-Pflicht ab Umsatz CHF 100'000" für Einzelfirma ohne OR-Zitat → Art. 931 OR wäre die Grundlage).
- `kosten-und-zeit.md`: HR-Grundgebühr ~600 und die Staffelung „+0,2 ‰ über CHF 200'000, max. CHF 10'000" ohne Zitat der Gebührenverordnung (GebV-HReg) — als approximativ markiert, aber Verordnungsstelle fehlt.
- `revision-und-opting-out.md`: „nicht mehr als 10 Vollzeitstellen" trägt Art. 727a OR im Frontmatter, ist inhaltlich korrekt; „aktuelle Schwellenwerte Art. 727 OR" bleibt offen (needs-verification). Kein spekulativer Artikel ohne Beleg vorhanden.

### D. RAW-Coverage
- **Alle 6 raw/-Quellen sind im Wiki zitiert** (laut `_INGESTED.md` und Frontmatter-`sources` bestätigt): kmu-checkliste, hra-zh-errichtungsakt, hra-zh-statuten, hra-zh-belege, easygov-kosten, opting-out-erklaerung. Keine verwaiste Quelle, keine out-of-scope-Datei.
- `_INGESTED.md` nennt weiteres, bewusst nicht kopiertes OneDrive-Material (Leitfaden 2022, Musterstatuten, reale JANS-AG-Dokumente). Kein Coverage-Defizit im raw/-Ordner selbst.
- **Coverage-Lücke inhaltlich (nicht raw-basiert):** Der laufende Gründungsfall JANS AG (Firmenname-Blocker, HRA-Voranfrage, UBS-Konto-Wartestand) ist noch in keinem raw/-Dokument und keinem Artikel festgehalten. → Vorschlag (Phase 2): Fall-Notiz/Korrespondenz in `raw/` ablegen und als Lesson kompilieren.

### E. Veraltete Artikel (last_updated < 2026-04-02 UND neuere Quelle)
- Alle 8 Artikel: `last_updated: 2026-06-02` — jünger als die 2026-04-02-Schwelle, formal nicht veraltet.
- **Aber:** Das revidierte Aktienrecht (in Kraft seit 01.01.2023) ist eine gegenüber dem Dossier-Stand (2022) neuere Rechtsquelle, deren Einarbeitung in `statuten-ag`, `kapital-und-liberierung`, `revision-und-opting-out` als needs-verification offen aussteht. Kein Datumsverfall, wohl aber ein offener Aktualitäts-Check. → Vorschlag (Phase 2): 2023-Revision gezielt verifizieren und die drei Vorbehalte auflösen oder bestätigen.

### F. Schreibregel-Verstösse
- **Keine Verstösse.** Echte Umlaute ä/ö/ü durchgehend, kein ß gefunden, keine dekorativen Symbole/Emoji. Frontmatter (title/status/last_updated/sources/links) bei allen 8 Artikeln vollständig. Schweizer Hochdeutsch, Tausendertrennung mit Apostroph (CHF 100'000). KB-Regel „Rechtsgrundlage-Pflicht" und „Kanton kennzeichnen" (ZH-Praxis in `belege-handelsregister`/`statuten-ag` vermerkt) eingehalten.

### G. Promotion-Kandidaten & beantwortete QUESTIONS
- **Kein status-Wechsel offen:** Alle 8 Artikel bereits `established`; kein `speculative`/`emerging` zu promovieren.
- **Beantwortete QUESTIONS:** keine — der QUESTIONS-Backlog (Holding, GmbH-Ablauf, Steuern, Nach-Gründung-Detail, VR-Artikel) ist unverändert offen, Archiv leer.
- **Promotion-/Neu-Kandidat (inhaltlich):** Die Firmenname-Distinktivitäts-Lesson (JANS AG ↔ JANS GmbH, EHRA-Weisung Ziff. IV) ist reif, aus dem realen Fall in einen Wiki-Eintrag gehoben zu werden — entweder als Ergänzung in `ag-gruendungsablauf` Schritt 2 oder als eigener Kurzartikel `firmenname-distinktivitaet`. Höchster Compounding-Wert dieses Checks.

---
Phase 2 (Ausführen der Vorschläge) nur interaktiv. Dieser Report ändert nur CHANGELOG.md + diese Datei.
