---
title: Energie — Uebersicht (PV, U-Wert, Energienachweis)
status: established
last_updated: 2026-06-12
sources: [PL - 04 Energie (SharePoint), _Formulare Kanton ZH Baueingabe/EN-ZH, endk.ch, zh.ch/energienachweise (12.06.2026), SIA 380/1]
links: [[recht-norm-quellenlandkarte]], [[energie-pv-eignung-typenwahl]], [[energie-energienachweis-zh-formulare]]
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

## Energienachweis ZH — EN-ZH + Fachformulare + EVEN

Im Kt. ZH ist das **Hauptformular EN-ZH** die Projektkontroll-Checkliste, die je Fachbereich auf
die **EN-Fachnachweise** verweist (EN-101…EN-141, Schallschutz S/LN-1). **Vollstaendige
Fachformular-Liste mit Nummern, Inhalt und Rechtsbezug, plus Detail EN-105/EN-110-ZH und der
EVEN-Umstellung 2026 → eigener Artikel `[[energie-energienachweis-zh-formulare]]`** (belegt
2026-06-12 aus den Original-PDF + zh.ch). Kurzfassung:

- **⚠ Bezug seit 01.01.2026: Plattform EVEN** (`energievollzug.ch`) — die fruehere PDF-Familie
  EN-101…EN-141 liegt jetzt komplett digital in EVEN. PDF bleiben nur: Energienutzungs-Deklaration
  (geringf. Umbau), WTA, **EN-104-ZH**, **EN-110-ZH**, Ausfuehrungskontrolle, Lueftung
  Fahrzeugeinstellraeume/gewerbl. Kuechen. Alt-Projekte → Plattform «Energiehub Gebaeude».
- **Wer/wo:** rechtzeitig **vor Baubeginn**; Nachweis in EVEN anlegen (frueher: DLZ/Gemeinde).
- **EN-ZH-Logik:** Art des Vorhabens (Neubau/Anbau/Umbau/Umnutzung) + SIA-Gebaeudekategorie →
  Checkliste kreuzt die betroffenen Fachnachweise an (Energiebedarf, Waermedaemmung, Heizung/WW,
  Eigenstrom, Lueftung/Kuehlung/Befeuchtung, Beleuchtung, Spezialanlagen, Schutz vor Laerm).
- **Nachweiswege** (System- vs. Einzelbauteilnachweis, SIA 380/1:2016): → `[[u-werte-grenzwerte-ch]]`.
- **Reale Anwendung JANS:** 2619-KISPI (Auflage UGZ II.8.a/b/c → EN-ZH / EN-105 / EN-110-ZH),
  gefuehrt in EVEN.

⚠ **Datenstand:** Kt. ZH operativ ueber EnerG seit 1.9.2022 (MuKEn 2014); **MuKEn 2025** von der
EnDK 08/2025 verabschiedet, ZH-Umsetzung (Stand 06/2026) ausstehend. ZH-PDF (EN-ZH Juli 2022,
EN-110-ZH Sept 2022) tragen «gueltig bis 31.12.2025» → ab 2026 EVEN-Version verwenden.

## Offen (→ QUESTIONS)
- ✓ **D4 erledigt** (2026-06-12): Fachformular-Liste belegt → `[[energie-energienachweis-zh-formulare]]`.
- D5: aktuellere JANS-PV-Ertrags-/Kosten-Benchmarks je Typ A-E (ewzWHH ist 2019).
- Neu: EVEN-Bedienung am realen KISPI-Fall dokumentieren (Maskenfuehrung/Rollen).
- Kandidat: eigenes Skill `energie-nachweis`, sobald die Domaene traegt (D3).
