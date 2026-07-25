# Energie-Trainingslauf — Run 4 (2026-06-08)

Taeglicher strategischer Energie-Loop. NAS + SharePoint PL-04 erreichbar; Voraussetzungen erfuellt.
PL-04-PDFs waren OneDrive-Platzhalter → via `brctl download` materialisiert, dann gelesen.

## BLOCK 1 — TRANSFER (4 PDFs + 1 Web-Quelle destilliert)
1. **BFE/EnergieSchweiz «Ermittlung der Waermeerzeugerleistung»** (Nr. 2781, 12.2015), vollst. 5 S.
   → `destillate/bfe-waermeerzeugerleistung-2015.md` (**established**). Kerngewinn: Dimensionierung
   ueber Verbrauch (Sanierung) bzw. Norm-Heizlast (Neubau), **Brennwerte (GCV) + Jahresnutzungsgrade**
   aller Energietraeger (Holz/Pellet/Oel/Gas — keine WP), **spez. Heizleistung-Kontrollwerte**
   (Neubau 25–40, Minergie 20–30, Minergie-P 8–20 W/m²).
2. **SIA 380/1 Standardnutzungswerte** (Buchauszug, Anhang A Tab. 24/25) → `destillate/
   sia-380-1-standardnutzungswerte-tab24-25.md` (**established**). Kerngewinn: zwoelf Gebaeude-
   kategorien + alle Nutzungs-Kennzahlen inkl. **Warmwasser Qww** (MFH 75 / EFH 50 MJ/m²·a …).
3. **Rechenbeispiel Monatsbilanz Heizwaermebedarf** (Buero ZH, Januar) → `destillate/
   sia-380-1-beispiel-monatsbilanz.md` (**established**). Qh durchgerechnet (QT 16,5 + QV 12,4 −
   Qug 17,1 = **11,8 MJ/m²**) — schliesst die offene Beispielrechnung zu A2.
4. **Grundsaetze energieeffizientes Bauen** (Huelle + sanfte Haustechnik, S. 88/89) → `destillate/
   grundsaetze-energieeffizientes-bauen.md` (**emerging**).
5. **Web — Foerderprogramm Energie Kt. ZH 2026** (zh.ch, Version 01.01.2026), S. 1-29 → `destillate/
   foerderprogramm-energie-zh-2026.md` (**established**). Konkrete Foerdersaetze 2026 verifiziert.

## BLOCK 2 — VERDICHTUNG (Bauherren-Wert)
- **BAUHERREN-FAQ**: 2 neue belegte Antworten — **F7** (Foerderbeitraege Kt. ZH 2026, mit CHF-
  Tabelle + Datenstand) und **F13** (Wie gross muss meine Heizung sein? — spez. Heizleistung).
  F6 mit Brennwert-/Nutzungsgrad-Beleg ergaenzt (WP-Vergleich bleibt offen). FAQ jetzt
  **9 belegte Antworten** (F1-F5, F7, F10, F12, F13).
- **2 neue Themenartikel**: `wiki/foerderung-energie-zh.md` (established),
  `wiki/heizleistung-und-waermeerzeuger.md` (established).
- **Web-Aktualisierung (Datenstand 2026-06-08):** Foerdersaetze ZH 2026 = 2025 unveraendert.
  Verifiziert aus dem amtlichen PDF: Luft-Wasser-WP **CHF 2'900**, Erdsonden-/Grundwasser-WP
  **CHF 6'800**, Fernwaerme **CHF 5'200** (je ≤15 kWth), Daemmung **CHF 40/m²** (+Bonus 60/m²),
  GEAK Plus **CHF 1'000/1'500**; Gesuch vor Baubeginn, nur Baujahr <2000, max. CHF 500'000/Gesuch.

## Register nachgefuehrt
`destillate/INDEX.md` (+5), `wiki/INDEX.md` (+2 Artikel, FAQ-Stand), `wiki/QUESTIONS.md`
(E-D7/E-H1/E-H2 ✓), `training/pdf-inventar.md` (4× [x] + Web-Sektion), `training/curriculum.md`
(A2 vollst., B5/D3 ✓, M1 9 belegt), `raw/_INGESTED.md` (14 Destillate), `CHANGELOG.md`.

## Offen / Prioritaet morgen (Run 5)
1. **F6 Systemwahl** Waermepumpe vs. Fernwaerme vs. Pellets — WP-Seite (JAZ/COP, Dimensionierung)
   fehlt noch; eigene Quelle noetig (SIA 384/1 Detail / FWS-Unterlagen).
2. **Foerderung ZH 2026 — Minergie-ECO + thermische Solaranlagen** (PDF S. 30-38) destillieren →
   `foerderung-energie-zh` vervollstaendigen.
3. **Naturdaemmstoffe + VIP** (SIA 2001 S. 15-17) → `daemmstoffe-lambda` vervollstaendigen (A3).
4. **Fenster/g-Wert** eigener Artikel (A5/E3) + sommerlicher Waermeschutz (FAQ F11).
5. **SIA 380/1 2009 ↔ 2016** abgleichen (E-D8) — haben sich Standardnutzungswerte geaendert?

## Qualitaet
Keine erfundenen Werte; Brennwerte, spez. Heizleistung, Standardnutzungswerte und alle CHF-
Foerdersaetze direkt aus den Quellen. Foerdersaetze mit **Datenstand 2026-06-08 / Version 01.01.2026**
+ ⚠ (Rahmenkredit, Bundes-Sparprogramm) ausgewiesen; aeltere Quellen (SIA 384/1:2009, Buch-
auszuege) mit ⚠ markiert. Heizsystem-Wahl/Heizverbot → Skill `baurecht`, Brandschutz → `brandschutz`
verwiesen statt gedoppelt. Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch. Kompoundiert (Wärmeerzeuger
↔ Heizwaermebedarf/Standardnutzung; Foerderung ↔ Energienachweis-ZH; Grundsaetze ↔ FAQ F2).
