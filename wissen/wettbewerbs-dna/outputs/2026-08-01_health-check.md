# Wissens-Health-Check: wettbewerbs-dna — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 151 |
| G Promotion-/Ruecklauf-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **1 Sachartikel steht 93 raw-Quellen gegenueber** — das schwaechste Verdichtungsverhaeltnis im Bestand. `referenz-katalog.md` ist zudem Orphan (niemand verlinkt ihn) und fuehrt kein Quellenfeld, obwohl er einen Katalog aggregiert (Audit C).

2. **151 ae/oe-Verstoesse in 3 Dateien** (Audit F), davon 72 in `INDEX.md`. Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

3. **Inhaltlich der wichtigste offene Punkt liegt ausserhalb dieser KB:** `koordination` SYN-13 belegt eine Typologie-Asymmetrie zuungunsten der JANS-Kern-Bauaufgabe — fuer den Bildungsbau ist die Kette bis zum Parameter-Set durchgezogen, fuer Healthcare endet sie beim Rohmaterial (42 verifizierte Juryberichte, aber kein `typologien/healthcare.md`).

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

Keine Findings.

### C. Unbelegte Claims

- `referenz-katalog.md` — kein Quellenfeld, obwohl der Artikel einen Katalog aggregiert

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 151 ae/oe-Treffer in 3 Dateien (72 davon in `INDEX.md`)
- Keine Deko-Symbole, kein ß

### G. Promotion-Kandidaten

- 0 Outputs seit dem letzten Check (2026-07-26)
- 11 offene Fragen; einziger Artikel bereits `established`

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
