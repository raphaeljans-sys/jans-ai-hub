# Training Run 57 — Registerpflege (Mac Mini Nachtschicht, 23.07.2026 ~19:45)

## Ausgangslage

Nachtschicht-Zyklus Mac Mini, Prioritaet 4 (naechste faellige Trainingslektion). Vor der Wahl
geprueft: Synobsis Stufe 2 Embeddings ist zum 11. Mal in Folge ein leerer Lauf mit expliziter
Pause-Empfehlung (`wissen/architekten-synobsis/CHANGELOG.md`, 23.07.) — nicht wiederholt. `energie`
wurde bereits heute trainiert (Run 84, 23.07.). `planungsgrundlagen` (Run 56, 22.07., Kartenportale
+ Energie kombiniert, Token-Vollgas) ist laut 2-Tage-Takt noch nicht strikt faellig, aber die
naechstliegende Mac-Mini-Domaene ohne heutige Aktivitaet.

Bei der Durchsicht von `wiki/QUESTIONS.md` (Domaene B, Recht/Norm) fiel eine konkrete
Registerinkonsistenz auf statt eines neuen Rechercheauftrags.

## Befund

`wiki/kartenportale-naturgefahren-objektschutz.md` enthielt zwei Stellen (§7b, §8 "Offene Punkte"),
die den GIS-Layer-Endpunkt der ZH-Naturgefahrenkarte weiterhin als "offen" fuehrten — obwohl
Abschnitt 8a desselben Artikels (Run 54, 2026-07-20) die Loesung bereits vollstaendig dokumentiert:
`maps.zh.ch/wfs/OGDZHWFS`, Layer `ms:ogd-0044_giszhpub_wb_hw_gk_f` (Hochwasser, 44.2) bzw.
`ms:ogd-0044_giszhpub_wb_syn_gk_f` (synoptisch, 44.13), login-frei, mit Positiv-/Negativ-Benchmark
(Buchserstrasse 9 Daellikon / Giebelweg 12 Langnau) und Connector-Anbindung
`geo-zh.mjs --produkt naturgefahren`.

Ursache: Run 54 hat einen neuen Abschnitt (8a) angelegt, aber die zwei aelteren Stellen im selben
Artikel, die dieselbe Frage stellten, nicht rueckwirkend verlinkt/geschlossen — eine reine
Nachfuehrungs-Luecke, kein fachlicher Fehler und kein neuer Rechercheaufwand.

## Aenderungen

- `wiki/kartenportale-naturgefahren-objektschutz.md` §7b: Absatz "Aktueller Bezugsweg" von
  "weiterhin offen" auf "GELOEST" umgestellt, mit Verweis auf §8a.
- `wiki/kartenportale-naturgefahren-objektschutz.md` §8: Bullet "ZH-Endpunkt fuer Naturgefahrenkarte
  weiterhin offen" auf "GELOEST" umgestellt, mit Verweis auf §8a.
- `last_updated` im Frontmatter auf 2026-07-23 (Run 57, Registerpflege) gesetzt.
- `wiki/QUESTIONS.md` R36-R38: GIS-Layer-Endpunkt-Vermerk auf GELOEST nachgezogen.
- `training/curriculum.md` R37: dieselbe Nachfuehrung.
- `CHANGELOG.md`: Eintrag ergaenzt.

## Kein neuer Fund

Dieser Lauf hat keine neue Quelle gelesen und keinen neuen Endpunkt getestet — reine
Konsistenzpflege eines bereits vorhandenen, aber unvollstaendig verlinkten Ergebnisses. Fachlich
bleibt der Stand von Run 54 (8a) massgeblich.

## Naechster Schritt

Domaenen-Rotation planungsgrundlagen: naechster inhaltlicher Schwerpunkt waere Recht/Norm oder
Brandschutz (Lauf 3/4 der Rotation, `training/PROGRAMM.md`). Kleinerer offener Anschlusspunkt mit
echtem Recherche-/Baubedarf: `--produkt grundwasserkarte` in `geo-zh.mjs` fuer die in Run 55
gefundenen ZH-Grundwasserisohypsen (§6, `emerging`) noch nicht gebaut — fuer einen dedizierten Lauf
vormerken (Connector-Bau + Test, nicht in ein Nachtschicht-Restbudget quetschen).
