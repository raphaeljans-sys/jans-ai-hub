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
