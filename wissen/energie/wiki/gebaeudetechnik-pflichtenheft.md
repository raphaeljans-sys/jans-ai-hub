---
title: "Pflichtenheft Gebäudetechnik — was eine Bauherrschaft verbindlich vorgeben sollte"
status: emerging
last_updated: "2026-08-03 (Run 122, neu angelegt)"
sources:
  - "[[ahb-zuerich-gt-rl1-planungsgrundlagen]] bis [[ahb-zuerich-gt-rl9-gebaeudeautomation]] — Richtlinien Gebäudetechnik der Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie & Gebäudetechnik, Version 2.1, Juli 2008 (in Kraft seit 04.05.2004, Fassung 2.1 freigegeben 18.06.2008)"
  - "Aktualitätsprüfung der zitierten Normen: siehe outputs/2026-08-03_energie-run122.md"
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
| Wärmepumpen/Kältemaschinen | **JAZ für das Gesamtsystem inkl. Förderenergie** dokumentieren UND messtechnisch überprüfen, Systemgrenze ausweisen | RL1, RL3, RL4 |
| Kälteanlagen ab 5 kW | eigener Strom- und Impulszähler | [[ahb-zuerich-gt-rl4-raumkuehlung]] |
| Lüftung | WRG-Temperaturänderungsgrad bei jeder Anlage nachmessen; Kanaldichtheit **vor dem Isolieren** prüfen | [[ahb-zuerich-gt-rl5-lueftungsanlagen]] |
| Beleuchtung | Nachweis (2008: SIA 380/4 — **heute SIA 387/4:2023**), ab ca. 5 Mio. CHF Bausumme **dreistufig** (Projekt / Ausschreibung / Übergabe) | [[ahb-zuerich-gt-rl8-beleuchtung]] |
| Betrieb | **1-2 Jahre fachliche Nachbetreuung (Betriebsoptimierung) nach Inbetriebsetzung** | [[ahb-zuerich-gt-rl1-planungsgrundlagen]] |

**Bauherren-Transfer:** Die JAZ-Messpflicht und die Betriebsoptimierung sind die zwei Punkte, die
in privaten Projekten am häufigsten fehlen. Eine Wärmepumpe wird mit einer Herstellerangabe
verkauft und nie nachgemessen; niemand merkt, wenn sie real deutlich schlechter läuft. Die
Nachbetreuung über 1-2 Jahre ist ein Honorarposten, der sich über die Betriebskosten meist
selbst trägt — er muss aber im Vertrag stehen, sonst findet er nicht statt.

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

⚠ **Zwei Vorbehalte.** Erstens nennt die Quelle **keine Lux- und keine W/m²-Werte** (die
erwähnte EN-12464-1-Übersichtstabelle ist nicht Teil des Dokuments) — konkrete Sollwerte müssen
aus der geltenden EN 12464-1 kommen. Zweitens ist die Lampentechnik (Long-Life-Leuchtstoffröhren
T8/T5, «Halogen vermeiden») **vor-LED und damit überholt**; die Steuerungslogik dagegen gilt
unverändert.

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
