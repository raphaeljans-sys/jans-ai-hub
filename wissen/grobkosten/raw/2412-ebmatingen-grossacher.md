# Roh-Beleg: 2412 Ebmatingen «Im Grossacher 2» — Grobkostenschätzung Stand 25.11.2024 (CHF/m² GF, nicht CHF/m³ GV)

Quelle: SharePoint `AR - 03 Studien/2412 Ebmatingen/09_Dokumente/Im Grossacher 2/
Grobkostenberechnung/2412_Ebmatingen Im Grossacher 2 Grobkostenschätzung Stand241125.xlsx`
(identisch auch unter `02_KORR BOP/Bopp Christoph/_Archiv/` und `01_Plaene/99 Grundlage/Bopp/`
abgelegt — mehrfach kopiert, aber inhaltlich derselbe Stand). Bauherr/Ansprechpartner Christoph
Bopp (Memory `anrede-kontakte`: Du-Kontakt WOMA). Extrahiert Run 4 (25.07.2026) im Hauptkontext
(LibreOffice-Konvertierung zu CSV, da .xlsx nicht direkt textuell lesbar).

**Wichtiger Unterschied zur bestehenden KB-Konvention:** Dieses Dokument rechnet in
**CHF/m² Geschossfläche (GF)**, nicht in CHF/m³ Gebäudevolumen (GV) wie die übrige
`kennwerte.md`. Kein Volumen (m³) im Dokument genannt — Umrechnung würde einen GV/GF-Faktor
erfordern, der hier NICHT verfügbar/verifiziert ist (Rule `identifikatoren-verifizieren`:
nicht rechnerisch ergänzen).

## Auswertung (Geschossweise Flächenberechnung, Wohnbau MFH)

| Geschoss | GF m² | NF/GF-Faktor | HNF (implizit) | CHF/m² GF | Kosten CHF | Anz. Whg |
|---|---|---|---|---|---|---|
| DG | 154 | 0.7 | 114 | 2'400 | 370'000 | 1 |
| OG | 211 | 0.7 | 155 | 2'400 | 500'000 | 3 |
| EG | 211 | 0.7 | 148 | 2'400 | 500'000 | 2 |
| UG | 211 | 0.7 | 79 | 2'400 | 500'000 | 1 |
| TG | 211 | — | — | 2'400 | 500'000 | — |
| **Total** | **998** | — | **496 (Summenzeile, inkonsistent zu 0.7×998=699 — Diskrepanz nicht aufgelöst)** | Ø 2'375 | **2'370'000** | 7 |

- Kostenfaktor-Zeile weist zusätzlich CHF 4'780 aus (Einheit im Dokument nicht eindeutig —
  vermutlich ein CHF/m²-HNF-Kennwert, nicht übernommen, da nicht zweifelsfrei zuordenbar).
- CHF/Whg: 338'571 (2'370'000 / 7 Whg).
- Nebenpositionen: Rückbau 50'000 CHF, Umgebung/Gebäudestempel (Parzelle 888 m², bebaute
  Fläche ~200 m², Restfläche × Faktor 150) = 103'200 CHF — nicht Teil der 2'370'000.
- Ertragsseite (nicht Teil dieser KB, nur zur Einordnung): Mietertrag CHF 100'200/Jahr,
  Kapsatz 3.5 %, Ertragswert CHF 2'862'857.
- **NF/GF-Diskrepanz:** Die geschossweise Spalte weist durchgehend 0.7 aus, die Total-Zeile
  aber 496 m² HNF bei 998 m² GF (= Faktor 0.497, nicht 0.7). Nicht im Dokument erklärt — als
  interne Inkonsistenz vermerkt, nicht bereinigt (Rule `identifikatoren-verifizieren`).
- Preisstand: 25.11.2024. Nutzung: Wohnen MFH, Standard nicht explizit ausgewiesen (Kennwert
  2'400 CHF/m² GF liegt in der Grössenordnung "mittel" der Wüest-Benchmarks für BKP 1–5, aber
  nicht direkt vergleichbar wegen unterschiedlicher Bezugsfläche GF statt HNF).
- Region: Ebmatingen (Gemeinde Maur ZH).

## Einordnung für die Kennwerte-KB

**Nicht in die CHF/m³-GV-Tabelle übernommen** — falsche Bezugseinheit (m² GF statt m³ GV),
eine Umrechnung würde einen ungeprüften GV/GF-Faktor erfordern und ist damit Raten, nicht
Beleg. Als eigener Datenpunkt mit CHF/m²-GF-Einheit dokumentiert für eine mögliche künftige
"CHF/m² GF"-Nebentabelle oder zur Diagonal-Prüfung gegen die Wüest-Kalibrierung — hier
nicht weiter verdichtet (ausserhalb des in `training/PROGRAMM.md` definierten Scopes).

Abrufdatum: 2026-07-25.

## Run 6 (27.07.2026) — zweites Dokument zum selben Objekt gefunden: Residualwert-Tool, GV nur rückrechenbar, nicht promotionsfähig

Zusätzliche Quelle zum selben physischen Projekt (Im Grossacher 2, Ebmatingen), diesmal aus
SharePoint `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/8123 Ebmatingen 3932 Im Grossacher 2 RW
Residualwert/` — zwei Varianten `hoch 2415 Immo-02-P23D-Residualwert_Projektbewertung.pdf` und
`tief 2415 Immo-02-P23D-Residualwert_Projektbewertung.pdf`.

- Nutzung: Wohnen 100 % (Neubau MFH, 7 Whg., Mix 2-/3-/5-Zi.), HNF 504 m², GF 579 m², GSF 888 m²,
  AZ 0.65.
- Erstellungskosten Total (BKP 1-9, Gesamtsumme ohne Einzelcodes): Variante "hoch"
  **2'867'000 CHF** (5'690 CHF/m² HNF), Variante "tief" **2'419'000 CHF** (4'800 CHF/m² HNF).
- **Gebäudevolumen (GV) wird im Dokument NICHT explizit ausgewiesen** — ein CHF/m³-GV-Kennwert
  wäre nur durch Rückrechnung aus einem sekundär genannten Wert erhältlich. Gemäss
  `training/PROGRAMM.md` ("Fehlende Bezugsgrössen als fehlend markieren, NIE rechnerisch
  ergänzen oder schätzen") wird hier **kein** CHF/m³-Wert gebildet — dieser Fund bleibt ohne
  GV-Kennwert dokumentiert.
- Preisstand: Kostenbasis "Stand Sommer 2023", Dateidatum November 2024.
- Auch dieses Dokument rechnet primär in BKP 1-9 (nicht einzeln nach BKP 1-5 aufgeschlüsselt) —
  derselbe Scope-Vorbehalt wie bei `raw/2411-wald-haselstudstrasse.md`.

**Einordnung:** Bestätigt den bereits oben dokumentierten Befund — für dieses Projekt liegt
weiterhin kein verwertbarer CHF/m³-GV-Kennwert vor (weder aus der Grobkostenschätzung m²-GF
noch aus diesem Residualwert-Tool). Nicht in `wiki/kennwerte.md` geführt, auch nicht als
Einzelfall (GV fehlt vollständig, kein Rückrechnen). Abrufdatum: 2026-07-27.
