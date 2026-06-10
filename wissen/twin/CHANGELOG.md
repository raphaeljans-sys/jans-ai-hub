# CHANGELOG — KB twin

Jede Änderung des Bibliothekars/Zwillings, datiert, neueste zuoberst.

## 2026-06-10 — Korrektur-Delta: Gedankenstrich-Verbot (Dokumente + Folien)
- Explizite Vorgabe Raphael (direkt, 10.06.2026): **kein Gedankenstrich (— / –) als
  Stilmittel** in Dokumenten und Praesentationen; nicht durch «-» ersetzen, sondern
  umformulieren (Komma, Doppelpunkt, Punkt, Klammer). In [[stimme]] (Mikro-Stil + Don't)
  erfasst.
- Angewendet: `rules/dokument-layout-standard.md` (Sektion Sprache verschaerft; Sprach-/
  Stilregeln gelten neu explizit auch fuer PPTX) und `agents/dokument.md` (neue Sektion
  «Stil: JANS-Twin» mit Typografie-/Dramaturgie-/Argumentations-/Haltungs-DNA aus den
  sechs Facetten-Wikis; Zustaendigkeit auf Folien/PPTX ausgeweitet).
- Gehirn `rules/jans-dna.md` neu kompiliert (build_dna.py, 6 Facetten).

## 2026-06-09 — Fidelity-Review (twin-chef): Gesamt 84/100
- Selbsttest gegen 3 frische Goldproben (authentisch, vor-Claude; Privatkundin-Sie
  2025-12-01 / Genossenschafts-Bauvorstand-Du 2025-12-14 / vertrauter Bauherr-Du
  2025-11-21); Volltexte via Apple Mail (M365 `read_resource` auf dieser Station
  gesperrt). Report: `outputs/2026-06-09_fidelity.md`.
- Scores: Stimme 82 · Denken 88 · Haltung 90 · Beziehungsregister 74 · Fachsignatur 87 ·
  Arbeitsweise 84.
- Drift eingearbeitet: Gruss folgt MAIL-TYP statt mechanisch der Anrede ([[stimme]],
  [[beziehungsregister]]); Anrede-Mittellage «Guten Tag Frau/Herr <Name>» ergänzt
  ([[beziehungsregister]]); Q&A-Spiegelung wörtlich zitierter Fragen ([[denken]]);
  proaktive Schlusszusage «melde ich mich unverzüglich» ([[arbeitsweise]]).
  Do/Don't-Blöcke aller vier Artikel nachgeführt.
- Facetten-Validierung: Widerspruch Gruss-Kopplung stimme↔beziehungsregister korrigiert;
  Spannung «Du immer gross» vs. Schnellregister-«du»/«Lgr» in QUESTIONS vermerkt.
- twin-fragesteller: 5 neue Fragen (Runde 260609) in QUESTIONS.md.
- Gehirn `rules/jans-dna.md` neu kompiliert (build_dna.py, 6 Facetten).
- Lief parallel zum `twin-mail-training` Batch 01 — Edits jeweils gegen den frischen
  Stand gemerged, keine fremden Änderungen überschrieben.

## 2026-06-09 — twin-mail-training Batch 01: Sent Items 2025-07-04 bis 2025-07-08
- Erster systematischer Sweep (älteste zuerst, Postfach-Start 04.07.2025): 15 Mails
  gesichtet, 5 neu destilliert (`raw/260609-mailbatch-01.md`), 7 MS-Support-Threads
  ignoriert, 2 bereits im Seed. Gewichtung durchgehend **authentisch** (klar vor-Claude).
- Mikro-Metrik (stilmetrik.py, 451 W): Du-Gross-Quote 1.0, Satzlänge ø 19.6 W,
  Gruss-Mapping Du→«Lieber Gruss» / Sie→«Freundliche Grüsse» 2:2 bestätigt; Ellipsen in
  diesem Batch ohne Vorkommen → Marker «sparsam einsetzen» präzisiert.
- [[stimme]]: Morgen-Anrede «Guten Morgen <Vorname>» (2x), «vll.», deutsche Anführung für
  Wortschöpfungen; Flüchtigkeits-DNA (Genus-Slip «Sehr geehrter Frau», Stephan/Stefan) als
  korrektur-Auftrag markiert.
- [[denken]] → **established**: Re-Klassifizierungs-Hebel (50-cm-Gebäudebegriff /
  Umgebungsbauwerk / Attika-vs-2.OG-Privilegierung, 3x belegt) + Behördenentscheide
  kritisch nachprüfen («vll. unrechtmässig», Mittel «kleine Anfrage»).
- [[haltung]]: Anwalt des Bauherrn auch gegen die Behörde — engagiert, aber nur mit
  Einverständnis («Wenn Du möchtest könnte ich …»).
- [[arbeitsweise]]: proaktives Nachfassen («Im Zuge Deiner Anfrage hat mich ein Gedanke
  beschäftigt»), Grundlage vor Urteil (Skizze/Tragwerkvorschlag), Offert-Anfrage mit
  Gliederungs-Skelett (vor-Claude-Wurzel des Skills ausschreibung), 1-Satz-Bestätigung
  mit konkretem Termin.
- [[beziehungsregister]]: Unternehmer-/Lieferanten-Register («im Auftrag der
  Bauherrschaft», voller Rahmen auch bei 1-Satz-Mail), Mapping ergänzt.
- [[fachsignatur]] → **established**: Betreff-Konvention «<Projekt>: Anfrage Offerte
  BKP <Nr.> – <Gewerk>», SIA 118/265 als vorgegebene Rechtsgrundlage, CLT-/Holzbau-
  Vokabular, Baurechts-Detailtiefe im Du-Register.
- Lauf parallel zum `twin-fidelity-review` 260609 (dessen Präzisierungen Gruss/Mail-Typ
  blieben unangetastet). Kein Korrektur-Delta-/Claude-Aera-Material im Batch.

## 2026-06-07 — Behörden-Register nachgezogen (Stadt ZH)
- `raw/260607-behoerden-korpus.md` aus der Stadt-ZH-Korrespondenz (AfB/Kreisarchitektin
  Hottinger, Fachstelle Lärmschutz, Geodaten) erfasst, authentisch.
- [[beziehungsregister]]: Behörden-Register differenziert (bekannt→«Geschätzte/r»,
  unbekannte Fachstelle→«Sehr geehrte/r», Service→«Grüezi», gestapelte Mehrfachanrede),
  Mapping + Do ergänzt.
- [[stimme]]: Behörden-Phrasen («Für Ihre Unterstützung bedanke ich mich bereits im
  Voraus», Bitte mit Begründung, Kurz-Signatur). [[denken]]: Vorabklärung = Sachverhalt +
  geschlossene nummerierte Fragen (deckt sich mit Skill behoerden-vorabklaerung).
- Gehirn `rules/jans-dna.md` neu kompiliert.

## 2026-06-07 — KISPI-Korpus 2619 eingearbeitet (6 Fragen beantwortet)
- `raw/260607-kispi-korpus.md` aus den KISPI-Projektmails 2026 (Albin Spahic u.a.) erfasst,
  vom Benutzer als «wie ich spreche» bestaetigt → Gewichtung authentisch.
- [[beziehungsregister]] auf `established` ausgebaut: Register nach KONTEXT (Hoi/Lieber/
  Geschätzter/Sie), Misch-Register in einer Mail, Start-Mapping der Kontakte.
- [[stimme]] (Sie-Register, «Darf ich Sie bitten», Unterstrich-Bullet, kein Emoji),
  [[haltung]] (hart in der Sache/höflich im Rahmen, Qualitäts-Gatekeeping),
  [[arbeitsweise]] (Länge = Zweck, Delegation) geschärft → alle `established`.
- QUESTIONS Runde 260607: alle 6 Fragen aus dem Korpus belegt beantwortet.
- Gehirn `rules/jans-dna.md` neu kompiliert.

## 2026-06-07 — twin-fragesteller: erste Frage-Runde an Raphael gestellt
- 6 priorisierte Fragen in QUESTIONS.md unter «Aktiv gestellt — Runde 260607» erfasst
  (Sie-Register, Absage-Ton, Honorar-Tonalitaet, Anrede-Schwelle, Kurzmail-vs-Studie,
  Emoji im Du-Register). Warten auf Raphaels Antworten zur Einarbeitung als `authentisch`.

## 2026-06-07 — KB angelegt + Seed-Profil aus 2 Goldproben
- KB-Struktur (raw/ wiki/ outputs/), CLAUDE.md, INDEX, QUESTIONS angelegt.
- Seed-Korpus `raw/260607-seed-korpus-mails.md` aus zwei echten vor-Claude-Mails
  (Investor-Du / vertrauter-Planer-Du) erfasst.
- Sechs Facetten-Artikel erstellt und mit belegten Markern befüllt: stimme, denken,
  haltung, beziehungsregister, fachsignatur, arbeitsweise (alle `gewichtung: authentisch`).
- Status aller Artikel: `emerging` (2 Quellen) — wächst mit jedem Trainingslauf.
