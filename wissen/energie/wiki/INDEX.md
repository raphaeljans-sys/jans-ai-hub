# INDEX — Wiki Energie

Kompilierte Themen-Artikel und die Bauherren-FAQ. Speist sich aus `destillate/`.

## Kernprodukt
- [[BAUHERREN-FAQ]] — belegte Antworten auf Bauherren-Energiefragen · **established** (**Stand 2026-09-01 (Run 172): 265 Kernfragen F1–F265 (maschinell nachgezaehlt), **341** Destillate, 37 Wiki-Themenartikel**; ⚠ die Zahl 342 in aelteren Berichten und im Health-Check vom 01.09.2026 zaehlt `destillate/INDEX.md` mit — derselbe Zaehlfehler, der schon in Run 116 korrigiert wurde); ⚠ die Destillat-Zahl wurde in Run 116 nachgezählt und um eins nach unten korrigiert — die bisherige Serie hatte `destillate/INDEX.md` als Destillat mitgezählt; der Zuwachs von Run 115 auf 116 beträgt korrekt +4, primärquellenbelegt, je Intensiv-Lauf mehrere parallele Rechercheagenten plus adversariale Gegenprüfung bestehender Antworten). Diese Zeile nennt bewusst nur den aktuellen Stand statt jede Lauf-Ergänzung einzeln aufzulisten (Verdichtung statt additivem Wachstum, Rule `wissens-bibliothekar`) — die vollständige Lauf-für-Lauf-Historie mit allen Einzelergänzungen steht in `CHANGELOG.md` (neueste zuoberst).

## Themen-Artikel
Echte eigenständige Wiki-Artikel (`wiki/*.md`), 31 Stück.

- [[umweltwaerme-gewaesser]] — **Umweltwärme aus Gewässern** (neu, Run 120 — Verdichtung von
  Seewasser/Abwasser/Grundwasser-Destillaten, Carryover-Auftrag aus Run 119): Vergleichstabelle
  See/Abwasser/Grundwasser nach Bewilligungspflicht ZH+SZ und Beleg-Reife; See immer konzessions-
  pflichtig (WsG/WsV ZH paragraphengenau, WRG SZ ab 50 kW/<4 WE), Abwasser in ZH gut geregelt aber
  in SZ **ungeregelt** (Negativbefund), Duschwasser-WRG gebäudeintern harmonisiert (pauschal 10 %
  WW-Bedarf); durchgehende Lücke bei amtlichen COP/JAZ-Werten für alle drei Quellen · **emerging**
  (Destillate `[[seewasser-waermenutzung-aquathermie-zh-sz]]`, `[[abwasserwaermenutzung-kanalisation-zh-sz]]`,
  `[[abwasserwaerme-bewilligung-sz-vertiefung]]`, `[[rabtherm-abwasserwaerme-jaz-projekte]]`)

- [[abwaermenutzung-gebaeude]] — **Abwärmenutzung am Gebäude: Rechtspflicht, Quellen, Planungsfolgen** (neu, Run 116 — Verdichtung von vier am selben Tag erschlossenen Destillaten): zweistufige Pflicht in ZH (§ 30a Abs. 1 BBV I allgemeine Nutzungspflicht für jede Baute · § 30a Abs. 2 BBV I seit 1.9.2022 Bereitstellung ab **2 GWh/a** zu Gestehungskosten, RRB Nr. 840); **MuKEn 2025 Art. 1.18 übernimmt beides nahezu wortgleich — ZH war rund drei Jahre Pionier**; amtliche Umrechnungshilfe **2 GWh ≈ ab 230 kW elektrischer Dauerleistung** (bzw. 1000 kW Abwärmeleistung × >2000 h/a) macht die Schwelle am Anschlussleistungs-Datenblatt prüfbar; **kein Wärmenetz-Bauzwang** (RRB 1324/2022, § 295 Abs. 2 PBG betrifft nur Abnehmer); vier Quellenprofile (Serverraum +25-35 °C indirekt → Anergienetz · Abwasser 10-20 °C ganzjährig, gebäudeintern bewilligungsfrei · Grossküchenabluft ETA 3 → Kreislaufverbund · Wäscherei zwei Drittel im Trocknen); Planungsfolgen Anschlussstelle unten am Gebäude, Dachflächen-Konkurrenz Rückkühler↔PV, Healthcare-Nebenräume als Prozessanlagen ausserhalb SIA 2024, Make-or-buy vor Raumprogramm (F168-F171) · **emerging** (Destillate `[[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]]`, `[[abwasserwaermenutzung-kanalisation-zh-sz]]`, `[[grosskuechen-lueftung-abluft-wrg-ch]]`, `[[waescherei-prozessenergie-pflegeheim-spital-ch]]`; Rechtsteil primärquellen-verifiziert)

- [[u-werte-grenzwerte-ch]] — U-Wert- & Heizwaermebedarf-Grenzwerte + EBF + Waermebruecken (Balkonplatte Ψ durchbetoniert 0,6-1,05 vs. Stahlkorb/Dorne 0,06-0,26 W/(m·K), F48; Fensteranschluss Ψ 0,08-0,36, F49; Sockel/beheizter Keller Ψ 0,30-0,82 stark tiefendaemmungsabhaengig, F50; Flachdach-Vordach Ψ 0,40-0,53 ungedaemmt vs. praktisch null mit Dorn-Anschluss, F51; Flachdach-Bruestung — Material dominiert ueber Daemmung, Ψ 0,02-0,53, F52; Flachdach ohne Vordach Ψ 0,44-0,60 (durchgehende Daemmung macht Wert negativ), Steildach Traufe/Ort durchweg unkritisch, Auskragung Ψ 0,04-0,29 (Unterlagsbodendaemmung entscheidet), Rollladenkasten Ψ 0,18-0,26, Fensterleibung/-bruestung/-sturz Grenzwert 0,10 (ungedaemmte Fensterbank +0,20 groesster Einzelfehler), F53-F57; Stuetzen/Fassadenanker (Gruppe 6, X-Wert-Systematik statt Ψ) — Stahlstuetze 0,20-0,37 W/K teils ueber Grenzwert 0,30 W/K vs. Stahlbeton 0,05-0,12 W/K, Fassadenanker-ΔU-Zuschlag Holzlattung +0,02-0,03 vs. Alu +0,02-0,19 W/(m²·K), F58; Geschossdecke/Kellerdecke/Innenwandanschluss (Gruppe 2) — Innenwand-Auflager durchbetoniert Ψ 0,63-0,89 hoechster Einzelwert des Katalogs vs. Stahlkorb 0,07-0,15, Wandanschluss Kellerdecke 0,23-0,26/−0,02-0,14, Innenwandanschluss Aussenwand 0,11-0,24, F59 (Curriculum A4 vollstaendig) + **Ausblick MuKEn 2025 inkl. Graue-Energie-Formel GWObjekt**; Bauteilekatalog-Kap. 4 vollstaendig (Run 65): Daecher/Decken D-/Di-Serie (Umkehrdach mit amtlichem 20-%-Feuchtezuschlag), inhomogene Bauteile Bi-/Wi-Serie Holzbau, Fenster-Uw-Formel + amtliche Uf-Fallback-Tabelle (F69) · **established**
- [[minergie-standards]] — Minergie/-P/-A/ECO + Eigenstromerzeugung (Stand 2023, mit THGE); ergänzt: **MKZ-Formel** + Minergie-2023-Neuerungen (90 % Q_h,li, Monitoring 1000 m², 60 % E-Parkplaetze) · **established**
- [[pv-solar-technologien]] — PV-Typen (kristallin/Duennschicht/Graetzel/Hybrid) + Integration + **Ertrag ~1'000 kWh/kWp & Eigenverbrauch inkl. MFH 33 % (F18)** + **Indach-Ausfuehrung (Glas-Glas Sunskin + Alu-Solardachplatte PREFA)** + **Dach-Eignung sonnendach.ch (F19)** + **Fassaden-PV & Begruenung (F20)** + **Fassaden-Ertrag quantitativ ~603 kWh/kWp (F21)** + **Marktpreise 2025 (2'400–3'200 CHF/kWp, Indach +60 % ⚠ Indach real 2024 +0 bis +19 % (BFE-Preisbeobachtungsstudie 2024, publ. 10.07.2025), nicht +60 %, Lebensdauer 33 J)** + **Ausrichtung×Neigung-Richtwerte (F26: Flachdach ~90 %, Ost/West 90–95 %, Suedfassade ~70 %, Nord ~40 %)** + **Blitzschutz keine PV-Automatik-Pflicht (ziffern-genau VKF 2001-15de Ziff. 3.1) + GVZ-Meldepflicht mit Erstellungskosten + Kt. SZ ohne Versicherungsmonopol (GUSTAVO-Kanton) + Batteriespeicher-Brandabschnitte NMC dreistufig (15/100 kWh) vs. LFP zweistufig (100 kWh), F118** + **grundsätzliche Blitzschutzpflicht unabhängig von PV: Spital/Pflegeheim ab 20 hilfsbedürftigen Personen Klasse III/II, VKF-Richtlinie 22-15 (F119)** + **GVZ-Prämienmechanik: Einheitsprämie 0,29 ‰, PV nur als Wertvermehrung, kein PV-Zuschlag (F120)** + **Feuerwehr-Meldepflicht (Orientierungsplan/Strangplan inkl. Batterien, GVZ-Formular) + Hagel-/Windwiderstand SIA 261/261-1 als Auflage (F123)** + **VKF «Gefährliche Stoffe» Ziff. 3.5.3 betrifft Batteriespeicher NICHT — widerlegtes Sekundärzitat, richtig ist Richtlinie 22-15 (F124)** · **established** (Destillate `[[pv-blitzschutz-gebaeudeversicherung-ch]]`, `[[vkf-richtlinie-22-15-blitzschutzsysteme]]`, `[[gvz-praemienmechanik-pv-speicher]]`, `[[gvz-photovoltaik-melde-versicherungspflicht]]`, `[[vkf-richtlinie-gefaehrliche-stoffe]]`, Run 92/93) + **neu Run 149: belegtes CH-Fallbeispiel mit voller Kostenstruktur** (MFH-Neubau Basel, Ost-West-Satteldach 45°, 59.93 kWp Indach, CHF 135'257 inkl. MwSt., Rendite 3.25 %/a, Amortisation 21 J., Gestehungskosten 9.56 gegen 24.00 Rp/kWh; spez. Ertrag **827-852 kWh/kWp**, Bandbreite wegen einer Inkonsistenz im Quelldokument) + **Spezialmodule transparent/bifazial** (40 % Lichtdurchlass ⚠ ohne normierten g-/U-Wert; Bifazialitaet Mehrertrag 5-35 % je Untergrund; **F252**) + **Ertragsrechner Tachion/EnergieSchweiz** als frei verfuegbares Werkzeug mit Normbezug SIA 380/1, 384/385, ISO 9806, EN 14511 (`[[tachion-solarrechner-energieschweiz]]`) + **F251: Neigung differenziert die Ausrichtungs-Zeile von F26** — Ost/West 90-95 % gelten fuer flache Neigung (~15°), ein steiles Satteldach (45°) liegt bei rund 85 % (**E-R149-3 erledigt Run 150**: eigene Tabellenzeile in F26 und im Artikel) + **neu Run 150: der Sued-Referenzpunkt der KB** — Willerzell SZ, −1 Grad Sued bei 30° Neigung, **981 kWh/kWp**, womit der Ost-West-Vergleich aus demselben Rechenkern stammt (Basel = 84-87 % davon) + **belegter Fall NEGATIVER PV-Wirtschaftlichkeit** (7,90 kWp Solarziegel-Indach, Rendite **−2,02 %/a**, kein Break-even in 40 Jahren, Gestehungskosten 22,56 gegen 24,00 Rp/kWh; **F254**) + **Kostenkennwert nach Modulformat** (rund **CHF 7'370/kWp** fuer kleinteilige Solarziegel gegen 2'400-3'200 CHF/kWp Marktband derselben Groessenklasse — die Faustregel «~doppelt» ist damit die untere Grenze, E-R150-2; **F253**) + **Begriffsfalle Deckungsgrad ↔ Autarkie** (Anbieter-Werkzeuge nennen Produktion/Verbrauch «Unabhaengigkeit»; echte Autarkie Willerzell 23 % statt 53 %, Basel 34 % statt 103 %; KB-weit bereinigt, **F255**)
- [[solarwaerme-warmwasser]] — **Solarwärme, Warmwasser & Solarthermie ↔ PV**: Dach nur einmal belegbar → für Haus mit **Wärmepumpe** meist **PV + WP-Boiler** besser als separate Solarthermie; Solarthermie EFH 4–6 m²/~450 l = **60–70 % Warmwasser**, MFH ~1 m²/Person = 30–40 %, Kombianlage mind. 30 % Wärmebedarf; hoher Wirkungsgrad, aber nur Wärme → **Nutzen pro m² Dach übers Jahr** entscheidend; sinnvoll bei ganzjährig hohem WW-Bedarf (MFH/Hotel/Schwimmbad); Förderung 2'400+1'000/kWth (F40); Investitionskosten (reine WW-Anlage CHF 15'000–20'000, Kombianlage 22'000–40'000, F42) und PVT-Hybridkollektoren (Strom+Wärme in einem Modul, lohnt bei knapper Dachfläche, F41); **neu Run 126: die Verbrauchsseite vor der Erzeugerseite** — 4 MJ/m³ Kaltwasser gegen 270 MJ/m³ Warmwasser (Faktor ~70), Prioritätenreihe Verteilverluste → Temperaturband 45/60 °C → Verbrauch, «Wassersparen an der Toilette ist Umweltschutz, an der Dusche ist Energiesparen» (F222) · **established** (Destillate `[[solarthermie-vs-pv-warmwasser-ch]]`, `[[solarthermie-investitionskosten-ch]]`, `[[pvt-hybridkollektoren]]`, `[[ahb-zuerich-wassersparen]]`)
- [[pv-eigenverbrauch-zev]] — **PV-Eigenverbrauch: Solarstrom selbst nutzen & vermarkten** — Hebel 1 technisch (WP als thermischer Speicher via EMS/Lastmanagement, solarer Deckungsgrad ~verdoppelbar, SG-Ready/SmartGridready, Batterie erst zuletzt; F31) + Hebel 2 organisatorisch (ZEV/vZEV im MFH, Eigenverbrauch abgabenfrei Art. 16/17 EnG, **vZEV neu ab 1.1.2025 ohne Umverdrahtung**; **Mieter-Preisregel ≤80 %/Gestehungskosten**, F32) + Hebel 3 (**LEG ab 1.1.2026** — Verkauf uebers oeffentliche Quartiernetz, Netzentgelt-Rabatt 40 %/20 %; F33) · **established** · **Nachtrag 30.08.2026: «das VSE-Handbuch ist kein Gesetz» — drei ElCom-Beanstandungen gegen HER-CH 2025 / BD LEG-CH 2025 (F260, F261)** · **Nachtrag 31.08.2026: Messentgelt neu je Messpunkt, StromVG Art. 17a (F262)**
- [[elektromobilitaet-ladeinfrastruktur]] — **Elektromobilitaet — Ladeinfrastruktur am Wohngebaeude**: **Grunderschliessung aller Parkplaetze** (intelligent + ausbaufaehig + **dynamisches Lastmanagement**) statt Einzel-Wallbox; Ausbau nach **SIA 2060** C1 Power-to-Garage / C2 Power-to-Parking / D Ready-to-charge, CHF-Werte A 65/B 180/C1 350/C2 400 je Wohnung, D 3'100 je E-Parkplatz; Typ 2, 11 kW; E-Auto 20-100 kWh als flexibler Tagesverbraucher, Fruehling-Herbst bis 100 % PV; Prozess 6-9 Mt., Mietobjekt via Parkplatzmiete, STWEG → Skill stockwerkeigentum; V2H/V2G kuenftig (F39) · **established** (Destillat `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]`)
- [[batteriespeicher]] — **Batteriespeicher (Heimspeicher) zur PV-Anlage**: hebt Eigenverbrauch ~30 %→bis 70–90 %, aber **teuerster Hebel + im Winter wirkungslos** (Tagesspeicher); Wirtschaftlichkeit ab ~35 % EV meist OHNE Batterie; Preiskurve **primärquellenbestätigt** (Batteriemonitor 2026): 2022 827 → 2023 846 → 2024 708 → **2025 586 CHF/kWh** (15-kWh-Speicher ⌀ CHF 8'850), Markt 1'451→2'461 MWh; Dimensionierung kWp×1,5 bzw. Jahresverbr./730; LFP 80–84 %, 10–20 J; Notstrom nur ~30 % der Systeme; Reihenfolge Lastverschiebung→thermischer Speicher→Batterie; MFH via ZEV/vZEV/LEG; **neu seit 1.1.2026:** Netznutzungsentgelt-Rückerstattung für Speicher mit Endverbrauch, Einspeiselimitierung max. 3 %/Jahr macht Batterie attraktiver, freistehender Speicher ausserhalb Gebäude baubewilligungspflichtig (RPG Art. 22/24), keine nationale Förderung (F38) · **established** (Destillat `[[batteriespeicher-heimspeicher-pv-ch]]`)
- [[energienachweis-zh]] — Energienachweis Kt. ZH (EN-ZH / EVEN seit 1.1.2026) + **Lueftung/Kuehlung EN-105/EN-110 (F22)** + **Ausblick MuKEn 2025** (F47, noch nicht in Kraft) + **Nachweiswege je Gebaeudekategorie und die «11 gegen 11»-Falle** (Run 148: vier Standardloesungen § 9 WDV nur fuer Kat. I/II, elf Standardloesungen § 10 WDV nur fuer den Waermeerzeugerersatz im Bestand, F248/F249) · **established**
- [[komfortlueftung]] — **Komfortlueftung / kontrollierte Wohnungslueftung**: 4 Standardsysteme (Komfort mit WRG / Abluft / dezentral 75–90 % / Grundlueftung), Waermeverluste >2/3 tiefer als Handlueftung (ZH EN-105 ≥70 %); die zwei Mythen widerlegt (**Fenster jederzeit oeffenbar**, **trockene Luft = Kaelte-Phaenomen** → Enthalpietauscher +bis ~10 % Feuchte); Minergie-Standard (kein System vorgeschrieben); Filterwechsel ~1–2×/J, EFH ~CHF 12–25k (Markt), Gebaeudeprogramm foerdert (F37); **SIA 382/1:2025 + SIA 382/5:2021** gemeinsam gueltig fuer Wohnbauten, Luftmengen 30/30/20/90 m³/h, WRG ≥80 %/≥60 % (F43); Filterklassen ePM1-Zuluft/Coarse-Abluft + Energieeffizienzklasse A/A+ (F44); Raumluftfeuchte SIA 180 30–70 % toleriert, Praxis 40–60 % (F45) · **established** (Destillate `[[komfortlueftung-wohnungslueftung-ch]]`, `[[komfortlueftung-wrg-sia382-luftwechsel]]`, `[[komfortlueftung-filterklassen-epm-stromverbrauch]]`, `[[raumluftfeuchte-komfortbereich-sia180]]`); **ergänzt Run 143 (19.08.2026): Vollzugsabschnitt Kt. ZH** — WRG-Pflicht Neuanlagen 70 % Temperaturänderungsgrad bzw. ≥ 75 % Jahresnutzungsgrad, Abluft-WRG-Pflicht ab > 1'000 m³/h **und** > 500 h/a mit Zusammenrechnungsregel, Luftgeschwindigkeits-Staffel 3-7 m/s als faktische Rohbau-Anforderung (F246, Destillat `[[vollzugsordner-energie-zh-abschnitt5]]`, ⚠ Alterskorpus)
- [[daemmstoffe-lambda]] — λ-Werte-Schnellreferenz (inkl. Naturdaemmstoffe/VIP/WDVS) · **established**
- [[naturdaemmstoffe]] — Naturdaemmstoffe (Holzfaser/Zellulose/Hanf/Stroh): λ 0,038–0,045 wie Mineralwolle, aber ~2× Speichermasse (c ~2000–2200 J/(kg·K)) → besserer **Sommerhitzeschutz via Phasenverschiebung**, diffusionsoffen, deutlich weniger graue Energie (Stroh ~100×); Preis: brennbar **RF3**, Bekleidung/Verputz noetig (F34) · **established** (Destillat `[[naturdaemmstoffe-kennwerte-sommerhitzeschutz]]`)
- [[innendaemmung]] — **Innendämmung im Altbau**: raumseitige Wanddämmung wo aussen verboten/unmöglich (~30 % Bestand); Aussenwand kommt in den Kaltbereich → hygrothermische Simulation SN EN 15026 nach SIA 180 statt Glaser, 4 Feuchte-/Frost-Risiken, 3 Funktionsprinzipien (kapillaraktiv/diffusionshemmend/diffusionsdicht); **U ≤ 0,20 praktisch unerreichbar** → Erleichterung = Regelweg (ZH § 2 Abs. 5 WDV); Förderung nur bei geschütztem Bauteil bis U 0,30 (ZH 40/SZ 60 CHF/m²); Schallschutz+Sommerhitzeschutz sinken (F92/F93) · **emerging** (Destillate `[[innendaemmung-altbau-bauphysik-ch]]`, `[[bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013]]`; verwandt `[[denkmalschutz-energiesanierung-zh-sz]]`)
- [[heizleistung-und-waermeerzeuger]] — Heizleistung/Dimensionierung + Brennwerte + **WP-Systemwahl JAZ (F6)** + **COP/SCOP/JAZ-Begriff + moderne Feld-JAZ WPZ Buchs 2017-2019 (Luft/Wasser inkl. WW 3,5 · Sole/Wasser 4,9 Neubau) + FAWA-Planungslehren + Vollkosten (F30)** + **Kaeltemittel R290/Propan: ChemRRV-Umstellung ab 2027, A3-Brandschutzgrenzen 0,15/1,5 kg (F72)** + **Erdwaermesonden-Bewilligung ZH/SZ: AWEL/Gemeinde, 500 m Bohrtiefe, 2,5 m Grenzabstand, S1/S2 verboten, ZH-Gebuehr = Aufwandgebuehr mit Deckel CHF 25'000 (F71)** + **Flaechenkollektor/Erdwaermekorb ohne Tiefbohrung: 15-20 W/m² Entzugsleistung, ZH/SZ-Verfahren einfacher als Sonde, S3 einzelfallbewilligungsfaehig (F110)** + **Anergienetz/kalte Fernwaerme: dezentrale WP je Gebaeude, lohnt bei Areal-Nutzungsmix Heizen+Kuehlen, ≈230 CHF/m² EBF FGZ-Referenz (F109)** + **WPSM-Zertifikat (Waermepumpen-System-Modul) ≤15 kW Pflicht fuer ZH/SZ-Foerderung, CHF 350 + MWST, prueft auch bestehende Heizkoerper; alte Radiatoren im Altbau meist wärmepumpentauglich, hydraulischer Abgleich vor Heizkoerperersatz pruefen (F154)** · **established** (Destillate `[[kaeltemittel-r290-waermepumpen-ch]]`, `[[erdwaermesonden-bewilligung-zh-sz]]`, `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`, `[[anergienetz-kalte-fernwaerme-ch]]`, `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`)
- [[foerderung-energie-zh]] — Foerdersaetze Kt. ZH 2026 VOLLST. (WP 2'900/6'800, Fernwaerme 5'200, Daemmung 40/+60, Minergie-ECO 110/70/50 · -P-ECO 165/100/80, Solarthermie 2'400+1'000/kWth, GEAK 1'000/1'500) + Bund-/Kanton-Mechanik (HFM 2015) + **PV ausdruecklich NICHT kantonal gefoerdert** («Photovoltaik-Anlagen ohne gleichzeitige Daemmung des Daches», zh.ch Foerderprogramm 2026, Stand Jan. 2026; Bundesweg ueber Pronovo: KLEIV < 100 kW, GREIV ≥ 100 kW, HEIV 2-149.99 kW ohne Eigenverbrauch, Neigungswinkelbonus integriert 250 → 400 CHF/kW per 1.1.2025, Parkflaechenbonus 250 CHF/kW; **F250**, Run 149) · **established** (⚠ **E-R149-2 aufgehoben** — die EIV-Tariftabelle in CHF je Leistungsklasse IST belegt, in `[[pv-einmalverguetung-bund-bfe]]` aus der Pronovo-Richtlinie 2026 v4.1: Grundbeitrag **CHF 0 seit 01.04.2024**, Leistungsbeitrag 360/300/400 CHF/kWp, Neigungswinkelbonus erst ab 75° Modulneigung. Der Punkt entstand, weil aussen gesucht statt innen nachgesehen wurde; Selbstkorrektur am Ende von Run 149)
- [[foerderung-energie-sz]] — Foerdersaetze Kt. SZ 2026 VOLLST. (Daemmung 60/m² +40 Bonus, Luft/Wasser-WP 3'200+120/kW_th, Erdsonde 4'800+360/kW_th, Solarthermie 2'400+1'000/kW_th, Minergie EFH/MFH/andere 100/60/40 · -P 155/90/60 CHF/m² EBF, GEAK 1'000/1'500) + SZ↔ZH-Vergleich · **established** (FAQ F28)
- [[regenwasserbewirtschaftung-versickerung-zh]] — Regenwasser-Versickerung Kt. ZH (Bewilligungspflicht/Zustaendigkeit/Metall-Adsorber/Versickerungsversuch; Schwammstadt-Querschnitt) · **established** (Run 88)
- [[sommerlicher-waermeschutz]] — Hitzeschutz: g-Wert, Beschattung, Speichermasse, Wetterdaten 2035, Fassadenbegruenung als 5. Stellschraube (PET-Kuehlung ⌀4,8 °C, Zielkonflikt mit Fassaden-PV); SIA-180:2014-Nachweisverfahren 1/2/3 mit Grenzwerten (Verfahren 1 Kennwerte, Verfahren 2 g_tot je Orientierung, Verfahren 3 Simulationskriterium) + ZH-Formularbezug EN-102a/b/EN-110-ZH; **MuKEn 2025 Art. 1.9** hebt den Nachweis neu in einen eigenen Basismodul-Artikel (Empfehlung, noch nicht geltendes Recht); **Kt. SZ**: EVEN seit 1.1.2026 wie ZH, keine eigene strengere Wegleitung auffindbar (Negativbefund) (F145) · **established** (Run 88, ergaenzt Run 103); ergaenzt durch `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` (Aussenraum-/Mikroklima-Perspektive statt Innenraum-Nachweis, established seit Run 101)
- [[fenster-verglasung]] — Fenster & Verglasung: **Uw = f(Ug/Uf/ψg)**, Dreifachglas Standard (>90 % CH, Ug 0,4–0,8), warme Kante (ψg 0,035, bis −20 %), **g-Wert Winter-Nutzen↔Sommer-Risiko**, Uw-Anforderungen (ZH/Minergie ≤1,0 · Minergie-P ≤0,80), Schimmelwarnung «Fenster nie allein vor der Wand», Kosten ~400/~1'200 CHF/m² (F35) + Fenster-Energieetikette FEA (BFE): Winter-Bilanz Uw,eq, Klasse A = Gewinne > Verluste · **established** (Destillate `[[fenster-verglasung-uw-g-wert]]`, `[[fenster-energieetikette-fea-bfe]]`)
- [[geak-gebaeudeenergieausweis]] — **GEAK — Gebaeudeenergieausweis der Kantone**: amtliche Energieetikette Bestand (7 Klassen A–G Huelle/Gesamtenergie/CO₂), **GEAK Plus** mit bis 5 Sanierungsvarianten + Beratungsbericht, **Pflicht ab CHF 10'000 Foerderung**, 10 J gueltig, nur zertifizierte Expert:innen, kein Fixpreis (gefoerdert wird nur der GEAK Plus: 1'000 EFH/ZFH bzw. 1'500 uebrige); Pflicht-Landkarte ZH/SZ (F82): keine Handaenderungs-/Bewilligungspflicht, aber SZ-Klasse-D als Nachweisweg beim fossilen Heizungsersatz; Klassengrenzen: GEAK klassiert RELATIV zum individuellen Referenzgebaeude (A=0-50 %, B=50-100 %, …, G=>300 %), KEINE fixen kWh/m²-Grenzwerte; CO₂-Etikette separat absolut in 5-kg/(m²a)-Schritten (F36/F46) · **established** (Destillate `[[geak-gebaeudeenergieausweis-kantone]]`, `[[geak-klassengrenzen-relative-klassierung]]`)
- [[graue-energie]] — graue Energie & THGE, THGE-Grenzwerte GW_EBF je m2 EBF (MFH 12,4 bzw. 11,5 nach Minergie 2026.1, Spital 19,9 bzw. 18,5; ⚠ die frueher gefuehrten 11/17 waren GF-gewichtete Mittel je m2 GF, korrigiert 23.08.2026, Audit 01.1), Bauweise (Holz vs. Massiv), Sanieren-vs-Neubau + KBOB-Faktenblatt (9 Reduktionshebel + SIA-2032-Messgroessen + «Restwert Bestand» + bis 40 % MFH) + Ausblick MuKEn 2025 Teil G (graue Energie wird vom Label-Extra zur gesetzlichen Auflage, noch nicht in Kraft) + **konkrete Bauteilaufbau-Werte: Holzbau-Aussenwand 25-34 kg CO2-eq/m², Flachdach-Massivholz 204-206 kg CO2-eq/m² (Masse-Effekt); treeze-Vergleich gleicher U-Wert: Holzriegelwand −73 % ggü. Backstein+EPS (F122)** + **reale Massivbau-Gegenzahl: Backstein-Vollwand 35-52 kg CO2-eq/m², unbewehrte Betonwand 46-69 kg CO2-eq/m² — beide bereits ohne Dämmung/Putz/Bewehrung über dem kompletten Holzbau-Wandaufbau (F126)** + **neu Run 126: die drei Messgrössen eines Datensatzes (graue Energie MJ-Eq · Treibhauseffekt kg CO₂-Eq · UBP, die beiden ersten darin enthalten), Systemgrenzen-Lehre (Entsorgung ≈ ein Viertel beim Beton) und die Versionsdisziplin — Variantenvergleiche nur mit derselben KBOB-Datenversion, die Gründungswerte von 2007 sind Methodik-Illustration und keine Rechenwerte (F225)** · **established** (Destillate `[[kbob-bauteilkatalog-co2-je-aufbau]]`, `[[kbob-massivbau-bauteilaufbau-co2]]`, `[[kbob-oekobilanzdaten-baubereich-2007]]`, Run 92/93/126)
- [[waermepumpen-laermschutz]] — **Wärmepumpen-Lärmschutz**: Formel Leq/Lr, Planungswert nach Empfindlichkeitsstufe (Beispiel ES II Nacht 45 dB(A)), Abstand als wirksamster Hebel (Verdoppelung ≈ −6 dB), Massnahmen-Kaskade Standort→Modell→bauliche Massnahme, Vorsorgeprinzip 1 %/3 dB (F65); vollständige Anhang-6-LSV-Planungswerttabelle ES I-IV Tag/Nacht (40-65 dB(A)); **Verfahrensfrage ergänzt (F144)**: wer prüft (ZH private Kontrolle durch befugte Fachperson statt Behörde), Meldeverfahren 30 Tage/Ausnahme Kernzone-Ortsbild-Denkmalschutz, SZ kein eigenes WP-Lärm-Merkblatt (Gemeinde/Bezirk statt AfU operativ zuständig), Einsprache-/Reklamationsablauf · **established** (Destillate `[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`, `[[waermepumpe-aussenlaerm-vollzugshilfe]]`)
- [[solarpflicht-schweiz-kantone]] — **Solarpflicht Schweiz — Bund und alle 26 Kantone**: nationaler Mindeststandard Art. 45a EnG ab 300 m², kantonale Verschärfungen (Bern ohne Schwelle 10 % aGF ab 1.1.2026, Luzern 50 % Dachfläche auch EFH, SG 10 W/m² EBF), Gemeinde-Kompetenz-Delegation SG/AG/BL (F66); Aargau/Uri/Neuenburg beim/nahe Bundesminimum, Basel-Stadt «Solaroffensive» für Bestandsbauten in Vorbereitung, Graubünden Eigenstromerzeugungspflicht seit 2021; Waadt/Genf/Tessin/Solothurn/Wallis mit eigenen Pflichten seit 2023–2025; Schwyz (JANS-Fokuskanton) KEINE kantonale Solarpflicht (Motion 22.10.2025 abgelehnt), Zug/Glarus/Nidwalden/Appenzell AR ohne Flächenschwelle seit 2021–2023, Obwalden PBG 4.12.2025 (Referendum hängig), Basel-Landschaft/Schaffhausen Solarinitiativen 8.3.2026 abgelehnt, Jura MoPEC seit 2019 (Revision geplant), Appenzell IR unklare Quellenlage (F66); **ergänzt Run 143 (19.08.2026): Bewilligungsweg Kt. ZH** — Meldeverfahren § 2a BVV statt Baubewilligung (Dachanlage nach Art. 32a RPV, Fassade, freistehend ≤ 20 m²), bewilligungsfrei nur steckerfertig ≤ 4 m² (§ 1 lit. j), **bewilligungspflichtig in Kernzone/Inventar/Schutzanordnung** (§ 2a Abs. 2), 30 Tage vor Baubeginn elektronisch + 30 Tage Behandlungsfrist, VKF-Orientierungsplan als Pflichtbeilage; die verbreitete 35-m²-Faustregel ist **überholt** (F245) · **emerging** (Destillat `[[solarpflicht-national-mantelerlass-kantone]]`, ergänzt `[[zh-energiegesetz-revision-solarpflicht-2026]]`)
- [[holzbau-bauphysik-clt]] — Massivholz/CLT: Waerme (λ 0,12), Luftdicht (folienfrei), Feuchte (s_d) + Bauteilkatalog (Wand/Dach REI·U·Rw) + Schallschutz (R_w 34-58, L'_n,w 60→46) · **established**
- [[schallschutz-sia181]] — Schallschutz SIA 181:2020: Anforderungswerte Luft-/Tritt-/Haustechnik-/Aussenlaerm je Empfindlichkeit, erhoehte Anforderung Pflicht bei EFH/STWEG, Bauwert≠Laborwert (Flanken-Mechanik R_w↔R'_w / K_P+K_F / 12 Nebenwege EN 12354 / C-Werte, Lignum/BFH 2008); Aussenlaerm Strasse/Bahn (F68): LSV am offenen Fenster (Bewilligung) vs. SIA 181 am geschlossenen Fenster (Bauqualitaet), Massnahmen-Kaskade, Ampel gelbe/rote Raeume, ZH-Festverglasung ab 70/60 dB, R'w+Ctr statt Rw → `[[aussenlaerm-schallschutzfenster-strasse-bahn]]`; SZ-Vollzugspraxis amtlich belegt (Merkblatt AfU Kanton Schwyz 29.01.2021) — 10 % Fensterflaeche Grundvoraussetzung, 3-dB-Ausnahmehartgrenze, Festverglasungsverbot Wohn-/Arbeitsraeume → `[[cerclebruit-sz-merkblatt-laermbelastete-gebiete]]`; SIA 181 definiert keine Fensterklassen-Skala (SSK-1-6 stammt aus DIN 4109), De ≥ Lr,Tag−33dB/Lr,Nacht−25dB amtlich (Stadt Bern Okt. 2023) · **established** (FAQ F25, F68)
- [[notstromversorgung-sicherheitsstromversorgung]] — **Notstromversorgung/Sicherheitsstromversorgung Spital & Pflegeheim** (neu, Run 114): geregelt primär brandschutzrechtlich (VKF-Merkblatt 2009-15de zu BSR 17-15) und elektroinstallationstechnisch (NIN Kap. 5.6/7.10, medizinische Gruppen 0/1/2), NICHT über ein eigenes Spitalliste-Kriterium; ab 70 kW Aggregatnennleistung eigener EI-60-Technikraum statt EI-30 — frühe Flächen-/Kostenfolge; keine CH-Primärquelle zur konkreten Autonomiezeit gefunden (F164) · **established** (Destillat `[[notstromversorgung-netzersatzanlage-spital-pflegeheim-ch]]`, hohe Healthcare-Relevanz für JANS)
- [[reinraum-op-klimatisierung]] — **Reinraum-/OP-Klimatisierung im Gesundheitsbau** (neu, Run 115, vertieft das Run-98-Destillat `[[swki-lueftung-gesundheitsbau-hygiene-energie]]`): SWKI VA105-01:2015 + SN 22500 als Schweizer Leitplanken, Konzept 1a (TAV/Laminarflow) vs. 1b (turbulente Mischlüftung), Endfilter H13/H14 (EN 1822), Überdruckkaskade der ganzen OP-Abteilung; interne Wärmelast bis 8'000 W/OP (~200 W/m²) als Auslegungstreiber; **Swissnoso 2018 zweifelt den Infektionsschutz-Nutzen von TAV explizit an** (Metaanalyse 330'146 Hüft-/134'368 Knieprothesen, teils ungünstiger; TAV-Mehrkosten ~7'000 EUR/Jahr/Saal) — legitimer Verhandlungspunkt gegenüber dem Betreiber, bevor die teurere Variante verlangt wird; Nachtabsenkung bei geschlossenen OP-Türen hygienisch zulässig (F136 geschärft) · **emerging** (Destillat `[[reinraum-op-klimatisierung-gesundheitsbau-ch]]`; die eigentlichen SWKI-Zahlentabellen bleiben kostenpflichtig unverifiziert, zitierte Werte stammen aus deutscher Parallelnorm DIN 1946-4:2018)
- [[gebaeudeschadstoffe]] — Gebäudeschadstoffe beim Umbau (Kt. ZH): 4-Fälle-Raster Baujahr **vor 1990**/Bausumme **≤ CHF 200'000** → Checkliste selbst ↔ Fachperson + private Kontrolle; Stichjahre Asbest 1990/PCB-Geräte 1987/PCB-Fugen 1976; Spezialobjekte (Schule/Kita/**Spital**) immer Fachperson; ohne Voruntersuchung gilt Bauteil als haltig → teuer (F23) · **established** (Destillat `[[gebaeudeschadstoffe-checkliste-zh]]`; Run 89, promoviert aus Destillat-Direktverweis; 12.08.2026 ergänzt um Gebäudescreening-Methodik `[[asbest-dimension-jenseits-spritzasbest]]` + Projektleiter-Ablauf `[[ahb-checkliste-schadstoffe-in-bauten]]`)
- [[elektrosmog]] — Niederfrequente elektromagnetische Felder beim Bauen: NISV-Anlagegrenzwert **1 µT** für Orte empfindlicher Nutzung, kein Grenzwert für Hausinstallationen (Stand der Technik: Erdungsinsel/Einpunkt-Erdung, sternförmige Leitungsführung); Feldstärke-Faustregel 50 cm Abstand; Vorgehen bei Beschwerden (F226) · **emerging**, Datenstand 2002 (Destillate `[[elektrosmog-informationsblatt-ahb-ewz]]`, `[[vorgehen-bei-beschwerden-innenraumklima]]`; neu 12.08.2026, Mac Mini Nachtschicht)
- [[fenster-uw-g-wert-zielkonflikt]] — **Fenster-Zielkonflikt Uw vs. g-Wert**: physikalisch am Glas nicht auflösbar, nur zeitlich über beweglichen Aussensonnenschutz auflösbar; SIA 180:2014 Ziff. 5.2.4.1 g_tot-Grenze orientierungsabhängig (Nord ≤0,20/fg grosszügig, NO/NW ≤0,13/fg, alle übrigen Fassaden inkl. Ost/West gleich streng wie Süd ≤0,07/fg); Sonnenschutzglas nur wo Storen baulich unmöglich (Systemnachweis-Schwelle g<0,3); innenliegender Sonnenschutz Faktor 4-5 schlechter als aussenliegend; CH-Norm zählt Überschreitungsstunden (100 h Neubau/400 h Bestand über 26,5 °C), keine deutsche Kelvinstunden-Methode (F121) + **Glas-g-Wert ist methodisch orientierungsunabhängig (Minergie-Anwendungshilfe 2025-2, Kap. 6.3.8) — primärquellenbestätigter Negativbefund zur gesuchten Himmelsrichtungs-Tabelle, g-Wert-Bandbreiten je Verglasungstyp 0,13-0,62 über vier CH-Quellen konsistent belegt (F125)** · **established** (schliesst Curriculum-Punkt A5; Destillat `[[glas-g-wert-verglasungstypen-ch]]`, Run 92/93)

- [[waermeplanung-kommunal-zh-sz]] — **Kommunale Wärmeplanung/Energieplanung ZH/SZ** (neu, Mac-Mini-Nachtschicht 13.08.2026, schliesst QUESTIONS-Eintrag E-R21-1): in beiden Kantonen behördenverbindlich, nicht grundeigentümerverbindlich; ZH § 7/11 EnerG + Anschlussverfügung § 295 PBG, SZ nur politische Vorgabe EK-EE-4 (Gemeinden >7'000 Einw., Frist 2030), keine Anschlusszwangs-Norm auch auf SZ-Vollzugsebene (AfU-Wegleitung, Baureglemente Freienbach/Wollerau); Praxisbeispiel Freienbach: Energieträgerkarte 2025 (8 Zonentypen) ersetzt den nicht mehr auffindbaren econcept-Richtplan 2013 · **emerging** (Destillate `[[waermeplanung-kommunal-zh-sz]]`, `[[energierichtplan-freienbach-econcept]]`, `[[fernwaerme-anschlusspflicht-sz]]`, `[[sz-vollzugspraxis-afu-wegleitungen-rechenzentren]]`)

## Destillat-Direktverweise (ohne eigenen Wiki-Artikel)
Destillat-Einzelthemen ohne eigenständigen `wiki/*.md`-Artikel — bereits im Fliesstext eines
Themenartikels erwähnt oder direkt in `destillate/INDEX.md` gelistet. Kompakt gehalten, volle
Details im jeweiligen Destillat bzw. im CHANGELOG.

- `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` — SIA 2024 Raumnutzungs-randbedingungen Gesundheitsbau: Gebaeudekategorie VIII.1 Spital/VIII.2 Pflege mit Flaechenanteilen, Raumnutzungen 8.01-8.03 (Aussenluft/Volllaststunden, Norm-Entwicklung 2015→2021), Prozessanlagen (OP/CT/MRT nicht abgedeckt), SIA-382/1-Kaelte-Systematik, geltend-vs-Harmonisierungsvorschlag inkl. EnFK-Grenzwerte, TEP-Energiebedarfsvergleich Spital/Pflege vs. Wohnbau (F78); Lueftungsluecke teilweise geschlossen durch `[[swki-lueftung-gesundheitsbau-hygiene-energie]]`/`[[reinraum-op-klimatisierung-gesundheitsbau-ch]]` (F136); TABS-Eignung ueber `[[betonkernaktivierung-tabs-energieeffizienz]]` (F138); Prozessenergie-Vertiefung Sterilisation ueber `[[sterilisationsenergie-medizintechnik-prozessenergie-ch]]` (F167) · emerging (Zwilling `sia-2024-nutzungsdaten-gesundheitsbau` am 2026-07-26 eingemergt)
- `[[sterilisationsenergie-medizintechnik-prozessenergie-ch]]` — Sterilisationsenergie & Medizintechnik-Prozessenergie (Run 115, neu): USZ-Klimaklassifikation ZSVA (Raumtyp 73, Produktionsräume Klasse 3/Sterillager Klasse 4 wegen Feuchteempfindlichkeit) + SGSV/Swissmedic-Prozessparameter Dampfsterilisation (134 °C, ≥18 Min. Haltezeit, 800-l-Kammerschwelle) + Medizintechnik-Kühlung real >70 kW Radiologiezentrum Reinach; **ehrlicher Negativbefund:** kein CH-/D-A-CH-Kennwert kWh/Zyklus oder Prozessenergie-Anteil gefunden, kursierende «2-4 kWh/Zyklus»-Angabe nicht übernommen; Wärmerückgewinnungs-Prinzip (~80 %) nur via branchenfremdem D-Fallbeispiel belegt (F167) · emerging
- `[[netzanschluss-netzverstaerkung-pv-emobilitaet-ch]]` — Netzanschluss-/Netzverstärkungskosten PV-Grossanlagen + E-Mobilität: Art. 15b StromVG, 70-%-Wechselrichter-Regel, SZ-Netzkostenbeiträge (F79/F83) · established
- `[[fernwaerme-anschlusskosten-zh]]` — Fernwärme-Anschlusskosten Stadt Zürich + Kt. Schwyz: ewz-Tarifformel, Agro Energie Schwyz, Energie Einsiedeln (F80/F83) · emerging
- `[[vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz]]` — VHKA Heizkostenabrechnung ZH/SZ: Messpflichtschwellen (ZH ab 2/3 Nutzeinheiten, SZ ab 5), VEWA-Splitting 30/70, Mietrecht-Nebenkosten (F84/F85) · established
- `[[netto-null-klimaziele-zh-sz]]` — Netto-Null-Klimaziele Bund/ZH/Stadt-ZH/SZ: Bund 2050 gesetzlich, ZH-2040-Vorlage 28.9.2025 verworfen (F81) · emerging
- `[[behaglichkeit-raumklima-kbob-ipb]]` — KBOB/IPB Behaglichkeit Sommer/Winter: aktive Befeuchtung bei normalem Klima nicht nötig, Sommer primär passiv (schärft F37) · established ⚠ 2017
- `[[waermepumpe-systemvergleich]]` — WP↔Fernwärme↔Pellets JAZ-Richtwerte + Entscheidungslogik (F6); tiefste Vorlauftemperatur/höchste JAZ via Betonkernaktivierung/TABS als eigenes Flächensystem vertieft, siehe `[[betonkernaktivierung-tabs-energieeffizienz]]` (F138) · established
- `[[fawa-jaz-feldanalyse-waermepumpen]]` — BFE-Feldanalyse FAWA (236 Anlagen): reale JAZ Sole/Wasser 3,5 / Luft/Wasser 2,7 + Planungslehren · established ⚠ 2004
- `[[cop-scop-jaz-waermepumpe-gruenenwald]]` — Begriffsklärung COP (Prüfpunkt) vs. SCOP (EN 14825) vs. JAZ (Feldmessung) · established
- `[[pv-einmalverguetung-bund-bfe]]` — PV-Förderung Bund: EIV/KLEIV/GREIV/HEIV, KLEIV ~360 CHF/kWp, Boni Neigung/Winterstrom/Parkfläche (F7) · established
- `[[minergie-zertifizierung-workflow]]` — Minergie-Nachweis praktisch: Label-Plattform, Antrags-Checkliste, WPesti/PVopti, Prüfprozess AS↔ZS · established
- `[[gebaeudeprogramm-bund-hfm-2015]]` — Das Gebäudeprogramm Bund & HFM 2015: 18 Module M-01…M-18, Rahmenbedingungen (U≤0,20/GEAK Plus ab 10k), PV separat via Pronovo (F27) · established
- `[[energiefranken-foerder-suchmaschine-ch]]` — Förder-Suchmaschine energiefranken.ch (PLZ → alle Ebenen Bund/Kanton/Gemeinde/EWU/Stiftung) + Förder-Stapel-Logik (F29) · established
- `[[klimapraemie-heizungsersatz-klik]]` — Klimaprämie Heizungsersatz Stiftung KliK: ~CHF 360/kW neue Heizleistung, meist alternativ zur Kantonsförderung, Laufzeit voraussichtlich bis Ende 2027 (F29), ⚠ WP-Ersatz erst ab 40 kW und nicht im EFH (F29/F94) · established
- `[[sia-384-3-wpesti-jaz-methode]]` — WPesti/SIA 384/3:2021: die verbindliche projektgenaue WP-JAZ-Methode (gratis endk.ch) (F6) · established
- `[[wpz-buchs-feldmessung-jaz-2016-2019]]` — moderne CH-Feld-JAZ (WPZ Buchs 2017-2019, 13 Anlagen): Luft/Wasser 3,5/3,1/2,8, Sole/Wasser 4,9/4,6/4,3 je nach Bauklasse (F6) · established
- `[[heizsysteme-vollkostenvergleich-energieschweiz]]` — Vollkostenvergleich Heizsysteme (EnergieSchweiz, EFH/20 J): Erdsonden-WP günstigstes System vor Luft-WP/Fernwärme/Öl/Pellets (F30) · established ⚠ Rechenbeispiel, Werte volatil
- `[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]` — Fassadenbegrünung als Hitzeschutz: Kühlungseffekt PET ⌀4,8 °C (Kt. ZH), Zielkonflikt mit Fassaden-PV um dieselbe Fläche, Förderprogramm Stadtgrün Zürich (F67) · emerging; ergaenzt durch `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` (weitere Kuehlmassnahmen Baum/Wasser/Entsiegelung/Albedo mit Kt.-ZH-Kennwerten, Run 100)
- `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` — Urbane Hitzeinseln/Aussenraum-Kuehlung: BAFU/ARE-Bericht UW-1812-D **im Volltext gelesen** (Run 101) — echte Gliederung 6 Planungsgrundsaetze + 3 staedtebauliche Leitsaetze + 18 Einzelmassnahmen (feiner als die vereinfachte 5er-Kurzform); Baum >7 °C am Original bestaetigt, Fassadenbegruenung/Wasserelemente/Albedo-Werte praezisiert bzw. als abweichend/US-Quelle markiert; **Kt.-ZH-Diskrepanz zum BAFU-Original in Run 102 geklaert** (Primaerquelle Stadt-Zuerich-Bericht «Fachplanung Hitzeminderung» 2020, FITNAH-3D-Modellierung: Kanton-Website zeigt nur den Tag-PET-Wert, der Bericht weist zusaetzlich einen Nacht-Lufttemperatur-Wert aus, der bei Fassadenbegruenung exakt dem BAFU-Wert 1,3 °C entspricht — kein Widerspruch, zwei unterschiedliche Kenngroessen); Rasenflaeche-Kuehlwert neu belegt (Tag PET Median -3,6 °C/Max -6,6 °C); heller-Belag-Wert (0,6 °C) bleibt einzige weiterhin US-EPA-basierte Zahl; Kt. Schwyz seit 13.04.2026 mit eigenen Klimakarten, aber ausdruecklich nur fuer Fachleute/Gemeinden (Teilbefund, keine Bauherren-Beratung); Tropennaechte-«5x»-Zahl amtlich MeteoSchweiz-bestaetigt; Bezug zu RRB-2025-1082-Klimaanlagen-Bewilligungspraxis (F140) · **established** (Run 100 neu, Run 101/102 vertieft; keine SIA-Norm zum Aussenraumklima gefunden)
- `[[energie-performance-gap-monitoring-inbetriebnahme]]` — Energie-Performance-Gap: der SIA-380/1-Standardbedarf ist keine Verbrauchsprognose — CH-MFH verbrauchen im Schnitt 10-44 % mehr Heizwaerme (Verhaltens-Gap: reale Raumtemperatur ~22,5 °C statt Norm-20 °C, haeufigeres Lueften), waehrend zertifizierte Minergie-P/A-Neubauten gemaess GAPxPLORE tendenziell WENIGER verbrauchen (-12 % bis -18 %); **GAPxPLORE-Original (BFE-Schlussbericht 19.11.2019, 145 S.) in Run 102 gefunden und die vier Zahlen (-12/-18/-16/-5,3 %) am Original wortgetreu bestaetigt**, methodischer Spannungspunkt (gesamtschweizerischer EPG -6 % vs. +10 bis +44 % Wohnbau-Mehrverbrauch) eingeordnet; vier Gap-Komponenten (Verhaltens-/Technischer-/Klima-/Modellierungs-Gap); Gegenmassnahmen Sub-Metering/Monitoring schon in der Projektierung, systematische Inbetriebsetzung/Commissioning, Nutzerkommunikation; keine gesetzliche Betriebsoptimierungspflicht bei Wohnbauten (anders als `[[muken-2025-modul-7-betriebsoptimierung-hlkkse]]` bei Nichtwohnbauten); Healthcare-Spezifika jetzt separat via `[[energie-performance-gap-gesundheitsbau]]` (F141) · **established** (Run 101 neu, Run 102 auf established gehoben)
- `[[energie-performance-gap-gesundheitsbau]]` — Energie-Performance-Gap im Gesundheitsbau (Spital/Pflegeheim): belegter Negativbefund — weder CH noch D-A-CH kennt eine dedizierte Prognose-vs-Ist-Studie fuer Spital/Pflegeheim (vier Primaerquellen im Volltext durchsucht); als Naeherung reale deutsche Krankenhaus-Kennwerte (150 bis >300 kWh/m²/a bzw. 20'000-35'000 kWh/Bett·Jahr, 60-75 % Waerme) plus drei strukturelle Gap-Treiber (24/7-Betrieb ohne Nachtabsenkung, hoher vom Energienachweis ausgeklammerter Prozessenergieanteil Sterilisation/Medizintechnik-Kuehlung/OP-Klimatisierung, extreme Fallstreuung Medizintechnik-Ausstattung) (F143) · speculative (Run 102, neu)
- `[[smart-meter-rollout-schweiz]]` — Smart-Meter-Rollout Schweiz (StromVV Art. 8a decies ff.): 80 % Rollout-Ziel bis Ende 2027/1.1.2028 (Stand Ende 2024: 50,2 %), Kosten grundsaetzlich beim Netzbetreiber via Messentgelt, Verweigerung fuehrt zu individuellen Mehrkosten/ElCom-Verfuegung; **zentraler Bauherren-Hebel:** ZEV/LEG hat erzwingbaren 3-Monats-Anspruch auf Smart Meter an allen Messpunkten (Art. 8a decies Abs. 6 StromVV) — entkoppelt ein geplantes vZEV vom allgemeinen VNB-Rollout-Fahrplan, ergaenzt `[[zev-eigenverbrauch-mfh-her-2025]]` und `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` als technische Voraussetzung (F142) · **established** (Run 102, neu, neues Themenfeld)
- `[[kbob-graue-treibhausgasemissionen-2025]]` — KBOB-Faktenblatt graue THG-Emissionen: 9 Massnahmen, Messgrössen kg CO₂-eq/m² EBF, Grenzwert-Logik (Minergie-ECO/SNBS/SIA 390/1), kommende Kantons-Grenzwerte Art. 45 EnG (F103) · established
- `[[lignum-schallschutz-holzbau-flankenuebertragung]]` — Flanken-/Nachweis-Mechanik Holzbau (Lignum/BFH-AHB 2008): R_w↔R'_w, K_P/K_F, 12 Nebenwege EN 12354, C/C_tr · established ⚠ SIA 181:2006
- `[[rilumi-minergie-luftdichtheit-n50]]` — Luftdichtheit Gebäudehülle/Blower-Door-Test: Grenzwerte qa50 (vormals qE50) Minergie/-P/-A Neubau vs. Erneuerung, Messnorm SIA 180.206 «Verfahren 3», SIA 180:2014 setzt eigene Grenzwerte für jedes Gebäude (F63) · established (Primärquelle vollständig)
- `[[fernwaerme-anschlusspflicht-zh]]` — Fernwärme-Anschlusspflicht Kt./Stadt Zürich: § 295 PBG (2 Absätze, wortverifiziert), keine generelle Pflicht, aber Verfügungsmöglichkeit ab ≥70 % erneuerbar/Abwärme, Stadt Zürich 8-Jahres-Übergangsfrist bei fossilen Bestandsheizungen (F64) · established (§-Wortlaut verifiziert)
- `[[fernwaerme-anschlusspflicht-sz]]` — Fernwärme-Anschlusspflicht Kt. Schwyz: keine gesetzliche Grundlage gefunden, Anschluss ist eine von zehn freiwilligen Standardlösungen (§ 8d kEnG) beim Wärmeerzeugerersatz (F73) · emerging (nicht alle Gemeinden geprüft)
- `[[elektroheizungs-ersatzpflicht-zh-sz]]` — Elektroheizungs-Ersatzpflicht: ZH bestehende Widerstandsheizungen/zentrale Elektro-Wassererwärmer bis 2030 (§ 10b EnerG, bundesgerichtlich bestätigt BGE 149 I 49), SZ Frist bis 2050 nur Anlagen mit Wasserverteilsystem (§ 22a kEnG), Ausnahmenkataloge je Kanton (F70) · established
- `[[denkmalschutz-energiesanierung-zh-sz]]` — Denkmalschutz/Ortsbildschutz (ISOS) und energetische Sanierung ZH/SZ: Innendämmung statt Aussendämmung (jetzt primärquellenbelegt 4-8 cm, Kastenfenster-Sanierung erreicht U 1,3 W/m²K statt Ersatz, acht EV/DV/IV-Fenstervarianten, Dachboden- vor Aufsparrendämmung), PV auf nicht einsehbaren Dachflächen; ZH PBG-Revision 02.07.2026 + § 238 PBG, SZ DSG/DSV-Revision 1.10.2024 (F74, F113/F114); Run 111: Handbuch «Energie und Baudenkmal» Teil 1+2 (Kt. Denkmalpflege BE/ZH) im Volltext gelesen, löst die bisherige «Bild-/JPEG2000-Scan»-Notiz auf (F155) · **established**
- `[[energie-baudenkmal-haustechnik-zh]]` — Haustechnik an Baudenkmälern (Kt. Denkmalpflege BE/ZH, Teil III): Rangfolge nichtbauliche Massnahmen vor Wärmeerzeuger vor Wärmeverteilung vor Hülle, Kompensationsprinzip im SIA-380/1-Systemnachweis, Fussbodenheizung nur ohne erhaltenswerte Böden, Komfortlüftung kritisch (Kanalführung=Substanzeingriff), Elektroleitungen als Aufputz-Additive; ergänzt `[[denkmalschutz-energiesanierung-zh-sz]]` (F156) · established (Run 111, neu)
- `[[energie-baudenkmal-solarenergie-zh]]` — Solaranlagen an Baudenkmälern (Kt. Denkmalpflege BE/ZH, Teil IV): Leitfragen Substanzgefährdung/Erscheinungsbild, Standort-Präferenzhierarchie Nebengebäude→Hauptdach, Gestaltungsregeln Steildach (Traufbereich, Randabstand 2-4 Ziegelreihen), Indachmontage bei Voltaik meist einzige Lösung; ergänzt `[[pv-solar-technologien]]` und `[[denkmalschutz-energiesanierung-zh-sz]]` (F157) · established (Run 111, neu)
- `[[kbob-massivbau-bauteilaufbau-co2]]` — Massivbau-Aussenwand kg CO2-eq/m²: Backstein-Vollwand SwissModul 35-52, unbewehrte Hochbaubeton-Wand 46-69 (beide ohne Dämmung/Putz/Bewehrung, bereits über Holzbau-Wandaufbau 25-34) (F126) · established
- `[[vkf-richtlinie-gefaehrliche-stoffe]]` — VKF «Gefährliche Stoffe» 26-15de Ziff. 3.5.3: nur Blitzschutz-Mengenschwellen brennbare Gase/Flüssigkeiten/Reifenlager/Pyrotechnik (a-d), KEINE Batteriespeicher — widerlegtes Sekundärzitat (F124) · established
- `[[gvz-photovoltaik-melde-versicherungspflicht]]` — GVZ-Feuerwehrformular «Dokumentation Photovoltaikanlage» + VKF-BSM Ziff. 4 Meldepflicht Feuerwehrkommando + Ziff. 3.3 Hagel-/Windwiderstand SIA 261/261-1 (F123) · established
- `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` — Grenzabstand WP-Aussengerät als Bauteil (nicht Lärmschutz): ZH-Bagatellschwelle § 260 Abs. 4 PBG (≤1,5 m Höhe/≤2 m² Fläche = kein Grenzabstand nötig, seit PBG-Revision 2.7.2026), SZ Nebenbauten-Grenzabstand 2,50 m (§ 61 PBG SZ, reduzierbar mit schriftlicher Nachbarzustimmung); ZH-Negativbefund per eigener Volltextsuche Baurekursgericht bestätigt, AG-Präzedenz präzisiert (Rechtsgleichheit statt Gebäudebegriff) (F130) · emerging
- `[[gvz-pv-meldeprozess-versicherung-feuerwehr]]` — GVZ-Feuerwehrdokumentation (VKF-BSM Solaranlagen Ziff. 4) und Versicherungs-Wertvermehrungsmeldung sind zwei getrennte, unverlinkte GVZ-Meldewege (Negativbefund über acht gvz.ch-Primärquellen) (F131) · established
- `[[gruene-hypotheken-klimahypotheken-ch]]` — Grüne/Klimahypotheken: SBVg-Pflicht zur Thematisierung der Energieeffizienz seit 1.1.2023 (kein Rabattzwang), elf Bankprodukte lückenlos primärquellenbelegt (ZKB bis −0,8 % p.a., UBS/Raiffeisen/Migros Bank/BEKB/LUKB/SZKB/Urner KB/Thurgauer KB, alle Bank-Websites direkt geprüft), IFZ-Studie im Original gelesen (2023: ~30 % der Banken; 2024: 36,5 %, je Ø 0,38 Pp.) (F132) · established
- `[[massivbau-bauteildatenblatt-ksv-swisspor]]` — Massivbau-Kompaktfassade (Kalksandstein KSV / Backstein swisspor): vollständiger Schichtaufbau + U-Wert-Staffelung 0.36→0.13 W/m²K je Dämmstärke; CHF/m²-Kennwert bleibt Näherung (AKTIVA AG/Schätzerhandbuch-Blend ~CHF 280.-/m², kein isolierter Primärbeleg — vier weitere Quellen Run 98 geprüft, Wüest Partner/Amt für Hochbauten ZH/CRB liefern keinen ablösenden Wert, zweiter bestätigter Negativbefund) (F134) · established (Schichtaufbau/U-Wert), CHF/m²-Kennwert emerging
- `[[duschwasser-waermerueckgewinnung-joulia]]` — Duschrinnen-WRG (Joulia): 13-46 % Wärmerückgewinnung, Mehrpreis ~CHF 600.-/Payback ~3 J. (Herstellerangabe), anrechenbar MuKEn/EN-ZH (10 % pauschal) + Minergie (bis 46 %); GEAK-Mechanik (Wärmeerzeuger «Solarenergie thermisch», fallbezogene Berechnung) und SIA-385/2:2025-Anhang-K-Existenz jetzt primärquellig verifiziert; keine 10°C-Gesetzesgrenze für Privathaushalte (F133) · emerging
- `[[wdvs-brandriegel-fassadendaemmung-vkf]]` — Brandschutz bei Fassadendämmung: ab 11 m Gesamthöhe (Gebäude mittlerer Höhe) braucht brennbare WDVS-Dämmung (EPS) einen umlaufenden Brandriegel je Geschoss (RF1, Schmelzpunkt ≥1'000 °C, ≥0.2 m hoch) oder VKF-anerkannte Sonderkonstruktion, unabhängig von der Dämmdicke; QSS 2 verbindlich; TKB-VKF-geprüftes Fachdokument (VAWD-STP); BSV-2026-Totalrevision voraussichtlich erst Frühling 2027 in Kraft (IOTH-Plenarversammlung März 2027), Inhalt zur Brandriegel-Frage noch offen; CHF-Mehrkosten weiterhin ohne Schweizer Primärquelle (Negativbefund, nur deutsche Vergleichswerte, bewusst nicht übernommen) (F135) · established
- `[[swki-lueftung-gesundheitsbau-hygiene-energie]]` — Lüftung im Gesundheitsbau (SWKI VA105-01:2015, Nachfolgerin SWKI 99-3): eigene Lüftungskonzepte OP-Saal/Isolierzimmer/Intensivstation (TAV vs. Mischlüftung als projektbezogener Entscheid, kein Automatismus), Zielkonflikt Hygiene vs. Energie (Kühllast bis 200 W/m² im OP, Wärmerückgewinnung im eigenen Anhang B3 differenziert statt Standardkomponente); ergänzt die SIA-2024-Lücke bei OP/CT/MRT; Zahlentabellen kostenpflichtig, DIN-1946-4-Werte nur als nicht-schweizerische Analogie markiert (F136) · emerging
- `[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]` — Legionellenschutz vs. WP-Effizienz bei der Trinkwassererwärmung: Grundordnung bleibt 60/55/50 °C (BAG/BLV-Original 2018 unverändert + SVGW W3/E3:2020 «im Einklang» damit, Volltexte direkt gelesen), SIA 385/1:2020 erlaubt darüber nur bei nachgewiesen optimaler Anlage/Betrieb eine bedingte 3-K-Absenkung auf 55/52 °C und schafft die pauschale tägliche/wöchentliche Legionellenschaltung für diesen Optimalfall ab; für identifizierte Vorwärm-Risikozonen verlangt das BAG/BLV-Original weiterhin eine wöchentliche 60-°C-Stunde; Zielkonflikt konkret (Legionellen-Wachstumsoptimum ≈37 °C liegt im WP-Effizienzfenster 35-45 °C) (F137) · established (adversarial verifiziert 25.07.2026: BAG/BLV-Modul-11-Original + SIA-385/1-Kommissionspräsentation direkt gelesen)
- `[[betonkernaktivierung-tabs-energieeffizienz]]` — Betonkernaktivierung/TABS: Rohrregister in der Rohbaudecke, Systemtemperaturen Heizen 22-32 °C/Kühlen 16-20 °C (tiefste Vorlauftemperatur, ideal für WP-JAZ); Trägheit (Stunden-Tage-Verzug) erfordert Vorsteuerung statt klassischer Raumregelung, Entscheidung fällt im Rohbau (einbetoniert, nicht korrigierbar); geeignet für grosse Gebäude mit stabiler Nutzung (Büro/Schule/Pflegebereich), ungeeignet für lastvariable Räume (OP-Säle); SIA 384.354:2021 als massgebende Norm nur dem Titel nach verifiziert (F138) · emerging (OP-Saal-Negativbefund in Run 100 systematisch bestätigt, weiterhin keine CH-Primärquelle)
- `[[sanierungsfahrplan-etappierung-gebaeudehuelle]]` — Sanierungsfahrplan/Etappierung der Gebäudehülle: Etappieren ist erlaubt, entscheidend ist ein vorab erarbeitetes Gesamtkonzept (GEAK Plus); Faustregel «Hülle vor Heizung» (EnergieSchweiz) vermeidet überdimensionierte Heizung + Wärmebrücken an nachträglichen Anschlüssen; Förder-Fallstrick: 90-%-Bonusschwelle ZH/SZ für die Gesamtsanierung muss von der ersten Etappe an mitgeplant werden, nachträgliches «Aufstocken» funktioniert förderrechtlich nicht (F139) · **established** (Run 100: Verbands-Primärquelle «Königsweg e+», Gebäudehülle Schweiz, bestätigt die 3-Etappen-Folge wörtlich)
- `[[sia-386-bacs-gebaeudeautomation]]` — BACS-Effizienzklassen A-D der Gebäudeautomation: aktuell gültig SIA 386.111:2022 (nicht das veraltete «386.110»), keine generelle CH-Klassenpflicht, aber MuKEn-2025-Monitoringpflicht Art. 1.23 (nicht «D.1.23») ab 2'000 m² EBF, sieben Überwachungsfunktionen a-g (Formular EN-141 ZH) + Betriebsoptimierungspflicht ab 200'000 kWh/Jahr, Minergie verlangt explizit KEINE Gebäudeautomation (F153) · **established** (Run 105 neu, Run 106 auf established gehoben inkl. Normidentitäts-Korrektur, 24.08.2026 Art.-1.23-Wortlaut am EnDK-Original-PDF verifiziert)
- `[[erdsonden-regeneration-sondenfeld-dimensionierung]]` — Sondenfeld-Dimensionierung/Regeneration bei Erdwärmesonden: passiv (Freecooling)/aktiv (Solarthermie/reversible WP/PVT) Regenerationssystematik, W/m-Entzugsleistungs-Faustwerte je Untergrund, 6-10 m Sondenabstand im Feld vs. 17-73 m Feld-zu-Feld; geothermischer Wärmestrom CH ≈60 mW/m², COP Erdreich 4,6 vs. Aussenluft 3,5, MFH-Beispiel 40 % Regeneration → 6 °C statt −1,25 °C nach 50 Jahren (F152); ergänzt `[[erdwaermesonden-mehrfachfelder-regeneration-zh-sz]]` als Schwesterdestillat · **established** (Run 105 neu, Run 106 auf established gehoben)
- `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` — WPSM-Zertifikat (Wärmepumpen-System-Modul): ≤15 kW Pflicht für ZH/SZ-Förderung, CHF 350 + MWST, Trägerschaft suissetec/FWS/GKS/SWKI/EnergieSchweiz, prüft ganze Anlage inkl. Wärmeabgabesystem; schliesst die Bauherren-Kernfrage «reichen meine alten Heizkörper?» — Original-Pflichtenheft belegt Verbrauchshistorie-Rückrechnung statt Raum-Heizlastberechnung im Sanierungsfall, hydraulischer Abgleich nach SWKI BT-102-01 Pflicht vor Inbetriebnahme, WPSM-WP radiatorentauglich bis 55/60 °C bei −7 °C (F154) · **established** (Run 106 neu, Run 107 auf established gehoben, ergänzt `[[foerderprogramm-energie-zh-2026]]`/`[[foerderprogramm-energie-sz-2026]]`)

**Offene Themenartikel-Kandidaten (Backlog, bereinigt Run 101 — 2026-07-25):** konkrete
Lignum-Konstruktionsdetails + gemessene K_F-/Bauteilwerte Holzbau (LIT-Doku, kostenpflichtig),
Massivbau-Bauteildatenblatt mit vollem Schichtplan (Dämmung+Putz in EINEM Dokument, bauteilkatalog.ch
GWP-Spalte weiterhin hinter PRO-Abo — die m²-Rohmasse-Werte aus Run 93 sind eine Näherung, kein
vollständiger Wandaufbau).
**Erledigt und aus dem Backlog entfernt:** eigener Schadstoff-Themenartikel (Run 89 →
`[[gebaeudeschadstoffe]]`), Klassengrenzen A–G Fenster-Energieetikette (Run 76, established),
GEAK-Klassengrenzen kWh/m²·a (Run 87, T7, established — Ergebnis: GEAK klassiert relativ, keine
fixen kWh/m²-Grenzen), CHF-Kosten Blower-Door-Test CH (Run 87, T5, emerging), SZ-Denkmalpflege-
beitrags-Feinschliff (Run 87, T4, established), kg-CO₂-Bauteilwerte Holzbau (Run 92 →
`[[kbob-bauteilkatalog-co2-je-aufbau]]`, established, Lignumdata 25-34 kg CO2-eq/m² Aussenwand),
eigener Fenster-Zielkonflikt-Artikel A5 (Run 92 → `[[fenster-uw-g-wert-zielkonflikt]]`),
numerische Glas-g-Werte je Himmelsrichtung (Run 93 → primärquellenbestätigter Negativbefund:
orientierungsunabhängig, `[[glas-g-wert-verglasungstypen-ch]]`), VKF «Gefährliche Stoffe»
Ziff. 3.5.3 selbst (Run 93 → beschafft, betrifft Batteriespeicher NICHT,
`[[vkf-richtlinie-gefaehrliche-stoffe]]`), GVZ-PDF Photovoltaik-Doku (Run 93 → beschafft,
Feuerwehrformular, `[[gvz-photovoltaik-melde-versicherungspflicht]]`), VKF-Lithium-Ionen-Infoblatt
Batteriespeicher-Mengenschwellen (bereits in Run 94 beschafft → `[[vkf-lithium-batteriespeicher-brandschutz]]`,
HL I/II/III-Tabelle 15/100 kWh; dieser Backlog-Eintrag war seit Run 94 veraltet stehen geblieben —
in Run 101 durch einen Recherche-Agenten entdeckt und hier bereinigt), SNR 464022 Ausführungsdetails
Blitzschutzklassen (ebenfalls bereits in Run 94 bearbeitet → `[[snr-464022-blitzschutz-ausfuehrung]]`;
Geltungsbereich/Erder-Tabelle/PV-Integrationspflicht frei verfügbar, die eigentlichen Klassen I-IV
bleiben bestätigter Negativbefund — nur käuflich bei Electrosuisse, auch in der 2024er-Nachfolgenorm
SN 414022 kein freier Auszug gefunden).

**Run 104 (25.07.2026):** WP-Lärm-Vollzugshilfe um SZ-Verfahrensmatrix ergänzt (AfU-Wegleitung
29.10.2025, established), sommerlicher Wärmeschutz um SIA-380/2-vs-382/1-Normwechsel ergänzt
(emerging, Figur-13-Dachflächenfenster bleibt Negativbefund), neues Destillat
`[[vdi-3807-2-energiekennwerte-krankenhaus]]` (deutsche VDI-Richtlinie, emerging, ergänzt
`[[energie-performance-gap-gesundheitsbau]]`), Smart-Meter-Destillat um BVGer-Urteil A-484/2024
vom 20.06.2025 auf established gehoben. ⚠ Nebenbefund fuer den `normen`-Loop: KB `normen`
(`wissen/normen/destillate/sia-382-1-2014.md`) fuehrt SIA 382/1:2014 noch als aktuell/established,
obwohl seit 01.02.2025 durch SIA 382/1:2025 ersetzt — Korrektur dort ausserhalb des Scopes dieses
Energie-Laufs.

**Run 105 (25.07.2026, drei parallele Rechercheagenten, PDF-Inventar weiterhin erschöpft seit
Run 65):** `[[waermepumpe-laerm-nachmessung-kostenfolge]]` (neu, emerging) vertieft die seit Run
103/104 offene Kostenfolge einer WP-Lärm-Nachmessung — amtliche WP-spezifische Regel weiterhin
nicht auffindbar, aber Verursacherprinzip (Art. 2 USG) + Gebührenermächtigung (Art. 48 USG) +
SZ-Gebührenposten primärquellenbelegt, Kostenverteilungslogik als eigene Ableitung markiert;
Wiki-Artikel `[[waermepumpen-laermschutz]]` entsprechend gewachsen. Neues Themenfeld
`[[sia-386-bacs-gebaeudeautomation]]` (Gebäudeautomations-Effizienzklassen A-D, emerging — keine
generelle CH-Klassenpflicht gefunden, aber Monitoring-Pflicht ab 2'000 m² EBF/EN-141 und
Betriebsoptimierungspflicht ab 200'000 kWh/Jahr primärquellennah). `[[erdsonden-regeneration-sondenfeld-dimensionierung]]`
ergänzt das bestehende Destillat `[[erdwaermesonden-mehrfachfelder-regeneration-zh-sz]]`
(23.07.2026) um Faustwerte zur Sondenfeld-Dimensionierung (6-10 m Sondenabstand im Feld, W/m-
Entzugsleistung je Untergrund) und die passiv/aktiv-Regenerationssystematik — bewusst als
Schwesterdestillat mit klarer Abgrenzung angelegt, nicht als Duplikat.

**Run 106 (25.07.2026, drei parallele Rechercheagenten, gezielte Nachverifikation der Run-105-
Lücken statt neuer Themenwahl):** `[[sia-386-bacs-gebaeudeautomation]]` von `emerging` auf
**established** gehoben — wichtige Korrektur: die Bezeichnung «SIA 386.110» war die 2017/2022
abgelöste Vorgängerausgabe, aktuell gültig ist **SIA 386.111:2022**; MuKEn-2025-Monitoringpflicht
(Art. D.1.23, ab 2'000 m² EBF) und der Negativbefund «kein Minergie-Automations-Bonus» jetzt über
die offizielle Minergie-Vergleichstabelle primärnah belegt, FAQ **F153** neu.
`[[erdsonden-regeneration-sondenfeld-dimensionierung]]` ebenfalls von `emerging` auf **established**
gehoben — beide zuvor blockierten Quellen (aeesuisse-Faktenblatt via Wayback-Machine, AWEL-
Planungshilfe 2010 entgegen Ersteinschätzung kein Bild-PDF) jetzt im Volltext gelesen, FAQ F152
geschärft. Neues Themenfeld `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` (emerging) schliesst
eine bisher unbeantwortete Kernfrage («reichen meine alten Heizkörper für eine Wärmepumpe?») und
erklärt das WPSM-Zertifikat, das in den bestehenden ZH/SZ-Förderdestillaten bislang nur als
Stichwort stand, FAQ **F154** neu. Wiki-Artikel `[[heizleistung-und-waermeerzeuger]]` entsprechend
ergänzt.

**Run 107 (25.07.2026, ein Rechercheagent + direkte Redaktionsarbeit):** PDF-Inventar weiterhin
erschöpft seit Run 65; statt neuer Themenwahl gezielt zwei Lücken geschlossen, die eine echte
Qualitätswirkung haben. (1) `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` von `emerging`
auf **established** gehoben — das WPSM-Original-Pflichtenheft (25.05.2020) und der zuvor technisch
gescheiterte BFE-Schlussbericht (2018) wurden vollständig gelesen und beantworten den genauen
Prüfschritt für die Heizkörper-Eignung im Sanierungsfall; eine unbelegte deutsche JAZ-Faustregel
wurde durch eine CH-eigene Näherung ersetzt und eine unbelegte «FWS-Modul-Pflicht ab 2027»-Behauptung
am Rohtext widerlegt und gestrichen — beides Beispiele für die in dieser KB verbindliche
Primärquellen-Disziplin. (2) Der seit Run 88 offene Ueberschneidungs-Zwilling
`[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` wurde Zeile für Zeile verglichen; der Merge ist am 2026-07-26 auf Freigabe Raphaels
AUSGEFUEHRT (Zwilling `sia-2024-nutzungsdaten-gesundheitsbau` in den Zielartikel eingearbeitet und
geloescht, alle Backlinks umgebogen). **Kein neues
Themenfeld gewählt** — der Lauf bestätigt damit erneut die in Run 105/106 begonnene Beobachtung:
die KB ist mit 170 Destillaten/154 FAQ so weit erschlossen, dass Verifikations-/Qualitätsarbeit
(Primärquellen-Nachlese, Duplikat-Bereinigung) ergiebiger ist als die Suche nach neuen
Themenkandidaten. Siehe CHANGELOG und `QUESTIONS.md` für die volle Priorität-Liste an Raphael.

**Run 108 (25.07.2026, drei parallele Rechercheagenten, gezielte Primärquellen-Nachverifikation
statt neuer Themenwahl — vierter Lauf in Folge mit dieser Ausrichtung):** PDF-Inventar weiterhin
erschöpft seit Run 65. Drei konkrete, in `QUESTIONS.md` bereits benannte Lücken bei bestehenden
`emerging`-Destillaten primärquellennah geschlossen. (1) `[[steuerabzuege-energetische-sanierung-ch]]`
— exakter SZ-Steuerparagraph **§ 32 Abs. 2 lit. a StG SZ** am amtlichen Gesetzestext gefunden und
wortgetreu zitiert (deckungsgleich mit Bund/ZH); Status bleibt `emerging` (andere Lücken bestehen
fort), FAQ F76 geschärft. (2) `[[geak-kosten-efh-mfh]]` von `emerging` auf **established** gehoben —
drei von der bisherigen Einzelquelle unabhängige Marktquellen (Göldi Energie Kt. Bern mit eigener
Preisliste, energielukas.ch, rundumenergie.ch) bestätigen dieselbe Grössenordnung und liefern
erstmals eine MFH-GEAK-Plus-Zahl, FAQ F36-Kontext geschärft. (3) `[[netto-null-klimaziele-zh-sz]]`
von `emerging` auf **established** gehoben — alle drei offenen Punkte (Wortlaut Art. 102a KV-ZH,
exaktes Datum Stadtzürcher Volksabstimmung 15.5.2022/74.9 % Ja, kEnG/kEnV-SZ-Volltextprüfung ohne
abweichendes Zieljahr) primärquellenverifiziert geschlossen, FAQ F81 geschärft. **Kein neues
Themenfeld gewählt** — bestätigt die Sättigungsdiagnose ein viertes Mal in Folge (Run 105-108).
Destillate-Stand: 170 (zwei Status-Upgrades, kein neues Destillat). FAQ-Stand unverändert: 154.

**Run 109 (25.07.2026, Werkzeug-Durchbruch statt neuer Themenwahl):** Die frühere WebFetch-
Blockade auf dem SIA-Harmonisierungsbericht (cms.sia.ch/de/api/getMedia/940, seit Run 76 als
«PDF nicht textextrahierbar» dokumentiert) wurde durchbrochen — curl-Download + Read-PDF-Tool
statt WebFetch liest das 44-seitige Dokument vollständig. Neues Destillat
`[[sia-harmonisierung-standardwerte-gebaeudekategorien-2019]]`: amtliche SIA-380/1-
Gebäudekategorien-Definitionen (Tabelle 1) im Wortlaut, Erklärung der Unterkategorie-Codes
I.1/I.2/IV.1/IV.2/V.1/V.2/VIII.1/VIII.2 (tauchten bisher unerklärt in SIA-2024-Destillaten auf),
und der Befund, dass der 2019 im Bericht selbst gesetzte Terminplan (Abschluss aller Phasen bis
31.12.2024) verstrichen ist, ohne dass eine neue SIA-380/1-Ausgabe erschienen ist. Schliesst je
einen offenen Punkt in zwei bestehenden Destillaten: `[[sia-380-1-aktualitaets-check-2026]]`
(`emerging` → **established**) und `[[rrb-2025-1082-klimaanlagen-bewilligungspraxis-zh]]`
(Gebäudekategorien-Definition). FAQ F60 geschärft. Destillate-Stand: **171** (ein neues
Destillat, zwei Status-Upgrades). FAQ-Stand unverändert: 154. **Werkzeug-Lehre für künftige
Läufe:** «WebFetch technisch gescheitert» ist keine dauerhafte Sackgasse — curl+Read-PDF-Tool
zuerst versuchen, bevor ein Primärdokument als unlesbar gilt.

**Run 110 (2026-07-25):** Werkzeug-Lehre aus Run 109 systematisch angewendet — Swissolar
«Batteriemonitor Schweiz 2026» (44 S., bisher als «bildbasiert nicht auslesbar» archiviert) per
curl -A Mozilla + Read-PDF-Tool vollständig gelesen. Ergebnis: Preiskurve für
`[[batteriespeicher-heimspeicher-pv-ch]]` primärquellenbestätigt (bleibt established), plus vier
bisher unbekannte Rechtsänderungen seit 1.1.2026 ergänzt (Netznutzungsentgelt-Rückerstattung,
Einspeiselimitierung max. 3 %/Jahr, RPG-Bewilligungspflicht freistehender Speicher, Speicher-in-
LEG-Messkonzept) sowie Förder- und Brandschutz-Ergänzungen (BSV-2026-Zeitplan). Kein neues
Destillat, keine neue FAQ-Nummer (F38 geschärft), drei bestehende Destillate aktualisiert. Bestätigt
die Run-109-These: die Sättigung betrifft die *Themensuche*, nicht die *Werkzeugausschöpfung* —
weitere «WebFetch gescheitert»-Kandidaten (Batterie-Blitzschutz-VKF-22-15, GVZ-PV-Doku,
Vogelsang-Referat, ISOS-Bild-Scans) bleiben als Kandidaten für Run 111 offen.

## Verwandte KBs/Skills
- Skill `planungsgrundlagen` (Domaene Energie) → Bruecke `wissen/planungsgrundlagen/wiki/energie-uebersicht`
- Brandschutz bei Solar → Skill `brandschutz`; Energierecht → Skill `baurecht`

---
Status: `speculative` → `emerging` → `established`.

**Run 112 (2026-07-25):** Drei parallele Rechercheagenten. Der letzte offene curl+Read-PDF-
Kandidat aus Run 110/111 (ISOS-Bild-/JPEG2000-Scans) klärte sich als Missverständnis auf — die
eigentlichen ISOS-Primärquellen (BAK-Erläuterungen 2021, PBG-aktuell-Fachartikel zu einem realen
ZH-Präjudiz, EnergieSchweiz-Leitfaden Kap. 6) wurden erstmals gezielt gesucht, gefunden und
vollständig gelesen (technisch problemlos, keine Bild-Scans) — `[[denkmalschutz-energiesanierung-zh-sz]]`
bleibt established, um die ISOS-Kategorisierung (Erhaltungsziele A/B/C) und die PV-Bewilligungskette
bei Erhaltungsziel A erweitert, FAQ F158. Zwei weitere Agenten erschlossen nach Redundanz-Check
echte neue Themenfelder: **Körperschallisolation bei Wärmepumpen** im eigenen Gebäude (EMPA 2002,
Feder-Masse-Systematik, Zielwert SIA 181 — 28 dB(A) zwischen Nutzungseinheiten, innerhalb der
eigenen Einheit nur Empfehlung Anhang G 30/25 dB(A); Fallunterscheidung präzisiert Wissens-Chef
Run 16, 26.07.2026) → neues Destillat
`[[waermepumpe-koerperschallisolation-empa]]`, ergänzt `[[waermepumpen-laermschutz]]`, FAQ F159;
und der **Grossverbraucherartikel** (Energieanalyse-/Zielvereinbarungspflicht ab 5 GWh Wärme/
0,5 GWh Strom, Art. 46 EnG + § 13a EnerG ZH + § 9 kEnG SZ), bisher nur als Randerwähnung in sechs
Destillaten gestreift, nie selbst recherchiert — besonders relevant für JANS' Healthcare-Fokus
(Pflegeheim/Spital erreicht die Schwelle oft schon ab 3'000-7'000 m² EBF) → neues Destillat
`[[grossverbraucherartikel-zielvereinbarung-zh-sz]]`, FAQ F160. Destillate-Stand: **175** (davor
173, zwei neue). FAQ-Stand: **160** (davor 157).

**Run 113 (2026-07-25, Nachtrag):** drei parallele Rechercheagenten, Redundanz-Check per grep vor
freier Themenwahl (PDF-Inventar seit Run 65 erschöpft). Kommunale Wärmeplanung ZH/SZ (Vorranggebiete
nur behördenverbindlich, keine automatische Anschlusspflicht) → `[[waermeplanung-kommunal-zh-sz]]`,
FAQ F161; Warmwasser-Wärmepumpe als eigenständiges Retrofit-Thema (COP-Median 2,84/2,6 primärbelegt,
kantonal nicht gefördert ausser befristetem EKZ-Programm) → `[[warmwasser-waermepumpe-boiler-retrofit]]`,
FAQ F162; Tiefengeothermie Schweiz (für Einzelbauprojekt in aller Regel nicht relevant, ehrlich als
Nischenthema eingeordnet) → `[[tiefengeothermie-schweiz]]`, FAQ F163. Destillate-Stand: **178**
(davor 175, drei neue). FAQ-Stand: **163** (davor 160).

**Run 114 (2026-07-25):** drei parallele `general-purpose`-Rechercheagenten, Redundanz-Check per
grep vor Themenwahl (PDF-Inventar weiterhin erschöpft seit Run 65, jeder Agent editierte
ausschliesslich sein eigenes Destillat — Kollisionsschutz). **Notstromversorgung/Netzersatzanlage
für Spital und Pflegeheim** (VKF-Brandschutzmerkblatt 2009-15de zu BSR 17-15, 21 S. vollständig +
USZ-Merkblatt v2.0 + BFE Fact-Sheet 45 + Kt.-ZH-Spitallisten-Anforderungen als Negativbefund +
BABS-Gefährdungsdossier): primär brandschutz- und elektroinstallationsrechtlich (NIN Kap. 5.6/7.10,
medizinische Gruppen 0/1/2) geregelt statt über ein eigenes Gesundheitsrecht-Kriterium, ab 70 kW
Aggregatnennleistung eigener EI-60-Technikraum — hohe Healthcare-Relevanz für JANS → neues Destillat
`[[notstromversorgung-netzersatzanlage-spital-pflegeheim-ch]]`, established, FAQ **F164** neu,
erster eigener Wiki-Artikel `[[notstromversorgung-sicherheitsstromversorgung]]`. **Rückkühlwerk/
Kühlturm** (BAG/BLV-Empfehlungen Modul 14, 17 S. amtliches Original vollständig + zh.ch
Grundwasserkühlungs-Konzession): Legionellen-/Hygiene-Kern und Grundwasserkühlungs-Konzession
established, eigenständige Baubewilligungspflicht für Rückkühlwerke selbst nur per Analogieschluss
(emerging), quantitativer COP-Vergleich Nass-/Trockenkühlung nur qualitativ (speculative) → neues
Destillat `[[ruckkuehlwerk-kuehlturm-legionellen-bewilligung-ch]]`, FAQ **F165** neu, ergänzt
`[[sommerlicher-waermeschutz]]`. **Ortsbildschutz/Kernzone ohne Denkmalschutz** (Kt.-ZH-Leitfaden
Solaranlagen Baudirektion/ARE Dezember 2022 vollständig + § 2a/§ 238 PBG ZH + SZ-RRB 912/2022 +
PBG SZ §§ 17-24/55-56/75a): bewusste Abgrenzung vom bereits etablierten ISOS-/Denkmalschutz-Destillat
— Kernzonenlage macht in Kt. ZH ALLEIN jede Solaranlage bewilligungspflichtig (§ 2a Abs. 2 BVV),
Kanton rät Gemeinden von eigenen restriktiven BZO-Klauseln ab, Kt. SZ ohne vergleichbares
Sonderregime → neues Destillat `[[ortsbildschutz-kernzone-solaranlagen-zh-sz]]`, established, FAQ
**F166** neu, ergänzt `[[pv-solar-technologien]]`. Alle drei Agenten-Destillate vor
Registerkonsolidierung auf Disjunktheit geprüft (drei neue, unabhängige Dateien, kein
Kollisionsrisiko). **Vierte Bestätigung in Folge, dass die Sättigungsdiagnose für neue
Themenfelder nicht zutrifft** (Run 111-114: je mindestens zwei bis drei echte neue Themenfelder
trotz 178+ bestehender Destillate) — Redundanz-Check-per-grep-vor-Themenwahl bleibt der
belastbarste Weg. Destillate-Stand: **181** (davor 178, drei neue). FAQ-Stand: **166** (davor 163).

**Run 115 (2026-07-26):** zwei parallele Rechercheagenten, Healthcare-Prozessenergie-Vertiefung.
Reinraum-/OP-Klimatisierung (SWKI VA105-01, USZ-Baurichtlinie 244/245, Swissnoso-Metaanalyse 2018
zweifelt TAV-Lüftungsnutzen an) vertieft das Run-98-Destillat, bidirektional verlinkt statt Merge
→ `[[reinraum-op-klimatisierung-gesundheitsbau-ch]]`, FAQ F136 geschärft, erster eigener
Wiki-Artikel `[[reinraum-op-klimatisierung]]`. Sterilisationsenergie/Medizintechnik-Prozessenergie
(SGSV/Swissmedic-Leitlinie 2023, USZ-Klimaklassifikation) — echte Lücke, ehrlicher Negativbefund
zur Energiequantifizierung → `[[sterilisationsenergie-medizintechnik-prozessenergie-ch]]`, FAQ
**F167** neu. Destillate-Stand: **183** (zwei neue). FAQ-Stand: **167**.

**Run 116 (2026-07-27):** vier parallele Rechercheagenten, Schwerpunkt Abwärme/Prozessenergie.
Serverraum/Rechenzentrum-Kühlung (§ 30a BBV I ZH + MuKEn 2025 Art. 1.18, adversarial korrigierter
Agenten-Negativbefund — ZH war Pionier drei Jahre vor der MuKEn) → established für den Rechtsteil,
`[[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]]`, FAQ F168. Abwasserwärmenutzung
Kanalisation ZH+SZ (vorher null KB-Treffer, AWEL-Planungshilfe 2025 vollständig) →
`[[abwasserwaermenutzung-kanalisation-zh-sz]]`, FAQ F169. Grossküchen-Lüftung/Abluft-WRG
(Kochstellenabluft ETA 3 → Rotoren ausgeschlossen) → `[[grosskuechen-lueftung-abluft-wrg-ch]]`,
FAQ F170. Wäscherei-Prozessenergie Pflegeheim/Spital (zwei Drittel im Trocknen, nicht im Waschen)
→ `[[waescherei-prozessenergie-pflegeheim-spital-ch]]`, FAQ F171. Neuer Wiki-Themenartikel
(29.) `[[abwaermenutzung-gebaeude]]` fasst alle vier zusammen. Destillate-Stand: **186** (vier
neue, in diesem Lauf nachgezählt/korrigiert). FAQ-Stand: **171**.

**Run 117 (2026-07-27):** sechs parallele Rechercheagenten, Fokus gezielter SZ-Volltextabgleich
(Priorität aus Run 116) + drei neue Themenfelder. **SZ-Abwärme-Bereitstellungspflicht** (kEnG/kEnV
SZ im Volltext durchsucht) — Negativbefund jetzt primärquellenfest bestätigt, kein Pendant zu
§ 30a Abs. 2 BBV I → `[[abwaerme-bereitstellungspflicht-sz]]`, FAQ F172. **SZ-Abwasserwärme-
Bewilligung** (vier Erlasse kEnG/kEnV/EGzGSchG/WRG im Volltext) — established, kein
Bewilligungsregime, einziger verwandter Tatbestand (WRG-Konzessionspflicht) erfasst nur
öffentliche Gewässer, nicht Kanalisation → `[[abwasserwaerme-bewilligung-sz-vertiefung]]`,
FAQ F173. **Energiemonitoring/Submetering Grossverbraucher** (neues Themenfeld, EN-141/§ 41a BBV I
ZH + MuKEn-2025-Verschärfung 5'000→2'000 m² EBF primärquellenbelegt) → established,
`[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`, FAQ F174. **Therapiebad/Hallenbad-
Energie im Pflegeheim** (neues Themenfeld, vorher null KB-Treffer; BFE-Hallenbad-Kennwerte
47-67 kWh/m³·a primärquellenfest, Therapiebad-Kernfrage ehrlicher Negativbefund) →
`[[therapiebad-hallenbad-energie-pflegeheim]]`, FAQ F175. **EnerGIS-Kartenwerk Stadt Zürich**
(Energieplanungsbericht 2025 + WVV 2022 im Volltext) — established, reine Informationsplattform,
zeigt NICHT die geologische Bohreignung (das leistet der separate Wärmenutzungsatlas GIS-ZH P8)
→ `[[energis-kartenwerk-stadt-zuerich]]`, FAQ F176. **Rückkühler-Flächenkonkurrenz PV +
Lärmschutz** (schliesst zwei in Run 116 offen benannte Punkte; Solarpflicht-Vollzugshilfen
BE/BL/AG + Cercle-Bruit-6.20-Rechenbeispiel) → `[[rueckkuehler-flaechenkonkurrenz-pv-laermschutz]]`,
FAQ F177, ergänzt `[[abwaermenutzung-gebaeude]]`, `[[solarpflicht-schweiz-kantone]]`,
`[[waermepumpen-laermschutz]]`. Kein neuer Wiki-Themenartikel (drei bestehende Artikel gezielt
erweitert statt neu angelegt — Budget-/Zeit-bewusste Verdichtung). PDF-Inventar weiterhin
erschöpft seit Run 65 (bestätigt, keine neuen PDFs in PL-04 Energie seit 01.07.2026). Sechste
Bestätigung in Folge (Run 111-117), dass die Sättigungsdiagnose für neue Themenfelder nicht
zutrifft. Destillate-Stand: **192** (sechs neue). FAQ-Stand: **177**. Wiki-Themenartikel:
**29** (unverändert).

## Run 118 (2026-07-28)

Sechs parallele Rechercheagenten arbeiten die komplette Prioritätenliste aus Run 117 ab (nach
Vorabprüfung: Punkt 1 mechanisch selbst erledigt, Punkt 4 bereits durch Wissens-Chef Run 18
geschlossen). **SWKI VA106-01** weiterhin nicht publiziert, aber Entwurfswerte aus Obmann-Vortrag
erschlossen → `[[swki-va106-lueftung-hallenbaeder]]`, FAQ F178. **SZ-Vollzugspraxis
Rechenzentren/Abwärme** (AfU-Wegleitungen + Baureglemente Freienbach/Wollerau vollständig
geprüft): kein Sonderregime, Rechenzentrums-Häufungsprämisse widerlegt →
`[[sz-vollzugspraxis-afu-wegleitungen-rechenzentren]]`, FAQ F179. **Rückkühler-Flächenkennwert
vertieft**: § 47b BBV I/§ 10c EnerG ZH 70/30-Regel neu belegt (präzisester amtlicher
ZH-Flächenkonkurrenzwert), kein m²/kW-Kennwert → `[[rueckkuehler-flaechenkennwert-vertiefung-ch]]`,
FAQ F180. **SIA 2068** drei Jahre nach Projektstart weiterhin nicht im SIA-Shop gelistet →
`[[sia-2068-rechenzentren-publikationsstatus]]`, FAQ F181. **Abwasserwärmepumpe JAZ/Förderung**:
kein systematischer CH-Vergleichswert, punktuelle Praxis-COP 4,0/5,7, ZH-Förderposition entfallen
→ `[[abwasserwaermepumpe-jaz-foerderung-vertiefung-zh]]`, FAQ F182. **Grossküche-Update**:
ehrlicher Negativbefund, alte Werte (2011/1992) bleiben beste Näherung →
`[[grosskueche-mahlzeit-energiekennwert-aktualisierung]]`, FAQ F183. `[[abwaermenutzung-gebaeude]]`
um Abschnitt "Run 118" erweitert. Kein neuer Wiki-Themenartikel (Budget-bewusste Verdichtung).
Siebte Bestätigung in Folge (Run 111-118), dass die Sättigungsdiagnose nicht zutrifft.
Destillate-Stand: **198** (sechs neue). FAQ-Stand: **183**. Wiki-Themenartikel: **29**
(unverändert).

## Run 119 (2026-07-29)

Sieben parallele Rechercheagenten: drei auf Carryover-Prioritäten aus Run 118 (Rabtherm-JAZ,
SWKI-VA106-01-Alternativzugang, Energierichtplan Freienbach), vier auf neu identifizierte,
per grep bestätigte Lücken (Regenwassernutzung als Brauchwasser, Eisspeicher-Wärmepumpe,
Seewasser-Wärmenutzung/Aquathermie, graue Energie Holzbau-vs-Massivbau). **PDF-Inventar PL-04**
erneut vollständig geprüft, weiterhin erschöpft seit Run 65. **Neuer Befund:** der heute von
Normen-Run 36 gemeldete PL-02-Cross-KB-Fund (134 PDF Minergie/eco-bau) liess sich wegen einer
OneDrive-Zugriffsblockade (`EDEADLK` auf allen Stichproben) nicht öffnen — dokumentiert in
`wiki/QUESTIONS.md`, höchste Priorität für den nächsten Lauf. `[[rabtherm-abwasserwaerme-jaz-projekte]]`
erweitert die JAZ-Bandbreite auf 4,0-7,0 über fünf reale Anlagen. `[[swki-va106-vernehmlassung-zugangsversuch]]`
bestätigt einen vierten Negativbefund. `[[energierichtplan-freienbach-econcept]]`: Original nicht
auffindbar, aber aktuelle Ersatzquelle (Energieträgerkarte 2025) vollständig ausgewertet.
`[[regenwassernutzung-brauchwasser-trinkwasserersatz-ch]]` (established Normteil, FAQ F186),
`[[eisspeicher-waermepumpe-latentwaermespeicher]]` (FAQ F187), `[[seewasser-waermenutzung-aquathermie-zh-sz]]`
(FAQ F188, neues Themenfeld), `[[graue-energie-holzbau-vs-massivbau-vergleich-ch]]` (established,
FAQ F189). Drei bestehende Wiki-Artikel erweitert (`heizleistung-und-waermeerzeuger`,
`regenwasserbewirtschaftung-versickerung-zh`, `graue-energie`); kein neuer Wiki-Themenartikel
(Budget-bewusste Verdichtung, Seewasser als Kandidat vorgemerkt). Achte Bestätigung in Folge
(Run 111-119), dass die Sättigungsdiagnose nicht zutrifft. Destillate-Stand: **205** (sieben
neue). FAQ-Stand: **189**. Wiki-Themenartikel: **29** (unverändert, drei erweitert).

## Run 120 (2026-07-31)

Sieben parallele `general-purpose`-Rechercheagenten, jeder mit genau einer neuen Destillat-Datei
(Kollisionsschutz), Registerkonsolidierung im Hauptmodell. **PL-02-Zugangsblockade unabhängig
reconfirmiert:** eigener Test (Read-Tool, `file`, `pdftotext`) auf
`PL - 02_Recht_Norm/06_Richtlinien/Minergie/` liefert weiterhin `EDEADLK`/„Resource deadlock
avoided" — derselbe Befund wie Run 119, `brctl` (nur iCloud) ist kein Fallback für OneDrive.
Sechs von sieben Themen echte neue Lücken (Redundanz-Check per grep bestätigt), ein Thema
(Hochtemperatur-WP) sinnvoll auf einen unbelegten Teilaspekt pivotiert, da die WPSM-Grundfrage
bereits abgedeckt war. `[[etappierte-energetische-sanierung-zh-sz]]` (established, FAQ F192) ·
`[[kaeltemittel-r744-co2-waermepumpen-hochtemperatur-ch]]` (established/emerging, FAQ F191) ·
`[[hochtemperatur-waermepumpen-altbausanierung-ohne-heizkoerpertausch]]` (emerging, FAQ F193) ·
`[[fernkaelte-district-cooling-grossbauten-zh]]` (emerging, FAQ F194) ·
`[[minergie-areal-zertifizierung]]` (established, FAQ F190) ·
`[[waermepumpen-sperrzeiten-netzbetreiber-zh-sz-vertiefung]]` (established/speculative gemischt,
FAQ F195) · `[[aufzug-energieeffizienz-vdi4707]]` (emerging, FAQ F196). Neuer Wiki-Themenartikel
`[[umweltwaerme-gewaesser]]` (Verdichtung, Carryover Run 119) konsolidiert See/Abwasser/
Grundwasser aus vier bestehenden Destillaten. Verifikationsstufe: leichter Spot-Check statt
vollem Adversarial-Panel (Budget-Entscheid, siehe Report) — Minergie-Areal-Reglement-URL live
verifiziert (HTTP 200), EnerG/WDV/KEnG/KEnV-Zitate als amtliche Kantonstexte plausibel. Neunte
Bestätigung in Folge (Run 111-120), dass die Sättigungsdiagnose nicht zutrifft. Destillate-Stand:
**212** (sieben neue). FAQ-Stand: **196**. Wiki-Themenartikel: **30** (ein neuer).

## Run 121 (03.08.2026) — zweiter PDF-Korpus PL-02 erschlossen + Verifikations-Nachholung

**Der Befund des Laufs:** Die seit Run 65 gefuehrte Aussage «PDF-Inventar erschoepft» galt nur
fuer **PL - 04 Energie**. Der Ordner **PL - 02_Recht_Norm** enthaelt **1'171 PDF, davon 182
energierelevant** — ein zweiter, nie angetasteter Primaerquellen-Korpus (Minergie 79, eco-bau 55,
Stadt-ZH-AHB 38 inkl. der neun Gebaeudetechnik-Richtlinien GT_RL1-RL9, Energierecht ZH 5).
Messfalle dokumentiert: die Dateien liegen als OneDrive-Platzhalter, `du -h` meldet 0 B —
massgeblich ist `stat -f %z` plus Flag `dataless`. Inventar: `training/pdf-inventar.md`, Nachtrag.

**Neun neue Destillate aus zehn PDF** (acht parallele Destillier-Agenten):
`[[bauteilekatalog-sanierungen]]` (FAQ F200) · `[[waermebrueckenkatalog-minergie-pl02]]` ·
`[[enfk-fensterblatt]]` (FAQ F199) · `[[untergeschosse-daemmen]]` (FAQ F197) ·
`[[minergie-innenraumklima]]` (FAQ F201) · `[[minergie-eco-gebaeudelabel]]` ·
`[[gebaeudehuellziffer-ebf-flaechendefinition]]` (FAQ F198) ·
`[[minergie-p-a-anwendungshilfe-2019]]` · `[[minergie-fragenkatalog-mfh]]`. Alle `emerging` —
der Korpus ist durchgehend aelter (2001-2019), Methodik gueltig, Zahlenwerte pruefbeduerftig.

**Neuer Themenartikel** `[[bezugsgroessen-energienachweis]]` — konsolidiert EBF, Gebaeudehuellziffer
und Daemmperimeter, die bisher nur verstreut in Einzeldestillaten vorkamen.

**Verifikations-Nachholung (Prioritaet 3 aus Run 120), volles Refuter-Panel statt Spot-Check:**
drei unabhaengige Pruef-Agenten mit Widerlegungsauftrag, Beurteilung im Hauptmodell.
`[[minergie-areal-zertifizierung]]` 8/8 wortgetreu bestaetigt (zwei Zaehl-/Metadatenfehler
korrigiert: «von 10 Wahlvorgaben» → 17, «37 Seiten» → 38) · `[[etappierte-energetische-sanierung-zh-sz]]`
5/7 bestaetigt, 2 mit Negativbeweis-Vorbehalt, dritte Vorbedingung «nur geringfuegige Umnutzungen»
ergaenzt · `[[kaeltemittel-r744-co2-waermepumpen-hochtemperatur-ch]]` A1-A6 zahlengenau am
BFE-Bericht bestaetigt · `[[waermepumpen-sperrzeiten-netzbetreiber-zh-sz-vertiefung]]` B1-B6
bestaetigt, fehlende Tarifbedingung ergaenzt (1-4 Std. nur EKZ Netz 400WP, 400F 1-3 Std.).
**Zwei Beanstandungen hielten der eigenen Gegenpruefung NICHT stand** (Rule 260729b) und wurden
verworfen statt umgesetzt — Details im Lauf-Report.

Destillate-Stand: **221** (neun neue). FAQ-Stand: **201** (F197-F201 neu). Wiki-Themenartikel:
**31** (ein neuer).

## Run 122 (03.08.2026) — Gebaeudetechnik-Richtlinien Stadt Zuerich, geschlossener Block

**Neun neue Destillate aus neun PDF** (neun parallele Destillier-Agenten, je eine eigene
Zieldatei): `[[ahb-zuerich-gt-rl1-planungsgrundlagen]]` (FAQ F205) ·
`[[ahb-zuerich-gt-rl2-systemwahl]]` (FAQ F204) · `[[ahb-zuerich-gt-rl3-heizungsanlagen]]` ·
`[[ahb-zuerich-gt-rl4-raumkuehlung]]` (FAQ F203) · `[[ahb-zuerich-gt-rl5-lueftungsanlagen]]` ·
`[[ahb-zuerich-gt-rl6-sanitaerinstallationen]]` (FAQ F202) ·
`[[ahb-zuerich-gt-rl7-elektroanlagen]]` · `[[ahb-zuerich-gt-rl8-beleuchtung]]` ·
`[[ahb-zuerich-gt-rl9-gebaeudeautomation]]` (FAQ F206). Alle neun vollstaendig gelesen
(4-7 Seiten je Dokument), alle `emerging`.

**Datums-Korrektur an Run 121:** «V21» im Dateinamen ist eine **Versions-, keine Jahresangabe** —
Version 2.1, Juli 2008 (am Titelblatt im Hauptmodell selbst verifiziert, nicht nur Agentenbefund).
Der Block ist damit 18 Jahre alt statt 5. Merkregel im `pdf-inventar.md` hinterlegt.

**Neuer Themenartikel** `[[gebaeudetechnik-pflichtenheft]]` — die erste Antwort der KB auf die
Frage, was eine Bauherrschaft **zusaetzlich zum gesetzlichen Nachweis** vorgeben sollte, damit
eine Anlage ueber 30 Jahre betreibbar bleibt: Instrumentenkette PHB / Pflichtenheft /
Projektdokumentation, Entscheidungskaskade der Systemwahl, Mess- und Nachweispflichten,
Betriebsoptimierung, Lichtsteuerung nach Raumtyp, die drei Automations-Grundsaetze — mit
ausdruecklichem Abschnitt, was **nicht** uebertragbar ist (AHB-Governance, Politikziele 2008,
ewz-Tarif, IMMO-Box).

**Erster Beleuchtungs-Primaerquellenbeleg der KB** (`[[ahb-zuerich-gt-rl8-beleuchtung]]`) — ein
eigener Wiki-Themenartikel Beleuchtung fehlt weiterhin, weil die Quelle keine Lux- und
W/m²-Werte enthaelt (die erwaehnte EN-12464-1-Uebersichtstabelle ist nicht Teil des Dokuments).

⚠ **Nachtrag 24.08.2026:** Die Lux-Luecke ist geschlossen — `[[ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025]]`
(aktuelles, datiertes AHB-Merkblatt, August 2025). Ausserdem gefunden: das gesamte
AHB-Dokumentensystem wurde neu geordnet, `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (KBOB-
Empfehlung als Basis + schlanke AHB-Ergaenzung); die hier destillierte RL1-RL9-Familie (2008)
taucht in der aktuellen Dokumentenliste (Stand 08.2025) namentlich nicht mehr auf — moegliches
Indiz fuer eine Ablösung, nicht abschliessend geprueft. Details: `wiki/QUESTIONS.md`.

⚠ **Nachtrag 31.08.2026 (Run 171):** Dritter Baustein der Beleuchtungs-Familie destilliert —
`[[ahb-merkblatt-384-beleuchtung-hallenbaeder-2024]]` (AHB M-System-Nr. 384, Oktober 2024). Es
regelt **nur** den Hallen- und Beckenbereich von Schwimmbaedern (300 lx vollflaechig ueber der
Wasserflaeche, Unterwasserleuchten Pflicht und nur laengsseitig, ≥120 lm/m3 Wasservolumen bzw.
ca. 1'100 lm/m3 im Wettkampf, ≥4 ungedimmte Schaltgruppen) und verweist fuer alle uebrigen Raeume
ausdruecklich auf die allgemeine Tabelle Nr. 376. Der Ausgabenstand ist am selben Tag gegen die
AHB-Downloadliste geprueft (keine neuere Fassung). Ein eigener Wiki-Themenartikel Beleuchtung
fehlt weiterhin; die drei Destillate 376/384/RL8 traegen den Stoff bisher allein. Neu belegt in
**F263** und **F264**. Cross-KB: EN 12464-1, EN 12193 und SLG 305 Teil 5 fehlen im Register der
KB `normen` — Bringschuld dort eingetragen (N-E171-1).

**Ehrliche Negativbefunde der Agenten** (gewuenschtes Verhalten, nicht kaschiert): RL7
Elektroanlagen liefert **keinen** Zugewinn zu PV, Submetering und Ladeinfrastruktur — diese
Themen kommen im Dokument von 2008 gar nicht vor. RL9 verweist fuer BACS-Klassen und
MuKEn-Monitoringpflicht bewusst auf `[[sia-386-bacs-gebaeudeautomation]]`, statt zu doppeln.

## Run 123 (04.08.2026) — der Beschaffungs- und Vollzugsstrang

Neun Destillate aus dem **eco-bau-/AHB-Korpus (PL-02)**, Quellen 2001-2008. Neuer Themenartikel
`[[oekologische-materialvorgaben-beschaffung]]` — er schliesst dieselbe Art Luecke wie
`[[gebaeudetechnik-pflichtenheft]]` in Run 122: Die KB war **nachweisorientiert** (U-Werte,
Heizwaermebedarf, Minergie, EVEN) und konnte nicht beantworten, **wie eine oekologische Absicht
in den Vertrag und von dort ins gebaute Objekt kommt**. Die Antwort sind vier Stationen
(Zielvereinbarung → ecoBKP → LV-Position → Devis-/Baustellenkontrolle) mit einer klar
identifizierten Bruchstelle: der Uebersetzung ins Leistungsverzeichnis.

Neue FAQ: **F208** (worauf stuetzen sich Materialvorgaben — und welche Ausgabe gilt),
**F209** (wie wird aus einer Vorgabe eine gebaute Leistung), **F210** (Geraetebeschaffung nach
15-Jahre-Gesamtkosten), **F211** (welche oekologischen Auflagen sind ueberbindbar).
Gewachsen: `[[gebaeudeschadstoffe]]` um die **gewerkspezifischen Fundstellen** (Asbest in
Elektrospeicherheizgeraeten bis 1977/1984, CV-Belaege/PVC-Flex 1970-1982) — mit ausdruecklicher
Rangfolge, dass fuer das ZH-Verfahren weiterhin der AWEL-Stand 2023 gilt.

**Der wichtigste Befund ist ein Aktualitaetsbefund:** Die destillierte Quelle ist die Ausgabe
**2008** eines Werks, das als **ecoBKP** jaehrlich fortgeschrieben wird und heute in der
**Ausgabe 2026** vorliegt. Die **Systematik** traegt, die **Materialurteile** nicht — sie wurden
auf die Methodik «Baumaterialien ecobau 2025» umgestellt. Entsprechend ist der Anschluss an die
aktuelle Ausgabe als **E-123-1** die vorderste offene Frage der KB.

## Run 128 (12.08.2026) — AHB-Korpus Energie/Gebäudetechnik und Nachhaltiges Bauen

Fünf Primärquellen des Amts für Hochbauten der Stadt Zürich destilliert, eine als textidentische
Dublette abgelegt. Zugang wie in Run 126/127 über die **M365-CLI/Graph**; der OneDrive-Mount wurde
nicht mehr versucht, weil die PL-Site unter der gemounteten Wurzel gar nicht existiert.

Neue FAQ: **F227** (ab wann viel Glas ein eigenes Planungsthema wird — Schwelle SIA 2021,
Kaltluftabfall, «Kompaktheit schlägt Glasanteil», Verantwortungslücke bei Einzelverträgen),
**F228** (Raumluft-Abnahmemessung vor Bezug — Messstrategie, ca. 500 CHF je Messpunkt, dreistufige
Reaktionslogik), **F229** (Beleuchtungsnachweis: SIA 380/4 ist tot, EN-111 auf EVEN gilt, die
Einreichliste bleibt).

Gewachsen: `[[sommerlicher-waermeschutz]]` um die **Schwellendefinition «Gebäude mit hohem
Glasanteil»**, die der KB bisher fehlte, samt Winter-Mechanismus Kaltluftabfall (ca. 7 % Mehrbedarf
je °C Kompensation) · `[[gebaeudeschadstoffe]]` um die **Abnahmeseite** — der Artikel kannte den
Schadstoff-Blick bisher nur für den Bestand, jetzt auch für die fertige Raumluft ·
`[[energienachweis-zh]]` um einen ausdrücklichen **Totverweis-Abschnitt zu EN-111**, damit
Bürovorlagen mit SIA-380/4-Zeile nicht unbemerkt weiterlaufen.

**Der methodisch wichtigste Befund ist eine neue Dublettenfalle:** Zwei Dateien mit
**verschiedener Grösse und verschiedenem SHA-256** trugen **zeichengleichen Text**. Nach der
bisherigen Methode (Grössenvergleich, Run 123) wären sie als zwei Quellen gezählt worden. Ab jetzt
entscheidet bei ähnlichen Kandidaten ein `pdftotext`-Diff, nicht der Dateiname und nicht die Grösse.

## Run 129 (13.08.2026) — Raummodule je Raumtyp und die erste Healthcare-Quelle der KB

Fünf Primärquellen des Amts für Hochbauten der Stadt Zürich destilliert, eine sechste (Standard
Kennzeichnungssystem und Beschriftungskonzept, V 2.2 vom 01.09.2007, 24 S.) geprüft und begründet
als `[-]` abgelegt: reine Anlagenkennzeichnungs-Systematik ohne energetische Kennwerte und ohne
Bauherren-Entscheidungsrelevanz. Zugang wie in Run 126/127/128 über die **M365-CLI/Graph** —
**vierte Bestätigung in Folge**, der OneDrive-Mount wurde nicht versucht.

Neue FAQ: **F230** (Sollzustand je **Raumtyp** statt gebäudeweiter Formulierung — der
Raummodul-Ansatz, seine zeitlosen Betriebsregeln und die Warnung, dass die Zahlen von 2008 nicht
die heutige Anforderung sind), **F231** (was in einem **Pflegeheim** gebäudetechnisch anders ist —
die Nachtwache als Ausfallebene), **F232** (wie man sicherstellt, dass eine Lüftung nach dem Einbau
wirklich leistet, was versprochen wurde — die Messliste der Inbetriebsetzung).

Gewachsen: `[[gebaeudetechnik-pflichtenheft]]` um zwei Abschnitte — **Raummodule als Sollzustand je
Raumtyp** (mit dem Zahlenvergleich der beiden Module und der ausdrücklichen Gegenüberstellung
25 m³/h/Person 2008 gegen IDA 29/57/18 m³/h/Person nach SIA 382/1:2025) und **Gebäudeautomation im
Pflegebetrieb** · `[[komfortlueftung]]` um einen Abschnitt **Abnahme und Inbetriebsetzung**, der
der bisher rein kennwertorientierten Darstellung die Betriebsseite gibt.

**Zwei methodische Befunde.**

Erstens eine **neue Variante der Datierungsfalle**, im Hauptlauf am Original gegengeprüft: Beim
SiNa-Merkblatt nennt der **Fusszeilenstempel 23.11.2007**, der Redaktionsvermerk **im Fliesstext**
(Abschnitt 1.5) dagegen «Version 1.1 / Dokumentdatum: 13. Mai 2005». Der Fusszeilenstempel ist der
Datei-/Druckstempel, nicht die Ausgabe. Das Briefing des Hauptlaufs an den Agenten war falsch, der
Agent hat am Dokument korrigiert. Die Reihe lautet damit: Dateiname (Run 122) · Ablageort
(Run 124/125) · Grösse gegen Seitenzahl (Run 124) · Textextrahierbarkeit (Run 126) · Grösse als
Dublettenkriterium (Run 128) · **Fusszeilenstempel gegen Redaktionsvermerk im Fliesstext (Run 129)**.
Das Ausgabedatum steht nicht immer auf dem Titelblatt.

Zweitens: **Die Dateizeit auf dem NAS ist derzeit kein Indikator dafür, wann eine Arbeit entstand.**
Drei Destillate trugen die Änderungszeit 01:04-01:07 des 13.08. und sahen nach einem
abgebrochenen Nachtlauf aus; ihr Frontmatter weist sie als Arbeit aus Run 123 und Run 125 aus. Es
war Rückstau aus dem Sync-Stillstand, der erst jetzt auf dem NAS landete. **Massgeblich ist das
Frontmatter, nicht die mtime** — sonst wird ein Lauf doppelt gezählt oder eine Nummer übersprungen.

## Nachtrag Run 132 (14.08.2026): Ordner 18 abgeräumt, zwei neue FAQ, F209 um die Vertragsstufe geschärft

Vier neue Destillate aus fünf Quellen (`[[ahb-checkliste-solarstromanlagen-2008]]`,
`[[topten-haushaltgeraete-liegenschaftenverwaltung]]`, `[[ahb-devis-und-baustellenkontrolle-2008]]`,
`[[ahb-bedingungen-werkleistungen-nachhaltiges-bauen]]`), zwei Link-Stub-PDF begründet verworfen.

**Neu in der FAQ.** **F233** schliesst eine Lücke, die trotz zwanzig PV-Einträgen bestand: was im
**Rohbau** für eine spätere Solaranlage vorzusehen ist (6 m² Leerplatz in der Elektroverteilung,
Rückspeiseklemmen 5 × 35 mm², zwei freie Zählerplätze, Leerrohr 100 mm, 50 kg/m² statische
Reserve). Die KB konnte bisher sagen, ob sich PV lohnt, aber nicht, was man beim Bauen dafür
lässt. **F234** beantwortet die Baurechtsland-Frage für die Stadt Zürich und stützt sich auf einen
belegten Fassungsvergleich.

**Der inhaltlich interessanteste Befund** ist dieser Vergleich: Zwischen der Fassung Mai 2006 und
dem Stadtratsbeschluss Nr. 1094 vom 17.09.2008 wurde der geforderte Anteil erneuerbarer Energie am
Wärmebedarf von Neubauten **von 25 % auf 40 %** angehoben und der Neubaustandard von MINERGIE auf
MINERGIE-ECO verschoben — in gut zwei Jahren. Das ist der Grund, warum F234 bewusst nicht mit
einer Zahl antwortet, sondern mit dem Verweis auf den Baurechtsvertrag und eine Bestätigung durch
das Amt für Hochbauten.

**Geschärft statt gedoppelt.** F209 (Umsetzung ökologischer Vorgaben) beschrieb bisher zwei
Kontrollstufen, Devis und Baustelle. Dazwischen fehlte die **Vertragsstufe**: die «Bedingungen für
Werkleistungen» verpflichten die Unternehmung direkt, über Warendeklaration mit
Zustimmungsvorbehalt, einen materialscharfen Katalog und eine Kostenfolge bei Abweichung. Der
Themenartikel `[[oekologische-materialvorgaben-beschaffung]]` ist um dieselbe Stufe gewachsen.

**Zwei methodische Fallen, beide neu und beide teuer, wenn man sie nicht kennt.** Erstens: Ein
Datumsstempel gilt **nur für sein eigenes Dokument**. Run 130 hatte den Stempel des
Solarstrom-Merkblatts (25.09.2008) auf die Devis- und Baustellenkontrolle übertragen und sie
dadurch als «spätere Revision» eingestuft; tatsächlich tragen beide unverändert den Stempel
11.08.2006. Zweitens: Ein **zeilenweiser Diff misst Layout mit**. Die 106 und 87 Diff-Zeilen, auf
denen dieser Fehlschluss beruhte, stammen aus Zeilenumbrüchen, einem neuen Kopfzeilenblock und
geschlechtergerechten Formulierungen. Erst der Wort-Diff zeigte: der Sachinhalt ist wortgleich.
Die Reihe der Fallen wächst damit um **fremder Stempel** und **Zeilen- statt Wort-Diff** — sowie
um das **Link-Stub-PDF**, ein 12-kB-Dokument, das nur eine URL in einem Rahmen enthält.

## Nachtrag 2026-08-15 (Run 133, Mac Mini Nachtschicht 05:30): Ordner 18.4/18.5/18.6 abgeschlossen

Zugang via Graph-Weg (M365-CLI, Zertifikat, Drive `02_Recht_Norm`) bestätigt. Alle 10 Dateien
aus `18.4 Wohlbefinden (Innenraumklima)` (7), `18.5 Boden Landschaft` (1), `18.6 Organisation` (2)
gesichtet. Zwei neue Themenartikel: `[[holzwerkstoffe-formaldehyd-innenraumklima]]` (Formaldehyd-
Grenzwerte Holzwerkstoffe, Lignatec 21/2008) und `[[dachbegruenung-gruendach]]` (BZO-Pflicht Stadt
Zürich + PV-Synergie, Stadt-ZH-Checkliste 2009) → FAQ F235/F236. Fünf Dateien mit hoher Konfidenz
als Dubletten bereits destillierter eco-flat-Quellen eingestuft (Seitenzahl-Abgleich, nicht
vollständig wort-gegengelesen — Budgetgrund, bei Zweifel nachholen). Zwei Dateien (Fachstelle-
Organisationsablauf, Verein-eco-bau-Flyer) ohne eigenständigen Bauherren-Fakt, bewusst nicht
destilliert.

**Offen bleibt in `18-Nachhaltiges Bauen`:** `18.3 …/Richtlinie_ECO-BKP_(Merkblaetter_nach_BKP).pdf`
(2,0 MB, gehört in die planmässige BKP-Merkblattwerk-Destillation) und **neu identifiziert**:
`18.4/PCB_in_Fugendichtung_(KBOB-Empfehlung_2004.4).pdf` (724'221 Bytes, 43 Seiten) — Grösse
identisch mit dem seit Run 126 als offen geführten `4.27Fugendichtungsmassen.pdf` im eco-flat-
Ordner, mit hoher Wahrscheinlichkeit dieselbe Quelle in zwei Ablagen. **Zu gross für diesen
Nachtschicht-Slot** (43 Seiten sprengen ein 20-Seiten-Read und das verbleibende Budget) — nächste
Priorität für einen dedizierten Lauf, danach der Ordner `06_Richtlinien/Minergie/` (79 PDF).

**Stand PL-02:** **77 von 182** energierelevanten PDF destilliert (75 bis Run 132, **2 in Run 133**),
**103 offen**; zusätzlich 7 in diesem Lauf geprüft und bewusst nicht einzeln destilliert (5 Dubletten
+ 2 ohne Bauherren-Fakt).

**Nachtrag 01.09.2026 (Run 172):** **F265** neu (Erkennungstest fuer die Normausgabe einer
uebernommenen Energieberechnung: 8,5 °C = abgeloeste Ausgabe SIA 380/1:2009, 9,4 °C = geltende
Ausgabe :2016), **F60** um den Erkennungs-Absatz geschaerft, **F198** von «Widerspruch, nicht
geglaettet» auf «geklaert» gesetzt. Grund: **E-121-2 geschlossen** — der seit 03.08.2026 gefuehrte
Klimareferenz-Widerspruch ist ein Scheinwiderspruch (dieselbe Groesse in zwei Normausgaben).

