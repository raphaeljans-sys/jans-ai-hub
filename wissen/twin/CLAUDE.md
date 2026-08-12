# KB twin — Schema (der digitale Zwilling von Raphael Jans)

## Fokus

Diese Wissensbasis ist das **Gedächtnis des digitalen Zwillings**. Sie hält fest, *wie
Raphael Jans schreibt, denkt, wertet, mit wem wie spricht, was er fachlich kann und wie
er arbeitet* — destilliert aus echten Erzeugnissen, nicht erfunden. Aus ihr wird das
immer-aktive Gehirn `rules/jans-dna.md` kompiliert, und an ihr misst der Agent
`twin-chef`, ob ein Claude-Erzeugnis nach Raphael klingt.

Diese KB ist **kein** Sach-/Domänenwissen (Baurecht, Kosten etc. liegen in den
jeweiligen KBs). Hier steht ausschliesslich **Persönlichkeit & Stil**.

## Die sechs Facetten (je ein Wiki-Artikel)

| Facette | Artikel | Frage |
|---|---|---|
| Stimme/Ton | [[stimme]] | Wie klingt er? |
| Denken/Argumentation | [[denken]] | Wie führt er einen Gedanken? |
| Haltung/Werte | [[haltung]] | Wofür/wogegen steht er? |
| Beziehungsregister | [[beziehungsregister]] | Wie spricht er mit WEM? |
| Fachsignatur | [[fachsignatur]] | Wie webt er Fachwissen ein? |
| Arbeitsweise | [[arbeitsweise]] | Wie strukturiert/delegiert er? |

## Authentizitäts-Gewichtung (Kernregel gegen Modell-Kollaps)

Jede Quelle wird gewichtet, damit der Zwilling nie sein eigenes Echo lernt:

- **GOLD — `authentisch` (vor-Claude):** Erzeugnisse, die Raphael selbst geschrieben hat,
  bevor er mit Claude Mails/Dokumente erstellte (Stichtag ≈ vor 2026-01-01, im Training
  justiert). Höchstes Gewicht. Reine Stimme.
- **SILBER — `korrektur-delta`:** Ein Claude-Erzeugnis, das Raphael nachträglich
  **geändert** hat. Gelernt wird **nur die Änderung** (Twin-Fassung → Raphaels Fassung) —
  sie zeigt, wo der Zwilling daneben lag. Zweitstärkstes Signal.
- **GRAU — `claude-aera` (unbearbeitet):** Von Claude erzeugt und unverändert versendet.
  **NICHT als Stilquelle verwenden** (es wäre das eigene Echo). Nur als Negativ-/Kontroll-
  material zulässig.

Jeder Marker im Wiki trägt seine Quelle UND die Gewichtungsstufe.

**Achtung — AI-Paste vor dem Stichtag (Echo-Falle, belegt Batch 09, 2025-08-30):** Der
Vor-Claude-Stichtag (~2026-01-01) ist NICHT hinreichend. Auch Mails *vor* 2026 können
**verbatim eingefügten KI-Text** (ChatGPT o.ä.) enthalten — belegt: eine Yorck-Mail vom
30.08.2025 mit kopierter Modell-Bezugsquellen-Liste. Erkennungssignale für AI-Paste:
abweichende Schrift/Formatierung im Fliesstext (z.B. Times New Roman statt Aptos),
Überschriften-Listen-Tabellen-Struktur, generische Eröffnung («Hier sind einige
empfehlenswerte …») und Schluss-Floskel («…sag einfach Bescheid!»). Solche Passagen sind
**`claude-aera`-äquivalent → NICHT als Stilquelle verwenden** (Echo-Schutz), auch wenn das
Mail-Datum vor dem Stichtag liegt. Gewichtet wird der von Raphael selbst getippte Text, nicht
das, was er aus einem KI-Tool hineinkopiert hat.

**Achtung — AI-Paste im DOKUMENT-Archiv (neu 01.08.2026, mit dem Dokument-Strang):** Der
Vor-2026-Stichtag schützt den Dokument-Strang **nicht**. Belegt im Archiv-Scan über 377 DOCX:
`AR - 03 Studien/2409 Steinhof/06_Reglemente/_Teilthemen/Gestaltungsplan/` enthält zwei
KI-Antworten aus 2024 als Word-Datei — `ChatGPT_2.docx` (verräterischer Name) und, gefährlicher,
`Um ein Bauprojekt im Rahmen eines Gestaltungsplans in der Stadt Luzern … .docx`, deren Dateiname
nichts anderes ist als der **Prompt-Anfang**. Zwei billige Detektionssignale für diese Gattung:

- **rohes Markdown im Word-Fliesstext** — `**Fett**` als Sternchen statt als Zeichenformat
  (8 bzw. 18 Vorkommen in den beiden Dateien). Wer in Word selbst tippt, benutzt die Fett-Taste;
  Sternchen entstehen nur beim Einfügen aus einem Chat-Fenster.
- **null Guillemets** «…» bei gleichzeitig deutschem Fachtext — Raphael setzt in eigenen
  Dokumenten Guillemets, ein eingefügter Modelltext enthält keine.

Ein Dateiname, der wie ein ganzer Satz oder eine Frage aussieht, ist ein zusätzliches Warnsignal.
Solche Dateien sind `claude-aera`-äquivalent und **nie** Stilquelle.

**Korrektur 03.08.2026 — «null Guillemets» allein verurteilt nichts (belegter Falsch-Positiv).**
Das Sitzungsprotokoll Wädenswil vom 24.08.2023 enthält **null** «…» und stattdessen zweimal „…" —
und ist zweifelsfrei handgetippt (dichte Tippfehler, Kasusfehler, uneinheitliche Grossschreibung
mitten im Satz). Im Kriterienkatalog vom 27.03.2021 stehen dagegen acht Guillemets. Raphaels
Anführungszeichen sind also **nicht** über alle Dokumente konstant. Konsequenz: das
Guillemet-Signal zählt nur noch **in Kombination** mit einem zweiten (rohes `**` im Fliesstext,
prompt-artiger Dateiname, generische Eröffnung); allein genommen wertet es echtes Gold ab.

**Dritte Falle, neu 03.08.2026 — FREMDTEXT im eigenen Dokumentenordner.** Nicht jede
Nicht-Raphael-Datei stammt von einem Modell. `AR - 02 Wettbewerbe/2206 WB Schoental/09 Dokumente/
Text 1_Jury.docx` liest sich dem Namen nach wie «unser Text 1 für die Jury» und enthält
tatsächlich den **Jurybericht-Text zum 1. Rang eines fremden Verfahrens** («Text 1. Rang Brühl»,
Projekt ÉCOLE DE SOLEURE). Im selben Bestand liegen fremde Fachplanertexte unter JANS-eigenen
Textordnern (`08_Publikationen/01 Texte/12 Tragwerk/220223 Tragwerk INGENI.docx`,
`.../11 Brandschutz .../220222_Brandschutztext_Makiol_Wiederkehr.docx`). Drei billige Signale:

- **Dritte-Person-Perspektive auf das eigene Projekt** — «gelingt es den Projektverfassern»,
  «das Projekt überzeugt»: eine Jury spricht so, der Verfasser nie.
- **Trennstriche mitten im Wort** («Kin- dergärten», «Zu- gangswege», «abgetrennt- en») — der
  Text wurde aus einem **PDF** kopiert und ist damit fremder Satz, nicht eigene Eingabe.
- **fremde Projektnamen/Kennwörter** im Fliesstext, die nicht zum Projekt des Ordners gehören.

Fremdtext ist keine Echo-Gefahr, aber genauso disqualifiziert: er ist schlicht **nicht Raphaels
Stimme**. Vor jeder Verwendung als Gold prüfen, **wer spricht**, nicht nur **ob ein Modell
gesprochen hat**.

**Vierte Falle, neu 04.08.2026 — zwei Hände in EINEM Dokument, die fremde erkennbar an der
Fehlerfreiheit.** Der Wettbewerbs-Abgabeplan «PATIO IM PIANO NOBILE» (Muttenz, Februar 2022)
trägt Raphaels Blöcke (LEKTÜRE DES GEVIERTS · STÄDTEBAU · FREIRAUM · FASSADE) mit mehreren
Tippfehlern pro Absatz («grossmässtäbliche», «Stappelung», «hetrogene», «bewust», «perlekettige»,
«Strauchplfanzung», «zeitemässe») — und daneben, auf demselben Blatt, die **fehlerfreien**
Fachplanerspalten (STATIK & KONSTRUKTION · BRANDSCHUTZ · ENERGIE & NACHHALTIGKEIT · RAUMAKUSTIK
& SCHALLSCHUTZ) von Statiker und Brandschutzingenieur, die im Projekt auch als eigene DOCX
liegen. Diese Gattung trägt **keines** der bisherigen Signale: kein rohes `**`, kein
Trennstrich aus PDF-Copy, keine Dritte-Person-Sicht, kein fremder Projektname. Ihr einziges
Kennzeichen ist **auffällige Sauberkeit im Umfeld auffälliger Rohheit**, dazu fremdes
Fachvokabular in fremder Satzmelodie («Entfluchtungstreppenhäuser», «die Geschosse als
Nutzungseinheit klassieren», «Konzertbestuhlung»).

Das dreht die Heuristik um: Fehlerfreiheit galt bisher als Indiz für Maschinentext, hier ist sie
das Indiz für den Fachplaner. **Konsequenz: die Fehlerdichte je Block vergleichen, nicht das
Dokument als Ganzes beurteilen.** Ein Dokument kann gleichzeitig Gold und Fremdtext enthalten;
gewichtet wird nur der Block, der Raphaels Fehlerbild trägt. Ohne diesen Schritt wären im
Fidelity-Lauf 260804 vier Fachplanertexte als Raphaels Fachsignatur ins Wiki gewandert.

**Fuenfte Falle, neu 07.08.2026 — der Kontrollgruppen-Kontrast im ENGLISCHEN, und ein geprueftes,
verworfenes Signal.** Batch 89 hat die Kontrollgruppen-Quote als Echo-Detektion eingefuehrt (En-Strich
0/598 eigener Hand gegen 3/179 im Verdachtstext). Der Fidelity-Lauf 260807 liefert den bislang engsten
Fall: **derselbe Tag, derselbe Empfaenger, dasselbe Projekt, 3,5 Stunden Abstand.**

- 15.04.2026 **06:06**, eigene Hand: «I would like to finish as soon as possible the **webside** so
  please confirm you working on it now … **till to the end** of next week, if possible sooner If it is
  possible … **i** would be happy. Kind regards raphael» — ein Lauf-Satz, fehlendes Satzende, zwei
  Fehlschreibungen desselben Worts, Empfaengername verschrieben.
- 15.04.2026 **09:40:41**, an dieselbe Adresse: «Please find attached the spacing PDF for Project Page
  Type A. I have adopted Claudia's spacing for this layout and will now use this template to lay out the
  5 projects.» — null Fehler, idiomatisch, Betreff mit En-Strich «Project Page A – Spacing».
- 15.04.2026 **09:40:58** (17 Sekunden spaeter, gleicher Anhang), die deutsche Zwillingsfassung: ebenso
  fehlerfrei, «Anbei das Spacing-PDF fuer den Projektseitentyp A …».

Das Paar ist **KI-assistiert** und wurde nicht als Stilquelle verwendet. Die belastbaren Signale sind
hier **Fehlerdichte gegen die gleichzeitige eigene Hand** + En-Strich + idiomatische Fehlerfreiheit im
Englischen. Wo ein Verdachtstext in einem dicht belegten Tagesfenster liegt, ist der Vergleich mit den
Eigentexten **desselben Tages** schaerfer als jeder Vergleich mit dem Korpusmittel.

**Verworfen: «du/dich klein geschrieben» taugt NICHT als Detektor.** Die deutsche Fassung des Paars
schreibt «dich/deiner/dir» dreimal klein, was zunaechst wie ein billiges Signal aussieht (Du-Gross-Quote
im Korpus 0.81–1.0). Gegenprobe aus derselben Woche, unstrittig handgetippt (16.04.2026 12:36, Zweizeiler
an den Bauherrenvertreter): «kannst **Du** mir die Unternehmer welche fuer **dich** nicht mehr in Frage
kommen streichen» — gross und klein **im selben Satz**. Das Signal ist damit erledigt; es zaehlt allenfalls
in Kombination und nie fuer sich. Gleiche Lehre wie beim Guillemet-Falsch-Positiv vom 03.08.2026: **ein
Signal, das echtes Gold abwerten kann, muss vor der Aufnahme gegen die eigene Hand gegengeprueft werden.**

**Sechste Falle, neu 13.08.2026 — der Echo-Detektor ist jetzt mechanisch: `Anthropic Sans` im
HTML.** Die bisherigen Signale (En-/Em-Strich, Fehlerdichte, idiomatische Glätte, CSS
`rgb(253,253,252)`) sind Indizien und brauchen eine Gegenprobe. Der Fidelity-Lauf 260813 hat den
Beweis dafür gefunden, dass es auch eindeutig geht: die Submissions-Anfrage vom 19.05.2026 15:31
trägt im Mail-HTML

```
font-family:"Anthropic Sans",system-ui,"Segoe UI",Roboto,Helvetica,Arial,sans-serif
```

Diese Schriftliste stammt aus der Claude-Oberfläche und überlebt Copy-Paste in Outlook. **Wo sie
steht, ist der Absatz Claude-Text — ohne jede Auslegung.** Der Text sah als Goldprobe unauffällig
aus (Ausgangslage/Frage-Gliederung, korrektes Fachvokabular RF3/EN 13501-1) und wäre ohne das
CSS-Signal in die Facetten gewandert; die weichen Signale hätten ihn ebenfalls gefasst (Em-Strich,
null Tippfehler), aber erst nach längerer Prüfung.

**Vor jeder Destillation greppen — in dieser Reihenfolge, alle drei sind harte Ausschlüsse:**

| Muster | Bedeutung |
|---|---|
| `Anthropic Sans` | Claude-Oberfläche, Copy-Paste |
| `rgb(253,253,252)` | dieselbe Herkunft (Erstbeleg 17.04.2026, zweiter 08.05., dritter 19.05.) |
| `class="text-body"` | dieselbe Herkunft (Erstbeleg 17.04.2026) |

Der Grep läuft auf dem **HTML-Body** (`body.content`), nicht auf `bodyPreview` — die Vorschau ist
reiner Text und zeigt keines der drei Muster. Wer über Apple Mail / osascript destilliert, sieht
sie ebenfalls nicht und muss bei den weichen Signalen bleiben.

## Schreibregeln für dieses Wiki

- Artikel-Frontmatter gemäss `WISSEN-CLAUDE.md` (title/status/last_updated/sources/links),
  plus Zusatzfeld `gewichtung: [authentisch|korrektur-delta|gemischt]`.
- Jeder Stil-Marker wird **belegt** (Quelle in `sources`, Beispiel-Schnipsel anonymisiert:
  Empfängernamen → Rolle, z.B. «Investor-Du», «vertrauter Planer»). Keine vertraulichen
  Mandatsinhalte im Klartext.
- Marker sind **operationalisierbar** formuliert (was konkret tun / lassen), nicht vage.
- Widersprüche zwischen Facetten nicht glätten, sondern in [[QUESTIONS]] vermerken; der
  `twin-chef` löst sie kontextabhängig auf.
- **Belegdaten neu immer als `TT.MM.JJJJ`** schreiben. Der Bestand ist gemischt (Stand
  31.07.2026: 708 Belege `TT.MM.JJJJ`, 529 Belege ISO `JJJJ-MM-TT`) — **wer nach einem Beleg
  sucht, muss deshalb IMMER beide Formate greppen.** Belegter Schaden: im Fidelity-Lauf
  260731 ergab `grep -F "14.12.2025" wiki/` null Treffer, obwohl fünf Markerzeilen zu genau
  dieser Mail als `2025-12-14` im Wiki standen; die Blindfassung wurde deshalb ohne die
  vorhandenen Marker geschrieben. Ein Retrieval-Fehler, kein Wissenslücken-Befund.
- **Ein Datums-Grep allein beweist keine Lücke (neu 04.08.2026, Batch 86).** Viele Marker zitieren
  ihre Quelle **nur über die Batchnummer** («belegt Mailbatch 36») und tragen gar kein Datum — für
  einen Tages-Grep sind sie unsichtbar, in **beiden** Formaten. Belegter Schaden: der in Batch 84/85
  eingeführte Tagesabgleich meldete den 20.03.2026 mit null Belegen, dort liegt aber das vollständig
  destillierte Korrektur-Delta der Sandro-Mauchle-Mail (`stimme` 1555–1566, `haltung` 480–487,
  `arbeitsweise` 1104–1107). **Reihenfolge bei jedem Lücken-Sweep: (1) Batch-Register
  `raw/_INGESTED.md` nach Datumsbereichen auswerten, (2) Tages-Grep nur innerhalb eines dort als
  dünn erkannten Fensters, (3) Marker-Kandidaten einzeln greppen.** Wer bei (2) beginnt,
  destilliert Vorhandenes ein zweites Mal und lässt einen Einzelbeleg wie zwei aussehen.
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß (`umlaute-konvention.md`).

## Quellen

- E-Mail-Ausgänge rj@ + mail@raphaeljans.ch (Sent Items/Archive), via M365-Connector.
- Reale JANS-Dokumente/Studien aus dem Archiv und `30 JANS AI HUB OUTPUT/`.
- Korrektur-Deltas, die der `twin-chef` beim Gate erfasst.

## Loops

- `twin-mail-training` (täglich) destilliert neue Marker hierher; CHANGELOG führen.
- `twin-fidelity-review` (**täglich**, Registry-Stand 03.08.2026: cron `40 5 * * *`) scort,
  validiert Facetten gegeneinander, hängt Fragen an [[QUESTIONS]] und stösst die
  Neukompilierung von `rules/jans-dna.md` an. *(Berichtigt Wissens-Chef Run 23: hier stand
  «alle 2 Tage».)*
- Health-Check: Skill `wissenscheck` auditiert auch diese KB.

**Kontext-Kosten dieser KB.** Was hier wächst, wird über `skills/twin/tools/build_dna.py` in
`rules/jans-dna.md` kompiliert und lädt damit in **jede** Session — die Facetten-Artikel sind
also nicht nur Wissen, sondern Grundkontext-Budget. Geführt und gemessen wird dieses Budget in
`wissen/claude-code/wiki/kontext-architektur.md`. Vor einer grösseren Erweiterung einer Facette
dort nachsehen, wie der Stand ist.
*(Erst-Verlinkung Wissens-Chef Run 23, 03.08.2026: die KB, die die grösste Datei des
Grundkontexts erzeugt, kannte die KB nicht, die dieses Budget führt.)*

## Sync

Kanonisch auf dem NAS (`sync-kanonische-quelle.md`). Nur hier editieren, dann committen.
