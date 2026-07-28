---
title: Abwärmenutzung am Gebäude — Rechtspflicht, Quellen und Planungsfolgen
status: emerging
last_updated: 2026-07-28
sources: [destillate/serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch.md,
  destillate/abwasserwaermenutzung-kanalisation-zh-sz.md,
  destillate/grosskuechen-lueftung-abluft-wrg-ch.md,
  destillate/waescherei-prozessenergie-pflegeheim-spital-ch.md,
  destillate/muken-2025-verabschiedet.md, destillate/anergienetz-kalte-fernwaerme-ch.md,
  destillate/sz-vollzugspraxis-afu-wegleitungen-rechenzentren.md,
  destillate/rueckkuehler-flaechenkennwert-vertiefung-ch.md,
  destillate/sia-2068-rechenzentren-publikationsstatus.md,
  destillate/abwasserwaermepumpe-jaz-foerderung-vertiefung-zh.md]
links: [[INDEX]], [[BAUHERREN-FAQ]]
---

# Abwärmenutzung am Gebäude — Rechtspflicht, Quellen und Planungsfolgen

Angelegt im Run 116 (2026-07-27) als Verdichtung von vier am selben Tag erschlossenen
Destillaten. Der gemeinsame Nenner: **Abwärme, die heute über Dach weggekühlt wird, ist
gleichzeitig eine Rechtspflicht, eine Wärmequelle und eine Flächenkonkurrenz** — und alle drei
Aspekte entscheiden sich früh, in der Vorprojektphase, nicht in der Ausführung.

> **Querbezug zu den führenden KBs** [gesetzt Wissens-Chef Run 17, 27.07.2026 — dieser Artikel und
> die vier zugehörigen Destillate hatten null Verweise nach aussen]:
> - **ZH-Erlasswortlaut (§§-Nummern, Absätze, Fassungsstand) führt `baurecht`**, nicht diese KB:
>   `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md` (BBV I, LS 700.21) und
>   `wissen/baurecht/raw/260712_amtlich_zh_energ.md` (EnerG, LS 730.1, Nachtrag 129). Die §§ 30a und
>   13a/13d sind von dort zu zitieren und dürfen hier nicht materiell fortgeschrieben werden.
>   Der Cross-Lauf hat die hiesigen §-Zitate am amtlichen Volltext gegengelesen — **alle bestätigt**,
>   keine ZH/SZ-Verwechslung.
> - **Nachweis-Verfahren, Formulare und EN-Nummern führt `planungsgrundlagen`**
>   (`wiki/energie-energienachweis-zh-formulare`), diese KB die Fachphysik. Wo hier eine
>   Anrechnungs- oder Nachweisregel entsteht (z. B. Duschwasser-WRG), gehört sie dorthin übergeben.
> - **Norm-Fundstellen (SIA/VKF, Ziffer und Ausgabe) führt `normen`.**

## 1. Die Rechtspflicht ist zweistufig — und Zürich war Pionier

| Stufe | Norm (Kt. ZH) | Inhalt |
|---|---|---|
| Allgemein | **§ 30a Abs. 1 BBV I** (LS 700.21) | Abwärme im Gebäude — insbesondere aus Kälteerzeugung sowie gewerblichen/industriellen Prozessen — **ist zu nutzen**, soweit technisch und betrieblich möglich und wirtschaftlich tragbar. Gilt für **jede Baute**, Kontrolle im Baubewilligungsverfahren. |
| Beziffert | **§ 30a Abs. 2 BBV I**, RRB Nr. 840 vom 8.6.2022, **in Kraft seit 1.9.2022** | Bei Neubauten sowie bei Erneuerung/Umbau der Kälteerzeugung: mehr als **2 GWh/Jahr** nicht selbst nutzbare Abwärme ist Dritten **zu den Gestehungskosten** anschlussfertig zur Verfügung zu stellen. |

**Nationaler Anschluss:** Die **MuKEn 2025** (EnDK, verabschiedet 29.08.2025) übernimmt beide
Absätze in **Art. 1.18** nahezu wortgleich — der Kanton Zürich hat die Regel also rund drei Jahre
**vor** dem nationalen Modell eingeführt. ⚠ Die MuKEn ist eine Empfehlung an die Kantone, noch
nicht überall geltendes Recht (siehe [[muken-2025-verabschiedet]]); in ZH ist sie über § 30a
Abs. 2 BBV I bereits geltendes Recht.

**Die praktisch wichtigste Zahl** stammt aus den amtlichen MuKEn-Erläuterungen (S. 109 von 117):
Ein Abwärmepotenzial von mehr als 2 GWh/Jahr ist zu erwarten, wenn die **elektrische Dauerleistung
eines Rechenzentrums 230 kW übersteigt** — oder bei Anlagen mit mindestens **1000 kW
Abwärmeleistung während mehr als 2000 Stunden im Jahr**. Damit lässt sich die abstrakte
GWh-Schwelle bereits am Anschlussleistungs-Datenblatt prüfen.

**Was NICHT verlangt werden kann** (wichtig für die Erwartungssteuerung beim Bauherrn): der Bau
oder Betrieb eines Wärmenetzes. Das kann weder mit der Baubewilligung verfügt werden (RRB
Nr. 1324/2022) noch aus § 295 Abs. 2 PBG abgeleitet werden — jene Norm verpflichtet nur
Wärme**abnehmer**. Die MuKEn-Erläuterungen bestätigen dies auf nationaler Ebene und empfehlen den
Gemeinden stattdessen eine kommunale Energieplanung (siehe [[waermeplanung-kommunal-zh-sz]]).

Details und Quellen: [[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]] (FAQ F168).

## 2. Die Quellen — vier Abwärmeströme und ihre Eigenheiten

### Serverraum/Rechenzentrum
Dauerlast ohne Nachtabsenkung (SIA-2024-Kennwert Serverraum: 1'052 kWh/m²·a Elektrizität, 100 %
Prozessanlagen). Das **Temperaturniveau ist die Krux**: indirekte Auskopplung aus dem
Kaltwasserkreislauf liefert nur +25 bis +35 °C — direkt heizfähig nur bei
Niedertemperatursystemen, sonst braucht es eine Wärmepumpen-Anhebung. Für Colocation-Betriebe gilt
die indirekte Auskopplung in ein **Anergienetz** als betriebssicherste Variante (siehe
[[anergienetz-kalte-fernwaerme-ch]]). Reale CH-Referenzen: Volketswil ZH (bis 70 MW
Abwärmeleistung für über 7'000 Haushalte, erste Kunden ab Ende 2026), Beringen SH (79 GWh/a
Abwärme, davon aber nur ~30 % absetzbar — die Wärmeabsatzseite, nicht die Quelle, ist der
Engpass).

### Abwasser
Ganzjährig 10–20 °C in der Kanalisation, im Liegenschaftsabwasser im Mittel 23 °C — das
konstanteste Temperaturniveau aller vier Quellen. **Bewilligungsrechtlich entscheidend ist der
Ort**: gebäudeintern (vor der Einleitung) grundsätzlich bewilligungsfrei, ab der öffentlichen
Kanalisation gewässerschutzrechtliche AWEL-Bewilligung plus Nutzungsvereinbarung, «first come,
first serve». Die Grenze setzt die Abwasserreinigung: der ARA-Zulauf darf die
Dimensionierungstemperatur (i.d.R. 10 °C) nicht unterschreiten. Wirtschaftlich ab rund
8'000–10'000 l/Tag (~30 Wohneinheiten) bzw. ~150 kW. Das kleine Pendant für **jeden** Neubau ist
die **Duschwasser-WRG**, im Energienachweis pauschal mit 10 % des Warmwasserbedarfs anrechenbar
(EnFK-Vollzugshilfe EN-101). Details: [[abwasserwaermenutzung-kanalisation-zh-sz]] (FAQ F169).

### Grossküchenabluft
Hohes Temperaturniveau, aber **fetthaltig** — deshalb nicht mit jedem System rückgewinnbar.
Kochstellenabluft ist nach SIA 382/1:2025 **ETA 3** (höchste Verunreinigungsklasse): Rotoren
scheiden aus, Plattentauscher brauchen einen Dichtheitsnachweis, das **Kreislaufverbundsystem**
ist die robusteste Wahl — was sich mit der VKF-Anforderung deckt, dass nur nicht brennbare
Wärmeträgerflüssigkeiten zulässig sind. Voraussetzung jeder Rückgewinnung ist die Fettabscheidung
nahe der Absaugstelle. Details: [[grosskuechen-lueftung-abluft-wrg-ch]] (FAQ F170).

### Wäscherei
Der Verbrauch liegt **nicht im Waschen, sondern im Trocknen** (rund zwei Drittel gegenüber ~15 %).
Hebel sind entsprechend Wärmepumpentrockner, Abluft-WRG aus Trockner/Mangel und Abwasser-WRG aus
dem Waschwasser; innerhalb des Waschens entfallen 60–85 % auf die Wassererwärmung, weshalb ein
Warmwasseranschluss aus einem Abwärmenetz dort am meisten bringt. Details:
[[waescherei-prozessenergie-pflegeheim-spital-ch]] (FAQ F171).

## 3. Planungsfolgen für den Architekten (JANS-Sicht)

- **Anschlussstelle unten am Gebäude vorbereiten**, sobald die 2-GWh-Schwelle in Reichweite
  kommt. Die amtliche Begründung ist explizit baulich: Rückkühler stehen üblicherweise auf dem
  Dach, und eine nachträgliche Leitung vom Dach nach unten stört den laufenden Betrieb — deshalb
  ist die Vorbereitung Teil der Projektierung, nicht der Nachrüstung.
- **Dachflächen-Konkurrenz früh entscheiden:** Rückkühler, Trockenkühler und Freecooling-Anlagen
  brauchen dieselbe Dachfläche mit ungestörter Luftanströmung wie eine PV-Belegung. Für diese
  Abwägung wurde **keine belegte CH-Kennzahl** gefunden — sie ist projektspezifisch mit dem
  Fachplaner HLK zu führen (offener Punkt).
- **Healthcare: Nebenräume sind Energie-Hauptverbraucher.** Grossküche, Wäscherei,
  Zentralsterilisation und Serverraum sind normativ «Prozessanlagen» und fallen **nicht** unter
  die Standardkennwerte von SIA 2024 (siehe
  [[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]). Pauschale Wohnbau-Kennwerte unterschätzen
  Heizzentrale, Warmwassererzeugung und Elektroanschlussleistung eines Pflegeheims systematisch.
- **Make-or-buy vor der Raumprogrammfixierung:** Ob die Wäscherei (und teilweise die Küche)
  inhouse betrieben wird, bindet Fläche, Anschlussleistung und Personal auf Jahrzehnte — der
  Entscheid gehört vor das Raumprogramm, nicht danach.
- **Lärmschutz der Rückkühler** bei Wohnnachbarschaft früh abklären (LSV), besonders bei
  adiabatischer Kühlung mit zusätzlichen Ventilatoren. Auch hier: keine CH-spezifische dB-Kennzahl
  gefunden, Systematik über [[waermepumpen-laermschutz]].

## Run 117 (2026-07-27) — Schwyz-Negativbefunde am Volltext bestätigt, Flächen-/Lärmfrage teilweise beantwortet

**Kt. Schwyz kennt keine Drittabgabepflicht für Abwärme.** Der in Run 116 nur websuchbasierte
Negativbefund ist jetzt am **amtlichen Volltext** von kEnG (SRSZ 420.100) und kEnV (SRSZ 420.111)
primärquellen-verifiziert: SZ kennt nur die allgemeine Eigennutzungspflicht (§ 21 kEnV, analog
§ 30a Abs. 1 BBV I ZH), aber **keine** zu § 30a Abs. 2 BBV I / Art. 1.18 Abs. 2 MuKEn 2025 analoge
Pflicht, ungenutzte Abwärme ab 2 GWh/Jahr Dritten zu Gestehungskosten anzubieten. Der SZ-
Grossverbraucherartikel (§ 9 kEnG, Schwelle 5 GWh Wärme/0,5 GWh Strom) misst nur die Nachfrage-,
nicht die Angebotsseite → [[abwaerme-bereitstellungspflicht-sz]] (FAQ F172).

**Auch für Abwasserwärme gibt es in SZ kein eigenes Bewilligungsregime.** Vier Erlasse im Volltext
geprüft (kEnG, kEnV, EGzGSchG SRSZ 712.110, WRG SRSZ 451.100): Der einzige verwandte Tatbestand
(WRG § 11 Abs. 2 lit. b, Konzessionspflicht «Betrieb von Wärmepumpen») gilt nur für öffentliche
Gewässer (Seen/Flüsse/Grundwasser, § 2 WRG) und erfasst die Kanalisation nicht. Ein ARA-
gespeistes Wärmenetz ist dagegen bereits heute über die kEnV-Standardlösung (Anhang 5/6) im
Energienachweis anrechenbar → [[abwasserwaerme-bewilligung-sz-vertiefung]] (FAQ F173).

**Rückkühler ↔ PV-Flächenkonkurrenz und Rückkühler-Lärmschutz teilweise geklärt.** Für Zürich
selbst bleibt die Abzugsfrage offen (Solarpflicht-Gesetzestext noch nicht in Kraft), aber drei
andere Kantone (Bern, Basel-Landschaft, Aargau) regeln die Vollzugspraxis bereits amtlich: Die vom
Rückkühler belegte Dachfläche zählt **grundsätzlich zur pflichtigen Bruttodachfläche**; ein Abzug
ist nur über ein begründungspflichtiges Ausnahmegesuch «technische Machbarkeit» möglich, kein
Automatismus (Bern-Vollzugshilfe wörtlich: Flächen unter «Kühlanlagen» sind nicht automatisch
abzugsfähig). Für den Lärmschutz gilt eine eigene, sehr aktuelle Vollzugshilfe (Cercle Bruit 6.20,
23.09.2025) mit einem direkt einschlägigen Rechenbeispiel: ein Rechenzentrum mit 4-6 Rückkühlern
(100-400 kW je Gerät) überschreitet bei Volllast den nächtlichen Planungswert ES III (50 dB(A))
auf 54,4 dB(A); Drehzahlreduktion bei mehr parallel laufenden Geräten senkt den Pegel auf
47,4 dB(A) → [[rueckkuehler-flaechenkonkurrenz-pv-laermschutz]] (FAQ F177), ergänzt
[[solarpflicht-schweiz-kantone]] und [[waermepumpen-laermschutz]]. Ein Schweizer amtlicher
m²/kW-Flächenkennwert für Rückkühler selbst bleibt weiterhin unbelegt (nur deutsche
Herstellerquelle).

## Run 118 (2026-07-28) — SZ-Vollzugspraxis, ZH-Flächenanteil, SIA 2068 und Abwasserwärmepumpe vertieft

Vier der bisher offenen Punkte gezielt nachrecherchiert:
- **SZ-Vollzugspraxis:** Der vollständige AfU-SZ-Vollzugsdokumentensatz sowie die Baureglemente
  Freienbach (2022) und Wollerau (2024) enthalten keine Sonderregel für Rechenzentren/Abwärme;
  die Prämisse einer Rechenzentrums-Häufung in diesen Gemeinden liess sich zudem nicht bestätigen
  (bekannte CH-Standorte liegen in ZH/AG/SH/VD) → [[sz-vollzugspraxis-afu-wegleitungen-rechenzentren]]
  (FAQ F179).
- **ZH-Flächenanteil für Technikaufbauten (löst den PV-Abzugsgrund teilweise):** § 47b BBV I /
  § 10c EnerG (seit 2022 in Kraft) deckelt die PV-Pflicht in Zürich auf 70 % der anrechenbaren
  Gebäudegrundfläche, 30 % sind ausdrücklich für «anderweitige Installationen wie Liftaufbauten
  usw.» reserviert — der bislang präziseste amtliche ZH-Flächenkonkurrenzwert, wenn auch kein
  m²/kW-Kennwert. Kt. Luzern/St. Gallen regeln dagegen keine Flächenkonkurrenz (Negativbefund)
  → [[rueckkuehler-flaechenkennwert-vertiefung-ch]] (FAQ F180).
- **SIA 2068:** per 28.07.2026 weiterhin nicht im SIA-Shop gelistet (drei Jahre nach
  Projektstart) — solide indirekt belegter Negativbefund; SDEA Navigator als freiwillige
  Zwischenlösung (Data Centre World Award März 2026) → [[sia-2068-rechenzentren-publikationsstatus]]
  (FAQ F181).
- **Abwasserwärmepumpe JAZ/Förderung:** kein systematischer CH-Vergleichswert zur Erdsonde, aber
  punktuelle Praxis-COP 4,0 (Wintower Winterthur) und 5,7 (Lausanne Plaines-du-Loup); das
  Förderprogramm Energie ZH 2026 kennt keine eigene Abwasserwärme-Position mehr
  → [[abwasserwaermepumpe-jaz-foerderung-vertiefung-zh]] (FAQ F182).

## Offene Punkte

- Kein CH-amtlicher m²/kW-Flächenkennwert für Rückkühler selbst; die zitierte Faustregel
  «3-4× mehr Fläche bei Hybridkühlung» stammt aus einer einzelnen Fachquelle (Pfeiffenberger 2014),
  nicht aus zwei unabhängigen wie zuvor angenommen.
- Energierichtplan Gemeinde Freienbach (econcept) bibliografisch identifiziert, Volltext nicht
  erreichbar.
- Die ETA-3-/Rotoren-Aussage stammt aus dem suissetec-Merkblatt, nicht aus dem kostenpflichtigen
  SIA-382/1-Normtext selbst.
