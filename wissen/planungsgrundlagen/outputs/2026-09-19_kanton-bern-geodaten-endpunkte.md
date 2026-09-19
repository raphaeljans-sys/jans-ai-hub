---
title: Kanton und Stadt Bern, amtliche Geodaten maschinell beziehen (ÖREB, AV, GWR, Baulinien, Bauinventar)
status: emerging
last_updated: 2026-09-19
sources: [ÖREB-Webservice Kanton Bern (Abruf 19.09.2026), geodienste.ch AV-WFS (Abruf 19.09.2026), api3.geo.admin.ch GWR und Adresssuche (Abruf 19.09.2026), map.bern.ch ArcGIS-REST Baulinienkataster und Bauinventar (Abruf 19.09.2026)]
links: [[kartenportale-grundlagen-checkliste-neue-parzelle]]
---

# Kanton und Stadt Bern: amtliche Geodaten maschinell beziehen

Wissens-Rücklauf aus einer Machbarkeits- und Finanzierungsabklärung zu einem Mehrfamilienhaus in der
Stadt Bern (Länggasse), 19.09.2026. Die KB führte bisher nur ZH (`geo-zh.mjs`) und SZ (`geo-sz.mjs`).
Alle Endpunkte unten sind am 19.09.2026 erfolgreich abgerufen und gegeneinander geprüft worden
(ÖREB-Geometrie und städtischer Baulinienkataster liefern identische Koordinaten).

## Endpunkte (ohne Anmeldung)

1. **EGRID und Adresse:** `https://api3.geo.admin.ch/rest/services/api/SearchServer?searchText=<Strasse Nr Ort>&type=locations&origins=address&sr=2056`
   liefert Koordinaten und die `featureId` für das GWR.
2. **GWR je Gebäude:** `https://api3.geo.admin.ch/rest/services/ech/MapServer/ch.bfs.gebaeude_wohnungs_register/<EGID>_0?f=json`
   liefert EGRID, Parzelle, Gebäudefläche, Geschosszahl, Anzahl Wohnungen, EBF, Heizung und je
   Wohnung Fläche, Zimmerzahl, Stockwerk, Baujahr (`warea`, `wazim`, `wstwk`, `wbauj`). Klartext der
   Codes über `.../extendedHtmlPopup?lang=de`. Registerdaten, nicht vor Ort geprüft.
3. **ÖREB-Auszug Kanton Bern:** `https://www.oereb2.apps.be.ch/extract/json/?EGRID=<EGRID>&GEOMETRY=true`
   (PDF: `/extract/pdf/?EGRID=<EGRID>`). Das JSON ist rund 5 MB gross und enthält die Parzellengrenze
   (`RealEstate.Limit`) sowie je Festlegung Geometrie, Flächen- oder Längenanteil und die
   Rechtsvorschriften mit URL. Für die Stadt Bern: Nutzungszone, Bauklasse, Bauweise mit
   Gebäudelänge und Gebäudetiefe, Lärmempfindlichkeitsstufe, **Baulinien als Linien-Koordinaten**.
   ⚠ «Bauinventar» und «Kantonale Denkmalschutzobjekte» führt der ÖREB für die Stadt Bern als
   Thema **ohne Daten**; ein leeres Ergebnis dort sagt nichts über den Inventarstatus.
4. **Amtliche Vermessung (Gebäudegrundrisse, Bodenbedeckung):**
   `https://geodienste.ch/db/av_0/deu?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&TYPENAMES=ms:LCSF&SRSNAME=EPSG:2056&BBOX=<xmin>,<ymin>,<xmax>,<ymax>,urn:ogc:def:crs:EPSG::2056`
   liefert GML; `ms:Art = Gebaeude` filtern. Liegenschaften: `ms:RESF`.
5. **Stadt Bern, Baulinienkataster:** `https://map.bern.ch/arcgis/rest/services/Geoportal/Baulinienkataster/MapServer`
   (Layer 9 Baulinien). **Bauinventar:** `https://map.bern.ch/arcgis/rest/services/Geoportal/Bauinventar/MapServer`
   sowie Adresssuche auf `https://bauinventar.bern.ch`.

## Rechenweg Baufeld aus Baulinien (bewährt)

Parzellenpolygon und Baulinien aus dem ÖREB-JSON mit `shapely` verschneiden (venv
`~/.venvs/volumen3d`). Bilden die Baulinien ein U oder Rechteck, ist das Baufeld die Schnittmenge
des Baulinien-Streifens mit der Parzelle. Bestandsgebäude aus dem AV-WFS dagegen verschneiden: der
Anteil ausserhalb des Baufelds ist der Teil, der nur Besitzstand geniesst. Aus denselben Geometrien
lässt sich direkt ein Situationsplan als SVG erzeugen.

## Fallstricke

- Ein Foto eines ÖREB-Auszugs zeigt die Baulinie oft nur teilweise (Parzellengrenze überdeckt sie).
  Die Längenangabe im Auszug gegen die Geometrie prüfen.
- Hausnummern einer Zeile gehören nicht zwingend zur anliegenden Strasse; Strassennamen über das
  amtliche Gebäudeadressverzeichnis (`ch.swisstopo.amtliches-gebaeudeadressverzeichnis`, identify mit
  Envelope) klären.

## Offen

Ein Connector `geo-be.mjs` nach dem Muster `geo-zh.mjs` existiert nicht. Kandidat, sobald ein
zweiter Berner Fall vorliegt (siehe `wiki/QUESTIONS.md`).
