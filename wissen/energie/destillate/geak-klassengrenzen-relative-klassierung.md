---
quelle: «Normierung des GEAK», Version 2.1.0, Konferenz Kantonaler Energiedirektoren (EnDK) / Verein GEAK-CECB-CECE, verabschiedet 30.3.2023, Autorin Monika Hall (FHNW/INEB)
herausgeber: EnDK / Verein GEAK-CECB-CECE
ausgabe: Version 2.1.0, 30.3.2023
gelesen: 2026-07-12 (Web via WebSearch/WebFetch, PDF Kap. 7 S. 64-67 direkt gelesen, als Bild gerendert und Tabellen zeilenweise geprüft)
datenstand: 2023 (aktuell gültige Methodik-Fassung, Stand Juli 2026)
status: established
last_updated: 2026-07-12
---

# GEAK-Klassierung — relatives System, KEINE fixen kWh/m²-Grenzwerte

**Das Wichtigste in 1 Satz:** Der GEAK vergibt **keine** festen, gebäudeunabhängigen
kWh/m²-Grenzwerte je Klasse A–G — er klassiert **relativ** zu einem individuell berechneten
Referenzgebäude (R = Projektwert / Referenzwert × 100); eine im Web kursierende feste
Zahlen-Tabelle («A bis 25 kWh/m²a, B bis 50, …») ist **falsch** und wurde durch die Verifikation
widerlegt.

## Klassierungsprinzip (Tab. 40, S. 66, adversarial verifiziert am Original-PDF)
Gilt gleichermassen für **Gebäudehülle** und **Gesamteffizienz**:

| Klasse | Bereich (% des Referenzwerts) |
|---|---|
| A | 0–50 % |
| B | 50–100 % |
| C | 100–150 % |
| D | 150–200 % |
| E | 200–250 % |
| F | 250–300 % |
| G | > 300 % |

- **Referenzwert Gebäudehülle** = Neubau-Grenzwert des Heizwärmebedarfs Q_H,li nach
  SIA 380/1:2016, **gebäudespezifisch** berechnet (abhängig von Geometrie, A_th/A_E-Verhältnis,
  Klimastandort).
- **Referenzwert Gesamteffizienz** E_P,ref = Bilanz eines Referenzgebäudes (80 % des
  Neubau-Grenzwerts Heizwärme, 80 % Warmwasserbedarf nach SIA 2031, Ölfeuerung Nutzungsgrad 90 %,
  Standard-Elektrizitätsbedarf je Nutzung — **MFH 28 kWh/m²a, EFH 22 kWh/m²a**) — ebenfalls
  gebäude- und nutzungsspezifisch, kein fixer Universalwert.

## Dritte Skala: CO₂-Emissionen (absolut, nicht relativ — Ergänzung aus der Verifikation)
Die separate CO₂-Etikette (Tab. 41) ist **nicht** relativ, sondern in festen **5-kg/(m²a)-Schritten**
klassiert (A = 0, B > 0–5×f_cor, C > 5–10×f_cor … G > 25×f_cor), temperaturkorrigiert je
Klimastation (f_cor). Diese Skala **nicht** mit der relativen Gebäudehüllen-/Gesamteffizienz-
Klassierung verwechseln.

## Bauherren-Transfer
Die GEAK-Klasse eines Gebäudes lässt sich **nicht** anhand einer festen kWh/m²-Zahl nachschlagen
— sie hängt vom individuell berechneten Referenzgebäude (Geometrie, Nutzung, Klimastandort) ab.
Für eine belastbare Klassenaussage braucht es die konkrete GEAK-Berechnung
(Q_H,eff vs. Q_H,li bzw. E_P vs. E_P,ref), keine Tabellen-Faustregel. Diese Erkenntnis ist wichtig
für die Bauherren-Kommunikation: «Klasse B» bedeutet je nach Gebäude unterschiedliche absolute
kWh-Werte.

## Verifikations-Protokoll
Adversarial verifiziert 2026-07-12: Primärquelle direkt als Bild gerendert, Tab. 40/41 sowie
Gl. 54–56 zeilenweise gegen die Kernfakten geprüft — alle Angaben exakt bestätigt (einzige
Mikro-Differenz: Untergrenze Klasse A ist «>0 %», nicht literal «0 %», praktisch irrelevant).
Zweitquelle (gebäudehülle.swiss) bestätigt unabhängig dieselbe 50 %-Bandbreiten-Logik.

## Offene Punkte
- Konkrete, in kWh/m²a umgerechnete Bandbreiten je Klasse für Standardfälle (z.B. typisches MFH
  Zürich) sind systembedingt relativ und nicht als fixe Zahlen ausgewiesen — müssten für eine
  Bauherren-FAQ anhand eines Referenzfalls selbst durchgerechnet werden.

**Backlinks:** [[geak-gebaeudeenergieausweis-kantone]] · Themenartikel [[geak-gebaeudeenergieausweis]].
