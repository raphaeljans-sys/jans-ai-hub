# Wissens-Health-Check: normen — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 13 |
| C Unbelegte Claims | 5 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 |
| G Promotion-/Ruecklauf-Kandidaten | 3 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Sechs tote Backlink-Ziele in `wiki/QUESTIONS.md`** — `[[sia-102-2003]]`,
   `[[sia-180]]`, `[[sia-2024]]`, `[[sia-2032]]`, `[[din-1961-2012]]`, `[[links]]`. In einer
   Normen-KB mit Fundstellenpflicht sind das genau die Normen, auf die andere Skills
   verweisen wollen: die Links zeigen ins Leere, obwohl der Bestand 372 Artikel umfasst.
   Zu pruefen, ob die Destillate unter abweichendem Namen existieren.
2. **`REGISTER.md` ohne jedes Frontmatter** (5 Befunde) — die zentrale Registerdatei der KB.
3. **Zwei Destillate nicht im INDEX registriert**: `synthese-sia-vkf-fachskills`,
   `vkf-beherbergungskategorien`. Sie sind damit ueber den regulaeren Weg nicht auffindbar.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Am 03.08. hat der Wissens-Chef (Run 23) die RWA-Fassungskollision
zwischen GVZ-Merkblatt 2011 (stuetzt sich auf VKF-BSR-RWA 2003) und geltender BSR 21-15
aufgeloest — mit Divergenzband und Planungsregel statt Vorwegnahme. Das war die Aufloesung
einer Spannung, nicht eine neue.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/QUESTIONS.md`: 6 tote Ziele — `[[din-1961-2012]]`, `[[links]]`, `[[sia-102-2003]]`,
  `[[sia-180]]`, `[[sia-2024]]`, `[[sia-2032]]`.
- `REGISTER.md`: kein Frontmatter (fehlend `title`, `status`, `last_updated`, `sources` — 5).
- Nicht im INDEX registriert: `synthese-sia-vkf-fachskills`, `vkf-beherbergungskategorien` (2).

### C. Unbelegte Claims
5 — die 4 `speculative`-Artikel plus `REGISTER.md` ohne `sources`. Bei 190 `established`
Destillaten mit durchgaengiger Fundstelle ist die Quellenpflicht sonst gut gehalten.

### D. RAW-Coverage
Kein offener raw-Bestand; die Destillate entstehen direkt am Original-PDF auf SharePoint.
`_INGESTED.md` vorhanden. Keine Luecke.

### E. Veraltete Artikel
0 nach dem 90-Tage-Kriterium. Materiell wichtiger ist die Ausgaben-Disziplin (Rule
`normen-referenz`): Run 23 hat am 03.08. zwei Fassungsvorbehalte gesetzt (GVZ-RWA,
SIA 251 Fugenplan-Ziffer 2.4.7 → 2.4.9) — dieselbe Pruefung gehoert systematisch ueber die
uebrigen Destillate gezogen.

### F. Schreibregel-Verstoesse
- 3339 ae/oe/ue-Treffer — zweitgroesster Bestand. Schwerpunkt `destillate/sia-331-1988.md`
  (94) und `destillate/vkf-brl-16-15-flucht-rettungswege.md` (82).
- 68 Symbole, alle ⚠-Marker (Datenstand/Fassungsvorbehalt) — funktional, kein Schmuck.
  In dieser KB nicht formal in `CLAUDE.md` sanktioniert; Empfehlung: analog zu energie und
  planungsgrundlagen ausdruecklich zulassen.
- Kein echter ss-Verstoss (die Treffer im `CHANGELOG.md` protokollieren eine frueher
  behobene ss-Korrektur ueber 118 Vorkommen).

### G. Promotion-/Ruecklauf-Kandidaten
- 4 `speculative` / 1 `emerging` / 190 `established`.
- 83 Outputs — der Ruecklauf laeuft ueber die Trainingslaeufe.
- `wiki/QUESTIONS.md` mit 251 Zeilen; K42-4 wurde am 03.08. beantwortet.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
