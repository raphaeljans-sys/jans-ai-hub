# Fidelity-Review 2026-07-13 (Achtlauf, Suffix h)

**Modus:** Selbsttest (Scheduled Task `twin-fidelity-review`, VOLLGAS-Endlos-Runner)
**Vorherige Läufe heute:** a bis g (Fidelity zuletzt 92–95, KB sehr reif). Ziel dieses
Laufs: keine weitere Redundanz, sondern ein noch nicht triangeliertes Register/eine
dünnere Kombination greifen.

## Strategie (abweichend von a–g)

Die sequentielle Sent-Items-Sichtung (Batches 01–44) deckt bereits 2025-07-04 bis
2026-05-13 lückenlos ab. Statt das Fenster stur weiter nach vorne zu schieben, wurde
gezielt INNERHALB bereits abgedeckter Zeitfenster nach noch nicht einzeln zitierten
Mails gesucht — Fokus auf zwei Register-Typen, die im Wiki dünn/unbelegt waren:
(1) Plural-Sie-Anrede an eine kleine, rein männliche Empfängergruppe ohne Fliesstext,
(2) kalter Telefon-Nachfass-Erstkontakt OHNE Referral-Aufhänger (Kontrast zur bereits
gut belegten Familien-Referral-Kaltakquise Würsch/Batch 42).

Zugriff: M365-CLI (`@pnp/cli-microsoft365`, Certificate-Auth über `.env` +
`~/.cli-m365-cert-combined.pem`) — in dieser Session verfügbar (anders als in
mehreren Vorläufen, die auf Apple-Mail-osascript oder Cowork-Connector auswichen).

## Goldproben (authentisch, vor-Claude, verifiziert)

1. **Pendenzenliste** an Benjamin Kübler (Gruner) + Albin Spahic (KISPI), 17.04.2026
   10:37 Uhr. Attachment-Transmittal ohne Fliesstext, Anrede **«Geschätzte Herren,»**.
   Bereits in einem chronologisch abgedeckten Fenster (Batch 41), aber diese konkrete
   Mail war im Wiki nicht zitiert.
2. **Gewerke/Empfehlung** an Besnik/fsgbau, 21.05.2026 14:11 Uhr. «Geschätzter Besnik,
   Kannst Du mir Bitte mitteilen wie viele Gewerke Du Offerieren kannst …» — Du-Register,
   Binnen-Gross-Slips. Bestätigt bereits belegtes Besnik-Du-Mapping (Batch 35–37), kein
   neuer Marker, dient als Kontrollprobe.
3. **KontaktaufnahmeAlbertstrasse 7 Zürich** an Keisenhut (visionapartments.com),
   22.05.2026 07:04 Uhr, cc Roman Steinmann (Nova Property). «Sehr geehrter Herr
   Keisenhut / Ich habe Sie versucht telefonisch zu erreichen. Könnten Sie mich
   zurückrufen … Besten Dank für Ihre Bemühungen.» Neuer, unbelegter Fund.
4. Gegengelesen, aber NICHT neu verwertet (bereits Wiki-zitiert, Zirkelschluss
   vermieden): Würsch-Küchenanfrage 17.04. (Familien-Referral) und Hottinger-
   Kurzmail 17.04. («Hat sich die Angelegenheit erledigt?») — beide bereits in
   `beziehungsregister.md` Zeile 836ff (Batch 42) verbatim referenziert.

Echo-Check: keine der drei genutzten Volltexte zeigt AI-Paste-Merkmale (kein Aptos/
Times-New-Roman-Bruch, keine Struktur-/Bullet-Prosa, konsistente Alltagssyntax inkl.
Binnen-Gross-Slip bei Besnik) — Gewichtung **authentisch**.

## Twin-Fassungen (erzeugt NUR aus den sechs Facetten-Wikis, ohne vorherigen Blick
auf die Goldprobe)

**A) Kaltakquise-Telefon-Nachfass (Keisenhut):**
> Sehr geehrter Herr Keisenhut, ich habe versucht, Sie telefonisch zu erreichen.
> Könnten Sie mich zurückrufen, damit wir gemeinsam einen für Sie passenden
> Besichtigungstermin für die Liegenschaft Albertstrasse 7 vereinbaren können? Besten
> Dank im Voraus. Freundliche Grüsse, Raphael Jans

**B) Pendenzenliste (Kübler+Spahic):**
> Geschätzte Damen und Herren, im Anhang die Pendenzenliste mit der Bitte um
> Umsetzung. Freundliche Grüsse, Raphael Jans

**C) Gewerke-Anfrage (Besnik):**
> Geschätzter Besnik, kannst Du mir bitte mitteilen, wie viele Gewerke Du anbieten
> kannst, und ob Du mir Unternehmer empfehlen kannst, die an der Submission Interesse
> hätten? Freundliche Grüsse, Raphael Jans

## Scoring je Facette (0–100)

| Goldprobe | Stimme | Denken | Haltung | Beziehung | Fachsignatur | Arbeitsweise |
|---|---|---|---|---|---|---|
| A Keisenhut | 82 | 92 | 90 | 75 | 90 (n/a) | 80 |
| B Pendenzenliste | 88 | 90 | 90 | 68 | 90 (n/a) | 88 |
| C Besnik | 90 | 90 | 90 | 95 | 88 | 90 |
| **Mittel** | **87** | **91** | **90** | **79** | **89** | **86** |

**Gesamt-Fidelity dieser Runde: ≈ 87** (bewusst unter dem 92–95-Niveau der letzten
Läufe — Ergebnis der gezielten Wahl eines dünneren Registers, nicht ein genereller
Rückschritt der KB).

## Konkrete Drift-Punkte (mit Beleg)

1. **Cc-Auftraggeber-Reflex fehlte bei Kaltakquise (grösster Fund, Beziehung 75/68).**
   Twin-Fassung A hat keinen cc gesetzt; das Original geht cc an Roman Steinmann
   (Nova/Auftraggeber), obwohl inhaltlich nicht nötig. Ursache: das Wiki kannte den
   Cc-Transparenz-Reflex bisher nur für Devis-/Vergabe-Situationen
   (`arbeitsweise.md`, «Offertenanfrage als Sachwalter-Choreografie mit
   cc-Bauherrschaft», Batch 28/30), nicht für die allererste, triviale
   Kontaktaufnahme. → behoben, siehe unten.
2. **«Geschätzte Herren» als eigene Kollektivform fehlte (Beziehung 68 in B).** Der
   Twin griff zur bekannteren, aber falschen Analogform «Geschätzte Damen und
   Herren» — im Original steht die knappere «Geschätzte Herren» (kein Frauenanteil
   im Verteiler). Das Wiki kannte «Geschätztes Projektteam»/«Geschätzte Herren des
   Vorstands» als Kollektivanreden, aber nicht diese Zwei-Wort-Minimalform für kleine
   reine Männer-Sie-Gruppen. → behoben, siehe unten.
3. **Dankesformel-Feinheit «für Ihre Bemühungen» vs. «im Voraus» (Stimme 82).** Der
   Twin griff zur generischen Standardformel; das Original nutzt die spezifischere,
   vorausschauend-wärmere Variante, die eine aktive Handlung (Rückruf) würdigt. Als
   offene Frage (Nr. 3, Runde 260713h) markiert statt sofort verallgemeinert — zu
   dünn belegt (1 Beleg) für einen harten Wiki-Marker, aber gut für die
   Fragen-Queue.

## Gegenseitige Facetten-Validierung (Schritt 3)

Kein neuer Widerspruch zwischen den sechs Facetten-Artikeln gefunden. Die heutige
Ergänzung (Cc-Reflex bei Kaltakquise) erweitert präzise ein bereits etabliertes,
konsistentes Muster (cc-Transparenz bei Vergabe/Devis) auf einen neuen Anwendungsfall,
ohne es zu widerlegen. Keine neue Spannung in QUESTIONS.md zu vermerken — alle
sieben vorherigen Läufe (a–g) sind mit `status: established` und `last_updated:
2026-07-13` konsistent; nach acht Läufen am selben Tag zeigt sich keine
Oszillation, nur zunehmende Verfeinerung an den Rändern (dünnere Register).

## Änderungen an der KB

- `wiki/beziehungsregister.md`: zwei neue Abschnitte — «Geschätzte Herren — Plural-
  Sie-Anrede an eine kleine gemischte Männer-Sie-Gruppe» und «Kaltakquise-Telefon-
  Nachfass: Rückruf-Bitte + Auftraggeber-Transparenz-Cc».
- `wiki/arbeitsweise.md`: ein neuer Abschnitt — «Cc-Transparenz-Reflex gilt schon bei
  der ersten Kontaktaufnahme, nicht erst bei Devis/Rechnung».
- `wiki/QUESTIONS.md`: neue Sektion «Offen — Runde 260713h» mit 4 Fragen (Cc-Reflex-
  Reichweite, Frauenanteil-Schwelle bei «Geschätzte Herren», Dankesformel-Bedingung,
  Anlass-Explizierungspflicht bei Kaltkontakt).
- `raw/_INGESTED.md`: Registereintrag für die drei genutzten Goldproben ergänzt
  (kein neuer durchnummerierter Batch, da innerhalb bereits abgedeckter Fenster —
  Sequential-Sweep-Marker bei 2026-05-13 15:14 unverändert gültig).

## Empfehlung

- Gehirn `rules/jans-dna.md` wurde neu kompiliert (Facetten-Wikis inhaltlich
  geändert — siehe Commit-Hinweis).
- Nächster Lauf: entweder den Sequential-Sweep ab 2026-05-13 15:14 fortsetzen (reines
  Neuland, kein Zirkelschluss-Risiko mehr) ODER gezielt die vier neuen Fragen dieser
  Runde beantworten lassen (schnellster Hebel, da bereits sehr konkret). Die
  Gap-Suche-Strategie dieses Laufs (dünne Register statt stures Vorwärtsschieben)
  hat sich bewährt und sollte bei künftigen Läufen mit hoher Batch-Dichte
  wiederholt werden, bevor auf reine Chronologie zurückgegriffen wird.
