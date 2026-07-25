# Flächen, Volumen & JANS-Faktorenset (SIA 416)

Destilliert aus den realen Berechnungsdateien (Ebmatingen Flächenkonzeption, WOMA
Festsetzung Regelgrundriss, Wädenswil Potenzialanalyse). Alle Faktoren sind **Richtwerte
mit Projektbeleg** — im Einzelfall an BZO-Definition und Bestand anpassen.

## SIA-416-Flächenbegriffe (durchgängig verwendet)
- **GSF** Grundstücksfläche · **aGF** anrechenbare Geschossfläche · **GF** Geschossfläche
- **HNF** Hauptnutzfläche · **NGF** Nettogeschossfläche · **GV** Gebäudevolumen (Baumasse, m³)
- **VMF** vermietbare Fläche · **ÜF/ÜZ** überbaubare Fläche / Überbauungsziffer
- **FAW** Fläche Aussenwand · **FF** Fensterfläche
Flächenauszug-Pläne werden mit Norm-Vermerk **"SIA 416"** beschriftet.

## JANS-Flächenfaktoren (Beleg: Ebmatingen "2412 Flächenkonzeption Wohnen")
| Faktor | Wert | Bedeutung |
|---|---|---|
| aGF → GF Regelgeschoss | **1.10** | +10 % Fassaden-/Konstruktionszuschlag |
| Vollgeschoss-Faktor | **3.00** | VGZ+1 (DG/Attika zählt dazu) |
| HNF → GF | **0.80** | (Spanne 0.77–0.84) |
| HNF → aGF | **1.25** | Kehrwert ≈ 0.80 |
| GF → GV (Baumasse) | **0.33** | grob GV = GF/0.33 ≈ ×3 |
| HNF / GF ganzes Gebäude | **0.50** | inkl. Sockel/Attika/Technik |
| HNF / GF nur Wohn-Regelgeschosse | **0.75** | reine Wohngeschosse |
| Fensterquotient FF/FAW | **~0.30** | guter Wert (WOMA) |

## Wohnungs-Benchmarks (HNF je Wohnung)
2.5-Zi ≈ 52 m² · 3.5-Zi ≈ 73–85 m² · 4.5-Zi ≈ 95–114 m² · 5.5-Zi ≈ 130 m².
**JANS-Soll-Wohnungsschlüssel: 10 % 2.5-Zi / 50 % 3.5-Zi / 40 % 4.5-Zi.**
Richtwert **3 Wohnungen pro Treppenhaus/Spänner**.

## Überbaubares Baufeld bestimmen
Baufeld = Grundstück **minus alle Abstände**: Strassenabstand, grosser/kleiner Grenzabstand
(je Himmelsrichtung/Nachbar), Gewässerraum/Uferstreifen, Waldabstand, Baulinien.
Merksatz JANS: *"Geht man von den höchsten Einschränkungen aller Abstände aus, entsteht ein
Baufeld von ca. X m²"* (Ebmatingen: 240 m² aus 888 m²).
**Dienstbarkeiten** können das Baufeld vergrössern (Grenzbaurecht hebt Grenzabstand auf,
Beleg Wädenswil SP 6309) oder verkleinern → Agent `dienstbarkeiten-pruefer`.

## Volumen-/Ausnützungsrechnung — zwei Mechanismen, der bindende zählt
**Mechanismus 1 — über die Ziffer (Zone MIT AZ/BMZ):**
aGF = GSF × AZ; bzw. zulässige Baumasse = GSF × BMZ. Reserve = zulässig − konsumiert
(Beleg Regensdorf: 22'487 m³ zulässig − 15'274.5 konsumiert = 7'213 m³ Reserve).

**Mechanismus 2 — über die Hüllkurve (Zone OHNE AZ, z.B. Kernzone):**
Goldstandard-Rechenweg (Wädenswil, Kernzone A):
1. Grenzabstände + Dienstbarkeiten setzen → **Baubereich** (bebaubare Fläche, "gelbe Fläche").
2. Baubereich × Geschossfläche **je Etage, geschossweise aufaddiert** (EG, OG, Attika separat).
3. Summe = totale Nutzfläche.
4. **− ca. 5 % Erschliessung** (Treppenhaus/Trennwände) = realisierbare Nutzfläche.
Beleg V1: 750.7+750.7+659.1+659.1+506.1 = 3'325.7 m²; −166 (5 %) = **3'160 m²**.
V2 (Fassadenvorsprung ab 1.OG): 3'746.7 m²; −187 = 3'560 m² → **Delta +400 m²**.

**Regel:** Immer **beide** Mechanismen rechnen und den **bindenden** ausweisen. In Zonen ohne
AZ binden Grenzabstände + Geschosszahl + Gebäudehöhe + Ortsbild-Beurteilung (nicht eine Ziffer).
Zusätzliche bindende Nebenbedingungen prüfen: Grünflächenziffer (z.B. 20 %), Mindest-
Nichtwohnanteil bei Mischnutzung, Spiel-/Ruheflächen (z.B. 20 % der Wohn-BGF).

## Wohnanteils-Rechnung (Umnutzung, Beleg 2620)
Gewerbe-Kontingent = Gesamtfläche × (1 − Mindest-Wohnanteil). Bsp. 700 m² × 10 % = 70 m²;
geteilt durch typische Einheitsgrösse (20–30 m²) = "theoretisch 2, realistisch 1 Einheit"
(Flächenkontingent → Division durch Einheitsgrösse → Sicherheitsabschlag).

## Regelgrundriss festsetzen (JANS-Kern-IP, Beleg WOMA "Vorgehen Festsetzung Regelgrundriss")
Iteratives Verfahren (Punkte beeinflussen sich gegenseitig, bestehender Regelgrundriss als
Referenz): A) bebaubare Fläche im Situationsplan; B) Körnung Quartier / offene vs. geschlossene
Bauweise / Brandwand; C) Ausrichtung Sonne, Freiraum, Erschliessung; D) Effizienz über
Spännerzahl + Wohnungsgrösse; E) **max. Fläche Regelgrundriss = aGF_max / VG, +5 % Fassade,
geteilt durch Baukörperzahl**; F) Wohnungsschlüssel-Varianten je Baukörper.

## BZO-Revision — Vorher/Nachher (negative Vorwirkung)
Bei laufender Revision gilt die **schärfere** Vorschrift aus alt+neu (negative Voranwendung).
JANS rechnet immer **Status-quo-BZO UND Revisions-Szenario** und weist das Delta aus.
Beleg Wädenswil: revBZO → 5 statt 4 Vollgeschosse, Grenzabstand 3.5 statt 6 m, aber nur
1 statt 2 anrechenbare DG. → Das ist genau der "wieviel grösser/kleiner"-Vergleich des Skills.
