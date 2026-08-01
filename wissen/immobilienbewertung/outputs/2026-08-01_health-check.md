# Wissens-Health-Check: immobilienbewertung — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 15 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 831 |
| G Promotion-/Ruecklauf-Kandidaten | 16 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **831 ae/oe-Verstoesse in 14 von 16 Artikeln — der hoechste Wert des gesamten Wissens-Layers.** Spitzenreiter `fuer` (129), `ueber` (66), `geprueft` (33). Betroffen sind auch Artikel vom 28.07. (`investorenmarkt-makro.md`, 48 Treffer). Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

2. **15 von 35 raw-Quellen sind in keinem Artikel zitiert** (Audit D) — die groesste absolute Coverage-Luecke im Bestand. Darunter substanzielle Marktquellen (`hbre Analyse Zürich Büromarkt 082024.pdf`, `Botschaft Pflegeheim Herosé Baukredit`, NZZ-Kostenartikel). Je Quelle entscheiden: einarbeiten oder als out-of-scope im Register markieren.

3. **`wissensluecken.md` hat kein Frontmatter** und enthaelt einen Platzhalter-Backlink `[[outputs/…]]`, der nirgends aufloest (Audit B/C). Die Datei uebernimmt faktisch die Rolle von `QUESTIONS.md` — **diese KB hat als einzige kein `QUESTIONS.md`**.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `wissensluecken.md` — `[[outputs/…]]` ist ein Platzhalter, loest nicht auf
- `wissensluecken.md` ohne Frontmatter

### C. Unbelegte Claims

- `wissensluecken.md` — keine Quellenangabe (kein Frontmatter)

### D. RAW-Coverage

- 15 von 35 raw-Quellen nicht zitiert, u.a. `Standortinformation_Beispiel_Report.pdf`, `Immo_02_P23D_Praesentation_Nextcloud.pdf`, `hbre Analyse Zürich Büromarkt 082024.pdf`, `2021-285 Botschaft Pflegeheim Herosé_Neubau_Baukredit.pdf`, `fachnews_kvg_2023_04...pdf`, `NZZ Hohe Kosten...pdf`

### E. Veraltete Artikel

- Keine — alle Artikel wurden im Juli 2026 angefasst

### F. Schreibregel-Verstoesse

- 831 ae/oe-Treffer in 14 Artikeln
- 64 Deko-Symbole in 13 Artikeln (59x ⚠, 5x ⭐)
- Kein ß

### G. Promotion-Kandidaten

- 16 Outputs seit dem letzten Check (2026-07-23) — auf Wiki-Ruecklauf zu pruefen
- 1 Artikel auf `emerging`

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
