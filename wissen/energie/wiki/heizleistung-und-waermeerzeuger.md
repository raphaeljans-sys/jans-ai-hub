---
title: Heizleistung & Wärmeerzeuger-Dimensionierung
status: established
last_updated: 2026-08-18 (Nachtschicht Mac Mini — § 357 PBG Wärmeerzeuger-Ersatzpflicht + Heizzentralen Überbauungen ergänzt, F244)
sources: [destillate/raumtemperatur-richtlinie-stadt-zuerich-2006.md, destillate/bfe-waermeerzeugerleistung-2015.md, destillate/sia-380-1-standardnutzungswerte-tab24-25.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/wta-formular-zh-waermetechnische-anlagen.md, destillate/waermepumpe-systemvergleich.md, destillate/fawa-jaz-feldanalyse-waermepumpen.md, destillate/wpz-buchs-feldmessung-jaz-2016-2019.md, destillate/cop-scop-jaz-waermepumpe-gruenenwald.md, destillate/sia-384-3-wpesti-jaz-methode.md, destillate/heizsysteme-vollkostenvergleich-energieschweiz.md, destillate/kaeltemittel-r290-waermepumpen-ch.md, destillate/erdwaermesonden-bewilligung-zh-sz.md, destillate/waermepumpen-system-modul-wpsm-heizkoerper-altbau.md, destillate/vollzugshilfe-en10-heizungen-im-freien.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[u-werte-grenzwerte-ch]], [[wta-formular-zh-waermetechnische-anlagen]]
---

# Heizleistung & Wärmeerzeuger-Dimensionierung

> Wie gross muss die Heizung sein — und warum «so klein wie möglich, so gross wie nötig»?
> Grundlage für FAQ F13 und F6 (Systemwahl).

## Das Wichtigste
Die **Heizleistung [kW]** ist nicht dasselbe wie der **Heizwärmebedarf [MJ/m²·a]**: Leistung =
was am kältesten Tag bereitstehen muss, Bedarf = was übers Jahr zusammenkommt. Aus dem Bedarf
allein lässt sich die Leistung **nicht** genau ableiten — sie wird über die Norm-Heizlast
(Neubau, SIA 384.201) oder den Verbrauch (Sanierung) bestimmt.

## Zwei Wege zur Leistung
- **Sanierung (Verbrauchsmethode):** Φ = (man·GCV/tan)·(ηalt/ηneu)·ηneu.
  Volllaststunden tan: **2300 h** (nur Heizung) bzw. **2700 h** (Heizung + Warmwasser), bis 800 m;
  darüber +300 h. Gilt nur für **gleichartigen** Ersatz.
- **Neubau (Norm-Heizlast):** Φ = ΦHeizlast + ΦWarmwasser + Φverbundene Systeme.
  Warmwasser-Zuschlag: **MFH 3 / EFH 2 / Verwaltung 1 W/m²** EBF.

## Brennwerte (GCV) & Jahresnutzungsgrade
| Energieträger | GCV | ηan neu |
|---|---|---|
| Stückholz Hart-/Weichholz | 2500 / 1800 kWh/rm | 65–75 % |
| Holzschnitzel (W 30 %) | 750–1250 kWh/Srm | 65–75 % |
| Pellets | 5,2–5,5 kWh/kg | 65–75 % |
| Heizöl EL | 10,5 kWh/l | 85–95 % (kond.) |
| Heizgas | 10,4 kWh/m³ | 85–95 % (kond.) |

(Wärmepumpe nicht in der Quelle — WP über Norm-Heizlast/JAZ separat; → F6 offen.)

## Kontrollwert: spezifische Heizleistung (W/m² EBF)
| Gebäudetyp | W/m² |
|---|---|
| Bestand schlecht gedämmt | 50–70 |
| Bestand gut gedämmt | 40–50 |
| Neubau nach Vorschrift | 25–40 |
| Minergie | 20–30 |
| Minergie-P | 8–20 |

## Bauherren-Transfer
- **Faustregel:** Neubau-EFH ~25–40 W/m² → 150 m² ≈ **4–6 kW**. Altbau locker das Doppelte.
- **Nicht 1:1 ersetzen:** alte Kessel waren oft 1,5–2× zu gross; korrekt (knapp) dimensioniert
  läuft die neue Anlage effizienter und hält länger.
- **Hülle zürst:** bessere Dämmung → kleinere Leistung → günstigerer Erzeuger; bei WP zudem
  tiefere Vorlauftemperatur → höhere Jahresarbeitszahl.

## Heizungsersatz im Kt. ZH — Verfahren & Beilagen (Bewilligung)
Der Erzeuger-Ersatz ist meldepflichtig (**Gesuch-/Meldeformular wärmetechnische Anlagen**, beim
Gemeindebauamt). Beilagen je Quelle: **Luft-WP → Lärmschutznachweis LN-1a**; **Erdsonde/Grundwasser
→ AWEL-Gewässerschutzgesuch**; **Fernwärme → Wärmetauscher-Meldung**; **Neubau → immer EN-103**.
Energierecht: **fossil im Neubau verboten (§ 11 Abs. 1 EnerG)**, im Bestand nur mit **EN-LCC-ZH + EN-120**;
neue Heizflächen auf **max. 35 °C Vorlauf** (§ 23 BBV I) — die Bedingung für eine effiziente WP.
Details → `[[wta-formular-zh-waermetechnische-anlagen]]` / FAQ F14. ⚠ seit 1.1.2026 Vollzug über EVEN.

## Was ein Wärmeerzeuger-Ersatz über die Anlage hinaus auslöst — § 357 PBG (F244)
Der Ersatz eines Wärmeerzeugers ist mehr als ein Kesseltausch: § 357 Abs. 4 PBG verlangt
**soweit zumutbar** zusätzlich Instrumentierung (§ 24 BBV I), Warmwassertemperatur ≤ 60 °C
(§ 26 BBV I), Dämmung von Verteilleitungen/Armaturen/Pumpen in unbeheizten Räumen, Stilllegung
bestehender **Garagenheizungen** nichtgewerblicher Fahrzeugeinstellräume und Anpassung von
Freiluftbad-/Aussenheizungen. Bei Arealüberbauungen **ab drei Baukörpern** kommt die Pflicht zur
standortgerechten, gemeinsamen Heizzentrale hinzu (§ 295 Abs. 1 PBG) — Vorsorgepflicht für eine
spätere Abwärme-/Fernwärmenutzung, aber keine Nutzungspflicht selbst (Abgrenzung zur echten
Anschlussverpflichtung `[[fernwaerme-anschlusspflicht-zh]]`, § 295 Abs. 2 PBG).
Quelle: `[[vollzugsordner-energie-zh-abschnitt4-1]]` (AWEL Vollzugsordner Energie ZH, Abschnitt
4.1, Stand Juni 2013 — §§-Verweise gegen aktuelle Fassung nicht geprüft, nur Systematik belegt).

## Heizsystem-Wahl: WP ↔ Fernwärme ↔ Pellets (F6)
Die **Jahresarbeitszahl (JAZ)** = gelieferte Wärme je kWh Strom übers Jahr ist die praxisrelevante
Effizienzkennzahl. Drei Kennzahlen auseinanderhalten: **COP** = einzelner Labor-Prüfpunkt (kein
Maschinenvergleich), **SCOP** = saisonal nach EN 14825, aber mit Klima Strassburg → für CH **~5-7 %
zu hoch**, **JAZ** = im Feld über das Jahr gemessen (→ `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
**Feldbeweis CH — moderne Geräte (WPZ Buchs/EnergieSchweiz, 13 drehzahlvariable Anlagen 2017-2019):**
gemessene JAZ **inkl. Warmwasser** je Vorlauftemperatur — Luft/Wasser **3,5 / 3,1 / 2,8** (Neubau 30 /
Sanierung 40 / Altbau 50 °C), Sole/Wasser **4,9 / 4,6 / 4,3**; SWWP behalten ~**30 %** Vorsprung selbst
ggü. modernen drehzahlvariablen LWWP und bleiben bei Sanierung (JAZ > 4) sehr effizient →
`[[wpz-buchs-feldmessung-jaz-2016-2019]]`. Die ältere **BFE/FAWA** (236 Anlagen, 2004: S/W Ø 3,5 vs.
L/W Ø 2,7, +32 %) liefert die zeitlosen Planungslehren: Sanierung −9 % (Vorlauftemperatur +5 K), Regler
mit Raumtemperatur-Aufschaltung +8 %, technische Speicher ohne JAZ-Nutzen, S/W oft zu gross ausgelegt →
`[[fawa-jaz-feldanalyse-waermepumpen]]`. Richtwerte je WP-Typ (Bandbreiten, Stand 2026):

| WP-Typ | JAZ-Richtwert | Bedingung |
|---|---|---|
| Luft-Wasser | ~2,5–3,5 (modern bis 4,0) | günstigste Investition; Schall/Nachbarschaft (LN-1a/1b) |
| Sole-Wasser (Erdsonde) | ~4,0–4,5 | Bohrung + AWEL-Gesuch; höhere Förderung |
| Wasser-Wasser (Grundwasser) | ~5 | nur wo Grundwasser bewilligt nutzbar |

Entscheidungslogik: **Fernwärmenetz da → Fernwärme** (kein Erzeuger/Unterhalt im Haus); **sonst
Neubau → Luft-Wasser-WP** Standard, bei Budget/Platz **Erdsonden-WP** (höhere JAZ + Förderung);
**Grundwasser nutzbar → Wasser-Wasser-WP**; **WP technisch schwierig → Pellets** (η ~90 %, aber
Lagerraum/Feinstaub/Feuerpolizei) oder **erst Hülle dämmen, dann WP**. Die **verbindliche projektgenaue**
WP-Effizienz rechnet das **kostenlose** Tool **WPesti** (basiert auf **SIA 384/3**, Ausgabe **2021**;
Download endk.ch) aus dem SIA-380/1-Nachweis + WP-Typ + Einbauart — die so bestimmte JAZ liegt bei gut
ausgelegten Anlagen **oft deutlich höher** als die Tabellen-Richtwerte (→ `[[sia-384-3-wpesti-jaz-methode]]`).
⚠ JAZ-Bandbreiten = Richtwerte, projektgenau via WPesti/SIA 384/3:2021; Förder-Mindest-JAZ
kantonsabhängig. Details → `[[waermepumpe-systemvergleich]]` / FAQ F6.

## Kältemittel R290 (Propan) — Regulatorik & Brandschutz (F72)
Die Schweiz stellt die Kältemittel-Regulierung ab **2027** (Einfuhr 1.1./Abgabe 1.7., ChemRRV Anh.
2.10, revidiert 29.10.2025) so um, dass natürliche Kältemittel wie **Propan R290 (GWP 3)** für
neue Wärmepumpen kleiner/mittlerer Leistung faktisch zum Standard werden; synthetische Kältemittel
mit hohem GWP (R410A GWP 2'088, R32 GWP 675) werden gestaffelt eingeschränkt. **Bestandsschutz:**
laufende Anlagen dürfen unverändert weiterbetrieben/nachgefüllt werden. Propan ist als **A3**
(brennbar) klassiert: ab **0,15 kg** Füllmenge pro Kreislauf braucht eine Innenaufstellung
zusätzliche Massnahmen (Belüftung/Gaswarnanlage/belüftetes Gehäuse), ab **1,5 kg** greift die
EKAS-Richtlinie 6517. Aussenaufstellung ist regulatorisch der einfachere Weg (Gefahrenbereich frei
von Öffnungen/Zündquellen halten); Alternative **Hydrosplit** (Kältekreis bleibt aussen, nur
Wasser-Glykol-Kreislauf ins Gebäude). **Effizienz (Run 67):** BAFU/EnergieSchweiz-Kältemittel-Fibel
zeigt für Klimakälte tendenziell **höhere Effizienz von R290 gegenüber R32/R410A** (EER-Vergleich),
belastbare Heizbetrieb-SCOP/JAZ-Zahlen fehlen aber weiterhin. **CHF-Mehrkosten** R290 vs. R32/R410A
bleiben trotz gezielter Nachrecherche unbelegt (nur widersprüchliche Marketing-Quellen). Details →
`[[kaeltemittel-r290-waermepumpen-ch]]`, FAQ **F72**.

## Erdwärmesonden — Bewilligung Kt. ZH/SZ (F71)
Jede Erdsonden-WP braucht eine **gewässerschutzrechtliche Bewilligung**: in ZH via Gemeinde/AWEL
(Bohrtiefe max. 500 m, Grenzabstand 2,5 m, in Grundwasserschutzzonen S1/S2 faktisch ausgeschlossen,
im Gewässerschutzbereich Au bewilligungspflichtig), in SZ über eine kostenlose Vorabklärung beim
Amt für Umwelt und Energie + eBau-Baugesuch. **Rechtsgrundlage ZH (Korrektur Wissens-Chef Run 20,
29.07.2026):** § 44 Abs. 1 lit. a Ziff. 3 WsG (LS 724.1; für die Bohrung zusätzlich lit. f) und
§ 92 WsV (LS 724.11), beide in dieser Fassung in Kraft seit **01.06.2026**. Die bis Run 67 hier
zitierten § 35/§ 69 KGSchV (LS 711.11) sind **per 01.01.2022 aufgehoben** und nur noch historisch
(bis 31.12.2021) einschlägig. **Gebühr ZH:** keine Pauschale, reine **Aufwandgebühr** (§ 209 WsV
verweist auf die GebV UR, LS 710.2: Zeit-Mitteltarif abzüglich 20 %) mit gesetzlicher **Obergrenze
CHF 25'000** pro Einzelfall (§ 10 GebV UR, ⚠ Fassungsstand noch zu verifizieren); für ein
EFH-Standardgesuch dürfte der effektive Betrag deutlich darunter liegen. Details → `[[erdwaermesonden-bewilligung-zh-sz]]`,
FAQ **F71**.

## WPSM-Zertifikat und die Heizkörper-/Altbau-Frage (F154)
Wer im Kanton Zürich oder Schwyz eine Öl-, Gas- oder Elektroheizung durch eine Wärmepumpe bis
ca. **15 kW** ersetzt und die kantonale Förderung beanspruchen will, braucht zwingend ein
**WPSM-Anlagezertifikat** (Wärmepumpen-System-Modul, CHF 350 zzgl. MWST) — ein von suissetec, FWS,
Gebäudeklima Schweiz, SWKI und EnergieSchweiz gemeinsam getragenes Qualitätssicherungsverfahren.
Für Anlagen >15 kW gilt stattdessen das **FWS-Gütesiegel + Leistungsgarantie EnergieSchweiz**. Das
WPSM prüft die **gesamte Anlage inklusive Wärmeabgabesystem** — also auch die Eignung der
bestehenden Heizkörper im Sanierungsfall — und begleitet die Anlage bis zu einer Nachkontrolle im
2./3. Betriebsjahr. Zur häufigsten Bauherren-Sorge («reichen meine alten Radiatoren?»): EnergieSchweiz
stuft Wärmepumpen im Altbau «grundsätzlich als unproblematisch und lohnenswert» ein — moderne
**Inverter-Wärmepumpen** erreichen auch mit Heizkörpern gute Effizienzwerte, ein pauschaler
Heizkörpertausch ist nicht zwingend. Vor einem teuren Komplett-Heizkörperersatz lohnt sich zuerst ein
**hydraulischer Abgleich** (Faustregel aus nicht-schweizerischen Fachportalen, keine CH-Primärquelle).
Details → `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`, FAQ **F154**.

## Warmwasser-Wärmepumpe als eigenständige Massnahme (ohne Heizungsbezug, F162)
Nicht immer geht es um die ganze Heizung: ein **Wärmepumpenboiler** ersetzt ausschliesslich den
bestehenden Elektroboiler (Keller-Aufstellung, Richtwert ~20 m³ Raumvolumen) und erfüllt damit
auch die ZH-Ersatzpflicht für zentrale Elektro-Wassererwärmer bis 2030. Primärquellenbelegter
COP-Median (BFE/WPZ Buchs, EN 16147) 2,84 (A15) bzw. 2,56–2,62 (A7); FWS-Gütesiegel-Mindestwert
COP ≥ 2,60. Kantonal wird der reine Boiler-Tausch weder in ZH noch (soweit geklärt) in SZ
gefördert — nur ein befristetes EKZ-Netzbetreiber-Programm (CHF 800, 2026/2027, nur Kt. ZH).
Details → `[[warmwasser-waermepumpe-boiler-retrofit]]`, FAQ **F162**.

## Tiefengeothermie — Abgrenzung zur Erdwärmesonde (F163)
Tiefengeothermie (ab ca. 500 m, im Kt. ZH gesetzlich erst ab 1'000 m reguliert) ist für ein
einzelnes Bauprojekt **in aller Regel nicht relevant** — sie bewegt sich im Fernwärmenetz-/
Kraftwerksmassstab (MW-Bereich, mehrjähriges Bewilligungsverfahren, UVP-Pflicht ab 5 MWth) und
hat national einen verschwindend kleinen Marktanteil (nur 0,2–0,5 % der geothermischen
Heizleistung, gegenüber 84,3 % bei gewöhnlichen Erdwärmesonden). Für Bauherren bleibt die
relevante Technologie die Erdwärmesonde bis 500 m oder der Flächenkollektor/Erdwärmekorb. Details
→ `[[tiefengeothermie-schweiz]]`, FAQ **F163**.

## Bezug
- FAQ: `[[BAUHERREN-FAQ]]` F13 (Leistung) + F14 (Ersatzverfahren) + **F6 (Systemwahl ✓)**.
  Quelle: `[[bfe-waermeerzeugerleistung-2015]]`, `[[waermepumpe-systemvergleich]]`.
- Heizwärmebedarf (≠ Leistung): `[[sia-380-1-heizwaermebedarf-berechnung]]`,
  Standardnutzung/Warmwasser `[[sia-380-1-standardnutzungswerte-tab24-25]]`.
- Heizsystem-Wahl/Heizverbot (Entscheid/Bewilligung) → Skill `baurecht`; Förderung → `[[foerderung-energie-zh]]`.

## Offen
- CH-Primärquelle Feld-JAZ + COP/SCOP/JAZ-Begriff **belegt ✓ 2026-06-27**
  (`[[fawa-jaz-feldanalyse-waermepumpen]]`, `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
- **Methode** WPesti/SIA 384/3:2021 (projektgenaue JAZ, gratis endk.ch) **belegt ✓ 2026-07-02**
  → `[[sia-384-3-wpesti-jaz-methode]]`.
- **Moderne Feld-JAZ (drehzahlvariabel, 2017-2019) belegt ✓ 2026-07-03** → `[[wpz-buchs-feldmessung-jaz-2016-2019]]`
  (löst die «FWS-Feldstatistik nach 2004»-Lücke). **CHF-Amortisations-/Vollkostenvergleich belegt
  ✓ 2026-07-03** (EnergieSchweiz EFH/20 J: WP günstigstes System) → `[[heizsysteme-vollkostenvergleich-energieschweiz]]` / FAQ F30.
- Offen nur noch: **noch aktuellere Feldstatistik** (Anlagen nach 2019), WPesti-Standardwerte,
  WP + PV-Eigenverbrauch (Lastmanagement) — vgl. `[[waermepumpe-systemvergleich]]`.

## Wärmequelle Abwasser (ergänzt Run 116, 2026-07-27)
Neben Erdreich, Grundwasser, Aussenluft und Seewasser kommt **Abwasser** als Wärmequelle in
Frage — mit dem konstantesten Temperaturniveau aller Quellen (ganzjährig 10–20 °C in der
Kanalisation, im Liegenschaftsabwasser ø 23 °C). Entscheidend ist der Entnahmeort: gebäudeintern
vor der Einleitung grundsätzlich **bewilligungsfrei** (wirtschaftlich ab ~8'000–10'000 l/Tag bzw.
~150 kW), ab der öffentlichen Kanalisation gewässerschutzrechtliche AWEL-Bewilligung plus
Nutzungsvereinbarung. Für jeden Neubau relevant ist die kleine Variante, die **Duschwasser-WRG**
(pauschal 10 % des Warmwasserbedarfs im Energienachweis anrechenbar, EnFK EN-101). ⚠ Ein
amtlicher JAZ-/COP-Vergleichswert Abwasser gegenüber Erdsonde/Aussenluft wurde **nicht** gefunden
(offener Punkt) → `[[abwasserwaermenutzung-kanalisation-zh-sz]]`, Themenartikel
`[[abwaermenutzung-gebaeude]]`, FAQ F169.

## Eisspeicher als Alternative zur Erdsonde (ergänzt Run 119, 2026-07-29)
Wo eine Erdsondenbohrung aus Gewässerschutzgründen (Grundwasserschutzzone, Quellschutzgebiet)
nicht bewilligt wird oder kein Bohrplatz besteht, kann ein **Eisspeicher** (unterirdische,
geschlossene Wasserzisterne, nutzt die Kristallisationswärme beim Gefrieren als Wärmequelle für
eine Sole-Wasser-WP) die Lücke schliessen. Reifer, aber teurer Nischen-Ersatz: Kosten Faktor 1-2
gegenüber der Erdsonde (reale CH-Beispiele 75'000 CHF EFH bis 420'000 CHF MFH-Pilotprojekt), JAZ
2,0 (Fehlauslegung) bis 6 (CH-Pilotprojekt, Rapperswil-Jona). ⚠ Kantonale Bewilligungspraxis
ZH/SZ-Grundwasserschutzzone nicht gefunden (offener Punkt) → `[[eisspeicher-waermepumpe-latentwaermespeicher]]`,
FAQ F187.

## Solltemperatur und Absenkbetrieb — der Hebel vor der Anlage (ergänzt Run 137, 2026-08-16)

Dieser Artikel dreht sich um die Frage, wie gross der Wärmeerzeuger sein muss. Die Gegenfrage —
**wie warm und wie lange überhaupt geheizt wird** — entscheidet über den Verbrauch, kostet nichts
ausser einer Einstellung an der Regelung und gehört deshalb an den Anfang jeder Betriebsoptimierung,
noch vor jede bauliche Massnahme.

Als belegte Referenz dient die **Raumtemperatur-Richtlinie 2006 der Stadt Zürich** (Beilage zum
Stadtratsbeschluss Nr. 1194 vom 04.10.2006) → `[[raumtemperatur-richtlinie-stadt-zuerich-2006]]`.
⚠ **Rechtsnatur beachten:** Das ist eine **stadtinterne Betriebsrichtlinie für die Gebäude der
Stadt Zürich**, keine allgemein geltende Norm. Ihre Zahlen sind als Referenz brauchbar, nicht als
Pflicht für private Bauherrschaften.

**Sollwerte je Raumnutzung (Anhang 1, Auswahl)**

| Nutzung | Sollwert °C |
|---|---|
| Wohn-, Büro-, Aufenthaltsräume, Klassenzimmer | 21 |
| Bettenzimmer Pflegezentren/Altersheime | 22 |
| Bad, Dusche, Behandlungszimmer (Pflege) | 24 |
| Kindergarten, Horte | 22 |
| Korridore | 16 – 18 |
| Treppenhäuser | 16 |
| Turnhallen | 16 |
| Nebenräume Schwimmen | 26 – 28 |
| Werkstätten | 12 – 20 (je nach Nutzung) |
| Windfänge, Garagen ohne Arbeitsräume | unbeheizt bzw. max. 5 (Frostschutz) |

**Die drei Betriebsregeln, die den Verbrauch bestimmen**

1. **Betriebszeiten.** Bürogebäude maximal 06.00 – 20.00 Uhr; Wohnbauten Mo – Fr 07.00 – 23.00,
   Sa/So 08.00 – 24.00 Uhr. Ausserhalb wird abgesenkt.
2. **Absenkgrenze 16 °C.** Im Absenkbetrieb soll die Raumtemperatur in der Regel 16 °C nicht
   unterschreiten.
3. **Keine Absenkung unter −10 °C Aussentemperatur.** Sonst wird die Solltemperatur tagsüber nicht
   mehr erreicht — die Absenkung kippt dann von der Ersparnis in ein Komfort- und
   Leistungsproblem. Das ist zugleich die Brücke zur Dimensionierungsfrage dieses Artikels: eine
   knapp ausgelegte Anlage verträgt weniger Absenkung als eine reichlich ausgelegte.

**Kopplung an die Gebäudehülle.** Die Richtlinie sieht bei ungenügend gedämmten Gebäuden, älteren,
überhohen oder undichten Fenstern einen Zuschlag von **1 bis 2 °C** vor. Das ist das ehrliche
Argument in der Sanierungsberatung: eine bessere Hülle senkt nicht nur den Bedarf, sie erlaubt bei
gleicher Behaglichkeit eine **tiefere Solltemperatur** — die Einsparung fällt zweimal an.
Umgekehrt heisst es, dass in einem schlecht gedämmten Bau die nominelle Solltemperatur nicht
genügt, um Behaglichkeit herzustellen (Strahlungstemperatur der kalten Oberflächen, vgl.
`[[u-werte-grenzwerte-ch]]`).

⚠ **Negativbefund, ausdrücklich.** Die Richtlinie **beziffert an keiner Stelle**, wie viel
Heizenergie eine tiefere Solltemperatur oder ein Absenkbetrieb spart — am Original nachgeprüft
(Run 137). Die verbreitete Faustregel «ein Grad weniger spart rund sechs Prozent» ist **nicht**
aus dieser Quelle belegbar. Wer sie in einer Beratung braucht, belegt sie eigens; die KB führt sie
bis dahin nicht. Siehe FAQ **F240**.

## Aussenheizungen (Terrassenheizung, Rampenheizung, Heizpilz) — EnFK-Vollzugshilfe EN-10 (Ergänzung Run 138)

Ein eigener Fall, weil hier die Grundregel **umgekehrt** zur normalen Heizungsdimensionierung ist: Heizungen im Freien sind **grundsätzlich verboten**, ausser mit erneuerbarer Energie (Holz, Sonne, Erdsonde **ohne** Wärmepumpe) oder sonst nicht nutzbarer Abwärme. Eine nichterneuerbare Aussenheizung (Gas-/Strom-Heizpilz, konventionelle Rampenheizung) braucht **kumulativ alle drei** Voraussetzungen: Sicherheits-/Schutzbedarf, Unzumutbarkeit von baulichen/betrieblichen Alternativen (Überdachung, Schneeräumung), und eine temperatur-/feuchteabhängige Regelung.

**Für die Gastronomie-/Aussenraumplanung heisst das:** eine dauerhafte Terrassenheizung ist mit einer normalen Ausnahmebewilligung kaum zu begründen — «es ist kalt draussen» erfüllt keine der drei Voraussetzungen. Ein Restaurant-Projekt mit ganzjährig genutzter Aussenterrasse plant die Beheizung von Beginn weg auf Holz-, Solar- oder Abwärmebasis, nicht auf eine spätere Ausnahme. Bei Tiefgaragen-Rampenheizungen ist früh zu prüfen, ob Gefälle- oder Überdachungsalternativen möglich sind, weil der Unzumutbarkeitsnachweis bereits im Baugesuch geführt werden muss. **Nicht bewilligungspflichtig** ist dagegen ein Heizpilz für eine kurze Veranstaltung von wenigen Tagen im Jahr.

**Quelle:** EnFK, «Vollzugshilfe EN-10 — Heizungen im Freien», Ausgabe Juli 2009, vollständig gelesen (Run 138) → [[vollzugshilfe-en10-heizungen-im-freien]]. ⚠ 17 Jahre alt, ZH-Verfahrensteil (Formular EN-10, heute EVEN) nicht mitgelesen.
