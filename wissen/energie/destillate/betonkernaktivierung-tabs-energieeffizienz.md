---
quelle: Web-Synthese mehrerer Fach-/Branchenquellen (CH-Schwerpunkt) + SIA-Shop-Normeintrag (Titel/Bezug, nicht Volltext gelesen) + Applied-Energy-Fachartikel (Volltext gelesen, Gwerder et al. 2009)
herausgeber: Betonsuisse, Baublatt (CH), InformationsZentrum Beton (D), SIA (Normtitel), TABS-Control-Forschungsprojekt (Tödtli/Gwerder/Dorer et al., Bauphysik 2009 und Applied Energy 2009, Siemens Schweiz + Empa Dübendorf)
ausgabe: Web-Stand Juli 2026
gelesen: Web-Recherche 2026-07-25 (Funktionsprinzip, Systemtemperaturen, Regelungsproblematik, Eignung/Nicht-Eignung TABS); Folgerecherche 2026-07-25 gezielt zu CH-Primärquelle Spital/OP-Saal (siehe Offene Punkte)
datenstand: 2026-07-25 (Richtwerte/Prinzipien aus mehreren Quellen quervergleichbar; SIA-384.354-Normtext selbst NICHT gelesen, nur Titel/ISO-Bezug aus SIA-Shop; Eignungsaussage Spital/OP weiterhin aus D-Sekundärquellen abgeleitet — systematische CH-Recherche 2026-07-25 fand keine CH-Primärquelle, siehe offene Punkte)
status: emerging
last_updated: 2026-07-25
---

# Destillat — Betonkernaktivierung / Thermoaktive Bauteilsysteme (TABS)

> Ergänzt `[[waermepumpe-systemvergleich]]` (dort JAZ-Hebel «tiefe Vorlauftemperatur» allgemein) um das
> konkrete Flächenheizsystem mit der tiefsten möglichen Vorlauftemperatur. Verweist auf
> `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` (Bauteilkühlung als ein Baustein des
> sommerlichen Wärmeschutzes) und `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` (Räume mit
> stark schwankenden internen Lasten im Gesundheitsbau, wo TABS an seine Grenzen stösst).

## Das Wichtigste in 1 Satz
Betonkernaktivierung (TABS) nutzt die Speichermasse der Rohbaudecke als Heiz-/Kühlfläche mit sehr
tiefer Systemtemperatur (ideal für die Wärmepumpen-JAZ) und eignet sich für grosse, kompakte Gebäude
mit **stabiler, vorhersagbarer** Nutzung (Büro, Schule, Pflegebereich) — **nicht** für Räume mit rasch
wechselnden Lasten (z.B. OP-Säle), weil das System wegen seiner thermischen Trägheit nur mit Stunden
bis Tagen Verzug reagiert und in der Rohbauphase unveränderbar einbetoniert wird.

## Funktionsprinzip
Vorgefertigte Rohrregister (Kunststoffrohr) werden **innerhalb der Bewehrungslage** der Betondecke
(seltener in Wänden/Stützen) mäander- oder spiralförmig verlegt, Rohrabstand ca. 10–30 cm, in der
statisch neutralen Zone des Bauteils (Baublatt 2020). Durchströmendes Wasser nimmt Wärme auf oder gibt
sie ab; die grosse Speichermasse des Betons erzeugt eine **Phasenverschiebung** zwischen Energie-
erzeugung und -abgabe an den Raum (Baublatt 2020) — das Bauteil selbst wird zur trägen Heiz-/Kühlfläche,
nicht nur zum Wärmeverteiler wie bei der Fussbodenheizung.

## Systemtemperaturen und WP-Kopplung
Mehrere Quellen bestätigen unabhängig ein sehr tiefes Temperaturniveau, deutlich unter der
Fussbodenheizung (BBV I ≤ 35 °C, vgl. `[[waermepumpe-systemvergleich]]` F14):
- **Heizen:** Vorlauf ca. 22–32 °C (Praxisbeispiel Baublatt: 32 °C VL / 27 °C RL; Praxisaussage
  Betonsuisse: ca. 24 °C VL bei WP-Betrieb) — Bandbreite je Quelle, projektabhängig.
- **Kühlen:** Vorlauf ca. 16–20 °C (Baublatt: 16 °C VL / 20 °C RL, «Free Cooling»); bei geothermischer
  Quelle (Erdsonde/Grundwasser, ca. 12 °C) kann laut beton.org (D) rund **80 % der Kühlenergie
  direkt** ohne Kältemaschine bezogen werden («Free Cooling»).
- **WP-Kopplung:** Die kleine Temperaturspreizung zwischen Quelle (Erdreich/Grundwasser/Aussenluft)
  und Senke (Raum) senkt den Hubaufwand der WP und hebt die JAZ — derselbe Hebel wie in
  `[[waermepumpe-systemvergleich]]` beschrieben, hier aber am unteren Ende der Vorlauftemperatur-Skala.

## Regelungs- und Planungsfallstricke
Die grosse Speichermasse ist gleichzeitig der Planungsknackpunkt:
- **Trägheit:** Eine Änderung der Wassertemperatur wirkt sich erst mit **Stunden- bis Tage-Verzug**
  auf die Raumtemperatur aus; eine klassische, schnell reagierende Raumtemperaturregelung (PID auf
  Raumfühler) funktioniert **nicht** — die Regelgrösse muss vorausschauend (Wetterprognose,
  Bauteilkerntemperatur) vorgesteuert werden.
- **Nur zonenweise, nicht raumweise regelbar:** Die Trägheit verhindert eine feine, raumindividuelle
  Regelung; TABS deckt die thermische Grundlast eines Gebäudeteils ab, nicht die feine Einzelraum-
  Feinjustierung (dafür ergänzend RLT/Konvektor/Heizkörper, falls gefordert).
- **Schweizer Referenzforschung:** Das Projekt **TABS-Control** (Tödtli, Gwerder, Renggli, Lehmann,
  Dorer, Hildebrand — «Regelung und Steuerung von thermoaktiven Bauteilsystemen (TABS)», Bauphysik
  31 (2009), H. 5, S. 319–325) entwickelte dafür die **UBB-Methode** (Unknown-But-Bounded) für die
  integrierte Planung von TABS und deren Regelung, Strategien für die automatische Heiz-/Kühl-
  Umschaltung sowie für den Pulsbetrieb der Zonenpumpe. Das Projekt ist die einschlägige
  Schweizer Primärforschung zu diesem Thema; der Volltext wurde in dieser Recherche nicht gelesen,
  nur über eine Sekundärzusammenfassung erschlossen — **Beleglücke, siehe unten**.
- **Massgebende Norm:** **SIA 384.354:2021** «Umweltgerechte Gebäudeplanung — Flächenintegrierte
  Strahlheizungs- und -kühlsysteme, Teil 4: Auslegung und Berechnung der dynamischen Wärme- und
  Kühlleistung für thermoaktive Bauteilsysteme (TABS)» (= ISO 11855-4:2021) regelt die Auslegung.
  **Nur der Normtitel/-bezug ist verifiziert** (SIA-Shop-Eintrag), der Normtext selbst ist
  kostenpflichtig und wurde in dieser Recherche nicht gelesen — Ziffern/Formeln daraus dürfen NICHT
  ohne Volltext zitiert werden (Rule `normen-referenz`).
- **Irreversibel im Rohbau:** Die Rohrregister werden in die Bewehrung einbetoniert — anders als bei
  Heizkörpern oder RLT-Kanälen ist eine spätere Korrektur der Lage/Dichte praktisch ausgeschlossen;
  die Auslegung muss vor der Rohbau-Ausführungsplanung stehen (Simulation statt Faustregel, so auch
  Baublatt 2020: «ideale Auslegung durch thermische Gebäude- und Anlagensimulation»).

## Eignung / Nicht-Eignung
| Eignet sich | Eignet sich NICHT / nur eingeschränkt |
|---|---|
| Grosse, kompakte Gebäude mit stabiler, planbarer Nutzung: Büro-/Verwaltungsbauten, Schulen, Museen, Sporthallen (mehrfach belegt: Betonsuisse, Baublatt, beton.org) | Räume mit rasch wechselnden internen Lasten/Anforderungen: **OP-Säle**, Labors, Reinräume — dort ist eine schnelle, feinjustierbare Regelung nötig, die die träge Speichermasse strukturell nicht leisten kann (Ableitung aus D-Sekundärquellen; **systematisch nach einer CH-Primärquelle gesucht, weiterhin keine gefunden**, siehe offene Punkte) |
| Pflege-/Bettenbereiche mit gleichmässigem, vorhersagbarem Lastprofil (beton.org nennt «Krankenhäuser, Pflegeheime» explizit als Referenztypologie) | Kleine Wohnungen/Einzelräume mit individuellem, kurzfristigem Nutzerwunsch (Fenster auf/zu, punktuelle Nachheizung) — dort reagiert TABS zu langsam |
| Neubauten mit Erdsonden-/Grundwasser-WP (tiefe Quelltemperatur passt zur tiefen TABS-Vorlauftemperatur) | Sanierungen ohne Rohbau-Eingriff (Rohrregister nur im Neubau/Betonersatz sinnvoll einbaubar) |

**Abgrenzung zur SIA-2024-Nutzungsdaten-KB:** `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]`
dokumentiert die Nutzungsrandbedingungen (interne Lasten, Betriebszeiten) je Raumtyp im Gesundheitsbau
— genau diese Randbedingungen entscheiden, ob ein Raum TABS-tauglich ist (stabile Bettenstation) oder
nicht (lastvariabler OP-/Eingriffsraum). Diese Verknüpfung ist eine Ableitung dieser Recherche, noch
nicht im Nutzungsdaten-Destillat selbst verifiziert.

## Kombination mit Nachtauskühlung / sommerlichem Wärmeschutz
TABS kann im Sommer als **Bauteilkühlung** eingesetzt werden: die Speichermasse nimmt tagsüber Wärme
auf, nachts wird sie über kühles Wasser (Rückkühler, Erdsonde als Free-Cooling-Quelle) wieder
ausgetragen. Das ist ein Baustein des sommerlichen Wärmeschutzes im Sinn von
`[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` (dortiges Nachweisverfahren SIA 180), TABS
selbst ersetzt den SIA-180-Nachweis aber nicht, sondern ist eine mögliche **Massnahme** darin — die
konkrete rechnerische Verknüpfung (Wirkung von TABS auf den Übertemperatur-Nachweis) ist in dieser
Recherche nicht belegt worden.

## Bauherren-Transfer
- **Wo es passt, ist der Effizienzgewinn real:** Eine Wärmepumpe mit TABS-Verteilung braucht wegen der
  sehr tiefen Vorlauftemperatur weniger Hub als mit Radiatoren oder selbst mit klassischer
  Fussbodenheizung — das übersetzt sich in eine höhere JAZ und tiefere Stromkosten (Logik wie
  `[[waermepumpe-systemvergleich]]`).
- **Die Entscheidung fällt im Rohbau, nicht später:** Weil die Rohrregister einbetoniert werden, ist
  TABS eine Vorlaufentscheidung im Rohbau-/Ausführungsplanungsprozess — nachträgliches Nachrüsten oder
  Korrigieren ist praktisch ausgeschlossen. Bei gemischt genutzten Gebäuden (z.B. Bürogeschosse UND
  OP-Trakt im selben Haus) sollte TABS gezielt nur in den geeigneten Nutzungszonen vorgesehen werden,
  nicht pauschal im ganzen Baukörper.
- **Komfortkonsequenz:** Ein TABS-System reagiert langsam — wer im Raumklima kurzfristige, individuelle
  Regelbarkeit erwartet (Fensteröffnen, punktuelle Nachheizung), muss das gegen die
  Effizienz-/Behaglichkeitsvorteile der grossflächigen, trägen Strahlungsheizung/-kühlung abwägen.

## Offene Punkte / Folgelaeufe
- **SIA 384.354:2021 nicht im Volltext gelesen** (kostenpflichtig, SIA-Shop) — für eine belastbare
  Bemessungsaussage (Formeln, Auslegungsziffern) muss der Normtext beschafft und ausgewertet werden.
- **Eignungsaussage «OP-Saal ungeeignet» stammt weiterhin aus deutschen Sekundärquellen** (klimavida.de,
  heizung.de), nicht aus einer Schweizer Primärquelle mit Spitalbezug. **Folgerecherche 2026-07-25:**
  systematisch (10 unterschiedliche Suchanfragen + Direktabruf von 12 Seiten) nach einer CH-Quelle
  gesucht, die sich explizit zur Eignung/Nicht-Eignung von TABS in OP-Sälen, Eingriffsräumen oder
  Intensivstationen äussert. Durchsucht: Betonsuisse (betonsuisse.ch, Artikel «Beton als natürlicher
  Klimaregler» — nennt Spitäler/Pflegeheime nur pauschal, keine Differenzierung OP vs. Bettenstation),
  Baublatt CH (baublatt.ch, Artikel «Der graue Energiespeicher» — nur Fallbeispiele ÖKK Landquart und
  Parkhaus Norline, kein Spitalbezug), espazium/TEC21 (SIA-Fachzeitschrift; Artikel «Die Blut- und
  Nervenbahnen des Spitals» und «Ein Filter für Wärme und Licht» zum Stadtspital Triemli-Bettenhaus,
  beide 2016 — nennen Erdwärmesonden, Wärmepumpen, Lehmdecken, Doppelfassade, aber keine
  Betonkernaktivierung/TABS), Fachplaner-Websites (TQM GmbH Reinraumtechnik, vadea.ch Gesundheitsbauten,
  Waldhauser+Hermann Spitäler/Gesundheit, ANS Architekten Bettenhaus Spital, unicum.ch TABS-Glossar),
  suissetec, energie-cluster.ch, HSLU-Umfeld (Adrian Altenburger). **Kein Treffer** mit einer expliziten
  Spital-OP-Aussage zu TABS. Einzig **verifizierter CH-Primärtext mit Volltextlektüre**: Gwerder, M.;
  Tödtli, J. (Siemens Switzerland Inc., Zug); Lehmann, B.; Dorer, V. (Empa, Dübendorf) — «Control of
  thermally activated building systems (TABS) in intermittent operation with pulse width modulation»,
  Applied Energy 86 (2009), S. 1606–1616 — bestätigt die Regelungsproblematik bei «different rooms with
  different gains within the same hydraulic zone» allgemein, erwähnt aber Spitäler/OP-Säle nicht
  namentlich. **Zusätzlicher, NICHT verifizierter Recherche-Hinweis für einen Folgelauf:** ein
  Such-Snippet verweist auf eine SWKI-Richtlinie «VA105-01» (Raumlufttechnische Anlagen in medizinisch
  genutzten Räumen), die für OP-Säle definierte Luftwechselraten, turbulenzarme Verdrängungsströmung
  (TAV) und präzise Temperatur-/Feuchteregelung über die RLT-Anlage vorschreibe — das wäre ein
  struktureller (nicht TABS-spezifischer) Grund, warum die OP-Raumklimatisierung in der Schweiz über
  Lüftung statt Bauteilaktivierung läuft. Diese Angabe stammt nur aus einem Suchergebnis-Snippet, der
  SWKI-Richtlinienkatalog selbst liess sich in dieser Recherche nicht direkt einsehen — Titel/Nummer
  **vor Verwendung als Faktenquelle zwingend bei SWKI (swki.ch, kostenpflichtiger Shop) primär
  verifizieren** (Rule `identifikatoren-verifizieren`/`normen-referenz`). **Ergebnis: Fazit unverändert,
  aber jetzt als systematisch recherchierter, nicht nur unrecherchierter Negativbefund dokumentiert** —
  sollte weiterhin gegen `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` bzw. eine direkte
  Fachplaner-Aussage (HLK-Planer Spitalbau, z.B. Waldhauser+Hermann, Amstein+Walthert, WSP) verifiziert
  werden, bevor sie in einer Bauherren-Antwort als gesichert dargestellt wird.
- **TABS-Control-Projekt (Tödtli et al. 2009) nur über Sekundärzusammenfassung erschlossen**, nicht
  über den Bauphysik-Artikel selbst (Wiley-Paywall) — Volltext wäre die stärkste verfügbare
  Schweizer Regelungs-Primärquelle für dieses Thema.
- **Keine Schweizer Kostenkennwerte (CHF/m²) für TABS** recherchiert — eigener Folgelauf nötig, bevor
  eine Kosten-Nutzen-Aussage für Bauherren gemacht wird.
- **Keine Verknüpfung zu einer ZH/SZ-Bewilligungspflicht** gefunden — TABS ist reine Systemtechnik,
  vermutlich ohne eigenständige Bewilligungsrelevanz (anders als Erdsonden/Grundwassernutzung, vgl.
  `[[erdwaermesonden-bewilligung-zh-sz]]`), aber nicht aktiv geprüft.
