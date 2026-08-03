# Wissens-Health-Check: spec — 2026-08-03

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

1. **Strukturell sauber** — keine toten Backlinks, Frontmatter vollstaendig, keine Deko,
   kein echter ss-Verstoss. Unveraendert zur Basis vom 01.08.
2. **50 Outputs stehen 7 Artikeln gegenueber** — bei einer Methodik-KB ist jeder
   durchgefuehrte Spec-Lauf ein potenzieller Muster-Beleg; der Ruecklauf hinkt der
   Produktion nach wie vor hinterher (zweitschaerfstes Verhaeltnis nach grobkosten).
3. **139 ae/oe/ue-Treffer, davon 78 im `CHANGELOG.md`** — der Wiki-Bestand selbst ist
   weitgehend sauber.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings.

### C. Unbelegte Claims
Keine Findings. Alle 6 `established`-Artikel tragen `sources`.

### D. RAW-Coverage
1 raw-Datei, zitiert. `_INGESTED.md` konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 139 ae/oe/ue-Treffer, davon 78 im `CHANGELOG.md`, 13 in `training/PROGRAMM.md`,
  7 in `templates/spec-vorlage.md`.
- Keine Deko-Symbole. Der ss-Treffer in `CLAUDE.md` ist das Regelzitat.

### G. Promotion-/Ruecklauf-Kandidaten
- 6 `established`, keine offene Promotion.
- **50 Outputs / 7 Artikel** — Ruecklauf-Rueckstand, zweitschaerfstes Verhaeltnis nach
  grobkosten. Konkret: die ausgewerteten realen Spec-Laeufe gehoeren als Muster verdichtet.
- `wiki/QUESTIONS.md` mit 58 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
