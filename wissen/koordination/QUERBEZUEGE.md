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
| Regenwasser: Recht/Verfahren (GSchG-Kaskade Art. 7 Abs. 2, Gewaesserraum-Festsetzung) | **planungsgrundlagen** | energie (verweist fuer die Rechtsgrundlage) |
| Regenwasser: Bewilligungsschwellen im Baugesuch (5:1, Bagatell 20 m², Adsorber) + Schwammstadt | **energie** | planungsgrundlagen (verweist fuer die aktuellen Schwellen) |
| Dachbegruenung/Gruendach: **Recht und Bewilligungspflicht** (BZO Art. 11 Stadt Zuerich — kommunal, nicht kantonal) | **planungsgrundlagen** (`recht-norm-ahb-stadt-zuerich-projektstandards` §19) — den **Erlasswortlaut** selbst fuehrt `baurecht` (`raw/260607_amtlich_zh_bzo-zurich-stadt.md`), beide schreiben ihn nicht fort | energie verweist dorthin — NEU Run 33 (15.08.2026). **Anlass:** dieselbe Quelle (AHB-Checkliste 16.02.2009) wurde am 15.08. in `energie` unabhaengig destilliert und uebernahm dabei erneut den 2009er-Wortlaut, den `planungsgrundlagen` am 31.07.2026 (Run 22) bereits korrigiert hatte. Geltend ist die Fassung GRB 30.11.2016 / IK 01.11.2018 (STRB 686/2018): «oekologisch wertvoll zu begruenen, **auch dort, wo Solaranlagen installiert sind**», Schranke «technisch und betrieblich moeglich sowie wirtschaftlich tragbar». «Technisch und wirtschaftlich zumutbar» steht in **Abs. 3** (bestehende MFH) und betrifft nicht die Dachbegruenung |
| Dachbegruenung/Gruendach: **Substrat-/Qualitaetsstandard, bauphysikalische Kennwerte, PV-Kombination** (Schichtstaerke, Wasserrueckhalt, λ-Werte, Panelabstand, Bautenschutzmatte) | **energie** (`dachbegruenung-gruendach`) | planungsgrundlagen verweist; `bauprodukte`/`normen` fuehren die Norm-Fundstellen (SIA 271:2007 Abdichtung, SIA 312:2013 Begruenung — Cross-KB-Pruefung Run 25) — NEU Run 33. Dachbegruenung war damit dreimal Gegenstand einer Cross-KB-Pruefung (Run 22, 25, 33), ohne je eine Matrixzeile zu haben; der strukturgleiche Fall Regenwasser/Schwammstadt hat seine seit Run 16 |
| Referenz-Architekten/-Projekte + Raumtypologien/Parti (wer/was liegt in der Bibliothek) | **architekten-synobsis** | entwurfs-referenzen (verweist per Katalog/Slug) |
| Entwurfs-Kennwerte je Bauaufgabe (HNF/GF, Programm, Entwurfsregeln, Parameter-Sets) | **entwurfs-referenzen** | architekten-synobsis (nennt die Abnehmer-KB) |
| Healthcare-Kostenkennwerte CHF/m3 GV + CHF je Pflegeplatz (belegte Realwerte) | **immobilienbewertung** (`realwert-sachwert`) | entwurfs-referenzen, machbarkeit, healthcare-wirtschaftlichkeit — **grobkosten fuehrt Healthcare NICHT** (untersagt seine m3-Werte dafuer ausdruecklich) |
| Kantonaler Energie-Erlassstand ZH (EnerG LS 730.1, BBV I §§ 47-48c) — Wortlaut, §§-Nummern, Fassungsstand/Nachtrag | **baurecht** (`raw/260712_amtlich_zh_energ.md`, `raw/260607_amtlich_zh_bbv1.md`) | energie + planungsgrundlagen (zitieren die raw-Dateien, schreiben den Wortlaut nicht fort) — NEU Run 16 |
| Grossverbraucherartikel/Zielvereinbarung — Vollzugswege (UZV/KZV/EVA), Behoerdenpraxis AWEL/AfU, Schwellen-Transfer auf Bauaufgaben, SZ-Energierecht (kEnG/kEnV) | **energie** (`grossverbraucherartikel-zielvereinbarung-zh-sz`) | planungsgrundlagen (Formularseite EN-141/BO), baurecht (Erlasswortlaut) — NEU Run 16 |
| Produkt-/Systemwissen nach BKP (Bauteilaufbauten, Hersteller-/Systemtypen, Verarbeitungs- und Bemusterungspraxis, historische Angebots-/Preisstände als Zeitdokument) | **bauprodukte** | normen (Norm-Fundstellen), grobkosten/immobilienbewertung (Kennwerte), projekt-lessons (Einzelfall) — NEU Run 19 (Erst-Pruefung der KB) |
| Norm-Fundstellen IN bauprodukte-Artikeln (SIA/VKF/SN EN — Ziffer, Ausgabe, Kennwert, Fassungsstand inkl. **Korrigenda**) | **normen** | bauprodukte verweist dorthin und schreibt Normwortlaut NICHT materiell fort (Rule `normen-referenz`) — NEU Run 19 |
| Preise/Kennwerte IN bauprodukte-Artikeln | **grobkosten** (BKP-Kennwerte) bzw. **immobilienbewertung** (Ausbaustandard) | bauprodukte fuehrt KEINE Kennwerte fuer Kalkulationen; historische Herstellerpreise nur als **datierter Zeitstand** und nie als heutiger Ansatz — NEU Run 19 |
| Wasserversorgung ZH: Bezugs-/Anschlusspflicht und **Brauchwassernutzung** (§§ 93-101 WsG, insb. § 97 Abs. 1/3, § 178 WsV, Gebührenkette § 100 i.V.m. §§ 61 f.) | **baurecht** (`wiki/baureife-und-erschliessung.md`, Abschnitt «Versorgung & Entsorgung») | energie (Anwendung/Gebäudetechnik), planungsgrundlagen (Verfahren/Meldung ans Wasserwerk) — NEU Run 20. **P1 GESCHLOSSEN 23.08.2026** (baurecht selbst, ausserhalb der Buch-Run-Serie, Beleg `wiki/QUESTIONS.md` «✅ ERLEDIGT 2026-08-23»): §§ 93-101 WsG + § 178 WsV vollstaendig gelesen und eingearbeitet. Matrixzeile hier nachgezogen 24.08.2026 (`wissen/koordination`, interaktive Pruefung) — der Fachstand war seit einem Tag korrekt, nur diese Zeile hing zurueck |
| Konzessions- und Sondernutzungsrecht **oberirdischer** Gewässer (Gewässerhoheit § 4, Konzession § 68 Abs. 1 lit. c / § 74 WsG; Sondernutzungs-Tatbestände § 119, Konzessionserfordernis § 120, **Konzessionsdauer § 121** WsV) | **baurecht** (Erlasswortlaut) | energie (angewandte Bewilligungs-/Konzessionspraxis je Wärmequelle), planungsgrundlagen (Formular-/Verfahrensseite) — NEU Run 20. **Merkposten:** eine WsV-Konkretisierung der gewässerschutzrechtlichen Bewilligung für oberirdische Gewässer fehlt (§ 92 WsV erfasst nur das Erdreich) — Zuordnungen dorthin sind KB-eigene Subsumtion und als solche zu kennzeichnen |
| Gemessener Ist-Zustand des Arbeitsplatzes/Grundkontexts (Ladeschichten, Byte-/Token-Budget, @-Import-Bestand, Messweg) | **claude-code** (`kontext-architektur`) | spec (`environment-jans-hub`) führt das formale Layer-3-Modell und verweist für Zahlen dorthin — NEU Run 20 |
| Amt, Adressat und **Kontaktperson** je Deliverable (Zuständigkeit, Direktnummern, Teamzuteilung) | **auflagebereinigung** (`aemter-stadt-zuerich`) | projekt-lessons liefert den **datierten, fall-/gebietsbezogenen** Einzelfall-Stand, nie eine generische Amtszuständigkeit; Kontaktpersonen haben ein Verfallsdatum — NEU Run 20 |
| Pflichtparkplaetze: **Anzahl, Reduktion, Realerfuellung, Ersatzabgabe** (§§ 242-248 PBG, kommunale PPV) | **baurecht** | planungsgrundlagen (planerischer Kontext) — NEU Run 21 |
| Parkierung: **Geometrie und Kennwerte** (Parkfeld-/Fahrgassenmasse, Rampenneigung, Ausrundung, Zufahrtstyp) | **normen** (`vss-40291-2021-…`, Ausgabe 2021 — die Komfortstufen A/B/C der Ausgabe 2005 sind **entfallen**) | baurecht (verweist, fuehrt bewusst keine Kennwerte), planungsgrundlagen (fuehrt sie bis Run 21 materiell aus der abgeloesten Ausgabe — Fassungs-Vorbehalt gesetzt, materielle Umstellung offen) — NEU Run 21 |
| Absturzsicherung, Gelaender/Bruestungen: **Masse, Lastannahmen, Fassungsstand** (SIA 358, SIA 500, SN 640 075/568, bfu 2.003.01) | **normen** | baurecht (§ 239 Abs. 1, § 357 Abs. 4 PBG — Anpassungsverlangen im Bestand), planungsgrundlagen (Richtlinie Stadt Zuerich «Absturzsicherungen im Hochbau», 15-%-Schwelle — **kommunal**, nicht kantonal) — NEU Run 21. **Fassungsfrage GESCHLOSSEN Run 24 (03.08.2026), Matrixzeile nachgezogen Run 33 (15.08.2026):** es gab nie eine Massdivergenz — SIA 358:1996 und :2010 fuehren identische Werte (Ziff. 3 13-3 15/3 22 bzw. 3.1.3-3.1.6/3.2.2); der Fehler lag in der Buch-Destillation (Regelhoehe/Bruestung vertauscht, Kugelprobe falsch, eine frei hinzugefuegte Hochhaus-Hoehe) und ist behoben. Aufloesung in dieser Datei ab Z. 1032, zusaetzlich `baurecht/wiki/QUESTIONS.md` Z. 111. **Bleibt wahr, aber ohne Wirkung auf die Zahlen:** das Standardwerk zitiert S. 1291 die Ausgabe **1996**, geltend ist **2010**. Real offen ist allein eine Pruefpendenz am Destillationsverfahren (Stichprobe der uebrigen Schwellenwert-Tabellen, Shot-Bereich 632-655) — keine Fuehrungs- oder Fassungsfrage |
| Aufzuege/Befoerderungsanlagen: **Brandschutz- und Barrierefreiheits-Anforderungen** (VKF-BRL 23-15, SIA 500 Ziff. 3.7.3, SN EN 81-28/-70/-80) | **normen** | bauprodukte (Produkt-/Systemwissen BKP 261; verweist und schreibt die **bedingt formulierten** Anforderungen nicht fort) — NEU Run 21 |
| **SWKI-Richtlinien: Fundstelle, Ausgabe, Fassungsstand** (VA103-1, VA105-01, VA106, 2004-1) | **normen** (Registerzeile; Bestandseintraege ohne ungedeckte Gueltigkeitsaussage) | energie fuehrt die **angewandte Fachaussage** (Lueftung/HLK-Physik) und verweist fuer Ausgabe und Fassungsstand dorthin — **Entscheid Raphael 31.07.2026**, gesetzt Run 21. Es ist keine Scope-Ausweitung, sondern der fuer SIA/VKF/VSS geltende Zuschnitt auf einen weiteren Herausgeber; Praezedenz ist bfu (normen fuehrt seit Run 38 alle neun bfu-Publikationen) |
| Zahlen eines konkreten Projekts (Volumen, Flaechen, Kennwerte, Stand) | **die Projekt-Wahrheit**: `PROJEKT-STAND.md` im Projektordner + das Deliverable (Rule `projekt-ablage-stand`) | kunde-bopp und die Skills zitieren, fuehren aber nicht; fuehrend fuer die **Methode** ist der jeweilige Skill (z.B. `massgebendes-terrain`) — NEU Run 21 |
| Aufzug: **Energie- und Leistungsbedarf** (SIA 2056:2019 Ziff. 6.23 — Gl. 107, vier Nutzungsintensitaetsstufen nach Gebaeudetyp Tab. 78, Rekuperations-/Hydraulikfaktoren) | **normen** (`sia-592-056`, S. 1-130 gelesen, established) | energie fuehrt die **Geraete-/Marktseite** (VDI-4707-Effizienzklassen A-G, Standby-Anteile, Herstellerkennzahlen) und verweist fuer die Normrechnung dorthin. SIA 2056 uebernimmt die VDI-Kategorien **nicht** — NEU Run 22, nachdem energie genau das aus Sekundaerquellen behauptet hatte · **ergaenzt Run 28 (07.08.2026):** `bauprodukte` fuehrt fuer BKP 261 das Produkt-/Systemwissen und **verweist nur** — der Verweis auf `wissen/normen/destillate/sia-592-056.md` ist am 07.08.2026 an der Elektro-Schnittstelle gesetzt, samt Vorbehalt, dass SIA 2056 Ziff. 0.1.1 eine **Vorprojekt-Abschaetzung** liefert und die projektspezifische Anschlussleistung Lieferantenangabe bleibt |
| **Primaertabellen/exakte Quantile** aus dem OneDrive-Marktdatenbestand (Wuest, BFS, werk-material) | **immobilienbewertung** (Ingest-Reports in `outputs/`) liefert sie; **fuehrend fuer die Verwendung** bleiben `skills/kostenschaetzung/referenzen` (Wuest-Benchmark) bzw. **grobkosten** (CHF/m3 GV) | Regel aus Run 22: sobald eine exakte Primaertabelle im Hub liegt, ersetzt sie die Diagramm-Ablesung im fuehrenden Blatt — Zahlen und Provenienz immer gemeinsam bewegen |
| Projekt-Lessons: Beweiskette eines konkreten Einzelfalls (Herkunft einer Vorgabe, Fallwerte aus Unternehmerdoku) | **projekt-lessons** | normen (generische Norm-/VKF-Kennwerte), auflagebereinigung (Auflagen-Ziffer/Amt/Frist), grobkosten/immobilienbewertung (Kennwerte) — **projekt-lessons fuehrt KEINE generischen Kennwerte oder Normfundstellen**, nur den belegten Fall — NEU Run 16 (Erst-Pruefung) |
| Oekologische Materialvorgaben in der BESCHAFFUNG (eco-bau/ecoBKP-Merkblaetter nach BKP, bauoekologische Submissionsbedingungen, Devis-/Baustellenkontrolle, Zielvereinbarungen SIA 112/1) | **energie** (Beschaffungs- und Vollzugslogik) | bauprodukte fuehrt weiterhin das Produkt-/Systemwissen nach BKP und zieht die eco-Aussagen als **datierten Stand 2008** heran, nie als heutige Produktvorgabe; normen fuehrt jede Norm-Fundstelle darin — NEU Run 25 (Erst-Pruefung der eco-BKP-Achse) |
| Gueltigkeits-/Fassungsstand einer Norm (gilt · archiviert · ersetzt durch, mit Herausgeber-Beleg und Abrufdatum) | **normen** — und zwar getrennt vom Inhaltsstatus des Destillats (`gueltigkeit` neben `status`) | JEDE andere KB verweist dorthin und schreibt keinen eigenen Gueltigkeitsvermerk fort; meldet sie eine Archivierung, ist sie in normen NACHZUZIEHEN (sonst verpufft die Uebergabe) — NEU Run 25, Anlass SIA 493 und SIA 430 |
| Beleuchtung: **Beleuchtungsstaerken E_m / UGR nach EN 12464-1** und spezifische Anschlussleistung | **normen** fuer Fundstelle und Ausgabe — fuehrt bis 05.08.2026 **kein** EN-12464-1-Destillat (echte Registerluecke, nachgemessen); Nachweisverfahren SIA 387/4 bzw. SIA 2056 und ZH-Vollzug EVEN/EN-111 bei **planungsgrundlagen** | energie verweist (Luecke E-122-6 bleibt offen; einziger Zahlenbestand im Hub ist der **datierte** AHB-Auszug vom 19.01.2007, destilliert in `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards` §14.2 — Stand vor EN 12464-1:2011 / SIA 2024:2006, **nicht** als heutige Bemessung verwendbar) · bauprodukte fuehrt ausschliesslich **Lampen-/Leuchtenkennwerte** BKP 233 (lm/W, Ra, Farbtemperatur) und schreibt keine Normwerte fort; ein Herstellerratgeber (ERCO) ist fuer EN-Normwerte keine zulaessige Quelle — NEU Run 26. Fuehrt keine neue Fuehrung ein, sondern schreibt die bestehenden Zeilen «Norm-Fundstellen IN bauprodukte-Artikeln» und «Produkt-/Systemwissen nach BKP» fuer diesen Fall aus — **Nachtrag 07.08.2026 (Run 28):** Die Klausel «einziger Zahlenbestand im Hub» ist ueberholt. `normen` fuehrt E_vm-Werte je Raumnutzung bereits seit dem SIA-2056-Destillat vom 24.07.2026 (`wissen/normen/destillate/sia-592-056.md`, Tab. 42, S. 38-39, ohne UGR); seit 07.08.2026 fuehrt `wissen/normen/destillate/sia-387-4-2017.md` (established, Refuter-verifiziert) zusaetzlich E_vm/k_0/E_0 UND UGR fuer die 43 SIA-2024-Standardnutzungen (Tabelle 4, S. 18-19, bild-verifiziert) sowie p_L/t_L/E_L (Tabelle 13, S. 32-33). Damit ist der Zahlenbedarf fuer die SIA-2024-Standardnutzungen aus `normen` deckbar; die Luecke **E-122-6 bleibt OFFEN**, weil SIA 387/4 selbst auf SN EN 12464-1 als massgebend verweist (Ziff. 2.2.3, Ziff. 4.2.1) und weder Nutzungen ausserhalb der 43 Standardnutzungen noch Wohnen/Notbeleuchtung (Ziff. 0.1.5-0.1.6) abdeckt. Beim Vergleich mit dem AHB-Auszug 2007 gilt ein **Bezugsgroessen-Vorbehalt**: SIA 2056 Tab. 42 fuehrt Bettenzimmer mit 300 lx, SIA 387/4 Tab. 4 mit E_vm 100 lx (E_0 = 300 ueber k_0 = 3) — vor jeder Uebernahme klaeren, ob E_vm oder E_0 gemeint ist |
| **Fassungsstand einer VKF-Publikation, wenn das Haus-Archiv veraltet ist** (SharePoint PL-02/PL-03 gegen den VKG-Publikationsendpunkt) | **normen** — und zwar gegen `services.vkg.ch` / `services2.vkf.ch`, nicht gegen den SharePoint-Bestand | Der Hausbestand ist **kein Gueltigkeitsbeleg**, sondern nur ein Bestandsnachweis. Belegt in Run 26 an zwei Publikationen zugleich (BSM 2001-15: Haus 2015, geltend 2022, dazwischen die nie bemerkte Ausgabe 2017; BRL 22-15: Haus 2015, geltend 2017). Jeder Destillat-Lauf, der brav «Primaerquelle SharePoint» liest, reproduziert den Fehler — deshalb ist der Endpunkt-Abgleich Pflichtschritt, bevor ein VKF-Destillat `established` wird — NEU Run 26 |
| **Bezeichner-Kette einer zurueckgezogenen Ausfuehrungsnorm** (SEV 4022 → SNR 464022 → SN 414022) | **normen** (`wiki/REGISTER.md`, Abschnitt D — seit Run 27 mit Electrosuisse-/CES-Zeile) | energie fuehrt den Primaerbeleg (`snr-464022-blitzschutz-ausfuehrung.md`, Electrosuisse-Shop DV-48384/1) und bleibt dessen Traeger; normen verweist darauf, statt zu kopieren. **Zwei Vorbehalte gehoeren an die Registerzeile:** der Volltext der Ausgabe 2024 ist nicht gelesen (kostenpflichtig, keine Inhaltsaussage ableiten), und die geltende VKF-BRL 22-15:2017 nennt weiterhin SNR 464022 — ein VKF-Zitat bleibt korrekt, es braucht nur den Waehrungshinweis; in einem LV beide Bezeichner fuehren — NEU Run 27 |
| **Healthcare-UMBAU-Kostenband CHF/m² NF je Stationstyp** (JANS «Spektrumskosten», sechs Stufen, JANS-Eigenmaterial 2025) | **immobilienbewertung** (`realwert-sachwert`) | `skills/kostenschaetzung` verweist seit Run 27 darauf und fuehrt weiterhin den Wuest-Neubau-Benchmark und den Reduktionsfaktor-Weg. Die beiden Wege widersprechen einander nicht, sie sind deckungsgleich kalibriert; das Band ist die feiner aufgeloeste Fassung und geht vor, **sobald ein Stationstyp benannt ist**. Bezugsflaechen-Vorbehalt wandert zwingend mit (Band = CHF/m² NF, Realfall 1'100 = CHF/m² HNF, NF und GF nicht vergleichbar) — NEU Run 27, die Zustaendigkeit war bis dahin ueberhaupt nicht geregelt |
| **Anlegen und Ueberschreiben einer Destillat-/Artikeldatei** | **der destillierende Lauf** — nur er hat die Quelle gelesen | Struktur-, Health-Check- und Reparaturlaeufe duerfen ausschliesslich **anlegen, wo nichts ist**, und **nie ueberschreiben**; ein Stub-Titel wird aus der gelesenen Datei oder der Quelle genommen, **nie aus der Normnummer geraten**. Ein Reparaturlauf, der Inhalt erzeugt, braucht dieselbe Verifikationsstufe wie ein Destillier-Lauf — NEU Run 28, Anlass Commit `f147dac4` (477 Zeilen established-Bestand ueberschrieben, zwei Gegenstaende falsch geraten) |
| **Leitungs- und Kanaldaemmung: gesetzliche Mindest-Daemmstaerken und UR-Werte** | **energie** (`muken-2025-anhang-4-5-daemmstaerken-leitungen`, MuKEn 2025 Anhang 4/5, WDV ZH § 6, KEnV SZ Anhang 8/9) | normen liefert mit SIA 380/3 **nur das Berechnungsverfahren** fuer effektive Waermeverluste und setzt ausdruecklich keine Dicken (Ziff. 02: die Anforderungen stehen «in den entsprechenden Energie- und Baugesetzen»). Der Verweis laeuft nur in diese Richtung — ein normativer Bezug MuKEn → SIA 380/3 ist an keiner Primaerquelle belegt und waere KB-eigene Subsumtion. Achtung: SIA 380/1 traegt die Leitungsdaemmstaerken im Hausbestand NICHT (`sia-380-1-2016` ist eine 6-Seiten-Vorschau) — NEU Run 29 |
| **Minergie-Zertifizierungsverfahren** (privat: MOP-Plattform, Nachweisformular, Zertifizierungsstelle, Antragsrollen) | **energie** (rund 20 `minergie-*`-Destillate) | planungsgrundlagen fuehrt ausschliesslich den **amtlichen** Nachweisweg (EVEN, EN-Formulare, private Kontrolle ZH) und hat zu Minergie keinen Artikel. Minergie ist ein privater Standard ohne kantonalen Vollzug — die Zeile «Energienachweis-Verfahren» oben erfasst ihn deshalb NICHT, und ein kuenftiger Lauf soll die Minergie-Verfahrensdestillate nicht nach planungsgrundlagen verschieben. Beruehrungspunkt ist allein das Blatt **EN-101b**, das in beiden Welten vorkommt: das Formular fuehrt planungsgrundlagen, die Feldstruktur des Minergie-Exemplars energie — NEU Run 29 (die Abgrenzung war nie explizit, die Herleitung musste jeder Lauf neu machen) |
| **Gebaeudeautomation/BACS: Norm-Fundstelle, Ausgabe, Fassungsstand** (SIA 386.111:2022 / SN EN ISO 52120-1:2021, Vorgaengerkette 386.110:2007/2012 → 386.111:2017) | **normen** (Registerzeile `wiki/REGISTER.md`; **ohne Inhaltsaussage**, Volltext nicht im Bestand, CHF 144.–) | `energie` fuehrt die **angewandte Fachaussage** (BACS-Klassen A–D, MuKEn 2025 Art. D.1.23, § 41a BBV I, EN-141, Minergie-Abgrenzung) und bleibt **Traeger des Primaerbelegs** (`destillate/sia-386-bacs-gebaeudeautomation.md`, shop.sia.ch 25.07.2026); normen verweist dorthin, statt zu kopieren. Deckungsgleich mit der SWKI-Zeile oben — NEU Run 31 (13.08.2026), adversarial bestaetigt |
| **Unabhaengigkeit einer Marktdaten-Zweitquelle** (wer darf als «Gegenkontrolle» gelten) | **immobilienbewertung** (`datenquellen-registry`, `vergleichswert-hedonisch`) — dort ist am Original belegt, welcher Anbieter von welchem abhaengt | Alle Skills (`machbarkeit`, `kostenschaetzung`, `grobkosten-onepager`) verweisen dorthin und behaupten keine Unabhaengigkeit selbst. **Belegt Run 28:** UBS RE LFS bezieht seine Preisdaten von Wuest Partner (Quellenverzeichnis LFS S. 13) und ist damit **kein** von WP unabhaengiger Gegencheck; unabhaengig sind IAZI/CIFI und die kantonale Handaenderungsstatistik — NEU Run 28 |
| **Der AHB-Korpus `PL - 02_Recht_Norm/04_Merkblaetter/Projektadmin AHB/` (Stadt Zuerich)** — er wird von ZWEI KBs bewirtschaftet, und das ist gewollt, aber bis Run 34 unbeschriftet | **geteilt nach Ebene:** `planungsgrundlagen` (`recht-norm-ahb-stadt-zuerich-projektstandards`, 1'439 Z., `established`) fuehrt den **Ordnerkontext, die Vertragsbindung an den AHB-Honorarvertrag und die Einordnung** je Dokument; `energie` fuehrt die **Detailwerte und den Bauherren-Transfer** in derzeit 25 Destillaten aus demselben Ordner | **NEU Run 34 (16.08.2026).** Anlass ist kein Widerspruch, sondern eine gemessene Kanten-Armut: von den 25 `energie`-Destillaten mit Quelle aus diesem Ordner ist **genau eines** in `planungsgrundlagen` genannt (Dachbegruenung, und das nur, weil Run 33 es gesetzt hat). Namentlich betroffen: die neun `ahb-zuerich-gt-rl1..9`-Destillate (`energie`, angelegt 03.08.2026, Run 122) gegen §12/§13 desselben pg-Artikels (angelegt 14.07., erweitert 25.07.2026) — **dieselben neun Quell-PDF, neun Tage auseinander, unabhaengig destilliert, null Kanten in beide Richtungen.** Dachbegruenung (Run 22/25/33), PCB-Fugendichtungsmassen (Run 34) und Raumtemperatur-Richtlinie (Run 34) sind Symptome desselben Musters, nicht Einzelfaelle. **Regel:** wer aus diesem Ordner destilliert, prueft ZUERST den pg-Artikel auf einen bestehenden Absatz und setzt die Kante in beide Richtungen |
| **Fenster-Kennwerte Uw / Ug / g-Wert / Psi-Randverbund** | **energie** (`destillate/fenster-verglasung-uw-g-wert.md`, `established`) fuer Anforderungs- und Fachphysikseite; die **Grenzwerte** selbst kommen aus dem kantonalen Energierecht bzw. `normen` | `bauprodukte` fuehrt ausschliesslich **Produkt- und Systemwerte konkreter Hersteller** nach BKP 221 (z.B. Uw = 0,9 W/m²K als Produktwert eines bestimmten Systems) und **nie** Anforderungswerte — NEU Run 34 (16.08.2026). Anlass: `bkp-221-holzfenster-3fach-verglasung` ist der zweite Cross-KB-Pruefgegenstand zu Fenster-Kennwerten (nach Run 33), war beide Male sauber gehedgt und hatte trotzdem nie eine Matrixzeile. Der Artikel selbst trifft die Grenze richtig («der Uw-Wert, nicht der Ug-Wert, gehoert in den Energienachweis SIA 380/1») |
| **Der Quellordner `PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Energie/`** (Vollzugsordner Energie ZH, WDV 2009/2022, Vollzugshilfen EN) | **energie** — erschliesst den Ordner seit 17.08.2026 mit vier Destillaten (`vollzugsordner-energie-zh-abschnitt1-2`, `waermedaemmvorschriften-zh-2022`, `waermedaemmvorschriften-zh-2009-historisch` mit `status: superseded`, `vollzugshilfe-en10-heizungen-im-freien`) | `planungsgrundlagen` fuehrt den Ordner nur als Strukturzeile in `wiki/recht-norm-quellenlandkarte` und destilliert ihn **nicht** — NEU Run 35 (17.08.2026). **Abgrenzung, die den Anlass ausmacht:** die AHB-Fuehrungszeile aus Run 34 gilt fuer diesen Ordner **nicht**; sie deckt allein `04_Merkblaetter/Projektadmin AHB` ab. Von den fuenf am 17.08. geprueften Destillaten stammt nur `raumtemperatur-richtlinie-stadt-zuerich-2006` aus dem AHB-Ordner, und das ist beidseitig verdrahtet. Beide Richtungen sind seit Run 35 beschriftet |
| **Zuercher Index der Wohnbaupreise (ZIW): Indexstand, Stuetzstellen und Umrechnungsfaktoren** | **grobkosten** (`wiki/kennwerte`, Abschnitt «Baupreisindex ZH») — fuehrt seit Run 16 (17.08.2026) den Stand **01.10.2025 = 116.1 Punkte**, direkt an der **Primaerquelle** Stadt Zuerich verifiziert statt ueber die HEV-SZ-Reproduktion | `immobilienbewertung` (`realwert-sachwert`) verweist dorthin und pflegt die Reihe nicht mehr parallel — NEU Run 35. Sie hing einen Publikationsschritt zurueck (01.04.2025 = 1210.4). **Nicht zu verwechseln** mit dem **BFS-Baupreisindex** (andere Basis, andere Methodik, andere Region): der ist in beiden KBs deckungsgleich (April 2026 = 100.6, Basis Okt-2025) und wird nirgends mit dem ZIW verrechnet — beide KBs tragen die Verwechslungswarnung bereits selbst. Die Tab.-2-Richtwerte in `realwert-sachwert` bleiben auf dem Faktor 1.346 gerechnet; die Umstellung verschoebe sie um ~0,3 % und gehoert in die regulaere Ueberarbeitung |
| **Mehrfach-Destillation derselben Quell-PDF ueber KB-Grenzen** (gemessen auf Dateiebene, nur `wiki/`+`destillate/`+`buecher/`) | **kein einzelner Fuehrender — es ist eine Messgroesse.** Run 35 (17.08.2026): 33 Quell-PDF von ≥2 KBs destilliert, 38 KB-uebergreifende Paare, davon **2 verdrahtet, 36 nicht**. Cluster: pg↔normen 18 · pg↔energie 11 · energie↔normen 4 · immobilienbewertung↔normen 2 · baurecht↔normen 1 | **Regel:** wer aus einem Ordner destilliert, der bereits von einer anderen KB bedient wird, prueft zuerst deren Bestand und setzt die Kante in beide Richtungen. **Zwei Vorbehalte, ohne die die Zahl luegt:** (1) gemessen ist die Kante auf **Dokument**ebene — mehrere Artikel sind auf **KB**-Ebene sehr wohl verdrahtet (z.B. `energie-heizwaermebedarf-waermeerzeugerleistung` nennt die KB `energie` zweimal als fuehrend); der scharfe Fall ist `recht-norm-arbeitshilfen-planungsdetails` mit **null** Verweisen bei drei Doppel-Destillaten. (2) **Doppelbewirtschaftung ist nicht per se falsch** — falsch ist nur, sie nicht aufzuschreiben. Die Messung findet die Stellen; die Lektuere entscheidet. Abarbeitung clusterweise, ein Cluster je Lauf — NEU Run 35 |
| **Mehrwertabgabe ZH: Satz, Ausloeser und Erhebungsvoraussetzung** (kant. MAG LS 700.9 §§ 2/4, kommunal § 19) | **baurecht** (`wiki/enteignung-und-entschaedigung.md`, Volltext-verifiziert 23.08.2026, Buch-Run 98: kantonal **fix 20 %**, nur Einzonung oder Umzonung-in-Zone-fuer-oeffentliche-Bauten; kommunal **bis 40 %** des um Fr. 100'000 gekuerzten Mehrwerts, nur bei Auf-/Umzonung und nur mit eigenem Gemeindereglement, Flaechenschwelle 1'200-2'000 m²) | `immobilienbewertung` (`wiki/residualwertmethode.md`) fuehrte bislang nur die generische Wuest-Kurs-Angabe «20-40 % Ermessen der Gemeinde» ohne Kanton-/Ausloeser-Unterscheidung — kein Sachwiderspruch (die Bandbreite deckt die ZH-Zahlen zufaellig ab), aber eine Praezisions-Luecke mit Rechenfolge: die beiden Saetze koennen nebeneinander, nur einer oder gar keiner greifen, je nach Zonierungsart. `machbarkeit`/`agents/wirtschaftlichkeit-rechner.md` (Residualwert-Motor Typ B) fuehren Mehrwertabgabe **gar nicht** — ungeprueft, ob das im Scope liegt (meist Ausnuetzung im Rahmen der geltenden Zone, nicht Um-/Aufzonung) — NEU 24.08.2026 (`wissen/koordination`, interaktive Pruefung, kein Scheduled Run). Querbezug in `residualwertmethode.md` gesetzt (additiv); `wirtschaftlichkeit-rechner` bewusst nicht angefasst, da Scope-Frage ungeklaert |
| Bauten ausserhalb der Bauzone (RPG Art. 24c/37a, RPV Art. 41-43a) | **baurecht** | planungsgrundlagen (fuehrt nur Abgrenzungswissen, verweist fuer die Schwellen) |
| Strafrahmen Art. 229 StGB (Baugefaehrdung) | **baurecht** | normen (bfu-Kurzinfo 02.2011, nachrangig, mit Rechtsstands-Vorbehalt) |

> **NEU Run 8 — zweites Struktur-Muster «Uebergabe verpufft im abgebenden KB»:** Ein Artikel erkennt
> korrekt, dass eine andere KB nachziehen muss, notiert den Flag aber NUR bei sich. Zwei Fundorte
> in einem Lauf: der Fassungs-Flag zur VKF-BRL 16-15 stand seit Run 52 in `planungsgrundlagen` und
> war in `normen` nie angekommen; die SIA-2048-Uebergabe stand in `energie` und war in `normen`
> nie angekommen (grep «2048»: 0 Treffer). **Regel daraus: Uebergaben gehoeren in die
> `wiki/QUESTIONS.md` der EMPFAENGER-KB**, nicht als Notiz ins abgebende Wiki. Ohne den Cross-KB-Lauf
> haette in beiden Faellen niemand die Bring-Schuld gesehen.
>
> **NEU Run 8 — «Fassungspflege ist der blinde Fleck der Destillate»:** Verifikationen pruefen gegen
> DIESELBE Datei, aus der destilliert wurde, und koennen eine juengere Fassung im Bestand strukturell
> nicht finden (Fall 16-15: Refuter-Notiz «keine Abweichung gefunden» vom 17.07., einen Tag spaeter
> ein seit 2021 ueberholter `established`-Kennwert). **Regel daraus: erst den Bestand nach juengeren
> Fassungen derselben Norm durchsuchen (Dateiname/Stempel), dann Werte gegenlesen.**
>
> **Wiederkehrendes Muster (3. Fundort, Run 6):** VKF-Wortlaut wird in `planungsgrundlagen`-Artikeln
> materiell fortgeschrieben statt aus `normen` gezogen — bisher `brandschutz-pl03-wegweiser` (Run 3),
> dessen §1a (Run 4), neu `energie-pv-eignung-typenwahl` §6b (Run 6). Jedes Mal nachtraeglich verlinkt;
> die Trims bleiben offen. **Strukturbefund fuer den Synergie-Orchestrator:** die Rule `normen-referenz`
> greift beim SCHREIBEN der planungsgrundlagen-Artikel nicht — sie wird erst im Cross-KB-Lauf
> nachtraeglich durchgesetzt. Analoges Muster bei `energie` (Run 6: SIA-180-Fundstellen aus
> Vollzugshilfen rekonstruiert, obwohl das Norm-Destillat 3 Tage aelter war).

> **NEU Run 25 — viertes Struktur-Muster «Stichtags-Register mit heutigem Wissen ueberschrieben»:**
> `normen/wiki/REGISTER.md` fuehrt Bloecke mit ausdruecklichem Stichtag («A) SIA — Gueltigkeit je
> Norm, Stand 25.02.2013»). Zwei Melder wollten dort SIA 493 bzw. SIA 430 auf «archiviert» bzw.
> «ersetzt» umstellen; **zwei Verifikatoren haben das unabhaengig voneinander abgelehnt** — per
> Stichtag waren beide Aussagen richtig, eine Umstellung haette eine Rueckdatierung erzeugt und
> die tragende Quelle des Registers unnachvollziehbar gemacht. **Regel daraus: ein datiertes
> Stichtags-Register wird ERGAENZT (Querverweis, Bemerkungsspalte), nie ueberschrieben.** Der
> Nach-Stichtag-Sachverhalt gehoert in die undatierte Bemerkungs-/Bestand-Spalte.
>
> **NEU Run 25 — «`status: established` bezeugt die Destillier-Treue, nicht die Gueltigkeit»:**
> Beide archivierten Normen dieses Laufs trugen `established`. Das Feld sagt aus, dass das
> Destillat gegen das Original geprueft wurde — ueber den Rueckzug der Norm sagt es nichts, und
> ein Haus-PDF kann seinen eigenen spaeteren Rueckzug strukturell nicht ausweisen. **Regel:
> Inhaltsstatus (`status`) und Gueltigkeitsstatus (`gueltigkeit`) sind zwei Frontmatter-Felder.**
> In `normen` fuer SIA 493 und SIA 430 umgesetzt; fuer den uebrigen Destillat-Bestand offen.
>
> **NEU Run 25 — «einen Phantomcode nie mechanisch ersetzen»:** Der widerlegte BKP-Code 271.10
> war in der Rule als Fehlschreibung fuer 271.0 Innenputze festgestellt. Im Skill `brandschutz`
> bezeichneten aber alle vier Fundstellen das **Trockenbau**-LV (richtig: 271.1). Die mechanische
> Ersetzung haette einen Innenputz-Code an den Kopf eines EI30-Trockenbau-LV gesetzt — ein
> Fehler, der verifizierbar aussieht und beim naechsten Audit nicht mehr auffaellt. **Regel:
> zuerst den Sachbezug der Stelle lesen, dann den Code setzen.**

> **NEU Run 27 — fuenftes Struktur-Muster «erfundener Beleg» als eigene Fehlerklasse:** Im
> ERCO-Artikel stand «Buerolicht typischerweise UGR ≤ 19», zugeschrieben auf S. 82 des
> Herstellerratgebers. Der Verifikator hat das **Original-PDF geoeffnet**: die Seite sagt «in der
> Regel zwischen 10 und 30» und nennt weder die 19 noch das Wort Buero. Das ist keine Quellenluecke
> (Aussage richtig, Beleg fehlt), sondern eine Zahl, die entstanden ist, wo keine Quelle sie je
> enthielt — dieselbe Klasse wie der SIA-2023-Titel aus Run 26. **Regel: solche Faelle im CHANGELOG
> als erfundenen Beleg benennen, nicht als fehlende Quelle.** Sonst faellt beim naechsten Audit
> nicht auf, dass hier nichts nachzutragen, sondern etwas zu entfernen war. Ein Herstellerratgeber
> ist nie eine zulaessige Normquelle — und der Fehlermodus sass nicht im Destillat, sondern im
> Abschnitt «Praxisrelevanz fuer JANS»: das Destillat war sauber, die Anwendungsempfehlung hat
> erfunden.
>
> **NEU Run 27 — sechstes Struktur-Muster «Sperrklausel mit Bedingung heilt nicht von selbst»:**
> `bauprodukte/wiki/QUESTIONS.md` verfuegte an zwei Punkten «Kein weiterer Lauf soll dort danach
> suchen, solange der Lesestand der KB `energie` unveraendert ist». Die Bedingung trat am 06.08.
> ein, aber niemand las die Klausel erneut — sie wirkt auf kuenftige Laeufe, der Fehler heilt also
> nicht von selbst, sondern haelt sich aktiv. **Regel: eine bedingte Stopp-Anweisung braucht einen
> benannten Waechter, sonst ist sie eine dauerhafte Sperre mit hoeflicher Formulierung.**
>
> **NEU Run 27 — siebtes Muster «der Nachtlauf ueberholt den Cross-KB-Lauf, waehrend er laeuft»:**
> Der Melder mass den ERCO-Lesestand bei 120 Seiten, der Ausfuehrende zwei Stunden spaeter bei 145
> (Nachtlauf 23:31 dazwischen); die Restpunkte-Liste des Auftrags war da schon ueberholt, ein
> darin genanntes Kapitel «Lichtanwendungen» existiert gar nicht. Ebenso war
> `ecobkp-2026-ausbau.md` juenger als die Anschlussbloecke, die seine Abwesenheit beklagten.
> **Regel (Bestaetigung von Run 26): der Ausfuehrende misst am Bestand und uebernimmt die Vorlage
> nie ungeprueft** — in diesem Lauf hat das vier von fuenf Ausfuehrenden je mindestens einen
> Vorlagenfehler finden lassen.

> **NEU Run 28 — achtes Muster «der Reparatur-Lauf ist selbst die Fehlerquelle»:** Commit
> `f147dac4` (07.08.2026 20:54, «normen: … 6 Artikel-Stubs fuer tote Backlinks angelegt +
> ins INDEX aufgenommen (Health-Check Rueparatur 260807)») hat **drei** der sechs Stubs auf
> Dateinamen geschrieben, die bereits mit established-Volltext existierten: `sia-180-2014.md`
> (137 Zeilen, «destilliert VOLLSTAENDIG», Anhaenge A-H), `din-1961-2010.md` (299 Zeilen,
> refuter-verifiziert Mini-Run 14 und 25), `sia-mb-2024-2006.md` (55 Zeilen, established).
> **477 Zeilen geloescht, 3,5 Stunden lang unbemerkt** — gefunden erst durch diesen Lauf, und
> zwar von zwei unabhaengigen Feldern zugleich (B und F, fuenf konvergente Befunde).
> **Regel daraus: ein Generator, der Dateien anlegt, prueft auf Existenz und ueberschreibt nie.
> Und ein «Reparatur»-Lauf braucht dieselbe Verifikationsstufe wie ein Destillier-Lauf** — er
> hatte hier gar keine. Zurueckgenommen aus `f147dac4^` am 07.08.2026, INDEX bereinigt.
>
> **NEU Run 28 — «der erfundene Beleg auf der Ebene des Dateititels»:** Derselbe Lauf hat die
> Stub-Titel aus der blossen Normnummer geraten, ohne die vorhandene Datei zu lesen: DIN 1961
> wurde zu «Elektrische Leitungen — Bemessung und Ausfuehrung» (tatsaechlich **VOB Teil B**,
> Allgemeine Vertragsbedingungen fuer die Ausfuehrung von Bauleistungen), SIA MB 2024 zu «Beton
> mit Recycling-Gesteinskoernungen» (tatsaechlich **Standard-Nutzungsbedingungen fuer die
> Energie- und Gebaeudetechnik**; der Betontitel gehoert zu SIA 2030). Beide falschen Titel
> standen danach als saubere Tabellenzeile im INDEX. Das ist die Fehlerklasse aus Run 27 eine
> Ebene hoeher: **nicht die Zahl im Artikel ist erfunden, sondern der Gegenstand des Artikels** —
> und in einer Registerzeile sieht das vollstaendig verifizierbar aus.
>
> **NEU Run 28 — «der Backlink-Pruefer, der Feldnamen fuer Feldwerte haelt»:** Derselbe Lauf hat
> aus dem Frontmatter-Feld `links:` einen toten Backlink «links» abgeleitet und dafuer den Artikel
> `destillate/links.md` angelegt. Der Stub beschreibt sich selbst als «Redirect» und haelt fest,
> er «sollte normalerweise nicht vorhanden sein» — er traegt trotzdem `status: established`.
> **Regel: ein Struktur-Pruefer, der Feldnamen nicht von Feldwerten unterscheidet, erzeugt
> Phantom-Artikel** und meldet sie anschliessend als Bestand. Verbleib des Stubs: offener Entscheid
> fuer Raphael (Loeschung braucht Einzelfreigabe).
| **Honorar-Phasenanteile und Baukosten-Prozentmethode** (Leistungsanteil q, Schwierigkeitsgrad n, Baukategorien I-VII) | **normen** (`sia-102-2014.md` Ziff. 7.6/7.7 — die Prozenttabelle steht ausschliesslich dort; `sia-102-2020.md` belegt, dass die Ausgabe 2020 nach Art. 6 endet und **keine** Baukosten-%-Methode mehr kennt) | `skills/honorarberechnung-sia102` fuehrt eine **buerointerne JANS-Konvention** mit abweichenden Werten — zulaessig, aber seit 18.08.2026 als solche gekennzeichnet und **nie** als SIA-102:2020-Fundstelle zu zitieren — NEU Run 36 |
| **Doppel-Destillate aus `03_Arbeitshilfen`/`04_Merkblaetter`** (Absturzsicherungen Stadt ZH, PAVIDENSA-Estriche, AUVA-Anschlageinrichtungen, SIA 271/273 Balkone) | **normen** fuer die zitierfaehige Norm-Fundstelle | `planungsgrundlagen` (`recht-norm-arbeitshilfen-planungsdetails`) fuer die baupraktische Einordnung — **Doppelbewirtschaftung ist gewollt**, beide lesen dieselbe PDF mit verschiedener Absicht; die Landkarte steht seit 18.08.2026 am Artikelkopf — NEU Run 36 |
| **Energiegrenzwerte Neubau ZH** (§ 47a BBV I Grenzwerttabelle, § 11 Abs. 1 EnerG Fossilverbot, Fassung seit 01.09.2022) | **energie** (`energ-bbv1-waermebedarf-rechtsgrundlagen-zh`) | `baurecht` fuehrt den PBG-/BBV-Verfahrenskontext und den **Erlasswortlaut** in `raw/`; der **Buch-Layer** (6. Aufl. 2019) gibt hier den abgeloesten 80-%-Stand wieder und traegt seit 18.08.2026 einen Fassungsstand-Vermerk — NEU Run 36 |
| **Korpus-Inventare der Bueroreferenzen und des Architektur-Archivs** (`buero-referenzen`, `archiv-fachwissen`: was liegt wo, Triage P1-P3, Sperren) | **architektur-fachwissen** (neu 23.08.2026) | fuehrt selbst **keine** Kennwerte, **keine** BKP-Codes und **keine** Norm-Fundstellen: Kosten CHF/m³ → `grobkosten`, Ausbaustandard CHF/m² → `immobilienbewertung`, Wuest-Benchmark → `skills/kostenschaetzung/referenzen`, Schulbau-Kennwerte → `wettbewerbs-dna` (`muster/kennwerte-schulbauten`) + `entwurfs-referenzen`, Norm/Ausgabe → `normen`, BKP-Codes → `references/bkp-2017` (Rule `bkp-2017-referenz`). Die Korpora enthalten die **BKP-Altausgaben 1989/97/2001** und Norm-Staende 2001-2015; beides ist nie Codequelle. **Dauerhaft ausgeschlossen** (Rule `auto-verbesserungen` 260823): Vertraege, Bewerbungen/Personaldossiers, Adressdaten — NEU Run 41 |
| **U-Wert-Rechenwege und Bauteilaufbauten aus Fremd-/KI-Dokumenten** (Pruefung, Methodenfehler, Warnkarten) | **energie** (`destillate/ki-generierte-fachdokumente-referenzablage`, `wiki/u-werte-grenzwerte-ch` §«vier Griffe», FAQ F257) | `planungsgrundlagen` (`energie-uebersicht`) fuehrte den Fall Grassen-Biwak bis Run 41 als **Benchmark** und traegt seit 24.08.2026 den Ueberholt-Vermerk. **Merksatz aus dem Fall:** ein plausibles Ergebnis ist kein Beleg fuer eine richtige Rechnung — drei Methodenfehler hoben sich fast auf — NEU Run 41 |

## Gepruefte Paare

### baurecht → planungsgrundlagen (RPV-Schwellen ausserhalb Bauzone) — geprueft 2026-08-25 (Run 43)

**Entwertungs-Nachverfolgung, bestaetigt und gesetzt.** `baurecht` hat am 24.08. (Buch-Run 140) die
Formel «max. 30 %/100 m², Erweiterungen ausserhalb nur halb angerechnet» als Destillationsfehler
korrigiert. `planungsgrundlagen/wiki/recht-norm-rechtsprechung-vg-zh.md` Z. 195-196 fuehrte sie
unveraendert — und lud ausdruecklich zum Nachschlagen an dieser Stelle ein. Nachtrag gesetzt
(+16/−0) mit beiden Schwellen (lit. a innen +60 %, lit. b aussen weder 30 % noch 100 m², innen halb
angerechnet), dem Vergleichszustand nach Art. 42 Abs. 2 RPV und der Wiederaufbau-Fundstelle
Art. 42 Abs. 4 RPV. Am amtlichen Volltext gegengelesen. **Der Refuter fand zwei Punkte, die der
Melder nicht hatte** (Vergleichszustand, Fassungsstand 1.1.2026). Vollstaendigkeit innerhalb
`baurecht` geprueft: dort ist die Korrektur durchgezogen, kein Rest-Vorkommen.
Fuehrend fuer RPG/RPV bleibt **baurecht** — Matrixzeile ergaenzt.

### energie → Hub (Uf-Fenster-Werte, Entwertung Run 163) — geprueft 2026-08-25 (Run 43), NULLBEFUND

Die am 25.08. von `energie` belegte Abloesung der BFE-2002-Fallback-Tabelle (1,9/2,5/3,3 → 1,8/2,2/2,8
per «Merkblatt Fenster» 805.107.d, 08.2009) ist **nicht in den Hub gesickert**. Geprueft:
`planungsgrundlagen/wiki/` vollstaendig, `normen/wiki/` + rund 300 Destillate, `baurecht/wiki/`,
`skills/energie`, `skills/planungsgrundlagen`, `skills/kostenschaetzung`, `references/`. Einziger
Fund ausserhalb `energie` ist `normen/destillate/sia-mb-2021.md` Z. 35 — und der traegt den Vermerk
bereits, gesetzt von `normen` am selben Tag. **Gegenprobe zum Run-41-Befund**, wo die Entwertung den
Abnehmer nicht erreichte: hier hat die Bringschuld nach Rule `wissens-bibliothekar` funktioniert.

### normen ↔ baurecht (Art. 229 StGB, bfu-Destillate) — geprueft 2026-08-25 (Run 43)

Rotationspunkt aus Run 21 (bfu-Destillate) eingeloest. **Bestaetigt:** beide bfu-Destillate geben den
Strafrahmen von Art. 229 StGB mit «bis zu drei Jahren» fuer **beide** Tatbestaende wieder; richtig ist
Abs. 1 vorsaetzlich bis fuenf Jahre, Abs. 2 fahrlaessig bis drei. **Es ist derselbe Fehler, den
`baurecht` in Buch-Run 101 an sich selbst korrigiert hat.** Vorbehalte an beiden Stellen gesetzt
(je +12/−0), Werte unveraendert. Fuehrend fuer den Strafrahmen ist **baurecht**
(`wiki/widerrechtliche-bauten-und-sanktionen.md`, Stand 1.1.2026 volltextverifiziert), die
bfu-Kurzinfo 02.2011 ist nachrangige Fachpublikation. Zweitens: `baurecht/wiki/bauausfuehrung-und-baukontrolle.md`
Abschnitt 6 zeigte nicht auf seine eigene Faktenbasis in Bd. 2 Kap. 13.3.2 — Zeiger gesetzt (+15/−0).
**Der Refuter hat den Zielort gedreht:** der Melder wollte auf ein `speculative` normen-Destillat
verweisen, waehrend Art. 58 OR, Art. 229 StGB, BauPG und PrSG samt BGE 91 II 208 in derselben KB
belegt liegen.

### twin ↔ rules/anrede-kontakte — geprueft 2026-08-25 (Run 43), teils widerlegt

**Bestaetigt:** die Rueckfall-Halbzeile der Steinmann-Registerzeile («faellt bei Mahn-/Geldkontext auf
«Guten Tag» zurueck») ist durch drei neuere Belege eingegrenzt — 17.07., 29.07. und 24.08.2026 messen
im Geldkontext dreimal «Geschaetzter Roman», also die Stufe *hinauf*. Der einzige Beleg fuer den
Rueckfall ist eine **Mahnung** (19.03.2026); «Geld» ist nicht gleich «Mahnung». Der Vermerk an der
Rule-Zeile wurde vom **Auto-Mode-Klassifikator zurueckgehalten** und liegt als fertiger Wortlaut im
Laufbericht — nicht umgangen (Rule `wege-und-vollmachten`). **Widerlegt:** der zweite Melder-Befund
(«die Rule-Zeile traegt keinen Verweis auf die offene Twin-Frage») — die Kante existiert dreifach.
Echter Nebenfund des Refuters: der Rueckverweis in `twin/wiki/beziehungsregister.md` Z. 3183 nannte
QUESTIONS «260825b #4» statt **#3**; berichtigt (+5/−0).

### QUESTIONS-«beantwortet»-Sektionen (8 KBs) — geprueft 2026-08-25 (Run 43), NULLBEFUND

Uebergabepunkt 3 aus Run 42 (Fehlertyp «falsche Zahl in der beantwortet-Sektion», Anlass Giebelweg
8 m³ statt 105 m³). Geprueft in `planungsgrundlagen`, `energie`, `normen`, `baurecht`,
`immobilienbewertung`, `grobkosten`, `auflagebereinigung`, `spec`: kein zweiter Fall gefunden. Der
Giebelweg-Fall bleibt bis auf Weiteres ein Einzelfall, kein Muster — der Sweep muss nicht wiederholt
werden, solange keine neue Teil-Nachfuehrung (Artikel ja, QUESTIONS nein) protokolliert wird.

### Werkzeug-Fehlalarme im Wissens-Layer (auflagebereinigung, projekt-lessons, kunde-bopp, immobilienbewertung) — geprueft 2026-08-25 (Run 43)

Kein Cross-KB-Widerspruch, sondern ein Messfehler mit drei Wochen Standzeit. Der `wissenscheck`
meldete in `auflagebereinigung` am 01.08., 03.08. und 25.08. denselben «toten Backlink» — der
Zielartikel existierte die ganze Zeit. Ursache: zwei Dateien schrieben die `links:`-Zeile mit
zusaetzlicher YAML-Listenklammer (`links: [[[a]], …]`), die `tools/wiki-konsistenz.sh` als Teil des
Linknamens liest (hubweit 65 Artikel ohne, 2 mit). Angeglichen (je 1/1), beide KBs jetzt befundfrei.
Ebenso: `quellen:` statt `sources:` in einem Frontmatter (hubweit 296 zu 3) — die Quellen waren
vollstaendig da. **Lehre: ein Befund, der dreimal unveraendert wiederkehrt, ist zuerst am Werkzeug zu
pruefen.** Zwei weitere Fehlalarm-Familien gemessen, nicht behoben (Vorschlag im Laufbericht):
Registerdateien ohne Frontmatter (`immobilienbewertung/wiki/wissensluecken.md`) und bewusste
Vorwaertsreferenzen auf geplante Artikel (`kunde-bopp`, dort als *(geplant)* gekennzeichnet).

### planungsgrundlagen ↔ normen (Brandschutz-Wegweiser, erster ganzflaechiger Sweep) — geprueft 2026-08-24 (Run 42)

**Der Uebergabepunkt 1 aus Run 41, eingeloest.** Der Artikel
`planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` (rund 2'200 Zeilen, `established`,
destilliert VKF-Wortlaut materiell) war bis dahin nur an drei Stellen gegen die KB `normen`
geprueft. Zwei Melder haben ihn haelftig durchgearbeitet, zwei Refuter gegengelesen.
**Vier bestaetigte Befunde, ein widerlegter** — alle vier auf der Wegweiser-Seite additiv
korrigiert, kein Eingriff in `normen`:

1. **§4b Z. 571 — VKF-BSR 15-15 Ziff. 2.3.4 verkuerzt wiedergegeben.** Es fehlten
   «**eingeschossig**» und «**untereinander**»; so gelesen wirkte die 3'600-m²-Abstandbefreiung
   auch fuer mehrgeschossige Bauten und gegenueber grundstuecksfremden Bauten. Der Refuter hat
   den Befund **verschaerft** (der Melder sah nur «eingeschossig») und die Ursprungsstelle
   gefunden: dieselbe Verkuerzung liegt in `planungsgrundlagen/wiki/QUESTIONS.md` Z. 1410
   (Lauf-Eintrag C7/Run 19) — bewusst **nicht** angefasst, das ist ein abgeschlossenes
   Laufprotokoll (append-only, Rule 260811).
2. **§5w Z. 1896 — Blitzschutz Hochhaeuser > 30 m: der Wegweiser fuehrte III/III**, den Wert der
   Ausgabe 2015. Seit 01.01.2017 gilt Spalte B = **II**, die einzige geaenderte Zahl der
   Anhang-Tabelle a-j; die Anforderung wurde also **verschaerft**, der Wegweiser nannte die zu
   schwache Klasse. Zwei unabhaengige Belege (`energie/destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`
   am VKF-Primaer-PDF 2017; `normen/destillate/vkf-brl-aenderungen-2017.md` S. 28).
3. **§5ac Z. 2052 — der Artikel widersprach seiner eigenen Belegquelle.** Er erklaerte die
   Aenderungen 2017 pauschal fuer «durchgaengig redaktionelle Praezisierungen»; dieselbe
   AFC-Gegenueberstellung, auf die er sich beruft, fuehrt «Blitzschutz Hochhaeuser verschaerft»
   unter den **materiellen** Aenderungen. **Die gefaehrlichere der beiden Stellen**, weil eine
   pauschale Unbedenklichkeitsaussage das Nachpruefen generell abschaltet. Derselbe Irrtum ist
   in `planungsgrundlagen/wiki/QUESTIONS.md` Z. 1300 durchgeschlagen.
4. **§5l Z. 1555 — kantonaler Vollzugs-Vorbehalt ZH fehlte** (GVZ-Merkblatt 30.17.3, RWA in
   gesprinklerten Einstellhallen 1'201-3'600 m²). **Der Refuter hat die Aktion begrenzt:** der
   Melder wollte das GVZ-Destillat als «gepruefte Planungsregel» fuehren — es traegt aber nach
   vier Refuter-Runden `status: speculative` mit dem Vermerk «HEBUNG AUF established ERNEUT NICHT
   ZULAESSIG» und stuetzt sich auf die abgeloeste VKF-RWA-Ausgabe 2003. Gesetzt wurde der
   **Vorbehalt**, keine Zahl. Rule `normen-referenz` Ziff. 1b hat hier zum ersten Mal messbar
   verhindert, dass eine Warnkarte als Planungswert weiterwandert.
5. **Widerlegt:** die Feuerwehr-Bewegungsflaechen (6×11 m, 60 m Schlauchlaenge, 18 t) seien
   unbelegt. Der Vorbehalt steht bereits **vierfach** — zweimal im Artikel selbst, einmal in
   dessen QUESTIONS/INDEX und einmal in der Empfaenger-KB `normen` (QUESTIONS Z. 3585). Der
   Befund meldete einen dokumentierten, bewusst offengehaltenen Zustand als neuen Mangel.
   Nebenbei: die Zuordnung des Merkblatts «Feuerwehrzufahrten» **zur VKF** ist selbst unbelegt;
   falls die Zahlen je gebraucht werden, ist die Quelle bei den kantonalen Brandschutzbehoerden
   zu suchen, nicht im VKF-Richtlinienwerk.

**Zusaetzlich gesetzt:** Kante von §5ac zu den beiden BSV-2015-Destillaten der Normen-KB
(`vkf-bsv2015-vernehmlassungsbericht.md` fuehrend, `vkf-bsv2015-bericht-aenderungen.md`
Duplikat) — Auffindbarkeit, und die offene Duplikat-Frage wird vom Wegweiser aus sichtbar.
**Formhinweis fuer kuenftige Laeufe:** der Wegweiser verweist KB-uebergreifend 29-mal ueber den
vollen Pfad und nur dreimal ueber `[[…]]`. Wikilinks loesen KB-lokal auf und zeigen ueber
KB-Grenzen ins Leere — **die Pfadform ist die belastbare**, nicht die Wikilink-Form.

**Rest des Artikels ohne Befund:** QSS-Tabellen §3, Feuerwiderstands-Tabellen §4b,
Parkhaus-Kennzahlen §4c, Atrien §4d, Doppelfassaden §4e, Beherbergung-Fluchtwege §5d,
Lignum-Holzbau §5, VKF-Verzeichnis 40-15 §5f — geprueft, deckungsgleich oder bereits mit
korrektem Fundstellen-/Aktualitaetshinweis versehen. **Der Artikel gilt damit als
ganzflaechig gegengelesen**; kuenftige Laeufe brauchen nur noch das Delta.

### energie ↔ planungsgrundlagen (EN-102-Edition, SIA 2040 → SIA 390/1) — geprueft 2026-08-24 (Run 42)

Zwei Befunde, beide auf der `planungsgrundlagen`-Seite korrigiert.

1. **EN-102 «Dez. 2018» — der Melder hatte recht in der Sache und unrecht in der Begruendung.**
   Er wollte einen Verwechslungs-Vermerk (EN-112 «Kuehlraeume») setzen, den die fuehrende KB
   **am selben Tag zurueckgezogen** hatte: `energie/destillate/enfk-en-102-waermeschutz-2018.md`
   Abschnitt «Zwei Ausgaben — Editionsklaerung» haelt fest, die Dez.-2018-Fassung sei eine echte
   **Vorauflage** von EN-102 selbst, beide Ausgaben lagen nebeneinander vor. **Lehre: ein
   `outputs/`-Dokument ist kein Fuehrungsstand** — das zitierte
   `outputs/2026-08-24_en-102-ausgabedatum-korrektur.md` trug die widerrufene Begruendung, das
   Destillat den geltenden. Der Refuter fand zudem den **echten** Mangel, den der Melder
   ausdruecklich als Nicht-Befund abgehakt hatte («no Free-Cooling references — not a cross-KB
   issue»): die einzigen zwei materiellen Aenderungen der Revision liegen in **Kapitel 8**, und
   die Free-Cooling-Erleichterung fehlte in `planungsgrundlagen` **vollstaendig**. *Die
   Abwesenheit war hier der Befund.*
2. **SIA 2040:2017 ohne Abloesungsvermerk** — abgeloest seit **01.02.2025** durch **SIA
   390/1:2025 «Klimapfad»**. `planungsgrundlagen` hedgte nur mit «⚠ Edition vor Zitat
   verifizieren» (warnt vor der falschen *Auflage*, nicht vor der *Abloesung*) und fuehrte
   SIA 390/1 als gleichrangigen **Parallelweg** statt als Nachfolgenorm. Der Refuter fand zwei
   weitere betroffene Stellen, die der Melder uebersah. **Geldfolge:** die Zielwerttabelle steht
   unmittelbar neben dem realen JANS-Deliverable (Oekobilanz Wettbewerb «Schlierenweg 31») und
   ist damit Vorlage fuer Wettbewerbs- und Machbarkeitsbeitraege. **Grenze eingehalten:** aus
   SIA 390/1 wurde **keine Zahl** uebernommen, nur der Statusvermerk — der Normtext ist
   kostenpflichtig und normen-seitig ausdruecklich nur bibliografisch belegt.

### normen ↔ baurecht (SN-Nummer SIA 431) — geprueft 2026-08-24 (Run 42)

`baurecht/wiki/bauausfuehrung-und-baukontrolle.md` Z. 161 fuehrte «SN 409 431». Amtlich gilt
**SN 509 431**. **Entscheidend war eine Quelle, die der Melder nicht fand:** der Widerspruch ist
in `baurecht` selbst amtlich aufgeloest — `raw/260607_amtlich_zh_bbv1.md` Z. 1080 gibt den Anhang
BBV I im Wortlaut wieder, und zwei Zeilen darueber steht SIA 430 = SN 509 430. Die Wiki-Zeile
widersprach also nicht nur der Normen-KB, sondern **ihrem eigenen raw-Beleg**, auf den sie sich
beruft. **Der Refuter hat den Zielumfang erweitert:** die Zahl steht auch im Buch-Destillat
`buecher/band-1/08-ausfuehrung-teil2-baustellensicherheit.md` Z. 71 — waere nur die Wiki-Zeile
korrigiert worden, haette der naechste Buch-Lauf den Fehler zurueckgeschrieben. Buchwiedergabe
stehen gelassen (offen, ob das Werk den Dreher druckt), Korrekturvermerk mit
Nichtzurueckschreib-Auflage daneben. Kante in `normen/wiki/REGISTER.md` gesetzt, damit kuenftige
Zitate die Nummer aus dem Register ziehen.

### energie ↔ planungsgrundlagen (Entwertungs-Bringschuld E-R161-3) — geprueft 2026-08-24 (Run 42)

**Der Uebergabepunkt 2 aus Run 41 — und die Diagnose kippte um 180 Grad.** Der Melder hielt die
12 in PL-03 gelisteten Nicht-PDF-Dateien fuer ungesichtet und wollte einen Folgeeintrag
«E-R161-3b» oeffnen. Widerlegt: PL-03 wurde am **28.07.2026** von `planungsgrundlagen` als
**Vollinventar aller 153 Dateien** geprueft, jeder Nicht-Treffer inhaltlich geoeffnet
(`outputs/2026-07-28_nachaudit-pl03-brandschutz-vollinventar.md`, 145/153 verarbeitet), Korpus
seither unveraendert. `08 QS/Die feuerpolizeilichen Bedingungen.docx` war sogar schon am
**13.07.2026** als private ChatGPT-Notiz erkannt und als Nicht-Fund dokumentiert. **Der neue
offene Punkt haette eine abgeschlossene Doppelarbeit bestellt.**

Zwei Lehren fuer die Registerfuehrung: (a) **«kein Zielort» war ein Fehlschluss** — dass
`brandschutz` ein Skill und keine `wissen/`-KB ist, heisst nicht, dass niemand zustaendig waere;
zustaendig ist `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md`. (b) Der Rest-Vorbehalt
liegt bei **PL-02**, nicht PL-03: dort sind fuenf von rund 20 Energie-Kandidaten geoeffnet, der
Rest ist Analogieschluss — der Melder hatte genau die falsche Bibliothek als die geschlossene
gefuehrt. Beides additiv in `energie/wiki/QUESTIONS.md` nachgetragen.

### kunde-bopp ↔ projekt-lessons (Rotation, seit Run 21 nicht geprueft) — geprueft 2026-08-24 (Run 42)

**Cross-KB-Nullbefund bestaetigt, KB-interner Widerspruch gefunden.** Die beiden KBs beruehren
sich inhaltlich nicht (0 Treffer beidseitig auf `bopp|ebmatingen|giebelweg|woma|…`); das ist
korrekte Scope-Trennung, kein Mangel — der verallgemeinerbare Ertrag aus Giebelweg 12 ist an den
Skill `massgebendes-terrain` zurueckgeflossen, belegt im CHANGELOG 30.07.2026.

**Der Refuter fand dabei einen Fehler, den der Melder als «bereits bereinigt» abgehakt hatte:**
`kunde-bopp/wiki/QUESTIONS.md` fuehrte in der **«beantwortet»-Sektion** «volle Attika
budgetkonform, Reserve **8 m³**» — den am 12.06.2026 **verworfenen** Zwischenstand ueber ein
ausgemitteltes MT. Geltend ist der Endstand vom 13.06.2026: **1'162 m³, Reserve 105 m³**. Die
Nachfuehrung von Run 21 hatte nur den Artikel und den Output erfasst, diese Datei nicht — und die
heutige Pflege-Session hat den Absatz angefasst und die Zahl daneben stehen lassen. Aussenwirkung:
die Reserve traegt die Einwendung vom 30.06.2026 an die Gemeinde Langnau a/A; die dahinterliegende
Ausmittelungs-Methode waere gegenueber der Behoerde nicht haltbar. Additiv korrigiert.

⚠ **Registervermerk:** die Begruendung «`projekt-lessons` ist auf Bauleitung/Ausfuehrung/
Healthcare **begrenzt**» ueberzeichnet dessen `CLAUDE.md` («**Schwerpunkt**», dazu «Kosten &
Termine» und «Behoerden & Bewilligungen»). Am Nullbefund aendert das nichts, aber die Formel darf
kuenftig nicht als Ausschlussgrund zitiert werden.

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung — geprueft 2026-08-24 (Run 42), Nullbefund

Achte Pruefung desselben Dreiecks (16, 27, 28, 29, 31, 35, 37, 39, jetzt 42). **Nullbefund haelt
der Gegenpruefung stand:** Fuehrungs-Kanten beidseitig gesetzt und nicht nur in der Matrix
(`grobkosten/wiki/kennwerte.md` Z. 21-24 und 530-542 erklaert sich fuer Healthcare ausdruecklich
fuer **nicht** fuehrend; `skills/kostenschaetzung/SKILL.md` Z. 53-58 spiegelt es). Der
Averecura/Vella-Vorbehalt reist bis in
`entwurfs-referenzen/wiki/parameter-sets/healthcare-neubau-zh.json` mit. Der gefaehrlichste
Kandidat war die Zahl **1'100**, die in zwei Einheiten kursiert — CHF/m³ GV in `grobkosten`,
CHF/m² HNF im Skill — an beiden Stellen sauber deklariert, der Skill warnt sogar ausdruecklich
(«Bezugsflaeche beachten»). **Das Dreieck ist gesaettigt; kuenftige Laeufe nur noch bei neuem
Kennwert-Zuwachs anfassen.**


### energie ↔ planungsgrundlagen (Grassen-Biwak: eine KI-Rechnung als Benchmark gefuehrt) — geprueft 2026-08-24 (Run 41)

**Der schwerste Befund dieses Laufs.** `energie` hat am 23.08.2026 (Lauf 161) zwei als
Fachdokument abgelegte **ChatGPT-Antworten** in der JANS-Referenzablage identifiziert und als
Warnkarte erfasst (`destillate/ki-generierte-fachdokumente-referenzablage.md`, `established`).
**Was der Lauf nicht geprueft hat: ob die Zahlen bereits abgeflossen sind.** Sie waren es.
`planungsgrundlagen/wiki/energie-uebersicht.md` (`established`) fuehrt denselben Wandaufbau
seit dem 13.07.2026 unter der Ueberschrift «**Realer JANS-Benchmark — Biwak Grassen**», samt
dem halluzinierten λ 0,13 und dem Luftschicht-λ 0,15.

- **Was falsch ist:** nicht nur das λ-Delta, das Run 56 am 22.07.2026 bereits als «~8 %, ohne
  Praxisrelevanz» abgehakt hatte, sondern **drei Methodenfehler**: R_si/R_se fehlen ganz · die
  luftgefuellte Unterkonstruktion mit λ 0,15 statt Tabellen-R nach SN EN ISO 6946 · die
  hinterlueftete Vorsatzschale mitgerechnet statt weggelassen. Korrigiert 0,374-0,389 statt
  «ca. 0,40 W/m²K».
- **Warum es durchging:** die Fehler heben sich fast auf. Eine Plausibilitaetspruefung am
  Ergebnis haette nichts gefunden — der Run-56-Vermerk ist genau daran gescheitert.
- **Muster:** dies ist die Umkehrung des bisher bekannten Musters. Sonst erreicht eine
  **Herabstufung** in der fuehrenden KB den Abnehmer nicht (Run 38 BRL 17-15, Run 39 Holzbau,
  Run 40 BRL 23-15). Hier hat die fuehrende KB eine Quelle **neu** entwertet und den Abnehmer
  nicht gesucht. Die Bringschuld nach Rule `wissens-bibliothekar` (Cross-KB, 23.08.2026) gilt
  in beide Richtungen: wer eine Quelle entwertet, prueft, wer sie schon zitiert.
- **Aktion:** Ueberholt-Vermerk gesetzt (20 Z., additiv), Benchmark-Status ausdruecklich
  aufgehoben, der Abschnitt bleibt als **Lehrbeispiel** stehen. Keine Zahl uebernommen.
- **Status:** erledigt. Fuehrung unveraendert bei `energie`.

### architektur-fachwissen ↔ Kennwert-/Normachse (Erst-Pruefung der neuen KB) — geprueft 2026-08-24 (Run 41)

Erste Cross-KB-Pruefung der am 23.08.2026 angelegten KB. Zwei Melder unabhaengig, vier
bestaetigte Befunde, alle rein additiv geloest.

- **SIA-102-Phasenanteile doppelt gefragt** (`wiki/QUESTIONS.md` #4, von beiden Meldern
  gefunden): die KB reicht eine Frage an den Skill `normen` weiter, die
  `normen/destillate/sia-102-2014.md` (`established`, S. 1-58 komplett gelesen 14.07.2026)
  Ziff. 7.7 belegt beantwortet. **Der Refuter hat die Aktion korrigiert:** der Melder wollte auf
  `sia-102-2020.md` und auf `skills/honorarberechnung-sia102` verweisen — beides falsch. Das
  2020er-Destillat belegt die **Abwesenheit** der Methode, und der Skill fuehrt eine bueroeigene
  Konvention mit **anderen** Zahlen. Nachtrag mit der richtigen Fundstelle und drei Vorbehalten.
- **Schulbau-Kennwerte** (`QUESTIONS.md` #6, Report 05.6): die Achse existiert bereits
  (`wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md`, `established`, 25 Quellen;
  `entwurfs-referenzen`), und sie erklaert `grobkosten` fuer CHF/m³ als fuehrend. Querverweis
  gesetzt, Frage neu geschnitten: beizusteuern ist die **Methode**, nicht der Kennwert.
- **Phantom-BKP-Codes im BGS-Honorarblatt 2005** (neu **#3b**): «019» heisst im BKP 2017
  «Uebriges» unter 01 Grundstueckserwerb, nicht Abbruch (das ist **112.1**); «**071**» existiert
  im BKP 2017 gar nicht. Beide Inventardateien nennen den Aufbau «unmittelbar uebertragbar».
  Neuer QUESTIONS-Punkt statt Eingriff in `raw/` (dort wird nie editiert).
- **Registrierung:** die KB stand in **keinem** Hub-Register — nur in der eigenen
  `KORPUS-QUEUE.md` des Skills `wissens-destillat`. In `CLAUDE.md` nachgetragen. Eine
  `rollen-map.tsv`-Zeile ist **nicht** faellig: das Register fuehrt Skills, Tasks und Loops, und
  fuer diese KB laeuft kein eigener Loop; `WISSEN-CLAUDE.md` ist Meta-Schema und fuehrt keine
  KB-Liste — beides gepruefte Nullbefunde, keine Luecke.
- **Status:** erledigt; Fuehrungszeile in der Matrix gesetzt.

### normen ↔ baurecht (Delta 24 h, 432 Aenderungen) — geprueft 2026-08-24 (Run 41)

- **SIA 500 C3:2013 — Bring-Schuld eingeloest und Praemisse widerlegt.**
  `baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md` Z. 212-216 fuehrte das Korrigendum als
  «dauerhaft offenen Punkt, weil SIA-Normen kostenpflichtig sind». `normen/destillate/sia-500-2009.md`
  Z. 48 traegt es laengst, mit Zitierverbot fuer den Basiswert. **Korrigenda sind Preisgruppe 0 und
  frei beziehbar** — die Kostenpflicht-Praemisse traegt fuer die Vollnorm, nicht fuer das Korrigendum.
  Erledigt-Vermerk gesetzt, alter Stand als datierter Stand belassen.
- **EI30 ohne Norm-Kante** in `baurecht/wiki/bestandsumbau-eingriffstiefe.md` Z. 38-39 (Artikel vom
  23.08.2026): materielle VKF-Klassenangabe statt Norm-Nennung mit Verweis. Kante gesetzt.
- **VSS SN 640 273a fehlt im Hub.** Der neue SZ-Artikel
  `strassenabstand-zufahrten-vorteilsabgabe-sz.md` Z. 38-42 gibt Sichtweiten-Kennwerte materiell
  wieder und schreibt sie einer Norm zu, die `normen` **gar nicht fuehrt** (einzige Fundstelle im
  Bestand: eine Literaturangabe der Vorgaengernorm SN 640 273). Vorbehalt dort gesetzt
  («Behoerdenwiedergabe, nicht VSS-Fundstelle»), Bring-Schuld **N41-1** in
  `normen/wiki/QUESTIONS.md` eingetragen, Verweis auf das vorhandene `vss-640050-1993`.
- **Status:** alle drei erledigt bzw. als Bring-Schuld gefuehrt.

### bauprodukte ↔ normen (Uebergabe-Punkt 1 aus Run 40) — geprueft 2026-08-24 (Run 41), ERLEDIGT

Run 40 hatte die Kante bewusst zurueckgestellt, weil die Nachfolge der zurueckgezogenen
VKF-Erlaeuterung **BRL 103-15 «Cheminées»** unbekannt war (Ticket `N58-2`). **`normen` hat sie am
23.08.2026 geschlossen:** Nachfolger ist das **feusuisse-Papier «Stand der Technik Teil B»**,
ausdruecklich **nicht** die BRL 24-15. Die Bedingung ist entfallen, die Kante ist gesetzt — in
`bauprodukte/wiki/cheminee-aufbau-hafnerarbeiten.md` (Fassungs- und Norm-Kante) und in
`planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §5ai, dessen Warnkasten vom 20.08.2026
noch auf die BRL 24-15 verwies. **Bemerkenswert:** die Zurueckstellung war richtig — der Verweis
haette dem Leser vier Tage lang nichts genuetzt und waere zudem auf die falsche Nachfolgenorm gelaufen.

### planungsgrundlagen ↔ normen (Brandschutz-Wegweiser, Fortsetzung des Sweeps) — geprueft 2026-08-24 (Run 41)

Fortsetzung von Uebergabe-Punkt 2 aus Run 40. Ein weiterer Fassungsbefund im 2'200-Zeilen-Artikel:
**§5ae Schulbauten (AH 1002-15)** gibt die 2'400-m²-Reduktionsklausel im Stand 01.01.2015 ohne
Fassungshinweis; das Delta-Destillat `vkf-ah-1002-15-fassung-2017-delta.md` praezisiert sie
materiell (nur Geschosse ueber Terrain). Vorbehalt gesetzt — **ohne Zahlenuebernahme**, weil das
Delta `status: speculative` traegt (Rule `normen-referenz` Ziff. 1b). Der Sweep ist damit **nicht
abgeschlossen**; geprueft sind bisher drei Stellen von rund 2'200 Zeilen.

### normen ↔ planungsgrundlagen (VKF-Fassungs-Sweep Run 58/59) — der Wegweiser fuehrt zwei ueberholte Staende — geprueft 2026-08-22 (Run 40)

**Status:** zwei Befunde bestaetigt und mit Fassungs-Vorbehalt versehen; Zahlen bewusst NICHT
uebernommen (beide Delta-Destillate tragen `status: speculative`).

- **BSE 108-15, Pruefintervalle der integralen Tests.** `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md`
  §5ag (angelegt Run 42, 14.07.2026, Artikel `established`) gibt die Fassung 01.01.2015 wortgleich als
  geltend wieder: «Intervall durch die Brandschutzbehoerde festgelegt». Nach
  `normen/destillate/vkf-brl-108-15-fassung-2020-delta.md` (Run 59, 22.08.2026) ist genau diese
  Ermessensregel durch ein **kodifiziertes Mindestraster nach Risikogruppe** ersetzt. Fassungs-Vorbehalt
  gesetzt; die Zahlen bleiben draussen, bis das Delta `established` ist (Rule `normen-referenz` Ziff. 1b).
- **BRL 10-15, Gesamthoehe am Flachdach.** Derselbe Artikel fuehrt den Wechsel des Messpunkts
  (Dachrand → Dachflaeche ueber dem tiefstgelegenen Terrain) in der Aufzaehlung «durchgaengig
  **redaktionelle** Praezisierungen» und schliesst mit «kein Korrekturbedarf an bestehenden Tabellen».
  `normen/destillate/vkf-brl-10-15-fassung-2019-delta.md` nennt dieselbe Aenderung «die folgenreichste
  Einzelaenderung dieses Glossars», weil sie die Zuordnung zu geringer/mittlerer Hoehe/Hochhaus
  verschieben kann. **Aufloesung (Hauptkontext-Gegenprobe):** beide Seiten haben in ihrem Sinn recht —
  die **Tabellenwerte** aendern sich nicht, wohl aber die **Groesse, die in sie eingesetzt wird**;
  §4 desselben Artikels (Z. 486-488) knuepft die reduzierten Brandschutzabstaende genau an die
  Schwellen 11 m / 30 m. Der pauschale Satz ist eingegrenzt, die Kante gesetzt, die §4-Schwellen
  unangetastet.
- **Nachzug protokolliert** in `planungsgrundlagen/wiki/QUESTIONS.md`, damit die Uebergabe nicht
  allein im Laufbericht steht (Rule `auto-verbesserungen` 260805).

### energie ↔ planungsgrundlagen (PV-Module und Sunskin) — dieselbe Quelle zweimal destilliert, ohne Kante — geprueft 2026-08-22 (Run 40)

**Status:** zwei Doppelspurigkeiten bestaetigt, beidseitig verdrahtet; keine Zahlenaenderung.

Dritter und vierter Fundort desselben Musters wie die AHB-Zeile aus Run 34: **zwei KBs destillieren
unabhaengig dieselbe Primaerquelle und wissen nichts voneinander.**
- **SI-Saphir M175-M180 + Megasol M385-HC120-b:** `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md`
  Z. 51/53 seit 13./14.07.2026 als Typenzeilen, `energie/destillate/pv-spezialmodule-transparent-bifazial-datenblaetter.md`
  am 21.08.2026 (Run 149) nochmals vollstaendig aus denselben Datenblaettern. Zahlen deckungsgleich.
- **Eternit «Sunskin roof», Rev. 01.2022/web:** `energie/destillate/sunskin-roof-indach-planung.md`
  (19.06.2026, am 21.08. um S. 17 erweitert) und `planungsgrundlagen/…/energie-pv-eignung-typenwahl.md`
  §1c (14.07.2026, `established`). Dieselben Eckwerte 10-60°, 2'000 m, 60 mm.
- **Kantenform:** ueber KB-Grenzen hinweg **Vollpfad im Querbezug-Block**, nicht `[[kurzform]]` — die
  Kurzform loest innerhalb der eigenen KB auf und haette einen toten Backlink erzeugt (Refuter-Befund).
- Fuehrung unveraendert: PV-Technologie bei `energie`, Typenvergleich/Beschaffung bei `planungsgrundlagen`.

### bauprodukte ↔ normen (Rotationspaar, seit Run 34 nicht mehr an der Reihe) — geprueft 2026-08-22 (Run 40)

**Status:** ein Befund bestaetigt und korrigiert, einer als weich stehen gelassen.

- **BKP 261 Aufzuege.** `bauprodukte/wiki/bkp-261-aufzuege.md` Z. 163 fuehrte seit dem 31.07.2026
  «**Fassungsfrage geklärt**» zur VKF-BRL 23-15. Der Fassungs-Sweep der KB `normen` (Run 58,
  20.08.2026 — also **nach** dem letzten bauprodukte-Update) hat das zugrunde liegende Destillat auf
  `status: superseded` herabgestuft, mit ausdruecklichem «Nicht als geltende Fundstelle zitieren»
  (geltend ist 01.01.2017, Delta nicht destilliert, offener Posten N58-1). Fassungsvorbehalt gesetzt;
  der Befund vom 31.07. bleibt als datierter Stand stehen, statt geloescht zu werden.
- **Praezisierung des Refuters:** zu korrigieren war der **eigene Fassungsvermerk**, nicht das Wort
  «geklaert» — dieses steht identisch in der fuehrenden KB und waere dort mitzukorrigieren.
- **Weich, nicht gesetzt:** `bauprodukte/wiki/cheminee-aufbau-hafnerarbeiten.md` verweist mehrfach auf
  die «VKF-Zulassung» des Kamins ohne Kante zu `normen`, wo die einschlaegige Erlaeuterung BRL 103-15
  seit dem 31.08.2025 als **zurueckgezogen** gefuehrt wird (Nachfolgeregelung offen, N58-2). Nicht
  gesetzt, weil die Nachfolgeregelung selbst unbekannt ist — ein Verweis auf eine zurueckgezogene
  Erlaeuterung ohne Nachfolger nuetzt dem Leser wenig. **Uebergabe an Run 41.**

### rules ↔ twin (Treffen-/Kanalwechsel-Klausel) — die Klausel hat seit dem 22.08. einen Gegenbeleg — geprueft 2026-08-22 (Run 40, Hauptkontext)

**Status:** bestaetigt und annotiert; Entscheid Raphael bleibt offen (**E1b**).

Strukturgleich zur Nivellier-Klausel aus Run 39, nur eine Klausel weiter unten in derselben Rule.
`rules/anrede-kontakte.md` traegt seit dem 21.08.2026 die Klausel «ein persoenliches Treffen kann das
Register heben», belegt an zwei Faellen (Eren 20.08., Hiltmann 18.08.). Der Fidelity-Review vom
22.08.2026 (`wissen/twin/wiki/QUESTIONS.md` 260822b #1) liefert einen **Gegenbeleg**: Othmar Stadelmann
bleibt am 22.07.2026 nach einem Telefonat bei «Geschaetzter Herr Stadelmann», und der Review fuehrt auf
diese Klausel **einen von drei Anrede-Fehlgriffen** zurueck.

**Was die eigene Gegenprobe korrigiert hat:** die naheliegende Erklaerung «Fachplaner gegen Unternehmer»
traegt **nicht** — `wissen/twin/wiki/beziehungsregister.md` Z. 1248 fuehrt Stadelmann selbst als
«Brandschutz-Fachperson». Die Belege trennen vielmehr zwei Bewegungen, welche die Klausel zusammenfasst:
ein persoenlicher Kontakt hebt die **Waermestufe innerhalb** eines Registers (Stadelmann 18.05.2026,
kalt → «Geschaetzter Herr»), erzwingt aber **keinen Wechsel Sie → Du**. Gegenbeleg additiv vermerkt,
Wortlaut der Klausel unangetastet.

### rules ↔ twin (Nivellier-Klausel und «werter»-Datierung) — die Rule weist gegen den eigenen Korpus an — geprueft 2026-08-21 (Run 39)

**Status:** ein Befund bestaetigt und annotiert (Entscheid Raphael offen, **E1**), einer bestaetigt und
berichtigt, ein Quellenvermerk ergaenzt.

`rules/anrede-kontakte.md` Z. 14 verlangt seit dem 25.07.2026, bei mehreren Empfaengern auf die
hoeflichste Stufe zu nivellieren. `wissen/twin/wiki/beziehungsregister.md` belegt **sechsmal** das
Gegenteil (Batches 94, 95, 96, 97/98, 100): Raphael redet jede Person einzeln in ihrer eigenen Stufe
an, bis zu drei Waermestufen ohne Angleichung, teils in derselben Anredezeile. Zuletzt 20.08.2026
22:40, Sammelmail an acht Empfaenger.

**Warum das schwerer wiegt als ein Wiki-Widerspruch:** die Rule wird per `@`-Import in **jede** Session
geladen und laut eigener Konvention **vor** dem Wiki gelesen. Der Zwilling nivelliert also bei jeder
Sammelmail, waehrend der Korpus staffelt. Die twin-KB fragt seit dem 15.08.2026 nach dem Entscheid
(`QUESTIONS.md` 260815 #4, 260816 #1) — sechs Tage.

**Gesetzt:** Vermerk unter Z. 14 (Zeile gilt bis zum Entscheid als Hinweis, nicht als Regel, mit allen
sechs Belegen). **Nicht gesetzt:** der neue Wortlaut — Claude aendert eine Rule nicht selbst. Der
Refuter hat zusaetzlich praezisiert, dass die Zeile **zu grob, nicht schlicht falsch** ist: der
Wiki-Vorschlag behaelt das Nivellieren «bei grossen oder unbekannten Verteilern» bei.

**Zweiter Befund, berichtigt:** Z. 56 fuehrte «werter Herr Suljanovic» als «erster Beleg der Stufe
«werter» im Sie-Register» — das twin-Wiki hatte diese Datierung im **selben** Batch-100-Update bereits
zurueckgenommen. Der Refuter hat dabei eine zweite Falle abgefangen: die vorgeschlagene Ersatzzahl
«Erstbeleg 14.07.2026» waere wieder falsch gewesen (nur der aelteste zufaellig im Blick stehende
Beleg). Zeile jetzt **belegneutral**, ohne neue Datumsbehauptung. **Lehre: eine Datumskorrektur, die
ein neues Datum behauptet, ist selbst wieder eine Behauptung.**

**Dritter Punkt:** die Batch-100-Nachtraege (Guerini, Suljanovic, Eren, Treffen-Klausel) trugen keinen
Quellenverweis, anders als die Batch-99-Zeilen darueber. Belegkante ergaenzt.

---

### energie ↔ planungsgrundlagen (Laeufe 148/149) — ein Zuercher Gesetz in der Bundeserlass-Tabelle — geprueft 2026-08-21 (Run 39)

**Status:** ein harter Befund bestaetigt und korrigiert, zwei Doppelspurigkeiten beidseitig verbunden,
eine Rueckkante nachgezogen.

**Hart:** `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 68 fuehrte die Datei
`730.1_19.6.83_*` unter «Bundeserlasse — SR-Nummer → fedlex» als «Energie-Verordnung, historische
Fassung 1983», Nachfolger «EnV SR 730.01 = cc/2017/763». Es ist das **Energiegesetz (EnerG) des
Kantons Zuerich vom 19.06.1983, LS 730.1** — kein Bundeserlass. Belegt am Primaertext im
energie-Destillat `energ-zh-nachtrag72-2011-historisch.md` Z. 2-3 (8 S. vollstaendig gelesen, Run 148
desselben Tages). Erhaertend: der Energieartikel der Bundesverfassung stammt von 1990.
**Korrigiert statt geloescht** — zwei der vier Exemplare liegen tatsaechlich in `01_Gesetze/01_Bund`;
diese Fehlablage ist die Ursache und steht jetzt als Warnung in der Zeile.

**Bemerkenswert an der Richtung:** die zuliefernde KB hat die fuehrende korrigiert, und zwar mit einem
Destillat, das als **historisch/superseded** angelegt ist. Ein Destillat ohne eigenen Anwendungswert
hat hier einen Fehler in einer aktiven Wegweiser-Datei aufgeloest.

**Zwei Doppelspurigkeiten vom selben Tag, beide beidseitig verbunden:**
- SolarReport MFH Basel (05.11.2022) — `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl` Z. 211
  (seit 25.07.) gegen `energie/destillate/solarreport-solarapp-basel-2022.md` (neu 21.08.).
  Rollenteilung: `energie` fuehrt die Detailauswertung samt drei Inkonsistenzen **im Quelldokument
  selbst**, `planungsgrundlagen` die Zeile im Typenvergleich.
- Fallstudie «Maison Climat» Biel — beide KBs fuehren das Projekt eigenstaendig, mit **abweichender
  Adresse** (Seelandweg 15 gegen 17). Jetzt einmal statt zweimal offen, Raphael vorgelegt (**E3**).

**Rueckkante:** `energie/wiki/energienachweis-zh.md` (neu, Run 148) hatte die Hinkante zu
`planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` selbst gesetzt; die Rueckrichtung
fehlte. Gesetzt, mit Rollenteilung: `energie` fuehrt die materiellen Nachweiswege und den Rechenweg,
`planungsgrundlagen` die Formular-/EVEN-Bedienung.

---

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung — ein Widerspruch INNERHALB einer Datei, mit Geldfolge — geprueft 2026-08-21 (Run 39)

**Status:** ein harter Befund bestaetigt und berichtigt, eine Bezugsgroessen-Kante gesetzt.

`skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` setzte am
31.07.2026 (Run 22) die exakten Quantile ein und erklaerte die frueheren Naeherungswerte
«+11 % / +38 %» in einer Fussnote **ausdruecklich fuer ueberholt**. Belegt sind seither: Aufpreis
Holzbau gegen den Massivbau-Median 4'492 = **+10.9 % unteres / +21.7 % gesamt / +44.8 % oberes
Preissegment**. Zeile 94 **derselben Datei** fuehrte drei Wochen weiter «Massivbau + 10–15 %»,
`SKILL.md` Z. 108 «Holz +10–20 %».

**Der Refuter hat den Eingriff erst sauber gemacht.** Der naheliegende Schluss — der Richtwert
5'400 CHF/m² HNF sei zu tief — ist falsch: 5'400 ist der gerundete **Holzbau-Median 5'466** aus
Abschnitt 3 und damit korrekt. Falsch war allein das Prozent-Etikett daneben, das rechnerisch auf der
ueberholten Zahl sass. Beide Stellen tragen jetzt die belegten Quantile, der Richtwert blieb
unberuehrt. **Lehre: eine Zahl, die neben einer falschen Herleitung steht, ist nicht automatisch
selbst falsch — sonst korrigiert man einen gesunden Wert kaputt.**

**Kante gesetzt:** `kostenschaetzung/SKILL.md` fuehrt fuer Healthcare nur CHF/m² NF (Wueest) und nannte
die fuehrende Quelle fuer **CHF/m³ GV** und **CHF je Pflegeplatz** nicht.
`immobilienbewertung/wiki/realwert-sachwert.md` benennt die Rollenteilung seit Run 16 korrekt, aber nur
von seiner Seite. Hinkante ergaenzt, samt Warnung: **826-1'420** ist das Gesamtband der acht Objekte,
**1'053-1'420** gilt nur fuer die sechs Neubauten ab 2019.

---

### wettbewerbs-dna ↔ entwurfs-referenzen ↔ skills/wettbewerb (Rotationspaar) — der Harness kannte die eigene Erfahrung nicht — geprueft 2026-08-21 (Run 39)

**Status:** bestaetigt und verdrahtet, eingegrenzt gegenueber der Meldung.

`wissen/wettbewerbs-dna/CLAUDE.md` erklaert sich woertlich zur Wissensgrundlage des Skills
`wettbewerb` («Sie speist den Skill `wettbewerb` (Agenten programm-leser, programm-pruefer,
bericht-autor)»). `skills/wettbewerb/SKILL.md` — 183 Zeilen, mit ausdruecklichen Abschnitten
«Vorgelagert» und «Nachgelagert» — nannte **keine** der Entwurfs-KBs. Zwoelf ausgewertete Teilnahmen,
darunter die beiden zweiten Plaetze als Goldstandard, standen dem Harness formal nicht zur Verfuegung.

**Eingegrenzt durch den Refuter:** `architekten-synobsis` gehoert nicht dazu — die KB deklariert sich
nirgends als Grundlage dieses Skills (null Treffer auf «wettbewerb» in ihrer CLAUDE.md). Verdrahtet
wurden deshalb nur `wettbewerbs-dna` und `entwurfs-referenzen`, im Contract und als Lesepflicht vor
dem Human Gate «Parti setzen».

**Damit ist das Rotationspaar erstmals mit einem Ergebnis abgeschlossen** — Run 35 hatte es als «nur
teilweise pruefbar» zurueckgestellt.

---

### normen (Meldekopf «FRISCH GEMELDET») — Uebergabe-Auftrag 1 aus Run 38: WIDERLEGT als Testfrage — geprueft 2026-08-21 (Run 39)

**Status:** kein Befund. Die Messung ist gefahren, das Testkriterium taugt nicht.

Doppelt gemessen (Melder und Hauptkontext unabhaengig): **keines** der zehn am 21.08. neu
geschriebenen `energie`-Destillate beruehrt eine der sechs im Meldekopf gefuehrten Normen; kein Lauf
nennt das REGISTER als gelesene Quelle.

**Der Refuter hat den daraus gebauten Befund zurueckgewiesen, mit dem entscheidenden Argument:
der Meldekopf verlangt LESEN, nicht ZITIEREN — ein trefferloser Lesevorgang hinterlaesst keine Spur.**
Wirksamkeit ueber Erwaehnungsspuren zu messen, misst das Falsche.

**Folge fuer die Methode:** die Wirksamkeit des Meldekopfs ist **strukturell nur negativ messbar** —
sichtbar wird allein der Verstoss, nie die Befolgung. Rule `auto-verbesserungen` 260807 («erst messen,
dann glauben») laesst sich hier mit dem Run-38-Kriterium nicht einloesen. Ein belastbarer Nachweis
braeuchte eine Pflichtzeile «REGISTER gelesen, Stand <Datum>» im Laufbericht jeder destillierenden
Task — rund ein Dutzend Task-Prompts, kein Alleingang dieses Loops (**E5**).

---

### Zwei fortgeschriebene offene Punkte, die es nicht mehr waren — gemessen 2026-08-21 (Run 39)

Beim Nachmessen der Uebergabe aus Run 38:

- **Levi Hiltmann** wurde als «steht weiterhin nur im Fliesstext, nicht als Tabellenzeile» gefuehrt.
  Er steht seit dem **17.08.2026** als Tabellenzeile in `rules/anrede-kontakte.md` Z. 49.
- **E1 Blitzschutz-Doppeldestillat** las sich als offene Doppelspurigkeit mit invertierten Rollen.
  Beide Seiten sind laengst verbunden: `normen` fuehrt seit dem 05.08. ein Feld `nachfolge_ausgabe:`
  auf die energie-Datei, `energie` traegt umgekehrt eine ausdrueckliche Rollenteilung (Z. 97-98,
  237-239). Offen ist allein die Merge-Frage.

**Lehre, ab Run 40 verbindlich fuer diesen Loop:** eine Liste offener Punkte ist eine Behauptung ueber
den **heutigen** Zustand und faellt damit unter dieselbe Regel wie jede andere Zustandsbehauptung
(`auto-verbesserungen` 260730b Ziff. 3). Jeder fortgeschriebene Punkt wird vor dem Fortschreiben am
Original geprueft. Zwei von sieben waren heute ueberholt — das ist keine Ausnahmequote.

---


### normen → planungsgrundlagen · energie · Skills-Schicht (VKF-Fassungs-Sweep Run 58) — geprueft 2026-08-20 (Run 38)

**Anlass.** Normen-Nacht Run 58 (20.08.2026, 01:41) glich erstmals alle 35 destillierten
VKF-Publikationen gegen den amtlichen Publikationsindex ab: **23 Destillate beruhten auf einer
ueberholten Fassung** (jetzt `superseded`), **BRL 103-15 «Cheminées» ist am 31.08.2025
zurueckgezogen**, und die **Teilrevision 2026** (BRL 12-15/26-15, in Kraft seit 01.04.2026) war
der KB unbekannt. Die KB `normen` fuehrte ausdruecklich nur ihr eigenes Register nach. Fassungs-
matrix als Wahrheitsquelle: `wissen/normen/training/n58-vkf-fassungsmatrix-260820.md`.

**Reichweite, deterministisch im Hauptkontext gemessen (vor dem Fan-out).** VKF-Nennungen
ausserhalb `wissen/normen`: `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` **48** (der
mit Abstand groesste Abnehmer), `energie` 5 eigene VKF-Destillate, `baurecht` 2 Dateien,
`bauprodukte` 1, Skills-Schicht 42 Dateien (weites Muster) bzw. 28 (enges Muster).

**Befund 1 — `planungsgrundlagen` §5ai: die Fachgrundlage existiert nicht mehr. BESTAETIGT.**
Der Abschnitt wertete die VKF-Erlaeuterung 103-15 als aktive Grundlage aus und leitete daraus
einen Praxis-Transfer fuer `ankaufspruefung`/`machbarkeit` ab. Er wurde am **14.07.2026** verfasst
— **elf Monate nach dem Rueckzug** vom 31.08.2025. Rueckzugs-Warnkasten gesetzt; der
0.8-m-Erfahrungswert bleibt brauchbar, ist aber keine zitierfaehige Fundstelle mehr.

**Befund 2 — `planungsgrundlagen` §5r: eine Kennzahl, die es seit neun Jahren nicht mehr gibt.
BESTAETIGT, vom Hauptkontext auf hart hochgestuft.** Der Melder stufte den Punkt als weich ein
(«Kernzahlen im Sweep nicht als veraendert vermerkt»). Die Gegenprobe am 2017er-Aenderungsdelta
zeigt das Gegenteil: die Teilrevision ersetzt in Ziff. 3.2.2 «Sicherheitsbeleuchtung … spaetestens
**nach 15 Sekunden**» durch «entsprechend **dem Stand der Technik**». Der Wegweiser fuehrte die
**15 Sekunden** als geltende Kernzahl — eine Zahl, die so in ein Vorprojekt gewandert waere.
**Es gibt keine feste Zahl mehr zu zitieren.** 30 Minuten und 1 Lux stehen nicht in der
Aenderungsliste und bleiben.

**Befund 3 — `normen` ↔ `energie`, BRL 26-15: nicht unbekannt, sondern unverbunden. BESTAETIGT.**
Run 58 meldete die Teilrevision 2026 als «der KB voellig unbekannt». Dieselbe Publikation
(**identische Dokumentnummer `BSPUB-1394520214-125`**) lag seit dem **25.07.2026** in
`energie/destillate/vkf-richtlinie-gefaehrliche-stoffe.md` mit der Ausgabe 01.04.2026 und dem
Vermerk «IOTH 06.03.2026». **Die Information war 26 Tage im Haus.** Beidseitige Kante gesetzt,
Rollenteilung benannt (`normen` = Fundstelle/Fassung, `energie` = Anwendung Ziff. 3.5.3).

**Befund 4 — `energie`: das richtige Muster auf die falsche Norm uebertragen. BESTAETIGT.**
Das am selben Tag um 05:36 angelegte `pflanzen-am-bau-projektierungsgrundlagen-zh.md` behauptete
an vier Stellen, **SIA 271:2007 sei «laut KB `normen`» zurueckgezogen** und die Nachfolgenorm
ungeklaert. Die fuehrende KB sagt an beiden massgeblichen Stellen das Gegenteil
(`sia-271-2007.md` `status: established`; REGISTER Z. 223/595). Zurueckgezogen ist allein die
**Teilnorm SIA 271/2:1994**, deren Nachfolge **SIA 312:2013** seit dem 29.07.2026 destilliert
vorliegt. Auch der Ticketbezug war falsch: `N57-2` betrifft SIA 416/1. **Herkunft belegt:** das
Fassungsvermerk-Muster, das Run 37 am 19.08. korrekt zu SIA 416/1 in vier energie-Dateien setzte.
Damit ist dieser Loop selbst die Quelle des Irrtums — die naechste Runde muss ein gesetztes
Muster gegen die Norm pruefen, an die es weitergereicht wird.

**Befund 5 — `energie/wiki/dachbegruenung-gruendach.md`: die eigene KB wusste es besser.
BESTAETIGT, vom Refuter praezisiert.** Der Artikel bezeichnet sich als fuehrend fuer
Substrat-/Qualitaetsstandard, nannte aber **kein einziges Mal SIA 312:2013** und stuetzte die
Kennwerte auf die Gruendachrichtlinie SFG von 2009. Dieselbe KB hatte am 04.08.2026 belegt, dass
das Feld normativ neu besetzt und die SFG-Richtlinie dort **nur noch Pruefverfahren** ist. Der
Melder zielte auf den Abschnitt «Konstruktive Anforderungen» — **dort haette der Eingriff
geschadet**: die Zeile zum Gefaelle < 1,5 % ist quellentreu und richtig, SIA 312 kennt kein
Mindestgefaelle. Korrigiert wurde stattdessen die Referenzzeile des Mindeststandards.

**Zwei Meldungen WIDERLEGT — beide haetten gesunde Dateien getroffen.**
- `skills/brandschutz/SKILL.md` Z. 222-231 (QSS-Tabelle BSR 11-15 Ziff. 3.3.1 angeblich durch die
  Fassung 2019 ueberholt): die Aenderungsliste 2019 nennt ausschliesslich Ziff. 4.1.1/4.1.3-4.1.7
  und Anhang-Positionen — **Ziff. 3.3 ist nicht darunter**, die Tabelle ist wortgleich. Der Skill
  trug den Fassungsvorbehalt zudem bereits seit 17:23 desselben Tages (SYN-37).
- `bauprodukte/wiki/bkp-261-aufzuege.md` Z. 161-164 («BRL 23-15 in Kraft seit 01.01.2015»):
  quellentreu und **anderer Perimeter** — «in Kraft seit» bezeichnet das Inkrafttreten der
  Richtlinie, nicht ihre Ausgabe. Das Destillat selbst fuehrt diesen Satz als Norm-Aussage.

**Status.** `planungsgrundlagen` §5ai/§5r/§5l/§5q/§5f nachgefuehrt · `energie` 3 Dateien ·
`normen` BRL 26-15 verlinkt + Meldekopf im REGISTER · `bauprodukte`, `baurecht`, Skills-Schicht
unveraendert (kein bestaetigter Befund). **Offen:** BRL 22-15 Doppelspurigkeit (siehe unten),
Fassungs-Deltas der 23 Destillate (`N58-1`), Nachfolge der BRL 103-15 (`N58-2`).

---

### normen ↔ energie (BRL 22-15 Blitzschutz) — Doppelspurigkeit gemessen, Fuehrung ungeklaert — geprueft 2026-08-20 (Run 38)

**Gemessen, nicht entschieden** (weich, nicht adversarial geprueft — die Refuter-Stufe war auf die
zwei haertesten Befunde je Melder begrenzt).

Beide KBs fuehren ein **volles Fundstellen-Destillat derselben VKF-Richtlinie 22-15
«Blitzschutzsysteme»**: `normen/destillate/vkf-brl-22-15-blitzschutzsysteme.md` und
`energie/destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`. Nach der Rollen-Matrix fuehrt
`normen` die Fundstelle.

**Die Auffaelligkeit: die Rollen sind invertiert.** Das energie-Destillat fuehrt im Frontmatter die
**geltende Fassung 01.01.2017** (nebst GVZ-Weisung 20.06 und GVB-Merkblatt 09/2024), waehrend das
normen-Destillat in der Fassungsmatrix als **(FM)** gefuehrt wird — Frontmatter veraltet, geltende
Fassung nur im Fliesstext. Die zuliefernde KB ist an der Fundstelle also genauer als die fuehrende.

**Kein Eingriff in diesem Lauf.** Ein Merge oder eine Umwidmung ist destruktiv und braucht nach
Rule `wissens-bibliothekar` Raphaels Freigabe; ausserdem ist ungeprueft, ob die beiden Destillate
inhaltlich auseinanderlaufen oder nur unterschiedlich tief sind. Gehoert zusammen mit dem seit
Run 26 parkierten Duplikat-Merge der Solaranlagen-Destillate (`vkf-brm-2001-15` /
`vkf-merkblatt-2001-15`) entschieden.

---

### skills ↔ normen (SIA 102 Honorarmethode) — eine Norm-Fundstelle, die es nicht gibt, in einem Erzeugnis mit Geldfolge — geprueft 2026-08-18 (Run 36)

**Befund M1-1, BESTAETIGT nach sechs Widerlegungsversuchen.**
`skills/honorarberechnung-sia102/SKILL.md` fuehrte eine Phasenanteils-Tabelle unter der
Ueberschrift «SIA 102:2020 — Phasenanteile Grundleistungen» mit der Quellenzeile «SIA 102:2020,
Anhang A». **Beides existiert nicht.** SIA 102:2020 endet mit Art. 6; ein Art. 7 und eine
Anhang-A-Prozenttabelle gibt es in dieser Ausgabe nicht (fuenffach belegt in `wissen/normen`,
Original S. 1-41 vollstaendig gelesen, Kernbefund in vier unabhaengigen Runden gegengeprueft).
«Anhang A» ist zudem in **keiner** Ausgabe der Beleg-Ort — die 2014er-Werte stehen in Art. 7.7.

**Die Warnung lag seit dem 14.07.2026 vor und war namentlich adressiert.** Das Destillat
`sia-102-2020.md` sagt im Abschnitt «JANS-Praxis-Transfer» woertlich: «Skill
`honorarberechnung-sia102` … **Achtung:** keine Baukosten-%-Tabelle in SIA 102:2020 — die
Skill-eigene Phasenanteils-Tabelle muss gegen eine andere/aeltere Quelle verifiziert oder als
buerointerne Konvention ausgewiesen werden.» Sie wurde nie in den Skill uebertragen. **Das ist
die Figur aus Run 35, eine Schicht tiefer:** dort wusste die zuliefernde KB Bescheid und die
fuehrende blieb falsch; hier weiss die fuehrende KB Bescheid und der **anwendende Skill** blieb
falsch. Verschaerfend: Wissens-Chef Run 35 hat genau diese Datei am 17.08. angefasst (Pruefschritt
aus einer projekt-lessons-Lehre) und die Fundstelle nicht bemerkt — wer einen Baustein anfasst,
prueft nicht automatisch, was er behauptet.

**Warum es zaehlt:** Der Skill formuliert Honorarofferten an Bauherrschaften, und der
Mail-Baustein trug den Satz «Honorarofferte fuer <Phasen> (gestuetzt auf SIA 102:2020)» direkt
ueber einer Rechnung nach aufwandbestimmender Bausumme und Schwierigkeitsgrad. Eine Offerte, die
so argumentiert, behauptet eine normative Deckung, die es nicht gibt — angreifbar im Streitfall.

**Ausgefuehrt (rein deklaratorisch, alle Zahlen unveraendert):** Ueberschrift und Quellenzeile
auf «buerointerne JANS-Konvention» berichtigt, mit der echten 2014er-Tabelle als Herleitung
danebengestellt; im Mail-Baustein «SIA 102:2020» durch den Platzhalter «SIA 102:<Ausgabe>» plus
Entscheidungshinweis ersetzt; an der Kategorien-Tabelle ein Vorbehalt zu den drei belegten
Abweichungen gesetzt.

**Bewusst NICHT ausgefuehrt (offener Fachentscheid Raphael, siehe Bericht):** die Prozentwerte
selbst (4/11/21/5/18/19/20/2 %) und die Kategorien-Skala. Sie sind Eigenkonvention, kein
Abschreibfehler — Methode 3 des Skills rechnet mit 41 % = 4+11+21+5 konsistent auf ihnen auf.
Sie mechanisch durch die Normwerte zu ersetzen waere ein Geschaeftsentscheid und genau der
Fehlertyp des BKP-271.10-Falls (ersetzen statt Sachbezug pruefen).

---

### planungsgrundlagen ↔ normen (Cluster `recht-norm-arbeitshilfen-planungsdetails`) — Uebergabe-Auftrag 1 aus Run 35 erledigt — geprueft 2026-08-18 (Run 36)

**Der Cluster ist gelesen und beschriftet.** Run 35 hatte 33 doppelt destillierte Quell-PDF und
36 unverdrahtete KB-Paare gemessen und diesen Artikel als schaerfsten Einzelfall benannt (drei
Doppel-Destillate, null Verweise). Ergebnis der Lesung: **fuenf der sieben Quellen** haben ein
Gegenstueck in `normen`, zwei sind echte Alleinstellungen (2h-Schatten AfB, Post-Briefkastenanlage).

**Statt sieben Einzelvermerken eine Landkarte am Artikelkopf** — der Melder hatte selbst
eingewandt, Einzelvermerke seien kleinteilig, und er hatte recht. Die Tabelle nennt je Quelle das
Gegenstueck und den Fuehrenden. Merksatz festgehalten: **die Doppelbewirtschaftung ist gewollt**
(beide KBs lesen dieselbe PDF mit verschiedener Absicht — `normen` die zitierfaehige Fundstelle,
`planungsgrundlagen` die baupraktische Einordnung); falsch waere nur, sie nicht aufzuschreiben.
Gegenkanten in den drei betroffenen `normen`-Destillaten gesetzt.

**Zwei inhaltliche Funde aus derselben Lesung**, die eine reine Verlinkungsuebung nicht ergeben
haette: (1) die Fluchtwegtuer-Ausnahme ≤ 30 m²/≤ 6 Personen stand als geltende VKF-Regel, ist
aber der Stand von 2003 — heute gilt VKF-BRL 16-15 Ziff. 2.5.5 mit max. 20 Personen ohne
Flaechenkriterium (Fassungsvorbehalt gesetzt); (2) die AUVA-Ausstattungsklassen-Matrix stand als
unqualifizierte Vorprojekt-Empfehlung, obwohl `normen` sie am 03.08. fuer die Schweiz als nicht
validiert eingestuft hatte (Vorbehalt nachgezogen).

**Nebenertrag zum Statusgefaelle:** Das PAV-E-01-Destillat in `normen` traegt `speculative`,
waehrend `planungsgrundlagen` dieselbe PDF vollstaendig gelesen und als `established` gefuehrt
hat — bei Zeile fuer Zeile identischen Kernwerten. Der Verifikationsvorsprung lag ungenutzt,
weil keine Seite von der anderen wusste. Im Destillat vermerkt.

---

### energie ↔ baurecht (§ 47a BBV I) — die fuehrende KB hat recht, der Buch-Layer haengt drei Jahre zurueck — geprueft 2026-08-18 (Run 36)

**Befund M5-1, BESTAETIGT.** Das Buch-Destillat `baurecht/buecher/band-2/17-…` fuehrte § 47a BBV I
als 80-%-Hoechstanteil nicht erneuerbarer Energien — die Fassung der 6. Aufl. 2019. Seit dem
**01.09.2022** traegt der Paragraph die Grenzwerttabelle des gewichteten Energiebedarfs, und fuer
Neubauten gilt zusaetzlich das **Fossilverbot** nach § 11 Abs. 1 EnerG. Der alte Stand ist damit
nicht bloss umnummeriert, sondern **materiell erledigt**: wer die 80 % als Toleranz verwendet,
rechnet mit einem Spielraum, den es nicht mehr gibt.

**Der Refuter fand fuenf Fundstellen statt der drei gemeldeten** — darunter den § 10a-EnerG-Absatz
im Heizungs-Abschnitt, also genau die Stelle, die beim Heizungsersatz zuerst gelesen wird.
Alle fuenf markiert; **Buchwortlaut und Seitenbelege bewusst stehen gelassen** (Schreibregel
Seitentreue: das Destillat dokumentiert, was das Buch sagt).

**Der Beinahe-Fehler, den die Refuter-Stufe verhindert hat:** In derselben Datei steht zwei
Zeilen weiter eine **andere** 80-%-Zahl (Systemnachweis nach SIA 380/1), die unberuehrt gueltig
ist. Ein globales Suchen-und-Ersetzen ueber «80 %» haette sie mitgerissen — Rule
`auto-verbesserungen` 260811 in Reinform.

**Kein Befund gegen die KB `energie`:** ihre §§ 10a/10c/11 EnerG und die § 47a-Tabelle stimmen
wortgetreu mit dem amtlichen Rohtext ueberein. Die von Buch-Run 74 gemeldete «Klammer-Falle
kommunaler Verweise» hat sich hier **nicht** wiederholt.

**Struktureller Rest, als offene Frage eingetragen** (`baurecht/wiki/QUESTIONS.md` T-09/T-10):
§ 47a fiel durch beide Prueframen (der eine endet bei § 46a, der andere erfasst nur §§ 37-40) —
zwischen ihnen liegt eine ungepruefte Zone. Und der Buch-Layer traegt keinen generellen
Fassungsstand-Hinweis, obwohl inzwischen **vier** tote Rechtsstaende einzeln nachgetragen wurden.

---

### Uebergabe-Auftrag 3 aus Run 35 (Dateinamen-Gegenprobe) — ABGESCHLOSSEN, kein weiterer Fall — geprueft 2026-08-18 (Run 36)

**Negativbefund mit Wert.** Gesucht wurde die Wiederholung der Figur aus Run 35: ein
`established`-Artikel, der eine **Norm-Ausgabe aus einem SharePoint-Dateinamen** statt aus dem
Dokumentkopf uebernimmt (Anlass: `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf` fusst auf
SIA 380/1:**2016**). Systematisch durchsucht wurden alle `wissen/*/wiki/` und
`wissen/*/destillate/` auf Artikel mit `status: established`, deren `quelle:`/`sources:` einen
Dateinamen mit eingebetteter Norm-Nummer und Jahreszahl traegt; je Treffer wurde die im
Fliesstext genannte Ausgabe gegen die im Dateinamen gehaltene geprueft.

**Ergebnis: kein weiterer Fall.** Die Figur war damit **kein systematisches Muster**, sondern
zweimal derselbe Quellordner. Der Punkt ist geschlossen und muss nicht weiter rotieren.

---

### normen → energie ↔ immobilienbewertung ↔ planungsgrundlagen ↔ baurecht (Rueckzug SIA 416/1:2007) — geprueft 2026-08-19 (Run 37)

**Der erste Fall im Register, in dem nicht ein Wert, sondern die GUELTIGKEIT einer ganzen Norm
propagiert werden musste.** Normen-Nacht Run 57 (19.08., 01:42) belegte an zwei Primaerquellen,
dass **SIA 416/1:2007 «Kennzahlen fuer die Gebaeudetechnik» seit dem 31.03.2015 zurueckgezogen**
ist (Ersatz SIA 380:2015, SN 504380:2015, **nicht im Haus** — Ticket `N57-2`). Die KB `normen`
fuehrte ihr eigenes Register nach und meldete die Fremd-KBs bewusst nur, ohne sie anzufassen.
Run 37 hat die Propagation gefahren.

- **Fuehrung:** unveraendert `normen` fuer Norm-Fundstellen **und neu ausdruecklich fuer den
  Gueltigkeitsstand**. Die abnehmenden KBs fuehren keinen eigenen Fassungsstand fort, sondern
  tragen einen datierten Fassungsvermerk mit Verweis auf die zwei Primaerquellen.
- **Nicht umgehaengt, nur vermerkt.** Solange SIA 380:2015 nicht im Haus liegt, ist eine
  Umhaengung der Fundstelle nicht belegbar. Ein Vermerk, der «heute gilt SIA 380:2015» behauptet
  haette, waere eine unbelegte Aussage gewesen.
- **Die entscheidende Trennlinie:** **SIA 416:2003 «Flaechen und Volumen von Gebaeuden» ist eine
  andere Norm und unberuehrt gueltig.** Sie wird im Hub breit verwendet (kostenschaetzung,
  kostenkontrolle, machbarkeit, immobilienbewertung, grobkosten-onepager, wettbewerb, drei
  Agenten). Jede Vermischung haette eine gueltige Norm entwertet — der Fehlertyp aus Rule
  `bkp-2017-referenz` («Sachbezug pruefen, nicht mechanisch ersetzen»). Ebenso unberuehrt: der
  **Entwurf 3/05** der SIA 416/1, ueber den AHB-Honorarvertrag der Stadt Zuerich bindend.
- **Reichweite gemessen:** 11 Stellen in vier KBs betroffen; **null** in `skills/`, `agents/`,
  `rules/`, `references/`. Von 15 geplanten Zielzeilen hielten nach adversarischer Pruefung 6
  voll, 2 nur als eingeschobene Klammer, 7 wurden ausgeschlossen.
- **Neuer Registerpunkt (offen):** Sobald SIA 380:2015 beschafft und destilliert ist, sind die
  11 Vermerke auf die Nachfolgenorm zu pruefen — **sachbezogen**, nicht mechanisch. Der Begriff
  Energiebezugsflaeche AE lebt in SIA 380:2015 weiter; ueberholt ist die Fundstelle, nicht
  zwingend die Abgrenzung.
- **Lehre fuers Register:** Eine KB kann den Gueltigkeitsstand einer Norm nachfuehren und dabei
  korrekt melden, dass Fremd-KBs betroffen sind — die Meldung allein bewegt nichts. Zwischen
  Run 57 (01:42) und Run 37 (23:15) hat `energie` im Lauf 143 (10:39) **neue** Zitate derselben
  zurueckgezogenen Norm geschrieben, ohne die neun Stunden alte Meldung zu kennen. Der
  Meldeweg von KB zu KB fuehrt ueber diesen Loop, nicht von selbst.

### normen ↔ planungsgrundlagen (SIA 416/1, EBF-Schwelle) — das neue Destillat bestaetigt die Run-35-Aufloesung — geprueft 2026-08-18 (Run 36)

**Gegenprobe bestanden.** Run 35 hatte den Streit «1,0 m gegen 1,5 m» so aufgeloest: SIA 416/1:2007
Ziff. 3.2.2 (Figur 16) nennt **1,0 m**, die abweichenden 1,5 m stammen aus der RFB-Richtlinie V7.0
der Stadt Zuerich auf Basis des **Entwurfs 3/05** und gelten je fuer sich; der Wert blieb
unveraendert, nur ein Fassungsvorbehalt kam dazu. Am 18.08. hat `normen` (Run 56) dasselbe
Destillat unabhaengig erweitert und am 300-dpi-Original nachgelesen — **der Wert 1,0 m steht
unveraendert**, kein Widerspruch zur Aufloesung.

**Ein Urteil aus einem frueheren Lauf, das eine unabhaengig nachgelesene Quelle spaeter
bestaetigt, ist der beste verfuegbare Beleg dafuer, dass die Refuter-Stufe traegt.**

**Kleiner Folgefehler behoben:** Der Verweis in `planungsgrundlagen` zeigte auf «Z. 232-233» des
Destillats; nach dessen Wachstum steht der Wert auf Z. 267. Auf **Ziffer/Figur statt Zeilennummer**
umgestellt — Ziffern sind stabil, Zeilennummern wandern bei jedem Zuwachs. Merkposten fuer
kuenftige Kanten: nie auf Zeilennummern eines wachsenden Destillats verweisen.

---

### Mehrfach-Destillation ueber KB-Grenzen — der ganze Korpus gemessen — Run 35 (17.08.2026)

**Der von Run 34 vorgeschlagene Schritt 1b, ausgefuehrt und dabei geschaerft.** Run 34 hatte
vorgeschlagen, die `quelle:`-Frontmatter auf gemeinsame **Quellordner-Praefixe** zu gruppieren. Das
war zu grob: die Ordner-Messung meldete `PL - 04 Energie` mit 14 zu 1 zugunsten von
`planungsgrundlagen` — alle 14 Treffer lagen in `outputs/` (Trainingsberichte), kein einziger im
Bestand. **Die tragfaehige Messung ist die auf Dateiebene, beschraenkt auf die dauerhafte Schicht**
(`wiki/`, `destillate/`, `buecher/` — nicht `outputs/`, nicht `training/`, nicht `raw/`).

So gemessen: **33 identische Quell-PDF werden von zwei oder mehr KBs unabhaengig destilliert.**
Daraus 38 KB-uebergreifende Paare, davon **2 beidseitig verdrahtet und 36 nicht**. Die Cluster:

| KB-Paar | unverdrahtete Doppel-Destillate |
|---|---|
| planungsgrundlagen ↔ normen | 18 |
| planungsgrundlagen ↔ energie | 11 |
| energie ↔ normen | 4 |
| immobilienbewertung ↔ normen | 2 |
| baurecht ↔ normen | 1 |

Vier `planungsgrundlagen`-Artikel tragen die Masse: `recht-norm-hindernisfreies-bauen-zh` (7),
`energie-heizwaermebedarf-waermeerzeugerleistung` (7), `recht-norm-sanitaerraeume-planungsgrundlagen`
(3) und `recht-norm-arbeitshilfen-planungsdetails` (3).

**Die notwendige Relativierung — sonst liest sich die Zahl schlimmer, als sie ist.** Gemessen wurde
die Kante auf **Dokumentebene** (nennt Artikel A das Destillat B beim Namen). Auf **KB-Ebene** sind
mehrere dieser Artikel sehr wohl verdrahtet: `energie-heizwaermebedarf-waermeerzeugerleistung` nennt
die KB `energie` zweimal ausdruecklich als fuehrend (Z. 169, 183), `recht-norm-sanitaerraeume-…`
nennt zwei `normen`-Destillate namentlich. Der scharfe Fall ist
`recht-norm-arbeitshilfen-planungsdetails`: **null** Verweise auf `wissen/normen` bei drei doppelt
destillierten Quellen. **Und, weiterhin gueltig aus Run 34: Doppelbewirtschaftung ist nicht per se
falsch.** Zwei KBs auf zwei Ebenen desselben Materials ist oft die richtige Arbeitsteilung. Falsch
ist nur, wenn sie niemand aufschreibt. **Die Messung findet die Stellen; ob dort ein Fehler liegt
oder eine unbeschriftete Arbeitsteilung, entscheidet weiterhin die Lektuere.**

**Status: gemessen, nicht abgearbeitet.** Run 35 hat zwei der Ordner beschriftet (AHB aus Run 34,
`01_Gesetze/02_Zuerich/Energie` neu, siehe naechster Eintrag) und die uebrigen 36 Paare bewusst
NICHT im Blindflug verlinkt — 36 Kanten in fremde Wikis zu setzen, ohne die Paare gelesen zu haben,
waere genau der Fehler, vor dem der Absatz oben warnt. Vorschlag fuer die naechsten Laeufe: **je
Lauf einen Cluster lesen und beschriften**, beginnend mit `recht-norm-arbeitshilfen-planungsdetails`
(null Kanten) und `recht-norm-hindernisfreies-bauen-zh` (7 Paare, ein Fach-Cluster).

### energie ↔ planungsgrundlagen (Quellordner `01_Gesetze/02_Zuerich/Energie`) — der zweite Ordner, diesmal ohne jede Beschriftung — geprueft 2026-08-17 (Run 35)

- **Befund (weich, bestaetigt):** Die vier am 17.08.2026 angelegten `energie`-Destillate
  `vollzugsordner-energie-zh-abschnitt1-2`, `waermedaemmvorschriften-zh-2022`,
  `waermedaemmvorschriften-zh-2009-historisch` und `vollzugshilfe-en10-heizungen-im-freien` stammen
  alle aus `PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Energie/`. `grep -rln` ueber
  `wissen/planungsgrundlagen/` nach diesen vier Dateinamen: **null Treffer.** Der pg-Artikel
  `recht-norm-quellenlandkarte` Z. 36 kennt den Ordner nur als Strukturzeile und hat ihn nie
  destilliert. **Dieselbe Figur wie beim AHB-Ordner in Run 34, aber in einem Ordner, den die
  dortige Fuehrungszeile ausdruecklich nicht abdeckt.**
- **Praezisierung zur Run-34-Zeile (wichtig, weil der Auftrag dieses Laufs es anders vermutete):**
  Von den fuenf heute geprueften Destillaten stammt nur **eines** wirklich aus dem AHB-Ordner
  (`raumtemperatur-richtlinie-stadt-zuerich-2006`) — und das ist beidseitig verdrahtet (pg §20 ↔
  Destillat), die Werte (16 °C, −10 °C, 06.00–20.00) stimmen ueberein. **Die Run-34-Fuehrungszeile
  haelt fuer das, was sie abdeckt.** Ebenfalls korrigiert: der pg-AHB-Artikel wurde am 17.08.
  entgegen der Annahme des Auftrags **nicht** geaendert (letzter Commit `0999939f`, 16.08. 23:30).
- **Aktion (Run 35):** Fuehrungsvermerk in beide Richtungen gesetzt —
  `planungsgrundlagen/wiki/recht-norm-quellenlandkarte` (Ordner wird von `energie` erschlossen, mit
  Namen der vier Destillate) und `energie/wiki/energienachweis-zh` (Gegenkante, samt Hinweis, dass
  die Run-34-Zeile hier nicht gilt). **Status: beschriftet.**

### energie ↔ planungsgrundlagen (EnFK-Vollzugshilfe EN-102, Norm-Ausgabe) — derselbe Fehler, ein zweites Mal, in der fuehrenden KB — geprueft 2026-08-17 (Run 35)

- **Befund (hart, adversarial BESTAETIGT, Umfang groesser als gemeldet):**
  `energie/wiki/u-werte-grenzwerte-ch.md` (`status: established`) ordnete die EnFK-Vollzugshilfe
  **EN-102 (Dez. 2018)** an **drei** Stellen der Norm-Ausgabe **SIA 380/1:2009** zu. Richtig ist
  **2016**. Der Artikel widersprach sich dabei selbst: Z. 12 «SIA 380/1:2009», vier Zeilen weiter
  Z. 16 «Kt. ZH heute SIA 380/1:2016 (dieser Artikel)».
- **Vier Widerlegungsversuche, alle gescheitert.** Der staerkste: «zwei EN-102-Ausgaben». Widerlegt
  am eigenen Destillat `enfk-en-102-waermeschutz-2018.md` Z. 4/129-131 (Fusszeile jeder PDF-Seite:
  Basis SIA 380/1:2016). **Eine EN-102 auf Basis 2009 existiert nicht** — die auf 2009 fussende
  Vollzugshilfe ist das andere Dokument **EN-2 (Feb. 2013)**, in derselben KB korrekt gefuehrt.
- **Der Jahrgangsfehler hatte bereits eine Zahl verdorben** (vom Melder nicht erfasst, vom Refuter
  gefunden): Z. 119 fuehrte fuer EN-102 Tab. 5 die Klimareferenz **8,5 °C** — den 2009er-Wert.
  Das Destillat nennt fuer dieselbe Tabelle **+9,4 °C**, und der Artikel sagt das auf Z. 146 selbst.
- **Die Figur ist die eigentliche Lehre:** `planungsgrundlagen` hatte **exakt denselben Fehler** am
  25.07.2026 (Run 15) korrigiert und dabei `energie` als fuehrend erklaert. Die Ursache ist in
  beiden Faellen dieselbe: der irrefuehrende SharePoint-Dateiname `…_3801_2009_2018Dez.pdf`.
  **Die zuliefernde KB wurde geheilt, die fuehrende blieb ein Jahr lang falsch** — und zwar mit
  `status: established`, also ohne Gegenlese-Pflicht (Rule `normen-referenz` Ziff. 3).
- **Aktion (Run 35):** vier Edits in `energie/wiki/u-werte-grenzwerte-ch.md` (Z. 12, Z. 119 Zahl,
  Datenstand-Abschnitt, `last_updated`), je mit Korrekturvermerk. Die korrekten 2009-Nennungen
  (Versionsabgleich EN-2, Delta-Abschnitt, `sources`) blieben unberuehrt und wurden nachgemessen.
  **Status: bereinigt.**

### immobilienbewertung ↔ planungsgrundlagen ↔ normen (SIA 416/1 und die EBF-Hoehenschwelle) — drei harte Meldungen, drei Widerlegungen — geprueft 2026-08-17 (Run 35)

**Der lehrreichste Teil dieses Laufs: alle drei harten Meldungen der Flaechen-Achse fielen, und
jede aus einem anderen Grund.**

- **F1 «SIA 416/1 als Flaechenbedarfs-Norm zitiert» — WIDERLEGT.**
  `immobilienbewertung/wiki/flaechendefinitionen-sia.md:13` sagt: «Massgebend ist **SIA 416**; fuer
  Flaechenbedarf/Programm **ergaenzend** SIA 416/1 und SIA 2024.» Das ist genau die Rollenzuweisung,
  die auch das normen-Destillat trifft (416 = Flaechen/Volumen, 416/1 = Ergaenzungsnorm). Der
  Melder las aus «ergaenzend» eine Gleichsetzung, die dort nicht steht. Der Refuter belegte
  zusaetzlich, dass **Anhang A der SIA 416/1** sehr wohl programmrelevant ist (Zuordnung Raum →
  Flaechenkategorie HNF1-HNF6/NNF/VF/FF). **Keine Korrektur** — und ausdruecklich keine Aenderung
  eines `established`-Artikels auf ein `speculative`-Destillat hin.
- **F2 «EBF-Schwelle 1,5 m gegen 1,0 m» — WIDERLEGT, und dies ist der wertvollste Befund des
  Laufs.** Der Refuter ging an die Originale: SIA 416/1:2007 Ziff. 3.2.2 (Figur 16) nennt **1,0 m**
  (am 200-dpi-Rendering selbst gelesen). Die 1,5 m in `planungsgrundlagen` sind **kein
  Uebertragungsfehler**, sondern die wortgetreue Wiedergabe der **RFB-Richtlinie V7.0 (13.07.2007)
  Ziff. 3.5.2.3** der Stadt Zuerich, die auf dem **Entwurf 3/05** der SIA 416/1 fusst und ueber den
  AHB-Honorarvertrag bindend ist. **Zwei je fuer sich gueltige Fassungen, kein Widerspruch.**
- **Was trotzdem zu tun war:** Wer Abschnitt 1.2 isoliert liest, haelt 1,5 m fuer den geltenden
  SIA-Stand — fuer einen **Energienachweis waere das der falsche Nenner der Energiekennzahl**. Die
  Fassungsangabe stand in Z. 30, nicht in der Zwischenueberschrift. **Aktion:** Zwischenueberschrift
  auf «SIA 416/1 **Entwurf 3/05** — RFB-Stand» praezisiert und ein Fassungsvorbehalt gesetzt, der
  beide Zahlen nebeneinander stellt. **Der Wert 1,5 m blieb unveraendert.**
- **F4 «HNF/GF 0,70 gegen 0,75 einseitig ungeflaggt» — WIDERLEGT.** Die Flaggung ist beidseitig und
  auf der immobilienbewertung-Seite sogar dichter: `realwert-sachwert.md:222-231` traegt eine eigene
  ⚠-needs-decision-Box, die den Gegenwert woertlich nennt und auf `grobkosten/wiki/kennwerte`
  zurueckzeigt; `wissensluecken.md:30` fuehrt das Ticket `T-Regelgeschoss` mit der **Sperrklausel
  «keine der beiden Stellen still umstellen»**. Der Melder hatte den Beleg-Ort (`flaechendefinitionen-
  sia:84`) mit dem Vorbehalts-Ort verwechselt. **Keine Aktion — die vorgeschlagene Warnung an
  Z. 84 haette die Sperrklausel verletzt.**
- **Status-Disziplin sauber:** Das Destillat `sia-416-1-2007.md` traegt `status: speculative` und
  wird an **jeder** Fundstelle im Hub mit diesem Vorbehalt weitergereicht (energie, baurecht ×2,
  normen-REGISTER). Kein Verstoss gegen Rule `normen-referenz` Ziff. 1b. **Status: bereinigt,
  drei Meldungen widerlegt, eine Ergonomie-Praezisierung gesetzt.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung (Teuerung, Indexstand) — geprueft 2026-08-17 (Run 35)

- **Befund (weich, VERALTET + Doppelspur):** Beide KBs pflegen die amtliche Reihe **Zuercher Index
  der Wohnbaupreise (ZIW)** materiell parallel. `grobkosten/wiki/kennwerte.md` Z. 361-363 hat am
  17.08.2026 (Run 16) den Stand **01.10.2025 = 116.1 Punkte** direkt bei der **Primaerquelle** Stadt
  Zuerich verifiziert; `immobilienbewertung/wiki/realwert-sachwert.md` Z. 69-70 fuehrt weiterhin
  **01.04.2025 = 1210.4** aus der HEV-SZ-Reproduktion (Stand 14.07.2026).
- **Kein Befund, ausdruecklich geprueft:** keine Vermengung der beiden Indexreihen (ZIW gegen
  BFS-Baupreisindex) — beide KBs tragen explizite Verwechslungswarnungen und verrechnen die
  Prozentwerte nirgends gegeneinander. Der **BFS**-Stand ist in beiden KBs identisch (April 2026 =
  100.6, Basis Okt-2025). Die Ankerzahlen sind seit Run 15 stabil.
- **Aktion (Run 35):** Fuehrungszeile gesetzt (ZIW-Indexstand → **grobkosten**), Vorbehalt mit dem
  neuen Stand in `realwert-sachwert.md` ergaenzt, und das leere Feld `links:` in
  `grobkosten/wiki/kennwerte.md` mit den vier durchgehend zitierten immobilienbewertung-Artikeln
  befuellt. **Die Tabellenwerte wurden bewusst NICHT neu gerechnet** — die Umstellung auf den neuen
  Stand verschoebe die Richtwerte um rund 0,3 %, weit innerhalb der gefuehrten Bandbreite; eine
  Neurechnung gehoert in die regulaere Ueberarbeitung, nicht in einen Koordinationslauf.
  **Status: bereinigt.**

### wettbewerbs-dna ↔ entwurfs-referenzen ↔ architekten-synobsis — Rotationspaar, weiterhin nur teilweise pruefbar — geprueft 2026-08-17 (Run 35)

- **Sachstand vor den Befunden (wichtiger als sie):** Die seit Run 21 gesetzte Blockade ist
  **nicht** aufgehoben. `wettbewerbs-dna/training/PROGRAMM.md` Z. 17-25 definiert Etappe 4 mit den
  Bausteinen V1/V2/V3; geliefert sind V1 (03.08.), V2 Schulbau (13.08.) und V2 Healthcare (17.08.).
  **Offen bleiben V2 Wohnungsbau** (im Programm selbst als «absehbar duenn» markiert) **und V3
  Verdichtung.** Die beiden Befunde unten betreffen ausschliesslich den Healthcare-Strang und sind
  kein abschliessendes Urteil ueber das Dreieck.
- **Kein Widerspruch moeglich, nicht nur keiner gefunden:** die in den neuen Dossiers 2101/2205
  genannten Buero- und Personennamen ergeben in `architekten-synobsis` und `entwurfs-referenzen`
  **null Treffer** — es gibt schlicht keinen gemeinsamen Gegenstand. Die vier bekannten
  Katalog-Kollisionen sind unveraendert.
- **Aktion (Run 35):** Stand in `entwurfs-referenzen/wiki/parameter-sets/healthcare-neubau-zh.json`
  nachgezogen (8 → 15 Quellen, 25.07. → 17.08.2026, Abschnitt 7 Rueckkopplung) und ein
  **Abnehmer-Vermerk** in `wettbewerbs-dna/wiki/muster/jury-argumente-healthcare.md` gesetzt (analog
  Run 16). **Status: teilverlinkt; Paar bleibt in Rotation, bis V2 Wohnungsbau und V3 geliefert sind.**

### projekt-lessons → Honorar-/Kosten-Skills (zwei neue Faelle vom 17.08.) — geprueft 2026-08-17 (Run 35)

- **Befund (drei weiche VERLINKUNGEN):** Die beiden neuen Artikel
  `lorrainestrasse-2011-realisierungsphase-honorar-unpreist` und
  `nerves-2015-kv-nebengewerke-unterschaetzt` taggen ihre Abnehmer-Skills im Frontmatter, aber
  `grep` ueber **alle** `skills/*/SKILL.md` nach «projekt-lessons» ergab **null Treffer** — die
  Lehren waren nirgends angekommen.
- **Der Kern beider Faelle:** (1) eine SIA-102-Phasenofferte darf keine Phase ohne Preis oder
  Preismechanismus enthalten; (2) eine moderate Gesamtabweichung (+8,8 %) kann massive
  Einzelgewerk-Ausreisser (+76 % bis +322 %) vollstaendig kaschieren — sowohl in der Schaetzung als
  auch in der Kostenkontrolle.
- **Aktion (Run 35):** Pruefschritt plus Herkunftsverweis in `skills/honorarberechnung-sia102`,
  `skills/kostenschaetzung` und `skills/kostenkontrolle` gesetzt; Gegenkante «Wo diese Lehre
  gelandet ist» in beiden Artikeln. **Bewusst NICHT uebernommen:** der Zuschlags-Erfahrungswert
  «Faktor 2 bis 4». Beide Lessons tragen `status: emerging` mit **einem** Beleg — ein einzelbelegter
  Faktor darf kein Kennwert in einem Skill werden. Die qualitative Regel ist uebernommen, die Zahl
  bleibt im Fall.
- **Registerpunkt beantwortet:** Keiner der beiden Artikel ist der seit Run 23 gesuchte **zweite
  Fall** fuer `projekt-lessons ↔ mahnwesen/bexio`. Jenes Muster ist Zahlungsverzug/Mahnkaskade;
  hier geht es um Angebots- und Schaetzgenauigkeit, ohne jeden Bezug zu Rechnung, Mahnstufe oder
  bexio. **Der Registerpunkt bleibt offen.**

### energie ↔ planungsgrundlagen (AHB-Korpus `Projektadmin AHB`) — der Korpus statt der Einzelfaelle — geprueft 2026-08-16 (Run 34)

**Befund (bestaetigt, Korpus-Ebene).** Run 33 fand die Dachbegruenungs-Doppeldestillation, dieser
Lauf zwei weitere desselben Musters (PCB-Fugendichtungsmassen, Raumtemperatur-Richtlinie 2006).
Statt einen dritten Einzelfall zu melden, wurde die Ursache gemessen: von den **25**
`energie`-Destillaten mit Quelle aus `PL - 02_Recht_Norm/04_Merkblaetter/Projektadmin AHB/` ist
**genau eines** in `planungsgrundlagen` genannt — waehrend dort ein 1'439-zeiliger Artikel
(`recht-norm-ahb-stadt-zuerich-projektstandards`, `established`) denselben Ordner systematisch
auswertet. Haerteste Einzelmessung: die neun `ahb-zuerich-gt-rl1..9`-Destillate (`energie`,
03.08.2026) gegen §12/§13 desselben Artikels (14./25.07.2026) — dieselben neun Quell-PDF, neun
Tage auseinander, unabhaengig destilliert, **null Kanten in beide Richtungen**.

**Kein Widerspruch in den Werten**, in keinem der drei Faelle: Raumtemperatur (16 °C-Untergrenze,
minus-10-°C-Schranke, 06.00–20.00 Uhr, Elektroheiz-Verbot) und PCB (>50 ppm; 6/2 µg/m³) stimmen
beidseitig ueberein. **Der Schaden ist ein anderer:** bei PCB sind die beiden Fassungen
unterschiedlich vollstaendig — `energie` las die 18-seitige Grundlage ganz, `planungsgrundlagen`
nur S. 1–4, fuehrt dafuer aber **PCP** als drittes Substanzprofil und eine feinere Bauteilliste.
Ein Schadstoff-Screening allein aus `energie` haelt sich fuer vollstaendig und uebersieht PCP.

**Status: Fuehrungszeile gesetzt** (Matrix oben) — `planungsgrundlagen` fuehrt Ordnerkontext,
Vertragsbindung und Einordnung, `energie` die Detailwerte und den Bauherren-Transfer. Drei Kanten
beidseitig gesetzt (Raumtemperatur, PCB, plus die Dachbegruenungs-Kante aus Run 33). **Offen: die
24 uebrigen Kanten**, insbesondere der inhaltliche Abgleich der neun GT-RL — dort ist neunmal
dieselbe Konstellation wie bei PCB, wo der Vergleich eine echte Luecke fand.

### normen → Bauleitungs-Skills (SIA 118: Fristen und Sicherheiten) — Uebergabe E3 aus Run 33 eingeloest — geprueft 2026-08-16 (Run 34)

**Drei Befunde in drei von vier Skills, alle mit Geld- oder Rechtsfolge, alle korrigiert.**

1. **`offertenpruefung` Z. 70 (WIDERSPRUCH, adversarial bestaetigt):** «Gewaehrleistung (typisch
   2 Jahre / SIA 118 5 Jahre)» verwechselt Garantie-/Ruegefrist (Art. 172, **2 Jahre**) mit der
   Verjaehrung der Maengelrechte (Art. 180, 5 Jahre) — genau die Verwechslung, vor der
   `sia-118-1991.md` Z. 142 woertlich warnt. Eine normkonforme 2-Jahres-Offerte waere als
   unterdurchschnittlich bewertet worden. Korrigiert.
2. **`unternehmerkontrolle` + `werkvertrag` (VORBEHALT, am Original nachgelesen):** beide fuehrten
   Rueckbehalt und Garantie gemeinsam unter «10 % Art. 181». Es sind zwei Sicherheiten mit
   getrennten Schwellen — Rueckbehalt bis Abnahme Art. 149-150 (>Fr. 300'000 → 5 %, min.
   Fr. 30'000), Solidarbuergschaft nach Abnahme Art. 181 (>Fr. 200'000 → 5 %, min. Fr. 20'000).
   Beide Ausgangsprozentsaetze sind 10 %, was die Verschmelzung erklaert; zwischen Fr. 200'000 und
   Fr. 300'000 divergieren sie sofort. In beiden Dateien gleichzeitig getrennt.
3. **`offertenpruefung` (VERLINKUNG):** einziger der vier Skills mit `grep -c` = 0 auf
   `wissen/normen`/`normen-referenz`, obwohl er eine SIA-118-Fristenaussage mit Rechtsfolge fuehrt.
   Rule ergaenzt, Destillat-Pfad an der Fundstelle gesetzt. Derselbe Fund wie bei
   `kostenkontrolle` in Run 33, eine Tuer weiter.

**Status: Trefferquote der Achse bisher 4 von 5 Skills** (kostenkontrolle Run 33, diese drei).
**Offen: `ausschreibung`** (402 Zeilen) ueber die Stichprobe hinaus ungeprueft.

### energie ↔ normen (SIA 416 / 416/1, Flaechen- und Bezugsgroessen) — geprueft 2026-08-16 (Run 34)

**Kein Widerspruch.** Die EBF-Grunddefinitionen in `energie`, `normen` und dem `baurecht`-Buch
sind nahezu wortgleich; der von Run 33 gesetzte Cross-Ref im Buch-Destillat haelt den
Geltungsbereichs-Unterschied (kantonaler Vollzug EN-2 gegen SIA-Normtext) bereits korrekt fest.
Ausgaben-Konsistenz SIA 380/1 2009 gegen 2016 geprueft: konsistent (9,4 °C / 6 % pro K).

**Zwei Kanten gesetzt, beide eingeschraenkt:** `[[sia-416-2003]]` (`established`) ist jetzt aus
`bezugsgroessen-energienachweis` und `gebaeudehuellziffer-ebf-flaechendefinition` verlinkt — beide
fuehrten den Vorbehalt, ihre Flaechenhierarchie stamme von einer privaten Immobilienfirma statt
einer Normstelle, und der belastbare Ersatz lag seit dem 14.07. ungenutzt im Haus. **Der Vorbehalt
wurde bewusst nicht gestrichen**: der Ersatz ist auffindbar, der Abgleich Begriff fuer Begriff
noch nicht geleistet. Zweitens `[[sia-416-1-2007]]` Ziff. 3.2.2 (Abstellraeume/Schaechte unter
10 m² zaehlen abweichend doch zur AE) — **als Pruefauftrag gesetzt, nicht als Beleg**, weil das
Ziel `status: speculative` traegt (Rule `normen-referenz` Ziff. 1b).

`sia-215-1978.md` (neu 16.08.) geprueft: mineralische Bindemittel, themenfremd, keine Beruehrung.

### bauprodukte ↔ energie/normen/BKP (drei neue Artikel) — sauberer Negativbefund — geprueft 2026-08-16 (Run 34)

**Kein Befund, und das ist selbst gemessen.** Die BKP-Codes der drei neuen Artikel
(`bkp-221-holzfenster-3fach-verglasung`, `bkp-281-estrich-systeme`,
`erco-lichtplanung-simulation-berechnung`) wurden vom Hauptprozess gegen
`references/bkp-2017/BKP-2017-Liste.md` geprueft: **221.0** Fenster aus Holz, **281.0** Estriche
(Unterlagsboeden), **233** Leuchten und Lampen — alle drei existieren, alle drei passen zur
bezeichneten Leistung, **keine Phantom-Subcodes** wie im Fall 271.10. Der Fenster-Artikel fuehrt
Uw = 0,9 W/m²K korrekt als Produktwert und delegiert die Anforderungswerte ausdruecklich.

**Es fehlte nur die Matrixzeile** (Fenster-Kennwerte Uw/Ug/g-Wert) — zweiter Cross-KB-Pruefgegenstand
zum selben Thema nach Run 33, beide Male sauber, beide Male ohne Fuehrungszeile. Gesetzt.

### Eine Meldung, die die Gegenpruefung NICHT ueberstand — geprueft 2026-08-16 (Run 34)

**«Toter Wikilink `[[energie-baustoffe-schadstoffe-rueckbau]]` in `planungsgrundlagen`»** — der
Melder wollte vier Vorkommen auf `[[gebaeudeschadstoffe]]` umbiegen, weil es die Datei in
`wissen/energie/wiki/` nicht gebe. **Widerlegt und selbst nachgemessen:** sie existiert als
KB-**eigener** Artikel `wissen/planungsgrundlagen/wiki/energie-baustoffe-schadstoffe-rueckbau.md`
(`established`, 14.07.2026, 9'955 Bytes). `planungsgrundlagen` benennt seine Artikel mit
Domaenen-Praefixen `energie-`/`recht-norm-`/`brandschutz-`, passend zu den vier PL-Bibliotheken.
Die vorgeschlagene «Korrektur» haette vier funktionierende Links zerstoert und auf einen sachlich
anderen Artikel (kantonale AWEL-Checkliste, Vier-Faelle-Weiche Art. 16 VVEA) umgelenkt.

**Regel daraus, jetzt in der gesetzten Kante vermerkt: ein Dateiname, der mit einem KB-Namen
beginnt, ist keine KB-Zuordnung.** Die Substanz des Befunds (KB-uebergreifende Doppeldestillation
des KBOB-Merkblatts 2004/4) blieb bestehen und ist oben im AHB-Korpus-Eintrag verarbeitet — **der
Befund fiel, seine Substanz nicht.**


### twin ↔ rules/anrede-kontakte + rules/jans-dna (Beziehungsregister, Kontakt-Fakten) — geprueft 2026-08-14 (Run 32, Erst-Pruefung, rotierend)
- **BESTAETIGT und korrigiert:** `twin/wiki/beziehungsregister.md` (Batch-37-Eintrag fsgbau) nannte
  ein «Parallelprojekt **KISPI Albertstrasse 7**» und verschmolz **2620 Albertstrasse 7** (Nova
  Property Fund) mit **2619 KISPI**. Auf «Albertstrasse 7 (Nova)» korrigiert, Vermerk gesetzt.
  Dieselbe Fehlerfamilie wie Staehlin/Waechter (29.07.2026): eine Faktenaussage, die in einem
  Stil-Wiki nebenbei mitlaeuft und von dort in Anrede und Projektbezug einer Mail wandert.
- **WIDERLEGT (beide Linsen):** Die Meldung, der immer aktive Kern `rules/jans-dna.md` Z. 20-22
  widerspreche mit seiner Gruss-Skala der Facetten-Korrektur vom 13.08. Linse 1: kein Widerspruch,
  der Kern nennt die grobe Beziehungsachse, die Facette verfeinert sie. Linse 2 (Zustaendigkeit):
  selbst wenn — der Wissens-Chef duerfte die Zeile nicht selbst aendern, sie gehoert Raphael
  vorgelegt. **Merksatz fuer kuenftige Laeufe:** eine Meldung «importierte Rule widerspricht KB»
  ist nie eine Aktion dieses Loops, immer eine Vorlage.
- **OFFEN, Vorlage an Raphael:** drei Uebernahmen aus dem Wiki in `rules/anrede-kontakte.md`
  (Du-Kontakt Stefanie Sonderegger, mehrfach belegt · zweite Person «Angerer»: Gertrud Angerer,
  2414 Thalwil, Du · Kanal-Achse «Sammelpostfach senkt die Stufe» als Gegenstueck zur
  Gewichts-Klausel). Die Rule ist @-importiert; keine stille Aenderung.
- **Strukturbefund:** Es gibt keinen Mechanismus, der mehrfach belegte Wiki-Mappings in die Rule
  zieht. Vorschlag (Entscheid Raphael): der twin-Lauf gibt kuenftig eine Kandidatenliste
  «mehrfach belegt und nicht in der Rule» als Laufergebnis aus.

### energie ↔ normen (nachhaltiges Bauen, SIA 112/1 · SIA 2040) — geprueft 2026-08-14 (Run 32)
- **BESTAETIGT und korrigiert (KB-intern energie, sieben Stellen):** `energie` Run 132 erklaerte
  die Quelle «Massstaebe fuer Umwelt- und energiegerechtes Bauen» (Mai 2006) fuer «nie eingelesen»
  und den Wikilink fuer dangling — das Destillat `ahb-zuerich-massstaebe-nachhaltiges-bauen.md`
  besteht seit dem 04.08.2026 (Run 123) unter **buchstabengleichem** Dateinamen. Die Falschaussage
  stand nicht an den zwei gemeldeten, sondern an **sieben** Stellen, darunter INDEX, CHANGELOG und
  QUESTIONS. Additiv korrigiert, nichts geloescht, die beiden Destillate NICHT gemergt (zwei
  verschiedene Dokumente: Faltblatt Mai 2006 gegen StRB Nr. 1094 vom 17.09.2008).
  **Ursache:** `INDEX.md` fuehrte nur einen der beiden SharePoint-Pfade; die Suche lief ueber den
  Titel statt ueber den Linknamen. Dubletten-Pfad nachgetragen.
- **BEREITS BEKANNT, nicht angefasst:** Vorgaengerausgabe SIA 112/1 — `energie` fuehrt an fuenf
  Stellen «2005» (shop.sia.ch), `normen` hat am Original «2004» gelesen (Titelblatt S. 1,
  Genehmigungsblock S. 52). Run 29 hat den Widerspruch am 13.08. ausdruecklich stehen lassen.
  **Neu und berichtenswert:** er ist seither in ein NEUES Destillat vom 14.08. weitergewandert.
  Der Refuter raet ab, in `energie` eine Qualifier-Welle zu fahren; aufloesbar ist die Frage
  belegt und billig ueber `normen` N48-2 (Gesamtverzeichnis SIA.pdf und ersetzte_normen.pdf
  liegen im Bestand). **Entscheid an Raphael:** gilt der Run-29-Entscheid weiter, wenn jeder neue
  2008er-Korpus-Lauf ihn mitkopiert?
- **Querverweis gesetzt:** `energie/destillate/2000-watt-gesellschaft-sieben-thesen-ahb.md` fuehrte
  die Fassung des SIA-Effizienzpfads als offenen Punkt — in `normen` liegt sie seit 13.07.2026
  established vor ([[sia-2040-2017]], SIA 2040:2017, ersetzt Ausgabe 2011). Teilantwort gesetzt,
  der zweite Teil (Wohnen-Anteil 40 % / 800 Watt) bleibt ausdruecklich offen: SIA 2040:2017
  arbeitet mit flaechenbezogenen Zielwerten je Gebaeudekategorie, nicht mit einem Watt-Anteil.

### bauprodukte (ERCO Licht) ↔ energie (Beleuchtung, SIA 387/4) — geprueft 2026-08-14 (Run 32, Erst-Pruefung)
- **WIDERLEGT, aber mit Nebenertrag.** Die Meldung, `energie` fuehre fuer den Nachweis EN-111 die
  Ausgabe 387/4:**2023** gegen die 2017er in `normen`, faellt: die energie-Stellen sagen «die
  **Fachnorm** gilt», nicht «der Nachweis laeuft nach dieser Ausgabe» — zwei Bezugspunkte, kein
  Widerspruch. Der Punkt ist zudem seit 07.08.2026 als `normen` N27-2 protokolliert, samt der noch
  offenen Rueckrichtung nach `energie`.
- **Nebenbefund der Refuter-Runde, vom Hauptprozess am Rohtext gegengelesen und korrigiert:**
  `normen/wiki/REGISTER.md` Z. 268 sagte, die BBV I ZH erklaere die Ausgabe 2017 **verbindlich**.
  Ziff. 2.3382 steht im Anhang unter «**2. Als Richtlinien und Normalien sind zu beachten**», nicht
  unter «1. Als Verordnungsbestimmungen gelten»; § 4 Abs. 5 BBV I laesst begruendete Abweichung zu.
  Auf «beachtlich» umgestellt. **Ein Refuter kann mehr wert sein als die Meldung, die er widerlegt.**
- **Offen (nicht ausgefuehrt, Zuwachs fuer den naechsten Lauf):** die Rueckrichtung nach
  `energie/wiki/QUESTIONS.md`, die `normen` QUESTIONS Z. 367-368 ausdruecklich verlangt · die
  Verlinkung der drei ERCO-Artikel mit dem EN-111-Abschnitt · der in `energie` zweimal als fehlend
  vermerkte Wiki-Themenartikel «Beleuchtung», fuer den `bauprodukte` jetzt Material haette.
  **Beachten:** ERCO ist eine Hersteller-Quelle und darf nicht als neutrale Kennwertquelle gelesen
  werden.

### normen → Abnehmer-Skills (ABB-Reihe, Gerueste, Verguetung) — geprueft 2026-08-14 (Run 32)
- **NULL-BEFUND bei den Widerspruechen, und das ist der Ertrag:** Der am 13.08. korrigierte alte,
  umgekehrte Stand («Arbeitsgerueste beim Betonbau nicht inbegriffen») steht ausserhalb von `normen`
  **nirgendwo** mehr. Der einzige Sachtraeger, `skills/ausschreibung/SKILL.md` Z. 115-125, traegt
  seit Run 30 den richtigen Stand woertlich am Original. Alle uebrigen Treffer liegen in
  Zeitdokumenten und sind dort als widerlegter Vorstand markiert. Die Korrektur ist also wirklich
  bis zu den Abnehmern durchgeschlagen — anders als in der Run-31-Erwartung.
- **WIDERLEGT im Kern (F6):** die Meldung, `skills/ausschreibung/SKILL.md` Z. 109-113 stelle mit
  «2,5 m gegenueber 3,0 m» ein durch Run 50 hinfaellig gewordenes Zahlenpaar auf. Das Wiki
  **bestaetigt** die Skill-Aussage ausdruecklich (Z. 80-83: «Diese Beobachtung bleibt gueltig»);
  Run 50 verschaerft die Verschiedenheit, statt sie aufzuheben. Alle Zahlen sind korrekt zitiert,
  und der Statusvorbehalt steht bereits im Skill (Z. 127-138).
- **OFFEN, Vorlage an Raphael (Praezisierung, kein Fehler):** das Wort «gegenueber» suggeriert
  einen sauberen Zahlenvergleich, und der Vorbehalt «nur fuer Arbeiten zu Einheitspreisen» fehlt.
  Fertiger, belegter Ersatzwortlaut liegt im Laufbericht. Nicht selbst gesetzt, weil der Skill in
  LV mit Geldfolge wirkt und der Befund «teilweise» lautet, nicht «bestaetigt».
- **Uebergabe gesetzt (Rueegefrist, praktisch die teuerste Luecke des Laufs):**
  `skills/werkvertrag/templates/werkvertrag-vorlage.md` und
  `skills/unternehmerkontrolle/templates/abnahmeprotokoll.md` zitierten nur Art. 179 **Abs. 1**
  SIA 118. Die Korrigenda **SIA 118 C1:2026** (`normen`, established) setzt fuer verdeckte Maengel
  eine **zwingende Ruegefrist von 60 Tagen** ab Entdeckung an die Stelle der «sofortigen»
  Ruegepflicht (OR-Revision Baumaengel per 01.01.2026, geht der SIA 118 vor). Additiver Hinweis in
  beiden Vorlagen gesetzt, Vertragsklauseln unveraendert.
- **Offen:** `skills/kostenkontrolle` hat **keine einzige** Verbindung in die Normen-KB (0 Treffer),
  und der Router `skills/normen/SKILL.md` Z. 51 fuehrt ihn nicht in seiner Abnehmerliste.

### normen ↔ energie (SIA 386.111 / BACS) — eine Norm, die nur EINE der beiden KBs kannte — geprueft 2026-08-13 (Run 31)
- **Befund (BESTAETIGT, hoch — der einzige der sechs Meldungen dieses Laufs, der die Gegenpruefung
  ueberstand):** `energie` fuehrt seit Run 106 (25.07.2026) ein `established`-Destillat
  `sia-386-bacs-gebaeudeautomation.md` mit der **vollstaendigen amtlichen Ausgaben- und
  Gueltigkeitskette** der SIA 386.111 (386.110:2007 · 386.110:2012 archiviert seit 30.11.2017 ·
  386.111:2017 archiviert seit 31.08.2022 · 386.111:2022 gueltig ab 01.09.2022, Bezugsnorm
  SN EN ISO 52120-1:2021), belegt an shop.sia.ch. In der **fuer Norm-Fundstellen fuehrenden** KB
  `normen` existierte dazu **nichts**: 0 Treffer fuer «386» (ausser der Fremdfamilie DIN EN 386
  Brettschichtholz), 0 fuer «BACS», 0 fuer «52120»; auch in QUERBEZUEGE 0, es gab also nicht
  einmal eine offene Uebergabe. `wissen/energie/wiki/gebaeudetechnik-pflichtenheft.md` Z. 156-157
  verweist ausdruecklich «fuer die normative Seite» auf dieses Destillat.
- **Warum das zaehlt:** Matrix-Zeile «Gueltigkeits-/Fassungsstand einer Norm» weist die Arbeit
  eindeutig `normen` zu, mit dem Zusatz «meldet sie eine Archivierung, ist sie in normen
  NACHZUZIEHEN (sonst verpufft die Uebergabe)». Genau dieses Muster («Uebergabe verpufft im
  abgebenden KB», Run 8) lag hier vor — nur ohne den Flag, der es sichtbar gemacht haette. Ein
  kuenftiger `normen`-Lauf zu SIA 386 haette bei null begonnen und eine zweite, moeglicherweise
  abweichende Fassungsversion erzeugt.
- **Verifikation, die den Vorschlag korrigiert hat:** Der Refuter bestaetigte den Befund und
  **verwarf zugleich einen Teil der vorgeschlagenen Umsetzung**. Ein Eintrag in
  `destillate/INDEX.md` oder gar ein normen-Destillat waere **falsch** gewesen: der Volltext ist
  nicht im Bestand und nicht gelesen (CHF 144.–), und nach QUERBEZUEGE Z. 60 darf nur der
  destillierende Lauf eine Destillatdatei anlegen. Richtig ist **ausschliesslich** eine
  REGISTER-Zeile ohne Inhaltsaussage — Praezedenz im selben Register: VA 105-01 (Z. 425,
  «Volltext nicht im Bestand»).
- **Aktion (Run 31), drei Teile:** (1) Registerzeile **SIA 386.111** in
  `wissen/normen/wiki/REGISTER.md` zwischen SIA 385/12 und SIA 387/4, mit ⚠-Sperre «keine
  Inhaltsaussage ableitbar», dem Bezeichner-Hinweis (aeltere Zitate «SIA 386.110» sind ueberholt)
  und dem Vorbehalt zu den EN-15232-Effizienzfaktoren. (2) **Gegenrichtung** im energie-Destillat:
  Querbezug-Block, der die neue Registerzeile nennt und festhaelt, dass der Primaerbeleg hier
  bleibt und ein Fassungswechsel in **beiden** Dateien nachzuziehen ist. (3) Matrix-Zeile
  «Gebaeudeautomation/BACS», deckungsgleich zur SWKI-Zeile (Entscheid Raphael 31.07.2026) —
  damit ist der Fall geregelt, nicht nur repariert.
- **Bewusst NICHT getan:** die Ausgabenhistorie aus `energie` gekuerzt oder verschoben. Nach dem
  Electrosuisse-/SWKI-Muster bleibt sie dort; `normen` verweist, statt zu kopieren.

### normen (Destillate) ↔ references/bkp-2017 ↔ Skill ausschreibung — dieselbe BKP-Fehlerfamilie, zwei Dateien weiter — geprueft 2026-08-13 (Run 31)
- **Ausgangspunkt war eine Uebergabe aus Run 30**, die niemand eingeloest hatte:
  `normen/destillate/INDEX.md` Z. 22 trug die am 13.08. korrigierte **Bedeutungsumkehr** zu den
  Arbeitsgeruesten im Betonbau («NICHT inbegriffen, anders als Mauerwerk-ABB») unveraendert
  weiter, obwohl Run 50 dieselbe Zeile angefasst und den Status-Vermerk ergaenzt hatte. Die
  Statusspalte wurde gepflegt, die Sachspalte nicht. **Korrigiert** (Fundstelle Ziff. 8.4.2.2 /
  8.4.2.3, mit der richtiggestellten Mauerwerk-Parallele).
- **Dabei aufgefallen, neuer Befund mit LV-Wirkung:** `normen` Run 50 hat belegt, dass **BKP 241
  und 243 im BKP 2017 nicht existieren** und **242 «Heizungsanlagen»** ist — und hat das in
  `sia-118-267-2004.md` korrigiert. **`sia-118-262-2004.md` wurde nicht mitgezogen** und nannte in
  der Abnehmer-Zeile zum Skill `ausschreibung` weiterhin «BKP 241/242 Baumeisterarbeiten
  Beton/Ortbeton», dazu «BKP 291 Statik/Bauingenieur» — 291 ist der **Architekt**, der
  Bauingenieur ist **292**. Am systematischen Teil der Liste nachgeschlagen (Hauptgruppe 24 fuehrt
  240 · 242 · 244 · 245, kein 241, kein 243). **Korrigiert** auf BKP 211 (mit 211.5), BKP 212 fuer
  die Betonfertigteile und BKP 292, mit Herleitung und Verweis auf Rule `bkp-2017-referenz`.
- **Mechanischer Sweep als Gegenprobe:** alle «BKP nnn»-Nennungen in `wissen/`, `skills/` und
  `rules/` gegen die 846 gueltigen Codes der offiziellen Liste gedifft. Ergebnis: die uebrigen
  Abweichungen liegen in `raw/`-Bestaenden und Laufberichten (Zeitdokumente, nicht angefasst) —
  **ausser** in `skills/ausschreibung/projekte/2620-albertstrasse-7.md`.
- **Dritter Befund, Klassenfall 271.10:** Dort standen vier bereits versandte Lose mit
  «BKP»-Praefix, deren Nummern **keine gueltigen BKP-2017-Codes** sind: 272.5 (BKP 272 hat nur
  .0–.4), 275.0 (275 ist ein Code ohne Unterpositionen), 285.00 (existiert nicht — und die
  verkuerzte Form waere irrefuehrend, denn **285.0 ist «Geruste»**, Innere Malerarbeiten sind
  **285.1**) sowie «BKP 250 Sanitaeranlagen» (250 ist die **Uebergangsposition**). Das ist genau
  der Fehlertyp, den die Rule `bkp-2017-referenz` seit dem 04.08.2026 benennt (Ticket N43-1).
- **Aktion mit Absicht zurueckhaltend:** **keine Nummer geaendert** — sie stehen so in den
  ausgegebenen LV, ein Umschreiben haette den Projektnachweis verfaelscht. Stattdessen die von der
  Rule vorgeschriebene Form gesetzt: `LOS <Nr.>` statt `BKP <Nr.>`, je Zeile der Grund und, wo am
  Original belegbar, der echte Code daneben. **Briefkastenanlage blieb offen** — die Liste fuehrt
  den Begriff nicht woertlich, und Raten ist hier der Fehler, nicht die Luecke.

### Vier Meldungen, die die Gegenpruefung NICHT ueberstanden — geprueft 2026-08-13 (Run 31)
- **energie ↔ normen, SIA 382/1:2025 (73 %/70 % WRG) — WIDERLEGT (3 von 3 Runden).** Der Melder
  las `komfortlueftung.md` Z. 19-20 und uebersah den Verweis vier Zeilen weiter (Z. 22), dazu
  Z. 82, Z. 124 und das Frontmatter-Feld `sources`. Wichtiger: der «fehlende normen-Vorbehalt» ist
  **kein fachlicher Zweifel**, sondern ein KB-Synchronisationsvermerk, den `normen` selbst
  aufgeloest hat — REGISTER Z. 605 erklaert den eigenen Stand 2014 fuer «ueberholt» und uebergibt
  die 2025er-Fuehrung an das energie-Destillat. Der Wert ist zusaetzlich **primaerquellennah
  unabhaengig belegt**: MuKEn 2025, Anhang 6, Standardmassnahme 5 (`muken-2025-verabschiedet`,
  `established`, MD5-verifiziert am amtlichen EnDK-Text). Haette man den Vorschlag umgesetzt,
  waere ein gesicherter Grenzwert in einem bauherrengerichteten Artikel als unsicher markiert
  worden.
- **energie ↔ planungsgrundlagen, Abnahme Komfortlueftung — WIDERLEGT (2 von 2).** Die
  werkvertragliche Abnahmemessung (Luftmengenabgleich, WRG-Wirkungsgrad, Dichtigkeit, Nachweis
  nach einem Betriebsjahr) und die **oeffentlich-rechtliche** Private Kontrolle nach BBV I § 4
  sind zwei verschiedene Dinge, nicht zwei Namen fuer dasselbe. Der Vorschlag haette sie
  gleichgesetzt und dabei **EN-105 falsch als Ausfuehrungskontroll-Formular** bezeichnet (es ist
  das Detailformular des Projekt-Nachweises Lueftung).
- **energie ↔ planungsgrundlagen, Gebaeudeautomation EN-135 — WIDERLEGT.** **EN-135 ist
  «Beheizte Freiluftbaeder».** Gebaeudeautomation ist **EN-141**, gefuehrt sowohl unter Befugnis
  **He** als auch **Kl**. Der Melder hatte eine Nummer aus einer Aufzaehlung gegriffen und ihr ein
  Thema zugeordnet, das ihr nicht gehoert; die «Korrektur» haette einen frischen Sachfehler in
  einen `established`-Artikel geschrieben.
- **bauprodukte ↔ normen, SIA 181 ohne Fundstelle — WIDERLEGT (2 von 2).** Die Stelle referiert
  eine **Schmidlin-Montageanleitung**; die Norm-Nennung ist die Begruendung des Herstellers, keine
  eigene Norm-Behauptung des Hub, und es haengt keine Zahl daran. Die Rule `normen-referenz`
  greift dort nicht.
- **Muster dieses Laufs:** In **drei** von vier widerlegten Faellen war nicht nur der Befund
  falsch, sondern der mitgelieferte Korrekturvorschlag **selbst fehlerhaft**. Ein Melder ohne
  Refuter haette diesen Lauf schlechter beendet, als er ihn begonnen hat. Die Refuter-Stufe ist
  damit nicht Qualitaetskosmetik, sondern die eigentliche Arbeit.

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung — unveraendert offen — geprueft 2026-08-13 (Run 31)
- Der Regelgeschoss-Faktor **HNF/GF 0.70 vs. 0.75** steht weiterhin an zwei Orten verschieden
  (`flaechendefinitionen-sia:84` = 0.75 belegt; `realwert-sachwert:219` = 0.70 per Hub-Entscheid
  12.07.2026). Das ist **kein neuer Befund**, sondern Ticket **T-Regelgeschoss** in
  `immobilienbewertung/wiki/wissensluecken.md` — **Fachentscheid Raphael**, seit Run 15 offen, in
  Run 25/26 zweimal praezisiert. Bis zum Entscheid darf keine der beiden Stellen still umgestellt
  werden; dieser Lauf hat nichts geaendert. Sonst keine Kennwert-Abweichung gefunden.

### normen (ABB SIA 118/262) ↔ Skill ausschreibung — die Korrektur blieb in der KB stecken — geprueft 2026-08-13 (Run 30)
- **Befund (BESTAETIGT, hoch — der erste Befund seit Run 25 mit direkter Geldwirkung):** `normen`
  Run 49 hat um 01:43 eine **Bedeutungsumkehr** in der ABB-Synthese korrigiert (Arbeitsgerueste
  Betonbau). Der Skill `ausschreibung`, den Run 29 dreissig Minuten zuvor an genau diese Stelle
  verdrahtet hatte, trug die falsche Fassung weiter: «und beim Betonbau gar nicht inbegriffen»
  (SKILL.md Z. 112-113). Die KB hat sich selbst geheilt, den Abnehmer aber nicht mitgenommen.
- **Verifikation am Original, nicht abgeschrieben.** Ein adversarialer Refuter mit der
  Nullhypothese «die Korrektur ist der eigentliche Fehler» hat das Original-PDF auf SharePoint
  gelesen (`118_262_2004_d.pdf`, Seitenzuordnung ueber die Copyright-Fusszeilen verifiziert) und
  die Nullhypothese widerlegt: Ziff. 8.4.2.2 (S. 21) «werden nicht verguetet, ausgenommen wenn im
  Leistungsverzeichnis hierfuer getrennte Positionen enthalten sind» heisst nach der Definition
  Ziff. 0.3 (S. 10) **inbegriffen**, gestuetzt durch Ziff. 1.3.2.3 (Arbeitsgeruest ist
  Unternehmeraufgabe), Ziff. 1.3.1.5 und den Katalog Ziff. 8.2.1. Eine dritte Lesart wurde gezielt
  gesucht und ausgeschlossen.
- **Zweiter Befund derselben Wurzel, den vorher niemand hatte:** auch die Kontrastierung «anders
  als die Mauerwerk-ABB» ist falsch. **Beide** ABB stellen Arbeitsgerueste in den Einheitspreis;
  der Unterschied ist allein die Schwelle (SIA 118/266-1 Ziff. 2.2: bis 3,0 m; SIA 118/262: keine
  Hoehengrenze). Der Betonbau ist fuer die Bauherrschaft also **grosszuegiger**, nicht enger —
  genau umgekehrt zur bisherigen Darstellung. Wer nur die Formel «nicht inbegriffen» →
  «inbegriffen» getauscht und den Nebensatz stehen gelassen haette, haette einen neuen Fehler
  erzeugt.
- **Aktion (Run 30):** SKILL.md korrigiert — eigener Absatz mit Fundstelle, LV-Konsequenz
  (**keine** Geruestposition ins Beton-LV, sonst Doppelverguetung; Arbeitsgeruest-Nachforderung
  ohne LV-Position unbegruendet), Abgrenzung zu Lehr-/Schutzgeruesten (Ziff. 8.4.2.3) und der
  richtiggestellten Mauerwerk-Parallele.
- **Zweite Aktion, dieselbe Wurzel:** die von Run 29 gesetzte Trennung Warnkarte ↔ Zitierquelle
  benannte den Verifikationsstatus **nur beim Wiki**. Das Destillat war als alleinige Zitierquelle
  deklariert, obwohl 8 der 10 ABB-Destillate `speculative` sind und `sia-118-262-2004` intern eine
  Nichtverwendungs-Sperre trug, von der die Skill-Anweisung nichts wusste. Neuer Vorbehalt setzt
  am Feld `status:` an, **nicht** an einer Normnummern-Liste (die veraltet mit der naechsten
  Statushebung — Fehlertyp Phantom-Code 271.10).
- **Bewusst NICHT getan:** kein Eingriff in `wissen/normen/**`. Ein `normen`-Lauf 50 arbeitete
  waehrend dieses Laufs an denselben Dateien (Destillat um 02:03 geaendert, vier Parallelsessions
  gemessen) und hat die drei Destillat-Stellen selbst korrigiert — inklusive derselben
  Mauerwerk-Praezisierung, die der Refuter unabhaengig fand. Zwei unabhaengige Wege, dasselbe
  Ergebnis; ein Eingriff waere Doppelarbeit mit Kollisionsrisiko gewesen (Rule
  `auto-verbesserungen` 260811).
- **Offen an `normen` uebergeben:** `destillate/INDEX.md` Z. 22 traegt die falsche Fassung
  weiterhin und wurde von Run 50 bis 02:06 nicht mitgezogen. Ebenfalls offen: ob die Wendung
  «umgekehrte Systematik» im korrigierten Wiki-Artikel (Z. 63) praezise genug ist — nach dem
  Refuter ist die Systematik dieselbe, nur die Schwelle unterscheidet sich.

### normen ↔ energie (Fassungsstand SIA 382/2 — die zweite Bring-Schuld derselben Passage) — geprueft 2026-08-13 (Run 29)
- **Befund (gedaempft von WIDERSPRUCH auf UEBERGABE-NICHT-NACHGEZOGEN, mittel — der einzige
  substanzielle Sachbefund dieses Laufs):** Das am 08.08.2026 angelegte Erstdestillat
  `normen/destillate/sia-382-2-2011.md` fuehrte die Nachfolgefrage als «offene Bring-Schuld»,
  obwohl `energie` die Abloesung seit dem **25.07.2026** belegt hatte
  (`sommerlicher-waermeschutz-sia180-nachweisverfahren.md`: SIA 380/2:2022 ersetzt SIA 2044:2019
  UND SIA 382/2:2011, beide archiviert per 31.10.2022).
- **Das Lehrreiche liegt im Vergleich:** Dieselbe energie-Passage enthielt ZWEI Bring-Schulden an
  `normen`. Die eine (SIA 382/1:2014 → 2025) ist am 26.07.2026 sauber angekommen, das Destillat
  traegt seither `ausgabe_ueberholt`. Die andere ist nie angekommen — und wurde zwoelf Tage
  spaeter von einem frischen Destillier-Lauf als offene Frage neu formuliert. **Eine Bring-Schuld
  verpufft nicht nur; sie kann von einem spaeteren Lauf als Wissensluecke wiedergeboren werden.**
- **Aktion:** Nicht aus dem fremden Destillat abgeschrieben, sondern **am Herausgeber selbst
  belegt** (shop.sia.ch, Produktseite SIA 380/2 (2022), Vorgaenger-Block «im Archiv» nennt
  SIA 2044:2019 und SIA 382/2:2011, beide «gueltig bis 31.10.2022» — abgerufen 13.08.2026 vom
  Hauptprozess). Gesetzt: Frontmatter-Feld `gueltigkeit` (Matrixzeile 46, getrennt vom
  Inhaltsstatus `status`), aufgeloeste Schlusszeile in «Offene Punkte», ERGAENZUNG in der
  Bemerkungsspalte von `REGISTER.md` Z. 257 (der Stichtagswert «2011 = gueltig 2013» blieb
  unangetastet, viertes Struktur-Muster), Nachtrag an QUESTIONS N48-7.
- **Neue, echte Luecke daraus (N29-1):** SIA 380/2:2022 liegt **nicht im Bestand** und ist
  ungelesen. Die KB fuehrt fuer klimatisierte Gebaeude nur noch abgeloesten Bestand.
- **Offen, bewusst nicht miterledigt (N29-2):** `REGISTER.md` Z. 256 fuehrt SIA 382/1 noch mit
  «2007». Eigener Befund, eigener Herausgeber-Beleg noetig; die Zeile liegt zudem im
  Stichtags-Block 25.02.2013 und darf nur ergaenzt werden.

### normen ↔ energie (SIA 112/1:2017 — der Verweis fuehrte zur falschen Fassung) — geprueft 2026-08-13 (Run 29)
- **Befund (gedaempft, tief, aber praktisch relevant):** `energie/wiki/oekologische-materialvorgaben-beschaffung.md`
  benannte die geltende Ausgabe **richtig** («geltend ist heute SIA 112/1:2017»), verlinkte fuer
  den Beleg aber auf das eigene Destillat der **Stadt-Zuercher AfB-Checkliste mit Copyright-Stand
  2004**. Seit dem 08.08.2026 liegt das Volldestillat der Ausgabe 2017 in der fuehrenden KB
  (`normen/destillate/sia-112-1-2017.md`, established, doppelt refuter-verifiziert) — die
  Gliederung ist dort eine andere: **21 Kriterien in drei Bereichen A/B/C zu je sieben** statt
  12 Themenfelder mit 27 Kriterien. Beide Seiten kannten einander nur auf KB-Ebene.
- **Aktion:** Verweise in beide Richtungen gesetzt (energie → normen-Destillat mit der
  Struktur-Differenz; normen → konkret `eco-bau-zielvereinbarungen-sia112-1.md` statt pauschal
  «die KB energie»). Der von der KB selbst gestellte offene Punkt «fuehrt die aktuelle Fassung
  dieselbe Gliederung?» ist damit **belegt geschlossen**, die versprochene Bring-Schuld an
  normen/QUESTIONS als gegenstandslos vermerkt (Run 48 war schneller).
- **Nicht getan:** Zahlen 12/27 stehen unveraendert (getreue Abschrift der Checkliste). Kein
  `ersetzt_durch`-Vermerk — er waere sachlich schief: abgeloest wurde die SIA-Empfehlung, nicht
  die staedtische Checkliste. Registerstand «Vorgaengerfassung 2005» nicht angeglichen
  (normen/QUESTIONS N48-2 fuehrt die Herkunft dieser Jahreszahl ausdruecklich als offen).

### normen ↔ energie (SIA 380/3 Leitungsdaemmung) und normen intern (SIA 180) — geprueft 2026-08-13 (Run 29)
- **Befund 1 (gedaempft, tief):** SIA 380/3 sagt selbst, dass die Daemmdicken «in den
  entsprechenden Energie- und Baugesetzen» stehen — genau die fuehrt `energie`. Kein Verweis.
  **Aktion:** einseitiger Querbezug in Pfadform (keine `[[Wikilinks]]` ueber die KB-Grenze, sie
  haetten in beiden KBs kein Ziel und liefen im naechsten `wissenscheck` als tote Backlinks auf).
  Neue Matrix-Zeile. Keine Rueckrichtung: MuKEn arbeitet mit Bauteilanforderungen, nicht mit dem
  QTOT-Verfahren, ein normativer Bezug ist unbelegt.
- **Befund 2 (Kern gedaempft, Zusatzbehauptung WIDERLEGT):** `energie` fuehrte SIA-180-Feuchtewerte
  aus einer Sekundaerquelle, obwohl das Primaerdestillat vorliegt. Die Kennwerte sind alle
  **richtig**; die vom Melder mitgemeldete «Bezugsgroessen-Falle» (30-70 % sei faelschlich als
  Komfortband statt als Materialschutz dargestellt) ist **widerlegt** — die Norm fuehrt das Band in
  ZWEI Bezuegen (Ziff. 2.4.1.3 thermische Behaglichkeit, Ziff. 6.4.1-6.4.3 Materialschutz), und der
  Artikel meint den richtigen. Die vorgeschlagene «Richtigstellung» haette eine korrekte Aussage in
  einen Fehler verwandelt. Gesetzt sind nur die ziffern-genauen Fundstellen.
- **Ertrag in der Gegenrichtung (N29-3, KB-intern in normen, nicht ausgefuehrt):** dem als
  «destilliert VOLLSTAENDIG» ausgewiesenen `sia-180-2014.md` fehlen Ziff. 2.4.1.3 und 6.4.4.
  Bewusst NICHT vom Cross-KB-Lauf nachgetragen — Normtext gehoert vom Lauf ergaenzt, der das
  Original vor sich hat. In normen/QUESTIONS angemeldet.

### normen (ABB-Reihe SIA 118/xxx) ↔ Skill ausschreibung — geprueft 2026-08-13 (Run 29)
- **Befund (gedaempft auf tief, KB→Skill):** `normen` Run 48 hat acht ABB-Erstdestillate und die
  Synthese `abb-reihe-verguetungs-und-ausmassgrenzen.md` angelegt, mit dem Kernbefund, dass die
  Reihe **nicht einheitlich kalibriert** ist (Geruest-Inklusivgrenze 2,5 m bei den Ausbau-Normen
  2006, 3,0 m bei Maler/Holzbau/Mauerwerk, beim Betonbau gar nicht inbegriffen). Im SKILL.md von
  `ausschreibung` fuehrte **kein einziger Weg** in die Normen-KB (grep auf «normen-referenz»,
  «wissen/normen», «Fundstelle»: null Treffer).
- **Aktion:** eigener Abschnitt «Verbindliche Norm-Referenz» im Skill, mit der Trennung zwischen
  **Warnkarte** (der Wiki-Artikel, Status `speculative`, sagt nur WO ein Unterschied liegt) und
  **Zitierquelle** (das gewerkspezifische Destillat bzw. das Original-PDF).
- **Bewusst NICHT getan** (Verifikation hat den Melder-Vorschlag hier gekippt): keine Ergaenzung in
  den beiden Goldstandard-LV-Dateien. Sie sind **maschinelle Abschriften echter .crbx** — eine
  Anreicherung faelscht die Abschrift und wird beim naechsten Parser-Lauf ueberschrieben; Position
  091100 ist NPK-113-Standardtext und steht identisch in 11 von 12 Dateien; und einen
  `speculative`-Wert in ein Kopier-Vorbild zu schreiben, ist die schaerfste Form von «als
  Zitierquelle verwendet». Offener Entscheid: ob ein Satz dazu in `goldstandard-lv/README.md` soll.
- ⚠ **Nachtrag 13.08.2026 (Run 30): der oben referierte Run-48-Befund «beim Betonbau gar nicht
  inbegriffen» ist FALSCH.** Er bleibt hier als Wiedergabe des damaligen Standes stehen, ist aber
  am Original widerlegt: SIA 118/262:2004 Ziff. 8.4.2.2 (S. 21) stellt die Arbeitsgerueste fuer
  Betonarbeiten **in den Einheitspreis**. Die daraus abgeleitete Formulierung im Skill
  `ausschreibung` ist in Run 30 korrigiert. Aufloesung siehe den Paar-Eintrag zuoberst.

### energie ↔ planungsgrundlagen (Minergie-Verfahren, EN-101b) — geprueft 2026-08-13 (Run 29)
- **Befund (gedaempft, mittel):** Governance-Luecke, kein Sachwiderspruch. Rund 20
  Minergie-Verfahrensdestillate liegen unwidersprochen in `energie`, waehrend die Matrix das
  «Energienachweis-Verfahren» pauschal `planungsgrundlagen` zuweist. Ein Lauf, der die Matrix
  woertlich nimmt, koennte sie faelschlich verschieben wollen.
- **Aktion:** neue Matrix-Zeile, die Minergie als privaten Standard ohne kantonalen Vollzug
  ausdruecklich `energie` zuweist und den einzigen Beruehrungspunkt (Blatt EN-101b) trennt:
  Formular und Verfahren bei planungsgrundlagen, Feldstruktur des Minergie-Exemplars bei energie.
  Gerichteter Querbezug im Destillat plus einzeiliger Zeiger an der EN-101b-Zeile.
- **Zwei Ausfuehrungsfehler der Vorlage korrigiert:** (1) Der Melder wollte den Run-11-Querbezug
  woertlich kopieren — dessen Wortlaut («dort fuehrend, nicht doppelt pflegen») haette die Fuehrung
  **stillschweigend abgetreten** und einem spaeteren Lauf die Rechtfertigung geliefert, das
  energie-Destillat zusammenzustreichen. (2) Der Eintrag sollte in `planungsgrundlagen/QUESTIONS.md`
  — die KB steht seit 30.07.2026 im **Wartungsmodus** und arbeitet dort nichts Neues ab; eine
  Bestandsmeldung waere liegen geblieben.
- **Pflicht-Vorbehalt an beiden Zeigern:** das belegte Formular ist Version 2022.4, «zu verwenden
  bis 31.12.2023», und der ZH-Nachweis laeuft seit 01.01.2026 zwingend ueber EVEN. Ein Zeiger ohne
  diesen Vorbehalt fuehrte einen Planer auf ein drei Jahre abgelaufenes Exemplar — schaedlicher
  als die Luecke.

### baurecht ↔ planungsgrundlagen — NACHKONTROLLE Run 28, vollstaendig bestanden — geprueft 2026-08-13 (Run 29)
- **Null Befunde, und das ist das Ergebnis.** Alle drei Korrekturen aus Run 28 sind unveraendert in
  Kraft: § 321 Abs. 2 PBG mit **beiden** Halbsaetzen an beiden Orten, wortgleich zum amtlichen
  Volltext (`baurecht/raw/260607_amtlich_zh_pbg.md` Z. 3304-3309) und mit Fassungsvorbehalt; der
  beidseitige Revers-Verweis samt mitgefuehrten Statusetiketten (baurecht `established`
  buchverifiziert ↔ planungsgrundlagen `emerging`, Quelle Boesch ZBl 1993); im Skill
  `behoerden-vorabklaerung` die Vorentscheid-Terminologie mit **zwingender** Kantonsangabe.
  Per `git show` geprueft: seit Commit `598be5e8` (07.08.2026 23:55) hat keine spaetere Aenderung
  etwas davon halbiert.
- **Freie Pruefung der Rechts-Achse ebenfalls sauber:** die geprueften planungsgrundlagen-Artikel
  (Wald-/Gewaesserabstand, Dispensrecht, Baueingabe-Verfahren) tragen durchgaengig «Kein
  Doppel»-Klauseln und benennen baurecht als fuehrende Rechtsquelle. Das wiederkehrende Muster
  «planungsgrundlagen schreibt Gesetzeswortlaut materiell fort» ist an dieser Achse **nicht mehr
  auffindbar** — erstmals seit es im Register steht.

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung (Kennwerte) — geprueft 2026-08-13 (Run 29)
- **Ein Befund WIDERLEGT** (der einzige des Laufs): die vorgeschlagene «Korrektur» haette eine
  woertlich belegte Abschrift aus einem realen JANS-Deliverable aus dem Wiki entfernt und das
  dokumentierte Deliverable-Muster verfaelscht. Nichts zu tun.
- **Werkzeug-Vorbehalt gesetzt (tief, praeventiv):** Die Kopffelder des Drittsoftware-Tools «hva»
  sind mit BKP-Spannen beschriftet, die rechnerisch nicht zutreffen («BKP 1-5 CHF/m² BGF» enthaelt
  BKP 9 mit, «BKP 0-5» enthaelt BKP 0-9). Die Warnung stand nur in `grobkosten`; gesetzt ist sie
  jetzt **am Ort der Verwendung** in `immobilienbewertung/wiki/projektstruktur-deliverables.md`.
  Kein Wert getauscht — die Zahlen dort stammen aus eigener Summenrechnung, nicht aus Kopffeldern.
- **Offen fuer Raphael (B5-nah, KB-intern):** Die SharePoint-Bibliothek heisst seit 07.08.2026
  «IMMO - 02 Standort INFO», der **lokale OneDrive-Spiegel auf dem MacBook Pro heisst am
  13.08.2026 weiterhin «IMMO - 02 UBSFS»**. Die Registry-Verweise zeigen auf den lokalen Basispfad
  und loesen deshalb heute korrekt auf; ein Namenstausch wuerde sie **kaputt** machen. Zu
  entscheiden ist zuerst, ob der lokale Spiegel nachgezogen wird — erst danach lohnt ein
  einmaliger vollstaendiger Sweep ueber ALLE lebenden Stellen (Registry, acht
  marktdaten-gemeinden-Frontmatter, investorenmarkt-makro, SKILL.md, agents/vergleichswert-analyst),
  nicht ueber einzelne herausgegriffene. **Der CHANGELOG-Eintrag von grobkosten/immobilienbewertung
  vom 08.08.2026, der lokalen Sync als nachgezogen meldet, ist messbar unzutreffend.**

### energie ↔ Skill stockwerkeigentum · energie intern (Impulsberatung) · firmengruendung-ch — geprueft 2026-08-13 (Run 29, Rotationsfeld)
- **Rueckweg gesetzt (tief, KB→Skill):** `energie` empfahl bei STWEG-Heizungsersatz ausdruecklich
  den Beizug des Skills `stockwerkeigentum`; der Skill enthielt zu Energie/Heizung/Waerme **null
  Treffer**. Ergaenzt ist ein Satz auf den **Skill-Router `energie`** — bewusst NICHT auf das
  Destillat: das ist eine `emerging`-Einzelquelle von 10.2021, und ein Skill, der beurkundungsreife
  Erzeugnisse produziert, wird nicht an ein solches Artefakt gebunden. Keine neue Matrix-Zeile: es
  gibt keine strittige Fuehrung, und `stockwerkeigentum` ist ein Skill ohne eigene KB — die Spalte
  «Fuehrende KB» liesse sich nicht sauber fuellen.
- **KB-intern, aber der lehrreichste Befund des Laufs (mittel):** Die Bauherren-FAQ **F219**
  behauptete noch am 13.08., es sei «nicht belegt, ab welcher Objektgroesse die Impulsberatung
  kostenpflichtig wird» — eine Wissensluecke, die **dieselbe KB am 08.08. selbst geschlossen**
  hatte (Impulsberatung fuer alle Gebaeudekategorien kostenlos, Unterschied nur im Zeitaufwand).
  Der Kern-Fehler ist damit keine veraltete Zahl, sondern eine **falsch gewordene Aussage ueber den
  eigenen Belegstand**. Nachgezogen sind F219, `destillate/INDEX.md` Z. 11 und die Quellenzeile;
  die CHF-1'500-2'000-Angabe bleibt als datierte Abschrift stehen, mit Vorbehalt daneben statt
  stillem Tausch. Prozessregel in energie/QUESTIONS: **ein «GEKLAERT» gilt erst, wenn die
  abhaengigen Stellen mitgezogen sind.** Zum Beleg selbst praezisiert: das Stichdatum 1.4.2022 ist
  ein **Einzelquellen-Beleg**, der Programmauftritt nennt kein Startdatum.
- **firmengruendung-ch: sauber.** Der hub-weite grep nach der alten, gestaffelten
  Handelsregistergebuehr (CHF 600, 0,2 Promille) fand **keine lebende Fundstelle** ausserhalb der
  KB; die Korrektur auf CHF 420 pauschal (GebV-HReg Anhang Ziff. 1.1-1.3) ist innerhalb der KB
  ueber alle drei Artikel konsistent durchgezogen.

### normen (intern, Folgen fuer alle Abnehmer) — Datenverlust durch den eigenen Health-Check-Reparaturlauf — geprueft 2026-08-07 (Run 28)
- **Befund (bestaetigt, hoch, vom Hauptprozess selbst am Original nachgemessen):** siehe achtes
  Struktur-Muster oben. Drei established-Destillate mit 15-Zeilen-Stubs ueberschrieben, dazu drei
  Falsch-Zeilen im `destillate/INDEX.md`, die dieselben Dateien ein zweites Mal als `speculative`
  fuehrten — der INDEX widersprach sich also selbst und wies zugleich den falschen Gegenstand aus.
- **Konvergenz als Qualitaetssignal:** Feld B (baurecht ↔ normen) und Feld F (energie ↔ normen)
  sind voellig unabhaengig auf denselben Commit gestossen, weil beide Felder Zahlen aus genau diesen
  Destillaten gegenlesen wollten und statt der Zahlen einen Stub vorfanden. Ein Lauf, der nur einem
  Feld folgt, haette das mit einiger Wahrscheinlichkeit nicht gesehen.
- **Aktion:** zurueckgenommen aus `f147dac4^`, INDEX bereinigt, in `normen/CHANGELOG.md` protokolliert.
  Die drei echt neuen Stubs (`sia-102-2003.md`, `sia-2032.md`, `links.md`) bleiben stehen.
- **Status:** erledigt, mit einem offenen Entscheid (Verbleib von `links.md`) und einer offenen
  Betriebsfrage (wer den Health-Check-Reparaturlauf so absichert, dass er nicht ueberschreibt).

### normen ↔ energie (Beleuchtung: SIA 387/4, SIA 2056, EN 12464-1) — geprueft 2026-08-07 (Run 28)
- **Befund (gedaempft, mittel):** Die Beleuchtungs-Zeile dieses Registers (Stand Run 26, 05.08.2026)
  war in einem Teil ueberholt. Sie sagt zweierlei; **Teil (a) haelt** — `normen` fuehrt weiterhin
  **kein** EN-12464-1-Primaerdestillat (nachgemessen, nur Sekundaernennungen) —, **Teil (b) ist
  ueberholt**: «einziger Zahlenbestand im Hub ist der AHB-Auszug 2007» stimmte schon am 05.08. nicht,
  weil SIA 2056 (Destillat vom 24.07.2026) E_vm-Werte je Raumnutzung fuehrt. Der Melder hat den
  Umschlag auf den 07.08. datiert und damit einen zweiten, feineren Registerfehler reproduziert;
  die Verifikation hat das korrigiert.
- **Aktion:** Nachtrag an der Zeile, **ergaenzend, nicht ueberschreibend** (viertes Struktur-Muster).
  Die Luecke **E-122-6 bleibt offen**, weil SIA 387/4 selbst auf SN EN 12464-1 verweist und weder
  Nutzungen ausserhalb der 43 SIA-2024-Standardnutzungen noch Wohnen/Notbeleuchtung abdeckt.
- **Abgespalten als KB-intern:** die Bezugsgroessen-Divergenz E_vm (SIA 2056 Bettenzimmer 300 lx
  gegen SIA 387/4 E_vm 100 lx bei E_0 = 300) ist in `normen/wiki/QUESTIONS.md` angemeldet, nicht hier
  — sie liegt vollstaendig innerhalb einer KB und ist damit kein Cross-KB-Bezug.
- **Zweite Achse (gedaempft, mittel):** `energie` hat am 03.08.2026 am SIA-Shop einen Nachfolger
  «SIA 387/4:2023» abgerufen, `normen` fuehrt die 2017er-Ausgabe `established`. Gesetzt ist ein
  **Vorbehalt plus Querverweis**, keine Fassungs- oder Statusaenderung: ob es eine neue Ausgabe oder
  eine Aktualisierung der 2017er ist, ist am Normtext nicht verifiziert.

### baurecht ↔ planungsgrundlagen ↔ Skill behoerden-vorabklaerung (Nebenbestimmungen, Revers, Vorentscheid) — geprueft 2026-08-07 (Run 28)
- **Befund 1 (gedaempft, mittel):** § 321 Abs. 2 PBG wurde in `planungsgrundlagen` nur mit dem
  Kann-Halbsatz gefuehrt, in `baurecht` nur mit dem Pflicht-Halbsatz. Kein Widerspruch der KBs
  untereinander, sondern **zwei halbe Zitate derselben Norm** — beide Halbsaetze sind jetzt an
  beiden Orten gefuehrt, mit Fassungsvorbehalt (die planungsgrundlagen-Quelle referiert die
  1991er-Fassung).
- **Befund 2 (gedaempft, hoch — der praktisch teuerste dieses Laufs):** Der Skill
  `behoerden-vorabklaerung` kannte den **foermlichen baurechtlichen Vorentscheid** nicht; er sprach
  vom «verbindlichen Vorbescheid», einem nicht-gesetzlichen Begriff. Nur der foermliche Vorentscheid
  bindet (Kt. ZH §§ 323/324 PBG, SZ § 84 PBG). Der Skill erzeugt Behoerdenfragen fuer reale Projekte;
  wer dort die Verbindlichkeitsstufe falsch etikettiert, verlaesst sich spaeter auf eine Auskunft,
  die nicht bindet. Praezisiert, mit zwingender Kantonsangabe.
- **Befund 3 (auf QUERVERLINKUNG heruntergestuft):** Die Revers-Typologie steht in beiden KBs. Kein
  Merge — `baurecht` fuehrt sie `established` und buchverifiziert, `planungsgrundlagen` `emerging`
  aus einer Quelle von 1993. Beidseitiger Verweis gesetzt, Statusetiketten mitgefuehrt.

### bauprodukte ↔ normen (BKP 261 Aufzuege, ERCO-Seitenzuschreibungen) — geprueft 2026-08-07 (Run 28)
- **Befund 1 (gedaempft, tief):** Verweis von der Elektro-Schnittstelle in `bkp-261-aufzuege.md` auf
  SIA 2056 Ziff. 6.23 gesetzt, mit Vorprojekt-Vorbehalt. Die Matrix-Zeile «Aufzug: Energie- und
  Leistungsbedarf» ist entsprechend ergaenzt.
- **Befund 2 und 3 (gedaempft, tief, aber lehrreich):** Zwei weitere Seitenzuschreibungen im
  ERCO-Artikel sind um genau eine Seite falsch (20°-Wandfluter-Winkel S. 136 statt 137;
  Deckenabstand-Beleg S. 138 statt 139), eine dritte hat Run 27 uebersehen (S. 87 statt 88).
  **Die Sachwerte stimmen alle.** Das ist der Unterschied zum Run-27-Fund: dort war die Zahl
  erfunden, hier ist nur die Fundstelle um eine Seite verrutscht. Beides sieht im Artikel
  identisch aus — deshalb wurde am Original-PDF nachgelesen statt geschaetzt. Korrigiert mit
  datiertem Vermerk, nie als stiller Zahlentausch.

### immobilienbewertung ↔ grobkosten ↔ Skill machbarkeit (Kennwerte und Datenquellen) — geprueft 2026-08-07 (Run 28)
- **Befund 1 (gedaempft, hoch — der teuerste Sachbefund dieses Laufs):** Der Skill `machbarkeit`
  schreibt fuer den Residualwert: «Gegenkontrolle immer ueber UBS-Fact-Sheet (Baulandpreis/m²) +
  Makleranalyse.» Der neue Quellenvergleich vom 07.08.2026 belegt am Original-PDF (UBS RE LFS
  Wangen SZ, S. 13, Quellenverzeichnis): **die UBS-LFS-Preisdaten stammen von Wuest Partner.** Die
  vermeintliche unabhaengige Zweitmeinung ist ein Derivat der ersten Quelle. Eine echte Zweitquelle
  liefern nur IAZI/CIFI oder die kantonale Handaenderungsstatistik. Vorbehalt gesetzt, Satz und
  Werte unveraendert.
- **Befund 2 (auf QUERVERLINKUNG heruntergestuft, KB-intern):** Der nicht reproduzierbare
  Healthcare-Endpunkt **1'420 CHF/m³ GV** wurde im selben Wiki an einer zweiten Stelle ohne den seit
  06.08. mitgefuehrten Vorbehalt zitiert. Kein Widerspruch zwischen KBs, sondern derselbe
  Weiterreich-Verlust wie in Run 27, eine Ebene tiefer. Vorbehalt an der Abholstelle ergaenzt; die
  Zahlen 1'420 und 4'250 bleiben als getreue Abschrift stehen (Bereinigung = Entscheid D10).
- **Befund 3 (gedaempft, mittel):** Der Quellenvergleich war ausserhalb des CHANGELOG nirgends
  verlinkt. Verweise gesetzt — und zwar auf den **Wiki-Artikel**, nicht auf den tagesdatierten
  outputs/-Report: ein Skill darf nicht an einem Lauf-Artefakt haengen.

### normen ↔ energie ↔ planungsgrundlagen (VKF 2001-15, drei Destillate nach normen Run 45) — geprueft 2026-08-06 (Run 27)
- **Lage:** Run 45 hat in der Nacht das Volldestillat der geltenden Ausgabe 01.01.2022 angelegt
  (`vkf-merkblatt-2001-15-solaranlagen-2022.md`, Status `speculative`). Damit lagen **drei**
  Destillate derselben Publikation nebeneinander.
- **Befund 1 (gedaempft, aber mit aktiver Sperrwirkung):** `energie` sagte an zwei Stellen, ein
  Destillat der Ausgabe 2022 sei «angemeldet, aber noch nicht erstellt» — seit einem Tag falsch und
  als Gegenwartsaussage formuliert. Wer dort nachschlaegt, arbeitet mit dem 2015er-Bestand weiter.
- **Befund 2 (gedaempft):** `planungsgrundlagen` nannte die als `superseded` markierte 2015er-Datei
  «fuehrendes Destillat» und fuehrte den 2-m-RWA-Abstand als Merkmal. Verifikator-Korrektur: der
  2-m-Wert ist 2022 **nicht verschwunden**, sondern in den Anhang gewandert und gilt dort weiter als
  massnahmenfreie Schwelle — der Melder haette ihn faelschlich als weggefallen ausgewiesen.
- **Befund 3 (bestaetigt):** Die beiden 2015er-Destillate verwiesen nicht vorwaerts auf die
  Nachfolgedatei (grep = 0), obwohl alle Einstiege aus anderen KBs auf sie zeigen. Verpuff-Muster
  **innerhalb** von `normen`, entstanden in Run 45 selbst. Run 45 hat die Uebergabe an die
  Empfaenger-KB ausserdem nirgends notiert (grep «planungsgrundlagen» im Laufbericht = 0).
- **Verifikator-Korrektur, die den Lauf traegt:** Alle drei Auflösungen wollten den Zeiger blank auf
  die 2022er-Datei setzen. Die traegt selbst `status: speculative` — Erstdestillat und Refuter-Runde
  liefen beide in Run 45, die unabhaengige Zweitverifikation steht aus. **Ein Zeiger ohne diesen
  Vermerk macht aus einem unverifizierten Destillat stillschweigend die Autoritaet.** Alle gesetzten
  Zeiger tragen den Statusvorbehalt.
- **Aktion:** Vorwaertsverweise und Kopfwarnungen in beiden 2015er-Destillaten, vier (nicht drei)
  «noch offen»-Saetze als datierte Nachtraege richtiggestellt, INDEX-Zeile ergaenzt,
  cr-Kabel-Praezisierung mit LV-Wirkung gesetzt (cr in horizontalen Fluchtwegen unabhaengig von
  jeder Brandlast verboten; die 200 MJ/Laufmeter betreffen nur die dort zulaessigen Nicht-cr-Kabel);
  zwei energie-Zeiger umgehaengt; planungsgrundlagen-Querbezug an **beiden** Stellen erledigt
  vermerkt. **Status: bereinigt.** Offen: Zwischenausgabe 01.01.2017 ohne eigenes Destillat,
  Zweitverifikation des 2022er-Destillats, SharePoint-Bestand unveraendert 2015, Merge-Frage der
  beiden 2015er (Entscheid Raphaels seit Run 26).

### normen ↔ energie (VKF-BRL 22-15 Blitzschutz, Doppelspurigkeit) — geprueft 2026-08-06 (Run 27)
- **Doppelspurigkeit ausdruecklich NICHT beanstandet:** Beide KBs fuehren ein Volldestillat der
  22-15. Der Melder hat die Klassen-Tabelle Zeile fuer Zeile verglichen — alle Paare A/B
  deckungsgleich, inklusive der 2017er-Verschaerfung Zeile c Spalte B = II. Die Entmaterialisierung
  war in Run 26 bereits abgelehnt worden; der anwendende Teil von `energie` (Healthcare-Kriterium,
  GVZ-Kontrollintervalle) ist ohnehin energie-Domaene.
- **Befund 1 (gedaempft):** `normen` kennt den Rueckzug der Ausfuehrungsnorm nicht — SNR 464022:2015
  ist seit 20.02.2024 durch SN 414022:2024 ersetzt, belegt in `energie` seit Run 23. Das
  normen-Register fuehrte weder eine Electrosuisse-Zeile noch **ueberhaupt eine Zeile zur BRL 22-15**,
  obwohl deren Destillat `links: [[REGISTER]]` setzt — ein toter Verweis. Die Verwendungsstelle
  weist den Skill `brandschutz` woertlich auf die zurueckgezogene Nummer an.
- **Befund 2 (gedaempft, Auflösung umgekehrt):** Der Melder wollte den Fassungsvorbehalt in `energie`
  als «am 05.08. in normen aufgeloest» schliessen. Der Verifikator hat nachgemessen: was normen
  belegt hat, ist der **Live-Abruf des 2017-PDF** — genau derselbe Abruf, den `energie` am 25.07.
  ueber dieselbe URL schon gemacht hatte. Ein Publikationsindex-Abgleich hat **nie** stattgefunden.
  Beide KBs stehen auf derselben Evidenz. Der Vorbehalt blieb deshalb stehen; stattdessen wurde die
  **normen-Frontmatterzeile zurueckgenommen**, die mehr behauptete als sie mass.
- **Aktion:** Electrosuisse-/CES-Zeile und BRL-22-15-Zeile im Register, Bezeichner an der
  Verwendungsstelle angehaengt, Datumsdrift in energie geheilt (last_updated 25.07. → 05.08.),
  Bring-Schuld N27-1 (VKF-Publikationsindex) registriert. **Wortlaut-Schutz:** alle VKF-Zitate mit
  «SNR 464022» bleiben unveraendert — wer dort ersetzt, verfaelscht das Zitat einer fremden Quelle.

### energie ↔ bauprodukte ↔ normen (ecoBKP 2026, Ausbau) — geprueft 2026-08-06 (Run 27)
- **Befund 1 (gedaempft, mit der groessten Reichweite in die Zukunft):** `bauprodukte` erklaerte
  ecoBKP 271 und 281 als «nicht destilliert» und verfuegte eine Sperrklausel gegen weitere Suche.
  Die Bedingung der Klausel war am 06.08. eingetreten. Verloren gingen genau die LV-tauglichen
  Vorgaben: Formaldehyd-Grenze mit 50-%-Regel, RC-Beton-Prioritaeten im Unterlagsboden,
  PVC-Ruecknahmepflicht, Asbest-Meldepflicht CV-/PVC-Flex 1970-1982 nach SUVA 66070.
- **Befund 2 (gedaempft, Auflösung ersetzt):** `energie` fuehrt SIA-385/1-Legionellenwerte ohne
  Ausgabe und ohne Verweis. Der Melder hielt sie fuer unverifiziert; der Verifikator hat die
  Praemisse **widerlegt** — dieselbe KB fuehrt ein `established`-Destillat mit reproduzierten
  Norm-Temperaturtabellen und dem im Volltext gelesenen BAG/BLV-Modul 11, die Werte sind KB-intern
  korroboriert. Der Verweis auf das abgeloetste normen-Destillat 385/1:2011 waere falsch gewesen.
- **Dritte Korrekturstufe (neu in diesem Lauf):** Der **Ausfuehrende** hat die Verifikator-Formel
  nochmals korrigiert. Die ecoBKP-Werte entsprechen den **Auslegungsvorgaben** der SIA 385/1, nicht
  der bedingten 3-K-Erleichterung; das 52-°C-Vorkommen ist der Waermeuebertrager-ohne-Speicher-Fall.
  Und die Stagnationsregel «> 3 Tage» ist im established-Destillat gar nicht belegt — sie wurde
  ausdruecklich als nicht mitkorroboriert gekennzeichnet statt stillschweigend mitgetragen.
- **Befund 3 (gedaempft):** Das Ausbau-Destillat trug keinen bauprodukte-Anschlussblock. Daempfer:
  «als einziges» war falsch, es waren **drei** Schwestern ohne Block; und die Datei war juenger als
  die Bloecke, die ihre Abwesenheit beklagten — der Vorwurf einer unterlassenen Uebergabe fiel weg.
- **Aktion:** Zwei Sperrklauseln als datierte Nachtraege aufgehoben (offene Teilfragen ausdruecklich
  offen gelassen: Gleitfestigkeitsklasse Terrazzo, Pflegeverhalten — dazu sagt auch 2026 nichts);
  Einordnungsblock zu den Legionellenwerten; positionsweise Anschlussbloecke fuer BKP 271/273/281
  (BKP 271 mit dem Hinweis, dass die dortige Blockade mangels Produktmaterial bestehen bleibt);
  Positionspruefung der drei blockfreien Schwestern ergab einen echten Anschluss je Datei und zwei
  Negativbefunde. `ecobkp-2026-methodik-und-uebersicht.md` bleibt offen.

### bauprodukte ↔ normen ↔ planungsgrundlagen (Beleuchtung, ERCO-Ratgeber) — geprueft 2026-08-06 (Run 27)
- **Befund 1 (bestaetigt, verschaerft):** «Buerolicht typischerweise UGR ≤ 19» im Abschnitt
  «Praxisrelevanz fuer JANS», ausdruecklich als Wert fuer eine Leuchtenausschreibung empfohlen —
  erfundener Beleg, siehe Struktur-Muster oben. Gestrichen, durch den Zeiger auf `normen` ersetzt.
  Der Wert wurde **nicht** ersatzweise ueber den AHB-Auszug hergeleitet (dessen Tabelle hat gar
  keine Buerozeile — das waere eine erfundene Herleitung an der Stelle einer erfundenen Zahl).
- **Befund 2 (gedaempft, zwei verschiedene Sachbezuege):** Zwei Verweise auf SIA 380/4, seit
  31.07.2019 archiviert, einer davon in der Nacht auf den 06.08. **neu** geschrieben — die Uebergabe
  aus `planungsgrundlagen` (dort seit 03.08. belegt) war nie angekommen. Verifikator-Korrektur:
  die beiden Stellen duerfen **nicht mit demselben Code** ersetzt werden. Die Energieeffizienz-Stelle
  gehoert auf SIA 387/4 bzw. SIA 2056:2019 mit ZH-Vollzug EVEN/EN-111; die Bemessungswert-Stelle
  gehoert auf EN 12464-1 — dort waeren 2056 und 387/4 beide falsch, weil sie Energie- und
  Leistungsbedarf regeln, nicht Bemessungswerte. Dieselbe Fehlerklasse wie das mechanische
  BKP-Ersetzen aus Run 25.
- **Befund 3 (gedaempft):** Registerdrift des Lesefortschritts, zum zweiten Mal in zwei Tagen —
  der Nachtlauf pflegt Artikel, INDEX, CHANGELOG, PROGRAMM und Inventar, aber nicht QUESTIONS.
  1 stale Register gegen 4 korrekte. Nachgezogen auf den **gemessenen** Stand (145, nicht 120).
- **Zusatzfund des Ausfuehrenden:** Der Deckenabstand 0,8 m war zweimal S. 87 zugeschrieben, steht
  aber auf S. 88. Der Wert bleibt belegt, nur der Zeiger war um eine Seite verschoben — additiv
  korrigiert. Eine Paraphrase-Drift beim Museumswinkel (30° «maximale Plastizitaet» statt «maximale
  vertikale Beleuchtung») wurde gemeldet, nicht auf Verdacht entfernt.
- **Aktion:** dazu die strukturelle Aenderung, dass die CHANGELOG-Zeile «Register nachgefuehrt:»
  kuenftig **alle vier** Register aufzaehlt — je mit «nachgefuehrt» oder «nicht beruehrt, weil …».
  Der Eintrag vom 06.08. listete drei und machte die Luecke damit unsichtbar statt sichtbar.

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung (Kennwerte) — geprueft 2026-08-06 (Run 27)
- **Befund 1 (gedaempft, groesster Frankenbetrag des Laufs):** Der obere Healthcare-Bandendpunkt
  1'420 CHF/m³ GV ist seit dem 12.07.2026 als quellenintern nicht reproduzierbar ausgewiesen
  (recompute 1'285) — der Vorbehalt steht aber 12 bis 14 Zeilen UNTER dem Uebergabe-Block und reist
  deshalb nicht mit. Drei Abnehmer geben ihn unqualifiziert weiter. Bei einem Pflegeheim-Neubau von
  10'000 m³ sind das rund CHF 1.35 Mio zu viel. In `grobkosten` fehlt zusaetzlich der Scope: der
  zitierte Band ist BKP 2, steht aber eine Zeile ueber der BKP-1-5-Deklaration derselben Seite.
- **Zwei unabhaengige Nachrechnungen** (Verifikator und Ausfuehrender, je alle acht Zeilen): sechs
  reproduzieren exakt, nur Averecura (1'285 statt 1'420) und **Vella** (1'021 statt 845) weichen ab.
  Der reproduzierbare Rohband lautet **826-1'285** — ausdruecklich als Rohband ausgewiesen, nicht als
  neuer geltender Band; das bleibt Entscheid Raphaels (D10).
- **Befund 2 (gedaempft, Auflösung dreifach korrigiert):** Das hauseigene Umbau-Kostenband
  «Spektrumskosten» liegt nur in `immobilienbewertung`; der Skill, den die Frage triggert, kennt es
  nicht (Nullmessung beidseitig). Verifikator: (a) die Matrix war falsch zitiert — sie regelt CHF/m²
  NF gar nicht, die Zustaendigkeit war **ueberhaupt nicht geregelt**; (b) keine Vorrangregel
  formulieren, die Wege sind deckungsgleich kalibriert; (c) der Bezugsflaechen-Vorbehalt muss
  zwingend mitwandern (NF gegen HNF gegen GF).
- **Befund 3 (gedaempft):** Die offene BKP-Scope-Frage zu den Neuwert-Richtwerten Tab. 2 kennt nur
  `grobkosten`. Verifikator: **nicht** in den Doppelfuehrungs-Block aufnehmen — der behandelt
  Divergenzen zwischen KB-Staenden, der Scope ist eine Eigenschaft der Fremdquelle, die beide
  gleichermassen trifft; als «3.» waere er falsch etikettiert. Richtig ist ein eigener Vorbehalt
  unter der Tabellen-Ueberschrift, samt Warnung vor Doppelzaehlung (die Realwert-Formel addiert
  Aussenanlagen und Baunebenkosten bereits separat).
- **Aktion:** Vorbehalt in den Uebergabe-Block gehoben, Kopfblock `grobkosten` auf den Stand des
  eigenen Healthcare-Abschnitts, **Parameter-Set `healthcare-neubau-zh.json` mitqualifiziert** (die
  am meisten konsumierte Kopie, im Erstvorschlag vergessen), neue Wissensluecke D13, Verweisblock im
  Skill `kostenschaetzung` mit Provenienz und Bezugsflaechen-Vorbehalt.

### twin ↔ spec ↔ claude-code (Methoden- und Selbstbeschreibungs-Achse) — geprueft 2026-08-06 (Run 27)
- **Befund 1 (WIDERLEGT — der einzige des Laufs):** Gemeldet war, die Mitleser-Regel des
  twin-Fidelity-Reviews habe das kompilierte Gehirn nie erreicht und stehe gegen die in jeder
  Session aktive Rule `anrede-kontakte`. Der Verifikator hat gemessen: der Block steht seit
  06.08. 06:07 in `rules/jans-dna-facetten.md`, samt Merkregel «ein Ruecksprung ist kein Abkuehlen,
  sondern fast immer ein Cc». Der behauptete Schaden ist gegenstandslos. **Und die vorgeschlagene
  Aktion waere unzulaessig gewesen:** die Klausel in `anrede-kontakte.md` ist von Raphael am
  29.07.2026 ausdruecklich freigegeben — der Wissens-Chef relativiert eine Freigabe nicht selbst.
  Der Restpunkt (Cc-Pruefung der vier Januar-Mails) gehoert in den naechsten regulaeren twin-Lauf.
- **Befund 2 (bestaetigt):** Die budgetfuehrende KB `claude-code` stand an drei Stellen auf einem
  Stand, den die Facetten-Auslagerung **46 Minuten spaeter** ueberholt hatte — inklusive des
  Schlusssatzes «die Kontext-Diaet 2.0 ist rechnerisch rueckgaengig gemacht» und der Ueberschrift
  «Groesster Einzelposten: rules/jans-dna.md». Gemessen: 89'746 B / 21 Importe / ~22'436 Token,
  von zwei Agenten unabhaengig auf das Byte bestaetigt.
- **Pflicht-Zusatz, den beide Melder unterschlugen:** Die Kosten sind **verschoben, nicht
  verschwunden.** `rules/jans-dna-facetten.md` ist kein @-Import, aber vor jedem ausgehenden
  Texterzeugnis zu lesen — jede textproduzierende Session zahlt sie weiterhin, nur lazily.
  Ohne diesen Satz liest die naechste Facetten-Erweiterung «26 kB Luft».
- **Befund 3 (gedaempft):** Derselbe Artikel bestreitet den Wachstums-Riegel in `build_dna.py`.
  Verifikator: der Riegel kam am 03.08. 22:55, der Artikelstand vom 03.08. 22:46 — der Satz war
  **neun Minuten** wahr. Der Ausfuehrende hat drei weitere Vorlagenfehler gemessen: Auslagerung
  23:11 statt 23:08; **drei** Riegel-Ausloesungen statt zwei; und die Reserve gilt fuer den Block
  zwischen den Sentinels (29'962 B, 38 B Rest), nicht fuer die Datei (31'190 B) — die Dateigroesse
  als «Reserve» auszuweisen waere schlicht falsch gewesen.
- **Aktion:** Artikel fortgeschrieben ohne den Stichtag zu ueberschreiben, Netto- und
  Isolationswirkung getrennt ausgewiesen (-25'736 B netto ueber drei Tage; die Auslagerung allein
  -28'558 B, im selben Zeitraum +2'822 B Wachstum der uebrigen Rules), `MAX_AUTO_BYTES` unangetastet
  und als Entscheid Raphaels ins Fristen-Register eingetragen.

### normen ↔ energie ↔ planungsgrundlagen (VKF 2001-15 Solaranlagen + BRL 22-15 Blitzschutz) — geprueft 2026-08-05 (Run 26)
- **In ZWEI unabhaengigen Feldern konvergiert** (F1 und F3) — dasselbe Vorsortier-Signal wie in
  Run 25. Der Verifikator des zweiten Felds hat den Befund danach verschaerft und beide
  Original-PDFs selbst geladen.
- **Befund 1 (bestaetigt, hoechste Praxisfolge des Laufs):** Beide normen-Destillate zum
  BSM 2001-15 fuehrten «Unterdachbahnen duerfen aus RF4 (cr) bestehen». Geltend: «muessen
  mindestens aus **RF3 (cr)** bestehen». Aus einer Erlaubnis wurde eine Pflicht, und RF4(cr) ist
  die guenstige Standardbahn — ein falscher Bauteilwert, der ins LV wandert.
  **Der Delta stammt aus der Ausgabe 01.01.2017, nicht 2022** (Zwischenfassung gezogen, Satz dort
  woertlich). Hausbestand neun Jahre ueberholt. Zwei weitere Deltas bisher unbemerkt: Schwelle
  «> 1200 m²» statt «≥ 1200 m²», RWA-2-m kein Loesungsansatz-Wert mehr.
- **Befund 2 (bestaetigt):** BRL 22-15, Anhang Ziff. 2, **Zeile c (Hochhaeuser > 30 m), Spalte B
  2015 = III, geltend II** — einzige geaenderte Zahl der Tabelle a-j, Anforderung ERHOEHT.
- **Verifikator-Korrektur, wichtiger als der Befund:** Der Melder wollte die Tabelle im
  energie-Destillat streichen und auf normen verweisen lassen, weil normen laut Matrix fuehrt.
  Das energie-Destillat trug aber die AKTUELLE Fassung mit dem richtigen Wert II. Der Fix haette
  den einzigen Ort im Hub mit dem richtigen Hochhaus-Wert durch den falschen ersetzt.
  **Fuehrung heisst Zustaendigkeit, nicht Vorrang der Datenlage** — formell bleibt normen fuehrend,
  inhaltlich musste normen auf den Stand von energie gehoben werden.
- **Gemeinsame Ursache, neu als Matrix-Zeile:** Das SharePoint-Archiv haelt fuer beide
  Publikationen an beiden Ablageorten byte-identisch nur die Fassung 2015 — beim Blitzschutz sogar
  im Ordner «Brandschutzrichtlinien 2015-17-22». Jeder Lauf, der «Primaerquelle SharePoint» liest,
  reproduziert den Fehler.
- **Zusatzbefund (intra-KB-Blindheit):** `normen/destillate/vkf-brl-aenderungen-2017.md` fuehrt den
  Blitzschutz-Delta **seit dem 13.07.2026**. Die KB kannte ihn intern bereits; die beiden
  Destillate waren nur nie verlinkt. Neue Variante des Verpuff-Musters — diesmal **innerhalb**
  einer KB. Backlink gesetzt.
- **Aktion:** Fassungswarnungen, Delta-Bloecke und zweiwertige Vermerke in drei normen-Destillaten,
  INDEX, REGISTER, QUESTIONS (Bring-Schuld mit URL/MD5), norm-inventar; energie-Belegpflege und
  Archiv-Falle; planungsgrundlagen-Kopfnotiz geklaert. **2015er-Werte nicht ueberschrieben**
  (fuer ihre Fassung korrekt, Altprojekte). **Status: bereinigt**, Re-Destillat 2017/2022 offen.

### normen ↔ energie (VKF-FAQ 2005-01 Lithium/LFP) — geprueft 2026-08-05 (Run 26)
- **Befund (bestaetigt):** Beide KBs fuehrten BSM 2005-15 materiell und ohne Querverweis (grep
  beidseitig 0). Die laut Matrix fuehrende KB `normen` trug einen ⚠-Vorbehalt, die FAQ sei «im
  Original nicht verifiziert» — waehrend `energie` sie drei Tage zuvor vollstaendig gelesen hatte.
  Uebergabe-Versagen, nicht Abstraktionsfehler.
- **Verifikator-Korrektur:** Die energie-Fassung durfte NICHT kopiert werden. Am Original fanden
  sich dort zwei Luecken — das komplette Lueftungs-Bullet (feuerwiderstandsfaehige Trennung,
  Brandschutzklappen mit Kanalrauchmelder) und eine Verkuerzung, die die groessere Lockerung
  (LFP ab 100 kWh im Gebaeude zulaessig statt Freiaufstellung) unsichtbar machte. Der mechanische
  Fix haette beide Luecken in die fuehrende KB eingefroren.
- **Zweite Korrektur:** Die FAQ ist «ein moeglicher Loesungsansatz» mit Fusszeile «Erlaeuterung /
  Interpretation» — keine verbindliche Vorgabe. «EI 30 genuegt» gehoert nicht ins LV. Vorbehalt in
  normen, energie und BAUHERREN-FAQ F128 gesetzt.
- **Dritte Korrektur:** Der Melder zitierte den SIA-493-Praezedenzfall als Beleg fuer
  «wechselseitig verlinken». Der etablierte das Gegenteil — die fuehrende KB zieht nach, die
  anderen verweisen. Symmetrische Verlinkung waere ein Matrix-Verstoss.
- **Stichtagsdisziplin:** `verifiziert: 260728` und `gelesen:` angehaengt, nicht ueberschrieben;
  der ⚠-Block als erledigt ausgewiesen statt geloescht. **Status: bereinigt, Paar aus der Rotation.**

### energie ↔ bauprodukte (eco-BKP, zweite Pruefung: Ausgabe 2026) — geprueft 2026-08-05 (Run 26)
- **Befund (bestaetigt, aber im Umfang enger als gemeldet):** Die in Run 25 gesetzten Zeiger auf den
  eco-bau-Stand **2008** waren einen Tag spaeter durch die destillierte Ausgabe **2026** ueberholt.
  Nullmessung bestaetigt (grep «ecobkp-2026» ueber bauprodukte = 0, «bauprodukte» ueber die
  2026er-Destillate = 0).
- **Zwei Melder-Teilbehauptungen widerlegt:** «keine Richtung kennt die andere» (energie nennt
  `bauprodukte/wiki/dachbegruenung-systeme` sehr wohl — blind ist nur die Destillat-Ebene) und
  «genau dieselben BKP-Positionen» (**ecoBKP 271 und 281 sind NICHT destilliert**).
- **Staerkster Treffer vom Melder uebersehen:** BKP 224 Dachbegruenung — der einzige Fall, in dem ein
  bestehender bauprodukte-Artikel einen vollstaendigen 2026er-Gegenpart hat.
- **Aufloesung positionsweise statt pauschal:** 214/215 und 225 (inkl. Emicode EC1/EC1plus als
  Nachfolger des archivierten SIA-493-Rasters) bekommen den 2026er-Zeiger; **281 bekommt einen
  ausdruecklich negativen Nachtrag** (ein Zeiger auf die Gebaeudehuelle waere ein Sachbezugsfehler);
  **271 bleibt beim Stand 2008**. Der Satz zu **BKP 225.4** bleibt wortgleich — am Original gilt er
  fuer 2026 unveraendert. Der ecobau.ch-Schlusssatz bleibt (271/281 nur dort, Destillate `emerging`,
  ecoBKP wird jaehrlich fortgeschrieben). **Status: bereinigt.**

### baurecht ↔ energie (Waermepumpen-Aussengeraet, Grenzabstand) — geprueft 2026-08-05 (Run 26)
- **Befund (bestaetigt):** Einseitige Verlinkung — `energie` verwies auf `baurecht`, nicht umgekehrt,
  obwohl der baurecht-Artikel WP-Aussengeraete ausdruecklich als Anwendungsfall der
  1,5-m/2-m²-Bagatellschwelle nennt.
- **Form korrigiert:** Ein blanker Wikilink waere in `baurecht/wiki` ein **toter Link** gewesen
  (keine gleichnamige Datei), den der naechste `wissenscheck` als neuen Mangel meldet. Gesetzt ist
  die Backtick-Pfadform, die derselbe Artikel 14 Zeilen weiter oben bereits fuehrt.
- **Substanz statt Link:** Die zwei Warnungen stehen an der Fundstelle selbst — Reichweite nur
  Kt. ZH, im Kt. SZ keine Bagatellschwelle (§ 61 PBG SZ, 2,50 m Nebenbauten), und die Subsumtion
  «WP-Aussengeraet = Gebaeude» ist fuer ZH/SZ nicht amtlich entschieden.
- **Zahlenkollision vermieden:** im selben KB steht bereits ein «2,5 m» fuer Erdwaermesonden (ZH) —
  die SZ-Zahl traegt Kanton, Anlagenart und Norm im selben Satz.
- **Fuehrung geteilt und ausgesprochen:** baurecht der PBG-ZH-Wortlaut, energie die WP-Anwendung
  samt SZ-Recht und Rechtsprechungslage. **Status: beidseitig verlinkt.**

### bauprodukte ↔ normen ↔ energie (Beleuchtung / EN 12464-1) — geprueft 2026-08-05 (Run 26), GEDAEMPFT
- **Gemeldete Gleichsetzung widerlegt:** Die beiden Luecken sind nicht dieselbe. `energie` braucht
  raumbezogene Bemessungswerte (E_m, UGR, W/m²), `bauprodukte` Lampen-/Leuchtenkennwerte (lm/W, Ra,
  Farbtemperatur, BKP 233). Ein Herstellerratgeber (ERCO) ist fuer EN-Normwerte ohnehin keine
  zulaessige Quelle. Keine gemeinsame Bring-Schuld — hoechstens klopfen beide bei `normen` an.
- **Der schwerere Defekt am selben Ort, vom Melder nicht gesehen:** **E-122-6 war seit 03.08.2026
  ueberholt.** Run 24 hatte festgestellt, dass die EN-12464-1-Uebersichtstabelle im Bestand liegt
  und mit Zahlenwerten destilliert ist — und das in den Artikel geschrieben, **aber nie ins
  Register**. Neue Variante des Verpuff-Musters: **«Korrektur verpufft im Register»**.
- **Eintrag bleibt OFFEN**, nur qualifiziert: der Auszug gibt den Stand vor EN 12464-1:2011 /
  SIA 2024:2006 wieder. Offen ist die geltende Ausgabe, nicht «Zahlen ueberhaupt». `normen` fuehrt
  bis heute **kein** EN-12464-1-Destillat (nachgemessen) — echte Registerluecke, neue Matrix-Zeile.
- **Registerdrift nebenbei korrigiert:** der ERCO-Lesefortschritt war im Register bei 53 Seiten
  stehen geblieben, der Artikel steht bei 95 — **am Frontmatter gemessen, nicht aus der Vorlage
  uebernommen** (die nannte 73). Sonst haette der naechste Lauf S. 74-95 doppelt gelesen.

### grobkosten ↔ immobilienbewertung ↔ skills/kostenschaetzung (HNF/GF-Faktor) — geprueft 2026-08-05 (Run 26), GEDAEMPFT
- **Run-25-Wertung richtiggestellt:** Zeile 32 der Wuest-Referenz ist **kein Abnehmer** des
  Regelgeschoss-Entscheids. Die Stelle rechnet einen **Ganzgebaeude**-Benchmark um, und das 0.70 ist
  die **Effizienzannahme der Quelle selbst** (Wuest-Academy-Folie S. 34, Primaerquelle gelesen).
  Aendern haette das Zitat verfaelscht; auch die Richtung stimmte nicht (korrigiert waere 4'301 bis
  4'590, also HOEHER statt tiefer).
- **Der echte Abnehmer lag eine Tabelle weiter:** Zeile 96 derselben Referenz fuehrt
  «HNF ≈ 0.70 × GF» als **JANS-Richtwert ohne Bezugsgroesse**, in einer Tabelle mit
  Ganzgebaeude-Richtwerten. Zahl nicht geaendert (haengt am Fachentscheid), Vorbehaltsblock gesetzt.
- **Ticket T-Regelgeschoss bleibt offen** und gewinnt eine zweite, kostenwirksame Facette. Beide
  Register ergaenzt, nichts ueberschrieben.


### energie (eco-BKP-Beschaffungskorpus Run 123) ↔ bauprodukte — ERST-PRUEFUNG 2026-08-04 (Run 25)
- **Ausgangsmessung:** grep «bauprodukte» ueber `wissen/energie/` = 0 Treffer, grep «energie»
  ueber `wissen/bauprodukte/` = 0 Treffer. Zwei KBs, die beide nach BKP gliedern, kannten
  einander in keiner Richtung — waehrend `bauprodukte` genau die BKP-Positionen als GEBLOCKT
  fuehrte (Punkt 9: BKP 214/271, Ordner leer), die der neue eco-Bestand jetzt abdeckt.
- **Aktion:** Erst-Verlinkung auf der bauprodukte-Seite gesetzt (Teil-Antworten zu Punkt 3
  Dachbegruenung, Punkt 8 Terrazzo/Bodenbelaege, Punkt 9 Holzbau/Trockenbau), je mit
  **Datierungsvorbehalt Ausgabe 2008** und dem ausdruecklichen Vermerk, dass die Blockade
  dadurch **nicht aufgehoben, sondern nur teilweise umgangen** ist. Zu BKP 225.4
  Brandschutzbekleidungen traegt der eco-Bestand nichts bei.
- **Fuehrung neu gesetzt:** siehe Matrix-Zeile «Oekologische Materialvorgaben in der
  Beschaffung». **Status: verbunden, Erst-Pruefung abgeschlossen.**

### normen ↔ energie (SIA 493 archiviert) — geprueft 2026-08-04 (Run 25)
- **Befund (bestaetigt, hoch, in ZWEI Feldern unabhaengig gefunden):** `normen` fuehrte SIA 493
  «Deklaration oekologischer Merkmale von Bauprodukten» im REGISTER als «gilt» und das Destillat
  als `status: established`. **Die Norm ist seit dem 30.06.2022 archiviert** (shop.sia.ch,
  Produktseite SN 550493: «Gueltig ab: 01.03.1998», «Gueltig bis: 30.06.2022, archivierter
  Titel!», am Herausgeber abgerufen und verifiziert 04.08.2026). **Kein 1:1-Nachfolger belegt.**
- **Praxisfolge, die den Befund teuer macht:** das JANS-Goldstandard-LV Tueren
  (`skills/ausschreibung/referenzen/goldstandard-lv/272-tueren-LV622.md`) fuehrt drei
  NPK-Positionen (081110, 081210, 081310), die eine Produktedeklaration nach SIA 493 verlangen —
  ein Nachweis, den es nicht mehr gibt. Dazu drei Devis-Klauseln im neuen eco-Bestand.
- **Aktion:** in `normen` an drei Orten ausgewiesen (Destillat-Frontmatter mit neuem Feld
  `gueltigkeit` + Warnblock, INDEX, REGISTER Run-5-Zeile); vier Warnvermerke in `energie`;
  Fassungswarnung im Goldstandard-LV. **Nicht angefasst:** die Stichtags-Zeile (Stand
  25.02.2013), dort nur Querverweis. **Status: bereinigt**, Nachfolgefrage offen.

### normen ↔ energie ↔ baurecht (SIA 430:2023 Bauabfaelle, VVEA-Rechtsstand) — geprueft 2026-08-04 (Run 25)
- **Befund 1 (bestaetigt, hoch):** SIA 430 Ausgabe 1993 galt bis 31.07.2023; seit 01.08.2023 gilt
  **SIA 430:2023 «Vermeidung und Entsorgung von Bauabfaellen»**, der Organisationsteil neu in
  **SIA 118/430:2023** (shop.sia.ch, verifiziert 04.08.2026). Ausgabe 2023 **nicht im Haus**.
  Aktion: REGISTER-Bemerkungsspalte, `ersetzt_durch` im Destillat, Bring-Schuld in QUESTIONS mit
  ausdruecklichem Vermerk, dass die Existenz bereits verifiziert ist (kein zweites Bezahlen
  desselben Schritts).
- **Befund 2 (bestaetigt, aber vom Verifikator GEDAEMPFT):** der VVEA-Rechtsstand in `energie`.
  Der Melder sah ein falsches Entsorgungskonzept; der Verifikator wies nach, dass **keine
  Hub-Datei Art. 20 VVEA inhaltlich wiedergibt** und die einzige materielle Aussage sich auf
  **Art. 16** stuetzt, der unveraendert gilt. Es ist **Belegpflege, keine Fehlerkorrektur**.
  Umgekehrt war das Revisionsbild des Melders unvollstaendig: vier Revisionen, darunter
  **AS 2026 357, in Kraft seit 01.08.2026**. Aktion: artikelgenauer, datierter Rechtsbasis-Zeiger.
  **Fuehrung:** Erlasswortlaut bleibt bei `baurecht`, Anwendung bei `energie`. **Status: bereinigt.**

### energie ↔ normen (SIA 118 Vertragshierarchie, Attributionsfehler der Quelle) — geprueft 2026-08-04 (Run 25)
- **Befund (bestaetigt, hoch — Ursache anders als gemeldet):** der neue Wiki-Artikel gab eine
  Stadt-Zuercher Dreierliste als Vertragshierarchie «gemaess SIA 118» aus. Der Melder vermutete
  einen Abstraktionsfehler des Wiki; der Verifikator fand die Ursache in der **Primaerquelle
  selbst** (HBD, OEKO 3.14.C vom 29.08.2006: «Gemaess SIA 118 gilt folgende Reihenfolge»).
  Materiell **unterschlaegt die Dreierliste die drei Raenge oberhalb des LV** (SIA 118:1991
  Art. 7/21).
- **Regel daraus:** ein Attributionsfehler der Quelle muss **als solcher benannt** werden — eine
  blosse Kennzeichnung «AHB-spezifisch» laesst ihn beim naechsten Destillieren erneut ableiten.
- **Aktion:** korrigiert an **drei Propagationsstellen** (Wiki-Artikel, Destillat
  `eco-bau-devis-und-baustellenkontrolle`, `destillate/INDEX.md`). **Status: bereinigt.**

### energie ↔ normen ↔ bauprodukte (Dachbegruenung SIA 312:2013) — geprueft 2026-08-04 (Run 25)
- **Befund (bestaetigt, hoch):** der neue eco-Bestand schrieb die LV-Vorgabe von 2008 fort
  («Gruendachrichtlinie und SFG-Label als verbindlicher Qualitaetsstandard ins LV»), obwohl
  SIA 312:2013 seit dem 13.07.2026 destilliert im Haus liegt und ihrerseits bereits auf
  `bauprodukte` zeigt. grep «312» ueber die beiden eco-Destillate: 0 Treffer.
- **Sachstand (am Norm-Destillat belegt):** massgebend seit 01.11.2013 SIA 312:2013 (SN 564312),
  ABB in SIA 118/312 (Ziff. 0.2), ergaenzt SIA 271/318 (Ziff. 0.1.2). Die Gruendachrichtlinie ist
  dort **kein Qualitaetsstandard, sondern Pruefverfahren** (Ziff. 2.5.5 «oder gleichwertige
  Pruefmethoden», Ziff. 4.3.2) und steht nur im informativen Anhang C.
- **Aktion:** typisierte Fussnote an der Stelle + eigene Zeile in der Aktualitaetspruefung;
  Selbstwiderspruch der Schlusszeile aufgeloest. **Bewusst NICHT** in den Methodik-Wiki-Artikel
  (0 Treffer Dachbegruenung — dort waere es ein Fremdkoerper). **Status: bereinigt**, heutiger
  Bestand von SFG/Label offen (E-R25-1).

### baurecht ↔ planungsgrundlagen ↔ projekt-lessons (revBZO Thalwil, negative Vorwirkung) — geprueft 2026-08-04 (Run 25)
- **Befund 1 (bestaetigt, hoch — Aufloesung des Melders verworfen):** zwei baurecht-Erzeugnisse
  gaben fuer Klein-/Anbauten gegensaetzliche Arbeitsanweisungen. Der Melder wollte den
  Doppelnachweis «auf die markierten Bestimmungen begrenzen»; der Verifikator wies das als
  irrefuehrend zurueck: **die 50-m²-Pruefung faellt nicht weg, sie hat eine andere
  Rechtsgrundlage** — § 2a Abs. 1 ABV (kantonal, in Kraft) als **Begriffsgrenze**, nicht als
  revBZO-Nachweisgrenze. Richtige Anweisung: Art. 24 Abs. 1 BZO + § 2a ABV + Art. 31/50 revBZO
  (Gruenflaechenziffer/Umgebungsgestaltung).
- **Befund 2 (vom Verifikator ZUSAETZLICH gefunden, nicht gemeldet):** «GFZ» in der
  Bemerkungsspalte meint die **Gruenflaechenziffer**, nicht die Geschossflaechenziffer
  (Nachzaehlung am raw-Volltext: `Geschossflaechenziffer` 0 Treffer, `GFZ` genau 1 Treffer).
- **Befund 3 (bestaetigt, aber GEDAEMPFT):** der Vorwirkungs-Abschnitt in `planungsgrundlagen`
  ist **nicht mangelhaft, sondern quellenbegrenzt** und **muss bleiben** — er erklaert, warum das
  Connector-Flag `revision_laeuft` rechtliche Bedeutung hat. Gesetzt wurde nur der Zeiger in
  beide Richtungen. Die absatz-/zellengenaue Grau-Markierung ist **Thalwiler
  Publikationspraxis**, kein ZH-weiter Regelfall — so gekennzeichnet.
- **Aktion:** Korrekturvermerk am Output (nicht umgeschrieben), Arbeitsregel 2 der Korpus-Queue
  praezisiert, Zeiger in allen drei KBs, K68 in planungsgrundlagen, 50-m²-Frage in baurecht mit
  Erlassbeleg **geschlossen**. **Status: bereinigt.**
- **⚠ Offen und terminkritisch:** Ziff. 4.5 des versandbereiten Begleitbeschriebs (2414 Thalwil,
  Termin 06.08.2026) traegt weiterhin den falschen Satz zu Art. 45 revBZO. Ausgehendes
  Erzeugnis, Freigabe Raphael.

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref (Neuwert-Richtwerte, Teuerungsanker) — geprueft 2026-08-04 (Run 25)
- **Befund (bestaetigt, hoch):** dieselbe Fremdtabelle (Schaetzungsanleitung Kap. 5) wird in
  beiden KBs materiell gefuehrt — `grobkosten` nur mit der Band**unter**grenze,
  `immobilienbewertung` mit dem ganzen Band. Dazu **zwei verschiedene Teuerungsanker**:
  1.334 (01.04.2004 = 907.6) gegen 1.346 (01.04.2003 = 899.2), rund 1 % Abweichung.
- **Aktion:** gegenseitiger Zeiger + Vorbehalt in beiden KBs; **kein Stand ueberschrieben**.
  Zusaetzlich ein falsifizierter Cross-Check-Schluss in `grobkosten` ausgewiesen (echte
  MFH-Spanne 471-1'010 statt der behaupteten Unterschreitung des Seed-Bands).
- **⚠ ZWEI OFFENE ENTSCHEIDE fuer Raphael** (Bericht Abschnitt 10): welcher Anker hub-weit gilt
  (Empfehlung 1.346, weil die Tabelle im Kopf «Stand 2003» traegt) und ob die Doppelfuehrung
  durch einen reinen Verweis ersetzt wird. **Merkposten:** die Fehlerwurzel liegt in
  `grobkosten/raw/`; ohne Freigabe dort leitet ein Folgelauf denselben Fehler erneut ab.
- **Status: teilbereinigt** (Vorbehalt gesetzt, Zahlenentscheid offen).

### Skills ↔ normen ↔ Rule bkp-2017-referenz (Phantomcodes BKP 271.10 und 271.13) — geprueft 2026-08-04 (Run 25)
- **Ausgangslage:** Ticket N43-1 aus dem Normen-Run 43 (04.08.2026) — der Code 271.10 existiert
  im BKP 2017 nicht, 13 Dateien offen. Dieser Lauf hat den Durchgriff gefahren.
- **Befund 1 (bestaetigt):** `skills/ausschreibung/SKILL.md` fuehrte den Code im **Formatbeispiel
  der LV-Titel-Konvention**. Die **Ursache** liegt daneben: wenige Zeilen darunter definiert
  derselbe Skill Gewerk-Ordnernamen nach dem **Stadt-Zuercher Katalog 2008** («251.00»), der
  zweistellige Nachkommastellen kennt. Zwei Kataloge, gleiche Schreibweise, keine Kennzeichnung.
- **Befund 2 (bestaetigt, Zielcode vom Verifikator KORRIGIERT):** `skills/brandschutz/SKILL.md`,
  vier Stellen — richtig ist **271.1 Trockenbauarbeiten**, nicht 271.0 Innenputze (siehe
  Struktur-Muster oben). Dieselbe Zeile erfand zusaetzlich **271.13**.
- **Befund 3 (neu, zweite Fehlerfamilie):** «271.13» ist eine reale **buerointerne Los-Nummer**
  (KISPI `LOS_271.13`). Das Skill-Template `build-factsheet-ertuechtigung.template.js` schrieb an
  fuenf Stellen «BKP 271.13» in den **Dokumenttext** — also in ein Erzeugnis an Bauleitung,
  Bauherrschaft und Unternehmer. Umgestellt auf `LOS 271.13 (… BKP 271.1)`.
- **Aktion:** ausschreibung + Katalog-Warnblock, brandschutz (4 Stellen), 3 normen-Destillate
  (Sachbezug je Stelle geprueft; einmal bewusst **281.0 Estriche** statt geraten), Template
  (5 Stellen), Rule `bkp-2017-referenz.md` um Sachbezugs-Regel und Los-Nummer-Klasse ergaenzt.
  **Status: bereinigt fuer Skills, Rule und normen.** Offen: Altdokumente und Projektordner.

### baurecht (Buch-Destillat) ↔ normen (SIA 358) — geprueft 2026-08-03 (Run 24)
- **Befund:** 2 verifiziert, **2 bestaetigt** — beide im **abnehmenden** Bestand (`baurecht`), und
  beide mit derselben Wurzel. Das Buch-Destillat fuehrte **drei falsche Werte**: Regelhoehe und
  Brustungshoehe **vertauscht** (90/100 statt 1 m/90 cm), die Kugelprobe 12 cm als «≤ 90 mm», und
  eine **frei hinzugefuegte** Hochhaus-Hoehe «110 cm (> 12 m)», die auf der zitierten Buchseite
  nicht steht.
- **Die angemeldete Fassungsdivergenz existiert nicht.** `baurecht/wiki/QUESTIONS.md` Frage 2
  vermutete einen Unterschied zwischen SIA 358:**1996** und :**2010**. Beide Originale sind im
  Haus und wurden gelesen (1996 mit Textlayer, 2010 gerendert): **die Masse sind identisch**; die
  Teilrevision 2010 betraf Ziff. 0.3, die Normenliste 0.2, den Begriff «Traverse», 3.3.2/3.3.4 und
  Anhang B. Das Buch (S. 1291, Shot 649) war korrekt — der Fehler entstand **beim Destillieren**.
- **Aktion:** beide Stellen auf den Buchwortlaut korrigiert, Korrekturvermerk mit Belegkette,
  Frage 2 als **falsch gerahmt geschlossen**. **Status: bereinigt.** Offen: Stichprobe der
  uebrigen Schwellenwert-Tabellen des Shot-Bereichs 632-655.
- **Fuehrung bestaetigt:** `normen` fuehrt Ziffer/Ausgabe/Kennwert, `baurecht` den Gesetzes- und
  Buchbezug. Das bfu-Destillat und `normen` hatten durchgehend recht.

### normen ↔ planungsgrundlagen (Aufzuege, Sanitaerraeume, Toilettenanlagen) — geprueft 2026-08-03 (Run 24)
- **Befund:** 9 gemeldet, 2 verifiziert, **2 bestaetigt**. **Aufzugskabine:** die Zeile «erhoehte
  Anforderung 1.40 × 1.40 m» machte aus einer **Pflicht** eine freiwillige Komfortstufe. Beleg am
  Original: **SIA 500:2009 Ziff. 3.7.4** («Uebereck angeordnete Kabinentueren sind zulaessig, wenn
  das Kabinenmass mindestens 1,40 m x 1,40 m betraegt»). Praxisfolge: eine nicht wendbare Kabine,
  nach dem Bau nicht korrigierbar. **Toilettenanlagen:** `planungsgrundlagen` sicherte zu, die
  Ausgaben 2012 und 2020 seien «inhaltlich deckungsgleich» — sie sind es nicht (Stadien 150 → 100,
  Personalschwelle 5 → 10, Betreuungsstaetten-Tabellen 2020 entfallen, Gastro-Methodik komplett
  umgestellt).
- **Fuehrungs-Praezisierung (Verifikator):** Beleg ist die ueber § 34 BBV I verbindliche **Norm**,
  nicht das kommunale UGZ-Merkblatt; dieses ist Vollzugshilfe. Der Uebersehpunkt ist strukturell:
  Tabelle 4 (Ziff. 3.7.3) fuehrt die Masse, die Bedingung steht in 3.7.4.
- **Aktion:** Aufzugs-Zeile umgeschrieben und auf SIA 500 belegt (+ Fassungsvorbehalt
  **SN 521500/C4:2019**, unausgewertet, P1); Falschzusicherung gestrichen, Fassungsvorbehalt beim
  Publikums-/Gastro-Absatz. **Status: Aufzug bereinigt; Toiletten offen bis Ausgabe 2022 im Haus.**
- **Neu erkannt:** es existiert eine **Ausgabe September 2022** des UGZ-Merkblatts, die im Hub
  fehlt. Ihre Zahlen wurden **bewusst nicht eingetragen** (nur Web-Beleg, kein Original im Haus).

### normen (SIA 500 Anhang E) → drei KBs — K42-4a geschlossen 2026-08-03 (Run 24)
- **Der hoechstprioritaere offene Leseauftrag aus Run 23 ist erledigt**, am Original-PDF durch den
  Chef selbst: SIA 500:2009, **Anhang E, Figuren E.1 (S. 49) und E.2 (S. 51)** bemassen die
  Klosett-Sitzhoehe mit «**+ 0.46 (OK Brille)**»; Positionslegende M «Klappsitz 0,46 m ueber Boden».
  **46 cm ist normbelegt**, die 50 cm der KL_Hochbau-Katalogblaetter sind ein undatierter Wert ohne
  Normbezug.
- **Zweitbeleg aus derselben Nacht:** `procap-mb105-2009-rollstuhlgerechte-toiletten` (am Vorabend
  destilliert) fuehrt «OK Brille +0.46 m» — die erste ausdruecklich SIA-500-bezogene Quelle im
  Bestand. Der abnehmende `planungsgrundlagen`-Artikel hatte den richtigen Wert die ganze Zeit im
  eigenen §4 stehen und traute ihm nicht.
- **Aktion:** an vier Stellen nachgezogen (QUESTIONS, `sia-500-2009` gelesen-Feld,
  `kl-hochbau-sanitaer-katalogblaetter`, `recht-norm-sanitaerraeume-planungsgrundlagen`).
  **Status: geschlossen.** Rest-Auftrag K42-4b (Anhang E im Uebrigen) ohne Wartende.

### normen ↔ baurecht (Wasserrecht ZH) — geprueft 2026-08-03 (Run 24)
- **Befund:** verifiziert und **bestaetigt** am amtlichen Volltext. Das am Vorabend um 465 Zeilen
  ausgebaute Destillat `gvz-awel-leitfaden-hochwassergefahrenkarten-2003` stuetzt seine gesamte
  Verbindlichkeitsaussage auf **§ 22 WWG**. Das **WWG vom 2. Juni 1991 ist aufgehoben**; das
  **Wassergesetz (WsG, LS 724.1)** gilt seit **1. Juni 2026** (§ 126 lit. b; Volltext im Hub
  `baurecht/raw/260803_amtlich_zh_wsg.md`).
- **Wirktiefe (Verifikator, ueber den Melder hinaus):** ein blosser «Nachfolge § 26 WsG»-Vermerk
  haette die geaenderte **Zustaendigkeit** verdeckt. Neu ordnet die **Gemeinde** die
  Objektschutzmassnahmen mit der Baubewilligung selbst an (§ 34 Abs. 1 WsG, § 44 Abs. 2 WsV), die
  Direktion nur bei Sonderobjekten; der Begriff «behoerdenverbindlich» entfaellt, neu ist ein
  Feststellungsanspruch der Grundeigentuemer (§ 26 Abs. 3 WsG). Der im Destillat beschriebene
  Ablauf ueber eine «Genehmigung der Auflagen durch die Baudirektion» ist ueberholt.
- **Aktion:** Rechtsstand-Vorbehalt mit vollstaendiger Nachfolgekette gesetzt; fachlich-technische
  Aussagen (Gefahrenstufen, Objektschutz) unberuehrt. **Status: bereinigt.** Fuehrend fuer den
  Erlasswortlaut bleibt `baurecht`.
- **[WIDERLEGT im selben Feld]** Der Befund, das AWEL-Merkblatt Versickerung fuehre fuer
  Lagerflaechen im Bereich Au ein falsches Vorzeichen, **traegt nicht** — «je nach Belag» steht so
  im Original (mit `pdftotext -layout` gegengelesen). Uebrig blieb eine belegte Praezisierung der
  Loesungsspalte, gesetzt.

### energie (AHB-Gebaeudetechnik) ↔ planungsgrundlagen ↔ baurecht/normen — geprueft 2026-08-03 (Run 24)
- **Befund:** 2 verifiziert, **2 bestaetigt**. **Tote Verweise wandern weiter:** `energie` Lauf 122
  meldete vier tote Normverweise in den AHB-Richtlinien; zwei davon stehen **auch in
  `planungsgrundlagen`** als geltendes Recht. **Art. 20 und 20a LRV aufgehoben** seit 01.01.2022
  (AS 2021 632, Fedlex SR 814.318.142.1; Zweitbeleg `baurecht/raw/260713_amtlich_ch_lrv.md`) — die
  Konformitaetsnachweis-Pflicht ist **entfallen**, nicht «aelter geworden». **SIA 380/4:2006**
  archiviert seit 31.07.2019; heutiger Weg SIA 387/4 / SIA 2056, Vollzug EVEN Formular EN-111.
- **Fuehrungs-Korrektur (Verifikator):** der Melder wollte `energie` zur Belegautoritaet fuer den
  **Erlassstand** machen. Fuehrend ist `baurecht` (LRV) bzw. `normen` (SIA/EN) — sonst haette die
  Korrektur die im selben Bericht gemeldete Doppelspur zementiert.
- **Zweiter Befund — eine Luecke, die keine war:** `energie/wiki/gebaeudetechnik-pflichtenheft.md`
  erklaerte die EN-12464-1-Uebersichtstabelle fuer «nicht im Bestand». Sie liegt seit 19.01.2007
  im AHB-Ordner und ist in `planungsgrundlagen` §14.2 destilliert. **Aber** sie gibt den Stand
  EN 12464-1 **vor 2011** und SIA 2024:2006 wieder — die offene Frage E-122-6 durfte deshalb
  **nicht** mit ihr geschlossen werden (der Verifikator hat genau das verhindert).
- **Aktion:** drei Fundstellen mit Wirktiefe-Vermerk in `planungsgrundlagen`; Fundort-Korrektur in
  `energie`, E-122-6 ausdruecklich **offen gelassen**. **Status: bereinigt, E-122-6 offen.**

> **NEU Run 24 — drittes Struktur-Muster «Transkriptionsfehler tarnt sich als Fassungsdivergenz»:**
> Weichen zwei KBs in einem Normwert voneinander ab, ist die naheliegende Erklaerung eine
> unterschiedliche Ausgabe — und sie war in diesem Lauf **zweimal falsch**. Beim SIA-358-Fall
> haette die Fassungserklaerung eine Normhistorie erfunden, die es nie gab, und den KB-eigenen
> Lesefehler dem Standardwerk zugeschoben. **Regel daraus: bevor eine Abweichung als
> Fassungsfrage erklaert wird, die EIGENE Quelle des abweichenden Destillats oeffnen**
> (Buchseite, Screenshot, Original-PDF). Im Hub ist der Transkriptionsfehler der haeufigere der
> beiden Faelle. Gilt fuer alle Buch-, Merkblatt- und Screenshot-Destillate.

### normen ↔ planungsgrundlagen (hindernisfreies Bauen, Sanitaerraeume, RWA) — geprueft 2026-08-03 (Run 23)
- **Befund:** 4 verifiziert, **4 bestaetigt**. **W1 (hoch, hoechster Praxisschaden des Laufs):** die
  KL_Hochbau-Raumbreiten fuer rollstuhlgerechte WC (140 cm minimal, 160 cm «Normalausfuehrung»)
  **unterschreiten SIA 500:2009 Ziff. 7.2.3.2** (min. 1,65 × 1,80 m) — der Artikel gab sie als
  Planungsgrundlage fuer Pflegezimmer-Nasszellen aus. **W2:** Sitzhoehe Klosett 50 cm gegen 46 cm
  (zwei nicht-normative Quellen + DIN-Analogie) — **nicht entscheidbar**, SIA 500 Anhang E ungelesen.
  **W3 (RWA):** das GVZ-Merkblatt 2011 stuetzt sich auf die VKF-Ausgabe 2003; Divergenzband
  gesprinklert unter Terrain 1'201-3'600 m² (Merkblatt N2/N3, BSR 21-15 keine RWA). **D1:** SWKI
  VA103-01:2017 doppelt destilliert; die Melder-Begruendung «fuehrende KB hat die unvollstaendigere
  Fassung» wurde **widerlegt** (das `gelesen`-Feld des normen-Destillats beschreibt sich selbst
  falsch, der Koerper fuehrt die Kapitel).
- **Aktion:** Normvorbehalt + Sitzhoehen-Vorbehalt in `planungsgrundlagen`; Fassungs-/
  Kollisionsvorbehalt + Planungsregel + BKP 245 in `normen`; **K42-4 beantwortet** (aus dem 90 Min
  zuvor gelaufenen normen-Run 42, der dieselbe Quelle destillierte und den Zweifel selbst notierte),
  neuer Leseauftrag **K42-4a SIA 500 Anhang E**. **Status: Raumbreite bereinigt; Sitzhoehe offen
  (haengt an K42-4a); SWKI-Doppelspur offen.**

### normen (PAV-Estrich-Cluster) ↔ grobkosten ↔ bauprodukte — geprueft 2026-08-03 (Run 23)
- **Befund:** 4 verifiziert, **4 bestaetigt** — alle vier im **fuehrenden** Bestand, nicht bei den
  Abnehmern. **W1:** `sia-251-2008` zitiert den Fugenplan als Ziff. 2.4.7; am Original-PDF ist es
  **2.4.9** (die Norm verweist in Ziff. 2.4.1 selbst darauf) — die beiden Sekundaerquellen zitierten
  richtig. **W2:** PAV-E 01 ordnet die Fussbodenheizung BKP 244 zu, richtig ist **242**. **V1:**
  `sia-252-2002` ohne `ersetzt_durch`, obwohl das neue PAV-E 12 durchgehend **SIA 252:2012** zitiert.
  **L1:** der Cheminee-Artikel in `bauprodukte` fuehrt VKF nur generisch, ohne Pfad nach `normen`.
- **Aktion:** Ziffer 2.4.9 und BKP 242 korrigiert, `ersetzt_durch` ergaenzt (Ausgabe 2012 liegt nicht
  vor = Bring-Schuld), Ziff. 2.6.3/2.6.5 als **prueffbeduerftig markiert statt still umgeschrieben**.
  **Status: bereinigt; 1 Bring-Schuld (SIA 252:2012), 1 Pruefvermerk offen.**

### energie ↔ planungsgrundlagen (Energie-Achse nach Lauf 121) — geprueft 2026-08-03 (Run 23)
- **Befund:** 4 verifiziert, **3 bestaetigt, 1 widerlegt**. **Widerlegt mit Richtungsumkehr (W1):**
  gemeldet war «planungsgrundlagen fuehrt die falsche Blitzschutznummer SN 414022». Tatsaechlich ist
  **SN 414022:2024 die geltende Nummer** und **SNR 464022:2015 die zurueckgezogene** — die als
  «primaerverifiziert» bezeichnete Seite fuehrte die veraltete. Waere die Meldung umgesetzt worden,
  haette sie die geltende Norm durch die zurueckgezogene ersetzt. **W2 (hoch):** Grenzwertpaar
  186/112 MJ/m²·a — `planungsgrundlagen` ordnet es den **Schulen** zu, `energie` den
  **Industriebauten**; beide destillieren denselben Reader. **W3:** PV-Faustwert 900 gegen
  1'000 kWh/kWp aus denselben drei Reports. **D1:** `planungsgrundlagen` destilliert PL-04-Quellen
  ein zweites Mal — der Verifikator fand, dass **alle** Quellen jenes Artikels bereits
  energie-gefuehrt sind, nicht nur die vier gemeldeten.
- **Aktion:** Blitzschutz in **beiden** KBs auf den belegten Stand gezogen (energie auf
  SN 414022:2024 mit Vorbehalt, planungsgrundlagen um die Ausgabe ergaenzt) + fehlender Kernsatz
  «PV begruendet keine Blitzschutzpflicht» eingesetzt. **W2/W3/D1 NICHT autonom entschieden** —
  siehe Bericht, sie brauchen die Doppelseite des Original-Readers bzw. eine Umstrukturierung.
  **Status: Blitzschutz bereinigt; 3 offene Punkte.**

### energie ↔ normen (Minergie-/Waermebrueckenwelle Lauf 121) — geprueft 2026-08-03 (Run 23)
- **Befund:** 4 verifiziert, **4 bestaetigt**, alle in `energie`. **W1 (hoch):** Klimareferenz
  8,5 °C / 8 % pro K der Ausgabe **2016** zugeschrieben — es ist die Ausgabe **2009**; 2016 fuehrt
  9,4 °C / 6 % pro K. **W2:** «Eine SIA-Norm SIA 180/4 ist nicht bekannt» — sie existiert
  (1982, zurueckgezogen, Nachfolgenorm SIA 416/1:2007) und steht im normen-REGISTER. **W3:**
  «max. 100 Ueberhitzungsstunden gemaess SIA 180 Fig. 4» — die Zuschreibung ist falsch (haelt nur
  schmal). **W4:** zwei widersprechende Uf-Fallback-Werte, der Wiki-Artikel fuehrt die aeltere
  Fassung als «geschlossen».
- **Aktion:** W1 und W2 korrigiert (beide in `gebaeudehuellziffer-ebf-flaechendefinition`).
  W3/W4 an `energie` uebergeben. **Muster bestaetigt sich zum siebten Mal in Folge:** eine KB baut
  eine Aussage ueber eine Norm, deren Volldestillat im Haus liegt. **Status: 2 bereinigt, 2 offen.**

### baurecht ↔ planungsgrundlagen (Rechts-Achse) — geprueft 2026-08-03 (Run 23)
- **Befund:** 4 verifiziert, **3 bestaetigt, 1 widerlegt**. **V1 (hoch, ausnutzungsrelevant):**
  `baurecht` fuehrte § 259 PBG in der **aufgehobenen Anhang-Fassung** (Wald/Gewaesser «ausser
  Ansatz») als geltendes Recht — ohne die Fassungs-Weiche, die derselbe Artikel viermal fuehrt.
  **W1 (Rueckfall):** der Gewaesser-Merksatz in `planungsgrundlagen` knuepft die 15 m fuer stehende
  Gewaesser wieder an die 0,5-ha-Schwelle (die ein **Verzichtsgrund** ist), im Widerspruch zur
  eigenen Datei. **V2:** das «Drei-Spuren-Modell» aus dem Ratgeber 2016 gegen die vier
  Verfahrenstypen des geltenden Rechts; das **Meldeverfahren (§§ 2a-2e BVV) fehlt**.
  **Widerlegt:** die angebliche Genehmigungsfiktion im Anzeigeverfahren — `baurecht` schweigt dazu,
  es gibt keinen Widerspruch, und die Aussage ist belegt.
- **Aktion:** § 259 in die Fassungs-Weiche ueberfuehrt (beide Fassungen belegt, Handlungsanweisung
  «nachrechnen — die Ausnuetzung kann hoeher liegen»); Gewaesser-Merksatz berichtigt.
  V2 als groesserer Umbau an `planungsgrundlagen` uebergeben. **Status: 2 bereinigt, 1 offen.**

### spec ↔ claude-code ↔ twin (Methodik-Dreieck) — ERST-PRUEFUNG 2026-08-03 (Run 23, Rotationsliste)
- **Befund:** 4 verifiziert, **4 bestaetigt**. Der Ertrag liegt nicht im Fachwissen, sondern in der
  **Selbstaufsicht**. **V1:** die Registerzeile «Methode SPW» meldete `wissens-chef` als
  lieferlosen Loop; die Ursache ist gemessen **das erschoepfte Wochen-Kontingent** (Reset 03.08.
  12:00, im Lauf-Journal fuer jeden Loop beider Stationen im selben Fenster belegt). **W1:** das
  dritte Beweisstueck jener Meldung war ein **Nicht-Signal** — `wissens-chef` laeuft als
  App-Scheduled-Task nicht ueber `claude-run.sh` und hat nie eine Journalzeile geschrieben.
  **V2 (gemessen):** `kontext-architektur` fuehrte `jans-dna.md` mit 15'356 B / 14 %; real
  **32'428 B / 28.1 %**, groesster Posten, Grundkontext gesamt **115'482 B statt 96'946 B** — damit
  **ueber** dem Vor-Diaet-Wert. **L1:** `twin` kannte `claude-code` in keiner Datei, obwohl es die
  groesste Grundkontext-Datei erzeugt.
- **Aktion:** Befund geklaert und zwei Pflichtpruefungen in die Rotationsanleitung aufgenommen;
  Messreihe statt Momentaufnahme; Erst-Verlinkung in beide Richtungen; twin-Takt berichtigt.
  **Status: bereinigt; der Kontext-Rebound ist ein Entscheid fuer Raphael (siehe Bericht).**


### bauprodukte ↔ projekt-lessons — ERST-PRUEFUNG 2026-07-31 (Run 22, Rotationsliste)
- **Befund:** Die Abgrenzung war **nicht** ungeklaert, wie die Rotationsliste seit Run 21 vermutete —
  sie ist dreifach gesetzt (Matrix-Zeilen «Produkt-/Systemwissen nach BKP» und «Projekt-Lessons»,
  dazu `bauprodukte/CLAUDE.md`). Beide Doppelspur-Befunde der Melde-Stufe wurden **widerlegt**:
  weder fuehrt `projekt-lessons` unzulaessig generisches Produktwissen (der KISPI-Fall ist eine
  belegte Einzelfall-Beweiskette mit LV-Kuerzeln und real verbauten Fabrikaten), noch kollidiert der
  geplante Artikel `bevorzugte-systeme-jans.md` mit dem Lesson-Bestand.
- **Was wirklich fehlte, war die Verlinkung:** auf Artikelebene existierte in **keiner** Richtung eine
  Verbindung (`grep` beidseitig 0 Treffer ausser einem allgemeinen Satz in `bauprodukte/CLAUDE.md`).
  Das ist teuer, weil der `bauprodukte`-Korpus fuer genau dieses Gewerk **leer** ist (die Ordner
  `214 Montagebau in Holz` und `271 Gipserarbeiten` enthalten 0 Dateien, QUESTIONS Punkt 9 ist
  deshalb GEBLOCKT) — waehrend `projekt-lessons` den einzigen belegten Praxisfall des Hubs zur
  Trockenbau-Bekleidung fuehrt. Die blockierte KB und ihre Loesung standen unverbunden nebeneinander.
- **Aktion:** Erst-Verlinkung in beide Richtungen gesetzt (Teil-Antwort an `bauprodukte`
  QUESTIONS Punkt 9; Abschnitt «Abnehmer in anderen KBs» in `kispi-lbw-rohdichte-800.md`, `links:`
  bewusst unveraendert — das Feld zeigt auf Artikel, nicht auf QUESTIONS-Listen). **Keine neue
  Matrix-Zeile noetig**, die bestehenden tragen. **Status: bereinigt, Paar aus der Rotation.**

### baurecht ↔ planungsgrundlagen ↔ projekt-lessons (Ruecklauf 2414 Thalwil, StrAV, BZO Stadt ZH) — geprueft 2026-07-31 (Run 22)
- **Befund 1 (bestaetigt, hoch):** `baurecht/training/PROGRAMM.md` beauftragte weiterhin die
  **Beschaffung der StrAV** — einer seit 01.06.2020 aufgehobenen Verordnung, deren Nachfolgeerlass
  (VErV) seit dem 30.07.2026 in derselben KB liegt. Der in der Triage angeordnete Sweep (Batch T0)
  hatte Curriculum und QUESTIONS nicht erreicht. **Korrigiert** (drei Stellen), mit den VErV-
  Kernparagraphen §§ 23/26/27/28/29 und dem ehrlichen Restpunkt: Vorspruenge/Tueren/Tore haben in
  der VErV **keine** Entsprechung, die Anschlussnorm ist offen.
- **Befund 2 (bestaetigt, Kategorie korrigiert):** die 7-%-Quote Thalwil ist **nicht** veraltet —
  unter negativer Vorwirkung gilt sie weiter, und die KB-Arbeitsregel verlangt ausdruecklich, beide
  Fassungen nebeneinander zu fuehren. Es fehlte allein der **Revisionsvorbehalt** im Curriculum.
  Gesetzt, per Verweis statt Wertkopie (dasselbe Muster wie beim VSS-40-291-Fall).
- **Befund 3 (bestaetigt, hoch):** `planungsgrundlagen` schrieb **Art. 11 Abs. 1 BZO Stadt Zuerich**
  materiell fort — aus einer AHB-Checkliste vom 16.02.2009, also aelter als die BZO 2016. Drei
  Abweichungen vom amtlichen Wortlaut: der Vorbehalt lautet «technisch und **betrieblich** moeglich
  sowie wirtschaftlich **tragbar**» (nicht «zweckmaessig … zumutbar» — diese Wendung steht heute in
  **Abs. 3**), und das Merkmal «**auch dort, wo Solaranlagen installiert sind**» fehlte vollstaendig,
  obwohl derselbe Eintrag die PV-Kombinationsregel aufstellt. **Korrigiert** mit Fassungsvermerk und
  Verweis in die fuehrende KB.
- **Befund 4 (WIDERLEGT):** «der Ruecklauf blieb in baurecht liegen» — die Verifikation hat den
  mechanischen Teil bestaetigt, die Kernbehauptung aber gekippt. **Status: bereinigt.**

### energie Run 120 ↔ baurecht ↔ normen (Gewaesser, EnerG-Fassung, Aufzug) — geprueft 2026-07-31 (Run 22)
- **Befund 1 — der teuerste des Laufs (bestaetigt, hoch):** der neue Wiki-Artikel
  `umweltwaerme-gewaesser` drehte die Schwyzer Konzessionsschwelle um («**<** 4 Wohneinheiten» statt
  «mindestens vier») und machte zugleich aus einer **Erteilungs**voraussetzung einen **Pflicht**-
  ausloeser. Praxisfolge der Fehlfassung: ein EFH oder 2-3-WE-Objekt am Zuger- oder
  Vierwaldstaettersee haette daraus «keine Konzession noetig» gelesen — richtig ist das Gegenteil
  (konzessionspflichtig bleibt es, die Konzession wird aber in der Regel nicht erteilt). Der Artikel
  war der **einzige Ausreisser gegen fuenf gleichlautende Stellen derselben KB**. Korrigiert an
  beiden Fundorten (Fliesstext + Vergleichstabelle), mit Fassungsvermerk und Verweis nach `baurecht`.
- **Befund 2 (bestaetigt, mittel, mit Aufloesung):** das Sanierungsetappen-Destillat las EnerG ZH in
  **Nachtrag 125**, geltend ist **129**. Die Verifikation hat beide amtlichen Volltexte gezogen und
  den Diff gefahren: das Delta besteht ausschliesslich in den neu eingefuegten §§ 2a/2b; die einzige
  hier zitierte Norm (§ 17a lit. a) ist wortgleich. Der Punkt ist damit **geschlossen statt
  geflaggt** — `established` bleibt.
- **Befund 3/4 (WIDERLEGT):** die Seewasser-Bewilligungsspur wird nirgends faelschlich als
  «paragraphengenau» ausgegeben, und die beiden R290-FAQ-Antworten widersprechen sich nicht
  (verschiedene Leistungsklassen). **Status: bereinigt.**

### normen ↔ energie ↔ bauprodukte (Aufzug-Komplex) — geprueft 2026-07-31 (Run 22)
- **Befund 1 (bestaetigt, hoch) — «ein Zugang heilt keinen Bestand», sechster Fundort in Folge:**
  das am 31.07. neu erzeugte Destillat `aufzug-energieeffizienz-vdi4707` schrieb SIA 2056:2019
  **fuenf VDI-4707-Nutzungskategorien** zu und erklaerte die Frage fuer offen, weil «SIA 2056 nicht
  im Volltext gelesen» sei — waehrend die fuehrende KB `normen` die Norm seit dem **24.07.** als
  `established` Volldestillat fuehrt (S. 1-130 gelesen) und dort **vier** Nutzungsintensitaetsstufen
  **nach Gebaeudetyp** belegt sind (Tab. 78). `grep "4707"` ueber `normen/` liefert genau einen
  Treffer: den informativen Publikationshinweis in Anhang G. Die Sekundaerquellen-Aussage war also
  nicht nur unbelegt, sondern **falsch**. Korrigiert an vier Stellen des Destillats.
- **Befund 2 (bestaetigt, mittel) — Selbstwiderspruch:** `bauprodukte/wiki/bkp-261-aufzuege.md`
  schrieb die bedingt formulierte Ziff.-3.6-Anforderung woertlich aus und behauptete zwei Zeilen
  spaeter, sie werde «hier nicht fortgeschrieben (Rule `normen-referenz`)». Zugleich fehlte der
  Hinweis, dass `normen` dieselbe Aussage ausdruecklich als **nicht am Original der 2017er-Ausgabe
  verifiziert** fuehrt. Ersetzt durch Verweis + Anwendungsfall (Einzel-UG-Erschliessung), ohne die
  Belegstufe zu duplizieren. **Status: bereinigt, neue Matrix-Zeile gesetzt.**

### grobkosten ↔ normen ↔ bauprodukte ↔ immobilienbewertung ↔ kostenschaetzung-Ref (Kennwerte) — geprueft 2026-07-31 (Run 22)
- **Befund 1 (WIDERLEGT, und das war wertvoll):** die Lesart von Lignum Tab. 522-1 als additive
  Mehrmenge stammt nicht von `grobkosten`, sondern woertlich aus der fuehrenden KB `normen`. Haette
  der Chef den Befund umgesetzt, waere die fuehrende Quelle gegen sich selbst korrigiert worden.
- **Befund 2 (bestaetigt zu einem Drittel):** die BKP-Zuordnung «214/271» ist fuer den **Mehrestrich**
  falsch (richtig **281.0** nach der verbindlichen BKP-2017-Liste), fuer Holz-Bauteilstaerken und
  Bekleidungsflaechen dagegen **richtig** (214.1/214.3 bzw. 271.1). Nur der Estrich korrigiert — die
  urspruenglich vorgeschlagene Pauschalersetzung haette die Holzbau-Positionen unter «Estriche»
  gebucht und damit einen schwereren Fehler erzeugt als den behobenen.
- **Befund 3 (bestaetigt):** die Preis-Bringschuld war nur bei `grobkosten` notiert. Sie ist aber bei
  `bauprodukte` **strukturell unerfuellbar** (dessen Korpus fuehrt Produktunterlagen, keine Devis;
  und die KB fuehrt laut Matrix ueberhaupt keine Kalkulations-Kennwerte). Statt die Uebergabe zu
  setzen, ist die falsche Erwartung bei `grobkosten` korrigiert und auf
  `ausschreibung`/`offertenpruefung` umgelenkt worden.
- **Befund 4 (bestaetigt, tief):** der Healthcare-Abschnitt in `grobkosten` nannte nur den Skill
  `kostenschaetzung`, nicht die laut Matrix fuehrende KB `immobilienbewertung`. Zeiger gesetzt,
  inklusive Warnung vor der Bezugsbasis (BKP 2 gegen BKP 1-5). **Status: bereinigt.**

### immobilienbewertung ↔ grobkosten ↔ kostenschaetzung-Ref (Ingest Cluster A-E) — geprueft 2026-07-31 (Run 22)
- **Befund 1 (bestaetigt, hoch) — die Ablesung war messbar zu ungenau:** die fuehrende Referenz
  `skills/kostenschaetzung/referenzen/20260607-…` fuehrte fuer den Massiv-/Holzbau-Vergleich
  **aus dem Spread abgelesene** Naeherungswerte, obwohl die exakte Quantiltabelle der Primaerquelle
  seit dem 31.07. im Hub liegt. Delta im oberen Holzbau-Segment: **+44.8 % statt +38 %**. Beide
  Abschnitte (HNF und GV) auf die Originalquantile umgestellt.
- **Befund 2 (bestaetigt, hoch):** die dort seit Run 21 stehende Erklaerung «verschiedene Stichproben»
  ist **widerlegt** — HNF-Reihe (S. 18/36) und GV-Reihe (S. 34) stammen aus **derselben Studie mit
  derselben Stichprobe**. Die Spreizung (+44.8 % auf HNF gegen +12.9 % auf GV) bleibt real, hat aber
  nur noch die Bezugsgroesse als moegliche Ursache; als **Ursachenfrage** neu in
  `grobkosten/wiki/QUESTIONS.md` angemeldet, kein gemeinsamer Zuschlag.
- **Befund 3 (bestaetigt, hoch) — Protokollverstoss:** von fuenf Ingest-Reports (rund 370 KB) war
  **nur Cluster A** im CHANGELOG protokolliert; kein `wiki/`-Artikel wurde angefasst. Da die KB auf
  `enabled=false` steht (naechster Lauf 01.09.2026), waere das Material einen Monat brachgelegen.
  Vier Eintraege nachgetragen, Einarbeitung als Ereignis-Trigger in `training/PROGRAMM.md` verankert.
- **Befund 4/5 (WIDERLEGT):** die Flaecheneffizienz-Divergenz 0.70/0.75 ist eine bereits gefuehrte,
  nicht neue Frage, und Cluster C baut keine zweite Heimat fuer `grobkosten`-Gegenstaende auf.
  **Status: bereinigt, eine Ursachenfrage offen.**

### bauprodukte ↔ normen (Aufzuege BKP 261, Rutschfestigkeit) — geprueft 2026-07-30 (Run 21)
- **Anlass:** die am 29./30.07. entstandenen Artikel `bkp-261-aufzuege` (AS-Aufzuege-Masskizze) und
  `z-winkel-beschlag-schreinerei`; das Paar stand seit Run 20 auf der Rotationsliste.
- **Null-Befund, ausdruecklich festgehalten:** die BKP-Codes sind gegen `references/bkp-2017/` gedeckt
  (261 Aufzuege, 273 Schreinerarbeiten), und alle Preisangaben (2002/2011) sind sauber als datierter
  Zeitstand mit Neuverifikations-Vorbehalt gefuehrt — die KB haelt die Preis-Disziplin aus Run 19 ein.
- **Der schwerste Einzelbefund des ganzen Laufs steckt aber in dieser KB, und er ist LV-relevant:**
  der Aufzugsartikel rechnete die Kabine mit einer **aus dem Schachtmass abgeleiteten** Breite von
  1250 mm gegen SIA 500 Tab. 4 und schloss, sie uebertreffe die Standard-Kategorie. Die am selben Tag
  destillierte Masskizze gibt im selben Artikel «Kabinenbreite 1050 mm bei beiden Varianten» an. Der
  Artikel widerlegte sich selbst und wies den Leser zugleich an, «gegen Tabelle 4 der Norm selbst zu
  rechnen, nicht die Herstellerkategorie zu uebernehmen» — also der falschen Rechnung zu folgen.
  Korrigiert: 1.05 m verfehlt die Standard-Kategorie in **jeder** Variante; «bedingt zulaessig»
  (1.00 × 1.25 m) ist **nur** in der Options-Variante erfuellt, in der Standardvariante (1.05/1.085)
  nicht. Die Produktidentitaet Winner/Swisslift bleibt ausdruecklich offen.
- **Zweimal Muster «Ein Zugang heilt keinen Bestand»:** (a) das seit 14.07. established gefuehrte
  VKF-Destillat `vkf-brl-23-15-befoerderungsanlagen` war dem Artikel unbekannt, weil die
  Bestandssuche des schreibenden Laufs auf «Barrierefreiheit» verengt war (im Kurator-Report belegt);
  (b) die offene Frage «Rutschfestigkeit fehlt» ist durch `bfu-bodenbelaege` (30.07.) und, aelter und
  fuehrend, durch `sia-244-2006` Ziff. 6.7 (seit 13.07. established) beantwortet.
- **Aktion:** beidseitig verlinkt (relative Cross-KB-Form `[[../../normen/destillate/…]]`, sonst toter
  Link), Verweis-Saetze OHNE Kennwerte gesetzt (die VKF-Anforderungen sind bedingt formuliert), zwei
  QUESTIONS-Punkte praezisiert, Gleitfestigkeit als LV-Pflichtangabe aufgenommen.
- **Widerlegt:** die gemeldete «verpuffte Bring-Schuld SN EN 81-70». Der Quellartikel schliesst den
  Punkt selbst (fuer die Schweiz ist SIA 500 Ziff. 3.7.3 massgeblich), und der Run-19-Auftrag zu den
  Korrigenda C3/C4 deckt den Sachbedarf in `normen` bereits ab.

### baurecht ↔ planungsgrundlagen ↔ normen (Parkierung) — geprueft 2026-07-30 (Run 21)
- **Anlass:** Buch-Run 70 (30.07.) hat den Artikel `fahrzeugabstellplaetze-und-parkierung` ueberarbeitet.
- **Die gemeldete «Verdichtungs-Drift» war vollstaendig behoben** — kein Rueckstand in Wiki, Destillat,
  Drills, INDEX oder PROGRAMM. Der Ertrag liegt eine Ebene tiefer.
- **Befund 1 (teuer im Alltag):** `baurecht` erklaerte die VSS-Rampenkennwerte als «needs-verification
  wegen Kostenpflicht — vor Anwendung in einer Projektierung ist der Normtext kaeuflich zu beziehen».
  Die Norm liegt seit 13.07.2026 im JANS-Bestand (`PL - 02_Recht_Norm/02_Normen/VSS_Norm/VSS 40 291
  Parkieren 2021.pdf`, physisch nachgewiesen) und ist in `normen` vollstaendig destilliert und dreifach
  verifiziert. Der Artikel wurde seither dreimal angefasst, die Aussage blieb jedes Mal stehen. Sie
  streute in **sieben** Stellen des Steuerungsregisters `baurecht/wiki/QUESTIONS.md` — und war dort
  **eine der drei Begruendungen fuer den Vorschlag, den Loop `baurecht-buch-training` zurueckzutakten.**
  Ein falscher «dauerhaft offen»-Status hatte damit Steuerungswirkung. Alle sieben Stellen sind
  erledigt-markiert (Alttext durchgestrichen stehen gelassen), der Ruecktaktungs-Vorschlag hat einen
  Korrekturvermerk.
- **Befund 2 (projektwirksam):** `planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung` fuehrt
  die ganze Tiefgaragen-Geometrie als **geltende** Planungsgrundlage aus der **abgeloesten** Ausgabe
  SN 640 291a (2005) samt der 2021 abgeschafften Komfortstufen A/B/C — und empfiehlt ausdruecklich
  «Komfortstufe B» als Wohnbau-Standard. Deltas: Rampenneigung 12 %/15 % statt 15 %/18 %, Fahrgasse
  Gegenverkehr 5.00 m statt 5.50 m. Kein Fassungsvorbehalt, `grep 2021` ueber die ganze KB: 0 Treffer.
- **Fuehrungsfrage, die den ersten Aufloesungsvorschlag kippte:** der Melde-Agent wollte `baurecht` auf
  `planungsgrundlagen` als geometrie-fuehrend zeigen lassen. Das haette die abgeloeste Ausgabe ueber
  den bereits sauberen Pfad zurueckgeholt. Fuehrend ist `normen`.
- **Aktion:** Fassungs-Vorbehalt in Frontmatter und am Kopf von Abschnitt 2, `querbezug_kb_normen`-Feld
  nach dem Muster von `brandschutz-pl03-wegweiser`, INDEX-Kernwert korrigiert, Uebergabe in
  `normen/wiki/QUESTIONS.md` angemeldet, offener Punkt «kommunale Parkplatzverordnungen» mit dem
  baurecht-Artikel geschlossen, bidirektional verlinkt. Der UG-Platz-Kennwert (35-47 kFr.) wurde
  **abgegrenzt statt abgeglichen**: er ist eine Verhaeltnismaessigkeits-Schwelle der Rechtsprechung zu
  § 244 Abs. 3 PBG, nicht der Grobkosten-Kennwert (42'000 CHF/Parkplatz) derselben Sache.
- **Offen (Entscheid):** die materielle Umstellung des Abschnitts 2 auf die Ausgabe 2021.

### normen ↔ baurecht ↔ planungsgrundlagen (Absturzsicherung, Gelaender und Bruestungen) — geprueft 2026-07-30 (Run 21)
- **Anlass:** die zwei neuen bfu-Destillate aus normen-Run 38 (30.07.), beide bereits intern
  refuter-geprueft. Die Pruefung zielte darum auf die Raender zu den fuehrenden KBs.
- **Befund 1:** die Kurzfassung des Gelaender-Destillats machte aus einer zweistufigen Quelle eine
  einzige «Erhoehungspflicht». Die Quelle trennt: die Erhoehung als solche ist Anforderung, «mindestens
  20 cm» bei Hochhaeusern ist Soll-Vorschrift, und nur die Quantifizierung «+10 cm ab mehr als 12 m»
  ist bfu-Empfehlung. Der naheliegende Gegenfehler waere gewesen, die ganze Aussage zur Empfehlung zu
  erklaeren — die 40-cm-Schwelle und die Lastannahmen sind Normanforderungen (SN 640 075/568, SIA 261),
  nicht bfu. Korrigiert wurde nur die eine Wortstelle.
- **Befund 2:** die Bestandesschutz-Aussage verlor das tragende Merkmal **«umfangreiche»**
  baubewilligungspflichtige Sanierungsarbeiten — aus einer Faustregel wurde eine ueberschiessende
  Rechtsaussage, die jede bewilligungspflichtige Sanierung erfasst haette. Wiederhergestellt, dazu die
  Einordnung «bfu-Fachpublikation, nicht rechtsverbindlich».
- **Aktion baurecht:** der Verweis auf die Stadt-Zuercher 15-%-Schwelle sitzt jetzt bei **§ 357 Abs. 4**
  (Anpassungsverlangen), nicht bei Abs. 1 — der gemeldete «Widerspruch» zur «keine feste Quote»-Aussage
  war keiner: die beiden Saetze betreffen verschiedene Absaetze derselben Norm. Geltungsaussage
  ausdruecklich «im Verfahrensgebiet der Stadt Zuerich», nicht kantonal.
- **Neuer offener Punkt, vom Verifikator gefunden und gewichtiger als der gemeldete Befund:** baurecht
  fuehrt SIA-358-Masse offenbar in der Ausgabe **1996**, normen die Ausgabe **2010** als geltend.
  In `baurecht/wiki/QUESTIONS.md` angemeldet, keine Zahl geaendert.
- **Widerlegt (2 von 4):** die «widerspruechliche Verbindlichkeits-Einstufung der SIA 358» und der
  angeblich zu Unrecht als entfallen gefuehrte 20-cm-Bruestungswert.

### normen ↔ grobkosten ↔ bauprodukte (Holzbau, Lignatec, kalibrierter Zuschlag) — geprueft 2026-07-30 (Run 21)
- **Anlass:** am selben Tag hat `normen` (Run 38) die Lignatec-Tabellen 3/4 verarbeitet und `grobkosten`
  den Holzbau-Zuschlag kalibriert — die Bring-Schuld aus Run 20. Idealer Testfall.
- **Die Bring-Schuld ist echt eingeloest:** der Zuschlag ist belegt, datiert, methodisch offengelegt und
  trennt neu Bauweise (Holz: unteres Segment ≈ Paritaet, oberes ≈ +13 %) von Ausbaustandard.
- **Beschaedigt war sein Konsistenz-Beleg.** Die Behauptung, die aeltere HNF-Wuest-Quelle kenne keine
  Segment-Differenzierung und stehe nicht im Widerspruch, ist gegen die Datei nachweislich falsch: sie
  segmentiert gleich benannt und kommt auf **+11 %/+38 %** gegen ≈0 %/+13 %. Beide Datensaetze ruhen auf
  demselben Preisstand (April 2023) — die Differenz ist also **nicht** Teuerung. Korrigiert, ohne einen
  bestaetigenden Quervergleich zu behaupten; `raw/` blieb unangetastet, die Fehlstelle dort ist im neuen
  QUESTIONS-Eintrag benannt statt wegretuschiert.
- **Muster in Reinform:** die Lignum-Destillate uebergeben ausdruecklich Brandschutz-Kennwerte an
  `grobkosten` — dort 0 Treffer angekommen, und der am selben Tag gebaute Zuschlag trug keine
  brandschutzbedingte Anwendungsgrenze. Gesetzt als **verweisende** Anwendungsgrenze: die Stichprobe
  (17 Holz-Neubauten) weist keine Gebaeudehoehenkategorie und keine Brandschutzanforderung je Objekt
  aus, der Zuschlag ist bei erhoehten Anforderungen als untere Naeherung zu lesen. Ausdruecklich NICHT
  als Schwellenregel «ab Gebaeude mittlerer Hoehe» — die Quelle ist konditional formuliert, und die
  Anforderung fuehren die Lignum-Destillate selbst nicht (massgebend sind die VKF-Vorschriften).
- **`bauprodukte` verhaelt sich normativ korrekt** (kein materielles Fortschreiben), war aber in beiden
  Richtungen unverlinkt. Abnehmer-Zeile nur in 4-1 und 4-2 gesetzt, **nicht** in
  `lignum-lignatec-brandschutz` — diese Publikation ist als VERALTET gefuehrt, und genau dieses
  Verweis-Muster hat Run 17 in `planungsgrundlagen` schon einmal korrigieren muessen.

### energie ↔ normen ↔ planungsgrundlagen (die vier in Run 20 offen gebliebenen Run-119-Destillate) — geprueft 2026-07-30 (Run 21)
- **Gutbefund vorweg:** die wechselseitige Verlinkung Fachphysik ↔ Verfahren ist inzwischen beidseitig
  ausgebaut, und die Run-93-Korrektur der toten Kurz-URL hat in `energie` keine Altfassung
  hinterlassen (gemessen: null Treffer im ganzen KB).
- **Befund 1 (Kennzahlen-Vermischung):** das Rabtherm-Destillat verkaufte Werte aus BL/BS/VD als «im
  Kanton Zuerich beobachtete» COP-Bandbreite «4,0-7,0 ueber fuenf benannte Anlagen». Es sind **vier**
  Anlagen aus **drei** belegten Kantonen, mit **gemischten** Kennzahlen: die «gegen 7» ist laut Quelle
  ausdruecklich keine ganzjaehrige JAZ, COP 5,7 Lausanne ist ein Betriebswert nach dem ersten
  Vollbetriebsjahr (kein Laborwert), und nur der Wintower liegt in ZH. Korrigiert im Destillat, im
  Register-INDEX und per Korrekturvermerk am Lauf-Report (Protokoll-Fliesstext unveraendert).
- **Befund 2:** Register-Eintrag Freienbach trug das unmoegliche Datum 10.01.**2026** (Publikation ein
  Jahr vor Erstellung) und meldete eine Verdichtung als vollzogen, die nie stattfand — der Zielartikel
  im `wiki/` existiert gar nicht.
- **Befund 3:** `normen` will SWKI 99-3 destillieren; die Richtlinie ist seit 1.8.2015 durch
  VA105-01:2015 ersetzt, was `energie` seit 25.07. belegt. Als **Nachtrag** gesetzt, nicht als Ersatz:
  der quellentreue Satz «die Norm von 2008 nennt SWKI 99-3 in ihren Literaturhinweisen» bleibt stehen.
  Beleg-Anker ist die Primaerangabe (Titelblatt VA105-01), nicht das fremde `emerging`-Destillat.
- **Strukturbefund, nicht selbst entschieden:** **SWKI ist in der Fuehrungsmatrix ueberhaupt nicht
  zugeordnet.** `energie` fuehrt vier SWKI-Richtlinien materiell, `normen` kennt SWKI im Register nicht.
  Die Zuordnung haengt an Raphaels seit Run 31 offenem PL-02-Scope-Entscheid (`normen/wiki/QUESTIONS.md`
  Befund 3, dort ausdruecklich «nicht vom Loop zu entscheiden»). Darum hier nur protokolliert, **keine**
  Fuehrungszeile gesetzt und **keine** Registerzeile aus Sekundaerquellen gebaut.

### kunde-bopp ↔ projekt-lessons ↔ machbarkeit/stockwerkeigentum/ankaufspruefung — geprueft 2026-07-30 (Run 21, Erst-Pruefung)
- **Anlass:** das letzte verbliebene Paar der Liste «Noch nie geprueft», seit Run 9 unangetastet und
  dort als drohende Karteileiche markiert. Damit ist die Liste abgearbeitet.
- **Die KB ist sauber belegt und personendaten-diszipliniert, aber nach aussen praktisch unverbunden**
  und seit 25.07. eingefroren.
- **Schwerster Befund:** `projekt-giebelweg12` konservierte den ueberholten Zwischenstand
  «ausgemitteltes massgebendes Terrain 549.27 m ue.M. / volle Attika 130.25 m2 / 1'259 m3», waehrend
  der aus genau diesem Fall hervorgegangene Skill `massgebendes-terrain` die Ausmittelung als
  unzulaessige Falle beschreibt. **Der naheliegende Fix waere selbst falsch gewesen:** die 1'167 m3 des
  Skills sind ebenfalls nur ein Zwischenstand (Version 2, 12.06.). Der am Original verifizierte
  Endstand (PROJEKT-STAND.md + Deliverable, 13.06.2026, Nachweis Version 3) lautet **1'162 m3
  anrechenbar, Reserve 105 m3, Attika 128.9 m2, Abtreppung in drei Stufen**. Nachgefuehrt wurden
  Artikel und Skill; die beiden `outputs/` haben eine datierte Korrekturnotiz statt einer Umschrift.
- **Fuehrungsregel bestaetigt:** fuehrend fuer die **Zahlen** eines Projekts ist die Projekt-Wahrheit
  (PROJEKT-STAND.md, Rule `projekt-ablage-stand`), fuehrend fuer die **Methode** der Skill.
- **Weiter:** ausgerechnet `stockwerkeigentum` — laut KB der haeufigste Bopp-Auftragstyp — nannte die
  Kunden-KB als einziger der vier Skills nicht; als neue Eingabe-Ziffer ergaenzt (ohne das ungedeckte
  «zwingend» und ohne den fremd gefuehrten Honorar-Aspekt). Der Baar-Punkt wurde **nicht umgebucht,
  sondern querverwiesen** — der Teilaspekt «Referenzfall fuer `ankaufspruefung`» ist erledigt, der
  Projekt-Detailartikel und der Ausgang der Ankaufsentscheidung bleiben offen.
- **Widerlegt:** der «dritte, strukturell veraltende Projektstand mit verwaister Nachfuehr-Pflicht».

### energie ↔ baurecht ↔ planungsgrundlagen (die drei NEUEN Wasser-Destillate aus Run 119) — geprueft 2026-07-29 (Run 20)
- **Anlass:** `energie` hat am 29.07. mit Run 119 sieben Destillate angelegt, drei davon im
  Wasserrecht (Regenwasser-Brauchwassernutzung, Seewasser-Aquathermie, Eisspeicher). Der
  WsG-/WsV-Volltext liegt seit dem 28.07. im Haus — erstmals konnte ein Cross-KB-Lauf **am Tag
  nach** dem Zugang pruefen, ob die neuen Destillate ihn benutzen.
- **Befund, der den Lauf traegt: sie benutzen ihn nicht.** Alle drei stuetzen ihre
  Rechtsgrundlagen auf Sekundaerquellen (SVGW-Merkblatt 2001, AWEL-Planungshilfe) oder erklaeren
  die Grundlage fuer «nicht gefunden», obwohl die amtliche Fundstelle 24 Stunden vorher hereinkam.
  **Das Seewasser-Destillat legt neben einer bereits beantworteten Frage eine neue offene Frage
  an:** es laesst die Konzessions-Rechtsgrundlage zweimal wortgleich offen (§ 68 Abs. 1 lit. c
  WsG → § 119 Abs. 2 lit. c → § 120 Abs. 1 WsV) und kennt die Konzessionsdauer nicht, die
  **Run 19 einen Tag vorher fuer das Schwester-Destillat geklaert hatte** (15-30 Jahre,
  § 121 Abs. 1 lit. b WsV — der Litera-Wortlaut nennt Grund- UND Oberflaechenwasser, gilt fuer
  Seewasser also unmittelbar). Backlink zum Schwester-Destillat: 0 Treffer.
- **Strukturmuster, neu benannt: «Ein Zugang heilt keinen Bestand.»** Der Eingang eines Volltextes
  aktualisiert die Destillate nicht, die auf seine Luecke gebaut sind — auch nicht die, die am
  Folgetag entstehen. Der Loop recherchiert extern weiter, weil sein Curriculum die Frage als offen
  fuehrt. Konsequenz: nach dem Zugang eines Erlass-Volltextes muss ein **Rueckwaerts-Sweep** ueber
  die offenen Punkte der abhaengigen KBs laufen, nicht nur ein Vorwaerts-Destillat. Dritter
  Fundort derselben Klasse in drei Laeufen (Run 18 EG GSchG, Run 19 § 19 WsG, Run 20 hier).
- **Zweiter falscher Negativbefund:** das Eisspeicher-Destillat erklaerte, es gebe keine Schweizer
  Primaerquelle zur Bewilligungspflicht — § 92 WsV (technologieneutral: «Entzug von Erdwaerme»,
  «Eintrag von Waerme in das Erdreich») und § 44 Abs. 1 lit. a Ziff. 3 WsG liegen im Hub. Der
  Fehler erreichte den Bauherrn ueber FAQ F187. Korrigiert; die Anwendung auf den Eisspeicher ist
  ausdruecklich als KB-eigene Subsumtion gekennzeichnet, offen bleibt nur die AWEL-Vollzugspraxis
  in den Schutzzonen S1/S2.
- **Dritter Fundort des KGSchV-Falls (LS 711.11, aufgehoben 01.01.2022):** das Nachbar-Destillat
  `erdwaermesonden-bewilligung-zh-sz` fuehrte sie im Status «established» und ausdruecklich als
  «primaerquellen-verifiziert» an vier Stellen. Auf § 92 WsV umgestellt; die **Gebuehren-Nachfolge
  hat der Verifikations-Agent am Volltext gefunden** (§ 209 WsV verweist auf dieselbe GebV UR wie
  der alte § 69 KGSchV), womit die materielle Aussage des Destillats gueltig bleibt und der Status
  `established` zu Recht traegt. Der Chef hatte im selben Lauf den ersten Fundort geflaggt
  (OEREB-Thema 130, `planungsgrundlagen`) — **die energie-Seite war nie geflaggt worden.**
- **Lehre zur Nummern-Naehe (aus dem OEREB-130-Fall):** der Run-18-Sweep suchte `LS 711.1` und las
  ueber `LS 711.11` hinweg, weil die gesuchte Nummer als Praefix in der laengeren steckt. Bei
  LS-Nummern ist die Ziffernfolge ohne Wortgrenze nicht eindeutig (**711.1 ≠ 711.11**), so wie
  724.11 in zwei Zeitperioden zwei verschiedene Erlasse trug. Erlass-Sweeps ab jetzt auf
  Wortgrenze und jede Nummer der Zeile einzeln.
- **Status:** 8 Befunde bestaetigt, 3 widerlegt. Umgesetzt in `energie` (drei Destillate + FAQ
  F186/F187/F71 + INDEX + Curriculum-Nachtrag), Gegenrichtungen in `planungsgrundlagen`.
  Bring-Schulden: **P1 `baurecht`** (§§ 95-100 WsG/§ 178 WsV im ganzen Hub unverarbeitet, neue
  Matrix-Zeile), K62 `planungsgrundlagen` (Regenwasser-Nutzungsseite fehlt ganz).

### energie ↔ normen ↔ grobkosten (graue Energie Holzbau vs. Massivbau, neues Destillat) — geprueft 2026-07-29 (Run 20)
- **Der materielle Befund liegt KB-intern:** die Kopfaussage «durchgehend 20-40 % tiefer» wurde von
  der **eigenen Tabelle** des Destillats (-13 %, espazium-Fallstudie) und dem **eigenen
  Bauherren-Transfer** (20-25 %) widerlegt. Die 40-%-Obergrenze stammte allein aus einer
  Lignum-Journal-Zeile, die die Datei selbst als «keine eigene Studienquelle, als Kontext, nicht
  als harte Primaerzahl» entwertet — und deren Rechnung zusaetzlich arithmetisch falsch war
  (7,5 gegen 10,5-12,2 ergibt -29 bis -39 %, angegeben war ~20-37 %). Korrigiert auf **Median rund
  23 %, Planungsgroesse 20-25 %**; «durchgehend» qualifiziert nur noch die **Richtung** in der
  Wueest-Stichprobe (jedes der 35 Objektpaare unter der Winkelhalbierenden), nie eine
  Prozent-Bandbreite. Nachgezogen in `wiki/graue-energie.md`, `destillate/INDEX.md`, FAQ F189
  (dort war die Zahl schon richtig und ist jetzt die Leitzahl) und im **Curriculum**, weil sonst
  ein Folgelauf die widerlegte Zahl als eigenen Vorbefund wieder einliest.
- **Norm-Fehlzuschreibung, subtil und folgenreich fuer die Rechenbasis:** «Messgroessen (SIA 2032):
  kg CO2-eq/m2 **EBF**» ist falsch — die Bezugsflaeche EBF stammt aus der KBOB-/Minergie-/
  SIA-2040-Systematik; SIA 2032 bezieht auf die **Geschossflaeche GF** (SIA 416), belegt im Vorwort
  der Ausgabe 2010, das die EBF ausdruecklich kontrastiert. Der Verifikations-Agent hat dabei die
  Folgenabschaetzung des Finders entschaerft: **keine einzige Vergleichszahl muss neu gerechnet
  werden**, weil die Quellen die Minergie-/SIA-2040-Konvention korrekt anwenden — falsch war allein
  die Zuschreibung.
- **Fassungsstand SIA 2032:** `normen` fuehrt im REGISTER die Ausgabe 2010 als gueltig, `energie`
  zitiert seit dem 26.06. durchgaengig **SIA 2032:2020**. Hier hat die Verifikation die Aufloesung
  des Finders **verhindert**: die Ausgaben-Kette auf «2020✓ · 2010✗» umzuschreiben waere
  unzulaessig, weil das Register seit Run 37 eine eigene Beweisschwelle hat, kein hauseigenes
  Exemplar existiert und **kein Rueckzugsdatum fuer 2010 belegt ist** — ein gesetztes ✗ waere
  dieselbe ungedeckte Gueltigkeitsaussage, nur in die andere Richtung. Gesetzt wurde nur ein
  ⚠-Fassungsflag in der Bemerkungsspalte.
- **Zwei Bring-Schulden an `normen`:** SIA 2032:2020 hat im Hub **kein Destillat**, obwohl vier
  energie-Destillate und die BAUHERREN-FAQ darauf abstuetzen (`[[sia-2032]]` in
  `normen/destillate/sia-2040-2017.md:9` ist ein dangling link); **SIA 390/1** (Klimapfad-Norm,
  Zielwert 9 kg CO2-eq/m2·a) ist in der fuehrenden KB ueberhaupt nicht erfasst (grep «390/1» = 0
  Treffer), wird von `energie` aber seit dem 21.07. zitiert. Nebenbefund der Verifikation: die
  9 kg stammen **nicht** aus KBOB, sondern aus dem Minergie-Nachweiskurs 2023 — die vom Finder
  vorgeschlagene KBOB-Attribution waere schlechter gewesen als der Ist-Zustand.
- **Bring-Schuld an `grobkosten`, und eine Praezisierung, die einen Methodenanspruch verhindert
  hat:** die Wueest-Partner/Lignum/BAFU-Studie enthaelt eine **Kostenhaelfte** (Erstellungskosten
  Holz gegen Massiv), die nie an `grobkosten` gelangt ist; dort ist der einzige Holz-Kostenansatz
  des Hubs (`kennwerte.md:200`, «+5-15 %») unbelegt und trennt Bauweise nicht von Ausbaustandard.
  Der Verifikator hat belegt, dass die «35 Objektpaare gegen digitalen Zwilling» **nur fuer die
  oekologische Haelfte** gelten — der Kostenteil hat eine andere Stichprobe (17 Holzbauten gegen
  50 Referenzobjekte). Ohne diese Korrektur waere ein unbelegter Methodenanspruch nach `grobkosten`
  gewandert.
- **Vierter Fundort des Musters «Rule `normen-referenz` greift beim SCHREIBEN nicht»:** das neue
  Destillat zitiert SIA 2032 und SIA 390/1 ohne jeden Verweis auf `normen` (grep «normen» = 0
  Treffer), obwohl der **Elternartikel den Link seit Run 13 traegt**. Die Regel wird erneut erst im
  Cross-KB-Lauf durchgesetzt. Vorschlag an den Synergie-Orchestrator: ein Pruefschritt «zitiert
  dieses Destillat eine Norm? dann normen-Destillat verlinken» in `energie/training/PROGRAMM.md`.
- **Status:** 5 Befunde bestaetigt, 0 widerlegt.

### claude-code ↔ spec ↔ rules — ERST-PRUEFUNG 2026-07-29 (Run 20)
- **Anlass:** die KB `claude-code` wurde am 29.07. neu angelegt (Methoden-Register, SPW-Destillat,
  Lecture-Artikel, Lern-Loop `methoden-radar`) und war noch nie Gegenstand einer Cross-KB-Pruefung.
  Gefahrenlage: eine neue Methoden-KB kann doppelt fuehren, was Rules, `spec` und `docs/konzepte/`
  schon fuehren.
- **Der Hub widerlegt seine eigene, tagesaktuelle Regel.** Die Kontext-Diaet-Entscheidungsregel
  («automatisch oder lazily?») schliesst Loops, Infrastruktur und Messwerte ausdruecklich aus dem
  @-Import aus. **Am selben Tag** wurde `rules/rollen-taxonomie.md` importiert (CLAUDE.md:300) —
  mit genau diesem Inhalt: 90-%-Rechenzeit-Messung, 10'501 Laeufe, 10'017 Fehlstarts, drei
  Loop-Scripts. → **Entscheid Raphael, siehe Bericht.** Der Chef greift hier nicht selbst ein
  (Rollen-Taxonomie Regel 4: Quoten werden gemessen und berichtet, nie automatisch durchgesetzt).
- **Die eigene Messung war am Messtag schon zu tief.** `kontext-architektur.md` fuehrte 19 Importe /
  87'398 B; die Nachmessung des Chefs ergibt **20 Importe / 96'946 B / ~24'236 Token**. Hier hat die
  Verifikation eine falsche Korrektur abgewehrt: die Ersparnis-Zeile (105'573 → 87'398 B, 17 %)
  durfte **nicht** ueberschrieben werden, weil sie die Wirkung des Eingriffs am Commit `29bcb1ac`
  misst — das nachtraegliche Wiederanwachsen ist eine andere Groesse und gehoert in eine eigene
  Zeile. Beides steht jetzt getrennt, mit Messweg (`stat -f%z` ueber CLAUDE.md **plus** die Dateien
  aus `grep '^@/Volumes' CLAUDE.md`) und Zeitstempel, weil der Wert nachweislich in Minuten veraltet.
- **Null Querverweise zwischen `claude-code` und `spec`,** obwohl `kontext-architektur` und
  `environment-jans-hub` dieselbe Sache aus zwei Winkeln beschreiben (Messebene gegen formales
  Layer-3-Modell). Beidseitig verlinkt. Die Verifikation hat auch hier gebremst: die
  Baustein-Tabelle in `environment-jans-hub` durfte **nicht** auf einen Verweis reduziert werden —
  sie enthaelt die Video-Baustein-Zuordnung, die in `claude-code` nicht existiert, und Kuerzen ist
  nach Rule `wissens-bibliothekar` destruktiv.
- **Ehrlich anzumerken:** die Abgrenzung gegen die Rules ist in `claude-code/CLAUDE.md` sauber
  formuliert («diese KB begruendet die Konfiguration, ersetzt sie nicht») — dort war **kein
  Befund**. Zwei gemeldete Doppelspur-Vorwuerfe (Hub-Inventar-Zahlen, Herkunft des Wissens-Layers)
  wurden **widerlegt**.
- **Status:** 3 Befunde bestaetigt, 2 widerlegt. Neue Matrix-Zeile, F-ENV1 in `spec/wiki/QUESTIONS.md`.

### projekt-lessons ↔ auflagebereinigung ↔ baurecht (neuer Lesson-Artikel KISPI 1171/26) — geprueft 2026-07-29 (Run 20, Rotation)
- **Chronologie-Fehler mit belegter Gegenquelle:** der Artikel schrieb, der AfB-Zustaendigkeitswechsel
  sei erst am 27.07. sichtbar geworden und «nicht durch eine Mitteilung des Amts». Belegt ist das
  Gegenteil aus dem **twin-Korpus**: am 24.07. adressierte RJ «Guten Tag Herr Furrer (AfB)», und die
  Einfuehrung als neue Ansprechperson fuer Team 5 erfolgte durch Hottinger (AfB) selbst. Der
  Verifikator hat dabei eine Uebersteuerung verhindert: die verallgemeinernde Zeile («man erfaehrt es
  erst reaktiv») darf **nicht** entschaerft werden — sie ist auch fuer die AfB korrekt, weil die
  Information nur auf RJs Nachfrage bei der inzwischen falschen Stelle kam. Genau das ist die
  tragende Lesson.
- **Die Fakten erreichten die fuehrende KB nicht:** in `auflagebereinigung/wiki/aemter-stadt-zuerich`
  ist die Kontaktstellen-Luecke seit dem **04.06.** offen ausgewiesen, und beide betroffenen
  Adressaten (AfB, UGZ) stehen dort ohne Kenntnis des Wechsels. Bidirektional verlinkt — mit der
  Praezisierung des Verifikators, dass die Namen dort **nur als datierter, gebiets-/fallbezogener
  Stand** erscheinen duerfen, nie als generische Amtszustaendigkeit: sonst tauscht die KB eine
  veraltete Personenangabe gegen die naechste. Ausdruecklich **nicht** geschrieben, A. Hottinger sei
  «nicht mehr zustaendig» — der Wechsel ist gebietsbezogen, und die Rule `anrede-kontakte` fuehrt
  sie weiter als Kreisarchitektin AfB.
- **Fristbegriff harmonisiert statt ersetzt:** «vor Baufreigabe» ist nicht falsch, nur unnormiert —
  normseitig eine auf den Baubeginn gestellte Nebenbestimmung nach **§ 326 lit. a PBG**, wobei die
  schriftliche Baufreigabe diesen Zustand bestaetigt. Ein blosses Ersetzen haette die operative
  Tatsache geloescht, dass das AfB real eine Baufreigabe verlangt. Derselbe Anschluss im
  Schwester-Artikel `sbb-naeherbaurecht-thalwil-2414-vordach` nachgezogen, damit die KB im
  Fristbegriff nicht in sich auseinanderlaeuft. **Nicht** als Rechtsgrundlage ausgegeben: § 318 PBG
  regelt, welches Organ Baubehoerde ist, nicht die verwaltungsinterne Gebiets-/Teamzuteilung.
- **Status:** 3 Befunde bestaetigt, 2 widerlegt (darunter ein Zeitstempel-Vorwurf und eine
  Doppelspur-Behauptung). Neue Matrix-Zeile «Amt/Adressat/Kontaktperson je Deliverable».

### baurecht ↔ planungsgrundlagen ↔ energie (Gegenlesung am NEUEN WsG-/WsV-Volltext) — geprueft 2026-07-28 (Run 19)
- **Anlass:** Die in Run 18 als P1 gemeldete Luecke ist eingeloest — `baurecht` hat mit Buch-Run 69
  `raw/260730_amtlich_zh_wsg.md` (WsG, LS 724.1, §§ 1-132) und `raw/260730_amtlich_zh_wsv.md`
  (WsV, LS 724.11, §§ 1-215) beschafft. Erstmals waren damit ALLE rund 60 WsG-/WsV-Fundstellen des
  Hubs am amtlichen Wortlaut pruefbar. Beide raw-Dateien auf Vollstaendigkeit geprueft: lueckenlos,
  Frontmatter-Fassungsstand deckt sich mit dem Textkoerper — kein Befund.
- **Am Volltext BESTAETIGT (kein Handlungsbedarf):** § 45 WsG (Gewaesserschutzbereiche UND
  Grundwasserschutzareale, OEREB 130/132) · § 46 WsG (Grundwasserschutzzonen) · § 48 Abs. 2 WsG
  (Waermenutzungsatlas) · § 74 Abs. 1 lit. b WsG · § 126 WsG (Aufhebung EG GSchG + WWG) · § 11 und
  § 183 lit. b WsV · § 92 WsV · § 213 WsV · § 44 Abs. 1 lit. a Ziff. 3 WsG. **EG-GSchG-Reste ohne
  Aufhebungsvermerk: keine mehr.** Der Sweep aus Run 17/18 ist damit sauber abgeschlossen.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — Schwere hoch, 3 KBs betroffen):** Die
  grundeigentuemerverbindliche Festlegung des Gewaesserraums wurde hub-weit auf **§ 19 WsG**
  gestuetzt. Amtlich steht das Wort «grundeigentuemerverbindlich» woertlich und ausschliesslich in
  **§ 18 Abs. 1 WsG** (Randtitel «b. Festlegung»); **§ 19 WsG** heisst «c. Beruecksichtigung der
  baulichen Gegebenheiten in dicht ueberbauten Gebieten» und regelt die **Anpassung** — inhaltlich
  das Gegenteil. Betroffen war die Rechtsgrundlagen-Spalte von **OEREB-Thema 190**, also genau die
  Angabe, die aus `planungsgrundlagen` in Behoerdenschreiben ans AWEL wandert. Korrigiert in
  `baurecht/wiki/abstaende-und-hoehen.md`,
  `planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` (Tabellenzeile + Warnkasten)
  und `planungsgrundlagen/wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md`. Zusaetzlich ist
  **§ 19 WsG neu als eigene Aussage** in `abstaende-und-hoehen` erfasst (Abs. 2 = der Hebel, wenn
  ein festgelegter Gewaesserraum die bauliche Nutzung erheblich einschraenkt) — er war im Hub
  nirgends als solcher gefuehrt, weil er mit der Festlegung verwechselt wurde.
- **Der Mechanismus dahinter — NEUES STRUKTURMUSTER, gewichtiger als der Einzelfehler:**
  **Autorentext in `raw/` wurde spaeter als amtlicher Wortlaut zitiert.** Die Quelle der
  Verbreitung ist eine **vom KB-Autor geschriebene** Konkordanztabelle im Kopf von
  `baurecht/raw/260717_amtlich_zh_hwschv.md`; der amtliche Teil derselben Datei beginnt erst unter
  «TEIL A». Der Refuter von **Run 8** erklaerte die Zuordnung mit dem Satz «steht woertlich in der
  **amtlichen** Konkordanztabelle» fuer belegt (`outputs/2026-07-18_wissens-chef-run8.md:60`) —
  und behandelte damit Autoren-Interpretation als Primaerquelle. Die Datei markiert das im
  Frontmatter-Feld `umfang` sogar selbst; es wurde nur nicht gelesen. **Regel daraus: eine
  `raw/`-Datei ist nicht als Ganzes amtlich.** Fuehrt sie neben dem Erlasstext Autoren-Hilfstabellen
  (Konkordanz, Mapping, Uebersicht), sind diese sichtbar als «KB-Autorentext, nicht amtlich» zu
  kennzeichnen — sonst wiederholt sich der Fall bei jeder Mapping-Tabelle im Bestand.
  Der Chef fasst `raw/` nicht an (Rule `wissens-bibliothekar`) → als P1 in
  `baurecht/wiki/QUESTIONS.md` an die fuehrende KB uebergeben.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — Schwere hoch):** `energie` fuehrte fuer die
  Grundwasserwaerme-Konzession «**kein gesetzlicher Maximalwert**, Dauer im Einzelfall». Die
  Einschraenkung war ehrlich formuliert («bevor die WsV geprueft ist») und ist seit dem 28.07.
  einloesbar: **§ 121 Abs. 1 lit. b WsV** nennt fuer die Waermeentnahme/den Waermeeintrag eine
  **Regeldauer 15-30 Jahre** (Abs. 2: bei besonderen Verhaeltnissen laengstens 80). Die kursierenden
  **40 Jahre gelten fuer andere Litera** (lit. a Wasserentnahme, lit. d Inanspruchnahme) — fuer die
  Waermenutzung falsch. **Die Stufe war das Problem, nicht die Recherche:** gesucht wurde im
  **Gesetz**, geregelt ist es in der **Verordnung**. Korrigiert im Destillat UND in
  `energie/wiki/BAUHERREN-FAQ.md` F77 — dort erreichte der Fehler den Bauherrn. Praxisfolge:
  Amortisationshorizont der Waermequelle max. **30 Jahre** (`healthcare-wirtschaftlichkeit`,
  `machbarkeit` Typ B, `immobilienbewertung` DCF). Nebenbefund: die 100-kW/Minergie-Mindestgroesse
  steht **nicht** in der WsV → AWEL-Verwaltungspraxis, nicht Verordnungsrecht; § 173 lit. b WsV
  kennt bei 200 kW nur eine **Verfahrens**schwelle (vereinfachtes Verfahren).
- **Offen (nicht ausgefuehrt):** OEREB-Thema 130 stuetzt sich in `planungsgrundlagen` weiter
  ungeflaggt auf die **KGSchV (LS 711.11)**, die laut eigener KB-Feststellung (Buch-Run 69) per
  01.01.2022 aufgehoben ist; ein Nachfolgeerlass ist im Hub nicht belegt (die WsV enthaelt keine
  Aufhebungsklausel dazu). Nicht selbst gesetzt, weil die Nachfolge unklar ist — gehoert in den
  laufenden KGSchV-Klaerungsauftrag von `baurecht`.

### normen ↔ baurecht ↔ energie (Therapiekuechen-Report, SIA 500 Korrigenda, Buch-Run 69) — geprueft 2026-07-28 (Run 19)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** Der neue Therapiekuechen-Report ordnete
  das Spital der **Gebaeudekategorie IX** zu. Amtlich (**§ 47a Abs. 1 BBV I**) und in `energie`
  (SIA 380/1 Anhang A Tab. 24) ist **Spital = VIII**, **IX = Industrie**. Fuer § 41a bleibt das
  Ergebnis gleich (III-XII umfasst beide), die Nummer ist aber der Rechen-Identifikator: die
  Verwechslung kostet **20 statt 70 kWh/m²**, Innentemperatur 18 statt 22 °C, Qww 25 statt
  100 MJ/m²·a. Korrigiert im Report; zusaetzlich **Leitplanke mit der vollstaendigen Liste I-XII**
  in `normen/wiki/QUESTIONS.md` gesetzt, damit die Nummern nicht wieder aus dem Gedaechtnis kommen.
- **Befund 2 (VERALTET, BESTAETIGT, korrigiert — hoch; der ergiebigste Befund des Laufs):** Das
  SIA-500-Destillat fuehrte Ziff. 9.7.2 im Stand der Basisausgabe 2009. Der Verifikator hat die
  Basisausgabe UND die Korrigenda am Original beschafft: **C3:2013** aendert die **Bezugsgroesse von
  Parkplaetzen auf Wohnungen** (1 rollstuhlgerechter PP pro 25 **Wohnungen**) und fuehrt einen
  100-m-Gehdistanz-Richtwert ein. **Dabei ist ein dem Hub bisher voellig unbekanntes viertes
  Korrigendum C4:2019 aufgetaucht** (aendert Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2).
  Ziff. 9.7 nachgefuehrt, Fassungsfeld gesetzt, C4-betroffene Ziffern markiert; der volle Nachzug
  (~20 Stellen) als **P1 an den `normen`-Loop** uebergeben. **Der Fehler hatte die Destillat-Ebene
  schon verlassen:** `bauprodukte/wiki/bkp-261-aufzuege.md` rechnet ein Herstellermass gegen die
  Kabinen-Tabelle aus **Ziff. 3.7.3** — genau eine der von C4 geaenderten Ziffern; dort
  Fassungs-Vorbehalt gesetzt.
- **VERALLGEMEINERTE LEHRE — dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck».**
  Bisher: erst den Bestand nach juengeren **Ausgaben** durchsuchen. Neu: auch bei **unveraenderter
  Ausgabe** koennen **Korrigenda** einzelne Ziffern materiell aendern. Sie tragen keine neue
  Jahreszahl im Normtitel und sind an der Ausgabe **nicht erkennbar** — genau deshalb hat der Hub
  C4:2019 sieben Jahre lang nicht gesehen. Bei jedem SIA-Destillat gehoert ein Blick in die
  Korrigenda-Liste des SIA-Shops dazu; Korrigenda sind Preisgruppe 0 (gratis).
- **Nicht ausgefuehrt (tief):** `normen` schreibt im Therapiekuechen-Report ZH-Erlasswortlaut
  (BBV I §§ 29/36/41 + Anhang, PBG §§ 302/306/309) materiell fort, obwohl `baurecht` dafuer fuehrend
  ist. Als Report (nicht Wiki-Artikel) mit korrekt zitierten Fundstellen vertretbar — bei einer
  Promotion in die `wiki/`-Ebene aber auf Verweise umzustellen.

### energie Run 118 ↔ planungsgrundlagen ↔ baurecht (sechs neue Destillate) — geprueft 2026-07-28 (Run 19)
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** Das neue Rueckkuehler-Destillat gab eine
  **30-%-Technikreserve**, deren **Zweckbestimmung** und eine **PV-Reduktionsklausel** als Wortlaut
  von **§ 47b Abs. 1 BBV I** aus. Der Erlass besteht aus **genau zwei Saetzen** und enthaelt nichts
  davon: amtlich ist der **70-%-Belegungsdeckel**; alles Weitere steht in der **Vollzugshilfe**
  (ZH-Leitfaden Solaranlagen Dez. 2022). Gesetzliche Grundlage fuer die Ruecksicht auf hohe Bauten
  ist § 10c Abs. 3 lit. a EnerG als blosse **Delegationsnorm**. Korrekturkasten gesetzt.
- **Mechanik (fuer die Destillat-Praxis lehrreich):** Das als «woertlich» ausgewiesene Blockzitat war
  eine **Montage aus zwei getrennten Textbloecken**, verbunden durch «[…]» — weggefallen war genau
  der einleitende Satz, der die Verwechslung verhindert haette. **Regel: Erlasswortlaut und
  Vollzugshilfe nie in dasselbe Blockzitat montieren.**
- **WIDERLEGT (wertvoller Nicht-Befund):** Der Vorwurf, zwei aeltere Artikel bezoegen den
  70-%-Deckel faelschlich «nur auf hohe Bauten», kippt: der Bezug ist die **amtliche Vollzugslesart**
  des ZH-Leitfadens, nicht eine Falschlesart. Haette man ihn «korrigiert», waere die Vollzugspraxis
  aus dem Hub entfernt worden.

### bauprodukte (NEUE KB) ↔ normen / grobkosten / projekt-lessons — ERST-PRUEFUNG 2026-07-28 (Run 19)
- **Struktureller Hauptbefund (korrigiert):** Die am 28.07. entstandene KB war in dieser
  Fuehrungs-Matrix **ueberhaupt nicht registriert** — weder als fuehrend fuer Produktwissen noch mit
  der Klarstellung, dass Norm-Fundstellen und Kennwerte anderswo gefuehrt werden. **Drei Zeilen
  ergaenzt** (siehe Matrix oben). Genau diese Luecke hat den naechsten Befund erzeugt.
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** `dachbegruenung-systeme` fuehrte die
  Dachbegruenung allein unter **BKP 224** und kannte die massgebliche CH-Norm gar nicht.
  **SIA 312:2013** liegt seit laengerem als Destillat in `normen` und verlangt die Aufteilung
  **224 (Schichtaufbau) / 288 (Vegetation)** — wer alles unter 224 ausschreibt, verliert die
  Gaertnerleistung aus dem Devis. Normabschnitt mit verbindlichen Schichtdicken (extensiv 80-200 mm,
  intensiv 120-300 bzw. 200 bis >500 mm), Niederschlagsklassen-Tabelle und Neigungsschwellen
  (6°/15°) nachgetragen, **beidseitige Verlinkung** bauprodukte ↔ normen gesetzt.
- **WIDERLEGT (Kipp-Grund: falsche Leitnorm):** Der Vorwurf, die «fehlende normative Klassifizierung»
  bei Terrazzo/Kunststein sei durch **SN EN 16954:2018** laengst geschlossen, kippt — fuer die
  beschriebenen zementgebundenen Kunststein-/Terrazzoplatten ist **SIA 244:2006 «Kunststeinarbeiten»**
  die einschlaegige CH-Norm. Die Umsetzung haette eine falsche Normzuordnung in eine neue KB gesetzt.
- **Beobachtung ohne Handlungsbedarf:** `bauprodukte/.!33499!CHANGELOG.md` ist ein **0-Byte-
  SMB-Schreibfragment** vom 28.07. 01:37; das echte `CHANGELOG.md` ist intakt. Kein Datenverlust.
  **Nicht geloescht** (Rule: Loeschungen nie ohne Rueckfrage) → Entscheid Raphael, siehe Bericht.

### projekt-lessons ↔ normen / auflagebereinigung / BKP  UND  planungsgrundlagen Run 92 ↔ normen — geprueft 2026-07-28 (Run 19)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** `planungsgrundlagen` C41 fuehrte die
  Treppenbreite 1.20 m als «im Destillat nicht mit Ziffer belegt». Sie ist **dreifach belegt**:
  Grundmass **Ziff. 2.4.5 Abs. 3 = 1.5 m** gewendelt (innere Auftrittsbreite 0.15 m), die **1.2 m
  bei 0.1 m** sind eine ziffern-gebundene Erleichterung (Ziff. 3.1 Abs. 2 / 3.2.2 / 3.3.2 / 3.6.2).
- **Der Verifikator fand dahinter den groesseren Fehler — eine Luecke im Norm-Destillat selbst:**
  `normen/destillate/vkf-brl-16-15` liess in Ziff. 3.1 die Tatbestandsvoraussetzung «**welche
  mehrere Nutzungseinheiten erschliessen**» und Abs. 3 weg, und in Ziff. 3.2.2 den Abs. 3
  «**An Treppen innerhalb der Nutzungseinheit werden keine Anforderungen gestellt**» (gleichlautend
  3.3.2 Abs. 2). Das Destillat las sich dadurch, als gaelte die 1.2-m-Erleichterung generell — und
  es kannte die **praktisch haeufigste** Regel (interne Treppe) nicht. Beide Absaetze nachgetragen.
  C41 entsprechend umgeschrieben: **zuerst die Nutzungseinheit abgrenzen, dann die Breite bestimmen.**
- **Befund 2 (BKP, korrigiert — tief):** Die neue Lesson trug im Frontmatter `bkp: "273.35"` — ein
  Code, den die BKP-2017-Liste nicht kennt (dort existiert nur 273.3). Kuechen-/Gastroeinrichtungen
  sind **BKP 258**; «273.35» ist die **projektinterne Los-Nummer** KISPI. Feld praezisiert.
- **WIDERLEGT (3 von 3 Kipp-Gruenden griffen):** Der Vorwurf, die SBB-Lesson uebergehe die
  Unterscheidung projektbezogenes/generelles Naeherbaurecht, kippt — die Lesson erhebt gar keine
  Rechtsbehauptung, sie dokumentiert einen belegten Projektverlauf. **Der Vorschlag haette Schaden
  angerichtet:** er wollte ein «Vorsprungsprivileg § 260 Abs. 3 PBG» zitieren, das im geltenden
  Hauptteil des PBG einen anderen Gegenstand hat (Getrenntmessung bei gegliederten Gebaeuden).
- **Zwei Zusatzbefunde in `baurecht`, an die KB gemeldet (nicht selbst korrigiert):** (a) im
  Destillat `band-2/15-lage-von-gebaeuden-teil2d.md` sind **drei Saetze des Abschnitts C
  grammatisch zerstoert** (fehlende Negation, Satz ohne Subjekt) und damit nicht zitierfaehig —
  ausgerechnet die Passage zum generellen Naeherbaurecht; (b) `wiki/abstaende-und-hoehen.md` zitiert
  die 1/3-/1.3-m-Vorsprungsregel weiterhin ungebrochen als «§ 260 Abs. 3 PBG», obwohl die KB die
  Haupt-/Anhang-Divergenz am 27.07. (Buch-Run 62) selbst als offene Frage markiert hat.


### baurecht ↔ planungsgrundlagen (Nachkontrolle EG-GSchG-Sweep) — geprueft 2026-07-27 (Run 18)
- **Anlass:** Die Nachtschicht zog den in Run 17 angeordneten Sweep nach (12/15 Fundorte). Dieser
  Lauf prueft nicht das Verschwinden des Strings, sondern die **Ersetzung**.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Der Sweep baute einen NEUEN Fehler
  ein. Frontmatter `baurecht/buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md:7` ordnete die
  Abwasserparagraphen **§§ 45-48 WsG** (planerischer Gewaesserschutz) zu; richtig ist **§§ 49 ff.,
  Abschnitt C Siedlungsentwaesserung** — so auch der Fliesstext derselben Datei (Z. 17/55) und Band 1
  (03-erschliessung Z. 97). Chef am amtlichen PDF gegengelesen. Zusatz: «§ 13 ff.» ist ein
  Uebertragungsfehler fuer «§§ 14 ff.» (§ 13 regelt die Sicherheitsleistung).
- **Befund 2 (VERALTET, BESTAETIGT, korrigiert — materiell):** Der in `baurecht/training/PROGRAMM.md`
  selbst angemeldete **Drittkanal** blieb offen: `planungsgrundlagen/wiki/kartenportale-oereb-kataster-
  system-zh.md` fuehrte OEREB 130/131/132 weiter auf LS 711.1, `established`, ungeflaggt; dritter
  Fundort `recht-norm-regenwasser-gewaesserraum-zh.md:108`. Zuordnung am Volltext verifiziert:
  **§ 45 WsG** (130 + 132), **§ 46 WsG** (131), **§ 48 Abs. 2 WsG** = Waermenutzungsatlas.
- **Befund 3 (VERALTET, gemeldet, NICHT ausgefuehrt — P1):** Der **WsG-Volltext fehlt im ganzen Hub**
  (`find *724.1*` = 0), obwohl `baurecht` ihn an ~14 Stellen zitiert. In `baurecht/wiki/QUESTIONS.md`
  mit funktionierender notes.zh.ch-URL + Mindestumfang angemeldet (die zh.ch-`dam`-URL liefert HTML).
- **Status:** korrigiert; P1-Bring-Schuld offen beim baurecht-Loop.
- **Regel daraus:** **nach einem Erlass-Sweep prueft eine zweite Instanz die ERSETZUNG.** Fehlerarten
  (a) neue Falschzuordnung, (b) nicht erreichter Drittkanal, (c) Register-Selbstwiderspruch sind fuer
  eine grep-Erfolgskontrolle unsichtbar, weil der gesuchte String weg ist.

### energie ↔ planungsgrundlagen ↔ baurecht (EnerGIS/Waermeversorgung Stadt ZH) — geprueft 2026-07-27 (Run 18)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** 70-%-Kurzschluss in
  `energis-kartenwerk-stadt-zuerich.md:172-175` UND `fernwaerme-anschlusspflicht-zh.md:61-63`:
  § 295 Abs. 2 PBG kennt **keine Prozentschwelle**, sondern zwei kumulative Voraussetzungen
  (lokale Abwaerme/erneuerbar UND technisch-wirtschaftliche Gleichwertigkeit). Drei 70-%-Regeln
  getrennt: WVV Art. 8 lit. a (staedtisch) / § 47 g BBV I (kantonal) / AfB-Merkblatt (Vollzug).
- **Befund 2 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, gesetzt):** planungsgrundlagen hatte **0 Treffer**
  fuer EnerGIS/WVV/Waermenutzungsatlas ueber alle 51 Wiki-Artikel → beide Portale in die
  Portaluebersicht aufgenommen, Flaechenkonkurrenz-Warnung in den PV-Artikel, Rueckverweise gesetzt.
- **Fuehrung neu festgehalten:** Kartenportal/Zugriffsweg → **planungsgrundlagen**; materielle
  Rechts-/Fachaussage (WVV, Gasverbot, Verbindlichkeit) → **energie**; Erlasswortlaut → **baurecht**.
- **Offen (P2):** §§ 4-7 EnerG fehlen in `baurecht/raw/260712_amtlich_zh_energ.md` (auf §§ 9-14
  begrenzt), weshalb `energie` den Wortlaut selbst pflegt — in baurecht/QUESTIONS angemeldet.

### energie ↔ normen (Baeder-/Rueckkuehler-Normen) — geprueft 2026-07-27 (Run 18)
- **Befund 1 (VERALTET, BESTAETIGT, korrigiert):** «Bezeichnungskollision SIA 385/1» stand als
  ungeklaert, obwohl `normen` sie zwei Tage zuvor (Run 22) aufgeloest hatte: Nummern-Wiederverwendung,
  Badewasser laeuft ueber **SIA 385/9**. **Verifikator verschaerfte:** geltende Ausgabe laut SIA-Shop
  **385/9:2023**; das normen-REGISTER speist sich aus einem Bestand mit **Stand 25.02.2013** und
  bildet spaetere Revisionen strukturell nicht ab → Fassungs-Pruefauftrag in normen/QUESTIONS (P1).
  **Klasse offen:** dieselbe 2013er-Grenze betrifft potenziell jede nach 2013 revidierte Norm.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt):** **EN 13487** und **EN 12102-1** fehlen in der
  fuehrenden KB ganz (grep je 0), werden von energie aber zitiert — in normen/QUESTIONS angemeldet.
  Abgrenzung festgehalten: Cercle-Bruit-Vollzugshilfen 6.20/6.21 sind **keine** Normen und bleiben
  bei `energie`.
- **Befund 3 (VERALTET, korrigiert):** BFE-Kennwerte 1993 standen ohne Alters-Vorbehalt am Zahlenort
  und wurden ueber `destillate/INDEX.md` weiterpropagiert; Bezugsgroessen SIA 116:1952 / SIA 180/4:1982
  sind zurueckgezogen (Nachfolge SIA 416:2003 / 416/1:2007) → Vorbehalt an die Zahlen UND in den INDEX.

### energie ↔ baurecht (SZ-Abwaerme, Submetering) + energie-intern — geprueft 2026-07-27 (Run 18)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Submetering-Destillat verneinte die
  Befreiung der Zwischenzone 200'000-500'000 kWh; **§ 48c Abs. 1 lit. c BBV I** befreit
  schwellenunabhaengig (freiwillige Zielvereinbarung/KMU-Modell). **7. Fundort des Musters
  «Korrekturen sind nicht ansteckend»** — dieselbe Korrektur stand seit Run 16 in
  `planungsgrundlagen` und war dort markiert.
- **Befund 2 (DOPPELSPURIGKEIT, korrigiert):** § 30a BBV I aus einem Schwesterdestillat statt aus
  `baurecht/raw` zitiert → «zumutbar» statt amtlich «**tragbar**», Ausloesetatbestand von Abs. 2
  weggefallen. Chef am Original gegengelesen (raw Z. 444-446).
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** Der Vorlaeufer aus Run 116 lief unmarkiert mit der
  nur websuchgestuetzten SZ-Fassung weiter → Ueberholt-Vermerk + Backlink auf die Volltext-Vertiefung.
- **Befund 4 (WIDERLEGT — wertvollster Nicht-Befund des Laufs):** «Amt fuer Gewaesser SZ existiert
  nicht» beruhte auf einem hub-internen grep-Negativbefund. Das **AfG existiert**; SZ teilt die
  Gewaesserschutzfachstelle: **AfG** fuer Abwasser (§ 17 EGzGSchG), **AfU** fuer Grundwasser
  (§ 29 EGzGSchG). Die Umsetzung haette die Falschangabe erst erzeugt. Unterscheidung im
  Ueberholt-Vermerk festgehalten. **Regel: «steht nicht in unserer KB» ist nie «gibt es nicht».**

### energie ↔ baurecht (Abwaerme/Prozessenergie, EG GSchG → WsG) — geprueft 2026-07-27 (Run 17)
- **Anlass:** energie Run 116 (27.07.) legte vier neue Abwaerme-Destillate + einen Wiki-Artikel an
  (Abwasserwaerme Kanalisation ZH/SZ, Grosskuechen-Lueftung, Serverraum-Kuehlung, Waescherei
  Pflegeheim/Spital).
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, ERGIEBIGSTER BEFUND DES LAUFS):**
  Beide KBs stuetzten die AWEL-Bewilligung fuer Waermenutzung aus Wasser auf **§ 8 EG GSchG**;
  `energie` behauptete zugleich — ungeprueft aus dem AWEL-Glossar 2025 uebernommen — die Abloesung
  durch das WsG und liess im selben Atemzug offen, ob das WsG ueberhaupt in Kraft sei. **Der Chef hat
  das amtliche PDF `724.1_12.12.24_133.pdf` (zhlex) selbst gezogen und drei Stellen im Volltext
  gegengelesen:** § 126 lit. a hebt das **Einfuehrungsgesetz zum Gewaesserschutzgesetz vom 8.12.1974
  auf**, Fn. 2 nennt das Inkrafttreten **1. Juni 2026** (OS 81, 145), und § 44 Abs. 1 lit. a Ziff. 3
  erfasst die Nutzung «von Boden, Untergrund oder **Abwasser** zur Gewinnung von **Energie**»
  neu ausdruecklich. **Ergebnis: `energie` hatte sachlich recht (ohne Beleg), die laut Matrix
  FUEHRENDE KB `baurecht` zitierte aufgehobenes Recht** — an 17 Fundorten.
  **Ursache:** der WsG/WsV-Nachzug aus Buch-Run 50 sweepte nur den Suchbegriff «HWSchV» und wurde in
  Run 64 als «bleibt geschlossen» verbucht; § 126 hebt aber ZWEI Erlasse auf.
  **Verallgemeinerte Regel: nach dem NACHFOLGE-Erlass sweepen, nicht nach dem einen Erlass, der den
  Anlass gab.** → `energie` auf § 44 Abs. 1 lit. a WsG umgestellt (historischer Vermerk, offener
  Punkt geschlossen, Setzfehler «§ EGSchG» bereinigt); in `baurecht` die zwei konsumierten Stellen
  direkt korrigiert, die restlichen 15 Fundorte als **Prioritaet (a) im ARBEITSREGISTER**
  (`training/PROGRAMM.md`) mit Fundortliste, Erledigt-Kriterium und §-Zuordnungen angemeldet,
  Zeiger in `wiki/QUESTIONS.md`. Neu enger gefasst offen: ist die **KGSchV (LS 711.11)** ebenfalls
  aufgehoben (§ 126 hebt nur *Gesetze* auf)?
- **Befund 2 (VERALTETES, BESTAETIGT, korrigiert):** dasselbe Destillat fuehrte das Inkrafttreten des
  WsG als «offenen Punkt», obwohl es sowohl in `baurecht` (Nachtrag 133, Buch-Run 54) als auch im
  energie-EIGENEN Schwester-Destillat seit dem 15.07. primaerquellen-belegt war. → geschlossen.
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** keine der fuenf neuen Dateien enthielt einen
  einzigen Verweis auf `baurecht` oder `planungsgrundlagen` (grep-Zaehler je 0) — **5. Fundort** des
  Musters «Rule `normen-referenz` greift beim SCHREIBEN nicht». Die §-Zitate selbst waren alle
  korrekt (am Volltext geprueft, keine ZH/SZ-Verwechslung). → Querbezug-Block gesetzt.
- **Offen an den Loop:** Anrechnungsregel Duschwasser-WRG wird in `energie` fortgeschrieben, obwohl
  `planungsgrundlagen` fuer Nachweisregeln/Formulare fuehrend ist.

### normen ↔ planungsgrundlagen (Lignum-Holzbau-Brandschutz) — geprueft 2026-07-27 (Run 17)
- **Anlass:** normen Run 30/34/35 legte sechs neue Brandschutz-Destillate an (Lignum 4.1/4.2/Lignatec,
  VKF AH 1001-15, VKF allgemein anerkannte Bauprodukte, Brandschutznachweis-Anleitung V.3).
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, GEFAEHRLICHSTER BEFUND):**
  `brandschutz-pl03-wegweiser` kehrte die **Kapselungsregel** um: K stand als fixe 30 Minuten mit der
  Differenz als blosser Obergrenze, statt als **Rechenwert nach unten** (Gesamtbauteil minus 30 Min.,
  Untergrenze K30-RF1). Folge: bei **REI 90-RF1** sah **K30-RF1** zulaessig aus, wo Tab. 232-2
  zwingend **K60-RF1** verlangt — eine **unterdimensionierte Brandschutzbekleidung**, die aus dem
  Vorprojekt-Grobcheck in eine Ausschreibungsklausel wandern kann. → an den Normwortlaut angeglichen.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** **Wandtraglast q'd,fi** war
  «durchgehend» je Feuerwiderstandsklasse angegeben (20/50 kN/m'), gilt aber nur fuer EINEN der
  sieben Systemtypen. Fehler in beide Richtungen: Blockbau 50 statt 20 kN/m' (**unsichere
  Ueberschaetzung**), Brettstapel 20 statt 70 kN/m' (unnoetig konservativ). `normen` hatte denselben
  Fehler in Refuter-Runde 31 bei sich bereits korrigiert — in der Abnehmer-KB lief er weiter.
  → Werte je Systemtyp eingesetzt, dazu der zweite uebersehene Punkt (90-Min.-Tabellen bestehen nur
  fuer zwei der sieben Systeme). Bildpruefung am Original S. 46-51 durch den Verifikations-Agenten.
- **Befund 3 (VERALTETES, korrigiert — materiell):** **Lignatec 17/2005** (TKB-VKF-Anerkennung bezogen
  auf VKF-Ausgabe **2003**) wurde ohne Ausgabenummer, ohne Jahr und ohne Vorbehalt **vorrangig vor
  der geltenden VKF-BSR-Tabelle** empfohlen — waehrend die fuehrende KB `normen` dieselbe Publikation
  seit dem 26.07. als «VERALTET» kennzeichnet. Zwei KBs, dasselbe PDF, gegenlaeufige
  Handlungsanweisung. → Vorrang umgekehrt, Vorbehalt gesetzt; festgehalten, dass die abgeleiteten
  Healthcare-Aussagen nur tragen, weil §4b sie unabhaengig aus der geltenden BSR 15-15 belegt.
- **Befund 4 (DOPPELSPURIGKEIT, Querbezug gesetzt):** Lignum 4.1/4.2/Lignatec wurden in beiden KBs
  parallel gefuehrt, ohne einen einzigen Verweis in irgendeiner Richtung. → Querbezug-Block im
  fuehrenden Destillat gesetzt, der die zwei obigen Fehler ausdruecklich benennt, damit eine kuenftige
  Aenderung an Tab. 232-2 oder den Traglasttabellen nicht wieder an der Abnehmer-KB vorbeilaeuft.

### baurecht ↔ auflagebereinigung (Nebenbestimmungen/Fristen/Rechtsmittel) — geprueft 2026-07-27 (Run 17)
- **Anlass:** baurecht Buch-Run 67 hat `nebenbestimmungen-und-reverse` erstmals Modell-D-verifiziert;
  Paar zuletzt am 12.07. (Run 2) geprueft.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, korrigiert — materiell):** Der Fristen-Artikel der
  `auflagebereinigung` — die Frist-Wahrheit dieser KB — listete sechs Einreichungszeitpunkte und
  **keine einzige gesetzliche Frist**. Ein grep ueber die ganze KB nach «Rechtsmittel», «anfechten»,
  «Anfechtung», «Rechtsschutz» lieferte **0 Treffer**. Fehlend: die **Rekursfrist 30 Tage**
  (§ 22 Abs. 1/2 VRG, Baurekursgericht § 329 Abs. 1 PBG, Verwirkung § 316 Abs. 1 PBG). Materiell: wer
  Auflagen nur «bereinigt», akzeptiert sie faktisch, waehrend die Frist parallel laeuft; Verhandeln
  mit dem Amt hemmt sie nicht. Ebenso fehlte der Zusammenhang, der die Spalte «vor Baubeginn» lesbar
  macht (§ 25 Abs. 1 VRG aufschiebende Wirkung, § 339 PBG Beschraenkung + Teilfreigabe).
  → Abschnitt «Vorgelagert: die einzige gesetzliche Frist» eingesetzt (inkl. § 322 PBG Erloeschen
  nach 3 Jahren), **Frist-Gate vor Schritt 1** im Prozessartikel: abarbeiten ODER anfechten.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, korrigiert):** Der einzige Handoff von `baurecht`
  in diese KB lief ueber die [[ausnahmebewilligung-und-bestandesschutz]]-Linie — ein Artikel, der nur
  Dispens § 220 und Bestandesschutz § 357 PBG behandelt (0 Treffer fuer «Baubeginn»/«Auflage»).
  Zustaendig ist § 321 PBG → [[nebenbestimmungen-und-reverse]]. Die Gegenrichtung war korrekt gesetzt,
  nur die Hinrichtung griff ins Leere. → umgehaengt, § 326 lit. a PBG als Stuetze, Gegenverweis gesetzt.

### wettbewerbs-dna ↔ entwurfs-referenzen ↔ grobkosten ↔ immobilienbewertung (Wohnbau-Kennwerte) — geprueft 2026-07-27 (Run 17)
- **Anlass:** Etappe 3 des wettbewerbs-dna-Trainings abgeschlossen (Baustein B5 Wohnungsbau),
  `wohnen-mfh-urban.json` v1.0 → v2.0, grobkosten `wiki/kennwerte.md` geaendert.
- **Beide gemeldeten Befunde WIDERLEGT — und das ist ein POSITIV-Ergebnis.** Gesucht wurde gezielt
  dieselbe Fehlerklasse, die beim Healthcare-Set in Run 15/16 zutraf (Kennwertband gegen die fuehrende
  Quelle verschoben; schaerfster Kaveat beim Transfer verloren). Der Verifier hat beides verworfen:
  der Kaveat «Zielkostendach, vom Sieger MOERAKI verfehlt» steht vollstaendig im Array
  `entwurfs_regeln` inkl. Projektname und Fundstellenverweis (B4/B6); die Bandbreiten-Differenz
  erklaert sich aus verschiedenen Bezugsgroessen und Scopes. **Der KB-Loop hat beim Wohnbau-Set genau
  das richtig gemacht, was er beim Healthcare-Set falsch gemacht hatte** — zwei aufeinanderfolgende
  Cross-Laeufe, dieselbe Fehlerklasse, beim zweiten Mal nicht mehr da. Belegter Fortschritt.
- **Fuehrungslage bestaetigt:** fuer den **Wohnbau** ist `grobkosten` zu Recht fuehrend (anders als bei
  Healthcare); `quelle_kb` zeigt korrekt dorthin.
- **Struktur (gesetzt):** `grobkosten/wiki/kennwerte.md` kannte seine zwei neuen Abnehmer nicht
  (0 Treffer fuer «entwurfs-referenzen», «parameter-set», «wettbewerbs-dna») → Abnehmer-Block gesetzt,
  inkl. ausdruecklicher Abgrenzung, dass diese KB fuer Healthcare NICHT fuehrend ist.
- **Offen an den Loop:** `kosten_referenz` nennt nur EINE `quelle_kb` — fuer die ebenfalls enthaltene
  m2-HNF-Dimension fehlt der Zeiger auf die dafuer fuehrende `immobilienbewertung`.

### twin ↔ spec ↔ rules (DNA-Kompilat, Kontaktliste) — geprueft 2026-07-27 (Run 17, rotierend)
- **Anlass:** twin Batch 80 (27.07.) hat alle Facetten-Artikel geaendert; spec Run 36/37.
- **Befund 1 (VERALTETES, BESTAETIGT, korrigiert — nicht materiell, da die Rule selbst massgeblich
  bleibt):** `spec/wiki/environment-jans-hub.md` fuehrte als `status: established` die aktive
  Handlungsempfehlung, direkt ueber den SMB-Mount zu committen — genau die Praxis, die am **26.07.**
  verboten wurde (Rule `sync-kanonische-quelle` Abschnitt «NIE», neuer Kopfabschnitt in
  `git-auto-push`, Auto-Verbesserung 260726). Der Lauf-9-Schluss hatte den Regel-Widerspruch 2026-07-13
  per **Betriebs-Empirie** zugunsten des direkten Commits entschieden. → Nachtrag gesetzt; der Schluss
  bleibt als Methodik-Beispiel stehen, aber mit umgekehrtem Vorzeichen. **Lehrsatz fuer den
  Verifier-Schritt der Spec-Methode: ein Verifier aus Betriebs-Empirie belegt den Ist-Zustand, nicht
  die Belastungsgrenze — ein daraus abgeleiteter Regel-Entscheid braucht ein Verfallsdatum oder eine
  Re-Pruefung statt `established`.**
- **Befund 2 (WIDERSPRUCH, BESTAETIGT — NICHT vom Chef geaendert, Entscheid Raphael):**
  `rules/anrede-kontakte.md` fuehrt Besnik starr als «nackter Vorname-Opener», waehrend
  `twin/wiki/beziehungsregister.md` am authentischen Beleg (21.05.2026) «Geschaetzter Besnik» +
  direkten FG-Block belegt. Weil die Rule laut eigener Konvention VOR dem Wiki konsultiert wird, wirkt
  der veraltete Stand. Der twin-Loop hat die Korrektur ausformuliert, aber korrekt nicht selbst in die
  Rule geschrieben (Freigabe-Bindung, twin-CHANGELOG 2026-07-25j). **Der Chef ebenfalls nicht.**
  → im Bericht als Entscheid vorgelegt; wirksamer als die Besnik-Zeile waere eine **generelle Klausel**
  im Abschnitt «Konvention» (Anrede-Stufe folgt dem Gewicht des Anliegens, dreifach belegt:
  Tschopp/Besnik/Hiltmann) — sie heilt alle Zeilen zugleich. Zustellvermerk in `twin/wiki/QUESTIONS.md`.
- **Befund 3 (WIDERSPRUCH, ungeprueft, ebenfalls Entscheid Raphael):** **Felix Staehlin** — Rule fuehrt
  «Karl Waechter AG», zwei juengere twin-Batches (60/61) «Staehlin AG Sanitaer». Anredeform stimmt
  ueberein, Firmenzuordnung nicht; das Wiki ist selbst uneinheitlich. Nach Rule
  `identifikatoren-verifizieren` ist der Firmenname ein Identifikator, der in Anschreiben, Adressblatt,
  Submittentenliste und Werkvertrag wandert. Aus dem Korpus nicht entscheidbar → vorgelegt.

### energie ↔ normen (Koerperschall WP / SIA 181 Schallschutz) — geprueft 2026-07-26 (Run 16)
- **Anlass:** beide KBs haben am selben Abend im Abstand von 20 Minuten zum selben Normenfeld
  geschrieben — energie Run 112 (23:07) legte das komplett neue Themenfeld «Koerperschallisolation bei
  Waermepumpen» an (EMPA Baschnagel 2002), normen Run 28 (22:47) vervollstaendigte
  `sia-181-2006.md` um Anhang A+B. Genau die Konstellation, in der Doppelspurigkeit entsteht.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Der neue energie-Artikel erklaerte
  den Tabelle-6-Wert **28 dB(A)** zum Zielmass «im eigenen Schlafzimmer». SIA 181 trennt aber zwei
  Faelle: Tabelle 6 / Ziff. 3.2.3.3 gilt **zwischen** Nutzungseinheiten (28 dB(A) mittlere
  Empfindlichkeit, 25 dB(A) erhoeht nach Ziff. 3.2.3.4); **innerhalb** der eigenen Nutzungseinheit
  gibt die Norm nach Ziff. 0.1.2 nur **Empfehlungen** (Anhang G: 30/25 dB(A)). Der Verifier hat den
  Scheinwiderspruchs-Test am Original gefuehrt und die Trennung an drei Ziffern belegt (2.1.4,
  3.2.3.2, 3.2.3.7.1). → Fallunterscheidung an **allen vier** energie-Stellen eingesetzt (Destillat,
  `wiki/waermepumpen-laermschutz`, BAUHERREN-FAQ F159, `wiki/INDEX`), inkl. Hinweis, dass bei neu
  begruendetem STWEG nach Ziff. 2.2.2 verbindlich die erhoehten Anforderungen gelten (25 statt 28).
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Wiki und FAQ behaupteten pauschal,
  Koerperschall werde «von keiner Behoerde geprueft» (das Quell-Destillat formulierte enger: «keine
  *Bewilligungs*behoerde»). SIA 181 Ziff. 0.1.1 nennt den abgestrahlten Koerperschall im
  Geltungsbereich, Ziff. 0.1.7 unterstellt ihn bis zum Inkrafttreten der eidg. Erschuetterungs-
  verordnung **direkt dem USG** (Ziff. B.5 fuer die Messung). → auf «nicht Gegenstand des
  LSV-Laermschutznachweises im Baubewilligungsverfahren» praezisiert, USG-Bezug ergaenzt. Das ist
  zugleich das staerkere Argument gegenueber dem Bauherrn, die Entkopplung einzufordern.
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** Das neue Destillat zitierte «SIA 181» ohne Ausgabe
  und ohne Ziffer und verlinkte nur KB-intern, waehrend alle Schwesterartikel (schallschutz-sia181,
  sommerlicher-waermeschutz-sia180) den Querbezug-Block fuehren — die Rule `normen-referenz` greift
  beim SCHREIBEN neuer Artikel weiterhin nicht (bekanntes Muster, 4. Fundort). → Querbezug-Block mit
  ziffern-genauen Fundstellen gesetzt.
- **Befund 4 (DOPPELSPURIGKEIT, ⚠-Flag beidseitig gesetzt):** Beide KBs fuehren die
  SIA-181-Anforderungswerte, aber aus **verschiedenen Ausgaben**: energie aus einer Buero-
  Zusammenfassung der **Ausgabe 2020** (erhoeht +4 dB), normen aus dem **Original 2006** (+3 dB) —
  ohne Verweis zwischen den Destillaten. Das ist eine Ausgaben-, keine Sachdifferenz. → ⚠-Zeile in
  beiden Destillaten, Arbeitsteilung wie beim SIA-180-Paar festgeschrieben (normen fuehrt die
  Fundstelle, energie die Vollzugsebene). **Offen: Re-Destillat SIA 181:2020 aus dem Original**
  (Bring-Schuld `normen`, Register-Eintrag vorhanden).
  **Status: 2 materielle Korrekturen (6 Stellen), 1 Querbezug-Block, 1 Ausgaben-Flag beidseitig.**

### energie ↔ baurecht ↔ planungsgrundlagen (Grossverbraucherartikel, Betriebsoptimierung ZH) — ERST-PRUEFUNG 2026-07-26 (Run 16)
- **Anlass:** zweites brandneues Themenfeld aus energie Run 112 — kantonales Energierecht, ein Feld,
  fuer das die Rollen-Matrix bisher **keine Zeile** hatte.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — Rechtsfehler):** Das neue Destillat schrieb dem
  Kanton Zuerich den **Schwyzer** Befreiungskatalog zu («§§ 6-8/§ 10 EnerG», an vier Stellen). Amtlich
  gilt in ZH ein voellig anderer: § 13a Abs. 2 EnerG delegiert an die Verordnung, und **§ 48b Abs. 2
  BBV I** nennt §§ 22a, 23, 26, 29 Abs. 2-4, 30a, 45, 45a (weitere Befreiungen kann die Baudirektion
  aufnehmen). Der Verifier hat zusaetzlich das amtliche EnerG-PDF von notes.zh.ch gezogen und
  gegengelesen. Die Reihe «§§ 6-8/§ 10» gehoert ausschliesslich zu SZ (§ 9 Abs. 4 kEnG); die
  behauptete Struktur-Analogie ZH/SZ traegt nur fuer die **Schwellenwerte**. → an allen vier Stellen
  korrigiert, Analogie-Aussage entsprechend eingeschraenkt.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, praxisrelevant fuer Healthcare):**
  `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` fuehrte die Betriebsoptimierung als
  reine Verbrauchsschwelle mit Fristbeginn «nach Fertigstellung». Amtlich laeuft die Frist ab
  **Inbetriebsetzung** (§ 13d Abs. 1 EnerG), und die Verordnung ist als **Befreiungs**norm gebaut:
  § 48c Abs. 1 BBV I befreit (a) < 200'000 kWh Strom/Jahr, (b) Grossverbraucher mit Zielvereinbarung,
  (c) freiwillige Zielvereinbarung (KMU-Modell). Beide Ausnahmen fehlten ganz — nach der bisherigen
  Formulierung waere gerade Spital/Pflegeheim faelschlich in die Pflicht gefallen. → korrigiert,
  beide Ausnahmen ergaenzt, auf das energie-Destillat und die amtlichen raw-Dateien verwiesen.
- **Befund 3 (VERALTETES, BESTAETIGT, NICHT korrigiert — Verifier hat die Freigabe zurueckgehalten):**
  Das Frontmatter des Destillats bezeichnet die Fassung als «EnerG ZH Nachtrag vom 19.4.2021». Im
  Kt. ZH ist «Nachtrag» aber die Nummer der **konsolidierten Fassung** (aktuell **Nachtrag 129**,
  Stand Publikation 1.7.2025 — Fusszeile «1. 7. 25 - 129» am Original-PDF verifiziert), waehrend
  Aenderungserlasse als «G vom <Datum>» zitiert werden. Materiell ist der Inhalt aktuell, nur die
  Fassungsbezeichnung irrefuehrend. → als **offener Punkt** an die KB `energie` (siehe Bericht).
- **Befund 4 (FEHLENDE QUERVERLINKUNG, gesetzt) + offene Bring-Schuld geschlossen:** Das Destillat
  fuehrte die Verordnungsebene als offenen Punkt («nicht durch eigene Verordnungslektuere vertieft»),
  obwohl §§ 48a-48c BBV I amtlich und primaerquellenverifiziert in `baurecht/raw/` liegen. → Quelle
  ergaenzt, offener Punkt geschlossen, Cross-KB-Block (baurecht = Erlasswortlaut, pg = Formularseite)
  gesetzt; Gegenrichtung in pg gesetzt.
- **Befund 5 (DOPPELSPURIGKEIT/Fuehrung ungeklaert, Matrix ergaenzt):** Fuer kantonales Energierecht
  gab es keine Matrix-Zeile, obwohl die Fuehrung faktisch schon einmal geklaert worden war (energie
  gibt sie ausdruecklich an baurecht ab, Run 9 Befund 5) — und wieder unterlaufen wurde. → **zwei neue
  Matrix-Zeilen**: Erlassstand/Wortlaut ZH → `baurecht`; Vollzugswege/Behoerdenpraxis/SZ-Recht →
  `energie`.
  **Status: 2 materielle Rechtskorrekturen, 1 Bring-Schuld geschlossen, 2 Matrix-Zeilen, 1 offener Punkt.**

### projekt-lessons ↔ normen ↔ auflagebereinigung — ERST-PRUEFUNG 2026-07-26 (Run 16, Rotation)
- **Ausgangslage:** `projekt-lessons` war seit Bestehen dieses Registers **nie geprueft** (kein
  Paar-Eintrag), obwohl die KB am 25.07. aktualisiert wurde. Bestand: ein einziger Artikel
  (`kispi-lbw-rohdichte-800`, 2619 KISPI, Rohdichte 800 kg/m³ fuer LBW-Beplankungen).
- **Befund 1 (WIDERSPRUCH KB-intern, BESTAETIGT, teilweise behoben):** Die KB-eigene Schreibregel
  (`CLAUDE.md`: «jede Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills taggen, damit
  Erkenntnisse in die Skills zurueckfliessen») ist im einzigen Artikel nicht umgesetzt: `links: []`,
  keine SIA-Phase, kein Skill-Tag. Der Health-Check vom 25.07. hat das Frontmatter dennoch als
  «korrekt» abgenommen — die Tagging-Regel ist nicht Teil seiner Pruefliste. → Frontmatter nachgezogen
  (Gewerk, BKP 271.10/271.13, SIA-Phase 5, Skills brandschutz/unternehmerkontrolle/ausschreibung,
  links auf beide Cross-KB-Ziele). **Offen: die Health-Check-Pruefung F um genau diesen Punkt
  erweitern** — das ist eine Aenderung am Pruefprogramm und gehoert nicht in einen Cross-Lauf.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt, hoher Wert):** Lesson und
  `auflagebereinigung/wiki/brandschutz-auflagen-qss.md` dokumentieren **denselben Vorgang** am selben
  Projekt — die Auflage II.19 «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau)» — ohne
  voneinander zu wissen. → bidirektional verlinkt mit klarer Rollentrennung: `auflagebereinigung`
  fuehrt Ziffer/Amt/Frist, `projekt-lessons` die Beweiskette der Material-Substanz.
- **Befund 3 (DOPPELSPURIGKEIT, kosmetisch, gekennzeichnet):** Das Lesson-Fazit schreibt generische
  VKF-/Produktwerte materiell fort (Typ-A-GKB 776 kg/m³ / VKF 18151; Duraline Vario 1'003 / VKF 22636),
  die identisch im fuehrenden `normen/wiki/en-520-gipsplattentypen.md` stehen. → nicht geloescht (sie
  tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet mit Verweis auf die fuehrende KB.
- **Matrix:** neue Zeile — `projekt-lessons` fuehrt die **Beweiskette des Einzelfalls**, nie generische
  Kennwerte oder Normfundstellen.
  **Status: 1 Frontmatter nachgezogen, 1 bidirektionale Erst-Verlinkung, 1 Ableitungs-Kennzeichnung,
  1 Matrix-Zeile; 1 offener Punkt (Health-Check-Pruefliste).**

### baurecht ↔ planungsgrundlagen (Verfahren, IVHB, PBG-Revision, OEREB-Bezugswege) — geprueft 2026-07-25 (Run 15)
- **Anlass:** pg Run 59 + Health-Check 25.07.; baurecht Buch-Run 51/52.
- **Befund 1 (WIDERSPRUCH-Verdacht → WIDERLEGT):** «Genehmigungsfiktion im Anzeigeverfahren». pg fuehrt
  «gilt als bewilligt, wenn 30 Tage nach Anzeige keine Antwort vorliegt», der baurecht-Wiki-Artikel nennt nur
  die Behandlungsfrist. Der Verifier zeigt: **argumentum e silentio** — die baurecht-Beleg-Schicht
  (Buch-Destillat Bd. 1 S. 415/416) fuehrt sehr wohl «Verfahrensabschluss durch Stillschweigen». Der
  Wiki-Satz sagt, wie lang die Frist ist, nicht was bei Ablauf geschieht. Keine Korrektur an pg.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt, hoher Wert):** pg haelt das Destillat des **amtlichen
  IVHB-Leitfadens der Baudirektion ZH** (1.3.2017, 29-Begriffe-Inventar §§ 2/2a/2b/2c/5/6/6a ABV), das
  baurecht nicht besitzt — waehrend `baurecht/wiki/QUESTIONS.md:504-509` genau dazu einen offenen
  needs-verification-Punkt (Fassungsstand nPBG/nABV) fuehrt. `grep «ivhb-baubegriffe»` in baurecht: 0 Treffer.
  → Reziprok verlinkt; im baurecht-QUESTIONS-Punkt als **Teil-Antwort** vermerkt.
- **Befund 3 (STRUKTUR, angemeldet):** Der ZH-Revisionsstrang «Erleichtertes Bauen im Bestand»
  (§ 220a/§ 357 E-PBG, Aufhebung Mehrlaengenzuschlag §§ 23/24 ABV) hat in `wissen/baurecht` **0 Treffer** —
  die fuehrende Recht-KB ist blind fuer die laufende Revision ihrer eigenen Leitnormen, die sie als
  geltendes Recht fuehrt. Kein Widerspruch (Vorentwurf), aber in `baurecht/wiki/QUESTIONS.md` angemeldet
  und in pg reziprok verlinkt.
- **Befund 4 (DOPPELSPUR, Gegenrichtung, offen):** `baurecht/wiki/QUELLEN.md` fuehrt **Beschaffungswissen**,
  das pg laut Matrix gehoert und dort fehlt (OEREBlex-SZ-attachmentId-Kette, geoportal.ch/SG 403-Sperre;
  `grep «oereblex»` in pg: 0 Treffer). Die fuehrende Beschaffungs-KB ist hier aermer als die zuliefernde.
  Nicht gespiegelt (waere Substanzverschiebung) — vorgemerkt fuer den naechsten pg-Lauf.
  **Status: 1 Verdacht widerlegt, 3 Cross-Links/Anmeldungen gesetzt, 1 Punkt vorgemerkt.**

### normen ↔ baurecht (Norm-Fundstellen) — geprueft 2026-07-25 (Run 15)
- **Anlass:** normen Run 20 (NFC-Diff-Vollstaendigkeitsverifikation SIA/VKF), baurecht Buch-Run 51/52.
- **Kein Sachwiderspruch:** die SIA-181-Aussagen beider KBs (Art. 32 Abs. 1 LSV Mindestanforderung vs.
  Abs. 2 Verschaerfung) decken sich; der Anhang-6-LSV-Stoff beruehrt keine SIA/VKF-Fundstelle.
- **Befund (Struktur-Muster 1 «Uebergabe verpufft», behoben):** `normen/wiki/QUESTIONS.md` enthielt
  **0 Treffer** fuer «baurecht» — es war noch nie eine Bring-Schuld aus der Recht-KB dort angekommen.
  baurecht zitiert jedoch vier Normen mit Fundstellenfunktion, die in `normen` **null Praesenz** haben:
  **SIA 491**, **SN EN 12193:2008**, **SN 640 052**, **SN 641 400**. → als eigener Abschnitt in
  `normen/wiki/QUESTIONS.md` angemeldet, inkl. Gegenrichtung (die dortige SIA-380/1:2016-Bring-Schuld
  nennt nur `energie`/`planungsgrundlagen` als Adressaten, obwohl baurecht die Norm ebenfalls fuehrt).
- **Befund (fehlender Hinlink, gesetzt):** `baurecht/wiki/laermschutz-und-nichtionisierende-strahlung`
  nennt SIA 181 dreimal materiell ohne Verweis auf das Destillat → Rule `normen-referenz` nachgezogen,
  inkl. Fassungsvorbehalt SIA 181:2020.
  **Status: 1 Bring-Schuld-Block (4 Normen) + 1 Hinlink; kein Sachwiderspruch.**
- **STATUS-RUECKNAHME 26.07.2026 (Run 16):** «angemeldet» war nicht «angekommen». Der danach gelaufene
  normen-Run 28 (25.07., 22:47) hat den Block **nicht aufgegriffen** und sein Thema ausdruecklich als
  «kein Bring-Schulden-Fall» gewaehlt; `training/norm-inventar.md` hatte 0 Treffer fuer alle vier
  Normbezeichnungen. Ursache: der Nacht-Loop waehlt seine Arbeit aus dem **Inventar**, nicht aus
  `wiki/QUESTIONS.md`. → Die vier Normen sind am 26.07. zusaetzlich als eigene Inventar-Zeilen
  eingetragen (neuer Abschnitt «Bring-Schulden aus anderen KBs», P2, mit Fundstelle und Auftrag);
  in QUESTIONS.md steht der Nachtrag mit der Begruendung. **Verallgemeinerte Regel: eine Uebergabe an
  eine KB gehoert in deren ARBEITSREGISTER, nicht nur in deren Fragenliste** — Fragenlisten werden
  gelesen, Arbeitsregister werden abgearbeitet.
- **WIRKUNGSNACHWEIS 27.07.2026 (Run 17): die Regel greift — erster belegter Fall.** Der normen-Loop
  hat in **Run 30 (27.07.)** zwei der vier Inventar-Zeilen tatsaechlich abgearbeitet: SIA 491 und
  SN EN 12193 tragen jetzt den Vermerk «Bestand geprueft 260727 (Run 30): weder in PL-02 noch in PL-03
  vorhanden — bleibt externe Bring-Schuld (SIA-Shop-Kauf), keine PL-03-Fehlklassierung», bei EN 12193
  zusaetzlich «Nachfolgeausgabe weiterhin abzuklaeren». Dieselben vier Normen waren im Vorlauf zwei
  Runs lang unberuehrt geblieben, solange sie nur in `wiki/QUESTIONS.md` standen. **Damit ist die
  Run-16-Diagnose nicht nur plausibel, sondern verifiziert: der Ort der Anmeldung entscheidet, nicht
  die Qualitaet des Eintrags.** SN 640 052 und SN 641 400 stehen weiter offen (P2, korrekt platziert).
  Status dieses Bezugs von «angemeldet, nicht aufgegriffen» auf **«teilweise abgearbeitet, Mechanismus
  bestaetigt»** gehoben.
- **ANWENDUNG DER REGEL 27.07.2026 (Run 17), 7. Fundort des Musters:** Die Bring-Schuld
  **SIA 181:2020 re-destillieren** stand seit **Run 3 (13.07.2026)** — also 14 Tage — ausschliesslich
  in `normen/wiki/QUESTIONS.md:545` und war nie im Inventar. Genau der Ort, den der Loop nicht
  abarbeitet; entsprechend ist in 14 Tagen nichts geschehen, waehrend `energie` (Ausgabe 2020, +4 dB)
  und `normen` (Ausgabe 2006, +3 dB) unveraendert nebeneinander laufen. → als Inventar-Zeile mit
  **Prioritaet P1** nachgetragen (hoeher als die vier baurecht-Schulden, weil die Rule `normen-referenz`
  fuer LV/Werkvertrag die 2006er Fundstelle zieht), Ruecklink in QUESTIONS.md gesetzt.
  **Beschaffung bleibt Bring-Schuld Raphael** (SIA-Shop, kostenpflichtig — Claude taetigt keine Kaeufe).


### energie ↔ planungsgrundlagen (EN-102-Ausgabe, Regenwasser/Versickerung, PV-Preise) — geprueft 2026-07-25 (Run 15)
- **Anlass:** energie Run 88 + Health-Check 25.07.; pg Run 59 + Health-Check 25.07.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert):** Normbasis der EnFK-Vollzugshilfe EN-102-d (Dez. 2018).
  pg fuehrte «Basis SIA 380/1:2009», energie «:2016». Der Verifier hat das Original-PDF geladen (curl +
  pdftotext): Kopfzeile **jeder** Seite lautet «Ausgabe Dezember 2018 (Basis: Norm SIA 380/1, Ausgabe 2016)».
  Ursache ist der irrefuehrende SharePoint-Dateiname `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf`.
  → pg an zwei Stellen korrigiert (`energie-heizwaermebedarf-waermeerzeugerleistung:172`,
  `energie-uebersicht:33`), Fallstrick dokumentiert, Verweis auf das fuehrende energie-Destillat gesetzt.
  Die Grenzwerte (0,17 / 1,0 / 0,25 Umbau) waren beidseitig identisch und bleiben unveraendert.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — Rechtsfehler):** Versickerungspflicht. pg schrieb
  «nach Art. 7 GSchG muss nicht verschmutztes Regenwasser **nicht** versickert werden», energie «versickert
  auf der Parzelle». Verifier am Fedlex-Volltext (SR 814.20, Konsolidierung 01.02.2023): **Art. 7 Abs. 2
  GSchG macht die Versickerung zum Regelfall**; Einleitung/ARA sind die Ausnahmen der Kaskade. Die pg-Aussage
  kehrte die Regel um → korrigiert, amtliche Fundstelle ergaenzt, bidirektionaler Link gesetzt.
- **Befund 3 (VERALTETES, BESTAETIGT, Flag gesetzt):** Die in pg destillierte AWEL-«Richtlinie und Praxishilfe
  **Regenwasserentsorgung**» (2005/V2.2 Maerz 2006) wurde umbenannt und neu aufgelegt; die konsolidierte
  **BBV I (LS 700.21)** verweist im Anhang der anerkannten Regeln der Baukunde auf die Ausgabe **2025**
  («Regenwasser**bewirtschaftung**»). Ausgaben-Flag im Stil der bestehenden WWG/HWSchV-Flags gesetzt; die
  ueberholte «VSA-Richtlinie Regenwasserentsorgung 2002» auf die Nachfolge «Abwasserbewirtschaftung bei
  Regenwetter» (2019) nachgefuehrt. Kein Trim, kein Neuschrieb — GSchG-Substanz bleibt gueltig.
- **Befund 4 (VERALTETES-Verdacht → WIDERLEGT):** CHF/kWp-PV-Preisniveau pg gegen BFE-Marktmediane 2024.
  Scheinwiderspruch: die pg-Tabelle ist eine **datierte Belegtabelle** (Basel 2022, Diemtigen 2023,
  schluesselfertig inkl. MwSt), das energie-Destillat ein **Marktmedian 2024 ohne MwSt**. Keine Wert-Korrektur.
- **Querbefund (Entlastung):** die 82 kaputten `sources:`-Referenzen aus dem energie-Health-Check 25.07. haben
  **keine** Cross-KB-Wirkung (ausschliesslich KB-interne `destillate/…md`-Pfade) und sind von Run 88 behoben.
  **Status: 4 Aktionen (2 Faktenkorrekturen, 1 Ausgaben-Flag + Normnachfolge, 2 reziproke Links); Rollen neu in der Matrix fixiert.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref (Flaechenfaktoren) — geprueft 2026-07-25 (Run 15)
- **Anlass:** grobkosten Health-Check-Re-Audit 25.07.; Delta-Check des seit Run 3 stabilen Kennwert-Felds.
- **Ankerzahlen weiterhin widerspruchsfrei** (4'800 / 4'360 CHF/m² HNF, Quantile 3'460–7'250, ~1'020 CHF/m³ GV,
  Ebmatingen ~855, Wuest-Healthcare-Mediane) — der Null-Befund aus Run 14 haelt fuer die Zahlen.
- **NEU auf der Flaechenfaktor-Ebene (2 Befunde, beide BESTAETIGT, beide Fachentscheid Raphael):**
  (a) Der als «kanonisch, Hub-weit» deklarierte **E1-Regelgeschoss-Wert 0.70** (Wissens-Chef-Entscheid
  12.07.2026) kollidiert mit dem **belegten 0.75** (Band 0.73–0.80) im fuehrenden Flaechen-Artikel
  `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Gleicher Geltungsbereich, gleiche Bezugsgroesse —
  der Entscheid hat die Gesamtgebaeude-Haelfte (0.60–0.61) harmonisiert und die Regelgeschoss-Haelfte auf
  einem quellenlosen Faustwert festgeschrieben. (b) Die Begruendung «die ~1'020 CHF/m³ beruhen auf GV/HNF 4.7
  (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch: **3.3 / 0.70 = 4.71**.
  Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ≈ 5.0–5.5 und ein Anker von ~870–960 CHF/m³.
  → In beiden KBs **needs-decision-Box** gesetzt (additiv, kein Wertwechsel); der Anker bleibt bis zum
  Entscheid gueltig (oberer Rand des eigenen Bands 850–1'050, innerhalb der ±25-%-Spanne).
- **2 Verdachtsfaelle WIDERLEGT:** (a) «Baumasse vs. GV unvereinbar behandelt» — Scheinwiderspruch, weil
  Flaeche/Volumen-Verhaeltnisse gegenueber dem UG-Ein-/Ausschluss invariant sind (GF/Volumen ≈ 1/mittlere
  Geschosshoehe; am Objekt Averecura auf GV-Basis verifiziert: 0.323 / 0.196). Die Faustregel GV ≈ Baumasse ×
  1.25–1.45 darf ausdruecklich **nicht** in die Flaechenfaktoren hineingerechnet werden. (b) Die 0,70/0,60-
  Kopplungsformulierung in der Wuest-Referenz — beide Richtwerte sind unabhaengig aus der Quantilstabelle
  indexiert, kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0).
  **Damit ist der seit Run 14 gefuehrte niederprioritaere Punkt (4) erledigt — als Scheinbefund geschlossen.**
- **Fehlender dritter Verweis-Guard:** `skills/kostenschaetzung/` → `immobilienbewertung` (0 Treffer; nur
  `grobkosten` ist verlinkt). Vorgemerkt, nicht gesetzt (Skill-Datei, kein KB-Wiki).
  **Status: 2 needs-decision-Boxen; 3 Altpunkte geschlossen (2 widerlegt, 1 als Scheinbefund).**

### wettbewerbs-dna ↔ grobkosten/kostenschaetzung/entwurfs-referenzen (Healthcare-Kennwerte) — geprueft 2026-07-25 (Run 15, rotierend)
- **Anlass:** wettbewerbs-dna Healthcare-Tranche 2 (25.07.: LUKS Sursee, Haus der Demenz Bombach, Taegermoos)
  und Synergie-Befund SYN-13 (Kennwert-Kompetenz waechst am vorgesehenen Ort vorbei).
- **Entlastung fuer die neuen Artikel:** Sursee und Taegermoos publizieren ausdruecklich keine Kostenkennwerte;
  Bombach traegt mit «rund Fr. 18.5 Mio. BKP 1–9 fuer 40 Plaetze» einen harten Anker, der die belegten
  immobilienbewertung-Werte **bestaetigt** statt ihnen zu widersprechen. Kein Widerspruch aus Tranche 2.
- **Befund (WIDERSPRUCH, 2x BESTAETIGT, Sperrvermerk gesetzt):** `entwurfs-referenzen/wiki/parameter-sets/
  healthcare-neubau-zh.json` fuehrt als Healthcare-Kostenreferenz das **Wohnbau-MFH-Band 850–1'050 CHF/m³ GV**
  und beruft sich dafuer auf `wissen/grobkosten` — ausgerechnet die KB, die diese Verwendung fuer «Spital,
  Klinik, Alters-/Pflegeheim, Reha, Praxis» **ausdruecklich untersagt** (`kennwerte.md:66-68`). Zweitens liegt
  das Band deutlich unter dem belegten Healthcare-Niveau (Neubauten ab 2019: **1'053–1'420 CHF/m³ GV**, BKP 2,
  Median ~1'100; acht reale Objekte, fuenf davon Kt. ZH). → Feld **nicht geloescht** (Loeschung = Rueckfrage),
  sondern `status: GESPERRT` + belegter Hinweis im Block ergaenzt; Schema-Validator laeuft weiter (`OK`).
  Wertsetzung ist Fachentscheid Raphael.
- **Befund (VERALTET-Verdacht → WIDERLEGT):** WALD-Anker ~CHF 4'000/m² GF sei ueberholt. Gegenteil: die neue
  8-Objekt-Basis **zitiert und bestaetigt** ihn ausdruecklich («deckt sich mit dem WALD-Anker»).
- **Strukturbefund:** Healthcare-Erstellungskennwerte werden an **vier** Orten materiell gefuehrt
  (machbarkeit/wissensbasis, healthcare-wirtschaftlichkeit/SKILL, immobilienbewertung, kostenschaetzung-Ref)
  ohne benannte Leitquelle → **neue Matrix-Zeile** gesetzt (immobilienbewertung fuehrend fuer CHF/m³ GV +
  CHF/Pflegeplatz; grobkosten fuehrt Healthcare **nicht**).
  **Status: 1 Sperrvermerk, 1 Matrix-Zeile; Wertsetzung offen (Raphael).**
- **NACHTRAG 26.07.2026 (Run 16) — E-2 ist erledigt, aber anders als erwartet; der Restbefund war ein
  anderer.** Am 25.07. um 21:53 (also 8½ h nach Run 15) hat die KB `entwurfs-referenzen` das
  Parameter-Set komplett neu geschrieben (v1.0 → v2.0). Damit ist das beanstandete Band **ersatzlos
  entfallen** — nicht heimlich, sondern begruendet dokumentiert (CHANGELOG + `wettbewerbs-dna/training/
  ETAPPE-3.md`): Muster B6 belegt, dass **keiner** der 11 externen Healthcare-Juryberichte einen
  projektspezifischen CHF/m²- oder CHF/m³-Kennwert nennt. v2.0 fuehrt fuer Healthcare gar keine eigenen
  Kostenzahlen mehr, sondern nur noch den Verweis auf `realwert-sachwert.md` (826–1'420, Median ~1'100)
  — wortgenau deckungsgleich mit der fuehrenden Quelle. **Der Sperrvermerk ist damit gegenstandslos;
  die Wertsetzungs-Frage an Raphael entfaellt** (keinem Phantom-Entscheid nachlaufen). Anzumerken
  bleibt: faktisch wurde damit Option (a) «Feld streichen» gezogen, die Run 15 als rueckfragepflichtig
  markiert hatte — die Entscheidung fiel im KB-Loop, nicht beim Chef.
  **Der Restbefund lag in der anderen Haelfte des Run-15-Befundes und war noch offen:** die
  **Quellenzuweisung** wurde unveraendert nach v2.0 uebernommen (`quelle_kb: wissen/grobkosten/`) —
  ein Werkzeug, das das Set konsumiert, waere also weiterhin auf die untersagte Quelle gelenkt worden.
  Am 26.07.2026 korrigiert: `quelle_kb` → `immobilienbewertung/wiki/realwert-sachwert.md`, m²-NF →
  Skill `kostenschaetzung`, grobkosten explizit als **nicht anwendbar** deklariert (neues Feld
  `quelle_kb_nicht_anwendbar`), JSON weiterhin schema-valide. Zusaetzlich: Abnehmer-Block in
  `realwert-sachwert.md` gesetzt (die fuehrende Quelle kannte ihre Abnehmer nicht) und der
  Haupt-`INDEX.md` der KB von den entfallenen v1.0-Quellen (CURAVIVA/Wueest/2410+2619) befreit.
  **Praezisierung fuer die Weitergabe:** das oft zitierte Teilband **1'053–1'420** gilt nur fuer die
  sechs Neubauten ab 2019; das Gesamtband der acht Objekte ist **826–1'420**, der Median ~1'100 gehoert
  zum Gesamtband. Fundstelle des grobkosten-Verbots korrigiert: `kennwerte.md`, Abschnitt «Healthcare /
  Spezialnutzung» (frueher als `:66-68` zitiert — dort steht heute die MFH-/EFH-Tabelle).
  **Status: erledigt; kein offener Entscheid mehr fuer Raphael.**

### architekten-synobsis ↔ entwurfs-referenzen — ERST-PRUEFUNG 2026-07-25 (Run 15, aus der Rotationsliste)
- **Ausgangslage:** Die beiden KBs beruehrten sich **nie** (0 Grep-Treffer in beiden Richtungen), obwohl
  entwurfs-referenzen den Referenz-Katalog als deklarierten Arbeitsweg fuehrt. Der erste Typologie-Artikel
  (`typologien/bildung.md`, 24.07.) ist ohne eine einzige synobsis-Quelle kompiliert worden.
- **Die Sorge aus dem Auftrag (kollidierende Typologie-Systematiken) bestaetigt sich NICHT:**
  `RAUMTYPOLOGIEN.md` fuehrt **Raumfiguren/Parti**, entwurfs-referenzen fuehrt **Gebaeudenutzungen** —
  zwei Achsen, gleiches Wort, kein Sachwiderspruch.
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert):** `architekten-synobsis/CLAUDE.md:50-52` nannte zwei der
  neun Raumtypen anders als der kanonische Katalog-Schluessel («Grosser Raum» statt **«Grosse Halle»**,
  «Skulpturaler» statt **«Skulptularer Raum»**) — die dokumentierte Abfrage `--raumtyp` schlaegt damit fehl.
  Git-Historie: die Schluessel lauteten nie anders. → auf die literalen Schluessel korrigiert, inkl. Hinweis,
  dass «Skulptularer» ein Schreibfehler im **read-only** Quellordner ist und bewusst so bleibt (eine
  Bereinigung am Quellordner waere destruktiv → Freigabe Raphael, hier nicht vorgeschlagen).
- **Erst-Verlinkung gesetzt (beide Richtungen)** + **zwei neue Matrix-Zeilen** (Rollenteilung Katalog/Raumfigur
  gegen Entwurfs-Kennwerte). Offen (Bau-Arbeit, nicht Wissens-Chef): optionales Feld `synobsis_slug` in
  `referenz_projekte`, damit die in den Sets genannten Architekten maschinell auf den Katalog zeigen.
  **Status: 1 Korrektur, 2 Links, 2 Matrix-Zeilen — Paar aus der Rotationsliste ausgetragen.**


### baurecht ↔ planungsgrundlagen (Laerm/ES, Anhang 6 LSV) — geprueft 2026-07-24 (Run 14)
- **Anlass:** baurecht Buch-Run 51 (24.07., Anhang 6 LSV Industrie-/Gewerbelaerm volltextverifiziert); pg Run 58.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, autonom gesetzt, bidirektional):** Der Laerm/ES-Artikel hatte keinen
  Rollen-Link zur pg-Beschaffungsseite (GIS-Layer 0154) und umgekehrt. Reziprok gesetzt analog Abstaende-Muster:
  baurecht `laermschutz-und-nichtionisierende-strahlung` → pg `kartenportale-zonenplan-zh` (Beschaffung dort);
  pg → baurecht (Recht/ES-Grenzwerte hier fuehrend).
- **Befund 2 (DOPPELSPUR mild):** pg `energie-baueingabe-zusatzformulare.md` schreibt die ES-I-IV-Rechtsdefinition
  materiell nach (nur Zonenzuordnung, kein Grenzwert) → mit Recht-fuehrend-Rueckverweis auf baurecht versehen
  (bekanntes Muster «normen-referenz greift beim Schreiben nicht»). Kein Trim, nur Verlinkung.
- **Befund 3 (VERALTETES-Verdacht → UNBESTIMMT):** pg-⚠-Vorbehalt «USG/LSV per 01.04.2026 geaendert» vs. baurecht
  Anhang 3/4/6 Stand 1.11.2023. Adversarialer Verifier Run 14: **UNBESTIMMT mit Entlastungstendenz** — pg behauptet
  KEINE Grenzwert-Aenderung (bestaetigt ES-Fortbestand); Novelle koennte nur Art. 31 ff. betreffen. baurecht NICHT
  veraltet markiert; needs-verification in `baurecht/wiki/QUESTIONS.md` gesetzt (Fedlex SR 814.41 20260401 pruefen).
  **Status: 4 autonome Aktionen (3 Cross-Links bidirektional + 1 needs-verification-Flag); 1 offener Verifikationspunkt (Loop/Web).**

### normen ↔ baurecht (SIA-181-Meilenstein / neue Destillate 405+2056 / tote Links) — geprueft 2026-07-24 (Run 14)
- **Anlass:** normen Run 19 (24.07.) Meilenstein «SIA/VKF KOMPLETT» + neue Destillate sia-405-1998 / sia-592-056
  (SIA 2056:2019) + «4+2 tote Wiki-Links behoben».
- **SCHEINWIDERSPRUCH aufgeloest (kein Handlungsbedarf):** Der vom Health-Check 24.07. gemeldete Konflikt
  «Meilenstein komplett» vs. offener Bring-Schuld «SIA 181:2020 re-destillieren» ist KEIN Sachwiderspruch:
  SIA 181 ist **P2** (norm-inventar Z.74), SIA 181:2020 liegt **nicht im JANS-Bestand** (kostenpflichtige
  Bring-Schuld). «Komplett» = Vertiefungs-Abdeckung der vorhandenen Bestandsdateien (inkl. SIA 181:2006).
  Die normen-KB hat das am selben Tag im Health-Check-Eintrag selbst korrekt verdiktet (Empfehlung: kuenftig
  «Bestand komplett» statt «komplett» formulieren). Kein Cross-KB-Eingriff.
- **FEHLENDE QUERVERLINKUNG: Null** — baurecht nennt weder SIA 405 noch SIA 2056 (0 grep-Treffer), also kein
  unverlinkter Verweis. **Tote Links: verifiziert sauber** (die 6 Run-19-Korrekturen greifen; Restlisten = dokumentierte
  Bestandsluecken). **Status: legitimes Null-Ergebnis + 1 geklaerter Scheinwiderspruch.**

### energie ↔ planungsgrundlagen (Run 87 F116/EN-104 + Private-Kontrolle-Trim) — geprueft 2026-07-24 (Run 14)
- **Anlass:** energie Run 87 (24.07., FAQ F1–F116, 8 Primaerquellen).
- **WIDERSPRUECHE: Null** — U-Werte (0,17/0,25), PV-Pflicht (10 W/m² EBF, EN-104, max 30 kW), MuKEn-2025 (20 W/m²)
  KB-uebergreifend fassungsgleich verifiziert.
- **FEHLENDE QUERVERLINKUNG (autonom gesetzt):** F116 (BAUHERREN-FAQ) verlinkte nur das energie-eigene Destillat,
  nicht die pg-fuehrende EN-104-Formularseite → Querbezug `energie-energienachweis-zh-formulare` gesetzt.
- **DOPPELSPUR (WEITER OFFEN, nicht autonom):** Private-Kontrolle-/EN-Formular-Verfahren — energie-Destillat
  `private-kontrolle-zh.md` traegt die Run-11-Note «pg fuehrend», fuehrt aber im Body weiter die volle Verfahrens-
  Substanz (Drei-Unterschriften-Tabelle, EN-Formular-Nummern). Trim = destruktiv → Rueckfrage Raphael. Seit Run 11 getrackt.
  **Status: 1 autonomer Cross-Link; 1 offener Trim (Entscheid Raphael).**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung/referenzen (Kennwerte) — geprueft 2026-07-24 (Run 14)
- **Anlass:** grobkosten «Strukturelle Findings nachgezogen» (24.07., nur Struktur/Schreibregel, kein Kennwert-Eingriff);
  immobilienbewertung Run 42 (Delta-Null).
- **Befund: Null (Cross-KB widerspruchsfrei).** Alle geteilten Ankerwerte identisch (4'800 CHF/m² HNF, 4'360 roh,
  ~1'020 CHF/m³ GV, HNF/GF-Faktor 0,70/0,60-0,61, Ebmatingen ~855 CHF/m³). Verweise bidirektional intakt, Rollen-Matrix
  eingehalten, Doppelzaehlungs-Guard (Run 4) intakt. Einzige Notiz: **grobkosten-INTERNE** Kopplungsformulierung
  (kennwerte.md:21 vs. :37-38, 0,70 vs. 0,60) — niederprioritaer, KB-intern, kein Cross-KB. **Status: legitimes Null-Ergebnis.**

### firmengruendung-ch ↔ immobilienbewertung / kunde-bopp (rotierend, Steuern/Holding) — geprueft 2026-07-24 (Run 14)
- **Anlass:** firmengruendung-ch neue Artikel «Steuern bei Gruendung» + «Holding-Struktur ueber bestehende AG» (24.07.);
  kunde-bopp Giebelweg-12-Detailartikel. Erste Cross-Pruefung dieses Paars.
- **Cross-KB: Null.** Verschiedene Domaenen — immobilienbewertung schliesst Grundstueckgewinnsteuer bewusst aus
  (`residualwertmethode.md:288`), keine kollidierende Steueraussage; kein KB-uebergreifender Backlink konventionell noetig.
  Holding-Artikel verdiktet Holding fuer die reale JANS AG aktuell ohne Mehrwert; JANS-AG-Namensblocker separat in
  `ag-gruendungsablauf` erfasst (Namensrecht, kein Holding-Thema).
- **Intra-KB-Linkhygiene (notiert, NICHT autonom editiert — firmengruendung-ch hat eigenen Nacht-Loop, Kollisionsschutz):**
  `steuern-bei-gruendung` hat keine Inhalts-Ruecklinks (nur INDEX/QUESTIONS); `holding-struktur` Frontmatter-`links:`
  unvollstaendig ggue. Body. Empfehlung an den firmengruendung-Loop. **Status: Null Cross-KB; 2 intra-KB-Hygiene-Hinweise.**

### energie ↔ planungsgrundlagen (Erdwaerme F110 / Anergienetz F109 / Naturgefahren) — geprueft 2026-07-23 (Run 13)
- **Anlass:** energie Run 85/86 (23.07.) mit neuen FAQ F109 Anergienetz/kalte Fernwaerme + F110 oberflaechennahe
  Erdwaerme; pg Run 57 Naturgefahren-GIS-Endpunkt.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, autonom gesetzt):** F110 Erdwaerme hatte keinen Verweis auf den amtlichen
  pg-Eignungslayer (`naturgefahren-objektschutz` §6c Erdwaermenutzung + §8b Grundwasserschutzzonen) → beidseitig
  verlinkt (energie F110 → pg §6c/§8b; pg §6c → energie F108/F110/F109). Rollenteilung: pg = beschaffbare
  Eignungsgrundlage (GIS), energie = Physik/Verfahren/Kennwerte.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, autonom gesetzt):** F109 Anergienetz nannte «kommunale Energieplanung»,
  aber nicht die Bezugsquelle → energie F109 → pg `geoportale-uebersicht` (ZH-Waermerichtplan-Layer / LU
  klimafreundlichheizen.ch).
- **Befund 3 (WIDERSPRUCH, adversarial CONFIRMED, autonom korrigiert):** «Indach +60 %» in energie
  `pv-solar-technologien.md` stale, widersprach eigener Run-86-Korrektur (E-R86c) + pg `energie-pv-eignung-typenwahl`
  → Vorbehalt gesetzt, kein Zahlenwert erfunden (KB-intern, aber Cross-KB relevant).
- **Naturgefahren (pg Run 57) ↔ energie:** legitimes Null-Ergebnis (energie deckt Objektschutz/Hochwasser nicht ab).
  **Status: 3 autonome Aktionen (2 Cross-Links bidirektional + 1 verifizierte Korrektur); keine offenen Entscheide.**

### energie ↔ grobkosten ↔ immobilienbewertung (PV-Marktpreise BFE-2024) — geprueft 2026-07-23 (Run 13)
- **Anlass:** energie Run 86 neue PV-Marktpreise BFE-2024 + Indach-Korrektur.
- **Befund: Null.** Weder grobkosten noch immobilienbewertung fuehren eigene PV-Kostenwerte (CHF/kWp, Indach); beide
  deferieren per Verweis auf das energie-Destillat `pv-marktzahlen-kosten-ch-2025` (bidirektional intakt, kein Broken
  Link). Die Run-86-Aktualisierung propagiert automatisch, ohne Pflege in den Konsumenten-KBs. E1/Run-4 unangetastet.
  **Status: legitimes Null-Ergebnis, kein Handlungsbedarf.**

### normen ↔ baurecht (SN 640 066 Ausgabe-Divergenz + SIA-500 + 4 fehlende Links) — geprueft 2026-07-23 (Run 13)
- **Befund 1 (WIDERSPRUCH, adversarial CONFIRMED, autonom aufgeloest):** baurecht fuehrte SN 640 066 als «VSS 40 066
  (2011/2019), neuer Titel Parkieren; Projektierung»; normen-Destillat `vss-640066-1996` nur Ausgabe 1996 mit
  `ersetzt_durch: nicht bekannt`, WAEHREND `vss-640065-2011` (Ziff. 2-3, S. 4) 640 066 bereits mit dem neuen Titel
  zitiert (KB-interne Inkonsistenz). Aufgeloest: normen `ersetzt_durch` Cross-Verweis + [[vss-640065-2011]] in links +
  Body-Nachtrag; baurecht Herkunfts-Vorbehalt. Titel belegt, Ausgabe-Jahr NICHT als gesichert gesetzt.
- **SIA 500 «1 je 25 Parkplaetze»:** in normen `sia-500-2009` bestaetigt, deckungsgleich mit baurechts korrigierter
  Lesart. Der offene ⚠-Flag betrifft nur die Herkunft des alten Falschwerts (getrackt, nicht neu).
- **Befund 2 (FEHLENDE QUERVERLINKUNG, niederprioritaer, NICHT ausgefuehrt):** 4 baurecht→normen-Links bei
  existierenden Destillaten (SIA 380/1, SIA 358, SIA 414/10, SIA 431) — illustrative «weitere Normen»-Aufzaehlungen,
  keine Fundstellen-Pflicht; SIA 414/10 hat zusaetzlich moeglichen Ausgabe-Mismatch (414/10 vs. 414:1980, vor
  Verlinkung pruefen). Als Loop-Arbeit geflaggt.
  **Status: 1 verifizierter Widerspruch aufgeloest (normen+baurecht); 4 Links niederprioritaer offen.**

### baurecht ↔ planungsgrundlagen (Naturgefahren/Gefahrenzonen Dangling-Delegation) — geprueft 2026-07-23 (Run 13)
- **Befund (FEHLENDE QUERVERLINKUNG, strukturell, autonom teil-gesetzt):** pg `naturgefahren-objektschutz` deklariert
  «fuer den Recht-Status ist baurecht fuehrend», baurecht hielt aber kein Gefahrenzonen-Destillat und keinen
  INDEX-Anker (nur der Gewaesserraum-/Hochwasser-Aspekt in `abstaende-und-hoehen`, Run-8-Rueckverweis). Delegation
  zeigte ins Leere. Aktion: baurecht INDEX-Backlog-Anker «Naturgefahren/Gefahrenzonen (Rechtsstatus rote/blaue Zone)»
  gesetzt, der die pg-Delegation als Bring-Schuld sichtbar macht — OHNE Destillat zu erfinden.
- **§ 22 WWG Bring-Schuld (Verweis-Check):** pg hat inzwischen sauberen Verweis auf baurecht (markiert als
  Bring-Schuld, «vor verbindlicher Aussage gegenpruefen»). Kein neuer Handlungsbedarf pg-seitig. Bleibt getrackt.
  **Status: 1 autonomer INDEX-Anker; Gefahrenzonen-Destillat = Loop-Arbeit/Bring-Schuld (kein Entscheid).**

### projekt-lessons ↔ normen (EN 520 / VKF-BRL 15) + energie graue-energie ↔ normen (rotierend) — geprueft 2026-07-23 (Run 13)
- **projekt-lessons ↔ normen (EN 520):** 0 Widerspruch — der neue Lesson-Artikel `kispi-lbw-rohdichte-800` ist mit
  dem normen-Destillat `en-520-gipsplattentypen` deckungsgleich (DFIR=Typ D≥800 kg/m³, Rohdichten konsistent). Der
  Cross-KB-Verweis besteht bereits beidseitig INLINE (Lesson:37 → en-520; en-520:44 → Lesson); die frontmatter-`[[]]`
  sind KB-intern, daher fuer diesen Cross-KB-Bezug nicht die Konvention — kein Fix noetig. Lesson→normen
  `synthese-sia-vkf` (VKF-BRL 15 EI30-mit-Loeschanlage) waere additiv, aber niederprioritaer (dichte-fokussierte
  Lesson) → geflaggt, nicht gesetzt.
- **energie graue-energie ↔ normen sia-2040 (FEHLENDE QUERVERLINKUNG, autonom bidirektional gesetzt):** graue-energie
  zitierte SIA 2032/2040 ohne normen-Link; normen `sia-2040-2017` ohne energie-Rueckverweis → beidseitig verlinkt
  (energie = angewandte Kennwerte, normen = Norm-Ziffern/Rechenkette). 0 Kennwert-Widerspruch (normen fuehrt keine
  eigenen kg-CO2-Zahlen). Praezisierung: der Punkt D8 «graue Energie ZH» gehoert zu planungsgrundlagen, nicht normen.
  **Status: 1 bidirektionaler Cross-Link autonom; 1 Link (Lesson→VKF-BRL 15) niederprioritaer geflaggt.**

### normen ↔ auflagebereinigung (SIA 181 Schallschutz Federführung, Erst-Check) — geprueft 2026-07-22 (Run 12)
- **Anlass:** auflagebereinigung hat am 22.07. die QUESTIONS-Lücke «Schallschutz SIA 181 Federführung» geklärt
  (neuer Abschnitt in `auflagentypen-gewerkzuteilung.md`). SIA 181 ist laut Rollen-Matrix normen-geführt.
- **0 Kennwert-/Aussage-Widerspruch:** auflagebereinigung zitiert **keine** dB-Werte, nur die Ziffer-Struktur
  (4.2/4.3/4.4, 2.2.3/2.2.4) — exakt deckungsgleich mit dem normen-Destillat `sia-181-2006`. Kernaussage «SIA 181
  weist keine Federführung zu» ist normkonform (Norm regelt Anforderungswerte, keine Zuständigkeiten). **KEINE
  Doppelspur:** auflagebereinigung ergänzt nur die organisatorische Gewerk-Ebene (genuin eigene Domäne), schreibt
  keine Norm-Substanz fort. Verlinkung auflagebereinigung → normen vorbildlich (sources + inline).
- **Befund (VERALTETES, mittel):** auflagebereinigung verankert auf **SIA 181:2006** ohne Fassungs-Vorbehalt,
  obwohl normen die neuere **SIA 181:2020** flaggt (Re-Destillat ausstehend); die Supersession lebte nur in
  normen-REGISTER/QUESTIONS, **nicht im Destillat-Frontmatter** — wer nur das verlinkte Destillat liest, sah sie nicht.
- **Aktion (autonom):** `ersetzt_durch`-Hinweis ins normen-Destillat-Frontmatter gesetzt; Fassungs-Vorbehalt-Kasten
  in die auflagebereinigung-SIA-181-Sektion (Ziffern beim Re-Destillat gegenprüfen). **Status: bereinigt + verlinkt;
  Paar neu im Register; Bring-Schuld SIA 181:2020 Re-Destillat bleibt (normen-Loop).**

### normen ↔ baurecht (SN 640 060 + SIA-500-Follow-up + DIN-Ersetzung) — geprueft 2026-07-22 (Run 12)
- **Befund 1 (WIDERSPRUCH → adversarial TEILWEISE, wichtig):** baurecht `fahrzeugabstellplaetze` (Buch-Run 33)
  führte «SN 640 060 existiert nicht / Fehlzitat entfernt». normen hält `vss-640060-1994` (established, echtes VSS-PDF).
  **Verifier-Verdikt TEILWEISE:** das normen-Destillat ist KEINE Halluzination (gegen baurechts EIGENES Buch-Destillat
  Bd. 2 S. 914-915 gegengeprüft, das SN 640 060/065/066 als reale ergänzende Zweiradverkehr-Normen zitiert). Der
  baurecht-Wiki-Fliesstext war eng korrekt («in der Parkierungsnormen-Struktur nicht»), aber die «Fehlzitat/existiert
  nicht»-Etikettierung widersprach der eigenen Buchquelle → **Rollen-Korrektur** (640 060 = Grundlagen, 640 065 = Bedarf,
  640 066 = Geometrie) + Cross-Link, statt Löschung. Autonom umgesetzt in Wiki + QUESTIONS + INDEX-Zeile.
- **Befund 2 (SIA-500-Follow-up):** der Run-11-Kennwert-Flag («1/25 Wohnungen/100 m» vs. SIA 500:2009 Ziff. 9.7.2
  «1 je 25 Parkplätze») ist vom baurecht-Loop NICHT aufgelöst worden — steht sachgerecht offen im Haupttext (kein
  Live-Fehler, korrekt geflaggt). Aber der **INDEX** trug den umstrittenen Wert + alte Bezeichnung «SN 521 500» noch
  als Faktum → autonom auf den geflaggten Stand nachgezogen. Wert selbst bleibt offen (nicht raten).
- **Befund 3 (DIN-Ersetzung 22.07.): NULL-BEFUND** — grep «DIN 276/4102/1356» in baurecht = 0 Treffer; die am 22.07.
  in normen geschlossene ersetzt_durch-Lücke berührt baurecht nicht.
- **Status: bereinigt + verlinkt; SIA-500-Kennwert-Herkunft weiter offen (baurecht-Loop).**

### baurecht ↔ planungsgrundlagen (WWG/Naturgefahren, GSchV-Doppelspur) — geprueft 2026-07-22 (Run 12)
- **0 materieller Cross-KB-Widerspruch.** Das Wasserrecht-Fundament (WWG/HWSchV → WsG/WsV per 1.6.2026) ist zwischen
  beiden KBs durchgängig und korrekt nachgeführt; der baurecht-KB-weite Nachzug ist laut baurecht-QUESTIONS (Buch-Run 50)
  abgeschlossen. Der frische K45-SZ-Naturgefahren-Stoff (pg Run 55/56) ist reines Geodatum/Connector, keine Recht-Kollision.
- **Befund 1 (VERALTETES, weich, autonom):** pg `kartenportale-naturgefahren-objektschutz.md` Z.407 nannte § 22 WWG im
  Präsens; der Aufhebungs-Flag stand ~14 Zeilen entfernt. → Inline-Kurzflag an der Bullet gesetzt.
- **Befund 2 (DANGLING-DELEGATION, nicht autonom):** pg delegiert den § 22 WWG-Nachfolge-§ an baurecht als «führend»,
  aber baurecht führt Gefahrenbereiche/§ 22 WWG in KEINEM Artikel (0 Treffer) — die Delegation zeigt ins Leere.
  Bring-Schuld in der führenden KB baurecht. → **Bericht.**
- **Befund 3 (DOPPELSPUR, nicht autonom, WEITER OFFEN):** GSchV Art. 41a/41b-Bemessungstabelle materiell in baurecht
  `abstaende-und-hoehen` UND pg `abstandsvorschriften-wald-gewaesser` (Zahlen identisch, kein Widerspruch); Trim auf
  Verweis = Umstrukturierung, seit Run 7/8 offen. **Status: 1 Inline-Flag autonom; 2 Struktur-Punkte offen.**

### energie ↔ planungsgrundlagen (Private Kontrolle, CLT-U-Werte) — geprueft 2026-07-22 (Run 12)
- **0 Kennwert-Widerspruch:** EN-Formular-Matrix, Drei-Unterschriften-Tabelle, EN-104-30-kW-Deckel, CLT-λ (0,12),
  WDV §8/6 vs. EN-110-ZH-Trennung — alle fassungsgleich. Private-Kontrolle-Verlinkung (Run 11) hält bidirektional.
- **Befund 1 (VERALTETES Frontmatter, autonom):** energie `private-kontrolle-zh.md` `last_updated` 2026-06-11 trotz
  Run-11-Edit vom 21.07. → auf 2026-07-21 nachgezogen.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, autonom):** pg `energie-uebersicht` (CLT-Abschnitt) destilliert dieselbe
  Stora-Enso-Doku wie energie `clt-bauphysik-stora-enso`, ohne Verweis → Querlink zum führenden energie-Destillat gesetzt.
- **Befund 3 (DOPPELSPUR, nicht autonom, WEITER OFFEN):** Private-Kontrolle-Rollen-Trim (Verfahrens-Substanz aus dem
  energie-Destillat an pg abgeben) seit Run 11 offen. **Status: 2 Fixe autonom; 1 Rollen-Trim offen.**

### firmengruendung-ch ↔ spec ↔ kunde-bopp (Nach-Gründung AHV/BVG/UVG/MWST, Erst-Check) — geprueft 2026-07-22 (Run 12)
- **Anlass:** neuer firmengruendung-Artikel `nachgruendung-anmeldungen` (22.07.). **0 Widerspruch, 0 substanzielle
  Doppelspur:** Gründungs-Fachfakten (MWST-Schwelle 100'000, Fristen, BVG-Eintritt 22'680) liegen ausschliesslich in
  firmengruendung-ch; spec führt sie nur als Next-Step-Stichzeile + Fall-Log — saubere Arbeitsteilung (firmengruendung =
  Fakten, spec = Methode/Live-Fall). Namens-Lektion «JANS AG durch JANS GmbH blockiert» beidseits konsistent.
- **kunde-bopp: NULL-BEFUND bestätigt** (Run 10) — «AG/Genossenschaft» dort nur Identifikatoren, kein Fachwissen.
- **Nur gemeldet (schwache Links, KEIN autonomer Edit):** spec-Output ist ein datiert-eingefrorenes Fall-Log (nicht editieren);
  die tragfähige Verlinkung gehört ins lebende `logbuch/fristen.md` (Betriebshaftpflicht-/Anmeldungs-Pendenz, auf die der
  neue Artikel bereits zeigt). **Status: kein Befund; Feld aus prioritärer Rotation, sauber.**

### baurecht ↔ energie (BVV-Meldeverfahren §§ 2a-2e, Bring-Schuld-Abschluss) — geprueft 2026-07-21 (Run 11)
- **Anlass:** baurecht Buch-Run 50 (20.07.) hat die §§ 2a-2e BVV integriert = die Run-10-Bring-Schuld.
- **Verifiziert am raw-BVV.** 0 Widerspruch: §-Zuordnung/Schwellen (2 m³, 2,5 m)/Fristen (30 T) deckungsgleich,
  BVV **Nachtrag 133** beidseits, EnerG § 11 (nicht § 10a) hält. **Bring-Schuld materiell ERFÜLLT**,
  QUESTIONS als ✅ ERLEDIGT geführt; bidirektionale Verlinkung vorhanden (Run-10-Fix hält).
- **Aktion:** QUESTIONS-Titelzeile «§§ 2a-2c» → «§§ 2a-2e» korrigiert (Body war korrekt).
- **Offen (nicht autonom, Struktur):** geringfügige Doppelspur — baurecht restatet die WP-Detailschwellen
  (2 m³ / 2,5 m / Lärmschutznachweis), die laut Rollen-Matrix energie führt; trimmbar auf reinen Verweis,
  aber Trim über KB-Grenze → Bericht (mittel-tief, beide fassungsgleich, nur Pflege-Risiko).
- **Status: bereinigt; Bring-Schuld geschlossen; 1 offener Struktur-Punkt (WP-Schwellen-Doppelspur).**

### normen ↔ baurecht (Norm-Fundstellen SIA/VKF/VSS + SIA-500-Kennwert) — geprueft 2026-07-21 (Run 11)
- **Anlass:** normen Audit-B (26 Destillate registriert) + baurecht Buch-Run 50. Der frische WsG/WsV/BVV-Stoff
  = Bundes-/Kantonsrecht, **keine** neuen SIA/VKF/VSS-Fundstellen → Prüfung an den stehenden Norm-Nennungen.
- **Befund adversarial verifiziert (TEILWEISE, wichtig):** parkierung.md nannte «SN 521 500» als massgebend.
  Die **Nummer ist NICHT abgelöst** (persistente SN-Registriernummer der geltenden SIA 500:2009) — der
  ursprüngliche «veraltete Bezeichnung»-Vorwurf war zu stark. Der **reale Mangel:** (a) unpräzise Zitierung
  (Ausgabe/Ziffer fehlten) → korrigiert auf «SIA 500:2009, Ziff. 9.7» + Destillat-Link; (b) **Kennwert-Mismatch**
  — Wiki «1 je 25 **Wohnungen** / 100 m» vs. SIA 500:2009 Ziff. 9.7.2 «1 je weitere 25 **Parkplätze**, keine 100 m».
  Herkunft des Wiki-Werts offen → **Wert NICHT geändert, geflaggt** (QUESTIONS 2026-07-21).
- **Aktion (fehlende Querverlink./veraltet, autonom):** SIA 181 (grundlagen) mit Destillat-Link + Fassungs-
  vorbehalt (2006/⚠2020); «VSS SN 640 291a» → «VSS 40 291 (2021)»; VKF-BRL 12-15 (bauausfuehrung) verlinkt.
- **Doppelspur:** weitgehend KEIN BEFUND (baurecht diszipliniert, «kein Volltext-/Tabellenzitat»).
- **Offen (Bring-Schuld normen):** SIA 181:2020 Re-Destillat (bekannt, REGISTER). **Status: bereinigt + verlinkt; 1 Kennwert-Flag, 1 Bring-Schuld.**

### energie ↔ planungsgrundlagen (Private Kontrolle ZH) — geprueft 2026-07-21 (Run 11)
- **Anlass:** energie Run 83. **0 Widerspruch** zwischen den KBs: WP-Weichen korrigiert-fassungsgleich,
  WDV §8 Abs.6 (5 kWh/m² Neubau) vs. EN-110-ZH (12 W/m² Bestand) sauber getrennt, EN-104 30-kW übereinstimmend;
  Formularmatrix EN-101…141 bewusst abgegrenzt (expliziter Querbezug-Block, korrekt umgesetzt).
- **Befund (mittel):** `energie/destillate/private-kontrolle-zh` und `pg/wiki/energie-private-kontrolle-zh`
  destillieren dasselbe AWEL-Merkblatt, ohne gegenseitigen Verweis. → **beidseitig verlinkt** (pg führend
  fürs Verfahren, energie hält Quellstand). Rollen-TRIM (Substanz zusammenführen) nicht autonom → Bericht.
- **Nur gemeldet (energie-intern):** destillate/INDEX.md Z.166 trägt die in Run 82 widerlegte
  «Kühlmöglichkeit»-Aussage (Z.167 korrigiert) = Teil der 35 Dubletten-Zeilen (Health-Check 21.07.).
- **Status: bereinigt + verlinkt; 1 offener Struktur-Punkt (PK-Rollen-Trim); 1 energie-Loop-Backlog gemeldet.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung/referenzen (Kennwerte) — geprueft 2026-07-21 (Run 11)
- **0 Zahlen-Widerspruch:** alle deckungsgleichen Kennwerte exakt identisch (Wüest-Median 4'360 /
  Quantile 3'460-7'250 / mind. 4'800 / GF 2'840-2'330 / SIA-2020 MFH 2'800 / m³-Brücke ~1'020 CHF/m³).
  Faktor 0.70/0.60-61 kontextabhängig aufgelöst (E1-Entscheid 12.07.); **Doppelzählungs-Guard (Run 4) weiter gültig**
  (beide zitieren dasselbe Prinzip/Datum).
- **Befund (mittel):** immobilienbewertung `realwert-sachwert` verwies nicht auf die laut Matrix führende
  Median/Quantile-Quelle (kostenschaetzung-Referenzdatei); grobkosten tat es korrekt. → **Link gesetzt**.
- **Veraltet (tief, ±25%-Spanne abgesichert):** realwert-BFS-Teuerung auf alter Basis (Okt-2020=100) ggü.
  grobkosten (rebasiert Okt-2025=100) → KB-intern immo (Abgleich `investorenmarkt-makro`); führende
  kostenschaetzung-Referenzdatei teuerungsseitig am ältesten Stand (Kernzahl 4'360→4'800 überall gleich).
- **Status: bereinigt + verlinkt; 2 Veraltet-Nebenpunkte gemeldet (KB-intern/Skill-Referenz).**

### wettbewerbs-dna ↔ entwurfs-referenzen (Schulbau-Handoff B5, Erst-Check) — geprueft 2026-07-21 (Run 11)
- **Substanzielle Überschneidung JA** (echter Produzent→Konsument-Handoff `schule-volksschule-ch.json`).
  **0 Kennwert-Widerspruch:** HNF/GF 0.53, Klassenzimmer 64-75, 900-m²-Schwelle, 2:1, Kostendach 1.6-1.8 Mio/KZ
  deckungsgleich; chf_m3_gv bewusst weggelassen (→grobkosten). Beidseitig verlinkt (Pfad-Strings, cross-KB korrekt).
  Kein veralteter Stand (B5-Set 21.07. nach B6-Benchmark 20.07., zitiert ihn).
- **Befund (mittel, prozessual):** JSON = eingefrorenes Derivat v1.0 ohne Regenerierungs-Trigger → **Drift-Guard
  in kennwerte-schulbauten §8 gesetzt** («bei B4/B6-Änderung neu ableiten»). Führend = wettbewerbs-dna.
- **Nur gemeldet (KB-intern wettbewerbs-dna):** geerbte «23 statt 22 Juryberichte»-Zählung (Boppartshof fehlt),
  nf_gf_faktor-Etikett (NF/GF vs. HNF/GF), erschliessung «atrium» als Einzelwert. **Status: verlinkt; Paar neu im Register.**

### energie ↔ baurecht (§ 2a BVV Wärmepumpen-Meldeverfahren) — geprueft 2026-07-20 (Run 10)
- **Anlass:** frischer Stoff energie Run 81/82 (§ 2a/§ 2c BVV, LS 700.6, WP-Meldeverfahren; F101-Korrektur).
- **Null-Ergebnisse (ausdrücklich):** BVV **fassungsgleich** (beide Nachtrag 133, Datei `700.6_3.12.97_133.pdf`);
  EnerG **fassungsgleich** (beide Nachtrag 129); Fossilfrei-Neubau-Gebot in beiden korrekt an § 11 EnerG
  (kein Rückfall auf § 10a — Run-9-Ergebnis hält); F101-«Kühlmöglichkeit»-Fehler war rein energie-intern,
  kein Cross-KB-Ausläufer; § 325a PBG sauber verlinkt. **0 Widerspruch, 0 Veraltetes.**
- **Befund 1 (CONFIRMED, mittel):** FEHLENDE QUERVERLINKUNG (beide Richtungen). Das neue Destillat
  `energie/destillate/bvv-zh-meldeverfahren-...` verlinkte nur energie-intern; baurecht
  `baubewilligungsverfahren.md` verwies für energie nur auf den Energienachweis, nicht aufs Meldeverfahren.
  → gegenseitiger Querbezug gesetzt; Rollenteilung fixiert (energie = Rechtsgrundlage/WP-Weichen, baurecht
  = Verfahrenstyp-Systematik).
- **Befund 2 (CONFIRMED, mittel):** VOLLSTÄNDIGKEITSLÜCKE in baurecht — «Meldeverfahren» kommt in keinem
  baurecht-Hauptartikel vor (0 Treffer), obwohl §§ 2a-2c BVV im eigenen raw voll vorliegen; der 4.
  ZH-Verfahrenstyp (WP/Solar) fehlt in der Enumeration. → **NICHT autonom destilliert** (Umstrukturierung
  + E1-analoge Doppelspur-Gefahr): als baurecht-QUESTIONS-Bring-Schuld aufgenommen, arbeitsteilig zu energie.
- **Befund 3 (CONFIRMED, tief):** VERWECHSLUNGSRISIKO § 2a **ABV** (LS 700.2, Klein-/Anbauten) vs. § 2a **BVV**
  (LS 700.6, Meldeverfahren) — gleiche Nummer, andere Erlasse. → Abgrenzung im baurecht-Querbezug-Block markiert.
- **Status: verlinkt/bereinigt; 1 Bring-Schuld (baurecht-Meldeverfahren-Destillat, Loop-Arbeit).**

### energie ↔ planungsgrundlagen (§ 2a BVV WP-Meldeverfahren / WTA-Formular) — geprueft 2026-07-20 (Run 10)
- **Anlass:** derselbe Run-82-Stoff; Meldeverfahren ist ein Verfahren → planungsgrundlagen matrix-führend.
- **Null-Ergebnisse:** Fakten deckungsgleich (3 Verfahrenswege, LN-1a/1b, AWEL-Gewässerschutzgesuch Erdsonde);
  2-m³-/§-2a-Kriterien nur in energie, von pg nirgends abweichend dargestellt. **0 Widerspruch, 0 Veraltetes,
  keine echte Textdoppelung.**
- **Befund 1 (CONFIRMED, hoch):** FEHLENDE QUERVERLINKUNG (beide Richtungen) — das energie-Destillat und der
  pg-WTA-Artikel `energie-baueingabe-zusatzformulare.md` (der das Meldeverfahren voll beschreibt) zeigten
  nirgends aufeinander. → Querbezug in pg gesetzt (WTA-Weiche → energie-Rechtsgrundlage § 2a BVV); energie-Block
  zeigt zurück auf pg (Formular/Verfahren).
- **Befund 2 (CONFIRMED, mittel):** FÜHRUNGSLÜCKE — die verfahrensführende KB (pg) enthielt die WP-Meldeverfahren-
  Entscheidungsregel weder selbst noch als Verweis; die § 2a/§ 2c-Grundlage liegt matrix-konform in energie.
  → Brückenlink schliesst die Lücke (kein Trim/keine Umstrukturierung nötig).
- **Status: bereinigt.**

### normen ↔ planungsgrundlagen ↔ auflagebereinigung (Brandschutz/GVZ/BMA/Sprinkler) — geprueft 2026-07-20 (Run 10)
- **Anlass:** pg Run 54 (§5ao/§5ap Feuerwehrplan Störfall ABC / StFV) + neuer auflagebereinigung-Artikel
  `gvz-einreichung-bma-sprinkler`.
- **Null-Ergebnisse (ausdrücklich):** **0 Kennwert-Widerspruch** (GVZ-Schwellen deckungsgleich mit VKF-BRL);
  **keine Doppelspur** GVZ-Einreichungsweg pg↔auflagebereinigung (pg-Wegweiser führt ihn nicht, nur der neue
  Artikel); die frischen §5ao/§5ap schreiben **keine** VKF-Ziffern materiell fort (Musterplan-Beispielwerte
  markiert) — das wiederkehrende «VKF-Wortlaut fortgeschrieben»-Muster trat **nicht** auf; Zuständigkeit
  GVZ (Brandschutzbehörde + Inspektionsstelle) vs. Feuerpolizei konsistent; Risikogruppen-Turnus = GVZ-Vollzug,
  korrekt nur in auflagebereinigung (kein Konflikt mit normen).
- **Befund 1 (CONFIRMED, mittel):** der GVZ-Artikel trägt norm-geführte Schwellen (BMA >10/600 m² = VKF-BRL
  20-15 Ziff. 4.1; SPA >10/100 m² = 19-15 Ziff. 5.1; Ausserbetriebsetzung = 20-15 Ziff. 3.10 / 19-15 Ziff. 4.4)
  ohne normen-Link. Mildernd: GVZ-Weisung ist ein eigenständiges kantonales Dokument, das die Werte selbst trägt
  (kein Erfinden/Duplizieren von VKF-Wortlaut). → Querbezug beidseitig gesetzt (auflagebereinigung → normen führend;
  normen-JANS-Praxis-Transfer → konkreter GVZ-Artikel).
- **Befund 2 (CONFIRMED, tief):** reziproker Backlink `brandschutz-auflagen-qss` → `gvz-einreichung-bma-sprinkler`
  fehlte. → gesetzt.
- **Status: bereinigt + verlinkt.**

### kunde-bopp ↔ firmengruendung-ch (Erst-Check, Rotation) — geprueft 2026-07-20 (Run 10)
- **Befund:** **Legitimes Null-Ergebnis — keine substanzielle Überschneidung.** firmengruendung-ch führt weder
  «Genossenschaft» noch «UID/CHE-» (0 Treffer); die Rechtsform-Tabelle deckt nur Einzelfirma/Kollektiv-Komm./
  GmbH/AG/Ltd ab. In kunde-bopp sind «Genossenschaft»/«AG» reine Identifikatoren (WOMA = Genossenschaft
  CHE-103.976.168; Nova = AG CHE-403.795.970), kein materielles Rechtsform-Fachwissen → **0 Widerspruch,
  0 Doppelspur, kein sinnvoller Querlink.**
- **Nebenbeobachtung (KB-intern, NICHT Cross-KB):** firmengruendung-ch hat keinen Genossenschafts-Artikel
  (interne Coverage-Lücke; kunde-bopp liefert dafür keine verallgemeinerbaren Inhalte). Nur vermerkt.
- **Aktion: keine.** Paar aus der prioritären Rotation genommen (künftig nicht mehr vorrangig gegeneinander prüfen).
- **Status: kein Befund.**

### energie ↔ normen (SIA 279 Bemessungswert, VKF-BRL 13-15, SIA 2024) — geprueft 2026-07-19 (Run 9)
- **Anlass:** neuer Stoff aus energie Run 79/80 (18.07.2026).
- **Befund 1 (CONFIRMED, hoch):** WIDERSPRUCH. Das neue Destillat
  `naturdaemmstoffe-bemessungswerte-brandverhalten` fuehrte «Bemessungswert **immer hoeher** als
  Nennwert (Sicherheitszuschlag)» — am Normvolltext widerlegt: SIA 279:2018 **Ziff. 3.2.2.1**
  (werkmaessig hergestellte Daemmstoffe nach europaeischen Normen: Bemessungswert = Nennwert,
  **ohne Zuschlag**), Zuschlag nur fuer Ortdaemmstoffe (Ziff. 3.2.2.2). Die Sicherheiten stecken in
  der Nennwert-Ermittlung (Ziff. 2.2.3.1: 23 °C/50 % r.F., Alterung 25 J, λ90/90).
  → Passage korrigiert, «Zuschlagsformel» als Scheinluecke geschlossen, Weg fuer Baustroh auf
  Ziff. 3.5/SIA-Register gestellt.
- **Befund 2 (CONFIRMED, hoch):** energie fuehrte den SIA-279-Volltext als «nicht gelesen
  (kostenpflichtig)», obwohl er im JANS-Normenbestand liegt und seit 12.07.2026 in `normen`
  destilliert ist (`established`). Ursache des Widerspruchs oben. → Querbezugs-Block gesetzt,
  Frontmatter auf SIA 279:2018 korrigiert.
- **Befund 3 (CONFIRMED, mittel):** VKF-BRL 13-15 ohne Verweis auf das normen-Destillat zitiert;
  Terminologie abweichend («RF3 hinnehmbarer Beitrag» statt Ziff. 2.1 «zulaessiger Brandbeitrag»),
  Holzbeispiele ungedeckt. → verlinkt, Terminologie korrigiert, Negativbefund praezisiert auf
  «keine produktbezogene EN-13501-1-Klasse/VKF-Anerkennung fuer Baustroh» (der **Klassierungsweg**
  ist belegt: Ziff. 2.4.1 EN 13501-1 → RF, Ziff. 2.4.4 BKZ → RF, Kapselungsregel K30-RF1).
- **Befund 4 (CONFIRMED, mittel):** normen fuehrte die SIA-2024:2021-Bring-Schuld unveraendert als
  «kostenpflichtiger Volltext», obwohl energie Run 80 eine **freie amtliche Quelle** erschlossen hat
  (SIA-Grundlagenbericht Revision 2021 inkl. C1:2024). → REGISTER-Zeile ergaenzt, Bring-Schuld auf
  Anhang A/F + zitierfaehige Ziffern-Fundstelle **verengt** statt geschlossen.
- **Befund 5 (REFUTED):** «Tabelle 6 der SIA 380/1» sei eine unverifizierbare Norm-Fundstelle. Es
  ist eine **Erlass**-Aussage (WDV § 2 Abs. 1 lit. b) und am Erlass vollstaendig belegt — keine
  Uebergabe an `normen` noetig. *(Nebenbefund, noch offen: die Klammer «(Heizwaermebedarf, § 3)» im
  WDV-Destillat ist auf «Verweis in WDV § 2 Abs. 1 lit. b» zu korrigieren.)*
- **Status: bereinigt; 1 Nebenbefund offen (WDV-Klammer), Bring-Schuld SIA 2024 verengt.**

### energie ↔ planungsgrundlagen (VHKA, WDV, Oel-/Gasheizung) — geprueft 2026-07-19 (Run 9)
- **Befund 1 (CONFIRMED, mittel):** VHKA-Stoff wird in beiden KBs gefuehrt (pg: Formularbefund
  EN-101c/KEnV § 26 SZ; energie: materielle ZH/SZ-Gegenueberstellung) — **null gegenseitige
  Verweise**. → bidirektionaler Prosa-Querbezug gesetzt (nicht im Frontmatter-`links`-Feld, das
  erzeugt tote Backlinks). Fuehrend: `energie` fuer Rechtsgrundlage/Schwellenwerte, `planungs-
  grundlagen` fuer Formular/Verfahren.
- **Befund 2 (CONFIRMED, tief):** planungsgrundlagen zitiert WDV-Paragrafen, ohne auf das
  primaerquellen-verifizierte WDV-Destillat der KB energie zu zeigen (grep «LS 700.211» in
  planungsgrundlagen: 0 Treffer). → Verweiszeile ergaenzt.
- **Befund 3 (REFUTED):** «pg spricht von verschaerfter SZ-Anforderung, energie belegt das
  Gegenteil». Die Praemisse «SZ in allen Parametern milder» ist am energie-Destillat selbst falsch
  (§ 27 EnV 1 SZ kennt **keine** Minergie-Befreiung, ZH schon → SZ dort strenger). Kein Widerspruch;
  das Formularwort «verschaerft» bleibt als Zitat stehen, mit Pruefvorbehalt.
- **Befund 4 (REFUTED):** fehlende Bruecke Oel-/Gasheizungs-Ersatzpflicht. Die Bruecke existiert
  bereits eine Ebene hoeher (`energie/wiki/energienachweis-zh.md` Z. 40-44, inkl. Fuehrungs-
  klaerung) — der Leser hatte nur auf Destillat-Ebene gesucht. Trotzdem als **billiger Zusatznutzen**
  beidseitig verlinkt.
- **Befund 5 (REFUTED):** Doppelspur Betriebsoptimierung mit angeblicher Luecke bei planungs-
  grundlagen. Umgekehrt richtig — die Praezisierungs-Schuld lag bei `energie` (siehe Paar
  energie ↔ baurecht, Befund 1). **Zwei unabhaengige Agenten sind ueber dieselbe Stelle gestolpert.**
- **Status: bereinigt.**

### energie ↔ baurecht (Energienachweis-/Vollzugsrecht ZH) — geprueft 2026-07-19 (Run 9)
- **Befund 1 (CONFIRMED, hoch):** WIDERSPRUCH. `BAUHERREN-FAQ` F100 und das Modul-7-Destillat
  behaupteten eine **5-Jahres-Kadenz der Betriebsoptimierung als geltendes ZH-Recht (§ 13d EnerG)**.
  Am amtlichen Volltext widerlegt: § 13d Abs. 1 EnerG verlangt sie nur «innerhalb dreier Jahre nach
  Inbetriebsetzung»; §§ 48a-48c BBV I regeln Befreiung/Inhalt/Bericht/Aufbewahrung, **keine
  Periodizitaet**. Die 5 Jahre sind **MuKEn-Musterrecht** (Art. 7.4 MuKEn 2025 / Art. 8.4 MuKEn 2014).
  → F100 + Destillat auf den belegten ZH-Stand zurueckgenommen, MuKEn/ZH sauber getrennt.
- **Befund 2 (CONFIRMED, hoch):** WIDERSPRUCH. Das **Fossilfrei-Gebot fuer Neubauten** wurde in der
  energie-KB durchgehend **§ 10a EnerG** zugeschrieben — amtlich steht es in **§ 11 Abs. 1 EnerG**
  («Der Energiebedarf von Neubauten … muss ohne CO₂-Emissionen aus fossilen Brennstoffen gedeckt
  werden»); § 10a ist die Effizienz-/Delegationsnorm («moeglichst wenig Energie»). Beide durch
  dasselbe G vom 19.04.2021 per 1.9.2022 in Kraft — kein Fassungsfenster, das die Zuschreibung
  rettet. → 8 Fundstellen in `energie` + `planungsgrundlagen` korrigiert.
- **Befund 3 (CONFIRMED, hoch):** FEHLENDE QUERVERLINKUNG. energie fuehrte den 200'000-kWh-Wert als
  offene Bring-Schuld («beim AWEL anfragen»), obwohl `baurecht` den amtlichen Verordnungstext haelt:
  **§ 48c Abs. 1 lit. a BBV I** (raw/260607_amtlich_zh_bbv1.md, Z. 923-944). → Bring-Schuld
  geschlossen, Schwellenwert am ZH-Primaertext verifiziert, Aufbewahrungspflicht mitbelegt.
- **Befund 4 (CONFIRMED, mittel):** VERALTETES in `baurecht`. `baureife-und-erschliessung.md` zitiert
  im Praesens «§§ 8a/9–13 EnerG» — korrekt uebernommener **Buchstand 2019**, aber § 13 EnerG ist per
  1.9.2022 aufgehoben. → auf Nachtrag 129 nachgefuehrt; § 8a **nicht** stillschweigend gestrichen
  (die raw-Datei deckt ihn nicht ab), sondern als offener Verifikationspunkt markiert.
- **Befund 5 (CONFIRMED, mittel):** DOPPELSPURIGKEIT. `energie` gibt die Fuehrung im Energierecht
  ausdruecklich an `baurecht` ab («nicht doppeln»), fuehrt aber in drei Rechts-Destillaten
  ZH-EnerG-Paragrafen auf Absatz- und Fassungsstand-Ebene. Heute inhaltlich deckungsgleich — das
  Risiko ist die naechste EnerG-Revision, die dann an zwei Orten nachzuziehen waere.
  → **NICHT selbst aufgeloest: offener Entscheid fuer Raphael (E1, siehe unten).**
- **Befund 6 (CONFIRMED, mittel):** VERALTETES im eigenen Register (Rotationsliste). → bereinigt.
- **Status: bereinigt bis auf E1 (Doppelspur Energierecht ZH) + § 8a EnerG offen.**

### normen ↔ planungsgrundlagen (Brandschutz VKF/BSR 16-15) — geprueft 2026-07-18 (Run 8)
- **Befund:** Die Ausgangsvermutung (Ausgaben-Widerspruch «2022 vs. 2015/2017») ist **REFUTED** —
  beide KBs sind sich einig, dass die Ausgabe 2015 ist; pg spricht sauber von «Fassung/Stand».
  **Dahinter aber ein schwererer, CONFIRMED-Befund:** `normen` fuehrte die **Personenbelegung Verkauf**
  (0.5 / 0.35 / 0.25 P./m2) als `established` ohne Vorbehalt, obwohl sie per **Beschluss TKB 09.06.2021**
  ersatzlos gestrichen und durch eine Betriebstyp-Matrix ersetzt wurde (Fachmaerkte 0.10/0.10,
  Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte 0.45/0.21). Am Original beidseitig verifiziert
  (pdftotext-Volltextvergleich der Fassungen 01.01.2017 und Stand 01.12.2022). Der Wert geht in
  Fluchtwegbreiten ein — Fehlerwirkung bis Faktor 5. `normen` ist fuehrend und hatte den falschen Wert,
  `planungsgrundlagen` den richtigen: **Fuehrungs-Umkehr** wie schon bei GreenPV (Run 6) und SIA 380/1 (Run 7).
- **Aktion:** Destillat + Synthese + REGISTER nachgefuehrt (alte Werte markiert statt geloescht),
  3 QUESTIONS-Eintraege in normen, Querbezug-Block im pg-Wegweiser, Gremiums-Korrektur ABSV statt IOTH.
- **Offen (nicht autonom):** (a) **Volltext-Destillation der 2022er-Fassung** — die Deltas ABSV 22.03.2017
  (Ziff. 2.4.3/2.4.4) und Fehlerkorrektur 01.12.2022 (Ziff. 3.7) sind ungeprueft; (b) **Uebernahme der
  Matrix nach normen + Trim von pg §5am** auf reinen Fundstellen-Verweis = Umstrukturierung ueber
  KB-Grenzen, Rueckfrage noetig; (c) pg-Passage «Apotheke, Kiosk, Quartierladen» ueberdehnt die Matrix —
  seit dem Wegfall der Auffangzeile ist Kleinverkauf im Einzelfall mit der Behoerde zu klaeren.
  **Status: bereinigt + verlinkt; 3 offene Punkte.**

### planungsgrundlagen ↔ baurecht (OEREB-Themenkatalog / WWG-HWSchV-Nachlauf) — geprueft 2026-07-18 (Run 8)
- **Befund:** Der Run-7-Nachlauf war unvollstaendig. **CONFIRMED:** `kartenportale-oereb-kataster-system-zh`
  fuehrte fuer OEREB-Thema 190 `LS 724.112 § 15` (HWSchV, aufgehoben 01.06.2026) ungeflaggt; der INDEX
  trug die Repeal-Flags zweier Artikel nicht nach. **REFUTED:** die vermutete LS-724.11-Kollision ist
  kein Fehler, sondern eine belegte **Nummern-Wiederverwendung** (WWG bis 31.05.2026, WsV ab 01.06.2026).
  Run 51 (Kartenportale) selbst: **kein Befund** — keine Erlass-Zitate.
- **Aktion:** Zeile 190 korrigiert + Warnkasten, INDEX nachgezogen, Rueckverweis-Block in
  `baurecht/wiki/abstaende-und-hoehen` (die Verlinkung war einseitig), Wiederverwendungs-Hinweis in
  `baurecht/wiki/baureife-und-erschliessung`.
- **Offen (nicht autonom):** die **GSchV-Doppelspur** (Art. 41a/41b-Bemessungstabelle materiell in
  beiden KBs) besteht unveraendert weiter — Trim = Umstrukturierung, seit Run 7 offen.
  **Status: bereinigt + bidirektional verlinkt; 1 offener Punkt.**

### energie ↔ normen (Ψ-Werte/Waermebruecken, MuKEn Modul 7) — geprueft 2026-07-18 (Run 8)
- **Befund:** Kein Zahlen-Widerspruch. **CONFIRMED (stale):** der Themenartikel `energie/wiki/innendaemmung`
  fuehrte den Negativbefund zur Massivdecken-Ψ-Zahl weiter, obwohl E93 am selben Tag geschlossen wurde —
  **das Destillat wurde aktualisiert, der Themenartikel nicht mitgezogen** (Einstiegsebene zeigte den
  ueberholten Stand). **REFUTED:** die Zuschreibung «Ψ ≤ 0,20 (SIA 380/1)» ist sachlich korrekt gedeckt
  (EN-102 Fusszeile «Basis: Norm SIA 380/1, Ausgabe 2016»); die normen-Sperre betrifft nur Q_H-/U-Werte
  und Gebaeudekategorien, nicht Waermebruecken-Ψ — der Befund dehnte den Sperrumfang ueber seinen Wortlaut aus.
- **Aktion:** Themenartikel nachgezogen (Ψ-Werte, Konsequenz, Normgenerations-Vorbehalt 2001 vs. 2016),
  offener Punkt geschlossen, Backlink gesetzt; Flags fuer **SIA 180-C2:2020** (in energie 0 Treffer, von
  normen am 16.07. belegt) und **SIA 2024:2019 vs. 2021+C1:2024**; SIA-2048-Uebergabe an normen eingetragen.
- **Offen (nicht autonom):** Inhalt von **C2:2020** beidseitig unverifiziert (Bring-Schuld seit Run 6);
  Healthcare-EBF-Schwellen VIII.1/VIII.2 am SIA-2024:2021-Volltext nachrechnen.
  **Status: bereinigt + verlinkt; 2 Bring-Schulden.**

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

> **Bereinigt Run 9 (19.07.2026):** Die Liste war zur Karteileiche geworden — vier der sechs
> Zeilen betrafen Paare, die laengst datierte Prueflauf-Eintraege haben (energie ↔ baurecht sogar
> doppelt gefuehrt und dreimal beruehrt: Run 3, Run 6, Run 9). **Regel ab jetzt:** ein Paar wandert
> mit dem Eintrag seines datierten Prueflaufs automatisch aus dieser Liste; vor jedem Lauf die
> Rotationsliste gegen die «geprueft»-Ueberschriften diffen. Offene Restfragen gehoeren an den
> datierten Paar-Eintrag, nicht hierhin.

**Stand nach Run 21: die Liste ist leer.** Alle drei in Run 20 aufgenommenen Paare und das seit Run 9
haengende kunde-bopp-Paar sind geprueft. Die Rotation laeuft ab jetzt wieder ueber den Zuwachs.

- `claude-code ↔ rules/docs-konzepte` — die Rule-Seite des @-Import-Widerspruchs. **Bleibt liegen,
  solange der zugehoerige Governance-Entscheid Raphaels offen ist**; nicht als Karteileiche zaehlen.
- **Neu aufgenommen Run 21, weiterhin offen:** `normen ↔ baurecht` fuer die uebrigen bfu-Destillate
  (Treppen, Glas, Tueren/Tore, rechtliche Aspekte) · `wettbewerbs-dna ↔ entwurfs-referenzen ↔
  architekten-synobsis`, sobald die am 30.07. reaktivierte Etappe 4 «Vertiefung» geliefert hat.
- **Neu aufgenommen Run 22, weiterhin offen:** `immobilienbewertung ↔ entwurfs-referenzen ↔
  wettbewerbs-dna`, sobald die fuenf Ingest-Reports vom 31.07. ins Wiki eingearbeitet sind (vorher
  ist der Bestand nicht vergleichbar).
- **Neu aufgenommen Run 23:** `normen ↔ planungsgrundlagen` fuer die **uebrigen** Estrich-
  PAV-Merkblaetter (E 02, E 05, E 11, E 16, E 17 und PAV-A 01/A 03 — Run 23 hat nur die Spitze des
  Clusters geprueft) · `projekt-lessons ↔ mahnwesen/bexio-Strecke`, sobald der neue Artikel
  `kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087` (03.08.) einen zweiten Fall hat.

*Ausgetragen 03.08.2026 (Run 23):* `spec ↔ claude-code ↔ twin` (→ Run 23, Erst-Pruefung als Dreieck:
4 bestaetigt, Ertrag in der Selbstaufsicht statt im Fachwissen — der lieferlose `wissens-chef` war
das Wochen-Kontingent, ein Beweisstueck der Meldung war ein Nicht-Signal, und der Grundkontext liegt
gemessen wieder ueber dem Vor-Diaet-Wert; Erst-Verlinkung twin ↔ claude-code gesetzt).

*Ausgetragen 31.07.2026 (Run 22):* `bauprodukte ↔ projekt-lessons` (→ Run 22, Erst-Pruefung: beide
Doppelspur-Befunde widerlegt, die Abgrenzung war laengst dreifach gesetzt; der echte Mangel war die
fehlende Verlinkung zwischen einer blockierten KB und dem einzigen Praxisfall, der sie loesen kann —
Erst-Verlinkung gesetzt, keine neue Matrix-Zeile noetig).

*Ausgetragen 30.07.2026 (Run 21):* kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (→ Run 21,
Erst-Pruefung: 3 bestaetigt, 1 widerlegt, Giebelweg-Endstand in KB **und** Skill nachgefuehrt,
Erst-Verlinkung, 2 Matrix-Zeilen) · bauprodukte ↔ normen ↔ grobkosten vertieft (→ Run 21: 3 bestaetigt,
1 widerlegt, LV-relevanter Kabinenmass-Fehler korrigiert) · energie ↔ normen fuer die vier restlichen
Run-119-Destillate (→ Run 21: 4 bestaetigt, SWKI-Zuordnungsluecke als Entscheid an Raphael).

*Ausgetragen 29.07.2026 (Run 20):* claude-code ↔ spec ↔ rules (→ Run 20, Erst-Pruefung: 3 bestaetigt,
2 widerlegt, beidseitig verlinkt, neue Matrix-Zeile, ein Entscheid an Raphael) · projekt-lessons ↔
auflagebereinigung ↔ baurecht (→ Run 20, Rotation: Chronologie korrigiert, bidirektional verlinkt).

*Ausgetragen 25.07.2026 (Run 15):* architekten-synobsis ↔ entwurfs-referenzen (→ Run 15, Erst-Pruefung:
1 Widerspruch korrigiert, Erst-Verlinkung + 2 Matrix-Zeilen) · grobkosten ↔ immobilienbewertung ↔
kostenschaetzung-Ref (→ Run 15, Delta-Check gefahren: Ankerzahlen stabil, neu 2 Flaechenfaktor-Punkte).
*Ausgetragen 20.07.2026 (Run 10, bereits gepruefte Paare):* kunde-bopp ↔ firmengruendung-ch
(→ Run 10, Erst-Check = Null-Ergebnis, disjunkt).
*Ausgetragen 19.07.2026 (bereits gepruefte Paare):* energie ↔ baurecht (mehrfach, → Run 3/Run 6/Run 9/Run 10) ·
immobilienbewertung ↔ grobkosten vertieft (→ Run 3, bereinigt) · normen ↔ energie SIA 380/1,
SIA 180/181 (→ Run 3 + Run 7; offener Restpunkt SIA-181:2020-Destillat bleibt dort vermerkt).
