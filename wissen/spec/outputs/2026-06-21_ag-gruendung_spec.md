# AG-Gruendung Raphael Jans — Spec (in Arbeit)

Erstellt: 2026-06-21 · Methode: Skill `spec` (Karpathy/Marchese) · Faktenbasis KB
`firmengruendung-ch` (A1-A10, Belegliste). Erste reale Anwendung der Spec-Methode.

**CHANGELOG (neueste zuoberst):**
- **2026-09-02 07:45:** Monitor-Scan-Ergebnis: **KEINE neuen AG-Gründungs-Mails seit 31.08.2026 00:00**. Monitor funktioniert wieder (Blind-Fleck 01.09. behoben), aber weiterhin keine neuen Eingaenge. Kapitaleinzahlung **16+ Tage ueberfaellig** (sollte Mitte August ~14.08., ist bis 02.09.). Notariat Mathies seit 13.08. ohne Antwort. fristen.md + Logbuch aktualisiert. P1-Status: Einzahlung ist blockierend fuer die Gesamtkette (Bescheinigung → Beurkundung). Aktion Raphael erforderlich: (1) CHF 50'000 einzahlen auf Sperrkonto, (2) abwarten auf Kapitalbescheinigung UBS (per Einschreiben), (3) Notariat kontaktieren + Beurkundungstermin festlegen.
- **2026-09-01 07:45:** Monitor-Scan-Ergebnis: **KEINE neuen AG-Gründungs-Mails seit 31.08.2026 00:00**. Monitor war 9 Tage blind (seit 25.08. osascript-Timeout). Jüngste Mails: UBS 29.07. Jeckelmann (Konto angepasst), Notariat 13.08./12.08. Mathies/Raphael (überarbeitete Unterlagen). Kapitaleinzahlung damit weiterhin 14+ Tage ausstehend. Notariat-Antwort unbekannt wegen Monitor-Blindheit. Status ins Fristen-Register (NACHTRAG, hoch/überfällig). Keine neue Mail-basierte Aktion nötig; Handlung bei Raphael: (1) CHF 50'000 einzahlen, (2) UBS/Notariat ggf. proaktiv kontaktieren.
- **2026-08-31 07:3x:** Monitor weiterhin blind (osascript-Timeout, neun Tage). Kapitaleinzahlungskonto UBS seit 17.08. geöffnet, CHF 50'000 Einzahlung **14 Tage ausstehend**. Ohne Einzahlung → keine Kapitalbescheinigung → keine Beurkundung. Notariat Wiedikon seit 25.08. nicht erreichbar (osascript-Block). Firmenname-Alternative (22.06. gefordert) noch offen — JANS AG blockiert, Alternativen erforderlich für HR-Anmeldung. Status im LOGBUCH + Fristen dokumentiert. Nächste Aktionen: (1) Einzahlung, (2) osascript-Fehler beheben, (3) Firmenname + HR-Vorprüfung.
- **2026-08-28 07:25:** Monitor-Lauf blind, osascript-Timeout seit sechtem Tag (Mail.app unresponsive). Kapitalkontoöffnung UBS 17.08. VERIFIZIERT (IBAN CH46 0027 6276 1238 74D7 N, Kontoinhaber Raphael Jans AG In Gründung). Nächster Schritt: CHF 50'000 einzahlen → Bescheinigung per Einschreiben → Beurkundung. Notariat Wiedikon seit 25.08. nicht erreichbar (osascript-Block). Firmenname-Aktion Raphael (22.06. gefordert) weiterhin offen: JANS AG durch JANS GmbH blockiert, Alternative wählen + HR-Vorprüfung. Stand: logbuch/fristen.md nachtragen + NAS-Repo commit.
- **2026-08-27 08:10:** Monitor weiterhin blind, aber Kapitalkontoöffnung UBS 17.08. via Radar-Lauf verifiziert (IBAN CH46 0027 6276 1238 74D7 N, Kontoinhaber Raphael Jans AG In Gründung). Nächster Schritt: CHF 50'000 einzahlen → Bescheinigung per Einschreiben → Beurkundung möglich. Notariat Wiedikon seit 25.08. nicht erreichbar (osascript-Block). Stand in logbuch/LOGBUCH.md + fristen.md nachtragen.
- **2026-08-26 07:05:** Monitor-Task `ag-gruendung-monitor` läuft erneut in osascript-Timeout (2 Min AppleEvent-Block). Beide Mail-Kanäle (mail@UBS, rj@Notariat) seit 25.08. 06:00 blind. Kapitalkontoöffnung UBS 17.08. wird nicht erkannt. Logbuch-Eintrag als P1-Befund. Betriebsstörung, nicht fachlich.

## Ziel (1 Satz)
**Haftungstrennung nach Risiko:** Die bestehende **Einzelfirma** "Raphael Jans -
Architekten ETH" bleibt bestehen und macht kuenftig nur noch **risikoarmes Consulting**
(Studien, Kaeuferbegleitung, Bewertung, Machbarkeit); eine **neu zu gruendende, unabhaengige
AG** uebernimmt die **risikoreiche Projektausfuehrung**, teils im **GU-/Generalunternehmer-
Mandat**, unter dem Schutz der beschraenkten Haftung.

## Abgrenzung (was NICHT dazugehoert)
- Keine zweite/bestehende AG — der Ausgangspunkt ist die Einzelfirma (Korrektur einer
  frueheren Annahme im Verlauf).
- Keine Beteiligungsverbindung zwischen Einzelfirma und AG (bewusst unabhaengig).
- Nicht Teil dieser Spec: definitive Steuer-/Sozialversicherungsberatung (Treuhand/Notar).

## Schluesselentscheide (bestaetigt 2026-06-21)
- Zweck/Ziel: Risiko-Trennung Consulting (Einzelfirma) ↔ Ausfuehrung/GU (AG).
- Verhaeltnis: AG **unabhaengig** von der Einzelfirma.
- Aktienkapital: **CHF 100'000**, Liberierung **50 % = CHF 50'000** einbezahlt.
- Einlage: **Bareinlage** (Sperrkonto + Bankbestaetigung, kein Gruendungsbericht noetig).
- Firma: **JANS AG**.
- Sitz/Domizil: **Zuerich** (politische Gemeinde), Adresse **Saumstrasse 21, 8003 Zuerich**.
- Verwaltungsrat: **Raphael Jans allein, Einzelunterschrift**.
- Revision: **Opting-out** (Revisionsverzicht).

## ⚠ Firmenname «JANS AG» GEFAEHRDET — Notariat 22.06.2026 (ueberschreibt die 21.06.-Freigabe)
Das Notariat Wiedikon-Zuerich (M. Mathies) hat das Dossier vorgeprueft und meldet:
Im HR besteht bereits eine **«JANS GmbH»**. Gemaess der amtlichen **Weisung zur Pruefung der
Firmenidentitaet (Ziff. IV)** besitzt der Rechtsformzusatz (AG bzw. GmbH) **keine
Unterscheidungskraft** — «JANS AG» gilt damit als nicht ausreichend unterscheidbar von
«JANS GmbH» und wird vom HRA voraussichtlich **nicht zur Eintragung zugelassen**. Das Notariat
empfiehlt einen **alternativen Firmennamen**. Dies korrigiert die naive Zefix-Exact-String-Pruefung
vom 21.06. (0 Treffer "JANS AG"), die das amtliche Identitaets-Pruefkriterium nicht abbildete.
- **Aktion Raphael:** unterscheidungskraeftigen Namen waehlen (z.B. «JANS Architektur AG»,
  «JANS Bau AG», «JANS Generalunternehmung AG»); Claude prueft den gewaehlten Namen vorgaengig
  nochmals gegen das HR. Danach das **gesamte Belegset** (Statuten, Urkunde, Wahlannahme,
  Konstituierung, HR-Anmeldung, Lex-Friedrich) auf den neuen Namen anpassen + Korrektur-Harness.
- **Zudem verlangt das Notariat:** die **Word-Dateien** von Urkunde und Statuten (Ordner
  `10 AG Gruendung`), damit es Anpassungen vornimmt und seine Urkundsformel einfuegt.
- Anhang der Notariats-Mail: «Pruefung der Firmenidentitaet.pdf» (Weisung) — im Postfach rj@.

## Verifikation Firmenname — 21.06.2026 (UEBERHOLT durch Notariat-Befund oben): "JANS AG" frei
- Manuell auf zefix.ch geprueft (Raphael) + von Claude unabhaengig gegengelesen am
  vollstaendigen amtlichen Zefix-Ausdruck (7 Seiten, 98 Treffer der Breitensuche "jans")
  sowie der exakten Suche "Jans AG".
  Beleg-PDF: `~/Library/CloudStorage/OneDrive-…/AD - 03 Kommunikation/Behoerden/Schweiz Bund/
  CH_zefix@bj.admin.ch/260621 Zentraler Firmenindex.pdf`.
- **Ergebnis:** KEIN Eintrag "JANS AG"/"Jans AG" (exakte Suche = 0 Treffer). Name frei.
- Naechste Nachbarn (fuer "deutliche Unterscheidbarkeit" relevant, OR 951 II / 946):
  - JANS GmbH, Zunzgen BL (CHE-420.475.963) — andere Rechtsform, gleicher blanker Name.
  - JANS SA Immobilier, Laténa NE (CHE-115.704.458) — SA, mit Zusatz.
  - Jansen AG, Oberriet SG (CHE-102.513.848) — "Jansen", nicht "Jans".
- Bestaetigt: Einzelfirma "Raphael Jans - Architekten ETH", Zuerich, EIU, CHE-182.658.011.
- **Vorbehalt:** Zefix-Daten haben KEINE Rechtswirkung. Verbindliche Auskunft via REGIX
  (regix.ch) oder durch Notar/HRA bei der Gruendung. Indiz ist aber klar gruen.
- (Hinweis: Connector `connectors/zefix.mjs` automatisiert diese Pruefung kuenftig, sobald
  Zefix-REST-Credentials vorliegen — angefordert per Mail 21.06.2026.)

## Geklaert (21.06.2026)
- Domizil Saumstrasse 21, 8003 Zuerich = **eigene Raeume** → KEINE Domizilannahme-Erklaerung
  noetig. (Bewusst abweichend von Grubenstrasse 37 der Einzelfirma.)
- AG-Zweck **bestaetigt** (Raphael liefert Wortlaut, mit GU-Teil zusammengefuehrt — siehe unten).

## Praezise mitgedacht (Schritt 3 / Verifier-Mindset)
- **Kapital ist NICHT die Risikoabdeckung.** Die AG begrenzt Raphaels persoenliche Haftung
  auf das Gesellschaftsvermoegen — das ist der Schutz. Die "erhoehte Risikoabdeckung" bei
  GU-Mandaten kommt aber v.a. aus der **Betriebs-/Berufshaftpflicht mit hoher Deckungssumme**
  (Bauschaeden, Werkvertragshaftung SIA 118, Subunternehmer, Garantie). Mit nur CHF 50'000
  einbezahltem Kapital ist die AG selbst duenn kapitalisiert — Versicherung + saubere
  Vertraege tragen das Risiko, nicht das Aktienkapital. → vor Aufnahme von GU-Mandaten
  Versicherungsdeckung klaeren.
- **Zweck-Abgrenzung ist haftungsrelevant:** Damit die Trennung haelt, muessen die Zwecke
  von Einzelfirma (Beratung/Planung ohne Ausfuehrungsrisiko) und AG (Ausfuehrung/GU) klar
  getrennt formuliert sein; Mischung verwaessert den Haftungsschutz.
- **AHV-Doppelrolle:** Raphael bleibt selbstaendig (Einzelfirma) UND wird Angestellter/Organ
  der eigenen AG — Status, Lohn/Dividende, AHV-Abrechnung mit Treuhand klaeren.
- **GU im Zweck/Modell:** GU-Leistung ist mehr als Architektur — Zweck und Versicherung
  muessen "General-/Totalunternehmer, Ausfuehrung von Bauprojekten" abdecken.

## Bewertungskriterien (woran das Endprodukt gemessen wird)
- HR-taugliche Dokumente (Anmeldung, Statuten, Wahlannahme, Domizil, VR-Protokoll), die die
  Vorpruefung Notar/HRA bestehen.
- Zweck-Trennung Consulting ↔ Ausfuehrung sauber abgebildet.
- Format-Vorlage: vorhandene Statuten-/Dokumentvorlagen im Ordner `10 AG Gruendung`.

## AG-Zweck — final (bestaetigt 21.06.2026)
Raphaels Wortlaut (urspruenglich Einzelfirma-Zweck) in "Die Gesellschaft"-Stimme mit dem
GU-/Ausfuehrungsteil zusammengefuehrt:

> Die Gesellschaft bezweckt die Erbringung von Architektur- und Baudienstleistungen aller
> Art, insbesondere Beratung, Kostenplanung und Projektierung sowie die Realisierung,
> Ausfuehrung und Bauleitung von Bauvorhaben, namentlich als General- und Totalunternehmerin,
> fuer eigene und fremde Rechnung.
> Sie kann saemtliche damit direkt oder indirekt zusammenhaengenden Geschaefte taetigen,
> Vertraege mit Subunternehmern und Lieferanten abschliessen, Bauherrenvertretungen
> uebernehmen sowie mit Waren aller Art handeln.
> Die Gesellschaft kann Liegenschaften erwerben, verwalten und veraeussern,
> Zweigniederlassungen im In- und Ausland errichten, sich an anderen Unternehmen beteiligen,
> Kapitalanlagen halten sowie Immaterialgueterrechte erwerben, halten und verwerten. Sie kann
> alle Geschaefte taetigen, die geeignet sind, den Zweck der Gesellschaft zu foerdern.

Hinweis (Schritt 3): Der AG-Zweck deckt bewusst auch Beratung/Planung mit ab (breit, fuer
Flexibilitaet). Das ist haftungsrechtlich unkritisch — die Haftung folgt der vertrags-
schliessenden Einheit, nicht dem Zweck. Die praktische Risiko-Trennung (Consulting via
Einzelfirma, Ausfuehrung/GU via AG) entsteht also ueber die Mandatszuteilung, nicht ueber
eine Zweck-Exklusivitaet. Lex-Friedrich hier nicht einschlaegig (kein Immobilien-Haupt-
zweck mit Auslandsbezug).

## Plan (agil, enge Scopes — Schritt 2)
1. ✓ Schluesselentscheide fixiert (Interview-Runde 1+2).
2. ✓ Firmenname JANS AG via Zefix verifiziert (frei) + AG-Zweck final bestaetigt.
3. ✓ **Gesamtes Belegset final erstellt + verifiziert** (Korrektur-Harness 2 Runden:
   Rechtschreibung 🟢, Layout 🟢 nach NBSP/Bullet/Tab-Fixes). DOCX+PDF im Ordner
   `10 AG Gruendung/`:
   - `03_Statuten/260621_Statuten_JANS-AG.docx` (final, ohne Entwurf-Marker)
   - `04_Wahlannahmeerklaerung/260621_Wahlannahme-VR_Raphael-Jans_JANS-AG.docx`
   - `05_Erlaerung_Verzicht_Revision/260621_Revisionsverzicht-Optingout_JANS-AG.docx`
   - `09_Verwaltungsrat_Konstituierung/260621_VR-Konstituierung_JANS-AG.docx`
   - `01_Anmelung_HRA/260621_HR-Anmeldung_JANS-AG.docx`
   - `07_Lex_Friedrich_Erklaerung/260621_Lex-Friedrich-Erklaerung_JANS-AG.docx` (alle 4 Fragen
     nein; HRA-Formular 5200fr02; verlangt wegen Liegenschafts-Zweck) — verifiziert 🟢/🟢.
   Domizilannahme entfaellt (eigene Raeume). Sacheinlage nicht einschlaegig.
   - `01_Gruendungsurkunde/260621_Gruendungsurkunde_JANS-AG_Entwurf.docx` (Einzelgruender-Fassung
     nach Vorlage + Checkliste Art. 44 HRegV; Opting-out-Variante; Stampa-Erklaerung Ziff. V.4;
     Domizil eigene Raeume) — Entwurf zuhanden Notar, verifiziert 🟢/🟢.
   Ordner 08 Protokoll = durch VR-Konstituierung (09) abgedeckt, kein Zusatzdokument.
   **Notar:** Zuerich = Amtsnotariat; fuer Sitz 8003 ist das Notariat Wiedikon-Zuerich
   (Weststrasse 70, 044 298 55 00) oertlich zustaendig — bei AG-Gruendung aber FREIE
   Notariatswahl im Kanton. ZH-Beurkundungsgebuehr ist tarifaer nach Aktienkapital (Selbst-
   Entwurf spart v.a. Zeit, nicht die Tarifgebuehr).
   Personalien komplett aus Schweizer ID gefuellt (Geburtsdatum, Heimatort Luzern LU,
   Nationalitaet CH → Lex-Friedrich bestaetigt). Private Wohnadresse = AG-Sitz Saumstrasse 21,
   8003 Zuerich (eigene Raeume, kein c/o). **Urkunde JANS-seitig vollstaendig.** Offen nur noch
   extern: UBS-Bankstelle + Datum Bankbestaetigung, Ort/Datum der Beurkundung (= Termin).
   Naechster Schritt: Terminanfrage an Notariat Wiedikon-Zuerich mit komplettem Dossier.
   Annahme zu bestaetigen: Raphael = Schweizer Staatsangehoeriger/CH-Wohnsitz (Lex-Friedrich-
   Begruendung); Personalien (Geburtsdatum/Heimatort/Wohnadresse) liefert Raphael dem Notar.
4. Verifikation je Dokument: Skill `korrektur`; Vorpruefung Notar/HRA; externes Signal HR-Eintrag.
5. Folgeschritte: Sperrkonto/Bankbestaetigung, Beurkundung Notar, HR-Anmeldung, danach
   AHV/BVG/UVG/MWST + Versicherungsdeckung (vor erstem GU-Mandat).

## Stand UBS (Kapitaleinzahlungskonto) — beantragt 21.06.2026
Antrag via UBS key4 business online gestellt (Bestaetigung an mail@raphaeljans.ch, 14:33).
UBS-Ablauf laut Bestaetigung (kritischer Pfad ~1-2 Wochen):
1. UBS sendet Vertragsdokumente Kapitaleinzahlungskonto in 3 Arbeitstagen (Mail).
2. Raphael druckt, unterschreibt, sendet per Post zurueck.
3. UBS sendet Einzahlungs-Kontodetails in 3 Arbeitstagen.
4. Nach Einzahlung CHF 50'000: UBS sendet **Kapitalbescheinigung** in 2 Arbeitstagen (Einschreiben).
5. DANN Beurkundung beim Notar (braucht die Bescheinigung) + HR-Eintrag.
6. UBS informieren an sh-cic-onboarding-newclients@ubs.com sobald eingetragen.
7. UBS eroeffnet operatives Firmenkonto.
Fragen UBS: 044 236 48 48. → Notartermin so legen, dass er NACH der Kapitalbescheinigung liegt.
Der vorbereitete Post-Brief (Ordner 05) ist damit hinfaellig (Online-Weg gewaehlt).

## Statuten-Entwurf — Notar-Platzhalter (bewusst offen gelassen)
- Datum der Beurkundung; Amtsdauer-Detail VR; erstes (Rumpf-)Geschaeftsjahr Enddatum
  (aktuell 31.12.2026 angenommen) — bei Beurkundung bestaetigen.
- Stueckelung 100 Namenaktien à CHF 1'000 (anpassbar). Vinkulierung + Opting-out enthalten.
- HR-Pflichtartikel ueber die schlanke Vorlage hinaus ergaenzt (GV, Stimmrecht, VR, Revisions-
  stelle/Opting-out, SHAB). Notar finalisiert/beurkundet.

## Verifikation
- Externes Signal: zefix.ch (Firmenname), spaeter HR-Eintrag.
- Zweite Instanz: Skill `korrektur` ueber jedes Dokument; Notar/Treuhand fuer Recht/Steuer.

## Monitor-Log
- 22.06.2026 (ag-gruendung-monitor): Posteingaenge rj@ + mail@raphaeljans.ch geprueft. Nichts Neues. UBS-Stand unveraendert: einzige UBS-Nachricht ist die Antrags-Bestaetigung «Ihr Bankpaket ist beantragt» (ubs_switzerland@mailing.ubs.com, 21.06. 14:33) — noch KEINE Vertragsdokumente, keine Einzahlungs-Kontodetails, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich: noch keine Antwort auf die Terminanfrage vom 21.06. Naechster erwarteter Eingang: UBS-Vertragsdokumente (~3 AT, also ~24.-25.06.). Keine Status-Mail gesendet (nichts zu melden).
- 23.06.2026 (ag-gruendung-monitor): NEU — **Notariat hat geantwortet** (M. Mathies, 22.06. 11:50, Mail «Gruendung JANS AG»). Befund: Firmenname «JANS AG» voraussichtlich nicht eintragungsfaehig wegen bestehender «JANS GmbH» (Rechtsformzusatz ohne Unterscheidungskraft, Weisung Firmenidentitaet Ziff. IV) → alternativer Name noetig; Notariat verlangt zusaetzlich die Word-Dateien Urkunde + Statuten. Siehe Abschnitt «⚠ Firmenname GEFAEHRDET» oben. Spec-Annahme «Name frei» (21.06.) damit ueberholt. UBS weiterhin nichts Neues — keine Vertragsdokumente eingetroffen (erwartet ~24.-25.06.). Status-Mail an rj@raphaeljans.ch gesendet (Namensfrage + naechste Schritte). fristen.md aktualisiert.
- 24.06.2026 (ag-gruendung-monitor): NEU — **UBS-Vertragsdokumente eingetroffen** (Bruno Jeckelmann, ubs.com, 23.06. 09:25, Postfach mail@raphaeljans.ch, Mail «Ihr Kapitaleinzahlungskonto – der naechste Schritt»). Anhaenge: «JANS AG Antrag Kapitaleinzahlungskonto.pdf», «00_Adressblatt_…_KEK.pdf», «00_Anleitung_VideoID.pdf». UBS-Ablauf bestaetigt/praezisiert: (1) Video-ID, (2) ausdrucken/durchlesen, (3) Seite 3 unterschreiben, (4) Original-Formular + Adressblatt per POST zurueck (nicht in Geschaeftsstelle); danach IBAN in ~3 AT, CHF 50'000 per Bank-/Postueberweisung (KEINE Bareinzahlung am Schalter), dann Kapitalbescheinigung per Einschreiben (~2 AT, Voraussetzung HR-Eintrag); Info nach Eintrag an sh-cic-onboarding-newclients@ubs.com; danach operatives Firmenkonto. UBS schenkt die CHF 200 Kommission. **KOLLISION mit Namensfrage:** Das Antragsformular lautet auf «JANS AG» — genau der vom Notariat (22.06.) als gefaehrdet gemeldete Name. Vor dem Unterschreiben/Einreichen muss der definitive Firmenname feststehen, sonst lautet die UBS-Kapitalbescheinigung auf einen Namen, der spaeter nicht eintragungsfaehig ist. UBS erlaubt manuelle Korrektur im Formular (kein Tipp-Ex); ein neuer Name muss aber sauber durchgezogen werden (Formular-Korrektur + ggf. Ruecksprache UBS). Notariat: kein neuer Eingang (weiterhin die 22.06.-Mail). Status-Mail an rj@raphaeljans.ch gesendet (UBS-Dokumente + Namens-Kollision + naechste Schritte). fristen.md aktualisiert.
- 26.06.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch). Keine echte Aktualisierung. Einziger neuer Eingang seit dem letzten Lauf ist die HRA-**Empfangsbestaetigung** zur Voranfrage «JANS AG» (Geschaeft 043830-2026, kanzlei.hra@ji.zh.ch, 26.06. 04:49) — reine Eingangsquittung, noch KEIN inhaltlicher Bescheid; bereits im Logbuch-Radar/fristen.md erfasst, aendert den naechsten Schritt nicht. UBS: weiterhin nur die Vertragsdokumente-Mail vom 23.06. 09:25 (B. Jeckelmann, Postfach mail@) — keine IBAN/Einzahlungs-Kontodetails, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich: kein neuer Eingang (weiterhin die 22.06.-Mail M. Mathies). Kritischer Pfad unveraendert: (a) HRA-Bescheid zum Firmennamen abwarten → Belegset/UBS-Formular auf den definitiven Namen, (b) UBS-Formular Video-ID/unterschreiben/per Post zurueck. Keine Status-Mail gesendet (nichts Neues zu melden). fristen.md Stand 26.06. bestaetigt.
- 29.06.2026 (ag-gruendung-monitor): GROSSER FORTSCHRITT (von Raphael selbst angestossen 26./27.06.). (1) **Firmenname ENTSCHIEDEN: «Raphael Jans AG»** statt «JANS AG» — loest den Notariats-Befund vom 22.06. (Unterscheidungskraft zur «JANS GmbH»; «Raphael» ist unterscheidungskraeftig). REGIX-Anmeldung fuer die verbindliche Pruefung aufgesetzt (26.06. 16:10, mail@). HRA-Voranfrage 043830-2026 (fuer «JANS AG») damit gegenstandslos. (2) **Liberierung geaendert: VOLLLIBERIERUNG, volle CHF 100'000** (vorher 50 %/CHF 50'000) — ueberschreibt den Schluesselentscheid «Liberierung 50 %» oben; im Belegset bereits umgesetzt (Gruendungsurkunde 260627: «vollstaendig liberiert», CHF 100'000). (3) **Gesamtes Belegset neu erstellt (Version 260627)** auf neuen Namen + Vollliberierung; Lex-Friedrich → Lex-Koller umbenannt (Inhalt der 260627-Statuten/Urkunde/HR-Anmeldung verifiziert: «Raphael Jans AG», CHF 100'000). (4) **UBS:** Raphael an B. Jeckelmann (27.06. 12:18, mail@) — neuen Namen + Vollliberierung + Einzahlungstermin Mitte August gemeldet, aktualisierte Kontoanfrage + Statuten angehaengt, angepasstes Antragsformular verlangt → UBS-Antwort abwarten. (5) **Notariat (Mathies): Antwort noch NICHT raus** — Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde + Statuten (260627) senden = der konkrete offene naechste Schritt. Reihenfolge unveraendert: Beurkundung erst nach UBS-Kapitalbescheinigung (Einzahlung Mitte August). Status-Mail an rj@ gesendet; fristen.md aktualisiert (AG-Eintraege auf neuen Namen/Vollliberierung, JANS-AG-Name ins Archiv).
- 25.06.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch). NICHTS NEUES. UBS: einziger Stand bleibt die Vertragsdokumente-Mail vom 23.06. 09:25 (B. Jeckelmann, Postfach mail@) — noch KEINE IBAN/Einzahlungs-Kontodetails, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich: kein neuer Eingang (weiterhin die 22.06.-Mail von M. Mathies). Damit weiterhin offen und am kritischen Pfad: (a) Firmennamen-Entscheid (JANS AG gefaehrdet) + Belegset-Anpassung + Word-Dateien ans Notariat, (b) UBS-Formular Video-ID/unterschreiben/per Post zurueck (auf definitivem Namen). Keine Status-Mail gesendet (nichts Neues zu melden). fristen.md-Stand bestaetigt 25.06. (AG-Eintraege unveraendert, keine Aenderung noetig).
- 01.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch; Inbox seit 30.06. + gezielte Sender-Suche UBS auf mail@ seit 27.06. + mail@-Inbox seit 29.06.). NICHTS NEUES zur AG-Gruendung. UBS (mail@): kein neuer Eingang — Stand bleibt die Vertragsdokumente-Mail vom 23.06. (B. Jeckelmann) + Raphaels eigene Nachricht vom 27.06. 12:18 (neuer Name «Raphael Jans AG», Vollliberierung CHF 100'000, Einzahlung Mitte August, angepasstes Antragsformular verlangt); UBS-Antwort/angepasstes Formular weiterhin ausstehend. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. REGIX: keine Bescheid-Mail eingetroffen. Neue Eingaenge seit 30.06. betrafen nur andere Projekte (KISPI Kuechenbau/Fachbauleitung, Albertstrasse Schreiner/Schliesssystem, Giebelweg-Baulinie, Newsletter). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort abwarten → Video-ID/unterschreiben/per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 01.07. bestaetigt (AG-Eintraege unveraendert).
- 30.06.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch, Inbox + gezielte Sender-/Volltextsuche UBS / notariate-zh.ch / REGIX seit 29.06.). NICHTS NEUES zur AG-Gruendung. UBS (mail@): kein neuer Eingang — Stand bleibt die Vertragsdokumente-Mail vom 23.06. (B. Jeckelmann) + Raphaels eigene Nachricht vom 27.06. 12:18 (neuer Name «Raphael Jans AG», Vollliberierung CHF 100'000, Einzahlung Mitte August, angepasstes Antragsformular verlangt); UBS-Antwort/angepasstes Formular noch ausstehend. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name bestaetigen + Word-Dateien Urkunde/Statuten 260627) ist weiterhin der offene naechste Schritt von Raphael. REGIX: keine Bescheid-Mail eingetroffen. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort abwarten → Video-ID/unterschreiben/per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 30.06. bestaetigt (AG-Eintraege unveraendert).
- 02.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch; mail@-Inbox seit 01.07., rj@-Inbox seit 30.06., gezielte Sender-Suche UBS auf mail@ + Volltextsuche notariate/Beurkundung/REGIX). NICHTS NEUES zur AG-Gruendung. UBS (mail@): kein neuer Eingang — Stand bleibt die Vertragsdokumente-Mail vom 23.06. (B. Jeckelmann) + Raphaels eigene Nachricht vom 27.06. 12:18 (Name «Raphael Jans AG», Vollliberierung CHF 100'000, Einzahlung Mitte August, angepasstes Antragsformular verlangt); UBS-Antwort/angepasstes Formular weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. REGIX: keine Bescheid-Mail. Neue mail@-/rj@-Eingaenge seit dem letzten Lauf betrafen nur andere Projekte (KISPI Kuechenbau/Fachbauleitung/Brandschutz, Albertstrasse Schreiner/Schliesssystem, Giebelweg-Baulinie, Payoneer/Sunrise-Werbung). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort abwarten → Video-ID/unterschreiben/per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 02.07. bestaetigt (AG-Eintraege unveraendert).
- 03.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch; mail@-Inbox + gezielte Sender-Suche UBS seit 27.06. + Volltextsuche Kapitaleinzahlungskonto/Kapitalbescheinigung/Beurkundung/notariate/Raphael Jans AG/REGIX; rj@-Inbox seit 02.07.). NICHTS NEUES zur AG-Gruendung. UBS (mail@): kein neuer Eingang — Stand bleibt die Vertragsdokumente-Mail vom 23.06. (B. Jeckelmann) + Raphaels eigene Nachricht vom 27.06. 12:18 (Name «Raphael Jans AG», Vollliberierung CHF 100'000, Einzahlung Mitte August, angepasstes Antragsformular verlangt); UBS-Antwort/angepasstes Formular weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. REGIX: keine Bescheid-Mail. Neue mail@-Eingaenge seit letztem Lauf nur ZHservices-Passwort-Reset + Claude-Newsletter; rj@ nur KISPI (C. Schaefer/G. Scherbl), Thalwil-Naeherbaurecht (SBB/Tschopp), Sunrise-Werbung. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort abwarten → Video-ID/unterschreiben/per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 03.07. bestaetigt (AG-Eintraege unveraendert).
- 06.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch; gezielte Sender-Suche ubs.com auf mail@ [newest] + Volltextsuche «UBS Raphael Jans AG Kapital», Sender-Suche notariate-zh.ch [newest] + Volltextsuche «notariate-zh Wiedikon Beurkundung»). NICHTS NEUES zur AG-Gruendung. UBS (mail@): nur zwei Eingaenge insgesamt — Bankpaket-Bestaetigung 21.06. + Vertragsdokumente-Mail 23.06. (B. Jeckelmann); kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) ist weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich: juengste notariate-zh.ch-Mail bleibt M. Mathies 22.06. («Gruendung JANS AG», Namens-Befund) — keine Antwort auf die (noch nicht versandte) JANS-Rueckmeldung; Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden ist weiterhin der offene naechste Schritt von Raphael. Logbuch-Radar 06.07. bestaetigt zusaetzlich: kein neuer Mail-Eingang seit 05.07. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 06.07. bestaetigt (AG-Eintraege unveraendert).
- 08.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ [newest] = weiterhin nur 2 Eingaenge Bankpaket 21.06. + Vertragsdokumente 23.06.; Sender-Suche ubs.com auf rj@ = keine; Volltextsuche «Kapitaleinzahlungskonto Raphael Jans AG Kapitalbescheinigung REGIX» auf mail@ = 0 Treffer; Sender-Suche notariate-zh.ch [newest] = juengste AG-Mail bleibt M. Mathies 22.06.; mail@-Inbox seit 07.07. 08:00). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Neue mail@-Eingaenge seit 07.07. nur sachfremd (BBF-Deklaration-Reminder, Claude/Architalk/Hochparterre-Newsletter, generische eTermin-Bestaetigung «Sprechstunde Erstkontakt» 17.07. — kein UBS-/Notariats-Bezug). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 08.07. bestaetigt (AG-Eintraege unveraendert).
- 07.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (mail@ + rj@raphaeljans.ch; Sender-Suche ubs.com auf mail@ [newest] + Volltextsuche «UBS Kapitaleinzahlungskonto Raphael Jans AG Kapitalbescheinigung»; Sender-Suche notariate-zh.ch [newest]; beide Inboxen seit 06.07.). NICHTS NEUES zur AG-Gruendung. UBS (mail@): weiterhin nur zwei Eingaenge — Bankpaket-Bestaetigung 21.06. + Vertragsdokumente-Mail 23.06. (B. Jeckelmann); kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) ist weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. (Der einzige AG-naheliegende Neu-Eingang auf mail@ seit 06.07. ist eine generische Zurich-Versicherungswerbung «Was UBS-Start-up-Gruendende jetzt mit Zurich schuetzen», 06.07. 06:54 — Marketing, kein UBS-Absender, keine Aktion.) Notariat Wiedikon-Zuerich: juengste notariate-zh.ch-Mail bleibt M. Mathies 22.06. («Gruendung JANS AG», Namens-Befund) — keine Antwort auf die (noch nicht versandte) JANS-Rueckmeldung; Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden ist weiterhin der offene naechste Schritt von Raphael. rj@-Inbox seit 06.07.: nur KISPI (Kuechenbau/TeKoSi-Honorarofferte/Lenggstrasse-Schutzraeume), Albertstrasse (Brunner/Staehlin), Garmin/Newsletter. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 07.07. bestaetigt (AG-Eintraege unveraendert).
- 09.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ [weiterhin nur 2 Eingaenge: Bankpaket 21.06. + Vertragsdokumente 23.06. B. Jeckelmann] und auf rj@ [keine]; Sender-Suche notariate-zh.ch auf mail@ [keine] und rj@ [juengste AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»]; Volltextsuche «UBS» + «Notariat/Beurkundung/Gruendung» seit 27.06.). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 09.07. bestaetigt (AG-Eintraege unveraendert).
- 10.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ [newest] = weiterhin nur 2 Eingaenge: Bankpaket 21.06. + Vertragsdokumente 23.06. B. Jeckelmann] und auf rj@ [keine]; Sender-Suche notariate-zh.ch auf rj@ [newest] = juengste AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»; Volltextsuche «Kapitaleinzahlungskonto Raphael Jans AG Kapitalbescheinigung» auf mail@ = nur die zwei bekannten UBS-Mails). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 10.07. (heutiger Radar-Lauf) bestaetigt, AG-Eintraege unveraendert.
- 13.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ [newest] = weiterhin nur 2 Eingaenge: Bankpaket 21.06. + Vertragsdokumente 23.06. B. Jeckelmann] und auf rj@ [keine]; Sender-Suche notariate-zh.ch auf mail@ [keine] und rj@ [newest, juengste AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»]; mail@- und rj@-Inbox seit 10.07. gesichtet). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Neue Inbox-Eingaenge seit 10.07. betrafen nur andere Projekte (KISPI Kuechenbau/Lueftung/Tueren, Thalwil Naeherbaurecht SBB, Saumstrasse Fust, Logbuch-/VOLLGAS-Radar, Anthropic/Hostpoint). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 13.07. bestaetigt (AG-Eintraege unveraendert, Monitor-Notiz ergaenzt).
- 14.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ [newest] = weiterhin nur 2 Eingaenge: Bankpaket 21.06. + Vertragsdokumente 23.06. B. Jeckelmann; Sender-Suche notariate-zh.ch auf rj@ [newest] = juengste AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»; mail@- und rj@-Inbox seit 13.07. gesichtet). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Neue Inbox-Eingaenge seit 13.07. betrafen nur andere Projekte (KISPI Lueftungs-Strangschema/Auflagenbereinigung/Tueren/Kueche, Saumstrasse Fust, Logbuch-Radar, Anthropic/Hostpoint, Self-Mails raphaeljans@me.com). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 14.07. bestaetigt (AG-Eintraege unveraendert, Monitor-Notiz auf 14.07. datiert).
- 15.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com auf mail@ + rj@ seit 20.06. = keine Treffer, kein einziger UBS-Absender; Volltextsuche «UBS» auf mail@ seit 13.07. lieferte nur Logbuch-Radar-Briefings, die «UBS» im Fliesstext nennen, kein echtes UBS-Mail; Sender-Suche notariate-zh.ch seit 20.06. = juengste und einzige AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 15.07. bestaetigt (AG-Monitor-Notiz auf 15.07. datiert).
- 16.07.2026 (ag-gruendung-monitor): Beide Postfaecher geprueft (Sender-Suche ubs.com/key4/onboarding auf mail@ + rj@ seit 20.06. = keine Treffer, kein einziger UBS-Absender; Sender-Suche notariate-zh.ch auf mail@ + rj@ seit 25.06. = kein neuer Eingang, juengste und einzige AG-Mail bleibt M. Mathies 22.06. «Gruendung JANS AG»; mail@- und rj@-Inbox seit 14.07. gesichtet). NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung, von Raphael am 27.06. verlangt) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden) ist weiterhin der offene naechste Schritt von Raphael. Neue Inbox-Eingaenge seit 14.07. betrafen nur andere Projekte (KISPI Schiebetueren ST1/ST2, Lueftungskontrolle 3-plan/Scherbl, Komponentenintegrationspanel, Sanitaerplaene, Albertstrasse Waschtuerme Staehlin, Saumstrasse Geschirrspueler, Newsletter). Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Beurkundung erst nach Kapitalbescheinigung (Einzahlung Mitte August). Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 16.07. bestaetigt (AG-Monitor-Notiz auf 16.07. datiert).
- 21.07.2026 (ag-gruendung-monitor): Beide Kanaele korrekt geprueft — **mail@ endlich real via Apple Mail** (Exchange-Konto mail@ in Apple Mail bestaetigt vorhanden; kein UBS-/Notariats-/REGIX-Eingang seit 9 Tagen), rj@ via M365 (nur Falsch-Treffer: Gruner-VKF, KISPI, Hub-Chef-/Radar-Briefings, die «UBS» im Fliesstext nennen; kein notariate-zh.ch, kein ubs.com-Onboarding). Einziger UBS-Beruehrungspunkt: eine generische Marketingmail «Wir sind fuer Sie da» (ubs_switzerland@mailing.ubs.com, 17.07. 15:24, iCloud) — Newsletter, kein Kapitaleinzahlungskonto-Strang, keine IBAN/Kapitalbescheinigung, keine Aktion. NICHTS NEUES zur AG-Gruendung. **BLIND-FLECK BEHOBEN:** Schritt 1 der Task-Definition (`~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md`) tatsaechlich umgeschrieben — mail@ ab jetzt PRIMAER via Apple Mail (osascript), rj@ via M365; Blind-Fleck + mailing.ubs.com-Ausschluss dokumentiert. Verifiziert an der Primaerquelle (Datei-mtime 21.07., Schritt 1 nennt Apple Mail). Damit ist der seit ~15.07. bestehende und am 19.07. (Spec-Training Lauf 23) als «nie behoben» widerrufene blinde Fleck geschlossen. fristen.md-Eintraege (Ueberwachungsluecke → erledigt; UBS-27.06.-Zeile → 21.07.-Resolution ergaenzt) aktualisiert. Kritischer Pfad AG unveraendert: (a) Antwort ans Notariat (Name «Raphael Jans AG» + Word-Dateien 260627) raus, (b) UBS-Antwort/angepasstes Antragsformular abwarten → Video-ID/unterschreiben/Original per Post; Einzahlung Mitte August → Kapitalbescheinigung = Voraussetzung Beurkundung. Keine Status-Mail gesendet (nichts inhaltlich Neues zur Gruendung).
- 22.07.2026 (ag-gruendung-monitor): Beide Kanaele mit der neuen (korrekten) Methodik geprueft — **mail@ primaer via Apple Mail** (Exchange-Konto mail@; Inbox/Sent/Deleted/Junk der letzten 5 Tage gesichtet: kein ubs.com/key4/onboarding, kein notariate-zh.ch, kein REGIX; juengste Eingaenge nur eBaugesucheZH, AFB Kovacs, Claude/Dropbox/Discord-Newsletter) und **rj@ via Apple Mail Exchange** (5-Tage-Sweep Posteingang/Gesendet/Entwuerfe/Geloescht: nur KISPI [Jegen/van Velsen/Ziegel], SBB-Thalwil, Nova Property, Logbuch-/Hub-Chef-Briefings — kein UBS-/Notariats-/REGIX-Eingang); outlook.com in 5 Tagen leer. NICHTS NEUES zur AG-Gruendung. UBS: kein neuer Eingang seit 27.06., das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627) liegt weiterhin **nur als unversandter Entwurf** (rj@-Entwuerfe: «Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien», 18.07. 08:50) → offener naechster Schritt Raphael. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Einzahlung Mitte August → Kapitalbescheinigung = Voraussetzung Beurkundung. Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 22.07. bestaetigt.
- 23.07.2026 (ag-gruendung-monitor): Beide Kanaele mit der korrekten Methodik geprueft — mail@ primaer via Apple Mail (Exchange-Konto mail@) + rj@ via Apple Mail Exchange + outlook.com, 5-Tage-Sweep ueber Posteingang/Gesendet/Entwuerfe/Geloescht. NICHTS NEUES zur AG-Gruendung: kein ubs.com/key4/onboarding, kein notariate-zh.ch, kein REGIX. Juengste Eingaenge nur andere Projekte (KISPI Ziegel/Stadelmann/Hiltmann/van Velsen Brandschutz+Tueren, SBB-Thalwil, Nova/Saumstrasse, artcomputer-Finanzierungsanfrage, Logbuch-Radar-Briefings). UBS: kein neuer Eingang seit 27.06., angepasstes Antragsformular weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627) liegt weiterhin nur als unversandter Entwurf (rj@-Entwuerfe: «Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien», 18.07. 08:50) → offener naechster Schritt Raphael. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) UBS-Antwort/angepasstes Formular abwarten → Video-ID/unterschreiben/Original per Post; Einzahlung Mitte August → Kapitalbescheinigung = Voraussetzung Beurkundung. Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 23.07. bestaetigt.
- 24.07.2026 (ag-gruendung-monitor): Beide Kanaele mit der korrekten Methodik geprueft — mail@ primaer via Apple Mail (Exchange-Konto mail@) + rj@ via Apple Mail Exchange + outlook.com, 6-Tage-Sweep ueber Posteingang/Gesendet/Entwuerfe/Geloescht. NICHTS NEUES zur AG-Gruendung: kein ubs.com/key4/onboarding, kein notariate-zh.ch, kein REGIX. Juengste Eingaenge nur andere Projekte (KISPI Ziegel/Stadelmann/Hiltmann/Cetin/Eren Brandschutz+Bodenheizung, AFB-BB-Team2/SRZ Auflagebereinigung, SBB-Thalwil, Saumstrasse/reap, artcomputer, Logbuch-Radar-Briefings; auf mail@ nur ChatGPT/Claude/Discord/Dropbox/eBaugesucheZH). UBS: kein neuer Eingang seit 27.06. (28 Tage), das angepasste Antragsformular (auf «Raphael Jans AG»/Vollliberierung) weiterhin ausstehend, keine IBAN, keine Kapitalbescheinigung. Notariat Wiedikon-Zuerich (M. Mathies): keine Antwort — die JANS-Rueckmeldung (Name «Raphael Jans AG» bestaetigen + Word-Dateien Urkunde/Statuten 260627) liegt weiterhin nur als unversandter Entwurf (rj@-Entwuerfe/Geloescht: «Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien», 18.07. 08:50) → offener naechster Schritt Raphael. **Zeitkritisch:** der geplante Einzahlungstermin «Mitte August» ist noch rund drei Wochen entfernt, das UBS-Formular ist aber weder eingegangen noch unterschrieben zurueck (Formular per Post + ~3 AT bis IBAN + Ueberweisung + ~2 AT bis Kapitalbescheinigung per Einschreiben) — ohne UBS-Antwort in den naechsten Tagen ist Mitte August nicht mehr zu halten. Kritischer Pfad unveraendert: (a) Antwort ans Notariat raus, (b) bei UBS (B. Jeckelmann) nachfassen → Video-ID/unterschreiben/Original per Post; Einzahlung → Kapitalbescheinigung = Voraussetzung Beurkundung. Keine Status-Mail gesendet (nichts Neues). fristen.md-Stand 24.07. bestaetigt.

- **27.07.2026 (Monitor-Lauf, Montag; letzter Lauf war 24.07. — 25./26.07. keine Laeufe protokolliert):**
  **NICHTS NEUES.** Sweep ueber Apple Mail (mail@raphaeljans.ch als Primaerkanal, rj@ Exchange,
  raphaeljans@outlook.com, iCloud) ueber alle Mailboxen inkl. Geloescht/Junk, Fenster 13.–27.07.
  (14 Tage), zusaetzlich Gegenprobe M365/Outlook auf rj@ (Volltext «UBS Kapitalbescheinigung
  Notariat Gruendung AG», ab 20.07.) — beide leer. Einziger UBS-Treffer im ganzen Fenster:
  generische Marketingmail «Wir sind fuer Sie da» (ubs_switzerland@mailing.ubs.com, 17.07., iCloud)
  → per Task-Definition ausgeschlossen, nicht relevant. Kein Eingang von B. Jeckelmann/UBS, kein
  Eingang vom Notariat Wiedikon-Zuerich (M. Mathies), kein REGIX.
  **Stand unveraendert:** UBS seit 27.06. **30 Tage** ohne Antwort; angepasstes Antragsformular
  («Raphael Jans AG»/Vollliberierung) nicht eingegangen, keine IBAN, keine Kapitalbescheinigung.
  Notariats-Rueckmeldung liegt weiterhin nur als unversandter rj@-Entwurf vom 18.07.
  **Einzahlungstermin «Mitte August» ist damit faktisch nicht mehr zu halten:** selbst bei einer
  UBS-Antwort morgen braucht die Kette Formular per Post retour (~3–4 AT) + ~3 AT bis IBAN +
  Ueberweisung + ~2 AT bis Kapitalbescheinigung per Einschreiben — die Beurkundung ruecken damit
  in die zweite Augusthaelfte. Empfehlung unveraendert und jetzt dringend: **telefonisch bei
  B. Jeckelmann nachfassen (UBS 044 236 48 48)** und die Notariats-Antwort versenden.
  Keine Status-Mail gesendet (nichts Neues). fristen.md nachgefuehrt.

- **28.07.2026 (Monitor-Lauf, Dienstag):**
  **NICHTS NEUES.** Sweep ueber Apple Mail (mail@raphaeljans.ch als Primaerkanal, rj@ Exchange,
  raphaeljans@outlook.com, iCloud) ueber alle Mailboxen inkl. Entwuerfe/Geloescht/Junk: Vollsweep
  23.–28.07. (5 Tage, lueckenlos an den 14-Tage-Sweep vom 27.07. anschliessend) plus gezielte
  21-Tage-Suche auf UBS/Notariat/REGIX/Mathies/Jeckelmann/key4. Kein Eingang von B. Jeckelmann/UBS,
  keiner vom Notariat Wiedikon-Zuerich (M. Mathies), keiner von REGIX. Einziger UBS-Treffer im
  21-Tage-Fenster bleibt die generische Marketingmail «Wir sind fuer Sie da»
  (ubs_switzerland@mailing.ubs.com, 17.07., iCloud) → per Task-Definition ausgeschlossen.
  **Stand unveraendert:** UBS seit 27.06. jetzt **31 Tage** ohne Antwort; angepasstes Antragsformular
  («Raphael Jans AG»/Vollliberierung) nicht eingegangen, keine IBAN, keine Kapitalbescheinigung.
  Die Notariats-Rueckmeldung liegt weiterhin als **unversandter rj@-Entwurf vom 18.07. 08:50**
  («Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien») — jetzt 10 Tage.
  Der Einzahlungstermin «Mitte August» bleibt gefallen (Feststellung 27.07. unveraendert gueltig);
  die Beurkundung ruecken in die zweite Augusthaelfte oder spaeter.
  **Beurteilung:** beide offenen Schritte sind reine Bring-Schulden Raphaels, durch den Monitor
  nicht aufloesbar — (a) telefonisch bei B. Jeckelmann nachfassen (UBS 044 236 48 48),
  (b) den Notariats-Entwurf vom 18.07. versenden. Keine Status-Mail gesendet (nichts Neues; die
  dringende Empfehlung ging bereits am 27.07. raus, eine Wiederholung waere reines Rauschen).
  fristen.md nachgefuehrt.

- **29.07.2026 (Monitor-Lauf, Mittwoch):**
  **NICHTS NEUES.** Sweep ueber Apple Mail (mail@raphaeljans.ch als Primaerkanal, rj@ Exchange,
  raphaeljans@outlook.com, iCloud) ueber alle Mailboxen inkl. Entwuerfe/Geloescht/Junk:
  Vollsweep 25.–29.07. (4 Tage, lueckenlos an den Sweep vom 28.07. anschliessend) plus gezielte
  25-Tage-Suche auf UBS/Notariat/REGIX/Mathies/Jeckelmann/key4/Kapital/Handelsregister;
  Gegenprobe M365/Outlook auf rj@ (Volltext «UBS Kapitalbescheinigung Notariat Gruendung AG
  Kapitaleinzahlungskonto», ab 20.07.) = leer. Kein Eingang von B. Jeckelmann/UBS, keiner vom
  Notariat Wiedikon-Zuerich (M. Mathies), keiner von REGIX. UBS-Bezuege im 25-Tage-Fenster nur:
  generische Marketingmail «Wir sind fuer Sie da» (ubs_switzerland@mailing.ubs.com, 17.07., iCloud,
  per Task-Definition ausgeschlossen) und eine Zurich-Versicherungswerbung mit «UBS» im Betreff
  (vip@zurich.ch, 06.07., nicht relevant).
  **Stand unveraendert:** UBS seit 27.06. jetzt **32 Tage** ohne Antwort; angepasstes
  Antragsformular («Raphael Jans AG»/Vollliberierung CHF 100'000) nicht eingegangen, keine IBAN,
  keine Kapitalbescheinigung. Die Notariats-Rueckmeldung liegt weiterhin als **unversandter
  rj@-Entwurf vom 18.07. 08:50** («Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und
  Word-Dateien») — jetzt 11 Tage. Der Einzahlungstermin «Mitte August» bleibt gefallen
  (Feststellung 27.07. unveraendert gueltig), die Beurkundung ruecken in die zweite Augusthaelfte
  oder spaeter.
  **Konkreter Hebel in zwei Tagen:** der Kalendereintrag **Fr 31.07. 10:00–11:00 «UBS Termin
  bestaetigt: Finanzierungen»** ist die naechste belegte Gelegenheit, das Kapitaleinzahlungskonto
  direkt zu klaeren — schneller als jedes weitere Nachfassen per Mail. Beide offenen Schritte
  bleiben Bring-Schulden Raphaels und sind durch den Monitor nicht aufloesbar: (a) UBS klaeren
  (Termin 31.07. bzw. B. Jeckelmann, UBS 044 236 48 48), (b) den Notariats-Entwurf vom 18.07.
  versenden. Keine Status-Mail gesendet (kein neuer Eingang; die dringende Empfehlung laeuft seit
  27.07. taeglich ueber Radar/Hub-Chef, eine Monitor-Wiederholung waere reines Rauschen).
  fristen.md nachgefuehrt.

- **30.07.2026 (Monitor-Lauf, Donnerstag): DURCHBRUCH — die UBS-Blockade ist nach 32 Tagen
  aufgeloest, die Gruendung laeuft wieder.** Sweep ueber Apple Mail (mail@raphaeljans.ch als
  Primaerkanal, rj@ Exchange, raphaeljans@outlook.com, iCloud), alle Mailboxen inkl.
  Entwuerfe/Geloescht/Junk, Vollsweep 26.–30.07. plus Zielsuche auf Notariat/Mathies/Raphael
  Jans AG/Handelsregister/REGIX/Beurkundung. Die vier relevanten Mails im Original gelesen
  (Rule 260709), nicht aus dem Radar-Referat uebernommen:
  1. **RJ → Jeckelmann, 29.07. 13:33** (rj@): begruendet den Namenswechsel («Da bereits eine
     Firma mit dem Namen Jans GmbH besteht …»), verlangt das Antragsformular auf **«Raphael
     Jans AG»**, meldet, dass die Kontoeroeffnung ueber die UBS-Mobilebanking-App im letzten
     Schritt scheiterte, und fragt, ob er sich fuer die KEK-Bankbeziehung schon identifizieren soll.
  2. **Jeckelmann → RJ, 29.07. 13:50:** «Dokument habe ich angepasst. Sie koennen mit den
     weiteren Schritten fortfahren.» Die 32-Tage-Blockade endet damit — ausgeloest durch
     Raphaels eigenes Nachfassen, nicht durch den Termin vom 31.07.
  3. **RJ → Jeckelmann, 29.07. 14:59:** Antrag **bei der UBS-Geschaeftsstelle Wiedikon
     eingereicht**; damit ist zugleich die Echtheitsbescheinigung der Ausweisdokumente geloest.
  4. **Jeckelmann → RJ, 29.07. 16:55:** Dank/Gruss, **kein Widerspruch** zur Einreichung in der
     Geschaeftsstelle. Zusatzbeleg: `sec-SH-CH-DO-NOT-REPLY@ubs.com` «UBS: Bestaetigungscode»
     29.07. 12:50 auf mail@ (Identifikationsschritt).
  **Vorbehalt am Beleg:** Jeckelmanns Ursprungsmail vom 23.06. verlangt ausdruecklich die
  Ruecksendung des Original-Formulars **per Post** und warnt, die Abgabe in einer
  Geschaeftsstelle verzoegere die Eroeffnung. Der Weg ueber Wiedikon ist mitgeteilt und
  unwidersprochen, aber nicht der von der UBS vorgesehene — das Terminrisiko liegt hier.
  **Neuer kritischer Pfad (Prozess aus der UBS-Mail 23.06., verifiziert):** IBAN innert **3 AT**
  → Einzahlung **CHF 100'000** (Vollliberierung, zwingend Bank-/Postueberweisung, keine
  Bareinzahlung) → Kapitalbescheinigung innert **2 AT** per Einschreiben → Beurkundung →
  HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com` fuer das operative
  Firmenkonto. Rechnung ab Einreichung 29.07.: IBAN ca. **03./04.08.**, Kapitalbescheinigung
  ca. **06./07.08.**, Beurkundung realistisch **ab ca. 10.08.**
  **Der Engpass hat gewechselt — jetzt ist es das Notariat.** Die Rueckmeldung an M. Mathies
  (Notariat Wiedikon-Zuerich) liegt weiterhin als **unversandter rj@-Entwurf vom 18.07. 08:50**
  («Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien»), heute **12 Tage**
  alt; juengster Eingang von notariate-zh.ch bleibt Mathies' Mail vom 22.06., ein
  Beurkundungstermin ist **nie vorgeschlagen** worden (letzte JANS-Mail dorthin: Terminanfrage
  21.06.). Solange UBS blockierte, war das folgenlos; ab jetzt ist es der einzige Schritt auf dem
  kritischen Pfad, den Raphael selbst bewegen kann — und der Notar braucht Vorlauf, um die
  Urkunde vorzubereiten. Der Entwurf sollte **heute** raus, verbunden mit der Bitte um einen
  Beurkundungstermin **ab ca. 10.08.**
  **Register:** der Logbuch-Radar hat um 06:55 bereits ganze Arbeit geleistet — die
  UBS-Blockadezeile ist auf «erledigt 30.07.» gesetzt, die Fortsetzungszeile (IBAN-Kette,
  Nachfass-Schwelle 05.08.) neu eroeffnet. Der Monitor hat nicht gedoppelt, sondern die
  Notariats-Prioritaet als eigene Zeile nachgetragen.

- **25.08.2026 (Monitor-Lauf, Montag): KAPITALEINZAHLUNG UEBERDUE.** UBS hat am **17.08.2026 10:18**
  die IBAN gesendet: **CH46 0027 6276 1238 74D7 N**, Kontoinhaber «Raphael Jans AG In Gründung»,
  BIC UBSWCHZH80A. Mail lag im Postfach mail@ seit **acht Tagen unbeachtet** — genau das,
  wovor die Registerzeile vom 24.08. 07:46 warnte (Blind-Fleck des defekten Monitors seit 07.08.).
  Logbuch-Radar 25.08. 06:55 hat den Fund nachgewiesen und die Sache ins Register gepinnt.
  **Kritischer Pfad:** Einzahlung CHF 50'000 (Vollliberierung, zwingend Bank-/Postüberweisung) →
  UBS sendet Kapitalbescheinigung automatisch per Einschreiben innert 2 AT → Beurkundung kann
  danach erfolgen (Notariat-Termin ausstehend, Entwurf dort noch nicht eingegangen).
  **Einzahlungsdetails:** IBAN `CH46 0027 6276 1238 74D7 N`, BIC `UBSWCHZH80A`,
  Begünstigter «Raphael Jans AG In Gründung», Mitteilungstext «Kapitaleinzahlung» oder «Capital
  contribution». Nach Einzahlung ist kein weiterer Kontakt mit der UBS nötig — die
  Kapitalbescheinigung kommt automatisch per Einschreiben.
  **AKTION P1:** Einzahlung auslösen (darf durch Claude nicht erfolgen; Kontoangaben stehen hier
  nur, dass der Weg ohne erneutes Suchen offen ist).
  **Notariat:** Entwurf der Gründungsurkunde und Anpassungsrequest («Firmenname JANS AG →
  Raphael Jans AG, Word-Dateien») liegen weiterhin als unversandter Entwurf vom 18.07.08:50 bei
  rj@. Notariatstermin ist nie vorgeschlagen worden; zu klären: kann die Beurkundung frühestens
  ab ca. 05.09. erfolgen (2 AT nach Kapitalbescheinigung Anfang Sept., wenn Einzahlung heute/morgen
  erfolgt)?
  fristen.md nachgefuehrt vom Radar 25.08. 07:35.
  **Status-Mail an rj@ gesendet** (echte Phasenaenderung; Inhalt bewusst nicht das
  Radar-Referat, sondern der eine offene Schritt Notariat + die Terminrechnung).

- **31.07.2026 (Monitor-Lauf, Freitag, 07:47): kein neuer Eingang — die UBS-Kette laeuft
  plangemaess; der einzige neue Befund liegt im eigenen Entwurfsordner.** Sweep ueber alle
  Konten (Apple Mail `mail@raphaeljans.ch` als Primaerkanal, `rj@` Exchange,
  `raphaeljans@outlook.com`, iCloud), Vollsweep 30 h ueber Posteingang/Gesendet plus
  Zielsuche 4 Tage ueber **alle** Mailboxen inkl. Entwuerfe/Geloescht/Junk auf
  UBS/Jeckelmann/Notariat/notariate-zh.ch/REGIX/Beurkundung/Kapital/Handelsregister.
  **Ergebnis: nichts Neues.** Juengster UBS-Beleg bleibt Jeckelmann 29.07. 16:55; keine IBAN,
  keine Kapitalbescheinigung, keine Antwort des Notariats (juengster Eingang von
  `notariate-zh.ch` unveraendert Mathies 22.06.). Das ist erwartungsgemaess: gerechnet ab der
  Einreichung in der Geschaeftsstelle Wiedikon (29.07.) ist heute **Tag 2 der drei
  Arbeitstage** bis zur IBAN; die Nachfass-Schwelle bleibt der **05.08.**
  **Befund (neu, weder im Radar 06:55 noch im Hub-Chef-Briefing 00:43 enthalten):
  Verwechslungsgefahr im Entwurfsordner.** Der Hub-Chef hat den ueberholten Notariats-Entwurf
  in der Nacht neu geschrieben (Aktion A5, 31.07. 00:33–00:36), den alten aber **nicht
  ersetzt**. In `rj@`/Entwuerfe liegen jetzt **fuenf** Fassungen derselben Mail, am Beleg
  geprueft (Zeichenzahl und Anhangsnamen je Entwurf ausgelesen):
  (a) **31.07. 00:36:20 — die richtige**, 3254 Zeichen, Terminbitte «ab ca. 10.08.26», beide
  Anhaenge `260627_Gruendungsurkunde_Raphael-Jans-AG_Entwurf.docx` und
  `260627_Statuten_Raphael-Jans-AG.docx`;
  (b) 31.07. 00:36:14 — identische Dublette;
  (c) 31.07. 00:35:03 — **unvollstaendig, nur ein Anhang**;
  (d) 31.07. 00:33:44 — Zwischenstand der Veredelungsrunde (3087 Zeichen);
  (e) **18.07. 08:50 — die ueberholte Fassung** (2065 Zeichen): bittet um einen Termin «ab
  Mitte oder Ende August», nennt die Einzahlung «Mitte August» (beides aus der Zeit vor der
  UBS-Freigabe vom 29.07.) und traegt die Anhaenge noch als `..._JANS-AG...docx`.
  Geht (e) statt (a) raus, kostet das ein bis zwei Wochen Beurkundungsvorlauf — genau den
  Engpass, den der Hub-Chef in der Nacht aufloesen wollte. Das Loeschen der vier ueberzaehligen
  Entwuerfe ist **bewusst nicht** durch Claude erfolgt (Loeschen von Daten bleibt bei Raphael).
  **Zweiter Hinweis, terminlich:** heute **10:00–11:00 der Kalendereintrag «UBS Termin
  bestaetigt: Finanzierungen»** — die guenstigste Gelegenheit, den Stand des
  Kapitaleinzahlungskontos direkt zu erfragen, statt bis zum 05.08. zu warten.
  **Status-Mail an rj@ gesendet** (kurz, nur der Entwurfs-Befund und der UBS-Termin; die
  Phasenlage selbst ist unveraendert und wurde nicht wiederholt). `fristen.md` nachgefuehrt.

- **03.08.2026 (Monitor-Lauf, Montag, 22:07): der Notariats-Blocker ist gefallen, aber die
  Mail liegt bei einem Abwesenden — und die UBS-IBAN ist am letzten der drei Arbeitstage
  nicht eingetroffen.** Sweep ueber alle Konten (Apple Mail `mail@raphaeljans.ch` als
  Primaerkanal, `rj@` Exchange, `raphaeljans@outlook.com`, iCloud), Vollsweep 4 Tage ueber
  alle Mailboxen inkl. Entwuerfe/Geloescht/Junk plus Zielsuche 10 Tage auf
  UBS/Jeckelmann/key4/IBAN/Kapitaleinzahlung/Kapitalbescheinigung/REGIX/Notariat/Beurkundung/
  Handelsregister.

  **Befund 1 (erledigt, echte Phasenaenderung): die Notariats-Mail ist am 03.08. 14:56:04
  raus — in der richtigen Fassung.** Am Beleg geprueft: 3254 Zeichen (also Fassung (a) vom
  31.07. 00:36:20, nicht die ueberholte vom 18.07.), Terminbitte «ab rund dem 10.08.26» als
  provisorische Reservation unter Vorbehalt der Kapitalbescheinigung, beide Anhaenge
  `260627_Gruendungsurkunde_Raphael-Jans-AG_Entwurf.docx` und
  `260627_Statuten_Raphael-Jans-AG.docx`. Die vier ueberzaehligen Entwuerfe sind nach
  `Geloeschte Elemente` verschoben; der Verwechslungsbefund vom 31.07. ist damit ebenfalls
  geschlossen. Der Entwurf war zuletzt 16 Tage alt.

  **Befund 2 (neu, terminkritisch): der Adressat ist abwesend, und die Mail ging nur an ihn
  persoenlich.** Die automatische Antwort (03.08. 14:56:17) meldet M. Mathies **vom 27.07.
  bis 07.08.2026 abwesend**, mit dem ausdruecklichen Hinweis, das E-Mail werde in dieser Zeit
  **nicht gelesen oder bearbeitet**; fuer dringende Angelegenheiten nennt sie die Zentrale
  **044 298 55 00** und das Sammelpostfach **wiedikon-zuerich@notariate-zh.ch**. Der
  Empfaengercheck zeigt: die Mail ging **ausschliesslich an `marc.mathies@notariate-zh.ch`,
  ohne Cc ans Sammelpostfach** — obwohl die urspruengliche Terminanfrage vom 21.06. genau
  dorthin ging. Wirkung: die Unterlagen liegen bis fruehestens **Fr 07.08.** ungelesen, die
  Vorbereitung der Urkunde beginnt fruehestens dann, und die eigene Terminrechnung
  (Beurkundung ab rund 10.08.) verliert genau den Vorlauf, den der Versand von heute gewinnen
  sollte. Nebenbefund: Mathies zeichnet als **Notariatslernender**, ist also nicht der
  beurkundende Notar; die Terminreservation muss ohnehin ueber die Amtsstelle laufen.
  **Aktion Raphael (Di 04.08.): dieselbe Mail ans Sammelpostfach nachreichen (Weiterleitung
  mit Anhaengen) oder waehrend der Buerozeiten anrufen.**

  **Befund 3 (UBS, unveraendert offen): keine IBAN.** Kein neuer UBS-Eingang; juengste Belege
  bleiben Jeckelmann 29.07. 16:55 (Exchange) und der UBS-Bestaetigungscode 29.07. 12:50
  (mail@). Gerechnet ab der Einreichung in der Geschaeftsstelle Wiedikon am Mi 29.07. waren
  30.07. / 31.07. / 03.08. die drei zugesagten Arbeitstage — die Frist ist heute ausgelaufen,
  ohne formal verletzt zu sein (ein Eingang morgen frueh bleibt im Rahmen). Die
  **Nachfass-Schwelle 05.08.** bleibt unveraendert gueltig (B. Jeckelmann, 044 236 48 48).
  Das Terminrisiko aus Jeckelmanns Ursprungsmail vom 23.06. (Ruecksendung per Post verlangt,
  Abgabe in der Geschaeftsstelle verzoegere die Eroeffnung) ist damit weiterhin nicht
  ausgeraeumt.

  **Phasenlage:** Kapitaleinzahlungskonto beantragt und freigegeben → **IBAN ausstehend** →
  Einzahlung CHF 100'000 → Kapitalbescheinigung (2 AT, Einschreiben) → Beurkundung →
  HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com`. Beide offenen
  Schritte sind Bring-Schulden Raphaels und durch den Monitor nicht aufloesbar.
  **Status-Mail an rj@ gesendet** (echte Phasenaenderung); `fristen.md` in beiden AG-Zeilen
  nachgefuehrt.

- **04.08.2026 (Monitor-Lauf, Dienstag, 07:46): kein Eingang, keine Phasenaenderung — beide
  offenen Schritte sind Bring-Schulden Raphaels und heute faellig.** Sweep ueber alle Konten
  (Apple Mail `mail@raphaeljans.ch` als Primaerkanal, `rj@` Exchange, `raphaeljans@outlook.com`,
  iCloud; alle Mailboxen inkl. Entwuerfe/Geloescht/Junk; 3-Tage-Vollsweep plus 12-Tage-Zielsuche
  auf UBS/Jeckelmann/key4/IBAN/Kapital/REGIX/Notariat/Beurkundung/Handelsregister/Mathies).

  **Befund 1 (UBS): keine IBAN.** Juengste UBS-Belege unveraendert Jeckelmann 29.07. 16:55
  (Exchange) und der UBS-Bestaetigungscode 29.07. 12:50 (mail@). Die Zusage von drei
  Arbeitstagen ab Einreichung Wiedikon (29.07.) ist seit gestern ueberschritten. Die
  **Nachfass-Schwelle 05.08.** wird morgen erreicht: dann bei B. Jeckelmann anrufen
  (044 236 48 48).

  **Befund 2 (Notariat): die gestern beschlossene Nachreichung ans Sammelpostfach ist bis
  07:46 nicht erfolgt.** Am Beleg geprueft: in `Gesendete Elemente` liegt seit 03.08. 22:58
  nichts Neues, insbesondere keine Weiterleitung an `wiedikon-zuerich@notariate-zh.ch`; vom
  Notariat ist ausser der Abwesenheitsantwort vom 03.08. 14:56:17 nichts eingegangen. Mathies
  ist bis Fr 07.08. abwesend, die Unterlage liegt ungelesen.

  **Phasenlage unveraendert:** Kapitaleinzahlungskonto beantragt und freigegeben → **IBAN
  ausstehend** → Einzahlung CHF 100'000 → Kapitalbescheinigung (2 AT, Einschreiben) →
  Beurkundung → HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com`.
  **Keine Status-Mail gesendet** (Ein-Mail-Prinzip 03.08.2026: kein neuer Eingang, keine
  Phasenaenderung, und beide Aktionen standen bereits im Briefing vom 03.08. 22:12 — der
  Hub-Chef traegt sie um 08:39 weiter). `fristen.md` in beiden AG-Zeilen nachgefuehrt.

- 05.08.2026 (ag-gruendung-monitor, 07:46): **Kein neuer Eingang — aber beide Schwellen sind
  heute scharf.** Sweep ueber alle Konten (Apple Mail `mail@` als Primaerkanal, `rj@`
  Exchange, `outlook.com`, iCloud; alle Mailboxen inkl. Entwuerfe/Geloescht/Junk;
  4-Tage-Vollsweep plus 14-Tage-Zielsuche auf UBS/Jeckelmann/key4/IBAN/Kapital/Notariat/
  Beurkundung/REGIX/Handelsregister/Wiedikon/Mathies): kein UBS-, Notariats- oder
  REGIX-Eingang. Juengste UBS-Belege unveraendert Jeckelmann 29.07. 16:55 (Exchange) und
  Bestaetigungscode 29.07. 12:50 (mail@); vom Notariat bleibt die Abwesenheitsantwort vom
  03.08. 14:56:17 der letzte Eingang.

  **(1) UBS-IBAN: Nachfass-Schwelle heute erreicht.** Heute ist der fuenfte Arbeitstag seit
  Einreichung Wiedikon 29.07., zugesagt waren drei (30.07./31.07./03.08.) — die Zusage ist um
  zwei Arbeitstage ueberschritten. AKTION Raphael: B. Jeckelmann anrufen (044 236 48 48).

  **(2) Notariat: Nachreichung ans Sammelpostfach seit gestern ueberfaellig.** In
  `Gesendete Elemente` seit 04.08. 14:27 nichts Neues; die Zielsuche findet zu «wiedikon»
  ausser der Mail an Mathies persoenlich (03.08. 14:56) keinen ausgehenden Treffer. Mathies
  ist bis Fr 07.08. abwesend. AKTION Raphael: Weiterleitung mit beiden Anhaengen an
  `wiedikon-zuerich@notariate-zh.ch` oder Anruf 044 298 55 00.

  **Folge fuer den Terminplan (neu):** der erbetene Beurkundungstermin «ab rund 10.08.» ist
  nicht mehr zu halten. Er setzt Kapitalbescheinigung und notariellen Vorlauf in dieser Woche
  voraus; die Bescheinigung kann nach Anruf, Einzahlung und zwei Arbeitstagen Einschreiben
  fruehestens Ende Woche vorliegen, und der Notar sieht die Unterlage fruehestens am 07.08.
  Realistisch verschiebt sich die Beurkundung in die Woche vom 17.08.

  **Phasenlage unveraendert:** Kapitaleinzahlungskonto beantragt und freigegeben → **IBAN
  ausstehend** → Einzahlung CHF 100'000 → Kapitalbescheinigung (2 AT, Einschreiben) →
  Beurkundung → HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com`.
  **Keine Status-Mail gesendet** (Ein-Mail-Prinzip: kein neuer Eingang, keine
  Kapitalbescheinigung, kein vergebener oder verfallender Termin; ein Anruf bei UBS oder
  Notariat ist vor 08:39 ohnehin nicht moeglich). Statt dessen Abschnitt «AG-Gruendung
  05.08.2026» im heutigen Datumsblock von `logbuch/LOGBUCH.md`; `fristen.md` in beiden
  AG-Zeilen nachgefuehrt.

- 06.08.2026 (ag-gruendung-monitor, 07:46): **Kein neuer Eingang. Neu ist eine Entlastung,
  nicht eine Blockade — mit der Rückkehr des Notars ist die UBS-IBAN der einzige kritische
  Pfad.** Zwei unabhängige Durchgänge über alle Konten in Apple Mail (`mail@` als
  Primärkanal, `rj@` Exchange, `outlook.com`, iCloud, beide Gmail-Konten):
  `scripts/mail-vorfilter.sh 30` über Posteingänge und Gesendete, dazu eine 10-Tage-Zielsuche
  über **alle** Mailboxen jedes Kontos inklusive Entwürfe, Gelöschte und Junk (UBS,
  Jeckelmann, key4, Notariat, Wiedikon, Mathies, REGIX, Handelsregister, Kapital,
  Beurkundung). Übereinstimmend kein UBS-, Notariats- oder REGIX-Eingang; jüngste UBS-Belege
  unverändert Jeckelmann 29.07. 16:55 (Exchange) und Bestätigungscode 29.07. 12:50 (mail@),
  vom Notariat bleibt die Abwesenheitsantwort vom 03.08. 14:56:17 der letzte Eingang.

  **(1) UBS-IBAN: Zusage um drei Arbeitstage überschritten.** Heute ist der sechste
  Arbeitstag seit Einreichung Wiedikon 29.07. (30.07., 31.07., 03.08., 04.08., 05.08.,
  06.08.), zugesagt waren drei. Ob der gestern empfohlene Anruf erfolgt ist, lässt sich am
  Beleg nicht feststellen — ein Telefonat hinterlässt keine Mailspur; belegbar ist nur, dass
  die IBAN in keinem Konto liegt. AKTION Raphael: B. Jeckelmann anrufen (044 236 48 48).

  **(2) Notariat: Nachreichung ans Sammelpostfach zurückgestuft.** Sie ist weiterhin nicht
  erfolgt (10-Tage-Suche über `Gesendete Elemente`: **kein einziger** ausgehender Treffer auf
  `wiedikon-zuerich@notariate-zh.ch`; einziger ausgehender Notariatskontakt bleibt die Mail
  an Mathies persönlich vom 03.08. 14:56). Neu ist die Bewertung: Mathies kehrt morgen 07.08.
  zurück und liest die Mail vom 03.08. dann selbst. Die Weiterleitung lohnt nur noch bei
  zwingendem Antwortbedarf heute, den es nicht gibt, solange die Kapitalbescheinigung fehlt.
  Status von «überfällig» auf «beobachten bis 07.08.», Prio hoch auf mittel.

  **Terminplan bestätigt:** Beurkundung «ab rund 10.08.» nicht zu halten; selbst bei IBAN
  heute folgen Einzahlung, zwei Arbeitstage Kapitalbescheinigung per Einschreiben und der
  notarielle Vorlauf. Realistisch die Woche vom 17.08.

  **Phasenlage unverändert:** Kapitaleinzahlungskonto beantragt und freigegeben → **IBAN
  ausstehend** → Einzahlung CHF 100'000 → Kapitalbescheinigung (2 AT, Einschreiben) →
  Beurkundung → HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com`.
  **Keine Mail gesendet** (Ein-Mail-Prinzip): keine Kapitalbescheinigung, kein vergebener
  oder verfallender Termin, keine 24-Stunden-Frist; der UBS-Anruf stand bereits im
  Chef-Briefing vom 05.08. Statt dessen Abschnitt «AG-Gründung 06.08.2026» im heutigen
  Datumsblock von `logbuch/LOGBUCH.md`; `fristen.md` in beiden AG-Zeilen nachgeführt.

- 07.08.2026 (ag-gruendung-monitor, 07:46): **Kein neuer Eingang. Neu ist eine Korrektur am
  eigenen Befund von gestern: der Notar ist heute noch abwesend, nicht zurück.** Zwei
  unabhängige Durchgänge über alle Konten in Apple Mail (`mail@` als Primärkanal, `rj@`
  Exchange, `outlook.com`, iCloud, beide Gmail-Konten): 10-Tage-Zielsuche über **alle**
  Mailboxen inklusive Entwürfe, Gelöschte und Junk (UBS, Jeckelmann, key4, IBAN, Kapital,
  Notariat, Wiedikon, Mathies, REGIX, Handelsregister, Beurkundung) plus ein filterloser
  36-Stunden-Vollsweep. Übereinstimmend kein UBS-, Notariats- oder REGIX-Eingang; jüngste
  UBS-Belege unverändert Jeckelmann 29.07. 16:55 (Exchange) und Bestätigungscode 29.07.
  12:50 (mail@). Ergänzend eine Empfängersuche über die Gesendet-Ordner aller Konten:
  ausgehend an `notariate-zh.ch` steht in zehn Tagen nur die Mail an Mathies persönlich vom
  03.08. 14:56, an `ubs.com` nur die beiden Jeckelmann-Mails vom 29.07.

  **(1) UBS-IBAN: siebter Arbeitstag, Zusage um vier Arbeitstage überschritten.** Gerechnet
  ab Einreichung Wiedikon 29.07. (Mi) sind 30.07., 31.07., 03.08., 04.08., 05.08., 06.08.
  und heute 07.08. sieben Arbeitstage; zugesagt waren drei. Ob der seit dem 05.08.
  empfohlene Anruf erfolgt ist, bleibt am Beleg nicht feststellbar (ein Telefonat
  hinterlässt keine Mailspur); belegbar ist allein, dass die IBAN in keinem Konto liegt.
  Heute ist Freitag, danach liegt ein Wochenende dazwischen. AKTION Raphael: B. Jeckelmann
  anrufen (044 236 48 48).

  **(2) Notariat — KORREKTUR: Mathies kehrt erst am Montag 10.08. zurück.** Der Eintrag vom
  06.08. las die Abwesenheit als «kehrt morgen 07.08. zurück». Am Beleg im Wortlaut
  nachgelesen (Abwesenheitsantwort 03.08. 14:56:17) steht: «Ich bin in der Zeit vom 27. Juli
  2026 **bis 7. August 2026** abwesend» — der 07.08. ist eingeschlossen. Hinzu kommt ein
  bisher nicht ausgewerteter Punkt derselben Signatur: **«Erreichbarkeit: Mo/Di/Mi»** —
  Mathies arbeitet nur zu Wochenbeginn. Realistisch liest er die Unterlage am **Montag
  10.08.**; die Beobachtungsschwelle wandert vom 07.08. auf den 10.08. Für die Handlung
  ändert das nichts: die Weiterleitung ans Sammelpostfach bleibt entbehrlich, solange die
  Kapitalbescheinigung fehlt. Bleibt am 10.08. eine Reaktion aus, folgt der Anruf an die
  Zentrale 044 298 55 00. Damit ruht der Notariatsstrang über das Wochenende, und die
  UBS-IBAN ist unverändert der einzige kritische Pfad.

  **Terminplan bestätigt:** Beurkundung «ab rund 10.08.» nicht zu halten; der notarielle
  Vorlauf beginnt frühestens am 10.08. Realistisch die Woche vom 17.08.

  **Phasenlage unverändert:** Kapitaleinzahlungskonto beantragt und freigegeben → **IBAN
  ausstehend** → Einzahlung CHF 100'000 → Kapitalbescheinigung (2 AT, Einschreiben) →
  Beurkundung → HR-Eintrag (5–30 AT) → Meldung an `sh-cic-onboarding-newclients@ubs.com`.
  **Keine Mail gesendet** (Ein-Mail-Prinzip): keine Kapitalbescheinigung, kein vergebener
  oder verfallender Termin, keine 24-Stunden-Frist; die Notariats-Korrektur ist eine
  Entlastung und hätte Raphaels Handeln heute nicht verändert. Statt dessen Abschnitt
  «AG-Gründung 07.08.2026» im heutigen Datumsblock von `logbuch/LOGBUCH.md`; `fristen.md` in
  beiden AG-Zeilen nachgeführt.

---

## CHANGELOG (Monitor-Befund 24.08.2026, 07:46)

**24.08.2026 — Monitor funktioniert seit 17 Tagen nicht (seit 07.08.2026).** Letzter Eintrag 30.07. mit Durchbruch UBS. Stand unbekannt: Kapitalbescheinigung-Status unklar. Task-Lauf 19.08. 05:47 brach mit Modell-Fehler ab. Fristen + Logbuch dokumentiert. Aktion: Monitor zu prüfen, Posteingang mail@ manuell prüfen.
