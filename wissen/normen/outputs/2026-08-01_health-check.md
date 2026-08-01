# Wissens-Health-Check: normen — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 9 |
| C Unbelegte Claims | 2 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 620 |
| G Promotion-/Ruecklauf-Kandidaten | 24 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **620 ae/oe-Verstoesse in 4 Dateien** (Audit F), davon **305 allein in `synthese-din-vss-ral-fachskills.md`** — die hoechste Einzeldatei-Dichte des gesamten Wissens-Layers. Spitzenwoerter `fuer` (161), `gueltig` (75). Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

2. **6 Backlinks in `QUESTIONS.md` zeigen auf nicht existierende Norm-Artikel** (`[[sia-102-2003]]`, `[[sia-180]]`, `[[sia-2024]]`, `[[sia-2032]]`, `[[din-1961-2012]]`, `[[links]]`). Das sind keine kaputten Links, sondern **benannte Coverage-Luecken** — die KB weiss, welche Normartikel ihr fehlen. Passend dazu: 145 offene Fragen.

3. **2 Artikel sind nicht im INDEX registriert** (`synthese-sia-vkf-fachskills`, `vkf-beherbergungskategorien`) und `REGISTER.md` hat kein Frontmatter. Beides macht Wissen unauffindbar, das bereits geschrieben ist.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `QUESTIONS.md` — 6 Verweise auf nicht existierende Artikel: `[[din-1961-2012]]`, `[[links]]`, `[[sia-102-2003]]`, `[[sia-180]]`, `[[sia-2024]]`, `[[sia-2032]]`
- `synthese-sia-vkf-fachskills.md` nicht im INDEX registriert
- `vkf-beherbergungskategorien.md` nicht im INDEX registriert
- 1 Artikel ist Orphan (niemand verlinkt ihn)

### C. Unbelegte Claims

- `REGISTER.md` ohne Frontmatter (kein title/status/last_updated/sources)
- `synthese-din-vss-ral-fachskills.md` und `synthese-sia-vkf-fachskills.md` — Synthese-Artikel ohne eigenes Quellenfeld; sie aggregieren zwar belegte Destillate, die Fundstellenpflicht (Rule `normen-referenz`) verlangt den Nachweis aber am Artikel

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 620 ae/oe-Treffer in 4 Dateien (305 in `synthese-din-vss-ral-fachskills.md`)
- 23 Deko-Symbole (⚠) in 3 Artikeln
- Kein ß

### G. Promotion-Kandidaten

- 24 Outputs seit dem letzten Check (2026-07-24) — auf Wiki-Ruecklauf zu pruefen
- 145 offene Fragen — der zweitgroesste Backlog nach `twin`/`energie`

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
