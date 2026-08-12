---
title: Vergleichswert / hedonische Bewertung
status: established
last_updated: 2026-08-13
sources: [IMMO-03 Hedonistische_Berechnungsweise (WP Standortinformation Beispiel-Report Langenthal, 21.06.2023), IMMO-02 UBS Real Estate Fact Sheets (Glossar 12/2023), IMMO-01 MA Marktwertanalyse-Projekte (Thalwil 9568 MA 241126: Bauland Mittel/Top → Marktwert-Synthese), Wuest-Kurs "Immobilien entwickeln" 06.2023 (S. 43-48, 63/64), Web-Recherche Hedonik-Modellfamilie CH (UBS/IAZI/bestag/HEV, Stand 06.2026), LB Langnau Giebelweg 12 (260603) — Bestand-vs-Abbruch-Entscheidlogik Run 6, BFS/EDI Wohnimmobilienpreisindex IMPI Q2-2026 (publ. 30.07.2026: 127.7 Punkte, Q4-2019=100, +0.7 % QoQ, +3.5 % YoY, EFH −0.4 % QoQ, ETW +1.6 % QoQ) — erste WP-UNABHAENGIGE amtliche Transaktionsreihe der KB, aufgenommen im Marktpuls 13.08.2026 samt Divergenzbefund IMPI vs. WP beim EFH-Quartalswert]
links: [[bewertungsverfahren-ueberblick]], [[datenquellen-registry]], [[lageklasse-landwertanteil]], [[ertragswert-dcf]], [[marktdaten-gemeinden/README]]
---

# Vergleichswert / hedonische Bewertung

Das **hedonische Verfahren** schaetzt den Marktwert aus statistischen Vergleichsdaten:
Aus vielen realisierten Transaktionen wird ein Preismodell gebildet, das den Wert eines
Objekts aus seinen Eigenschaften (Lage, Flaeche, Zimmer, Zustand, Baujahr, Ausbau)
ableitet. Geeignet v.a. fuer **Eigentumswohnungen und Einfamilienhaeuser** (Marktcheck MA).

## Datengrundlage bei JANS

- **UBS Real Estate Local Fact Sheets** (`IMMO - 02 Standort INFO`): Gemeinde-Profile mit
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

⚠ **Kein unabhängiger Zweitbeleg (Wissens-Chef Run 28, 07.08.2026).** Nicht nur das
Standort-Rating stammt von Wüest Partner: laut Quellenverzeichnis des UBS Real Estate Local
Fact Sheet (belegt am Exemplar Wangen SZ 12/2025, S. 13) stammen auch **Immobilienpreise,
Baulandpreise, Angebotsmenge und -ziffer, Marktabsorptionspotenzial und Insertionsdauer** von
Wüest Partner. UBS-FS und WP-Standortreport sind für Preisspektren also **dasselbe
Datenuniversum**; wer «UBS gegen WP» prüft, prüft WP gegen WP. Eine echte Zweitmeinung liefern
nur **IAZI/CIFI** oder die kantonale Handänderungsstatistik. **Wichtige Unterscheidung, damit
kein Scheinwiderspruch entsteht:** die LFS-Preisspektren sind **Nettoangebotspreise**
(Glossar LFS S. 13), während der Abschnitt «Hedonik-Modellfamilie in der Schweiz (T7)» weiter
unten das **transaktionsbasierte Bewertungsmodell** beschreibt (> 20'000 Freihandtransaktionen
pro Jahr). Preisstatistik und hedonisches Modell sind zwei verschiedene Ebenen desselben
Anbieters. Die Faustregel oben bleibt gültig. Quellenvergleich im Detail:
`wissen/immobilienbewertung/outputs/2026-08-07_iazi-location-report-vs-ubs-lfs-wp-standortinfo.md`.

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

## Zu-/Abschlagslogik Median → konkretes Objekt (Checkliste, T7b)

Der hedonische Median ist ein **Gemeinde-/Segment-Durchschnitt**; die Objektbewertung
positioniert das konkrete Objekt im Quantil. Schrittfolge (JANS-Praxis, belegt aus den realen
LB/MA-Faellen — vgl. [[projektstruktur-deliverables]]):

1. **Basiswert waehlen:** UBS-FS-/WP-Median (50 %) der zutreffenden Nutzung (EW/Miete/Bauland)
   und Gemeinde als Ausgangspunkt. **Neubau** wird grundsaetzlich ins obere Quantil gehoben
   (Q70-Q90), da die Spektren mehrheitlich Altbauten enthalten (s.o.).
2. **Mikrolage** gegen den Gemeindeschnitt (Zentralitaet, Hang/Aussicht, Laerm, OeV, Naehe
   Schulen/Laeden) → Quantil-Korrektur. Formal abbildbar ueber das Punktesystem/Kriterien-
   raster der Schaetzungsanleitung (Tab. 14/15, je ±9-20 %, siehe [[ertragswert-dcf]]).
3. **Zustand / wirtschaftliches Alter:** neuwertig 0 % bis sehr stark abgenuetzt bis −30 %
   (Tab. 14) — bei Bestand ueber die Alterswertminderung ([[realwert-sachwert]]).
4. **Ausbaustandard / Haustechnik / Bad-Kueche:** luxurioes … ueblicher Standard … veraltet
   (Tab. 15, je ±9 %).
5. **Stockwerk / Aussicht / Besonnung / Zusatznutzungen** (Attika +, EG/Nordlage −; Balkon/
   Cheminee/Lift).
6. **Marktanspannung im Segment** (Realmatch360 Angebot vs. Suchabos je Zimmerzahl/Preis):
   Nachfrageueberhang erlaubt Aufschlag, Angebotsueberhang zwingt zum Abschlag.

**JANS-Praxis-Anker (Quantil-Wahl nach Lage, belegt):** Premiumlage Thalwil → ME und
STWE-Kaufpreis am **Q90** (470 CHF/m2/J bzw. 20'000 CHF/m2); Durchschnittslage Ebmatingen →
**Q50-60** (283 bzw. 12'000). Der **Bauland-/Landwert** wird aus dem UBS-FS-Baulandpreis nach
**Lageklasse** (Schlecht/Mittel/Top) gezogen (Wangen: «Mittel» 2'702 CHF/m2; Thalwil-MA:
Mittel 4'268 / Top 5'508 → Synthese-Marktwert 4'850). ⚠ Quantil-/Stufenwahl ist
Bewerterleistung und immer zu begruenden.

## Entscheidlogik «Bestand halten vs. Abbruch + Neubau» (Langnau 3338)

Bei **Bestandesliegenschaften** ist der Vergleichswert nicht nur eine Wertzahl, sondern die eine
Haelfte einer Entscheidung: **Bestandeswert (Vergleichswert/hedonisch) gegen Entwicklungs-Landwert
(Residualwert Abbruch+Neubau)**. Die hoehere Zahl gewinnt. Belegt aus LB Giebelweg 12, 8135
Langnau a.A. (03.06.2026):

- **A Bestandeswert (hedonisch):** Wohnflaeche (aus BGF abgeleitet) × Marktanker CHF/m2, grosses
  Grundstueck wertstuetzend, Abschlag fuer Heizung/energetische Erneuerung/Hanglage → **1.9–2.3 Mio**.
- **B Entwicklungs-Landwert (Residual):** Verkaufserloes Neubau − Erstellung inkl. Abbruch −
  Nebenkosten/Finanzierung/Marge (~18 %) → **0.8–1.2 Mio** ([[residualwertmethode]]).
- **Entscheid:** A > B ⇒ **Bestand halten**. Treiber: die Zone ist **m3-/BMZ-gedeckelt**, die
  Reserve ueber dem Bestand klein (+248 m3) → Abbruch wuerde Wert vernichten.

**Durabel:** Bei Bestand immer beide Werte rechnen und gegenueberstellen. Eine volumengedeckelte
Zone (BMZ statt AZ/GF) mit kleiner Reserve kippt die Antwort fast immer auf «Halten»; die Reserve
dann als Aufstockungs-/Erweiterungsoption pruefen, nicht als Abbruch-Neubau. Datenquelle bei
fehlendem UBS-FS: **Popety.io-Land-Analyse** (Ausnuetzungsreserve parzellenscharf,
[[datenquellen-registry]]). Deliverable-Struktur: [[projektstruktur-deliverables]].

## Lage als staerkster Treiber

Die Lage schlaegt am staerksten durch — formalisiert in der Lageklasse 1-10, die zugleich
den **Landwertanteil** steuert: [[lageklasse-landwertanteil]]. Bei fehlendem UBS-FS fuer
eine Gemeinde: Web-Recherche (Stand notieren) oder Ableitung aus Nachbargemeinde.

## Der amtliche Gegencheck: BFS-Wohnimmobilienpreisindex (IMPI), neu ab 13.08.2026

Die KB stuetzte sich fuer die Preisentwicklung bisher fast ausschliesslich auf **Wuest
Partner** — auch dort, wo sie es nicht auf den ersten Blick tut: der Wissens-Chef hat am
07.08.2026 belegt, dass selbst die **UBS Local Fact Sheets ein WP-Derivat** sind
(Immobilien-/Baulandpreise, Standortratings und Angebotsziffern stammen laut Quellen-
verzeichnis von Wuest Partner). Damit war die Vergleichswert-Seite bis jetzt ohne echte
Zweitmeinung ([[datenquellen-registry]]).

Der **BFS-Wohnimmobilienpreisindex IMPI** schliesst diese Luecke als **amtliche, von WP
unabhaengige** Reihe. Er misst die Preisentwicklung **effektiv gehandelter** Objekte
(Handaenderungen), nicht Angebotspreise, und ist quartalsweise verfuegbar.

**Stand Q2-2026** (publ. 30.07.2026, BFS/EDI):

| Groesse | Wert Q2-2026 |
|---|---|
| Indexstand (Q4-2019 = 100) | **127.7** |
| Veraenderung zum Vorquartal | **+0.7 %** |
| Veraenderung zum Vorjahresquartal | **+3.5 %** |
| davon Einfamilienhaeuser | **−0.4 % QoQ** |
| davon Eigentumswohnungen | **+1.6 % QoQ** |
| staedtische Gemeinden / kleine Agglomerationen | +1.8 % |
| laendliche Gemeinden | stabil |

### ⚠ Der Befund, der die Nutzung dieser Reihe erst begruendet

Fuer **dasselbe Quartal und dasselbe Segment** widersprechen sich die beiden Quellen:

| Quelle | EFH Q2-2026 QoQ | EFH Q2-2026 YoY |
|---|---|---|
| BFS IMPI (amtlich, Transaktionen) | **−0.4 %** | +3.5 % (Total) |
| WP Immo-Monitoring (publ. 16.07.2026) | **+1.5 %** | +4.3 % |
| UBS SREBI Q2-2026 (publ. 06.08.2026) | — | +3.6 % (Wohneigentum) |

Das ist **kein Fehler einer der beiden Reihen**, sondern eine Methodendifferenz: das BFS
misst beurkundete Handaenderungen mit Publikationsverzug und Stichprobenschwankung, WP
modelliert hedonisch und bezieht Angebotsdaten ein. Beim **YoY** liegen alle drei Reihen mit
+3.5 bis +4.3 % nahe beieinander — die Divergenz steckt praktisch ganz im **Quartalswert**.

**Arbeitsregel fuer JANS-Deliverables (ab 13.08.2026):**

1. **Nie einen einzelnen Quartalswert als Aussage ueber den Markt verwenden.** Quartalswerte
   der EFH-Reihen sind volatil und quellenabhaengig widerspruechlich. Fuer Trendaussagen die
   **YoY-Rate** nehmen, dort sind sich die Quellen einig.
2. **Bei Aussagen zur Preisentwicklung beide Reihen nennen**, wenn sie auseinanderliegen —
   die Bandbreite ist die ehrliche Antwort, nicht der bequemere Wert.
3. **Quelle und Publikationsdatum immer mitfuehren.** Beide Reihen werden **rueckwirkend
   revidiert**: belegt am SREBI, dessen Q1-2026 zwischen der Mai- und der August-Publikation
   von 0.69 auf 0.62 zurueckgesetzt wurde ([[investorenmarkt-makro]]). Werte aus zwei
   verschiedenen Publikationsstaenden nie in derselben Zeitreihe mischen.
4. Der IMPI ersetzt **nicht** die Quantile fuer die Objektbewertung — er liefert keine
   Preisniveaus je Gemeinde, nur die Entwicklung. Fuer das Niveau bleiben UBS-FS/WP-Report
   massgebend (mit dem Vorbehalt, dass beide WP-basiert sind).

Quelle: BFS/EDI, «Die Preise fuer Wohneigentum sind im 2. Quartal 2026 um 0,7% gestiegen»,
publ. 30.07.2026; Wuest Partner Immo-Monitoring Q2-2026 (via cash.ch 16.07.2026); UBS CIO
SREBI Q2-2026 (publ. 06.08.2026). Alle Web-Check 13.08.2026 (Marktpuls vorgezogen).

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
- ✓ 2026-08-13 (Marktpuls vorgezogen): **BFS-IMPI als erste WP-unabhaengige amtliche
  Transaktionsreihe aufgenommen** (Q2-2026 = 127.7, +3.5 % YoY) — schliesst die vom
  Wissens-Chef am 07.08.2026 gemeldete Luecke «kein unabhaengiger Gegencheck zur
  WP-Datenfamilie» fuer die **Preisentwicklung**. Mitgeliefert: der Divergenzbefund
  IMPI −0.4 % gegen WP +1.5 % beim EFH-Quartalswert und die daraus abgeleitete Arbeitsregel
  (YoY statt QoQ, Bandbreite nennen, Publikationsstand mitfuehren). **Nicht geschlossen** ist
  die Luecke fuer die **Preisniveaus** je Gemeinde (Quantile) — dort bleibt die KB
  WP-basiert; ein echter Niveau-Gegencheck braucht IAZI/CIFI oder die kantonale
  Handaenderungsstatistik (Bring-Schuld Raphael, unveraendert offen).
