---
title: Qualitaets-Audit der KB Energie — 47 belegte Befunde, vier Fehlerklassen, ein neuer Loop
datum: 2026-08-23
lauf: Multiagenten-Audit (13 Agenten, 6 Pruefdimensionen mit adversarialer Gegenpruefung)
station: Mac Mini / Claude Code
status: Arbeitspapier zur Abarbeitung
---

> **Herkunft und Verlaesslichkeit dieses Papiers.** Erzeugt am 23.08.2026 durch einen
> Multiagenten-Lauf: sechs Pruefdimensionen (Rechenpruefung, Statuskette, Aktualitaet,
> Widersprueche, Begriffsdisziplin, Belegkante) haben die KB **lesend** durchsucht, jeder
> Befund wurde anschliessend von einem eigenen Gegenpruefer am Original zu **widerlegen**
> versucht. Von 49 Befunden halten 47 stand, 2 wurden widerlegt. Abschnitt 06 fuehrt
> zusaetzlich elf gepruefte und entkraeftete Vorwuerfe — sie sind **nicht** erneut aufzunehmen.
> Die Befunde sind KB-intern belegt; **keine Dimension hat eine Originalquelle geoeffnet**
> (siehe die Blindstelle am Ende von Abschnitt 05).

# Arbeitspapier: Audit der Energie-Wissensbasis, 23.08.2026

Anlass sind zwei Zufallsfunde desselben Tages: eine Anbieter-Kennzahl, die als Autarkie gefuehrt wurde, und eine Foerder-Antwort, die per Web-Recherche entstand, obwohl ein established-Destillat danebenlag. Sechs Pruefdimensionen haben die KB daraufhin systematisch durchsucht, jeder Befund wurde adversarial gegengeprueft.

Ergebnis in fuenf Saetzen. Die Arithmetik der KB ist gesund: alle 18 nachgerechneten PV-Werte, alle 14 Foerder-Rechenbeispiele, die MJ-Umrechnungen und die Anteilssummen stimmen. Falsch wird es an zwei anderen Stellen, naemlich bei der **Bezugsgroesse** einer richtig gerechneten Zahl und bei der **Weitergabe** eines bereits erkannten Vorbehalts vom Destillat ins Bauherren-Erzeugnis. Drei Befunde sind P1, achtzehn P2, siebzehn P3. Kein einziger Befund stammt aus einer externen Quelle, alle sind KB-intern belegt, das heisst die KB widerspricht sich selbst. Der teuerste Fund betrifft ein zweimal verifiziertes established-Destillat, dessen Rechenbeispiel seit 2023 durch die falsche Flaeche dividiert.

---

## 01 Sofort zu korrigieren (P1)

### 01.1 THGE-Grenzwert Minergie: falsche Bezugsflaeche, 25 Prozent zu tief

Dieser Punkt fasst zwei Befunde zusammen (falscher Nenner und ueberholter Reglementsstand) und ist **in einem Zug** zu korrigieren, sonst widersprechen sich die beiden Korrekturen.

Stellen: `wissen/energie/destillate/minergie-nachweiskurs-2023-mkz-thge.md` Z. 49 (Tabellenkopf), Z. 68 (Rechenbeispiel), Z. 146 und 147 (Verifikations-Update); `wiki/BAUHERREN-FAQ.md` Z. 163 und Z. 477; `wiki/graue-energie.md` Z. 46 bis 53; `wiki/INDEX.md` Z. 41.

Was die Bauherrschaft falsch erfaehrt: einen um 25 Prozent zu strengen THGE-Zielwert, zusaetzlich auf dem Stand 2023 statt 2026.1. Fuer ein Spital nennt die KB 17, geltend ist GW_EBF 18,5 und ein Objektwert von rund 19,9 kg CO2-eq je m2 EBF und Jahr. Der Zielwert steuert Tragwerk, Untergeschoss und Materialkonzept, also genau die frueh gefaellten und teuren Entscheide.

Nachweis, welche Seite recht hat: `destillate/minergie-produktreglement-2026-1-muken-vergleich.md` Z. 201 bis 202 gibt Anhang G im Volltext wieder, der Nenner ist EBF. Die Formel in Z. 68 ist richtig, das Rechenbeispiel dahinter dividiert durch GF.

Korrektur, Destillat Z. 68: «Rechenbeispiel MFH bei EBF/GF = 80 %: (12,4·EBF + 5,5·0,25·EBF)/EBF = 13,8 kg CO2-eq/(m2 EBF·a). ⚠ Korrektur 23.08.2026: die frueher hier stehende Rechnung 12,4·80 % + 5,5·20 % = 11 kg dividiert durch GF statt durch EBF und liefert einen um 25 % zu tiefen Wert.»

Korrektur, Destillat Z. 49 (Tabellenkopf): «GF-gewichtetes Mittel bei EBF/GF = 80 %, kg CO2-eq/m2 GF·a — ⚠ NICHT je m2 EBF; Basiswert GW_EBF und Objektwert siehe unten.»

Korrektur, Destillat Z. 146/147: Ergebniswerte auf «≈ 12,9» (MFH) und «≈ 19,9» (Spital) berichtigen, mit dem Zusatz «(GW_EBF + 5,5 · 0,25; die frueher genannten 10,3 bzw. 15,9 waren durch GF statt durch EBF dividiert)».

Korrektur, alle drei Weitergabestellen (FAQ Z. 163 und 477, graue-energie.md, INDEX.md), einheitlicher Wortlaut: «Massgebend ist der Basisgrenzwert GW_EBF je m2 EBF: Wohnen MFH 12,4 (MuKEn 2025 / Minergie 2023) bzw. 11,5 (Minergie 2026.1), Spital 19,9 bzw. 18,5. Der objektspezifische Grenzwert ist GW_OBJ = [GW_EBF·EBF + 5,5·(GF−EBF) + Zuschlaege] / EBF und betraegt bei EBF/GF = 80 % rund 13,8 bzw. 12,9 (MFH) und 21,3 bzw. 19,9 (Spital). Die frueher gefuehrten 11 (MFH) und 17 (Spital) sind GF-gewichtete Mittel und gelten je m2 Geschossflaeche, nicht je m2 EBF. Zuschlaege: Erdsonde +0,3, PV +7,1 je m2 Panelflaeche, Solarthermie +5,6 je m2 Kollektorflaeche. Nachweise nach Version 2025.1 sind noch bis 31.12.2026 einreichbar.»

Offener Punkt fuer `wiki/QUESTIONS.md`: den Nenner ein zweites Mal an Anhang G des Produktreglements 2026.1 gegenlesen, dieser Anhang wurde seinerzeit ohne Refuter-Panel destilliert.

### 01.2 Solarthermie: eine Bundesfoerderung, die es nicht gibt

Stellen: `wiki/BAUHERREN-FAQ.md` Z. 1897 bis 1898 (F42), `destillate/solarthermie-investitionskosten-ch.md` Z. 35 bis 38 und Z. 42.

Was die Bauherrschaft falsch erfaehrt: einen erfundenen Bundesbeitrag von bis zu 30 Prozent der Investition fuer eine thermische Solaranlage, also rund CHF 4'500 bis 6'000 bei einer Anlage von 15'000 bis 20'000. Die Einmalverguetung des Bundes ist eine reine Photovoltaik-Foerderung, der 30-Prozent-Deckel gehoert zu ihr. Die Zahl kippt die Variantenrechnung Solarthermie gegen PV oder Waermepumpenboiler in die Richtung, von der derselbe Themenartikel abraet.

Korrektur FAQ Z. 1897 bis 1898: «der Kombianlage deutlich. Wartungsvertrag ca. CHF 100/Jahr. Gefördert wird die thermische Anlage **kantonal**: CHF 2'400 + 1'000/kWth (ZH wie SZ, min. 2 kWth, Kollektor auf kollektorliste.ch, Gesuch vor Baubeginn) — eine 6-kWth-Anlage erhält also 2'400 + 6 × 1'000 = **rund CHF 8'400**. Eine **Einmalvergütung des Bundes gibt es dafür nicht**: die EIV bei Pronovo ist eine reine PV-Förderung (→ F250, `[[pv-einmalverguetung-bund-bfe]]`).»

Korrektur Destillat Z. 35 bis 38: «- ⚠ **Korrektur 23.08.2026:** Die frueher hier stehende Angabe «Nationale Einmalverguetung kann bis zu 30 % der Investitionskosten decken» ist falsch — die Einmalverguetung (EIV/KLEIV/GREIV/HEIV, Pronovo) ist eine reine **Photovoltaik**-Foerderung (→ [[pv-einmalverguetung-bund-bfe]], established). Solarthermie wird ausschliesslich **kantonal** gefoerdert: 2'400 + 1'000/kWth.» Z. 42 im Bauherren-Transfer auf «nach kantonalem Foerderabzug» umstellen.

Beide Korrekturen gehoeren in denselben Lauf, sonst kehrt der Satz aus dem Destillat in die FAQ zurueck.

### 01.3 Klimapraemie: der Ausschluss von Einfamilienhaeusern und Anlagen unter 40 kW fehlt

Stellen: `wiki/BAUHERREN-FAQ.md` Z. 1210, Z. 1221 (Tabellenzeile), Z. 1226 (Rechenbeispiel); `wiki/foerderung-energie-zh.md` Z. 98; `wiki/foerderung-energie-sz.md` Z. 44; `wiki/INDEX.md` Z. 73. Alle Fundstellen am 23.08.2026 verifiziert.

Was die Bauherrschaft falsch erfaehrt: dass sie beim Heizungsersatz im Einfamilienhaus die Klimapraemie als Alternative zur Kantonsfoerderung pruefen soll. Das eigene established-Destillat `klimapraemie-heizungsersatz-klik.md` schliesst genau das aus: «Leistung von mindestens 40 kW», «ausgeschlossen sind ausdrücklich (…) der Heizungsersatz in Einfamilienhäusern» (Foerderkriterien Waermepumpen, Version 26.03.2026, Ziff. 1). Der Fehler kostet Geld an einer Frist, die nicht heilbar ist, weil das Gesuch vor Baubeginn zu stellen ist. In F92 und F94 steht der Ausschluss korrekt, die KB weiss es also an zwei Stellen besser als an vier anderen.

Korrektur an den drei Hauptstellen (FAQ Z. 1210, foerderung-energie-zh.md Z. 98, foerderung-energie-sz.md Z. 44), Klammerzusatz ersetzen durch: «(Stiftung KliK; Fördersatz 18 Rp./kWh Jahresverbrauch bzw. CHF 1.80 je Liter ersetztes Heizöl — die kursierenden ~CHF 360/kW sind eine daraus abgeleitete Faustregel bei rund 2'000 Volllaststunden, kein zugesicherter Satz). ⚠ Beim Wärmepumpen-Ersatz gilt eine Mindestleistung von 40 kW, und der Heizungsersatz in Einfamilienhäusern ist ausdrücklich ausgeschlossen (Förderkriterien Wärmepumpen, Version 26.03.2026, Ziff. 1). Für ein EFH ist die Klimaprämie damit kein Weg — dort den kantonalen Beitrag ohne Alternativrechnung und vor Baubeginn beantragen.»

Korrektur FAQ Z. 1226: «Heizungsersatz konkret: Ab 40 kW (also MFH/Verwaltung, nicht EFH) den Kantonsbeitrag (z. B. SZ Luft/Wasser-WP 3'200 + 120/kW_th, F28) gegen die Klimaprämie rechnen und die höhere Variante nehmen — nicht addieren, wo der Kanton die Kombination ausschliesst (Kt. SZ: «Klimaprämie + kantonale Beiträge nicht kombinierbar»). Im Einfamilienhaus entfällt dieser Vergleich, dort gilt allein die Kantonsförderung. PV bleibt unberührt.»

Korrektur FAQ Z. 1221, Spalte «Wofür»: «fossiler Heizungsersatz → WP/Holz, ab 40 kW, nicht im EFH». Korrektur INDEX.md Z. 73: ergaenzen «…, ⚠ WP-Ersatz erst ab 40 kW und nicht im EFH (F29/F94)».

Nicht anfassen: FAQ Z. 3340, das ist ein historischer Chronikblock. Zu pruefen ist dagegen, ob der fuehrende Kernfakt «ca. CHF 360.– pro kW» im Destillat selbst denselben Faustregel-Vorbehalt bekommt.

---

## 02 Zu korrigieren (P2)

### 02.1 Blower-Door: n50 statt qE50 in F115

`wiki/BAUHERREN-FAQ.md` F115, Kennwert- und Pflichtsatz. Eine emerging-Sekundaerquelle schlaegt dort die established-Primaerquelle RiLuMi 2022.1. Wer 0,6 h-1 in Werkvertrag oder Messauftrag schreibt, vereinbart eine Groesse, die die Zertifizierungsstelle nicht abnimmt (qE50 bezieht sich auf die Huellflaeche, n50 auf das Innenvolumen).

Korrektur: «Ein Blower-Door-Test misst mit einem Ventilator in der Haustür die Luftdichtheit der Gebäudehülle. Massgebende Kenngrösse ist in der Schweiz die Luftdurchlässigkeit qE50 [m³/(h·m²)], bezogen auf die Hüllfläche, gemessen nach SN EN ISO 9972. ... Pflicht ist die Messung bei Minergie-P und Minergie-A (inkl. Leckageortung); der Grenzwert liegt dort bei qE50 ≤ 0,8, beim Minergie-Basisstandard bei ≤ 1,2, bei Erneuerungen einheitlich bei ≤ 1,6. Beim Minergie-Basisstandard ist die Messung fakultativ, dafür ist das Luftdichtheitskonzept mit dem Zertifizierungsantrag zwingend einzureichen. Der oft zitierte Wert n50 ≤ 0,6 h⁻¹ ist der deutsche Passivhaus-Faustwert mit anderer Bezugsgrösse (Innenvolumen statt Hüllfläche) und gilt hier nicht. Auch ohne Label gelten Anforderungen: SIA 180:2014 setzt für den Neubau qE50 ≤ 2,4 (natürliche Lüftung) beziehungsweise ≤ 1,6 (mechanische Lüftung), beim Umbau 3,6/2,4.» Quellenzeile auf `[[rilumi-minergie-luftdichtheit-n50]]` umstellen, `[[blower-door-test-kosten-ch]]` bleibt Quelle nur fuer den Preis und bekommt dort einen ⚠-Vermerk zur n50-Tabelle.

### 02.2 Waermebruecke Fensteranschlag: Grenzwert um Faktor zwei zu hoch

`destillate/waermebrueckenkatalog-bfe-fensteranschluss.md` Z. 20 und Tabelle Z. 34 bis 38; `wiki/BAUHERREN-FAQ.md` Z. 2093 bis 2095; `wiki/u-werte-grenzwerte-ch.md` Z. 56. Derselbe Psi-Bereich wird gegen denselben Grenzwert einmal als bestanden und einmal als gerissen bewertet; im Systemnachweis bleiben damit Waermebruecken unberuecksichtigt, die einzurechnen sind.

Korrektur Destillat Z. 20: «⚠ Grenzwert: Der BFE-Katalog 2002 rechnet gegen SIA 380/1:2001. Die Einordnungen in der Tabelle unten sind nur mit einem Grenzwert um 0,20 W/(m·K) stimmig, nicht mit den 0,30 der Balkonplatte (Typ 1) — welcher Wert im Katalog selbst steht, ist am Original nachzuprüfen. Massgebend ist heute ohnehin EN-102 (2018), Typ 5 Fensteranschlag: Ψ ≤ 0,15 W/(m·K) → [[enfk-en-102-waermeschutz-2018]]. Die Zahlenwerte unten sind Grössenordnungen; für die Baueingabe gilt die Simulation nach geltender Norm.»

Korrektur FAQ Z. 2093, Klammer ersetzen durch: «(massgebender Grenzwert heute Ψ ≤ 0,15 W/(m·K) für den Fensteranschlag, Typ 5 nach EN-102 2018; der Katalog von 2002 rechnet gegen die ältere SIA 380/1:2001)». Der Folgesatz «liegt meist über dem Grenzwert (0,22–0,35)» bleibt, er stimmt gegen 0,15. `u-werte-grenzwerte-ch.md` Z. 56 gleichlautend, mit Verweis auf die eigene Z. 47. Den Rollladenkasten-Artikel nicht umbewerten, sondern mit dem Vermerk versehen: «⚠ Der zitierte Grenzwert 0,30 ist aus der Fensteranschlag-Gruppe übernommen und nicht am Original verifiziert.» Offene Frage in QUESTIONS.md: welchen Grenzwert der Katalog 2002 fuer die Gruppen 4.1 und 4.2 selbst ansetzt.

### 02.3 Komfortlueftung: die schaerfere ZH-Anforderung fehlt

`wiki/komfortlueftung.md` Z. 18. Ein nach dem Artikel mit 70 bis 73 Prozent ausgeschriebenes Geraet erfuellt den Lueftungsnachweis, faellt aber bei einem Neubau ueber die Standardloesungen SL 1 oder SL 2 durch. Das faellt nach der Vergabe auf.

Korrektur: «Kanton ZH verlangt im Lüftungsnachweis (Formular EN-105) einen Temperatur-Änderungsgrad ≥ 70 % (→ [[en-lueftung-kuehlung-zh]]). Das ist NICHT die schärfste ZH-Anforderung: wird ein Neubau der Kategorien I/II über eine Standardlösung nach § 9 Abs. 1 der Wärmedämmvorschriften 2022 geführt, verlangt diese einen KWL-Wirkungsgrad von mindestens 80 % bei Versorgung von mindestens 90 % der EBF (F248). Die 70 % der Standardlösung 11 nach § 10 WDV gelten dagegen nur beim Wärmeerzeugerersatz im Bestand. Für die Ausschreibung ist damit die 80-%-Schwelle massgebend, sobald der Nachweis über eine Standardlösung laufen soll.»

Zusaetzlich in QUESTIONS.md: die Schwelle 75 Prozent traegt in der KB drei verschiedene Definitionen (Bypass, feuchtebezogen, Jahresnutzungsgrad nach SIA 382/1 Ziff. 5.10.3). Zwei davon muessen falsch sein, am Formular EN-105 klaeren.

### 02.4 Indach-Aufschlag: der widerrufene Wert steht an fuenf Stellen weiter

`wiki/BAUHERREN-FAQ.md` Z. 817 und Z. 3355; `wiki/INDEX.md` Z. 24; `wiki/QUESTIONS.md` Z. 381; `destillate/pv-einmalverguetung-bund-bfe.md` Z. 76. Der Widerruf steht in F18 auf Z. 799, achtzehn Zeilen spaeter wird der Wert wieder behauptet. Bei 10 kWp bedeutet «+60 Prozent» rund CHF 16'500 Mehrpreis gegen 0 bis 5'200 nach der amtlichen Studie; bei ortsbildgeschuetzten Objekten kippt das den Entscheid gegen die Indach-Loesung, die foerderseitig besser gestellt ist.

Korrektur Z. 817: «Preise Aufdach 5–15 kWp 2'400–3'200 CHF/kWp (CKW Herbst 2025); Indach real 2024 je nach Grössenklasse +0 bis +19 % (BFE-Preisbeobachtungsstudie 2024, publ. 10.07.2025) — die frühere CKW-Faustregel «+60 %» ist überholt; förderseitig liegt die integrierte Anlage mit 400 statt 360 CHF/kWp Einmalvergütung sogar vorn.» Kurzfassungen entsprechend an den vier weiteren Stellen.

### 02.5 Batteriespeicher: Preisband oberhalb des eigenen, neueren Medians

`wiki/batteriespeicher.md` Z. 29 und Z. 31. Etikett «Stand 2026» ueber einer aelteren Erhebung; die FAQ hat den neuen Wert bereits, der Artikel nicht. Folge in der Offertenpruefung: 15 kWh zu 900 CHF/kWh sind 13'500 gegen ein Marktmittel von 8'850.

Korrektur Z. 29: «## Kosten & Dimensionierung (Swissolar «Batteriemonitor Schweiz 2026» / BFE-Preisbeobachtung 2024)». Korrektur Z. 31: «| Preis | **Median 2025: CHF 586/kWh** nutzbar (15-kWh-Speicher ⌀ CHF 8'850 installiert, Swissolar-Mitgliederumfrage Nov. 2025, n=117). Fallende Kurve: 2022: 827 · 2023: 846 · 2024: 708 · 2025: 586 CHF/kWh. Kleinere Speicher liegen darüber; die früher hier stehende Bandbreite **CHF 600–900/kWh** ist als **Obergrenze für die Offertenprüfung** zu lesen, nicht als Erwartungswert. Inkl. Wechselrichter + Installation |». Frontmatter-Feld `datenstand` ergaenzen.

### 02.6 GEAK-Kosten: die FAQ widerspricht sich innerhalb derselben Antwort

`wiki/geak-gebaeudeenergieausweis.md` Z. 33 bis 36 und Z. 124; `wiki/BAUHERREN-FAQ.md` F36 Kurzantwort Z. 1551 bis 1553. Der Quelle-Block von F36 traegt den neuen Stand, der Satz, den eine Bauherrschaft liest, den alten.

Korrektur Artikel Z. 33 bis 36: «**Kosten: kein amtlicher Fixpreis** — projektabhängig, mehrere Offerten einholen. **Marktrichtwerte** (drei unabhängige Marktquellen, nicht amtlich): GEAK EFH CHF 450–750, GEAK MFH CHF 500–1'000 (3–10 WE); **GEAK Plus EFH CHF 1'400–2'700**, GEAK Plus MFH bis CHF 2'800 (3–10 WE), ab 10 WE Offerte; dazu amtliche Zertifizierungsgebühren CHF 80 (GEAK) / CHF 190 (GEAK Plus) → `[[geak-kosten-efh-mfh]]`.» Kurzantwort F36 mit denselben Zahlen. Z. 124 auf «established» korrigieren, mit dem Zusatz, dass geak.ch und EnDK selbst keine Preise publizieren. Den Status nicht absenken, fuer einen Marktpreis gibt es keine amtliche Quelle.

### 02.7 F162: aus einem offenen Punkt wird ein gesicherter Negativbefund

`wiki/BAUHERREN-FAQ.md` F162 Kurzantwort; `destillate/INDEX.md` Z. 288; `wiki/QUESTIONS.md` Z. 2595. Die Kurzantwort verneint eine kantonale Foerderung, die fachliche Begruendung derselben Antwort nennt den Punkt fuer den Kanton Schwyz «nicht abschliessend geklärt».

Korrektur Kurzantwort: «Eine kantonale Förderung ist im Kt. ZH nicht vorgesehen (das AWEL fördert nur den Ersatz des ganzen Wärmeerzeugers); im EKZ-Netzgebiet gibt es befristet CHF 800 (1.5.2026–31.12.2027). Für den Kt. SZ ist der isolierte Boiler-Ersatz nicht geklärt — vor dem Entscheid beim AfU nachfragen, das Gesuch kostet nichts ausser einem Telefon.» INDEX Z. 288 auf «emerging» mit Begruendung, QUESTIONS Z. 2595 ebenso.

### 02.8 Foerderprogramm ZH: die korrigierte Befristung ist nicht durchgereicht

`wiki/foerderung-energie-zh.md` Z. 14 und Z. 78; zusaetzlich `wiki/QUESTIONS.md` Z. 303. Der Regierungsrat datiert den Anschlussbedarf am 15.01.2026 auf «Mitte 2026 bis Ende 2029», die KB sagt an drei Stellen «bis Ende 2026».

Korrektur Z. 14 (Warnbox): «> ⚠ **Datenstand 2026-06-26** (Programm-Version 01.01.2026). Fördersätze altern — vor jeder Zusage gegen `zh.ch` / `portal.dasgebaeudeprogramm.ch/zh` prüfen. **2026 unverändert ggü. 2025** bestätigt (Baudirektion-Mitteilung 24.10.2025). Befristet ist das Programm auf den **Rahmenkredit 2023–2026 bzw. bis zur Budgeterschöpfung**; der Regierungsrat datiert den Anschlussbedarf in seiner Mitteilung vom **15.01.2026** ausdrücklich auf **«Mitte 2026 bis Ende 2029»** — der laufende Kredit trägt also **nicht zwingend bis Jahresende**. Gesuch darum nicht auf das 2. Halbjahr 2026 schieben → F7.» Z. 78 auf «Befristung auf den Rahmenkredit 2023–2026 bzw. die Budgeterschöpfung» umstellen, QUESTIONS Z. 303 mitziehen.

### 02.9 Verstrichener Selbst-Stichtag: KRNr 6064

`wiki/BAUHERREN-FAQ.md` F7 Z. 337 bis 341. Die KB hat sich den 17.08.2026 notiert, aber in abgehakten Eintraegen der Erledigt-Liste, wo ihn kein Radar findet. In `logbuch/fristen.md` steht nichts.

Zeile fuer `/Volumes/daten/jans-ai-hub/logbuch/fristen.md`: «offen | **KRNr 6064 Rahmenkredit Foerderprogramm Energie ZH 2026-2029 — Ergebnis der Plenarsitzung vom 17.08.2026 ungeprueft.** Die KEVU hat am 07.05.2026 einstimmig Bewilligung beantragt. Das Geschaeft traegt saemtliche CHF-Saetze in FAQ F7 und im Themenartikel foerderung-energie-zh. AKTION: CDWS-Geschaeftsdatenbank (parlzhcdws.cmicloud.ch) abfragen, Befund in F7 und im Destillat foerderprogramm-energie-zh-2026 nachtragen. | Gegenpruefung energie-KB 23.08.2026 | Wissens-Layer energie | hoch | offen»

Korrektur F7 Z. 341: «(Stand 20.07.2026: `PendentBeiNeu = Kantonsrat`; die erste Plenarsitzung nach der Sommerpause fand am 17.08.2026 statt, **ihr Ergebnis ist in dieser KB noch nicht ausgewertet** — vor einer Zusage den aktuellen Geschaeftsstand abfragen).» Die beiden abgehakten QUESTIONS-Eintraege Z. 1398 und 1439 wieder als offenen Beobachtungspunkt fuehren.

### 02.10 Heizlast-Rueckrechnung F13: Hoehenkorrektur und Formelzeichen

`wiki/BAUHERREN-FAQ.md` Z. 370 bis 371; `wiki/heizleistung-und-waermeerzeuger.md` Z. 21. Derselbe Absatz, in einem Zug zu korrigieren. Die Volllaststunden stehen im Nenner: wer in Einsiedeln, Rothenthurm oder einer vergleichbaren Hoehenlage mit den Talwerten rechnet, erhaelt eine um 11 bis 13 Prozent zu grosse Leistung.

Korrektur Themenartikel Z. 21: «Sanierung (Verbrauchsmethode): Φ = (man·GCV/tan) · (ηan,alt/ηan,neu) · ηgen,neu. Dabei ist ηan der Jahresnutzungsgrad (alt/neu) und ηgen,neu ≈ 0,5 · (1 + ηan,neu) der Erzeuger-Wirkungsgrad — zwei verschiedene Grössen, die Formel kürzt sich nicht. Prozente als Dezimalzahl einsetzen (80 % = 0,80). Volllaststunden tan: 2'300 h (nur Heizung) bzw. 2'700 h (Heizung + Warmwasser), bis 800 m ü. M.; darüber +300 h. Gilt nur für gleichartigen Ersatz.»

Korrektur FAQ Z. 370 bis 371: dieselbe Schreibweise mit dem Klarstellungssatz «(ηan,neu und ηgen,neu sind zwei verschiedene Grössen; ηgen,neu ≈ 0,5 · (1 + ηan,neu))», dazu ergaenzen: «Volllaststunden tan 2'300 h nur Heizung bzw. 2'700 h mit Warmwasser für Standorte bis 800 m ü. M., darüber jeweils +300 h. Die Höhenkorrektur nicht übergehen: tan steht im Nenner, wer in Einsiedeln, Rothenthurm oder einer vergleichbaren Höhenlage mit den Talwerten rechnet, erhält eine um gut 10 % zu grosse Leistung — und baut genau die Überkapazität ein, vor der die nächste Zeile warnt.» Kontrollbeispiel: 2'400 l Heizoel, GCV 10,5 kWh/l, 2'700 h, 0,78 auf 0,90 ergibt 7,7 kW.

### 02.11 F30 Vollkostentabelle: zwei Spalten, zwei Nenner

`wiki/BAUHERREN-FAQ.md` Z. 1245 bis 1246 und Tabelle Z. 1253 bis 1258. Keine der fuenf Zeilen geht auf, weil die Jahresspalte auf die jeweils eigene Nutzungsdauer bezogen ist. Wer die Jahreskosten mit 20 multipliziert, erhaelt fuer die Erdsonde einen um rund CHF 7'000 zu tiefen Wert.

Korrektur, nach Z. 1258 einfuegen: «⚠ Die beiden rechten Spalten haben verschiedene Nenner und sind nicht ineinander umrechenbar. Die Jahreskosten beziehen sich auf die jeweils eigene Nutzungsdauer des Systems, nicht auf die 20 Jahre der mittleren Spalte — die Erdsondenbohrung hält länger als die Betrachtungsperiode und verteilt sich deshalb auf mehr Jahre. Daraus folgen zwei Rangfolgen: über 20 Jahre ist die Luft-Wasser-WP am günstigsten (79'908), pro Betriebsjahr die Erdsonde (4'090). Wer die Jahreskosten mit 20 multipliziert, erhält für die Erdsonde einen um rund CHF 7'000 zu tiefen Wert. Belastbar ist allein: beide Wärmepumpen liegen klar unter Pellets, Fernwärme und Öl.» Kurzantwort Z. 1245: «(EFH, 20 Jahre)» auf «(EFH-Beispiel)» kuerzen. Kurzverweise Z. 3066 und Z. 3321 mit «(Jahreskosten je eigene Nutzungsdauer, nicht Summe geteilt durch 20)» versehen.

### 02.12 Grundwasser-Waermepumpe: unbelegte Spitzenzahl als Tatsache

`wiki/BAUHERREN-FAQ.md` F6 Z. 696 und Richtwerttabelle Z. 708; `wiki/heizleistung-und-waermeerzeuger.md` Z. 92; `destillate/waermepumpe-systemvergleich.md` Z. 46. «JAZ ~5» stammt aus einer Web-Synthese, die als established gefuehrt wird, waehrend F77 in derselben Datei belegt, dass die KB dafuer keine moderne Zahl hat.

Korrektur Z. 696: «Grundwasser-WP gilt theoretisch als ebenbürtig oder besser, doch eine belegte Schweizer Feld-JAZ liegt dafür nicht vor — die einzige verfügbare Feldmessung (Fraunhofer ISE, vier Anlagen) ergibt 3,57-4,24, die Schweizer Feldmessung der Erdsonde 4,3-4,9. Sie lohnt sich deshalb vor allem bei grösseren Objekten und dort, wo Grundwasser ohnehin genutzt wird — siehe F77.» Tabellenzeile: «Wasser-Wasser (Grundwasser) | Richtwert ~5 ⚠ nicht feldbelegt (BFE-Bandbreite 3,8-5,0 von 2010; einzige Feldmessung DE 3,57-4,24) | nur wo Grundwasser bewilligt nutzbar (AWEL); Konzessionsverfahren, vgl. F77». Destillat auf emerging setzen.

### 02.13 g-Werte Sonnenschutzglas: needs-verification wird nicht weitergereicht

`wiki/fenster-uw-g-wert-zielkonflikt.md` Z. 80 bis 82, Tabellenzeile Z. 90, Statusabsatz Z. 199 bis 203. Zwei andere Stellen der KB flaggen denselben Sachverhalt korrekt, dieser Artikel nicht. Der Typ A50 mit g = 0,28 liegt unter der EN-102-Schwelle von 0,3, die Folge ist real.

Korrektur Z. 80 bis 82: «**Belegte g-Wert-Bandbreiten je Verglasungstyp** (orientierungsunabhängig, drei unabhängige CH-Quellen — BFE-Bauteilekatalog amtlich, Minergie-Broschüre «Sommerlicher Wärmeschutz» 2022, Minergie-Anwendungshilfe 2025-2; dazu Herstellerangaben Flachglas Schweiz aus einer Suchmaschinen-Zusammenfassung, **needs-verification** — vor Projektverwendung das aktuelle Produktdatenblatt beim Hersteller anfordern oder GlasCalc nutzen):» Tabellenzeile Z. 90 mit «⚠ needs-verification» und Quellenvermerk «Suchmaschinen-Zusammenfassung — nicht am Datenblatt gelesen». Statusabsatz auf drei Primaerquellen korrigieren, vetroSol-Werte als Groessenordnung kennzeichnen.

### 02.14 F3: falsche Norm-Ausgabe und fehlende ZH-Rechtsgrundlage

`wiki/BAUHERREN-FAQ.md` Z. 112 bis 115; `wiki/QUESTIONS.md` Z. 295. Zwei Befunde am selben Absatz, zusammengefuehrt. Die Zahlen selbst (0,17 / 0,25 / 1,0) sind richtig und wurden am 23.07.2026 an der Kt.-LU-KEnV zahlengleich gegengeprueft; falsch ist das Etikett der Rechengrundlage (SIA 380/1:2009 statt 2016), und die tragende ZH-Rechtsgrundlage fehlt. Bewusst ohne Ausgabejahr der EN-102 formuliert, weil dieser Punkt offen ist (siehe 03.15).

Korrektur: «**Quelle:** Für den Kt. ZH massgebend sind die **Wärmedämmvorschriften vom 8.6.2022** (LS 700.211, in Kraft seit 01.09.2022), § 8 (Einzelbauteil- und Systemnachweis) und § 9 (vier Standardlösungen für Wohnbauten), sowie die Grenzwerttabelle **§ 47a BBV I** → `[[waermedaemmvorschriften-zh-2022]]` / `[[energ-bbv1-waermebedarf-rechtsgrundlagen-zh]]`, beide established, Originale nachgelesen 21.08.2026 (→ F248). Die hier genannten Werte stimmen mit der EnFK/EnDK-Vollzugshilfe **EN-102 «Wärmeschutz von Gebäuden» (Basis SIA 380/1:2016)** überein → `[[enfk-en-102-waermeschutz-2018]]`, Tab. 2 (Neubau) / Tab. 4 (Umbau); nicht mit der Vorgängerin **EN-2 (Feb. 2013, Basis SIA 380/1:2009)** verwechseln. Empfehlung Dämmstärke → `[[minergie-besser-planen-bauen]]`. ⚠ **Drei Vorbehalte:** (1) § 8 WDV verweist für die Einzelanforderungen auf die **Tabellen 2/3/5 der SIA 380/1:2016**, die dieser KB nicht im Volltext vorliegt — die Zahlen sind zweifach übereinstimmend belegt, aber nicht an der Norm selbst nachgeprüft. (2) Der Ausgabestand der EN-102 selbst ist in der KB nicht abgeglichen; die Zahlenwerte sind davon unberührt (Gegenprüfung an der Kt.-LU-KEnV, Anhang 1-3, 23.07.2026). (3) MuKEn 2025 ist in ZH **noch nicht umgesetzt**, ein Inkraftsetzungsdatum ist nicht bekannt. Für die Gebäudekategorien III–XII (Pflegeheim, Klinik, Verwaltung) gibt es **keine Standardlösung** — dort ist der Rechennachweis nach § 8 WDV zwingend. Datenstand ZH-Rechtslage: 21.08.2026.» QUESTIONS Z. 295 mitziehen, sonst bleibt die falsche Zuordnung im Register stehen.

### 02.15 F236 Dachbegruenung: die Fachnorm fehlt

`wiki/BAUHERREN-FAQ.md` Z. 8168 bis 8175 und Quellenzeile Z. 8182 bis 8184; ausserdem `wiki/dachbegruenung-gruenach.md` Z. 4 (last_updated nachfuehren auf 2026-08-20). Der Themenartikel raet seit dem 20.08.2026 ausdruecklich davon ab, die Pauschalwerte von 2009 in ein Aussendokument zu zitieren; die FAQ tut es. Unterschreitung bis 18 Prozent beim Wasserrueckhalt.

Korrektur, vor die Kennwerte setzen: «Massgebend ist **SIA 312:2013 «Begrünung von Dächern» (SN 564312, in Kraft seit 01.11.2013)**; sie bemisst Schichtdicke und Wasserrückhalt **standortabhängig nach Jahresniederschlag** (110 bis 80 mm Schichtdicke, 55 bis 40 l/m² Wasserrückhalt, nutzbare Feldkapazität 27,5 bis 20,0 l/m²) statt pauschal. Die folgenden Werte stammen aus der Stadt-Zürcher Checkliste von 2009 und taugen zur ersten Grössenordnung, nicht zum Zitat in einem Aussendokument.» PV-Abschnitt ergaenzen: «(Quelle 2009; die Koexistenz Begrünung/Solarmodul regelt SIA 312 Ziff. 2.12.1-2.12.3 normativ)». Quellenzeile um «Fachnorm: `[[sia-312-2013]]` (führende KB `normen`)» erweitern.

### 02.16 Verwaister Vollzugsordner-Zwilling mit aufgehobenem Rechtsstand

`destillate/vollzugsordner-energie-zh-abschnitt3-en1.md` Z. 7 (status) und Z. 22 (Sachaussage im Praesens). Die Datei behauptet die 80-Prozent-Regel und die elf Standardloesungen als geltendes Recht, steht auf emerging und ist ueber kein Register auffindbar. Der korrigierte Zwilling existiert.

Korrektur: `status: emerging` auf `status: superseded` setzen, den Warnblock des Zwillings woertlich uebernehmen («⚠⚠⚠ ABGELÖST … die 80-%-Regel des § 10a EnerG gilt seit 01.09.2022 nicht mehr; die elf Standardlösungen sind für Neubauten ersatzlos entfallen und durch VIER Standardlösungen in § 9 WDV 2022 ersetzt … Diese Datei ist historische Referenz, keine Planungsgrundlage.»), und in Z. 22 vor den Satz «Neubauten … müssen» ein «Bis zur Revision per 01.09.2022 galt:» setzen. Das Zusammenfuehren der vier doppelt destillierten Quell-PDFs ist destruktiv und braucht nach Rule `wissens-bibliothekar` die Freigabe; bis dahin beide Dateien mit gegenseitigem Dubletten-Vermerk fuehren.

### 02.17 Themenartikel koennen nicht altern

35 der 37 Themenartikel haben kein Frontmatter-Feld `datenstand`, selbst gemessen und bestaetigt. `last_updated` misst den letzten Zugriff, nicht das Alter der Zahlen, und die Alterswarnungen der Destillate werden beim Kompilieren abgeschnitten. Das ist die gemeinsame Ursache hinter 02.5, 02.8 und drei P3-Befunden und der einzige Befund, der das Wiederauftreten verhindert statt einen Einzelfall zu heilen.

Massnahme in `wissen/energie/CLAUDE.md`: «**Themenartikel-Frontmatter (verbindlich):** `title`, `status`, `last_updated`, **`datenstand`**, `sources`, `links`. `last_updated` nennt den letzten Bearbeitungszeitpunkt, **`datenstand` den ältesten Datenstand der zitierten Quellen** — nie das Kompilierdatum. Trägt ein Artikel CHF-Werte, Tarife oder Fördersätze, gehört der Datenstand zusätzlich in die Tabellenüberschrift bzw. die Wertzeile selbst, damit er beim Zitieren mitgeht.» Sofort nachruesten in dieser Reihenfolge: batteriespeicher, elektromobilitaet-ladeinfrastruktur (dort zugleich «(Zogg 2023)» nachtragen), solarwaerme-warmwasser, minergie-standards, foerderung-energie-sz, fenster-verglasung.

### 02.18 Einmalverguetung integriert: Fixbetrag oder Zuschlag

`wiki/BAUHERREN-FAQ.md` Z. 8494; `destillate/pv-einmalverguetung-bund-bfe.md` Z. 92. Nicht auf 330 CHF/kWp aendern, diese Zahl steht nirgends in der KB und waere selbst der gesuchte Fehlertyp. Finanzfolge bei 40 kWp Indach: CHF 16'000 gegen 13'200.

Korrektur, hinter die Tabellenzeile: «⚠ Ob der integrierte Satz auch oberhalb 30 kWp bei 400 CHF/kWp bleibt oder wie die angebauten Anlagen abgestuft wird, ist in der KB nicht abschliessend geklärt — vor einer Wirtschaftlichkeitsrechnung über 30 kWp den Pronovo-Tarifrechner rechnen lassen (`pronovo.ch/de/services/tarifrechner/`), er ist ohnehin die verbindliche Grösse.» Dazu ein offener Punkt in QUESTIONS.md mit dem Auftrag, Kap. 8 der Pronovo-Richtlinie 2026 v4.1 nachzuschlagen, die der KB vorliegt.

---

## 03 Nachzufuehren (P3, kompakt)

Diese Punkte aendern keine Zahl, die eine Bauherrschaft in eine Rechnung stellt, oder sie sind reine Hausordnung. Sie gehoeren in einen Sammellauf, nicht in einzelne Einsaetze.

**03.1 F38 Speicher-Kennzahlen.** FAQ Z. 1666 und Z. 1674. Kurzantwort neu: «Kurz: Ein Batteriespeicher hebt den Anteil des selbst genutzten Solarstroms deutlich (Eigenverbrauchsquote von rund 30 % auf bis zu 70-90 %), rechnet sich aber meist gerade knapp und hilft im Winter praktisch nicht. Das ist nicht dasselbe wie Unabhängigkeit vom Netz: der Selbstversorgungsgrad (Autarkie) liegt auch mit Speicher bei 50-80 %, ohne Speicher regelmässig unter 35 % — die drei Kennzahlen trennt F255.» Z. 1674 ergaenzen: «(⚠ Marktangabe, nicht amtlich belegt — und sie gilt nur für eine auf den Jahresverbrauch ausgelegte Anlage: die Autarkie kann den Deckungsgrad nie überschreiten. Beim KB-Fall Willerzell liegt dieser bei 53 %.)» `batteriespeicher.md` und `INDEX.md` sind bereits richtig etikettiert.

**03.2 JAZ-Verlust je Grad Vorlauftemperatur.** FAQ Z. 5506 bis 5508. Der Wert ist allein aus den Luft/Wasser-Zeilen abgeleitet: «rund 1,0–1,2 % JAZ-Verlust pro °C bei Luft/Wasser-Wärmepumpen, dagegen nur rund 0,6–0,7 % bei Sole/Wasser (grobe Eigenherleitung; der absolute Rückgang ist in beiden Systemen ähnlich, relativ fällt er bei Sole/Wasser kleiner aus, weil er auf einen höheren Ausgangswert trifft).»

**03.3 Komfortlueftung, Minergie gegen Norm.** `komfortlueftung.md` Z. 19 bis 21. 80 gegen 73 sind vergleichbar, 60 ist ein Feuchte-Verhaeltnis, das die Norm gar nicht kennt. Neuformulierung mit getrennter Nennung, Abstand 7 Prozentpunkte, Feuchterueckgewinnung obendrauf.

**03.4 PV-Faustwert.** `destillate/pv-ertrag-eigenverbrauch-praxis.md` Z. 206 bis 208, FAQ F18 Z. 762, `pv-solar-technologien.md` Z. 47. Entscheidend ist die Ausrichtung, nicht die Region: «kWp × 1'000 bei Süd/optimaler Neigung, kWp × 850 bei Ost-West, Verschattung oder steiler Neigung.» Der Textrest «beide Beispiele … mit ~26° Neigung» stammt aus der Fassung vor Beispiel C und faellt weg.

**03.5 Kantonsvergleich Foerderung.** `foerderung-energie-sz.md` Z. 53 bis 54 sagt das Gegenteil der eigenen Zahlen. Richtig: SZ zahlt bei 8 kW_th CHF 4'160 gegen ZH 2'900, also 43 Prozent mehr; die Kurven schneiden sich erst bei rund 67 kW_th (Erdsonde rund 72).

**03.6 F80 Fernwaerme.** FAQ Z. 3074 bis 3076 stellt Betriebskosten den Waermepumpen-Vollkosten gegenueber und dehnt den Vergleich auf das MFH aus, das im Destillat gar nicht verglichen wird. Ergaenzen: «⚠ Der Vergleich hinkt bewusst: hier Betriebskosten ohne Abgaben, dort Vollkosten mit einem anderen Verbrauchsprofil — derselbe Rechner führt für Fernwärme CHF 4'940/Jahr Vollkosten. Für die MFH-Zahlen oben trägt der Vergleich nicht.»

**03.7 F39 Ladeinfrastruktur, Preisstand.** Nach dem CHF-Bullet: «⚠ **Preisstand dieser Zahlen: Netzbeitrag und Kabel Juni 2019**, publiziert im AWEL-Infoblatt vom 13.10.2020 — als Verhältniszahl zwischen den Ausbaustufen zu lesen, nicht als CHF-Budget 2026.»

**03.8 F39 Foerdertopf.** Z. 1798 bis 1800 traegt die unbedingte Zusage vier Zeilen vor der Ausschoepfungswarnung. Anhaengen: «— ⚠ dieser Topf war am **06.07.2026 zu über 92 % ausgeschöpft**; vor jeder Zusage den Stand beim Amt für Mobilität erfragen und den Beitrag nicht in die Investitionsrechnung einstellen, solange er nicht bestätigt ist.» Dazu ein Beobachtungspunkt in QUESTIONS.md.

**03.9 F10 Eigenstromerzeugung.** Quellenzeile Z. 232 bis 234: operative Rechtsgrundlage ist § 10c EnerG mit § 47b BBV I; das zitierte Formular EN-104 in der Version Juni 2019 war nur bis 31.12.2024 gueltig, der Nachweis laeuft in ZH seit 1.1.2026 elektronisch ueber EVEN. Ausblick MuKEn 2025 (Deckel entfaellt, 20 W/m2 EBF) als Planungshinweis kennzeichnen, ZH hat nicht umgesetzt.

**03.10 F61 Solarpflicht ZH.** Z. 2379 bis 2381: der Verfahrensstand ist seit dem 24.07.2026 amtlich bekannt (KRNr 6062 Solarpflicht, 6063 Langzeitspeicher, seit Antrag 26.11.2025 unveraendert bei der KEVU, siehe F116). Zusaetzlich das unstimmige RRB-Datum bereinigen: eine RRB-Nummer des Jahrgangs 2025 kann nicht «je 06.01.2026» datiert sein.

**03.11 F42 Preisstand Solarthermie.** Quellenzeile: «⚠ **Preisstand 2020** (hausinfo.ch, 07.09.2020) — die Schweizer Baukosten sind seither gestiegen, ein 2026er-Preis ist in dieser KB **nicht belegt**. Als Grössenordnung lesen, nicht als Budget.» Zusammen mit 01.2 anfassen, es ist derselbe Block.

**03.12 Graue Energie gegen THGE.** `graue-energie.md` Z. 181 bis 184 haengt eine kg-CO2-Zahl an den Begriff graue Energie, waehrend die Messgroessen-Tabelle desselben Artikels MJ fuehrt. Beide Zahlen nennen und ausdruecklich als nicht ineinander umrechenbar kennzeichnen (23 Prozent THGE, 20 Prozent MJ). Kurztitel «THGE Erstellung (graue Energie)» auf «THGE Erstellung (Treibhausgasemissionen, nicht graue Energie in MJ)» aendern.

**03.13 Solarthermie: kWth gegen m2.** Die KB dimensioniert in m2 und foerdert in kWth, die Bruecke fehlt. In F28 und F40 je den Satz ergaenzen, dass die Nennleistung aus kollektorliste.ch stammt und beim Anbieter zu verlangen ist; eine Umrechnung nicht schaetzen, sondern als offene Frage in QUESTIONS.md fuehren.

**03.14 F2 Norm ohne Fundstelle.** Z. 88 nennt SIA 380/1 ohne Ausgabe und ohne Ziffer, entgegen Rule `normen-referenz`. Quelle praezisieren, im Kanton ZH gilt SIA 380/1:2016. Zusaetzlich `destillate/sia-380-1-heizwaermebedarf-berechnung.md` von established auf emerging senken, solange das eigene Datenstand-Feld «gegen aktuelle Fassung pruefen» verlangt.

**03.15 EN-102, welcher Ausgabestand.** Zwei primaergelesene established-Destillate nennen «Dezember 2018» und «Januar 2020», beide mit Basis SIA 380/1:2016; die Schwester-Vollzugshilfe EN-120 traegt ebenfalls «Januar 2020». Als offenen Punkt in QUESTIONS.md aufnehmen, die Zahlenwerte sind davon nicht betroffen. Danach FAQ Z. 112, 3587 und 5215 auf einen Stand bringen.

**03.16 Register- und Verweishygiene (ein Sammelauftrag).** `destillate/INDEX.md` Z. 395 traegt eine durch die eigene KB widerlegte Rechtsaussage (80-Prozent-Regel «unveraendert in Kraft») und ist auf superseded zu setzen. Vier Registerzeilen stufen hoeher ein als das Frontmatter (Z. 215, 241, 288, 395), das ist die gefaehrliche Richtung. Elf Destillate fehlen ganz im Register, darunter `energ-bbv1-waermebedarf-rechtsgrundlagen-zh` (established, traegt F248 und F249). Drei Destillate tragen Statuswerte ausserhalb der Skala (`needs-verification`, `teilverifiziert`, `Negativbefund`) und entgehen damit jeder Pruefung. Zwanzig Linkziele loesen nicht auf (40 Vorkommen), darunter ein Skill-Name und drei nirgends existierende Artikel. Die Statusfelder von `sia-2001-waermedaemmstoffe-lambda` und `cop-scop-jaz-waermepumpe-gruenenwald` sind zu praezisieren, nicht abzusenken: beim ersten gilt established fuer die Materialklassen-Bandbreiten, nicht fuer die Produkt-Nennwerte von 2005; beim zweiten ruht die Autoritaet auf EN 14825:2013, nicht auf dem undatierten Anbieter-Foliensatz, aus dem keine Zahlen uebernommen werden. Kopfzeile des INDEX auf «Status zum Laufzeitpunkt» aendern, mit dem Zusatz, dass allein das Frontmatter massgeblich ist.

**03.17 Tippfehler.** FAQ Z. 84: «zürst» statt «zuerst».

---

## 04 Die vier Fehlerklassen und ihre Mechanismen

Die 38 Befunde stammen aus vier Klassen. Drei davon sind maschinell fassbar, die vierte braucht einen festen Schritt im Lauf.

### 04.1 Die Bezugsgroesse wandert nicht mit der Zahl

Betroffen: THGE je m2 EBF gegen je m2 GF (01.1), Autarkie gegen Deckungsgrad gegen Eigenverbrauchsquote (der Ausloeser dieses Audits, 03.1), n50 gegen qE50 (02.1), Vollkosten ueber 20 Jahre gegen Kosten je Betriebsjahr (02.11), CHF je kW gegen Rp. je kWh (01.3), Volllaststunden im Nenner (02.10), kWth gegen m2 Kollektorflaeche (03.13). Das ist die teuerste Klasse, sie enthaelt beide P1 mit Zahlfolge. Die Arithmetik ist dabei jedes Mal korrekt, falsch ist der Nenner.

Mechanismus: ein python3-Check mit drei Regeln, der bei jedem Lauf ueber `wiki/` und `destillate/` faehrt. (1) **Kennzahlen-Lexikon**: jede Kennzahl aus einer festen Liste (Autarkie, Deckungsgrad, Eigenverbrauchsquote, THGE, U-Wert, Psi, n50/qE50, JAZ, spezifischer Ertrag) muss im selben Satz ihre Bezugsgroesse tragen, sonst Meldung. (2) **Unmoeglichkeitsregeln**: Autarkie ueber 100 Prozent, Autarkie groesser als der im selben Block genannte Deckungsgrad, Prozentwerte ueber 100 in einem Feld, dessen Name eine Quote bezeichnet. (3) **Tabellen-Nennerprobe**: wo eine Tabelle eine Summe und einen Jahreswert fuehrt, den impliziten Nenner je Zeile ausrechnen und melden, wenn er zwischen den Zeilen schwankt. Diese drei Regeln haetten 01.1, 02.11 und den Ausloeser des Audits gefunden.

### 04.2 Die KB weiss es besser, als sie sagt

Die groesste Klasse, mindestens zwoelf Befunde: das Destillat traegt den Vorbehalt oder die Korrektur, das ausgehende Erzeugnis nicht. Klimapraemie (01.3), g-Werte (02.13), GEAK (02.6), Batteriepreise (02.5), THGE 2026.1 (01.1), Indach (02.4), Blower-Door (02.1), Boiler SZ (02.7), Foerderbefristung (02.8), Dachbegruenung (02.15), Autarkie-Marktangabe (03.1). Zweimal widerspricht sich sogar eine einzige FAQ-Antwort in sich selbst (F36, F162), und einmal steht der Widerruf achtzehn Zeilen ueber der wiederholten Falschaussage (02.4).

Mechanismus, zwei Teile. Erstens ein **Rueckwaerts-Diff**: ein Script extrahiert je Destillat alle ⚠-Saetze, Ausschluss- und Vorbehaltsformulierungen sowie die im Frontmatter genannten Zahlen, sucht dann alle Wiki- und FAQ-Stellen, die dieses Destillat zitieren, und meldet jede Zitierstelle, an der weder der Vorbehalt noch eine Ableitung davon vorkommt. Zweitens eine **Abschlussregel fuer jeden Korrekturlauf**: eine Korrektur ist erst fertig, wenn ein `grep` auf den alten Wert oder die alte Formulierung ueber `wiki/` und `destillate/` null Treffer liefert. Der Indach-Fall zeigt, warum: dort wurde an drei Stellen korrigiert und an fuenf nicht.

### 04.3 Die Zahl kommt ohne ihr Alter beim Leser an

Betroffen: 35 von 37 Themenartikeln ohne `datenstand` (02.17), Preisstaende 2019 und 2020 ohne Teuerungsvorbehalt (03.7, 03.11), ein Formular, das per 31.12.2024 abgelaufen ist (03.9), ein Foerdertopf zu 92 Prozent ausgeschoepft (03.8), ein selbst gesetzter Pruefstichtag, der in einem abgehakten Eintrag verstrichen ist (02.9).

Mechanismus: das Pflichtfeld `datenstand` aus 02.17, dazu zwei Scripts. (1) **Alterswaechter**: meldet jede Zeile mit CHF-Betrag, Tarif oder Foerdersatz, in deren Umfeld keine Jahreszahl steht, und jedes Destillat, dessen `datenstand` aelter ist als eine je Themenfeld gesetzte Schwelle (Foerdersaetze 12 Monate, Marktpreise 18, Rechtsstaende bei Aenderung). (2) **Terminwaechter**: sucht in allen Dateien Datumsangaben in Verbindung mit Pruefsprache («nächste Prüfung», «Stand vom», «ab dem») und meldet alles, was vor heute liegt, unabhaengig davon, ob der umgebende Eintrag abgehakt ist. Verstrichene Termine wandern in `logbuch/fristen.md`, nicht in einen Laufbericht; das folgt Rule `auto-verbesserungen` 260805.

### 04.4 Das Statuswort traegt mehr Gewicht, als es verdient

Established auf einer Web-Synthese (02.12), auf einem undatierten Anbieter-Foliensatz, auf Marktpreisen; Statuswerte ausserhalb der Skala, die jede Pruefung umgehen; ein Register, das den Status zweitschreibt statt ableitet, und das viermal hoeher einstuft als das Destillat; elf nicht registrierte Destillate; vier doppelt destillierte Quell-PDFs, alle zwischen dem 19. und 23.08.2026 entstanden; zwanzig tote Verweise.

Mechanismus: ein **Konsistenz-Script** als erster Schritt jedes Laufs, das fuenf Dinge prueft und in Sekunden laeuft. Statuswert gegen geschlossene Skala (speculative, emerging, established, superseded; Begruendung nur in Klammern dahinter). Frontmatter gegen INDEX, wobei Registerzeilen mit mehreren Verweisen ausgenommen werden, sonst entstehen Fehlalarme. Dateien ohne Registerzeile. Linkgraph gegen die Dateinamen beider Ordner und der Schwester-KBs. Dubletten anhand des `quelle`-Feldes. Zusaetzlich in `wissen/energie/CLAUDE.md`: eine Statusaenderung wirkt an drei Orten, Frontmatter, Register, zitierender Wiki-Artikel, und im Register in der Statusspalte, nicht nur in der Begruendung.

---

## 05 Wie der Loop kuenftig laeuft

Der bisherige Antrieb war die Dateiliste zweier SharePoint-Ordner. Beide sind abgearbeitet, 324 Destillate liegen vor. Der Antrieb war mengengetrieben und hat genau die Eigenschaft, die dieses Audit teuer macht: er schaut nie zurueck.

Das Material belegt das direkt. Kein einziger der 38 Befunde liegt am Rand des Korpus, alle liegen im Bestand. Der schwerste Fund betrifft ein Destillat, das zweimal verifiziert wurde, zuletzt adversarial gegen das Produktreglement 2026.1, ohne dass jemand das Rechenbeispiel nachgerechnet haette. Der zweitschwerste ist eine Foerderung, die es nicht gibt, in einer Antwort, die seit 2020 unveraendert steht. Ein Mengenlauf haette in derselben Zeit das 325. PDF destilliert und beide Fehler unberuehrt gelassen. Was ein qualitaetsgetriebener Loop findet und ein mengengetriebener nicht, ist genau dies: den Widerspruch zwischen zwei bereits vorhandenen Dateien.

**Neuer Antrieb: eine Pruefwarteschlange statt einer Dateiliste.** Gespeist aus drei Quellen, in dieser Rangfolge: die offenen Punkte dieses Audits, `wiki/QUESTIONS.md`, und die Treffer der Scripts aus Abschnitt 04. Ein Lauf nimmt so viele Positionen, wie er sauber erledigen kann, und schliesst sie mit Beleg. Neue Quellen werden weiterhin destilliert, aber nachrangig und nur auf Anlass (neue Rechtslage, neue Programmversion, konkreter Projektbedarf).

**Die fuenf Pruefungen, die in jedem Lauf laufen:**

**05.1 Konsistenz-Script** (Klasse 04.4). Status, Register, Waisen, Linkgraph, Dubletten. Deterministisch, kein Modell noetig. Aufwand: unter einer Minute Laufzeit, rund 10 Minuten fuer die Durchsicht der Treffer.

**05.2 Kennzahlen-Plausibilitaet** (Klasse 04.1). Bezugsgroessen-Lexikon, Unmoeglichkeitsregeln, Tabellen-Nennerprobe. Aufwand: Laufzeit vernachlaessigbar, 15 bis 30 Minuten Lesen der Treffer, weil jeder Treffer im Umfeld beurteilt werden muss.

**05.3 Rueckwaerts-Diff Destillat gegen Erzeugnis** (Klasse 04.2). Beschraenkt auf die Destillate, die seit dem letzten Lauf einen Statuswechsel, eine Korrektur oder einen neuen ⚠-Satz erhalten haben, plus zehn rotierende aus dem Bestand. Das ist der eigentliche Kern des neuen Loops. Aufwand: rund eine Stunde je Lauf.

**05.4 Frischepruefung** (Klasse 04.3). Alterswaechter und Terminwaechter, Befunde mit Frist direkt nach `logbuch/fristen.md`. Aufwand: rund 20 Minuten.

**05.5 Ein Themenkreis im Volltext, rotierend.** Zwanzig der vierzig Themenartikel wurden in diesem Audit gar nicht beruehrt, 241 von 255 FAQ-Antworten nur maschinell gefiltert, 318 von 327 Destillaten nie geoeffnet. Je Lauf ein Themenkreis (etwa Fenster und Verglasung, Daemmstoffe, Schadstoffe, Lueftung), Artikel gegen die zitierten Destillate gelesen. Aufwand: ein bis zwei Stunden, und es ist die einzige Pruefung, die einen Fehler ohne Zahlenformat findet.

**Was dieser Loop weiterhin nicht kann.** Keine der sechs Dimensionen hat eine einzige Originalquelle geoeffnet. Dieses Audit sagt, dass die KB sich selbst widerspricht, es sagt nicht, ob ein Destillat sein PDF richtig wiedergibt. Diese Blindstelle ist gross und gehoert als sechster, seltener Schritt eingeplant, etwa quartalsweise fuer die zwanzig meistzitierten Destillate. Der Fall 02.2 zeigt sie exemplarisch: welcher Psi-Grenzwert im BFE-Katalog 2002 wirklich steht, ist ohne das Original nicht entscheidbar.

**Ehrlich zum Ertrag der Dimensionen.** Die Rechenpruefung hat vor allem bewiesen, dass die KB rechnen kann (alle 18 PV-Werte, alle 14 Foerder-Rechenbeispiele korrekt); ihre Befunde entstanden nicht aus der Arithmetik, sondern aus dem Vergleich mit den Quell-Destillaten. Die Statuskette lieferte zwei harte Befunde und ansonsten Hausordnung, ihr Ertrag liegt in der Praevention, nicht in der Korrektur. Die Begriffsdisziplin hatte die tiefste Trefferquote und den schwersten Einzelfund. Die drei ergiebigsten Dimensionen waren Aktualitaet, Widersprueche im Bestand und Belegkante, und alle drei sind genau die, die den Bestand gegen sich selbst halten. Der neue Loop sollte entsprechend gewichtet sein.

---

## 06 Geprueft und entkraeftet, nicht nochmals aufnehmen

Folgendes wurde untersucht und haelt nicht: die Forderung, jedes established-Destillat mit differenziertem Statusfeld auf die schwaechste Stufe zu senken (wuerde primaerquellenbelegtes Wissen abwerten, die gelebte Praxis ist richtig und wird stattdessen in `CLAUDE.md` festgeschrieben, Vorbild F87); die Behauptung, eine Statussenkung vom 23.08.2026 sei nicht ins Register nachgezogen worden (sie steht in derselben Zeile, nur in der Datenstand-Spalte); die Absenkung des Lambda-Destillats (der Themenartikel warnt bereits doppelt und gibt gar keine Produktwerte aus); die Absenkung des COP/SCOP/JAZ-Destillats (die Autoritaet ruht auf EN 14825:2013, nicht auf dem Traegerpapier); die Behauptung, F6 lenke Bauherren in ein Grundwasser-Konzessionsverfahren (die Entscheidungslogik nennt Grundwasser nachrangig und konditional); die Behauptung, die Formelunschaerfe in F13 aendere die Anlagengroesse (7,28 gegen 7,68 kW fuehrt auf dasselbe Geraet); die Behauptung, der Faustwert 1'000 kWh/kWp sei lagebedingt zu hoch (er ist ausrichtungsbedingt, ein Faustwert «Mittelland 850» waere ein neuer Fehler); die Korrektur der Einmalverguetung auf 330 CHF/kWp (die Zahl steht nirgends in der KB und waere selbst der gesuchte Fehlertyp); die Behauptung, «Unabhaengigkeit» stehe auch im Themenartikel und im INDEX als Etikett fuer die Eigenverbrauchsquote (beide sind richtig etikettiert, betroffen ist genau eine Stelle); die Behauptung, der Kanton Schwyz sei von der fehlenden Hoehenkorrektur breitflaechig betroffen (Kuessnacht, Lachen und Schwyz liegen unter 800 m, betroffen sind Einsiedeln, Rothenthurm und die Muotathaler Hoehenlagen); und die Behauptung, die GEAK-Kostenangabe muesse im Status abgesenkt werden (fuer einen Marktpreis existiert keine amtliche Quelle, drei unabhaengige Marktteilnehmer sind das erreichbare Maximum).

Ebenfalls geprueft und in Ordnung: die Trennung U-Wert gegen Psi gegen g-Wert und Uw/Ug/Uf, Waermedurchgang gegen Waermeleitfaehigkeit, COP gegen SCOP gegen JAZ, Leistung gegen Arbeit in Kostenangaben, die vier superseded-Destillate (alle sauber als historisch gekennzeichnet), die Doppelbeantwortung (vier Titelpaare geprueft, alle sachlich getrennt) und die Beleglage aller 257 FAQ-Bloecke (kein Block ohne Verweis; die 42 Bloecke F102 bis F144 ohne «Quelle:»-Zeile tragen durchgehend Inline-Beleg, Datenstand und Status, das ist ein Formatwechsel, kein Belegmangel).
