# Wissens-Health-Check: entwurfs-referenzen — 2026-08-25

## Methode dieses Laufs

Nachtschicht-Zyklus Mac Mini (Versuchs-Slot 13:30), Prioritaet 6 (wissenscheck Phase 1,
unbeaufsichtigt) — gewaehlt, weil `entwurfs-referenzen` unter allen KBs ohne aktiven eigenen
Taktgeber das aelteste Health-Check-Datum trug (2026-08-03, 22 Tage zuvor), waehrend die KB
selbst seit dem 23.08.2026 durch acht Vertiefungslaeufe (Auftrag Raphael, Revendo) intensiv
bearbeitet wurde. Basis ist der Sammellauf vom **2026-08-03**. Phase 2 (Aktionen) bewusst NICHT
ausgefuehrt.

Umfang: beide Wiki-Artikel vollstaendig gelesen (Frontmatter + Volltext), alle drei
Parameter-Set-JSON gegen `parameter-schema/validate.py --all` geprueft, `wiki/INDEX.md` +
alle vier Domaenen-`INDEX.md` gelesen, `wiki/QUESTIONS.md` vollstaendig (424 Zeilen),
`raw/_INGESTED.md`, `CHANGELOG.md` seit 08-03 (12 Eintraege), Struktur-/Backlink-Check via
`wissen/tools/wiki-konsistenz.sh entwurfs-referenzen`. Kein Fan-out (Budget-Rahmen
Nachtschicht-Deckel).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans/Frontmatter | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 (unveraendert, gleiche Klasse wie 08-03) |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Kein neuer Befund.** Die acht Vertiefungslaeufe vom 23.08.2026 haben die KB bereits
   deutlich gruendlicher geprueft, als ein monatlicher Sammellauf leisten koennte (Schema-
   Deckungsaudit, Preisstand-Nachtrag, Feld-gegen-Feld-Querprobe). Dieser Health-Check
   bestaetigt den Stand, findet aber nichts Neues.
2. Der einzige Befund vom 08-03 (toter Backlink `[[architekten-synobsis]]` in `wiki/INDEX.md`)
   ist behoben: die Datei traegt seit 23.08.2026 eine explizite Notation-Klausel, die
   KB-Verweise als Pfad statt als Wiki-Link fuehrt — `wiki-konsistenz.sh` bestaetigt 0
   Befunde.
3. Die ASCII-Schreibweise (ae/oe/ue statt ä/ö/ü) in den drei JSON-Parameter-Sets ist
   unveraendert durchgaengig — vermutlich bewusst (maschinenlesbare Datenfelder, keine
   Fliesstext-Ausgabe), aber nie ausdruecklich als Ausnahme von der Umlaute-Konvention
   festgehalten. Siehe Detail unten.

## Details je Audit

### A. Widersprueche
Keine. Die Vertiefungslaeufe 4/5/6/7/8 vom 23.08. bestehen selbst aus Selbstkorrekturen und
einer Feld-gegen-Feld-Konsistenzprobe (Healthcare GF×Faktor=GV, Schule Kostenkennwerte
gegeneinander plausibilisiert) — beide bestanden. Die beiden Wiki-Artikel (`bildung.md`,
`trennung-kunst-funktion-judd.md`) behandeln unterschiedliche Themen, keine Ueberschneidung.

### B. Kaputte Backlinks / Orphans / Frontmatter
Keine. `wiki-konsistenz.sh entwurfs-referenzen` → "keine Befunde". Beide Wiki-Artikel mit
vollstaendigem Frontmatter (`title`, `status`, `last_updated`, `sources`, `links`). Der
08-03-Befund (KB-Name als Wiki-Link) ist durch die Notation-Klausel in `wiki/INDEX.md`
(23.08.2026) strukturell geloest, nicht nur einmalig gefixt.

### C. Unbelegte Claims
Keine. Stichprobe: `bildung.md` (drei Quellen, davon eine refuter-bestaetigt), Judd-Artikel
(Primaerquelle vollstaendig gelesen, kurze Zitate mit Fundstellenangabe), alle drei
Parameter-Sets fuehren ein `quellen`-Array mit belegten KB-Pfaden inkl. Refuter-Status. Die
neu ergaenzten Felder aus den Vertiefungslaeufen (Preisstand, `gv_gf_faktor`,
`chf_je_einheit`) sind je mit Herkunft im Fliesstext von `QUESTIONS.md` dokumentiert.

### D. RAW-Coverage
Keine Luecke. `raw/_INGESTED.md` ist bewusst leer (Seed-Import seit 20.07.2026 abgeloest durch
On-Demand-Abfragen gegen `architekten-synobsis`), es gibt keinen unverarbeiteten Rohbestand.

### E. Veraltete Artikel
0. `bildung.md` `last_updated: 2026-07-25` (31 Tage, keine neuere Evidenz seither, die den
Artikel veralten liesse). Judd-Artikel `last_updated: 2026-08-18` (7 Tage). Alle drei
Parameter-Sets zuletzt am 23.08.2026 bearbeitet (2 Tage).

### F. Schreibregel-Verstoesse
1 Finding, unveraendert seit 08-03 in seiner Klasse: alle drei JSON-Parameter-Sets sowie
Feldnamen-Referenzen in `QUESTIONS.md` (`geschosshoehe`, `gebaeude`) sind konsequent
ASCII-geschrieben (kein einziges ä/ö/ü in beiden JSON-Dateien geprueft), inkl. Eigennamen wie
"Stoeckacker" statt "Stöckacker". Das betrifft **nur** die JSON-Dateien und woertliche
Feld-/Schema-Bezeichner, nicht die Fliesstext-Prosa der Wiki-Artikel (dort korrekte Umlaute
durchgehend). Zwei Lesarten moeglich: (a) beabsichtigt, weil `parameter-schema/validate.py`
und `volumen_generator.py` diese Felder maschinell konsumieren und die
Umlaute-Konvention Code/Variablen ausdruecklich ausnimmt — dann waere das kein Verstoss,
sondern gehoerte als Ausnahme in `CLAUDE.md` dieser KB vermerkt; (b) unbeabsichtigt
uebernommen aus einer frueheren ASCII-Konvention. Nicht selbst entschieden (Skill-Frontmatter-
Aenderung ist keine Wissenscheck-Phase-1-Aktion). Kein ss-Verstoss, keine dekorativen Symbole.
1 funktionaler ⚠-Marker in `bildung.md` (Warnschwelle, kein Schmuck) — wie 08-03.

### G. Promotion-Kandidaten
0. Beide Wiki-Artikel bereits `status: established`. `QUESTIONS.md` ist aussergewoehnlich gut
gepflegt: von den am 08-03 offenen 15 Zeilen sind alle materiellen Punkte inzwischen
"ERLEDIGT"/"BEANTWORTET"/"GESCHLOSSEN" archiviert; die zwei verbliebenen echten Luecken
(`architekten/`, `materialien/` bleiben leer) sind laut `CLAUDE.md` bewusst On-Demand-Domaenen,
kein Rueckstand. Kein Artikel wartet auf eine Statuserhoehung.

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer eine Entscheidung zum
F-Befund (JSON-ASCII-Konvention als Ausnahme dokumentieren oder nicht): interaktive Session
mit Skill `wissenscheck`.*
