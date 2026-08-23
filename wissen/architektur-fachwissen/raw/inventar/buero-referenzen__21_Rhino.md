---
title: "Inventar buero-referenzen — 21_Rhino"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/21_Rhino
last_updated: 2026-08-23
status: established
---

# Inventar: 21_Rhino (Korpus buero-referenzen)

## Kurzbefund

**180 Dateien, 58 MB, vier Unterordner.** Die Sektion ist kein gewachsenes Büroarchiv,
sondern ein einmalig abgelegtes **Lernpaket zu Rhinoceros 4.0**, zusammengetragen im
Zeitraum 2008 bis 2010. Der Jahrgang ist eindeutig: 174 der 180 Dateien tragen das
Dateidatum 2008 (Auslieferungsstand der McNeel-Tutorials), drei stammen von 2009, drei
von 2010.

Der inhaltliche Kern sind **drei Original-PDF von Robert McNeel & Associates**, alle mit
Copyright-Vermerk im Dokument:

- `Rhino Level 1 v4.pdf`, «Rhinoceros Level 1 Training Manual v4.0», 256 Seiten,
  Fassung R40TML1 vom Oktober 2008
- `Rhino Level 2 v4.pdf`, «Rhinoceros Level 2 Training Manual v4.0», 212 Seiten,
  Fassung R40TML2, revidiert 30.01.2009
- `Rhino 4.0 User's Guide.pdf`, «Rhinoceros 4.0 Users Guide», 119 Seiten, erzeugt
  26.06.2008

Dazu kommen **136 Übungs- und Beispielmodelle im Format .3dm** (Version 4 des
3D-Geometry-File-Formats), verteilt auf `Tutorials/`, `Tutorials/Level 1/`,
`Tutorials/Level 2/` und `Tutorials/Sample Models/`. Stichproben der Dateiköpfe
(Terrain.3dm, Table.3dm, TitleBlock.3dm, SimpleLayout_Print.3dm, Victory.3dm) zeigen
durchgehend die McNeel-Originale, erzeugt mit Rhino-4.0-Builds von 2006 bis 2008. Es ist
**kein einziges JANS-Projektmodell** und keine bürointerne Bearbeitung darunter; alle
Modelle tragen dasselbe Dateidatum 27.08.2008.

Der Rest ist Beiwerk der Übungen: 32 Bilddateien (Texturen, Bump-Maps,
Hintergrundbitmaps, ein Logo als .AI), eine Materialbibliothek `Mug.mlib`, eine
IGES-Prüfdatei `Check 02.igs`, eine Windows-Thumbnail-Datei `Thumbs.db`, dazu drei
RhinoScript-Beispiele (.rvb) und eine Alias-Liste (.txt).

Zwei Dateien fallen aus dem McNeel-Paket heraus, beide vom 07.03.2010:

- `100307_Fact.pdf`, ein selbst verfasstes dreiseitiges «Fact-Sheet Rhinoceros» mit
  Programmversionen, Preisen (Einzelplatzlizenz 995 Euro, Stand 2010), Import- und
  Exportformaten, Plug-in-Übersicht (Flamingo, Penguin, Bongo, Brazil) und
  Händleradressen (FILOU Software GmbH, flexiCAD e.K.). Die dritte Seite enthält eine
  **private E-Mail eines Studienkollegen**, die zum Bezug der Software über ein
  Torrent-Netzwerk und zum Patchen rät. Der Inhalt ist hier nur als Befund festgehalten;
  er ist veraltet und für die Wissensbasis unbrauchbar.
- `100307_Lordick_Daniel_Kurve_Flaeche_Freiform.tiff`, ein Bildschirmfoto von
  buchhandel.de zum Buch **Daniel Lordick, «Kurve, Fläche, Freiform. Rhinoceros für
  Architekten», Springer Wien, 245 Seiten, 24,2 x 17 cm, 1. Auflage 12.2009,
  ISBN 978-3-211-99022-3**, Preis rund 49,95 Euro. Das Buch selbst liegt in der Sektion
  **nicht** vor; es handelt sich um einen Beschaffungshinweis, nicht um Inhalt.

**Offene Fragen:**

1. Die ISBN im `100307_Fact.pdf` (978-3-12-597265-0) widerspricht der ISBN im
   Bildschirmfoto (978-3-211-99022-3). Die Angabe im Bildschirmfoto stammt aus dem
   Buchhandels-Datensatz und ist die plausiblere; bestätigt ist keine von beiden.
2. Ob das Buch von Lordick später beschafft wurde und heute an anderer Stelle im
   Büroarchiv liegt, ist aus dieser Sektion nicht ersichtlich.
3. Ob im Büro heute noch eine Rhino-Lizenz geführt wird und in welcher Version, geht
   aus der Sektion nicht hervor. Der Stand hier endet bei Version 4.0 (2010).

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `Rhino Level 1 v4.pdf` (256 S., McNeel, Okt. 2008) | **P1** | Vollständiger Lehrgang vom ersten Kurvenzug bis zur Planausgabe. Büroverwertbar sind vor allem die hinteren Kapitel: Kap. 10 Import und Export (Meshing-Toleranz beim Export nach STL/3DS/DWG, IGES, STEP), Kap. 12 Bemassung und `Make2-D`, Kap. 13 Layout und Printing (Details, Massstab, Print Width). Genau die Stufen, die eine Volumenstudie zu abgabefähigen Plänen machen. Die Befehle sind bis heute unverändert benannt. |
| `Rhino Level 2 v4.pdf` (212 S., McNeel, Jan. 2009) | **P1** | Fortgeschrittenenkurs mit dem für JANS relevanten Teil: NURBS-Topologie, Kurven- und Flächenstetigkeit (G0/G1/G2, Krümmungsgraph), «Use 2-D Drawings» (aus einer 2D-Zeichnung ein Modell aufbauen und umgekehrt), Blocks, Meshing von NURBS zu Polygonnetzen, Troubleshooting, Rendering. Verifiziert gelesen wurden unter anderem die Abschnitte zu `Cplane` nach Objekt, `RemapCPlane`, `FlowAlongSrf` mit History und `ShrinkTrimmedSrf`. |
| `Rhino 4.0 User's Guide.pdf` (119 S., McNeel, 2008) | P2 | Kompakte Begriffs- und Konzeptreferenz: Geometrietypen (Punkt, Kurve, Fläche, Polysurface, Solid, Mesh), Koordinatensysteme und Konstruktionsebenen, Objektfang, Kurven- und Flächenanalyse, Modellorganisation (Layer, Groups, Blocks, Worksessions), Annotation. Inhaltlich weitgehend Teilmenge von Level 1, aber dichter geschrieben und darum als Destillat-Grundlage geeignet. |
| `Tutorials/Level 2/Aliases.txt` (73 Alias-Zeilen) | P2 | Sofort übernehmbare Befehlsabkürzungen für die Rhino-Kommandozeile, etwa `AA _Area`, `ZE _Zoom _Extents`, `EEX _ExtrudeCrv`, `NS _NetworkSrf`, `PF _PictureFrame`. Reine Textdatei, direkt importierbar, spart im Alltag messbar Zeit. |
| `Tutorials/Level 2/CopyObjectsToLayer.rvb`, `CurrentModelInfo.rvb`, `CurveLength.rvb` | P2 | Drei kommentierte RhinoScript-Beispiele von McNeel (2002). `CurveLength.rvb` summiert die Länge selektierter Kurven, ist also eine Ausmass-Hilfe; `CopyObjectsToLayer.rvb` zeigt das Muster Objektauswahl, Layerwahl, Kopieren. VBScript, also nicht mehr die heutige Skriptsprache (Python), als Logikvorlage aber brauchbar. |
| `Tutorials/Level 1/Make2D.3dm`, `Dimension.3dm`, `Printing.3dm`, `SimpleLayout_Print.3dm`, `TitleBlock.3dm`, `Export.3dm` | P2 | Die sechs Übungsdateien zu genau den planungsrelevanten Kapiteln (2D-Ableitung, Bemassung, Layout mit Planrahmen, Druck, Export). Wer den P1-Teil nachvollziehen will, braucht sie. |
| Übrige 130 `.3dm` in `Tutorials/`, `Level 1/`, `Level 2/`, `Sample Models/` | P3 | Original-Übungsmodelle von McNeel, unverändert. Gegenstände sind Produktdesign und Freiformkörper (Entenküken, Schraubenzieher, Taschenlampe, Kopfhörer, Waschmittelflasche, Zahnseidenbox, Golfschläger, Doppeldecker, menschlicher Kopf). Kein Architekturbezug ausser `Terrain.3dm` (Gelände als Mesh) und `Table.3dm`/`Chair.3dm` (Möbel). Archivwert als Lernmaterial, kein Fachinhalt zum Destillieren. |
| `Tutorials/Level 2/Check 02.igs`, `Mug.mlib` | P3 | IGES-Prüfdatei und Rhino-Materialbibliothek der Übungen. Nur im Zusammenhang mit dem jeweiligen Kapitel sinnvoll. |
| `100307_Lordick_Daniel_Kurve_Flaeche_Freiform.tiff` | P3 | Bildschirmfoto mit vollständiger bibliografischer Angabe zum einzigen ausdrücklich **architektenbezogenen** Rhino-Lehrbuch der Sektion. Wert allein als Beschaffungshinweis, das Buch selbst fehlt. |
| 32 Bilddateien (20 `.jpg`, 6 `.bmp`, 4 `.png`, `AirOne.TIF`, `AirOne_Logo.AI`) | X | Texturen, Bump-Maps, Hintergrundbitmaps und ein Vektorlogo, ausschliesslich Zubehör der Übungen. Reines Bildmaterial ohne Text. |
| `Tutorials/Level 1/Thumbs.db` | X | Windows-Vorschau-Artefakt, kein Inhalt. |
| `100307_Fact.pdf` | X | Preise, Lizenzmodelle, Händleradressen und Plug-in-Stand von 2010, durchgehend überholt. Enthält zusätzlich eine private E-Mail mit Anleitung zum unlizenzierten Bezug der Software. Gehört weder ins Wiki noch in ein Erzeugnis. |

Zählung: P1 = 2, P2 = 11, P3 = 133, X = 34, Summe 180 Dateien.

**X heisst: nicht in die Wissensbasis übernehmen.** Auf dem NAS bleibt alles unverändert
liegen; die Übungsbilder gehören funktional zu den Tutorials und würden diese beim
Entfernen zerstören.

## Was hier für JANS drinsteckt

**1. Die Planausgabe-Kette einer Volumenstudie ist hier vollständig dokumentiert.**
Level 1, Kapitel 12 und 13 beschreiben Schritt für Schritt, wie aus einem 3D-Modell eine
abgabefähige Zeichnung wird. `Make2-D` projiziert die Geometrie als Silhouettenkurven auf
die Welt-XY-Ebene, richtet die Ansichten aus, bietet erste oder dritte Winkelprojektion
(«4-view (USA)») und legt **verdeckte Kanten auf einen eigenen Layer** ab. Danach werden im
Page Layout Detailfenster angelegt; der Massstab wird über das Zahlenpaar **«Distance on
page (mm)» zu «Distance in model (m)»** gesetzt, das Detail anschliessend **gesperrt**,
damit der Massstab beim Navigieren nicht verloren geht. Die Detailkante ist ein normales
Kurvenobjekt mit Layer, Anzeigefarbe, Druckfarbe und Druckbreite und trägt
standardmässig die Eigenschaft «Print Width: No Print». Das ist genau die Mechanik, die
der Skill `volumenstudie` für präsentierbare Schnitte und Ansichten braucht, und die
Gegenrichtung zum Skill `pdf2dwg`.

**2. Die Exportregeln stehen belegt da, inklusive der Toleranzfalle.**
Level 1, Kapitel 10, benennt den entscheidenden Punkt: Beim Export nach 3DS, STL oder DWG
muss Rhino die glatten NURBS-Flächen in ein Polygonnetz aus Dreiecken übersetzen, und die
Netzdichte ist beim Export einstellbar. Die Übung führt den Unterschied zwischen
Toleranz 0.01 und 0.1 mit Vorschau vor. Wer aus Rhino nach ArchiCAD oder in einen Renderer
liefert, entscheidet an dieser Stelle über Dateigrösse und Kantenqualität. Ergänzend
sind IGES (mit «Detailed Controls») und STEP beschrieben. Der Weg «Export Selected» für
Teilmengen statt «Save As» für das ganze Modell ist ausdrücklich genannt.

**3. Das Fact-Sheet dokumentiert den Schnittstellen-Stand von Rhino 4.0 im Büro.**
Als Importformate listet es IGES, STEP, DXF, DWG, VDA, SAT, X_T, STL, 3DS, LWO, dazu
Zusatzschnittstellen zu CATIA V5, Pro/E, Unigraphics, SolidWorks und Solid Edge. Das ist
historisch aufschlussreich, aber **für heutige Aussagen unbrauchbar**: die Angaben sind
von 2010 und beziehen sich auf Version 4.0.

**4. Freiform- und Stetigkeitswissen für den Wettbewerb.**
Level 2 behandelt systematisch, was bei gekrümmten Bauteilen und Fassaden zählt:
Kurvengrad, geometrische Stetigkeit G0 bis G2, Krümmungsgraph zum Fairen einer Kurve,
Flächenanalyse, Verhalten getrimmter NURBS-Flächen. Praktisch verwertbar ist die
Kombination `Dir` (U/V-Richtung einer Fläche prüfen und drehen), `Cplane` nach Objekt,
`RemapCPlane` und `FlowAlongSrf` mit eingeschalteter History: damit legt man eine ebene
Zeichnung, ein Raster oder ein Logo auf eine gekrümmte Fläche und kann die Verteilung
danach über die Basisfläche nachjustieren, ohne neu aufzubauen. Für Fassadenraster auf
gekrümmten Körpern ist das der direkte Weg.

**5. Eine methodische Aussage, die über Rhino hinaus gilt.**
Level 2 formuliert im Kapitel «An Approach to Modeling» den Grundsatz, eine Fläche
grosszügig rechteckig aufzubauen und anschliessend auf die Zielkontur zu trimmen, statt zu
versuchen, die Kanten beim Aufbau exakt zu treffen. Begründung im Text: das ergibt eine
deutlich leichtere und besser kontrollierbare Fläche. Empfohlen werden Kurven vom Grad 5
mit sechs Kontrollpunkten und die Kontrolle über den Krümmungsgraph. Dieselbe Haltung
(erst grob und sauber, dann beschneiden) trägt in jeder Volumenstudie.

**6. Sofort übernehmbares Werkzeug.**
Die Alias-Liste mit 73 Einträgen und die drei RhinoScript-Beispiele sind das einzige
Material der Sektion, das ohne Destillation direkt einsatzfähig ist. `CurveLength.rvb`
summiert die Länge mehrerer Kurven und ist damit im Kern eine Ausmasshilfe.

**7. Was hier ausdrücklich NICHT drinsteckt.**
Kein Architekturprojekt, kein Gebäudemodell, kein Bauteil, kein Detail. Die 136 Modelle
sind Produktdesign. Das einzige architektennahe Lehrbuch der Sektion, Lordick «Kurve,
Fläche, Freiform. Rhinoceros für Architekten», ist nur als Bildschirmfoto eines
Buchhandelseintrags vorhanden. Wer aus dieser Sektion Architekturbezug erwartet, findet
ihn nicht; ihr Wert liegt in der Werkzeugbeherrschung, nicht im Fachinhalt.

**8. Rechtlicher Vorbehalt zur Weiterverwendung.**
Alle drei Handbücher tragen den Vermerk von Robert McNeel & Associates, wonach Kopien für
den persönlichen Gebrauch und den Unterricht gestattet sind, das Weiterverbreiten und
Veröffentlichen dagegen der vorgängigen Zustimmung bedarf. Für die Wissensbasis heisst
das: **sinngemäss destillieren mit Fundstellenangabe, keine wörtliche Übernahme von
Textpassagen oder Abbildungen** in Erzeugnisse, die das Büro verlassen.
