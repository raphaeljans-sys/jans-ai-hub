# Energie-Loop — E-R191-1 Adressaten-Prüfung AHB-/HBA-Destillate (12.09.2026, Nachtschicht Mac Mini, 13:3x)

**Antrieb:** Prioritäten 1-2 leer (keine Sync-/Remote-Tasks; Synobsis Stufe 2 seit 08.09. bestätigt
aktuell, kein offenes Ziel). `energie` einziges freies Priorität-4-Ziel (bauprodukte/grobkosten laut
PROGRAMM.md erledigt/ausgesetzt). Run 191 (11.09.) hatte für den nächsten Zuschnitt **E-R191-1**
vorgeschlagen: eine billige, grep-basierte Adressaten-Prüfung über alle AHB-/HBA-Destillate, ausgelöst
durch den in Run 191 selbst korrigierten Fehler (Stadt-ZH-Simulationspflicht fälschlich als
allgemeine Regel geführt). PDF-Transfer bleibt weiterhin nicht Thema (Inventar seit Run 191 erschöpft).

## Vorgehen

1. `ls ahb-*.md` im Destillat-Ordner → 34 Treffer vollständig (nicht `grep -i ahb`, das matcht auch
   Zufallssubstrings in Fliesstext).
2. `grep -ln "muss\|Pflicht\|zwingend" ahb-*.md` → 27 der 34 Dateien enthalten mindestens einen der
   drei Marker.
3. Alle 27 Dateien einzeln über den Abschnitt `## Bauherren-Transfer` gelesen (grep -A 5 bis -A 12,
   Frontmatter/Kontext wo nötig ergänzt).
4. Zusätzlich `\bHBA\b` (Wortgrenze, nicht Substring) über `destillate/` und `wiki/` gesucht → vier
   weitere Treffer ausserhalb der `ahb-*`-Namenskonvention.
5. Zitierende Wiki-Stellen geprüft: `wiki/gebaeudetechnik-pflichtenheft.md` (Hauptartikel der
   AHB-Richtlinienfamilie) und `wiki/BAUHERREN-FAQ.md`.

## Ergebnis: kein Befund

Jede der 27 geprüften AHB-Dateien scopt ihre Vorgabe im `Bauherren-Transfer`-Abschnitt ausdrücklich
als Stadt-Zürich-/AHB-intern und **nicht bindend für private JANS-Mandate**. Wiederkehrende, korrekte
Formulierungen: «stadteigene Bauherren-Vorgabe», «interne Bauherren-Richtlinie der Stadt Zürich für
die eigenen Bauten», «kein allgemeingültiges Recht», «für private JANS-Projekte nicht bindend/nicht
direkt anwendbar». Wo eine Norm zusätzlich zitiert wird, die tatsächlich allgemeingültig ist (z. B.
EN 12464-1 in `ahb-zuerich-gt-rl8-beleuchtung.md`), wird das explizit von der städtischen Vorgabe
getrennt.

Die vier HBA-Treffer ausserhalb der `ahb-*`-Namenskonvention:

- `muken-2025-modul-7-betriebsoptimierung-hlkkse.md`: HBA-Richtlinie korrekt als «für kantonseigene
  Bauten» gekennzeichnet, mit dem Zusatz «taugt aber als bewährte Vorgehenslogik auch für private
  Bauherrschaften» — als Empfehlung, nicht als Pflicht formuliert.
- `sommerlicher-waermeschutz-sia180-nachweisverfahren.md`: der eigentliche Run-191-Fall. Bereits im
  selben Lauf korrigiert; Formulierung heute «Bauherrenvorgaben der öffentlichen Hand für ihre
  eigenen Bauten (…), keine Vollzugspraxis» sowie explizite Geltungsbereichs-Zeilen («nur Vorhaben,
  die durch das Amt für Hochbauten abgewickelt werden», «alle HBA-Neubauten und massgebliche
  Umbauten»).
- `eco-bau-merkblaetter-bkp-2008-technik-ausbau.md`: HBA BE (Kt. Bern) wird zweimal als **Quelle**
  einer Legionellen-Fachvorgabe zitiert (Literaturverzeichnis), nicht als Pflicht für JANS-Bauherren
  formuliert — reine Quellenangabe, kein Korrekturbedarf.
- `ecobkp-2026-gebaeudetechnik.md`: gleiche Quellenzitierung (HBA BE 2003 vs. heutige SIA-385/1-Werte),
  ebenfalls reine Faktendarstellung ohne Pflicht-Zuschreibung.

Die zwei geprüften Wiki-Stellen (`gebaeudetechnik-pflichtenheft.md`, `BAUHERREN-FAQ.md`) trennen
AHB-Governance («Genehmigungspflicht durch die Projektleitung AHB») ebenfalls korrekt als «interne
Governance eines öffentlichen Bauherrn (…) ohne Äquivalent im privaten Mandat».

**Fazit:** Der in Run 191 gefundene Fehlertyp war ein Einzelfall an dieser einen Stelle, keine
systematische Lücke in der KB. Keine weitere Datei geändert ausser `wiki/QUESTIONS.md` (Eintrag auf
erledigt gesetzt, Befund dokumentiert).

## Nächster Zuschnitt

E-R191-2 bleibt ein reiner Cross-KB-Hinweis (tote Wikilinks in `wissen/normen`, dort nicht editiert).
Nächster A-BLIND-Kandidat für den folgenden Lauf: `fenster-energieetikette-fea-bfe` oder
`clt-bauteilkatalog-stora-enso` (Ränge 56-70, laut Run-191-Vorschlag; `sia-2001-waermedaemmstoffe-
lambda` bereits am 12.09. 02:3x per KB-internem Quervergleich geprüft, Original-PDF auf dieser
Station wegen defektem OneDrive-Mount für `PL - 04 Energie` weiterhin nicht erreichbar — Blocker
gilt unverändert für jeden A-BLIND-Original-Abgleich dieser Session).

Budget rund 1.0 von 5 USD. Zyklus sauber beendet.
