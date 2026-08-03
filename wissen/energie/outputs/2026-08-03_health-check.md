# Wissens-Health-Check: energie — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 8 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 3 |
| G Promotion-/Ruecklauf-Kandidaten | 4 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Ein echter ss-Verstoss**: `destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`
   Z. 181 schreibt «Groß-/Kleinschreibung» in einem Methodik-Vermerk. Das ist eigener
   Fliesstext, kein Zitat — zu korrigieren. (Die uebrigen ss-Treffer der KB sind ein
   oesterreichischer Berichtstitel «Energieverbrauch in Großküchen», wortgetreu zitiert und
   damit korrekt.)
2. **Sieben ueber Zeilenumbruch zerrissene Backlinks** in `wiki/BAUHERREN-FAQ.md` (Z. 4672)
   und `wiki/QUESTIONS.md` (6 Stellen). Sie loesen nirgends auf und sind im Wiki tote Links.
3. **Die 497 ⚠-Marker sind KEIN Verstoss.** Die KB-eigene `CLAUDE.md` (Z. 32) schreibt sie
   ausdruecklich vor: «>18 Mt. ohne Pruefung → ⚠ + QUESTIONS». Der Vorlauf vom 01.08. hatte
   sie als Deko-Verstoss gezaehlt — das war ein Fehlalarm und ist hier korrigiert.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Run 122 (03.08.) hat neun AHB-Gebaeudetechnik-Richtlinien destilliert
und dabei vier tote Normverweise aufgedeckt (Art. 20a LRV aufgehoben, SIA 380/4 archiviert,
EN 779 → ISO 16890, ChemRRV) — das sind Aktualitaetsbefunde gegen die Quellen, keine
Widersprueche zwischen Artikeln.

### B. Kaputte Backlinks / Orphans / Frontmatter
- 7 Backlinks ueber Zeilenumbruch zerrissen: `wiki/BAUHERREN-FAQ.md` Z. 4672;
  `wiki/QUESTIONS.md` Z. 1595, 1602, 1617, 1704, 1754, 1807.
- `wiki/QUESTIONS.md`: totes Ziel `[[sia-2024-nutzungsdaten-gesundheitsbau]]` — Artikel
  existiert nirgends im Wissens-Layer.

### C. Unbelegte Claims
1 — der einzige `speculative`-Artikel. Alle 258 uebrigen Artikel tragen `sources` und
`datenstand`.

### D. RAW-Coverage
Kein offener `raw/`-Bestand; die Destillate werden direkt aus dem SharePoint-Korpus gezogen.
`raw/_INGESTED.md` am 03.08. fortgeschrieben. Keine Luecke. Als **Bestandsluecke, nicht
Coverage-Luecke** vermerkt: 19 von 182 energierelevanten PDF sind destilliert, 163 offen
(Stand Run 122) — das ist Programm-Rueckstand, kein Audit-Befund.

### E. Veraltete Artikel
0 nach dem 90-Tage-Kriterium. Materiell relevanter: die vier von Run 122 aufgedeckten toten
Normverweise sind Auffrisch-Anlass fuer die betroffenen Destillate.

### F. Schreibregel-Verstoesse
- **1 echter ss-Verstoss**: `destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md` Z. 181
  («Groß-/Kleinschreibung», eigener Fliesstext). Die 2 Treffer in
  `destillate/grosskuechen-lueftung-abluft-wrg-ch.md` sind der wortgetreue Titel eines
  oesterreichischen Berichts und damit korrekt.
- 2211 ae/oe/ue-Treffer, Schwerpunkt `destillate/waermepumpe-aussengeraet-grenzabstand-zh-sz.md` (90).
- **0 Deko-Verstoesse.** Alle 497 Symbole sind ⚠-Datenstand-Marker, in `CLAUDE.md` Z. 32
  vorgeschrieben (77 allein in `wiki/BAUHERREN-FAQ.md`).

### G. Promotion-/Ruecklauf-Kandidaten
- 1 `speculative` / 105 `emerging` / 153 `established`.
- 3 Outputs am 02./03.08.; Run 122 mit 9 neuen Destillaten, FAQ F202-F207 und dem
  Themenartikel `gebaeudetechnik-pflichtenheft` — Ruecklauf erfolgt.
- `wiki/QUESTIONS.md` mit 291 Zeilen.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
