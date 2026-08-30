---
title: "Modellstatik: Ähnlichkeitsgesetz zwischen Struktur 1:1 und Modell 1:x, mit Galileis Knochenbeispiel"
status: emerging
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Tragwerk/04_Bauingenieure/Schwartz_Joseph/02_Lehre/110225_Prof_Schwartz/10_Projekte/110928_Reader_Seminarwoche/Weiteres Material/Skalierung_Modelle/ModelleSkalierung.jpg — handschriftliche Ähnlichkeitsgesetz-Tabelle, Reader-Blatt «Belastungstest Modelle»", "/Volumes/daten/02_Architektur_Archiv/01_Tragwerk/04_Bauingenieure/Schwartz_Joseph/02_Lehre/110225_Prof_Schwartz/10_Projekte/110928_Reader_Seminarwoche/Weiteres Material/Skalierung_Modelle/Galileo_Discorsi_1636.jpg — Illustration nach Galileo Galilei, «Discorsi e dimostrazioni matematiche», 1636", "/Volumes/daten/02_Architektur_Archiv/01_Tragwerk/04_Bauingenieure/Schwartz_Joseph/02_Lehre/110225_Prof_Schwartz/10_Projekte/110928_Reader_Seminarwoche/Weiteres Material/Skalierung_Modelle/Modell1.jpg, Modell2.jpg — Fotos eines Belastungsversuchs an einer Strukturattrappe in einem Prüflabor (hydraulische Pressen, Reaktionswand)", "raw/inventar/archiv-fachwissen__01_Tragwerk.md"]
links: ["grubenmann-brueder-werkverzeichnis-bruecken-schaffhausen"]
---

# Modellstatik: Ähnlichkeitsgesetz zwischen Struktur 1:1 und Modell 1:x, mit Galileis Knochenbeispiel

## Kontext

Bildmaterial aus dem Reader-Blatt «Belastungstest Modelle» der Lehrveranstaltung Schwartz
(ETH Zürich, Sektion Tragwerksentwurf): eine handschriftliche Tabelle leitet das
Ähnlichkeitsgesetz zwischen einer Struktur im Massstab 1:1 und einem Modell im Massstab
1:x her, unter der Zielannahme «Struktur und Modell im gleichen Material, gleiche Spannung
in den Bauteilen von Struktur und Modell». Ergänzt wird das Blatt durch einen historischen
Verweis auf Galileo Galileis Ähnlichkeitsgesetz von 1636 sowie zwei Fotos eines
Belastungsversuchs an einer realen Strukturattrappe.

## Die Ähnlichkeitsgesetz-Tabelle

Für ein Modell im Massstab 1:x gegenüber der Struktur 1:1 gelten folgende
Umrechnungsfaktoren (bei gleichem Baustoff, gleicher Zielspannung):

| Grösse | Einheit | Struktur 1:1 | Modell 1:x |
|---|---|---|---|
| Eigengewicht | [kN] | g | g / x³ |
| Querschnitte | [m²] | A | A / x² |
| Einzellast | [kN] | Q | F / Q (Kraft am Modell zur Erzeugung äquivalenter Spannung) |
| Nutzlast (Linienlast) | [kN/m] | q' | q' / x |
| Nutzlast (Flächenlast) | [kN/m²] | q | q (unverändert) |
| Eigenlast (Volumenlast) | [kN/m³] | g | g · x |

Kernaussage: Eigengewicht und Volumenlasten skalieren **nicht linear** mit dem
Längenmassstab (dritte bzw. erste Potenz von x je nach Bezugsgrösse), während
Flächenlasten (Nutzlast pro m²) skalenunabhängig gleich bleiben. Das ist der methodische
Kern jedes physischen Bemessungsmodells: ein einfach verkleinertes Modell erzeugt bei
gleichem Material **nicht** automatisch die gleiche Spannungsverteilung wie das Original —
Eigengewicht und Volumenlasten müssen gezielt korrigiert (meist künstlich erhöht) werden,
damit das Modell repräsentativ bleibt.

## Historischer Bezug: Galileis Knochenbeispiel (1636)

Die zugehörige Illustration (Reproduktion aus Galileis «Discorsi») zeigt zwei Knochen
unterschiedlicher Grösse: den kleineren in natürlicher Proportion, den grösseren mit
unverhältnismässig verdicktem Schaft. Galilei begründete damit erstmals das
Quadrat-Kubik-Gesetz (square-cube law): Das Gewicht eines Körpers wächst mit der dritten
Potenz der linearen Abmessung, die tragende Querschnittsfläche seiner Stützstrukturen
jedoch nur mit der zweiten Potenz. Ein grösseres Tier (oder Bauwerk) braucht deshalb
unverhältnismässig dickere, nicht einfach proportional vergrösserte Knochen (bzw.
Bauteile), um dieselbe Belastbarkeit je Volumeneinheit zu erreichen — dieselbe Beziehung,
die die Tabelle oben (g/x³ gegenüber A/x²) formalisiert.

## Belastungsversuch (Fotos Modell1.jpg, Modell2.jpg)

Zwei Fotos zeigen eine Strukturattrappe (schräg abgespannter Balken bzw. Trägerrost) in
einem Prüflabor, belastet über eine Reihe hydraulischer Pressen gegen eine Reaktionswand
mit Lochraster. Fotos ohne Bildunterschrift oder Ortsangabe im Archivbestand — dient im
Reader vermutlich als Beispiel für einen grossmassstäblichen (nicht auf 1:x reduzierten)
Bauteilversuch zur Kalibrierung von Rechenmodellen, nicht zwingend für einen
Ähnlichkeitsmodellversuch im engeren Sinn der Tabelle.

## Was hier für JANS drinsteckt

Die Ähnlichkeitsgesetz-Tabelle ist ein direkt anwendbares Rechenschema, falls für eine
Präsentation oder ein Studienmodell (Wettbewerb, Vorprojekt) ein physisches
Tragwerksmodell gebaut und dessen Aussagekraft gegenüber Fachleuten begründet werden muss:
sie zeigt exakt, warum ein simples verkleinertes Modell ohne Lastkorrektur irreführend ist.
Galileis Knochenbeispiel ist eine anschauliche, jahrhundertealte Illustration desselben
Zusammenhangs für allgemeinverständliche Erläuterungstexte (vgl. das Erläuterungstext-
Muster in `wiki/counterpoise-tischtragwerk-erlaeuterungstext-massstabstransfer.md`, das
ebenfalls einen Massstabstransfer zwischen Modell und realer Struktur thematisiert).
Dieselbe methodische Grundhaltung — Formfindung/Nachweis am physischen Modell statt am
Reissbrett — findet sich bereits bei den Grubenmann-Brüdern belegt, siehe
[[grubenmann-brueder-werkverzeichnis-bruecken-schaffhausen]].

## Offen

Kein Autor/Quellentitel für die handschriftliche Tabelle selbst dokumentiert (Reader-
internes Arbeitsblatt ohne Impressum). Die beiden Prüflabor-Fotos sind ohne Bildunterschrift
überliefert; Ort, Projekt und Versuchszweck bleiben unbelegt und sind hier bewusst nicht
erfunden.
