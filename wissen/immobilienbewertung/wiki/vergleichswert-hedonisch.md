---
title: Vergleichswert / hedonische Bewertung
status: established
last_updated: 2026-06-14
sources: [IMMO-03 Hedonistische_Berechnungsweise (WP Standortinformation Beispiel-Report Langenthal, 21.06.2023), IMMO-02 UBS Real Estate Fact Sheets (Glossar 12/2023), IMMO-01 MA Marktwertanalyse-Projekte, Wuest-Kurs "Immobilien entwickeln" 06.2023 (S. 43-48, 63/64), Web-Recherche Hedonik-Modellfamilie CH (UBS/IAZI/bestag/HEV, Stand 06.2026)]
links: [[bewertungsverfahren-ueberblick]], [[datenquellen-registry]], [[lageklasse-landwertanteil]], [[ertragswert-dcf]], [[marktdaten-gemeinden/README]]
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

## Der WP-Standortreport — Aufbau (Beispiel Langenthal, 21.06.2023)

Der **Wüest Partner Standortinformation**-Report (Muster in `IMMO-03`) ist das hedonische
Pendant zum UBS-FS und zeigt, wie ein hedonischer Standortreport gegliedert ist. Er liefert
je Region (gewählte Gemeinde + umliegende MS-Region + Kanton + CH als Vergleichsraum) die
**Preisspektren als Quantile 10/30/50/70/90 %**, getrennt nach:

- **Wohnen**: Mietwohnungen (Nettomiete CHF/m²/Jahr), Eigentumswohnungen (Kaufpreis CHF/m²),
  Einfamilienhäuser (Kaufpreis CHF/m²) — jeweils plus **Zeitreihe** (quartalsweise Entwicklung
  der Quantile, QoQ/YoY-Veränderung) und **pro Objekt nach Zimmerzahl** (1- bis 8-Zimmer, in
  CHF/Monat bzw. CHF total). Beispiel Langenthal Mietwohnung Median 179 CHF/m²/J, Schweiz 190.
- **Geschäft**: Büroflächen, Gewerbeflächen, Verkaufsflächen (Nettomiete CHF/m²/Jahr).
- **Baulandpreise** Wohnen (MFH hohe AZ / EFH tiefe AZ) und Geschäft — **«nach der
  Residualmethode modellierte Preise»** (CHF/m² Land), halbjährliche Reihe. Das verknüpft den
  Vergleichswert direkt mit der [[residualwertmethode]]: der hedonische Baulandpreis ist selbst
  ein Residualwert-Output.
- **Anhang Datengrundlagen**: jede Datengrundlage mit Erhebungsstand + letzter Aktualisierung
  + Frequenz (Baulandpreise halbjährlich, Preisspektren vierteljährlich, Regionalisierung BFS/
  Swisstopo jährlich). → **Stand immer aus dem Anhang übernehmen**, nicht aus dem Abfragedatum.

Quellen-Disclaimer von WP: Daten ohne Gewähr für Vollständigkeit/Richtigkeit/Aktualität — als
Markteinordnung, nicht als Punktwert zu lesen.

## UBS-FS vs. WP-Standortreport — beide nutzen Quantile

Beide Reports arbeiten mit demselben Quantil-Prinzip (10/30/50/70/90 %, Median = Referenz).
Die UBS-FS-Methodik (Quantil-Box in fünf Fünfteln, 11-Kriterien-Standort-Rating von WP,
BFS-Gemeindetyp, MS-Region) ist in [[marktdaten-gemeinden/README]] dokumentiert; die je
Gemeinde kompilierten Quantil-Tabellen liegen unter `wiki/marktdaten-gemeinden/`. Faustregel
für die Praxis: **UBS-FS** = schnelle Gemeinde-Faktenbasis (eine Seite je Nutzung), **WP-
Standortreport** = tiefere Zeitreihen + Bauland-Residualpreise + Objektgranularität nach
Zimmerzahl.

## Hedonik-Modellfamilie in der Schweiz (T7)

Die hedonischen Standardanbieter in der Schweiz und ihre Gemeinsamkeiten (Web-Recherche
06.2026 — die Reports nennen das zugrunde liegende Modell meist nicht explizit, daher diese
Einordnung als Methoden-Kontext, `emerging`):

- **Anbieter:** **Wüest Partner**, **IAZI** (Informations- und Ausbildungszentrum für
  Immobilien), **Fahrländer Partner (FPRE)** und **PriceHubble** sind die etablierten
  hedonischen Modellbetreiber; UBS, ZKB und die meisten Banken-Online-Tools rechnen mit einem
  dieser Modelle im Hintergrund.
- **Methodenkern (allen gemeinsam):** **Regressionsanalyse** über eine grosse Stichprobe
  realisierter Transaktionen. Jede Objekteigenschaft erhält einen eigenen Preisbeitrag
  («impliziter Preis»); aufsummiert ergeben sie den Schätzwert. Typisch **~70 Kriterien**
  (Lage/Mikrolage, Wohnfläche, Zimmerzahl, Baujahr, Zustand/Ausbaustandard, Grundstück,
  Aussicht/Besonnung). Das UBS-Modell wurde **1999 von Wüest Partner gemeinsam mit UBS
  entwickelt** und stützt sich aktuell auf **> 20'000 Freihandtransaktionen pro Jahr**.
- **Datengrundlage:** fast ausschliesslich **effektiv abgeschlossene Handänderungen** (nicht
  Inserate), von Banken/Hypothekargebern bereitgestellt → höhere Genauigkeit als inseratsbasierte
  Modelle. Unterschiede zwischen den Anbietern liegen primär in Datenpool und Modellspezifikation,
  nicht im Prinzip.
- **Einsatzgrenze (wichtig für die Verfahrenswahl):** das hedonische Modell ist nur für
  **standardisierte selbstbewohnte Objekte (EFH, EW)** mit ausreichend Vergleichstransaktionen
  belastbar. Für **Mehrfamilien-/Renditeobjekte, Gewerbe und atypische/Spezialobjekte** versagt
  es (zu wenige vergleichbare Transaktionen, Wert ertragsgetrieben) → dort **Ertragswert/DCF**
  ([[ertragswert-dcf]]) bzw. Realwert ([[realwert-sachwert]]) führend. Das deckt sich mit der
  Gewichtungslogik in [[bewertungsverfahren-ueberblick]].
- **JANS-Praxis:** die UBS-FS-Quantile (Gemeinde-Artikel) sind das hedonische Output-Surrogat
  für den Markt-Check; der Bewerter positioniert das konkrete Objekt im Quantil (siehe
  Mikrolage/Marktanspannung oben). Die Hedonik liefert die **Markteinordnung**, die finale
  Objektbewertung bleibt Bewerterleistung (Zu-/Abschläge).

## Lage als staerkster Treiber

Die Lage schlaegt am staerksten durch — formalisiert in der Lageklasse 1-10, die zugleich
den **Landwertanteil** steuert: [[lageklasse-landwertanteil]]. Bei fehlendem UBS-FS fuer
eine Gemeinde: Web-Recherche (Stand notieren) oder Ableitung aus Nachbargemeinde.

## Offen / zu vertiefen

- ✓ 2026-06-12 (T7 teilweise): WP-Standortreport-Aufbau + UBS-FS-Methodik (Glossar) belegt;
  Quantil-Tabellen für 6 Gemeinden kompiliert (Wangen/Zollikon/Maur/Wald/Wädenswil/Einsiedeln,
  siehe [[marktdaten-gemeinden/README]]).
- ✓ 2026-06-14 (T7): Hedonik-Modellfamilie (Wüest/IAZI/Fahrländer/PriceHubble), Methodenkern
  (Regression, ~70 Kriterien, > 20'000 Handänderungen/Jahr) und Einsatzgrenze (nur EFH/EW)
  belegt — siehe Abschnitt «Hedonik-Modellfamilie». Offen bleiben die konkreten Variablen-
  Gewichte (von den Anbietern nicht offengelegt).
- ✓ 2026-06-14 (T7): alle 10 UBS-FS kompiliert (neu Thalwil/Muri/Regensdorf/Luzern), siehe
  [[marktdaten-gemeinden/README]].
- Zu-/Abschlagslogik (Median → konkretes Objekt) als Checkliste formalisieren (Mikrolage,
  Zustand, Ausbau, Stockwerk/Aussicht).
- Veraltete UBS-FS aktualisieren (Wald/Wädenswil/Einsiedeln Stand 2023-Q3, Maur 2024-Q1
  > 18 Mt.) → `wiki/wissensluecken.md` D1.
