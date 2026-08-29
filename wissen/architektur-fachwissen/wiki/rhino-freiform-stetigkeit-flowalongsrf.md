---
title: "Rhino Freiform und Flächenstetigkeit: FlowAlongSrf für Fassadenraster auf gekrümmten Körpern (McNeel Training Manual Level 2, 2009)"
status: emerging
last_updated: 2026-08-29
sources: ["/Volumes/daten/04_Buero/10_Referenzenbibliothek/21_Rhino/Rhino Level 2 v4.pdf (Rhinoceros Level 2 Training Manual v4.0, Robert McNeel & Associates, Fassung R40TML2, revidiert 30.01.2009, Kap. NURBS-Topologie/Stetigkeit, «An Approach to Modeling»)", "raw/inventar/buero-referenzen__21_Rhino.md"]
links: ["[[rhino-planausgabe-kette-make2d-layout-druck]]"]
---

# Rhino Freiform und Flächenstetigkeit

## Kontext

Rhinoceros 4.0 Training Manual Level 2 (Robert McNeel & Associates, Fassung
R40TML2, revidiert 30.01.2009). **Urheberrechtlich geschützt**: sinngemäss
mit Fundstelle wiedergegeben, keine wörtliche Übernahme in ausgehende
Erzeugnisse.

## Fassadenraster auf gekrümmten Flächen: die Werkzeugkombination

Für gekrümmte Bauteile und Fassaden ist die Kombination aus `Dir` (U/V-
Richtung einer Fläche prüfen und drehen), `Cplane` nach Objekt,
`RemapCPlane` und **`FlowAlongSrf` mit eingeschalteter History** praktisch
verwertbar: damit legt man eine ebene Zeichnung, ein Raster oder ein Logo auf
eine gekrümmte Fläche und kann die Verteilung danach über die Basisfläche
nachjustieren, ohne das Modell neu aufzubauen.

**Praxisregel:** für ein Fassadenraster auf einem gekrümmten Baukörper ist
das der direkte Weg — mit eingeschalteter History bleibt das Raster editierbar,
wenn sich die Basisfläche im Entwurfsprozess noch ändert.

## Geometrische Stetigkeit als Vokabular

Kurvengrad, geometrische Stetigkeit G0 bis G2 und der Krümmungsgraph zum
Fairen einer Kurve sind das Vokabular, mit dem sich die Qualität einer
Freiformfläche beschreiben und in der Fachdiskussion (mit einem
Fassadenbauer oder Modellbauer) benennen lässt.

## Methodischer Grundsatz: grosszügig aufbauen, dann trimmen

Im Kapitel «An Approach to Modeling» wird der Grundsatz formuliert, eine
Fläche grosszügig rechteckig aufzubauen und anschliessend auf die Zielkontur
zu trimmen, statt zu versuchen, die Kanten beim Aufbau exakt zu treffen —
begründet damit, dass dies eine deutlich leichtere und besser kontrollierbare
Fläche ergibt. Empfohlen werden Kurven vom Grad 5 mit sechs Kontrollpunkten
und Kontrolle über den Krümmungsgraph.

**Praxisregel:** dieselbe Haltung — erst grob und sauber aufbauen, dann
beschneiden — trägt in jeder Volumenstudie, unabhängig vom verwendeten
Werkzeug: eine grosszügig angelegte, unbeschnittene Fläche lässt sich später
leichter anpassen als eine von Anfang an exakt an die Kontur getrimmte.

## Offene Punkte

- Keine.
