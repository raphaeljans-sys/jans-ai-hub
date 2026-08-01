# Wissens-Health-Check: koordination — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 0 |
| G Promotion-/Ruecklauf-Kandidaten | 28 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Diese KB hat kein `wiki/`, kein `raw/`, kein `QUESTIONS.md`** — sie besteht aus `SYNERGIE-REGISTER.md`, `QUERBEZUEGE.md` und 28 Outputs. Das ist **bauartbedingt korrekt**: sie ist das Register der Koordinationsinstanz UEBER den KBs (Skill `synergie-orchestrator`), nicht selbst eine Wissensdomaene. Die sieben Artikel-Audits sind hier nicht anwendbar.

2. **Das Synergie-Register traegt 19 Eintraege, davon 11 offen** — darunter drei, die ausdruecklich auf Raphaels Entscheid warten: SYN-16 (Rollentrennung `bauprodukte` ↔ `ausschreibung`), SYN-17 (doppelt gepflegte Setup-Fakten im immer geladenen Kontext), SYN-19 (7 Skills fehlen im CLAUDE.md-Wegweiser).

3. **Empfehlung zur Schema-Klarheit:** in `wissen/WISSEN-CLAUDE.md` einen Satz ergaenzen, dass `koordination` (wie `architekten-synobsis` und `entwurfs-referenzen`) bewusst vom Drei-Ordner-Schema abweicht. Sonst meldet jeder kuenftige Health-Check dieselbe Nicht-Abweichung erneut.

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

Keine Findings.

### G. Promotion-Kandidaten

- 28 Outputs; 19 Synergie-Eintraege, davon 11 offen und 3 mit ausstehendem Entscheid Raphael (SYN-16, SYN-17, SYN-19)

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
