# Wissens-Health-Check: twin — 2026-09-01

## Methode dieses Laufs

Phase 1 (Audit + Report), unbeaufsichtigt-tauglich. Phase 2 (Aktionen) bewusst NICHT
ausgefuehrt (harte Vorgabe des Auftrags, nicht nur weil unbeaufsichtigt).

Basis ist der letzte Health-Check vom **2026-08-03** (`outputs/2026-08-03_health-check.md`),
knapp vier Wochen zuvor. Seither: 26 weitere `raw/`-Batches (Mailbatch 85 bis 111), 26
Fidelity-Reviews, zwei CHANGELOG-Eintraege bereits **heute** von anderen Laeufen
(`twin-fidelity-review`, `twin-mail-training` Batch 111) — dieser Lauf doppelt diese nicht,
sondern prueft den entstandenen Zustand.

Mechanische Vorpruefung: `wissen/tools/wiki-konsistenz.sh twin` (8 Befunde, siehe Audit B) und
`wissen/tools/fehloffen-waechter.py twin` (0 Befunde — dieses Werkzeug prueft QUESTIONS-Eintraege
mit den Formulierungen "noch nicht gelesen/nicht destilliert/noch offen" gegen Destillat-
Frontmatter; die KB `twin` fuehrt QUESTIONS anders — kein falscher Fehlalarm, aber auch kein
Befund aus diesem Werkzeug fuer diese KB-Gattung).

**Grenze dieses Laufs, ausdruecklich benannt:** Bei sechs Facetten-Artikeln mit zusammen 24'176
Zeilen ist kein vollstaendiger Zeile-fuer-Zeile-Neuvergleich moeglich. Gelesen wurden: beide
State-Files vollstaendig (CHANGELOG.md 3020 Zeilen vor diesem Eintrag, `raw/_INGESTED.md`),
`wiki/INDEX.md` vollstaendig, `wiki/QUESTIONS.md` strukturell (alle 75 Rundenkoepfe, gezielte
Volltextabschnitte zu Anrede-Spannungen und offenen Raphael-Entscheiden), die sechs Facetten
gezielt (Frontmatter, die vom Auftrag benannten Verdachtsstellen, mehrere Stichproben-Abschnitte
je Artikel, alle `Gewichtung authentisch`-Stellen zu Batch 109). Audit A stuetzt sich auf die in
QUESTIONS.md bereits registrierten Spannungen plus eigene Gegenpruefung gegen `rules/anrede-
kontakte.md` und `rules/jans-dna.md`, nicht auf einen vollstaendigen paarweisen Neuvergleich
aller sechs Artikel. Ein A-Wert unten heisst damit "keine neue, unregistrierte Spannung
gefunden", nicht "bewiesen widerspruchsfrei".

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 2 (beide bereits registriert und eskaliert, keine neuen) |
| B Kaputte Backlinks/Orphans | 8 (3 Grundursachen) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 3 (2 seit 03.08.2026 unveraendert offen, 1 neu: Frontmatter-Datum) |
| G Promotion-/Ruecklauf-Kandidaten | 1 gross (Nivellier-Zeile-Entscheid), 1 Grooming |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Die Nivellier-Zeile in `rules/anrede-kontakte.md` steht seit 17 Tagen unwidersprochen
   gegen den Korpus — inzwischen 11+ unabhaengige Gegenbelege, null dafuer.** Die Rule ist ein
   @-Import und wirkt in jeder Session; der Zwilling nivelliert bei Sammelmails weiterhin, obwohl
   das Facetten-Wiki seit dem 15.08.2026 belegt zeigt, dass Raphael jede Person einzeln in ihrer
   eigenen Stufe anredet. Der Entscheid liegt bei Raphael, nicht bei Claude (Rule-Aenderung an
   dieser Datei ist an seine Freigabe gebunden).
2. **Ein ß-Verstoss in eigener Bibliothekar-Prosa ist seit dem 03.08.2026 unveraendert offen**
   ("nicht nach der bloßen Rolle", `wiki/beziehungsregister.md` Z. 1414) — bereits im letzten
   Health-Check als Top-Befund gemeldet, seither nicht korrigiert.
3. **Der tote Backlink `[[260830-mailbatch-109]]` steckt identisch in allen sechs Facetten-
   Artikeln** — eine einzelne Destillationsrunde (Batch 109, 30.08.2026) hat die Quellenzeile
   "Quelle: [[260830-mailbatch-109]], 9 Golds, Gewichtung `authentisch`." wortgleich sechsmal
   gesetzt und dabei eine Wikilink-Klammer um einen `raw/`-Dateinamen gelegt, statt ihn wie sonst
   ueberall in der KB als Klartext zu zitieren.

## Details je Audit

### A. Widersprueche

Keine neue, unregistrierte Spannung gefunden. Zwei bereits bekannte Spannungen sind weiterhin
offen und werden hier nur mit Alter/Belegstand nachgefuehrt (Audit-A-Konvention: registrierte
Spannungen separat fuehren, nicht als "Widerspruch" neu zaehlen):

1. **Nivellier-Zeile vs. gestaffelte Einzelanrede.** `rules/anrede-kontakte.md` verlangt bei
   mehreren Empfaengern "die hoeflichste Anrede, sofern nicht alle per Du sind". Der Korpus zeigt
   seit `wiki/QUESTIONS.md` Runde 260815 (#4) das Gegenteil und hat den Gegenbeleg seither in
   fast jeder Runde verdichtet: 260816 #1 (2. Beleg), 260817 #7 (4. Beleg), 260818 #1 (5. Beleg),
   260825b (9. Beleg), 260826 (10. Beleg), 260827 (11. Beleg) — **null Gegenbelege in die andere
   Richtung**. Die Rule selbst traegt seit dem 15.08. den Vermerk "gilt als Hinweis, nicht als
   Regel" und wartet auf Raphaels Entscheid; heute (Batch 111) kam ein zwoelfter, zeitlich
   fruehester Beleg (02.04.2026) dazu. Sauber als offene Frage gefuehrt, nicht als stiller
   Widerspruch — aber die Haltezeit (17 Tage bei diesem Belegstand) ist auffaellig lang fuer eine
   Frage, die eine immer aktive Rule betrifft.
2. **"Persoenliches Treffen hebt das Register" vs. Gegenbeleg Stadelmann.** `rules/anrede-
   kontakte.md` fuehrt die Klausel seit dem 21.08.2026 explizit als unbestaetigt
   (`[[QUESTIONS]]` 260821 #1) und nennt den Gegenbeleg Stadelmann (22.07.2026, Telefonat ohne
   Registerwechsel) direkt daneben. Auch hier: sauber markiert, Entscheid Raphaels offen, kein
   Handlungsbedarf fuer diesen Lauf ausser der Nennung.

Der alte ESKALIERT-Banner ganz oben in `wiki/QUESTIONS.md` (Wissens-Chef Run 17, 27.07.2026,
Besnik-Anrede + Felix-Staehlin-Firma) betrifft **beide Punkte laengst Geloestes**: die
Gewicht-des-Anliegens-Klausel wurde am 29.07.2026 in `rules/anrede-kontakte.md` freigegeben, die
Stählin-Frage ist im selben Banner als beantwortet vermerkt. Kein Widerspruch mehr, aber der
Banner steht immer noch ganz oben in der Datei und wirkt beim ersten Lesen wie eine offene
Eskalation — siehe Audit G.

### B. Kaputte Backlinks / Orphans / Frontmatter

`wiki-konsistenz.sh twin` meldet 8 Befunde, mechanisch bestaetigt, alle auf 3 Grundursachen
zurueckfuehrbar (alle drei Zieldateien EXISTIEREN in `raw/` — keine fehlende oder umbenannte
Datei, siehe Praezisierung unten):

1. **`[[260830-mailbatch-109]]` in allen sechs Facetten-Artikeln** (`stimme.md` Z. 4723,
   `denken.md` Z. 1281, `haltung.md` Z. 1672, `beziehungsregister.md` Z. 3506,
   `fachsignatur.md` Z. 2743, `arbeitsweise.md` Z. 3760). `raw/260830-mailbatch-109.md`
   existiert unveraendert unter genau diesem Namen. Das Problem ist Syntax, nicht Bestand: die
   KB zitiert `raw/`-Quellen ueberall sonst als Klartext im Fliesstext oder im `sources:`-Feld
   des Frontmatters (Beispiel im selben Artikel: "Quelle: 21.05.2026, `claude-aera`-äquivalent")
   — hier wurde stattdessen die Wikilink-Klammer `[[…]]` verwendet, die laut `WISSEN-CLAUDE.md`
   ausschliesslich fuer Ziele in `wiki/` vorgesehen ist. `wiki-konsistenz.sh` schliesst `raw/`
   bewusst aus dem Zielraum aus (eigener Kommentar im Script: "dort liegen Quell-Dumps, keine
   Ziele") — das ist korrektes Verhalten des Pruefwerkzeugs, nicht ein Fehlalarm.
2. **`[[260607-kispi-korpus]]` in `wiki/QUESTIONS.md`** (Z. 2176, Ueberschrift einer laengst
   beantworteten Runde von Anfang Juni). `raw/260607-kispi-korpus.md` existiert. Gleicher
   Fehlertyp wie oben, aber **bereits im Health-Check vom 03.08.2026 als Top-Befund gemeldet**
   und seither unveraendert — dieser eine Link ist seit mindestens vier Wochen offen und
   ungenutzt liegen geblieben, obwohl er trivial zu beheben waere (Klammern entfernen oder durch
   Klartext ersetzen).
3. **`[[_INGESTED]]` in `wiki/arbeitsweise.md`** — Selbstverweis auf `raw/_INGESTED.md`, gleiche
   Fehlerfamilie, neu seit dem letzten Check.

**Vorschlag (fuer eine kuenftige Phase-2-Session, hier nicht ausgefuehrt):** an allen 8 Stellen
die Klammern `[[ ]]` entfernen und durch die im Rest der KB uebliche Klartext-Zitierform
ersetzen ("Quelle: 260830-mailbatch-109.md" statt "Quelle: [[260830-mailbatch-109]]"). Kein
Inhalt geht dabei verloren, nur die falsche Verlinksyntax.

Keine Orphans gefunden: alle sechs Facetten-Artikel sind im `INDEX.md` registriert und werden
gegenseitig sowie aus `QUESTIONS.md` heraus verlinkt.

### C. Unbelegte Claims

Keine Findings. Stichprobe (statt Vollpruefung, wie im Auftrag vorgesehen):

- **Batch-109-Gewichtung geprueft:** Alle sechs "Quelle: [[260830-mailbatch-109]] … Gewichtung
  `authentisch`"-Stellen wurden gegen das Frontmatter der Quelldatei gehalten
  (`raw/260830-mailbatch-109.md`: `gewichtung: authentisch`). Deckt sich; die Datei begruendet
  die Einstufung zusaetzlich ausfuehrlich (warum vor-2026-Apple-Mail-Entwuerfe trotz der
  spaeteren Kanal-Regel authentisch sind). Kein unbelegter Claim.
- **Echo-Schutz-Stichprobe (vom Auftrag verlangt):** Der heutige Eintrag in `wiki/stimme.md`
  Z. 4910–4932 ("Widerspruch, markiert statt geglättet, Batch 111") zeigt die Disziplin, die
  diese KB fuer den Echo-Schutz erwartet: ein Marker aus einer englischen Mail wird trotz
  formaler Aehnlichkeit zu einem Vor-Claude-Gold explizit **quarantaeniert** (nicht gelernt),
  mit vier benannten Gruenden (Kontrollgruppen-Quote, AI-Paste-Floskel laut `CLAUDE.md`-Katalog,
  Registerkontrast zum selben Empfaenger 20 Tage frueher, Widerspruch zur stehenden
  Gedankenstrich-Vorgabe) und einem offenen Ruecklauf an `[[QUESTIONS]]` 260901 #1. Erste
  Recherche des Pruefers fand das Wort selbst nicht (Gross-/Kleinschreibungs-Fehler im eigenen
  Grep: "Quarant" statt "quarant") — nach Korrektur bestaetigt: der im CHANGELOG behauptete
  Eingriff ist tatsaechlich im Artikel vorhanden, an der behaupteten Stelle, mit dem behaupteten
  Inhalt. Kein Echo-Schutz-Verstoss, im Gegenteil ein Positivbeispiel.
- Alle sechs Facetten-Artikel tragen vollstaendiges Frontmatter (`title`, `status`,
  `last_updated`, `sources`, `links`) — von `wiki-konsistenz.sh` bestaetigt (kein
  "Frontmatter ohne …"-Befund fuer `twin`).

### D. RAW-Coverage

47 Dateien in `raw/` (inkl. `_INGESTED.md`), 46 Quelldateien zu pruefen. Stichprobenartige
Volltextsuche nach jedem Dateinamen fand zwei scheinbare Luecken, die sich bei Gegenpruefung
beide als Fehlalarm des eigenen (zu strengen) Suchmusters erwiesen:

- `260828-mailbatch-107`: wird in allen sechs Facetten-Artikeln als "Batch 107" zitiert
  (Textform statt Dateiname) — mehrfach mit Datum 27.08.2026, u.a. eigene Abschnittsueberschriften
  in `arbeitsweise.md`, `beziehungsregister.md`, `denken.md`, `fachsignatur.md`, `haltung.md`.
  Vollstaendig eingearbeitet.
- `260901-mailbatch-111` (heutiger Batch): nur eine Fundstelle in `wiki/stimme.md`
  (Quarantaene-Vermerk). Laut CHANGELOG-Eintrag von heute beabsichtigt so: der Batch ueberschnitt
  sich mit dem Fenster des `twin-fidelity-review` vom Vortag und wurde bewusst "nicht gedoppelt,
  sondern gegengelesen" — die uebrigen vier Kernbefunde sind laut CHANGELOG bereits an anderer
  Stelle destilliert. Keine Luecke, sondern dokumentierte Redundanzvermeidung.

`raw/_INGESTED.md` fuehrt beide Batches korrekt mit `eingearbeitet: ja`. Kein Coverage-Finding.

### E. Veraltete Artikel

0. Alle sechs Facetten-Artikel tragen `last_updated: 2026-08-31`, also einen Tag vor diesem
   Check. Bei einer KB mit taeglichem Trainings- und Fidelity-Loop ist "veraltet" strukturell
   kein Thema, solange die Loops laufen.

### F. Schreibregel-Verstoesse

Zwei Befunde, **beide bereits im Health-Check vom 03.08.2026 gemeldet und seither unveraendert**:

1. **Ein echter ß-Verstoss in eigener Bibliothekar-Prosa**, nicht in einem Korpus-Zitat:
   `wiki/beziehungsregister.md` Z. 1414 "…die Trennlinie verläuft nach
   Vertrautheit/Zusammenarbeitsdauer, nicht nach der bloßen Rolle «Fachplaner vs. Handwerker»."
   Der Satz ist eine zusammenfassende Analyse des Bibliothekars (kein Anfuehrungszeichen, kein
   Quellenverweis auf eine konkrete Mail direkt daneben), verstoesst also gegen
   `umlaute-konvention.md` (ss statt ß). **Abgrenzung, wie im letzten Check schon festgehalten:**
   an zwei weiteren Stellen im selben Artikel (Z. 1062, Z. 1100) steht korrekt "blossen" — der
   Bibliothekar schreibt also mehrheitlich richtig, dieser eine Satz ist ein Ausreisser, kein
   systematisches Muster.
2. **Deko-Symbole `✅` in `wiki/QUESTIONS.md`** — jetzt 6 Vorkommen (03.08.2026: 3). QUESTIONS.md
   ist eine Arbeitsdatei (Status-Markierung "beantwortet"), der Regelverstoss ist damit ein
   Grenzfall wie beim letzten Mal, aber die Zahl hat sich seither verdoppelt statt abgenommen.

Beide Befunde sind trivial zu beheben (ein Wort, sechs Symbole), liegen aber seit vier Wochen
unangefasst — vermutlich, weil kein Lauf seither ausdruecklich als Phase-2-Session mit
Schreibkorrektur-Auftrag lief.

3. **`last_updated` aller sechs Facetten-Artikel ist einen Tag hinter dem tatsaechlichen
   Bearbeitungsstand.** Frontmatter traegt durchgehend `last_updated: 2026-08-31`, obwohl heute
   (01.09.2026) sowohl der `twin-fidelity-review` (neue "Fidelity 260901"-Abschnitte in allen
   sechs Artikeln) als auch `twin-mail-training` Batch 111 (Quarantaene-Vermerk in `stimme.md`)
   Inhalt ergaenzt haben. Kein inhaltlicher Fehler, aber das Feld verfehlt seinen Zweck (Audit E
   stuetzt sich auf `last_updated`, um Veralterung zu erkennen) — solange es dem Body
   hinterherhinkt, meldet Audit E systematisch zu juenge Artikel als aelter, als sie sind.

### G. Promotion-/Ruecklauf-Kandidaten

1. **Der Nivellier-Zeile-Entscheid ist der reifste offene Punkt der ganzen KB und gehoert an
   die Spitze von Raphaels naechster Durchsicht.** Belegstand: 11+ unabhaengige Korpus-Belege
   seit dem 15.08.2026, null Gegenbelege, ein konkreter Ersatzwortlaut liegt seit derselben Runde
   unveraendert vor ("Jede Person wird einzeln angeredet, in ihrer eigenen Stufe; nivelliert
   wird nur bei grossen oder unbekannten Verteilern."). Die KB kann diesen Punkt nicht selbst
   schliessen (Rule-Aenderung an `rules/anrede-kontakte.md` ist an Raphaels Freigabe gebunden,
   `wissens-bibliothekar.md` verbietet Destruktives ohne Rueckfrage ohnehin) — er wartet auf eine
   einzige Leseentscheidung.
2. **Grooming-Kandidat, kein inhaltlicher Fehler:** Der ESKALIERT-Banner ganz oben in
   `wiki/QUESTIONS.md` (Runde vom 27.07.2026) behandelt zwei laengst entschiedene Fragen
   (Gewicht-des-Anliegens-Klausel, Firma Felix Stählin) und steht dennoch an der prominentesten
   Stelle der Datei — noch vor der ersten inhaltlichen Ueberschrift. Fuer eine kuenftige Phase-2-
   Session: den Banner als "erledigt, archiviert am …" kennzeichnen oder ans Dateiende
   verschieben, damit die naechste Lesung nicht erneut pruefen muss, ob hier noch etwas offen
   ist. Kein Loeschen (Rule 260811, append-only), nur Umsortierung/Kennzeichnung.

Alle sechs Facetten-Artikel tragen `status: established` — kein Promotion-Bedarf auf
Artikelebene, die Reife liegt im Umgang mit einzelnen offenen Fragen, nicht im Gesamtstatus.

---

*Phase 2 (Aktionen) nicht ausgefuehrt, gemaess Auftrag. Fuer die Umsetzung eines Befundes:
interaktive Session mit Skill `wissenscheck` und dem KB-Namen `twin`.*
