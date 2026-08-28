---
quelle: "Bauphysik-Lehrbuch, Kap. 6 «Energie/Leistung», Abschn. 6.2 Heizleistungs- und Energiebedarfsberechnungen (S. 146-147)"
herausgeber: "Fachbuch (Herausgeber im Scan nicht ausgewiesen)"
ausgabe: "Tabelle 6.2 bezieht sich auf SIA 380/1 (2009)"
gelesen: "2026-06-06 (S. 146-147)"
datenstand: "SIA 380/1:2009; Kennwerte in MJ/m²·a"
status: emerging
last_updated: "2026-06-06"
---

# Heizwaermebedarf-Kennwerte & Waermestrombilanz (Bauphysik, S. 146-147)

## Das Wichtigste in 1 Satz
Der Heizwaermebedarf-Grenzwert haengt von der **Gebaeudehuellzahl A_th/A_E** ab (kompaktes
Gebaeude = tieferer zulaessiger Wert), und die SIA 380/1 unterscheidet einzuhaltende
**Grenzwerte** von anspruchsvolleren **Zielwerten** bei optimaler Planung.

## Kernzahlen — Tabelle 6.2 (Anforderungen SIA 380/1:2009, Q_h in MJ/m²·a)
Jahresmitteltemperatur 8,5 °C. A_th/A_E = Gebaeudehuellzahl (therm. Huellflaeche / EBF).

| Gebaeudekategorie | A_th/A_E | Grenzwert | Zielwert |
|---|---|---|---|
| Einfamilienhaus (EFH) | 2,0 | 195 | 117 |
| Mehrfamilienhaus (MFH) | 1,3 | 140 | 84 |
| Verwaltung | 0,8 | 133 | 80 |
| Industriebauten | 1,8 | 186 | 112 |
| Spezielle Bauten (z.B. Spitaeler) | 0,8 | 144 | 86 |

> Einordnung (eigene): Die Werte sind in **MJ/m²·a** angegeben (÷ 3,6 ≈ kWh/m²). Sie
> korrespondieren mit der Formel Q_H,li = Q_H,li0 + ΔQ_H,li·(A_th/A_E) aus EN-102 (dort kWh/m²),
> ausgewertet bei der jeweils typischen Huellzahl der Kategorie. Der **Zielwert** liegt grob bei
> ~60 % des Grenzwerts.

> ⚠ **Der Faktor 60 % gilt nur fuer die hier wiedergegebene Ausgabe SIA 380/1:2009 — heute sind
> es 70 %** (nachgetragen 28.08.2026, Run 166). In der Tabelle oben ist 60 % korrekt und
> nachrechenbar (EFH 195/117, MFH 140/84, jeweils exakt 0,60). Die geltende Fassung
> **SIA 380/1:2016** hat den Faktor durch die **Korrigenda SIA 380/1-C1:2019** geaendert.
> Woertlich, Ziff. 2.3.11, linke Spalte «bisher» / rechte Spalte «Korrektur»:
> «Die Zielwerte Q_H,ta fuer Neubauten betragen **60 %** der Grenzwerte Q_H,li fuer Neubauten.
> Q_H,ta = 0,6 · Q_H,li» → «Die Zielwerte Q_H,ta fuer Neubauten betragen **70 %** der Grenzwerte
> Q_H,li fuer Neubauten. Q_H,ta = **0,7 · Q_H,li**».
> Korrigenda genehmigt 23.10.2018 durch die SIA-Kommission fuer Gebaeudetechnik- und
> Energienormen, **gueltig ab 01.03.2019**, 5 S., Preisgruppe 0 (kostenlos), Referenznummer
> SN 520380/1-C1:2019 de. Im Volltext gelesen 28.08.2026 (SHA-256 des geprueften PDF
> `cce8de67ff7509a90875f83941f555b50b63accae26c0500f1062ce86bf0e60f`).
> **Fuer die Bauherren-Beratung heisst das:** wer den Zielwert heute als «40 % unter dem
> Grenzwert» verkauft, verspricht zehn Prozentpunkte zu viel — die Latte liegt seit 2019
> bewusst tiefer, weil der 2016er-Grenzwert selbst schon deutlich schaerfer ist als der
> 2009er. Der Zielwert bleibt die Messlatte fuer ambitionierte Bauherren, aber mit 0,7.

> ⚠ **Rechennorm-Verweis ueberholt** (gleiche Korrigenda, nachgetragen 28.08.2026): Die unten
> genannte **EN ISO 13790** ist zurueckgezogen. Die Korrigenda C1:2019 ersetzt den Verweis in
> SIA 380/1:2016 durchgehend durch **SN EN ISO 52016-1** (u.a. Ziff. 3.1.1: «Die Berechnung des
> Heizwaermebedarfs richtet sich nach dem Monatsbilanzverfahren von SN EN ISO 52016-1»).

## Waermestrombilanz (Grundlagen)
- Momentane Heizleistung je Raum: **Φ_h = Φ_T + Φ_V − Φ_g**
  (Transmission + Lueftung − nutzbare Abwaerme von Personen/Geraeten/Sonne).
- Spez. Transferkoeffizienten: **H = H_T + H_V** (Transmission + Lueftung, in W/K).
- Transmissionsverluste: **Q_T = H_T·(θ_i − θ_e)·Δt**, mit
  H_T = Σ_x b_T,x·(Σ A_i·U_i + Σ l_k·Ψ_k + Σ χ_j) — die U-Werte der Flaechen, die
  laengenbezogenen (Ψ) und punktfoermigen (χ) Waermebruecken.
- b_T,x = Reduktionsfaktor bei Bauteilen gegen Erdreich/unbeheizte Raeume.
- Detaillierte Energiebedarfsberechnung nach **EN ISO 13790**, Transferkoeffizient nach
  **EN ISO 13789**.

## Bauherren-Transfer
- **«Warum darf mein Nachbar mehr Energie verbrauchen?»** → Weil der Grenzwert von der
  **Kompaktheit** abhaengt: ein zerklueftetes EFH (viel Huelle je m² Flaeche, Huellzahl ~2)
  darf rechnerisch mehr verbrauchen als ein kompakter Riegel (~0,8), erreicht aber real
  schlechtere Werte. **Kompakt bauen** ist die billigste Energiemassnahme.
- **Grenzwert vs. Zielwert:** Der Grenzwert ist die Pflicht, der Zielwert das, was «mit
  optimaler Planung ohne wesentlichen Mehraufwand» erreichbar ist — eine gute Messlatte fuer
  ambitionierte Bauherren (entspricht etwa Minergie-Niveau).

## Offene Punkte
- Quelle ist ein Lehrbuch-Scan ohne Titel/Autor auf den gelesenen Seiten — Herausgeber bei
  Gelegenheit nachtragen. Inhaltlich deckungsgleich mit SIA 380/1:2009.

Verwandt: `[[sia-380-1-heizwaermebedarf-berechnung]]`, `[[enfk-en-102-waermeschutz-2018]]`,
`[[minergie-besser-planen-bauen]]`.
