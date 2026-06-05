---
quelle: PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Berechnung SIA 380_1.pdf
herausgeber: Kursauszug «Energetische Gesamtoptimierung», Bezeichnungen nach SIA 380/1 (Klimadaten SIA 381/2)
gelesen: vollstaendig (1 S.)
datenstand: ⚠ Formelwerk nach SIA 380/1; Versionsjahr im Auszug nicht genannt — gegen aktuelle Fassung pruefen.
status: emerging
last_updated: 2026-06-05
---

# Destillat — Heizwaermebedarf Qh berechnen (SIA 380/1)

> Die Kernformel und das 11-Schritt-Vorgehen fuer den Heizwaermebedarf. Grundlage fuer
> Aussagen zu «wie energieeffizient ist mein Haus» und fuer den ZH-Energienachweis.

## Was ist Qh
**Heizwaermebedarf Qh** [MJ/m²] = die Waermemenge pro Jahr und m² Energiebezugsflaeche, um das
Gebaeude auf Wunschtemperatur zu halten. (Der *Heizenergiebedarf* ist die Endenergie, die der
Waermeerzeuger dafuer braucht — inkl. Wirkungsgrad/Verluste.)

## Die Kernformel
```
Qh = QT + QV − Qug = QT + QV − ηg · (Qi + Qs)   [MJ/m²]
```
| Symbol | Bedeutung |
|---|---|
| **QT** | Transmissionswaermeverluste (inkl. Waermebruecken) |
| **QV** | Lueftungswaermeverluste |
| **Qug** | genutzte Waermegewinne = ηg · (Qi + Qs) |
| **Qi** | interne Waermegewinne (Personen + Elektrizitaet) |
| **Qs** | solare Waermegewinne (durch Fenster) |
| **ηg** | Ausnutzungsgrad der Waermegewinne [-] |

**Lesart:** Verluste (Huelle + Lueftung) minus der Teil der Gratis-Gewinne (Sonne + innere
Lasten), den das Gebaeude tatsaechlich nutzen kann.

## Die drei Verlust-/Gewinn-Bausteine
- **QT** = (θo − θe) · tc · Σ(Ath · U) · 86 400 / (AE · 10⁶)
  → Summe ueber alle Bauteilflaechen Ath mit ihrem U-Wert; θo Raum-, θe Aussentemperatur,
  tc Tage des Monats, AE Energiebezugsflaeche. **Hier wirkt jeder gesenkte U-Wert direkt.**
- **QV** = (θo − θe) · (V̇/AE) · tc · ρa·ca · 24 / 10⁶
  → V̇/AE flaechenbezogener Aussenluft-Volumenstrom; ρa·ca spez. Waermespeicherfaehigkeit Luft.
  **Hier wirkt Luftdichtheit + Komfortlueftung mit WRG.**
- **Qs** = Σ(horiz,N,E,S,W) Gs · Aw · g · Fr · Fs / AE
  → Gs Globalstrahlung, Aw Fensterflaeche, **g Gesamtenergiedurchlassgrad**, Fr Rahmen-,
  Fs Verschattungsfaktor. **Hier wirken Orientierung, Glaswahl und Verschattung.**

## Vorgehen (11 Schritte, monatsweise, dann Jahressumme)
1 QT bestimmen · 2 QV · 3 Qi (intern) · 4 Qs (solar) · 5 Gewinn/Verlust-Verhaeltnis γ =
(Qi+Qs)/(QT+QV) · 6 Zeitkonstante τ · 7 Parameter a = a0 + τ/τ0 · 8 Ausnutzungsgrad ηg
(γ≠1: (1−γᵃ)/(1−γᵃ⁺¹); γ=1: a/(a+1)) · 9 Qug = (Qi+Qs)·ηg · 10 Qh,Monat = QT+QV−Qug ·
11 Jahres-Qh = Σ der Monate.

## Bauherren-Transfer (warum das zaehlt)
Die Formel zeigt die **vier Stellschrauben** eines energieeffizienten Hauses, in Wirkrichtung:
1. **Huelle daemmen** (U-Wert ↓ → QT ↓) · 2. **luftdicht + Komfortlueftung mit WRG** (QV ↓) ·
3. **Fenster richtig orientieren/verschatten** (Qs nutzen, Ueberhitzung vermeiden) ·
4. **kompakt bauen** (kleine Huellflaeche je AE). → siehe `wiki/BAUHERREN-FAQ`.

## Offen (→ wiki/QUESTIONS)
- Aktuelle Grenzwerte Qh,li (SIA 380/1 aktuelle Fassung) + MuKEn-/ZH-Anforderung mit Datum.
- λ-/U-Werte-Tabelle aus dem Bauteilekatalog-Destillat verknuepfen (`[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`).
