# QUESTIONS — offene Fragen & Wissensluecken (KB Energie)

Abgearbeitet vom taeglichen Loop. Erledigtes mit ✓ + Datum.

## Datenstand / Aktualisierung (hohe Prioritaet — altert schnell)
- [x] **E-D5** U-Wert-Grenzwerte + Q_H,li belegt aus EN-102 (Dez 2018 / SIA 380/1:2009) ✓ 2026-06-06
  → `[[enfk-en-102-waermeschutz-2018]]`. Tab. 2/4/5 erfasst.
- [x] **E-D6** MuKEn-Umsetzung Kt. ZH: EnerG seit 1.9.2022 (MuKEn 2014). **Vollzug seit 1.1.2026
  elektronisch ueber EVEN (energievollzug.ch), PDF-Formulare abgeloest** ✓ 2026-06-07
  → `[[energienachweis-zh]]`. Offen: konkrete neue Pflichten MuKEn 2025 (kantonale Umsetzung).
- [x] **E-D7** Foerderprogramme Kt. ZH (CHF-Saetze) belegt ✓ 2026-06-08 (Stand 01.01.2026)
  → `[[foerderprogramm-energie-zh-2026]]`, `[[foerderung-energie-zh]]`, FAQ F7. Offen: Minergie-ECO +
  Solarthermie-Saetze (PDF S. 30-38); Bundes-Gebaeudeprogramm separat.
- [~] **E-D8** SIA 380/1 2009 ↔ 2016: **Q_h,li-Grundwerte stabil** (EN-2 2013 = EN-102 2018, ✓ 2026-06-09
  → `[[enfk-en-02-waermeschutz-2013]]`); zudem Versionsabweichungen Fenster 1,3→1,0 / Ψ-Fensteranschlag /
  Umbau-Faktor dokumentiert in `[[u-werte-grenzwerte-ch]]`. Offen: konkrete :2016-Aenderungen der Standardnutzung.

## Inhaltliche Luecken
- [x] **E1** λ-Wert-Bandbreiten Daemmstoffe inkl. **Naturdaemmstoffe/VIP/WDVS** belegt ✓ 2026-06-09
  → `[[daemmstoffe-lambda]]`, `[[sia-2001-waermedaemmstoffe-lambda]]` (vollst. S.1-17). Offen: Bemessungswerte-Zuschlag SIA 279.
- [x] **E2** Bauteilekatalog Kap. 4 (homogene Standardaufbauten Boeden B1-B21 / Waende W1-W26) belegt
  ✓ 2026-06-10 → `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]` (Kap.-4-Abschnitt). Offen: inhomogene
  Bauteile (Sparrendach/Holzbau) + Daecher (Buchseiten 44+).
- [~] **E3** Fenster/g-Wert: sommerlicher Waermeschutz + g_tot 0,1-0,15 belegt ✓ 2026-06-09
  → `[[sommerlicher-waermeschutz]]` (FAQ F11). Offen: eigener Fenster-Artikel U_w/Aw + Winter-Zielkonflikt solarer Gewinn.
- [x] **E4** Minergie-Stufen (P/A/ECO): belegt ✓ 2026-06-06 → `[[minergie-standards]]`, FAQ F5.
- [x] **E5** PV: Typen-Entscheidungsbaum belegt ✓ 2026-06-07 → `[[pv-solar-technologien]]`, FAQ F4.
  Offen: Ertrags-Kennzahlen je Ausrichtung/Neigung (kWh/kWp).
- [~] **E6** Netto-Null + graue Energie: Sanieren-vs-Neubau-Kriterien. **Graue Energie belegt**
  ✓ 2026-06-10 → `[[graue-energie]]`, `[[graue-energie-betriebsenergie]]`, FAQ F9 (Groessenordnung
  20-30 % Betriebsenergie, Tragstruktur-Hebel, THGE 11 kg). Offen: KBOB/SIA 2032-Kennwerte,
  konkrete Sanieren-vs-Neubau-Schwelle, Netto-Null-Definition (F8).
- [x] **E7** Heizungsersatz Kt. ZH — Verfahren + Beilagen je Waermequelle + fossil-Verbot belegt
  ✓ 2026-06-10 → `[[wta-formular-zh-waermetechnische-anlagen]]`, FAQ F14. Offen: WP-JAZ-Vergleich (F6).

## FAQ-Backlog
- [~] **E-F** BAUHERREN-FAQ: 13 Antworten belegt (F1-F5/F7/F9-F15; **F15 Massivholz/CLT neu
  ✓ 2026-06-11**); offen **F6** (WP-Vergleich/JAZ-Matrix), **F8** (Netto-Null-Definition).
- [x] **E8** Holzbau-/CLT-Bauphysik belegt ✓ 2026-06-11 → `[[holzbau-bauphysik-clt]]`,
  `[[clt-bauphysik-stora-enso]]` (FAQ F15: λ 0,12, folienfrei luftdicht n₅₀ 0,6, feuchtevariabel).
  Offen: CLT-Bauteilkatalog (Stora Enso Kap. 4 S. 38-178) + CLT-Schallschutz.
- [x] **E9** Private Kontrolle ZH / wer zeichnet den EN-Nachweis belegt ✓ 2026-06-11
  → `[[private-kontrolle-zh]]` (BBV I §4-7, EN-Formular-Matrix; FAQ F12 geschaerft).
  Offen: Energienutzungs-Deklaration bei geringfuegigen Umbauten (B2).
- [x] **E-H1** Heizleistung/Waermeerzeuger-Dimensionierung belegt ✓ 2026-06-08
  → `[[bfe-waermeerzeugerleistung-2015]]`, `[[heizleistung-und-waermeerzeuger]]`, FAQ F13.
- [x] **E-H2** Rechenbeispiel Heizwaermebedarf (Monatsbilanz) belegt ✓ 2026-06-08
  → `[[sia-380-1-beispiel-monatsbilanz]]`. SIA-380/1-Standardnutzung Tab. 24/25 → `[[sia-380-1-standardnutzungswerte-tab24-25]]`.

## Struktur
- [ ] **E-S1** Pruefen: eigenes Skill `energie` (Trigger-Set), sobald KB traegt (curriculum M2).
