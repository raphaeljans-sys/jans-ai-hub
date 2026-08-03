# Wissens-Health-Check: wettbewerbs-dna — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Kein `raw/_INGESTED.md` bei 93 raw-Dateien** — die groesste unregistrierte
   Rohbestandsmenge im Wissens-Layer. Alle 93 sind zwar irgendwo zitiert (Audit D auf 0),
   aber ohne Register laesst sich nicht pruefen, was davon eingearbeitet und was nur
   abgelegt ist. Das ist der einzige substanzielle Befund dieser KB.
2. **77 Artikel, alle 71 mit Status `established`** — reifer, geschlossener Bestand aus
   12 Wettbewerbsteilnahmen.
3. **659 ae/oe/ue-Treffer**, Schwerpunkt `wiki/muster/jury-argumente-schulbauten.md` (65)
   und `wiki/INDEX.md` (50).

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Ein Output am 02./03.08.

### B. Kaputte Backlinks / Orphans / Frontmatter
- Kein `raw/_INGESTED.md` bei 93 raw-Dateien (1).
Keine toten Backlinks, kein fehlendes Frontmatter, keine Orphans.

### C. Unbelegte Claims
Keine Findings. Alle 71 `established`-Artikel tragen `sources`.

### D. RAW-Coverage
**0 Luecken** — alle 93 raw-Dateien sind mindestens einmal zitiert. Ohne `_INGESTED.md`
bleibt aber unbelegt, welche davon als eingearbeitet gelten; siehe B.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 1 ⚠-Marker in `wiki/muster/kennwerte-schulbauten.md` — funktional.
- 659 ae/oe/ue-Treffer, Schwerpunkt `wiki/muster/jury-argumente-schulbauten.md` (65),
  `wiki/INDEX.md` (50), `wiki/muster/jans-board-dna.md` (42).
- Kein ss-Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- 71 `established`, keine offene Promotion.
- 12 Outputs; `wiki/QUESTIONS.md` mit 42 Zeilen.
- Ruecklauf-Kandidat: `_INGESTED.md` anlegen und den Bestand der 93 raw-Dateien
  (12 Teilnahmen) einmalig registrieren.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
