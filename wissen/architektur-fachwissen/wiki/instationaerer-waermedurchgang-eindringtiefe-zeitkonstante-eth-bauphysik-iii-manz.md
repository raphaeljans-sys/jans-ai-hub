---
title: "Instationärer Wärmedurchgang: Eindringtiefe, Amplitudendämpfung, dynamische Wärmekapazität (ETH Bauphysik III, Kapitel 3, Manz FS 2009)"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/02_Skripte/00_Uebersicht/deutsch Manz/3 Dynamischer Waermedurchgang.pdf (Bauphysik III, FS 2009, ETH Zürich, Lehrstuhl für Bauphysik, Doz. Dr. H. Manz, Kapitel 3 «Instationärer Wärmedurchgang», 17 Seiten, vollständig gelesen; identische Kopie unter 02_Skripte/03_Energie/03_ETHZ/3 Dynamischer Waermedurchgang.pdf, MD5 c336bd974d700cc47a918437882e407b)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[aussenklima-grundlagen-solarstrahlung-erdreichtemperatur-eth-bauphysik-iii-manz]]", "[[thermische-behaglichkeit-pmv-ppd-modell-fanger-eth-bauphysik-iii-manz]]", "[[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]]", "[[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]]"]
---

# Instationärer Wärmedurchgang (ETH Bauphysik III, Kapitel 3)

## Kontext

Kapitel 3 des Bauphysik-III-Skripts (ETH Zürich, FS 2009, Dr. H. Manz) führt die Kenngrössen ein, mit denen sich beschreiben lässt, wie eine Materialschicht auf zeitlich veränderliche Temperaturen reagiert — im Gegensatz zum stationären U-Wert, der nur den Wärmefluss bei konstanten Randtemperaturen beschreibt. Diese instationären Kenngrössen (Eindringtiefe, Amplitudendämpfung, Phasenverschiebung, dynamische Wärmekapazität) sind die physikalische Grundlage für Aussagen zu Speichermasse, Aussen- vs. Innendämmung und sommerlichem Komfort, die im KB-Artikel [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] bereits als Schichtdaten vorliegen, dort aber ohne die zugrundeliegende Herleitung.

## Kennwerte/Verfahren

**Temperaturleitfähigkeit a = λ/(ρ·c)** (m²/s): Mass für Geschwindigkeit/Reichweite des Temperaturausgleichs in einem Material — gross bei guter Wärmeleitfähigkeit, klein bei grossem Speichervermögen ρ·c.

**Wärmeeindringkoeffizient b = √(λ·ρ·c)** (J/(m²·K·s^0,5)): Mass dafür, wie viel Wärme beim Kontakt zweier Körper unterschiedlicher Temperatur im Material «versinkt». Bei Berührung zweier Körper mit b₁ und b₂ ergibt sich die Kontakttemperatur θ₀ = (b₁·θ₁ + b₂·θ₂)/(b₁+b₂) — Beispielrechnung im Skript: Körper (34 °C, b=1) berührt Polystyrolplatte (b=0,03) → Kontakttemperatur 33,6 °C; dieselbe Berührung einer Kupferplatte (b=35,8) → 20,4 °C. Erklärt physikalisch, weshalb sich Kupfer «kälter» anfühlt als Polystyrol bei gleicher Oberflächentemperatur.

**Tabelle thermischer Kenngrössen** (Tab. 3.2, λ/ρ/c/a/b für 17 Materialien): u. a. Beton (a = 75·10⁻⁸ m²/s, b = 1,9), Stahlbeton (a = 100·10⁻⁸, b = 2,3), Modulbacksteine (a = 44·10⁻⁸, b = 0,7), Steinwolle (a = 83·10⁻⁸, b = 0,04), Polystyrol expandiert (a = 191·10⁻⁸, b = 0,03), Holz Fichte (a = 13·10⁻⁸, b = 0,4).

**Eindringtiefe σ = √(a·T/π)** (m): Tiefe, bei der eine periodische Temperaturschwankung auf den 1/e-Teil (36,8 %) abgeklungen ist — abhängig von Temperaturleitfähigkeit a **und** von der Periode T der Schwingung. Jahresschwingungen dringen ≈√365 ≈ 19-mal tiefer ein als Tagesschwingungen. Tabelle 3.3 zeigt σ für sieben Perioden (1 h bis 1 Jahr) und zwölf Materialien: Beton bei T = 24 h → σ = 0,144 m; bei T = 1 Jahr → σ = 2,744 m. Bauübliche Schichtdicken sind für Jahresschwingungen «transparent» — nur Tages- bis Wochenschwingungen (T ≈ 1 h bis 24 h) erfassen typische Wandstärken überhaupt.

**Speicherwirksame Schichtdicke / dynamische Wärmekapazität:** für «dünne» Schichten (d ≤ σ/2) ist die gesamte geometrische Dicke speicherwirksam, C_dyn = ρ·c·d; für «dicke» Schichten (d > σ/2) nur der äussere Teil bis zur Tiefe σ/2, C_dyn = ½·ρ·c·σ — eine unendlich dicke Wand hat trotzdem nur eine endliche dynamische Speicherfähigkeit. Für Tagesschwankungen (T = 24 h) beträgt die speicherwirksame Schichtdicke typischer Massivbaustoffe nur ≈10 cm (Tab. 3.4: Beton 0,102 m → C_dyn = 224 kJ/m²K; Kalksandstein 0,092 m → 149 kJ/m²K; Backstein 0,078 m → 78 kJ/m²K). Zusätzliche Wanddicke über diesen Wert hinaus trägt bei Tagesschwankungen praktisch nichts mehr zur Speicherung bei.

**Zeitkonstante einer Schicht τ ≈ d²/a = R·C** (Auskühl-/Aufheizvorgang, exponentieller Abfall, τ = Zeit bis 1/e-Teil erreicht): Vergleich Steinwolle (d = 30 cm) vs. Mauerwerk Leichtbackstein (d = 47,5 cm) — Steinwolle dämmt trotz geringerer Dicke rund 3× besser, hat aber ≈30× geringere Speicherkapazität; im Ergebnis ist das Mauerwerk um Faktor ≈10 träger. Nach ≈3 Zeitkonstanten (e⁻³ ≈ 0,05) gilt ein System als eingeschwungen — bei Steinwolle nach ≈4 Tagen, bei Leichtbackstein-Mauerwerk erst nach deutlich über einem Monat, weshalb reale Wände praktisch nie vollständig eingeschwungen sind.

**Amplitudendämpfung ν = Δθ'/Δθ und Phasenverschiebung ε:** mit zunehmender Wandtiefe nimmt die Temperaturamplitude ab (Dämpfung ν) und verschiebt sich zeitlich (ε). Für eine ganze Aussenwand (innere vs. äussere Amplitude) gilt: **aussengedämmte Massivwände dämpfen eine Aussentemperaturschwankung wesentlich stärker als innengedämmte** bei identischem U-Wert (Beispiel Fig. 3.13: Amplitudendämpfung ν_H = 103 bei Aussendämmung vs. ν_H = 3,6 bei Innendämmung derselben Schichtenfolge, T = 24 h). Zahlenbeispiel Fig. 3.12: bei identischem U = 0,27 W/m²K schwankt die Wärmestromdichte bei einer Leichtbauwand (0,1 cm Alu / 14 cm Dämmung / 0,1 cm Stahl) im Sommer um ±2,6 W/m² um den stationären Anteil (kann diesen also übertreffen!), bei einer aussengedämmten Massivwand (1 cm Putz / 12 cm Dämmung / 25 cm Beton / 1,5 cm Innenputz) nur um ±0,3 W/m².

## Praxisregel/Anwendung

Drei belegte, direkt kommunizierbare Argumente für Bauherrengespräche zu Speichermasse und Dämmlage:
1. **Aussendämmung schlägt Innendämmung** bei der Dämpfung sommerlicher Temperaturspitzen um rund Faktor 30 (Kennzahl ν_H 103 vs. 3,6, gleiche Schichtenfolge) — ein sachliches Argument gegen reine Innendämmungslösungen bei Sanierungen, wenn sommerlicher Komfort ein Thema ist (Ergänzung zur SIA-180-Nachweispflicht, die im normativen Artikel [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] bzw. in `wissen/energie` behandelt wird).
2. **«Mehr Speichermasse hilft nur bis ≈10 cm wirksame Dicke»** bei Tagesschwankungen — zusätzliche Betondicke über die speicherwirksame Schicht hinaus (Tab. 3.4) bringt bei täglichen Lastspitzen keinen Zusatznutzen mehr; relevant für Kostendiskussionen bei massiven Innenbauteilen.
3. **Leichtbaukonstruktionen mit geringer Speichermasse** können bei identischem U-Wert im Sommer höhere Spitzenlasten erzeugen als der stationäre Wärmedurchgang allein vermuten lässt (Faktor-8-Beispiel Fig. 3.12) — Argument für zusätzliche sommerliche Massnahmen (Sonnenschutz, Nachtlüftung, vgl. [[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]]) bei Leichtbaufassaden.

## Offene Punkte

- Datenstand FS 2009; Materialkennwerte (Tab. 3.2) stammen aus SIA 279:2004 und SN EN 12524:2000 — beide Normen sind seither revidiert (SIA 279:2018 gemäss `wissen/energie/wiki/daemmstoffe-lambda.md`). Für einen aktuellen Rechennachweis sind die λ/ρ/c-Werte gegen die geltende Norm zu prüfen, nicht aus diesem Artikel zu übernehmen.
- Die Matrixform des instationären Wärmedurchgangs nach Heindl (Formalismus mit komplexen Zahlen, S. 13) wurde nur als Existenzhinweis übernommen, nicht im Detail rekonstruiert — für eine rechnerische Anwendung ist die Primärquelle [3.7, 3.8, 3.9] (SIA 180:1999, EN ISO 13786:1999) heranzuziehen, ebenfalls veraltete Normausgaben.
- Kein direkter Bezug zu einem konkreten JANS-Bauteilaufbau; Verknüpfung mit den Schichtdaten aus [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]] ist möglich, aber nicht in diesem Lauf gerechnet.
