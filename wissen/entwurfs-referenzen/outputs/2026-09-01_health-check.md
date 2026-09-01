# Wissens-Health-Check: Entwurfs-Referenzen — 2026-09-01

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

**Gesamtbefund:** KB ist sauber. Letzter Health-Check 25.08.2026 hatte A0·B0·C0·D0·E0·F1·G0 — der F1-Befund (ae/oe/ue in Parameter-Sets) war nicht selbst entschieden (Phase 2 unbeaufsichtigt nicht ausgefuehrt). Struktur und Backlinks seit 23.08.2026 bestaetigt sauber; die Parameter-Sets bleiben unverändert.

## Top-3 (für Aufmerksamkeit)

1. **Keine kritischen Befunde.** Die KB operiert stabil auf entwurfs-referenzen-QUESTIONS-Ebene (Verdrahtung `machbarkeit` → Parameter-Sets fehlt im Skill, nicht in dieser KB; das ist Schnittstellenfrage an Raphael, Entscheid-Kategorie).
2. **Beide Sachartikel sind `established`.** `bildung.md` (25.07., Refuter-bestätigt) und `trennung-kunst-funktion-judd.md` (18.08., Einquellen-Fund aus Bauprodukte-Triage).
3. **Raw-Material:** Aktuell leer; Material kommt via Abfragen gegen `architekten-synobsis` und Refuter-Verifikationen aus `wettbewerbs-dna`, nicht aus Roh-Importen.

## Details je Audit

### A. Widersprueche zwischen Artikeln

Beide Sachartikel sind fachlich orthogonal (Entwurfsprinzip vs. Typologien-Kennzahlen), kein Overlap, kein Widerspruch. Die Parameter-Sets sind Datenobjekte (JSON-Schema), keine Artikel.

Befund: **0**

### B. Kaputte Backlinks & Orphans

Prüflauf `wiki-konsistenz.sh` am 01.09.2026: keine Befunde.

Abgleich: Umstellung auf Pfad-Notation (23.08., 4 Vorkommen in INDEX.md + Sub-Indizes) hat die frühere Backlink-Probe gegen `[[architekten-synobsis]]` behoben. Alle Wiki-Links sind aktiv registriert (INDEX.md). Kein Artikel ist verwaist.

Befund: **0**

### C. Unbelegte Claims

`trennung-kunst-funktion-judd.md` (established): Donald Judds Essay vollständig gelesen 18.08.2026 (Primärquelle, `/Volumes/daten/03 Bauprodukte_BKP/233 Leuchten und Lampen/6 Pendellampe/Judd/`), vier Kernpunkte mit Zitaten belegt, Urheberrecht beachtet (kein Volltext-Nachdruck).

`bildung.md` (established): Kompilation aus zwei established Quellen (`wettbewerbs-dna` B4/B6, Refuter-bestätigt 21.07.2026), alle Kennzahlen mit Projektbelegen verlinkt.

Parameter-Sets: Alle Kennwerte haben Quellenangaben; das `preisstand`-Feld ist seit 23.08.2026 maschinenlesbar (Jahr, Stichtag, Teuerungsanker) statt nur Prosa-Hinweise.

Befund: **0**

### D. RAW-Coverage-Luecken

`raw/` ist leer (geplant seit 20.07.2026, Material kommt via Abfragen gegen Nachbar-KBs, nicht aus Roh-Importen). Kein eingearbeitetes Material mit offenem Coverage-Status.

Befund: **0**

### E. Veraltete Artikel

`trennung-kunst-funktion-judd.md` last_updated 18.08. (13 Tage), Einquellen-Artikel, keine neuere raw/-Quelle. Status: established, Veralterung nicht relevant ohne Quellenupdate.

`bildung.md` last_updated 25.07. (37 Tage), Refuter-bestätigt, aber keine neueren B4/B6-Revisionen in `wettbewerbs-dna` seit 25.07. (Abgleich: CHANGELOG derzeit bis 27.08., kein Schulbau-Update seither).

Befund: **0**

### F. Schreibregel-Verstoesse

Frontmatter beider Artikel vollständig (`title`, `status`, `last_updated`, `sources`, `links`).

Sprache: Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, kein ß in beiden Artikeln (Typo-Scan durchgefuehrt).

Meta-Dateien (`CLAUDE.md`, `CHANGELOG.md`, `wiki/INDEX.md`, `QUESTIONS.md`): Alle seit 25.07.2026 auf echte Umlaute korrigiert. Einzige Ausnahme sind die drei Parameter-Sets (`*.json`), die durchgehend ASCII-Schreibung verwenden (ae/oe/ue statt Umlaute). Das ist bewusst (maschinenlesbare JSON-Felder), aber nicht als Ausnahme in `CLAUDE.md` festgehalten — Notiz vom 25.08. HC bleibt relevant.

Befund: **0** (bei Artikeln/Meta); **F1** (bei Parameter-Sets, aber bewusst und offen gelassen für Raphael-Entscheid)

### G. Promotion-Kandidaten

Beide Sachartikel haben bereits `established` status (Refuter-verifikation 21.07. / Einquellen-Fund 18.08., keine höhere Stufe definiert).

Cluster-Artikel im `entwurfsprinzipien/`-Ordner sind bei diesem Stand nicht vorgesehen — der Judd-Artikel ist der erste im bisher leeren Ordner, Ergänzung durch weitere Diskurs-/Haltungstexte wären ein dedizierter Folgelauf (nicht diese Nachtschicht).

Parameter-Sets: Kein Promotion-Mechanismus im Status-Feld, aber die Vollständigkeit ist bekannt (`QUESTIONS.md` Abschnitt Verdrahtung/Integration).

Befund: **0**

## Weitere Anmerkungen

**Massgebendes Handbuch:** Health-Check Phase 1 unbeaufsichtigt; Phase 2 (Aktionen/Reparaturen) nicht ausgefuehrt per Regel. Die Parameter-Set-ASCII-Frage bleibt offen (Entscheid Raphael).

**Cross-KB:** Keine neuen Funde oder Abhängigkeits-Änderungen seit 25.08.

Bericht verfasst 2026-09-01 (Phase 1, unbeaufsichtigt).
