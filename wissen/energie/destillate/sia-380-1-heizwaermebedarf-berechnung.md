---
quelle: PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Berechnung SIA 380_1.pdf
herausgeber: Kursauszug «Energetische Gesamtoptimierung», Bezeichnungen nach SIA 380/1 (Klimadaten SIA 381/2)
gelesen: vollstaendig (1 Scan-Seite = Buchseiten 104|105, Kopfzeile «104 | 1…» angeschnitten, analog Beispielseite «106 | 107»); am Original erneut gegengelesen 10.09.2026 (A-BLIND Run 190, Scan per M365-CLI von /sites/PL/04 Energie/_Heizwaermebedarf)
datenstand: ⚠ Formelwerk nach SIA 380/1; Versionsjahr im Auszug nicht genannt. Die eigenen Verweise des Auszugs zeigen einen Stand VOR der heute geltenden Fassung — Klimadaten «aus SIA 381/2» (laut KB normen zurueckgezogen) und Ausnutzungsgrad «siehe Norm EN ISO 13790» (in SIA 380/1:2016 per Korrigenda C1:2019 durch SN EN ISO 52016-1 ersetzt). Bilanzstruktur davon unberuehrt; Einzelheiten nicht gegen die Ausgabe 2016 geprueft (Normkauf E-R148-1).
status: emerging (Audit-Korrektur A-P3 03.14, 24.08.2026: solange das eigene Datenstand-Feld "gegen aktuelle Fassung pruefen" verlangt, ist established nicht haltbar; im Kt. ZH massgebend ist SIA 380/1:2016)
last_updated: 2026-09-10 (A-BLIND Run 190: Original gegengelesen, Qi-Formel, Zeitkonstante, a0/τ0 und Grenzfaelle nachgetragen, Rahmenfaktor-Symbol berichtigt, Datenstand mit Beleg geschaerft)
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
- **Qs** = Σ(horiz,N,E,S,W) Gs · Aw · g · F_F · F_S / AE
  → Gs Globalstrahlung, Aw Fensterflaeche, **g Gesamtenergiedurchlassgrad**, F_F
  Abminderungsfaktor Fensterrahmen, F_S Verschattungsfaktor. **Hier wirken Orientierung,
  Glaswahl und Verschattung.** (Berichtigt 10.09.2026: die Quelle schreibt F_F, nicht F_r.)
- **Qi** = Q_iEl + Q_iP = E_E · f_El · tc / 365 + Q_P · t_P · tc · 3600 / (A_P · 10⁶)
  → E_E Elektrizitaetsverbrauch pro Jahr [MJ/m²], f_El Reduktionsfaktor Elektrizitaet,
  Q_P Waermeabgabe pro Person [W/P], t_P Praesenzzeit [h/d], A_P Personenflaeche [m²/P].
  (Nachgetragen 10.09.2026, stand im Original, fehlte hier.)

## Vorgehen (11 Schritte, monatsweise, dann Jahressumme)
1 QT bestimmen · 2 QV · 3 Qi (intern) · 4 Qs (solar) · 5 Gewinn/Verlust-Verhaeltnis γ =
(Qi+Qs)/(QT+QV) · 6 Zeitkonstante τ · 7 Parameter a = a0 + τ/τ0 · 8 Ausnutzungsgrad ηg
(γ≠1: (1−γᵃ)/(1−γᵃ⁺¹); γ=1: a/(a+1)) · 9 Qug = (Qi+Qs)·ηg · 10 Qh,Monat = QT+QV−Qug ·
11 Jahres-Qh = Σ der Monate.

**Nachgetragen aus dem Original (10.09.2026), bisher nur als Stichwort gefuehrt:**
- Schritt 5: **γ = 0, wenn QT + QV < 0**; Schritt 8 entsprechend **ηg0 = 0, wenn QT + QV < 0**.
- Schritt 6: **τ = (C/AE) · (θo − θe) · tc · 24 / (QT + QV)** [h]; C effektive
  Waermespeicherfaehigkeit der beheizten Raeume pro Kelvin [MJ/K] «nach SN EN ISO 13786 oder
  Annaeherung nach SIA 380/1». Der Faktor **24** rechnet die Tage tc in Stunden um; ohne ihn
  kaeme τ in Tagen heraus (siehe Befund unten).
- Schritt 7: **a0 = 1, τ0 = 15 h** «fuer rund um die Uhr benutzte Gebaeude, fuer andere Faelle
  siehe Norm EN ISO 13790». ⚠ Verweis auf die zurueckgezogene Norm, heute SN EN ISO 52016-1
  (Datenstand-Feld oben); ob die Ausgabe 2016 dieselben Zahlenwerte fuehrt, ist nicht geprueft.

## Bauherren-Transfer (warum das zaehlt)
Die Formel zeigt die **vier Stellschrauben** eines energieeffizienten Hauses, in Wirkrichtung:
1. **Huelle daemmen** (U-Wert ↓ → QT ↓) · 2. **luftdicht + Komfortlueftung mit WRG** (QV ↓) ·
3. **Fenster richtig orientieren/verschatten** (Qs nutzen, Ueberhitzung vermeiden) ·
4. **kompakt bauen** (kleine Huellflaeche je AE). → siehe `wiki/BAUHERREN-FAQ`.

## Grenzwerte (jetzt belegt → EN-102)
Die konkreten Q_H,li-Grenzwerte je Gebaeudekategorie (kWh/m²) und die U-Wert-Grenzwerte stehen
in `[[enfk-en-102-waermeschutz-2018]]` (Tab. 2/4/5). Die kategorienspezifischen Q_h-Kennwerte in
MJ/m²·a inkl. **Gebaeudehuellzahl A_th/A_E** und Ziel- vs. Grenzwert in
`[[bauphysik-heizwaermebedarf-kennwerte]]`.

## Gegenlesung am Original (A-BLIND, Run 190, 10.09.2026)

Scan-PDF ohne Textlayer, Buchseiten 104|105 aus «Energetische Gesamtoptimierung» (Konica-Scan
vom 07.11.2022 laut `pdfinfo`, das ist das Scandatum im Buero, nicht das Erscheinungsjahr).
**Kernformel, QT, QV, γ, ηg-Formel, Qug, Qh und Monatssumme sind treu wiedergegeben.** Befunde:

1. **Unvollstaendig, nicht falsch:** Qi-Formel, τ-Formel, a0/τ0 und die Grenzfaelle fuer
   QT+QV < 0 fehlten — nachgetragen oben.
2. **Symbol:** Rahmenfaktor heisst in der Quelle F_F, hier stand F_r — berichtigt.
3. **Fassungsstand:** die Quelle nennt kein Jahr, verweist aber auf SIA 381/2 und EN ISO 13790
   (Belege Datenstand-Feld). Die bisherige Registerzeile in `destillate/INDEX.md`, die das
   Destillat unter «SIA 380/1:2016» fuehrte, war damit durch die Quelle nicht gedeckt —
   berichtigt. Die eigene Einordnung der Bilanzstruktur als heute weiterhin angelegt stuetzt
   sich auf `wissen/normen/destillate/sia-380-1-2016.md` (Ausnutzungsgrad fuer Waermegewinne
   dort weiterhin Bestandteil), das selbst nur ein Vorschau-Destillat mit `speculative` ist.
4. **Folgefund im Schwester-Destillat:** das Rechenbeispiel derselben Buchreihe (S. 106|107)
   teilt τ durch 33,2 statt durch die eigene Summe QT + QV = 28,9 → `[[sia-380-1-beispiel-monatsbilanz]]`.
5. **Cross-KB:** die Abschrift derselben Seiten in
   `wissen/planungsgrundlagen/wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` fuehrte die
   τ-Formel **ohne den Faktor 24** und in Tab. 25 eine mit Restaurant-Werten vermischte
   Spitaeler-Spalte (Q_ww 200 statt 100 MJ/m², A_P 5 statt 30 m²/P) — dort am 10.09.2026 berichtigt.

## Offen (→ wiki/QUESTIONS)
- λ-/U-Werte-Tabelle aus dem Bauteilekatalog-Destillat verknuepfen (`[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`).
- ⚠ MuKEn 2025 (EnDK 08/2025): kantonale Umsetzung ZH abwarten und Grenzwerte aktualisieren.
