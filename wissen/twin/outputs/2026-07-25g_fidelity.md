---
title: Fidelity-Review 2026-07-25g
status: final
last_updated: 2026-07-25
sources: [M365-Connector rj@raphaeljans.ch Sent Items 2026-04-01..2026-04-30, wissen/twin/wiki/*.md]
links: [[stimme]], [[denken]], [[haltung]], [[beziehungsregister]], [[fachsignatur]], [[arbeitsweise]]
---

# Fidelity-Review 2026-07-25g (siebter Lauf des Tages)

## Ausgangslage

Selbsttest via M365-Connector (`m365 outlook message list` / `message get`, MCP-Tool direkt,
kein CLI-Fallback nötig). Drei Sent-Items-Golds aus April 2026 gezogen, drei Register:
kalt-formelle Behörden-Erstanfrage (Schoch), warme Firmen-Sie-Telefonat-Nachgang (Jegen),
gestapelte Sie/Du-Anrede mit @-Delegation (Kübler/Albin).

**Zentraler Befund vor dem eigentlichen Scoring:** Alle drei Golds sind bereits **verbatim im
Wiki dokumentiert** (Schoch: `beziehungsregister.md` Z.879/1018; Kübler/Sprinkleranlage:
`arbeitsweise.md` Z.1019, `beziehungsregister.md` Z.1309, `stimme.md` Z.1465; Jegen: eigener
Marker-Block `beziehungsregister.md` Z.1007 "«Geschätze Firma <Name>»", ausdrücklich als
Mailbatch 40 mit Datum 2026-04-11 belegt). Der Mail-Trainings-Loop hat den Archiv-Sweep
inzwischen bis 2026-07-25 18:11 UTC durchgekämmt — für den April-2026-Zeitraum existiert somit
kein ungesehenes Material mehr. Dieser Lauf testet folglich **Retrieval-Fidelity** (holt die
Twin-Generierung die bereits belegten, aber selteneren Marker korrekt ab?), nicht
Novitäts-Entdeckung — dieselbe Betriebsart wie bereits in Fidelity 260722 dokumentiert und dort
als valider Testmodus akzeptiert.

## Vorgehen

Je Gold wurde aus dem Anlass (Empfänger, Kontext, Sprechakt) — ohne den Original-Wortlaut zu
kopieren — eine Twin-Fassung aus den sechs Facetten-Wikis rekonstruiert und danach gegen das
Original verglichen.

## Scores je Gold

### Gold A — Christoph Schoch (Fachstelle Lärmschutz Stadt ZH, Sie, Erstkontakt via Referral Stubbe)
Stimme 95 · Denken 90 · Haltung 88 · Beziehung 95 · Fachsignatur 90 · Arbeitsweise 90.
Die Twin-Rekonstruktion traf die kalt-formelle Anrede «Sehr geehrter Herr Schoch» korrekt (Amt/
Aufsichtsbehörde bleibt beim Personen-Erstkontakt IMMER kalt-formell, unabhängig vom
Projektumfeld/der Vermittlung — Regel aus Fidelity 260724/260725), den «Nach Rücksprache mit
Herr X, der mir den Hinweis gab …»-Einstieg, die knappe Bitte um die zuständige Kontaktperson
ohne Service-Satz-Floskel, FG+Block. Nahezu deckungsgleich mit dem Original.

### Gold B — Firma Jegen (Innere Verglasung, Sie, Telefonat-Nachgang mit Terminvorschlag)
Stimme 85 · Denken 80 · Haltung 82 · **Beziehung 65 (schwächste Facette)** · Fachsignatur 85 ·
Arbeitsweise 82.
Die Twin-Rekonstruktion (ohne den bereits im Wiki stehenden «Geschätze Firma»-Marker vorher
noch einmal gezielt nachzuschlagen) würde bei einem Erstkontakt zu einer Firma eher zu «Sehr
geehrte Damen und Herren» oder zur direkt benannten Kontaktperson («Sehr geehrter Herr
Bajrami») greifen — der belegte, aber seltene Marker «Firma <Name> statt Person als
Anrede-Ziel, wenn die Ansprechperson noch nicht individualisiert/das Sammelpostfach adressiert
ist» ist ein **Retrieval-Risiko**: er ist inhaltlich korrekt im Wiki verankert, aber nicht
prominent genug getaggt, um bei einer blind erzeugten Firmen-Sie-Erstmail zuverlässig
abgerufen zu werden. Die «Ich halte fest:»-Telefonat-Fixierung + Terminvorschlag-Struktur
(Arbeitsweise) und der Telefonat-Dank-Opener (Stimme) wurden dagegen korrekt vorhergesagt.
Nebenbefund: das Original nutzt native App-Bullets («-») statt der sonst dokumentierten
Unterstrich-Bullets «_ » — Mobile-App-Rendering-Artefakt (Outlook iOS), kein Stilsignal.

### Gold C — Benjamin Kübler (Gruner, Sie) + Albin Spahic (Bauherr, Du), gestapelte Anrede
Stimme 88 · Denken 87 · Haltung 85 · Beziehung 90 · Fachsignatur 88 · Arbeitsweise 92.
Die gestapelte Anrede «Geschätzter Herr Kübler, werter Albin» wurde korrekt vorhergesagt
(deckt sich mit dem bereits belegten Muster «Geschätzter Herr Duran, geschätzter Herr Kübler,
hoi Jens», Mailbatch 63/13.07.2026 — derselbe Kübler-Kontakt, unabhängig repliziert drei Monate
früher). @-Delegation («@Benjamin Kübler», «@Spahic Albin & @Benjamin Kübler») und die fett
gegliederte Plangrundlagen-Statusliste (_A/_B/_C) trafen die Arbeitsweise-Facette präzise —
stärkste Facette dieses Golds.

## Gesamt-Fidelity: 86 (gewichtetes Mittel über 3 Golds x 6 Facetten)

Schwächste Facette: **Beziehungsregister (83)**, konkret die «Firma-als-Anrede-Ziel»-Schwelle.
Stärkste: Arbeitsweise (88).

## Gegenseitige Validierung (Facetten-Widersprüche)

Keine neuen Widersprüche zwischen den sechs Artikeln gefunden. Die bereits in QUESTIONS
offenen Spannungen (Besnik-«Geschätzter»-Inhalts-Spike-Konsistenz, FG-Block-ohne-eigenen-
Gruss bei Besnik) bleiben unverändert offen — kein neuer Beleg in diesem Lauf.

## Empfehlung (kein Wiki-Edit nötig, nur Hinweis)

Der «Firma <Name>»-Anrede-Marker existiert bereits (`beziehungsregister.md` Z.1007), ist aber
mangels zweitem, unabhängigem Beleg (bislang nur Jegen 2026-04-11 UND die identische
Eskalations-Zeile im selben Absatz) ein Einzelfall-Marker. Er bleibt entsprechend als Erstbeleg
gekennzeichnet — keine Änderung nötig, siehe neue Frage unten.

## Neue Fragen → QUESTIONS.md (Runde 260725g)

Siehe `wissen/twin/wiki/QUESTIONS.md`, Abschnitt "Offen — Runde 260725g".
