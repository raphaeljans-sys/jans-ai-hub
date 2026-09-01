# Wissens-Health-Check: immobilienbewertung — 2026-09-01

Kontext: Nur Phase 1 (Audit + Report), unbeaufsichtigt geprüft im Auftrag Raphael. Letzter
Health-Check: 2026-08-22 (`outputs/2026-08-22_health-check.md`, A1 · B0 · C0 · D3 · E1 · F2 · G1).
In den zehn Tagen dazwischen war die KB ausserordentlich aktiv: 18 Vertiefungsläufe am 23.08.2026,
mehrere Wissens-Chef-Cross-KB-Läufe (28.08./29.08.) und der Marktpuls-zum-Stichtag-Lauf vom
01.09.2026 (BWO-Publikation, SREBI-Primärverifikation, neuer SNB-Tagesfeed-Zugang,
Leerwohnungsziffer-Abschnitt). Dieser Check prüft den Stand nach all dem, nicht nur das Delta.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 2 (beide bekannt, weiter offen — Fachentscheid Raphael aussteht) |
| B Kaputte Backlinks/Orphans | 0 (1 Verdachtsfall des mechanischen Vorlaufs geprüft und als falsch-positiv verworfen) |
| C Unbelegte Claims | 0 (Stichprobe; KB führt Quellenpflicht weiterhin sehr konsequent, auch in der neuesten Schicht) |
| D RAW-Coverage-Lücken | 2 (1 substanziell: vier Ingest-Cluster-Reports seit 32 Tagen unintegriert; 1 bekannt: D2/D7/D9-Restbestand) |
| E Veraltete Artikel | 1 (bekannt, weiter offen: UBS-FS mehrerer Gemeinden > 18 Monate) |
| F Schreibregel-Verstösse | 2 (1 bekannt/gross, jetzt mit Gegenbeleg: T-Umlaut wächst mit neuem Text statt zu schrumpfen; 1 bekannt/klein: Gemeinde-Frontmatter-Schema nicht in CLAUDE.md dokumentiert) |
| G Promotion-Kandidaten | 1 (weich: `az-gfz-kennwerte` könnte reif für `established` sein) — 1 Kandidat vom letzten Mal ist bereits eingelöst |

## Top-3 (Raphaels Aufmerksamkeit)

1. **T-Umlaut ist nicht nur gross, sondern wächst mit dem frischesten Text der KB weiter —
   entgegen einer eigenen Entwarnung im CHANGELOG.** Vertiefungslauf 2 (23.08.2026) notierte:
   „neu geschriebener Text dieses Laufs verwendet echte Umlaute". Stichprobe an genau diesem
   und dem neuesten Text (Marktpuls 01.09.2026) widerlegt das: der ganze neue Abschnitt „Der
   risikofreie Basiszins" in `ertragswert-dcf.md` (23.08./01.09.) und der neue Abschnitt
   „Marktpuls-Prüfvermerke" in `realwert-sachwert.md` (01.09.) sind durchgehend in
   ae/oe/ue-Ersatzschreibung verfasst ("Wuerfel", "gefuehrten", "ueberhaupt", "Pruefvermerk").
   Rohe Vorkommen-Zählung bestätigt den Trend: `ertragswert-dcf.md` jetzt 67 (Health-Check
   22.08.: 56), `realwert-sachwert.md` jetzt 57 (22.08.: 31) — beide Dateien sind seit dem
   22.08. mehrfach bearbeitet worden, und jede Bearbeitung hat den Bestand vergrössert statt
   verkleinert. Der Massenfix bleibt zu Recht gesperrt (wörterbuchbewusst, review-pflichtig,
   Rule `wissensluecken.md`), aber die Prämisse „nur Altlast, Neues ist sauber" trägt nicht
   mehr — jeder Lauf, der neuen Fliesstext schreibt, sollte ab jetzt echte Umlaute verwenden,
   sonst wächst die spätere Aufräumarbeit mit jedem Vertiefungslauf weiter.
2. **Vier destillierte Ingest-Reports (rund 320 KB) liegen seit 32 Tagen unintegriert in
   `outputs/`.** Cluster B (Wüest-Partner-Holzbaukennzahlen), C (BFS/werk-material), D
   (Bodenpreise/Kennwerte-Restbestand) und E (Projekte-Restordner) sind am 31.07.2026 erstellt
   worden, jeweils vollständig mit Fundstelle gelesen — aber `grep` gegen alle `wiki/`-Dateien
   findet keinen einzigen Verweis auf sie. Die KB selbst führt das korrekt als offenen
   Ereignis-Trigger in `training/PROGRAMM.md` (nicht neu entdeckt, aber die Frist wächst).
   Cluster E trägt laut eigenem Report bereits die Ziel-Zuordnung je Fund — die Einarbeitung
   ist mechanisch vorbereitet, nur noch nicht ausgeführt.
3. **Zwei strukturell gleiche, unentschiedene Zahlen-Divergenzen bleiben offen, beide mit
   `needs-decision`-Markierung und beide seit Wochen unverändert:** (a) HNF/GF-Regelgeschoss-
   Faktor 0.70 (Hub-Entscheid 12.07.2026) gegen belegte 0.75 (`flaechendefinitionen-sia:84`) —
   unverändert seit 25.07.2026; (b) Teuerungsanker-Stützpunkt 1.346 (diese KB) gegen 1.334
   (`wissen/grobkosten`) für dieselbe Tabelle — als D12/D15 geführt, unverändert seit
   04.08./23.08.2026. Beide sind reine Fachentscheide, die nur Raphael treffen kann; keine
   Seite wurde eigenmächtig umgestellt (Sperrklausel eingehalten). Neu zusammengefasst: **D16
   (BKP-2-Anteil 75 % vs. amtlich ~89 %, ± 686'000 CHF am Rechenbeispiel) und D17
   (Schätzerhandbuch-Auflage 2012 vs. 2019, CHF 185.–)** sind die beiden günstigsten/wirksamsten
   offenen Bring-Schulden im Register und stehen dort seit dem 23.08.2026 auf Rang 1 und 2 der
   selbst gesetzten Reihenfolge — reine Registerpflege-Empfehlung, kein neuer Fund.

## Details je Audit

### A. Widersprüche

- **T-Regelgeschoss (unverändert offen).** `wiki/realwert-sachwert.md` Zeilen 330–365 führt
  weiterhin die `needs-decision`-Box (Wissens-Chef Run 15, 25.07.2026, adversarial bestätigt):
  Hub-weiter Entscheid 0.70 vs. belegte 0.75 in `flaechendefinitionen-sia:84`. Keine Seite wurde
  seither still umgestellt. Fachentscheid Raphael aussteht.
- **D12/D15 — Doppelführung des Teuerungsanker-Stützpunkts (unverändert offen).** Dieselbe
  Tabelle (Schätzungsanleitung Kap. 5, Tab. 2) wird in dieser KB mit Stützpunkt 01.04.2003 =
  899.2 (Faktor 1.346) geführt, in `wissen/grobkosten/wiki/kennwerte.md` mit 01.04.2004 = 907.6
  (Faktor 1.334) — rund 1 % Differenz in jedem hochgerechneten Wert. Beide Lesarten sind am
  Original verifiziert (unterschiedliche Stützpunktwahl, kein Lesefehler). Seit 23.08.2026 kommt
  D15 dazu: mit der ZIW-Revision 2025 liegen jetzt drei belegte Teuerungsanker-Kandidaten vor
  (ZIW-Total +0.9 %, ZIW-Gebäude BKP 2 +0.4 %, BFS Neubau MFH +1.0 %), die um 0.6 Prozentpunkte
  auseinanderliegen. Beide Fragen hängen zusammen und sind bewusst noch nicht entschieden.
- Keine weiteren Widersprüche zwischen Artikelpaaren gefunden (Stichprobe: die vier
  Verfahrensartikel realwert-sachwert ↔ ertragswert-dcf ↔ vergleichswert-hedonisch ↔
  residualwertmethode wurden bereits am 23.08.2026 in den Vertiefungsläufen 2–22 systematisch
  auf Konsistenz geprüft — dieser Lauf hat das nicht wiederholt, sondern die dortigen Ergebnisse
  gegengelesen).

### B. Kaputte Backlinks & Orphans

Mechanischer Vorlauf (`wiki-konsistenz.sh`) meldete für `wissensluecken.md`: kein Frontmatter
(5 Teilbefunde, siehe Audit F) und einen toten Verweis `[[outputs/…]]`. Beides geprüft:

- **`[[outputs/…]]` ist kein aktiver Link, sondern zitierter Text in einer historischen
  Erledigt-Notiz** (Zeile 408, Eintrag vom 02.07.2026): „… 2 falsche Backlinks korrigiert
  (`[[healthcare-wirtschaftlichkeit]]`→Skill-Klartext … `[[outputs/…]]`→Report-Klartext …)".
  Der Satz beschreibt eine bereits am 02.07.2026 behobene Altlast, nicht einen aktuell aktiven
  Link. Derselbe Fund gilt für `[[healthcare-wirtschaftlichkeit]]`, das der mechanische Scan
  aus demselben Grund nicht meldete, obwohl es exakt gleich daliegt. **Falsch-positiv, kein
  Mangel.** Diese KB hatte bereits im Health-Check vom 22.08. dieselbe Fehlerfamilie (Regex
  findet Text, der wie ein Link aussieht, ohne Kontext zu prüfen).
- **Alle echten `[[link]]`-Vorkommen wurden gegen ihr Ziel geprüft** (33 eindeutige Linkziele
  über alle Wiki-Dateien): alle lokalen Artikel existieren, die drei Cross-KB-Links
  (`[[sia-416-1-2007]]`, `[[sia-416-2003]]` → `wissen/normen/destillate/`;
  `[[enteignung-und-entschaedigung]]` → `wissen/baurecht/wiki/`) sind bewusst gesetzt und die
  Zieldateien existieren.
- **Alle 30 Wiki-Dateien (17 Kernartikel + 11 Gemeinde-Fact-Sheets + README + wissensluecken +
  INDEX) stehen im `INDEX.md`** — Abgleich Datei-für-Datei bestätigt, keine Ausnahme, keine
  Orphans.

### C. Unbelegte Claims

Stichprobe (keine Vollprüfung, gemäss Audit-Vorgabe Aufwand/Nutzen): zentrale Zahlenaussagen in
den frisch überarbeiteten Abschnitten von `investorenmarkt-makro.md`, `ertragswert-dcf.md` und
`realwert-sachwert.md` (Marktpuls 01.09.2026) tragen durchgehend Primärquelle, Abrufzeitpunkt
und teils Uhrzeit (z. B. „BWO … Abruf 08:00 CEST", „SNB Feed … Abruf 01.09.2026", „UBS CIO …
PDF 8 S. publ. 06.08.2026 06:00 UTC"). Kein unbelegter Kernclaim gefunden. Diese KB markiert
Beleggrenzen aktiv selbst (z. B. „primär belegt sind Auflage/Jahr/Preis; die Liste der
Neuerungen stammt aus Buchhandels-Listungen, kein Inhaltsbeleg" bei D17) — exakt das Verhalten,
das dieser Audit einfordert.

### D. RAW-Coverage-Lücken

- **Neu hervorgehoben (bereits als Ereignis-Trigger geführt, aber mit wachsender Frist):** vier
  Ingest-Cluster-Reports vom 31.07.2026 (`outputs/2026-07-31_ingest-cluster-{B,C,D,E}-*.md`,
  74–92 KB je Datei, zusammen rund 320 KB) sind seit **32 Tagen** nicht in einen `wiki/`-Artikel
  eingearbeitet (Grep gegen alle Wiki-Dateien: keine Treffer). Cluster A (58 KB, derselbe Lauf)
  hat immerhin einen Abnehmer ausserhalb dieser KB gefunden (Wüest-Quantile in der
  `kostenschaetzung`-Referenz), ist aber ebenfalls nicht in dieser KB selbst verarbeitet. Die
  KB führt dies transparent in `training/PROGRAMM.md` als Statuskopf — kein neuer Fund, aber
  32 Tage sind länger als jede andere in dieser KB dokumentierte Verarbeitungszeit.
- **Bekannt, unverändert:** aus `raw/_INGESTED.md` mit Status „teilweise" — Marktpreis-Quellen
  (`04 Marktpreise/`), Bodenpreise (`05 Bodenpreise/`), Kennwerte (`06 Kennwerte/`). Alle drei
  identisch in `wissensluecken.md` als D3/D5/D7/D9 geführt (Bring-Schulden Raphael), keine neue
  Lücke.

### E. Veraltete Artikel

- **UBS Fact Sheets mehrerer Gemeinden weiterhin > 18 Monate alt:** Regensdorf, Wald,
  Wädenswil, Einsiedeln, Luzern (Stand 12/2023 = > 20 Monate), Muri/Maur/Thalwil (7/2024 =
  > 13 Monate, unter der 18-Monats-Schwelle, aber ⚠ geflaggt). Bekannt und mit hoher Priorität
  in `wissensluecken.md` D1 geführt. **Neu seit dem letzten Check:** die KB hat selbst am
  23.08.2026 beziffert, wie weit die einzelnen Blätter danebenliegen (kantonale
  Handänderungsstatistik als Gegencheck), und daraus eine Bestellreihenfolge abgeleitet
  (Regensdorf zuerst, weil das Fact Sheet dort in die falsche Richtung zeigt — die Preise sind
  seither gesunken, nicht gestiegen). Das ist eine Präzisierung des bekannten Befunds, kein
  neuer.
- Alle vier Verfahrensartikel (realwert-sachwert, ertragswert-dcf, vergleichswert-hedonisch,
  residualwertmethode) wurden zuletzt am 01.09.2026 aktiv gegen die tagesaktuellen Marktanker
  geprüft, `realwert-sachwert` sogar mit explizitem „geprüft, keine Änderung nötig"-Vermerk samt
  Begründung — nicht veraltet.

### F. Schreibregel-Verstösse

- **T-Umlaut (bekannt, gross, mit neuem Gegenbeleg):** siehe Top-1. Betrifft weiterhin praktisch
  alle Kernartikel (grösste Konzentration: `ertragswert-dcf.md` 67, `wissensluecken.md` 59,
  `realwert-sachwert.md` 57 Vorkommen einer groben ae/oe/ue-Heuristik). Bewusst nicht per
  Massenersatz behoben (Kollateralschaden-Risiko „Raphael"→„Raphäl"); braucht weiterhin einen
  dedizierten, wörterbuchbewussten Phase-2-Lauf. **Neu:** der Trend zeigt Wachstum statt
  Stagnation — ein Hinweis, den kommende Läufe im Prompt mitgeben sollten, damit wenigstens
  neuer Text sauber entsteht, während der Retro-Fix noch aussteht.
- **Marktdaten-Gemeinden-Frontmatter weiterhin nicht in `CLAUDE.md` dokumentiert (bekannt,
  klein):** 11 der 12 `marktdaten-gemeinden/*.md`-Dateien führen ein KB-eigenes Frontmatter-
  Schema (`gemeinde, kanton, bfs, plz, ms_region, stand, sources`) statt des Standard-Schemas
  (`title, status, last_updated, sources, links`) — sachlich vorhanden (`stand` = De-facto-
  `last_updated`), aber nirgends in `CLAUDE.md` als bewusste Abweichung vermerkt. Der Health-
  Check vom 22.08.2026 hatte genau diesen Vorschlag schon gemacht; er ist seither nicht
  umgesetzt worden. Niedrige Priorität, wiederholt zur Erledigung vorgeschlagen.
- `wissensluecken.md` trägt weiterhin kein Frontmatter — **dokumentierte Abweichung**
  (`CLAUDE.md`: „Schema-Abweichung: Dieses KB nutzt wissensluecken.md statt QUESTIONS.md"), kein
  Verstoss. Kein ß-Vorkommen in der gesamten KB (Schweizer-Hochdeutsch-Konvention eingehalten).

### G. Promotion-Kandidaten

- **Eingelöst seit dem letzten Check:** SREBI/IMPI standen am 22.08. als Promotion-Kandidat mit
  `status: emerging` (Primärquelle nicht frei abrufbar). Am 01.09.2026 wurde die UBS-Primärquelle
  direkt gelesen (JCR-Link statt `curl`), alle Begleitzahlen wörtlich bestätigt, `status:
  established` gesetzt. Kein weiteres Handeln nötig.
- **Weicher neuer Kandidat: `az-gfz-kennwerte.md` (`status: emerging`).** Der Artikel führt
  inzwischen 19 Gemeinden, jede mit einer amtlichen BZO-/Baureglement-Fundstelle inkl. Artikel-
  nummer, Genehmigungsdatum und Abrufweg — deutlich dichter belegt als mancher `established`-
  Artikel dieser KB. Der Grund, warum er `emerging` bleibt, dürfte die eigene, noch ungelöste
  Methodenfrage sein („vier nicht ineinander umrechenbare Bezugsgrössen"), nicht die
  Beleglage. **Nicht selbst umgestuft** (Phase 2 läuft nicht unbeaufsichtigt) — als Hinweis für
  den nächsten Bibliothekar-Lauf, zu prüfen, ob die Methodenfrage die Promotion wirklich
  blockieren muss oder ob Beleglage und Methodenoffenheit getrennt bewertbar sind.
- D14 bleibt zu Recht nicht durchgestrichen (Teilantwort mit vier offenen Nebenpunkten) —
  korrekt als „✓ beantwortet, Rest offen" statt vollständig erledigt geführt.

## Bring-Schulden Raphaels (Memory-Abgleich: UBS-FS, Bodenpreise, Diskontsatz, Excel-Tools)

Alle vier sind in `wissensluecken.md` weiterhin identifizierbar, mit unterschiedlichem
Fortschritt seit ihrer ursprünglichen Erfassung:

- **UBS-FS (D1):** weiterhin **offen**, Priorität **hoch**, jetzt mit belegter
  Bestellreihenfolge (Regensdorf → Maur; Wädenswil/Wald trotz Alter noch brauchbar).
- **Bodenpreise (D2):** **teilweise geschlossen** — für den ganzen Kanton Zürich liegt seit
  23.08.2026 eine amtliche, maschinenlesbare Quelle vor (`amtliche-preisstatistik-zh.md`,
  `established`); Priorität deshalb von hoch auf **mittel** zurückgestuft. Offen bleibt nur noch
  der **Kanton Schwyz** (keine vergleichbare offene Statistik gefunden).
- **Diskontsatz (D3):** **grösstenteils geschlossen** — Wohnbau-Faustregel belegt (R.-Jans-Notiz
  31.12.2023), Healthcare-Seite über den Herosé-Fall und weitere Quellen unterlegt; Priorität von
  mittel auf **niedrig** zurückgestuft. Offen nur noch: Gewerbe-Feinabstufung je Mietersegment.
- **Excel-Tools (D4):** **✓ erledigt** (Run 15, 08.07.2026) — alle vier Tool-Zellformeln
  reverse-engineered, Rechenkette und Kalibrierung im Wiki verankert.

Kein Handlungsbedarf aus diesem Health-Check heraus — der Stand ist akkurat im Register
geführt und deutlich weiter als beim letzten Blick auf diese vier Punkte.

## Nicht durchgeführt (Phase 2, gemäss Auftrag)

Keine Datei wurde verändert (ausser dieser Report und die CHANGELOG-Zeile). Keine Reparaturen,
keine Stubs, kein Frontmatter-Nachtrag, kein Umbenennen/Mergen/Löschen — alles gemäss dem
Schreib-Riegel des Skills `wissenscheck` und dem Auftrag „nur Phase 1".
