---
title: Abstands-Baumasse — Wald- und Gewässerabstand (ZH & SZ)
status: established
last_updated: 2026-07-13
sources: [
  "PL-02/01_Gesetze/02_Zuerich/Wasser/AWEL_Merkblatt_Gewässerraum.pdf (AWEL/ARE, Juli 2014)",
  "zh.ch Merkblatt «Baugesuch im Waldabstand» (Abt. Wald, November 2018)",
  "zh.ch «Bauen im Wald und am Waldrand» (Stand 2026-07)",
  "SR 814.20 GSchG Art. 36a / SR 814.201 GSchV Art. 41a/41b/41c",
  "PBG SZ 400.100 §§ 52/66/67 (SRSZ 1.2.2025)",
  "SR 921.0 WaG Art. 17 / KWaG ZH LS 921.1",
  "PL-01/KtSZ Schwyz/map.geo.sz.ch/Willerzell/Ökomorphologie_Fliessgewässer/ökomorpho_Fliesgewässer.pdf (WebGIS Kt. SZ, 22.11.2023, Run 27)"
]
links: [[recht-norm-quellenlandkarte]], [[recht-norm-dispensrecht]], [[kartenportale-baulinien-abstandslinien-zh]], [[kartenportale-grundlagen-checkliste-neue-parzelle]], [[machbarkeit]], [[kartenportale-naturgefahren-objektschutz]]
---

# Abstands-Baumasse — Wald- und Gewässerabstand (ZH & SZ)

Die zwei «gummigen» Abstände, die ein **Baufeld** oft mehr beschneiden als der Grenz- oder
Strassenabstand: **Waldabstand** und **Gewässerraum/Gewässerabstand**. Beide sind nicht frei
wählbar, beide werden über eine **Linie im Zonenplan / ÖREB-Kataster** wirksam, und beide haben
eine harte planerische Konsequenz (Bauverbot bzw. Nutzungsbeschränkung im Abstandsbereich).
Dieser Artikel hält die belegte Planungsgrundlage — **welches Mass gilt, wie es bemessen wird,
wo man die Linie als Geodatum holt** — für Kt. ZH und Kt. SZ. Rechtliche Würdigung eines
konkreten Falls → Skill `baurecht`; das Geodatum → [[kartenportale-baulinien-abstandslinien-zh]].

> **Querbezug KB baurecht (führende Rechtsquelle):** Die materielle Bemessung und §-Zuordnung
> führt der Fachartikel `wissen/baurecht/wiki/abstaende-und-hoehen` (Wald-/Gewässerabstand als
> Baufeld-Restriktion, § 262/§ 66 PBG, GSchV Art. 41a/41b); die Rechtswirkung der Linien
> (§§ 96/99-101 PBG) `wissen/baurecht/wiki/baulinien-und-abstandslinien`. Dieser Artikel bleibt
> der **Geodatum-/Beschaffungs-Wegweiser**; bei Abweichung gilt der baurecht-Fachartikel.

---

## 1. Waldabstand — Kanton Zürich

**Regel-Mass: 30 m** (Merkblatt «Baugesuch im Waldabstand», Abt. Wald, November 2018): «Der
gesetzlich vorgeschriebene Waldabstand beträgt **in der Regel 30 Meter**» — entspricht etwa der
mittleren Höhe der Waldbäume. **Je nach örtlichen Verhältnissen kann der Abstand geringer sein**;
die im Zonenplan festgelegten **Waldabstandslinien liegen heute nicht immer bei 30 m** (Baudruck
bei knappem Bauland).

**Wirkung (Bauverbot):** Oberirdische Gebäude dürfen die im Zonenplan festgelegte
**Waldabstandslinie nicht überschreiten** — **§ 262 PBG ZH** (LS 700.1). Im Bereich **zwischen
Waldgrenze und Waldabstandslinie** besteht ein **generelles Bauverbot für Hochbauten**. Bei
**unterirdischen Bauten** ist das **Forstpolizeirecht** massgebend (nicht § 262 PBG). Wo im
Zonenplan **keine** Waldabstandslinie festgelegt ist, gilt der gesetzliche 30-m-Abstand; wer
**näher als 15 m** an die Waldgrenze bauen will, braucht in jedem Fall eine **forstliche
Bewilligung** (zh.ch «Bauen im Wald und am Waldrand»).

**Zwei getrennte Bewilligungen — Zuständigkeit (Merkblatt 2018):**

| Bewilligung | Rechtsgrundlage | Zuständig |
|---|---|---|
| **Baurechtliche Ausnahmebewilligung** (Überstellung der Waldabstandslinie) | **§ 220 PBG** | Gemeinde (kommunale Baubehörde) |
| **Forstrechtliche Bewilligung** | **Art. 17 WaG** (SR 921.0) | Kanton (kantonaler Forstdienst) |

Ablauf: Die **Gemeinde prüft zuerst**, ob die beantragte Überschreitung baurechtlich (§ 220 PBG)
bewilligt werden kann. Liegt **kein Ausnahmefall** vor, verweigert sie die Bewilligung —
**unabhängig davon**, ob der Forstdienst sie forstlich erlauben würde. Erst wenn die Gemeinde die
Ausnahme erteilen kann, prüft der **kantonale Forstdienst** die forstrechtlichen Voraussetzungen
(Art. 17 WaG: keine Beeinträchtigung von Erhaltung, Pflege und Nutzung des Waldes — sonst
Ablehnung aus forstrechtlichen Gründen).

**Dispens-Massstab (§ 220 PBG, verweist auf [[recht-norm-dispensrecht]]):** Ausnahme nur bei
**besonderen Verhältnissen** (Form, Lage, Topographie des Baugrundstücks oder Eigenart des
Bauwerks) und wenn die Durchsetzung des Bauverbots unverhältnismässig erscheint. **Trifft die
Begründung für eine Vielzahl von Fällen zu → keine Ausnahmesituation**; eine blosse **Härte** für
den Gesuchsteller ist **kein Ausnahmegrund**. Weil die örtlichen Gegebenheiten bereits bei der
**Festlegung der Linie** berücksichtigt wurden, gilt bei der Ausnahmebewilligung ein **strenger
Massstab** (Merkblatt 2018, Fn. Rechenschaftsbericht Verwaltungsgericht ZH 1981 Nr. 126).

**Geodatum:** Waldabstandslinien stehen im **ÖREB-Kataster** (grundeigentümerverbindlich); die
**Waldgrenze** ist der Bezug. Über den Connector `geo-zh.mjs --produkt baulinien` liefern die
OGD-WFS-Layer **0150 Waldgrenze** und **0152 Wald** die Linie + den senkrechten Abstand zur
Parzelle (`waldgrenze_dist_min_m`) → [[kartenportale-baulinien-abstandslinien-zh]]. Rechtsbasis:
**KWaG ZH** (LS 921.1) + WaG Bund (SR 921.0).

## 2. Waldabstand — Kanton Schwyz

**§ 67 Abs. 1 PBG SZ (400.100, SRSZ 1.2.2025):** «Bauten und Anlagen haben gegenüber Wäldern
einen **Mindestabstand von 15 m ab Waldgrenze** einzuhalten.» **§ 67 Abs. 2:** Erschliessungs-
strassen sowie **land- und forstwirtschaftliche Güter- und Forststrassen** sind im Abstandsbereich
**zulässig**. Die **Waldgrenze** selbst wird nach der Waldgesetzgebung festgestellt und verläuft
**2 m ausserhalb der vermessenen Stockgrenze** (§ 35 PBV SZ) → das ist die Bezugslinie, nicht das
Baumass.

**Wichtig (Präzisierung 2026-07-12):** Die früher hier geführten Ausnahme-Minima (Hauptbauten
10 m ab Stock- / 8 m ab Waldgrenze, Nebenbauten 6/4 m) stehen **nicht in § 67 PBG selbst** —
§ 67 Abs. 1 nennt nur die **15 m ab Waldgrenze**. Die abgestuften Ausnahmewerte stammen aus der
**kantonalen Richtlinie/Praxis Waldabstand** (sz.ch «Bauen und Wald», einsiedeln.ch 2018) und
sind vor dem Zitat gegen die aktuelle Richtlinie zu prüfen. **§ 52 Abs. 2 lit. b PBG SZ** erlaubt
den Gemeinden, «in begründeten Fällen für einzelne Strassen-, Gewässer- und **Waldabstände**»
geringere Masse im Zonenplan festzulegen.

## 3. Gewässerraum / Gewässerabstand — Kanton Zürich

Seit der GSchG-Änderung (in Kraft **01.01.2011**) müssen die Kantone den **Raumbedarf der
oberirdischen Gewässer** ausscheiden (**Art. 36a GSchG**, SR 814.20); der Bund hat dies in der
**GSchV** konkretisiert (**Art. 41a/41b**, SR 814.201, in Kraft 01.06.2011). Ausscheidungsfrist
für die Kantone: **bis 31.12.2018** (AWEL-Merkblatt «Festlegung des Gewässerraums», Juli 2014).
In ZH lief die Festlegung bis 31.5.2026 über die **Verordnung über den Hochwasserschutz und die
Wasserbaupolizei (HWSchV, §§ 15 ff., LS 724.112)** und das **Wasserwirtschaftsgesetz
(WWG § 18, LS 724.11)**. ⚠ **HWSchV und WWG sind per 1.6.2026 aufgehoben** (OS 81, 144) und
durch das **Wassergesetz (WsG, LS 724.1)** + die **Wasserverordnung (WsV, LS 724.11)** ersetzt;
Festlegung heute § 19 WsG / § 11 WsV, Baudirektionsentscheid § 183 lit. b WsV. Massgebend fürs
Recht ist die KB `baurecht` (`[[abstaende-und-hoehen]]`, amtlich nachgeführt 17.07.2026 mit
Konkordanztabelle alt/neu). Wissens-Chef Run 7, 2026-07-17.

**Der Gewässerabstand IST der Gewässerraum:** In ZH gibt es keinen zusätzlichen fixen Meter-
Abstand; massgebend ist der **festgelegte Gewässerraum**. Ist für ein Gewässer **auf die Festlegung
verzichtet** worden, ist kein Gewässerabstand einzuhalten (analog SZ § 66 Abs. 2, s.u.).

### 3a. Bemessung des Gewässerraums (GSchV Art. 41a/41b)

Grundlage ist die **natürliche Gerinnesohlenbreite (GSB)** = aktuelle Sohlenbreite × Faktor nach
**Breitenvariabilität**: ausgeprägt **× 1**, eingeschränkt **× 1.5**, keine **× 2** (AWEL-Merkblatt).
Der Gewässerraum wird grundsätzlich **beidseitig gleichmässig** zum Gewässer angeordnet.

**Fliessgewässer, normale Gebiete (Art. 41a Abs. 2 GSchV):**

| natürliche GSB | Mindestbreite Gewässerraum |
|---|---|
| < 2 m | **≥ 11 m** |
| 2 – 15 m | **≥ 2.5 × nat. GSB + 7 m** |
| > 15 m | kantonale Vorgabe |
| eingedolte Gewässer | **≥ 11 m** (Art. 41a Abs. 2 lit. a GSchV, Bundesrecht) |

> ⚠ **Eingedolte Fliessgewässer — Rechtsgrundlage aktualisiert (Wissens-Chef Run 7, 17.07.2026):**
> Das ZH-Sondermass «≥ 11 m» stand bis 31.5.2026 in § 15k Abs. 3 HWSchV (alt § 15d Abs. 3; die
> HWSchV wurde 2017 mit Nachtrag 95 umnummeriert — die alte Nummer § 15d zeigt heute ins Leere).
> **Seit 1.6.2026 ist die HWSchV aufgehoben; die Nachfolgenorm § 24 WsV kennt kein Mindestmass mehr,
> nur noch eine Verringerungsregel.** Die 11 m folgen heute allein aus dem Bundesrecht
> (Art. 41a Abs. 2 lit. a GSchV) — ZH ist damit **nicht strenger als der Bund**. Beleg:
> `baurecht/raw/260717_amtlich_zh_hwschv.md`, Konkordanztabelle.

**Fliessgewässer, nationale/kantonale Schutzgebiete (Art. 41a Abs. 1 GSchV):**

| natürliche GSB | Mindestbreite Gewässerraum |
|---|---|
| < 1 m | **≥ 11 m** |
| 1 – 5 m | **≥ 6 × nat. GSB + 5 m** |
| > 5 m | **≥ nat. GSB + 30 m** |

**Stehende Gewässer (See/Teich, Art. 41b GSchV):** ab Uferlinie **mindestens 15 m** (Abs. 1) —
**nicht an eine Flächenschwelle geknüpft**. Die **0,5-ha-Schwelle** ist kein Formel-Kriterium,
sondern nur ein **Verzichtsgrund** (Abs. 4 lit. b: bei Wasserfläche < 0,5 ha kann auf die
Festlegung verzichtet werden). Korrigiert Wissens-Chef Run 7 (17.07.2026); massgebend
`[[abstaende-und-hoehen]]` (baurecht, Modell-D-verifiziert).

**Abweichungen:** In **dicht überbauten Gebieten** kann der Gewässerraum **verkleinert** werden
(Art. 41a Abs. 4 / Art. 41b Abs. 3 GSchV), soweit der **Hochwasserschutz gewährleistet** bleibt;
umgekehrt **vergrössert** (Art. 41a Abs. 3 / 41b Abs. 2) für Hochwasserschutz, Revitalisierung,
überwiegende Natur-/Landschaftsschutz-Interessen oder Gewässernutzung.

### 3b. Nutzungsbeschränkung im Gewässerraum (die planerische Konsequenz)

Im festgelegten Gewässerraum gelten die **Nutzungsvorschriften nach Art. 41c GSchV**: es dürfen
grundsätzlich nur **standortgebundene, im öffentlichen Interesse liegende Anlagen** erstellt werden;
bestehende Bauten und Anlagen in der Bauzone geniessen Bestandesschutz. Für die Machbarkeit heisst
das: der Gewässerraum ist wie eine **Baulinie mit Bauverbot** zu behandeln — er reduziert das
Baufeld hart. → [[machbarkeit]] / Agent `baulinien-analyst`.

### 3c. Verfahren + Geodatum (ZH)

**Festlegung im nutzungsplanerischen Verfahren (§§ 36–89 PBG):** Planungsträger reicht Antrag +
Entwurf (Plan + technischer Bericht) → **Vorprüfung ARE + AWEL (60 Tage)** → öffentliche Auflage
60 Tage → **Festlegung durch die Baudirektion mit Verfügung** → gemeinsame Publikation → Eintrag
in den **kantonalen GIS-Übersichtsplan** (bis 31.5.2026 § 15c HWSchV, heute WsG/WsV). Kontakt: gewaesserraum@bd.zh.ch;
Musterunterlagen unter gewaesserschutzgesetz.zh.ch.

**Geodatum:** Die **aktuelle Gerinnesohlenbreite** und die Breitenvariabilität liest man aus der
Karte **«Gewässer-Ökomorphologie»** (Thema Wasser) im **kantonalen GIS-Browser gis.zh.ch**; die
**rechtskräftigen Gewässerräume** stehen im GIS-Übersichtsplan. Über `geo-zh.mjs --produkt
baulinien` liefern die OGD-WFS-Layer **0153 Gewässer** und **0185 Gewässerraum** die Linie + den
senkrechten Abstand (`gewaesserraum_dist_min_m`, `gewaesser_dist_min_m`) →
[[kartenportale-baulinien-abstandslinien-zh]] (Benchmark Wetzikon: 43.9 m Gewässerabstand /
45.9 m Gewässerraum).

## 4. Gewässerabstand — Kanton Schwyz

**§ 66 PBG SZ (400.100, SRSZ 1.2.2025):**
- Abs. 1: «Bei Fliessgewässern und Seen entspricht der Gewässerabstand dem **Gewässerraum nach dem
  Bundesgesetz über den Schutz der Gewässer** vom 24. Januar 1991.» → SZ verweist auf denselben
  bundesrechtlichen Gewässerraum (GSchV Art. 41a/41b) wie ZH; die Bemessungstabellen in §3a gelten
  analog.
- Abs. 2: **Wo auf die Festlegung des Gewässerraums verzichtet wurde, ist kein Gewässerabstand
  einzuhalten.**
- Abs. 3: Der **Zustimmung der zuständigen kantonalen Stelle** bedürfen (a) Baubewilligungen **im
  Gewässerraum** und (b) die **Unterschreitung des Mindestabstands**.
- Abs. 4: Die **Zugänglichkeit für den Gewässerunterhalt** ist im Zonenplan sicherzustellen.

**Geodatum (Run 27, 2026-07-13):** Analog zur ZH-Karte «Gewässer-Ökomorphologie» (Abschnitt 3c)
führt das **WebGIS Kt. SZ** (`map.geo.sz.ch`) einen eigenen Themenlayer **Gewässer-Ökomorphologie**
für Fliessgewässer mit sechsstufiger Klassifizierung (natürlich/naturnah, wenig beeinträchtigt,
stark beeinträchtigt, naturfremd/künstlich, eingedolt, nicht bestimmt) — real belegt am Kartenexport
Willerzell (`ökomorpho_Fliesgewässer.pdf`, 22.11.2023). Die Klassifizierung ersetzt nicht die
Bemessung nach GSchV Art. 41a/41b (Abschnitt 3a oben gilt kantonsübergreifend), zeigt aber an, ob
ein Gewässer ökomorphologisch beeinträchtigt ist und damit ein Revitalisierungs-Kandidat sein
könnte (Art. 41a Abs. 3 GSchV: Gewässerraum kann dafür vergrössert werden) → Detail
[[kartenportale-naturgefahren-objektschutz]] Abschnitt 6b. Status `emerging` — Layer belegt, aber
noch keine Parzellen-Attributabfrage validiert.

## 5. Merksatz für die Baufeld-Bestimmung

- **Wald ZH:** 30 m Regel-Mass, aber **die Waldabstandslinie im ÖREB zählt** (§ 262 PBG, Bauverbot
  Hochbauten). < 15 m an Waldgrenze immer forstlich (Art. 17 WaG). Überstellen nur mit **doppelter**
  Bewilligung (§ 220 PBG Gemeinde + Art. 17 WaG Kanton), strenger Massstab.
- **Wald SZ:** 15 m ab Waldgrenze (§ 67 PBG SZ); Ausnahmewerte = Richtlinie, nicht Gesetz.
- **Gewässer ZH/SZ:** kein fixer Meter, sondern der **Gewässerraum nach GSchV** (GSB-abhängig,
  Faustzahl kleines Bächlein ≈ 11 m, See > 0.5 ha ≥ 15 m ab Ufer). Im Gewässerraum praktisch
  Bauverbot (Art. 41c GSchV). Wo nicht festgelegt → kein Abstand.
- **Immer zuerst das Geodatum ziehen:** `geo-zh.mjs --produkt baulinien` gibt Waldgrenze (0150),
  Gewässer (0153), Gewässerraum (0185) **mit senkrechtem Abstand zur Parzelle** — nicht schätzen.
  → [[kartenportale-grundlagen-checkliste-neue-parzelle]].

## Offen / QUESTIONS
- ZH-Waldabstand-**Ausnahmefall mit gewährtem** Dispens (Hanglage) als Benchmark → gemeinsam mit
  dem offenen zweiten Dispens-Benchmark in [[recht-norm-dispensrecht]].
- SZ-Waldabstand-**Ausnahme-Minima** (10/8, 6/4 m): aktuelle sz.ch-Richtlinie Waldabstand als
  Primärquelle verifizieren (bisher aus einsiedeln.ch 2018 abgeleitet).
- Connector: **proj-Waldabstands-/Gewässerraum-Linien** (laufende Revision, analog Zonenplan A6)
  noch nicht abgefragt.
