# Wissens-Health-Check: planungsgrundlagen — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 125 |
| G Promotion-/Ruecklauf-Kandidaten | 11 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Groesste KB im Bestand (49 Artikel) und strukturell tadellos:** kein toter Backlink, kein fehlender INDEX-Eintrag, kein Frontmatter-Mangel. Die neun `kartenportale-*`-Artikel, die der Vorfilter als «ohne sources» meldete, fuehren alle eine `sources:`-Blockliste — Fehlalarm des Werkzeugs, kein Befund.

2. **122 Deko-Symbole (⚠) in 34 von 49 Artikeln** (Audit F) — nach `energie` der zweithoechste Wert. Dazu 125 ae/oe-Treffer, u.a. 89 in `brandschutz-pl03-wegweiser.md` mit `last_updated: 2026-07-30`. Dieselbe Datei enthaelt 1383 **korrekte** Umlaute — die Drift ist also kein Encoding-Schaden, sondern eine Schreibgewohnheit im Lauf. Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

3. **Das einzige ß des gesamten Wissens-Layers** steht in dieser KB (Audit F) — Verstoss gegen Schweizer Hochdeutsch (`ss` statt `ß`).

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

Keine Findings.

### C. Unbelegte Claims

- Keine — die 9 Meldungen des Vorfilters zu `kartenportale-*.md` sind Fehlalarme (YAML-Blockliste)

### D. RAW-Coverage

- `Elektrosmog_(Informationsblatt_5.7).pdf` in `_INGESTED.md` registriert, aber in keinem Artikel zitiert (1 von 13)

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 122 Deko-Symbole (⚠) in 34 Artikeln
- 125 ae/oe-Treffer in 5 Dateien (89 davon in `brandschutz-pl03-wegweiser.md`)
- 1x ß — einziger Fall im ganzen Wissens-Layer

### G. Promotion-Kandidaten

- 11 Outputs seit dem letzten Check (2026-07-25) — auf Wiki-Ruecklauf zu pruefen
- 9 Artikel auf `emerging` — Promotion pruefen

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
