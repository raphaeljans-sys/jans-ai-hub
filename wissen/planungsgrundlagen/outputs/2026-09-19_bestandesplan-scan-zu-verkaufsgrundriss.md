---
title: Vom gescannten Bestandesplan zum massstäblichen Verkaufsgrundriss 1:100
date: 2026-09-19
status: established
sources:
  - Sitzung 19.09.2026, Auftrag Raphael (fünf gescannte Planseiten, Genius Scan, rund 300 dpi)
  - Generator und Kontroll-Overlays: `30 JANS AI HUB OUTPUT/260919-Verkaufsgrundrisse-1-100/Quelle/`
---

# Vom gescannten Bestandesplan zum massstäblichen Verkaufsgrundriss 1:100

Werkzeug-Erkenntnis aus einem realen Auftrag: Aus Handy-Scans alter Plankopien (ohne Massstab,
mit Handkorrekturen und Tipp-Ex) entstehen saubere Vektor-Grundrisse im JANS-Look. Der Weg ist
wiederholbar und braucht nur Bordmittel (python3 mit numpy, scipy, PIL; Chrome headless; poppler).

## Der Weg in sechs Schritten

1. **Rohbilder holen:** `pdfimages -j` zieht die eingebetteten JPEG in voller Auflösung, danach
   lesbar drehen.
2. **Wandmaske:** Gauss-Glättung (Sigma 2), Schwellwert rund 135 von 255, Closing 5×5, Opening
   10×10, kleine Komponenten verwerfen. Übrig bleiben die geschwärzten Wände; Text, dünne Linien
   und Kopiersprenkel fallen weg. Ein zu strenger Schwellwert (unter 100) verliert fleckig
   geschwärzte Wände.
3. **Entzerren:** Handy-Scans sind trapezförmig verzogen (hier rechts 2.4 bis 2.9 % grösser als
   links, über alle Blätter gleich gerichtet). Vier Aussenecken des Hauptbaukörpers aus der Maske
   bestimmen (Median der Kantenlage je Eckbereich), Homographie auf ein gemeinsames Rechteck.
   Danach liegen alle Geschosse deckungsgleich und lassen sich mit denselben Koordinaten messen.
4. **Kalibrieren:** Gedruckte Öffnungsmasse lesen. Die Notation «54 über 84» an einer Masskette
   bedeutet Breite über Höhe der Öffnung, nicht zwei Längen. Mehrere kurze Masse mitteln und mit
   Normgrössen gegenprüfen (Küchenzeile 60 cm tief, Herd 55 cm, Tritttiefe rund 25 cm,
   Haustürflügel rund 100 cm). Erreichbare Genauigkeit: rund ± 2 % linear, also ± 4 % in der
   Fläche. Flächen darum nur als ca.-Werte auf 0.5 m² gerundet ausweisen.
5. **Geometrie als Daten:** Wandkanten über Scanlinien (Lauflängen in der Maske) messen,
   Rechtecke in Pixelkoordinaten führen, erst bei der Ausgabe in cm umrechnen. Geschoss-Varianten
   als Abweichung vom Druckstand. Pflichtkontrolle: Wände, Fenster, Türen und Raumpolygone
   halbtransparent über den entzerrten Scan legen.
6. **Ausgabe:** Inline-SVG mit viewBox in cm und Breite in mm (1 cm Natur entspricht 0.1 mm Papier),
   A4-Blatt im Studienblatt-Look (`templates/jans-studienblatt`), PDF über Chrome headless.
   Massstab im PDF mit PyMuPDF nachmessen (hier 1'451 cm Referenz zu 145.10 mm). Dazu ein
   Minimal-DXF (R12, Einheit cm) für ArchiCAD.

## Fallstricke

- **Handnotizen sind nicht immer Planmasse.** «86.5» und «2.05» passten nicht zur Kalibrierung;
  es sind eine Einbaunotiz und eine Durchgangshöhe. Eine abweichende Zahl erst als Hinweis auf
  eine andere Bedeutung lesen, nicht als Widerlegung des Massstabs.
- **Kopien des EG als Obergeschosse:** Hauseingang und Aussentreppen stehen dort weiter im Druck.
  Die Fassaden zeigen, was wirklich gilt (Treppenhausfenster über dem Eingang, Lukarnen und
  Dachschrägen im obersten Geschoss).
- **Tipp-Ex bedeutet meist «Wand entfernt», dunkler Stift «Wand neu» oder «Öffnung geschlossen».**
  Eine Differenz der Lauflängen zwischen den Geschossen findet diese Stellen verlässlich.
- **Nicht jede Handkorrektur ist ohne Ortskenntnis lesbar.** Offene Stellen benennen und dem
  Auftraggeber vorlegen, statt sie plausibel zu erfinden.
