---
title: PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)
status: established
last_updated: 2026-06-06
sources: [PL - 04 Energie/Solaranlage (SharePoint), EnergieSchweiz Solarrechner Usermanual (Okt 2022), JANS-Projekt ewzWHH PS 19.36 (Korrespondenz 02/2019), uvek-gis.admin.ch, sonnenverlauf.de]
links: [[energie-uebersicht]], [[kartenportale-geoportale-uebersicht]]
---

# PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)

Beschaffungs-/Entscheidungs-Artikel der Domaene Energie: **welcher PV-Typ wann** und **wie
Eignung/Ertrag belegt bestimmt wird**, bevor ein konkretes Projekt geplant wird. Bedient vom
Agent `energie-berater`. Physik/U-Werte/Heizwaermebedarf → eigene KB `wissen/energie/`
(`[[u-werte-grenzwerte-ch]]`). Brandschutz Solar → Skill `brandschutz` (VKF-Merkblatt 2001-15).

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

## 3 — JANS-Benchmark: Flachdach-PV ewzWHH (PS 19.36, 02/2019)

Reale Projektkorrespondenz (ewz / Meili Peter Partner / IBG Engineering, 13.02.2019,
`Solaranlage/D Fassaden PV Anlage/190213 E Vorgehen PV.pdf`) — aufgestaenderte Flachdach-PV in
**V-Anordnung** mit extensiver Dachbegruenung:

- **Spez. Energieertrag:** mit maximaler Belegung eher tief; ewz-Fachexperte: **bis ~850 kWh/kWp**
  erreichbar bei weniger dichter Belegung (weniger Verschattung Bruestung/Lueftung).
- **Erstellungskosten:** ewz-Referenzanlage Greencity **~CHF 1'600/kWp realisiert**
  (Schaetzung Generalplaner CHF 2'460/kWp). ⚠ Werte **2019**, vor Kontextpruefung nicht aktuell zitieren.
- **Wirtschaftlichkeit:** Amortisation 31 J «nicht mehr wirtschaftlich»; ohne Foerderfaktor ~19 J.
  **Technische Lebensdauer PV 25–30 J** → Amortisation muss klar darunter liegen.
- **Simulation:** PVSOL.
- **Konstruktionsdetail V-Anordnung:** Wasser sammelt sich am V-Tiefpunkt aufs Substrat →
  Pflanzenwuchs/Pflege; ewz-Empfehlung **50 cm Kiesstreifen statt Substrat unter dem V-Tiefpunkt**.

**Lehre fuer JANS-Studien:** aufgestaendert + Dachbegruenung ist gestalterisch/oekologisch stark,
aber Belegungsdichte ↔ spez. Ertrag ist ein Zielkonflikt; Entwaesserung am V-Tiefpunkt mitplanen.

## Querbezuege
- Wirtschaftlichkeit/Rendite einer Anlage → Skill `healthcare-wirtschaftlichkeit` /
  `wirtschaftlichkeit-rechner` (Annuitaet, Amortisation).
- Welches Portal liefert die Dach-/Hoehengeometrie → `[[kartenportale-geoportale-uebersicht]]`.
- Eigenstromerzeugungs-**Pflicht** (Neubau, MuKEn/EN-104) → `[[u-werte-grenzwerte-ch]]` (KB energie)
  bzw. `[[energie-uebersicht]]` §Energienachweis.

## Datenstand / offen
⚠ Solarrechner-Kennwerte Stand 10/2022; Modulwirkungsgrade steigen → Faustwert m²/kWp periodisch
nachziehen. ewz-Kostenbenchmark 2019. Offen: belegte Ertrags-/Kosten-Bandbreite je Typ (A–E) aus
aktuelleren JANS-Projekten (→ `wiki/QUESTIONS.md` D).
