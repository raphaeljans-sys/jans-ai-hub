# Roh-Beleg: 2414 THALWIL (Bohlweg 3, 8800 Thalwil)

Quelle: SharePoint `AR - 01 Projekte/2414 THALWIL/04 KT/` (aktives Mandat, Bauherrschaft
Stefan Tschopp). Extrahiert Run 2 (25.07.2026) durch Subagent, drei Dokumente ausgewertet.

## Projekt

- Nutzung: EFH, Umbau/Aufstockung (Schopf-Abbruch, Velokeller/Terrasse neu, Wendeltreppe,
  Aufstockung mit Terrasse, PV, Umgebungsgestaltung neu)
- Standard: nicht ausgewiesen
- Region/Ort: Thalwil ZH, Zone W3
- Bauherrschaft: Stefan Tschopp (vertraulich, bleibt in raw/)

## Primärquelle: Baukostenplan dasBaumanagement

- Datei: `04 KT/1_Kosten/Kostenvoranschlag pw/250422 EFH_Stefan_Thalwil_Baukostenplan dasBaumanagement.pdf`
- Dokumenttyp: Kostenvoranschlag (Baukostenplan, BKP-gegliedert)
- Preisstand/Dokumentdatum: 22.04.2024 (so im Dokument vermerkt; Dateispeicherdatum 22.04.2025 —
  Datumsdiskrepanz im Original, nicht interpretiert)
- MWSt-Status: fehlend, im Dokument nicht vermerkt
- GV (SIA 416): **fehlend** — keine Volumen-/Flächenbezugsgrösse im Dokument
- aGF/BGF: **fehlend**

Kosten je BKP-Hauptgruppe (CHF):

| BKP | Bezeichnung | Betrag |
|---|---|---|
| 0 | Grundstück | 0 |
| 1 | Vorbereitungsarbeiten | 5'000 |
| 2 | Gebäude | 437'800 |
| 3 | Betriebseinrichtungen | 0 |
| 4 | Umgebung | 75'000 |
| 5 | Baunebenkosten | 8'500 |
| 6 | Verkauf, Rechtsdienst | 0 |
| **Total** | | **526'300** |

Granulare Auswahl BKP 2: 211.10 Baumeisterarbeiten 20'000, 221.00 Fenster 30'000, 224.00
Flachdach sanieren 30'000 + Flachdach 15'000, 272.00 Aussen-Spindel-Treppe 45'000, 273.10
Schreinerarbeiten Terrassen 60'000, 291.10 Architekt-Honorar 60'000, 291.30 Bauleitung 20'000.
BKP 4: 421.00 Gärtnerarbeiten 50'000, 421.10 Garten Material 20'000.

**Kein CHF/m³-Kennwert ableitbar** — GV der gesamten Baute fehlt, nicht rechnerisch ergänzt.

## Sekundärquelle: Kostenschätzung JANS (250321) — Teilvolumen-Kennwerte

- Datei: `04 KT/1_Kosten/Kostenschätzung JANS/250321 Kostenschaetzung.pdf` (+ .xlsx)
- Preisstand: 21.03.2025, MWSt nicht vermerkt

| Position | Menge | EP CHF/Einheit | Preis CHF |
|---|---|---|---|
| Schopf 3a / Innenwände 1.OG Abbruch | 1 Stk. | 5'000 | 5'000 |
| Umgebungsgestaltung neu | 270 m² | 222 | 60'000 |
| Velokeller mit Terrasse neu | 90 m³ | **800/m³** | 72'000 |
| Wendeltreppe neu | 1 Stk. | 60'000 | 60'000 |
| Aufstockung mit Terrasse neu | 160 m³ | **1'600/m³** | 260'000 |
| PV-Anlage neu | 1 Stk. | 25'000 | 25'000 |
| **Total** | | | **482'000** |

Wichtig: 90 m³ / 160 m³ sind **Teilvolumen einzelner Neubau-Elemente** innerhalb eines
Umbau-Projekts, **kein Gesamt-GV nach SIA 416**. Als Teilkennwerte dokumentiert, nicht als
Gesamtgebäude-Kennwert verwendet.

## Tertiärquelle: Grobkostenberechnung Näherbaurecht (13.03.2024, Raphael Jans)

- Datei: `04 KT/5 Näherbaurecht/Grobkostenberechnung III Besonderes Gebäude im Näherbaubereich.docx`
- Isolierte Bauteil-Mehrkosten-Kalkulation (Aushub, Frostriegel, Magerbeton, Bodenplatte,
  Sockelmauer, Terrasse Monobeton, Dämmung, Fenster, Kellertüre, Geländer). Total CHF 29'050.
- Kein Gesamtprojekt-Kostenbild, nicht für Kennwerte verwendet.

## Einordnung für die Kennwerte-KB (Reife-Entscheid Run 2)

- **Kein Wohnbau-Neubau-CHF/m³-Kennwert** ableitbar (Projekt ist Umbau, GV fehlt für das
  Gesamtprojekt).
- **Teilkennwerte als Einzelfall n=1** dokumentiert in `wiki/kennwerte.md` (Aufstockung/Anbau
  EFH): Aufstockung mit Terrasse ≈ 1'600 CHF/m³, Velokeller/Terrasse-Anbau ≈ 800 CHF/m³ —
  beides JANS-eigene Grobschätzung (nicht Ausführungsofferte), Preisstand 03/2025.
- BKP-1-6-Gesamtkosten (526'300, ohne GV) bleibt als reiner Kostendaten-Beleg in raw/ erhalten,
  falls ein GV später nachgetragen werden kann (Rückfrage-Kandidat).

Abrufdatum: 2026-07-25.
