# Anlage N52-2 — Messung der Fehlerklasse «fehlender Inhalt» (Run 53, 16.08.2026)

Beleg-Datei zum Lauf `outputs/2026-08-16_normen-nacht-run53.md`. Sie dokumentiert eine
kontrollierte Messung, nicht eine Vermutung — und ist wiederholbar, weil die Varianten und
die Zuordnung der gepflanzten Auslassungen hier festgehalten sind.

## Die Frage

Run 52 hat an **einem** Fall gemessen, dass die Fragerichtung «widerlege» fehlenden Inhalt
nicht erfasst (Kontrolle B02: eine von drei Nicht-Geltungs-Fällen weggelassen, vom
Prüfagenten bestätigt und nicht einmal als Anmerkung erwähnt). Ein Datenpunkt trägt keine
Methodik-Pflicht. Diese Anlage misst dieselbe Frage mit Kontrollen **und** Gegenprobe.

## Aufbau

**Quelle:** SIA 416/1:2007, gedruckte Seiten 23-25 (Kap. 3 «Bezugsgrössen», Ziff. 3.1-3.3).
Reiner Scan ohne Textlayer, deshalb durchgehend 300-dpi-Rendering (Methodik-Pflicht 8).
Der Hauptprozess hat S. 23 und S. 24 **vorab selbst gelesen** — ohne eigene Kenntnis der
Quelle misst eine solche Anlage nichts. Folio = PDF-Blatt 1:1, von allen vier Agenten und
vom Hauptprozess unabhängig bestätigt.

**Varianten** (beide aus dem Kap.-3-Abschnitt des Destillats `sia-416-1-2007.md`):

| Variante | Datei | Inhalt |
|---|---|---|
| **B** (unverändert) | `variante-B-original.md` | der Destillat-Abschnitt im Stand von Run 52 |
| **A** (dotiert) | `variante-A-dotiert.md` | derselbe Abschnitt, **drei Aussagen entfernt**, sonst Wort für Wort identisch |

**Die drei gepflanzten Auslassungen** — bewusst so gewählt, dass durch das Entfernen
**keine Falschaussage** entsteht, der Resttext also in allem, was er sagt, zutrifft:

| Nr. | Entfernte Aussage | Ziffer | Typ |
|---|---|---|---|
| **P1** | Teile mit lichter Raumhöhe unter 1,0 m zählen nicht zur AE | 3.2.2 | eigenständige Einschränkung |
| **P2** | Rückausnahme: Ver-/Entsorgungsschächte und Abstellräume unter 10 m² gehören zur AE | 3.2.2 | **Ausnahme zu einer geführten Regel** |
| **P3** | Gebäudehüllfläche Ainf, Flächen gegen Erdreich zählen nicht mit, samt Fussnote ISO 9972 | 3.3.3 | eigenständiger Zusatzinhalt |

**Vier Läufe, blind** (kein Agent kannte die Anlage, die Varianten oder die anderen Läufe;
alle mit eigenem Render-Präfix nach Methodik-Pflicht 5: `covA-r53-`, `covB-r53-`,
`refA-r53-`, dazu die Hauptprozess-Renderings `sia4161-hp-r53-`):

1. **Abdeckungsrichtung auf A** — «Was sagt die Quelle, das die Zusammenfassung nicht führt?»
2. **Abdeckungsrichtung auf B** — dieselbe Frage, Falsch-Positiv-Kontrolle
3. **Refuter-Richtung auf A** — «Versuche zu widerlegen», Kreuzkontrolle
4. Hauptprozess-Lesung S. 23/24 als Referenz

## Ergebnis

| Lauf | Gepflanzte Auslassungen erkannt | Falsch-Positive |
|---|---|---|
| **Abdeckung auf A** | **3 von 3** — alle drei, P1/P2 als «hoch planungsrelevant» | 0 |
| **Abdeckung auf B** | **0 von 3 fälschlich gemeldet** (alle drei korrekt als `GEFÜHRT` verbucht) | **0** |
| **Refuter auf A** | **1 von 3 mit Verdikt-Wirkung** (nur P2, dort zwei `WIDERLEGT`); P1 und P3 nur als verdiktlose Anmerkung | 0 |

Die Abdeckungsrichtung trennt also sauber: sie findet alles Gepflanzte und meldet nichts
Vorhandenes als fehlend. Die Falsch-Positiv-Kontrolle ist der Teil, der die Messung erst
belastbar macht — ein Prüfer, der pauschal «fehlt» ruft, erreicht sonst dieselbe Trefferquote.

## Der eigentliche Befund: die Klasse «fehlender Inhalt» zerfällt in zwei

Run 52 hatte sie als **eine** Klasse geführt, die der Refuter-Richtung grundsätzlich
unzugänglich sei. Diese Messung zeigt, dass das zu grob ist:

- **(a) Weggelassene Ausnahme zu einer geführten Regel.** Fällt die Ausnahme weg, wird die
  verbleibende Regel **überdehnt** — und eine überdehnte Aussage ist falsch. Der Refuter hat
  P2 prompt gefunden, und zwar an zwei Stellen zugleich («NICHT zur AE zählen: übrige ANNF»
  und «… und Funktionsflächen AFF»), weil beide durch die entfernte Rückausnahme unrichtig
  wurden. **Diese Unterklasse ist refuter-sichtbar.**
- **(b) Weggelassener eigenständiger Inhalt.** Eine Einschränkung, die sonst nirgends
  aufgerufen wird (P1), oder eine ganze zusätzliche Bezugsgrösse (P3), lässt den Resttext
  unberührt wahr. **Diese Unterklasse ist refuter-blind.** Der Agent hat beide zwar unter
  einer eigenen Rubrik «Auslassungen» erwähnt — aber ohne Verdikt, also ohne Wirkung auf das
  Prüfergebnis. Genau das hatte Run 51 beobachtet und Run 52 in verschärfter Form (dort
  fehlte selbst die Anmerkung).

B02 aus Run 52 war ein Fall der Klasse (b): ein weggelassenes Listenglied unter drei
gleichrangigen. Die dortige Beobachtung ist damit bestätigt und zugleich präzisiert.

**Praktische Folge:** Die Refuter-Runde bleibt notwendig und ist schärfer als gedacht — sie
fängt die gefährlichste Auslassungsform, die verschwiegene Ausnahme, von selbst. Sie bleibt
aber unzureichend für alles, was die Quelle **zusätzlich** sagt. Wer Vollständigkeit
behaupten will, muss die Abdeckungsrichtung fahren und das im Report ausweisen.

## Nebenertrag: sieben echte Lücken im Destillat

Beide Abdeckungsläufe fanden unabhängig voneinander dieselben Lücken im **unveränderten**
Destillat; die zwei gewichtigsten hatte der Hauptprozess bei seiner Vorab-Lesung ebenfalls
gefunden (dreifach unabhängig):

| Lücke | Ziffer | Gewicht |
|---|---|---|
| Hälftige Teilung der Konstruktionsfläche zwischen zwei Geschossteilen | 3.1.3 | **hoch** — die Grundregel fehlte, geführt war nur die Ausnahme davon |
| Mehrfachnutzung: eine beheizungsbedürftige Nutzung zieht den ganzen Raum in die AE | 3.2.1 | **hoch** — häufigster Zweifelsfall der Praxis |
| Zweite Hälfte der Fussnote 1: SIA 180 verlangt ausdrücklich Aussenabmessungen | 3.3.3 | **hoch** — die handlungsleitende Hälfte; entscheidet den Blower-Door-Bezugswert |
| «Ausnahme siehe Ziffer 3.2.2» — Ausschlusskatalog ist nicht abschliessend | 3.2.3 | mittel |
| Zuordnung erfolgt auf Grund der Flächenklassierung nach SIA 416 | 3.2.1 | mittel |
| ANGF = Nutz-, Verkehrs- und/oder Funktionsfläche | 3.1.2 | gering |
| Grundsatz der Bezugsgrösse; Figur 15 nirgends zitiert | 3.1.1 | gering |

Dazu ein Befund aus der Refuter-Richtung, der **beide** Varianten betrifft und deshalb im
Destillat stand: «Rampen/Aufzügen» statt «**Fahrzeug**rampen und **Fahrzeug**aufzügen», an
zwei Stellen. Personenaufzüge sind Verkehrsfläche und zählen zur AE — die Verkürzung ist
verwechselbar. Alle Punkte sind inline korrigiert (Methodik-Pflicht 9).

**Das ist der zweite Ertrag der Anlage und der unerwartetere:** Ein Destillat, das ein
vollständiges 300-dpi-Rendering, eine Hauptprozess-Stichprobe und eine Nacht Arbeit hinter
sich hatte, trug in drei Seiten sieben Lücken, drei davon planungsrelevant. Keine davon war
ein falscher Wert; die Refuter-Richtung allein hätte das Destillat passieren lassen.
