# Wissens-Health-Check: twin — 2026-07-22

Erster Wissenscheck ueberhaupt fuer diese KB (bisher nie auditiert, obwohl taeglich per
Fidelity-Selbsttest und Facetten-Agenten gepflegt). Nachtschicht Mac Mini, Phase 1 (Audit
+ Report, unbeaufsichtigt, keine Aktionen). Wegen der Groesse der sechs Facetten-Artikel
(35-183 KB je Datei) erfolgte die Pruefung ueberwiegend strukturell/grep-gestuetzt statt
per Volltext-Lektuere jedes Artikels — Budget-Vorgabe der Nachtschicht (~3.5 USD).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 neu (1 bereits dokumentierte Spannung weiterhin sauber gefuehrt) |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims | 0 (Stichprobe; Sourcing-Disziplin durchgehend hoch) |
| D RAW-Coverage-Luecken | 1 (schwerwiegend: 33/60 registrierte Quellen fehlen physisch) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 (ae/oe/ue statt Umlaut in praktisch jedem Artikel; ß-Reste) |
| G Promotion-Kandidaten | 1 (INDEX.md stale) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **RAW-Coverage-Integritaet (Audit D):** Von den 60 im Register `raw/_INGESTED.md`
   gefuehrten Quelldateien liegen nur noch 26 (43 %) physisch in `raw/`. 33 fehlen —
   darunter `260722-mailbatch-45.md`, das HEUTE (22.07.) als Quelle in vier der sechs
   Facetten-Artikel (stimme, beziehungsregister, fachsignatur, arbeitsweise) zitiert wird.
   Die frischesten Aktualisierungen der KB stuetzen sich damit auf Quellmaterial, das nicht
   mehr nachpruefbar auf der Platte liegt. Alle 26 vorhandenen Dateien sind sauber im
   Register erfasst und im Wiki zitiert (0 verwaiste raw-Dateien) — das Problem liegt
   ausschliesslich beim Verschwinden bereits registrierter Dateien, nicht bei fehlender
   Registrierung. Ursache ungeklaert (Absicht/Archivierung nach Verarbeitung? Sync-/
   NAS-Selfcommit-Verlust? Versehentliches Aufraeumen?) — nirgends im CHANGELOG dokumentiert.
   Braucht einen dedizierten Lauf (Git-Historie je Datei pruefen, ggf. aus einem frueheren
   Commit wiederherstellen oder die Praxis "nach Ingestion loeschen" bewusst einfuehren und
   dokumentieren) — nicht Teil dieses Nachtschicht-Budgets.
2. **Schreibregel-Verstoesse (Audit F):** Die Analyseprosa (nicht die woertlichen Zitate —
   die sind korrekt) verwendet durchgaengig `ae/oe/ue` statt echter Umlaute: 292× in
   QUESTIONS.md, 111× stimme.md, 75× arbeitsweise.md, 63× fachsignatur.md, 59×
   beziehungsregister.md, 46× haltung.md, 22× denken.md (grobe Zaehlung, Eigennamen wie
   "Raphael" bereits herausgefiltert). Dazu vereinzelte `ß` statt `ss` (7× stimme.md, 1×
   beziehungsregister.md). Verstoss gegen Rule `umlaute-konvention.md` — pikant gerade bei
   der KB, aus der `rules/jans-dna.md` (das immer-aktive Gehirn mit Umlaut-Pflicht)
   kompiliert wird.
3. **INDEX.md stale (Audit G):** `wiki/INDEX.md` fuehrt alle sechs Facetten als *emerging*,
   waehrend jeder Artikel im eigenen Frontmatter seit mehreren Wochen `status: established`
   traegt. Reiner Nachfuehrungs-Rueckstand, kein Substanzproblem.

## Details je Audit

### A. Widersprueche
- Keine neuen Widersprueche zwischen den sechs Facetten-Artikeln gefunden (kein
  Volltext-Diff moeglich im Budget; Pruefung ueber bereits erfasste Spannungen in
  QUESTIONS.md).
- Die einzige seit 260609 vermerkte Facetten-Spannung («Du-immer-gross» normativ vs.
  authentisches kleines «du»/«Lgr» im Schnellregister) ist weiterhin sauber mit expliziter
  Arbeits-Aufloesung des `twin-chef` dokumentiert (Norm gilt, Abweichung nur als
  Echtheits-Marker) — kein erneutes Flaggen noetig.

### B. Kaputte Backlinks & Orphans
- **`wiki/QUESTIONS.md:1238`** verlinkt `[[260607-kispi-korpus]]` — das ist eine
  `raw/`-Datei, kein Wiki-Artikel. Die Verlinkungskonvention (`[[Name]]` = Wiki-Artikel)
  wird hier verletzt; entweder in Klartext-Erwaehnung aendern oder die Konvention explizit
  auf raw-Referenzen ausweiten.
- **`wiki/arbeitsweise.md` Frontmatter** (`links:`) verlinkt auf sich selbst: `[[denken]],
  [[arbeitsweise]]` statt vermutlich einen anderen Facetten-Artikel (die anderen fuenf
  Artikel verlinken je auf zwei ANDERE Facetten). Wirkt wie ein Copy-Paste-Fehler.
- Keine Orphans: alle sechs Facetten-Artikel sind wechselseitig verlinkt (je 6-7
  eingehende Verweise), keiner steht ausserhalb des INDEX.

### C. Unbelegte Claims
- Stichprobe der Frontmatter-`sources`-Felder aller sechs Artikel zeigt durchgehend
  konkrete, granulare Quellenangaben (einzelne Mailbatches + Fidelity-Reports je Marker,
  teils mit Wochentag-genauer Zuordnung). Keine unbelegten Zentralaussagen in der
  Stichprobe gefunden — die Sourcing-Disziplin dieser KB ist ungewoehnlich hoch.
- Einschraenkend: die Verifizierbarkeit dieser Quellenangaben ist durch Finding D1 (fehlende
  raw-Dateien) faktisch eingeschraenkt, auch wenn die Zitate selbst korrekt aussehen.

### D. RAW-Coverage
- Siehe Top-1. Zusatzbefund: exakt 0 physisch vorhandene raw/-Dateien sind unregistriert
  oder unzitiert — das Register selbst ist sauber gefuehrt, nur der Bestand auf der Platte
  ist luecken haft gegenueber dem Register.
- Kurioses Detail am Rande: die Batch-Nummer 45 taucht im Register zweimal mit
  unterschiedlichem Datum auf (`260713-mailbatch-45.md` und `260722-mailbatch-45.md`) —
  vermutlich eine Nummerierungs-Doppelvergabe zwischen den beiden parallel laufenden
  Trainingssträngen (Dauerschicht MacBook / synced Batches). Kein akuter Schaden, aber ein
  Hinweis auf fehlende Nummernkoordination zwischen den Stationen.

### E. Veraltete Artikel
- Keine. Alle sechs Facetten-Artikel wurden zwischen 19.07. und 22.07.2026 zuletzt
  aktualisiert — deutlich innerhalb der 90-Tage-Schwelle, und angesichts der taeglichen
  Trainingslaeufe ohnehin durchgehend frisch gehalten.

### F. Schreibregel-Verstoesse
- Siehe Top-2. Betroffen: praktisch die gesamte Analyseprosa in allen sechs Artikeln plus
  QUESTIONS.md. Nicht betroffen: die woertlichen Zitate aus echten Mails (die zeigen
  durchgehend korrekte echte Umlaute, wie es sich fuer Belegmaterial gehoert) — der
  Verstoss liegt ausschliesslich in den vom Twin-Agenten selbst verfassten
  Ueberschriften/Erlaeuterungen.
- Frontmatter-Vollstaendigkeit: einwandfrei (title/status/last_updated/gewichtung/sources/
  links in allen sechs Artikeln vorhanden).
- Keine dekorativen Symbole/Emojis in der Analyseprosa selbst gefunden; vereinzelte
  Emoji-Zeichen in `beziehungsregister.md`, `haltung.md`, `stimme.md`, `QUESTIONS.md` sind
  Bestandteil zitierter Mail-Passagen (Beleg fuer «Emoji im warm-sozialen Register»), keine
  eigene Regelverletzung.

### G. Promotion-Kandidaten
- Siehe Top-3: `INDEX.md` auf `established` fuer alle sechs Facetten nachfuehren.
- Keine offenen QUESTIONS-Eintraege identifiziert, die durch neueres Wiki-Material bereits
  stillschweigend beantwortet, aber nicht ins «Beantwortet»-Kapitel verschoben wurden
  (Stichprobe; keine Vollpruefung aller 43 Abschnitte im Budget moeglich).

## Nicht geprueft (Budget-Grenze, fuer naechsten Lauf)

- Volltext-Widerspruchspruefung (Audit A) zwischen den sechs 35-183 KB grossen Artikeln.
- Vollstaendige Beleg-Pruefung aller QUESTIONS-Abschnitte auf stillschweigend beantwortete
  Punkte (Audit G).
- Root-Cause der fehlenden 33 raw-Dateien (Git-Historie je Datei) — separater Lauf.
