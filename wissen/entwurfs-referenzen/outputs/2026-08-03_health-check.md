# Wissens-Health-Check: entwurfs-referenzen — 2026-08-03

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

1. **Toter Backlink `[[architekten-synobsis]]` im `wiki/INDEX.md`** — das ist ein
   KB-Name, kein Artikel. Der Verweis auf eine Nachbar-KB gehoert als Pfadangabe
   (`wissen/architekten-synobsis/`) geschrieben, nicht als Backlink.
2. **2 Wiki-Artikel bei 4 Outputs** — kleine, ruhige KB (JSON-Parameter-Sets).
3. Sonst sauber: Frontmatter vollstaendig, kein ss, 1 funktionaler ⚠-Marker.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/INDEX.md`: `[[architekten-synobsis]]` loest nicht auf (KB-Name statt Artikelname).

### C. Unbelegte Claims
Keine Findings.

### D. RAW-Coverage
Kein offener raw-Bestand, `_INGESTED.md` vorhanden. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 1 ⚠-Marker in `wiki/typologien/bildung.md` — funktional, kein Schmuck.
- 27 ae/oe/ue-Treffer, davon 18 im `CHANGELOG.md`.
- Kein ss-Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- 1 `established`-Artikel, 4 Outputs. `wiki/QUESTIONS.md` mit 15 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
