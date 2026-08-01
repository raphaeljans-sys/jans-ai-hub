# Wissens-Health-Check: entwurfs-referenzen — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Kleinste KB im Bestand** (2 Wiki-Dateien: INDEX + QUESTIONS, kein einziger Sachartikel). Der Inhalt liegt als JSON-Parameter-Sets ausserhalb von `wiki/`. Wie bei `architekten-synobsis` ist das eine bewusste Abweichung vom Meta-Schema, die nirgends als solche dokumentiert ist.

2. **`INDEX.md` verweist auf `[[architekten-synobsis]]`** — das ist ein KB-Name, kein Artikel. Cross-KB-Verweise sind im Hub ausdruecklich erlaubt, aber dieser zeigt auf ein Verzeichnis; praeziser waere der Zielartikel (z.B. `[[RAUMTYPOLOGIEN]]`).

3. **7 offene Fragen, 0 Outputs seit dem letzten Check** (2026-07-25). Die KB ist strukturell gesund, aber inaktiv. Zusammen mit SYN-02/SYN-15 aus `koordination` (Parameter-Sets nicht an `volumen_generator.py` angeschlossen) ist das der eigentliche Befund: die Daten sind da, der Konsument fehlt.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `INDEX.md` — `[[architekten-synobsis]]` zeigt auf eine KB, nicht auf einen Artikel

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 1 ae/oe-Treffer
- Keine Deko-Symbole, kein ß

### G. Promotion-Kandidaten

- Keine Sachartikel vorhanden — Status-Promotion nicht anwendbar

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
