# Wissens-Health-Check: firmengruendung-ch — 2026-08-03

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

1. **Die sauberste KB des Wissens-Layers.** Keine toten Backlinks, kein fehlendes
   Frontmatter, keine Orphans, RAW-Register konsistent — und mit 5 ae/oe/ue-Treffern der
   mit Abstand niedrigste Umlaut-Rueckstand aller 18 KBs.
2. **15 von 15 Artikeln `established`** — keine offenen Promotionen.
3. **Operativer Hinweis, kein Audit-Befund:** die KB traegt die AG-Gruendung, die am
   Firmennamen haengt (Voranfrage HRA ZH). Der Stand gehoert ins Logbuch, nicht hierhin.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings.

### C. Unbelegte Claims
Keine Findings. Alle 15 `established`-Artikel tragen `sources`.

### D. RAW-Coverage
6 raw-Dateien, alle zitiert. `_INGESTED.md` konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 1 ⚠-Marker in `wiki/steuern-ag-inhaber.md` — funktionaler Datenstand-Marker bei einem
  Steuerartikel, sachlich richtig gesetzt.
- 5 ae/oe/ue-Treffer (alle im `CHANGELOG.md`) — Bestwert im ganzen Wissens-Layer.
- Der ss-Treffer in `CLAUDE.md` ist das Regelzitat.

### G. Promotion-/Ruecklauf-Kandidaten
- 15 `established`, keine offene Promotion.
- `wiki/QUESTIONS.md` mit 16 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
