---
title: Twin Fidelity-Review 2026-07-13 (Sechstlauf, Signatur-Automatik-Artefakt Desktop)
typ: fidelity-review
gewichtung: mess-signal
gold: [live Apple-Mail-Pull 13.07.2026: Nachrichten 950/960/975/980/985/990/1000/1005/1010 aus "Gesendete Elemente" (Exchange rj@raphaeljans.ch)]
---

# Fidelity-Review 2026-07-13f (twin-chef, Sechstlauf)

## Kontext / Abgrenzung zu den Vorläufen
Sechster Fidelity-Lauf des Tages (nach 260713/b/c/d/e, Fidelity 93/94/95/92/94). Im Unterschied
zu Lauf e war Apple Mail (Bundle-ID `com.apple.mail`) in dieser Session sofort erreichbar
(kein AppleEvent-Timeout) — der M365-MCP-Connector dagegen weiterhin nicht nutzbar
(`m365_search_commands` meldet fehlendes npm-Paket). Es konnte deshalb ein **frischer
Live-Pull** aus dem Postfach `Exchange` (rj@raphaeljans.ch), Mailbox «Gesendete Elemente»
(1'280 Nachrichten, neueste zuerst) durchgeführt werden — gezielt im Fenster Oktober/November
2025 (klar vor-Claude, `authentisch`), ein bisher nicht als Mailbatch verschriftlichter
Zeitraum zwischen den bereits archivierten Batches.

## Gesamt-Fidelity: 94 / 100

| Facette | Score | Bemerkung |
|---|---|---|
| Stimme | 92 | **Echter neuer Fund:** Doppel-Signoff-Automatik gilt nicht nur mobil (bereits dokumentiert), sondern auch am Desktop — bisherige Regel war zu eng gefasst |
| Denken | 95 | Kein neuer Fund; konditionale Logik weiterhin stabil |
| Haltung | 95 | Bestätigend: reine Verfahrens-/Ich-Sie-Mail (Baugespann-Anfrage) ohne jedes «wir», konsistent mit bestehender Regel (kein etablierter institutioneller Auftritt hier, reine Einzelanfrage) |
| Beziehungsregister | 94 | Kein neuer Fund; Anrede-Register (Hoi/Geschätzter/Sehr geehrte) deckungsgleich mit Gold |
| Fachsignatur | 94 | Näherbaurecht-/Grenzabstand-Vokabular (Vordach-Faden Stefan Tschopp) korrekt, kein neuer Fund |
| Arbeitsweise | 93 | Bestätigt bereits dokumentierten «5cm-Terrain»-Ehrlichkeits-Marker an einer weiteren, bisher nur teilweise zitierten Stelle |

## Selbsttest (Blind-Rekonstruktion gegen die Golds)

**Aufgabe:** eine kurze Du-Antwort an einen eingespielten Projektpartner formulieren, die (a)
eine offene technische Frage klärt (Höhenkoten) und (b) eine eigene, möglicherweise ungenaue
Annahme transparent einräumt.

**Naiver Twin (VOR diesem Lauf, nur mit der bisherigen «im Zweifel Freundliche Grüsse + Block»-
Regel, Zeile 298f. `stimme.md`):** hätte bei einer Geschäfts-/Projektmail im Zweifel den vollen
«Freundliche Grüsse»-Block angehängt — auch bei einer sehr kurzen, hochfrequenten technischen
Klärungsantwort im selben Faden.

**Goldprobe** (Stefan Tschopp, 13.11.2025, technische Höhenkoten-Klärung mit Ehrlichkeits-
Nebenzeile «Vielleicht habe ich da das Terrain 5cm in Richtung Baurecht geschoben….»): schliesst
mit **«Lgr»**, KEIN Signatur-Block folgt.

**Drift:** der naive Twin würde in diesem konkreten Fall vermutlich einen vollen Block anhängen,
weil die bisherige Regel «im Zweifel Geschäft/Projekt → FG+Block» keine Ausnahme für die sehr
kurze, technische Reply-im-selben-Faden vorsah. Die Goldprobe zeigt: die abgekürzte Form
«Lgr»/«lgr» korreliert nicht nur mit dem Ton (bereits bekannt), sondern auch mit dem
**Fehlen** des Automatik-Blocks — ein zusätzliches, bisher unklares Signal.

## Drift-Fund (neu, jetzt geschärft)

**Doppel-Signoff-Automatik gilt auch am Desktop, nicht nur mobil — dreifach triangeliert
(Live-Pull, authentisch):**

1. **York/Materialbibliothek** (24.11.2025, Du, C4D-Bitte): «Lieber Gruss / Raphael» + darunter
   automatisch der volle «Freundliche Grüsse»-Block.
2. **Christoph Bopp/Teilungsplan** (11.11.2025, Du, Liefermail): «Bester Gruss / Raphael» +
   darunter automatisch der volle Block.
3. **Ralph Mueller/Terminfindung** (10.11.2025, Du, kurze Terminantwort): «Lieber Gruss /
   Raphael» + darunter automatisch der volle Block.

**Gegenprobe (vierter, komplementärer Beleg):** Stefan Tschopp/Höhenkoten (13.11.2025, Du,
technische Kurzantwort im selben Projektfaden): «Lgr», **kein** Block folgt — die Mail endet
direkt vor dem Zitat-Trenner.

Bisher stand in `stimme.md` (Zeile 349-354, «Doppel-Signoff = Mobile-Artefakt») dieses Muster
nur für die **mobile** Signatur dokumentiert. Der Live-Pull zeigt: dieselbe Verdopplung passiert
identisch am **Desktop** (Outlook), sobald Raphael den vollen, ausgeschriebenen Handgruss
(«Lieber/Bester Gruss» + Name) tippt — die Outlook-Signatur-Automatik hängt dann unabhängig
davon den Block an. Nur bei der **abgekürzten** Form («Lgr») bleibt der Block aus (vermutlich
weil für diese Antwort keine neue Signatur eingefügt wurde — ein Compose-Artefakt, kein
bewusster Stilentscheid).

**Geschärft (stimme.md):** Abschnitt «Doppel-Signoff» umbenannt in «Signatur-Automatik (Mobile
UND Desktop)», die drei Desktop-Belege + die Lgr-Gegenprobe ergänzt, und eine explizite
**Methodik-Warnung** angehängt: künftige Korpus-Analysen sollen, bevor sie «schliesst mit
Freundliche Grüsse + Block» als eigenständiges Stilsignal werten, prüfen, ob nicht nur die
Automatik lief und das eigentliche Signal im davorstehenden handgetippten Wort liegt. Das ist
kein neuer Verhaltens-Fund, sondern ein **Mess-Artefakt-Fund** — er stützt die bereits gezogene
Zwilling-Regel («immer nur EINEN Gruss produzieren»), erklärt aber zusätzlich, warum Rohtext-
Belege in den Mailbatches teils zwei Grüsse zeigen, ohne dass Raphael das bewusst so meinte.

## Facetten-Kreuzvalidierung (Schritt 3)
Keine neuen Widersprüche zwischen den sechs Facetten. Der Fund betrifft ausschliesslich Stimme
(Layer «Rohtext-Artefakt vs. echtes Signal») und tangiert die anderen Facetten nicht. Die
Haltungs-Regel (wir/ich, Fidelity 260713e) bleibt durch die neue Beleglage unberührt — die
Baugespann-Anfrage (Msg. 990) bestätigt sie indirekt: reine Ich-Verfahrensmail ohne «wir»,
konsistent mit «kein etablierter institutioneller Auftritt» (Einzelanfrage an eine Sachbearbeiterin,
kein Mandat, das JANS als Firma repräsentiert).

## Hinweis zur Quellenlage dieses Laufs
Erster frischer Live-Pull seit mehreren Läufen (Apple Mail reagierte wieder normal, M365-
Connector weiterhin funktionsunfähig — npm-Paket `@pnp/cli-microsoft365` fehlt auf dieser
Station). Neun Nachrichten aus einem bisher nicht verschriftlichten Zeitfenster
(Okt./Nov. 2025) live gelesen; vier davon als Belege verwendet, alle klar vor dem
Authentizitäts-Stichtag.

## Nächste Schritte
- Nächster Lauf: prüfen, ob sich die «Lgr → kein Block» / «volles Wort → Block»-Korrelation an
  weiteren Fällen bestätigt (aktuell 1:3, noch dünn) — bei Bestätigung als feste Heuristik in
  `stimme.md` verankern, bei Widerspruch als reinen Zufall verwerfen.
- M365-Connector-Reparatur (`@pnp/cli-microsoft365`) ist kein Twin-Thema, aber blockiert den
  bevorzugten Such-Kanal für gezielte Register-Kontraste; bis dahin bleibt der direkte
  Apple-Mail-Pull über Indexbereiche der «Gesendete Elemente»-Mailbox der Weg der Wahl.
