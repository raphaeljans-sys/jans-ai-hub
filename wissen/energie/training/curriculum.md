# Curriculum — KB Energie

Themenfahrplan fuer den taeglichen Loop. Jede Lektion = beantwortbares Bauherren-relevantes Thema.
Status: `[ ]` offen · `[~]` begonnen · `[x]` belegt (mit Datum). Reihenfolge = Prioritaet.

## Block A — Fachgrundlagen Gebaeudehuelle
- [x] A1 U-Wert verstehen & bestimmen (BFE-Bauteilekatalog) — Grundlagen destilliert 2026-06-05;
  λ-Bandbreiten Daemmstoffe belegt 2026-06-07 via SIA 2001 → `[[daemmstoffe-lambda]]`;
  **Bauteilekatalog Kap. 4 (Standardaufbauten Boeden B1-B21 / Waende W1-W26) belegt 2026-06-10**
  → `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`. **Kap. 4.1.3 Daecher/Decken (D1-D15, Di1-Di4/
  Di8-10), Kap. 4.2 inhomogene Bauteile (Bi/Wi-Serie, Holzbau) und Kap. 5 Fenster+Tueren (Uw-Formel
  + amtl. Uf-Fallback-Tabelle Holz 1,9/Kunststoff 2,5/Verbundprofil 3,3) belegt 2026-07-14 (Run 65,
  D43)** → dasselbe Destillat jetzt **vollstaendig gelesen (S. 1-80/80)**, FAQ **F69** neu, schliesst
  den in `[[fenster-verglasung]]` offenen Uf-Tabellen-Punkt. **Kapitel A1 damit wirklich vollstaendig.**

- **D44-D47 (Run 66, 2026-07-14)** — PDF-Inventar bestaetigt weiterhin erschoepft (SharePoint-Kontrolle:
  keine neuen Dateien in PL-04 Energie seit 11.06.2026). Vier parallele Web-Rechercheagenten haben vier
  neue, JANS-relevante (ZH+SZ-Fokus) Themenkomplexe erschlossen, alle auf amtlichen Primaerquellen
  (direkt heruntergeladene Gesetzes-PDFs, per curl/pdftotext gelesen): **D44 Elektroheizungs-
  Ersatzpflicht** — ZH bis 2030 (§ 10b EnerG, bundesgerichtlich bestaetigt BGE 149 I 49), SZ bis 2050
  (§ 22a kEnG, nur Anlagen mit Wasserverteilsystem) → `[[elektroheizungs-ersatzpflicht-zh-sz]]`, FAQ
  **F70**. **D45 Erdwaermesonden-Bewilligung** — ZH via Gemeinde/AWEL (500 m Bohrtiefe, 2,5 m
  Grenzabstand, S1/S2 verboten, Gewaesserschutzbereich Au bewilligungspflichtig), SZ via kostenlose
  Vorabklaerung + eBau → `[[erdwaermesonden-bewilligung-zh-sz]]`, FAQ **F71**. **D46 Kaeltemittel R290
  (Propan)** — ChemRRV-Revision (Bundesratsbeschluss 29.10.2025, Umstellung ab 1.1./1.7.2027), A3-
  Brandschutzgrenzen 0,15 kg (Innenaufstellung)/1,5 kg (EKAS 6517) → `[[kaeltemittel-r290-waermepumpen-ch]]`,
  FAQ **F72**. **D47 Fernwaerme-Anschlusspflicht Kt. Schwyz** — Pendant zu § 295 PBG ZH, vollstaendige
  Durchsuchung von kEnG/KEnV/PBG/PBV SZ ergibt **keine gesetzliche Grundlage** fuer eine
  Anschlusspflicht (ehrliches Negativergebnis, anders als in ZH) → `[[fernwaerme-anschlusspflicht-sz]]`,
  FAQ **F73**. FAQ-Stand: 73 Kernfragen (F1-F73) belegt. Alle vier Destillate + Register (INDEX,
  QUESTIONS, _INGESTED, CHANGELOG) nachgefuehrt.
- **D48 (Run 67, 2026-07-14)** — PDF-Inventar weiterhin erschoepft. Drei parallele Rechercheagenten
  haben die Run-66-Prioritaetenliste abgearbeitet: **D48a Denkmalschutz + energetische Sanierung
  ZH+SZ** (neuer Themenkomplex — PBG-Revision ZH 02.07.2026 staerkt energetische Modernisierung an
  Baudenkmaelern, Art. 18a RPG laesst Solarenergie in Schutzzonen vor Aesthetik gehen, Stadt-Zuerich-
  Foerderprogramm ab 1.6.2026, DSG/DSV-Revision SZ 1.10.2024, ISOS bindet nur bei Bundesaufgabe
  Art. 2 NHG) → `[[denkmalschutz-energiesanierung-zh-sz]]`, FAQ **F74** neu; **D48b AWEL-Gebuehr
  Erdwaermesonden ZH** (§ 35/§ 69 KGSchV + GebV UR primaerquellen-verifiziert: reine Aufwandgebuehr,
  Deckel CHF 25'000, keine Pauschale) → `[[erdwaermesonden-bewilligung-zh-sz]]` auf established
  gehoben, FAQ F71 geschaerft; **D48c SZ-Bagatellkatalog Elektroheizungen** (§ 16a/§ 16b kEnV:
  typ-/lagebasierter Ausnahmenkatalog Bergbahnstationen/Alphuetten/Bergrestaurants, dezentrale
  Anlagen ohne Wasserverteilsystem tatbestandlich nicht erfasst) → `[[elektroheizungs-ersatzpflicht-zh-sz]]`
  ergaenzt, FAQ F70 geschaerft; **D48d R290-Kostenvergleich** (Effizienz tendenziell hoeher via
  Kaeltemittel-Fibel, CHF-Kosten bestaetigter Negativbefund) → `[[kaeltemittel-r290-waermepumpen-ch]]`
  ergaenzt, FAQ F72 geschaerft. FAQ-Stand: **74 Kernfragen (F1-F74) belegt.**
- **D49 (Run 68, 2026-07-14, nachintegriert)** — Ein separat gestarteter Lauf hatte vier parallele
  Web-Rechercheagenten gestartet, deren Ergebnisse zunaechst nicht ins Repo integriert wurden
  (Orchestrierungsfehler); die vier fertigen Berichte trafen nachtraeglich ein und wurden manuell
  nachintegriert (Commit `b76824e5`, 12.07.2026 12:15 Uhr). **D49a Waerme-Contracting/Waermelieferung**
  (Vertragsmodelle Wärmeliefervertrag + Nutzungsvertrag, Art. 6a VMWG Nebenkosten-Ueberwaelzung,
  Preisueberwacher-Fernwaerme-Richtwerte 17 Rp./kWh bzw. CHF 1'878-5'267/Jahr, keine spezifische
  Contracting-Preisaufsicht primaerquellen-verifiziert) → `[[waerme-contracting-vertragsmodelle-ch]]`
  (neu), FAQ **F75**, Status emerging. **D49b Steuerabzuege energetische Sanierung** (Art. 32 Abs. 2
  DBG, Kt. ZH/SZ-Praxis, Eigenmietwert-Reform-Bezug per 1.1.2029) → `[[steuerabzuege-energetische-sanierung-ch]]`
  (neu), FAQ **F76**, Status emerging. **D49c Grundwasserwaermenutzung Bewilligung ZH+SZ**
  (Konzessionsverfahren, 3°C-Regel Rueckgabetemperatur, Schwellenwerte) →
  `[[grundwasserwaermenutzung-bewilligung-zh-sz]]` (neu), FAQ **F77**, Status emerging. **D49d
  Klaerung zweier Run-67-Offenpunkte**: SZ-Denkmalpflegebeitrags-Widerspruch aufgeloest (§ 16a DSG:
  Grundbeitrag 25 % + Schutzziel-Zuschlag 5/10/15 % = 30/35/40 %, unabhaengig von lokal/regional/
  national) und ZH-Erleichterungsklausel lokalisiert (§ 2 Abs. 5 WDV, LS 700.211, delegiert aus
  § 17a EnerG, Wortlaut primaerquellen-verifiziert) → `[[denkmalschutz-energiesanierung-zh-sz]]` auf
  **established** gehoben, FAQ F74 geschaerft. FAQ-Stand: **77 Kernfragen (F1-F77) belegt.**
- **D50 (Run 69, 2026-07-14)** — PDF-Inventar weiterhin erschoepft (Erst-Erhebung Run 65). Vier
  parallele Web-Rechercheagenten haben die von Run 68 priorisierten Themenkomplexe sowie zwei
  weitere abgearbeitet: **D50a SIA 2024 Nutzungsdaten Gesundheitsbau** (JANS-Healthcare-Fokus,
  bisher fehlender Nichtwohnbau-Bezug der KB — Gebäudekategorie VIII.1 Spital/VIII.2 Pflege,
  Flächenanteile + Lüftungskennwerte Bettenzimmer/Stationszimmer/Behandlungsraum, Prozessanlagen-
  Anteil 28-38 % des Behandlungsraum-Elektrizitätsbedarfs, OP-Säle/CT/MRT explizit nicht
  abgedeckt, rechtlich massgebend bleibt SIA-380/1-Tab.-27) → `[[sia-2024-nutzungsdaten-gesundheitsbau]]`
  (neu), FAQ **F78** neu. **D50b Netzanschluss-/Netzverstärkungskosten PV-Grossanlagen +
  E-Mobilität ZH+SZ** (Art. 15b StromVG seit 1.1.2025 primärquellen-verifiziert: Pauschalabgeltung
  CHF 59/kW, Vergütung max. CHF 50/kW ab 50 kW Anschlussleistung; VSE-70%-Wechselrichter-Regel ab
  1.1.2026; EKZ-/ewz-/EWS-Praxis; keine analoge Vergütungsmechanik bei reiner Ladeinfrastruktur) →
  `[[netzanschluss-netzverstaerkung-pv-emobilitaet-ch]]` (neu), FAQ **F79** neu. **D50c
  Fernwärme-Anschlusskosten Stadt Zürich** (ergänzt die bereits bekannte Anschlusspflicht §295 PBG
  um die effektiven CHF-Zahlen: ewz-Tarifformel 2026 mit eigenen Beispielrechnungen EFH ~CHF 32'000
  + 3'200-3'500/Jahr, Preisüberwacher-Schweizerdurchschnitt CHF 14'393/3'052-3'467 primärquellen-
  gelesen; SZ-Zahlen trotz Recherche nicht auffindbar) → `[[fernwaerme-anschlusskosten-zh]]` (neu),
  FAQ **F80** neu. **D50d Netto-Null-Klimaziele Bund/Kt. ZH/Stadt Zürich/Kt. SZ** (Bund 2050
  gesetzlich seit Klimaschutzgesetz 1.1.2025; Kt. ZH nur unbestimmter Verfassungsauftrag Art. 102a
  KV-ZH, die 2040-Gesetzesvorlage wurde am 28.9.2025 mit 59,3-59,5 % Nein verworfen; Stadt Zürich
  haelt eigenstaendig an 2040/Wärmeversorgung als Planungsgrundlage fest; Kt. SZ ohne eigene
  Verschärfung gemäss EKP23+; sauber getrennt heute-verbindliche Heizungsersatz-Vorschriften vs.
  politische Zieljahre ohne unmittelbare Baupflicht) → `[[netto-null-klimaziele-zh-sz]]` (neu),
  FAQ **F81** neu. FAQ-Stand: **81 Kernfragen (F1-F81) belegt.** Alle vier Destillate + Register
  (destillate/INDEX.md, wiki/INDEX.md, wiki/BAUHERREN-FAQ.md, wiki/QUESTIONS.md, CHANGELOG.md)
  nachgefuehrt.
- [x] A2 Heizwaermebedarf SIA 380/1 — Formel + 11 Schritte (2026-06-05); Grenzwerte Q_H,li +
  Gebaeudehuellzahl belegt 2026-06-06 via EN-102 + Bauphysik-Kennwerte → `[[u-werte-grenzwerte-ch]]`;
  Beispielrechnung (Monatsbilanz Buero) + Standardnutzung Tab. 24/25 belegt 2026-06-08
  → `[[sia-380-1-beispiel-monatsbilanz]]`, `[[sia-380-1-standardnutzungswerte-tab24-25]]`. **Kernaenderungen
  der Norm SIA 380/1:2016 selbst ggue. 2009 belegt 2026-07-13** (Referenz-Jahresmitteltemperatur 9,4 °C statt
  8,5 °C, Temperaturkorrektur 6 %/K statt 8 %/K, Gebaeudehuellzahl von b-Werten entkoppelt, MuKEn-2014-
  Verschaerfung, neues Lueftungsmodell) → `[[sia-380-1-2016-aenderungen-gegenueber-2009]]` (FAQ F60);
  Sekundaerquellen, konkrete neue Q_H,li-Zahlenwerte je Kategorie ohne Norm-Volltext weiterhin offen.
  **vollstaendig** (im Rahmen der ohne kostenpflichtigen Norm-Volltext erreichbaren Tiefe).
- [x] A3 Waermedaemmstoffe waehlen — λ/ρ/μ/BKZ je Materialklasse + Naturdaemmstoffe/VIP/WDVS belegt
  (2026-06-07 + 2026-06-09) via SIA 2001 vollst. → `[[daemmstoffe-lambda]]`. **vollstaendig** (Bemessungswerte-Zuschlag SIA 279 offen).
- [x] A4 Waermebruecken — Grenzwerte Ψ/χ (Typ 1/2/3/5/6) belegt via EN-102 + EN-2 (Versionsabgleich
  2013↔2018 dokumentiert) → `[[u-werte-grenzwerte-ch]]`; **BFE-Waermebrueckenkatalog Gruppe 1.1
  Balkonplatte belegt 2026-07-12** (Primaerdokument via Read/PDF-Bildextraktion gelesen: durchbetoniert
  Ψ 0,6-1,05 vs. Grenzwert 0,30; Stahlkorb 0,20-0,26; Dorne 0,06-0,14) → `[[waermebrueckenkatalog-bfe-balkonplatte]]`
  (FAQ F48). **Gruppe 4.1 Fensteranschluss + Gruppe 3.4 Sockel ebenfalls belegt 2026-07-12** (Ψ
  0,08-0,36 bzw. 0,02-0,82 je nach Ausfuehrung/Daemmtiefe) → `[[waermebrueckenkatalog-bfe-fensteranschluss]]`,
  `[[waermebrueckenkatalog-bfe-sockel]]` (FAQ F49/F50). Damit die drei haeufigsten Gebaeudeanschluesse
  (Balkon/Fenster/Sockel) mit konkreten Zahlen belegt. **Gruppe 1.2 Flachdach mit Vordach + Gruppe
  1.3 Flachdach mit Bruestung ebenfalls belegt 2026-07-12** (Vordach ungedaemmt Ψ 0,40-0,53 vs.
  Dorn-Anschluss praktisch null; Bruestung: Material dominiert — Backstein ungedaemmt bereits unter
  Grenzwert 0,02-0,09, Stahlbeton auch gedaemmt hoch 0,12-0,26) → `[[waermebrueckenkatalog-bfe-flachdach-vordach]]`,
  `[[waermebrueckenkatalog-bfe-flachdach-bruestung]]` (FAQ F51/F52). Damit Gruppe 1 (Flachdach-Anschluesse)
  vollstaendig. **Gruppen 3.1 (Flachdach ohne Vordach), 3.2/3.3 (Steildach Traufe/Ort), 3.5
  (Auskragung), 4.2 (Rollladenkasten) und 5.1-5.3 (Fensterleibung/-bruestung/-sturz) ebenfalls
  belegt 2026-07-13** (Flachdach ohne Vordach Ψ 0,44-0,60 ungedaemmt vs. negativ bei durchgehender
  Daemmung; Steildach durchweg unkritisch −0,01 bis −0,16; Auskragung Ψ 0,04-0,29 je
  Unterlagsbodendaemmung; Rollladenkasten Ψ 0,18-0,26; Fensterleibung/-bruestung/-sturz
  Grenzwert 0,10, ungedaemmte Fensterbank +0,20 groesster Einzelfehler) →
  `[[waermebrueckenkatalog-bfe-flachdach-ohne-vordach]]`, `[[waermebrueckenkatalog-bfe-steildach-traufe-ort]]`,
  `[[waermebrueckenkatalog-bfe-auskragung]]`, `[[waermebrueckenkatalog-bfe-rollladenkasten]]`,
  `[[waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz]]` (FAQ F53-F57). **Gruppe 6
  (Stuetzen/Fassadenanker) belegt 2026-07-13** (durchstossende Stahlstuetze X 0,20-0,37 W/K teils
  ueber Grenzwert 0,30 W/K, Stahlbeton-Stuetze nur 0,05-0,12 W/K; Fassadenanker als ΔU-Zuschlag:
  Holzlattung +0,02-0,03 W/(m²·K), Alu mit thermischer Trennung je nach Ankerraster +0,02-0,19
  W/(m²·K)) → `[[waermebrueckenkatalog-bfe-stuetzen-fassadenanker]]` (FAQ F58). **Gruppe 2
  (Geschossdecke/Kellerdecke/Innenwandanschluss, vollstaendig) ebenfalls belegt 2026-07-13**
  (Innenwand-Auflager auf Geschossdecke durchbetoniert Ψ 0,63-0,89 — hoechster Einzelwert des
  ganzen Katalogs — vs. Stahlkorb 0,07-0,15; Wandanschluss Kellerdecke 0,23-0,26 bzw. −0,02-0,14;
  Innenwandanschluss Aussenwand 0,11-0,24) → `[[waermebrueckenkatalog-bfe-geschossdecke-kellerdecke]]`
  (FAQ F59). **Damit A4 wirklich vollstaendig — alle sechs Hauptgruppen des BFE-Waermebrueckenkatalogs
  mindestens einmal zahlenbasiert belegt** (einzelne Ausfuehrungsvarianten innerhalb der Gruppen
  bleiben offen, z.B. Gruppe 6.2 ATK/Clickpress/Halfen-Spezialanker S. 119-126).
- [~] A5 Fenster: U-Wert (Aw) + g-Wert — g_tot 0,1-0,15 + sommerl. Waermeschutz belegt 2026-06-09 via
  Minergie 2023 + EN-2 → `[[sommerlicher-waermeschutz]]` (FAQ F11); offen: eigener Fenster-Artikel U_w/Zielkonflikt.
- [x] A6 CLT/Holzbau-Bauphysik — belegt 2026-06-11 via Stora-Enso-Doku Kap. 1-3 (Waerme λ 0,12 /
  Luftdicht folienfrei n₅₀ 0,6 / Feuchte s_d feuchtevariabel) → `[[holzbau-bauphysik-clt]]`,
  `[[clt-bauphysik-stora-enso]]` (FAQ F15). **Bauteilkatalog Kap. 4 belegt 2026-06-12** (Aussenwand
  V1-9 + Dach V1-6: REI·U·Rw) → `[[clt-bauteilkatalog-stora-enso]]`. **Schallschutz Innenwand/
  Trennwand/Decke belegt 2026-06-13** (R_w 34-58, L'_n,w 60→46) → `[[clt-schallschutz-stora-enso]]`
  (FAQ F17). **SIA-181:2020-Anforderungswerte belegt 2026-06-24** → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). Offen: Flankenuebertragung CH (Lignum-Anschlussdetails).
- [~] A7 Naturdaemmstoffe/zirkulaeres Bauen in der Praxis — Seed 2026-06-13 via Werkhof29-Dossier
  (Stroh-Daemmung, Lehmputz, Re-use, Areal-PV) → `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]`.
  Offen: Bemessungs-λ Stroh, Brand/Feuchte, ZEV/Solarsplit-Modell.
- [x] A8 Schallschutz im Hochbau SIA 181:2020 — Anforderungswerte belegt 2026-06-24 via Zusammenfassung
  baumann akustik & bauphysik (Luftschall Di / Trittschall L' / Haustechnik LH / Aussenlaerm De je
  Empfindlichkeit × Stoergrad; erhoeht +4 dB innen / +3 dB aussen; EFH/Reihen-EFH/STWEG = erhoehte
  Aussenlaerm-Anforderung; Bauwert ≠ Laborwert/Flanke) → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). **Flanken-/Nachweis-Mechanik belegt 2026-06-28** (Lignum/BFH-AHB
  2008: R_w↔R'_w, K_P/K_F, 12 Nebenwege EN 12354, C/C_tr-Werte, Holzbau-Datenluecke) →
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]` (F25/F17 geschaerft). Offen: konkrete Lignum-
  Konstruktionsdetails + gemessene K_F-/Bauteilwerte (LIT-Doku).

- **D51 (Run 70, 2026-07-14, gedrosselt)** — Erster Lauf unter der neuen Rule **260714 (Tempo
  drosseln, Wochenlimit 81 %)**: Batch bewusst von 6-10 auf **drei** Themenkomplexe zurueckgenommen
  (Token-Vollgas 260712b ist fuer die Restwoche aufgehoben). PDF-Inventar weiterhin erschoepft, daher
  wieder Web-Pfad; drei parallele Rechercheagenten. **D51a Schwyzer Kostenluecke aus Run 69
  geschlossen** — Fernwaerme SZ: Agro Energie Schwyz publiziert die vollstaendige Anschlussformel
  (CHF 20'676 + 800/kW bis 20 kW bzw. 31'000 + 380/kW darueber, indexiert am Zuercher
  Wohnbaukostenindex; Grundpreis 92.02 CHF/kW·Jahr, Arbeitspreis 14.20 Rp./kWh; Zuleitung ab
  Parzellengrenze 600-800 CHF/m separat), Energie Einsiedeln 11.53 Rp./kWh, Energie Ausserschwyz
  publiziert nichts (Offerte zwingend); Strom-Netzanschluss SZ: EWS Ibach Netzkostenbeitrag
  CHF 140/A bis 315 A (85/A darueber) + Netzanschlussbeitrag 16 A CHF 1'860 bis 1'000 A CHF 17'210,
  EW Hoefe CHF 160/A. Kernmechanik: der Netzkostenbeitrag knuepft an die **bezugsberechtigte
  Leistung** an — PV loest ihn nicht aus, eine Ladeinfrastruktur mit Leistungserhoehung schon
  (dynamisches Lastmanagement ist der erste Hebel). Adversarial widerlegt: der kursierende Wert
  «Agro Energie EFH 10 kW ≈ CHF 18'000» ist an keiner Primaerquelle belegt und widerspricht der
  publizierten Formel → `[[netzanschluss-netzverstaerkung-pv-emobilitaet-ch]]` auf **established**
  gehoben, `[[fernwaerme-anschlusskosten-zh]]` ergaenzt (bleibt emerging), FAQ **F83** neu.
  **D51b GEAK-Pflicht-Landkarte ZH/SZ** — das Destillat existierte bereits (Run 43/08.07.), wurde
  daher nicht dupliziert, sondern um die Pflichtfrage erweitert: in ZH und SZ ist der GEAK
  **nirgends zwingend** (keine Handaenderungs-, keine Baubewilligungspflicht; gesetzliche
  Handaenderungspflicht nur FR/VD/NE/JU). Zwingend ist er nur (1) als **GEAK Plus ab CHF 10'000
  Foerderbeitrag** an die Huelle (HFM 2015) und (2) in **SZ als einer von drei Nachweiswegen beim
  fossilen 1:1-Heizungsersatz** (Klasse D Gesamtenergieeffizienz, Alternative zu MuKEn-Standardloesung
  oder Minergie-Zertifikat; AfU SZ FAQ 28.08.2025) — diesen Weg gibt es im Kt. ZH nicht (§ 11 EnerG:
  erneuerbar, Ausnahme nur via Lebenszykluskosten-Nachweis EN-LCC-ZH). **Sachfehler korrigiert:**
  in der KB stand «CHF 1'000 (GEAK) / 1'500 (GEAK Plus)» — richtig ist, dass **nur der GEAK Plus**
  gefoerdert wird, gestaffelt nach Gebaeudetyp (1'000 EFH/ZFH, 1'500 uebrige); der Basis-GEAK wird in
  ZH und SZ **nicht** gefoerdert. Korrektur in Destillat, Kosten-Destillat, Wiki-Artikel, FAQ F36 und
  beiden INDEX-Registern nachgezogen → `[[geak-gebaeudeenergieausweis-kantone]]` (established),
  FAQ **F82** neu. **D51c VHKA — verbrauchsabhaengige Heiz- und Warmwasserkostenabrechnung ZH/SZ**
  (in der KB bisher gar nicht belegt, obwohl sie in jedem MFH-Projekt anfaellt): Pflichtschwellen aus
  den Primaererlassen im Volltext — **ZH** EnerG § 9 Warmwasser-Messpflicht im Neubau schon ab
  **2 Nutzeinheiten** (tiefste Schwelle der Deutschschweiz), Nachruestung im Bestand ab **3
  Nutzeinheiten** bei Gesamterneuerung des Heizungs- oder Warmwassersystems (Uebergangsfrist
  abgelaufen, **wirksam seit 1.9.2025**), Abrechnung **min. 60 %** nach Verbrauch (BBV I § 44),
  Befreiung < 20 W/m² EBF / Minergie / Luftheizung (BBV I § 43); **SZ** EnG § 10 + EnV 1 §§ 25-27
  erst ab **5 Nutzeinheiten**, «ueberwiegender Teil» ohne Prozentzahl, ausruestungspflichtig ab
  Baubewilligung nach 1.2.2001. Mechanik VEWA 30/70, Invest CHF 500-1'000 je Nutzeinheit +
  CHF 50-100/Wohnung·Jahr; mietrechtlich sind Ablesung/Abrechnung anrechenbare Nebenkosten
  (VMWG Art. 5 Abs. 2 lit. f), die **Geraete-Investition nicht** (Art. 6) → Mietzinserhoehung
  (Art. 269d OR) → `[[vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz]]` (neu, **established**),
  FAQ **F84/F85** neu.

- **D52 (Run 71, 2026-07-15, ohne Hintergrund-Agenten)** — Intensiv-Lauf auf Wunsch Raphaels; die
  sechs geplanten parallelen Rechercheagenten brachen alle reproduzierbar direkt nach dem ersten
  Werkzeugaufruf ab (Umgebungsfehler, auch nach Resume), daher Recherche manuell in der Hauptsession
  fortgesetzt, Umfang auf drei Themenkomplexe reduziert. **D52a VHKA SZ Pre-2001-Frage geklärt**
  (zweite unabhaengige Primaerquelle SVW/ASC-Kantonsvergleich 28.08.2023 bestaetigt § 25 EnV 1
  wortgleich: ausruestungspflichtige Bauten = nur Baubewilligung NACH 1.2.2001, aeltere MFH auch bei
  Totalsanierung NICHT VHKA-pflichtig) → `[[vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz]]`
  (bleibt established, ein Offenpunkt geschlossen), FAQ F85 geschaerft. **D52b GEAK-Klasse-D-Weg SZ
  ergaenzt** (AfU-SZ-FAQ 28.08.2025 diesmal per pdftotext im Volltext gelesen: massgebender Bedarf
  100 kWh/m²·a, Befreiung Wohnanteil ≤150 m² EBF) → `[[geak-gebaeudeenergieausweis-kantone]]`
  (bleibt established), FAQ F36 geschaerft. **D52c MuKEn-2025-Umsetzungsfahrplan ergaenzt**
  (energiehub-gebaeude.ch: Zielhorizont 2030, Basismodul Pflicht, Module 2-14 optional aber bei
  Uebernahme unveraenderbar) → `[[muken-2025-verabschiedet]]` (bleibt established), FAQ F47
  geschaerft. **D52d SZ-Fernwaerme-Restluecken teilweise geschlossen** (Kuessnacht/Arth-Goldau
  existieren, publizieren aber keine Tarife; Einsiedeln-2017-Altformel als historische Groessenordnung
  gefunden, nicht aktuell verwendbar; die «CHF 18'000/10 kW»-Zahl taucht jetzt auch bei Ausserschwyz
  auf — staerkt den Verdacht einer generischen Schaetzung) → `[[fernwaerme-anschlusskosten-zh]]`
  (bleibt emerging). **Kantonsrat-ZH-Solarpflicht-Beratungsstand** dritter Versuch erfolglos
  (bestaetigte Werkzeug-Grenze kantonsrat.zh.ch). **Nicht erreicht** (bewusst zurueckgestellt):
  Grundwasserwaermenutzung-Vertiefung, amtliche g-Wert/Uf-Wert-Tabelle, Foerderung Ladeinfrastruktur
  ZH+SZ — Prioritaet naechster Lauf.

## Block B — Nachweis & Recht (ZH)
- [x] B1 ZH-Energienachweis EN-ZH: welches Formular wann — belegt 2026-06-07 via EN-ZH-005
  → `[[energienachweis-zh]]` (FAQ F12). ⚠ Vollzug seit 1.1.2026 elektronisch (EVEN, energievollzug.ch).
- [~] B2 Private Kontrolle / wer unterschreibt den EN-Nachweis — belegt 2026-06-11 via Liste der
  Befugten (BBV I LS 700.21 §4-7) → `[[private-kontrolle-zh]]` (FAQ F12 geschaerft: Befugter zeichnet,
  Minergie-Label = Anforderungen erfuellt, EN-Formular-Matrix). Offen: Energienutzungs-Deklaration
  bei geringfuegigen Umbauten (wann genuegt sie?).
- [x] B3 Minergie / Minergie-P / -A / -ECO: Stufen, Nutzen, Aufwand — belegt + auf Stand 2023
  aktualisiert 2026-06-09 via Minergie-Ueberarbeitung 09/2023 (Kennzahl 51/46/29, THGE 11 kg/m²,
  Wetterdaten 2035) → `[[minergie-standards]]` (FAQ F5). **vollstaendig.**
- [~] B4 MuKEn-Umsetzung Kt. ZH — EnerG seit 1.9.2022 (MuKEn 2014); Vollzug seit 1.1.2026 ueber
  EVEN (2026-06-07, Web) → `[[energienachweis-zh]]`. **Inhaltliche Aenderungen MuKEn 2025 belegt
  2026-07-12** (verabschiedet 29.08.2025: Fossilverbot Neubau, PV-Pflicht 20 W/m² EBF, neues
  Graue-Energie-Modul Teil G, Umsetzungshorizont 2025-2030) → `[[muken-2025-verabschiedet]]` (FAQ F47).
  **Konkrete ZH-Gesetzesrevision belegt 2026-07-13** (Regierungsrat-Botschaft 06.01.2026 an den
  Kantonsrat: Solarpflicht Daecher >300 m² vollflaechig + Langzeitspeicher-Auftrag Netzbetreiber;
  eigenstaendige, engere Vorlage — NICHT die volle MuKEn-2025-Uebernahme) →
  `[[zh-energiegesetz-revision-solarpflicht-2026]]` (FAQ F61). Offen: Kantonsrats-Beratungsstand/
  Inkrafttreten, ob/wann die volle MuKEn-2025-Uebernahme (Fossilverbot/20-W/m²-PV-Pflicht/Teil G)
  als eigene ZH-Vorlage folgt.
- [x] B5 Waermeerzeugerleistung dimensionieren — belegt 2026-06-08 via BFE Nr. 2781
  → `[[bfe-waermeerzeugerleistung-2015]]`, `[[heizleistung-und-waermeerzeuger]]` (FAQ F13).
  **Heizsystem-Wahl WP↔Fernwaerme↔Pellets (JAZ-Richtwerte) belegt 2026-06-18** → `[[waermepumpe-systemvergleich]]`
  (FAQ F6). **CH-Primaerquelle Feld-JAZ + COP/SCOP/JAZ-Begriff belegt 2026-06-27** via BFE-Feldanalyse
  FAWA (236 Anlagen, S/W 3,5 · L/W 2,7) → `[[fawa-jaz-feldanalyse-waermepumpen]]` + EN-14825-Foliensatz
  → `[[cop-scop-jaz-waermepumpe-gruenenwald]]`; F6 + `[[heizleistung-und-waermeerzeuger]]` geschaerft.
  **Methode fuer projektgenaue JAZ belegt 2026-07-02** (WPesti/SIA 384/3:2021, gratis endk.ch, JAZ aus
  SIA-380/1-Nachweis + WP-Typ + Einbauart) → `[[sia-384-3-wpesti-jaz-methode]]`.
  **Moderne Feld-JAZ (drehzahlvariabel) belegt 2026-07-03** (WPZ Buchs/EnergieSchweiz, 13 Anlagen 2017-2019:
  LWWP inkl. WW 3,5/3,1/2,8 · SWWP 4,9/4,6/4,3 je Neubau/Sanierung/Altbau; SWWP ~30 % Vorsprung) →
  `[[wpz-buchs-feldmessung-jaz-2016-2019]]`. **CHF-Vollkostenvergleich belegt 2026-07-03** (EnergieSchweiz
  EFH/20 J: WP guenstigstes System, Investition ≠ Gesamtkosten) → `[[heizsysteme-vollkostenvergleich-energieschweiz]]`
  (FAQ **F30** neu). Offen nur noch: **noch aktuellere** Feldstatistik (Anlagen nach 2019), WPesti-Standardwerte.
- [x] B6 Waermetechnische Anlagen WTA-Formular — belegt 2026-06-10 via Kt.-ZH-Formular 01-2024
  → `[[wta-formular-zh-waermetechnische-anlagen]]` (FAQ F14: Heizungsersatz-Verfahren/Beilagen je
  Waermequelle + fossil-Verbot §10a). **vollstaendig.**
- [x] B7 Minergie-Antrag & Zertifizierung (Prozess) — belegt 2026-06-18 via Nachweiskurs Teil 2/3
  (Label-Plattform, Antrags-Checkliste, WPesti/PVopti, Pruefprozess AS↔ZS, prov.→def. Zertifikat)
  → `[[minergie-zertifizierung-workflow]]`. **vollstaendig** (Plattform-Bedienung im Detail = Online-Manual).

## Block C — Solar / PV
- [x] C1 PV-Typen-Entscheidungsbaum (kristallin/Duennschicht/Graetzel/Hybrid + Integration) —
  belegt 2026-06-07 via TEC21-Dossier «Solares Bauen» → `[[pv-solar-technologien]]` (FAQ F4).
- [x] C2 PV-Eignung/Ertrag bestimmen — belegt 2026-06-19/-22 via 3 SolarReports (Willerzell/Diemtigen/
  **Basel 60 kWp MFH**, ~826-1'025 kWh/kWp, EV 8-44 %) + uvek-gis/sonnendach (Eignungsklassen, F19) →
  `[[pv-ertrag-eigenverbrauch-praxis]]`, `[[sonnendach-solarpotenzial-bfe]]` (FAQ F18/F19).
  **Ertrag je Ausrichtung × Neigung belegt 2026-06-25** (CH-Richtwerte: Flachdach ~90 %, Ost/West
  90–95 %, Suedfassade ~70 %, Nord ~40 % vom Sued-30°-Optimum; Swissolar + solar-ratgeber.ch) →
  `[[pv-ertrag-ausrichtung-neigung-ch]]` (FAQ F26). **vollstaendig** (exakte kWh/kWp je Orientierung → sonnendach.ch/PVGIS).
- [x] C3 Brandschutz bei Solaranlagen — belegt 2026-06-12 via swissolar STP V4.00; **vollst. Kap. 1-7
  nachgezogen 2026-06-18** (Feuerwehr-Pflicht Bauherr + ≥30 kW Orientierungsplan, Brandmauer 1,0 m,
  Batteriespeicher RF1, RWA, Naturgefahren SIA 261:2020) → `[[swissolar-stp-vkf-brandschutz-solaranlagen]]`,
  `[[pv-solar-technologien]]` (FAQ F16 geschaerft). Bewertung/Detail → Skill `brandschutz`. **vollstaendig.**
- [x] C4 Indach-Planung & Ausfuehrung — belegt 2026-06-19/-22: Glas-Glas Sunskin (`solar-home.ch`) +
  **Alu-Solardachplatte PREFA** (ab 17°, 12,6 kg/m², keine Unterkonstr./Durchdringung) →
  `[[sunskin-roof-indach-planung]]`, `[[prefa-solar-indach-aluminium-dachplatte]]` (FAQ F4). **vollstaendig.**

## Block D — Nachhaltigkeit / Klima (strategisch)
- [x] D1 Netto-Null im Gebaeude — belegt 2026-06-17 via Minergie-Nachweiskurs 2023 (THGE-Grenzwerte je
  Kategorie + Klimapfad SIA 390/1 9 kg) + Fallstudie Maison Climat (Plusenergie) → FAQ **F8**,
  `[[minergie-nachweiskurs-2023-mkz-thge]]`, `[[minergie-fallstudie-maison-climat]]`. Offen: rechtl.
  Netto-Null-Definition Einzelgebaeude, KBOB-Kompensationsbilanz.
- [~] D2 Graue Energie / CO2 im Bauteil — Sanieren vs. Neubau — Groessenordnung + Tragstruktur-Hebel
  + THGE belegt 2026-06-10/-17 via Lehrmittel «Betriebsenergie» + Nachweiskurs (THGE-Grenzwerte je
  Kategorie, bauliche Hebel) → `[[graue-energie]]` (FAQ F9/F8). **KBOB-Faktenblatt graue THG-Emissionen
  belegt 2026-06-26** (9 Reduktionshebel, SIA-2032-Messgroessen kg CO₂-eq/m² EBF, «Restwert Bestand»,
  bis 40 % MFH, kommende Kantons-Grenzwerte Art. 45 EnG; Datenbasis KBOB-Oekobilanzdaten v8.0) →
  `[[kbob-graue-treibhausgasemissionen-2025]]`. Offen nur noch: konkrete kg CO₂-eq/m² je Bauteilaufbau
  (KBOB v8.0/SIA-2032-Vorprojektwerte, kostenpflichtig), Sanieren-vs-Neubau-Amortisationsschwelle.
- [x] D3 Foerderprogramme Kt. ZH — belegt 2026-06-08 (Stand 01.01.2026, Web); **2026 unveraendert
  bestaetigt 2026-06-23** (Mitteilung 24.10.2025). **CHF-Saetze VOLLSTAENDIG belegt 2026-06-26**
  (PDF S. 1-37: WP 2'900/6'800, Fernwaerme 5'200, Daemmung 40/+60, **Minergie-ECO 110/70/50**,
  **-P-ECO 165/100/80**, **Solarthermie 2'400+1'000/kWth**, GEAK 1'000/1'500)
  → `[[foerderprogramm-energie-zh-2026]]`, `[[foerderung-energie-zh]]` (FAQ F7). **Pronovo-PV-
  Einmalverguetung (Bund) belegt 2026-06-27** via BFE-Faktenblatt (EIV/KLEIV/GREIV/HEIV, KLEIV ~360
  CHF/kWp, Indach 400, Deckel 30 %, Boni Neigung/Winterstrom/Parkflaeche) → `[[pv-einmalverguetung-bund-bfe]]`,
  F7 geschaerft. **Bundes-Gebaeudeprogramm/HFM 2015 belegt 2026-06-28** (CO2-Gesetz Art. 34 →
  Globalbeitraege → kantonaler Vollzug HFM 2015, 18 Module; Rahmenbedingungen U≤0,20/Verbesserung
  ≥0,07/Baujahr<2000/GEAK Plus ab 10k) → `[[gebaeudeprogramm-bund-hfm-2015]]` (FAQ **F27** neu).
  **SZ-Foerderprogramm belegt 2026-06-29** (Vollzugshilfe Kt. SZ 01.01.2026, alle CHF-Saetze →
  `[[foerderprogramm-energie-sz-2026]]`, FAQ **F28**). **Gemeinde-/EWU-Ebene + Foerder-Suchmaschine
  belegt 2026-06-30** (`energiefranken.ch` EnergieSchweiz/BFE standortgenau ueber alle Ebenen +
  Klimapraemie Stiftung KliK ~360/kW, meist alternativ zum Kanton) → `[[energiefranken-foerder-suchmaschine-ch]]`
  (FAQ **F29** neu). **Klimapraemie im Detail belegt 2026-07-02** (Stiftung KliK ~360/kW, keine Obergrenze,
  fossil→WP/Holz, meist alternativ zum Kanton; **Laufzeit voraussichtlich bis spaetestens Ende 2027** —
  aeltere «bis 2025»-Seiten veraltet) → `[[klimapraemie-heizungsersatz-klik]]`. **vollstaendig** (offen nur
  konkrete M-02…M-18-Saetze je Kanton + PLZ-genaue Gemeinde-Beitraege der JANS-Standorte + Klimapraemie
  exakter 2026-CHF-Satz/hartes Enddatum via klimapraemie.ch).
- [x] D5 Regenwasserbewirtschaftung / Versickerung Kt. ZH — belegt 2026-06-23 via AWEL-Gesuchsformular
  (Bewilligung >20 m², Zustaendigkeit Gemeinde/AWEL, Metall-Adsorber >50 m², Versickerungsversuch +
  1,0 m Filterschicht; VSA 2019/SN 592 000) → `[[regenwasserbewirtschaftung-versickerung-zh]]` (FAQ F24).
  Schwammstadt-Querschnitt zu D2/Begruenung. Offen: Bemessungsdetail, Retention/Gruendach, SZ.
- [~] D4 Betriebsenergie vs. Erstellungsenergie ueber den Lebenszyklus — Verhaeltnis 50 J belegt
  2026-06-10 → `[[graue-energie]]` (Betrieb dominiert, graue Energie 20-30 %; bei Minergie kehrt sich
  Gewicht um). Offen: vollstaendige Lebenszyklus-CO₂-Bilanz inkl. Energietraeger.
- [x] D6 **PV-Eigenverbrauch: selbst nutzen (WP/Lastmanagement) + vermarkten (ZEV/vZEV)** — belegt
  2026-07-04. Hebel 1 (EnergieSchweiz/Zogg 2023): WP als thermischer Speicher via EMS, solarer
  Deckungsgrad ~verdoppelbar, SG-Ready/SmartGridready, Batterie erst zuletzt → `[[wp-pv-eigenverbrauch-lastmanagement]]`
  (FAQ F31). Hebel 2 (VSE HER-CH 2025): ZEV Art. 17 EnG, Eigenverbrauch abgabenfrei Art. 16 EnG, **neu
  vZEV ab 1.1.2025** ohne Umverdrahtung, LEG separat → `[[zev-eigenverbrauch-mfh-her-2025]]` (FAQ F32).
  Themenartikel `[[pv-eigenverbrauch-zev]]`. **Ergaenzt 2026-07-05:** ZEV-Mieter-Preisregel (≤80 % des externen
  Standardtarifs ODER Gestehungskosten − Einspeiseerloes mit halber Ersparnis-Teilung, Mieter-Wahlrecht →
  `[[zev-mieter-strompreis-eigenverbrauch]]`, F32) + **Hebel 3 LEG** (ab 1.1.2026, Netzentgelt-Rabatt 40 %/20 %,
  gleiche Gemeinde/Netzebene/≥5 % Produktion → `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]`, FAQ **F33** neu).
  **Rp/kWh-Marktbeispiel ergaenzt 2026-07-13 (Run 50)** (12-15 Rp./kWh LEG vs. ~7 Rp./kWh Referenz-
  Einspeiseverguetung, nicht amtlich) → siehe D24. Offen: VSE-BD-LEG-Primaerquelle seitengenau,
  amtliche Rp/kWh-Bandbreite.

## Meta
- [x] M1 BAUHERREN-FAQ auf 15+ belegte Antworten ausbauen — **alle 17 Kernfragen F1-F17 belegt**
  (F6 WP-Systemvergleich neu 2026-06-18). Backlog nur noch Vertiefungen (Primaerquellen, CHF-Vergleiche).
- [ ] M2 Pruefen: eigenes Skill `energie` rechtfertigt sich? (Trigger-Set entwerfen.) — **FAQ traegt jetzt
  (17 Kernfragen + F18-F68 Vertiefungen, 90+ Destillate); PDF-Inventar seit Run 46 vollstaendig
  abgearbeitet (alle Quellen [x]/[-]).** Seit Run 45 (Stand Run 62: achtzehn Laeufe in Folge)
  spruchreif fuer eine Entscheidung — naechster Meta-Schritt, Raphael vorlegen statt weiter
  aufzuschieben.
- [x] D7 **Naturdaemmstoffe (Holzfaser/Zellulose/Hanf/Stroh) — oekologisch daemmen + Sommerhitzeschutz**
  — belegt 2026-07-06 (gesundes-haus.ch Materialvergleich + Lignum «Holzfaserdaemmung» + Strohballen).
  Winter: λ 0,038–0,045 wie Mineralwolle → keine dickere Daemmung. Sommer: Speichermasse ρ·c holzbasiert
  c ~2000–2200 J/(kg·K) ≈2× Mineralwolle → laengere Phasenverschiebung/besserer Hitzeschutz. Diffusionsoffen
  (Holzfaser bis 15 % Feuchte). Oeko: Stroh ~100× weniger graue Energie, Minergie-ECO-Hebel. Preis: brennbar
  → CH-VKF **RF3**, Bekleidung/Verputz noetig (Stroh verputzt bis 90 min) → `[[naturdaemmstoffe-kennwerte-sommerhitzeschutz]]`,
  Themenartikel `[[naturdaemmstoffe]]` (FAQ **F34** neu). Schliesst E12-Naturdaemmstoff-Restluecke. Offen:
  Produkt-Bemessungswerte/VKF-Anerkennungsnummern, konkrete Phasenverschiebung in Stunden je Aufbau.
- [x] D8 **Fenster & Verglasung — Uw/Ug/Uf, g-Wert, Dreifachglas, Ersatz vs. Sanierung**
  — belegt 2026-07-07 (EnergieSchweiz «Fenstersanierung» + HSLU/enbau-online + Minergie-Modul Fenster +
  nachhaltigleben.ch). Uw = flaechengewichtetes Mittel Ug/Uf + Randverbund ψg («ein Top-Ug nuetzt nichts
  bei schwachem Rahmen»); Dreifachglas Standard >90 % CH (Ug 0,4–0,8, Argon/Krypton 90 %); warme Kante
  Kunststoff ψg 0,035 → bis −20 % Verlust; g-Wert = Winter-Nutzen (Qs) ↔ Sommer-Risiko → aussenliegender
  Sonnenschutz + g_tot 0,1–0,15; Uw ≤1,0 ZH/Minergie · ≤0,80 Minergie-P. **Bauherren-Kernwarnung: Fenster
  nie allein vor der Wand ersetzen** (Taupunkt wandert an Waermebruecken → Schimmel; dichtere Fenster →
  lueften/Komfortlueftung). Kosten ~400/~1'200 CHF/m², Lebensdauer 25–40 J, 13 % Verlust, Wert +2–3,5 %
  → `[[fenster-verglasung-uw-g-wert]]`, Themenartikel `[[fenster-verglasung]]` (FAQ **F35** neu).
  Schliesst E3-Rest. Offen: numerische g-/Uf-Werte je Typ (SZFF-Datenblatt), Fenster-Energieetikette BFE.
- [x] D9 **GEAK — Gebaeudeenergieausweis der Kantone + Fenster-Energieetikette (FEA)**
  — belegt 2026-07-08 (geak.ch / EnDK; BFE voluntary labels). **GEAK** = amtliche Energieetikette Bestand,
  7 Klassen A–G (Huelle / Gesamtenergie inkl. Eigenstrom / direkte CO₂; A=null CO₂, Stufe 5 kg/m²·a);
  **GEAK Plus** = bis 5 Sanierungsvarianten + Beratungsbericht, **Pflicht ab CHF 10'000 Foerderung**,
  10 J gueltig, nur zertifizierte Expert:innen, kein Fixpreis (ZH/SZ foerdern 1'000/1'500), Abgrenzung
  Minergie (Ist-Zustand vs. Ziellabel) → `[[geak-gebaeudeenergieausweis-kantone]]`, Themenartikel
  `[[geak-gebaeudeenergieausweis]]` (FAQ **F36** neu). Zugleich **FEA** (BFE, freiwillig): Winter-Bilanz
  Uw,eq am Referenzfenster 1,55×1,15 m, Klasse A = solare Gewinne > Verluste → `[[fenster-energieetikette-fea-bfe]]`
  (schaerft F35). Offen: GEAK-Klassengrenzen kWh/m²·a (Produktreglement bildbasiert), FEA-Klassengrenzen A–G,
  numerische g-/Uf-Werte (SZFF). **Kantonsliste Handaenderungspflicht ergaenzt 2026-07-13** (Sekundaerquelle,
  keine amtliche Primaerquelle): 4 Westschweizer Kantone FR/VD/NE/JU verlangen GEAK bei Handaenderung
  gesetzlich, Deutschschweiz (inkl. ZH/SZ) aktuell keine Pflicht → `[[geak-gebaeudeenergieausweis-kantone]]`,
  FAQ F36 geschaerft. Offen bleibt: Gesetzesartikel-Nummern, ob Deutschschweizer Kantone nachziehen.
- [x] D10 **Komfortlueftung / kontrollierte Wohnungslueftung**
  — belegt 2026-07-09 (EnergieSchweiz gebaeudetechnik/lueftung + Minergie «Gute Raumluft» + energie-umwelt.ch).
  Vier Standardsysteme: **Komfortlueftung mit WRG** (Neubau-Standard), **Abluftanlage** (ohne WRG),
  **dezentrale Einzelraumlueftung** (WRG 75–90 %, Sanierung), **Grund-/Verbundlueftung** (Minergie ab 2019).
  Waermeverluste **>2/3 tiefer als Handlueftung** (ZH EN-105 ≥70 %); Aussenluftbedarf ~30 m³/h wach /15
  schlafend; CO₂ gut <1'000 ppm / Kopfweh ab 2'000 ppm. **Bauherren-Kernbotschaft: die zwei Mythen widerlegt**
  — Fenster **jederzeit oeffenbar** (man muss nur nicht mehr); **trockene Luft = Kaelte-Phaenomen jeder
  Lueftung**, gemildert durch **Enthalpietauscher (+bis ~10 % Feuchte)** + bedarfsgeregelten Betrieb.
  Minergie fordert kontrollierte Lufterneuerung, schreibt **kein System** vor; Fensterlueftung genuegt nicht.
  Filterwechsel ~1–2×/J, EFH-Invest ~CHF 12–25k (Markt-Richtwert), Gebaeudeprogramm foerdert bei Sanierung
  → `[[komfortlueftung-wohnungslueftung-ch]]`, Themenartikel `[[komfortlueftung]]` (FAQ **F37** neu).
  **WRG-Grad zentraler Anlagen numerisch + SIA-382/1-Auslegungsluftwechsel belegt 2026-07-13 (Run 53)**
  via vollständig gelesenem suissetec-Merkblatt SIA 382/1 (12 S.): offizielle Norm-Grenzwerte Temperatur-
  Bruttoeffizienz 73 % (70 % KVS), Feuchte-Bruttoeffizienz 50 %/Zielwert 60 %, IDA-Kategorien
  Aussenluft-Volumenstrom 29/57/18 m³/h pro Person, Raumluftfeuchte-Grenzen 30-62 % →
  `[[komfortlueftung-wrg-sia382-luftwechsel]]` auf established gehoben, FAQ F43 geschärft. Ergänzend
  BFE-Dimensionierungshilfe (Faustregeln Zuluft 30 m³/h/Zimmer, Abluft Küche/Bad 40+WC 20 m³/h, WRG je
  Bautyp Gegenstrom/Rotation ~80 % vs. Kreuzstrom 50-60 %) → `[[bfe-komfortlueftung-dimensionierungshilfe-1]]`,
  FAQ **F62** neu. Damit D10 vollständig soweit ohne kostenpflichtigen Normvolltext erreichbar.
- [x] D11 **Batteriespeicher (Heimspeicher) zur PV — «lohnt sich das?»**
  — belegt 2026-07-10 (Swissolar «Batteriespeicher» + EnergieSchweiz «Batterien», trianguliert mit Zogg 2023).
  Eigenverbrauch **~30 % → ~50 % (EMS + WP/E-Auto) → bis 70–90 % (Batterie)**, Autarkie 50–80 %;
  **Wirtschaftlichkeits-Schwelle ab ~35 % Eigenverbrauch — meist schon OHNE Batterie erreichbar** (der
  teuerste Hebel, nicht der erste). Kosten **600–900 CHF/kWh** inkl. WR + Installation; Dimensionierung
  **kWp × 1,5** bzw. **Jahresverbrauch/730**; LFP ~80 %, Lebensdauer 10–20 J; **Notstrom nur ~30 % der
  Systeme**. **Winter-Realitaet: Tagesspeicher, senkt Winter-Netzbezug nicht** — groesster Gratis-Speicher
  bleibt Gebaeudemasse + Warmwasser (via WP/EMS). Reihenfolge Lastverschiebung → thermischer Speicher →
  Batterie → `[[batteriespeicher-heimspeicher-pv-ch]]`, Themenartikel `[[batteriespeicher]]` (FAQ **F38** neu).
  Zugleich Raumklima-Faktenblatt KBOB/IPB destilliert → `[[behaglichkeit-raumklima-kbob-ipb]]` (aktive
  Befeuchtung bei normalem Klima nicht noetig; schaerft F37). Offen: belegte Amortisationszeit in Jahren
  (amtliche Quellen nennen bewusst keine), CHF/kWh-Kurve + Einspeiseverguetungen projektgenau.
  **Amortisationszeit als Marktangabe ergaenzt 2026-07-13** (3 kommerzielle CH-Solarratgeber uebereinstimmend:
  Speicher-Mehrpreis amortisiert in ca. 10-14 J, mit WP/E-Auto 8-9 J; explizit als Marktangabe markiert,
  keine amtliche Quelle) → `[[batteriespeicher-heimspeicher-pv-ch]]`, FAQ F38 geschaerft.
- [x] D12 **Elektromobilitaet — Ladeinfrastruktur am Wohngebaeude (EFH/MFH)**
  — belegt 2026-07-11 (EnergieSchweiz/Swiss eMobility «Ladeinfrastruktur in Mietobjekten» Nov 2024 +
  «im Bestandsbau» Sept 2025 + Zogg-Artikel HK-Gebaeudetechnik 4/24). Kernbotschaft: **nicht die einzelne
  Wallbox, sondern die vorausschauende Grunderschliessung aller Parkplaetze** (intelligente, ausbaufaehige
  Anlage + **dynamisches Lastmanagement**). Ausbau nach **SIA 2060** in drei Stufen: **C1 Power to Garage**
  (Erschliessung ab Hauptverteilung inkl. Messung fuers Lastmanagement) → **C2 Power to Parking** → **D
  Ready to charge**. Technik Typ 2 (AC), **11 kW** ueblich (1,4-22 kW), Anbindung ans EMS via Modbus.
  PV-Kopplung: E-Auto (20-100 kWh) als **flexibler Tagesverbraucher**, **Fruehling-Herbst bis 100 % PV**;
  Ladestation gebaeudeseitig **ab CHF 1'000** (guenstiger als stationaerer Speicher). Prozess nach SIA-Phasen
  real 6-9 Mt.; Mietobjekt-Refinanzierung ueber **Parkplatzmiete**; **V2H/V2G** kuenftig → `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]`,
  Themenartikel `[[elektromobilitaet-ladeinfrastruktur]]` (FAQ **F39** neu). Zugleich `[[wp-pv-eigenverbrauch-lastmanagement]]`
  um den E-Auto-Teil geschaerft (offener Punkt geschlossen). Offen: CHF/kW Grunderschliessung je Parkplatz
  (projektabhaengig), SIA 2060 kostenpflichtig, Foerderung Ladeinfrastruktur uneinheitlich, V2H/V2G-Reife.

- **D13 (Run 34, 2026-07-11)** — «Solarthermie oder Photovoltaik — und wie mache ich mein Warmwasser?»
  — belegt 2026-07-11 (EnergieSchweiz «Solarwärme» + Swissolar «Solarwärme»). Kernaussage: Dach nur
  **einmal** belegbar → für ein Haus mit **Wärmepumpe** heute meist **PV + WP-Boiler** besser als separate
  Solarthermie. Solarthermie EFH (4–6 m² Kollektor + ~450 l Speicher) = **60–70 % des Jahres-Warmwassers**,
  MFH ~1 m²/Person = 30–40 %, Kombianlage mind. 30 % Wärmebedarf; hoher Wirkungsgrad (~70–85 % vs. ~20 % PV)
  → weniger Dachfläche, aber Solarwärme kann **nur heizen** (Sommerüberschuss verpufft) → **Nutzen pro m²
  Dach übers Jahr** entscheidend. Solarthermie lohnt bei ganzjährig hohem Warmwasserbedarf (MFH zentral/
  Hotel/Schwimmbad/Prozesswärme); Wärmepumpenboiler = stromsparender WW-Standard; Förderung 2'400+1'000/kWth
  → `[[solarthermie-vs-pv-warmwasser-ch]]`, Themenartikel `[[solarwaerme-warmwasser]]` (FAQ **F40** neu).
  Offen: konkrete CHF-Investition Solarthermie-Anlage (amtlich nicht belegt), Wirkungsgrad 70–85 %/20 %
  aus Sekundärquellen, PVT-Hybridkollektoren (eigener Lauf).

- **D14 (Run 35, 2026-07-12)** — «Lohnt sich ein PVT-Kollektor (Strom + Wärme in einem Modul)?»
  — belegt 2026-07-12 (SPF Institut für Solartechnik OST Rapperswil/EnergieSchweiz, Schlussbericht
  «PVT Wrap-Up» 2017 + PVT Solar AG Produktangaben). Elektrisch ~15–20 %/thermisch ~65 % Wirkungsgrad,
  ~300 CH-Anlagen 2017; lohnt vor allem bei knapper Dachfläche, nicht als Renditeoptimierung gegenüber
  getrennten Systemen; **Kosten widersprüchlich** (CHF 210–650 vs. 1'100–1'600/m²) → `[[pvt-hybridkollektoren]]`,
  FAQ **F41** neu, ergänzt `[[solarwaerme-warmwasser]]`. Status emerging (Kosten nicht adversarial verifiziert).
  Löst den Run-34-Prioritätspunkt «PVT-Hybridkollektoren». Offen: aktuelle CH-Marktzahlen nach 2017.
- **D15 (Run 35, 2026-07-12)** — «Was kostet eine Solarthermie-Anlage bei mir konkret?»
  — belegt 2026-07-12 (hausinfo.ch 07.09.2020 + Meier Tobler AG, keine amtliche Primärquelle). Reine
  WW-Kompaktanlage CHF 15'000–20'000 installiert (Schnittmenge beider Quellen), Kombianlage unsicherer
  CHF 22'000–40'000 (Quellen widersprechen sich) → `[[solarthermie-investitionskosten-ch]]`, FAQ **F42** neu.
  Status emerging, Kombianlage speculative. Ergänzt `[[solarwaerme-warmwasser]]`.
- **D16 (Run 35, 2026-07-12)** — «Komfortlüftung vertieft: Norm, Luftmengen, Filter, Strom»
  — belegt 2026-07-12, **adversarial korrigiert**: SIA 382/1:2025 gilt weiterhin für alle belegten
  Gebäude inkl. Wohnbauten (Gerätekategorie WLA), SIA 382/5:2021 ist wohnbauspezifische Ergänzung, ersetzt
  SIA 382/1 nicht (erste Recherchefassung war falsch); Luftmengen 30/30/20 m³/h je Zimmer/Bad/Küche, Wohnung
  gesamt ≥50 m³/h (Bsp. 4½-Zi ~90 m³/h); Minergie-WRG ≥80 % Temperatur/≥60 % Feuchte (v2.0, 2023, nicht
  Stand 2011 wie erst zitiert) → `[[komfortlueftung-wrg-sia382-luftwechsel]]`, FAQ **F43** neu. **Filterklassen**
  Zuluft ISO ePM1 50 %/Abluft ISO Coarse 80 %, Stromverbrauch über EU-1254/2014-Energieeffizienzklasse
  A/A+ statt veraltetem 0,34-Wh/m³-Wert (Merkblatt SIA 2023, seit 2021 zurückgezogen) → `[[komfortlueftung-filterklassen-epm-stromverbrauch]]`,
  FAQ **F44** neu. Löst Run-34-Prioritätspunkt 3 vollständig, inkl. Aufdeckung zweier veralteter Zitate.
- **D17 (Run 35, 2026-07-12)** — «Welche Raumluftfeuchte ist komfortabel — muss ich befeuchten?»
  — belegt 2026-07-12 (enbau-online.ch, SIA-180-Zitat, + Lungenliga Schweiz). SIA 180:2014 toleriert
  30–70 % rel. Feuchte als Komfortband, Praxis-Zielband 40–60 %; 30 %-Untergrenze als quantitative
  Planungsanforderung (90 % der Nutzungszeit ohne aktive Befeuchtung) → `[[raumluftfeuchte-komfortbereich-sia180]]`,
  FAQ **F45** neu, ergänzt `[[behaglichkeit-raumklima-kbob-ipb]]`. Status emerging (SIA-180-Volltext nicht
  direkt eingesehen, keine adversariale Zweitprüfung). Löst Run-34-Prioritätspunkt 4.
- **D18 (Run 35, 2026-07-12)** — «Was bedeutet meine GEAK-Klasse in kWh — feste Tabelle?»
  — belegt 2026-07-12, wichtige Korrektur: der GEAK hat KEINE festen kWh/m²·a-Grenzwerte je Klasse
  A–G, sondern klassiert RELATIV zu einem individuell berechneten Referenzgebäude (R = Projektwert/
  Referenzwert × 100; A=0-50 %, B=50-100 %, …, G=>300 %) — eine im Web kursierende feste Zahlen-Tabelle
  wurde als falsch widerlegt → `[[geak-klassengrenzen-relative-klassierung]]`, FAQ **F46** neu, adversarial
  am Original-PDF (EnDK-Normierungsdokument v2.1.0, Tab. 40/41) bestätigt, **established**. Löst
  Run-34-Prioritätspunkt 5 vollständig (FEA-Klassengrenzen bleiben offen, separate Frage).

- **D19 (Run 48, 2026-07-13)** — «MuKEn 2025 Modul G — welche konkreten CO₂-Grenzwerte gelten?»
  — belegt 2026-07-13 (MuKEn-2025-Volltext Art. 1.39 via alternativem Web-Fetch-Reader, zweimal
  identisch, zusätzlich Google-Suchindex-Bestätigung). Basisgrenzwerte 12,4–19,9 kg CO₂-eq/m²EBF·a
  je Gebäudekategorie (Wohnen MFH 12,4, Verkauf/Spitäler 19,9), 5,5 kg CO₂-eq/m²(GF−EBF)·a
  unbeheizte Flächen, Zuschläge Erdsonde +0,3/PV +7,1/Solarthermie +5,6 →
  `[[muken-2025-modul-g-co2-grenzwerte]]`, FAQ F47 geschärft. Status `emerging` (Web-Fetch-Extraktion,
  nicht lokal am Original gegengelesen) — löst den in Run 47 gemeldeten Negativbefund auf. Schliesst
  den Offen-Punkt aus B4/D2 zu Modul-G-Zahlen.
- **D20 (Run 48, 2026-07-13)** — «Sanieren oder Ersatzneubau — ab wann rechnet sich der Neubau
  ökologisch?» — belegt 2026-07-13 (BAFU/Wüest Partner 2020 amtliche Studie + Wüest-Partner-Blog
  2022/2024). Ergebnis: **keine belegte CH-Jahreszahl** für die Amortisationsschwelle gefunden;
  Minergie-Ersatzneubau kompensiert eigene graue Emissionen «innert 50 Jahren» (gegen sich selbst,
  nicht gegen die Sanierung), Materialintensität bleibt beim Ersatzneubau durchwegs höher, «in den
  meisten Fällen» schneidet die kleine energetische Sanierung gesamthaft besser ab; CO₂-Preis-
  Schwellenwert ~CHF 1'000/t für ökologisch-ökonomisches Gleichgewicht →
  `[[graue-energie-sanieren-vs-neubau-amortisation]]`, FAQ F9 geschärft. Status `emerging`. Schliesst
  D2-Offenpunkt «Sanieren-vs-Neubau-Amortisationsschwelle» (ehrlich als unbelegt dokumentiert, nicht
  erfunden).
- **D21 (Run 48, 2026-07-13)** — «Strohdämmung — welcher Bemessungswert, welcher Brandschutz?»
  — belegt 2026-07-13 (FASBA/ETA-17/0247 + BauNetz Wissen, DE/EU-Herkunft). λ ≈ 0,049–0,052 W/(m·K)
  quer zur Halmrichtung (Standard) vs. 0,080 in Halmrichtung; Feuerwiderstand verputzt 30–90 Minuten
  (DE-Prüfgrundlage AbP MPA Braunschweig); **kein CH-VKF-Registereintrag für Stroh auffindbar**
  (bsronline.ch geprüft) — ehrlich als offene CH-Lücke dokumentiert →
  `[[strohdaemmung-bemessungswert-brandschutz]]`, FAQ F34 geschärft. Schliesst A7-Offenpunkt
  «Bemessungs-λ Stroh, Brand/Feuchte» (Herkunft explizit DE/EU, Echo-Schutz gewahrt); ZEV/Solarsplit-
  Modell aus A7 bleibt offen.
- **D22 (Run 48, 2026-07-13)** — «g-Werte je Verglasungstyp — konkrete Zahlen ohne Sonnenschutz?»
  — belegt 2026-07-13 (Flachglas Schweiz vetroTherm/vetroSol + DE-Sekundärquellen). Zweifachglas
  g ~0,58–0,62, Dreifachglas Standard g ~0,61, Sonnenschutzglas g 0,17–0,37 je Beschichtung; CH-
  amtliche Typentabelle weiterhin nicht auffindbar, Status `needs-verification` →
  `[[g-werte-verglasungstypen-ch]]`, FAQ F35 geschärft. Schliesst den D8/E3-Offenpunkt «belastbare
  g-Werte je Verglasungstyp» orientierend (Herstellerdaten statt amtlicher Quelle).
- **Vertiefung SIA-2060-Kosten (Run 48, 2026-07-13)** — Kanton-ZH-Primärquelle (AWEL-Infoblatt,
  13.10.2020) jetzt per `pdftotext -layout` vollständig im Volltext gelesen, bestätigt die bisherige
  Kostentabelle zahlengenau (A 65/B 180/C1 350/C2 400 CHF/Wohnung, D 3'100 CHF/E-Parkplatz); trotz
  Prüfung von 6 weiteren Stellen **keine echte dritte, unabhängige Quelle** gefunden →
  `[[sia-2060-kosten-ladeinfrastruktur-vertiefung]]`, FAQ F39 geschärft. Status bleibt `emerging`.
  Schliesst D12-Offenpunkt «SIA 2060 kostenpflichtig» orientierend (Primärquelle jetzt gelesen, echte
  Zweitquelle bleibt offen).

- **D23 (Run 49, 2026-07-13)** — Zwei explizite Recherche-Sackgassen aus dem Run-48-Prioritätenblock
  geprüft und ehrlich als Sackgasse dokumentiert (kein neuer Fund, aber verhindert Doppel-Recherche):
  Empa-Projekt «DemoUpCARMA» betrifft Beton-Carbonatisierung, nicht Sanieren-vs-Neubau; Uni-Bern-
  Foliensatz «Sanierung oder Ersatzneubau?» (Lenel) ist bildbasiert ohne Zahlentext;
  `sia2060online.ch` per WebFetch bestätigt als reines interaktives JS-Tool (Werkzeug-Grenze wie
  Kantonsrat ZH E31). Kein Curriculum-Punkt geschlossen, aber Backlog bereinigt →
  `[[graue-energie-sanieren-vs-neubau-amortisation]]`, `[[sia-2060-kosten-ladeinfrastruktur-vertiefung]]`, QUESTIONS E36.
- **D24 (Run 50, 2026-07-13)** — «LEG-Gemeinschaftsstrom: was zahlt/bekommt man in Rp/kWh
  ungefähr?» — belegt 2026-07-13 (gwa-energie.ch VNB-Kostenbeispiel + upgrid.ch Solar-Ratgeber,
  beide **nicht amtlich**, explizit als Marktbeispiel markiert). VSE-Kernaussage bestätigt: Preisbildung
  in der LEG frei wählbar, keine regulatorische Vorgabe. Marktbeispiel: 12-15 Rp./kWh LEG-Gemeinschaftsstrom
  vs. ~7 Rp./kWh Referenz-Einspeisevergütung vs. 27-30 Rp./kWh Netzstrom; 30-kWp-MFH-Rechenbeispiel ca.
  CHF 600/Jahr Mehrertrag → `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` ergänzt, FAQ F33 geschärft,
  `[[pv-eigenverbrauch-zev]]` ergänzt. Schliesst D6-Offenpunkt «Rp/kWh-Zahlenmuster» orientierend (amtliche
  VSE-Branchenempfehlung selbst bleibt unpaginiert/nicht seitengenau gelesen — offen).

- **D25 (Run 51, 2026-07-13)** — «MuKEn-2025-Grenzwerte graue Energie: gibt es ein Rechenbeispiel,
  und lassen sich die Zahlen unabhängig verifizieren?» — belegt 2026-07-13 (Minergie/ecobau
  «Berechnungsmethodik Grenzwerte THGE in Erstellung», 12.09.2023, lokal per Read-Tool aus dem PDF
  gelesen, S. 1-9 vollständig). Bestätigt die D19-Zahlen (12,4-19,9 kg CO₂-eq/m²EBF·a, unbeheizt 5,5,
  Zuschläge Erdsonde +0,3/PV +7,1/Solarthermie +5,6) **zahlengenau** aus einer zweiten, methodisch
  verwandten Primärquelle → Status von `emerging` auf **established** gehoben. Liefert zusätzlich das
  bisher fehlende **Rechenbeispiel**: PV-Zuschlag für 65 m² Panelfläche/42 % Eigenverbrauch/175 m² EBF
  = 1,72 kg CO₂-eq/m²EBF·a (nur Eigenverbrauch zu 100 %, Einspeisung nur zu 40 % angerechnet) →
  `[[muken-2025-modul-g-co2-grenzwerte]]`, FAQ F47 geschärft. Löst den Run-50/D19-Prioritätspunkt
  «Rechenbeispiel MuKEn-2025-Formel» vollständig.

- **D26 (Run 52, 2026-07-13)** — «VSE-Branchenempfehlung LEG (BD-LEG) seitengenau als Primärquelle
  finden und lesen — bestätigt sich die 40 %/20 %-Rabattlogik und die 5 %-Voraussetzung?» — belegt
  2026-07-13. Die amtliche Primärquelle «Branchenempfehlung Lokale Elektrizitätsgemeinschaften (LEG),
  BD LEG – CH 2025 V2» (VSE/AES, verabschiedet 27.06.2025, offiziell publiziert auf strom.ch) wurde
  gefunden (strom.ch/de/media/15458/download), lokal heruntergeladen und vollständig per Read-Tool
  gelesen (35 Seiten). **Ergebnis:** alle bisher aus Sekundärquellen (EKZ) übernommenen Kernzahlen
  bestätigen sich zahlengenau (40 %/20 %-Netzentgelt-Rabatt, ≥5 %-Produktionsverhältnis, keine
  Solidarhaftung, freie interne Preisbildung). Zusätzlich neu erschlossen: die genaue
  Anschlussleistungs-Formel + Rechenbeispiel (19,2 kVA), das Gründungs-Timing (Anmeldeanspruch erst ab
  1.1.2026, frühestens aktiv 1.4.2026 wegen 3-Monats-Frist), die vollständige Speicher-Übergangsregelung
  (Kap. 8, vier Anwendungsfälle, i.d.R. ohne Zusatzzähler) sowie Vergütungs-/HKN-Regeln (Kap. 9-10:
  LEG-interner Strom trägt automatisch die Qualität der LEG-Produktionsanlage, keine separate
  Stromkennzeichnung) → `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` auf **established,
  primärquellen-verifiziert** gehoben, FAQ F33 + Themenartikel `[[pv-eigenverbrauch-zev]]` geschärft.
  Löst den seit D6/D24/E37 offen geführten Prioritätspunkt «VSE-Branchenempfehlung LEG seitengenau»
  vollständig ab.

- **D28 (Run 54, 2026-07-13)** — «Brauche ich bei meinem Minergie-Neubau zwingend einen
  Blower-Door-Test, und welcher n50/qE50-Grenzwert gilt?» — belegt 2026-07-13 (Minergie/theCH
  RiLuMi Version 2022.1, S. 1-8 vollständig via Read/PDF-Bildextraktion gelesen — erstes echtes
  Primärdokument dieses Themas, da das PDF-Inventar seit 2026-07-13 vollständig abgearbeitet
  ist). Grenzwerte qE50: Minergie Neubau ≤1,2/Erneuerung ≤1,6, Minergie-P/-A Neubau ≤0,8/
  Erneuerung ≤1,6 m³/(h·m²); Messnorm SN EN ISO 9972 (löst EN 13829 ab), ±15 % Gesamt-
  messunsicherheit, Konzeptpflicht schon bei Minergie-Basisstandard, Messpflicht erst ab -P/-A →
  `[[rilumi-minergie-luftdichtheit-n50]]`, FAQ **F63** neu. Neues Thema, kein Curriculum-Punkt
  bisher vorhanden — eröffnet neuen Themenkomplex «Luftdichtheit». **Kap. 4-8 vollständig
  nachgezogen 2026-07-13 (Run 55)** via direktem curl-Download + pdftotext (51 S. Volltext statt
  nur Bildextraktion S.1-8): Luftdichtheitskonzept-Pflichten je Standard/Gebäudetyp, Messzonen-
  Stichprobenlogik (Tabelle 7), objektspezifischer Grenzwert bei Erweiterungen/Umnutzungen
  (Formel), provisorische Abdichtungen (Tabelle 8), Messbericht-Pflichtangaben — UND wichtiger
  Zusatzfund: **SIA 180:2014 selbst setzt Luftdichtheits-Grenzwerte für JEDES Gebäude**
  (Neubau 2,4/1,6 natürlich/mechanisch belüftet, Umbau 3,6/2,4 m³/(h·m²)), unabhängig von
  Minergie — Minergie verschärft nur die ohnehin geltende SIA-Norm. Status established, FAQ F63
  geschärft. **Damit vollständig** (offen nur noch: CHF-Kosten Blower-Door-Test in der Schweiz —
  fehlt in dieser Quelle vollständig, reines Marktthema).
- **D29 (Run 54, 2026-07-13)** — «Muss ich mein Haus an einen kommunalen Fernwärme-Wärmeverbund
  anschliessen, wenn die Gemeinde einen baut?» — belegt 2026-07-13 (§ 295 Abs. 2 PBG ZH via
  Sekundärzitate ortsplanung.ch/Baurekursgericht-Praxisübersicht + Stadt-Zürich-Merkblatt direkt
  gelesen). Keine generelle Anschlusspflicht; Kanton/Gemeinde können bei ≥70 % Abwärme/
  erneuerbar + wirtschaftlicher Gleichwertigkeit eine anfechtbare Anschlussverfügung erlassen,
  gestützt auf die kommunale Energieplanung (Wärmeversorgungsgebiete); Stadt Zürich: 8-Jahres-
  Übergangsfrist bei bestehenden fossilen Heizungen → `[[fernwaerme-anschlusspflicht-zh]]`,
  FAQ **F64** neu. **Wortlaut § 295 Abs. 1+2 direkt verifiziert 2026-07-13 (Run 55)** via
  ortsplanung.ch (per curl gegengelesen, keine WebFetch-Zusammenfassung): § 295 PBG hat nur
  **zwei** Absätze (nicht drei wie zunächst vermutet) — Abs. 1 ist eine allgemeine
  Heizzentralen-Ausrüstungspflicht bei luftverschmutzenden Brennstoffen, Abs. 2 die eigentliche
  Anschlusspflicht; der Gesetzestext selbst nennt **keine feste 70‑%-Schwelle und keine feste
  Jahreszahl** — beide konkreten Werte stammen aus dem städtischen Vollzugs-Merkblatt, nicht aus
  dem PBG. Status established, FAQ F64 geschärft. Löst den Run-54-Prioritätspunkt vollständig
  (die amtliche zhlex.zh.ch-PDF-Datei selbst wurde weiterhin nicht direkt geöffnet — geringes
  Restrisiko, siehe Destillat).

- **D27 (Run 53, 2026-07-13)** — «Welchen Wärmerückgewinnungsgrad verlangt die Norm SIA 382/1
  selbst (nicht nur Minergie), und wieviel Luft braucht ein Zimmer/eine Wohnung als schnelle
  Faustregel?» — belegt 2026-07-13. Das suissetec-Merkblatt zur Norm SIA 382/1:2025 wurde
  diesmal per curl direkt heruntergeladen und **vollständig lokal per pdftotext gelesen** (12 S.,
  vorher nur eine Web-Fetch-Zusammenfassung ohne Tabellenwerte). Ergebnis: die Norm selbst setzt
  als gesetzliches Minimum nur **73 % Temperatur-Bruttoeffizienz** (70 % bei
  Kreislaufverbundsystemen), **50 % Feuchte-Bruttoeffizienz** (Zielwert 60 %) — deutlich
  weniger streng als die freiwillige Minergie-Anforderung (≥80 %/≥60 %); zusätzlich IDA-
  Kategorien für Aussenluft-Volumenstrom pro Person (29/57/18 m³/h) und Raumluftfeuchte-Grenzen
  30-62 % → `[[komfortlueftung-wrg-sia382-luftwechsel]]` von emerging auf **established**
  gehoben, FAQ F43 geschärft. Ergänzend wurde die BFE-Dimensionierungshilfe (praxisnahe
  Faustregeln, Zuluft 30 m³/h/Zimmer, Abluft Küche/Bad 40 + WC 20 m³/h, WRG je
  Wärmetauscher-Bautyp 50-80 %) gefunden und destilliert, mit explizitem Hinweis, dass ihre
  Grundlage (SIA-Merkblatt 2023) 2021 zurückgezogen wurde → `[[bfe-komfortlueftung-dimensionierungshilfe-1]]`,
  FAQ **F62** neu. Löst den Run-51/Run-52-Prioritätspunkt «WRG-Grad zentraler Anlagen numerisch,
  SIA-382/1-Auslegungsluftwechsel» aus D10 vollständig ab (nur der Uf-Werte-SZFF-Kandidat blieb
  erneut ergebnislos — dritter erfolgloser Versuch, siehe QUESTIONS E40).

- **D30 (Run 56, 2026-07-13)** — «Wieviel Lärm darf eine aussen aufgestellte Wärmepumpe
  verursachen, und wie wird das berechnet?» — belegt 2026-07-13. PDF-Inventar bleibt seit
  Run 46 vollständig abgearbeitet, daher neuer Web-Themenkomplex statt PDF-Transfer. Primärquelle
  Cercle Bruit «Vollzugshilfe 6.21» (1.11.2024) per curl heruntergeladen (WebFetch scheiterte an
  der Adobe-InDesign-PDF-Struktur) und vollständig per pdftotext gelesen (22 S. inkl. Anhang 4
  Fallbeispiel). Ergebnis: Formel `Leq = LWA2°C − 11 dB + DC − 20·log(s/s0)` und
  `Lr = Leq + K1 + K2 + K3 + 10·log(t/t0)`, Planungswert-Fallbeispiel ES II Nacht 45 dB(A) (44 dB(A)
  erreicht), Vorsorgeprinzip-Schwelle 1 % Investitionskosten/3 dB Wirkung, Massnahmen-Kaskade
  Standort→Modellwahl→bauliche Massnahme → `[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`,
  neuer Themenartikel `[[waermepumpen-laermschutz]]`, FAQ **F65** neu, Status established (amtsnahe
  Primärquelle vollständig gelesen).

- **D31 (Run 56, 2026-07-13)** — «Gilt eine Solardachpflicht nur im Kanton Zürich, oder auch in
  anderen Kantonen?» — belegt 2026-07-13. Web-Recherche (CKW, Kanton Bern WEU, solaralag.ch,
  Presseecho) trianguliert: nationaler Mindeststandard Art. 45a/45b EnG (Mantelerlass,
  Volksabstimmung 9.6.2024) verlangt Solarpflicht ab 300 m² Gebäudefläche bei Neubauten; mehrere
  Kantone verschärfen deutlich — Bern ab 1.1.2026 ohne Grössenschwelle (10 % aGF, ≥60 % geeignete
  Dachfläche, plus Parkplatz-Pflicht), Luzern 50 % Dachfläche bei JEDEM Neubau inkl. EFH, St. Gallen
  10 W/m² EBF + kommunale Zusatzkompetenz, Basel-Landschaft seit 1.10.2024 «soweit technisch/
  wirtschaftlich möglich» → `[[solarpflicht-national-mantelerlass-kantone]]`, neuer Themenartikel
  `[[solarpflicht-schweiz-kantone]]`, FAQ **F66** neu, Status emerging (Bundesregelung fest belegt,
  nicht alle 26 Kantone im Detail geprüft, Gesetzestext Art. 45a EnG nicht im Wortlaut gelesen).

- **D32 (Run 56, 2026-07-13)** — Run-55-Prioritätspunkt 2 abschliessend gelöst: «Amtliche
  PDF-Fassung von § 295 PBG direkt auf zhlex.zh.ch öffnen» — die amtliche Gesetzessammlung LS 700.1
  liess sich diesmal per curl direkt laden (vorheriger WebFetch-Versuch in Run 54/55 scheiterte an
  reiner Navigationsseite) und mit pdftotext vollständig als Text extrahieren (96 S.). § 295 Abs. 1+2
  Wortlaut ist **wortidentisch** mit der zuvor über ortsplanung.ch verifizierten Fassung (Run 55) —
  die Primärquellen-Kette für `[[fernwaerme-anschlusspflicht-zh]]` ist damit lückenlos geschlossen,
  kein Restrisiko einer Textabweichung mehr.

- **D33 (Run 56, 2026-07-13)** — Run-55-Prioritätspunkt 1 recherchiert, aber **ergebnisoffen**:
  «CHF-Kosten eines Blower-Door-Tests in der Schweiz». Alle recherchierten Schweizer Anbieter
  (Vesica, Corak, Innoplan, blower-door-swiss.ch, Creoven, Sager) veröffentlichen keine Preise;
  einzige gefundene Zahl ist eine deutsche Vergleichsgrösse (⌀ 325 Euro netto EFH, Creoven-Ratgeber),
  die bewusst NICHT als Schweizer Richtwert übernommen wird (andere Marktstruktur, Leitplanke
  «nichts erfinden»). In `[[rilumi-minergie-luftdichtheit-n50]]` als bewusst offene Marktfrage
  dokumentiert statt stillschweigend fallengelassen — für eine belastbare Zahl wäre eine direkte
  Anbieteranfrage nötig, das ist eine Grenze der Web-Recherche.

- **D34 (Run 57, 2026-07-14)** — «Welcher Lärmpegel gilt in einer ruhigen Wohnzone (ES I) oder
  einer Mischzone (ES III) für meine Wärmepumpe — nicht nur im ES-II-Beispiel?» — belegt
  2026-07-14. Die vollständige Anhang-6-LSV-Planungswerttabelle (ES I-IV, Tag/Nacht) wurde über
  zwei unabhängige Web-Reproduktionen (ortsplanung.ch-Volltextfetch + separate WebSearch-Synthese)
  ermittelt, beide zahlengenau deckungsgleich: ES I 50/40, ES II 55/45, ES III 60/50, ES IV 65/55
  dB(A) Tag/Nacht. Der Fedlex-Primärtext selbst ist JavaScript-gerendert und liess sich per
  WebFetch/curl nicht extrahieren (Werkzeug-Grenze, analog zu `kantonsrat.zh.ch`) →
  `[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]` ergänzt, FAQ F65 geschärft. Löst den
  Run-56-Prioritätspunkt 3 vollständig.
- **D35 (Run 57, 2026-07-14)** — «Gilt die Solarpflicht auch in Aargau, Basel-Stadt und
  Graubünden — und wie streng?» — belegt 2026-07-14 (Web-Recherche, mehrere Quellen trianguliert).
  **Aargau** bleibt beim Bundesminimum: die Grossrats-Kommission empfiehlt eine eigene,
  weitergehende kantonale Solarpflicht mit 9:6 zur Ablehnung (Kanton hatte bereits 2020 eine
  eigenständige Vorlage an der Urne verworfen) — ein Gegenbeispiel zur Verschärfungs-Tendenz der
  übrigen Kantone. **Basel-Stadt** verfolgt einen andersartigen Ansatz («Solaroffensive»): PV-
  Pflicht auf **Bestandsbauten** >100 m² Dachfläche, Ersatzabgabe CHF 1'500/fehlendem kW, 15-jährige
  Übergangsfrist — Regierungsrat hat verabschiedet, Grosser Rat berät noch (nicht Gesetz).
  **Graubünden** hat seit 1.1.2021 eine Eigenstromerzeugungspflicht bei Neubauten mit Befreiung bei
  Globalstrahlung <1'250 kWh/m²·Jahr oder Minergie-Standard; die genaue quantitative Vorgabe
  (KEnV Art. 23) liess sich nicht auffinden → `[[solarpflicht-national-mantelerlass-kantone]]`
  ergänzt, FAQ F66 geschärft. Löst den Run-56-Prioritätspunkt 2 teilweise (3 von mehreren
  ausstehenden Kantonen; Basel-Landschaft-Vertiefung, Waadt, Genf, Tessin bleiben offen).

- **D36 (Run 58, 2026-07-14)** — «Solarpflicht in der Westschweiz und im Süden — Waadt, Genf,
  Tessin, Solothurn, Wallis, Schaffhausen?» — belegt 2026-07-14 (Web-Recherche, kantonale
  Amtsseiten + Gesetzessammlungen trianguliert). **Waadt** (LVLEne, ab ca. 2027): 20 % Strombedarf
  erneuerbar PLUS automatische Pflicht bei jeder grösseren Dachsanierung — strenger als Bern.
  **Genf** (seit 1.9.2025, Volksentscheid 84,3 % Ja): keine Flächenschwelle, alle geeigneten
  Dachflächen bei Neubau/Sanierung, ab 2030 zusätzlich Grossverbraucher-Pflicht. **Tessin**
  (seit 1.1.2024): 10 W/m² neue EBF gedeckelt auf 30 kW, gleiches Bemessungsmodell wie die
  ZH-Vorlage. **Solothurn** (seit 1.1.2023): bleibt inhaltlich beim Bundesminimum 300 m²/20 % aGF.
  **Wallis** (seit 1.1.2025): 40 % Baufläche solar plus fossiles Heizungsverbot Neubau, zusätzlich
  Bestandesbauten >500 m² binnen 25 Jahren pflichtig — die am weitesten in den Bestand reichende
  Frist aller bisher geprüften Kantone. **Schaffhausen**: Solarinitiative am 8.3.2026 mit 60,6 %
  Nein abgelehnt, drittes Ablehnungs-Gegenbeispiel neben Aargau und der Berner Zusatzinitiative →
  `[[solarpflicht-national-mantelerlass-kantone]]` ergänzt, Themenartikel
  `[[solarpflicht-schweiz-kantone]]` ergänzt, FAQ F66 geschärft. Löst den Run-57-Prioritätspunkt 2
  weitgehend (14 von 26 Kantonen recherchiert; Basel-Landschaft-Vertiefung, Jura, Neuenburg,
  Freiburg, Glarus, Uri, Schwyz, Nidwalden, Obwalden, Zug, Appenzell AR/AI bleiben offen).
  **Hinweis:** dieser Lauf war technisch eine Fortsetzung einer unvollständig abgebrochenen
  Vorgänger-Session (Destillat war bereits ergänzt, Register/FAQ/Output-Report fehlten noch) —
  Registerpflege in diesem Lauf nachgeholt.

- **D39 (Run 61, 2026-07-14)** — «Kann ich Fassadenbegrünung als Hitzeschutz einsetzen, und wie
  verhält sie sich zu Fassaden-PV?» — belegt 2026-07-14. Neuer Themenkomplex gemäss Run-60-
  Prioritätspunkt 3 (nach Abschluss der 26-Kantone-Solarpflicht-Erhebung). Web-Recherche
  (WebSearch + WebFetch): Kanton Zürich «Massnahmen gegen Hitze» (amtliche Kantonsseite) liefert
  den Kühlungseffekt (PET-Reduktion ⌀ 4,8 °C in der unmittelbaren Umgebung) und die klare
  Empfehlung bodengebunden vor wandgebunden sowie den ausdrücklichen **Zielkonflikt mit
  Fassaden-PV** um dieselbe Fläche; Hydroplant AG (CH-Fachbetrieb) liefert eine zweite,
  deutlich höhere Kostenbandbreite als der Kanton — bewusst beide Zahlen nebeneinander
  dokumentiert statt geglättet (Leitplanke «nichts erfinden»); Stadt Zürich Förderprogramm
  Stadtgrün liefert Förderkennzahlen (50 % Reglements-Beitrag, Deckel CHF 1 Mio., ⌀ CHF 17'700
  aus 113 bewilligten Projekten) → `[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]`, neuer
  Themenartikel-Abschnitt in `[[sommerlicher-waermeschutz]]` (5. Stellschraube), FAQ **F67** neu,
  Status emerging (Alltags-Fördersatz pro Projekt/m² und quantitativer kWh-Effekt auf die
  Kühllast bleiben offen).

- **D41 (Run 63, 2026-07-14)** — «Gilt im Kanton Schwyz (JANS-Fokuskanton) dieselbe
  Ausnahmebewilligungspraxis wie in Zürich für Aussenlärm?» — belegt 2026-07-14. Löst den
  Run-62-Prioritätspunkt 2 (SZ-Vertiefung des Run-62-Themenkomplexes Aussenlärm). Amtliches
  Merkblatt des Umweltdepartements Kanton Schwyz (AfU, 29.01.2021, per curl+pdftotext vollständig
  gelesen, 9 S.) zeigt drei substanzielle Abweichungen von der ZH-Praxis: (1) das
  grenzwertkonforme Fenster muss bereits als **Grundvoraussetzung** ≥ 10 % der Bodenfläche
  messen (nicht erst 5 % als Ausnahmeregel), (2) Ausnahmebewilligungen sind **nur bis 3 dB über
  dem Immissionsgrenzwert** möglich — darüber gibt es in SZ keine Ausnahme (Hartgrenze, kein
  gestaffeltes Regime), (3) **Festverglasungen sind für lärmempfindliche Wohn-/Arbeitsräume
  grundsätzlich nicht bewilligungsfähig** (Regierungsratsbeschluss Nr. 652/2020) — der in Zürich
  zulässige Ausweg «Festverglasung ab 70 dB Tag/60 dB Nacht» existiert in Schwyz nicht. Zusätzlich
  vollständige SZ-Raumnutzungstabelle und Zuständigkeiten (AfU für Ausnahmebewilligung, Gemeinde
  für Schallschutznachweis) erschlossen → neues Destillat
  `[[cerclebruit-sz-merkblatt-laermbelastete-gebiete]]` (status established, amtliche
  Primärquelle vollständig gelesen), Ergänzung `[[aussenlaerm-schallschutzfenster-strasse-bahn]]`
  und `[[schallschutz-sia181]]`, FAQ F68 geschärft. Nebenbefund: die kommerziellen
  Schallschutzfenster-Klassentabellen «II-V» (fensterversand.ch) und «SSK 1-6» (fensterhero.com,
  DIN 4109) sind zwei unterschiedliche, nicht deckungsgleiche Skalen — als solche dokumentiert
  statt vermischt.

- **D37 (Run 59, 2026-07-14)** — Vier weitere Kantone recherchiert, darunter der zweite
  JANS-Fokuskanton **Schwyz**: dort wurde eine Motion für eine kantonale Solarpflicht am
  22.10.2025 vom Kantonsrat mit 50:45 Stimmen abgelehnt (Regierungsrat war ursprünglich dafür) —
  Schwyz bleibt beim Bundesminimum (300 m²), keine kantonale Zusatzpflicht. **Uri** zeigt eine
  Kehrtwende: Landrats-Verordnung mit 100-m²-Schwelle (Nov. 2023) vom Volk am 22.9.2024 mit
  >64 % Nein verworfen, moderatere Teilrevision (300 m² = Bundesminimum) am 8.3.2026 mit 75 % Ja
  angenommen, Inkrafttreten voraussichtlich Herbst 2026. **Zug** verschärft klar: seit 1.1.2023
  Eigenstromerzeugungspflicht für alle Neubauten ohne Flächenschwelle (MuKEn-2014-Modul E).
  **Neuenburg** befindet sich noch in Gesetzesrevision (15 W/m² SRE vorgesehen), noch nicht in
  Kraft → `[[solarpflicht-national-mantelerlass-kantone]]` ergänzt, Themenartikel
  `[[solarpflicht-schweiz-kantone]]` ergänzt, FAQ F66 geschärft. Damit **18 von 26 Kantonen**
  recherchiert; weiterhin offen: Basel-Landschaft-Vertiefung, Jura, Freiburg, Glarus, Nidwalden,
  Obwalden, Appenzell Ausserrhoden/Innerrhoden.

- **D38 (Run 60, 2026-07-14)** — Die letzten acht Kantone recherchiert — **die Solarpflicht-
  Erhebung aller 26 Kantone ist damit erstmals abgeschlossen**. **Basel-Landschaft** liefert das
  Lehrstück «Pflicht kann auch wieder wegfallen»: das Kantonsgericht hatte die Dekrets-Grundlage
  der ursprünglichen Neubau-Pflicht für ungenügend erklärt, die daraufhin lancierte Solar-
  initiative (inkl. Nachrüstpflicht Bestandsbauten) wurde am 8.3.2026 mit rund 70 % Nein klar
  verworfen — BL bleibt beim Bundesminimum, nur kommunale BZO-Option bleibt. **Obwalden** zeigt
  den umgekehrten Schwebezustand: neues PBG (verabschiedet 4.12.2025) mit Solarpflicht für
  Neubauten/Sanierungen, dagegen läuft seit 22.1.2026 eine SVP-Referendumsinitiative — Ausgang
  bei Redaktionsschluss offen. **Glarus** (seit 2023, Vollzug laut Kanton «reibungslos», drei
  Ausnahmegesuche mit Ersatzabgabe), **Nidwalden** (seit 1.11.2021, 10 W/m² EBF, Gemeinschafts-
  anlage/SonnenDach zählt als Erfüllung Art. 19b) und **Appenzell Ausserrhoden** (seit 1.1.2023,
  Art. 10a EnG/Art. 19abis EnV, alle Neubauten ohne Schwelle) haben eine Eigenstromerzeugungs-
  pflicht bereits in Kraft. **Freiburg** verlangt 10 W/m² EBF (MuKEn-2014), exaktes Inkraft-
  tretensdatum der Klausel nicht abschliessend verifizierbar. **Jura** koppelt die Pflicht an
  beheizte Energiebezugsfläche (OEn seit April 2019, MoPEC), Revision für 2026/2027 geplant.
  **Appenzell Innerrhoden** bleibt als einziger der 26 Kantone ein ungeklärter Quellenwiderspruch:
  mehrere Sekundärquellen behaupten eine PV-Pflicht, die amtliche Primärseite ai.ch nennt für
  Solaranlagen jedoch nur eine Melde-/Bewilligungspflicht ohne erkennbare Installationspflicht —
  bewusst nicht geglättet, sondern als offen dokumentiert (Leitplanke «nichts erfinden») →
  `[[solarpflicht-national-mantelerlass-kantone]]` ergänzt, Themenartikel
  `[[solarpflicht-schweiz-kantone]]` ergänzt, FAQ F66 geschärft. Status bleibt **emerging**
  (mehrere W/m²-/%-Sätze und der AI-Widerspruch offen), aber die Erst-Erhebung ist **vollständig
  (26/26 Kantone)**.

- **D40 (Run 62, 2026-07-14)** — «Mein Grundstück liegt an einer lauten Strasse/Bahnlinie —
  reicht ein gutes Schallschutzfenster, um bauen zu dürfen?» — belegt 2026-07-14. Nächster
  fälliger Themenkomplex gemäss Run-61-Prioritätspunkt 3 (Pendant zum bereits erschlossenen
  Wärmepumpen-Lärmschutz F65). Web-Recherche (WebFetch bauen-im-laerm.ch + curl+pdftotext
  baukultur-laerm.ch + WebFetch fensterversand.ch): **zwei getrennte Systeme** — die
  Lärmschutz-Verordnung (LSV, Art. 31/32) prüft am **offenen** Fenster die Bewilligungsfrage,
  SIA 181 (Ziff. 3.1.1) prüft am **geschlossenen** Fenster die Bauqualität. Massnahmen-Kaskade
  Quelle→Grundriss→bauliche Massnahmen→Schallschutzfenster als Letztmittel; Ampel-System gelbe
  Räume (Lüftungsfenster ≥5 % Bodenfläche hält Grenzwert) vs. rote Räume (ruhiger Aussenbereich
  Pflicht, max. 1/3 Zimmer mit Ausnahme, Einzelraumbelüftung); ZH-Sonderregel Festverglasung ab
  70 dB Tag/60 dB Nacht; SIA-181-Kleinstwert De ≥ 27 dB, massgebend am Bau **R'w + Ctr** statt
  Labor-Rw (Ctr −4 bis −6 dB bei Fenstern); Schallschutzfenster-Klassen II-V nur aus kommerzieller
  Quelle (fensterversand.ch), nicht amtlich → `[[aussenlaerm-schallschutzfenster-strasse-bahn]]`
  (neu), Ergänzung `[[schallschutz-sia181]]`, FAQ **F68** neu, Status emerging (SZ-spezifische
  Ausnahmebewilligungspraxis, amtliche Fensterklassen-Tabelle, CHF-Mehrkosten je Klasse offen).

- **D43 (Run 65, 2026-07-14)** — Rest-Transfer des BFE-Bauteilekatalogs 2002 (letzter noch
  teilweise gelesener PDF-Eintrag im Inventar, S. 1-10 + Kap. 4.1 waren bereits 2026-06-10 gelesen).
  Seiten 43-80 vollstaendig via Read gelesen: **Kap. 4.1.3 Daecher/Decken** (D1-D15 gegen Aussenluft/
  unbeheizt, Di1-Di4/Di8-10 Sparrendach-Varianten; Umkehrdach D9 traegt einen amtlichen **20-%-
  Feuchtezuschlag** gegenueber einem Warmdach mit gleicher Daemmdicke), **Kap. 4.2 inhomogene
  Bauteile** (Bi-Serie Boeden, Wi-Serie Waende — Holzbau mit durchdringender Lattung/Riegel, zweispaltige
  Tabellen fixe+variable Daemmschicht) und **Kap. 5 Fenster und Tueren** (Formel
  Uw = (Uf·Af+Ug·Ag+Ψg·lg)/Aw; amtliche Fallback-Werte ohne Herstellerangabe: Uf Holz 1,9/Kunststoff
  2,5/Verbundprofil 3,3 W/(m²·K), g-Wert 2IV 62 %/3IV 45 %; vollstaendige Uw-Bestimmungstabelle nach
  Rahmenanteil 15/20/30 %; Tueren T1-T12 U 1,1-2,9) → Destillat
  `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]` jetzt **vollstaendig (S. 1-80/80)**, FAQ **F69** neu
  («wie schaetze ich Uw ohne Herstellerangaben»), schliesst den in `[[fenster-verglasung]]` offen
  vermerkten Punkt «amtliche Uf-Tabelle je Rahmenmaterial» (Vorbehalt: Werte von 2002, konservativer
  Fallback, kein heutiger Marktstandard). Damit ist das PDF-Inventar jetzt **wirklich lueckenlos**
  abgearbeitet (zuvor war dieser eine Eintrag trotz «vollstaendig abgearbeitet»-Vermerk seit
  2026-06-10 nur teilgelesen).

- **D42 (Run 64, 2026-07-14)** — «Gibt es eine amtliche Schallschutzfenster-Klassentabelle in der
  Schweiz, und was kostet eine höhere Klasse?» — Restpunkte aus D40/D41 (Run 62/63) abschliessend
  bearbeitet. Zweitquellen-Check (WebFetch stauffer.ch) bestätigt: **SIA 181 definiert selbst keine
  Fensterklassen** — nur situative Anforderungswerte (De, LH, L', Di). Die kursierenden Skalen
  (II-V bei fensterversand.ch, SSK 1-6 bei fensterhero.com) bleiben damit **beide kommerziell,
  nicht amtlich**; die SSK-1-6-Skala stammt nachweislich aus der **deutschen** Norm DIN 4109
  (WebSearch, drei übereinstimmende Quellen), nicht aus SIA 181 — der CH-Fensterhändler Hasler
  Fenster behauptet auf seiner Website fälschlich einen SIA-181-Ursprung, adversarial widerlegt.
  Amtliche Formel-Bestätigung: Praxisblatt Stadt Bern «Schalldämmung nach SIA 181» (Okt. 2023,
  curl+pdftotext) beziffert **De ≥ Lr,Tag − 33 dB** / **De ≥ Lr,Nacht − 25 dB** (erhöht 3 dB
  strenger) — rechnerisch identisch mit dem bereits dokumentierten Kleinstwert De ≥ 27 dB.
  CHF-Mehrkosten bleiben für die Schweiz unbeziffert; als grobe Orientierung liegt eine
  DE-Marktangabe vor (fensterhero.com, EUR, explizit nicht CH) → Ergänzung
  `[[aussenlaerm-schallschutzfenster-strasse-bahn]]` (Status **established**), Ergänzung
  `[[schallschutz-sia181]]`, FAQ **F68 auf established gehoben**. Löst die beiden verbliebenen
  Run-62/63-Prioritätspunkte vollständig (bis auf die CH-CHF-Zahl, die es amtlich nicht gibt).
