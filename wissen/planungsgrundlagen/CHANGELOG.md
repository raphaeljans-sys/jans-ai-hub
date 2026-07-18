# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-07-19 — Training Run 53 (Recht & Norm + Energie, Token-Vollgas, OneDrive-Ausweich-Lauf)
- **Blocker:** der OneDrive-Mount war fuer diesen Lauf **systemisch** durch `EDEADLK` gesperrt —
  betraf auch bereits mehrfach erfolgreich gelesene Referenzdateien (`EN-ZH.pdf`,
  `IVHB_Leitfaden...pdf`), nicht nur die seit Run 52 bekannten Brandschutz-Kandidaten. Lauf
  deshalb auf WebSearch/WebFetch-Refresh-Arbeit umgestellt (PROGRAMM.md Schritt 3a deckt das).
- **NEU [[recht-norm-pbg-revision-bauen-im-bestand]]:** bisher unerfasster Rechtsetzungsstrang —
  PBG-Revision "Erleichtertes Bauen im Bestand", neue Bestimmung **§ 220a E-PBG**
  (Abweichungsanspruch Grenzabstand/Fassadenhoehe/-laenge/Vollgeschosse bei neuen Wohneinheiten
  innerhalb der bestehenden Ausnuetzung) + § 357 E-PBG-Ergaenzung + Streichung Mehrlaengenzuschlag
  ABV §§21/23/24. Primaerquelle (Vorentwurf + erlaeuternder Bericht, RRB 827/2025) via WebFetch
  vollstaendig gelesen. `status: emerging` (Vernehmlassung abgeschlossen, noch kein geltendes Recht).
- **`recht-norm-quellenlandkarte.md`:** LSV-Novelle 01.04.2026 inhaltlich geschlossen (Art. 22
  USG/Art. 31 LSV, KWL als Schallschutzmassnahme) — war seit Run 23 nur als "Details offen"
  gefuehrt. Denkmalschutz-PBG-Revision um RRB-Nr. 678/2026 + Motion/Postulat-Hintergrund ergaenzt.
  **NEU Abschnitt § 49b PBG:** vollstaendig ausgewertet (75 %/650 m²-Quote, UmV 17.09.2025,
  Referendum 14.06.2026 mit 57.14 % angenommen, in Kraft) — schliesst den seit Run 47/48 offenen
  M3-Punkt ab. Veraltete SZ-GFZ/BMZ-Kurzformel im INDEX.md korrigiert (Formel war seit Run 18
  inhaltlich ueberholt, INDEX aber nie nachgezogen).
- **`energie-energienachweis-zh-formulare.md`:** Fehl-Cross-Referenz aus Run 47 korrigiert — der
  § 49b-PBG-Nebenfund war dort weiterhin mit "Parkplatzvorschriften" verknuepft, obwohl Run 48
  den Themenbezug bereits als falsch erkannt hatte (Korrektur hatte diesen Artikel nie erreicht).
  Solarpflicht-Norm-Stelle **§ 10c EnerG** (nicht "§ 10b", wie ein Web-Treffer behauptete) gegen
  den amtlichen Volltext verifiziert — bestehende KB-Kennwerte waren bereits korrekt.
- **`energie-betriebsenergie-pv-wirtschaftlichkeit.md`:** Pronovo-Foerderstruktur-Refresh
  bestaetigt unveraendert; ein unbelegter WebSearch-Nebenfund ("Winterstrombonus ab 01.01.2026")
  gegen die Primaerquelle geprueft und **verworfen** (nicht bestaetigt).
- Bericht: `outputs/2026-07-19_training-run53.md`.

## 2026-07-19 — Wissens-Chef Run 9 (Cross-KB): Fossilfrei-Fundstelle korrigiert, drei Querbezuege gesetzt
- **§ 10a → § 11 Abs. 1 EnerG:** in der Formularmatrix (Zeile Energiebedarf) trug die
  CO₂-frei-Anforderung die falsche Fundstelle. § 10a EnerG ist die Bedarfs-/Effizienznorm, das
  Fossilfrei-Gebot steht in § 11 Abs. 1 EnerG (amtlicher Volltext, KB `baurecht`). Zeile fuehrt
  jetzt beide korrekt getrennt.
- **VHKA-Querbezug gesetzt:** die materielle VHKA-Pflicht ZH/SZ ist kanonisch in
  `energie/destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz` gefuehrt; hier bleibt
  der Formular-/Verfahrensbefund (EN-101c). Das Formularwort «verschaerft» steht weiterhin als Zitat,
  neu mit Pruefvorbehalt (am Erlasstext nicht gegengelesen; Kandidat § 26 Abs. 2 EnV 1).
  Der Verdacht, die Aussage sei sachlich falsch, wurde in der Verifikation **widerlegt**.
- **WDV-Verweis ergaenzt:** die Waermedaemmvorschriften wurden nur als Paragrafenkuerzel gefuehrt
  (grep «LS 700.211»: 0 Treffer in dieser KB). Neu Verweis auf den primaerquellen-verifizierten
  Stand in `energie` (WDV vom 8.6.2022, in Kraft seit 1.9.2022, Nachtrag 118; Daemmstaerken/UR-Werte
  in § 6 Abs. 2/3).
- **EN-120-Zeile** zeigt neu auf `energie/destillate/oelheizung-gasheizung-ersatzpflicht-zh-sz`.
- Bericht: `wissen/koordination/outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Wissens-Chef Run 8 (Cross-KB): aufgehobenes Recht im OEREB-Themenkatalog geflaggt
- **Befund (CONFIRMED):** `kartenportale-oereb-kataster-system-zh` fuehrte fuer **OEREB-Thema 190
  Gewaesserraum** die Rechtsgrundlage `LS 724.112 § 15` (**HWSchV**) **ohne jeden Flag** — der Artikel
  ist `established` und war die einzige Fundstelle im Artikel (grep ueber alle 279 Zeilen: keine
  deckende Aufhebungs-Notiz). Die HWSchV ist per **01.06.2026 aufgehoben** (OS 81, 144); Nachfolge zu
  § 15 HWSchV ist **§ 19 WsG / § 11 WsV** (Konkordanztabelle `wissen/baurecht/raw/260717_amtlich_zh_hwschv.md`).
  Operativ die gefaehrlichste Stelle des Laufs: beim naechsten OEREB-Bezug waere aufgehobenes Recht zitiert worden.
- **Aktion:** Zeile 190 korrigiert (alte Nummer durchgestrichen + Nachfolge-§§) und Warnkasten gesetzt
  inkl. Hinweis auf die Nummern-Wiederverwendung LS 724.11 (bis 31.05.2026 WWG, seither WsV);
  `INDEX.md` nachgezogen (die Eintraege zu `kartenportale-naturgefahren-objektschutz` §7b «§ 22 WWG»
  und `recht-norm-regenwasser-gewaesserraum-zh` «Verfahren 3 § 18 WWG» trugen die Repeal-Flags der
  Artikel nicht — wer nur den INDEX liest, bekam aufgehobenes Recht als aktuell).
- **Brandschutz:** Frontmatter von `brandschutz-pl03-wegweiser` um einen `querbezug_kb_normen`-Block
  ergaenzt (bisher **kein einziger** Link in die KB `normen`, obwohl der Artikel an 16 Stellen auf
  normen-Destillate verweist — reine Pfad-Strings, fuer den Backlink-Graph unsichtbar). Der dort seit
  Run 52 liegende Fassungs-Flag zur VKF-BRL 16-15 ist jetzt in `normen/wiki/QUESTIONS.md` angekommen.
  **Sachkorrektur am Original:** «IOTH-Beschluss 22.03.2017» → **«ABSV-Beschluss 22.03.2017»**
  (falsches Gremium; im Original steht «Beschluss ABSV vom 22. Maerz 2017»).
- **Run 51 (Kartenportale) geprueft — kein Befund:** keine Erlass-Zitate, keine Widersprueche zum baurecht-Stand.
- Bericht: `wissen/koordination/outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-18 — Training Run 52 (Brandschutz, parallel zu Recht/Norm): BSR-16-15-Delta 2022, Register-Vervollstaendigung, BSV-2026-Refresh
- **Ausloeser:** planungsgrundlagen-training, Schwerpunkt Brandschutz (PL-03), Token-Vollgas-
  Intensivlauf. Backlog B1-B39 war laut Run-51-Empfehlung erschoepft — dieser Lauf fuehrt einen
  systematischen BSPUB-Nummern-Scan im Ordner `02 Brandschutzrichtlinien 2015-17-22/` durch
  (analog dem Ordner-Delta-Scan-Muster aus Run 50), der drei bisher unkatalogisierte Dateien
  aufdeckt, plus BSV-2026-Terminplan-Refresh.
- **`wiki/brandschutz-pl03-wegweiser.md` — NEU §5am (B40):** dritte Fassung der BSR 16-15
  «Flucht- und Rettungswege» gefunden (`BSPUB-1394520214-85.pdf`, Stand 01.12.2022). Volltext-Diff
  gegen die bereits dokumentierten 2015/2017-Fassungen: Fehlerkorrektur Ziff. 3.7 (Dez. 2022,
  Geschossflaeche→Brandabschnittsflaeche bei der Schleusenpflicht Einstellraeume) ohne Auswirkung
  auf die bereits korrekt referenzierte KB-Kernzahl; GENUINER Delta ist die neue
  Personenbelegungsdichte-Matrix Verkaufsnutzungen (Ziff. 3.5.2, TKB-Beschluss 09.06.2021):
  Fachmaerkte/Kaufhaeuser 0.10, Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte
  0.45/0.21 Pers./m² statt der alten 3-stufigen Pauschaltabelle — JANS-relevant fuer
  Erdgeschoss-Retail in Wohn-/Mischnutzungsbauten. §5u referenziert neu die 2022-Fassung als
  aktuellste Quelle. Flag fuer normen-training: Destillat `vkf-brl-16-15-flucht-rettungswege.md`
  noch ohne die 2021er-Tabelle.
- **`wiki/brandschutz-pl03-wegweiser.md` — NEU §5an (B41/B42/B43):** Register-Vervollstaendigung
  der restlichen BSPUB-Nummern — `BSPUB-1394520214-57.pdf` (1-15 Norm, Zweitkopie, kein neuer
  Inhalt), `BSPUB-1394520214-71.pdf` (13-15 Baustoffe/Bauteile Rev. 2017, nur redaktionell:
  Rohrisolationen→Rohrdaemmungen, Bauteil 208 Bedachung→Dachkonstruktionen umbenannt, keine
  Kernzahl-Aenderung). Zusaetzlich bestaetigt identisch: `1001-15_Wohnbauten Auszug ...pdf` =
  dreifache byte-identische Mehrfachablage der Regensdorf-/Thalwil-Benchmark-Datei. Bestaetigt
  technisch blockiert (EDEADLK, mehrere Leseversuche inkl. Hintergrund-Priming): Feuerwehrplan-
  Zusatzvariante `Stoerfall ABC-Objekt/` (8 PDF) sowie `z_Administration/`-Bestellbelege (2 PDF) —
  offen fuer den naechsten Lauf.
- **`wiki/brandschutz-pl03-wegweiser.md` — §1 Refresh (B44):** BSV-2026-Terminplan per
  WebSearch+WebFetch (`bsvonline.ch/de/aktuell/information-bsv-2026`, vkg.ch) erneut geprueft —
  unveraendert bestaetigt (politische Vernehmlassung weiterhin 08-11/2026, IOTH-Genehmigung
  03/2027, keine neue Medienmitteilung seit 06.01.2026 Marschhalt).
- **Register:** `training/curriculum.md` Domaene 4 B40-B44 ergaenzt (B42/B43 offen, Rest
  abgeschlossen); `wiki/QUESTIONS.md` C34/C35 erledigt, C36 (Stoerfall-ABC/z_Administration) neu
  offen; `wiki/INDEX.md` Eintrag brandschutz-pl03-wegweiser erweitert; `raw/_INGESTED.md` sechs
  neue Zeilen; `last_updated` des Artikels auf 2026-07-18 (Run 52).
- **Naechster Lauf:** C36 (Stoerfall ABC-Objekt + z_Administration) erneut versuchen; danach ist
  auch die Brandschutz-Domaene weitgehend auto-schliessbar-luecken-frei (nur noch projektabhaengige
  Vertiefungen und der periodische BSV-2026-Refresh bleiben).

## 2026-07-18 — Training Run 51 (Kartenportale): K41–K44 geloest, OneDrive-Lock aus Run 50 aufgeloest
- **Ausloeser:** planungsgrundlagen-training, Schwerpunkt Kartenportale. Die vier seit Run 50 wegen
  OneDrive-Datei-Provider-Deadlock (`EDEADLK`) unlesbaren PL-01-Kandidaten K41–K44 waren jetzt
  problemlos lesbar (Sync-Timing, wie im Praezedenzfall Lignum Run 28→30 vermutet).
- **`wiki/kartenportale-naturgefahren-objektschutz.md` — NEU §3c (Run 51):** der bis Run 50 nur
  S. 1–6 gelesene Bauteilkatalog der Checkliste `27_Checkliste_SvN_D.pdf` ist mit **S. 7–12**
  vollstaendig ausgewertet (real JANS 2304 Reckholdern/Willerzell SZ). Belegte Produktanweisungen:
  Sonnenschutz **SIA 342** Sturmwiderstandsklasse + automatischer Einzug; Lichtdurchlaesse Kunststoff
  **−80 % nach 5 J → Glas**; **Suissetec-Merkblatt** Hagel/Spengler; Solar/PV-Lasten ins Tragwerk +
  Schneedruckregister; **Ueberschwemmung: keine Fenster, Betonsockel hochziehen**. Quelle-Note auf
  S.1-12/12 aktualisiert, `last_updated` 2026-07-18.
- **`wiki/kartenportale-geoportale-uebersicht.md` — zwei Ergaenzungen (Run 51):** (1) NEU Abschnitt
  «ZH Geoportal OGD-Bestellportal `geoportal.zh.ch/opendata`» mit den aus realen Regensdorf-
  Lieferscheinen (02/2024) belegten **GIS-ZH-Datensatznummern 555 (DTM)/557 (LIDAR)/10016 (AV
  Datenmodell ZH)/10102 (OEREB-Abstandslinien)**, OGD kostenlos, Status established. (2) Luzern-
  Bullet erweitert um `klimafreundlichheizen.ch` (adressgenaue Heizungsempfehlung, Gasversorgungs-
  Aufhebung bis 2040) + Stadt Luzern 3D-Stadtmodell (Esri-Viewer, kein Export). `last_updated`
  2026-07-18, sources ergaenzt.
- **Verifikation:** alle Nummern/Kennzahlen direkt aus amtlichen Original-PDFs (Lieferscheine,
  Checkliste, Konzept), nicht geraten. Kein Connector-Eingriff (Leitplanke «nie ungetestet»: OGD-
  Bestellung ueber interaktiven Warenkorb, kein getesteter REST-Endpunkt).
- **Register:** QUESTIONS.md A K41–K44 auf [x]; curriculum.md K41–K44 auf [x]; raw/_INGESTED.md
  +3 Zeilen. Report: `outputs/2026-07-18_training-run51.md`.
- **Empfehlung Ruecktaktung:** auto-schliessbare Luecken der Prioritaets-Domaenen (Kartenportale
  K1–K44, Energie E1–E39) sind erschoepft; verbleibende Punkte (D9, ZH-Grundwasser-Positiv-Benchmark,
  SZ-Naturgefahren-REST) sind projekt-/fachstellen-abhaengig. Vorschlag: Loop auf Turnus/Trigger
  statt Dauer-Intensitaet, bzw. Rotation auf Recht/Norm + Brandschutz (dort waechst der Backlog noch).

## 2026-07-17 — Wissens-Chef Run 7 (Cross-KB): WWG/HWSchV → WsG/WsV nachgezogen (Run-5-Bring-Schuld geschlossen)
- Ausloeser: baurecht hat heute (Buch-Run 48) amtlich belegt, dass **HWSchV und WWG per 1.6.2026
  aufgehoben** sind (→ WsG LS 724.1 + WsV LS 724.11; Konkordanztabelle in `baurecht/raw/260717_amtlich_zh_hwschv.md`).
  Das war die offene Bring-Schuld aus Run 5. Drei planungsgrundlagen-Artikel fuehrten die alten Erlasse noch.
- **`wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` — drei Eingriffe:** (1) Aufhebungs-Flag
  HWSchV/WWG → WsG/WsV bei der ZH-Festlegung; (2) **§-Nummer + Sachlage korrigiert:** eingedolte
  Fliessgewaesser «≥ 11 m» war § 15d Abs. 3 HWSchV (alt) → § 15k Abs. 3 (Nachtrag 95, 2017) → per
  1.6.2026 **entfallen** (§ 24 WsV kennt nur Verringerung; 11 m folgen heute allein aus Art. 41a Abs. 2
  lit. a GSchV); (3) **stehende Gewaesser korrigiert:** 15 m sind **nicht** an die 0,5-ha-Schwelle
  geknuepft — 0,5 ha ist nur Verzichtsgrund (Art. 41b Abs. 4 lit. b), nicht Formel-Kriterium
  (an baurecht `abstaende-und-hoehen`, Modell-D-verifiziert, angeglichen). § 15c-Fundstelle als
  «bis 31.5.2026» markiert.
- **`wiki/kartenportale-naturgefahren-objektschutz.md`:** die Aussage «§ 22 WWG unveraendert in Kraft»
  auf «WWG per 1.6.2026 aufgehoben → WsG/WsV; konkreter Nachfolge-§ fuer § 22 WWG noch nicht
  verifiziert (Bring-Schuld)» korrigiert + Verweis auf baurecht als fuehrend.
- **`wiki/recht-norm-regenwasser-gewaesserraum-zh.md`:** WWG-Flag (Run 5) auf **HWSchV ausgeweitet**
  (war ungeflaggt), Abkuerzung «HWV» → «HWSchV», Verfahren 2 + 3 als «bis 31.5.2026» markiert.
- Verifikation: alle vier Befunde an den Zitatstellen + der amtlichen baurecht-raw-Quelle bestaetigt.
- **Offen (nicht autonom):** (a) WsG-/WsV-Nachfolge-§ fuer § 22 WWG am Volltext klaeren; (b) Doppelspur
  GSchV-Bemessungstabelle (baurecht + planungsgrundlagen materiell doppelt) — Trim auf reinen Verweis
  = Umstrukturierung, Rueckfrage noetig. Bericht: `koordination/outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): VKF-Querbezug in GreenPV-§6b, Jahresertrags-Divergenz §6↔§6b geflaggt
- **`wiki/energie-pv-eignung-typenwahl.md` §6b (aus Training Run 50) — drei Eingriffe:**
  (1) **«Querbezug KB normen»-Block** vor der VKF-Hoehen-/RF-Staffel gesetzt: §6b fuehrt die
  VKF-Anforderungen (geringe Hoehe ≤ 11 m RF3 / mittlere Hoehe ≤ 30 m RF2 / Hochhaus > 30 m RF1)
  materiell im Wortlaut, obwohl gemaess Rule `normen-referenz` die KB `normen` fuehrend ist —
  **dritter Fundort dieses Musters** nach `brandschutz-pl03-wegweiser` (Run 3) und dessen §1a (Run 4).
  Verschaerfend: der Artikel delegiert Brandschutz-Detail in seinem eigenen Kopf an
  `[[energie-pv-brandschutz]]` — §6b unterlaeuft die eigene Arbeitsteilung. Praezisierung im Block:
  die Hoehen-Staffel steht **nicht** im VKF-Solaranlagen-Merkblatt, die korrekten Ziele sind
  `normen/destillate/vkf-brl-verwendung-baustoffe` (Ziff. 3.2.8, RF-Staffel) +
  `…/vkf-brandschutznorm-2015` bzw. `…/vkf-brl-10-15-begriffe-definitionen` (Hoehen-Definitionen).
  **Offener Trim** (§6b auf Planungs-Framing kuerzen) markiert — Umstrukturierung, nicht autonom.
  (2) **Divergenz-Flag §6 ↔ §6b:** der Jahres-Minderertrag der Sued-Fassade steht doppelt und
  uneinheitlich — §6-Tabelle (Workshop-2-Foliensatz 2022): **86 % von 180 kWh/m²a = −14 %**;
  §6b (Schlussbroschuere 27.08.2024): **rund −20 %**. Beides aus derselben Studie, verschiedene
  Publikationsstufen. **Massgebend ist die finale Broschuere (−20 %)**; §6-Tabellenwert bewusst
  stehen gelassen (Bereinigung waere Umstrukturierung). Die Winter-Aussage (+43 %) bestaetigt §6 dagegen.
  (3) **Querbezug KB energie** in der Sektion «Querbezuege»: dieselbe HSLU-Studie liegt dort als
  `destillate/greenpv-fassade-pv-begruenung-hslu` (2022er-Zwischenstand, `emerging`) — **derzeit fuehrt
  fuer die Zahlen dieser Artikel**, weil er die Schlussbroschuere auswertet; das energie-Destillat ist
  mit Aktualitaets-Flag versehen. Sobald der energie-Loop re-destilliert hat, **kehrt sich die Fuehrung
  um** (Energie-Fachstoff = `energie` gemaess Fuehrungs-Matrix) und §6/§6b sind zu kuerzen (offener Trim).
- **Offen (nicht autonom):** das in §6b zitierte Swissolar-Uebergangsdokument «Brandschutz fuer
  hinterlueftete Photovoltaikanlagen an Fassaden» (2023) trug die Geltung **bis 31.12.2024** — das liegt
  19 Monate zurueck; ob es abgeloest/verlaengert wurde oder inzwischen ein Stand-der-Technik-Papier
  existiert, ist in keiner der drei KBs geprueft.
- Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-16 — Training Run 50 (Kartenportale + Energie, Token-Vollgas, 2 Domaenen): GreenPV-Schlussbroschuere (statt Workshop-Entwurf) volltext eingearbeitet, vier Kartenportale-Kandidaten durch OneDrive-Sync-Blocker verhindert
- **Schritt 0 + Ordner-Delta-Scan:** Zeitstempel-Scan (`find -newermt 2026-07-10`) fand keine
  neuen Dateien in PL-01/PL-04; systematischer Datei-/Ordnernamen-Abgleich aller PL-01-Unterordner
  gegen den bestehenden Wiki-Text foerderte vier echte Kandidaten zutage (Naturgefahren-Konzept-
  Ordner mit realem JANS-Projektbeleg, `Klimafreundlichheizen.ch`, `Stadt Luzern
  3D-Stadtmodell`, Regensdorf-Lieferscheine) — alle vier blieben waehrend des GESAMTEN Laufs
  durch einen OneDrive-File-Provider-Deadlock (`EDEADLK`) technisch unlesbar (Read-Tool, `cp`,
  `pdftotext`, `file`), waehrend andere Ordner im selben Lauf problemlos lesbar waren; als
  K41-K44 in `training/curriculum.md` + `wiki/QUESTIONS.md` Abschnitt A fuer den naechsten Lauf
  vorgemerkt (Praezedenzfall Lignum-Erdbeben Run 28→30: reines Sync-Timing).
- [update] `wiki/energie-pv-eignung-typenwahl.md` §6/§6b (E39-Rest): der in Run 49 als "Workshop 2
  von 3, Studie noch nicht abgeschlossen" eingeordnete GreenPV-Foliensatz ist ueberholt — WebSearch
  fand die laengst publizierte oeffentliche HSLU-Schlussbroschuere (27.08.2024, Institut fuer
  Gebaeudetechnik und Energie IGE, 92 Druckseiten), volltext ausgewertet und als NEU §6b
  eingearbeitet: Take-Home Messages (PV-Fassade Sued unverschattet −20 % Jahresertrag / +43 %
  Winterstrom ggue. Dach; Begruenung fuer Private nicht rentabel, aber gesamtgesellschaftlicher
  Mehrwert; Kombination PV+Begruenung senkt THGE >25 % bei nur ~9 % LCC-Mehraufwand), 8
  Empfehlungen zur Systemwahl, vollstaendiger Vorteile-/Systemvergleich Dach-Fassade-Aussenraum je
  Begruenung+PV, VKF-Brandschutz-Staffel nach Gebaeudehoehe (Hochhaus-Luecke fuer PV-Fassaden),
  zwei reale Schweizer Fallbeispiele mit Kostenkennwerten (PV-Fassade Holenackerstrasse 65 Bern
  CHF 1'400/m² + 8 Schutzziele; Fassadenbegruenung Sky-Frame Frauenfeld 1'100 m² / CHF 450'000 /
  CHF 10-20/m²a Unterhalt), SIA-112-Planungs-Checkliste. Status des Artikels von `emerging` auf
  `established` gehoben (offizielle, im Auftrag von Bund+2 Staedten erstellte Publikation).
- Report: `outputs/2026-07-16_training-run50.md`.

## 2026-07-15 — Wissens-Chef Run 5 (Cross-KB): PV-EIV-Doppelspur geflaggt + WWG→WsG-Aktualitaets-Flag
- [link] `wiki/energie-betriebsenergie-pv-wirtschaftlichkeit.md`: «Querbezug KB energie (fuehrend)»-Block vor §1. Die EIV-Foerdersystematik/Saetze sind kanonisch in `wissen/energie` → `pv-einmalverguetung-bund-bfe` (established) + `pv-marktzahlen-kosten-ch-2025`; §1 hier ist Doppelspur und zum Verschlanken vorgemerkt (Trim = Umstrukturierung, NICHT autonom). Kein Sachwiderspruch.
- [flag] `wiki/recht-norm-regenwasser-gewaesserraum-zh.md`: Aktualitaets-Flag am WWG-Verweis — das ZH-WWG (1991) wurde per 1.6.2026 durch das Wassergesetz WsG vom 12.12.2022 abgeloest (§ 126 WsG, primaerquellen-belegt in `wissen/energie` → `grundwasserwaermenutzung-bewilligung-zh-sz`). §-Mapping WWG→WsG offen. Keine §-Umbenennung vorgenommen (Bring-Schuld WsG-Volltext). Bericht: koordination/outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — Training Run 49 (Recht/Norm + Energie, Token-Vollgas, 2 Domaenen): Zeitstempel-Scan foerdert Mehrwertrevers-Systematik + ZSV-Bemessungsschluessel zutage, GreenPV-Fassaden-PV-Benchmark schliesst Run-40-Backlog
- **Standard-Schritt-0 (Empfehlung Run 48) erstmals angewendet:** `find -newermt` ueber alle vier
  PL-Ordner (10-Tage-Fenster) foerderte sechs bisher nie ausgewertete Volltext-Dateien zutage,
  alle am 13.07.2026 nachgeliefert — drei in `Arbeitsgesetz/` (argv3/argv4/argv34.txt, Volltext-
  Extrakte der bereits als PDF gefuehrten ArGV 3/4 + Wegleitung), eine in `Zivilschutz/`
  (520_11.txt, Volltext-Extrakt der ZSV), eine im bisher nie kartierten Ordner
  `Mehrwertrevers Beseitigungsrevers/` (zbl.txt, Bösch ZBl 1993).
- **Recht/Norm (PL-02), R52-R54:** (1) Wegleitung-Volltext liefert die Anboeschungs-Ausnahme fuer
  unter-Terrain-Arbeitsraeume (Boeschungswinkel 25-30°/max. 3 m/Bruestungshoehe 1.20-1.50 m),
  den vollstaendigen Plangenehmigungsverfahren-Ablauf (Art. 37-41) und die bisher fehlende
  Behindertengerechtes-Bauen-Trigger-Schwelle **>50 Arbeitsplaetze** (BehiG/SN 521 500) → NEU
  §2b-2d [[recht-norm-arbeitsplatz-bauvorschriften]]. (2) ZSV-Volltext schliesst die seit Run 26
  offene Schutzplatz-Bemessungsformel-Luecke: **2 Schutzplaetze/3 Zimmer Wohnen, 1 Schutzplatz/
  Patientenbett Spital/Alters-/Pflegeheim** (Healthcare strenger als Wohnen), 5-%-Mehrkosten-
  Schwelle exakt verifiziert, Ausnahmen Art. 18 (inkl. **Minergie-Standard-Ausnahme**),
  gemeinsame Schutzraeume Art. 19 → NEU §2b [[recht-norm-zivilschutz-bautechnik]]. (3) Der 1993er
  ZBl-Fachartikel (Peter Bösch) liefert eine vollstaendige Systematik der **Mehrwert-/
  Beseitigungs-/Anpassungsreverse** (Baulinien-Anmerkungsmechanik) und weiterer Revers-Typen
  (Ausnuetzungsrevers, heute entbehrlicher Hochhausrevers, Arealueberbauungs-Anmerkung,
  Quartierplanbann) → NEU [[recht-norm-mehrwertrevers-grundbucheintragungen]] (`emerging`,
  Quelle 1993, §-Nummern PBG-1991er-Fassung nicht durchgehend gegen die aktuelle Fassung
  verifiziert) — **korrigiert eine fruehere Einschaetzung (Run 26/R9):** damals wurde das Thema
  mangels Volltextquelle nur als Cross-Ref auf [[recht-norm-dispensrecht]] behandelt; mit
  `zbl.txt` lohnt sich ein eigener Artikel. Explizite Abgrenzung zum verfahrensrechtlichen
  Mehrwertausgleich (MWA, [[kartenportale-oereb-kataster-system-zh]] §8) ergaenzt — gleicher
  Wortstamm, verschiedenes Rechtsinstitut, Verwechslungsgefahr fuer kuenftige Antworten explizit
  entschaerft.
- **Energie (PL-04), E39:** der seit Run 40 als Backlog gefuehrte 46-seitige HSLU-Forschungs-
  Foliensatz «GreenPV» (Fassadenbegruenung + PV, Klimaanpassung) S. 1-29 ausgewertet — liefert
  die erste **belegte orientierungsabhaengige Fassaden-PV-Benchmark-Tabelle**: Solarstrahlung/
  Stromertrag/Amortisation (graue Energie/THG/UBP) je Sued/Ost/West/Nord gegen die
  Dach-Referenz, plus max. Fassadentemperatur je Orientierung (**West mit 52.9 °C am
  heissesten, nicht Sued**) und belegte Referenzgebaeude-Daemmstandards Alt-/Neubau → NEU §6
  [[energie-pv-eignung-typenwahl]]. Kernaussage fuer JANS: eine Fassaden-PV-Anlage amortisiert
  sich immer langsamer als eine Dachanlage (Faktor 1.2-2.7× je nach Orientierung/Indikator,
  bei Nordfassaden am staerksten) — ein rechenbares Gegenargument zur reinen Flaechen-
  maximierung bei der Typenwahl. Die Studie selbst war zum Auswertungszeitpunkt (Workshop 2 von
  3) noch nicht abgeschlossen; PV+Begruenungs-Kombinationsempfehlungen (das eigentliche Studien-
  ziel) stehen erst fuer einen moeglichen Workshop-3-Bericht an — hier bewusst nur Referenzdaten
  uebernommen, keine Empfehlung vorweggenommen.
- Register nachgefuehrt: `training/curriculum.md` (R52-R54, E39), `wiki/QUESTIONS.md`
  (R9-Korrektur, D-Sektion GreenPV-Backlog geloest), `raw/_INGESTED.md` (vier neue Zeilen),
  `wiki/INDEX.md` (drei Artikelzeilen aktualisiert + ein neuer Artikel). Report:
  `outputs/2026-07-15_training-run49.md`.
- **Verifikations-Verdikt:** keine bestehende `established`-Statushebung in diesem Lauf — der
  neue Artikel [[recht-norm-mehrwertrevers-grundbucheintragungen]] bleibt bewusst `emerging`
  (Einzelquelle 1993, §-Nummern nicht durchgehend gegengeprueft), die Ergaenzungen in den drei
  bereits `established`/`emerging` gefuehrten Artikeln sind belegte Erweiterungen bestehender
  Artikelkoepfe, keine neue Status-Behauptung.
- **Lehre:** die von Run 48 vorgeschlagene Zeitstempel-Scan-Methode als Standard-Schritt-0 hat
  sich sofort bewaehrt — sechs neue Primaerquellen in einem als "praktisch vollstaendig"
  eingestuften Curriculum gefunden. Fuer kuenftige Laeufe: Schritt 0 vor jedem inhaltlichen
  Lauf beibehalten.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Fuehrungs-Pointer §1a Normkonzept BSV 2026 → normen
- [link] `wiki/brandschutz-pl03-wegweiser.md` §1a: «Querbezug KB normen»-Block gesetzt — VKF-Primaerdokument «Normkonzept BSV 2026», kanonische Fundstelle fuehrt normen (Rule `normen-referenz`). normen hat die PDF beschafft, aber kein Destillat → planungsgrundlagen fuehrt die 38 Eckpunkte materiell weiter. **Offener Punkt** (nicht autonom): nach normen-Destillat §1a auf Planungs-Framing kuerzen + verlinken (Trim = Umstrukturierung). Kein Sachwiderspruch (BSV 2015 geltend, 2026 Zukunft — beidseitig konsistent). Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Training Run 48 (echtes neues Primaerdokument: Normkonzept BSV 2026 + M3-Korrektur)
- Statt eines weiteren WebSearch-Refresh: Zeitstempel-Scan (`find -newermt`) ueber alle vier
  PL-Grundordner (4'000 Dateien) foerderte ein am 11.07.2026 neu abgelegtes Primaerdokument
  zutage — «Normkonzept BSV 2026» (VKF/Keel & Raster, Stand 06.10.2022, 170 S.).
- **B5 von Termin- auf Substanz-Ebene gehoben:** 38 Eckpunkte der BSV-2026-Totalrevision
  destilliert (Kap. 1-2 + Kap. 5 volltext gelesen) — 1 statt 2 Erlassstufen (BSV max. 200 S. +
  BSV-Erlaeuterung), 3 statt 4 QSS, Risikoorientierung/Grenzkostenprinzip, SIA-500-Kap.8-
  Uebernahme (Healthcare-relevant), Uebergangsrecht mit Bauherren-Wahlrecht, und die praktisch
  wichtigste Neuerung: operationale "rote Linie" fuer Nachruestungspflicht bei Bestandesbauten
  unabhaengig vom Umbauvorhaben → NEU §1a [[brandschutz-pl03-wegweiser]]. Vorbehalt: Konzeptstand
  2022, liegt zeitlich vor dem Marschhalt 06.01.2026.
- **M3 korrigiert:** Run 47s Vermutung "Parkplatz-Flexibilisierung" zum Volksreferendum gegen
  UmV § 49b PBG war ein Fehlschluss aus dem Suchtreffer-Titel. Primaerquelle (stadt-zuerich.ch)
  zeigt: staedtisches Referendum zu Zuteilungsregeln fuer preisguenstigen Wohnraum bei
  Mehrausnuetzung, Abstimmung 14.06.2026 — relevant fuer `machbarkeit`/`nutzungsstrategie`, nicht
  fuer Parkierung → `wiki/QUESTIONS.md` M3 korrigiert, Status `[~]` (Primaertext noch offen).
- Register gepflegt: `raw/_INGESTED.md`, `training/curriculum.md` (B5), `wiki/QUESTIONS.md`
  (C6/B5 + M3), Output `outputs/2026-07-14_training-run48.md`.
- Lehre fuer kuenftige Laeufe: Bei einer nahezu gesaettigten KB ist ein Zeitstempel-Scan vor
  jedem Lauf effizienter als ein erneutes vollstaendiges Durchkaemmen oder ein reiner
  WebSearch-Refresh bestehender Watchlist-Punkte.

## 2026-07-14 — Training Run 47 (Refresh-Lauf, Watchlist E5/E9/B5): Stand unveraendert bestaetigt, Nebenfund § 49b PBG-Referendum offen
- Curriculum praktisch vollstaendig (K1-K40/E1-E38/R1-R51/B1-B39 abgehakt); dieser Lauf
  bearbeitet die drei verbliebenen `[~]`-Watchlist-Punkte per WebSearch-Refresh statt neuer
  Ordner-Erschliessung.
- **E5/E9 (MuKEn-2025-ZH-Ueberfuehrung + Graue-Energie-Grenzwert):** unveraendert bestaetigt,
  keine Vernehmlassung/kein Termin fuer ZH auffindbar → [[energie-energienachweis-zh-formulare]]
  §Datenstand.
- **B5 (BSV-2026-Totalrevision):** unveraendert bestaetigt (politische Vernehmlassung 08/2026,
  Inkrafttreten Herbst 2027) → [[brandschutz-pl03-wegweiser]] §1.
- **Nebenfund, nicht uebernommen:** Volksreferendum gegen UmV § 49b PBG (Parkplatzvorschriften-
  Flexibilisierung, zustande gekommen 21.11.2025) — nur Suchtreffer-Titel, keine Primaerquelle
  gelesen; als neue offene Aufgabe **M3** in `wiki/QUESTIONS.md` hinterlegt statt als Fakt
  uebernommen.
- **Einordnung:** KB naehert sich Saettigung; Ruecktaktung ins Nachtfenster gemaess
  `training/PROGRAMM.md` vorgeschlagen (nicht umgesetzt) — VOLLGAS-Vorgabe bleibt bis 10.08.2026
  in Kraft. Report: `outputs/2026-07-14_training-run47.md`.

## 2026-07-14 — Training Run 46 (Kartenportale + Energie, Token-Vollgas): ÖREB-Weisung V3 vollständig abgeschlossen (S. 20-73), Energie-Refresh unverändert
- **Kartenportale (PL-01):** Rest der Weisung «ÖREB-Kataster Betrieb und Nachführung der Daten»
  V3 (S. 20-73, alle acht Themen-Detailprozesse §5.2-§5.12) vollständig gelesen und in
  [[kartenportale-oereb-kataster-system-zh]] als §8-§12 eingearbeitet. Bei sechs von sieben
  Nutzungsplanungs-/Baulinien-Themen (§5.2-5.8) bestätigt sich das bereits bekannte generische
  4-6-Phasen-Muster (kein Delta); zwei echte Zusatzfunde: **Mehrwertausgleich (MWA)** als
  Blocker vor der öffentlichen Auflage bei kommunaler Nutzungsplanung und überkommunalen
  Gestaltungsplänen (separates Tool eMehrwertausgleich), und der **Quartierplan als 7-Phasen-
  Sonderfall** (zwei Grundeigentümerversammlungen, notarielle Prüfung der Rechtsverhältnisse,
  Vermessungsplan, grundbücherlicher Vollzug §§161 ff. PBG). **§5.9 Statische Waldgrenzen:**
  zwei getrennte Änderungswege — Bauzonen-Erstfestsetzung (seit 2018, absehbar abgeschlossen)
  vs. Rodung/Ersatzaufforstung als einziger verbleibender Weg danach; die Waldgrenze ändert
  sich erst mit der **ausgeführten** Rodung (Abnahmeprotokoll), nicht mit der blossen
  Bewilligung — direkt relevant für Baufeld-Berechnungen (`baulinien-analyst`/`machbarkeit`).
  **§5.10/5.11 Grundwasserschutz:** Schutzzone (Layer 131, Gemeinde formal zuständig, Antrag-
  steller meist Wasserversorgung) vs. Schutzareal (Layer 132, AWEL direkt zuständig) plus
  provisorische «Zonen S», die vor jeder öffentlichen Auflage sofort im ÖREB erscheinen können.
  **§5.12 Kataster belasteter Standorte (KbS):** einziges Thema ohne eigene Vorprüfungs-Phase,
  ausgelöst durch Bauvorhaben/Untersuchung/Sanierung direkt bei AWEL Sektion Altlasten — relevant
  für `ankaufspruefung`. **Die 73-seitige Weisung ist damit vollständig ausgewertet, keine
  offenen Kapitel mehr.**
- **Energie (PL-04):** Web-Refresh-Check MuKEn-2025-ZH-Überführung (aeesuisse.ch, hev-zh.ch,
  energiehub-gebaeude.ch) — weiterhin keine kantonsspezifische Vernehmlassung oder
  Terminangabe für Zürich auffindbar, nur die allgemeine EnDK-Timeline «Umsetzung 2025-2030»;
  Datenstand in [[energie-energienachweis-zh-formulare]] unverändert bestätigt.
- Register nachgeführt: `training/curriculum.md` (K40-Rest §5.3-5.8/§5.9/§5.10-5.11/§5.12 +
  E5-Refresh), `wiki/QUESTIONS.md` (Sammel-Eintrag K40-Rest), `raw/_INGESTED.md` (zwei neue
  Zeilen), `wiki/INDEX.md` (Artikelzeile nachgeführt).

## 2026-07-14 — Training Run 45 (Recht & Norm, Token-Vollgas): GT-Richtlinien-Serie AHB komplett ausgewertet + Kennzeichnungssystem-Delta + Raummodul-Standards NEU + KBOB-Merkblatt-Delta-Check
- **§12–§14 GT-Richtlinien Gebäudetechnik AHB (Ordner `14-Energie-und Gebaeudetechnik/
  14.3-Richtlinien`) — komplette Serie GT_RL1-9 vollständig gelesen** (bisher war nur §4 GA-
  Standard Pflegezentren bekannt): Planungsgrundlagen (Projekthandbuch/Pflichtenheft GT,
  Leistungsnachweis-Pflicht Kessel >350 kW/COP-JAZ, BKP-Gliederung mind. dreistellig),
  Systemwahl (Energieträger-Hierarchie, thermische Solarenergie vor PV bei Wohnen/Heime/Sport,
  Fernwärme prioritär), Heizung/Kühlung (**träge Wärmeabgabesysteme in Schulzimmern NICHT
  zulässig**, Kühlungs-Bedarfsnachweis SIA 382/1:2007 zwingend), Lüftung/Sanitär
  (**Legionellenschutz Risikogruppe 2 — Spitäler/Altersheime/Pflegezentren: thermische
  Desinfektion 75 °C bei Erneuerung zwingend einzuplanen**), Elektro/Beleuchtung (EN-12464-1-
  Übersichtstabelle mit belegten Healthcare-Beleuchtungsstärken: Bettenzimmer 100/300 lx,
  Behandlungsräume 500 lx, Verkehrsfläche Spitäler 200 lx). **GT_RL9 Gebäudeautomation
  Delta-Check gegen §4: kein Duplikat** — eigenständige, allgemeinere Richtlinie (jedes
  AHB-Bauvorhaben) mit neuen Fakten: IMMO-Box (zentrales Energiemonitoring-System, Pflicht ab
  EBF >1'000 m²), 3-Ebenen-Bedienkonzept, 4-stufige Überwachungspriorität, 30 %-Ausbaureserve-
  Richtwert.
- **§15 Kennzeichnungssystem und Beschriftungskonzept Gebäudetechnik NEU** (`Standards_
  Kennzeichnungssystem_V2.2.pdf`, 1.9.2007) — Delta-Check gegen §2 CAFM-Bezeichnungssystem:
  kein Duplikat, eigenständige technischere Quelle nach DIN EN 6779-12/DIN 6779-1/
  DIN EN 61346-1+2 für die gebäudetechnischen Anlagen/Komponenten selbst (SGK/BTA/MTA/
  Aggregate/GA-Datenpunkte) statt der Orts-/Raumebene aus §2.
- **§16 Raummodul-Standards Büro und Klassenzimmer NEU** — belegte Gebäudetechnik-Kennzahlen
  (Beleuchtung/Beschattung/Elektro/Lüftung/Heizung je Raumtyp); Klassenzimmer-Delta zu Büro:
  3. Beleuchtungszone Wandtafel (kein Tageslicht-Ausschalten), motorisierte Beschattung bei
  Neubauten Pflicht (nicht optional wie Büro), zentrale Heizungsabsenkung Schulferien —
  direkt nutzbar für die JANS-Priorität Schul-/Bildungsbau (Rule 260713).
- **§17 KBOB-Einzelmerkblätter — Delta-Check gegen §6.1, drei echte Deltas:** Recyclingbeton
  (KBOB 2007/2 liefert RC-W/RC-B/RC-M-Kategorien + Expositionsklassen-Matrix + reale
  Stadt-ZH-Referenzprojekte Werdwies/Forum Chriesbach/Hirzenbach/Hardau/Im Birch), Gutes
  Innenraumklima (KBOB 2004/1 liefert Phasen-Verantwortungsmatrix + bisher fehlenden
  CO₂-Grenzwert 1'000/1'500 ppm + vier reale Schadenfälle), Schadstoffe-in-Bauten-Checkliste
  (AHB/UGZ Stadt Zürich 2005 liefert **PCP als dritten Schadstoff-Typ**, Grenzwerte
  1/0.1 µg/m³) — Letzteres zusätzlich als Cross-Ref-Ergänzung (kein Duplikat) in
  [[energie-baustoffe-schadstoffe-rueckbau]] §6 eingearbeitet.
- Artikel-Backlog (§9) entsprechend bereinigt: GT-Richtlinienserie, Kennzeichnungssystem und
  Raummodul-Standards sind nicht mehr offen; von den 26 Nachhaltiges-Bauen-Einzelmerkblättern
  sind drei ausgewertet, 23 bleiben niedrige Priorität.
- Register nachgeführt: `training/curriculum.md` (R44-R51), `wiki/QUESTIONS.md` (§B),
  `raw/_INGESTED.md` (2 Zeilen), `wiki/INDEX.md` (beide betroffenen Artikel-Zeilen).

## 2026-07-14 — Training Run 45 (Brandschutz, Token-Vollgas): Cheminees/Spaenefeuerungen/Schnitzelfeuerungen/Pelletsfeuerungen NEU (Run-42-Backlog abgeschlossen)
- **Brandschutz — vier neue Abschnitte im Wegweiser [[brandschutz-pl03-wegweiser]] (established):**
  §5ai **Cheminées** (VKF-Erlaeuterung 103-15de, 14 S. vollstaendig gelesen, Stand 01.01.2015,
  genehmigt 23.09.2014) — EN-13229-Cheminées nach Leistungserklaerung/Aufstellanleitung,
  individuell erstellte Speichercheminées 0.12 m RF1 + 60 mm Mineralwolle, Sicherheitsabstand
  0.1 m seitlich / **0.8 m bei offenem/verglastem Feuerraum**, Vorbelag ≥ 0.4 m, Cheminéeschürze
  EI 60 bei Holzverkleidung mit ≥ 20 mm dauerhaft hinterlüfteter Luftspalt. §5aj
  **Spänefeuerungen** (VKF-Erlaeuterung 104-15de, 17 S.) — Heizraum **IMMER EI 60 unabhängig der
  Nennwärmeleistung** (keine kW-Erleichterung, strenger als Schnitzel/Pellets), zwei zwingend
  unabhängige Rückbrandsicherungen SLE+RSE, freistehende Silos **10 m Mindest-Sicherheitsabstand**,
  offene Lagerbehälter im Freien max. 40 m³. §5ak **Schnitzelfeuerungen** (VKF-Erlaeuterung
  105-15de, 12 S.) — eigenständige Kategorie (Korngrösse 40/20/10 mm, Feuchte > 20 %),
  **70-kW-Erleichterungsschwelle** (Aufstellraum EI 30 statt Heizraum EI 60, darf bei geringem
  Brandrisiko andere Zwecke dienen), dreistufiges Rückbrandsicherungs-Regime je nach
  Austragungsart (RHE / RSE+TÜB / RSE+SLE+TÜB), Ausräumöffnungs-Staffel 1.0x0.7/2.0x0.9/2.5x1.5 m.
  §5al **Pelletsfeuerungen** (VKF-Erlaeuterung 106-15de, 14 S.) — Pellets Ø 5-7 mm/Feuchte ≤ 10 %/
  **1 m³ ≈ 650 kg**, identische 70-kW-Schwelle und Ausräumöffnungs-Staffel wie Schnitzel, aber
  **fünf** statt drei gestaffelte Rückbrandsicherungs-Fallgruppen (feinste Granularität aller
  vier Feuerungstypen, wegen zusätzlicher pneumatischer Förderoptionen), pelletsspezifische
  **CO-Belüftungspflicht** + Prallschutzmatten-Pflicht bei der Befüllung. Alle vier ehrlich als
  **niedrige bis mittlere JANS-Priorität** eingeordnet (primär Wohn-/Landwirtschaftsbauten-
  Relevanz, kaum Healthcare-/Schulbau-Grossprojekt-Bezug), aber vollständigkeitshalber jetzt
  destilliert — schliesst den in Run 42 «Naechste Schritte» explizit vorgemerkten Backlog
  (Cheminées/Spänefeuer/Schnitzelfeuerung/Pelletsfeuerung) vollständig ab. Damit ist der Ordner
  `04 Erläuterungen Brandschutz 2015/` vollständig ausgewertet (alle 8 VKF-Erläuterungen 100-108
  jetzt im Wegweiser dokumentiert).
- Register nachgefuehrt: `training/curriculum.md` (B36-B39), `wiki/QUESTIONS.md` (C33), `raw/_INGESTED.md`.

## 2026-07-14 — Training Run 44 (Kartenportale + Energie, Token-Vollgas): NEU ÖREB-Kataster-System ZH (amtliches ID-Register + Vorwirkung-Mechanik)
- **NEU [[kartenportale-oereb-kataster-system-zh]] (established):** ausgewertet aus
  `Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — amtliche «Weisung ÖREB-Kataster Betrieb
  und Nachführung der Daten» V3, Kt. ZH ARE Abt. Geoinformation, 01.12.2022 (73 S., bisher nie
  ausgewertet, obwohl der Ordner seit K1 als Benchmark-Quelle diente). Liefert das amtliche
  **ID-/Legenden-Register** fuer alle bisher nur aus Connector-Antworten bekannten `ogd-0xxx`-
  Layer-IDs (73A/73B/76/116/130/131/132/145/157/159/160/190/45-52-ZH/56-ZH/59-ZH) mit
  Rechtsgrundlage + zustaendiger Stelle (ARE/AWEL/ALN/AFM/Gemeinde). Wichtigster Einzelfund: die
  **Vorwirkung-Mechanik** (positive Vorwirkung eines noch nicht rechtskraeftigen Rechts
  grundsaetzlich unzulaessig; negative Vorwirkung ausnahmsweise zulaessig bei ausdruecklicher
  gesetzlicher Grundlage → Sperrwirkung) erklaert erstmals die rechtliche Tragweite hinter dem
  bereits bestehenden `revision_laeuft`-Connector-Flag ([[kartenportale-zonenplan-zh]] §A6): eine
  laufende Zonen-/Baulinien-Revision kann ein Bauvorhaben blockieren, bevor sie in Kraft ist.
  Ergaenzt generischer 4-Phasen-Nachfuehrungsprozess (Vorpruefung→Oeffentliche Auflage→
  Festsetzung/Genehmigung→Rechtsmittel→In Kraft), ÖREB-DMT-Systemarchitektur (Rechts-/Projekt-/
  Protokoll-DB) und Betriebsorganisation (Katasterleitung/KBO/kantonale Fachstellen/Gemeinden/
  Fachspezialisten). Verlinkt aus [[kartenportale-zonenplan-zh]], [[kartenportale-geoportale-uebersicht]],
  [[kartenportale-oereb-egrid-bezug]]. Nur S. 1-19 von 73 ausgewertet — Detailprozesse §5.3-5.12
  (Waldgrenzen/Grundwasserschutz-Nachfuehrung im Detail) fuer naechsten Kartenportale-Turnus offen.
- **Bestaetigte Nicht-Funde:** drei chronologisch gestaffelte Vorgehens-docx im selben Ordner
  (Mai 2024/Okt 2024/Maerz 2026) beschreiben identisch den bereits dokumentierten Geoshop-/
  geodienste.ch-Bezugsweg (A4/K4) — kein neuer Inhalt. forumenergie.ch/`230710_Kurse.docx`
  (Energie-Domaene) enthaelt nur einen bareURL-Link zur bereits dokumentierten Kursseite (E17/E19).
- **Energie-Domaene sonst durchgehend gesaettigt geprueft** (solar-home.ch, megasol.ch,
  energieheld.ch, prefa.solar, sonnenverlauf.de, solarapp.ch, uvek-gis.admin.ch, energieschweiz.ch,
  pv sol premium, pronovo.ch, wissen.minergie.ch/_Login, _Energienachweise, _Private Kontrolle) —
  alle bereits vollstaendig eingearbeitet (E1-E38), keine neuen Deltas gefunden.
- Register nachgefuehrt: `curriculum.md` (K40 + E-Check), `wiki/QUESTIONS.md` (K40-Eintrag),
  `raw/_INGESTED.md`, `wiki/INDEX.md`.

## 2026-07-14 — Training Run 43 (Recht/Norm + Brandschutz, Token-Vollgas): Schulbauten-Arbeitshilfe NEU, Gebaeude-geringer-Abmessungen NEU, Betriebsbereitschaft BFS NEU, temporaere Fluessiggasanlagen NEU, AHB-Bauwerkdokumentation + Ingenieurwesen
- **Brandschutz — vier neue Abschnitte im Wegweiser [[brandschutz-pl03-wegweiser]] (established):**
  §5ae **Arbeitshilfe Schulbauten** (VKF 1002-15de, 30 S. vollstaendig gelesen) — direkt JANS-
  relevant (Rule 260713: Schul-/Bildungsbau priorisierte Wettbewerbs-Bauaufgabe). Brandabschnitts-
  flaeche ohne Nachweis 3'600 m² (groesser als generisch), Kindertagesstaette-Fluchtweglaenge
  **20 m statt 35 m**, Fluchtwege ueber Atrien/Innenhoefe mit RWA-Nachweis zulaessig, Sprinkler/
  BMA/Blitzschutz nur «auf Verlangen der Behoerde», Spezialraeume (Schulkueche/Cafeteria/Labor)
  eigene Brandabschnitte. §5af **Arbeitshilfe Gebaeude mit geringen Abmessungen** (VKF 1000-15de,
  21 S.) — KEINE Anforderung an Feuerwiderstand Tragwerk/Brandabschnittsbildung, Brandschutz-
  konzeptplaene nur auf Verlangen, erleichterte Treppengeometrie (0.9/1.2 m), Ausgangsbreiten-
  Staffel nach Personenbelegung. §5ag **Betriebsbereitschaft von Brandfallsteuerungen (BFS)**
  (VKF-Erlaeuterung 108-15de) — bisher unerschlossene Steuerungs-/Betriebsebene: 3 Ansteuerungs-
  Kategorien (Einzel/Kollektiv/Selektiv), Fail-Safe-Prinzip, Pflichtdokumentation (Zonenplan/
  Matrix/Drehbuch integraler Test), Funktionserhalt ≥30 Min. bei Fail-Safe-losen Elementen.
  §5ah **temporaere Aufstellung von Fluessiggasanlagen** (VKF-Erlaeuterung 107-15de) — Delta zur
  bereits dokumentierten permanenten Kennzahl (§5v): max. 6 Monate/13 m³/1'100 kg, Meldepflicht
  Brandschutzbehoerde+Suva 1 Woche vorher, **Schutzabstaende-Matrix nach Nachbarschaftsgefaehrdung
  mit Spitaeler/Schulen/Camping explizit als «erhoehte Gefaehrdung»** (direkter Healthcare-Befund).
  Backlog niedrige Prioritaet: Erlaeuterungen Cheminees/Spaenefeuer/Schnitzelfeuerung/
  Pelletsfeuerung (Feuerungsanlagen fuer feste Brennstoffe, primaer Wohn-/Landwirtschaftsbau).
- **Recht/Norm — zwei neue Abschnitte in [[recht-norm-ahb-stadt-zuerich-projektstandards]]
  (established):** §10 **Bauwerkdokumentations-Richtlinie 2009** (Abgabepflicht/-termine/-mengen
  nach Bauabschluss, drei Zeitpunkte fuer Bewirtschaftungsplaene-Grundlagen) + reales
  **AHB-Kennwerte-Faltblatt-Format** (Restaurant-Kiosk Hafen Riesbach, Grundmengen SIA 416 +
  vier BKP2-Kennwerte RI/GV/GF/HNF nebeneinander — Vorbild fuer die Kennwerte-KB `grobkosten/`).
  §11 **Ingenieurwesen-Fachrichtlinien**: Tragwerkverstaerkung (Restsicherheitsfaktor ohne
  Klebebewehrung ≥1.2), Betonneubauten (Betondeckung ≥30mm Ausfuehrung/≥35mm Planung + 13-
  Faktoren-Qualitaetsmatrix), Recyclingprodukte/-beton (oekologische Rangordnung Wiederverwendung
  > stoffliche Verwertung > Entsorgung nach SIA 430/493/162-4, Altlasten-Kataster-Kontrollkette
  AWEL vor Baubewilligung; Firmenliste von 1999 veraltet, methodisches Geruest uebernommen).
  Restbacklog: 18-Nachhaltiges-Bauen-Einzelchecklisten (26 Dateien), 14-Energie-TGA-Rest
  (GT_RL1-9), 09/10/04-Buero-CI-Vorlagen.
- Rotation: Run 42 deckte Kartenportale+Energie ab, dieser Lauf turnusgemaess Recht/Norm+
  Brandschutz gemaess den in Run 42 «Naechste Schritte» benannten Zielordnern (12-Bauwerk-
  dokumentation/16-Ingenieurwesen bzw. naechster PL-03-Unterordner ausserhalb der Richtlinien-
  Serie). Naechster Turnus zurueck zu Kartenportale+Energie.

## 2026-07-14 — Training Run 42 (Kartenportale + Energie, Token-Vollgas): Gebaeudeschadstoffe-Checkliste NEU, SolarApp/PVSOL premium eingeordnet, Kt.-Bern-Portalarchitektur + Sunrise/UPC-Delta
- **Energie — NEU eigener Artikel [[energie-baustoffe-schadstoffe-rueckbau]] (established):**
  AWEL-Checkliste Gebaeudeschadstoffe (02.2023) vollstaendig destilliert — Vier-Faelle-Weiche
  Asbest/PCB/CP nach Baujahr/Bausumme/Rueckbauvolumen (Art. 16 VVEA), zwei Sanierungswege
  (instruierte Handwerker vs. Suva-anerkannter Sanierer), **untersuchungspflichtige
  Spezialobjekte inkl. Spitaeler** (Healthcare-relevant unabhaengig von der Bausumme). Speist
  Skill `ankaufspruefung` (CapEx-Fahrplan Bestandsbauten) und `ausschreibung` (Rueckbau-LV).
- **Energie — §2c NEU [[energie-pv-eignung-typenwahl]]:** SolarApp AG (Deitingen SO) als
  eigenstaendiges Vorprojekt-Simulationstool eingeordnet (bisher nur als Zahlenquelle in der
  Benchmark-Tabelle zitiert, nie als Tool beschrieben); realer Willerzell-Bericht liefert
  zusaetzlich die bisher fehlende Eigenverbrauchs-/Unabhaengigkeitsseite (53 % Unabhaengigkeit).
  PVSOL premium (Valentin Software GmbH) als TGA-Fachplaner-Desktop-Tool eingeordnet, realer
  491-kWp-Grossanlagenfall (Thomas Lueem Partner AG) mit explizitem "kein Planungsdokument"-
  Vorbehalt dokumentiert.
- **Kartenportale — [[kartenportale-geoportale-uebersicht]]:** Kt.-Bern-Portalarchitektur
  praezisiert (`be-geo.ch` = Login, `map.apps.be.ch` = Kartenclient, analog zur ZH-Trennung),
  realer Fall Schloss Muenchenwiler mit benannter Kontaktstelle Amt fuer Geoinformation Kt. Bern;
  AV-Bezug via `geodienste.ch` auf max. 5 Parzellen/Bestellung gedeckelt. `gisos.bak.admin.ch`
  geprueft, bestaetigter Nicht-Fund (nur bare URL, kein Delta zu K34/ISOS).
- **Kartenportale — [[kartenportale-werkleitungskataster]]:** Sunrise-Markenauftritt (realer
  Fall Reckholdern Willerzell) fuehrt technisch auf dieselbe `leitungskataster.upc.ch`-Domaene
  wie das bereits dokumentierte UPC-Portal — Fusion, kein zweites System.
- **Verifikations-Stufe:** alle Funde direkte Primaerquellen (AWEL-PDF, reale Korrespondenz/
  Berichte aus dem PL-Ordner) ohne konkurrierende Zweitquelle → Status `established`
  (Checkliste Gebaeudeschadstoffe, SolarApp/PVSOL-Einordnung) bzw. `emerging` (Bern-Portal,
  Sunrise-Delta — Einzelfall-Beleg).
- Register nachgefuehrt: `training/curriculum.md` K37-K39 + E36-E38, `wiki/QUESTIONS.md`
  A/D-Sektion, `wiki/INDEX.md`, `raw/_INGESTED.md`.

## 2026-07-14 — Training Run 41 (Recht/Norm + Brandschutz, Token-Vollgas, Fan-out): AHB-Honorar/Nachhaltigkeit/CAD/Submission auf established + BSR-14-15-Fehlidentifikation korrigiert
- **Recht/Norm (§5-§8 [[recht-norm-ahb-stadt-zuerich-projektstandards]], Status auf established
  gehoben):** vier weitere `Projektadmin AHB`-Unterordner ausgewertet — **Honorarwesen** (SIA-
  102/103/105/108:2003-Abweichungen, Z-Werte 2009, Zeittarif A-G, TGA-Reduktionstabelle, direkt
  nutzbar fuer Skill `honorarberechnung-sia102`), **Nachhaltiges Bauen/eco-bau** (KBOB/eco-bau/
  IPB-Vertragsbedingungen vertraglich verbindlich bei Stadt-ZH-Mandaten, SIA-112/1-Checkliste,
  7-Meilenschritte-Programm), **CAD-Richtlinie AHB** (technische Eckwerte + Formate-Matrix),
  **Submissions-/Zahlungswesen AHB** (SR 720.110 + Wegleitung 09/2006; zwei Dateien als Duplikat
  der kantonalen SubV ZH identifiziert). Rest-Backlog (Bauwerkdokumentation, Ingenieurwesen,
  26 Nachhaltigkeits-Einzelchecklisten, TGA-Rest) in §9 dokumentiert.
- **Brandschutz (§5ad [[brandschutz-pl03-wegweiser]], established):** **Korrektur einer
  Fehlidentifikation aus Run 39** — die dort als «BSR 14-15» erfasste Datei war tatsaechlich
  BSR 13-15 (bereits in §4 dokumentiert); die echte BSR 14-15 «Verwendung von Baustoffen» liegt
  unter dem kryptischen Dateinamen `BSPUB-1394520214-77.pdf`, jetzt vollstaendig gelesen und
  eingearbeitet (Geltungsbereich, cr-Abdeckungsstaerken, Hochhaus-RF1-Pflicht, WDVS-Brandriegel,
  zwei Healthcare-Funde: RF1-Pflicht Beherbergung [a] + Patientenzimmer-Ausnahme). Doppel-
  verifiziert gegen das unabhaengige Normen-KB-Destillat `vkf-brl-verwendung-baustoffe.md`
  (deckungsgleich); Datenstand-Delta (Stempel 2017 vs. Destillat-Frontmatter 2015) geflaggt statt
  selbst korrigiert. Ordner `02 Brandschutzrichtlinien 2015-17-22/` damit vollstaendig
  ausgewertet.
- Details: `outputs/2026-07-14_training-run41.md`.

## 2026-07-14 — Training Run 40 (Kartenportale + Energie, Token-Vollgas, Fan-out): neuer Denkmalschutz/ISOS-Artikel + Connector-Erweiterung + vier neue Energie-Fundstellen
- **Kartenportale (K34-K36):** Ordner-Abgleich PL-01 deckt eine bisher unerschlossene zweite
  Schutz-Domaene auf — **Denkmalpflege/Archaeologie** (national ISOS nur Portal-Link, kantonal ZH
  Denkmalschutzobjekte + archaeologische Zonen, §§ 203/209/211 PBG). Beim Retest der
  `maps.zh.ch/wfs/OGDZHWFS`-GetCapabilities zwei bisher unbekannte login-freie Layer gefunden UND
  **live end-to-end getestet** (`ogd-0368_..._denkmalschutzobjekte_p` + `ogd-0087_..._archzonen_f`,
  4 reale Objekte am Benchmark Haselstudstrasse 2 Wald ZH) → NEU [[kartenportale-denkmalschutz-isos]]
  (emerging), Connector `geo-zh.mjs` um `--produkt denkmalschutz` erweitert und getestet. Zwei
  kleinere Deltas: .gdb-Format (ESRI File-Geodatabase) als achtes Datenformat ergaenzt (K35,
  established) und Bezirk Einsiedeln «Buero Bauen» + eBau-Pflicht seit 1.12.2022 praezisiert (K36).
- **Energie (E32-E35):** vier Neufunde, alle in [[energie-pv-eignung-typenwahl]] eingearbeitet —
  Planungsgrenzwerte dachintegriertes Typ-B-System (Dachneigung 10-60°, Schneelast-
  Bemessungswert, Hinterlueftung ≥60 mm, §1c), 5-stufige PV-Eignungsklassen-Skala uvek-gis/
  sonnendach.ch (§2b), erster belegter installierter System-CHF/kWp-Wert (6-kWp-Muster ≈ 3'190
  CHF/kWp, schliesst E11-Luecke teilweise, §3), architektonische PV-Integrationsbeispiele aus dem
  TEC21-Dossier «SolaRes Bauen» (Plusenergiehaus Hoengg, Umwelt Arena Spreitenbach, §5, emerging).
- Details: `outputs/2026-07-14_training-run40.md`.

## 2026-07-14 — Training Run 39 (Recht/Norm + Brandschutz, Token-Vollgas, Fan-out): neuer AHB-Stadt-ZH-Artikel + BSV-2026-Refresh/drei neue Brandschutz-Fundstellen
- **Recht & Norm (R39):** bisher nie kartierter Ordner `04_Merkblätter/Projektadmin AHB/` (Amt
  fuer Hochbauten Stadt Zuerich / Immobilien-Bewirtschaftung IMMO, Pflichtenheft fuer beauftragte
  Planer) ausgewertet — SIA-416/d-0165-Flaechenformelkette (GF/NGF/KF, **HNF 6 Heilen und
  Pflegen**), CAFM-Bezeichnungssystem, SiNa-Elektro-Kontrollperioden (Spitaeler/Heime 5 Jahre),
  GA-Standard Pflegezentren PZZ (Raumautomation nach Raumtyp, Alarm-Prioritaeten) → NEU
  [[recht-norm-ahb-stadt-zuerich-projektstandards]] (emerging), Backlink in
  [[recht-norm-raumprogramm-referenzwerke]]. Sechs Unterordner als Backlog (Submissionswesen AHB,
  CAD-Richtlinie, Honorar-AHB SIA 102/103/105/108-2009, Ingenieurwesen, eco-bau, GT-Richtlinien).
- **Brandschutz (B30/C31):** BSV-2026-Refresh unveraendert bestaetigt (politische Vernehmlassung
  weiterhin 08/2026, Inkrafttreten Herbst 2027), neu belegt ca. 11'000 Rueckmeldungen aus der
  abgeschlossenen technischen Vernehmlassung. Drei bisher nie ausgewertete Dateien im Ordner
  `02 Brandschutzrichtlinien 2015-17-22/` gelesen: VKF-Vernehmlassungsbericht 2013 (Genese BSV
  2015, inkl. bisher unbekannter Kindergarten-/Altersheim-Ausnahme von der 600-m²-
  Bagatellschwelle), Teilrevision-2017-Volltext-Delta AFC Basel (bestaetigt bestehenden KB-Stand),
  SZS steeldoc Stahlbau-Brandschutz (neue Fachquelle) → NEU §5ac [[brandschutz-pl03-wegweiser]].
  Registrierungs-Luecke geschlossen: BSR 14-15 "Verwendung von Baustoffen" war unbenannt/nie
  katalogisiert (Volltext-Destillation offen). Nebenbefund: verwaisten Formatierungsfehler
  (Text-Duplikat ohne Bullet-Praefix) in `wiki/INDEX.md` bei der Wegweiser-Zeile behoben.
- Details: `outputs/2026-07-14_training-run39.md`.

## 2026-07-14 — Training Run 38 (Kartenportale + Energie, Token-Vollgas, Fan-out): zwei neue Kartenportale-Funde + Energie-Datenstand-Refresh
- **Kartenportale (K32/K33):** achtgradost.ch betreibt neben der historischen-Terrain-
  Rekonstruktion (K14) zusaetzlich ein oeffentliches, login-freies Gemeinde-WebGIS (White-Label,
  analog geoglatt.ch/K15) — Fallbeleg Regensdorf (Zonenplan/OEREB/Baulinien/AV/Orthofoto) → NEU
  §5 [[kartenportale-historisches-terrain-vermessungsbuero]]. geodienste.ch-Bestellmechanik
  praezisiert (dreisprachige Bestaetigungslink-Mail + kantonale Zugriffsrechte-Pruefung je
  Bestellung, real Kt. BE EGRID CH609835664683) — erklaert das dokumentierte Kt.-LU-Ablehnungs-
  muster → [[kartenportale-geoportale-uebersicht]].
- **Energie (E5/E9/E31):** MuKEn-2025-ZH-Umsetzung + THGE-Grauenergie-Grenzwert unveraendert
  bestaetigt (kein Vernehmlassungs-/Inkrafttretensdatum amtlich auffindbar); eine unbelegte
  Sekundaerquellen-Behauptung ("ZH-Zielwert bis 2027") bewusst NICHT uebernommen (Rule
  `identifikatoren-verifizieren` — nur amtlich verifizierte Aenderungen fuehren zur Uebernahme) →
  [[energie-energienachweis-zh-formulare]] / [[energie-uebersicht]]. Pronovo-KLEIV-Tarifstruktur
  seit 01.04.2025 unveraendert bestaetigt → [[energie-betriebsenergie-pv-wirtschaftlichkeit]].
- Details: `outputs/2026-07-14_training-run38.md`.

## 2026-07-14 — Training Run 37 (Brandschutz-Rueckstand + Recht/Norm, Token-Vollgas, Fan-out): Doppelspur-Fix + vier PL-03-Nachzuegler + drei neue PL-02-Funde
- **Brandschutz — Rueckstand vollstaendig geschlossen:** Doppelspur-Flag (aeltester offener Punkt,
  Wissens-Chef Run 3) geloest — §5o-§5y in [[brandschutz-pl03-wegweiser]] Ziffer-fuer-Ziffer gegen
  `wissen/normen/destillate/vkf-brl-*` verifiziert (keine Abweichung) und auf Destillat-Verweis +
  JANS-Anwendungsnotiz gekuerzt (Rule `normen-referenz.md`), Ausnahme §5s (raucharme-Schicht-
  Zahlenwerte, direkt gegen Original S. 10 verifiziert, bleiben stehen). Rest-Backlog aus Run 34
  vollstaendig abgearbeitet: §4 Baustoff&Bauteile BSR 13-15 (Verweis auf Normen-KB-Destillat,
  F30/F60→EI-Tabelle), §5z Gefaehrliche Stoffe BSR 26-15 (niedrige Prioritaet bestaetigt, Ausnahme
  Notstromaggregate-Diesel dokumentiert), §5aa DIN EN 12101-2 (Produktnorm-Ebene NRWG), §5ab
  Brandmauern 100-15 (0-Byte-Sync-Problem geloest, REI 180/90/60-Hierarchie). Solaranlagen-Merkblatt
  2001-15: Rev.-2022-Datenstand bestaetigt, aber Original nicht im SharePoint-Inventar →
  [[energie-pv-brandschutz]] Datenstand-Vermerk.
- **Recht & Norm — Ordner-Abgleich `04_Merkblätter` (~110 Dateien, nie systematisch geoeffnet):**
  drei Funde — NEU [[recht-norm-hindernisfreies-bauen-zh]] (BehiG-Geltungsbereich, Aufzugs-/
  Wohnungsbau-Fixmasse, Mehrkosten-Schwelle 20 %/5 %, schliesst SIA-500-Vollzugsluecke aus Run 32),
  §7b [[kartenportale-naturgefahren-objektschutz]] (Hochwassergefahrenkarte ZH, § 22 WWG,
  Gefahrenstufen), [[recht-norm-ivhb-baubegriffe]] (Dachlandschaften-Leitfaden AFS, PV-Kategorien
  nach Denkmalschutz-Anspruch). RPG-2-Refresh: Stand unveraendert seit 2026-06-28/07-13 (amtlich
  gegengeprueft) → [[recht-norm-quellenlandkarte]] R6-Ergaenzung.
- Methodik: Fan-out ueber zwei parallele Agenten (Brandschutz + Recht/Norm), Verifikations-Stufe
  Pflicht eingehalten (Ziffer-Abgleich + Original-Gegenprobe). Report: `outputs/2026-07-14_training-run37.md`.

## 2026-07-14 — Training Run 36 (Brandschutz + Energie, Token-Vollgas): vier VKF-Richtlinien §5v-§5y + Pronovo-Foerdersystematik
- **Brandschutz:** vier weitere VKF-Einzelrichtlinien aus dem B27-Rest-Backlog gelesen und als
  §5v-§5y in [[brandschutz-pl03-wegweiser]] eingearbeitet — **BSR 12-15** (Sicherheitsbeauftragter-
  Pflicht Beherbergung [a]/>2'400 m² VF/>300 Pers./>10'000 m² BA-Flaeche + Sprachalarmierung ab
  50/300 Betten + Dekorations-RF2/RF3 + Geruestbekleidung ≥0.8 m), **BSR 22-15** (Blitzschutzpflicht
  Spital/Pflegeheim/Hochhaus >30 m + Blitzschutzklasse III/II je Nutzung, SEV 4022/SN EN 62305),
  **BSR 24-15** (Heizraum EI 30 bis 70 kW / EI 60 >70 kW, direkter Freien-Zugang >1'200/600 kW,
  Sicherheitsabstaende 0.1/0.2/0.4 m, gewerbliche Kueche EI 30 + Schuerze RF1), **BSR 25-15** (BSK
  EI 30-S + Verzichts-Schwellen ≤1'200/600 m², Kuechenabluft-Staffel 4'000/12'000 m³/h EI 60,
  erhoehte Lufttemperatur ≥85 °C). Sources-Frontmatter + Wegweiser-Fragen-Block + INDEX-Zeile
  ergaenzt (inkl. Reparatur der in Run 34 abgeschnittenen INDEX-Brandschutz-Zeile).
- **Energie:** NEU [[energie-betriebsenergie-pv-wirtschaftlichkeit]] (emerging) — schliesst die in
  [[energie-uebersicht]] §Betriebsenergie offen gebliebene «aktuelle KLEIV-Ansaetze»-Frage mit der
  belegten **Pronovo-Einmalverguetungs-Systematik** (KLEIV 2-<100 kWp / GREIV 100 kW-50 MW / HEIV,
  Grundbeitrag + degressiver Leistungsbeitrag, max. 30 % Referenz-Investition, Neigungswinkelbonus
  250→400 / 100→200 CHF/kW ab 01.01.2025, Parkflaechenbonus 250 CHF/kW, Senkung ≤30 kW + ≥100 kW je
  -20 CHF/kW ab 01.04.2025; absolute Saetze bewusst nur via Tarifrechner). Der EFH-Betriebskosten-
  Fall (Run 27) wurde re-verifiziert, aber NICHT dupliziert; Cross-Updates in [[energie-uebersicht]]
  und [[energie-pv-eignung-typenwahl]] §3 (neue Fall-Tabellenzeile, CHF/kWp «nicht isolierbar»).
- Register: `raw/_INGESTED.md` (2 Zeilen), `training/curriculum.md` (B28, E30), `wiki/QUESTIONS.md`
  (C10, D5-Ergaenzung, D8 erledigt, D9 offen: MFH/ZEV-Fall + Steuerabzug), `wiki/INDEX.md`.
- Leitplanke eingehalten: keine erfundenen CHF/kWp-Foerdersaetze (dynamischer Tarifrechner), Web-
  Datenstand 2026-07-14 vermerkt, Norm-Richtlinien verlinkt statt abgeschrieben.

## 2026-07-13 — Training Run 35 (Recht & Norm, Token-Vollgas): «Richtprojekt»/Ueberbauungsordnung neu + Raumpilot-Fehlannahme korrigiert
- Systematischer Top-Level-Ordnerabgleich PL-01/PL-02 gegen das Curriculum (Methodik analog
  Run 31 K27/K28/K31): Kartenportale bestaetigt erschoepft (994 Dateien, kein neuer Ordner, keine
  seit 01.07.2026 geaenderte Datei); Recht & Norm foerdert vier bisher nie kartierte Ordner zutage.
- NEU [[recht-norm-richtprojekt-ueberbauungsordnung]]: Ordner `08_Richtplan` (irrefuehrend
  benannt) enthaelt kein Richtplan, sondern das **Richtprojekt** — die verbindliche Massskizze im
  Anhang einer privaten Sondernutzungsplanung (Gestaltungsplan ZH § 83 PBG / Ueberbauungsordnung
  Kt. Bern). Realer Fall UeO «VistaRotonda» Kt. Bern, Datenblatt Landflaeche/BGF/Parkplatzbedarf/
  Kubatur SIA 116. **Korrigiert eine private KI-generierte Fehlquelle** (Copilot-Notiz ordnete
  «Richtprojekt» faelschlich als SIA-102-Projektphase ein).
- Korrektur [[recht-norm-raumprogramm-referenzwerke]] §1: die seit Run 23 gefuehrte Annahme
  «Raumpilot Arbeiten/Lernen nicht im JANS-Bestand» war falsch — das Volltext-Inhaltsverzeichnis
  der 582-seitigen `Raumpilot-Grundlagen.pdf` zeigt vollstaendige Typologie-Kapitel Arbeiten
  (S. 349-454) und Lernen/Schulbau (S. 455-571), Stichprobe verifiziert echten Inhalt.
- Zwei ehrliche Nicht-Funde dokumentiert: Eisenbahngesetz-Ordner (reine Bahnbetreiber-Technik
  AB-EBV/VEAB, kein Bahnabstand fuer Drittbauten), `10 Lärmschutz` (kein Delta, bereits erfasst).
- Wissens-Chef-Doppelspur-Flag (Brandschutz-KB-normen-Referenzierung) als offene Aufgabe fuer den
  naechsten Brandschutz-Rotationslauf in `wiki/QUESTIONS.md` §C vermerkt (dieser Lauf war
  Recht-&-Norm-fokussiert).
- Bericht: `outputs/2026-07-13_training-run35.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): 2 Querbezuege zur fuehrenden KB normen
- [link] `brandschutz-pl03-wegweiser.md`: Querbezug-Block → KB normen (`vkf-*`-Destillate) als kanonische VKF-Fundstelle (Rule `normen-referenz.md`). **Doppelspur-Flag:** Run 34 hat VKF-BSR-Ziffern/Kennwerte direkt eingearbeitet; die Werte sind deckungsgleich (kein Widerspruch), aber materielle VKF-Ziffern sollen kuenftig aus normen gezogen statt dupliziert werden → offener Punkt fuer den naechsten `planungsgrundlagen-training`-Lauf.
- [link] `energie-pv-brandschutz.md` → normen `vkf-merkblatt-2001-15-solaranlagen`; ⚠ Ausgaben-Delta 2015 (normen) vs. Rev. 2022 (hier belegt), z.B. Unterdachbahnen RF3(cr)/RF4(cr). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Training Run 34 (Brandschutz + Energie, Token-Vollgas): acht bisher nie ausgewertete VKF-Einzelrichtlinien + U-Wert-Ordner-Delta
- Fund: Ordner `PL-03/02 Brandschutzrichtlinien 2015-17-22/` enthaelt >20 einzelne VKF-BSR-PDF,
  von denen nur 3 ausgewertet waren — der Rest war nur pauschal als «02 BSR» kartiert.
- Acht Volltexte neu gelesen und in [[brandschutz-pl03-wegweiser]] §5o-§5u eingearbeitet:
  Brandmeldeanlagen (BSR 20-15, Beherbergung [a] IMMER Vollueberwachung), Sprinkleranlagen
  (BSR 19-15, Verkaufsgeschaefte/Parkhaus-Schwellen), Loescheinrichtungen + Befoerderungsanlagen
  (BSR 18-15/23-15, Feuerwehraufzug tragbahrentauglich), Kennzeichnung von Fluchtwegen (BSR 17-15),
  Nachweisverfahren im Brandschutz (BSR 27-15), Begriffe und Definitionen (BSR 10-15, amtliches
  Glossar), Flucht- und Rettungswege Volltext (BSR 16-15, neue Fluchtweglaengen/Breitenformel).
  §1-Register mit vollstaendiger Titelliste + Rest-Backlog ergaenzt.
- Energie: Ordner `U Wert berechnung/` — drei echte Deltas (EN-102-d Vollzugshilfe 2018,
  Bauteilkatalog Neubauten BFE 2002 mit konkreten Schichtaufbauten, CLT-Luftdichtheit/Feuchte) in
  [[energie-heizwaermebedarf-waermeerzeugerleistung]] §5 eingearbeitet; MuKEn-2025-ZH-Refresh
  unveraendert bestaetigt.
- Register: `training/curriculum.md` (B27/E29), `wiki/QUESTIONS.md` (C29/D21), `raw/_INGESTED.md`,
  `wiki/INDEX.md` nachgefuehrt. Report: `outputs/2026-07-13_training-run34.md`.

## 2026-07-13 — Training Run 33 (Recht & Norm + Kartenportale, Token-Vollgas): letzte offene Curriculum-Punkte geloest statt neuer Ordner-Rundgang
- Curriculum nach 32 Laeufen fast lueckenlos abgearbeitet — statt eine weitere Ordner-Vollsuche
  zu fahren, wurden die verbliebenen "Offen"-Vermerke gezielt aufgeloest.
- **Recht & Norm:** IVHB-Leitfaden Ziff. 5.1-8.5 vollstaendig gelesen (Gesamthoehe/Fassadenhoehe/
  Kniestockhoehe/lichte Hoehe, Voll-/Unter-/Dach-/Attikageschosse, Grenz-/Gebaeudeabstand/
  Baulinien/Baubereich, Baumassen-/Ueberbauungs-/Gruenflaechen-/Ausnuetzungsziffer +
  Dachaufbauten-/Wintergarten-Boni, amtlicher Wortlaut §§ ABV/PBG) → [[recht-norm-ivhb-baubegriffe]]
  jetzt vollstaendig. `4094.pdf` im SubV-Ordner identifiziert (Kantonsratsvorlage 23.7.2003,
  Weisung zur SVO-Revision, Entstehungsgeschichte IVoeB-Beitritt 1996/SVO in Kraft 1997) →
  [[recht-norm-submissionsverordnung-zh]].
- **Kartenportale:** ZH-OGD-WFS-`GetCapabilities` erneut abgerufen (Run-24-Fehler war transient) —
  Grundwasserschutzzonen-Endpunkt gefunden (`ogd-0143_..._gws_zone_f` + `ogd-0149_..._gws_areal_f`),
  per `GetFeature` an 2 Benchmarks schema-valide getestet (0 Treffer, Endpunkt funktioniert) →
  [[kartenportale-naturgefahren-objektschutz]] §8, emerging. Naturgefahrenkarte-Layer weiterhin
  nicht im WFS-Katalog; WMS-Rateversuch bestaetigt login-gesperrt.
- Report: `outputs/2026-07-13_training-run33.md`.

## 2026-07-13 — Training Run 30 (Recht & Norm + Brandschutz, Token-Vollgas): 2h-Schatten/Post-Briefkasten/Absturzsicherung/Zimmerzaehlung/STWEG-Teilungsplan + Lignum-Erdbeben geloest
- Rotation nach Run 29: **Recht & Norm (PL-02) + Brandschutz (PL-03)**. Beide Domaenen sind nach
  29 Laeufen so weit erschlossen, dass zuerst die komplette Ordnerstruktur gegen das Curriculum
  abgeglichen wurde, um echte Luecken statt bereits dokumentierter Themen zu finden.
- **Recht & Norm — drei Planungsdetail-Arbeitshilfen (R22-R24), ein Delta-Check (R25), ein
  Materialbuendel (R26):** **2-Stunden-Schatten** (§ 284 Abs. 4 PBG/§ 30 ABV, Konstruktions-
  verfahren + Azimut/Sonnenhoehe-Tabelle), **Post-Briefkastenanlage** (UVEK-Postverordnung 1998,
  Standort/Mindestmasse), **Absturzsicherungen im Hochbau** (Richtlinie Stadt Zuerich 1.6.2019,
  Gelaender/Bruestungshoehen, kindersicher/nicht kindersicher, 15-%-Bestandsschwelle) → alle drei
  NEU [[recht-norm-arbeitshilfen-planungsdetails]]. **Zimmerzaehlung ZH-Wohnbaufoerderung**
  (Kt.-ZH-Merkblatt 15, halbe-Zimmer-Definition, eigenstaendiges kantonales Instrument, kein Delta
  zur Bundes-WBS) → Ergaenzung [[recht-norm-raumprogramm-referenzwerke]] §2b. **STWEG-Teilungsplan-
  Vermessungsseite** (reales JANS-5-Phasen-Vorgehen Ebmatingen/WOMA + amtliche swisstopo-
  Empfehlung «Digitale Dokumentation Stockwerkeigentum – Aufteilungsplan» 05.05.2020 mit INTERLIS
  DM.StWE + reale Wertquotenberechnung-Benchmark Hafenstrasse 46 Romanshorn) → NEU
  [[recht-norm-stweg-teilungsplan-wertquoten]], speist Skill `stockwerkeigentum` + Agent
  `wertquoten-rechner`.
- **Brandschutz — B25 geloest + ein Delta-Check (B25-B26):** die seit Run 24 wiederholt als
  OneDrive-Cloud-Platzhalter unlesbare Datei **«Erdbebengerechte mehrgeschossige Holzbauten»**
  (Lignum/SIA/SGEB 2010) liess sich in diesem Lauf vollstaendig lesen (reines Sync-Timing) — SIA
  260-267/261/265, Ersatzkraft-/Antwortspektrenverfahren, Grundschwingzeit-Schaetzformel T1=2√u,
  duktiles Tragwerksverhalten → NEU §5m [[brandschutz-pl03-wegweiser]]. **Lignatec «Bauten in Holz
  — Brandschutz-Anforderungen»** (kein Delta zu §4b, sondern holzbau-spezifische Feuerwiderstands-
  Tabelle nach Geschosszahl×Nutzung×Konzept; Healthcare-Kernbefund: Sprinkler reduziert die
  Tragwerksanforderung nur bei Hotels [b], bei Krankenhaeusern/Pflegeheimen [a] NICHT) → NEU §5n
  [[brandschutz-pl03-wegweiser]].
- **Neue Artikel:** [[recht-norm-arbeitshilfen-planungsdetails]],
  [[recht-norm-stweg-teilungsplan-wertquoten]] (beide `established`).
- **Ehrlichkeit zum Umfang:** 8 belegte Funde statt der Token-Vollgas-Zielgroesse 10-16 — die
  verbleibenden ungenutzten Ordner enthalten entweder bereits abgedeckte Themen oder generisches
  Firmen-/Verwaltungsmaterial ohne Planungsgrundlagen-Bezug (siehe Report fuer die bewusst nicht
  vertieften Fundstellen).
- Report: `outputs/2026-07-13_training-run30.md`.

## 2026-07-13 — Training Run 29 (Kartenportale + Energie, Token-Vollgas) — Nachtrags-Eintrag
- **Nachtrag:** dieser Lauf war inhaltlich bereits am 13.07.2026 ausgefuehrt (curriculum.md K20/K21
  + E18-E26, Wiki-Artikel via NAS-Selfcommit `74cb18e6` gesichert), aber ohne Output-Report/
  CHANGELOG-Eintrag beendet worden. Nachgetragen zu Beginn von Run 30, kein neuer Recherche-Inhalt.
- **Kartenportale — zwei bestaetigte Nicht-Funde (K20/K21):** XML-Datenformate-Ordner (generische
  Web-Erklaerung ohne Geodatenbezug, kein Delta zu K8) und Baumkataster-Ordner oberste Ebene
  (identische Dateien wie K12, kein neuer Layer) — beide ehrlich dokumentiert statt uebersprungen.
- **Energie — zwei neu erschlossene Ordner + zwei Refresh-Checks:** Minergie-Nachweiskurs-
  Unterlagen (reale Fallstudie «Maison Climat» mit konkreten Nachweis-Kennzahlen — Heizwaermebedarf,
  SIA-2060-Elektromobilitaet, PV-Dimensionierung, Monitoring-Pflicht) hebt
  [[energie-minergie-referenzprojekt-maison-climat]] auf `established`; `_Heizwaermebedarf/`-Ordner
  (SIA-380/1-Berechnungsverfahren + SIA-384/1/384.201-Waermeerzeugerleistung) → NEU
  [[energie-heizwaermebedarf-waermeerzeugerleistung]]; EN-101c Kt. Schwyz (SZ-Pendant zum
  EN-ZH-System) → Ergaenzung [[energie-energienachweis-zh-formulare]]; E17-⚠-Flag aufgeloest,
  EVEN-Rollout-Zentralschweiz-Datenstand nachgetragen.
- **Neue Artikel:** [[energie-heizwaermebedarf-waermeerzeugerleistung]] (`established`).
- Report: `outputs/2026-07-13_training-run29.md`.

## 2026-07-13 — Training Run 28 (Recht & Norm + Brandschutz, Token-Vollgas 2 Domaenen): vier unerschlossene PL-02-Ordner + Verifikations-Nachtrag Brandschutz-Parkings
- Rotation nach Run 27: **Recht & Norm (PL-02) + Brandschutz (PL-03)**. Dieser Lauf setzt einen
  bereits VOR Laufbeginn begonnenen, aber unvollstaendig gebliebenen Vorgang fort: vier
  Recht/Norm-Wiki-Artikel waren bereits (durch einen vorherigen, unterbrochenen Trainingsdurchgang)
  vollstaendig geschrieben, aber weder in `curriculum.md`/`QUESTIONS.md`/`INDEX.md` registriert noch
  im CHANGELOG protokolliert; im Brandschutz-Artikel war eine Korrektur (§4c) bereits mit Verweisen
  auf zwei noch nicht existierende Abschnitte «§5g»/«§5l» angelegt. Dieser Lauf hat (1) alle vier
  Recht/Norm-Quellen gegen die Original-PDFs auf Disk verifiziert und die Register nachgefuehrt,
  (2) die fehlenden Abschnitte §5g/§5l recherchiert, geschrieben und gegen die Originalquellen
  verifiziert, (3) vier weitere Brandschutz-Kandidaten gegengeprueft (zwei ergaben Substanz, drei
  bestaetigte Nicht-Funde, ein technischer Zugriffsfehler) — und dokumentiert alles ehrlich,
  inklusive der Nicht-Funde und des technischen Problems.
- **Recht & Norm — vier neue Artikel (R18-R21):** **Baueingabe-Verfahren ZH** (Drei-Spuren-Modell,
  Phasenprinzip mit Fristen, Plandarstellungskonvention § 4 Abs. 4 BVV, reale Fallbeleg-Kennzahlen
  Wartstrasse 8 Zuerich + Bohlweg 3 Thalwil) → NEU [[recht-norm-baueingabe-verfahren-zh]].
  **IVHB-Leitfaden Kt. ZH** (29-Begriffe-Inventar, amtlicher Wortlaut Massgebendes Terrain § 5 ABV +
  Gebaeude-/Kleinbauten-/Fassadenflucht-Begriffe) → NEU [[recht-norm-ivhb-baubegriffe]].
  **Regenwasserentsorgung + Gewaesserraum-Verfahren ZH** (Versickerung vor Einleitung,
  GWS-Zonen-Verbote, Verfahren 2/3 Gewaesserraum-Festlegung) → NEU
  [[recht-norm-regenwasser-gewaesserraum-zh]]. **Submissionsverordnung Kt. ZH** (4 Vergabearten,
  Fristen, Abgrenzung zur privaten JANS-Devisierung) → NEU [[recht-norm-submissionsverordnung-zh]].
- **Brandschutz — Verifikations-Abschluss + zwei Fundstellen (B19-B25):** **§5g «Parking»-Begriff**
  (>600 m² Abgrenzung Ziff. 2.4, Schleusenpflicht ab 1'200 m² Brandabschnittsflaeche — bisher nicht
  dokumentierte Kernzahl) und **§5l BSR 21-15 RWA-Grundrichtlinie** (vollstaendige Parking-Tabelle
  600/3'600/2'400/4'800 m²) schliessen die in §4c bereits zitierte, aber unvollstaendige Korrektur
  der ueberholten 2003er-Parkhaus-Arbeitshilfe ab — beide neuen Quellen bestaetigen die dort
  genannten Zahlen. **BS-Symbole 01.01.2017** (kanonischer Vollkatalog, Delta RDA/SLA/Poller/
  PV-Symbole zum bereits dokumentierten Musterplansatz) → Ergaenzung §5b. Bestaetigte Nicht-Funde:
  **08-QS-Docx** (private, bereits referenzierte Notiz, kein neuer Inhalt), **Solaranlagen-Ordner**
  (byte-identische Datei wie [[energie-pv-brandschutz]]), **07 Blaues Buch** (kein weiteres
  Bildmaterial vorhanden). **Technisch nicht abschliessbar:** Lignum Erdbeben-PDF ist ein
  OneDrive-Cloud-Platzhalter, wiederholt nicht lesbar («Resource deadlock avoided») — offener
  Punkt fuer den naechsten Lauf.
- **Neue Artikel:** [[recht-norm-baueingabe-verfahren-zh]], [[recht-norm-ivhb-baubegriffe]],
  [[recht-norm-regenwasser-gewaesserraum-zh]], [[recht-norm-submissionsverordnung-zh]] (alle
  `established`).
- **Erweiterte Artikel:** [[brandschutz-pl03-wegweiser]] (§5g NEU, §5l NEU, §5b ergaenzt, §4c-
  Korrektur referenziell geschlossen).
- **Verifikations-Stufe:** alle vier Recht/Norm-Quellen sowie beide Brandschutz-Nachtraege wurden
  in diesem Lauf **direkt gegen die Original-PDFs auf Disk geprueft** (Dateiexistenz + Stichproben-
  Volltextabgleich), bevor sie als registriert/`established` galten — kein blindes Uebernehmen
  unregistrierter Vorarbeit.

## 2026-07-13 — Training Run 27 (Kartenportale + Energie, Token-Vollgas 2 Domaenen, Multi-Agent-Workflow): sechs bisher unerschlossene PL-01/PL-04-Fundstellen ausgewertet
- Rotation nach Run 26: Kartenportale (PL-01) + Energie (PL-04). Beide Domaenen waren im
  Curriculum/QUESTIONS praktisch vollstaendig `[x]` — Methode wie Run 25/26: `find`-Abgleich
  der Ordnerbaeume gegen `raw/_INGESTED.md`, um bisher nie geoeffnete Unterordner zu finden.
  Zwei parallele Fach-Agenten (Kartenportale, Energie) haben die Tiefenrecherche unabhaengig
  durchgefuehrt (Autorisierung Rule auto-verbesserungen 260712), der Hauptlauf hat danach die
  Register zentral konsolidiert und eine offene Luecke (Erdwaermenutzung SZ) selbst geschlossen.
- **Kartenportale — drei Fundstellen:** **Grundbuchamt ZH** (formelle, rechtsverbindliche
  Grundbuchauszug-Bestellung via Notariat statt Selbstbedienungs-Eigentumsabfrage; ZH kombiniert
  Notariat/Grundbuchamt/Konkursamt je Bezirk/Quartier, Fundstelle notariate-zh.ch) →
  [[kartenportale-geoportale-uebersicht]], emerging. **Willerzell-WebGIS-Batch SZ** (derselbe
  Kartenexport-Batch wie die bereits dokumentierte Grundwasserkarte): Gewaesser-Oekomorphologie
  (6-stufig natuerlich→nicht bestimmt, Kt.-SZ-Entsprechung zur ZH-GSB-Karte) →
  [[recht-norm-abstandsvorschriften-wald-gewaesser]] + [[kartenportale-naturgefahren-objektschutz]]
  §6b; **Erdwaermenutzung** (Zulaessigkeitszonierung zulaessig/Abklaerung noetig/nicht zulaessig
  + Bestandeskataster Erdregister/Energiekorb/Energiepfahl/Erdwaermesonde) → NEU
  [[kartenportale-naturgefahren-objektschutz]] §6c. **SZ-Geoshop (lisag.ch)** — AV-Daten
  **gebuehrenfrei** ueber vorausgefuellte login-freie URL (Region UR/SZ/OW/NW/ZG), Connector
  noch nicht gebaut → [[kartenportale-geoportale-uebersicht]]; **geodatenshop.zh.ch** als
  Web-UI-Doppel zum bereits dokumentierten Geoshop-API bestaetigt (kein neuer Artikel); **EW
  Lachen AG Einsiedeln** (Wasser/Gas/Fernwaerme/Kanalisation) hat kein Webportal, nur
  E-Mail-Bestellung, plus Liegenschaftsentwaesserungs-Praxis SN 592 000 → NEU
  [[kartenportale-werkleitungskataster]] §7.
- **Energie — drei Fundstellen:** **Betriebsenergie-Praxisfall** (`_Betriebsenergie/`, private
  Drittquelle) — realer Sanierungsfall EFH Baujahr 1957/120 m², PV 14 kWp + Batterie +
  WP-Boiler + Dachdaemmung, Gasbezug 28'613→19'073 kWh, Amortisation ≈ 7 Jahre → NEU Abschnitt
  "Betriebsenergie" in [[energie-uebersicht]], emerging. **Minergie-Referenzprojekt «Maison
  Climat»** — reales Minergie-A-Projekt Seelandweg Biel (20 Mietwohnungen, Holzbau-Ersatzneubau,
  PV-integriert + Erdwaermesonde) → NEU [[energie-minergie-referenzprojekt-maison-climat]],
  emerging (Typologiebeispiel, keine uebertragbaren Kennwerte). **forumenergie.ch** — realer,
  aktiver Weiterbildungsanbieter, JANS-eigener Kursbeleg 26.09.2023 → Weiterbildungs-Hinweis in
  [[energie-private-kontrolle-zh]] §5. pronovo.ch-Ordner bestaetigt leer.
- **Neue Artikel:** [[energie-minergie-referenzprojekt-maison-climat]] (emerging).
- **Erweiterte Artikel:** [[kartenportale-geoportale-uebersicht]], [[kartenportale-naturgefahren-objektschutz]]
  (§6b/§6c), [[kartenportale-werkleitungskataster]] (§7), [[recht-norm-abstandsvorschriften-wald-gewaesser]],
  [[energie-uebersicht]], [[energie-private-kontrolle-zh]].
- **Verifikations-/Qualitaetshinweis:** alle Quellen direkt im Original gelesen (PDF/DOCX/Screenshot/
  eml), keine Endpunkte/Kennwerte erfunden. Zwei Fundstellen sind bewusst als `emerging` statt
  `established` markiert (Betriebsenergie-Fall: Urheber der Drittquelle unbekannt; Grundbuchamt ZH:
  Einzelfall-Beleg). Ein Nacharbeitspunkt der Agenten-Laeufe: beide hatten die neu geschriebenen
  Abschnitte faelschlich mit "Run 26" statt "Run 27" beschriftet (Konsolidierungslauf hat das in
  allen betroffenen Wiki-Dateien korrigiert) — Lehre fuers naechste Mal: Agenten-Prompts sollten die
  korrekte Run-Nummer nochmals explizit im Text wiederholen, nicht nur im Prompt-Kontext.
- **Was als naechstes:** Rotation naechster Lauf Recht & Norm + Brandschutz (PL-02/PL-03); beide
  Domaenen sind aehnlich weit abgearbeitet wie Kartenportale/Energie — auch dort weiterhin per
  `find`-Abgleich nach unbearbeiteten Restordnern suchen statt Curriculum-Punkte zu wiederholen.

## 2026-07-13 — Training Run 26 (Recht/Norm + Brandschutz, Token-Vollgas 2 Domaenen, Multi-Agent-Workflow): sechs + fuenf nie erschlossene PL-02/PL-03-Unterordner ausgewertet
- Rotation nach Run 25: Recht & Norm (PL-02) + Brandschutz (PL-03). Beide Domaenen waren im
  Curriculum/QUESTIONS praktisch vollstaendig `[x]` — Methode wie Run 25: `find`-Abgleich der
  Ordnerbaeume gegen `raw/_INGESTED.md`, um bisher nie geoeffnete Unterordner zu finden. Zwei
  parallele Fach-Agenten (Recht/Norm, Brandschutz) haben die Tiefenrecherche unabhaengig
  durchgefuehrt (Autorisierung Rule auto-verbesserungen 260712), der Hauptlauf hat die Register
  danach zentral konsolidiert (Vermeidung von Schreibkonflikten auf gemeinsamen Dateien).
- **NEU [[recht-norm-radonschutz]] (established):** Radonschutz nach Strahlenschutzverordnung —
  wichtigster Fund: die abgelegte SharePoint-PDF `814.501.pdf` ist die **Stammfassung von 1994**
  und seit der Totalrevision vom 26.04.2017 (in Kraft 01.01.2018) ersetzt; per fedlex `cc/2017/502`
  korrigiert. Radonreferenzwert **300 Bq/m³** (Art. 155), Arbeitsplatz-Schwelle 1000 Bq/m³
  (Art. 156), Bauherrenpflicht bei Neu-/Umbau (Art. 163, kein eigenes Formular), Sanierungspflicht
  (Art. 166); BAG-Vorsorgemassnahmen (durchgehende Bodenplatte, RDS-Durchfuehrungen, SIA 272/
  180/2023); aktuelle Radonkarte `ch.bag.radonkarte` (map.geo.admin.ch) loest die alte
  Gemeinde-Statistik ab.
- **NEU [[recht-norm-zivilschutz-bautechnik]] (emerging):** TPH-18 (BABS 19.05.2003, gasdichte/
  druckfeste Durchfuehrungen durch Schutzraum-Huellen, Pruefpflicht ab Ø 60 mm); **Ersatzbeitrag-
  Revision ZSV per 01.01.2026: CHF 1'400/Schutzplatz** (vorher 800, neu auch Um-/Anbauten),
  kreuzverifiziert mit dem bereits in `wissen/auflagebereinigung` dokumentierten Fall 2619-KISPI
  (15 SP × 1'400 = 21'000 CHF).
- **NEU [[recht-norm-arbeitsplatz-bauvorschriften]] (established):** ArGV 3/4 — Luftraum 12/10 m³
  pro Person (Art. 12 ArGV 3), Tageslicht-Grundsatz + Kompensation fensterloser Raeume (Art. 15
  ArGV 3), gestaffelte Mindest-Raumhoehe 2.75-4.00 m (Art. 5 ArGV 4), Verkehrswegbreite 1.20 m
  (Art. 6 ArGV 4).
- **[[recht-norm-raumprogramm-referenzwerke]] erweitert (§4/§5):** Trockenraeume (§ 297 PBG/
  § 39 BBV I + Stadt-ZH-Vollzugspraxis, 1 Trockenraum/10 m² je 9 Wohnungen) und Bettenlift-Pflicht
  (§ 40 BBV I ab >5 Geschossen), **eingeschraenkt durch BRKE I 0117/1999 auf Alters-/Krankenheime**
  — direkte Healthcare-Relevanz fuer `healthcare-wirtschaftlichkeit`.
- **[[recht-norm-baurechtsanalysen-benchmarks]] erweitert:** Attika-Praxisfall «Zuerichseegut»
  (Namensverwechslung ZSG im Dateinamen aufgeloest — Projektabkuerzung, nicht Zivilschutzgesetz),
  Art. 292 PBG Aesthetikermessen/Firstrichtungs-Vermutung/zonenfremde Nutzung.
- **[[recht-norm-dispensrecht]] ergaenzt:** Mehrwertrevers/Beseitigungsrevers als Cross-Referenz
  (Revers ≠ Mehrwertabgabe RPG Art. 5; Tiefe bereits in `wissen/baurecht` vorhanden — bewusst kein
  eigener Artikel, um Dopplung zu vermeiden).
- **[[brandschutz-pl03-wegweiser]] erweitert um §5b-§5f:** bsvonline.ch-Musterplansatz (Legende/
  Symbolik BS-Plan einfach EI60/EI30-RF1-Farbcode, Objektdatenblatt Feuerwehrplaene); Feuerwehr-
  Bewegungs-/Stellflaechen (6×11 m, Schlauchlaenge 60 m, Stuetzenlast 800 kN/m² — ⚠ Quelle nur
  Foto ohne erkennbaren Dokumenttitel, Verifikation offen); **Fluchtwegkonzept Beherbergung [a]
  nach BSR 16-15 Ziff. 3.6.1** (horizontale Evakuierung, mind. 2 unabhaengige Brandabschnitte je
  Bettengeschoss — Kernparameter fuer Kinderspital-/Pflegeheim-Layout, real am KISPI-Ordner
  belegt); Blaues Buch Kap. 18 Brandschutz (§ 305 PBG geht vor BSN wo strenger, z.B. Haustuer-
  Lichtmass 1 m statt 0.9 m — nur 2 von vermutlich >10 Doppelseiten gelesen, Rest offen);
  VKF-Verzeichnis 40-15 «Weitere Bestimmungen» (Konkordanz-Tabelle, niedrige Prioritaet als
  schlanker Hinweis eingeordnet).
- **Geprueft, keine Inhalte:** Ordner `PL-03/11 Projekte/` ist leer; `PL-02/01_Gesetze/01_Bund/
  07_Neuffert` und `04_Merkblätter` sind leer.
- **Offen fuer Folgelaeufe:** fedlex-ELI fuer SR 520.11 (ZSV) und SR 822.113/822.114 (ArGV 3/4)
  noch nicht ermittelt; `twp84d.pdf`/`TPH-19-d` nicht gelesen; Schutzplatz-Bemessungsformel
  (Personen/m²) nicht gefunden; Feuerwehr-Bewegungsflaechen-Quelle (§5c) gegen die formelle
  VKF-Publikation verifizieren; Blaues Buch Kap. 18 restliche Ziffern nachziehen.
- Naechste Domaenen laut Rotation: Kartenportale + Energie.

## 2026-07-13 — Training Run 25 (Kartenportale + Energie, Token-Vollgas 2 Domaenen): eBau SZ + historisches Terrain neu erschlossen, Rutschgebiete vertieft, CLT-Bauphysik belegt
- Curriculum/QUESTIONS beider Domaenen waren praktisch vollstaendig `[x]` — Methode dieses Laufs:
  vollstaendiger `find`-Abgleich des PL-01/PL-04-Ordnerbaums gegen `raw/_INGESTED.md`, um bisher
  nie geoeffnete Unterordner zu finden statt bekannte Luecken zu wiederholen.
- **NEU [[kartenportale-ebau-sz-baugesuch]]:** digitales Baugesuchsportal Kt. SZ (Buergerportal,
  kein Papierweg) — Registrierung + reale Pflichtfeld-/Beilagen-Checkliste aus einer echten
  JANS-Arbeitsnotiz (Fall Reckholdernstrasse 20 Willerzell): Vermessungsangaben via WebGIS SZ,
  GVZ-Nr., Gebaeudevolumen SIA 116 **und** SIA 416 doppelt verlangt (3 offene Fachfragen
  dokumentiert), Entwaesserungsplan SN 592 000, **Oberflaechenabfluss als eigener, von der
  Naturgefahrenkarte unabhaengiger Layer**, Schadstoff-Schwelle 200 m³.
- **NEU [[kartenportale-historisches-terrain-vermessungsbuero]]:** schliesst die Luecke zwischen
  amtlichen Geodaten (swissALTI3D = nur Ist-Zustand) und der Baumassenziffer-Berechnung bei
  Ersatzneubauten — private Vermessungsbueros rekonstruieren das historische Terrain aus
  digitalisierten Kantonskarten (PDF/DWG/LandXML); realer JANS-Fall Regensdorf Holenbachstrasse
  45-55 (Acht Grad Ost AG, Auftraggeber Nova Property/Christoph Bopp). Direkter Anschluss an Skill
  `massgebendes-terrain`.
- **[[kartenportale-naturgefahren-objektschutz]] neuer §7:** Praxishilfe inggeol.ch "Bauen im
  Rutschgebiet" vollstaendig ausgewertet — Naturgefahrenkarte zeigt nur den ungestoerten Zustand,
  das Bauvorhaben selbst ist eine projektabhaengige Zustandsaenderung (gerade die gelbe Stufe wird
  deshalb unterschaetzt); typische baubedingte Ausloeser + bewaehrte Rollenverteilung
  Architekt/Bauingenieur/Geologiebuero.
- **[[kartenportale-geoportale-uebersicht]] neuer Abschnitt "Weitere Kantone/regionale Portale":**
  Kt. Luzern (Geodatenshop funktioniert zuverlaessig; parallele `geodienste.ch`-Bestellung wurde
  ohne Begruendung abgelehnt — Praxis-Lehre), Kt. Bern, `geoglatt.ch` — alle niedrige Prioritaet,
  nur Kurzprofil.
- **[[energie-uebersicht]] §U-Wert ergaenzt:** CLT-Bauphysik (Stora Enso, V06.2021) belegt —
  λ_CLT=0,12 W/mK, U-Wert-Beispiele unbekleidet (0,997 W/m²K) / gedaemmt (0,179 W/m²K); realer
  JANS-Wandaufbau Biwak Grassen (≈U 0,40 W/m²K gegen Zielwert 0,5, Stroh-Alternative gepruefet).
- Register nachgefuehrt: `curriculum.md` (K13-K16, K10-Rutsch, E13-E14 neu + `[x]`),
  `raw/_INGESTED.md` (8 neue Quellen-Zeilen), `wiki/INDEX.md` (2 neue Artikel + Ergaenzungen),
  Output-Report `outputs/2026-07-13_training-run25.md`.

## 2026-07-13 — Training Run 24 (Kartenportale + Brandschutz, Token-Vollgas 2 Domaenen): Naturgefahren-Checkliste vertieft, Grundwasserkarte + Baumkataster neu, vier Brandschutz-Sonderbauaufgaben (Atrien/Doppelfassaden/Kleinstbeherbergung/Holzbau) erschlossen
- **[[kartenportale-naturgefahren-objektschutz]] erweitert (K10-Rest):** VKG/SIA/HEV-Checkliste
  «Gebaeudeschutzmassnahmen» (Dez. 2020) vollstaendig gelesen — Gefaehrdungsabklaerung je
  Naturgefahr mit Normzuordnung, **Praezisierung SIA 261 (Neubau) vs. SIA 269/8 (Umbau) bei
  Erdbeben** (JANS-Kerngeschaeft ist ueberwiegend Umbau/Sanierung, die falsche Norm waere ein
  Fehler), Bauteilkatalog-Prinzip, Hagelregister.ch + HW3-Empfehlung (Querverweis
  [[energie-pv-brandschutz]]). **NEU §6 Grundwasserkarte** (AGI Kt. SZ, 1:2'000) als eigenstaendige
  UG-/Unterkellerungs-Planungsgrundlage (Weisse-Wanne-Entscheid). Offen bleibt ehrlich dokumentiert:
  ZH-Endpunkt fuer Naturgefahren + Grundwasser nicht gefunden (`GetCapabilities`-Discovery an
  `maps.zh.ch/wfs/OGDZHWFS` schlaegt fehl — kein Layer-Katalog abrufbar, nur bekannte Alias-IDs).
- **NEU Abschnitt [[kartenportale-geoportale-uebersicht]] §Baumkataster (K12, niedrige Prioritaet):**
  Baumkataster ist **kein** kantonal/schweizweit standardisiertes Geoportal-Produkt, sondern eine
  kommunale GIS-Fachanwendung (Quelle: Produktblatt GEOINFO IT AG) — Bezugsweg gemeinde-/
  portalspezifisch, bewusst kein Connector-Anspruch.
- **[[brandschutz-pl03-wegweiser]] um vier neue Sonderbauaufgaben-Abschnitte erweitert:**
  - **§4d Atrien/Innenhoefe** (VKF-Erlaeuterung 101-15de) — Healthcare-relevant fuer grosse
    verglaste Eingangs-/Wartehallen; Definition + 3 Typen A/B/C mit Brandabschnittsbildung/RWA/
    Loeschanlage/Fluchtweg-Simulationsnachweis.
  - **§4e Doppelfassaden** (VKF-Erlaeuterung 102-15de) — **JANS-Healthcare-Kernbefund:** Typ B
    (unsegmentierte Zwischenklimazone) zieht bei schlafenden Personen zwingend BMA-Vollueberwachung
    UND ein Verbot oeffenbarer Fenster nach sich — ein Konflikt mit natuerlicher Lueftung, der
    schon in der Fassadenkonzeption zu loesen ist.
  - **§4f Kleine Beherbergungsbetriebe/Berghuetten < 20 Personen** — Schwellenwert-Ausnahme von der
    strengeren Beherbergungs-QSS-Kategorie, realer JANS-Benchmark **Biwak Grassen** (QSS 2, R30
    statt R60, BMA-Erleichterung Rauchwarnmelder statt Alarmaufschaltung).
  - **§5 Holzbau-Brandschutz** (Lignum-Dokumentation Themenblock 4) — R/EI/REI-Systematik, RF1
    begrenzt auf REI 30/60/90 (nicht 120/180/240), Kapselungsregel K30-RF1, Abgleich zu R60/R90-
    Schwellen aus §4b — fruehzeitiger Warnhinweis fuer Holzbau-Ambition bei Healthcare-Grossprojekten.
- Alle sechs Quellen (Checkliste SvN, Grundwasserkarte, Baumkataster-Produktblatt, 2× VKF-
  Erlaeuterung, Lignum-Dokumentation, realer Biwak-Grassen-Fall) im Original/PDF direkt gelesen,
  keine Sekundaerzitate. Nachtrag: dieser CHANGELOG-Eintrag sowie curriculum.md/QUESTIONS.md/
  `_INGESTED.md` wurden nachtraeglich zum bereits im Wiki vorhandenen Run-24-Inhalt ergaenzt
  (die inhaltliche Arbeit lief bereits, die Registerpflege war noch offen).

## 2026-07-13 — Training Run 23 (Energie + Recht & Norm, Token-Vollgas 2 Domaenen): Zusatzformulare Baueingabe, Raumprogramm-Referenzwerke, Denkmalschutz-PBG-Revision neu erfasst; D3-Skill-Entscheid gefaellt
- **NEU [[energie-baueingabe-zusatzformulare]] (E12/D9):** drei bisher unbearbeitete `PL-04/
  endk.ch`-Unterordner vollstaendig ausgewertet — **WTA-Formular** (Gesuch-/Meldeformular
  waermetechnische Anlagen, Ausgabe Januar 2024): 3-stufige Verfahrensweiche (Melde-/Anzeige-/
  Ordentliches Verfahren) je Anlagentyp, Zustaendigkeits-Matrix Gemeindebauamt/Feuerpolizei/AWEL/
  GVZ, Neubau-Kopplung an **EN-103 mit Privater Kontrolle** (sonst kostenpflichtige Behoerden-
  kontrolle), GWR-Ausfuehrungskontrolle (Seite 5, derselbe Datensatz wie `gwr-bund.mjs`);
  **Formular S Schallschutznachweis Aussenlaerm** (Abgrenzung zu LN-1a/1b bei Luft-WP, LSV-Novelle
  01.04.2026 vermerkt); **Gesuch Versickerung Regenwasser AWEL** (Bewilligungsschwelle Flaechen-
  verhaeltnis >5:1 / Bagatellgrenze 20 m², **50-m²-Schwelle unbeschichtete Metallflaechen →
  Adsorberpflicht** mit Fassadenfaktor 0.2 — Planungsrelevanz bei Kupfer/Zink-Fassaden/Sanierungen).
- **NEU [[recht-norm-raumprogramm-referenzwerke]] (R10):** drei bisher unbearbeitete PL-02-Ordner
  erschlossen — **Raumpilot** (Jocher/Loch, Wuestenrot Stiftung 2012, Gebaeudelehre-Nachschlagewerk
  analog Neufert, aber methodisch auf **Funktionsbereiche statt fertige Raumtypen** ausgerichtet;
  Kapitelstruktur Anthropometrie/Barrierefrei/Treppe/Aufzug/Rettung/Ruhender Verkehr/Energie
  dokumentiert, Rechtsverweise im Buch sind deutsches Recht — nur Kennwerte uebertragbar);
  **WBS 2015** (Bundesamt fuer Wohnungswesen, Wohnungs-Bewertungs-System, 25-Kriterien-System,
  **Grundausstattungs-Tabelle Nettowohnflaeche 30/45/60/80/100/120/140 m² je 1-7-Zimmer-Wohnung**,
  Rahmenbedingung SIA 500 hindernisfrei) als schneller Raumprogramm-Plausibilitaets-Check;
  **UGZ-Toilettenanlagen-Bemessung** Stadt ZH (Personal-Schluessel ArGV3, Publikums-Schluessel
  35-150 Personen/Einheit, Betreuungsstaetten-Tabellen Krippe/Hort/Kindergarten) — direkt
  anwendbar bei Healthcare-/Bildungs-/Publikumsbauten.
- **[[recht-norm-quellenlandkarte]] erweitert:** zwei neue Abschnitte — **Denkmalschutz-PBG-
  Revision** (NEU erfasst: Regierungsrat ZH verabschiedete 02.07.2026 eine PBG-Revision zuhanden
  Kantonsrat, die kleinere Aenderungen an Baudenkmaelern direkt im Baubewilligungsverfahren ohne
  separaten Schutzbeschluss ermoeglicht und energetische Modernisierung/Barrierefreiheit staerker
  gewichtet — Inkrafttreten noch offen) und **Laermschutz — LSV-Vollzug & Praxishilfe**
  (bauen-im-laerm.ch als Cercle-Bruit-Werkzeug, USG/LSV-Novelle **01.04.2026** vermerkt). RPG-2-
  ZH-Refresh: Stand unveraendert, neu Kreisschreiben Mai 2026 als Vollzugshilfe bekannt.
- **D3 entschieden:** kein eigenes Skill `energie-nachweis` — die Domaene ist bereits vollstaendig
  im Wiki + ueber den Agent `energie-berater` organisiert, ein Skill wuerde nur Struktur
  duplizieren ohne neue Faehigkeit zu schaffen.
- Alle Kennzahlen aus Original-PDF/Web-Quelle direkt gelesen (kein Sekundaerzitat); zwei neue
  Web-Fakten je per WebFetch der Original-Medienmitteilung verifiziert.

## 2026-07-13 — Training Run 22 (Kartenportale + Meta, Token-Vollgas 2 Domaenen): Naturgefahren/Objektschutz + Werkleitungskataster neu erschlossen, M2-Anbindung geschaerft
- **NEU [[kartenportale-naturgefahren-objektschutz]] (K10):** vollstaendiger Artikel aus dem bisher
  unbearbeiteten Ordner `PL-01/Objektschutz/` — Rechtsgrundlagen (Art. 6/15 RPG, § 20/17 PBG SZ),
  Gefahrenstufen rot/blau/gelb/gelb-weiss mit konkreter Bauvorschrift je Stufe (blau: **keine
  besonders sensiblen Objekte** — direkte Healthcare-Relevanz), Perimeter A/B/C, rechtlicher Status
  (rechtserheblich auch vor Umsetzung in Nutzungsplanung, 2-Jahres-Frist Gemeinde), realer JANS-
  Benchmark Reckholdernstrasse 20 Willerzell (Objektschutzkonzept 26.09.2023: drei Gefahrenstufen
  auf einer Parzelle, 4-stufiger Massnahmenkatalog planerisch/technisch/Material/organisatorisch),
  SIA-261/261-1-Schutzziele-Tabelle (Hochwasser 300-jaehrlich, Sturm/Hagel/Schnee 50-jaehrlich,
  Erdbeben 475-jaehrlich) + Jaehrlichkeits-Merksatz (300-jaehrlich = 15 % kumuliert ueber 50 Jahre).
  Bezugsweg SZ als realer WebGIS-Link dokumentiert (`ch.sz.a012b.naturgefahrenkarte.*`), **bewusst
  nicht als getesteter REST-Endpunkt behauptet** (Leitplanke: Endpunkte erst nach Test etabliert).
  ZH-Endpunkt als offene Aufgabe vermerkt.
- **NEU [[kartenportale-werkleitungskataster]] (K11):** vollstaendiger Artikel aus dem bisher
  unbearbeiteten Ordner `PL-01/Werkleitungen/` — kein zentrales Portal (anders als OEREB/Zonenplan/
  GWR), betreiberspezifischer Bezug: EKZ (Strom), Swisscom (Festnetz/Kommunikation), Sunrise-UPC
  (Kabelnetz, 4 Regionen), Gas/Wasser bei Gemeindewerken. Realer Ablauf am Fall Reckholdern belegt
  (Konto-Freischaltung EKZ, Bestellung je Perimeter, Lieferung Plot+Symbole+Kurzbrief, **Gueltigkeit
  nur 2 Wochen**, Datenmodell **SIA GEO 405**, Farbdruck-Pflicht, projektierte Gebaeude blau/nicht
  einmessbar, 190-Volt-Warnhinweis Swisscom, Netzauskunft 3 Monate/1:200). **Bewusst kein Connector-
  Anspruch** (login-pflichtig, kein offenes API) — Status `emerging`, dokumentiert den validierten
  manuellen Weg statt eine Automatisierung zu versprechen.
- **M2 abgeschlossen:** Run-21-Befund (Anbindung an die Studien-Skills war einseitig) behoben —
  `machbarkeit`, `ankaufspruefung`, `behoerden-vorabklaerung` SKILL.md referenzieren
  `planungsgrundlagen` jetzt explizit als bevorzugte Geodaten-Quelle statt nur manuellem GIS-
  Browser-Verweis; `ankaufspruefung` zusaetzlich mit Naturgefahren/Objektschutz als eigener
  Pruefdimension, `behoerden-vorabklaerung` mit Praezisierung Werkleitungen-Zustaendigkeit
  (Werke, nicht Tiefbauamt) + Hinweis, dass ein Teil der "gummigen" Masse bereits vorab belegt ist.
- **Register:** curriculum (K10/K11/M2 neu `[x]`), QUESTIONS (Sektion A + neue Sektion F Meta/
  Querschnitt), INDEX (2 neue Kartenportale-Eintraege + M1-Zeile ergaenzt), raw/_INGESTED (4 neue
  Zeilen), kartenportale-grundlagen-checkliste-neue-parzelle + kartenportale-sharepoint-ablage
  ergaenzt/verlinkt.

## 2026-07-13 — Training Run 21 (Recht/Norm + Brandschutz, Token-Vollgas 2 Domaenen): Tiefgarage-Erschliessungsgeometrie + Brandschutz Parkhaeuser/Einstellraeume neu erschlossen
- **NEU [[recht-norm-tiefgarage-erschliessung]] (R9):** vollstaendiger Artikel aus den bisher
  unbearbeiteten VSS-Normen `PL-02/Tiefgarage/1 VSS-Norm/` — Grundstueckzufahrt Typ A/B/C
  (VSS 640 050, Tab. 1/2), Parkierungsanlagen-Geometrie (VSS 640 291a): Parkfeld-/Fahrgassenmasse
  je Komfortstufe A/B/C (Laengs- und Schraeg-/Senkrechtparkierung, Tab. 2-7), lichte Hoehe
  (Tab. 8, 2.20-3.00 m), **Rampenneigung 12-18 % je nach Komfortstufe/Deckung** (Tab. 11) +
  Neigungsknicke ≤ 6 % (Tab. 12), Kurvenverbreiterung (Tab. 9/10), Kontrolleinrichtungs-Layout
  (max. 3 % Neigung im Schrankenbereich); Bedarfsermittlung VSS 640 281 als getrennte, nur
  quantitative Norm eingeordnet. Reale ZH-Kantonspraxis (IBV Huesler AG, Normschnitt Ausfahrtstyp A,
  23.01.2017) und ein reales Pruef-Aktennotiz-Beispiel (Meili Peter/IBV, Tiefgarage 246 Flurstrasse,
  17.04.2018, externe Referenz) bestaetigen die Norm-Werte unabhaengig (Stuetzenabstand-Idealmass
  10 cm ≥ Norm-Minimum 0 cm, Ausfahrts-Restneigung 3 % = Kontrolleinrichtungs-Regel). Zusaetzlich
  Wendehammer-Nachweis fuer 12-m-Lastwagen (Enz & Partner GmbH, VRV Art. 64/65/65a, drei
  Geometrie-Varianten T/Y/Kreuz).
- **[[brandschutz-pl03-wegweiser]] NEU §4c (B9/C10):** Parkhaeuser und Einstellraeume fuer
  Motorfahrzeuge — aus VKF-Brandschutzarbeitshilfe 1002-03d (`PL-03/05 Arbeitshilfen Brandschutz
  2015/`): Tragwerk (R 60 (nbb) UG-Standard, R 30 bei eingeschossig/unterirdisch), Brandabschnitts-
  bildung (4'000/2'000/8'000 m², sprinklerverdoppelbar), **Fluchtweg-Kernzahlen** (1 Treppenanlage
  ≤ 600 m² BGF, 2+ Treppenanlagen ≤ 900 m² je, Gesamtlaenge 35/50 m — direkte Vorprojekt-Relevanz
  fuer grosse Healthcare-Tiefgaragen), RWA-Schwellen (600/1'200/2'400 m²) und Sprinklerpflicht
  (4'000/2'000/8'000 m² bzw. > 50 Kompaktparkplaetze). ⚠ **Datenstand-Vorbehalt bewusst gesetzt:**
  Arbeitshilfe genehmigt 06.08.2003 (vor der BSV-2015-Generation) — im Artikel explizit als vor
  Anwendung in einem laufenden Nachweis gegen bsvonline.ch zu pruefen markiert (Status established
  nur fuer Systematik/Groessenordnung, nicht fuer punktgenaue Zahlen).
- **Verifikation:** VSS-Normen + VKF-Arbeitshilfe direkt aus den Original-PDF gelesen (Modell-D-
  Volltextabgleich, keine Sekundaerzitate). R9 zusaetzlich durch zwei unabhaengige, konvergierende
  Praxisdokumente verifiziert (Norm + reale Kantonspraxis + reale Pruefnotiz, kein Widerspruch).
  Datenstand-Unsicherheit bei der Brandschutz-Arbeitshilfe (2003) transparent als Vorbehalt
  ausgewiesen statt stillschweigend als aktuell behandelt.
- **Register:** curriculum (R9/B9 `[x]`), QUESTIONS (B-Sektion R9, C-Sektion C10), INDEX
  (recht-norm-tiefgarage-erschliessung neu, brandschutz-pl03-wegweiser §4c ergaenzt),
  raw/_INGESTED (6 neue Quellenzeilen + 2 Sammelzeilen-Updates PL-02/PL-03). Bericht:
  `outputs/2026-07-13_training-run21.md`.
- **Naechster Lauf:** M2 (Anbindung `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung`)
  identifiziert als echte offene Luecke — keiner der drei Skills referenziert `planungsgrundlagen`
  bisher; Kandidat fuer eine dedizierte Meta-Runde.

## 2026-07-13 — Training Run 20 (Kartenportale + Energie, Token-Vollgas 2 Domaenen): GWR-Wohnungs-/EWID-Ebene erschlossen + ObjektwesenZH-Korrektur + realer KISPI-EVEN-Praxisfall
- **Kartenportale (Connector-Schritt, K9-Rest):** `gwr-bund.mjs` deckt neu die **Wohnungs-/EWID-
  Ebene** auf — die parallelen Roh-Arrays (`ewid/warea/wazim/wbauj/wkche/wmehrg/wstat/wstwk/wbez/
  whgnr`) waren im identify-Treffer immer schon enthalten, wurden aber nicht dekodiert. Neue
  Funktion `wohnungen(at)` + Codetabellen WSTAT (3001-3008) und WSTWK (3100 Parterre/3101-3199
  Stock/3401-3419 UG) aus dem offiziellen Merkmalskatalog GWR v4.2 (housing-stat.ch, S. 91-94)
  belegt. Live getestet: KISPI (0 Wohnungen), Giebelweg 12 (1 Wohnung/Maisonette), Albertstrasse 7
  Zuerich EGID 150071 (26 Wohnungen, Array-Konsistenz mit `ganzwhg` verifiziert) →
  [[kartenportale-gwr-bund]] §6.
- **Kartenportale (Connector-Fix, Rest aus Run 19):** `geo-zh.mjs` zeigt bei laufenden Baulinien-
  Revisionen (proj-Layer) jetzt auch den naechsten `dist_m` im CLI-Log, nicht nur die Trefferzahl.
  Live-Regression Kloten/Langnau/Seuzach bestanden.
- **Kartenportale (K6/A5-Korrektur):** der bisherige Stand «Eigentumsabfrage ObjektwesenZH braucht
  Interessennachweis Art. 970 ZGB» war zu streng — die elektronische Eigentumsabfrage ueber
  maps.zh.ch ist **login-frei mit SMS-Code**, **ohne** Interessennachweis, 5 Abfragen/Tag/
  Mobilnummer (Quellen: notariate-zh.ch, tagesanzeiger.ch) → [[kartenportale-geoportale-uebersicht]].
- **Energie (D6-Praxisbenchmark):** realer Fallverlauf 2619-KISPI in die EVEN-Bedienungsanleitung
  eingewoben (§9) — konkrete Reibungspunkte, die die generische EnDK-Schulung nicht abdeckt:
  Nachweisverfassung-vs-Private-Kontrolle-Verwechslung, Kl-Befugnis-Luecke beim beauftragten
  HLK-Buero (Gruner AG nur Wä+Lä), Einladungsmechanik nur ueber die bei energie@bd.zh.ch
  hinterlegte Mail. Fall Stand 13.07.2026 nicht abgeschlossen (ehrlich ausgewiesen) →
  [[energie-even-plattform-bedienung]].
- **Energie (Refresh, kein neuer Stand):** MuKEn-2025-ZH-Ueberfuehrung weiterhin ausstehend
  (Web-Refresh bestaetigt unveraendert); D5-Rest (installierter PV-System-CHF/kWp) bleibt offen —
  Archivsuche im JANS-Projektbestand fand keine abgerechnete PV-Anlage, kein unbelegter Wert
  eingetragen → [[energie-energienachweis-zh-formulare]].
- **Register:** curriculum (K9/K6 [x], E10/E5 Refresh-Vermerke), QUESTIONS (A-Sektion K9/A5,
  D-Sektion D6/D5), INDEX (2 Zeilen praezisiert), raw/_INGESTED (6 neue Zeilen).

## 2026-07-13 — Training Run 19 (Kartenportale + Brandschutz, Token-Vollgas 2 Domaenen): proj-Baulinien-Revisionserkennung im Connector + Brandschutzabstaende/Tragwerk-Tabellen/Treppen mit realen JANS-Benchmarks
- **Kartenportale (Connector-Schritt):** `geo-zh.mjs --produkt baulinien` fragt jetzt zusaetzlich
  die **5 proj-Layer** der Abstandslinien ab (0150/0152/0153/0158/0185) und meldet
  `⚠ LAUFENDE REVISION`. Namensschema-Fallen per GetCapabilities verifiziert und dokumentiert:
  0150 Waldgrenze heisst `_prj_l` (nicht `_proj_l`), 0153 Gewaesser wechselt den Namensraum auf
  `giszhpub`. Live-Test bestanden: Hardackerstrasse 2, Kloten (EGRID CH670577750811) → 4 proj-
  baulinie-Treffer (Rechtsmittelverfahren) neben 10 rechtskraeftigen (naechste 0 m); Regression an
  Langnau/Seuzach unveraendert gruen. Weitere Kantons-Belegfaelle: Wila/Boppelsen (Wald), Winterthur
  (Waldgrenze), Niederglatt (Gewaesser), Bachs (Gewaesserraum) → [[kartenportale-baulinien-abstandslinien-zh]].
- **Brandschutz (kein Connector, PL-03-Realfaelle erschlossen):** der einzig offene PL-03-Punkt
  (BSV 2026) ist bis 08/2026 blockiert; stattdessen die `_Projekte Themen/`-Ordner ausgewertet und
  drei neue, belegte Abschnitte in [[brandschutz-pl03-wegweiser]] ergaenzt (§4b):
  - **Brandschutzabstaende zwischen Gebaeuden** (BSR 15-15de Ziff. 2.1-2.4): Regel 5/7.5/10 m,
    reduziert 4/5/6 m, Sonderfaelle Nebenbauten/Fahrnisbauten/Areal-Ueberbauung; real angewandt
    Benchmark **Regensdorf** (EFP-AG-Anfrage 16.02.2024 + JANS-Antwort).
  - **Tragwerk-/Brandabschnitts-Feuerwiderstand nach Gebaeudehoehe × Nutzung** (Tab. 1-3): R30/60/
    90/120-Matrix; **Healthcare-Kernbefund** — Beherbergung [a] (Krankenhaus/Pflegeheim) durchgaengig
    R 60 auch bei geringer Hoehe, eine Stufe strenger als Wohnen/Buero; real angewandt Benchmark
    **Thalwil Bohlweg 3** (Factsheet 05.03.2025: EFH k.A. vs. MFH-Sonderbauvorschrift R 60).
  - **Treppen innerhalb Nutzungseinheit** (BSR 16-15): keine Anforderung (Z.3.2.2 A3) vs.
    Fluchtweg-Treppenbreiten 1.2/1.5/0.9 m + 900 m²-Schwelle Brandschutzabschluss-Verzicht.
  - **BSV-2026-Refresh:** Stand vom 30.06.2026 unveraendert bestaetigt (pol. Vernehmlassung 08/2026,
    Inkrafttreten Herbst 2027); NEU erfasst Pyroverbot in oeff. Raeumen per 01.04.2026.
- **Register:** curriculum (K5-Anmerkung + NEU B6/B7/B8), QUESTIONS (K5-Ergaenzung + NEU C7/C8/C9),
  INDEX (beide Artikel-Zeilen), raw/_INGESTED (6 Zeilen), Frontmatter beider Artikel.
- **Naechster Lauf (Run 20):** Rotation → Kartenportale/Energie; Rest `dist_m` bei proj-Treffern im
  Log, K6/A5 ObjektwesenZH formal abschliessen, Energie D5/D6-Rest. BSV 2026 nicht vor 08/2026
  erneut pruefen (ausser neue Meldung).

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Doppelspur Wald/Gewaesser entschaerft, Backlink zu baurecht
- [link] [[recht-norm-abstandsvorschriften-wald-gewaesser]] -> KB baurecht als fuehrende Rechtsquelle: Fachartikel `abstaende-und-hoehen` (Bemessung/§) + `baulinien-und-abstandslinien` (Rechtswirkung §§ 96/99-101). Dieser Artikel bleibt Geodatum-/Beschaffungs-Wegweiser; bei Abweichung gilt baurecht. Loest die Doppelspur (Rechtsmasse zweimal gepflegt) im Sinne des dispensrecht-Vorbilds.
- [befund] Die planungsgrundlagen-Fassung des Gewaesserraums (established, 07-12) war die KORREKTE — die baurecht-Fassung wurde daran korrigiert (siehe baurecht-CHANGELOG). Kein Fehler in planungsgrundlagen.

## 2026-07-12 — Training Run 18 (Recht/Norm/PL-02): Wald-/Gewaesserabstand ZH & SZ (B4/R8) + SZ-Massweisen-Refresh gegen amtliche SRSZ-Fassung (R2)
- Schwerpunkt **Recht/Norm** (Rotation Run 17 Energie → Run 18 Recht/Norm). **Connector-Schritt:
  nein** (Geodaten-Bezug ueber bestehenden `--produkt baulinien`). Quellen: PL-02/02_Zuerich/Wasser
  AWEL-Merkblatt Gewaesserraum (Juli 2014), zh.ch Merkblatt «Baugesuch im Waldabstand» (Nov 2018) +
  «Bauen im Wald und am Waldrand», amtliche SRSZ PBG 400.100 (Stand 1.2.2025) / PBV 400.111 (Stand
  1.2.2026) + Vollzugsverordnungs-Vorlage (sz.ch).
- **NEU [[recht-norm-abstandsvorschriften-wald-gewaesser]]** (established) — die zwei «gummigen»
  Baufeld-Masse konsolidiert:
  - **ZH-Waldabstand:** Regel-Mass **30 m**, Bauverbot Hochbauten **§ 262 PBG** zwischen Waldgrenze
    und Waldabstandslinie, unterird. = Forstpolizeirecht, < 15 m immer forstlich; Ueberstellung nur
    mit **§ 220 PBG (Gemeinde) + Art. 17 WaG (kant. Forstdienst)**, strenger Massstab.
  - **ZH-Gewaesserraum:** GSchG Art. 36a / GSchV **Art. 41a/41b** (nat. GSB × Breitenvariabilitaet
    ×1/1.5/2; Fliess <2 m→≥11 m / 2–15 m→≥2.5×GSB+7 m; Schutzgebiet-Tabelle; See > 0.5 ha ≥ 15 m ab
    Ufer), Nutzungsbeschraenkung **Art. 41c**, Verfahren §§ 36–89 PBG + ARE/AWEL 60 Tage, Geodatum
    gis.zh.ch «Gewaesser-Oekomorphologie» + § 15c HWSchV.
  - **SZ:** § 66 Gewaesserabstand = Gewaesserraum GSchG / § 67 Waldabstand 15 m ab Waldgrenze.
- **R2-Refresh + Korrektur in [[recht-norm-quellenlandkarte]]:** § 60/61/62/66/67 PBG SZ per
  Volltext-Grep amtlich bestaetigt (**Stand 1.2.2025**), ⚠ >18-Mt.-Flag (SRSZ 1.2.2021) aufgeloest.
  **Wesentliche Korrektur:** die harmonisierten Dichtemasse **GFZ/BMZ sind in SZ noch NICHT in
  Kraft** — sie stehen nur in der [Mitberichtsvorlage] «Verordnung zum PBG» (§ 31i GFZ / **§ 31j**
  BMZ statt faelschlich § 31g / § 31m AZ, gestuetzt § 52 Abs. 3 PBG); amtliches PBG/PBV enthalten sie
  nicht. Bis Inkraftsetzung gelten die kommunalen Baureglemente (oft noch AZ).
- **Register:** INDEX (neuer Artikel), curriculum (R2 refresh + NEU R8 [x]), QUESTIONS (R8 ✓ +
  B4/R2-Abschluss), raw/_INGESTED (3 Zeilen), Frontmatter Quellenlandkarte.
- **Speist** `baulinien-analyst`/[[machbarkeit]] (M2). **Naechster Lauf (Run 19):** Brandschutz
  (PL-03), C6/B5 BSV 2026.

## 2026-07-10 — Training Run 17 (Energie/PL-04): Flaechenleistung Wp/m² + Modul-Preis-Anker je PV-Typ B/C/D (D5-Rest)
- Schwerpunkt **Energie** (Rotation Run 16 Kartenportale → Run 17 Energie, Prioritaet). **Connector-
  Schritt: nein** (Domaene Energie hat keinen Connector). Quellen aus PL-04/Solaranlage (Typenordner
  A–D): PREFA Solarfolder CH (Stand 09.2023 V5), Datenblatt SI-Saphir M175-M180 (06/2015, DIBt
  Z-70.3-204), Eternit Sunskin roof GG-L 195W (solar-home.ch Webshop-Screenshot 17.11.2024),
  Fassaden-Screenshots (Amt f. Umwelt+Energie Basel, jessenvollenweider 2021), Sunskin roof
  Verlege-PDF (Rev. 01.2022).
- **D5-Rest fuer Typ B/C/D geschlossen** — neuer Kern-Kennwert **Flaechenleistung Wp/m² verlegt**
  (planerisch wichtiger als CHF/kWp, weil er bestimmt, wieviel kWp auf die gegebene Flaeche passt):
  - **Typ B dachintegriert:** PREFA Solardachplatte gross **~170 Wp/m²** (5.88 m²/kWp) / klein
    **~146 Wp/m²** (6.84 m²/kWp), 12.6 kg/m², ab 17° (31 %), **keine Durchdringung/keine separate
    PV-Statik**; Alternative Eternit Sunskin roof GG-L.
  - **Typ C transparent:** SI-Saphir Doppelglas **~120 Wp/m²** (180 Wp/1.5 m²) bei **40 % Lichtdurchlass**
    — Transparenz kostet ~40 % Flaechenleistung; DIBt Z-70.3-204, Ueberkopf-/Fassaden-tauglich, 7200 Pa.
  - **Typ D Fassade:** BIPV strukturiertes Schmelzglas, **× ~0.6–0.7 Ertragsfaktor** (senkrechter
    Winkel); real ref Amt f. Umwelt+Energie Basel (Spiegelgasse 15, 2021).
- **Modul-Preis-Anker (belegt):** Eternit Sunskin roof GG-L 195W = **339 CHF netto/Modul ≈ 1'740
  CHF/kWp _nur Modul_** (solar-home.ch 17.11.2024, −20 %-Aktion). Systemband hergeleitet **~3'000–4'500
  CHF/kWp installiert** BIPV (~1.6–2.5× Modulpreis) — zwischen Standard-Aufdach (~2'255) und
  Solarziegel-Tile (~7'370). Merksatz: **je kleinteiliger/integrierter/vertikaler, desto teurer/kWp.**
- **Fachsignatur-Punkt eingewoben:** Ueberkopf-PV (Pergola/Vordach) ist zugleich Ueberkopfverglasung
  → als Bauteil der Gebaeudehuelle mit Glas-Bauzulassung (VSG/absturzsichernd) behandeln, nicht als Anbauteil.
- ⚠ Datenstaende der Belege >18 Mt. (PREFA 09.2023 / SI-Saphir 06/2015 / Eternit 11/2024) — Wp/m²
  sind stabile Konstruktions-Kennwerte, Modul-**Preise** vor Zitat aktuell nachschlagen. Offen bleibt
  ein **installierter System-CHF/kWp** fuer B/C/D aus einer realen JANS-Schlussabrechnung.
- Geaendert: [[energie-pv-eignung-typenwahl]] (NEU §1b Flaechenleistung-Tabelle, §3 Eternit-Zeile +
  Modul-vs-System-Lehre, Datenstand, Frontmatter). Register: curriculum (E11 [x]), QUESTIONS (D5/D5
  ✓ Typ B/C/D), INDEX (Artikel-Zeile), raw/_INGESTED (Run-17-Zeile).
- **Naechster Lauf (Run 18):** Rotation → **Recht/Norm (PL-02)** oder Prioritaets-Vorzug **M2**
  (Anbindung machbarkeit/ankaufspruefung schaerfen). Energie-Rest fuer spaeter: realer KISPI-EVEN-
  Screenshot-Walkthrough (D6-Offen) + installierter System-CHF/kWp aus JANS-Schlussabrechnung (D5-Offen).

## 2026-07-08 — Training Run 16 (Kartenportale/PL-01): Connector rechnet senkrechten Abstand Linie↔Parzellengrenze (K5-Rest/E4)
- Schwerpunkt **Kartenportale** (Rotation waere Brandschutz gewesen, aber PL-03 ist bis 08/2026
  eingefroren — BSV-2026 → 2027/Marschhalt Crans-Montana; Kartenportale hat Prioritaet und eine
  konkrete testbare Luecke). **Connector-Schritt: ja.** Quellen: geo.admin `identify`
  (`returnGeometry=true`, Parzellenpolygon Esri-rings EPSG:2056) + OGD-WFS 0158/0152/0153/0150/0185
  (Live-Test 2026-07-08).
- **K5-Rest geschlossen (E4):** der Connector `geo-zh.mjs --produkt baulinien` misst jetzt den
  **senkrechten Abstand Linie↔Parzellengrenze** statt nur «Linie im ±150-m-Fenster».
  - `identifyParcel`: `returnGeometry=true` → Parzellenpolygon (Esri-`rings`) neben EGRID.
  - Geometrie-Helfer (reines JS, keine neue Abhaengigkeit): Punkt-zu-Segment + Segment-Schnitt-Test
    → **Segment-zu-Segment-Distanz**, planar in EPSG:2056 (metrisch exakt auf lokaler Skala).
  - `fetchBaulinien(e,n,half,parcelRings)`: je Treffer **`dist_m`** (0.1-m-gerundet), Liste **nach
    Abstand aufsteigend sortiert**, je Layer **`<layer>_dist_min_m`** + Flag **`gemessen`**;
    `dist_m=0` = Linie beruehrt/schneidet die Parzelle (baurechtlich bindend). Log-Zeile «naechste X m».
- **Verifikation (Verifier-Signal):** unabhaengige Zweitmethode (Vertex-zu-Segment beidseitig) an
  Seuzach Kat. 2304 → **29.8 m = 29.8 m** deckungsgleich. Regression `--produkt zonenplan` + EGRID-
  Aufloesung grün (returnGeometry bricht nichts).
- **Benchmarks (2026-07-08):** 0 m Dorfstrasse 1 Seuzach (Baulinie durch Parzelle = bindend) ·
  29.8 m Kirchgasse 2 Seuzach · 116.2 m Baulinie + 105.6 m Waldgrenze Giebelweg 12 Langnau (Hanglage) ·
  43.9 m Gewaesserabstand + 45.9 m Gewaesserraum Zuercherstrasse 1 Wetzikon (Parz. 6505, BFS 121).
- Register: QUESTIONS (A/K5 senkr. Abstand ✓ + NEU E4 ✓), curriculum (K5-Rest [x] Run 16), INDEX
  (Baulinien-Zeile), `raw/_INGESTED` (Run-16-Zeile), Wiki [[kartenportale-baulinien-abstandslinien-zh]]
  (neuer Abschnitt + Benchmark-Tabelle + Grenzen). **Speist Agent `baulinien-analyst` / M2.**
- **Naechster Lauf (Run 17):** Rotation → **Energie** (PL-04) hat Prioritaet; offene D5 Typ B/C/D
  CHF-Benchmark oder KISPI-EVEN-Walkthrough. Alternativ M2 (machbarkeit-Anbindung jetzt mit
  gemessenem Baulinien-Abstand als Baustein). Kartenportale-Rest: `COUNT=10`-Kappung + proj-
  Abstandslinien an realem Revisionsfall.

## 2026-07-06 — Training Run 15 (Recht/Norm/PL-02): NEU Dispensrecht-Artikel (R3) · Klima-PBG-Korrektur · SZ-Waldabstand
- Schwerpunkt **Recht & Norm** (Rotation: Run 14 Energie → Run 15 Recht/Norm). Connector-Schritt:
  **nein** (Domaene hat keinen Connector). Quellen: `05_Dispensrecht/BRKE_I_0247_2010_722.pdf` +
  2 Screenshots (Baurekursgericht-ZH-DB); `02_Schwyz/Art 35 Waldabstand.png`; Web
  baurekursgericht-zh.ch, zhlex LS 700.1, saputelli-baurecht.ch (PBG aktuell 3/2021),
  espacesuisse.ch/kantonsrat.zh.ch (Klima-PBG), sz.ch (Waldabstand).
- **R3 — Dispensrecht erschlossen (Luecke geschlossen):** war nur `[~]` (BRKE verortet). NEU
  **[[recht-norm-dispensrecht]]** (established): die **3 Ausnahme-Institute** getrennt (§ 220 PBG
  Dispens innerhalb Bauzone / § 357-358 Besitzstand / Art. 24 ff. RPG ausserhalb Bauzone); **§ 220
  3-Stufen-Pruefung** (besondere Verhaeltnisse Topographie/Form/Lage — NICHT Vielzahl-Faelle/Haerten/
  persoenl. Verhaeltnisse · negative Voraussetzungen Abs. 2/3, keine Nachbar-Zustimmungsabhaengigkeit ·
  Ermessen Gemeinde, freie Kognition der Rechtsmittelinstanz); **ausnahmebewilligungs-feindliche**
  zone-praegende Normen (Zufahrt/Immissionen/Einordnung/aeussere Abmessung = Hoehe/Laenge/Abstand/
  Ausnuetzung); Benchmark **BRKE I 0247/2010** (Doppel-EFH W2bII, Dispens verweigert = Vielzahl-Faelle;
  best. VB.2011.00041); Beschaffung **Baurekursgericht-ZH-DB** (login-frei, 4 Sucheinstiege,
  Rechtsgebiet-Direktlink); Harmonisierungs-Falle (nicht-harmonisierte BZO → PBG-Fassung bis
  28.02.2017); JANS-Workflow M2 (behoerden-vorabklaerung / machbarkeit Risiko-Flag).
- **B2 — Klima-PBG Datenstand korrigiert:** Revision «Klimaangepasste Siedlungsentwicklung» ist
  **in Kraft seit 01.12.2024** (RRB 998/2024, Kantonsrat 121:49) — nicht mehr «in Bewegung/kein
  Datum» (Run-11-Stand korrigiert). Direkt anwendbar: Gruenflaechen erhalten/aufwerten, reduzierte
  Pflanzabstaende 4/2 m + Strassenabstaende, **§ 238a PBG** Begruenung Aussenraum; daneben kommunale
  Musterbestimmungen/BZO → [[recht-norm-quellenlandkarte]].
- **B4 — SZ-Waldabstand ergaenzt + Mislabel korrigiert:** § 35 PBV SZ (400.111) regelt die
  **Waldgrenze** (2 m ausserhalb Stockgrenze) + Waldabstandslinie — **nicht** das Baumass; das
  numerische **Waldabstand-Baumass = § 67 PBG SZ = 15 m** (Ausnahme-Minima Hauptbau 10/8 m, Nebenbau
  6/4 m). SZ-Tabelle in [[recht-norm-quellenlandkarte]] berichtigt, aktuelle SRSZ-PDF-Links ergaenzt.
- Register: INDEX, QUESTIONS (R3 ✓/B4 ✓/B2 ✓), curriculum (R3 [x], R2/R6 ergaenzt), raw/_INGESTED
  (+3 Zeilen), Output `2026-07-06_training-run15.md`.

## 2026-07-04 — Training Run 14 (Energie/PL-04): NEU EVEN-Bedienungsartikel (D6) · MuKEn-2025-Praezisierung
- Schwerpunkt **Energie** (Rotation: Run 13 Kartenportale → Run 14 Energie, Prioritaetsdomaene).
  Connector-Schritt: **nein** (Energie hat keinen Connector). Quellen: EnDK-Schulung «EVEN —
  Bewilligungsbehoerden Kantone mit Privater Kontrolle» V1.4 (13.10.2025, 68 Folien); AG-Schulung
  v0.40; zh.ch/energienachweise; energie-zentralschweiz.ch/vollzug/even; energiehub-gebaeude.ch.
- **D6 — EVEN-Bedienung erschlossen (Luecke geschlossen):** EVEN (`energievollzug.ch`) ist seit
  01.01.2026 der verbindliche ZH-Kanal, war aber nur als «Fakt» dokumentiert, nicht in der Handhabung.
  NEU **[[energie-even-plattform-bedienung]]** (established): was EVEN ist/abdeckt, Teilnehmer (alle
  Kantone ausser BE + FL), **Projektstruktur** (Projekt→Gebaeude je EGID→Zone→Teilnachweis), **Rollen**
  (Projektkoordination/Nachweisverfassung; Vollzugsverantwortung/interne+externe Pruefer; **Private
  Kontrolle** fuer ZH; Admin), **Ablauf Happy Case**, **Aktionen** (Nachtrag/Beanstandung/Ausfuehrungs-
  +Vollzugskontrolle), **Statusmodell + Freigabe-Kaskade** (Bewilligungs-/Baufreigabe-/Bezugsbereit),
  Portalfunktionen (kein Undo/Offline, alles protokolliert, GWR-Anbindung), JANS-Merkposten (KISPI).
- **D1/E5/D8 — MuKEn 2025 praezisiert:** Verabschiedung **EnDK-Plenum 29.08.2025** (statt grob
  «08/2025»); Neubau neu **Eigenstrom 20 W/m² EBF** (Art. 1.25, Verdoppelung ggü. 10), Waerme
  vollst. erneuerbar (Art. 1.28), **graue-Energie-THG-Grenzwert** nach Minergie-Reglement ab
  01.01.2025 (Art. 1.39-40, <50 m² EBF befreit), Elektroheizung-Sanierungspflicht 5 J. Klar getrennt:
  **ZH-Ueberfuehrung Stand 04.07.2026 weiter ausstehend** → geltend bleibt MuKEn 2014 (10 W/m²).
  Eingearbeitet in [[energie-energienachweis-zh-formulare]] + [[energie-uebersicht]].
- Register: INDEX (+EVEN-Artikel, MuKEn-Praezisierung), QUESTIONS (D6 ✓, D8/D1 Update), curriculum
  (E5 praezisiert, E10 EVEN ✓), raw/_INGESTED (Schulung V1.4 + Web-Quellen). Output: `outputs/
  2026-07-04_training-run14.md`. **Offen:** D5 Typ B/C/D, KISPI-EVEN-Screenshot-Walkthrough.

## 2026-07-02 — Training Run 13 (Kartenportale/PL-01): NEU GWR-Artikel · GVOLNORM/GVOLSCE-Decode im Connector (getestet)
- Schwerpunkt **Kartenportale** (Rotation: Run 12 Brandschutz → Run 13 Kartenportale, Prioritaets-
  domaene). Connector-Schritt: **ja** (`gwr-bund.mjs` erweitert + getestet). Quellen: Merkmalskatalog
  eidg. GWR v4.2 (housing-stat.ch/files/881-2200.pdf, S. 63f.); Live-Benchmarks am Geodienst.
- **K9 — GWR-Gebaeudedaten als Planungsgrundlage erschlossen (Luecke geschlossen):** GWR war Nr. 6
  der M1-Checkliste, hatte aber **keinen eigenen Wiki-Artikel** (Backlink zeigte auf
  `energie-uebersicht`). NEU **[[kartenportale-gwr-bund]]** (established): Bezugswege EGID/Adresse/
  EGRID, planungsrelevante Felder (Baujahr, EBF, Volumen, Waermeerzeuger/Energietraeger), EPROID-
  Grenze, Wozu-im-Workflow (EN/EVEN, Kostenschaetzung, Umnutzung). M1-Backlink umgehaengt.
- **Connector `gwr-bund.mjs` verbessert + getestet:** GWR-Volumen war als Rohcode ausgegeben. Neu
  Decode **GVOLNORM** (961 SIA 116 / 962 SIA 416 / 969 unbekannt) + **GVOLSCE** (851-878 Datenquelle,
  z.B. 869 Baubewilligung) aus dem Merkmalskatalog belegt. **Befund (Leitplanke bestaetigt):**
  KISPI-Volumen traegt Norm **969 = unbekannt** (nicht SIA 416, wie man raten wuerde) — vor
  `Volumen × Kennwert` immer pruefen. Merkregel **Baujahr schlaegt Bauperiode** (KISPI: 8023
  «2016-2020» vs. Baujahr 2024).
- **Benchmarks (2026-07-02):** KISPI EGID 302064023 (Krankenhaus, Baujahr 2024, EBF 78'834 m2,
  WP/Erdsonde+Gas-Redundanz, Volumen-Norm 969) + Giebelweg 12 EGRID CH879777718909 → 2 Gebaeude
  (Haupthaus EGID 57977 EFH 1936/Gas + Nebenbau 210237818); Mehrdeutigkeit korrekt behandelt.
  Damit ist die M1-Kette auch fuer die GWR-Stufe end-to-end validiert.
- Register gepflegt: INDEX (+GWR-Artikel), M1-Checkliste (Backlink), curriculum (K9 ✓), QUESTIONS
  (K9 ✓ + Offen EWID/Katalog-v5.0), raw/_INGESTED (+Merkmalskatalog), connectors/README (Decode +
  Benchmarks). Report `outputs/2026-07-02_training-run13.md`.
- **Naechster Lauf (Run 14):** Rotation → **Energie** (Prioritaet). Offene Energie-Punkte: D5 Typ
  B/C/D PV-CHF-Benchmark, D6 EVEN-Bedienung am KISPI-Fall, D8 graue-Energie-ZH-Grenzwert.

## 2026-07-01 — Wissens-Health-Check (Phase 1): gesund · 3 Hygiene-Punkte
- Audit ueber 16 Wiki-Artikel + State-Files. Ampel A🟡 B🟡 C🟡 D🟢 E🟢 F🟡 G🟢. Keine harten
  Widersprueche, keine Orphans, saubere RAW-Coverage/Compounding-Historie. Top-3: (1) toter
  Connector-Verweis `cad/terrain.sh` in `kartenportale-sharepoint-ablage` (existiert nicht);
  (2) malformierter Pfad-Backlink `[[…/geo-zh.mjs]]` in `kartenportale-bund-geodaten`;
  (3) `kartenportale-sharepoint-ablage` ohne YAML-Frontmatter. Weiter: BFS-192-Egg-Provenienz
  pruefen (real 151), Promotion-Kandidat `recht-norm-baurechtsanalysen-benchmarks` emerging→established,
  QUESTION K6/A5 faktisch abgeschlossen (noch `[~]`). Report `outputs/2026-07-01_health-check.md`.
  **Phase 2 (Fixes) nur interaktiv.**

## 2026-06-30 — Training Run 12 (Brandschutz/PL-03 + Pivot Kartenportale): BSV-2026-Stand verifiziert (Marschhalt Crans-Montana) · NEU M1-Grundlagen-Checkliste «neue Parzelle»
- Schwerpunkt **Brandschutz** (Rotation: Run 11 Recht/Norm → Run 12 Brandschutz), inhaltlich
  erschoepft → **Doppel-Fokus mit Kartenportale (Prioritaet)**. Connector-Schritt: **ja**
  (geo-zh.mjs end-to-end getestet). Quellen: bsvonline.ch «Information BSV 2026», VKG-Medien-
  mitteilung «Marschhalt bei Liberalisierungsbestrebungen» 06.01.2026; eigene Connectoren.
- **C6/B5 — BSV-2026-Stand verifiziert:** Projekt **verschiebt sich von 2026 auf 2027**, doppelt
  gebremst: (1) fachliche **Konsolidierungsphase** (offiz. Zeitplan: pol. Vernehmlassung 08–11/2026,
  IOTH-Genehmigung 03/2027, Inkraft 2027); (2) politischer **Marschhalt bei den Liberalisierungen**
  nach dem **Brandunglueck Crans-Montana** (VKG-MM 06.01.2026) — Entwurf risikoorientiert neu, neuer
  Terminplan erst nach Brand-Untersuchung. **Konsequenz JANS:** bis Inkrafttreten **BSV 2015/17/22**,
  **keine antizipierten Erleichterungen einplanen** → `brandschutz-pl03-wegweiser` §1 (last_updated 2026-06-30).
- **M1 — NEU `kartenportale-grundlagen-checkliste-neue-parzelle.md` (established):** Standard-Output
  «was JANS bei einer neuen Parzelle IMMER zuerst holt» — 8 Pflicht-Grundlagen (EGRID → OEREB →
  Zonenplan → Baulinien → amtl. Vermessung → DTM/Orthofoto → GWR → Behoerden), je mit konkretem
  Connector-Befehl; SZ-Kurzvariante; verankerte Identifikatoren-Regel.
- **Connector-Smoke-Test (2026-06-30):** geo-zh.mjs an **Giebelweg 12, Langnau a.A.** validiert:
  Adresse → **EGRID CH879777718909 · Parz. 3338 · BFS 136**; `--produkt zonenplan` → **W/1.5 (W1),
  BMZ 1.5, GH 4.5, FH 7, ES II, inKraft, keine Revision**; login-frei < 5 s. Als wiederholbarer
  Funktionstest in den M1-Artikel eingewoben.
- Register: `INDEX.md` (M1 + Brandschutz-Zeile), `QUESTIONS.md` (C6/B5 `[~]`-Update),
  `curriculum.md` (M1 `[x]`, B5-Update), `raw/_INGESTED.md` (2 Run-12-Zeilen), Output
  `outputs/2026-06-30_training-run12.md`.
- **Naechster Lauf:** Energie (PL-04, Prioritaet) — D5 PV-Benchmark Typ B/C/D, D6 EVEN am KISPI-Fall.

## 2026-06-28 — Training Run 11 (Recht/Norm/PL-02): LRV-ELI vollendet · ZH-RPG-2-Zahlen + Klima-PBG · belegte SZ-Messweisen · SZ-Benchmark Willerzell
- Schwerpunkt **Recht/Norm** (Rotation: Run 10 Energie → Run 11 Recht/Norm). Kein Connector-Schritt.
  Quellen: fedlex.admin.ch (LRV), zh.ch (RPG-2-Umsetzung), Screenshots `PL-02/01_Gesetze/02_Schwyz`,
  reale Baurechtsanalyse `08_Baurechtsanalysen/230207_Willerzell.pdf`.
- **B1 vollendet — LRV-ELI:** 814.318.142.1 = fedlex `cc/1986/208_208_208`; PDF-A Stand **20260101**
  getestet (HTTP 200, 1.5 MB). **ELI-Falle dokumentiert:** ELI-Jahr = AS-Publikation **1986** ≠
  Erlassdatum 1985. Damit ist das SR→fedlex-ELI-Mapping der PL-02-Bundeserlasse **komplett**.
- **B2 vertieft — ZH-RPG-2 in Zahlen:** Stabilisierungswert **40'807 Gebaeude / 2'594 ha** versiegelt
  (Bezug 29.09.2023); Kompensation neue Baute ↔ Rueckbau **≥ 6 m²**; **Abbruchpraemie ZH ab 01.07.2026**
  (bereits erfolgte Rueckbauten nicht entschaedigt); **Bestandesschutz > 30 J direkt seit 01.01.2026**.
  NEU erfasst: parallele ZH-PBG-Revision **«Klimaangepasste Siedlungsentwicklung»** (teils direkt im
  Baubewilligungsverfahren, teils kommunale Nutzungsplanung).
- **R2 vertieft (NEU QUESTIONS B4) — belegte SZ-Mass-Definitionen** aus `02_Schwyz`-Screenshots
  (Stand SRSZ 1.2.2021): **§ 31i GFZ** (ΣGF/aGSF; GF = HNF+NNF+VF+KF+FF), **§ 31g BMZ**, **§ 60
  Gebaeudehoehe** (Fassadenmitte → Dachhaut; GA 50 % GH min 3 m), **Art. 42 Firsthoehe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** Dienstbarkeit. Kernbefund: **SZ ist
  IVHB-aligned (GFZ/BMZ), AZ kantonal abgeschafft (RRB 457/2014)**. SZ-Messweisen-Block in
  `recht-norm-quellenlandkarte.md` von Stichwort-Liste zu Mass-Tabelle ausgebaut.
- **R4b — SZ-Benchmark Willerzell/Reckholdern 3301** (Bezirk Einsiedeln) gelesen: dreistufige
  SZ-Quellen-Trias Kanton/Bezirk-Baureglement/QGP; Landhauszone L 0.2 (AZ 0.2, GA 4/8 m, Bauhoehe 6 m,
  GZ 1.5); **Planungs-Trap:** alte Bezirks-Zonen tragen trotz kant. AZ-Abschaffung weiter eine AZ.
  NEU Sektion in `recht-norm-baurechtsanalysen-benchmarks.md`.
- ⚠ Datenstand: SZ-Mass-Def. SRSZ 1.2.2021 (> 18 Mt.) → vor Zitat aktuelle SRSZ-Fassung pruefen.
- Register gepflegt: INDEX, QUESTIONS (B1 ✓ / B2 / B4), curriculum (R2 ✓ / R4 ✓), `_INGESTED.md`
  (4 Run-11-Zeilen), Output `outputs/2026-06-28_training-run11.md`.
- **Naechster Lauf:** Brandschutz (PL-03) — BSV 2026 bei definitiver Publikation nachziehen.

## 2026-06-26 — Training Run 10 (Energie/PL-04): Private Kontrolle Energie ZH + graue-Energie-Planungsgrundlage
- Schwerpunkt **Energie** (Rotation: Run 9 Kartenportale → Run 10 Energie). Kein Connector-Schritt
  (Energie hat kein eigenes Tool). Quellen: PL-04 `_Private Kontrolle` (erstmals eingearbeitet) +
  `_Heizwaermebedarf` (graue Energie) + Minergie-Planerwissen 2023.
- **D7 geloest — NEU `wiki/energie-private-kontrolle-zh.md` (established):** wer den Energienachweis
  ZH unterzeichnet. Belegt aus Merkblatt Baudirektion ZH/AWEL «Liste der Befugten» (Stand **April
  2025**) + **BBV I § 4-7** (LS 700.21). Inhalt: drei Unterschriften (Bauherr Hauptformular § 6 BVV /
  Projekt-Verantw. + **Befugte** technische Formulare § 4 BBV I), **Befugnis-Matrix** Wä/He/Kl/Bl/Lä ↔
  EN-101…141/S/LN, **interkantonale Geltung** (Firmen nur ZH; natuerliche Personen ZH/AR/GL/GR/SZ/SG —
  fuer SZ-Projekte relevant), Minergie-Label entlastet (EN-101…111 entfallen).
- **D8/D1 teil — graue Energie als Planungsgrundlage** in `energie-uebersicht.md`: SIA-2040-Richtwerte
  Wohnen + reales JANS-Oekobilanz-Deliverable **Schlierenweg 31** (ZPF Ingenieure, R. Thalmann,
  28.03.2022; Erstellung inkl. PV 6.0 kg CO₂-eq / 20 kWh / 12'000 UBP pro m²·a, Amortisation graue
  Energie via PV-Ueberschuss < 30 J). **Methodik-Tiefe bewusst in KB `wissen/energie` `[[graue-energie]]`
  belassen — kein Doppel**; Pa.Iv. 20.433 → kommender ZH-Grenzwert vermerkt.
- Querverlinkung gesetzt: `energie-uebersicht` + `energie-energienachweis-zh-formulare` →
  `[[energie-private-kontrolle-zh]]`; INDEX/QUESTIONS/curriculum/_INGESTED nachgefuehrt.
- **Naechster Lauf:** Rotation → **Recht/Norm (PL-02)** (offen: ZH-PBG-Fassung bei RPG-2-Publikation,
  LRV-ELI). Energie-Reste: D5 Typ B/C/D PV-Benchmarks, D6 EVEN-Bedienung am KISPI-Fall, D3 Skill-Frage.

## 2026-06-24 — Training Run 9 (Kartenportale/PL-01): A6 Revision + K5 Baulinien + K8 Formate + E3 (Connector)
- Schwerpunkt **Kartenportale**, **mit Connector-Schritt** — alles live gegen die OGD-Endpunkte
  getestet, nichts ungetestet committed.
- **A6 geloest:** proj-Grundnutzung `0156_proj` kantonsweit aktiv → Connector `--produkt zonenplan`
  meldet jetzt automatisch eine **laufende BZO-Revision** (geplante Zone · Phase · Auflage ·
  Dokument-Link). Benchmark **Seuzach Kat. 2304** (K Kernzone, `Aenderung_Bauordnung_Zonenplan`,
  Auflage 01.11.2024). Vorher/Nachher fuer `machbarkeit` Typ A.
- **K5 geloest:** **NEU** `--produkt baulinien` (OGD-WFS 0158 Verkehrsbaulinie / 0152 Wald- /
  0153 Gewaesserabstand / 0150 Waldgrenze / 0185 Gewaesserraum), **±150-m-Fenster** (Linien neben
  Parzelle), `--radius` ueberschreibt. Benchmarks Langnau (7 Baulinien+Waldgrenze) / Seuzach (10).
  **NEU** `wiki/kartenportale-baulinien-abstandslinien-zh.md` (**established**).
- **K8 geloest:** Geodaten-Formate-Kurzleitfaden (GeoJSON/INTERLIS/DXF/GeoTIFF/XYZ-LAZ/LandXML/
  GeoPackage) in `kartenportale-geoportale-uebersicht.md`.
- **E3 geloest:** STAC-bbox adaptiv (Fenster verdoppeln bei 0 Kacheln bis Max); Befund: Kacheln
  ~1 km → Sicherheitsnetz, am Benchmark nicht ausgeloest, kein Regress.
- **A5 abgeschlossen (negativ):** ObjektwesenZH/Grundbuch nicht anonym automatisierbar
  (Interessennachweis Art. 970 ZGB) → manueller Behoerdenweg, bleibt `speculative`.
- Register: `INDEX.md`, `QUESTIONS.md` (A6/K5/K8/E3 ✓, A5 [~]), `curriculum.md` (K4/K5/K8 ✓),
  `raw/_INGESTED.md` (PL-01 Run9-Zeilen), `connectors/README.md`. Output `outputs/2026-06-24_training-run9.md`.
- **Quellen:** maps.zh.ch/wfs/OGDZHWFS (GetCapabilities + GetFeature, Datensaetze 0156/0156_proj/
  0158/0152/0153/0150/0185, GeoJSON EPSG:2056) — live 2026-06-24.

## 2026-06-22 — Training Run 8 (Brandschutz/PL-03): Wegweiser angelegt (C1/B2/B3 + QSS)
- Schwerpunkt **Brandschutz**, kein Connector-Schritt. PL-03 erstmals systematisch erschlossen
  (war zuvor nur «Verweis auf Skill `brandschutz`»).
- **C1/B1 ENTSCHIEDEN:** schlanker **Wegweiser** statt Doppel — Planungsgrundlagen/Prozess/QSS
  hier, Fach-/Detailarbeit (EI/RF/Brandabschnitte/W3xx/DoP/Ertuechtigung) im Skill `brandschutz`.
- **NEU** `wiki/brandschutz-pl03-wegweiser.md` (**established**): §1 VKF-5-Teil-Struktur ↔
  PL-03-Ordner + Rev. 2017/2022 + **BSV-2026-Stand** (Inkraft-Antrag 03/2027, bis dahin BSV 2015)
  + Online (bsvonline.ch/brandschutznachweis.ch); §2 Brandschutznachweis (Anleitung V.3 A–F,
  wann/Inhalt/Plaene SIA 400, Vorlage MFH-5g-RF1 V.3); §3 **QSS 1–4** (BSR 11-15 Tab. 3.3.1/3.4.1,
  **Healthcare=Beherbergung [a]→QSS 2–3**); §4 RF-Klassifikation-Spickzettel; §5 Abgrenzung.
- Register: `INDEX.md` (PL-03-Eintrag), `QUESTIONS.md` (C1✓/C3✓/C4✓/C5✓, neu C6 BSV 2026),
  `curriculum.md` (B1/B2/B3/B4✓, neu B5), `raw/_INGESTED.md` (PL-03 offen→teilweise, 5 Quellen).
- **Quellen:** PL-03 (Norm 1-15, BSR 11-15/13-15, Anleitung Brandschutznachweis V.3, Merkblatt
  Klassifikation V.2, MB 2003-15) + Web bsvonline.ch/vkg.ch (BSV 2026).

## 2026-06-20 — Training Run 7 (Recht/Norm/PL-02): fedlex-ELI-Mapping (B1) + RPG 2 (B2) + 06_Richtlinien (B3)
- Schwerpunkt **Recht/Norm**, kein Connector-Schritt (aber Tooling-Fund fedlex-Redirect).
- **B1 GELOEST:** SR→fedlex-ELI fuer alle relevanten Bundeserlasse belegt — BehiG `cc/2003/667`,
  NHG `cc/1966/1637_1694_1679` (Aend. AS 2025 429), NHV `cc/1991/249_249_249`, GSchG
  `cc/1992/1860_1860_1860` (Stand 01.08.2025), GSchV `cc/1998/2863_2863_2863`, LSV
  `cc/1987/338_338_338` (Aend. AS 2023 582), RPV `cc/2000/310` (Teilrev. AS 2025 659).
  **NEU** fedlex-Redirect `redirect/rs/<SR>/de` (SR→geltende Fassung); AS-/OC-Fundstelle-Schema;
  LSV≠LRV-Verwechslungshinweis.
- **B2 teil-geloest:** NEU Abschnitt „RPG 2 — Inhalt & ZH-Umsetzung" — Bund-Etappen 01.01./
  01.07.2026, Stabilisierung **max. 2 %** ausserhalb Bauzone (Basis 29.09.2023), Abbruchpraemie,
  RPV-Teilrev. AS 2025 659 (BR 15.10.2025); ZH passt PBG + Richtplan an, **Umsetzung noch in
  Erarbeitung** (Stand 2026-06-20). Quellen are.admin.ch / espace-suisse / uvek / zh.ch.
- **B3 GELOEST:** NEU Abschnitt „06_Richtlinien — Wegweiser" (BfU/Stadt-ZH-Absturz+RFB/AWEL/
  Minergie/GVZ→`brandschutz`/2000-Watt/Lignum/SWKI…), belegt aus dem Ordner.
- Alle in `[[recht-norm-quellenlandkarte]]` (bleibt **established**, last_updated 2026-06-20).
  Register QUESTIONS/curriculum/INDEX/_INGESTED gepflegt. Naechster Lauf → Brandschutz (PL-03, C1).
- Output: `outputs/2026-06-20_training-run7.md`.

## 2026-06-18 — Training Run 6 (Energie/PL-04): Brandschutz-Solar (E6) + PV-Benchmarks (D5) + EN-104
- Schwerpunkt **Energie**, kein Connector-Schritt. Die beiden echten Energie-Restluecken geschlossen.
- **E6 GELOEST:** NEU `wiki/energie-pv-brandschutz.md` (**established**) aus **Swissolar STP V4.00**
  (12/2022, red. 11/2023) zu **VKF-BSM 2001-15** (Rev. 01.01.2022) — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), **Brandmauer-Uebergang** (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  **RWA-Abstand** (Lichtraumprofil), **Feuerwehr/Kennzeichnung ab ≥30 kW**, **Naturgefahren** SIA
  261/261-1 (Hagel HWx, Schnee), Zugaenglichkeit SUVA. Solar-spezifisch, kein Doppel zu Skill
  `brandschutz`. ⚠ DC-Seite bleibt bei Tageslicht unter Spannung.
- **D5 teil-geloest:** Benchmark-Tabelle je Typ in `energie-pv-eignung-typenwahl.md` §3 aus zwei
  aktuellen SolarApp-Vorprojekten — **Indach-Tile** Reckholdern/Einsiedeln SZ 2024 (7.9 kWp,
  981 kWh/kWp, ~7'370 CHF/kWp) + **Aufdach** MFH Basel 2022 (59.93 kWp, 852 kWh/kWp, ~2'255
  CHF/kWp) + Flachdach ewzWHH 2019. Band ~850–980 kWh/kWp; CHF/kWp typabhaengig ~2'000–7'400.
  Offen Typ B/C/D.
- **EN-104** Dimensionierung belegt in `energie-energienachweis-zh-formulare.md`: EBF × 10 W/m²
  (max 30 kW), 8 m²/kW mono / 16 m²/kW Duennschicht, Befreiung/Alternativen; realer Beleg
  Einsiedeln Parz. 3301.
- **MuKEn 2025** Datenstand (Web 18.06.2026): EnDK 08/2025 verabschiedet, Inhalte (graue Energie/
  erneuerbare Waerme/mehr Eigenstrom), ZH-Ueberfuehrung ausstehend — in uebersicht/formulare/
  QUESTIONS/curriculum nachgezogen.
- Register: INDEX (neuer Artikel), QUESTIONS (C2/E6 ✓, D5 ~, D1-Update), curriculum (E6 ✓, E7 ✓
  neu, E5-Update), _INGESTED (4 PL-04-Quellen). Output `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training Run 5 (Kartenportale/PL-01): kommunaler ZH-Zonenplan GELOEST (A2/E2 ✓)
- Schwerpunkt **Kartenportale**, **Connector-Schritt**. Die lange offene Luecke A2/E2
  (login-freier kommunaler ZH-Zonenplan/BZO; `wms.zh.ch` = HTTP 401) ist **geloest**: ueber den
  **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz **0156** `arv_basis_np_gn_zonenflaeche_f`
  als **GeoJSON, login-frei** — derselbe WFS wie bei den Baulinien (0158).
- Liefert je Zone **mehr als der OEREB-PDF**: kommunale + kantonal harmonisierte Zone, Dichtemass
  (**BMZ** *oder* **AZ** + Vollgeschosse), Gebaeude-/Firsthoehe, Gewerbeanteil, Rechtsstatus,
  Festsetzungs-/Genehmigungsdatum; + Datensatz **0154** Empfindlichkeitsstufe Laerm (ES).
- **Connector `geo-zh.mjs`:** neues Produkt **`--produkt zonenplan`** (Mini-BBOX ±2 m, BMZ- und
  AZ-System gemappt, GeoJSON-Ablage mit `--out`), end-to-end getestet.
- **Benchmarks (2026-06-16):** Langnau a.A. Kat. 3338 (W/1.5→W1, BMZ 1.5, GH 4.5, ES_II, inKraft)
  + AZ-Gemeinde Egg (WG60→WG3, AZ 60/3 VG, ES_III, Revision 2024/25).
- **NEU** `wiki/kartenportale-zonenplan-zh.md` (established); bund-geodaten + geoportale-uebersicht
  + connectors/README aktualisiert; INDEX/QUESTIONS (A2/E2 ✓, neu A6)/curriculum (K2 ✓)/_INGESTED
  gepflegt.

## 2026-06-12 — Training Run 4 (Energie/PL-04): EN-ZH Fachformular-Liste + EVEN (D4 ✓)
- Schwerpunkt **Energie**. Aus den Original-PDF (PL-04/_Formulare Kt. ZH) die **vollstaendige
  EN-Fachformular-Liste** belegt erfasst: EN-101a/b/c · EN-102a/b · EN-103/EN-LCC-ZH/EN-120 ·
  EN-104-ZH · EN-105/EN-110-ZH · EN-111 · EN-112/131/132/133/134/135/141 · S/LN-1 — je mit
  Inhalt, Schwellenwert und Rechtsbezug (EnerG/BBV I/WDV), Quelle EN-ZH-Hauptformular S. 2-4
  (Version Juli 2022). Detail EN-105 (Lueftung, WRG ≥ 70 %, Aug 2017) und EN-110-ZH
  (Kuehlung/Befeuchtung, nur Bestand, Sept 2022) dokumentiert.
- **Datenstand-Update (zentral):** Kt. ZH wickelt den Energienachweis **seit 01.01.2026 ueber die
  Plattform EVEN** (`energievollzug.ch`) ab; EN-101…EN-141 dort digital, PDF nur noch fuer
  Ausnahmen (EN-104-ZH, EN-110-ZH, WTA, Ausfuehrungskontrolle, Lueftung Spezialfaelle). Quelle
  zh.ch/energienachweise (12.06.2026). Erklaert die «EVEN»-Notiz im Projekt 2619-KISPI.
- **NEU** `wiki/energie-energienachweis-zh-formulare.md` (established); `energie-uebersicht.md`
  auf EVEN umgestellt; INDEX/QUESTIONS (D4 ✓, D1-Update, neu D6)/curriculum/_INGESTED gepflegt.
- Reale Verknuepfung: 2619-KISPI (UGZ II.8.a/b/c → EN-ZH/EN-105/EN-110-ZH).

## 2026-06-11 — Baulinien als Vektor: ZH-OGD-WFS inkl. projektierter Linien validiert
- Anfrage Giebelweg 12 Langnau a.A. («genauste/umfangreichste Plattform bis zu geplanten
  Baulinien»): ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` liefert Datensatz 0158 (ARV) **login-frei
  als GeoJSON-Vektoren** — Layer `..._baulinie_l` (rechtskraeftig) und `..._baulinie_proj_l`
  (**projektiert/geplant**). Damit ist die Annahme «geplante Baulinien gibt es nicht als
  Vektoren» fuer Kt. ZH widerlegt; Grenze: Linien im laufenden Festsetzungsverfahren ggf.
  nur bei Gemeinde/Tiefbauamt. Befund Parzelle 3338: alle 5 OEREB-Baulinien-Themen «nicht
  betroffen», projektierte im 400-m-Fenster keine. `kartenportale-geoportale-uebersicht`
  (Checklisten-Eintrag Baulinien) entsprechend ausgebaut.

## 2026-06-11 — Geoshop-Connector: Grundstueckkataster (AV-DXF) automatisiert (A4 ✓)
- **NEU Connector `geoshop-zh.mjs`**: offizieller, login-freier Geodatenshop-Bezug Kt. ZH via
  REST-API `geoservices.zh.ch/geoshopapi/v1` (Doku zh.ch `rest_schnittstelle_ogd_interface.pdf`).
  Bestellung asynchron (POST orders → Polling → Zip-Download); Perimeter je **Gemeinde**
  (COMMUNE/BFS) oder **Parzelle** (PARCEL/EGRID). JANS-Standardfall: Produkt **10016**
  AV-Datenmodell ZH als **DXF (25)** = der bisher manuelle "Grundstueckkataster"-Bezug
  (`<bfs>-<gemeinde>-gds.dxf` + Lieferschein). **DWG bietet der Shop nicht an.**
- Live validiert: Langnau am Albis (BFS 0136), Ablage SharePoint
  `PL - 01 Kartenportale/Grundstueckkataster/Langnau a Albis`.
- geodienste.ch als Alternative kartiert: INTERLIS ganzer Kanton direkt
  (`/downloads/interlis/av/ZH/av_ZH_lv95.zip`); DXF-GEOBAU nur via Formular (max 5 Grundstuecke).
- QUESTIONS **A4 ✓**; `kartenportale-geoportale-uebersicht` um Geoshop-API-Zeile + Checklisten-
  Eintrag ergaenzt; Connector-README erweitert.

## 2026-06-10 — Trainings-Lauf 3: Kartenportale (PL-01) + Connector-Ausbau
- **NEU** `wiki/kartenportale-bund-geodaten.md` (**established**): vier login-freie geo.admin-
  Endpunkte je Parzelle, alle live getestet (Kat. 3338 Langnau a.A. / EGRID CH879777718909):
  **Punkthoehe** swissALTI3D (`/height` → 549.1 m), **Orthofoto** STAC `swissimage-dop10`
  (Jahrgaenge 2019/2022/2025, 0.1+2 m), **DTM** STAC `swissalti3d` (0.5+2 m, +xyz), **Bauzonen CH**
  WMS `ch.are.bauzonen` (PNG). Achsen-Falle dokumentiert: WMS 1.3.0 + EPSG:2056 = BBOX **N,E**.
- **Connector** `geo-zh.mjs`: neues Flag `--produkt height,orthofoto,dtm,bauzonen` (+`--download`),
  `GEO_ADMIN`-Endpunkte, STAC-Asset-Auswahl (kleinste GSD), lon/lat im Geocoding, `coord`/`produkte`
  im JSON. End-to-end getestet inkl. graceful skip bei EGRID-only (kein Crash). README aktualisiert.
- `wiki/kartenportale-geoportale-uebersicht.md`: emerging→**established** (Kernprodukte belegt).
- K2/A2 **teilweise**: harmonisierte Bauzonen geloest; **rechtsverbindlicher kommunaler ZH-
  Zonenplan-WMS offen** (`wms.zh.ch` = HTTP 401) → Grundnutzung bis dahin aus OEREB; QUESTIONS E2.
- Register: INDEX (neuer Artikel), curriculum (K3/K7 [x], K2 [~]), QUESTIONS (A3/A1/E1 ✓, A2 ~,
  neu E2/E3), `_INGESTED.md` (PL-01 + geo.admin). Output: `outputs/2026-06-10_training-run3.md`.

## 2026-06-08 — Trainings-Lauf 2: Recht/Norm (PL-02) vertieft
- `wiki/recht-norm-quellenlandkarte.md`: Status emerging→**established**. Vollstaendige 10-Ordner-
  Karte (01_Gesetze … 10 Laermschutz, Tiefgarage) inkl. ZH-Untergliederung. **SR→fedlex-Tabelle**
  + Bezugsschema: stabile ELI `…/eli/cc/<jahr>/<id>/de` und zitierfaehige datierte PDF-A
  `…/filestore/…/<JJJJMMTT>/de/pdf-a/…` (getestet RPG 20260101). Bestaetigte ELI: RPG
  `cc/1979/1573_1573_1573`, EnG `cc/2017/762`, EnV `cc/2017/763`.
- ⚠ **Datenstand:** RPG 2 in Kraft **01.01. + 01.07.2026** (RPV-Aenderung 15.10.2025 seit 01.01.2026)
  → Ordner-PDF 700/700.1 veraltet; EnG SR 730.0 "Stand 01.01.2026". Quelle: fedlex.admin.ch.
- **NEU** `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (emerging): `08_`-Fallbibliothek als
  Benchmark; **Maur 231024** gelesen → Struktur-Goldstandard Machbarkeitsstudie; 11 Faelle 2010–2023.
- SZ↔ZH-Messweisen (ZH=IVHB / SZ=PBG-Massartikel) + Dispens-BRKE verortet (Tiefe → `baurecht`).
- Register: INDEX (2 PL-02-Artikel), curriculum (R1/R4 [x], R2/R3 [~]), QUESTIONS (B1 ~, neu B2/B3),
  `_INGESTED.md` (PL-02 teilweise + 4 Quellen). Output: `outputs/2026-06-08_training-run2.md`.

## 2026-06-06 — Trainings-Lauf 1: Energie (PL-04) vertieft
- **NEU** `wiki/energie-pv-eignung-typenwahl.md` (**established**): PV-Typenwahl-Entscheidungsbaum
  (A–E), Eignungs-/Ertragswerkzeuge (sonnendach.ch, EnergieSchweiz-Solarrechner Okt 2022,
  uvek-gis, sonnenverlauf, PVSOL), JANS-Benchmark ewzWHH PS 19.36 (2019): ~850 kWh/kWp,
  ~CHF 1'600–2'460/kWp, Lebensdauer 25–30 J, V-Anordnung + Kiesstreifen-Detail.
- `wiki/energie-uebersicht.md`: Status emerging→**established**; **EN-ZH Hauptformular** (ZH-
  Energienachweis) belegt beschrieben (Einreichung DLZ vor Baubeginn, Inhalt/QS-Stufen, Quelle
  endk.ch/zh.ch); U-Wert/Q_H → Verweis auf KB `wissen/energie` (kein Doppel).
- Datenstand MuKEn gesetzt: EnerG ZH seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025,
  ZH-Umsetzung 06/2026 offen.
- Register: INDEX, curriculum (E1–E4 [x]), QUESTIONS (D2 ✓, neu D4/D5), `_INGESTED.md` (3 Quellen).
- Output: `outputs/2026-06-06_training-run1.md`. Naechster Lauf: Recht/Norm (PL-02).

## 2026-06-05 — KB angelegt (Seed aus den vier PL-Ordnern)
- KB-Geruest erstellt: `CLAUDE.md`, `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `training/PROGRAMM.md`, `training/curriculum.md`, `outputs/`.
- Vier Seed-Artikel angelegt (je Domaene einer):
  - `wiki/kartenportale-oereb-egrid-bezug.md` — **established**: validierte Kette
    Adresse→Koordinate→EGRID→OEREB-PDF (Kt. ZH), inkl. realem Beleg Giebelweg 12
    (EGRID CH879777718909, Parz. 3338, BFS 136).
  - `wiki/kartenportale-geoportale-uebersicht.md` — emerging: welches Portal liefert was.
  - `wiki/recht-norm-quellenlandkarte.md` — emerging: Wegweiser in PL-02, verlinkt `[[baurecht]]`.
  - `wiki/energie-uebersicht.md` — emerging: PV-Typen, U-Wert/SIA 380-1, Energienachweis ZH.
- Quelle des OEREB-Bezugswegs: Fachstelle GIS Kt. ZH (Hannah Gies), kein Login noetig.
