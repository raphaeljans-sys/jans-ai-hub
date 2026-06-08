---
title: Recht & Norm — Quellenlandkarte (PL-02)
status: established
last_updated: 2026-06-08
sources: [PL - 02_Recht_Norm (SharePoint), fedlex.admin.ch]
links: [[kartenportale-oereb-egrid-bezug]], [[recht-norm-baurechtsanalysen-benchmarks]]
---

# Recht & Norm — Quellenlandkarte (PL-02)

**Kein Doppel** zur Baurechts-Wissensbasis: die rechtliche Wuerdigung laeuft ueber den Skill
`baurecht` und die KB `wissen/baurecht`. Dieser Artikel ist der **Wegweiser**, wo in
**PL - 02_Recht_Norm** welche Rohquelle liegt — und (neu) **wie man die aktuelle, zitierfaehige
Fassung eines Bundeserlasses ueber fedlex bezieht**, statt die gespeicherte (oft veraltete) PDF.

## Vollstaendige Struktur PL-02 (Stand 2026-06-08)

Der Ordner ist breiter als der erste Wegweiser-Stand. 10 Top-Ordner + `Tiefgarage`:

| Top-Ordner | Inhalt (Kurz) | Primaere Nutzung |
|---|---|---|
| `01_Gesetze` | Bund / Schwyz / Zuerich / Rechtsprechung / Rechtsliteratur / Dispensrecht / Wohnbaufoerderung / Skizzen / **Baurechtsanalysen** | Faktenbasis Skill `baurecht`; reale BRA → [[recht-norm-baurechtsanalysen-benchmarks]] |
| `02_Normen` | SIA / VKF / DIN / RAL / Lignum / **VSS** | Normtext-Bezug; VKF → Skill `brandschutz`, VSS → Verkehr/Tiefgarage |
| `03_Arbeitshilfen` | 2h-Schatten, Baudokumentation, Briefkastenanlage (Post), spezielle Bauteile, Teilungsplan STWEG | Planungs-Detailregeln; STWEG → Skill `stockwerkeigentum` |
| `04_Merkblaetter` | Fugenlose Bodenbelaege, Unterlagsboden, Projektadmin AHB, eco | Ausfuehrungs-Detail |
| `05_Raumpilot` | Raumpilot-Reihe (Grundlagen/Wohnen) | Entwurfs-Kennwerte (Raumprogramme) |
| `06_Richtlinien` | 2000-Watt, BKZ, BfU, GVZ, Lignum Brandschutz, Minergie, SECO, SWKI, Suissetec, Suva, VSA, _Kt. ZH / _Stadt ZH / _Kt. Basel | Behoerden-/Fach-Richtlinien |
| `07_Neuffert` | Neufert (Bauentwurfslehre) | Mass-/Raumkennwerte |
| `08_Richtplan` | Richtplan-Unterlagen | uebergeordnete Planung |
| `09_Sanitaereinrichtung` | Sanitaer-Anordnung Kl. Hochbau | Ausstattungs-Kennwerte |
| `10 Laermschutz` | Laermschutz (→ LSV 814.41 / Empfindlichkeitsstufen) | Laerm-Vorabklaerung |
| `Tiefgarage` | VSS-Norm, Anlieferung, Rampen, Wendehammer, Beispiele, Planer | TG-Geometrie (Verweis VSS) |

`01_Gesetze/02_Zuerich` ist weiter gegliedert: `Planung` (00 PBG, ABV/BBV/BVV, BZOs,
**IVHB_Leitfaden**, MPP, Mehrwert-/Beseitigungsrevers, SM Blaues/Rotes Buch, Uebergangsbestimmungen),
`Energie`, `Submission` (SubV 720.11, 4094), `Wasser`, `Zivilschutz`.

## Bundeserlasse — SR-Nummer → fedlex (zitierfaehige Fassung)

> **Regel:** Fuer ein Gutachten/eine Studie nie die im Ordner liegende PDF zitieren (Dateinamen
> mit alten Datumsstempeln wie `730.1_19.6.83`, `700.5_9.12.87`, `722.15_15.6.83` sind
> **historische Fassungen**), sondern die **aktuelle konsolidierte Fassung von fedlex** mit
> "Stand am"-Datum. Quelle: fedlex.admin.ch (amtliche Systematische Rechtssammlung SR).

Im Ordner abgelegte Bundeserlasse (SR-Nummer aus Dateiname) und ihre Zuordnung:

| Datei (PL-02) | SR | Erlass | fedlex ELI (bestaetigt) |
|---|---|---|---|
| `151.3.de.pdf` | 151.3 | BehiG — Behindertengleichstellungsgesetz | via fedlex SR-Suche |
| `451.de.pdf` | 451 | NHG — Natur- und Heimatschutzgesetz | via fedlex SR-Suche |
| `451.1.de.pdf` | 451.1 | NHV — Verordnung NHG | via fedlex SR-Suche |
| `700.de.pdf` | 700 | **RPG — Raumplanungsgesetz** | `cc/1979/1573_1573_1573` ✓ |
| `700.1.de.pdf` | 700.1 | **RPV — Raumplanungsverordnung** | via fedlex SR-Suche |
| `730.0.de.pdf` | 730.0 | **EnG — Energiegesetz** (vom 30.9.2016) | `cc/2017/762` ✓ |
| `730.1_19.6.83_*` | (alt) | Energie-Verordnung, **historische Fassung 1983** | aktuell: **EnV SR 730.01** = `cc/2017/763` ✓ |
| `814.20.de.pdf` | 814.20 | GSchG — Gewaesserschutzgesetz | via fedlex SR-Suche |
| `814.318.142.1.pdf` / `LRV_*` | 814.318.142.1 | LRV — Luftreinhalte-Verordnung | via fedlex SR-Suche |
| `814.41.de.pdf` | 814.41 | LSV — Laermschutz-Verordnung | via fedlex SR-Suche |
| `700.5_9.12.87`, `722.15_15.6.83` | (alt) | aeltere Erlasse/Fassungen — vor Zitat auf fedlex gegen aktuelle SR pruefen | speculative |

### fedlex-Bezugsschema (belegt, getestet 2026-06-08)
- **Menschliche HTML-Ansicht (stabil):** `https://www.fedlex.admin.ch/eli/cc/<jahr>/<id>/de`
  — z.B. RPG `…/eli/cc/1979/1573_1573_1573/de`. (Braucht JavaScript; nicht maschinell parsbar.)
- **Zitierfaehige, datierte PDF-A** (eine konkrete "Stand am"-Fassung, maschinen-ladbar):
  ```
  https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/<jahr>/<id>/<JJJJMMTT>/de/pdf-a/fedlex-data-admin-ch-eli-cc-<jahr>-<id>-<JJJJMMTT>-de-pdf-a.pdf
  ```
  `<JJJJMMTT>` = das gewuenschte In-Kraft-/Stand-Datum. Host alternativ `fedlex.data.admin.ch`.
  Beispiel RPG Stand 01.01.2026: `…/eli/cc/1979/1573_1573_1573/20260101/de/pdf-a/…20260101-de-pdf-a.pdf` (ladbar bestaetigt).
  Beispiel EnG Stand 01.01.2026: ELI `cc/2017/762` → `…/20260101/…`.

## ⚠ Datenstand — kritische Aktualitaet (Stand 2026-06-08)

- **RPG 2 (revidiertes Raumplanungsgesetz):** tritt **gestaffelt am 01.01.2026 und 01.07.2026**
  in Kraft; die **RPV-Aenderungen vom 15.10.2025** sind **seit 01.01.2026** in Kraft.
  → Die im Ordner liegenden `700.de.pdf` / `700.1.de.pdf` sind **Vor-2026-Fassungen** und fuer
  Studien ab 2026 **veraltet** — vor Zitat die fedlex-Fassung mit Stand ≥ 20260101 (bzw. 20260701)
  ziehen. ZH-Umsetzung RPG 2: Kanton ZH publiziert eigene Umsetzung (zh.ch → Raumplanung/RPG 2).
  Quelle: fedlex SR 700 / Suche RPG 2026; zh.ch "Umsetzung RPG 2".
- **EnG SR 730.0:** aktuelle konsolidierte Fassung "**Stand am 01.01.2026**" (u.a. Aenderung
  Bundesgesetz 29.9.2023 sichere Stromversorgung, in Kraft 01.01.2025). Quelle: fedlex `cc/2017/762`.
- **Kantonales Recht (ZH/SZ):** nicht ueber fedlex — ZH via `zh.ch`/LS-Sammlung, SZ via
  `sz.ch`/`lexfind.ch`. Messweisen/Ausnuetzung → Faktenbasis Skill `baurecht`.
- Erlasse mit Dateinamen-Datum >18 Mt. ohne Pruefung gelten als **potenziell veraltet** → vor
  Zitat fedlex-Abgleich (siehe QUESTIONS B1).

## SZ ↔ ZH — Messweisen (Kurz, Tiefe → `baurecht`)
- **Kt. ZH** wendet die **IVHB** (Interkantonale Vereinbarung Harmonisierung Baubegriffe) ueber
  das PBG/die ABV an — `02_Zuerich/Planung/IVHB_Leitfaden` ist die Lese-/Umsetzungshilfe.
- **Kt. SZ** definiert Mass-Begriffe direkt im **PBG/PBV** — im Ordner als Artikel-Screenshots
  belegt: `Art 42 Messweise Firsthoehe`, `Art 60 Gebaeudehoehe`, `Art 31i Geschossflaechenziffer`,
  `Art 35 Waldabstand`, `Art 61 Nebenbauten/unterirdische Bauten`; **Ausnuetzungsziffer abgeschafft**
  (RRB 457/2014, `rrb_457_2014_M_Abschaffung_Ausnuetzungsziffer.pdf`).
- Konkrete Abstands-/Hoehen-/Ausnuetzungsfragen → **Skill `baurecht`** (zitiert aus dieser
  Sammlung + Gesetzessammlung); hier nur Wegweiser, kein Abschreiben.

## Dispensrecht (Verweis `baurecht`)
`01_Gesetze/05_Dispensrecht` enthaelt einen realen **BRKE-Entscheid** (`BRKE_I_0247_2010_722.pdf`)
+ Screenshots — als Muster fuer Dispens-/Ausnahmebewilligungs-Argumentation. Wuerdigung → `baurecht`.

## Nutzung (Entscheidungshilfe)
- **Rechtsfrage** → Skill `baurecht`.
- **Aktuelle Erlass-Fassung zum Zitieren** → fedlex (Schema oben), nicht die Ordner-PDF.
- **Reale Praezedenz / Benchmark** → [[recht-norm-baurechtsanalysen-benchmarks]] (`08_`).
- **Normtext** → `02_Normen/<Normgeber>` (VKF → `brandschutz`, VSS → Tiefgarage/Verkehr).
- **Mass-/Raumkennwerte** → `05_Raumpilot`, `07_Neuffert`, `09_Sanitaereinrichtung`.

## Offen (→ QUESTIONS)
- B1: systematischer fedlex-Abgleich aller `01_Bund`-PDF (Stand-Datum je SR setzen) — RPG/EnG erledigt.
- R-neu: `06_Richtlinien` (Behoerden-Richtlinien ZH/Stadt ZH) als eigener Wegweiser-Block, wenn ein
  Projekt sie braucht.
