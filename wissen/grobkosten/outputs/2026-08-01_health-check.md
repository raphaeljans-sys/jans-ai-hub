# Wissens-Health-Check: grobkosten — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 30 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **30 Outputs seit dem letzten Check (2026-07-25) stehen 1 Wiki-Artikel gegenueber** — das schaerfste Missverhaeltnis im ganzen Wissens-Layer. Die KB ist als Kennwerte-Lernmodell konzipiert und produziert fleissig Reports, aber der Ruecklauf ins Wiki findet praktisch nicht statt. Der einzige Artikel ist zudem ein Orphan (niemand verlinkt ihn).

2. **Fuehrungsanspruch aus `koordination` SYN-01 noch nicht eingeloest:** `wissen/grobkosten` soll die EINE fuehrende Kennwerte-DB sein. `skills/kostenschaetzung` und `agents/grobkosten-rechner` sind angeschlossen, **`agents/realwert-rechner` und `agents/wirtschaftlichkeit-rechner` je 0 Treffer** — zwei Rechner ziehen weiter aus eigener Quelle. Divergente Zahlen im selben Projekt bleiben moeglich.

3. **`raw/README.md` ist im `_INGESTED.md` als Quelle gefuehrt, aber nirgends zitiert** (Audit D). Formal eine Coverage-Luecke, materiell vermutlich nur ein Register-Artefakt (eine README ist keine Wissensquelle) — Eintrag bereinigen.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

Keine Findings.

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

- `README.md` in `_INGESTED.md` registriert, aber in keinem Artikel zitiert (1 von 17) — vermutlich Register-Artefakt

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 1 Deko-Symbol (⚠)
- 1 ae/oe-Treffer, kein ß

### G. Promotion-Kandidaten

- 30 Outputs seit dem letzten Check — mit Abstand groesster Ruecklauf-Rueckstand
- Einziger Artikel steht auf `emerging` und ist Orphan

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
