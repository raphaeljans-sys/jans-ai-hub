---
title: Batteriespeicher (Heimspeicher) zur PV-Anlage
status: established
last_updated: 2026-08-24
datenstand: 1.6.2021 (ältester zitierter Datenstand, VKF-Brandschutzmerkblatt 2005-15 Grundlagentabelle; LFP-Lockerung FAQ 2005-01 vom 9.9.2025, AHB-Merkblatt 389 vom Sept. 2023, Marktzahlen 2025 Swissolar Batteriemonitor Schweiz 2026, Mitgliederumfrage Nov. 2025, n=117)
sources: [destillate/batteriespeicher-heimspeicher-pv-ch.md, destillate/wp-pv-eigenverbrauch-lastmanagement.md, destillate/pv-marktzahlen-kosten-ch-2025.md, destillate/pv-ertrag-eigenverbrauch-praxis.md, destillate/vkf-lithium-batteriespeicher-brandschutz.md, destillate/ahb-merkblatt-389-lithium-ionen-batterien-lagerung.md]
links: [[pv-eigenverbrauch-zev]], [[wp-pv-eigenverbrauch-lastmanagement]], [[pv-solar-technologien]], [[BAUHERREN-FAQ]], [[vkf-lithium-batteriespeicher-brandschutz]], [[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]
---

# Batteriespeicher (Heimspeicher) zur PV-Anlage

**Kern:** Ein Batteriespeicher steigert den **Eigenverbrauch** des Solarstroms (von ~30 % auf bis zu
70–90 %), ist aber der **teuerste** Hebel zum Eigenverbrauch und **im Winter praktisch wirkungslos**.
Er ist damit primär ein **Autarkie-/Komfort-Entscheid**, kein Renditeobjekt. Antwort für den Bauherrn:
**FAQ F38** → `[[BAUHERREN-FAQ]]`.

## Die Reihenfolge der Eigenverbrauchs-Hebel
1. **Lasten in die Sonne schieben** (fast gratis): Wärmepumpe-Warmwasser/Heizen am Nachmittag, E-Auto
   tagsüber laden — gesteuert über ein **Energiemanagement-System (EMS)** mit offenen Schnittstellen
   (SG-Ready/SmartGridready). Eigenverbrauch **~30 → ~50 %**.
2. **Thermische Gratis-Speicher überhöhen:** Gebäudemasse (Massivbau) + Warmwasserspeicher — keine
   Zusatzkosten, beliebig oft ladbar → `[[wp-pv-eigenverbrauch-lastmanagement]]`.
3. **Erst danach eine Batterie** — massvoll dimensioniert, für den Schritt auf **~70 %** Eigenverbrauch
   und für Autarkie/Notstrom-Komfort.

> **Wirtschaftlichkeits-Schwelle (EnergieSchweiz): ab ~35 % Eigenverbrauch** ist die PV-Anlage
> wirtschaftlich — und diese 35 % sind **meist schon ohne Batterie** erreichbar.

## Kosten & Dimensionierung (Swissolar «Batteriemonitor Schweiz 2026» / BFE-Preisbeobachtung 2024)
| Grösse | Wert |
|---|---|
| Preis | **Median 2025: CHF 586/kWh** nutzbar (15-kWh-Speicher ⌀ CHF 8'850 installiert, Swissolar-Mitgliederumfrage Nov. 2025, n=117). Fallende Kurve: 2022: 827 · 2023: 846 · 2024: 708 · 2025: 586 CHF/kWh. Kleinere Speicher liegen darüber; die früher hier stehende Bandbreite **CHF 600–900/kWh** ist als **Obergrenze für die Offertenprüfung** zu lesen, nicht als Erwartungswert (Audit-Korrektur A-P2 02.5, 24.08.2026). Inkl. Wechselrichter + Installation |
| Datenstand | 2025 (Swissolar-Erhebung Nov. 2025) |
| Zusatzkosten stationär (Zogg 2023) | ab ~**CHF 10'000** EFH (~10 kWh) / ~**20'000** MFH (20–30 kWh) |
| Faustregel 1 | PV-Leistung (kWp) **× 1,5** = Speicher (kWh) → 6 kWp ≈ 9 kWh |
| Faustregel 2 | Jahresverbrauch (kWh) **/ 730** = Speicher (kWh) → 6'000 kWh ≈ 8,2 kWh |
| Lebensdauer | **10–20 J** (Li-Ionen); Garantie meist 7–10 J + garantierte Zyklen |
| Technologie | ~**80 % LFP** (Lithium-Eisenphosphat), kobaltfrei, sicher |

### Die normative Obergrenze (ecoBKP 2026 — neu, und sie ändert die Lesart der Faustregeln)

Die geltende Ausgabe **ecoBKP 2026** (Merkblatt ecoBKP 230, Stand Januar 2026) formuliert erstmals
eine ökologische **Höchstgrenze** statt einer Dimensionierungsempfehlung. Wörtlich:

> «Die nutzbare Speicherkapazität eines Batteriespeichers ist so zu wählen, dass sie **maximal
> 1,5 kWh pro 1 MWh Jahresstromverbrauch** beträgt. Gleichzeitig sollte sie **nicht mehr als das
> 1,5-fache der installierten PV-Leistung in kWp** ausmachen.»

Begründung der Quelle: «Die Herstellung von Batteriespeichern verursacht eine sehr hohe
Umweltbelastung, weshalb die Dimensionierung möglichst knapp erfolgen sollte.»

**Was daraus folgt, ist mehr als eine dritte Faustregel.** Es sind zwei **unabhängige Decken**, und
massgebend ist die tiefere. Und beide liegen praktisch **genau dort, wo die verbreiteten
Swissolar-Faustregeln landen**: 6'000 kWh Jahresverbrauch ergeben nach ecoBKP höchstens 9,0 kWh,
nach Swissolar-Faustregel 2 rund 8,2 kWh; der Faktor 1,5 auf die kWp ist in beiden Quellen
derselbe — nur ist er bei Swissolar ein **Zielwert** und bei ecobau eine **Obergrenze**.

Für die Beratung heisst das: Wer «nach Faustregel» dimensioniert, baut bereits das ökologisch
gerade noch Vertretbare aus. Der ökologisch bessere Entscheid liegt **darunter**, nicht darauf.
Formuliere die Empfehlung deshalb als Spanne mit der ecoBKP-Grenze als Deckel, nicht als Zielgrösse.

Quelle: `[[ecobkp-2026-gebaeudetechnik]]` (ecoBKP 230, im Original gegengelesen 05.08.2026).
Beachte auch die Vorgaben desselben Merkblatts zu elektromagnetischen Feldern: PV-DC-Leitungen kurz
und geerdet abgeschirmt ausserhalb von Aufenthaltsräumen führen, Wechselrichter-Abstand empfohlen
> 3 m.

## Brandschutz / sichere Lagerung

Zwei sich ergänzende, primärquellenbelegte Regelwerke bestimmen die Aufstellung:

| Speicherkapazität | Massnahme | Quelle |
|---|---|---|
| < 15 kWh (typischer Heimspeicher, HL I) | Eigener Raum **empfohlen** (Elektroraum/Keller/Garage, mind. EI 30), Mindestabstand **2,5 m** zu brennbaren Materialien; bei LFP-Chemie in EFH sogar in jedem Raum ausser Fluchtweg zulässig | VKF-Brandschutzmerkblatt 2005-15 + FAQ 2005-01 |
| 15–100 kWh (HL II, z. B. MFH-Gemeinschaftsspeicher) | Eigener Brandabschnitt **EI 60**, bei LFP-Chemie **EI 30** (FAQ 2005-01) | VKF-Brandschutzmerkblatt 2005-15 + FAQ 2005-01 |
| > 100 kWh (HL III) | Freiaufstellung oder RF1-Nebenbaute | VKF-Brandschutzmerkblatt 2005-15 |

**Chemie in die Ausschreibung aufnehmen:** Die deutliche Erleichterung (EI 30 statt EI 60 bis
100 kWh, EFH-Sonderregel) gilt nur für **LFP (Lithium-Eisenphosphat)** — mit ~80 % der
Schweizer Heimspeicher zwar die Regelchemie, aber bei der Bestellung ausdrücklich abzufragen
(«LFP oder NMC/anderer Lithium-Ionen-Typ?»), da sonst die strengeren Werte gelten. Details,
Wortlaut und die volle Massnahmentabelle: `[[vkf-lithium-batteriespeicher-brandschutz]]`.

Ergänzend regelt das städtische **AHB-Merkblatt 389 «Sichere Lagerung von Lithium-Ionen-
Batterien»** (Stadt Zürich, September 2023) die Lagerung **kleinerer, mobiler** Akkus (Velo/
E-Bike-Ladestationen, Elektrowerkzeuge) unterhalb der Heimspeicher-Grössenordnung: bis 1 kWh
genügt eine sichere Platzierung fern von Zündquellen, 1–15 kWh braucht einen zertifizierten
Sicherheitsschrank (**90 Min. Feuerwiderstand** nach SN EN 14470-1/1363-1). Für JANS-Projekte
mit mehreren Ladeplätzen ist die **Summe** der Energieinhalte massgebend — bei
Mehrfach-Ladestationen früh prüfen, ob die Sicherheitsschrank-Schwelle überschritten wird.
Details: `[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]`.

## Grenzen, die man am Bautisch nennen muss
- **Winter:** Tagesspeicher, kein Saisonspeicher — **senkt den Winter-Netzbezug nicht wesentlich.**
- **Ökobilanz:** schlechter als der thermische (Gebäude-/Warmwasser-)Speicher.
- **Notstrom:** nur **~30 %** der Systeme versorgen bei Netzausfall wirklich das ganze Haus → explizit
  ausschreiben, nicht voraussetzen.
- **Amortisation:** amtliche Quellen nennen bewusst **keine harte Jahreszahl** (EnergieSchweiz: «dauert
  noch relativ lange»; Zogg 2023: «lohnt sich wirtschaftlich noch nicht»). Kommerzielle Ratgeber ~8–12 J
  — Marktangabe, nicht belegt.

## Wann ja / wann nein
- **Eher ja:** hoher Abend-/Nachtverbrauch, Autarkie-/Notstromwunsch, hohe Strompreise / tiefe
  Einspeisevergütung.
- **Eher nein:** tagsüber ohnehin hoher, steuerbarer Verbrauch (WP + E-Auto), enges Budget, reine Rendite.

## MFH / gemeinsame Nutzung
Speicher hinter dem gemeinsamen Messpunkt eines **ZEV/vZEV** oder im Rahmen einer **LEG** →
`[[pv-eigenverbrauch-zev]]`, `[[zev-eigenverbrauch-mfh-her-2025]]`, `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]`.

**Backlinks:** thermischer Speicher/EMS/Reihenfolge `[[wp-pv-eigenverbrauch-lastmanagement]]` ·
PV-Typen/Ertrag `[[pv-solar-technologien]]` / `[[pv-ertrag-eigenverbrauch-praxis]]` · Marktpreise
`[[pv-marktzahlen-kosten-ch-2025]]` · Destillat `[[batteriespeicher-heimspeicher-pv-ch]]` ·
Brandschutz `[[vkf-lithium-batteriespeicher-brandschutz]]` / `[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]` · FAQ **F38**.
