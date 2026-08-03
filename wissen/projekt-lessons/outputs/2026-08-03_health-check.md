# Wissens-Health-Check: projekt-lessons — 2026-08-03

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
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Ein toter Backlink mit Klammer-Tippfehler** in
   `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`:
   `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]` — drei oeffnende Klammern, Ziel existiert
   nicht. Derselbe Fehlertyp wie in auflagebereinigung; beide Faelle deuten auf eine
   wiederkehrende Tippfehler-Quelle beim Setzen von Backlinks.
2. **7 Artikel, 5 Outputs** — ausgewogenes Verhaeltnis, der Ruecklauf funktioniert.
3. Sonst sauber: Frontmatter vollstaendig, keine Deko, kein echter ss-Verstoss.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`:
  `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]` loest nicht auf (Klammer-Tippfehler).

### C. Unbelegte Claims
Keine Findings.

### D. RAW-Coverage
3 raw-Dateien, alle zitiert. `_INGESTED.md` konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 38 ae/oe/ue-Treffer, Schwerpunkt `CHANGELOG.md` (18).
- Keine Deko-Symbole. Der ss-Treffer in `CLAUDE.md` ist das Regelzitat.

### G. Promotion-/Ruecklauf-Kandidaten
- 1 `speculative` / 1 `emerging` / 4 `established`. Der `speculative`-Artikel ist
  Promotionskandidat, sobald ein zweiter Projektfall dasselbe Muster zeigt.
- `wiki/QUESTIONS.md` mit 13 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
