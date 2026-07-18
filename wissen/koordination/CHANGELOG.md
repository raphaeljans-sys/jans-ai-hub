# CHANGELOG — KB koordination (Wissens-Chef)

Jede Aktion der Koordinationsinstanz, datiert, neueste zuoberst.
Im Zweifel, was geaendert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-07-19 — Run 9 (3 Paare am energie-Run-79/80-Stoff; 3 Leser + 13 adversariale Verifier)
- Gedrosselter Lauf (Rule 260714): Workflow-Fan-out mit 3 Lese-Agenten, danach ein Refuter je Befund.
  **16 Befunde gemeldet, 12 CONFIRMED, 4 REFUTED.** Vier Befunde von hoher Schwere.
- **energie ↔ baurecht (erstmals materiell geprueft):** zwei falsche Rechtszuschreibungen aufgedeckt,
  beide bis in die Bauherren-FAQ durchgeschlagen. (1) Die **5-Jahres-Betriebsoptimierung** wurde als
  geltendes ZH-Recht (§ 13d EnerG) gefuehrt — der amtliche Volltext kennt nur die einmalige
  Erstoptimierung «innerhalb dreier Jahre nach Inbetriebsetzung», §§ 48a-48c BBV I enthalten keine
  Periodizitaet; die fuenf Jahre sind **MuKEn-Musterrecht** (Art. 7.4/8.4). (2) Das
  **Fossilfrei-Gebot Neubau** stand durchgehend an **§ 10a EnerG** statt an **§ 11 Abs. 1 EnerG**
  (§ 10a = Effizienz-/Delegationsnorm) — 8 Fundstellen korrigiert. Dazu (3) eine Bring-Schuld
  geschlossen, deren Antwort seit Wochen im Haus lag: der 200'000-kWh-Schwellenwert steht woertlich
  in **§ 48c Abs. 1 lit. a BBV I** (`baurecht/raw/260607_amtlich_zh_bbv1.md`) — die geplante
  AWEL-Anfrage haette nichts Neues erbracht. (4) In `baurecht` selbst die EnerG-Nummerierung vom
  Buchstand 2019 («§§ 8a/9–13») auf Nachtrag 129 nachgefuehrt (§ 13 aufgehoben); § 8a bewusst NICHT
  gestrichen (raw deckt ihn nicht ab → offener Punkt E2).
- **energie ↔ normen:** das am Vortag entstandene Naturdaemmstoff-Destillat behauptete einen
  **Bemessungswert-Zuschlag, den SIA 279:2018 fuer den Regelfall ausdruecklich ausschliesst**
  (Ziff. 3.2.2.1 — kein Zuschlag; Zuschlag nur Ortdaemmstoffe, Ziff. 3.2.2.2). Der als offen
  gefuehrte Punkt «Zuschlagsformel» war eine **Scheinluecke**. Korrigiert, verlinkt,
  RF-Terminologie nach VKF-BRL 13-15 Ziff. 2.1 richtiggestellt, Negativbefund Baustroh praezisiert.
  Ausserdem die **SIA-2024-Bring-Schuld verengt** (freie amtliche Interims-Quelle aus energie Run 80
  ins normen-REGISTER eingetragen).
- **energie ↔ planungsgrundlagen:** VHKA beidseitig verlinkt (bisher null gegenseitige Verweise),
  WDV-Verweis ergaenzt (grep «LS 700.211» in pg: 0 Treffer), EN-120-Zeile auf das energie-Destillat
  gezeigt.
- **VERIFIKATION HAT WIEDER GEWIRKT (4 von 16 widerlegt):** u.a. war «Tabelle 6 der SIA 380/1» keine
  Norm-, sondern eine **Erlass**-Aussage (WDV § 2 Abs. 1 lit. b, vollstaendig belegbar); der
  Vorwurf einer falschen SZ-VHKA-Aussage scheiterte an der eigenen Praemisse (SZ ist bei der
  Minergie-Befreiung **strenger** als ZH); und der Befund «planungsgrundlagen laesst die
  5-Jahres-Pflicht weg» war **genau umgekehrt** richtig — zwei Agenten sind aus entgegengesetzter
  Richtung ueber dieselbe Stelle gestolpert, erst die Verifikation hat die Richtung geklaert.
- **Struktur-Muster, 4. Fundort: «neben der besseren Quelle gebaut».** Run 79 destillierte aus
  Shop-Metadaten und einer DE-Sekundaerquelle, obwohl der Normvolltext im JANS-Bestand lag und
  6 Tage zuvor destilliert worden war — die eigene KB kannte den Weg sogar
  (`energie/wiki/daemmstoffe-lambda.md` verweist darauf). Diesmal blieb es **nicht** bei einem
  fehlenden Link, sondern erzeugte eine fachlich falsche Aussage. Empfehlung: Pflicht-grep nach der
  Norm-/Erlassnummer ueber die anderen KBs, bevor ein Destillat neu angelegt wird.
  **Zweites, neues Muster: «Rechtsanker driftet vom Erlass weg»** — Fachaussage richtig, Paragraf
  oder Geltungsraum falsch; vererbt sich still ueber viele Dateien (8 bzw. 3 Fundstellen).
- **Register entruempelt:** die Sektion «Noch nie gepruefte Paare» war eine Karteileiche — 4 von 6
  Zeilen betrafen laengst gepruefte Paare (energie ↔ baurecht sogar doppelt gefuehrt). Neue Regel
  im Register verankert: ein Paar wandert mit seinem datierten Prueflauf automatisch aus der Liste.
- **1 NEUER OFFENER ENTSCHEID (E1):** Doppelspur Energierecht ZH — `energie` gibt die Fuehrung
  ausdruecklich an `baurecht` ab, fuehrt aber in drei Rechts-Destillaten dieselben ZH-EnerG-§§ auf
  Absatzebene. Heute deckungsgleich; Risiko ist die naechste EnerG-Revision. Trimmen oder bewusst
  belassen? Weiter offen: E2 (§ 8a EnerG), VKF-16-15-Matrix (Run 8), BSR-2022-Volltext (Run 8),
  normen-Dublette Solaranlagen (Run 6), GSchV-Doppelspur (Run 7).
- Bericht: `outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Run 8 (3 Paare am neuen Run-51/52/78/79-Stoff; 3 Leser + 2 adversariale Verifier)
- Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit 3 Lese-Agenten, danach 2 Refuter mit
  Widerlegungsauftrag an den Original-PDFs. **5 Befunde gemeldet, 3 CONFIRMED, 2 REFUTED.**
- **normen ↔ planungsgrundlagen (VKF-BRL 16-15):** die Ausgangsvermutung (Ausgabenstreit 2022 vs.
  2015/2017) war falsch — dahinter aber der schwerste Befund des Laufs: `normen` fuehrte die
  **Personenbelegung Verkauf** (0.5/0.35/0.25 P./m2) als `established` ohne Vorbehalt, obwohl sie
  per **Beschluss TKB 09.06.2021** ersatzlos gestrichen und durch eine Betriebstyp-Matrix ersetzt
  wurde (Fachmaerkte 0.10 · Supermaerkte 0.38/0.15 · hochfrequentierte 0.45/0.21). Am Original
  beidseitig volltext-verifiziert. Der Wert geht in Fluchtwegbreiten ein — Fehlerwirkung bis Faktor 5.
  → Warnkasten + Matrix ins Destillat, Synthese-Zeile umgestellt, REGISTER + Status nachgezogen,
  3 QUESTIONS-Eintraege. Gremiums-Korrektur in pg: **ABSV** statt IOTH (22.03.2017, am Original).
- **planungsgrundlagen ↔ baurecht (OEREB/WWG-Nachlauf):** CONFIRMED — Thema 190 fuehrte
  `LS 724.112 § 15` (HWSchV, aufgehoben 01.06.2026) ungeflaggt, INDEX trug die Repeal-Flags nicht nach.
  → Zeile korrigiert (§ 19 WsG / § 11 WsV), Warnkasten, INDEX nachgezogen, Rueckverweis-Block in
  baurecht (Verlinkung war einseitig). Run 51 selbst: kein Befund.
- **energie ↔ normen (Ψ/MuKEn Modul 7):** CONFIRMED stale — `wiki/innendaemmung` fuehrte den
  Negativbefund zur Massivdecken-Ψ-Zahl weiter, obwohl E93 am selben Tag geschlossen wurde
  (Destillat aktualisiert, Themenartikel nicht mitgezogen). → nachgezogen, Punkt geschlossen,
  Backlink. Flags fuer **SIA 180-C2:2020** und **SIA 2024:2019 vs. 2021+C1:2024**.
- **VERIFIKATION HAT ERNEUT GEWIRKT (2 von 5 widerlegt):** (1) die «LS-724.11-Kollision» ist **kein
  Fehler**, sondern eine amtlich belegte **Nummern-Wiederverwendung** (WWG bis 31.05.2026, WsV ab
  01.06.2026) — statt einer «Korrektur» nur ein klarstellender Vermerk; (2) die Zuschreibung
  «Ψ ≤ 0,20 (SIA 380/1)» ist **sachlich gedeckt** (EN-102-Fusszeile «Basis: Norm SIA 380/1, Ausgabe
  2016»), die normen-Sperre betrifft ihrem Wortlaut nach nur Q_H-/U-Werte und Gebaeudekategorien.
  Ohne diese Stufe waeren zwei korrekte Stellen «wegkorrigiert» worden.
- **Zwei neue Struktur-Muster** (im Register vermerkt): **(A) «Uebergabe verpufft im abgebenden KB»**
  — zwei Fundorte in einem Lauf (16-15-Fassungsflag seit Run 52 nur in pg; SIA-2048-Uebergabe nur in
  energie, grep in normen: 0 Treffer). Regel: Uebergaben gehoeren in die QUESTIONS der EMPFAENGER-KB.
  **(B) «Fassungspflege ist der blinde Fleck der Destillate»** — Verifikationen pruefen gegen dieselbe
  Datei, aus der destilliert wurde, und finden eine juengere Fassung im Bestand strukturell nie.
  Dazu die **dritte Fuehrungs-Umkehr in drei Laeufen** (nach GreenPV/Run 6, SIA 380/1/Run 7).
- **2 NEUE OFFENE ENTSCHEIDE FUER RAPHAEL:** (a) VKF-16-15-Matrix nach `normen` uebernehmen + pg §5am
  auf Fundstellen-Verweis kuerzen (Umstrukturierung ueber KB-Grenzen); (b) Volltext-Destillation der
  2022er-Fassung (Deltas ABSV 2017 + Fehlerkorrektur Ziff. 3.7 ungeprueft, dort zusaetzlich eine
  offene Ungereimtheit Geschoss- vs. Brandabschnittsflaeche). Weiter offen: normen-Dublette
  Solaranlagen (Run 6), GSchV-Doppelspur (Run 7), Bring-Schulden WsG-§/SIA-380-1-Volltext/C2:2020.
- Bericht: `outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-17 — Run 7 (3 Paare am neuen Run-48/76/15-Stoff; 3 Leser + Eigen-Verifikation an den Quellen)
- Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit 3 Lese-Agenten; die adversariale Verifikation
  der Pair-A-Befunde lief nach einem 529-Abbruch des Verifier-Agenten **inline an den Primaerquellen**
  (Zitatstellen + baurecht-raw-Konkordanztabelle) — alle vier CONFIRMED, keine Ueberkorrektur.
- **baurecht ↔ planungsgrundlagen ↔ energie (WWG/HWSchV → WsG/WsV):** die **Run-5-Bring-Schuld ist
  geschlossen** — baurecht hat heute (Buch-Run 48) die Aufhebung von HWSchV **und** WWG per 1.6.2026
  amtlich belegt (Konkordanztabelle). Drei planungsgrundlagen-Artikel hinkten hinterher: falsche
  «§ 22 WWG in Kraft»-Aussage, fehlende Flags, veraltete §-Nummer (§ 15d statt § 15k), entfallenes
  eingedolt-11-m-Mass, 0,5-ha-Fehlzuordnung, ungeflaggte HWSchV. → alle vier autonom korrigiert/geflaggt.
- **normen ↔ energie (SIA 380/1:2016):** 0 Zahlen-Widerspruch; Fuehrungs-Anomalie (normen fuehrt die
  Werte als P1-Blocker «unerschlossen», energie hat sie via EnFK EN-102 established). → bidirektionale
  Querbezuege, P1-Blocker auf die zitierfaehige Norm-Fundstelle relativiert; ein bereits behobener
  Transkriptionsfehler-Hinweis im muken-Destillat auf «erledigt» nachgezogen.
- **normen ↔ baurecht (SIA-Vertrags-/Honorarnormen):** legitimes **Null-Ergebnis** — keine
  Ueberschneidung (baurecht fuehrt keinen Honorar-/Vertragsnorm-Stoff); die zwei normen-Richtigstellungen
  (KBOB statt SIA 2009; VKF-16-15 Ausgabe 2015/Fassung 2017) sind konfliktfrei. 1 optionaler SIA-416-Querlink.
- **Muster (Beobachtung):** planungsgrundlagen schreibt kantonales Erlassrecht (HWSchV/WWG) materiell
  fort, ohne es aus der fuehrenden KB baurecht zu ziehen — analog zum wiederkehrenden normen-referenz-Muster,
  hier fuer Gesetzesrecht. Strukturbefund fuer den Synergie-Orchestrator.
- **Offene Entscheide fuer Raphael:** keine NEUEN. Weiter offen: die Run-6-Dublette in `normen`
  (`vkf-merkblatt-2001-15-solaranlagen` / `vkf-brm-2001-15-solaranlagen`, dieselbe PDF — Merge braucht Freigabe).
  Loop-Bring-Schulden: WsG-§ fuer § 22 WWG, GSchV-Doppelspur-Trim, SIA-380/1-Volltext + C1:2019.
- Bericht: `outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-16 — Run 6 (3 Paare am neuen Run-50/73/74-Stoff; Fan-out 3 Leser + 2 adversariale Verifier)
- Geprueft wurde der seit Run 5 (gestern) neu gewachsene Stoff: energie **Run 73/74** (MuKEn-2025-Volltext,
  sommerlicher Waermeschutz SIA 180, Holzfeuerung, BHKW), planungsgrundlagen **Run 50** (GreenPV-
  Schlussbroschuere §6b), normen Mini-Run 30/31. Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit
  3 Lese-Agenten + 2 Refutern statt grossem Workflow.
- **energie ↔ normen ↔ planungsgrundlagen (SIA 180):** 1 echter Sachfehler (V3-Kriterium der Norm
  zugeschrieben statt der Stadt-ZH-Abweichung) + 1 unnoetige Wissensluecke (gtot-Werte lagen in normen
  bereit, energie fuehrte sie als «offener Punkt / Normtext kostenpflichtig») + Verfahrens-Doppelspur
  (EN-ZH/EVEN) + normen-REGISTER-Selbstwiderspruch (SIA 180 «1999/vermutlich» vs. «2014»). → korrigiert,
  Fig.-12-Formeln uebernommen, 2 Querbezug-Bloecke, REGISTER auf «2014 BESTAETIGT».
  **Nebenfund: Korrigenda C2:2020 existiert** (Inhalt offen).
- **energie ↔ baurecht (MuKEn Modul 11):** Luecken beidseitig — energie ohne ZH-Kontext (35 cm gelten in ZH
  seit 1.4.2013) mit unbelegtem «seit 2005»; baurecht `nutzungsziffern` fuehrte die Kappung **gar nicht**,
  obwohl das eigene Buch-Destillat sie kennt. → energie-Zeile skopiert, baurecht-Sektion ergaenzt
  (§§ 256 II/257 III/258 IV/253a PBG, § 12 III ABV), Modul-12-Querbezug gesetzt.
- **energie ↔ planungsgrundlagen (GreenPV):** Doppelspur derselben Studie + **Fuehrungs-Umkehr**
  (planungsgrundlagen hat die Schlussbroschuere 2024 ausgewertet, energie steht auf dem 2022er-Zwischenstand
  mit 3 bereits beantworteten «offenen Punkten»); VKF-Staffel in §6b ohne Cross-Link (**3. Fundort** des
  Musters); Divergenz −14 % (§6) vs. −20 % (§6b). → Aktualitaets-Flag, bidirektionale Querbezuege,
  normen-Querbezug, Divergenz-Flag.
- **VERIFIKATION HAT GEWIRKT:** Der zuerst gemeldete schwerste Befund («100 h/Fig. 4» sei eine falsche
  SIA-180-Zuschreibung) wurde vom Refuter **WIDERLEGT** — er beschaffte die amtliche Stadt-ZH-Wegleitung und
  die HBA-Richtlinie im Volltext: Fig. 4 ist dort eine **bewusste Abweichung**, die Zahlen sind korrekt.
  Ohne diese Stufe waeren amtlich belegte Werte «wegkorrigiert» worden. Ebenso schrumpfte der
  MuKEn-Modul-11-Befund von «Fehler» auf «Praezisierung» (Muster-Ebene nicht widerlegbar).
- **1 OFFENER ENTSCHEID FUER RAPHAEL:** Dublette in `normen` — `vkf-merkblatt-2001-15-solaranlagen` und
  `vkf-brm-2001-15-solaranlagen` destillieren dieselbe PDF. Merge/Loeschung ist destruktiv → nicht autonom.
- Bericht: `outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-15 — Run 5 (gedrosselter Inline-Lauf, Rule 260714; 2 Nahtstellen am neuen Run-46/49/72-Stoff)
- Inline-Pruefung (kein Fan-out, drossel-konform) der seit Run 4 neu gewachsenen ueberschneidungs-
  gefaehrdeten Nahtstellen (energie Run 72 Grundwasser/PV; planungsgrundlagen Run 49 GreenPV/ZSV;
  baurecht Run 46 LSV/Rechtsschutz).
- **energie ↔ planungsgrundlagen (PV-Einmalverguetung):** Doppelspur bestaetigt — planungsgrundlagen
  `energie-betriebsenergie-pv-wirtschaftlichkeit` §1 leitet die EIV-Foerdersystematik nochmals her, die
  energie `pv-einmalverguetung-bund-bfe` (established) fuehrend traegt. 0 Sachwiderspruch (Saetze
  konsistent). → bidirektionale Querbezuege gesetzt; §1-Trim als offen markiert.
- **baurecht/planungsgrundlagen ↔ energie (WWG→WsG):** Veraltet-Cross-KB bestaetigt — beide zitieren das
  ZH-WWG (1991) als geltend, energie belegt primaerquellen die Abloesung durch das WsG (12.12.2022) per
  1.6.2026 (§ 126 WsG). → Aktualitaets-Flags in 2 current-Rechtslage-Wiki-Artikeln (baurecht
  `baureife-und-erschliessung`, planungsgrundlagen `recht-norm-regenwasser-gewaesserraum-zh`); Buecher-
  Destillate quellentreu unangetastet.
- Beide Befunde primaerquellen-/quervergleich-verifiziert. **Offene Punkte (nicht autonom):** (a) §1-Trim
  planungsgrundlagen PV; (b) WsG-Volltext + §-Mapping WWG→WsG, dann current-Rechtslage-§§ nachziehen +
  planungsgrundlagen `kartenportale-naturgefahren-objektschutz` (§ 22 WWG) flaggen. **KEINE offenen
  Entscheide fuer Raphael** (nur Loop-/Bring-Schulden). Bericht: outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — SYN-02 Spec-Interview vorbereitet (Task `syn02-spec-anstoss`)
- Spec-Schritt 1 (Ziel aufdecken) fuer den typologischen KI-Entwurfsprozess vorbereitet:
  Interview-Entwurf mit 9 Schluesselfragen (E1–E9, je mit recherchierter Faktenlage +
  Default-Vorschlag) unter `wissen/spec/outputs/2026-07-15_syn-02-typologischer-
  entwurfsprozess-spec-interview/`.
- Zentraler Befund des Scans: `volumen_generator.py` liest die Parameter-Set-JSONs NICHT
  (nur CLI-Flags geschosse/hoehe/grenzabstand) und baut einen einfachen Quader — genau die
  SYN-02-Luecke; Spannung zu Rule 260627b (gegliederter, ausgerichteter Koerper). Schulbau
  hat die DNA-Prio, aber noch kein Parameter-Set (nur Healthcare/Wohnen v1.0).
- Kurze Info-Mail an rj@ gesendet (Start des Interviews auf Zuruf «Spec SYN-02 starten»).
  KEIN Interview gefuehrt, KEIN Bau begonnen — nur Vorbereitung.

## 2026-07-15 — Entscheide Raphael zu Lauf 01 umgesetzt (Klick-Freigaben)
- **S5 Wettbewerbs-Fabrik** + **S6 Energie-Vorabklaerung** in `services/KATALOG.md`
  aktiviert (SYN-03/SYN-07 → Status «umgesetzt»).
- **SYN-02** freigegeben: Spec-Start nach Limit-Reset; One-Time-Task `syn02-spec-anstoss`
  (20.07.2026 12:15) bereitet das Spec-Interview vor (nur Vorbereitung, Interview
  interaktiv). Pendenz im Fristen-Register vermerkt.
- Scheduled Task `synergie-lauf-monatlich` angelegt (1. des Monats 04:40, Nachtfenster,
  Erstlauf 01.08.2026 — nach dem Reset, drossel-konform).

## 2026-07-15 — Synergie-Orchestrator eingerichtet + Synergie-Lauf 01 (Auftrag Raphael)
- Neuer Skill `skills/synergie-orchestrator/SKILL.md` angelegt (Struktur-Aufsicht: prueft
  alle Harnesse gegenseitig auf Synergien, 6 Pruef-Fragen, Geschaeftsmodell-Ableitung);
  in CLAUDE.md registriert. Abgrenzung zu hub-chef/wissens-chef/harness-review im Contract.
- Neues Register `SYNERGIE-REGISTER.md` in dieser KB: 12 Erstbefunde SYN-01…SYN-12
  (u.a. Kennwerte-Doppelrechnung, Entwurfs-DNA→Volumen-Pipeline-Luecke, 4 Service-
  Kandidaten als Katalog-ENTWUERFE). Laufbericht `outputs/2026-07-15_synergie-lauf-01.md`.
- Geschaeftsmodell-Konzept GM1–GM6 erstellt:
  `docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/` (MD+DOCX+PDF, korrektur-geprueft).
- Gedrosselter Inline-Lauf (Rule 260714, kein Fan-out); KEIN neuer Scheduled Task angelegt.

## 2026-07-14 — Run 4 (3 Paare am neuen Run-48/69-Stoff; gedrosselter Lauf gemaess Rule 260714)
- Fan-out ueber 3 ueberschneidungsgefaehrdete Paare mit dem seit Run 3 neu gewachsenen Stoff
  (planungsgrundlagen Run 48 «Normkonzept BSV 2026»; energie Run 69 «SIA 2024 Gesundheitsbau /
  Fernwaerme / PV / Netto-Null»).
- **normen ↔ energie:** 2 Ausgaben-Divergenzen bestaetigt (SIA 2024: normen 2006 vs. energie 2021;
  SIA 382/1: normen 2014 vs. energie 2025) — energie ist aktuell, normen (fuehrend) ueberholt.
  WebSearch-verifiziert am SIA-Shop. → 2 Flags im normen-REGISTER + 3 Querbezug-Bloecke in energie.
  Offen: 2 Re-Destillate (Bring-Schuld normen).
- **normen ↔ planungsgrundlagen:** 0 Sachwiderspruch; §1a Normkonzept BSV 2026 fuehrt VKF-Primaerstoff
  in der falschen KB (normen fuehrend, aber ohne Destillat). → Fuehrungs-Pointer gesetzt. Offen (heikel):
  normen destilliert, dann §1a-Trim.
- **energie ↔ grobkosten/immo:** Metrik-Ebenen sauber getrennt, 0 Widerspruch. → bidirektionale
  «nicht additiv»-Querbezuege (Doppelzaehlungs-Guard) gesetzt. Bereinigt.
- Alle Editions-Befunde adversarial/extern verifiziert. **Offene Entscheide fuer Raphael: keine** —
  nur 3 Loop-Bring-Schulden (2 Re-Destillate normen + 1 §1a-Trim nach Destillat). Bericht:
  outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Run 2 (Nachverifikation W3 + Paar auflagebereinigung↔baurecht) + E1 entschieden
- E1 (m²↔m³-Faktor) entschieden: kontextabhaengig, Regelgeschoss 0.70 / Gesamtgebaeude 0.60-0.61 (kanonisch fuer die Kostenbruecke), in grobkosten + immobilienbewertung verankert.
- W3 (Baupreisindex-Stand) adversarial WIDERLEGT: grobkosten-Seed legitim; Teuerungs-Check-Verlinkung gesetzt.
- Neues Paar auflagebereinigung↔baurecht: konsistent, 1 Widerspruch (Baubeginn) WIDERLEGT/praezisiert, 4 Backlinks gesetzt.
- Keine offenen Entscheide mehr aus Run 1/2. Bericht: outputs/2026-07-12_wissens-chef-run2.md.

## 2026-07-12 — Run 1 (Erstlauf, Register angelegt)
- KB `koordination` angelegt (CLAUDE.md, QUERBEZUEGE.md, CHANGELOG.md, outputs/).
- Erster Workflow-Fan-out ueber die 5 ueberschneidungsgefaehrdeten KB-Paare
  (baurecht↔planungsgrundlagen, normen↔baurecht, energie↔planungsgrundlagen,
  grobkosten↔immobilienbewertung↔kostenschaetzung-Ref, rotierend twin↔spec).
- Befunde + Aktionen: siehe `outputs/2026-07-12_wissens-chef-run1.md`.
