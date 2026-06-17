---
quelle: "Minergie-Nachweis — Tipps und Tricks zu den Nachweis-Tools (Nachweiskurs 2023, Teil 1)"
herausgeber: Minergie WISSEN / Verein Minergie Schweiz (mit EnergieSchweiz)
autoren: Maximilian Schaffrinna, Robert Minovsky
ausgabe: "25.09.2023 (Tabellen-Stand 13.09.2023); Bezug: Produktreglement Minergie-Gebaeudestandards Version 2023.1"
gelesen: 2026-06-17 (S. 1-42, Teil 1 Anforderungen + Nachweisfuehrung MKZ; Teil 2/3 Label-Plattform-Tool offen)
datenstand: "⚠ Minergie 2023 / MuKEn 2014; periodisch revidiert — Limiten auf minergie.ch pruefen"
status: established
last_updated: 2026-06-17
---

# Minergie-Nachweiskurs 2023 — Minergie 2023, MKZ & THGE

## Das Wichtigste in 1 Satz
Minergie 2023 verschaerft das Label in vier Stossrichtungen — **Dach voll PV, graue Energie
(THGE) in der Erstellung limitiert, zukunftsfaehiger Hitzeschutz (Klima 2035), fossilfreier +
effizienter Betrieb** — und der Nachweis laeuft ueber die **Minergie-Kennzahl (MKZ)**, eine nach
gewichteter Endenergie gebildete Gesamtenergiebilanz abzueglich Eigenproduktion.

## Minergie 2023 — die vier neuen Stossrichtungen (Neubau)
1. **Ausnutzung Solarpotenzial** — Dach voll mit PV (bei grossen Gebaeuden zusaetzlich Fassaden-PV).
2. **Minimierung THGE in der Erstellung** — Grenzwert fuer graue Treibhausgasemissionen.
3. **Zukunftsfaehiger Hitzeschutz** — Nachweis mit Klimadaten 2035, max. 100 h Ueberhitzung.
4. **Verschaerfte Effizienzanforderungen** — verschaerfte MKZ, 90 % Q_h,li, Monitoring, E-Mobilitaet.

## 1 — Solarpotenzial / nutzbare Dachflaeche
- **MKZ (implizite Anforderung): die volle belegbare Dachflaeche ist mit PV zu belegen.** Die fruehere
  *explizite* Anforderung **20 Wp/m² EBF ist ZURUECKGESTELLT** — sie wird eingefuehrt, sobald Fassaden-PV
  brandschutzrechtlich bewilligungsfaehig ist (Stand-der-Technik-Papier, damals angekuendigt Herbst 2024).
- **Nutzbare Dachflaeche** = Summe aller Teildachflaechen (inkl. Giebeldach), die **> 20 m²** sind **und**
  entweder **0–20° Neigung** ODER **20–60° Neigung mit Ausrichtung WNW–S–ONO** haben. (Flachdach mit
  Attika/Dachterrasse, Nordlagen >20° Pultdaecher u.ae. werden nicht eingerechnet.)
- **Rechengroessen Umrechnung Dachflaeche → MKZ-Anforderung:**
  - Belegungsgrad **BelG = 60 % bei Neubau / 30 % bei Erneuerung** (Sanierung: mind. die Haelfte = 50 %
    der Neubauanforderung).
  - **P_Modul = 200 W je m² Modulflaeche.**
  - Standard-Ertrag **E_Sta = 800 kWh/kWp**, Eigenverbrauch **R_eigen = 20 %**.
  - Formel: P_Dach = (A_Dach · BelG · P_Modul) / EBF; MKZ_PV,Anf = (P_Dach · E_Sta · g) · (R_eigen + (1−R_eigen)·0,4).
- Praxisbeispiel im Kurs: **~75 % der Dachflaeche** real mit PV belegt.

## 2 — THGE in der Erstellung (Produktreglement Minergie 2023)
- Grenzwert in **kg CO₂-eq je m² EBF und Jahr**; **gleiche Berechnungsmethodik wie Minergie-ECO**;
  der gespeicherte Kohlenstoff (z. B. im Holz) wird ausgewiesen.
- **Basisgrenzwerte je Gebaeudekategorie** (fuer Anteil EBF/GF = 80 %):

| Kat | Gebaeudekategorie | Grenzwert kg CO₂-eq/m² EBF·a |
|---|---|---|
| I | Wohnen MFH | **11** |
| II | Wohnen EFH | 12 |
| III | Verwaltung | 12 |
| IV | Schulen | 11 |
| V | Verkauf | 17 |
| VI | Restaurant | 14 |
| VII | Versammlung | 15 |
| **VIII** | **Spitaeler** | **17** |
| IX | Industrie | 15 |
| X | Lager | 15 |
| XI | Sportbauten | 15 |
| XII | Hallenbaeder | 15 |

- Objektwert: GW_OBJ = (GW_EBF·EBF + GW_(GF−EBF)·(GF−EBF))/EBF. **Rechenbeispiel MFH: 12,4 kg·80 % +
  5,5 kg·20 % = 11 kg** (warmer EBF-Anteil teurer, kalter GF-Anteil guenstiger).
- **Zum Vergleich:** Klimapfad-Norm **SIA 390/1** (damals in Vernehmlassung) fordert fuer Kat. I–VI
  **9 kg/m²·a inkl. PV/Erdsonde/Solarthermie** — strenger als der Minergie-Basisgrenzwert.
- **THGE-Logik (3 Schichten):** Betrieb *im Gebaeude* → 0 (Fossilverbot, ausser Spitzenlast);
  Betrieb *beigezogene Energie* → von Effizienz und Nutzenden abhaengig; **Erstellung (verbaute THGE)
  → «0 nicht moeglich, minimieren»** — genau das ist Gegenstand des Minergie-Nachweises.
- **Bauliche Hebel zur THGE-Reduktion** (in der Reihenfolge ihres Hebels, ~18 → ~3 kg CO₂-eq/m²·a):
  Reduktion Spannweiten → Optimierung Materialisierung → Reduktion Fensteranteil → Gebaeudetechnik
  nicht in die Decke einlegen → **optimierte Baugrube & Fundation / wenig+einfaches UG** («jede
  Umleitung der Lastabtragung kostet Ressourcen») → **Neubau ohne UG** → **Weiterverwendung statt
  Neubau** (bestehendes UG / Rohbau erhalten). **Kompaktheit + einfache Lastabtragung** sind der Schluessel.

## 3 — Zukunftsfaehiger Hitzeschutz (sommerlicher Waermeschutz, SoWS)
- **Klimadaten DRY 2035** (Szenarien SIA 2028 fuer 2035 / Periode 2020–2049) vorgeschrieben;
  Komfortbedingung **max. 100 h Ueberhitzung > 26,5 °C** — **4× strenger** als die Norm SIA 180 bei Wohnbauten.
- Drei Nachweisvarianten: **V1** Globalbeurteilung (verschaerfte Glasflaechenzahl, standortabhaengig) ·
  **V2** externer raumweiser Systemnachweis (XLS, Klimadaten 2035, Waermeinseleffekt waehlbar) ·
  **V3** thermische Gebaeudesimulation (Klimadaten 2035).
- **Kuehlung (nur Wohnbau) vereinfacht zugelassen:** ein Kuehlsystem **≤ 12 W_el/m²** wird pauschal mit
  **1 kWh/m² EBF** in die MKZ eingerechnet, ohne Detailnachweis — foerdert PV-gedeckte **reversible WP
  mit Kuehlung ueber die Bodenheizung**.

## 4 — Verschaerfte Effizienzanforderungen
- **Verschaerfte MKZ**; **Heizwaermebedarf 90 % Q_h,li der MuKEn 2014** (Minergie und Minergie-A;
  Minergie-P weiter **70 %**).
- **Monitoring-Pflicht neu ab > 1'000 m² EBF** (vorher 2'000 m²; Minergie-A: alle Gebaeude).
- **Elektromobilitaet:** Strom bis zu den Garagen/Parkplaetzen im Gebaeude; **Elektrifizierung von
  60 % der Parkplaetze** (SIA-Merkblatt 2060, Ausbaustufe **C2** «Power to parking»).
- **Waermeerzeugung Minergie 2023:** erneuerbar, **Spitzenlast ab 80 kW Heizleistung max. 10 % fossil**
  (ausser WKK, Fernwaerme) — gegenueber Minergie 2017 (Spitzenlast max. 30 % fossil) deutlich verschaerft.

## Nachweisfuehrung — die Minergie-Kennzahl (MKZ)
- **MKZ = MKZ_HLK + MKZ_WW + MKZ_Bel + MKZ_Geraete + MKZ_AGT − MKZ_Prod**
  (Beleuchtung + Geraete + Allg. Gebaeudetechnik = MKZ_El,Wohnen).
- **= Gesamtenergiebilanz**: Gesamtverbrauch **abzueglich anrechenbarer Eigenproduktion**, bilanziert
  nach **gewichteter Endenergie**: Nutzenergie **: η** (Nutzungsgrad/COP) = Endenergiebedarf, **× g**
  (Gewichtungsfaktor, Strom **g = 2,0**) = gewichtete Endenergie.
- **Anforderungswert** = Standardverbrauch (MuKEn 14, SIA 2056) **−** Standardabzug Effizienz (nach
  Gebaeudekategorie) **−** Standardabzug Eigenproduktion (anhand Flaechenpotenzial Dach).
- **Projektwert** = projektspezifischer Verbrauch nach Gewerk (SIA 380/1 + WPesti, Lueftungsnachweis)
  **−** real installierte Eigenproduktion (PVopti). Nachweis erfuellt, wenn **Projektwert ≤ Anforderung**.
- Beispiel Projektwert Wohnen MFH ≈ **47 kWh/m²** (gew.).
- **Tools:** Label-Plattform (`label-plattform.ch`), SIA 380/1 (Heizwaerme), **WPesti** (WP-Effizienz/JAZ),
  **PVopti** (PV-Ertrag/Eigenverbrauch), Lueftungsnachweis-Tool.

## Weiteres Portfolio (Kontext)
- **Minergie-ECO**: zwischen Minergie und SNBS positioniert; in der Ueberarbeitung 17 Vorgaben gestrichen,
  22 zusammengefasst, 4 neu; neue Bewertungsmethodik, Online-Nachweis. Themen: lange Nutzungsdauer, gute
  Raumluft, tiefe graue Energie, Tageslicht, geringe Laermbelastung, gute Bauoekologie, wenig Schadstoffe.
- **Minergie-Areal**: mind. **2 Gebaeude und 3'000 m² EBF**; fuenf Themen A Einzelgebaeude · B Areal-
  Management · C Energie und Treibhausgase · D Komfort und Klimaanpassung · E Mobilitaet.

## Bauherren-Transfer
- **Healthcare relevant:** Fuer **Spitaeler (Kat. VIII)** liegt der THGE-Erstellungsgrenzwert bei
  **17 kg CO₂-eq/m²·a** — hoeher als Wohnen (11), weil Healthcare technik- und materialintensiver ist;
  das ist beim JANS-Pflegeheim/Klinik-Geschaeft ein konkretes Planungsziel, nicht nur ein Label-Detail.
- Der groesste THGE-Hebel ist **architektonisch**, nicht haustechnisch: **kompakt bauen, wenig/kein UG,
  einfache Tragstruktur, Bestand weiterverwenden** schlaegt jede nachtraegliche Technikoptimierung.
- «Dach voll PV» ist faktisch Pflicht; die explizite 20-Wp/m²-Zahl ist (Stand Kursunterlage 2023)
  zurueckgestellt — die *implizite* Vollbelegung der nutzbaren Dachflaeche bleibt aber bindend.
- **Hitzeschutz mit Klima 2035 + max. 100 h** ist die wohl spuerbarste Verschaerfung fuer den Komfort —
  aussenliegender Sonnenschutz und Speichermasse von Anfang an einplanen (vgl. F11).

## Offene Punkte
- Teil 2 (Fallbeispiel «Maison Climat» auf der Label-Plattform, S. 45 ff.) → eigenes Destillat
  `[[minergie-fallstudie-maison-climat]]`.
- Teil 3 (Projekte einreichen/zertifizieren, weitere Arbeitsdokumente, S. 53 ff.) noch nicht destilliert.
- Genaue **Standardabzuege Effizienz je Gebaeudekategorie** und die vollstaendige MKZ-Anforderungs-Tabelle
  stehen im Produktreglement 2023.1 (nicht in dieser Kursunterlage) — bei Bedarf separat belegen.
- ⚠ Minergie revidiert periodisch; vor Projektzusagen Reglement-/Kennzahlenstand auf `minergie.ch` pruefen.

Verwandt: `[[minergie-besser-planen-bauen]]`, `[[graue-energie-betriebsenergie]]`,
`[[enfk-en-104-eigenstromerzeugung]]`, `[[tec21-solares-bauen-pv-typen-2012]]`. Brandschutz Fassaden-/
Dach-PV → Skill `brandschutz`; Energierecht/MuKEn-ZH-Vollzug → Skill `baurecht`.
</content>
</invoke>
