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

## Gepruefte Paare

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

- kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (Kunden-Kontext)
- architekten-synobsis ↔ entwurfs-referenzen (Referenz-/Entwurfswissen)
- grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref (Kennwerte, seit Run 3 stabil — Delta-Check bei neuem Fall)

*Ausgetragen 20.07.2026 (Run 10, bereits gepruefte Paare):* kunde-bopp ↔ firmengruendung-ch
(→ Run 10, Erst-Check = Null-Ergebnis, disjunkt).
*Ausgetragen 19.07.2026 (bereits gepruefte Paare):* energie ↔ baurecht (mehrfach, → Run 3/Run 6/Run 9/Run 10) ·
immobilienbewertung ↔ grobkosten vertieft (→ Run 3, bereinigt) · normen ↔ energie SIA 380/1,
SIA 180/181 (→ Run 3 + Run 7; offener Restpunkt SIA-181:2020-Destillat bleibt dort vermerkt).
