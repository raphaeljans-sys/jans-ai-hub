# QUERBEZUEGE — Register der Cross-KB-Bezuege

Bekannte thematische Ueberschneidungen zwischen den KBs, mit Prueflauf, Befund und Status.
Neueste Pruefung zuoberst je Paar. Gefuehrt vom Wissens-Chef (`wissens-chef`).

## Rollen-/Fuehrungs-Matrix (wer ist fuehrend fuer WAS)

| Thema | Fuehrende KB (Wahrheit) | Zuliefernde KB (verweist dorthin) |
|---|---|---|
| Wald-/Gewaesserabstand, Baulinien, Zonenmasse, Verfahren (Recht) | **baurecht** | planungsgrundlagen (Geodatum/Beschaffung) |
| Geodatum/OEREB/Kataster/Vektorlinien | **planungsgrundlagen** | baurecht (verweist fuer Bezug) |
| Norm-Fundstellen SIA/VKF/VSS (Ziffer/Ausgabe/Kennwert) | **normen** | baurecht (nennt Norm, verweist auf Destillat) |
| Energie-Fachphysik / U-Werte / Grenzwerte / PV-Technologie | **energie** | planungsgrundlagen/energie-* |
| Energienachweis-Verfahren / EVEN / Formulare / Private Kontrolle | **planungsgrundlagen** (energie-*) | energie (verweist fuer Verfahren) |
| Grobkennwerte CHF/m3 GV (BKP 1-5, Wohnbau) | **grobkosten** | immobilienbewertung/realwert |
| Wuest-Ausbaustandard-Tabelle CHF/m2 HNF (Immobilien entwickeln) | **immobilienbewertung** | grobkosten (verweist) |
| Wuest-Kostenbenchmark-Referenz (Median/Quantile) | **skills/kostenschaetzung/referenzen** | grobkosten + immobilienbewertung |
| Spec-Methode (formales Geruest) | **spec** | twin (verweist als Evidenz) |
| Raphaels Arbeitsweise/Denken (Verhaltensevidenz) | **twin** | spec (verweist als Evidenz) |
| Zonenmasse/Nutzungsziffern (AZ/BMZ/UEZ/GrFZ) inkl. **Daemmungs-Kappung** | **baurecht** | energie (MuKEn-Modul 11 verweist dorthin) |
| MuKEn-Musterrecht (EnDK-Module, noch nicht kantonal umgesetzt) | **energie** | baurecht (verweist fuer den Muster-Stand) |

> **Wiederkehrendes Muster (3. Fundort, Run 6):** VKF-Wortlaut wird in `planungsgrundlagen`-Artikeln
> materiell fortgeschrieben statt aus `normen` gezogen — bisher `brandschutz-pl03-wegweiser` (Run 3),
> dessen §1a (Run 4), neu `energie-pv-eignung-typenwahl` §6b (Run 6). Jedes Mal nachtraeglich verlinkt;
> die Trims bleiben offen. **Strukturbefund fuer den Synergie-Orchestrator:** die Rule `normen-referenz`
> greift beim SCHREIBEN der planungsgrundlagen-Artikel nicht — sie wird erst im Cross-KB-Lauf
> nachtraeglich durchgesetzt. Analoges Muster bei `energie` (Run 6: SIA-180-Fundstellen aus
> Vollzugshilfen rekonstruiert, obwohl das Norm-Destillat 3 Tage aelter war).

## Gepruefte Paare

### baurecht ↔ planungsgrundlagen ↔ energie (WWG/HWSchV → WsG/WsV) — geprueft 2026-07-17 (Run 7)
- **Befund:** Die Run-5-Bring-Schuld ist einloesbar geworden — baurecht hat heute (Buch-Run 48) die
  Aufhebung von **HWSchV UND WWG per 1.6.2026** (OS 81, 144 → WsG LS 724.1 + WsV LS 724.11) amtlich
  belegt (`baurecht/raw/260717_amtlich_zh_hwschv.md`, Konkordanztabelle alt/neu). Drei
  planungsgrundlagen-Artikel hinkten hinterher. Vier Befunde, alle **CONFIRMED** (an den Zitatstellen
  + der amtlichen raw-Quelle verifiziert, baurecht als fuehrend bestaetigt): (1) `kartenportale-
  naturgefahren-objektschutz` behauptete «§ 22 WWG unveraendert in Kraft» (positive Falschaussage);
  (2) `recht-norm-abstandsvorschriften-wald-gewaesser` fuehrte **§ 15d** (alte Nummer vor Nachtrag 95,
  richtig § 15k) + HWSchV/WWG ohne Flag; das eingedolt-«11 m» ist als kantonales Mass **entfallen**
  (§ 24 WsV nur Verringerung); (3) selber Artikel knuepfte die 15 m stehender Gewaesser faelschlich an
  die 0,5-ha-Schwelle (die ist nur Verzichtsgrund Art. 41b Abs. 4 lit. b, kein Formel-Kriterium —
  baurecht Modell-D-verifiziert); (4) `recht-norm-regenwasser-gewaesserraum-zh` hatte den WWG-Flag
  (Run 5), aber HWSchV/«HWV» ungeflaggt.
- **Aktion:** alle vier autonom korrigiert (Aufhebungs-Flags, § 15d→§ 15k, eingedolt-Sachlage,
  0,5-ha-Korrektur, HWV→HWSchV, Verfahren 2/3 «bis 31.5.2026», Verweis auf baurecht als fuehrend).
- **Offen (nicht autonom):** (a) **WsG-/WsV-Nachfolge-§ fuer § 22 WWG** (Gefahrenbereiche) am Volltext
  verifizieren — raw deckt nur die HWSchV-§§, nicht § 22 WWG (Bring-Schuld); (b) **Doppelspur
  GSchV-Bemessungstabelle** (baurecht `abstaende-und-hoehen` + planungsgrundlagen `abstandsvorschriften`
  fuehren dieselbe Art.-41a/41b-Tabelle materiell) — Trim auf reinen Verweis = Umstrukturierung, Rueckfrage.
  Ergaenzt den offenen §-Mapping-Punkt aus Run 5 (jetzt via baurecht-Konkordanztabelle groesstenteils
  vorhanden). **Status: bereinigt + verlinkt; 2 offene Bring-Schulden.**

### normen ↔ energie (SIA 380/1:2016) — geprueft 2026-07-17 (Run 7)
- **Befund:** 0 Zahlen-Widerspruch. **Fuehrungs-Anomalie:** die fuehrende KB `normen` legte heute
  (Run 15) das Destillat `sia-380-1-2016` an — aber nur als **Vorschau/Auszug (6/60 S., `speculative`)**
  und fuehrt Grenz-/U-Werte als **P1-Blocker («komplett unerschlossen»)**, obwohl `energie` dieselben
  Werte via Vollzugshilfe **EnFK EN-102** (`enfk-en-102-waermeschutz-2018`, `established`, am Original
  gegengeprueft) laengst belegt. energie `sia-380-1-aktualitaets-check-2026` beantwortet zudem die von
  normen offen gelassene Ausgabe-/Korrigenda-Frage (2016 + C1/2019 aktuell). Beidseitig fehlende
  Querlinks. **Nebenbefund (autonom erledigt):** der von energie gemeldete Transkriptionsfehler in
  enfk-en-102 Tab. 5 war bereits behoben, wurde aber im `muken`-Destillat noch als «offen» gefuehrt.
- **Aktion:** bidirektionale «Querbezug»-Bloecke (energie-aktualitaets-check → normen als Fundstelle;
  normen-Destillat → energie/EnFK-EN-102 als Interims-Wertquelle, P1-Blocker relativiert auf die
  zitierfaehige Norm-Fundstelle); Stale-Hinweis im `muken`-Destillat auf «ERLEDIGT 17.07.» umgeschrieben.
- **Offen (nicht autonom, Bring-Schuld):** SIA 380/1:2016 Volltext (SIA-Abo) fuer die zitierfaehige
  Fundstelle; Korrigenda C1:2019-Inhalt am Volltext lesen. **Status: verlinkt/bereinigt; 2 Bring-Schulden.**

### normen ↔ baurecht (SIA-Vertrags-/Honorarnormen) — geprueft 2026-07-17 (Run 7, rotierend/leicht)
- **Befund:** **Keine Ueberschneidung — legitimes Null-Ergebnis.** Die heute in normen destillierte
  SIA-Vertrags-/Honorarfamilie (SIA 102/103/105/108, 118, 1001-*, 1023, 100, KBOB-Honorar) hat in
  baurecht **null Praesenz** (gezielte greps: 0 Treffer «SIA 2009», «Honorarempfehlung», «KBOB»,
  «16-15», «SIA 102/118»). Die zwei normen-Richtigstellungen (Honorarempfehlung 2009 = KBOB nicht SIA;
  VKF-BRL 16-15 = Ausgabe 2015/Fassung 2017) koennen baurecht daher nicht widersprechen. Einzige
  Beruehrung: **SIA 416** (Flaechendefinition), inhaltlich sauber getrennt (baurecht = PBG-Mass,
  normen = SIA-416-Flaeche) und ueberwiegend verlinkt.
- **Aktion:** keine substanzielle noetig. **Kuer (offen, niedrig):** ein fehlender SIA-416-Querlink in
  `baurecht/wiki/abstaende-und-hoehen.md:338` (Klein-/Anbaute «nur SIA-416-Nebennutzflaechen»). **Status:
  kein Befund; 1 optionaler Querlink offen.**

### energie ↔ normen ↔ planungsgrundlagen (SIA 180 sommerlicher Waermeschutz) — geprueft 2026-07-16 (Run 6)
- **Befund:** Am neuen energie-Destillat `sommerlicher-waermeschutz-sia180-nachweisverfahren` (Run 74)
  **1 echter Sachfehler + 1 unnoetige Wissensluecke**, beide durch Nicht-Nutzung der KB `normen`
  (Rule `normen-referenz`) entstanden — das Norm-Destillat `sia-180-2014` war 3 Tage aelter.
  (a) **V3-Kriterium falsch zugeschrieben:** «Nachweis ueber Uebertemperaturstunden» unter der
  Ueberschrift «Die drei Nachweisverfahren (SIA 180:2014)»; normativ gilt Ziff. 5.2.6.3/Fig. 3
  (0 h Ueberschreitung). (b) **gtot-Grenzwerte als «offener Punkt»** gefuehrt («Normtext
  kostenpflichtig, nicht eingesehen»), obwohl normen sie aus dem Original-PDF ziffern-genau fuehrt
  (Ziff. 5.2.4.1/Fig. 12). (c) EN-ZH-/EVEN-Verfahren materiell in energie, obwohl planungsgrundlagen
  fuehrend. (d) normen-REGISTER Z. 106 widersprach sich selbst (SIA 180 «1999 / vermutlich aktuell»
  vs. Tabelle C + Destillat «2014»).
- **WIDERLEGT (adversariale Verifikation):** Der zuerst gemeldete Hauptbefund «100 h / Figur 4 ist eine
  falsche SIA-180-Zuschreibung» hielt **nicht**. Der Verifier beschaffte die amtlichen Primaerquellen:
  die **Stadt-ZH-Wegleitung Ziff. 4.1.1** schreibt Fig. 4 ausdruecklich abweichend vor («Die Beurteilung
  … erfolgt immer … nach Figur 4 (Ziffer 2.3.2) … maximal 100 Stunden … 400 Stunden»), die
  **HBA-Richtlinie** deckt die 400 h ueber SIA 382/1. Zahlen korrekt + amtlich belegt; der Fehler
  beschraenkte sich auf **eine** Tabellenzeile, die die Vollzugs-Abweichung der Norm zuschrieb.
- **Aktion:** V3-Zeile korrigiert (Norm vs. Vollzugs-Abweichung getrennt); Fig.-12-Formeln aus normen
  uebernommen, offener Punkt auf Fig. 13 eingeschraenkt; 2 Querbezug-Bloecke (→ normen, →
  planungsgrundlagen) + Cross-KB-Zeile; EVEN-Luecke per Verweis geschlossen; normen-REGISTER Z. 106 auf
  «2014 BESTAETIGT» nachgefuehrt. **Nebenfund:** Korrigenda **C2:2020 existiert** (Wegleitung zitiert sie),
  Inhalt nicht verifiziert → normen-Destillat entsprechend praezisiert.
  **Offen (Bring-Schuld normen-Loop):** C2:2020 am Original pruefen. **Offen (energie-Loop):** EN-102-Ausgabe
  **2018 vs. 2020** KB-uebergreifend klaeren (energie fuehrt beides unverbunden; `planungsgrundlagen`
  nennt fuer EN-102a/b bereits SIA 380/1:2016, an 2 anderen Stellen noch 2009 — Spannung in beiden KBs).
  **Status: bereinigt + verlinkt; 2 offene Bring-Schulden.**

### energie ↔ baurecht (MuKEn 2025 Modul 11 — Daemmung/Nutzungsziffern) — geprueft 2026-07-16 (Run 6)
- **Befund:** **Luecken auf beiden Seiten, kein Sachwiderspruch.** energie fuehrte Modul 11 (35-cm-Kappung
  bei BMZ/GFZ) als «Grundsatz seit 2005 bekannt, erstmals mit Zahlenwert kodifiziert / planungsrechtlich
  direkt relevant fuer JANS» — **ohne ZH-Kontext**, obwohl die Kappung im Kt. ZH seit **1.4.2013** gilt
  (§ 256 II / § 257 III / § 258 IV / § 253a PBG, § 12 III ABV). Spiegelbildlich fuehrte der **fuehrende**
  baurecht-Artikel `nutzungsziffern` die Daemmungs-Kappung **gar nicht** (der Stoff lag ungehoben im
  eigenen Buch-Destillat `14-nutzungsdichte-ausnuetzung`).
- **Verifikation (adversarial):** Muster-vs-geltend-Kennzeichnung von MuKEn insgesamt **korrekt** (kein
  Befund). «Erstmals kodifiziert» **auf Muster-Ebene nicht widerlegbar** (MuKEn-2014-Modultext nicht in
  der KB) → Befund schrumpfte von «Fehler» auf **Praezisierung**. Bestaetigt blieben: «seit 2005»
  **unbelegt** (einziger Datumsanker 1.4.2013); ZH-Aussage nicht skopiert; **keine 35-cm-Kappung fuer die
  AZ (§ 255 PBG)**; **GFZ in ZH nicht verfuegbar** (Kritik an energie insoweit widerlegt — MuKEn ist
  Musterrecht fuer alle Kantone, «BMZ/GFZ» zitiert das Muster korrekt); Gegenprobe Zweitfassung im
  PBG-Anhang («Stand 28.02.2017») traegt die Kappung **ebenfalls** — kein Schlupfloch.
- **Aktion:** energie Modul-11-Zeile skopiert (Muster-Ebene vs. ZH-Ist, «seit 2005» gestrichen, ZH-Sonderfall
  § 253a Abs. 2 als *weitergehend* benannt, Verweis auf baurecht); baurecht `nutzungsziffern` um die Sektion
  «Aussenwaermedaemmung und Nutzungsziffern (35-cm-Kappung)» + Querbezug KB energie + `sources` ergaenzt;
  Modul-12-Querbezug (E-Mobilitaet ↔ `fahrzeugabstellplaetze-und-parkierung`) gesetzt.
  **Offen (baurecht-Loop, NICHT autonom):** (a) **§ 33a ABV widerspruechlich** in baurecht (15 cm/aufgehoben
  vs. 35 cm/geltend, 2 Wiki-Artikel gegen 2 andere); (b) moeglicher **veralteter Numerierungsstand** in
  `nutzungsziffern` (BMZ als «§ 254 geltend», raw fuehrt § 258 in beiden Regimes) — beruehrt die
  Uebergangsmechanik. **Status: bereinigt + verlinkt; 2 offene KB-interne Widersprueche.**

### energie ↔ planungsgrundlagen (GreenPV/Fassaden-PV) — geprueft 2026-07-16 (Run 6)
- **Befund:** **Doppelspur + Fuehrungs-Umkehr.** Dieselbe HSLU-GreenPV-Studie wird in beiden KBs materiell
  gefuehrt: energie `greenpv-fassade-pv-begruenung-hslu` (seit 20.06.2026, Workshop-2-Foliensatz 15.06.2022,
  `emerging`) und planungsgrundlagen `energie-pv-eignung-typenwahl` §6/§6b. Identische Kennwerte doppelt
  (Modul-Wirkungsgrade 20/14 %, NOCT 42±2 °C, Begruenung 30 kg/m², Referenzgebaeude-U-Werte) — **0
  Widerspruch**, aber redundant. **Fuehrungs-Anomalie:** nach Matrix ist Energie-Fachstoff `energie`-Sache;
  faktisch hat planungsgrundlagen (Run 50) die **Schlussbroschuere vom 27.08.2024** volltext ausgewertet und
  ist auf `established`, waehrend energie auf dem 2022er-Zwischenstand steht und dort drei offene Punkte
  fuehrt (Endergebnisse / kWh/kWp je Orientierung / Kosten CHF/m²), **die alle drei laengst beantwortet sind**.
  Zusaetzlich: **VKF-Hoehen-/RF-Staffel in §6b ohne Cross-Link** (3. Fundort des Musters, s. Kasten oben);
  **Divergenz innerhalb** planungsgrundlagen: Sued-Fassade Jahres-Minderertrag §6 **−14 %** vs. §6b **−20 %**.
- **Aktion:** Aktualitaets-Flag + 3 erledigte offene Punkte in energie (Bring-Schuld: Broschuere
  re-destillieren, dann kehrt die Fuehrung um); bidirektionale Querbezuege energie ↔ planungsgrundlagen;
  «Querbezug KB normen»-Block vor der VKF-Staffel (mit Praezisierung: Ziel ist `vkf-brl-verwendung-baustoffe`
  + `vkf-brandschutznorm-2015`, **nicht** das Solaranlagen-Merkblatt); Divergenz-Flag §6↔§6b (massgebend:
  finale Broschuere −20 %). **Offen (nicht autonom):** Trim §6b auf Planungs-Framing; Trim §6/§6b nach
  energie-Re-Destillat; **Swissolar-Uebergangsdokument** «PV an Fassaden» galt **bis 31.12.2024** (19 Monate
  abgelaufen) — Nachfolge in keiner der drei KBs geprueft. **Status: verlinkt/geflaggt; 3 offene Punkte.**

### normen (KB-intern, Nebenbefund aus Run 6) — 2026-07-16
- **Befund:** **Dublette** — `destillate/vkf-merkblatt-2001-15-solaranlagen.md` und
  `destillate/vkf-brm-2001-15-solaranlagen.md` destillieren **dieselbe PDF** (identische `quelle:`,
  `ausgabe: 06.03.2015`, `last_updated: 2026-07-13`, beide `established`).
  `planungsgrundlagen/wiki/energie-pv-brandschutz` referenziert bereits **beide nebeneinander**.
- **Aktion: KEINE** — Merge/Loeschung ist destruktiv (Rule `wissens-bibliothekar`: Pause + Rueckfrage).
  **→ Entscheid Raphael noetig** (siehe Bericht). Blockiert nebenbei die saubere Zielwahl kuenftiger
  Querlinks. **Status: offener Entscheid.**

### energie ↔ planungsgrundlagen (PV-Einmalverguetung/Wirtschaftlichkeit) — geprueft 2026-07-15 (Run 5)
- **Befund:** **Doppelspur bestaetigt** — beide KBs fuehren die Pronovo-EIV-Foerdersystematik.
  energie `pv-einmalverguetung-bund-bfe` (established, BFE-Faktenblatt) ist die autoritative Quelle;
  planungsgrundlagen `energie-betriebsenergie-pv-wirtschaftlichkeit` §1 (emerging, 07-14) leitet sie
  ohne Cross-Link nochmals her (KLEIV/GREIV/HEIV, Grund-/Leistungsbeitrag, Neigungs-/Parkflaechenbonus).
  **KEIN Sachwiderspruch** (Saetze konsistent: integriert 400 / angebaut 200 CHF/kW seit 1.1.2025,
  Deckel 30 %). §2/§3 (Amortisation EFH-Fall, Eigenverbrauch-Hebel) sind **komplementaer**, nicht in
  energie — bleiben in planungsgrundlagen.
- **Aktion:** bidirektionale Querbezuege gesetzt (planungsgrundlagen §1 → energie als fuehrend;
  energie → planungsgrundlagen fuer die Wirtschaftlichkeits-Anwendung). §1-Trim als offen markiert
  (Umstrukturierung, NICHT autonom). **Status: verlinkt/geflaggt; 1 offener Trim (planungsgrundlagen §1).**

### baurecht ↔ planungsgrundlagen ↔ energie (WWG → WsG Aktualitaet) — geprueft 2026-07-15 (Run 5)
- **Befund:** **Veraltet-Cross-KB bestaetigt.** baurecht (`baureife-und-erschliessung`, § 27 WWG) und
  planungsgrundlagen (`recht-norm-regenwasser-gewaesserraum-zh` § 18 WWG; auch `kartenportale-natur-
  gefahren-objektschutz` § 22 WWG) fuehren das ZH **Wasserwirtschaftsgesetz WWG (LS 724.11, 1991)** als
  geltend. energie (`grundwasserwaermenutzung-bewilligung-zh-sz`, 07-15, primaerquellen-verifiziert)
  belegt: das WWG wurde **per 1.6.2026 durch das Wassergesetz WsG vom 12.12.2022 abgeloest** (§ 126 WsG,
  explizite Aufhebung; §§ 48/74/96/126 WsG Volltext gelesen). Heute (15.07.) bereits geltendes Recht.
- **Aktion:** Aktualitaets-Flags in baurecht `baureife-und-erschliessung` + planungsgrundlagen
  `recht-norm-regenwasser-gewaesserraum-zh` gesetzt (WWG-§§ nicht umbenannt — quellentreu 2019-Werk).
  Buecher-Destillate baurecht (band-2/12, /15, /20) bewusst unangetastet (quellentreu). **Offen (nicht
  autonom, Bring-Schuld):** WsG-/WsV-Volltext beschaffen, §-Mapping WWG→WsG erstellen, dann die
  current-Rechtslage-Wiki-§§ nachziehen; planungsgrundlagen `kartenportale-naturgefahren-objektschutz`
  (§ 22 WWG) noch zu flaggen. **Status: geflaggt; §-Mapping + 1 weiteres Flag offen.**

### normen ↔ energie (SIA 2024, SIA 382/1) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche. **Veraltetes 2x — der FUEHRENDE KB normen ist ueberholt:** (1) SIA 2024 —
  normen REGISTER Z.266 fuehrt **2006**, energie fuehrt **SIA 2024:2021** (inkl. Korrigenda C1:2024); (2)
  SIA 382/1 — normen REGISTER Z.464 fuehrt **2014**, energie fuehrt **SIA 382/1:2025** (in Kraft seit
  1.2.2025). Beide Editionen **WebSearch-verifiziert am SIA-Shop** (bestaetigt). 3 fehlende «Querbezug KB
  normen»-Bloecke im Run-69-SIA-2024-Stoff (energie nannte SIA-Normen als Prosa ohne normen-Verweis).
  Doppelspur SIA-382/1-Kennwerte (beide KBs, divergierende Ausgabe). «Zu verifizieren»: energie zitiert
  «SIA 384/2 Heizlast» als SIA-2024-Herleitung — benigne historische Zitierung (kein Aktualitaets-Claim).
- **Aktion:** 2 Ausgaben-Flags in normen REGISTER (Z.266 + Z.464, Format analog SIA-181:2020-Flag Run 3);
  3 «Querbezug KB normen»-Bloecke in energie (2× sia-2024, 1× komfortlueftung). **Offen (Bring-Schuld
  normen-Loop):** Re-Destillate SIA 2024:2021 + SIA 382/1:2025 (kostenpflichtiger Volltext SIA-Shop).
  **Status: verlinkt/geflaggt; 2 offene Re-Destillate.**

### normen ↔ planungsgrundlagen (VKF, Normkonzept BSV 2026) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Sachwidersprueche (BSV 2015 geltend, BSV 2026 Zukunft/Inkrafttreten ~2027 — beidseitig
  deckungsgleich; RF-/EI-Klassen konsistent). **Neubefund «Fuehrung in der falschen KB»:** der neue §1a
  (planungsgrundlagen `brandschutz-pl03-wegweiser` Z.137ff, Run 48) fuehrt das VKF-Primaerdokument
  «Normkonzept BSV 2026» (38 Eckpunkte) materiell und unverlinkt; laut Rule `normen-referenz` ist normen
  fuehrend. normen hat die PDF beschafft (CHANGELOG/QUESTIONS), aber **kein Destillat** → Querlink derzeit
  nicht auf einen Zielartikel setzbar. Restbestand RF/EI-Doppelspur im §4 bereits selbst-geflaggt (Run 37
  teilbereinigt).
- **Aktion:** «Querbezug KB normen»-Block in §1a gesetzt (Fuehrung + offener Trim-Hinweis). **Offen (nicht
  autonom, heikel):** normen destilliert Normkonzept BSV 2026 → dann §1a auf Planungs-Framing kuerzen +
  verlinken (Trim = groessere Umstrukturierung). **Status: verlinkt/geflaggt; 1 offener Trim (nach
  normen-Destillat).**

### energie ↔ grobkosten ↔ immobilienbewertung (Run-69 Kostenthemen) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche, 0 Doppelspur — **Metrik-Ebenen sauber getrennt**: energie fuehrt
  Komponenten-/Betriebs-/Anschlusskosten (CHF/kWp, Fernwaerme-Anschluss, Rp/kWh), grobkosten/immo fuehren
  aggregierte Erstellungskennwerte (CHF/m3 GV BKP 1-5 / BKP-2-Anteile). Einziger Befund: fehlende
  bidirektionale Querverlinkung + **latentes Doppelzaehlungs-Risiko** (energie-Komponenten sind BKP-23/24/25
  und stecken bereits in den Aggregaten).
- **Aktion:** bidirektionale «nicht additiv»-Querbezuege gesetzt: grobkosten `kennwerte` + immo
  `realwert-sachwert` → energie; energie `fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025`
  → grobkosten/immo (Doppelzaehlungs-Guard). **Status: bereinigt.**

### normen ↔ planungsgrundlagen (Brandschutz VKF) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (VKF-Kennwerte deckungsgleich). **Doppelspur** (hoch relevant):
  planungsgrundlagen `brandschutz-pl03-wegweiser` fuehrt nach Run 34 VKF-BSR-Ziffern/Kennwerte
  im Wortlaut, obwohl **normen** die fuehrende Norm-Fundstelle ist (Rule `normen-referenz.md`).
  Gebremst durch die bereits vorhandene C1-Arbeitsteilung (delegiert Fach-Detail an Skill
  `brandschutz`), aber ohne Cross-Link zu normen. **Veraltetes:** normen-Destillat
  `vkf-merkblatt-2001-15-solaranlagen` fuehrt Ausgabe 2015; planungsgrundlagen belegt Rev. 2022
  (RF3(cr) statt RF4(cr)).
- **Aktion:** 2 Querbezuege → normen gesetzt (wegweiser + pv-brandschutz); normen-Destillat +
  REGISTER + QUESTIONS mit 2022-Flag annotiert. **Offen (Raphael/Loop):** VKF-Ziffern im Wegweiser
  via normen ziehen statt duplizieren (Trim = grosse Umstrukturierung, NICHT autonom); VKF-Merkblatt
  2022 re-destillieren. **Status: verlinkt/geflaggt; 2 offene Punkte.**

### normen ↔ energie (SIA 380/1, SIA 181, SIA 180, SIA 279) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche. **Veraltetes 2x:** (1) normen REGISTER fuehrt **SIA 181:2006**,
  energie arbeitet mit **SIA 181:2020** (energie aktueller); (2) energie `daemmstoffe-lambda`
  stuetzt sich auf zurueckgezogenes **SIA 2001:2005**, normen fuehrt aktuelles **SIA 279:2018**
  (normen aktueller). 4 fehlende Links (energie nennt SIA-Normen als Prosa ohne normen-Verweis).
- **Aktion:** 4 Querbezuege energie → normen (sia-181/sia-180/sia-279/REGISTER-380-1); zwei energie-
  «Offen»-Punkte (sommerlicher WS, Bemessungswerte) durch Verweis geschlossen; normen REGISTER Z.109
  + QUESTIONS mit SIA-181:2020-Flag. **Offen:** SIA 181:2020 re-destillieren (Bring-Schuld SIA-Shop).
  **Status: verlinkt; 1 offener Punkt (SIA-181:2020-Destillat).**

### energie ↔ baurecht — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche, 0 Doppelspur. 3 fehlende Links an der Verfahrens-/Nachweis-Nahtstelle
  (Energienachweis-Beilagepflicht, § 325a PBG Anzeigeverfahren, Minergie-Vermutung § 4 Abs. 4 BBV I).
- **Aktion:** 3 Querbezuege gesetzt (baubewilligungsverfahren → energie; energienachweis-zh → baurecht
  § 325a; minergie-standards → baurecht Minergie-Vermutung). Rollenteilung Recht=baurecht /
  Nachweisphysik=energie fixiert. **Status: bereinigt.**

### immobilienbewertung ↔ grobkosten (vertieft) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (E1-Faktor konsistent, nicht erneut geprueft). 1 fehlender Link:
  `residualwertmethode` nutzt Erstellungskosten als groessten Landwert-Hebel, verweist aber nicht
  auf die kanonischen grobkosten-Kennwerte.
- **Aktion:** Querbezug residualwertmethode → grobkosten `kennwerte` (inkl. E1-Faktor). **Status: bereinigt.**

### baurecht ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelspur Wald-/Gewaesserabstand (Rechtsmasse in beiden voll gepflegt). 3 Diskrepanzen:
  W1 (Fliessgewaesser-Regime vermischt, hoch) **BESTAETIGT** -> baurecht korrigiert;
  W3 (stehende Gewaesser 0,5-ha-Schwelle fehlte, niedrig) **BESTAETIGT** -> baurecht korrigiert;
  W2 (§66 vs §262 Waldabstandslinie, mittel) **WIDERLEGT** (komplementaer, kein Eingriff).
- **Aktion:** 3 Backlinks gesetzt (beide Richtungen), Rollenteilung fixiert. **Status: bereinigt.**

### normen ↔ baurecht — geprueft 2026-07-12 (Run 1)
- **Befund:** Keine Widersprueche. 3 fehlende Verlinkungen (baurecht nennt SIA 416 / VSS-Velo als
  Prosa ohne Verweis auf die normen-Destillate).
- **Aktion:** 2 Backlinks gesetzt (nutzungsziffern -> sia-416-2003; fahrzeugabstellplaetze ->
  vss-merkblatt-veloabstellplaetze-1998). Offen: aGF-Definition-Detailabgleich SIA 416 ↔ § 254 PBG
  (kein Widerspruch, Kandidat fuer Vertiefung). **Status: weitgehend bereinigt.**

### energie ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelte Energie-Ebene. 1 echter Fehler: energie-W1 (EN-105 WRG-Grenzwert falsch
  «>=75 % mit Bypass») **BESTAETIGT** -> energie korrigiert. W2 (PV-Ertragsbaender) + W3 (U-Werte)
  **WIDERLEGT** (verschiedene Bezugsgroessen bzw. inhaltsgleich).
- **Aktion:** Backlink energie -> planungsgrundlagen-Verfahrensartikel; Rollenteilung fixiert
  (Physik=energie, Verfahren=planungsgrundlagen). **Status: bereinigt.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref — geprueft 2026-07-12 (Run 1)
- **Befund:** Kennwerte grundsaetzlich konsistent. W1/W4 (Wuest-Tabellen scheinbar widerspruechlich)
  **WIDERLEGT** (verschiedene Wuest-Produkte/Bezugsbasis). **W2 (m2->m3-Faktor 0.70 grobkosten vs.
  0.60-0.61 immobilienbewertung) BESTAETIGT + HEIKEL** -> **ENTSCHIEDEN 12.07.2026 (E1):** Faktor
  kontextabhaengig — Regelgeschoss 0.70, Gesamtgebaeude 0.60–0.61 (kanonisch fuer m²↔m³-Bruecke),
  in beiden KBs verankert. W3 (Baupreisindex-Stand) unverifiziert (Schema-Retry) -> Run 2 nachziehen.
- **Aktion:** 2 Backlinks (grobkosten ↔ immobilienbewertung) + Bezugsbasis-Warnung + E1-Entscheid.
  **Status: E1 bereinigt; verbleibt 1 offene Verifikation (W3, Run 2).**

### twin ↔ spec — geprueft 2026-07-12 (Run 1, rotierend)
- **Befund:** Konzeptuelle Ueberschneidung Arbeitsweise/Methodik, KEIN Widerspruch (W1 doppelspur
  **WIDERLEGT** — verschiedene Rollen). Mehrere fehlende Querlinks.
- **Aktion:** Backlink beide Richtungen (arbeitsweise ↔ anwendung-jans). **Status: bereinigt.**

### auflagebereinigung ↔ baurecht — geprueft 2026-07-12 (Run 2)
- **Befund:** Inhaltlich konsistent, verschiedene Flughoehen (baurecht = Rechtsnatur/Verfahren,
  auflagebereinigung = operative Umsetzung). 1 Widerspruch W1 (Baubeginn-Definition, niedrig)
  **WIDERLEGT** (nur Praezisionsstufe: umgangssprachl. Spatenstich = jur. Aushubbeginn). 1 Doppelspur
  (Fristen-Phasen = designter Handoff, kein Eingriff). 5 fehlende Backlinks.
- **Aktion:** 4 Backlinks gesetzt (fristenlogik -> nebenbestimmungen + bauausfuehrung; aemter ->
  baubewilligungsverfahren; bauausfuehrung -> fristenlogik) + Baubeginn juristisch praezisiert
  (§ 326 PBG). **Status: bereinigt.**

### W3-Nachverifikation (Baupreisindex) — 2026-07-12 (Run 2)
- **grobkosten Teuerungsstand vs. immobilienbewertung BFS-Index:** adversarial **WIDERLEGT** — Seed
  ±25 % legitim, reale Bauteuerung 2023->2026 ~2-3 %. Teuerungs-Check-Verlinkung gesetzt. **Erledigt.**

## Noch nie gepruefte Paare (Rotation kuenftige Laeufe)
- energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren) — Vorschlag Run 3
- kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (Kunden-Kontext)
- immobilienbewertung ↔ grobkosten (Landwert/Residual ↔ Kennwerte) — vertieft
- energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren)
- normen ↔ energie (SIA 380/1, SIA 180/181 ↔ energie U-Werte/Schallschutz)
- architekten-synobsis ↔ entwurfs-referenzen (Referenz-/Entwurfswissen)
