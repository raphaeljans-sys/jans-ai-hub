---
title: "Wissens-Chef Lauf 56 — die fuehrende KB fuehrte die falsche Zahl, und der Grundkontext beschrieb eine KB mit 480 Artikeln als leer"
status: established
last_updated: 2026-09-09
sources:
  - "Delta-Basis 31967b7fa..519913bf9 (Lauf-55-Basis bis HEAD), Fenster 08.09.2026 23:00 - 09.09.2026 23:00, 115 Commits, nativ im SSD-Klon gemessen"
  - "6 Melder (model: sonnet), adversariale Verifikation im Hauptmodell, dazu vier eigene Gegenmessungen"
links:
  - "[[QUERBEZUEGE]]"
---

# Wissens-Chef Lauf 56 — 09.09.2026

**Zuschnitt.** 6 Melder auf dem Zuwachs seit Lauf 55, jeder Befund im Hauptmodell adversarial
gegengeprueft. Wachstum konzentriert in `twin` (11 Dateien), `normen` (11), `energie` (9).
**Bilanz: 6 bestaetigt (2 mit anderem Zuschnitt als gemeldet) · 3 widerlegt · 8 Nullbefunde mit
Aussage · 2 Befunde, die kein Melder hatte.** 8 Dateien geaendert, alle additiv, keine Loeschung.

## Die zwei Befunde, die kein Melder hatte

**WC56-1 — Der Grundkontext beschreibt seit rund 16 Tagen eine KB mit 480 Artikeln als leer.**
`CLAUDE.md` (Projektdatei, laedt in **jede** Session auf **jeder** Station) fuehrte
`architektur-fachwissen` als «bisher nur Inventar, noch kein Destillat». Gemessen am 09.09.2026:
**482 Dateien in `wiki/`, davon 480 Sachartikel** mit vollem Frontmatter, `sources`, `links`,
zusammen **48'383 Zeilen**; angelegt zwischen dem **23.08. und 31.08.2026** (`git log
--diff-filter=A`), der erste Sachartikel am 29.08. (`c1224abb1`). Die Aussage war am 23.08. richtig
und ist seit etwa dem 24.-29.08. falsch. Die KB-eigene `CLAUDE.md` ist korrekt — die Divergenz
liegt allein in der Hub-Datei. **Wirkung:** eine Session, die den Wegweiser liest, schliesst, dass
dort nichts Verwertbares liegt, und konsultiert die KB nicht. Genau dafuer ist der Wegweiser da.
In keinem der 55 Vorlaeufe gemeldet (`grep` ueber QUERBEZUEGE, CHANGELOG, SYNERGIE-REGISTER: null
Treffer). **Korrigiert** auf «Stand 09.09.2026 **480 Wiki-Artikel** aus 43 Sektionsinventaren»;
Sperrvermerk fuer Vertraege/Bewerbungen/Adressdaten unveraendert.

**WC56-4 — Der Beleg lag eine Woche vor dem Vermerk im Haus.** Lauf 55 hat am 08.09. in
`planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` festgehalten, die Pauschaldatierung von
**AS 2025 659** auf den 01.07.2026 sei widerlegt, «welche Bestimmungen tatsaechlich erst am
01.07.2026 in Kraft treten, ist ungeklaert». Das bleibt richtig (eigene Gegenpruefung ueber alle
amtlichen `raw/` in `baurecht` und `energie`: keine nennt es; Melder 3 unabhaengig gleich).
**Die Gegenrichtung ist aber belegbar, und der Beleg lag seit dem 01.09. im Haus:**
`wissen/baurecht/raw/260901_amtlich_ch_rpv-art32a-36-37.md` ist der Fedlex-Konsolidierungsstand
**Segment 20260101** der RPV und weist im Kopf «letzte Aenderung V vom 15. Okt. 2025, **AS 2025
659**» aus — und **enthaelt Art. 32a-bis RPV**. Ein Konsolidierungsstand auf ein Datum fuehrt nur,
was an diesem Datum gilt. Also sind **mindestens Art. 32a-bis und Art. 38a RPV** seit dem
01.01.2026 in Kraft; der Kern der Pauschalzuordnung ist nicht nur widerlegt, sondern **umgekehrt**.
Lauf 55 griff zur `raw` vom 07.09. und sah die vom 01.09. nicht. **Methodisch uebertragbar und
deshalb im Artikel vermerkt:** ein datierter Konsolidierungsstand ist selbst der
Inkrafttretens-Beleg fuer jede Bestimmung, die er fuehrt — staerker und billiger als die Suche
nach der einzelnen Aenderungsfussnote.

## Bestaetigte Befunde aus dem Fan-out

**WC56-2 ⭐ — Die fuehrende KB fuehrt die falsche Zahl, und es ist genau die Zahl, ueber die
Raphael gerade entscheiden soll.** Die Fuehrungsmatrix weist `claude-code`
(`wiki/kontext-architektur.md`) den «gemessenen Ist-Zustand des Grundkontexts, Byte-/Token-Budget»
zu; alle anderen verweisen dorthin. Der Artikel (`status: established`, `last_updated:
2026-08-31`) nennt **`MAX_AUTO_BYTES = 30'000`** und **`WARN = 24'000`**. Live gemessen am
09.09.2026 in `skills/twin/tools/build_dna.py` Z. 63-64: **34'000** und **30'000**, angehoben
durch **Entscheid Raphaels vom 18.08.2026** nach dreimaliger Vorlage (`wissen/twin/CHANGELOG.md`
Z. 1421-1422). Der Artikel war also **13 Tage vor seinem eigenen `last_updated`-Stempel** bereits
falsch. Zwei Folgen: (1) sein Schlusssatz «die Anhebung der Grenze behaelt der Riegel per
Konstruktion Raphael vor» liest sich als «angehoben wurde nie» — angehoben **wurde**, einmal,
korrekt; (2) wer den heutigen Druck an der fuehrenden KB abliest, rechnet gegen die falsche Decke.
Eigene Gegenmessung des Auto-Blocks: **33'986 B** (Report des Tages: 33'985 B, Reserve 15 B). Gegen
30'000 waere er laengst gesprengt, gegen 34'000 steht er 15 B davor. **Das ist der Zahlenstand fuer
den Riegel-Entscheid (a)/(b)/(c), der als SYN-69/78/80 bei Raphael liegt** — die
Entscheidungsgrundlage stand an der zustaendigen Stelle falsch. Additiver ⚠-Nachtrag gesetzt, die
historische Darstellung 03.-06.08. bleibt als Chronik stehen.

**WC56-3 — Stadelmann steht im Du; das Gegenbeispiel der Rule ist eingetreten.**
`rules/anrede-kontakte.md` (immer aktiv) fuehrt in der Treffen-Klausel als Gegenbeleg, ein
persoenlicher Kontakt erzwinge «keinen Wechsel Sie → Du — den zeigen Eren und Hiltmann,
**Stadelmann nicht**». Beleg aus Raphaels eigener Hand vom **07.09.2026 12:37**: «Geschätzter
Othmar» samt «Dir»/«Dich»/«deine» (Ingest-Register Batch 116, authentisch). **Der Kern der Klausel
wird dadurch bestaetigt, nicht widerlegt:** der Wechsel kam, aber **nicht am Telefonat** und rund
sieben Wochen spaeter — genau die Fassung «Trajektorie, kein Standbild» (260823). Falsch geworden
ist allein das Gegenbeispiel. ⚠⚠-Vermerk gesetzt, **Wortlaut der Klausel unangetastet** (Claude
aendert keinen Rule-Text). Der `twin`-Lauf hatte den Befund selbst erhoben und korrekt nur
vorgelegt.

**WC56-5 — Zwei Konsumenten fuehren VKF-Werte ohne Fassungsstand.** Die
Brandschutzabstaende 5 / 7.5 / 10 m (BRL 15-15 Ziff. 2.2 Abs. 2) stehen ausgeschrieben in
`energie/destillate/wdvs-brandriegel-fassadendaemmung-vkf.md` (null Zeiger) und in
`skills/brandschutz/SKILL.md` (Zeiger nur pauschal auf den Destillat-Ordner). **Werte korrekt, kein
Widerspruch** — das Risiko ist der fehlende Fassungsstand: die Richtlinie **15-15de** existiert in
zwei Druckstaenden (2015 unrevidiert / 2017 revidiert) unter **gleicher Nummer**, und die Revision
hat **Ziff. 2.2 Abs. 2+3** angefasst. Genau diese Fassungsfalle hat `normen` Run 82 am selben Tag
erneut vermessen. Zeiger im `energie`-Destillat gesetzt, mitsamt dem Vorbehalt, dass die fuehrende
Quelle `status: speculative` traegt (Abdeckungsrichtung, nicht Richtigkeit — 0 falsche Werte in
den Runs 80-82).

**WC56-6 — Healthcare-Kennwert in `machbarkeit` ohne Fuehrungszeiger.** `02_kennwerte-kosten.md`
fuehrt «Healthcare/Pflege hoeher; Steinhof **CHF 1'700/m³** (aelterer Stand)» ohne Zeiger auf
`immobilienbewertung/wiki/realwert-sachwert.md`, das die Matrix als fuehrend nennt und das den
belegten Bestand **826-1'420 CHF/m³ GV (Median ~1'100)** fuehrt. **Anderer Zuschnitt als gemeldet:**
der Melder sah einen Zahlenwiderspruch — den gibt es nicht, weil die Zeile weder BKP-Tiefe noch
Jahr nennt und das Band auf **BKP 2** bezogen ist; ein BKP-1-5-Wert laege zulaessig hoeher. Der
Befund ist damit **fehlender Beleg**, nicht falscher Wert — und pikant, weil die Zeile selbst
verlangt «Kennwert immer mit Nutzung + Jahr belegen». Zeiger gesetzt, ohne den Wert anzutasten.

**WC56-7 — Zwei Kanten gesetzt, wo zwei KBs am selben Gegenstand arbeiteten, ohne voneinander zu
wissen.** (a) Die am 09.09. eroeffnete Frage **E-R189-1** (hat ZH von Art. 18a Abs. 2 lit. a RPG
Gebrauch gemacht?) und die zwei **haengigen** ZH-Postulate **KR-Nr. 87/2024** und **88/2024** zu
Solar-Meldeverfahren, die `planungsgrundlagen` seit laengerem fuehrt. Sie beantworten die Frage
nicht, sind aber der naechste Rechercheschritt; Zeiger in **beide** Richtungen gesetzt. (b)
**Art. 5a RPG (Abbruchpraemie):** `planungsgrundlagen` datiert sie auf 01.07.2026 aus einer
sekundaeren zh.ch-Quelle, `baurecht` hat den Artikel am amtlichen Volltext angetroffen, ohne seine
Aenderungsfussnote zu lesen. Keine Seite kannte die andere; Zeiger gesetzt.

## Widerlegt

- **«`energie` datiert Art. 32a-bis RPV falsch auf 1.1.2026»** (Melder 2). Am Wortlaut widerlegt:
  das «seit 1.1.2026» haengt dort an **Art. 18a Abs. 1 RPG** (AS 2024 679 / **AS 2025 636**), nicht
  an Art. 32a-bis, das ohne Datum als Konkretisierung genannt wird. Und selbst wenn — die Datierung
  waere richtig (siehe WC56-4). **Aus der Widerlegung kam der staerkere Befund.**
- **«Namensdrift BSR vs. BRL zwischen Skill und KB»** (Melder 1). `normen` verwendet «VKF-BSR
  15-15» in der eigenen `wiki/REGISTER.md` (Z. 970) selbst; hubweit 83 Dateien mit «BSR», 152 mit
  «BRL». Kein Drift zwischen Konsument und fuehrender KB, sondern durchgaengige Doppelverwendung
  **inklusive** der fuehrenden KB. Kein Eingriff — Namenskonvention gehoert `normen`.
- **«Buchkapitel Band 2 Kap. 15 ohne Zeiger aufs VKF-Destillat»** (Melder 1) — nicht aufgerollt:
  Buch-Destillate sind laut `baurecht/CLAUDE.md` nicht ins raw/wiki/outputs-Schema eingeordnet, eine
  Verlinkungskonvention dafuer ist nicht gesetzt. Registerzeile statt Eingriff.

## Nullbefunde mit Aussage

- **Norm-Rueckkanal, vierte Messung in Folge ohne Treffer.** Ueber **2'680 hinzugefuegte Zeilen in
  36 Dateien** (alle KBs ausser `normen`) plus 44 Zeilen ausserhalb `wissen/`: **keine einzige neue
  materielle Norm-Zitation**, nur ein Statusverweis auf die alte Bringschuld E-R148-1
  (Normkauf SIA 380/1:2016). Die einzigen SIA/EN-Nennungen des Fensters sind die
  Abschluss-Annotationen, die Lauf 55 selbst gesetzt hat. **Aussage:** das seit Lauf 53 verfolgte
  Muster «frisches Wachstum erzeugt unregistrierte Norm-Zitate» ist nun **viermal** nicht
  eingetreten. Es war ein **Bestands**-Phaenomen, kein Zuwachs-Phaenomen — die Melderfrage gehoert
  entsprechend umgestellt (Registerzeile gesetzt).
- **Kennwert-Achse sauber.** Der geflaggte Ebmatingen-Wert **2'400** existiert genau einmal, mit
  Flag unmittelbar darunter. Keine Stelle behauptet UBS-RE-LFS sei von Wuest unabhaengig (rund 45
  Fundstellen gesichtet, durchgaengig das Gegenteil). NF/HNF/GF/GV-Vorbehalte an allen vier
  Fundorten des Spektrumskosten-Bands konsistent mitgefuehrt.
- **Autarkie 103 % restlos bereinigt.** Der von `energie` Run 189 korrigierte Unmoeglichkeitswert
  lebt hubweit an keiner Stelle mehr ausserhalb historischer Laufberichte und der Korrekturpassagen
  selbst — auch nicht in `planungsgrundlagen`, `grobkosten`, `immobilienbewertung` oder Skills.
- **`rules/jans-dna-facetten.md` (20/19): keine stille Loeschung.** Drei Streichungen stichprobenartig
  gegen die Artikel geprueft — der Inhalt steht dort, wie der Report behauptet. Einzige nicht
  wiederauffindbare Streichung ist eine Methoden-Nebenbemerkung ohne Verhaltensinhalt.
- **Zaehlstaende `spec` ↔ `claude-code` deckungsgleich:** 29 Rule-Dateien, 24 @-Importe,
  `jans-dna.md` 3'870 B — alle drei live nachgemessen, kein Drift.
- **Datenstands-Waechter reproduziert seinen eigenen Bericht:** 979 Befunde, exakt der von Run 189
  gemeldete Stand nach der dritten Ausnahme. ⚠ **Aber: 553 davon (56 %) stammen aus
  `architektur-fachwissen`**, weitere 59 aus `twin`, wo die Treffer ganz ueberwiegend **zitierte
  CHF-Betraege in Stil-Analysen** sind, keine Preisdaten. Die Gesamtzahl taugt als
  Hub-Gesundheitswert derzeit nicht. Registerzeile gesetzt, kein Eingriff ins Werkzeug.

## Ausgefuehrte Aktionen (8 Dateien, alle additiv)

| Datei | Aktion |
|---|---|
| `CLAUDE.md` | WC56-1: Stand `architektur-fachwissen` berichtigt (480 Artikel statt «nur Inventar») |
| `wissen/claude-code/wiki/kontext-architektur.md` | WC56-2: ⚠-Nachtrag Riegelwert 34'000/30'000, Chronik erhalten |
| `wissen/planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` | WC56-4: Eingrenzung AS 2025 659 am Konsolidierungsstand + Art.-5a-Zeiger |
| `wissen/planungsgrundlagen/wiki/recht-norm-pbg-revision-bauen-im-bestand.md` | WC56-7a: Querbezug zu E-R189-1 |
| `wissen/energie/wiki/QUESTIONS.md` | WC56-7a: Rechercheeinstieg Postulate 87/88/2024 an E-R189-1 |
| `wissen/energie/destillate/wdvs-brandriegel-fassadendaemmung-vkf.md` | WC56-5: Fuehrungszeiger + Fassungsvorbehalt |
| `skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md` | WC56-6: Healthcare-Fuehrungszeiger |
| `rules/anrede-kontakte.md` | WC56-3: ⚠⚠-Vermerk Stadelmann, Wortlaut unangetastet |

## Offene Entscheide fuer Raphael

1. **Byte-Riegel (a)/(b)/(c) — unveraendert offen, aber die Zahlenbasis war falsch.** Der Entscheid
   liegt als SYN-69/78/80 vor. Neu ist, dass die dafuer zustaendige KB bis heute **30'000** nannte
   statt der geltenden **34'000**. Reserve aktuell **15 B**.
2. **Stadelmann in die Kontaktliste?** Er steht bis heute nur im Klauseltext, nicht in der Tabelle
   von `rules/anrede-kontakte.md`. Belegt ist «Geschätzter Othmar» + Du (07.09.2026). Zugleich:
   ob das nun falsche **Gegenbeispiel** aus dem Klauseltext genommen wird, ist ein Rule-Entscheid.
3. **Twin-Gold: der 2007-2014-Eigentext-Stratum liegt seit 11 Tagen unentschieden.** Am 29.08.2026
   hat Lauf 47 `wissen/twin` auf einen unverbrauchten GOLD-Bestand aus Raphaels eigener Hand
   hingewiesen (`twin/wiki/QUESTIONS.md` Block 260829c). Der Fidelity-Review vom 09.09. schreibt,
   die zwei gefundenen Golds seien «die einzigen wirklich unverbrauchten Proben, die dieser Review
   **seit Tagen** hatte». Die **Uebergabe funktionierte** — offen ist die Sachfrage, die nur
   Raphael beantworten kann: **ist Stimme von 2007-2014 heute noch Gold oder historischer Stand?**
