---
title: Energie — Uebersicht (PV, U-Wert, Energienachweis)
status: established
last_updated: 2026-06-06
sources: [PL - 04 Energie (SharePoint), _Formulare Kanton ZH Baueingabe/EN-ZH, endk.ch, zh.ch/energienachweise, SIA 380/1]
links: [[recht-norm-quellenlandkarte]], [[energie-pv-eignung-typenwahl]]
---

# Energie — Uebersicht (PV, U-Wert, Energienachweis)

Einstieg in die Domaene Energie (Quelle: **PL - 04 Energie**). Bedient vom Agent
`energie-berater`. Aufbau-Artikel — Kennwerte werden im Trainings-Loop belegt nachgezogen.

> **Bruecke:** Energie ist zur strategischen Prioritaet erhoben und hat eine **eigene KB
> `wissen/energie/`** mit Destillate-Layer (PDF→MD) + `BAUHERREN-FAQ` und einem **taeglichen**
> Lern-Loop (`energie-training`). Fuer Tiefe und Bauherren-Antworten **dort** nachschlagen;
> dieser Artikel bleibt der Kurz-Einstieg im Planungsgrundlagen-Kontext.

## PV / Solar — Typen, Eignung, Ertrag

Eigener Artikel: **`[[energie-pv-eignung-typenwahl]]`** — Typen-Entscheidungsbaum (A–E),
Eignungs-/Ertragswerkzeuge (sonnendach.ch, EnergieSchweiz-Solarrechner, uvek-gis, sonnenverlauf,
PVSOL) und der JANS-Benchmark ewzWHH (spez. Ertrag, Kosten/kWp, Lebensdauer). Brandschutz Solar
→ Skill `brandschutz` (VKF-Merkblatt 2001-15).

## U-Wert / Heizwaermebedarf (PL-04/U Wert berechnung)

Grenzwerte, Q_H und Bauteilkatalog liegen **belegt in der KB `wissen/energie/`** — nicht hier
duplizieren:
- U-Wert-Grenzwerte je Bauteil (Einzelbauteil- vs. Systemnachweis) → `[[u-werte-grenzwerte-ch]]`
  (Neubau opak 0,17 · Fenster 1,0 W/m²K usw., EnFK EN-102 2018 / SIA 380/1:2009).
- Minergie-Standards → `[[minergie-standards]]`. Bauteilkatalog/Daemmstoffwahl, CLT/Holz
  (Stora Enso) → PL-04/`U Wert berechnung`.

## Energienachweis ZH — EN-ZH Hauptformular

Im Kt. ZH ist das **Hauptformular EN-ZH** (EnDK-Vorlage) das zentrale Gesuchsformular fuer den
Energienachweis. Quelle: PL-04/`_Formulare Kanton ZH Baueingabe/EN-ZH.pdf` + Buero-Notiz
`_Du kannst das EN.docx` (mit Quellen zh.ch/energienachweise, endk.ch).

- **Wer/wo:** rechtzeitig **vor Baubeginn** beim **DLZ Planung, Bau und Werke** (Gemeinde) das
  vollstaendig ausgefuellte EN-ZH **plus** die einschlaegigen Fachformulare einreichen.
- **Bezug:** EN-ZH-Hauptformular ueber EnDK (`endk.ch` → Kantonale Hauptformulare → EN-ZH.pdf)
  bzw. `zh.ch/.../energienachweise`. ⚠ Lokal mit **Adobe Reader** ausfuellen (Browser-Darstellung
  fehlerhaft).
- **Inhalt EN-ZH:** allg. Projektangaben (Adresse/Parzelle, Bauherrschaft, Planverfasser),
  Projektorganisation (wer macht Brandschutz/Energie/Nachhaltigkeit, **QS-Stufe**), Checkliste der
  betroffenen Nachweise (Energie nach MuKEn, Nachhaltigkeit/Minergie/GEAK, Brandschutz mit
  QSS-Verweis, Schallschutz, Bauphysik, Erdbeben, Umwelt, Denkmal, Entwaesserung), Beilagen-
  uebersicht, Unterschriften.
- **Geringfuegige Umbauten:** separate **Energienutzungs-Deklaration fuer geringfuegige Umbauten**
  (PL-04/`_Formulare …/Energienutzungs-Deklaration … 2022.pdf`).
- **Nachweiswege** (Massnahmenpaket/System- vs. Einzelbauteilnachweis): Logik → `[[u-werte-grenzwerte-ch]]`.

⚠ **Datenstand:** Kt. ZH operativ ueber EnerG seit 1.9.2022 (MuKEn 2014); **MuKEn 2025** von der
EnDK 08/2025 verabschiedet, ZH-Umsetzung (Stand 06/2026) ausstehend → aktuelle Formularversion
vor Einreichung pruefen (`endk.ch`).

## Offen (→ QUESTIONS)
- E4-Detail: EN-ZH Fachformular-Liste je Fachbereich (Inhalt der einzelnen Beilagen) noch
  unbelegt → naechster Energie-Lauf.
- Kandidat: eigenes Skill `energie-nachweis`, sobald die Domaene traegt.
