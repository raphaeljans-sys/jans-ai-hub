# Wissens-Health-Check: planungsgrundlagen — 2026-08-03

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
| F Schreibregel-Verstoesse | 2 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Strukturell makellos bei 51 Wiki-Artikeln** — keine toten Backlinks, kein fehlendes
   Frontmatter, keine Orphans, kein nicht registrierter Artikel. Das ist die groesste KB,
   die den Struktur-Check ohne einen einzigen Befund besteht.
2. **Der ss-Befund vom 01.08. war ein Fehlalarm.** Der damals als «einziger ss-Fall im ganzen
   Wissens-Layer» gemeldete Treffer steht in
   `wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` im `sources`-Feld — es ist der
   **Dateiname der Quelle** («Heizwärmebedarf Berechnung SIA 380_1.pdf») und damit wortgetreu
   korrekt wiedergegeben. Kein Verstoss.
3. **Die 160 ⚠-Marker sind KEIN Verstoss** — `CLAUDE.md` Z. 21 schreibt sie vor
   («>18 Mt. ohne Pruefung → ⚠ + Eintrag in `wiki/QUESTIONS.md`»).

## Details je Audit

### A. Widersprueche
Keine. Seit dem 01.08. keine Aenderung im Scope.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine Findings — bei 51 Artikeln der beste Strukturbefund des Wissens-Layers.

### C. Unbelegte Claims
Keine Findings. Alle Artikel tragen `sources` und `datenstand`.

### D. RAW-Coverage
Kein offener raw-Bestand, `_INGESTED.md` vorhanden. Keine Luecke.

### E. Veraltete Artikel
0 nach dem 90-Tage-Kriterium. Die 160 ⚠-Marker fuehren die 18-Monats-Faelle der KB-eigenen,
schaerferen Regel — sie sind der eigentliche Auffrisch-Vorrat.

### F. Schreibregel-Verstoesse
- **0 Deko-Verstoesse.** Alle 160 Symbole sind ⚠-Datenstand-Marker, in `CLAUDE.md` Z. 21
  vorgeschrieben. Schwerpunkt `wiki/kartenportale-naturgefahren-objektschutz.md` (8),
  `wiki/energie-energienachweis-zh-formulare.md` (7).
- **0 ss-Verstoesse** — der Treffer in
  `wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` ist ein Quell-Dateiname im
  `sources`-Feld (Korrektur gegenueber dem Report vom 01.08.).
- 962 ae/oe/ue-Treffer, breit verteilt, kein einzelner Ausreisser ueber 9.

### G. Promotion-/Ruecklauf-Kandidaten
- 9 `emerging` / 40 `established` — reifer Bestand.
- 102 Outputs; `wiki/QUESTIONS.md` mit 161 Zeilen. Offen aus der Dateinamen-Konvention:
  E13 (vier Connector-Scripts mit `toISOString()`-UTC-Falle noch nicht behoben).

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
