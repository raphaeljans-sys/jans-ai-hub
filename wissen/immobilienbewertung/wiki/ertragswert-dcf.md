---
title: Ertragswert / DCF — Kapitalisierung und Diskontierung
status: established
last_updated: 2026-06-12
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1/3, S. 51-70 + 196-215 eingearbeitet), Schaetzungsanleitung Kap. 5 (Tab. 14/15 Mietwert-Korrekturfaktoren, Tab. 21/23 Kapitalisierungssatz, Tab. 25-28 Gastgewerbe), IMMO-03 Abzinsung/Disskontierung, IMMO-03 Residualwert]
links: [[residualwertmethode]], [[bewertungsverfahren-ueberblick]], [[investorenmarkt-makro]], [[vergleichswert-hedonisch]], [[flaechendefinitionen-sia]]
---

# Ertragswert / DCF — Kapitalisierung und Diskontierung

Fuer **Renditeliegenschaften** (Wohn-/Geschaeftsobjekte, die als Kapitalanlage gehalten
werden) ist der Wert die Summe der **diskontierten zukuenftigen Geldfluesse**. Die
Mieteinnahmen bilden die Verzinsung des investierten Kapitals (Wuest-Kurs S. 11).

## Zwei Spielarten

### 1. Einfache Kapitalisierung (Ewige Rente)
```
Ertragswert  =  Nettomietertrag p.a.  /  Kapitalisierungssatz
```
- Schnell, fuer stabile Objekte. Der **Kapitalisierungssatz** buendelt Verzinsung +
  Risiko + Bewirtschaftung (Basiszinssatz + Zuschlaege, Wuest-Kurs S. 207).
- Rechenbeispiel WP (S. 207): MFH mit Nettomietertraegen 200'000 p.a. (11 Whg. a 2'000
  netto/Mt., 1 leer; Eigentuemeraufwaende = 1/6 der Ertraege), Kapitalisierungssatz 4 %
  → Ertragswert CHF 5'000'000 = 200'000 / 0.04.
- Mathematik (S. 59): ewiger Barwert BW = C/z (einfache Kapitalisierung); Barwert einer
  Zahlung BW = C/(1+z)^T; Rentenbarwert ueber N Jahre BW = C·(1/z − 1/(z(1+z)^N)).
  Cash und Zins beide netto ODER beide brutto einsetzen. In der Residualwertmethode wird
  die Kapitalisierung **Netto-Ertragswert / Diskontierung** angewendet.
- **Anfangsrendite** (S. 208): Kaufpreis = Nettomietertrag im 1. Jahr / Nettorendite;
  umgekehrt Nettorendite = Nettomietertrag 1. Jahr / Kaufpreis. Bruttorendite = Soll-
  Mietertrag ohne Abzuege (ohne NK) / Kaufpreis (S. 57).

#### Aufbau des Kapitalisierungssatzes (Schaetzungsanleitung Kap. 5, Tab. 21/23)

Der Kapitalisierungssatz = **Basiszinssatz** (gewichteter 5-Jahres-Durchschnitt der variablen
ersten Hypotheken der Kantonalbank) **+ Zuschlaege fuer die Bewirtschaftungskosten**. Die
Zuschlaege steigen mit wirtschaftlichem Alter/Abnuetzungsgrad. Komponenten (Tab. 21, MFH):
- **B/U/V** = Betriebs-, Unterhalts-, Verwaltungskosten; **A** = Abschreibung/Rueckstellung
  fuer Instandsetzung; **R** = Risiko fuer Mietzins.

Richtwerte MFH massiv (Summe B/U/V + A + R, je nach Alter bis 10 / bis 30 / bis 60 / aelter):
- bis 6 Whg.: ~**0.7-2.4 %** (jung → alt); bis 15 Whg.: ~0.8-2.6 %; ueber 15 Whg.: 0.9-2.6 %.
- Leicht/gemischte Bauweise liegt hoeher (mehr Unterhalt), Geschaeft/Gewerbe hoeher als Wohnen
  (Tab. 21: Gewerbe massiv ~2.0-3.0 %). EFH siehe Tab. 23 (nach Bauart/Qualitaet/Alter).

Diese Zuschlaege erklaeren, warum aeltere/unterhaltsintensive Objekte mit hoeherem
Kapitalisierungssatz (= tieferem Ertragswert) gerechnet werden. ⚠ Basiszinssatz an die
Kantonalbank gebunden → bei Anwendung aktuellen Stand pruefen (Marktpuls T10); fuer
marktorientierte Bewertungen den **Diskontsatz** (unten, WP-Anker) fuehren.

### Mietwertberechnung — vom Basismietwert zum Objektmietwert (Tab. 14/15)

Wo keine Ist-Miete vorliegt (Eigennutzung, Leerstand, Plausibilisierung), wird der Mietwert
aus dem **örtlichen Basis-Mietpreisniveau** abgeleitet und qualitativ korrigiert. Die
Schätzungsanleitung kennt dafür zwei Korrektur-Logiken:

**Tab. 14 — Korrekturfaktoren Zuschläge/Abzüge zum Basismietwert (Punktesystem).** Die
Wohnlage wird auf einer Notenskala 1-10 in vier Kriterien beurteilt — *Örtliche Lage*,
*Zugangsverhältnisse/Umgebung*, *Besonnung/Aussicht/Orientierung* (je Faktor ×1) und
*Immissionen* (Faktor ×2). Punkte-Summe (min. 5, max. 50) → Zu-/Abschlag: 50 P = +20 %,
40 P = +10 %, **30 P = 0 % (Mittel)**, 20 P = -10 %, ≤10 P = -20 %. Ergänzend Zuschläge nach
**Bauweise** (z.B. freistehendes EFH Umschwung normal +30 %, Attikawohnung +20 %, Wohnung im
MFH +0 %), **wirtschaftlichem Alter/Zustand** (neu 0 % bis sehr stark abgenützt -30 %) und
**Heizungsart** (Zentralheizung/WP 0-5 % Abzug bis Einzelöfen Holz/Kohle -21…-25 %).

**Tab. 15 — Korrekturfaktoren für die Mietwertberechnung (Kriterienraster ±9 %).** Acht
Kriterien, je in Stufen von **+9 % … N (neutral) … -9 %**:

| Kriterium | +9 % (Bestwert) | N (neutral) | -9 % (schlechtester Wert) |
|---|---|---|---|
| Wohnlage (Zone/Quartier) | Bevorzugt (Villenquartier) | Mittelmässig | sehr schlecht (Industrie) |
| Besonnung/Sicht | Ganzjährig, aussergewöhnlich | Zufriedenstellend | sehr stark beeinträchtigt |
| Verkehrslage (Distanz/Erschl.) | bis 4 Min / optimal | bis 12 Min / normal | über 20 Min / sehr ungünstig |
| Immissionen (Lärm/Luft) | Keine | Zumutbar | Unzumutbar |
| Wirtschaftliches Alter | Neuwertig | mittel abgenützt | sehr stark abgenützt |
| Haustechnik | luxuriös | üblicher Standard | absolut kein Komfort |
| Bad/WC (Apparatebestück.) | luxuriös, viele Räume | üblicher Standard | sehr mangelhaft und veraltet |
| Küche (Ausstattung) | luxuriös | üblicher Standard | stark veraltet |
| Wohnräume/Wohnwert | luxuriös und sehr geräumig | zeitgemäss/normal | sehr mangelhaft |
| Zusatznutzungen | luxuriöse Anlagen, Cheminée | übliche Anlagen, Balkon | weder Anlagen noch Balkon |

Die einzelnen Korrekturen werden zum **Total (+ oder -)** auf den Basismietwert summiert.
Bezugsgrösse ist die Raumeinheit/Nettowohnfläche → [[flaechendefinitionen-sia]] (RE Tab. 13,
Nutzflächen Tab. 12). So entsteht aus dem hedonischen Median ([[vergleichswert-hedonisch]],
Marktdaten je Gemeinde) ein objektscharfer Mietwert. ⚠ Schätzungsanleitung Stand 2003 — die
**Prozentstufen** sind robust, der **Basismietwert** ist immer aktuell (UBS-FS/WP) anzusetzen.

### 2. DCF (Discounted Cash Flow)
```
Ertragswert  =  Σ  CF_t / (1+i)^t   +   Terminalwert / (1+i)^T
              t=1..T
```
- **CF_t** = Mietertrag − Bewirtschaftung − Unterhalt/Instandsetzung − nicht umlagefaehige
  Kosten, Jahr fuer Jahr ueber den Betrachtungshorizont T (oft 10 J. explizit, dann
  Terminalwert; in der Schaetzungspraxis teils ueber den ganzen Lebenszyklus ~40+ J.).
- **i** = Diskontsatz (realer/nominaler Satz; Real- vs. Nominalrechnung sauber trennen).
- **Terminalwert** = kapitalisierter CF nach Periode T (Exit-/Endwert).

## Diskontsatz — die heikelste Annahme

Der Diskontsatz ist die **massgebliche Variable der Marktwertermittlung**; er wird durch
die Zahlungsbereitschaft der Investoren bestimmt. Die «Hard Facts» (Mietpotenzial,
Leerstand, Investitionsbedarf) sind objektiv schaetzbar — verschiedene Schaetzer sollten
etwa auf den gleichen Cashflow kommen; die Diskontierung bestimmt je Investor die
Zahlungsbereitschaft (vgl. Bieterverfahren). Er entspricht einer **Gesamtkapitalrendite**
ohne EK/FK-Differenzierung (Wuest-Kurs S. 53).

### WP-Empfehlung Neubau-Wohnbau (Stand Sommer 2023, S. 52)

| Lage | Diskontierung (real) |
|---|---|
| Zuerich und Genf | 2.2 % |
| andere Stadtzentren | 2.3-2.5 % |
| Durchschnittsgemeinde | 2.7 % |
| schlechte Gemeinde | 3.0 % |
| **Gewerbe** | **+0.6 bis +1.5 Prozentpunkte** Zuschlag je nach Risiko |

### Erfahrungswerte 2023 (S. 55)
- Beste Lagen Wohngebaeude: ~**2.1 %**; Neubauten Durchschnittsgemeinden **2.6-2.8 %**;
  schlechte, teils leerstehende Altbauten bis ~**3.3 %**.
- Geschaeftsliegenschaften (Buero/Gewerbe): **2.7-3.8 %**; Risikoliegenschaften (Hotels,
  EKZ an schlechten Lagen) hoeher.
- Kleine MFH werden **tiefer** diskontiert als grosse Ueberbauungen (einfacher handelbar,
  auch fuer Privatanleger erschwinglich → groesserer Abnehmerkreis); Neubauten etwas
  tiefer als Altbauten.

### Herleitung Risikozuschlagsmodell (S. 54)
Risikofreier Zinssatz (typ. Bundesobligation) + immobilienspezifisches Basisrisiko
(Illiquiditaetspraemie) + immobilienspezifisches Risiko (Makrolage, Mikrolage, Markt-
segment, Ertragsrisiko, Objektqualitaet, Objektgroesse, Ausnuetzungsreserven, Baurecht,
Eigentumsbeschraenkung; Kleinanlageobjekt als Abschlag). Pruefen: Brutto-/Nettorendite-
Relation, Makrolagenrating der Gemeinde (WP Immo-Monitoring/Reports), Objektgroesse.

### Zins-Sensitivitaet (Merkzahlen)
- **−20 Bps Diskontierung → Marktwert +16 %** (S. 62) — im Tiefzinsumfeld extrem sensibel.
- Barwert-Verlust ueber die Zeit (S. 69): bei 3 % Diskont sind nach 10/30/50 Jahren
  27/62/81.4 % des Werts «weggezinst»; bei 5 %: 38.9/77.4/92.0 %; bei 10 %: 62.2/94.6/99.2 %.
- Regressionen (S. 203/205/206): +100 Bps Rendite 10-j. Bundesobligationen → Preise MFH
  **−14 %**, Geschaeftsliegenschaften **−12 %**; +1 Pp 10-j. Hypothekarzins → STWE −6.7 %,
  EFH −7.2 %. Aber: Zinsanstiege werden oft von Inflation begleitet (Realzinsen kaum
  hoeher, Mieten steigen) → negativer Preiseffekt teilweise kompensiert.

→ Eine **JANS-Diskontsatz-Herleitungstabelle** (je Nutzung/Lage/Risiko) bleibt zu
kalibrieren (D3) — die WP-Anker oben sind die belegte Ausgangsbasis (Datenstand 2023,
bei Anwendung Marktpuls pruefen).

### JANS-Bewertungskonvention (aus realen Faellen belegt, Stand 06.2026)

Die effektiv in den JANS-Deliverables verwendeten Saetze (LB Thalwil 9568 28.03.2025, MA
Thalwil 26.11.2024, LB Ebmatingen 3932) — sie konkretisieren die WP-Anker fuer die JANS-Praxis:

| Groesse | JANS-Ansatz | Beleg / Kontext |
|---|---|---|
| **Kapitalisierung Mietobjekt** | **2.50 % / 40 J** | Thalwil + Ebmatingen LB (Ertragswert Miete) |
| **Diskontierung Residualwert (Wohnbau)** | **2.70 %** | MA Thalwil S. 9 (WP-Band 2.2-3.0 %, Durchschnittsgem.) |
| **Risiko-/Gewinnanteil Entwickler** | **8 %** (Band Bautraeger 10-12 %, hier tiefer) | RW-Tool Thalwil; Ebmatingen-LB rechnet **10 %** Risiko + 10 % PE |
| **Abschlag Baukosten (Landwert)** | **−5 %** | beide LB (Landwert Mietobjekt/Residualwert) |
| **PE-Kosten** (Makler/Bauherrentreuhand/Vermarktung) | **2-10 %** | Thalwil 2 %, Ebmatingen 10 % |
| **Finanzierung** | **5 %** (Landkauf 1.5 % / 4 J, Baukosten 1.2-1.5 % / 2 J) | beide LB |
| **Bruttoanfangsrendite-Schwelle Renditeobjekt** | **4.5 %** (< 4.5 % «duenn», > 5.5 % gut) | Neubau-Potenzial Wangen 2622 |
| **Bruttorendite Geschaeftsflaechen (grob)** | **5.5 %** | MA Thalwil S. 5 (vgl. [[realwert-sachwert]]) |
| **Grundstuecks-ROE-Ampel** | < 2 % unwirtschaftlich · 2-5 % selbsttragend · **> 5 % wirtschaftlich** | LB-Auswertungsbalken |

**Residualwert-Tool-Struktur (reverse-engineered aus MA Thalwil S. 9 — adressiert D4 teilweise):**
Wohnungsmix nach Zimmerzahl (1.5-5.5 Zi) mit je eigener **HNF/GF-Effizienz 0.73-0.83**;
Nettomiete CHF/Monat ohne NK je Typ → Soll-Ertrag → Nettoertrag p.a. nach Abzug
Betriebs-/Unterhaltskosten; Erstellungskosten BKP 1-9 + Risiko; **Residualwert =
Ertragswert − (Erstellungskosten + Risiko) − Abzuege** (Abbruch/Altlasten/Schadstoffe, im
Thalwil-Fall 200'000) → CHF/m2 GSF. Brutto-/Nettorendite nach Fertigstellung als
Kontrolle (Thalwil: Wert 7.575 Mio → Brutto 3.2 % / Netto 2.7 %).

## Mehrinvestitions-Logik (Zins als Hebel, S. 71/72)

Ob sich eine Mehrinvestition (hoeherer Standard) lohnt, haengt am Diskontsatz: Beispiel
Neubau 4'500 CHF/m2 HNF, Miete 260 CHF/m2a; Mehrinvestition +7 % (CHF 315/m2) generiert
+4 % Ertrag (CHF +10.4/m2a). Kapitalisiert mit 5 % → nur 208/m2 Mehrwert (Verlust −107);
mit 3 % → 347/m2 (+32); mit 2 % → 650/m2 Mehrwert. **Je tiefer der Zins, desto staerker
gewichtet der langfristige Mehrertrag gegenueber der kurzfristigen Mehrinvestition**
(Break-even im Beispiel bei ~4.1 %).

## Gastgewerbe / Spezialnutzungen — Umsatzmiete (Tab. 25-28)

Bei Gastgewerbe wird der Mietwert nicht über CHF/m², sondern als **Prozentsatz vom Umsatz**
(Umsatzmiete) ermittelt — die Liegenschaft verdient anteilig am Betriebserfolg
(Schätzungsanleitung Kap. 5, Tab. 25-28):

- **Tab. 27 Mietwertansätze Restauration** (% des Umsatzes, gilt für alle Lokale eines
  Betriebs): Schnellimbiss/Pizzeria/Spezialitätenrest. **9-11 %**; Restaurant gehobene Klasse
  **7-9 %**; Speise-/Quartierrestaurant **7-8 %**; Tea-Room/Cafeteria/Getränkewirtschaft
  **8-10 %**; Bergrestaurant **8-15 %**; Saalbetrieb 0-8 %; Nachtclub/Bar/Pub **12-16 %**.
- **Tab. 28 Mietwertansätze Logement** (% des Umsatzes): Luxushotel **30-45 %**; gehobene
  Klasse (4-Stern) 25-40 %; Mittelklasse (3-Stern) 20-30 %; gute Pension (2-Stern) 10-20 %;
  einfache Pension 8-15 %; Garnihotels 20-50 %.
- **Tab. 27 Sitzplatzberechnung**: fehlt die Sitzplatzzahl → aus Gastraum-Fläche schätzen,
  Normfläche je Sitzplatz Restauration/Bar/Café **1.0-1.5 m²**, Saal/Dancing 1.0-1.2 m².
- **Umsatzbestimmung pro Sitzplatz** (Richtwerte, Soll/Betriebstag, ohne MWST): Grossstadt-
  Zentrum ~Fr. 70, Stadt-Aussenbezirke ~40, Kleinstadt-Zentrum ~45, Gemeinde ~23.
- **Tab. 28 Umsatz pro vollbeschäftigte Person** (nur Restauration, **Kontrollrechnung**):
  Betriebsumsatz/Person Ø ~Fr. 102'300 (Band 84'400-134'600); Schnellrest. 80-160'000,
  Restaurant gehoben 90-130'000, Nachtclub/Bar 80-180'000.
- **Tab. 25/26 Abgrenzung Gross-/Kleininventar + Bewertungskriterien**: Grossinventar
  (Mietinventar, fest mit Gebäude verbunden — Lüftung/Kühlräume/eingebaute Kochherde) gehört
  zur Liegenschaft; Kleininventar (Kaufinventar — mobile Maschinen, Geschirr, Wäsche) nicht.
  Bewertungskriterien: Betriebskonzept, Angebotsumfang, Bau-/Betriebsqualität, Umfeld.

⚠ Quelle: Gastroconsult AG / Wirtschaftspolitischer Dienst Gastrosuisse, Stand 2003 — Ansätze
«mit allergrösster Vorsicht» und nur nach persönlichem Augenschein anzuwenden. Für JANS-
Healthcare/Wohnen selten direkt relevant, aber bei gemischten MFH mit Restaurant/Café im EG
(vgl. Bahnhofstrasse 27 Wangen, Arztpraxis-EG) als Plausibilisierung der Gewerbemiete nützlich.

## Verknuepfung

- Speist den **Endwert** in der [[residualwertmethode]] (Renditeobjekt).
- Mietniveau und Zins-/Anlagedruck-Kontext: [[investorenmarkt-makro]].
- Mietzins-Quantile zur Plausibilisierung: [[vergleichswert-hedonisch]].

## DCF in der WP-Praxis (S. 67/68)

Kontouebersicht ueber 10 Perioden + Exit: Soll-Mietertraege − Leerstand = Bruttoertrag;
Kosten = Betriebskosten (Versicherung/Verwaltung/Uebrige) + Instandhaltung + Instand-
setzung; Totalsanierungs-Beispiel im Jahr 6: CHF 1'550'000 (≈ CHF 119'000 pro Wohnung
bzw. 2'500 pro m2, Annahme WP) als negativer Cashflow («Cash loss»). Alle Jahres-
Nettoertraege + Exitwert werden auf den Barwert abgezinst.

## Offen / zu vertiefen

- ✓ 2026-06-12 (T13): Mietwert-Korrekturfaktoren Tab. 14 (Punktesystem + Bauweise/Alter/
  Heizung) und Tab. 15 (Kriterienraster ±9 %) sowie Gastgewerbe-Umsatzmiete Tab. 25-28
  eingearbeitet — damit ist die Schätzungsanleitung Kap. 5 vollständig erschlossen.
- ✓ 2026-06-09: Diskontsatz-Anker (WP-Empfehlung + Erfahrungswerte 2023), Risikozuschlags-
  modell, Kapitalisierungs-Mathematik und Zins-Sensitivitaeten eingearbeitet.
- JANS-Kalibrierung der Diskontsatz-Tabelle (D3) + Aktualisierung auf Zinsumfeld 2026
  (WP-Werte sind Stand 2023 → Marktpuls T10).
- Bewirtschaftungs-/Unterhaltsquoten je Objekttyp: WP-Richtwerte siehe
  [[residualwertmethode]] (Betriebskosten 4.5-6 % Soll-Ertrag, IH 13-16 / IS 17-25
  CHF/m2 HNF); JANS-Abgleich offen.
- Terminalwert-Multiplikator-Praxis; Excel-Formeln (D4).
- IMMO-03 Abzinsung/Disskontierung-Material und Kursnotizen vollstaendig einarbeiten.
