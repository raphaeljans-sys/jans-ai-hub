---
quelle: PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf_Berechnung_Beispiel.pdf
herausgeber: Buchauszug «Energetische Gesamtoptimierung» (S. 106|107); Rechengang nach SIA 380/1 (Klimadaten SIA 381/2)
ausgabe: SIA 380/1 / SIA 381/2
gelesen: vollstaendig (1 S., Doppelseite 106|107)
datenstand: ⚠ Rechenbeispiel nach SIA 380/1; Versionsjahr nicht genannt — Methodik stabil, Klimadaten gegen aktuelle SIA 381/2 pruefen.
status: established
last_updated: 2026-06-08
---

# Destillat — Rechenbeispiel Monatsbilanz Heizwaermebedarf (Bueroraum, Januar, Zuerich)

> Der **durchgerechnete** Heizwaermebedarf eines Bueroraums fuer einen Monat — zeigt konkret,
> wie aus Verlusten und Gewinnen Qh entsteht. Die anschauliche Ergaenzung zur Formel in
> `[[sia-380-1-heizwaermebedarf-berechnung]]`.

## Das Wichtigste in 1 Satz
Am Zahlenbeispiel sieht man: die solaren + internen Gewinne (hier ~17 MJ/m²) decken einen
grossen Teil der Verluste (~29 MJ/m²) — uebrig bleibt der Heizwaermebedarf von 11,8 MJ/m² im Monat.

## Ausgangslage (Bueroraum, Standardnutzung Kat. III)
Grundflaeche 30 m², Suedfassade 18 m² mit 6 m² Fenster (Silverstar V 2-fach, U_Fenster = 1,15 W/m²K,
g = 0,57). U-Wert Wand 0,2 W/m²K. Januar Zuerich: θe = 0,1 °C, θi = 20 °C → Δθ = 19,9 K, tc = 31 Tage.

## Der Rechengang (Werte treu aus der Quelle)
| Schritt | Groesse | Formel-Kern | Ergebnis |
|---|---|---|---|
| 1 | Transmission QT | (Δθ·tc·Σ(Ath·U)·86 400)/(AE·10⁶) | **16,5 MJ/m²** |
| 2 | Lueftung QV | (Δθ·(V̇/AE)·tc·ρa·ca·24)/10⁶ | **12,4 MJ/m²** |
| 3 | interne Gewinne Qi | E-Bedarf (fE=0,9) + Personen (Ap 20 m², tp 6 h) | **8,8 MJ/m²** |
| 4 | solare Gewinne Qs | Gs·Aw·g·Fr·Fs/AE (Gs Sued ZH Jan = 149 MJ/m², Fr=Fs=0,7) | **8,3 MJ/m²** |
| 5 | Verhaeltnis γ | (Qi+Qs)/(QT+QV) = 17,1/28,9 | **0,59** |
| 6 | Zeitkonstante τ | (C/AE)·(Δθ·tc·24)/(QT+QV); C/AE≈0,5 MJ/m²K | **223 h** |
| 7 | Parameter a | a0 + τ/τ0 = 1 + 223/15 | **15,9** |
| 8 | Ausnutzungsgrad ηg0 | (1−γᵃ)/(1−γᵃ⁺¹) | **≈ 1,0** |
| 9 | genutzte Gewinne Qug | (Qi+Qs)·ηg0 = 17,1·1,0 | **17,1 MJ/m²** |
| 10 | **Heizwaermebedarf Qh** | QT+QV−Qug = 16,5+12,4−17,1 | **11,8 MJ/m²** (= 354 MJ im Raum) |

## Bauherren-Transfer
- **Gewinne sind real Geld wert:** Im Beispiel decken Sonne (8,3) + interne Lasten (8,8) fast
  60 % der Verluste — wer die Suedfenster richtig setzt (g-Wert!) und nicht uebermaessig
  verschattet, spart Heizenergie, ohne Technik zu kaufen.
- **Der g-Wert zaehlt doppelt:** hier g = 0,57 (2-fach). Mehr solarer Gewinn im Winter, aber
  Achtung Sommer-Ueberhitzung → variabler Sonnenschutz statt fest kleiner g-Wert.
- **Die Zeitkonstante τ (Speichermasse) hebt den Ausnutzungsgrad:** ein schweres, massives
  Gebaeude (hohe C/AE) nutzt Gratis-Gewinne besser (ηg → 1) als ein leichtes.
- Methodisch ist das genau der Rechengang, den die Nachweis-Software automatisch fuer alle
  Bauteile und 12 Monate durchfuehrt.

## Bezug zu anderen Destillaten
- Formel + 11 Schritte: `[[sia-380-1-heizwaermebedarf-berechnung]]`.
- Standardnutzungswerte (Kat. III etc.): `[[sia-380-1-standardnutzungswerte-tab24-25]]`.
- g-/U-Werte Fenster, Grenzwerte: `[[enfk-en-102-waermeschutz-2018]]`.

## Offene Punkte
- Klimadaten (Globalstrahlung Sued ZH 149 MJ/m² Januar) gegen aktuelle SIA 381/2 verifizieren.
