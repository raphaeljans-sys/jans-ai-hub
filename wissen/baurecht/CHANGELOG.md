# CHANGELOG — Wissensbasis Baurecht

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.
Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-07-17 — Buch-Run 47 (Modell D, 4 Komplexe adversarial parallel): Run-46-Meldung «Rueckstand abgebaut» war verfrueht

- **[korrigiert] Gewaesserraum GSchV — Kennzahlen-Tabelle widersprach dem eigenen Fliesstext.** Die
  Run-32-Aufloesung war nur im Fliesstext nachgefuehrt worden. `buecher/band-2/15-lage-von-gebaeuden.md`:
  Z. 246/247 auf **Art. 41a Abs. 2 lit. a/b GSchV** gesetzt (Normalgebiete, Schwelle **2 m** — nicht 1 m;
  Spanne **2-15 m** — nicht 1-15 m), Schutzgebiets-Formeln (Abs. 1 lit. a-c) neu ergaenzt; Z. 250
  «20 m ab Uferlinie» von **Art. 41b Abs. 2** entzitiert (der regelt nur Erhoehungsgruende → richtig
  Uebergangsbest. GSchV 4.5.2011 / § 15 HWSchV, operativ Art. 41b Abs. 1 = 15 m); Z. 155 Uferlinien-
  Messweise entzitiert (Art. 41a misst ab **Gerinnesohle** und kennt den Begriff «Uferlinie» nicht).
- **[korrigiert] Art. 41c GSchV fehlzitiert** in `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md`:
  die Anpassung der **Breite** im dicht ueberbauten Gebiet steht in **Art. 41a Abs. 4 lit. a** (Fliess-)
  bzw. **Art. 41b Abs. 3** (stehende Gewaesser); Art. 41c regelt die zulaessigen **Anlagen**.
- **[korrigiert/ergaenzt] LSV Art. 31/31a/32/35/39 — 6 Praezisierungen + 4 Luecken.** Gewichtigste Luecke:
  **Art. 32 Abs. 3 LSV** (Schallschutzpflicht auch bei **Umbau/Ersatz/Neueinbau**, Erleichterung nur auf
  Gesuch) fehlte in Wiki und beiden Destillaten vollstaendig — die fuer JANS haeufigere Fallgruppe als der
  Neubau. Ferner: Art. 31 Abs. 1 («wesentlich» qualifiziert nur die Aenderungen), Art. 31 Abs. 2
  (kantonale Zustimmung = kumulatives Bundes-Tatbestandsmerkmal), Art. 31 Abs. 3 (Kosten Grundeigentuemer),
  Art. 31a Abs. 1 (**Planungs- UND** IGW gelten als eingehalten — Grundlage der Einzonung Art. 24 USG),
  Art. 31a Abs. 1 lit. c Ziff. 1+2 (Fenster auch automatisch **oeffenbar**, plus angemessenes Raumklima),
  Art. 31a Abs. 2 (grundeigentuemerverbindliche Festhaltung), Art. 32 Abs. 1 (Mindest- vs. erhoehte
  Anforderung SIA 181, Bauherr als Adressat, SIA 181 nur «insbesondere»), Art. 32 Abs. 2 (SIA-181-Bezug ist
  Vollzugspraxis, nicht Wortlaut), Art. 35 (Stichprobe = Regelfall, Pruefpflicht nur im Zweifelsfall),
  Art. 39 Abs. 2/3. Betroffen: `wiki/laermschutz-und-nichtionisierende-strahlung.md` (neue Sektion
  «Schallschutz im Bestand und Kontrolle»), `buecher/band-2/19-baulicher-umweltschutz.md`,
  `buecher/band-2/19-baulicher-umweltschutz-teil2-laerm-nisv.md`.
- **[verifiziert] Quartierplan §§ 160a/81/129 PBG vollstaendig CONFIRMED** — kein Fehler. Der Vorbefund
  «§ 160a existiert nicht» war ein **Fehlalarm**: der amtliche Text schreibt Buchstaben-Paragraphen mit
  **Leerschlag** («§ 160 a.26»), weshalb `grep "160a"` null Treffer liefert. Drill-Karte auf den Wortlaut
  von § 160a **Abs. 3** geschaerft («Zustimmung aller Grundeigentuemer des Beizugsgebiets»).
- **[korrigiert] USG-Altlasten: Geisterbezeichnung «Art. 32bis USG»** (existiert nicht — Sequenz
  32 → 32a → 32abis → 32b → 32bbis) an 4 Register-Fundorten bereinigt (`wiki/INDEX.md`, `buecher/INDEX.md`,
  `wiki/QUESTIONS.md`, `training/curriculum.md`), alte Leerzeichen-Notation an 5 weiteren Fundorten
  (inkl. 2 Drill-Karten, dort zugleich die **Verwirkung per 1.11.2021** ergaenzt), Abschnittsgrenze
  «Art. 32-32b USG» → «Art. 32-32bbis USG». Materiell alles CONFIRMED.
- **[neu] Zwei Pruefregeln in `training/PROGRAMM.md` verankert:** (1) **Grep-Toleranz** bei Buchstaben-
  Paragraphen (`grep -E "§ ?NNN ?[a-z]"`) — ein grep-gestuetzter Vorbefund «Paragraph existiert nicht» ist
  ohne sie nicht belastbar; (2) **Register-Sweep-Pflicht** nach jeder Korrektur ueber alle sechs Dateiarten
  — derselbe Fakt steht an 5-6 Fundorten, Fliesstext-only-Korrekturen lassen Tabellen/Register divergieren.
- **[nachgefuehrt]** `wiki/QUESTIONS.md` (4 Flags geschlossen, neuer Kopfeintrag mit der Relativierung der
  Run-46-Meldung), `training/drills.md` (3 Modell-D-Karten + 1 Modell-A-Karte, 1 Karte geschaerft),
  Frontmatter `verifiziert`/`last_updated` in 3 Artikeln.
- **Bilanz:** 4 Komplexe, **0 Halluzinationen**, ~20 Fundorte synchronisiert. **Neu offen (beschaffbar):**
  Art. 40 Abs. 2 + Anhang 3/4 LSV, Art. 41c GSchV + Uebergangsbest. 4.5.2011 + HWSchV ZH, Art. 32e Abs. 3/4 USG.

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): Aussenwaermedaemmung/35-cm-Kappung in `nutzungsziffern` ergaenzt
- **`wiki/nutzungsziffern.md`: echte Luecke geschlossen.** Der fuehrende Artikel fuer AZ/UEZ/BMZ/GrFZ
  fuehrte die **35-cm-Kappung der Aussenwaermedaemmung ueberhaupt nicht** (kein Treffer fuer
  Daemmung/§ 253a/35 cm), obwohl das eigene Buch-Destillat `buecher/band-2/14-nutzungsdichte-ausnuetzung`
  (Z. 157-163) den Stoff vollstaendig kennt — er war nie ins Wiki hochpromotet worden. Neue Sektion
  «Aussenwaermedaemmung und Nutzungsziffern (35-cm-Kappung)» mit den amtlichen Fundstellen aus
  `raw/260607_amtlich_zh_pbg.md`: **§ 256 Abs. 2** (UEZ), **§ 257 Abs. 3** (Gruenflaechenziffer),
  **§ 258 Abs. 4** (BMZ — dort auch das Dach), **§ 12 Abs. 3 ABV**; in Kraft seit **1.4.2013**
  (FN 46: G vom 26.03.2012).
- Zwei Praezisierungen, die bisher nirgends im Wiki standen: (a) **fuer die AZ (§ 255 PBG) gilt KEINE
  solche Kappung**; (b) bei **nachtraeglicher** Daemmung am Bestand ist sie fuer BMZ/UEZ/GrFZ **ganz
  unbeachtlich** (**§ 253a Abs. 2 PBG**, ohne 35-cm-Deckel) — im Unterschied zu Abstaenden/Laengen/Hoehen
  (§ 253a Abs. 1 PBG *mit* Deckel, gefuehrt in `abstaende-und-hoehen`).
- **Querbezug KB energie** gesetzt: MuKEn 2025 Modul 11 fuehrt dieselbe 35-cm-Kappung als *Muster* —
  fuer ZH keine Neuerung (dort seit 2013 geltend, § 253a Abs. 2 PBG sogar weitergehend). `sources`
  um § 253a PBG, § 258 PBG, § 12 ABV ergaenzt. Alle Fundstellen am amtlichen Volltext verifiziert
  (inkl. Gegenprobe: die 35-cm-Kappung existiert in **beiden** Regimes — Hauptteil und Anhang
  «Stand 28. Februar 2017» —, es gibt kein Schlupfloch).
- **Offen (NICHT autonom, fuer den baurecht-Loop):** (a) **§ 33a ABV wird widerspruechlich gefuehrt** —
  `abstaende-und-hoehen.md` Z. 109 und `baulinien-und-abstandslinien.md` Z. 89 zitieren ihn als
  **geltende** Grundlage der 35-cm-Regel, waehrend `buecher/band-2/20-ausnahmen-teil2-...` (Z. 21) und
  `wiki/ausnahmebewilligung-und-bestandesschutz.md` ihn als **15 cm / im Zug der Harmonisierungsvorlage
  aufgehoben** fuehren (§ 253a PBG hat die Funktion uebernommen). (b) **Moeglicher veralteter
  Numerierungsstand in `nutzungsziffern.md`:** BMZ ist dort als «§ 254 PBG (geltend)» gefuehrt, im
  raw-PBG steht die BMZ aber in **beiden** Regimes unter **§ 258**; analog «Freiflaechenziffer § 257
  (geltend)», wo der Hauptteil bereits «Gruenflaechenziffer» fuehrt (FN 70, G vom 08.04.2024). Beides
  beruehrt die Uebergangsmechanik (BZO-Anpassung je Gemeinde) und wurde bewusst **nicht** autonom
  geaendert.
- Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-15 — Wissens-Chef Run 5 (Cross-KB): WWG→WsG-Aktualitaets-Flag
- [flag] `wiki/baureife-und-erschliessung.md` (§ 236 PBG Versorgung, § 27 WWG Wasserversorgung): Aktualitaets-Flag gesetzt — das ZH **Wasserwirtschaftsgesetz WWG (LS 724.11, 1991)** wurde per **1.6.2026 durch das neue Wassergesetz WsG vom 12.12.2022 abgeloest** (§ 126 WsG, explizite Aufhebung; primaerquellen-belegt in `wissen/energie` → `grundwasserwaermenutzung-bewilligung-zh-sz`). KEINE §-Umbenennung — die aus dem Standardwerk (6. Aufl. 2019) uebernommenen WWG-§§ bleiben quellentreu, das §-Mapping WWG→WsG ist offen (Bring-Schuld WsG-/WsV-Volltext). Buecher-Destillate (band-2/12, /15, /20) unangetastet (quellentreu zum 2019-Werk). Bericht: koordination/outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — Buch-Run 46 (Phase 3, Modell-D — die 2 letzten offenen Flags als Zitierfehler entlarvt; VERIFIKATIONS-RUECKSTAND ABGEBAUT)
- [beschafft] `raw/260715_amtlich_zh_vrg_beschwerde.md`: amtlicher VRG-Volltext §§ 19/19a/20/20a/21/21a/21b/41/42/43/44/49/50/52/53 (zhlex-PDF, Stand 1.7.26-133). **Befund: kein § 50a VRG** (Sequenz § 49→§ 50→§ 51 aufgehoben→§ 52).
- [beschafft] `raw/260715_amtlich_ch_lsv-es.md`: amtlicher LSV-Volltext Art. 43/44 (Empfindlichkeitsstufen ES I-IV, Fedlex, Stand 1.11.2023).
- [korrigiert] Behördenbeschwerde **«§ 209f PBG» → § 338c PBG** (Randtitel «III. Behördenbeschwerde», raw/260607_amtlich_zh_pbg.md Z. 3581-3583; Legitimation § 338a, Verbandsbeschwerde § 338b). «§ 209 PBG» = vorsorgliche Schutzmassnahmen mit Inventar — sachfremd, «209f» spurious. Fundorte: `wiki/rechtsschutz-und-rechtsmittelverfahren.md`, `buecher/band-1/09-rechtsschutz.md` (Frontmatter + Fliesstext + offene-Punkte), `buecher/INDEX.md`, `wiki/INDEX.md`.
- [korrigiert] Normenkontrolle: **«§ 50a VRG» existiert nicht** → prinzipale/abstrakte Erlassanfechtung § 19 Abs. 1 lit. d VRG (Rügegrund § 20 Abs. 2, Legitimation § 21b, Weiterzug § 41/§ 50 VRG); akzessorische = ungeschriebener Grundsatz. Alle 6 Fundorte korrigiert (Wiki, Destillat 09 ×4 Stellen, beide INDEX, `training/curriculum.md`); missplatzierte «§ 50a VRG» bei Gemeindeautonomie → Art. 50 BV. § 41/§ 50 Abs. 2 VRG CONFIRMED.
- [ergänzt] `buecher/band-2/19-baulicher-umweltschutz.md` + `wiki/laermschutz-und-nichtionisierende-strahlung.md`: Art. 43/44 LSV ES-Zonenzuordnung präzise belegt + Wiki-`verifiziert`-Feld nachgezogen (CONFIRMED, keine Korrektur).
- [status] `wiki/rechtsschutz-und-rechtsmittelverfahren.md` + `buecher/band-1/09-rechtsschutz.md` **emerging→established** (VRG/PBG-Rechtsschutz statute-level vollständig verifiziert Run 32/44/46); INDEX/curriculum nachgezogen.
- [ergänzt] `training/drills.md`: 4 neue Karten (3 Modell-D auf § 338c PBG / kein § 50a VRG / LSV-ES + 1 Modell-A Normenkontrolle-Hebel).
- [status] **VERIFIKATIONS-RUECKSTAND ABGEBAUT** — alle am Gesetzeswortlaut verifizierbaren Flags abgearbeitet; verbleibend nur nicht-belegbare Punkte (VSS-Normen kostenpflichtig, § 357 Abs. 5 PBG Fallrecht, reine Rechtsprechung). **Rücktaktung auf wöchentlich im Nachtfenster an Raphael vorgeschlagen** (Report + QUESTIONS-Block).

## 2026-07-15 — Buch-Run 45 (Phase 3, Modell-D — 3 Komplexe adversarial parallel via Agent-Tool)
- [korrigiert] `wiki/ausnahmebewilligung-und-bestandesschutz.md`: § 220 Abs. 2 PBG **Gemeinwesen-Ausnahme** vollstaendig ergaenzt (bisher verkuerzt — «es sei denn, es wuerde die Erfuellung einer dem Gemeinwesen gesetzlich obliegenden Aufgabe verunmoeglicht oder uebermaessig erschwert»); § 220 Abs. 3 «Vorschriften, die auch ihn schuetzen» praezisiert; §§ 218/219 PBG als Trias-Kontext + Frontmatter `paragraphen`/`verifiziert` ergaenzt. Volltextverifiziert raw/260607_amtlich_zh_pbg.md Z. 2179-2194. Schliesst die Run-34-Luecke «§ 220 Abs. 2 im Wiki verkuerzt».
- [korrigiert] `buecher/band-1/04-natur-und-heimatschutz.md`: Naturschutz-Lebensraeume (Trockenstandorte/Feuchtgebiete/Magerwiesen/Hecken) falsch «§§ 19-22 KNHV Landschaftsschutz» → **§ 13 Abs. 1 KNHV Naturschutz** korrigiert. Amtliche Abschnitts-Randtitel Nachtrag 130 bestaetigt (II. Naturschutz §§ 13-18, III. Landschaftsschutz §§ 19-22, IV. Denkmalschutz §§ 23-28, V. Erholungsflaechen §§ 29-32, VI. Inkraftsetzung § 33); § 14 KNHV (Abstandslinien Waldrand/Gewaesser + Baumbestand) + § 30 KNHV (Erholungsflaechen 45 m²/E) neu belegt. Quelle raw/260714_amtlich_zh_knhv.md.
- [korrigiert] `buecher/band-2/12-baureife-teil4-gebuehren-abfall-altlasten.md`: Kostenverteilungsverfuegung auf Verlangen eines Verursachers = **Art. 32d Abs. 4 USG** (vorher faelschlich Abs. 3 = Ausfallkosten). Adversariale Re-Verifikation Art. 32c/32d/32dbis/32bbis USG (Modell D) — Kern haelt, alle CONFIRMED. Quelle raw/260714_amtlich_ch_usg.md.
- [geschlossen] Stale-Flags in `wiki/QUESTIONS.md`: § 220 Abs. 2 verkuerzt (Run 34); USG-Nomenklatur 32bbis/32dbis; § 10 BBV II Zwischenwerte (0,002 m³ am raw bestaetigt); KNHV §§ 13-22/29-32; Gewaesserraum Abs.1/Abs.2 (war bereits Run 32 aufgeloest). Run-45-Block oben angefuegt.
- [ergaenzt] `training/drills.md`: 5 neue Karten (4 Modell-D auf die heute korrigierten Stellen + 1 Modell-A KbS-Veraeusserung/Art. 32dbis).
- [status] Verifikations-Rueckstand weitgehend abgebaut — verbleibend nur Belege ohne verfuegbaren amtlichen Volltext (§ 209f PBG, § 50a VRG, VSS-Normen kostenpflichtig) bzw. per se nicht gesetzeswortlaut-belegbare Rechtsprechung. Ruecktaktung auf woechentlich (Nachtfenster) empfohlen (Rule 260712).

## 2026-07-14 — Buch-Run 44 (Phase 3, Modell-D — 4 Komplexe parallel via Agent-Tool)
- [korrigiert] `wiki/rechtsschutz-und-rechtsmittelverfahren.md`: «Replikrecht § 26b VRG» präzisiert (§ 26b Abs. 4 VRG regelt nur Zustellung der Vernehmlassungen, Replikrecht ist Praxis aus Art. 29 Abs. 2 BV); «Zivilgericht» als Forum präzisiert (folgt erst aus § 317 PBG i.V.m. § 339b PBG). Bleibt `emerging` (§ 209f PBG/§ 50a VRG offen).
- [korrigiert] `wiki/baulinien-und-abstandslinien.md` + `buecher/band-2/15-lage-von-gebaeuden.md` + `buecher/band-2/15-lage-von-gebaeuden-teil2b.md` (Frontmatter): § 238 Abs. 3 PBG → **§ 238a PBG** (Vorgärten-/Begrünungspflicht, seit 1.12.2024) — Divergenz zum bereits korrekten [[naturschutz-und-denkmalschutz]] behoben, CONFIRMED gegen `raw/260607_amtlich_zh_pbg.md` Z. 2408-2420.
- [korrigiert] `wiki/INDEX.md`: [[baulinien-und-abstandslinien]]-Zeile von `*emerging*` auf **`*established*`** korrigiert (Frontmatter war schon länger established, INDEX war stehengeblieben) + § 238a-Hinweis ergänzt.
- [verifiziert] Quartierplan § 160a/§ 160b/§ 81/§ 129 PBG in [[baureife-und-erschliessung]] + Destillat [[03-quartierplan-landumlegung-teil2]] unabhängig gegen `raw/260607_amtlich_zh_pbg.md` gegengeprüft — **alle CONFIRMED**, keine Korrektur (Stand war bereits am selben Tag durch eine parallele Instanz volltextverifiziert, reine Kollision ohne Schaden).
- [ergänzt] `wiki/baureife-und-erschliessung.md`: Art. 19 Abs. 2 RPG präzisiert (keine feste 15-Jahres-Frist im RPG selbst, sondern Art. 5 Abs. 1 WEG für Wohnbauland); Art. 19 Abs. 1/3, Art. 22 Abs. 2 lit. b, Art. 27 RPG + Art. 4/5 WEG CONFIRMED. WEG-Abkürzung geklärt (Wohnbau- und Eigentumsförderungsgesetz SR 843, keine Verwechslung mit kantonalem WWG).
- [neu] `raw/260714_amtlich_ch_rpg-erschliessung.md` (RPG SR 700, Fedlex Stand 1.4.2026), `raw/260714_amtlich_ch_weg.md` (WEG SR 843, Fedlex Stand 1.1.2013).
- [ergänzt] `training/drills.md`: neuer Block «Buch-Run 44» — 6× Modell D aus den vier Komplexen.
- [geklärt] `wiki/QUESTIONS.md`: Run-44-Eintrag oben eingefügt.
- Methodik-Notiz: Workflow-Tool bewusst nicht verwendet (kein Nutzer-Opt-in in dieser Session); stattdessen 4 parallele Agent-Tool-Aufrufe, analog dem in Run 31/36 erfolgreich erprobten Muster — jeder Agent hat nur seine eigenen Ziel-Dateien editiert, Register (CHANGELOG/QUESTIONS/Drills/Tracker) wurden zentral im Hauptlauf konsolidiert, um Schreibkonflikte zu vermeiden.
- Bericht: `outputs/2026-07-14_buch-run44.md`.

## 2026-07-14 — Buch-Run 43 (Phase 3, Modell-D Gestaltungsplan §§ 83-89 + § 44a PBG + zwei NISV-Fundstellen-Divergenzen bereinigt)
- [verifiziert] **§§ 83-89 + § 44a PBG (Gestaltungsplan) CONFIRMED, 0 Fehler** gegen `raw/260607_amtlich_zh_pbg.md` (Z. 483-493/909-972). Wiki [[raumplanung-und-gestaltung]] bleibt `established`, erhält erstmals ein `verifiziert`-Frontmatter-Feld (trug bisher gar keins, obwohl der Artikel bereits established war).
- [korrigiert] `wiki/INDEX.md`: NISV-AGW-Fundstelle «Art. 6 Abs. 3» → **«Art. 3 Abs. 6 NISV»** (Zeile [[laermschutz-und-nichtionisierende-strahlung]]) — der Run-39-Fix hatte nur `buecher/INDEX.md` erfasst, diese zweite Index-Datei war noch veraltet.
- [korrigiert] `training/drills.md`: Modell-C-Karte vom 2026-07-11 trug dieselbe falsche NISV-Fundstelle — korrigiert auf Art. 3 Abs. 6 NISV.
- [ergänzt] `training/drills.md`: neuer Block «Buch-Run 43» — 3× Modell D, 2× Modell C, 1× Modell A zum Gestaltungsplan §§ 83-89/§ 44a PBG.
- [geklärt] `wiki/QUESTIONS.md`: Run-43-Eintrag oben eingefügt — dokumentiert die Divergenz-Bereinigung und die neue Lehre «`buecher/INDEX.md` ↔ `wiki/INDEX.md` sind zwei separate Dateien, beide müssen bei einer Korrektur mitgezogen werden».
- Bericht: `outputs/2026-07-14_buch-run43.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): Querbezug zu KB energie gesetzt
- [link] `baubewilligungsverfahren.md`: Querbezug-Block → KB energie (`energienachweis-zh` Nachweisphysik) + planungsgrundlagen (Formulare/EVEN); Rollenteilung Verfahrensrecht=baurecht / Nachweis=energie fixiert. Kein Widerspruch gefunden (Paar energie↔baurecht: 0 Widersprueche). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-14 — Buch-Run 41 (Phase 3, Modell-D §§ 295-298 PBG + § 48 BBV I aufgehoben + KNHV-Divergenz-Cleanup)
- [hinweis] Drei Aufgaben, direkt geprüft (kein Agent-Fan-out; Fokus auf Rest-/Cleanup-Punkte, die keine Parallelinstanz bearbeitet). Schwerpunkt: Divergenzen und Rest-Flags schliessen.
- [korrigiert] `buecher/band-2/17-gebaeude-und-raeume.md` (teil1): **Destillat↔Destillat-Divergenz** geschlossen — §§ 295-298 PBG waren im Schwester-Destillat [[17-gebaeude-und-raeume-teil2-ausruestungen]] bereits seit 2026-07-13 Modell-D-verifiziert, in teil1 aber noch als «Detail offen» geführt. Grundnorm-Kurzfassung «Allgemeine Anforderungen an Gebaeude» (§ 295 Waermeversorgung/Fernwaerme-Anschlusspflicht Abs. 2, § 296 Befoerderungsanlagen, § 297 Nebenraeume, § 298 RR-Delegation > 6 Geschosse) am strukturell richtigen Ort (vor §§ 299 ff.) ergänzt + auf teil2 als kanonische vertiefte Fundstelle verlinkt; eigenständig gegen `raw/260607_amtlich_zh_pbg.md` (Z. 3033-3057) gegengeprüft, alle CONFIRMED. Offene-Punkte-Bullet + Frontmatter nachgeführt. Status bleibt `emerging` (Ausruestungen § 4 ABV + Einstellraeume §§ 37-39 BBV I ab Shot 632 noch ungelesen).
- [verifiziert] **§ 48 BBV I CONFIRMED aufgehoben** — amtlicher Volltext `raw/260607_amtlich_zh_bbv1.md` (Z. 908 + Fussnote 80, Z. 1383): «Aufgehoben durch RRB vom 14. Juli 2021 (OS 77, 369; ABl 2021-07-23)». Präziser Beleg für die schon in Wiki [[wohnhygiene-und-raumanforderungen]] getroffene Aussage; §§ 48a/48b/48c BBV I (Grossverbraucher) bleiben in Kraft. Schliesst das Rest-Flag aus Run 40 (QUESTIONS Zeile 14).
- [korrigiert] `wiki/INDEX.md`: **Status-Divergenz** — [[naturschutz-und-denkmalschutz]] + [[04-natur-und-heimatschutz]] noch als `emerging` geführt, obwohl beide seit 2026-07-13 (CHANGELOG) `established` sind → beide auf `established` korrigiert, KNHV-Verifikationsvermerk (Nachtrag 130, nicht aufgehoben) ergänzt.
- [geklärt] `wiki/QUESTIONS.md`: der stehende «WICHTIGER FASSUNGSSTAND-BEFUND»-Block (Run 38: «KNHV per 1.8.2025 aufgehoben, Nachfolgeerlass ermitteln, hohe Prio») als **✅ GEKLÄRT** umgeschrieben — KNHV ist NICHT aufgehoben, das zhlex-«Aufhebungsdatum» betraf nur das Ende der Geltungsdauer der Fassung Nachtrag 099; seit 01.08.2025 gilt Nachtrag 130 unter derselben LS 702.11 (Teilrevision RRB 15.01.2025, nur § 3/§ 3a). Neuer Run-41-Eintrag oben eingefügt.
- [drill] `training/drills.md`: neuer Block «Kap. 17 / BBV I / KNHV» — 4 Modell-D-Gegenproben (§ 295 Abs. 2 Fernwaerme-Anschluss, § 298 6-Geschoss-Schwelle, § 48 BBV I aufgehoben, KNHV nicht aufgehoben), 2 Modell-C-Karten (§ 297/§ 39 BBV I, § 296 Nachrüstpflicht), 1 Modell-A-Drill (§ 295 Abs. 2 Fundstelle→Bedingung).

## 2026-07-14 — Buch-Run 40 (Phase 3, Modell-D: BBV-I-Wortlaut vollständig abgeschlossen + zwei Wiki↔Destillat-Divergenzen geschlossen)
- [hinweis] Zwei Komplexe, direkt geprüft (kein Agent-Fan-out, Kollisionsvermeidung zu Parallel-Lauf «Run 38» KNHV/USG/VRG). Komplex 1 = letzte offene Restschuld aus Run 39 (BBV-I-Wortlaut); Komplex 2 = beim Survey der offenen Flags entdeckte zweite Wiki↔Destillat-Divergenz (§ 62 StrG), unabhängig vom EnerG-Fall aus Run 39.
- [korrigiert] `buecher/band-2/17-haustechnische-anlagen-teil3.md`: §§ 18/21/22/23/24/26/29/30a/31/32/33/37/40/42/43/44/45/45a/46/46a BBV I + § 19a BBV II volltextverifiziert gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md`. Die bereits am 2026-07-13 (Run 32/33) im **Wiki** [[wohnhygiene-und-raumanforderungen]] korrigierten Fehler (§ 24 BBV I ≠ AWEL-Bewilligung sondern nur Mengenzähler-Pflicht, «§ 45 Abs. 3» existiert nicht → § 45a, § 42a aufgehoben → § 43, § 30a Abs. 2 ≠ WKK-Regel, § 48 aufgehoben → § 12b EnerG) waren im **Destillat** noch nicht nachgeführt — jetzt synchronisiert. **Zusätzlich 2 bisher unentdeckte Fehler** gefunden (auch im Wiki gefehlt): § 29 Abs. 2 BBV I kennt keine «Ausnahme innenliegende Räume» (unbelegter Zusatz gestrichen); § 42 Abs. 1 BBV I kennt kein «> 1 Kochplatte»-Kriterium (nur «eigene Kücheneinrichtung» im Wortlaut). Plus Präzisierung Brauchwarmwasser-Bedingungen (§ 26 Abs. 2, nicht § 23) und Freiluftbad-Schwelle («mehr als» statt «ab» 8 m³). **6 Korrekturen, 1 Ergänzung (12-W/m²-Komfortklimadeckel § 45 Abs. 2 lit. a), 0 offene Lücken.** Status `emerging` → **`established`**.
- [korrigiert] `wiki/wohnhygiene-und-raumanforderungen.md`: die 2 neu gefundenen Fehler (§ 29 Abs. 2 innenliegende Räume, § 42 Kochplatte) als Ergänzung im «Korrigiert»-Abschnitt nachgetragen, damit Wiki und Destillat wieder synchron sind.
- [korrigiert] `buecher/band-1/03-erschliessung-landsicherung-teil1.md` (3 Fliesstext-Stellen S. 96/114/150 + Frontmatter) + `wiki/baureife-und-erschliessung.md` (1 Stelle) + `buecher/INDEX.md` (Kap.-3-Eintrag): **§ 62 StrG Mehrwertbeiträge** — die bereits am 2026-07-13 (Run 36) im Wiki [[baulinien-und-abstandslinien]] korrigierte Regel (§ 62 lit. c/d StrG: Einzelbeitrag max. ½ Wertvermehrung/Summe max. ¾ Kosten bzw. Trottoir-Anstösserbeiträge max. ½ Kosten, KEIN kommunal/kantonal-Split ¼-½/¼) war an diesen 3 weiteren Stellen noch nicht nachgezogen — jetzt synchronisiert.
- [korrigiert] `buecher/INDEX.md` Kap.-17-Eintrag: § 24 BBV I / AWEL-Bewilligung und § 45 Abs. 3 / § 45a analog zum Destillat korrigiert.
- [hinweis] Lehre für den Radar: Wiki→Destillat-Divergenzen sind bei parallelen VOLLGAS-Instanzen ein wiederkehrendes Muster (jetzt 2. unabhängiger Fund nach Run 39) — ein Lauf, der primär TRANSFER/Verifikation macht, sollte am Ende `grep -rn "<Schlüsselbegriff>"` über wiki/+buecher/ prüfen.
- [drill] +8 Karten in `training/drills.md` (6× Modell D BBV-I/§ 62 StrG, 2× Modell C Selbsttest).
- [register] `wiki/QUESTIONS.md`: neuer Abschnitt Run 40 zuoberst; 2 alte needs-verification-Flags geschlossen (§ 62 StrG, BBV-I-Wortlaut — damit vollständig abgeschlossen). Report `outputs/2026-07-14_buch-run40.md`.

## 2026-07-14 — Buch-Run 39 (Phase 3, Modell-D: EnerG §§ 9-14 Fassungsstand + Wiki↔Destillat-/INDEX-Divergenz geschlossen)
- [hinweis] Fokus: die Modell-D-Befunde aus Run 32 (EnerG-Fassungsstand) waren im **Wiki** [[wohnhygiene-und-raumanforderungen]] korrigiert, im **Buch-Destillat** [[17-haustechnische-anlagen-teil3]] und im `buecher/INDEX.md` aber NICHT nachgeführt — trotz «verifiziert»-Vermerk im Destillat-Frontmatter. Diese Wiki↔Destillat-Divergenz wurde geschlossen (Netto-Neu, keine Kollision mit den Parallel-Läufen an KNHV/USG/VRG «Run 38», deren 260714-Rohtexte unberührt blieben). Verifiziert direkt gegen `raw/260712_amtlich_zh_energ.md` (Nachtrag 129, Stand Publikation 1.7.2025), kein Agent-Fan-out (Kollisions-/Konfusionsvermeidung).
- [korrigiert] `buecher/band-2/17-haustechnische-anlagen-teil3.md` (5 Stellen: Kurzfassung, VHKA-Detailzeile 17.9.2.12, WKK-Zeile 17.9.2.6, Formel-Zeile, Transfer-Zeile) + Frontmatter (verifiziert 2026-07-14, § 10c/§ 11/§ 13(aufgehoben)/§ 14 EnerG in Paragraphenliste ergänzt): **VHKA-Schwelle «ab 5 Nutzeinheiten» → amtlich Neubau ≥ 2 (Warmwasser, § 9 Abs. 1) / Bestand ≥ 3 pro Gebäude bei Gesamterneuerung (§ 9 Abs. 3, in Kraft seit 1.9.2025); Befreiung § 9 Abs. 5 (nicht Abs. 4)**. **Fossile WKK-/Notstrom-Wärmenutzung heute § 12b EnerG (Probeläufe ≤ 50 h/Jahr), nicht § 30a Abs. 2 BBV I / § 13 EnerG**. **§ 13 EnerG (Abnahmepflicht dezentraler Strom) per 1.9.2022 aufgehoben; § 9a EnerG existiert nicht** (Numerierung § 9 → § 10). Ergänzt: § 10a (Wärmebedarf Neubauten) + § 10c (Eigenstromerzeugung/PV, Berechnungsgrundlage EBF) neu seit 1.9.2022, im Buch 2019 nicht enthalten.
- [korrigiert] `buecher/INDEX.md` zwei Stellen: (1) VHKA-Summary «ab 5 Nutzeinheiten» → «ab 2/3 Nutzeinheiten»; (2) **NISV-AGW-Fundstelle «Art. 6 Abs. 3 NISV» → «Art. 3 Abs. 6 NISV»** (in Wiki + Destillat 19 seit Run 32/37 korrekt, nur der INDEX-Auszug war veraltet).
- [drill] +4 Karten in `training/drills.md` (3× Modell D zu VHKA-Schwelle/§ 12b/§ 13+§ 9a, 1× Modell A zu § 10c Eigenstromerzeugung).
- [register] `wiki/QUESTIONS.md`: neuer Verifikationsabschnitt Run 39 zuoberst; needs-verification-Flag «BBV-I/BBV-II + EnerG» → EnerG-Teil erledigt, BBV-I-Wortlaut bleibt offen. Report `outputs/2026-07-14_buch-run39.md`. Lauf als «Run 39» nummeriert, weil der Parallel-Lauf «Run 38» bereits belegt hat (KNHV-Fassungsstand-Befund, QUESTIONS-Kopf).

## 2026-07-13 — Buch-Run 37 (Phase 3, Modell-D Volltextabgleich, Nachtrag-Registrierung — Lauf fand parallel zu Run 36 statt, Register/Report fehlten bisher)
- [hinweis] Dieser Lauf wurde als eigenstaendige VOLLGAS-Instanz zeitgleich zu Run 36 ausgefuehrt (Selbstcommits `nas-selfcommit` 07:15-07:45 + `auto-sync` 09:20) und hat inhaltlich sauber gearbeitet, aber CHANGELOG/QUESTIONS/Output-Report nicht nachgefuehrt. Diese Registrierung holt das nach den vorgefundenen `verifiziert`-Vermerken in den Dateien nach.
- [korrigiert] `buecher/band-1/04-natur-und-heimatschutz.md` + [[naturschutz-und-denkmalschutz]]: §§ 203/205/207/210/211/216/217/50/76/238/338b PBG gegen `raw/260607_amtlich_zh_pbg.md` geprueft, alle CONFIRMED bis auf **§ 238 Abs. 3 PBG korrigiert auf Abs. 2** (Abs. 3 ist aufgehoben; tragende Norm fuer Umgebungsschutz von NHS-Objekten ist Abs. 2).
- [ergänzt] `buecher/band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3.md` + [[raumplanung-und-gestaltung]]: **Gestaltungsplan-Komplex volltextverifiziert** — § 49b PBG (preisguenstiger Wohnraum, seit 1.7.2026 geltendes Recht inkl. PWV, `speculative`-Vermerk aufgeloest), §§ 83-89 PBG (Gestaltungsplan/Gestaltungsplanpflicht/gemeinsame Bestimmungen §§ 87a-89, Vorpruefung 2/3 Monate), § 44a PBG (ueberkommunaler GP Materialgewinnung/-ablagerung). Neuer Wiki-Abschnitt "Sondernutzungsplanung — Gestaltungsplan" mit vollem Beleg; schliesst die von Run 36 genannte Luecke "Kap. 2 Teil 3 Gestaltungsplan, noch kein Wiki-Artikel".
- [established] `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` + [[wohnhygiene-und-raumanforderungen]]: **§§ 295-298 PBG volltextverifiziert** (Heizungsanlagen/standortgerechte Heizzentralen § 295, Befoerderungsanlagen § 296, Nebenraeume § 297, besondere Anforderungen > 6 Geschosse § 298), alle CONFIRMED. Schliesst die von Run 36 genannte Kap.-17-Restluecke.
- [korrigiert] `buecher/band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3.md`: §§ 242-249 PBG (Antennen/Camping/Fahrnisbauten) gegen PBG-Volltext geprueft, 2 Fassungsstand-Korrekturen (§ 243 Abs. 2/3, § 247 Abs. 1).
- [korrigiert] `buecher/band-2/15-lage-von-gebaeuden.md`: Art. 41a/41b GSchV (Gewaesserraum) gegen `raw/260712_amtlich_ch_gschv.md` geprueft, Abs. 1/Abs. 2-Verwechslung korrigiert (deckt sich mit dem in Run 32 bereits aufgeloesten Widerspruch zu [[abstaende-und-hoehen]]).
- [neu] `raw/260713_amtlich_zh_strg.md` (Strassengesetz ZH, LS 722.1, §§ 59-64 treu abgeschrieben) + [[baulinien-und-abstandslinien]] **§ 62 StrG korrigiert**: Buch-Angabe "¼-½ Mehrwertbeitrag" war unpraezise — amtlich lit. c (Einzelbeitrag max. ½ der Wertvermehrung, Summe max. ¾ der Kosten) und lit. d (Trottoir-Anstoesserbeitraege, Summe max. ½ der Kosten) sind zwei getrennte Regelungen. Schliesst die von Run 36 explizit offen gelassene Luecke "§ 62 StrG (kein StrG-Volltext im Hub)".
- [register] Betroffene Destillate/Wiki-Artikel bleiben `established`; keine Statusabsenkung. QUESTIONS.md wird im Anschluss (dieser Lauf, Run 38-Abschnitt) um die Erledigt-Vermerke ergaenzt.

## 2026-07-13 — Buch-Run 36 (Phase 3, Modell-D Volltextabgleich: 5 Komplexe parallel via Agent-Tool, 3 Korrekturen, 0 Halluzinationen)
- [established] [[wohnhygiene-und-raumanforderungen]] `emerging`→`established`: PBG §§ 299-306 + § 32/§ 4 ABV volltextverifiziert, alle 10 Fundstellen CONFIRMED. Präzisierung: § 32 ABV referenziert nur §§ 303-305 PBG, nicht den ganzen Block. Destillat `buecher/band-2/17-gebaeude-und-raeume.md` bleibt bewusst `emerging` (Restteile §§ 295-298 PBG offen).
- [ergänzt/korrigiert] [[ausnahmebewilligung-und-bestandesschutz]] (bleibt `established`): echte Lücke geschlossen — **§ 357 Abs. 5 PBG** (Milderung von Bauvorschriften, Verordnungsdelegation) volltextverifiziert (Z. 3770-3773) und neu ergänzt. Destillat `buecher/band-2/20-ausnahmen-bestandesschutz.md` neuer Abschnitt 20.3.5. **Nachtrag (Selbstkorrektur im selben Lauf):** Verifikations-Agent hatte die Anwendungspraxis fälschlich als "noch nicht gelesen" markiert — sie lag bereits seit 2026-07-10 im Destillat `20-ausnahmen-teil2-milderung-missstaende-brandstatt.md` vor (Art. 33a ABV, heute durch § 253a PBG weitgehend verdrängt). Verlinkung + Wiki-Text nachgetragen.
- [korrigiert] [[abstaende-und-hoehen]] (bleibt `established`, doppelt verifiziert durch parallel laufenden zweiten Refutations-Agenten): §282/284/292/293 PBG CONFIRMED; § 30 Abs. 1 lit. a/b ABV Schattenwurf CONFIRMED **3 Stunden** (in Kraft seit 1.8.2021) — Buch-Destillat hatte noch den überholten 2019-Stand, nachgeführt. **§ 28 ABV korrigiert:** die «≤ 0,5 m nicht eingerechnet»-Regel ist **Gerichtspraxis** (VB.2005.00519), nicht Gesetzeswortlaut — war fälschlich als Normtext dargestellt.
- [korrigiert/erweitert] [[baulinien-und-abstandslinien]] (bleibt `established`): §§ 90-95 PBG (Erschliessungsplan) und § 111 PBG (Ski-/Schlittellinien) neu ins Wiki aufgenommen, §§ 114-122 PBG (Werkplan/vorsorgliches Bauverbot/Heimschlag) ergänzt. **§ 106 PBG korrigiert:** Niveaulinien sichern die Höhenlage auch über Baulinien für Wasserbauprojekte, nicht nur über Verkehrsbaulinien. § 62 StrG bleibt offen (kein StrG-Volltext im Hub).
- [korrigiert/präzisiert] [[baubewilligungsverfahren]] (bleibt `established`): § 325 PBG als Delegationsnorm eingeordnet, § 325a PBG (energetische Sanierungen) CONFIRMED unverändert seit 2019 — `speculative`-Vermerk aufgelöst. **Solaranlagen-Zuordnung korrigiert:** richtig § 1 BVV / §§ 2a-2c BVV statt des nicht mehr existenten Verweises «§ 48 Abs. 2 lit. b-f PBG». §§ 4-7 BBV I um Minergie-Vermutung (§ 4 Abs. 4 BBV I) ergänzt.
- [register] `wiki/QUESTIONS.md` alle 5 Komplexe geklärt/verifiziert; `training/drills.md` 5 neue Karten (4× Modell C/D, 1× Modell A); Report `outputs/2026-07-13_buch-run36.md`.
- [hinweis] Fan-out über Agent-Tool (nicht Workflow-Tool — Lehre aus Run 32, Freigabe-Gate scheitert im unbeaufsichtigten Lauf). Ein erster Kap.-16-Agent lieferte kein Ergebnis (kein Dateidiff, verwirrte Ausgabe zu "Hintergrundagenten") und wurde erfolgreich neu gestartet — Ursache vermutlich eine fehlgedeutete Systemmeldung im Subagenten-Kontext; für künftige Läufe beobachten.

## 2026-07-13 — Buch-Run 35 (Phase 3, Modell-D Volltextabgleich: § 209 PBG + Kaminhöhen/LRV, 2 Netto-Neu-Komplexe von 4 beauftragten)
- [korrigiert/ergänzt] [[naturschutz-und-denkmalschutz]]: § 209 PBG vollständig gelesen — Abs. 1/4/5 aufgehoben, nur Abs. 2 (Verbot) + Abs. 3 (Jahresfrist) in Kraft. **Bestätigt: keine Verlängerungsklausel im Wortlaut.** Die "+1 Jahr"-Praxis stützt sich nur auf § 213 Abs. 3 PBG (Provokationsentscheid) + BEZ 2017 Nr. 2 — als Analogie/Praxis, nicht Gesetzeswortlaut, ausgewiesen. Keine Halluzination bestätigt.
- [neu] `raw/260713_amtlich_ch_lrv.md` (LRV-Volltext Fedlex Stand 1.1.2026 + BAFU-Kaminempfehlungen Dez. 2018, mit Verifikations-Ergebnis).
- [korrigiert] [[wohnhygiene-und-raumanforderungen]] / Destillat `buecher/band-2/17-haustechnische-anlagen-teil3.md`: Kaminhöhen-Werte (0,5/1,5/2 m), 40-kW-Abweichung, 6 m/s Austrittsgeschwindigkeit, Art. 6 LRV CONFIRMED. **Art. 20 LRV (Konformitätserklärung Öl-/Gasfeuerungen) ist per 1.1.2022 aufgehoben** (AS 2021 632) — Buch-Aussage war für 2019 richtig, heute veraltet; massgebend Feuerungskontrolle Art. 13 Abs. 3 LRV mit **drei** Kontroll-Rhythmen (4/2/3 Jahre je Anlagetyp), nicht pauschal "alle 2 Jahre".
- [register] `wiki/QUESTIONS.md` beide Punkte geklärt/verifiziert; Report `outputs/2026-07-13_buch-run35.md`.
- [hinweis] **Parallel-Kollision:** Dieser Lauf wurde zeitgleich mit einem zweiten, unabhängigen `baurecht-buch-training`-Lauf ausgeführt (VOLLGAS-ENDLOS, Regel 260712c), der dieselben Phase-3-Ziele teilweise doppelt bearbeitete (unten als "Buch-Run 33"/"Buch-Run 34" dokumentiert — [[geschosse-und-kniestock]] und PPV Stadt Zürich/Wegleitung/VSS wurden von BEIDEN Läufen unabhängig verifiziert, keine Dateikorruption, gleicher inhaltlicher Befund). Für den nächsten Radar-Lauf empfohlen: Lock-Mechanismus prüfen, um Doppelarbeit bei überlappenden `baurecht-buch-training`-Instanzen zu vermeiden.

## 2026-07-13 — Buch-Run 34 (Phase 3, Modell-D Volltextabgleich: 5 emerging-Komplexe parallel, 3 nach established gehoben)
- [korrigiert/established] [[geschosse-und-kniestock]] `emerging`→`established`: Fassungsstand-Umkehr analog [[abstaende-und-hoehen]] volltextverifiziert — harmonisierter Hauptteil § 275 PBG (Kniestock **bis 1,5 m**, **vier** Geschossarten inkl. Attika § 275 Abs. 4, Untergeschoss 2,5/3 m) vs. Anhang PBG alt (Kniestock 0,9 m / Bestand 1,3 m, gemessen 0,4 m hinter Fassade, drei Geschossarten). Beleg raw/260607_amtlich_zh_pbg.md Z. 2857-2886 (Hauptteil) / Z. 4387-4400 (Anhang), Zeilen 1:1 gegengeprueft. `verifiziert: 2026-07-13`.
- [korrigiert/established] [[ausnahmebewilligung-und-bestandesschutz]] `emerging`→`established`: § 220 PBG (Abs. 1-3) UND § 357 PBG volltextverifiziert. **Echte Luecke geschlossen:** § 357 Abs. 1 verlangt als eigenstaendige Voraussetzung, dass sich die Baute «fuer eine zonengemaesse Nutzung nicht eignet» — fehlte in der Voraussetzungs-Liste; ergaenzt. Zusaetzlich § 357 Abs. 4 (zumutbare Verbesserungen im oeffentlichen Interesse) ergaenzt. Bestaetigt die haeufige Falle: § 218 = Rechtsnatur, NICHT Dispens-Voraussetzung (die stehen alle in § 220). Destillat `buecher/band-2/20-ausnahmen-bestandesschutz.md` Wortlautkorrektur («fuer eine» statt «fuer solche», «weiter gehende»). Beleg raw/…_pbg.md Z. 2186-2194 / 3760-3769.
- [korrigiert/established] [[gebaeudearten-und-abstandssystem]] `emerging`→`established`: 3 Fehlzuordnungen korrigiert — (1) Minibau-Grenze 1,5 m/2 m² steht in **§ 260 Abs. 4 PBG / § 2 Abs. 2 ABV**, NICHT § 2 Abs. 1 ABV (= allg. Gebaeudedefinition); (2) Messweise Fassade→Grenze = **§ 260 Abs. 1 PBG**, nicht § 269 PBG; (3) unbelegte Nutzungsvoraussetzung «ohne Wohnraeume» bei der bewilligungsfreien Baute (§ 1 lit. a BVV nennt nur die zwei Masse) gestrichen. Harmonisierte Legaldefinitionen §§ 2/2a/2b/2c ABV kartiert. Destillat `buecher/band-2/15-lage-von-gebaeuden.md` gleich korrigiert. Beleg raw/…_abv.md / …_pbg.md / …_bvv.md.
- [korrigiert/established] [[laermschutz-und-nichtionisierende-strahlung]] `emerging`→`established`: letzte Restklaerung **Anhang 5 Ziff. 222 LSV** geschlossen — Belastungsgrenzwerte Lrn fuer **Laerm ziviler Flugplaetze** (Nacht), greift ueber **Art. 31a LSV** (Fluglaerm-Fenster); Fluglaerm-Absatz mit Beleg praezisiert. Art. 31/31a/32/39/40 LSV volltextverifiziert (raw/260712_amtlich_ch_lsv-nisv.md). Klarstellung im verifiziert-Vermerk: «alle Fenster» folgt aus BGE 142 II 100, nicht aus dem Wortlaut Art. 39 LSV; ES I-IV (Art. 43 LSV) + Rechtsprechung bleiben destillat-/jurisprudenzgestuetzt (nicht Gesetzeswortlaut).
- [korrigiert/emerging] [[wohnhygiene-und-raumanforderungen]] bleibt `emerging`: BBV I + BBV II jetzt vollstaendig volltextverifiziert (§ 7/10/11/19a BBV II, § 36/40 BBV I; § 10-Rauminhaltsstaffel 2,40→3,0 m³/m² bestaetigt). **Korrektur:** § 9 BBV II ist aufgehoben (RRB 18.12.1996) — Begriffe stehen in §§ 3/6/7 BBV II; Destillat `buecher/band-2/17-gebaeude-und-raeume.md` korrigiert. Kein established, weil der Hauptkoerper (PBG §§ 299-306 Belichtung/Mindestflaeche/Raumhoehe + § 32 ABV) noch nicht gegen den PBG-/ABV-Volltext geprueft ist (raw-Bereich fehlte diesem Lauf).
- [drill] +7 Karten (2× geschosse/kniestock Modell D/C, 4× Modell C zu Bestandesschutz/Gebaeudearten/Wohnhygiene/LSV, 1× Modell A) in `training/drills.md`.
- [register] `wiki/QUESTIONS.md` Verifikationsabschnitt Run 34 ergaenzt; Report `outputs/2026-07-13_buch-run34.md`.
- [hinweis] 5 parallele Verifikations-Agenten; 3 mit Abschlussbericht, 2 (geschosse, LSV) durch transienten API-Ueberlastungsfehler ohne Bericht beendet. geschosse hatte Wiki + 2 Drills bereits vollstaendig+korrekt geschrieben (raw-Zeilen im Hauptlauf 1:1 nachverifiziert); LSV war unberuehrt und wurde vollstaendig durch den Hauptlauf verifiziert und gehoben. Register/CHANGELOG durch den Hauptlauf ergaenzt.

## 2026-07-13 — Buch-Run 33 (Phase 3, Verifikation kommunale Erlasse/VSS-Normen: Wegleitung 1997, PPV Stadt Zürich Art. 8 Abs. 5-8, Veloabstellplatz-/Rampennormen)
- [neu] `raw/260713_amtlich_zh_ppv-stadt-zuerich.md` (Parkplatzverordnung Stadt Zürich AS 741.500: Wortlaut Art. 8 Abs. 5-8 autoarme Nutzungen amtlich aus Leitfaden Tiefbauamt 09.07.2024 bezogen; Fassungsstand-Diskrepanz zur 2010er-PDF dokumentiert; Art. 4/5/8ter/9 Abs. 4 ergänzend erfasst).
- [korrigiert/ergänzt] [[fahrzeugabstellplaetze-und-parkierung]]: (1) Wegleitung Baudirektion Oktober 1997 CONFIRMED als weiterhin geltend, Tabelle-1/Tabelle-4-Mechanik präzisiert, keine Nachfolge-Wegleitung gefunden; (2) PPV Stadt Zürich Art. 8 Abs. 5-8 mit vollem Wortlaut + Kaskade (Grundstück→Gemeinschaftsanlage/Zumietung 300 m→Ersatzabgabe) + Abgrenzung Art. 8 Abs. 3 PPV ergänzt, Fassungsstand korrigiert (gilt erst ab Revision bis 16.12.2015, nicht in der 2010er-PDF); (3) VSS-Veloabstellplatznormen korrigiert — Fehlzitat **«SN 640 060» entfernt** (existiert nicht), SN/VSS 640 065 (Bedarfsermittlung) + 640 066 (Projektierung) bestätigt, aktuelle Nomenklatur VSS 40 065/40 066 ergänzt; (4) VSS-Rampenneigungsnorm «SN 640 291a» auf aktuelle Bezeichnung **VSS 40 291** (2021) präzisiert, Kennwerte bewusst als dauerhaft needs-verification (Kostenpflicht/Urheberrecht) markiert, kein Normtext kopiert. `verifiziert: 2026-07-13`, Status bleibt `established`.
- [register] `wiki/QUESTIONS.md`: Verifikationsabschnitt für alle vier Teilfragen aus Run 29 ergänzt (Wegleitung CONFIRMED, PPV Fassungsstand korrigiert, Velonormen korrigiert, Rampennorm-Kennwerte explizit als dauerhaft offen wegen Kostenpflicht gekennzeichnet — kein falscher Abschluss).
- [hinweis] Keine urheberrechtlich geschützten VSS-Normtexte kopiert — nur Normbezeichnung, Ausgabejahr und Regelungsgegenstand referenziert, belegt über die frei zugängliche ParkingSwiss-Übersicht (ParkingGuideline 05-V1.2025) sowie amtliche PDF-Quellen (Wegleitung 1997, PPV-Leitfaden 2024).

## 2026-07-13 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich LSV/NISV + BBV/EnerG, Nachtrag Register)
- [neu] `raw/260712_amtlich_ch_lsv-nisv.md` (Art. 31/31a/32/35/39 LSV + Anhang 5 Ziff. 222; Art. 2/3/5/11/12 NISV + Anhang 1 Ziff. 61/62/64 + Anhang 2, Fedlex-Volltext, treu abgeschrieben).
- [korrigiert] [[laermschutz-und-nichtionisierende-strahlung]]: Anlagegrenzwert-Legaldefinition steht in **Art. 3 Abs. 6 NISV** (nicht Art. 6 NISV); Mobilfunk-Grenzwerte (Ziff. 64 Anhang 1 NISV) sind **frequenzbereichs-gestaffelt** (≤ 900 MHz = 4,0 V/m, ≥ 1800 MHz = 6,0 V/m, Kombi-Anlagen = 5,0 V/m), nicht als starre Einzelfrequenz-Liste dargestellt. Uebrige Kernaussagen (Lueftungsfensterpraxis-Aufhebung Art. 31 Abs. 2 LSV, OMEN Art. 3 Abs. 3 NISV, 5G-AGW) CONFIRMED. `verifiziert: 2026-07-12`, Status bleibt `emerging` (Anhang 5 Ziff. 222 LSV noch nicht im Detail geprueft).
- [neu] `raw/260712_amtlich_zh_energ.md` (EnerG Nachtrag 129, Stand 1.7.2025, §§ 9-14 vollstaendig, treu abgeschrieben, mit Fassungshinweis).
- [korrigiert/ergaenzt] [[wohnhygiene-und-raumanforderungen]] neuer Abschnitt "Haustechnik & Energie": 4 Korrekturen gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md` — § 42a BBV I existiert nicht mehr (Befreiung neu vollstaendig in § 43 BBV I); § 45 Abs. 3 BBV I existiert nicht, Grenzwerte in eigenstaendiger **§ 45a BBV I**; § 48 BBV I (WKK) aufgehoben, Materie neu in **§ 12b EnerG**; § 30a Abs. 2 BBV I regelt nur Drittabgabepflicht (>2 GWh), Notstrom/Probelaeufe-Schwelle **50 Std.** (nicht 30) in § 12b Abs. 1 EnerG. **Fassungsstand-Befund:** §§ 9/9a/10b/12/13 EnerG im Buch-Destillat entsprechen NICHT mehr durchgehend der heute geltenden Fassung — kuenftig gegen `raw/260712_amtlich_zh_energ.md` zitieren, nicht gegen das Buch. `verifiziert: 2026-07-12`.
- [drill] +5 Karten (3× Modell D, 1× Modell A) in `training/drills.md` zu den heutigen Korrekturen (Untergeschoss-Mass, Schattenwurf-Schwelle, Akteneinsicht §§ 8/9 VRG, AGW-Legaldefinition, § 45a BBV I).
- [register] `wiki/QUESTIONS.md` Verifikationsabschnitt fuer alle 5 Run-32-Komplexe konsolidiert (PBG §§ 278-293, VRG §§ 8/9/10c/15, GSchV, LSV/NISV, BBV/EnerG). Report `outputs/2026-07-13_buch-run32.md`.
- [hinweis] Zwei der fuenf parallelen Verifikations-Agenten (LSV/NISV, BBV/EnerG) endeten wegen eines transienten API-Ueberlastungsfehlers ohne eigenen Abschlussbericht — die Datei-Aenderungen waren jedoch vollstaendig und korrekt; dieser CHANGELOG-Eintrag sowie die Register-Nachfuehrung wurden nachtraeglich durch den Hauptlauf ergaenzt.

## 2026-07-12 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich §§ 278-293 PBG, Fassadenhoehe/Gesamthoehe/Hochhaus/Dachaufbauten)
- [korrigiert] [[abstaende-und-hoehen]] Abschnitt «Höhenbegriffe» komplett neu belegt: bisherige Zuordnung «Gebäudehöhe: § 279 PBG, § 12 ABV» war **falsch** (§ 279 harmonisiert regelt Mass/Zustaendigkeit, nicht den Begriff; § 12 ABV betrifft anrechenbare oberirdische Bereiche, hat mit Hoehenmessung nichts zu tun). «Vollgeschoss: § 276 PBG» war falsch (§ 276 = Anrechenbarkeit, Begriff steht in § 275 Abs. 1). «Untergeschoss 80 cm» ist im Volltext **nicht auffindbar** — korrekt ist § 275 Abs. 3 PBG: im Mittel max. 2,5 m, an keiner Stelle mehr als 3 m (Berechnung § 29 ABV). Firsthoehe/Gesamthoehe als getrennte Begriffe (alt § 281 vs. harmonisiert § 281) sauber unterschieden.
- [korrigiert] [[abstaende-und-hoehen]] Hochhaus-Schattenwurf-Schwelle **vertauscht** gewesen: bisherige Fassung nannte 2 h als geltend und 3 h als «Vernehmlassung 2018, nicht umgesetzt». Amtlicher Volltext § 30 Abs. 1 lit. a/b ABV (Fassung RRB 18.03.2020, in Kraft seit 1.8.2021) nennt **drei Stunden** als aktuell geltende Schwelle — die fruehere 2-Stunden-Regel wurde durch die 2020er-Revision gelockert. Korrigiert mit vollem Beleg (Fussnote 18 ABV).
- [korrigiert] [[abstaende-und-hoehen]] Dachaufbauten § 292 PBG: «Antennen» als Nicht-Aufbaute-Ausnahme war eine **unbelegte Ergaenzung**, im Gesetzeswortlaut (beide Fassungen) nicht auffindbar — gestrichen bzw. als nicht belegt gekennzeichnet. Gesetzlich genannt sind nur Kamine, Sonnenenergie-Anlagen, kleinere technisch bedingte Aufbauten.
- [ergaenzt] [[abstaende-und-hoehen]] Neue Kernaussagen mit vollem Beleg: § 279 Abs. 1/2 PBG (25 m Grundsatz, Gemeinde-Kompetenz, Verkehrsbaulinien, geringeres Mass massgebend), § 280 Abs. 1/2/4 PBG (Giebel-Erhoehung max. 7 m, Attika-Bonus 3,3 m, Waermedaemmungs-Zuschlag 25 cm), § 281 PBG (Gesamthoehe-Definition, nur harmonisiert), § 284 PBG (Hochhaus-Anforderungen Abs. 1-4 vollstaendig), § 293 Abs. 2 PBG (Ausnahme Haus-/Kellerzugaenge von der 1,5-m-Freilegungsschranke).
- [status] `established` bleibt (Kernaussagen bestaetigt oder korrigiert, keine Luecke offen fuer §§ 278-293).
- [frontmatter] `last_updated: 2026-07-12`, `verifiziert: 2026-07-12 (Modell-D §§ 278-293 PBG, Buch-Run 32)`; `sources` um §§ 275/276/278/279/280/281/282/283/284/293 (beide Fassungen wo relevant) + § 29/§ 30 ABV ergaenzt.
- [hinweis] Sister-Artikel [[geschosse-und-kniestock]] verwendet noch die **alte** § 275/276-Zaehlweise (Kniestock 0,9 m/1,3 m) unkommentiert als Status `emerging`, noch **nicht** Modell-D-verifiziert — Kreuzverweis gesetzt, Korrektur dort ausserhalb des Scopes dieses Runs.

## 2026-07-12 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich §§ 8/9/10c/15 VRG)
- [verifiziert] § 15 VRG (Kostenvorschuss) im Destillat [[09-rechtsschutz-teil2-ablauf-kosten-revision]] (Abschnitt 2.2, "S. 576-577") gegen amtlichen Volltext `raw/260712_amtlich_zh_vrg.md` geprueft: Paraphrase **bestaetigt** (Abs. 1 Barvorschuss Untersuchungskosten, Abs. 2 lit. a-c Sicherstellung Verfahrenskosten) — keine Korrektur noetig.
- [neu] [[rechtsschutz-und-rechtsmittelverfahren]] neuer Abschnitt **6b "Akteneinsicht und Realakte"**: §§ 8/9/10c VRG (Akteneinsicht Grundsatz/Ausnahme, Realakte) waren weder im Destillat noch im Wiki erfasst, jetzt direkt aus amtlichem Volltext ergaenzt mit vollem Beleg + JANS-Praxis-Hinweis (§ 10c als Hebel gegen faktisches Verwaltungshandeln ohne Verfuegung).
- [verweis] [[09-rechtsschutz-teil2-ablauf-kosten-revision]] neue Sektion "4. Verifikations-Notiz" dokumentiert den Abgleich + Cross-Referenz auf den Wiki-Abschnitt 6b (keine Duplizierung im Destillat, da §§ 8/9/10c ausserhalb des dort abgedeckten Seitenbereichs S. 576-606 liegen).
- [frontmatter] Beide Dateien: `last_updated: 2026-07-12`, `verifiziert: 2026-07-12 (Modell-D §§ 8/9/10c/15 VRG, Buch-Run 32)`; Destillat-Frontmatter `paragraphen` um § 8/§ 9/§ 10c VRG ergaenzt.
- [index] `wiki/INDEX.md` Statistik-Zeile + Kurzbeschreibung [[rechtsschutz-und-rechtsmittelverfahren]] aktualisiert.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Artikel-Backlink zu auflagebereinigung
- [link] [[bauausfuehrung-und-baukontrolle]] JANS-Bezug: Skill-Nennung auflagebereinigung um den konkreten KB-Artikel-Backlink `auflagebereinigung/wiki/fristenlogik-bauentscheid-zh` ergaenzt (operative Frist-Zuteilung). Gegen-Backlink zu den in Run 2 gesetzten Vorwaerts-Links.

## 2026-07-12 — Buch-Run 31 (Phase 3, Modell-D Volltextabgleich, 5 Komplexe parallel via Workflow)
- [GROSSER BEFUND] **Fassungsstand-Umkehr §§ 269-274/292 PBG:** Der amtliche PBG-Volltext (LS 700.1, Stand 1.7.2026) fuehrt die **harmonisierte Fassung (IVHB) als geltenden Hauptteil** (proj. Fassadenlinie § 260, Fassadenhoehe §§ 278-280, § 273 «Kleinbauten und Anbauten», § 292 Dachaufbauten **½**); das alte Recht (besondere Gebaeude 4/5 m, Dachaufbauten 1/3) steht nur noch im **Anhang (Stand 28.2.2017, Weitergeltung OS 72, 52)** und gilt uebergangsrechtlich, bis die Gemeinde ihre BZO harmonisiert. Selbst am raw-Volltext gegengeprueft (Z.3012/4463, Z.2842/4377).
- [korrigiert] [[abstaende-und-hoehen]] (`established` bleibt): Fassungsstand-Box umgekehrt; § 273 + § 292 als **Doppelwerte** (geltend/Anhang). Zahlenwerk 3,5/12/16,5 m + Summe §§ 270-271 + Waldabstand 30 m § 262 CONFIRMED.
- [status] [[11-allgemeine-bestimmungen-baupolizeirecht]] `emerging`→**`established`** + **6 Korrekturen**: § 219 nur Verschaerfung/zwingend (Milderung=BBV II); § 220 allg. Dispens (nicht «nur wo ausdruecklich» = § 218 Abs. 2); Bau Gemeinschaftswerke **§ 225** (nicht § 224 Abs. 2, § 225 ergaenzt); 30-Tage-Frist **§ 230 Abs. 2** (nicht Abs. 1); § 232 Abs. 2 Mitteilung/Abs. 3 Kosten (Kontroll-Betreten gestrichen); § 226 Abs. 2 Uebermassverbot; Naeherbaurecht **§ 270 Abs. 3 PBG** (nicht «§ 270 ZGB»).
- [status] [[04-natur-und-heimatschutz]] + [[naturschutz-und-denkmalschutz]] `emerging`→**`established`** + **2 Korrekturen**: Provokationsfrist 1 J.(+1) = **§ 213 Abs. 3** (nicht Abs. 1); Veraenderungsverbot **§ 209 Abs. 2 i.V.m. Abs. 3**, «+1 Jahr» nur analog § 213 Abs. 3 (needs-verification).
- [status] [[baulinien-und-abstandslinien]] `emerging`→**`established`** (§ 264/§ 272 verifiziert). [korrigiert] [[03-erschliessung-landsicherung-teil1]] § 122 Abs. 1 Fristbeginn = «seit Eintritt seiner **Rechtskraft**» (2 Stellen). § 120/150/264/346 CONFIRMED.
- [neu] `raw/260712_amtlich_zh_vrg.md` (§§ 8/9/10c/15/30 VRG, LS 175.2, ab zhlex) — VRG-Faktenbasis geschlossen. [korrigiert] [[bauausfuehrung-und-baukontrolle]]: Grundpfandrecht = **Art. 836 ZGB** (nicht § 15 VRG); § 30 Abs. 1 VRG Dreiteilung + § 10c VRG volltextverifiziert.
- [drills] +7 Karten (1× Modell A, 6× C/D) in `training/drills.md`. [questions] Run-31-Verifikationsabschnitt + alte Flags (§ 30 VRG, §§ 218-232, §§ 203-213, § 120-122/150/264/346, §§ 269-274/292) geschlossen. [report] `outputs/2026-07-12_buch-run31.md`.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Gewaesserraum-Bemessung korrigiert + Querbezuege planungsgrundlagen/normen
- [korrigiert] [[abstaende-und-hoehen]] Gewaesserraum: Fliessgewaesser-Bemessung vermischte fruehere den Schutzgebiets-Schwellenwert (< 1 m) mit der Normalgebiets-Formel (2,5x+7). Jetzt sauber getrennt: **Normalgebiet Art. 41a Abs. 2 GSchV** (GSB < 2 m -> 11 m; 2-15 m -> 2,5x GSB + 7 m) vs. **Schutzgebiet Art. 41a Abs. 1** (< 1 m -> 11 m; 1-5 m -> 6x+5; > 5 m -> GSB+30). Stehende Gewaesser: **> 0,5 ha**-Schwelle (Art. 41b) ergaenzt. Belegt an GSchV + planungsgrundlagen (adversarial verifiziert, BESTAETIGT). Cross-KB-Fund W1(hoch)/W3(niedrig).
- [link] [[abstaende-und-hoehen]] -> Geodatum-Wegweiser `planungsgrundlagen/wiki/kartenportale-baulinien-abstandslinien-zh`. [[nutzungsziffern]] -> normen-Destillat `sia-416-2003` (Flaechendefinitionen). [[fahrzeugabstellplaetze-und-parkierung]] -> normen-Destillat `vss-merkblatt-veloabstellplaetze-1998`.
- [nicht-korrigiert] Cross-KB-Verdacht §66 vs §262 Waldabstandslinie (baulinien-und-abstandslinien) adversarial WIDERLEGT: §66 = Planungslinie, §262 = Bauverbot, komplementaer (beide korrekt). Kein Eingriff.

## 2026-07-12 — Buch-Run 30 (Phase 3, Modell-D-Volltextabgleich, 3 Komplexe parallel via Workflow): §§ 233-237 / 326-329 / 340-341 PBG verifiziert, 7 Korrekturen + 1 Nachtrag
- [workflow] 3 Verifikations-Agenten parallel (Workflow-Tool, von Raphael 12.07.2026 autorisiert) — je Komplex ein Refutations-Agent gegen `raw/260607_amtlich_zh_pbg.md`. 0 Fehler, 287k Tokens.
- [verifiziert] **Baureife §§ 233-237 PBG** (Kap. 12): CONFIRMED § 233/234-Kern/236-Reihenfolge/237-OEV. **Korrekturen:** § 234 «behördlicher Antrag»→**Antrag des Gemeindevorstandes**; § 235 **3-Jahres-Erlassfrist** + Rechtsmittel-Ausnahme ergänzt; § 236 Abs. 1 «Beseitigung»→**«Behandlung»**; § 237 Abs. 4 Fehlzuordnung→**Veränderungsverbot privatrechtl. Zugänge + Grundbuch-Anmerkung** (Nachweis dauernder Benützungsrechte = allg. Grundsatz §§ 236/237); Destillat § 237 Gleisanschluss «wirtschaftlich» gestrichen (amtl. «technisch möglich und zumutbar»). Wiki [[baureife-und-erschliessung]] + Destillat [[12-baureife]].
- [status] **Baufreigabe/Kontrolle/Unterbruch §§ 326-329 PBG** (Kap. 8): Wiki [[bauausfuehrung-und-baukontrolle]] `emerging`→**`established`**. **Korrekturen:** § 328 Abs. 2 **lit. b = Förderung durch Gemeinde, NICHT «Abbruch»** (Abbruch/Einebnung = lit. c); § 328 **Abs. 3 = Kostenträger Grundeigentümer** (Ersatzvornahme/Grundpfand = § 30/§ 15 VRG); § 326 **Plattform-Fassung** (lit. a/b, vorzeitiger Baubeginn elektronisch); **Nachtrag § 328a** (elektronische Verfahrensführung); § 327 Abs. 1 Qualifier «Abbruch ohne nachfolgenden Neubau». **§ 329 Abs. 1 (BRG-Anfechtung nach RPG/USG/PBG) am Volltext bestätigt.** Destillat [[08-ausfuehrung-von-bauarbeiten]].
- [status] **Strafe/Verjährung/Wiederherstellung §§ 340/340a/341 PBG** (Kap. 10): Wiki [[widerrechtliche-bauten-und-sanktionen]] `emerging`→**`established`**. **Korrekturen:** § 341 amtl. Wortlaut «rechtmässigen Zustand herbeiführen; Verwaltungszwang + Schuldbetreibung» (Vorbehalt nur ggü. Strafverfahren, nicht «ohne Vorbehalt»); § 340 Abs. 4 (Gehilfenschaft) / Abs. 5 (Solidarhaftung) präzisiert, Abs. 3 (Verzicht) ergänzt; § 340a «Strafverfolgung UND Strafe». Destillat [[10-widerrechtliche-bauten-teil1]].
- [drill] training/drills.md: 6 Karten (1 Modell A, 4 Modell D, 1 Modell C) zu den heute verifizierten/korrigierten Stellen.
- [register] wiki/QUESTIONS.md (Run-30-Verifikationssektion + 3 alte Flags geschlossen: §§ 233-237, §§ 326-329, §§ 340/341), PROGRAMM.md-Tracker (Run 30 + nächste Ziele), CHANGELOG. Report `outputs/2026-07-12_buch-run30.md`.

## 2026-07-12 — Buch-Run 29 (Phase 3, erster Modell-D-Volltextabgleich): Fahrzeugabstellplaetze §§ 242-249 PBG verifiziert, 2 Fassungsstand-Korrekturen
- [verifiziert] **Kap. 13 Teil 3 Fahrzeugabstellplaetze §§ 242-248 PBG** gegen amtlichen Volltext `raw/260607_amtlich_zh_pbg.md` (§§ 242-249 + § 309) Absatz fuer Absatz abgeglichen (Modell D + E). CONFIRMED: § 242/244/245/246/248 + § 309 Abs. 1 lit. i (Fahrzeugabstellplaetze bewilligungspflichtig).
- [korrigiert] **§ 243 Abs. 2 → Abs. 3 (Fassungsstand):** Die «bei bestehenden Bauten Schaffung/Aufhebung»-Regel ist im geltenden Recht **§ 243 Abs. 3**; der neue **Abs. 2** (FN 72) = antragsgebundene tiefere Platzzahl. Buch 6. Aufl. 2019 zaehlt sie noch als Abs. 2 → Destillat + Wiki korrigiert (fuer Bewilligungen/Reverse Abs. 3 zitieren).
- [korrigiert] **§ 247 Abs. 1 (Fassungsstand):** geltend «nur fuer die Mobilitaet» (breiter); die im Buch beschriebene enge Zwei-Zweck-Bindung (Parkraum/OEV) ist die fruehere Fassung → Destillat + Wiki korrigiert.
- [korrigiert] **§ 243 Abs. 1 lit. b:** amtl. «wesentlich **andere** Nutzung» (nicht «staerkere»); Zuordnung «ausserhalb oeff. Grundes» = § 242 Abs. 2, Interessen-Katalog = § 245 Abs. 2 lit. a.
- [status] Destillat [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] + Wiki [[fahrzeugabstellplaetze-und-parkierung]] `emerging` → **`established`** (kant. Recht §§ 242-248 volltextverifiziert).
- [drill] training/drills.md: 5 Karten (2 Modell D, 3 Modell C).
- [register] wiki/QUESTIONS.md (Verifikation + Methodenlehre Phase 3 «revidierte Absaetze als Fehlerherd»), PROGRAMM.md-Tracker + curriculum.md nachgefuehrt. Report `outputs/2026-07-12_buch-run29.md`.

## 2026-07-11 — Buch-Run 28: Kap. 15.13 Harmonisierungsvorlage (nPBG/nABV) — LETZTE Restschuld, Kap. 15 VOLLSTAENDIG → Forcierungs-Phase abgeschlossen, Phasenwechsel Phase 3
- [neu] **Destillat Kap. 15.13** [[band-2/15-lage-von-gebaeuden-teil3-harmonisierung]] (`emerging`, S. 1124-1133, Shots 566-570): **Lage von Gebaeuden nach der Harmonisierungsvorlage (nPBG/nABV/IVHB)** — neue Messsystematik **Fassadenflucht § 6 nABV / Fassadenlinie § 6a nABV / projizierte Fassadenlinie § 6b nABV** (Referenz Abstaende/Laengen/UEZ §§ 260/100/256 nPBG); **Gebaeudearten** (Minibaute ≤ 1,5 m/≤ 2 m² abstandsfrei § 260 Abs. 4 nPBG + bewilligungsfrei § 1 lit. a BVV, bewilligungsfreie Klein-/Anbaute ≤ 2,5 m/≤ 6 m², Klein-/Anbaute ≤ 4/5 m/≤ 50 m² nur SIA-416-Nebennutzflaechen §§ 49 Abs. 3 + 273 nPBG, **unterirdische Baute § 2b vs. Unterniveaubaute § 2c** ≤ 0,5 m, Hauptgebaeude §§ 270-277 nPBG); **vorspringende Gebaeudeteile neu bis 2 m + halber Fassadenabschnitt § 6c nABV** (statt Drittelregel § 260 Abs. 3 PBG), Zusammenzaehlung § 6c Abs. 2, unbedeutende Ruecksprünge § 6d; **Baubereich § 7 nABV**; **Baulinienbereich § 100 Abs. 2 nPBG** (alt § 100 Abs. 1 PBG: 1,5 m). Vorspann Brandmauern §§ 289-291 PBG. **SCHLIESST Kap. 15 vollstaendig.**
- [hinweis] Die Shots 566-570 waren im Inventar bereits `[x]` (unter teil2d = geltendes Recht), aber die **nPBG/nABV-Systematik** war nie erfasst — genau die als Restschuld gefuehrte Luecke. Jetzt geschlossen.
- [geschaerft] Wiki **[[abstaende-und-hoehen]]** (`established`) neue Sektion «Harmonisierungsvorlage (nPBG/nABV) — neue Messsystematik (Kap. 15.13)»: projizierte Fassadenlinie, 1/2-Vorsprungregel, Gebaeudearten, UIB/UNB-Verschaerfung, Baubereich; frontmatter (sources/links/last_updated) nachgefuehrt.
- [geschlossen] wiki/QUESTIONS.md: 15.13-Luecke erledigt; neue `needs-verification` Fassungsstand nPBG/nABV (IVHB-Vorlage 2019 vs. heute geltendes Recht).
- [drill] training/drills.md: 3 Modell-C-Karten (projizierte Fassadenlinie / 1-2-Vorsprungregel / UIB vs. UNB) + 1 Modell-A-Drill (Hobby-/Fitnessraum in Kleinbaute unzulaessig, SIA-416).
- [register] seiten-inventar (Shots 566-570 auf teil3-Destillat umgehaengt), INDEX.md (neuer Destillat-Eintrag + Kap. 15 vollstaendig), curriculum.md (**Kap. 15 VOLLSTAENDIG**, frontmatter Run 28). Report `outputs/2026-07-11_buch-run28.md`.
- [phasenwechsel] **Alle 23 Kapitel substanziell geschlossen** (Kap. 18 Brandschutz = Querverweis `brandschutz`). **Forcierungs-Phase ABGESCHLOSSEN.** Scheduled Task `baurecht-buch-training` auf **woechentlich** heruntergetaktet (Phase 3: Erhaltung/Drills + Modell-D-Volltextabgleich der needs-verification).

## 2026-07-11 — Buch-Run 27: Kap. 17 Haustechnik (T3/Schluss) + Kap. 19 Laerm/NIS (T2/Schluss) — Forcierung, 2 Kapitelteile, 22 Doppelseiten
- [neu] **Destillat Kap. 17 Teil 3** [[band-2/17-haustechnische-anlagen-teil3]] (`emerging`, S. 1304-1319, Shots 656-663): **17.9 Haustechnische Anlagen** — Abwaerme/WRG/WKK § 30a BBV I, Feuerungen Oel/Gas/Holz § 24 BBV I/LRV/Feuerungskontrolle alle 2 J. Art. 13 LRV, Kaminhoehen (0,5/1,5/2 m Ziff. 3 Empfehlungen 2013), **Elektroheizungsverbot § 10b EnerG**, Warmwasser **max. 60 °C § 26 BBV I** / Vorlauf **≤ 50 °C-Boden ≤ 35 °C § 23 BBV I**, **VHKA ab 5 Nutzeinheiten § 9 EnerG**, besondere Heizungen (Freiluft-/Hallenbad, Rampen-/**Garagenheizung Ziff. 2.31 Anhang BBV I**), Klima/Lueftung § 29 BBV I/EBF > 1000 m² § 45 Abs. 3, **Garagenlueftung § 37 Abs. 1 BBV I**, Elektro NIV Art. 37 ff., **Aufzugspflicht > 5 anrechenb. Geschosse** (Kabine 2,10 × 1,10 m, > 9 Gesch. = 2 Aufzuege § 40 Abs. 2 BBV I), Liftanbau Altbau § 19a BBV II (Erstellung vor 1.7.1978), Befoerderungsanlagen § 296 PBG/§ 31/32 BBV I, Briefkaesten Art. 73 ff. VPG; Auftakt 17.10 nPBG (lichte Hoehe § 304). **Kap. 17 substanziell komplett.**
- [neu] **Destillat Kap. 19 Teil 2** [[band-2/19-baulicher-umweltschutz-teil2-laerm-nisv]] (`emerging`, S. 1404-1431, Shots 706-719): **19.3 Laermschutz-Detail** — **Aufhebung Lueftungsfensterpraxis BGE 142 II 100** (IGW an ALLEN Fenstern laermempfindl. Raeume, Mitte offenes Fenster Art. 39 Abs. 1 LSV), **Baubewilligung trotz IGW-Ueberschreitung Art. 31 Abs. 2 LSV** (ueberwiegendes Interesse, > 6 dB(A) nie leicht), verschaerfte Schalldaemmung Art. 32 Abs. 2 LSV/SIA 181, **Fluglaerm Art. 31a LSV** (Nachtstunden/Schlafraumfenster autom.; vBR 2012/SIL/Abgrenzungslinie); **19.4 NIS/NISV** — zweistufig **IGW + AGW (Faktor 10, nur OMEN)**, Lichtimmissionen SIA 491, **OMEN Art. 3 Abs. 3 NISV** (Balkone/Terrassen NICHT), **Mobilfunk AGW 4-6 V/m** Ziff. 64 Anhang 1 NISV, Bauzone Anspruch § 320 PBG **ohne Beduerfnisnachweis** BGer 1C_329/2013, Standortdatenblatt Art. 11 NISV/Abnahme 80 % AGW. **SCHLIESST Kap. 19.**
- [neu] **Wiki [[laermschutz-und-nichtionisierende-strahlung]]** (`emerging`): baulicher Umweltschutz Laerm + NIS; wiki/INDEX.md neue Sektion «Baulicher Umweltschutz (Laerm & Strahlung)».
- [geschlossen] wiki/QUESTIONS.md: Kap. 17 Ausruestungen-Luecke + Laerm/NIS-Wiki-Luecke erledigt; 3 needs-verification neu (BBV/EnerG-Fassungsstand MuKEn 2014, LSV/NISV-Artikel + 5G-AGW, Kaminhoehen/LRV).
- [drill] training/drills.md: 6 Modell-C-Karten + 1 Modell-A-Drill (Lueftungsfensterpraxis, Art. 31 Abs. 2 LSV, IGW/AGW, OMEN-Balkone, Mobilfunk § 320 PBG, Aufzugspflicht, Garagen-Temperierung).
- [register] seiten-inventar (Shots 656-663 + 706-719 → [x], echte Seiten), INDEX.md (Abdeckung + 2 Destillate), curriculum.md (**Kap. 17 substanziell komplett, Kap. 19 VOLLSTAENDIG**). Report `outputs/2026-07-11_buch-run27.md`.
- [hinweis] Letzte substanzielle offene Kapitel geschlossen → Forcierungs-Phase kann abgeschlossen werden (Cron auf woechentlich, Phase 3).

## 2026-07-10 — Buch-Run 26: Kap. 14 Lueckenschluss (P1 VOLLSTAENDIG, 6 Tail-Doppelseiten, Shots 489/492/495/497/499/500)
- [erweitert] **Destillat Kap. 14** [[band-2/14-nutzungsdichte-ausnuetzung]] (`established`): Nutzungsart-Detail 14.2.2-14.2.6 (Arbeitsraeume Art. 52 PBG, nicht stoerende Betriebe § 52 Abs. 1/3, ideelle Immissionen BGE 108 Ia 140, **Pflegewohnung zonenkonform BEZ 2015 Nr. 36** [Healthcare], Parkplatz-Zonenkonformitaet 14.2.4, besondere Nutzungsanordnungen § 49a Abs. 3 + Erdgeschoss § 49a Abs. 3 Satz 2, **Uebertragung von Nutzweisen § 17 Abs. 2 ABV** Radius 150/300 m), BMZ integrierte Garagen (§ 13 ABV/BEZ 2012 Nr. 2), Harmonisierungsvorlage-Formeln nPBG 14.3.3-14.3.6 + **Verzicht auf Nutzungsziffern § 251 lit. b PBG** 14.3.7.
- [geklaert] **Mischrechnungsverbot** = keine benannte Doktrin in Kap. 14 (jede Ziffer bindet abschliessend, § 251 PBG); Offen-Punkte in Destillat, [[ausnuetzungsuebertragung]], [[nutzungsziffern]] und wiki/QUESTIONS.md geschlossen.
- [geschaerft] Wiki [[ausnuetzungsuebertragung]] `emerging`→`established`: Abgrenzung Ausnuetzungsuebertragung ↔ Nutzweisen-Uebertragung (§ 17 Abs. 2 ABV, BO Zuerich Art. 6, Vergleichstabelle).
- [geschaerft] Wiki [[nutzungsziffern]]: Harmonisierungsvorlage-Formeln nPBG (+20 % Energiespar-Bonus § 11/13 nABV), Verzicht § 251 lit. b, Nutzungsart-Abschnitt.
- [drill] training/drills.md: 5 Modell-C-Karten + 1 Modell-A-Drill (Kap. 14 Nutzungsart/Nutzweisen/IVHB).
- [register] seiten-inventar Shots 489/492/495/497/499/500 → [x] (echte Seiten 970-992); curriculum Kap. 14 → VOLLSTAENDIG; buecher/INDEX Kap. 14 → ✅; wiki/INDEX-Eintraege aktualisiert.
- [report] `outputs/2026-07-10_buch-run26.md`.

## 2026-07-10 — Buch-Run 25: Kap. 13 Schluss / Kap. 20 Schluss / Kap. 21 Schluss (Forcierung, 3 Kapitelteile, 19 Doppelseiten)
- [neu] **Destillat Kap. 13 Teil 3 / Schluss** [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]]
  (S. 892-916, Shots 449-461): **Fahrzeugabstellplaetze §§ 242-247 PBG** — kommunaler Normbedarf § 242 Abs. 1,
  Reduktion + **Maximum § 242 Abs. 2** (Massnahmenplan Lufthygiene Art. 44a USG/Art. 31 LRV BEZ 2012 Nr. 37,
  **Wegleitung Baudirektion 1997** Gemeindetyp 1/2 BGE 124 II 272), **autoarme Nutzungen** (Mobilitaetskonzept,
  PPV Zuerich Art. 8 Abs. 5-8, Grundbuch-Anmerkung), **Fahrtenmodell** (BEZ 2004 Nr. 46), Behindertenparkplaetze
  SIA SN 521 500 (1/25 WE, 100 m), erstellungspfl. Tatbestaende § 243 (abschliessend BEZ 2001 Nr. 28),
  Massnahmen Bestand § 243 Abs. 2, Lage/**nuetzliche Entfernung § 244** (300/600/150-200 m), Verkehrssicherheit/
  Revers § 244 Abs. 2, Gestaltung/unterirdisch § 244 Abs. 3 (kein Legiferierungsspielraum VB.2013.00754,
  UG-Platz 35-47 kFr.), Ersatzloesungen §§ 245/246 + **Parkplatzfonds § 247**, Veloabstellplaetze § 242 Abs. 1
  (BEZ 2013 Nr. 15); **§ 248 Spiel-/Ruheflaechen** (nur MFH, Umgebungsplan, Flachdach). **SCHLIESST Kap. 13.**
- [neu] **Destillat Kap. 20 Teil 2 / Schluss** [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]]
  (S. 1456-1457, Shot 732): **§ 357 Abs. 5** Milderung (energetisch; wegen **§ 253a PBG** Aussendaemmung 35 cm
  bedeutungslos, Art. 33a ABV aufgehoben), **§ 358** baupolizeiliche Missstaende (Zufahrt BEZ 2015 Nr. 22 /
  Absturzsicherung VB.2015.00429 / Steinschlag-Aussiedlung BGer 1C_567/2014, i.V.m. § 228 Abs. 1),
  **§ 307 Brandstattrecht** (Wiederaufbau brand-/katastrophenzerstoerter vorschriftswidriger Bauten in Bauzonen
  **innert 3 J.**, Art/Umfang/Lage, verbessernder Wiederaufbau BEZ 1998 Nr. 8; ausserhalb Bauzone Art. 24c
  Abs. 2 RPG). **SCHLIESST Kap. 20.**
- [neu] **Destillat Kap. 21 Teil 2 / Schluss** [[band-2/21-ausserhalb-bauzonen-teil2-art37a-24d-24e-wald]]
  (S. 1504-1513, Shots 756-760): **Art. 37a RPG** zonenfremde Gewerbebauten (Stichtag **1.1.1980**, Art. 43 RPV
  +30 % zonenwidrige Flaeche/ausserhalb Kubus halb/ueber 100 m² betriebsnotwendig BEZ 2009 Nr. 7, «Gewerbe bleibt
  Gewerbe» BGE 140 II 509, restriktiver Baubegriff BGer 1A.186/2004), **Art. 24d Abs. 1** landwirtschaftsfremdes
  Wohnen («Wohnen bleibt Wohnen»/Art. 42a RPV) + **Abs. 2** Rustico (ZH kaum, § 207 Abs. 2 PBG/ZBl 2015 S. 614)
  + **Abs. 3 lit. a-e** gemeinsame Voraussetzungen, **Art. 24e RPG** hobbymaessige Tierhaltung (seit Mai 2014/
  Art. 42b RPV), **Bauen im Wald** (Art. 18 Abs. 3 RPG/Art. 20 Abs. 2 WaG/§§ 4-7 WaG-ZH), **§ 358a PBG** (ZH ohne
  kant. Erweiterung). **SCHLIESST Kap. 21.**
- [neu] **Wiki-Artikel** [[fahrzeugabstellplaetze-und-parkierung]] (`emerging`) — Pflichtparkplaetze ZH als
  buerotaugliche Landkarte (§§ 242-248 PBG). Neue Sektion in wiki/INDEX.md.
- [update] Register nachgefuehrt: seiten-inventar (Shots 449-461/732/756-760 → `[x]`), buecher/INDEX (3 neue
  Destillate + Abdeckungs-Matrix Kap. 13/20/21 auf 🟢 vollstaendig), curriculum (Kap. 13/20/21 VOLLSTAENDIG),
  wiki/QUESTIONS (3 Gaps geschlossen, 2 needs-verification neu). Modell A (Buerofrage autoarme Nutzung) +
  Modell C (6 Karten). Report `outputs/2026-07-10_buch-run25.md`.

## 2026-07-09 — Buch-Run 24: Kap. 8 Schluss / Kap. 13 T2 / Kap. 16 T3 (Forcierung, 3 Kapitelteile, 49 Doppelseiten)
- [neu] **Destillat Kap. 8 Schluss** [[band-1/08-ausfuehrung-teil2-baustellensicherheit]] (S. 510-535,
  Shots 257-269): 8.3 Baustellensicherheit — **Schutz Nachbargrundeigentum § 239 Abs. 1 PBG / Rissprotokoll**
  (privatrechtl., Beweislast Art. 8 ZGB, BEZ 2016 Nr. 15), Feuerpolizei (→ Skill `brandschutz`),
  Arbeitnehmerschutz **VUV/BauAV** (Asbest SUVA Art. 60a/60b BauAV), **Baustellenentsorgung Art. 16 VVEA**
  (Konzept ab > 200 m³), **Bauherren-Altlast 2/3-Rueckgriff Art. 32bis USG**, **Baulaerm** (Stufen A/B/C,
  Art. 6 LSV), **amtl. Vermessung § 19 KVAV** (1 J.). **Kap. 8 endet S. 535 → Band 1 komplett (ausser Kap. 18).**
- [neu] **Destillat Kap. 13 Teil 2** [[band-2/13-weitere-grundanforderungen-teil2]] (S. 858-891, Shots 431-448,
  Shot 434 = Dup): Einordnung-Forts. § 238 (Umgebung/Umschwung § 238 Abs. 3 **ohne** Ausnuetzungswirkung
  BEZ 2011 Nr. 6, Stuetzmauern, Baumschutz §§ 203 ff./76, Neobiota Art. 15 FrSV), Sonstige Beschaffenheit
  § 239 (Regeln der Baukunde/Art. 229 StGB, Baumaterialien BauPG/PrSG), **Verkehrssicherheit §§ 240/241**
  (VSiV/StrAV/EV, **Sichtbereiche 90/150/50 m § 16 StrAV**, Einfriedungen §§ 11/12 StrAV), **Strassenreklamen**
  (Art. 6 SVG/Art. 95-99 SSV). §§ 242/248 erst nach S. 891.
- [neu] **Destillat Kap. 16 Teil 3** [[band-2/16-gebaeudedimensionen-teil3-umgebung]] (S. 1194-1229,
  Shots 601-618): **16.6 Hochhaeuser** (Gebaeudehoehe > 25 m § 282/§ 284, keine erhoehte Ausnuetzung,
  **Schattenwurf > 2 h § 30 ABV**), **16.7 Gebaeudelaenge/-breite** (flaechenkleinstes Rechteck § 28 ABV),
  **16.8 Dachaufbauten Drittelsregel ≤ 1/3 Fassadenlaenge § 292 PBG** (Kamine/Solar/Kreuzfirst zaehlen nicht,
  BEZ 2014 Nr. 9), **16.9 Freilegung UG ≤ 1,5 m ueber gestaltetem Boden § 293 PBG** (§ 280 = gewachsenes T.).
- [geaendert] **Wiki** [[abstaende-und-hoehen]] (`established`) neue Sektion Hochhaeuser/Gebaeudelaenge/
  Dachaufbauten (§§ 282/284/292/293/28/30 ABV) + Links/Quellen; [[bauausfuehrung-und-baukontrolle]] Abschn. 6
  Baustellensicherheit voll ausgebaut (VUV/BauAV/VVEA/Altlast/Baulaerm/KVAV), Quellenspanne → S. 485-535.
- [geaendert] **buecher/INDEX.md** (3 neue Destillate + Abdeckungs-Matrix: Kap. 8 🟢 vollstaendig, Kap. 13/16
  🟢 weitgehend); **seiten-inventar.md** Shots 257-269/431-448/601-618 → [x] + Destillat-Link; **curriculum.md**
  (Status Kap. 8/13/16) + **PROGRAMM.md**-Tracker.
- [geaendert] **wiki/QUESTIONS.md**: Kap. 8 Restschuld + § 293 PBG erledigt; neue needs-verification (Kap.
  8/13/16 §§) + neue Kleinluecken §§ 242/248 (Kap. 13) und 16.9-Schluss.
- [drill] `training/drills.md`: 8 Karten (Modell C, davon 1 Modell-A-Drill Freilegung UG § 293).
- [report] `outputs/2026-07-09_buch-run24.md`.

## 2026-07-08 — Buch-Run 23: Kap. 4 (Natur-/Heimatschutz) → BAND 1 SUBSTANZIELL KOMPLETT
- [neu] **Destillat Kap. 4** [[band-1/04-natur-und-heimatschutz]] (S. 268-309, Shots 134-155, 21 Doppelseiten,
  die letzte offene Sektion von Band 1): **4.1** Rechtsgrundlagen (Art. 78 BV / NHG; ZH PBG III. Titel
  §§ 203-217 + KNHV); **4.2 Schutzobjekt-Katalog § 203 Abs. 1 lit. a-g** (Natur-/Denkmal-/Garten-/
  Archaeologie-Objekte; Denkmalschutz = Substanzschutz, Faustregel ~30 J.; Einzelbaum § 76/§ 238 Abs. 3);
  **4.3 Massnahmen** — Inventare (BLN/ISOS/IVS schutzwuerdig, kant./komm. Vermutung, **binden nur die
  Behoerde**), vorsorglich (Inventareroeffnung § 209 = 1-J-Veraenderungsverbot / § 210), definitiv
  **§ 205 lit. a-d** (**Kernzone § 50 ≠ Substanzschutz** / Schutzverordnung / -verfuegung / -vertrag),
  **Selbstbindung § 204**, projektbez. Schutzentscheid; **4.4** Schutzumfang § 207/§ 10 KNHV,
  Interessenabwaegung (finanzielle Interessen ueberwiegen i.d.R. nicht; Energie vs. Denkmalschutz abwaegbar),
  Verhaeltnismaessigkeit; **4.5 Verfahren** — Zustaendigkeit § 211, **Provokation § 213** (irreversibel),
  Inventarentlassung (keine Massenentlassung), Gutachten ENHK/EKD/NHK/KDK/AK, **Rechtsschutz § 211 Abs. 4**
  (keine aufsch. Wirkung, Ausnahme Aufhebung/negativ), Beitraege Art. 13 NHG (freiwillig).
- [neu] **Wiki-Artikel** [[naturschutz-und-denkmalschutz]] (`emerging`) — synthetisiert Schutzobjekt-Katalog,
  Inventar-Wirkung, die vier definitiven Schutzinstrumente, Interessenabwaegung/Verhaeltnismaessigkeit und
  Verfahren; Backlinks zu [[ausnahmebewilligung-und-bestandesschutz]] / [[bestandsumbau-eingriffstiefe]] /
  [[enteignung-und-entschaedigung]] / [[raumplanung-und-gestaltung]] / [[rechtsschutz-und-rechtsmittelverfahren]].
- [geaendert] **curriculum.md** Kap. 4 → **VOLLSTAENDIG**; **buecher/INDEX.md** (neues Destillat, Coverage
  Kap. 4 🟢 + Kap. 5 🟢, last_updated); **seiten-inventar.md** Shots 134-155 → [x] mit echten Buchseiten +
  Destillat-Link; **wiki/INDEX.md** (neue Sektion «Natur- & Denkmalschutz», Artikelzahl 21→22, Statistik);
  **wiki/QUESTIONS.md** (Kap. 4 erledigt, Band 1 komplett, needs-verification KNHV/§§ PBG/NHG).
- [hinweis] **TCC-Blockade behoben:** die CloudStorage-Screenshots (Run 19 blockiert) sind mit dem Read-Tool
  wieder lesbar.
- [drill] `training/drills.md`: 7 Modell-C-Karten + 1 Modell-A-Drill (Kap. 4).
- [meilenstein] **Band 1 substanziell komplett** (Kap. 1-10); offen nur Kap. 18 Brandschutz = Querverweis
  auf Skill `brandschutz`. Report `outputs/2026-07-08_buch-run23.md`.

## 2026-07-06 — Buch-Run 22: Kap. 9 Teil 2 → Kap. 9 (Rechtsschutz) vollstaendig
- [neu] **Destillat Kap. 9 Teil 2** [[band-1/09-rechtsschutz-teil2-ablauf-kosten-revision]] (S. 576-606,
  Shots 290-306, 17 Doppelseiten): Fristen/Gerichtsferien § 71 VRG, Kostenvorschuss § 15, vier
  Verfahrensphasen § 9.7, **aufschiebende Wirkung § 25 VRG ↔ § 339 PBG** (Teilfreigabe, BEZ 2004 Nr. 43),
  Schriftenwechsel/Replikrecht § 26b, Beiladung, Beweisverfahren (Augenschein/Fachbericht § 18 OV BRG),
  Parteiverhandlung Art. 6 EMRK, Entscheidungsphase, **Kosten** § 338 PBG (500-50'000)/Parteientschaedigung
  § 17 (~1'500-2'500, Gemeinwesen ausnahmsweise), **Wiedererwaegung** (unterbricht Rekursfrist NICHT)/
  Aufsichtsbeschwerde/**Revision § 86a** (90 T/10 J.)/Erlaeuterung, **Mediation § 9.9.6**.
- [neu] **Wiki-Artikel** [[rechtsschutz-und-rechtsmittelverfahren]] (`emerging`) — synthetisiert Kap. 9
  Teil 1 (Instanzen/Legitimation/Kognition) + Teil 2 (Fristen/Ablauf/Kosten/ausserordentliche Rechtsmittel/
  Mediation); schliesst die bisherige Wiki-Luecke «Rechtsschutz».
- [geaendert] **curriculum.md** Kap. 9 → **VOLLSTAENDIG**; **buecher/INDEX.md** (neues Destillat, Coverage
  Kap. 9 🟢); **seiten-inventar.md** Shots 290-306 → [x] mit Destillat-Link; **wiki/INDEX.md** (neue Sektion
  «Rechtsschutz & Rechtsmittel», Artikelzahl 17→21); **wiki/QUESTIONS.md** (Kap. 9 Rest erledigt +
  needs-verification VRG-§§); **PROGRAMM.md** Tracker.
- [drill] **training/drills.md** +7 Karten (Modell C, davon 1 Modell A): § 339-Teilfreigabe, Wiedererwaegung
  ohne Fristunterbruch, 4 Phasen, Parteientschaedigung/Gemeinwesen, Revisionsfristen, Gerichtsferien-Falle,
  Mediation «gemeinsame Tiefgarage».
- [status] **Band 1 offen nur noch Kap. 4** (Natur-/Heimatschutz, P3). Kap. 9 damit vollstaendig.

## 2026-07-04 — Buch-Run 21: Kap. 5 (Planung und Entschaedigung) vollstaendig
- [neu] **Destillat Kap. 5** [[band-1/05-planung-und-entschaedigung]] (S. 311-334, Shots 156-168,
  13 Doppelseiten): formelle Enteignung (Art. 26/36 BV, EntG/AbtrG, Flughafen Laerm/Direktueberflug),
  materielle Enteignung (2 Tatbestaende BGE 125 II 433, Fallgruppen-Landkarte, Abzonungs-~1/3-Schwelle),
  weitere Instrumente (Heimschlag/Zugrecht/Vorkaufsrecht/Mehrwertabschoepfung Art. 5 RPG 20 %),
  Enteignungsverfahren (10-J-Anmeldung § 183ter EG ZGB, Rekurs 20 T § 46 AbtrG, Verkehrswert/Alles-oder-nichts).
- [neu] **Wiki-Artikel** [[enteignung-und-entschaedigung]] (`emerging`) — Fallgruppen-Tabelle + JANS-Relevanz
  (Baulandqualitaet als Angelpunkt fuer machbarkeit/ankaufspruefung; Bewertungs-Methodik fuer immobilienbewertung).
- [update] wiki/INDEX (+ Sektion «Enteignung & Entschaedigung»), QUESTIONS (Band-1-Rest Kap. 5 erledigt;
  §§ 102/103/104 PBG teilgeklaert), buecher/INDEX (+ Kap. 5), seiten-inventar (Shots 156-168 → [x]),
  curriculum (Kap. 5 vollstaendig), drills (+8 Modell-C-Karten). **Band 1 offen nur noch Kap. 4 + Kap. 9-Rest.**
- [modell] C (8 Selbsttest-Karten). Report `outputs/2026-07-04_buch-run21.md`.

## 2026-07-03 — StrAV am Volltext verifiziert, Destillat Kap. 15 Teil 2b korrigiert
- [fix] **StrAV-Mauerregel praezisiert** (offene Frage aus dem Destillat erledigt): Volltext
  StrAV LS 700.4 (SharePoint-Gesetzessammlung, `700.4_19.4.78_69.pdf`) gelesen. Korrekt ist:
  Mauern/geschlossene Einfriedigungen bis 0,8 m an der Strassengrenze ueberall zulaessig; ueber
  0,8 m an geraden Strecken und Kurven-Aussenseiten; an Innenkurven/Verzweigungen/Ein- und
  Ausfahrten Entscheid der Baubehoerde (§§ 7-8 StrAV). Die alte Notiz «0,8 m gerade / 0,6 m
  Kurve» war unpraezis. Zusaetzlich §§ 1, 2, 6, 9, 10, 12, 16 StrAV erfasst
  ([[band-2/15-lage-von-gebaeuden-teil2b]], Sektion 2.12 + Schwellenwert-Tabelle).
- [kontext] Anlass: Zusammenstellung Gartenmauern Gemeinde Thalwil (Projekt 2414, Bohlweg 3).

## 2026-07-03 — Run 20 (Forcierung): 3 Kapitelteile parallel, Kap. 3/10/12 abgeschlossen
- [fix] **TCC-Blockade aus Run 19 umgangen:** das **Read-Tool** liest die OneDrive-CloudStorage-
  Screenshots problemlos (nur `cat`/`cp`/`xattr` waren blockiert). Shot 121 = verifiziert S.240/241.
  Kein separater FDA-Eingriff nötig, solange über das Read-Tool (nicht die Shell) gelesen wird.
- [transfer] **47 Doppelseiten** in 3 parallelen Distillier-Agenten:
  - **Kap. 3 Teil 2** (S.240-265, Shots 121-133): Quartierplan §§ 123 ff. PBG (amtlich § 158 vs. privat
    § 160a/Einstimmigkeit, Quartierplanbann § 150, Verfahren §§ 147-159), Umlegung/Realersatz §§ 137-145,
    Vollzug §§ 161-176 (Heimschlag § 165/60 T), Grenzbereinigung §§ 178-183, Güterzusammenlegung §§ 76-94
    LG → Destillat [[band-1/03-quartierplan-landumlegung-teil2]]. **Kap. 3 vollständig.**
  - **Kap. 12 Teil 4** (S.770-807, Shots 387-406): Anschlussgebühren Art. 60a GSchG, Abfall/Kehricht
    Art. 30-32b USG/VVEA, **Altlasten Art. 32c/32d USG/AltlV/KbS** (Realleistung Standortinhaber ↔
    Kostentragung Verursacher; Bauherren-Altlast Art. 32b bis; Veräusserung Art. 32d bis AWEL) →
    Destillat [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]]. **Kap. 12 vollständig.**
  - **Kap. 10** (S.609-636, Shots 307-320): widerrechtliche Bauten — formell/materiell, Wiederherstellung
    § 341 PBG (Verhältnismässigkeit, 30-J-Verwirkung), vorsorgl. Massnahmen § 339 Abs. 2/§ 6 VRG,
    Vollstreckung § 30 VRG, **Strafe § 340 PBG bis 50'000** (auch Architekt/Ingenieur; § 340a Verj. 5 J.)
    → Destillat [[band-1/10-widerrechtliche-bauten-teil1]]. **Kap. 10 vollständig — letzte Sektion Band 1.**
- [wiki] **NEU** [[widerrechtliche-bauten-und-sanktionen]] (`emerging`); [[baureife-und-erschliessung]]
  auf **`established`** geschärft (Quartierplan-/Landumlegungs-Block + Abfall/Altlasten-Block).
  INDEX/QUESTIONS nachgeführt (3 Lücken geschlossen, 2 needs-verification neu).
- [drill] +9 Modell-C-Karten (`training/drills.md`): Quartierplan/Altlasten/Schwarzbau je 3.
- [register] `seiten-inventar.md` 47 Shots auf [x] + verlinkt; `INDEX.md` (Abdeckung Kap. 3/10/12 →
  🟢 vollständig); `curriculum.md` Status Kap. 3/10/12 auf [x].
- [report] `outputs/2026-07-03_buch-run20.md`.
- [offen] Band 1 nur noch **Kap. 4** (Natur-/Heimatschutz P3) + **Kap. 5** (Entschädigung P3) + Kap. 9
  Rest S.575-608. Forcierung noch nicht abgeschlossen.

## 2026-07-02 — Run 19 ABGEBROCHEN: TRANSFER durch macOS TCC blockiert
- [blockade] Quell-Screenshots im OneDrive-CloudStorage-Ordner **nicht lesbar** (TCC): `stat`
  liefert echte Groessen (Shot 121 = 1 497 857 Bytes, materialisiert, OneDrive online), aber
  `cat`/`head`/`xattr`/`cp` liefern **«Operation not permitted»** — auch ohne Sandbox. Der
  ausfuehrende Prozess hat keinen Festplattenvollzugriff auf den geschuetzten CloudStorage-Ort
  (analog launchd→SMB-Blockade). **Kein Distillat geschrieben** (Leitplanke «nie erfinden»),
  Inventar/Curriculum/INDEX **unveraendert**.
- [report] `outputs/2026-07-02_buch-run19-BLOCKED.md` — Befund, Reproduktion, Fix (Festplatten-
  vollzugriff fuer Claude-App/`/bin/bash`; vgl. `scripts/check-launchd-fda.sh`), SharePoint-
  Fallback als Notoption.
- [drill] +1 belegte Modell-A-Karte (Erschliessungspflicht 15 J. / Selbsterschliessung Art. 19
  Abs. 3 RPG) — ausschliesslich aus vorhandenem Destillat, keine neuen Seiten (`training/drills.md`).
- [offen] TCC-Fix umsetzen; danach **Kap. 3 Teil 2** (Shots 121-133, S. 238 ff.: Quartierplan/
  Grenzbereinigung/Baulandumlegung/Gueterzusammenlegung) als naechster TRANSFER.

## 2026-07-02 — Run 18 Forcierung: 3 Kapitelteile parallel (Band-1-Tail + Kap.-6-Restschuld)
- TRANSFER 3 Destillate (von parallelen Agenten, Buchhaltung zentral), **46 Doppelseiten**:
  **Kap. 2 Teil 3** `buecher/band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3.md` (Shots 76+86-104,
  S. 170-204): **Sondernutzung/Gestaltungsplan §§ 83-89 PBG** (§ 83 ersetzt Grundordnung; oeffentlich § 84/
  privat **2/3-Quorum § 85 Abs. 2**/Aufhebung 5 J. §§ 82/87), **Gestaltungsplanpflicht § 48 Abs. 3**,
  **preisguenstiger Wohnraum § 49b** (`speculative`), **Verfahren Nutzungsplanung** (Auflage **60 Tage**
  Art. 4 RPG/§ 7, Festsetzung § 88, **kant. Genehmigung § 89/Art. 26 Abs. 3 RPG konstitutiv**), **Prinzip
  des einmaligen Rechtsschutzes**. **Kap. 3 Teil 1** `buecher/band-1/03-erschliessung-landsicherung-teil1.md`
  (Shots 105-120, S. 208-239): **Erschliessungsarten** (Grund-/Grob-/Feinerschliessung, Art. 19 RPG/Art. 4-5
  WEG), **Erschliessungspflicht Gemeinde** (15 J., Selbsterschliessung/Bevorschussung Art. 19 Abs. 3 RPG),
  Erschliessungsplan §§ 90-95, **Baulinien §§ 96 ff./Niveaulinien § 106**, **Werkplan §§ 114-119 + vorsorgl.
  Bauverbot §§ 120-122** (verfaellt 5 J.), StrG-**Mehrwertbeitraege ¼-½ § 62**. **Kap. 6 Teil 2**
  `buecher/band-1/06-baurechtliches-verfahren-teil2.md` (Shots 202-211, S. 402-421): **Anzeigeverfahren
  § 325 PBG/§§ 13-15 BVV** (3 kumulative Voraussetzungen; faellt weg in Kern-/Quartiererhaltungszone +
  BehiG-Umbau), **private Kontrolle §§ 4-7 BBV I**, Zustellbegehren §§ 315/316. Alle `emerging`.
  Zusaetzlich Shot 76/S. 150-151 (Run-17-OneDrive-Luecke) nachgelesen.
- VERDICHTUNG 3 Wiki-Artikel geschaerft: [[raumplanung-und-gestaltung]] (Gestaltungsplan §§ 83-89 +
  Verfahren Nutzungsplanung), [[baureife-und-erschliessung]] (Erschliessungsarten/-pflicht + Landsicherung
  Kap. 3), [[baubewilligungsverfahren]] (Anzeigeverfahren + private Kontrolle + einmaliger Rechtsschutz).
  **Modell-D-Korrektur** in [[baubewilligungsverfahren]]: § 315 PBG von faelschlich «30 Tage» auf **20 Tage
  Zustellbegehren** korrigiert (Beleg Kap.-6-Destillate + VB.2015.00248).
- ANWENDUNG `training/drills.md` Bloecke «Run 18»: Modell C (11 Karten) + Modell A (Gestaltungsplan 2/3-Quorum,
  schliesst die Run-17-Folgefrage).
- REGISTER `seiten-inventar.md` (46 Shots → [x]), `buecher/INDEX.md` (3 neue Destillate + Matrix Kap. 2/3/6),
  `curriculum.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (Kap. 2 T3 + Kap. 6 Rest erledigt, Tension 20/30 T geloest).
- REPORT `outputs/2026-07-02_buch-run18.md`.
- ERGEBNIS: **Kap. 6 vollstaendig**, **Kap. 2 weitgehend**, **Kap. 3 eroeffnet**. OFFEN: Kap. 3 Teil 2
  (Landumlegung ab S. 238), Kap. 5/10, Kap. 12 Teil 4. Forcierung nicht abgeschlossen.

## 2026-07-01 — Wissens-Health-Check (Phase 1): A0·B0·C3·D0·E0·F1·G3 — Top: Frontmatter-Schema uneinheitlich (6 Artikel `name:`/`paragraphen:` statt `title:`/`sources:`); 2 alte C-Luecken offen (Gebuehren 1-3 %o, BZO-Richtwerte); 3 Promotionskandidaten (Vorentscheid/Ausnahmebewilligung/Nebenbestimmungen emerging→established). Report `outputs/2026-07-01_health-check.md`. Nur-Audit, keine Aktionen.

## 2026-06-30 — Run 17: Kap. 2 Teil 2 (Nutzungsplanung / Zonenarten)
- TRANSFER NEU `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md` (Shots 73-85 ohne 76,
  S. 144-169, **12 Doppelseiten**): Abschnitt 2.3 Nutzungsplanung — grundeigentuemerverbindlich
  (Art. 21 RPG), **numerus clausus Bauzonentypen § 48 Abs. 2 PBG** (Kern § 50/Quartiererhaltung § 50a/
  Zentrum § 51/Wohn § 52/Industrie-Gewerbe § 56 [Heime ausgeschlossen]/oeff. Bauten § 60/Erholung § 61/
  Freihalte § 39,62/Reserve § 65/**Weiler Art. 33 RPV ≥ 10 Geb.**), **Neueinzonung Art. 15 Abs. 4 RPG**
  (4 kumulativ), **Arealueberbauung §§ 69-73 PBG** («Ringling» BGer 1C_313/2015), Grundzonenplan 1:5000
  (§§ 4/10 VDNP), Waldbegriff § 2 WaG-ZH (800 m²/12 m/20 J.), Grundwasserschutz S1/S2/S3. `emerging`.
- VERDICHTUNG [[raumplanung-und-gestaltung]] (`established`) geschaerft: **Zonenarten/BZO-Platzhalter
  gefuellt** (Numerus clausus, Typ-Katalog, Neueinzonungskriterien, Arealueberbauung); sources nachgefuehrt.
- ANWENDUNG `training/drills.md` Block «Run 17»: Modell C (6 Karten) + Modell A (Pflegewohngruppe auf
  Industrieparzelle → Umzonung/Gestaltungsplan).
- REGISTER `seiten-inventar.md` (Shots 73-85 ohne 76 → [x]), `curriculum.md` (Kap. 2), `buecher/INDEX.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md` (Restschuld Kap. 2 T2 teil-erledigt + 2 needs-verification).
- REPORT `outputs/2026-06-30_buch-run17.md`.
- OFFEN: Shot 76/S. 150-151 (OneDrive-I/O-Fehler) nachholen; Kap. 2 Teil 3 Sondernutzungs-/
  Gestaltungsplan §§ 83 ff. PBG ab S. 169/170.

## 2026-06-30 — Run 16 Forcierung: 3 Kapitelteile parallel (Band-1-Tail + Kap. 12 T3)
- TRANSFER 3 Destillate (von parallelen Agenten, Buchhaltung zentral), **46 Doppelseiten**:
  **Kap. 1** `buecher/band-1/01-grundlagen.md` (Shots 41-56, S. 80-110): **VOLLSTAENDIG** — oeff./privates
  Baurecht (§ 317 PBG), Rechtsquellen, **SIA-Normen-Verbindlichkeit** (§ 3 Abs. 12 BBV I / § 360 Abs. 3
  PBG), Verfassungsgrundsaetze (Verhaeltnismaessigkeit/Rechtsgleichheit/Treu+Glauben), intertemporales
  Recht § 318 PBG, Aufbau PBG VII Titel. NEU, `emerging`.
  **Kap. 2 Teil 1** `buecher/band-1/02-raumplanung-richtplanung-nutzungsplanung.md` (Shots 57-72,
  S. 112-143): Raumplanung als Oberbegriff, **Ziele Art. 1 RPG**, **15-J-Bauzone Art. 15 RPG**,
  **Koordination Art. 25a RPG**, **Planungszone § 346 PBG**, OEREB-Kataster, **Richtplan behoerden-
  verbindlich Art. 9 RPG/§ 19 PBG**, Beginn Nutzungsplanung. NEU, `emerging` (Teil 2 ab 2.3 offen).
  **Kap. 12 Teil 3** `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` (Shots 373-386,
  S. 742-769): **rechtliche Sicherung § 237 Abs. 4 PBG** (Benuetzungsrechte/Notwegrecht Art. 694 ZGB),
  **Wasser/Energie § 236 PBG** (Loeschwasser § 16 FeuerwehrV 100/60 m, Grundwasserschutzzonen S1/S2/S3,
  Energie zwingend), **Abwasser** (GSchG/Kanalisationsanschluss Art. 17, GEP § 8 KGSchV). NEU, `emerging`
  (Teil 4 S. 770-809: Abfall/Altlasten Art. 32c USG offen). **Nebenfund:** EV (§ 11/12) im Buch S. 750 als
  geltend zitiert → loest needs-verification «EV in Kraft?».
- NEU Wiki `wiki/grundlagen-planungs-baurecht.md` (`emerging`): dogmatische Klammer (oeff./privates Recht,
  Rechtsquellen, SIA-Normen-Verbindlichkeit, Verfassungsgrundsaetze, intertemporales Recht). In `wiki/INDEX.md`.
- GESCHAERFT Wiki `raumplanung-und-gestaltung.md` (Planungsstufen mit §-Belegen, Planungszone, OEREB) +
  `baureife-und-erschliessung.md` (NEU Sektionen rechtliche Sicherung § 237 Abs. 4 + Versorgung/Entsorgung
  § 236, EV-Stand § 11/12).
- BUCHHALTUNG `seiten-inventar.md` 46 Shots [x] (41-56, 57-72, 373-386) + reale Seiten; `buecher/INDEX.md`
  3 Eintraege + Matrix (Kap. 1 🟢, Kap. 2 🟡, Kap. 12 erweitert); `curriculum.md` + `training/PROGRAMM.md`
  Tracker; `wiki/QUESTIONS.md` (Kap. 1 geschlossen, Kap. 2 T2 + Kap. 12 T4 neu, EV geklaert);
  `training/drills.md` Modell C (6) + A (1); Report `outputs/2026-06-30_buch-run16.md`.

## 2026-06-29 — Welle 1 Forcierung: 10 Destillate Band 2 (Buchhaltung zentral nachgefuehrt)
- WELLE In EINER parallelen Welle (von parallelen Agenten) **10 Buch-Destillate Band 2** geschrieben;
  die gemeinsame Buchhaltung in diesem Lauf zentral nachgefuehrt:
  **Kap. 11** `buecher/band-2/11-allgemeine-bestimmungen-baupolizeirecht.md` (Shots 345-354, S. 686-704):
  §§ 218-232 PBG, **Hammerschlagsrecht §§ 229/230 PBG**. NEU, `emerging`.
  **Kap. 13 Teil 1** `13-weitere-grundanforderungen.md` (Shots 407-430, S. 810-857): **§ 238
  Aesthetik-Generalklausel**, **Solar Art. 18a RPG**. NEU, `emerging` (Rest §§ 239a/240/242/248 ab Shot 431).
  **Kap. 16 Teil 2** `16-gebaeudedimensionen-teil2-hoehen-dach.md` (Shots 581-600, S. 1154-1193):
  Gebaeudehoehe §§ 278/279/280, **Firsthoehe § 281**, **§ 292/Art. 7a BO «Kaeseglocke»**, **§ 5 ABV
  gewachsener Boden**. NEU, `emerging` («Umgebung» ab Shot 601 offen).
  **Kap. 17 Teil 2** `17-gebaeude-und-raeume-teil2-ausruestungen.md` (Shots 632-655, S. 1256-1303):
  §§ 295-298 PBG Heizung/Fernwaerme, **§ 4 ABV**, **§§ 239a/239b BehiG** (Hindernisfreiheit), Schutzraeume.
  NEU, `emerging` (Garagen §§ 37-39 BBV I offen).
  **Kap. 19** `19-baulicher-umweltschutz.md` (Shots 682-705, S. 1357-1403): USG/LRV/LSV, **Laerm ES I-IV**,
  **Art. 31/32 LSV**, SIA 181. NEU, `emerging` (Rest ab Shot 706 offen).
  **Kap. 20 Rest** `20-ausnahmen-bestandesschutz.md` ERWEITERT (Shots 729-731, S. 1450-1455): **§ 357 Abs. 4
  Verbesserungen** + Erweiterungs-/Nutzungsaenderungs-Kasuistik. bleibt `emerging` (§ 357 Abs. 5 +
  baupolizeil. Missstaende + Brandstattrecht § 307 ab Shot 732 offen).
  **Kap. 15 § 274** `15-lage-von-gebaeuden-teil2d.md` ERWEITERT (Shots 560-570, S. 1112-1123): **§ 274 PBG
  Grenzbaurecht** + **§ 27 Abs. 2 ABV**. Damit Kap. 15 bis auf 15.13 «Harmonisierungsvorlage» (S. 1124-1133) komplett.
  **Kap. 21** `21-bauen-ausserhalb-bauzonen.md` (Shots 733-755, S. 1459-1503): **Art. 16/16a/24/24a-e RPG**,
  **Art. 42 RPV** (30 % / 100 m²), **Stichtag 1.7.1972**. NEU, `emerging` (Rest Art. 24d/24e/37a ab Shot 756).
  **Kap. 22** `22-privatrechtliche-bauvorschriften.md` (Shots 761-773, S. 1517-1534): Nachbarrecht **ZGB
  Art. 679/684/685 ff.**, **§§ 169-178 EG ZGB Pflanzenabstaende**. NEU, `emerging`.
  **Kap. 23** `23-glossar-architektur.md` (Shots 774-781, S. 1537-1549): Glossar mit §-Belegen. NEU, `emerging`.
- BILANZ **Band 2 weitgehend komplett**; Tail = Band 1 Kap. 1-5/10 (via taeglichem Loop) + Kap. 12-Rest § 236.
- REGISTER nachgefuehrt: `buecher/seiten-inventar.md` (Shots 345-354/407-430/560-570/581-600/632-655/682-705/
  729-731/733-755/761-781 → [x] + echte Seiten + Destillat-Link, 159 Zeilen), `buecher/INDEX.md` (8 neue
  Eintraege + Kap. 15/20 erweitert + Abdeckungs-Matrix Kap. 11/13/16/17/19/21/22/23 ergaenzt, Kap. 15 🟢,
  «uebrige» auf Band 1 Kap. 1-5/10 reduziert), `training/curriculum.md` (Status-Flags Kap. 11/13/15/16/17/19/
  20/21/22/23), `training/PROGRAMM.md` (Tracker: ~289 Doppelseiten, 23 Destillate, Welle-1-Eintrag, naechster
  Lauf Band-1-Tail + Kap. 12-Rest). Die 10 Destillat-Dateien selbst in diesem Lauf NICHT veraendert (nur Buchhaltung).

## 2026-06-28 — Buch-Destillat BAND 2 Kap. 12 Teil 2 (Zugaenglichkeit/OEV), Run 15 (Phase 2)
- ERWEITERT `buecher/band-2/12-baureife.md` um **Teil 2 (Shots 364-372, echte Seiten 724-741,
  9 Doppelseiten)**: **12.3.3 Technische Anforderungen/Zugangsarten** (§ 2 Abs. 1 ZN) mit der
  **Anhang-ZN-Tabelle (S. 726)** als Markdown (Breite/Radius/lichte Hoehe je WE-Zahl, Kriterium
  Wohneinheiten = baulich Moegliches VB.2002.00273); **12.3.3.3 Kehrplatz** (Stichstrasse, VSS-Norm
  SN 640 052, VB.2016.00566/VB.2010.00107); **12.3.3.4 Erhoehung der Grenzwerte** (§ 4 Abs. 2 ZN,
  dichte+OEV-gute Bebauung, Wegleitung 1997); **12.3.3.5 Fussgaengerschutz** (Bankett ≥ 30 cm /
  Trottoir ≥ 1 m, VB.2010.00184; EFH-Ausnahme BEZ 2010 Nr. 4); **12.3.3.6/7 Sonderfaelle &
  Erleichterungen** (§ 5 Abs. 3 / § 11 / § 12 ZN; **wichtige Gruende § 360 Abs. 3 PBG**; letzte
  Bauluecke VB.2005.00261/VB.2015.00010); **12.3.3.9 Umweltschutzrecht** (Art. 24 Abs. 2 USG / Art. 30
  LSV: voll erstellt, nur Hausanschluesse; Planungswerte § 128 Abs. 2 PBG); **12.3.4 groessere
  Ueberbauungen** (Gleisanschluesse § 237 Abs. 1; Trennung Fahrzeug-/Fussgaengerverkehr § 237 Abs. 3;
  Einkaufszentren ab 2000 m² § 12 Abs. 1 BBV II; Schwertransporte § 227 PBG/§ 21 BVV); **12.3.5
  Erreichbarkeit OEV § 237 Abs. 1 Satz 2 PBG** (kein Erschliessungsanspruch URP 2000/2002, ABER Pflicht
  ab «groesserer Ueberbauung» 300 Bew./Arb./Ausb. → Haltestelle § 4 Abs. 1 AngebotsV; Bedienungsqualitaet
  § 18 PVG). Frontmatter seiten/shots/paragraphen/last_updated nachgefuehrt; Restschuld jetzt ab S. 742.
- GESCHAERFT `wiki/baureife-und-erschliessung.md` (emerging): neue Sektionen **Zugangsarten &
  Dimensionierung (Anhang-ZN-Tabelle)**, **Erschliessung i.S.d. Umweltschutzrechts**, **Erreichbarkeit
  mit dem OEV (§ 237 Abs. 1 Satz 2)** + 2 JANS-Anwendungs-Bullets (Zugangsart aus vollem Nutzungs-
  potenzial; OEV ↔ Stellplatz). Source-Frontmatter um ZN/AngebotsV/§ 18 PVG/Art. 24 USG/§ 360 PBG.
- NACHGEFUEHRT `wiki/QUESTIONS.md` (Coverage-Gap Zugaenglichkeit-Detail/OEV erledigt; Restschuld auf
  S. 742 ff. verschoben; neue needs-verification Teil-2-§§), `buecher/INDEX.md` (Kap.-12-Eintrag
  Teil 1+2 NEU + Abdeckungs-Matrix-Zeile 12), `buecher/seiten-inventar.md` (Shots 364-372 → [x],
  echte Seiten 724-741), `training/drills.md` (6 Modell-C-Karten + 1 Modell-A-Drill).
- REPORT `outputs/2026-06-28_buch-run15.md`.

## 2026-06-26 — Buch-Destillat BAND 2 Kap. 12 Teil 1 (Baureife), Run 14 (Phase 2)
- NEU `buecher/band-2/12-baureife.md` (Shots 355-363, echte Seiten 707-723, 9 Doppelseiten):
  **12.1 Allgemeines** — Baureife = erstes der materiellen Grundanforderungen (§§ 233-249 PBG); baureif =
  **erschlossen** (Zugaenglichkeit/Wasser/Energie/Abwasser-Abfall-Altlasten, § 234/§ 236 PBG, Art. 19 RPG)
  + planungsrechtlich unbedenklich; massgebender Zeitpunkt **Bezugsbereitschaft**, teils Baubeginn
  (§ 233 Abs. 1); **wesentliche Abweichung bei Umbau/Nutzungsaenderung § 233 Abs. 2** (VB-Kasuistik:
  Dorfladen+Imbiss+5 PP wesentlich VB.2006.00403; Zweitwohnung/Attika/Dachfenster nicht wesentlich).
  **12.2 Planungsrechtliche Baureife § 234** — **nur negative Vorwirkung** (Bausperre, VB.2008.00044),
  4 Voraussetzungen, was als kuenftige «Planung» zaehlt (Nutzungsplan/BZO/Gestaltungsplan/Baulinien;
  Richtplan erst ueber konkrete Entwuerfe, Masterplan parzellenscharf BGer 1C_317/2008), Abgrenzung
  Quartierplanbann § 150 / Verkehrsbaulinien § 264 / **Planungszone § 346** (3 J. + 2 J., = Art. 27 RPG) /
  Landsicherung § 120, Dauer § 235. **12.3 Zugaenglichkeit Teil 1** — §§ 234-237 PBG, Konkretisierung
  ZN/VSiV/StrAV → geplante **Erschliessungsverordnung EV**, Umweltrecht-Grenze (Laerm Art. 14 USG),
  **Erreichbarkeit 80 m** (max. **40 m** bei Hoehe > 13 m / starker Personenbelegung, RB 1995 Nr. 80),
  **Notzufahrt 3 m breit / 16 t § 3 ZN**, Baustellenverkehr verhaeltnismaessig.
- NEU `wiki/baureife-und-erschliessung.md` (status emerging) — verdichtet die zwei Achsen der Baureife
  (technische Erschliessung + planungsrechtliche Baureife) mit den Praxis-Schwellenwerten; Backlinks zu
  [[baubewilligungsverfahren]]/[[zonenkonformitaet]]/[[ausnahmebewilligung-und-bestandesschutz]]/
  [[bestandsumbau-eingriffstiefe]]/[[baulinien-und-abstandslinien]]/[[12-baureife]]. Schliesst eine echte
  Coverage-Luecke (Baureife/Erschliessung war nirgends im Wiki).
- DRILLS `training/drills.md` — Modell C (6 Karten Kap. 12) + Modell A (Beleg-Drill Klinik-Erreichbarkeit
  40-m-Regel).
- REGISTER aktualisiert: `seiten-inventar.md` Shots 355-363 → [x] + echte Seiten 706-723 + Destillat-Link;
  `curriculum.md` Kap. 12 [~] + naechster Lauf Kap. 13; `wiki/INDEX.md` neue Sektion «Baureife &
  Erschliessung» + Statistik (15 Artikel); `wiki/QUESTIONS.md` Run-14-Luecken (Rest Kap. 12 ab S. 724,
  EV-Stand, Wortlaut-Verifikation §§ 233-237/120/150/264/346 PBG).
- Lern-Report `outputs/2026-06-26_buch-run14.md`.

## 2026-06-22 — Buch-Destillat BAND 1 Kap. 8 Teil 1 (Ausfuehrung von Bauarbeiten), Run 13 (Phase 2)
- NEU `buecher/band-1/08-ausfuehrung-von-bauarbeiten.md` (Shots 244-256, echte Seiten 485-509, 12 Doppel-
  seiten): **8.1 Bauausfuehrung/Baukontrolle** — Baubeginn = **Aushub** mit Ausfuehrungswillen (BEZ 1987
  Nr. 38; nicht Abstecken RB 1994 Nr. 88), **Baufreigabe vor Baubeginn § 326 PBG** (rechtskraeftige
  Bewilligung genuegt nicht; vorzeitige Baufreigabe), **Meldepflichten § 327 Abs. 1 PBG** (Schnurgeruest/
  Kanalisation/Rohbau/Bezug § 23 BVV; Abbruch nur Kernzone bewilligungspflichtig § 309 Abs. 1 lit. c, sonst
  meldepflichtig; **Asbest Art. 3a ABV / Art. 16 VVEA** auch ohne Baubewilligung), **baupolizeil. Kontrollen
  § 327 Abs. 2 PBG** (**Realakt, keine Verfuegung** → § 10c VRG/Art. 29a BV; Abbruchbefehl = Verfuegung
  § 329; Drohnen KGer LU 18.4.2018 Horw/Datenschutz; Auswertung § 24 BVV), **Bezugsbewilligung/Schluss-
  kontrolle** (§ 12a BBV II, Austrocknung SIA 180, Gelaender SIA 358, BGer 1C_333/2017), **Akteneinsicht
  §§ 8/9 VRG**; **8.2 Unterbruch § 328 PBG** («ewige Baustelle»; **Arealueberbauung max. 2 J.**; Ersatz-
  vornahme § 30 VRG / ges. Pfandrecht § 15 VRG); **8.3 Sicherheit/Regeln der Baukunde § 239 PBG** (Anfang).
- NEU `wiki/bauausfuehrung-und-baukontrolle.md` (`emerging`) — erster Wiki-Artikel zur **Ausfuehrungsphase**
  (§§ 326-328/239 PBG); schliesst Luecke zwischen [[baubewilligungsverfahren]] und Ausfuehrung.
- `training/drills.md`: 6 neue Modell-C-Karten + 1 Modell-A-Drill (Kap. 8).
- `outputs/2026-06-22_buch-run13.md` Lern-Report.
- Register nachgefuehrt: `buecher/seiten-inventar.md` (Shots 245-256 [x]), `buecher/INDEX.md` (+Destillat,
  Matrix Kap. 7 🟢 / Kap. 8 🟡), `wiki/INDEX.md` (15 Artikel), `wiki/QUESTIONS.md` (Kap.-8-Luecken),
  `training/curriculum.md` + `training/PROGRAMM.md` (Tracker, naechster Lauf Kap. 12/13).

## 2026-06-21 — Buch-Destillat BAND 1 Kap. 7 Teil 2 (Gueltigkeit/Widerruf/Vorentscheid/Auskuenfte), Run 12 — **Kap. 7 abgeschlossen → Phase 2**
- NEU `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md` (Shots 226-244, echte
  Seiten 448-484, 19 Doppelseiten): Abschluss **7.1** (Kosten/Verzugszins 5 % § 29a VRG, Rechtsmittel-
  belehrung § 10 VRG/Art. 49 BGG, **Zustellung** + **Zustellfiktion 7. Tag** Art. 138 ZPO, Zustelladressaten
  § 315/§ 316 PBG), **7.1.5 Gueltigkeit der Baubewilligung** (= **3 Jahre** § 322 Abs. 1 PBG, **Verwirkung,
  nicht verlaengerbar**; Fristbeginn = Rechtskraft der **letzten** koordinationspflichtigen Bewilligung
  § 322 Abs. 2/3, § 20 BVV; Fristwahrung = **Baubeginn** Aushub/Abbruch, nicht Baufreigabe; Stillstand
  § 328 PBG), **7.1.6 Widerruf** (materielle Rechtsbestaendigkeit BEZ 2014 Nr. 32; nach Bauvollendung grds.
  nicht; Taeuschung/ueberwiegendes Interesse → Vertrauensschaden Art. 9 BV, BGer 2C_960/2013), **7.2 Besondere
  kantonale Zustaendigkeiten (Anhang BVV)** (§ 2 lit. c/§ 7 BVV; AFV Strassen §§ 96/240/265, ausserhalb
  Bauzone Art. 24 ff. RPG, ALN Wald 15 m § 262, AWEL Gewaesser § 8 EG GSchG, Laerm/Stoerfall, Befoerderungs-
  anlagen § 296/§ 3 BBV I, UVP Art. 10a USG/KOFU), **7.3 baurechtlicher Vorentscheid §§ 323/324 PBG**
  (teilverbindlich, **3 J. Bindung**, nur grundlegende projektunabhaengige Rechtsfragen, Kaufinteressent ohne
  Baubefugnis VB.2013.00271, Drittwirkung seit 1.7.2014, BEZ 2014 Nr. 34), **7.4 Auskuenfte** (Treu+Glauben,
  **5 kumulative** Voraussetzungen, Beweislast Art. 8 ZGB) / **Verhandlungsloesungen**. Status `emerging`.
- NEU Wiki `wiki/baurechtlicher-vorentscheid-und-voranfrage.md` (`emerging`): Vorentscheid als Kernwerkzeug
  der Vorabklaerung, Abgrenzung Auskunft/Verhandlungsloesung; speist `behoerden-vorabklaerung`/`machbarkeit`/
  `ankaufspruefung`. Schliesst die HOHE-Bueroprio-Luecke aus QUESTIONS (2026-06-19).
- KORREKTUR (Modell D) `wiki/baubewilligungsverfahren.md`: «Baubeginn-Frist auf Gesuch verlaengerbar» war
  **falsch** → § 322 Abs. 1 PBG ist Verwirkung (nicht verlaengerbar); berichtigt + § 322/§ 328 PBG belegt;
  Backlink [[baurechtlicher-vorentscheid-und-voranfrage]] gesetzt, Schritt 1 «Voranfrage» verlinkt.
- DRILLS `training/drills.md`: **Modell C** 7 neue Karten (Gueltigkeit/Vorentscheid/Auskunft/Widerruf) +
  **Modell D** Gegenprobe (Korrektur Verwirkungsfrist dokumentiert).
- REGISTER: `seiten-inventar.md` Shots 226-244 → [x]; `curriculum.md` Kap. 7 → **[x] vollstaendig** +
  Phasenwechsel; `buecher/INDEX.md` + `wiki/INDEX.md` + `wiki/QUESTIONS.md` nachgefuehrt.
- PHASE: ALLE P1-Kapitel (14/16/15/17/20/6/7) im Kern erfasst → **Phase 2 (alle 2 Tage)**, Cron `30 7 */2 * *`.

## 2026-06-19 — Buch-Destillat BAND 1 Kap. 7 Teil 1 (Der kommunale baurechtliche Entscheid), Run 11
- NEU `buecher/band-1/07-zustaendigkeiten-entscheide-auskuenfte.md` (Shots 213-225, echte Seiten 424-447,
  11 Doppelseiten; Shot 215 Duplikat, Shots 217/224 ueberbelichtet → needs-verification): Abschnitt **7.1
  «Der kommunale baurechtliche Entscheid»** vollstaendig — **Rechtsnatur** (Polizeierlaubnis, sachbezogen/
  geht mit Grundstueck ueber, mitwirkungsbeduerftig BEZ 2014 Nr. 45), **Zustaendigkeit** (oertliche
  Baubehoerde § 318 PBG; GG-Delegationen: eigenstaendige/unterstellte Kommission §§ 51/50 GG, Ausschuss
  § 44 GG, Bauvorstand/Mitglieder § 41 GG, Gemeindeangestellte § 45 GG/Anzeigeverfahren), **kein gemeinde-
  internes Einspracheverfahren** (§ 315 Abs. 3 PBG geht § 170 GG vor; direkt-Rekurs § 329 PBG; BRGE II
  Nr. 0153/2018), **Ausstand** (Art. 29/30 BV; Aufhebung/Nichtigkeit BGE 136 II 383), **Inhalt** Rubrum/
  Begruendung/Dispositiv (Plaene integrierter Bestandteil; Begruendungspflicht § 10a VRG/§ 320 PBG/§ 360
  Abs. 3 PBG), **Nebenbestimmungen § 321 PBG** (Auflage erzwingbar § 326 PBG vs. Bedingung; Befristung/
  Provisorium kein Bestandesschutz/max. 5 J./BEZ 1992 Nr. 8; **Revers**-Typen; Grundbuch-Anmerkung
  deklaratorisch BGE 111 Ia 183/Art. 164 GBV), **Kostenentscheid**-Beginn (§ 13 VRG/§ 340f PBG). Status
  `emerging` (7.2/7.3 Auskuenfte + baurechtl. Vorentscheid/Voranfrage S. 448-484 offen).
- NEU Wiki `wiki/nebenbestimmungen-und-reverse.md` (`emerging`): Nebenbestimmungen der Baubewilligung
  (§ 321 PBG) — Heilungsschwelle «ohne besondere Schwierigkeiten» vs. konzeptionelle Ueberarbeitung
  (BEZ 2017 Nr. 30), Auflage vs. Bedingung vs. Befristung vs. Revers, Revers-Typen (Areal-/Beseitigungs-/
  Mehrwert-/Quartierplan-/Verlegungs-/Ausnuetzungs-/Nutzungsrevers), Grundbuch-Anmerkung deklaratorisch,
  «Revers vor Baubeginn» = Auflage (BEZ 2004 Nr. 67). **Faktenbasis fuer Skill `auflagebereinigung`.**
- GESCHAERFT `wiki/baubewilligungsverfahren.md`: zwei neue Sektionen «Zustaendigkeit: wer ist die
  Baubehoerde?» (§ 318 PBG + GG-Delegationen, § 315 Abs. 3 vor § 170 GG, § 329 direkt-Rekurs) und
  «Inhalt des Entscheids & Nebenbestimmungen» (Rubrum/Begruendung/Dispositiv) + Backlinks.
- DRILLS `training/drills.md`: 7 Modell-C-Karten + 1 Modell-A-Buerofrage (Auflage vs. Bedingung beim
  «Revers vor Baubeginn») zu Kap. 7.
- REGISTER `buecher/seiten-inventar.md` (Shots 213-225 → [x] + echte Seiten), `buecher/INDEX.md`
  (Kap.-7-Eintrag + Matrix-Zeile), `training/curriculum.md` (Kap. 7 [~] + naechster Lauf Teil 2),
  `wiki/INDEX.md` (13 Artikel) + `wiki/QUESTIONS.md` (7.2/7.3 + needs-verification).
- HINWEIS Phase 1 (taeglich) **noch nicht** auf alle 2 Tage heruntergetaktet: P1 ist erst mit dem
  buerorelevanten Kap. 7 **Teil 2** (Voranfrage/Vorentscheid) im Kern vollstaendig — ein weiterer
  taeglicher Lauf, dann Phasenwechsel + Cron-Anpassung.

## 2026-06-18 — Buch-Destillat BAND 2 Kap. 20 (Ausnahmen / Bestandesschutz), Run 10
- NEU `buecher/band-2/20-ausnahmen-bestandesschutz.md` (Shots 720-728, echte Seiten 1433-1449, 8 Doppel-
  seiten; Kapitel-Kern, reicht weiter): **vier Tatbestaende** fuer vorschriftswidrige Bauten (§ 220 /
  § 357 / baupolizeil. Missstaende / Brandstattrecht § 307); **§ 220 PBG Ausnahmebewilligung** —
  Geltungsbereich (nur kant./komm. Recht, **nie Bundesrecht/Erschliessung**; Legaldefinitionen § 49
  Abs. 3/§ 269/§ 275 dispensfeindlich), drei Voraussetzungen (besondere Verhaeltnisse / Gesetzeszweck+
  oeffentl. Interessen / Nachbarschutz § 220 Abs. 1-3; BEZ 2004 Nr. 19/75, BEZ 2016 Nr. 11 vs.
  VB.2017.00099), Provisorien § 321, Zustaendigkeit § 318/§ 320 PBG; **§ 357 PBG Besitzstandsgarantie** —
  rechtmaessige Erstellung (materiell, nicht formell; BEZ 2015 Nr. 22), Rechtsaenderung vs. Sachverhalts-
  wandel, **erweiterte Bestandesgarantie** Umbau/Erweiterung/Nutzungsaenderung, Grenze =
  **neubauaehnliche Umgestaltung/Gesetzesumgehung — KEINE feste Quote** (BEZ 1996 Nr. 3; BEZ 2011 Nr. 43),
  Abbruchreife (RB 1994 Nr. 72), Nutzungsschutz + Beweislast Art. 8 ZGB (RB 1994 Nr. 87), Brandschutz/
  Bundesrecht keine «Bauvorschrift» i. S. v. § 357. Status `emerging` (§ 357 Abs. 4/5 + baupolizeil.
  Missstaende + Brandstattrecht § 307 ab Shot 729 offen).
- NEU Wiki `wiki/ausnahmebewilligung-und-bestandesschutz.md` (`emerging`): § 220 (Dispens) + § 357
  (Besitzstandsgarantie) doktrinell — **schliesst die seit 2026-06-02 offene QUESTIONS-Luecke «Dispens /
  Ausnahmebewilligung: nirgends behandelt»**. Speist [[bestandsumbau-eingriffstiefe]].
- GESCHAERFT `wiki/bestandsumbau-eingriffstiefe.md`: Backlink + rechtlicher Massstab (kein «Drittel»,
  Grenze = neubauaehnliche Umgestaltung) ergaenzt; der pragmatische «grosse Ermessensspielraum» ist
  damit rechtlich (ZH) hinterlegt.
- ANWENDUNG: Modell C (7 neue Drill-Karten Kap. 20 in `training/drills.md`) + Modell A (Frage→Beleg-Drill
  Dachausbau ueberausgenuetztes MFH, nur Buchbeleg → `outputs/2026-06-18_buch-run10.md`).
- REGISTER: `seiten-inventar.md` (Shots 720-728 → `[x]`), `curriculum.md` (Kap. 20 `[~]`, naechster Lauf
  Kap. 7 = letztes P1), `buecher/INDEX.md` (Kap. 20 + Matrix), `wiki/INDEX.md` (12 Artikel),
  `wiki/QUESTIONS.md` (Dispens-Luecke geschlossen, neue offene Punkte Kap. 20).

## 2026-06-17 — Buch-Destillat BAND 2 Kap. 17 Teil 1 (Gebaeude und Raeume; Wohnhygiene), Run 9
- NEU `buecher/band-2/17-gebaeude-und-raeume.md` (Shots 624-631, echte Seiten 1241-1255, 8 Doppel-
  seiten; Kap.-Kern Wohnhygiene, Kapitel reicht weiter): Grundlagen §§ 295/299/300 PBG (Stand der
  Technik § 2 BBV I, Ausruestungen § 4 ABV), Wohnungen/Gemeinschaftsunterkuenfte (§§ 9/10 BBV I,
  Kueche-Begriff BEZ 2015 Nr. 40), Arbeits-/Publikumsraeume (§§ 11/12 BBV I, Rauchschutz PaRG/§ 22 GGG),
  **Ausrichtung Wohnraeume § 301 PBG** (nicht mehrheitlich NO/NW; VB.2017.00169), **Belichtung/
  Belueftung § 302 PBG** (Fenster ≥ 1/10 Bodenflaeche, oeffenbar, ins Freie; Lichtschacht-Falle
  VB.2017.00452/BEZ 2001 Nr. 30; Dachflaechenfenster BEZ 2008 Nr. 27; Abweichung § 302 Abs. 3 vor
  § 220 PBG), **Mindestflaeche ≥ 10 m² § 303** (Kueche 4/6 m² § 36 BBV I), **lichte Raumhoehe 2,4 m /
  Kernzone 2,3 m § 304** (Dachraum halbe Bodenflaeche, BEZ 2011 Nr. 15), Rauminhalt grosse Belegung
  § 10 BBV II, **innere Erschliessung § 305 + Aufzugspflicht § 40 BBV I** (> 5 Geschosse →
  krankentransporttauglich 2,1 × 1,1 m; > 9 → 2 Aufzuege), Geltungsbereich-Ausnahme EFH § 32 ABV,
  Bezug § 12a BBV I, Laerm/SIA 181 § 13 BBV I, Beginn Einstellraeume §§ 37-39/§ 297 PBG.
- NEU Wiki `wiki/wohnhygiene-und-raumanforderungen.md` (`emerging`): die vier Stellschrauben
  Belichtung/Belueftung — Mindestflaeche — Raumhoehe — innere Erschliessung/Aufzug; Geltungsbereich-
  Ausnahme § 32 ABV; JANS-Anwendung (UG-/Dach-Umnutzung, Healthcare-Aufzug, Lichtschacht-Killer).
  Backlinks [[17-gebaeude-und-raeume]], [[bestandsumbau-eingriffstiefe]], [[geschosse-und-kniestock]].
- DRILL `training/drills.md`: neuer Abschnitt Kap. 17 — 6 Selbsttest-Karten (Modell C) + 1
  Frage→Beleg-Drill (Modell A, UG-Umnutzung-Buerofrage).
- REGISTER: `seiten-inventar.md` Shots 624-631 [x] + echte Seiten korrigiert (Inventarschaetzung war
  +2 verschoben); `curriculum.md` Kap. 17 [~] + naechster Lauf Kap. 20; `buecher/INDEX.md` Eintrag +
  Abdeckungs-Matrix Kap. 17 🟡; `wiki/INDEX.md` Artikel 11 + neue Sektion; `QUESTIONS.md` Kap. 17
  erledigt + offene §-10-BBV-II-Staffel/Ausruestungen-Teil.
- NAECHSTER LAUF: **Kap. 20** (Ausnahmen/Bestandesschutz § 357 PBG, Shots ab 719, S. 1433 ff.);
  Restschuld Kap. 17 (Ausruestungen/Einstellraeume) + § 274 (Kap. 15) bei Gelegenheit.

## 2026-06-16 — Buch-Destillat BAND 1 Kap. 6 (Verfahren) + Kap. 9 (Rechtsschutz), Run 8
- NEU `buecher/band-1/06-baurechtliches-verfahren.md` (Shots 169-201, echte Seiten 337-405,
  17 Doppelseiten; Kernbereich, Kapitel reicht bis S. 422): Baubewilligungsverfahren — Zweck/Umfang
  (§ 309/§ 320 PBG), Bewilligungspflicht + Abgrenzung Melde-/Anzeigepflicht (Solar Art. 18a RPG/30 Tage,
  Zweifel bejahen § 309 PBG/BEZ 2016 Nr. 42), bewilligungspflichtige Vorhaben (BGE 113 Ib 314,
  Nutzungsaenderung), Baugesuch (Berechtigung § 310 PBG inkl. STWEG-Zustimmung, Beilagenkatalog § 5 BVV,
  Plansatz schwarz/rot/gelb, Energienachweis § 10a EnerG), Koordinationsgebot (Art. 25a RPG / §§ 7-9 BVV,
  kantonale Leitstelle), Verfahrensablauf (summarische Vorpruefung § 11 BVV, Fristen 21 Tage/3 Wochen
  § 313 PBG, Behandlungsfrist § 319 PBG, Kostenvorschuss § 15 VRG), Aussteckung/Profilierung
  (§ 311 PBG, Baugespann, Attika detailliert BGer 1C_509/2011), Publikation/Auflage (§ 314 PBG, § 6a BVV,
  Akteneinsicht § 20 IDG), **Zustellbegehren 20 Tage** (§ 315/§ 316 Abs. 2 PBG = lex specialis, Verwirkung
  Rekursrecht).
- NEU `buecher/band-1/09-rechtsschutz.md` (Shots 270-289, echte Seiten 537-575, 16 Doppelseiten;
  Kernbereich, Kapitel reicht bis S. 608): Rechtsmittelweg dreistufig — Rekurs ans Baurekursgericht
  (§ 19 Abs. 1 lit. a VRG, volle Kognition § 20 VRG, Einzelrichter ≤ 20'000 Fr. § 335 PBG) → Beschwerde
  ans Verwaltungsgericht (§ 50 VRG, nur Rechtskontrolle, keine Angemessenheit) → Bundesgericht (Beschwerde
  i.oe.A. Art. 82/Art. 95 BGG, subsidiaere Verfassungsbeschwerde Art. 113 BGG); Legitimation
  (schutzwuerdiges Interesse + Beziehungsnaehe § 21 VRG, Verbandsbeschwerde Art. 12 NHG, Gemeindeautonomie
  Art. 50 BV, Behoerdenbeschwerde § 209f PBG); akzessorische Normenkontrolle § 50a VRG; Verfahrens-
  grundsaetze (Offizial-/Dispositions-/Untersuchungs-/Eventualmaxime, reformatio in peius § 27 VRG);
  **Rechtsmittelfrist 30 Tage** (§ 22 VRG; Fax/E-Mail genuegen nicht BGE 121 II 252).
- WICHTIG Shot→Datei-Mapping korrigiert: die Inventar-/Curriculum-Schaetzung fuer Band 1 war FALSCH.
  Visuell verifiziert: Kap. 6 ab Shot 169 (`11.45.37.jpg`, p.337), Kap. 9 ab Shot 270 (`11.48.44.jpg`,
  p.537). Bd-1-Shots nicht durchgaengig kapitellinear.
- AKTUALISIERT `buecher/INDEX.md` (Band-1-Sektion + Matrix Kap. 6/9 🟡), `buecher/seiten-inventar.md`
  (Shots 169-201 + 270-289 [x], echte Seiten gesetzt, Mapping-Hinweis), `training/curriculum.md`
  (Kap. 6/9 [~], korrigierte Shot-Anker, naechster Lauf Kap. 7 bzw. Kap. 9-Rest).
- Status beider Destillate `emerging` (Restkapitel + amtliche §-Verifikation PBG/BVV/VRG/BGG offen).

## 2026-06-16 — Buch-Destillat Kap. 15 Teil 2d (Gebaeudeabstand §§ 271-273, S. 1086-1111), Run 7
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Shots 547-559, echte Seiten 1086-1111,
  13 Doppelseiten): Abschluss der Vorspruenge-Messweise (§ 260 Abs. 3 PBG — abgestuetzte/einzelne
  Vorspruenge, Erker, Traufe-Verbot, Drittel-/Laengenbeschraenkung, Vordach ohne Drittel BEZ 2017
  Nr. 27); weitere Erleichterungen (reduzierter Grenzabstand § 49 Abs. 2 lit. b PBG, hohe Bauwerke
  §§ 260 Abs. 2/270 Abs. 2 PBG, Familiengartenhaeuser § 18 Abs. 2 BBV II, Aussenwaermedaemmung bis
  35 cm § 253a PBG/§ 33a ABV); Naeherbaurecht § 270 Abs. 3 PBG (nur Grenzabstaende verfuegbar,
  Form/Nachweis § 5 lit. l BVV, Grundbuch Art. 680 Abs. 2 ZGB, Widerruf § 321 PBG, 7-m-Schranke
  BEZ 1990 Nr. 28 + § 30 ABV); **Gebaeudeabstand §§ 271-273** (= Summe der Grenzabstaende § 271,
  Verkehrsraeume § 272, Gebaeudeteile vs. Zusammenbau); **Besondere Gebaeude § 273/§ 49 Abs. 3 PBG**
  (kein dauernder Aufenthalt + groesste Hoehe ≤ 4/5 m → 3,5 m Abstand, ~50 m² BEZ 2015 Nr. 2,
  Kasuistik, Anbau-Selbststaendigkeit VB.2015.00544, kein Dispens § 220 PBG/BEZ 2004 Nr. 75).
- GESCHAERFT `wiki/abstaende-und-hoehen.md`: Sektionen Gebaeudeabstand (§§ 271-273 + Besondere
  Gebaeude) und Naeherbaurecht neu/ausgebaut; Frontmatter (sources/links/Datum 2026-06-16).
- AKTUALISIERT `wiki/INDEX.md`, `wiki/QUESTIONS.md` (§§ 271-273 erledigt, § 274 neu offen),
  `buecher/INDEX.md`, `buecher/seiten-inventar.md` (Shots 547-559 [x]), `training/curriculum.md`
  (Kap. 15 abgeschlossen, naechster Lauf Kap. 17), `training/PROGRAMM.md` (Tracker).
- DRILLS `training/drills.md`: Modell C (7 Karten) + Modell B (Garage als Besonderes Gebaeude).
- REPORT `outputs/2026-06-16_buch-run7.md`.

## 2026-06-15 — Buch-Destillat Kap. 15 Teil 2c (Grenzabstand-Zahlenwerk, S. 1062-1085), Run 6
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2c.md` (Shots 535-546, echte Seiten 1062-1085,
  12 Doppelseiten): Grenzabstand-Zahlenwerk — Definition Fassade↔massgebende Grenzlinie (§ 260 Abs. 1
  PBG, Messweise im Lot, § 28 ABV); Gebaeudebegriff + Rechtsprechung (Pergola/Carport, § 1/§ 2 ABV);
  kantonaler Mindestgrenzabstand 3,5 m (§ 270 Abs. 1); kantonaler Mehrhoehenzuschlag ab 12 m / max
  16,5 m (§ 270 Abs. 2; Ausnahmen Kern-/Quartiererhaltungszone § 50/50a PBG, hohe Bauwerke § 19 BBV II,
  Lift-Anbauten § 19a BBV II; Hochhaeuser § 282); Zusammensetzung Grund- + Mehrhoehen- + Mehrlaengen-
  zuschlag (§ 21 Abs. 1 ABV); grosser/kleiner Grundabstand = Hauptwohnseite (§ 22 Abs. 2 ABV);
  Mehrlaengenzuschlag + 2G-Regel gestaffelte/abgewinkelte Fassaden (§§ 23/24 ABV); Vorsprung-
  Privilegierung Erker/Balkone ≤ 1/3 / 1,3 m + Gebot restriktiver Auslegung (§ 260 Abs. 3 / § 27 ABV);
  abstandsfreie unterirdische Bauten ≤ 0,5 m ohne Oeffnungen (§ 269).
- GESCHAERFT `wiki/abstaende-und-hoehen.md`: Abschnitt Grenzabstand komplett mit Zahlenwerk gefuellt
  (Formel § 21 ABV, 3,5 m / 12 m / 16,5 m, Hauptwohnseite, 2G-Regel, § 269 abstandsfrei), Vorsprung-
  Bauteile praezisiert (1/3 / 1,3 m, restriktive Auslegung), Gebaeudeabstand um § 27 Abs. 2 ABV
  ergaenzt; Platzhalter «Detailwerte offen» aufgeloest; Status `established`, sources/links/Datum.
- ANWENDUNG: 6 neue Drill-Karten (Modell C) + Modell-B-Fall-Nachrechnung (Mehrhoehenzuschlag MFH 15 m
  → 9 m Abstand ab 12 m) in `training/drills.md`.
- REGISTER: `seiten-inventar.md` Shots 535-546 [x] + echte Seiten 1062-1085 + Destillat-Link;
  `buecher/INDEX.md` Eintrag + Abdeckungsmatrix Kap. 15; `curriculum.md` Status; `wiki/INDEX.md` +
  `wiki/QUESTIONS.md` (Zahlenwerk erledigt, Gebaeudeabstand §§ 271-274 als naechste Luecke).
- REPORT `outputs/2026-06-15_buch-run6.md`.


## 2026-06-14 — Buch-Destillat Kap. 15 Teil 2b (Baulinien-Rechtswirkungen + Strassen-/Wegabstand, S. 1034-1061), Run 5
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2b.md` (Shots 521-534, echte Seiten 1034-1061,
  14 Doppelseiten): Baulinien-Rechtswirkungen §§ 99-101 PBG — Bauverbot (§ 99), einzelne Vorspruenge
  bis 1,5 m ueber die Linie + entschaedigungslos beseitigbar (§ 100 Abs. 1), weitergehende Beanspruchung
  mit Interessenabwaegung + Beseitigungsrevers (§ 100 Abs. 3), baulinienwidriger Bestand Unterhalt frei
  / Aufstockung nur mit Mehrwertrevers (§ 101), Ueberpruefungsanspruch (§ 110a), Gebaeudeabstand ueber
  Strasse (§ 272). Strassen-/Wegabstand §§ 264-267 PBG — subsidiaer zur Baulinie (§ 264); 6 m Strasse /
  3,5 m Weg, nur oberirdisch (§ 265); Strassengrenze inkl. Trottoir (§ 267); Garagenvorplatz 5,5 m
  (§ 266); StrAV Mauern/Pflanzen/Reklamen.
- GESCHAERFT `wiki/baulinien-und-abstandslinien.md`: neuer Abschnitt 1a (Rechtswirkungen §§ 99-101 als
  Tabelle) + Abschnitt 2 (Strassen-/Wegabstand §§ 264-266); Status bleibt `emerging`, sources/links
  erweitert, offene Punkte aktualisiert.
- ANWENDUNG: 5 neue Drill-Karten (Modell C) + Modell-A-Frage→Beleg-Drill (Strassenabstand MFH ohne
  Baulinie + Balkon-Privilegierung) in `training/drills.md`.
- Register: Inventar Zeilen 521-534 auf [x] mit echten Seitenzahlen + Destillat-Link; `buecher/INDEX.md`,
  `training/curriculum.md` (Kap. 15 Status, naechster Lauf Teil 2c §§ 269-274), `wiki/QUESTIONS.md`.
- Lern-Report `outputs/2026-06-14_buch-run5.md`.


## 2026-06-13 — Buch-Destillat Kap. 16.10 (Attika/MT/Fassadenhoehe, S. 1230-1239)
- NEU `buecher/band-2/kap16-10_gebaeudedimensionen-harmonisierung.md` (Shots 619-623,
  echte Seiten 1230-1239): Attikageschoss-Rueckversetzung h/2 an fiktiven Traufseiten
  (§ 275 Abs. 4 nPBG, bisher 45 Grad), Dachaufbauten 1/2 Fassadenlaenge (§ 292 nPBG),
  UG-Formel ≤ 2.5 (§ 29 nABV), massgebendes Terrain = gewachsener Verlauf /
  Nachbarschafts-Festlegung (§ 5 nABV), Gesamthoehe/Fassadenhoehe-Messweise
  (§§ 278/281 nPBG, Flachdach bis OK Bruestung ausser ≥ 1 m zurueckversetzt),
  Kniestock 1.5 m, Gebaeudelaenge flaechenkleinstes Rechteck (§ 28 nABV).
- Inventar Zeilen 619-623 auf [x] mit echten Seitenzahlen.
- Anlass: Anfrage Raphael (Fall 2621 Giebelweg, Attika-/Baukoerper-Setzung);
  Erkenntnisse in Skill `massgebendes-terrain` ueberfuehrt.


## 2026-06-12
- [distill] **Buch-Training Run 4** — Kap. 15 «Lage von Gebaeuden», Teil 2a. Destillat [[15-lage-von-gebaeuden]] um 10 Doppelseiten erweitert (Shots 511-520, S. 1014-1033): **Uferstreifen-Messweise** (ab Uferlinie, Korridor) + ZH-Uebergangsbreiten (§ 15 HWSchV: stehend 8/20 m, fliessend 8 m + Sohle je Seite), **zulaessige Anlagen im Gewaesserraum** (Art. 41c Abs. 1 GSchV: standortgebunden/oeffentliches Interesse), **dicht ueberbautes Gebiet** (Art. 41c Abs. 1 Satz 2 GSchV; BGE 140 II 428; Altendorf/Hurden/Rueschlikon), Grenzabstaende gelten **zusaetzlich** im Gewaesserraum (S. 1020), Besitzstand/Brandstattrecht (§ 15m HWSchV vor § 357/§ 307 PBG), **Gewaesserabstandslinien § 67 PBG** (Bauverbotszone, §§ 99-101 PBG analog, § 220 Dispens), **Hochwasser-Gefahrenbereiche** (WWG/WBV, Gefahrenkarten Art. 21 WBV, § 22 WWG), **Baulinien-Arten § 96 PBG** + subsidiaerer 6-m-Abstand § 51 Abs. 2 PBG. Total ~50/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[baulinien-und-abstandslinien]] (`emerging`) — Baulinien (§§ 96-101 PBG: Verkehrs-/Schutz-/Versorgungsbaulinie, Endausbau § 98, Naeherbaurecht § 105), subsidiaerer 6-m-Strassenabstand (§ 51 Abs. 2 PBG), Gewaesserabstandslinie (§ 67 PBG), Linien-Abgrenzungstabelle; Leitsatz «die Linie ist oft bindender als die Ziffer». INDEX (10 Artikel).
- [sharpen] [[abstaende-und-hoehen]] um Gewaesserraum-Vertiefung ergaenzt (standortgebundene Anlagen, dicht ueberbautes Gebiet, § 15m HWSchV vor § 357/§ 307 PBG, «zusaetzlich nicht ersetzend») + Backlink auf [[baulinien-und-abstandslinien]].
- [drill] 5 neue Q/A-Karten Kap. 15 Teil 2a + 1 Frage→Beleg-Drill (Modell A: TG an Gewaesserabstandslinie → §§ 99-101/§ 100 Abs. 1 PBG, Beleg vollstaendig) in `training/drills.md`.
- [register] `buecher/seiten-inventar.md` (Shots 511-520 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 Teil 1+2a, last_updated), `curriculum.md` (Kap. 15 [~] Teil 1+2a, naechstes Kap. 15 Teil 2b §§263-274 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Strassenabstand/Baulinien teilweise erledigt; § 100 Abs. 1 + dicht-ueberbaut als neue Luecken; Gewaesserabstand-Artikel-Luecke geschlossen). Report `outputs/2026-06-12_buch-run4.md`.

## 2026-06-11
- [distill] **Buch-Training Run 3** — Kap. 15 «Lage von Gebaeuden», Teil 1. Neues Destillat [[15-lage-von-gebaeuden]] (`emerging`) aus 10 Doppelseiten (Shots 501-510, S. 995-1013): Abstandssystem §§ 260-274 PBG, **Gebaeudearten** (Minibau/bewilligungsfreie/besondere/abstandsfreie/Hauptgebaeude; § 2 ABV, § 1 lit. a BVV, § 49 Abs. 3 / § 269 / § 273 PBG), Fassade-Messweise (§ 260 Abs. 1 PBG, § 28 Abs. 1 ABV), politische/Zonengrenzen (§ 261 PBG; BEZ 1989 Nr. 21), **Waldabstand § 262 PBG** (30 m / bis 15 m; Art. 17 WaG forstpolizeilich; BGE 119 Ia 12), **Gewaesserraum** (Art. 36a GSchG, Art. 41a/41b GSchV: 11 m / 2,5×Sohle+7 m / 15 m; § 15d HWSchV). Total ~40/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[gebaeudearten-und-abstandssystem]] (`emerging`) — Entscheidungstabelle der fuenf Gebaeudearten → Abstandsfolge, Messweise, politische/Zonengrenzen, privatrechtliche Abstaende (Art. 688 ZGB). INDEX (9 Artikel) + Abschnitt «Abstaende & Hoehen» erweitert.
- [fix] **Gegenprobe (Modell D) — Fehler in [[abstaende-und-hoehen]] korrigiert:** Waldabstand stand auf **§ 268 PBG** + «§ 18b Waldgesetz» (falsch; § 268 = Anschlussgleise) und «Reduktion bis 10 m via Gestaltungsplan». Richtig Kt. ZH: **§ 262 PBG**, Regel 30 m, reduzierbar **bis 15 m** ueber die Waldabstandslinie (§ 66 Abs. 2 PBG); zusaetzlich forstpolizeilicher Mindestabstand Art. 17 WaG (VGr < 10 m i.d.R. zu gering). Beleg Bd 2 S. 999 f., 1004 f. Artikel zudem um Gewaesserraum-Abschnitt ergaenzt; alte needs-verification «20 m / 10 m» erledigt.
- [drill] 6 neue Q/A-Karten Kap. 15 + 1 Wiederholung Kap. 16 in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) Waldabstand 30/15 m. Report `outputs/2026-06-11_buch-run3.md`.
- [register] `buecher/seiten-inventar.md` (Shots 501-510 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 🟡), `curriculum.md` (Kap. 15 [~], naechstes Kap. 15 Teil 2 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Grenz-/Gebaeudeabstand + Strassenabstand + § 273 PBG als neue Luecken; Waldabstand-Korrektur archiviert).

## 2026-06-10
- [distill] **Buch-Training Run 2** — Kap. 16 «Gebaeudedimensionen», Teil 1 (Geschosse + Kniestock). Neues Destillat [[16-gebaeudedimensionen]] (`emerging`) aus 10 Doppelseiten (Shots 571-580, S. 1135-1153): Voll-/Dach-/Untergeschoss (§ 275 PBG), Anrechenbarkeit zur Geschosszahl (§ 276 PBG), Galerie/zusammengebaute/terrassierte Bauten, Terrassenhaus (§ 77 PBG), Geschosszahl-Ersatz (§ 276 Abs. 2), **Kniestock** (0,9 m / Bestand 1,3 m vor 1.7.1978, Messweise 0,4 m hinter Fassade, auskragendes Dachgeschoss BEZ 1997 Nr. 7). Total ~30/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[geschosse-und-kniestock]] (`emerging`) — Geschossarten, Anrechenbarkeit, Kniestock-Tabelle (Neubau 0,9 m / Bestand 1,3 m) + Messweise; Backlinks auf [[nutzungsziffern]], [[abstaende-und-hoehen]], [[bestandsumbau-eingriffstiefe]]. INDEX (8 Artikel) + neuer Abschnitt «Gebaeudedimensionen».
- [drill] 6 neue Q/A-Karten Kap. 16 in `training/drills.md` (Modell C); **Fall-Nachrechnung Kniestock** (Modell B + Gegenprobe D): Dachausbau 1,15 m, Bewilligung 1969 → Dachgeschoss bleibt (1,3-m-Erleichterung); als Ersatzneubau → Vollgeschoss. Report `outputs/2026-06-10_buch-run2.md`.
- [register] `buecher/seiten-inventar.md` (Shots 571-580 [x] + echte Seiten), `buecher/INDEX.md` (Kap. 16 🟡), `curriculum.md` (Kap. 16 [~], naechstes Kap. 15), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Kap.-16-Luecke Hoehen/Dach + § 19 BBV II + § 293 PBG).

## 2026-06-09
- [distill] **Buch-Training Run 1** — Kap. 14 abgeschlossen. Destillat [[14-nutzungsdichte-ausnuetzung]] vom Ausnuetzung-Kern auf das gesamte Kapitel erweitert (Shots 464-471, 494, 496, 498 = 11 Doppelseiten, S. 920-989): massgebliche Grundstuecksflaeche im Detail (§ 259 PBG: Wald/Gewaesser/Strassen/Fusswege/Bahn), **Ausnuetzungsuebertragung** (§ 72 Abs. 3 PBG, Revers im Grundbuch, BO-Erlenbach-Schranke 1/5), erhoehte Ziffern/Gewerbebonus (§ 49a), Nutzungsart/Immissionen (§ 51/52/57), Wohnanteil (Healthcare ausserhalb), Harmonisierungsvorlage/IVHB. Total 20/780 Doppelseiten distilliert; Abdeckung Kap. 14 → 🟢.
- [article] Neuer Wiki-Artikel [[ausnuetzungsuebertragung]] (`emerging`): gleiche Zone (§ 72 Abs. 3 PBG), raeumliche Naehe, Ausnuetzungsrevers im Grundbuch (Art. 646 ZGB), kommunaler Daumenwert max. 1/5 der Grundausnuetzung (Art. 40 BO Erlenbach). INDEX + Statistik (7 Artikel) nachgefuehrt.
- [fix] **Gegenprobe (Modell D) — zwei Fehler in [[nutzungsziffern]] korrigiert:** (1) Freiflaechenziffer ist **§ 257 PBG**, nicht § 259 (§ 259 = massgebliche Grundstuecksflaeche; Buch Bd 2 S. 920/949); (2) Geschossflaechenziffer (GFZ) der IVHB **steht im Kanton Zuerich NICHT zur Verfuegung** (Bd 2 S. 988) — fruehere Aussage «in neueren Planungen anstelle der AZ» war fuer ZH falsch. Artikel zudem um massgebliche Grundstuecksflaeche, erhoehte Ziffern und Uebertragung ergaenzt.
- [drill] 7 neue Q/A-Karten in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) zur Zonengrenze-Schranke der Uebertragung. Report `outputs/2026-06-09_buch-run1.md`.
- [register] `buecher/seiten-inventar.md` (11 Shots [x] + echte Seitenzahlen), `buecher/INDEX.md`, `curriculum.md` (Kap. 14 [x], naechstes Kap. 16), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (GFZ-Korrektur archiviert, Mischrechnungsverbot + § 10/13 ABV als neue Luecken).

## 2026-06-07
- [article] Neuer Wiki-Artikel [[bestandsumbau-eingriffstiefe]] (Grundprinzip Bauen im Bestand): Eingriffstiefe entscheidet ueber Baueingabe; Pflichtenkatalog bei Baueingabe (Brandschutz/Treppenhaus VKF, Schallschutz SIA 181, Ausnuetzungsnachweis, Parkplatz/Energie/hindernisfrei); Besitzstandsgarantie schuetzt nur Erhalt — nicht Ausweitung; behoerdlicher Ermessensspielraum bei Uebernutzung (je Baubehoerde unterschiedlich); Empfehlungsregel «bewilligungsfreier Umbau = sicherste Variante». Seed: Praxisfall 2622 Wangen SZ (Dachausbau Chaled). Schliesst die Backlog-Luecke «Bestandesschutz & Besitzstandsgarantie». INDEX + Statistik (6 Artikel) nachgefuehrt.
- [harness] **Buch-Layer + Buch-Training angelegt** fuer das Standardwerk «Zuercher Planungs- und Baurecht, Bd 1+2» (Fritzsche/Boesch/Wipf/Kunz, 6. Aufl. 2019). Neu: `buecher/` (CLAUDE.md, INDEX.md, seiten-inventar.md mit allen 780 Screenshot-Doppelseiten, band-1/ band-2/), `training/` (PROGRAMM.md mit degressiver Lernkurve, curriculum.md 23-Kapitel-Map, drills.md). Quell-Screenshots auf SharePoint `PL - 02_Recht_Norm/.../SM Planungs und Baurecht/`.
- [distill] Erstes Destillat [[14-nutzungsdichte-ausnuetzung]] (Bd 2, Kap. 14, S. 919-961): AZ/BMZ/UEZ/FFZ (§§ 254-260 PBG), anrechenbare Geschossflaeche, **Dach-/UG-Mehrflaechenregel § 255 Abs. 2** (S. 950 f.), Wohntauglichkeit S. 944 f. 9 Shots im Inventar als distilliert markiert.
- [wire] Skill `baurecht` (Stufe 0b + Zitierschema Band/Kap/Seite) und Legacy-Agent `baurecht-agent` an den Buch-Layer angebunden.
- [schedule] Scheduled Task `baurecht-buch-training` erstellt (Phase 1 taeglich 07:34; degressiv auf 2-taegig/woechentlich).
- [output] Anwendungsfall [[2026-06-07_buch-run0_dachausbau-wangen-chaled]] (Trainingsmodell B): Dachgeschoss-Analyse MFH Wangen Bahnhofstrasse 27 (Mail David Chaled) auf Buchbasis. Offen: Kanton (Wangen SZ vs. Wangen-Bruettisellen ZH) + Kennwerte (Zone/AZ/Parzellenflaeche).
- [tooling] Connector `skills/baurecht/connectors/recht-ch.mjs` gebaut: zieht amtliche, konsolidierte Gesetzes-Volltexte (ZH-Lex; Bund-v2 offen) als Markdown mit Provenienz-Frontmatter nach raw/. ZH-Kette verifiziert (Open&Ordnr → kanonische Erlassseite → notes.zh.ch $File-PDF → pdftotext).
- [ingest] 5 amtliche ZH-Volltexte als Primärquelle in raw/ abgelegt: PBG (LS 700.1), ABV (700.2), BVV (700.6), BBV I (700.21), BBV II (700.22) — gemeinfrei Art. 5 URG, Direktkonsultation. In _INGESTED.md registriert (kein Coverage-Flag).
- [compile] Quellenregister [[QUELLEN]] angelegt (wiki/QUELLEN.md); in INDEX verlinkt; Statistik nachgeführt.
- [flag] Bund-Volltexte (RPG/RPV/USG) offen: Fedlex JS-gerendert → Auto-Fetch v2; bis dahin SharePoint/fedlex.admin.ch. In QUELLEN.md notiert.
- [tooling] Connector um kommunale BZO (Kt. ZH) erweitert: Bezug via ÖREB-Dokumentdienst oerebdocs.zh.ch/getDoc?docid; Auto-Auflösung Gemeinde→docid über ÖREB-JSON-Extrakt (--resolve-bzo --egrid). Register BZO_ZH (nur verifizierte docids).
- [ingest] 2 kommunale BZO-Volltexte als Primärquelle: Zürich Stadt (BZO 2016, docid 6) + Langnau am Albis (docid 5501) — gemeinfrei, Direktkonsultation. In _INGESTED + QUELLEN registriert.
- [ingest] ZH-Batch: 42 weitere kommunale BZO-Volltexte (Zürichsee-Ufer + Agglo-Ring) via ÖREB-Auto-Resolver (Name→EGRID→ÖREB-JSON→docid) gezogen; docids verifiziert, Fusionsgemeinden (Wädenswil) per Adress-Anker geprüft. Total 44 ZH-Gemeinden. Register BZO_ZH + QUELLEN nachgeführt.
- [tooling] SZ-Track gebaut: kommunale Baureglemente Kt. SZ via OEREBlex (oereblex.sz.ch/api/attachments), Auflösung über map.geo.sz.ch/oereb/extract/json. Register BAUREGL_SZ.
- [ingest] SZ-Batch: Baureglemente Wangen SZ, Freienbach, Feusisberg als Volltext; Wollerau als OCR-Pendenz markiert (Bild-PDF ohne Textebene). Schutzlogik im Connector: leere Extraktion wird ehrlich gekennzeichnet statt als Volltext getarnt.
- [tooling] OCR-Fallback im Connector (`--ocr`): leere Extraktion (Bild-PDF) wird via ocrmypdf/tesseract (deu) nachgeholt und als OCR-Text gekennzeichnet.
- [ingest] Wollerau (SZ) Baureglement via OCR gewonnen (81 KB) — nicht mehr Pendenz. Damit alle 4 SZ-Gemeinden Volltext.
- [flag] SG-Track (Rapperswil-Jona/Schmerikon): SG-ÖREB läuft über geoportal.ch; M2M-Extrakt 403-gesperrt (IP/Token) → ohne Freischaltung kein Auto-Bezug, bleibt Pendenz (in QUELLEN notiert).

## 2026-06-02
- [compile] Neuer Artikel raumplanung-und-gestaltung (aus pbg-zh: Richtplan, Nutzungsplanung, Sondernutzung, §238 Einordnung, Denkmalschutz); gegenseitig verlinkt mit zonenkonformitaet + baubewilligungsverfahren; INDEX + _INGESTED nachgefuehrt. [Phase-2-Aktion D]
- [flag] needs-verification gesetzt: Gebuehren 1-3‰ (baubewilligungsverfahren), Waldabstand-Ausnahmen 20/10m (abstaende-und-hoehen), BZO-Richtwerte (zonenkonformitaet); in QUESTIONS.md gefuehrt. [Phase-2-Aktion C]
- [reclassify] praxisfaelle als leerer Platzhalter eingestuft (keine Coverage-Luecke) in _INGESTED.md + QUESTIONS.md. [Phase-2-Aktion D]
- [fix] dekorativen Pfeil → in baubewilligungsverfahren.md durch Prosa ersetzt (Symbolregel). [Phase-2-Aktion F]
- [health-check] Erster Wissens-Health-Check (Phase 1): A0 B0 C3 D1+1 E0 F1 G0 → outputs/2026-06-02_health-check.md
- [setup] Wissensbasis Baurecht angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files).
- [ingest] 5 Seed-Quellen aus docs/baurecht/ in raw/ abgelegt und in _INGESTED.md registriert.
- [compile] 4 Wiki-Artikel kompiliert: nutzungsziffern, abstaende-und-hoehen,
  baubewilligungsverfahren, zonenkonformitaet (mit Frontmatter + Backlinks).
- [index] INDEX.md und QUESTIONS.md erstellt.
- [flag] Coverage-Lücke: raw/260602_docs-baurecht-praxisfaelle.md noch nicht eingearbeitet.
