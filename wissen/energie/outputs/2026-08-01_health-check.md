# Wissens-Health-Check: energie — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 8 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 167 |
| G Promotion-/Ruecklauf-Kandidaten | 10 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **7 Backlinks sind ueber den Zeilenumbruch zerrissen** (Audit B): `BAUHERREN-FAQ.md:4672` sowie `QUESTIONS.md` Z. 1566/1573/1588/1675/1725/1778. Sie loesen nirgends auf. Dazu ein echt fehlendes Ziel: `[[sia-2024-nutzungsdaten-gesundheitsbau]]` existiert in keiner KB — entweder Artikel anlegen oder Verweis auf `wissen/normen` umbiegen.

2. **123 Deko-Symbole (⚠) in 20 von 33 Artikeln** — der hoechste Wert aller KBs (Audit F). Verstoss gegen «keine dekorativen Symbole» aus der User-Level-CLAUDE.md. Warnhinweise gehoeren als Wort ausgeschrieben, nicht als Piktogramm.

3. **160 offene Fragen in `QUESTIONS.md`** (2724 Zeilen) — nach `twin` der zweitgroesste Fragen-Backlog des Hub. Bei 10 Outputs seit dem letzten Check waechst die Liste schneller, als sie abgearbeitet wird.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `BAUHERREN-FAQ.md:4672` — Backlink ueber Zeilenumbruch zerrissen
- `QUESTIONS.md` Z. 1566, 1573, 1588, 1675, 1725, 1778 — dito (6 Stellen)
- `QUESTIONS.md` — `[[sia-2024-nutzungsdaten-gesundheitsbau]]` existiert nirgends

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 123 Deko-Symbole (⚠) in 20 Artikeln
- 167 ae/oe-Treffer in 4 Dateien
- Kein ß

### G. Promotion-Kandidaten

- 10 Outputs seit dem letzten Check (2026-07-25) — auf Wiki-Ruecklauf zu pruefen
- 5 Artikel auf `emerging` — Promotion pruefen

## Methodik dieses Laufs

Deterministischer Vorfilter statt Volllektuere (Rule 260719, grep-Prinzip):
`wissen/tools/wiki-konsistenz.sh` ueber alle KBs, dazu zwei Messskripte fuer
Frontmatter/Quellen, Schreibregeln und RAW-Coverage. **Jeder gemeldete Befund wurde am
Original gegengeprueft** (Rule 260729b) — das war noetig: von den 66 Roh-Meldungen des
Struktur-Tools sind rund 25 Fehlalarme (siehe unten). Audit A wurde ueber einen
Themen-Ueberlappungs-Vorfilter plus das Cross-KB-Register in `wissen/koordination`
gefahren, nicht als paarweiser Volltextabgleich.

**Werkzeug-Befund (gilt fuer alle KBs):** `wissen/tools/wiki-konsistenz.sh` kennt nur die
Feldnamen `title:` und `sources:` und wertet keine YAML-Blocklisten aus. Dadurch meldet es
(a) die gesamte KB `baurecht` als frontmatterlos, obwohl sie ein eigenes, in ihrer
`CLAUDE.md` verankertes Schema fuehrt (`name:`/`titel:`/`quellen:`/`paragraphen:`), und
(b) jeden Artikel mit `sources:`-Blockliste als quellenlos. Zusaetzlich meldet es den
Tippfehler `[[[artikel]]` als «Ziel existiert nirgends», obwohl das Ziel existiert.
Das Werkzeug wurde ausdruecklich gegen Fehlalarme gebaut — es erzeugt jetzt selbst welche.
