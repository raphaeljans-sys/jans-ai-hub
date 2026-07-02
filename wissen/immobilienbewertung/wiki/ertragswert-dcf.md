---
title: Ertragswert / DCF — Kapitalisierung und Diskontierung
status: established
last_updated: 2026-07-02
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1/3, S. 51-70 + 196-215 eingearbeitet), Schaetzungsanleitung Kap. 5 (Tab. 14/15 Mietwert-Korrekturfaktoren, Tab. 21/23 Kapitalisierungssatz, Tab. 25-28 Gastgewerbe), IMMO-03 Abzinsung/Disskontierung (231231_Residualwert und Diskontierung.docx, R. Jans 31.12.2023 — Diskontsatz-Dekomposition 2.0+0.5 %, Betriebskosten-Pauschale 5x0.5 %, Rechenkaskade + Abzinsungsformel, Run 10; Disskontierung.docx — Healthcare-Diskontsatz-Anker 4-8 %, Run 10), IMMO-03 Residualwert (Kursnotizen IMG_7064-67, Run 10), IMMO-06 Healthcare (Baukredit-Bericht Neubau Pflegeheim Herosé Aarau, Stadtrat Aarau GV 2018-2021/285, 13.12.2021 — Annuitaets-Finanzierungsmodell CURAVIVA 33 J / BWO-Referenzzins 1.25 %, Hotellerie-Taxe, KVG-Restfinanzierung; ARTISET Betriebswirtschaftliche Instrumente KVG 17.04.2023 — KoRe-Kostentraeger LZP/ToNs/AUEP, Run 12), IMMO-01 reale LB/MA-Faelle (Thalwil 9568 LB 250328 + MA 241126, Ebmatingen 3932 LB, Wangen 2622) — JANS-Bewertungskonvention Run 5; LB Wangen Bahnhofstr. 27 (260609) — Ertragswert-Band/Kaufpreispruefung/Ausbau-Rendite-Impact Run 6; IAZI/CIFI DCF-Methodik (Web 2026) + Marktkontext-Zinsumfeld 06.2026 (SNB 0.00 % / Referenzzins 1.25 %) — Diskontsatz-Methodik D3 Run 7; 10-j Bundesobligation Jahresmittel ~0.24-0.40 % (tradingeconomics/SNB-Datenportal, Web 06.2026) — risikofreies Basisniveau + konsolidierte JANS-Diskontsatz-Tabelle D3 Run 9/11]
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

### Diskontsatz-Methodik der Bewertungshaeuser + Marktkontext 2026 (D3-Teilantwort)

Wie die fuehrenden Schweizer Schaetzer (Wuest Partner, IAZI/CIFI) den Diskontsatz herleiten —
als Methodengeruest fuer die noch offene JANS-Tabelle (Quelle: IAZI/CIFI «Discounted
Cashflow-Methode», Web, Stand 2026; bestaetigt die WP-Kurslogik S. 53/54):

- **Marktgerecht + risikoadjustiert je Liegenschaft:** Es gibt keinen pauschalen Satz; jede
  Liegenschaft erhaelt einen aus **Transaktionen hergeleiteten, gemeindespezifischen
  risikoadaequaten Diskontsatz** (hauseigene Marktmodelle fuer Mieten/Preise/Diskontsaetze je
  Gemeinde CH).
- **Plausibilisierung ueber den Kapitalmarkt (indirekte Herleitung):** Das risikolose
  Basisniveau wird ueber das **Jahresmittel einer 10-jaehrigen Bundesobligation** bestimmt,
  darauf die Risikozuschlaege (Illiquiditaet + objektspezifisches Risiko, vgl.
  Risikozuschlagsmodell oben). Das ist die Bottom-up-Gegenprobe zum aus Transaktionen
  abgeleiteten Satz.
- **Marktkontext 2026 (warum die WP-2023-Anker weiter gelten):** Das Zinsumfeld ist 2026 wieder
  sehr tief — **SNB-Leitzins 0.00 %** (gehalten 18.06.2026), **Referenzzins 1.25 %**,
  Renditen 10-j. Bundesobligationen tief ([[investorenmarkt-makro]]). Damit liegt das
  risikolose Basisniveau aehnlich/tiefer als im WP-Kursstand Sommer 2023 → die WP-Diskontanker
  (Wohnbau real **2.1-3.0 %**, Gewerbe +0.6-1.5 Pp) bleiben als Ausgangsbasis **plausibel und
  eher am unteren Rand** anzusetzen; kein genereller Aufschlag noetig. ⚠ Achtung Sensitivitaet:
  −20 Bps → Marktwert +16 % (s.o.) — kleine Satzwahl, grosse Wertwirkung.
- **JANS-Praxis-Bruecke:** Die effektiv verwendeten **2.50 % Kapitalisierung / 2.70 %
  Diskontierung Residualwert** (JANS-Bewertungskonvention unten) liegen konsistent in diesem
  Band — sie sind die gelebte D3-Kalibrierung fuer Wohnbau Durchschnittsgemeinde ZH. Offen
  bleibt die vollstaendige Tabelle je Nutzung/Lage/Risiko (Bring-Schuld Raphael D3: Faustregeln
  real vs. nominal, Gewerbe-/Healthcare-Zuschlaege).

### JANS-Diskontsatz-Tabelle (D3 konsolidiert, Stand 06.2026)

Konsolidierung aller belegten Anker zu **einer** Herleitungstabelle (Run 9). Die Tabelle ist
**additiv und bottom-up** aufgebaut (Risikozuschlagsmodell S. 54) und wird gegen den
**top-down aus Transaktionen** abgeleiteten WP-Satz (S. 52/55) plausibilisiert — beide Wege
muenden in dieselbe Bandbreite. Saetze sind **real** (Schweizer Bewertungspraxis: realer
Diskontsatz auf real konstant gehaltene Mieten; nominale Variante siehe unten).

**Risikofreies Basisniveau (belegt, datiert):** Jahresmittel der **10-jaehrigen
Bundesobligation (Eidgenoss)**. Stand **Juni 2026 rund 0.24-0.40 %**, im Monatsverlauf
**sinkend** (4.6.: 0.40 %; 18.6.: 0.35 %; 26.6.: **0.24 %** — tiefster Stand seit Ende Maerz;
Quelle: tradingeconomics/SNB-Datenportal, Web 06.2026, Stand Run 11 2026-06-30) — also nahe
null, aehnlich/tiefer als im WP-Kursstand Sommer 2023. Das stuetzt die WP-2023-Anker und legt
sie umso klarer ans **untere Band**. Der weitere Rueckgang aendert die belegten Diskont-Zeilen
nicht (sie liegen ohnehin am unteren Rand), bestaetigt aber die Tieflage des Zinsumfelds.

**Additive Herleitung (bottom-up, Modell S. 54):**

| Komponente | Bandbreite | Beleg / Bemerkung |
|---|---|---|
| Risikofreier Basiszins (10-j Eidgenoss, Jahresmittel) | **~0.3 %** | Web 06.2026 (Spanne 0.24-0.40 %, Ende Juni sinkend auf 0.24 %); bei Anwendung Tagesstand pruefen |
| + Immobilien-Basisrisiko / Illiquiditaetspraemie | **+1.6 bis +1.9 Pp** | Rueckgerechnet, damit beste Lage Wohnen ~2.1 % ergibt (S. 55); *Annahme* |
| + Makro-/Mikrolage (Gemeinde-Rating) | **0 bis +0.9 Pp** | ZH/Genf 0 → Durchschnittsgem. +0.6 → schlechte Gem. +0.9 (aus S. 52 abgeleitet) |
| + Objekt-/Ertragsrisiko (Groesse, Qualitaet, Alter, Leerstand) | **0 bis +0.5 Pp** | Grosse Ueberbauung/Altbau/Leerstand am oberen Rand (S. 55) |
| = **Diskontsatz Wohnbau (real)** | **2.1-3.3 %** | deckt sich mit WP top-down (s.u.) |

**Konsolidierte Diskontsatz-Tabelle je Nutzung/Lage (real, Stand 06.2026):**

| Nutzung / Lage | Diskont real | Herkunft | Reife |
|---|---|---|---|
| Wohnen — Zuerich/Genf, beste Lage | **2.1-2.2 %** | WP S. 52/55 | belegt |
| Wohnen — andere Stadtzentren | **2.3-2.5 %** | WP S. 52 | belegt |
| Wohnen — Durchschnittsgemeinde (Neubau) | **2.6-2.8 %** | WP S. 52/55; JANS lebt **2.70 %** (Residualwert) | belegt |
| Wohnen — schlechte/teils leerstehende Altbauten | **3.0-3.3 %** | WP S. 55 | belegt |
| Geschaeft/Gewerbe (Buero) | **2.7-3.8 %** (Wohnen + 0.6-1.5 Pp) | WP S. 55/117 | belegt |
| Spezial/Risiko (Hotel, EKZ schlechte Lage) | **> 3.8 %** | WP S. 55 (Band offen) | belegt |
| **Healthcare (Pflege/Klinik)** | **~3.0-4.0 % real** (*Annahme*: Wohnen + Betreiber-/Spezialnutzungs-/Fungibilitaetszuschlag); JANS-Arbeitsnotiz nennt nominal 4-8 %; realer Herosé-Fall verankert die **Annuitaetsseite** (33 J / BWO 1.25 % → ~4 % Annuitaetsfaktor, kostenbasierte Taxe, s.o.) | realer CH-Fall Pflegeheim Herosé Aarau (2021) + Skill healthcare-wirtschaftlichkeit; JANS-Notiz Disskontierung.docx | *emerging* — Kosten-/Annuitaetsseite belegt (T17), Investoren-Markt-Diskont noch anzueichen |

**Real vs. nominal (Fisher):** Die obigen Saetze sind **real** und werden auf **real konstante**
Mieten angewendet (CH-Standard WP/IAZI). Wer **nominal** rechnet (Mieten mit erwarteter Teuerung
hochwachsen lassen), muss konsistent einen **nominalen Diskontsatz ≈ real + erwartete
Langfrist-Teuerung** ansetzen. Bei SNB-Inflationsziel < 2 % und Ist-Teuerung 0.6 % (05.2026,
[[investorenmarkt-makro]]) liegt die Langfrist-Annahme bei **~1.0 %** → nominaler Diskont
**~3.1-4.3 % Wohnen**. Real und nominal muessen denselben Wert ergeben; **nie real und nominal
mischen** (haeufigster DCF-Fehler).

⚠ **Anwendungs-Leitplanke (Sensitivitaet):** **−20 Bps Diskont → Marktwert +16 %** (S. 62).
Die Satzwahl ist die heikelste Annahme — im Band bleiben, nie scheingenau auf 1 Bp, und die
Wahl gegen Makrolagen-Rating + Brutto-/Nettorendite-Gegenprobe plausibilisieren.

**Noch offen (echte Bring-Schuld Raphael, D3):** die **JANS-eigenen Faustregeln** fuer den
Illiquiditaets-/Objektzuschlag (oben als *Annahme* ausgewiesen), die **Gewerbe-Feinabstufung**
je Mietersegment und der **Healthcare-Zuschlag** (real, sobald ein Pflegeheim-Bewertungsfall
vorliegt, T17). Die *belegten* Zeilen sind damit abschliessend; die *Annahme*-Zeilen warten auf
Raphaels Kalibrierung.

### JANS-Diskontsatz-Dekomposition + Betriebskosten-Pauschale (belegt, R. Jans 31.12.2023)

Raphaels eigene **datierte** Arbeitsnotiz «Residualwert und Diskontierung» (`IMMO-03 Abzinsung/
Disskontierung/231231_Residualwert und Diskontierung.docx`, R. Jans 31.12.2023, Run 10) belegt
zwei bisher als Bring-Schuld (D3) offene **JANS-Faustregeln** und die komplette Rechenkaskade:

**1. Diskontsatz-Dekomposition (schliesst D3-Faustregel teilweise):**
```
Diskontierung 2.5 %  =  Kapitalverzinsung 2.0 %  +  Abschreibung 0.5 %
```
Damit ist der in der JANS-Bewertungskonvention gelebte **2.50 %-Satz** nicht mehr nur ein Anker,
sondern additiv hergeleitet: 2.0 % Kapitalverzinsung (Verzinsung des gebundenen Kapitals) +
0.5 % Abschreibung/Rueckstellung. Das deckt sich mit dem Schaetzungsanleitungs-Aufbau
(Kapitalisierungssatz = Basiszins + B/U/V + A + R, oben) und **kalibriert die bisher
*Annahme*-markierte Bottom-up-Tabelle** fuer Wohnbau Durchschnittsgemeinde von der JANS-Seite her.

**2. Betriebskosten-Pauschale 2.5 % des Mietertrags (5 × 0.5 %):**

| Komponente | Anteil |
|---|---|
| Verwaltung, Versicherung, Versorgung | 0.5 % |
| Instandhaltung | 0.5 % |
| Instandsetzung | 0.5 % |
| Leerstand | 0.5 % |
| Liegenschaftssteuer | 0.5 % |
| **Total Betriebskosten & Unterhalt** | **2.5 %** (Pauschale, hier auf den Liegenschaftswert) |

Hinweis: Diese 2.5 %-Pauschale ist ein **JANS-Schnellansatz** in der fruehen Studie; in den
reifen LB/MA-Faellen wird differenzierter gerechnet (Betriebs-/Unterhaltsquoten 4.5-6 % Soll-
Ertrag, IH/IS in CHF/m2, siehe [[residualwertmethode]]). Die zwei Werte sind zwei Detaillierungs-
stufen, kein Widerspruch — fuer Onepager/Vorcheck die 2.5 %-Pauschale, fuers Gutachten die Quote.

**3. Belegte Rechenkaskade (worked example, gleiche Notiz):**
```
Residualwert  =  Ertragswert − Erstellungskosten
Ertragswert   =  Nettoertrag / Diskontierungssatz
Nettoertrag   =  Mietertrag − Betriebskosten & Unterhalt
Mietertrag    =  Jahresmiete CHF/m2 × HNF
```
Zahlenbeispiel (Einsiedeln, 300 m2 HNF): Jahresmiete CHF 287/m2 (UBS Local Factsheet Einsiedeln,
Median 90 % → [[vergleichswert-hedonisch]]) × 300 m2 = **85'000** Mietertrag; − 30'000
Betriebskosten (≈ 2.5 % auf ~3.0 Mio) = **55'000** Nettoertrag; / 2.5 % = **2'200'000**
Ertragswert; − 2'100'000 Erstellungskosten = **100'000** Residualwert. Die genannte Brutto-
rendite ≈ 2.9 % (85'000 auf ~3.0 Mio) bestaetigt die Groessenordnung.

**Diskontierungs-/Abzinsungsformel (Finanzmathematik, gleiche Notiz):**
```
W0 = Wn × 1/(1+i)^N        bzw.        K0 = Kn / q^N   mit q = 1 + p/100
```
W0 Barwert (heute) · Wn Endwert (zukuenftige Zahlung) · i/p Zinssatz · N Laufzeit in Jahren.
1/q^N ist der **Diskontierungs-(Abzinsungs-)faktor**; ein hoeherer Abschlag = hoeheres Risiko der
zukuenftigen Zahlung. (Lernquelle in der Notiz verlinkt: studyflix «Abzinsung und Aufzinsung».)

### Healthcare-Diskontsatz — JANS-Arbeitsnotiz als Anker (Disskontierung.docx)

Eine zweite JANS-Notiz (`IMMO-03 Abzinsung/Disskontierung/Disskontierung.docx`, Run 10) taxiert
den Diskontsatz fuer ein **Pflegeheim** (Fallannahme: 41 Pflegeplaetze, Bruttoertrag ~1 Mio/J,
Erstellungskosten ~26 Mio): Pflege-/Gesundheitsimmobilien gelten als **stabil, aber wenig
wachstumsstark** und sind **nicht konjunkturabhaengig** (stabile Nachfrage) → eher tieferes
Risiko. Genannte Bandbreiten: **typisch 4-8 %**, bei gesichertem Ertrag/stabiler Nachfrage
**5-7 % gerechtfertigt**, riskanteres Umfeld **7-9 %**; objektspezifischer Risikoaufschlag
**1-2 Pp** (Lage, Auslastung, Regulierung).

⚠ **Einordnung (wichtig):** Diese Werte sind eine **JANS-Arbeitsnotiz** (teils KI-gestuetzt,
in EUR, eher europaeischer/nominaler Marktbezug) — **kein** belegter CH-Realsatz. Sie liegen
hoeher als die CH-**real**-Zeile der Tabelle unten (~3.0-4.0 %), weil sie nominale Gesamt-/
EK-Renditegroessen mischen. Verwendung daher nur als **Plausibilitaets-Anker** (Healthcare wird
tiefer diskontiert als Risikonutzungen, hoeher als Wohnen), nicht als Ansatz. Der reale CH-
Pflegeheim-Bewertungsfall wird durch den Herosé-Fall (unten) belegt (T17 weitgehend geschlossen).

### Healthcare-Ertragsmodell — realer CH-Fall Pflegeheim Herosé (belegt, oeffentlich 2021)

Der oeffentliche **Baukredit-Bericht Neubau Pflegeheim Herosé, Aarau** (Stadtrat Aarau,
Botschaft GV 2018-2021/285, 13.12.2021, 116 Zimmer, Anlagekosten 55.8 Mio) schliesst die
lang offene Luecke T17 mit einem **datierten, nachvollziehbaren CH-Realbeleg** fuer die
Healthcare-Ertrags-/Finanzierungsrechnung. Er bestaetigt die Methodik des Skills
`healthcare-wirtschaftlichkeit` (Annuitaet via BWO-Zins + CURAVIVA-Abschreibung) mit echten
Zahlen. Erstellungskosten-Kennwerte des Falls siehe [[realwert-sachwert]].

**1. Kostenbasiertes Taxensystem (nicht marktueblicher Kapitalisierungssatz).** Ein Pflegeheim
finanziert seine Investition regulatorisch ueber die **Heimtaxen**, nicht ueber einen Markt-
Ertragswert. Die Bewertung eines Pflegeheims muss daher wissen: die nachhaltige Taxe ist
**kostendeckungsorientiert** (Annuitaet der Investition), gedeckelt durch das kantonal
regulierte Umfeld (KVG-Restfinanzierung Pflege / Hotellerie-/Betreuungstaxe zu Lasten der
Bewohner). Das ist der zentrale Unterschied zur frei kapitalisierten Renditeliegenschaft.

**2. Annuitaets-Finanzierungsmodell (Herosé, Tab. 9) — belegt:**
- **Lineare Abschreibung ueber 33 Jahre** (CURAVIVA «Handbuch Anlagebuchhaltung fuer Alters-
  und Pflegeheime» V2019, Anlagekategorie 2 = langfristige Anlageteile).
- **Kalkulatorischer Zins = BWO-Referenzzinssatz 1.25 %** (2021; der Skill nannte den
  Studienstand 1.75 % — der Satz folgt also dem Referenzzins-Zyklus, [[investorenmarkt-makro]]).
- Auslastung 98 % (114 von 116 Betten), 41'610 Betten-Tage/Jahr.
- Gesamtinvestition 55.8 Mio; **Abzug KVG-Anteil 6'812'000** → Investition zulasten
  Hotellerie-Taxe **48'988'000** (der KVG-Anteil geht zulasten Pflege).

| Groesse | Hotellerie-Taxe (inkl. Betreuung) | Abschreibung z.L. Pflege |
|---|---|---|
| Investition | 48'988'000 | 6'812'000 |
| Zinssatz (BWO-Referenz) | 1.25 % | 1.25 % |
| **Annuitaet/Jahr** | **1'820'000** | **253'200** |
| Annuitaet/Bett/Jahr | 15'972 | 2'221 |
| Annuitaet/Bett/Tag | 43.75 | 6.08 |

**3. Ableitung der Taxe (das Ertrags-Aequivalent):** Aus der Annuitaet folgt der bauliche
Anteil der **Hotellerie-Taxe**. Herosé muss die Taxe nach Bezug von **120 CHF/Tag (2020: 118)
auf 153 CHF/Tag** anheben (+33/Tag), was einem «marktgerechten Tarif fuer Wohnkosten in einem
Neubau» entspricht; der Abschreibungsanteil steigt von 10.50 auf rund 43.75 CHF/Tag. Die
Hotellerie-Taxe setzt sich zusammen aus Lohnkosten Hotellerie, Infrastruktur (Wasser/Gas/
Abfall), Lebensmittel/Getraenke, nicht der Pflege/Betreuung zuordenbaren Aufwendungen und den
**Abschreibungen gemaess Anlagebuchhaltung**. Der Vier-Heim-Vergleich (Herosé Tab. 5,
[[realwert-sachwert]]) verankert die Hotellerietaxe bei **150-180 CHF/Tag** (Neubauten ~2021).

**4. Spezialfinanzierung:** Die Abteilung Pflegeheime fuehrt seit 2002 ein **Rueckstellungs-/
Investitionsfonds-System, gespeist aus der Hotellerie-Taxe** (keine Steuergelder). Der Fonds
betrug per 31.12.2020 fuer Herosé 8.65 Mio — die Investition wird also nur teilweise aus dem
Fonds gedeckt, der Rest ueber die (erhoehte) Taxe amortisiert.

**5. Betriebs-/Kostenrechnung (KoRe, ARTISET):** Schweizer Pflegeheime rechnen ihre Kosten und
Leistungen ueber die standardisierte **KVG-Kosten- und Leistungsrechnung (ARTISET
Betriebswirtschaftliche Instrumente)** ab — mit getrennten **Kostentraegern** Langzeitpflege
(LZP), Tages-/Nachtstruktur (ToNs) und Akut-/Uebergangspflege (AUEP) und leistungserbringenden
Kostenstellen 210-251 (Pflege). Das erklaert die saubere Trennung Pflege (KVG-finanziert) ↔
Hotellerie/Betreuung (Bewohner) in der Taxe (Quelle: ARTISET Fachnews KVG, 17.04.2023).

**Durabel fuer die Bewertung:** Ein Pflegeheim-Ertragswert ist **kostenbasiert** — er leitet
sich aus der annuitaetsgedeckten, regulierten Taxe ab, nicht aus einem frei gewaehlten
Kapitalisierungssatz. Fuer den **Investoren-Marktwert** (Verkauf an einen Fonds, z.B.
Nova/Tertianum) wird die nachhaltige Netto-Betreiber-Miete mit einem Healthcare-Diskontsatz
kapitalisiert; der reale Herosé-Fall verankert die **Annuitaetsseite** (33 J / BWO 1.25 % →
~4 % Annuitaetsfaktor auf die Investition), die die untere Grenze der Betreiber-Miete markiert.
Die eigentliche Rendite-/Sensitivitaetsrechnung fuehrt der Skill `healthcare-wirtschaftlichkeit`
(WALD 2410: Bruttorendite ~6.8 %, Nettorendite via Annuitaet ~1.1 %).

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

### Ertragswert-Band + Kaufpreispruefung (LB Wangen Bahnhofstr. 27, 09.06.2026)

Das reife JANS-LB fuer ein **Renditeobjekt** fuehrt den Ertragswert nicht als Punktwert, sondern
als **Band ueber drei Kapitalisierungssaetze** und endet in einer Kaufpreis-Verhandlungs-
empfehlung. Belegtes Vorgehen (gemischtes MFH, EG Arztpraxis + 2 Whg. + Maisonette, Zone WG3):

1. **Brutto-Sollertrag** je Nutzung: HNF × Marktmiete CHF/m2/J nach UBS-FS-Quantil
   ([[vergleichswert-hedonisch]]) — EG Praxis 175.4 × 200, OG 166.9 × 255, Maisonette
   195.7 × 235 (Altbau-Abschlag), + Garagen → **CHF 129'000/J**.
2. **Ertragswert-Band ueber drei Bruttokapitalisierungssaetze** rund um den Basissatz:
   - 4.75 % → 2.72 Mio · **5.00 % (Basis) → 2.58 Mio** · 5.25 % → 2.46 Mio
   - = **Ertragswert-Band Halten 2.45–2.70 Mio**. Das Band ersetzt die Scheingenauigkeit eines
     Punktwerts und macht die Zinssensitivitaet sichtbar (≈ −5 % Wert je +25 Bps Kapitalisierung).
3. **Kaufpreispruefung gegen das Angebot:** Angebot 3.10 Mio ⇒ implizite Bruttorendite
   = Sollertrag/Preis = 129'000 / 3'100'000 = **4.2 %**. Gegen die JANS-Schwelle (4.5–5.5 %
   marktueblich, < 4.5 % «duenn») ist der Kaufpreis als reiner Renditekauf **~10 % zu hoch**.
   Empfehlung: «Richtung Bankschaetzung (2.8 Mio) verhandeln»; 3.10 nur bei Hebung des
   Mietpotenzials oder STWE-Einzelverkauf gerechtfertigt.
4. **Quervergleich (3 Anker):** Lageklasse-Realwert (Land 751 × 2'702 + Geb.-Zeitwert) ~2.7–3.0 Mio,
   STWE-Einzelverkauf Wohnteil 362.6 m2 × 9'616 ~3.5 Mio, UBS-FS-Bauland Mittel 2'702 (Schlecht
   2'358 / Top 3'891). Synthese **Marktwert Halten 2.6–2.8 Mio** — Ertragswert fuehrt, die anderen
   Anker rahmen.

**Durabel:** Renditeobjekt ⇒ **Ertragswert fuehrt**, dargestellt als **Band (3 Kapitalisierungs-
saetze)**, und die Bewertung muendet in eine **Kaufpreispruefung** (impl. Bruttorendite vs.
Schwelle → Verhandlungsrichtung). Die Bruttoanfangsrendite-Schwelle 4.5 % der JANS-Bewertungs-
konvention (oben) wird hier in der Praxis angewandt.

### Ausbau-/Umnutzungs-Rendite-Impact (Wangen, Maisonetten-Erneuerung)

Ob ein Ausbau/eine Umnutzung sich lohnt, rechnet JANS als **Mietuplift kapitalisiert vs.
Investition** (analog der Mehrinvestitions-Logik unten, aber fuer Bestand):

- **Mietuplift × Kapitalisierung = Wertzuwachs:** veraltete Maisonette heute 46'000, nach
  Erneuerung (modern ~285 CHF/m2) 56'000 → Uplift **+10'000/J**; @ 5 % kapitalisiert
  → Wertzuwachs **≈ +0.20 Mio**.
- **Selbsttragend?** Wertzuwachs 0.20 Mio < Investition (Aufteilung 2 Whg.) ~0.72 Mio →
  als **reine Mietrendite NICHT selbsttragend**. Lohnt nur bei **STWE-Einzelverkauf**
  (~1.88 Mio realisierbar) oder wenn die Wohnung ohnehin saniert werden muss.
- **Grob-KV Umbau:** Umbauwerte aus **Wuest MFH-Neubau-Median (~4'800 CHF/m2 HNF) × Umbau-Anteil**
  → Sanierung 1 Whg. ~1'800 CHF/m2 (V1) bzw. Aufteilung 2 Whg. mit Brandschutz EI30/Schallschutz
  SIA 181/2. Rettungsweg ~3'200 CHF/m2 (V2). Architektenhonorar SIA 102 als **Grobansatz**
  (Teilleistung Ausfuehrung ~10 % bei V1, Vollmandat inkl. Baueingabe ~15 % bei V2). Total Wangen
  V1 ~385'000 / V2 ~725'000 (exkl. MwSt, ±25 %).

**Durabel:** Bestandes-Ausbau lohnt als reine Mietrendite nur, wenn **kapitalisierter Mietuplift
> Investition**; sonst ist der Hebel der **STWE-Einzelverkauf** (Verkaufswert > Mietwert) oder die
ohnehin anstehende Sanierung. Umbau-Grobkosten ueber Neubau-Median × Umbau-Anteil, Honorar als
SIA-102-Teilleistungs-/Vollmandats-Grobansatz.

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
- ✓ 2026-06-20 (D3 Teilantwort, Run 7): Diskontsatz-**Methodik** der Bewertungshaeuser
  (gemeindespezifisch aus Transaktionen + Plausibilisierung ueber 10-j Bundesobligation, IAZI/WP)
  + **Marktkontext 2026** (SNB 0 % / Referenzzins 1.25 % → WP-2023-Anker bleiben plausibel, eher
  unteres Band) eingearbeitet. Offen bleibt die **vollstaendige JANS-Tabelle je Nutzung/Lage/
  Risiko** (real vs. nominal, Gewerbe-/Healthcare-Zuschlaege) — Bring-Schuld Raphael D3.
- ✓ 2026-06-26 (D3 konsolidiert, Run 9): **JANS-Diskontsatz-Tabelle** als eine additive
  Bottom-up-Herleitung (risikofreier Basiszins 10-j Eidgenoss **~0.35 %, Juni 2026** + Illiquiditaets-/
  Lage-/Objektzuschlag) gegen den WP-top-down-Satz plausibilisiert; konsolidierte Tabelle je Nutzung/
  Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %, Healthcare ~3.0-4.0 % *Annahme*); **Real-vs-nominal-
  Bruecke (Fisher)** mit Langfrist-Teuerung ~1.0 % → nominal ~3.1-4.3 % Wohnen; Sensitivitaets-
  Leitplanke −20 Bps→+16 %. Belegte Zeilen abschliessend; die JANS-Faustregeln (Illiquiditaets-/
  Objektzuschlag, Gewerbe-Feinabstufung, Healthcare-Zuschlag) bleiben als *Annahme* markierte
  Bring-Schuld (T17 fuer Healthcare).
- Bewirtschaftungs-/Unterhaltsquoten je Objekttyp: WP-Richtwerte siehe
  [[residualwertmethode]] (Betriebskosten 4.5-6 % Soll-Ertrag, IH 13-16 / IS 17-25
  CHF/m2 HNF); JANS-Abgleich offen.
- ✓ 2026-06-28 (Run 10): **IMMO-03 Abzinsung/Disskontierung-Material + Kursnotizen eingearbeitet.**
  Aus `231231_Residualwert und Diskontierung.docx` (R. Jans 31.12.2023): **Diskontsatz-
  Dekomposition 2.5 % = 2.0 % Kapitalverzinsung + 0.5 % Abschreibung** (kalibriert die bisher
  *Annahme*-Bottom-up-Tabelle von JANS-Seite), **Betriebskosten-Pauschale 2.5 % (5 x 0.5 %)**,
  belegte **Rechenkaskade** Residualwert←Ertragswert←Nettoertrag←Mietertrag + **Abzinsungsformel**
  W0=Wn/(1+i)^N. Aus `Disskontierung.docx`: **Healthcare-Diskontsatz-Anker** (Pflege 4-8 %, 5-7 %
  gerechtfertigt) als JANS-Arbeitsnotiz → Healthcare-Zeile von *speculative* auf *emerging*. Aus
  den Kursnotizen IMG_7064-67: Anfangsrendite/Kapitalisierungssatz = Mietertrag/Kaufpreis (oben
  S. 57/208 bestaetigt), Residualwert ~30 % Landanteil / 8 % Risikomarge (vgl. [[residualwertmethode]]).
- ✓ 2026-06-30 (Run 11, nachtraeglich protokolliert): risikofreies Basisniveau auf **10-j
  Eidgenoss 0.24-0.40 % (Juni 2026, Ende Juni sinkend auf 0.24 %)** aktualisiert (D3-Tabelle,
  Basiszeile). Run 11 hatte den Edit gemacht, aber `last_updated`/CHANGELOG/Output nicht
  nachgefuehrt (Prozessleck, vom Health-Check 01.07. gemeldet) — mit Run 12 nachgetragen.
- ✓ 2026-07-02 (T17, Run 12): **Healthcare-Ertragsmodell mit realem CH-Fall belegt** —
  oeffentlicher Baukredit-Bericht Pflegeheim Herosé Aarau (13.12.2021): Annuitaets-Finanzierung
  (lineare Abschreibung 33 J nach CURAVIVA, kalkulatorischer Zins = BWO-Referenzzins 1.25 %),
  KVG-/Hotellerie-Taxen-Trennung (Taxe 120→153 CHF/Tag), Spezialfinanzierung ueber Investitions-
  fonds, KoRe-Kostentraeger (ARTISET). Healthcare-Diskontzeile: **Kosten-/Annuitaetsseite belegt**
  (T17 weitgehend geschlossen); offen bleibt der Investoren-Markt-Diskont (Verkauf an Fonds).
- Terminalwert-Multiplikator-Praxis; Excel-Formeln (D4, Freigabe offen).
- **D3-Rest (Bring-Schuld):** Gewerbe-Feinabstufung je Mietersegment; Healthcare-**Investoren**-
  Diskont aus einem realen Verkaufs-/Fondsfall (Kosten-/Annuitaetsseite ist mit Herosé belegt).
