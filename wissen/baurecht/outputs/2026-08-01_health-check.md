# Wissens-Health-Check: baurecht — 2026-08-01

Monatlicher Sammellauf (Scheduled Task `wissenscheck-monatlich`), Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 455 |
| G Promotion-/Ruecklauf-Kandidaten | 22 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **455 ae/oe-Verstoesse in 12 Artikeln — der hoechste Absolutwert nach `immobilienbewertung`, und er waechst weiter.** Betroffen sind ausdruecklich **frisch geschriebene** Artikel: `fahrzeugabstellplaetze-und-parkierung.md` (43 Treffer, `last_updated: 2026-08-03`), `ausnahmebewilligung-und-bestandesschutz.md` (57, 27.07.), `wohnhygiene-und-raumanforderungen.md` (34, 27.07.). Der Health-Check vom 2026-07-22 hatte denselben Befund als Top-1 gemeldet und auf den Locale-Bug zurueckgefuehrt — die Ursache ist **nicht behoben**. Der Befund ist KEIN Einzelfall dieser KB, sondern die hub-weite ae/oe-Drift: der Wrapper `scripts/claude-run.sh` — laut Rule 260729 der verbindliche Einstieg fuer automatische Laeufe — setzt **kein** `LANG`/`LC_ALL`, waehrend `scripts/dispatch-run.sh` seit dem Juli-Fix `de_CH.UTF-8` exportiert (Z. 81/82). Alles, was ueber `claude-run.sh` laeuft (`arbeits-weiche.sh`, `multi-claude.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`), schreibt weiter ae/oe statt ä/ö/ü.

2. **Massiver Fehlalarm des Pruefwerkzeugs:** `wiki-konsistenz.sh` meldet fuer diese KB 19 Befunde «Frontmatter ohne title:/sources:». `baurecht` fuehrt jedoch ein eigenes, in `CLAUDE.md` verankertes Schema (`name:`/`titel:`/`quellen:`/`paragraphen:`/`backlinks:`). Von den 19 Meldungen ist **eine** echt: `enteignung-und-entschaedigung.md` hat weder `sources:` noch `quellen:` (nur `letzte_quelle:` als Freitext).

3. **2 Backlinks in `QUESTIONS.md` sind ueber den Zeilenumbruch zerrissen** (Z. 669, Z. 1468) und loesen dadurch nirgends auf. `QUESTIONS.md` ist mit 1728 Zeilen die groesste Fragenliste des Hub — die Zerreisser sind Formatierung, kein Inhaltsverlust.

## Details je Audit

### A. Widersprueche

Keine neuen Widersprueche. Themen-Ueberlappungen zu anderen KBs werden im Register `wissen/koordination/SYNERGIE-REGISTER.md` gefuehrt.

### B. Kaputte Backlinks & Orphans

- `QUESTIONS.md:669` — Backlink ueber Zeilenumbruch zerrissen
- `QUESTIONS.md:1468` — Backlink ueber Zeilenumbruch zerrissen
- `wohnhygiene-und-raumanforderungen.md` — `[[260712_amtlich_zh_energ]]` zeigt auf eine raw-Datei, nicht auf einen Artikel (abgeschnittener Name)

### C. Unbelegte Claims

- `enteignung-und-entschaedigung.md` — kein `sources:`/`quellen:`-Feld; die Herkunft steht nur als Freitext in `letzte_quelle:`. Inhaltlich ist der Artikel dicht belegt (Modell-D-Wortlautabgleich 27.07., 2 korrigierte Zitierfehler dokumentiert) — es fehlt nur das Strukturfeld

### D. RAW-Coverage

- Keine Luecke: alle 10 in `_INGESTED.md` registrierten Quellen sind im Wiki zitiert

### E. Veraltete Artikel

Keine. Kein Artikel ist aelter als 90 Tage bei gleichzeitig neuerer raw-Quelle.

### F. Schreibregel-Verstoesse

- 455 ae/oe-Treffer in 12 Artikeln
- 46 Deko-Symbole in 3 Artikeln (40x ✅ in `grundlagen-planungs-baurecht.md` und `baureife-und-erschliessung.md`, 5x ⚠, 1x 🟡) — Verstoss gegen «keine dekorativen Symbole» (User-Level CLAUDE.md)
- Kein ß

### G. Promotion-Kandidaten

- 22 Outputs seit dem letzten Check (2026-07-22) — die hoechste Zahl aller KBs; systematisch auf Wiki-Ruecklauf zu pruefen (Rule `wissens-ruecklauf`)
- Alle 24 Artikel bereits `established` — keine Status-Promotion offen

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
