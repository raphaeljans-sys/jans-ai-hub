---
title: "Instationäres Raumverhalten: Zeitkonstante τ, Gewinn/Verlust-Verhältnis γ, Gebäudesimulation-Beispiel Büroraum Sommer (ETH Bauphysik III, Kapitel 6, Manz FS 2009)"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/02_Skripte/00_Uebersicht/deutsch Manz/6 Instationaeres Verhalten eines Raumes.pdf (Bauphysik III, FS 2009, ETH Zürich, Lehrstuhl für Bauphysik, Doz. Dr. H. Manz, Kapitel 6 «Instationäres Verhalten eines Raumes», 13 Seiten, vollständig gelesen; identische Kopie unter 02_Skripte/03_Energie/03_ETHZ/6 Instationaeres Verhalten eines Raumes.pdf)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]]", "[[luftdichtheitsphysik-winddruck-thermischer-auftrieb-blower-door-eth-bauphysik-iii-manz]]", "[[thermische-behaglichkeit-pmv-ppd-modell-fanger-eth-bauphysik-iii-manz]]"]
---

# Instationäres Raumverhalten: Zeitkonstante τ und Gewinn/Verlust-Verhältnis γ (ETH Bauphysik III, Kapitel 6)

## Kontext

Kapitel 6 des Bauphysik-III-Skripts (ETH Zürich, FS 2009, Dr. H. Manz) fasst das dynamische thermische Verhalten eines ganzen Raumes in nur zwei Kenngrössen zusammen — Zeitkonstante τ und Gewinn/Verlust-Verhältnis γ — und liefert damit ein einfaches, physikalisch begründetes Modell dafür, warum manche Gebäude «träge» auf Wetter- und Nutzungsschwankungen reagieren und andere nicht. Baut auf der Materialschicht-Physik in [[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]] auf (dort: Schicht; hier: ganzer Raum) und ergänzt die SIA-180-Nachweispflicht des sommerlichen Wärmeschutzes (siehe `wissen/energie/wiki/sommerlicher-waermeschutz.md`) um das dahinterliegende physikalische Modell.

## Kennwerte/Verfahren

**Leistungsbilanz des Raumes** (Energieerhaltung, Fig. 6.1): C·dθᵢ/dt = G·I(t) + P'_int + P'_hc − H·[θᵢ(t)−θₑ(t)], mit
- **Verlustkoeffizient H** [W/m²K] = flächenbezogene Summe aus Transmission (ΣUₖ·Aₖ) und Lüftung (n·V·ρₐ·cₐ/3600), bezogen auf die Gebäudehüllfläche Aₑ;
- **mittlerer Gesamtenergiedurchlass G** [-] = flächengewichtetes Mittel der g-Werte aller transparenten Bauteile, bezogen auf Aₑ;
- **Wärmekapazität C** [J/m²K] = Σ ρₖ·cₖ·dₖ (speicherwirksame Dicke dₖ nach Kap. 3.2.3) aller Innenbauteile, bezogen auf Aₑ.

**Leerlauftemperatur** (kein Heizen/Kühlen/interne Lasten): τ·dθᵢ/dt + θᵢ(t) = θₑ(t) + γ·I(t), mit
- **Zeitkonstante τ = C/H** [h] — Zeit, bei der eine Temperaturdifferenz auf 1/e (36,8 %) abgesunken ist. Mass für die thermische Trägheit: gross bei grosser Speicherfähigkeit C, klein bei grossem Verlust H. Auch die Gebäudegeometrie wirkt: je kompakter/grösser (kleineres Hüllflächen/Volumen-Verhältnis), desto grösser τ.
- **Gewinn/Verlust-Verhältnis γ = G/H** [m²K/W] — verschiebt das Niveau der Leerlauftemperatur (und beeinflusst zusätzlich deren Amplitude).

**Wirkung der beiden Kenngrössen (Fig. 6.4–6.7):** τ dämpft die Amplitude der Raumtemperaturschwankungen (grosses τ = ruhigerer Verlauf, «fehlertolerant» — ein kurzer Heizungsausfall wirkt sich kaum aus); γ verschiebt den Mittelwert nach oben (höhere solare Gewinne → wärmer, aber auch grössere Amplitude). Ziel für einen Niedrigenergiebau: τ und γ so wählen, dass die Leerlauftemperatur möglichst lange im Komfortband bleibt — im Winter praktisch nicht heizen, im Sommer nicht kühlen müssen.

**Technische Hebel** (Tabelle im Kapiteltext):
- H↓ (kleiner Verlustkoeffizient): wärmebrückenfreie Dämmung, luftdichte Hülle, kleiner thermisch wirksamer Luftwechsel, WRG in der Lüftung, kompakte Geometrie;
- C↑ (grosse Speicherfähigkeit): unverkleidete, massive Innenbauteile (vgl. [[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]] — nur die ersten ≈10 cm bei Tagesschwankungen wirksam);
- G variabel: aussenliegender, beweglicher Sonnenschutz (g < 0,15 im geschlossenen Zustand).

**Gebäudesimulations-Beispiel Büroraum Sommer** (Kap. 6.5, Illustration der Methode, kein eigenes Rechenbeispiel für JANS-Projekte): westorientierter Büroraum 4 m × 5 m, Glasanteil 40 % der Fassade, Uw = 1,1 W/m²K, g_ohne = 0,6/g_mit-Sonnenschutz = 0,15 (Auslösung bei I > 300 W/m²), Luftwechsel Tag n=2, Nacht ohne/mit passiver Kühlung n=0,5/6. Ergebnis (Zürich, DRY-Wetterdatensatz, Woche Juni): **ohne** Sonnenschutz und Nachtlüftung schwankt die operative Raumtemperatur zwischen 33–40 °C; **mit** nur einer der beiden Massnahmen sinkt der Mittelwert um ≈8 K; **mit beiden kombiniert** bleibt die operative Temperatur während des gesamten Sommers (1. Mai–30. September) unter 26,5 °C (Fig. 6.13, Summenhäufigkeitskurve). An sonnigen Tagen ist der Sonnenschutz wirksamer, an bewölkten die Nachtlüftung — die beiden Massnahmen ergänzen sich.

## Praxisregel/Anwendung

- **τ/γ als sprachliches Modell für Bauherrengespräche:** «ein träges (grosses τ), aber gut belichtetes (moderates γ) Gebäude bleibt am längsten von selbst im Komfortbereich» ist eine physikalisch belegte, einfache Formulierung, um zu erklären, weshalb Speichermasse UND variabler Sonnenschutz gemeinsam gefordert werden — nicht nur der U-Wert.
- **Kombinationswirkung Sonnenschutz + Nachtlüftung** (Zürich-Beispiel: bis −13,5 K bzw. dauerhaft < 26,5 °C im Sommer) ist eine belegte Grössenordnung, um bei Vorprojekten für Bürobauten mit Westorientierung die Investition in beide Massnahmen zu begründen, statt nur eine davon zu planen — konkretes Zahlenbeispiel ergänzt die generische Empfehlung in `wissen/energie/wiki/sommerlicher-waermeschutz.md`.
- **Faustregel «kurzzeitiger Heizungsausfall bei grossem τ unkritisch»** ist ein Argument für massive Bauweisen bei Gebäuden mit unterbrechungsempfindlicher Nutzung (z. B. Ferienhäuser, selten beheizte Räume), sollte aber nicht ohne Prüfung der Frostgefahr bei sehr langen Ausfällen verwendet werden (im Skript nicht quantifiziert).

## Offene Punkte

- Das konkrete Simulationsbeispiel (Büroraum, DRY-Wetterdatensatz 2009-nahes «typisches Jahr») ist illustrativ und nicht auf ein JANS-Projekt übertragbar — für eine belastbare Aussage zu einem realen Bauvorhaben ist eine eigene Gebäudesimulation nötig, keine Übernahme der hier zitierten Zahlen.
- Aufgabe 1 des Kapitels (Auskühlung EFH nach Heizungsausfall, C/H = 200 h) wurde nicht durchgerechnet, nur als Rechenmethode (Exponentialansatz) übernommen.
- Kein Abgleich der τ/γ-Systematik gegen die SIA-380/1-Ausnutzungsgrad-η-Methode (Heizwärmebedarf, Kap. 7 desselben Skripts, dort mit demselben τ = C/H verknüpft) — dieser Teil wurde bewusst nicht destilliert, da `wissen/energie` und `wissen/normen` die aktuelle SIA-380/1-Heizwärmebedarfsrechnung bereits führen (Duplikatsvermeidung, siehe `wiki/QUESTIONS.md`).
