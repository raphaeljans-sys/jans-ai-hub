---
title: Fidelity-Review 2026-07-25h
status: final
last_updated: 2026-07-25
sources: [M365-CLI direkt (m365 outlook message list/get, Zertifikat-Login, rj@raphaeljans.ch, Gesendete Elemente 2026-06-05..2026-06-11), wissen/twin/wiki/*.md]
links: [[stimme]], [[denken]], [[haltung]], [[beziehungsregister]], [[fachsignatur]], [[arbeitsweise]]
---

# Fidelity-Review 2026-07-25h (achter Lauf des Tages)

## Ausgangslage

Der MCP-Server `microsoft-365` steht dem Agenten `twin-chef` nicht direkt als Tool zur Verfügung
(Contract listet nur Read/Write/Edit/Grep/Glob/Bash/Agent). Statt auf den unzuverlässigen Apple-
Mail-Fallback auszuweichen, wurde die zugrundeliegende `m365`-CLI direkt über Bash aufgerufen (im
SSD-Klon `~/Developer/jans-ai-hub`, wo `node_modules/@pnp/cli-microsoft365` lokal installiert ist;
Zertifikat-Login erfolgreich, `m365 status` bestätigt Certificate-Auth). Ordner heisst korrekt
«Gesendete Elemente» (nicht «Sent Items», Ordnername ist deutsch). Drei frische, bisher als Fidelity-
Gold ungenutzte Golds aus einem Fenster gezogen, das im sequenziellen Mail-Trainings-Sweep bereits
destilliert, aber in keinem bisherigen Fidelity-Lauf als Testgold verwendet wurde (05.–11.06.2026),
drei Register: Sanitär-Unternehmer-Sie (Terminbestätigung nach Telefonat), Bauherr-Partner-Du
(finale Plan-Freigabe-Bitte), Behörde-Sie gestapelt (drei Sachbearbeiterinnen, Bauentscheid-Nachfass).

## Vorgehen

Je Gold wurde aus dem Anlass (Empfänger, Kontext, Sprechakt) eine Twin-Rekonstruktion aus den sechs
Facetten-Wikis erstellt, dann gegen das reale Original verglichen (Original wurde für die Analyse
gelesen, die Rekonstruktion stützt sich ausschliesslich auf dokumentierte Marker, nicht auf den
Wortlaut des Originals).

## Scores je Gold

### Gold A — Carlo La Mendola (Ernst Lips AG, Sanitär, Sie, Terminbestätigung nach Ausschreibungsdialog)
Stimme 88 · Denken 85 · Haltung 78 (schwächste Facette) · Beziehung 90 · Fachsignatur 85 ·
Arbeitsweise 88.
Die Twin-Rekonstruktion trifft «Geschätzter Herr La Mendola» (Warming nach erwiderter Wärme des
Gegenübers, bereits belegte Regel) und «Freundliche Grüsse» + vollen Block korrekt. **Drift:** Das
Original trägt «wir» durchgehend, auch im reinen Dank-Satz («Für Ihre Terminbestätigung sind wir
Ihnen dankbar») — die Twin-Rekonstruktion hätte hier nach der bisher dokumentierten satzweisen
wir/ich-Regel («ich» für die persönliche Bitte/den Dank) fälschlich «ich bin Ihnen dankbar» gesetzt.
Neuer Grenzfall-Marker in [[stimme]] ergänzt (nicht in den Do-Block gehoben, da Einzelbeleg).

### Gold B — Stefan Tschopp (Bauherr-Partner, Du, finale Freigabe-Bitte Grundriss/Ansichten/Umgebungsplan)
Stimme 70 (schwächste Facette) · Denken 88 · Haltung 85 · Beziehung 90 · Fachsignatur 85 ·
Arbeitsweise 86.
**Substanzieller Fund:** Die Twin-Rekonstruktion hätte diese Plan-Liefer-Mail nach der bisher
dokumentierten Regel «Plan-/Feedback-Korrektur ohne Geld → Kurzgruss» fälschlich mit «Lieber Gruss»
geschlossen. Das reale Original («Hoi Stefan» + Anhang + «Finale Freigabe für: …» + «Freundliche
Grüsse» + voller Block, wortgleich zweimal an zwei Tagen gesendet) zeigt: eine **finale, alle
Folgedokumente gattierende Freigabe-Bitte** ist kein laufender Korrekturzyklus, sondern ein
Meilenstein — und zieht wie ein Mandatsabschluss auf «Freundliche Grüsse» + vollen Block, trotz
«Hoi»-Opener. Neuer Marker in [[stimme]] ergänzt, präzisiert die Grenze zur bestehenden
Kurzgruss-Regel.

### Gold C — Capkin/Heinrich/Hottinger (Stadt Zürich AfB, Sie gestapelt, Bauentscheid-Nachfass)
Stimme 85 · Denken 82 · Haltung 88 · Beziehung 92 · Fachsignatur 84 · Arbeitsweise 68
(schwächste Facette).
Die gestapelte Anrede «Geschätzte Frau Capkin, Heinrich, Hottinger» (drei Empfängerinnen, ein
Honorativ für alle drei) wurde von der Twin-Rekonstruktion sinngemäss korrekt getroffen (bekanntes
Muster gestapelter Behörden-Anrede). **Drift:** Die Twin-Rekonstruktion hätte die drei sequenziellen
Fragen («Liste zustellen? selbst generierbar? Termin buchen?») nach der harten Regel «eigene
Sequenzfragen an eine Sie-Person werden nummeriert (1./2./3.)» durchnummeriert — das reale Original
reiht sie in EINEM Fliesstext-Satz ohne jede Gliederung. Wichtiger Gegenbeleg zur bisherigen
Nummerierungsregel: die Grenze liegt nicht am Register, sondern daran, ob eine bewusst komponierte
Liste vorliegt oder ein spontaner Ein-Satz-Nachfass. Marker in [[arbeitsweise]] ergänzt, Do-Block
NICHT verändert (Grenzlinie noch unscharf, weiterer Beleg nötig).

## Gesamt-Fidelity: 84 (gewichtetes Mittel über 3 Golds x 6 Facetten)

Schwächste Facetten insgesamt (gleichauf, je 81): **Arbeitsweise** (Über-Generalisierung der
Nummerierungsregel auf spontane Kurz-Nachfässe) und **Stimme** (Gruss-/wir-Grenzfälle bei Gold A/B).
Stärkste: **Beziehungsregister (91)**.

## Gegenseitige Validierung (Facetten-Widersprüche)

Keine neuen Widersprüche zwischen den sechs Artikeln. Die drei Funde dieses Laufs sind alle
**Grenzlinien-Präzisierungen bestehender Regeln** (wir/ich, Kurzgruss/Vollblock, Nummerierung),
keine Kollisionen zwischen Facetten.

## Empfehlungen

1. [[stimme]]: «Finale Freigabe-Antrag als Meilenstein-Gate → Vollblock» als eigenständigen Marker
   verankert (umgesetzt).
2. [[stimme]]: «wir sind Ihnen dankbar» im Terminbestätigungs-Kontext als Grenzfall zur
   wir/ich-Satzregel dokumentiert (umgesetzt, nicht in Do-Block gehoben — Einzelbeleg).
3. [[arbeitsweise]]: Gegenbeleg zur Nummerierungsregel dokumentiert (umgesetzt, Do-Block
   unverändert bis zweiter Beleg vorliegt).

## Neue Fragen → QUESTIONS.md (Runde 260725h)

Siehe `wissen/twin/wiki/QUESTIONS.md`, Abschnitt «Offen — Runde 260725h».
