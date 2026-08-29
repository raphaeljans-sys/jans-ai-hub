---
title: "Raumprogramm-Spaltenlogik nach SIA 416 (NF/VF/FF): Formatmuster Naturmuseum St.Gallen 2009"
status: emerging
last_updated: 2026-08-29
sources: ["/Volumes/daten/04_Buero/10_Referenzenbibliothek/25_Wettbewerb/Natums/b natmus 09-03-03 raumprogramm(2).pdf (5 S., maschinenlesbar)", "raw/inventar/buero-referenzen__25_Wettbewerb.md Abschnitt 6"]
links: ["[[wettbewerbsverfahren-programmstruktur-vorpruefung-zuschlagskriterien]]"]
---

# Raumprogramm-Spaltenlogik nach SIA 416

## Kontext

Vollständiges, maschinenlesbares Raumprogramm des Neubaus Naturmuseum
St.Gallen (2009), rund 3'925 m² Nutzfläche in zehn Bereichen. Das mit Abstand
beste Formatmuster der Sektion `25_Wettbewerb` für Raumprogramm-Tabellen.

## Spaltenlogik

Je Position: Anzahl, Fläche, acht Anforderungsspalten (lichte Raumhöhe,
Tageslicht, palettengängig, Heizung, Lüftung, Klimatisierung/Kühlung,
Alarmanlage, Ticketzone) sowie eine **Flächenkategorie nach SIA 416, Ausgabe
2003** — NF Nutzfläche, VF Verkehrsfläche, FF Funktionsfläche.

**Praxisregel:** diese Spaltenlogik ist eine direkt übernehmbare Formvorlage
für den Agenten `flaechen-nachweis` und für JANS-eigene Raumprogramme,
unabhängig vom Projekt — sie zeigt, wie tief ein Raumprogramm technisch gehen
kann, ohne bereits zu entwerfen.

## Bereichssummen (Beispielprojekt, m²)

Entrée 270 · Unterrichts- und Vortragsräume 240 · gesicherter Publikumsbereich
1'910 · Büros 320 · Ausstellungsvorbereitung und Werkstätten 270 ·
Vogelpflegestation 110 · Archiv- und Lagerräume 805.

## Technische Spezifikationstiefe (Beispiele)

- Warenaufzug: Schacht min. 4,2 × 4,2 m, Kabine min. 3,0 × 3,0 × 3,0 m,
  Kabinentüre 3,0 × 2,8 m; **alle** Ausstellungs-, Lager-, Depot- und
  Werkstatträume müssen daran angeschlossen sein.
- Personenaufzug: Schacht min. 2,0 × 2,5 m.
- Lüftungssteigzonen: Schachtquerschnitt i.L. je Geschoss min. 1,80 m² (b min.
  0,45 m) Publikumsbereich, 0,25 m² Büros, 2,25 m² Werkstätten.
- Sammlungsdepots mit Rollregalen bei konstant 12 oder 16 °C und regulierter
  Luftfeuchtigkeit.
- Telematikraum max. 70 m Distanz zu den Büros; Putzraum mit Ausguss je
  Geschoss à 4 m².
- WC-Anlagen positionsweise bestückt (Anzahl WC, Pissoirs, Lavabos,
  Behinderten-WC).

## Praxisregel

Bei einem eigenen Raumprogramm lohnt es sich, technische Anforderungen
(Deckenlast/Palettengängigkeit, Klimaklasse, Aufzugsgrösse je
Nutzungsbereich) direkt in der Raumprogramm-Tabelle statt in einem separaten
Text zu führen — dieses Muster macht sie prüfbar und in der Vorprüfung
eindeutig zuordenbar.

## Offene Punkte

- Die SIA-416-Ausgabe 2003 ist nicht die aktuell gültige Ausgabe; vor
  Verwendung der Kategorienlogik in einem aktuellen Erzeugnis gegen den Skill
  `normen` prüfen (Rule `normen-referenz`).
