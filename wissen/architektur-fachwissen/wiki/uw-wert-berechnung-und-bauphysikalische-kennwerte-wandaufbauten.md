---
title: "Uw-Wert-Berechnungsgrundlagen (EnFK-Merkblatt Juni 2009) und Bauphysik-Kennwerte typischer Wandaufbauten"
status: speculative
last_updated: 2026-08-29
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/01_Berechnung_U_Fenster/EnFK_Fensterblatt_endgueltig-Juni2009mit PW.pdf (Merkblatt Fenster «Das Fenster im Energienachweis», Konferenz Kantonaler Energiefachstellen EnFK, Ausgabe Juni 2009, 16 Seiten, gelesen vollständig)", "/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/Zeitkonstante_Baumaterialien.pdf (Übungsaufgabe Bauphysik, Aufgabe 3, ohne Autoren-/Datumsangabe, gelesen vollständig — reines Aufgabenblatt mit Schichtdaten, keine vorgerechnete Lösung)", "/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/Dicke_Materialstarken_Boden_Wand_Dachaufbauten.pdf (Übung Bauphysik 3, ETH Zürich, Professur für Bauphysik Prof. Dr. Jan Carmeliet, 02.05.2011, gelesen vollständig)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[fassaden-feuchteschutz-sia-180-unterkonstruktion-dehnung-toleranz]]", "[[anforderungskatalog-fenster-fassade-sechs-interessengruppen-gkp]]"]
---

# Uw-Wert-Berechnungsgrundlagen und Bauphysik-Kennwerte typischer Wandaufbauten

## Kontext

Zwei bauphysikalische Nachweisgrundlagen aus derselben P1-Gruppe (`04_Bauphysik_Energie/04_Standarts_Tabellen_Merkblatt_Formel/`): einerseits das offizielle Schweizer Merkblatt zur Fenster-U-Wert-Berechnung (EnFK, Ausgabe Juni 2009), andererseits Schichtaufbau-Kennwerte typischer Wandkonstruktionen für Zeitkonstanten-/Speichermassen-Abschätzungen. Beide dienen als Verständnis- und Plausibilisierungsgrundlage für Bauherrengespräche und Vorprojekt-Aussagen, nicht als Ersatz für einen aktuellen Energienachweis.

## Teil 1: Uw-Wert-Berechnung nach EnFK-Merkblatt (Juni 2009)

**Grundformel.** Der Fenster-U-Wert (Uw) ergibt sich aus der flächengewichteten Summe der Wärmedurchgangskoeffizienten aller Teilkomponenten:

Uw = (Uf·Af + Ug·Ag + Ψg·l) / Aw

wobei Uf der Rahmen-U-Wert (Fläche Af), Ug der Glas-U-Wert (Fläche Ag), Ψg der lineare Wärmedurchgangskoeffizient des Glasrandverbunds (Länge l) und Aw die massgebende Netto-Fensterfläche (lichtes Mass der Wand-/Dachöffnung) ist. Kern der Methode: Rahmen- und Glas-U-Wert gehen flächengewichtet ein, der Glasrandverbund als Wärmebrücke über einen linienbezogenen Koeffizienten.

**Zwei Nachweisverfahren gemäss Norm SIA 380/1:2009** («Thermische Energie im Hochbau»): der Einzelbauteilnachweis (vereinfacht, Normfenster 1,55 × 1,15 m, Glasanteil pauschal 75 %, nicht anwendbar bei Vorhangfassaden oder Sonnenschutzglas mit g⊥ < 0,3) und der Systemnachweis (Einhaltung des Heizwärmebedarfs Qh,li fürs ganze Gebäude, mit spezifischer Fenstergrösse und Massbild).

**Grenzwerte Uli für Fenster/Türen (SIA 380/1, Standard-Raumtemperatur 20 °C):** gegen Aussenklima 1,3 W/m²K, gegen unbeheizte Räume 1,6 W/m²K; bei vorgelagerten Heizkörpern 1,0 bzw. 1,3 W/m²K. Bei abweichender Standard-Raumtemperatur wird der Grenzwert pro 1 K Abweichung um 5 % korrigiert (Beispiel Hallenbad θi = 28 °C: Uli 1,3 → 0,8 W/m²K gerundet).

**Rechenwerte für Rahmen (Uf) ohne überwachte Produktangabe** (nach SIA D 0176): Holz/Holz-Metall 1,8 W/m²K, Kunststoff 2,2 W/m²K, wärmegedämmte Verbundprofile 2,8 W/m²K.

**Glasrandverbund (Ψg), Rechenwerte** (nach EN ISO 10077-1:2006, Anhang E): mit thermisch verbessertem Abstandhalter (Edelstahl/Kunststoff) und Holz-/PVC-Rahmen 0,05–0,06 W/mK je nach Verglasungstyp; mit Aluminium-Abstandhalter deutlich höher (0,06–0,08 W/mK bei Holzrahmen).

**MINERGIE®-Modul Fenster:** Uw ≤ 1,0 W/m²K.

**Wärmebrücke Fensteranschlag:** beim Einzelbauteilnachweis gilt ein Grenzwert von 0,10 W/mK; die beste Positionierung des Rahmens liegt in der Dämmebene, möglichst bündig mit deren Innenfläche.

## Teil 2: Zeitkonstante und Speichermasse — Schichtdaten typischer Wandaufbauten

**Backstein aussengedämmt** (Aufbau von innen nach aussen, Übungsaufgabe Bauphysik ohne vorgerechnete Lösung — die Schichtdaten selbst sind aber verwertbar):

| Schicht | Dicke [m] | λ [W/mK] | c [J/kgK] | ρ [kg/m³] |
|---|---|---|---|---|
| Innenputz | 0.01 | 0.6 | 1100 | 1800 |
| Backstein | 0.15 | 0.44 | 900 | 1100 |
| Polystyrol | 0.12 | 0.04 | 1400 | 30 |
| Aussenputz | 0.02 | 0.87 | 1100 | 1800 |

Dieselbe Quelle gibt zwei weitere Referenzaufbauten mit vollständigen Schichtdaten (Dicke, λ, c, ρ): monolithisches Mauerwerk (Innenputz/Optitherm 0.475 m, λ = 0.2/Aussenputz) und Metallpaneel (Stahlblech/Mineralwolle/Alublech).

**Bestandsaufbau Bürogebäude Zürich** (ETH-Übung Bauphysik 3, Prof. Dr. Jan Carmeliet, 02.05.2011 — als Sanierungsausgangslage eines fiktiven, aber realistisch gebildeten Zürcher Bürogebäudes): Bodenaufbau von innen nach aussen Linoleum 0.01 m, Sperrholzplatte 0.03 m, Luftraum 0.16 m, Stahlbeton 0.20 m, Luft 0.16 m, Mineralfaserplatte 0.03 m, gelochte Gipskartonplatte 0.01 m. Dachaufbau analog mit Steinwolleplatte 0.04 m, Bitumenbahn und Kies 0.05 m. Fassadenaufbau: Innenputz 0.01 m, Stahlbeton 0.20 m, Steinwolleplatte 0.06 m, Aussenputz 0.01 m. Sanierungsziel der Übung: Leerlauftemperatur (Raumtemperatur ohne Haustechnik) möglichst oft im Komfortbereich 20–26 °C halten und die Heizleistung auf höchstens 10 W/m² drücken, damit eine reine Lüftungsanlage auch als Heizung dienen kann.

## Praxisregel

Die Backstein-aussengedämmt-Werte und der Zürcher Bestandsaufbau sind als Rechengrundlage für eine erste Speichermassen- oder Sanierungsargumentation in einer Machbarkeitsstudie einsetzbar («das bestehende Fassadenschema hat X cm Stahlbeton als Speichermasse, Zielgrösse Heizleistung ≤ 10 W/m² ist bei einer Zusatzdämmung von …»), statt eine Faustregel ohne Zahlenbasis zu formulieren. Für den eigentlichen Uw-Nachweis eines Projekts ist das EnFK-Berechnungstool der Konferenz Kantonaler Energiefachstellen (www.endk.ch) heranzuziehen, nicht die Rechenwerte dieses Artikels.

## Offene Punkte

- Beide Bauphysik-Kennwertdateien sind Übungsaufgaben (eine davon datiert 02.05.2011, ETH Zürich), keine vorgerechneten Lösungen oder Normwerte; sie liefern verwertbare Schichtdaten, aber keine berechnete Zeitkonstante τ selbst — das Inventar hatte hier «rechnet vor» formuliert, das Quelldokument stellt tatsächlich nur die Aufgabenstellung samt Tabellenwerten dar.
- Das EnFK-Merkblatt datiert Juni 2009 und bezieht sich auf SIA 380/1:2009, SIA 331:2008, SIA 180:1999, SIA 382/1:2007, SIA 416/1:2007. **Alle U-Wert-Grenzwerte, Rechenwerte für Uf/Ψg und Nachweisverfahren sind vor Verwendung gegen die aktuell gültige EnFK-/MuKEn-Fassung und die jeweils aktuelle SIA-Norm-Ausgabe zu prüfen** (Rule `normen-referenz`) — das Merkblatt selbst weist darauf hin, dass es ältere Bundes-Planungswerkzeuge (Ausgaben 1995/2002) ablöst, ist also selbst Teil einer Kette periodisch revidierter Grundlagen.
- Norm-Ziffern (SIA 380/1, SIA 331, SIA 180, SIA 416/1) sind hier nur methodisch referenziert, nicht gegen `wissen/normen/` verifiziert — dort liegt bislang kein Destillat zu diesen Normen vor (Stand dieser Prüfung: nur `en-520-gipsplattentypen.md` vorhanden).
