# Wissens-Health-Check: bauprodukte — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 4 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Erster Health-Check dieser KB** (angelegt 28.07.2026, Korpus 1 des Skills `wissens-destillat`). Struktur sauber: 8 Artikel, alle mit vollstaendigem Frontmatter und Quellen, keine toten Backlinks, alle im INDEX.

2. **Alle 8 Artikel stehen auf `emerging`** (Audit G) — erwartbar fuer eine junge KB. Bei der naechsten Destillat-Runde je Artikel pruefen, ob die Belegdichte fuer `established` reicht.

3. **Strukturelle Insellage (aus `koordination` SYN-16):** ausser der Aufzaehlung in CLAUDE.md verweist kein Skill/Agent/Rule auf diese KB, obwohl `ausschreibung`/`offertenpruefung`/`kostenschaetzung` die vorgesehenen Konsumenten sind. Entscheid Raphael zur Rollentrennung steht aus.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

Keine Findings.

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 1 Deko-Symbol (⚠) in 1 Artikel
- 0 ae/oe-Verstoesse, kein ß

### G. Promotion-Kandidaten

- 8 Artikel auf `emerging` — Promotion bei belegter Mehrfachbestaetigung
- 4 Outputs bislang; erster Health-Check, daher kein Delta

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
