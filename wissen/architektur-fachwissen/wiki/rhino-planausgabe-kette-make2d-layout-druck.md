---
title: "Rhino-Planausgabe-Kette: Make2D, Page Layout, Massstab, Export-Toleranzfalle (McNeel Training Manual Level 1, 2008)"
status: emerging
last_updated: 2026-08-29
sources: ["/Volumes/daten/04_Buero/10_Referenzenbibliothek/21_Rhino/Rhino Level 1 v4.pdf (Rhinoceros Level 1 Training Manual v4.0, Robert McNeel & Associates, Fassung R40TML1, Oktober 2008, Kap. 10, 12, 13)", "raw/inventar/buero-referenzen__21_Rhino.md"]
links: ["[[rhino-freiform-stetigkeit-flowalongsrf]]"]
---

# Rhino-Planausgabe-Kette: vom 3D-Modell zum abgabefähigen Plan

## Kontext

Rhinoceros 4.0 Training Manual Level 1 (Robert McNeel & Associates, Fassung
R40TML1, Oktober 2008), Kapitel 10 (Import/Export), 12 (Bemassung/`Make2-D`)
und 13 (Layout/Printing). **Urheberrechtlich geschützt** (Copyright-Vermerk:
Kopie für persönlichen Gebrauch/Unterricht gestattet, Weiterverbreitung nur
mit Zustimmung) — hier sinngemäss mit Fundstelle wiedergegeben, keine
wörtliche Übernahme von Text oder Abbildungen in ausgehende Erzeugnisse. Die
Befehle sind gemäss Inventar bis heute unverändert benannt.

## Die Kette: Make2D → Detailfenster → Massstab → Sperren

`Make2-D` projiziert die Geometrie als Silhouettenkurven auf die
Welt-XY-Ebene, richtet die Ansichten aus, bietet erste oder dritte
Winkelprojektion («4-view (USA)») und legt **verdeckte Kanten auf einen
eigenen Layer** ab. Im Page Layout werden danach Detailfenster angelegt; der
Massstab wird über das Zahlenpaar **«Distance on page (mm)» zu «Distance in
model (m)»** gesetzt. Das Detail wird anschliessend **gesperrt**, damit der
Massstab beim Navigieren nicht verloren geht. Die Detailkante ist ein
normales Kurvenobjekt mit Layer, Anzeigefarbe, Druckfarbe und Druckbreite und
trägt standardmässig die Eigenschaft «Print Width: No Print».

**Praxisregel:** genau diese Mechanik macht eine Volumenstudie zu
präsentierbaren Schnitten und Ansichten (Skill `volumenstudie`) — Massstab
immer über das Detailfenster-Zahlenpaar setzen und das Detail vor der
Weiterarbeit sperren, sonst verschiebt sich der Massstab unbemerkt beim
Navigieren.

## Exportregeln und die Meshing-Toleranzfalle

Beim Export nach 3DS, STL oder DWG übersetzt Rhino die glatten NURBS-Flächen
in ein Polygonnetz aus Dreiecken; die Netzdichte ist beim Export einstellbar.
Der Unterschied zwischen Toleranz 0.01 und 0.1 verändert sichtbar
Dateigrösse und Kantenqualität. Ergänzend sind IGES (mit «Detailed
Controls») und STEP beschrieben. **«Export Selected» für Teilmengen statt
«Save As» für das ganze Modell** ist der ausdrücklich empfohlene Weg.

**Praxisregel:** wer aus Rhino nach ArchiCAD oder in einen Renderer liefert,
entscheidet an der Meshing-Toleranz über Dateigrösse und Kantenqualität —
vor jedem Export die Toleranz bewusst setzen, nicht den Standardwert
übernehmen. Gegenrichtung dieser Kette: Skill `pdf2dwg`.

## Offene Punkte

- Keine — die Mechanik ist versionsunabhängig, die Befehlsnamen sind laut
  Inventar bis heute gültig.
