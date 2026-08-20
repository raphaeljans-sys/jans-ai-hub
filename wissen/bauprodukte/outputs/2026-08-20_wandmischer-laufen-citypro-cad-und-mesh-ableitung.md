---
title: Wandmischer LAUFEN CITYPRO, Nummernkette, CAD-Beschaffung und 2D-Ableitung aus einem Mesh
status: belegt
last_updated: 2026-08-20
sources:
  - Apparateliste Sanitas Troesch, Auftrag 303603210, Rektifikat 1, Projekt 7405703, Kinderspital Zuerich Akutspital BKP 251 Normalinstallation, Stand 20.11.2020
  - LAUFEN Produktseite laufen.ch/produkte/...-HF500922100000 und technische Zeichnung TF_TechDrawing_High
  - Bringhen und SABAG Katalogeintraege zu Similor 711776 und 711778
  - Projekt 2619 KISPI, Umbau PPTS (Anwendungsfall)
links: [ausgussbecken-kwc-sirius-bs302-cad-beschaffung]
---

# Wandmischer LAUFEN CITYPRO: Identifikation, CAD-Beschaffung, 2D-Ableitung aus einem Mesh

Anwendungsfall 2619 KISPI, 20.08.2026, Fortsetzung des BS302-Falls vom selben Tag.
Verallgemeinerbar sind die Abschnitte 2 bis 4.

## 1 Der Fall (projektbezogen, zur Einordnung)

Die Apparateliste fuehrt zwei Ausguss-Apparatetypen mit **verschiedenen** Mischern. Typ 7.0
«Ausgussbecken» (Becken Franke Sirius BS302) traegt den Wandmischer Citypro mit
**Schwenkauslauf A 175 mm** ohne Brause (Sanitas Troesch 6152 861.501.000, Pos. 18400,
38 Stueck). Typ 7.1 «Ausguss mit Ringspuelung» traegt den Citypro **liberty** mit
**A 225 mm** samt Brauseschlauch, Handbrause Simijet und Steckhalter
(6152 962.501.000, Pos. 19000, 19 Stueck).

**Die Lehre daraus, uebertragbar:** in einer Spital-Apparateliste ist «der Mischer zum
Ausguss» keine eindeutige Angabe. Erst der Apparatetyp entscheidet, und die beiden Typen
unterscheiden sich in Ausladung, Zubehoer und Preis um rund einen Drittel. Vor jeder
Bestellung, Ausschreibung oder Planeintragung den **Apparatetyp** nennen, nicht die Nutzung.

## 2 Marken- und Nummernkette (belegt)

Drei Nummern bezeichnen dieselbe Armatur und sind nicht austauschbar zu verwenden:

- **6152 861.501.000** Handelsnummer Sanitas Troesch (die Nummer in Devis und Apparateliste)
- **HF500922100000** Herstellernummer LAUFEN, Ausfuehrung **mit** Verschraubungen, Chrom
- **711776** alte Similor-Nummer derselben Ausfuehrung

Die Marke **Citypro** lief bis Ende 2021 unter Similor Kugler und wird seit dem 01.01.2022
unter **LAUFEN** gefuehrt. Aeltere Devis und Apparatelisten nennen deshalb «Similor», die
heutige Bestellung laeuft ueber LAUFEN.

**Die Systematik der LAUFEN-Nummer** liess sich am Variantenvergleich ablesen: in
`HF5009 XX 1000 YY` steht `XX` fuer die Kombination aus Anschlussdistanz und Ausladung
(21 gleich AD 153 / A 125, 22 gleich AD 153 / A 175, 26 gleich AD 120 / A 175) und `YY` fuer
die Ausstattung (00 mit, 10 ohne Verschraubungen). Damit laesst sich die Nachbarvariante
raten und **an der Produktseite verifizieren** (der Seitentitel nennt Anschlussdistanz,
Ausladung und «mit» oder «ohne Verschraubungen» im Klartext). Raten allein genuegt nicht,
die Verifikation am Titel ist der Beleg.

## 3 Der Beschaffungsweg fuer LAUFEN-CAD (wiederverwendbar)

Ohne Login, ohne Formular, zwei Schritte:

    https://www.laufen.ch/produkte/<sprechender-slug>-<ArtNr>
    https://www.laufen.ch/LaufenResourceServlet/resources/getMainResource?idObject={GUID}

Der Slug darf ungenau sein, die Artikelnummer am Ende entscheidet; `?sku=<ArtNr>` angehaengt
erzwingt die richtige Variante. Die GUIDs der Downloads stehen im Quelltext der Produktseite,
in Bloecken mit den Ueberschriften `2D` und `3D`. Dazu:

- technische Zeichnung: `.../getTransformation?idObject={GUID}&trName=TF_TechDrawing_High`
- Produktblatt: `https://www.laufen.ch/laufen-services/productSheet30/CH/de/<ArtNr>/`

Fuer HF500922100000 belegt: 2D-DWG (AutoCAD 2004, 82 kB), 2D-DXF (282 kB), 3D-DWG (2,1 MB),
3D-DXF (9,2 MB), Massblatt-PNG, Produktblatt-PDF. `curl -OJ` uebernimmt die
Hersteller-Dateinamen (`2D01_500922_000_000_CH.dwg`).

**Grenze des Wegs:** die Sanitas-Troesch-Shopseite zeigt die Lieferantenartikelnummer nur im
JavaScript-Aufbau, ein `curl` auf die Seite liefert sie nicht. Die Bruecke von der Handels-
zur Herstellernummer lief hier ueber Fachhandelskataloge (Bringhen, SABAG), die beide
Nummern nebeneinander fuehren.

## 4 2D-Ableitung, wenn das Herstellermodell ein Mesh ist

Der BS302-Fall vom Vortag betraf ACIS-Volumenkoerper. Armaturen kommen haeufig als
**triangulierter Mesh**; hier 552 Meshes mit 29'451 Flaechen. Drei Befunde:

**4.1 Ohne Schweissen ist die Projektion unbrauchbar.** Roh liefert die Ansicht 1130
sichtbare und 3292 verdeckte Kurven, weil jede Dreieckskante als Kante zaehlt. Nach
`Mesh.Append` aller Teile, `Vertices.CombineIdentical(True, True)`,
`Normals.ComputeNormals()` und `Weld(35 Grad)` sind es 114 sichtbare Kurven, und die
Zeichnung sieht aus wie ein Hersteller-Massbild. **Der wirksame Schritt ist
`CombineIdentical`**, nicht der Schweisswinkel: 25, 35 und 45 Grad lieferten identische
Ergebnisse, weil die Teile als getrennte Meshes mit doppelten Punkten ankommen.

**4.2 Schnitt ueber `Mesh.Split(Plane)` und `Intersection.MeshPlane`**, nicht ueber
`Brep.Trim`. Die Fallunterscheidung ueber die Bounding-Box bleibt noetig (ganz davor, ganz
dahinter, dazwischen), sonst verschwindet alles, was die Ebene nicht schneidet.

**4.3 Eine Mesh-Ableitung hat keine Boegen.** Der Export liefert ausschliesslich Polylinien,
Kreise sind feine Vielecke. Fuer den Plan folgenlos, fuer eine Bemassung am Kreismittelpunkt
nicht. Beim BS302 entstanden aus ACIS 191 echte Boegen.

**4.4 Herstellermodelle stehen in der Zeichnungslage, nicht in der Einbaulage.** Beim CITYPRO
lag die Wandachse auf Z. Die Einbaulage (X entlang Wand, Y aus der Wand heraus, Z nach oben)
entstand ueber die Drehung (x,y,z) auf (-x,z,y). Die naheliegende Zuordnung (x,y,z) auf
(x,z,y) ist eine **Spiegelung** mit Determinante -1 und waere falsch: das Erzeugnis saehe
richtig aus und zeigte die Armatur seitenverkehrt. **Vor dem Zeichnen die Determinante
pruefen.**

## 5 Die Massprobe als unabhaengiger Beleg

Aus der Geometrie liessen sich alle bemassten Werte der technischen Zeichnung
nachvollziehen: Anschlussdistanz 153,0 (Rosettenmitten bei X gleich plus/minus 76,5),
Rosette 65,0, Auslauf 54,1 unter der Anschlussachse, Ausladung 174,3 gegen 175 (die
Abweichung stammt aus der Vernetzung der Auslauf-Oeffnung). **Die Wandflaeche liegt an der
Rueckseite der Rosetten**, im Modell bei Y gleich minus 49,3; die 25 mm dahinter sind die
Anschlussgewinde. Wer die Ausladung ohne diesen Bezugspunkt misst, kommt auf 190 mm und
haelt das Modell faelschlich fuer falsch.
