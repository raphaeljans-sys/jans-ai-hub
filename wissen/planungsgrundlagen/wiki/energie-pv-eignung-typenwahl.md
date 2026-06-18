---
title: PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)
status: established
last_updated: 2026-06-18
sources: [PL - 04 Energie/Solaranlage (SharePoint), EnergieSchweiz Solarrechner Usermanual (Okt 2022), SolarApp-Vorprojekte Reckholdern/Einsiedeln (09.01.2024) + MFH Basel (05.11.2022), JANS-Projekt ewzWHH PS 19.36 (Korrespondenz 02/2019), Formular EN-104 (EnDK, Juni 2019), uvek-gis.admin.ch, sonnenverlauf.de]
links: [[energie-uebersicht]], [[energie-pv-brandschutz]], [[energie-energienachweis-zh-formulare]], [[kartenportale-geoportale-uebersicht]]
---

# PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)

Beschaffungs-/Entscheidungs-Artikel der Domaene Energie: **welcher PV-Typ wann** und **wie
Eignung/Ertrag belegt bestimmt wird**, bevor ein konkretes Projekt geplant wird. Bedient vom
Agent `energie-berater`. Physik/U-Werte/Heizwaermebedarf → eigene KB `wissen/energie/`
(`[[u-werte-grenzwerte-ch]]`). **Brandschutz/Naturgefahren Solar → eigener Artikel
`[[energie-pv-brandschutz]]`** (Swissolar-STP zu VKF-BSM 2001-15); Bauteil-Klassen → Skill
`brandschutz`.

## 1 — PV-Typenwahl (Entscheidungsbaum)

Die fuenf in PL-04/Solaranlage gefuehrten Bauarten (Ordner A–E) und ihr Entscheidungskriterium:

| # | Typ | Konstruktion | Waehlen wenn … | Quelle PL-04 |
|---|---|---|---|---|
| A | **Indach-PV** | dachintegriert, ersetzt die Eindeckung | Neubau/Steildach-Sanierung, gestalterischer Anspruch, Dach ohnehin neu | `Solaranlage/A Indach PV Anlage` |
| B | **Dachziegel-PV** | ziegelfoermige Solarmodule | ortsbild-/denkmalsensible Lage, Kernzone, hohe Gestaltungsauflage | `Solaranlage/B Dachziegel PV Anlagen` |
| C | **Transparente PV** | semitransparente Module (z.B. SI-Saphir M175–M180) | Terrassendach, Wintergarten, Vordach — Licht + Strom | `Datenblatt_SI-Saphir_M175-M180.pdf` |
| D | **Fassaden-PV** | vertikal, Teil der Gebaeudehuelle | Stadt/Hochbau, hoher Fassaden- bei kleinem Dachanteil, Winterertrag (steiler Winkel) | `Solaranlage/D Fassaden PV Anlage` |
| E | **Aufdach / Flachdach** | aufgestaendert (Sued- oder Ost/West-/V-Anordnung) | Flachdach, schnelle Nachruestung, max. kWp pro Flaeche | `Solaranlage/E Aufdach Flachdach PV Anlage` |

**Logik kurz:** Dach neu/Steildach + Gestaltung → A (oder B im Schutzbereich). Glasdach/lichtdurchlaessig
→ C. Wenig Dach, viel Fassade / Stadt → D. Flachdach, Ertrag maximieren → E (aufgestaendert).
Kombination D+E ist bei Hochbauten ueblich (Fassade Winter, Dach Sommer).

> ⚠ Hinweis: Die JANS-Typenordner enthalten ueberwiegend Referenzbilder/Screenshots, ein
> belegtes Datenblatt (Typ C, SI-Saphir) und Hersteller-Links (megasol, prefa.solar, solar-home/
> Sunskin). Modul-/Leistungskennwerte je Hersteller bei Bedarf aus den Datenblaettern ziehen.

## 2 — Eignung & Ertrag belegt bestimmen (Werkzeuge)

Reihenfolge von grob (Portal, kostenlos) zu fein (professionelle Simulation):

| Werkzeug | Liefert | Endpunkt / Quelle | Datenstand |
|---|---|---|---|
| **sonnendach.ch** (BFE) | Eignung + grober Jahresertrag je Dachflaeche der CH | `sonnendach.ch` (geom. Basis swisstopo) | laufend (BFE) |
| **EnergieSchweiz Solarrechner** | Ertrag, Eigenverbrauch, Batterie, **Renditerechner** | `solarrechner.ch` / energieschweiz.ch | Usermanual Okt 2022 |
| **uvek-gis.admin.ch** | kartenbasierte Eignung/Ertrag, Layer | `uvek-gis.admin.ch` (Map-Viewer Bund) | laufend |
| **sonnenverlauf.de** | Sonnenstand/Verschattung ueber Jahr | `sonnenverlauf.de` | laufend |
| **PVSOL premium** | professionelle Ertrags-/Verschattungs-Simulation | Desktop (Valentin) | projektweise |

**Solarrechner-Kennwerte (Usermanual EnergieSchweiz, Okt 2022, S. 2–3):**
- Der Rechner deckt mit **4 Systemvarianten ~90 %** aller CH-Solaranlagen ab (PV mit Eigen-
  verbrauch; PV + Warmwasser/WP; PV + WW + Heizung; Solarwaerme).
- Modulflaeche↔Leistung (Beispiele S. 3): **26 m² ≈ 4.5 kWp · 39 m² ≈ 6.7 kWp · 52 m² ≈ 8.8 kWp**
  → Faustwert **≈ 5.8–6 m² pro kWp** (kristalline Module, Stand 2022).
- Annahmen Verbrauch: 2.5 kWh Strom/Person·Tag, 50 L Warmwasser/Person·Tag bei 55 °C.

## 3 — JANS-Benchmark-Tabelle: Ertrag & Kosten je Typ (D5, kompoundierend)

Reale JANS-/PL-04-Belege fuer die **zwei Faustkennwerte** einer fruehen Studie: **spez. Ertrag
(kWh/kWp)** fuer die Strommenge und **Erstellungskosten (CHF/kWp)** fuer das Budget. Beide aus
SolarApp-Vorprojekten (PVGIS-basiert) bzw. realer ewz-Korrespondenz — vor Zitat Kontext/Jahr pruefen.

| Projekt / Ort | Jahr | Typ | Leistung | Module | **kWh/kWp** | Invest CHF | **CHF/kWp** | Quelle (PL-04) |
|---|---|---|---|---|---|---|---|---|
| **Reckholdern 20, Einsiedeln SZ** (EFH, Abbruch/Neubau) | 2024 | **A Indach** (MATCH Tile, 32 Wp Solarziegel) | 7.90 kWp | 252 | **981** | 58'198 | **≈ 7'370** | `solarapp.ch/Willerzell/2024-01-09 SolarReport` |
| **MFH Basel** (2 Dachflaechen) | 2022 | **E/Aufdach** Standardmodul | 59.93 kWp | 162 | **852** | 135'257 | **≈ 2'255** | `solarapp.ch/Basel/2022-11-05_SolarReport` |
| **ewzWHH Greencity** (PS 19.36) | 2019 | **E Flachdach**, V-Anordnung aufgestaendert | — | — | **~850** | — | **~1'600 real / 2'460 Schaetzung** | `D Fassaden PV Anlage/190213 E Vorgehen PV.pdf` |

**Lesart der Bandbreite (belegt):**
- **Spez. Ertrag** liegt in ZH/SZ-Lagen belegt bei **~850–980 kWh/kWp** (Dachneigung/Verschattung/
  Standort). Faustwert fuer Grob-Studie: **~900 kWh/kWp**.
- **CHF/kWp ist stark typabhaengig:** kleinteilige **Indach-Solarziegel** (Typ A/B, viele
  Klein-Module à 32 Wp → 252 Stk. fuer 7.9 kWp) sind mit **~7'000+ CHF/kWp** ein Vielfaches der
  **Standard-Aufdach/-Indach-Module** (Typ E) mit **~2'000–2'500 CHF/kWp**. Grund: Stueckzahl,
  Montageaufwand, Aesthetik-Aufpreis. → In der Studie **nie einen Pauschal-CHF/kWp** ueber alle
  Typen ziehen.
- **Foerderung** (Pronovo EIV) senkt die Netto-Investition spuerbar: Basel CHF 22'861 (~17 %),
  Reckholdern CHF 3'674 (~6 %) — als Abzug, nicht als Ertrag verbuchen.

### Detail-Lehre Flachdach V-Anordnung (ewzWHH, ewz/Meili Peter Partner/IBG, 13.02.2019)
- **Belegungsdichte ↔ spez. Ertrag** ist ein Zielkonflikt: maximale Belegung senkt kWh/kWp
  (Verschattung Bruestung/Lueftung) — weniger dicht belegt erreicht ~850 kWh/kWp.
- **Wirtschaftlichkeit:** Amortisation 31 J «nicht mehr wirtschaftlich», ohne Foerderfaktor ~19 J;
  **techn. Lebensdauer PV 25–30 J** → Amortisation muss klar darunter liegen. Simulation PVSOL.
- **Entwaesserung V-Tiefpunkt:** Wasser sammelt sich aufs Substrat → Pflanzenwuchs/Pflege;
  ewz-Empfehlung **50 cm Kiesstreifen statt Substrat** unter dem V-Tiefpunkt.

> **Dimensionierungs-Anker (Eigenstrom-Pflicht Neubau ZH):** die **mindestens** noetige PV-Leistung
> ist **EBF × 10 W/m² (max. 30 kW)**; Flaechenbedarf **8 m²/kW** (mono/polykristallin) bzw.
> **16 m²/kW** (Duennschicht) — Quelle Formular EN-104, Detail in
> `[[energie-energienachweis-zh-formulare]]`.

## Querbezuege
- Wirtschaftlichkeit/Rendite einer Anlage → Skill `healthcare-wirtschaftlichkeit` /
  `wirtschaftlichkeit-rechner` (Annuitaet, Amortisation).
- Welches Portal liefert die Dach-/Hoehengeometrie → `[[kartenportale-geoportale-uebersicht]]`.
- Eigenstromerzeugungs-**Pflicht** (Neubau, MuKEn/EN-104) → `[[energie-energienachweis-zh-formulare]]`
  (EN-104-Detail: EBF × 10 W/m², max 30 kW) bzw. `[[u-werte-grenzwerte-ch]]` (KB energie).
- **Brandschutz/Naturgefahren** der Anlage (Brandmauer-Uebergang, RWA-Abstand, Feuerwehr ≥30 kW,
  Hagel/Schnee SIA 261) → `[[energie-pv-brandschutz]]`.

## Datenstand / offen
⚠ Solarrechner-Kennwerte Stand 10/2022; Modulwirkungsgrade steigen → Faustwert m²/kWp periodisch
nachziehen. Benchmark-Tabelle §3 deckt **D5** teilweise: Typ A (Indach-Tile 2024) + Typ E (Aufdach
2022) + Flachdach (2019) belegt; **offen Typ B/C/D** (Dachziegel/transparent/Fassade) als belegter
CHF-kWp-Benchmark — bei naechstem realen JANS-Projekt nachziehen. SolarApp-Werte sind
**Vorprojekt-Schaetzungen** (PVGIS), keine Abrechnungen → bei realer Schlussabrechnung verifizieren.
