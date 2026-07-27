---
title: Abwärmenutzung am Gebäude — Rechtspflicht, Quellen und Planungsfolgen
status: emerging
last_updated: 2026-07-27
sources: [destillate/serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch.md,
  destillate/abwasserwaermenutzung-kanalisation-zh-sz.md,
  destillate/grosskuechen-lueftung-abluft-wrg-ch.md,
  destillate/waescherei-prozessenergie-pflegeheim-spital-ch.md,
  destillate/muken-2025-verabschiedet.md, destillate/anergienetz-kalte-fernwaerme-ch.md]
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

## Offene Punkte

- Kein CH-Kennwert zur Flächenkonkurrenz Rückkühlung ↔ PV und zum Lärmschutz von Rückkühlern.
- Kt. Schwyz: weder eine zu § 30a Abs. 2 BBV I analoge Abwärme-Bestimmung noch eine eigene
  Abwasserwärme-Regelung gefunden — beides **nicht abschliessende** Negativbefunde, vor
  verbindlicher Aussage beim AfU SZ zu verifizieren.
- SIA 2068 «Energieeffizienz in Rechenzentren»: Projektstart 8.6.2023 beschlossen,
  Publikationsstatus per Juli 2026 unverifiziert.
- Die ETA-3-/Rotoren-Aussage stammt aus dem suissetec-Merkblatt, nicht aus dem kostenpflichtigen
  SIA-382/1-Normtext selbst.
