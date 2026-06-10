---
title: Vergleichswert / hedonische Bewertung
status: emerging
last_updated: 2026-06-09
sources: [IMMO-03 Hedonistische_Berechnungsweise (Standortinformation Beispiel-Report), IMMO-02 UBS Real Estate Fact Sheets, IMMO-01 MA Marktwertanalyse-Projekte, Wuest-Kurs "Immobilien entwickeln" 06.2023 (S. 43-48, 63/64)]
links: [[bewertungsverfahren-ueberblick]], [[datenquellen-registry]], [[lageklasse-landwertanteil]], [[ertragswert-dcf]]
---

# Vergleichswert / hedonische Bewertung

Das **hedonische Verfahren** schaetzt den Marktwert aus statistischen Vergleichsdaten:
Aus vielen realisierten Transaktionen wird ein Preismodell gebildet, das den Wert eines
Objekts aus seinen Eigenschaften (Lage, Flaeche, Zimmer, Zustand, Baujahr, Ausbau)
ableitet. Geeignet v.a. fuer **Eigentumswohnungen und Einfamilienhaeuser** (Marktcheck MA).

## Datengrundlage bei JANS

- **UBS Real Estate Local Fact Sheets** (`IMMO - 02 UBSFS`): Gemeinde-Profile mit
  Preis-/Mietstatistiken, Quantilen und Marktindikatoren. Abgedeckt sind aktuell 8
  Gemeinden (ZH Waedenswil/Thalwil/Maur/Regensdorf/Wald, LU Luzern, SZ Einsiedeln,
  AG Muri) — Staende 2022-2024, teils veraltet. Details + Aktualitaet: [[datenquellen-registry]].
- **Standortinformation-Report** (Beispiel in `IMMO-03 Hedonistische_Berechnungsweise`) —
  Muster eines hedonischen Standort-/Objektreports.
- Ergaenzend: comparis, realadvisor, keevalue, immoverkauf24 (Marktinserate, qualitativ).

## Quantile statt Punktwert

Hedonische Reports liefern **Quantile** (z.B. 10/30/50/70/90 %) der Miet- bzw.
Verkaufspreise pro m2. Der Median (50 %) ist der erwartete Wert; die Spannweite zeigt das
Marktrisiko. Die Einordnung eines konkreten Objekts ins Quantil ist Bewertungsleistung
(Lage, Zustand, Ausbau gegenueber dem Median).

WP-Begruendung (Wuest-Kurs S. 44): Ein Durchschnittspreis erlaubt nur «ueber-/unter-
durchschnittlich»; erst das Preisspektrum erlaubt differenzierte Positionierung. Quantile
zaehlen Beobachtungen statt Masse — der Median reagiert weit weniger auf extreme
Einzelobjekte. Segmente: <30 % guenstig, 30-50 % unteres Mittelfeld, 50-70 % oberes
Mittelfeld, >70 % teuer. **Neubauten sind generell in den oberen Quantilen anzusiedeln**,
da die Spektren saemtliche Mietvertraege (gross­teils Altbauten) enthalten (S. 43).

## Mikrolage und Marktanspannung (Wuest-Kurs S. 47/48)

- **Mikrolage** = relative Lagequalitaet im Bezug aufs restliche Gemeindegebiet; die
  Gemeinde selbst wird per **Makrolage-Rating** schweizweit eingeordnet. Das WP-Mikro-
  lagenmodell ist GIS-gestuetzt (Noten 1.0-5.0; Variablen: Zentralitaet, Hanglage, Laerm,
  OeV-Anschluss, Naehe Schulen/Laeden u.v.m.). Im Residualwert-Tool steuert die Mikrolage
  die Quantil-Positionierung der Marktmiete (50-90 %).
- **Marktanspannung**: Abgleich Angebote (Inserate) vs. Suchabos (Realmatch360) pro
  Preissegment und Zimmerzahl — zeigt Nachfrage-Ueberhaenge je Segment.
- Weitere Marktdaten-Werkzeuge (S. 43-46, 63/64): Wuest Reports (wuest.io/reports),
  WP Market & Location Info (MLI), Immo-Monitoring (halbjaehrlich), comparis
  «Was zahlt die Nachbarschaft», BFS (Leerwohnungsziffer, LIK), GIS-Browser (maps.zh.ch),
  SNB data.snb.ch.

## Lage als staerkster Treiber

Die Lage schlaegt am staerksten durch — formalisiert in der Lageklasse 1-10, die zugleich
den **Landwertanteil** steuert: [[lageklasse-landwertanteil]]. Bei fehlendem UBS-FS fuer
eine Gemeinde: Web-Recherche (Stand notieren) oder Ableitung aus Nachbargemeinde.

## Offen / zu vertiefen

- Konkrete Quantil-Werte je Gemeinde aus den UBS-FS als Kennwert-Tabelle extrahieren.
- Hedonik-Methodik (welches Modell: IAZI/Wuest/Fahrlaender) sauber belegen.
- Zu-/Abschlagslogik (Median → Objekt) als Checkliste formalisieren.
- Veraltete UBS-FS aktualisieren (Bestellung neuer Fact Sheets) → `wiki/wissensluecken.md`.
