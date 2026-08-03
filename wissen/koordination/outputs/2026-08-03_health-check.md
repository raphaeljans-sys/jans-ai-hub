# Wissens-Health-Check: koordination — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 3 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Die KB weicht strukturell vom Schema ab: kein `wiki/`, kein `INDEX.md`, kein
   `raw/_INGESTED.md`.** Sie fuehrt stattdessen `SYNERGIE-REGISTER.md` und
   `QUERBEZUEGE.md` auf KB-Wurzelebene. Das ist als Register-KB nachvollziehbar, aber es ist
   nirgends festgehalten — der Health-Check liest es deshalb jeden Monat als Fehlbestand.
   Empfehlung: die Abweichung in `koordination/CLAUDE.md` ausdruecklich festschreiben.
2. **30 Outputs, 0 Wiki-Artikel** — formal der extremste Ruecklauf-Rueckstand. Bei einer
   reinen Register-KB ist das aber die richtige Form, nicht ein Versaeumnis.
3. **1 echtes Deko-Symbol** (✅ in `QUERBEZUEGE.md`); die uebrigen 10 sind ⚠-Marker.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. `QUERBEZUEGE.md` und `CHANGELOG.md` am 02./03.08. fortgeschrieben —
das Register selbst ist das Werkzeug, mit dem KB-uebergreifende Spannungen gefuehrt werden.

### B. Kaputte Backlinks / Orphans / Frontmatter
- Kein `wiki/`-Ordner: `wiki-konsistenz.sh` kann Frontmatter und INDEX-Registrierung nicht
  pruefen (1).
- Kein `wiki/INDEX.md` (1).
- Kein `raw/_INGESTED.md` (1).
Keine toten Backlinks in den vorhandenen Registerdateien.

### C. Unbelegte Claims
Keine Findings. Das Register verweist durchgaengig auf die Quell-KB.

### D. RAW-Coverage
Kein `raw/`. Audit nicht anwendbar.

### E. Veraltete Artikel
0 — keine Artikel im Schema-Sinn.

### F. Schreibregel-Verstoesse
- **1 echtes Deko-Symbol**: ✅ in `QUERBEZUEGE.md`. Die uebrigen 10 (6 in `QUERBEZUEGE.md`,
  4 in `CHANGELOG.md`) sind ⚠-Marker.
- 592 ae/oe/ue-Treffer, Schwerpunkt `QUERBEZUEGE.md` (331) und `CHANGELOG.md` (155).
- Kein ss-Verstoss.

### G. Promotion-/Ruecklauf-Kandidaten
- 30 Outputs / 0 Wiki-Artikel — bei einer Register-KB systemgerecht.
- Empfehlung: Schema-Abweichung in `CLAUDE.md` festschreiben, damit der Health-Check sie
  kuenftig nicht als Befund fuehrt.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
