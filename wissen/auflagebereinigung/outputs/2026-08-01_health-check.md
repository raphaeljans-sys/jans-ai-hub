# Wissens-Health-Check: auflagebereinigung — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 46 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Dreifach-Klammer-Tippfehler in `aemter-stadt-zuerich.md` Z. 6**: die `links:`-Zeile beginnt mit `[[[fristenlogik-bauentscheid-zh]]`. Das Ziel existiert (`fristenlogik-bauentscheid-zh.md`) — der Link ist nur falsch geklammert. **Derselbe Tippfehler steht in `projekt-lessons`** an genau derselben Stelle (erstes Element der `links:`-Zeile), ist also ein wiederkehrendes Schreibmuster, kein Einzelausrutscher.

2. **46 ae/oe-Verstoesse in 2 Artikeln** (Audit F). Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

3. **Fehlalarm des Pruefwerkzeugs korrigiert:** `wiki-konsistenz.sh` meldet `gvz-einreichung-bma-sprinkler.md` als «Frontmatter ohne sources». Der Artikel fuehrt seine drei GVZ-Weisungen unter `quellen:` — das Werkzeug kennt nur `sources:`. Kein Befund.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `aemter-stadt-zuerich.md` Z. 6 — `[[[fristenlogik-bauentscheid-zh]]` (Dreifach-Klammer; Ziel existiert, nur Klammerung falsch)

### C. Unbelegte Claims

- Keine — die Meldung des Werkzeugs zu `gvz-einreichung-bma-sprinkler.md` ist ein Fehlalarm (Feldname `quellen:` statt `sources:`)

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 46 ae/oe-Treffer in 2 Artikeln
- Keine Deko-Symbole, kein ß

### G. Promotion-Kandidaten

- 2 Outputs seit dem letzten Check (2026-07-24) — auf Wiki-Ruecklauf zu pruefen
- 5 von 7 Artikeln stehen auf `emerging` — bei belegter Mehrfachbestaetigung Promotion auf `established` pruefen

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
