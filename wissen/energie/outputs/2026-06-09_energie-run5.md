# Energie-Trainingslauf — Run 5 (2026-06-09)

Taeglicher strategischer Energie-Loop. NAS + SharePoint PL-04 erreichbar; Voraussetzungen erfuellt.
Alle drei Quell-PDFs lokal materialisiert.

## BLOCK 1 — TRANSFER (3 PDFs destilliert/aktualisiert)
1. **SIA 2001 «Waermedaemmstoffe» (Ausgabe 2005), S. 15-17** → `sia-2001-waermedaemmstoffe-lambda.md`
   jetzt **vollstaendig (established)**. Neu erfasst: Holzfaserplatten (λ 0,038-0,051), Zellulose
   (0,039-0,040), Holzwolle-Leichtbauplatten (0,090), **Vakuum-Isolationspaneele VIP λ 0,009**
   (3-4× besser als Schaeume, nur waermebrueckenfrei), verputzte Aussenwaermedaemm-Systeme (WDVS:
   EPS 0,031-0,040 / Steinwolle 0,036-0,040), Verbundplatten-Rechenwerte.
2. **EnFK EN-2 «Waermeschutz von Gebaeuden» (Feb 2013, SIA 380/1:2009), vollst.** → neues Destillat
   `enfk-en-02-waermeschutz-2013.md` (**established**). Kerngewinn: die zwei Nachweiswege
   (Einzelbauteil ↔ System; Systemzwang bei Vorhangfassade/g<0,3), **Waermebruecken-Grenzwerte Ψ**
   (Typ1 0,30 / Typ2/3 0,20 / Typ5 0,10; χ 0,30), **EBF-Definition (SIA 416/1)**, Q_h,li-Tabelle,
   sommerlicher Waermeschutz.
3. **Minergie «Besser planen, besser bauen» — Ueberarbeitung September 2023, S. 1-16** →
   `minergie-besser-planen-bauen.md` auf **Stand 2023** gehoben (vorher ~2017). Materielle Aenderungen:
   Minergie-Kennzahl Wohnen MFH Neubau **55/50/35 → 51/46/29 kWh/m²**, neues Kriterium
   **THGE in der Erstellung 11 kg CO₂/m²·a** (graue Energie erstmals limitiert), sommerlicher
   Waermeschutz auf **Wetterdaten 2035**, PV-Pflicht «Dach voll» (Neubau ≥ 60 %), Monitoring-Schwelle
   1000 statt 2000 m² EBF.

## BLOCK 2 — VERDICHTUNG (Bauherren-Wert)
- **BAUHERREN-FAQ**: **F11 neu** «Wie hitzefest ist mein Haus im Sommer?» (aussenliegender beweglicher
  Sonnenschutz, g-Wert 0,1-0,15, Speichermasse + Nachtauskuehlung, Wetterdaten 2035). **F5 geschaerft**
  auf Minergie-Stand 2023 (neue Kennzahlen + THGE). FAQ jetzt **10 belegte Antworten** (F1-F5, F7, F10,
  F11, F12, F13).
- **+1 Themenartikel** `wiki/sommerlicher-waermeschutz.md` (emerging). Gewachsen: `minergie-standards`
  (Stand 2023 + THGE), `daemmstoffe-lambda` (Naturdaemmstoffe/VIP/WDVS → established),
  `u-werte-grenzwerte-ch` (EBF-Definition + Versionsabgleich EN-2/EN-102).
- **Widerspruch sauber geflaggt (statt still verrechnet):** EN-2 (2013) ↔ EN-102 (2018) — Fenster-
  Grenzwert 1,3→1,0, Umbau-Q_h,li-Faktor 1,25× ↔ 1,5×, Ψ-Fensteranschlag 0,10 ↔ 0,15; Q_h,li-Grundwerte
  identisch. Dokumentiert in `u-werte-grenzwerte-ch` + QUESTIONS E-D8 (Teilfortschritt).

## Register nachgefuehrt
`destillate/INDEX.md` (+1 + 2 Updates), `wiki/INDEX.md` (+1 Artikel, FAQ-Stand), `wiki/QUESTIONS.md`
(E1 ✓, E3/E-D8/E-F ~), `training/pdf-inventar.md` (3× [x]), `training/curriculum.md` (A3/B3 vollst.,
A4/A5 ~, M1 10 belegt), `raw/_INGESTED.md` (15 Destillate, +3 Zeilen), `CHANGELOG.md`.

## Offen / Prioritaet morgen (Run 6)
1. **F6 Systemwahl** Waermepumpe vs. Fernwaerme vs. Pellets — WP-Seite (JAZ/COP) fehlt; eigene Quelle
   (SIA 384/1 Detail / FWS / WTA-Formular `endk.ch/.../2024_01_08_WTA_Formular`).
2. **F9 graue Energie** vertiefen — Minergie-THGE 11 kg/m² als Anker; KBOB-Oekobilanzdaten/
   Sanieren-vs-Neubau-Kriterien (Block D2) → eigene Quelle.
3. **Foerderung ZH 2026 — Minergie-ECO + thermische Solaranlagen** (PDF S. 30-38) → `foerderung-energie-zh` vervollstaendigen.
4. **Bauteilekatalog Kap. 4** (BFE 2002, Standardaufbauten) → E2 / A1 schliessen.
5. **SIA 380/1:2016** konkrete Standardnutzungs-Aenderungen ggue. :2009 (E-D8 Restpunkt).

## Qualitaet
Keine erfundenen Werte; λ-Werte (inkl. VIP 0,009), Waermebruecken-Grenzwerte, Minergie-Kennzahlen und
THGE direkt aus den Quellen. Minergie-Werte mit **Datenstand 2026-06-09 / Ausgabe 09/2023** + ⚠
(Reglement-Revision) ausgewiesen; aeltere Quellen (SIA 2001:2005, EN-2 2013) mit ⚠ markiert.
Versions-Widerspruch EN-2/EN-102 geflaggt statt verrechnet. Brandschutz (WDVS/Solar) → Skill
`brandschutz`, Energierecht/Heizverbot → Skill `baurecht` verwiesen statt gedoppelt. Echte Umlaute
ä/ö/ü, Schweizer Hochdeutsch. Kompoundiert (Minergie 2023 ↔ FAQ F5/F11; VIP/Naturdaemmstoffe ↔
daemmstoffe-lambda; EBF/Waermebruecken ↔ u-werte-grenzwerte-ch).
