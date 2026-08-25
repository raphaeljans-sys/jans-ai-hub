# Wissens-Health-Check: projekt-lessons — 2026-08-25

## Methode dieses Laufs

Nachtschicht Mac Mini, Phase 1 (Audit + Report, unbeaufsichtigt) — keine Phase-2-Aktionen
(kein Umbenennen, Mergen, Löschen, keine neuen Stub-Artikel). Basis ist der letzte
Health-Check vom 2026-08-03 (Sammellauf, A0·B1·C0·D0·E0·F1·G1) sowie die seitherigen
CHANGELOG-Einträge bis inkl. «Wissens-Chef Run 43» vom 25.08.2026. Gelesen: `WISSEN-CLAUDE.md`,
KB-`CLAUDE.md`, CHANGELOG-Kopf + 2026-08-03-Eintrag, `QUESTIONS.md`, `raw/_INGESTED.md`, alle
14 Wiki-Artikel und `INDEX.md` (vollständig, nicht nur Auszug). Gezielt geprüft: der im
Health-Check 2026-08-03 gemeldete Klammer-Tippfehler-Backlink in
`kispi-behoerden-zustaendigkeitswechsel-1171-26.md`.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 2 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 3 |
| G Promotion-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Bestätigt: der Klammer-Tippfehler-Backlink aus dem Health-Check vom 03.08.2026 ist
   behoben.** `kispi-behoerden-zustaendigkeitswechsel-1171-26.md`, Zeile 6, `links:`-Feld
   zeigt jetzt korrekt `[[sbb-naeherbaurecht-thalwil-2414-vordach]]` (zwei Klammern statt
   drei); die Zieldatei existiert und die Rückverlinkung ist bidirektional intakt. Bereits
   von Wissens-Chef Run 43 (25.08.2026) selbst erledigt und protokolliert — hier nur
   unabhängig gegengeprüft.
2. **Das RAW-Ingest-Register ist strukturell veraltet.** `raw/_INGESTED.md` kennt nur zwei
   Einträge (beide KISPI-Mail-Threads), obwohl 12 der 14 Wiki-Artikel aus einem völlig
   anderen, nie im Register erfassten Korpus stammen (`buero-projekte`-Destillation über
   `skills/wissens-destillat/`, Quelldateien direkt unter
   `/Volumes/daten/04_Buero/02_Projekte/...`). Die Coverage-Prüfung nach Schema
   «steht jede raw/-Datei in einem Artikel?» läuft damit an der eigentlichen
   Wissensbasis-Herkunft vorbei.
3. **Promotion-Kandidat: Mahnkaskaden-Muster jetzt zweifach unabhängig belegt.**
   [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (KISPI, 2026) und
   [[eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag]] (EH Europe, 2015/16) sind
   bereits im Text wechselseitig als «gleiche strukturelle Ursache» verlinkt, bleiben aber
   beide `status: emerging`. Der Präzedenzfall [[nerves-2015-kv-nebengewerke-unterschaetzt]]
   wurde exakt bei einem solchen zweiten unabhängigen Beleg auf `established` gehoben
   (Rule 260714, «nie ohne echten Zweitfall heben») — hier liegt derselbe Zweitfall bereits vor.

## Details je Audit

### A. Widersprüche

Keine gefunden. Die KB löst thematische Überlappungen bereits aktiv auf (explizite
«Bezug zu»/«Wo diese Lehre gelandet ist»-Abschnitte, datierte Korrektur-Blöcke mit
Zitat des Wissens-Chef-Runs, der die Korrektur setzte — z. B. die BKP-Korrekturen in
`lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md` oder die Chronologie-Korrektur
in `kispi-behoerden-zustaendigkeitswechsel-1171-26.md`). Keine zwei Artikel behaupten
gegenläufige Tatsachen zum selben Sachverhalt, ohne dass der jüngere den älteren aufnimmt.

### B. Kaputte Backlinks & Orphans

**Kaputte Backlinks: 0.** Alle 58 Vorkommen von `[[...]]` in den 14 Wiki-Artikeln, `INDEX.md`
und `QUESTIONS.md` wurden gegen die vorhandenen Dateinamen geprüft (`grep -no
'\[\[[a-z0-9_.-]*\]\]'` über `wiki/*.md`, danach Abgleich gegen `ls wiki/*.md`). Keine
Diskrepanz. Die drei bewusst KB-übergreifenden Ziele
(`negative-vorwirkung-und-bzo-revision`, `bauausfuehrung-und-baukontrolle`,
`gvz-einreichung-bma-sprinkler` in `wissen/baurecht/` bzw. `wissen/auflagebereinigung/`)
wurden separat verifiziert — alle existieren.

**Orphans: 2.**
- `kispi-lbw-rohdichte-800.md` (established) — nur aus `INDEX.md` verlinkt, kein anderer
  Wiki-Artikel dieser KB zeigt darauf (eigenes `links:`-Feld zeigt nur nach aussen, in
  `wissen/normen` und `wissen/auflagebereinigung`).
- `roethlisberger-geraetepreis-pruefung-273-35.md` (established) — dieselbe Situation,
  `links:` zeigt nur auf `kispi-lbw-rohdichte-800.md`, aber kein Artikel zeigt zurück.

Beide sind thematisch tatsächlich isoliert (QS-Herkunftsfrage bzw. Geräte-Nachtragsprüfung,
kein zweiter Fall im Wiki mit vergleichbarem Muster) — kein Fehler, aber ein Hinweis, dass
diese beiden Artikel bei künftigem KISPI-Material als erste Anlaufstelle für eine
Zweitverlinkung geprüft werden sollten.

**INDEX-Vollständigkeit:** alle 14 Wiki-Artikel sind in `INDEX.md` gelistet (4 Bauleitung/
Ausführung, 6 Kosten & Termine, 3 Behörden & Bewilligungen, 1 Koordination & Kommunikation,
0 Bauen im Betrieb — bekannte, bereits mehrfach dokumentierte Lücke). Keine fehlende
Registrierung.

### C. Unbelegte Claims

Keine materiellen Lücken gefunden. Diese KB ist ungewöhnlich gut belegt: praktisch jede
Zahl trägt einen Dateipfad mit Datum in `sources:`, und Unsicherheiten werden im Artikel
selbst als «Einschränkung» oder «offene Frage» ausgewiesen statt verschwiegen (z. B. der
bewusst nicht übernommene Zuschlags-Erfahrungswert «Faktor 2–4» in
`nerves-2015-kv-nebengewerke-unterschaetzt.md`, oder die als endgültig unauflösbar markierte
Pentagon-Wertdifferenz in `nerves-2015-pentagon-systemwahl-streuung.md`). Stichprobenartig
gegen 3 zentrale Aussagen je Artikel geprüft — keine Aussage ohne Quellenbezug im
`sources:`-Feld oder im Fliesstext gefunden.

### D. RAW-Coverage-Lücken

1. `raw/260729-kispi-rueckweisung-installationsplan-lueftung.md` — Status weiterhin `[ ]
   wartet auf Handkontrolle`, bewusst nicht automatisch weiterverarbeitet (Stufe A
   abgeschlossen, Stufe B/C wartet auf Raphaels Handkontrolle). Kein neuer Befund, nur
   bestätigt unverändert seit 03.08.2026.
2. **Register-Realitäts-Lücke:** `raw/_INGESTED.md` führt ausschliesslich die zwei
   KISPI-Mail-basierten Einträge. Die zwölf übrigen Artikel (alles aus dem Korpus
   `buero-projekte`, destilliert über `skills/wissens-destillat/`) zitieren in ihren
   `sources:`-Feldern direkt Dateien unter `/Volumes/daten/04_Buero/02_Projekte/...` — ein
   Quellbaum, der nie durch `raw/` dieser KB lief und daher auch nie in `_INGESTED.md`
   auftauchen konnte. Das ist kein Fehler des Bibliothekars (die Herkunft ist im
   Wissens-Destillat-Prozess sauber dokumentiert, siehe `KORPUS-QUEUE.md` und die
   ausführlichen CHANGELOG-Einträge), aber es bedeutet: **Audit D in seiner klassischen
   Form («jede raw/-Datei mindestens einmal zitiert?») deckt nur einen kleinen Bruchteil
   der tatsächlichen Quellbasis dieser KB ab.** Empfehlung für einen künftigen Lauf (nicht
   in dieser Phase 1 umgesetzt): entweder das Register um einen Verweis auf die externe
   Quelle (`skills/wissens-destillat/training/buero-projekte-inventar.md`) ergänzen, oder
   in `CLAUDE.md` explizit festhalten, dass diese KB zwei Ingest-Pfade hat (direkter
   `raw/`-Dump UND Wissens-Destillat-Fanout).

### E. Veraltete Artikel

Keine gefunden. Der älteste `last_updated`-Stand ist `kispi-lbw-rohdichte-800.md` mit
2026-07-23 — 33 Tage, deutlich unter der 90-Tage-Schwelle. Die KB ist noch jung (ältester
Artikel gut fünf Wochen alt); ein Veraltungs-Audit greift hier grundsätzlich noch nicht.

### F. Schreibregel-Verstösse

1. **Frontmatter-Schema-Drift.** Die vier ältesten, aus dem Logbuch destillierten Artikel
   (`kispi-lbw-rohdichte-800.md`, `roethlisberger-geraetepreis-pruefung-273-35.md`,
   `sbb-naeherbaurecht-thalwil-2414-vordach.md`,
   `kispi-behoerden-zustaendigkeitswechsel-1171-26.md`, alle Juli 2026) nutzen flache
   Zusatzfelder `gewerk:`, `bkp:`, `sia_phase:`, `betroffene_skills:`. Alle zehn übrigen
   Artikel (ab `kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md`, 03.08.2026)
   nutzen ein verschachteltes `tags:` mit `fokus:`, `bkp:`, `sia_phase:`, `skills:`. Beide
   Schemas transportieren dieselbe Information unter anderem Namen — kein Datenverlust,
   aber zwei parallele Konventionen für dieselbe KB, die `CLAUDE.md` bislang nicht
   dokumentiert.
2. **`INDEX.md`-Statistikzeile veraltet.** «Letzter Health-Check: 2026-07-25» steht dort
   nach wie vor, obwohl seither zwei weitere Health-Checks liefen (03.08. und dieser hier,
   25.08.). Reine Fussnote, aber eine falsche Angabe in einer Datei, die genau solche
   Angaben führen soll.
3. **`links:`-Feld im Frontmatter uneinheitlich formatiert, gleiche Fehlerfamilie wie der
   behobene Klammer-Tippfehler.** In den meisten Artikeln ist `links:` eine reine, mit
   Komma getrennte Liste von `[[backlink]]`-Werten (WISSEN-CLAUDE.md-Konvention). In
   `sbb-naeherbaurecht-thalwil-2414-vordach.md`, Zeile 6, steht dagegen
   `links: [[negative-vorwirkung-und-bzo-revision]] (KB baurecht, führend für das
   Thalwiler Baurecht)` — Freitext-Kommentar direkt im YAML-Wert. Technisch unschädlich
   (kein zusätzliches `[`), aber dieselbe Grundursache, die zum Run-43-Fund führte: das
   `links:`-Feld wird nicht als reine, maschinell prüfbare Backlink-Liste behandelt,
   sondern mit Prosa vermischt. Empfehlung für Phase 2 oder einen künftigen Lauf: Prosa-
   Erläuterungen zu Cross-KB-Zielen in den Fliesstext verschieben, `links:` rein
   maschinenlesbar halten.

Echte Umlaute (ä/ö/ü), kein ß, Schweizer Hochdeutsch, keine Dekosymbole/Emojis: durchgehend
eingehalten in allen 14 Artikeln, `INDEX.md` und `QUESTIONS.md`.

### G. Promotion-Kandidaten

1. **Mahnkaskaden-Muster «fehlende schriftliche Auftragsgrundlage» — bereit für Synthese/
   Promotion.** [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (`emerging`)
   und [[eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag]] (`emerging`) sind im
   jeweils letzten Abschnitt bereits wechselseitig als «gleiche strukturelle Ursache»
   verlinkt und benennen dieselbe generalisierbare Lehre (Auftragsbestätigung **vor**
   Leistungsbeginn statt nachträglicher Eskalation). Der einzige inhaltliche Unterschied:
   bei KISPI diagnostizierte der Automatismus die Ursache nie selbst (Diagnose kam von
   Raphael), bei EH Europe war die Leistung zwar gelobt, aber nie mit einer verbindlichen
   Zahlungszusage verknüpft — zwei Varianten derselben Wurzelursache. Nach demselben
   Massstab wie bei [[nerves-2015-kv-nebengewerke-unterschaetzt]] (Promotion nach echtem
   Zweitfall, Rule 260714) wäre hier entweder (a) einer der beiden Artikel auf
   `established` zu heben mit Verweis auf den zweiten Beleg, oder (b) ein eigener,
   übergeordneter Muster-Artikel «fehlende Auftragsgrundlage → Mahnkaskade» zu erwägen,
   der beide Fälle referenziert. Keine Aktion in dieser Phase 1 — nur als Kandidat
   protokolliert.

Keine weiteren Kandidaten: alle übrigen `emerging`-Artikel sind bewusst Einzelbelege ohne
zweiten unabhängigen Fall (explizit als «Einschränkung» im jeweiligen Artikel vermerkt) und
sollten laut Rule 260714 nicht ohne echten Zweitbeleg gehoben werden.
