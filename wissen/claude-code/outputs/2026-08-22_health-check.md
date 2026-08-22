# Wissens-Health-Check: claude-code — 2026-08-22

Lauf: Mac-Mini-Nachtschicht 05:30-Slot, Phase 1 (unbeaufsichtigt, kein Fan-out, direkt im
Hauptkontext wegen Budget-Deckel). Letzter Check: kein frueherer `outputs/*_health-check.md`
in dieser KB vorhanden — Erst-Audit. Gepruefter Stand: CLAUDE.md, CHANGELOG.md,
`wiki/{INDEX,QUESTIONS,lecture-260729-anthropic,kontext-architektur,methode-spw-wissensbasis,
methoden-register}.md`, `raw/_INGESTED.md` + 32 Rohbilder (nur Registerabgleich, kein
erneutes OCR).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte/veraltete Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel (>90 Tage + neuere Quelle) | 0 |
| F Schreibregel-Verstoesse | 1 (gross: praktisch KB-weit) |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Praktisch die gesamte KB schreibt Umlaute als ASCII-Ersatz (ae/oe/ue) statt echter
   ä/ö/ü** — widerspricht der hub-weiten Rule `umlaute-konvention.md` (Vorrang-Klausel) UND
   der eigenen KB-Schreibregel in `claude-code/CLAUDE.md` ("Schweizer Hochdeutsch, echte
   Umlaute"). Siehe Audit F fuer den Byte-Beleg.
2. **`kontext-architektur.md` nennt veraltete Riegel-Zahlen** (30'000/24'000 B), aktuell
   gueltig seit 18.08.2026 sind 34'000/30'000 B (`skills/twin/tools/build_dna.py`,
   Commit `42ced312`). Artikel zuletzt aktualisiert 06.08.2026, also vor der Aenderung.
3. Ansonsten sauber: 0 kaputte Backlinks, 0 Orphans, keine RAW-Coverage-Luecke, keine
   ungeloesten Widersprueche zwischen den vier Artikeln.

## Details je Audit

### A. Widersprueche

Keine gefunden. Die vier Artikel behandeln unterschiedliche, klar abgegrenzte Themen
(Lecture-Destillat, Kontext-Messung, SPW-Methode, Methoden-Register) ohne inhaltliche
Ueberschneidung, die zu gegenlaeufigen Aussagen fuehren wuerde. `kontext-architektur.md`
grenzt sich explizit von `lecture-260729-anthropic.md` ab (Messung vs. Lehre) und loest
das potenziell scheinbare Spannungsfeld "Tip 5 (mehr Kontext) vs. Tip 6 (Kontext-Tuning)"
selbst explizit auf ("Zeile 'Warum das mehr ist als Sparen'").

### B. Kaputte Backlinks & Orphans

Alle `[[...]]`-Links in dieser KB geprueft (grep ueber alle wiki/*.md):
- `[[kontext-architektur]]`, `[[lecture-260729-anthropic]]`, `[[methode-spw-wissensbasis]]`,
  `[[methoden-register]]`, `[[INDEX]]`, `[[QUESTIONS]]` — alle Ziele existieren.
- Cross-KB-Link `[[environment-jans-hub]]` (KB `spec`) — Ziel
  `wissen/spec/wiki/environment-jans-hub.md` existiert, Link intakt.

Keine Orphans: alle vier Wiki-Artikel sind im `INDEX.md` gelistet und verlinken sich
gegenseitig. Kein Artikel ausserhalb des Index gefunden.

### C. Unbelegte/veraltete Claims

Spot-Check von Kernaussagen (Fokus auf falsifizierbare Zahlen, da diese KB fast
ausschliesslich mit datierten Eigenmessungen arbeitet):

- **`kontext-architektur.md`, Abschnitt "Zum Riegel"**: Artikel behauptet (Stand
  06.08.2026) `MAX_AUTO_BYTES = 30'000`, `WARN_AUTO_BYTES = 24'000`. Nachpruefung am
  Original (`skills/twin/tools/build_dna.py`, Z. 63 f.) ergibt aktuell **34'000 / 30'000**
  — angehoben am 18.08.2026, Commit `42ced312` ("twin-fidelity-review... Kompilier-Riegel
  entschieden", Kommentar im Code: "Grenze 30000 -> 34000 B nach Empfehlung (b)"). Die
  Anhebung selbst ist durch den Commit sauber belegt und legitim (der Artikel benennt
  richtig, dass "die Anhebung der Grenze... Raphael vorbehalten" ist) — nur der Artikeltext
  wurde seither nicht nachgezogen. **Nebenbefund, nicht abschliessend verifiziert:**
  `rules/jans-dna-facetten.md` ist aktuell 35'226 B (Stand 21.08.2026 06:00) — das liegt
  ueber dem neuen harten Riegel von 34'000 B. Ob das eine Frontmatter-Differenz ist (der
  Riegel misst vermutlich nur den kompilierten Auto-Block, nicht das ganze File inkl.
  Frontmatter) oder eine echte Riegel-Ueberschreitung, liesse sich nur durch Lesen der
  vollen `build_dna.py`-Logik klaeren — das gehoert in den Zustaendigkeitsbereich der KB
  `twin`, nicht `claude-code`, und wird hier nur als Randnotiz vermerkt, nicht verifiziert.
- Alle anderen geprueften Claims (Commit-Hashes `29bcb1ac`, `b2f29162`, `47141939` in
  `kontext-architektur.md`; Bestehen von `spec/wiki/environment-jans-hub.md`) halten stand.

### D. RAW-Coverage

`_INGESTED.md` fuehrt genau eine kopierte Quelle (32 Lecture-Slides), vollstaendig
zitiert von `lecture-260729-anthropic.md` und `kontext-architektur.md`. Die drei
externen Quellen (Methode SPW, 260725 Archetypen, CAD Verarbeitung) sind bewusst nicht
kopiert und im Register mit Verweis auf ihre Destillate gefuehrt — keine Coverage-Luecke.
Alle 32 Bilddateien in `raw/` sind im Register erfasst; keine unregistrierte Datei
gefunden.

### E. Veraltete Artikel

Keiner der vier Artikel ist aelter als 90 Tage (juengste KB, angelegt 29.07.2026 — aeltester
Artikel `lecture-260729-anthropic.md` ist 24 Tage alt). Das strenge Staleness-Kriterium
(>90 Tage UND neuere Quelle) greift damit fuer keinen Artikel. Die unter C gefundene
Diskrepanz (Riegel-Zahlen) ist eine **Fakten-Drift innerhalb der 90-Tage-Frist**, kein
Staleness-Fall im Sinne dieses Audits — deshalb unter C statt E gefuehrt.

### F. Schreibregel-Verstoesse

**Byte-Beleg (grep auf UTF-8-Umlaut-Sequenzen `\xc3\xa4`/`\xc3\xb6`/`\xc3\xbc`):**

| Datei | ä-Treffer | ö-Treffer | ü-Treffer |
|---|---|---|---|
| `CLAUDE.md` | 0 | 0 | 0 |
| `wiki/INDEX.md` | 0 | 0 | 0 |
| `wiki/lecture-260729-anthropic.md` | 0 | 0 | 0 |
| `wiki/kontext-architektur.md` | 0 | 0 | 0 |
| `wiki/methode-spw-wissensbasis.md` | 0 | 0 | 0 |
| `wiki/methoden-register.md` | 0 | 0 | 0 |
| `wiki/QUESTIONS.md` | 0 | 0 | 0 |
| `raw/_INGESTED.md` | 0 | 0 | 0 |
| `CHANGELOG.md` | 4 | 1 | 4 (einzige Datei mit echten Umlauten) |

Alle acht Dateien ausser `CHANGELOG.md` verwenden durchgehend die ASCII-Ersatzschreibung
(z. B. "tatsaechlich", "Gedaechtnis", "vollstaendig", "koennen" statt "tatsächlich",
"Gedächtnis", "vollständig", "können"). Das widerspricht direkt der eigenen KB-Regel
("Schweizer Hochdeutsch, echte Umlaute, `ss` statt `ß`") und der hub-weiten Rule
`umlaute-konvention.md`, die ausdruecklich Vorrang vor jeder anderslautenden Vorgabe hat.
Kein `ß` gefunden (0 Treffer), keine Emoji/dekorativen Symbole (0 Treffer) — nur der
Umlaut-Punkt ist betroffen, dafuer aber flaechendeckend.

**Einordnung, keine Panik:** Stichproben in anderen KBs (`baurecht`) zeigen echte Umlaute
in dreistelliger Haeufigkeit pro Artikel — die ASCII-Schreibung ist also kein
Tool-/Encoding-Problem (Dateityp bestaetigt UTF-8), sondern eine KB-spezifische Drift.
Vermutliche Ursache: diese KB wurde ueberwiegend in fruehen, schnellen
Destillations-Laeufen direkt nach der Lecture vom 29.07.2026 geschrieben, bevor die
Umlaute-Disziplin durchgaengig griff; `CHANGELOG.md` wurde spaeter und in kleineren,
sorgfaeltiger geschriebenen Haeppchen ergaenzt, was den Unterschied erklaeren wuerde
(nicht verifiziert, nur naheliegende Erklaerung).

**Nicht selbst korrigiert:** Eine KB-weite Ersetzung ae→ä/oe→ö/ue→ü ist mechanisch riskant
(Kollisionen mit echten "ae/oe/ue"-Lautfolgen in Fremdwoertern, IDs, Dateinamen,
Commit-Hashes wie `47141939` waeren zwar unkritisch, aber ein Fehlgriff bei einem
Blind-Replace ueber ~40 KB Text ist ohne Sichtkontrolle nicht auszuschliessen) und die
Skill-Vorschrift fuer unbeaufsichtigte Laeufe untersagt Phase-2-Aktionen ausdruecklich
("endet er nach Phase 1 mit dem Report — auch dann, wenn eine Reparatur trivial
erscheint"). Empfehlung: naechster interaktiver `wissenscheck claude-code`-Lauf oder ein
gezielter `korrektur`-Durchgang (Agent `rechtschreibung`) je Datei, mit Sichtkontrolle
gegen falsche Treffer.

### G. Promotion-Kandidaten

Keine. Alle vier Wiki-Artikel tragen bereits `status: established`, keine
`speculative`/`emerging`-Artikel in dieser KB. Der einzige offene QUESTIONS-Punkt
(#1, 13.08.2026: Soll `schutzmechanik-selbsttest.sh` in den `heartbeat` gehaengt werden?)
ist kein Promotion-Fall, sondern eine explizit an Raphael delegierte Entscheidung
(drei benannte Wege a/b/c) — Status unveraendert seit 13.08.2026, gegengeprueft:
`skills/heartbeat/SKILL.md` nennt den Selbsttest weiterhin nicht, `CLAUDE.md` traegt
weiterhin die am 13.08. korrigierte Formulierung ("alle drei nur auf Zuruf, keine
Automatik"). Keine Drift seit der letzten Pruefung, keine neue Handlung noetig.

## Nicht ausgefuehrt (Phase 2)

Unbeaufsichtigter Lauf — keine Aktionen ausgefuehrt, keine Datei veraendert ausser diesem
Report und dem CHANGELOG-Eintrag. Beide Findings (F: Umlaute, C: Riegel-Zahlen) warten auf
einen interaktiven Lauf oder eine gezielte Korrektur.
