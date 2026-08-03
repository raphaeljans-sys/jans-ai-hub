# Wissens-Health-Check: auflagebereinigung — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 2 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Toter Backlink mit Klammer-Tippfehler** in `wiki/aemter-stadt-zuerich.md`:
   `[[[fristenlogik-bauentscheid-zh]]` — drei oeffnende Klammern. Das Ziel existiert nirgends
   im Wissens-Layer. Entweder Artikel anlegen oder Link entfernen.
2. **`wiki/gvz-einreichung-bma-sprinkler.md` ohne `sources`** — in einer KB, die Amts- und
   Fristenpflichten fuehrt, ist ein unbelegter Artikel der teuerste Fehlertyp.
3. **Zwei neue Outputs am 02./03.08.** — Ruecklauf ins Wiki noch offen.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. `wiki/QUESTIONS.md` wurde am 02./03.08. fortgeschrieben, ohne neue
Widersprueche zu registrieren.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/aemter-stadt-zuerich.md`: `[[[fristenlogik-bauentscheid-zh]]` loest nicht auf
  (zusaetzlich Klammer-Tippfehler).
- `wiki/gvz-einreichung-bma-sprinkler.md`: Frontmatter ohne `sources`.

### C. Unbelegte Claims
1 — derselbe Artikel `gvz-einreichung-bma-sprinkler.md`. Inhalt betrifft Einreichepflichten
gegenueber der GVZ; ohne Fundstelle nicht zitierfaehig.

### D. RAW-Coverage
Kein `raw/`-Bestand. `_INGESTED.md` vorhanden und konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 31 ae/oe/ue-Treffer, Schwerpunkt `wiki/gvz-einreichung-bma-sprinkler.md` (18) und
  `wiki/formular-verifizierung.md` (8).
- Keine Deko-Symbole. Der ss-Treffer in `CLAUDE.md` ist das Regelzitat selbst, kein Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- 2 Outputs am 02./03.08., Ruecklauf ins Wiki offen.
- Statusbild 5 `emerging` / 2 `established` — bei belegter Amtspraxis sind die emerging-Artikel
  Promotionskandidaten, sobald eine zweite Bestaetigung vorliegt.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
