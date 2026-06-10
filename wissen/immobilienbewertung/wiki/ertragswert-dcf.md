---
title: Ertragswert / DCF — Kapitalisierung und Diskontierung
status: established
last_updated: 2026-06-09
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1/3, S. 51-70 + 196-215 eingearbeitet), IMMO-03 Abzinsung/Disskontierung, IMMO-03 Residualwert]
links: [[residualwertmethode]], [[bewertungsverfahren-ueberblick]], [[investorenmarkt-makro]], [[vergleichswert-hedonisch]]
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

## Mehrinvestitions-Logik (Zins als Hebel, S. 71/72)

Ob sich eine Mehrinvestition (hoeherer Standard) lohnt, haengt am Diskontsatz: Beispiel
Neubau 4'500 CHF/m2 HNF, Miete 260 CHF/m2a; Mehrinvestition +7 % (CHF 315/m2) generiert
+4 % Ertrag (CHF +10.4/m2a). Kapitalisiert mit 5 % → nur 208/m2 Mehrwert (Verlust −107);
mit 3 % → 347/m2 (+32); mit 2 % → 650/m2 Mehrwert. **Je tiefer der Zins, desto staerker
gewichtet der langfristige Mehrertrag gegenueber der kurzfristigen Mehrinvestition**
(Break-even im Beispiel bei ~4.1 %).

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

- ✓ 2026-06-09: Diskontsatz-Anker (WP-Empfehlung + Erfahrungswerte 2023), Risikozuschlags-
  modell, Kapitalisierungs-Mathematik und Zins-Sensitivitaeten eingearbeitet.
- JANS-Kalibrierung der Diskontsatz-Tabelle (D3) + Aktualisierung auf Zinsumfeld 2026
  (WP-Werte sind Stand 2023 → Marktpuls T10).
- Bewirtschaftungs-/Unterhaltsquoten je Objekttyp: WP-Richtwerte siehe
  [[residualwertmethode]] (Betriebskosten 4.5-6 % Soll-Ertrag, IH 13-16 / IS 17-25
  CHF/m2 HNF); JANS-Abgleich offen.
- Terminalwert-Multiplikator-Praxis; Excel-Formeln (D4).
- IMMO-03 Abzinsung/Disskontierung-Material und Kursnotizen vollstaendig einarbeiten.
