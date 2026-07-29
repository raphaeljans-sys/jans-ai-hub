# Curriculum — KB Energie

Themenfahrplan fuer den taeglichen Loop. Jede Lektion = beantwortbares Bauherren-relevantes Thema.
Status: `[ ]` offen · `[~]` begonnen · `[x]` belegt (mit Datum). Reihenfolge = Prioritaet.

## Block A — Fachgrundlagen Gebaeudehuelle

- **D82 (Run 110, 2026-07-25) — Werkzeug-Lehre aus Run 109 direkt angewendet, kein neues
  Themenfeld:** Swissolar «Batteriemonitor Schweiz 2026» (seit Run 12 als «PDF bildbasiert nicht
  auslesbar» archiviert) per curl -A Mozilla + Read-PDF-Tool vollständig gelesen (44 S.). Preiskurve
  `[[batteriespeicher-heimspeicher-pv-ch]]` primärquellenbestätigt (2022-2025, 827→586 CHF/kWh),
  vier neue Rechtsänderungen seit 1.1.2026 ergänzt (Netznutzungsentgelt-Rückerstattung
  Art. 18d-i StromVV, Einspeiselimitierung max. 3 %/Jahr StromVG Art. 17c, RPG-Bewilligungspflicht
  freistehender Speicher, Speicher-in-LEG-Messkonzept → auch `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]`
  ergänzt), Förderlücke geschlossen (keine nationale Förderung, TG/SH/NE kantonal), Brandschutz-
  Zeitplan BSV 2026 ergänzt (`[[pv-blitzschutz-gebaeudeversicherung-ch]]`). Kein neues Destillat
  (171 unverändert), FAQ F38 geschärft (154 unverändert), drei Destillate aktualisiert, alle bleiben
  established. Zusätzlich geprüft: der wiederholt vorgetragene Punkt «KB normen führt SIA 382/1:2014
  fälschlich als aktuell» ist dort bereits seit 14.07.2026 mit eigener ⚠-Korrekturnotiz im
  REGISTER.md dokumentiert — von der energie-Prioritätenliste gestrichen, kein weiterer
  Handlungsbedarf von hier aus.
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
  abgedeckt, rechtlich massgebend bleibt SIA-380/1-Tab.-27) → `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]`
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
- [x] A5 Fenster: U-Wert (Aw) + g-Wert — g_tot 0,1-0,15 + sommerl. Waermeschutz belegt 2026-06-09 via
  Minergie 2023 + EN-2 → `[[sommerlicher-waermeschutz]]` (FAQ F11). **Eigener Fenster-Zielkonflikt-
  Artikel Uw/g-Wert belegt 2026-07-25 (Run 92)** — SIA-180-g_tot-Grenze orientierungsabhaengig (Nord
  ≤0,20/fg, alle uebrigen Fassaden inkl. Ost/West gleich streng wie Sued ≤0,07/fg), Sonnenschutzglas-
  vs-Storen-Tradeoff (Faktor 4-5 innen/aussen), CH-Stundenkriterium statt DE-Kelvinstunden-Methode
  → `[[fenster-uw-g-wert-zielkonflikt]]`, FAQ F121 neu. **Glas-g-Wert-Frage geschlossen 2026-07-25
  (Run 93)** — primärquellenbestätigter Negativbefund via Minergie-Anwendungshilfe 2025-2 Kap. 6.3.8:
  Glas-g-Wert wird methodisch orientierungsunabhängig gerechnet, nur g_tot (SIA 180) ist
  orientierungsabhängig; g-Wert-Bandbreiten je Verglasungstyp ueber vier CH-Quellen belegt
  → `[[glas-g-wert-verglasungstypen-ch]]`, FAQ F125 neu, Artikel auf established gehoben. **A5
  damit wirklich vollstaendig abgeschlossen — keine offenen Punkte mehr.**
- [x] A6 CLT/Holzbau-Bauphysik — belegt 2026-06-11 via Stora-Enso-Doku Kap. 1-3 (Waerme λ 0,12 /
  Luftdicht folienfrei n₅₀ 0,6 / Feuchte s_d feuchtevariabel) → `[[holzbau-bauphysik-clt]]`,
  `[[clt-bauphysik-stora-enso]]` (FAQ F15). **Bauteilkatalog Kap. 4 belegt 2026-06-12** (Aussenwand
  V1-9 + Dach V1-6: REI·U·Rw) → `[[clt-bauteilkatalog-stora-enso]]`. **Schallschutz Innenwand/
  Trennwand/Decke belegt 2026-06-13** (R_w 34-58, L'_n,w 60→46) → `[[clt-schallschutz-stora-enso]]`
  (FAQ F17). **SIA-181:2020-Anforderungswerte belegt 2026-06-24** → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). Offen: Flankenuebertragung CH (Lignum-Anschlussdetails).
- [~] A7 Naturdaemmstoffe/zirkulaeres Bauen in der Praxis — Seed 2026-06-13 via Werkhof29-Dossier
  (Stroh-Daemmung, Lehmputz, Re-use, Areal-PV) → `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]`.
  **Bemessungs-λ + Brandverhalten vertieft 2026-07-18 (Run 79)** — Bemessungswert Stroh λ 0,041-0,052
  bzw. produktabhaengig bis 0,080 W/(m·K) (Nennwert-vs-Bemessungswert-Prinzip SIA 279 bestaetigt,
  exakte Zuschlagsformel nicht am Normvolltext verifiziert); Brandverhalten nur ueber DE-FASBA-Werte
  (F30-B/REI90) belegbar, **Schweizer VKF-Einstufung von Strohdaemmung ist ein bestaetigter
  Negativbefund** (nicht gefunden) → `[[naturdaemmstoffe-bemessungswerte-brandverhalten]]`, emerging.
  Weiterhin offen: SIA-279-Normvolltext (kostenpflichtig), CH-VKF-Register-Abfrage Stroh,
  ZEV/Solarsplit-Modell.
- [x] A8 Schallschutz im Hochbau SIA 181:2020 — Anforderungswerte belegt 2026-06-24 via Zusammenfassung
  baumann akustik & bauphysik (Luftschall Di / Trittschall L' / Haustechnik LH / Aussenlaerm De je
  Empfindlichkeit × Stoergrad; erhoeht +4 dB innen / +3 dB aussen; EFH/Reihen-EFH/STWEG = erhoehte
  Aussenlaerm-Anforderung; Bauwert ≠ Laborwert/Flanke) → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). **Flanken-/Nachweis-Mechanik belegt 2026-06-28** (Lignum/BFH-AHB
  2008: R_w↔R'_w, K_P/K_F, 12 Nebenwege EN 12354, C/C_tr-Werte, Holzbau-Datenluecke) →
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]` (F25/F17 geschaerft). Offen: konkrete Lignum-
  Konstruktionsdetails + gemessene K_F-/Bauteilwerte (LIT-Doku).

- **D76 (Run 104, 2026-07-25, vier parallele Rechercheagenten)** — Vier Punkte der Run-103-
  Prioritätenliste abgearbeitet, PDF-Inventar weiterhin erschöpft (Web-Pfad). **D76a WP-Lärm SZ-
  Verfahrensklassifikation** — amtliche AfU-Wegleitung (29.10.2025) im Volltext gefunden: SZ
  unterscheidet Innen/Aussenaufstellung × Bauzone/Nichtbauzone (Meldeverfahren/vereinfachtes
  Baubewilligungsverfahren/ordentliches Verfahren), Gemeinde prüft zweistufig (Einreichung +
  Bauabnahme) — strenger als das rein private ZH-Modell; VGE III 2015 184 (lärmempfindlicher Raum
  im eigenen Gebäude) → `[[waermepumpe-aussenlaerm-vollzugshilfe]]` auf established gehoben (SZ-Teil),
  FAQ **F146** neu. **D76b Sommerlicher Wärmeschutz: SIA-380/2-vs-382/1-Normwechsel aufgelöst** —
  kein Zitierfehler, sondern echte Neuordnung: Kühlungs-Bedarfsabklärung wanderte von SIA 382/1 in
  die neue SIA 380/2:2022, SIA 382/1 selbst seit 1.2.2025 durch SIA 382/1:2025 ersetzt (Titelwechsel
  Klima→Lüftung); Figur-13-Dachflächenfenster-Formel bleibt Negativbefund (Korrigenda C2:2020 geprüft,
  betrifft sie nicht) → `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` ergänzt, FAQ **F147**
  neu; ⚠ Nebenbefund an KB `normen`: SIA 382/1:2014 dort fälschlich noch als aktuell geführt.
  **D76c VDI 3807 Blatt 2 — Krankenhaus-Energiekennwerte (neues Thema, Healthcare-Fokus)** — deutsche
  VDI-Richtlinie (Datenbasis 2004/2005) über zwei sich bestätigende Sekundärquellen erschlossen:
  5 Versorgungsstufen/Bettenzahl-Klassen, Wärme ~20'000-37'000+ kWh/Bett/a, Strom ~2'700-13'600
  kWh/Bett/a; bestätigt bisherige KB-Näherung für kleine/mittlere Häuser, zeigt für Maximalversorger
  &gt;1'000 Betten deutlich höhere Werte; DE-Herkunft, nicht 1:1 CH-übertragbar → neues Destillat
  `[[vdi-3807-2-energiekennwerte-krankenhaus]]`, FAQ **F148** neu. **D76d BVGer-Urteil Smart-Meter
  20.06.2025 im Original** — Urteil A-484/2024 (vereinigt A-503/2024) vollständig gelesen: kein
  Wahlrecht/Opt-out gegen Smart-Meter-Einbau, Kostenfolge statt Wahlrecht bei Verweigerung,
  15-Min-Lastgang + 5-Jahres-Speicherung verfassungskonform, Fernabschaltung nur bei akuter
  Netzgefährdung erlaubt → `[[smart-meter-rollout-schweiz]]` auf established gehoben, FAQ **F149**
  neu. FAQ-Stand: **149 Kernfragen (F1-F149) belegt.**

- **D77 (Run 105, 2026-07-25, drei parallele Rechercheagenten)** — PDF-Inventar weiterhin erschöpft
  (Web-Pfad). **D77a Kostenfolge Lärm-Nachmessung bei WP-Reklamation ZH/SZ** (Priorität aus Run
  103/104 fortgeführt) — amtliche WP-spezifische Kostenregel weiterhin nicht auffindbar, aber
  Verursacherprinzip Art. 2 USG + Gebührenermächtigung Art. 48 USG + Messanordnung nur bei «Grund
  zur Annahme» (Art. 36 Abs. 1 LSV) primärquellenbelegt; SZ-Gebührenposten «Kontrolle von Anlagen»
  bis Fr. 5'000 (Tarif 7.3.2023) nennt nur Bandbreite, nicht Schuldner; Kostenverteilungslogik
  (Verursacher zahlt bei bestätigter Überschreitung) als eigene, klar markierte Ableitung →
  neues Destillat `[[waermepumpe-laerm-nachmessung-kostenfolge]]`, Wiki-Artikel
  `[[waermepumpen-laermschutz]]` ergänzt, FAQ **F150** neu. **D77b SIA 386/BACS-Gebäudeautomation**
  (neues Themenfeld) — vier BACS-Effizienzklassen A-D (SIA 386.110/SN EN ISO 52120-1), keine
  generelle CH-Klassenpflicht gefunden; primärquellennah nur Monitoring-Pflicht ab 2'000 m² EBF
  (Formular EN-141 Kt. ZH) und Betriebsoptimierungspflicht ab 200'000 kWh/Jahr; MuKEn-Wortlaut und
  SIA-386.110-Normfaktoren nicht am Original verifiziert (PDF-Extraktion technisch gescheitert) →
  neues Destillat `[[sia-386-bacs-gebaeudeautomation]]`, FAQ **F151** neu. **D77c Erdsonden-
  Regeneration/Sondenfeld-Dimensionierung** (ergänzt Schwesterdestillat
  `[[erdwaermesonden-mehrfachfelder-regeneration-zh-sz]]` vom 23.07.2026, bewusst kein Duplikat) —
  passiv/aktiv-Regenerationssystematik (Freecooling, Solarthermie, reversible WP, PVT-/Aussenluft-
  kollektoren) branchenübergreifend konsistent; W/m-Entzugsleistungs-Faustwerte je Untergrund +
  6-10 m Sondenabstand im Feld (klar unterschieden vom 17-73-m-Feld-zu-Feld-Abstand), ausdrücklich
  nicht als SIA-384/6-Berechnungsgrundlage, nur zur Grössenordnungs-Kommunikation → neues Destillat
  `[[erdsonden-regeneration-sondenfeld-dimensionierung]]`, FAQ **F152** neu. FAQ-Stand: **152
  Kernfragen (F1-F152) belegt.**

- **D78 (Run 106, 2026-07-25, drei parallele Rechercheagenten, gezielte Nachverifikation statt
  neuer Themenwahl)** — Statt weiterer neuer Themen wurden gezielt die drei in Run 105 offen
  gebliebenen Primärquellen-Lücken geschlossen plus ein neues Themenfeld ergänzt. **D78a SIA
  386/BACS-Gebäudeautomation Primärquellen-Nachverifikation** — wichtigster Fund: die Bezeichnung
  «SIA 386.110» war die 2017/2022 abgelöste Vorgängerausgabe, amtlich aktuell ist **SIA
  386.111:2022** (shop.sia.ch-Metadaten); MuKEn-2025-Wortlaut (Art. D.1.23, Monitoring-Pflicht ab
  2'000 m² EBF) über die offizielle Minergie-Vergleichstabelle primärnah bestätigt, **kein
  Minergie-Automations-Bonus** (Negativbefund, gleiche Quelle); EN-15232-Effizienzfaktoren
  Wohngebäude (BAFU/TU-Dresden-Kurzstudie Felsmann 2017: C=1,00/B=0,88/A=0,81) neu; EU-Kostenreferenz
  eu.bac 2024 (nicht CH) → Destillat auf **established** gehoben, FAQ **F153** neu. **D78b
  Erdsonden-Regeneration OCR-/Zugriffs-Nachlese** — beide zuvor blockierten Quellen erschlossen:
  aeesuisse-Faktenblatt Feb. 2025 via Wayback-Machine-Archiv im Volltext (geothermischer Wärmestrom
  CH ≈60 mW/m², COP Erdreich 4,6 vs. Aussenluft 3,5, durchgerechnetes MFH-Beispiel), AWEL-
  Planungshilfe 2010 entgegen Ersteinschätzung **kein Bild-PDF** (direkt per pdftotext lesbar,
  bestätigt Verweis auf SIA 384/6 ohne eigene Tabelle) → Destillat auf **established** gehoben,
  FAQ F152 geschärft. **D78c Wärmepumpen-System-Modul (WPSM) und die Heizkörper-/Altbau-Frage**
  (neues Themenfeld, freie Themenwahl nach Prüfung von acht bereits abgedeckten Kandidaten) —
  WPSM-Anlagezertifikat ≤15 kW zwingende ZH/SZ-Förderbedingung (CHF 350 + MWST), prüft die ganze
  Anlage inkl. Wärmeabgabesystem; schliesst die bislang unbeantwortete Bauherren-Kernfrage «reichen
  meine alten Heizkörper für eine Wärmepumpe?» (EnergieSchweiz: Altbau grundsätzlich unproblematisch,
  Inverter-WP mit Radiatoren gut geeignet) → neues Destillat
  `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`, Wiki-Artikel
  `[[heizleistung-und-waermeerzeuger]]` ergänzt, FAQ **F154** neu. FAQ-Stand: **154 Kernfragen
  (F1-F154) belegt.**

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

- **D54 (Run 73, 2026-07-16, sechs Hintergrund-Agenten, PDF-Inventar erneut geprüft)** — Intensiv-Lauf
  auf Auftrag Raphaels unter Rule 260714 (Wochenlimit-Drosselung) als expliziter Einzellauf; PDF-
  Inventar via lokalem OneDrive-Mount gegen `find -newermt` geprüft (nur 2 bereits destillierte
  Dateien seit 11.06.2026 verändert) — bleibt erschöpft, daher Web-Pfad. Sechs parallele
  Rechercheagenten bearbeiteten die Prioritätenliste aus Run 72 «was offen bleibt» plus zwei weitere
  Themen. **Grösster Einzelfund: MuKEn-2025-Originaltext (117 S.) erstmals im Volltext gefunden**
  (energiehub-gebaeude.ch-PDF-Spiegel, EnDK-Herausgeberschaft laut Impressum bestätigt) und per
  curl+pdftotext gelesen — löst den seit Run 48 offenen Punkt «MuKEn-2025-Original nicht auffindbar»
  vollständig; alle bisherigen Modul-G-Zahlen zahlengenau am Original bestätigt (dritte unabhängige
  Verifikationsquelle neben Web-Fetch-Reader und Minergie/ecobau-Methodikpapier) →
  `[[muken-2025-verabschiedet]]`, `[[muken-2025-modul-g-co2-grenzwerte]]`, FAQ F47 geschärft.
  **Grundwasser-WP-JAZ:** ältere BFE-2010-Bandbreite (3,8-5,0/3,5-4,5) als bestverfügbarer Wert
  gefunden, zwei moderne CH-Feldstudien (OST/WPZ, WPSM 2023) schliessen GWWP aktiv aus — Negativbefund
  statt Lücke; Brunnenkosten erstmals mit zwei Sekundärquellen (Earth Suisse, daibau.ch) belegt →
  `[[grundwasserwaermenutzung-bewilligung-zh-sz]]`, FAQ F77 geschärft. **ZH-Ladeinfrastruktur
  bidirektional/Quartier:** amtliche Förderbroschüre (April 2023) direkt gelesen — bidirektionale
  Stationen CHF 2'000/Station ohne Neubau-Ausschluss, Quartier-Förderung als reines Gemeinde-Programm
  ohne private Areal-Option identifiziert → `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]`, FAQ F39
  geschärft. **Preisüberwacher-Contracting:** bestätigter Negativbefund (keine contracting-spezifische
  Praxis), TNS-Leitfaden «Kosten und Tarife thermischer Netze» (25.06.2026) mit konkreten
  Indexierungsformeln als Ersatzbeleg → `[[waerme-contracting-vertragsmodelle-ch]]`, FAQ F75 geschärft.
  **SZFF-Primärquelle:** «SZFF Doku 31.03» als vermutlich veraltetes/zurückgezogenes Dokument
  identifiziert (nicht mehr in aktueller SZFF-Verkaufsliste), drei aktuellere Ersatzbelege (Minergie-
  Anwendungshilfe 2020.1, Minergie-Modul-Fenster-Reglement 2021, Energieetikette-Faktenblatt) ergänzt
  → `[[fenster-verglasung-uw-g-wert]]`, FAQ F35 geschärft. **ZH-Solarpflicht-Kantonsratsstand:** vierter
  Rechercheversuch, diesmal über News-/Verbandsquellen — Vorgeschichte (KEVU-Kommissionsentwurf,
  Vernehmlassung 2024, fallengelassene Fassaden-/Parkplatzpflichten) neu belegt, Beratungsdatum bleibt
  bestätigter Negativbefund (zwei Fehlspuren aktiv ausgeschlossen) → `[[zh-energiegesetz-revision-solarpflicht-2026]]`.
  FAQ-Stand unverändert **85 Kernfragen** (fünf geschärft: F35/F39/F47/F75/F77), keine neue Nummer.

- **D53 (Run 72, 2026-07-15, vier Hintergrund-Agenten erfolgreich)** — Zweiter Intensiv-Lauf am
  selben Tag auf Wunsch Raphaels; anders als Run 71 liefen diesmal alle vier parallel gestarteten
  Rechercheagenten fehlerfrei durch (Grundwasserwärmenutzung, g-Wert/Uf-Wert-Tabelle,
  Ladeinfrastruktur-Förderung, Wärme-Contracting — die vier Prioritätspunkte aus Run 71 «nicht
  erreicht»). **Grundwasserwärmenutzung:** ZH-Wassergesetz-Inkrafttreten 1.6.2026 primärquellen-
  bestätigt, kursierende «40-Jahre-Konzessionsdauer» am Gesetzestext WIDERLEGT, JAZ Erdsonde/
  Luft-Wasser über EnergieSchweiz-Feldstudie belegt (4,4-5,7/2,9-3,7), SZ § 12 WRG wortgetreu
  bestätigt → `[[grundwasserwaermenutzung-bewilligung-zh-sz]]`, FAQ F77 geschärft. **g-/Uf-Wert-
  Tabelle:** amtliche BFE-Bauteilekatalog-Werte g 62 %/45 % (2-IV-IR/3-IV-IR), Uf-Fallback
  1,9/2,5/3,3 primärquellenbestätigt, FEA-Klassengrenzen A-G direkt gelesen, Referenzfenstergrösse
  1,55×1,15 m bestätigt → `[[fenster-verglasung-uw-g-wert]]`, FAQ F35 geschärft. **Ladeinfrastruktur-
  Förderung:** Kt. ZH eigenes CHF-50-Mio.-Programm bei der Volkswirtschaftsdirektion (getrennt vom
  AWEL-Energieprogramm), Stand 06.07.2026 über 92 % ausgeschöpft; Kt. SZ kantonal keine Förderung
  (Negativbefund) → `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]`, FAQ F39 geschärft.
  **Wärme-Contracting:** wichtige KB-Korrektur — § 10b EnerG ZH/§ 22a kEnG SZ betreffen
  ausschliesslich Elektroheizungen, nicht Standardlösungen/Contracting; richtig ist § 11 EnerG ZH/
  § 8d kEnG SZ; ZH-Rolle des Contracting-Vertrags (Übergangs-/Härtefall-Nachweis) geklärt; Swiss
  Contracting bestätigt inaktiv, swissesco/Thermische Netze Schweiz als aktive Alternativen →
  `[[waerme-contracting-vertragsmodelle-ch]]`, FAQ F75 geschärft. FAQ-Stand unverändert **85
  Kernfragen (F35/F39/F75/F77 geschärft, keine neue Nummer)**. Alle vier Destillate + Register
  (destillate/INDEX.md, wiki/BAUHERREN-FAQ.md) nachgeführt.

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
  belegt 2026-06-26** (9 Reduktionshebel, «SIA-2032-Messgroessen kg CO₂-eq/m² EBF» — ⚠ **Zuschreibung
  korrigiert Wissens-Chef Run 20, 29.07.2026:** die Bezugsflaeche EBF stammt aus der KBOB-/Minergie-/
  SIA-2040-Systematik, NICHT aus SIA 2032; SIA 2032 bezieht auf die **Geschossflaeche GF** (SIA 416),
  belegt im Vorwort der Ausgabe 2010, Vorbehalt fuer die Ausgabe 2020. Die Zahlen selbst sind korrekt
  EBF-bezogen und muessen nicht neu gerechnet werden, falsch war nur die Norm-Zuschreibung —, «Restwert Bestand»,
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

**D55 (Run 74, 2026-07-16)** — Sechs parallele Rechercheagenten (Workflow-Parallelisierung), Token-
Vollgas gemäss `training/PROGRAMM.md`: (1) MuKEn-2025-Volltext erneut gelesen, diesmal Module 2-14
tabellarisch ausgewertet (Modul 13 Gebäudehülleneffizienz komplett neu, Modul 5 Elektroheizungs-
Ersatzfrist 15→5 J., Modul 12 Elektromobilität SIA-2060, Modul 11 BMZ/GFZ-Dämmfreistellung 35 cm);
(2) SZ-Fernwärme-Restlücken: Energie Ausserschwyz erstmals zwei reale Preisindikationen über
Live-Richtpreisrechner, Energie Einsiedeln Anschlussbeitrag bleibt 3. Negativbefund; (3) GWWP-JAZ
vierter Anlauf: CH-Negativbefund erneut bestätigt (OST/Arpagaus 2023, BFE-WPSM 2024), deutsche
Fraunhofer-«WP Monitor»-Studie (n=4, JAZ 3,57-4,24) als Zusatzbeleg gefunden; (4) neues Fachthema
Holzfeuerungen (LRV-Grenzwerte jetzt Anhang 3 Ziff. 52 statt Anhang 4, Bewilligung/Förderung
ZH/SZ); (5) neues Fachthema sommerlicher Wärmeschutz SIA-180-Nachweisverfahren (drei Stufen,
EN-102/EN-ZH/EVEN-Bezug); (6) neues Fachthema BHKW/WKK für MFH/Pflegeheim (MuKEn-Fossilverbot-
Zielkonflikt, Abgrenzung Fernwärme/Grosswärmepumpe). Vier neue FAQ (F86-F89), drei neue Destillate
(Holzfeuerung, sommerlicher Wärmeschutz, BHKW) → `[[muken-2025-verabschiedet]]`,
`[[fernwaerme-anschlusskosten-zh]]`, `[[grundwasserwaermenutzung-bewilligung-zh-sz]]`,
`[[holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz]]` (neu),
`[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` (neu),
`[[blockheizkraftwerk-bhkw-mfh-pflegeheim-ch]]` (neu).

**D56 (Run 75, 2026-07-16)** — Vier parallele Rechercheagenten. PDF-Inventar bleibt seit Run 65
erschoepft → Web-/Volltext-Pfad. Batch-Volumen bewusst auf 4 Themen statt der Vollgas-Richtwerte
6-10 gesetzt (Rule `auto-verbesserungen` **260714** «Tempo drosseln», die 260712b/c fuer die
laufende Woche ueberschreibt). (1) **MuKEn 2025 Anhang 6+7** erstmals ausgewertet: Anhang 6 ist ein
Systemwechsel — 11 Standardloesungen als Regelweg (MuKEn 2014, inkl. fossiler Optionen SL 4/6/10)
werden zu 7 Standardmassnahmen als reinem Ausnahmeweg (zwei davon innert 3 J., erst bei
nachgewiesener Unzumutbarkeit); Anhang 7 ist nachweislich neu (die Begriffe Jahreskosten/
Lebenszykluskosten/Annuitaet/Diskontsatz kommen im MuKEn-2014-Volltext null Mal vor) und macht die
Vollkostenrechnung vom Beratungsargument zum Rechtsinstrument (Diskontsatz = hypothekarischer
Referenzzinssatz Art. 12a VMWG, Foerderbeitraege zwingend anzurechnen, CO2-Abgabe als Mittelwert
bis Hoechstsatz). (2) **PV-Ruecklieferverguetung ab 2026** neu erschlossen: EnG Art. 15 Abs. 1bis +
EnV Art. 12 Abs. 1bis → Mindestverguetung 6 Rp./kWh (< 30 kW), 6,2 Rp. ohne Eigenverbrauch, ab
150 kW keine; **staerkster Befund**: der BFE-Referenz-Marktpreis lag im ganzen Q2 2026 (3,90 Rp.)
UNTER der Mindestverguetung — sie hat im ersten Sommer sofort gegriffen; ewz 12,91 Rp. stabil vs.
EKZ quartalsfolgend = Faktor 2-3 allein wegen der Netzgebietsgrenze. (3) **Innendaemmung im Altbau**
neu erschlossen: SIA 180 verlangt fuer innengedaemmte Aussenwaende die hygrothermische Simulation
nach SN EN 15026 (Glaser genuegt nicht, und die Simulation ist bei 2D-Effekten/Balkenkopf ihrerseits
unzulaessig); Foerder-Nadeloehr U ≤ 0,20 mit Innendaemmung praktisch unerreichbar → die Erleichterung
fuer geschuetzte Bauteile bis U 0,30 ist der Regelweg; Asymmetrie WDV ZH § 2 Abs. 5 (bauphysikalischer
Ast rettet die Bewilligung, nicht das Foerdergeld). (4) **Holzfeuerung-Restpunkte** aus Run 74
geloest — inkl. **zwei Korrekturen am eigenen Bestand** (siehe CHANGELOG). Neue FAQ **F90-F94**,
F87 korrigiert → `[[muken-2025-verabschiedet]]`,
`[[pv-rueckliefer-verguetung-mindestverguetung-2026]]` (neu),
`[[innendaemmung-altbau-bauphysik-ch]]` (neu),
`[[holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz]]`.

**D57 (Run 76, 2026-07-17)** — Fuenf parallele Rechercheagenten (zwei davon nach stillem Fruehabbruch
ohne echte Tool-Ausfuehrung erfolgreich wiederholt — Lehre: Agent-Ergebnis vor Registerpflege immer an
den Datei-Zeitstempeln verifizieren, nicht am Text allein glauben). PDF-Inventar weiterhin seit Run 65
erschoepft (SharePoint/OneDrive PL-04 Energie erneut kontrolliert, keine neuen Dateien) → Web-/
Volltext-Pfad. (1) **MuKEn 2025 Anhang 1-3 vs. heutiges ZH-Recht** (hoechste Prioritaet aus Run 75):
U-Wert- und Heizwaermebedarf-Grenzwerte sind **zahlengleich** mit den heute in Kt. ZH geltenden
SIA-380/1:2016-Werten (MuKEn-Text selbst bestaetigt unveraenderte Uebernahme aus MuKEn 2014); ZH wendet
diese Werte bereits seit 2017 an. Nebenfund: Transkriptionsfehler in `[[enfk-en-102-waermeschutz-2018]]`
Tab. 5 entdeckt (Korrektur naechster Wartungslauf). Neues Destillat
`[[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]`, FAQ **F95** neu. (2) **Holzfeuerung-Restpunkte aus
Run 75 geschlossen**: Klimapraemie laeuft voraussichtlich bis spaetestens Ende 2027, Kt. ZH foerdert
Holz-/Pellet-Heizungsersatz kantonal nicht, EFH-Zentralheizungen sind bei der Klimapraemie explizit
ausgeschlossen — alle drei primaerquellenbelegt (foerderplattform.ch + zh.ch, live). F87 + F94
geschaerft. (3) **PV: 70-%-Abregelungsregel** rechtlich verortet — Art. 17c Abs. 4 StromVG i.V.m.
Art. 19c Abs. 4 StromVV (i.K. 1.1.2026), konkreter Prozentsatz aus VSE-Selbstregulierungsnorm
NRE-CH 2025, Deckel 3 % der Jahresproduktion + Nachverguetungspflicht. Negativbefunde bestaetigt (ebs
Energie AG/EWS Ibach SZ ohne 2026er-Zahl; Q3-2026-Referenzmarktpreis erst ab 14.10.2026). FAQ **F96**
neu. (4) **SIA-380/1-Aktualitaets-Check**: keine neuere Ausgabe als 2016 (Korrigenda C1/2019)
gefunden — bestaetigt bestehendes Destillat, kein Korrekturbedarf. Neues Destillat
`[[sia-380-1-aktualitaets-check-2026]]`. (5) **Innendaemmung E93 (CH-Psi-Wert)** weiterhin
Negativbefund nach zwei zusaetzlichen Suchpfaden (HSLU/FHNW/Empa/Flumroc/u-wert.net/baubook.at) —
bleibt offen, SMGV-Merkblatt-Nr.-70-Beschaffung braucht Raphaels Freigabe (kostenpflichtig).

**D58 (Run 77, 2026-07-17, Konsolidierung/Verdichtung, Drossel 260714)** — Zweiter Lauf des Tages,
bewusst schlank ohne Multi-Agent-Fan-out (Wochenlimit 81 %). Fokus: die in Run 76 als **Meta M5**
markierte Register-Nachfuehr-Luecke schliessen + einen echten Verdichtungs-Deliverable liefern.
(1) **E99 verifiziert + geschlossen**: EN-102 Tabelle 5 am Original (energie.tg.ch-PDF, curl+pdftotext)
zahlengenau gegengeprueft (MFH 13/15 · EFH 16/15 · Verwaltung 13/15 · Schule 14/15 · Verkauf 7/14 ·
Restaurant 16/15 · Versammlung 18/15 — deckungsgleich mit der Run-76-Korrektur); stale «SIA 380/1:2009»
in der `destillate/INDEX.md`-Zeile auf 2016 korrigiert. (2) **E100 ins Register nachgetragen**: das
established Destillat `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]` (Commit 17:15) fehlte im
`destillate/INDEX.md` + hatte keine FAQ → INDEX-Zeile + **FAQ F97** («Muss ich meine Heizungs-/
Warmwasserleitungen daemmen — aendert MuKEn 2025 das?») ergaenzt; Anh. 4/5 zahlengleich mit MuKEn 2014,
gilt in ZH+SZ (KEnV Anh. 8/9) bereits heute. (3) **Verdichtung — neuer Wiki-Themenartikel
`[[innendaemmung]]`**: konsolidiert die zwei bestehenden Innendaemmung-Destillate (bisher kein
Themenartikel trotz FAQ F92/F93). FAQ-Stand jetzt **F1–F97**. **Meta-Lehre umgesetzt (M5):** am Ende
jedes Intensiv-Laufs Register-Abgleich fahren (jedes heute erstellte Destillat: in INDEX? FAQ? QUESTIONS
geschlossen?) — sonst sammeln sich «established, aber unauffindbar»-Destillate an.

**D59 (Run 84, 2026-07-23)** — Sechs parallele Sonnet-Agenten, PDF-Inventar weiterhin erschöpft
(SharePoint PL-04 kontrolliert, keine neue Fachdatei). Verdichtungs-/Verifikationslauf: (1) **Fernwärme
Ausserschwyz** über 60 real abgefragte Adressen verdichtet, Segment-2-Formel über 31 Stützpunkte
bestätigt, dritte Rechner-Antwortkategorie «Objektgrössen-Verweigerung» entdeckt (erklärt den
290-kW-Ausreisser). (2) **Förderprogramm SZ 2026** adversarial Runde 2: 24/24 CHF-Sätze bestätigt.
(3) **PV-Einmalvergütung Bund**: Höhenbonus→Winterstrombonus ab 1.1.2026 korrigiert, Grundbeitrag
CHF 0 seit 1.4.2024, Minimalvergütung 2026 ergänzt. (4) **Q_H,li SIA 380/1:2016** adversarial Runde 2
an vierter Quelle (Kt. Luzern KEnV) → established. (5) **Neues Thema PV-Entsorgung/Recycling/Lebensende
CH** → `[[pv-entsorgung-recycling-lebensende-ch]]`, FAQ F105. (6) **MuKEn 2025 ZH/SZ** Aktualitäts-Check:
Verfahrensstand unverändert. FAQ-Stand jetzt **F1–F105**. Details: `outputs/2026-07-23_energie-run84.md`.

- **Run 86 (2026-07-23, komplementär zur Parallel-Session Run 85)** — PDF-Inventar erschöpft, Web-/
  Verdichtungspfad, drei Sonnet-Rechercheagenten; Synthese + alle Destillat-/Register-Edits mit echten
  Umlauten auf dem Hauptmodell (gegen den Run-84-Umlaut-Bug). **Zwei Neuthemen:** Anergienetz/kalte
  Fernwärme CH → `[[anergienetz-kalte-fernwaerme-ch]]` (FAQ F109, 4 CH-Referenzen inkl. Healthcare LUKS,
  emerging); oberflächennahe Erdwärme ohne Tiefbohrung (Flächenkollektor/Erdwärmekorb/Energiepfahl)
  ZH+SZ → `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]` (FAQ F110, ZH-Verfahren
  BVV 5.6.2 amtlich belegt, emerging). **Ein Aktualitäts-Check:** PV-Marktpreise — BFE-Preisbeobachtungs-
  studie 2024 (publ. Juli 2025) als neuere amtliche Preisbasis, **Indach-Aufschlag «+60 %» relativiert**
  → `[[pv-marktzahlen-kosten-ch-2025]]` (F18 geschärft). **Koordination (Rule 260720):** die drei von
  Run 85 offen gelassenen FAQ-Einträge (Heizöltank/Stromtarife/Erdsonden-Mehrfachfelder) als F106–F108
  treu nachgeholt; FAQ lückenlos F1–F110.

- **D60 (Run 90, 2026-07-25)** — PDF-Inventar weiterhin erschöpft seit Run 65 (bestätigt); vier
  parallele Sonnet-Rechercheagenten vertiefen offene Punkte aus dem Backlog statt neuer breiter
  Themenexpansion (Meta-Lehre M5). **Anergienetz CHF/m²-Kennzahl** erstmals grob belegt: BFE-
  Fallbeispiele-Bericht liefert FGZ-Friesenberg ≈230 CHF/m² EBF (Netzinfrastruktur, n=1, Preisbasis
  2017/18), bestätigter Negativbefund für einen generellen Branchenrichtwert (Faktenblatt Städteverband
  + Planungshandbuch Verenum subsumieren Anergienetze ohne eigene Kostenkategorie unter «Thermisches
  Netz») → `[[anergienetz-kalte-fernwaerme-ch]]`, FAQ F109 geschärft. **Erdwärme-Flächenkollektor SZ:**
  S1/S3-Zuordnung bundesrechtlich geklärt (BAFU/FWS 2009: S1/S2 nicht zugelassen, S3
  einzelfallbewilligungsfähig bei flacher Lage), «Grabenkollektor» endgültig als deutsche
  Herstellerkategorie ohne CH-Entsprechung widerlegt → `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`,
  FAQ F110 geschärft. **Uf-Werte:** langjährige Lücke endgültig strukturell erklärt (SZFF verlangt
  produktspezifischen Nachweis statt Pauschaltabelle) + zwei Hersteller-Bandbreiten (EgoKiefer, 4B)
  als Orientierung ergänzt → `[[uf-werte-rahmenmaterial-grobuebersicht]]`, kein weiterer
  Rechercheaufwand nötig. **Neues Thema PV-Blitzschutz/Gebäudeversicherung** (inkl. Batteriespeicher-
  Brandschutzeinordnung, Kt. SZ als GUSTAVO-Kanton ohne Versicherungsmonopol identifiziert) →
  `[[pv-blitzschutz-gebaeudeversicherung-ch]]` (neu), FAQ **F118** neu. FAQ-Stand jetzt **F1–F118**
  (F117 stammt aus einem parallelen Solarpflicht-Strang desselben Tages). Zusätzlich B4 aus Run 89
  erledigt: `wiki/INDEX.md`-Kernprodukt-Zeile verdichtet statt additiv fortgeschrieben (Verweis auf
  CHANGELOG statt Einzelaufzählung).

- **D61 (Run 91, 2026-07-25)** — PDF-Inventar weiterhin erschöpft; vier parallele Sonnet-
  Rechercheagenten arbeiten gezielt die drei «Nächster Lauf»-Prioritäten aus Run 90 ab statt neuer
  Themenexpansion. **VKF-Blitzschutz-Ziffer ziffern-genau verifiziert:** entgegen der bisherigen
  Annahme war das VKF-Brandschutzmerkblatt «Solaranlagen» 2001-15de (Ausg. 01.01.2022) per
  curl+pdftotext sehr wohl auslesbar — Ziff. 3.1 Abs. 3 wörtlich zitiert und zweifach gegengeprüft
  → `[[pv-blitzschutz-gebaeudeversicherung-ch]]` auf established gehoben. **Batteriespeicher-
  Brandabschnitte korrigiert, nicht nur bestätigt:** die «100 kWh EI30/EI60»-Faustregel gilt nur für
  LFP-Speicher (VKF-FAQ 2005-01, 09.09.2025); Standard-Li-Ionen/NMC (VKF-BSM 2005-15de, 01.06.2021)
  hat eine strengere DREI-stufige Systematik (15/100-kWh-Schwellen) — wichtige Korrektur, da die KB
  sonst eine für den häufigeren NMC-Fall zu laxe Schwelle weitergetragen hätte. **SZ-Erdwärme-
  Flächenkollektor S1/S3:** acht amtliche SZ-Dokumente (Gesetzestexte, Schulungen, eBau-Anleitung)
  gezielt durchsucht, kein SZ-eigenes Merkblatt gefunden — Negativbefund jetzt breiter abgestützt und
  als abgeschlossen markiert → `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`.
  **Fernwärme SZ vertieft:** Energie-Einsiedeln-Preisblatt 2026 gefunden (11.19 Rp./kWh, −3 % ggü.
  2025, schliesst den bisherigen Negativbefund), Energie-Ausserschwyz-Genossenschaftsrabatt
  (CHF 350/Anteil, max. CHF 7'000) neu belegt, aktuelles Ausserschwyz-Tarifblatt bleibt trotz
  erneuter Suche nicht auffindbar → `[[fernwaerme-anschlusskosten-zh]]`. FAQ F110 + F118 geschärft,
  FAQ-Stand unverändert **F1–F118** (keine neue Frage, nur Präzisierungen bestehender Antworten).
  B1-Konsolidierung und SIA-2024-Zwilling bewusst nicht angegangen (destruktiv, Rückfrage nötig).

- **D62 (Run 92, 2026-07-25)** — PDF-Inventar weiterhin erschöpft; vier parallele Sonnet-
  Rechercheagenten arbeiten drei «Nächster Lauf»-Prioritäten aus Run 91 ab plus ein neues Thema.
  **VKF-Richtlinie 22-15 «Blitzschutzsysteme» selbst beschafft:** echtes Primärdokument (22-15de,
  Ausgabe 01.01.2017) gefunden — der frühere Downloadversuch hatte fälschlich Richtlinie 23-03d
  getroffen. Neunteilige Tabelle wer grundsätzlich blitzschutzpflichtig ist, mit JANS-Healthcare-
  Doppelkriterium (Spital/Pflegeheim ab 20 hilfsbedürftigen Personen Klasse III/II; lebenserhaltende
  Anlagen Klasse II unabhängig von Personenzahl, Betreiberpflicht) → `[[vkf-richtlinie-22-15-blitzschutzsysteme]]`
  (neu, established), FAQ **F119** neu. **GVZ-Prämienmechanik PV/Speicher beschafft:** Einheitsprämie
  0,29 ‰ für alle Gebäude ziffern-genau verifiziert, PV zählt nur als Wertvermehrung, kein eigener
  PV-Zuschlag; Negativbefund für Batteriespeicher (keine GVZ-Aussage) und Kt. Schwyz (keine
  öffentliche Formel bei privaten Versicherern) → `[[gvz-praemienmechanik-pv-speicher]]` (neu,
  established), FAQ **F120** neu. **Neues Thema Fenster-Zielkonflikt Uw/g-Wert (schliesst A5):**
  SIA-180-g_tot-Grenzen orientierungsabhängig (Nord grosszügig, alle übrigen Fassaden inkl. Ost/West
  gleich streng wie Süd), Sonnenschutzglas-vs-Storen-Tradeoff, CH-Stundenkriterium statt DE-
  Kelvinstunden-Methode → neuer Themenartikel `[[fenster-uw-g-wert-zielkonflikt]]`, FAQ **F121** neu.
  **Neues Thema KBOB-Bauteilkatalog CO2 je Aufbau:** Lignumdata Holzbau-Aussenwand 25-34 kg CO2-eq/m²,
  treeze/ZZ-Wancor-Studie belegt Holzriegelwand −73 % ggü. Backstein+EPS bei gleichem U-Wert →
  `[[kbob-bauteilkatalog-co2-je-aufbau]]` (neu, established), FAQ **F122** neu. FAQ-Stand: **122
  Kernfragen (F1-F122) belegt.** B1-Konsolidierung und SIA-2024-Zwilling weiterhin bewusst nicht
  angegangen (destruktiv, Rückfrage nötig).

- **D63 (Run 93, 2026-07-25)** — PDF-Inventar weiterhin erschöpft seit Run 65 (bestätigt). Vier
  parallele Sonnet-Rechercheagenten arbeiten die komplette «Nächster Lauf»-Prioritätenliste aus
  Run 92 ab. **GVZ-PDF `21photovoltaikanlagen-doku-pm.pdf` erfolgreich per curl+pdftotext gelesen**
  (löst den Run-92-Auftrag): kein Fliesstext-Merkblatt, sondern ein Feuerwehr-Dokumentationsformular
  (Legende inkl. Batterien); dahinterliegende Pflicht im VKF-BSM «Solaranlagen» 2001-15de Ziff. 4
  (Orientierungsplan/Strangplan an Feuerwehrkommando) + neue Ziff.-3.3-Anforderung (Hagel-/
  Windwiderstand SIA 261/261-1) → `[[gvz-photovoltaik-melde-versicherungspflicht]]` (neu,
  established), FAQ **F123** neu. **VKF-Richtlinie «Gefährliche Stoffe» Ziff. 3.5.3 selbst
  beschafft:** Primärdokument (26-15de) im Volltext gelesen — **Sekundärzitat widerlegt**, Ziffer
  3.5.3 regelt nur Blitzschutz-Mengenschwellen für Gase/Flüssigkeiten/Reifenlager/Pyrotechnik
  (Buchstaben a-d), keine Buchstaben e/f, keine Batteriespeicher-Erwähnung im Dokument →
  `[[vkf-richtlinie-gefaehrliche-stoffe]]` (neu, established), FAQ **F124** neu. **CH-amtliche
  Glas-g-Wert-Tabelle je Himmelsrichtung — primärquellenbestätigter Negativbefund:** zwei
  Minergie-Primärquellen zeigen, dass der Glas-g-Wert methodisch orientierungsunabhängig gerechnet
  wird (Kap. 6.3.8 Anwendungshilfe 2025-2), nur g_tot (SIA 180) ist orientierungsabhängig; g-Wert-
  Bandbreiten je Verglasungstyp über vier CH-Quellen konsistent belegt (45-62 % Wärmeschutz, 13-40 %
  Sonnenschutzglas) → `[[glas-g-wert-verglasungstypen-ch]]` (neu, established),
  `[[fenster-uw-g-wert-zielkonflikt]]` auf established gehoben, FAQ **F125** neu — **schliesst A5
  vollständig**. **Massivbau-CO2-Gegenzahl zu Lignumdata-Holzbau:** zwei Schweizer Primärquellen
  (Ziegelindustrie-EPD 2017, treeze/Stadt-Zürich-Betonökobilanz 2016) liefern reale absolute
  kg-CO2-eq/m²-Werte — Backstein-Vollwand 35-52, unbewehrte Betonwand 46-69, beide bereits ohne
  Dämmung/Putz/Bewehrung über dem kompletten Holzbau-Wandaufbau (25-34) →
  `[[kbob-massivbau-bauteilaufbau-co2]]` (neu, established), `[[graue-energie]]` ergänzt, FAQ
  **F126** neu. FAQ-Stand: **126 Kernfragen (F1-F126) belegt.** B1-Konsolidierung und
  SIA-2024-Zwilling weiterhin bewusst nicht angegangen (destruktiv, Rückfrage nötig). Neu offen:
  VKF-Richtlinie 22-15 im Volltext + Lithium-Ionen-Infoblatt (Batteriespeicher-Mengenschwellen),
  GVZ-Formular-Versicherungskopplung, Massivbau-Bauteildatenblatt mit vollem Schichtplan,
  SNR 464022.

- **D64 (Run 94, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Vier parallele Rechercheagenten
  arbeiten die komplette «Nächster Lauf»-Prioritätenliste aus Run 93 ab. **VKF 22-15 gezielt auf
  Batteriespeicher geprüft — zweiter Negativbefund:** Volltextsuche «Batterie/Speicher/Lithium/Akku»
  in der Richtlinie 22-15de selbst plus den zwei zitierten Vollzugsdokumenten (GVZ-Weisung 20.06,
  GVB-Merkblatt 09/2024) ergibt keinen Treffer → `[[vkf-richtlinie-22-15-blitzschutzsysteme]]`
  ergänzt, FAQ **F127** neu. **Die tatsächliche Quelle gefunden — löst den seit Run 93 offenen
  Rechercheauftrag:** VKF-Brandschutzmerkblatt «Lithium-Ionen-Batterien» (2005-15de, gültig ab
  01.06.2021) + VKF-FAQ 2005-01 «Lithium-Eisenphosphat-Batterien» (Beschluss ABSV 09.09.2025), beide
  vollständig via curl+pdftotext gelesen: Hazard-Level-Schwellen HL I < 15 / HL II 15-100 / HL III
  > 100 kWh pro Brandabschnitt, Standard-Li-Ionen ab 15 kWh EI 60, für die marktführende LFP-Chemie
  (~80 % CH-Markt) senkt FAQ 2005-01 das auf EI 30 bis 100 kWh, plus EFH-Sonderregel →
  `[[vkf-lithium-batteriespeicher-brandschutz]]` (neu, established), FAQ **F128** neu. **SNR 464022 —
  kein reiner Negativbefund:** über eine frei abrufbare Electrosuisse-Korrigenda-Datei waren 5 von 56
  Normseiten wortgetreu lesbar (Blitzschutzpflicht-Tabelle bestätigt wortgleich das VKF-22-15-
  Destillat, Erder-Werkstofftabelle, harte Norm-Pflicht PV-Integration ins bestehende LPS); Ausgabe
  2015+COR:2016 ist seit 20.02.2024 durch Nachfolgenorm SN 414022:2024 ersetzt (CHF 169.-, kein
  freier Auszug), übrige ~51 Seiten bleiben kostenpflichtig → `[[snr-464022-blitzschutz-ausfuehrung]]`
  (neu, established für die gelesenen Seiten), FAQ **F129** neu. **Neues Thema freie Wahl (Lücken-
  Check bestätigt unabgedeckt):** baurechtlicher Grenzabstand für das Wärmepumpen-Aussengerät als
  Bauteil (nicht Lärmschutz) — neue ZH-Bagatellschwelle § 260 Abs. 4 PBG (seit PBG-Revision
  2.7.2026): Gebäude ≤ 1,5 m Höhe UND ≤ 2 m² Grundfläche brauchen gar keinen Grenz-/Gebäudeabstand,
  die meisten WP-Aussengeräte fallen darunter; SZ kennt keine solche Schwelle, dort 2,50 m
  Grenzabstand (§ 61 PBG SZ), reduzierbar auf null nur mit Nachbarzustimmung →
  `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` (neu, emerging), FAQ **F130** neu; Nebenbefund:
  KB `baurecht` zitiert im Artikel `abstaende-und-hoehen` noch die veraltete 2017er-Fassung von
  § 273 PBG ZH (Aktualisierungshinweis hinterlegt, Umsetzung bei KB baurecht). FAQ-Stand: **130
  Kernfragen (F1-F130) belegt.** B1-Konsolidierung und SIA-2024-Zwilling weiterhin bewusst nicht
  angegangen (destruktiv, Rückfrage nötig). Neu offen: GVZ-Formular-Versicherungskopplung (direkte
  GVZ-Anfrage nötig), Massivbau-Bauteildatenblatt mit vollem Schichtplan, SNR 464022 Rest-51-Seiten
  (bzw. Nachfolgenorm SN 414022:2024 kostenpflichtig), WP-Grenzabstand-Subsumtion amtlich unbestätigt
  (nur Präzedenzfälle).

- **D65 (Run 95, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Vier parallele Agenten arbeiten
  die «Nächster Lauf»-Priorität aus Run 94 ab. **WP-Aussengerät-Grenzabstand vertieft:** eigene
  Volltextsuche in der Entscheiddatenbank des Baurekursgerichts ZH (1'231 Entscheide) bestätigt den
  ZH-Negativbefund («kein Grenzabstandsentscheid zu WP-Geräten») jetzt durch eigene Prüfung statt
  Vermutung (nur BRGE IV 0052/2014 + neu BRGE I 0071/2017, beide reine Bewilligungspflicht/Lärm);
  die stützende ausserkantonale Linie ist präziser geworden — VGE AG WBE.2018.330 (3.12.2018) hält
  fest, ein WP-Gerät gelte NICHT als «Gebäude» im IVHB-Sinn, habe aber aus Rechtsgleichheitsgründen
  (Art. 8 BV) Anspruch auf das Kleinbauten-Grenzabstandsprivileg — übertragbarer als die bisherige
  «WP=Gebäude»-Analogie; BGer 1C_204/2015 ergänzt dazu die Verkabelungs-Erwägung →
  `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` bleibt emerging, FAQ **F130** geschärft. **GVZ-
  Meldeprozess PV-Feuerwehr↔Versicherung geklärt:** acht gvz.ch-Primärquellen (Formulare,
  Versicherung, Brandschutz, Feuerwehr, Medienmitteilung) zeigen konsistent, dass die Feuerwehr-
  Dokumentation (VKF-BSM Solaranlagen Ziff. 4) und die Versicherungs-Wertvermehrungsmeldung zwei
  strukturell getrennte, unverlinkte GVZ-Meldewege sind — löst den seit Run 92 offenen Punkt →
  `[[gvz-pv-meldeprozess-versicherung-feuerwehr]]` (neu, established), FAQ **F131** neu. **E84
  ZH-Solarpflicht-Beratungsstand — fünfter und letzter aktiver Versuch:** drei genuin neue Methoden
  (direkte Geschäfts-URLs, Google-Index CDWS-Dateiserver, KEVU-Traktandensuche) bestätigen denselben
  Negativbefund wie die vier Vorversuche; nach fünf methodisch unterschiedlichen Versuchen über
  sieben Wochen gilt der Sachstand als stabil bestätigt statt als Lücke → E84 aus der aktiven
  Prioritätenliste gestrichen, künftig nur noch ereignisgetrieben (neue Medienmitteilung/KEVU-
  Bericht) nachtragen, FAQ **F116** geschärft. **Neues Thema freie Wahl (Lücken-Check bestätigt
  unabgedeckt, alle Kandidaten aus Run 94 bereits abgedeckt):** grüne Hypotheken/Klimahypotheken —
  SBVg-Selbstregulierung (Juni 2022, Volltext) verpflichtet Banken seit 1.1.2023 zur Thematisierung
  der Energieeffizienz bei EFH/Ferienhaus-Finanzierung, aber nicht zum Zinsrabatt; Praxisbeispiel
  ZKB-Umweltdarlehen (Volltext-Factsheet) bis −0,8 % p.a. bei GEAK-Nachweis, laut IFZ-Studie
  (Sekundärquelle) rund ein Drittel der CH-Banken mit Zinsrabatt (Ø 0,38 Pp.) →
  `[[gruene-hypotheken-klimahypotheken-ch]]` (neu, emerging), FAQ **F132** neu. FAQ-Stand: **132
  Kernfragen (F1-F132) belegt.** B1-Konsolidierung und SIA-2024-Zwilling weiterhin bewusst nicht
  angegangen (destruktiv, Rückfrage nötig). Neu offen: mögliche interne unpublizierte GVZ-Praxis
  (Direktanfrage nötig), Massivbau-Bauteildatenblatt mit vollem Schichtplan, SNR 464022 Rest-51-
  Seiten, Marktbreite grüne Hypotheken über ZKB-Beispiel hinaus (IFZ-Studie im Original beschaffen),
  WP-Grenzabstand-Subsumtion für Kt. Schwyz weiterhin ganz ohne Präzedenzfall.


- **D66 (Run 96, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Vier parallele Agenten arbeiten
  die «Nächster Lauf»-Priorität aus Run 95 ab. **Massivbau-Bauteildatenblatt gefunden:** zwei
  Herstellerquellen (KSV Kalksandstein 04.2015, swisspor Backstein 06/2022) liefern je einen
  vollständigen Kompaktfassaden-Schichtaufbau (Tragwerk+Dämmung+Putz) mit U-Wert-Staffelung
  0.36→0.13 W/m²K → `[[massivbau-bauteildatenblatt-ksv-swisspor]]` (neu, established für
  Schichtaufbau/U-Wert; CHF/m²-Kennwert bestätigter Negativbefund, keine Primärquelle gefunden).
  **Grüne Hypotheken vertieft:** IFZ Sustainable Lending Monitor 2023 im Volltext gelesen
  (26/88 Banken ≈ 30 %, 0,38 Pp. Zinsrabatt), 2024-Ausgabe über Institutsblog bestätigt (36,5 %
  von 85, dieselbe 0,38-Pp.-Zahl — Jahrgänge nicht verwechseln); sieben weitere Bankprodukte
  ergänzt (UBS, Raiffeisen Aare-Reuss, Migros Bank, BEKB, LUKB primärquellenbelegt, SZKB nur
  sekundärquellig) → `[[gruene-hypotheken-klimahypotheken-ch]]` auf established gehoben, FAQ F132
  geschärft. **Fernwärme-Objektgrössenschwelle weiter eingegrenzt:** gezielte Abfrage realer
  Grossobjekte (Alters-/Pflegeheime) statt Strassenlisten fand mit Tertianum Residenz Huob
  (Pfäffikon SZ) einen neuen Verweigerungsfall bei ≈303 kW — Fenster schrumpft von 290-407 kW auf
  **ca. 290-303 kW**; Reglements-Check (TAB V1.8 + AGB V5.0) bestätigt weiterhin keine publizierte
  Formel → `[[fernwaerme-anschlusskosten-zh]]`. **Neues Thema freie Wahl (Lücken-Check bestätigt
  unabgedeckt):** Wärmerückgewinnung aus Duschwasser (Joulia-Duschrinnen) — 13-46 % Wärmerück-
  gewinnung, Mehrpreis ~CHF 600.-, Payback ~3 Jahre (Herstellerangabe), anrechenbar MuKEn/EN-ZH
  (10 % pauschal) + Minergie (bis 46 %); keine 10°C-Gesetzesgrenze für Privathaushalte (nur
  ARA-Dimensionierung) → `[[duschwasser-waermerueckgewinnung-joulia]]` (neu, emerging), FAQ **F133**
  neu. FAQ-Stand: **133 Kernfragen (F1-F133) belegt.** B1-Konsolidierung und SIA-2024-Zwilling
  weiterhin bewusst nicht angegangen (destruktiv, Rückfrage nötig). Neu offen: bauteilkatalog.ch
  PRO-Zugang manuell verifizieren, Urner/Thurgauer Kantonalbank + SZKB primärquellig nachziehen,
  SIA-385/2:2025-Endfassung zur Duschwasser-WRG-Methode verifizieren, WP-Grenzabstand-Subsumtion
  für Kt. Schwyz weiterhin ganz ohne Präzedenzfall.

- **D67 (Run 97, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Vier parallele Agenten arbeiten
  die «Nächster Lauf»-Priorität aus Run 96 ab. **Grüne Hypotheken: Marktbreite lückenlos
  primärquellenbelegt:** Urner KB (Minergiehypothek 0,5 % + Energie-Sanierungshypothek 0,5 %),
  Thurgauer KB (Energie-Hypothek 0,50 Pp.) und Schwyzer KB (Nachhaltigkeits-Bonus 0,300 %, jetzt
  primärquellig statt nur via moneyland.ch) direkt auf den Bank-Websites verifiziert →
  `[[gruene-hypotheken-klimahypotheken-ch]]` bleibt established, elf statt acht Bankprodukte,
  FAQ F132 geschärft. **Massivbau-CHF/m²: Näherung gefunden:** AKTIVA AG nennt CHF 280.-/m² für
  eine Kompaktfassade (BKP 22, Blend aus Schätzerhandbuch/Wüest Partner/eigenen Erhebungen, keine
  Einzelquellen-Trennung, kein Ausgabejahr) → neuer emerging-Baustein in
  `[[massivbau-bauteildatenblatt-ksv-swisspor]]` (Schichtaufbau/U-Wert bleibt established),
  FAQ **F134** neu. **Duschwasser-WRG: SIA 385/2:2025 + GEAK-Mechanik verifiziert:** SIA-Webshop-
  Leseprobe bestätigt neuen informativen Anhang K «Wärmerückgewinnung aus Duschwasser» (S. 53-60),
  Rechenweg bleibt hinter der kostenpflichtigen Vollversion verschlossen; geak.ch liefert die
  GEAK-Erfassungsmechanik (Wärmeerzeuger «Solarenergie thermisch», fallbezogene Berechnung, keine
  feste Pauschale) → `[[duschwasser-waermerueckgewinnung-joulia]]` bleibt emerging, FAQ F133
  geschärft. **Neues Thema freie Wahl:** WDVS-Brandriegel bei Fassadendämmung — TKB-VKF-geprüftes
  EPS-Verband-Fachdokument liefert die Brandriegel-Kernanforderung (RF1, Schmelzpunkt ≥1'000 °C,
  ≥0.2 m Höhe je Geschoss ab 11 m Gesamthöhe) direkt aus der rechtsverbindlichen VKF-Richtlinie
  14-15 → `[[wdvs-brandriegel-fassadendaemmung-vkf]]` (neu, established), FAQ **F135** neu. FAQ-
  Stand: **135 Kernfragen (F1-F135) belegt.** Prozess-Lehre: die ersten vier Rechercheagenten
  (subagent_type energie-berater) liefen im Hintergrund ohne echten Tool-Aufruf leer (0 tool_uses,
  keine Dateiänderung trotz "completed") — nach Diagnose per git status/diff mit general-purpose-
  Subagenten neu gestartet, die 20-27 echte Tool-Aufrufe/Agent ausführten. B1-Konsolidierung und
  SIA-2024-Zwilling weiterhin bewusst nicht angegangen (destruktiv, Rückfrage nötig). Neu offen:
  isolierter Massivbau-CHF/m²-Primärwert (Schätzerhandbuch-Original oder Büro-CRB-OAK-Zugang),
  WDVS-Brandriegel-Kostenaufwand CHF/lfm, BSV-2026-Totalrevision-Inkraftsetzungsdatum, SIA-385/2-
  Vollversion-Kaufentscheid bei Raphael.

- **D68 (Run 98, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Drei parallele general-purpose-
  Agenten arbeiten die Run-97-Prioritätenliste ab (energie-berater-Subtyp bewusst gemieden, nach
  der Run-97-Lehre zu Hintergrund-Stalls; alle drei Agenten diesmal mit 18-29 echten Tool-Aufrufen
  verifiziert). **WDVS-Brandriegel Kosten + BSV-2026:** CHF/lfm-Mehrkosten bleiben bestätigter
  Negativbefund (Gebäudehülle Schweiz/FFF/Sto AG ohne öffentliche Kennzahl; einzige Grössenordnung
  eine deutsche Quelle, bewusst nicht als Schweizer Wert übernommen); BSV-2026-Totalrevision jetzt
  mit konkretem Zieldatum **Frühling 2027** (IOTH-Plenarversammlung März 2027), inhaltlicher Bezug
  zur Brandriegel-Pflicht weiterhin offen → `[[wdvs-brandriegel-fassadendaemmung-vkf]]` bleibt
  established, FAQ F135 geschärft. **Massivbau-CHF/m²: zweiter bestätigter Negativbefund:** vier
  weitere Quellen (Wüest Partner Holzbaukennzahlen, Amt für Hochbauten Stadt Zürich, CRB/
  werk-material.online, Statistisches Amt Kt. ZH) liefern keinen isolierten, datierten Primärwert —
  Wüest-Partner-Studien nur Gesamtgebäude-Kennwerte, Stadt-Zürich-Dokument anonymisiertes
  Ausfüll-Muster ohne Datum → `[[massivbau-bauteildatenblatt-ksv-swisspor]]` bleibt bei
  CHF/m² emerging (AKTIVA-AG-Näherung unverändert einzige Hausnummer), FAQ F134 geschärft.
  **Neues Thema freie Wahl: SWKI-Lüftungsnormen Gesundheitsbau** (schliesst die in
  `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]`/F78 explizit offen gelassene Lüftungslücke OP/CT/MRT):
  SWKI VA105-01:2015 (Nachfolgerin SWKI 99-3:2003) als Leseprobe primärquellig gelesen — eigene
  Lüftungskonzepte 1a/1b (TAV vs. Mischlüftung) für OP-Saal/Isolierzimmer/IPS, Kühllast bis
  200 W/m² im OP laut Vorwort, Wärmerückgewinnung in eigenem Anhang B3 differenziert statt
  Standardkomponente, TAV-Infektionsschutz-Vorteil physikalisch plausibel aber statistisch
  unbelegt (Richtlinie selbst); konkrete Zahlentabellen kostenpflichtig, deutsche DIN-1946-4-Werte
  nur als ausdrücklich markierte Analogie beigezogen → `[[swki-lueftung-gesundheitsbau-hygiene-
  energie]]` (neu, emerging), FAQ **F136** neu. FAQ-Stand: **136 Kernfragen (F1-F136) belegt.**
  B1-Konsolidierung und SIA-2024-Zwilling weiterhin bewusst nicht angegangen (destruktiv,
  Rückfrage nötig). Neu offen: SWKI-VA105-01-Vollversion (Kaufentscheid bei Raphael) für die
  konkreten Luftwechsel-/Filterklassen-/Druckwerte, Verzahnung SWKI VA105-01 ↔ SIA-2024-Kategorien
  VIII.1/VIII.2 ungeklärt, WDVS-Brandriegel-Kosten weiterhin nur über reale Unternehmerofferte
  klärbar, isolierter Massivbau-CHF/m²-Primärwert nach zwei Negativbefunden nur noch über
  lizenzierten CRB-/Schätzerhandbuch-Zugang erreichbar (Meta-Entscheid: weitere Suchversuche ohne
  neuen Ansatz sind Token-Verschwendung, Thema auf passive Beobachtung umstellen wie E84).

- **D69 (Run 99, 2026-07-25)** — PDF-Inventar weiterhin erschöpft. Drei der vier Run-98-Prioritäten
  (B1-Konsolidierung, SWKI-VA105-01-Vollversion, Duschwasser-WRG SIA-385/2-Vollversion) sind
  Kaufentscheide/destruktive Rückfragen bei Raphael und bleiben bewusst unangetastet; Massivbau/
  WDVS-Brandriegel sind auf passive Beobachtung umgestellt. Drei parallele general-purpose-Agenten
  bearbeiten stattdessen Prioritätspunkt 5 (neue Themen freier Wahl, Web-Pfad), alle drei per
  `git status` vor der Register-Konsolidierung als echt geschrieben verifiziert. **Trinkwasser-
  erwärmung: Legionellenschutz vs. WP-Effizienz** (neues Themenfeld) — SIA 385/1:2020 senkt die
  pauschale 60-°C-Vorgabe auf gestufte 50-55 °C und schafft die wöchentliche Legionellenschaltung
  ab (kein belegter Hygienenutzen); Zielkonflikt konkret erklärt (Legionellen-Wachstumsoptimum
  ≈37 °C im WP-Effizienzfenster 35-45 °C), Hebel = saubere Anlagenplanung statt pauschales
  Hochheizen → `[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]` (neu, emerging), FAQ
  **F137** neu. **Betonkernaktivierung/TABS** (neues Themenfeld, Healthcare-relevant) — Rohrregister
  in der Rohbaudecke, Systemtemperaturen Heizen 22-32 °C/Kühlen 16-20 °C (tiefste Vorlauftemperatur,
  ideal für WP-JAZ), aber träge Regelung (Stunden-Tage-Verzug) erfordert Vorsteuerung statt
  klassischer Raumregelung; geeignet für grosse Gebäude mit stabiler Nutzung (Büro/Schule/
  Pflegebereich), ungeeignet für lastvariable Räume wie OP-Säle (nur D-Sekundärquellen für die
  Nicht-Eignungsaussage) → `[[betonkernaktivierung-tabs-energieeffizienz]]` (neu, emerging),
  Backlinks in `[[waermepumpe-systemvergleich]]`, `[[sommerlicher-waermeschutz-sia180-
  nachweisverfahren]]`, `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` ergänzt, FAQ **F138**
  neu. **Sanierungsfahrplan/Etappierung Gebäudehülle** (neues Themenfeld) — Etappieren ist erlaubt,
  entscheidend ist ein vorab erarbeitetes Gesamtkonzept (GEAK Plus); Faustregel «Hülle vor Heizung»
  (EnergieSchweiz) vermeidet überdimensionierte Heizung + Wärmebrücken; Förder-Fallstrick:
  90-%-Bonusschwelle ZH/SZ für die Gesamtsanierung muss von der ersten Etappe an mitgeplant werden
  → `[[sanierungsfahrplan-etappierung-gebaeudehuelle]]` (neu, emerging), FAQ **F139** neu. FAQ-Stand:
  **139 Kernfragen (F1-F139) belegt.** Alle drei neuen Themen bewusst ehrlich als `emerging`
  eingestuft (Norm-Volltexte SIA 385/1, SIA 384.354, SIA 385/2 durchweg kostenpflichtig und nicht
  gelesen; einzelne Eignungsaussagen nur über nicht-schweizerische Sekundärquellen). Neu offen:
  SIA-385/1-Volltext (Verhältnis zu SVGW W3/E3 bei abweichenden Speicheraustritts-Werten klären),
  SIA-384.354-Volltext + TABS-Control-Primärforschung (Tödtli et al. 2009, Wiley-Paywall), TABS-
  CHF/m²-Kostenkennwerte (noch nicht recherchiert), Etappenfolge-Primärquelle direkt bei
  Gebäudehülle Schweiz verifizieren (bisher nur Migrol-Blog-Zitat).

- **D70 (Run 100, 2026-07-25)** — Drei parallele general-purpose-Agenten arbeiten die Run-99-
  Prioritätenpunkte 4/5/6 ab (Punkte 1-3 bleiben Kaufentscheide/passive Beobachtung). **TABS
  OP-Saal-Eignung** (Punkt 4): systematische Suche (10 Suchanfragen, 12 CH-Fachseiten) bestätigt den
  Negativbefund erneut — weiterhin keine Schweizer Primärquelle mit Spitalbezug, die TABS-Eignung
  differenziert nach Raumtyp beurteilt; neue CH-Primärquelle zur allgemeinen Regelungsproblematik
  ergänzt (Gwerder/Tödtli/Lehmann/Dorer, Applied Energy 86, 2009, Volltext); ein SWKI-VA105-01-Hinweis
  aus einem Suchtreffer ausdrücklich als unverifiziert markiert → `[[betonkernaktivierung-tabs-
  energieeffizienz]]` bleibt emerging, FAQ F138 geschärft. **Sanierungsfahrplan-Primärquelle**
  (Punkt 5): Positivbefund — die Verbandsbroschüre «Königsweg e+» (Gebäudehülle Schweiz, TK Solar/
  Energie, V1.2 April 2020, 16 S. vollständig gelesen) bestätigt die 3-Etappen-Folge (Hülle,
  Heizung/Solarthermie, PV/Speicher) wörtlich → `[[sanierungsfahrplan-etappierung-gebaeudehuelle]]`
  auf **established** gehoben, FAQ F139 geschärft. **Neues Thema: urbane Hitzeinseln/Aussenraum-
  Kühlung** (Punkt 6, Klimawandel-Anpassung, Grep-Check bestätigte echte Lücke) — BAFU/ARE-
  Grundlagenbericht «Hitze in Städten» (2018) + Kanton-ZH-Kühlkennwerte (Baum >7 °C, Dachbegrünung
  bis 6,6 °C, Wasserelemente bis 8 °C, heller Belag nur 0,6 °C) + Stadt-Zürich-Fachplanung
  Hitzeminderung/Stadtklimatool + MeteoSchweiz Climate CH2025 → `[[urbane-hitzeinseln-
  kuehlstrategien-aussenraum]]` (neu, emerging), Backlinks in `[[sommerlicher-waermeschutz]]` und
  `[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]` ergänzt, FAQ **F140** neu. FAQ-Stand:
  **140 Kernfragen (F1-F140) belegt.** Alle drei Agenten vor Register-Konsolidierung per
  `git status` als echt geschrieben verifiziert (zwei geänderte + eine neue Destillat-Datei). Neu
  offen: BAFU/ARE-Bericht 2018 im PDF-Volltext lesen (bisher nur Web-Auszug), Kt.-SZ-Pendant zur
  Zürcher Fachplanung Hitzeminderung, «5x mehr Tropennächte»-Zahl am MeteoSchweiz-Primärbericht
  direkt verifizieren, fünf gebündelte Kaufentscheide (B1, SWKI-VA105-01, SIA-385/1, SIA-385/2,
  SIA-384.354) sollten Raphael bald tatsächlich vorgelegt statt nur weitergetragen werden.

- **D71 (Run 101, 2026-07-25)** — Drei parallele general-purpose-Agenten arbeiten Run-100-Priorität
  3 (Hitzeinseln vertiefen) und 4 (neues Thema frei) ab; ein vierter Auftrag (Priorität-Backlog
  Blitzschutz/Lithium/SNR 464022) stellte sich als bereits in Run 94 erledigt heraus — der Agent
  fand die beiden Ziel-Destillate schon vorhanden (`vkf-lithium-batteriespeicher-brandschutz`,
  `snr-464022-blitzschutz-ausfuehrung`), editierte nichts und meldete stattdessen den veralteten
  `wiki/INDEX.md`-Backlog-Eintrag zurück — dort bereinigt. **BAFU/ARE-Volltext + Kt. SZ + MeteoSchweiz**
  (Punkt 3): der BAFU/ARE-Bericht UW-1812-D (2018, 108 S.) wurde diesmal per NCCS-Spiegel vollständig
  gelesen (Original-Domains bafu.admin.ch/are.admin.ch lieferten HTTP 502) — wichtige Korrektur: die
  vereinfachte 5er-Massnahmenliste war eine Verkürzung, der Bericht selbst gliedert eigenständig in
  6 Planungsgrundsätze + 3 städtebauliche Leitsätze + 18 Einzelmassnahmen; mehrere Kanton-ZH-
  Kühlwerte weichen vom Original ab und wurden präzisiert (Fassadenbegrünung 4,8 vs. 1,3 °C,
  Wasserelemente 8 °C = Oberflächen- nicht Lufttemperatur-Effekt, Albedo 0,6 °C stammt von einer
  US-EPA-Schätzung für L.A.). Kt. Schwyz hat seit 13.04.2026 eigene Klimakarten (WebGIS), aber
  ausdrücklich nur für Fachleute/Gemeinden/Bezirke — kein Pendant zum Zürcher Stadtklimatool/zur
  Freiraumberatung gefunden (differenzierter Teilbefund, kein reiner Negativbefund). Die
  «5x mehr Tropennächte»-Zahl wurde an der offiziellen MeteoSchweiz-Medienmitteilung (04.11.2025)
  verifiziert und bestätigt (keine Ungenauigkeit der Sekundärquelle) →
  `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` von emerging auf **established** gehoben,
  FAQ F140 geschärft. **Neues Thema: Energie-Performance-Gap** (Punkt 4, Lücken-Check per grep
  bestätigte echte Lücke — MuKEn-Modul-7-Destillat deckt nur die gesetzliche Betriebsoptimierungs-
  Pflicht ab, nicht das Phänomen selbst): EBP-Grundlagenbericht (BFE/EnergieSchweiz/Stadt Zürich,
  November 2019, 31 S. Volltext) zeigt einen Mehrverbrauch von 10-44 % bei CH-Mehrfamilienhäusern
  gegenüber dem SIA-380/1-Standardbedarf (Haupttreiber Verhaltens-Gap: reale Raumtemperatur
  ~22,5 °C statt Norm-20 °C), während zertifizierte Minergie-P/A-Neubauten gemäss GAPxPLORE-Studie
  tendenziell weniger verbrauchen (-12 % bis -18 %); vier Gap-Komponenten (Verhaltens-/Technischer-/
  Klima-/Modellierungs-Gap), Gegenmassnahmen Sub-Metering/Commissioning/Nutzerkommunikation →
  `[[energie-performance-gap-monitoring-inbetriebnahme]]` (neu, emerging), FAQ **F141** neu.
  FAQ-Stand: **141 Kernfragen (F1-F141) belegt.** Alle drei Agenten-Ergebnisse vor Register-
  Konsolidierung per `git status` verifiziert (ein geändertes + ein neues Destillat; der dritte
  Agent hatte bewusst nichts editiert). Neu offen: GAPxPLORE-Studie im Volltext lesen (bisher nur
  Minergie-Sekundärdarstellung), Healthcare-/Pflegebau-spezifische Performance-Gap-Zahlen fehlen
  vollständig, Dachbegrünung/Rasenfläche-Kühlwerte (Kt. ZH) weiterhin ohne eigene Primärstudie,
  Fassadenbegrünungs-Diskrepanz (4,8 vs. 1,3 °C) ungeklärt, fünf gebündelte Kaufentscheide (B1,
  SWKI-VA105-01, SIA-385/1, SIA-385/2, SIA-384.354) sollten Raphael jetzt tatsächlich vorgelegt
  werden statt weiter nur mitgeführt zu werden — wächst seit Run 98 unverändert im Backlog.

- **D72 (Run 102, 2026-07-25, vier parallele Agenten)** — Vier `general-purpose`-Rechercheagenten
  arbeiten die Run-101-Prioritäten 3+4 sowie zwei neue Themen ab. **GAPxPLORE-Original gefunden**
  (Cozza et al., BFE-Schlussbericht SI/501518-01, 19.11.2019, 145 S., Volltext) — alle vier bisher
  nur sekundär zitierten Minergie-P/A-Zahlen (-12/-18/-16/-5,3 %) wortgetreu bestätigt, methodischer
  Spannungspunkt (gesamtschweizerischer EPG -6 % vs. Wohnbau-Mehrverbrauch +10 bis +44 %) eingeordnet
  → `[[energie-performance-gap-monitoring-inbetriebnahme]]` auf **established** gehoben, FAQ F141
  geschärft. **Kt.-ZH-Kühlwerte-Diskrepanz geklärt** (Primärquelle Stadt-Zürich-Bericht «Fachplanung
  Hitzeminderung» 2020, FITNAH-3D-Modellierung im Volltext gelesen): Kanton-Website zeigt nur den
  Tag-PET-Wert, der Bericht selbst weist zusätzlich einen Nacht-Lufttemperatur-Wert aus, der bei
  Fassadenbegrünung exakt dem BAFU-Original (1,3 °C) entspricht — kein Widerspruch, zwei
  unterschiedliche Kenngrössen; Rasenfläche-Kühlwert neu belegt (Tag PET Median -3,6 °C/Max -6,6 °C),
  «Baum auf Rasen» als wirksamste Einzelmassnahme ergänzt (Max -8,7 °C); einzige weiterhin
  US-EPA-basierte Zahl bleibt heller Belag (0,6 °C) → `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]`
  ergänzt, FAQ F140 geschärft. **Neues Thema: Energie-Performance-Gap im Gesundheitsbau** (Spital/
  Pflegeheim, JANS-Healthcare-Fokus): sauberer Negativbefund nach vier im Volltext durchsuchten
  Primärquellen (EBP/Minergie 2019, FHNW/Brenet 2014, Stadt Zürich 2022, keine enthält einen
  Gesundheitsbau-Fall) — als Näherung reale deutsche Krankenhaus-Kennwerte (150 bis >300 kWh/m²/a
  bzw. 20'000-35'000 kWh/Bett·Jahr) plus drei strukturelle Gap-Treiber aus KB-Bestand hergeleitet
  (24/7-Betrieb ohne Nachtabsenkung, vom Energienachweis ausgeklammerter Prozessenergieanteil,
  extreme Fallstreuung Medizintechnik) → `[[energie-performance-gap-gesundheitsbau]]` (neu,
  speculative), FAQ **F143** neu. **Neues Thema (frei gewählt): Smart-Meter-Rollout Schweiz**
  (StromVV Art. 8a decies ff. im Volltext gelesen, bisher als Lücke unter ZEV/LEG identifiziert):
  80-%-Rollout-Ziel bis Ende 2027/1.1.2028 (Stand Ende 2024: 50,2 %), Kosten grundsätzlich beim
  Netzbetreiber via Messentgelt; zentraler Bauherren-Hebel — ZEV/LEG hat erzwingbaren 3-Monats-
  Anspruch auf Smart Meter an allen Messpunkten (Art. 8a decies Abs. 6 StromVV), entkoppelt ein
  geplantes vZEV vom allgemeinen VNB-Rollout-Fahrplan → `[[smart-meter-rollout-schweiz]]` (neu,
  established), FAQ **F142** neu. FAQ-Stand: **143 Kernfragen (F1-F143) belegt.** Alle vier Agenten-
  Ergebnisse vor Register-Konsolidierung per `git status` verifiziert (zwei geänderte + zwei neue
  Destillate). Weiterhin offen: fünf gebündelte Kaufentscheide (unverändert seit Run 98, sollten
  Raphael jetzt vorgelegt werden), Massivbau-CHF/m²/WDVS-Brandriegel-Kosten (passive Beobachtung),
  Meta-Punkt M2 (Skill-Entscheidung "energie" eigenständig?) weiterhin unentschieden.

- **D73 (2026-07-25, Auftrag Raphael: Lärmschutz bei Wärmepumpen-Aussengeräten)** — Bei Prüfung
  des Auftrags festgestellt: die **Berechnungsmethodik selbst** (Cercle Bruit Vollzugshilfe 6.21,
  Formel Leq/Lr, Planungswerttabelle Anhang 6 LSV, Fallbeispiel) war bereits seit Run 56/57
  vollständig destilliert und **established** (`[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`,
  FAQ F65) — keine Doppelarbeit, stattdessen die dort offen gebliebene **Verfahrensfrage**
  geschlossen: wer prüft den Nachweis, in welchem Verfahren, was passiert bei Reklamation/Einsprache.
  Vier ZH-Behördenseiten (zh.ch Lärmschutz-Neuanlagen, Meldeverfahren, Wärmepumpen/AWEL) direkt per
  WebFetch gelesen: die Prüfung läuft über die **private Kontrolle** durch eine befugte Fachperson
  («Schutz vor Lärm» bzw. «Heizungsanlagen»), nicht durch eine Behörde direkt; Meldeverfahren seit
  1.1.2023 mit 30-Tage-Frist, Ausnahme Kernzone/Ortsbild-/Denkmalschutz (dann ordentliches
  Bewilligungsverfahren); AWEL nur für Sole/Wasser- und Wasser/Wasser-WP zuständig, nicht für die
  Luft/Wasser-Lärmfrage. Für Kt. Schwyz zwei sz.ch-Seiten (AfU Lärm und Bauen, Zuständigkeiten)
  gelesen: **kein eigenes WP-Lärm-Merkblatt** (Negativbefund, Kanton verweist direkt auf Cercle
  Bruit), operative Zuständigkeit bei Reklamationen über bestehende Anlagen liegt bei **Gemeinde/
  Bezirk**, das AfU ist nur unterstützende Fachstelle. Einsprache-/Reklamationsablauf (Gespräch →
  formale Einsprache → Aussprache) nur über eine journalistische Sekundärquelle (Beobachter-
  Ratgeber) belegt, explizit als solche markiert; die kursierende Kostenfolge einer nachträglichen
  Lärmmessung bei Nachbarreklamation ist **nicht** amtlich verifiziert und bewusst als offener Punkt
  stehen gelassen statt übernommen → neues Destillat `[[waermepumpe-aussenlaerm-vollzugshilfe]]`
  (emerging, bewusst als Verfahrens-Ergänzung zum bestehenden Formel-Destillat angelegt, keine
  Duplizierung), FAQ **F144** neu, Themenartikel `[[waermepumpen-laermschutz]]` ergänzt (jetzt zwei
  Destillate), Querverweis im bereits bestehenden Grenzabstand-Destillat
  `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` ergänzt (neuer Backlink auf das neue
  Verfahrens-Destillat, gegenseitige Verlinkung). FAQ-Stand: **144 Kernfragen (F1-F144)
  belegt.**

- **D74 (2026-07-25, Auftrag Raphael: sommerlicher Wärmeschutz/Überhitzungsschutz Wohnbau)** —
  Vor Recherchebeginn geprüft: das angefragte Thema (SIA 180:2014 Nachweisverfahren, Grenzwerte,
  Zielkonflikt Dämmung/Fensterflächen, Massnahmen) war bereits seit Run 74 vollständig destilliert
  und **established** (`[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]`, Wiki-Artikel
  `[[sommerlicher-waermeschutz]]`, FAQ F11/F88/F121/F125/F140) — kein neues Destillat unter
  identischem Zuschnitt angelegt (Verlinken statt doppeln, Rule `wissens-bibliothekar`), stattdessen
  gezielt die vom Auftrag genannten und in der KB tatsächlich offenen Punkte geschlossen: **MuKEn-
  Bezug** und **Kt.-SZ-Vorgaben** fehlten bisher komplett (bestehende Coverage war reine
  Kt.-ZH-Vollzugspraxis). MuKEn-2025-Originaltext Art. 1.7–1.11 + Erläuterungen per curl+pdftotext
  im Volltext gelesen (Art. 1.9: sommerlicher Wärmeschutz erstmals eigener Basismodul-Artikel,
  Abs. 2 Kühlfall/Abs. 3 alle übrigen Räume inkl. Wohnbauten, Ausnahme reversible WP ohne aktive
  Kühlabgabe, Befreiungstatbestände Art. 1.10 Abs. 3). Kt.-SZ-Vollzugsseiten (energie-
  zentralschweiz.ch, sz.ch Amt für Umwelt und Energie) per WebFetch gelesen: MuKEn 2014 seit
  1.5.2022, EVEN seit 1.1.2026 wie Kt. ZH, **keine eigene SZ-Wegleitung zum sommerlichen
  Wärmeschutz auffindbar** (ehrlicher Negativbefund, kein positiver Beleg). Beide Funde in
  `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` (neue Abschnitte «MuKEn 2025 Art. 1.9»
  und «Kt. Schwyz — Vollzug») und im Wiki-Artikel ergänzt, FAQ **F145** neu (Frage: schützt gute
  Dämmung + grosse Fenster nicht ohnehin vor Überhitzung — Antwort: nein, eigener Nachweis
  zwingend). FAQ-Stand: **145 Kernfragen (F1-F145) belegt.** Offen bleibt: SIA 180 Figur 13
  (Dachflächenfenster) weiterhin nur als Grafik, nicht als Formel; Verhältnis SIA 380/2:2022 Ziff.
  3.2 (MuKEn-2025-Zitat) zu SIA 382/1:2014 (bisherige ZH-Praxis) für die Definition «Kühlung
  notwendig/erwünscht» nicht geklärt.

- **D75 (2026-07-25, adversariale Nachverifikation Auftrag)** — `[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]`
  (Run 99, bisher `emerging`) gezielt auf die beiden im Destillat selbst benannten Lücken hin
  nachverifiziert: Norm-Volltext SIA 385/1:2020 und BAG/BLV-Original waren bisher nur über
  Sekundärquellen bzw. gar nicht (Server-Fehler) belegt. Diesmal **beide beschafft**: das
  amtliche **BAG/BLV-Original** «Legionellen und Legionellose», Modul 11 (blv.admin.ch, per
  curl+pdftotext vollständig gelesen, Ausgabe 22.08.2018 — eine WebFetch-Zusammenfassung hatte
  zwischenzeitlich fälschlich ein Update «13.03.2026» behauptet, der direkte Download widerlegte
  dies: unverändert seit 2018, Lehre für künftige Verifikationsläufe festgehalten) sowie eine
  **primärnahe SIA-385/1-Quelle** (Kommissionspräsentation Dr. Michel Haller, 3.11.2020, fws.ch,
  mit direkt reproduzierten Norm-Temperaturtabellen, Quelle J.M. Suter/SIA Komm. 385/1). Ergebnis:
  Kernaussage bestätigt, aber **wesentlich präzisiert** — die 52-55 °C sind eine bedingte 3-K-
  Erleichterung für nachweislich optimal geplante/betriebene Anlagen, nicht die neue Pauschale;
  die Grundordnung (BAG/BLV unverändert seit 2018, SVGW W3/E3:2020 «im Einklang» damit lt.
  aquaetgas.ch) bleibt bei 60/55/50 °C und verlangt für identifizierte Vorwärm-Risikozonen
  weiterhin eine wöchentliche 60-°C-Stunde (keine Evidenz einer Aktualisierung seit der SIA-385/1-
  Revision gefunden). Die vormals genannte Zahl «60 °C während 6 Stunden monatlich bei 150 %
  Tagesbedarf» liess sich an keiner Primärquelle bestätigen und wurde durch die belegte «über
  70 °C monatlich, laut Kommission in seltenen Fällen» ersetzt. Damit auch das offene Verhältnis
  SIA 385/1 ↔ SVGW W3/E3 geklärt (keine konkurrierenden Systemklassen, sondern Grundordnung +
  bedingte Ausnahme). → Destillat von `emerging` auf **established** gehoben, FAQ F137 geschärft,
  INDEX (destillate + wiki) nachgeführt.
## D79 (Run 107, 2026-07-25) — Verifikations-/Qualitätslauf statt neuer Themenwahl
PDF-Inventar weiterhin erschöpft seit Run 65. Zwei offene Punkte aus Run 106 geschlossen: (a)
WPSM-Pflichtenheft (25.05.2020) + BFE-Schlussbericht (2018) vollständig gelesen, Prüfschritt
Heizkörper-Eignung im Sanierungsfall belegt (Verbrauchshistorie-Rückrechnung statt Raum-
Heizlastberechnung), unbelegte deutsche JAZ-Faustregel durch CH-eigene Näherung ersetzt, unbelegte
«FWS-Modul-Pflicht ab 2027» widerlegt und gestrichen → `[[waermepumpen-system-modul-wpsm-
heizkoerper-altbau]]` auf established, FAQ F154 geschärft. (b) Ueberschneidungs-Zwilling SIA-2024-
Gesundheitsbau (Run 88) inhaltlich Zeile für Zeile verglichen, Merge-Empfehlung (kein Merge
ausgeführt, destruktiv) in QUESTIONS.md hinterlegt. Kein neues Themenfeld — dritte Bestätigung der
Sättigungsdiagnose aus Run 105/106. FAQ-Stand unverändert 154, Destillate-Stand unverändert 170.
## D80 (Run 108, 2026-07-25) — drei gezielte Primärquellen-Lücken geschlossen, kein neues Themenfeld
Drei parallele Rechercheagenten schliessen je eine in QUESTIONS.md benannte emerging-Lücke: (a)
SZ-Steuerparagraph § 32 Abs. 2 lit. a StG SZ gefunden → `[[steuerabzuege-energetische-sanierung-ch]]`
bleibt emerging (andere Lücken bestehen fort), FAQ F76 geschärft. (b) GEAK-Kosten über drei
unabhängige Marktquellen (Göldi Energie/energielukas.ch/rundumenergie.ch) trianguliert →
`[[geak-kosten-efh-mfh]]` auf established. (c) Netto-Null-Primärquellen (Art. 102a KV-ZH-Wortlaut,
Stadtzürcher Abstimmungsdatum 15.5.2022/74.9 %, kEnG/kEnV-SZ-Negativbefund) vollständig geschlossen
→ `[[netto-null-klimaziele-zh-sz]]` auf established, FAQ F81 geschärft. Kein neues Themenfeld —
vierte Bestätigung der Sättigungsdiagnose in Folge (Run 105-108). FAQ-Stand unverändert 154,
Destillate-Stand unverändert 170, verbleibende emerging-Destillate 59.

## D81 (Run 109, 2026-07-25) — SIA-Harmonisierungsbericht erstmals im Volltext gelesen (WebFetch-Grenze durchbrochen)
Frühere WebFetch-Versuche auf cms.sia.ch/de/api/getMedia/940 waren technisch gescheitert
(komprimiertes/schriftartlastiges PDF). Direkter curl-Download + Read-PDF-Tool umgeht das
Problem vollständig. Ergebnis: der Bericht (V1.7, 2019) reproduziert die amtlichen SIA-380/1-
Gebäudekategorien-Definitionen (Tabelle 1) und erklärt die Unterkategorie-Codes I.1/I.2 usw.,
die in mehreren SIA-2024-Destillaten bereits unerklärt auftauchten. Der Terminplan des Berichts
selbst (Abschluss aller Phasen bis 31.12.2024) ist verstrichen, ohne dass eine neue SIA-380/1-
Ausgabe erschienen ist — bestätigt und schärft die bestehende Einschätzung «Zukunftsmusik,
kein geltendes Recht». Schliesst je einen offenen Punkt in zwei bestehenden Destillaten
(`sia-380-1-aktualitaets-check-2026` → established; `rrb-2025-1082-klimaanlagen-
bewilligungspraxis-zh` Gebäudekategorien-Definition). **Werkzeug-Lehre:** bei künftigen als
«WebFetch technisch gescheitert» dokumentierten PDF-Lücken zuerst curl+Read-PDF-Tool
versuchen, bevor der Punkt als dauerhaft blockiert gilt. FAQ F60 geschärft. FAQ-Stand
unverändert 154, Destillate-Stand neu 171 (ein neues Destillat, zwei Status-Upgrades).

## D82 (Run 111, 2026-07-25) — vier parallele Agenten schliessen die Run-110-Werkzeugliste ab,
## zwei komplett neue Themenfelder erschlossen (Haustechnik + Solaranlagen an Baudenkmälern)
Hinweis: Run 110 hatte einen eigenen «D82»-Eintrag im Lauf-Report angekündigt, der hier nie
angelegt wurde (Registerlücke, beim Nachlesen vor diesem Lauf festgestellt) — dieser Eintrag
übernimmt die Nummer, Run 110 bleibt inhaltlich im CHANGELOG/in destillate/INDEX.md vollständig
dokumentiert. PDF-Inventar weiterhin erschöpft seit Run 65. Vier `general-purpose`-Rechercheagenten
parallel auf die vier in Run 110 benannten curl+Read-PDF-Kandidaten angesetzt (VKF 22-15 und
GVZ-Prämienmechanik waren zwischenzeitlich bereits in Run 92 geschlossen worden — beim Nachlesen
der aktuellen Registerlage vor Auftragsvergabe festgestellt, keine Doppelarbeit ausgelöst).
**Vogelsang-Referat** (SIA-2060, Energieagentur SG, 19.02.2019) vollständig gelesen: keine dritte
CHF-Kostenquelle gefunden (0 Frankenbeträge über 15 Folien), aber neue Ziel-Erschliessungsquoten
in Prozent (Stufe B/D je Auto-/Veloparkplatz) → `sia-2060-kosten-ladeinfrastruktur-vertiefung`
bleibt emerging. **«Energie und Baudenkmal» Teil 1+2** (Kt. Denkmalpflege BE/ZH, 104+49 S.)
vollständig gelesen — die bisherige «Bild-/JPEG2000-Scan»-Notiz aus Run 67/87 war ein
WebFetch-Artefakt, kein echtes Formathindernis (dritter Beleg dieser Werkzeug-Lehre nach
Run 109/110). Kastenfenster-U-Wert (1,3 W/m²K durch Isolierglas im Innenflügel), acht
Fenstervarianten mit U-Sprüngen, Innendämmung 4-8 cm primärbelegt → `denkmalschutz-
energiesanierung-zh-sz` bleibt established, substanziell erweitert. **Teil 3 Haustechnik und
Teil 4 Solarenergie waren bisher komplett unerschlossene Themenfelder** (echte neue Substanz,
nicht nur Lückenschluss): zwei neue Destillate `energie-baudenkmal-haustechnik-zh`
(Kompensationsprinzip SIA-380/1-Systemnachweis, Rangfolge nichtbaulich→Erzeuger→Verteilung→Hülle)
und `energie-baudenkmal-solarenergie-zh` (Standort-Präferenzhierarchie Nebengebäude→Hauptdach,
Gestaltungsregeln Steildach), beide direkt `established` (Modell D, amtliche Primärquelle
vollständig gelesen). FAQ **F155-F157** neu. FAQ-Stand: **157** (davor 154). Destillate-Stand:
**173** (davor 171, zwei neue). Alle vier Agenten-Ergebnisse vor Registerkonsolidierung per
`git status` verifiziert (zwei geänderte + zwei neue Destillate, sauber getrennt, keine
Dateikonflikte). Damit ist die Run-110-Werkzeugliste abgearbeitet bis auf den ISOS-Bild-/
JPEG2000-Grenzfall (`denkmalschutz-energiesanierung-zh-sz`), der laut eigener Beschreibung ein
echter Bild-/Auflösungs-Grenzfall sein könnte statt eines WebFetch-Artefakts — nächster
Kandidat für einen künftigen Lauf.

- **D83 (Run 112, 2026-07-25, drei parallele Rechercheagenten)** — Letzter offener curl+Read-PDF-
  Kandidat aus Run 110/111 abgearbeitet plus zwei echte neue Themenfelder erschlossen (Sättigungs-
  diagnose ein zweites Mal in Folge widerlegt). **D83a ISOS-Bild-/JPEG2000-Scans aufgeklärt:** die
  frühere Notiz bezog sich rückblickend gar nicht auf eigenständige ISOS-Dokumente, sondern auf
  dieselben «Energie und Baudenkmal»-Teile aus Run 111. Eigenständige ISOS-Primärquellen (BAK-
  Erläuterungen 2021, PBG-aktuell-Fachartikel zu einem realen ZH-Präjudiz Winterthur 2024,
  EnergieSchweiz-Leitfaden Kap. 6) wurden erstmals gezielt gesucht und vollständig gelesen (technisch
  problemlos) → `[[denkmalschutz-energiesanierung-zh-sz]]` bleibt established, um ISOS-Kategorisierung
  A/B/C + PV-Bewilligungskette (Art. 32b lit. b RPV → Art. 18a Abs. 3 RPG zwingend bei Erhaltungsziel A)
  erweitert, FAQ **F158** neu. **D83b Körperschallisolation bei Wärmepumpen** (neues Themenfeld,
  abgegrenzt vom gut abgedeckten Aussenlärm-Recht) — EMPA-Primärquelle (2002) zur bautechnischen
  Schwingungsentkopplung ins eigene Gebäude: Kapselung/Schalldämpfer/Feder-Masse-Körperschall-
  isolation (Resonanzfrequenz-Fehldimensionierung verstärkt statt dämpft)/entkoppelte Rohrleitungen,
  Zielwert SIA 181 28 dB(A) Schlafzimmer → neues Destillat `[[waermepumpe-koerperschallisolation-empa]]`,
  ergänzt `[[waermepumpen-laermschutz]]`, FAQ **F159** neu. **D83c Grossverbraucherartikel**
  (Energieanalyse-/Zielvereinbarungspflicht, neues Themenfeld, bisher nur Randerwähnung in sechs
  Destillaten) — Art. 46 EnG + § 13a/§ 13d EnerG ZH + § 9 kEnG SZ primärquellenverifiziert: identische
  Bundesschwellen 5 GWh Wärme/0,5 GWh Strom, ZH drei Vollzugswege (UZV/KZV/EVA) vs. SZ zwei (UZV/EVA);
  besondere Healthcare-Relevanz (Pflegeheim/Spital erreicht Schwelle oft schon ab 3'000-7'000 m² EBF)
  → neues Destillat `[[grossverbraucherartikel-zielvereinbarung-zh-sz]]`, FAQ **F160** neu. FAQ-Stand:
  **160 Kernfragen (F1-F160) belegt.** Destillate-Stand: **175** (zwei neue, ein erweitert).

## D84 (Run 113, 2026-07-25) — drei parallele Rechercheagenten, freie Themenwahl mit Redundanz-Check (kein offener Werkzeug-Kandidat mehr)
Da die Run-108-111-Werkzeugliste seit Run 112 vollstaendig abgearbeitet ist, folgte dieser Lauf der
in Run 112 Punkt 6 festgehaltenen Methode: **Redundanz-Check per grep vor Themenwahl, dann gezielte
Suche nach amtlicher Primaerquelle.** Sechs Kandidatenthemen per grep geprueft (Waermeplanung/
Vorranggebiet, Contracting, Holzenergie/Holzschnitzel, Fernwaerme-Anschlusszwang, Smart Meter,
Sanierungspflicht-Handaenderung, Tiefengeothermie, Warmwasser-Waermepumpe, PV-Recycling) — drei
echte Luecken identifiziert (null bzw. nur tangentiale Treffer), drei Rechercheagenten parallel
angesetzt, jeder schrieb NUR sein eigenes Destillat (kein Register-Edit, Kollisionsschutz).
**Kommunale Waermeplanung ZH/SZ** (§ 4-7 + § 11 Abs. 6 EnerG ZH, Leitfaden Kommunale Energieplanung
AfU SZ 20.11.2024, alle per curl+pdftotext im Volltext gelesen): zentrale Klarstellung, dass ein
Vorranggebiet fuer Fernwaerme/Erdwaerme **nur behoerdenverbindlich, nicht grundeigentuemer-
verbindlich** ist — echte Anschlusspflicht braucht in ZH eine zusaetzliche § 295 PBG-Verfuegung,
in SZ wurde in kEnG/kEnV/PBG gar keine Anschlusszwang-Norm gefunden → `[[waermeplanung-kommunal-
zh-sz]]`, established, FAQ **F161** neu, ergaenzt die beiden Schwesterdestillate `fernwaerme-
anschlusspflicht-zh`/`-sz`. **Warmwasser-Waermepumpe als eigenstaendiges Retrofit-Thema** (BFE/WPZ
Buchs COP-Feldmessung EN 16147, FWS-Gueteregelement 2022, EKZ-Foerderprogramm 2026/2027): COP-Median
2,84 (A15)/2,56-2,62 (A7) primaerbelegt, wichtigste Klaerung fuer die Bauherrenberatung: **weder
ZH-AWEL noch Kt. SZ foerdern den reinen Boiler-Tausch kantonal** — nur ein befristetes EKZ-Netz-
betreiber-Programm (CHF 800, 2026/2027, nur Kt. ZH) → `[[warmwasser-waermepumpe-boiler-retrofit]]`,
established, FAQ **F162** neu. **Tiefengeothermie Schweiz** (Gesetz Nutzung Untergrund Kt. ZH seit
1.7.2023, Art. 27b/33 EnG, BFE-Statistik geothermische Nutzung 2024 im Volltext gelesen): ehrliche
Nicht-Relevanz-Einordnung fuer Einzelbauprojekte statt kuenstlicher Aufblaehung — Tiefengeothermie
ist Fernwaermenetz-/Kraftwerksmassstab (UVP-Pflicht ab 5 MWth), national nur 0,2-0,5 % der
geothermischen Heizleistung ggue. 84,3 % Erdwaermesonden → `[[tiefengeothermie-schweiz]]`,
established, FAQ **F163** neu, bewusst KEIN eigener Wiki-Artikel (Thema fuer Bauherren zu duenn),
stattdessen Direktverweis in `heizleistung-und-waermeerzeuger.md`. Alle drei Agenten-Destillate vor
Registerkonsolidierung per `git status` verifiziert (drei neue, disjunkte Dateien, kein
Kollisionsrisiko). **Sättigungsdiagnose ein drittes Mal in Folge widerlegt** (Run 111/112/113: je
mindestens zwei echte neue Themenfelder pro Lauf trotz 175+ bestehender Destillate) — die Methode
Redundanz-Check-per-grep-vor-Themenwahl bleibt fuer freie Themenwahl ohne offene Werkzeugliste der
belastbarste Weg. FAQ-Stand: **163 Kernfragen (F1-F163) belegt.** Destillate-Stand: **178** (drei
neue).

## D85 (Run 114, 2026-07-25) — drei parallele Rechercheagenten, Redundanz-Check per grep, Healthcare-Schwerpunkt
PDF-Inventar weiterhin erschoepft seit Run 65. Vor Auftragsvergabe per grep neun Kandidatenthemen
geprueft (Notstromversorgung/Netzersatzanlage, Rueckkuehlwerk/Kuehlturm, Ortsbildschutz-Kernzone,
Contracting, PV-Recycling, Fernwaermetarif, Grundwasserschutzzone-Erdsonde, Nachtstromspeicherheizung,
Wasserstoff-Heizung) — drei echte Luecken identifiziert (null Treffer), drei `general-purpose`-
Rechercheagenten parallel angesetzt (jeder schrieb ausschliesslich sein eigenes Destillat, kein
Register-Edit — Kollisionsschutz). **Notstromversorgung/Netzersatzanlage fuer Spital und Pflegeheim**
(VKF-Brandschutzmerkblatt 2009-15de zu BSR 17-15, 21 S. vollstaendig gelesen + USZ-Merkblatt v2.0 +
BFE Fact-Sheet 45 + Kt.-ZH-Spitallisten-Anforderungen als Negativbefund + BABS-Gefaehrdungsdossier):
geregelt primaer brandschutzrechtlich und elektroinstallationstechnisch (NIN Kap. 5.6/7.10, med.
Gruppen 0/1/2), NICHT ueber ein eigenes Spitalliste-Kriterium; ab 70 kW Aggregatnennleistung eigener
EI-60-Technikraum statt EI-30 — fruehe Flaechen-/Kostenfolge; besonders hohe Healthcare-Relevanz fuer
JANS → neues Destillat `[[notstromversorgung-netzersatzanlage-spital-pflegeheim-ch]]`, established,
FAQ **F164** neu, erster eigenstaendiger Wiki-Artikel `notstromversorgung-sicherheitsstromversorgung.md`.
**Rueckkuehlwerk/Kuehlturm** (BAG/BLV-Empfehlungen Modul 14, 17 S. amtliches Original vollstaendig +
zh.ch Grundwasserkuehlungs-Konzession): Legionellen-/Hygiene-Kern (Tabelle 14A, Eingriffsschwelle
&gt;10⁴ KBE/l) und Grundwasserkuehlungs-Konzession established, eigenstaendige Baubewilligungspflicht
fuer Rueckkuehlwerke selbst nur per Analogieschluss zur Klimaanlagen-RRB (emerging), quantitativer
COP-Vergleich Nass-/Trockenkuehlung nur qualitativ-thermodynamisch (speculative) → neues Destillat
`[[ruckkuehlwerk-kuehlturm-legionellen-bewilligung-ch]]`, FAQ **F165** neu, ergaenzt
`[[sommerlicher-waermeschutz]]`. **Ortsbildschutz/Kernzone ohne Denkmalschutz** (Kt.-ZH-Leitfaden
Solaranlagen Baudirektion/ARE Dezember 2022 vollstaendig gelesen + § 2a/§ 2c/§ 2d BVV + § 238 PBG ZH
+ SZ-RRB Nr. 912/2022 vollstaendig + PBG SZ §§ 17-24/55-56/75a): bewusste Abgrenzung vom bereits
etablierten ISOS-/Denkmalschutz-Destillat `denkmalschutz-energiesanierung-zh-sz` — die Kernzonenlage
macht in Kt. ZH ALLEIN jede Solaranlage bewilligungspflichtig (§ 2a Abs. 2 BVV, kein Meldeverfahren,
auch Plug-and-Play), obwohl der Kanton den Gemeinden von eigenen restriktiven BZO-Gestaltungsvor-
schriften ausdruecklich abrät und aeltere Klauseln als bundesrechtswidrig einstuft; Kt. SZ ohne
vergleichbares Kernzonen-Sonderregime → neues Destillat `[[ortsbildschutz-kernzone-solaranlagen-zh-sz]]`,
established, FAQ **F166** neu, ergaenzt `[[pv-solar-technologien]]`. Alle drei Agenten-Destillate vor
Registerkonsolidierung auf Disjunktheit geprueft (drei neue, unabhaengige Dateien, kein
Kollisionsrisiko). **Vierte Bestaetigung in Folge, dass die Saettigungsdiagnose fuer neue
Themenfelder nicht zutrifft** (Run 111-114: je mindestens zwei bis drei echte neue Themenfelder
trotz 178+ bestehender Destillate) — Redundanz-Check-per-grep-vor-Themenwahl bleibt der belastbarste
Weg. FAQ-Stand: **166 Kernfragen (F1-F166) belegt.** Destillate-Stand: **181** (drei neue).

**Naechster Lauf: Prioritaet**
1. Die fuenf gebuendelten Kaufentscheide wachsen seit Run 98 unveraendert ohne Entscheidung — jetzt
   **sechzehn Runs** in Folge. Dringende Empfehlung unveraendert: beim naechsten Kontakt mit Raphael
   als kurze Buendel-Frage stellen.
2. Meta-Punkt M2 (eigenstaendiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
3. SIA-2024-Gesundheitsbau-Merge weiterhin ausfuehrungsreif, wartet auf Raphaels Zustimmung.
4. Offene Punkte aus den drei neuen Run-114-Destillaten fuer kuenftige Laeufe: NIN Kap. 5.6/7.10
   im Electrosuisse-Originaltext beschaffen (kostenpflichtig, ggf. Sekundaerquellen genuegen);
   VKF-Richtlinie 17-15 selbst im Volltext; Notstromversorgung + Rueckkuehlwerk fuer Kt. Schwyz noch
   nicht recherchiert; eigenstaendige Baubewilligungspflicht fuer Rueckkuehlwerke amtlich verifizieren
   (bisher nur Analogieschluss); ZH-Arbeitshilfe «Musterbestimmungen Kernzonen» (2/2024, 34 S.)
   technisch nicht ladbar.
5. Healthcare-Vertiefung als neuer Schwerpunkt-Kandidat: Run 114 hat mit Notstromversorgung und
   Rueckkuehlwerk zwei Healthcare-spezifische Themenfelder erschlossen — weitere Kandidaten fuer
   kuenftige Laeufe waeren Reinraum-/OP-Klimatisierung (Filterklassen H13/H14, Ueberdruckkaskaden)
   und Sterilisationsenergie (Autoklaven-Prozessenergie), beide bisher nur am Rand erwaehnt.

## D86 (Run 115, 2026-07-26) — zwei parallele Rechercheagenten, Healthcare-Prozessenergie-Vertiefung; Prozesslehre zum Redundanz-Check

PDF-Inventar weiterhin erschoepft seit Run 65. Dem von Run 114 vorgeschlagenen Schwerpunkt gefolgt:
Reinraum-/OP-Klimatisierung und Sterilisationsenergie, beide per grep vorab geprueft. **Wichtige
Prozesslehre:** Der Redundanz-Check-Grep fand fuer Reinraum/OP-Klimatisierung das Run-98-Destillat
`[[swki-lueftung-gesundheitsbau-hygiene-energie]]` korrekt als Treffer — der Orchestrator hat den
Dateiinhalt vor Auftragsvergabe aber nicht gelesen und den Kandidaten faelschlich als vollstaendig
offene Luecke eingestuft. **Lehre fuer kuenftige Laeufe: jeden grep-Treffer inhaltlich lesen, nicht
nur zaehlen, bevor ein Thema als "echte Luecke" gilt** — ein blosser Namens-/Zeilentreffer ist kein
Ausschlusskriterium, aber auch kein automatischer Freibrief fuer eine neue eigenstaendige Datei ohne
Pruefung, was bereits dokumentiert ist. Trotz der verpassten Vor-Pruefung war die Doppelarbeit nicht
verloren: der unabhaengig recherchierende Agent fand echte neue Primaerquellen, die das bestehende
Destillat sinnvoll vertiefen, statt es nur zu wiederholen.

**Reinraum-/OP-Klimatisierung im Gesundheitsbau** (SWKI VA105-01:2015 Titelseite/Vorwort/Inhalts-
verzeichnis/Geltungsbereich via KSSG-Reproduktion + USZ-Baurichtlinie 244/245 vollstaendig, 68 S. +
Swissnoso-Bulletin Bally et al. 2018 vollstaendig + DGKH-LL-RLTA-2023 vollstaendig, 16 S.): vertieft
das Run-98-Destillat um die SN-22500-Identifikation, ein reales USZ-Filterfabrikat (H14) und vor
allem die **Swissnoso-Metaanalyse 2018**, die den Infektionsschutz-Nutzen der aufwaendigeren TAV-
Lueftung gegenueber einfacher Mischlueftung explizit anzweifelt (330'146 Hueft-/134'368 Knie-
prothesen, bei Hueftprothesen sogar ungünstigeres Ergebnis; TAV-Mehrkosten ~7'000 EUR/Jahr/Saal) —
ein konkretes Verhandlungsargument fuer die Bauherrschaft gegenueber dem Spitalbetreiber. Neues
Destillat `[[reinraum-op-klimatisierung-gesundheitsbau-ch]]` (emerging, bidirektional mit dem
Run-98-Destillat verlinkt statt formal gemerged — Merge waere destruktiv und braeuchte Ruecksprache
mit Raphael gemaess Rule `wissens-bibliothekar`), FAQ **F136 geschaerft**, erster eigenstaendiger
Wiki-Artikel `wiki/reinraum-op-klimatisierung.md`.

**Sterilisationsenergie und Medizintechnik-Prozessenergie** (SGSV/Swissmedic-Leitlinie Validierung
Sterilisationsprozesse 2023 vollstaendig per curl+pdftotext + USZ «24 Richtlinien Raumklimatisierung»
07.04.2014 vollstaendig, 614 Zeilen + architektur-technik.ch Radiologiezentrum Reinach 2017 +
Umweltinnovationsprogramm Bund D/Fluoron GmbH als explizit branchenfremdes Fallbeispiel): echte,
bestaetigte Luecke (Redundanz-Check: keine Vorarbeit gefunden). USZ-Klimaklassifikation ZSVA
(Raumtyp 73: Produktionsraeume Klasse 3, Sterillager Klasse 4 wegen Feuchteempfindlichkeit der
Sterilgut-Verpackung) und SGSV/Swissmedic-Prozessparameter (134 °C Referenztemperatur, ≥18 Min.
Haltezeit, 800-l-Kammervolumen-Schwelle) primaerquellenbelegt — aber **ehrlicher Negativbefund**
zur eigentlichen Energiequantifizierung: kein CH-/D-A-CH-Kennwert kWh/Zyklus oder Prozessenergie-
Anteil gefunden, die kursierende «2-4 kWh/Zyklus»-Angabe wurde bewusst nicht uebernommen (keine
zitierfaehige Quelle). Neues Destillat `[[sterilisationsenergie-medizintechnik-prozessenergie-ch]]`
(emerging), FAQ **F167** neu.

Beide Agenten editierten disjunkte Dateien (kein Register-Edit durch die Agenten selbst, Konsolidierung
durch den Orchestrator). FAQ-Stand: **167 Kernfragen (F1-F167) belegt.** Destillate-Stand: **183**
(zwei neue).

**Naechster Lauf: Prioritaet**
1. Die fuenf gebuendelten Kaufentscheide wachsen seit Run 98 unveraendert ohne Entscheidung — jetzt
   **siebzehn Runs** in Folge. Dringende Empfehlung unveraendert: beim naechsten Kontakt mit Raphael
   als kurze Buendel-Frage stellen.
2. Meta-Punkt M2 (eigenstaendiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
3. SIA-2024-Gesundheitsbau-Merge weiterhin ausfuehrungsreif, wartet auf Raphaels Zustimmung.
4. Neue offene Punkte aus Run 115: SN 22500 (Strukturelle Anforderungen OP-Abteilungen) nur
   bibliografisch identifiziert, Volltext kostenpflichtig nicht beschafft; SWKI VA105-01 Kap. 3-6
   (die eigentlichen Zahlentabellen inkl. Pa-Wert der Ueberdruckkaskade) weiterhin nicht zugaenglich;
   Fraunhofer-UMSICHT-Abschlussbericht 2010 zum Krankenhaus-Energieverbrauch passwortgeschuetzt;
   Systemgrenze Dampfversorgung ZSVA (zentral vs. lokal je Sterilisator) nicht recherchiert; SWKI 99-3
   (2003) weiterhin nur bibliografisch identifiziert.
5. **Prozessverbesserung fuer kuenftige Laeufe** (aus der Run-115-Redundanz-Lehre): vor Dispatch eines
   Rechercheagenten JEDEN grep-Treffer-Dateinamen kurz oeffnen/pruefen, nicht nur die Trefferliste
   zaehlen — verhindert unbeabsichtigte Doppelarbeit, auch wenn diese sich (wie hier) am Ende noch als
   wertsteigernd herausstellen kann.
6. Weitere Healthcare-Prozessenergie-Kandidaten fuer kuenftige Laeufe (noch nicht geprueft): Grossküchen-/
   Waescherei-Abluft-Waermerueckgewinnung im Gesundheitsbau, Rechenzentrum/Serverraum-Kuehlung als
   eigenstaendiges Thema (bisher nur in `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` als
   SIA-2024-Kennwert 1'052 kWh/m²/Jahr erwaehnt).

## D87 (Run 116, 2026-07-27) — vier parallele Rechercheagenten, Schwerpunkt «Abwärme und Prozessenergie»; adversariale Korrektur eines Agenten-Negativbefunds

Die von Run 115 vorgeschlagene Prioritaet 6 vollstaendig abgearbeitet und um zwei Themen erweitert.
Redundanz-Check nach der Run-115-Lehre durchgefuehrt: 29 Kandidatenbegriffe gegrept, **und die
Treffer inhaltlich gelesen statt nur gezaehlt** — vier Themen als echte Luecken bestaetigt
(`Fettabscheider`, `Abwaermepflicht`, `Abwasserwaerme`, `Therapiebad` je null Treffer;
`Kuechenabluft`/`Serverraum`/`Waescherei` nur Randerwaehnungen in bestehenden Destillaten). Vier
`general-purpose`-Agenten (Sonnet, Modell-Politik) parallel, jeder ausschliesslich mit eigener neuer
Datei; Register-Konsolidierung und Verifikation im Hauptmodell.

- **D87a Serverraum/Rechenzentrum — Kuehlung und Abwaermenutzung.** § 30a Abs. 1 BBV I (allgemeine
  Abwaerme-Nutzungspflicht jeder Baute) und § 30a Abs. 2 BBV I (RRB Nr. 840, seit 1.9.2022:
  Bereitstellung von mehr als **2 GWh/a** nicht selbst nutzbarer Abwaerme an Dritte **zu
  Gestehungskosten**), am amtlichen AWEL-Bericht «Rechenzentren» (V1, 31.08.2023, 50 S. inkl.
  Rechtsgutachten) belegt. **Kein Waermenetz-Bauzwang** (RRB 1324/2022; § 295 Abs. 2 PBG bindet nur
  Waermeabnehmer). CH-Stromverbrauch der Rechenzentren 2024 2,1 TWh (3,6 %), PUE CH ~1,5 bzw.
  Colocation 1,0-1,2. → `[[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]]`, FAQ **F168**.
- **ADVERSARIALE KORREKTUR (Hauptmodell, wichtigster Einzelbefund des Laufs):** Der Agent hatte
  eine Sekundaerbehauptung, wonach die **MuKEn 2025** eine mit ZH identische 2-GWh-Klausel enthalte,
  **zurueckgewiesen** — korrekt begruendet, weil der von ihm gelesene MuKEn-Volltext die Klausel nicht
  enthielt. Die Gegenpruefung am **EnDK-Originalvolltext der MuKEn 2025** (117 S., Stand 29.08.2025 —
  dieselbe amtliche Fassung, die `[[muken-2025-verabschiedet]]` seit Run 81 nutzt) zeigt: der Agent
  hatte die **falsche Ausgabe** (2014/Nachfuehrung 2018) gelesen; **Art. 1.18 Abs. 2 MuKEn 2025
  enthaelt die Klausel sehr wohl und nahezu wortgleich**. Zuerich war damit rund drei Jahre **Pionier**
  vor dem nationalen Modell. Zusaetzlich aus den amtlichen Erlaeuterungen (S. 109) die fuer die
  Projektierung wertvollste Zahl gehoben: **2 GWh ≈ ab 230 kW elektrischer Dauerleistung** eines
  Rechenzentrums (bzw. 1000 kW Abwaermeleistung x >2000 h/a) — macht die abstrakte GWh-Schwelle am
  Anschlussleistungs-Datenblatt pruefbar. **Lehre: ein Negativbefund ist nur so gut wie die Ausgabe,
  an der er erhoben wurde — bei Normen/Mustervorschriften immer die Ausgabe explizit mitpruefen.**
- **D87b Abwasserwaermenutzung ZH/SZ** (Thema hatte null KB-Treffer). AWEL-Planungshilfe «Heizen und
  Kuehlen mit Abwasser und Oberflaechenwasser» (2025) im Volltext: Abwasser ganzjaehrig 10-20 °C
  (Liegenschaft ø 23 °C); **gebaeudeintern vor Einleitung bewilligungsfrei** (wirtschaftlich ab
  8'000-10'000 l/Tag bzw. ~150 kW), ab Kanalisation/ARA gewaesserschutzrechtliche AWEL-Bewilligung +
  Nutzungsvereinbarung («first come, first serve»); Grenze ist die ARA-Dimensionierungstemperatur
  (i.d.R. 10 °C), Bagatellgrenze >0,1 °C Zulaufaenderung; ZH-Potenzial 674 GWh/a ueber 60 ARA, erst
  11 % genutzt; Referenz Altstetten-Hoengg (172 GWh Waerme + 35 GWh Kaelte). **Duschwasser-WRG
  pauschal 10 % des Warmwasserbedarfs im Energienachweis anrechenbar (EnFK EN-101, Dez. 2018)** —
  real 18-28 %. → `[[abwasserwaermenutzung-kanalisation-zh-sz]]`, FAQ **F169**.
- **D87c Grosskuechen-Lueftung und Abluft-WRG.** Kochstellenabluft ist nach SIA 382/1:2025 **ETA 3**
  (hoechste Verunreinigungsklasse, max. EATR 0,1 %) → **Rotoren ausgeschlossen**, Plattentauscher nur
  mit Dichtheitsnachweis → **Kreislaufverbundsystem** als robusteste Wahl, was sich mit der
  VKF-Anforderung «nur nicht brennbare Waermetraegerfluessigkeiten» deckt (Richtlinie 25-15de,
  Ziff. 4.2.3: separate Aggregate, ausserhalb Kueche EI 30/RF1, Ventilatorraum EI 60, ab 12'000 m³/h
  eigene Anlage). Luftmengen 80-120 m³/h je m² Frittier-/Grillbereich bzw. 50 m³/h je kW
  (GSLI-Planungshilfe 2023). Sauber getrennt: **luftseitiger Fettfilter ≠ abwasserseitiger
  Fettabscheider** (SN 592'000 / VSA-Merkblatt Feb. 2025). →
  `[[grosskuechen-lueftung-abluft-wrg-ch]]`, FAQ **F170**.
- **D87d Waescherei-Prozessenergie Pflegeheim/Spital.** Kontraintuitiver Kernbefund: **zwei Drittel
  des Energieverbrauchs stecken im Trocknen, nur ~15 % im Waschen** (S.A.F.E./Nipkow im Auftrag
  Hochbauamt Stadt Zuerich, 2012); innerhalb des Waschens 60-85 % Wassererwaermung. VTS/EnAW-Handbuch
  «RessEff» (2. Aufl. 2021, Watt d'Or 2014): Waschstrasse gesamt 7,0-19,0 l/kg Wasser, 0,90-3,60 kWh/kg
  Waerme, 0,10-0,35 kWh/kg Strom; Mangeln 0,5-0,7 vs. bis 1,25 kWh/kg; **Restfeuchte 45 statt 55 %
  spart ~18 % Trocknungsenergie**. **Ehrlicher Negativbefund: keine CH-/D-A-CH-Primaerquelle fuer
  kg Waesche/Bett/Tag** — kursierende Webwerte bewusst verworfen. →
  `[[waescherei-prozessenergie-pflegeheim-spital-ch]]`, FAQ **F171**.
- **Verdichtung:** Neuer Wiki-Themenartikel `[[abwaermenutzung-gebaeude]]` (29. Themenartikel) fasst
  alle vier Destillate unter dem gemeinsamen roten Faden zusammen — Rechtspflicht (zweistufig),
  vier Quellenprofile, Planungsfolgen (Anschlussstelle unten am Gebaeude, Dachflaechen-Konkurrenz
  Rueckkuehler↔PV, Healthcare-Nebenraeume als Prozessanlagen ausserhalb SIA 2024, Make-or-buy vor
  Raumprogramm). `[[heizleistung-und-waermeerzeuger]]` um die Waermequelle Abwasser ergaenzt.
  **Fuenfte Bestaetigung in Folge, dass die Saettigungsdiagnose nicht zutrifft** (Run 111-116).
  FAQ-Stand: **171 Kernfragen (F1-F171)**, Destillate: **186** (in Run 116 nachgezaehlt und um eins nach unten korrigiert — die Serie hatte `destillate/INDEX.md` mitgezaehlt; Zuwachs Run 115→116 korrekt +4).

## D88 (Run 117, 2026-07-27) — sechs parallele Rechercheagenten, gezielter SZ-Volltextabgleich + drei neue Themenfelder

PDF-Inventar erneut geprueft: keine neuen PDFs in `PL - 04 Energie` seit 01.07.2026 (find
-newermt-Kontrolle), Web-Pfad bleibt der einzige Weg. Der Run folgt der von Run 116 explizit
vorgeschlagenen Prioritaet 4 (gezielter SZ-Lauf mit kEnG/kEnV-Volltext) sowie zwei Punkten aus
Prioritaet 6 (ungeprüfte Kandidaten) plus dem offenen Rueckkuehler-Punkt aus dem neuen
Wiki-Artikel `abwaermenutzung-gebaeude`. Sechs `general-purpose`-Agenten parallel, jeder
ausschliesslich mit eigener neuer Datei (Kollisionsschutz, Konsolidierung im Hauptmodell).

- **D88a SZ-Abwaerme-Bereitstellungspflicht.** Der in Run 116 nur websuchbasierte Negativbefund
  ist jetzt am amtlichen Volltext von kEnG (SRSZ 420.100) und kEnV (SRSZ 420.111) primaerquellen-
  verifiziert: SZ kennt nur die allgemeine Eigennutzungspflicht (§ 21 kEnV), **keine** zu
  § 30a Abs. 2 BBV I / Art. 1.18 Abs. 2 MuKEn 2025 analoge Drittabgabepflicht ab 2 GWh/Jahr →
  `[[abwaerme-bereitstellungspflicht-sz]]`, FAQ **F172**.
- **D88b SZ-Abwasserwaerme-Bewilligung.** Vier Erlasse (kEnG, kEnV, EGzGSchG SRSZ 712.110, WRG
  SRSZ 451.100) vollstaendig im Volltext durchsucht: kein Bewilligungsregime; der einzige
  verwandte Tatbestand (WRG § 11 Abs. 2 lit. b, Konzessionspflicht «Betrieb von Waermepumpen»)
  erfasst nur oeffentliche Gewaesser, nicht die Kanalisation → `[[abwasserwaerme-bewilligung-sz-vertiefung]]`,
  FAQ **F173**, Status established.
- **D88c Energiemonitoring/Submetering Grossverbraucher ZH+SZ** (neues Themenfeld). EN-141/
  § 41a BBV I ZH (Primaertext): Gebaeudeautomationspflicht heute ab 5'000 m² EBF Nichtwohnbau-
  Neubau; **wichtigster Neufund:** MuKEn 2025 Art. 1.23 senkt diese Schwelle im verbindlichen
  Basismodul auf 2'000 m² EBF (noch nicht ins ZH-Recht ueberfuehrt) — Cross-Check deckt zugleich
  auf, dass `sia-386-bacs-gebaeudeautomation.md` diesen fehlenden Geltungsstatus bisher nicht
  ausweist (offener Punkt an den naechsten Lauf). Betriebsoptimierungspflicht ab 200'000 kWh
  Strom/Jahr (§ 13d EnerG) rechtlich eigenstaendig von der freiwilligen EnAW/act-Zielvereinbarung.
  SZ ohne Analogie (Negativbefund, Primaertext) → `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`,
  FAQ **F174**, established.
- **D88d Therapiebad/Hallenbad-Energie im Pflegeheim** (neues Themenfeld, vorher null KB-Treffer,
  hohe Healthcare-Relevanz). BFE «Rationelle Energienutzung in Hallenbaedern» 1993 (amtlich):
  oeffentliches Hallenbad 47-67 kWh/m³·a bei 28-30°C. Therapiebecken (≥32°C, 12-24 m²) nur ueber
  DE-Sekundaerquelle beschrieben; **ehrlicher Negativbefund** zur eigentlichen Auftragsfrage —
  kein CH-/DE-Kennwert speziell fuer Therapiebaeder, plausibler physikalischer Mehrbedarf nur als
  eigene, explizit als speculative markierte Herleitung (Magnus-Formel) → `[[therapiebad-hallenbad-energie-pflegeheim]]`,
  FAQ **F175**, emerging.
- **D88e EnerGIS-Kartenwerk Stadt Zuerich** (neues Themenfeld, aus Run 116 als ungeprueft
  vorgemerkt). Energieplanungsbericht Stadt Zuerich 2025 + Waermeversorgungsverordnung WVV
  16.3.2022, beide amtlich vollstaendig gelesen: reine Informationsplattform (vier Teilkarten
  Waerme/Kaelte/Gas/Eignungsgebiete), zeigt NICHT die geologische Bohreignung (das leistet der
  separate kantonale Waermenutzungsatlas GIS-ZH P8); kein Anschlusszwang, aber faktischer Druck
  ueber das Gasverbot ab 2040 → `[[energis-kartenwerk-stadt-zuerich]]`, FAQ **F176**, established.
- **D88f Rueckkuehler-Flaechenkonkurrenz PV + Laermschutz** (schliesst zwei explizit in
  `abwaermenutzung-gebaeude` benannte offene Punkte). Solarpflicht-Vollzugshilfen dreier Kantone
  (Bern Jan. 2026, Basel-Landschaft Maerz 2025, Aargau 2025, alle amtlich): Ruecckuehler-
  Dachflaeche zaehlt grundsaetzlich zur pflichtigen PV-Bruttodachflaeche, Abzug nur ueber
  begruendungspflichtiges Einzelfallgesuch (fuer ZH selbst mangels Gesetzestext nicht
  verifiziert). Cercle-Bruit-Vollzugshilfe 6.20 (23.09.2025, eigene, aktuellere Vollzugshilfe als
  6.21 fuer kleine Waermepumpen) mit direkt einschlaegigem Rechenbeispiel: Rechenzentrum-
  Rueckkuehler 54,4→47,4 dB(A) via Drehzahlreduktion → `[[rueckkuehler-flaechenkonkurrenz-pv-laermschutz]]`,
  FAQ **F177**, emerging; ergaenzt `[[abwaermenutzung-gebaeude]]`, `[[solarpflicht-schweiz-kantone]]`,
  `[[waermepumpen-laermschutz]]`.
- **Verdichtung:** Kein neuer Wiki-Themenartikel — bewusst drei bestehende Artikel
  (`abwaermenutzung-gebaeude`, `solarpflicht-schweiz-kantone`, `waermepumpen-laermschutz`) gezielt
  erweitert statt neu angelegt (Budget-/Zeit-bewusste Verdichtung dieses Laufs). **Sechste
  Bestaetigung in Folge, dass die Saettigungsdiagnose nicht zutrifft** (Run 111-117).
  FAQ-Stand: **177 Kernfragen (F1-F177)**, Destillate: **192** (sechs neue).

### Prioritaet naechster Lauf (aus Run 117)
1. Cross-KB-Nachzug: `sia-386-bacs-gebaeudeautomation.md` um den fehlenden Geltungsstatus der
   MuKEn-2025-2'000-m²-Schwelle ergaenzen (in Run 117 entdeckt, nicht behoben — nur die neue Datei
   durfte editiert werden).
2. Die fuenf gebuendelten Kaufentscheide warten jetzt **19 Runs in Folge** auf eine Entscheidung
   (B1-Konsolidierung, SWKI VA105-01, SIA 385/1, SIA 385/2, SIA 384.354) — dringende Empfehlung
   an Raphael unveraendert: als kurze Buendel-Frage entscheiden.
3. SZ-Vollzugspraxis (Wegleitungen AfU SZ, kommunale Sonderregeln Rechenzentrums-Gemeinden wie
   Freienbach/Wollerau) fuer die beiden neuen SZ-Negativbefunde noch nicht geprueft.
4. Bezeichnungskollision SIA 385/1 (alte Norm Badewasseraufbereitung vs. aktuelle SIA 385/1:2020
   Trinkwarmwasser) aus D88d ungeklaert — pruefen, welche Norm heute fuer Baeder gilt.
5. Meta-Punkt M2 (eigenstaendiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
6. Weitere offene Punkte: SWKI VA106-01 (vermutlich ergiebigste noch ungehobene CH-Quelle fuer
   Baederenergie) nur dem Titel nach identifiziert; kein CH-amtlicher m²/kW-Flaechenkennwert fuer
   Rueckkuehler; ZH-spezifischer PV-Abzugsgrund fuer technische Dachaufbauten mangels
   Solarpflicht-Gesetzestext offen.

## D89 (Run 118, 2026-07-28) — sechs parallele Rechercheagenten, gebündelte Prioritätenliste aus Run 117 abgearbeitet + Cross-KB-Nachtrag

PDF-Inventar weiterhin erschöpft seit Run 65, Web-Pfad bestätigt. Vor Auftragsvergabe die gesamte
"Offen / Priorität nächster Lauf"-Liste aus Run 117 durchgeprüft (inkl. gezieltem grep gegen
`destillate/`, um echte Lücken von bereits Gedecktem zu trennen — Lehre aus Run 115): Punkt 1
(Cross-KB-Nachzug sia-386-bacs) mechanisch selbst erledigt (kein Agent nötig), Punkt 4
(SIA-385/1-Bezeichnungskollision) bereits durch Wissens-Chef Run 18 (27.07.2026) geschlossen
vorgefunden — nicht erneut bearbeitet. Sechs `general-purpose`-Agenten parallel auf die
verbleibenden fünf Prioritätspunkte plus einen zusätzlichen Backlog-Punkt (Grossküche-Update aus
Run 116) angesetzt, jeder ausschliesslich mit eigener neuer Destillat-Datei (Kollisionsschutz);
Registerkonsolidierung und Wiki-Wachstum im Hauptmodell.

- **Mechanischer Cross-KB-Nachtrag (kein Agent):** `sia-386-bacs-gebaeudeautomation.md` um den in
  Run 117 entdeckten fehlenden Geltungsstatus ergänzt — § 41a BBV I ZH verlangt Gebäudeautomation
  heute erst ab **5'000 m² EBF**, die MuKEn-2025-Schwelle von 2'000 m² ist verabschiedet, aber noch
  nicht ins ZH-Recht überführt. Bauherren-Transfer und Offene-Punkte-Abschnitt aktualisiert,
  Backlink zu `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]` ergänzt.
- **D89a SWKI VA106-01 Hallenbad-Lüftung.** Publikationsstatus per 28.07.2026 weiterhin negativ
  (SWKI 2004-1 bleibt verbindlich) — aber ein Vortrag des Richtlinien-Obmanns (7. Schweizer
  Hygienetagung 2023, vollständig gelesen) liefert Entwurfswerte: Verdunstungsbeiwerte ε 18/22
  g/(m²·h·mbar), Zuluftmengen-Spannweite ±58 % zwischen SWKI/VDI/ÖNORM für ein Referenzbecken, neue
  Raumlufttemperatur-Obergrenze 34 °C (deckt sich mit der Therapiebad-Wassertemperatur-Obergrenze)
  → `[[swki-va106-lueftung-hallenbaeder]]`, FAQ **F178**, emerging.
- **D89b SZ-Vollzugspraxis Rechenzentren/Abwärme.** AfU-SZ-Vollzugsdokumente und die Baureglemente
  Freienbach (2022)/Wollerau (2024) vollständig geprüft: kein Sonderregime auf Vollzugs- oder
  Gemeindeebene. Wichtiger Nebenbefund: die Prämisse einer Rechenzentrums-Häufung in diesen
  Gemeinden liess sich nicht bestätigen (bekannte CH-Standorte liegen laut AlgorithmWatch/sz.ch in
  ZH/AG/SH/VD) → `[[sz-vollzugspraxis-afu-wegleitungen-rechenzentren]]`, FAQ **F179**, emerging.
- **D89c Rückkühler-Flächenkennwert, vertieft.** Weiterhin kein CH-amtlicher m²/kW-Kennwert, aber
  neu belegt: § 47b BBV I/§ 10c EnerG ZH (seit 2022 in Kraft) deckelt die PV-Pflicht auf 70 % der
  anrechenbaren Gebäudegrundfläche, 30 % ausdrücklich für Technikaufbauten reserviert — präzisester
  amtlicher ZH-Flächenkonkurrenzwert bisher. Die vielzitierte Faustregel "3-4× Fläche bei
  Hybridkühlung" auf eine einzelne Quelle zurückgeführt (Pfeiffenberger/KKA 2014), nicht zwei
  unabhängige wie zuvor angenommen — Quellen-Konvergenz war schwächer als gedacht
  → `[[rueckkuehler-flaechenkennwert-vertiefung-ch]]`, FAQ **F180**, emerging.
- **D89d SIA 2068 Publikationsstatus.** Drei Jahre nach Projektstart (8.6.2023) weiterhin nicht im
  SIA-Shop gelistet (Kontrollprodukt-Vergleich SIA 2061:2021) — solide indirekt belegter
  Negativbefund. SDEA Navigator als freiwillige Zwischenlösung dokumentiert (Data Centre World
  Award März 2026) → `[[sia-2068-rechenzentren-publikationsstatus]]`, FAQ **F181**, emerging.
- **D89e Abwasserwärmepumpe JAZ + ZH-Förderung.** WPZ-Buchs-Feldmessprogramm deckt keine
  Abwasserwärmepumpen ab (Negativbefund); punktuelle Herstellerpraxis-COP 4,0 (Wintower Winterthur)
  und 5,7 (Lausanne Plaines-du-Loup), aber keine SEPEMO-konforme Heizperioden-JAZ. Förderprogramm
  Energie Kt. ZH 2026 enthält keine eigene Abwasserwärme-Position mehr
  → `[[abwasserwaermepumpe-jaz-foerderung-vertiefung-zh]]`, FAQ **F182**, emerging.
- **D89f Grossküche kWh/Mahlzeit, Aktualisierungsversuch.** Ehrlicher Negativbefund: keine neuere
  CH-/DACH-Primärmessung gefunden, alte Werte (2011/1992) bleiben beste Näherung; energie.ch
  bestätigt unabhängig dieselbe Grössenordnung (2-5 kWh/Mahlzeit)
  → `[[grosskueche-mahlzeit-energiekennwert-aktualisierung]]`, FAQ **F183**, emerging.
- **Verdichtung:** `wiki/abwaermenutzung-gebaeude.md` um einen neuen Abschnitt "Run 118" erweitert
  (vier der vorherigen offenen Punkte referenziert/präzisiert), kein neuer Wiki-Themenartikel
  (Budget-bewusste Verdichtung dieses Laufs, analog Run 117).

FAQ-Stand: **183 Kernfragen (F1-F183)**. Destillate-Stand: **198** (sechs neue). **Siebte
Bestätigung in Folge (Run 111-118), dass die Sättigungsdiagnose für neue Themenfelder nicht
zutrifft** — alle sechs Agenten fanden echten Mehrwert trotz vertiefender statt neuer Themenwahl.

### Prioritaet naechster Lauf (aus Run 118)
1. Die fünf gebündelten Kaufentscheide warten jetzt **20 Runs in Folge** auf eine Entscheidung
   Raphaels (B1-Konsolidierung, SWKI VA105-01, SIA 385/1, SIA 385/2, SIA 384.354) — dringende
   Empfehlung unverändert: als kurze Bündel-Frage entscheiden, der Loop kann das nicht selbst lösen.
2. Meta-Punkt M2 (eigenständiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
3. Energierichtplan Gemeinde Freienbach (econcept) bibliografisch identifiziert, Volltext nicht
   erreichbar — bei Gelegenheit erneut versuchen (evtl. direkt bei der Gemeindeverwaltung).
4. Rabtherm-Projekt-PDFs (mehrere ZH-Referenzen: Wädenswil, Winterthur, EWZ Wipkingen) verlinkt,
   aber nicht geöffnet — könnten die fehlende JAZ-Lücke für Abwasserwärmepumpen schliessen.
5. SIA-2068-Direktanfrage beim SIA selbst (sia.ch ist als JS-SPA nicht automatisiert auslesbar)
   als sauberster Weg zur endgültigen Bestätigung des Negativbefunds vormerken.
6. SWKI-Vernehmlassungs-PDF zu VA106-01 (im Vortrag referenziert, dreifach mit HTTP 404
   fehlgeschlagen) — evtl. über eine andere URL-Struktur oder Anfrage beim SWKI direkt.

## D90 (Run 119, 2026-07-29) — sieben parallele Web-Rechercheagenten, PL-04 erneut leer, PL-02-Zugangsblockade neu entdeckt

PDF-Inventar PL-04 erneut vollständig geprüft (122 PDF, keine `mtime` nach 2026-07-01) — weiterhin
erschöpft seit Run 65. Der heute vom Normen-Loop gemeldete Cross-KB-Fund (134 PDF in
`PL - 02_Recht_Norm/06_Richtlinien/Minergie` + `04_Merkblätter/eco`) liess sich in dieser Session
NICHT öffnen: alle drei Stichproben scheiterten mit `EDEADLK`/„Resource deadlock avoided" (Read-
Tool, Python, pdftotext, sogar `open -a Preview`), während PL-04-Dateien im selben OneDrive-Mount
einwandfrei lesbar sind — die Blockade ist pfadspezifisch auf `PL - 02_Recht_Norm` beschränkt.
Kein M365-MCP-Tool (`m365_*`) in dieser Session geladen. Empfehlung an Raphael: OneDrive-Sync-
Status dieser Bibliothek prüfen oder m365-mcp-server für einen künftigen Lauf sicherstellen.

Drei Carryover-Prioritäten aus Run 118 (Rabtherm-JAZ, SWKI-VA106-01, Freienbach) plus vier neue,
per grep bestätigte Themenlücken (Regenwassernutzung als Brauchwasser, Eisspeicher-Wärmepumpe,
Seewasser-Wärmenutzung/Aquathermie, graue Energie Holzbau-vs-Massivbau) an sieben `general-
purpose`-Agenten vergeben, jeder mit genau einer neuen Destillat-Datei (Kollisionsschutz);
Registerkonsolidierung im Hauptmodell.

- **D90a Rabtherm-Abwasserwärme.** Alle vier Original-Referenzblätter zu den drei Zielprojekten
  vollständig gelesen — keines nennt JAZ/COP (dritter Negativbefund), aber die EnergieSchweiz-
  Broschüre liefert zwei andere reale Anlagen (Zwingen JAZ 4,4, Basel-Allschwil «gegen 7») →
  Band jetzt 4,0-7,0 über fünf Anlagen → `[[rabtherm-abwasserwaerme-jaz-projekte]]`.
- **D90b SWKI VA106-01.** Wayback-CDX-Vollsuche bestätigt vierten Negativbefund abschliessend;
  Nebenfund neue SWKI-Shop-Struktur + Inhaltsverzeichnis SWKI 2004-1 → `[[swki-va106-vernehmlassung-zugangsversuch]]`.
- **D90c Energierichtplan Freienbach.** Original (econcept 2013) nicht auffindbar, aber aktuelle
  Ersatzquelle (Energieträgerkarte Abicht Zug AG, 2025, vollständig gelesen) liefert kein
  Anschlusszwang, Erdsonden-Tiefenrichtwert ~180 m, Gemeinde-Kontakt für Direktanfrage →
  `[[energierichtplan-freienbach-econcept]]`, FAQ F185.
- **D90d Regenwassernutzung als Brauchwasser.** SVGW-Merkblatt TPW 2001/1 im Volltext:
  Netztrennung/Kennzeichnung/Meldepflicht established, Kosten/Einsparung nur speculative →
  `[[regenwassernutzung-brauchwasser-trinkwasserersatz-ch]]`, FAQ F186, klar abgegrenzt von
  `regenwasserbewirtschaftung-versickerung-zh`.
- **D90e Eisspeicher-Wärmepumpe.** Reifer, teurer Ersatz für die Erdsonde in Schutzzonen; Kosten
  Faktor 1-2, JAZ 2,0-6 je nach Auslegung; kantonale Bewilligungspraxis offen →
  `[[eisspeicher-waermepumpe-latentwaermespeicher]]`, FAQ F187.
- **D90f Seewasser-Wärmenutzung/Aquathermie.** Konzessionspflicht amtlich belegt (AWEL-
  Planungshilfe 2025, AKV-Richtlinie Vierwaldstättersee), reale Grossprojekte (ewz Zürichsee,
  Circulago Zugersee), kein amtlicher COP/JAZ-Wert → `[[seewasser-waermenutzung-aquathermie-zh-sz]]`,
  FAQ F188, komplett neues Themenfeld.
- **D90g Graue Energie Holzbau vs. Massivbau.** 35 reale CH-Objektpaare (Wüest Partner/Lignum,
  Branchenauftrag gekennzeichnet) + unabhängiges Korrektiv treeze/ZZ-Wancor: Holzbau 20-40 %
  tiefer, Median 7,5 vs. 9,8 kg CO₂-eq/m² EBF·a, grösster Hebel Dach/Tragstruktur, nicht
  Aussenwand → `[[graue-energie-holzbau-vs-massivbau-vergleich-ch]]`, FAQ F189, established.
  > ⚠ **Nachtrag Wissens-Chef Run 20, 29.07.2026 — die hier notierte Zahl ist korrigiert.**
  > Nicht «20-40 %», sondern **im Median rund 23 %** (7,5 vs. 9,8), als Planungsgrösse **20-25 %**.
  > Die 40-%-Obergrenze war durch die eigene Tabelle des Destillats (-13 %) und dessen eigenen
  > Bauherren-Transfer (20-25 %) widerlegt. «Durchgehend» qualifiziert nur die **Richtung** in der
  > Wüest-Stichprobe, nie eine Prozent-Bandbreite. Dieser Nachtrag steht hier, weil das Curriculum
  > die Grundlage der nächsten Läufe ist: ohne ihn liest ein Folgelauf die widerlegte Zahl als
  > eigenen Vorbefund wieder ein. Der Curriculum-Eintrag selbst bleibt als Lauf-Protokoll stehen.
- **Verdichtung:** `wiki/heizleistung-und-waermeerzeuger.md`, `wiki/
  regenwasserbewirtschaftung-versickerung-zh.md`, `wiki/graue-energie.md` erweitert. Kein neuer
  Wiki-Artikel (Seewasser als Kandidat für den nächsten Lauf vorgemerkt).

FAQ-Stand: **189 Kernfragen (F1-F189)**. Destillate-Stand: **205** (sieben neue). Achte
Bestätigung in Folge (Run 111-119), dass die Sättigungsdiagnose nicht zutrifft.

### Prioritaet naechster Lauf (aus Run 119)
1. Die fünf gebündelten Kaufentscheide warten jetzt **21 Runs in Folge** auf eine Entscheidung
   Raphaels — unverändert dringende Empfehlung: als kurze Bündel-Frage entscheiden.
2. **PL-02-Zugangsblockade klären** (OneDrive `EDEADLK` auf `PL - 02_Recht_Norm`, 134 PDF
   Minergie/eco-bau dahinter) — höchste Priorität, siehe `wiki/QUESTIONS.md` Run-119-Eintrag.
3. Meta-Punkt M2 (eigenständiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
4. Neuer Wiki-Artikel „Seewasser-/Umweltwärme aus Gewässern" (Kandidat, siehe Verdichtung oben).
5. SIA-2068-Direktanfrage beim SIA weiterhin offen.
