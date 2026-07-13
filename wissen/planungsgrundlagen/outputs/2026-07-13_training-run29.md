# Training Run 29 — Kartenportale + Energie (Token-Vollgas) — Nachtrags-Report

**Hinweis zur Nachfuehrung:** Dieser Lauf wurde inhaltlich am 13.07.2026 bereits ausgefuehrt
(Wiki-Artikel, `curriculum.md` K20/K21 + E18-E26, `wiki/QUESTIONS.md` D10-D18 sind vollstaendig
geschrieben und durch den NAS-Selfcommit `74cb18e6` bereits gesichert), aber der Lauf endete
offenbar vor dem Schreiben dieses Output-Reports und des CHANGELOG-Eintrags. Dieser Report holt
das nach, damit `outputs/` und `CHANGELOG.md` den tatsaechlichen Arbeitsstand korrekt abbilden —
kein neuer Recherche-Inhalt, reine Dokumentations-Nachfuehrung (durchgefuehrt im Rahmen von Run 30).

## Domaenen dieses Laufs

Rotation: **Kartenportale (PL-01) + Energie (PL-04)**.

## Kartenportale — K20/K21 (zwei bestaetigte Nicht-Funde)

- **K20 XML-Datenformate-Ordner:** drei Screenshots zeigen eine generische Web-Erklaerung "Was
  ist XML" (Adobe-Artikel) ohne Geodaten-/INTERLIS-Bezug — kein Delta zur bestehenden
  7-Format-Tabelle (K8) → [[kartenportale-geoportale-uebersicht]] §Geodaten-Formate.
- **K21 Baumkataster-Ordner (oberste Ebene):** zwei Dateien sind identische Kopien des bereits
  dokumentierten GEOINFO-IT-AG-Produktblatts (K12); zwei weitere Ausdrucke zeigen nur generische
  map.geo.admin.ch-Kartenausschnitte ohne dedizierten Baumkataster-Layer → bestaetigter Nicht-Fund,
  kein neuer Artikel.

Beide Funde wurden ehrlich als Nicht-Fund dokumentiert statt uebersprungen.

## Energie — E18-E26 (zwei neu erschlossene Ordner + zwei Refresh-Checks)

- **Minergie-Nachweiskurs-Unterlagen** (`wissen.minergie.ch/Kursunterlagen_230926/`): reale
  Fallstudie "Maison Climat" (MFH Seelandweg 15 Biel, Objekt BE-120-A) liefert konkrete
  Nachweis-Kennzahlen — Heizwaermebedarf 96.8→86.9 MJ/m² (Optimierung) bzw. mit WRG-Lueftung
  78.9→62 MJ/m², SIA-2060-Elektromobilitaet-Ausbaustufen B/C1/C2 60 % + D 20 % der Parkplaetze,
  PV 56.25 kWp Dach + 18.28 kWp Fassade (≈43 Wp/m² EBF), Monitoring-Pflicht ab 1'000 m² EBF,
  THGE-Sensitivitaeten (Boeschung/Flachfundation, Holz-/Massivbau) →
  [[energie-minergie-referenzprojekt-maison-climat]] von `emerging` auf `established` gehoben.
- **`_Heizwaermebedarf/`-Ordner** (nie in `curriculum.md` erfasster PL-04-Top-Level-Ordner):
  vollstaendiges SIA-380/1-Berechnungsverfahren (11-Schritt-Formelkette Q_h=Q_T+Q_V−Q_ug +
  Beispielrechnung Bueroraum Zuerich-Stadt Januar), SIA-380/1-Anhang-A-Standardnutzungswerte
  (inkl. Kategorie VIII Spitaeler, Healthcare-relevant), SIA-384/1/384.201-
  Waermeerzeugerleistung-Dimensionierung (Formel + Holz/Pellet/Oel/Gas-Berechnungsbeispiele +
  Kontrollwerte spez. Heizleistung) → NEU [[energie-heizwaermebedarf-waermeerzeugerleistung]].
- **EN-101c Kt. Schwyz** (Willerzell-Fall): SZ-Pendant zum EN-ZH-System — PV-Ersatzabgabe-
  Befreiung bei Globalstrahlung <1'120 kWh/m²a via map.geo.sz.ch, VHKA-Pflicht-Pruefhinweis
  KEnV § 26 SZ → Ergaenzung [[energie-energienachweis-zh-formulare]].
- **Refresh-Checks:** E17-⚠-Flag aufgeloest (Kurs "Workshop Minergie-Nachweisformular" wird 2026
  weiterhin angeboten, WebSearch bestaetigt); MuKEn-2025-ZH-Umsetzung unveraendert ausstehend,
  neu erfasst EVEN-Rollout Zentralschweiz (UR/SZ/OW/NW/ZG/LU) erst Anfang 2026 (gestaffelt zu ZH).

## Register-Stand

`curriculum.md` (K20/K21, E18-E26), `wiki/QUESTIONS.md` (Abschnitte A und D) waren bereits
nachgefuehrt. `wiki/INDEX.md` und `CHANGELOG.md` werden mit diesem Nachtrag ergaenzt (siehe
CHANGELOG-Eintrag "Training Run 29").

## Naechster Schritt

Rotation weiter mit Run 30 (Recht & Norm + Brandschutz) — siehe separater Report
`2026-07-13_training-run30.md`.
