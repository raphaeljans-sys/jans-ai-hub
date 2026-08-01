# Wissens-Health-Check: twin — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 18 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 232 |
| G Promotion-/Ruecklauf-Kandidaten | 17 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **288 offene Fragen in `QUESTIONS.md` (2512 Zeilen) — der mit Abstand groesste Fragen-Backlog des Hub.** Das ist bauartbedingt (der Agent `twin-fragesteller` erzeugt laufend Selbstfragen), wird aber zum Problem, wenn Fragen schneller entstehen als Raphael sie beantwortet: unbeantwortete Fragen bremsen die Fidelity-Entwicklung nicht, sie verdecken sie.

2. **18 von 95 raw-Quellen sind nicht zitiert** (Audit D) — fast durchwegs `mailbatch`-Dateien vom 13.07. bis 25.07. (`260713-mailbatch-43/45`, `260714-mailbatch-46`, `260718-mailbatch-56`, `260724-mailbatch-59`, `260725-mailbatch-60/61`). Genau diese Batches sind das **authentische Stil-Gold**, aus dem der Zwilling lernen soll. Zusaetzlich ist `.claude.json` faelschlich als Quelle registriert.

3. **35 Emoji (😊) in den Facetten-Artikeln** (Audit F). Hier ist Vorsicht geboten: die DNA dokumentiert «Emoji 😊/`:)` nur warm-sozial privat, sparsam» als **belegten Stilmarker Raphaels**. Die Zeichen sind also Zitat, nicht Dekoration — **kein Verstoss**, aber der Grund gehoert in den Artikel geschrieben, damit der naechste Health-Check sie nicht erneut aufgreift.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `QUESTIONS.md` — `[[260607-kispi-korpus]]` zeigt auf eine raw-Quelle, nicht auf einen Artikel

### C. Unbelegte Claims

Keine Findings.

### D. RAW-Coverage

- 18 von 95 raw-Quellen nicht zitiert, davon 17 `mailbatch`-Dateien (13.07.–25.07.) und `.claude.json` (Fehleintrag im Register)

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 232 ae/oe-Treffer in 6 Dateien
- 37 Deko-Zeichen, davon 35x 😊 und 1x 😉 — als belegte Stilmarker **kein Verstoss**; 1x ✅ ist echte Dekoration
- 2x ß — zu pruefen, ob Zitat aus deutschem Original oder Fehler

### G. Promotion-Kandidaten

- 17 Outputs seit dem letzten Check (2026-07-25) — auf Wiki-Ruecklauf zu pruefen
- 288 offene Fragen — Priorisierung durch Raphael noetig

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
