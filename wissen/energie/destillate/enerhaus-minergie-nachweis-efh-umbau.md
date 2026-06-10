---
quelle: PL - 04 Energie/U Wert berechnung/Energienachweis 380-1 Muster.pdf
herausgeber: Enerhaus 380/1 (www.enerhaus.ch), Anwenderkurs-Musternachweis Version 3.2 (BFE/EnFK-Zert. 0958)
ausgabe: Musterausdruck 28.04.2010, Berechnungsbasis SIA 380/1:2009
gelesen: vollstaendig (9 S.)
datenstand: ⚠ 2010 / SIA 380/1:2009, Meteodaten SIA 2028 Klimastation Luzern. Methodik gueltig; Grenzwerte gegen aktuelle Fassung pruefen.
status: emerging
last_updated: 2026-06-10
---

# Destillat — Musternachweis SIA 380/1 / Minergie (EFH «L», Umbau, Luzern)

> Vollstaendig durchgerechneter **Minergie-Systemnachweis** fuer ein Einfamilienhaus (Umbau). Ergaenzt
> das bereits vorhandene Buero-ZH-Rechenbeispiel um eine **zweite Gebaeudekategorie (Wohnen EFH)** und
> zeigt anschaulich den **Hebel der Komfortlueftung mit WRG**. Schwesterdestillat zu
> `[[sia-380-1-beispiel-monatsbilanz]]`.

## Das Wichtigste in einem Satz
Beim **Systemnachweis** wird der **Projektwert des Heizwaermebedarfs** gegen den Grenzwert
**Q_h,li** gestellt — hier 70 kWh/m² (94 % des Minergie-Grenzwerts), und mit Komfortlueftung
(WRG) sinkt der effektive Bedarf auf **60 kWh/m² (81 %)**.

## Eckdaten des Beispiels (treu)
- Gebaeudekategorie **Wohnen EFH**, **Umbau**, Anforderung **SIA 380/1:2009**, Nachweisart **Minergie**.
- Klimastation **Luzern** (Meteodaten SIA 2028), 450 m.ue.M.
- **Energiebezugsflaeche A_E = 134 m²**, **Gebaeudehuellzahl A_th/A_E = 2,64**.

**Heizwaermebedarf-Ergebnis:**

| Groesse | MJ/m² | kWh/m² | % Grenzwert |
|---|---|---|---|
| Grenzwert Minergie (125 % × Q_h,li) | 267 | 74 | 100 % |
| Projektwert (V_th/A_E = 0,7 m³/hm², ohne WRG-Bonus) | 252 | 70 | 94 % |
| effektiv mit Komfortlueftung (V_th/A_E = 0,35) | 217 | 60 | 81 % |

→ Die **Halbierung des thermisch wirksamen Aussenluftvolumenstroms** (0,7 → 0,35 m³/hm², d. h.
Lueftung mit Waermerueckgewinnung) senkt den Heizwaermebedarf um **10 kWh/m² (von 70 auf 60)**.

**U-Werte der Bauteile (Beispiel):**

| Bauteil | U-Wert W/(m²·K) |
|---|---|
| Aussenwand | 0,155 |
| Dach/Decke | 0,198 |
| Boden gegen Keller (unbeheizt) | 0,271 |
| Fenster (Zusammenstellung) | 0,878 |
| Aussentuere | 1,400 |

- **Waermebrueckenzuschlag: 17,89 % von Q_T** (Fensteranschlaege Sturz/Leibung/Bruestung Ψ
  0,08–0,34 W/mK; Sockel Ψ 0,22) — zeigt, wie stark unsorgfaeltige Anschluesse den Transmissions-
  verlust treiben.
- **Fenster g-Wert 0,50**; Verschattungsfaktor der groessten verglasten Fassade 0,35.
- Monatsbilanz: **Q_h = 251,7 MJ/m²**; Ausnutzungsgrad η_g = 0,84; solare Gewinne Q_s ≈ 70 MJ/m²,
  interne Gewinne Q_i ≈ 74 MJ/m²; Transmission Q_T ≈ 301, Lueftung Q_V ≈ 73 MJ/m² (ohne WRG).

## Bauherren-Transfer
- **Der Nachweis ist eine Bilanz, kein Einzelwert:** Verluste (Transmission durch Bauteile +
  Waermebruecken, Lueftung) minus nutzbare Gewinne (Sonne, Personen, Geraete). Wer einen Posten
  verbessert, verschiebt die ganze Bilanz.
- **Komfortlueftung mit WRG ist der sichtbarste Hebel:** Sie holt im Beispiel 10 kWh/m² heraus —
  oft der Unterschied zwischen «knapp» und «komfortabel unter dem Grenzwert».
- **Waermebruecken kosten real:** 18 % des Transmissionsverlusts stecken hier in den Anschluessen.
  Sauber geplante Fenster-/Sockelanschluesse sind «gratis» eingesparte Energie.
- **Beim Umbau** rechnet der Systemnachweis ueber das ganze Gebaeude — schwache Einzelbauteile
  (z. B. Boden 0,271) lassen sich ueber besser gedaemmte kompensieren → `[[u-werte-grenzwerte-ch]]`.

## Offene Punkte
- Werte auf SIA 380/1:2016 / aktuelle Minergie-Kennzahl spiegeln (E-D8).
- Anonymisierter realer JANS-Nachweis als Goldstandard-Beispiel, sobald verfuegbar.
