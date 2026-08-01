# Wissens-Health-Check: firmengruendung-ch — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Sauberste grosse KB im Bestand.** 15 Artikel, alle `established`, alle mit vollstaendigem Frontmatter und Fedlex-Quellen, keine toten Backlinks, **0 ae/oe-Verstoesse** — der Beleg dafuer, dass die Drift kein unvermeidbares Modellverhalten ist, sondern am Lauf-Wrapper haengt.

2. **Fehlalarm des Pruefwerkzeugs korrigiert:** die drei Artikel `holding-struktur.md`, `steuern-ag-inhaber.md`, `verwaltungsrat.md` erschienen als «ohne sources». Alle drei fuehren `sources:` als YAML-Blockliste auf den Folgezeilen. Kein Befund.

3. **1 offene Frage, 1 Output seit dem letzten Check** (2026-07-25). Die KB ist inhaltlich weitgehend saturiert; der offene Punkt bleibt der Firmenname-Blocker («JANS AG» durch bestehende «JANS GmbH» blockiert, Voranfrage HRA ZH laeuft).

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

Keine Findings.

### C. Unbelegte Claims

- Keine — die drei Meldungen des Werkzeugs sind Fehlalarme (YAML-Blockliste statt Inline-Wert)

### D. RAW-Coverage

Keine Findings.

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 1 Deko-Symbol (⚠)
- 0 ae/oe-Verstoesse, kein ß

### G. Promotion-Kandidaten

- 1 Output seit dem letzten Check
- Alle 15 Artikel `established`

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
