# Wissens-Health-Check: immobilienbewertung — 2026-08-03

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
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **`wiki/wissensluecken.md` hat kein Frontmatter** (fehlend: `title`, `status`,
   `last_updated`, `sources`) und traegt zusaetzlich das tote Ziel `[[outputs/…]]` — ein
   Platzhalter, der als Backlink geschrieben wurde. Fuenf der sechs B-Befunde.
2. **Keine `wiki/QUESTIONS.md`.** Die Luecken laufen ueber `wissensluecken.md`; das ist eine
   bewusste Abweichung vom Schema, sollte aber in der KB-eigenen `CLAUDE.md` stehen, damit
   der Health-Check sie nicht jeden Monat als Fehlbestand liest.
3. **Die 91 ⚠-Marker sind KEIN Verstoss** — `CLAUDE.md` Z. 52 schreibt sie vor
   («Aelter als 18 Monate → im Artikel als ⚠ Aktualitaet pruefen flaggen»). Korrektur
   gegenueber dem Vorlauf vom 01.08.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Am 02./03.08. wurde `CLAUDE.md` geaendert (ss-Konvention nachgezogen),
kein inhaltlicher Artikel.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/wissensluecken.md`: kein Frontmatter (fehlend `title`, `status`, `last_updated`,
  `sources` — 5 Befunde).
- `wiki/wissensluecken.md`: totes Ziel `[[outputs/…]]` (Platzhalter als Backlink notiert).

### C. Unbelegte Claims
1 — `wiki/wissensluecken.md` ohne `sources`. Materiell unkritisch (Arbeitsdatei, keine
Bewertungsaussage), formal aber ein Verstoss gegen die Quellenpflicht der KB.

### D. RAW-Coverage
Kein offener raw-Bestand; `_INGESTED.md` vorhanden. Keine Luecke.

### E. Veraltete Artikel
0 nach dem 90-Tage-Kriterium. Die 8 ⚠-Marker im `wiki/INDEX.md` weisen dagegen auf
Marktdaten hin, deren 18-Monats-Frist laeuft — das ist der KB-eigene, schaerfere Massstab
und gehoert beim naechsten Trainingslauf abgearbeitet.

### F. Schreibregel-Verstoesse
- **0 Deko-Verstoesse.** Alle 91 Symbole sind ⚠-Aktualitaetsmarker, in `CLAUDE.md` Z. 52
  vorgeschrieben (INDEX 8, `wiki/wissensluecken.md` 5, `wiki/investorenmarkt-makro.md` 5).
- 747 ae/oe/ue-Treffer, Schwerpunkt `training/curriculum.md` (75) und die
  Gemeinde-Marktdaten unter `wiki/marktdaten-gemeinden/`.
- Kein echter ss-Verstoss (Treffer in `CLAUDE.md`/`CHANGELOG.md` sind Regelzitate).

### G. Promotion-/Ruecklauf-Kandidaten
- 26 `established` / 1 `emerging` — reifer Bestand.
- 60 Outputs; der Ruecklauf ins Wiki laeuft ueber die Trainingslaeufe.
- Kein `wiki/QUESTIONS.md` — Schema-Abweichung, in `CLAUDE.md` zu dokumentieren.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
