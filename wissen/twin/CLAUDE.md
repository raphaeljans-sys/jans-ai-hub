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
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß (`umlaute-konvention.md`).

## Quellen

- E-Mail-Ausgänge rj@ + mail@raphaeljans.ch (Sent Items/Archive), via M365-Connector.
- Reale JANS-Dokumente/Studien aus dem Archiv und `30 JANS AI HUB OUTPUT/`.
- Korrektur-Deltas, die der `twin-chef` beim Gate erfasst.

## Loops

- `twin-mail-training` (täglich) destilliert neue Marker hierher; CHANGELOG führen.
- `twin-fidelity-review` (alle 2 Tage) scort, validiert Facetten gegeneinander, hängt
  Fragen an [[QUESTIONS]] und stösst die Neukompilierung von `rules/jans-dna.md` an.
- Health-Check: Skill `wissenscheck` auditiert auch diese KB.

## Sync

Kanonisch auf dem NAS (`sync-kanonische-quelle.md`). Nur hier editieren, dann committen.
