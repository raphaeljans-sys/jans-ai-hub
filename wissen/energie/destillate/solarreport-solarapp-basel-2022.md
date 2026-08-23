---
quelle: SolarReport – Vorprojekt mit Nutzenanalyse und Richtofferte (SolarApp Beta)
herausgeber: SolarApp AG, Industriestrasse 3, 4543 Deitingen (Solaranbieter-Plattform, automatisiert erzeugtes Vorprojekt-Tool "SolarApp Beta")
ausgabe: Version 1, erstellt am 05.11.2022 (Titelblatt "Bericht Version"; Fusszeile jeder Seite "Version 5.11.2022, APP22-66497-01")
gelesen: Seiten 1-26 vollständig (Titelblatt, Inhalt, Ihre Solaranlage/Eigenverbrauch/Kennzahlen, Eignung Projektstandort, Erträge und Unabhängigkeit inkl. Monats- und Tagesanalyse, Umweltbeitrag, Produktübersicht, Richtpreis, Wirtschaftlichkeit, kumulierte Erträge/Kostenvergleich, nächste Schritte, Glossar, Anhang 1 Inputs und Annahmen, Anhang 2 Statikbericht, Anhang 3 Auslegung Montagekomponenten)
datenstand: 2026-08-21 (Quellstand 05.11.2022, Strompreis-/Tarifbasis «Standard Elektrizitätswerk, 2022»)
status: emerging
last_updated: 2026-08-21
---

> **Querbezug KB `planungsgrundlagen` (gesetzt 21.08.2026, Wissens-Chef Run 39):** Derselbe SolarReport
> ist dort seit dem 25.07.2026 als Tabellenzeile gefuehrt —
> `wissen/planungsgrundlagen/wiki/energie-pv-eignung-typenwahl` (MFH Basel, 59.93 kWp, 162 Module,
> CHF 135'257, ca. 2'255 CHF/kWp). Beide Destillationen entstanden unabhaengig voneinander aus derselben
> Quelle. **Dieses Destillat fuehrt die Detailauswertung** samt der drei Inkonsistenzen im Quelldokument
> selbst (Modulzahl 162 gegen 90+72, Stromverbrauch 42'000 gegen 48'000 kWh, CO2 21'716 gegen 22'351 kg);
> `planungsgrundlagen` fuehrt die Zeile im Typenvergleich.

# Destillat — SolarReport SolarApp: Fallbeispiel PV-Vorprojekt Schliengerweg, Basel

> Automatisiert erzeugtes PV-Vorprojekt (Richtofferte + Wirtschaftlichkeit + Statik-Vorcheck) der
> Plattform SolarApp für ein konkretes Neubau-Wohnobjekt am Schliengerweg, 4057 Basel. Dient JANS
> als **Fallbeispiel** für Aufbau, Kennwert-Bandbreiten und Rechenlogik solcher Anbieter-Tools,
> nicht als allgemeingültiger Kennwert.

## Das Wichtigste in 1 Satz

Für eine 162-190-Modul-Indachanlage (rund 60 kWp) auf einem Neubau-Steildach in Basel weist das
SolarApp-Tool eine Investition von CHF 135'257 (inkl. MwSt.) bei einer Rendite von 3.25 % pro Jahr
und einer Amortisation nach 21 Jahren aus — unverbindlich und «ohne Gewähr», wie jede Seite in der
Fusszeile vermerkt.

## Kernbegriffe / Kennwerte / Tabellen

### Projekt und Objekt (Fallbeispiel, S. 1, 18, 20)

- Standort: Schliengerweg, 4057 Basel; Höhe über Meer 255 m ü. M.; Breitengrad 47.572481434037,
  Längengrad 7.5955228962952
- Geländeart: Grosse Ebene; Objektart: Wohnen; Neubau: Ja
- Zwei Dachflächen (Schrägdach, Neigung 45°, Gebäudehöhe 11 m/First 13 m):
  Fläche 1 Ausrichtung 89° Grad Süd, Nutzfläche 179.4 m²; Fläche 2 Ausrichtung -90° Grad Süd,
  Nutzfläche 167.6 m²

### Anlagen-Kennzahlen (S. 3)

- Installierte Leistung: 60 kWp
- Anzahl Solarmodule: 190
- Stromproduktion pro Jahr: 49'579 kWh
- CO₂-Reduktion pro Jahr: 21'716 kg
- Investition: CHF 135'257
- Förderung/Steuervorteile: CHF 22'861
- Bruttoertrag über Laufzeit: CHF 329'379
- Ertrag pro Jahr: CHF 7'113

### Eigenverbrauch und Unabhängigkeit (S. 3, 5)

- Produktion: 49'579 kWh/a; Eigenverbrauch: 16'205 kWh/a (33 %); Stromverbrauch: 48'000 kWh/a
- Unabhängigkeit im Jahresmittel: 103 % — ⚠ **Korrektur 23.08.2026 (Run 150): das ist der
  Deckungsgrad (Produktion/Verbrauch = 49'579/48'000), NICHT der Selbstversorgungsgrad.** Die
  Autarkie ist Eigenverbrauch/Verbrauch = 16'205/48'000 = **34 %** und kann 100 % nie
  überschreiten. Der Begriff ist im Werkzeug SolarApp durchgehend so belegt, in beiden Berichten
  der KB; am Schwesterbericht Willerzell zeilenweise an der Monatstabelle nachgewiesen.
  → `[[pv-ertrag-eigenverbrauch-praxis]]`, FAQ F255
- Bezug vom Stromnetz: 31'795 kWh/a; Einspeisung ins Stromnetz: 33'374 kWh/a
- Monatswerte (Auszug Extremmonate): Januar Eigenverbrauchsquote 51 % (760 kWh), Juli 26 %
  (1'811 kWh); Unabhängigkeit reicht von 27 % (Dezember) bis 206 % (Juli)
- Total CHF pro Jahr aus der Monatsanalyse: Eigenverbrauchswert CHF 3'889, Einspeisewert CHF 2'503

### Priorisierung der Teilflächen (S. 4, Eignungs-Auswertung)

| Priorität | Bewertung | Fläche | Module | kWp | Produktion kWh/a | kWh/kWp |
|---|---|---|---|---|---|---|
| 1 | Hoch | Fläche 1 | 90 | 31.47 | 26'957 | 857 |
| 2 | Mittel | Fläche 2 | 72 | 28.46 | 24'072 | 846 |
| — | Hoch (Total) | Beide | 162 | 59.93 | 51'029 | 852 |

### Produkte (S. 8-10)

- Montagesystem: LEVEL Indachsystem (Swiss-Made-Glas-Glas-Module, Sondermodule für jede Dachform)
- Solarmodul: Swiss Premium M340-60-b GG LEVEL Dose L, HiR Full-cell G1, Glas-Glas, 340 Wp,
  Full Black, 1695 x 1100 mm; Hersteller Megasol, Fabrik Deitingen (Solothurn) — laut Glossar
  «Swiss Premium Solarmodule»
- Wechselrichter (4 Positionen, Growatt): MID 25KTL3-X1 (AFCI, dreiphasig, 25 kW AC),
  MIC 1500TL-X (einphasig, 1.5 kW AC), MID 22KTL3-X (AFCI, dreiphasig, 22 kW AC),
  MIC 2000TL-X (einphasig, 2 kW AC)

### Richtpreis (S. 11-12, unverbindliche Preisschätzung)

- Kosten Material: CHF 86'815.17 (davon Solarmodule 162 Stück à CHF 404.30 = CHF 65'496.60;
  Wechselrichter/GAK CHF 8'682.58; Unterkonstruktion LEVEL CHF 10'639.04; DC-Kabel 226 m
  CHF 282.50; Planung Megasol CHF 375.00; Verpackung/Versand CHF 1'339.45)
- Kosten Arbeit: CHF 38'771.95 (davon Arbeitsaufwand Installation DC 185 Arbeitsstunden
  CHF 15'447.50; Absturzsicherung/Gerüstbau 85 m à CHF 85.29 = CHF 7'249.65; Installation AC
  CHF 7'657.65; Projektleitung/Admin/Meldungen CHF 2'012.44; Hebemittel/Transporte CHF 2'595.02;
  Blitz-/Überspannungsschutz CHF 1'518.80; Inbetriebnahme CHF 1'080.14; Überwachung CHF 820.04;
  Kleinmaterial CHF 390.71; Ballastierung CHF 0.00)
- Gesamtpreis exkl. MwSt.: CHF 125'587.12; MwSt.: CHF 9'670.21
- **Gesamtpreis inkl. MwSt.: CHF 135'257.35**
- Optionale Position: Wärmepumpe für Warmwasser, Pauschale CHF 6'000.00
- Wortlaut Vorbehalt (S. 12): «Unverbindliche Preisschätzung der Materialkosten sowie Aufwand des
  Installateurs. Endpreise können davon abweichen.»

### Wirtschaftlichkeit (S. 13-14)

- Investition CHF 135'257; Förderung/Steuervorteile CHF 22'861; **Nettoinvestition CHF 112'397**
- Bruttoertrag über Laufzeit (40 Jahre): CHF 329'379; **Rendite pro Jahr: 3.25 %**
- Jahr-1-Werte: Produktionswert CHF 5'301, Eigenverbrauchswert CHF 3'533, Stromverbrauchswert
  CHF 11'040, Kauf aus Stromnetz CHF 7'507, Verkauf ins Stromnetz CHF 1'769
- Tabelle über 40 Jahre (kumuliert / Durchschnitt pro Jahr, CHF): Wert eigenverbrauchter Strom
  178'699.94 / 4'467.50; Wert ins Netz verkaufter Strom 115'014.54 / 2'875.36; Einmalvergütung
  22'860.80 / 571.52; Reinvestitionserträge 12'803.24 / 320.08; Bruttoertrag 329'378.51 / 8'234.46;
  Kapitalkosten 1'234.33 / 30.86; Unterhaltskosten 43'629.48 / 1'090.74; Nettoertrag 284'514.70 /
  7'112.87; Gewinn nach Abzug Baukosten 149'257.37 / 3'731.43
- Auszahlung Einmalvergütung: CHF 22'861, nach 1 Jahr
- **Amortisation: nach 21 Jahren**
- Kostenvergleich: Tarif Graustrom 24.00 Rp/kWh (Standard Elektrizitätswerk, 2022);
  **Gestehungskosten PV-Strom: 9.56 Rp/kWh**; Kostenvorteil: 60 %
- Annahme: vollständige Eigenfinanzierung; bei Fremdfinanzierung kann sich die
  Eigenkapitalrendite laut Bericht erhöhen (nicht beziffert)

### Annahmen / Inputs (Anhang 1, S. 18-19)

- Elektrizitätswerk: Standard Elektrizitätswerk; Stromverbrauch (Input) 42'000 kWh;
  Strompreis Hochtarif 24.00 Rp/kWh; Einspeisetarif 7.50 Rp/kWh; Strompreiserhöhung 1.0 %/Jahr
- Degradation Module: 0.3 %/Jahr; Analysezeitraum 40 Jahre; Zinssatz Reinvestition der
  Erträge 1.0 %; Grenzsteuersatz 25.0 %
- Fläche 1/2 Abstände: Firstabstand 0.15 m, Ortgangabstand 0.04 m, Traufabstand 0.00 m,
  Hindernisabstand 0.03 m; Dachmaterial in beiden Fällen als «Weiss nicht» erfasst

### Statik-Vorcheck nach SIA 261 (Anhang 2, S. 20-22)

- Referenzwert Staudruck qp0: 1.10 kN/m²; charakteristischer Wert Schneelast horizontal
  Sk: 0.90 kN/m² (Standort Basel, 255 m ü. M., Grosse Ebene)
- Fläche 1 (First 13 m, Neigung 45°): Staudruck qp 1.43 kN/m², Profilbeiwert ch 1.30,
  Reduktionsfaktor cred 1.0, dynamischer Faktor cd 1.0
  - Windsog inkl. Sicherheitsfaktor 1.5: Innenfläche 2.15 kN/m², Randbereich 3.22 kN/m²,
    Eckbereich 4.29 kN/m²
  - Schneelast gesamte Dachfläche 129.2 kN; qk 0.72 kN/m²; inkl. Sicherheitsfaktor 1.5:
    1.08 kN/m²
- Fläche 2: identische Werte, ausser Schneelast gesamte Dachfläche 120.6 kN
- Hinweis-Seite (S. 23) nennt Anwendungsgrenzen des Vorchecks (u. a. nicht anwendbar für
  Gebäude mit abgestuften Dächern, Bauwerke über 2000 m ü. M., offene Hangars/Vordächer,
  Lagen mit aussergewöhnlichen Schnee-/Windverhältnissen — dort sind objektspezifische
  Untersuchungen nötig) sowie Cd=1-Bedingung (Gebäudehöhe ≤ 15 m bzw. Wandlänge-Kriterium)
  und Ce-Anpassungen für wind­geschützte/-ausgesetzte Lage
- Durchgängiger Vorbehalt in der Fusszeile jeder Statikseite: **«Die Statik des gesamten
  Dachaufbaus ist Sache des Unternehmers.»**

### Montagekomponenten-Auslegung LEVEL Indachsystem (Anhang 3, S. 24-26)

- Normale Ansprüche: Windsog < 3.5 kN/m², Schneelast < 3.5 kN/m² (Belastungsgrenzen ohne
  Materialsicherheitsbeiwerte)
- Erhöhte Ansprüche: Windsog 3.5-4.7 kN/m², Schneelast 3.5-8 kN/m²
- Für beide Flächen: Innenfläche und Randbereich fallen unter «normale Ansprüche»
  (2.15 bzw. 3.22 kN/m² Windsog), der Eckbereich (4.29 kN/m²) unter «erhöhte Ansprüche»
- Komponentenbedarf je Modultyp (A-D, unterschiedliche Massvarianten des Moduls) ist tabelliert
  nach Schiene/Schienenhaken/Mittelhaken/Auflageplatte kurz/lang, für normale wie erhöhte
  Ansprüche getrennt ausgewiesen

### Umweltwirkung (S. 7)

- Distanz Elektroauto mit Jahresproduktion: 300'172 km
- Graue Energie (energetische Amortisationszeit): 2 Jahre
- CO₂-Reduktion: 22'351 kg innerhalb eines Jahres (Berechnung über Merit-Order-Effect,
  mittlere CO₂-Intensität europäisches Netz, inkl. Herstellung/Transport/Installation/Betrieb)

### Glossar-Fachbegriffe mit Substanz (S. 16-17, sinngemäss)

- Einmalvergütung: wird vom Bund «momentan 1-3 Jahre nach Fertigstellung» ausbezahlt, beträgt
  «20-30 % der Investitionskosten» und muss im Auszahlungsjahr versteuert werden
- Entsorgung von Solarmodulen: Gebühr im Kaufpreis inbegriffen; am Lebensdauerende
  (35-50 Jahre) kostenlose Rückgabe ans Recycling
- Rendite pro Jahr: Zinssatz, den ein Bankkonto haben müsste, um denselben Ertrag zu
  erwirtschaften (CAGR-Logik, Reinvestition unterstellt)

## Bauherren-Transfer

*(Eigene Einordnung JANS, nicht Teil der Quelle)*

**Die fachlich wichtigste Beobachtung steht nicht in den Kennzahlen, sondern in den Inputs
(Ergänzung Hauptmodell 23.08.2026): dieses Dach ist nach Ost und West orientiert, nicht nach
Süden.** Anhang 1 gibt für Fläche 1 den Azimut «89° Grad Süd» und für Fläche 2 «-90° Grad Süd»
an, bei 45° Dachneigung — also die beiden Hälften eines Ost-West-Satteldachs. Damit ist der
spezifische Ertrag von 827 bis 852 kWh/kWp **kein schlechter Wert, sondern der erwartbare Wert
für diese Ausrichtung**, und er darf nicht als Schweizer Normalfall gelesen werden. Wer diesen
Kennwert auf ein Süddach überträgt, rechnet die Anlage zu klein; wer umgekehrt einen
Süd-Kennwert auf ein Ost-West-Dach anwendet, verspricht dem Bauherrn zu viel. Der Bericht selbst
kommentiert die Ausrichtung nirgends — sie ist nur aus den Azimut-Zahlen im Anhang zu erkennen.

Dieser Bericht ist im Übrigen ein automatisiert erzeugtes Vorprojekt eines Anbieter-Tools
(SolarApp Beta), keine geprüfte Fachplanung. Der Wert für JANS liegt darin, wie ein solches Tool rechnet und in
welcher Bandbreite die Kennwerte bei einer typischen Basler Steildach-Indachanlage liegen (rund
850 kWh/kWp spezifischer Ertrag, Gestehungskosten rund 9.5 Rp/kWh gegenüber 24 Rp/kWh
Graustrom, Amortisation um die 20 Jahre bei Eigenfinanzierung). Für eine Bauherren-Antwort ist
wichtig zu betonen: die Zahlen stammen aus einem **einzelnen, unverbindlichen Anbieter-Vorprojekt**
für ein konkretes Basler Objekt, nicht aus einer normierten Quelle. Die Statik-Aussagen ersetzen
laut eigenem Vorbehalt keine Unternehmer-Prüfung. Vor einer Übernahme in eine Bauherren-Antwort
sollten Rendite- und Amortisationsangaben mit mindestens einer zweiten, unabhängigen Quelle
(z. B. Swissolar oder ein Vergleichsangebot) plausibilisiert werden, gerade weil das Dokument
selbst kleinere interne Inkonsistenzen enthält (siehe offene Punkte).

## Offene Punkte

- **Modulanzahl widersprüchlich:** Kennzahlen-Kachel (S. 3) nennt «Anzahl Solarmodule: 190»
  (= Summe der Anhang-1-Inputs 95 + 95), die Richtofferte (S. 11) und die Eignungs-Auswertung
  (S. 4) rechnen dagegen durchgängig mit 162 Modulen (90 + 72, nur die priorisierten
  Teilbereiche). Investition und Ertragskennzahlen scheinen auf der 162er-Konfiguration zu
  basieren; welche Zahl für ein reales Angebot massgebend wäre, ist aus dem Dokument nicht
  eindeutig zu klären.
- **Stromverbrauch widersprüchlich:** Anhang 1 (S. 18) weist als Input «Stromverbrauch:
  42'000 kWh» aus, die Kennzahlen-Kachel und Monatsanalyse (S. 3/5) rechnen durchgängig mit
  48'000 kWh. Nicht aufgelöst, welcher Wert der tatsächlichen Verbrauchsannahme entspricht.
- **CO₂-Reduktion widersprüchlich:** «21'716 kg» in den Kennzahlen (S. 3) vs. «22'351 Kilogramm»
  im Umweltkapitel (S. 7) — vermutlich Rundungs-/Berechnungsvariante, im Dokument nicht erklärt.
- **⚠ Vierte Inkonsistenz, nachgetragen bei der Verifikation im Hauptmodell (23.08.2026):
  auch die Jahresproduktion selbst steht doppelt und ungleich im Dokument.** Die
  Eignungs-Auswertung (S. 4) summiert die beiden Teilflächen auf **51'029 kWh/a**, die
  Kennzahlen-Kachel (S. 3) und die gesamte Eigenverbrauchs-/Wirtschaftlichkeitsrechnung führen
  **49'579 kWh/a** — eine Differenz von 1'450 kWh (2.8 %). Das ist nicht bloss ein Schönheits-
  fehler, weil daran der **spezifische Ertrag** hängt, also genau die Zahl, die aus einem solchen
  Bericht in eine Bauherren-Antwort wandert: 51'029 / 59.93 kWp ergibt die im Dokument
  ausgewiesenen **852 kWh/kWp**, 49'579 / 59.93 kWp dagegen nur **827 kWh/kWp**. Wer die
  Tabellenzahl der Teilflächen zitiert, nennt einen um 3 % höheren Kennwert als die
  Wirtschaftlichkeitsrechnung desselben Berichts unterstellt. Für die KB gilt daher die
  **Bandbreite 827 bis 852 kWh/kWp**, nicht der Einzelwert 852.
- Der Bericht bleibt bei allen Berechnungsgrundlagen bewusst allgemein («PVGIS-Abfrage»,
  «Erfahrungswerte für das gewählte Verbraucherprofil», «Merit Order Effect») — die konkrete
  Rechenmethodik hinter Eigenverbrauchsquote, Amortisation und Rendite ist nicht offengelegt und
  daher nicht unabhängig nachrechenbar.
- Keine Angabe zu Nutzungsdauer/Garantie der Module und Wechselrichter im gelesenen Text
  (nur Lebensdauer-Bandbreite «35-50 Jahre» generisch im Glossar für die Entsorgung).
