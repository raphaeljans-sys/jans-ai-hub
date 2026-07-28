# Training-Run 52 — T-Eidgenossen-Rendite geschlossen (Mac Mini Nachtschicht)

Datum: 2026-07-28, Nachtschicht-Zyklus Mac Mini (Budget 5 USD, real ca. 3.60 USD verbraucht).

## Ausgangslage

Run 51 (27.07.2026) hatte die Drossel-Aufhebung nachgeholt und dabei eine neue Luecke
**T-Eidgenossen-Rendite** erfasst: die 10-jaehrige Eidgenossen-Rendite war im KB-Anker nur als
Bandbreite ~0.32–0.40 % (Juni 2026, ungenauer Stichtag) gefuehrt; eine erneute Web-Recherche
fand nur undatierte Live-Snapshots (tradingeconomics ~0.32–0.51 %, investing.com 0.51 % am
23.07.2026 ohne belastbaren methodischen Stichtag) — gemaess Leitplanke «kein Wert ohne
Datumsbeleg» bewusst nicht uebernommen.

## Vorgehen

1. WebSearch nach SNB-Quartalsheft-Publikationen 2026 mit Bezug auf Kapitalmarktzinsen/
   Bundesobligationen-Renditen.
2. Quartalsheft 2/2026 (publ. 24.06.2026) identifiziert; PDF direkt via WebFetch geladen
   (lieferte nur Binaerdaten im Tool-Ergebnis, aber die Datei wurde lokal gecacht).
3. PDF mit `pdftotext -layout` in Klartext konvertiert und nach "Bundesobligation",
   "Eidgenoss", "10-jährig" durchsucht.
4. Fundstelle Kapitel 5 "Geld- und Kapitalmarktzinsen", Grafik 5.2 "Rendite zehnjähriger
   eidgenössischer Anleihen": woertliches Zitat "Die Rendite zehnjähriger Anleihen der
   Eidgenossenschaft lag Mitte Juni bei 0,39% (Mitte März: 0,34%)."

## Ergebnis

- **Neuer, amtlich datierter Wert:** 10-j. Eidgenossen-Rendite = **0.39 % (Mitte Juni 2026)**,
  Vorwert **0.34 % (Mitte März 2026)** — Quelle SNB-Quartalsheft 2/2026, snb.ch, publ.
  24.06.2026.
- Liegt innerhalb der zuvor gefuehrten Bandbreite (~0.32–0.40 %), praezisiert sie aber auf
  einen exakten, zitierfaehigen Stichtag statt einer geschaetzten Monatsspanne.
- `wiki/investorenmarkt-makro.md` aktualisiert (Bullet + Frontmatter-Quelle,
  `last_updated` → 2026-07-28).
- `wiki/wissensluecken.md`: T-Eidgenossen-Rendite als erledigt markiert.
- `CHANGELOG.md`: datierter Eintrag ergaenzt.

## Einordnung

Kleiner, bewusst eng gehaltener Lauf gemaess Nachtschicht-Budgetdisziplin (keine grossen
Fan-outs, eine WebSearch + ein WebFetch). Schliesst eine explizit offene, klar umrissene
Luecke aus Run 51 vollstaendig ab, ohne den ansonsten mehrfach dokumentierten Saettigungs-
zustand der KB (Runs 12-50 ueberwiegend Delta-Null) zu verletzen — kein neuer Sweep, kein
neuer JANS-Bewertungsfall geprueft. Naechster faelliger Anlass: Quartalsheft 3/2026
(~09/2026) fuer die naechste Aktualisierung des Zins-Ankers.
