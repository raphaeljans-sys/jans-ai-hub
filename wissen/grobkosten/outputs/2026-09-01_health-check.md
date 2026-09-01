# Wissens-Health-Check: grobkosten — 2026-09-01

Phase 1 (Audit, unbeaufsichtigt). Letzter vollständiger Check: 2026-08-30 (zwei Tage alt).
Bekannter Hintergrund, identische Findings: das Trainingsprogramm bleibt im Bestätigungstakt
(kein neues Rohmaterial seit 17.08.2026, MFH-Median-Bildung hängt unverändert an zwei Fragen
an Raphael, Stand 2026-09-01: seit 23.08. noch immer unbeantwortet, zehn Tage).

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
   (Skill-Vorgabe für Audit D) kennt 15 von 18 Dateien. Gegengeprüft 01.09.2026: weiterhin
   dieselbe Lücke — vier Dateien sind in `kennwerte.md` verdichtet, aber nicht in `_INGESTED.md`
   registriert. Das Ersatz-Register in `wiki/INDEX.md` (29.08.2026) ist vollständig, die beiden
   Register sind aber nicht harmonisiert.

2. **`raw/2105-steinkogler-davos.md` kommt in `kennwerte.md` nicht vor** — 0 Treffer,
   gegengeprüft 01.09.2026. INDEX.md führt sie als "dokumentiert, nicht promoviert", aber die
   Begründung steht nur in INDEX.md und im alten Run-10-Report, nicht im führenden Artikel
   selbst. Anders als die drei vergleichbaren "nicht promoviert"-Fälle.

3. **Jüngster Output (`2026-08-28_kennwerte-ei30-schiebetueren-kispi.md`) ist nicht in
   `kennwerte.md` verarbeitet** — 0 Treffer für EI30/Schiebet/274/Jegen, gegengeprüft
   01.09.2026. Compounding-Loop-Pflicht ist damit formal offen.

## Details je Audit

### A. Widersprüche

Keine neuen, unmarkierten Widersprüche gefunden. Der HNF/GF-Faktor 0.70 trägt einen
`⚠ needs-decision`-Marker mit Begründung. Alle Marker strukturiert und aktuell datiert.
Status unverändert zu 2026-08-30.

### B. Kaputte Backlinks & Orphans

0 Findings, Status unverändert. Diese KB nutzt keine `[[wikilinks]]`, nur Markdown-Links.
Alle drei Wiki-Dateien gegenseitig erreichbar.

### C. Unbelegte Claims

0 Findings, Status unverändert. Stichprobe drei zentrale Aussagen verifiziert:
- Wuest-Anker (~1'020 CHF/m³) mit Rechenweg und Quelle belegt
- BKP-Anteilsstruktur (89.4 % vs. 90.6 %) mit ZIW und Gegenrechnung belegt
- Holzbau-Zuschlag mit BFS-Reihe fortgeschrieben und belegt

Keine Claims ohne Quelle gefunden.

### D. RAW-Coverage-Lücken

**D1 — `raw/_INGESTED.md` veraltet.** Datei Stand ~27.07.2026 (14 Tage alte Basis).
Führt 15 Einträge, tatsächlich liegen 18 reale Dateien. Fehlend im Register:
- `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`
- `raw/2304-waedenswil-residualwert-zwei-varianten.md`
- `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`
- `raw/zuercher-index-wohnbaupreise-2025-10-update.md`

Diese vier sind alle in `kennwerte.md` verdichtet (verifiziert mit grep), der Inhalt ist
also nicht verloren. Das Ersatz-Register in `wiki/INDEX.md` (nachgeführt 29.08.2026) ist
vollständig und korrekt, die beiden Register sind aber nicht harmonisiert.

**D2 — zwei raw-Dateien nicht in `kennwerte.md` nachvollziehbar.**
- `raw/2105-steinkogler-davos.md` — 0 Treffer in `kennwerte.md` (weder Frontmatter noch Body).
  INDEX.md führt sie als "dokumentiert, nicht promoviert" (Begründung: Eingriffstiefen-Bandbreiten
  statt GV×Kennwert), aber diese Begründung steht nur in INDEX.md und im Trainings-Report, nicht
  im führenden Artikel `kennwerte.md` selbst (anders als die drei vergleichbaren Fälle 2411,
  2305, 2304-waedenswil-residualwert).

- `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` — 2 Body-Treffer in
  `kennwerte.md` (Abschnitt "Run 12"), aber **fehlt im Frontmatter `sources:`** (siehe Audit F).

**D3 — jüngster Output nicht zurückgeführt.** `outputs/2026-08-28_kennwerte-ei30-schiebetueren-kispi.md`
(zwei belegte EI30-Schiebetür-Preisreihen, BKP 273/274) ist neuer als `kennwerte.md`
(`last_updated: 2026-08-23`). Sie ist im CHANGELOG protokolliert (2026-08-28), aber nicht in
`kennwerte.md` selbst (0 Treffer für EI30/Schiebet/274/Jegen). Scope-Entscheidung
(Türeinheitspreis statt CHF/m³-GV-Kennwert?) ist nirgends dokumentiert.

### E. Veraltete Artikel

0 Findings, Status unverändert. `kennwerte.md` (`last_updated: 2026-08-23`) ist 9 Tage alt,
unter der 90-Tage-Schwelle. Keine veralteten Artikel mit unverarbeiteter neuerer Quelle.

### F. Schreibregel-Verstösse

**F1 — Frontmatter `sources:` unvollständig.** `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`
wird im Fliesstext von `kennwerte.md` zweimal zitiert (Abschnitt "Run 12"), fehlt aber in der
Frontmatter-Liste `sources:` (Zeile 5). Eine Zeile ergänzen behebt den Verstoss.

Keine weiteren Verstösse gefunden. Echte Umlaute ä/ö/ü durchgängig korrekt, kein ß,
Gedankenstrich konsistent mit Hub-Konvention. Symbol nur `⚠` als funktionaler Marker, keine
Deko-Emojis. Frontmatter von `kennwerte.md` vollständig.

### G. Promotion-Kandidaten

0 Findings, Status unverändert. `kennwerte.md` trägt `status: emerging` — passend, da Seed-Werte
noch nicht auf "belegt n≥2" promoviert. Die einzige Promotion-Blockade sind die zwei an Raphael
gestellten Fragen (BKP-Scope Tab. 2, Standard-Label "norm, eloquent", gestellt 23.08.2026).
Stand 01.09.2026: zehn Tage unbeantwortet (unverändert zu 30.08.).

## Hinweis zum Scope dieses Laufs

Reine Phase 1 (Audit + Report). Keine Änderungen an `kennwerte.md`, `QUESTIONS.md` oder `raw/`
vorgenommen. Die vier D/F-Findings sind Phase-2-reparierbar (Registerpflege `_INGESTED.md`,
ein Frontmatter-Eintrag, zwei Scope-Vermerke) — Umsetzung nicht Teil dieses unbeaufsichtigten Laufs.

## Vergleich zu 2026-08-30

Identische Findings in A–G. Keine neuen Funde, keine Regression. Status der KB stabil,
Bestätigungstakt unverändert (Endbedingung `training/PROGRAMM.md` seit 13.08.2026 erreicht:
alle raw-Dateien verdichtet oder geschlossen, kein neues Rohmaterial seit 17.08., MFH-Median-Block
rein strukturell). Empfehlung unverändert: Loop auf Ereignis-Trigger (neues Rohmaterial oder
Raphaels Entscheid zu Frage 1/2) umstellen.
