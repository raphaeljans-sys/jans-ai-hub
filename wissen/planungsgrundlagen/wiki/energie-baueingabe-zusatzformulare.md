---
title: Energie/HLS — Zusatzformulare zur Baueingabe (WTA, Schallschutz Aussenlärm, Versickerung)
status: established
last_updated: 2026-07-13
sources: [PL - 04 Energie/endk.ch (SharePoint) — WTA-Formular Ausgabe Januar 2024, Formular S Schallschutznachweis Aussenlärm, Gesuch zur Versickerung von Regenwasser (AWEL, Kt. ZH); www.awel.zh.ch/versickerung; www.baugesuche.zh.ch]
links: [[energie-uebersicht]], [[energie-energienachweis-zh-formulare]], [[recht-norm-quellenlandkarte]], [[recht-norm-abstandsvorschriften-wald-gewaesser]]
---

# Energie/HLS — Zusatzformulare zur Baueingabe (WTA, Schallschutz Aussenlärm, Versickerung)

**Neu erschlossen (Run 23, 2026-07-13).** Der Ordner `PL - 04 Energie/endk.ch/` enthält drei
Kt.-ZH-Formulare, die bei einer Baueingabe **neben** dem eigentlichen Energienachweis (EN-ZH/EVEN,
→ [[energie-energienachweis-zh-formulare]]) regelmässig gebraucht werden, aber eigenständige
Verfahren mit eigenen Zuständigkeiten sind. Kein Doppel zu EN-ZH — diese drei Formulare laufen
**parallel**, nicht als dessen Bestandteil.

## 1. WTA — Gesuch-/Meldeformular für wärmetechnische Anlagen

**Wer/was:** Kt. ZH, "Gesuch-/Meldeformular für Erstellung, Umbau und Betrieb von
wärmetechnischen Anlagen oder stationären Verbrennungsmotoren" (Ausgabe Januar 2024). Deckt
**alle Wärmeerzeuger** ab — nicht nur Heizkessel: Öl-/Gasheizungen, Wärmepumpen (Luft/Erdsonde/
Erdregister/Grundwasser/Oberflächenwasser), Holzfeuerungen, Flüssiggas, BHKW/Notstromaggregate,
Wärmetauscher Fernwärme. Solaranlagen und Gascheminées haben **eigene** Meldeformulare (Verweis,
kein Doppel).

**Verfahren (3 Stufen je nach Anlage):** Meldeverfahren / Anzeigeverfahren / Ordentliches
Verfahren — die Vorgehensanleitung (Seite 2 des Formulars) kreuzt pro Anlagentyp an, welche
Formularseiten (1–5) an wen gehen: **Gemeindebauamt** (immer), **Komm. Feuerpolizei** (bei
brandschutzrelevanten Anlagen, z.B. Holzfeuerung, Flüssiggas), **AWEL/Lufthygiene** (Anlagen
>1000 kW, BHKW, Spänefeuerungen — dort zusätzlich Situationsplan + Kaminhöhen-Schnitte +
hydraulisches Schema), **GVZ** (Brandschutz-Bewilligung, sofern nach GVZ-Weisung 20.01 Ziff.
2.1 Abs. 5 nötig).

> **Querbezug KB energie (Rechtsgrundlage Meldeverfahren, Cross-KB Wissens-Chef Run 10):** Welcher
> der drei Verfahrenswege für **Wärmepumpen** greift, richtet sich nach **§ 2a BVV** (LS 700.6);
> die WP-Weichen (innen aufgestellte L/W-WP → Meldeverfahren; aussen aufgestellte L/W-WP nur bis
> **2 m³**; Erdwärmesonde bei **2,5 m Grenzabstand** ausserhalb Bau-/Abstandslinien; Kernzonen-/
> Denkmalschutz → Bewilligung, § 2a Abs. 2) samt einzureichenden Unterlagen (§ 2c BVV) führt am
> Erlasstext die KB energie: `wissen/energie/destillate/bvv-zh-meldeverfahren-klimaanlagen-waermepumpen`.
> Dieser Artikel bleibt führend für **Formular/Verfahrensablauf** (WTA-Formular Seite 2, Zuständigkeiten).

**Neubau-Kopplung:** Bei Neubauten ist **immer** das Formular **EN-103** (mit Privater Kontrolle)
nötig — fehlt bei bestehenden Gebäuden Seite 4 des WTA-Formulars UND das EN-103, erfolgt eine
**kostenpflichtige behördliche Kontrolle** statt der privaten. Für Luft-Wärmepumpen zusätzlich
Beilage **Lärmschutznachweis LN-1a/1b** (→ Schallschutz-Formular unten); für Erdsonden/-register/
Grundwasser/Oberflächenwasser je ein separates **Gesuch AWEL/Gewässerschutz** oder
**AWEL/Wasserbau**.

**Ausführungskontrolle / GWR-Eintrag (Seite 5):** nach Inbetriebnahme bestätigt die **Private
Kontrolle** (Fachbereich Heizungsanlagen, ggf. + Schutz vor Lärm bei L/W-WP) sowie eine separate
**Installationsbestätigung Brandschutz** die Ausführung; die Anlage wird direkt ins **GWR**
nachgeführt (Wärmeerzeuger/Energieträger, Aktualisierungsdatum) — derselbe GWR-Datensatz, den
der Connector `gwr-bund.mjs` ausliest (→ [[kartenportale-gwr-bund]]).

**Relevanz JANS:** bei jedem Heizungsersatz/-neubau ist das WTA-Formular **zusätzlich** zum
Energienachweis zu prüfen — bei Wärmepumpen insbesondere die Lärmschutz-Beilage (siehe unten) und
bei erdgekoppelten Systemen das separate AWEL-Gewässerschutzgesuch (Bohrtiefe/Grundwasserschutz).

## 2. Formular S — Schallschutznachweis Aussenlärm

Zusatzformular zum Energienachweis für Bauten in **lärmbelasteten Gebieten** (LSV-Vollzug,
→ [[recht-norm-quellenlandkarte]] LSV SR 814.41). Wird zusammen mit dem
**Zusatzformular "Lärmsituation/Lärmschutz"** (`d8510-a`) beim Gesuchsteller eingereicht, wenn ein
Bauvorhaben in einer Zone mit Grenzwertüberschreitung liegt. Bei Luft-Wärmepumpen ist der
**Lärmschutznachweis LN-1a/1b** das analoge Formular für die **Anlagen-eigene** Lärmemission
(Abgrenzung: Formular S = Aussenlärm auf das Gebäude einwirkend, LN-1a/1b = Lärm der WP-Anlage
selbst auf die Nachbarschaft).

**⚠ Aktualität:** USG und LSV wurden per **01.04.2026** geändert (belegt Web-Recherche 2026-07-13,
Quelle bauen-im-laerm.ch) — vor Verwendung des Formular-S-Prozesses prüfen, ob sich Fristen/
Grenzwerte geändert haben. Die vier **Empfindlichkeitsstufen** (ES I Erholungszonen · ES II reine/
gemischte Wohnzonen ohne störende Betriebe · ES III Wohn-/Gewerbe-Mischzonen · ES IV
Industriezonen) bleiben die Bezugsgrösse; ES je Parzelle bereits im Connector-Produkt
`--produkt zonenplan` als Nebenprodukt verfügbar (Datensatz 0154, → [[kartenportale-zonenplan-zh]]).
Praxis-Werkzeug für die Vorabklärung: **bauen-im-laerm.ch** (Cercle-Bruit-Implementation von
LSV Kapitel 5, Ausnahmebewilligungs-Mindestvoraussetzungen).

## 3. Gesuch zur Versickerung von Regenwasser (AWEL, Kt. ZH)

Eigenständiges Bewilligungsverfahren für die **Regenwasserversickerung** — grundsätzlich
**Gemeindesache**, das AWEL (Abt. Gewässerschutz) ist nur zuständig bei: belastetem Standort,
provisorischer/definitiver Grundwasserschutzzone mit Bewilligungspflicht, Grundwasserschutzareal,
oder Industrie-/Gewerbebetrieben mit umweltrelevanten Prozessen.

**Bewilligungspflicht (Schwelle):** unterirdische Versickerungen (Schacht/Strang/Kieskörper),
oberirdische mit Verhältnis Entwässerungs- zu Versickerungsfläche **> 5:1**, sowie jede Anlage mit
technischer Behandlung (künstlicher Adsorber) sind bewilligungspflichtig. **Bagatellgrenze:**
Entwässerungsflächen **bis 20 m²** brauchen für eine Versickerung über die belebte Bodenschicht
**keine** gewässerschutzrechtliche Bewilligung.

**Materialbezogene Auflage (Planungsrelevanz für Fassade/Dach):** unbeschichtete Metallflächen
(Kupfer/Zink/Zinn/Blei/Messing) **> 50 m²** erfordern zwingend eine technische Behandlungsmassnahme
(künstlicher Adsorber) — Faktor 0.2 für vertikale Flächen (Fassade) bei der Flächenberechnung;
beschichtete Metallflächen > 50 m² brauchen einen Dauerhaftigkeits-Nachweis des Herstellers.
**PV-Glasflächen und Kühlaggregate** sind eigene Positionen im Formular. Quelle KBOB-Empfehlung
2001/1 "Metalle für Dächer und Fassaden".

**Technische Grundsätze:** Versickerungsfähigkeit des Bodens durch **Versickerungsversuch**
nachweisen; ab Muldensohle bis 10-jährlichem Hochwasserspiegel (HW10) mind. **1.00 m** natürliche
Filterschicht; Direkteinleitung ins Grundwasser (Schluckbrunnen) **verboten**; System der
Versickerung strikt getrennt vom Schmutzabwasser. Normbasis: **SN 592 000** "Liegenschafts-
entwässerung" (Kap. 5.7), VSA-Richtlinie "Abwasserbewirtschaftung bei Regenwetter" (2019),
AWEL-Regenwasserrechner (2022).

**Relevanz JANS:** bei jeder Fassaden-/Dachmaterialwahl mit unbeschichtetem Metall (Kupfer/Zink,
häufig bei Sanierungen/Denkmalobjekten) frühzeitig die 50-m²-Schwelle prüfen — ein künstlicher
Adsorber ist ein zusätzlicher Kostenpunkt (BKP 224/logische Ergänzung zur Versickerungsanlage) und
eine zusätzliche Planungsposition im Umgebungsplan.

## Offen
- Kein Konnektor-/Automatisierungsanspruch für diese drei Formulare — alle drei sind
  Papier-/PDF-Formulare mit Unterschriftspflicht (Private Kontrolle bzw. Gesuchsteller/
  Grundeigentümer/Projektverfasser), keine API-gestützte Beschaffung möglich oder sinnvoll.
- LSV-Novelle 01.04.2026: konkrete inhaltliche Änderungen (Grenzwerte/Fristen) noch nicht im
  Detail nachgezogen — bei nächstem realen Lärmschutz-Fall vertiefen.
