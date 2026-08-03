# Wissens-Health-Check: kunde-bopp — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 5 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Drei tote Backlink-Ziele, fuenf Fundstellen**: `[[auftrags-muster-bopp]]` und
   `[[zusammenarbeit-lessons-bopp]]` (je in `wiki/INDEX.md` und
   `wiki/profil-christoph-bopp.md`) sowie `[[project_2620_bauherrschaft]]`. Die ersten
   beiden sind angekuendigte, nie angelegte Artikel; das dritte ist ein **Memory-Name**,
   der als Backlink geschrieben wurde und in einem Wiki nicht aufloest.
2. **2 Artikel, beide `emerging`, 7 Outputs** — Prototyp-KB fuer das Muster «eine KB pro
   Kunde»; der Bestand ist noch duenn.
3. Sonst sauber: kein raw-Rueckstand, keine Deko, kein echter ss-Verstoss.

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/INDEX.md`: `[[auftrags-muster-bopp]]`, `[[zusammenarbeit-lessons-bopp]]` (2).
- `wiki/profil-christoph-bopp.md`: `[[auftrags-muster-bopp]]`,
  `[[zusammenarbeit-lessons-bopp]]`, `[[project_2620_bauherrschaft]]` (3).
Der letzte Fall ist ein Memory-Bezeichner, kein Wiki-Artikel — als Klartext-Verweis
schreiben, nicht als Backlink.

### C. Unbelegte Claims
Keine Findings.

### D. RAW-Coverage
Kein offener raw-Bestand, `_INGESTED.md` vorhanden. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- 34 ae/oe/ue-Treffer, gleichmaessig auf `CLAUDE.md` (9), `CHANGELOG.md` (9) und
  `wiki/QUESTIONS.md` (6) verteilt.
- Keine Deko-Symbole. Die ss-Treffer in `CLAUDE.md`/`CHANGELOG.md` sind Regelzitate.

### G. Promotion-/Ruecklauf-Kandidaten
- 2 `emerging` / 0 `established`, 7 Outputs.
- Die beiden angekuendigten Artikel (`auftrags-muster-bopp`, `zusammenarbeit-lessons-bopp`)
  sind die naheliegendsten Ruecklauf-Kandidaten aus den vorhandenen Outputs.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
