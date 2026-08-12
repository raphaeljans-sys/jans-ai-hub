---
quelle: «Normierung des GEAK», Version 2.1.0, Konferenz Kantonaler Energiedirektoren (EnDK) / Verein GEAK-CECB-CECE, verabschiedet an der Plenarversammlung vom 30.3.2023, Autorin Monika Hall (FHNW, Institut Nachhaltigkeit und Energie am Bau INEB)
herausgeber: EnDK / Verein GEAK-CECB-CECE
ausgabe: Version 2.1.0, 30.3.2023
gelesen: 2026-08-07 (vollständig, Seiten 1-79, in Blöcken 1-6 / 7-26 / 27-46 / 47-66 / 67-79)
datenstand: 2023 (aktuell gültige Methodik-Fassung, Stand Juli/August 2026)
status: established (zweite, unabhängige Prüfrunde Run 126 am 11.08.2026 bestanden: 10 von 13 wörtlich zitierten Aussagen ohne Beanstandung, 3 Beanstandungen geringer Tragweite — zwei Formulierungen und eine zusammengezogene Fundstelle — vom Hauptlauf am Original gegengeprüft und korrigiert; keine falsche Zahl, keine falsche Fundstelle)
last_updated: 2026-08-11
geltungsbereich: Kap. 2 Heizwärmebedarf (S.8-9) · Kap. 3 Heizung und Warmwasser (Wärmeerzeuger, Speichertypen, Verteil-/Speicherverluste, Hilfsenergie, Endenergie, S.10-33; ohne Kap. 3.6 Zuordnung der Speicherverluste auf Wärmeerzeuger, S.20-22, Gl. 9-12) · Kap. 4 Lüftung (S.34-41) · Kap. 5 PV/WKK-Anrechnung (S.42) · Kap. 6 Elektrizität Wohnen/Zweckbauten (S.43-59; ohne Kap. 6.2.5 Weitere Verbraucher WVA, S.49) · Kap. 7.1/7.2 Etikette, Projektwerte und Referenzwerte inkl. CO2/THGE (S.60-65) · Kap. 8 Beurteilung Gebäudehülle und Gebäudetechnik (S.68-71). Kap. 7.3 Kennwerte und Klassierung (Tab. 40/41, S.66-67) ist bereits im Bestandsdestillat [[geak-klassengrenzen-relative-klassierung]] erfasst und wird hier nur verlinkt, nicht wiederholt. Kap. 9 Literaturverzeichnis und Kap. 10 Symbolverzeichnis wurden gelesen, aber nicht inhaltlich destilliert (reine Nachschlagelisten).
---

# GEAK-Normierung — die Rechenlogik hinter der Etikette (Bilanzierung Heizung, Warmwasser, Lüftung, Elektrizität)

**Das Wichtigste in 1 Satz:** Die GEAK-Etikette trägt drei Skalen mit drei verschiedenen
Bezugsgrössen — die Effizienz Gebäudehülle vergleicht allein den effektiven Heizwärmebedarf
mit dem SIA-380/1-Neubau-Grenzwert (Gl. 55), die Effizienz Gesamtenergie vergleicht zwei
vollständig durchgerechnete Jahresenergiebilanzen (Projektgebäude gegen ein fiktives
Referenzgebäude, Gl. 56), und die direkten CO2-Emissionen werden ohne Referenzgebäude direkt
gegen temperaturkorrigierte Grenzwerte klassiert (Tab. 41) — wobei in der Gesamtenergie-Bilanz
Strom im Bedarf wie in der Produktion mit dem nationalen Gewichtungsfaktor f_CH,el = 2 doppelt so
stark zählt wie Heizöl oder Erdgas (Tab. 35, S. 61).

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
Programme, die ein sogenanntes Mehrzonenmodell berechnen» — **für GEAK-Werte und
Werte aus externen SIA-380/1-Programmen für dasselbe Gebäude sind deshalb «unterschiedliche
Resultate für Projektwerte … zu erwarten» (S. 8)**. Das gilt auch für den Referenzgrenzwert
(Kap. 7.2).

### 2. Wärmeerzeugung: bis zu fünf Erzeuger, klar getrennte Versorgungsbereiche (Kap. 3.1-3.4, S. 10-12)

Ein Gebäude kann bis zu fünf Wärmeerzeuger deklarieren, die Energiebezugsfläche wird für
Heizung und Warmwasser je in maximal drei Versorgungsbereiche (HE1-3, WW1-3) aufgeteilt;
jeder Bereich muss zu 100 % gedeckt sein (Beispieltabelle Tab. 1, S. 10). Sonderfall
«Holzofen als Zusatzheizung» (S. 11): maximal 10 % Deckungsgrad des **gesamten**
Heizwärmebedarfs, nur in einem wassergeführten Bereich möglich, verlangt zwingend einen
zusätzlichen Hauptwärmeerzeuger, hat keine Hilfsenergie und keine Verteilverluste. Speicher
(Heizungs-, Warmwasser- oder Kombispeicher) werden den Wärmeerzeugern erzeugerscharf und
binär zugeordnet: die **Mengengrenzen** stehen als Aufzählung in Kap. 3.4 «Speichertypen», S. 11
(«Jeder Speicher wird mindestens einem, maximal drei Wärmeerzeugern zugeordnet. Jedem
Wärmeerzeuger können maximal zwei Speicher zugeordnet werden.»), die **binäre Zuordnung selbst**
liefert Gl. 9, S. 20 (Faktor 1 bei Zuordnung, 0 ohne). Die Beispieltabelle Tab. 2, S. 12, zeigt
nur einen Anwendungsfall. Die Wärmeerzeugung selbst hat keinen eigenen Verlustmechanismus: laut
Kap. 3.5.1, S. 13, müssen die Erzeugungsverluste «in den eingegebenen Nutzungsgraden bzw.
Jahresarbeitszahlen der Wärmeerzeuger enthalten sein» — eine freie Eingabe und damit die
empfindlichste Stellschraube der Bilanz.

### 3. Verteilverluste: bei Heizung nur ausserhalb der Hülle, bei Warmwasser immer (Kap. 3.5.2, S. 13-16)

Zwei verschiedene Regeln, die nicht verwechselt werden dürfen. **Heizung** (Flussdiagramm Abb. 3,
S. 15): Verteilleitungsverluste werden nur dann überhaupt berechnet, wenn (a) die Art der
Beheizung «zentral» ist und (b) die horizontale Verteilleitung ausserhalb der thermischen
Gebäudehülle liegt; in allen anderen Fällen gelten sie als komplett rückgewinnbar und werden
mit 0 kWh/a angesetzt, ebenso die vertikalen Heizungsleitungen ausnahmslos. **Warmwasser**
(Gl. 5, S. 16): hier entfällt die Lage-Abfrage — sobald die Versorgung nicht dezentral ist,
werden horizontale und vertikale Verteilverluste beide nach Gl. 3 gerechnet. Die Lage entscheidet
beim Warmwasser nicht über das Ob der Berechnung, sondern über die **Höhe** der Verluste
(Umgebungsluft θ_U = 13 °C ausserhalb, 20 °C innerhalb der Hülle, Legende zu Gl. 3/4, S. 14, also
Δθ = 47 K gegen 40 K; vertikale Verteilleitungen gelten laut derselben Legende **immer** als
innerhalb der thermischen Hülle) und darüber, ob sie als rückgewinnbar gutgeschrieben werden
(Faktor f_WW,dis,hor,ls,j = 1 innerhalb, = 0 ausserhalb der Hülle, S. 24). Die eigentliche Verlustberechnung (Gl. 3/4, S. 13-14) ist ein
Rohrwärmeverlust-Modell (Wärmeübergang innen/aussen, Dämmzustand, mittlere Leitungslänge nach
Gebäudetyp aus Tab. 8, Umgebungslufttemperatur θ_U: 13 °C ausserhalb, 20 °C innerhalb der
Hülle; massgebend ist die Temperaturdifferenz Δθ = θ_HK − θ_U bzw. θ_WW − θ_U mit θ_WW = 60 °C).

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

⚠ **Nicht verwechseln (Prüfhinweis Run 126):** Die Temperaturdifferenz Δθ = θ_HK − θ_U gilt für die
**Verteilleitungen** (Gl. 3, S. 14). Der **Heizungsspeicher** rechnet nach der Legende auf S. 18
mit **Δθ = θ_HK,max + 5 K − θ_U** (Speichertemperatur = maximale mittlere Heizkreistemperatur der
versorgten Bereiche zuzüglich 5 K). Wer den Leitungs-Ausdruck auf Gl. 6 anwendet, rechnet den
Speicher zu günstig.

### 5. Rückgewonnene Verluste: Warmwasser-Verluste innerhalb der Hülle heizen anteilig mit (Kap. 3.7, S. 23-25)

Ein methodisch wichtiger Mechanismus: die Verteil- und Speicherverluste des Warmwassers
**innerhalb der thermischen Gebäudehülle** werden als teilweise heizwirksam dem
Heizwärmebedarf gutgeschrieben (Summe Gl. 13, S. 23). Die Lage steuert das über zwei Schalter:
horizontale Verteilleitung und Speicher gehen nur innerhalb der Hülle mit Faktor 1 ein,
ausserhalb mit 0 (S. 24); vertikale Verteilverluste zählen immer. Der oft zitierte Faktor 2/3
(Gl. 14) betrifft **nur** die Warmhaltung per Heizband und ist ohne Heizband null (f_HB = 0).
Angerechnet wird die Summe schliesslich mit dem Faktor 0,8 · η_g (Gl. 16, S. 25).

### 6. Endenergie je Wärmeerzeuger, inkl. Überdimensionierungs-Malus (Kap. 3.8, S. 25-26)

Die Endenergie wird für jeden Wärmeerzeuger separat aus Nutzenergiebedarf plus
Verteil-/Speicherverlusten gebildet. Der Überdimensionierungs-Malus wirkt dabei **nur auf der
Heizungsseite**: Gl. 17 dividiert durch (η_HE,WEi − 0,09 · (Dim_WEi − 1)), während Gl. 18 für
Warmwasser allein durch η_WW,WEi teilt. Ein überdimensionierter Wärmeerzeuger senkt also
rechnerisch den effektiven Jahresnutzungsgrad der Heizung; die Warmwasser-Bilanz bleibt davon
unberührt.

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
Standardwerten («Kleinanlagen», Tab. 12-17) gerechnet werden; für «alle übrigen Fälle» (S. 34)
ist eine externe Berechnung des Jahresstrombedarfs und des Aussenluftvolumenstroms Pflicht —
das betrifft nicht nur grössere Flächen, sondern auch die Nutzungen Verkauf, Restaurant und
Hotel, für die Tab. 12-14 gar keine Standardwerte führen. Die
Methodik folgt dem Minergie-Nachweisformular [10]. Bei Mischnutzung kann jede Nutzung ihren
eigenen Lüftungstyp haben; die thermisch wirksamen Aussenluftvolumenströme werden analog
zur Heizwärme flächengemittelt.

### 9. PV/WKK-Ertrag: nur Eigenverbrauch plus 40 % der Netzeinspeisung zählen (Kap. 5, S. 42)

E_el,anr = (E_PV + E_WKK) · (EVR + f_Netz · (1 − EVR)), mit f_Netz = 0,4 fix (analog Minergie
[11]) und der Eigenverbrauchsrate EVR entweder aus einem PVopti-Nachweis oder als Standardwert
0,2. Ausser bei vollständigem Eigenverbrauch wird eine PV-Anlage nie mit ihrem vollen Ertrag
angerechnet, sondern nur mit dem Eigenverbrauchsanteil plus 40 % des eingespeisten Rests.

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

Bei Zweckbauten (Verwaltung, Schule, Verkauf, Restaurant, Hotel) wird überwiegend
raumnutzungsscharf statt gerätescharf gerechnet: je Raumnutzung ein Basisbedarf für
Betriebseinrichtungen/Geräte und Beleuchtung (Tab. 25/27/29/31/33), skaliert mit einem
Qualitätsfaktor topmodern/modern/standard/veraltet (Tab. 26/28/30/32/34, durchgehend
0,4/0,7/1/1,3). Gerätescharf ist allein die Kategorie «Geräte und Installationen»; auch beim
Wohnen laufen Kleingeräte/Elektronik (Tab. 22) und Beleuchtung (Tab. 23/24) bereits
raumnutzungsscharf.

### 12. Die Etikette: Projektwert gegen Referenzwert, Strom zählt doppelt (Kap. 7.1-7.2, S. 60-65)

Der Projektwert für die Gesamteffizienz E_P (Gl. 51, S. 60) summiert die gewichtete
Endenergie aller Wärmeerzeuger, Hilfsenergie, Lüftungsstrom und Haushaltsstrom, abzüglich
des anrechenbaren PV-/WKK-Ertrags — jeweils multipliziert mit einem **nationalen
Gewichtungsfaktor f_CH je Energieträger** (Tab. 35, S. 61):

Heizöl EL, Erdgas/Biogas, Kohle, Briketts: 1,0 · Holz (Stückholz/Schnitzel/Pellets): 0,5 ·
Solarwärme: 0 · Fernwärme: 0,4 / 0,6 / 0,8 / 1,0 je nach deklariertem Fossilanteil
(≤ 25 % / ≤ 50 % / ≤ 75 % / > 75 %) · **Elektrizität, als zwei getrennte Zeilen «Bedarf» und
«Produktion», je 2,0**.

⚠ **Werkzeug-Falle in genau dieser Tabelle (Prüfbefund Run 126, am Seitenbild verifiziert):** In der
0,5-Zeile steht im Original «~~Biogas,~~ Holz: Stückholz, Holzschnitzel, Pellets» — **«Biogas» ist
durchgestrichen**, und die Fussnote stellt klar: «Für Biogas wird der gleiche Gewichtungsfaktor
angewendet wie für Erdgas, unabhängig davon, ob das Biogas zugekauft oder vor Ort produziert wird»
(also 1,0). Jede reine Textextraktion (`pdftotext`) verliert die Durchstreichung und liest Biogas
fälschlich als 0,5-Energieträger. Wer die Tabelle nur als Text prüft, erzeugt hier einen
Scheinwiderspruch; massgebend ist das Seitenbild.

Der Referenzwert E_P,ref (Gl. 54, S. 64; die Quelle selbst schreibt an zwei Stellen fälschlich
«Gl. 53» — ein Tippfehler des Originals, da Gl. 53 die THGE bezeichnet, hier stillschweigend
korrigiert) ist eine feste Rezeptur, kein realer Gebäudetyp:
80 % des SIA-380/1-Neubau-Grenzwerts Heizwärme (Verteilwirkungsgrad 95 %) plus 80 % des
Standard-Warmwasserbedarfs aus Tab. 39 (Verteilwirkungsgrad 70 %), beides mit einer
Ölfeuerung (Nutzungsgrad 90 %) gedeckt, keine Kühlung/Lüftungsaufbereitung, dazu der
Standard-Elektrizitätsbedarf E_el,ref aus Tab. 39 (MFH 28, EFH 22, Verwaltung 34, Schule 19,
Verkauf 52, Restaurant 45, Hotel 31 kWh/(m²a) — deckt sich mit dem im Bestandsdestillat
zitierten Wert). Bei Mischnutzung wird je Nutzung gerechnet und flächengemittelt.

### 13. CO2 und Treibhausgase: eine dritte Etikettenskala plus eine informative Kennzahl (Kap. 7.1.3-7.1.4, S. 61-63)

Neben den beiden A-G-Skalen Gebäudehülle und Gesamteffizienz weist der GEAK zwei weitere
Grössen aus, die klar zu trennen sind: die **direkten CO2-Emissionen** (nur die vor Ort
verbrannten fossilen Energieträger, Gl. 52, BAFU-Faktoren Tab. 36: Heizöl 0,265, Erdgas inkl.
Biogas 0,203 kg/kWh) tragen eine **eigene A-G-Klassierung** nach Tab. 41, mit standortabhängiger
Temperaturkorrektur der Klassengrenzen (f_cor, Gl. 57, Kap. 7.3.4, S. 67; Klassenlogik im
Bestandsdestillat [[geak-klassengrenzen-relative-klassierung]]). Die **Treibhausgasemissionen
THGE** (inklusive vorgelagerter Kette, Gl. 53, KBOB-Faktoren Tab. 37) sind dagegen ohne
Klassenwirkung: «Der Wert ist informativ» (S. 62). Für Fernwärme wird ein angenommener
Wärmeerzeugermix (Öl/Gas/Holz/Grundwasserwärmepumpe/Kehrrichtverbrennung, gestaffelt nach
deklariertem Fossilanteil, Tab. 38, S. 63) unterstellt, aus dem die
**Treibhausgasemissionsfaktoren** der Fernwärme in Tab. 37 hergeleitet werden
(0,05 / 0,12 / 0,19 / 0,29 kg/kWh); in die direkten CO2-Emissionen nach Gl. 52 geht Fernwärme
dagegen nicht ein, Tab. 36 führt nur Heizöl extraleicht (0,265), Erdgas inkl. Biogas (0,203) und
Biogas als eigene Zeile (0,203) — also ausschliesslich die vor Ort verbrannten Brennstoffe.

### 14. Beurteilung Gebäudehülle: eigene, strengere Skala für Neubauten (Kap. 8.1, S. 68-69)

Unabhängig von der A-G-Etikette gibt es eine zweite Beurteilung anhand flächengemittelter
U-Werte über sieben Bauteilkategorien (Wand, Dach, Boden je gegen aussen und gegen unbeheizt,
dazu Fenster; S. 68), in Tab. 42/43 auf fünf Spalten verdichtet. Für Bestandsgebäude gilt
Tab. 42 mit vier Stufen (sehr gut / gut / mittelmässig / schlecht), für Neubauten (Baujahr
aktuelles Jahr bis minus drei Jahre) die strengere Tab. 43, die nur drei Stufen bis
«mittelmässig» führt — dieselbe Wand mit demselben U-Wert kann also je nach Baujahrs-Fenster
unterschiedlich beurteilt werden.

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
Energiebedarf vermuten lässt, eine Wärmepumpe profitiert vor allem über die geringe
Endenergie; der Faktor 0 in Tab. 11 ist dagegen kein zusätzlicher Bonus, sondern verhindert
eine Doppelzählung, weil der Strom für Umwälzpumpe und Hilfsaggregate bereits in der
eingegebenen JAZ steckt (Fussnote Tab. 11, S. 33) — eine schlecht angesetzte JAZ verschiebt
diesen Anteil also lautlos), der Lage der
Verteilleitungen (innerhalb der Hülle sind Verluste gratis, ausserhalb zählen sie voll),
der Speichergrösse und -lage, dem hydraulischen Abgleich (Tab. 3 vs. Tab. 4 unterscheiden
die mittlere Heizkreistemperatur je nach Auslegung und Überdimensionierung um 0 bis 16 K —
bei 90/70 und Dim 2 sind es 56 gegen 40 °C, bei der Auslegung 50/38 dagegen null), der Anzahl
Zimmer (Belegungsfaktor f_b),
der Geräteausstattung und -qualität sowie einer allfälligen PV-Anlage samt
Eigenverbrauchsrate. **Was die Klasse aussagt:** eine relative Einordnung zum eigenen,
individuell berechneten Referenzgebäude (siehe Bestandsdestillat) plus einer Systemwahl-Gewichtung nach Tab. 35, in
der Strom sowohl im Bedarf als auch in der Produktion mit dem Faktor 2 eingeht, während
Heizöl, Erdgas, Kohle und Briketts mit 1 und Holz mit 0,5 gewichtet werden. Die Normierung
nennt diese Faktoren ohne eigene Begründung und verweist auf die nationalen
Gewichtungsfaktoren der EnDK [18]; welches energiepolitische Ziel dahintersteht, ist der Norm
selbst nicht zu entnehmen und wird hier bewusst nicht interpretiert. **Was sie nicht aussagt:**
den absoluten Energieverbrauch in kWh oder den vollständigen CO2-Fussabdruck über die
vorgelagerte Kette (dafür die separate, nicht klassierte THGE-Kennzahl; die vor Ort
emittierten direkten CO2-Emissionen tragen dagegen eine eigene A-G-Skala) oder die
Behaglichkeit/den baulichen Zustand im Detail (dafür die separate Beurteilung von
Gebäudehülle und Gebäudetechnik nach Kap. 8).

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

Nicht destilliert, obwohl gelesen: Kap. 3.6 (Zuordnung der Speicherverluste auf
Wärmeerzeuger, S. 20-22, Gl. 9-12), Kap. 6.2.5 (Weitere Verbraucher WVA, S. 49, mit der
Abgrenzung gebäudezugehörig / nicht gebäudezugehörig) und die Biogas-Sonderregelung in
Tab. 35/36. Ebenfalls nicht vertieft, weil reine Nachschlagelisten ohne eigenständige
Methodik-Aussage: Kap. 9
Literaturverzeichnis (S. 72-73, verweist u.a. auf SIA 380/1:2016, SIA 384/3:2013,
SIA 385/2:2015, SIA 380/4:2006, das GEAK-Anwenderhandbuch V5.1/Korrex 5.1.2 [8] und die
KBOB-Ökobilanzdaten 2009/1:2022 [17]) und Kap. 10 Symbol-/Einheitenverzeichnis (S. 74-79).
Wer eine der hier beschriebenen Formeln für eine eigene Nachrechnung exakt reproduzieren
will (z. B. Gl. 6-24 für Speicher-/Hilfsenergie), sollte die Originalgleichungen im PDF
nachschlagen — dieses Destillat gibt die Rechenlogik und die Bauherren-relevanten
Stellhebel wieder, ist aber keine vollständige, direkt programmierbare Formelsammlung.

**Backlinks:** [[geak-klassengrenzen-relative-klassierung]] · [[geak-gebaeudeenergieausweis-kantone]] ·
[[geak-kosten-efh-mfh]] · Themenartikel [[geak-gebaeudeenergieausweis]].

## Verifikation Run 125 (07.08.2026)

Zwei unabhängige Refuter haben dieses Destillat gegen das Original geprüft, mit
unterschiedlichem Schwerpunkt: der erste auf Zahlen und Fundstellen (10 Beanstandungen), der
zweite auf Aussagen und Zitattreue (19 Beanstandungen). Der Hauptlauf hat die tragenden Punkte
selbst am Original nachgeprüft (`pdftotext -layout`) und oben korrigiert — insbesondere die
fälschliche Einordnung der direkten CO2-Emissionen als «nicht klassenwirksam» (Punkt 13), die
Vermischung der Verteilverlust-Regeln von Heizung und Warmwasser (Punkt 3), die Zuschreibung
des Faktors 2/3 an die gesamte Warmwasser-Rückgewinnung statt an das Heizband (Punkt 5), den
auf beide Energieträger angewendeten Überdimensionierungs-Malus (Punkt 6), die Deutung des
Hilfsenergie-Faktors 0 als Wärmepumpen-Bonus (Bauherren-Transfer) und die erfundene
Motivzuschreibung zur Strom-Gewichtung (Bauherren-Transfer). Der Status blieb zunächst `emerging`:
established war erst nach einer erneuten Prüfung der korrigierten Fassung vertretbar.

## Verifikation Run 126 (11.08.2026) — Hebung auf `established`

Die verlangte zweite Runde ist gelaufen (QUESTIONS E-125-1 damit geschlossen). Zwei unabhängige
Refuter im Hauptmodell haben **13 wörtlich aus dieser Datei zitierte** Aussagen gegen das
Original zu widerlegen versucht — bewusst wörtlich und nicht als Zusammenfassung, nach der
Lehre aus Run 121. Schwerpunkte getrennt: Refuter A auf die sechs in Run 125 korrigierten
Aussagen (dort ist das Risiko am grössten, dass eine Korrektur ins andere Extrem umschlägt),
Refuter B auf Zahlen, Tabellenwerte und Fundstellen.

**Ergebnis: 10 von 13 Aussagen unbeanstandet, 3 Beanstandungen geringer Tragweite, keine
tragende.** Keine einzige falsche Zahl und keine falsche Gleichungs- oder Tabellennummer; keine
der Run-125-Korrekturen ist ins Gegenteil umgekippt. Namentlich bestätigt wurden die
Gewichtungsfaktoren nach Tab. 35 (Elektrizität 2,0 in Bedarf **und** Produktion, als zwei
getrennte Zeilen), alle sieben E_el,ref-Werte aus Tab. 39, die Referenzwert-Rezeptur nach Gl. 54,
die Klammerstruktur der PV-Anrechnung nach Gl. 33, der Belegungsfaktor nach Gl. 36, die
Geräteklassen 70/120/230/280 kWh/a aus Tab. 19, die Speicherparameter c1/c2 und die dreistufige
Staffelung ≤ 400 / ≤ 2000 / > 2000 l, die Schwellen aus Tab. 44 sowie der Hilfsenergie-Faktor 0
für alle Wärmepumpen-Bauarten aus Tab. 11 samt Fussnote.

Die drei Beanstandungen wurden **vom Hauptlauf selbst am Original gegengeprüft** (Rule
`auto-verbesserungen` 260729b, per `pdftotext -layout` für S. 11/14/18/62 und per Seitenbild für
Tab. 35 auf S. 61) und oben eingearbeitet: (1) das zu absolute «nur» bei den
Warmwasser-Verteilverlusten — die Lage bestimmt über θ_U = 13/20 °C auch die **Höhe** der
Verluste; (2) die unvollständige Wiedergabe von Tab. 36, die eine eigene Zeile «Biogas 0,203»
führt; (3) die bei Gl. 9 zusammengezogene Fundstelle der Speicher-Mengengrenzen, die in Kap. 3.4
auf S. 11 stehen.

Zusätzlich sind drei **Prüffallen für künftige Läufe** dokumentiert, die dieser Lauf
aufgedeckt hat und die ohne Vermerk jeden nächsten Prüflauf in denselben Scheinbefund führen
würden: die **durchgestrichene «Biogas»-Angabe in Tab. 35**, die nur im Seitenbild sichtbar ist;
die **abweichende Δθ-Definition des Heizungsspeichers** (θ_HK,max + 5 K − θ_U) gegenüber den
Verteilleitungen; und der **Tippfehler des Originals** auf S. 65 und S. 66, das dort zweimal
«Gl. 53» schreibt, wo Gl. 54 gemeint ist (unabhängig belegt, im Fliesstext auf S. 67 zudem
«Gl. 56» statt Gl. 57 für f_cor). Dieses Destillat folgt jeweils der richtigen
Gleichungsnummer, nicht dem Tippfehler; das ist kein Fehler und darf nicht beanstandet werden.
