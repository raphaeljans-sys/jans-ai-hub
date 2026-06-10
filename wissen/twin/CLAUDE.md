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

## Schreibregeln für dieses Wiki

- Artikel-Frontmatter gemäss `WISSEN-CLAUDE.md` (title/status/last_updated/sources/links),
  plus Zusatzfeld `gewichtung: [authentisch|korrektur-delta|gemischt]`.
- Jeder Stil-Marker wird **belegt** (Quelle in `sources`, Beispiel-Schnipsel anonymisiert:
  Empfängernamen → Rolle, z.B. «Investor-Du», «vertrauter Planer»). Keine vertraulichen
  Mandatsinhalte im Klartext.
- Marker sind **operationalisierbar** formuliert (was konkret tun / lassen), nicht vage.
- Widersprüche zwischen Facetten nicht glätten, sondern in [[QUESTIONS]] vermerken; der
  `twin-chef` löst sie kontextabhängig auf.
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
