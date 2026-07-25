# Normen-Training Mini (Mac Mini) — Run 20, 14.07.2026

## Auftrag

Fortsetzung Vertiefungsstufen fuer die DIN/VSS/RAL-Familie (Stations-Split Mac Mini),
nachdem Run 19 die Grunddestillation + Retro-Verifikation als vollstaendig abgeschlossen
gemeldet hat. Gemaess `training/PROGRAMM.md` (Vertiefungsstufen (c)+(d)):

- (c) Q&A-Selbstbefragung fuer ausgewaehlte Kern-DIN/VSS-Normen
- (d) Querschnitts-Synthese fuer Fach-Skills fortsetzen

## Durchgefuehrt

### (c) Q&A-Selbstbefragung (3 Normen, parallel via Sub-Agenten)

Je Norm 15-20 Pruefungsfragen formuliert und JEDE unabhaengig durch Volltextlektuere
des Original-PDF beantwortet (nicht aus dem Destillat abgeschrieben), dann gegen das
bestehende Destillat abgeglichen:

1. **DIN 4102-1:1998** (Brandverhalten Baustoffe) — 18/18 Fragen bestanden nach
   Korrektur. 2 Korrekturen: Ziff. B.5.3 (Brenner wird beim Vorheizen nur geschwenkt,
   nicht abgekuehlt — die Probenunterlage kuehlt ab, nicht der Brenner), Ziff. 5.2.4.5
   (Gipskarton-Teilregeln: halbe Plattenmasse anrechenbar + negativer Heizwert des
   Gipskerns nicht zu beruecksichtigen — beide fehlten im Destillat). Zusaetzlich die
   Vorwort-Aenderungsliste (Ausgabe 1998 vs. 1981) ergaenzt und den veralteten
   REGISTER.md-Eintrag («Teil-Destillat, Anhang B offen») korrigiert.
2. **DIN 18040-1:2010** (Barrierefreies Bauen, oeffentlich zugaengliche Gebaeude) —
   18/18 bestanden, 1 reine Fundstellen-Praezisierung (Rampen-Handlauf-/Radabweiser-
   Vorgabe: Ziff. 4.3.8, korrekte Seite 16-18 statt 16-17).
3. **VSS 40 291:2021** (Parkieren, Anordnung/Geometrie) — 20/20 bestanden, 0
   Falschangaben, 2 echte Luecken ergaenzt: Fussgaenger-Zuschlag 0.80 m zu
   Fahrgassenbreiten (Tab. 5) bei hoher Fussgaengerfrequenz; Tab. 8 «Fahrgassen fuer
   Kleinwagen» komplett nachgetragen (Einbahn/Gegenverkehr, Kehren) inkl. fehlender
   MB/ML- und LmV/LoV-Werte aus Tab. 6/7.

**Befund:** die drei geprueften Kern-Destillate waren ueberwiegend bereits sehr
sauber (Ergebnis der vorangegangenen Retro-Verifikationslaeufe Mini-Run 12-19) — die
Q&A-Selbstbefragung deckt eher Detail-/Vollstaendigkeits-Luecken auf (fehlende
Nebenwerte, praezisere Fundstellen) als grobe Sachfehler.

### (d) Querschnitts-Synthese vertieft

`wiki/synthese-din-vss-ral-fachskills.md` um Abschnitt 8 ergaenzt: detaillierte
Vergleichstabelle Abnahme/Garantiefrist/Verjaehrung/Beweislast/Sicherheitsleistung
VOB/B (DIN 1961:2010) vs. SIA 118:1991 fuer den Skill `unternehmerkontrolle`
(Art.-fuer-Art. an beiden Original-Destillaten belegt: SIA 118 Art. 172/174/179/180/181,
VOB/B §§ 7/12/13/17). Kernbefund: die Zahl «2 Jahre» kommt in beiden Systemen vor,
bezeichnet aber unterschiedliche Rechtsfiguren (VOB/B-Sonderfall-Verjaehrung vs.
SIA-118-Ruegefrist) — nie 1:1 gleichsetzen. Artikel-Frontmatter (sources) um
`sia-118-1991.md` ergaenzt, `wiki/INDEX.md`-Eintrag praezisiert.

### Bookkeeping

Alle drei Q&A-Ergebnisse in `training/norm-inventar.md` und `destillate/INDEX.md`
nachgetragen (die Sub-Agenten fuer DIN 4102-1 und DIN 18040-1 hatten ihre Destillate
korrekt aktualisiert und selbst committet/gepusht, aber das zentrale Register nicht
nachgefuehrt — analog zum in Run 18/19 beobachteten Bookkeeping-Lag-Muster).

## Ergebnis

- 3 Kern-DIN/VSS-Destillate zusaetzlich Q&A-verifiziert: 56/56 Fragen insgesamt
  bestanden (nach Korrektur), 3 Sachkorrekturen, 3 Luecken-Ergaenzungen.
- Querschnitts-Synthese um praxisrelevanten Abnahme/Garantie/Maengelrecht-Vergleich
  fuer `unternehmerkontrolle` erweitert.
- Kein neuer offener Punkt in `wiki/QUESTIONS.md` fuer DIN/VSS/RAL.

## Naechster Schritt (Run 21)

Vertiefungsstufe (c) fortsetzen mit weiteren Kern-Kandidaten aus der Run-19-Liste:
DIN 1946-4/6 (RLT Gesundheitswesen/Wohnen), DIN 276-1/277-1-3 (Kostenkennwerte/
Flaechen). Vertiefungsstufe (d): Synthese-Artikel bei Bedarf um eine eigene
Kurz-Sektion "Grenzen der DIN-Uebertragbarkeit" (Sammelstelle der bereits in den
Einzeldestillaten dokumentierten Nicht-Aequivalenzen) ergaenzen, falls weitere
Fach-Skills betroffen sind.

INVENTAR-STATUS DIN/VSS/RAL: unveraendert **Grunddestillation + Retro-Verifikation
KOMPLETT** (seit Run 19). Vertiefungsstufen (c)/(d) laufen weiter, kein «Task
beenden»-Vorschlag noetig (VOLLGAS-Programm: nach Familienabschluss automatisch
Wechsel in die Vertiefung, kein Leerlauf).
