# Wissens-Health-Check: grobkosten — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **38 Outputs stehen 3 Wiki-Artikeln gegenueber** — unveraendert das schaerfste
   Ruecklauf-Missverhaeltnis im ganzen Wissens-Layer (01.08. waren es 38:3 bei anderer
   Zaehlung). Bei einer Kennwerte-KB ist jeder Output ein potenzieller Kennwert-Beleg; der
   Rueckstand ist hier teurer als anderswo, weil er direkt in Grobkostenschaetzungen wirkt.
2. **`wiki/QUESTIONS.md` mit 123 Zeilen bei 3 Artikeln** — der Fragenbestand ist groesser
   als der Wissensbestand.
3. Strukturell sauber: keine toten Backlinks, Frontmatter vollstaendig, 17 raw-Dateien
   alle zitiert.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings.

### C. Unbelegte Claims
Keine Findings.

### D. RAW-Coverage
17 raw-Dateien, alle zitiert. `_INGESTED.md` konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 1 ⚠-Marker in `wiki/kennwerte.md` — funktionaler Datenstand-Marker, bei Kennwerten
  sachlich geboten.
- 37 ae/oe/ue-Treffer, Schwerpunkt `CHANGELOG.md` (22).
- Kein ss-Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- **38 Outputs / 3 Wiki-Artikel** — hoechste Ruecklauf-Prioritaet aller KBs. Konkret: die
  Kennwerte aus den Nachtschicht-Runs gehoeren verdichtet nach `wiki/kennwerte.md`.
- 1 `emerging` / 0 `established` — Promotion faellig, sobald Kennwerte zweitbelegt sind.
- `wiki/QUESTIONS.md` mit 123 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
