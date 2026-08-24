---
quelle: SIA «Grundlagenbericht zu SIA 2024 — Revision 2021 inkl. Korrigenda SIA 2024-C1:2024» (cms.sia.ch/de/api/getMedia/941); SIA «Harmonisierung SIA-Standardwerte und Gebäudekategorien — Statusbericht» (cms.sia.ch/de/api/getMedia/940, bezieht sich auf Vernehmlassungsentwurf SIA 2024:2019); BFE/EnergieSchweiz «Kälte effizient erzeugen — Das Wichtigste zur Kälteerzeugung nach SIA 382/1» (pubdb.bfe.admin.ch/de/publication/download/8559); EnFK-Anforderungsprofil SIA 380/1:2016 (Version 16.01a, 11.04.2017); **SIA 2024-C2:2025 «Korrigenda C2 zum Merkblatt SIA 2024:2021», deutsche Fassung, SNR 592024:2021-C2:2025 de, 15 S., gültig ab 2025-06-01, gefunden 24.08.2026 über shop.sia.ch (GUID bf2a2d6f-443c-47e0-b73a-5c7a5060ed31, Endpunkt `/D/DownloadAnhang`) — die Korrigenda selbst ist laut eigenem Text («Sie steht unter www.sia.ch/korrigenda … zur Verfügung») kostenlos, anders als das Merkblatt SIA 2024:2021 selbst; vollständig gelesen**
herausgeber: SIA (Schweizerischer Ingenieur- und Architektenverein), Kommission 2024 / Kommission 382; Bundesamt für Energie (BFE) / EnergieSchweiz
ausgabe: SIA 2024:2021 inkl. Korrigenda C1:2024 **und C2:2025** (aktuell gültige Fassung, ersetzt SIA 2024:2015); Statusbericht bezieht sich auf den Vernehmlassungsentwurf SIA 2024:2019 (Konsultationsstand, nicht deckungsgleich mit der schliesslich verabschiedeten 2021er-Fassung); SIA 382/1 in Kraft seit 1.7.2014 (BFE-Merkblatt bezieht sich auf diese Ausgabe; seit 1.2.2025 gilt SIA 382/1:2025 — im BFE-Merkblatt nicht mehr abgebildet, als offener Punkt vermerkt)
gelesen: 2026-07-14, PDFs vollständig via pdftotext ausgewertet (Grundlagenbericht 43 S., Statusbericht ~40 relevante Seiten, BFE-Merkblatt 6 S.); **Korrigenda C2:2025 vollständig gelesen 24.08.2026 (curl+PyPDF2, deutsche UND französische Fassung geladen, deutsche zitiert)**
datenstand: Grundlagenbericht datiert 20.10.2024; Statusbericht Copyright 2019 (Vernehmlassungsstand SIA 2024:2019, teilweise durch die verabschiedete Fassung SIA 2024:2021 überholt, siehe unten Tabelle-20-Abgleich); BFE-Merkblatt undatiert im Extrakt, bezieht sich auf SIA 382/1:2014; **Korrigenda C2:2025 gültig ab 01.06.2025 — jüngster Datenstand dieses Artikels für die Tabellen 4-9/11/14-17/20**
status: emerging (die Korrigenda C2:2025 liefert jetzt primärquellenbelegte, freie Energie-/Leistungsbedarfswerte für 8.01-8.03 und die Gebäudekategorie-VIII-Summe — die eigentlichen vollständigen Raumdatenblätter mit allen Eingabeparametern (Personendichte, Betriebszeiten je Raumnutzung, Anhang A/B/C im Detail) liegen weiterhin NICHT im Volltext vor, da das Merkblatt SIA 2024:2021 selbst kostenpflichtig im SIA-Shop bleibt; keine Sekundärquelle konnte das widerlegen)
last_updated: 2026-08-24
merge_historie: "2026-07-26 — Merge des Zwillings-Destillats `sia-2024-nutzungsdaten-gesundheitsbau` (140 Zeilen, Run 69) in diesen Artikel auf Freigabe Raphael. Uebernommen: Flaechenanteile-Tabelle (Statusbericht Tab. 5), Vergleich geltend SIA-380/1-Tab.-27 vs. Harmonisierungsvorschlag SIA-2024:2019 inkl. EnFK-Grenzwerte, Luftmengen-Zeitreihe 2015 vs. 2021-Entwurf, drei offene Punkte, Backlinks. Quelldatei geloescht, alle Backlinks umgebogen."
---

# SIA 2024 Raumnutzungsdaten für Energie- und Gebäudetechnik — Fokus Gesundheitsbau (Spital/Pflegeheim) und Büro

## Das Wichtigste in 1 Satz

SIA 2024 liefert die raumnutzungsscharfen Eingabedaten (interne Lasten, Betriebsstunden, Luftmengen,
Raumtemperaturen), mit denen SIA 380/1 und SIA 382/1 rechnen; für Gesundheitsbauten trennt die Norm
seit der Revision 2021 explizit **Bettenzimmer, Stationszimmer und Behandlungsraum** mit sehr
unterschiedlichen Kennwerten und grenzt zusätzlich **Prozessanlagen** (Medizingeräte, Serverraum-Kühlung,
Kühlräume) heraus, die einen Vielfachen des Wohnbau-Elektrizitätsbedarfs ausmachen, aber bewusst NICHT
in den kantonalen Energienachweis einfliessen — operationssäle und Diagnostikräume mit MRI/CT sind dabei
explizit aus dem Standardprofil «Behandlungsraum» ausgenommen und müssen projektspezifisch bemessen
werden.

## Was ist SIA 2024 und wie verhält sie sich zu SIA 380/1 und SIA 382/1

- **SIA 2024** («Raumnutzungsdaten für die Energie- und Gebäudetechnik») ist die **Datengrundlage**, nicht
  selbst ein Nachweisverfahren: sie legt für jede von ca. 45 Raumnutzungen fest, mit welchen
  Standardannahmen (Personendichte, Geräte-/Prozessanlagenleistung, Beleuchtung, Aussenluft-Volumenstrom,
  Raumtemperatur, Betriebsprofil) gerechnet wird, wenn keine genaueren Angaben vorliegen — «damit alle
  Beteiligten von der gleichen Nutzung ausgehen» (sinngemäss aus dem SIA-Shop-Eintrag zu SIA 2024:2015,
  welche SIA 2024:2006 sowie Teile von SIA 382/1:2006 ersetzte).
- **Ausgabenhistorie:** SIA 2024:2006 → SIA 2024:2015 (ersetzte 2006 sowie Teile von SIA 382/1:2006) →
  SIA 2024:2021 (aktuell gültig, inkl. Korrigenda SIA 2024-C1:2024, welche die Normbezüge auf SIA 380:2022
  und SIA 387/4:2023 aktualisiert).

> **Querbezug KB normen (Fundstelle/Ausgabe):** Die Norm-Fundstellen SIA 2024 / SIA 382/1 fuehrt die
> normen-KB (Register `wissen/normen/wiki/REGISTER`). ⚠ **Ausgaben-Diskrepanz:** dieser Artikel arbeitet
> mit **SIA 2024:2021** und **SIA 382/1:2025**; das normen-Register fuehrt bislang **2006** bzw. **2014**.
> Re-Destillate in normen ausstehend (Wissens-Chef Run 4, 2026-07-14).
- **Verhältnis zu SIA 380/1** (Heizwärmebedarf): SIA 2024 liefert die Eingabedaten, SIA 380/1 das
  Nachweisverfahren für den Heizwärmebedarf im kantonalen Energievollzug. Die 12
  Gebäudekategorien aus SIA 380/1 (Tab. 24/25, bereits im Destillat
  [[sia-380-1-standardnutzungswerte-tab24-25]] dokumentiert) entsprechen im Statusbericht als «SIA 380/1
  Tabelle 27» bezeichneten Standardnutzungswerten — die dortigen Werte für Kategorie VIII Spital
  (Raumtemperatur 22 °C, Personenfläche 30 m²/P, Wärmeabgabe 80 W/P, Präsenzzeit 16 h/Tag,
  Elektrizitätsbedarf 28 kWh/m², Aussenluft-Volumenstrom 1.0 m³/(h·m²), Wärmebedarf Warmwasser
  28 kWh/m²) sind **deckungsgleich** mit dem bereits vorhandenen KB-Destillat (dort in MJ/m² statt kWh/m²
  angegeben: 100 MJ/m² ÷ 3.6 = 27.8 kWh/m² ≈ 28) — eine gute Kreuzverifikation zwischen zwei unabhängig
  gelesenen Quellen.
- **Verhältnis zu SIA 382/1** (Lüftungs-/Klimaanlagen): SIA 2024:2015 übernahm Teile von SIA 382/1:2006;
  SIA 2024:2021 liefert neu nur noch den Aussenluft-Volumenstrom pro Raumnutzung, während der
  elektrische/thermische Leistungs- und Energiebedarf von Lüftungsanlagen ausschliesslich auf Anlage-/
  Gebäudeebene (nicht mehr pro Raumnutzung) bestimmt wird. SIA 382/1 selbst wurde am 1.2.2025 revidiert
  (SIA 382/1:2025 ersetzt die Ausgabe 2014) — das vorliegende BFE-Merkblatt bezieht sich noch auf die
  2014er-Fassung, ein Abgleich mit 2025 steht aus (offener Punkt).
- **Wichtigste Änderungen SIA 2024:2015 → SIA 2024:2021** (aus dem SIA-Grundlagenbericht, 20.10.2024):
  Neue Elektrizitätskennzahlen für Geräte (Abgleich mit SIA 2056:2020 und dem Minergie «Strommodell für
  Zweckbauten»); Einführung der Kategorie **Prozessanlagen** mit klarer Abgrenzung von den Geräten; neue
  Beleuchtungskennzahlen aus SIA 387/4; angepasste Annahmen zum hygienebedingten Aussenluft-Volumenstrom
  (Auslegungswert neu 29 statt 36 m³/h pro Person); ein vereinfachtes Verfahren zur Abschätzung von
  Klimakälteleistung und -jahresbedarf direkt aus den SIA-2024-Eingabedaten (ohne Umweg über SIA 2044);
  neu **zwei** Raumtemperaturen pro Raumnutzung (Auslegung Heizlast vs. Berechnung Heizwärmebedarf; analog
  für Sommer/Kühlung).

## Gebäudekategorie VIII «Spital»: Unterteilung in VIII.1 Spital und VIII.2 Pflege

Der SIA-Statusbericht «Harmonisierung SIA-Standardwerte und Gebäudekategorien» (2019, Grundlage für die
spätere Revision) begründet ausdrücklich, warum die bisherige Einheitskategorie VIII Spital für Neubauten
zu grob ist (Ziff. 2.3.4.4):

> «Die Gebäudekategorie VIII Spital wird unterteilt in VIII.1 Spital (Akutspital, Universitätsspital,
> Klinik) und VIII.2 Pflege (Pflegeheim, Altersheim, Rehabilitation, psychiatrische Klinik). Die erste
> Unterkategorie hebt sich durch Operations- und Behandlungsräume und eine aufwändige Diagnostik (CT, MRT)
> ab. In der zweiten Unterkategorie dominiert der Flächenanteil der Bettenzimmer.»

GWR-Zuordnung (Gebäude- und Wohnungsregister): VIII.1 Spital → GWR-Bauwerktyp 6253 («Spitäler,
Behandlungsräume»); VIII.2 Pflege → GWR-Bauwerktyp 6254/6255 («psychiatrische Kliniken, Krankenheime,
Altersheime, Rehabilitationszentren»). Für JANS heisst das: ein Pflegeheim/Altersheim läuft normativ unter
VIII.2, ein Akutspital/Klinik mit OP-Trakt unter VIII.1 — mit spürbar unterschiedlichem Energiebedarfsprofil
(siehe Tabelle unten).

### Typische Flächenanteile innerhalb der Kategorie (Statusbericht Tab. 5, Entwurfsstand 2019)

| Raumnutzung | VIII undiff. | VIII.1 Spital | VIII.2 Pflege |
|---|---|---|---|
| Bettenzimmer | 40 % | 35 % | 50 % |
| Stationszimmer | 5 % | 5 % | 5 % |
| Behandlungsraum | 10 % | 15 % | 5 % |
| Verkehrsfläche | 10 % | 10 % | 10 % |
| Treppenhaus | 5 % | 5 % | 5 % |
| Nebenraum | 10 % | 10 % | 10 % |
| WC/Bad/Dusche | 5 % | 5 % | 5 % |
| Garderobe/Dusche | 5 % | 5 % | 10 % |

Das ist die quantitative Begründung der Unterteilung: der Bettenzimmer-Anteil steigt von 35 % (VIII.1) auf
50 % (VIII.2), der Behandlungsraum-Anteil fällt von 15 % auf 5 %. Da Bettenzimmer und Behandlungsraum sich
in Aussenluft-Volumenstrom und Prozessanlagen-Bedarf um ein Mehrfaches unterscheiden (Tabellen unten),
verschiebt allein diese Flächenverteilung das Bedarfsprofil deutlich. ⚠ Entwurfsstand 2019 — nicht
verifiziert, ob unverändert in SIA 2024:2021 übernommen.

## Standardnutzungswerte Kategorie VIII — geltend (SIA 380/1 Tab. 27) vs. Harmonisierungsvorschlag (SIA 2024:2019-Entwurf)

| Kennwert | SIA 380/1 Tab. 27 (geltend) | Harmonisierungsvorschlag SIA 2024:2019 |
|---|---|---|
| Raumtemperatur | 22 °C | 20 °C |
| Personenfläche | 30 m²/Person | 20 m²/Person |
| Wärmeabgabe/Person | 80 W/Person | 70 W/Person |
| Präsenzzeit/Tag | 16 h | 12 h |
| Elektrizitätsbedarf | 28 kWh/m² | 34 kWh/m² |
| Reduktionsfaktor Elektrizität | 0.7 | 0.6 |
| Aussenluft-Volumenstrom | 1.0 m³/(h·m²) | 0.6 m³/(h·m²) hygienisch / 0.9 Jahresdurchschnitt / 25 m³/(h·Person) |
| Wärmebedarf Warmwasser | 28 kWh/m² | 33 kWh/m² inkl. 50 % Verluste (22 kWh/m² Nutzwarmwasser) |

**Wichtiger Vorbehalt:** Für den *rechtlich massgebenden* Energienachweis (SIA 380/1, EnFK-
Anforderungsprofil Version 16.01a/2017) gilt weiterhin die linke Spalte (22 °C, 30 m²/Person, 80 W/Person,
1.0 m³/(h·m²)) — nicht die feineren SIA-2024-Werte. Grenzwert Heizwärmebedarf Neubau (Kt. ZH/SZ, 9.4 °C
Jahresmitteltemperatur): Q_H,li0 = 18 kWh/m², ΔQ_H,li = 17 kWh/m²; Umbauten/Umnutzungen: 1.5 × Neubau-Wert.
U-Wert-Grenzwerte gelten gebäudekategorie-unabhängig. Für Kategorie VIII besteht **keine** Anforderung an
die spezifische Heizleistung p_h,li (anders als bei Wohnen/Verwaltung/Schulen).

## Raumnutzungs-Ebene (SIA 2024:2021): Bettenzimmer, Stationszimmer, Behandlungsraum

Anders als SIA 380/1 (eine Kennzahl pro Gebäudekategorie) differenziert SIA 2024:2021 innerhalb des
Spital-/Pflegebereichs auf Raumnutzungs-Ebene. Aus dem Grundlagenbericht (Tab. 13/14/15, Ziff. 6.3)
lassen sich folgende Lüftungs-Volllaststunden und Aussenluft-Volumenströme pro Raumnutzung entnehmen:

| SIA-Nr. | Raumnutzung | Aussenluft-Volumenstrom SIA 2024:2021 (m³/(h·m²)) | Ventilatorregelung | Volllaststunden Volumenstrom (SIA 2024:2021) |
|---|---|---|---|---|
| 8.01 | Bettenzimmer | 1.93 | einstufig | 8'760 h (durchgehender 24/7-Betrieb, kein Nachtabschalten) |
| 8.02 | Stationszimmer | 9.67 | stufenlos | 3'140 h |
| 8.03 | Behandlungsraum | 5.80 | zweistufig | 3'300 h |

Zum Vergleich Wohnen MFH (1.01): 0.83 m³/(h·m²), einstufig, 8'760 h Volllaststunden Elektroenergie, aber
nur 0.58–1.00 m³/(h·m²) Aussenluft-Volumenstrom insgesamt deutlich tiefer als Stationszimmer/Behandlungsraum.
**Kernbefund:** Das Bettenzimmer läuft (wie eine Wohnung) durchgehend, aber mit gut doppelt so hohem
Aussenluft-Volumenstrom pro m²; Stationszimmer und Behandlungsraum haben nochmals 5- bis 10-fach höhere
Luftraten — der Lüftungsenergiebedarf pro m² liegt bei 8.01 bei 9.3 kWh/m² und bei 8.02 bei 16.7 kWh/m²
(elektrische Energie Ventilator, Tab. 13/14).

### Norm-Entwicklung SIA 2024:2015 → 2021-Entwurf (zeigt die Richtung, nicht nur den Endstand)

| Raum | Aussenluft (2015) | Volllaststunden (2015) | Aussenluft (2021-Entwurf) | Volllaststunden (2021-Entwurf) |
|---|---|---|---|---|
| 8.01 Bettenzimmer | 2.40 m³/(h·m²) | 7'010 h | 1.93 m³/(h·m²) | 8'760 h |
| 8.02 Stationszimmer | 12.00 m³/(h·m²) | 2'920 h | 9.67 m³/(h·m²) | 3'140 h |
| 8.03 Behandlungsraum | 7.20 m³/(h·m²) | 1'960 h (2-stufig) | 5.80 m³/(h·m²) | ≈3'300 h |

Der Auslegungswert je Person sinkt allgemein von 36 auf 29 m³/h/Person (Reduktion für Räume mit
unterstützender Fensterlüftung). **Wichtig für die Bedarfsprognose:** bei Bettenzimmern und
Behandlungsräumen führt das wegen zusätzlicher Vor-/Nachspülzeiten teils zu **höheren** Volllaststunden —
der gesunkene spezifische Volumenstrom bedeutet also nicht automatisch weniger Energiebedarf. Beim
Bettenzimmer steigen die Volllaststunden von 7'010 h auf den durchgehenden 24/7-Betrieb (8'760 h).

## Energie- und Leistungsbedarf 8.01–8.03 nach SIA 2024-C2:2025 (Nachtrag 24.08.2026)

Die Korrigenda C2:2025 (gültig ab 1.6.2025) ersetzt die Tabellen 4–9 des Merkblatts vollständig und
ist — anders als das Merkblatt SIA 2024:2021 selbst — kostenlos zugänglich (offizieller SIA-Hinweis
im Dokument: «Sie steht unter www.sia.ch/korrigenda … zur Verfügung»). Das schliesst den bisherigen
offenen Punkt «kein W/m²-Kennwert für Klimakälteleistung von Spital-/Pflegeräumen gefunden» und
liefert erstmals primärquellenbelegte, freie Zahlen für die drei Gesundheitsbau-Raumnutzungen:

**Energiebedarf pro Nettogeschossfläche (Tab. 4/5/6 C2:2025), kWh/m²·a:**

| Raumnutzung | Wertebereich | Geräte (EA) | Prozessanlagen (EPs) | Beleuchtung (EL) | Klimakälte (QC) | Heizwärme (QH) | Warmwasser (QW) |
|---|---|---|---|---|---|---|---|
| 8.01 Bettenzimmer | Standard | 10.5 | 0 | 8.2 | 13.7 | 10.8 | 67.7 |
| 8.01 Bettenzimmer | Zielwert | 7.0 | 0 | 2.7 | 11.3 | 6.0 | 67.7 |
| 8.01 Bettenzimmer | Bestand | 14.0 | 0 | 10.5 | 0.3 | 89.0 | 67.7 |
| 8.02 Stationszimmer | Standard | 31.5 | 0 | 55.7 | 73.0 | 1.2 | 0.0 |
| 8.02 Stationszimmer | Zielwert | 15.8 | 0 | 28.3 | 49.3 | 1.2 | 0.0 |
| 8.02 Stationszimmer | Bestand | 47.3 | 0 | 71.6 | 17.4 | 68.2 | 0.0 |
| 8.03 Behandlungsraum | Standard | 32.7 | 33 | 28.0 | 24.4 | 9.0 | 0.0 |
| 8.03 Behandlungsraum | Zielwert | 21.8 | 11 | 10.7 | 16.8 | 4.8 | 0.0 |
| 8.03 Behandlungsraum | Bestand | 43.6 | 44 | 36.0 | 4.4 | 87.2 | 0.0 |

**Leistungsbedarf pro Nettogeschossfläche (Tab. 7/8 C2:2025), W/m²:**

| Raumnutzung | Wertebereich | Geräte (pA) | Prozessanlagen (pPs) | Beleuchtung (pL) | Klimakälte (C) | Heizwärme (HL) |
|---|---|---|---|---|---|---|
| 8.01 Bettenzimmer | Standard | 6 | 0 | 5.3 | 31.9 | 16.9 |
| 8.01 Bettenzimmer | Zielwert | 4 | 0 | 3.4 | 24.6 | 13.0 |
| 8.02 Stationszimmer | Standard | 10 | 0 | 9.7 | 64.6 | 16.4 |
| 8.02 Stationszimmer | Zielwert | 5 | 0 | 6.2 | 52.6 | 13.2 |
| 8.03 Behandlungsraum | Standard | 15 | 15 | 14.6 | 60.2 | 20.5 |
| 8.03 Behandlungsraum | Zielwert | 10 | 5 | 9.3 | 47.5 | 15.7 |

**Einordnung:** Die Prozessanlagen-Leistung des Behandlungsraums bleibt bei 15 W/m² (Standard) —
deckungsgleich mit dem bereits an anderer Stelle in dieser KB primärquellen-verifizierten Wert
(FAQ-Run 80, 18.07.2026). Die im Grundlagenbericht (Okt. 2024, oben unter «Prozessanlagen»)
zitierte Zahl «Elektrizitätsbedarf gesamt 8.03 = 120 kWh/m², davon 33 Prozessanlagen» ist damit
**durch C2:2025 präzisiert, nicht widerlegt**: 33 kWh/m² Prozessanlagen stimmt exakt; die Summe aus
Geräten (32.7) + Prozessanlagen (33) + Beleuchtung (28.0) ergibt nach C2:2025 aber 93.7 statt 120
kWh/m² — der Grundlagenbericht bezog sich auf den Stand vor der Korrigenda-Korrektur vom 1.6.2025
(Geräte/Beleuchtung wurden nachträglich gesenkt, Prozessanlagen unverändert gelassen). Für
Bauherren-Aussagen ab sofort die C2:2025-Werte zitieren, nicht mehr die Grundlagenbericht-Tabelle.
**Kernaussage bestätigt sich:** Klimakälte- und Elektrizitätsbedarf von Stationszimmer/
Behandlungsraum liegen ein Mehrfaches über dem Bettenzimmer; das Bettenzimmer trägt dafür den mit
Abstand höchsten Warmwasserbedarf (67.7 kWh/m², unverändert über alle drei Wertebereiche — SIA 2024
behandelt Warmwasser nicht effizienzabhängig, sondern als fixen Nutzungswert).

## Prozessanlagen: die zentrale Neuerung für Gesundheitsbauten

Die Revision SIA 2024:2021 führt erstmals eine eigene Kategorie **Prozessanlagen** ein, die von den
gewöhnlichen «Geräten» abgegrenzt wird (Ziff. 5, Grundlagenbericht) — für Gesundheitsbauten die
wichtigste Neuerung, weil sie den Sonderbedarf sichtbar macht und zugleich vom kantonalen Energienachweis
ausnimmt.

**Definition Prozessanlagen (SIA 380:2015):** «Nutzungsspezifische Anlagen (Produktionsanlagen,
Grossküchengeräte, Grossrechner in Rechenzentren, Anlagen für medizinische Untersuchungen und
Behandlungen usw.)».

**Für Gesundheitsbau relevante Raumnutzungen mit Prozessanlagen-Ausweis:**

| SIA-Nr. | Raumnutzung | Typische Prozessanlagen | Elektrizitätsbedarf gesamt (Standard, kWh/m²) | davon Prozessanlagen (kWh/m²) | Anteil |
|---|---|---|---|---|---|
| 8.03 | Behandlungsraum | EKG-/Ultraschallgeräte, Behandlungsleuchten, Röntgenfilmbetrachter | 120 | 33 | 28 % |
| 12.11 | Kühlraum | Gewerbliche Kälte (Kälteerzeugung) | 318 | 318 | 100 % |
| 12.12 | Serverraum | Serverschränke, USV-Anlagen, Umluftkühler | 1'052 | 1'052 | 100 % |
| 6.03/6.04 | Küche zu Restaurant/Selbstbedienungsrest. | Grossküchengeräte, gewerbliche Kälte, Küchenabluft | 576 / 387 | 481 / 329 | 84 % / 85 % |

Bezugsgrösse ist jeweils die Nettogeschossfläche des betreffenden Raums, nicht die gesamte
Energiebezugsfläche des Gebäudes — die Werte sind also nicht direkt auf eine ganze Pflegeabteilung
umlegbar, zeigen aber die Grössenordnung pro Funktionsraum.

**Wichtige Ausnahme — OP-Säle und Diagnostik sind NICHT im Standardprofil enthalten:** Der
Grundlagenbericht stellt ausdrücklich klar: «Nicht zu den Behandlungsräumen werden hochinstallierte
Operationssäle sowie zentrale Diagnostikräume mit MRI oder CT-Anlagen gezählt.» Für diese Räume liefert
SIA 2024 **keinen** Standardkennwert — sie müssen projektspezifisch (Herstellerangaben der Grossgeräte,
effektive Kühl-/Lüftungsauslegung) bemessen werden. Das ist für JANS-Projekte mit OP-Trakt (z.B.
Akutspital-Umbauten) ein zentraler Punkt: hier gilt die Kennwerte-Bibliothek der Norm nicht, es braucht
eine gerätespezifische Abklärung mit dem Fachplaner Medizintechnik/HLK.

**Prozesskälte/-anlagen im kantonalen Energievollzug (Zitat EnFK-Wegleitung EN-101b, zitiert im
Grundlagenbericht):** «Die Prozesskälte muss nicht in den Kältebedarf für den Nachweis eingerechnet
werden (z.B. Gewerbekälte oder Kühlung Serverräume, etc.).» Das heisst konkret: die Kühlung von
Serverräumen, Kühlräumen und vergleichbaren Prozessanlagen fliesst **nicht** in den behördlichen
Energienachweis ein — muss aber selbstverständlich real ausgelegt und finanziert werden (Bauherren-
Transfer unten).

## Raumtemperaturen SIA 2024:2021

- Neu **zwei** Temperaturwerte pro Raumnutzung: eine tiefere für die **Auslegung der Heizlast**
  (meist 21 °C) und eine höhere für die **Berechnung des jährlichen Heizwärmebedarfs** (meist 22 °C) —
  Begründung: Messdaten zeigen, dass die effektive Raumtemperatur während der Heizperiode in der Mehrheit
  der Gebäude bereits bei 22 °C oder höher liegt; die Norm passt die Rechengrundlage der Realität an.
- Analog für den **Sommerfall**: 26 °C für die Auslegung der Klimakälteleistung, 25 °C für die Berechnung
  des jährlichen Klimakältebedarfs.
- Diese SIA-2024-Werte gelten **ausschliesslich innerhalb von SIA 2024** (z.B. für die
  Leistungs-/Energiekennzahlen des Gebäudetools); der behördliche Heizwärmenachweis nach SIA 380/1 und
  SIA 380/2 verwendet eigene, im Grundlagenbericht nicht identische Temperatur-Sollwerte — eine künftige
  Anpassung von SIA 380/1 an diese neuen Werte wird laut Bericht erst in einem separaten
  Umsetzungsprojekt geprüft (Stand Grundlagenbericht Okt. 2024: noch nicht vollzogen).
- Aus dem Statusbericht (Tab. 3, «SIA 380/1 Tabelle 27»): Kategorie VIII Spital hat mit 22 °C bereits
  die höchste Innentemperatur aller Nichtwohnkategorien (Vergleich: Büro/Schule/Verkauf/Restaurant je
  20 °C) — konsistent mit dem Behaglichkeitsbedürfnis von Patienten/Bewohnenden.

## Kühlung/Klimakälte: SIA 382/1-Systematik und die Komfort-/Prozessgrenze

- **Zuständigkeit:** SIA 382/1 (in Kraft seit 1.7.2014, revidiert per 1.2.2025 als SIA 382/1:2025) regelt
  alle Lüftungs- und Klimaanlagen in Gebäuden; für die Kälteerzeugung ist v.a. Abschnitt 5.6 und Anhang C
  massgebend. **Für luftgekühlte Kältemaschinen mit Nutzleistung < 12 kW enthält die Norm keine Vorgaben.**
- **Grenzwert «erwünschte, aber nicht notwendige» Kühlung** (aus dem BFE-Merkblatt, zu SIA 382/1:2014):
  Ist eine Kühlung laut der SIA-382/1-Beurteilung «erwünscht», aber nicht «notwendig» (Beurteilung anhand
  Sonnenschutz, Speicherfähigkeit, interne Wärmelasten), sind **nur Anlagen mit max. 7 W/m² elektrischem
  Gesamt-Leistungsbedarf** zulässig (bei **bestehenden** Gebäuden bis 12 W/m², bezogen auf die
  Nettogeschossfläche). Das begrenzt Komfortkühlung dort, wo sie nicht zwingend ist — für ein
  Gesundheitsgebäude mit klarer «notwendig»-Einstufung (z.B. wegen hoher interner Lasten durch Personal/
  Geräte, Personendichte, Hygienevorgaben) gilt diese Deckelung nicht, dort ist eine leistungsstärkere
  Anlage zulässig.
- **Minimale Kaltwassertemperaturen** (Effizienzvorgabe SIA 382/1): 14 °C für Klimatisierung ohne
  Entfeuchtung, 10 °C bei teilweiser, 6 °C bei kontrollierter Entfeuchtung (z.B. für OP-/Reinraumklima mit
  Feuchteanforderungen könnte kontrollierte Entfeuchtung relevant werden — im BFE-Merkblatt selbst nicht
  gesundheitsbau-spezifisch ausgeführt, hier als Analogieschluss markiert).
- **Berechnungsmethodik Klimakälte in SIA 2024:2021** (Grundlagenbericht Kap. 8): neu ein vereinfachtes
  Verfahren, das die stündliche Klimakälteleistung C = P + A + L + s + T + V (Personen, Geräte,
  Beleuchtung, solare Einträge, Transmission, Lüftung) direkt aus den SIA-2024-Eingabedaten am
  August-Auslegungstag (SIA 2028-Klimadaten) berechnet, ohne den bisherigen Umweg über das
  SIA-2044-Stundenverfahren. Für den Jahresbedarf ein Monatsbilanzverfahren analog SIA 380/1.
  **Kein raumnutzungsspezifischer W/m²- oder kWh/m²-Zahlenwert für die Kühlleistung von Spital/Pflege
  liess sich im Grundlagenbericht finden** — die Norm liefert die Berechnungsmethode, nicht einen
  fixen Kennwert für Kategorie VIII (offener Punkt **geschlossen 24.08.2026**: die Korrigenda
  C2:2025 liefert den Kennwert direkt, siehe Tabelle oben — Klimakälte-Leistung Standard 31.9 W/m²
  Bettenzimmer, 64.6 W/m² Stationszimmer, 60.2 W/m² Behandlungsraum).

## Energiebedarfsvergleich: Spital/Pflege vs. Wohnbau (Gebäudeparkmodell Neubau 2010)

Der Statusbericht (Anhang C, Tab. 9/10, gestützt auf das BFE-Gebäudeparkmodell/TEP Energy 2016)
enthält eine modellierte Aufschlüsselung des Endenergiebedarfs pro Gebäudekategorie für Neubauten 2010 —
das ist die konkreteste im Rahmen dieser Recherche gefundene Zahlenbasis für einen Vergleich Spital/Pflege
gegen Wohnbau (Achtung: Modellwerte für Neubau 2010, nicht direkt SIA-2024-Normkennwerte, aber von der
SIA-Arbeitsgruppe selbst als Referenz herangezogen):

| Energieverwendungszweck (kWh/m² EBF, Endenergie) | I.1 Wohnen MFH | VIII.1 Spital | VIII.2 Pflege |
|---|---|---|---|
| Beleuchtung | 2.2 | 14.7 | 11.8 |
| Geräte | 3.6 | 6.4 | 6.1 |
| Prozessanlagen | 13.7 | 0.7 | 24.5 |
| Lüftung/Klimatisierung | 0.4 | 5.6 | 7.2 |
| Allgemeine Gebäudetechnik | 3.1 | 14.4 | 16.2 |
| Heizung | 37.3 | 49.7 | 70.6 |
| Warmwasser | 20.7 | 17.1 | 53.9 |
| **Summe (ungewichtet addiert)** | **≈ 81.0** | **≈ 108.6** | **≈ 190.3** |

**Interpretation (eigene Berechnung aus den Einzelwerten, nicht 1:1 aus der Quelle zitiert):** Ein
Pflegeheim/Altersheim (VIII.2) verbraucht gemäss diesem Modell rund das **2.3-fache** eines
Mehrfamilienhauses, ein Akutspital (VIII.1) rund das **1.3-fache** — wobei die Verteilung sehr
unterschiedlich ist: beim Spital treibt vor allem Heizung + Allgemeine Gebäudetechnik + Beleuchtung den
Mehrbedarf (durchgehender Betrieb, hohe Lüftungsraten in Behandlungsräumen), beim Pflegeheim zusätzlich
markant der **Warmwasserbedarf** (53.9 gegenüber 20.7 kWh/m² beim MFH — plausibel durch Bade-/
Duschbedarf und höhere Belegungsdichte in Bettenzimmern) und die **Prozessanlagen** (24.5 kWh/m², u.a.
Grossküche/Wäscherei-nahe Nutzungen, die in einem Pflegeheim oft mit im Gebäude liegen). Diese Modellwerte
stammen aus einer TEP-Energy-Untersuchung von 2016 zum Gebäudepark 2010 und sind **nicht** direkt mit den
SIA-2024:2021-Kennwerten deckungsgleich (Datierung 2010, andere Berechnungsmethodik) — sie dienen hier als
grössenordnungsmässige Plausibilisierung, nicht als Norm-Zitat.

**Nachtrag 24.08.2026 — echter Anhang-F-Wert jetzt verfügbar, aber ohne VIII.1/VIII.2-Trennung:**
Die Korrigenda C2:2025 ersetzt auch Tabelle 20 (Anhang F, «Harmonisierung der Standardwerte auf
Raum- und Gebäudeebene») — die tatsächliche, aktuell gültige Gebäudekategorie-Summe für Kategorie
VIII. Wichtiger Befund: **Tabelle 20 führt Kategorie VIII weiterhin undifferenziert als eine
einzige Spalte «Spital»**, keine Aufteilung VIII.1/VIII.2. Standardwerte-Elektrizität VIII gesamt:
Geräte 8.5 + Beleuchtung 9.9 + Lüftung 5.1 + Prozessanlagen 2.6 + Allg. Gebäudetechnik 8.2 = **34.3
kWh/m²EBF·a** (Zielwerte: 5.3+3.3+2.8+0.9+8.2 = 20.5; Bestand: 12.0+12.8+0.6+3.5+8.2 = 37.1);
Heizwärme Standard 10.4, Warmwasser 21.8 kWh/m²EBF·a. Das relativiert die an anderer Stelle in
dieser KB (FAQ, Run 80, 18.07.2026) aus dem Grundlagenbericht **rekonstruierten** Werte
«VIII.1 ≈ 36 / VIII.2 ≈ 30 kWh/m²EBF·a Elektrizität» — jene Zahlen waren ein belegter
Analogieschluss (Flächenanteile-gewichtete Schätzung), keine direkte Anhang-F-Lektüre, weil der
Normvolltext damals nicht vorlag. Der jetzt primärquellen-gelesene, aktuelle Anhang-F-Wert (34.3)
liegt plausibel zwischen den beiden rekonstruierten Teilwerten — bestätigt die Grössenordnung,
löst aber nicht auf, ob die Norm selbst intern nach VIII.1/VIII.2 differenziert: **sie tut es in
Anhang F nicht**, nur auf Raumnutzungs-Ebene (8.01–8.03) und bei den Flächenanteilen (Statusbericht
Tab. 5, weiterhin Entwurfsstand 2019, s.o.). Für eine bewilligungsrelevante VIII.1/VIII.2-Aussage
bleibt darum die Raumnutzungsmischung eines konkreten Projekts massgebend, nicht ein pauschaler
Gebäudekategorie-Kennwert.

## Kanton ZH/SZ: Nichtwohnbau-spezifische Nachweispflichten

- **EN-111 (Beleuchtungsnachweis nach SIA 387/4)** ist im Kt. ZH ausdrücklich **nur für Nichtwohnbauten
  > 1'000 m² EBF** Pflicht (bereits dokumentiert in [[en-zh-nachweis-uebersicht]]) — ein Spital oder
  grösseres Pflegeheim fällt praktisch immer darunter, ein Einfamilienhaus nie. Das ist die klarste im
  Rahmen dieser Recherche identifizierte Nichtwohnbau-spezifische Formular-Differenzierung im
  ZH-Energienachweis (seit 1.1.2026 über die Plattform EVEN statt PDF, vgl. [[en-zh-nachweis-uebersicht]]).
- **EN-112 (Kühlräume)** ist als eigenes Spezial-Formular im EN-ZH-Deckblatt aufgeführt — direkt relevant
  für Krankenhaus-/Pflegeheim-Küchen und -Lager mit Kühlräumen (12.11 in SIA 2024).
- Darüber hinaus liess sich **keine spezifische, öffentlich zugängliche Sekundärquelle** finden, die
  eigene Nachweisformulare oder abweichende Grenzwerte exklusiv für Spital-/Pflegeheim-Nutzungen (Kategorie
  VIII) im ZH- oder SZ-Vollzug beschreibt — der Energienachweis läuft normativ über dieselben
  EN-Formulare (EN-101 ff.) wie jede andere Nichtwohnnutzung, nur mit den kategoriespezifischen
  SIA-2024/380/1-Kennwerten als Eingangsgrösse. Für Kt. Schwyz wurde im Rahmen dieser Recherche keine
  gesundheitsbau-spezifische Ergänzung gefunden (offener Punkt, näher abzuklären mit
  `Nachweis_der_energetischen_Massnahmen_im_Gebaeudebereich.pdf`, sz.ch).

## Bauherren-Transfer

Für einen Bauherrn/Betreiber eines Pflegeheims oder Spitals in ZH/SZ heisst das konkret:

- **Der Energiebedarf eines Pflegeheims liegt real deutlich über dem eines vergleichbaren Wohnbaus** —
  primär wegen des 24/7-Betriebs (Bettenzimmer laufen wie eine Dauerwohnung, aber mit höheren Luftraten),
  des erhöhten Warmwasserbedarfs (Pflege/Hygiene) und der Prozessanlagen (Grossküche, Wäscherei,
  Kühlräume). Das ist bei der Grobkostenschätzung für Heizzentrale, Warmwassererzeugung und
  Elektroanschlussleistung frühzeitig einzurechnen — pauschale Wohnbau-Kennwerte unterschätzen den Bedarf.
- **OP-Säle, Diagnostikräume (MRI/CT) und Serverräume sind normativ «Prozessanlagen»** und fallen NICHT
  unter die Standardkennwerte von SIA 2024 — hier braucht es eine gerätespezifische Bemessung durch den
  Fachplaner Medizintechnik/HLK, bevor eine belastbare Kühl-/Stromkonzept-Aussage gemacht werden kann.
  Gleichzeitig zählt diese Prozesskälte/-energie **nicht** in den behördlichen Energienachweis — sie ist
  energierechtlich «unsichtbar», muss aber real budgetiert werden (Investition + Betriebskosten).
- **Komfortkühlung ist in Bettenzimmern/Stationszimmern in der Regel als «notwendig» einzustufen** (hohe
  interne Lasten, Behaglichkeitsanforderungen für pflegebedürftige Personen) — die scharfe SIA-382/1-
  Deckelung auf 7 W/m² (bzw. 12 W/m² im Bestand) für «erwünschte, aber nicht notwendige» Kühlung greift
  dort in aller Regel nicht; das eröffnet Spielraum für eine leistungsfähigere Klimatisierung, sofern die
  Notwendigkeit sauber begründet wird.
- **Beleuchtungsnachweis EN-111 nach SIA 387/4 ist bei Spital-/Pflegeheimneubauten (> 1'000 m² EBF) so gut
  wie immer Pflicht** — anders als bei den meisten Wohnbauprojekten, wo diese Pflicht praktisch nie
  greift; das sollte im Bauablauf (wer liefert wann welche Fachplaner-Unterlage) frühzeitig eingeplant
  werden.
- **Die Gebäudekategorie beeinflusst das Rechenergebnis stark:** Ein Betreiber sollte mit dem Energie-
  planer früh klären, ob das Projekt normativ als VIII.1 Spital oder VIII.2 Pflege läuft (Akutbetrieb
  mit OP/Diagnostik vs. reiner Wohn-/Pflegetrakt) — die Kennwerte unterscheiden sich markant, gerade beim
  Warmwasser- und Prozessanlagenbedarf.

## Offene Punkte

- Der **Volltext von SIA 2024:2021 Anhang A/F** (die eigentliche Normtabelle mit allen ca. 45
  Raumnutzungen und den zugehörigen finalen Zahlenwerten für Kategorie VIII) ist kostenpflichtig im
  SIA-Shop und lag für diese Recherche nicht vor — alle Zahlen stammen aus dem frei zugänglichen,
  nicht-normativen Grundlagenbericht (der laut eigener Aussage «zusätzliche Informationen» liefert, aber
  die Normtabelle selbst nicht vollständig abdruckt). Bei einem konkreten Bauvorhaben ist der bezahlte
  Normtext zu konsultieren.
- Die im Statusbericht 2019 gezeigte «harmonisierte» Tabelle 4 (Personenfläche 20 m²/P, Präsenzzeit 12 h,
  Wärmeabgabe 70 W/P für Kategorie VIII) ist ein **Vernehmlassungsvorschlag von 2019** — ob und wie er in
  die schliesslich verabschiedete SIA 2024:2021 eingeflossen ist, liess sich aus dem Grundlagenbericht
  nicht abschliessend klären (dieser arbeitet auf Raumnutzungs-Ebene 8.01/8.02/8.03 statt auf
  Gebäudekategorie-Ebene VIII) — als Vorschlag, nicht als geltender Wert zu behandeln.
  Nur die SIA-380/1-Tabelle-27-Werte (Kategorie VIII gesamt) gelten als kreuzverifiziert/etabliert.
- **Kein konkreter W/m²- oder kWh/m²-Kennwert für die Klimakälteleistung von Spital-/Pflegeraeumen**
  konnte im frei zugänglichen Material gefunden werden (nur die Berechnungsmethodik C = P+A+L+s+T+V).
- **SIA 382/1:2025** (in Kraft seit 1.2.2025, ersetzt 2014er-Ausgabe) ist nicht im BFE-Merkblatt
  abgebildet — ob sich der 7/12-W/m²-Grenzwert oder die Kaltwassertemperatur-Vorgaben geändert haben,
  ist ungeprüft.
- **Kein direkter, belastbarer kWh/m²/Jahr-Gesamtvergleich Spital/Pflege vs. Wohnbau aus einer
  SIA-2024:2021-eigenen Quelle** — die verwendete Vergleichstabelle stammt aus dem Gebäudeparkmodell
  2010 (TEP Energy/Lemon Consult 2016), zitiert im SIA-Statusbericht, nicht aus SIA 2024 selbst.
- **Kt. Schwyz:** keine gesundheitsbau-spezifische Nachweispflicht identifiziert; ungeprüft, ob die
  SZ-Formulare EN-Nachweise analog zu ZH kategoriescharf differenzieren.
- **EnFK-Anforderungsprofil noch undifferenziert:** nicht verifiziert, ob die Unterteilung VIII.1/VIII.2
  bereits in den aktuell geltenden EnFK-Grenzwerttabellen nachvollzogen ist — die geprüfte Version 16.01a
  (11.04.2017) kennt nur die undifferenzierte Kategorie VIII (übernommen aus dem gemergten Destillat
  `sia-2024-nutzungsdaten-gesundheitsbau`, Run 69).
- **Keine kantonale ZH/SZ-Vollzugshilfe gefunden**, die SIA 2024 (statt SIA 380/1) für Nichtwohnbauten
  ausdrücklich vorschreibt; beide Kantone beziehen sich auf ihren Übersichtsseiten primär auf
  SIA 380/1:2016. Vollzug seit 1.1.2026 in beiden Kantonen über die gemeinsame Plattform EVEN.
- **energytools.ch** (SIA-2024-Excel-Raumdatenblätter, seit 2024 grösstenteils gratis) war technisch nicht
  direkt abrufbar (Redirect ohne Zielinhalt) — in einer späteren Session direkt auf sia.ch zu prüfen; wäre
  der günstigste Weg an die Raumdatenblätter 8.01–8.03, ohne den kostenpflichtigen Normtext.
- **OP-Saal/Reinraumklima-Grenzwerte** (Luftwechselraten, Druckstufen, Feuchte) sind ausdrücklich NICHT
  Gegenstand von SIA 2024 (dort explizit ausgeklammert) — dafür wäre eine andere Fachnorm/-richtlinie
  (Spitalhygiene, SWKI-Richtlinien Reinraumtechnik) zu konsultieren; das liegt ausserhalb dieser Recherche
  und ist als eigener Rechercheauftrag zu markieren.

## Quellen

- SIA «Grundlagenbericht zu SIA 2024 — Revision 2021 inkl. Korrigenda SIA 2024-C1:2024», 20.10.2024,
  `cms.sia.ch/de/api/getMedia/941` (PDF, vollständig per pdftotext gelesen).
- SIA «Harmonisierung SIA-Standardwerte und Gebäudekategorien — Statusbericht», Copyright 2019 (bezieht
  sich auf Vernehmlassungsentwurf SIA 2024:2019), `cms.sia.ch/de/api/getMedia/940` (PDF, vollständig per
  pdftotext gelesen).
- BFE/EnergieSchweiz «Kälte effizient erzeugen — Das Wichtigste zur Kälteerzeugung nach SIA 382/1»,
  `pubdb.bfe.admin.ch/de/publication/download/8559` (PDF, vollständig per pdftotext gelesen; bezieht sich
  auf SIA 382/1 Ausgabe 2014).
- SIA-Shop-Produktseiten SIA 2024:2015/2021/C1 (Metadaten zu Ausgaben/Ersetzungen, nicht im Volltext
  zugänglich): `shop.sia.ch/normenwerk/architekt/sia%202024/...`.
- Bereits vorhandenes KB-Destillat [[sia-380-1-standardnutzungswerte-tab24-25]] (Kreuzverifikation der
  Kategorie-VIII-Werte aus SIA 380/1 Tab. 24/25).
- Bereits vorhandenes KB-Destillat [[en-zh-nachweis-uebersicht]] (EN-111-Beleuchtungspflicht
  Nichtwohnbau > 1'000 m² EBF).
- Web-Recherche, abgerufen im Rahmen dieser Recherche (2026-07-14).

**Backlinks:** [[u-werte-grenzwerte-ch]] · [[energienachweis-zh]] ·
[[komfortlueftung-wrg-sia382-luftwechsel]] · [[sia-380-1-standardnutzungswerte-tab24-25]] ·
[[en-zh-nachweis-uebersicht]] · [[energ-bbv1-waermebedarf-rechtsgrundlagen-zh]] (die VIII.1/VIII.2-
Unterteilung hier löst dessen Gebäudekategorie-Einstufungsfrage, energie Run 153)

**Backlink (Run 99):** [[betonkernaktivierung-tabs-energieeffizienz]] — genau diese Nutzungs-
randbedingungen (interne Lasten, Betriebszeiten) je Raumtyp entscheiden, ob ein Raum TABS-tauglich
ist (stabile Bettenstation) oder nicht (lastvariabler OP-/Eingriffsraum); Verknüpfung ist eine
Ableitung des TABS-Destillats, hier noch nicht eigenständig verifiziert (F138).
