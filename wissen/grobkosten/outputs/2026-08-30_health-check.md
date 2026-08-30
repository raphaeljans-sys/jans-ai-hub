# Wissens-Health-Check: grobkosten — 2026-08-30

Phase 1 (Audit, unbeaufsichtigt). Letzter voller Check: 2026-08-03 (ältestes Audit-Datum im
gesamten Wissens-Layer). Bekannter Hintergrund, kein neuer Befund: das Trainingsprogramm
selbst ist seit 13.08.2026 im Bestätigungstakt (kein neues Rohmaterial, MFH-Median-Bildung
hängt an zwei offenen Fragen an Raphael, Stand 30.08.2026 weiterhin unbeantwortet).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 3 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 1 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`raw/_INGESTED.md` ist seit Ende Juli nicht mehr nachgeführt** — das kanonische Register
   (Skill-Vorgabe für Audit D) kennt nur 15 von 18 realen raw-Dateien. Die Lücke wird durch
   `wiki/INDEX.md` faktisch geschlossen (dort steht seit 29.08.2026 eine vollständige, korrekte
   18-Zeilen-Tabelle), aber wer `_INGESTED.md` selbst konsultiert, sieht ein veraltetes Bild.
2. **`raw/2105-steinkogler-davos.md` wird als "dokumentiert" geführt, kommt aber in
   `kennwerte.md` kein einziges Mal vor** — anders als die vergleichbaren "nicht promoviert"-
   Fälle (2411-wald, 2305-waedenswil-precheck, 2304-waedenswil-residualwert), die je 2-3
   Erwähnungen mit Begründung in der Quelle der Wahrheit selbst tragen.
3. **Der jüngste Output (`outputs/2026-08-28_kennwerte-ei30-schiebetueren-kispi.md`) ist nicht
   in `kennwerte.md` verarbeitet** — weder als Zeile noch als Scope-Vermerk, warum ein
   Tür-Einheitspreis nicht in die CHF/m³-GV-Tabelle gehört.

## Details je Audit

### A. Widersprüche

Keine neuen, unmarkierten Widersprüche gefunden. Die KB pflegt eine ausgeprägte
Selbstkorrektur-Kultur: jede erkannte Spannung (z. B. Flächeneffizienz-Faktor HNF/GF 0.70 vs.
0.75 im Regelgeschoss, Zeilen 74-89 `kennwerte.md`) trägt einen sichtbaren
`⚠ needs-decision`-Marker mit Datum, Verifikationsstand ("adversarial verifiziert, BESTÄTIGT")
und Verweis auf den führenden Artikel (`immobilienbewertung/wiki/flaechendefinitionen-sia`).
Kein Fall gefunden, in dem ein überholter Wert unmarkiert neben dem korrigierten steht.

### B. Kaputte Backlinks & Orphans

0 Findings. Diese KB verwendet in `wiki/` durchgängig **keine** `[[wikilinks]]`, sondern
normale Markdown-Links (`[kennwerte.md](kennwerte.md)`) — es gibt daher keine toten
Doppelklammer-Backlinks zu prüfen. Alle drei Wiki-Dateien (`kennwerte.md`, `QUESTIONS.md`,
`INDEX.md`) sind gegenseitig erreichbar, keine Orphans. Die frontmatter-`links:`-Liste von
`kennwerte.md` (vier Verweise nach `wissen/immobilienbewertung/wiki/…`) zeigt auf real
existierende Artikel der Fremd-KB.

### C. Unbelegte Claims

0 Findings. Stichprobe von drei zentralen Aussagen gegen `sources:` geprüft:
- Der ≈1'020-CHF/m³-Anker (Zeile 48-51) ist mit Rechenweg (GV/HNF 4.7) und Quellpfad
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  belegt und trägt zusätzlich den eigenen `⚠ needs-decision`-Gegenbeleg.
- Die BKP-Anteilsstruktur MFH Zürich 2025 (89.4 % vs. 90.6 %, Vertiefungslauf 23.08.2026) ist
  mit der ZIW-Methodenbericht-Quelle und einer unabhängigen Gegenrechnung hinterlegt.
- Der Holzbau-Zuschlag (≈0 % bis +13 %) verweist auf `raw/2025-wueest-lignum-…` und die
  fortschreibende BFS-Reihe, mit Datum der Fortschreibung.

Kein Claim ohne nachvollziehbare Quelle gefunden. Die KB ist überdurchschnittlich
beleg-diszipliniert (mehrere Runs bestehen explizit aus "Rückrechnen statt übernehmen").

### D. RAW-Coverage-Lücken

**D1 — `raw/_INGESTED.md` veraltet.** Datei zuletzt inhaltlich auf dem Stand von "Run 10"
(~27.07.2026), listet 15 Einträge (14 reale Dateien + README.md). Tatsächlich liegen in
`raw/` 18 reale Dateien (ohne README.md/_INGESTED.md). Fehlend im Register:
`2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`,
`2304-waedenswil-residualwert-zwei-varianten.md`,
`schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`,
`zuercher-index-wohnbaupreise-2025-10-update.md`. Diese vier sind alle in `kennwerte.md`
tatsächlich verarbeitet (je 2-4 Body-Treffer, siehe unten) — der Inhalt ist also nicht
verloren, aber das in der Skill-Definition genannte Register (`_INGESTED.md`) bildet die
Realität nicht mehr ab. `wiki/INDEX.md` hat am 29.08.2026 faktisch ein Ersatz-Register
("Raw-Material-Status") eingeführt, das vollständig und korrekt ist — die beiden Register
sind aber nicht harmonisiert, und der ältere Ort (`_INGESTED.md`) veraltet stillschweigend
weiter.

**D2 — INDEX.md-Vollständigkeitsbehauptung nicht für alle 18 Dateien haltbar.**
`wiki/INDEX.md` behauptet in der Raw-Material-Status-Tabelle (Stand 29.08.2026): "alle 18
realen Roh-Belege in raw/ sind bereits in wiki/kennwerte.md verdichtet oder mit Begründung
verworfen — Beleg: jede Datei steht im Frontmatter sources: von kennwerte.md". Das stimmt
für 16 von 18 Dateien. **Zwei Ausnahmen, gegengeprüft per grep:**
- `raw/2105-steinkogler-davos.md` — 0 Treffer in `kennwerte.md` (weder Frontmatter noch Body).
  INDEX.md führt sie als "dokumentiert, nicht promoviert", das Frontmatter von `kennwerte.md`
  listet sie nicht in `sources:`, und der Fliesstext erwähnt sie kein einziges Mal — anders
  als die drei strukturell gleichartigen "nicht promoviert"-Fälle (2411-wald-haselstudstrasse,
  2305-waedenswil-precheck, 2304-waedenswil-residualwert-zwei-varianten), die je 2-3
  Body-Erwähnungen mit Begründung tragen. Die Begründung für den Ausschluss
  (Eingriffstiefen-Bandbreiten S/M/L/XL statt GV×Kennwert) existiert nur in `INDEX.md` und im
  Trainings-Report `outputs/2026-07-27_grobkosten-run10.md`, nicht in der "Quelle der
  Wahrheit" selbst.
- `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` — 2 Body-Treffer in
  `kennwerte.md` (Abschnitt "Run 12"), aber **fehlt im Frontmatter `sources:`** (siehe Audit F).

**D3 — jüngster Output nicht zurückgeführt.** `outputs/2026-08-28_kennwerte-ei30-schiebetueren-kispi.md`
(zwei belegte EI30-Schiebetür-Preisreihen, BKP 273/274) ist die einzige Datei in `outputs/`,
die neuer ist als `kennwerte.md` (`last_updated: 2026-08-23`). Sie ist im CHANGELOG korrekt
protokolliert (Eintrag 2026-08-28, Wissens-Chef Run 46), aber in `kennwerte.md` selbst nicht
erwähnt (0 Treffer für "274", "Schiebet", "EI30", "Jegen"). Das kann eine bewusste
Scope-Entscheidung sein (Türeinheitspreis statt CHF/m³-GV-Kennwert, evtl. eher Stoff für
`kostenschaetzung` oder eine eigene BKP-273/274-Kennwerttabelle) — diese Entscheidung ist
aber nirgends dokumentiert, weder als Verweis in `kennwerte.md` noch als "out-of-scope"-Vermerk
in `INDEX.md`. Compounding-Loop-Pflicht (Rule `wissens-bibliothekar.md`) ist damit formal
offen.

### E. Veraltete Artikel

0 Findings. `kennwerte.md` (`last_updated: 2026-08-23`) ist 7 Tage alt, weit unter der
90-Tage-Schwelle. `INDEX.md` wurde zuletzt am 29.08.2026 nachgeführt, `QUESTIONS.md`
fortlaufend bis 23.08.2026. Kein Artikel mit veraltetem Stand UND unverarbeiteter neuerer
Quelle — die einzige neuere Quelle (der EI30-Output, siehe D3) ist zwei Tage alt, keine
90-Tage-Frage.

### F. Schreibregel-Verstösse

**F1 — Frontmatter `sources:` unvollständig.** `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`
wird im Fliesstext von `kennwerte.md` zweimal als Quelle zitiert (Abschnitt "Run 12", Ursprung
der Frage zum BKP-Scope), fehlt aber in der Frontmatter-Liste `sources:` (Zeile 5). Eine
Zeile ergänzen behebt den Verstoss (Phase 2, nicht Teil dieses Laufs).

Keine weiteren Verstösse gefunden: echte Umlaute ä/ö/ü durchgängig korrekt (die einzigen
"ae/oe/ue"-Treffer in der Stichprobe sind ASCII-Pfad-/Dateinamen wie
`raw/2305-waedenswil-precheck.md` oder `skills/kostenschaetzung/…`, die gemäss
Dateinamen-Konvention zurecht ASCII bleiben, sowie der Eigenname "Raphael"). Kein `ß`.
Der Gedankenstrich (—) wird durchgehend verwendet, aber konsistent mit der hub-weiten
Konvention für Fliesstext in Wiki-/Regel-Dokumenten (nicht das ausgehende DOCX/PDF, für das
`dokument-layout-standard.md` den Gedankenstrich verbietet) — kein Fund. Als Symbol wird
ausschliesslich `⚠` als funktionaler Flag-Marker verwendet (13× in `kennwerte.md`, 1× in
`QUESTIONS.md`), keine dekorativen Emojis. Frontmatter von `kennwerte.md` vollständig
(`title`, `status`, `last_updated`, `sources`, `links`).

### G. Promotion-Kandidaten

0 Findings. `kennwerte.md` trägt `status: emerging` — passend, solange die Kern-Seed-Werte
(Wohnbau Neubau MFH/EFH) bei Reife "Seed" bzw. höchstens "Einzelfall n=1" verharren (die
KB-eigene Regel in `training/PROGRAMM.md` verbietet eine Median-Bildung unter n=2). Die
einzige verbleibende Promotion-Blockade sind die zwei an Raphael gestellten Fragen (BKP-Scope
Tab. 2, Standard-Label "norm, eloquent", gestellt 23.08.2026), laut `CHANGELOG.md` bis
30.08.2026 (heute) unbeantwortet — sieben Tage. Kein QUESTIONS.md-Eintrag gefunden, der
inzwischen beantwortet, aber noch als offen geführt wäre: die Chronologie ist konsistent
absteigend datiert, und mehrere Einträge schliessen sich im selben Tageseintrag selbst
("die im Vorlauf eröffnete Frage ist geschlossen …", 23.08.2026). Empfehlung unverändert
zum Stand der letzten CHANGELOG-Einträge: die Schub-Lane auf Ereignis-Trigger statt
Tages-Rotation umstellen, solange Frage 1/2 offen bleiben — sechs Dispatches seit 29.08.2026
haben denselben Nullbefund wiederholt, ohne dass diese Empfehlung aufgegriffen wurde.

## Hinweis zum Scope dieses Laufs

Reine Phase 1 (Audit + Report). Keine Änderungen an `kennwerte.md`, `QUESTIONS.md` oder
`raw/` vorgenommen. Die vier D/F-Findings sind reparierbar (Registerpflege
`_INGESTED.md`, ein Frontmatter-Eintrag, ein Scope-Vermerk zum EI30-Output) — Umsetzung ist
Phase 2 und damit nicht Teil dieses unbeaufsichtigten Laufs.
