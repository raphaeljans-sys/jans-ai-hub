# Training-Run 29 — Immobilienbewertung (2026-07-14, 04:51 Uhr)

## Kurzbefund

Dieser Lauf folgt Run 28 (selber Tag, 00:38 Uhr committet) im Abstand von rund vier Stunden —
ein durch Rule `auto-verbesserungen` 260713 nicht vorgesehener zusaetzlicher Trigger (Sollfrequenz
1x taeglich, 02:50 Uhr). Da innert vier Stunden weder ein neuer JANS-Bewertungsfall noch eine neue
Zins-/Referenzzins-Publikation zu erwarten ist, beschraenkt sich dieser Lauf auf die Verifikation,
dass sich am Stand aus Run 28 nichts geaendert hat — kein voller Recherche-/Ingest-Zyklus.

## Geprueft

1. **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`): unveraendert 5 Projektordner
   (Ebmatingen 3932, Langnau/Giebelweg 12, Niederhasli/Seestrasse 64, Wald/Haselstudstrasse,
   Thalwil 9568, Wangen 8855) — **kein neuer Fall**.
2. **Marktanker in [[investorenmarkt-makro]]:** SNB-Leitzins 0.00 % / Referenzzinssatz 1.25 % —
   Wiki-Artikel bestaetigt diese Werte bereits aktuell, keine neue Publikation seit Run 17.
3. **D6-Restposten Langnau:** weiterhin blockiert (Revision 2026/27 nicht rechtskraeftig).

## Ergebnis

Keine neue Erkenntnis, kein Korrekturbefund, kein Ingest. Die in Run 28 protokollierte Erinnerung
an Raphael (Oberrieden-Hoehenkorrektur, Rule 260624) bleibt unveraendert offen.

## Empfehlung

Die Drosselung auf 1x taeglich (Rule 260713) ist fuer diese KB weiterhin angemessen — bei
Mehrfach-Triggern am selben Tag reicht ein kurzer Delta-Check wie dieser, statt einen vollen
10-Themen-Lauf zu erzwingen, wenn erkennbar keine neuen Themen offen sind.
