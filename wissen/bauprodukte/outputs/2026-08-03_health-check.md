# Wissens-Health-Check: bauprodukte — 2026-08-03

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
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Strukturell sauber** — keine toten Backlinks, kein fehlendes Frontmatter, keine
   Orphans, RAW-Register konsistent.
2. **9 Artikel, alle `emerging`, kein einziger `established`.** Fuer eine KB, die seit dem
   28.07. aus `/Volumes/daten/03 Bauprodukte_BKP` destilliert wird, ist das erwartbar —
   die Promotion wird erst mit der zweiten Quelle je Produktgruppe faellig.
3. **41 ae/oe/ue-Treffer**, Schwerpunkt ausserhalb des Wiki (`CHANGELOG.md` 27,
   `training/PROGRAMM.md` 11).

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings.

### C. Unbelegte Claims
Keine Findings. Alle 9 Artikel tragen `sources`.

### D. RAW-Coverage
`_INGESTED.md` vorhanden, kein offener raw-Bestand. Keine Luecke.

### E. Veraltete Artikel
0 — KB erst seit 28.07.2026 im Aufbau, 90-Tage-Kriterium noch nicht anwendbar.

### F. Schreibregel-Verstoesse
- 1 Deko-Symbol (⚠) in `wiki/bkp-261-aufzuege.md` — funktionaler Datenstand-Marker,
  in dieser KB nicht formal sanktioniert (vgl. Sammelbefund unten).
- 41 ae/oe/ue-Treffer, davon 38 ausserhalb `wiki/`.
- Der ss-Treffer in `training/PROGRAMM.md` ist das Regelzitat, kein Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- 9 `emerging` / 0 `established` — Promotion erst mit Zweitbeleg je Produktgruppe.
- `wiki/QUESTIONS.md` mit 2 Zeilen: der kleinste offene Fragenbestand aller KBs.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
