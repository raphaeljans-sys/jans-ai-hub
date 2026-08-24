---
title: "Pflichtenheft Gebäudetechnik — was eine Bauherrschaft verbindlich vorgeben sollte"
status: emerging
last_updated: "2026-08-24 (Kennzeichnung/NIS/Lithium-Ionen-Lagerung nachgetragen — drei weitere AHB-Fachmerkblätter primärquellengelesen; zuvor: Beleuchtung, aktuelles AHB-Dokumentensystem 2025 gefunden, DALI/DALI-2 + Lux-Tabelle nachgetragen, Warnhinweis zur möglichen Ablösung der RL1-RL9-Familie gesetzt)"
datenstand: "2008 (älteste tragende Fassung: alle neun AHB-Zürich-Richtlinien RL1-RL9 sowie die Raummodule Büro/Klassenzimmer und der Pflegezentren-Standard liegen als Version Juli 2008 vor — einzelne Erstfreigaben reichen bis 2003/2004 zurück, tragend zitiert wird aber durchgehend die Fassung Juli 2008, wie der Artikel selbst im Warnkasten festhält. ⚠ Mehrere darin referenzierte Normen sind laut eigener Aktualitätsprüfung Run 122 seither aufgehoben oder ersetzt — Art. 20a LRV per 01.01.2022, SIA 380/4 per 31.07.2019, EN 779 über EN ISO 16890 abgelöst, H-FKW-Kältemittel seit ChemRRV grösstenteils untersagt — das betrifft einzelne Zitate im Fliesstext, nicht den Datenstand der AHB-Quellen selbst)"
sources:
  - "[[ahb-zuerich-gt-rl1-planungsgrundlagen]] bis [[ahb-zuerich-gt-rl9-gebaeudeautomation]] — Richtlinien Gebäudetechnik der Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie & Gebäudetechnik, Version 2.1, Juli 2008 (in Kraft seit 04.05.2004, Fassung 2.1 freigegeben 18.06.2008)"
  - "[[ahb-raummodul-buero]] — AHB Stadt Zürich, «Raummodul Büro — Standard Gebäudetechnik», Version 1.1, Juli 2008 (Erstfreigabe GL AHB 28.09.2005), 11 S. vollständig gelesen (Run 129)"
  - "[[ahb-raummodul-klassenzimmer]] — AHB Stadt Zürich, «Raummodul Klassenzimmer — Standard Gebäudetechnik», Version 2.1, Juli 2008 (Erstfreigabe GL AHB 24.09.2003, Revisionen 09/2005 und 07/2008), 10 S. vollständig gelesen (Run 129)"
  - "[[ahb-standard-gebaeudeautomation-pflegezentren]] — AHB Stadt Zürich mit den Pflegezentren (PZZ) und der Immobilien-Bewirtschaftung, «Standard Gebäudeautomation», Version 1.1, Juli 2008, 9 S. vollständig gelesen (Run 129)"
  - "Aktualitätsprüfung der zitierten Normen: siehe outputs/2026-08-03_energie-run122.md"
  - "[[ahb-richtlinie-gebaeudetechnik-229-2025]] — AHB Stadt Zürich, «Richtlinie Gebäudetechnik (Ergänzung zur KBOB-Empfehlung)», Dok.-Nr. 229, August 2025, 17 S. vollständig gelesen (24.08.2026)"
  - "[[ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025]] — AHB Stadt Zürich, Merkblatt Nr. 376, August 2025, 2 S. vollständig gelesen (24.08.2026)"
  - "[[ahb-richtlinie-265-kennzeichnung-beschriftung-gebaeudetechnik]] — AHB Stadt Zürich, M-System-Nr. 265, Juli 2022, S. 1-11/28 gelesen (24.08.2026)"
  - "[[ahb-merkblatt-385-planungsrichtlinie-nis]] — AHB Stadt Zürich, M-System-Nr. 385, August 2011, S. 1-14/34 gelesen (24.08.2026)"
  - "[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]] — AHB Stadt Zürich, M-System-Nr. 389, September 2023, S. 1-9 vollständig gelesen (24.08.2026)"
links:
  - "[[sia-386-bacs-gebaeudeautomation]]"
  - "[[komfortlueftung]]"
  - "[[sommerlicher-waermeschutz]]"
  - "[[heizleistung-und-waermeerzeuger]]"
  - "[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]"
  - "[[bezugsgroessen-energienachweis]]"
  - "[[notstromversorgung-sicherheitsstromversorgung]]"
---

# Pflichtenheft Gebäudetechnik — was eine Bauherrschaft verbindlich vorgeben sollte

## Warum dieser Artikel

Die Wissensbasis war bisher stark auf **Nachweise** ausgerichtet (U-Werte, Heizwärmebedarf,
Minergie, EN-ZH) — also auf das, was der Gesetzgeber verlangt. Die neun Richtlinien
Gebäudetechnik der Stadt Zürich schliessen eine andere Lücke: Sie zeigen, was eine
**professionelle Bauherrschaft ihren Planenden zusätzlich vorgibt**, damit eine Anlage nicht
nur bewilligungsfähig, sondern über 30 Jahre betreibbar und energetisch gutmütig bleibt.

⚠ **Datenstand und Reichweite.** Die Quellen sind **Version 2.1 vom Juli 2008**, also 18 Jahre
alt (das Kürzel «V21» im Dateinamen ist eine Versions-, keine Jahresangabe — Korrektur an
Run 121). Sie sind ausserdem **kein Recht**, sondern die interne Bestellerlogik eines einzelnen
Bauherrn. Übertragbar ist die **Struktur und die Fragehaltung**, nicht die konkrete Zahl.
Normverweise sind teils überholt; das ist unten je Punkt vermerkt.

## Die Instrumentenkette (aus [[ahb-zuerich-gt-rl1-planungsgrundlagen]])

Die Stadt Zürich trennt drei Dokumente sauber voneinander, und genau diese Trennung ist der
übertragbare Kern:

| Dokument | Wer schreibt es | Was drin steht |
|---|---|---|
| **Projekthandbuch (PHB)** | Bauherrschaft | Projektrahmen: Ziele, Umfang, Risiken, Kosten, Termine, Organisation, Zuständigkeiten |
| **Pflichtenheft Gebäudetechnik** | Bauherrschaft | Die **projektspezifischen** Anforderungen an die Gebäudetechnik — ergänzt und präzisiert die generellen Richtlinien, **wiederholt deren Inhalt nicht** |
| **Projektdokumentation Energie- und Gebäudetechnik** | Fachplanende | Ergebnis der Projektierung: Konzept, Prinzipschemas, Nachweise, Anlagebeschriebe, KV, Inbetriebsetzungs- und Abnahmeprotokolle, Betriebsdokumentation |

**Bauherren-Transfer (eigene Einordnung):** Der wirksamste Teil ist die Regel «das Pflichtenheft
wiederholt die Richtlinien nicht». In vielen privaten Mandaten passiert genau das Gegenteil —
Normtexte werden in die Ausschreibung kopiert, das projektspezifisch Besondere geht darin unter.
Wer als Architekt ein Pflichtenheft Gebäudetechnik führt, sollte darin nur schreiben, was von der
Norm **abweicht oder über sie hinausgeht**.

## Die Entscheidungskaskade der Systemwahl (aus [[ahb-zuerich-gt-rl2-systemwahl]])

1. **Bedarf senken**
2. **Abwärme und erneuerbare Energien nutzen**
3. **Restdeckung möglichst umweltschonend**

Vor der Systemwahl sind vier Punkte zwingend abzuklären: verfügbare Anschlussleistung
(Fernwärme/Gas), **Abwärmequellen in der Umgebung** (Abwasser, Abluft, gewerbliche Kälteanlagen,
EDV-/Serverräume, USV, Industrie), **Kapazitätsreserven auf Nachbargrundstücken** und koordinierte
Bau-/Sanierungsvorhaben in der Nachbarschaft.

Bemerkenswert und bis heute gültig als Denkfigur: **thermische Solarnutzung hat bei Objekten mit
regelmässigem Warmwasserbedarf** (Wohnen, Heime, Sportanlagen) laut dieser Quelle **Vorrang vor
PV**. ⚠ Das ist eine Aussage von 2008, vor dem PV-Preiszerfall; die KB führt die heutige Abwägung
unter [[solarthermie-vs-pv-warmwasser-ch]]. Der Punkt bleibt trotzdem lehrreich: bei hohem,
gleichmässigem Warmwasserbedarf ist die Frage überhaupt zu stellen.

### Was ein Variantenvergleich enthalten muss

Systembeschrieb · Investitionskosten · Wirtschaftlichkeitsrechnung · ökologische Beurteilung
(Primärenergie, CO2, Schadstoffe, **graue Energie**) · Platzbedarf · Risiken · Verfügbarkeit.
Ausdrücklich als **separat zu vergütende Zusatzleistung** deklariert.

**Bauherren-Transfer:** Diese Liste ist die brauchbarste Einzelseite des ganzen Blocks. Sie taugt
unverändert als Gliederung eines Variantenvergleichs in einer Machbarkeitsstudie — und der
Hinweis, dass es eine Zusatzleistung ist, gehört in die Honorarofferte (Skill
`honorarberechnung-sia102`).

## Nachweis- und Messpflichten, die über den Energienachweis hinausgehen

Der rote Faden aller neun Richtlinien: **es genügt nicht, etwas zu planen — es ist zu messen und
zu protokollieren.**

| Gegenstand | Vorgabe | Quelle |
|---|---|---|
| ~~Feuerungen~~ | ~~Konformitätsnachweis nach LRV bis **350 kW**, darüber Abnahmemessung~~ — **entfallen, siehe Aktualitätsprüfung unten** | [[ahb-zuerich-gt-rl3-heizungsanlagen]] |
| Wärmepumpen/Kältemaschinen | **JAZ für das Gesamtsystem inkl. Förderenergie** dokumentieren UND messtechnisch überprüfen, Systemgrenze ausweisen — konkretisiert (2020) als `JAZ = Q_WP / (E_WP + E_V + E_K + E_SR + E_A + E_C)`, gestaffelt nach Anlagengrösse (Grenze ca. 100 kW): Kompaktanlage = eine Summenmessung Hilfsbetriebe, Grossanlage = **getrennte** Messung Verdichter/Hilfsbetriebe je WP; Erdsonden-Vor-/Rücklauftemperatur nach SIA 384/6:2020 | RL1, RL3, RL4, [[ahb-merkblatt-394-messkonzept-waermepumpen]] |
| Kälteanlagen ab 5 kW | eigener Strom- und Impulszähler | [[ahb-zuerich-gt-rl4-raumkuehlung]] |
| Lüftung | WRG-Temperaturänderungsgrad bei jeder Anlage nachmessen; Kanaldichtheit **vor dem Isolieren** prüfen | [[ahb-zuerich-gt-rl5-lueftungsanlagen]] |
| Beleuchtung | Nachweis (2008: SIA 380/4 — **heute SIA 387/4:2023**), ab ca. 5 Mio. CHF Bausumme **dreistufig** (Projekt / Ausschreibung / Übergabe); aktuell (2025) DALI/DALI-2 verbindlich, Lux-Werte nach SIA 387/4 + EN 12464-1 | [[ahb-zuerich-gt-rl8-beleuchtung]], [[ahb-richtlinie-gebaeudetechnik-229-2025]], [[ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025]] |
| Storen/Sonnenschutz | Produktschutz vor Komfort/Energie vor Bedienung; Grenzwerte Frost < 2 °C/> 4 °C, Blendschutz ~25 kLux, Thermoautomatik ~250/200 W/m²; **Bettenzimmer/Stationszimmer**: Produktschutz + Raumbedienung Muss, Rest projektspezifisch | [[ahb-merkblatt-386-storensteuerung]] |
| Betrieb | **1-2 Jahre fachliche Nachbetreuung (Betriebsoptimierung) nach Inbetriebsetzung** | [[ahb-zuerich-gt-rl1-planungsgrundlagen]] |

**Bauherren-Transfer:** Die JAZ-Messpflicht und die Betriebsoptimierung sind die zwei Punkte, die
in privaten Projekten am häufigsten fehlen. Eine Wärmepumpe wird mit einer Herstellerangabe
verkauft und nie nachgemessen; niemand merkt, wenn sie real deutlich schlechter läuft. Die
Nachbetreuung über 1-2 Jahre ist ein Honorarposten, der sich über die Betriebskosten meist
selbst trägt — er muss aber im Vertrag stehen, sonst findet er nicht statt. Bei einer
Grosswärmepumpenanlage (> ca. 100 kW, praktisch jedes grössere Pflegeheim/Spital) verlangt die
Stadt-Zürich-Praxis die getrennte Verdichter-/Hilfsbetriebe-Messung schon in der Ausschreibung der
Gebäudeautomation — eine nachträgliche Aufrüstung ist deutlich teurer.

## Kühlung ist die Ausnahme, nicht die Ausstattung (aus [[ahb-zuerich-gt-rl4-raumkuehlung]])

Aktive Raumkühlung ist **nur im Ausnahmefall** zulässig und braucht einen Bedarfsnachweis mit
Zustimmung der Fachstelle. Vorrang haben bauliche Massnahmen (siehe [[sommerlicher-waermeschutz]]).
Wird gekühlt, gilt: **Auslegung auf die Tagesenergie (kWh/d), nicht auf die Spitzenleistung (kW)**
— Voraussetzung sind genügend Speichermasse und eine zulässige Tagesschwankung von 3-4 K.
Wasserführende Systeme sind der Luftkühlung vorzuziehen, kombinierte Abgabesysteme (TABS)
anzustreben.

⚠ Kältemittel: Die Quelle bevorzugt natürliche Arbeitsstoffe (CnHm, NH3, CO2) vor H-FKW
(R134a, R410A, R407C). Die regulatorische Lage hat sich seit 2008 erheblich verschärft — vor
Verwendung den heutigen ChemRRV-Stand prüfen, siehe [[kaeltemittel-r744-co2-waermepumpen-hochtemperatur-ch]]
und [[kaeltemittel-r290-waermepumpen-ch]].

## Healthcare-relevant: Legionellen und die 75-°C-Vorhaltung

Aus [[ahb-zuerich-gt-rl6-sanitaerinstallationen]], für JANS der unmittelbar verwertbarste Punkt
des ganzen Blocks:

Für die **Risikogruppe 2** — Spitäler, **Alters- und Pflegeheime**, Bade- und Sportanlagen,
zentral erwärmte Wohnüberbauungen — ist bei einer Erneuerung die **thermische Desinfektion mit
75 °C einzuplanen**, ausdrücklich **inklusive Anschlussmöglichkeit für eine mobile Heizzentrale,
wenn die Wärmeerzeugung über eine Wärmepumpe erfolgt**. Chemische und elektrophysikalische
Vorbeugesysteme sind unzulässig. Temporär ungenutzte Leitungsstücke: max. 0,2 m, sonst entleeren
oder demontieren.

**Bauherren-Transfer:** Hier liegt ein echter Zielkonflikt, den man früh benennen muss. Eine
Wärmepumpe arbeitet umso effizienter, je tiefer die Vorlauftemperatur — die thermische
Desinfektion verlangt 75 °C. Die Zürcher Antwort ist pragmatisch: nicht die Wärmepumpe auf
75 °C auslegen, sondern **den Anschluss für eine mobile Heizzentrale baulich vorsehen**. Das
kostet in der Planung fast nichts und rettet später den Betrieb. Vertiefung:
[[trinkwassererwaermung-legionellenschutz-energieeffizienz]].

## Lichtsteuerung nach Raumtyp (aus [[ahb-zuerich-gt-rl8-beleuchtung]])

Erster Primärquellenbeleg der KB zur Beleuchtung. Die praxistauglichste Regel:

| Steuerungsart | Verhalten | Raumtypen |
|---|---|---|
| **Halbautomatisch** | Einschalten **von Hand**, Abschaltung nach Präsenz und Tageslicht | Büro, Sitzungszimmer, Schulzimmer, Arbeitsräume |
| **Vollautomatisch** | Ein- **und** Ausschalten automatisch nach Bewegung und Tageslicht | Korridor, Treppenhaus, WC, Garderobe, Parkgarage |

Ab **Raumtiefe > 6 m** getrennte Schaltkriterien für fensternahe und fensterferne Zone (nur bei
Halbautomatik). Dimmbare Lichtregelung und Szenensteuerung nur in Einzelfällen (Mehrzwecksaal,
Konferenzraum). Leuchten: Betriebswirkungsgrad 70-90 %, Leuchtmittel EU-Effizienzklasse A.

⚠ **Zwei Vorbehalte, ✓ Lux-Lücke seit 24.08.2026 geschlossen.** Erstens nannte die 2008er-Quelle
**keine Lux- und keine W/m²-Werte** — die konkreten Sollwerte stehen jetzt in der aktuellen
AHB-Lux-Tabelle nach SIA 387/4 + EN 12464-1, siehe
[[ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025]] (Büro/Sitzungszimmer
500 lx, Korridor/Treppenhaus 100 lx, Bettenzimmer 100 lx, Behandlungsraum 500-750 lx/Untersuchung
1'000 lx). Zweitens ist die Lampentechnik (Long-Life-Leuchtstoffröhren T8/T5, «Halogen
vermeiden») **vor-LED und damit überholt**; die Steuerungslogik gilt in der Substanz weiter,
ist aber im aktuellen AHB-Dokument (siehe unten) technisch präzisiert.

**Aktuelle Fassung (August 2025):** Die Steuerungslogik nach Raumtyp bleibt inhaltlich
unverändert, ist aber im heutigen AHB-System — [[ahb-richtlinie-gebaeudetechnik-229-2025]], Teil 3
— technisch konkretisiert: **DALI/DALI-2 ist heute der verbindliche Bus-Standard** für beide
Steuerungsarten, mit fixen **Nachlaufzeiten (5 Min. halbautomatisch, 2 Min. automatisch)** und der
optionalen «Schwarmtechnologie» für Verkehrsflächen/Garagen. ⚠ **Strukturell wichtiger Befund:**
die alte 9-teilige AHB-Richtlinienfamilie GT_RL1-GT_RL9 (2008, Grundlage dieses ganzen Artikels)
taucht in der aktuellen AHB-Dokumentenliste (Stand 08.2025) namentlich nicht mehr auf — die
heutige Struktur ist «KBOB-Empfehlung Gebäudetechnik (Basis) + Richtlinie 229 (schlanke
AHB-Ergänzung) + eigenständige Fachmerkblätter». Ob die alte Nummerierung formell aufgehoben
wurde, ist nicht geprüft (Detail und Fundstellen: `[[ahb-richtlinie-gebaeudetechnik-229-2025]]`,
Abschnitt «Fund-Anlass»). **Praktische Folge für diesen ganzen Artikel:** bei einem aktuellen
Projekt zuerst die KBOB-Empfehlung + Richtlinie 229 + das passende Fachmerkblatt prüfen, die
RL1-RL9-Inhalte hier als möglicherweise überholten Ausgangspunkt behandeln, nicht als aktuellen
Stand.

## Gebäudeautomation: die drei Vorgaben, die 20 Jahre halten

Aus [[ahb-zuerich-gt-rl9-gebaeudeautomation]]. Für die normative Seite (BACS-Klassen A-D,
MuKEn-Monitoringpflicht) gilt [[sia-386-bacs-gebaeudeautomation]]; hier steht die Bestellerlogik:

1. **30 % Erweiterbarkeitsreserve auf alle Systemgrenzen** — Ein-/Ausgänge, Adressraum,
   Speicherplatz, CPU-/Busbelastung, Leitungslängen. Nicht nur auf die Klemmen.
2. **Autarkie** — dezentrale Funktionseinheiten müssen bei Ausfall der Datenkommunikation oder
   des Leitsystems **autark weiterlaufen**, ohne Datenverlust bei Spannungsausfall.
3. **Herstellerunabhängigkeit aller Schnittstellen über die ganze Lebensdauer.**

Dazu getrennte Bedienrechte für drei Benutzergruppen (Benutzende / Betreibende / Servicepersonal)
und eine Alarm-Prioritätenkette: **Personenschäden > Gebäudeschäden > Störungen >
Wartungsfälligkeit**.

**Bauherren-Transfer:** Punkt 3 ist der teuerste Fehler, den man in der Gebäudetechnik machen
kann. Wer ein proprietäres Automationssystem zulässt, ist bei jeder Erweiterung an einen
Anbieter gebunden — über eine Nutzungsdauer, in der das Gebäude mehrfach umgenutzt wird. Der
Mehrpreis für offene Schnittstellen bei der Erstinstallation ist gegen genau dieses Lock-in
abzuwägen und gehört in den Variantenvergleich.

Die **IMMO-Box** (ab 1'000 m² EBF) ist dagegen **stadteigene Infrastruktur** und nicht
übertragbar; sie ist ausdrücklich nicht mit der MuKEn-Monitoringschwelle von 2'000 m² EBF zu
verwechseln.

## Raummodule: der Sollzustand je Raumtyp (ergänzt Run 129, 13.08.2026)

Aus [[ahb-raummodul-buero]] und [[ahb-raummodul-klassenzimmer]] (beide AHB Stadt Zürich, Juli 2008,
Erstfreigaben 2005 bzw. 2003). Der Gedanke dahinter ist die eigentliche Übertragung, nicht die
Zahlentabelle: Statt die Gebäudetechnik gebäudeweit zu beschreiben, wird sie **je Raumtyp** als
Sollzustand festgeschrieben — einmal durchdacht, danach in jedem Projekt wiederverwendet. Das senkt
den Planungsaufwand, reduziert Schnittstellenrisiken zwischen Planenden und Unternehmern und macht
die Anforderung überhaupt prüfbar.

Beide Module sind bemerkenswert ähnlich aufgebaut, was den Ansatz stützt: gleiche
Beleuchtungsstärke (500 Lux auf 70 cm Tischhöhe), gleiche Tageslicht-Ausschaltschwelle (über
800 Lux), gleicher Präsenz-Nachlauf (15 Minuten), gleiche Lüftungsvorgabe (25 m³/h pro Person,
CO₂-Grenzwert 1'500 ppm), gleiche Raumtemperatur (21 °C), gleiche Elektro-Grundausstattung
(4 Steckdosen plus 1 beim Eingang, 4 Kommunikationsanschlüsse), gleiche Storen-Frostsicherung
(unter 2 °C bei über 95 % relativer Feuchte — ⚠ das neuere, allgemeinere
[[ahb-merkblatt-386-storensteuerung]] (2017) nennt für dieselbe Funktion nur noch «< 2 °C», ohne
Feuchtebedingung; ungeklärt, ob bewusst vereinfacht) und dieselbe Vorgabe zum öffenbaren Fensterelement
(mindestens 5 % der Bodenfläche). Unterschiede liegen im Betriebsrhythmus, nicht im Zielwert: das
Klassenzimmer hat drei Beleuchtungszonen und eine Rückstellung der Storen in Grundposition um
12.30 Uhr, das Büro eine feinere Nachtstellung nach Storentyp.

Drei Vorgaben sind auch heute unverändert übernehmbar, weil sie keine Zahl, sondern eine
Betriebslogik sind:

1. **Vorlauf und Nachlauf der Lüftung an die Nutzung koppeln** — mindestens 30 Minuten vor
   Nutzungsbeginn ein, Präsenzsignal mit 10 Minuten Mindestdauer, mindestens 30 Minuten Nachlauf.
   Das ist der Unterschied zwischen einer Anlage, die nach Uhr läuft, und einer, die nach Belegung
   läuft.
2. **Einzelraumregelung mit begrenztem Nutzereingriff** — Sollwert um ±2 K justierbar. Genug
   Einfluss, dass niemand das Fenster öffnet, zu wenig, um die Anlage zu unterlaufen.
3. **Keine aktive Kühlung als Grundausstattung.** Das Büromodul enthält kein Kühlkapitel und keine
   Kühl-Kennwerte; sommerliche Behaglichkeit läuft ausschliesslich über Sonnenschutzautomatik und
   Fensterlüftung. Das deckt sich mit [[ahb-zuerich-gt-rl4-raumkuehlung]] und mit
   [[sommerlicher-waermeschutz]].

⚠ **Die Zahlen selbst sind Stand 2008 und keine heutige Anforderung.** Namentlich die
Aussenluftrate: die Module nennen 25 m³/h pro Person, [[komfortlueftung-wrg-sia382-luftwechsel]]
belegt für SIA 382/1:2025 IDA-Kategorien von 29/57/18 m³/h pro Person. Wer das Modul als Vorlage
nimmt, ersetzt die Auslegungswerte, nicht die Struktur. Geräte- und Verkabelungsannahmen von 2008
(vier RJ45 je Arbeitsplatz, Storenzeiten nach Metall- oder Textilstoren) sind ohnehin
nutzungsabhängig neu zu setzen.

## Healthcare: Gebäudeautomation im Pflegebetrieb (ergänzt Run 129, 13.08.2026)

Aus [[ahb-standard-gebaeudeautomation-pflegezentren]] (AHB Stadt Zürich mit den Pflegezentren PZZ,
Version 1.1, Juli 2008) — die erste Quelle dieser KB mit ausdrücklichem Pflegeheim-Bezug und damit
für JANS unmittelbar einschlägig. Drei Punkte hat ein generisches Gebäudeautomations-Pflichtenheft
nicht:

- **Die Nachtwache ist die Ausfallebene.** Ausserhalb der Bürozeiten des technischen Dienstes
  übernimmt das Pflegepersonal die Alarmreaktion, mit Eskalation über DECT und SMS. Wer im
  Pflegebau die Alarmkette plant, plant sie gegen eine Belegschaft, die pflegt und nicht Technik
  betreut — das begrenzt zulässige Alarmmenge und verlangt eine harte Priorisierung.
- **Patientenruf und Weglaufschutz werden bewusst NICHT in die Gebäudeautomation integriert**,
  weil eine 24-Stunden-Personalüberwachung ohnehin besteht. Das ist ein brauchbares Argument in
  der Schnittstellenabgrenzung: nicht jede technisch mögliche Integration ist betrieblich sinnvoll,
  und jede zusätzliche Kopplung ist eine zusätzliche Störquelle.
- **Bedienlogik nach Raumtyp gestaffelt** — grosse, einfache Taster im Patientenzimmer, feine
  Automatisierung in Verkehrs- und Nebenzonen. Dieselbe Denkweise wie bei den Raummodulen oben,
  hier mit der Nutzergruppe als bestimmender Grösse.

Zur Energiefrage verankert der Standard die **Verbrauchs- und Betriebsdatenerfassung als
verbindliche Systemanforderung**, nennt aber selbst keine Kennwerte; dafür gelten
[[energiemonitoring-submetering-grossverbraucher-zh-sz]] und [[sia-386-bacs-gebaeudeautomation]].

⚠ Nicht übertragbar ist die konkrete Systemarchitektur: **Züri-Netz, IMMO-Box, die
ESPA-4.4.4-Schnittstelle und das dort ausgesprochene EIB/KNX-Verbot** sind stadteigene
Infrastrukturentscheide von 2008. Gerade das EIB/KNX-Verbot wäre heute ein Fehlschluss, wenn man
es ungeprüft übernähme — es ist die damalige Kehrseite der Herstellerunabhängigkeit, nicht ihre
Umsetzung.

## Was NICHT übertragbar ist

Ehrlich abzugrenzen, damit der Artikel nicht mehr verspricht als er hält:

- Jede **Genehmigungspflicht «durch die Projektleitung AHB»** ist interne Governance eines
  öffentlichen Bauherrn und hat im privaten Mandat kein Äquivalent.
- Die **politischen Zielwerte von 2008** (Neubauten in Minergie, 40 % erneuerbar am Wärmebedarf
  Neubau, 50 % bei der Wassererwärmung im Bestand) stammen aus den Legislaturzielen 2006-2010
  und sind vom heutigen Recht längst überholt.
- **ewz-Wärmepumpentarif, «Behördenmodell», Züri-Netz, IMMO-Box** — stadteigene Vorgaben.
- Aus [[ahb-zuerich-gt-rl7-elektroanlagen]] ist für die Energiefrage wenig zu holen: der
  ehrliche Negativbefund des Laufs ist, dass **Messkonzept, PV und Ladeinfrastruktur im Dokument
  gar nicht vorkommen** (Stand 2008). Dafür gelten [[pv-eigenverbrauch-zev]],
  [[elektromobilitaet-ladeinfrastruktur]] und
  [[energiemonitoring-submetering-grossverbraucher-zh-sz]]. Übertragbar bleibt die
  USV-Batterie-Raumtemperatur von **22-25 °C** (höhere Temperatur verkürzt die Lebensdauer
  erheblich) und die 20-30 % Platzreserve in Schaltgerätekombinationen.

## Kennzeichnung, NIS und Batteriespeicher-Sicherheit (ergänzt 24.08.2026)

Drei weitere, aktuelle AHB-Fachmerkblätter (referenziert in [[ahb-richtlinie-gebaeudetechnik-229-2025]],
24.08.2026 primärquellengelesen) liefern zusätzliche, direkt pflichtenheft-taugliche Vorgaben:

- **Kennzeichnung/Beschriftung** (`[[ahb-richtlinie-265-kennzeichnung-beschriftung-gebaeudetechnik]]`,
  Juli 2022): sechsteiliger Adress-Code für Betriebsmittel/GA-Datenpunkte plus eine
  Medien-Abkürzungstabelle je Gewerk — als Vorlage für eine einheitliche Beschriftung über
  Elektro-, HLKS- und GA-Planer hinweg direkt übernehmbar.
- **Nichtionisierende Strahlung PR-NIS** (`[[ahb-merkblatt-385-planungsrichtlinie-nis]]`, ⚠
  Datenstand August 2011, 15 Jahre, vorgesehener 4-Jahres-Prüfzyklus überfällig): städtische
  Zusatzrichtlinie zur NISV mit raumnutzungsabhängigen Grenzwerten — **Bettenzimmer in der
  strengeren Nutzungszone A**, Stationszimmer/Behandlungsräume nur Zone B. Für ein
  Healthcare-Mandat eine konkrete, über die blosse NISV-Konformität hinausgehende
  Verhandlungsgrundlage; Kostenfolge Elektroinstallationen (BKP 23) 1-3 % Mehrkosten.
- **Sichere Lagerung Lithium-Ionen-Batterien** (`[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]`,
  September 2023): dreistufiges Konzept nach Energieinhalt (< 1 kWh sichere Platzierung,
  1-15 kWh zertifizierter Sicherheitsschrank mit 90-Min.-Feuerwiderstand nach SN EN
  14470-1/1363-1, > 15 kWh eigener Raum) — relevant für Velo-/E-Bike-Ladestationen und
  PV-Heimspeicher (vgl. [[batteriespeicher-heimspeicher-pv-ch]]).

Ein viertes referenziertes Merkblatt (393 Bühnentechnik) blieb wie 394 (Wärmepumpen-Messkonzept)
undestillierbar — beide sind vollständig bildbasiert gesetzt, kein Fliesstext extrahierbar.

## Aktualitätsprüfung der zitierten Normen (Run 122, 03.08.2026)

Weil die Quellen 18 Jahre alt sind, wurde nicht ein Refuter-Panel auf den Altstand gefahren
(das hätte nur bestätigt, dass 2008 korrekt wiedergegeben ist), sondern eine
**Aktualitätsprüfung**: Was gilt heute an Stelle des Zitierten? Die vier folgenden Punkte sind
nicht bloss gealtert, sie sind **inhaltlich falsch geworden** und dürfen aus diesem Block nicht
mehr übernommen werden.

| Zitat 2008 | Status heute | Folge |
|---|---|---|
| **Art. 20a LRV**, Konformitätsnachweis bis 350 kW | **Aufgehoben** per 01.01.2022 (V vom 20.10.2021, AS 2021 632) — am Fedlex-Volltext SR 814.318.142.1, Stand 01.01.2026, selbst verifiziert | Die Pflicht existiert nicht mehr. Emissionsbegrenzung und Feuerungskontrolle bleiben; weggefallen ist die produktrechtliche Schwelle |
| **SIA 380/4:2006** als Nachweisweg | **Archiviert**, gültig gewesen bis 31.07.2019 (an der SIA-Shop-Produktseite selbst verifiziert); nicht ersetzt, sondern **aufgeteilt** in SIA 387/4:2023 (Beleuchtung), SIA 2056:2019, SIA 382/2 | Es gibt keine «aktuelle SIA-380/4-Fassung». Die MINERGIE-¾-Skala hat keine Bezugsgrösse mehr. Tool energycodes.ch tot, Vollzug ZH über **EVEN**, Formular EN-111 |
| **EN 779:2002**, Filterklasse **F7** | Doppelt überholt (→ EN 779:2012 → **EN ISO 16890** ab 2018). **Methodenwechsel**, keine 1:1-Übersetzung | «F7» gehört nicht mehr in einen Ausschreibungstext. Orientierung ePM1 ≥ 50 %, aber reale Spreizung ePM2,5 60 % bis ePM1 65 % — Klasse aus der Anwendungsnorm herleiten (ODA → SUP) |
| **H-FKW R134a / R410A / R407C** als «bevorzugt» | **ChemRRV**: alle drei liegen über der GWP-Schwelle 750 und sind für neue Wärmepumpen und neue Gebäudekühlanlagen **nicht mehr zulässig** | Aus einer Bauherren-Empfehlung ist geltendes Recht geworden — und zwar strenger, als die Quelle es meinte. Bestandsanlagen laufen weiter, Frischware für GWP ≥ 2500 ist seit 2027 nicht mehr zulässig, für 750-2500 ab 2032 nur noch regeneriert |

Nur gealtert, aber weiter zitierbar mit korrekter Ausgabe: **SIA 180:1999 → SIA 180:2014**
(Korrigenda C1:2015/C2, Auslegungshilfe SIA 4001:2022) · **SIA 382/1:2007 → 2014 → 2025**
(neuer Titel «Mechanische Lüftung in Gebäuden», daneben neu SIA 382/5:2025 für Wohnbauten) ·
**DIN V 4279-7 zurückgezogen**, für Erdwärmesonden gilt in der Schweiz **SIA 384/6:2021**.

⚠ **Ziffern-Vorbehalt.** Bei SIA 382/1 und SIA 180 ist jeweils nur der **Normstatus** verifiziert,
**nicht die Kontinuität der Ziffernnummern**. Die im 2008er-Dokument zitierten Fundstellen
(SIA 382/1 Ziff. 4.4.4 Kühlbedarfsnachweis, 4.3, 5.6, 5.10-5.12; SIA 180 Ziff. 3.3.1.2) sind
über zwei Ausgabenwechsel und eine Titeländerung hinweg **nicht als stabil anzunehmen** und vor
Verwendung am geltenden Normtext nachzuschlagen. Die Normtexte sind kostenpflichtig.

## Offene Punkte

- Ob die Stadt Zürich die Richtlinien seit 2008 in einer neueren Version herausgegeben hat, ist
  **nicht geprüft** — die vorliegende Fassung ist die im JANS-Bestand abgelegte. Vor einer
  Berufung gegenüber der Stadt Zürich zu verifizieren.
- Die in RL8 erwähnte EN-12464-1-Übersichtstabelle **liegt entgegen der bisherigen Annahme im
  Bestand** (`PL - 02_Recht_Norm/04_Merkblätter/Projektadmin AHB/…/14.3-Richtlinien/`,
  Übersichtstabelle Beleuchtung EN 12464-1, AHB, 19.01.2007) und ist in
  `../../planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` §14.2 mit
  Zahlenwerten destilliert. **Aber:** sie gibt den Stand **EN 12464-1 vor 2011** und **SIA
  2024:2006** wieder und ist damit keine aktuelle Bemessungsgrundlage. Die heute geltenden
  Ausgaben (SN EN 12464-1:2021, SIA 2024:2015) liegen im Bestand **nicht** vor — die Lücke
  «aktuelle Lux-Bemessungsgrundlage fehlt» bleibt deshalb offen (E-122-6 **nicht** geschlossen).
  *(Berichtigt Wissens-Chef Run 24, 03.08.2026 — die Aussage «fehlt im Bestand» schickte den
  Nutzer auf einen kostenpflichtigen Umweg an einer vorhandenen Datei vorbei.)*
- Ein eigener Wiki-Themenartikel **Beleuchtung** (Lux-Werte, spezifische Anschlussleistung,
  Tageslichtquotient) fehlt der KB weiterhin; RL8 liefert dafür die Steuerungslogik, aber keine
  Zahlen.
