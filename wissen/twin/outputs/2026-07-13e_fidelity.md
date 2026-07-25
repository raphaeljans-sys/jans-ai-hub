---
title: Twin Fidelity-Review 2026-07-13 (Fünftlauf, wir/ich-Feinschliff aus dem Raw-Korpus)
typ: fidelity-review
gewichtung: mess-signal
gold: [260607-behoerden-korpus.md, 260607-kispi-korpus.md, arbeitsweise.md-Wartstrasse-8-Beleg]
---

# Fidelity-Review 2026-07-13e (twin-chef, Fünftlauf)

## Kontext / Abgrenzung zu den Vorläufen
Fünfter Fidelity-Lauf des Tages (nach 260713/260713b/260713c/260713d, Fidelity 93/94/95/92).
**Apple Mail (Bundle-ID `com.apple.mail`) war in dieser Session durchgehend nicht erreichbar** —
jede AppleScript-Abfrage (auch nur `count of messages`, `get name of mailbox`) lief in einen
AppleEvent-Timeout (-1712), vermutlich Ressourcen-Konflikt mit den parallel laufenden
VOLLGAS-Endlos-Loops derselben Station (Regel 260712c). Der M365-MCP-Connector war ebenfalls
nicht verbunden (kein `mcp__c5e16058-…`). Statt eines frischen Live-Pulls wurde dieser Lauf
daher auf dem bereits **im Wiki hinterlegten, vom Benutzer authentisch bestätigten Rohkorpus**
(`wissen/twin/raw/`) durchgeführt — explizit erlaubte Golddaten (Gewichtung `authentisch`),
kein Live-Zugriff nötig für eine Kreuz-Synthese zwischen bereits gezogenen Quellen.

## Gesamt-Fidelity: 94 / 100

| Facette | Score | Bemerkung |
|---|---|---|
| Stimme | 94 | Keine neue Drift; Höflichkeitsformeln («Darf ich Sie bitten») weiterhin deckungsgleich |
| Denken | 95 | Konditionale/Spielraum-Logik unverändert stabil, kein neuer Fund |
| Haltung | 90 | **Echter neuer Fund:** wir/ich mischen sich satzweise INNERHALB derselben wir-erlaubten Mail (siehe unten) — bisherige Regel war binär (ganze Mail wir-erlaubt ja/nein), jetzt satzscharf verfeinert |
| Beziehungsregister | 95 | Bestätigt: Vertrautheit der Behörde ändert am wir/ich-Verhalten nichts (siehe unten) — schliesst die 260713d offen gelassene Frage |
| Fachsignatur | 94 | Kein neuer Fund in diesem Lauf |
| Arbeitsweise | 93 | Wartstrasse-8-Beleg (Ziffern-scharfe Freigabe-Bitte) bereits dokumentiert, jetzt mit Haltungs-Facette verknüpft |

## Selbsttest (Blind-Rekonstruktion gegen die Golds)

**Aufgabe:** eine Mail an eine Baubehörde formulieren, in der (a) das Büro ankündigt, mit
dem Bau beginnen zu wollen, und (b) der Absender um Zustellung eines ausstehenden
Bauentscheids bittet.

**Naiver Twin (VOR diesem Lauf, nur mit der bisherigen binären wir/ich-Regel):** hätte
entweder pauschal auf «wir» umgeschaltet («Wir bitten Sie, uns den Bauentscheid
zuzustellen, damit wir mit der Auflagenbereinigung beginnen können» — zu unpersönlich für
die direkte Bitte) oder pauschal bei «ich» geblieben, wenn die Fachstelle unbekannt war
(fehlendes «wir» für die Büro-Absicht).

**Goldprobe (`260607-behoerden-korpus.md`, Höflich-hartnäckig-Cluster, unbekannte
Fachstelle):** «Gerne würden **wir** mit bauen beginnen. Darf **ich** Sie bitten mir den
Bauentscheid zuzustellen sodass **ich** mit den Auflagebereinigung beginnen kann.»

**Drift:** der naive Twin trifft die satzweise Verb-Trennung (kollektive Absicht = wir,
persönliche Bitte = ich) nicht zuverlässig, weil die bisherige Regel nur auf Mail-Ebene
(ganze Mail wir-erlaubt ja/nein) operationalisiert war, nicht auf Satzebene.

## Drift-Fund (neu, jetzt geschlossen)

**Wir/ich mischen sich satzweise innerhalb derselben wir-erlaubten Mail — dreifach
triangeliert:**
1. **Wartstrasse 8** (Amt, Sie, etabliertes Verfahren, bereits in `arbeitsweise.md`
   dokumentiert, aber ohne Verknüpfung zur Haltungs-Regel): «Darf ich Sie um Freigabe der
   Bedingungen vor Frist Bitten? … **Wir** möchten mit Bauen beginnen.»
2. **KISPI-Bauentscheid** (unbekannte/neue Fachstelle, Sie, `260607-behoerden-korpus.md`):
   «**Gerne würden wir** mit bauen beginnen. Darf **ich** Sie bitten … sodass **ich** …
   beginnen kann.»
3. **KISPI-Honorar-Abgebotsrunde** (Bauherr, Du, `260607-kispi-korpus.md`): «**Ich** denke
   **wir** machen eine Abgebotsrunde …»

Muster: **«wir»** trägt die kollektive Handlung/Absicht des Büros/Projektteams, **«ich»**
bleibt für die direkte persönliche Bitte/Meinung/Anrede an das Gegenüber (Verben *bitten*,
*denke*, *benötige*) — unabhängig davon, ob der Kontakt bekannt oder unbekannt ist. Das
beantwortet zugleich die von 260713d offen gelassene Frage «gilt wir/ich-Regel auch bei
unbekannter Behörde»: **ja, unverändert** — die Vertrautheit der Person ändert nichts,
massgeblich ist Mandatsstatus (Mail insgesamt wir-erlaubt?) UND Satzfunktion (kollektive
Handlung vs. persönliche Anrede).

**Geschärft (haltung.md):** neuer Absatz «Feinschliff — wir/ich mischen sich INNERHALB
derselben wir-erlaubten Mail» direkt nach der bestehenden Mandats-Regel eingefügt, Do/Don't-
Block ergänzt («wir» satzweise auf Büro-/Projekthandlung legen, «ich» für die persönliche
Bitte/Anrede behalten, auch bei unbekannter Behörde).

## Facetten-Kreuzvalidierung (Schritt 3)
Keine neuen Widersprüche. Der Fund verstärkt statt widerspricht der 260713d-Generalisierung
(Mandatsstatus bleibt der Torwächter für «wir» überhaupt) und der Beziehungsregister-Regel
(Anrede-Stufe unabhängig vom wir/ich-Verhalten) — beide Facetten bleiben konsistent
zueinander.

## Hinweis zur Quellenlage dieses Laufs
Kein frischer Live-Pull; Kreuz-Synthese aus bereits vom Benutzer authentisch bestätigtem
Rohmaterial. Empfehlung für den nächsten Lauf: sobald Apple Mail/M365 wieder erreichbar ist,
einen frischen Beleg für die satzweise wir/ich-Trennung an EINEM weiteren, bisher nicht
verwendeten Fall ziehen, um die Triangulation auf vier unabhängige Quellen zu erweitern.

## Nächste Schritte
- Nächster Lauf: frischen Live-Pull versuchen (Apple Mail könnte nach Abklingen der
  VOLLGAS-Parallellast wieder reagieren); vierten Beleg für die satzweise wir/ich-Trennung
  suchen.
- «Nächster Schritt:»-Heading und «finales Go»-Schlussformel (aus 260713d) weiterhin nur mit
  je einem Beleg — noch nicht generalisierungsreif.
