---
quelle: «Normierung des GEAK», Version 2.1.0, Konferenz Kantonaler Energiedirektoren (EnDK) / Verein GEAK-CECB-CECE, verabschiedet an der Plenarversammlung vom 30.3.2023, Autorin Monika Hall (FHNW, Institut Nachhaltigkeit und Energie am Bau INEB)
herausgeber: EnDK / Verein GEAK-CECB-CECE
ausgabe: Version 2.1.0, 30.3.2023
gelesen: 2026-08-07 (vollständig, Seiten 1-79, in Blöcken 1-6 / 7-26 / 27-46 / 47-66 / 67-79)
datenstand: 2023 (aktuell gültige Methodik-Fassung, Stand Juli/August 2026)
status: emerging
last_updated: 2026-08-07
geltungsbereich: Kap. 2 Heizwärmebedarf (S.8-9) · Kap. 3 Heizung und Warmwasser komplett (Wärmeerzeuger, Speichertypen, Verteil-/Speicherverluste, Hilfsenergie, Endenergie, S.10-33) · Kap. 4 Lüftung (S.34-41) · Kap. 5 PV/WKK-Anrechnung (S.42) · Kap. 6 Elektrizität Wohnen/Zweckbauten (S.43-59) · Kap. 7.1/7.2 Etikette, Projektwerte und Referenzwerte inkl. CO2/THGE (S.60-65) · Kap. 8 Beurteilung Gebäudehülle und Gebäudetechnik (S.68-71). Kap. 7.3 Kennwerte und Klassierung (Tab. 40/41, S.66-67) ist bereits im Bestandsdestillat [[geak-klassengrenzen-relative-klassierung]] erfasst und wird hier nur verlinkt, nicht wiederholt. Kap. 9 Literaturverzeichnis und Kap. 10 Symbolverzeichnis wurden gelesen, aber nicht inhaltlich destilliert (reine Nachschlagelisten).
---

# GEAK-Normierung — die Rechenlogik hinter der Etikette (Bilanzierung Heizung, Warmwasser, Lüftung, Elektrizität)

**Das Wichtigste in 1 Satz:** Die GEAK-Etikette entsteht aus einem Vergleich von zwei
vollständig durchgerechneten Jahresenergiebilanzen (Projektgebäude gegen ein fiktives
Referenzgebäude), wobei Wärmeerzeugung, -verteilung und -speicherung mit eigenen
Verlustmechanismen bilanziert werden und Strom in dieser Bilanz **doppelt** so stark
gewichtet wird wie fossile Brennstoffe (nationaler Gewichtungsfaktor f_CH,el = 2, Tab. 35,
S. 61) — ein Systementscheid, der die Klasse eines Gebäudes mindestens so stark prägt wie
der bauliche Zustand.

## Abgrenzung zum Bestandsdestillat

[[geak-klassengrenzen-relative-klassierung]] beschreibt bereits **das Ergebnis**: die
relative Klassierung A–G nach Tab. 40 (Gebäudehülle/Gesamteffizienz, 50-%-Bandbreiten) und
Tab. 41 (CO2-Skala, feste 5-kg-Schritte mit Temperaturkorrektur f_cor). Dieses Destillat
beschreibt **den Weg dorthin**: wie die beiden Vergleichsgrössen Q_H,eff und E_P (Projektwert)
sowie Q_H,li und E_P,ref (Referenzwert) überhaupt berechnet werden — also die komplette
Bilanzierungsmaschinerie aus Kap. 2 bis 8 der Normierung. Ohne dieses Destillat bleibt die
Aussage «B liegt zwischen 50 % und 100 % des Referenzwerts» abstrakt; hier steht, was in
diese zwei Zahlen alles einfliesst.

## Rechenlogik Schritt für Schritt

### 1. Heizwärmebedarf als Basis (Kap. 2, S. 8-9)

Der effektive Heizwärmebedarf Q_H,eff wird nach SIA 380/1:2016 berechnet, aber im GEAK
**immer im Einzonenmodell** — auch bei Mischnutzungen (bis zu drei Nutzungen pro Gebäude).
Die Standardnutzungsdaten (Raumtemperatur, Präsenzzeit, Elektrizitätsbedarf,
Aussenluftvolumenstrom etc.) werden bei Mischnutzung **flächengemittelt** über die
Energiebezugsflächen der einzelnen Nutzungen (Gl. 1, S. 9). Ausdrücklicher Hinweis im
Original (S. 8): «Dieses vereinfachte Verfahren entspricht nicht dem gängiger SIA 380/1
Programme, die ein sogenanntes Mehrzonenmodell berechnen» — **GEAK-Werte und
Werte aus externen SIA-380/1-Programmen für dasselbe Gebäude weichen deshalb systematisch
voneinander ab**, auch wenn beide korrekt rechnen. Das gilt auch für den Referenzgrenzwert
(Kap. 7.2).

### 2. Wärmeerzeugung: bis zu fünf Erzeuger, klar getrennte Versorgungsbereiche (Kap. 3.1-3.4, S. 10-12)

Ein Gebäude kann bis zu fünf Wärmeerzeuger deklarieren, die Energiebezugsfläche wird für
Heizung und Warmwasser je in maximal drei Versorgungsbereiche (HE1-3, WW1-3) aufgeteilt;
jeder Bereich muss zu 100 % gedeckt sein (Beispieltabelle Tab. 1, S. 10). Sonderfall
«Holzofen als Zusatzheizung» (S. 11): maximal 10 % Deckungsgrad des **gesamten**
Heizwärmebedarfs, nur in einem wassergeführten Bereich möglich, verlangt zwingend einen
zusätzlichen Hauptwärmeerzeuger, hat keine Hilfsenergie und keine Verteilverluste. Speicher
(Heizungs-, Warmwasser- oder Kombispeicher) werden Wärmeerzeugern flächenscharf zugeordnet
(max. drei Erzeuger je Speicher, max. zwei Speicher je Erzeuger, Tab. 2, S. 12).

### 3. Verteilverluste: nur ausserhalb der thermischen Hülle und nur bei zentraler Versorgung (Kap. 3.5.2, S. 13-16)

Kernregel (Flussdiagramme Abb. 3/4, S. 15-16): Verteilleitungsverluste werden **nur dann
überhaupt berechnet**, wenn (a) die Wärmeversorgung «zentral» (wassergeführte
Haupt-/Etagenheizung) ist **und** (b) die horizontale Verteilleitung **ausserhalb** der
thermischen Gebäudehülle liegt. In allen anderen Fällen — dezentrale Versorgung, oder
Leitung innerhalb der Hülle — gelten die Verluste als vollständig heizwirksam
rückgewinnbar und werden mit 0 kWh/a angesetzt. Vertikale Heizungsleitungen sind laut
Norm grundsätzlich komplett rückgewinnbar und werden nie berechnet. Die eigentliche
Verlustberechnung (Gl. 3/4, S. 13-14) ist ein Rohrwärmeverlust-Modell (Wärmeübergang innen/
aussen, Dämmzustand, mittlere Leitungslänge nach Gebäudetyp aus Tab. 8, Temperaturdifferenz
zur Umgebungsluft: 13 °C ausserhalb, 20 °C innerhalb der Hülle).

### 4. Speicherverluste: Schwellenwerte nach Volumen, Lage entscheidet über Anrechnung (Kap. 3.5.3, S. 17-19)

Heizungsspeicher **innerhalb** der thermischen Gebäudehülle gelten laut SIA 380:2022
(Ziffer 4.4.5.8) als heizwirksam und werden **nicht** berechnet. Ausserhalb der Hülle
gilt eine dreistufige Wärmedurchgangs-/Dämmdicken-Staffelung nach Speicherinhalt:
≤ 400 l, > 400 bis ≤ 2000 l, > 2000 l (S. 17-18, je mit eigenem U-Wert bzw. eigener
Dämmdicke). Warmwasserspeicherverluste werden unabhängig vom Volumen mit derselben
Formel gerechnet (c1 = 0,11 kWh/Tag, c2 = 0,10 kWh/Tag, Standardwert 2 Wasser führende
Stutzen zzgl. 2 je zugeordnetem Wärmeerzeuger, ausser bei Elektrospeicher/-direkt/
-Wassererwärmer, S. 19) — mit dem ausdrücklichen Hinweis, dass diese Formel gemäss SIA
385/2 eigentlich nur für Speicher > 2000 l gilt und im GEAK mangels Alternative auch für
kleinere Speicher verwendet wird.

### 5. Rückgewonnene Verluste: 2/3 der Warmwasser-Verluste heizen das Haus mit (Kap. 3.7, S. 23-25)

Ein methodisch wichtiger Mechanismus: Verteil- und Speicherverluste des **Warmwassers**
werden zu einem Teil als «heizwirksam» dem Heizwärmebedarf gutgeschrieben (Formel
Q_Heizband, Faktor 2/3, Gl. 14, S. 23) und mindern so über den Faktor 0,8 · η_g den
anzurechnenden Endenergiebedarf für Heizung (Gl. 16, S. 25). Ein schlecht gedämmtes
Warmwassersystem «heizt» also im Winter anteilig mit — das reduziert seinen eigenen
Fehlbetrag beim Heizwärmebedarf, verschlechtert die Warmwasser-Bilanz aber unverändert.

### 6. Endenergie je Wärmeerzeuger, inkl. Überdimensionierungs-Malus (Kap. 3.8, S. 25-26)

Die Endenergie wird für jeden Wärmeerzeuger separat aus Nutzenergiebedarf plus
Verteil-/Speicherverlusten, dividiert durch (η_HE,WEi − 0,09 · (Dim_WEi − 1)), gebildet
(Gl. 17/18). Ein überdimensionierter Wärmeerzeuger (Dim > 1, aus Auswahlliste) senkt also
rechnerisch den effektiven Jahresnutzungsgrad — Überdimensionierung wird explizit
bestraft, nicht nur implizit über höhere Taktverluste.

### 7. Hilfsenergie: empirische, nicht-lineare Formeln je nach Erzeugertyp (Kap. 3.9, S. 27-29, Tab. 11 S. 33)

Die Hilfsenergie (Umwälzpumpen, Feuerung, Hilfsaggregate) wird über empirische
Potenzfunktionen der Fläche und des Heizwärmebedarfs berechnet, gewichtet mit drei
Erzeuger-spezifischen Faktoren aus Tab. 11 (S. 33). Zentrale Fundstelle für die
Bauherren-Kommunikation: **Wärmepumpen jeder Bauart (Aussenluft, Erdsonde, Grundwasser,
Erdregister) sowie alle Lüftungsgeräte mit integrierter Wärmepumpe haben in Tab. 11 durchweg
den Faktor 0** — ihr Hilfsstrom für Umwälzpumpe und Hilfsaggregate ist bereits in der
Jahresarbeitszahl (JAZ) enthalten und wird nicht zusätzlich gerechnet. Ölfeuerungen haben
durchweg Faktor 1, automatische Holzfeuerungen sogar Faktor 3 beim Hilfsaggregat.

### 8. Lüftung: vereinfachtes Verfahren bis zu einer Grössengrenze (Kap. 4, S. 34-41)

Bei EFH/MFH bis 2'000 m² und Verwaltung/Schulen bis 1'000 m² Energiebezugsfläche darf mit
Standardwerten («Kleinanlagen», Tab. 12-17) gerechnet werden; darüber ist eine externe
Berechnung des effektiven Aussenluftvolumenstroms und Stromverbrauchs Pflicht (S. 34). Die
Methodik folgt dem Minergie-Nachweisformular [10]. Bei Mischnutzung kann jede Nutzung ihren
eigenen Lüftungstyp haben; die thermisch wirksamen Aussenluftvolumenströme werden analog
zur Heizwärme flächengemittelt.

### 9. PV/WKK-Ertrag: nur Eigenverbrauch plus 40 % der Netzeinspeisung zählen (Kap. 5, S. 42)

E_el,anr = (E_PV + E_WKK) · (EVR + f_Netz · (1 − EVR)), mit f_Netz = 0,4 fix und der
Eigenverbrauchsrate EVR entweder aus einem PVopti-Nachweis oder als Standardwert 0,2 (analog
Minergie [11]). Eine PV-Anlage verbessert die Etikette also nie um ihren vollen Ertrag,
sondern nur um den Eigenverbrauchsanteil plus 40 % des Rests.

### 10. Elektrizität Wohnen: Mindestausstattung und Belegungsfaktor (Kap. 6.2, S. 44-52)

Für die Etikette braucht es zwingend eine Mindestgeräteausstattung (Kochherd, Backofen,
Kühlschrank, Waschmaschine je Wohnung/Haus, Tab. 18, S. 44); Kleingeräte/Elektronik und
Beleuchtung müssen mindestens 80 % der Energiebezugsfläche abdecken. Der Bedarf wird über
einen Belegungsfaktor f_b skaliert (Gl. 36, S. 45): f_b = 1 + (N_Zimmer − 3)/10, bezogen
auf eine durchschnittliche 3-Zimmer-Wohnung, gedeckelt bei N_Zimmer = 7 (Küchen, Bäder, WC
zählen nicht als Zimmer). Für Geräte gibt es vier Qualitätsstufen mit klaren
kWh/a-Bandbreiten (Tab. 19, S. 50, z. B. Kühlschrank > 160 l ohne Tiefkühlfach: 70/120/230/280
kWh/a sehr gut/gut/standard/schlecht — Faktor 4 zwischen bester und schlechtester
Geräteklasse).

### 11. Zweckbauten-Elektrizität: Raumnutzung statt Gerätewahl (Kap. 6.4-6.5, S. 53-59)

Bei Zweckbauten (Verwaltung, Schule, Verkauf, Restaurant, Hotel) wird nicht gerätescharf,
sondern raumnutzungsscharf gerechnet: je Raumnutzung ein Basisbedarf für
Betriebseinrichtungen/Geräte und Beleuchtung (Tab. 25/27/29/31/33), skaliert mit einem
Qualitätsfaktor topmodern/modern/standard/veraltet (Tab. 26/28/30/32/34, durchgehend
0,4/0,7/1/1,3).

### 12. Die Etikette: Projektwert gegen Referenzwert, Strom zählt doppelt (Kap. 7.1-7.2, S. 60-65)

Der Projektwert für die Gesamteffizienz E_P (Gl. 51, S. 60) summiert die gewichtete
Endenergie aller Wärmeerzeuger, Hilfsenergie, Lüftungsstrom und Haushaltsstrom, abzüglich
des anrechenbaren PV-/WKK-Ertrags — jeweils multipliziert mit einem **nationalen
Gewichtungsfaktor f_CH je Energieträger** (Tab. 35, S. 61):

Heizöl, Erdgas, Kohle, Briketts: 1,0 · Holz (Stückholz/Schnitzel/Pellets): 0,5 · Solarwärme:
0 · Fernwärme: 0,4 bis 1,0 je nach deklariertem Fossilanteil (≤ 25 % / ≤ 50 % / ≤ 75 % /
> 75 %) · **Elektrizität, sowohl Bedarf als auch Produktion: 2,0**.

Der Referenzwert E_P,ref (Gl. 54, S. 64) ist eine feste Rezeptur, kein realer Gebäudetyp:
80 % des SIA-380/1-Neubau-Grenzwerts Heizwärme (Verteilwirkungsgrad 95 %) plus 80 % des
Standard-Warmwasserbedarfs aus Tab. 39 (Verteilwirkungsgrad 70 %), beides mit einer
Ölfeuerung (Nutzungsgrad 90 %) gedeckt, keine Kühlung/Lüftungsaufbereitung, dazu der
Standard-Elektrizitätsbedarf E_el,ref aus Tab. 39 (MFH 28, EFH 22, Verwaltung 34, Schule 19,
Verkauf 52, Restaurant 45, Hotel 31 kWh/(m²a) — deckt sich mit dem im Bestandsdestillat
zitierten Wert). Bei Mischnutzung wird je Nutzung gerechnet und flächengemittelt.

### 13. CO2 und Treibhausgase: zwei getrennte, nicht klassenwirksame Zusatzgrössen (Kap. 7.1.3-7.1.4, S. 61-63)

Zusätzlich zur A-G-Etikette weist der GEAK zwei informative Kennzahlen aus: die
**direkten CO2-Emissionen** (nur die vor Ort verbrannten fossilen Energieträger, BAFU-Faktoren
Tab. 36: Heizöl 0,265, Erdgas 0,203 kg/kWh) und die **Treibhausgasemissionen THGE**
(inklusive vorgelagerter Kette, KBOB-Faktoren Tab. 37: Heizöl 0,324, Erdgas 0,230, Holz
Stückholz 0,023/Schnitzel 0,011/Pellets 0,028, Strom 0,125 kg/kWh — «Der Wert ist informativ»,
S. 62, ohne Einfluss auf die A-G-Klassierung). Für Fernwärme wird ein angenommener
Wärmeerzeugermix (Öl/Gas/Holz/Grundwasserwärmepumpe/Kehrrichtverbrennung, gestaffelt nach
deklariertem Fossilanteil, Tab. 38, S. 63) unterstellt, aus dem der CO2-Faktor der Fernwärme
hergeleitet wird — die Kehrrichtverbrennung enthält dabei laut Text «immer einen fossilen
Anteil».

### 14. Beurteilung Gebäudehülle: eigene, strengere Skala für Neubauten (Kap. 8.1, S. 68-69)

Unabhängig von der A-G-Etikette gibt es eine zweite, vierstufige Beurteilung
(sehr gut/gut/mittelmässig/schlecht) je Bauteilkategorie (Dach, Fenster, Aussenwand,
Boden gegen aussen, Bauteile gegen unbeheizt), anhand flächengemittelter U-Werte. Für
Bestandsgebäude gilt Tab. 42, für Neubauten (Baujahr aktuelles Jahr bis minus drei Jahre)
gilt die spürbar strengere Tab. 43 — dieselbe Wand mit demselben U-Wert kann also je nach
Baujahrs-Fenster unterschiedlich beurteilt werden.

### 15. Beurteilung Gebäudetechnik: Verhältnis gewichteter Endenergie zu Nutzwärme (Kap. 8.2, S. 70-71)

B_HE und B_WW (Gl. 59/60) setzen die gewichtete Endenergie (inkl. Hilfsenergie) ins
Verhältnis zur reinen Nutzwärme; vier Stufen mit klaren Schwellen (Tab. 44, S. 71):
Heizung sehr gut < 0,85, gut < 1,00, mittelmässig < 1,20, sonst schlecht; Warmwasser
sehr gut < 1,0, gut < 1,25, mittelmässig < 1,5, sonst schlecht; Elektrizität sehr gut ≤ 70 %,
gut ≤ 100 %, mittelmässig ≤ 130 % des um PV-Ertrag bereinigten Bedarfs im Verhältnis zum
Referenzwert E_el,ref.

## Bauherren-Transfer

**Warum zwei baugleiche Häuser unterschiedliche GEAK-Klassen bekommen können:** Die Klasse
hängt nicht nur vom U-Wert der Fassade ab, sondern von einem ganzen Bündel Systementscheiden,
die im Referenzvergleich unterschiedlich stark wiegen: dem gewählten Wärmeerzeuger (der
nationale Gewichtungsfaktor macht 1 kWh Strom rechnerisch doppelt so «teuer» wie 1 kWh
Heizöl — eine Elektroheizung verschlechtert die Etikette stärker als der reine
Energiebedarf vermuten lässt, eine Wärmepumpe profitiert doppelt, weil sie wenig
Endenergie UND keine zusätzliche Hilfsenergie braucht, Tab. 11), der Lage der
Verteilleitungen (innerhalb der Hülle sind Verluste gratis, ausserhalb zählen sie voll),
der Speichergrösse und -lage, dem hydraulischen Abgleich (Tab. 3 vs. Tab. 4 unterscheiden
die mittlere Heizkreistemperatur um bis zu 12 °C), der Anzahl Zimmer (Belegungsfaktor f_b),
der Geräteausstattung und -qualität sowie einer allfälligen PV-Anlage samt
Eigenverbrauchsrate. **Was die Klasse aussagt:** eine relative Einordnung zum eigenen,
individuell berechneten Referenzgebäude (siehe Bestandsdestillat) plus einer Systemwahl-
Gewichtung, die Strom bewusst benachteiligt, um den Umstieg auf CO2-arme, aber
elektrizitätsintensive Systeme nicht automatisch als «Verschlechterung» erscheinen zu
lassen, ohne den realen Strombedarf zu ignorieren. **Was sie nicht aussagt:** den absoluten
Energieverbrauch in kWh, den CO2-Fussabdruck (dafür gibt es die separate,
nicht-klassenwirksame THGE-Kennzahl) oder die Behaglichkeit/den baulichen Zustand im Detail
(dafür die separate Vier-Felder-Beurteilung nach Kap. 8).

**Was der Bauherr dem GEAK-Experten liefern muss**, damit die Berechnung nicht auf
Annahmen beruht: U-Werte bzw. Bauteilaufbauten aller Aussenbauteile (oder deren
Baujahr/Bauteilkatalog-Zuordnung), Typ und Nutzungsgrad/JAZ jedes Wärmeerzeugers samt
Energieträger, Lage der Verteilleitungen (innerhalb/ausserhalb der thermischen Hülle) und
deren Dämmzustand, Grösse und Aufstellort jedes Speichers samt Anschlussqualität,
Lüftungstyp und Wärmerückgewinnungsgrad, die tatsächliche Geräteausstattung bei Wohnen
(Kochherd, Backofen, Kühlschrank, Waschmaschine mindestens), Anzahl Zimmer/Wohnungen, und
bei vorhandener PV-Anlage den Jahresertrag sowie im Idealfall einen Eigenverbrauchsnachweis
nach PVopti (sonst greift der pauschale Standardwert EVR = 0,2, der eine gut ausgelegte
Anlage eher schlechter darstellt als sie ist).

## Offene Punkte

Keine — der Quellentext (79 Seiten) wurde vollständig gelesen. Nicht in diesem Destillat
vertieft, weil reine Nachschlagelisten ohne eigenständige Methodik-Aussage: Kap. 9
Literaturverzeichnis (S. 72-73, verweist u.a. auf SIA 380/1:2016, SIA 384/3:2013,
SIA 385/2:2015, SIA 380/4:2006, das GEAK-Anwenderhandbuch V5.1/Korrex 5.1.2 [8] und die
KBOB-Ökobilanzdaten 2009/1:2022 [17]) und Kap. 10 Symbol-/Einheitenverzeichnis (S. 74-79).
Wer eine der hier beschriebenen Formeln für eine eigene Nachrechnung exakt reproduzieren
will (z. B. Gl. 6-24 für Speicher-/Hilfsenergie), sollte die Originalgleichungen im PDF
nachschlagen — dieses Destillat gibt die Rechenlogik und die Bauherren-relevanten
Stellhebel wieder, ist aber keine vollständige, direkt programmierbare Formelsammlung.

**Backlinks:** [[geak-klassengrenzen-relative-klassierung]] · [[geak-gebaeudeenergieausweis-kantone]] ·
[[geak-kosten-efh-mfh]] · Themenartikel [[geak-gebaeudeenergieausweis]].
