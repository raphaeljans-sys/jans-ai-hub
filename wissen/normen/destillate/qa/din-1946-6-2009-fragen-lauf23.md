---
quelle-destillat: "wissen/normen/destillate/din-1946-6-2009.md"
norm: "DIN 1946-6:2009-05 — Raumlufttechnik, Teil 6: Lüftung von Wohnungen"
anzahl-fragen: 20
methode: "Q&A-Selbstbefragung (Deepening-Stufe c) — jede Frage unabhängig durch Lektüre des Original-PDF beantwortet, danach mit dem Destillat abgeglichen"
datenstand: 2026-07-14
lauf: "Mini-Run 23"
status: "abgeschlossen — 20 Fragen geprüft, 0 Fehler im Destillat gefunden, 3 relevante Ergänzungen ins Destillat eingearbeitet (Tabelle 8, Extrapolationsregel Tabelle 5, Keimwachstum-Vermeidung); zusätzlich den offenen Punkt Anhang-H-Seitenumfang abschliessend geklärt"
links: [[din-1946-6-2009]]
---

# DIN 1946-6:2009-05 — Prüfungsfragen-Selbstbefragung (Mini-Run 23, 260714)

Ziel dieser Stufe: nach Mini-Run 16 (20 Fragen zu den Grundlagen, §§4-12, 0 Fehler) eine zweite,
tiefer gehende Fragerunde mit Fokus auf die Zahlentabellen (5-20) und die bislang weniger
geprüften Anhänge E-I (Instandhaltung, Gleichwertigkeit „E"-Kennzeichnung, Infiltrations-
Detailberechnung, Winddaten) — mit JANS-Fach-Skill-Relevanz (Energie/Bauphysik). Jede Antwort
wurde unabhängig direkt im Original-PDF (S. 27-61, S. 94-118) nachgelesen, nicht aus dem
Destillat abgeschrieben, und danach mit dem bestehenden Destillat verglichen.

**Ergebnis vorab:** Alle 20 Fragen bestätigen das Destillat inhaltlich — keine Fehler gefunden.
Drei relevante Lücken wurden entdeckt und direkt ins Destillat nachgetragen (Tabelle-8-Werte,
Extrapolationsregel für Nutzungseinheiten > 210 m², Keimwachstum-Vermeidung bei Luftfeuchte
> 90 % an Filtern/Schalldämpfern). Zusätzlich wurde der aus Mini-Run 12/13 offen gebliebene Punkt
zum Seitenumfang von Anhang H abschliessend geklärt (S. 109-114).

---

**Frage 1:** In welchem festen Zahlenverhältnis stehen Reduzierte Lüftung und Intensivlüftung zur
Nennlüftung nach Tabelle 5?

**Antwort:** q_v,ges,NE,IL = 1,3 · q_v,ges,NE,NL (Fussnote g). q_v,ges,NE,RL = 0,7 · q_v,ges,NE,NL
(Fussnote e), wobei eine Reduktion auf diesen Wert nur zulässig ist, wenn sie aufgrund der
Nutzung der Räume entsprechend begründet werden kann. Die Nennlüftung selbst folgt aus
q_v,ges,NE,NL = −0,001·A_NE² + 1,15·A_NE + 20 (Fussnote f). (Fundstelle: S. 31, Tabelle 5,
Fussnoten e/f/g)

Abgleich Destillat: deckungsgleich (Destillat nennt diese drei Formeln bereits identisch im
Tabelle-5-Absatz).

---

**Frage 2:** Wie wird Tabelle 5 für Nutzungseinheiten ausserhalb des tabellierten Bereichs 30-210 m²
angewendet?

**Antwort:** Bei Nutzungsflächen A_NE kleiner 30 m² wird für die Ermittlung der
Gesamt-Aussenluftvolumenströme A = 30 m² angesetzt. Bei Nutzungsflächen grösser 210 m² (je
Wohnung bzw. Nutzungseinheit) sind die Aussenluftvolumenströme in geeigneter Weise (z. B. mit
der Gleichung nach Tabelle 5, Fussnote f) an die geplante Nutzung (Belegungsdichte) anzupassen;
liegen keine genauen Angaben vor, sind die Tabellenwerte zu extrapolieren. Zwischenwerte
innerhalb 30-210 m² können linear interpoliert oder mit den Berechnungsgleichungen ermittelt
werden. (Fundstelle: S. 30, Ziff. 6.1.4)

Abgleich Destillat: **Lücke gefunden und ergänzt** — das Destillat nannte bisher nur die
Interpolation zwischen 30-210 m² und die Untergrenze (A<30m²→A=30m²), nicht aber die
Extrapolationsregel für A>210 m². Ergänzt im Tabelle-5-Absatz mit Fundstelle Ziff. 6.1.4, S. 30.

---

**Frage 3:** Welche Mindest-Aussenluftvolumenströme gelten nach Tabelle 6 für Ab- und Zulufträume
bei freier Lüftung (Feuchteschutz)?

**Antwort:** Abluftraum (Küche/Kochnische, Bad mit/ohne WC, Duschraum, WC, Hausarbeitsraum,
Kellerraum z. B. Hobbyraum): 10 m³/h bei Wärmeschutz hoch, 15 m³/h bei Wärmeschutz gering.
Zuluftraum (Arbeitszimmer, Gästezimmer, Wohnzimmer, Esszimmer, Kinderzimmer, Schlafzimmer):
15 m³/h bei Wärmeschutz hoch, 20 m³/h bei Wärmeschutz gering. Kellerräume gelten nur innerhalb
der thermischen Hülle; Räume mit erhöhten Feuchte-/Stofflasten sind gesondert zu behandeln.
(Fundstelle: S. 32, Tabelle 6)

Abgleich Destillat: deckungsgleich.

---

**Frage 4:** Welche Abluftvolumenströme gelten nach Tabelle 7 für die ventilatorgestützte
Nennlüftung, und welche Sonderregel gilt für fensterlose Küchen?

**Antwort:** Nennlüftung: Küche/Kochnische sowie Bad mit/ohne WC und Duschraum je 45 m³/h;
Hausarbeitsraum, Kellerraum (z. B. Hobbyraum), WC je 25 m³/h (Fussnote d: bei Bedarf kann auch
der Flur mit 25 m³/h geplant werden); Sauna-/Fitnessraum 100 m³/h (bzw. entsprechend dem zu
erwartenden Feuchtelastanfall, Fussnote e). Sonderregel: die Bauaufsichtliche Richtlinie (BRL)
verlangt für die Intensivlüftung fensterloser Küchen 200 m³/h (Fussnote c) — deutlich mehr als
die tabellierte Nennlüftung von 45 m³/h. (Fundstelle: S. 33, Tabelle 7 inkl. Fussnoten)

Abgleich Destillat: deckungsgleich.

---

**Frage 5:** Welche Werte nimmt der Korrekturfaktor f_wirk,Komp nach Tabelle 8 (§6.2) für die
verschiedenen Lüftungssysteme an, und wie verhält er sich zur vereinfachten Annahme
f_wirk,Komp = 0,5 aus §4.2.3?

**Antwort:** Tabelle 8 (S. 35) liefert differenzierte Werte: freie Lüftung — Querlüftung (ohne
Lüftungsschacht) 0,5, Schachtlüftung (einschliesslich Querlüftung) 0,6. Ventilatorgestützte
Lüftung — Zu-/Abluft-System (ausgeglichen): ÜLD und Ventilator je 0,45 (ALD/Schacht nicht
zutreffend); Abluft-System oder Zuluft-System: ALD bei eingeschossigen Nutzungseinheiten 0,65
(mit Installationsschacht) bzw. 0,7 (ohne), bei mehrgeschossigen Nutzungseinheiten (typisch EFH)
0,8; ÜLD durchgehend 0,15; Ventilator 0,15 (eingeschossig) bzw. 0,2 (mehrgeschossig). Der Wert
0,5 aus §4.2.3/§6.2 (Notwendigkeitsprüfung) entspricht exakt dem Tabelle-8-Wert für
„Querlüftung (ohne Lüftungsschacht)" — er ist also kein eigenständiger Vereinfachungswert,
sondern schlicht einer der Tabelle-8-Standardwerte, angewendet für den ungünstigsten
Regelfall der Notwendigkeitsprüfung. (Fundstelle: S. 17 f. § 4.2.3; S. 35, Tabelle 8)

Abgleich Destillat: **Lücke gefunden und ergänzt** — die Tabelle-8-Werte selbst waren im
Destillat bisher nicht abgebildet (nur die davon abgeleitete Zerlegung in Anhang I,
Tabellen I.1/I.2). Als neuer Bulletpunkt nach Tabelle 7 ergänzt, inkl. Konsistenzprobe gegen
Anhang I (f_Sys × f_inf ≈ Tabelle-8-Wert, keine Diskrepanz).

---

**Frage 6:** Wie unterscheidet sich die Bemessung von Überström-Luftdurchlässen (ÜLD) bei freier
gegenüber ventilatorgestützter Lüftung, und welche Flächen ergeben sich beispielhaft bei
50 m³/h?

**Antwort:** Bei freier Lüftung (Tabelle 12/13, Gl. 19) gilt f_ÜLD = 3,1, Δp_ÜLD ≤ 0,5 Pa (bis
1,0 Pa erhöhbar), k_Dichtung 25 cm² (Tür ohne Dichtung) bzw. 0 cm² (mit Dichtung); bei 50 m³/h
resultieren rund 219 cm² (mit Dichtung) bzw. 194 cm² (ohne). Bei ventilatorgestützter Lüftung
(Tabelle 17/18, Gl. 24) gilt derselbe f_ÜLD = 3,1, aber ein höherer zulässiger Druckabfall
Δp_ÜLD ≤ 1,5 Pa (statt 0,5 Pa); bei 50 m³/h resultieren dadurch nur rund 125 cm² (mit Dichtung)
bzw. 100 cm² (ohne) — deutlich kleinere ÜLD-Flächen, weil der höhere zulässige Differenzdruck
kleinere Öffnungen für denselben Volumenstrom erlaubt. (Fundstelle: S. 41 f., Tabelle 12/13;
S. 47 f., Tabelle 17/18)

Abgleich Destillat: deckungsgleich (beide Tabellen-Beispielwerte sind im Destillat bereits
korrekt mit demselben Kontrast „deutlich weniger... wegen höherem zulässigem Δp" ausgewiesen).

---

**Frage 7:** Welche Mindestquerschnitte gelten für Abluftdurchlässe (AbLD/FLD), und was gilt bei
feuchtegeführten Ausführungen?

**Antwort:** Abluftdurchlässe müssen einen lichten Querschnitt von mindestens 150 cm² besitzen
und möglichst nahe unter der Zimmerdecke angeordnet sein. Bei feuchtegeführten AbLD muss dieser
geforderte freie Querschnitt im Bereich von ≥ 70 % relativer Luftfeuchte sichergestellt sein
(die Öffnung vergrössert sich also automatisch, sobald die Raumluftfeuchte 70 % erreicht oder
überschreitet). (Fundstelle: S. 42, Ziff. 7.2.4)

Abgleich Destillat: deckungsgleich.

---

**Frage 8:** Welche Nennweiten und Luftgeschwindigkeiten legt Bild 3 für die überschlägige
Luftleitungsauslegung zugrunde?

**Antwort:** Bild 3 stellt die Luftgeschwindigkeit (Y-Achse, m/s) über dem Luftvolumenstrom
(X-Achse, m³/h) für vier Nennweiten dar: DN 100 mm (bis rund 85-90 m³/h, max. Geschwindigkeit
ca. 3,01 m/s am oberen Rand des Bereichs), DN 125 mm (bis rund 130-135 m³/h, ca. 3,06 m/s),
DN 160 mm (bis rund 195-200 m³/h, ca. 2,76 m/s) und DN 200 mm (bis 300 m³/h, ca. 2,65 m/s). Die
Auslegung muss für die Nennlüftung erfolgen, bei Sammelleitungen zusätzlich für die
Intensivlüftung; für die „E"-Kennzeichnung ist zusätzlich Tabelle 19 (max. Luftgeschwindigkeiten)
einzuhalten. (Fundstelle: S. 48 f., Bild 3, Ziff. 8.2.6)

Abgleich Destillat: deckungsgleich (Destillat nennt bereits dieselben vier Nennweiten DN
100/125/160/200 mm und den Verweis auf Tabelle 19).

---

**Frage 9:** Welche technischen Grenzwerte gelten für einen Erdreich-Luft-Wärmeübertrager
(E-WÜT)?

**Antwort:** Die Luftgeschwindigkeit im E-WÜT sollte 3,0 m/s nicht überschreiten. Wegen
möglicher Taupunktunterschreitung ist mit einem Gefälle von mindestens 1 % in Strömungsrichtung
zu verlegen, damit kein Kondensat dauerhaft im Wärmeübertrager verbleibt. Über eine
Umschaltklappe dürfen höchstens 80 % des angesaugten Luftvolumenstromes aus der Umgebung
angesaugt werden. Die Verlegung im Erdreich muss mit glattwandigen, luft- und wasserdichten
Rohren in mindestens frostfreier Tiefe erfolgen, mit ausreichendem Abstand zu anderen Bauteilen
(Wasserleitungen, Fundamente). Bei Sommerbetrieb ist sicherzustellen, dass am nachgeschalteten
Luftfilter keine länger andauernde relative Luftfeuchte ≥ 90 % auftritt. Die Luftansaugöffnung
ist witterungsgeschützt anzuordnen und mindestens mit einem engmaschigen Insektenschutzgitter zu
versehen. Angaben zur Auslegung/Ausführung des E-WÜT selbst sind nicht Gegenstand dieser Norm.
(Fundstelle: S. 57, Ziff. 9.2.5.8)

Abgleich Destillat: deckungsgleich.

---

**Frage 10:** Wie ist die Gleichwertigkeitsformel (GLW) für die „E"-Kennzeichnung von
Zu-/Abluftanlagen mit Wärmeübertrager (Anhang G) aufgebaut, und mit welchem Rechenbeispiel wird
sie illustriert?

**Antwort:** Die Bewertung erfolgt über eine primärenergetisch gewichtete, volumenstromspezifische
Leistung q̇ = q̇_L,Vent (lüftungstechnische Massnahmen) + q̇_L,Inf+Fe (Infiltration/Fensterlüftung)
+ q̇_Hilfsenergie (Ventilatorleistung), vereinfacht zusammengefasst in Gleichung G.6:
GLW = 1000 / (0,11 · (q_V,LtM/q_V,LtM,100) / (A_Vent/A_NE) · (1 − η'_WÜT/100 − 100/(q_V,LtM/
q_V,LtM,100) + 0,45 · P_el,Vent) + 1660) ≥ 1. Referenzsystem: Wärmebereitstellungsgrad
η'_WÜT,Referenz = 80 %, Leistungsaufnahme Ventilatoren P_el,Vent,Referenz = 0,45 W/(m³·h⁻¹), ohne
Bedarfsführung, komplett ventilatorgestützt gelüftete Nutzungseinheit (q_V,LtM/q_V,LtM,100 = 100 %,
A_Vent/A_NE = 100 %). Rechenbeispiel (S. 106 f.) mit Bedarfsführung/Zonenregelung (85 %
mittlerer Luftvolumenstrom) und komplett gelüfteter Nutzungseinheit: Variante A (η'_WÜT fix
80 %) → zulässige Ventilatorleistung P_el,Vent ≤ 0,61 W/(m³·h⁻¹); Variante B (P_el,Vent fix
0,45 W/(m³·h⁻¹)) → erforderlicher Wärmebereitstellungsgrad η'_WÜT ≥ 73 %. (Fundstelle: S. 102-108,
Anhang G, Gleichungen G.1-G.6)

Abgleich Destillat: deckungsgleich.

---

**Frage 11:** Welche Instandhaltungsintervalle schreibt der normative Anhang E für freie und
ventilatorgestützte Lüftung vor?

**Antwort:** Lüftung zum Feuchteschutz: zweijährliche Augenscheinlichkeits-/Funktionskontrolle
der Dichtheit der Gebäudehülle und des Zustands der ALD, sowohl bei freier (Tabelle E.1) als
auch bei ventilatorgestützter Lüftung (Tabelle E.2); bei ventilatorgestützter Lüftung zusätzlich
halbjährliche Kontrolle der Luftfilter (regelmässige Reinigung bzw. Wechsel). Für die
Einhaltung besonderer Eigenschaften: Raumluftqualität/„H"-Erhalt (Tabelle E.3) und
Energieeffizienz/„E"-Erhalt (Tabelle E.4) sind ebenfalls **zweijährlich** zu prüfen (Zustand von
Oberflächen/Dichtungen, Lüftungskomponenten, Ventilatoren, Kondensatablauf; bei „E" zusätzlich
Frostschutz, Wärmedämmung, elektrische Leistungsaufnahme, Luftvolumenströme, Wärmeübertrager,
Regelung). (Fundstelle: S. 94-96, Anhang E, Tabellen E.1-E.4)

Abgleich Destillat: deckungsgleich.

---

**Frage 12:** Welche zusätzlichen, optionalen Funktionsnachweise sieht der informative Anhang F
vor, und in welchem Rhythmus?

**Antwort:** Nach Vereinbarung zwischen Auftragnehmer und Auftraggeber zusätzlich zu Anhang E:
**jährliche** Augenscheinlichkeits-/Funktionskontrollen für Abluftsysteme (Tabelle F.1:
Ventilator/Lüftungsgerät, Kondensatablauf/Siphon, Elektrotechnik/Regelung, Luftleitung/
Wärmedämmung, ALD, ÜLD, Luftfilter), Zuluftsysteme (Tabelle F.2: zusätzlich
Sicherheitsprüfung nach DIN EN 60335-2-31/VDE 0700-31, Frostschutz-/Taueinrichtung,
Körperschallentkopplung, Vorwärmer/Verdampfer) und Zu-/Abluftsysteme (Tabelle F.3: zusätzlich
Erdreich-Luft-Wärmeübertrager, Sicherheitseinrichtung mit Feuerstätte). Die Einregulierung der
Luftvolumenströme (Tabellen F.4-F.7) erfolgt **nach Bedarf, mindestens alle 6 Monate**, mit
Sollwerten nach der erweiterten Tabelle F.8 (inkl. Hausarbeitsraum, WC, Gästezimmer — ein
feineres Raster als die entsprechende Protokollvorlage Tabelle D.13 in Anhang D). Temperatur-
messungen (F.3.2.5) sind reine Protokollvorlage ohne Normwerte. (Fundstelle: S. 97-101,
Anhang F)

Abgleich Destillat: deckungsgleich.

---

**Frage 13:** Enthält DIN 1946-6 einen inneren Widerspruch bei der Definition von „windstark"/
„windschwach" in Anhang H, und wie weit reicht die dortige Landkreisliste?

**Antwort:** Ja. Die Legende zu Bild H.1 (S. 109) definiert „windstark" (dunkelgrün) als
mittlere Windgeschwindigkeit im Jahr **≤ 3,30 m/s** und „windschwach" (hellgrün) als **> 3,30
m/s**. Die Bildunterschrift von Tabelle H.1 (S. 110) definiert dagegen „windstark" umgekehrt als
**> 3,30 m/s** (nicht genannte Kreise gelten als windschwach) — ein Widerspruch im
Originaldokument selbst, der beim Volltextabgleich in diesem Lauf erneut bestätigt wurde. Die
namentliche Landkreisliste (Tabelle H.1, Datengrundlage Deutscher Wetterdienst 2008) läuft
alphabetisch von Aachen bis Wunsiedel i. Fichtelgebirge über die Seiten 110-114; Anhang H endet
damit auf S. 114, Anhang I beginnt auf S. 115. Die Karte deckt ausschliesslich deutsche
Landkreise ab und hat kein direktes Pendant für JANS-Projekte in der Schweiz. (Fundstelle:
S. 109-114, Anhang H)

Abgleich Destillat: deckungsgleich; der offene Punkt zum Seitenumfang von Anhang H (zuvor «S.
110 hinaus... nicht verifiziert») wurde mit dieser Antwort abschliessend geklärt und im
Destillat als erledigt markiert.

---

**Frage 14:** Welche Korrekturfaktoren f_Sys und f_inf legt Anhang I für die detaillierte
Infiltrationsberechnung fest?

**Antwort:** f_wirk,Komp = f_Sys · f_inf (Gleichung I.1). Tabelle I.1 (f_Sys): Querlüftung ohne
Lüftungsschacht 0,5; Schachtlüftung einschliesslich Querlüftung 0,7; Zu-/Abluft-System
(ausgeglichen) 0,5; Abluftsystem oder Zuluftsystem bei eingeschossigen Nutzungseinheiten 0,8
(mit Installationsschacht) bzw. 0,9 (ohne), bei mehrgeschossigen Nutzungseinheiten (typisch EFH)
1,0 — diese Werte gelten nur für Nutzungseinheiten mit mehr als einer dem Wind ausgesetzten
Fassade; bei nur einer windexponierten Fassade werden die Tabellenwerte halbiert. Tabelle I.2
(f_inf je Lüftungskomponente): ALD 1,0 (Querlüftung)/0,9 (Schacht)/0,8 (Abluft-/Zuluftsystem);
ÜLD 0,3 (Querlüftung)/0,2 (Schacht)/0,9 (Zu-/Abluft ausgeglichen)/0,15 (Abluft-/Zuluftsystem);
Lüftungsschacht 0,5 (nur bei Schachtlüftung); Ventilator/Lüftungsgerät 0,9 (Zu-/Abluft
ausgeglichen)/0,2 (Abluft-/Zuluftsystem). (Fundstelle: S. 115-117, Anhang I, Tabellen I.1/I.2)

Abgleich Destillat: deckungsgleich.

---

**Frage 15:** Welche Höhen- und Abschirmungs-Korrekturfaktoren gelten nach Anhang I, und wo
findet sich dabei eine weitere interne Inkonsistenz der Norm?

**Antwort:** Höhen-Korrekturfaktor ε_H (Tabelle I.3, nach DIN EN 12831): 1,0 bei Gebäudehöhe
H_G ≤ 15 m (entspricht ≤ 4 Vollgeschosse), 1,8 bei 15 m < H_G ≤ 50 m, 2,8 bei H_G > 50 m.
Abschirmungs-Korrekturfaktor ε_A (Tabelle I.4, nach DIN EN 13465/15242): offene Lage 1,7
(eingeschossige NE)/1,3 (mehrgeschossige NE); normale Lage 1,0 (beide); geschützte Lage 0,5/0,7.
f_wirk,Lage = ε_H · ε_A (Gleichung I.2). Die interne Inkonsistenz: der Fliesstext auf S. 116
(Ziff. I.1.2) sagt, für Gebäude bis zu einer Höhe von **10 m** (höchstens 4 Geschosse) könne
ε_H = 1 gesetzt werden, während Tabelle I.3 dieselbe Vereinfachung für Gebäude bis **15 m**
(ebenfalls „≤ 4 Vollgeschosse") ausweist — zwei unterschiedliche Höhenangaben für denselben
„4-Geschosse"-Grenzfall. Diese Inkonsistenz steht so im Original und wird im Destillat
unaufgelöst dokumentiert. (Fundstelle: S. 116, Ziff. I.1.2 + Tabelle I.3)

Abgleich Destillat: deckungsgleich (der Widerspruch ist bereits im Destillat vermerkt; dieser
Lauf bestätigt ihn unabhängig durch erneute Lektüre beider Fundstellen).

---

**Frage 16:** Welche Anforderungen an Luftgeschwindigkeit (Tabelle 19) und Wärmedämmung
(Tabelle 20) gelten für die „E"-/„H"-Kennzeichnung von Luftleitungen?

**Antwort:** Tabelle 19: zulässige Luftgeschwindigkeit im Leitungsnetz — Sammelleitungen für
Lüftungsanlagen in Ein- und Mehrfamilienhäusern ≤ 5 m/s, sonstige Leitungen ≤ 3 m/s. Tabelle 20
(Wärmedämmung mit WLS 045, gestaffelt nach Luftart/-temperatur und Verlegelage): z. B. Zuluft
mit WRG (≤20 °C) innerhalb der thermischen Hülle benötigt keine Dämmung (0 mm), Zuluft mit
Lufterheizung (>40 °C) ausserhalb der Hülle (<10 °C) verlangt mindestens 60 mm, „verbessert"
80 mm (oder alternativ keine Luftleitungen in diesem Bereich). Für Anlagen mit „E"- und
„H"-Kennzeichnung gilt zusätzlich für Luftleitungen die Dichtheitsklasse B nach DIN EN 12237
(strenger als die Standard-Mindestanforderung Klasse A). (Fundstelle: S. 61, Tabellen 19/20;
S. 55 f., Ziff. 9.2.5.2)

Abgleich Destillat: deckungsgleich.

---

**Frage 17:** Wie ist der spezifische Elektroenergiebedarf eines Lüftungsgerätes (P_SPI/P_SFP)
nach §9.2.7.2 definiert?

**Antwort:** P_SPI = P_E / q_v (Gleichung 26) — die volumenstrombezogene effektive
Leistungsaufnahme des/der Ventilators/en, wobei P_E die effektive Gesamtleistungsaufnahme des
Lüftungsgerätes (Ventilatoren, Verdichter/Abtauen ohne Zusatzheizgeräte, Regel-/Sicherheits-
einrichtungen) und q_v der Luftvolumenstrom des Gerätes ist. Ist P_E nicht vollständig bekannt,
lässt sich die Standby-Leistungsaufnahme über P_standby = P_E − P_E,V − P_E,WP − P_el,V
(Gleichung 27) rückrechnen. Bei bekannten Motorleistungen gilt P_el,V = P_V,ab + P_V,zu =
(q_v·Δp_F/η_ges)_ab + (q_v·Δp_F/η_ges)_zu (Gleichung 28). Die für die Bewertung eingeführte
spezifische Ventilatorleistung SPI (auch P_SFP) wird nach Gleichung 29 aus den Eingangs-
leistungen der Zu-/Abluftventilatoren, den durchgesetzten Nenn-Volumenströmen und dem
Gesamtförderdruck/-wirkungsgrad ermittelt. Optimierungshebel: EC- statt AC-Antriebe, geringe
Standby-Verluste, kurze Leitungswege, wenig Formstücke, niedrige Luftgeschwindigkeiten,
Wärmedämmung nach Tabelle 20. (Fundstelle: S. 59 f., Ziff. 9.2.7.2, Gleichungen 26-29)

Abgleich Destillat: deckungsgleich (Destillat nennt bereits Gleichung 26/P_SPI; die weiteren
Gleichungen 27-29 sind im Original vorhanden, aber im Destillat nur pauschal als
„Optimierung über EC-Antriebe..." zusammengefasst — keine sachliche Abweichung, nur ein
geringerer Detaillierungsgrad, kein Korrekturbedarf).

---

**Frage 18:** Unterscheiden sich die Soll-Raster für die Luftvolumenstrom-Protokollierung in
Anhang D (Tabelle D.13) und Anhang F (Tabelle F.8)?

**Antwort:** Ja. Tabelle D.13 (Anhang D, S. 93) listet abluftseitig nur Küche/Kochnische, Bad mit
WC, Bad ohne WC, Duschraum, Sauna-/Fitnessraum (plus Summe WE) und zuluftseitig nur Wohn-, Ess-,
Schlaf-, Kinder-, Arbeitszimmer (plus Summe WE). Tabelle F.8 (Anhang F, S. 101) ist feiner
gerastert: abluftseitig zusätzlich Hausarbeitsraum und WC, zuluftseitig zusätzlich Gästezimmer.
Beide Tabellen sind reine Soll-/Ist-Protokollvorlagen ohne eigene Normwerte (die Sollwerte
werden aus DIN 1946-6 oder individuellen Planungswerten übernommen). (Fundstelle: S. 93,
Tabelle D.13; S. 101, Tabelle F.8)

Abgleich Destillat: deckungsgleich (Destillat beschreibt Tabelle F.8 bereits explizit als
„erweitertes Raster inkl. Hausarbeitsraum/WC/Gästezimmer" gegenüber Tabelle D.13).

---

**Frage 19:** Was regelt Tabelle 10 zum Auslegungs-Differenzdruck, und wie unterscheiden sich
freie und ventilatorgestützte Systeme?

**Antwort:** Für freie Lüftung: Querlüftung 2 Pa (windschwach, eingeschossige NE) / 5 Pa
(windschwach, mehrgeschossige NE), 4 Pa (windstark, eingeschossig) / 7 Pa (windstark,
mehrgeschossig); Schachtlüftung 5 Pa (windschwach) / 8 Pa (windstark), jeweils unabhängig von
Geschossigkeit. Für ventilatorgestützte Lüftung: Abluftsystem einheitlich 8 Pa (Fussnote f: darf
nicht grösser gewählt werden, um Strömungsgeräusche/unzulässige Türkräfte zu vermeiden; bei
raumluftabhängigen Feuerstätten dürfen 4 Pa nicht überschritten werden); Zuluftsystem einheitlich
4 Pa; Zu-/Abluftsystem 2 Pa (windschwach) / 4 Pa (windstark). Die Werte berücksichtigen einen
Zuschlag von 8 % über dem Jahresmittel für die schimmelpilzkritische Zeit sowie bei
mehrgeschossigen Nutzungseinheiten den zusätzlichen thermischen Auftrieb. (Fundstelle: S. 37,
Tabelle 10)

Abgleich Destillat: deckungsgleich.

---

**Frage 20:** Welche Auslegungsregel gilt für Einzelraum-Lüftungsgeräte mit Zu- und Abluft nach
Gleichung 23, und was gilt für angrenzende Nebenräume?

**Antwort:** q_v,LtM,vg,R = f_R,EG · 0,5 · (A_Raum + 10) (Gleichung 23), zulässig, wenn das Gerät
nicht mehr als 1/3 der gesamten Nutzfläche der Nutzungseinheit belüftet; bei Räumen mit einer
Fläche A_Raum < 10 m² wird A_Raum = 10 m² gesetzt. Ein wirksamer Luftvolumenstrom durch
Infiltration wird bei diesen Geräten nicht angerechnet, da bei punktuellem Einsatz in
ausgewählten Räumen die dort wirksame Infiltration (anteilig an der Gebäudeinfiltration) nicht
bekannt ist. Faktor f_R,EG nach Tabelle 15: Reduzierte Lüftung ca. 2 (±0,5), Nennlüftung ca. 3
(±0,5), Intensivlüftung ca. 5 (±1,0). Sollen mit Einzelraum-Lüftungsgeräten auch angrenzende
Nebenräume (z. B. Dielen) mitgelüftet werden, sind die Luftvolumenströme entsprechend höher
anzusetzen. Werden alle Wohn- und Aufenthaltsräume einer Nutzungseinheit so ausgerüstet, kann
damit auch die Pflicht zur gleichwertigen Lüftung der gesamten Nutzungseinheit erfüllt werden;
verbleibende fensterlose Räume benötigen dann ein separates ventilatorgestütztes Abluftsystem
z. B. nach DIN 18017-3. (Fundstelle: S. 45 f., Ziff. 8.1.5.3, Gleichung 23, Tabelle 15)

Abgleich Destillat: deckungsgleich.

---

## Fazit dieser Selbstbefragung

Alle 20 Prüfungsfragen wurden unabhängig im Original-PDF verifiziert (Fundstellen S. 27-61,
S. 94-118). Es wurden **keine Fehler**, aber **drei relevante Ergänzungen** gefunden und direkt
ins Destillat `din-1946-6-2009.md` nachgetragen:

1. Extrapolationsregel für Nutzungseinheiten > 210 m² (Tabelle 5, Ziff. 6.1.4, S. 30).
2. Die bislang fehlenden Tabelle-8-Werte des Korrekturfaktors f_wirk,Komp (S. 35), inkl.
   Konsistenzprobe gegen die Zerlegung f_Sys·f_inf in Anhang I.
3. Keimwachstum-Vermeidung bei Luftfeuchte > 90 % an Filtern/Schalldämpfern/E-WÜT
   (Ziff. 9.2.5.4/9.2.5.9, S. 56/58).

Zusätzlich wurde der aus Mini-Run 12/13 offen gebliebene Punkt zum Seitenumfang von Anhang H
abschliessend geklärt: Anhang H umfasst S. 109-114 (Bild H.1 + Tabelle H.1, alphabetisch bis
Wunsiedel i. Fichtelgebirge), Anhang I beginnt S. 115. Der bereits dokumentierte
Original-interne Widerspruch bei der Windstark/-schwach-Definition wurde beim selben Durchgang
erneut bestätigt (keine Auflösung möglich/nötig, steht so im Original).

Damit ist das Destillat nach drei unabhängigen Prüfrunden (Mini-Run 13 Volltext-Retro-
Verifikation, Mini-Run 16 und Mini-Run 23 Q&A-Selbstbefragung) durchgängig bestätigt und um die
verbliebenen Zahlentabellen-Lücken ergänzt.
