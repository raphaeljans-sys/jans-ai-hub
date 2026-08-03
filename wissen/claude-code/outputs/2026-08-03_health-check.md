# Wissens-Health-Check: claude-code — 2026-08-03

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

1. **Strukturell sauber** — keine toten Backlinks, Frontmatter vollstaendig, keine Orphans.
2. **Die 29 unzitierten `raw/`-Dateien sind ein Fehlalarm.** Es sind die fotografierten
   Vortrags-Slides (`IMG_5458.jpeg` bis `IMG_5489.jpeg`); `raw/_INGESTED.md` Z. 5 fuehrt sie
   als destilliert nach `lecture-260729-anthropic` und `kontext-architektur`. Audit D steht
   auf 0. Die Rohmessung greift nicht, weil Bilddateien unter ihrem Sammelnamen zitiert sind.
3. **`wiki/kontext-architektur.md` und `wiki/methoden-register.md` am 02./03.08. gewachsen** —
   die KB ist aktiv, der Ruecklauf funktioniert.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Zwei Artikel am 02./03.08. fortgeschrieben, `wiki/QUESTIONS.md`
mitgefuehrt.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings.

### C. Unbelegte Claims
Keine Findings. Alle 4 `established`-Artikel tragen `sources`.

### D. RAW-Coverage
**0 echte Luecken.** Rohmessung meldet 29 von 32 raw-Dateien als unzitiert; es sind die
32 Slide-Fotos der Anthropic-Lecture vom 29.07.2026, in `raw/_INGESTED.md` Z. 5 als
destilliert registriert (Ziel: `lecture-260729-anthropic`, `kontext-architektur`).

### E. Veraltete Artikel
0 — KB seit Ende Juli 2026 im Aufbau.

### F. Schreibregel-Verstoesse
- 92 ae/oe/ue-Treffer, Schwerpunkt `wiki/methoden-register.md` (20) und `CHANGELOG.md` (15).
- Keine Deko-Symbole. Der ss-Treffer in `CLAUDE.md` ist das Regelzitat.

### G. Promotion-/Ruecklauf-Kandidaten
- 4 `established`, keine Kandidaten offen.
- `wiki/QUESTIONS.md` mit 7 Zeilen — kleiner, beherrschbarer Backlog.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
