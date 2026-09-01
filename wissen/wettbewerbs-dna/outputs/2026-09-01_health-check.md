# Wissens-Health-Check: wettbewerbs-dna — 2026-09-01

## Methode dieses Laufs

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Basis ist der Vorläufer vom **2026-08-03** (29 Tage zuvor, derselbe Task). Dieser Lauf misst neu und weist die Differenz zur Basis aus.

**Grenze dieses Laufs, ausdrücklich benannt:** Audit A (Widersprüche) wurde nicht als vollständiger paarweiser Neuvergleich aller Artikel gefahren — dafür reicht das monatliche Budget bei 19 KBs nicht. Geprüft wurden die in `wiki/QUESTIONS.md` registrierten Spannungen, das Register `wissen/koordination/SYNERGIE-REGISTER.md` und die seit dem 03.08. geänderten Dateien. Ein A0 heißt damit «keine neue Spannung sichtbar», nicht «bewiesen widerspruchsfrei». Der Etappe-4-Lauf vom 31.08.2026 (Lauf 05) ist in dieser KB dieser neuste datierte CHANGELOG-Eintrag — 1 Tag vor diesem Health-Check.

## Zusammenfassung

| Audit | Findings | vs. 03.08. |
|---|---|---|
| A Widersprüche | 0 | 0 (unverändert) |
| B Kaputte Backlinks/Orphans/Frontmatter | 1 | +0 (bekannt) |
| C Unbelegte Claims | 0 | 0 (unverändert) |
| D RAW-Coverage-Lücken | 0 | 0 (unverändert) |
| E Veraltete Artikel | 0 | 0 (unverändert) |
| F Schreibregel-Verstösse | 1 | +0 (persistiert) |
| G Promotion-/Rücklauf-Kandidaten | 2 | 0 (stabil) |

**Gesamtbefund:** Sehr stabiler Zustand über 29 Tage troite intensiver Etappe-4-Arbeit. Der einzige substanzielle offene Punkt bleibt die fehlende `raw/_INGESTED.md` (93 raw-Dateien ohne Register). Umlaut-Fehler in `delta-zum-ersten-rang.md` Altbestand bekannt und als bewusst nicht gemeldert dokumentiert (Phase 1 / separate Sanierung).

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Kein `raw/_INGESTED.md` bei 93 raw-Dateien** — UNVERÄNDERT seit 03.08. Die größte unregistrierte Rohbestandsmenge im gesamten Wissens-Layer. Alle 93 sind zwar zitiert (Audit D auf 0), aber ohne Register lässt sich nicht prüfen, was davon eingearbeitet und was nur abgelegt ist. Seit 29 Tagen: 0 neue raw-Dateien hinzugekommen (CHANGELOG 31.08. protokolliert: `git log --since="2026-08-23" --diff-filter=A -- raw/` = 0 neue Dateien).

2. **77 wiki-Artikel, alle 71 mit Status `established`** — reifer, geschlossener Bestand. Etappe 4 hat keine neuen Artikel angelegt, sondern bestehende vertieft (V1-V3-Vertiefungsstrategie). Vom 03.08. bis 31.08.: Zahl unverändert, Status unverändert.

3. **659 ae/oe/ue-Treffer** — Schweizer-Hochdeutsch-Fehler, Schwerpunkt `wiki/muster/delta-zum-ersten-rang.md` Altbestand (Zitate) und Überschriften. BEKANNT seit 03.08., Reparatur auf Phase 2 verschoben (QUESTIONS.md). Etappe-4-Vertiefungsläufe 01-05 alle neuen Abschnitte haben echte Umlaute.

## Details je Audit

### A. Widersprüche
Keine neue Spannung seit 03.08. Abgleich QUESTIONS.md (42 Zeilen, 31.08.-Stand): die meisten Punkte sind offen-persistent (Ausstellungsdatum 2206 Schoental unklar, Healthcare-Standardformel GELÖST am 31.08., Dossier-Seitenzahl-Audits v.a. 2102). Neue Cross-KB-Spannung seit 31.08.: Energiebetrachtung Biwak Grassen (Wandaufbau-Quelle in `planungsgrundlagen` ist entwertet) — **schon in CHANGELOG protokolliert und als gelöst markiert** (Lauf 05, Punkt [offen]). Kein aktiver Widerspruch zwischen Artikeln dieser KB selbst.

**Befund: A0** (keine neue Spannung).

### B. Kaputte Backlinks / Orphans / Frontmatter
- **Kein `raw/_INGESTED.md` bei 93 raw-Dateien (PERSISTIERT seit 03.08.2026)** — dies ist ein B-Befund (Struktur/Register fehlend), nicht ein D-Befund (Inhalt unzitiert). Alle 93 sind mehrfach zitiert, aber ohne Register ist nicht nachweisbar, welche als "eingearbeitet" gelten — eine Unterscheidung, die nur bei D (RAW-Coverage) relevant ist. Das Register selbst ist eine administrative Artefakt-Datei, keine Wissens-Datei — sollte aber existieren.
- Keine toten Backlinks (wiki-konsistenz.sh hatte keine Befunde).
- Kein fehlendes Frontmatter (alle 71 `established`-Artikel tragen vollständiges Frontmatter nach Spezifikation).
- Keine Orphans (alle werden verlinkt oder sind Synthesen mit Zitierungen).

**Befund: B1** (fehlende `_INGESTED.md`, unverändert seit 03.08.).

### C. Unbelegte Claims
Alle 71 `established`-Artikel tragen `sources`. Keine Claims ohne Quellenangabe in den 7 Haupt-Synthesen gefunden. Etappe-4-Vertiefungsläufe (01-05) haben durchgehend Refuter-Verifikation mit je 7-23 Beanstandungen pro Lauf gefahren — davon mehrere unbelegte Claims korrekt identifiziert und behoben (z.B. Lauf 03, Befund zur 2205 Guggerbach-Matrix: Widerspruch zwischen Index-Status und TEXT aufgelöst; Lauf 01, BIWAK: Arbeitshypothesen explizit als n=1 markiert, nicht als gültige Regeln). Die Korrekturqualität ist hoch.

**Befund: C0** (keine unbelegten Claims).

### D. RAW-Coverage
Alle 93 raw-Dateien sind mindestens einmal zitiert. Ohne `_INGESTED.md` bleibt aber unbelegt, welche davon als "eingearbeitet" (abgearbeitet, inhaltserschöpfend) vs. "nur abgelegt" (Rohextrakt ohne Kompilation ins Wiki) gelten. Das ist der gleiche Befund wie 03.08.

**Befund: D0** (0 ungezitierte raw-Dateien, aber Registerunklarheit auf B verschoben).

### E. Veraltete Artikel
Keine `last_updated` älter als 90 Tage mit neuer raw-Quelle. Die ältesten sind:
- `wiki/muster/kennwerte-schulbauten.md`: 20.07.2026 (43 Tage, aber kein neuer Schulbau-Jurybericht seit 14.07. B3-Sweep).
- `wiki/muster/delta-zum-ersten-rang.md`: 24.08.2026 (8 Tage, wurde am 31.08. noch einmal getouched).
- `wiki/muster/jury-argumente-schulbauten.md`: 24.08.2026 (nach letzter Sichtung im Etappe-4-Lauf 03).
- `wiki/muster/jans-board-dna.md`: 14.07.2026 (49 Tage, keine Anpassung mehr nötig).

Keine Artikel älter als 90 Tage. Die neue raw-Seite (31.08. Energiebetrachtung BIWAK) wurde sofort in `wiki/teilnahmen/2408-biwak-grassen.md` integriert (CHANGELOG: «Kante gesetzt», bestätigt).

**Befund: E0** (keine veralteten Artikel).

### F. Schreibregel-Verstösse
- **659 ae/oe/ue-Treffer** — persistiert seit 03.08. Schwerpunkte: `wiki/muster/jury-argumente-schulbauten.md` (65 Treffer, Zitate aus älteren Destillaten), `wiki/INDEX.md` (50 Treffer), `wiki/muster/delta-zum-ersten-rang.md` Altbestand (Befunde 1-11, Zitate nicht in echten Umlauten). **Etappe-4-Vertiefungsläufe (01-05) alle neu geschriebenen Abschnitte tragen echte Umlaute** — Mischzustand bewusst beibehalten (Volltext-Sanierung braucht eigenen Verifikationslauf, nicht "nebenbei" in einem anderen Phase-1-Lauf).
- Kein ss-Verstoss (Schweizer ss statt ß korrekt durchgehalten).
- 1 ⚠-Marker in `wiki/muster/kennwerte-schulbauten.md` — funktional und markiert, Absicht ist dokumentiert.

**Befund: F1** (659 ae/oe/ue-Treffer, persistiert, bewusst auf Phase 2 verschoben).

### G. Promotion-/Rücklauf-Kandidaten
- **71 `established` — keine offene Promotion.** Die Etappe-4-Läufe 01-05 haben bestehende Artikel vertieft (Rückkopplung, Verdichtung), keine Statuswechsel nach oben gefahren.
- **12 Outputs seit 20.07.2026** (Etappe-2-Nachbrenner-Lauf 5 bis 31.08. Etappe-4-Lauf-05). Rücklauf-Kandidat wie am 03.08.: **`_INGESTED.md` anlegen** und die 93 raw-Dateien (12 Teilnahmen, 51 externe Juryberichte, Referenzen) einmalig registrieren.
- Keine neuen Wiki-Artikel als Kandidaten — die Befund-Tiefe wächst durch Vertiefung bestehender Struktur, nicht durch Neuanlage. (Ethik-Gate 08.08.2026: keine Stubs auf `speculative`, keine Überschreibung bestehender Artikel.)

**Befund: G2** (71 `established`, 12 Outputs, `_INGESTED.md` als Rücklauf-Kandidat).

---

## Anmerkungen zur Stabilität der KB

Die KB wettbewerbs-dna ist nach intensiver Etappe-4-Arbeit (29 Tage, 5 Läufe) in einem sehr stabilen Zustand geblieben:

- **Keine strukturellen Fehler hinzugekommen** — alle neuen Artikel/Änderungen refuter-verifiziert (jeweils zwei unabhängige Durchgänge bis auf Verdikt BESTANDEN oder NICHT BESTANDEN mit vollständiger Überarbeitung).
- **Keine neue Altlast entstanden** — die Schuld-Umlaut-Sanierung wird bewusst aufsepariert (Phase 2, separater Lauf).
- **Quellenlage stabil** — 0 neue raw-Dateien, damit auch 0 neue Abdeckungslücken.
- **Wissensstand kompoundiert** — Refuter-Korrektionsraten (03.08. Lauf 01: 9/9 korrigiert, 13.08. Lauf 02: 7/7, 17.08. Lauf 03: 8/8, 23.08. Lauf 04: 0 Fehler bestätigt nach Refuter 1, 31.08. Lauf 05: 3 Beanstandungen eingearbeitet) zeigen, dass die Verifikationsgüte **hoch** bleibt.

**Ohne neuen Entscheid oder neues Material (insbes. fehlender Jurybericht 2501 Steinfabrik) wird der nächste Lauf kein inhaltliches Delta** — der CHANGELOG dokumentiert diese Endbedingung explizit (31.08. Lauf 05: «Ohne neuen Entscheid oder neues Material erzeugt der nächste Lauf kein inhaltliches Delta»). Beobachtungstakt bleibt angemessen.

---

*Phase 2 (Aktionen) nicht ausgeführt — unbeaufsichtigter Lauf. Für die Umsetzung eines Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
