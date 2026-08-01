# Wissens-Health-Check: projekt-lessons — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 11 |
| G Promotion-/Ruecklauf-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Dreifach-Klammer-Tippfehler in `kispi-behoerden-zustaendigkeitswechsel-1171-26.md` Z. 6**: `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]`. Das Ziel existiert — der Link ist nur falsch geklammert. **Identischer Fehler an identischer Stelle in `auflagebereinigung`** (erstes Element der `links:`-Zeile): wiederkehrendes Schreibmuster, das das Pruefwerkzeug als «totes Ziel» fehlmeldet.

2. **Die einzige raw-Quelle ist nicht eingearbeitet** (Audit D): `260729-kispi-rueckweisung-installationsplan-lueftung.md` liegt seit dem 29.07. in `raw/`, wird aber von keinem Artikel zitiert. Bei einer Lessons-KB ist genau das der Kernprozess — 100 % Coverage-Luecke.

3. **0 Outputs seit dem letzten Check** (2026-07-25) bei 5 Artikeln. `kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md` steht auf `emerging` mit 2 unabhaengigen Nebenbelegen — Promotion auf `established` pruefen.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `kispi-behoerden-zustaendigkeitswechsel-1171-26.md` Z. 6 — `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]` (Dreifach-Klammer; Ziel existiert)

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

- `260729-kispi-rueckweisung-installationsplan-lueftung.md` — einzige raw-Quelle, nicht eingearbeitet (1 von 1)

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 11 ae/oe-Treffer in 2 Artikeln
- Keine Deko-Symbole, kein ß

### G. Promotion-Kandidaten

- `kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md` (`emerging`, 2 unabhaengige Nebenbelege) — Promotionskandidat

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
