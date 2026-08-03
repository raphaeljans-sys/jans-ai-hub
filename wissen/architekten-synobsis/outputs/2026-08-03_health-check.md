# Wissens-Health-Check: architekten-synobsis — 2026-08-03

## Methode dieses Laufs

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report,
unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

Basis ist der Sammellauf vom **2026-08-01** (48 h zuvor, derselbe Task). Dieser Lauf misst
neu und weist die **Differenz** zur Basis aus. Struktur- und Backlink-Befunde stammen aus
`wissen/tools/wiki-konsistenz.sh` (KB-uebergreifendes Ziel-Universum, keine Fehlalarme bei
Cross-KB-Links). Pruefumfang Audit F: `wiki/` + `destillate/` + `buecher/` + `training/` +
`CLAUDE.md`/`CHANGELOG.md`; `raw/` und `outputs/` ausgenommen.

**Grenze dieses Laufs, ausdruecklich benannt:** Audit A (Widersprueche) wurde nicht als
vollstaendiger paarweiser Neuvergleich aller Artikel gefahren — dafuer reicht das monatliche
Budget bei 19 KBs nicht. Geprueft wurden die in `wiki/QUESTIONS.md` registrierten Spannungen,
das Register `wissen/koordination/SYNERGIE-REGISTER.md` und die seit dem 01.08. geaenderten
Dateien. Ein A0 heisst damit «keine neue Spannung sichtbar», nicht «bewiesen widerspruchsfrei».

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans/Frontmatter | 6 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **`wiki/THEMEN.md` hat kein Frontmatter** und steht nicht im INDEX — sechs der sechs
   B-Befunde entfallen auf diese eine Datei. Unveraendert seit dem 01.08.
2. **Kein `raw/_INGESTED.md`.** Der Korpus liegt als `catalog/*.json` (853 Eintraege), nicht
   als raw-Dump. Das ist bewusst so, aber ohne Register ist Audit D hier strukturell blind.
3. **19 Outputs stehen 4 Wiki-Artikeln gegenueber.** Die KB ist laut Registerentscheid
   saturiert (Stilllegung `synobsis-batch-nacht`); der Ruecklauf-Rueckstand ist damit
   Absicht, kein Versaeumnis — er sollte im INDEX aber als solcher vermerkt sein.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Seit dem 01.08. keine Datei im Scope geaendert.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/THEMEN.md`: kein Frontmatter (fehlend: `title`, `status`, `last_updated`, `sources`).
- `wiki/THEMEN.md`: nicht im `INDEX.md` registriert.
- Keine toten Backlinks. Die 737 Katalog-Verweise loesen korrekt auf `catalog/*.json` auf.

### C. Unbelegte Claims
Keine Findings. Der einzige `established`-Artikel traegt `sources`.

### D. RAW-Coverage
Kein `raw/`, kein `_INGESTED.md` — Audit nicht anwendbar. Empfehlung: `_INGESTED.md` anlegen
und den Katalog-Stand (853 Eintraege, Scan abgeschlossen) dort einmalig registrieren.

### E. Veraltete Artikel
0. Kein Artikel aelter als 90 Tage mit neuerer raw-Evidenz.

### F. Schreibregel-Verstoesse
- 171 ae/oe/ue-Treffer, Schwerpunkt `wiki/QUESTIONS.md` (51) und `wiki/INDEX.md` (36).
- Kein ss-Verstoss, keine Deko-Symbole.

### G. Promotion-/Ruecklauf-Kandidaten
- 19 Outputs, 4 Wiki-Artikel — Ruecklauf-Rueckstand, per Registerentscheid akzeptiert.
- `wiki/QUESTIONS.md` mit 330 Zeilen: der groesste offene Fragenbestand aller KBs.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
