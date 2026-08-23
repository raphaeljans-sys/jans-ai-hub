---
title: U-Werte & Heizwärmebedarf — Grenzwerte Schweiz
status: established
last_updated: 2026-08-23 (Run 161: neuer Abschnitt «Einen fremden U-Wert-Rechenweg prüfen —
  vier Griffe», aus der Prüfung einer KI-erzeugten U-Wert-Rechnung in der Referenzablage PL-04;
  23.08.2026 interaktive Session: Griff 02 nachgeführt, E-R161-1 (ruhende Luftschicht) geschlossen,
  schwach belüftete Zwischenstufe bleibt offen)
sources: [destillate/enfk-en-102-waermeschutz-2018.md, destillate/enfk-en-02-waermeschutz-2013.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/bauphysik-heizwaermebedarf-kennwerte.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md, destillate/waermebrueckenkatalog-bfe-balkonplatte.md, destillate/muken-2025-verabschiedet.md, destillate/waermebrueckenkatalog-bfe-flachdach-ohne-vordach.md, destillate/waermebrueckenkatalog-bfe-steildach-traufe-ort.md, destillate/waermebrueckenkatalog-bfe-auskragung.md, destillate/waermebrueckenkatalog-bfe-rollladenkasten.md, destillate/waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz.md, destillate/sia-380-1-2016-aenderungen-gegenueber-2009.md, destillate/ki-generierte-fachdokumente-referenzablage.md]
links: [[INDEX]], [[BAUHERREN-FAQ]]
---

# U-Werte & Heizwärmebedarf — Grenzwerte Schweiz

Themenartikel zu den verbindlichen Anforderungen des winterlichen Wärmeschutzes. Faktenbasis:
EnFK-Vollzugshilfe EN-102 (Dez 2018, SIA 380/1:**2016**).
(⚠ Korrektur Wissens-Chef Run 35, 17.08.2026: hier stand «SIA 380/1:2009». EN-102 fusst auf der
Ausgabe **2016** — belegt im eigenen Destillat `[[enfk-en-102-waermeschutz-2018]]` Z. 4 aus der
Fusszeile jeder PDF-Seite; die auf 2009 fussende Vollzugshilfe ist das **andere** Dokument EN-2
(Feb. 2013). Der irrefuehrende SharePoint-Dateiname `…_3801_2009_2018Dez.pdf` hatte denselben
Fehler schon einmal in `planungsgrundlagen` erzeugt, wo er am 25.07.2026 korrigiert wurde.)

> **Querbezug KB normen (Fundstelle/Ausgabe SIA 380/1):** Norm-Fundstelle und Gültigkeitsstand
> führt das normen-Register `wissen/normen/wiki/REGISTER` (Zeile 204 SIA 380/1). Ausgaben-Kette:
> 1988→2001→2007→2009→**2016**; Kt. ZH heute **SIA 380/1:2016** (dieser Artikel), die Register-
> Tabellenzeile führt die 2013-Benchmark-Ausgabe **2009** mit Fussnoten-Verweis auf 2016.

## Die zwei Nachweiswege
- **Einzelbauteilnachweis** — feste U-Wert-Grenzwerte je Bauteil. Einfach, aber jede Anforderung
  muss einzeln eingehalten sein.
- **Systemnachweis** — Heizwärmebedarf Q_H über die ganze Hülle; U-Werte frei wählbar,
  solange Q_H,li eingehalten ist. Zwingend, wenn Einzelwerte reissen oder bei Vorhangfassaden /
  Sonnenschutzglas g < 0,3.

## U-Wert-Grenzwerte (W/(m²·K)) — Einzelbauteilnachweis
| Bauteil | Neubau aussen | Neubau unbeheizt/Erdreich | Umbau aussen | Umbau unbeheizt/Erdreich |
|---|---|---|---|---|
| Opak (Dach/Decke/Wand/Boden) | 0,17 | 0,25 | 0,25 | 0,28 |
| Fenster, Fenstertüren | 1,0 | 1,3 | 1,0 | 1,3 |
| Türen | 1,2 | 1,5 | 1,2 | 1,5 |
| Tore (SIA 343) | 1,7 | 2,0 | 1,7 | 2,0 |
| Storenkasten | 0,50 | 0,50 | 0,50 | 0,50 |

Neue Bauteile beim Umbau (z.B. ein ganz ersetztes Fenster) erfüllen die **Neubau**-Werte.
Quelle/Detail: `[[enfk-en-102-waermeschutz-2018]]`.

## Wärmebrücken
Grenzwerte Ψ: Typ 1 (Auskragung) 0,30 · Typ 2/3 (Dämmunterbrechung / Kanten) 0,20 ·
Typ 5 (Fensteranschlag) 0,15 · χ Typ 6 (Punktdurchdringung) 0,30 W/K. Beim Einzelbauteilnachweis
im Umbau ohne Grenzwert, beim Systemnachweis in Q_H einzurechnen.

**Konkretes Beispiel Typ 1 (Balkonplatte), BFE-Wärmebrückenkatalog 2002:** durchbetoniert
(keine thermische Trennung) Ψ 0,6-1,05 W/(m·K) — 2-3x über dem Grenzwert 0,30; Stahlkorb-Anschluss
0,20-0,26; Dorn-/Konsolensystem 0,06-0,14 — beide Systeme unter dem Grenzwert. Details/Tabellen
→ `[[waermebrueckenkatalog-bfe-balkonplatte]]` (FAQ F48). ⚠ Katalog-Zahlenbasis 2002/SIA 380/1:2001,
Grenzwert-Grössenordnung gilt weiter, exakter Wert vor Baueingabe an aktueller Norm prüfen.

**Fensteranschluss (Gruppe 4.1):** Ψ 0,08-0,36 W/(m·K) — massgebender Grenzwert heute Ψ ≤ 0,15
(Typ 5, siehe Z. 48 oben); der Katalog von 2002 rechnet gegen die ältere SIA 380/1:2001, der dort
zitierte Grenzwert 0,30 ist nicht am Original verifiziert (⚠ Audit-Korrektur A-P2 02.2,
24.08.2026). Aussenanschlag mit Zwischenleibungsdämmung schneidet klar besser ab als reiner
Innenanschlag; Stahlbetonsturz-Malus bis +0,14 W/(m·K) bei dünner Sturzdämmung (2 cm), auf +0,02
senkbar mit 6 cm → `[[waermebrueckenkatalog-bfe-fensteranschluss]]` (FAQ F49).

**Sockel (Gruppe 3.4):** bei **unbeheiztem** Keller meist nahe/unter Grenzwert 0,20; bei
**beheiztem** Keller mit reiner Aussendämmung eine der grössten Wärmebrücken am Gebäude —
Dämmtiefe unterhalb UK Kellerdecke entscheidet: 20 cm → Ψ 0,61 (~3× Grenzwert), 80 cm → Ψ 0,30
(~1,5×, bleibt trotzdem drüber); erst durchgehende Perimeterdämmung der ganzen Kellerwand
bringt den Wert in Grenzwertnähe → `[[waermebrueckenkatalog-bfe-sockel]]` (FAQ F50).

**Flachdach mit Vordach (Gruppe 1.2):** durchbetoniertes, ungedämmtes Vordach Ψ 0,40-0,53
(1,3-1,8× über Grenzwert 0,30) — Grössenordnung wie die durchbetonierte Balkonplatte; mit
Dorn-Anschluss (thermisch getrennt statt durchgehende Platte) sinkt der Wert auf praktisch null
oder leicht negativ (−0,08 bis 0,04) → `[[waermebrueckenkatalog-bfe-flachdach-vordach]]`.

**Flachdach mit Brüstung (Gruppe 1.3):** hier dominiert das **Material** über die Dämmung —
eine Backstein-Brüstung liegt praktisch immer (auch ungedämmt: Ψ 0,02-0,09) unter dem
Grenzwert 0,30, eine durchgehende Stahlbeton-Brüstung dagegen selbst gedämmt meist darüber
oder knapp darunter (Ψ 0,12-0,26) → `[[waermebrueckenkatalog-bfe-flachdach-bruestung]]`.

**Flachdach ohne Vordach (Gruppe 3.1):** ohne Deckendämmeinlage Ψ 0,44-0,60 (bis 3× Grenzwert
0,20) — **durchgehende Dämmung** über die Deckenkante hinweg macht den Wert negativ, schon eine
schmale 4-6 cm Stirndämmung senkt ihn unter den Grenzwert → `[[waermebrueckenkatalog-bfe-flachdach-ohne-vordach]]`.

**Steildach Traufe + Ort (Gruppen 3.2/3.3):** anders als beim Flachdach durchweg **unkritisch**
— bei durchgehender Sparrendämmung liegen ALLE Varianten bei null oder deutlich negativ (−0,01
bis −0,16), weil die Dämmebene in derselben Ebene wie die Wanddämmung liegt und keine
Materialbruch-Wirkung wie bei einer auskragenden Betondecke entsteht
→ `[[waermebrueckenkatalog-bfe-steildach-traufe-ort]]`.

**Auskragung allgemein (Gruppe 3.5, Boden über unbeheiztem Raum, kein Balkon-Isokorb-System):**
Ψ 0,04-0,29 je nach Unterlagsbodendämmung — ab 6 cm Dämmung meist unter Grenzwert 0,20;
zusätzliches Mauerfusselement senkt den Wert um weitere 0,05-0,07
→ `[[waermebrueckenkatalog-bfe-auskragung]]`.

**Rollladenkasten (Gruppe 4.2):** Ψ 0,18-0,26 — knapp unter Grenzwert 0,30, aber ohne grosse
Reserve; Fenstertyp macht kaum Unterschied (max. 0,02), der Kasten selbst dominiert
→ `[[waermebrueckenkatalog-bfe-rollladenkasten]]`.

**Fensterleibung/-brüstung/-sturz (Gruppen 5.1-5.3, strengerer Grenzwert 0,10):** durchweg
knapp unter Grenzwert bei **aussenbündigem** Fenstereinbau, darüber bei Innenanschlag;
**ungedämmte Fensterbank** ist mit +0,20 der grösste Einzelfehler im ganzen Katalog;
Stahlbetonsturz statt Backstein kostet bis +0,08
→ `[[waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz]]`.

**Stützen/Fassadenanker (Gruppe 6, andere Systematik — punktbezogener X-Wert in W/K statt
Ψ in W/(m·K); vollständig, alle 22 Fassadenanker-Systeme durchgerechnet):** durchstossende
Stahlstütze 0,20-0,37 W/K (teils über Grenzwert 0,30 je Durchstossung), dieselbe Stütze in
Stahlbeton nur 0,05-0,12 W/K; Fassadenanker hinterlüfteter Fassaden als **ΔU-Wert-Zuschlag** auf
die Wand gerechnet: Holzlattung durchgehend nur +0,02-0,03 W/(m²·K), Metallsysteme (Alu/Stahl/
ATK/Clickpress/Halfen/A-PL/UK1000/WSZ) mit thermischer Trennung +0,01-0,19 W/(m²·K), **ohne**
thermische Trennung im engen Raster auf Stahlbeton bis **+0,57 W/(m²·K)** (Extremwert der Gruppe,
mehr als der U-Wert-Zielwert einer ganzen gedämmten Aussenwand)
→ `[[waermebrueckenkatalog-bfe-stuetzen-fassadenanker]]`.

**Geschossdecke/Kellerdecke/Innenwandanschluss (Gruppe 2, Grenzwert 0,20, kleinste Detailgruppe,
vollständig):** Innenwand-Auflager auf Geschossdecke durchbetoniert Ψ 0,63-0,89 — der **höchste
Einzelwert eines Standarddetails im ganzen Katalog** —, Stahlkorb-Anschluss senkt auf 0,07-0,15;
Wandanschluss an Kellerdecke 0,23-0,26 (Wand durchgehend) bzw. −0,02-0,14 (Wand endet an
Kellerdecke); Innenwandanschluss an Aussenwand 0,11-0,24 (Backstein unkritisch, Stahlbeton bei
gut gedämmter Aussenwand über Grenzwert) → `[[waermebrueckenkatalog-bfe-geschossdecke-kellerdecke]]`.

**Damit ist Curriculum-Punkt A4 (Wärmebrückenkatalog) mit allen sechs Hauptgruppen mindestens
einmal zahlenbasiert belegt** (Gruppe 2 war in den bisherigen Läufen unbeachtet geblieben, obwohl
die anderen fünf Gruppen bereits als abschliessend gemeldet waren — hiermit korrigiert).

## Heizwärmebedarf Q_H
Formel und Bilanz: `[[sia-380-1-heizwaermebedarf-berechnung]]`
(Q_h = Q_T + Q_V − η_g·(Q_i + Q_s)). Grenzwert je Kategorie: Q_H,li = Q_H,li0 + ΔQ_H,li·(A_th/A_E),
Klima 9,4 °C / Auslegung −8 °C. Werte (kWh/m²) → EN-102 Tab. 5;
(⚠ Korrektur Run 35, 17.08.2026: hier stand «8,5 °C», der Wert der Ausgabe 2009. Das Destillat
`[[enfk-en-102-waermeschutz-2018]]` Z. 69-70 nennt fuer dieselbe Tabelle 5 die
Jahresmitteltemperatur **+9,4 °C** — konsistent mit dem Delta-Abschnitt weiter unten.) Kennwerte in MJ/m²·a inkl.
**Gebäudehüllzahl** und Ziel- vs. Grenzwert → `[[bauphysik-heizwaermebedarf-kennwerte]]`.
Umbau/Umnutzung: Grenzwert = 1,5 × Neubau.

## Gebäudehüllzahl A_th/A_E (Kompaktheit)
Therm. Hüllfläche je m² EBF. Kleinbauten ~3, kompakte Grossbauten ~0,8 → Verlustfläche beim
Kleinbau bis 4× grösser. **Kompakt bauen ist die billigste Energiemassnahme.**

## Energiebezugsfläche EBF (A_E) — der Nenner aller Kennzahlen
EBF (SIA 416/1:2007) = Summe aller Geschossflächen, deren Nutzung **Beheizen/Klimatisieren**
erfordert, **brutto** gemessen; lichte Raumhöhe < 1,0 m zählt nicht. **Dazu** (auch unbeheizt,
falls in der therm. Hülle): HNF, abgeschlossene Treppenhäuser/Korridore, Sanitär/Garderoben,
Schächte/Abstellräume < 10 m². **Nicht dazu:** Garagen/Fahrzeugflächen, Schutzräume,
betriebstechnische Räume, Abstellräume (auch wenn beheizt). Wer die EBF falsch abgrenzt, rechnet
Q_H, Minergie-Kennzahl **und** PV-Pflicht (10 W/m² EBF) falsch. Detail → `[[enfk-en-02-waermeschutz-2013]]`.

⚠ **Fassungsvermerk (Wissens-Chef Run 37, 19.08.2026):** **SIA 416/1:2007 ist zurückgezogen** (gültig 01.07.2007 bis 31.03.2015), ersetzt durch **SIA 380:2015** (SN 504380:2015). Belegt an zwei Primärquellen (SIA-Shop-Produktdatenblatt «archivierter Titel»; Titelblatt der SIA 380:2015 «Ersatz für SIA 416/1:2007»), Normen-Nacht Run 57. **SIA 380:2015 liegt nicht im Haus** (Ticket `N57-2`). Der EBF-**Begriff** lebt in der Nachfolgenorm weiter — überholt ist die **Fundstelle**, nicht zwingend die Abgrenzung. Ob der kantonale Vollzug (EVEN/EnFK) seinen statischen Verweis nachgeführt hat, ist **nicht geprüft**.
⚠⚠ **KORREKTUR 23.08.2026 (KB `normen`, SIA-Sweep zehnte Fortsetzung):** **SIA 380:2015 ist selbst bereits archiviert** — gültig nur 01.04.2015 bis 31.10.2022 (Primärquelle `shop.sia.ch/normenwerk/architekt/380_2015_d`). Die seither gültige Ausgabe ist **SIA 380:2022** (gültig ab 01.11.2022, 60 S., 180.00 CHF, `shop.sia.ch/normenwerk/architekt/380_2022_d`). Die Bring-Schuld N57-2 zielt jetzt auf SIA 380:2022, nicht mehr auf SIA 380:2015 — weder die eine noch die andere Ausgabe liegt im Haus. Details: KB `normen`, `wiki/REGISTER.md` Zeile SIA 380, `wiki/QUESTIONS.md` N57-2.

## ⚠ Versionsabgleich EN-2 (2013, SIA 380/1:2009) ↔ EN-102 (2018)
Zwischen den EnFK-Vollzugshilfen-Ausgaben gibt es Abweichungen — für den Nachweis gilt die im
Kanton aktuell verbindliche Ausgabe (ZH heute SIA 380/1:2016 / EVEN):
- **Fenster-Grenzwert Neubau:** EN-2 (2013) **1,3** → EN-102 (2018) **1,0** (verschärft).
- **Umbau-Heizwärmebedarf Q_h,li:** EN-2 (2013) **1,25 × Neubau** ↔ oben geführt 1,5 × (EN-102 2018);
  vor dem Zitieren konkret gegen die geltende Ausgabe prüfen.
- **Wärmebrücke Fensteranschlag Ψ (Typ 5):** EN-2 (2013) **0,10** ↔ 0,15 (EN-102 2018).
Die **Q_h,li-Grundwerte** (Wohnen MFH 55 / EFH 65 / Verwaltung 65 … MJ/m²) sind in beiden Ausgaben identisch.

**Was die Norm SIA 380/1:2016 selbst gegenüber SIA 380/1:2009 ändert** (belegt aus Sekundärquellen,
SIA-Shop-Metadaten + espazium.ch-Fachartikel Mennel/Friedli 2017, Norm-Volltext nicht gekauft):
Referenz-Jahresmitteltemperatur neu **9,4 °C** (statt 8,5 °C) nach SIA 2028, Temperaturkorrektur neu
**6 %/K** (statt 8 %/K); Gebäudehüllzahl von den b-Werten entkoppelt; Bauteilanforderungen an
MuKEn 2014 verschärft; neues Lüftungs-Berechnungsmodell (Betriebsweise Lüftungsanlage im
projektspezifischen Nachweis, nicht aber im Grenzwertvergleich); 16 Himmelsrichtungen statt weniger;
Umkehrdach-Pauschalzuschlag gestrichen → `[[sia-380-1-2016-aenderungen-gegenueber-2009]]`.
Die konkreten neuen Q_H,li0/ΔQ_H,li-Zahlenwerte je Nutzungskategorie bleiben ohne Norm-Volltext
weiterhin offen.

## Einen fremden U-Wert-Rechenweg prüfen (vier Griffe)

Neu 23.08.2026 (Run 161). Anlass war eine **KI-erzeugte U-Wert-Rechnung**, die in der
JANS-Referenzablage lag und deren Ergebnis nur rund 8 % daneben lag — bei drei methodischen
Fehlern, die sich gegenseitig fast aufhoben (→ `[[ki-generierte-fachdokumente-referenzablage]]`,
FAQ F257). Weil solche Rechnungen zunehmend von Bauherrschaften und Unternehmern mitgebracht
werden, hier die Prüfreihenfolge, die den Fall aufgedeckt hat. Sie gilt für **jede** fremde
Rechnung, nicht nur für KI-erzeugte.

**01 Sind R_si und R_se drin?** Die Formel lautet U = 1 / (R_si + Σ d/λ + R_se), mit
**R_si 0,13 · R_se 0,04 m²K/W** für eine Aussenwand (belegt →
`[[clt-bauphysik-stora-enso]]`). *Schnelltest:* ist der Kehrwert der blossen Schichtsumme exakt
das ausgewiesene Resultat, wurden die Übergangswiderstände vergessen. Das rechnet den Aufbau
**schlechter**, als er ist.

**02 Wie ist eine Luftschicht behandelt?** Ein λ für eine Luftschicht ist immer falsch — nach
**SN EN ISO 6946** bekommt sie einen tabellierten Wärmedurchlasswiderstand (Dicke,
Wärmestromrichtung, Belüftungsgrad). Für **ruhende** Luftschichten liegt der Tabellenwert seit
23.08.2026 belegt in der KB (→ `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`, Kap. 2.3.3,
Tabelle 3: horizontal 0,18 m²K/W bei 25-100 mm, konstant): E-R161-1 damit geschlossen. Offen
bleibt nur die **schwach belüftete** Zwischenstufe (weder ruhend noch stark belüftet/hinterlüftet)
— dafür fehlt weiterhin der Normtext SN EN ISO 6946 selbst.

**03 Steckt eine hinterlüftete Vorsatzschale im Aufbau?** Bei einer **stark belüfteten**
Luftschicht entfallen nach derselben Norm die Luftschicht **und alle Schichten aussen davon**;
aussen wird statt R_se nochmals R_si angesetzt. Vorgehängte Bekleidung, Lattung und
Hinterlüftung tragen dann **null** bei. Sie trotzdem mitzurechnen macht den Aufbau **besser**,
als er ist — und kompensiert damit oft genau den Fehler aus Griff 01.

**04 Woher stammt jedes λ?** Der stillste Fehler: ein Produkt namentlich nennen und dann mit
einem Rundwert rechnen, der in keiner Herstellerunterlage steht. Belegte Werte →
`[[daemmstoffe-lambda]]`, `[[sia-2001-waermedaemmstoffe-lambda]]`; Bauteilaufbauten →
`[[vorgehen-bauteilekatalog-u-wert]]`, `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`.

**Und danach die Frage, die keine Rechnung beantwortet:** ist der Zielwert überhaupt der
richtige? Im Anlassfall wurde ein U-Wert von 0,5 W/m²K als «gefordert» gesetzt — zulässig für
ein unbeheiztes Biwak ausserhalb SIA 380/1, für jedes reguläre beheizte Gebäude aber rund
**dreimal** über dem Grenzwert von 0,17 der Tabelle oben. Woher der Zielwert kommt, gehört in
jede Rechnung hineingeschrieben.

## Datenstand / Aktualität
⚠ Werte SIA 380/1:**2016** / EN-102 2018 (Ausgabe-Zuordnung korrigiert Run 35, 17.08.2026). Kt. ZH operativ über EnerG seit **1.9.2022** (MuKEn 2014).
**MuKEn 2025** von der EnDK am **29.08.2025** verabschiedet (Details, Änderungen ggü. 2014,
Umsetzungshorizont 2025-2030 → `[[muken-2025-verabschiedet]]`), kantonale Umsetzung ZH (Stand
2026-07-12) weiterhin ausstehend → bei konkreten Grenzwert-Zitaten aktuellen ZH-Stand verifizieren.

Siehe auch: `[[minergie-standards]]`, Bauherren-FAQ F3.
