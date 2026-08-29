---
title: "Luftdichtheits-Physik: Winddruck, thermischer Auftrieb (Kamineffekt), Blower-Door-Kennwerte n50/va,4 (ETH Bauphysik III, Kapitel 5, Manz FS 2009)"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/02_Skripte/00_Uebersicht/deutsch Manz/5 Luftaustausch.pdf (Bauphysik III, FS 2009, ETH Zürich, Lehrstuhl für Bauphysik, Doz. Dr. H. Manz, Kapitel 5 «Luftaustausch», 20 Seiten, vollständig gelesen; identische Kopie unter 02_Skripte/03_Energie/03_ETHZ/5 Luftaustausch.pdf)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]]", "[[lueftungssystematik-zuluftfuehrung-waermerueckgewinnung-eth-leibundgut]]", "[[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]]"]
---

# Luftdichtheits-Physik: Winddruck, thermischer Auftrieb, Blower-Door (ETH Bauphysik III, Kapitel 5)

## Kontext

Kapitel 5 des Bauphysik-III-Skripts (ETH Zürich, FS 2009, Dr. H. Manz) leitet her, **warum** und **wie stark** Luft überhaupt durch eine Gebäudehülle strömt: Wind- und temperaturinduzierte Druckdifferenzen an Fugen und Undichtheiten. Das ergänzt die beiden bereits destillierten Leibundgut-Artikel [[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]] (Luftqualität/CO₂-Kennzahlen) und [[lueftungssystematik-zuluftfuehrung-waermerueckgewinnung-eth-leibundgut]] (Anlagensystematik) um die bauphysikalische Grundlage der Gebäudehüllen-Druckdifferenzen selbst — dieser Teil ist in `wissen/energie/wiki/komfortlueftung.md` (Systeme, Filterklassen, WRG-Wirkungsgrade) nicht abgedeckt und daher kein Duplikat.

## Kennwerte/Verfahren

**Grunddilemma Luftwechsel:** Raumluftqualität und Feuchteabfuhr verlangen hohe Luftwechsel, thermische Behaglichkeit und Wärmeverluste verlangen tiefe — bei sehr gut gedämmten Gebäuden übersteigt der Lüftungswärmeverlust-Anteil an den Gesamtverlusten 50 % (Fig. 5.1). Die im Skript genannte Lösung für ein Klima mit kalten Wintern (Schweiz): Gebäudehülle so dicht wie möglich, erforderlicher Luftwechsel über mechanische Lüftung mit Wärmerückgewinnung sicherstellen.

**Winddruck (Bernoulli-Ansatz):** Δp = ½·ρ·(v₀²−v₁²). Auf der Luvseite eines Gebäudes entsteht Überdruck, auf Leeseite/Dach Unterdruck. Der Druckbeiwert **Cp = (pF−p₀)/(½·ρ·v₀²)** normiert den lokalen Fassadendruck auf den Staudruck der ungestörten Anströmung; Cp-Werte sind experimentell (Windkanal) für Gebäudegrundformen tabelliert, aber bei Nachbarbebauung nur mit Vorsicht übertragbar. Häufigkeitsverteilung für Zürich-SMA (Fig. 5.9, Cp = 0,1/0,5/1): windinduzierte Drücke liegen etwa die halbe Zeit unter ≈2 Pa, steigen aber nicht selten auf einige Dutzend Pascal.

**Thermisch induzierter Auftrieb (Kamineffekt):** Δp_ie(z) = z·g·(1/R)·(1/pm)·(1/Tₑ−1/Tᵢ). Bei Tᵢ > Tₑ entsteht ab der neutralen Zone (dort pᵢ=pₑ) nach oben linear zunehmender Überdruck innen, nach unten Unterdruck — bei gleichmässig verteilten Leckagen liegt die neutrale Zone auf halber Fassadenhöhe, bei einer dominierenden Leckage verschiebt sie sich dorthin. Bei durchlässigen Geschossebenen (offenes Treppenhaus) wirkt die volle Gebäudehöhe, bei dichten Geschosstrennungen nur die Stockwerkhöhe (Fig. 5.11, drei Fälle A/B/C). Für Zürich-SMA sind thermisch induzierte Druckdifferenzen meist kleiner als ≈10 Pa (Fig. 5.12).

**Spaltströmungsansatz:** V̇ = D·(Δp)^m, mit Fugendurchlasskoeffizient a (m³/(h·m·Pa^m)), D = a·l (l = Fugenlänge), Exponent m meist ≈2/3 (Grenzfälle m=1 vollständig laminar, m=0,5 vollständig turbulent). Moderne Fensterkonstruktionen: a ≈ 0,01–0,04 m³/(h·m·Pa^2/3); ältere Fenster/Türen ohne/mit schlechter Dichtung: a ≈ 0,2–0,6 m³/(h·m·Pa^2/3) — Faktor 15–20 Unterschied.

**Blower-Door-Methode (Differenzdruckmethode):** ein in eine Türe eingebauter Ventilator erzeugt einen künstlichen Differenzdruck (deutlich über den natürlich auftretenden Werten), der Leck-Volumenstrom wird in Funktion des Differenzdrucks gemessen. **n50** = Luftwechsel bei 50 Pa Differenzdruck. Passivhaus-Anforderung: n50 < 0,6 1/h. Je kompakter/grösser ein Gebäude, desto einfacher ist ein tiefer n50-Wert erreichbar (Volumen wächst mit der 3. Potenz, Hüllfläche nur mit der 2.). **SIA-180-Kennwert va,4** = auf die Hüllfläche Ae bezogener Volumenstrom bei 4 Pa: va,4 = (V̇/Ae)|_{4 Pa}. Umrechnung n50 ↔ va,4 ist geometrieabhängig: n50/va,4 ≈ (Ae/Vm)·20,5. SIA-180-Grenz-/Zielwerte (1999er Ausgabe, veraltet, siehe unten): Neubauten Grenzwert 0,75 / Zielwert 0,5 m³/(h·m²); Umbauten Grenzwert 1,50 / Zielwert 1,0 m³/(h·m²). Mit Infrarotkamera bei künstlich erzeugtem Unterdruck lassen sich Leckagestellen an der Abkühlung der inneren Oberflächen visualisieren.

**Dominierende Leckagen bei sorgfältiger Bauweise:** nicht die Flächenbauteile, sondern Anschlussstellen (Fenster/Wand, Wand/Dach) und vor allem Durchführungen (Elektroinstallationen, Steckdosen, Sanitär-/Haustechnikrohre).

**Radon (Raumluftqualität, verwandtes Thema desselben Kapitels):** grösster Krebserreger im Wohnbereich nach Rauchen (BAG 2008: 200–300 Todesfälle/Jahr CH), besonders belastet Graubünden, Tessin, Jura. Kritisch sind Naturkeller (offen zum Baugrund) mit sonst dichter Hülle — Radonzufluss möglich, Abtransport behindert → Anreicherung. Massnahmen: dichter, betonierter Keller, dichte Geschosstrenndecke Keller/Wohnraum, kein Unterdruck im Gebäudeinnern.

**Passive Kühlung mit Nachtlüftung** (Querbezug Kap. 5.7, physikalisch mit dem Luftaustausch-Thema verknüpft): nächtliches Öffnen kühlt die Innenbauteile, die tagsüber als Wärmesenke dienen. Zweiseitige Querlüftung erzielt höhere Luftwechsel als einseitige. Voraussetzung: ausreichende (aktive) Wärmespeicherfähigkeit der Innenbauteile — vgl. dazu die Zeitkonstanten-/Speichermassen-Physik in [[instationaerer-waermedurchgang-eindringtiefe-zeitkonstante-eth-bauphysik-iii-manz]] und die Zeitkonstante-τ-Systematik in [[instationaeres-raumverhalten-zeitkonstante-gewinn-verlust-verhaeltnis-eth-bauphysik-iii-manz]].

## Praxisregel/Anwendung

- **Cp/Winddruck und Kamineffekt als überschlägige Vorabklärung:** bei hohen, offenen Treppenhäusern oder Atrien (grosse wirksame Höhe z) ist der thermische Auftrieb im Winter die dominierende Druckursache für Zugerscheinungen an unteren Eingangstüren — die Formel Δp_ie ∝ z macht das quantitativ diskutierbar, bevor eine Windfang- oder Schleusenlösung vorgeschlagen wird.
- **Faktor-15-Fugendurchlässigkeit alt/neu** (a = 0,2–0,6 vs. 0,01–0,04 m³/(h·m·Pa^2/3)) ist ein sachliches, weil quantifizierbares Argument in Sanierungsgesprächen für den Fensterersatz, unabhängig vom U-Wert-Argument.
- **n50/va,4-Zielwerte dieses Skripts (SIA 180:1999) sind veraltet** und dürfen nicht als aktueller Nachweiswert zitiert werden — für ein laufendes Projekt ist die aktuelle SIA-180-Ausgabe massgebend (Querbezug `wissen/normen`, dort ist SIA 180:2014 destilliert, siehe Verweis im Artikel [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]]/`wissen/energie`).

## Offene Punkte

- SIA-180-Grenzwerte im Skript stammen aus der Ausgabe 1999 — die aktuelle Ausgabe (SIA 180:2014 gemäss `wissen/energie/wiki/sommerlicher-waermeschutz.md`) ist vor jeder Verwendung als Nachweiswert zu prüfen, nicht die hier zitierten Zahlen.
- Das Mehrzonen-Netzwerkmodell (Fig. 5.16, mehrere Räume/Öffnungen, Serieschaltung von Strömungswiderständen analog Elektrotechnik) wurde nur als Methodenhinweis übernommen, nicht im Rechendetail — für eine konkrete Mehrzonenberechnung ist Fachliteratur/Simulationssoftware beizuziehen.
- Kein Abgleich mit `wissen/energie/wiki/komfortlueftung.md` im Detail durchgeführt (dortiger Fokus liegt auf WRG-Systemen/Filterklassen/Produktreglementen, nicht auf der hier destillierten Druck-/Strömungsphysik) — Ergänzungscharakter angenommen, nicht als Duplikat behandelt.
