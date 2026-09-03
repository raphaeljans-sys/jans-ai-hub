---
title: Witikon Steinbrüchelstrasse 26/28 (WI1585): Prüfung einer Fremd-Potentialstudie in der W3 Stadt Zürich
date: 2026-09-03
status: established
sources: ["BZO Zürich 2016 V43 Art. 6, 7a, 8, 10, 11, 13, 14, 15", "§ 255 Abs. 2 PBG Anhang", "§ 276 Abs. 1 PBG Anhang", "§ 280 PBG Anhang", "§ 293 PBG", "§ 100 PBG Anhang", "§ 66 Abs. 2 PBG", "§ 270 Abs. 3 PBG", "§ 323 PBG", "PPV Stadt Zürich Art. 4/5/8ter", "ÖREB-Auszug WI1585 Nr. 20260903172523557", "oerebdocs docid 17431 (Teilrevision Waldabstandslinien Stadt Zürich, Auflage 03.12.2025)"]
links: [[nutzungsziffern]], [[abstaende-und-hoehen]], [[geschosse-und-kniestock]], [[baulinien-und-abstandslinien]], [[baureife-und-erschliessung]], [[negative-vorwirkung-und-bzo-revision]]
---

# Witikon Steinbrüchelstrasse 26/28: was aus der Prüfung einer Fremdstudie verallgemeinerbar ist

Anlass: baurechtliche Überprüfung der Potentialstudie Spice Architecture (16.05.2025) für Nova Property (Mail 03.09.2026). Bericht: OneDrive «IMMO - 01 Projekte/04 CONTROLLING/Zürich Witikon Steinbrüchelstrasse 26_28/260903-Baurechtliche-Machbarkeit-Steinbruechelstrasse-26-28/». Projektgebundenes steht dort; hier nur das Übertragbare.

## 1. Rechenkette W3 Stadt Zürich, Regelbauweise (verifiziert am Fall)

Ausnützung = Grundstücksfläche × 90 % (Art. 13 BZO). Mehrfläche im Attika-/Dachgeschoss nicht anrechenbar bis Ausnützung ÷ 3 (§ 255 Abs. 2 PBG Anhang, Stadt Zürich nicht harmonisiert). Kein anrechenbares Untergeschoss in der W3 (Art. 13, Vorbehalt Art. 8 Abs. 7 nur Arealüberbauung). Gebäudehöhe 9.5 m ab gewachsenem UND gestaltetem Terrain (Art. 10 Abs. 2 BZO). Erdgeschoss-Kote max. 1 m über gewachsenem Boden entlang der Gebäudeaussenseite (Art. 13 Abs. 3 lit. a). Grenzabstand 5 m + 1/3 der Fassaden-Mehrlänge über 12 m, total max. 10 m (Art. 14). Attikaprofil 45° ab 1 m über Schnittlinie (Art. 7a). Parkplätze «übriges Gebiet» 70 bis 115 % von 1 AP je 120 m² GF (PPV Art. 4/5), Velo 1 je 40 m², Motorrad 1/10 der minimalen Autoplätze (Art. 8ter).

## 2. Fallstricke, die eine Fremdstudie typischerweise nicht ausweist

1. Nullreserve: eine Studie, die die Ausnützung bis auf 0.1 % konsumiert, hängt vollständig an der AfB-Messweise für Nebenräume in Vollgeschossen (§ 255 Abs. 1 PBG Anhang: objektive Eignung, BEZ 2005 Nr. 37). Eine «Reduit 10 m² je Wohnung nicht anrechenbar»-Annahme ist in § 10 ABV nicht belegt; schriftlich bestätigen lassen.
2. Hanglage mit fremder Tiefgarage: wird das UG-Niveau durch einen Durchbruch in eine bestehende Nachbar-Tiefgarage fixiert, verliert das Projekt die Höhenfreiheit; Gebäudehöhe (§ 280 Anhang), EG-Kote (Art. 13 Abs. 3) und UG-Freilegung (§ 293) sind dann nur noch über Geschosshöhen (Minimum 2.4 m lichte Höhe, § 304 PBG) oder Staffelung steuerbar. Eine Aufschüttung hilft nicht, sie verschärft (Art. 10 Abs. 2: «auch vom gestalteten Terrain»).
3. UG mehrheitlich über gewachsenem Boden zählt in nicht harmonisierten Gemeinden als Geschoss (§ 276 Abs. 1 PBG Anhang); in einer Zone mit 0 anrechenbaren UG ist das ein Ausschlusskriterium.
4. Erschliessung über fremde Tiefgarage braucht mehr als ein Durchfahrtsrecht: Fuss-/Fahrwegrecht, Bau-/Duldungsrecht für Durchbruch und Tor, Nutzungsrecht für Ersatzplätze, Unterhaltsregelung, Recht auf der Wegparzelle zur Strasse. Bei gleicher Eigentümerin Eigentümerdienstbarkeit (Art. 733 ZGB), trotzdem vor der Baueingabe ins Grundbuch (§§ 233/237 PBG).
5. Handschiebeleiterkonzept Stadt Zürich (bis 13 m Einstiegshöhe) ersetzt die Feuerwehrzufahrt bei Gebäuden mittlerer Höhe; Leiterflächen 2 × 2 m, Zugang 1.20 m, Einstiegsöffnungen ca. 90 × 120 cm, oberste Dachschicht nicht brennbar; Freihalteflächen auf fremdem Grund dinglich sichern.
6. ÖREB-Kataster führt kommunale Denkmal-Inventare und Baumschutz nicht als Objekt; Bestand um 1960 vor Abbruchgesuch beim Amt für Städtebau abfragen.
7. Stadt Zürich: Teilrevision Ergänzungsplan Waldabstandslinien in öffentlicher Auflage seit 03.12.2025 (Amt für Städtebau, Erstellungsdatum 01.10.2025, 693 Seiten, oerebdocs docid 17431); der Connector geo-zh meldet sie als «proj wald». Bei Parzellen in 30 bis 35 m Waldentfernung die Linie prüfen.
8. Arealüberbauung Stadt Zürich erst ab 6'000 m² (Art. 8 Abs. 2 BZO); zwei bis drei Witikoner Einzelparzellen von 1'500 m² reichen nicht.

## 3. Werkzeug-Erkenntnis

Die Adresse einer Nachbarparzelle lässt sich ohne Adresse über den geo.admin-Identify-Endpunkt (Layer ch.swisstopo-vd.amtliche-vermessung, Punktkoordinate LV95) ermitteln; der Rückgabewert enthält Nummer, EGRID und den Polygonring, aus dem sich die Fläche (Shoelace) rechnen lässt. Das ersetzt die Adresssuche, wenn nur die Lage bekannt ist. Kandidat für geo-zh.mjs (`--punkt E,N`).
