# Wissens-Health-Check: twin — 2026-08-03

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
| B Kaputte Backlinks/Orphans/Frontmatter | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 3 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Ein echter ss-Verstoss**: `wiki/beziehungsregister.md` Z. 1384 schreibt «der bloßen».
   Das ist eigener Fliesstext des Bibliothekars, kein Korpus-Zitat, und damit zu korrigieren.
   **Wichtig zur Abgrenzung:** die 7 ss-Treffer in `wiki/stimme.md` sind das genaue
   Gegenteil — sie zitieren authentische Raphael-Mails mit «Mit freundlichen Grüßen» und
   sind als Beleg des Fremdformat-Ausreissers unverzichtbar. Sie duerfen NICHT korrigiert
   werden.
2. **Drei echte Deko-Symbole** (✅) in `wiki/QUESTIONS.md` — Arbeitsdatei, aber formal ein
   Verstoss.
3. **Toter Backlink `[[260607-kispi-korpus]]`** in `wiki/QUESTIONS.md`.

## Details je Audit

### A. Widersprueche
Keine neue Spannung. Der Fidelity-Lauf vom 03.08. hat zwei neue Eigendokument-Untergattungen
(Sitzungsprotokoll, Bewertungsdokument) belegt und dabei eine offene Frage zur
Anfuehrungszeichen-Konvention registriert (« … » gegen „ … ") — sauber als QUESTIONS-Eintrag
gefuehrt, nicht als Widerspruch stehen gelassen.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/QUESTIONS.md`: totes Ziel `[[260607-kispi-korpus]]`.

### C. Unbelegte Claims
Keine Findings. Alle 6 Facetten-Artikel tragen `sources`; die Belegdisziplin (authentisch
gegen Korrektur-Delta) ist der Kern des Echo-Schutzes und wird eingehalten.

### D. RAW-Coverage
27 raw-Dateien, alle zitiert. `_INGESTED.md` konsistent. Keine Luecke.

### E. Veraltete Artikel
0.

### F. Schreibregel-Verstoesse
- **1 echter ss-Verstoss**: `wiki/beziehungsregister.md` Z. 1384 («der bloßen»).
  Die 7 Treffer in `wiki/stimme.md` sind wortgetreue Korpus-Zitate («Mit freundlichen
  Grüßen») und als Beleg zu erhalten — sie sind kein Verstoss.
- **3 echte Deko-Symbole** (✅) in `wiki/QUESTIONS.md`.
- 227 ae/oe/ue-Treffer, Schwerpunkt `CHANGELOG.md` (91) und `wiki/QUESTIONS.md` (73).

### G. Promotion-/Ruecklauf-Kandidaten
- 6 `established` — reifer Facetten-Bestand.
- 71 Outputs; `wiki/QUESTIONS.md` mit 96 Zeilen, darunter die am 01./03.08. neu gestellten
  Fragen zur Zeichen-Semantik im Eigendokument (260801 #4 beantwortet, 260803 #4 offen).

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen.*
