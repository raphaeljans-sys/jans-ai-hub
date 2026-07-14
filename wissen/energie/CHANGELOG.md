# CHANGELOG — KB Energie

Neueste zuoberst.

## 2026-07-14 — Run 70 (Lauf-Zusammenfassung, ERSTER GEDROSSELTER LAUF)
- [meta] Erster Energie-Lauf unter **Rule 260714 (Tempo drosseln, Wochenlimit 81 %)**: Token-Vollgas (260712b) ist fuer die Restwoche aufgehoben, Batch bewusst von 6-10 auf **drei** Themenkomplexe zurueckgenommen. Qualitaetsleitplanken unveraendert.
- [new] `destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md` (Details im Eintrag unten) — **established**; FAQ **F84/F85** neu.
- [update] `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md` + `destillate/fernwaerme-anschlusskosten-zh.md`: **Kanton Schwyz** ergaenzt (Agro Energie Schwyz Anschlussformel CHF 20'676 + 800/kW bzw. 31'000 + 380/kW indexiert, Grundpreis 92.02 CHF/kW·Jahr, Arbeitspreis 14.20 Rp./kWh; Energie Einsiedeln 11.53 Rp./kWh; EWS Ibach Netzkostenbeitrag CHF 140/A, Netzanschlussbeitrag 1'860-17'210; EW Hoefe 160/A). Netzanschluss-Destillat **emerging → established**; Fernwaerme bleibt emerging (ZH-Teil weiterhin eigene Formelrechnung). Schliesst die Run-69-SZ-Luecke. FAQ **F83** neu. **Adversarial widerlegt:** kursierender Wert «Agro Energie EFH 10 kW ≈ CHF 18'000» ist unbelegt und widerspricht der publizierten Formel.
- [fix] **Sachfehler der KB korrigiert (GEAK-Foerderung):** bisher stand «CHF 1'000 (GEAK) / 1'500 (GEAK Plus)». Richtig: gefoerdert wird **nur der GEAK Plus**, gestaffelt nach **Gebaeudetyp** (1'000 EFH/ZFH, 1'500 uebrige); der Basis-GEAK wird in ZH und SZ **nicht** gefoerdert. Nachgezogen in Destillat, Kosten-Destillat, Wiki-Artikel, FAQ F36 und beiden INDEX-Registern.
- [new] GEAK-**Pflicht-Landkarte ZH/SZ** (FAQ **F82**): in ZH/SZ nirgends zwingend (keine Handaenderungs-/Bewilligungspflicht; gesetzliche Handaenderungspflicht nur FR/VD/NE/JU); zwingend nur als **GEAK Plus ab CHF 10'000 Foerderbeitrag** (HFM 2015) und in **SZ als Klasse-D-Nachweisweg beim fossilen 1:1-Heizungsersatz** (AfU SZ, FAQ 28.08.2025) — diesen Weg gibt es in ZH nicht (§ 11 EnerG).
- [update] Register: `wiki/BAUHERREN-FAQ.md` (Stand **85 Kernfragen F1-F85**), `wiki/INDEX.md`, `destillate/INDEX.md`, `training/curriculum.md` (Block **D51**), `wiki/QUESTIONS.md` (**E71-E73**, alle belegt geschlossen).
- [report] `outputs/2026-07-14_energie-run70.md` (inkl. Verifikations-Verdikte je Destillat und Hinweis zur Taktung).

## 2026-07-14 — VHKA (verbrauchsabhaengige Heiz-/Warmwasserkostenabrechnung) ZH/SZ — neues Destillat
- [new] `destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md`: Thema war in der KB bisher **gar nicht** belegt. Pflicht-Schwellen aus den **Primaertexten** verifiziert (curl + pdftotext): **Kt. ZH** EnerG § 9 — Neubau Messpflicht Warmwasser **ab 2 Nutzeinheiten**, Heizung pro Gebaeude bei Gebaeudegruppen; Bestand **ab 3 NE bei Gesamterneuerung** des Heizungs-/WW-Systems (**Uebergangsbestimmung: Abs. 3 erst 3 Jahre nach Inkrafttreten der Aenderung, also seit 1.9.2025**); Befreiung BBV I § 43 (<20 W/m2 EBF, **Minergie**, Luftheizung, 80-%-Nutzeinheit); **mind. 60 %** der Waermekosten verbrauchsabhaengig (BBV I § 44). **Kt. SZ** EnG § 10 — Neubau/Totalsanierung erst **ab 5 Nutzeinheiten**, Erfassung pro Gebaeude bei >75 % Huellensanierung; Befreiung EnV 1 § 27 (<20 W/m2 EBF); Abrechnung «zum ueberwiegenden Teil» (**keine Prozentzahl im Erlass**); ausruestungspflichtig sind Bauten mit Baubewilligung **nach dem 1.2.2001** (§ 25 EnV 1).
- [new] Abrechnungsmechanik + Mietrecht: **VEWA 5. Aufl. (BFE/EnergieSchweiz)** — Splitting **Grundkosten 30 % / Verbrauch 70 %**, Investition **CHF 500–1'000 pro Nutzeinheit**, Ablesung/Abrechnung **CHF 50–100 pro Wohnung und Jahr**, Ueberwaelzungssatz **12 %** (10 J. Lebensdauer, Referenzzins 1,5 %). **VMWG**: Erfassung/Abrechnungsservice sind anrechenbare Nebenkosten (Art. 5 Abs. 2 lit. f), **Verzinsung/Abschreibung der Geraete NICHT** (Art. 6) → Investition laeuft ueber Mietzinserhoehung; Einsichtsrecht Art. 8. Fernwaerme befreit nicht (Uebergabestation = zentrale Waermeerzeugung, EN-113).
- [link] Backlinks zu `[[muken-2025-verabschiedet]]`, `[[waerme-contracting-vertragsmodelle-ch]]`, `[[zev-mieter-strompreis-eigenverbrauch]]`, `[[fernwaerme-anschlusspflicht-zh]]`, `[[bfe-waermeerzeugerleistung-2015]]`; Register `destillate/INDEX.md` nachgefuehrt.
- **Offen (ehrlich):** SZ nennt keinen Prozentwert («ueberwiegender Teil») — Praxis des AfU SZ unbelegt; SZ kennt **keine** Minergie-Befreiung im Wortlaut; Verhaeltnis SZ § 25 EnV 1 (Baubewilligung nach 1.2.2001) zur Nachruestung aelterer Bauten bei Totalsanierung ungeklaert; VHKA-Modul der MuKEn 2025 nicht verifiziert; VMWG in Fassung «Stand 1.6.2020» gelesen (Fedlex-Direktabruf blockiert).

## 2026-07-14 — Run 70: die SZ-Lücken aus Run 69 geschlossen (Fernwärme-Kosten + Netzanschluss SZ)
- [update] `destillate/fernwaerme-anschlusskosten-zh.md`: neuer Abschnitt **«Kanton Schwyz»** mit drei
  Betreibern. **Agro Energie Schwyz AG** (Talkessel Schwyz) vollständig belegt — Anschlussgebühr
  AG = CHF 20'676 + 800 × kW (bis 20 kW) bzw. CHF 31'000 + 380 × kW (ab 20 kW), indexiert mit dem
  Zürcher Wohnbaukostenindex (Faktor 1.067; publiziertes Beispiel 15 kW = CHF 34'866.55);
  Erschliessungsvorteil-Abzüge − 6'200/− 4'200/− 0 plus Jubiläumsrabatt 2026 bis − 3'000; Zuleitung ab
  Parzellengrenze 600–800 CHF/m (Grabarbeiten + Leitung), hausintern 400–500 CHF/TM; **Grundpreis
  92.02 CHF/kW·Jahr** (ab 01.10.2025), **Arbeitspreis 14.20 Rp./kWh** (Indexmodell 15.79, freiwillig
  reduziert). **Energie Einsiedeln AG:** Arbeitspreis 2025 **11.53 Rp./kWh**, Grundpreis vertraglich
  individuell + LIK-indexiert (publ. Beispiel MFH 55 kW = CHF 10'713.77/Jahr), Anschlussbeitrag nicht
  publiziert. **Energie Ausserschwyz AG:** keine Preise publiziert; nur der kantonale Förderbeitrag
  CHF 4'000 + 200/kW. Quelle: Agro-Tarifblatt (publ. 04.09.2025, seitenweise gerendert gelesen),
  Einsiedler Preisblatt Fernwärme 2025. Status bleibt **emerging**.
- [fix] Kursierender Wert «EFH 10 kW ≈ CHF 18'000 Anschluss bei Agro Energie» an keiner Primärquelle
  bestätigt und **widerlegt** durch die publizierte Formel (10 kW → CHF 30'598 indexiert) — nicht verwenden.
- [update] `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md`: die in Run 69 als «nicht
  extrahierbar» vermerkte **EWS-Anhang-8-Lücke ist geschlossen** — Netzkostenbeitrag NS **CHF 140/A**
  bis 315 A (218 kVA), darüber **CHF 85/A**; MS CHF 70/A; Netzanschlussbeitrag NS bis 25 m Kabellänge
  16 A CHF 1'860 … 1'000 A CHF 17'210, Mehrlänge 14–464 CHF/m; MS-NAB CHF 5'385 bzw. 16'155
  (EWS-Netzanschlussrichtlinien gültig ab 01.06.2024, Anhang 8). Zusätzlich **EW Höfe AG** (Bezirk Höfe):
  NKB-Tabelle 40 A CHF 6'400 … 400 A CHF 64'000, darüber CHF 160/A; MS 630 kVA CHF 63'000, andere
  CHF 100/kVA; Netzanschlussbeitrag = effektive Aufwendungen **inkl. Netzverstärkung** zulasten Kunde.
  Kernaussage für die Beratung: der NKB knüpft an die **bezugsberechtigte Leistung** an — PV löst ihn
  nicht aus, **Ladeinfrastruktur mit Leistungserhöhung schon** (100 → 160 A = CHF 8'400 bzw. 9'600 nur
  NKB). Status **emerging → established** (alle Kernzahlen aus Primärquellen: Fedlex, ElCom-Weisung,
  VNB-Preisblätter).
- [new] **FAQ F83** «Was kostet mich im Kanton Schwyz der Fernwärmeanschluss — und was der
  Strom-Netzanschluss für PV und Ladestationen?» → `wiki/BAUHERREN-FAQ.md`; F80 entsprechend
  nachgeführt (Verweis statt «SZ-Zahlen nicht auffindbar»).
- [link] Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`.
- **Offen:** Anschlussbeitrag Energie Einsiedeln + gesamtes Tarifwerk Energie Ausserschwyz (nicht
  publiziert, Offerte nötig); Vertragsdauern/Kündigungsfristen der SZ-Verbünde; Wärmeverbünde
  Küssnacht/Arth-Goldau; Verteilnetzbetreiber ausserhalb EWS/EW Höfe (Einsiedeln, Küssnacht, March);
  EW-Höfe-Preisblatt datiert «gültig ab 01.01.2017» (aktuell publizierte Fassung, Aktualität nicht beim
  Werk bestätigt).

## 2026-07-14 — GEAK-Pflicht-Landkarte ZH/SZ + Foerder-Korrektur (Auftrag Raphael)
- [update] `destillate/geak-gebaeudeenergieausweis-kantone.md`: neue Sektion **«Pflicht oder nicht? — ZH und SZ praezise getrennt»** (Tabelle Handaenderung / Baubewilligung / Heizungsersatz / Foerderung / Grossverbraucher). Kernfund: **kein GEAK-Obligatorium in ZH und SZ**; ABER im **Kt. SZ ist das Erreichen der GEAK-Klasse D (Gesamtenergieeffizienz) einer von drei Nachweiswegen** beim Neueinbau/1:1-Ersatz eines fossilen Waermeerzeugers in Wohnbauten (Alternativen: MuKEn-Standardloesung, Minergie-Zertifikat) — Quelle AfU SZ, «FAQ Foerderprogramm und Energie-Gesetz», Stand 28.08.2025 (Volltext via curl+pdftotext) + sz.ch «Energielabel/GEAK». Im **Kt. ZH gibt es diesen Weg nicht** (§ 11 EnerG: erneuerbares System, Ausnahme nur via Lebenszykluskosten-Nachweis EN-LCC-ZH/EN-120; zh.ch erwaehnt den GEAK nicht).
- [fix] **Sachfehler korrigiert (drei Dateien):** die Foerderbeitraege wurden bisher als «CHF 1'000 (GEAK) / 1'500 (GEAK Plus)» ausgewiesen. Richtig: **gefoerdert wird NUR der GEAK Plus**, gestaffelt nach **Gebaeudetyp** — CHF 1'000 (EFH/ZFH) bzw. CHF 1'500 (uebrige Gebaeudekategorien); der Basis-GEAK wird in ZH und SZ **nicht** gefoerdert (geak.ch/foerderung, Stand 01/2026; sz.ch woertlich: der GEAK selbst «wird nicht finanziell unterstuetzt»; Foerderprogramm ZH 2026 / SZ 2026 Kap. 18). Korrigiert in `destillate/geak-gebaeudeenergieausweis-kantone.md`, `destillate/geak-kosten-efh-mfh.md`, `wiki/geak-gebaeudeenergieausweis.md`, FAQ **F36**.
- [update] Destillat ergaenzt um: Abgrenzung **GEAK vs. Energienachweis EN-ZH/EVEN** (`[[en-zh-nachweis-uebersicht]]`, neuer Backlink), Grenzen der Aussagekraft (relative Klassierung, Berechnung statt Messung), Uebertrag des GEAK auf die neue Eigentuemerschaft beim Verkauf, SZ-Feinheit «10'000-Schwelle zaehlt nur die Basismassnahme Waermedaemmung (Bonus zaehlt nicht mit)», Ausnahme «GEAK-Plus-Beratungsbericht darf nachtraeglich eingereicht werden».
- [new] **FAQ F82** «Ist der GEAK Pflicht — brauche ich ihn beim Verkauf, beim Heizungsersatz oder fuer die Foerderung? (ZH/SZ)» → `wiki/BAUHERREN-FAQ.md`.
- [link] Register nachgefuehrt: `destillate/INDEX.md`, `wiki/INDEX.md`. Stale Backlink `[[minergie-standards]]` im Destillat auf `[[minergie-zertifizierung-workflow]]` umgehaengt.
- **Offen:** SZ-Klasse-D-Weg ist ueber die AfU-FAQ belegt, **nicht** ueber den Gesetzeswortlaut (§ EnG SZ / Vollzugshilfe MuKEn-Ersatzmodul) — vor verbindlicher Einzelfall-Aussage verifizieren. Grossverbraucher (ZH/SZ): **kein GEAK-Bezug belegt** (bestaetigter Negativbefund, nicht behaupten).

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug-Bloecke zu normen + grobkosten/immo gesetzt
- [link] «Querbezug KB normen» in `destillate/sia-2024-nutzungsdaten-gesundheitsbau`, `sia-2024-nutzungsrandbedingungen-gesundheitsbau`, `komfortlueftung-wrg-sia382-luftwechsel`: Norm-Fundstelle SIA 2024/380-1/382-1 fuehrt normen; Ausgaben-Diskrepanz normen 2006/2014 vs. energie 2021/2025 ausgewiesen (energie ist aktuell, normen-Register nachgezogen — Run-4-Flags dort).
- [link] «Querbezug KB grobkosten/immobilienbewertung» in `destillate/fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025`: diese Komponentenkosten sind BKP-2-Unterpositionen und stecken bereits in den m3-GV-/BKP-2-Erstellungskennwerten — **nicht additiv** (Doppelzaehlungs-Guard). Kein Widerspruch/Doppelspur (Metrik-Ebenen sauber getrennt).
- Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Run 69: vier neue Themenkomplexe (SIA 2024 Gesundheitsbau, Netzverstärkung PV/E-Mobilität, Fernwärme-Kosten, Netto-Null)
- **Kontext:** Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe, Intensivphase,
  Token-Vollgas). PDF-Inventar bleibt vollständig abgearbeitet (Erst-Erhebung Run 65) — daher vier
  parallele Web-Rechercheagenten auf primärquellennahe Schweizer Quellen (Fedlex, ElCom, SIA,
  Kantons-/Stadt-Websites, VNB-Netzanschlussbedingungen, Preisüberwacher) angesetzt.
- **Vier neue Destillate:**
  1. **SIA 2024 Nutzungsdaten Gesundheitsbau** (JANS-Healthcare-Fokus — Gebäudekategorie VIII.1
     Spital/VIII.2 Pflege, Raumnutzungen Bettenzimmer/Stationszimmer/Behandlungsraum, Prozessanlagen-
     Anteil 28-38 %, OP/CT/MRT nicht abgedeckt) → `destillate/sia-2024-nutzungsdaten-gesundheitsbau.md`
     (neu), FAQ **F78** neu.
  2. **Netzanschluss-/Netzverstärkungskosten PV-Grossanlagen + E-Mobilität** (Art. 15b StromVG seit
     1.1.2025, CHF-59/CHF-50-Vergütung, VSE-70%-Wechselrichter-Regel ab 1.1.2026) →
     `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md` (neu), FAQ **F79** neu.
  3. **Fernwärme-Anschlusskosten Stadt Zürich** (ewz-Tarifformel 2026 + Preisüberwacher-
     Schweizerdurchschnitt, ergänzt die bereits bekannte Anschlusspflicht §295 PBG um effektive
     CHF-Zahlen) → `destillate/fernwaerme-anschlusskosten-zh.md` (neu), FAQ **F80** neu.
  4. **Netto-Null-Klimaziele Bund/Kt. ZH/Stadt Zürich/Kt. SZ** (Bund 2050 gesetzlich, ZH-2040-
     Vorlage am 28.9.2025 verworfen, Stadt-ZH-2040 nur Planungsgrundlage, SZ ohne eigene
     Verschärfung — sauber getrennt heute-verbindlich vs. Absicht) →
     `destillate/netto-null-klimaziele-zh-sz.md` (neu), FAQ **F81** neu.
- **Register nachgeführt:** `destillate/INDEX.md` (vier Zeilen neu), `wiki/INDEX.md` (Kernprodukt-
  Zeile + vier neue Themen-Artikel-Zeilen), `wiki/BAUHERREN-FAQ.md` (F78-F81 neu, FAQ-Stand jetzt
  81 Kernfragen), `wiki/QUESTIONS.md` (E67-E70 neu, Struktur-Notiz M2 aktualisiert, 25. Lauf in
  Folge entscheidungsreif), `training/curriculum.md` (D50 unter Block A).
- **Leitplanken beachtet:** alle Aussagen mit Quelle/URL/Datenstand belegt, Verifikationsgrad je
  Abschnitt aus den Originalberichten übernommen (Bundes-/Kantonsrecht direkt auf Fedlex/zh.ch/
  sz.ch gelesen, kommerzielle/unverifizierte Quellen explizit als solche markiert), unsichere Punkte
  (SZ-Fernwärmekosten, EWS-CHF-Ansätze, exakter Wortlaut Art. 102a KV-ZH, SIA-2024-Raumdatenblätter
  Anhang A) als offen markiert statt erfunden.
- **Status aller vier Destillate:** emerging (primärquellennah, aber mit dokumentierten Lücken).

## 2026-07-14 — Run 68 (nachintegriert): drei neue Themenkomplexe + Klärung zweier Run-67-Offenpunkte
- **Kontext:** Ein separat gestarteter Trainingslauf hatte vier parallele Web-Rechercheagenten
  gestartet, deren Ergebnisse zunächst nicht ins Repo integriert wurden (Orchestrierungsfehler des
  übergeordneten Agenten). Die vier fertigen Recherche-Berichte trafen nachträglich als
  Einzelergebnisse ein und wurden hier manuell nachintegriert, um die bereits geleistete
  Rechercharbeit nicht zu verlieren.
- **Drei neue Destillate:**
  1. **Wärme-Contracting/Wärmelieferung** (Vertragsmodelle, Art. 6a VMWG, MuKEn-Bezug ZH/SZ) →
     `destillate/waerme-contracting-vertragsmodelle-ch.md` (neu), FAQ **F75** neu.
  2. **Steuerabzüge energetische Sanierung** (Art. 32 Abs. 2 DBG, Kt. ZH/SZ, Eigenmietwert-Reform
     per 1.1.2029) → `destillate/steuerabzuege-energetische-sanierung-ch.md` (neu), FAQ **F76** neu.
  3. **Grundwasserwärmenutzung Bewilligung ZH+SZ** (Konzessionsverfahren, 3°C-Regel, Schwellenwerte)
     → `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md` (neu), FAQ **F77** neu.
- **Zwei Run-67-Offenpunkte geklärt** (vierter Rechercheagent): `denkmalschutz-energiesanierung-zh-sz.md`
  auf **established** gehoben — SZ-Beitragswiderspruch aufgelöst (§ 16a DSG: Grundbeitrag 25 % +
  Schutzziel-Zuschlag 5/10/15 % = 30/35/40 %, unabhängig von lokal/regional/national) und
  ZH-Erleichterungsklausel lokalisiert (§ 2 Abs. 5 WDV, LS 700.211, delegiert aus § 17a EnerG,
  Wortlaut primärquellen-verifiziert). FAQ F74 auf established aktualisiert.
- **Register nachgeführt:** `destillate/INDEX.md` (vier Zeilen neu/ergänzt), `wiki/BAUHERREN-FAQ.md`
  (F75-F77 neu, F74 geschärft, FAQ-Stand jetzt 77 Kernfragen).
- **Leitplanken beachtet:** alle Aussagen mit Quelle/Datenstand versehen, Verifikationsgrad je
  Abschnitt aus den Originalberichten übernommen, unsichere Punkte (Preisüberwacher-Praxis,
  MuKEn-2025-Wortlaut, JAZ-/Kosten-Richtwerte Grundwasser-WP, Konzessionsdauer ZH) als offen markiert.
- **Offen für nächsten Lauf:** `training/curriculum.md` und `wiki/QUESTIONS.md` sind nach diesem
  nachintegrierten Lauf noch nicht aktualisiert — im nächsten regulären Run nachführen. Zudem sollte
  geprüft werden, ob der PDF-Inventar-Zustand weiterhin erschöpft ist.

## 2026-07-14 — Run 67: Denkmalschutz+Energiesanierung (neu) + drei Nachrecherchen aus Run 66 (AWEL-Gebühr Erdsonden, SZ-Bagatellkatalog Elektroheizung, R290-Kostenvergleich)
- **Run-Report** `outputs/2026-07-14_energie-run67.md`. PDF-Inventar bleibt erschöpft; dieser Lauf
  arbeitet gezielt die «Was offen bleibt»-Liste aus dem Run-66-Report ab statt neuer PDF-Themen.
- **Drei parallele Rechercheagenten** (general-purpose, WebSearch/WebFetch):
  1. **Denkmalschutz/Ortsbildschutz (ISOS) und energetische Sanierung ZH+SZ** — neuer Themenkomplex.
     PBG-Revision ZH 02.07.2026 (noch nicht in Kraft), Art. 18a RPG, DSG/DSV-Revision SZ 1.10.2024,
     Stadt-Zürich-Förderprogramm ab 1.6.2026, ISOS nur bei Bundesaufgabe bindend →
     `destillate/denkmalschutz-energiesanierung-zh-sz.md` (neu), FAQ **F74** neu, Status emerging.
  2. **AWEL-Gebühr Erdwärmesonden Kt. ZH** — § 35/§ 69 KGSchV + GebV UR im Volltext gelesen: reine
     Aufwandgebühr, Deckel CHF 25'000, keine Pauschale → `destillate/erdwaermesonden-bewilligung-zh-sz.md`
     auf **established** gehoben, FAQ F71 geschärft.
  3. **SZ-Bagatellkatalog Elektroheizungen (§ 16a/§ 16b kEnV)** + **R290-Kostenvergleich** — SZ-
     Ausnahmenkatalog typ-/lagebasiert (Bergbahnstationen/Alphütten/Bergrestaurants), dezentrale
     Anlagen ohne Wasserverteilsystem nicht erfasst → `destillate/elektroheizungs-ersatzpflicht-zh-sz.md`
     ergänzt, FAQ F70 geschärft. R290: CHF-Kosten bestätigter Negativbefund, Effizienz teilweise über
     Kältemittel-Fibel belegt → `destillate/kaeltemittel-r290-waermepumpen-ch.md` ergänzt, FAQ F72
     geschärft.
- **Wiki nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F74 neu + F70-F72 geschärft, FAQ-Stand jetzt 74
  Kernfragen), `wiki/heizleistung-und-waermeerzeuger.md` (R290/Erdsonden-Abschnitte ergänzt),
  `wiki/INDEX.md` (neue Denkmalschutz-Zeile + drei geschärfte Zeilen), `destillate/INDEX.md`
  (vier Zeilen aktualisiert/neu).
- **Register:** `raw/_INGESTED.md` (vier neue Einträge), `training/curriculum.md` (Block D48),
  `wiki/QUESTIONS.md` (E59-E62 neu, Struktur-Notiz M2 aktualisiert — 23. Lauf in Folge
  entscheidungsreif).
- **Offen:** SZ-Denkmalpflegebeitrags-Widerspruch (25 % vs. 30/35/40 %), exakter EnerG-ZH-§ für
  Denkmalschutz-Erleichterung (PDF-Bildkompression), ZH/SZ-Kastenfenster-Merkblatt nicht auslesbar.

## 2026-07-14 — Run 66: Vier neue Web-Themenkomplexe via parallelisierte Rechercheagenten (Elektroheizung ZH/SZ, Erdsonden ZH/SZ, Kältemittel R290, Fernwärme-Anschlusspflicht SZ)
- **Run-Report** `outputs/2026-07-14_energie-run66.md`. PDF-Inventar-Erschöpfung vor Laufbeginn
  durch direkten Abgleich der lokal synchronisierten SharePoint-Kopie (`PL - 04 Energie`, 122 PDFs)
  gegen `training/pdf-inventar.md` verifiziert — keine Datei jünger als 11.06.2026, keine
  Nachtrags-PDFs vorhanden.
- **Vier parallele Rechercheagenten** (general-purpose, WebSearch/WebFetch) erschlossen unabhängig
  voneinander vier neue, JANS-relevante (ZH+SZ-Fokus) Themen mit amtlichen Primärquellen:
  1. **Elektroheizungs-Ersatzpflicht ZH+SZ** — § 10b EnerG + § 45c BBV I Kt. ZH (Primärtext-PDF),
     bundesgerichtlich bestätigt (BGer 1C_37/2022 = BGE 149 I 49); § 8a/§ 8b/§ 22a kEnG + § 24i EnV1
     Kt. SZ (Primärtext-PDF). ZH-Frist 2030, SZ-Frist 2050 (nur Anlagen mit Wasserverteilsystem) →
     `destillate/elektroheizungs-ersatzpflicht-zh-sz.md`, FAQ **F70** neu, Status established.
  2. **Erdwärmesonden-Bewilligung ZH+SZ** — AWEL zh.ch (Gemeinde-Verfahren, 500 m Bohrtiefe, 2,5 m
     Grenzabstand, Verbotszonen S1/S2/Au) + sz.ch «Wärmenutzung» (kostenlose Vorabklärung + eBau) →
     `destillate/erdwaermesonden-bewilligung-zh-sz.md`, FAQ **F71** neu, Status emerging (Gebühren
     nicht amtlich auffindbar).
  3. **Kältemittel R290 (Propan) bei Wärmepumpen** — BAFU «Stand der Technik»/«Inverkehrbringen»
     (PDFs vollständig gelesen), suissetec HEIZ241, SVK-Merkblatt A3/A2L. ChemRRV-Revision
     (Bundesratsbeschluss 29.10.2025), Umstellung ab 2027, A3-Brandschutzgrenzen 0,15 kg/1,5 kg
     EKAS → `destillate/kaeltemittel-r290-waermepumpen-ch.md`, FAQ **F72** neu, Status emerging.
  4. **Fernwärme-Anschlusspflicht Kt. Schwyz** (Pendant zu § 295 PBG ZH) — kEnG/KEnV/PBG/PBV SZ
     vollständig durchsucht: **keine gesetzliche Grundlage gefunden** (ehrliches Negativergebnis,
     bestätigt durch unabhängige juristische Sekundärquelle) →
     `destillate/fernwaerme-anschlusspflicht-sz.md`, FAQ **F73** neu, Status emerging.
- **Wiki nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F70-F73 + FAQ-Stand-Historie, FAQ-Stand jetzt 73
  Kernfragen), `wiki/heizleistung-und-waermeerzeuger.md` (neue Abschnitte Kältemittel R290 +
  Erdwärmesonden-Bewilligung), `wiki/INDEX.md` (vier neue/erweiterte Zeilen), `destillate/INDEX.md`
  (vier neue Zeilen).
- **Register:** `raw/_INGESTED.md` (vier Einträge), `training/curriculum.md` (Block D44-D47),
  `wiki/QUESTIONS.md` (E55-E58, Struktur-Notiz M2 aktualisiert — jetzt 22 Läufe in Folge
  entscheidungsreif).
- **Verifikation:** alle vier Themen primär auf direkt gelesenen amtlichen PDF-Primärtexten (nicht
  nur Web-Zusammenfassungen); offene/unbelegte Punkte je Destillat ehrlich ausgewiesen statt
  geglättet.

## 2026-07-14 — Run 65: BFE-Bauteilekatalog 2002 vollständig gelesen (Dächer, inhomogene Bauteile, Fenster+Türen) — PDF-Inventar jetzt wirklich lückenlos
- **Run-Report** `outputs/2026-07-14_energie-run65.md`. Löst den letzten seit 2026-06-10 nur
  teilgelesenen Eintrag im PDF-Inventar auf (der offizielle «vollständig abgearbeitet»-Vermerk vom
  13.07. war damit nicht ganz präzise — dieser Lauf macht es wahr).
- **Gelesen:** Seiten 43-80/80 des amtlichen BFE-Katalogs «U-Wert-Berechnung und Bauteilekatalog
  Neubauten» (2002, Bestellnr. 805.150 d), via Read (2 Aufrufe à max. 20 Seiten).
- **Kap. 4.1.3 Dächer und Decken:** D-/Di-Serie; Umkehrdach (D9) trägt einen amtlichen
  **20-%-Feuchtezuschlag** gegenüber einem Warmdach gleicher Dämmdicke (Dämmung liegt bewittert
  über statt unter der Abdichtung).
- **Kap. 4.2 Inhomogene Bauteile:** Bi-/Wi-Serie — Holzbau-Konstruktionen mit durchdringender
  Lattung/Riegel, U-Wert-Erhöhung bereits in der Tabelle eingerechnet (kein separater
  Wärmebrückenzuschlag nötig).
- **Kap. 5 Fenster und Türen (wichtigster Fund):** vollständige Formel
  Uw = (Uf·Af + Ug·Ag + Ψg·lg) / Aw sowie amtliche **Fallback-Werte ohne Herstellerangabe**:
  Uf Holz/Holz-Metall 1,9 · Kunststoff 2,5 · wärmegedämmte Verbundprofile 3,3 W/(m²·K); g-Wert
  2-IV-IR 62 % / 3-IV-IR 45 %; vollständige Uw-Bestimmungstabelle nach Rahmenanteil 15/20/30 %;
  Türen-U-Werte T1-T12 (1,1-2,9 W/(m²·K)).
- **Register:** `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` auf vollständig (S. 1-80/80)
  gehoben (Frontmatter + drei neue Kapitel-Abschnitte), `destillate/INDEX.md`, `training/pdf-inventar.md`
  (Eintrag + Kopfnotiz korrigiert), `training/curriculum.md` (A1 wirklich vollständig, D43 neu),
  `wiki/QUESTIONS.md` (E54 neu, M2-Zähler auf 21 Läufe), `wiki/INDEX.md`, `raw/_INGESTED.md`.
- **FAQ F69 neu:** «Mein Fensterbauer nennt noch keinen U-Wert — wie schätze ich Uw selbst ab?» —
  schliesst den in `wiki/fenster-verglasung.md` offen vermerkten Punkt «amtliche Uf-Tabelle je
  Rahmenmaterial» (mit Vorbehalt: Werte von 2002, konservativer Fallback statt Marktstandard).
- **Was offen bleibt:** Meta-Punkt M2 (eigener Skill `energie`?) ist jetzt seit 21 Läufen
  entscheidungsreif, braucht Raphaels explizite Antwort; ohne neue PDF-Quelle bleibt der nächste
  Themenkomplex offen für eine interaktive Priorisierung; Warme-Kante-Ψg-Werte für
  Kunststoff-/Edelstahl-Abstandhalter (nur SIA D0170, nicht in diesem Katalog) bleiben unbeziffert.

## 2026-07-14 — Run 64: Schallschutzfenster-Klassentabelle abschliessend geklärt (keine amtliche CH-Skala), DIN-4109-Herkunft, De-Formel amtlich bestätigt
- **Run-Report** `outputs/2026-07-14_energie-run64.md`. Bearbeitet die letzten beiden offenen
  Punkte aus Run 62/63 zum Themenkomplex Aussenlärm/Schallschutzfenster (F68).
- **Klassentabellen-Frage abschliessend beantwortet:** Zweitquellen-Check (WebFetch stauffer.ch)
  bestätigt unabhängig, dass **SIA 181 selbst keine Schallschutzklassen für Fenster definiert** —
  sie arbeitet ausschliesslich mit situativen Anforderungswerten (De, LH, L', Di). Es gibt damit
  **keine amtliche Schweizer Klassentabelle**, weder von SIA noch von einer anderen Fachstelle.
- **Adversarialer Befund:** der Schweizer Fensterhändler Hasler Fenster behauptet auf seiner
  Website, seine Klassentabelle beruhe auf SIA 181 — **das ist widerlegt**. Die tatsächlich im
  Markt kursierende «SSK 1-6»-Skala (5-dB-Stufen) stammt nachweislich aus der **deutschen** Norm
  DIN 4109 (drei übereinstimmende WebSearch-Quellen), nicht aus SIA 181, und ist nicht identisch
  mit der zweiten kommerziellen Skala «II-V» (fensterversand.ch).
- **Formel amtlich bestätigt:** Praxisblatt Stadt Bern «Schalldämmung nach SIA 181» (Okt. 2023,
  curl+pdftotext) beziffert **De ≥ Lr,Tag − 33 dB** / **De ≥ Lr,Nacht − 25 dB** (erhöhte
  Anforderung 3 dB strenger) — rechnerisch konsistent mit dem bereits dokumentierten Kleinstwert
  De ≥ 27 dB (Referenzwerte Lr Tag 60 dB / Nacht 52 dB).
- **DE-Marktkosten als grobe Orientierung ergänzt** (fensterhero.com, EUR, Bezugsgrösse
  1,23 × 1,48 m Kunststoffrahmen): SSK 2 rund +50–100 €, SSK 6 rund +800–1'200 € gegenüber
  Standard — ausdrücklich **nicht CH, nicht CHF, nicht amtlich**, nur Grössenordnung.
- **Register:** `destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md` auf Status
  **established** gehoben (Frontmatter + neuer Abschnitt + Offene-Punkte bereinigt);
  `wiki/schallschutz-sia181.md` ergänzt; `wiki/BAUHERREN-FAQ.md` F68 auf established gehoben;
  `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D42), `wiki/QUESTIONS.md`
  (E53, Meta-Punkt M2 zum zwanzigsten Mal vermerkt), `raw/_INGESTED.md` nachgeführt.
- **Nebenbefund:** die Output-Datei für Run 63 fehlte (Register/CHANGELOG waren bereits
  nachgeführt, aber Ablauf-Schritt 7 nicht abgeschlossen) — nachträglich als
  `outputs/2026-07-14_energie-run63.md` ergänzt.
- **Was offen bleibt:** CH-CHF-Mehrkosten je Schallschutzklasse (amtlich schlicht nicht
  auffindbar, gilt als geklärtes Nichtvorhandensein statt als Rechercheluecke); konkrete
  Ctr-Werte je Fenstertyp/Hersteller; Meta-Punkt M2 (Skill-Entscheid) weiterhin bei Raphael.

## 2026-07-14 — Run 63: SZ-Vollzugspraxis Aussenlärm (JANS-Fokuskanton) amtlich belegt
- **Run-Report** `outputs/2026-07-14_energie-run63.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; löst den Run-62-Prioritätspunkt «SZ-Ausnahmebewilligungspraxis».
- **Neues Destillat** `cerclebruit-sz-merkblatt-laermbelastete-gebiete.md` — amtliches Merkblatt
  des Umweltdepartements Kanton Schwyz (AfU, 29.01.2021), vollständig via curl+pdftotext gelesen
  (9 S.). Status **established** (100 % amtliche Primärquelle).
- **Drei substanzielle Abweichungen von der ZH-Praxis:** (1) **10 % Fensterfläche** als
  Grundvoraussetzung für jeden lärmempfindlichen Raum (nicht erst 5 % als Ausnahmeregel);
  (2) Ausnahmebewilligungen nur **bis 3 dB über dem Immissionsgrenzwert** — darüber gibt es in
  Schwyz **keine** Ausnahme (Hartgrenze, kein gestaffeltes Regime); (3) **Festverglasungen sind
  für lärmempfindliche Wohn-/Arbeitsräume grundsätzlich nicht bewilligungsfähig**
  (Regierungsratsbeschluss Nr. 652/2020) — der in Zürich zulässige Ausweg «Festverglasung ab
  70 dB Tag/60 dB Nacht» existiert in Schwyz nicht.
- Zusätzlich vollständige SZ-Raumnutzungstabelle (Grenzwertpegel je Nutzung) und Zuständigkeiten
  erschlossen: AfU entscheidet über Ausnahmebewilligung (Art. 31 Abs. 2 LSV), Gemeinde ist
  vollzugszuständig für den Schallschutznachweis SIA 181 (§ 39 VVzUSG).
- **Nebenbefund:** die beiden bisher zitierten kommerziellen Schallschutzfenster-Klassentabellen
  «II-V» (fensterversand.ch) und «SSK 1-6» (fensterhero.com, DIN-4109-basiert) sind zwei
  unterschiedliche, nicht deckungsgleiche Skalen — sauber getrennt dokumentiert statt vermischt;
  keine der beiden ist in der Schweiz amtlich, SIA 181 kennt nur den situativen Anforderungswert De.
- **Ergänzt:** `aussenlaerm-schallschutzfenster-strasse-bahn.md` (SZ-Vergleichsabschnitt,
  Klassentabellen-Abgrenzung), `wiki/schallschutz-sia181.md` (SZ-vs-ZH-Vergleich), FAQ **F68**
  geschärft.
- **Register nachgeführt:** `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (E52 neu,
  E-S1 auf neunzehn Läufe), `training/curriculum.md` (D41 neu), `raw/_INGESTED.md`.

## 2026-07-14 — Run 62: Neuer Themenkomplex Aussenlärm Strasse/Bahn (Pendant zu F65)
- **Run-Report** `outputs/2026-07-14_energie-run62.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; Themenkomplex gemäss Run-61-Prioritätspunkt 3.
- **Zwei getrennte Systeme:** Lärmschutz-Verordnung (LSV, Art. 31/32) prüft am **offenen**
  Fenster die Bewilligungsfrage; SIA 181 (Ziff. 3.1.1) prüft am **geschlossenen** Fenster die
  Bauqualität. Ein Schallschutzfenster löst die Bewilligungsfrage nicht.
- **Massnahmen-Kaskade:** Quelle → Grundriss → bauliche Massnahmen → Schallschutzfenster als
  Letztmittel; Ausnahmebewilligung Art. 31 Abs. 2 LSV nur kumulativ mit ausgeschöpfter Kaskade.
- **Ampel-System:** gelbe Räume (Lüftungsfenster ≥5 % Bodenfläche hält Grenzwert) vs. rote Räume
  (ruhiger Aussenbereich Pflicht min. 2 m/6 m², max. 1/3 Zimmer mit Ausnahme, Einzelraum-
  belüftung). **ZH-Sonderregel:** öffenbare Fenster nur bis 70 dB Tag/60 dB Nacht, darüber
  Festverglasung.
- **SIA-181-Rechenlogik:** Kleinstwert De ≥ 27 dB; massgebend am Bau **R'w + Ctr** statt
  Labor-Rw (Ctr −4 bis −6 dB bei Fenstern, Strassenlärm tieffrequenzlastig).
- **Schallschutzfenster-Klassen** (fensterversand.ch, kommerziell, nicht amtlich): II 30–34 dB,
  III 35–39 dB, IV 40–44 dB, V 45–49 dB mit Abstands-Faustregeln.
- **Schnittstelle Komfortlüftung:** rote Räume mit dauerhaft geschlossenen Fenstern brauchen
  mechanische Lüftung → `[[komfortlueftung]]`.
- → `destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md` (neu), Ergänzung
  `wiki/schallschutz-sia181.md` (neuer Abschnitt «Aussenlärm vertieft»), FAQ **F68** neu, Status
  emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D40,
  Meta-Punkt M2 auf 18 Läufe), `wiki/QUESTIONS.md` (E51 neu), `raw/_INGESTED.md`.
- Offen: SZ-spezifische Ausnahmebewilligungspraxis (JANS-Fokuskanton), amtliche (nicht
  kommerzielle) Schallschutzfenster-Klassentabelle, CHF-Mehrkosten je Klasse. Nächster Lauf:
  SZ-Vertiefung oder neuer, noch unbelegter Themenkomplex.

## 2026-07-14 — Run 61: Neuer Themenkomplex Fassadenbegrünung als Hitzeschutz + Zielkonflikt Fassaden-PV
- **Run-Report** `outputs/2026-07-14_energie-run61.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; nach Abschluss der 26-Kantone-Solarpflicht-Erhebung (Run 60) neuer
  Web-Themenkomplex gemäss Run-60-Prioritätspunkt 3.
- **Fassadenbegrünung als Hitzeschutz:** Kanton Zürich «Massnahmen gegen Hitze» (amtliche
  Kantonsseite) beziffert die Reduktion der gefühlten Temperatur (PET) in der unmittelbaren
  Umgebung begrünter Fassaden mit ⌀ **4,8 °C** und empfiehlt klar **bodengebunden** (Kletter-
  pflanzen ab Boden) vor **wandgebunden** (Konstruktionsaufwand/Unterhalt/Brandschutz/
  Wassermanagement). Ausdrücklicher **Zielkonflikt**: dieselbe Fassadenfläche lässt sich nicht
  gleichzeitig begrünen und mit PV belegen — Flächen-Entscheidung pro Fassadenabschnitt nötig.
- **Kosten bewusst nicht geglättet:** zwei CH-Quellen weichen deutlich voneinander ab — Kanton
  Zürich nennt CHF 250-600/m² (bodengebunden) bzw. 700-2'000/m² (wandgebunden), Hydroplant AG
  (CH-Fachbetrieb) nennt ab ~CHF 1'200/m² bzw. ~1'700/m². Beide Zahlen dokumentiert statt auf
  einen Mittelwert geglättet (Leitplanke «nichts erfinden»).
- **Förderung Stadt Zürich:** Förderprogramm Stadtgrün/Vertikalbegrünung, Reglement nennt 50 %
  der Gesamtkosten, Deckel CHF 1 Mio. (wirkt als Alltagsbetrag zu hoch, vermutlich genereller
  Reglements-Deckel); Praxis-Kennzahl 157 Gesuche/113 bewilligt/⌀ CHF 17'700 pro Projekt (eigene
  Berechnung aus den beiden Quellenzahlen).
- → `destillate/fassadenbegruenung-hitzeschutz-pv-zielkonflikt.md` (neu), Ergänzung
  `wiki/sommerlicher-waermeschutz.md` (5. Stellschraube), FAQ **F67** neu, Status emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D39),
  `wiki/QUESTIONS.md` (E50 neu, E-S1-Zähler auf siebzehn Läufe), `raw/_INGESTED.md`.
- Offen: Alltags-Fördersatz pro Projekt/m² ausserhalb der Reglements-Obergrenze, quantitativer
  kWh-Effekt auf Kühllast/Heizwärmebedarf, kantonales/Schwyzer Pendant zum Förderprogramm. Nächster
  fälliger Themenkomplex: Schallschutz gegen Aussenlärm (Strasse/Bahn) als Pendant zu F65.

## 2026-07-14 — Run 60: Solarpflicht-Erhebung ALLER 26 Kantone abgeschlossen (Basel-Landschaft/Jura/Freiburg/Glarus/Nidwalden/Obwalden/Appenzell AR+AI)
- **Run-Report** `outputs/2026-07-14_energie-run60.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, Abschluss des seit Run 56 laufenden
  Solarpflicht-Themenkomplexes. Station-Hinweis: dieser Loop läuft auf dem **Mac Mini** (Stations-
  Split Rule 260712: Mac Mini fährt energie/planungsgrundlagen/synobsis) und bleibt unter dem bis
  10.08.2026 gültigen Token-Vollgas (Rule 260712b) — die Drosselungs-Notiz aus dem Run-59-Report
  bezog sich auf Rule 260713, die explizit nur die Loops des MacBook Pro betrifft; die Cron-
  Konfiguration von `energie-training` (launchd-Job `ch.jans.training-energie`, 10:30/16:30) bleibt
  deshalb unverändert.
- **Letzte acht Kantone recherchiert, Erst-Erhebung damit vollständig (26/26):**
  **Basel-Landschaft** liefert das Lehrstück «Pflicht kann wieder wegfallen»: Kantonsgericht
  erklärte die Dekrets-Grundlage der Neubau-Pflicht für ungenügend, die Solarinitiative wurde am
  8.3.2026 mit ~70 % Nein klar verworfen — bleibt beim Bundesminimum, nur kommunale BZO-Option.
  **Obwalden** zeigt den umgekehrten Schwebezustand: neues PBG (4.12.2025) mit Solarpflicht,
  SVP-Referendumsinitiative seit 22.1.2026 hängig, Ausgang offen. **Glarus** (seit 2023),
  **Nidwalden** (seit 1.11.2021, 10 W/m² EBF, Gemeinschaftsanlage zählt Art. 19b) und
  **Appenzell Ausserrhoden** (seit 1.1.2023, Art. 10a EnG, alle Neubauten) haben eine
  Eigenstromerzeugungspflicht bereits in Kraft. **Freiburg** (10 W/m² EBF, MuKEn-2014) und
  **Jura** (OEn seit 2019, MoPEC, Revision 2026/2027 geplant) ergänzt. **Appenzell Innerrhoden**
  bleibt ein bewusst offen dokumentierter Quellenwiderspruch: Sekundärquellen behaupten eine
  PV-Pflicht, die amtliche Primärseite ai.ch zeigt nur eine Melde-/Bewilligungspflicht — hier
  keine Pflicht-Aussage ohne Direktkontakt zum Bau- und Umweltdepartement AI treffen →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** ergänzt, Status bleibt emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D38),
  `wiki/QUESTIONS.md` (E49 neu, E-S1-Zähler auf sechzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 61:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **16 Läufen**
  spruchreif — braucht Raphaels Entscheidung; Detailwerte offen (Zug/Graubünden/Glarus/Nidwalden-
  analog/Appenzell-AR-Sätze, Obwalden-Referendumsausgang, Neuenburg-Inkrafttreten, Appenzell-
  Innerrhoden-Widerspruch); mit dem Abschluss der 26-Kantone-Erhebung ist ein neuer Themenkomplex
  fällig — Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV) oder Schallschutz
  gegen Aussenlärm (Strasse/Bahn) als Pendant zum haustechnischen Wärmepumpen-Lärmschutz (F65).

## 2026-07-14 — Run 59: Solarpflicht auf 18 von 26 Kantonen erweitert (Uri/Zug/Schwyz/Neuenburg) — Schwyz als zweiter JANS-Fokuskanton geklärt: keine kantonale Zusatzpflicht
- **Run-Report** `outputs/2026-07-14_energie-run59.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, Fortsetzung des Solarpflicht-
  Themenkomplexes aus Run 56-58.
- **Solarpflicht ergänzt um vier Kantone:** **Schwyz** — der zweite JANS-Fokuskanton neben
  Zürich — hat KEINE kantonale Solarpflicht: eine Motion (Kälin, FDP) wurde vom Kantonsrat am
  22.10.2025 mit 50:45 Stimmen abgelehnt, obwohl der Regierungsrat sie ursprünglich befürwortete;
  Bauprojekte in Schwyz unterliegen damit nur dem Bundesminimum (300 m²). **Uri** zeigt eine
  Kehrtwende: eine strengere 100-m²-Verordnung wurde vom Volk am 22.9.2024 mit über 64 % Nein
  verworfen, die daraufhin erarbeitete 300-m²-Teilrevision (= Bundesminimum) am 8.3.2026 mit
  75 % Ja angenommen (Inkrafttreten voraussichtlich Herbst 2026). **Zug** verschärft klar: seit
  1.1.2023 gilt eine Eigenstromerzeugungspflicht für alle Neubauten ohne Flächenschwelle
  (MuKEn-2014-Modul E). **Neuenburg** befindet sich noch in Gesetzesrevision (15 W/m² SRE
  vorgesehen), noch nicht in Kraft →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md` (Bauherren-Transfer um Schwyz-Fokus geschärft), FAQ
  **F66** ergänzt, Status bleibt emerging (18/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D37),
  `wiki/QUESTIONS.md` (E48 neu, E-S1-Zähler auf fünfzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 60:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **15 Läufen**
  spruchreif — braucht Raphaels Entscheidung; 8 weitere Kantone offen (Basel-Landschaft-
  Vertiefung, Jura, Freiburg, Glarus, Nidwalden, Obwalden, Appenzell AR/AI); neue
  Themenkomplex-Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV) oder
  Schallschutz gegen Aussenlärm (Strasse/Bahn); Hinweis auf Rule 260713 (Wettbewerbs-DNA als
  MacBook-Pro-Token-Fokus, energie-training künftig 1x täglich statt 3x täglich).

## 2026-07-14 — Run 58: Solarpflicht auf 14 von 26 Kantonen erweitert (Waadt/Genf/Tessin/Solothurn/Wallis/Schaffhausen) — Register einer unterbrochenen Vorgänger-Session nachgeführt
- **Run-Report** `outputs/2026-07-14_energie-run58.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche.
- **Ausgangslage:** eine vorangegangene Sitzung hatte die Recherche zu sechs weiteren Kantonen
  bereits im Destillat `destillate/solarpflicht-national-mantelerlass-kantone.md` abgelegt (bis
  01:16 Uhr, per nas-selfcommit gesichert), aber Themenartikel, FAQ, Register und Run-Report
  nicht mehr fertiggestellt (Session-Abbruch). Dieser Lauf hat die Recherche verifiziert und die
  Registerpflege nachgeholt, statt die Web-Recherche zu wiederholen.
- **Solarpflicht ergänzt um sechs Kantone:** Waadt (LVLEne, ab ca. 2027, 20 % Strombedarf +
  automatische Pflicht bei Dachsanierung — strenger als Bern), Genf (seit 1.9.2025, Volk 84,3 %
  Ja, keine Flächenschwelle, alle geeigneten Dachflächen, ab 2030 Grossverbraucher), Tessin (seit
  1.1.2024, 10 W/m² EBF/max. 30 kW wie ZH-Modell), Solothurn (seit 1.1.2023, am Bundesminimum),
  Wallis (seit 1.1.2025, 40 % Baufläche + fossiles Heizverbot + Bestandespflicht >500 m² binnen
  25 Jahren), Schaffhausen (Solarinitiative 8.3.2026 mit 60,6 % Nein abgelehnt, drittes
  Ablehnungs-Gegenbeispiel neben Aargau/Bern-Zusatzinitiative) →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** geschärft, Status bleibt emerging
  (14/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D36),
  `wiki/QUESTIONS.md` (E47 neu, E-S1-Zähler auf vierzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 59:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **14 Läufen**
  spruchreif — braucht Raphaels Entscheidung; 12 weitere Kantone offen (Basel-Landschaft-
  Vertiefung, Jura, Neuenburg, Freiburg, Glarus, Uri, Schwyz, Nidwalden, Obwalden, Zug, Appenzell
  AR/AI); neue Themenkomplex-Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV)
  oder Schallschutz gegen Aussenlärm (Strasse/Bahn).

## 2026-07-14 — Run 57: Beide Run-56-Themenkomplexe vertieft (LSV-Planungswerttabelle, drei weitere Solarpflicht-Kantone)
- **Run-Report** `outputs/2026-07-14_energie-run57.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, vertieft beide Run-56-Themenkomplexe
  statt neue zu eröffnen.
- **Wärmepumpen-Lärmschutz ergänzt:** vollständige Anhang-6-LSV-Planungswerttabelle nach
  Empfindlichkeitsstufe (ES I 50/40, ES II 55/45, ES III 60/50, ES IV 65/55 dB(A) Tag/Nacht) —
  zwei unabhängige Web-Reproduktionen zahlengenau deckungsgleich, Fedlex-Primärtext selbst
  JavaScript-gerendert und nicht direkt extrahierbar (Werkzeug-Grenze) →
  `destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md` ergänzt, FAQ F65 geschärft,
  weiterhin established.
- **Solarpflicht ergänzt um drei Kantone:** Aargau bleibt beim Bundesminimum (Grossrats-
  Kommission empfiehlt 9:6 Ablehnung einer eigenen Verschärfung), Basel-Stadt «Solaroffensive»
  weitet die Pflicht auf **Bestandsbauten** >100 m² aus (CHF 1'500/kW Ersatzabgabe, noch nicht
  Gesetz), Graubünden Eigenstromerzeugungspflicht seit 2021 mit Globalstrahlungs-/Minergie-
  Befreiung (exakte Mengenvorgabe offen) → `destillate/solarpflicht-national-mantelerlass-kantone.md`
  ergänzt, FAQ F66 geschärft, Status bleibt emerging (8/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D34-D35), `wiki/QUESTIONS.md` (E45/E46 neu, E-S1-Zähler auf dreizehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 58:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit 13 Läufen spruchreif,
  braucht Raphaels Entscheidung; weitere Solarpflicht-Kantone (Basel-Landschaft-Vertiefung, Waadt,
  Genf, Tessin); LSV-Anhang-6-Vollzugshilfe für weitere Anlagetypen als möglicher neuer Themenkomplex.

## 2026-07-13 — Run 56: Zwei neue Themenkomplexe (WP-Lärmschutz, Solarpflicht national/Kantone) + beide Run-55-Punkte gelöst
- **Run-Report** `outputs/2026-07-13_energie-run56.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche.
- **Wärmepumpen-Lärmschutz (neu):** Cercle Bruit Vollzugshilfe 6.21 (1.11.2024), vollständig via
  curl+pdftotext gelesen (22 S. inkl. Fallbeispiel Anhang 4). Formel Leq/Lr, Planungswert-Beispiel
  ES II Nacht 45 dB(A) (44 dB(A) erreicht), Vorsorgeprinzip 1 %/3 dB, Massnahmen-Kaskade
  Standort→Modellwahl→baulich → `destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md`,
  Themenartikel `wiki/waermepumpen-laermschutz.md`, FAQ **F65** neu, established.
- **Solarpflicht national + Kantone (neu):** Bund Art. 45a/45b EnG (Mantelerlass) ab 300 m² als
  Minimalstandard; Bern ab 1.1.2026 ohne Schwelle (10 % aGF), Luzern 50 % Dachfläche auch EFH,
  St. Gallen 10 W/m² EBF + Gemeindekompetenz, Basel-Landschaft seit 1.10.2024 →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** neu, emerging.
- **§ 295 PBG jetzt 100 % primärquellen-verifiziert:** amtliche zhlex.zh.ch-PDF (LS 700.1, 96 S.)
  direkt via curl+pdftotext gelesen — Wortlaut Abs. 1+2 wortidentisch mit der Run-55-Fassung
  (ortsplanung.ch) → `destillate/fernwaerme-anschlusspflicht-zh.md` aktualisiert, FAQ F64 geschärft.
- **Blower-Door-CHF-Kosten CH recherchiert, ergebnisoffen:** kein Schweizer Anbieter (Vesica,
  Corak, Innoplan u.a.) nennt Preise; deutsche Vergleichszahl (⌀ 325 Euro netto EFH) bewusst
  nicht übernommen → `destillate/rilumi-minergie-luftdichtheit-n50.md` ergänzt, FAQ F63 geschärft.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D30-D33), `wiki/QUESTIONS.md` (E41/E42 final geschlossen, E43/E44 neu, E-S1-Zähler auf zwölf
  Läufe erhöht), `raw/_INGESTED.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): 5 Querbezuege zu baurecht + normen gesetzt
- [link] `energienachweis-zh.md` → baurecht `baubewilligungsverfahren` (§ 325a PBG Anzeigeverfahren).
- [link] `minergie-standards.md` → baurecht `baubewilligungsverfahren` (Minergie-Vermutung § 4 Abs. 4 BBV I).
- [link] `schallschutz-sia181.md` → normen `sia-181-2006`/REGISTER; ⚠ Ausgaben-Flag: energie fuehrt SIA 181:**2020**, normen-Register noch 2006 (Re-Destillat in normen ausstehend).
- [link] `sommerlicher-waermeschutz.md` → normen `sia-180-2014` (schliesst «Offen»: Rechenverfahren/Grenzwerte).
- [link] `daemmstoffe-lambda.md` → normen `sia-279-2018` (schliesst «Offen»: Bemessungswerte; SIA 2001:2005 zurueckgezogen).
- [link] `u-werte-grenzwerte-ch.md` → normen REGISTER SIA 380/1 (Ausgaben-Abgleich 2009/2016). Keine Widersprueche (Paar normen↔energie: 0). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Run 55: RiLuMi Kap. 4-8 + § 295 PBG Wortlaut — beide Run-54-Themen auf established
- **Run-Report** `outputs/2026-07-13_energie-run55.md`. Kein neues Thema eröffnet, stattdessen
  die beiden Run-54-Prioritätspunkte vollständig abgeschlossen (Primärquelle direkt via curl
  geladen statt WebFetch-Zusammenfassung — deutlich vollständigerer Rohtext).
- **Luftdichtheit:** RiLuMi vollständig (51 S., curl+pdftotext) statt nur S. 1-8. Neu: Konzept-
  Pflichten je Standard/Gebäudetyp, Messzonen-Stichprobenlogik (Tabelle 7), objektspezifischer
  Grenzwert bei Erweiterungen (Formel), Messbericht-Pflichtangaben. **Zusatzfund:** SIA 180:2014
  selbst setzt Luftdichtheits-Grenzwerte für JEDES Gebäude (nicht nur Minergie): Neubau 2,4/1,6,
  Umbau 3,6/2,4 m³/(h·m²) → `destillate/rilumi-minergie-luftdichtheit-n50.md` established, FAQ
  F63 geschärft.
- **Fernwärme-Anschlusspflicht:** § 295 PBG-Wortlaut Abs. 1+2 direkt via ortsplanung.ch verifiziert
  (per curl gegengelesen). Ergebnis: nur **zwei** Absätze (nicht drei wie zunächst vermutet);
  Gesetzestext selbst nennt keine feste 70‑%-Schwelle/Jahreszahl — beide stammen aus dem
  städtischen Vollzugs-Merkblatt → `destillate/fernwaerme-anschlusspflicht-zh.md` established,
  FAQ F64 geschärft.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D28/D29), `wiki/QUESTIONS.md` (E41/E42 geschlossen, E-S1-Zähler auf elf Läufe erhöht).

## 2026-07-13 — Run 54: Zwei neue Themenkomplexe — Luftdichtheit (Blower-Door/Minergie) + Fernwärme-Anschlusspflicht
- **Run-Report** `outputs/2026-07-13_energie-run54.md`. PDF-Inventar bleibt vollständig
  abgearbeitet; statt einer weiteren Vertiefung bestehender Punkte wurden zwei bisher
  **unbelegte** Themenkomplexe recherchiert, um die KB breiter statt nur tiefer wachsen zu lassen.
- **Luftdichtheit Gebäudehülle / Blower-Door-Test:** Primärquelle «Richtlinie Luftdichtheit bei
  Minergie-Bauten (RiLuMi)», Version 2022.1 (Minergie/theCH), S. 1-8 direkt als PDF geladen und
  vollständig per Read-Tool gelesen. Grenzwerte qE50 [m³/(h·m²)]: Minergie Neubau ≤1,2/
  Erneuerung ≤1,6, Minergie-P/-A Neubau ≤0,8/Erneuerung ≤1,6; Messnorm SN EN ISO 9972 (löst
  EN 13829 ab), ±15 % Gesamtmessunsicherheit, Konzeptpflicht schon bei Minergie-Basisstandard →
  `destillate/rilumi-minergie-luftdichtheit-n50.md`, FAQ **F63** neu. Status **established**.
- **Fernwärme-Anschlusspflicht Kt./Stadt Zürich:** § 295 Abs. 2 PBG ZH (Sekundärzitate
  ortsplanung.ch + Baurekursgericht-Praxisübersicht) + Stadt-Zürich-Merkblatt (direkt gelesen).
  Keine generelle Anschlusspflicht, aber Kanton/Gemeinde können sie bei ≥70 % Abwärme/erneuerbar
  + wirtschaftlicher Gleichwertigkeit per Verfügung anordnen (gestützt auf kommunale
  Energieplanung); Stadt Zürich: 8-Jahres-Übergangsfrist bestehende fossile Heizungen →
  `destillate/fernwaerme-anschlusspflicht-zh.md`, FAQ **F64** neu. Status **emerging** — §-295-
  Wortlaut nicht direkt aus zhlex.zh.ch gelesen (nur Sekundärquellen), vor Rechtsfall verifizieren.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D28/D29), `wiki/QUESTIONS.md` (E41/E42), `wiki/BAUHERREN-FAQ.md` (Frontmatter + Changelog-Absatz).
- Meta-Punkt M2 (eigenes Skill `energie`?) bleibt spruchreif, zehnter Vermerk ohne neue Substanz.

## 2026-07-13 — Run 53: Komfortlüftung-WRG-Grenzwerte der Norm SIA 382/1 selbst + BFE-Dimensionierungshilfe
- **Run-Report** `outputs/2026-07-13_energie-run53.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet; Block 1 lief über gezielte Web-Recherche zum verbleibenden Run-52-Prioritätspunkt
  «WRG-Grad zentraler Anlagen numerisch».
- **suissetec-Merkblatt SIA 382/1 (Nov. 2025) diesmal vollständig lokal gelesen** (per curl
  heruntergeladen + pdftotext, 12 S., vorher nur eine Web-Fetch-Zusammenfassung ohne
  Tabellenwerte): offizielle Norm-Grenzwerte für die Wärmerückgewinnung (Tab. 2, Ziff. 5.7.3.1)
  — Temperatur-Bruttoeffizienz **73 %** (70 % bei Kreislaufverbundsystemen), Feuchte-
  Bruttoeffizienz **50 %** (Zielwert 60 %) — sowie IDA-Kategorien für den Aussenluft-
  Volumenstrom pro Person (Tab. 1: 29/57/18 m³/h) und Raumluftfeuchte-Grenzen (30-62 %, Ziff.
  2.2.6.1) → `destillate/komfortlueftung-wrg-sia382-luftwechsel.md` von emerging auf
  **established** gehoben.
- **Neue Quelle: BFE «Komfortlüftung — Dimensionierungshilfe, Teil 1: Allgemein»**
  (pubdb.bfe.admin.ch, 9 S., vollständig gelesen) — praxisnahe Faustregeln (Zuluft 30 m³/h je
  Zimmer, Abluft Küche/Bad 40 + WC 20 m³/h, WRG je Wärmetauscher-Bautyp Gegenstrom/Rotation
  ~80 % vs. Kreuzstrom 50-60 %, Schallgrenze 25 dBA) mit explizitem Hinweis, dass ihre Grundlage
  (SIA-Merkblatt 2023) 2021 zurückgezogen wurde → neues Destillat
  `destillate/bfe-komfortlueftung-dimensionierungshilfe-1.md`.
- **FAQ:** F43 geschärft (Norm-Minimum vs. Minergie-Anforderung, IDA-Aussenluftmengen), F62 neu
  (Faustregel-Frage). Themenartikel `wiki/komfortlueftung.md` ergänzt.
- **Uf-Werte SZFF** (Run-52-Zweitkandidat) dritter Suchversuch erneut ergebnislos — als
  QUESTIONS-Eintrag E40 dokumentiert, kein neuer Fund.
- **Register:** `destillate/INDEX.md`, `training/pdf-inventar.md` (2 neue Web-Quellen-Zeilen),
  `training/curriculum.md` (D10 geschlossen, D27 neu), `wiki/QUESTIONS.md` (E40 neu, M2-Zähler
  auf neuntes Mal erhöht).

## 2026-07-13 — Run 52: VSE-Branchenempfehlung LEG (BD-LEG) primärquellen-verifiziert
- **Run-Report** `outputs/2026-07-13_energie-run52.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet; Block 1 lief über gezielte Web-Recherche zu einem der drei Run-51-Kandidaten.
- **Primärquelle gefunden und vollständig gelesen:** die amtliche VSE-Branchenempfehlung
  «Lokale Elektrizitätsgemeinschaften (LEG), BD LEG – CH 2025 V2» (VSE/AES, verabschiedet
  27.06.2025, strom.ch/de/media/15458/download) wurde lokal heruntergeladen und komplett (35
  Seiten) per Read-Tool gelesen — bisher war die KB nur auf die EKZ-Umsetzungsseite und
  Sekundärzitate der VSE-Kernaussage gestützt.
- **Ergebnis:** die bisherigen Kernzahlen (40 %/20 %-Netzentgelt-Rabatt, ≥5 %-Produktions-
  verhältnis, keine Solidarhaftung, freie interne Preisbildung) bestätigen sich **zahlengenau**
  aus der Primärquelle. Neu erschlossen: Anschlussleistungsformel + Rechenbeispiel (19,2 kVA),
  Gründungs-Timing (Anmeldeanspruch erst ab 1.1.2026, unter 3-Monats-Frist frühestens aktiv
  1.4.2026), vollständige Speicher-Übergangsregelung (Kap. 8, vier Anwendungsfälle, i.d.R. ohne
  Zusatzzähler) sowie Vergütungs-/HKN-Regeln (Kap. 9-10: LEG-interner Strom ohne separate
  Stromkennzeichnung, trägt automatisch Qualität der LEG-Produktionsanlage).
- **Destillate/Wiki ergänzt:** `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` (Frontmatter auf
  primärquellen-verifiziert established, neue Sektionen Gründung/Speicher/Vergütung+HKN), FAQ
  F33 geschärft, Themenartikel `[[pv-eigenverbrauch-zev]]` ergänzt.
- **Register:** `training/pdf-inventar.md` (neue Web-Quelle), `destillate/INDEX.md`,
  `training/curriculum.md` (D26 neu), `wiki/QUESTIONS.md` (E39 neu, Meta-Zähler auf «achtes Mal»).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **achten Mal in Folge** als spruchreif
  vermerkt (Run 45-52) — keine Mail versendet, nur Vermerk gemäss Vorgabe.

## 2026-07-13 — Run 51: MuKEn-2025-Modul-G established + PV-Rechenbeispiel
- **Run-Report** `outputs/2026-07-13_energie-run51.md`. PDF-Inventar weiterhin vollstaendig
  abgearbeitet; kein neues PDF im SharePoint-Ordner gefunden.
- **Verifikation statt neuer Fund:** die Minergie/ecobau-Methodik-Primärquelle «Berechnungsmethodik
  Grenzwerte THGE in Erstellung» (12.09.2023) wurde lokal per Read-Tool aus dem PDF gelesen (keine
  Web-Fetch-Zwischenstufe) und bestätigt die D19/E34-MuKEn-2025-Modul-G-Zahlen **zahlengenau**
  (Basisgrenzwerte 12,4-19,9 kg CO₂-eq/m²EBF·a, unbeheizt 5,5, Zuschläge Erdsonde +0,3/PV +7,1/
  Solarthermie +5,6) — Status auf **established** gehoben. Zusätzlich das bisher fehlende
  Rechenbeispiel übernommen: PV-Zuschlag für 65 m² Panelfläche/42 % Eigenverbrauch/175 m² EBF =
  **1,72 kg CO₂-eq/m²EBF·a**.
- **Destillate/Wiki ergaenzt:** `[[muken-2025-modul-g-co2-grenzwerte]]` (Verifikationsstand +
  Rechenbeispiel-Sektion, Status established), FAQ F47 geschärft.
- **Register:** `training/pdf-inventar.md` (neue Web-Quelle), `destillate/INDEX.md`,
  `training/curriculum.md` (D25 neu), `wiki/QUESTIONS.md` (E34 aktualisiert, E38 neu).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **siebten Mal in Folge** als spruchreif
  vermerkt (Run 45-51) — der Loop kann diese Entscheidung nicht selbst treffen, braucht eine
  explizite Antwort von Raphael in einer interaktiven Session.

## 2026-07-13 — Run 50: LEG-Rp/kWh-Marktbeispiel ergaenzt + M2-Entscheid zum 6. Mal eskaliert
- **Run-Report** `outputs/2026-07-13_energie-run50.md`. PDF-Inventar weiterhin vollstaendig
  abgearbeitet; kein neues PDF im SharePoint-Ordner gefunden.
- **Neuer Fund (kein Sackgassen-Wiederholung):** LEG-Preisbildung ist laut VSE-Branchenempfehlung
  frei waehlbar; zwei nicht-amtliche Sekundaerquellen (gwa-energie.ch VNB-Kostenbeispiel + upgrid.ch
  Marktrechnung) liefern eine plausible Groessenordnung: 12-15 Rp./kWh LEG-Gemeinschaftsstrom vs.
  ~7 Rp./kWh Referenz-Einspeiseverguetung vs. 27-30 Rp./kWh Netzstrom, 30-kWp-MFH-Beispiel ca.
  CHF 600/Jahr Mehrertrag. Explizit als Marktbeispiel markiert, nicht als amtliche Vorgabe.
- **Destillate/Wiki ergaenzt:** `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` (neue Sektion
  "Konkrete Rp/kWh — Marktbeispiele"), FAQ F33 geschaerft, `[[pv-eigenverbrauch-zev]]` ergaenzt.
- **Register:** `training/curriculum.md` (D24 neu, D6-Offenpunkt geschaerft), `wiki/QUESTIONS.md`
  (E37 neu).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **sechsten Mal in Folge** als spruchreif
  vermerkt (Run 45-50) — der Loop kann diese Entscheidung nicht selbst treffen, braucht eine
  explizite Antwort von Raphael in einer interaktiven Session.

## 2026-07-13 — Run 49: zwei Recherche-Sackgassen ehrlich geschlossen (kein neuer Fund)
- **Run-Report** `outputs/2026-07-13_energie-run49.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet, keine neuen PDFs im SharePoint-Ordner seit letzter Inventarpflege gefunden.
- **Sackgassen aus Run 48 geprüft und geschlossen** (kein neuer Fund, aber verhindert künftige
  Doppel-Recherche): Empa-Projekt «DemoUpCARMA» betrifft Beton-Carbonatisierung statt
  Sanieren-vs-Neubau; Uni-Bern-Foliensatz «Sanierung oder Ersatzneubau?» (Lenel) ist bildbasiert
  ohne Zahlentext; `sia2060online.ch` per WebFetch bestätigt als reines interaktives JS-Tool ohne
  auslesbare Beispielrechnung (Werkzeug-Grenze wie Kantonsrat ZH).
- **Destillate ergänzt (kein Statuswechsel):** `[[graue-energie-sanieren-vs-neubau-amortisation]]`,
  `[[sia-2060-kosten-ladeinfrastruktur-vertiefung]]` — beide bleiben `emerging`, Kernfragen
  weiterhin ehrlich unbelegt.
- **Register:** `training/curriculum.md` (D23 neu), `wiki/QUESTIONS.md` (E36 neu).
- **Uf-Werte-Recherche (SZFF)** ohne neuen Fund wiederholt — keine Änderung an
  `[[uf-werte-rahmenmaterial-grobuebersicht]]` vorgenommen.
- **Meta-Hinweis:** M2 (Skill-`energie`-Entscheid) zum fünften Mal in Folge als «spruchreif»
  vermerkt (Run 45–49), weiterhin ohne Entscheidung.

## 2026-07-13 — Run 48: Synthese der 5 parallelen Vertiefungen (FAQ/Register)
- **Run-Report** `outputs/2026-07-13_energie-run48.md` fasst die 5 parallel gelaufenen
  Vertiefungs-Recherchen dieses Laufs zusammen (MuKEn-2025-Modul-G, graue-Energie-Amortisation,
  Strohdämmung, SIA-2060-Kosten, g-Werte Verglasung — siehe die vier folgenden Einzel-Einträge
  unten, von den jeweiligen Recherche-Agenten selbst protokolliert).
- **BAUHERREN-FAQ.md geschärft:** F9 (graue Energie/Sanieren-vs-Neubau, neu: keine belegte
  CH-Jahreszahl), F34 (Naturdämmstoffe, neu: Stroh-Bemessungswert/Brandschutz/Feuchte im Detail),
  F35 (Fenster, neu: g-Werte-Tabelle je Verglasungstyp), F39 (E-Mobilität, neu: SIA-2060-
  Primärquelle jetzt bestätigt), F47 (MuKEn 2025, neu: konkrete Modul-G-Grenzwerte).
- **Register nachgeführt:** `training/curriculum.md` (D19–D22 + SIA-2060-Vertiefung neu),
  `wiki/QUESTIONS.md` (E32–E35 neu, E12 Naturdämmstoffe weitgehend geschlossen), `destillate/INDEX.md`
  (2 fehlende Zeilen nachgetragen: Strohdämmung, graue-Energie-Amortisation).
- **Meta-Hinweis:** M2 (Skill-`energie`-Entscheid) wird zum vierten Mal in Folge (Run 45/46/47/48)
  als «spruchreif» vermerkt, ohne dass eine Entscheidung erfolgt ist — Empfehlung an Raphael, dies
  in einer interaktiven Session einmal explizit zu entscheiden statt weiter nur zu protokollieren.

## 2026-07-13 — Neues Destillat: g-Werte je Verglasungstyp (2-fach/3-fach/Sonnenschutzglas)
- **Neues Destillat `[[g-werte-verglasungstypen-ch]]`:** schliesst den in
  `[[fenster-verglasung-uw-g-wert]]` offen geführten Punkt «konkrete g-Werte je Verglasungstyp»
  orientierend. Werte: Zweifach-Wärmeschutzglas g ~0,58–0,62 (Flachglas Schweiz vetroTherm
  1.0/1.1) bzw. DE-Bandbreite 0,60–0,75; Dreifachglas Standard g ~0,61 (vetroTherm G Plus Trio)
  bzw. DE-Bandbreite 0,50–0,60; Sonnenschutzglas (vetroSol A-Typen/Trio) g 0,17–0,37 je nach
  Beschichtungsstärke. Der bereits primär belegte g_tot mit aussenliegendem Sonnenschutz
  (0,10–0,15, EN-102) bleibt der Zielwert für den Sommernachweis.
- **Quellenqualität bewusst als `needs-verification` markiert:** Direktabruf der flachglas.ch-
  Produktseiten lieferte nur eine Platzhalterseite (Website im Umbau); die Zahlen stammen aus der
  Suchmaschinen-Zusammenfassung des zuvor indexierten Seiteninhalts, nicht aus eigenem
  Volltext-Lesen. SZFF-Energieetikette-Faktenblatt und energie-umwelt.ch-Seite lieferten keine
  Typen-Tabelle (nur Definition + ein Beispielwert g=0,55).
- **`[[fenster-verglasung]]`** (Wiki) im Offen-Abschnitt und den Frontmatter-Links ergänzt.
- Output: kein separater `outputs/`-Report (Direktauftrag ohne KB-weite Frage), Ergebnis lebt
  direkt im neuen Destillat.

## 2026-07-13 — Vertiefung SIA-2060-Kosten Ladeinfrastruktur: Primärquelle jetzt gelesen, keine dritte unabhängige Quelle gefunden
- **Neues Destillat `destillate/sia-2060-kosten-ladeinfrastruktur-vertiefung.md`:** vertieft den in
  `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]` offen gelassenen Punkt «SIA-2060-Kostentabelle nur
  aus Sekundärzitaten, Primär-PDF bildbasiert nicht auslesbar».
- **Durchbruch:** Das Kanton-ZH-Baudirektion-Infoblatt (zh.ch) liess sich diesmal per `pdftotext -layout`
  vollständig als Text extrahieren (statt WebFetch-HTML-Konvertierung) — Primärquelle jetzt im Volltext
  gelesen, datiert **13. Oktober 2020**, Herausgeber AWEL (IBG Engineering AG Winterthur). Bestätigt die
  bisherige Tabelle **zahlengenau**: A CHF 65/Wohnung, B CHF 180, C1 CHF 350, C2 CHF 400, D CHF 3'100 je
  E-Parkplatz (Gewerbebau separat: A 45/B 250/C1 320/C2 380 je 100 m², D gleich 3'100).
- **Echte dritte, unabhängige Quelle mit eigener Kostentabelle NICHT gefunden** trotz Prüfung von 6
  weiteren Stellen (EnergieSchweiz/BFE-Leitfaden «laden-punkt.ch» V2.0 Dez. 2025, Energie 360°,
  Migrol-Blog, SIA-2060-Online-Rechner, Referat Vogelsang/Energieagentur SG, SIA-Shop) — alle verweisen
  nur auf den kostenpflichtigen Rechner/die Norm, ohne eigene Zahlen zu publizieren. Die bisherige
  Zweitquelle (Härz AG) nennt keine eigene Herleitung und übernimmt vermutlich dieselbe ZH-Zahlenbasis.
- **Status bewusst weiterhin `emerging`** (nicht `established`), da die strenge Regel 2 methodisch
  unabhängige Quellen verlangt — hier liegt nur 1 Primärquelle + 1 nicht-eigenständige Zweitquelle vor.
  `e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md` aktualisiert (Frontmatter + Offene Punkte + Backlink).

## 2026-07-13 — Vertiefung Strohdämmung (Bemessungswert/Brandschutz/Feuchte)
- **Neues Destillat `destillate/strohdaemmung-bemessungswert-brandschutz.md`:** vertieft den in
  `[[naturdaemmstoffe-kennwerte-sommerhitzeschutz]]` und `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]`
  offen gelassenen Punkt «Stroh eigene belegte Quelle» (Bemessungswert, VKF, Feuchte).
- **λ-Bemessungswert:** 0,049 W/(m·K) allgemein (FASBA/ETA-17/0247), richtungsabhängig 0,052 W/(m·K)
  quer zur Halmrichtung (Standard-Einbau) vs. 0,080 W/(m·K) in Halmrichtung (BauNetz Wissen,
  Sekundärzitat) — Diskrepanz als offener Punkt vermerkt.
- **Brandschutz:** Grundlage ist die deutsche abZ Z-23.11-1595 (DIBt 2014) + ETA-17/0247, Feuerwiderstand
  30/90 Minuten verputzt via AbP MPA Braunschweig nach DIN 4102. **Kein CH-VKF-Registereintrag für
  Stroh/Baustroh auffindbar** (bsronline.ch Registersuche geprüft) — ehrlich als offene CH-Lücke
  dokumentiert, nicht erfunden; nächster Schritt wäre eine direkte Anfrage bei der VKF.
- **Feuchte:** µ ≈ 2, Grenzfeuchte ≤ 15 % beim Einbau (Sekundärquelle, nicht im Original verifiziert),
  Nachweis über WUFI-Bio statt Glaser-Verfahren (DIN 4108), Bauzeit-Schutz vor Schlagregen als
  Hauptrisiko statt Dauerzustand-Risiko.
- Alle Werte klar als **DE/EU-Herkunft** gekennzeichnet (Echo-Schutz) — status `emerging`, da keine
  CH-Primärquelle für die zentrale VKF-Frage. `wiki/naturdaemmstoffe.md` verlinkt und ergänzt.

## 2026-07-13 — Run 48: MuKEn-2025-Modul-G-Grenzwerte gefunden (Lauf 47 hatte Negativbefund gemeldet)
- **Neues Destillat `[[muken-2025-modul-g-co2-grenzwerte]]`:** Auf gezielte Nachfrage (Lauf 48)
  wurde der MuKEn-2025-Volltext (Art. 1.39, Basismodul Teil G) über einen alternativen Web-Fetch-
  Reader (statt direkter WebFetch, der bei binären PDF-Inhalten zuvor scheiterte) doch erschlossen:
  **Basisgrenzwerte GW_EBF 12,4-19,9 kg CO₂-eq/m²EBF·a** je nach Gebäudekategorie (I Wohnen MFH
  12,4 ... VIII Spitäler 19,9), **GW_(GF-EBF) 5,5 kg CO₂-eq/m²·a** für unbeheizte Flächen (alle
  Kategorien gleich), plus Zuschläge Erdsonde (+0,3), PV (+7,1/m² Panelfläche), Solarthermie
  (+5,6 kg CO₂-eq/m² Kollektorfläche). Zweimal unabhängig abgefragt, identische Werte; Google-
  Suchindex bestätigt 12,4 kg unabhängig. Status bewusst `emerging` (Web-Fetch-Extraktion statt
  direktem PDF-Lesen) — nächster Schritt: lokale Textextraktion des Original-PDF zur Hebung auf
  `established`.
- **`[[muken-2025-verabschiedet]]` ergänzt** um Verweis auf das neue Detail-Destillat.
- Output: kein separater `outputs/`-Report (Direktauftrag ohne KB-weite Frage), Ergebnis lebt
  direkt im neuen Destillat.

## 2026-07-13 — Run 47: GEAK-Handänderungspflicht (4 Kantone) + Batteriespeicher-Amortisation (Marktangabe) ergänzt; 3 Negativbefunde dokumentiert
- **PDF-Inventar weiterhin vollständig abgearbeitet** (siehe Run 46) — Block 1 (Transfer) läuft
  daher wie in den letzten Läufen auf Web-Themen aus dem Curriculum-Backlog.
- **`[[geak-gebaeudeenergieausweis-kantone]]` ergänzt:** Kantonsliste GEAK-Pflicht bei Handänderung
  gefunden (Sekundärquelle, keine amtliche geak.ch/EnDK-Primärquelle) — **4 Westschweizer Kantone
  Freiburg (seit 2013, auch Neubau), Waadt, Neuenburg (3 Anlässe: Handänderung/Heizungsersatz/
  Baubewilligung), Jura**; Deutschschweiz inkl. ZH/SZ hat aktuell keine Pflicht. Schliesst den in
  E16/Curriculum D9 offen geführten Punkt orientierend (nicht mit Gesetzesartikel-Nummern). FAQ F36
  geschärft, Status weiterhin established (Kernartikel), Ergänzung selbst als Sekundärquelle markiert.
- **`[[batteriespeicher-heimspeicher-pv-ch]]` ergänzt:** Amortisationszeit als Marktangabe — 3
  unabhängige kommerzielle CH-Solarratgeber (energyunlimited.ch, runer-solar.ch, swsolar.ch)
  übereinstimmend: Speicher-Mehrpreis amortisiert in **ca. 10–14 Jahre**, mit Wärmepumpe/E-Auto
  **8–9 Jahre**. Explizit als Marktangabe gekennzeichnet (Fachverbände nennen bewusst keine harte
  Zahl) — schliesst E18 orientierend ab. FAQ F38 geschärft.
- **Drei Negativbefunde sauber dokumentiert** (kein Ergebnis ≠ Rechercheversagen):
  1. **MuKEn-2025-Modul-G-Grenzwerte** (konkrete kg CO₂-eq/m²·a): espazium.ch-Artikel erneut geprüft,
     nennt weiterhin keine Zahlen — Primärdokument offenbar noch nicht frei publiziert.
  2. **Uf-Werte je Rahmenmaterial systematisch:** zwei weitere Quellen liefern nur grobe DE-Bandbreiten
     (Holz 1,3–1,8 / Holz-Alu 0,7–1,1 / Kunststoff 0,9–1,3 / Alu 1,0–1,4 W/(m²K)) — bewusst NICHT ins
     Destillat übernommen, da DE-Sekundärquellen statt CH/SZFF-amtlich (Echo-Schutz).
  3. **Aktuellere JAZ-Feldstatistik (nach 2019):** ein vermeintlich neuer OST-Buchs-PDF-Treffer erwies
     sich als dasselbe bereits destillierte Primärdokument (`[[wpz-buchs-feldmessung-jaz-2016-2019]]`)
     unter anderem Host — keine echte Aktualisierung gefunden.
- **Register nachgeführt:** `training/curriculum.md` (D9/D11), `wiki/QUESTIONS.md` (E16/E18/E26/E3/E-F).
- Output: `outputs/2026-07-13_energie-run47.md`.

## 2026-07-13 — Run 46: ZH-Solarpflicht-Destillat ergänzt (RRB-Nummern + politische Reaktionen); Kantonsrats-Geschäftsnummer bleibt Werkzeug-Grenze
- **PDF-Inventar weiterhin erschöpft** (`find -newer` erneut bestätigt: kein neuer Zeitstempel in
  `PL - 04 Energie` seit Run 41). Block 1 (Transfer) daher wie in Run 42-45 nicht durchführbar.
- **Zweiter gezielter Rechercheversuch** zum in Run 45 offen gebliebenen Punkt (Kantonsrats-
  Geschäftsnummer/Beratungsstand der ZH-Solarpflicht-Vorlage): `kantonsrat.zh.ch` liefert per
  WebFetch strukturell nur die Navigation, keine Geschäftsdetails (Single-Page-App) — bestätigt als
  Werkzeug-Grenze, keine Recherchelücke. Stattdessen über die zh.ch-Medienmitteilung + Tages-
  Anzeiger/20-Minuten-Presseecho zwei neue konkrete Fakten gefunden: die **Regierungsratsbeschluss-
  Nummern RRB Nr. 1229/2025 (Solarpflicht) und RRB Nr. 1231/2025 (Langzeitspeicher)**, beide
  06.01.2026, sowie die politischen Erstreaktionen **SP/Grüne** («begrüssen grundsätzlich, gehen
  aber nicht weit genug») neben der bereits bekannten HEV-Position.
- **Kein neues Destillat** — bestehendes `zh-energiegesetz-revision-solarpflicht-2026.md` (Status
  weiterhin `emerging`) um Frontmatter (RRB-Nummern), Verfahrensstand-Abschnitt (Parteireaktionen)
  und Offene-Punkte-Abschnitt (Werkzeug-Grenze explizit benannt) ergänzt.
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F61 präzisiert), `wiki/QUESTIONS.md` (E31
  ergänzt), `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`.
- **Ehrlich zum Loop-Zustand (wiederholt aus Run 44/45):** das PDF-Inventar ist seit Run 41 leer,
  und auch die Web-Nachträge zu offenen Curriculum-Punkten werden zunehmend granularer (heute:
  zwei Beschlussnummern + eine Partei-Position, kein neuer Sachinhalt). Die Empfehlung an Raphael
  bleibt unverändert und wird hier zum dritten Mal in Folge wiederholt: Meta-Entscheidung **M2**
  (eigener Skill `energie`?) treffen und/oder den Loop-Takt zurücknehmen, bis neues Rohmaterial
  (reale PL-04-PDFs, JANS-Projekte mit Energiethemen) anfällt.

## 2026-07-13 — Run 45: ZH-Energiegesetz-Revision 2026 (Solarpflicht Dächer >300 m²) neu belegt (FAQ F61)
- **PDF-Inventar weiterhin erschöpft** (`find -newer` bestätigt: kein neuer Zeitstempel in
  `PL - 04 Energie` seit Run 41). Block 1 (Transfer) daher wie in Run 42-44 nicht durchführbar.
- **Web-Recherche zum offenen Curriculum-Punkt B4** («konkreter ZH-Umsetzungsstand MuKEn 2025»):
  Regierungsrat-Botschaft vom 06.01.2026 an den Kantonsrat gefunden — Solarpflicht für Dächer
  >300 m² (vollflächig, Neubau ab Erstellung/Bestand bei Dachsanierung, 4 Befreiungsgründe) +
  Langzeitspeicher-Förderauftrag an Netzbetreiber (Abgabe max. 0,5 Rp./kWh). Wichtige Präzisierung:
  das ist eine **eigenständige, engere ZH-Vorlage**, nicht die volle MuKEn-2025-Übernahme
  (Fossilverbot/20-W/m²-Pflicht/Graue-Energie-Modul Teil G bleiben für ZH weiterhin unbeschlossen).
- **1 Destillat neu (Status `emerging`):** `zh-energiegesetz-revision-solarpflicht-2026` — Quelle
  Medienmitteilung zh.ch + Presseecho (20 Minuten/NZZ/pv magazine); Verfahrensstand ausdrücklich
  als Botschaft (noch kein Gesetz) markiert, Kantonsrats-Geschäftsnummer/Inkrafttreten als offen
  vermerkt (Kantonsrat-Website lieferte beim Abruf nur Navigationsstruktur, kein Geschäftsdetail).
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (neue **F61**), `destillate/muken-2025-verabschiedet.md`
  (Offene-Punkte-Sektion präzisiert), `training/curriculum.md` (B4), `wiki/QUESTIONS.md` (E-D6 + neue
  **E31**), `destillate/INDEX.md`.
- **Ehrlich zum Loop-Zustand:** wie in Run 44 vermerkt bleibt die Grenznutzen-Kurve pro Lauf flach —
  dieser Fund war die erste genuin neue, hochrelevante Information seit mehreren Läufen, aber
  vergleichbare Web-Recherchen werden seltener fündig. Die Empfehlung aus Run 44 (Meta-Entscheidung
  M2 «eigener Skill `energie`?» treffen und/oder Loop-Takt zurücknehmen, bis neues Rohmaterial
  anfällt) bleibt unverändert an Raphael offen.

## 2026-07-13 — Run 44: Uf-Werte je Rahmenmaterial (grobe, nicht amtliche Orientierung) ergänzt (F35 geschärft)
- **PDF-Inventar weiterhin erschöpft**, kein neues Rohmaterial in `PL - 04 Energie` (geprüft: neuestes
  Dateidatum 2026-06-11, kein neuer Zeitstempel seit Run 41/42/43).
- **Web-Recherche zu den beiden von Run 43 benannten Restpunkten:** (1) numerische Uf-Werte je
  Rahmenmaterial — SZFF-Primärquelle (Faktenblatt pubdb 7731, per WebFetch+Read vollständig als PDF
  gelesen) bestätigt, dass es **keine öffentliche Material-Tabelle** gibt, nur ein Einzelzertifikat-
  Beispiel (Uf 1,1 W/(m²·K)); (2) eine einzelne Web-Sekundärquelle (bawos.ch) liefert eine grobe
  Bandbreite für Holzrahmen (Uf ca. 1,3–1,8 W/(m²·K)).
- **1 Destillat neu (Status `speculative`, bewusst NICHT höher):** `uf-werte-rahmenmaterial-grobuebersicht`
  — dokumentiert die Bandbreite mit deutlichem Vorbehalt (Einzelquelle, undatiert, kein Ersatz für den
  Hersteller-/SZFF-Wert des gewählten Produkts).
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F35 um Uf-Grobwert-Hinweis ergänzt, keine neue
  Nummer), Themenartikel `wiki/fenster-verglasung.md` (Sektion «Offen»), `wiki/QUESTIONS.md` (E3),
  `destillate/INDEX.md`.
- **Ehrlich:** DE-Quellen mit g-Wert-Tabellen (fensterblick.de, sanier.de) bewusst NICHT übernommen
  (Regel: keine ungeprüften DE-Werte als CH-Werte). Die systematische amtliche Uf-/g-Wert-Matrix je
  Material bleibt eine Lücke, die nur über Hersteller-/SZFF-Datenblätter (projektbezogen) schliessbar
  ist — keine weitere Web-Suche versprechend.
- **Meta-Hinweis für Raphael:** Das PDF-Inventar ist seit Run 41 (3 Tage / >10 Läufe) vollständig
  abgearbeitet; die verbliebenen offenen Punkte sind zunehmend eng/herstellerspezifisch und liefern nur
  noch marginalen neuen Bauherren-Nutzen pro Lauf. Die Meta-Entscheidung **M2** (eigener Skill `energie`?)
  aus `curriculum.md` steht weiterhin aus — mit 90 Destillaten und 60 Kernfragen ist die KB reif dafür.
  Empfehlung: nächstes Mal mit Raphael die Rücktaktung auf Sparbetrieb bzw. den Skill-Entscheid klären,
  statt weiter im Stundentakt nach immer kleineren Lücken zu suchen.

## 2026-07-13 — Run 43: Fenster-Energieetikette-Klassengrenzen + GEAK-Kosten belegt (F35/F36 geschärft)
- **PDF-Inventar bleibt erschöpft** (seit Run 41 vollständig `[x]`/`[-]`) — kein neues Rohmaterial in
  `PL - 04 Energie`. Statt PDF-Transfer wurden zwei konkrete, in Run 42 benannte Web-Vertiefungspunkte
  bearbeitet.
- **1 Destillat aktualisiert, auf `established` gehoben:** `fenster-energieetikette-fea-bfe` — das
  BFE/EnergieSchweiz-Faktenblatt (pubdb 7731) liess sich diesmal vollständig als Text lesen (vorheriger
  Zugriff 2026-07-08 war bildbasiert). Damit primärquellenbelegt: **exakte Uw,eq-Klassengrenzen A–G**
  (A < 0, B 0–0,1, C 0,1–0,2, D 0,2–0,3, E 0,3–0,4, F 0,4–0,8, G ≥ 0,8 W/(m²·K)), die Bilanzformel
  (Uw,eq = [Hw − Hs]/Aw) und ein Musterbeispiel (Uw 1,1/Ug 0,6/g 60 %/ψg 0,03 → Uw,eq −0,08 → Klasse A).
- **1 Destillat neu:** `geak-kosten-efh-mfh` (Sekundärquelle immoverkauf24.ch, emerging — geak.ch/EnDK
  publiziert bewusst keine Preise): GEAK EFH CHF 450–650, GEAK MFH CHF 500–800, GEAK Plus EFH
  CHF 1'400–2'100, Zertifizierungsgebühren CHF 80/190.
- **FAQ F35 + F36 geschärft** (kein neues F-Nummer, bestehende Antworten ergänzt); Themenartikel
  `fenster-verglasung.md` und `geak-gebaeudeenergieausweis.md` mit den neuen Zahlen aktualisiert;
  `wiki/QUESTIONS.md` (E3, E16) und `destillate/INDEX.md` nachgeführt.
- **Ehrlich offen:** GEAK-Kosten stützen sich auf nur eine kommerzielle Sekundärquelle (Status bleibt
  emerging); numerische g-Werte/Uf je Material bleiben unbelegt (Faktenblatt liefert nur ein
  Musterbeispiel, keine Materialtabelle).
- Report: `outputs/2026-07-13_energie-run43.md`.

## 2026-07-13 — Run 42: SIA 380/1:2016 gegenüber 2009 — Kernänderungen belegt (F60 neu)
- **1 neues Destillat:** `sia-380-1-2016-aenderungen-gegenueber-2009` (Web-Sekundärquellen:
  SIA-Shop-Produktmetadaten + espazium.ch-Fachartikel Mennel/Friedli, 23.03.2017). Status
  emerging — Norm-Volltext nicht gekauft.
- **Kernbefund:** Referenz-Jahresmitteltemperatur neu 9,4 °C (statt 8,5 °C) nach SIA 2028,
  Temperaturkorrektur neu 6 %/K (statt 8 %/K); Gebäudehüllzahl von b-Werten entkoppelt;
  Bauteilanforderungen an MuKEn 2014 verschärft; neues Lüftungs-Berechnungsmodell; 16
  Himmelsrichtungen; Umkehrdach-Pauschalzuschlag gestrichen. Methodik (Einzelbauteil-/
  Systemnachweis) unverändert.
- **Ehrlich offen:** konkrete neue Q_H,li0/ΔQ_H,li-Zahlenwerte je Nutzungskategorie bleiben ohne
  gekauften Norm-Volltext unbelegt — Sekundärquellen-Grenze transparent ausgewiesen.
- **FAQ F60 neu**; Themenartikel `u-werte-grenzwerte-ch.md` ergänzt; `wiki/QUESTIONS.md` (E-D8)
  und `training/curriculum.md` (A2) nachgeführt. Grund: PDF-Inventar seit Run 41 vollständig
  abgearbeitet, Web-Vertiefung offener Punkte (Option 1 aus Run-41-Empfehlung) fortgesetzt.
- Report: `outputs/2026-07-13_energie-run42.md`.

## 2026-07-13 — Run 41: Wärmebrücken Gruppe 6.2 Fassadenanker vollständig (22 Systeme, F58 geschärft) — PDF-Inventar Priorität 1+2 abgeschlossen
- **1 Destillat erweitert (kein neues, INDEX bleibt bei 87 total):**
  `waermebrueckenkatalog-bfe-stuetzen-fassadenanker` — Gruppe 6.2 von 2 auf alle 22
  Ausführungsvarianten (U1-U22, S. 117-126 BFE-Primärquelle vollständig gelesen) erweitert.
  22 marktübliche Fassadenanker-Systeme: Holzlattung, Stahl-/Alu-Unterkonstruktion mit/ohne
  thermische Trennung, Chrom-Nickel-Halteanker, ATK 100/101 Minor, ATK 601, UK 1000 (CrNi/Alu),
  Halfen SUK, Clickpress L-/T-Profil, A-PL, UK-System WSZ.
- **Kernbefund:** thermische Trennung dominiert über Ankermaterial — ohne thermische Trennung
  verdoppelt bis verdreifacht sich der ΔU-Wert-Zuschlag im engen Raster. Die **zwei Extremwerte
  der ganzen Gruppe 6.2**: A-PL ohne thermische Trennung (U20) **+0,57 W/(m²·K)** und Alu-UK
  ohne thermische Trennung (U5) +0,41 W/(m²·K) — beide bei 0,2 m² Raster auf Stahlbeton. Zum
  Vergleich: Holzlattung bleibt unabhängig vom Raster durchgehend bei +0,02-0,03. Chrom-Nickel-
  Stahl-Systeme (U6/U12/U14) und ATK 601 (U11) sind die günstigsten Metallvarianten.
- **FAQ F58 geschärft:** Extremwert +0,57 W/(m²·K) ergänzt, konkreter Bauherren-Rat («nach
  thermischer Trennung fragen» + «grosszügiges Ankerraster wählen» senkt Zuschlag Faktor 5-10).
- **Damit ist der BFE-Wärmebrückenkatalog (2002, 126 S.) vollständig ausgewertet** — schliesst
  den in E27-E29/Run-39-Notiz offen vermerkten letzten Detailpunkt endgültig.
- **PDF-Inventar geschlossen:** die letzten 6 offenen Quellen in `training/pdf-inventar.md`
  (5 FEZ-Kursflyer «ENERGIE VorOrt»/«ENERGIE Events»/Kursprofil/Teilnehmerliste + 1 Rechnung
  Forum Energie Zürich) via Read geprüft — reine Veranstaltungs-/Verwaltungslogistik ohne
  Fachinhalt, als `[-]` markiert statt offen stehen zu lassen. **Priorität 1 und Priorität 2
  des PDF-Inventars sind damit vollständig abgearbeitet** (alle Einträge `[x]` oder `[-]`).
- **Meta-Punkt M2** (eigener Skill `energie`?) als «spruchreif» markiert — Curriculum + QUESTIONS
  empfehlen, das Raphael zur Entscheidung vorzulegen statt weiter aufzuschieben.
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md` (Abschluss-Vermerk),
  `training/curriculum.md` (M2 geschärft), `wiki/QUESTIONS.md` (E30 neu, E-S1 ergänzt),
  `raw/_INGESTED.md` (+2 Zeilen), `wiki/u-werte-grenzwerte-ch.md` (Gruppe-6-Abschnitt erweitert).
- **Report:** `outputs/2026-07-13_energie-run41.md`.

## 2026-07-13 — Run 40: Wärmebrücken Gruppe 6 Stützen/Fassadenanker + Gruppe 2 Geschossdecke/Kellerdecke (F58-F59) — Curriculum A4 wirklich vollständig
- **2 neue Destillate → 87 total:**
  - `waermebrueckenkatalog-bfe-stuetzen-fassadenanker` (emerging) — Gruppe 6.1 Stützen vollständig
    (S. 113-116) + Gruppe 6.2 Fassadenanker Ausschnitt (S. 117-118). Andere Systematik als lineare
    Ψ-Werte: Stützen als punktförmige Wärmebrücke mit **X-Wert in W/K** (Grenzwert 0,30 W/K je
    Durchstossung) — Stahlstütze 0,20-0,37 W/K teils über Grenzwert, Stahlbeton-Stütze nur
    0,05-0,12 W/K; Fassadenanker als **ΔU-Wert-Zuschlag**: Holzlattung nur +0,02-0,03 W/(m²·K),
    Alu mit thermischer Trennung je nach Ankerraster +0,02-0,19 W/(m²·K).
  - `waermebrueckenkatalog-bfe-geschossdecke-kellerdecke` (emerging) — Gruppe 2 vollständig
    (S. 39-44). Grenzwert 0,20 W/(m·K); durchbetoniertes Innenwand-Auflager auf Geschossdecke
    Ψ 0,63-0,89 — **höchster Einzelwert eines Standarddetails im ganzen Katalog** — vs.
    Stahlkorb-Anschluss 0,07-0,15; Wandanschluss Kellerdecke 0,23-0,26/−0,02-0,14;
    Innenwandanschluss Aussenwand 0,11-0,24.
- **BAUHERREN-FAQ 57→59 Kernfragen:** F58 (Fassadenanker + durchstossende Stütze), F59
  (Innenwand-Auflager auf Geschossdecke).
- **Curriculum-Punkt A4 (Wärmebrückenkatalog) von `[~]` auf `[x]` gehoben** — alle sechs
  Hauptgruppen (1 Balkonplatte/Flachdach, 2 Geschossdecke/Kellerdecke, 3 Sockel/Steildach/
  Auskragung, 4 Fensterrahmen/Rollladenkasten, 5 Fensterleibung/-brüstung/-sturz, 6 Stützen/
  Fassadenanker) mindestens einmal zahlenbasiert belegt. **Selbstkorrektur in diesem Lauf:**
  Gruppe 2 war in Run 36-39 übersehen worden, obwohl nie als offen vermerkt — erst der Abgleich
  gegen das Katalog-eigene Inhaltsverzeichnis (S. 5) deckte die Lücke auf, bevor die
  «vollständig»-Meldung fälschlich ohne Gruppe 2 gestanden hätte. Restarbeit nur noch bei Bedarf:
  einzelne Ausführungsvarianten innerhalb der Gruppen (z.B. Gruppe 6.2 Spezialanker
  ATK/Clickpress/Halfen).

## 2026-07-13 — Run 39: Wärmebrücken Flachdach ohne Vordach, Steildach, Auskragung, Rollladenkasten, Fensterleibung/-brüstung/-sturz (F53–F57) — nur noch Gruppe 6 offen
- **5 neue Destillate → 85 total:**
  - `waermebrueckenkatalog-bfe-flachdach-ohne-vordach` (emerging) — Gruppe 3.1 (S. 49-53). Ohne
    Deckendämmeinlage Ψ 0,44-0,60 W/(m·K) — bis 3× Grenzwert 0,20; durchgehende Dämmung über die
    Deckenkante macht den Wert negativ (−0,13 bis −0,16); schon 4-6 cm Stirndämmung genügt.
  - `waermebrueckenkatalog-bfe-steildach-traufe-ort` (emerging) — Gruppen 3.2+3.3 (S. 54-59).
    Kontrastbefund zum Flachdach: bei durchgehender Sparrendämmung liegen ALLE Varianten bei null
    oder deutlich negativ (−0,01 bis −0,16) — der Katalog selbst vermerkt, dass diese Details im
    Wärmedämmnachweis nicht berücksichtigt werden müssen.
  - `waermebrueckenkatalog-bfe-auskragung` (emerging) — Gruppe 3.5 (S. 80-82). Allgemeine
    Bodenauskragung ohne Isokorb-System: Ψ 0,04-0,29 je nach Unterlagsbodendämmung, ab 6 cm meist
    unter Grenzwert 0,20; Mauerfusselement senkt zusätzlich um 0,05-0,07.
  - `waermebrueckenkatalog-bfe-rollladenkasten` (emerging) — Gruppe 4.2 (S. 91-92). Ψ 0,18-0,26,
    knapp unter Grenzwert 0,30 ohne Reserve; Fenstertyp macht kaum Unterschied.
  - `waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz` (emerging) — Gruppen 5.1-5.3
    (S. 94-112). Strengerer Grenzwert 0,10; aussenbündiger Einbau günstigste Position;
    **ungedämmte Fensterbank +0,20 W/(m·K) ist der grösste Einzelfehler im ganzen Katalog**;
    Stahlbetonsturz statt Backstein kostet bis +0,08.
- **BAUHERREN-FAQ 52→57 Kernfragen:** F53 (Flachdachrand ohne Vordach), F54 (Steildach
  Traufe/Ort unkritisch), F55 (Bodenauskragung über Einstellhalle), F56 (Rollladenkasten),
  F57 (Fensterleibung/-brüstung/-sturz).
- **Themenartikel erweitert:** `u-werte-grenzwerte-ch` (fünf neue Wärmebrücken-Abschnitte).
- **Curriculum A4:** alle Gruppen des BFE-Wärmebrückenkatalogs ausser Gruppe 6
  (Stützen/Fassadenanker, Seiten 114/117 bereits bekannt) jetzt belegt.
- **Report:** `outputs/2026-07-13_energie-run39.md`.

## 2026-07-13 — Run 38: Wärmebrücken Flachdach-Vordach + -Brüstung (F51–F52) — Gruppe 1 komplett
- **2 neue Destillate → 80 total:**
  - `waermebrueckenkatalog-bfe-flachdach-vordach` (emerging) — BFE-Wärmebrückenkatalog Gruppe 1.2
    (S. 24-32). Ungedämmtes, durchbetoniertes Vordach Ψ 0,40-0,53 W/(m·K) gg. Grenzwert 0,30
    (1,3-1,8× drüber); mit Dorn-Anschluss (thermisch getrennt statt durchgehende Platte) sinkt der
    Wert auf −0,08 bis 0,04 — praktisch keine Wärmebrücke mehr.
  - `waermebrueckenkatalog-bfe-flachdach-bruestung` (emerging) — Gruppe 1.3 (S. 33-38). Zentraler
    Befund: das Brüstungs-**Material** dominiert stärker als die Dämmung — eine ungedämmte
    Backstein-Brüstung (Ψ 0,02-0,09) liegt bereits unter dem Grenzwert, eine gedämmte
    Stahlbeton-Brüstung (Ψ 0,12-0,26) bleibt in derselben Grössenordnung wie die ungedämmte
    Backstein-Variante.
- **FAQ 50 → 52 Kernfragen:** F51 (Vordach-Wärmebrücke, Materialwahl der thermischen Trennung),
  F52 (Attika-/Brüstungs-Wärmebrücke, Material schlägt Dämmung).
- `u-werte-grenzwerte-ch` um zwei weitere Wärmebrücken-Abschnitte erweitert — mit Balkonplatte
  (1.1), Vordach (1.2) und Brüstung (1.3) ist **Gruppe 1 (Flachdach-Anschlüsse) des
  BFE-Wärmebrückenkatalogs jetzt vollständig belegt**.
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md` (nicht betroffen, ist
  keine PL-04-Quelle), `training/curriculum.md` (A4: Gruppe 1 abgeschlossen, offen nur noch
  Steildach/Stützen/Fassadenanker), `wiki/INDEX.md`, `raw/_INGESTED.md` (+2 Zeilen).

## Verifikations-Stufe (Pflicht seit 12.07.2026)
Beide neuen Destillate bleiben `emerging` trotz Primärquellen-Lektüre: Katalog-Basis 2002/SIA
380/1:2001, nicht gegen die heute geltende Norm-Edition gegengeprüft; nur Teilauszug der jeweiligen
Gruppe gelesen. Grössenordnung/Prinzip (thermische Trennung bzw. Materialwahl als dominanter
Hebel) gilt, exakter Zahlenwert vor einer Baueingabe an aktueller Norm/Software zu verifizieren.

## 2026-07-12 — Run 37: Wärmebrücken Fensteranschluss + Sockel (F49–F50) + MuKEn-2025-Grauenergie-Formel
- **2 neue Destillate → 78 total:**
  - `waermebrueckenkatalog-bfe-fensteranschluss` (emerging) — BFE-Wärmebrückenkatalog Gruppe 4.1,
    Primärquelle (bereits lokal vorhanden) weiter gelesen (S. 83-90). Fenster-Wand-Anschluss Ψ
    0,08-0,36 W/(m·K) gg. Grenzwert 0,30; Aussenanschlag mit Zwischenleibungsdämmung klar am
    besten; Stahlbetonsturz-Malus bis +0,14, mit 6 cm Sturzdämmung auf +0,02 senkbar.
  - `waermebrueckenkatalog-bfe-sockel` (emerging) — Gruppe 3.4 (S. 62-68). Beheizter Keller mit
    reiner Aussendämmung: Dämmtiefe unterhalb UK Kellerdecke entscheidet Faktor 4→1,5 vom
    Grenzwert 0,20 (0 cm Ψ 0,82; 20 cm 0,61; 50 cm 0,42; 80 cm 0,30, bleibt trotzdem drüber).
- **1 bestehendes Destillat präzisiert:** `muken-2025-verabschiedet` — Graue-Energie-Formel
  GWObjekt + relative Grenzwert-Angabe (2-4 kg CO₂-eq/m²·a über Minergie-ECO, ⚠ Sekundärquelle
  ecobau.ch, nicht am EnDK-Original verifiziert), Geltungsbereich Neubau/wesentliche Erneuerung
  ≥50 m² EBF.
- **FAQ 48 → 50 Kernfragen:** F49 (Fensteranschluss-Wärmebrücke), F50 (Sockel/beheizter Keller).
- `u-werte-grenzwerte-ch` um zwei Wärmebrücken-Abschnitte erweitert — die drei häufigsten
  Gebäudeanschlüsse (Balkon/Fenster/Sockel) sind damit mit konkreten Ψ-Werten belegt
  (Curriculum-Punkt A4 weitgehend geschlossen für diese drei Gruppen).
- Methodisch: dieselbe lokal gespeicherte Wärmebrückenkatalog-PDF (Run 36) ohne erneuten Download
  für zwei weitere Detailgruppen wiederverwendet.

## 2026-07-12 — Run 36: MuKEn 2025 + Wärmebrücke Balkonplatte (F47–F48) + Batteriemonitor/SIA-2060-Updates
- **2 neue Destillate → 76 total:**
  - `muken-2025-verabschiedet` (established) — Kantone verabschiedeten am 29.08.2025 die MuKEn 2025;
    noch kein geltendes Recht, Umsetzung 2025–2030. Fossilverbot statt Mindestquote im Neubau,
    PV-Pflicht 20 W/m² EBF (ZH heute 10 W/m²), neues Graue-Energie-Modul (Teil G). Drei unabhängige
    Sekundärquellen (VSE, aeesuisse, energie-cluster.ch) deckungsgleich.
  - `waermebrueckenkatalog-bfe-balkonplatte` (emerging) — BFE-Wärmebrückenkatalog 2002, **Primärdokument
    vollständig gelesen** (curl-Download + Read/PDF-Bildextraktion, da WebFetch bei bildbasierten
    Amts-PDFs scheitert). Durchbetonierte Balkonplatte Ψ 0,6–1,05 W/(m·K) = 2–3× Grenzwert 0,30;
    Stahlkorb 0,20–0,26; Dorne 0,06–0,14 — beide unter Grenzwert.
- **3 bestehende Destillate ergänzt:** `pvt-hybridkollektoren` (Praxisbeispiel Freibad St. Jakob Basel,
  Hersteller Solink, keine neue Marktstatistik), `batteriespeicher-heimspeicher-pv-ch` (Batteriemonitor
  2025: 15-kWh-Speicher ⌀ CHF 8'800/≈586 CHF/kWh, Markt 1,5→2,5 GWh; widersprüchliche private
  900–1'300-CHF/kWh-Zahl bewusst verworfen), `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` (SIA-2060-
  Ausbaustufen mit CHF-Werten A 65/B 180/C1 350/C2 400 je Wohnung, D 3'100 je E-Parkplatz — schliesst
  Offen-Punkt seit Run 32 teilweise).
- **FAQ 46→48 Kernfragen:** F47 (MuKEn 2025), F48 (Wärmebrücke Balkonplatte); F38 und F39 aktualisiert.
- **Themenartikel erweitert:** `u-werte-grenzwerte-ch`, `energienachweis-zh`, `graue-energie`,
  `batteriespeicher`, `elektromobilitaet-ladeinfrastruktur`.
- **Methodisches Lehrstück:** bildbasierte Amts-PDFs (Wärmebrückenkatalog, SIA-2060-Infoblatt,
  Minergie-ECO, Swissolar-Batteriemonitor) scheitern an WebFetch — curl-Download + Read-Tool
  (PDF-Bildrendering) funktioniert und wurde für den Wärmebrückenkatalog erfolgreich eingesetzt;
  Empfehlung für künftige Läufe im Report festgehalten.
- **Verifikation:** MuKEn 2025 auf established (3 unabhängige Quellen deckungsgleich); Wärmebrücken-
  Zahlen bewusst emerging (Katalogbasis 2002, nicht gegen aktuelle Norm-Edition geprüft); SIA-2060-
  und Batteriemonitor-Updates bewusst nicht künstlich hochgestuft (Sekundärzitate bildbasierter PDFs).
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md`, `training/curriculum.md`
  (A4/B4), `wiki/QUESTIONS.md` (E26/E27), `wiki/INDEX.md`, `raw/_INGESTED.md`.

## 2026-07-12 — Run 35: PVT-Kollektoren, Solarthermie-Kosten, Komfortlüftung vertieft (F41–F46) + Register-Abschluss
- **6 neue Destillate (Web/CH-Quellen) → 74 total:**
  - `pvt-hybridkollektoren` (emerging) — SPF Institut für Solartechnik OST Rapperswil/EnergieSchweiz
    «PVT Wrap-Up» Schlussbericht 2017 + PVT Solar AG: elektrisch ~15–20 %/thermisch ~65 % Wirkungsgrad,
    ~300 CH-Anlagen 2017; Kosten widersprüchlich 210–650 vs. 1'100–1'600 CHF/m² (nicht adversarial
    verifiziert, bei Projektbezug neu recherchieren).
  - `solarthermie-investitionskosten-ch` (emerging, Kombianlage speculative) — hausinfo.ch (2020) +
    Meier Tobler AG: reine WW-Kompaktanlage CHF 15'000–20'000, Kombianlage unsicherer 22'000–40'000;
    keine amtliche CHF-Primärquelle (EnergieSchweiz/Swissolar nennen selbst keine Zahlen).
  - `komfortlueftung-wrg-sia382-luftwechsel` (emerging, **adversarial korrigiert**) — suissetec-
    Merkblätter SIA 382/1 (Nov. 2025) + SIA 382/5 (Juni 2025) + Minergie-Modul Komfortlüftung v2.0
    (14.09.2023): SIA 382/1:2025 bleibt Basisnorm für ALLE belegten Gebäude inkl. Wohnbauten (Kategorie
    WLA), SIA 382/5:2021 ist wohnbauspezifische Ergänzung, ersetzt SIA 382/1 NICHT — Erstfassung hatte
    das falsch dargestellt. Luftmengen 30/30/20 m³/h Zimmer/Bad/Küche, Wohnung ≥50 m³/h; Minergie-WRG
    ≥80 % Temperatur/≥60 % Feuchte (korrigiert von fälschlich zitiertem Reglementsstand 2011 auf v2.0/2023).
  - `komfortlueftung-filterklassen-epm-stromverbrauch` (emerging, **adversarial korrigiert**) — Zuluft
    mind. ISO ePM1 50 %, Abluft mind. ISO Coarse 80 %; Stromverbrauch über EU-1254/2014-Energie-
    effizienzklasse (mind. A, grössere Anlagen A+) statt dem früheren 0,34-Wh/m³-Grenzwert, der aus dem
    seit 2021 zurückgezogenen Merkblatt SIA 2023 stammt und fälschlich als aktuell zitiert worden war.
  - `raumluftfeuchte-komfortbereich-sia180` (emerging) — enbau-online.ch (SIA-180-Zitat) + Lungenliga
    Schweiz: SIA 180:2014 toleriert 30–70 % rel. Feuchte als Komfortband, Praxis-Zielband 40–60 %;
    30 %-Untergrenze als quantitative Planungsanforderung (90 % der Nutzungszeit ohne aktive Befeuchtung).
  - `geak-klassengrenzen-relative-klassierung` (**established**, adversarial am Original-PDF bestätigt)
    — «Normierung des GEAK» v2.1.0 (EnDK, 30.3.2023): GEAK hat KEINE festen kWh/m²-Grenzwerte je Klasse
    A–G, sondern klassiert RELATIV zum individuell berechneten Referenzgebäude (A=0–50 %, …, G=>300 %);
    eine im Web kursierende feste Zahlen-Tabelle wurde als falsch widerlegt. CO₂-Etikette bleibt separat
    absolut in 5-kg/(m²a)-Schritten.
- **VERDICHTUNG:** **FAQ F41–F46 neu** (BAUHERREN-FAQ jetzt **46 Kernfragen F1–F46**); Themenartikel
  `wiki/solarwaerme-warmwasser.md` (+ PVT + Investitionskosten), `wiki/komfortlueftung.md` (+ SIA-382-
  Vertiefung + Filterklassen + Raumluftfeuchte), `wiki/geak-gebaeudeenergieausweis.md` (+ Klassengrenzen-
  Korrektur) erweitert.
- **Register:** `destillate/INDEX` (74 total), `wiki/INDEX` (FAQ-Kopfzeile 40→46, drei Themenartikel-
  Zeilen nachgeführt), `wiki/QUESTIONS` (E21–E25), `pdf-inventar` (+7 Web-Zeilen inkl. nachgetragener
  Run-34-Zeile «Solarthermie vs. PV»), `raw/_INGESTED` (+6), `training/curriculum` (D14–D18 neu),
  Output `outputs/2026-07-12_energie-run35.md`.
- **Verifikations-Stufe:** zwei Destillate enthalten dokumentierte adversariale Korrekturen gegenüber
  der Erstrecherche (Normen-Geltungsbereich, veraltete SFP-Kennzahl); ein Destillat wurde am
  Original-PDF zeilenweise bestätigt und auf `established` gehoben; drei bleiben bewusst `emerging`/
  `speculative`, weil Kostenangaben bzw. Sekundärquellen nicht unabhängig zweitgeprüft sind.
- **Leitplanken:** keine Zahl erfunden; widersprüchliche Kostenangaben (PVT, Solarthermie-Kombianlage)
  explizit als widersprüchlich ausgewiesen statt geglättet; zwei falsche Erstzitate durch Verifikation
  aufgedeckt und korrigiert statt stillschweigend übernommen.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): EN-105 WRG-Grenzwert korrigiert + Querbezug planungsgrundlagen
- [korrigiert] [[energienachweis-zh]] EN-105 Lueftung: «Waermerueckgewinnung >= 70 % (>= 75 % mit Bypass)» war falsch (die 75 % sind keine Bypass-Bedingung). Richtig: **Temperatur-Aenderungsgrad >= 70 % ODER feuchtebezogen >= 75 %** (EN-105-Formular). Adversarial verifiziert gegen planungsgrundlagen/energie-energienachweis-zh-formulare (BESTAETIGT). Cross-KB-Fund energie-W1.
- [link] [[energienachweis-zh]] -> Verfahrens-/EVEN-Wegweiser der KB planungsgrundlagen (energie-energienachweis-zh-formulare / energie-even-plattform-bedienung / energie-private-kontrolle-zh). Rollenteilung: energie = Fachphysik/Grenzwerte fuehrend, planungsgrundlagen = Verfahren/Beschaffung fuehrend.

## 2026-07-11 — Run 34: Solarthermie ↔ Photovoltaik & Warmwasser (F40 neu) + neuer Themenartikel
- **1 neues Destillat (Web/CH-Quellen) → 68 total:**
  - `solarthermie-vs-pv-warmwasser-ch` (established) — EnergieSchweiz «Solarwärme»
    (energieschweiz.ch/heizungssysteme/solarwaerme) + Swissolar «Solarwärme»
    (swissolar.ch/de/wissen/solartechnologien/solarwaerme), Web-Stand Juli 2026: Solarthermie EFH
    (4–6 m² Kollektor + ~450 l Speicher) = **60–70 % des Jahres-Warmwassers**, MFH ~1 m²/Person = 30–40 %,
    Kombianlage (WW + Heizung) mind. **30 % des Wärmebedarfs**; Brennstoff-Einsparung Altbau 20–30 %/Neubau
    bis 50 %; Wirkungsgrad ~70–85 % Wärme vs. ~20 % Strom (PV) → weniger Dachfläche. **Heutige CH-Empfehlung:
    für ein Haus mit Wärmepumpe meist PV + WP-Boiler** (PV universell, Solarwärme nur heizen + Sommerüberschuss
    → Nutzen pro m² Dach übers Jahr entscheidend); Solarthermie sinnvoll bei ganzjährig hohem Warmwasserbedarf
    (MFH zentral/Hotel/Schwimmbad/Prozesswärme); Wärmepumpenboiler = stromsparender WW-Standard; Förderung
    Solarthermie 2'400+1'000/kWth (ZH/SZ).
- **VERDICHTUNG:** **FAQ F40 neu** «Solarthermie oder Photovoltaik auf dem Dach — und wie mache ich mein
  Warmwasser?» (FAQ jetzt **40 Kernfragen F1–F40**); **neuer Themenartikel `wiki/solarwaerme-warmwasser.md`**
  (established) mit Backlinks auf `pv-eigenverbrauch-zev`, `heizleistung-und-waermeerzeuger`, `pv-solar-technologien`.
- **Register:** `destillate/INDEX` (+1 → 68), `wiki/INDEX` (FAQ 39→40, neuer Themenartikel), `wiki/BAUHERREN-FAQ`
  (F40 + Frontmatter-source + Stand-Box), `wiki/QUESTIONS` (**E20 ✓**), `pdf-inventar` (+1 Web-Zeile),
  `raw/_INGESTED` (+1), `training/curriculum` (**D13**), Output `outputs/2026-07-11_energie-run34.md`.
- **Leitplanken:** keine Zahl erfunden; Deckungsgrade/Flächen aus EnergieSchweiz/Swissolar wörtlich;
  Wirkungsgrad 70–85 %/20 % als Sekundärquelle markiert; konkrete CHF-Investition Solarthermie offen gelassen.

## 2026-07-11 — Run 33: Elektromobilität — Ladeinfrastruktur am Gebäude (F39 neu) + Zogg-Destillat geschärft
- **1 neues Destillat (Web/CH-Quellen) → 66 total** + 1 bestehendes geschärft:
  - `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` (established) — EnergieSchweiz/Swiss eMobility
    «Ladeinfrastruktur in Mietobjekten» (Nov 2024) + «im Bestandsbau — Rollen und Prozesse» (Sept 2025) +
    Zogg-Fachartikel HK-Gebäudetechnik 4/24 (S. 52-57, Juli 2023): **Grunderschliessung aller Parkplätze**
    (intelligente, ausbaufähige Anlage) statt Einzel-Wallbox; **SIA-Merkblatt 2060** drei Stufen **C1 Power
    to Garage / C2 Power to Parking / D Ready to charge**; **dynamisches Lastmanagement** verteilt freie
    Leistung → kein Anschluss-Ausbau; Typ 2 (AC), **11 kW** üblich (1,4–22 kW); E-Auto-Batterie **20–100 kWh**
    als flexibler Tagesverbraucher, **Frühling–Herbst bis 100 % PV**; Ladestation gebäudeseitig **ab
    CHF 1'000**; Prozess nach SIA-Phasen real **6–9 Monate**; **Mietobjekt: Refinanzierung über
    Parkplatzmiete**; **V2H/V2G** künftig; NIV SR 734.27.
  - `wp-pv-eigenverbrauch-lastmanagement` (Zogg 2023) **geschärft** um den E-Auto-Teil (offener Punkt
    «E-Mobilität nur überflogen» geschlossen): Ladeleistung/kWh, Frühling–Herbst 100 % PV, V2H/V2G.
- **VERDICHTUNG:** **FAQ F39 neu** «Muss ich mein Haus / MFH für Elektroauto-Ladestationen vorbereiten?»
  (Grunderschliessung > Einzel-Wallbox, SIA-2060-Stufen, dynamisches Lastmanagement, 11 kW, PV-Kopplung,
  Kosten, Prozess, Parkplatzmiete). **FAQ jetzt 39 Kernfragen F1–F39.** **Neuer Themenartikel
  `wiki/elektromobilitaet-ladeinfrastruktur`** (established). Cross-Links in `pv-eigenverbrauch-zev`.
- **Register:** `destillate/INDEX` (+1 → **66**, Zogg-Zeile ergänzt), `wiki/INDEX` (FAQ 38→39, Themenartikel
  `elektromobilitaet-ladeinfrastruktur`), `wiki/BAUHERREN-FAQ` (F39 neu, Frontmatter +1 source/Datum,
  FAQ-Stand-Box), `wiki/QUESTIONS` (**E19 Elektromobilität ✓**), `pdf-inventar` (+1 Web-Zeile), `raw/_INGESTED`
  (+1), `training/curriculum` (**D12 neu**).
- **Methodik:** Kein CHF-/kW-/%-Wert erfunden — 11 kW/1,4–22 kW/20–100 kWh/ab CHF 1'000/6–9 Monate/SIA-2060-
  Stufen aus EnergieSchweiz-Leitfäden + Zogg-Artikel wörtlich belegt; SIA 2060 kostenpflichtig → Stufen als
  referiert markiert; Grunderschliessungs-CHF je Parkplatz bewusst offen (projektabhängig).

## 2026-07-10 — Run 32: Batteriespeicher — «lohnt sich das?» (F38 neu) + F37 geschärft
- **2 neue Destillate (Web, CH-Quellen) → 65 total:**
  - `batteriespeicher-heimspeicher-pv-ch` (established) — Swissolar «Batteriespeicher» + EnergieSchweiz
    «Batterien», trianguliert mit Zogg 2023: Eigenverbrauch **~30 %→50 % (EMS+WP)→bis 70–90 % (Batterie)**;
    **Wirtschaftlichkeit ab ~35 % EV — meist OHNE Batterie erreichbar** (teuerster Hebel, nicht der erste);
    **600–900 CHF/kWh** inkl. WR+Installation; Dimensionierung kWp×1,5 bzw. Jahresverbrauch/730; LFP ~80 %,
    Lebensdauer 10–20 J; **Notstrom nur ~30 % der Systeme**; Tagesspeicher → **Winter-Netzbezug nicht senkbar**.
    Belegte Amortisationsjahre bewusst offen; unplausibler EnergieSchweiz-Extraktionswert verworfen.
  - `behaglichkeit-raumklima-kbob-ipb` (established, ⚠ 2017) — KBOB/IPB-Faktenblatt 1.1.31: **aktive
    Befeuchtung bei normalem Klima nicht nötig** (Feuchte via Lüftung; SIA 180:2014), Sommer primär passiv.
- **VERDICHTUNG:** FAQ **F38 neu** «Lohnt sich ein Batteriespeicher zu meiner Solaranlage?» (FAQ jetzt
  **38 Kernfragen F1–F38**); **F37 geschärft** um die KBOB/SIA-180-Feuchteaussage; neuer Themenartikel
  `wiki/batteriespeicher.md` (Reihenfolge der Eigenverbrauchs-Hebel, Kosten/Dimensionierung, Grenzen,
  MFH via ZEV/vZEV/LEG).
- **Register:** INDEX-Destillate (+2 → 65), wiki/INDEX (FAQ 37→38, 2 Artikel), QUESTIONS (E18 ✓, E17 geschärft),
  pdf-inventar (+2 Web), _INGESTED (+2), curriculum (D11), Output `outputs/2026-07-10_energie-run32.md`.

## 2026-07-09 — Run 31: Komfortlüftung / kontrollierte Wohnungslüftung (F37 neu)
- **1 neues Destillat (Web, CH-Quellen) → 63 total:**
  - `komfortlueftung-wohnungslueftung-ch` (established) — EnergieSchweiz (gebaeudetechnik/lueftung) + Minergie
    «Gute Raumluft» + energie-umwelt.ch (kantonale Fachstellen): **4 Standardsysteme** (Komfortlüftung mit WRG /
    Abluft / dezentral 75–90 % / Grundlüftung); Wärmeverluste **>2/3 tiefer als Handlüftung** (ZH EN-105 ≥70 %);
    Aussenluft ~30 m³/h wach /15 schlafend; CO₂ 400–1'000–2'000 ppm; **die zwei Mythen widerlegt** (Fenster
    jederzeit öffenbar; trockene Luft = Kälte-Phänomen jeder Lüftung → Enthalpietauscher +bis ~10 % Feuchte);
    Filterwechsel ~1–2×/J, EFH ~CHF 12–25k Markt-Richtwert, Gebäudeprogramm fördert bei Sanierung.
- **VERDICHTUNG:** FAQ **F37 neu** «Brauche ich eine Komfortlüftung — wird die Luft trocken, darf ich die
  Fenster nie mehr öffnen?» (FAQ jetzt **37 Kernfragen F1–F37**); neuer Themenartikel `wiki/komfortlueftung.md`
  (established) mit Backlinks auf `en-lueftung-kuehlung-zh` / `minergie-standards` / `pv-eigenverbrauch-zev` /
  `gebaeudeprogramm-bund-hfm-2015` / `sommerlicher-waermeschutz`.
- **Register:** `destillate/INDEX` (+1 → 63), `wiki/INDEX` (FAQ 36→37 + Komfortlüftungs-Zeile), `QUESTIONS`
  (**E17 ✓**), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (**D10**), Output `2026-07-09_energie-run31`.
- **Offen:** WRG-Grad zentraler Anlagen numerisch (Minergie ≥80 %), SIA 382/1 Auslegungs-Luftwechsel,
  Filterklassen/Ventilator-Strom (SIA-Merkblatt 2023, bildbasiert), komfortable rel. Raumluftfeuchte % (SIA 180),
  CHF aus neutraler Quelle.
- **Methodik:** Kein WRG-%-/CHF-/Feuchte-%-Wert erfunden; Minergie-/BFE-PDFs bildbasiert → aus lesbaren
  HTML-Portalen belegt; CHF 12–25k als kommerzieller Markt-Richtwert markiert, Filterintervall als fachüblich.

## 2026-07-08 — Run 30: GEAK / GEAK Plus (F36 neu) + Fenster-Energieetikette FEA
- **2 neue Destillate (Web, CH-Quellen) → 62 total:**
  - `geak-gebaeudeenergieausweis-kantone` (established) — geak.ch / EnDK: amtliche Energieetikette Bestand,
    7 Klassen A–G (Huelle / Gesamtenergie inkl. Eigenstrom / direkte CO₂; **A = null CO₂, Stufe 5 kg/m²·a**);
    **GEAK Plus** = bis 5 Sanierungsvarianten + Beratungsbericht; **Pflicht ab CHF 10'000 Foerderung**;
    **10 J gueltig**; nur zertifizierte Expert:innen; kein Fixpreis (ZH/SZ foerdern 1'000/1'500).
  - `fenster-energieetikette-fea-bfe` (emerging) — BFE, freiwilliges Label: Winter-Bilanz **Uw,eq** am
    Referenzfenster **1,55 × 1,15 m** = Transmissionsverlust − nutzbarer solarer Gewinn; **Klasse A =
    Gewinne > Verluste**. ⚠ Faktenblatt 7731 bildbasiert → Uw,eq/Referenzmass nicht seitengenau, Klassen-
    grenzen offen.
- **FAQ F36 neu** «Brauche ich einen GEAK — was ist das, was bringt er, was kostet er?». **FAQ jetzt
  36 Kernfragen F1–F36.**
- **Neuer Themenartikel `geak-gebaeudeenergieausweis`** (established); **`fenster-verglasung` geschaerft**
  um einen FEA-Abschnitt.
- **QUESTIONS:** **E16 GEAK ✓**, E3 FEA-Punkt nachgefuehrt (Prinzip belegt, Klassengrenzen offen).
- Register: destillate/INDEX (+2), wiki/INDEX (FAQ 35→36 + GEAK-Zeile), pdf-inventar (+3 Web), _INGESTED
  (+2), curriculum (**D9**), Output `2026-07-08_energie-run30.md`.
- **Offen:** GEAK-Kostenspanne + Klassengrenzen kWh/m²·a; FEA-Klassengrenzen A–G; numerische g-/Uf-Werte (SZFF).

## 2026-07-07 — Run 29: Fenster & Verglasung — Uw/g-Wert/Dreifachglas (F35 neu)
- **1 neues Destillat (Web, CH-Quellen):** `fenster-verglasung-uw-g-wert` — aus vier autoritativen
  CH-Quellen trianguliert: **EnergieSchweiz** «Fenstersanierung» (13 % Energieverlust ueber Fenster,
  Lebensdauer 25–40 J, Kosten ~400/~1'200 CHF/m², Wert +2–3,5 %), **HSLU/enbau-online** (Uw = f(Ug/Uf/ψg);
  Dreifachglas >90 % CH, Ug 0,4–0,8; Argon/Krypton 90 %; warme Kante Kunststoff ψg 0,035 → bis −20 %;
  g-Wert Winter↔Sommer-Konflikt), **Minergie-Modul Fenster** (Uw ≤1,0 · Minergie-P ≤0,80) und
  **nachhaltigleben.ch** (Schimmelwarnung «Fenster nie allein vor der Wand»).
- **FAQ F35 neu** «Zweifach- oder Dreifachverglasung — welche Fenster, und lohnt sich der Ersatz?».
  **FAQ jetzt 35 Kernfragen F1–F35.**
- **Neuer Themenartikel `fenster-verglasung`** (established): Uw-System, Verglasung, g-Wert, Rahmen,
  Anforderungswerte, 5 Bauherren-Kernbotschaften.
- **Register:** `destillate/INDEX` +1 (**60 Destillate**), `wiki/INDEX` (FAQ 34→35, fenster-verglasung-
  Zeile, «im Aufbau»-Liste bereinigt), `wiki/QUESTIONS` **E3 ✓ geschlossen**, `pdf-inventar` +1 Web,
  `raw/_INGESTED` +1, `training/curriculum` **D8 neu**. Report `outputs/2026-07-07_energie-run29.md`.
- **Methodik:** kein Uw-/Ug-/ψ-/g-/CHF-Wert erfunden; g-Glas-Richtwert (~0,5) und MuKEn-1,0/1,3-Nuance
  als eigene Einordnung markiert. Offen: numerische g-/Uf-Werte je Typ (SZFF), Fenster-Energieetikette
  BFE (bildbasiert), GEAK-FAQ (Kandidat F36).

## 2026-07-06 — Run 28: Naturdaemmstoffe — oekologisch daemmen + Sommerhitzeschutz (F34 neu)
- **1 neues Destillat (Web, CH-Quellen):** `naturdaemmstoffe-kennwerte-sommerhitzeschutz` (Materialvergleich
  gesundes-haus.ch + Lignum «Holzfaserdaemmung» + Strohballen). Vergleichstabelle Holzfaser/Zellulose/Hanf/
  Flachs/Schafwolle/Stroh/Kork mit **λ 0,038–0,045** (wie Mineralwolle → keine dickere Daemmung), Rohdichte,
  **spez. Waermekapazitaet c ~2000–2200 J/(kg·K) fuer holzbasierte Stoffe (≈2× Steinwolle ~1030 / EPS ~1450)**
  und Diffusion µ. Kernbotschaft: gegen **Sommerhitze** zaehlt die **Speichermasse ρ·c** (Phasenverschiebung),
  nicht λ — darum schuetzt Holzfaser «besser als die meisten anderen Daemmstoffe vor Sommerhitze» (Lignum).
  Diffusionsoffen/feuchtepuffernd (Holzfaser bis 15 % Eigengewicht). **Stroh** ~100× weniger graue Energie als
  Mineralwolle, verputzt bis **90 min** Feuerwiderstand, Minergie-ECO-Hebel. **Trade-off:** brennbar → CH-VKF
  **RF3** (eigene Uebersetzung der DIN-B2-Angabe der Quelle; VKF-Produktanerkennung je Aufbau → Skill `brandschutz`).
- **Neuer Themenartikel** `naturdaemmstoffe` (oekologisch daemmen, Sommerhitze puffern, Materialwahl nach
  Einbauort); `sommerlicher-waermeschutz` + `daemmstoffe-lambda` verlinkt.
- **FAQ F34 neu** «Oekologisch daemmen ohne Winter-Nachteil — hilft das gegen Sommerhitze?» → 34 Kernfragen F1–F34.
- **Register:** destillate/INDEX (+1 → **59 Destillate**), wiki/INDEX (FAQ 33→34 + naturdaemmstoffe-Zeile,
  «im Aufbau»-Liste bereinigt), pdf-inventar (+1 Web), raw/_INGESTED (+1), training/curriculum (**D7 neu**),
  wiki/QUESTIONS (E12 Naturdaemmstoffe ✓). Schliesst die E12-Naturdaemmstoff-Restluecke.
- **Datenstand-Disziplin:** kein λ/c/Foerderbetrag erfunden; c-Umrechnung Wh/kgK→J/kgK offen ausgewiesen,
  Zellulose-c-Ausreisser der Quelle ⚠ markiert; Brandklasse-Uebersetzung DIN-B2 → CH-VKF-RF3 als eigene
  Einordnung gekennzeichnet, VKF-Anerkennung an Skill `brandschutz` delegiert.

## 2026-07-05 — Run 27: PV-Eigenverbrauch vermarkten — ZEV-Mieter-Preisregel (F32 geschaerft) + LEG (F33 neu)
- **2 neue Destillate (Web-Primaerquellen):** `zev-mieter-strompreis-eigenverbrauch` (EnergieSchweiz
  «Eigenverbrauch und ZEV» + lokalerstrom.ch, Grundlage Leitfaden Eigenverbrauch — die **Mieter-Preisregel**:
  pro kWh **nie mehr als das externe Standardprodukt**; entweder **pauschal ≤80 %** (kein Kostennachweis,
  garantierte 20 % Ersparnis) oder **Gestehungskosten** (reale Kosten − Einspeiseerloes, gedeckelt aufs
  Standardprodukt; bei tieferen Kosten hoechstens **halbe Ersparnis** zusaetzlich); einrechenbar
  PV-Produktion/Messung/Dienstleister/Netzstrom 1:1; **Mieter-Wahlrecht** + Anfechtungsrecht, keine
  Nettomiet-Ueberwaelzung; EnergieSchweiz-Excel 2024-03-11; EnV Art. 16) und
  `leg-lokale-elektrizitaetsgemeinschaft-2026` (EKZ + VSE-Branchenempfehlung LEG — das **dritte** neue
  Instrument, **ab 1.1.2026** (StromVG): Strom mit Nachbarn ueber das **oeffentliche** Quartiernetz;
  **Netzentgelt-Rabatt 40 %** ohne / **20 %** mit Transformation, **nur** auf Wirkenergie/Wirkleistung/
  Grundpreis (nicht SDL/Stromreserve/Netzzuschlag/Gemeinde/Messung); Voraussetzung gleiche **Gemeinde** +
  Netzebene NE5-7/≤36 kV + **≥5 %** Produktionsanteil + Smart Meter; Teilnehmer bleiben **VNB-Kunden** ohne
  Solidarhaftung — anders als ZEV hinter dem Anschluss).
- **FAQ:** **F32 geschaerft** um die konkrete Mieter-Preisregel (80 %/Gestehungskosten, Mieterrechte);
  **F33 neu** «Solarstrom mit den Nachbarn teilen — LEG?» (Rabatt-Logik, Voraussetzungen, ZEV-vs-LEG-Tabelle,
  Faustregel Modellwahl). FAQ-Stand **33 Kernfragen F1-F33**.
- **Themenartikel `pv-eigenverbrauch-zev`** um Mieter-Preisregel (Hebel 2) + **Hebel 3 LEG** erweitert.
- **Register:** `destillate/INDEX` (+2 → **58 Destillate**), `wiki/INDEX` (Kernprodukt-Zeile 32→33,
  pv-eigenverbrauch-zev-Zeile), `raw/_INGESTED` (+2), `pdf-inventar` (+2 Web), `QUESTIONS` (E12 ZEV-Preis ✓ + LEG ✓),
  `curriculum` (D6 ergaenzt). Schliesst die **Run-26-Top-Prioritaeten #1 (ZEV-Mieter-Preisregel) + #2 (LEG)**.

## 2026-07-04 — Run 26: PV-Eigenverbrauch — WP-Lastmanagement (F31) + ZEV/vZEV im MFH (F32), neuer Themenartikel
- **2 neue Destillate (Web-Primaerquellen, via Read voll gelesen):** `wp-pv-eigenverbrauch-lastmanagement`
  (EnergieSchweiz/BFE, Autor D. Zogg FHNW, V2.0 02.07.2023 — WP als **thermischer Speicher via EMS**;
  solarer Deckungsgrad Heizen ~**verdoppelbar** (Faktor 2 mit Gebaeudemasse), Sommer-WW **100 % aus PV**;
  Speichertabelle Gebaeudemasse EFH 20-60/MFH 150-450 kWh; **Batterie lohnt noch nicht/hilft Winter nicht**;
  Schnittstellen SG-Ready/PV-Eingang/Modbus/SmartGridready/EVU-Sperreingang) und
  `zev-eigenverbrauch-mfh-her-2025` (VSE HER-CH 2025, verabschiedet 10.02.2025 — ZEV Art. 17 EnG +
  Eigenverbrauch **abgabenfrei Art. 16 EnG**; **neu vZEV ab 1.1.2025** via virtuellem Messpunkt **ohne
  Umverdrahtung**; Vertreter-Rolle, ≥30 kVA separater Zaehler; **LEG separat** BD-LEG).
- **Verdichtung:** **FAQ F31 neu** «Lohnt sich PV zusammen mit einer Waermepumpe — Solarstrom selbst nutzen?»
  (Steigerungsfaktoren-Tabelle, Reihenfolge Lasten-schieben→Speicher→Batterie-zuletzt, Effizienz-vor-Show);
  **FAQ F32 neu** «PV auf dem MFH — Strom an Mieter verkaufen (ZEV)?» (ZEV↔vZEV-Tabelle, Art. 16/17 EnG,
  vZEV ab 1.1.2025, Abgrenzung LEG). **Neuer Themenartikel `pv-eigenverbrauch-zev`** (buendelt beide Hebel).
- **Register:** destillate/INDEX (+2 → 56), wiki/INDEX (+Themenartikel, FAQ 30→32), BAUHERREN-FAQ
  (F31+F32, sources +2, Footer, Backlog WP+PV gestrichen), QUESTIONS (E12 ZEV [~], E15 neu), pdf-inventar
  (+2 Web), raw/_INGESTED (+2), curriculum (D6). Output: `outputs/2026-07-04_energie-run26.md`.
- **Belegluecke geschlossen:** Run-24/25-Prioritaet «WP + PV-Eigenverbrauch (Lastmanagement)» + ZEV-Teil E12.

## 2026-07-03 — Run 25: moderne WP-Feld-JAZ (WPZ Buchs 2017-2019, FAWA-Nachfolger) + Vollkostenvergleich Heizsysteme (FAQ F30 neu)
- **2 neue Destillate (Web):** `wpz-buchs-feldmessung-jaz-2016-2019` (WPZ Buchs/OST i.A. EnergieSchweiz,
  BFE-Tagungsband 24.06.2020 — Tabelle 1 gemessene JAZ nach Gebaeudeart: **LWWP inkl. WW 3,5/3,1/2,8 ·
  SWWP 4,9/4,6/4,3** je 30/40/50 °C; reine Heizen-Werte LWWP 3,7 · SWWP 5,7 Neubau; SWWP ~30 % Vorsprung
  ggue. modernen drehzahlvar. LWWP; JAZ=SPF_H2/SEPEMO; 13 Anlagen 2017-2019 — der **modernere Nachfolger zu
  FAWA 2004**) und `heizsysteme-vollkostenvergleich-energieschweiz` (EnergieSchweiz-Heizkostenrechner,
  Vollkosten EFH/20 J: Luft-WP 4'344 · **Erdsonde 4'090** · Pellets 5'052 · Fernwaerme 4'940 · Oel 5'043
  CHF/Jahr — WP guenstigstes System, Investition ≠ Gesamtkosten).
- **Verdichtung:** **FAQ F30 neu** «Was kostet mein Heizsystem ueber die Lebensdauer wirklich?»
  (Vollkosten-Tabelle + drei Lehren); **FAQ F6 geschaerft** mit gemessenen modernen Feld-JAZ (WPZ Buchs
  ersetzt den «moderne Geraete hoeher»-Hinweis durch echte Werte); Themenartikel
  `heizleistung-und-waermeerzeuger` gewachsen (moderne Feld-JAZ + Vollkosten-Backlinks).
- **Geschlossene Luecken:** «FWS-Feldstatistik / moderne Geraete-JAZ nach 2004» (Run-24-Prioritaet #1) und
  «CHF-Amortisationsvergleich Heizsysteme» (Run-24-Prioritaet #4) belegt.
- Register: `destillate/INDEX` (+2 → **54**), `wiki/INDEX` (+2, FAQ-Zaehler 29→30), `wiki/QUESTIONS`
  (E-F FWS+CHF ✓), `pdf-inventar` (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`, `wiki/BAUHERREN-FAQ`
  (F30 + F6 + Frontmatter + Footer). Output `outputs/2026-07-03_energie-run25.md`.
- **Offen:** noch aktuellere Feldstatistik (Anlagen nach 2019), WPesti-Standardwerte, kg CO₂-eq/m² je
  Bauteil (KBOB v8.0), Lignum-K_F-Konstruktionsdetails, WP+PV-Lastmanagement.

## 2026-07-02 — Run 24: Klimapraemie-Laufzeit aufgeloest (⚠→Ende 2027) + WPesti/SIA 384/3:2021 (projektgenaue JAZ) + Health-Check-Kleinfixes
- **2 neue Destillate (Web):** `klimapraemie-heizungsersatz-klik` (Stiftung KliK: ~CHF 360/kW, keine
  Obergrenze, fossil→WP/Holz, meist alternativ zum Kanton, PV unberuehrt; **Laufzeit voraussichtlich bis
  spaetestens Ende 2027** — loest den Run-23-⚠, aeltere «bis 2025»-Seiten veraltet) und
  `sia-384-3-wpesti-jaz-methode` (WPesti gratis endk.ch, JAZ projektgenau aus SIA-380/1-Nachweis + WP-Typ
  + Einbauart; SIA 384/3 Ausgabe 2021, publ. 02.06.2021; keine JAZ-Zahlen im Artikel).
- **Verdichtung:** FAQ **F29** (Klimapraemie-Laufzeit ⚠ aufgeloest) + FAQ **F6** (verbindliche
  projektgenaue Effizienz via WPesti/SIA 384/3) geschaerft; Themenartikel `heizleistung-und-waermeerzeuger`
  gewachsen (WPesti-Methode im Fliesstext + `sources:`).
- **Health-Check-Kleinfixes (2026-07-01) miterledigt:** Finding F1 — `holzbau-bauphysik-clt` `sources:`
  auf `sia-2001-waermedaemmstoffe-lambda.md` korrigiert; Finding B — INDEX-Doppelzeile
  `pv-einmalverguetung-bund-bfe` verschmolzen. **Destillat-Zaehlung jetzt konsistent: 52** (= 52 INDEX-Zeilen).
- Register: `destillate/INDEX` (+2, −1 Doppel → 52), `wiki/INDEX` (+2), `wiki/QUESTIONS`, `pdf-inventar`
  (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`. Output `outputs/2026-07-02_energie-run24.md`.
- **Offen:** FWS-Feldstatistik (moderne Geraete-JAZ), kg CO₂-eq/m² je Bauteil (KBOB v8.0), Lignum-K_F,
  CHF-Amortisationsvergleich Heizsysteme, Health-Check-Restfixes (`links:`-Komma, 2 Promotions).

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)
- **7 Audits**, KB sehr gesund: A gruen (0 echte Widersprueche, WP-JAZ + Umbau-Faktor sauber geflaggt),
  B gelb (0 tote `[[Backlinks]]`; **INDEX-Doppelzeile** `pv-einmalverguetung-bund-bfe` → Zaehlung 51 statt
  real 50 Destillate), C gruen (0 unbelegte Kennwerte/Foerdersaetze), D gruen (RAW-Vollabdeckung),
  E gruen (kein Artikel < 2026-04-02), F gelb (**holzbau-bauphysik-clt** `sources:` verweist auf nicht
  existentes `destillate/daemmstoffe-lambda.md`; 3× `links:` leer- statt kommagetrennt), G 2 Promotions
  (`regenwasserbewirtschaftung-versickerung-zh` + `sommerlicher-waermeschutz` emerging→established).
  Nur Audit/Report, keine Fixes. Report `outputs/2026-07-01_health-check.md`.

## 2026-06-30 — Run 23: energiefranken.ch (standortgenaue Foerder-Suchmaschine) + Klimapraemie — der Foerder-Stapel ueber alle Ebenen
- **+1 Destillat** (established): `energiefranken-foerder-suchmaschine-ch` — Web (energiefranken.ch © 2026
  EnergieSchweiz/BFE + energieschweiz.ch + gebaeudeklima-schweiz.ch). Standortgenaue Suchmaschine: **PLZ →
  alle verfuegbaren Programme** aus **Bund / Kanton / Gemeinde / Energieversorger / Stiftungen**. Foerderung
  als **Stapel** (Tabelle: wer zahlt was, Antrag wann — Kanton/Gemeinde VOR Baubeginn, Bund-PV/Pronovo NACH
  IBN). **Klimapraemie** (Stiftung KliK) ca. **CHF 360/kW, keine Obergrenze**, fossiler Heizungsersatz →
  WP/Holz; **meist NICHT mit kantonaler Heizungsfoerderung kombinierbar** (Beleg SZ-Vollzugshilfe). ⚠
  Klimapraemie-Laufzeit Quellen widerspruechlich («bis 2025» vs. «bis Ende 2027») → Live-Pruefung noetig.
- **FAQ F29 neu** «Wie finde ich heraus, welche Foerdergelder ich an MEINEM Standort wirklich bekomme — auch
  von der Gemeinde?» (energiefranken.ch + Foerder-Stapel-Tabelle + Reihenfolge-Heuristik + «hoehere Variante
  rechnen statt addieren») → **29 Kernfragen F1-F29**.
- **`foerderung-energie-zh` + `foerderung-energie-sz` geschaerft:** Gemeinde/EWU via energiefranken.ch +
  Klimapraemie-als-Alternative (hoehere Variante waehlen) ergaenzt, Backlinks gesetzt.
- **Register:** `destillate/INDEX` (50→**51**), `wiki/INDEX` (FAQ 28→29 + Themen-Zeile), `wiki/QUESTIONS`
  (E-D7 Gemeinde-/EWU-Ebene ✓), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (Foerder-Block
  erweitert). Output `outputs/2026-06-30_energie-run23.md`. **Keine CHF-Saetze erfunden.**

## 2026-06-29 — Run 22: Foerderprogramm Energie Kanton Schwyz 2026 (Primaerquelle vollst.) + PV-EIV-Aktualitaetscheck
- **+1 Destillat** (established): `foerderprogramm-energie-sz-2026` — Vollzugshilfe Foerderprogramm Energie
  2026 Kt. SZ (AfU, Ausgabe 01.01.2026, **S. 1-40 vollst. via Read** aus lokal gespeicherter PDF). **ALLE
  CHF-Saetze Kanton Schwyz:** Daemmung 60/m² (+40 Gesamtsanierungsbonus), Luft/Wasser-WP 3'200+120/kW_th,
  Sole/Wasser-WP 4'800+360/kW_th, Waermenetz 4'000+200/kW_th, Holzfeuerung 360/kW_th (Stueckholz 5'000/Anlage),
  Solarthermie 2'400+1'000/kW_th, Minergie EFH/MFH/andere 100/60/40 & -P 155/90/60 CHF/m² EBF, Ersatz dezentral
  15'000/60-m², GEAK 1'000/1'500; min 3'000/max 300'000, max 50 %, Baujahr <2000, Gesuch vor Baubeginn, WP nur
  Elektromotor (WPSM/FWS), Klimapraemie nicht kombinierbar. Inkl. SZ↔ZH-Vergleich (linear vs. Pauschale).
- **FAQ F28 neu** «Welche Energie-Foerderbeitraege bekomme ich im Kanton Schwyz?» (volle Satztabelle +
  Bedingungen + SZ↔ZH-Unterschied + Rechenbeispiele) → **28 Kernfragen F1-F28**. **F7 geschaerft** (SZ-Querverweis).
- **Neuer Themenartikel `foerderung-energie-sz`** (established) — Kurzreferenz + Regeln + SZ↔ZH-Vergleich;
  Gegenstueck zu `foerderung-energie-zh`.
- **`pv-einmalverguetung-bund-bfe` aktualisiert:** Aktualitaets-Check 2026 (Pronovo «Neuerungen» + CKW) —
  Basis-EIV-Saetze fuer 2026 unveraendert; einzige Aenderung Winterstrombonus ≥100 kW ab IBN 1.1.2026.
  Sekundaerquellen-Ambiguitaet (Leistungs-/Grund-/Neigungsbonus) → keine feinere CHF-Aufschluesselung (nicht geschaetzt).
- **Register:** destillate/INDEX (+1, +1 Aktualisierung), wiki/INDEX (+1 Artikel, FAQ/EIV aktualisiert),
  wiki/QUESTIONS (E-D7 «Schwyzer Foerderprogramm SZ» ✓ + EIV-2026 verifiziert), pdf-inventar (+2 Web-Zeilen),
  raw/_INGESTED (+2). **Destillatzahl 48 → 49.** Leitplanken: alle SZ-CHF-Saetze aus amtlicher Primaerquelle, nichts erfunden.

## 2026-06-28 — Run 21: Schallschutz-Flanken-Mechanik Holzbau (Lignum/BFH 2008) + Bundes-Gebaeudeprogramm/HFM 2015
- **+2 Destillate** (beide established): `lignum-schallschutz-holzbau-flankenuebertragung` (Lignum/BFH-AHB
  Bericht 2712-SB-01, 2008 — die **Flanken-/Nachweis-Mechanik**: R_w↔R'_w, Projektierungszuschlag K_P +
  Flanken-Zuschlag K_F, **12 Nebenwege ueber EN 12354**, Spektrum-Anpassungswerte C/C_tr; Holzbau-Flanken-
  kennwerte oft nicht verfuegbar → Prognose + Reserve + elastische Stoesse; ⚠ SIA 181:2006, Mechanik
  zeitlos); `gebaeudeprogramm-bund-hfm-2015` (Das Gebaeudeprogramm + HFM 2015 — **Bund-/Kanton-Foerder-
  Mechanik**: CO2-Gesetz Art. 34 → Globalbeitraege → kantonaler Vollzug nach HFM 2015, 18 Module M-01…M-18,
  Rahmenbedingungen U≤0,20/Verbesserung ≥0,07/Baujahr<2000/GEAK Plus ab 10k; CHF-Saetze kantonal).
- **FAQ F27 neu** «Was ist ‹das Gebaeudeprogramm› — Bund UND Kanton?» (ein Topf, ein Gesuch beim
  Standortkanton vor Baubeginn, PV separat ueber Pronovo nach IBN) → 27 Kernfragen.
- **F25 + F17 + Themenartikel `schallschutz-sia181` geschaerft:** Flanken-Mechanik (R_w↔R'_w, K_P/K_F,
  12 Nebenwege EN 12354, C-Werte) eingearbeitet — **schliesst die E11-Belegluecke «Flanken-Mechanik»**
  (konkrete Holzbau-Anschlussdetails/K_F-Werte bleiben offen, spaetere Lignum-LIT-Doku).
- **`foerderung-energie-zh` gewachsen:** Sektion «Woher das Geld kommt (Bund ↔ Kanton)» + Offen-Punkt
  «Bundes-Gebaeudeprogramm» geschlossen; F7 verweist neu auf F27.
- Register: `destillate/INDEX` (+2), `wiki/INDEX` (+2 + 3 Zeilen aktualisiert), `wiki/QUESTIONS` (E-D7 +
  E11 ✓), `pdf-inventar` (+2 Web-Zeilen), `raw/_INGESTED` (+2). Destillatzahl 43 → **45**.
- Hinweis: Lignum- + HFM-PDFs liessen sich nicht per WebFetch-Text extrahieren; Lignum direkt via Read
  (S. 1-14) destilliert, HFM-/Gebaeudeprogramm-Fakten aus den Webseiten + verifizierter Web-Suche
  (keine CHF-Saetze erfunden — Modul-Saetze bleiben kantonal/ungenannt).

## 2026-06-27 — Run 20: Waermepumpen-Effizienz (FAWA Feld-JAZ + COP/SCOP/JAZ) + PV-Foerderung Bund (Pronovo-EIV)
- **+3 Destillate** (alle established): `fawa-jaz-feldanalyse-waermepumpen` (BFE-Feldanalyse, 236 Anlagen,
  **die erste CH-Primaerquelle fuer gemessene JAZ**: S/W Ø 3,5 · L/W Ø 2,7 +32 %, Planungslehren
  Vorlauftemp/Ueberdimensionierung/Speicher; ⚠ Stand 2004); `cop-scop-jaz-waermepumpe-gruenenwald`
  (COP-Pruefpunkt vs. SCOP EN 14825 — Strassburg-Klima → CH ~5-7 % zu hoch — vs. JAZ-Feldmessung);
  `pv-einmalverguetung-bund-bfe` (BFE-Faktenblatt EIV/KLEIV/GREIV/HEIV + KLEIV ~360 CHF/kWp, Indach 400,
  Deckel 30 %, Boni Neigung/Winterstrom/Parkflaeche).
- **F6 geschaerft:** COP/SCOP/JAZ-Begriffsklaerung + FAWA-Feldbeweis (3 Bauherren-Lehren). **Schliesst die
  seit 18.06. offene Belegluecke «WP-JAZ aus Schweizer Primaerquelle».**
- **F7 geschaerft:** Bund-PV-Absatz zur vollen Pronovo-EIV-Erklaerung ausgebaut.
- **Themenartikel `heizleistung-und-waermeerzeuger` gewachsen** + Destillat `waermepumpe-systemvergleich`
  emerging→**established** (Belegluecke geschlossen, COP/SCOP/JAZ + FAWA-Sektion eingefuegt).
- Register: destillate/INDEX (+3, WP-systemvergleich established), wiki/INDEX (+3), QUESTIONS (E-F + E-D7 ✓),
  pdf-inventar (+3 Web), curriculum (B5/D3), raw/_INGESTED (+3). Destillatzahl 40 → **43**. Output: run20.

## 2026-06-26 — Run 19: ZH-Foerdersaetze komplett (Solarthermie/Minergie-ECO) + KBOB graue THG-Emissionen
- **Foerder-PDF S. 1-37 VOLLSTAENDIG** (Direkt-Download /tmp): die seit Tagen offenen CHF-Saetze
  beziffert → **Minergie-ECO 110/70/50, Minergie-P-ECO 165/100/80 CHF/m² EBF; Solarthermie 2'400 +
  1'000/kWth**. Destillat `foerderprogramm-energie-zh-2026` auf «vollst.» gehoben, offener Punkt geschlossen.
- **+1 Destillat:** `kbob-graue-treibhausgasemissionen-2025` (established) — KBOB-Faktenblatt
  (V1 04.04.2025): 9 Reduktionshebel, SIA-2032-Messgroessen (kg CO₂-eq/m² EBF), «Restwert Bestand»,
  bis 40 % MFH, Grenzwert-Logik (Minergie-ECO/SNBS/SIA 390/1), kommende Kantons-Grenzwerte
  (Art. 45 EnG); Datenbasis KBOB-Oekobilanzdaten **v8.0** (20.02.2026).
- **FAQ geschaerft:** **F7** (Foerderung) Tabelle + Rechenbeispiele, «Betrag offen» entfernt; **F9**
  (graue Energie) KBOB-Hebel-Reihenfolge + Restwert + 40 %-Potenzial. F-Anzahl unveraendert (26).
- **Themenartikel gewachsen:** `graue-energie` (KBOB-Sektion) + `foerderung-energie-zh`
  (Minergie-ECO/Solarthermie-Saetze, offen geschlossen).
- **Register:** destillate/INDEX (+1, Foerder vollst.), wiki/INDEX (+KBOB-Zeile, «im Aufbau» bereinigt),
  QUESTIONS (**E-D7 CHF-Saetze ✓**, **E6 KBOB ✓**), pdf-inventar (Foerder-Web [x] vollst. + KBOB [x]),
  curriculum (D3 vollst., D2 KBOB), raw/_INGESTED (+2). Destillate 38 → **40**.
  Output `outputs/2026-06-26_energie-run19.md`.

## 2026-06-25 — Run 18: PV-Ertrag je Ausrichtung × Neigung belegt (neue FAQ F26, schliesst E5-Orientierungsluecke)
- **+1 Destillat:** `pv-ertrag-ausrichtung-neigung-ch` (established) — CH-Richtwerte aus **zwei CH-Quellen
  trianguliert** (Swissolar «Anwendung PV» + solar-ratgeber.ch, Quervergleich BFE sonnendach.ch).
  Basis 100 % = Sued ~30°: **Flachdach ~90 %, Ost/West 90–95 %, Suedfassade senkrecht ~70 %, Nord
  steil ~40 %**; Optimum Sued ~30° / Ost-West ~15°; Verluste 0–50° Neigung gering; ≤45° von Sueden
  besonders gut geeignet. DE-Blog-Tabellen bewusst nicht uebernommen (Leitplanke CH-Quelle).
- **FAQ +1 → 26 Kernfragen (F1-F26):** **F26** «Mein Dach zeigt nicht nach Sueden — wieviel Ertrag
  verliere ich je Ausrichtung/Neigung?» (Entwarnung: Ost-West 90–95 % und fuer Eigenverbrauch oft im
  Vorteil; Matrix + Regeln Winkel/Selbstreinigung/Verschattung).
- **Themenartikel `pv-solar-technologien` gewachsen:** neue Sektion «Ausrichtung × Neigung (CH-Richtwerte)»
  mit Matrix + Regeln; Frontmatter/Sources +1.
- **PDF-Bestand erschoepft festgestellt:** jeder substanzielle PL-04-PDF destilliert (38 Destillate);
  Reste nur Datenblaetter/Flyer/Plaene (geringe Uebertragbarkeit). `U-Wert_Gebäudehülle.pdf` als
  1-Seiter geklaert (keine weiteren Buchseiten). Loop pivotiert auf Web/Aktualitaet + Vertiefung.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 25→26 + pv-Artikel-Zeile + «im Aufbau» bereinigt),
  QUESTIONS (**E5-Orientierung ✓**), pdf-inventar (U-Wert [x] + Web-PV-Ausrichtung [x]), raw/_INGESTED
  (PDF «erschoepft» + Web-Zeile), curriculum (C2 ergaenzt). Output `outputs/2026-06-25_energie-run18.md`.

## 2026-06-24 — Run 17: Schallschutz SIA 181:2020 belegt (neue FAQ F25, schliesst E11/A8)
- **+1 Destillat:** `sia-181-schallschutz-anforderungswerte` (established) — vollstaendige Anforderungs-
  tabellen aus SIA 181:2020 (Zusammenfassung baumann akustik & bauphysik, Anhang A): **Luftschall Di**
  (Wohnen mittel: 47/52/57/62), **Trittschall L'** (58/53/48/43), **Haustechnik LH** dB(A) und
  **Aussenlaerm De**; erhoehte Anforderung **+4 dB innen / +3 dB aussen**; Schluesselregel **EFH/Reihen-
  EFH/STWEG = erhoehte Aussenlaerm-Anforderung zwingend**; Bauwert D_nT/L'_nT inkl. Flanke ≠ Labor-R_w.
- **+1 Themenartikel:** `schallschutz-sia181` (established) — Schnellreferenz Anforderungen + Bauherren-
  Schluesselregel + Bauwert-vs-Laborwert + Einbindung in Werkvertrag/Ausschreibung/Abnahme.
- **FAQ +1 → 25 Kernfragen (F1-F25):** **F25** «Welcher Schallschutz ist Pflicht — wie laut darf der
  Nachbar/die Haustechnik sein?» (Wohnungstrennung Luftschall ≥52/56 dB, Trittschall ≤53/49 dB,
  Haustechnik Schlafraum ≤28 dB(A); erhoehtes Niveau Pflicht bei EFH/STWEG, Komfort innen vertraglich).
- **F17 (CLT-Holzbau) geschaerft:** SIA-181-Anforderung Wohnungstrennung Di≥52/L'≤53 konkret eingesetzt
  (erklaert die zweischalige CLT-Trennwand mit Labor-Reserve ≥56-58); Datenstand-Vermerk aktualisiert.
  `holzbau-bauphysik-clt` Schallschutz-Abschnitt + Frontmatter-Backlinks ergaenzt.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 24→25 + neuer Artikel), pdf-inventar (SIA-181-Web
  [x] + PV-Ausrichtung [ ] offen), QUESTIONS (**E11 ✓** belegt), curriculum (A6 geschaerft + **A8 neu [x]**),
  raw/_INGESTED (+1 + SharePoint-Zeile 37 Destillate).
- **Offen/Prioritaet morgen:** (1) **PV-Ertrag je Ausrichtung × Neigung** aus autoritativer CH-Quelle
  (EnergieSchweiz/sonnendach-Ertragstabelle) — Web-Blogs lieferten nur Bild/Excel auf DE-Basis, daher
  nicht uebernommen («nie erfinden»); (2) SIA-181-**Flankendetails Holzbau** (Lignum-Anschluesse);
  (3) CHF-Saetze Solarthermie/Minergie-ECO (Foerderbroschuere S.30-38).

## 2026-06-23 — Run 16: neue Domaene Regenwasser/Versickerung (FAQ F24) + aktuelle PV-Marktpreise 2025 (F18) + Foerderprogramm 2026 bestaetigt (F7)
- **+2 Destillate:** `regenwasserbewirtschaftung-versickerung-zh` (established; AWEL Kt. ZH Gewaesser-
  schutz — Versickerung **bewilligungspflichtig ab 20 m²** entwaesserter Flaeche, Zustaendigkeit
  **Gemeinde** (AWEL nur in GW-Schutzzonen/belasteten Standorten), **Metallflaechen Cu/Zn/Pb > 50 m²
  → Adsorber obligatorisch**, Versickerungsversuch + **1,0 m Filterschicht** ueber HW10; Normen
  VSA 2019 / SN 592 000:2012 / AWEL-Richtlinie 2022); `pv-marktzahlen-kosten-ch-2025` (established;
  Swissolar-Faktenblatt Juli 2025 + CKW Herbst 2025 — Aufdach **2'400–3'200 CHF/kWp**, **Indach +60 %**,
  Solarziegel ~2×, **Lebensdauer 33 Jahre**, 8'200 MW/300'000 Anlagen CH Ende 2024, Speicher 42 %).
- **Bestehendes Destillat gewachsen:** `foerderprogramm-energie-zh-2026` — Aktualisierung **2026
  unveraendert** (Baudirektion-Mitteilung 24.10.2025; 2025 = 61 Mio. CHF) + **Minergie-ECO (nur mit
  ECO!) + Solarthermie foerderfaehig**; konkrete CHF-Saetze S.30-38 bleiben offen (Broschuere-PDF nicht
  erreichbar — nicht geschaetzt, Leitplanke «nie erfinden»).
- **FAQ +1 → 24 Kernfragen (F1-F24):** **F24** «Was passiert mit dem Regenwasser — muss ich versickern,
  brauche ich eine Bewilligung?». **F18** geschaerft (aktuelle Marktpreise 2025 + Lebensdauer 33 J),
  **F7** geschaerft (2026 unveraendert + Solarthermie/Minergie-ECO + PV = Bund/Pronovo).
- **Themenartikel:** neuer Artikel `regenwasserbewirtschaftung-versickerung-zh` (Schwammstadt-Querschnitt
  zu Begruenung F20); `foerderung-energie-zh` + `pv-solar-technologien` (Marktpreise 2025) gewachsen.
- **Register:** destillate/INDEX (+2), pdf-inventar (Regenwasser [x] + Foerder/Swissolar-Web), QUESTIONS
  (E-D7 + E5 geschaerft, **E14 Regenwasser neu**), wiki/INDEX (FAQ 23→24 + neuer Artikel), raw/_INGESTED
  (+2), curriculum (D3 geschaerft, **D5 Regenwasser neu**). Offen: CHF-Saetze Solarthermie/Minergie-ECO
  (Broschuere), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe-Praxis.

## 2026-06-22 — Run 15: Indach-Solarprodukt + 3. PV-Ertragsreport (MFH) + neue Domaene Gebaeudeschadstoffe (FAQ F23)
- **+2 Destillate:** `prefa-solar-indach-aluminium-dachplatte` (emerging; PREFA Alu-Solardachplatte
  Indach — gross 100 Wp/5,88 m²/kWp ≈ 170 W/m², klein 43 Wp, **ab 17°**, 12,6 kg/m², keine
  Unterkonstruktion/Durchdringung → kein PV-Zusatzstatik; ⚠ Produktbroschuere 2023),
  `gebaeudeschadstoffe-checkliste-zh` (established; AWEL Kt. ZH 02.2023 — **4-Faelle-Raster** Baujahr
  1990 / Bausumme CHF 200'000 / 200 m³ Rueckbaumaterial; Stichjahre **Asbest 1990, PCB 1987/1976,
  CP 1990**; Checkliste ↔ Fachperson + private Kontrolle; Art. 16-20 VVEA).
- **Bestehendes Destillat gewachsen:** `pv-ertrag-eigenverbrauch-praxis` um **Beispiel C** (SolarApp
  Basel **60 kWp Indach-MFH** 2022 — ~826 kWh/kWp, **EV 33 %**, Autarkie 103 %, ~CHF 2'250/kWp) →
  drittes reales Ertrags-/Eigenverbrauchsbeispiel zwischen Single (8 %) und WP-Haushalt (44 %).
- **FAQ +1 → 23 Kernfragen (F1-F23):** **F23** «Muss ich vor meinem Umbau eine Asbest-/Schadstoff-
  abklaerung machen?» (Kt.-ZH-Vierfaelle-Raster + Stichjahre + Kosten-/Planungs-Transfer). **F18**
  geschaerft (3. Praxisbeispiel MFH EV 33 % + ZEV/Mieterstrom), **F4** geschaerft (konkrete
  Indach-Produkte Alu-Solardachplatte/Glas-Glas).
- **Themenartikel:** `pv-solar-technologien` (Indach-Sektion → zwei Systemtypen Glas-Glas/Alu;
  Eigenverbrauch + ZEV; Flaeche/kWp differenziert).
- **Register:** destillate/INDEX (+2), pdf-inventar (PREFA/Checkliste/Basel [x]), QUESTIONS (E5
  geschaerft, E13 Schadstoffe neu), wiki/INDEX (FAQ 22→23), raw/_INGESTED (+3), curriculum (C2+C4
  vollstaendig). Offen: Foerderprogramm ZH S.30-38 (web), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe.

## 2026-06-21 — Run 14: Fassaden-PV-Ertrag quantitativ (FAQ F21) + ZH-Lueftung/Kuehlung EN-105/EN-110 (FAQ F22)
- **+2 Destillate:** `pv-fassade-ertrag-pvsol` (emerging; PV*SOL-Praxissimulation Thomas Lüem Partner AG
  2019, Klima ZH — Vierfassaden-Anlage 491 kWp vertikal, Gesamtanlage **603 kWh/kWp** = ~60-65 % Dach,
  **PR 87,8 %**, Eigenverbrauch 32 %, Saison Sommer:Winter ≈ 4:1 mit hoeherem Winteranteil; ⚠ CHF 2019),
  `en-lueftung-kuehlung-zh` (established; EN-105 Lueftung [WRG ≥70 %/75 %, Luftgeschw. ≤2 m/s + Kanaele
  3-7 m/s, Kanaldaemmung 3-10 cm] + EN-110-ZH Kuehlung [≤12 W/m² ODER Kaelteerzeugung ODER PV-Deckung,
  θ_CW ≥14/10 °C, EER/SIA 382/1]; ⚠ seit 1.1.2026 EVEN, EN-110-PDF abgelaufen).
- **FAQ +2 → 22 Kernfragen (F1-F22):** **F21** «Wie viel weniger Strom bringt PV an der Fassade?»
  (~603 kWh/kWp = 60-65 % des Dachs, flacheres Jahresprofil, BIPV-Mehrwert) — schliesst die quantitative
  Fassaden-Ertragsluecke aus F20; **F22** «Brauche ich fuer Kuehlung/Klimaanlage einen Nachweis?»
  (EN-110, ≤12 W/m²/PV-Deckung, hohe Kaltwassertemperatur, sommerlicher Waermeschutz zuerst).
- **Themenartikel:** `pv-solar-technologien` (Fassaden-Ertrag quantitativ ergaenzt), `energienachweis-zh`
  (neue Sektion EN-105/EN-110 Kerngrenzwerte). ZH-EN-Formularmatrix damit vollstaendig destilliert.
- **Register:** destillate/INDEX (+2), pdf-inventar (PV*SOL + EN-105/110 [x]), QUESTIONS (E5 Fassade +
  E9 EN-105/110 geschlossen), wiki/INDEX (FAQ 20→22).

## 2026-06-20 — Run 13: Dach-Eignung (sonnendach.ch, FAQ F19) + Fassaden-PV & Begruenung (FAQ F20) + PV-Kosten
- **+3 Destillate:** `sonnendach-solarpotenzial-bfe` (established; BFE-Tool sonnendach.ch — 5 Eignungs-
  klassen nach Einstrahlung, Tool-Annahmen Wirkungsgrad 20 %/PR 80 %, reale Monatsproduktion
  Sommer ≈ 7,5× Winter, Verguetung 14 Rp), `greenpv-fassade-pv-begruenung-hslu` (emerging; HSLU-
  Forschungsprojekt GreenPV — Fassaden-PV opak 20 %/transparent 14 %, NOCT 42 °C, Temp-Koeff −0,4 %/°C,
  Begruenung boden-/wandgebunden ≤30 kg/m²; Klimaanpassung Stadtklima), `pv-kosten-amortisation-praxis-ewz`
  (emerging; ewz-Projektkorrespondenz 2019 — CHF 1'600–2'460/kWp, Lebensdauer 25-30 J, Verschattungs-
  Tradeoff, PV+Gruendach; ⚠ Marktwerte veraltet).
- **BAUHERREN-FAQ F19 neu** «Taugt mein Dach fuer Solar — sonnendach.ch?» + **F20 neu** «Fassaden-PV
  oder Fassadenbegruenung?» → **20 Kernfragen F1-F20 belegt**.
- **Themenartikel `pv-solar-technologien`** um 3 Sektionen gewachsen: Dach-Eignung (sonnendach.ch),
  Fassaden-PV & Klimaanpassung, Kosten & Amortisation.
- **Erschoepft Prio-2-Solar-Block:** alle hoch-uebertragbaren Solar-PDFs (sonnendach, GreenPV, Vorgehen-PV)
  destilliert; offen nur noch redundante/Datenblatt-Quellen (Basel-Report, PV*SOL, PREFA, FEZ-Flyer).
- **QUESTIONS E5** weiter geschlossen (Dach-Eignung + Fassaden-PV); offen: Ertrag je Ausrichtung/Neigung,
  quantitative Fassadenertraege, aktuelle CHF/kWp (Swissolar-Marktbericht).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), wiki/INDEX, QUESTIONS.

## 2026-06-19 — Run 12: PV-Ertrag/Eigenverbrauch (FAQ F18) + Indach-Ausfuehrung + geringfuegige Umbauten
- **Befund:** Das Inventar (2026-06-05) hatte mehrere Solar-/PV-PDFs im SharePoint **nicht erfasst** —
  neuer Prio-2-Block im `pdf-inventar.md` angelegt; 4 davon heute destilliert.
- **+3 Destillate:** `pv-ertrag-eigenverbrauch-praxis` (established; zwei reale CH-Reports — SolarApp
  Einsiedeln Indach 7,9 kWp/981 kWh/kWp/EV 44 % + EnergieSchweiz Diemtigen 6 kWp/~1'025 kWh/kWp/EV ~8 %;
  Saisonalitaet 3-4×, Eigenverbrauchs-Hebel), `sunskin-roof-indach-planung` (emerging; Eternit Indach-
  Eckwerte Neigung 10-60°/Hinterlueftung 60 mm/Schnee-Wind/NIN/Blitzschutz), `energienutzungs-
  deklaration-geringfuegige-umbauten-zh` (established; Schwellen ≤200k & ≤30 % GVZ + Umbau-U-Werte).
- **BAUHERREN-FAQ F18 neu** «Wieviel Strom bringt meine PV-Anlage / Eigenverbrauch?» → **18 Kernfragen
  F1-F18 belegt**. **F12 geschaerft** (geringfuegiger Umbau = Deklaration statt Vollnachweis).
- **Themenartikel `pv-solar-technologien`** um Ertrag/Eigenverbrauch + Indach-Ausfuehrung gewachsen.
- **Geschlossen:** QUESTIONS **E5** (kWh/kWp + Eigenverbrauch) und **B2** (geringfuegige Umbauten).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), raw/_INGESTED, wiki/INDEX, QUESTIONS.

## 2026-06-18 — Run 11: FAQ vollstaendig (F6 WP-Systemvergleich) + swissolar Kap. 4-7 + Minergie-Zertifizierung
- **+2 Destillate:** `minergie-zertifizierung-workflow` (established; Nachweiskurs Teil 2/3 — Label-
  Plattform, Antrags-Checkliste, WPesti/PVopti/SoWs-Tools, Pruefprozess AS↔ZS prov.→def. Zertifikat,
  MKZ-Optimierung) und `waermepumpe-systemvergleich` (emerging; JAZ-Richtwerte Luft ~3 / Sole ~4,5 /
  Wasser ~5 + Entscheidungslogik WP/Fernwaerme/Pellets — ⚠ Richtwerte, projektgenau via WPesti/SIA 384/3).
- **swissolar-STP vollst. (Kap. 4-7 ergaenzt):** Batteriespeicher RF1/SNR 460712, Brandmauer Module
  1,0 m / 0,3 m hochziehen, integrierte PV >1'200 m² RF1-Unterlage, RWA-Abstand, **Feuerwehr: Bauherren-
  Pflicht zur Info + ab 30 kW Orientierungsplan in Einsatzplaene**, Systemdoku SN EN 62446-1,
  Naturgefahren SIA 261:2020. Quelle damit erschoepft (nur noch Anhang-Skizzen 7.3.x).
- **BAUHERREN-FAQ F6 neu** «Welches Heizsystem — WP/Fernwaerme/Pellets?» → **alle 17 Kernfragen F1-F17
  belegt** (Backlog nur noch Vertiefungen). **F16 (PV-Brandschutz) geschaerft** (Feuerwehr-Pflicht,
  ≥30 kW Einsatzplan, Brandmauer 1,0 m, Batteriespeicher).
- **Wiki gewachsen:** `heizleistung-und-waermeerzeuger.md` +WP-Systemwahl-Abschnitt (JAZ-Tabelle +
  Entscheidungslogik, F6 ✓). INDEX: FAQ 17/17, neue Artikel/Destillate gelistet.
- **Register:** destillate/INDEX (+2, swissolar/Nachweiskurs vollst.), QUESTIONS (E-F F6 ✓, E10 Kap. 4-7 ✓),
  pdf-inventar (Nachweiskurs [x], swissolar [x]), curriculum (B5 F6 ✓, B7 neu ✓, C3 vollst., M1 17/17),
  _INGESTED (29 Destillate). Output `outputs/2026-06-18_energie-run11.md`.

## 2026-06-17 — Run 10: Minergie-Nachweiskurs 2023 (MKZ/THGE) + Fallstudie → FAQ F8 Netto-Null
- **+2 Destillate:** `minergie-nachweiskurs-2023-mkz-thge` (established; Minergie-2023-Anforderungen,
  MKZ-Formel, **THGE-Grenzwerte je Gebaeudekategorie** MFH 11 / Spitaeler 17 kg CO₂-eq/m²·a, Klimapfad
  SIA 390/1 9 kg, nutzbare-Dachflaeche-Logik, Hitzeschutz Klima 2035) und `minergie-fallstudie-maison-
  climat` (emerging; gebautes Plusenergie-MFH Biel 2022, Nachweis-Kennzahlen; ⚠ Uebungswerte teils angepasst).
- **BAUHERREN-FAQ F8 neu** «Netto-Null konkret fuer meinen Neubau?» (Betrieb fossilfrei + THGE begrenzen;
  groesster Hebel baulich; Plusenergie-Beispiel) → **16 belegte Antworten** (F1-F5/F7-F17); offen nur F6.
  **F5 (Minergie) geschaerft** (konkrete 2023-Verschaerfungen + THGE je Kategorie).
- **Wiki gewachsen:** `graue-energie.md` → **established**, +THGE-Grenzwerte-Tabelle je Kategorie +
  bauliche Hebel + Klimapfad SIA 390/1. `minergie-standards.md` +MKZ-Formel +2023-Neuerungen (90 % Q_h,li,
  Monitoring 1'000 m², 60 % E-Parkplaetze, Spitzenlast 80 kW/10 % fossil).
- **Register:** INDEX/QUESTIONS/curriculum (D1 ✓, M1 ✓), pdf-inventar (Fallstudie [x], Nachweiskurs [~]),
  _INGESTED (26 Destillate). Output `outputs/2026-06-17_energie-run10.md`.

## 2026-06-13 — Run 9: CLT-Schallschutz + Praxisbeispiel zirkulaeres Bauen
- **+2 Destillate:** `clt-schallschutz-stora-enso` (established; Stora-Enso-Doku Kap. 4 Schallschutz —
  Innenwand V1-11 + Trennwand V1-8 + Deckenelement V1-6; R_w 34-58 / Trittschall L'_n,w 60→46;
  Hebel Vorsatzschale/Beschwerung/abgehaengte Decke; SIA-181-Bauwert/Flanke als Einordnung markiert).
  Damit ist die CLT-Stora-Enso-Doku (Kap. 1-4) vollstaendig erschlossen. Und `werkhof29-zirkulaeres-
  bauen-stroh-lehm` (emerging; baubuero-in-situ-Dossier ZH 2024 — Stroh/Lehm/Re-use/Areal-PV als
  gebautes graue-Energie-Beispiel zu F9).
- **BAUHERREN-FAQ F17 neu** «Wird mein Holzbau hellhoerig — CLT fuer MFH/Pflegeheim?» → **15 belegte
  Antworten** (F1-F5/F7/F9-F17; F6/F8 offen). Frontmatter +2 Quellen, `last_updated` → 2026-06-13.
- **Wiki `holzbau-bauphysik-clt.md`** um eine Schallschutz-Sektion gewachsen (Tabelle Wand/Decke +
  SIA-181-Hinweis).
- **QUESTIONS:** E8-Schallschutz ✓; neu **E11** (SIA 181 + Holzbau-Flanke) und **E12** (Naturdaemmstoffe
  Stroh/Lehm + ZEV/Solarsplit). **curriculum** A6 Schallschutz ✓, neu **A7** Naturdaemmstoffe/zirkulaer.
- Register: destillate/INDEX (+2), wiki/INDEX, raw/_INGESTED (24 Destillate), pdf-inventar (CLT [x]
  vollst., Werkhof29 [x]). Output `2026-06-13_energie-run9.md`.

## 2026-06-12 — Run 8: CLT-Bauteilkatalog + PV-Brandschutz
- **+2 Destillate:** `clt-bauteilkatalog-stora-enso` (established; Stora-Enso-Doku Kap. 4 — Aussenwand
  V1-9 S. 40-57 + Dach V1-6 S. 166-176, je REI·U·Rw + Schichttabelle; EPS vs. Mineralwolle/Holzfaser,
  GKF hebt REI, Installationsebene REI 120 + Rw 43; Innen-/Trennwand/Decke S. 98-164 offen) und
  `swissolar-stp-vkf-brandschutz-solaranlagen` (established; STP V4.00 12/2022 S. 1-16 — DC kein PVC/
  RF1-Rohr, WR-Standort, Kennzeichnung; Basis VKF-BSM 2001-15).
- **BAUHERREN-FAQ F16 neu** «Brandschutz Solaranlage (PV)» → **14 belegte Antworten** (Status
  established); **F15 geschaerft** um die konkreten CLT-Aufbauten. Frontmatter +2 Quellen,
  `last_updated` 2026-06-11 → 2026-06-12.
- **2 Wiki-Artikel:** `holzbau-bauphysik-clt.md` (+Bauteilkatalog-Tabellen Wand/Dach, emerging →
  established) und `pv-solar-technologien.md` (+Brandschutz-Sektion, Backlinks F16/Holzbau).
- **Register:** destillate/INDEX (+2), wiki/INDEX (FAQ 14, Holzbau established), QUESTIONS (E8 ✓,
  E10 neu ✓), pdf-inventar (CLT/swissolar [~]), curriculum (A6 Bauteilkatalog ✓, C3 ✓),
  _INGESTED (22 Destillate). Output `outputs/2026-06-12_energie-run8.md`.
- **Naechster Lauf:** CLT-Schallschutz (Innen-/Trennwand/Decke), F6 WP-JAZ-Matrix, Foerderung ZH
  S. 30-38 (Minergie-ECO/Solarthermie), F8 Netto-Null.

## 2026-06-11 — Run 7: Holzbau-Bauphysik (CLT) + Private Kontrolle ZH
- **+2 Destillate:** `clt-bauphysik-stora-enso` (established; Stora-Enso-Doku Kap. 1-3, S. 4-37 —
  λ_CLT 0,12, 100 mm CLT pur U ≈ 1,0, ~180 mm Zusatzdaemmung fuer U ≤ 0,17, luftdicht ab 3 Lagen
  ohne Folie n₅₀ 0,6, feuchtevariable Dampfbremse; Kap. 4 Bauteilkatalog S. 38-178 offen) und
  `private-kontrolle-zh` (established; Liste der Befugten Kt. ZH April 2025 — wer zeichnet den
  EN-Nachweis, EN-Formular-Matrix, BBV I §4-7, Minergie-Shortcut).
- **BAUHERREN-FAQ F15 neu** «Lohnt sich Massivholz (CLT) energetisch?» → 13 belegte Antworten;
  **F12 geschaerft** um die Private-Kontrolle-Mechanik. Frontmatter +2 Quellen, `last_updated`
  2026-06-09 → 2026-06-11.
- **+1 Themenartikel** `wiki/holzbau-bauphysik-clt.md` (emerging); `wiki/graue-energie.md` um die
  «Holzbau-Pointe» (Holz daemmt nicht besser — Vorteil allein graue Energie) gewachsen.
- **Curriculum A6 ✓** (CLT/Holzbau-Bauphysik), **B2 angereichert** (Private Kontrolle), M1 → 13.
  QUESTIONS E8/E9 ✓. Register (destillate-INDEX +2, wiki-INDEX +1, pdf-inventar 2×, _INGESTED 20).
- **Treue:** λ 0,12 = Produktwert EN ISO 10456 (SIA-279-Vorbehalt); EVEN-Hinweis bei Privater
  Kontrolle (seit 1.1.2026); Brandschutz/Schallschutz Holzbau verwiesen, nicht gedoppelt.
- Output: `outputs/2026-06-11_energie-run7.md`.

## 2026-06-10 — Projektvermerk: KISPI 2619 Auflage II.8 → EN-ZH/EN-105/EN-110-ZH
- **Fallanwendung in `wiki/energienachweis-zh.md`**: neuer Abschnitt «Fallanwendung — KISPI 2619
  (Bauentscheid-Auflage II.8)» mit verifizierter Formularzuordnung **II.8.a → EN-ZH** (Deckblatt/
  EVEN), **II.8.b → EN-105** (Lueftung/Klima neu), **II.8.c → EN-110-ZH** (Kuehlung/umbaubetroffene
  Anlagen). `last_updated` 2026-06-07 → 2026-06-10.
- **Lehrstueck festgehalten:** der spezialisierte Sub-Agent hatte zunaechst plausible, aber falsche
  Formularnummern erfunden; korrekt erst nach Abgleich mit dieser KB + amtlichen ZH-Quellen
  (Rule `identifikatoren-verifizieren`). Verweis auf Skill `auflagebereinigung` (Fall 2619) gesetzt.
- **Treue:** Auflagen-Wortlaut bewusst NICHT reproduziert (nur belegte Formularzuordnung);
  EN-105/EN-110-ZH waren bereits in der Tabelle «Welche Nachweise wann» belegt.

## 2026-06-10 — Run 6: graue Energie (F9) + Heizungsersatz-Verfahren ZH (F14) + Bauteilekatalog Kap. 4 + 2. Nachweis-Beispiel
- **3 neue Destillate + 1 gewachsenes**: (1) **«Betriebsenergie» / graue Energie** (Lehrmittel S. 116)
  → neues `graue-energie-betriebsenergie` (graue Energie 20-30 % der Betriebsenergie/50 J; Tragstruktur
  groesster Posten; Holz < Massiv; Lehrbeispiel 1:9); (2) **WTA-Formular waermetechnische Anlagen
  Kt. ZH 01-2024** → neues `wta-formular-zh-waermetechnische-anlagen` (Verfahren + Beilagen je
  Waermequelle, fossil-Verbot §10a, EN-LCC-ZH/EN-120; established); (3) **Enerhaus Minergie-
  Musternachweis EFH Umbau** → neues `enerhaus-minergie-nachweis-efh-umbau` (Systemnachweis, WRG-Hebel
  70→60 kWh/m²); (4) **Bauteilekatalog (BFE 2002) gewachsen** um **Kap. 4 Standardaufbauten** (Boeden
  B1-B21 / Waende W1-W26) → established, schliesst E2.
- **FAQ +2 neu**: **F9** «graue Energie / Sanieren vs. Neubau» und **F14** «Heizung ersetzen — was
  einreichen, ist fossil erlaubt?». FAQ nun **12 belegt** (F1-F5, F7, F9, F10, F11, F12, F13, F14).
- **+1 Themenartikel** `wiki/graue-energie.md` (emerging); gewachsen: `heizleistung-und-waermeerzeuger`
  (Abschnitt Heizungsersatz-Verfahren ZH).
- **Register**: INDEX destillate (+3, 18 total) / wiki (+1), QUESTIONS (E2 ✓, E6/E7/E-F), pdf-inventar
  (3× [x]), curriculum (A1/B6 vollst., D2/D4/M1), _INGESTED (+3). Output `2026-06-10_energie-run6.md`.
- **Treue**: Lehrmittel-Grobwerte + 2010er-Beispiel mit ⚠ markiert; KBOB/SIA 2032 als fehlende
  belastbare graue-Energie-Quelle benannt; Brandschutz→`brandschutz`, Energierecht→`baurecht` verwiesen.

## 2026-06-09 — Run 5: Minergie 2023-Update (THGE) + EN-2 Waermebruecken/EBF + Naturdaemmstoffe/VIP + sommerl. Waermeschutz
- **3 PDFs destilliert/aktualisiert**: (1) **SIA 2001** vollst. (S. 15-17: Holzfaser/Zellulose/
  Holzwolle/**VIP λ 0,009**/WDVS) → `sia-2001-waermedaemmstoffe-lambda` (established); (2) **EnFK EN-2
  «Waermeschutz von Gebaeuden»** (Feb 2013, vollst.) → neues `enfk-en-02-waermeschutz-2013`
  (Nachweiswege, Waermebruecken Ψ, **EBF-Definition**, sommerl. Waermeschutz; established); (3)
  **Minergie «Besser planen» Ueberarbeitung 09/2023** → `minergie-besser-planen-bauen` auf Stand 2023
  gehoben (Kennzahl **51/46/29**, neues Kriterium **THGE 11 kg CO₂/m²·a**, Wetterdaten 2035).
- **FAQ +1 neu, +1 geschaerft**: **F11** «Hitzeschutz im Sommer» neu belegt (g-Wert 0,1-0,15,
  aussenliegend/beweglich, Speichermasse, Nachtauskuehlung); **F5** Minergie auf Stand 2023
  aktualisiert (55/50/35 → 51/46/29 + THGE). FAQ nun **10 belegt** (F1-F5, F7, F10, F11, F12, F13).
- **+1 Themenartikel** `wiki/sommerlicher-waermeschutz.md` (emerging); gewachsen:
  `minergie-standards` (Stand 2023 + THGE), `daemmstoffe-lambda` (Naturdaemmst./VIP/WDVS, established),
  `u-werte-grenzwerte-ch` (EBF-Def. + **Versionsabgleich EN-2 2013 ↔ EN-102 2018** geflaggt).
- **Widerspruch dokumentiert (E-D8):** Q_h,li-Grundwerte zwischen EN-2 (2013) und EN-102 (2018)
  identisch; abweichend Fenster-Grenzwert (1,3→1,0), Umbau-Faktor (1,25× ↔ 1,5×) und Ψ-Fensteranschlag
  (0,10 ↔ 0,15) — als zu pruefen markiert statt still verrechnet.
- Register: INDEX (destillate +1, wiki +1), pdf-inventar (3× [x]), QUESTIONS (E1 ✓, E3/E-D8/E-F ~),
  curriculum (A3/B3 vollst.), _INGESTED (15 Destillate), Output `2026-06-09_energie-run5.md`.

## 2026-06-08 — Run 4: Heizleistung/Waermeerzeuger + SIA-380/1-Standardnutzung + Foerderung ZH 2026
- **4 PDFs + 1 Web-Quelle destilliert**: BFE «Ermittlung der Waermeerzeugerleistung» (Nr. 2781,
  12.2015, vollst., established), SIA 380/1 Standardnutzungswerte Tab. 24/25 (Warmwasser Qww,
  established), Rechenbeispiel Monatsbilanz Heizwaermebedarf (Buero ZH, established), Grundsaetze
  energieeffizientes Bauen (emerging), **Foerderprogramm Energie Kt. ZH 2026** (Web zh.ch,
  Version 01.01.2026, S. 1-29, established).
- **FAQ +2 belegte Antworten**: **F7** (Foerderbeitraege Kt. ZH 2026 mit CHF-Tabelle + Datenstand),
  **F13** (Wie gross muss meine Heizung sein? — spez. Heizleistung). FAQ nun **9 belegt** (F1-F5, F7,
  F10, F12, F13).
- **2 neue Themenartikel**: `wiki/foerderung-energie-zh.md`, `wiki/heizleistung-und-waermeerzeuger.md`.
- **Datenstand-Web (2026-06-08):** Foerdersaetze ZH 2026 verifiziert aus amtlichem PDF —
  Luft-Wasser-WP CHF 2'900, Erdsonden-/Grundwasser-WP CHF 6'800, Fernwaerme CHF 5'200 (je ≤15 kWth),
  Daemmung CHF 40/m² (+Bonus 60/m²), GEAK Plus CHF 1'000/1'500; ⚠ Rahmenkredit 2026-29.
- Register: INDEX (destillate +5 / wiki +2), QUESTIONS (E-D7/E-H1/E-H2 ✓), pdf-inventar (4× [x]
  + Web-Sektion), curriculum (A2 vollst., B5/D3 ✓), _INGESTED (14 Destillate). Output: `outputs/2026-06-08_energie-run4.md`.

## 2026-06-07 — Run 3: PV-Typen + EN-ZH-Nachweis (EVEN) + λ-Werte Daemmstoffe
- **3 PDFs destilliert**: TEC21-Dossier «Solares Bauen» 5/2012 (PV-Typen kristallin/Duennschicht/
  Graetzel/Hybrid + Integration, established), EN-ZH-Nachweis-Deckblatt (Baudir. ZH Juli 2022,
  established), SIA 2001 Waermedaemmstoffe (λ-Bandbreiten je Materialklasse, emerging).
- **FAQ +2 belegte Antworten**: F4 (welcher PV-Typ), F12 (welche Energienachweise im Kt. ZH);
  F10 um EVEN-Datenstand ergaenzt. FAQ nun **7 belegt** (F1-F5, F10, F12).
- **3 neue Themenartikel**: `wiki/pv-solar-technologien.md`, `wiki/energienachweis-zh.md`,
  `wiki/daemmstoffe-lambda.md`.
- **Datenstand-Web (2026-06-07):** Kt. ZH Energienachweis seit **1.1.2026 elektronisch ueber EVEN
  (energievollzug.ch)** — PDF-Formulare abgeloest; ⚠-Markierung gesetzt. Foerderprogramm ZH 2026 unveraendert.
- Register: INDEX (destillate +3 / wiki +3), QUESTIONS (E1/E5/E-D6 ✓, neu E-D8), pdf-inventar
  (3× [x] + Dublette), curriculum (B1/C1 ✓), _INGESTED (9 Destillate).
- Output: `outputs/2026-06-07_energie-run3.md`.

## 2026-06-06 — Run 2: U-Wert-/Qh-Grenzwerte + Minergie + PV-Pflicht belegt
- **4 PDFs destilliert** (3 established, 1 emerging): EN-102 Waermeschutz (EnFK Dez 2018, vollst.),
  EN-104 Eigenstromerzeugung (10 W/m²-Regel), Minergie-Wissen «Besser planen», Bauphysik
  Heizwaermebedarf-Kennwerte (Gebaeudehuellzahl).
- **FAQ +3 belegte Antworten**: F3 (U-Wert Pflicht/empfohlen), F5 (Minergie vs. Gesetz),
  F10 (PV-Pflicht/Groesse). FAQ nun 5 belegt.
- **2 neue Themenartikel**: `wiki/u-werte-grenzwerte-ch.md`, `wiki/minergie-standards.md`.
- Bestehendes SIA-380/1-Destillat auf established gehoben + querverlinkt.
- Datenstand-Web: Kt. ZH EnerG seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025, ZH-Umsetzung
  ausstehend — ⚠-Markierung gesetzt.
- Register: INDEX (destillate/wiki), QUESTIONS, pdf-inventar (4× [x]), curriculum, _INGESTED.
- Output: `outputs/2026-06-06_energie-run2.md`.

## 2026-06-05 — KB Energie angelegt (strategischer taeglicher Loop)
- Eigene KB `wissen/energie/` mit **Destillate-Layer** (PDF→MD) erstellt.
- Seed-Inventar `training/pdf-inventar.md`: 30 Prioritaets-Quellen aus PL-04 erfasst.
- **2 echte Destillate** aus real gelesenen PDFs:
  - `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` (BFE 2002, S. 1-10).
  - `destillate/sia-380-1-heizwaermebedarf-berechnung.md` (Qh-Formel + 11 Schritte).
- `wiki/BAUHERREN-FAQ.md` mit 2 belegten Antworten (F1 Daemmung-Nutzen, F2 Effizienz-Prioritaet)
  + Backlog F3-F9.
- Schema/Register: `CLAUDE.md`, `training/PROGRAMM.md` (taeglich), `training/curriculum.md`,
  `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `outputs/`.
- Scheduled Task `energie-training` (taeglich) angelegt; Agent `energie-berater` auf diese KB
  ausgerichtet; Bruecke aus `wissen/planungsgrundlagen/wiki/energie-uebersicht`.
