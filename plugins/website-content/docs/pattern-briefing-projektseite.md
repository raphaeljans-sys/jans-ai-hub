# Pattern-Briefing Projektseite — raphaeljans.ch

Briefing fuer Webprogrammierer: Modulares Pattern-System fuer Projektseiten.
Erstellt: 2026-04-14

---

## Grundprinzip

Jede Projektseite wird aus **5 unabhaengigen Pattern-Ebenen (A–E)** zusammengesetzt.
Pro Projekt wird entschieden, welche Patterns in welcher Variante zum Einsatz kommen.
Nur Pattern A ist Pflicht — alles andere ist optional und frei kombinierbar.

```
A  Couplet              Titel                   PFLICHT
B  Cinematic / Duo      Startermedium           optional
C  Quartet / Sextett    Mediastrip (Details)    optional
D  Box / Text           Beschreibung            optional
E  Sextett / References Finisher                optional
```

---

## Typografie-Spezifikationen

| Element | Schrift | Groesse | Spacing |
|---|---|---|---|
| A: Couplet (Titel) | DM Sans, Regular | 28pt | Letter Spacing: -2 |
| D2: Text (Lauftext) | Fragment Mono, Regular | 18pt | Line: 24pt, Letter: 5, Word: reduziert |
| Labels / Captions | Fragment Mono, Regular | small | — |
| Body / Credits Value | DM Sans, Regular | small | — |

---

## A — Couplet (Titel)

Zweizeiler: Projektname + kontextuelle Unterzeile.

```
Neubau Schulhaus Schoental
Wettbewerb, 3. Preis
```

| Eigenschaft | Wert |
|---|---|
| Pflicht | Ja — einziger Pflichtblock |
| Zeile 1 | Projektname (wird aus Post-Title generiert) |
| Zeile 2 | Frei waehlbar: Status, Ort, Jahr, oder leer |
| Schrift | DM Sans, Regular, 28pt (beide Zeilen) |
| Letter Spacing | -2 (negativ, eng) |

### Beispiele
```
Kinderspital Zuerich                  Haus am See
Studienauftrag                        Wollerau SZ, 2023
```

---

## B — Startermedium (Hero)

Erster visueller Eindruck. Zwei Varianten:

### B1: Cinematic
Ein einzelnes Bild, volle Breite — immersiv, filmisch.

```
┌──────────────────────────────────────────────────┐
│                                                  │
│                                                  │
│              [Einzelbild, wide]                   │
│                                                  │
│                                                  │
└──────────────────────────────────────────────────┘
```

| Eigenschaft | Wert |
|---|---|
| Ausrichtung | alignwide (wideSize: 9999px = Fullbleed) |
| Bilder | 1 |
| Seitenverhaeltnis | Frei, Bild bestimmt Hoehe |
| Lightbox | Ja |
| Caption | Optional (Figcaption mit Caption + Subcaption) |

### B2: Duo
Zwei Bilder nebeneinander — gleichwertig, dialogisch.

```
┌───────────────────────┬────────────────────────┐
│                       │                        │
│      [Bild 1]         │       [Bild 2]         │
│                       │                        │
└───────────────────────┴────────────────────────┘
```

| Eigenschaft | Wert |
|---|---|
| Ausrichtung | alignwide |
| Spalten | 2 (wp-block-gallery columns-2) |
| Bilder | 2 |
| Orientierung | Landscape + Landscape, oder Landscape + Portrait (mit margin-top Logik) |
| Captions | Optional pro Bild |

---

## C — Mediastrip (Details)

Horizontaler Streifen mit Detail-Bildern. Zwei Raster:

### C1: Quartet (4 Bilder, mit Labels)

```
┌───────────┬───────────┬───────────┬───────────┐
│           │           │           │           │
│  Bild 1   │  Bild 2   │  Bild 3   │  Bild 4   │
│           │           │           │           │
├───────────┼───────────┼───────────┼───────────┤
│  Caption  │  Caption  │  Caption  │  Caption  │
│  Subcapt. │  Subcapt. │  Subcapt. │  Subcapt. │
└───────────┴───────────┴───────────┴───────────┘
```

| Eigenschaft | Wert |
|---|---|
| Spalten | 4 (fix) |
| Captions | Ja — Caption + Subcaption pro Bild |
| Typografie Caption | Fragment Mono, small |
| Beispiel-Labels | "Schoental / Visualization", "Schoental / Sideplan 1:5000" |
| Lightbox | Ja |

### C2: Sextett (6 Bilder, ohne Labels)

```
┌────────┬────────┬────────┬────────┬────────┬────────┐
│        │        │        │        │        │        │
│  B 1   │  B 2   │  B 3   │  B 4   │  B 5   │  B 6   │
│        │        │        │        │        │        │
└────────┴────────┴────────┴────────┴────────┴────────┘
```

| Eigenschaft | Wert |
|---|---|
| Spalten | 6 (fix) |
| Captions | Nein — kein Platz bei 6 Spalten |
| Lightbox | Ja |
| Hinweis | Gleiches Raster wie Finisher (E1), anderer Kontext |

---

## D — Beschreibung

Projektinformationen. Zwei Varianten, einzeln oder kombiniert:

### D1: Box (Credits, strukturiert)

Key-Value-Paare — tabellarisch, scanbar.

```
Ort              Altstätten, St. Gallen
Programm         Schulhaus Neubau
Bauherrschaft    Gemeinde Altstätten
Status           Wettbewerb, 3. Preis
Team             AASZ, Andreas Geser Landscape Architects
Jahr             2024
Flaeche          12'500 m²
```

| Eigenschaft | Wert |
|---|---|
| Layout | Key links, Value rechts (2 Spalten oder Definition List) |
| Typografie Key | Fragment Mono, small, muted |
| Typografie Value | DM Sans, small |
| Felder | Alle optional — pro Projekt frei waehlbar |
| Breite | contentSize (645px), nicht wide |

**Moegliche Felder (alle optional):**
- Ort
- Programm
- Bauherrschaft / Auftraggeber
- Status (z.B. "Wettbewerb, 3. Preis", "Realisiert", "In Planung")
- Team / Mit / Zusammenarbeit
- Jahr / Zeitraum
- Flaeche (m²)
- Baukosten (CHF)
- Fotografie
- Tragwerk / Fachplaner
- Weitere nach Bedarf

### D2: Text (Lauftext, erzaehlerisch)

Freier Fliesstext — Entwurfsidee, Konzept, Atmosphaere.

```
Raphael Jans Architekten ETH erhielt zusammen mit AASZ
und Andreas Geser Landscape Architects den 3. Preis fuer
den Neubau des Schulhauses Schoental in Altstätten...
```

| Eigenschaft | Wert |
|---|---|
| Schrift | Fragment Mono, Regular, 18pt |
| Line Spacing | 24pt |
| Letter Spacing | 5 (weit) |
| Word Spacing | Leicht reduziert |
| Laenge | 1–3 Absaetze, variabel |
| Breite | contentSize (645px) |
| Inhalt | Frei — kein Schema, erzaehlerisch |

### D1 + D2: Box + Text (kombiniert)

Beide Varianten zusammen, Reihenfolge frei waehlbar:
- Box oben, Text unten (Fakten zuerst, dann Erzaehlung)
- Text oben, Box unten (Erzaehlung zuerst, dann Fakten)

---

## E — Finisher

Abschluss der Projektseite. Zwei Varianten:

### E1: Sextett (Related Projects)

6 Vorschaubilder zu verwandten Projekten.

```
Related Projects
┌────────┬────────┬────────┬────────┬────────┬────────┐
│        │        │        │        │        │        │
│  P 1   │  P 2   │  P 3   │  P 4   │  P 5   │  P 6   │
│        │        │        │        │        │        │
└────────┴────────┴────────┴────────┴────────┴────────┘
```

| Eigenschaft | Wert |
|---|---|
| Spalten | 6 (fix) |
| Inhalt | Verlinkte Projektbilder (Thumbnails) |
| Captions | Nein |
| Ueberschrift | "Related Projects" darueber |
| Verlinkung | Jedes Bild fuehrt zur jeweiligen Projektseite |
| Logik | Automatisch oder manuell kuratiert |

### E2: References

Quellenangaben, Presseartikel, externe Links.

| Eigenschaft | Wert |
|---|---|
| Typografie | Fragment Mono, small |
| Inhalt | Links zu Presse, Publikationen, Quellen |
| Layout | Liste oder Fliesstext |
| Breite | contentSize (645px) |

---

## Kombinationslogik

Jedes Projekt bekommt die Patterns die es braucht:

### Beispiel: Wettbewerb (gewonnen)
```
A  Couplet        "Kinderspital Zuerich / Studienauftrag"
B  Cinematic      Hauptvisualisierung
C  Quartet        4 Detailbilder mit Labels
D  Box + Text     Credits + ausfuehrliche Beschreibung
E  Sextett        Related Projects
```

### Beispiel: Wettbewerb (Anerkennung)
```
A  Couplet        "Schulhaus Schoental / Wettbewerb, 3. Preis"
B  Duo            2 Visualisierungen
C  Quartet        Situationsplan, Grundrisse
D  Text           Kurze Beschreibung, keine Credits noetig
E  Sextett        Related Projects
```

### Beispiel: Realisiertes Projekt (Fotografie)
```
A  Couplet        "Haus am See / Wollerau SZ"
B  Cinematic      Hauptfoto
C  Sextett        6 Fotos ohne Labels (sprechen fuer sich)
D  Box            Nur Credits (Fotograf, Bauherrschaft, Flaeche)
E  References     Presseartikel
```

### Beispiel: Kleines Projekt / Studie
```
A  Couplet        "Konzeptstudie Areal Mitte"
B  Duo            2 Bilder
D  Text           Nur Lauftext
```

### Minimalvariante
```
A  Couplet        "Projektname"
B  Cinematic      1 Bild
```

---

## Raster-Uebersicht

| Raster | Spalten | Labels | Verwendung |
|---|---|---|---|
| Cinematic | 1 | Optional | B — Startermedium |
| Duo | 2 | Optional | B — Startermedium |
| Quartet | 4 | Ja | C — Mediastrip |
| Sextett | 6 | Nein | C — Mediastrip ODER E — Finisher |

---

## Lightbox Gallery

Alle Bilder auf der Projektseite oeffnen bei Klick eine Lightbox Gallery.

| Eigenschaft | Wert |
|---|---|
| Typ | Lightbox Gallery, Single View |
| Ansicht | Ein Bild pro Ansicht, Vollbild-Overlay |
| Navigation | Split-Cursor — rechte Bildhaelfte: naechstes Bild (Pfeil rechts), linke Bildhaelfte: vorheriges Bild (Pfeil links) |
| Caption | Feste Position, aktualisiert sich dynamisch passend zum aktuell angezeigten Bild |
| Schliessen | Klick ausserhalb oder Escape-Taste |

**Verhalten im Detail:**
- Bei geoeffneter Lightbox verwandelt sich der Cursor auf der **rechten Seite** in einen Vorwaerts-Pfeil — Klick zeigt das naechste Bild
- Auf der **linken Seite** verwandelt sich der Cursor in einen Rueckwaerts-Pfeil — Klick zeigt das vorherige Bild
- Der **Bilduntertitel** (Caption + Subcaption) bleibt an einer festen Position verankert und wechselt passend zum dargestellten Bild
- Alle Bilder der Projektseite (aus B, C, und E) sind in der Lightbox-Galerie enthalten

---

## Hinweise fuer Umsetzung

1. **CMS**: Patterns als flexible Content-Blöcke (ACF Flexible Content oder Gutenberg Blocks)
2. **Reihenfolge A→E** ist die empfohlene Leserichtung, aber innerhalb D (Box/Text) frei
3. **Sextett** ist ein universelles Raster — gleicher Block, unterschiedlicher Kontext (C oder E)
4. **Alle Bilder** haben Lightbox-Funktion
5. **Bestehender Custom Block** `jans-image-slider-gallery` (Embla.js) kann zusaetzlich verwendet werden
6. **Orientierungs-Logik**: Portrait-Bilder mit Klasse `is-thumbnail-vertical`, Landscape mit margin-top bei gemischten Galleries
