---
quelle: "(1) NTB Interstaatliche Hochschule für Technik Buchs / Institut für Energiesysteme (heute
  OST), Dr. Cordin Arpagaus, «Hochtemperatur Wärmepumpen — Literaturstudie zum Stand der Technik,
  der Forschung, des Anwendungspotenzials und der Kältemittel», 25.09.2020, 115 S. (PDF per curl+
  pdftotext vollständig im Volltext ausgewertet, Fokus des Berichts liegt auf industrieller
  Prozesswärme 80-180°C, enthält aber die einschlägige HTWP-Definition und Kreisprozess-/
  Kältemittel-Technik, die auch für die Gebäude-Sanierungsanwendung 55-75°C gilt); (2) bereits in
  dieser KB primärquellig etabliert: `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`
  (WPSM-Pflichtenheft Vers. 25.05.2020, BFE-Schlussbericht 2018) — dort der Prüfschritt/die
  55-60°C-Zertifizierungsschwelle bereits belegt, hier NICHT dupliziert, nur referenziert; (3)
  Viessmann (Schweiz) AG, Produktseite und Schweizer Preisblatt «Vitocal 250-A Compact»,
  viessmann.ch, abgerufen 2026-07-31 (Hersteller-Primärquelle mit Interessenlage: Verkauf); (4)
  Ovum Wärmepumpen GmbH (Tirol, Österreich), Datenblatt «AirCube ACP» (ovum.at, Modelle AC208P/
  AC312P/AC417P/AC520P), abgerufen 2026-07-31 (Hersteller-Datenblatt, Interessenlage Verkauf); (5)
  Suntherm AG und Heizungsmacher AG (beides Schweizer Heizungs-Installationsbetriebe), Web-
  Ratgeberartikel «Wärmepumpe im Altbau», abgerufen 2026-07-31 (kommerzielle Sekundärquellen,
  Interessenlage Verkauf/Beratung — explizit als solche gekennzeichnet, nicht als Herstellerbeleg
  verwendet); (6) bereits in dieser KB primärquellig etabliert:
  `[[foerderprogramm-energie-zh-2026]]` (Förderbeitragstabelle Wärmepumpen, keine Differenzierung
  nach Vorlauftemperatur)"
herausgeber: "NTB/OST Buchs (akademisch, Auftraggeber Förderverein IES — kein Hersteller-/
  Verbandsinteresse erkennbar); Viessmann (Schweiz) AG (Hersteller); Ovum Wärmepumpen GmbH
  (Hersteller); Suntherm AG / Heizungsmacher AG (Installationsbetriebe)"
ausgabe: "NTB-Literaturstudie 25.09.2020; Viessmann-Preisblatt Vitocal 250-A Compact CH-DE
  01-2026; Ovum-Datenblatt ACP Web-Stand 04.02.2024/04.09.2025; Web-Stand übrige Quellen
  2026-07-31"
gelesen: "NTB-Literaturstudie vollständig per curl+pdftotext ausgewertet (115 S., gezielt nach
  Definition/Kältemittel/Kreisprozess/COP durchsucht); Viessmann- und Ovum-Herstellerseiten per
  WebFetch/WebSearch abgerufen; Suntherm/Heizungsmacher-Artikel per WebFetch gelesen und explizit
  auf kommerzielle Interessenlage geprüft"
datenstand: 2026-07-31
status: emerging (Technologie/Kreisprozess-Grundlagen und die 55-60°C-WPSM-Zertifizierungsschwelle
  sind primärquellig gut belegt; die konkrete CH-Marktlage für echte 65-75°C-Geräte im
  Wohnbau-Massstab stützt sich auf Hersteller-/Installateur-Angaben ohne unabhängige
  CH-Feldmessung; CHF-Kostenmehraufwand und reale Schweizer JAZ-Werte bei 65-75°C sind eine
  offene Lücke — siehe unten)
last_updated: 2026-07-31
---

# Destillat — Hochtemperatur-Wärmepumpen für die Altbausanierung ohne Heizkörpertausch

> Ergänzt `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` (dort bereits belegt: WPSM-
> Zertifizierungsschwelle 55-60°C, Verbrauchshistorie-Prüfmethode, hydraulischer Abgleich als
> Pflicht) um die **darüber hinausgehende technische Frage**: Wie funktioniert eine Wärmepumpe,
> die tatsächlich 65-75°C Vorlauf liefert (also über die WPSM-Norm-Prüftemperatur hinaus), welche
> Kältemittel/Kreisprozesse stehen dahinter, welche Geräte sind in der Schweiz verfügbar, und was
> bedeutet das für Effizienz, Kosten und Förderung.

## Das Wichtigste in 1 Satz

Moderne Luft-Wasser-Wärmepumpen mit dem Kältemittel **Propan (R290)** erreichen im Einstufen-
Kreisprozess heute bereits **65-75°C Vorlauftemperatur** (z.B. Viessmann Vitocal 250-A bis 70°C,
Ovum AirCube ACP bis 70°C, Hersteller-Datenblätter, CH-Vertrieb bestätigt) und machen damit den
**Ersatz bestehender Radiatoren im Altbau in den allermeisten Fällen technisch überflüssig** — die
klassische **zweistufige Kaskadenschaltung** mit zwei Verdichtern und getrennten Kältemitteln
(historisch R134a/R245fa, ursprünglich aus der Industrie-Prozesswärme über 75°C stammend) ist für
den Wohnbau-Sanierungsfall bis 70°C damit **nicht mehr zwingend nötig**; der Effizienzverlust ist
real, aber die kantonale Förderung in ZH/SZ unterscheidet **nicht** nach Vorlauftemperatur, solange
das WPSM-Zertifikat vorliegt.

## Kernbegriffe

- **HTWP (Hochtemperatur-Wärmepumpe):** Die Fachliteratur ist bei der Temperaturgrenze **nicht
  einheitlich** — «Die Grenze zur Unterscheidung von HTWP reicht von 60°C bis 100°C» (NTB-
  Literaturstudie 2020, S. 8, unter Verweis auf Reissner 2015); der Hersteller Ochsner definiert für
  seine Industrie-Wärmepumpen «Mitteltemperatur-Anwendungen unter 75°C und Hochtemperatur-
  Anwendungen über 75°C» (ebd. S. 36). Für den JANS-Sanierungskontext (Wohnbau-Radiatoren) ist
  relevant: Die **WPSM-Zertifizierungsschwelle** (Wärmepumpen-System-Modul) selbst liegt bereits bei
  55°C (Luft/Wasser) bzw. 60°C (Sole/Wasser) bei -7°C Aussentemperatur
  (`[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`), während dieses Destillat den Bereich
  **darüber (bis 70-75°C)** behandelt, den einzelne Hersteller inzwischen im Wohnbau-Massstab
  anbieten.
- **Einstufiger vs. zweistufiger Kreisprozess:** Der **einstufige** Kreisprozess (ein Verdichter, ein
  Kältemittel) ist der Standardfall auch bei modernen Hochtemperatur-Geräten für den Wohnbau
  (Viessmann Vitocal 250-A, Ovum AirCube ACP — beide R290, einstufig, bis 70°C). Der **zweistufige
  Kaskaden-Kreisprozess** (zwei Verdichter in Serie, oft zwei unterschiedliche Kältemittel) wird in
  der Industrie eingesetzt, um deutlich höhere Temperaturen (90-160°C) zu erreichen — Beispiel
  Ochsner IWHSS: 1. Stufe R134a, 2. Stufe «Öko 1» (R245fa), Vorlauf bis 100°C, industrielle
  Leistungsklasse 190-1'500 kW (NTB-Literaturstudie S. 36). Für den JANS-Regelfall (EFH/kleines MFH,
  Vorlauf bis max. 70-75°C) ist die zweistufige Kaskade **nicht** der Stand der Technik, sondern der
  einstufige R290-Kreisprozess.
- **Warum Propan (R290) für höhere Vorlauftemperaturen geeignet ist:** R290 hat einen im Vergleich zu
  R32/R410A hohen kritischen Punkt und lässt sich bei den in Wärmepumpen üblichen Drücken bis zu
  deutlich höheren Kondensationstemperaturen betreiben, ohne dass der Kreisprozess ineffizient wird —
  das ist der technische Grund, warum die aktuelle Hersteller-Generation von Hochtemperatur-
  Wärmepumpen für den Wohnbau praktisch durchgehend auf R290 setzt (Viessmann, Ovum; vgl. auch
  `[[kaeltemittel-r290-waermepumpen-ch]]` zur Regulatorik/Brandschutz von R290, dort NICHT
  spezifisch für den Hochtemperatur-Anwendungsfall behandelt).

## Tabellen

### Marktverfügbare Hochtemperatur-Wärmepumpen im Wohnbau-Massstab, Stand 2026 (Hersteller-Angaben)

| Modell | Hersteller | Kältemittel | Max. Vorlauf | Leistungsbereich | CH-Vertrieb |
|---|---|---|---|---|---|
| Vitocal 250-A (Compact/Modular) | Viessmann (Schweiz) AG | R290 | **70°C** (bei bis -10°C Aussentemp.) | 2,1-19 kW (Modultypen 04-19) | Ja, eigenes CH-Preisblatt (viessmann.ch) |
| AirCube ACP (AC208P/312P/417P/520P) | Ovum Wärmepumpen GmbH (AT) | R290 | 70°C (Herstellerdatenblatt), Marketing teils «75°C» | nicht einzeln recherchiert je Modell | Ja, über Installationspartner (z.B. Suntherm AG) |

*Industriemassstab, nicht Wohnbau (zur Einordnung der Kaskaden-Technik):* Skadec SH.C/SH.F (Schmid
Energy, Eschlikon, CH-Hersteller) erreicht bis 90°C mit Kältemittel R600a (Isobutan), Leistungsbereich
60-2'200 kW — das ist Prozesswärme-/Grossanlagen-Technik, kein EFH/MFH-Sanierungsprodukt.

**Wichtiger Vorbehalt:** Diese Tabelle ist **keine systematische Marktübersicht** aller in der Schweiz
verfügbaren Hochtemperatur-Wärmepumpen (weitere Anbieter wie Hoval, Alpha Innotec, Mitsubishi
Electric, Daikin, CTC/NIBE führen ebenfalls Modelle mit erhöhter Vorlauftemperatur, wurden aber in
diesem Lauf nicht einzeln mit Datenblatt verifiziert) — für eine Devis-relevante Ausschreibung braucht
es eine produktspezifische Herstellerabklärung, nicht diese Tabelle als Vollständigkeitsnachweis.

### Effizienzverlust bei steigender Vorlauftemperatur — Einordnung zweier widersprüchlicher Angaben

| Angabe | Quelle | Charakter | Einordnung |
|---|---|---|---|
| **≈1,0-1,2 % JAZ-Verlust pro °C** | WPZ-Buchs-Feldmessung (OST), abgeleitet in `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` | Schweizer Feldmessdaten, von JANS grob über 3 Temperaturklassen (20°C Spanne) hergeleitet | **Bevorzugt verwenden** — Schweizer Primärquelle, bereits in dieser KB etabliert |
| «2-3 % pro °C» / JAZ 2,0-2,8 statt 3,4 bei Hochtemperatur | Deutsche Fachportale (Web-Synthese, nicht einzeln primärquellig geprüft) | Unbelegte Portal-Zusammenfassung, keine genannte Originalquelle | **Nicht übernehmen** — passt zum in dieser KB bereits dokumentierten Muster, dass KI-Suchzusammenfassungen Zahlen ohne Primärbeleg verbreiten (vgl. Abschnitt 4 des WPSM-Destillats); hier zur Transparenz aufgeführt, aber explizit als nicht vertrauenswürdig markiert |

**Fazit:** Für ein JANS-Kundengespräch gilt weiterhin die Schweizer WPZ-Buchs-Näherung
(~1,0-1,2 %/°C), nicht die deutsche Portal-Faustregel. Eine **produktspezifische** COP-Angabe bei der
tatsächlichen Betriebs-Vorlauftemperatur (z.B. bei 65-70°C statt beim Normprüfpunkt A7/W35) war in
keinem der recherchierten Herstellerdatenblätter zu finden — Datenblätter nennen durchgehend nur den
Normprüfpunkt (z.B. Vitocal 250-A: COP bis 5,5 bei A7/W35, **nicht** bei A-7/W65) — siehe Offene
Punkte.

## Bauherren-Transfer

- **«Können wir die alte Ölheizung durch eine Wärmepumpe ersetzen, ohne alle Heizkörper
  auszutauschen?» — ja, in aller Regel.** Der technische Fortschritt der letzten Jahre (einstufige
  R290-Kreisprozesse) hat die Schwelle, ab der ein Heizkörperersatz zwingend nötig wird, deutlich nach
  oben verschoben: WPSM-zertifizierte Geräte erreichen bereits 55-60°C (Zertifizierungspflicht,
  `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`), einzelne aktuelle Hersteller-Modelle
  (Viessmann Vitocal 250-A, Ovum AirCube ACP) darüber hinaus **bis 70°C** — das deckt praktisch jeden
  Schweizer Altbau-Radiator ab, auch unsanierte Bauten vor 1980 (Richtwerttabelle EnergieSchweiz:
  Baujahr vor 1980 braucht 60-70°C bei -8°C Aussentemperatur, bereits im WPSM-Destillat zitiert).
- **Der Preis für die hohe Vorlauftemperatur ist ein realer, aber begrenzter Effizienzverlust** — nach
  der Schweizer WPZ-Buchs-Näherung rund 1,0-1,2 % JAZ-Verlust pro zusätzlichem Grad Vorlauf. Das ist
  eine planbare Grösse, keine Ausschlussfrage: Der hydraulische Abgleich (bei jeder WPSM-Anlage
  ohnehin Pflicht) entscheidet oft mit, ob überhaupt die volle 65-75°C-Reserve gebraucht wird oder ob
  eine Absenkung auf 50-55°C bereits reicht.
- **Kein separates Förderregime für Hochtemperatur-Geräte in ZH/SZ:** Die kantonale Förderung
  (`[[foerderprogramm-energie-zh-2026]]`) differenziert **nicht** nach Vorlauftemperatur oder
  Kältemittel — massgebend ist einzig die Leistungsklasse (≤15 kWth WPSM-Zertifikat, CHF 2'900
  Luft/Wasser, gestaffelt) und die WPSM-/Gütesiegel-Zertifizierung selbst. Eine Hochtemperatur-
  Wärmepumpe bekommt also **weder einen Bonus noch einen Abzug** gegenüber einer Standard-
  Wärmepumpe — die Förderentscheidung hängt an der Leistungsklasse, nicht an der technischen
  Ausführung.
- **Was noch offen bleibt, bevor eine Zusage möglich ist:** Die konkrete CHF-Mehrkosten-Frage
  (Hochtemperatur-Gerät vs. Standard-Wärmepumpe gleicher Leistung) liess sich in dieser Recherche
  **nicht** belastbar beziffern — auch die produktspezifische Effizienz beim tatsächlichen
  Betriebspunkt (65-70°C statt Normprüfpunkt 35°C) ist in Herstellerdatenblättern nicht ausgewiesen.
  Für ein verbindliches JANS-Kundendokument braucht es eine Devis-Anfrage mit dem konkreten
  Betriebspunkt beim Installateur/Hersteller, nicht die hier zusammengetragenen Herstellerangaben.

## Offene Punkte

- **CHF-Kostenmehraufwand Hochtemperatur- vs. Standard-Wärmepumpe:** In dieser Recherche keine
  belastbare Schweizer Quelle (weder BFE/EnergieSchweiz noch FWS/suissetec) gefunden, die den
  Aufpreis eines auf 65-75°C ausgelegten Geräts gegenüber einem Standard-Gerät gleicher Leistung
  beziffert. Allgemeine EFH-Investitionsbandbreiten (CHF 45'000-60'000, Web-Synthese) sind nicht
  nach Vorlauftemperatur differenziert.
- **Reale Schweizer JAZ-/COP-Feldwerte bei 65-75°C Betriebspunkt:** Kein Herstellerdatenblatt und
  keine der geprüften Quellen nennt einen COP/eine JAZ konkret bei diesem Betriebspunkt (nur beim
  Normprüfpunkt A7/W35). Ein Folgelauf könnte gezielt bei FWS oder SPF Rapperswil (Feldmessprogramme)
  nach Sanierungsobjekten mit gemessener JAZ bei dokumentierter hoher Vorlauftemperatur suchen — genau
  der vom Auftrag vorgeschlagene Lücken-Teilaspekt («reale CH-Sanierungsprojekte mit gemessenen
  JAZ-Werten»), der in diesem Lauf mangels auffindbarer Primärquelle nicht geschlossen werden konnte.
- **Systematische CH-Marktübersicht Hochtemperatur-Geräte:** Diese Recherche hat nur zwei Modelle
  (Viessmann, Ovum) mit Datenblatt verifiziert; weitere in der Schweiz vertriebene Marken (Hoval,
  Alpha Innotec, Mitsubishi Electric Ecodan/Zubadan, Daikin Altherma, CTC/NIBE) wurden nicht einzeln
  geprüft und könnten ähnliche oder abweichende Vorlauftemperatur-Grenzen bieten.
- **Zweistufige Kaskaden-Wohnbaugeräte:** Ob es in der Schweiz aktuell überhaupt zweistufige
  Kaskaden-Wärmepumpen im Wohnbau-Leistungsbereich (< 20 kW) gibt, oder ob der Markt sich für diesen
  Massstab komplett auf einstufige R290-Geräte konsolidiert hat, ist aus dieser Recherche nicht
  abschliessend zu beantworten (die gefundene Kaskaden-Technik ist durchgehend industriell,
  190 kW aufwärts).
- **Abgrenzung zur Regulatorik:** Die brandschutz-/füllmengenrechtlichen Aspekte von R290 (ChemRRV,
  A3-Sicherheitsklasse) sind bereits in `[[kaeltemittel-r290-waermepumpen-ch]]` behandelt, dort aber
  nicht spezifisch für den Hochtemperatur-Anwendungsfall — bei Bedarf dort ergänzen, nicht hier
  duplizieren.

**Backlinks:** `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` ·
`[[cop-scop-jaz-waermepumpe-gruenenwald]]` · `[[waermepumpe-systemvergleich]]` ·
`[[kaeltemittel-r290-waermepumpen-ch]]` · `[[foerderprogramm-energie-zh-2026]]` ·
`[[foerderprogramm-energie-sz-2026]]`
