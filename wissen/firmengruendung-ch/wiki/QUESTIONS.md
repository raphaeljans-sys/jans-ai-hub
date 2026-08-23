# QUESTIONS — offene Fragen & Wissenslücken (Firmengründung Schweiz)

## Offene Wissenslücken (Coverage-Gaps)
- **1e-/Kaderplan + Einkaufspotenzial** der Raphael Jans AG konkret erheben
  (Vorsorgeausweis, Schwellenwert 1e) — Grundlage für den PK-Hebel. **Setzt voraus, dass
  die AG tatsächlich im Handelsregister eingetragen ist** und einen eigenen Vorsorgeplan
  hat (BVG-Anschluss erst nach Gründung, siehe [[nachgruendung-anmeldungen]]); beim
  Stand 14.08.2026 (Quelle `logbuch/fristen.md`) war das noch nicht der Fall — vor
  dieser Erhebung den aktuellen Gründungsstand dort prüfen, nicht annehmen.

## needs-verification (zentral)
- Beratungs-/Notarkosten ([[rechtsform-vergleich]], [[kosten-und-zeit]]) bleiben
  Marktrichtwerte ohne amtlichen Tarif (Notariate ZH sind frei erwerbend) — vor einer
  realen Gründung aktuelle Offerte einholen. Die Handelsregistergebühr-Hälfte dieser Frage
  ist geschlossen, siehe Archiv 08.08.2026. Im laufenden realen Gründungsfall (Notariat
  Wiedikon, Stand 14.08.2026) liegt noch keine bezifferte Honorarofferte vor, mit der sich
  dieser Punkt schliessen liesse (geprüft 23.08.2026, `logbuch/fristen.md`).

## Cross-Article-Spannungen (worth resolving)
- Noch keine erfasst.

## Beantwortete Fragen (Archiv)
- **[[nachgruendung-anmeldungen]]: UVG Art. 68/69 und MWSTG Art. 66 am Fedlex-PDF-
  Volltext gegengelesen, needs-verification vollständig aufgelöst (23.08.2026, dritter
  Lauf desselben Tages):** Die HTML-Filestore-Route lieferte für UVG (SR 832.20) und
  MWSTG (SR 641.20) bei langen Konsolidierungen nur eine JavaScript-App-Hülle statt
  Text (77'151 Byte, unabhängig vom Datum) — derselbe Fehlertyp wie im Nachtrag
  23.08.2026 zu `docs/referenz/fedlex-volltexte.md`, dort aber für andere Erlasse
  behoben durch die `de/pdf-a`-Route auf `fedlex.data.admin.ch`. Dieser Lauf hat
  denselben Ausweichweg für UVG/MWSTG genutzt (ELI via WebSearch ermittelt: UVG
  `eli/cc/1982/1676_1676_1676`, MWSTG `eli/cc/2009/615`; PDF lokal mit `pypdf`
  extrahiert statt WebFetch/HTML, weil WebFetch bei diesen langen Dokumenten die
  KI-Zusammenfassung vor dem Zielartikel abbrach). **Zwei Befunde:**
  (1) **Korrektur:** Die «freie Versichererwahl» steht nicht in Art. 68 UVG (der regelt
  nur, WER als Versicherer zugelassen ist, plus dessen Registerpflicht beim Bundesamt
  für Gesundheit), sondern in **Art. 69 UVG** («Wahl des Versicherers»: Arbeitgeber
  sorgt für Versicherung bei einem Art.-68-Versicherer, Arbeitnehmer haben
  Mitbestimmungsrecht). (2) **Bestätigung:** Art. 66 Abs. 1 MWSTG nennt wörtlich die
  30-Tage-Frist «unaufgefordert innert 30 Tagen nach Beginn ihrer Steuerpflicht» — die
  bisherige Artikeldarstellung war inhaltlich korrekt. **Zusätzlich geklärt:** das UVG
  nennt für den Vertragsschluss mit einem Nicht-Suva-Versicherer keine gesetzliche
  Frist (Art. 59 Abs. 2 UVG: Versicherungsverhältnis entsteht durch Vertrag, ohne
  Datumsangabe); Auffangnorm ist Art. 59 Abs. 3 UVG (Ersatzkasse leistet bei fehlender
  Deckung im Unfallzeitpunkt, entlastet den Arbeitgeber aber nicht von Nachforderungen).
  Damit ist die zuvor offene Fristfrage nicht nur unbeantwortet geblieben, sondern
  positiv geklärt: es gibt keine Norm-Frist, nur Sorgfaltspraxis. Konsolidierungen:
  UVG 01.01.2026, MWSTG 01.01.2025 (spätere MWSTG-Snapshots 2025/2026 lieferten beim
  Test der Kandidatendaten die App-Hülle statt PDF, 01.01.2025 war der letzte treffende
  Kandidat). `git diff --numstat` nach dem Schreiben gegen
  `wiki/nachgruendung-anmeldungen.md` geprüft (+30/-16, keine unbeabsichtigte Löschung).
- **[[nachgruendung-anmeldungen]]: BVG-Auffangfrist und UVG-Anmeldefrist am Fedlex-
  Volltext korrigiert (23.08.2026, Pflegelauf gegen den aktuellen Stand):** Der Artikel
  trug seit dem 22.07.2026 zwei unbelegte Fristangaben, die sich beim direkten
  Fedlex-Filestore-Abgleich (Rule `auto-verbesserungen.md` 260721) als falsch erwiesen.
  (1) **BVG:** Art. 11 BVG nennt für die zwangsweise Anmeldung eines säumigen
  Arbeitgebers bei der Stiftung Auffangeinrichtung wörtlich eine Frist von **zwei
  Monaten** (Abs. 5: „innerhalb von zwei Monaten"), nicht sechs; kontrollierende
  Stelle ist die **Ausgleichskasse der AHV** (Abs. 4), nicht eine kantonale
  BVG-Aufsichtsbehörde; korrekte Fundstelle ist Abs. 4–6, nicht Abs. 3/4 (Abs. 3/3bis/
  3ter regeln die Auflösung/den Wiederanschluss, nicht die Kontrollfrist). (2) **UVG:**
  Die in Art. 59 Abs. 1 UVG genannte 14-Tage-Frist ist keine allgemeine Anmeldefrist
  «14 Tage vor Stellenantritt» bei einem beliebigen Versicherer, sondern die
  **Nachmelde**-Frist der Betriebseröffnung/-einstellung an die Suva, und sie gilt nur
  für nach Art. 66 UVG Suva-pflichtige Betriebe — für die Raphael Jans AG als
  Bürobetrieb (freie Versichererwahl nach Art. 68 UVG) irrelevant. Beide Artikel-Texte
  zweifach wörtlich am Fedlex-Filestore verifiziert (BVG-Konsolidierung 01.01.2025,
  UVG-Konsolidierung 01.01.2026). **Neu offen (needs-verification, nicht geschlossen):**
  der genaue Wortlaut von Art. 68 UVG (freie Versichererwahl) und von Art. 66 MWSTG
  (Anmeldefrist) liess sich über den Fedlex-Filestore wegen der Dokumentlänge nicht
  mehr lesen (das WebFetch-Tool bricht die Verarbeitung sehr langer HTML-Konsolidierungen
  vor dem Textende ab) — für eine spätestens-Frist der UVG-Anmeldung bei freier
  Versichererwahl bleibt daher offen, ob das Gesetz selbst eine Frist nennt oder nur
  Praxis gilt. AHVG Art. 5/12, BVG Art. 2 und UVG Art. 1a/66 wurden im selben Lauf ohne
  Beanstandung bestätigt.
- **Handelsregistergebühr AG/GmbH: CHF 420 pauschal statt gestaffelt (08.08.2026,
  Nachtschicht-Zyklus Mac Mini):** [[kosten-und-zeit]] und [[rechtsform-vergleich]] führten
  seit dem EasyGov-Dossier 2022 eine kantonal gestaffelte Handelsregistergebühr (~CHF 600,
  bei Kapital > CHF 200'000 zzgl. 0,2 ‰ des übersteigenden Betrags). Direkt am Fedlex-
  Volltext verifiziert (Filestore-Methode, Rule 260721): Anhang Ziff. 1.1-1.3 GebV-HReg
  (SR 221.411.1, Stand 01.01.2021) sieht bundesweit einheitliche Pauschalen vor —
  Einzelfirma CHF 80, Kollektiv-/Kommanditgesellschaft CHF 160, Kapitalgesellschaften
  (AG/GmbH) CHF 420, ohne Staffelung nach Kapitalhöhe. Der alte gestaffelte Tarif ist mit
  der Vereinheitlichung per 01.01.2021 aufgehoben; das Dossier von 2022 zitierte damit
  bereits bei der Erhebung veraltetes Recht. Drei Artikel korrigiert:
  [[kosten-und-zeit]], [[rechtsform-vergleich]], [[gmbh-gruendungsablauf]]. Beratungs- und
  Notarkosten bleiben als Marktrichtwerte offen (kein amtlicher Tarif in ZH).
- **Revidiertes Aktienrecht ab 01.01.2023: Kapitalband, Aktienkapital in Fremdwährung
  (29.07.2026, Nachtschicht-Zyklus Mac Mini):** Neuer Artikel
  [[kapitalband-und-fremdwaehrung]], Art. 621 und 653s–653v OR direkt am Fedlex-Volltext
  verifiziert (Filestore-Methode, Stand 01.01.2026). Kernbefunde: Fremdwährungskapital
  muss bei Errichtung Gegenwert ≥ CHF 100'000 haben, Buchführung dann in derselben
  Währung, Wechsel per GV-Beschluss + öffentliche Beurkundung (Art. 621 OR). Kapitalband:
  VR-Ermächtigung max. 5 Jahre, Bandbreite ±50 % des eingetragenen Kapitals, Herabsetzung
  nur ohne vollständiges Opting-out möglich, 10 zwingende Statuten-Pflichtangaben bei
  Einführung (Art. 653s–653t OR). needs-verification-Flags in [[statuten-ag]] und
  [[kapital-und-liberierung]] entfernt, dort auf den neuen Artikel verlinkt.
- **Schwellenwerte ordentliche Revision Art. 727 OR (27.07.2026, Nachtschicht-Zyklus Mac
  Mini):** [[revision-und-opting-out]] direkt am Fedlex-Volltext verifiziert (Filestore-
  Methode, Stand 01.01.2026). Bestätigt: ordentliche Revisionspflicht ab Überschreiten von
  zwei der drei Grössen Bilanzsumme CHF 20 Mio. / Umsatzerlös CHF 40 Mio. / 250
  Vollzeitstellen im Jahresdurchschnitt in zwei aufeinanderfolgenden Geschäftsjahren
  (Art. 727 Abs. 1 Ziff. 2 OR, unverändert seit Aktienrechtsrevision 2023). Artikel um die
  konkreten Zahlen ergänzt (vorher nur pauschal referenziert), needs-verification-Flag
  entfernt.
- **Verwaltungsrat: Pflichten/Haftung/Konstituierung (25.07.2026, Nachtschicht-Zyklus Mac
  Mini):** Neuer Artikel [[verwaltungsrat]], letzte verbliebene Backlog-Lücke aus dem
  INDEX geschlossen. Kernbefunde primärquellen-belegt (Fedlex-Volltext-Filestore, Methode
  Rule auto-verbesserungen 260721): Amtsdauer bei nicht kotierten AG 3 Jahre/max. 6
  (Art. 710 OR), 8 unübertragbare Kernaufgaben (Art. 716a OR), Vertretungsbefugnis
  grundsätzlich jedem Mitglied einzeln (Art. 718 OR) mit Schriftformpflicht bei
  Insichgeschäften > CHF 1'000 (Art. 718b OR — relevant für die Ein-Personen-AG), die drei
  seit der Aktienrechtsrevision 2023 explizit kodifizierten Überwachungspflichten
  Liquidität/Kapitalverlust/Überschuldung (Art. 725–725b OR, inkl. Revisionspflicht im
  Kapitalverlustfall TROTZ Opting-out), Verantwortlichkeit gegenüber Gesellschaft/
  Aktionären/Gläubigern bei Pflichtverletzung (Art. 754 OR), Solidarhaftung nach
  Verschuldensanteil (Art. 759 OR), Verjährung 3/10 Jahre (Art. 760 OR). Offen markiert:
  AHV-Durchgriffshaftung (Art. 52 AHVG, ausserhalb OR), D&O-Versicherung, Wohnsitz-
  Erfordernis bei Auslandbeteiligung — bewusst nicht recherchiert (kleiner Scope für
  Nachtschicht-Budget).
- **Steuern bei Gründung: Kapital-, Gewinn-, Verrechnungssteuer (24.07.2026,
  Nachtschicht-Zyklus Mac Mini, 20:30-Lauf):** Neuer Artikel
  [[steuern-bei-gruendung]]. Kernbefunde primärquellen-belegt: Gewinnsteuer
  8,5 % Bund (Art. 68 DBG) + 7 % ZH (§ 71 StG, proportional, kein Mehrstufentarif);
  Kapitalsteuer nur kantonal (Bund seit 1998 abgeschafft), ZH 0,75 ‰ (§ 82 StG),
  KEINE Anrechnung an die Gewinnsteuer (ZH nicht im StHG-Art.-30-Abs.2-Anrechnungs-
  Kanton-Kreis) und KEINE Mindeststeuer in ZH (anders als z.B. LU/SZ/TG/TI/VD);
  Verrechnungssteuer 35 % auf Dividenden (Art. 4 VStG) betrifft NICHT die Gründung
  selbst (Kapitaleinlage = Zufluss, kein Ertrag), erst die spätere Ausschüttung —
  Kapitaleinlageprinzip Art. 5 Abs. 1bis VStG (gesondert verbuchtes Agio später
  steuerfrei rückzahlbar, BGE 151 II 827 vom 21.03.2025 präzisiert die
  Verbuchungspflicht). Steuererleichterung § 62 StG (max. 10 Jahre) für JANS
  praktisch nicht relevant, der Vollständigkeit halber dokumentiert. Quellen: ESTV/
  SSK-Dossier «Überblick Besteuerung juristischer Personen» (Stand 1.1.2026) +
  ESTV-Kantonsblatt Zürich (Stand Februar 2026) als PDF-Primärquellen gelesen,
  Verrechnungssteuer-Teil über estv.admin.ch + Bundesgerichts-Leitentscheid
  (WebSearch, needs-verification markiert — kein direkter Fedlex-Volltextabgleich
  VStG). MWST-Schwelle bewusst nicht dupliziert (bereits in
  [[nachgruendung-anmeldungen]] §4 belegt).
- **Holding-Struktur über die bestehende AG (24.07.2026, Nachtschicht-Zyklus Mac Mini):**
  Neuer Artikel [[holding-struktur]]. Kernbefunde: kantonales Holdingprivileg seit STAF
  01.01.2020 abgeschafft; bundesrechtlicher Beteiligungsabzug Art. 69/70 DBG bleibt
  (Schwellen 10 % Kapital/Gewinn ODER Verkehrswert ≥ CHF 1 Mio.); zentrale Steuerfalle bei
  Einbringung der eigenen AG in eine neu gegründete Holding ist die Transponierung
  (Art. 20a Abs. 1 lit. b DBG, keine Bagatellgrenze); verwandt die indirekte
  Teilliquidation (Art. 20a Abs. 1 lit. a DBG, 20-%-Schwelle/5-Jahres-Frist) bei Verkauf
  an Dritte. Art. 69/70 und 20a DBG direkt am Fedlex-Volltext verifiziert (Filestore-
  Methode). Fazit: ohne weitere Beteiligungen/Immobilien/Verkaufsabsicht aktuell kein
  Mehrwert für die Raphael Jans AG.
- **Nach-Gründung im Detail: AHV/BVG/UVG/MWST (22.07.2026, Nachtschicht-Zyklus Mac Mini):**
  Neuer Artikel [[nachgruendung-anmeldungen]] als Detaillierung von Schritt 13 in
  [[ag-gruendungsablauf]]. Kernbefunde: AHV-Ausgleichskasse meldet sich nach
  SHAB-Publikation automatisch (kantonale Kasse Sitzkanton, ZH → SVA Zürich); BVG-
  Eintrittsschwelle 2026 CHF 22'680, Anschlusspflicht Art. 11 BVG (Auffangeinrichtung
  erst nach 6 Monaten Untätigkeit — kein Regelweg, aktiv anschliessen empfohlen); UVG
  Anmeldefrist 14 Tage vor Stellenantritt (Art. 59 UVG), Architektur-/Planungsbüro als
  Bürobetrieb NICHT Suva-pflichtig (Art. 68 UVG, freie Versichererwahl); MWST-Schwelle
  CHF 100'000 Jahresumsatz, Anmeldefrist 30 Tage ab Gründung bei absehbarem Überschreiten
  (Art. 10/66 MWSTG). Recherche via WebSearch/WebFetch (Sekundärquellen: kmu.admin.ch,
  sva-ag.ch, ahv-iv.ch, estv.admin.ch, koordination.ch — kein Fedlex-Volltextabgleich,
  Artikel als needs-verification bei Fristen-Details markiert).
- **GmbH-Gründungsablauf (21.07.2026, Nachtschicht-Zyklus Mac Mini):** Neuer Artikel
  [[gmbh-gruendungsablauf]] als Pendant zu [[ag-gruendungsablauf]] kompiliert. Recherche
  via WebSearch/WebFetch (Fedlex ohne JS nicht direkt lesbar, daher Sekundärquellen:
  eskript.ius.unibas.ch Lehrstuhl Handschin, law.ch, Kanton-SG-Merkblatt). Kernbefunde:
  Stammkapital CHF 20'000 voll liberiert (Art. 773 OR) statt AG-Teilliberierung; keine
  Organe-Pflicht in den Statuten, Default = alle Gesellschafter geschäftsführungsbefugt
  (Art. 809 OR); Gesellschafter im HR öffentlich (vs. AG-Aktionäre); Stammanteil-Übertragung
  grundsätzlich zustimmungspflichtig (Art. 786 OR); Revisionsstelle folgt sinngemäss dem
  Aktienrecht (Art. 818 OR), mit Sonderrecht nachschusspflichtiger Gesellschafter auf
  ordentliche Revision. Artikel markiert als *needs-verification* für die Artikelnummern
  (Sekundärquellen, kein direkter Fedlex-Volltextabgleich) — vor einem realen Gründungsfall
  gegen den OR-Wortlaut nachzuprüfen.
- **Firmen-Distinktivität / EHRA-Weisung Ziff. IV (21.07.2026, Dauerschicht-Zyklus 36):**
  Die im Health-Check 01.07. geflaggte und 20 Tage unbearbeitete Lesson aus dem realen
  Fall JANS AG ist jetzt in [[ag-gruendungsablauf]] Schritt 2 eingearbeitet: gleicher
  Firmenkern + blosser Rechtsform-Zusatz genügt nicht; Zefix-«frei» ist keine Freigabe;
  bei Nähe schriftliche HRA-Voranfrage (ZH: kanzlei.hra@ji.zh.ch) VOR Statuten/Bankkonto.
- **Promotion `steuern-ag-inhaber` (20.07.2026, Dauerschicht-Zyklus 20):** Der Output
  `outputs/2026-07-02_steuern-sparen-ag-inhaber.md` (established) ist als Evergreen-
  Wiki-Artikel [[steuern-ag-inhaber]] ins Wiki überführt (situative Anlass-Rahmung
  entfernt, Jahresende-Checkliste statt «2026»-Fahrplan, Alterungs-Warnung für
  Beträge ergänzt). Die zwei *needs-verification*-Punkte (KER-Bestand, 1e-Schwelle/
  Einkaufspotenzial) bleiben im Artikel markiert.
