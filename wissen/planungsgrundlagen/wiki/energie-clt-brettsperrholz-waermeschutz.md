---
title: CLT/Brettsperrholz — U-Wert-Berechnung und Bauteilaufbauten
status: emerging
last_updated: 2026-07-22
sources: [Stora Enso Wood Products "CLT von Stora Enso — Technische Dokumentation Bauphysik" (Version 06.2021, © Stora Enso 2020, PL - 04 Energie/U Wert berechnung/clt/CLT by Stora Enso-Technical documentation - Building physics-2021-DE.pdf, S. 6+7+10+11), reales Fallbeispiel "Grassen Biwak" (PL - 04 Energie/U Wert berechnung/Grassen Biwak/Um den gewünschten Schichtaufbau mit einem U.docx, undatiert, KI-gestuetzte Berechnung ohne Normverweis)]
links: [[energie-heizwaermebedarf-waermeerzeugerleistung]], [[energie-uebersicht]]
---

# CLT/Brettsperrholz — U-Wert-Berechnung und Bauteilaufbauten

Neue Teil-Domaene der Energie-KB (Run 55, 2026-07-22): **Waermeschutz-Kennwerte fuer
Brettsperrholz (Cross Laminated Timber, CLT)** als Konstruktions-/Daemmbasis — relevant fuer
JANS-Holzbauprojekte, in denen die Massivholzplatte selbst Teil des Wandaufbaus ist (nicht nur
Bekleidung).

## 1 — Waermeleitfaehigkeit von CLT (belegt, Herstellerquelle)

Nach **Norm EN ISO 10456** betraegt die Waermeleitfaehigkeit von CLT **λ = 0.12 W/(m·K)**
(Stora Enso, S. 6). Massgeblich ist Rohdichte + Holzfeuchte des Produkts; der Wert ist ein
Herstellerangabe fuer Stora-Enso-CLT, nicht zwingend 1:1 auf jeden CLT-Hersteller uebertragbar.

**Rechenformel** (Wärmedurchgangskoeffizient U):

```
U = 1 / (Rsi + Σ(di/λi) + Rse)
```

mit **Rsi = 0.13 m²K/W** (innerer Waermeuebergangswiderstand) und **Rse = 0.04 m²K/W**
(aeusserer) als von Stora Enso verwendete Standardwerte.

**Beispielrechnung unbekleidete CLT-Platte 100 mm:** U = 1 / (0.13 + 0.1/0.12 + 0.04) =
**0.997 W/(m²K)**. Eine unbekleidete/ungedaemmte CLT-Aussenwandplatte erreicht je nach Dicke
(60-200 mm) U-Werte zwischen **1.5 und 0.54 W/(m²K)** (Diagramm S. 7) — SIA-380/1-Grenzwerte
(vgl. [[u-werte-grenzwerte-ch]] in KB `wissen/energie`) werden **ohne zusaetzliche Daemmung
nicht erreicht**.

## 2 — U-Wert einer gedaemmten CLT-Platte (belegte Beispielrechnung)

CLT 100 mm + Mineralwolle 160 mm (λ = 0.035 W/(m·K)): U = 1 / (0.13 + 0.1/0.12 + 0.16/0.035 +
0.04) = **0.179 W/(m²K)** (Stora Enso, S. 8).

**Vollstaendige Vergleichstabelle** (Stora Enso, S. 10-11, CLT 100 mm 3s + Mineralwolle-
Daemmung, Rsi/Rse wie oben):

| Daemmstaerke | Gesamtstaerke | U-Wert (nur CLT+Daemmung) | U-Wert (+ 12.5 mm Gipskarton innen) |
|---|---|---|---|
| 40 mm | 140/153 mm | 0.47 | 0.45 |
| 60 mm | 160/173 mm | 0.37 | 0.36 |
| 80 mm | 180/193 mm | 0.30 | 0.30 |
| 100 mm | 200/213 mm | 0.26 | 0.26 |
| 120 mm | 220/233 mm | 0.23 | 0.22 |
| 140 mm | 240/253 mm | 0.20 | 0.20 |
| 160 mm | 260/273 mm | 0.18 | 0.18 |
| 180 mm | 280/293 mm | 0.16 | 0.16 |
| 200 mm | 300/313 mm | 0.15 | 0.15 |
| 220 mm | 320/333 mm | 0.14 | 0.14 |
| 240 mm | 340/353 mm | 0.13 | 0.13 |

Die Gipskartonplatte (12.5 mm, λ = 0.21 W/(m·K)) veraendert den U-Wert **kaum** (Rundungsdifferenz
max. 0.02) — bauphysikalisch fast irrelevant fuer die U-Wert-Zielgroesse, aber relevant fuer
Brandschutz/Oberflaeche (→ Skill `brandschutz`, hier nicht dupliziert).

**JANS-Einordnung:** fuer ein Minergie-taugliches Bauteil (U ≤ 0.17-0.20 W/(m²K) je Bauteiltyp,
vgl. [[u-werte-grenzwerte-ch]]) braucht eine CLT-Aussenwand demnach **mindestens ~140-160 mm**
Mineralwolle-Zusatzdaemmung — als grobe Faustregel fuer die Vorprojektphase, Einzelfallrechnung
bleibt Pflicht (SIA 380/1).

## 3 — Reales Fallbeispiel «Grassen Biwak» (Status speculative, Herkunft ungeklaert)

Im selben Quellordner liegt eine **undatierte, KI-gestuetzte Berechnung** (Textstil/Emoji
deuten auf ein auskopiertes Chat-Ergebnis hin, keine Normverweis-Angabe im Dokument) fuer einen
Wandaufbau eines Berg-Biwaks:

| Schicht (aussen → innen) | Dicke | λ [W/(m·K)] | R [m²K/W] |
|---|---|---|---|
| Schutzblechverkleidung (Alu) | vernachlaessigbar | — | ~0 |
| Unterkonstruktion, luftgefuellt | 40 mm | 0.15 | 0.27 |
| Mineralwolle-Daemmung | 40 mm | 0.035 | 1.14 |
| CLT-Konstruktion (Stora Enso) | 140 mm | 0.13 | 1.08 |

Ergebnis der Quelle: **U ≈ 0.40 W/(m²K)**, bei Zielwert 0.5 W/(m²K) — unterschreitet die
Anforderung. ⚠ **Zwei Unstimmigkeiten gegenueber der belegten Herstellerquelle in §1:**
(a) die Quelle rechnet mit λ_CLT = 0.13 statt dem herstellerbelegten 0.12 W/(m·K) (Delta
~8 %, in dieser Groessenordnung ohne Praxisrelevanz, aber ein Beleg-Bruch); (b) Rsi/Rse werden
in der Quelle nicht ausgewiesen (nicht nachvollziehbar, ob Stora-Enso-Standardwerte oder andere
Annahmen verwendet wurden). **Status bleibt speculative** — als reales Planungsbeispiel fuer
sehr duenne, kompakte Huellenaufbauten (Biwak/Kleinbauten) dokumentiert, aber nicht als
belegter Kennwert zu zitieren. Nicht befund-verifizierbar, da die Originalquelle des
Berechnungs-Chats nicht mehr auffindbar ist.

## Offene Punkte
- Herstellerangabe λ_CLT = 0.12 W/(m·K) ist Stora-Enso-spezifisch; Delta zu anderen
  CH-Anbietern (z.B. Lignatur, Timbatec) nicht geprueft.
- Feuchte-/Diffusionskapitel (S. 30-37) und Luftdichtheits-Kapitel (S. 14-29) derselben
  Stora-Enso-Dokumentation noch nicht ausgewertet — Folge-Frage fuer den naechsten Lauf.
- Konkreter Bauherr/Standort des «Grassen Biwak»-Falls nicht identifizierbar aus dem
  vorliegenden Dateifragment (kein Projektname/keine Adresse im Dokument).
