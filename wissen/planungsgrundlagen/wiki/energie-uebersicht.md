---
title: Energie — Uebersicht (PV, U-Wert, Energienachweis)
status: established
last_updated: 2026-07-13
sources: [PL - 04 Energie (SharePoint), _Formulare Kanton ZH Baueingabe/EN-ZH, endk.ch, zh.ch/energienachweise (12.06.2026), SIA 380/1, "CLT by Stora Enso — Technical documentation Building physics" (Version 06.2021, PL-04/U Wert berechnung/clt), realer JANS-Fall Biwak Grassen U-Wert-Optimierung (PL-04/U Wert berechnung/Grassen Biwak, Run 25)]
links: [[recht-norm-quellenlandkarte]], [[energie-pv-eignung-typenwahl]], [[energie-energienachweis-zh-formulare]], [[energie-private-kontrolle-zh]], [[energie-baueingabe-zusatzformulare]]
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
PVSOL), die **Benchmark-Tabelle Ertrag/Kosten je Typ** (~850–980 kWh/kWp; CHF/kWp typabhaengig
~2'000–7'400) und die EN-104-Dimensionierung. **Brandschutz/Naturgefahren Solar → eigener Artikel
`[[energie-pv-brandschutz]]`** (Swissolar-STP zu VKF-BSM 2001-15: Brandmauer-Uebergang, RWA-Abstand,
Feuerwehr ≥30 kW, Hagel/Schnee SIA 261); Bauteil-Klassen → Skill `brandschutz`.

## U-Wert / Heizwaermebedarf (PL-04/U Wert berechnung)

Grenzwerte, Q_H und Bauteilkatalog liegen **belegt in der KB `wissen/energie/`** — nicht hier
duplizieren:
- U-Wert-Grenzwerte je Bauteil (Einzelbauteil- vs. Systemnachweis) → `[[u-werte-grenzwerte-ch]]`
  (Neubau opak 0,17 · Fenster 1,0 W/m²K usw., EnFK EN-102 2018 / SIA 380/1:2009).
- Minergie-Standards → `[[minergie-standards]]`. Bauteilkatalog/Daemmstoffwahl, CLT/Holz
  (Stora Enso) → PL-04/`U Wert berechnung`.
- **CLT-Bauphysik belegt (Run 25, 2026-07-13):** "CLT by Stora Enso — Technische Dokumentation
  Bauphysik" (Version 06.2021, PL-04/`U Wert berechnung/clt/`) — Waermeleitfaehigkeit von CLT laut
  **Norm EN ISO 10456: λ = 0,12 W/mK** (Rohdichte/Holzfeuchte-abhaengig). Beispielrechnungen:
  eine **unbekleidete CLT-Platte 100 mm** erreicht **U = 0,997 W/m²K**; mit **160 mm Mineralwolle-
  Daemmung** (λ = 0,035) sinkt der U-Wert auf **0,179 W/m²K** — bereits unter dem Neubau-Grenzwert
  0,17 nahe, mit etwas mehr Daemmstaerke problemlos einzuhalten. Dieselbe Doku enthaelt eigene
  Kapitel zu **Luftdichtheit** (Vorteile von CLT, Ausfuehrungs-/Detailanschluesse) und **Feuchte/
  Diffusion** (sd-Wert, Gutachten Holzforschung Austria) sowie ueber 150 gepruefte
  **Bauteilaufbauten** (Aussen-/Innen-/Trennwaende, Decken, Daecher) — bei Bedarf gezielt
  nachschlagen statt hier zu duplizieren.
- **Realer JANS-Benchmark — Biwak Grassen** (alpine Kleinstbeherbergung, vgl. Brandschutz-Benchmark
  in [[brandschutz-pl03-wegweiser]] §4f): Wandaufbau Schutzblech (Aluminium) + 40 mm luftgefuellte
  Unterkonstruktion (λ ≈ 0,15) + 40 mm Mineralwolle (λ = 0,035) + 140 mm CLT (Stora Enso, λ = 0,13)
  ergibt **U ≈ 0,40 W/m²K** — erfuellt den geforderten Zielwert von 0,5 W/m²K mit Reserve.
  Alternative Optimierung (oekologischer Fussabdruck): Ersatz der Mineralwolle durch **Stroh**
  (λ ≈ 0,045) haelt den Zielwert weiterhin ein. Zeigt exemplarisch, wie eine schlanke
  CLT-Aussenwand ohne zusaetzliche Innendaemmung bereits mit moderater Daemmstaerke den
  Alpin-Zielwert erreicht — relevant fuer Kleinstbauten mit beschraenktem Wandaufbau-Budget
  (Gewicht/Transport auf Helikopter-Baustellen).

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
  **EVEN-Bedienung** (Rollen/Ablauf/Statusmodell/Beilagen-Upload/Private Kontrolle) →
  `[[energie-even-plattform-bedienung]]` (alle Kantone ausser BE + FL; ZH = Kanton mit PK).
- **Wer/wo:** rechtzeitig **vor Baubeginn**; Nachweis in EVEN anlegen (frueher: DLZ/Gemeinde).
- **EN-ZH-Logik:** Art des Vorhabens (Neubau/Anbau/Umbau/Umnutzung) + SIA-Gebaeudekategorie →
  Checkliste kreuzt die betroffenen Fachnachweise an (Energiebedarf, Waermedaemmung, Heizung/WW,
  Eigenstrom, Lueftung/Kuehlung/Befeuchtung, Beleuchtung, Spezialanlagen, Schutz vor Laerm).
- **Nachweiswege** (System- vs. Einzelbauteilnachweis, SIA 380/1:2016): → `[[u-werte-grenzwerte-ch]]`.
- **Wer unterzeichnet (Private Kontrolle):** im Kt. ZH unterstehen die Energienachweise **primaer
  der Privaten Kontrolle** durch befugte Fachleute (Befugnisbereiche Wä/He/Kl/Bl/Lä) — wer welches
  EN-Formular zeichnen darf, die drei Unterschriften (Bauherr/Projekt-Verantw./Befugte) und die
  interkantonale Geltung (SZ nur natuerliche Personen) → eigener Artikel
  `[[energie-private-kontrolle-zh]]` (belegt 2026-06-26, Merkblatt AWEL Stand April 2025).
- **Reale Anwendung JANS:** 2619-KISPI (Auflage UGZ II.8.a/b/c → EN-ZH / EN-105 / EN-110-ZH),
  gefuehrt in EVEN.
- **Zusatzformulare neben EN-ZH/EVEN** (WTA fuer waermetechnische Anlagen, Formular S
  Schallschutznachweis Aussenlaerm, Gesuch Versickerung Regenwasser) — eigenstaendige Verfahren,
  kein Bestandteil des Energienachweises selbst → eigener Artikel
  `[[energie-baueingabe-zusatzformulare]]` (2026-07-13).

## Graue Energie / THGE als Planungsgrundlage (PL-04, kommender Grenzwert)

Mit besser werdender Huelle wird die **graue Energie (THGE der Erstellung)** zum dominierenden
Hebel — und sie kommt **rechtlich**: Pa.Iv. 20.433 verpflichtet die Kantone, kuenftig (Art. 45
Abs. 3 lit. e EnG) **Grenzwerte fuer graue Energie** festzulegen (kommende MuKEn 2025-Umsetzung).
Heute im Vollzug nur ueber Labels: **Minergie-ECO** (THGE-Nachweis vereinfacht im Minergie-Tool
**oder** rechnerisch via Minergie-ECO-Tool; Basis **SIA 2032 + KBOB-Oekobilanzdaten**, Lebensdauer
60 J), **SNBS**, **SIA 390/1 Klimapfad**. **Methodik/Kennwerte/9 Reduktionshebel → KB
`wissen/energie/`** (`[[graue-energie]]`, `[[minergie-standards]]`) — hier kein Doppel, nur die
beschaffbare Planungsgrundlage + das reale JANS-Deliverable:

- **SIA-2040-Zielwerte Wohnen (Effizienzpfad Energie, Standardpersonenflaeche, Richtwerte
  kWh/m²·a Primaerenergie nicht erneuerbar):** Erstellung **30** (Neubau) / 20 (Umbau) · Betrieb
  **60 / 70** · Mobilitaet **30 / 30**; Zielwert E+B-Zusatzanforderung **~90**. Bei Belegungs-
  vorschriften hoeher (Erstellung 30/20 · Betrieb 90/100 · Mobilitaet 40/40). Quelle PL-04/
  `_Heizwaermebedarf` (SIA 2040 Tab. 3/4) — ⚠ Edition vor Zitat verifizieren, Tiefe → `[[graue-energie]]`.
- **JANS-Benchmark — Oekobilanz Wettbewerb «Schlierenweg 31»** (ZPF Ingenieure, Remo Thalmann,
  28.03.2022): Ziel = **rechnerische Amortisation der grauen Energie aus der Erstellung mittels
  PV-Ertrags-Ueberschuss in unter 30 Jahren**. Zielwerte Erstellung inkl. PV-Anteil **THGE
  6.0 kg CO₂-eq/m²·a · graue Energie 20 kWh/m²·a · 12'000 UBP/m²·a** (akzeptabel: 9.0 / 30 / 13'000);
  Betrieb netto 0. Zeigt, **wie** ein graue-Energie-Nachweis als Wettbewerbs-Deliverable aufgebaut
  ist (Bilanz Erstellung + Betrieb − PV-Ertrag).

⚠ **Datenstand:** Kt. ZH operativ ueber EnerG seit 1.9.2022 (MuKEn 2014); **MuKEn 2025** von der
EnDK-Plenarversammlung **29.08.2025** verabschiedet (Umsetzungshorizont bis 2030; Neubau neu: graue-
Energie-THG-Grenzwert nach Minergie-Reglement ab 01.01.2025, vollstaendig erneuerbare Waerme,
**Eigenstrom 20 W/m² EBF** statt 10). **ZH-Ueberfuehrung Stand 04.07.2026 weiter ausstehend** — bis
dahin gilt weiterhin MuKEn 2014 (Eigenstrom 10 W/m²). Details/Artikel-Nummern →
`[[energie-energienachweis-zh-formulare]]` §Datenstand. ZH-PDF (EN-ZH Juli 2022, EN-110-ZH Sept 2022)
tragen «gueltig bis 31.12.2025» → ab 2026 EVEN-Version verwenden.

## Offen (→ QUESTIONS)
- ✓ **D4 erledigt** (2026-06-12): Fachformular-Liste belegt → `[[energie-energienachweis-zh-formulare]]`.
- ✓ **E6 erledigt** (2026-06-18): Brandschutz/Naturgefahren Solar → `[[energie-pv-brandschutz]]`.
- ✓ **D7 erledigt** (2026-06-26): Private Kontrolle Energie ZH → `[[energie-private-kontrolle-zh]]`.
- ~ **D5 teil-erledigt** (2026-06-18): Benchmark-Tabelle Typ A/E/Flachdach belegt; Typ B/C/D offen.
- ~ **D8/D1 teil** (2026-07-04): graue-Energie-Planungsgrundlage + MuKEn-2025-Neuerungen belegt
  (SIA 2040 + JANS-Benchmark; MuKEn 2025 = THG-Grenzwert nach Minergie-Reglement, Eigenstrom
  20 W/m²); konkreter **ZH-Grenzwert** nachziehen, sobald kant. Gesetz/Verordnung publiziert.
- ✓ **D6 erledigt** (2026-07-04): EVEN-Bedienung (Rollen/Ablauf/Statusmodell/Beilagen/Private
  Kontrolle) aus EnDK-Schulung V1.4 → `[[energie-even-plattform-bedienung]]`; offen nur noch
  realer JANS-Screenshot-Walkthrough am KISPI-Fall.
- **D3 entschieden (2026-07-13, Run 23): KEIN eigenes Skill `energie-nachweis`.** Begruendung:
  die Domaene ist bereits vollstaendig abgedeckt — Fachformulare/Prozess in
  `[[energie-energienachweis-zh-formulare]]` + `[[energie-baueingabe-zusatzformulare]]`,
  Plattform-Bedienung in `[[energie-even-plattform-bedienung]]`, Unterschriftsbefugnis in
  `[[energie-private-kontrolle-zh]]`, PV-Fachfragen in `[[energie-pv-eignung-typenwahl]]` +
  `[[energie-pv-brandschutz]]`, und der Agent `energie-berater` bedient all das bereits als
  Fan-out des Skills `planungsgrundlagen`. Ein eigenes Skill wuerde nur Struktur duplizieren, ohne
  neue Faehigkeit zu schaffen (kein eigener Generator/Workflow, der einen Skill rechtfertigen
  wuerde) — Entscheid gegen Proliferation, Domaene bleibt im Wiki + Agent organisiert.
