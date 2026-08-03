# Wissens-Health-Check: baurecht — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 24 |
| C Unbelegte Claims | 10 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 3 |
| G Promotion-/Ruecklauf-Kandidaten | 3 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Zehn Wiki-Artikel ohne `title:` und ohne `sources:` im Frontmatter** — darunter
   `ausnahmebewilligung-und-bestandesschutz`, `fahrzeugabstellplaetze-und-parkierung`,
   `rechtsschutz-und-rechtsmittelverfahren`, `wohnhygiene-und-raumanforderungen`. In der
   Baurechts-KB gilt die verschaerfte Quellenpflicht (jede rechtliche Aussage mit
   §-Grundlage); ein Artikel ohne `sources`-Feld verletzt sie formal, auch wenn die
   Fundstellen im Fliesstext stehen.
2. **41 echte Deko-Symbole** (40x ✅, 1x 🟡) in `wiki/QUESTIONS.md` — anders als das ⚠ in
   den Fach-KBs ist der Haken kein sanktionierter Funktionsmarker, sondern Dekoration.
   Verstoss gegen die User-Level-Regel «keine dekorativen Symbole».
3. **Die 42 unzitierten `raw/`-Dateien sind ein Fehlalarm.** Es sind die kommunalen
   BZO-Volltexte (44 Gemeinden, via Connector); `raw/_INGESTED.md` Zeile 19 fuehrt sie
   ausdruecklich als «Direktkonsultation». Audit D steht damit auf 0.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Am 03.08. hat der Wissens-Chef (Run 23) fuenf inhaltliche Korrekturen
eingebracht, darunter die Fassungs-Weiche zu § 259 PBG in `wiki/nutzungsziffern.md` — das war
die Aufloesung einer bestehenden Spannung, nicht eine neue.

### B. Kaputte Backlinks / Orphans / Frontmatter
- 10 Artikel ohne `title:`, 10 davon zugleich ohne `sources:` (20 Einzelbefunde):
  `ausnahmebewilligung-und-bestandesschutz`, `bauausfuehrung-und-baukontrolle`,
  `baurechtlicher-vorentscheid-und-voranfrage`, `enteignung-und-entschaedigung`,
  `fahrzeugabstellplaetze-und-parkierung`, `laermschutz-und-nichtionisierende-strahlung`,
  `nebenbestimmungen-und-reverse`, `rechtsschutz-und-rechtsmittelverfahren` (nur `title`),
  `wohnhygiene-und-raumanforderungen`.
- `wiki/QUELLEN.md`: Frontmatter ohne `title`, `last_updated`, `sources` (3).
- `wiki/QUESTIONS.md` Z. 669 und Z. 1468: Backlink ueber Zeilenumbruch zerrissen (2).
- `wiki/wohnhygiene-und-raumanforderungen.md`: totes Ziel `[[260712_amtlich_zh_energ]]` —
  abgeschnittener Dateiname, gemeint ist vermutlich `260712_amtlich_zh_energiegesetz` (1).

### C. Unbelegte Claims
10 — die Artikel ohne `sources`-Feld. Stichprobe zeigt: die §-Fundstellen stehen im
Fliesstext, fehlen aber im Frontmatter. Formaler, kein materieller Befund; die Korrektur ist
mechanisch (Feld nachtragen), aber sie ist Pflicht, weil die KB-eigene `CLAUDE.md` das
`sources`-Feld als Traeger der Quellenpflicht definiert.

### D. RAW-Coverage
**0 echte Luecken.** Die Rohmessung meldet 42 von 85 raw-Dateien als nirgends zitiert; alle 42
sind kommunale BZO-Volltexte, die `raw/_INGESTED.md` Z. 19 als Sammelposten
(«44 Dateien … Direktkonsultation, Register siehe [[QUELLEN]]») registriert. Ausserhalb der
BZO-Gruppe ist kein einziger raw-Bestand unzitiert.

### E. Veraltete Artikel
0. Alle Artikel juenger als 90 Tage oder ohne neuere raw-Evidenz. Am 02./03.08. sind vier
neue amtliche Volltexte eingegangen (Verkehrserschliessungs-V, WSG, WSV, HWSchV) — sie sind
Auffrisch-Anlass fuer `abstaende-und-hoehen` und `baureife-und-erschliessung`, aber beide
Artikel wurden am 03.08. bereits angefasst.

### F. Schreibregel-Verstoesse
- **41 echte Deko-Symbole**: 40x ✅ und 1x 🟡 in `wiki/QUESTIONS.md`. Die 3 ⚠ in
  `wiki/baureife-und-erschliessung.md` und 14 in `training/` sind funktionale
  Datenstand-Marker, kein Schmuck.
- 3844 ae/oe/ue-Treffer — mit Abstand der groesste Bestand. Schwerpunkt sind die
  Buch-Destillate `buecher/band-2/` (15-lage-von-gebaeuden 87+91, 14-nutzungsdichte 86,
  16-gebaeudedimensionen 84).
- **Kein echter ss-Verstoss.** Die Treffer in `CLAUDE.md` und `training/PROGRAMM.md` sind
  die Regelzitate selbst.

### G. Promotion-/Ruecklauf-Kandidaten
- 32 `emerging` / 36 `established`. Die am 03.08. korrigierten Artikel (nutzungsziffern,
  abstaende-und-hoehen, baureife-und-erschliessung, fahrzeugabstellplaetze) sind nach der
  Gegenpruefung am amtlichen Volltext Promotionskandidaten.
- `wiki/QUESTIONS.md` mit 332 Zeilen — zweitgroesster offener Fragenbestand.
- 2 Outputs am 02./03.08. (Wissens-Chef Run 23), Ruecklauf bereits erfolgt.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
