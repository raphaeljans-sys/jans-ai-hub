# Wissens-Health-Check: architekten-synobsis — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 175 |
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`THEMEN.md` hat ueberhaupt kein Frontmatter und steht nicht im INDEX** (Audit B/C). Die Datei ist mit 353 Zeilen das Themenregister ueber 849 Architekten — inhaltlich die zentrale Zugriffsschicht der KB, formal aber nicht als Artikel gefuehrt.

2. **175 ae/oe-Verstoesse in 4 Artikeln** (Audit F), Spitzenwoerter `fuer` (46), `pruefen` (16), `ueber` (13). Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

3. **Kein `raw/` und kein `_INGESTED.md`** — die KB bezieht ihren Bestand aus `catalog/*.json` statt aus `raw/`. Das ist eine bewusste Abweichung vom Meta-Schema, aber nirgends als solche vermerkt; Audit D ist damit nicht messbar.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `THEMEN.md` nicht im INDEX.md registriert
- `THEMEN.md` ohne Frontmatter (title/status/last_updated/sources fehlen)

### C. Unbelegte Claims

- `THEMEN.md` — keine Quellenangabe, da kein Frontmatter

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 175 ae/oe-Treffer in 4 Artikeln (Code, Backlinks, Pfade und Dateinamen herausgerechnet — dort ist ASCII Pflicht)
- Keine Deko-Symbole, kein ß

### G. Promotion-Kandidaten

- 1 Output seit dem letzten Check (2026-07-25) — auf Wiki-Ruecklauf zu pruefen

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
