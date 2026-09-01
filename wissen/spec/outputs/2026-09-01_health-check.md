# Wissens-Health-Check: spec — 2026-09-01

## Methode dieses Laufs

Einzel-KB-Lauf (Nachtschicht Mac Mini, Prioritaet 6: wissenscheck Phase 1 unbeaufsichtigt,
KB mit dem aeltesten Audit-Datum). Basis ist der letzte Sammellauf vom **2026-08-03**
(`outputs/2026-08-03_health-check.md`), knapp vier Wochen zuvor. Seither ein neuer
Trainingslauf (Lauf 39, 24.08.2026, Verifikationslauf mit F-ENV1-Loesung). Phase 2
(Aktionen) bewusst NICHT ausgefuehrt — unbeaufsichtigter Lauf.

Pruefumfang: alle 5 Wiki-Artikel (`the-spec`, `3-schritte-spec`, `verifier`,
`environment-jans-hub`, `anwendung-jans`), `INDEX.md`, `QUESTIONS.md`, `raw/_INGESTED.md`
(1 Quelldatei), `CLAUDE.md`, `templates/spec-vorlage.md`, alle 52 Eintraege in `outputs/`
mindestens dem Datumsstempel nach (Volltext nur bei Claim-Verifikation).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 0 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

Keine Befunde in diesem Lauf. Drei Beobachtungen zur Einordnung statt Top-3-Maengel:

1. **Die drei am 03.08. offen gefuehrten Methodik-Fragen (F1/F2/F3) sind weiterhin
   unbeantwortet, aber aktiv gepflegt** — F1 (Ueberdehnungs-Schwelle) und F3
   (Marketing/Text-Verifier-Domaene) wurden im Lauf 39 (24.08.) gezielt gegengeprueft und
   ohne neuen Fund geschlossen bestaetigt; kein stiller Rueckstand.
2. **Kein zehnter realer Spec-Fall seit der Korpus-Spec `bauprodukte` (28.07.2026)** —
   eigene Gegenpruefung (`find … -iname "*_spec.md"`, hub-weit) bestaetigt den Stand aus
   Lauf 39 unveraendert. Die Zaehlung in `wiki/QUESTIONS.md` ist damit weiterhin aktuell,
   kein Nachtrag noetig.
3. **F-ENV1 exemplarisch geloest, aber nur an einem Artikel** — `environment-jans-hub.md`
   traegt seit Lauf 39 einen reproduzierbaren Messweg statt eingefrorener Zahlen; die
   allgemeine Lehre (fuenfter Alterungsmodus) bleibt laut `anwendung-jans.md` bewusst als
   Prinzip stehen, nicht als weitere Zaehlstands-Pflicht auf jeden Artikel ausgerollt. Kein
   Handlungsbedarf, nur zur Einordnung.

## Details je Audit

### A. Widersprueche
Keine gefundenen Widersprueche zwischen den 5 Artikeln. Insbesondere die historisch
gewachsene Passage in `environment-jans-hub.md` zur Git-Commit-Praxis (Lauf 8/9, Nachtrag
27.07.) deckt sich mit dem aktuellen Stand von `rules/git-auto-push.md` und
`rules/sync-kanonische-quelle.md` (NAS-Ausnahme oben, andere Repos unten) — kein Drift seit
der letzten Pruefung.

### B. Kaputte Backlinks/Orphans
Alle `[[…]]`-Links aufgeloest: `the-spec`, `3-schritte-spec`, `verifier`,
`environment-jans-hub`, `anwendung-jans` (alle 5 gegenseitig verlinkt und in `INDEX.md`
gelistet) sowie der Cross-KB-Link `[[kontext-architektur]]` in `environment-jans-hub.md`
→ `wissen/claude-code/wiki/kontext-architektur.md` existiert. Keine Orphans, keine toten
Ziele.

### C. Unbelegte Claims
Stichprobe der zentralen Zitate (Karpathy-Waschanlagen-Beispiel, Cherny-2-3x-Zitat,
Anthropic-Plan-Mode-Zitat) — alle mit URL + Datum der Einloesung referenziert
(`sources`-Feld + Volltext-Fundstelle im Artikel). Interne Fallbelege (AG-Gruendung,
Thalwil, Wettbewerbs-Layer, SYN-02, Korpus-Spec bauprodukte) verweisen durchgehend auf
datierte `outputs/`-Dateien.

### D. RAW-Coverage
`raw/_INGESTED.md` fuehrt genau eine Quelle (`260616_marchese_the-spec_karpathy-method_
transkript.md`), vollstaendig eingearbeitet in alle 5 Artikel. Keine Luecke.

### E. Veraltete Artikel
Aeltestes `last_updated`: `the-spec`/`3-schritte-spec` 2026-07-24 (39 Tage) — unter der
90-Tage-Schwelle, zudem keine neuere Rohquelle vorhanden, die eine Auffrischung verlangen
wuerde (weiterhin nur die eine Transkript-Quelle).

### F. Schreibregel-Verstoesse
Frontmatter vollstaendig in allen 5 Artikeln (`title`/`status`/`last_updated`/`sources`/
`links`). Schweizer Hochdeutsch, echte Umlaute durchgehend; keine Deko-Symbole/Emojis
gefunden (Regex-Scan negativ). `sources`-Mischung aus Roh-Dateiname und externer
Zitat-ID (`bcherny_x_2007179861115511237`) entspricht dem im Meta-Schema vorgesehenen
Format `[<raw/-Dateiname>, <URL>, <Gesetzesartikel>]` — kein Verstoss.

### G. Promotion-Kandidaten
Alle 5 Artikel bereits `status: established`. Keine `QUESTIONS.md`-Eintraege, die
inzwischen beantwortet aber noch nicht ins Wiki uebertragen waeren — die drei offenen
Faeden (F1/F2/F3) sind laut jeweils letztem Lauf-39-Nachtrag korrekt weiterhin offen
gefuehrt. Outputs/Wiki-Verhaeltnis (52 Outputs / 5 Content-Artikel) unveraendert zur
letzten Messung (50/5 am 03.08.) — kein wachsender Rueckstand, sondern die erwartete Form
eines Trainings-Loops mit vielen reinen Verifikationslaeufen ohne neuen Wiki-Bedarf.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
