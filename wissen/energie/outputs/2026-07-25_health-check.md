# Wissens-Health-Check: energie — 2026-07-25

Phase-1-Audit (unbeaufsichtigt, Nachtschicht, Skill `wissenscheck`, Budget-Nachtschicht 5 USD
Gesamtzyklus → gestraffter Stichproben-Umfang, keine erschoepfende Volltext-Verifikation).
Umfang: 24 Wiki-Dateien (23 Themenartikel + BAUHERREN-FAQ mit F1–F116 + INDEX + QUESTIONS),
140 Destillate, `raw/_INGESTED.md`, CHANGELOG (Runs 84–87 + Wissens-Chef-Runs 12–14 seit dem
letzten Check). Vergleichsbasis: Health-Check `outputs/2026-07-21_health-check.md`.

## Zusammenfassung

| Audit | Thema | Findings | Ampel |
|---|---|---|---|
| A | Widersprueche zwischen Artikeln | 0 | gruen |
| B | Kaputte Backlinks / Orphans / Register-Integritaet | 5 (0 tote `[[Links]]`, aber 82 kaputte `sources:`-Dateireferenzen neu + 4 fortbestehende Register-Befunde, alle gewachsen) | rot |
| C | Unbelegte Claims | 0 (Stichprobe) | gruen |
| D | RAW-Coverage | 0 (PDF-Bestand weiter erschoepft, kein neues Material) | gruen |
| E | Veraltete Artikel | 2 (1 fortbestehend, 1 neu) | gelb |
| F | Schreibregel-Verstoesse | 4 (1 neu/schwer, 3 fortbestehend unveraendert) | rot |
| G | Promotion-Kandidaten | 3 (2 davon zum dritten Mal in Folge unveraendert offen) | gelb |

**Gesamtbild:** Inhaltlich bleibt die KB stark: keine Widersprueche, keine unbelegten
Zentralaussagen in der Stichprobe, PDF-Coverage vollstaendig. Die **Verwaltungsschicht**
verschlechtert sich jedoch weiter, statt sich zu erholen — alle vier am 21.07. gemeldeten
Register-Befunde (B1–B4) sind seither **gewachsen statt behoben**, und der Umlaut-Fix vom
21.07. hat einen **neuen, schwereren Kollateralschaden** hinterlassen: 82 `sources:`-
Dateireferenzen in 11 Wiki-Artikeln zeigen jetzt auf nicht existierende Dateien, weil das
Korrekturskript die (bewusst ASCII gehaltenen) Destillat-Dateinamen faelschlich mit
umgeschrieben hat. Zwei der drei Promotion-Empfehlungen stehen jetzt seit drei
aufeinanderfolgenden Checks (01.07./21.07./25.07.) unveraendert offen.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Neuer Kollateralschaden aus dem eigenen Umlaut-Fix: 82 kaputte `sources:`-
   Dateireferenzen in 11 Wiki-Artikeln.** Der am 21.07. dokumentierte Umlaut-Korrekturlauf
   (13 Dateien ae/oe/ue → ä/ö/ü) hat versehentlich auch die `sources:`-Frontmatter-Zeilen
   erfasst und dort Destillat-**Dateinamen** mit echten Umlauten geschrieben
   (z.B. `destillate/enfk-en-02-wärmeschutz-2013.md`). Die tatsaechlichen Dateien liegen
   aber weiterhin korrekt in ASCII (`destillate/enfk-en-02-waermeschutz-2013.md`,
   Dateinamens-Konvention). Betroffen: `u-werte-grenzwerte-ch.md` (11 kaputte Referenzen),
   `heizleistung-und-waermeerzeuger.md` (8), `BAUHERREN-FAQ.md` (50!), plus
   `sommerlicher-waermeschutz`, `pv-eigenverbrauch-zev`, `energienachweis-zh`,
   `foerderung-energie-zh`, `daemmstoffe-lambda`, `holzbau-bauphysik-clt`,
   `minergie-standards`, `pv-solar-technologien`. Die eigentlichen `[[Wiki-Backlinks]]`
   sind davon **nicht** betroffen (0 kaputt) — nur das reine `sources:`-Textfeld.
2. **Alle vier Register-Befunde vom 21.07. sind seither gewachsen statt behoben.**
   `destillate/INDEX.md`: 166→**179** Zeilen fuer 131→**138** Destillate (Dublettengruppen
   19→**24**, Extremfall `muken-2025-verabschiedet` weiterhin 7×). `wiki/INDEX.md`
   Abschnitt «Themen-Artikel»: 46→**73** Eintraege fuer weiterhin nur 24 echte
   `wiki/*.md`-Dateien (destillat-only-Eintraege 25→**49**, fast verdoppelt). Der
   INDEX-Beschreibungstext der BAUHERREN-FAQ waechst weiterhin additiv (jetzt bis Run 87).
   Zwei Destillate (`bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013`,
   `sia-2024-nutzungsrandbedingungen-gesundheitsbau`) fehlen unveraendert im Register.
3. **Zwei Promotion-Kandidaten stehen jetzt zum dritten Mal in Folge unveraendert auf
   `emerging`.** `regenwasserbewirtschaftung-versickerung-zh` und
   `sommerlicher-waermeschutz` wurden bereits am 01.07. und 21.07. zur Hochstufung auf
   `established` empfohlen — beide unveraendert. Bei `sommerlicher-waermeschutz` ist die
   Belegdichte inzwischen (4 Quellen) hoeher als bei mehreren bereits `established`
   gefuehrten Artikeln. Zusaetzlich: `schallschutz-sia181.md` wurde vom 21.07.-Umlaut-Fix
   **nicht erfasst** und ist bis heute vollstaendig in ae/oe/ue-Ersatzschreibung
   geschrieben (Fliesstext, kein Dateiname/Code).

## Details je Audit

### A — Widersprueche zwischen Artikeln

Keine neuen Widersprueche in der Stichprobe gefunden. Der zuletzt notierte Aktualitaets-Gap
(`foerderung-energie-zh` vs. neuerer Kantonsrats-Stand) besteht weiter, siehe Audit E — dort
kein Widerspruch, nur Praezisions-Rueckstand.

### B — Kaputte Backlinks, Orphans, Register-Integritaet

- **`[[Backlinks]]` (Wiki-Ebene):** 166 valide Ziele (Wiki + Destillate), 162 eindeutige
  Linkziele aus `wiki/*.md` extrahiert — **alle** aufloesbar. **0 kaputte `[[Links]]`.**
  Keine Orphans: jeder der 23 Themenartikel wird von mindestens 2 (max. 11) anderen
  Wiki-Dateien verlinkt.
- **Finding B5 (NEU, schwer) — 82 kaputte `sources:`-Dateireferenzen in 11 Dateien:** siehe
  Top-3 Punkt 1. Technischer Befund: `grep`-Vergleich der in `sources:` genannten
  `destillate/*.md`-Pfade gegen den tatsaechlichen `ls destillate/`-Bestand ergibt 82
  Nichttreffer, ausschliesslich wegen Umlaut-vs-ASCII-Diskrepanz im Dateinamen (Inhalt der
  Quelle ist korrekt, nur der Pfad in der `sources:`-Liste ist falsch geschrieben). →
  **Vorschlag (Phase 2):** deterministisches Script, das ausschliesslich `sources:`-Zeilen
  durchsucht und dort ä→ae, ö→oe, ü→ue rueckgaengig macht (Umkehrung des 21.07.-Fixes, aber
  nur im Dateinamens-Kontext) — Fliesstext bleibt unangetastet.
- **Finding B1 (fortbestehend, gewachsen) — `destillate/INDEX.md`-Dubletten:** 179
  Tabellenzeilen fuer 138 Destillate (war 166/131 am 21.07.). 24 Destillate mit 2–7 Zeilen
  (`muken-2025-verabschiedet` weiterhin 7×, neu hinzugekommen u.a.
  `zh-energiegesetz-revision-solarpflicht-2026` 4×,
  `grundwasserwaermenutzung-bewilligung-zh-sz` 4×). → Vorschlag unveraendert: je Destillat
  auf eine Zeile konsolidieren.
- **Finding B2 (fortbestehend, unveraendert) — 2 Destillate fehlen im Register:**
  `bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013` (wird in `wiki/innendaemmung.md`
  zitiert) und `sia-2024-nutzungsrandbedingungen-gesundheitsbau` (nicht-konformes
  Frontmatter, siehe F4) sind weiterhin nicht in `destillate/INDEX.md` gelistet.
- **Finding B3 (fortbestehend, fast verdoppelt) — `wiki/INDEX.md` «Themen-Artikel» vermischt
  weiter zwei Ebenen:** 73 Bullet-Eintraege fuer nur 24 echte `wiki/*.md`-Dateien (49
  destillat-only-Eintraege, war 46/25 am 21.07.). Jeder neue Run haengt offenbar neue
  Destillat-Einzeleintraege in denselben Abschnitt statt sie sauber zu trennen.
- **Finding B4 (fortbestehend, gewachsen) — FAQ-INDEX-Eintrag weiterhin ein wachsender
  Mega-Absatz:** reicht inzwischen additiv bis Run 87 (24.07.), kein Verdichten alter Staende.

### C — Unbelegte Claims

Stichprobe (Budget-bedingt schlanker als am 21.07., max. 2–3 Kernaussagen je gepruefter
Datei, kein Vollabgleich aller 24 Artikel):

- U-Wert-/Foerder-Kennzahlen in `u-werte-grenzwerte-ch.md`, `foerderung-energie-zh.md`:
  weiterhin mit `sources:`-Eintrag hinterlegt (Pfad selbst z.T. kaputt, siehe B5 — der
  **Beleg als Konzept** ist vorhanden, nur die Dateipfad-Schreibweise stimmt nicht).
- `graue-energie.md` kg-CO₂-Bauteilwerte (12.4–19.9 kg CO₂-eq/m²EBF·a): Quelle
  `[[muken-2025-modul-g-co2-grenzwerte]]` vorhanden und aufloesbar (established).
- FAQ-Stichprobe F111–F116 (Run 87): jede Antwort traegt einen Quelle-Absatz mit
  Fundstelle (§ 295 PBG, AWP-Merkblatt T2, § 238 PBG, CDWS-Geschaeftsdatenbank etc.).

Keine unbelegte Zentralaussage gefunden. `status: speculative` bleibt auf einen Destillat-Fall
beschraenkt (`uf-werte-rahmenmaterial-grobuebersicht`, unveraendert seit 21.07.).

### D — RAW-Coverage

`_INGESTED.md` bestaetigt weiterhin «PDF-Bestand erschoepft» (SharePoint PL-04 zuletzt am
24.07. erneut ergebnislos geprueft, Run 87). Kein neuer `raw/`-Dump seit dem letzten Check.
Vollabdeckung, keine Coverage-Luecke.

### E — Veraltete Artikel

- **`foerderung-energie-zh.md`** (last_updated weiterhin 2026-06-28, unveraendert seit dem
  21.07.-Check): sagt weiterhin pauschal «befristet bis Ende 2026 bzw. bis Budget
  erschoepft», obwohl bereits am 20.07. (Run 82) der Kantonsratsstand (Rahmenkredit
  2026–2029) gefunden wurde und Run 87 (24.07.) die noch praezisere Unterscheidung
  KRNr 6062/6063 (nicht 6064) amtlich identifiziert hat. **Zweite Flag in Folge** — der
  Wiki-Artikel zieht die eigene, laengst destillierte Erkenntnis weiterhin nicht nach.
- **`BAUHERREN-FAQ.md`** (NEU): Frontmatter `last_updated: 2026-07-16`, obwohl der
  Fliesstext laut Fragenzaehler bis **F116** reicht und laut CHANGELOG zuletzt am 24.07.
  (Run 87) erweitert wurde — das Frontmatter-Datum liegt **8 Tage / mehrere Runs** hinter
  dem tatsaechlichen Bearbeitungsstand des eigenen Kernprodukts.
- Zur Erinnerung, bereits geloest: `graue-energie.md` wurde zwischen den Checks korrekt mit
  den MuKEn-2025-Kennwerten nachgezogen (last_updated jetzt 21.07.) — kein Finding mehr.

### F — Schreibregel-Verstoesse

- **Finding F1 (NEU, schwer) — `schallschutz-sia181.md` durchgehend in ASCII-
  Ersatzschreibung statt echter Umlaute:** wurde vom 21.07.-Fix (13 korrigierte Dateien)
  **nicht erfasst**. Durchgehend `fuehrt`, `gueltig`, `ueber`, `gestoert`, `Stoergrad`,
  `erhoehte`, `Aussenlaerm`, `groesser`, `Vollstaendige`, `Laermempfindlichkeit`,
  `Sanitaer`, `verfuegbar` u.v.m. — reiner Fliesstext, kein Dateiname/Code (Ausnahme
  greift nicht). Verstoesst gegen `rules/umlaute-konvention.md`.
- **Finding F2 (fortbestehend, unveraendert seit 21.07.) — `links:`-Trennzeichen weiterhin
  uneinheitlich:** unveraendert 9 von 24 Wiki-Dateien mit Leerzeichen statt Komma
  (`daemmstoffe-lambda`, `energienachweis-zh`, `fenster-verglasung`, `foerderung-energie-sz`,
  `innendaemmung`, `komfortlueftung`, `naturdaemmstoffe`, `pv-eigenverbrauch-zev`,
  `pv-solar-technologien`) — exakt dieselbe Liste wie vor 4 Tagen, keine Verbesserung.
- **Finding F3 (fortbestehend, unveraendert) — `solarwaerme-warmwasser.md` `sources:`
  weiterhin ohne `destillate/`-Pfad/`.md`-Endung** (`sources: [solarthermie-vs-pv-warmwasser-ch,
  …]` statt `destillate/solarthermie-vs-pv-warmwasser-ch.md`).
- **Finding F4 (fortbestehend, unveraendert) —
  `destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` folgt weiterhin nicht dem
  Meta-Schema-Frontmatter** (`quelle/herausgeber/ausgabe/gelesen/datenstand` statt
  `title/status/last_updated/sources/links`) — Ursache fuer Finding B2.
- **Sonst konform:** kein `ß` gefunden, keine dekorativen Symbole ausser dem Warnmarker `⚠`,
  FAQ-Nummerierung F1–F116 in der Stichprobe luecken- und dublettenfrei.

### G — Promotion-Kandidaten

- **`regenwasserbewirtschaftung-versickerung-zh` (emerging):** unveraendert seit 01.07. UND
  21.07. — **dritte Empfehlung in Folge**, vollstaendig belegt (AWEL-Formular + 3 Normen).
- **`sommerlicher-waermeschutz` (emerging):** unveraendert seit 01.07. UND 21.07. — **dritte
  Empfehlung in Folge**, Belegdichte (4 Quellen laut `sources:`) inzwischen hoeher als bei
  mehreren `established`-Artikeln.
- **`solarpflicht-schweiz-kantone` (emerging):** weiterhin unveraendert seit dem 21.07.-Check
  trotz Querbezug-Klaerung in Run 87 (KRNr 6062/6063 vs. 6064) — **zweite Empfehlung**.
- `innendaemmung.md` (emerging seit 20.07.) bleibt korrekt `emerging` — kein Kandidat, jung
  und Belegbasis waechst noch.

---

**Fazit:** Inhaltlich weiterhin eine sehr belastbare KB. Die Verwaltungsschicht zeigt aber
ein klares Muster: **Phase-2-Empfehlungen aus Health-Checks werden nicht abgearbeitet** —
alle vier Register-Befunde vom 21.07. sind gewachsen, keine der drei Promotion-Empfehlungen
wurde umgesetzt, und der einzige tatsaechlich durchgefuehrte Fix (Umlaut-Korrektur 21.07.)
hat selbst einen neuen, groesseren Fehler erzeugt (82 kaputte `sources:`-Referenzen). Fuer
den naechsten interaktiven Lauf empfohlene Prioritaeten: (1) `sources:`-Dateireferenzen
zurueck auf ASCII (Finding B5, groesster Hebel, betrifft die Belegbarkeit von 11 Artikeln
inkl. BAUHERREN-FAQ), (2) `schallschutz-sia181.md` nachtraeglich in den Umlaut-Fix
einschliessen, (3) die drei Promotion-Kandidaten tatsaechlich hochstufen oder begruenden,
warum nicht, (4) `destillate/INDEX.md` und `wiki/INDEX.md` entduplizieren/entwirren
(inzwischen der groesste einzelne Struktur-Schuldenposten), (5) `links:`-Format,
`sources:`-Format (F3) und Destillat-Frontmatter (F4) vereinheitlichen.
