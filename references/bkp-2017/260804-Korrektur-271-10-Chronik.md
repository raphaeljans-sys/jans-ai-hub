# Chronik: der Phantom-Code «BKP 271.10» (Korrektur 04.08.2026)

Ausgelagert am 07.08.2026 aus `rules/bkp-2017-referenz.md` (Grundkontext-Diaet Runde 3). Die
Regeln daraus gelten unveraendert und stehen weiterhin in der Rule; hier liegt die Fallchronik.

## Was falsch war

Die Rule und die Schnellreferenz der Liste fuehrten bis zum 04.08.2026 «271.10» fuer
Innenputze. **Den Code gibt es im BKP 2017 nicht.** Am Original-PDF nachgezaehlt: unter 271
Gipserarbeiten stehen ausschliesslich 271.0 Innenputze, 271.1 Trockenbauarbeiten, 271.2
Gerueste. Eine Suche ueber die gesamte Gliederung liefert **null** Codes mit zweistelliger
Nachkommastelle.

Der Fehler stand nur in den Schnellreferenz-Bloecken. Der systematische Teil von
`BKP-2017-Liste.md` fuehrte 271.0 durchgehend richtig — die Quelle widersprach sich also
selbst, und zwar ausgerechnet dort, wo beim Devisieren nachgeschlagen wird.

## Ausbreitung und Nachzug

Zum Zeitpunkt der Korrektur hatte sich der falsche Code in **15 Hub-Dateien** ausgebreitet,
darunter `skills/ausschreibung/SKILL.md` und `skills/brandschutz/SKILL.md`.

Nachgezogen am 04.08.2026 (Wissens-Chef Run 25): `skills/ausschreibung/SKILL.md`
(Formatbeispiel auf 271.0, dazu die Katalog-Kennzeichnung), `skills/brandschutz/SKILL.md`
(vier Fundstellen) sowie drei Destillate der KB `normen`.

## Die Sachbezugs-Falle

Im Brandschutz-Skill bezeichneten alle vier Stellen das **Trockenbau**-LV. Richtig ist dort
also **271.1**, nicht 271.0. Wer einen Phantomcode mechanisch durch den erstbesten
existierenden ersetzt, erzeugt einen Fehler, der verifizierbar aussieht und beim naechsten
Audit nicht mehr auffaellt.

## Zweite Fehlerklasse: Los-Nummern sind keine BKP-Codes

Der Stadt-Zuercher Katalog 2008 und die JANS-Los-Nummerierung kennen zweistellige
Nachkommastellen (z.B. das reale KISPI-Los `271.13 Trockenbau/Gipserarbeiten OG Sued`), das
BKP 2017 nicht. Schreibt man einer solchen Nummer «BKP» davor, entsteht genau der Code, den
niemand verifizieren kann.

**Offen geblieben (Ticket N43-1, Rest):** Altdokumente und Projektordner mit «BKP 271.10» oder
«BKP 271.13» im LV-Titel tragen weiterhin einen unverifizierbaren Code.

## Lehre

Ein Schnellreferenz-Block ist eine Abschrift und damit genauso pruefbeduerftig wie jede andere
Sekundaerquelle. Bei Zweifel gilt der systematische Teil der Liste, im Streitfall das
Original-PDF.
